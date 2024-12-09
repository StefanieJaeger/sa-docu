#set heading(numbering: "1.")
#set page(numbering: "1")
#set text(lang: "de")
#show bibliography: set heading(numbering: "1.")

// 2.1 Titelblatt
#include "title-page.typ"

// TODO: Abstract und Management Summary ohne Nummerierung?

// 2.2 Abstract
// Der wissenschaftliche Abstract richtet sich an den Spezialisten auf dem entsprechenden Gebiet und beschreibt daher in erster Linie die (neuen, eigenen) Ergebnisse und Resultate der Arbeit. Der Umfang beträgt in der Regel eine halbe Seite (max. eine Seite) Text. Keine Bilder!
#include "abstract.typ"

// 2.3 Management Summary
// Das Management Summary (auch Lay Summary) richtet sich an ein breites Publikum und an das Management, welches in der Regel über keine Fachkenntnisse im bearbeiteten Thema verfügen. Das Management Summary soll kurz und verständlich beschreiben, worum es bei der Arbeit geht und welche Ergebnisse erzielt wurden. Die Sprache soll knapp, klar und stark untergliedert sein. Der Umfang beträgt in der Regel 2-3 (max. 5) Seiten. Bilder sind hier im Gegensatz zum Abstract erwünscht.
// Beispiel Gliederung für Management Summary:
// - Ausgangslage
// - Vorgehen & Technologien
// - Ergebnisse (ev. kleiner Ausblick)
#include "management-summary.typ"

// 2.4 Inhaltsverzeichnis
#outline(indent: 1em)
#pagebreak()

// 2.5 Glossar und Abkürzungsverzeichnis
// Kurze Erklärung der fachtechnischen oder projektspezifischen Begriffe, die nicht allgemein bekannt sind, sowie Ausschreibung der Arbeit verwendeten Abkürzungen.
#include "glossary.typ"

//#bibliography("bibliography.yml", style: "apa")

// 2.6 Ausgangslage / Problemstellung / Stand der Technik
// Beschreibung der Motivation für die Arbeit sowie der Schwächen der heutigen Praktiken und Lösungen.
// Beschreibung des Typs der Arbeit (Bsp. Fokus Lösungserstellung oder Machbarkeitsanalyse) sowie die Abgrenzung zu ähnlich gelagerten Arbeiten. Sie stellt die Aufgabe in einen grösseren Zusammenhang.

// -- DONE IN INTRO

// 2.7 Aufgabenstellung / Ziel der Arbeit
// Beinhaltet die Vision oder das Ziel der Arbeit. Grobe Zusammenfassung der von der Betreuungsperson gestellten Aufgabenstellung. Die konkrete Aufgabenstellung kommt in den Anhang. Konkrete, selbst ausgearbeitete oder feingranulare Anforderungen kommen ins Kapitel «Anforderungen».

// -- DONE IN INTRO

// 2.8 Rahmenbedingungen
// Angaben über die Art der Arbeit (Projekt-, Studien- oder Bachelorarbeit) sowie über das vorgesehene Zeitbudget und die ECTS-Vergütung.

// -- DONE IN INTRO

#pagebreak()

#include "intro/intro.typ"


#include "ux/ux.typ"

// 2.9 Systemkontext
// Beschreibt und analysiert den Systemkontext sowie die bestehende Infrastruktur. Beschreibung der fachlichen Domäne.
#pagebreak()
#include "is-state/is-state.typ"

// 2.10 Anforderungen (Requirements)
// Diese werden aus der Aufgabenstellung sowie Ihrer Analyse abgeleitet. Funktionale Anforderungen (FA) können zum Beispiel als Use Cases oder User Stories beschrieben werden. Alle relevanten nichtfunktionalen Anforderungen (NFA) und Qualitätsattribute sollten abgedeckt sein. Bleiben Sie kurz und sachlich und wenden Sie die erlernten Techniken aus den Software-Engineering Modulen an. Stellen Sie insbesondere sicher, dass Anforderungen (auch NFA) überprüfbar sind und plattform- und technologieneutral sind.

// 2.12 Vorarbeiten
// Bei Fortsetzungsarbeiten (auch von Ihnen selbst) muss klar erkenntlich sein, was in dieser Arbeit erstellt wird und was bereits durch die Vorgängerarbeit vorgegeben war.
// Stellen Sie sich folgende Fragen:
// • Was wurde in den Vorarbeiten erreicht, was fehlt noch (jedoch ohne Wertung)?
// • Worin unterscheidet sich Ihre Arbeit von den vorherigen?

// 2.13 Design / Architektur
// Beschreibung Ihrer Konzepte und Lösung sowie der Architektur. Bleiben Sie möglichst plattformneutral und technologieübergreifend. Begründen Sie Entscheide (auf welche anderen Lösungsoptionen haben Sie bewusst verzichtet und wieso?). Zeigen Sie auf, wie Qualitätsattribute und NFAs sichergestellt werden. Das Kapitel kann in Internes Design (Subsysteme, Komponenten, Klassen) und Externes Design (UI) unterteilt werden. Setzen Sie beispielsweise UML-Diagramme mit Erläuterungen ein und verzichten Sie wenn möglich auf Code-Listings (siehe Implementation).



// 2.15 Ergebnisse / Resultate
// Ergebnisse der Arbeit: Was wurde erreicht, was wurde nicht erreicht? Stellen Sie einen konkreten Bezug zu den Anforderungen (FA, NFA) her und verknüpfen Sie diese mit Ihren Ergebnissen. Bleiben Sie objektiv und nehmen Sie (noch) keine Wertung Ihrer Arbeit vor (siehe «Schlussfolgerungen»).

// 2.16 Schlussfolgerungen und Ausblick
// Ergebnisdiskussion: In der Schlussfolgerung werden die Ergebnisse reflektiert und von Ihnen bewertet. Somit wird die Zielerreichung gemessen (Abgleich mit «Aufgabenstellung» und «Ziel der Arbeit») und ein Vergleich mit anderen/vorherigen Lösungen hergestellt. Die Schlussfolgerungen bilden einen wichtigen Abschnitt eines Berichts und sollen daher sorgfältig ausgearbeitet sein.
// Zudem erfolgt ein Ausblick auf mögliche Weiterentwicklungen, allfällige Verbesserungen oder neue Fragenstellungen, die sich aus Ihrer Arbeit ergeben.
// Fragen, die Sie sich selbst stellen können:
// • Was wurde (Neues) erreicht?
// • Was wurde nicht oder noch nicht genügend gut erreicht?
// • Was bleibt noch zu tun?
// • Welche neuen Fragestellungen ergeben sich aus Ihrer Arbeit?
#pagebreak()
#include "schlussfolgerung.typ"
// 2.17 Projekt- und Zeitmanagement
// Das Projekt- und Zeitmanagement umfasst folgende Teile:
// • Vorgehen im Projekt (Prozess, Reviews, Workflows)
// • Projektplan (Gantt-Diagramm, Vergleich ursprüngliche Planung und effektive Ausführung)
// • Qualitätssicherung (Test-Philosophie, Definition-of-Done, CI/CD Pipelines …)
// • Risikoanalyse und Risikomanagement
// • Zeiterfassung: Stunden pro Woche, Stunden pro Person, Stunden pro Kategorie (Implementation, Doku, Meeting etc.). Bei Teamarbeiten sollte klar ersichtlich sein, wer für welchen Teil der Arbeit verantwortlich war und wieviel Zeit dafür aufgewendet hat.
#pagebreak()
#include("project-plan/project-plan.typ")

// 2.18 Literaturverzeichnis / Bibliography
// Im Literaturverzeichnis sind alle verwendeten Quellen (Bücher, Publikationen, URL, evtl. auch Hinweise auf Gespräche oder Interviews) aufgeführt. Für Referenzen aus dem Internet soll eine kommentierte und datierte URL angegeben werden (vermeiden Sie URLs direkt im Fliesstext der Arbeit). Verwenden Sie einen allgemein bekannten Zitierstil (z. B. APA oder MLA) und bleiben Sie konsistent.

#bibliography("bibliography.yml", style: "apa")

// 2.19 Abbildungs- und Tabellenverzeichnis, Code-Listings
// Nummerierte Verweise auf alle in der Arbeit vorkommenden Abbildungen, Tabellen und Listings (Codebeispiele) unter Angabe der entsprechenden Seitenzahl.
#pagebreak()
#outline(
  title: [Abbildungsverzeichnis],
  target: figure.where(kind: image),
)
#pagebreak()
// 2.20 Operationelle Hinweise
// Vor allem bei Softwareprojekten: Gehen Sie auf folgende Punkte ein (bei grösserer Dokumentation verweisen Sie auf den Anhang).
// • Verwendete SDK, IDE und Werkzeuge
// • Hinweise zu CI/CD
// • Installationsanleitung / Bedienungsanleitung
// • Test-Logs
// • Bei Systemen mit User Interfaces: Dokumentation der Usability Tests

#include "thanks.typ"

// appendix
// Im Folgenden sind Beispiele aufgeführt, was in den Anhang gehört (nur falls vorhanden und relevant):
// • Testreports, Usability Tests, Protokolle, weitere Artefakte
// • Codemetriken, Testabdeckung
// • Installationsanleitungen, Bedienungsanleitungen, API-Beschreibungen
// • Screenshots oder Wireframes des GUIs
// • Beispiele von Eingaben (Dateien, Kommandos) und der von Ihnen generierten Ausgaben
// • Die erhaltene Aufgabenstellung
// • Meeting-Protokolle (je nach dem, ggf. Hinweis, wo diese zu finden sind)*
// • Unterzeichnete Vereinbarungen*, Urheber- und Nutzungsrechte*
// • Eigenständigkeitserklärung (unterschrieben)*
// • Persönlicher Bericht (selbstkritische Reflexion der Studierenden zu ihren Erfahrungen bei der Arbeit)*
// • Projektpläne, Risikoanalysen, Zeiterfassung*
// * Beachten Sie, dass aus Datenschutzgründen keine persönlichen Daten (Unterschriften, E-Mail-Adressen, Telefonnummern) von Ihnen wie auch von Betreuungspersonen, Experten/innen, Industriepartnern oder sonstigen Personen in dem publizierten Bericht enthalten sein dürfen! Siehe dazu auch das offizielle Dokument «Informationen über die SA/BA Abgabe»
