"""Build the print edition of one book: the published book with its unit
pictures laid in from the local store.

    python print.py ordo-draconis/2026.1

The published books carry no unit pictures, and the site is rules only. The
pictures live in art/<army>/, which is gitignored and stays on the machine that
prints: one file per entry, named for it the way the template names it -
BLOOD KNIGHTS is blood-knights.jpg - and <name>.after.jpg to close an entry
rather than open it. Every version of an army reads the same folder.

Before compiling, it reports where the store and the book disagree. A file that
no entry claims is a misnamed picture, which would otherwise just be missing
from its page. A picture that would print below 300 dpi at the size the
template sets it is listed with the resolution it would get. Neither stops the
build, since a test print at home does not need either.

The PDF goes to out/print/<army>-<version>.pdf, which build.py --site never
copies, so nothing here can reach the site.
"""
import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

from PIL import Image

from build import FLAGS, ROOT, typst

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

STORE = ROOT / "art"
OUT = ROOT / "out" / "print"
EXTENSIONS = (".jpg", ".jpeg", ".png")

# The largest a picture is set, in millimetres, mirroring the template: A4 less
# its 2.2cm and 1.9cm margins, times ART_HEIGHT for the height, and the page less
# the default 2.0cm sides for the width. A book with wider sides sets its
# pictures a little narrower, so this errs towards asking for more pixels.
MAX_HEIGHT_MM = (297 - 22 - 19) * 0.36
MAX_WIDTH_MM = 210 - 2 * 20
DPI = 300


def slug(name: str) -> str:
    """The template's _art-slug: lower case, every other run of characters a hyphen."""
    return re.sub(r"[^a-z0-9]+", "-", name.lower()).strip("-")


def entry_names(exe: str, src: Path) -> list[str]:
    """The book's unit names, read from the records the template writes, so the
    names checked here are the names the template will look up."""
    proc = subprocess.run(
        [exe, "query", *FLAGS, str(src), "<meta>", "--field", "value"],
        capture_output=True, text=True, encoding="utf-8")
    if proc.returncode != 0:
        raise SystemExit(f"print: could not read {src.name}:\n{proc.stderr}")
    return [m["name"] for m in json.loads(proc.stdout)
            if isinstance(m, dict) and m.get("kind") == "unit"]


def printed_dpi(path: Path) -> float:
    """The resolution a picture gets at the size the template sets it."""
    with Image.open(path) as im:
        w, h = im.size
    height_mm = min(MAX_HEIGHT_MM, MAX_WIDTH_MM * h / w)
    return h / (height_mm / 25.4)


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("book", help="a book id as build/render.json names it, e.g. ordo-draconis/2026.1")
    args = ap.parse_args()

    src = ROOT / "src" / f"{args.book}.typ"
    if not src.exists():
        raise SystemExit(f"print: no book at src/{args.book}.typ")
    army, _, version = args.book.partition("/")
    store = STORE / army
    if not store.is_dir():
        raise SystemExit(f"print: no picture store at art/{army}/")

    exe = typst()
    files = sorted(p for p in store.iterdir() if p.suffix.lower() in EXTENSIONS)
    stems = {slug(n) for n in entry_names(exe, src)}
    # The template matches the file name exactly, so a claim must too: Renard.JPG
    # is not renard.jpg to Typst, and counting it would leave the page bare.
    claimed = [p for p in files if p.suffix in EXTENSIONS
               and p.stem.removesuffix(".after") in stems]
    unclaimed = [p for p in files if p not in claimed]
    missing = sorted(stems - {p.stem for p in claimed})

    opening = sum(1 for p in claimed if not p.stem.endswith(".after"))
    print(f"{args.book}: {opening} of {len(stems)} entries open on a picture, "
          f"{len(claimed) - opening} close on one")
    for p in unclaimed:
        stem = p.stem.lower()
        after = ".after" if stem.endswith(".after") else ""
        fix = slug(stem.removesuffix(".after")) + after + p.suffix.lower()
        note = f" - rename it {fix}" if fix.removesuffix(p.suffix.lower()).removesuffix(".after") in stems else ""
        print(f"  no entry is named for {p.name}{note}")
    for p in claimed:
        dpi = printed_dpi(p)
        if dpi < DPI:
            print(f"  {p.name} prints at {dpi:.0f} dpi")
    if missing:
        print(f"  without a picture: {', '.join(missing)}")

    OUT.mkdir(parents=True, exist_ok=True)
    pdf = OUT / f"{army}-{version}.pdf"
    proc = subprocess.run(
        [exe, "compile", *FLAGS,
         "--input", f"art-dir=/art/{army}",
         "--input", "art-files=" + ",".join(p.name for p in claimed),
         str(src), str(pdf)],
        capture_output=True, text=True, encoding="utf-8")
    if proc.returncode != 0:
        print(proc.stderr, file=sys.stderr)
        raise SystemExit(1)
    if proc.stderr.strip():
        print(proc.stderr)
    print(f"wrote {pdf.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
