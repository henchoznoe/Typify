// -------------------------------------------------------------------------
// File: template/components/outlines.typ
// Author: Noé Henchoz
// Date: 2025-12-02
// Description: Table of contents and table of figures components.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

#import "../config.typ": *

// Table of Contents
#let table-of-contents() = {
  show outline.entry: it => {
    block(
      above: 1.5em,
      {
        set text(size: 11pt, weight: "bold", fill: rgb("#595959"), font: FONT_MAIN)
        it
      },
    )
  }
  outline(title: [Table des matières], indent: auto, depth: 3)
  pagebreak()
}

// Table of Figures
#let table-of-figures() = {
  pagebreak()
  show outline.entry: it => {
    set text(size: 11pt, weight: "regular", fill: black, font: FONT_MAIN)
    it
  }
  outline(
    title: [Table des illustrations],
    target: figure.where(kind: image),
  )
}
