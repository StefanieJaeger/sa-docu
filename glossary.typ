#import "@preview/glossarium:0.4.1": make-glossary, print-glossary, gls, glspl
#show: make-glossary

// https://typst.app/universe/package/glossarium/
#print-glossary(
    show-all: true,
    (
      (key: "ects", short: "Credit", plural: "Credits", desc: "Der ECTS (European Credit Transfer and Accumulation System) ist ein europaweit standardisiertes System zur Bewertung und Übertragbarkeit von Studienleistungen. Ein Credit entspricht in der Regel einem Arbeitsaufwand von 25 bis 30 Stunden (einschließlich Vorlesungen, Selbststudium und Prüfungsvorbereitung). Credits ermöglichen die Vergleichbarkeit von Studienleistungen zwischen Hochschulen und fördern die Mobilität von Studierenden innerhalb Europas"),
      (key: "fontawesome", short: "Fontawesome", desc: "FontAwesome ist eine beliebte Icon-Bibliothek, die skalierbare Vektorsymbole und -logos bereitstellt. Sie wird häufig in Web- und UI-Designs verwendet, um ansprechende und konsistente Icons zu integrieren. Die Symbole sind in Form von Schriftarten oder SVG-Dateien verfügbar, was eine einfache Anpassung von Größe, Farbe und Stil ermöglicht."),
      (key: "tailwind", short: "Tailwind CSS", desc: "Tailwind CSS ist ein Utility-First-CSS-Framework, das vorgefertigte Klassen für Layout, Farben, Abstände und andere Design-Elemente bietet. Es ermöglicht Entwicklern, benutzerdefinierte Designs zu erstellen, ohne direkt CSS schreiben zu müssen. Tailwind ist besonders flexibel und fördert einen modularen Entwicklungsstil."),
      (key: "vite", short: "Vite", desc: "Vite ist ein modernes Build-Tool und Entwicklungsserver, das schnelle Projektstarts und eine effiziente Entwicklungsumgebung ermöglicht. Es ist speziell für moderne JavaScript-Frameworks wie Vue.js und React optimiert. Durch die Nutzung von ES-Modulen wird die Entwicklungszeit erheblich verkürzt, und der Produktions-Build ist hochperformant."),
      (key: "githubPages", short: "GitHub Pages",  desc: "GitHub Pages ist ein kostenloser Hosting-Dienst von GitHub, mit dem statische Websites direkt aus einem Repository veröffentlicht werden können. Entwickler können ihre Projekte, Dokumentationen oder Portfolios einfach bereitstellen, indem sie die entsprechenden Dateien in einem öffentlichen Repository hosten und die Funktion aktivieren."),
      (key: "mvp", short: "MVP", desc: "Der Begriff MVP (Minimum Viable Product) beschreibt die minimal funktionsfähige Version eines Produkts, die mit möglichst geringem Aufwand entwickelt wird. Ziel ist es, schnell eine marktfähige Lösung bereitzustellen, um Benutzerfeedback zu sammeln und das Produkt iterativ weiterzuentwickeln. MVPs sind ein zentraler Bestandteil agiler Entwicklungsprozesse."),

  )
)
