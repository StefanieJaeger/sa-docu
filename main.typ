// #set document(title: [Hello], author: ["Laura Thoma", "Stefanie Jäger"], keywords: [], date: [])
#set text(lang: "de")
#set heading(numbering: "1.")
#set page(numbering: "1")
#show bibliography: set heading(numbering: "1.")

#include "title-page.typ"

#include "abstract.typ"

#outline(indent: 1em)
#pagebreak()

// mgmt summary?

#include "ux/ux.typ"


// changes

// implementation

#include "thanks.typ"

#bibliography("bibliography.bib", style: "apa")

#include "glossary.typ"

// attachments
