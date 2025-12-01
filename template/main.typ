// -------------------------------------------------------------------------
// File: template/main.typ
// Author: Noé Henchoz
// Date: 2025-12-01
// Description: Core layout definition for the TyDoc template.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

// --- Configuration Constants ---
// Colors
#let COLOR_PRIMARY = rgb("#005eb8")
#let COLOR_LINK = rgb("#005eb8")

// Fonts
#let FONT_MAIN = "Aptos"
#let FONT_CODE = "JetBrains Mono"

// Layout
#let PAGE_FORMAT = "a4"
#let PAGE_MARGIN = 2.54cm

// Typography
#let TEXT_LANG = "en"
#let TEXT_SIZE = 11pt

// Defaults
#let DEFAULT_TITLE = "TyDoc Document"
#let DEFAULT_DATE = datetime.today()
#let DEFAULT_DATE_FORMAT = "[day].[month].[year]"

// --- Helper Functions ---

// Header content
#let header-content(title, formatted-date) = {
  align(center)[
    #v(5pt)
    #text(size: 8pt, fill: gray)[
      #title
      #h(1fr)
      #formatted-date
    ]
    #line(length: 100%, stroke: 0.5pt + gray)
  ]
}

// Footer content
#let footer-content(authors) = {
  align(center)[
    #line(length: 100%, stroke: 0.5pt + gray)
    #v(5pt)
    #text(size: 8pt, fill: gray)[
      #if authors.len() > 0 { authors.join(", ") }
      #h(1fr)
      #context {
        let current = counter(page).display("1")
        let total = counter(page).final().first()
        [#current / #total]
      }
    ]
  ]
}

// --- Main Project Function ---
#let project(
  title: DEFAULT_TITLE,
  authors: "",
  date: DEFAULT_DATE,
  date-format: DEFAULT_DATE_FORMAT,
  header: false,
  toc: false,
  body,
  footer: true,
) = {
  // Data Processing
  let formatted-date = if type(date) == datetime {
    date.display(date-format)
  } else {
    date
  }
  // Metadata Configuration
  set document(author: authors, title: title)

  // Page Setup
  set page(
    paper: PAGE_FORMAT,
    margin: PAGE_MARGIN,
    header: context {
      if counter(page).get().first() > 1 {
        header-content(title, formatted-date)
      }
    },
    footer: context {
      if counter(page).get().first() > 1 {
        footer-content(authors)
      }
    },
  )

  // Text & Typography
  set text(font: FONT_MAIN, lang: TEXT_LANG, size: TEXT_SIZE)

  // Link styling
  show link: set text(fill: COLOR_LINK)
  show link: underline

  // Code Block Styling
  show raw: set text(font: FONT_CODE)
  show raw.where(block: true): block.with(
    fill: luma(245),
    inset: 10pt,
    radius: 4pt,
    width: 100%,
  )

  // Heading Styling
  set heading(numbering: "1.1.")
  show heading: it => {
    set text(fill: COLOR_PRIMARY)
    block(above: 1.5em, below: 1em, it)
  }

  // Table of Contents
  if toc {
    pagebreak()
    outline(indent: auto, depth: 3)
    pagebreak()
  }

  // Body Content
  set par(justify: true, leading: 0.65em)
  body
}
