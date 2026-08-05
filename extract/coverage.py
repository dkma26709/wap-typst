"""Verify the extraction lost nothing.

Compares the word multiset of the source PDF against the word multiset of the
generated JSON. Anything the PDF says that the JSON does not is reported, so a
dropped rule or description cannot pass unnoticed.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter
from pathlib import Path

import pymupdf

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

# Split on apostrophes rather than keeping them inside a token. The source
# routinely sets a possessive or infix as its own span ("Sotek" + "'s",
# "K" + "'daai"); this pipeline rejoins them, which is correct but would other-
# wise read as two missing words and one unexpected one in every book. Splitting
# both sides identically leaves any genuine loss as the only thing left to see.
WORD = re.compile(r"[^\W_]+", re.UNICODE)


def words(text: str) -> list[str]:
    return [w.lower() for w in WORD.findall(text)]


def pdf_words(pdf: Path, skip: set[int] | None = None) -> Counter:
    """Word bag for the source, excluding page furniture and any pages the
    extractor deliberately drops (the cover and the book's own contents page,
    which the rendered book replaces with a generated outline)."""
    skip = skip or set()
    doc = pymupdf.open(pdf)
    bag: Counter = Counter()
    for pno, page in enumerate(doc, start=1):
        if pno in skip:
            continue
        for block in page.get_text("dict")["blocks"]:
            if block["type"] != 0:
                continue
            for line in block["lines"]:
                for span in line["spans"]:
                    # Running heads are set in the display face at 24pt+, and
                    # the page number is the only thing in the footer band.
                    if "CaslonAntique" in span["font"] and span["size"] >= 24:
                        continue
                    if span["bbox"][1] > 770 and span["text"].strip().isdigit():
                        continue
                    bag.update(words(span["text"]))
    return bag


def json_words(data: dict) -> Counter:
    bag: Counter = Counter()

    def eat(text: str) -> None:
        bag.update(words(text))

    def walk(block: dict) -> None:
        kind = block["type"]
        if kind == "statblock":
            eat(block.get("label", ""))
            for row in block["rows"]:
                eat(row["name"])
                for value in row["values"].values():
                    eat(value)
            for col in block["columns"]:
                eat(col)
        elif kind == "minitable":
            for col in block["columns"]:
                eat(col)
            for value in block["row"].values():
                eat(value)
        elif kind == "field":
            eat(block["label"])
            eat(block["value"])
        elif kind == "namecost":
            eat(block["name"])
            eat(block["cost"])
        elif kind == "para":
            eat(block["text"])
        elif kind == "list":
            for item in block["items"]:
                eat(item["text"])
                for sub in item["sub"]:
                    eat(sub["text"])

    for chapter in data["chapters"]:
        eat(chapter["title"])
        for block in chapter.get("intro", []):
            walk(block)
        for entry in chapter["entries"]:
            eat(entry["name"])
            for block in entry["blocks"]:
                walk(block)
    return bag


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("pdf", type=Path)
    ap.add_argument("json", type=Path)
    ap.add_argument("-n", "--show", type=int, default=40)
    ap.add_argument("--tolerance", type=float, default=0.0,
                    help="fail above this fraction of missing words. Defaults "
                         "to zero: all thirty books currently extract with no "
                         "missing words at all, so anything above it is worth "
                         "reading rather than tolerating")
    args = ap.parse_args()

    data = json.loads(args.json.read_text(encoding="utf-8"))
    src = pdf_words(args.pdf, set(data.get("front_matter_pages", [])))
    out = json_words(data)

    missing = src - out
    extra = out - src
    total = sum(src.values())
    lost = sum(missing.values())

    print(f"source words : {total:,}")
    print(f"output words : {sum(out.values()):,}")
    print(f"missing      : {lost:,}  ({lost / total:.2%})")
    print(f"unexpected   : {sum(extra.values()):,}")

    if missing:
        print("\ntop missing tokens:")
        for word, count in missing.most_common(args.show):
            print(f"  {count:>4}  {word}")

    over = lost / total > args.tolerance
    print(f"\n{'FAIL' if over else 'OK'}: tolerance {args.tolerance:.3%}")
    sys.exit(1 if over else 0)


if __name__ == "__main__":
    main()
