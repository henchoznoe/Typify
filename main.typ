// -------------------------------------------------------------------------
// File: main.typ
// Author: Noé Henchoz
// Date: 2025-12-01
// Description: Main document entry point.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

#import "template/main.typ": project

#show: project.with(
  title: "My New Document",
  authors: ("Noé Henchoz",),
  date: datetime.today(),
  toc: false,
)

// --- Start writing your document here ---

= Introduction
Write your content here...
