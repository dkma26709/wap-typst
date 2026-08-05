"""Scan extracted JSON for words welded together by a lost space.

Re-joining PDF text that was laid out by position rather than by spacing can drop
the space a horizontal gap stood for. The result is valid-looking JSON with
"damagearea" or "(6),Natural" inside it, which no word-count check will notice,
so look for the shapes such a weld produces.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

SUSPECT = [
    # A thousands separator is a comma against a digit, so require a non-digit.
    ("punctuation not followed by a space", re.compile(r"[,;:](?!\d)\S")),
    ("closing bracket against a letter", re.compile(r"\)[A-Za-z]")),
    ("lower-case running into upper-case", re.compile(r"[a-z]{2}[A-Z][a-z]")),
    ("digit running into a letter", re.compile(r"\d[A-Z][a-z]{2}")),
]

# Shapes that legitimately look like a weld.
ALLOW = re.compile(
    r"""^(?:
        \d+[A-Za-z]{1,2}\d*        # 2D6, D3, 4D6
      | [A-Z][a-z]*\d              # Chotec2
    )$""",
    re.VERBOSE,
)


def texts(data: dict):
    def walk(block: dict):
        kind = block["type"]
        if kind in ("para",):
            yield block["text"]
        elif kind == "field":
            yield block["value"]
        elif kind == "namecost":
            yield block["name"]
        elif kind == "minitable":
            yield from block["row"].values()
        elif kind == "chart":
            for row in block["rows"]:
                yield from row
        elif kind == "statblock":
            for row in block["rows"]:
                yield row["name"]
        elif kind == "list":
            for item in block["items"]:
                yield item["text"]
                for sub in item["sub"]:
                    yield sub["text"]

    for chapter in data["chapters"]:
        for block in chapter.get("intro", []):
            yield from walk(block)
        for entry in chapter["entries"]:
            for block in entry["blocks"]:
                yield from walk(block)


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("json", type=Path)
    args = ap.parse_args()

    data = json.loads(args.json.read_text(encoding="utf-8"))
    hits = 0
    for text in texts(data):
        for label, pattern in SUSPECT:
            for match in pattern.finditer(text):
                fragment = text[max(0, match.start() - 30):match.end() + 30]
                token = text[match.start():match.end()]
                if ALLOW.match(token):
                    continue
                hits += 1
                print(f"  [{label}] ...{fragment}...")

    print(f"\nsuspected welds: {hits}")
    sys.exit(1 if hits else 0)


if __name__ == "__main__":
    main()
