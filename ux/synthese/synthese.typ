#import "@preview/glossarium:0.4.1": gls, glspl
= Workshop: Synthese
Der Synthese-Workshop fand verteilt vom 23.10. bis zum 06.11.2024 statt.
Die Tagebuchstudie wurde separat ausgewertet und floss am 4.12.2024 in die Synthese ein.
Insgesamt wurden 27.5 Stunden für die Synthese der Forschungsergebnisse aufgewendet.
Davon entfielen 7.5 auf das nachträgliche Auswerten der Tagebuchstudie.
Als Grundlage für den Workshop dienten die Zusammenfassungen durchgeführten Contextual Inquiries und die chronologische Zusammenfassung des Vorgehens dieser, sowie die ausgewerteten Umfragen der Nutzungsgruppen und die technische Befragung.
Im Workshop wurden die Proto-Artefakte anhand der Forschungsergebnisse in validierte Artefakte überführt.
Dazu wurde persönlich vor Ort im Miro einsam und gemeinsam gebrainstormt, diskutiert und gemappt. 
Zusätzlich wurde eine Task Analysis erstellt, um die Aufgaben der Nutzenden besser zu verstehen und die Journey Map zu validieren.
Die ausgewertete Tagebuchstudie wurde nachträglich im Dezember dazu verwendet, die validierten Artefakte erneut zu überprüfen und allfällige Unstimmigkeiten zu korrigieren, was jedoch nicht nötig war.

== Validiertes Problem-Statement
Die folgende Grafik zeigt das überarbeitete Problem-Statement, welches unter anderem die Nutzenden, ihre Herausforderungen und die identifizierten Probleme im Kontext der Semesterplanung mit lost.university beschreibt.
#figure(image("artifacts/Val-Problem-Statement-personenlos.jpg"), caption: "Validiertes Problem-Statement");

Nachfolgend wird genauer auf Geändertes, Bestätigtes sowie Neu Erkanntes eingegangen.

=== Identifizierte Nutzende
Die Zielgruppe des Tools wurde angepasst: Es wurde bestätigt, dass ausschliesslich Studierende als Nutzende gelten.
Studienberatende zählen nicht mehr zur Zielgruppe.

=== Identifizierte Probleme
+ *Geänderte Probleme*
  - Der geräteübergreifende Zugriff auf den persönlichen Plan stellt kein Problem dar, da die derzeitige Speicherung im _LocalStorage_ und die Verwendung eigener Bookmarks von den Nutzenden als vorteilhaft angesehen werden. Zusätzliche Speicheroptionen in Form eines Logins wurden zwar von einer Person gewünscht, jedoch sollte die aktuelle Speichermethode unbedingt beibehalten werden.
+ *Bestätigte Probleme*
  - Die Datenführung im SLCM ist uneinheitlich. Dies liegt zum einen an der Fusion zur OST - Ostschweizer Fachhochschule, bei der drei Standorte mit unterschiedlichen Systemen und viel Legacy-Software zusammengeführt wurden.
+ *Neu identifizierte Probleme*
  - Die Suche ist umständlich: Der Fokus liegt nicht automatisch im Suchfeld, und das Suchfeld wird nach dem Hinzufügen von Elementen nicht geleert.
  - Die horizontale Übersichtlichkeit des Tools wird bemängelt. Bei vielen Semestern geht der Überblick schnell verloren.
  - Fehler beim Kopfrechnen der noch einzuplanenden #gls("ects") können auftreten.
  - Der Aufwand eines Moduls ist für Nutzende nicht ersichtlich (Feedback durch Studierende).
  - Die verfügbaren Features und neue Funktionen im Tool sind nicht sichtbar genug. Dadurch werden nicht alle Features aktiv genutzt oder überhaupt wahrgenommen (wie z.B. die Verwendung des _LocalStorage_).

=== Identifizierte Lösungsansätze
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
  - Die automatisierte Berechnung der noch einzuplanenden #gls("ects") soll ausgebaut werden, um den Nutzenden diese Informationen direkt anzuzeigen.
  - Peer-Feedback zu Modulen soll integriert werden.
  - Vergangene Semester sollen einklappbar gestaltet werden, um die Übersichtlichkeit zu verbessern.
  - Eine flexiblere Verwaltung der #gls("ects") soll ermöglicht werden, um effektiv belegte Module und angerechnete #gls("ects") abzubilden.
  - Es solle Release Notes für neue Features eingeführt werden, damit Nutzende über Änderungen informiert bleiben.

=== Metriken
Die Bewertungskriterien wurden angepasst, um die Ziele des Tools besser abzubilden.
+ *Geänderte Metriken:*
  - Die Anzahl der Aufrufe im Peak wird als Metrik entfernt, da es nicht darum geht, mehr Aufrufe zu generieren, sondern die bestehenden Aufrufe effizienter und nutzerfreundlicher zu gestalten.
  - Die Funktionalität der Suche im Chrome-Browser auf Android wurde aus den Metriken entfernt, da die Suche generell optimiert werden soll und nicht nur für eine spezifische Plattform. Ebenfalls ist zu diesem Zeitpunkt noch nicht klar, welche identifizierten Probleme im Rahmen dieser Arbeit effektiv bearbeitet werden können.
  - FR-Testing wurde entfernt, da in dieser Arbeit keine funktionellen Anforderungen explizit definiert werden.
+ *Neu identifizierte Metriken:*
  - Usability Testing wird eingeführt, um den Prototypen umfassend zu evaluieren.

== Validierte Persona
#figure(image("artifacts/Val-Persona.jpg"), caption: "Validierte Persona");
Die Proto-Persona wurde überwiegend ergänzt, wobei wenig Löschungen und Verschiebungen vorgenommen wurden.

=== Probleme & Herausforderungen
*Geänderte Aspekte:*
+ *Modulsuche nach Kürzel:*
  - Die Modulsuche nach Kürzel funktioniert nicht generell nicht, sondern nur auf bestimmten Geräten und in einigen Browsern.
+ *Modulbrowsing nach Kategorie:*
  - Es wurde ergänzt, dass das Tool lost.university kein Modulbrowsing nach Kategorie, Anzahl der #gls("ects") oder anderen Merkmalen ermöglicht. Dies schränkt die Nutzenden ein, die sich nicht nur an Modulnamen orientieren möchten.

*Bestätigte Probleme:*
  - Eine Konsultation des SLCM ist notwendig, um die Planung korrekt durchzuführen.
  - Viele Nutzende wissen nicht, welche Module verfügbar sind.

*Neu erkannte Probleme:*
+ *Planung und Unübersichtlichkeit:*
  - Die externe Konsultation des SLCM gestaltet die Planung unübersichtlich.
  Die Unübersichtlichkeit im SLCM gefährdet das Vertrauen der Nutzenden in die Korrektheit der dort hinterlegten Daten.
  - Die Liste der Module im Semesterplaner ist unübersichtlich, da sie alle Module alphabetisch sortiert anzeigt. Dies erschwert das Modulbrowsing, da kein Kontext wie Kategorie verfügbar ist.
+ *Module und Interessen:*
  - Häufig entsprechen die Module in den #gls("msp", display: "Musterstudienplänen") nicht vollständig mit den persönlichen Interessen der Nutzenden überein.
+ *Semesterbezogene Informationen:*
  - Die Information, in welchem Semester ein Modul durchgeführt wird, muss separat im SLCM nachgeschaut werden, da der Semesterplaner diese Daten nicht enthält.
+ *ECTS-Berechnung:*
  - Die Anzahl der noch einzuplanenden #gls("ects") pro Kategorie muss von den Nutzenden selbst ausgerechnet werden.

=== Aufgaben
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
- Die noch benötigten #gls("ects") pro Kategorie einsehen.
- Verschiedene Planvarianten ausprobieren.
- Den erstellten Plan speichern.

*Neu erkannte Aufgaben:*
+ *Entdecken und Anpassen:*
  - Interessante Module entdecken wird als wichtiger Bestandteil der Journey hervorgehoben.
  - Das Anpassen des Plans wurde als häufig durchgeführte Tätigkeit aufgenommen und als eigenständiger Schritt definiert.
+ *Semesterangebote prüfen:*
  - Es muss herausgefunden werden, welche Module in welchem Semester angeboten werden. Dies ist ein essenzieller erster Schritt in der Modulplanung, ohne den nicht studierbare Pläne entstehen. Die Nutzenden navigieren dazu z.B. auf die Modul-Anmeldeseite im SLCM.

=== Bedürfnisse & Ziele
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
- Schnell einen Überblick über das bisherige Studium und die #gls("ects") pro Kategorie erhalten.
- Nicht interessante Module des Semesterplaners mit spannenderen Modulen austauschen.

== Validierte Journey Map
Die Journey Map wurde angepasst: Der Schritt „Austausch“ wurde nach hinten verschoben, da er oft erst nach einer ersten Recherche stattfindet.
Während Austauschsituationen auch ausserhalb der Journey auftreten, stehen Recherchen zu Modulen im SLCM typischerweise vor irgendwelchen Recherchen im Semesterplaner.
Dies liegt daran, dass das SLCM umfassendere Informationen bietet, während der Planer als Recherchegrundlage hauptsächlich Modulverlinkungen, Vorlagen der #glspl("msp") sowie Module für Vertiefungen enthält.

Die validierte Journey Map fasst die verschiedenen Schritte der Planung sowie die damit verbundenen Beobachtungen (Findings, grün), Erkenntnisse (Insights, dunkelgrün) und Verbesserungspotenziale (Opportunity Areas, rosa) zusammen und dient als Basis für die Optimierung der Nutzererfahrung.
Die folgende Grafik zeigt die validierte Journey Map:

#figure(image("artifacts/Val-Journey-Map-ganz.jpg"), caption: "Validierte Journey Map inklusive Findings, Insights und Opportunity Areas");

Bei der Erstellung der validierten Journey Map wurden verschiedene Opportunity Areas identifiziert, die im Folgenden erläutert werden:

- *Meme:* Die Testpersonen nehmen das Meme positiv wahr und schätzen die humorvolle Darstellung der Studienplanung.
- *Release Notes:* Nicht alle Testpersonen wussten über alle Funktionen des Semesterplaners bescheid. Eine bessere Kommunikation über neue Funktionen und Änderungen könnte die Nutzung des Semesterplaners verbessern.
- *Verlinkung zu SLCM-Bereichen:* Einige Testpersonen suchten im SLCM nach der Studiengangsordnung. Eine direkte Verlinkung zu den relevanten Bereichen im SLCM könnte die Recherche erleichtern.
- *Viele vergangene Semester v.a. bei TZ:* Einige Testpersonen beklagten die horizontale Ausdehnung der Semesterübersicht, insbesondere bei fortgeschrittenem Studienverlauf von Teilzeitstudierenden. Eine Möglichkeit zur Ein- und Ausblendung vergangener Semester könnte die Übersichtlichkeit verbessern. 
- *Hoher Überprüfungsaufwand (nicht MSP):* Testpersonen, die nicht strikt dem #gls("msp") folgten, mussten mehrere Bereiche in den Modulbeschreibungen überprüfen, wie z.B. die empfohlenen Vorkenntnisse. Eine bessere Übersicht über die relevanten Informationen könnte den Überprüfungsaufwand reduzieren.
- *Personalisierter Studienplan:* Alle Testpersonen passten ihren Studienplan an persönliche Bedürfnisse an. Insbesondere suchten die meisten nach Modulen, die zu ihren Interessen passten. Eine Möglichkeit zur schnelleren Modulsuche könnte diesen Prozess erleichtern.
- *Modulabhängigkeiten:* Die empfohlenen Vorkenntnisse müssen in den Modulbeschreibungen überprüft werden. Ist hier ein Modul gelistet, dass die Testperson nicht besucht hat, muss sie die Modulbeschreibung des verlinkten Moduls überprüfen, und so weiter. Eine Darstellung der Modulabhängigkeiten im Semesterplaner könnte den Überprüfungsaufwand reduzieren.
- *Berechnung der ECTS pro Kategorie:* Die Übersicht der #gls("ects") pro Kategorie wurde von allen Testpersonen gelobt. Jedoch wurde hier mehrfach der Wunsch geäussert, die noch benötigten, also einzuplanenden #gls("ects") pro Kategorie zu sehen und nicht selbst ausrechnen zu müssen. Ebenfalls wurde der Wunsch geäussert, die Ansicht einer erreichten Kategorie besser darzustellen, da man den Unterschied zwischen 134/136 #gls("ects") und 136/136 #gls("ects") nicht auf den ersten Blick erkennt, weder in den Zahlen noch im fast ausgefüllten Balken.
- *Peer-Feedback:* Der Austausch mit Peers war für alle Testpersonen ein wichtiger Bestandteil der Studienplanung. Eine Möglichkeit zur direkten Integration von Peer-Feedback könnte die Planung erleichtern.
- *Aufwandsschätzung:* Zur Aufwandsschätzung wurden mehrere Methoden angewandt: Leistungsnachweise in der Modulbeschreibung nachschauen, Zusammenfassungen für Prüfungen auf dem Studentenportal einsehen, Austausch mit Peers. Eine Darstellung dazu im Semesterplaner könnte den Aufwand reduzieren.
- *Suchfunktion:* Die Suchfunktion wurde von allen Testpersonen genutzt und von einigen bemängelt. Insbesondere störte, dass beim Klick auf das "+" der Fokus nicht im Suchfeld war und sich das Suchfeld nicht automatisch leerte, nachdem ein Modul hinzugefügt wurde. Weiter wurde die Resultatliste von zwei Testpersonen als "überwältigend" empfunden, da sie die gesamte Seite einnahm und ohne Suchbegriff alle verfügbaren Module alphabetisch listete. Ebenfalls wurde erwähnt, dass das Hinzufügen von Modulen auf Mobile nicht immer funktioniert.
- *Planung mehrerer Varianten:* Einige Testpersonen planten mehrere Varianten ihres Studiums, um flexibel auf Änderungen reagieren zu können. Eine Möglichkeit zum Speichern und direkten Vergleichen der Varianten könnte die Planung erleichtern.
- *ECTS-Verwaltung:* Testpersonen, die angerechnete Leistungen hatten, mussten entweder die entsprechenden Module im Plan eintragen oder darauf verzichten. Eine Testperson zog es vor, nur die effektiv besuchten Module im Plan einzutragen, weshalb ihr in der Übersicht der #gls("ects") pro Kategorie nicht die korrekte Anzahl erreichter #gls("ects") angezeigt wurde. Eine Möglichkeit zur Verwaltung angerechneter Leistungen ausserhalb des Plans könnte die Übersichtlichkeit verbessern.
- *Faktische Abbildung vergangener Semester:* Es gibt momentan keine Möglichkeit, das Nichtbestehen eines Moduls im Plan abzubilden. Nicht bestandene Module müssen manuell verschoben werden. Einige Testpersonen wünschten sich eine Möglichkeit, die verganenen Semester faktisch korrekt abzubilden. Hier fliesst die Angabe des Nichtbestehens eines Moduls sowie die Anrechnung von #gls("ects") aus früherem Studium ein.
- *Planvalidierung:* Einige Testpersonen bemängelten, dass Module in Semestern hinzufügbar sind, wo sie nicht durchgeführt werden. Eine Validierung der Planung könnte dies verhindern. Ebenfalls könnte hier in einem weiteren Schritt die Suche miteinbezogen werden (Module anzeigen aber nicht hinzufügbar in entsprechenden Semestern).
- *Nutzerführung (Semesternummer und Hinzufügen von Modulen):* Einige Testpersonen äusserten die Wünsche, die Semester nicht manuell zählen zu müssen sowie die Möglichkeit zu haben, Module direkt aus der Vertiefungsliste hinzuzufügen.
- *Flexible Speicheroptionen:* Eine Testperson äusserte den Wunsch, zusätzlich zur Speicherung des Plans lokal in der URL eine Lösung mit Login zu haben. Es wurde jedoch explizit darauf hingewiesen, dass die jetzige Lösung weiter funktionieren sollte, da diese sehr flexibel einsetzbar ist.

== Task Analysis
Aus den gesammelten Erkenntnissen aller Erhebungsmethoden wurde eine Task Analysis angelehnt an #cite(<task-analysis>, form: "prose") erstellt.
Die untenstehende Grafik zeigt die identifizierten Schritte, die Nutzende während der Planung des nächsten Semesters in den Anmeldephasen 1 und 2 durchlaufen, im Detail.

#figure(image("artifacts/Task-Analysis.jpg", width: 70%), caption: "Task Analysis");

== Fazit
Die erstellten Proto-Artefakte konnten mit den Forschungsergebnissen validiert und weiterentwickelt werden.
Sie stellen eine solide Basis für die folgenden Workshops dar.
Insbesondere wurden einige neue Probleme und Herausforderungen identifiziert, die in den weiteren Workshops genauer beleuchtet werden sollten.
