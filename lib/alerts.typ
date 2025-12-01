// -------------------------------------------------------------------------
// File: lib/alerts.typ
// Author: Noé Henchoz
// Date: 2025-12-01
// Description: Component for displaying alert/admonition boxes.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

// --- Constants ---
#let COLOR_INFO = rgb("#005eb8")      // Blue
#let COLOR_WARNING = rgb("#e67e22")   // Orange
#let COLOR_ERROR = rgb("#c0392b")     // Red
#let COLOR_SUCCESS = rgb("#27ae60")   // Green

#let DEFAULT_RADIUS = 4pt
#let DEFAULT_INSET = 12pt

// --- Core Alert Function ---
// Renders a generic alert box with a specific color and title.
#let alert-box(body, title: "Info", color: COLOR_INFO) = {
  block(
    fill: color.lighten(90%),
    stroke: (left: 4pt + color),
    radius: (right: DEFAULT_RADIUS),
    inset: DEFAULT_INSET,
    width: 100%,
    breakable: false, // Keep title and content together
    [
      #pad()[
        #text(fill: color, weight: "bold")[#title]
        #v(0.2em)
        #body
      ]
    ],
  )
}

// --- Wrapper Functions ---
// These functions provide semantic shortcuts for the user.

#let info(body, title: "Information") = {
  alert-box(body, title: title, color: COLOR_INFO)
}

#let warning(body, title: "Warning") = {
  alert-box(body, title: title, color: COLOR_WARNING)
}

#let error(body, title: "Error") = {
  alert-box(body, title: title, color: COLOR_ERROR)
}

#let success(body, title: "Success") = {
  alert-box(body, title: title, color: COLOR_SUCCESS)
}
