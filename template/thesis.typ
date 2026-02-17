#import "../lib.typ": *
#import "abbreviations.typ": abbreviations
#import "settings/metadata.typ": *
#import "settings/settings.typ": *

#set document(title: title-english, author: author)
#set cite(style: settings.citation-style)

// Glossary setup (global)
#show: make-glossary
#register-glossary(abbreviations)

#open-title-page(settings: settings)

#align(center)[
  #image("../assets/fhs_logo.svg", width: 55%)
]

#finish-title-page(
  settings: settings,
  degree: degree,
  title: title-english,
  subtitle: subtitle-english,
  author: author,
  matriculation-number: matriculation-number,
  supervisor: supervisor,
  submission-date: submission-date,
)

#show: preface.with(settings: settings)

#include "supplementary/statutoryDeclaration.typ"

#pagebreak()
#include "supplementary/abstract.typ"

#pagebreak()
#listings(abbreviations: abbreviations)

#show: main-body.with(settings: settings)
#include "chapters/include.typ"
#pagebreak()
#include "supplementary/appendix.typ"

#pagebreak()
#bibliography("bibliography/bibliography.bib")
