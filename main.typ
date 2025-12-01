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
#import "lib/code.typ": code-frame

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

= Code

#code-frame(title: "src/main.rs")[
  ```rust
  fn main() {
      println!("Hello, TyDoc!");
  }
  ```
]

#let my-script = "print('Dynamic Code')"
#code-frame(my-script, title: "script.py", lang: "python")

#code-frame()[
  ```js
  console.log("Hello, TyDoc!");
  ```
]
