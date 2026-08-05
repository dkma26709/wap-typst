"""Extract a Warhammer Armies Project army book into structured JSON.

The WAP books are digitally authored, which means structure is recoverable
without heuristics guessing at it:

  * the PDF bookmark TOC gives chapters (level 1) and entries (level 2)
  * CaslonAntique at 36pt/16pt/12pt marks chapter / entry / field label
  * TimesNewRoman 10pt is body text, with -Bold and -Italic variants
  * stat blocks are positioned text on stable x-coordinates, so columns
    are recovered by snapping each value to the nearest header anchor

Output is a single JSON document plus deduplicated PNGs for the artwork.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from collections import defaultdict
from pathlib import Path

import pymupdf

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

# --- layout constants, measured from the 3.x books (A4, 595x842pt) ---
COL_SPLIT = 297.0          # page midpoint; blocks straddling it are full-width
NAME_COL_LIMIT = 240.0     # stat-row label column ends here
FOOTER_Y = 770.0           # page numbers live below this
HEADER_Y = 115.0           # running chapter title lives above this

DISPLAY_FONT = "CaslonAntique"
SIZE_CHAPTER = 24.0        # and above: chapter titles / cover type
SIZE_SECTION = 18.0        # 20pt nominal — only the core rulebook uses this tier
SIZE_ENTRY = 15.0          # 16pt nominal
SIZE_FIELD = 11.5          # 12pt nominal

STAT_TOKENS = {
    "M", "WS", "BS", "S", "T", "W", "I", "A", "Ld", "Sv",
    "Points", "Pts", "Cost",
}

# A stat value: digits, dashes, dice expressions, saves, wound-linked markers.
STAT_VALUE = re.compile(r"^(?:[-*]|=?\d*[Dd]?\d*\+?|\d+[-/]\d+|=W)$")


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as fh:
        for chunk in iter(lambda: fh.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def span_role(span: dict) -> str:
    """Classify a span by font family and size."""
    # Whitespace carries no meaning from its font, and these books do set the
    # odd inter-word space in the display face. Classifying such a span as a
    # field label files it on the wrong side of a `LABEL: value` split and welds
    # the value's words together.
    if not span["text"].strip():
        return "space"
    font, size = span["font"], span["size"]
    if DISPLAY_FONT in font:
        if size >= SIZE_CHAPTER:
            return "chapter"
        if size >= SIZE_SECTION:
            return "section"
        if size >= SIZE_ENTRY:
            return "entry"
        if size >= SIZE_FIELD:
            return "field"
        return "display"
    if "Bold" in font:
        return "bold"
    if "Italic" in font:
        return "italic"
    if "Symbol" in font:
        return "symbol"
    return "body"


BASELINE_TOL = 2.0


def merged_lines(block: dict) -> list[dict]:
    """PyMuPDF splits a text line wherever there is a wide horizontal gap,
    which is precisely how a stat table is laid out — every cell becomes its
    own "line". Re-join lines that share a baseline so a stat row arrives as
    one record with all its cells."""
    raw = sorted(block["lines"], key=lambda l: (l["bbox"][3], l["bbox"][0]))
    groups: list[list[dict]] = []
    for line in raw:
        if groups and abs(line["bbox"][3] - groups[-1][-1]["bbox"][3]) <= BASELINE_TOL:
            groups[-1].append(line)
        else:
            groups.append([line])

    out = []
    for group in groups:
        spans = sorted(
            (s for line in group for s in line["spans"]),
            key=lambda s: s["bbox"][0],
        )
        # Re-joining spans across a horizontal gap has to restore the space the
        # gap stood for, or prose laid out in positioned columns welds together
        # ("direct damage" + "area spell" -> "damagearea"). Stat cells are
        # unaffected: an all-whitespace span strips to nothing and is skipped by
        # every structural parser below.
        joined: list[dict] = []
        for span in spans:
            if joined:
                prev = joined[-1]
                gap = span["bbox"][0] - prev["bbox"][2]
                if (gap > 0.8 and not prev["text"].endswith((" ", "\t"))
                        and not span["text"].startswith((" ", "\t"))):
                    joined.append({
                        **span, "text": " ", "font": "TimesNewRomanPSMT",
                    })
            joined.append(span)
        out.append(line_of(joined))
    return out


def line_of(spans: list[dict]) -> dict:
    """Collapse a PDF line into a role-annotated record."""
    kept = [s for s in spans if s["text"].strip()]
    text = "".join(s["text"] for s in spans)
    roles = [span_role(s) for s in kept]
    return {
        # `spans` drops whitespace so the structural parsers can index cells;
        # `flow` keeps it so inline runs retain their inter-word spacing.
        "spans": kept,
        "flow": spans,
        "text": re.sub(r"\s+", " ", text).strip(),
        "roles": roles,
        "role": max(set(roles), key=roles.count) if roles else "blank",
        "x0": min((s["bbox"][0] for s in kept), default=0.0),
        "y0": min((s["bbox"][1] for s in kept), default=0.0),
    }


def line_runs(line: dict) -> list[tuple[str, str]]:
    """Emphasis runs within a line, as (emphasis, text) pairs."""
    runs: list[tuple[str, str]] = []
    for span in line["flow"]:
        role = span_role(span)
        if role in ("bold", "italic"):
            emph = role
        elif role in ("field", "display"):
            # Display-face text without a colon is a rule or item name set as a
            # run-in heading, not a field label.
            emph = "label"
        else:
            emph = ""
        if runs and runs[-1][0] == emph:
            runs[-1] = (emph, runs[-1][1] + span["text"])
        else:
            runs.append((emph, span["text"]))
    return runs


def coalesce(runs: list[tuple[str, str]]) -> list[dict]:
    """Normalise whitespace and drop empty runs, merging neighbours that end up
    sharing an emphasis after the empties are removed."""
    out: list[dict] = []
    for emph, text in runs:
        text = re.sub(r"\s+", " ", text)
        if not text.strip():
            # Carry a whitespace-only run onto its predecessor rather than
            # dropping it, or two same-emphasis neighbours either side of it
            # weld together ("direct damage" + "area" -> "damagearea").
            if out and not out[-1]["text"].endswith(" "):
                out[-1]["text"] += " "
            continue
        if out and out[-1]["emph"] == emph:
            out[-1]["text"] += text
        else:
            out.append({"emph": emph, "text": text})
    # Whitespace belongs outside emphasis: "**Ancient: **" -> "**Ancient:** ".
    for k, run in enumerate(out):
        if not run["emph"]:
            continue
        body = run["text"].rstrip()
        trail = run["text"][len(body):]
        if trail and k + 1 < len(out):
            run["text"] = body
            out[k + 1]["text"] = trail + out[k + 1]["text"]
        body = run["text"].lstrip()
        lead = run["text"][:len(run["text"]) - len(body)]
        if lead and k:
            run["text"] = body
            out[k - 1]["text"] += lead

    out = [r for r in out if r["text"].strip() or r["text"] == " "]

    # Two separators can end up adjacent — a synthetic space closing a
    # positioned gap next to a real one from the source — and would render as a
    # visible double space.
    for k, run in enumerate(out):
        run["text"] = re.sub(r" {2,}", " ", run["text"])
        if k and out[k - 1]["text"].endswith(" ") and run["text"].startswith(" "):
            run["text"] = run["text"].lstrip()

    if out:
        out[0]["text"] = out[0]["text"].lstrip()
        out[-1]["text"] = out[-1]["text"].rstrip()
    return [r for r in out if r["text"]]


def is_furniture(line: dict) -> bool:
    # Blank lines are kept: the PDF uses them as paragraph separators, which is
    # more reliable than guessing paragraph breaks from vertical gaps.
    if line["role"] == "blank":
        return False
    if line["y0"] > FOOTER_Y and re.fullmatch(r"\d+", line["text"]):
        return True
    # The chapter title repeats as a running head on every page; the TOC is
    # the authority for chapter names, so drop it wherever it appears.
    if line["role"] == "chapter":
        return True
    return False


def block_column(bbox: tuple[float, ...]) -> str:
    x0, _, x1, _ = bbox
    if x0 < COL_SPLIT - 10 and x1 > COL_SPLIT + 10:
        return "full"
    return "left" if (x0 + x1) / 2 < COL_SPLIT else "right"


def ordered_blocks(blocks: list[dict]) -> list[dict]:
    """Reading order: full-width blocks split the page into bands, and inside
    each band the left column is read before the right."""
    ordered: list[dict] = []
    band: list[tuple[str, dict]] = []

    def flush() -> None:
        ordered.extend(b for k, b in band if k == "left")
        ordered.extend(b for k, b in band if k == "right")
        band.clear()

    for blk in sorted(blocks, key=lambda b: b["bbox"][1]):
        kind = block_column(blk["bbox"])
        if kind == "full":
            flush()
            ordered.append(blk)
        else:
            band.append((kind, blk))
    flush()
    return ordered


def stat_header(line: dict) -> list[tuple[float, str]] | None:
    """If this line is a stat-block header, return its (x_centre, token) anchors."""
    anchors = []
    for span in line["spans"]:
        token = span["text"].strip()
        if token in STAT_TOKENS:
            x0, _, x1, _ = span["bbox"]
            anchors.append(((x0 + x1) / 2, token))
    return anchors if len(anchors) >= 5 else None


def stat_row(line: dict, anchors: list[tuple[float, str]]) -> dict | None:
    """Snap a line's values onto the header anchors. Returns None if the line
    does not look like a stat row."""
    label_parts, values = [], []
    for span in line["spans"]:
        text = span["text"].strip()
        if not text:
            continue
        x0, _, x1, _ = span["bbox"]
        centre = (x0 + x1) / 2
        if centre < NAME_COL_LIMIT:
            label_parts.append(text)
        elif STAT_VALUE.match(text):
            nearest = min(anchors, key=lambda a: abs(a[0] - centre))
            if abs(nearest[0] - centre) <= 18:
                values.append((nearest[1], text))
        else:
            return None  # prose in the value area: not a stat row
    if len(values) < 4:
        return None
    return {"name": " ".join(label_parts).strip(), "values": dict(values)}


def field_label(line: dict) -> tuple[str, str] | None:
    """Split a `LABEL: value` line where the label is set in the display font.

    Reads `flow` rather than `spans`: the value's inter-word spacing is carried by
    whitespace-only spans, which `spans` discards, welding words together
    ("Inspiring Presence (6),Natural Armour").
    """
    labels, rest = [], []
    for span in line["flow"]:
        text = span["text"]
        if span_role(span) == "field":
            labels.append(text)
        else:
            rest.append(text)
    label = "".join(labels).strip()
    if not label.endswith(":"):
        return None
    return label.rstrip(":").strip(), re.sub(r"\s+", " ", "".join(rest)).strip()


BULLET = "•"
# A field value that wraps onto the next line ends mid-clause.
UNFINISHED = re.compile(r"(?:[,;/]|\b(?:or|and|the|a|of|to|with)) *$", re.IGNORECASE)
# Sub-item hyphen. The uppercase lookahead keeps negative modifiers intact:
# "suffer -1 Initiative" must not split, "following: -Giant blowpipes" must.
SUB_ITEM = re.compile(r"(?<=\S)\s+-\s*(?=[A-Z])")
# Magic items and upgrades set their cost flush right on the name's baseline.
COST = re.compile(r"^\s*\d+\s*points?\s*$", re.IGNORECASE)
# The cost is often set in the same display face as the name, so the two arrive
# as one run and have to be separated again.
COST_TAIL = re.compile(r"^(.*?)[\s.]+(\d+\s*points?)$", re.IGNORECASE | re.DOTALL)
# A name only counts as continuing onto the next line if it breaks after a word
# that cannot end a name. Gluing two real items together would make one of them
# vanish, whereas leaving a name split merely renders it on two lines, so the
# test is deliberately conservative.
DANGLING = re.compile(
    r"\b(?:of|the|and|or|a|an|in|to|with|from|for|on|at|by)$", re.IGNORECASE)


def name_cost(line: dict) -> dict | None:
    """A run-in heading: a display-face name, optionally with its points cost
    set to the right on the same baseline."""
    parts = coalesce(line_runs(line))
    if not parts or parts[0]["emph"] != "label":
        return None
    if len(parts) == 1:
        tail = COST_TAIL.match(parts[0]["text"].strip())
        if tail:
            return {
                "type": "namecost",
                "name": tail.group(1).strip(),
                "cost": tail.group(2).strip(),
            }
        return {"type": "namecost", "name": parts[0]["text"].strip(), "cost": ""}
    if len(parts) == 2 and COST.match(parts[1]["text"]):
        return {
            "type": "namecost",
            "name": parts[0]["text"].strip(),
            "cost": parts[1]["text"].strip(),
        }
    return None


def mini_header(line: dict) -> list[tuple[float, str]] | None:
    """Weapon and war-machine profiles are small tables headed by two or more
    bold `Label:` cells (Range: / Strength: / Special Rules:)."""
    anchors = []
    for span in line["spans"]:
        text = span["text"].strip()
        if text.endswith(":") and len(text) <= 20 and span_role(span) == "bold":
            anchors.append((span["bbox"][0], text.rstrip(":")))
    return anchors if len(anchors) >= 2 else None


def mini_row(line: dict, anchors: list[tuple[float, str]]) -> dict:
    """Snap a value line onto mini-table anchors by left edge — these columns
    hold prose, so they are left-aligned rather than centred."""
    cells: dict[str, list[str]] = {name: [] for _, name in anchors}
    for span in line["spans"]:
        text = span["text"].strip()
        if not text:
            continue
        nearest = min(anchors, key=lambda a: abs(a[0] - span["bbox"][0]))
        cells[nearest[1]].append(text)
    return {name: " ".join(parts).strip() for name, parts in cells.items()}


def split_runs(parts: list[dict], pattern: str) -> list[list[dict]]:
    """Split a run list on a separator, keeping each piece's emphasis.

    The separator is matched against the flattened text and mapped back onto
    the runs, because a separator routinely straddles a run boundary — WAP sets
    the sub-item hyphen in bold while its text stays roman.
    """
    text = "".join(p["text"] for p in parts)
    extent: list[tuple[int, int, str]] = []
    pos = 0
    for part in parts:
        extent.append((pos, pos + len(part["text"]), part["emph"]))
        pos += len(part["text"])

    segments: list[tuple[int, int]] = []
    last = 0
    for match in re.finditer(pattern, text):
        segments.append((last, match.start()))
        last = match.end()
    segments.append((last, len(text)))

    groups = []
    for start, end in segments:
        runs = [
            (emph, text[max(start, s):min(end, e)])
            for s, e, emph in extent
            if max(start, s) < min(end, e)
        ]
        groups.append(coalesce(runs))
    return groups


def bullet_items(parts: list[dict]) -> tuple[list[dict], list[dict]] | None:
    """Split a run-on paragraph into bullet items, promoting ` - ` runs to
    sub-items. Spaced hyphens are safe to split on; WAP writes compound words
    and dice ranges unspaced (Cold-blooded, 9/18", 10-30)."""
    if not any(BULLET in p["text"] for p in parts):
        return None
    groups = split_runs(parts, re.escape(BULLET))
    items = []
    for group in groups[1:]:
        if not group:
            continue
        pieces = split_runs(group, SUB_ITEM)
        items.append({
            "runs": pieces[0],
            "text": plain(pieces[0]),
            "sub": [{"runs": p, "text": plain(p)} for p in pieces[1:] if p],
        })
    if not items:
        return None
    return groups[0], items


def plain(runs: list[dict]) -> str:
    return "".join(r["text"] for r in runs).strip()


def parse_lines(lines: list[dict]) -> list[dict]:
    """Turn a run of classified lines into content blocks."""
    out: list[dict] = []
    i = 0
    while i < len(lines):
        line = lines[i]

        if line["role"] == "chart":
            out.append({"type": "chart", "rows": line["chart"]})
            i += 1
            continue

        if line["role"] == "figure":
            out.append({"type": "figure", **line["figure"]})
            i += 1
            continue

        anchors = stat_header(line)
        if anchors:
            rows = []
            j = i + 1
            while j < len(lines):
                row = stat_row(lines[j], anchors)
                if row is None:
                    break
                rows.append(row)
                j += 1
            if rows:
                label = " ".join(
                    s["text"].strip() for s in line["spans"]
                    if (s["bbox"][0] + s["bbox"][2]) / 2 < NAME_COL_LIMIT
                ).strip()
                out.append({
                    "type": "statblock",
                    "label": label or "Profile",
                    "columns": [tok for _, tok in anchors],
                    "rows": rows,
                })
                i = j
                continue

        mini = mini_header(line)
        if mini and i + 1 < len(lines):
            row = mini_row(lines[i + 1], mini)
            last = mini[-1][1]
            j = i + 2
            # The final column carries prose and routinely wraps. Absorb the
            # continuation rather than leaving it stranded under the table.
            while (j < len(lines)
                   and lines[j]["role"] in ("body", "bold", "italic")
                   and not lines[j]["text"].startswith(BULLET)
                   and lines[j]["x0"] >= mini[-1][0] - 8
                   and not stat_header(lines[j]) and not field_label(lines[j])
                   and not mini_header(lines[j]) and not name_cost(lines[j])):
                row[last] = f"{row[last]} {lines[j]['text']}".strip()
                j += 1
            out.append({
                "type": "minitable",
                "columns": [name for _, name in mini],
                "row": row,
            })
            i = j
            continue

        field = field_label(line)
        if field:
            label, value = field
            # Absorb wrapped continuation lines onto the field value.
            j = i + 1
            while (value and UNFINISHED.search(value) and j < len(lines)
                   and lines[j]["role"] in ("body", "bold", "italic")
                   and not lines[j]["text"].startswith(BULLET)
                   and not stat_header(lines[j]) and not field_label(lines[j])
                   and not mini_header(lines[j])):
                value = f"{value} {lines[j]['text']}".strip()
                j += 1
            out.append({"type": "field", "label": label, "value": value})
            i = j
            continue

        if line["role"] in ("section", "entry"):
            out.append({
                "type": "entry", "name": line["text"], "band": line["role"],
            })
            i += 1
            continue

        if line["role"] == "blank":
            i += 1
            continue

        head = name_cost(line)
        if head:
            # A cost that fell onto its own baseline belongs to the name above.
            if (not head["cost"] and COST.match(head["name"])
                    and out and out[-1]["type"] == "namecost"
                    and not out[-1]["cost"]):
                out[-1]["cost"] = head["name"].strip()
                i += 1
                continue
            # A name too long for its column wraps onto the next line, which
            # carries the cost. Requiring both a cost on that next line and a
            # dangling function word here keeps genuinely separate entries
            # apart — the source contains at least one orphaned heading with no
            # description, and merging it would swallow the item that follows.
            if (not head["cost"] and i + 1 < len(lines)
                    and DANGLING.search(head["name"])):
                nxt = name_cost(lines[i + 1])
                if nxt and nxt["cost"]:
                    head["name"] = f"{head['name']} {nxt['name']}".strip()
                    head["cost"] = nxt["cost"]
                    out.append(head)
                    i += 2
                    continue
            out.append(head)
            i += 1
            continue

        # Accumulate lines up to the next blank line or structural element.
        # Emphasis is tracked per run so bold run-in rule names survive inside
        # the surrounding prose.
        runs = line_runs(line)
        j = i + 1
        while j < len(lines):
            nxt = lines[j]
            if nxt["role"] not in ("body", "bold", "italic", "symbol"):
                break
            if stat_header(nxt) or field_label(nxt) or mini_header(nxt):
                break
            runs.append(("", " "))
            runs.extend(line_runs(nxt))
            j += 1
        i = j

        parts = coalesce(runs)
        if not parts:
            continue

        bullets = bullet_items(parts)
        if bullets:
            lead, items = bullets
            if lead:
                out.append({"type": "para", "runs": lead, "text": plain(lead)})
            out.append({"type": "list", "items": items})
        else:
            style = "italic" if all(p["emph"] == "italic" for p in parts) else "body"
            out.append({
                "type": "para", "style": style,
                "runs": parts, "text": plain(parts),
            })
    return out


def page_charts(page: pymupdf.Page) -> list[dict]:
    """Ruled tables on the page.

    The core rulebook draws its charts — to-hit, to-wound, armour saves — as
    genuinely bordered tables, so they can be read directly instead of being
    reconstructed from x-coordinates the way the army books' stat lines are.
    Without this the rows arrive as display-font lines and get mistaken for
    run-in headings, which preserves the numbers but destroys the grid.
    """
    charts = []
    for table in page.find_tables().tables:
        if table.row_count < 2 or table.col_count < 2:
            continue  # single-row boxes are diagram captions, not charts
        rows = [[(cell or "").strip() for cell in row] for row in table.extract()]
        if not any(any(c for c in row) for row in rows):
            continue
        charts.append({"bbox": tuple(table.bbox), "rows": rows})
    return charts


def chart_at(line: dict, charts: list[dict]) -> int | None:
    """Index of the chart whose area this line falls inside, if any."""
    for i, chart in enumerate(charts):
        x0, y0, x1, y1 = chart["bbox"]
        cy = line["y0"]
        if y0 - 2 <= cy <= y1 + 2 and x0 - 4 <= line["x0"] <= x1 + 4:
            return i
    return None


def chart_line(chart: dict) -> dict:
    """A stand-in line so the chart keeps its place in the reading order."""
    return {
        "spans": [], "flow": [], "text": "", "roles": [], "role": "chart",
        "x0": chart["bbox"][0], "y0": chart["bbox"][1], "chart": chart["rows"],
    }


# Marks a synthetic block in the reading-order stream. PyMuPDF uses 0 for text
# and 1 for images, so this cannot collide.
FIGURE_BLOCK = 9
SOURCE_MARGIN = 56.6       # the books' own left margin, in points


def page_figures(page: pymupdf.Page, images: dict[int, dict]) -> list[dict]:
    """Non-background images as pseudo-blocks, so that the same banding which
    orders the text also decides where each diagram belongs.

    Widths are recorded as a fraction of the source's text measure rather than in
    points: the rendered books use different margins, and a diagram should keep
    its proportion of the column rather than its absolute size.
    """
    pw, ph = page.rect.width, page.rect.height
    measure = pw - 2 * SOURCE_MARGIN
    out = []
    for info in page.get_image_info(xrefs=True):
        x0, y0, x1, y1 = info["bbox"]
        if (x1 - x0) > 0.92 * pw and (y1 - y0) > 0.92 * ph:
            continue
        record = images.get(info.get("xref", 0))
        if not record:
            continue
        out.append({
            "type": FIGURE_BLOCK,
            "bbox": (x0, y0, x1, y1),
            "file": record["file"],
            "fraction": round(min(1.0, (x1 - x0) / measure), 3),
        })
    return out


def figure_line(blk: dict) -> dict:
    """A stand-in line so the diagram keeps its place in the reading order."""
    return {
        "spans": [], "flow": [], "text": "", "roles": [], "role": "figure",
        "x0": blk["bbox"][0], "y0": blk["bbox"][1],
        "figure": {"file": blk["file"], "fraction": blk["fraction"]},
    }


def extract_images(doc: pymupdf.Document, outdir: Path) -> dict[int, dict]:
    """Save each distinct image once. Full-page images are flagged as page
    furniture (the parchment backgrounds) rather than content."""
    outdir.mkdir(parents=True, exist_ok=True)
    seen: dict[int, dict] = {}
    for pno, page in enumerate(doc, start=1):
        pw, ph = page.rect.width, page.rect.height
        for info in page.get_image_info(xrefs=True):
            xref = info.get("xref", 0)
            if not xref or xref in seen:
                continue
            x0, y0, x1, y1 = info["bbox"]
            covers_page = (x1 - x0) > 0.92 * pw and (y1 - y0) > 0.92 * ph
            # Take the embedded bytes as they are rather than re-encoding via a
            # pixmap: these are already JPEG or PNG, and round-tripping them
            # through lossless PNG inflated one book from 5 MB to 38 MB.
            try:
                raw = doc.extract_image(xref)
            except Exception as exc:             # noqa: BLE001 - report and skip
                print(f"  ! image xref {xref} failed: {exc}")
                continue
            ext = (raw.get("ext") or "png").lower()
            name = f"img-{xref:04d}.{'jpg' if ext == 'jpeg' else ext}"
            (outdir / name).write_bytes(raw["image"])
            seen[xref] = {
                "file": name,
                "first_page": pno,
                "background": covers_page,
                "width": raw.get("width", 0),
                "height": raw.get("height", 0),
            }
    return seen


def build(pdf: Path, outdir: Path, slug: str) -> dict:
    doc = pymupdf.open(pdf)
    toc = doc.get_toc()

    chapter_start = {pg: title for lvl, title, pg in toc if lvl == 1}
    entry_names = defaultdict(list)
    for lvl, title, pg in toc:
        if lvl == 2:
            entry_names[pg].append(title)

    # Images are named by PDF xref, and the books reuse the same xrefs — the
    # cover is number 24 in nearly all of them — so each book needs its own
    # directory or they overwrite one another.
    images = extract_images(doc, outdir / "images" / slug)
    content_pages = {}

    for pno, page in enumerate(doc, start=1):
        charts = page_charts(page)
        emitted = [False] * len(charts)
        blocks = [b for b in page.get_text("dict")["blocks"] if b["type"] == 0]
        blocks += page_figures(page, images)
        lines: list[dict] = []
        for blk in ordered_blocks(blocks):
            if blk.get("type") == FIGURE_BLOCK:
                lines.append(figure_line(blk))
                continue
            for line in merged_lines(blk):
                if is_furniture(line):
                    continue
                hit = chart_at(line, charts)
                if hit is None:
                    lines.append(line)
                    continue
                # Replace the chart's own lines with one marker at the position
                # of the first, so the grid lands where the text expected it.
                if not emitted[hit]:
                    emitted[hit] = True
                    lines.append(chart_line(charts[hit]))
        content_pages[pno] = parse_lines(lines)

    # Fold pages into chapters, and chapters into named entries.
    chapters: list[dict] = []
    current: dict | None = None
    front_matter: list[int] = []
    for pno in sorted(content_pages):
        if pno in chapter_start:
            current = {"title": chapter_start[pno], "page": pno, "entries": []}
            chapters.append(current)
        if current is None:
            # Cover and the book's own contents page. Deliberately dropped: the
            # rendered book generates its own outline from the headings.
            front_matter.append(pno)
            continue
        for block in content_pages[pno]:
            if block["type"] == "entry":
                current["entries"].append({
                    "name": block["name"], "page": pno,
                    "band": block.get("band", "entry"), "blocks": [],
                })
            elif current["entries"]:
                current["entries"][-1]["blocks"].append(block)
            else:
                current.setdefault("intro", []).append(block)

    # Heading depth is normalised per book rather than fixed to a font size. The
    # army books use one tier below the chapter, so that tier is level 2; the
    # core rulebook uses two, so its larger tier takes level 2 and the smaller
    # drops to level 3.
    bands = {e["band"] for ch in chapters for e in ch["entries"]}
    tiered = "section" in bands
    for chapter in chapters:
        for entry in chapter["entries"]:
            entry["level"] = 2 if (not tiered or entry["band"] == "section") else 3

    # Every book opens with one illustration over the parchment; that is the
    # cover, and the full-page image is the parchment itself.
    cover = next((v["file"] for v in images.values()
                  if not v["background"] and v["first_page"] == 1), None)
    background = next((v["file"] for v in images.values() if v["background"]), None)

    return {
        "source": {
            "file": pdf.name,
            "pages": doc.page_count,
            "sha256": sha256(pdf),
            "toc_entries": len(toc),
        },
        "slug": slug,
        "image_dir": f"images/{slug}",
        "cover": cover,
        "background": background,
        "images": {str(k): v for k, v in images.items()},
        "front_matter_pages": front_matter,
        "chapters": chapters,
    }


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("pdf", type=Path)
    ap.add_argument("-o", "--outdir", type=Path, default=Path("build"))
    ap.add_argument("--slug", help="output name; defaults to the PDF stem")
    args = ap.parse_args()

    slug = args.slug or args.pdf.stem.replace(" ", "-").lower()
    args.outdir.mkdir(parents=True, exist_ok=True)
    data = build(args.pdf, args.outdir, slug)

    target = args.outdir / f"{slug}.json"
    target.write_text(json.dumps(data, indent=2, ensure_ascii=False), encoding="utf-8")

    stats = sum(
        1 for ch in data["chapters"] for e in ch["entries"]
        for b in e["blocks"] if b["type"] == "statblock"
    )
    fields = sum(
        1 for ch in data["chapters"] for e in ch["entries"]
        for b in e["blocks"] if b["type"] == "field"
    )
    entries = sum(len(ch["entries"]) for ch in data["chapters"])
    print(f"wrote {target}")
    print(f"  chapters={len(data['chapters'])} entries={entries} "
          f"statblocks={stats} fields={fields} images={len(data['images'])}")


if __name__ == "__main__":
    main()
