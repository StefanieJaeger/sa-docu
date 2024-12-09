= Änderungen an den Daten

Nachfolgend sind alle Änderungen an den Daten und dem Crawler, welche im Verlauf der Arbeit vorgenommen wurden, oberflächlich beschrieben.

*Überarbeitungen*
- Einzelne Schritte zur Anreicherung eines Modules wurde in Funktionen ausgelagert.
- Module, welche zuvor explizit ignoriert wurden, können nun wieder inkludiert werden. Diese werden nun durch die Deaktivierung und einen Nachfolger markiert.
- Können Informationen zu einem Modul nicht gefunden werden, wird dies gemeldet und das Modul übersprungen.

*Erweiterungen*
- Informationen zu einem Modul können nun einfach über eine zentrale Stelle im Code überschrieben werden.
- Die Durchführung eines Modules wird neu bestummen. Dies kann den Wert "FS" für Frühlingssemester, "HS" für Herbstsemester und "both" für eine Durchführung in beiden Semestern annehmen.
- Ein allfälliges Vorgänger oder Nachfolger Modul eines Modules wird neu gespeichert. Diese Referenzieren auch das Modul selbst, die Beziehung ist also bidirektional.
- Die empfohlenen Module für ein Modul werden neu gespeichert.
- Für ein empfohlenes Modul werden auch die abhängigen Module gesammelt. Die Beziehung ist also ebenfalls bidirektional. Hat ein empfohlenes Modul einen Nachfolger, referenziert dieser ebenfall das abhängige Modul.
- Es wird neu gespeichert, ob ein Modul als Deaktiviert angesehen wird.
- Zusätzlich können Module, welche nicht in der Studienordnung vorkommen, explizit in die Liste aufgenommen werden.

*Änderungen an der Datenstruktur*
Einzig die Werte eines Modules wurden geändert.
- "isThesis", "isRequired" und "recommendedSemester" wurden entfernt, da sie nicht benötigt wurden.
- "isDeactivated", "term", "recommendedModuleIds", "dependentModuleIds", "successorModuleId" und "predecessorModuleId" wurden hinzugefügt, um die Semesterzuteilung bestimmen und die Validierung durchführen zu können.
- "categories_for_coloring" wurde zu "categoriesForColoring" umbenennt.

*Probleme*
1. Einige Module enthalten keine Durchführung. Auch aktive, wie etwa "SE Project".
2. Einige Module haben unterschiedliche "beginSemester" und "endSemester". Für einige Module meint dies, dass sie in jedem Semester durchgeführt werden, so etwa "Studienarbeit Informatik", "Bachelorarbeit Informatik" und diverse IKTS Module. Für andere Module bedeutet dies, dass sich ihre Durchführung in der Vergangenheit geändert hat, zum Beispiel "Experimentieren und Evaluieren, Network Automation, Web Engineering 3". 
3. Nicht alle Module referenzieren ihre empfohlenen Module, ihren Nachfolger oder ihren Vorgänger korrekt.
4. Die Daten enthalten kein konsequentes Muster, wie deaktivierte Module gekennzeichnet werden.

*Lösungen zu den Problemen* <data-solutions>
1. Für Module, bei denen dies bekannt ist, wird das Feld "isDeactivated" explizit überschrieben.
2. Sollten "beginSemester" und "endSemester" ein valider Wert, "HS" oder "FS", aber nicht derselbe Wert sein, wird für "term" der Wert "both" gewählt.
3. Für Module, bei denen dies bekannt ist, werden diese Werte explizit überschrieben.
4. Ist das Feld "zustand" auf "deaktiviert" gesetzt und ist der "endJahr" der "durchfuehrungen" vor diesem Jahr oder es ist gar keine Durchführung angegeben, wird das Modul als Deaktiviert markiert.
