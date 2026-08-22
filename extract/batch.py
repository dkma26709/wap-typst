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

# The core rulebook's filename carries its edition, which would otherwise become
# part of both its title and its slug.
ALIASES = {
    "the game of fantasy battles - 9th edition":
        ("The Game of Fantasy Battles", "rulebook"),
}


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
    ap.add_argument("--replace", action="store_true",
                    help="drop books not named in this run. Off by default: the "
                         "manifest is merged, so adding one book does not "
                         "silently unpublish the rest")
    args = ap.parse_args()

    sources: list[Path] = []
    for item in args.pdfs:
        sources.extend(sorted(item.glob("*.pdf")) if item.is_dir() else [item])

    args.build.mkdir(parents=True, exist_ok=True)
    manifest: list[dict] = []
    failures: list[str] = []

    print(f"{'ARMY':<24} {'VER':<6} {'ENTRIES':>7} {'WORDS':>7} "
          f"{'MISSING':>16} {'WELDS':>6} {'FIGS':>5}")
    print("-" * 80)

    for pdf in sources:
        parsed = parse_name(pdf)
        if not parsed:
            print(f"{pdf.name:<24} -- unrecognised filename, skipped")
            continue
        army, version = parsed
        alias = ALIASES.get(army.lower())
        army, slug = alias if alias else (army, slugify(army))
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

        # An army book is a catalogue of stat lines; the core rulebook has none.
        # That difference is what decides the layout, so it is read from the
        # content rather than configured per title.
        pools = [c.get("intro", []) for c in data["chapters"]]
        pools += [e["blocks"] for c in data["chapters"] for e in c["entries"]]
        layout = "army" if any(
            b["type"] == "statblock" for pool in pools for b in pool
        ) else "rules"
        words = value(cov, "source words")
        missing = value(cov, "missing")
        welds = value(wel, "suspected welds")

        # Promote each book's cover illustration into assets/, where it serves as
        # both the Typst cover art and the landing-page thumbnail. The parchment
        # background is shared by the whole series, so it is only taken once.
        cover_rel = None
        if data.get("cover"):
            covers = ROOT / "assets" / "covers"
            covers.mkdir(parents=True, exist_ok=True)
            src = args.build / data["image_dir"] / data["cover"]
            if src.exists():
                # Keep the source's own extension: images are copied without
                # re-encoding, and Typst picks the decoder from the suffix.
                name = f"{slug}{src.suffix}"
                (covers / name).write_bytes(src.read_bytes())
                cover_rel = f"covers/{name}"

        # Diagrams the book actually places, copied out of the extraction
        # directory so the repository carries only what is rendered.
        wanted = {
            b["file"] for c in data["chapters"]
            for pool in [c.get("intro", [])] + [e["blocks"] for e in c["entries"]]
            for b in pool if b["type"] == "figure"
        }
        figures = 0
        if wanted:
            dest = ROOT / "assets" / "figures" / slug
            dest.mkdir(parents=True, exist_ok=True)
            for name in sorted(wanted):
                src = args.build / data["image_dir"] / name
                if src.exists():
                    (dest / name).write_bytes(src.read_bytes())
                    figures += 1
        # Deliberately no Typst is written here. A book's .typ is owned by hand
        # once imported, and a re-extraction that overwrote it would throw away
        # every edit made since. Importing is a separate, deliberate step:
        # extract/to_book.py <slug>, once the manifest below is up to date.

        flag = "" if (cov_ok and weld_ok) else "   <-- FAILED"
        print(f"{army:<24} {version:<6} {entries:>7} {words:>7} "
              f"{missing:>16} {welds:>6} {figures:>5}{flag}")
        if not cov_ok:
            failures.append(f"{army}: coverage over tolerance\n{cov}")
        if not weld_ok:
            failures.append(f"{army}: welds\n{wel}")

        # The parchment is shared by every book, so it is taken once. The name is
        # fixed because template.typ refers to it directly.
        if data.get("background"):
            src = args.build / data["image_dir"] / data["background"]
            parchment = ROOT / "assets" / "images" / f"parchment{src.suffix}"
            if src.exists() and not parchment.exists():
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
            "layout": layout,
            "figures": figures,
        })

    catalogue = args.build / "books.json"
    if catalogue.exists():
        seen = {b["slug"] for b in manifest}
        prior = json.loads(catalogue.read_text(encoding="utf-8"))["books"]
        # A book this script cannot rebuild survives --replace: an authored one
        # never came out of a PDF run at all, and an imported one now owns its
        # own Typst, which a re-extraction would not reproduce.
        kept = [b for b in prior if b["slug"] not in seen
                and (not args.replace
                     or b.get("authored") or b.get("hand_written"))]
        if kept:
            print(f"\nkeeping {len(kept)} book(s) already in the manifest")
        manifest.extend(kept)

    manifest.sort(key=lambda b: b["army"].lower())
    catalogue.write_text(
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
