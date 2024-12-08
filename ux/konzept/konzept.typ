= Workshop: Konzept
Im Konzept-Workshop wurden die zuvor ausgearbeiteten Lösungsideen zu einem passenden Konzept weiterentwickelt.
Somit konnten bereits vor dem Prototyping mögliche Probleme und Widersprüche in den Lösungen identifiziert und behoben werden.

== Vorgehen
Da die Autorinnen bereits konzeptuell die vielverpsrechendsten Lösungsansätze identifiziert und diskutiert haben, wurde dieser Workshop von nur einer autorin durchgeführt.
Dabei hat eine Autorin die folgenden Artefakte erstellt:
- Keyscreens vor und nach den Änderungen
- Szenario
- User Story Map
- Reihenfolge Umsetzung Prototyp inkl. Arbeiten, Risiken und Wichtigem zu Design/Technik
- Mockups
Während der Erstellung dieser Artefakte hat die zweite Autorin bereits mit der Prototypentwicklung Phase 0: Datenaufbereitung & Abklärung begonnen.
Die erstellten Artefakte wurden anschliessend zusammen diskutiert und optimiert, um die bestmögliche Lösung zu finden.
Zur Erstellung der Mockups wurden Screenshots, Manipulationen der Webseite mit Hilfe der DevTools und das Tool Miro verwendet.

== Resultate des Workshops
Nachfolgend sind die wichtigsten Artefakte des Konzept-Workshops aufgeführt.

=== User Story Map
Die folgende User Story Map bildet den Ablauf des Semesterplanens mit den neu angestrebten Funktionen ab:

#figure(image("User-Story-Map.jpg"), caption: ["User Story Map"]);

Unterscheidungen zur Journey Map:
- Nutzende sehen direkt potenzielle Planungsfehler
- Nutzende sehen direkt die Semesternummer und müssen diese nicht mehr nachzählen
- Nutzende sehen direkt die noch nicht geplanten, fehlenden ECTS pro Kategorie statt die eingeplanten und noch nicht erreichten
- Über die Suche können Nutzende direkt weitere Informationen einsehen. Damit können Nutzende über die Suche auch nach Modulen "browsen", ohne sie direkt hinzufügen zu müssen, um deren Kategorie zu sehen. Folgende Informationen werden in der Suche bereitgestellt:
  - Kategoriezugehörigkeit eines Moduls
  - ECTS eines Moduls
  - Durchführungssemester eines Moduls
  - ob das Modul bereits geplant ist
- Weiter können Nutzende über die Suche keine Module im falschen Semester hinzufügen oder Module hinzufügen, die bereits eingeplant sind.
- Nutzende können im Bereich der ECTS-Übersicht jeweils Module der einzelnen Kategorien einsehen und direkt von dort hinzufügen.
- Nutzende können im Bereich der Vertiefungen dort angegebene Module direkt im Plan hinzufügen.
- Nutzende können direkt die Studienordnungsbeschreibung aufrufen, da diese in der ECTS-Übersicht verlinkt ist. Ist ein Startsemester gesetzt, wird die jeweils gültige Studienordnung angezeigt, ansonsten die aktuellste.
- Nutzende können angerechnete Leistungen, sei es ein Modul oder einfach angerechnete ECTS in Kategorien, eintragen. Diese werden in der ECTS-Übersicht berücksichtigt, jedoch nicht direkt im Plan angezeigt, da sie keinem Semester zugeordnet sind.

=== Szenario
Das folgende Szenario beschreibt den Ablauf des Semesterplanens mit den neu angestrebten Funktionen:

Es ist Montagabend, Felix sitzt gerade vor seinem Notebook zu Hause und sieht, dass die Anmeldephase 1 heute begonnen hat.
Um sich im neuen Semester für Module anzumelden, öffnet er den Semesterplaner, und kann ohne Umwege seine bereits erstellte Grobplanung konsultieren.

Felix überprüft, welche Module er für das nächste Semester bereits eingetragen hat und ob die Modulauswahl für das aktuelle Semester stimmt.
Dabei sieht er, dass im nächsten Semester ein Modul ein Problem aufweist.
Er wird darauf hingewiesen, dass es das Modul nicht mehr gibt, und kann es direkt mit dem Ablösemodul ersetzen, damit seine Planung studierbar ist. Dies führt er gleich aus.

Felix konsultiert nun die Erreichung der ECTS-Vorgabe in den einzelnen Kategorien.
Dabei sieht er, dass er in der Kategorie Mathematik und Physik noch 4 ECTS Punkte einplanen muss.
Er schaut sich Module der Kategorie gleich im Semesterplaner an und entscheidet sich für "Mathematical Foundations for Machine Learning".
Da er das Modul frühestens in zwei Semestern planen möchte, scrollt er nach oben zu der Semesterdarstellung und klickt im entsprechenden Semester auf "+", um nach dem Modul zu suchen.
Bei der Suche sieht er, dass das Modul nicht in dem von ihm gewählten Semester stattfindet, sondern jeweils im anderen.
Er wechselt zum nächsten Semester und sucht wieder nach dem Modul, um es hinzuzufügen.

Felix konsultiert als nächstes seine gewünschte Erreichung der Vertiefung Software Engineering.
Da fällt ihm auf, dass er noch ein Modul einplanen muss.
Da ihm in dieser Sektion der Seite eine Liste mit möglichen Modulen angezeigt wird, kann er direkt das vielversprechendste anklicken, um die externe Modulbeschreibung zu konsultieren.
Zufrieden mit der Beschreibung, fügt er es direkt von der Vertiefungssektion in seinen Plan ein.

Am nächsten Tag tauscht er sich an der OST mit befreundeten Studierenden über das Modul "Mathematical Foundations for Machine Learning" aus, um mehr Informationen bezüglich Aufwand und Leistungsnachweis zu erhalten.
Die Rückmeldungen sind positiv und passen vom Aufwand her in sein siebtes Semester.

Felix ruft später in einer Vorlesung seinen Plan sowie die SLCM-Modulanmeldeseite auf, um sich einzuschreiben.
Dabei fällt ihm auf, dass er für sein Cambridge Advanced Zertifikat ein Englisch-Modul angerechnet bekommen hat, welches er noch nicht im Plan abgebildet hat.
Er fügt das angerechnete Modul hinzu, um seine ECTS korrekt berechnen zu lassen.
Dabei kann er angeben, dass dies eine angerechnete Leistung ist.
Diese wird separat zu den geplanten Semestern aufgelistet.

Nun meldet er seine vier ausgewählten Module im SLCM an.

=== Keyscreens
Es wurden zwei Keyscreens erstellt: einer, welcher den Plan vor den Änderungen zeigt, und einer, welcher den Plan nach den Änderungen zeigt.

Unten ist der Keyscreen nach den Änderungen abgebildet.
Der Keyscreen vor den Änderungen ist im Anhang zu finden [TODO: erstellen und verlinken].
Dabei ist die folgende Legende zu beachten:
- *Blau:* Bereichsdefinition
- *Dunkelblau:* neue Bereichsdefinition
- *Grün:* Daten
- *Dunkelgrün:* vorgesehene neue Daten
- *Gelb:* Funktionen
- *Dunkelgelb:* vorgesehene neue Funktionen

#figure(image("Keyscreen-neu.jpg"), caption: ["Keyscreen mit neuen Bereichen und Funktionen"]);

=== Reihenfolge Umsetzung Prototyp
Die folgende Grafik zeigt die Reihenfolge der Umsetzung des Prototypen:

#figure(image("Reihenfolge-Umsetzung-Prototyp.jpg"), caption: ["Reihenfolge Umsetzung Prototyp"])

Zur systematischen Umsetzung wurde eine Reihenfolge festgelegt, in welcher die Funktionalitäten umgesetzt werden sollen.
Dies ermöglicht es, den Prototypen aufbauend zu entwickeln um dabei mögliche Probleme und Widersprüche in den Lösungen zu identifizieren und zu beheben.
Weiter wurde dabei eine erste Zeitschätzung vorgenommen.
Diese findet sich in der Grafik in den grauen Wolken.
Weiter wurden Risiken in der Umsetzung sowie vorgängige Entscheidungen zu Design und Technik festgehalten.

=== Mockups
Die Mockups wurden erstellt, um die Funktionalitäten des Prototypen zu visualisieren und um in der Entwicklung keine grossen Designentscheidungen treffen zu müssen.
Die folgenden Mockups zeigen die neu zu hinzufügenden Funktionalitäten:

==== Phase 1
*Nutzerführung*
In der folgenden beiden Grafiken sind die Mockups für die Nutzerführung abgebildet:
#figure(image("M1-Nutzerführung.jpg"), caption: ["Semester nummeriert"]);
#figure(image("M1-Module-hinzufügen.jpg"), caption: ["Module aus Vertiefungen direkt hinzufügen"]);
*Noch einzuplanende ECTS*
In der folgenden Grafik ist das Mockup für die noch einzuplanenden ECTS abgebildet:
#figure(image("M1-Planen-ECTS.jpg"), caption: ["Noch einzuplanende ECTS"]);
*Verlinkung ins SLCM*
In der folgenden Grafik ist das Mockup zur Verlinkung zur Studienordnungsbeschreibung abgebildet:
#figure(image("M1-STD.jpg"), caption: ["Link zur STD"]);

==== Phase 2
*Validierung Übersicht*
In der folgenden Grafik ist das Mockup der Validierung in der Übersicht abgebildet:
#figure(image("M2-Val-Übersicht.jpg"), caption: ["Validierung im Semesterplaner"]);
*Globaler Fehlerbereich*
In der folgenden Grafik ist das Mockup des globalen Fehlerbereichs abgebildet:
#figure(image("M2-globaler-Fehlerbereich.jpg"), caption: ["Globaler Fehlerbereich mit Aktionen"]);
*Constraints Enforcement*
In der folgenden Grafik ist das Mockup des Constraints Enforcement bei Modul- und Semesterhinzufügung abgebildet:
#figure(image("M2-Val-Constraints-Enforcement.jpg"), caption: ["Constraints Enforcement bei Modul- und Semesterhinzufügung"]);

==== Phase 3
*Suche*
In den folgenden beiden Grafiken sind die Mockups für die erweiterte Suche abgebildet:
#figure(image("M3-Suche-Übersicht.jpg"), caption: ["Suchdropdown in der Übersicht"]);
#figure(image("M3-Suche-Detail.jpg"), caption: ["Suchdropdown im Detail"]);

==== Phase 4
*Übertrittsmodule*
In der folgenden Grafik ist das Mockup der Übersicht für die Übertrittsmodule abgebildet:
#figure(image("M4-Übertritt-Übersicht.jpg"), caption: ["Platzierung und Anzeige der Übertrittsmodule"]);
*Übertrittsmodule hinzufügen*
In der folgenden Grafik ist das Mockup für das Hinzufügen von Übertrittsmodulen inklusive der Abfolge abgebildet:
#figure(image("M4-Übertritt-Modalflow.jpg"), caption: ["Modal und Flow für das Hinzufügen von Übertrittsmodulen"]);

== Fazit
Im Konzept-Workshop wurden die zuvor ausgearbeiteten Lösungsideen zu einem passenden Konzept weiterentwickelt, mit welchem direkt in die Prototypentwicklung gestartet werden konnte.