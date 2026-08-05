"""Run the extraction half of the pipeline: source PDF -> JSON -> Typst source.

Compilation is deliberately not part of this step. The extracted JSON and the
generated Typst are committed, so CI only needs the Typst compiler and never
the source PDFs.
"""

from __future__ import annotations

import argparse
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).parent


def run(args: list[str]) -> None:
    print("$", " ".join(str(a) for a in args))
    subprocess.run([sys.executable, *[str(a) for a in args]], check=True)


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("pdf", type=Path, help="source army-book PDF")
    ap.add_argument("--slug", required=True, help="output name, e.g. lizardmen")
    ap.add_argument("--skip-coverage", action="store_true")
    args = ap.parse_args()

    build = ROOT / "build"
    run([ROOT / "extract" / "extract.py", args.pdf, "-o", build])

    produced = build / (args.pdf.stem.replace(" ", "-").lower() + ".json")
    target = build / f"{args.slug}.json"
    if produced != target:
        target.write_bytes(produced.read_bytes())
        produced.unlink()

    if not args.skip_coverage:
        run([ROOT / "extract" / "coverage.py", args.pdf, target, "-n", "15"])
        # Coverage counts words and so cannot see two of them welded into one.
        run([ROOT / "extract" / "welds.py", target])

    run([
        ROOT / "extract" / "to_typst.py", target,
        "-o", ROOT / "src" / "content" / f"{args.slug}.typ",
    ])
    print("\nnow compile:  typst compile --ignore-system-fonts src/book.typ out/book.pdf")


if __name__ == "__main__":
    main()
