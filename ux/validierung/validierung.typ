#show figure: set block(breakable: true)

= Workshop: Validierung
Im Validierungs-Workshop wurden die zuvor definierten Validierungsmethode "Usability-Tests" vorbereitet und durchgeführt, um die Eignung der gewählten Lösungskonzepte zu überprüfen.
Die Ergebnisse wurden in Kontrast zu den ursprünglich definierten Annahmen gestellt um zu überprüfen, inwiefern das erarbeitete Lösungskonzept die gestellten Anforderungen erfüllt.
Dieses Vorgehen basiert auf dem von #cite(<cuxd>, form: "prose") definierten CUXD-Vorgehensmodell.
Auf eine weitere Iteration der Erkundungsphase im negativen Fall wurde aufgrund der begrenzten Zeit verzichtet.

== Vorgehen

Der Validierungs-Workshop fand vom 3.12. bis zum 8.12.2024 statt.
Dabei wurden die Usability-Tests vorbereitet, durchgeführt und ausgewertet.
Das Ziel der Auswertung war es, vorliegende Unzulänglichkeiten im erarbeiteten Lösungskonzept zu identifizieren sowie Hinweise auf dessen Stärke zu erhalten.

Die Testpersonen für die Usability Tests wurden anhand der initial durchgeführten Umfragen gewählt.
5 Testpersonen hatten sich innerhalb des Zeitraumes für einen Test zur Verfügung gestellt.
Mit jeder Person wurde ein Termin an 45 Minuten vereinbart, in dem der Usability Test durchgeführt wurde.
Laut dem Buch [todo] sollten mit 5 Testpersonen mindestens 55%, durchschnittlich jedoch 85.55% der Probleme abgedeckt werden.
// (Buch S. 241)

Der Testperson wurde jeweils ein Dokument ausgehändigt, welches eine Einleitung und die Aufgaben enthielt.
Das ausgehändigte Dokument kann hier [TODO] gefunden werden.

Die Szenarien waren an einer normalen Interaktion mit dem Semesterplaner orientiert und sollten diese möglichst gut abdecken.
Die Protokolle der Tests können hier [TODO] gefunden werden.

== Resultate des Workshops

=== Resultate der Usability Tests

Die Auswertung ist an das Kapitel "Usability Testing" aus dem Buch angelehnt.

Nachfolgend sind alle Usability Probleme, die im Test aufkamen, dokumentiert.
Sie erhalten je eine ID, um eine spätere Referenzierung zu vereinfachen.

Ihr Impact wird daran gemessen, wie gross ihre Auswirkung auf den User ist.
1 steht für eine Unschönheit, die aber das Gelingen der Aktion nicht weiter beeinflusst.
2 steht für eine leichte Verwirrung oder Unsicherheit beim User, seit dies durch Unklarheit oder eine Abweichung vom erwarteten Ablauf.
3 steht für einen grossen Einfluss, der die Nutzenden von der Benutzung der Applikation abhalten könnte. Sei dies durch einen Fehler oder durch Auslösen von Frustration.

Dazu wird die Anzahl mit dem Impact multipliziert und anschliessend durch die gesamte Anzahl Testpersonen dividiert.
Was in dieser Formel resultiert: $("Anzahl" * "Impact") / 5$
Der Schweregrad kann geringfügig (0), schwer (1) oder kritisch (2) sein.

#{
  let problems = (
    ("Übertritt - Close Button fehlt bei Modal", "2", "2", $(2 * 2) / 5 #sym.approx 1$),
    ("Übertritt - Unnötige Klicks zur Erfassung", "4", "3", $(4 * 3) / 5 #sym.approx 2$),
    ("Übertritt - Eindeutige Abgrenzung der Tabs fehlt", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
    ("Übertritt - Unklar, dass mehrere Kategorien wählbar sind", "4", "3", $(4 * 3) / 5 #sym.approx 2$),
    ("Übertritt - Modal mit \"+\" Öffnen ist unklar", "2", "2", $(2 * 2) / 5 #sym.approx 1$),
    ("Übertritt - Begriff \"Übertritt\" ist unklar", "3", "2", $(3 * 2) / 5 #sym.approx 1$),
    ("Übertritt - Darstellung der Übertrittsmodul ist unschön", "2", "1", $(2 * 1) / 5 #sym.approx 0$),

    ("Hinzufügen über Kategorie - Option für spätere Semester fehlt", "4", "2", $(4 * 2) / 5 #sym.approx 2$),
    ("Hinzufügen über Kategorie - Anzeige anderer Kategorien ist unnötig", "2", "1", $(2 * 1) / 5 #sym.approx 0$),

    ("Hinzufügen über Vertiefung - Option für spätere Semester fehlt", "4", "2", $(4 * 2) / 5 #sym.approx 2$),

    ("Validierung - Tooltip erscheint verzögert", "3", "2", $(3 * 2) / 5 #sym.approx 1$),
    ("Validierung - Übertrittsmodul fehlt in der globalen Fehlermeldung", "2", "2", $(2 * 2) / 5 #sym.approx 1$),
    ("Validierung - Folgen von Aktionen in der globalen Fehlermeldung sind zu unklar", "3", "2", $(3 * 3) / 5 #sym.approx 2$),
    ("Validierung - Ort des fehlerhaften Moduls ist unklar", "1", "2", $(1 * 2) / 5 #sym.approx 0$),

    ("Semester - Unterscheidung zwischen aktuellem, vergangenem und zukünftigem Semester ist unklar", "3", "2", $(3 * 2) / 5 #sym.approx 1$),
    ("Semester - Vergangene Semester nehmen unnötig Platz ein", "1", "1", $(1 * 1) / 5 #sym.approx 0$),
    ("Semester - Reihenfolge von Semestername und Semesternummer ist unklar", "1", "2", $(2 * 1) / 5 #sym.approx 0$),

    ("Suche - Informationen sind unnötig", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
    ("Suche - Suche nach Name einer Kategorie, anstatt scrollen oder zuklappen, fehlt", "1", "3", $(1 * 3) / 5 #sym.approx 1$),
    ("Suche - Informationen im Edge teils unschön", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
    ("Suche - Informationen zum Modul sind zu klein", "1", "2", $(1 * 2) / 5 #sym.approx 0$),

    ("Kategorie - Anzahl offener geplanter ECTS fehlt", "1", "1", $(1 * 1) / 5 #sym.approx 0$),
    ("Kategorie - Button unschön bei Progressbar", "2", "1", $(2 * 1) / 5 #sym.approx 0$),
    ("Kategorie - Farbe einer Kategorie ist ohne Fortschritt unklar", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
    ("Kategorie - Namen der Kategorien teils unklar", "1", "2", $(1 * 2) / 5 #sym.approx 0$),

    ("Studienordnung - Name der Studienordnung fehlt", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
  )

  let cells = ("ID", "Name", "Anzahl betroffene Testpersonen", "Impact", "Schweregrad")

  for (i, el) in problems.enumerate() {
    cells.push("P" + str(i + 1))
    cells += el
  }

  figure(
    table(
      columns: 5,
      ..cells
    ),
    caption: ["Alle Probleme aus dem Usability Testing"]
  )
}<problems>

3 neue Features wurden von fast allen Testpersonen als sehr positive Ergänzung erwähnt.
Dies wäre die Validierung, die neuen Farben und die Möglichkeit zur Erfassung von Übertrittsmodulen.

Anhand der Protokolle wurde die Erfüllung der Wissensziele ermittelt.
Ein Wissensziel gilt als nicht-erfüllt, sollten 2 oder mehr Probleme stärkere Probleme haben oder sollte mindestens eine Person gänzlich stecken bleiben?

#figure(table(
  columns: 3,
  [Wissensziel], [Erfüllt?], [Erläuterung zur Erfüllung],
  [Erkennt Testperson, dass sie die Zahlen ablesen kann und nicht zählen muss?], [Ja], [],
  [Ist die neue Anzeige der ECTS pro Kategorie selbsterklärend?], [Ja],[],
  [Wird die Verlinkung zur Studienordnung genutzt?], [Ja],[Einer Testperson war die Studienordnung gar kein Begriff, sie haderte deshalb mit der Aufgabe.],
  [Ist der Zusammenhang des Studiumsstarts und der Verlinkung selbsterklärend?], [Ja],[],
  [Ist das Hinzufügen von Modulen über eine Kategorie verständlich?], [Ja],[],
  [Ist das Suchen nach einem Modul und dessen Kategorie-Zuordnung in der Suche verständlich?], [Ja],[],
  [Ist das Hinzufügen von Modulen über eine Vertiefung verständlich?], [Ja],[],
  [Ist das Hinzufügen von Module in einem bestimmten Semester verständlich?], [Ja],[],
  [Ist die Gruppierung der Module nach Kategorie in der Suche verständlich?], [Ja],[Eine Testperson versuchte nach dem Namen der Kategorie zu suchen, da das wiederholte Zuklappen zu mühsam war.],
  [Ist die direkte Suche nach einem Modul in der Suche verständlich?], [Ja],[],
  [Ist eine Nicht-Auswählbarkeit in der Suche und deren Grund klar?], [Ja],[],
  [Ist die Verknüpfung von angerechneten Modulen zu Übertrittsmodulen klar?], [Ja],[],
  [Ist die Erfassung von angerechneten Modulen selbsterklärend?], [Nein],[Das Erfassen eines angerechneten Moduls über mehrere Buttons war verwirrend oder mühsam.],
  [Ist die Verknüpfung von externen Leistungen zu Übertrittsmodulen klar?], [Ja],[],
  [Ist die Erfassung von externen Leistungen selbsterklärend?], [Nein],[Das Erfassen einer externen Leistung über mehrere Buttons war verwirrend oder mühsam. Die Möglichkeit mehrere Kategorien auswählen zu können war nicht offensichtlich.],
  [Ist die Darstellung von Übertrittsmodulen verständlich?], [Ja],[Eine Testperson wünschte sich eine andere Platzierung der Übertrittsmodule und eine Beschriftung der ECTS.],
  [Wird das Prinzip der Validierung verstanden?], [Ja],[],
  [Ist der Fehler bei doppelten Modulen (Plan und Übertritt) verständlich?], [Ja],[Fehler bei Übertrittsmodulen werden nicht in der globalen Meldung angezeigt. Tooltip bei Übertrittsmodulen ist nicht explizit genug.],
  [Ist der Fehler bei einem Modul im falschen, offenen Semester verständlich?], [Ja],[],
  [Ist der Fehler bei einem inaktiven Modul in einem offenen Semester verständlich?], [Ja],[],
  [Ist der Hinweis bei einem Modul im falschen, vergangenen Semester verständlich?], [Ja],[Hinweise wurden teils ignoriert.],
  [Ist der Hinweis bei einem inaktiven Modul in einem vergangenen Semester verständlich?], [Ja],[Hinweise wurden teils ignoriert.],
  [Ist der Hinweis bei einem Modul, das vor oder ohne seine empfohlenen Modulen geplant ist, verständlich?], [Ja],[Hinweise wurden teils ignoriert.],
  [Konnten alle Fehler behoben werden, sei dies über den Plan oder die Meldung?], [Ja],[],
  [Wurde erkannt, dass die Validierung auch abgeschaltet werden kann?], [Ja],[],
), caption: ["Alle Wissensziele und deren Erreichung"])<wissensziele>

=== Erkenntnisse
Folgende Probleme haben den Schweregrad 2 erreicht und sollten somit bei der Umsetzung der Lösungsvorschläge priorisiert werden.

- *P2* - "Übertritt - Unnötige Klicks zur Erfassung"
  - *Beschreibung:* Für das Erfassen von angerechneten Modulen und externen Leistungen sind zu viele Klicks nötig, spezifisch Button-Klicks. Ein erfasster Eintrag wird durch "hinzufügen" zuerst einer Liste hinzugefügt, welche dann gespeichert werden kann. Da die Testpersonen jedoch nur einen Eintrag aufs Mal erfassten, resultierte dies für sie in zusätzlichen, als unnötig wahrgenommenen, Schritten. 
  - *Lösungvorschlag:* Eine potentielle Lösung kann in @P2_P4 gesehen werden. Neu kann nur noch ein Übertrittsmodul gleichzeitig erfasst werden. Das angerechnete Modul oder die erfasste Leistung kann jedoch über nur einen "Speichern" Button dem Plan hinzugefügt werden. Dafür entfällt die Liste an Übertrittsmodulen unterhalb der Tabs.
- *P4* - "Übertritt - Unklar, dass mehrere Kategorien wählbar sind"
  - *Beschreibung:* Beim Erfassen einer externen Leistung können mehrere Kategorien gewählten werden, dies wurde jedoch selten getan. Die Unklarheit kam teils davon, dass die Möglichkeit einer doppelten Kategoriezuteilung eines Moduls nicht bekannt war. Teils aber auch davon, dass das Multiselect nicht als ein solches wahrgenommen wurde.
  - *Lösungvorschlag:* Eine potentielle Lösung kann in @P2_P4 gesehen werden. Das Label "Kategorien" hat neu einen kleinen Hinweistext "Mehrfachauswahl". Das Multiselect erhält ein Caret, um es klarer als ein solches zu kennzeichnen. In der Liste des Multiselects erhält jeder Eintrag eine leere Checkbox oder eine Checkbox mit Haken, um die Mehrfachauswahl nochmals klarer zu machen.
- *P8* - "Hinzufügen über Kategorie - Option für spätere Semester fehlt"
  - *Beschreibung:* Beim Hinzufügen eines Moduls über eine Kategorie wird dies automatisch in das nächstmögliche Semester eingeplant. User wünschten sich jedoch oft, dass Modul noch etwas später einplanen zu können, anstatt es im Nachhinein verschieben zu müssen.
  - *Lösungvorschlag:* Eine potentielle Lösung kann in @P8_P10 gesehen werden. Ein Eintrag in der Suche enthält neu nur noch die Durchführung, nicht mehr das nächstmögliche Semester. Ein Klick auf einen Eintrag öffnet das Modal.
- *P10* - "Hinzufügen über Vertiefung - Option für spätere Semester fehlt"
  - *Beschreibung:* Beim Hinzufügen eines Moduls über eine Vertiefung kann lediglich das nächstmögliche Semester gewählt werden. User wünschten sich jedoch oft, dass Modul noch etwas später einplanen zu können, anstatt es im Nachhinein verschieben zu müssen.
  - *Lösungvorschlag:* Eine potentielle Lösung kann in @P8_P10 gesehen werden. Der Button bei einem Modul heisst neu "planen". Ein Klick auf einen Button öffnet das Modal.
- *P13* - "Validierung - Folgen von Aktionen in der globalen Fehlermeldung sind zu unklar"
  - *Beschreibung:* Beim Lösen von Fehlern im Plan über die globale Fehlermeldung war Usern oft nicht ganz klar, welche Änderungen eine Aktion nun genau mit sich zieht.
  - *Lösungvorschlag:* 3 potentielle Lösungen können in @P13-1, @P13-2 und @P13-3 gesehen werden. In einer weiteren Iteration könnte eine der Lösungen gewählt oder eine neue Kombination erarbeitet werden.

Erfreulich zu sehen ist, dass diese 5 Probleme auch die nicht erfüllten Wissensziele abdecken.
Mit deren Behebung wären diese somit höchstwahrscheinlich erfüllt.

Nachfolgend sind die restlichen 22 Probleme nach der Art des Problems gruppiert.

*Etwas ist unklar*

Davon betroffene Probleme: P4, P5, P6, P11, P13, P14, P15, P17, P25.

Ein passender Lösungsansatz wäre hier das Ergänzen von kurzen Infotexten, kleinen Hinweisen, farblichen Markierungen und besseren Tooltips.

*Etwas fehlt*

Davon betroffene Probleme: P1, P3, P8, P10, P12, P19, P22, P26.

Ein passender Lösungsansatz wäre hier das Ergänzen des fehlenden Elements.

*Etwas ist unnötig*

Davon betroffene Probleme: P2, P9, P16, P18.

Ein passender Lösungsansatz wäre hier das entfernen der unnötigen Elemente. Gegebenenfalls kann dies durch eine Einstellung im Semesterplaner gesteuert werden, um eine höhere Anpassbarkeit anzubieten.

*Etwas ist unschön*

Davon betroffene Probleme: P7, P20, P23.

Ein passender Lösungsansatz wäre hier das Verschönern der betroffenen Bereiche. Sei dies durch bessere Kompatibilität mit diversen Browsern oder einer ausgewogenerem Ausrichtung.

*Zu kleine Informationen*

Davon betroffene Probleme: P21.

Ein passender Lösungsansatz wäre hier eine grössere Darstellung der Informationen, sei dies dauerhaft oder steuerbar durch eine Einstellung im Semesterplaner.

==== Lösungsvorschläge

#figure(image("P2_P4.jpg"), caption: ["Lösungsvorschlag für P2 und P4"])<P2_P4>
Wie bereits bei P2 und P4 erwähnt, fokussiert sich dieser Lösungsvorschlag auf diese 2 Probleme. Er bietet jedoch auch eine Lösung für 3 weitere Probleme an.
- P1: Der "Abbrechen" Button bietet einen offensichtlichen Weg zur Schliessung des Modales an.
- P3: Die Tabs werden durch Radio Options ersetzt.
- P6: Der Begriff "Übertrittsmodul" wird in einem Tooltip für das "?" Icon erklärt.
Weiter enthält die Lösung einen kleinen Hinweistext pro Option, der "Speichern" Button ist disabled, bis ein Modul gewählt oder die Felder für eine Leistung korrekt ausgefüllt sind, ein Tooltip für das "?" Icon beim Name enthält einen Hinweis zur maximalen Länge und zu nicht-erlaubten Zeichen.
Wir empfehlen zudem, einen Workshop mit Studierenden zu machen, um ein gutes Wording für die Hinweistexte, Tooltips und den gesamten Bereich generell zu finden. 

#figure(image("P8_P10.jpg"), caption: ["Lösungsvorschlag für P8 und P10"])<P8_P10>
Das Modal referenziert das Modul, bietet ein Dropdown für ein Semester an und hat "Abbrechen" und "Einfügen" Buttons. Das Dropdown enthält alle zukünftigen Semester, in denen das Modul eine Durchführung hat, bis zum 14. Semester. Das nächstmögliche Semester ist vorausgewählt. Der Name des Moduls verlinkt zu dessen Modulbeschreibung im SLCM.

#figure(image("P13-1.jpg"), caption: ["Lösungsvorschlag 1 für P13"])<P13-1>
In dieser Lösung erhalten die Buttons für Aktionen zur Behebung eines Problems mehr Text und passende Icons. Die Modulnamen sollten neu ausgeschrieben werden.
Diese Lösung bringt mehr Klarheit über die Aktionen mit sich. Jedoch resultiert sich auch in sehr langen Buttons, was wiederum als ungewohnt wahrgenommen werden könnte.

#figure(image("P13-2.jpg"), caption: ["Lösungsvorschlag 2 für P13"])<P13-2>
In dieser Lösung werden die Aktionen für "Nachfolger einplanen", "verschieben" und "Duplikate entfernen" in Modale ausgelagert. Die Modale enthalten mehr Text und Optionen. "Nachfolger einplanen" bietet neu die Wahl eines Semesters und die Buttons "planen" und "planen und ersetzen" an. "Verschieben" erlaubt ebenfalls die Wahl eines Semesters. "Duplikate entfernen" erlaubt die Auswahl des Duplikates, welches nicht entfernt werden soll. Die Vorauswahl aller Dropdowns bleibt dabei der gleiche Wert, welcher schon zuvor in der Fehlermeldung empfohlen wurde. 
Diese Lösung bringt mehr Klarheit und Kontrolle für den User. Sie führt jedoch auch zu mehr Klicks, wobei die Fehlermeldung das Ziel hat, die Fehlerbehebung zu vereinfachen.

#figure(image("P13-3.jpg"), caption: ["Lösungsvorschlag 3 für P13"])<P13-3>
In dieser Lösung erhält jede Aktion eines Moduls einen Unterpunkt. Der Unterpunkt beschreibt die Aktion genauer und bietet einen Button mit passendem Icon an.
Diese Lösung erklärt die Aktionen und behält dabei die Buttons klein, was diese besser als solche ersichtlich macht. Die Fehlermeldung muss dafür höher gestaltet werden und könnte somit in ausgeklapptem Zustand mehr Informationen als zuvor verdecken.

=== Fazit

In einer nächsten Erkunden-Iteration könnte mehr auf die Probleme der Art "Etwas ist unklar" eingegangen werden, da diese am häufigsten auftauchten.
Die 5 Probleme des Schweregrades 2 haben dabei eine höhere Priorität.
Die Lösungen zu den Problem sollten in einem Konzept-Workshop vereinheitlicht werden.

// todo: evtl als Fazit, dass unseri Wissesziel nit alles abdeckt hend? Drum hend mer Problem, wo zu keim ghöre. ZB Ob d Aktione us de globale Meldig verständlich sind.
// Bogen schlagen zu "Unstimmigkeiten im SLCM führen zu Unsicherheiten" -> Sie wollen wissen, was passiert, wenn ein Fehler gelöst wird.

// - Übertrittmodul
//   - Kein Close Button 1 5
//     C: 2
//     V: 2
//   - Zu viele Buttons nötig 1 3 4 5
//     C: 4
//     V: 3
//   - Tabs etwas unklar 1
//     C: 1
//     V: 2
//   - Nur eine Kategorie 1 2 3 5
//     C: 4
//     V: 3
//   - "+" zum Öffnen 2 3
//     C: 2
//     V: 2
//   - Mehr Info/Begriff unklar 2 3 5
//     C: 3
//     V: 2
//   - Darstellung nicht schön 3 5
//     C: 2
//     V: 1
// - Hinzufügen über Kategorie
//   - Mehr als nur nächstmögliches 1 2 3 5
//     C: 4
//     V: 2
//   - Andere Kategorien nicht nötig 2 5
//     C: 2
//     V: 1
// - Hinzufügen über Vertiefung
//   - Mehr als nur nächstmögliches 1 2 3 5
//     C: 4
//     V: 2
// - Validierung
  // - Tooltip brauch lange 1 3 4
  //   C: 3
  //   V: 2
  // - Globale Info nicht gesehen 1 3 5
  //   C: 3
  //   V: 1
  // - Toggle nicht gsehen/nicht genutzt 1 2 3 5
  //   C: 4
  //   V: 1
  // - Übertrittsmodul nicht in global 2 4
  //   C: 2
  //   V: 2
  // - Mehr Info, was Aktion tut/tat 3 4 5
  //   C: 3
  //   V: 2
  // - Markierung am Semester 5
  //   C: 1
  //   V: 2
// - Semester
//   - Markierung von aktuellem/altem 2 4 5
//     C: 3
//     V: 2
//   - Abgeschlossene zu klappen 2
//     C: 1
//     V: 1
//   - Name vor Nummer 5
//     C: 1
//     V: 2
// - Suche
//   - Erschlagend 2
//     C: 1
//     V: 2
//   - Mühsam, alle zuklappen zu müssen 2
//     C: 1
//     V: 3
//   - Je nach Browser anders (Edge) 4
//     C: 1
//     V: 2
//   - Infos zu klein 4
//     C: 1
//     V: 2
// - Kategorie
//   - Lieber, wie viele noch geplant 3
//     C: 1
//     V: 1
//   - Button und Progressbar nicht schön 3 5
//     C: 2
//     V: 1
//   - Farbe nur sichtbar, wenn schon was erreicht 5
//     C: 1
//     V: 2
//   - GWR - IKTS und GWR 5
//     C: 1
//     V: 2
// - Studienordnung
//   - Name der Verlinkten 5
//     C: 1
//     V: 2

// - Positives
//   - Validierung 1 2 3 4 5
//   - Farben 1 2 4 5
//   - Übertrittsmodule 2 4 5



