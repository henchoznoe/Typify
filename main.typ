// -------------------------------------------------------------------------
// File: main.typ
// Author: Noé Henchoz
// Date: 2025-12-01
// Description: Main document entry point using the template.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

#import "template/main.typ": project
#import "lib/alerts.typ": error, info, success, warning

// Apply the template to this document
#show: project.with(
  title: "My First TyDoc Document",
  authors: ("Author 1", "Author 2"),
  date: datetime.today(),
  toc: true,
)

// --- Content starts here ---

= Alerts

#info[
  This is an info alert.
]

#warning(title: "Warning")[
  This is a warning alert.
]

#error(title: "Custom error")[
  This is an error alert.
]

#success[
  This is a success alert.
]
