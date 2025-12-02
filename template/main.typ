// -------------------------------------------------------------------------
// File: template/main.typ
// Author: Noé Henchoz
// Date: 2025-12-02
// Description: Core layout definition for the TyDoc template.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

#import "config.typ": *
#import "components/header.typ": header-content
#import "components/footer.typ": footer-content
#import "components/cover.typ": cover-page
#import "components/outlines.typ": table-of-contents, table-of-figures

// --- Main Project Function ---
#let project(
  title: DEFAULT_TITLE,
  authors: "",
  date: DEFAULT_DATE,
  date-format: DEFAULT_DATE_FORMAT,
  header: false,
  toc: false,
  tof: false,
  cover: false,
  subtitle: none,
  classe: none,
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
    margin: (
      top: PAGE_MARGIN_TOP,
      bottom: PAGE_MARGIN_BOTTOM,
      left: PAGE_MARGIN_LEFT,
      right: PAGE_MARGIN_RIGHT,
    ),
    header: context {
      if counter(page).get().first() > 1 {
        header-content(title, subtitle, formatted-date)
      }
    },
    footer: context {
      if counter(page).get().first() > 1 {
        footer-content(authors, formatted-date)
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

  // Heading Styling
  set heading(numbering: "1.1.")
  show heading.where(level: 1): it => {
    set text(size: 18pt, weight: "bold", fill: COLOR_PRIMARY, font: FONT_MAIN)
    block(above: 1.5em, below: 1em, it)
  }
  show heading.where(level: 2): it => {
    set text(size: 16pt, weight: "bold", fill: COLOR_PRIMARY, font: FONT_MAIN)
    block(above: 1.5em, below: 1em, it)
  }
  show heading.where(level: 3): it => {
    set text(size: 14pt, weight: "bold", fill: COLOR_PRIMARY, font: FONT_MAIN)
    block(above: 1.5em, below: 1em, it)
  }

  // Table Styling
  set table(
    stroke: 1pt + rgb("c9c9c9"),
    inset: 0.8em,
    fill: (x, y) => if y == 0 { rgb("007cb7") } else { none },
  )
  set table.cell(breakable: false)
  show table.cell: it => {
    if it.y == 0 {
      set text(white, weight: "bold")
      strong(it)
    } else {
      set text(black)
      it
    }
  }

  // Figure Styling
  show figure: set figure(supplement: [Figure])

  // Cover page
  if cover {
    cover-page(title, authors, formatted-date, subtitle: subtitle, classe: classe)
  }

  // Table of Contents
  if toc {
    table-of-contents()
  }

  // Body Content
  set par(justify: true, leading: TEXT_LEADING, spacing: PAR_SPACING)
  body

  // Table of Figures (at the end)
  if tof {
    table-of-figures()
  }
}
