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
// `above` is a parameter because a magic item wants a wider gap before its name
// than a run-in name inside a unit entry does, and the two share this function.
// The default is what every caller but `magic-item` uses.
#let namecost(name, cost, above: 0.9em) = block(above: above, below: 0.2em, sticky: true, {
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

// The indented italic note that sits beneath a profile. The twin of
// `para(.., style: "italic")` for hand-written books, which pass content rather
// than runs.
#let note(body) = block(
  above: 0.9em, below: 0.9em,
  inset: (left: 1.1em, right: 1.1em),
  text(size: 10pt, body),
)

// --- entries ----------------------------------------------------------------

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

// --- magic items ------------------------------------------------------------

// A magic item is a record where an entry is a sequence. Every one in the
// corpus is a name, a cost, a few qualifiers and its rules text, in that order
// and no other, so unlike a unit it can be written as a single call - and
// writing it as one is the point. Set by hand as a `namecost` and a paragraph,
// an item's qualifiers are prose like any other sentence: nothing stops "Great
// weapon" being written "Great Weapon", the restriction landing after the type
// rather than before it, the trailing full stop going missing, or the asterisk
// that marks a common item being dropped from the name it is glued to. Passed
// as arguments they are checked here, ordered here and punctuated here, so
// changing how an item is set is a change to this file rather than to several
// hundred paragraphs.

// `type` is one of the parameters below, and inside that scope it shadows
// Typst's own `type`. Bound here so the assertions can still ask what a value
// is - the same shadowing `book-meta` sidesteps by taking `..named`.
#let _typeof = type

// And `columns` is a parameter of `magic-item-section`, which shadows Typst's
// own the same way. Same remedy.
#let _columns = columns

// The six categories, from the rulebook's Balance of Power: a model may carry
// one item from each.
#let MAGIC_ITEM_KINDS = ("weapon", "armour", "talisman", "arcane",
                         "enchanted", "standard")

// What an item of each category may declare itself to be. Weapons and armour
// name the mundane equipment they stand in for, spelled as the Weapons & Armour
// chapter spells it; arcane items name one of the three arcane categories. The
// other three categories have no type at all, and the empty tuple is how that
// is said - `type:` on a talisman is an error rather than a silent no-op.
#let MAGIC_ITEM_TYPES = (
  weapon: ("Hand weapon", "Additional hand weapon", "Polearm", "Great weapon",
           "Flail", "Spear", "Pike", "Lance", "Light lance", "Heavy lance"),
  armour: ("Light armour", "Medium armour", "Heavy armour", "Shield",
           "Buckler", "Barding"),
  arcane: ("Staff", "Charm", "Relic"),
  talisman: (),
  enchanted: (),
  standard: (),
)

// A magic weapon that names no type is a hand weapon - the rulebook says so
// outright, and the books accordingly leave it unsaid. Left off the page too,
// where the source leaves it off, but resolved into the metadata, so a reader
// asking what a weapon is gets an answer rather than a blank.
#let MAGIC_WEAPON_DEFAULT_TYPE = "Hand weapon"

// The gap before an item's name. Wider than the 0.9em a `namecost` takes
// elsewhere: a magic-item section is a list of sixty short records rather than
// continuous prose, and at the paragraph gap the eye reads one item's rules as
// running into the next item's name. Set here rather than in `namecost` so it
// is the magic items that get the air, and not every run-in name in the corpus.
#let MAGIC_ITEM_GAP = 1.2em

// `cost` is a number, not "45 points". The unit is the same for every item in
// every book, so writing it out at each of them only creates somewhere for
// "15 Points" to differ from its five hundred neighbours - which, in the source
// this book was imported from, it does.
#let magic-item(name, cost, body,
                kind: none, type: none, only: none,
                bound: false, one-use: false, common: false) = {
  let where = "magic-item " + name
  assert(kind in MAGIC_ITEM_KINDS, message: where + ": kind must be one of "
    + MAGIC_ITEM_KINDS.join(", ") + ", not " + repr(kind))
  assert(_typeof(cost) == int and cost > 0,
    message: where + ": cost is a number of points, not " + repr(cost))

  // One type, or several worn at once - "Heavy armour and shield". The
  // vocabulary holds each piece under the single name it is printed by
  // everywhere else, and the tail is lowered as it is joined, which is how the
  // source sets the pair.
  let vocab = MAGIC_ITEM_TYPES.at(kind)
  let given = if type == none { () } else if _typeof(type) == str { (type,) } else { type }
  for t in given {
    assert(t in vocab, message: where + ": " + repr(t) + " is not a " + kind
      + " type" + if vocab.len() == 0 { " - " + kind + " items have none" }
                  else { "; expected one of " + vocab.join(", ") })
  }
  let typed = if given.len() > 0 {
    given.enumerate().map(((i, t)) => if i == 0 { t } else { lower(t) })
      .join(" and ")
  }

  // Who may carry it, what it is, how it may be used, then what it does - the
  // order every item in the corpus is written in. Each qualifier is a sentence
  // of its own and the full stops are supplied here, so an item cannot be
  // missing one or be punctuated unlike its neighbours.
  let qualifiers = (
    if only != none { only + " only" },
    typed,
    if bound { "Bound Spell" },
    if one-use { "One use only" },
  ).filter(q => q != none).map(q => q + ". ")

  [#metadata((
    kind: "magic-item", category: kind, name: name, cost: cost,
    // The resolved type, not the written one: a weapon that named none is a
    // hand weapon.
    type: if typed != none { typed }
      else if kind == "weapon" { MAGIC_WEAPON_DEFAULT_TYPE },
    only: only, bound: bound, one-use: one-use, common: common,
  ))<meta>]
  // The asterisk is the rulebook's mark for a *common* item - one that may be
  // taken more than once in an army - so it is carried by a flag rather than
  // typed into the name, where it reads as spelling and can be lost to one.
  namecost(name + if common { "*" } else { "" }, str(cost) + " points",
    above: MAGIC_ITEM_GAP)
  // Not wrapped in a block: the qualifiers open the item's first paragraph, as
  // they do on the printed page, rather than standing off from it as a line of
  // their own.
  [#qualifiers.join()#body]
}

// The six, named, so a book states the category by which function it calls and
// cannot state it as a value that is not one of them.
#let magic-weapon = magic-item.with(kind: "weapon")
#let magic-armour = magic-item.with(kind: "armour")
#let talisman = magic-item.with(kind: "talisman")
#let arcane-item = magic-item.with(kind: "arcane")
#let enchanted-item = magic-item.with(kind: "enchanted")
#let magic-standard = magic-item.with(kind: "standard")

// --- magic items: the chapter they sit in -----------------------------------

// What each category's section is titled. The corpus already agrees - 54 of the
// books title their weapon section MAGIC WEAPONS, and 54 their standards MAGIC
// STANDARDS - so the agreement is written down once here rather than retyped,
// and relied on to be retyped correctly, in every book. `name:` is for the two
// that genuinely differ: the Dwarfs call their talismans TALISMANIC RUNES.
//
// Set in capitals rather than left to the display face, which uppercases every
// heading anyway. The face is not the only reader: a book generates its own
// contents page from its headings, and an outline takes the heading's text and
// not the show rule's rendering of it. Title case here sets the six of them in
// a contents page whose every other line is capitals.
#let MAGIC_ITEM_SECTIONS = (
  weapon: "MAGIC WEAPONS",
  armour: "MAGIC ARMOUR",
  talisman: "TALISMANS",
  arcane: "ARCANE ITEMS",
  enchanted: "ENCHANTED ITEMS",
  standard: "MAGIC STANDARDS",
)

// The chapter's head: its title, and the standing paragraph that introduces it.
// Header only, like `entry` and `namecost` - the sections flow after it - since
// a chapter owns only its heading and its intro, and neither needs to enclose
// what follows.
//
// The intro is set `strong` rather than in the italic register `note` uses,
// because that is what the source sets it in and pulling a layer into the
// template is not the moment to change what reaches the page. Set here, though,
// so it is one edit from being something else in every book at once, instead of
// forty-five paragraphs whose emphasis was typed by hand.
#let magic-item-chapter(title: "MAGIC ITEMS", intro: none) = {
  heading(level: 1, title)
  // Not wrapped in a block: a block takes `block.spacing` where a paragraph
  // takes `par.spacing`, and this is a paragraph.
  if intro != none { strong(intro) }
}

// A section: its page break, its heading, and - the layer that has never had an
// owner at all - the number of columns its items set in.
//
// That number was decided once, at import, by counting characters: `to_book.py`
// gave a section two columns at 3,000 characters of prose and one below it, and
// wrote the answer into the book as a bare `#columns(2)[`. Nothing has owned it
// since. It is why a chapter of six short sections and a chapter of the same
// quantity of material in one long section come out set differently - a
// difference in how they were once measured, not in how they read.
//
// Measured here instead, and in the geometry the rule is actually about rather
// than a character count standing in for it: `layout` gives the page's measure,
// `measure` the height these items would take set across the whole of it.
// Taller than the page and there is material enough to fill two columns;
// shorter and the second column stands part-empty, which reads as a fault
// rather than a choice. Margins and type size are in the answer because they
// are in the question, which is what the character count could never manage -
// it was calibrated for one page geometry and every book has since been free to
// choose its own.
//
// `columns:` overrides the rule where an editor knows better. It is not how the
// books should be set; it is there so that disagreeing with the rule does not
// mean going back to writing `#columns(2)[` into a book by hand.
#let magic-item-section(kind, name: auto, columns: auto, first: false, body) = {
  assert(kind in MAGIC_ITEM_KINDS,
    message: "magic-item-section: kind must be one of "
      + MAGIC_ITEM_KINDS.join(", ") + ", not " + repr(kind))
  assert(columns in (auto, 1, 2),
    message: "magic-item-section: columns must be auto, 1 or 2, not "
      + repr(columns))
  // `entry` rather than a heading of its own, so a magic-item section breaks
  // and heads exactly as a unit entry does - one definition, not two that have
  // to be kept saying the same thing.
  entry(if name == auto { MAGIC_ITEM_SECTIONS.at(kind) } else { name },
        first: first)
  if columns == 1 {
    body
  } else if columns == 2 {
    _columns(2, body)
  } else {
    layout(size => {
      let tall = measure(block(width: size.width, body)).height >= size.height
      if tall { _columns(2, body) } else { body }
    })
  }
}

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
//
// `size` is the other half of the same dial. The source books are set in 10pt
// Times inside 2cm margins and run about 50 characters to the line; Libertinus
// sets tighter, so matching the margin alone stretches the line to 55 and
// matching the line alone leaves the block sitting too far in from the edge.
// Only the two together land on the printed page's proportions.
#let book(title: "", side: 2.4cm, size: 10.5pt, body) = {
  set document(title: title)
  set page(
    paper: "a4",
    margin: (x: side, top: 2.2cm, bottom: 1.9cm),
    background: image("/assets/images/parchment.jpg", width: 100%, height: 100%),
    footer: context align(center, text(size: 9.5pt, fill: ink)[
      #counter(page).display()
    ]),
  )
  set text(font: body-font, size: size, fill: ink, lang: "en", hyphenate: true)
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

  // `width: 100%` is what makes `align(center)` mean the page. A block sizes to
  // its content unless told otherwise, so this one shrank to its widest child -
  // the rule beneath the title - and centred the title within that, hard
  // against the left margin; a title wider than the rule pushed the box wider
  // still and set itself flush left. Every chapter opening in the corpus was
  // centred on 189pt of a 595pt page. The rule takes the whole measure, as the
  // one beneath a level-2 heading does.
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(width: 100%, below: 1.1em, {
      // Both off for the reasons `namecost` has them off, which a chapter title
      // needed just as much and never had. Justification would space a title
      // that runs to two lines right across the measure, VIRTUES OF THE
      // CHIVALRIC / KNIGHT set as though it were a paragraph. And hyphenation
      // breaks a display title mid-word: three of Warriors of Chaos's chapters
      // opened KHORNE SPECIAL CHARAC- / TERS. Off, a title too long for the
      // measure breaks at a space, where a reader would break it.
      set par(justify: false)
      align(center)[
        #text(size: 25pt, weight: "bold", tracking: 0.11em, hyphenate: false)[#upper(it.body)]
        #v(-0.3em)
        #line(length: 100%, stroke: 1pt + hair)
      ]
    })
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
