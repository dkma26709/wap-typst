"""Render extracted army-book JSON as Typst source.

Text crosses into Typst as string literals rather than markup, so nothing in
the source book can be reinterpreted as Typst syntax — no escaping table to get
wrong, and a unit called `*Ancient*` stays literal.
"""

from __future__ import annotations

import argparse
import collections
import json
import sys
from pathlib import Path

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def lit(text: str) -> str:
    return '"' + text.replace("\\", "\\\\").replace('"', '\\"') + '"'


def arr(items: list[str]) -> str:
    """A Typst array. Single-element arrays need the trailing comma or they are
    parsed as a parenthesised expression."""
    if not items:
        return "()"
    if len(items) == 1:
        return f"({items[0]},)"
    return "(" + ", ".join(items) + ")"


def runs_lit(runs: list[dict]) -> str:
    return arr([
        f"(emph: {lit(r['emph'])}, text: {lit(r['text'])})" for r in runs
    ])


# Set once per document from the JSON's slug. Root-relative: Typst resolves a
# relative path against the file holding the literal, and these are consumed by
# `image()` inside template.typ, not by the file that emits them.
FIGURE_PREFIX = ""


def block_lines(block: dict) -> list[str]:
    kind = block["type"]

    if kind == "figure":
        path = f"{FIGURE_PREFIX}/{block['file']}"
        return [f"#diagram({lit(path)}, {block['fraction']})"]

    if kind == "statblock":
        cols = block["columns"]
        rows = [
            arr([lit(row["name"])] + [lit(row["values"].get(c, "")) for c in cols])
            for row in block["rows"]
        ]
        label = lit(block.get("label", "Profile"))
        return [f"#statblock({label}, {arr([lit(c) for c in cols])}, {arr(rows)})"]

    if kind == "namecost":
        return [f"#namecost({lit(block['name'])}, {lit(block['cost'])})"]

    if kind == "chart":
        # Pad to a rectangle: Typst needs a fixed column count, and a ragged row
        # would silently shift every cell after it into the wrong column.
        width = max(len(r) for r in block["rows"])
        rows = [
            arr([lit(c) for c in row + [""] * (width - len(row))])
            for row in block["rows"]
        ]
        return [f"#chart({arr(rows)})"]

    if kind == "minitable":
        cols = block["columns"]
        rows = block.get("rows") or [block["row"]]
        vals = [lit(r.get(c, "")) for r in rows for c in cols]
        return [f"#minitable({arr([lit(c) for c in cols])}, {arr(vals)})"]

    if kind == "field":
        return [f"#field({lit(block['label'])}, {lit(block['value'])})"]

    if kind == "para":
        style = block.get("style", "body")
        suffix = ', style: "italic"' if style == "italic" else ""
        return [f"#para({runs_lit(block['runs'])}{suffix})"]

    if kind == "list":
        entries = [
            f"(runs: {runs_lit(it['runs'])}, "
            f"sub: {arr([runs_lit(s['runs']) for s in it['sub']])})"
            for it in block["items"]
        ]
        return [f"#items({arr(entries)})"]

    return []


def blocks_lines(blocks: list[dict]) -> list[str]:
    out: list[str] = []
    for i, block in enumerate(blocks):
        # A bare display-font name touching a chart is one of its axis labels,
        # not a heading for the section that follows.
        if block["type"] == "namecost" and not block["cost"]:
            neighbours = [blocks[j]["type"] for j in (i - 1, i + 1)
                          if 0 <= j < len(blocks)]
            if "chart" in neighbours:
                out.append(f"#chartlabel({lit(block['name'])})")
                continue
        out.extend(block_lines(block))
    return out


def has_statblock(blocks: list[dict]) -> bool:
    return any(b["type"] == "statblock" for b in blocks)


def text_length(blocks: list[dict]) -> int:
    total = 0
    for block in blocks:
        kind = block["type"]
        if kind == "para":
            total += len(block["text"])
        elif kind == "field":
            total += len(block["value"])
        elif kind == "namecost":
            total += len(block["name"])
        elif kind == "list":
            total += sum(
                len(it["text"]) + sum(len(s["text"]) for s in it["sub"])
                for it in block["items"]
            )
    return total


# One column of a full A4 page holds roughly this much prose. Below it a
# two-column setting leaves the second column stranded empty, which reads as a
# layout fault rather than a choice.
TWO_COLUMN_MIN = 3000


def two_column(blocks: list[dict]) -> bool:
    """Decided per entry rather than per chapter, because every entry now starts
    its own page and so has a full page of column height to fill or waste."""
    return not has_statblock(blocks) and text_length(blocks) >= TWO_COLUMN_MIN


# A stat line plus a handful of fields comes to a couple of hundred characters.
# The ceiling is a safety margin as much as a threshold: a compact entry is set
# unbreakable, and content taller than a page cannot be laid out that way.
COMPACT_MAX = 400


def compact(blocks: list[dict]) -> bool:
    """True for an entry that is only a stat line and fields — nothing to say
    beyond its profile. These share a page instead of each taking one."""
    if not has_statblock(blocks):
        return False
    if {b["type"] for b in blocks} - {"statblock", "field"}:
        return False
    return text_length(blocks) < COMPACT_MAX


def wrap(lines: list[str], columns: bool) -> list[str]:
    if not columns:
        return lines
    return ["#columns(2)["] + lines + ["]"]


def render_rules(data: dict, template: str) -> str:
    """The core rulebook is continuous prose with a three-level hierarchy, so its
    sections flow rather than each claiming a page, and everything stays single
    column: the charts are up to eleven columns wide and would not survive being
    split, and unlike a unit's stat line a chart cannot be floated away from the
    paragraph that explains it."""
    lines: list[str] = [
        "// Generated by extract/to_typst.py - do not edit by hand.",
        f'#import "{template}": *',
        "",
    ]
    for chapter in data["chapters"]:
        lines.append(f"#heading(level: 1, {lit(chapter['title'])})")
        lines.extend(blocks_lines(chapter.get("intro", [])))
        for entry in chapter["entries"]:
            lines.append("")
            lines.append(
                f"#heading(level: {entry.get('level', 2)}, {lit(entry['name'])})")
            lines.extend(blocks_lines(entry["blocks"]))
        lines.append("")
    return "\n".join(lines) + "\n"


def render(data: dict, template: str) -> str:
    # `include` evaluates a file in its own module scope, so the template has to
    # be imported here rather than inherited from the including document.
    lines: list[str] = [
        "// Generated by extract/to_typst.py - do not edit by hand.",
        f'#import "{template}": *',
        "",
    ]
    for chapter in data["chapters"]:
        lines.append(f"#heading(level: 1, {lit(chapter['title'])})")
        intro = chapter.get("intro", [])
        if intro:
            lines.extend(wrap(blocks_lines(intro), two_column(intro)))

        for n, entry in enumerate(chapter["entries"]):
            body = wrap(blocks_lines(entry["blocks"]), two_column(entry["blocks"]))
            lines.append("")
            if compact(entry["blocks"]):
                lines.append(f"#compact-entry({lit(entry['name'])})[")
                lines.extend(body)
                lines.append("]")
                continue
            # The first entry shares the chapter-title page unless an intro has
            # already claimed it; every later entry opens a page of its own. The
            # break is emitted here, outside any `columns` container, because
            # Typst cannot break a page from within one.
            first = n == 0 and not intro
            suffix = ", first: true)" if first else ")"
            lines.append(f"#entry({lit(entry['name'])}{suffix}")
            lines.extend(body)
        lines.append("")
    return "\n".join(lines) + "\n"


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("json", type=Path)
    ap.add_argument("-o", "--out", type=Path, required=True)
    ap.add_argument("--template", default="../template.typ",
                    help="template path, relative to the generated file")
    ap.add_argument("--layout", choices=("army", "rules"), default="army",
                    help="'army' gives every entry its own page; 'rules' lets "
                         "sections flow, for the core rulebook")
    args = ap.parse_args()

    data = json.loads(args.json.read_text(encoding="utf-8"))

    global FIGURE_PREFIX
    FIGURE_PREFIX = f"/assets/figures/{data.get('slug', args.json.stem)}"

    args.out.parent.mkdir(parents=True, exist_ok=True)
    build = render_rules if args.layout == "rules" else render
    args.out.write_text(build(data, args.template), encoding="utf-8")

    entries = [e for c in data["chapters"] for e in c["entries"]]
    print(f"wrote {args.out}  (layout: {args.layout})")

    if args.layout == "rules":
        charts = sum(
            1 for c in data["chapters"]
            for pool in [c.get("intro", [])] + [e["blocks"] for e in c["entries"]]
            for b in pool if b["type"] == "chart"
        )
        depth = collections.Counter(e.get("level", 2) for e in entries)
        print(f"  sections: {len(entries)} across {len(data['chapters'])} chapters "
              f"(level 2: {depth[2]}, level 3: {depth[3]})")
        print(f"  charts: {charts}")
        return

    twocol = [e["name"] for e in entries if two_column(e["blocks"])]
    grouped = [e["name"] for e in entries if compact(e["blocks"])]
    print(f"  entries: {len(entries)}; {len(entries) - len(grouped)} open their "
          f"own page, {len(grouped)} share")
    print(f"  two-column entries: {', '.join(twocol) or 'none'}")
    print(f"  stat-line-only, grouped: {', '.join(grouped) or 'none'}")


if __name__ == "__main__":
    main()
