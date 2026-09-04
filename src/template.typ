// Typesetting for a Warhammer Armies Project army book.
//
// Everything the generator emits arrives as Typst *strings*, never markup, so
// no source text can be reinterpreted as syntax. That is why the run helpers
// below take dictionaries rather than content blocks.

#let ink = rgb(38, 28, 18)
#let muted = rgb(104, 88, 66)
#let hair = rgb(126, 108, 84)
#let tint = rgb(126, 108, 84, 42)
#let stripe = rgb(255, 255, 255, 26)

#let body-font = "Libertinus Serif"

// --- inline text ------------------------------------------------------------

#let runs(rs) = rs.map(r => {
  if r.emph == "bold" { strong(r.text) } else if r.emph == "italic" {
    emph(r.text)
  } else if r.emph == "label" {
    // A rule or item name set as a run-in heading in the display face.
    text(weight: "bold", tracking: 0.04em, r.text)
  } else { r.text }
}).join()

// A rule or item name set as a run-in heading in the display face, inline in
// running text. The twin of the `label` run kind for hand-written books.
#let runin(body) = text(weight: "bold", tracking: 0.04em, body)

// A named entry with its points cost set flush right — magic items, upgrades,
// spells. The cost is optional; several entries carry only a name.
// `sticky` keeps the name with the rules text that follows, so a heading is
// never stranded at the foot of a column.
#let namecost(name, cost) = block(above: 0.9em, below: 0.2em, sticky: true, {
  // Justification would stretch a two-word name across the whole column, so it
  // is switched off here and the name column sized to its content.
  set par(justify: false)
  grid(
    // The name takes the slack and wraps; the cost stays intact on one line.
    columns: (1fr, auto),
    align: (left + bottom, right + bottom),
    column-gutter: 0.6em,
    text(weight: "bold", size: 11pt, tracking: 0.04em, hyphenate: false)[
      #upper(name)
    ],
    if cost != "" { text(size: 9.5pt, style: "italic", cost) } else { none },
  )
})

// A spell heading: its name, its casting value set flush right where an item's
// cost would sit, and its level on the line beneath. The source sets these as a
// name and a subordinate line ("BREATH OF MORK" / "Level 2 Cast on 7+"), which
// extraction could only render as two `namecost` calls, the second carrying the
// level and cast as though they were an unpriced item name.
//
// Deliberately not a heading. `emit.py` counts level-2 headings as the book's
// entries, so setting one here would fold every spell in the corpus into a
// tally the site presents as unit entries.
//
// Header only, with the rules text flowing after it, like `namecost` and
// `entry` - a spell is a sequence, not a record, and its body is often several
// paragraphs and a chart.
#let spell(name, level, cast: none) = {
  [#metadata((kind: "spell", name: name, level: level, cast: cast))<meta>]
  block(above: 0.9em, below: 0.3em, sticky: true, {
    // As in `namecost`: justification would stretch a short name across the
    // column, and the name column is sized to its content.
    set par(justify: false)
    grid(
      columns: (1fr, auto),
      align: (left + bottom, right + bottom),
      column-gutter: 0.6em,
      text(weight: "bold", size: 11pt, tracking: 0.04em, hyphenate: false)[
        #upper(name)
      ],
      if cast != none { text(size: 9.5pt, style: "italic")[Cast on #cast] } else { none },
    )
    block(above: 0.35em, below: 0em,
      text(size: 9pt, weight: "bold", tracking: 0.06em, fill: muted)[#upper(level)])
  })
}

#let para(rs, style: "body") = {
  if style == "italic" {
    // Flavour text: inset and a shade smaller than the rules body.
    block(
      above: 0.9em, below: 0.9em,
      inset: (left: 1.1em, right: 1.1em),
      text(size: 10pt, runs(rs)),
    )
  } else {
    block(runs(rs))
  }
}

// No block wrapper of its own: the spacing lives in a `show list` rule in
// `book()` instead, so a hand-written `- item` and a generated one sit
// identically. The rule is set on the list element rather than wrapping it, so
// a nested list does not gain a second helping.
#let items(its) = list(
  ..its.map(it => {
    runs(it.runs)
    if it.sub.len() > 0 { list(..it.sub.map(s => runs(s))) }
  }),
)

// --- option lists -----------------------------------------------------------

// An option line: description left, cost flush right, dotted leader between, as
// the source sets them. Extraction can only run the two together as one
// sentence ("May take a shield +5 points"), which loses the cost as a value.
//
// Built as a grid rather than one paragraph, for the same reason `namecost` is.
// `box(width: 1fr)` swells to take the slack on the line, which is what pushes
// the cost right and lets `repeat` tile the dots into it - but in a single
// paragraph a cost that does not fit the last line wraps onto its own, flush
// left, with the leader left as a stub. Giving the cost its own column keeps it
// bottom-right of the description however many lines that runs to. It reserves
// its width on every line, so a long description wraps a line earlier; a price
// stranded on the wrong side of the column is the worse of the two.
#let _dotline(desc, cost) = {
  set par(justify: false)
  grid(
    columns: (1fr, auto),
    align: (left + bottom, right + bottom),
    column-gutter: 0.6em,
    [#desc#box(width: 1fr, inset: (x: 2pt), repeat([.], gap: 2.6pt))],
    cost,
  )
}

// `opt` and `optgroup` render nothing - they return tagged dictionaries that
// `options` renders. The indirection is Typst's: a bullet list has to be built
// in one `list(..)` call, so the items cannot each emit their own markup.
#let opt(desc, cost) = (kind: "opt", desc: desc, cost: cost)

// A group is an option that carries its own sub-options, conditional on it -
// "may upgrade one model to a Standard Bearer" and then what that bearer may
// carry. `cost` is optional: several groups are only a heading for the lines
// beneath and have no price of their own.
#let optgroup(head, cost: none, ..subs) = {
  let subs = subs.pos()
  assert(subs.len() > 0, message: "optgroup: no sub-options")
  for s in subs {
    assert(type(s) == dictionary and s.at("kind", default: none) == "opt",
      message: "optgroup: sub-options must each be opt(..)")
  }
  (kind: "group", head: head, cost: cost, subs: subs)
}

#let options(..items) = {
  let items = items.pos()
  assert(items.len() > 0, message: "options: no options")
  for it in items {
    assert(type(it) == dictionary and it.at("kind", default: none) in ("opt", "group"),
      message: "options: every item must be opt(..) or optgroup(..)")
  }
  list(..items.map(it => if it.kind == "opt" {
    _dotline(it.desc, it.cost)
  } else {
    [#if it.cost != none { _dotline(it.head, it.cost) } else { it.head }
     #list(marker: text(fill: hair)[--],
       ..it.subs.map(s => _dotline(s.desc, s.cost)))]
  }))
}

// The indented italic note that sits beneath a profile. The twin of
// `para(.., style: "italic")` for hand-written books, which pass content rather
// than runs.
#let note(body) = block(
  above: 0.9em, below: 0.9em,
  inset: (left: 1.1em, right: 1.1em),
  text(size: 10pt, body),
)

// --- profiles ---------------------------------------------------------------

#let field(label, value) = {
  [#metadata((kind: "field", label: label, value: value))<meta>]
  block(above: 0.3em, below: 0.3em)[
    #text(weight: "bold", size: 9pt, tracking: 0.07em)[#upper(label):]
    #if value != "" [ #value ]
  ]
}

// The stat line: a label column plus one equal column per characteristic.
#let statblock(label, cols, rows) = block(above: 0.85em, below: 1em, width: 100%, table(
  columns: (auto, ..cols.map(_ => 1fr)),
  align: (left + horizon, ..cols.map(_ => center + horizon)),
  stroke: none,
  inset: (x: 5pt, y: 4pt),
  fill: (_, y) => if y == 0 { tint } else if calc.even(y) { stripe },
  table.hline(y: 0, stroke: 0.9pt + hair),
  table.hline(y: 1, stroke: 0.5pt + hair),
  table.header(
    text(size: 8.5pt, weight: "bold", tracking: 0.09em)[#upper(label)],
    ..cols.map(c => text(size: 8.5pt, weight: "bold", tracking: 0.09em)[#upper(c)]),
  ),
  ..rows.flatten(),
  table.hline(stroke: 0.9pt + hair),
))

// Weapon and war-machine profiles: prose in the final column, so only that one
// takes the remaining width.
#let minitable(cols, vals) = block(above: 0.55em, below: 0.8em, width: 100%, table(
  columns: cols.enumerate().map(((i, _)) => if i == cols.len() - 1 { 1fr } else { auto }),
  align: left + horizon,
  stroke: none,
  inset: (x: 5pt, y: 3.5pt),
  fill: (_, y) => if y == 0 { tint },
  table.hline(y: 0, stroke: 0.5pt + hair),
  table.header(
    ..cols.map(c => text(size: 8.5pt, weight: "bold", tracking: 0.07em)[#upper(c)]),
  ),
  ..vals,
  table.hline(stroke: 0.5pt + hair),
))

// Each entry — a unit, a character, a magic-item section — opens its own page,
// so nothing straddles the space left over by whatever preceded it. `weak`
// keeps the break from firing when the page is already fresh, and `first`
// suppresses it so an entry can share its chapter-title page.
#let entry(name, first: false) = {
  if not first { pagebreak(weak: true) }
  [#metadata((kind: "entry", name: name))<meta>]
  heading(level: 2, name)
}

// An entry that is nothing but a stat line and a few fields — a character mount,
// say — would leave a page of its own almost entirely empty, so these share one.
// `breakable: false` is what keeps the promise: the entry moves to the next page
// whole rather than straddling the boundary.
#let compact-entry(name, body) = block(
  breakable: false, above: 1.4em, below: 0.5em,
  {
    [#metadata((kind: "entry", name: name))<meta>]
    heading(level: 2, name)
    body
  },
)

// --- unit entries -----------------------------------------------------------

// The ten characteristics a profile row carries, in printed order. Every stat
// line in the corpus uses exactly these, under exactly this label.
#let CHARACTERISTICS = ("m", "ws", "bs", "s", "t", "w", "i", "a", "ld", "points")

// A row arrives as a dictionary rather than a list, so a dropped value is a
// named error and two transposed values are not expressible at all. Values pass
// through `str` because a characteristic is not always a number: "-", "As user"
// and "2D6" all appear.
#let profile-row(row, where) = {
  assert("name" in row, message: where + ": a profile row has no name")
  let missing = CHARACTERISTICS.filter(k => k not in row)
  let unknown = row.keys().filter(k => k != "name" and k not in CHARACTERISTICS)
  // Reported together: a mistyped characteristic is one missing and one
  // unknown, and naming half of that sends you looking for the wrong mistake.
  assert(missing.len() == 0 and unknown.len() == 0,
    message: where + " / " + row.name + ":"
      + if missing.len() > 0 { " missing " + missing.join(", ") } else { "" }
      + if unknown.len() > 0 { " unknown " + unknown.join(", ") } else { "" })
  (row.name, ..CHARACTERISTICS.map(k => str(row.at(k))))
}

// The stat line as authored: one dictionary per row, so the keys carry the
// meaning rather than their position and a characteristic cannot land in the
// wrong column by being written in the wrong place. Scrambling the order of the
// keys renders identically. A wrong value against the right key is still
// writable - nothing here catches that.
//
// Deliberately just the profile, not the whole entry. An entry is an ordered
// sequence, not a record: 886 of the 1,482 entries with a stat line interleave
// their fields with lists, 341 open with a run-in name before the profile, and
// 34 open with prose. A call that took `fields:` as one parameter would hoist
// them together and quietly relayout three fifths of the corpus.
#let profile(..rows) = {
  let rows = rows.pos()
  assert(rows.len() > 0, message: "profile: no rows")
  let built = rows.map(r => profile-row(r, "profile"))
  [#metadata((kind: "profile", rows: rows))<meta>]
  statblock("Profile", CHARACTERISTICS.map(upper), built)
}

// A ruled chart — to-hit, to-wound, armour saves. Unlike a stat line these are
// drawn as real tables in the source, so they keep visible rules here too. Both
// the first row and the first column are treated as headers, which is the shape
// of every cross-referencing chart in the book.
#let chart(rows) = block(above: 0.95em, below: 0.5em, width: 100%, align(center, table(
  columns: rows.at(0).len(),
  align: center + horizon,
  stroke: 0.4pt + hair,
  inset: (x: 4pt, y: 3.5pt),
  fill: (x, y) => if y == 0 or x == 0 { tint },
  ..rows.flatten().map(c => text(size: 9pt, c)),
)))

// A diagram lifted from the source. Named `diagram` rather than `figure` so it
// does not shadow Typst's own. The width is a fraction of the measure, so a
// half-column diagram stays half a column whatever the margins are.
#let diagram(path, fraction) = block(above: 1em, below: 1em, width: 100%,
  align(center, image(path, width: fraction * 100%)),
)

// The axis labels around a chart. In the source the row axis is set vertically
// beside the grid; read in flow order it arrives after it, so both axes are set
// as captions rather than as the headings their display face would suggest.
#let chartlabel(name) = block(above: 0.3em, below: 0.3em, align(center,
  text(size: 8.5pt, weight: "bold", tracking: 0.12em, fill: muted)[#upper(name)],
))

// --- front matter -----------------------------------------------------------

// What the site needs to know about a book and cannot read off its pages:
// where it files, what it is called, and whether it is Eliasson's or ours.
// `..named` rather than a parameter list, so an unknown key is an error and
// `align` never shadows Typst's own function inside this scope.
#let BOOK_META_REQUIRED = ("slug", "army", "version", "layout")
#let BOOK_META_OPTIONAL = ("cover", "align", "shelf", "authored",
                          "id", "base", "edition")

// An extracted book takes its allegiance from the rulebook's Alliance &
// Alignment lists at import time; anything absent here simply has none.
#let BOOK_META_DEFAULTS = (shelf: "base", authored: false)

#let book-meta(..named) = {
  assert(named.pos().len() == 0,
    message: "book-meta takes named arguments only")
  let m = named.named()
  let known = BOOK_META_REQUIRED + BOOK_META_OPTIONAL
  let missing = BOOK_META_REQUIRED.filter(k => k not in m)
  let unknown = m.keys().filter(k => k not in known)
  assert(missing.len() == 0 and unknown.len() == 0,
    message: "book-meta:"
      + if missing.len() > 0 { " missing " + missing.join(", ") } else { "" }
      + if unknown.len() > 0 { " unknown " + unknown.join(", ") } else { "" })
  assert(m.layout in ("army", "rules"),
    message: "book-meta: layout must be \"army\" or \"rules\", not \"" + m.layout + "\"")
  // Built by walking the known keys rather than listing them a second time.
  // Naming them twice once meant `id`, `base` and `edition` were accepted here
  // and then silently dropped from what a reader could query - the assert
  // passed and the data vanished.
  let out = (:)
  for key in known {
    out.insert(key, m.at(key, default: BOOK_META_DEFAULTS.at(key, default: none)))
  }
  [#metadata(out)<book-meta>]
}

// `page(..)` with a body is used rather than `set page(..)`, so the suppressed
// footer applies to this page alone instead of leaking into the whole document.
#let cover(title: "", subtitle: "", art: none) = page(footer: none, {
  v(1fr)
  align(center)[
    #text(size: 40pt, weight: "bold", tracking: 0.12em)[#upper(title)]
    #v(0.2em)
    #line(length: 42%, stroke: 1.2pt + hair)
    #v(0.4em)
    #text(size: 13pt, tracking: 0.18em)[#upper(subtitle)]
  ]
  if art != none {
    v(1.2em)
    align(center, image(art, width: 62%))
  }
  v(1fr)
})

#let colophon(lines) = page(footer: none, {
  v(1fr)
  align(center, block(width: 78%, {
    set par(justify: false, leading: 0.7em)
    set text(size: 9.5pt)
    lines.map(l => block(below: 0.9em, l)).join()
  }))
  v(1fr)
})

// --- document ---------------------------------------------------------------

// `side` widens the margins for the core rulebook, which is set in one column:
// at the army books' measure a page of continuous prose runs to ~90 characters a
// line, which is too long to read comfortably.
#let book(title: "", side: 2.4cm, body) = {
  set document(title: title)
  set page(
    paper: "a4",
    margin: (x: side, top: 2.2cm, bottom: 1.9cm),
    background: image("/assets/images/parchment.jpg", width: 100%, height: 100%),
    footer: context align(center, text(size: 9.5pt, fill: ink)[
      #counter(page).display()
    ]),
  )
  set text(font: body-font, size: 10.5pt, fill: ink, lang: "en", hyphenate: true)
  // Off deliberately. Generated books pass their text as string literals, which
  // Typst never substitutes; a hand-written book passes markup, which it would.
  // Leaving it on would curl every apostrophe in text the colophon promises is
  // reproduced, and the word-bag gate cannot see punctuation change.
  set smartquote(enabled: false)
  set par(justify: true, leading: 0.62em, spacing: 0.72em)
  set heading(numbering: none)
  set list(marker: text(fill: hair)[•], indent: 0.5em, body-indent: 0.45em)
  show list: set block(above: 0.55em, below: 0.75em)
  set table(gutter: 0pt)

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(below: 1.1em, align(center)[
      #text(size: 25pt, weight: "bold", tracking: 0.11em)[#upper(it.body)]
      #v(-0.3em)
      #line(length: 55%, stroke: 1pt + hair)
    ])
  }

  show heading.where(level: 2): it => block(
    above: 1.35em, below: 0.5em, sticky: true,
  )[
    #text(size: 14pt, weight: "bold", tracking: 0.05em)[#upper(it.body)]
    #v(-0.52em)
    #line(length: 100%, stroke: 0.6pt + hair)
  ]

  // Third tier, used only by the core rulebook: no rule beneath it, so the
  // hierarchy stays legible against the level-2 headings.
  show heading.where(level: 3): it => block(
    above: 1.1em, below: 0.35em, sticky: true,
    text(size: 11.5pt, weight: "bold", tracking: 0.04em)[#upper(it.body)],
  )

  body
}
