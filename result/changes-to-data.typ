Überarbeitungen
- Einzelne Schritte zur Anreicherung eines Modules in Funktionen ausgelagert.
- Keine Module müssen mehr ignoriert werden, da wir nun die Deaktivierung und den Nachfolger bestimmen können.
- Können Informationen zu einem Modul nicht gefunden werden, wird dies gemeldet und das Modul übersprungen.

Erweiterungen
- Einfach erweiterbare Möglichkeit zum Überschreiben von Werten eines Modules.
- Term(?) für ein Modul bestimmen. "FS" für Frühlingssemester, "HS" für Herbstsemester und "both" für Durchführung in beiden Semestern.
- Vorgänger und Nachfolger für ein Modul bestimmen. Referenz von Modul zum Vorgänger oder Nachfolger ist bidirektional.
- Empfohlene Module für ein Modul bestimmen. Dabei werden Module, die nicht in der Studienordnung enthalten sind, ignoriert.
- Empfohlene Module eines Modules referenzieren ebenfalls dieses abhängige Modul, was die Referenz bidirektional macht. Hat ein empfohlenes Modul einen Nachfolger, referenziert dieser ebenfall dieses abhängige Modul.
- Deaktivierung für ein Modul bestimmen. Unter der Annahme, dass ein Modul mit "Zustand" "deaktiviert" und keiner Durchführung oder mit der letzten Durchführung vor diesem Jahr, als deaktiviert giltet.
- Zusätzliche Module, die nicht in der Studienordnung vorkommen, in die Liste aufnehmen.
