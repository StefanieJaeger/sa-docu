#import "@preview/glossarium:0.4.1": gls, glspl
= Management Summary
// Das Management Summary (auch Lay Summary) richtet sich an ein breites Publikum und an das Management, welches in der Regel über keine Fachkenntnisse im bearbeiteten Thema verfügen. Das Management Summary soll kurz und verständlich beschreiben, worum es bei der Arbeit geht und welche Ergebnisse erzielt wurden. Die Sprache soll knapp, klar und stark untergliedert sein. Der Umfang beträgt in der Regel 2-3 (max. 5) Seiten. Bilder sind hier im Gegensatz zum Abstract erwünscht.
// Beispiel Gliederung für Management Summary:
// - Ausgangslage
// - Vorgehen & Technologien
// - Ergebnisse (ev. kleiner Ausblick)

== Ausgangslage
Die Plattform lost.university wird von Informatikstudierenden der OST - Ostschweizer Fachhochschule genutzt, um individuelle Studienpläne zu erstellen und zu verwalten.
Sie wurde von Studierenden für Studierende auf freiwilliger Basis entwickelt und ist seit 2022 in Betrieb. 
Die Plattform unterstützt die Planung von Modulen und bietet #glspl("msp") als Vorlage an. Trotz der positiven Resonanz der Studierenden weist die Plattform Schwächen in der Benutzerfreundlichkeit und Funktionalität auf.
Ziel dieser Studienarbeit war es, die Plattform mithilfe eines menschzentrierten Ansatzes grundlegend zu verbessern und einen validierten Prototypen zu entwickeln, der die Anforderungen der Studierenden erfüllt.

== Vorgehen
Für die Entwicklung wurde ein Vorgehensmodell gewählt, welches stark an den User-Centered-Design-Prozess anlehnt.
Dieses gewährleistet einen systematischen und menschzentrierten Ansatz.
Der Arbeitsprozess umfasst zwei Phasen: die Verstehen- und die Erkundungs-Phase, die nacheinander durchgeführt werden.
In jeder Phase werden mehrere Workshops abgehalten, um Inhalte zu erarbeiten, aufzubereiten oder zu analysieren.

Die *Verstehen-Phase* beinhaltet dabei die folgenden Workshops:

- *Scoping-Workshop:* Es werden Rahmenbedingungen festgelegt, potenzielle Probleme identifiziert und die Gruppe der Nutzenden initial definiert. Weiter werden mögliche Nutzungsabläufe definiert und Annahmen erarbeitet.
- *Research-Workshop:* Im Research-Workshop wird ein detaillierter Forschungsplan zur Validierung der im Scoping-Workshop erarbeiteten Inhalte aufgestellt. Hierbei liegt der Fokus auf den im Scoping-Workshop definierten Wissenslücken und kritischen Annahmen. Es werden Leitfäden für die Durchführung der gewählten Forschungsmethoden erstellt und danach die Erhebungen durchgeführt.
- *Synthese-Workshop:* Die durchgeführten Erhebungen werden ausgewertet und den im Scoping-Workshop definierten Annahmen gegenübergestellt. So wird eine neue Sicht auf die Problemstellung gewonnen, mit welcher sich die Aufgabenstellung validieren lässt. Neu identifizierte Probleme und Herausforderungen werden in den weiteren Workshops genauer beleuchtet.

Die *Erkundungs-Phase* umfasst die folgenden Workshops:

- *Ideation-Workshop:* Im Ideation-Workshop werden mithilfe verschiedener Kreativitätstechniken zahlreiche Ideen generiert.
- *Konzept-Workshop:* Im Konzept-Workshop werden die zuvor ausgearbeiteten Lösungsideen zu einem passenden Konzept weiterentwickelt, mit welchem in den Prototyp-Workshop gestartet werden kann.
- *Prototyp-Workshop:* Es werden eine Validierungsmap sowie die darin definierten Prototypen zur Validierung erstellt.
- *Validierungs-Workshop:* Es wird ein Usability Testkonzept erstellt, mit welchem der erstellte Prototyp getestet und validiert wird.

== Ergebnisse
Die Studienarbeit führte zur Entwicklung eines funktionalen #gls("hi-fi-pro", display: "High-Fidelity-Prototyps"), der die Grundlage für die Weiterentwicklung der Plattform darstellt.
Nachfolgend werden die validierten Funktionalitäten des Prototyps kurz zusammengefasst:

*Validierung der Planung*
- *Beschreibung:* Die Validierung der Planungsfunktionalität ermöglicht es den Studierenden, ihren individuellen Studienplan so zusammenzustellen, das dessen Studierbarkeit gewährleistet ist. Dabei werden insbesondere die Durchführungen, der Status sowie die Modulempfehlungen der einzelnen Module berücksichtigt. 
- *Validierung:* Die Funktionalität wurde als intuitiv bewertet. Lediglich die Nachvollziehbarkeit der vorgeschlagenen Aktionen im globalen Fehlerbereich wurde als verbesserungswürdig identifiziert. 
#figure(image("validierung76-40.6.png", width: 80%), caption: "Planvalidierung")

*Verwalten von Übertrittsmodulen*
- *Beschreibung:* Die Funktionalität ermöglicht es den Studierenden, Leistungen, die ausserhalb des Informatikstudiums erbracht wurden, in den Studienplan zu integrieren. Dabei wird zwischen angerechneten Modulen und externen Leistungen, wie beispielsweise das "Digicamp", unterschieden.
- *Validierung:* Die Funktionalität wurde als nicht intuitiv bewertet. Die Studierenden hatten Schwierigkeiten mit den Begrifflichkeiten und der Bedienung, welche durch zu viele Schritte und unklare Anweisungen verursacht wurden.

*Semesterbeschriftung*
- *Beschreibung:* Die Funktionalität ermöglicht es den Studierenden, auf einen Blick zu wissen, das wievielte Semester ein Semester ist, ohne nachzählen zu müssen.
- *Validierung:* Die Funktionalität wurde als intuitiv bewertet. Die Studierenden konnten die Semesterbeschriftung ohne Probleme interpretieren und fanden sie hilfreich.

*Berechnung der noch einzuplanenden ECTS pro Kategorie*
- *Beschreibung:* Die Funktionalität ermöglicht es den Studierenden, auf einen Blick zu sehen, wie viele #gls("ects") sie pro Kategorie noch einplanen müssen, um die Anforderungen der jeweilig geltenden Studienordnung zu erfüllen.
- *Validierung:* Die Funktionalität wurde als intuitiv bewertet. Die Studierenden konnten die Berechnung der noch einzuplanenden #gls("ects") pro Kategorie nachvollziehen und fanden diese hilfreich.

*Modul-Browsing nach Kategorie*
- *Beschreibung:* Die Funktionalität ermöglicht es den Studierenden, in der Suche nach Modulen diese gruppiert nach Kategorien einzusehen, um so eine bessere Übersicht zu erhalten.
- *Validierung:* Die Funktionalität wurde als intuitiv bewertet. Die Studierenden konnten die Modul-Browsing-Funktionalität nach Kategorie ohne Probleme nutzen und fanden sie hilfreich.
#figure(image("suche.jpg", width: 60%), caption: [Modul-Browsing nach Kategorie in der Suche, #gls("ce")])

*Direktes Hinzufügen von Modulen*
- *Beschreibung:* Die Funktionalität ermöglicht es den Studierenden, Module direkt aus den Bereichen "Vertiefungen" und "Übersicht der ECTS Punkte" in den Studienplan einzuplanen. Dabei werden die Module unter Berücksichtigung der Durchführungssemester jeweils ins nächstmögliche Semester eingefügt.
- *Validierung:* Die Funktionalität wurde als intuitiv bewertet. Die Studierenden konnten die direkte Hinzufügen-Funktionalität ohne Probleme nutzen und fanden sie hilfreich. Es wurde jedoch angemerkt, dass die Funktionalität noch verbessert werden könnte, indem die Studierenden die Möglichkeit erhalten, das gewünschte Semester für das Hinzufügen der Module auszuwählen.
#figure(image("ectsverti.png", width: 60%), caption: "Direktes Hinzufügen von Modulen, erweiterte ECTS-Berechnung")

*Verlinkung zur Studienordnungsbeschreibung*
- *Beschreibung:* Die Funktionalität ermöglicht es den Studierenden, direkt von der Plattform lost.university auf die entsprechende #gls("std") zu gelangen, um weitere Informationen zu den Modulen und Kategorien zu erhalten.
- *Validierung:* Die Funktionalität als intuitiv bewertet. Die Studierenden konnten die Verlinkung zur #gls("std") ohne Probleme nutzen und fanden sie hilfreich.

Die Ergebnisse der Studienarbeit zeigen, dass die Plattform lost.university durch das gewählte Vorgehensmodell erheblich verbessert werden kann.
Für die zukünftige Weiterentwicklung wird empfohlen, die validierten Funktionalitäten - mit Ausnahme der Verwaltung von Übertrittsmodulen - zu implementieren und die Plattform durch weitere Usability-Tests zu evaluieren, um die Benutzerfreundlichkeit kontinuierlich zu optimieren.