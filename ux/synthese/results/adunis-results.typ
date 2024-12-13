= Resultate der technischen Interviews @adunis-results
Im Nachfolgenden sind die Ergebnisse der durchgeführten technischen Interviews zusammengefasst.
Die Protokolle mit den gesamten Antworten sind im Anhang unter @adunis-appendix zu finden.

== Interview mit der Studiengangsleitung
+ *Datenverantwortlichkeit und Erfassung*
  - Modulverantwortliche sind für die Korrektheit der Modulbeschreibungen zuständig. Anpassungen können an die Studienadministration delegiert werden.
  - Studienreglemente werden vom Hochschulrat verabschiedet, während die detaillierte Ausgestaltung wie Modulzuweisungen in der Verantwortung der Studiengangsleitung liegt.
  - Modulbeschreibungen und Durchführungen werden in separaten, dem SLCM ähnlichen Tools erfasst.
+ *Dateninkonsistenz*
   - Modulkürzel und Datenformate werden uneinheitlich gehandhabt. Eine Änderung an der Modulbeschreibung, wie bspw. an den ECTS, sollte eine Änderung des Modulkürzels nach sich ziehen, was nicht immer der Fall ist.
   - Änderungen an Daten können zu zeitlich begrenzten Inkonsistenzen führen, beispielsweise durch unklare Zuordnung von Durchführungszeiträumen oder fehlende Aktualisierung älterer Module.
+ *Herausforderungen bei der Darstellung*
  - Modulabhängigkeiten werden im SLCM nicht grafisch abgebildet, was die Planung erschwert. Ein solches Feature wäre für Studiengangsleitung und Studierende nützlich.
+ *Potenzial für Erweiterungen*
  - Die Darstellung von Abhängigkeiten zwischen Modulen und die Möglichkeit, Module nach Attributen wie Sprache, Campus oder Dozierenden zu filtern, könnte die Planung verbessern.
  - Die Einsicht in studentische Semesterpläne wird als wenig relevant erachtet, da diese nicht bindend sind.

== Schriftliches Interview mit einem Teilzeit-Entwickler des SLCM
+ *Archivierung und Deaktivierung von Modulen*
  - Es gibt keine standardisierte Vorgehensweise zur Archivierung oder Deaktivierung von Modulen, was zu unterschiedlichen Darstellungen führt. Dies führt zu Verwirrung bei der Interpretation der Daten.
+ *Durchführungszeiträume*
  - Die öffentlich zugänglichen Daten erlauben keine Rückschlüsse auf Änderungen zwischen Semestern (z.B. Wechsel zwischen Herbst- und Frühlingssemester). Für genaue Informationen wäre eine manuelle Analyse der Stundenpläne erforderlich.
+ *Datenstruktur und Fliesstext*
  - Wichtige Informationen (z.B. Durchführungsorte) werden teils als Fliesstext abgelegt, anstatt in strukturierten JSON-Feldern. Dies erschwert die Verarbeitung und Validierung der Daten.
+ *Zusätzliche Datenquellen*
  - Der Entwickler konnte keine weiteren relevanten APIs oder Endpunkte nennen. Der Zugriff auf interne Datenbanken würde zusätzliche Einblicke ermöglichen, ist jedoch öffentlich nicht verfügbar.

== Fazit  
Die Interviews zeigen, dass die derzeitige Datenstruktur und -pflege im SLCM erhebliche Herausforderungen für die Integration und Validierung im Tool lost.university darstellen.
Die uneinheitliche Erfassung von Informationen, fehlende Standardisierungen und limitierte öffentliche APIs führen dazu, dass fehlerhafte oder nicht studierbare Pläne erstellt werden können.
Weiter muss eine eventuelle zukünftige Validierung der Pläne auf Basis der bereits verfügbaren Daten erfolgen, da keine weiteren relevanten Datenquellen bekannt sind.
Für diese eventuelle Validierung müssen Annahmen getroffen werden, um die fehlenden Informationen zu ergänzen.  
Eine Verbesserung der Datenqualität und die Ergänzung um strukturierte Informationen wie detaillierte Durchführungssemester könnten nicht nur die Funktionalität des Tools selbst erweitern, sondern auch den Studiengang insgesamt unterstützen.