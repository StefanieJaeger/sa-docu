= Workshop: Prototyp
Im Prototyp-Workshop wurde in einem ersten Schritt eine Validierungs-Map ausgearbeitet.
Mit Hilfe dieser Map wurden die zuvor definierten Funktionalitäten mit den entsprechenden Methoden und Erfolgreich-Wenn-Kriterien zur Validierung verknüpft.
Die Grundlage zur Erstellung des Prototypen wurde bereits in den beiden vorherigen Workshops erarbeitet.
Es fand in diesem Workshop keine weitere Anpassung des Konzepts statt.

== Vorgehen
Der Prototyp-Workshop fand vom 16.11. bis zum 6.12.2024 statt und dauerte insgesamt 62 Stunden.
Dabei wurden die zuvor definierten Funktionalitäten in einem funktionalen High-Fidelity-Prototypen umgesetzt.
Die Umsetzung erfolgte gemäss den im Konzept-Workshop definierten Phasen, dabei wurde die Hauptarbeit von Stefanie Jäger übernommen.
Laura Thoma unterstützte bei der Umsetzung, indem sie die Validierungs-Map erstellte und die Ergebnisse der einzelnen Phasen testete und reviewte.

== Resultate
Die Resultate des Prototyp-Workshops sind der funktionale High-Fidelity-Prototyp sowie die Validierungs-Map, auf die im Folgenden eingegangen wird.

=== Funktionaler High-Fidelity-Prototyp
Den Source-Code des funktionalen Prototypen ist auf GitHub unter #link("https://github.com/StefanieJaeger/lost-university-web") zu finden. Der Source-Code für den Crawler und die veränderte Datenstruktur ist unter #link("https://github.com/StefanieJaeger/lost-university-data") zu finden.
Weiter ist der Prototyp auf der Webseite #link("https://sa.lost.university") erreichbar.
Die genauen Ausführungen zu vorgenommenen Änderungen, verwendeten Bibliotheken und weiteren technischen Details sind im Anhang unter @prototype-appendix zu finden.

Nachfolgend werden die wichtigsten neuen Funktionalitäten des High-Fidelity-Prototypen erläutert.

*Erweiterte Übersicht mit Validierung*
In der nachfolgenden Grafik ist die erweiterte Übersicht mit Validierung abgebildet:
#figure(image("Validierung-Übersicht.png"), caption: [Erweiterte Übersicht mit Validierung]);
Dabei sieht man die Umsetzung des Validierungs-Toogle, den globalen Fehlerbereich sowie die Kennzeichnung der Module, welche in der Validierung Fehler enthalten.
Dabei ist ersichtlich, dass Module, welche in der Vergangenheit liegen, lediglich mit einem Warnhinweis versehen sind, während Module, welche in der Zukunft liegen, mit einem Fehlerhinweis versehen sind.
Der Unterschied darin liegt einerseits im verwendeten Icon und andererseits in der Farbe der Umrandung.
Warnhinweise weisen lediglich ein Info-Icon auf, während Fehlerhinweise ein Ausrufezeichen-Icon aufweisen und das Modul zusätzlich rot umrandet ist.

Weiter wurde das Farbschema leicht überarbeitet, um rot als primäre Farbe für Fehler nutzen zu können.
Dafür wurde die Farbe der Kategorie "Mathematik und Physik" von rot auf dunkelblau geändert.

In der untenstehenden Grafik sieht man den globalen Fehlerbereich erweitert:
#figure(image("Validierung-ausgeklappt.png", width: 60%), caption: [Globaler Fehlerbereich erweitert]);

Pro Fehler wird eine Fehlermeldung angezeigt, inklusive vorhandener Aktionen, um den Fehler zu beheben.

In der nachfolgenden Grafik ist die Validierung ausgeschaltet:
#figure(image("Validierung-ausgeschaltet.png"), caption: [Validierung ausgeschaltet]);

Mehr Informationen zur Validierung können hier gefunden werden: @validation-logic

*Übertrittsmodule, ECTS-Übersicht, Vertiefungen*
Die nachfolgende Grafik zeigt die Änderungen in der unteren Hälfte des Semesterplaners:
#figure(image("ECTS-Angerechnet-Vert.png"), caption: [Änderungen in der unteren Hälfte des Semesterplaners: Übertrittsmodule, ECTS-Berechnung, Vertiefungen]);

Dabei wird ersichtlich, dass unterhalb der geplanten Semester die Übertrittsmodule angezeigt werden.
Weiter wird neben dem gesetzten Startsemester der Link zur Studienordnungsbeschreibung angezeigt.
In der ECTS-Übersicht wird neu angezeigt, wie viele ECTS noch einzuplanen sind, und nicht mehr, wie viele noch geplant sind.

In den Vertiefungen können Module neu über einen Button daneben direkt der Planung hinzugefügt werden.
Dabei wird das Semester angezeigt, in welches das Modul hinzugefügt wird, wie in der obigen Grafik ersichtlich ist.

Zusätzlich können Module der jeweiligen Kategorien über den "+"-Button gebrowst, gesucht und direkt hinzugefügt werden.
Dies zeigt die nachfolgende Grafik:
#figure(image("ECTS-Module.png", width: 80%), caption: [Module bestimmter Kategorien direkt browsen, suchen und hinzufügen]);

Die Übertrittsmodule werden ebenfalls validiert, wie die folgende Grafik zeigt:
#figure(image("Validierung-Übertritt.png"), caption:[Validierung der Übertrittsmodule]);
Dabei wird nach dem Hinzufügen eines Übertrittsmoduls die Validierung durchgeführt.
Diese beinhaltet das Überprüfen, ob das angerechnete Modul in der URL doppelt vorkommt.

*Hinzufügen von Übertrittsmodulen*
Die nachfolgenden Grafiken zeigen den Ablauf des Hinzufügens von Übertrittsmodulen in einem Modal:
#figure(image("Modal-1.png", width: 40%), caption: [Geöffnetes Modal nach dem Klick auf den Button zum Hinzufügen von Übertrittsmodulen]);
#figure(image("Modal-2.png", width: 40%), caption: [Suche nach einem Übertrittsmodul]);
#figure(image("Modal-3.png", width: 40%), caption: [Mehrere Übertrittsmodule auf einmal Hinzufügbar: Ausgewähltes Übertrittsmodul \"Blockchain\"]);
#figure(image("Modal-4.png", width: 40%), caption: [Da mehrere Module, angerechnete wie selbst erstellte, hinzugefügt werden können, werden zwei Schritte zum Hinzufügen durchgeführt. Hier wird das angerechnete Modul \"Blockchain\" dem Hinzufüge-Pool hinzugefügt]);
#figure(image("Modal-5.png", width: 40%), caption: [Selbst definierbares Übertrittsmodul, wie bspw. für das _Digicamp_ notwendig. Leere Ansicht]);
#figure(image("Modal-6.png", width: 40%), caption: [Ausgefülltes externe Eingabe inklusive Fehlermeldung.]);
#figure(image("Modal-7.png", width: 40%), caption: [Hinzufüge-Pool nach Eingabe eines angerechneten Moduls sowie einer externen Eingabe.]);

Nach dem Bestätigen des Hinzufüge-Pools werden die ausgewählten Module unterhalb der geplanten Semester angezeigt, wie bereits in der Grafik "Änderungen in der unteren Hälfte des Semesterplaners: Übertrittsmodule, ECTS-Berechnung, Vertiefungen" aufgezeigt wurde.

Mehr Informationen zu den Entscheidungen bezüglich der Übertrittsmodule können hier gefunden werden: @code-decisions

*Erweiterte Suche und Constraints Enforcement*
Die nachfolgenden Grafiken zeigen die erweiterte Suche mit zusätzlichen Informationen wie Module gruppiert nach Kategorien, ECTS, Durchführungssemester, sowie ob das Modul bereits eingeplant ist. Ebenfalls zeigen sie das eingebaute _Constraints Enforcement_ auf, indem das Hinzufügen von Modulen eingeschränkt wird:
#figure(image("Suche-initial.png", width: 40%), caption: [Suche ohne Suchbegriff]);
#figure(image("Suche-Kategorien.png", width: 40%), caption: [Suche mit Gruppierung von Modulen nach Kategorien]);

Die nachfolgende Grafik zeigt die Suche mit einem Suchbegriff:
#figure(image("Suche-Begriff.png", width: 40%), caption: [Suche mit Suchbegriff]);

Weiter wurde das Hinzufügen eines 15. Semesters eingeschränkt, wie die folgende Grafik zeigt:
#figure(image("Constraint-Semester.png", width: 80%), caption: [Constraints Enforcement beim Hinzufügen eines 15. Semesters inklusive Tooltip]);

Mehr Informationen zur Suche können hier gefunden werden: @search-logic

=== Validierungs-Map
Die Validierungs-Map wurde erstellt, um die zuvor definierten Funktionalitäten mit den entsprechenden Methoden und Erfolgreich-Wenn-Kriterien zur Validierung zu verknüpfen.
Ebenfalls wurden Unsicherheit, Einfluss sowie Aufwand der Prototyperstellung dazu festgehalten.
In der folgenden Grafik ist die Validierungs-Map abgebildet:

#figure(image("Validierungs-Map.jpg", width: 60%), caption: [Validierungs-Map])

== Fazit
Der Prototyp-Workshop war erfolgreich und führte zur Erstellung eines funktionalen High-Fidelity-Prototypen sowie einer Validierungs-Map, welche die Grundlagen für den nachfolgenden Validierungs-Workshop bildeten.