#import "@preview/glossarium:0.4.1": make-glossary, print-glossary, gls, glspl
#show: make-glossary

// https://typst.app/universe/package/glossarium/
#print-glossary(
    show-all: true,
    (
      (key: "ects", short: "ECTS", plural: "ECTS", desc: "Das ECTS (European Credit Transfer and Accumulation System) ist ein europaweit standardisiertes System zur Bewertung und Übertragbarkeit von Studienleistungen. Ein ECTS-Punkt, umgangssprachlich auch Credit genannt, entspricht in der Regel einem Arbeitsaufwand von 25 bis 30 Stunden (einschließlich Vorlesungen, Selbststudium und Prüfungsvorbereitung). Credits ermöglichen die Vergleichbarkeit von Studienleistungen zwischen Hochschulen und fördern die Mobilität von Studierenden innerhalb Europas."),
      (key: "fontawesome", short: "Fontawesome", desc: "FontAwesome ist eine beliebte Icon-Bibliothek, die skalierbare Vektorsymbole und -logos bereitstellt. Sie wird häufig in Web- und UI-Designs verwendet, um ansprechende und konsistente Icons zu integrieren. Die Symbole sind in Form von Schriftarten oder SVG-Dateien verfügbar, was eine einfache Anpassung von Größe, Farbe und Stil ermöglicht."),
      (key: "tailwind", short: "Tailwind CSS", desc: "Tailwind CSS ist ein Utility-First-CSS-Framework, das vorgefertigte Klassen für Layout, Farben, Abstände und andere Design-Elemente bietet. Es ermöglicht Entwicklern, benutzerdefinierte Designs zu erstellen, ohne direkt CSS schreiben zu müssen. Tailwind ist besonders flexibel und fördert einen modularen Entwicklungsstil."),
      (key: "vite", short: "Vite", desc: "Vite ist ein modernes Build-Tool und Entwicklungsserver, das schnelle Projektstarts und eine effiziente Entwicklungsumgebung ermöglicht. Es ist speziell für moderne JavaScript-Frameworks wie Vue.js und React optimiert. Durch die Nutzung von ES-Modulen wird die Entwicklungszeit erheblich verkürzt, und der Produktions-Build ist hoch performant."),
      (key: "githubPages", short: "GitHub Pages",  desc: "GitHub Pages ist ein kostenloser Hosting-Dienst von GitHub, mit dem statische Websites direkt aus einem Repository veröffentlicht werden können. Entwickler und Entwicklerinnen können ihre Projekte, Dokumentationen oder Portfolios einfach bereitstellen, indem sie die entsprechenden Dateien in einem öffentlichen Repository hosten und den Dienst aktivieren."),
      (key: "mvp", short: "MVP", long: "Minimum Viable Product", desc: "Der Begriff MVP (Minimum Viable Product) beschreibt die minimal funktionsfähige Version eines Produkts, die mit möglichst geringem Aufwand entwickelt wird. Ziel ist es, schnell eine marktfähige Lösung bereitzustellen, um Benutzerfeedback zu sammeln und das Produkt iterativ weiterzuentwickeln. MVPs sind ein zentraler Bestandteil agiler Entwicklungsprozesse."),
      (key: "msp", short: "MSP", long: "Musterstudienplan", plural: "Musterstudienpläne", desc: "Ein MSP (Musterstudienplan) ist eine empfohlene Struktur für die Planung eines Studienverlaufs. Für jede mögliche Vertiefung eines Studiengangs gibt es spezifische Musterstudienpläne, die jeweils für Vollzeit- und Teilzeitmodelle ausgelegt sind. Sie bieten eine zeitliche und inhaltliche Anordnung der Module und dienen als Orientierungshilfe, um die Anforderungen der Studienordnung einzuhalten und eine zielgerichtete Studienplanung zu erleichtern."),
      (key: "persona", short: "Persona", desc: "Eine Persona ist eine fiktive, aber auf realen Daten basierende Charakterbeschreibung, die typische Eigenschaften, Bedürfnisse und Verhaltensweisen einer Zielgruppe darstellt. Sie wird in nutzerzentrierten Entwicklungsprozessen eingesetzt, um die Perspektive der Nutzenden zu verstehen und darauf basierend zielgerichtete Lösungen zu entwickeln."),
      (key: "std", short: "STD", long:"Studienordnungsbeschreibung", plural: "Studienordnungsbeschreibungen", desc: "Die STD (Studienordnungsbeschreibung) enthält die offiziellen Richtlinien und Vorgaben eines Studiengangs, wie Prüfungsordnungen, Modulbeschreibungen, ECTS-Zuordnungen und Zulassungsvoraussetzungen. Sie dient als verbindliche Grundlage für die Planung und Durchführung des Studiums und wird oft in Plattformen wie lost.university referenziert."),
      (key: "keyscreen", short:"Keyscreen", plural: "Keyscreens", desc: "Keyscreens sind einzelne Screen-Typen eines User Interface. Die einzelnen Elemente wie Funktionen und Daten auf den Screens werden genauer beschrieben."),
      (key: "hmw", short: "HMW", long: "How-Might-We", desc: "HMW (How-Might-We) ist eine kreative Fragestellungstechnik, die verwendet wird, um Ideen und Lösungsansätze zu generieren. Indem bestehende Probleme oder Herausforderungen in positive Frageform umgewandelt werden, entstehen neue Perspektiven und Ansätze zur Problemlösung. HMW-Fragen fördern kreatives Denken und die Entwicklung innovativer Lösungen."),
      (key: "ds", short: "Design Studio", desc: "Das Design Studio ist eine kreative Technik zur Ideenfindung. In einem strukturierten Workshop entwickeln mehrere Personen unabhängig voneinander Lösungsskizzen zu einem definierten Problem. Durch die anschliessende Präsentation und Diskussion der Entwürfe entstehen neue Ideen und Ansätze, die in die Konzeptentwicklung einfliessen."),
      (key: "6-3-5", short: "6-3-5 Methode", desc: "Die 6-3-5 Methode ist eine Kreativitätstechnik zur Ideenfindung in Gruppen. Dabei generieren sechs Personen in fünf Runden jeweils drei Ideen zu einem vorgegebenen Thema. Die Methode fördert die Vielfalt und Quantität von Lösungsansätzen und ermöglicht eine effiziente Ideenentwicklung in kurzer Zeit."),
      (key: "hi-fi-pro", short: "High-Fidelity-Prototyp", desc: "Ein High-Fidelity-Prototyp ist eine detaillierte und interaktive Version eines Produkts oder einer Anwendung, die das endgültige Design und die Funktionalität widerspiegelt. Er enthält realistische Inhalte, Interaktionen und visuelle Elemente, um das Erlebnis möglichst authentisch darzustellen."),
      (key: "ce", short: "Constraints Enforcement", desc: "Constraints Enforcement bezeichnet die Berücksichtigung von Einschränkungen und Regeln bei der Entwicklung von Software oder Anwendungen."),
      (key: "dv", short: "Dot-Voting", desc: "Dot-Voting ist eine Methode zur Priorisierung von Ideen oder Lösungsvorschlägen in Gruppen. Dabei erhalten Teilnehmende eine begrenzte Anzahl von Punkten (Dots), die sie auf die ihnen wichtigsten Optionen verteilen können. Die Methode fördert eine demokratische Entscheidungsfindung und ermöglicht eine schnelle Bewertung von Ideen."),
  )
)
