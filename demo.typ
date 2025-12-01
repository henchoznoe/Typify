// -------------------------------------------------------------------------
// File: demo.typ
// Author: Noé Henchoz
// Date: 2025-12-01
// Description: Component gallery and usage examples for TyDoc.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

#import "template/main.typ": project
#import "lib/alerts.typ": alert-box, error, info, success, warning
#import "lib/code.typ": code-frame

#show: project.with(
  title: "TyDoc Components Gallery",
  authors: ("Noé Henchoz",),
  date: datetime.today(),
  toc: true,
)

= Alerts
Here are the available alert styles defined in `lib/alerts.typ`.

== Standard Alerts
#info[
  Info: Used for general information or notes.
  The default color is blue.
]

#success(title: "Good Job")[
  Success: Indicates a successful operation or positive outcome.
  The default color is green.
]

#warning[
  Warning: Indicates something that requires attention.
  The default color is orange.
]

#error[
  Error: Indicates a critical issue or failure.
  The default color is red.
]

== Custom Alerts
You can also use the generic `alert-box` for custom needs.

#alert-box(title: "Custom Review", color: purple)[
  This is a custom alert box with a purple theme using the generic function.
]

= Code Blocks
Examples of code highlighting using `lib/code.typ`.

== With Title and Language
#code-frame(title: "src/main.rs", lang: "rust")[
  ```rust
  fn main() {
      println!("Hello, TyDoc!");
  }
  ```
]

== Dynamic Content You can pass strings directly to the frame.

#let script-content = "print('Hello from Python')"
#code-frame(script-content, title: "script.py", lang: "python")

== Minimal (No Title)
#code-frame()[
  ```bash
  # Install dependencies
  npm install
  ```
]

== With Line Numbers
#code-frame(title: "Complex Logic", numbers: true)[
  ```js
  function calculate(a, b) {
    const result = a + b;
    return result;
  }
  ```
]
