#show figure: set block(breakable: true)

= Workshop: Validierung
Im Validierungs-Workshop wurde die zuvor definierten Validierungsmethode "Usability-Tests" vorbereitet und durchgeführt, um die Eignung der gewählten Lösungskonzepte zu überprüfen.
Die Ergebnisse wurden in Kontrast zu den ursprünglich definierten Annahmen gestellt um zu überprüfen, inwiefern das erarbeitete Lösungskonzept die gestellten Anforderungen erfüllt.
Dieses Vorgehen basiert auf dem von #cite(<cuxd>, form: "prose") definierten CUXD-Vorgehensmodell.
Auf eine weitere Iteration der Erkundungsphase im negativen Fall wurde aufgrund der begrenzten Zeit verzichtet.

== Vorgehen

Der Validierungs-Workshop fand vom 3.12. bis zum 8.12.2024 statt und dauerte insgesamt 24 Stunden.
Dabei wurden die Usability-Tests vorbereitet, durchgeführt und ausgewertet.
Das Ziel der Auswertung war es, vorliegende Unzulänglichkeiten im erarbeiteten Lösungskonzept zu identifizieren sowie Hinweise auf dessen Stärke zu erhalten.
Den Leitfaden, das den Testpersonen ausgehändigte Dokument sowie die Protokolle der Usability-Tests sind im Anhang zu finden. [TODO: an anfang von vlaidierung im appendix verlinken]

Die Testpersonen für die Usability Tests wurden anhand der initial durchgeführten Umfrage gewählt.
Fünf Testpersonen hatten sich innerhalb des Zeitraumes für einen Test zur Verfügung gestellt.
Mit jeder Person wurde ein Termin an 45 Minuten vereinbart, in dem der Usability Test durchgeführt wurde.
Da gemäss #cite(<usux>, form: "prose") mit fünf Personen mindestens 55%, durchschnittlich jedoch sogar 85.55% der Usability-Probleme aufgedeckt werden, wurde auf eine weitere Testperson verzichtet.

Das den Testpersonen ausgehändigte Dokument enthielt eine Einleitung, die Aufgabenstellung sowie die zu testenden Szenarien jeweils auf einer neuen Seite.
Das Dokument entspricht dem im Anhang zu findenden Leitfaden [TODO: verlinken], dabei wurden die aufgeführten Wissensziele ausgelassen.

Nach der Durchführung der Usability-Tests sowie deren Protokollierung, welche im Anhang zu finden ist [TODO: zu Protokollen verlinken], wurden die Ergebnisse ausgewertet.
Diese sind im Nachfolgenden dokumentiert.

== Resultate des Workshops

=== Resultate der Usability Tests
Die Auswertung der Usability Tests sowie die Struktur dieses Unterkapitels lehnen stark an das vorgeschlagene Vorgehen von #cite(<usux>, form: "prose") zum Thema Usability-Tests auswerten.

==== Probleme
Im Folgenden sind sämtliche aufgetretenen Probleme dokumentiert.
Jedes Problem ist mit einer ID versehen, um eine spätere Referenzierung zu erleichtern.

Der Impact wird anhand der Auswirkung auf den Nutzenden gemessen:
- 1 steht für eine geringfügige Unannehmlichkeit, die den Erfolg der Aktion nicht beeinflusst.
- 2 signalisiert eine leichte Verwirrung oder Unsicherheit, beispielsweise durch Unklarheiten oder Abweichungen vom erwarteten Ablauf.
- 3 weist auf einen erheblichen Einfluss hin, der Nutzende möglicherweise von der Nutzung der Anwendung abhält, etwa durch Fehler oder Frustration.

Zur Bewertung wird die Anzahl der Vorkommnisse mit dem jeweiligen Impact-Wert multipliziert und anschliessend durch die Gesamtzahl der Testpersonen geteilt:

$("Anzahl" * "Impact") / 5$

Der resultierende Schweregrad wird in drei Kategorien eingeteilt:
- geringfügig (0)
- schwer (1)
- kritisch (2)

#{
  let problems = (
    ("Übertritt - Close Button fehlt bei Modal", "2", "2", $(2 * 2) / 5 #sym.approx 1$),
    ("Übertritt - Übermässige Klicks zur Erfassung", "4", "3", $(4 * 3) / 5 #sym.approx 2$),
    ("Übertritt - Eindeutige Abgrenzung der Tabs fehlt", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
    ("Übertritt - Unklar, dass mehrere Kategorien wählbar sind", "4", "3", $(4 * 3) / 5 #sym.approx 2$),
    ("Übertritt - Modal mit \"+\" Öffnen ist unklar", "2", "2", $(2 * 2) / 5 #sym.approx 1$),
    ("Übertritt - Begriff \"Übertritt\" ist unklar", "3", "2", $(3 * 2) / 5 #sym.approx 1$),
    ("Übertritt - Darstellung der Übertrittsmodule ist unschön", "2", "1", $(2 * 1) / 5 #sym.approx 0$),

    ("Hinzufügen über Kategorie - Option für spätere Semester fehlt", "4", "2", $(4 * 2) / 5 #sym.approx 2$),
    ("Hinzufügen über Kategorie - Anzeige anderer Kategorien ist unnötig", "2", "1", $(2 * 1) / 5 #sym.approx 0$),

    ("Hinzufügen über Vertiefung - Option für spätere Semester fehlt", "4", "2", $(4 * 2) / 5 #sym.approx 2$),

    ("Validierung - Tooltip erscheint verzögert", "3", "2", $(3 * 2) / 5 #sym.approx 1$),
    ("Validierung - Übertrittsmodul fehlt in der globalen Fehlermeldung", "2", "2", $(2 * 2) / 5 #sym.approx 1$),
    ("Validierung - Folgen von Aktionen in der globalen Fehlermeldung sind unklar", "3", "2", $(3 * 3) / 5 #sym.approx 2$),
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

Drei neue Features wurden von fast allen Testpersonen als sehr positive Ergänzung aufgefasst.
Diese umfassen die Validierung, die neuen Farben und die Möglichkeit zur Erfassung von Übertrittsmodulen.

==== Wissensziele
In der folgenden Tabelle sind die Wissensziele aufgeführt, die im Rahmen der Usability-Tests überprüft wurden.
Ein Wissensziel gilt als nicht erreicht, wenn mindestens eine Person vollständig gescheitert ist oder zwei oder mehr Personen auf ein Problem gestossen sind.

#figure(table(
  columns: 3,
  [Wissensziel], [Erfüllt?], [Erläuterung zur Erfüllung],
  [Erkennt Testperson, dass sie die Semesternummer ablesen kann und nicht zählen muss?], [Ja], [],
  [Ist die neue Anzeige der ECTS pro Kategorie selbsterklärend?], [Ja],[],
  [Wird die Verlinkung zur Studienordnung genutzt?], [Ja],[Einer Testperson war der Begriff und die Bedeutung "Studienordnung" nicht bekannt.],
  [Ist der Zusammenhang des Studiumsstarts und der Verlinkung selbsterklärend?], [Ja],[],
  [Ist das Hinzufügen von Modulen über eine Kategorie verständlich?], [Ja],[],
  [Ist das Suchen nach einem Modul und dessen Kategorie-Zuordnung in der Suche verständlich?], [Ja],[],
  [Ist das Hinzufügen von Modulen über eine Vertiefung verständlich?], [Ja],[],
  [Ist das Hinzufügen von Module in einem bestimmten Semester verständlich?], [Ja],[],
  [Ist die Gruppierung der Module nach Kategorie in der Suche verständlich?], [Ja],[Eine Testperson versuchte nach dem Namen der Kategorie zu suchen, da das wiederholte Zuklappen zu mühsam war.],
  [Ist die direkte Suche nach einem Modul in der Suche verständlich?], [Ja],[],
  [Ist eine Nicht-Auswählbarkeit in der Suche und deren Grund klar?], [Ja],[],
  [Ist die Verknüpfung von angerechneten Modulen zu Übertrittsmodulen klar?], [Ja],[],
  [Ist die Erfassung von angerechneten Modulen selbsterklärend?], [Nein],[Der Prozess des Erfassens war verwirrend oder mühsam aufgrund der vielen Buttonklicks.],
  [Ist die Verknüpfung von externen Leistungen zu Übertrittsmodulen klar?], [Ja],[],
  [Ist die Erfassung von externen Leistungen selbsterklärend?], [Nein],[Der Prozess des Erfassens war verwirrend oder mühsam aufgrund der vielen Buttonklicks. Ebenfalls war die Mehrfachauswahl von Kategorien nicht offensichtlich.],
  [Ist die Darstellung von Übertrittsmodulen verständlich?], [Ja],[Eine Testperson wünschte sich eine andere Platzierung der Übertrittsmodule und ein Label für die ECTS.],
  [Wird das Prinzip der Validierung verstanden?], [Ja],[],
  [Ist der Fehler bei doppelten Modulen (Plan und Übertritt) verständlich?], [Ja],[Fehler bei Übertrittsmodulen werden nicht in der globalen Meldung angezeigt. Tooltip bei Übertrittsmodulen ist nicht explizit genug.],
  [Ist der Fehler bei einem Modul im falschen, offenen Semester verständlich?], [Ja],[],
  [Ist der Fehler bei einem inaktiven Modul in einem offenen Semester verständlich?], [Ja],[],
  [Ist der Hinweis bei einem Modul im falschen, vergangenen Semester verständlich?], [Ja],[Hinweise wurden teils ignoriert.],
  [Ist der Hinweis bei einem inaktiven Modul in einem vergangenen Semester verständlich?], [Ja],[Hinweise wurden teils ignoriert.],
  [Ist der Hinweis bei einem Modul, dass empfohlene Module nicht davor eingeplant sind, verständlich?], [Ja],[Hinweise wurden teils ignoriert.],
  [Konnten alle Fehler behoben werden, sei dies über den Plan oder den globalen Fehlerbereich?], [Ja],[],
  [Wurde erkannt, dass die Validierung auch abgeschaltet werden kann?], [Ja],[],
), caption: ["Alle Wissensziele und deren Erreichung"])<wissensziele>

=== Erkenntnisse
Folgende Probleme haben den Schweregrad 2 erreicht und sollen gemäss #cite(<usux>, form: "prose") priorisiert behoben werden.
Dazu wurde direkt im Validierungs-Workshop ein kurzes Design Studio durchgeführt, um potenzielle Lösungsvorschläge zu erarbeiten.

- *P2* - "Übertritt - Übermässige Klicks zur Erfassung"
  - *Beschreibung:* Für das Erfassen von angerechneten Modulen und externen Leistungen sind zu viele Klicks notwendig, spezifisch Button-Klicks. Ein erfasster Eintrag wird durch "hinzufügen" zuerst einer Liste hinzugefügt, welche dann gespeichert werden kann. Da die Testpersonen jedoch nur einen Eintrag aufs Mal erfassten, resultierte dies für sie in als unnötig wahrgenommenen Schritten. 
  - *Lösungvorschlag:* Eine potenzielle Lösung ist in @P2_P4 ersichtlich. Neu kann nur noch ein Übertrittsmodul aufs Mal erfasst werden. Das angerechnete Modul oder die erfasste Leistung kann deshalb über nur einen "Speichern" Button dem Plan hinzugefügt werden. Dafür entfällt die Liste an Übertrittsmodulen unterhalb der Tabs.
- *P4* - "Übertritt - Unklar, dass mehrere Kategorien wählbar sind"
  - *Beschreibung:* Beim Erfassen einer externen Leistung können mehrere Kategorien ausgewählt werden, was jedoch nur selten erkannt wurde. Die Unklarheit entstand zum einen dadurch, dass die Möglichkeit, ein Modul mehreren Kategorien zuzuordnen, nicht bekannt war. Zum anderen wurde das Multiselect-Feature nicht immer als solches erkannt.
  - *Lösungvorschlag:* Eine potenzielle Lösung ist in @P2_P4 ersichtlich. Das Label "Kategorien" hat neu einen kleinen Hinweistext "Mehrfachauswahl". Das Multiselect erhält ein Caret, um es zusätzlich per Icon als ein solches zu kennzeichnen. In der Liste des Multiselects erhält jeder Eintrag eine leere Checkbox oder eine Checkbox mit Haken, um die Mehrfachauswahl auch in der Liste klarer zu gestalten.
- *P8* - "Hinzufügen über Kategorie - Option für spätere Semester fehlt"
  - *Beschreibung:* Beim Hinzufügen eines Moduls über eine Kategorie wird dies automatisch in das nächstmögliche Semester eingeplant. Testpersonen wünschten sich jedoch oft, dass Modul direkt in einem späteren Semester einplanen zu können, statt es im Nachhinein verschieben zu müssen.
  - *Lösungvorschlag:* Eine potenzielle Lösung ist in @P8_P10 ersichtlich. Ein Eintrag in der Suche enthält neu nur noch die Durchführung, nicht mehr das nächstmögliche Semester. Ein Klick auf einen Eintrag öffnet ein Modal, über welches das gewünschte Semester zur Einplanung ausgewählt werden kann
- *P10* - "Hinzufügen über Vertiefung - Option für spätere Semester fehlt"
  - *Beschreibung:* Beim Hinzufügen eines Moduls über eine Vertiefung kann lediglich das nächstmögliche Semester gewählt werden. Testpersonen wünschten sich jedoch wie bei dem zuvor ausgeführten Problem *P8*, dass Modul in direkt in einem späteren Semester einplanen zu können, statt es im Nachhinein verschieben zu müssen.
  - *Lösungvorschlag:* Eine potenzielle Lösung ist ebenfalls in @P8_P10 ersichtlich. Der Button bei einem Modul heisst neu "planen". Ein Klick auf einen Button öffnet dasselbe Modal wie beim Hinzufügen eines Moduls über die Kategorien. 
- *P13* - "Validierung - Folgen von Aktionen in der globalen Fehlermeldung sind unklar"
  - *Beschreibung:* Beim Lösen von Fehlern im Plan über die globale Fehlermeldung war Testpersonen oft nicht klar, welche Änderungen eine Aktion ausgelöst hat.
  - *Lösungvorschlag:* Drei potenzielle Lösungen können in @P13-1, @P13-2 und @P13-3 eingesehen werden. In einer weiteren Iteration der Erkunden-Phase kann eine der Lösungen gewählt oder eine neue Kombination erarbeitet werden, je nach erarbeitetem Konzept.

Positiv zu vermerken ist, dass diese fünf Probleme auch die nicht erfüllten Wissensziele betreffen.
Ihre Behebung würde daher höchstwahrscheinlich dazu führen, dass die Ziele erfüllt werden.

Nachfolgend sind die restlichen 22 Probleme nach der Art des Problems gruppiert.

*Etwas ist unklar*

Davon betroffene Probleme: P4, P5, P6, P11, P13, P14, P15, P17, P25.

Ein geeigneter Lösungsansatz wäre, kurze Infotexte, kleine Hinweise, farbliche Markierungen und aussagekräftigere Tooltips hinzuzufügen.

*Etwas fehlt*

Davon betroffene Probleme: P1, P3, P8, P10, P12, P19, P22, P26.

Ein geeigneter Lösungsansatz wäre, das fehlende Element hinzuzufügen.

*Etwas ist unnötig*

Davon betroffene Probleme: P2, P9, P16, P18.

Ein geeigneter Lösungsansatz wäre, die unnötigen Elemente zu entfernen. Möglicherweise kann dies durch eine Einstellung im Tool gesteuert werden, um eine grössere Anpassungsfähigkeit zu ermöglichen.

*Etwas ist unschön*

Davon betroffene Probleme: P7, P20, P23.

Ein geeigneter Lösungsansatz wäre, die betroffenen Bereiche zu verschönern, etwa durch eine bessere Kompatibilität mit verschiedenen Browsern oder eine ausgewogenere Ausrichtung.

*Zu kleine Informationen*

Davon betroffene Probleme: P21.

Ein geeigneter Lösungsansatz wäre, die Informationen in grösserer Darstellung anzuzeigen, entweder dauerhaft oder steuerbar über eine Einstellung im Tool.

==== Lösungsvorschläge
*Übertrittsmodule*
Die nachfolgende Grafik zeigt einen Lösungsvorschlag für die Probleme P2 und P4. Dabei wird der Fokus auf diese beiden Probleme gelegt, jedoch auch Lösungen für drei weitere Probleme angeboten:
- P1: Der "Abbrechen" Button bietet einen offensichtlichen Weg zur Schliessung des Modales an.
- P3: Die Tabs werden durch Radio Options ersetzt.
- P6: Der Begriff "Übertrittsmodul" wird in einem Tooltip für das "?" Icon erklärt.
#figure(image("P2_P4.jpg"), caption: ["Lösungsvorschlag für P2 und P4"])<P2_P4>

Weiter enthält die Lösung einen kleinen Hinweistext pro Option, der "Speichern" Button ist disabled, bis ein Modul gewählt oder die Felder für eine Leistung korrekt ausgefüllt sind, ein Tooltip für das "?" Icon beim Name enthält einen Hinweis zur maximalen Länge und zu nicht-erlaubten Zeichen.
Wir empfehlen zudem, einen Workshop mit Studierenden zu machen, um ein gutes Wording für die Hinweistexte, Tooltips und den gesamten Bereich generell zu finden. 

*Semesterwahl bei Einfügen eines referenzierten Modules*
In der folgenden Grafik ist ein Lösungsvorschlag für die Probleme P8 und P10 ersichtlich:
#figure(image("P8_P10.jpg"), caption: ["Lösungsvorschlag für P8 und P10"])<P8_P10>
Das Modal referenziert das Modul, bietet ein Dropdown für ein Semester an und hat "Abbrechen" und "Einfügen" Buttons. Das Dropdown enthält alle zukünftigen Semester, in denen das Modul eine Durchführung hat, bis zum 14. Semester. Das nächstmögliche Semester ist vorausgewählt. Der Name des Moduls verlinkt zu dessen Modulbeschreibung im SLCM.

*Auswirkungen von Aktionen im globalen Fehlerbereich*
Die nachfolgenden Abbildungen zeigen drei Lösungsvorschläge für das Problem P13:
#figure(image("P13-1.jpg"), caption: ["Lösungsvorschlag 1 für P13"])<P13-1>
In dieser Lösung erhalten die Buttons für Aktionen zur Behebung eines Problems mehr Text und passende Icons. Die Modulnamen sollten neu ausgeschrieben werden.
Diese Lösung bringt mehr Klarheit über die Aktionen mit sich. Jedoch resultiert sie auch in sehr langen Buttons, was wiederum als ungewohnt wahrgenommen werden könnte.

#figure(image("P13-2.jpg"), caption: ["Lösungsvorschlag 2 für P13"])<P13-2>
In dieser Lösung werden die Aktionen für "Nachfolger einplanen", "verschieben" und "Duplikate entfernen" in Modale ausgelagert. Die Modale enthalten mehr Text und Optionen. "Nachfolger einplanen" bietet neu die Wahl eines Semesters und die Buttons "planen" und "planen und ersetzen" an. "Verschieben" erlaubt ebenfalls die Wahl eines Semesters. "Duplikate entfernen" erlaubt die Auswahl des Duplikates, welches nicht entfernt werden soll. Die Vorauswahl aller Dropdowns bleibt dabei der gleiche Wert, welcher schon zuvor in der Fehlermeldung empfohlen wurde.
Diese Lösung bringt mehr Klarheit und Kontrolle für Nutzende. Sie führt jedoch auch zu mehr Klicks, wobei die Fehlermeldung das Ziel hat, die Fehlerbehebung zu vereinfachen.

#figure(image("P13-3.jpg"), caption: ["Lösungsvorschlag 3 für P13"])<P13-3>
In dieser Lösung erhält jede Aktion einer Fehlermeldung einen Unterpunkt. Der Unterpunkt beschreibt die Aktion genauer und bietet einen Button mit passendem Icon an.
Diese Lösung erklärt die Aktionen während die Buttons nicht mit Text aufgeblasen werden. Die Fehlermeldung muss dafür grösser gestaltet werden und könnte somit in ausgeklapptem Zustand mehr Informationen als zuvor verdecken.

=== Fazit
Mit dem funktionalen Prototypen konnte gezeigt werden, dass die Lösungskonzepte grundsätzlich funktionieren und die gestellten Anforderungen erfüllen.

Die fünf Probleme mit dem Schweregrad 2 stellen jedoch die wichtigsten Herausforderungen dar, die in der nächsten Iteration als erstes behoben werden sollten.
Darüber hinaus sollten die häufigsten Probleme, bei denen "etwas unklar ist", angegangen werden, da sie das grösste Verbesserungspotenzial bieten.
Besonders wichtig ist dies, da unsere Persona "Felix" die Schwierigkeit hat, dass Unübersichtlichkeit sein Vertrauen in die Korrektheit der Daten im SLCM beeinträchtigt [TODO: Verlinkung zur Persona in der Synthese].
Um zu verhindern, dass diese Herausforderung auch auf den Semesterplaner übertragen wird, müssen die Probleme der Kategorie "Etwas ist unklar" sowie Unklarheiten bei der Fehlerbehebung vor einem möglichen Deployment gelöst werden.

//TODO: Validierungsmapping aktualisieren und vervollständigen
// todo: evtl als Fazit, dass unseri Wissesziel nit alles abdeckt hend? Drum hend mer Problem, wo zu keim ghöre. ZB Ob d Aktione us de globale Meldig verständlich sind.


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



