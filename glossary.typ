#import "@preview/glossarium:0.4.1": make-glossary, print-glossary, gls, glspl
#show: make-glossary

// https://typst.app/universe/package/glossarium/
#print-glossary(
    show-all: true,
    (
      // School
      (key: "module", short: "Modul", desc: "foo"),
      (key: "category", short: "Kategorie", desc: "foo"),
      (key: "focus", short: "Spezialisierung", desc: "foo, auch Vertiefung genannt"),
      (key: "std", short: "Studienordnungen", desc: "foo"),
      (key: "ects", short: "Credit", plural: "Credits", desc: "foo"),
      (key: "msp", short: "MSP", long: "Musterstudienplan", desc: ""),

      // Tech
      (key: "spa", short: "SPA", long: "Single Page Application", desc:""),
      (key: "fontawesome", short: "Fontawesome", desc: ""),
      (key: "tailwind", short: "Tailwind CSS", desc: ""),
      (key: "vite", short: "Vite", desc: ""),
      (key: "githubPages", short: "GitHub Pages", desc: "https://docs.github.com/en/pages"),
      (key: "githubActions", short: "", desc: "https://docs.github.com/en/actions")

      // UX

  )
)
