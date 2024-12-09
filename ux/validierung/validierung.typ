= Workshop: Validierung
Abweichung hier:
Da in der vorliegenden Arbeit die Zeit begrenzt war, wurde nur eine Iteration des genutzten agilen UX-Prozesses durchgeführt.
Etwaige Erkenntnisse wurden dokumentiert, um ausserhalb der Arbeit eine neue Iteration der Erkunden-Phase vorzunehmen.
Für bestätigte Teile des Prototypen wurde abschliessend eine Roadmap zur Entwicklung und Integration in das bestehende Tool erstellt.

== Bericht

=== Management Summary

- Grösste Probleme
- Bitz Positives

Aus 


=== Hintergrundinformationen zum Test

- Warum? (???)
- Was? (High fidelity Prototype, sa.lost.university)

=== Methodik

Die Testpersonen für die Usability Tests wurden anhand der initial durchgeführten Umfragen gewählt.
5 Testpersonen hatten sich innerhalb des Zeitraumes für einen Test zur Verfügung gestellt.
Mit jeder Person wurde ein Termin an 45 Minuten vereinbart, in dem der Usability Test durchgeführt wurde.
Der Testperson wurde jeweils ein Dokument ausgehändigt, welches eine Einleitung und die Aufgaben enthielt.
Diese Dokument kann [TODO] hier gefunden werden.
Die Szenarien waren an einer normalen Interaktion mit dem Semesterplaner orientiert und sollten diese möglichst gut abdecken.

=== Testergebnisse

Nachfolgend sind alle Usability Probleme, die im Test aufkamen, dokumentiert.
Sie erhalten je eine ID, um eine spätere Referenzierung zu vereinfachen.

Ihr Impact wird daran gemessen, wie gross ihre Auswirkung auf den User ist.
1 steht für eine Unschönheit, die aber das Gelingen der Aktion nicht weiter beeinflusst.
2 steht für eine leichte Verwirrung oder Unsicherheit beim User, seit dies durch Unklarheit oder eine Abweichung vom erwarteten Ablauf.
3 steht für einen grossen Einfluss, der die Nutzenden von der Benutzung der Applikation abhalten könnte. Sei dies durch einen Fehler oder durch Auslösen von Frustration.

Aufgrund der Anzahl Testpersonen, die dieses Problem erfahren haben und dessen Impact, wird der Schweregrad bestimmt.
Der Schweregrad kann geringfügig (0), schwer (1) oder kritisch (2) sein.

#{
let problems = (
  ("Übertritt - Kein Close Button im Modal", "2", "2", $(2 * 2) / 5 #sym.approx 1$),
  ("Übertritt - Erstellen benötigt zu viele Klicks", "4", "3", $(4 * 3) / 5 #sym.approx 2$),
  ("Übertritt - Tabs sind nicht klar abgegrenzt", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
  ("Übertritt - Unklar, dass mehrere Kategorien wählbar sind", "4", "3", $(4 * 3) / 5 #sym.approx 2$),
  ("Übertritt - Modal mit \"+\" Öffnen ist ungewohnt", "2", "2", $(2 * 2) / 5 #sym.approx 1$),
  ("Übertritt - Begriff \"Übertritt\" ist unklar", "3", "2", $(3 * 2) / 5 #sym.approx 1$),
  ("Übertritt - Darstellung der Übertrittsmodul ist unschön", "2", "1", $(2 * 1) / 5 #sym.approx 0$),

  ("Hinzufügen über Kategorie - Nur nächstmögliches Semester zur Auswahl", "4", "2", $(4 * 2) / 5 #sym.approx 2$),
  ("Hinzufügen über Kategorie - Andere Kategorien werden auch angezeigt", "2", "1", $(2 * 1) / 5 #sym.approx 0$),

  ("Hinzufügen über Vertiefung - Nur nächstmögliches Semester zur Auswahl", "4", "2", $(4 * 2) / 5 #sym.approx 2$),

  ("Validierung - Tooltip erscheint verzögert", "3", "2", $(3 * 2) / 5 #sym.approx 1$),
  ("Validierung - Globale Fehlermeldung wurde nicht gesehen", "3", "1", $(3 * 1) / 5 #sym.approx 1$),
  ("Validierung - Übertrittsmodul erscheint nicht in der globalen Fehlermeldung", "2", "2", $(2 * 2) / 5 #sym.approx 1$),
  ("Validierung - Folgen von Aktionen in der globalen Fehlermeldung sind zu unklar", "3", "2", $(3 * 3) / 5 #sym.approx 2$),
  ("Validierung - Ausfindig machen des fehlerhaften Modules im Plan ist schwierig", "1", "2", $(1 * 2) / 5 #sym.approx 0$),

  ("Semester - Aktuelles, vergangenes und zukünftiges Semester identifizieren", "3", "2", $(3 * 2) / 5 #sym.approx 1$),
  ("Semester - Vergangene Semester nehmen zu viel Platz ein", "1", "1", $(1 * 1) / 5 #sym.approx 0$),
  ("Semester - Semestername nach Semesternummer", "1", "2", $(2 * 1) / 5 #sym.approx 0$),

  ("Suche - Zu viele Infos", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
  ("Suche - Kategorien nicht suchbar, zuklappen anderer nötig", "1", "3", $(1 * 3) / 5 #sym.approx 1$),
  ("Suche - Informationen im Edge nicht immer sichtbar", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
  ("Suche - Informationen zum Modul sind zu klein", "1", "2", $(1 * 2) / 5 #sym.approx 0$),

  ("Kategorie - Anzahl offener geplanter ECTS fehlt", "1", "1", $(1 * 1) / 5 #sym.approx 0$),
  ("Kategorie - Button nicht schön bei Progressbar", "2", "1", $(2 * 1) / 5 #sym.approx 0$),
  ("Kategorie - Farbe für Kategorie nicht immer sichtbar", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
  ("Kategorie - Namen der Kategorien nicht klar", "1", "2", $(1 * 2) / 5 #sym.approx 0$),

  ("Studienordnung - Name der Studienordnung fehlt", "1", "2", $(1 * 2) / 5 #sym.approx 0$),
)

let cells = ("ID", "Name", "Anzahl betroffene Testpersonen", "Impact", "Schweregrad")

for (i, el) in problems.enumerate() {
  cells.push("P" + str(i + 1))
  cells += el
}

table(
  columns: 5,
  ..cells
)
}

3 neue Features wurden von fast allen Testpersonen als sehr positive Ergänzung erwähnt.
Dies wäre die Validierung, die neuen Farben und die Möglichkeit zur Erfassung von Übertrittsmodulen.

// [TODO: Antworten zu Wissenszielen]


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



// - Probleme raus schreiben
//   - Häufigkeit, Auswirkung, Hartnäckigkeit
//   - Kritisch, Schwer, Geringfügig
// - Probleme big to small
// - Antworten zu Wissenszielen/Fragen
// - Positives und Negatives



