= Workshop: Synthese
Aus Methoden kopiert:
Im Synthese-Workshop werden durchgeführte Erhebungen ausgewertet und die erstellten Proto-Artefakte in validierte Artefakte überführt.
Es wird eine Annahmen-Überprüfung durchgeführt und neue Erkenntnisse festgehalten.
Während der Überarbeitung der Proto-Artefakte wird eine neue Sicht auf die Problemstellung gewonnen, mit welchem sich die Aufgabenstellung validieren lässt.

== Vorgehen
Der Synthese-Workshop fand verteilt vom 23.10. bis zum 06.11.2024 statt.
Die Tagebuchstudie wurde separat ausgewertet und floss am 4.12.2024 in die Synthese ein.
Insgesamt wurden 27.5 Stunden für die Synthese der Forschungsergebnisse aufgewendet.
Davon entfielen 7.5 auf das nachträgliche Auswerten der Tagebuchstudie.
Als Grundlage für den Workshop dienten die Zusammenfassungen durchgeführten Contextual Inquiries und die chronologische Zusammenfassung des Vorgehens dieser, sowie die ausgewerteten Umfragen der Nutzungsgruppen und die technische Befragung.
Die Tagebuchstudie floss erst Anfang Dezember in die Synthese ein.
[TODO: Besser formulieren, sie fliesst ja nicht mehr ein, da wir ja von hier aus bereits weitergegangen sind. Sie bestätigt eher was wir hier erarbeitet haben bzw. widerlegt es nicht.]
Im Workshop wurden die Proto-Artefakte anhand der Forschungsergebnisse in validierte Artefakte überführt.
Dazu wurde persönlich vor Ort im Miro einsam und gemeinsam gebrainstormt, diskutiert und gemappt. 
Zusätzlich wurde eine Task Analysis erstellt, um die Aufgaben der Nutzenden besser zu verstehen und die Journey Map zu validieren.

== Workshop-Resultate
Die folgenden Artefakte wurden im Rahmen des Synthese-Workshops erstellt und dienen als Grundlage für die weiteren Workshops:

=== Validiertes Problem-Statement
#figure(image("artifacts/Val-Problem-Statement-personenlos.jpg"), caption: "Validiertes Problem-Statement");

==== Identifizierte Nutzende
Die Zielgruppe des Tools wurde angepasst: Es wurde bestätigt, dass ausschliesslich Studierende als Nutzende gelten.
Studienberatende zählen nicht mehr zur Zielgruppe.

==== Identifizierte Probleme
+ *Speicheroptionen und geräteübergreifender Zugriff:*
  - Der geräteübergreifende Zugriff auf den persönlichen Plan stellt kein Problem dar, da die derzeitige Speicherung im _LocalStorage_ und die Verwendung eigener Bookmarks von den Nutzenden als vorteilhaft angesehen werden.
  - Zusätzliche Speicheroptionen in Form eines Logins wurden zwar von einer Person gewünscht, jedoch sollte die aktuelle Speichermethode unbedingt beibehalten werden.
+ *Datenführung im SLCM:*
  - Die Datenführung im SLCM ist uneinheitlich. Dies liegt zum einen an der Fusion zur OST - Ostschweizer Fachhochschule, bei der drei Standorte mit unterschiedlichen Systemen und viel Legacy-Software zusammengeführt wurden.
+ *Neu erkannte Probleme:*
  - Die Suche ist umständlich: Der Fokus liegt nicht automatisch im Suchfeld, und das Suchfeld wird nach dem Hinzufügen von Elementen nicht geleert.
  - Die horizontale Übersichtlichkeit des Tools wird bemängelt. Bei vielen Semestern geht der Überblick schnell verloren.
  - Fehler beim Kopfrechnen der noch einzuplanenden ECTS können auftreten.
  - Der Aufwand eines Moduls ist für Nutzende nicht ersichtlich (Feedback durch Peers).
  - Die verfügbaren Features und neue Funktionen im Tool sind nicht sichtbar genug. Dadurch werden nicht alle Features aktiv genutzt oder überhaupt wahrgenommen (wie z.B. die Verwendung des _LocalStorage_).
==== Identifizierte Lösungsansätze
Die Lösungsansätze wurden erweitert, um die neu identifizierten Probleme zu adressieren:
+ *Geänderte Ansätze:*
  - Die bisher verwendete DataList-Komponente soll durch eine optimierte Suchkomponente ersetzt werden. Diese soll Best Practices berücksichtigen, z. B. durch automatischen Fokus im Suchfeld, ein leeres Suchfeld nach Nutzung sowie eine Sortierung der Module im Dropdown-Menü nach Kategorien.
  - Das Login wird entfernt, da es lediglich als zusätzliche Option gewünscht wurde.
+ *Bestätigte Ansätze:*
  - Visuelle Hinweise zu Abhängigkeiten und Durchführungen sollen integriert werden.
  - Module sollen nach Reglementen gruppiert werden.
  - Mehr Wissen über die Daten aus dem SLCM soll verfügbar gemacht werden; idealerweise durch eine direkte Anbindung, als Fallback aber auch durch das Bereitstellen von Direktlinks.
  - Die Modulliste in der Suche soll, wie bereits oben erwähnt, nach Kategorien sortiert werden.
+ *Neu identifizierte Ansätze:*
  - Die automatisierte Berechnung der noch einzuplanenden ECTS-Punkte soll ausgebaut werden, um den Nutzenden diese Informationen direkt anzuzeigen.
  - Peer-Feedback zu Modulen soll integriert werden.
  - Vergangene Semester sollen einklappbar gestaltet werden, um die Übersichtlichkeit zu verbessern.
  - Eine flexiblere Verwaltung der ECTS-Punkte soll ermöglicht werden, um effektiv belegte Module und angerechnete ECTS-Punkte abzubilden.
  - Es solle Release Notes für neue Features eingeführt werden, damit Nutzende über Änderungen informiert bleiben.

==== Metriken
Die Bewertungskriterien wurden angepasst, um die Ziele des Tools besser abzubilden.
+ *Geänderte Metriken:*
  - Die Anzahl der Aufrufe im Peak wird als Metrik entfernt, da es nicht darum geht, mehr Aufrufe zu generieren, sondern die bestehenden Aufrufe effizienter und nutzerfreundlicher zu gestalten.
  - Die Funktionalität der Suche im Chrome-Browser auf Android wurde aus den Metriken entfernt, da dies in das Testen der funktionellen Anforderungen (FR-Testing) überführt wurde. [TODO: glossar und abkürzung defnieren]
+ *Neu identifizierte Metriken:*
  - Zusätzlich zum FR-Testing wird ein separates Usability Testing eingeführt, um den Prototypen umfassend zu evaluieren.

=== Validierte Persona
#figure(image("artifacts/Val-Persona.jpg"), caption: "Validierte Persona");
Die Proto-Persona wurde überwiegend ergänzt, wobei wenig Löschungen und Verschiebungen vorgenommen wurden.

==== Probleme & Herausforderungen
*Geänderte Aspekte:*
+ *Modulsuche nach Kürzel:*
  - Die Modulsuche nach Kürzel funktioniert nicht generell nicht, sondern nur auf bestimmten Geräten und in einigen Browsern.
+ *Modulbrowsing nach Kategorie:*
  - Es wurde ergänzt, dass das Tool lost.university kein Modulbrowsing nach Kategorie, Anzahl der ECTS oder anderen Merkmalen ermöglicht. Dies schränkt die Nutzenden ein, die sich nicht nur an Modulnamen orientieren möchten.

*Bestätigte Probleme:*
  - Eine Konsultation des SLCM ist notwendig, um die Planung korrekt durchzuführen.
  - Viele Nutzende wissen nicht, welche Module verfügbar sind.

*Neu erkannte Probleme:*
+ *Planung und Unübersichtlichkeit:*
  - Die externe Konsultation des SLCM gestaltet die Planung unübersichtlich.
  Die Unübersichtlichkeit im SLCM gefährdet das Vertrauen der Nutzenden in die Korrektheit der dort hinterlegten Daten.
  - Die Liste der Module im Semesterplaner ist unübersichtlich, da sie alle Module alphabetisch sortiert anzeigt. Dies erschwert das Modulbrowsing, da kein Kontext wie Kategorie verfügbar ist.
+ *Module und Interessen:*
  - Häufig entsprechen die Module in den Musterstudienplänen nicht vollständig mit den persönlichen Interessen der Nutzenden überein.
+ *Semesterbezogene Informationen:*
  - Die Information, in welchem Semester ein Modul durchgeführt wird, muss separat im SLCM nachgeschaut werden, da der Semesterplaner diese Daten nicht enthält.
+ *ECTS-Berechnung:*
  - Die Anzahl der noch einzuplanenden ECTS pro Kategorie muss von den Nutzenden selbst ausgerechnet werden.

==== Aufgaben
*Geänderte Aspekte:*
+ *Planungsfokus:*
  - Der Fokus liegt primär auf der Planung des nächsten Semesters, insbesondere in den Anmeldephasen, das das Tool in diesem Zeitraum am häufigsten genutzt wird. Allerdings wird von wenigen Personen auch das gesamte Studium geplant. 
+ *Vertiefung als Ziel:*
  - Die Erreichung einer Vertiefung wird nicht mehr als Aufgabe betrachtet, sondern als Ziel oder Bedürfnis. Die damit verbundenen Planungsaufgaben wie das Planen einer oder mehrerer Vertiefungen bleiben erhalten.
+ *Erweiterung durch Austausch:*
  - Die Aufgaben während der Planung umfassen nun auch den Austausch mit anderen Studierenden, was vorher den Bedürfnissen zugeordnet war. Dies schliesst die folgenden Punkte ein:
    - Meinungen Dritter über ein Modul einholen, um ein umfassenderes Bild zu erhalten.
    - Den Arbeitsaufwand eines Moduls für das Semester und für die Prüfung abschätzen.
+ *Integration von Zielen:*
  - Die Berücksichtigung des Arbeitsaufwands eines Moduls, z.B. durch Projekte, Testate, Gruppenarbeit oder Prüfungen, soll die Erstellung eines Stundenplans ermöglichen, der mit dem aktuellen Arbeitspensum der Nutzenden vereinbar ist.
*Bestätigte Aufgaben:*
- Die noch benötigten ECTS pro Kategorie einsehen.
- Verschiedene Planvarianten ausprobieren.
- Den erstellten Plan speichern.

*Neu erkannte Aufgaben:*
+ *Entdecken und Anpassen:*
  - Interessante Module entdecken wird als wichtiger Bestandteil der Journey hervorgehoben.
  - Das Anpassen des Plans wurde als häufig durchgeführte Tätigkeit aufgenommen und als eigenständiger Schritt definiert.
+ *Semesterangebote prüfen:*
  - Es muss herausgefunden werden, welche Module in welchem Semester angeboten werden. Dies ist ein essenzieller erster Schritt in der Modulplanung, ohne den nicht studierbare Pläne entstehen. Die Nutzenden navigieren dazu z.B. auf die Modul-Anmeldeseite im SLCM.

==== Bedürfnisse & Ziele
*Geänderte Aspekte:*
+ *Externe Konsultation:*
  - Das Bedürfnis nach einer Planung ohne externe Konsultation wurde gestrichen, da dies praktisch nicht möglich ist und nicht den realistischen Anforderungen der Zielgruppe entspricht.
+ *Schnelle Änderungen und Varianten:*
  - Es wurde betont, dass Änderungen und mögliche Varianten des geplanten Studiums einfach und schnell eintragbar sein müssen. Dies ersetzt das Bedürfnis nach einem einfachen Abspeichern von Varianten, da dies eher eine Aufgabe darstellt.
+ *Austausch aufgeschlüsselt:*
  - Der Austausch mit Studienkolleg:innen wurde in spezifischere Bedürfnisse aufgeteilt:
    - Den Aufwand für Module, wie z.B. Projekte, Testate, Gruppenarbeiten oder Prüfungen, berücksichtigen.
    - Einen Stundenplan erstellen, der mit dem aktuellen Arbeitspensum vereinbar ist.
*Neu erkannte Ziele:*
- Das Studium erfolgreich abschliessen.
- Eine Vertiefung erreichen.
- Schnell einen Überblick über das bisherige Studium und die ECTS pro Kategorie erhalten.
- Nicht interessante Module des Semesterplaners mit spannenderen Modulen austauschen.

[TODO: Zitat Päde einfügen vom ende der CI mit stress als tz studi und schnelle planung]

[Aus CI 1 Protokoll]
"[SLCM] ist ehrlich gesagt zu mühsam, um Module zu finden.
Ich werde von der Liste der anmeldbaren Module in Anmeldephase 1 erschlagen, man kann diese auch nicht filtern.
Ich würde z.B. gerne nach Kategorien, Thema oder den empfohlenen Modulen filtern können.
Dasselbe mit der Liste der Kategorien und Module bei der Studienordnungsbeschreibung.
Man ist auf sich allein gestellt, vor allem als Teilzeitstudent, da man nicht so viel Zeit hat und immer schauen muss, wie man die ganze Arbeit in die wenige Zeit reinquetschen kann."

=== Validierte Journey Map
Die Journey Map wurde angepasst: Der Schritt „Austausch“ wurde nach hinten verschoben, da er oft erst nach einer ersten Recherche stattfindet.
Während Austauschsituationen auch ausserhalb der Journey auftreten, stehen Recherchen zu Modulen im SLCM typischerweise vor irgendwelchen Recherchen im Semesterplaner.
Dies liegt daran, dass das SLCM umfassendere Informationen bietet, während der Planer als Recherchegrundlage hauptsächlich Modulverlinkungen, Vorlagen der MSPs sowie Module für Vertiefungen enthält.

Die validierte Journey Map fasst die verschiedenen Schritte der Planung sowie die damit verbundenen Beobachtungen (Findings, grün), Erkenntnisse (Insights, dunkelgrün) und Verbesserungspotenziale (Opportunity Areas, rosa) zusammen und dient als Basis für die Optimierung der Nutzererfahrung.
#figure(image("artifacts/Val-Journey-Map-ganz.jpg"), caption: "Validierte Journey Map inklusive Findings, Insights und Opportunity Areas");

=== Task Analysis
Aus den gesammelten Erkenntnissen aller Erhebungsmethoden wurde eine Task Analysis angelehnt an [https://www.nngroup.com/articles/task-analysis/] erstellt.
Die untenstehende Grafik "Task Analysis"[Verlinken] zeigt die einzelnen Schritte, die Nutzende während der Planung des nächsten Semesters in den Anmeldephasen 1 und 2 durchlaufen.

#figure(image("artifacts/Task-Analysis.jpg"), caption: "Task Analysis");

=== Funktionelle Anforderungen
Neue, funktionelle Anforderungen konnten aus den Erkenntnissen der Synthese abgeleitet werden. Diese sind in der folgenden Tabelle aufgeführt:

[TODO: Tabelle erstellen, siehe wip auf Miro]

== Fazit

[TODO: Fazit schreiben]
