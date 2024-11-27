Validierungslogik

Validationsmatrix
||Vergangenheit|Gegenwart|Zukunft|
|---|---|---|---|
|Modul im falschen Semester|soft|hard|hard|
|Modul schon in Plan|hard|hard|hard|
|Modul inaktiv mit Nachfolger|soft|hard|hard|
|Modul inaktiv ohne Nachfolger|-|hard|hard|
|Modul ohne/vor Empfohlene|-|soft|soft|

Durch die URL oder Übertrittsmodule kann es geschehen, dass ein invalider Plan entsteht.
Modul mit Nachfolger soll auch in vergangen Semester markiert werden, jedoch nur als Info mit Tooltip, das Nachfolger erwähnt. Hat man den Vorgänger eines aktiven Modules im Plan, können wir eine korrekte Validation nicht garantieren.

Empfohlene Module
Ein Module (M1) mit einem empfohlenen Modul (M2) kann in einer dieser Fälle fallen:
1. M2 ist im STD (zB WE1)
2. M2 ist nicht im STD, mit Nachfolger (M3) im STD (zB DS1 -> DSy)
3. M2 ist nicht im STD, ohne Nachfolger im STD (zB DigT)
Wir strukturieren unsere Daten wie folgt:
M1 soll das Kürzel des effektiv empfohlenen Modules M2 speichern.
Fall 1: M2 speichert das Kürzel von M1.
Fall 2: M3 speichert das Kürzel von M1.
Fall 3: Keine zusätzliche Aktion, da weder M2 noch M3 existiert.

Bei der Prüfung der Abhängigkeiten im Plan muss dann folgend vorgegangen werden:
- Sind alle "recommendedModuleIds" im Plan? -> OK
- Sonst: Enthalten andere, vorherige Module eine "predecessorModuleId", die dann die "recommendedModuleIds" abdecken? -> OK
- Sonst: NOK
Es kann folgenden Fall geben: Modul A empfiehlt Modul B. B ist der Nachfolger von C. Der Plan enthält C im 1. Semester und A im 2. Semester. A enthält eine Info, dass B fehlt. Dies ist bewusst so, da die Infos von A vom Dozenten aktualisiert wurden und nun explizit B verlangt.