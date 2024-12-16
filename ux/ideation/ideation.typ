#import "@preview/glossarium:0.4.1": gls

= Workshop: Ideation
Der Ideation-Workshop wurde vom 8.11. - zum 15.11. durchgeführt und dauerte insgesamt 34.5 Stunden.
Teilnehmende waren die beiden Autorinnen dieser Studienarbeit.
Der Workshop hatte das Ziel, basierend auf den in der Synthese validierten Artefakten möglichst viele Ideen für die Applikation lost.university zu generieren.
Dabei wurde bereits zur Beantwortung einiger Fragen in den Konzept-Workshop vorgegriffen, um die vielversprechendsten Ideen zu identifizieren.
Ebenso soll an dieser Stelle auf die bereits am Anfang der Erkundungsphase getroffene Entscheidung zu einem funktionalen High-Fidelity-Prototypen hingewiesen werden.
Als Methoden wurden How Might We & 6-3-5, Dot Voting, Design Studio und Diskussionsrunden eingesetzt.
Als Hilfsmittel wurden Schreiber, Papier, Scanner zur Festhaltung der Ergebnisse sowie Miro verwendet.
Als Ergebnis wurden die wichtigsten Opportunity Areas festgehalten, dazu Lösungsansätze und Skizzen erstellt.
Als erstes wurden zu jeder Opportunity Area How-Might-We-Fragen formuliert.
Da die Zeit für diese Studienarbeit begrenzt war, wurde anschliessend ein Dot-Voting durchgeführt, um die wichtigsten Opportunity Areas und How-Might-We-Fragen zu identifizieren.
Die Ideenfindung für das so abgeleitete #gls("mvp") konnte somit zielgerichteter gestaltet werden und in die jeweiligen Thematiken tiefer eingestiegen werden.
Danach wurden in einem 2-3-4 (Abwandlung des 6-3-5, da nur zwei Personen an der Ideenfindung teilnahmen) Ideen zu den wichtigsten How-Might-We-Fragen generiert.

== Workshop-Resultate
Nachfolgend werden die wichtigsten Ergebnisse des Ideation-Workshops vorgestellt.

=== How-Might-We-Fragen und wichtigste Opportunity Areas (#gls("mvp"))
Die nachfolgende Grafik zeigt die erarbeiteten How-Might-We-Fragen sowie die Regeln für das Dot-Voting:

#figure(image("How-Might-We-Dot.jpg"), caption: [How-Might-We-Fragen])

Jede Teilnehmerin konnte 25 Punkte auf die How-Might-We-Fragen verteilen und dabei zwischen 0 - 2 Punkte pro Area vergeben.
Je ein Favorit durfte mit drei Punkten markiert werden.
Somit wurde das folgende Ranking ermittelt:
- *6 Punkte:*
  - Planvalidierung
- *4 Punkte:*
  - Nutzerführung
  - Berechnung der ECTS pro Kategorie
  - Suchfunktion
  - ECTS-Verwaltung
  - Verlinkung zu SLCM-Bereichen
  - Hoher Überprüfungsaufwand, wenn nicht einem MSP strikt gefolgt wird
- *3 Punkte:*
  - Release Notes
  - Faktische Abbildung vergangener Semester
  - Modulabhängigkeiten
- *2 Punkte:*
  - Viele vergangene Semester
- *1 Punkt:*
  - Aufwandsschätzung
  - Planung mehrerer Varianten

Aus diesem Ranking heraus wurde definiert, dass die wichtigsten Opportunity Areas diese mit jeweils 6 und 4 Punkten sind und für die weiteren Workshops genauer betrachtet werden.
Die anderen Opportunity Areas wurden in dieser Studienarbeit nicht weiter verfolgt.
Im Anschluss an das Dot-Voting wurden diese in einem 2-3-4 Workshop weiter bearbeitet.

=== 2-3-4 und Design Studio
In einem 2-3-4 wurden zu den wichtigsten Opportunity Areas Ideen generiert.
Die meistversprechenden wurden im Anschluss in einem Design Studio weiter ausgearbeitet.

Die Ideen wurden nachfolgend direkt diskutiert, wobei die Autorinnen bereits bewusst in den Konzept-Workshop vorgriffen, um die vielversprechendsten Ideen zu identifizieren.

Die kompletten Artefakte des Ideation-Workshops sind im Anhang unter @ideation-appendix zu finden.
Nachfolgend werden die wichtigsten Ideen kurz vorgestellt.

==== Planvalidierung
Die komplexesten Ideen gehören zur Planvalidierung.
Hierbei wurde eine vielzahl von Ideen generiert, die in einem Design Studio weiter ausgearbeitet wurden.
Die wichtigsten Ideen und Konzepte beinhalten nebst einer Validierung auch ein _Constraints Enforcement_, mit Hilfe dessen nicht valide Planungen verhindert werden können.

Die folgenden Bilder zeigen die wichtigsten Ideen und Konzepte.

*Validierungs-Toggle*
Es wurde ein Toggle vorgeschlagen, um die Validierung der Planung zu aktivieren oder deaktivieren.
So können Nutzende selbst entscheiden, ob sie die Validierung nutzen möchten.
#figure(image("DS-Validierung-Toggle.jpg"),caption: [Design Studio: Validierungs-Toggle]);

*Constraints Enforcement*
Um nicht valide Planungen zu verhindern, wurde ein _Constraints Enforcement_ vorgeschlagen.
Dabei werden in der Modulsuche nur Module hinzufügbar, die im entsprechenden Semester durchgeführt werden und noch nicht in der Planung vorhanden sind.
Bei nicht hinzufügbaren Modulen wird angezeigt, weshalb diese nicht hinzugefügt werden können.
Gründe dafür beinhalten z.B.:
- Modul wird nicht mehr angeboten.
- Modul wird in einem anderen Semester durchgeführt.
- Modul ist bereits in der Planung vorhanden.

Weiter wurde vorgeschlagen, dass diese Beschränkungen in der Suche nur für das aktuelle sowie für zukünftige Semester gelten.
Dies, da es Module gibt, bei denen in der Vergangenheit das Durchführungssemester geändert wurde.
Da es die Datenqualität des SLCM nicht zulässt, zu überprüfen, wann ein Semester geändert wurde, ist es legitim, dass Studierende ein Modul in der Vergangenheit in einem "falschen" Semester besucht haben können.
Dies erklärt sich auch der Tatsache, dass im SLCM die Durchführungssemester nicht historisiert sind, sondern in der Modulbeschreibung lediglich ein "Durchführungszeitraum" im Format "HS/14 - FS/24" angegeben ist.
Für die Beschränkung könnte im Prototyp der String so verarbeitet werden, dass die letzte Angabe als aktuelles Semester interpretiert wird.
Im zuvor erwähnten Beispiel wäre das dann "FS".

#figure(image("DS-Validierung-Modulsuche.jpg", width:60%),caption: [Design Studio: Modulsuche mit Validierung]);

*Fehlermeldungen und Warnungen*
Es wurde vorgeschlagen, Fehler und Warnungen möglichst platzsparend im Plan einzubauen, da bereits erwähnt wurde, dass die horizontale Ausdehnung des Plans mit der Zeit unübersichtlich wird.
Somit entstand die Idee, fehlerhafte Module rot zu umranden und mit einem Fehler-Icon zu versehen.
Da die Validierung in die Vergangenheit nur bedingt möglich ist, wurde weiter vorgeschlagen, dass eventuell fehlerhafte Module mit einem Info-Icon, nicht jedoch mit einem roten Rand versehen werden.
So wäre ersichtlich, dass es sich jeweils um Warnungen oder Fehler handelt.
#figure(image("DS-Validierung-Meldungen-Plan.jpg", width: 60%),caption: [Design Studio: Fehlermeldungen im Plan]);
#figure(image("DS-Validierung-Modulkennzeichnung.jpg", width: 30%),caption: [Design Studio: Modulkennzeichnung bei Fehlern]);
*Interaktives Fehler-Dashboard*
Aufgrund der Idee, Fehler möglichst platzsparend im Plan selbst anzuzeigen, wurde ein interaktives Fehler-Dashboard vorgeschlagen.
Damit bleibt die Planung übersichtlich und Fehler können an einer zentralen Stelle gesammelt eingesehen werden.
Ebenfalls soll es möglich sein, direkt aus dem Dashboard heraus Fehler zu beheben.
Die Fehlerbehebung könnte folgende Aktionen beinhalten: 
- fehlerhaftes Modul entfernen lassen
- fehlerhaftes Modul in korrektes Semester verschieben lassen
- nicht mehr angebotenes Modul mit dem gesetzten Nachfolgemodul ersetzen lassen.

#figure(image("DS-Validierung-Globale-Meldungen.jpg"),caption: [Design Studio: Globale Fehlermeldungen]);

*Maximale Studiumsdauer*
Da die maximale Studiumsdauer an der OST - Ostschweizer Fachhochschule 14 Semester beträgt @ostStudienordnung, wurde in Anlehnung an das _Constraints Enforcement_ eine Begrenzung der Planung auf 14 Semester vorgeschlagen.
#figure(image("DS-Validierung-14Sem.jpg", width: 40%),caption: [Design Studio: Nicht mehr als 14 Semester planbar]);

==== Nutzerführung
Die Ideen zur Nutzerführung verfolgen einen geradlinigen Ansatz:
- Nutzende sollen möglichst schnell die Semesternummer einsehen können. Da ohne ein gesetztes Startsemester die Semester bereits mit "1. Semester", "2. Semester" etc. bezeichnet werden, wird diese Idee als Grundlage genommen und die entsprechende Bezeichnung, wie "HS24" dahinter angezeigt.
- Nutzende sollen bereits referenzierte Module direkt hinzufügen können. Mit einer Ausarbeitung des nächstmöglichen Semesters soll dies möglich sein.
#figure(image("DS-Semesternummer.jpg"), caption: [Design Studio: Semester Nummer]);
#figure(image("DS-Ref-Mod-hinzufügen.jpg", width: 60%), caption: [Design Studio: Referenzierte Module direkt hinzufügen]);

==== Berechnung der ECTS pro Kategorie
Die Ideen zur Berechnung der ECTS pro Kategorie verfolgten verschiedene Ansätze zur Erweiterung: von der Anzeige aller möglichen Stati, wie beispielsweise "zu erreichende ECTS", "erreichte ECTS", "geplante ECTS" und "zu planende ECTS" bis hin zur minimalen Information mit nur "zu planende ECTS" wurde alles diskutiert.

Im Endeffekt wurde die Änderung der bisherigen Anzeige von "X noch geplant" zu "X noch zu planen" als sinnvoll erachtet, da dies explizit von verschiedenen Personen in den CIs erwähnt wurde.
In der untenstehenden Grafik ist weiter die Idee ersichtlich, wie die die Nutzerführung durch die Möglichkeit, direkt neben den jeweiligen Kategorien Module hinzufügen zu können, verbessert werden kann.
#figure(image("DS-zu-planende-ECTS.jpg", width: 40%), caption: [Design Studio: Zu planende ECTS anzeigen, verknüpft mit "Referenzierte Module hinzufügen"]);

==== Suchfunktion
Mit der Idee des _Constraints Enforcement_ soll das Hinzufügen von Modulen in falsche Semester, die nicht mehr angeboten werden oder bereits in der Planung vorhanden sind, verhindert werden.
Dabei wurde die Idee entwickelt, dass in der Modulsuche statt nicht einplanbare Module auszublenden, diese zwar anzuzeigen, jedoch nicht hinzufügbar zu machen.
Damit die Nutzenden adäquat informiert sind, weshalb ein Modul nicht hinzugefügt werden kann, werden entsprechende Zusatzinformationen, wie etwa das Durchführungssemester oder ob ein Modul bereits eingeplant ist, angezeigt.

Da sich so neu erheblich viele zusätzliche Informationen in der Suche befinden, wurde die Idee entwickelt, diese als Dropdown darzustellen.
Mit der zusätzlichen Idee, dass die Ergebnisse der Suche nach Kategorien sortiert werden, soll die Suche weiter vereinfacht werden.
Somit wird den Nutzenden die Möglichkeit gegeben, gezielt nach Modulen einer Kategorie zu suchen.

#figure(image("DS-Modulsuche-Dropdown.jpg", width: 40%), caption: [Design Studio: Dropdown-Platzierung der Modulsuche]);
#figure(image("DS-Modulsuche-Suchkomponente-Logik.jpg"), caption: [Design Studio: Logik und Aufbau der erweiterten Suchkomponente]);

==== ECTS-Verwaltung
Für die Opportunity Area "ECTS-Verwaltung" wurden verschiedene Ideen entwickelt.
Die meistversprechenden werden im Folgenden kurz vorgestellt.

Da Übertrittsmodule definitionsgemäss nicht einem spezifischen Semester zugeordnet sind, wurde die Idee entwickelt, diese in einem eigenen Bereich zu verwalten.
Dabei soll es möglich sein, die im SLCM genannten Übertrittsmodule einzutragen.
Somit können Nutzende, die beispielsweise ein _Cambridge Advanced Certificate_ besitzen, ihr jeweils dafür angerechnetes Modul (z.B. "English: Where Tech Meets BEC") eintragen.
Dies erfolgt über ein Modal, in welchem die Nutzenden die weitere Möglichkeit haben, ein eigenes Modul zu erstellen.
Für das in Zusammenarbeit mit der Interkantonalen Hochschule für Heilpädagogik angebotene "Digicamp" ist letztere Methode notwendig, da dieses Modul nicht im SLCM geführt wird und keinem speziellen Modul entspricht. Es werden dort jedoch ECTS in Kategorien vergeben, in diesem Fall 3 ECTS in die Kateogorien "Informatik" und "Aufbau".

#figure(image("DS-Übertrittsmodule-Button.jpg", width: 40%), caption: [Design Studio: Übertrittsmodule Button]);
#figure(image("DS-Übertrittsmodule-Anzeige-Validierung.jpg", width: 60%), caption: [Design Studio: Anzeige und Validierung der Übertrittsmodule]);
#figure(image("DS-Übertrittsmodule-Modal.jpg"), caption: [Design Studio: Modal für das Hinzufügen von Übertrittsmodulen]);

==== Verlinkung zu SLCM-Bereichen
Die Ideengenerierung zur Verlinkung zu SLCM-Bereichen gestaltete sich schwierig, da die Anforderungen an die Verlinkung nicht klar definiert waren.
Studienteilnehmende riefen das SLCM zur Modulbeschreibung auf und um die Kategoriezuteilung eines Moduls zu überprüfen oder ein Liste aller verfügbaren Module einer Kategorie zu erhalten.
Dabei ist die Verlinkung zur Modulbeschreibung bereits umgesetzt, und die Kategoriezuteilung eines Moduls kann gemäss der ausgearbeiteten Ideen in der Modulsuche sowie in der Übersicht
der ECTS Punkte pro Kategorie angezeigt werden, weshalb das Verlinken nur noch für das navigieren zur entsprechenden Studienordnungsbeschreibung weiter verfolgt wurde.

Die Platzierung der Verlinkung wurde neben dem Startsemester in der Übersicht der ECTS Punkte pro Kategorie vorgeschlagen, da die Studienordnungsbeschreibung an das Startsemester gebunden ist.

#figure(image("DS-Link-STD.jpg", width: 60%), caption: [Design Studio: Link zu SLCM-Bereichen]);

==== Hoher Überprüfungsaufwand, wenn nicht einem MSP strikt gefolgt wird
Durch die zuvor durchgeführten 2-3-4 und Design Studios von "Planvalidierung" wurden die How-Might-We-Fragen indirekt bereits beantwortet.
Die Anzahl geöffneter Tabs zur Überprüfung bzw. Recherche kann durch die Anzeige von Kategorien in der Suche, der Durchführungen sowie der Modulabhängigkeiten reduziert werden.
Die Überprüfung der Kategoriezuteilung eines Moduls kann ebenfalls durch die Anzeige der Kategoriezuteilung in der Modulsuche vereinfacht werden.
Die Anzeige der Semesterdurchführung in der modulsuche vereinfacht die Überprüfung dieser ebenfalls. 

== Fazit
Der Ideation-Workshop brachte eine Vielzahl von Ideen hervor, die im Anschluss systematisch mit den technischen Erkenntnissen aus den Interviews zu SLCM und Datenstruktur sowie dem bereits vorhandenen Wissen über die technische Struktur und den vorhandenen Code des Tools abgeglichen wurden.
Dieser Abgleich diente dazu, die Umsetzbarkeit der Ideen mittels einem funktionalen Prototyp sicherzustellen.
Das ausgearbeitete #gls("mvp")-Konzept wird im nächsten Kapitel vorgestellt.