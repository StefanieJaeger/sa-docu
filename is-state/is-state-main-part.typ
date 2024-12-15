#import "@preview/glossarium:0.4.1": gls, glspl
= Vorarbeiten <is-state>
In diesem Kapitel wird der Ist-Zustand der Applikation vor Beginn der Studienarbeit beschrieben.
Dabei wird auf die Technologien und das Hosting, die Datenstruktur und die Architektur eingegangen.
Die bestehenden Funktionalitäten sind im Anhang unter @is-state-appendix-features als User Stories beschrieben.
Ebenfalls im Anhang findet sich eine Liste unter @is-state-appendix-bugs mit den bereits vor Beginn dieser Arbeit bestehenden Problemen und Bugs.

Vor Beginn der Studienarbeit wurde mit dem Haupt-Maintainer und Owner des Repository im Scoping-Workshop @scoping vereinbart, dass der identifizierte Tech-Stack unverändert bleiben soll.

== Technologien und Hosting
Das ursprüngliche Projekt, auf welchem diese Studienarbeit aufbaut, kann als öffentliches GitHub Repository unter: #link("https://github.com/lost-university/web") eingesehen werden.

Die Applikation selbst ist eine Single-Page-Webanwendung, entwickelt mit Vue.
Anstelle von JavaScript wird dabei TypeScript verwendet.
Die Icons stammen von #gls("fontawesome"), während das Styling überwiegend mit #gls("tailwind") umgesetzt wird.
Als Build-Tool kommt #gls("vite") zum Einsatz.

Die Applikation wird über #gls("githubPages") gehostet.
Da sie lediglich eine SPA ohne Backend ist, entfallen somit jegliche Kosten für das Hosting.
Anstelle einer Datenbank wird das Data Repository verwendet: #link("https://github.com/lost-university/data").

== Datenstruktur
Die Daten für die Applikation werden von einem Python-Crawler gesammelt, verarbeitet und anschliessend als verschiedene JSON-Dateien im Data Repository abgelegt.
Dieser Vorgang wird einmal zu Beginn jedes Semesters manuell durchgeführt, um die Daten auf Spezialfälle zu prüfen, welche manuell nachbearbeitet werden müssen.

Dabei werden die Daten von den öffentlich zugänglichen Endpunkten von #link("https://studien.ost.ch") bezogen.
Der Crawler steigt dabei bei den einzelnen #glspl("std") des Studiengangs Informatik ein.
Dort erhält er Informationen zu den geltenden Kategorien, benötigten #glspl("ects") und den möglichen Spezialisierungen und arbeitet sich von dort aus durch die verschiedenen Module durch.
Die von den Endpunkten gelieferten Datenstrukturen werden im Anhang unter @is-state-appendix-data genauer beschrieben. 

Der Ablauf der Abfragen wird im Anhang unter @is-state-appendix-crawler genauer beschrieben.
Ebenfalls im Anhang zu finden ist das vom Crawler generierte JSON-Datenmodell zu den Modulen, Kategorien und Spezialisierungen.

== Architektur
Die bestehende Architektur der Anwendung wird im Folgenden unter Verwendung der C4-Diagrammstruktur dargestellt.
Da der zugrunde liegende Code nicht im Detail dokumentiert wird, beschränkt sich die Darstellung in den folgenden Grafiken auf die ersten drei Ebenen der C4-Diagrammstruktur.

#figure(image("structurizr-System.png", width: 60%), caption: [C4 Diagram, Level Context]) <c4_context>
#figure(image("structurizr-Containers.png", width: 80%), caption: [C4 Diagram, Level Containers]) <c4_containers>
#figure(image("structurizr-Data.png", height: 50%), caption: [C4 Diagram, Level Component, Data]) <c4_component_data>
#figure(image("structurizr-Web.png", width: 80%), caption: [C4 Diagram, Level Component, Web]) <c4_component_web>