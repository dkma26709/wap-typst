"""Compare two renders and report whether a word moved between them.

The question this answers is the one every template or conversion change raises:
did the books come out saying exactly what they said before? It reads the rendered
PDFs rather than the source, so it sees what a reader sees and needs no knowledge
of Typst - and unlike the coverage and weld gates it needs no source PDFs either,
which means it can be run by anyone and in CI.

Both books are reduced to a single stream of letters: case folded, soft hyphens
dropped, words rejoined across the line breaks that hyphenation put in them, and
every digit and mark discarded. Equality of that stream is the result worth
having. It is deliberately blind to pagination, since a change that reflows the
corpus moves every folio and hyphenation point without touching a word.

A word bag - counting each word and diffing the counts - is the obvious
instrument and the wrong one. Hyphenation moves with pagination, so a book whose
text is untouched reports `chival` and `rous` lost and `chivalrous` gained;
measured on Bretonnia that came to 36 words "lost" and 34 "gained", every one of
them half of a real word. Contents-page folios are pure digits that move whenever
any page does. Both are noise this cannot produce.

What it cannot see: a change that renders identically and means something else.
Text equality is not structural equality - an item name read as a section
subtitle keeps every word in place. Check the metadata for that, not the page.
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

import pymupdf

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

SOFT_HYPHEN = chr(0x00AD)


def stream(pdf: Path) -> str:
    """Every letter of a book, in order, with nothing else."""
    doc = pymupdf.open(pdf)
    text = "\n".join(page.get_text("text") for page in doc)
    text = text.replace(SOFT_HYPHEN, "")
    # A word broken across a line by hyphenation is one word, not two.
    text = re.sub(r"(\w)-\n(\w)", r"\1\2", text)
    return re.sub(r"[^a-z]", "", text.lower())


def context(a: str, b: str, width: int = 40) -> str:
    """Where the two streams first part company, with a little either side."""
    i = 0
    while i < min(len(a), len(b)) and a[i] == b[i]:
        i += 1
    start = max(0, i - width)
    return (f"    at letter {i}\n"
            f"      before: …{a[start:i + width]}…\n"
            f"      after : …{b[start:i + width]}…")


def pairs(before: Path, after: Path) -> list[tuple[str, Path, Path]]:
    """One (name, before, after) per book, whether given files or directories."""
    if before.is_dir() != after.is_dir():
        sys.exit("render_text: give two PDFs or two directories, not one of each")
    if not before.is_dir():
        return [(before.stem, before, after)]
    names = sorted({p.name for p in before.glob("*.pdf")} & {p.name for p in after.glob("*.pdf")})
    if not names:
        sys.exit("render_text: the two directories share no PDF names")
    return [(n[:-4], before / n, after / n) for n in names]


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("before", type=Path, help="a rendered PDF, or a directory of them")
    ap.add_argument("after", type=Path, help="the same book(s) rendered after the change")
    args = ap.parse_args()

    moved = 0
    books = pairs(args.before, args.after)
    for name, a, b in books:
        sa, sb = stream(a), stream(b)
        if sa == sb:
            continue
        moved += 1
        print(f"  {name}: {len(sa)} letters -> {len(sb)}")
        print(context(sa, sb))

    print(f"\nbooks whose text moved: {moved}/{len(books)}")
    sys.exit(1 if moved else 0)


if __name__ == "__main__":
    main()
