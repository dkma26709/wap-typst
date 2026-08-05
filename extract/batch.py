"""Extract and verify a directory of army books, and write the book manifest.

Runs extract -> coverage -> welds for each PDF, then records what survived in
build/books.json. The manifest is what drives Typst wrapper generation, the
landing page and the publish workflow, so a book that fails its gates never
reaches the site.
"""

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

ROOT = Path(__file__).parent.parent
TITLE = re.compile(r"^Warhammer\s*-\s*(.+?)\s+([\d.]+)$", re.I)


def parse_name(pdf: Path) -> tuple[str, str] | None:
    m = TITLE.match(pdf.stem)
    if not m:
        return None
    return m.group(1).strip(), m.group(2)


def slugify(army: str) -> str:
    army = re.sub(r"^the\s+", "", army, flags=re.I)
    return re.sub(r"[^a-z0-9]+", "-", army.lower()).strip("-")


def capture(args: list[str]) -> tuple[int, str]:
    proc = subprocess.run(
        [sys.executable, *[str(a) for a in args]],
        capture_output=True, text=True, encoding="utf-8", errors="replace",
    )
    return proc.returncode, (proc.stdout or "") + (proc.stderr or "")


def value(text: str, prefix: str) -> str:
    for line in text.splitlines():
        if line.startswith(prefix):
            return line.split(":", 1)[1].strip()
    return "?"


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("pdfs", nargs="+", type=Path,
                    help="army-book PDFs, or directories of them")
    ap.add_argument("--build", type=Path, default=ROOT / "build")
    ap.add_argument("--force", action="store_true",
                    help="re-extract even when the JSON is newer than the PDF")
    args = ap.parse_args()

    sources: list[Path] = []
    for item in args.pdfs:
        sources.extend(sorted(item.glob("*.pdf")) if item.is_dir() else [item])

    args.build.mkdir(parents=True, exist_ok=True)
    manifest: list[dict] = []
    failures: list[str] = []

    print(f"{'ARMY':<24} {'VER':<6} {'ENTRIES':>7} {'WORDS':>7} {'MISSING':>16} {'WELDS':>6}")
    print("-" * 74)

    for pdf in sources:
        parsed = parse_name(pdf)
        if not parsed:
            print(f"{pdf.name:<24} -- unrecognised filename, skipped")
            continue
        army, version = parsed
        slug = slugify(army)
        target = args.build / f"{slug}.json"

        if args.force or not target.exists() or target.stat().st_mtime < pdf.stat().st_mtime:
            code, out = capture([
                ROOT / "extract" / "extract.py", pdf,
                "-o", args.build, "--slug", slug,
            ])
            if code:
                failures.append(f"{army}: extract failed\n{out}")
                print(f"{army:<24} {version:<6}   EXTRACT FAILED")
                continue

        code, cov = capture([ROOT / "extract" / "coverage.py", pdf, target, "-n", "0"])
        cov_ok = code == 0
        code, wel = capture([ROOT / "extract" / "welds.py", target])
        weld_ok = code == 0

        data = json.loads(target.read_text(encoding="utf-8"))
        entries = sum(len(c["entries"]) for c in data["chapters"])
        words = value(cov, "source words")
        missing = value(cov, "missing")
        welds = value(wel, "suspected welds")

        # Only generate Typst for a book that passed, so a failure cannot quietly
        # reach the site with the previous run's content still in place.
        if cov_ok and weld_ok:
            code, gen = capture([
                ROOT / "extract" / "to_typst.py", target,
                "-o", ROOT / "src" / "content" / f"{slug}.typ",
            ])
            if code:
                failures.append(f"{army}: to_typst failed\n{gen}")

        flag = "" if (cov_ok and weld_ok) else "   <-- FAILED"
        print(f"{army:<24} {version:<6} {entries:>7} {words:>7} {missing:>16} {welds:>6}{flag}")
        if not cov_ok:
            failures.append(f"{army}: coverage over tolerance\n{cov}")
        if not weld_ok:
            failures.append(f"{army}: welds\n{wel}")

        # Promote each book's cover illustration into assets/, where it serves as
        # both the Typst cover art and the landing-page thumbnail. The parchment
        # background is shared by the whole series, so it is only taken once.
        cover_rel = None
        if data.get("cover"):
            covers = ROOT / "assets" / "covers"
            covers.mkdir(parents=True, exist_ok=True)
            src = args.build / data["image_dir"] / data["cover"]
            if src.exists():
                (covers / f"{slug}.png").write_bytes(src.read_bytes())
                cover_rel = f"covers/{slug}.png"

        parchment = ROOT / "assets" / "images" / "parchment.png"
        if not parchment.exists() and data.get("background"):
            src = args.build / data["image_dir"] / data["background"]
            if src.exists():
                parchment.parent.mkdir(parents=True, exist_ok=True)
                parchment.write_bytes(src.read_bytes())

        manifest.append({
            "slug": slug,
            "army": army,
            "version": version,
            "source": pdf.name,
            "source_pages": data["source"]["pages"],
            "entries": entries,
            "chapters": len(data["chapters"]),
            "cover": cover_rel,
        })

    manifest.sort(key=lambda b: b["army"].lower())
    (args.build / "books.json").write_text(
        json.dumps({"books": manifest}, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    print(f"\n{len(manifest)} books in manifest -> {args.build / 'books.json'}")

    if failures:
        print(f"\n{len(failures)} FAILURE(S):")
        for f in failures:
            print("  " + f.replace("\n", "\n    "))
        sys.exit(1)


if __name__ == "__main__":
    main()
