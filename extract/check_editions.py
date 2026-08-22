"""Hold an edition to the promise its colophon makes.

While editions were generated, the changelog chapter and the change applied to
the body came from one record, so they could not disagree. Now that an edition
is a fork of its base book, kept in git, they can - and the House colophon makes
a specific promise about that:

    "The rules text has been altered from the original in the places listed
    under Our Changes, and those alterations are not marked in the body."

So the changelog is the only place a reader learns what moved, and this checks
it is complete. Every word the edition removes from its base, and every word it
introduces, must appear in the changelog chapter. Edit the body without writing
the change up and the book starts lying; this fails instead.

The Proposals edition promises the opposite - that nothing in the body has been
touched - so there the body must match its parent's exactly.

Both checks read the rendered PDFs rather than the source, so they see the book
as a reader does and need no knowledge of Typst escaping.
"""

from __future__ import annotations

import argparse
import sys
from collections import Counter
from pathlib import Path

import pymupdf

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "extract"))

from roundtrip import rendered_words  # noqa: E402
from coverage import words  # noqa: E402

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

SOFT = chr(0x00AD)


def chapter_start(pdf: Path, title: str) -> int | None:
    """The first page whose text opens with this chapter title. Chapters take a
    page of their own, so the title appearing at the head of a page is the
    chapter starting."""
    doc = pymupdf.open(pdf)
    flat = title.replace(" ", "")
    for pno, page in enumerate(doc):
        lines = [l.strip() for l in page.get_text("text").splitlines() if l.strip()]
        if lines and lines[0].replace(" ", "").upper().startswith(flat.upper()):
            return pno
    return None


def body_start(pdf: Path) -> int:
    """The first page of the book proper.

    Front matter is excluded because an edition's cover and colophon differ from
    its base by design - that difference is the edition's whole identity, and
    comparing it would drown the body comparison in guaranteed noise. The outline
    is unmistakable: nearly every line ends in a page number behind dotted
    leaders, which no page of rules does.
    """
    doc = pymupdf.open(pdf)

    def leaders(pno: int) -> float:
        lines = [l.strip() for l in doc[pno].get_text("text").splitlines() if l.strip()]
        if not lines:
            return 0.0
        return sum(1 for l in lines if l[-1].isdigit()) / len(lines)

    def chapter_like(pno: int) -> bool:
        """A chapter opens its own page with its title set in caps. Anchoring on
        that rather than on 'the page after the outline' matters: text smuggled
        in between the two would otherwise fall outside the window entirely,
        which is exactly how a tamper test first slipped through this check."""
        lines = [l.strip() for l in doc[pno].get_text("text").splitlines() if l.strip()]
        if not lines or leaders(pno) >= 0.8:
            return False
        head = lines[0]
        letters = [c for c in head if c.isalpha()]
        return bool(letters) and all(c.isupper() for c in letters) and len(head) <= 60

    first = None
    for pno in range(doc.page_count):
        lines = [l.strip() for l in doc[pno].get_text("text").splitlines() if l.strip()]
        if lines and lines[0].upper().startswith("CONTENTS"):
            first = pno
            break
    if first is None:
        return 0
    for pno in range(first, doc.page_count):
        if chapter_like(pno):
            return pno
    return doc.page_count


def bag(pdf: Path, pages: range | None = None) -> Counter:
    doc = pymupdf.open(pdf)
    out: Counter = Counter()
    wanted = set(pages) if pages is not None else set(range(doc.page_count))
    for pno, page in enumerate(doc):
        if pno not in wanted:
            continue
        out.update(words(page.get_text("text").replace(SOFT, "")))
    return out


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("edition_pdf", type=Path)
    ap.add_argument("parent_pdf", type=Path)
    ap.add_argument("--chapter", default="OUR CHANGES",
                    help="the chapter the edition documents itself in")
    ap.add_argument("--identical-body", action="store_true",
                    help="for the Proposals edition, which promises the body is "
                         "untouched rather than merely documented")
    ap.add_argument("-n", "--show", type=int, default=12)
    args = ap.parse_args()

    for p in (args.edition_pdf, args.parent_pdf):
        if not p.exists():
            raise SystemExit(f"check_editions: {p} does not exist")

    # The PDF checks below compare from the first chapter onward, so anything
    # smuggled between the outline and that chapter would fall outside their
    # window - a tamper test proved exactly that. Nothing belongs there in a
    # book this project emits, so the source is held to it directly.
    for pdf in (args.edition_pdf, args.parent_pdf):
        source = ROOT / "src" / f"{pdf.stem}.typ"
        if not source.exists():
            continue
        text = source.read_text(encoding="utf-8")
        if "#outline(" not in text:
            continue
        after = text[text.index("#outline("):]
        after = after[after.index(")") + 1:]
        head = after.split(chr(10) + "= ", 1)[0]
        stray = [l for l in head.splitlines()
                 if l.strip() and not l.strip().startswith("//")]
        if stray:
            raise SystemExit(
                f"check_editions: {source.name} has content between its outline "
                f"and its first chapter, which no comparison here would see: "
                f"{stray[0][:60]!r}")

    start = chapter_start(args.edition_pdf, args.chapter)
    if start is None:
        raise SystemExit(
            f"check_editions: {args.edition_pdf.name} has no {args.chapter!r} "
            f"chapter, so it documents none of its changes")

    doc = pymupdf.open(args.edition_pdf)
    ebody = body_start(args.edition_pdf)
    pbody = body_start(args.parent_pdf)
    body = bag(args.edition_pdf, range(ebody, start))
    documented = bag(args.edition_pdf, range(start, doc.page_count))

    print(f"{args.edition_pdf.name} against {args.parent_pdf.name}")
    print(f"  body pages {ebody + 1}-{start}, {args.chapter} from page {start + 1}")

    if args.identical_body:
        # The parent's own trailing chapter is not part of the body compared.
        pstop = chapter_start(args.parent_pdf, args.chapter)
        parent_body = bag(args.parent_pdf,
                          range(pbody, pstop if pstop is not None
                                else pymupdf.open(args.parent_pdf).page_count))
        removed, added = parent_body - body, body - parent_body
        ok = not removed and not added
        print(f"  body words differing from the parent: "
              f"{sum(removed.values())} missing, {sum(added.values())} added")
        if removed:
            print("    missing:", removed.most_common(args.show))
        if added:
            print("    added  :", added.most_common(args.show))
        print(f"\n{'OK' if ok else 'FAIL'}: the body is "
              f"{'untouched, as the colophon promises' if ok else 'NOT untouched'}")
        sys.exit(0 if ok else 1)

    parent = bag(args.parent_pdf,
                 range(pbody, pymupdf.open(args.parent_pdf).page_count))
    removed = parent - body
    added = body - parent
    undocumented_removals = removed - documented
    undocumented_additions = added - documented

    print(f"  removed from the base: {sum(removed.values())} words, "
          f"{sum(undocumented_removals.values())} of them not in {args.chapter}")
    print(f"  added to the base    : {sum(added.values())} words, "
          f"{sum(undocumented_additions.values())} of them not in {args.chapter}")
    if undocumented_removals:
        print("    undocumented removals:", undocumented_removals.most_common(args.show))
    if undocumented_additions:
        print("    undocumented additions:", undocumented_additions.most_common(args.show))

    ok = not undocumented_removals and not undocumented_additions
    print(f"\n{'OK' if ok else 'FAIL'}: every alteration is "
          f"{'written up in ' + args.chapter if ok else 'NOT written up'}")
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
