// Superposition Development
// sp_preamble.typ
// 
// This file defines all the style things we use when developing
// our documentation.

#let default_style(doc) = {
  set page(paper: "a4", margin: 1in, header: [#h(1fr) Superposition Development])
  set text(font: "Inter", size: 11pt)

  set par(first-line-indent: (amount: 1.5em, all: true), justify: true)

  doc
}