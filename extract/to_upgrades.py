"""One-off migration: rewrite a faction-upgrade chapter - Virtues, Gifts,
Honours, Knightly Orders, runes - from a run of #namecost calls and prose into
one #upgrade-chapter of #upgrade records, with #group for the heads that stand
inside it.

Unlike to_records.py this changes the layout: the records take RECORD_GAP, the
chapter its level columns, the sub-heads stop being page-breaking entries. So
the check is roundtrip.py against the source PDF, not a byte-compare.

    python extract/to_upgrades.py            # every chapter it knows
    python extract/to_upgrades.py bretonnia  # one book
"""
import io
import re
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8")

# Keyed by the book's path under src/, so a version of a book can name its own
# chapters: the 1.x line calls the Beastmen's chapter GIFTS OF CHAOS where 3.0
# calls it MUTATIONS & TRAITS, and only the Empire's house edition carries both
# KNIGHTLY ORDERS and THE CULT OF ULRIC.
CHAPTERS = {
    "beastmen/1.7": ["GIFTS OF CHAOS"],
    "beastmen/3.0": ["MUTATIONS & TRAITS"],
    "beastmen/3.0-house": ["MUTATIONS & TRAITS"],
    "bretonnia/1.6": ["VIRTUES OF THE CHIVALRIC KNIGHT"],
    "bretonnia/3.0": ["VIRTUES OF THE CHIVALRIC KNIGHT"],
    "daemons-of-chaos/1.71": ["DAEMONIC GIFTS"],
    "daemons-of-chaos/3.0": ["DAEMONIC GIFTS"],
    "daemons-of-chaos/3.0-house": ["DAEMONIC GIFTS"],
    "dark-elves/1.71": ["GIFTS OF KHAINE"],
    "dark-elves/3.1": ["GIFTS OF KHAINE"],
    "dogs-of-war/3.1": ["QUIRKS OF CHARACTER"],
    "dwarfs/1.6": ["RUNIC ITEMS"],
    "dwarfs/3.11": ["RUNIC ITEMS"],
    "dwarfs/3.11-house": ["RUNIC ITEMS"],
    "empire/1.6": ["KNIGHTLY ORDERS"],
    "empire/3.1": ["KNIGHTLY ORDERS", "THE CULT OF ULRIC"],
    "empire/3.1-house": ["KNIGHTLY ORDERS", "THE CULT OF ULRIC"],
    "high-elves/1.6": ["ELVEN HONOURS"],
    "high-elves/3.1": ["ELVEN HONOURS"],
    "lizardmen/1.6": ["BLESSED SPAWNINGS", "DISCIPLINES OF THE OLD ONES"],
    "lizardmen/1.61": ["BLESSED SPAWNINGS", "DISCIPLINES OF THE OLD ONES"],
    "lizardmen/1.62": ["BLESSED SPAWNINGS", "DISCIPLINES OF THE OLD ONES"],
    "lizardmen/1.63": ["BLESSED SPAWNINGS", "DISCIPLINES OF THE OLD ONES"],
    "lizardmen/1.64": ["BLESSED SPAWNINGS", "DISCIPLINES OF THE OLD ONES"],
    "lizardmen/3.0": ["BLESSED SPAWNINGS", "DISCIPLINES OF THE OLD ONES"],
    "lizardmen/3.0-house": ["BLESSED SPAWNINGS", "DISCIPLINES OF THE OLD ONES"],
    "nippon/3.0": ["CLAN MON"],
    "norsca/3.0": ["SAGAS"],
    "ogre-kingdoms/1.6": ["BIG NAMES OF THE OGRES"],
    "ogre-kingdoms/3.1": ["BIG NAMES OF THE OGRES"],
    "ordo-draconis/2026.1": ["VAMPIRIC POWERS"],
    "skaven/1.9": ["SKAVEN WARGEAR"],
    "tyranids/1.0": ["BIOMORPHS", "HIVE FLEETS"],
    "vampire-counts/1.71": ["VAMPIRIC POWERS"],
    "vampire-counts/3.0": ["VAMPIRIC POWERS"],
    "warriors-of-chaos/1.6": ["MUTATIONS & POWERS"],
    "warriors-of-chaos/3.0": ["GIFTS OF THE GODS"],
    "wood-elves/1.61": ["FOREST SPITES"],
    "wood-elves/3.1": ["FOREST SPITES"],
    "zombie-pirates/3.0": ["VAMPIRIC POWERS"],
}

STR = r'"((?:[^"\\]|\\.)*)"'
NAMECOST = re.compile(r'^#namecost\(%s, %s\)$' % (STR, STR))
ENTRY = re.compile(r'^#entry\(%s\)$' % STR)
NOTE = re.compile(r'^#note\[(.*)\]$')
POINTS = re.compile(r'^(\d+) points$')
TIERED = re.compile(r'^(.*?) ((?:\d+/)+\d+) points$')
# "Characters free", "Cavalry/Infantry 1 point per model"
PRICE_LINE = re.compile(r'^(.+?) (free|[0-9.]+ points? per model)$')
ONE_USE = re.compile(r'^One use only\. ')
BOUND = re.compile(r'^Bound Spell \(Level (\d), cast on (\d+\+)\)\. ')
ONLY = re.compile(r'^([A-Z][^.]{0,70}?) only\. ')

STOP = ("#namecost(", "#entry(", "#balanced-columns[", "]")

# Column wrappers the chapter opens around a run of its own records. The 1.x
# books use `#columns(2)[` where the 3.x books use `#balanced-columns[`, and a
# wrapper the parser does not recognise is a bracket it opens and never closes:
# Dwarfs 1.6 compiled to "unclosed delimiter" with the `]` stranded mid-chapter.
# `upgrade-chapter` sets the columns itself, so both simply go.
WRAPPERS = ("#balanced-columns[", "#columns(")


def section_bounds(lines, title):
    start = lines.index("= " + title)
    end = next(i for i in range(start + 1, len(lines))
               if lines[i].startswith("= ")
               or lines[i].startswith("#magic-item-chapter")
               or lines[i].startswith("#upgrade-chapter("))
    return start, end


def strip_wrappers(body):
    """Drop the chapter's column wrappers, opener and matching close alike.

    A wrapper left half-removed is worse than one left alone: the `]` that
    closed it is then stranded in the middle of the chapter and the book stops
    compiling. The close is found by counting, not assumed to be the next one.
    """
    out, depth, inside = [], 0, False
    for line in body:
        if not inside and line.startswith(WRAPPERS):
            inside, depth = True, 0
            continue
        if inside:
            if line.strip() == "]" and depth == 0:
                inside = False
                continue
            depth += line.count("[") - line.count("]")
        out.append(line)
    return out


def take_paragraphs(lines, i):
    """Body lines from i until the next record, head or wrapper. Returns
    (paragraphs, next_i)."""
    paras, cur = [], []
    while i < len(lines):
        l = lines[i]
        if l.startswith(STOP):
            break
        if l == "":
            if cur:
                paras.append("\n".join(cur))
                cur = []
        else:
            cur.append(l)
        i += 1
    if cur:
        paras.append("\n".join(cur))
    return paras, i


def parse(lines, problems, where):
    """The chapter body as a list of items:
    ('prose', text) | ('group', name, note) | ('upgrade', name, cost, paras)
    where cost is None, an int, a tuple of ints, or a list of (who, price)."""
    items = []
    i = 0
    while i < len(lines):
        l = lines[i]
        if l == "" or l == "#balanced-columns[" or l == "]":
            i += 1
            continue
        m = ENTRY.match(l)
        if m:
            i += 1
            note = None
            if i < len(lines) and NOTE.match(lines[i]):
                note = NOTE.match(lines[i]).group(1)
                i += 1
            items.append(("group", m.group(1), note))
            continue
        m = NAMECOST.match(l)
        if m:
            name, cost = m.groups()
            i += 1
            if cost == "":
                t = TIERED.match(name)
                nxt = lines[i] if i < len(lines) else ""
                j = i
                while j < len(lines) and lines[j] == "":
                    j += 1
                after_blank = lines[j] if j < len(lines) else ""
                if t:
                    name = t.group(1)
                    cost = tuple(int(x) for x in t.group(2).split("/"))
                elif NOTE.match(after_blank):
                    items.append(("group", name,
                                  NOTE.match(after_blank).group(1)))
                    i = j + 1
                    continue
                elif NAMECOST.match(nxt):
                    n2, c2 = NAMECOST.match(nxt).groups()
                    if n2 == "Characters" or PRICE_LINE.match(n2):
                        cost = []
                        while i < len(lines) and NAMECOST.match(lines[i]):
                            n2, c2 = NAMECOST.match(lines[i]).groups()
                            if c2 != "":
                                cost.append((n2, c2))
                            else:
                                pl = PRICE_LINE.match(n2)
                                if not pl:
                                    break
                                cost.append((pl.group(1), pl.group(2)))
                            i += 1
                    else:
                        # A name the importer wrapped over two calls.
                        name = name + " " + n2
                        cost = c2
                        i += 1
                        problems.append("%s: joined wrapped name %r"
                                        % (where, name))
                else:
                    cost = None
            if isinstance(cost, str):
                pm = POINTS.match(cost)
                if not pm:
                    problems.append("%s: %s: cost %r not understood"
                                    % (where, name, cost))
                    cost = None
                else:
                    cost = int(pm.group(1))
            paras, i = take_paragraphs(lines, i)
            if not paras:
                problems.append("%s: %s: no rules text" % (where, name))
            items.append(("upgrade", name, cost, paras))
            continue
        if l.startswith("#note["):
            problems.append("%s: stray note at %r" % (where, l[:60]))
        paras, i = take_paragraphs(lines, i)
        for p in paras:
            items.append(("prose", p))
    return items


def qualifiers(paras):
    """Strip the qualifier sentences off the first paragraph. Returns
    (only, bound, one_use, paras)."""
    if not paras:
        return None, None, False, paras
    first = paras[0]
    only = bound = None
    one_use = False
    while True:
        m = ONE_USE.match(first)
        if m and not one_use:
            one_use = True
            first = first[m.end():]
            continue
        m = BOUND.match(first)
        if m and bound is None:
            bound = (int(m.group(1)), m.group(2))
            first = first[m.end():]
            continue
        m = ONLY.match(first)
        if m and only is None:
            only = m.group(1)
            first = first[m.end():]
            continue
        break
    return only, bound, one_use, [first] + paras[1:]


def lit(s):
    return '"%s"' % s


def emit_cost(cost):
    if cost is None:
        return "none"
    if isinstance(cost, int):
        return str(cost)
    # A one-element array needs its trailing comma, or Typst reads the
    # parentheses as grouping and the pair inside as the array itself.
    if isinstance(cost, tuple):
        items = [str(c) for c in cost]
    else:
        items = ["(%s, %s)" % (lit(w), lit(p)) for w, p in cost]
    return "(%s%s)" % (", ".join(items), "," if len(items) == 1 else "")


def emit_body(paras):
    if len(paras) == 1 and "\n" not in paras[0]:
        return "[%s]" % paras[0]
    return "[%s\n]" % "\n\n".join(paras)


def emit(title, items, seen):
    out = []
    intro = None
    if items and items[0][0] == "prose":
        p = items[0][1]
        if p.startswith("*") and p.endswith("*") and "\n" not in p:
            intro = p
            items = items[1:]
    head = "#upgrade-chapter(%s" % lit(title)
    if intro is not None:
        head += ", intro: [%s]" % intro
    out.append(head + ")[")
    for it in items:
        if it[0] == "prose":
            out.append(it[1])
        elif it[0] == "group":
            _, name, note = it
            if note is None:
                out.append("#group(%s)" % lit(name))
            else:
                out.append("#group(%s, note: [%s])" % (lit(name), note))
        else:
            _, name, cost, paras = it
            only, bound, one_use, paras = qualifiers(paras)
            if only:
                seen["only"].add(only)
            args = [lit(name), emit_cost(cost)]
            if only is not None:
                args.append("only: %s" % lit(only))
            if bound is not None:
                args.append('bound: (level: %d, cast: "%s")' % bound)
            if one_use:
                args.append("one-use: true")
            out.append("#upgrade(%s)%s" % (", ".join(args), emit_body(paras)))
        out.append("")
    out[-1] = "]"
    return out


def convert(slug, problems, seen):
    path = "src/%s.typ" % slug
    lines = open(path, encoding="utf-8").read().split("\n")
    total = 0
    for title in reversed(CHAPTERS[slug]):
        # A chapter already converted has no `= TITLE` heading left - it prints
        # its own from upgrade-chapter - so it is done, not missing.
        if ("= " + title) not in lines:
            print("%-18s %-32s already records" % (slug, title))
            continue
        start, end = section_bounds(lines, title)
        body = strip_wrappers(lines[start + 1:end])
        while body and body[-1] == "":
            body.pop()
        items = parse(body, problems, "%s/%s" % (slug, title))
        n = sum(1 for it in items if it[0] == "upgrade")
        g = sum(1 for it in items if it[0] == "group")
        print("%-18s %-32s %3d records %2d groups" % (slug, title, n, g))
        total += n
        lines[start:end] = emit(title, items, seen) + [""]
    open(path, "w", encoding="utf-8", newline="\n").write("\n".join(lines))
    return total


def main(argv):
    slugs = argv or list(CHAPTERS)
    problems = []
    seen = {"only": set()}
    total = 0
    for slug in slugs:
        total += convert(slug, problems, seen)
    print("%d records" % total)
    for p in problems:
        print("  !", p)
    print("only: values:")
    for o in sorted(seen["only"]):
        print("   ", o)


if __name__ == "__main__":
    main(sys.argv[1:])
