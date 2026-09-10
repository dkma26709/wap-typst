"""Sweep rendered pages for Typst markup that leaked through onto the page.

Escaped markup survives into the PDF more readily than it should: a `#macro(`
that was meant to be called, a `*bold*` marker whose pair went missing, a `)[`
where a call was cut in half. The gates that count words cannot see any of it,
because a stray asterisk is not a lost word.

`--against` is the option that makes this usable. Several of these shapes occur
legitimately in the books - the asterisk that marks a common magic item, and the
footnote markers under a weapon table - so a bare run reports two dozen hits on
an untouched corpus and teaches you to ignore it. Given a baseline render, only
hits that are *new* are reported, which is the number that means something.

Measured on this corpus: `rulebook-proposal` carries 24 legitimate asterisks and
`dwarfs-house` and `daemons-of-chaos-house` one each, all footnote markers
present in their base books too.
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

import pymupdf

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

BACKSLASH = chr(92)

# Written with re.escape so the pattern matches a literal backslash in the page
# text. `re.compile(BACKSLASH + "-")` looks right and is not: in a regex `\-` is
# an escaped hyphen, which matches every ordinary hyphen in the corpus. That
# mistake reported 632 hits on words like `Spawn-kin`.
PATTERNS = [
    ("typst macro call", re.compile(r"#[a-z][a-z-]{2,}\(")),
    ("call left open", re.compile(r"\)\[")),
    ("escaped hyphen", re.compile(re.escape(BACKSLASH) + r"-")),
    ("emphasis marker", re.compile(r"_[A-Z]")),
    ("bold marker", re.compile(r"\*[A-Za-z]")),
]


def hits(pdf: Path) -> list[tuple[str, int, str]]:
    """(label, page number, the offending fragment) for every match in a book."""
    found = []
    for pno, page in enumerate(pymupdf.open(pdf), start=1):
        text = page.get_text("text")
        for label, pattern in PATTERNS:
            for match in pattern.finditer(text):
                start = max(0, match.start() - 30)
                fragment = " ".join(text[start:match.end() + 30].split())
                found.append((label, pno, fragment))
    return found


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("pdf", type=Path, nargs="+", help="rendered PDFs to sweep")
    ap.add_argument("--against", type=Path, metavar="DIR",
                    help="a directory of baseline renders; report only new hits")
    args = ap.parse_args()

    total = 0
    for pdf in args.pdf:
        found = hits(pdf)
        if args.against:
            baseline = args.against / pdf.name
            if not baseline.exists():
                sys.exit(f"render_artefacts: no baseline for {pdf.name} in {args.against}")
            # Compare on label and fragment, never on page number: a hit that
            # merely moved pages is the same hit.
            known = {(label, fragment) for label, _, fragment in hits(baseline)}
            found = [h for h in found if (h[0], h[2]) not in known]
        for label, pno, fragment in found:
            print(f"  {pdf.stem} p{pno} [{label}] …{fragment}…")
        total += len(found)

    kind = "new artefacts" if args.against else "artefacts"
    print(f"\n{kind}: {total}")
    sys.exit(1 if total else 0)


if __name__ == "__main__":
    main()
