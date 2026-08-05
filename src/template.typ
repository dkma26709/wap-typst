// Typesetting for a Warhammer Armies Project army book.
//
// Everything the generator emits arrives as Typst *strings*, never markup, so
// no source text can be reinterpreted as syntax. That is why the run helpers
// below take dictionaries rather than content blocks.

#let ink = rgb(38, 28, 18)
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

#let items(its) = block(above: 0.55em, below: 0.75em, list(
  ..its.map(it => {
    runs(it.runs)
    if it.sub.len() > 0 { list(..it.sub.map(s => runs(s))) }
  }),
))

// --- profiles ---------------------------------------------------------------

#let field(label, value) = block(above: 0.3em, below: 0.3em)[
  #text(weight: "bold", size: 9pt, tracking: 0.07em)[#upper(label):]
  #if value != "" [ #value ]
]

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

// --- front matter -----------------------------------------------------------

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

#let book(title: "", body) = {
  set document(title: title)
  set page(
    paper: "a4",
    margin: (x: 2.4cm, top: 2.2cm, bottom: 1.9cm),
    background: image("../assets/images/parchment.png", width: 100%, height: 100%),
    footer: context align(center, text(size: 9.5pt, fill: ink)[
      #counter(page).display()
    ]),
  )
  set text(font: body-font, size: 10.5pt, fill: ink, lang: "en", hyphenate: true)
  set par(justify: true, leading: 0.62em, spacing: 0.72em)
  set heading(numbering: none)
  set list(marker: text(fill: hair)[•], indent: 0.5em, body-indent: 0.45em)
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

  body
}
