// -------------------------------------------------------------------------
// File: template/components/header.typ
// Author: Noé Henchoz
// Date: 2025-12-02
// Description: Header component for the TyDoc template.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

#import "../config.typ": *

// Header content
#let header-content(title, subtitle, formatted-date) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    align: (left + bottom, right + bottom),
    // Logo on left
    image("../../assets/heia-logo.png", height: 1cm),
    // Title and subtitle on right
    {
      text(size: 10pt, weight: "bold", style: "italic", fill: COLOR_GRAY, font: FONT_MAIN)[#title]
      if subtitle != none {
        linebreak()
        text(size: 10pt, weight: "bold", style: "italic", fill: COLOR_GRAY, font: FONT_MAIN)[#subtitle]
      }
    },
  )
  v(0.5em)
  line(length: 100%, stroke: 2pt + COLOR_GRAY)
}
