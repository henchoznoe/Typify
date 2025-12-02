// -------------------------------------------------------------------------
// File: template/components/cover.typ
// Author: Noé Henchoz
// Date: 2025-12-02
// Description: Cover page component for the TyDoc template.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

#import "../config.typ": *

// Cover page rendering
#let cover-page(title, authors, formatted-date, subtitle: none, classe: none) = {
  set page(header: none, footer: none)

  // Header image (respects margins)
  align(center)[
    #image("../../assets/cover.png", width: 100%)
  ]

  v(1.5cm)

  // Title
  align(center)[
    #text(size: 20pt, weight: "bold", fill: COLOR_PRIMARY)[
      #title
    ]
  ]

  v(0.8cm)

  // Horizontal divider
  align(center)[
    #line(length: 100%, stroke: 2pt + gray)
  ]

  v(0.8cm)

  // Subtitle (if provided)
  if subtitle != none {
    align(center)[
      #text(size: 18pt, weight: "regular", fill: COLOR_PRIMARY)[
        #subtitle
      ]
    ]
    v(1cm)
  }

  v(1fr)

  // Brown rectangle with remaining space
  rect(
    width: 100%,
    height: if subtitle != none { 7cm } else { 9cm },
    fill: COLOR_BROWN,
    stroke: 2pt + COLOR_BROWN_BORDER,
    inset: 1.5cm,
    {
      set text(fill: black, size: 12pt)
      set align(left + horizon)

      // Class field
      if classe != none {
        text(weight: "bold")[Classe : ]
        text[#classe]
        v(1em)
      }

      // Authors field
      if authors.len() > 0 {
        text(weight: "bold")[Auteur#if authors.len() > 1 [s] : ]
        text[#authors.join(", ")]
        v(1em)
      }

      // Date field
      text(weight: "bold")[Date : ]
      text[#formatted-date]
    },
  )

  pagebreak()
}
