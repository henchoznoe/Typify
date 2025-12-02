// -------------------------------------------------------------------------
// File: example-with-cover.typ
// Author: Noé Henchoz
// Date: 2025-12-02
// Description: Example document with a cover page using TyDoc template.
// License: MIT
// Copyright: (c) 2025 Noé Henchoz
// -------------------------------------------------------------------------

#import "template/main.typ": project

#show: project.with(
  title: "Main Title",
  subtitle: "Sub Title",
  authors: ("Jean Dupont", "Marie Durand"),
  date: datetime.today(),
  classe: "ISC-IL-2A",
  cover: true,
  toc: true,
  tof: false,
)

= Introduction

Voici un exemple de document avec une belle page de garde professionnelle.

== Section

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

= Développement

== Section

Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

== Section

Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

= Conclusion

Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
