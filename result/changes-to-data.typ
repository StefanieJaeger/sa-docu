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

Werte
- Modul:
  - Entfernt: "isThesis", "isRequired", "recommendedSemester" (wurde nicht genutzt)
  - Hinzugefügt: "isDeactivated", "term", "recommendedModuleIds", "dependentModuleIds", "successorModuleId", "predecessorModuleId" (für Semesterzuteilung und Validierung) 
  - Umbenennt: "categories_for_coloring" zu "categoriesForColoring" (Format)

Probleme bei Daten
- Einige Module haben keine Durchführung. Darunter auch aktive, wie SEProj. => Overwrite
- Einige Module haben unterschiedliche "beginSemester" und "endSemester". Für einige Module meint dies, dass sie in jedem Semester durchgeführt werden (SA/BA, IKTS pro Kampus), für andere, dass die Durchführung einmal gewechselt hat (EXEV, NetAut, CompEng, etc). => Wenn "beginSemester" und "endSemester" valide aber nicht gleich sind, dann "both"
- Wir nehmen an, dass ein Modul deaktiviert ist, wenn der "zustand" "deaktiviert" ist und das "endJahr" der "durchfuehrungen" vor diesem Jahr liegt oder keine Durchführung angegeben ist.
- SE1 und SEP1, SE2 und SEP2 sind nicht als Nachfolger und Vorgänger markiert => Overwrite

