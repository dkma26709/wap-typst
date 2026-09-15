"""Hold an edition to the promise its colophon makes.

While editions were generated, the changelog and the change applied to the body
came from one record, so they could not disagree. Now that an edition is a fork
of its base book, kept in git, they can - and the House colophon makes a
specific promise about that:

    "The rules text has been altered from the original, and those alterations
    are not marked in the body."

The reader is warned the body was altered and not told where, so the record is
the only place the alterations are written down, and this checks it is complete.
Every word the edition removes from its base, and every word it introduces, must
appear in `editions/<slug>/<army>/<version>.toml`. Edit the body without writing
the change up and the book starts lying; this fails instead.

That record used to be a chapter at the back of the book, and this read the
chapter's own pages. The chapter is gone - a book carries the rules, not its own
history - so the same check now reads the TOML the change was always recorded
in. The gate is otherwise unchanged; only where it looks for the changelog is.

The Proposals edition promises the opposite - that nothing in the body has been
touched - so there the body must match its parent's exactly, and its proposals
DO print, in a chapter `--chapter` names.

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


# The template's bottom margin, which the folio is set inside. Measured on the
# corpus: the folio's line sits at y=801.9 of an 841.9pt page while the lowest
# body line ends at 785.1, so the band holds the page number and nothing else.
FOOTER_BAND = 1.9 * 28.3465  # 1.9cm, from `book()` in src/template.typ


def page_words(page: pymupdf.Page) -> list[str]:
    """Every word a reader sees on the page, except the folio.

    The folio has to go, because an edition that adds a page to its base does
    not thereby differ from it by a word. Every body page carries its own
    number, so an edition one page longer contributes exactly one token its
    base has not got, and `71` was reported against the Empire House book as an
    undocumented addition on that basis alone.

    Dropped on two signals rather than one. Position would do on its own today,
    but the clearance between the band and the lowest body line is 3pt, and a
    bare number is exactly what half the cells of a weapon profile hold - so a
    line goes only if it is inside the bottom margin AND is nothing but digits.

    A word hyphenated across a line break is one word, and is rejoined before
    the line is split. An edition reflows its base, so the two books break
    different words in different places: without this the rulebook's House
    edition reported 845 undocumented removals, led by `ing` 31 times, `re` 16
    and `ment` 14 - fragments of words that never left the book at all.
    """
    band = page.rect.height - FOOTER_BAND
    kept: list[str] = []
    pending = ""
    for block in page.get_text("dict")["blocks"]:
        if block["type"] != 0:
            continue
        for line in block["lines"]:
            text = "".join(span["text"] for span in line["spans"])
            if line["bbox"][1] >= band and text.strip().isdigit():
                continue
            if pending:
                text, pending = pending + text.lstrip(), ""
            # Typst breaks a word with a SOFT hyphen, not an ASCII one, and the
            # soft hyphen was being stripped a line later - by which time the
            # two halves were already two words.
            #
            # The two kinds of hyphen part company here. A soft one is Typst's
            # and goes, so `move-` + `ment` is `movement`. A real one is the
            # author's and STAYS, so `re-` + `roll` is `re-roll` and splits into
            # the same two words the unbroken line gives - dropping it made
            # `reroll`, which matched nothing and read as a word both lost and
            # gained.
            stripped = text.rstrip()
            if stripped.endswith((SOFT, "-")) and len(stripped) > 1 \
                    and stripped[-2].isalpha():
                pending = (stripped[:-1] if stripped.endswith(SOFT)
                           else stripped)
                continue
            kept.extend(words(text.replace(SOFT, "")))
    # A word left hanging at the foot of a page is still a word.
    if pending:
        kept.extend(words(pending.replace(SOFT, "")))
    return kept


def bag(pdf: Path, pages: range | None = None) -> Counter:
    doc = pymupdf.open(pdf)
    out: Counter = Counter()
    wanted = set(pages) if pages is not None else set(range(doc.page_count))
    for pno, page in enumerate(doc):
        if pno not in wanted:
            continue
        out.update(page_words(page))
    return out


def words_of(text: str) -> Counter:
    """The same word bag, taken from a file rather than a rendered page.

    `words` is what the PDF side uses, so a word written in the record and a
    word printed in the book are folded the same way and compare directly.
    """
    return Counter(words(text.replace(SOFT, "")))


def changes_toml(edition_pdf: Path) -> Path:
    """Where an edition's changes are recorded, from the book's own path.

    `out/lizardmen/3.0-house.pdf` -> `editions/house/lizardmen/3.0.toml`. The
    edition's slug is the suffix on the file name, which is also how src/ names
    the fork, so the two cannot drift apart without one of them failing to open.
    """
    army = edition_pdf.parent.name
    version, _, slug = edition_pdf.stem.rpartition("-")
    if not slug:
        raise SystemExit(
            f"check_editions: {edition_pdf.name} does not name an edition - "
            f"expected <version>-<slug>.pdf, as in 3.0-house.pdf")
    return ROOT / "editions" / slug / army / f"{version}.toml"


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("edition_pdf", type=Path)
    ap.add_argument("parent_pdf", type=Path)
    ap.add_argument("--chapter", default="PROPOSALS",
                    help="the chapter a Proposals edition prints its proposals "
                         "in, excluded from the body compared")
    ap.add_argument("--changes", type=Path,
                    help="the TOML the edition's changes are recorded in "
                         "(default: derived from the edition's own path)")
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
        # A book's id is its path under src/ - `lizardmen/3.0-house` - and a
        # render mirrors that, so the PDF's own folder names the army. Failing
        # to find the source is not a reason to skip: this check reports a pass
        # either way, so a missing source would quietly retire it.
        source = ROOT / "src" / pdf.parent.name / f"{pdf.stem}.typ"
        if not source.exists():
            flat = ROOT / "src" / f"{pdf.stem}.typ"
            if not flat.exists():
                raise SystemExit(
                    f"check_editions: no source found for {pdf.name} - looked "
                    f"for {source.relative_to(ROOT).as_posix()}. Render into a "
                    f"tree mirroring src/, so out/<army>/<version>.pdf")
            source = flat
        text = source.read_text(encoding="utf-8")
        if "#outline(" not in text:
            continue
        after = text[text.index("#outline("):]
        after = after[after.index(")") + 1:]
        # A chapter begins at a `= ` line OR at a record chapter that prints
        # its own heading - upgrade-chapter, magic-item-chapter, lore. Looking
        # only for `= ` made every book whose first chapter became a record
        # look as though its whole body sat above the first chapter.
        starts = [after.index(mark) for mark in
                  (chr(10) + "= ", chr(10) + "#upgrade-chapter(",
                   chr(10) + "#magic-item-chapter(", chr(10) + "#lore(")
                  if mark in after]
        head = after[:min(starts)] if starts else after
        stray = [l for l in head.splitlines()
                 if l.strip() and not l.strip().startswith("//")]
        if stray:
            raise SystemExit(
                f"check_editions: {source.name} has content between its outline "
                f"and its first chapter, which no comparison here would see: "
                f"{stray[0][:60]!r}")

    doc = pymupdf.open(args.edition_pdf)
    # A House edition prints no chapter of its own, so its body runs to the end.
    # A Proposals edition prints one, and it is excluded from the body compared.
    start = chapter_start(args.edition_pdf, args.chapter) or doc.page_count
    if args.identical_body and start == doc.page_count:
        raise SystemExit(
            f"check_editions: {args.edition_pdf.name} has no {args.chapter!r} "
            f"chapter, so there is nothing for --identical-body to exclude")

    ebody = body_start(args.edition_pdf)
    pbody = body_start(args.parent_pdf)
    body = bag(args.edition_pdf, range(ebody, start))

    print(f"{args.edition_pdf.name} against {args.parent_pdf.name}")
    if start < doc.page_count:
        print(f"  body pages {ebody + 1}-{start}, "
              f"{args.chapter} from page {start + 1}")
    else:
        print(f"  body pages {ebody + 1}-{start}")

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

    record = args.changes or changes_toml(args.edition_pdf)
    if not record.exists():
        raise SystemExit(
            f"check_editions: {args.edition_pdf.name} has no change record at "
            f"{record}, so it documents none of its changes")
    documented = words_of(record.read_text(encoding="utf-8"))

    parent = bag(args.parent_pdf,
                 range(pbody, pymupdf.open(args.parent_pdf).page_count))
    removed = parent - body
    added = body - parent
    undocumented_removals = removed - documented
    undocumented_additions = added - documented

    print(f"  removed from the base: {sum(removed.values())} words, "
          f"{sum(undocumented_removals.values())} of them not in {record.name}")
    print(f"  added to the base    : {sum(added.values())} words, "
          f"{sum(undocumented_additions.values())} of them not in {record.name}")
    if undocumented_removals:
        print("    undocumented removals:", undocumented_removals.most_common(args.show))
    if undocumented_additions:
        print("    undocumented additions:", undocumented_additions.most_common(args.show))

    ok = not undocumented_removals and not undocumented_additions
    print(f"\n{'OK' if ok else 'FAIL'}: every alteration is "
          f"{'written up in ' + record.name if ok else 'NOT written up'}")
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
