// -------------------------------------------------------------------------
// File: template/main.typ
// Author: Noé Henchoz
// Date: 2025-12-01
// Description: Core layout definition for the TyDoc template.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

// --- Constants ---
#let FONT_MAIN = "Aptos"
#let FONT_CODE = "JetBrains Mono"
#let PAGE_MARGIN = 2.5cm
#let TITLE_SIZE = 24pt
#let AUTHOR_SIZE = 12pt

// --- Main Template Function ---
// This function applies the layout settings to the document.
// It acts as a wrapper around the entire content.
#let project(
  title: "",
  authors: (),
  date: none,
  body,
) = {
  // 1. Metadata Configuration
  set document(author: authors, title: title)

  // 2. Page Configuration
  set page(
    paper: "a4",
    margin: PAGE_MARGIN,
    numbering: "1/1", // Page x of y
    header: align(right)[
      #text(size: 8pt, style: "italic")[#title]
    ],
  )

  // 3. Text & Font Configuration
  set text(font: FONT_MAIN, lang: "fr")
  show raw: set text(font: FONT_CODE)

  // 4. Heading Styling
  // Add a bit of space above headings and number them
  set heading(numbering: "1.1.")
  show heading: it => {
    block(above: 1.5em, below: 1em, it)
  }

  // 5. Title Page / Header Layout
  align(center)[
    #block(text(weight: 700, size: TITLE_SIZE, title))
    #v(1em, weak: true)
    #if date != none {
      text(date)
      v(0.5em)
    }
    #if authors.len() > 0 {
      text(size: AUTHOR_SIZE, weight: "bold")[
        #authors.join(", ")
      ]
    }
  ]

  // 6. Main Content Divider
  line(length: 100%, stroke: 1pt + gray)
  v(2em)

  // 7. Render the Document Body
  // Justify the text for a professional look
  set par(justify: true)
  body
}
