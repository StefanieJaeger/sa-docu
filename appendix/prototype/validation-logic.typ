== Validierungslogik <validation-logic>

Durch die URL oder ein Übertrittsmodul kann es geschehen, dass ein invalider Plan entsteht.

Deshalb werden eingeplante Module und Übertrittsmodule validiert.

Ein Modul oder Übertrittsmodul mit einem Fehler wird rot umrandet und erhält ein Icon mit einem "!".
Ein Modul mit einem Hinweis erhält ein Icon mit einem "i".

*Modul*

#table(
  columns: 4,
  [], [In einem vergangenen Semester], [Im gegenwärtigen Semester], [In einem zukünftigen Semester],
  [Modul ist bereits im Plan], [Fehler], [Fehler], [Fehler],
  [Modul hat in diesem Semester keine Durchführung], [Hinweis], [Fehler], [Fehler],
  [Modul ist inaktiv mit Nachfolger], [Hinweis], [Fehler], [Fehler],
  [Modul ist inaktiv ohne Nachfolger], [-], [Fehler], [Fehler],
  [Modul ist vor/ohne empfohlene Module im Plan], [-], [Hinweis], [Hinweis]
)

*Übertrittsmodul*

Ist das Übertrittsmodul ein angerechnetes Modul und dasselbe Modul ist bereits im Plan, erhält das Übertrittsmodul einen Fehler.
Ist das Übertrittsmodul eine externe Leistung und existieren weitere Übertrittsmodule mit demselben Namen, erhält das Übertrittsmodul einen Fehler.

*Empfohlene Module*

Module haben teils empfohlene Module. Es ist jedoch möglich, dass ein empfohlenes Modul inaktiv ist, aber einen Nachfolger hat.

Ein Modul _M1_ mit einem empfohlenen Modul _M2_ kann also einen folgenden Fälle aufweisen:
1. _M2_ ist aktiv.
2. _M2_ ist nicht aktiv, hat aber einen aktiven Nachfolger _M3_.
3. _M2_ ist nicht aktiv und hat keinen Nachfolger.

- Fall 1: _M2_ erhält _M1_ als abhängiges Modul.
- Fall 2: _M3_ erhält _M1_ als abhängiges Modul.
- Fall 3: Keine zusätzliche Aktion, da weder _M2_ noch _M3_ existieren.

Bei der Prüfung der empfohlenen Module für _M1_ wird darum wie folgt vorgegangen:
- Ist _M2_ im Plan?
  - Ist _M2_ vorher oder gleichzeitig wie _M1_ im Plan? Dann zeige einen Hinweis.
  - Ist _M2_ nach _M1_ im Plan? Dann zeige einen Hinweis.
- Existiert ein _M3_, welches _M2_ als Vorgänger referenziert?
  - Ist _M3_ vorher oder gleichzeitig wie _M1_ im Plan? Dann zeige einen Hinweis.
  - Ist _M3_ nach _M1_ im Plan? Dann zeige einen Hinweis.
  - Ist _M3_ gar nicht im Plan? Dann zeige einen Hinweis.
- Kein empfohlenes Modul ist im Plan, also zeige einen Hinweis.
