// -------------------------------------------------------------------------
// File: main.typ
// Author: Noé Henchoz
// Date: 2025-12-01
// Description: Main document entry point using the template.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

#import "template/main.typ": project

// Apply the template to this document
#show: project.with(
  title: "My First TyDoc Document",
  authors: ("Noé Henchoz",),
  date: "December 1, 2025",
)

// --- Content starts here ---

= Introduction
This is the first section of the document. The template automatically handles the font, margins, and the title block above.

== Subsection Example
Typst makes it easy to write content. As requested, we avoid global variables and keep things clean.

= Conclusion
The structure is now ready. Next steps will involve adding components like custom alert boxes or code blocks in the `lib/` folder.
