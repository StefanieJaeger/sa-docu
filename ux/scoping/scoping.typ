= Workshop: Scoping
== Kontext
Gemäss dem von #cite(<cuxd>, form: "prose") definierten Designprozess wurden im Scoping-Workshop Rahmenbedingungen festgelegt, potenzielle Probleme identifiziert und die Gruppe der Nutzenden initial abgesteckt.
Weiter wurden mögliche Nutzungsabläufe definiert und Annahmen erarbeitet.
Die erarbeiteten Artefakte wurden mit dem "Proto-" Präfix versehen, um ihre vorläufige Natur zu kennzeichnen.

== Vorgehen
Der Scoping-Workshop fand am 21.09.2024 statt und dauerte 5 Stunden.
Teilnehmende waren die beiden Autorinnen dieser Studienarbeit sowie der Inhaber und Haupt-Maintainer des Tools.
Der Workshop diente dazu, den Projektauftrag zu klären, Annahmen sichtbar zu machen und hypothetische Nutzende zu identifizieren.
Als Methoden wurden Brainstorming zu den einzelnen Kategorien des Problem-Statements (einsam und gemeinsam), Diskussionsrunden und Mapping eingesetzt.
Dafür verwendete Werkzeuge waren Moderationskarten, Schreiber, Papier, Pappkarton und eine Fotokamera zur Festhaltung der Ergebnisse.
Als Artefakte wurden ein Proto-Problem-Statement, eine Proto-Persona, eine Proto-Journey und eine Annahmen-Map erarbeitet.
Die Artefakte wurden nachträglich auf Miro digitalisiert und finden sich in Anhang XYZ.
 
== Resultate
Die folgenden Artefakte wurden im Rahmen des Scoping-Workshops erstellt und dienten als Grundlage für die weiteren Workshops:

=== Proto-Problem-Statement

Im unten dargestellten Proto-Problem-Statement werden die Nutzenden, ihre Herausforderungen und die identifizierten Probleme im Kontext der Semesterplanung mit lost.university beschrieben.
Weiter werden Lösungsansätze und Metriken zur Erfolgsmessung vorgeschlagen, sowie Stakeholder, Randbedingungen und Risiken aufgeführt.

Die Autorinnen selbst nutzen das Tool und brachten in diesem initialen Schritt ihre eigenen Erfahrungen mit spezifischen Schwierigkeiten ein.
Darüber hinaus sind sie gut vernetzt und konnten bereits erste zusätzliche Probleme, die ihnen aus Gesprächen mit anderen Nutzenden zugetragen wurden, in die Analyse einfliessen lassen.

#figure(image("Proto-Problem-Statement.jpg"), caption: [Proto-Problem-Statement])

Als primäre Nutzende wurden Informatikstudierende und eventuell die drei Studienberater der OST - Ostschweizer Fachhochschule identifiziert.
Bei den Studienberatern ist jedoch unklar, ob sie mit dem Tool vertraut sind und es möglicherweise bereits nutzen.
Dies muss noch geklärt werden.

Es wurden mehrere *Probleme* identifiziert, die sowohl technische als auch nutzungsbezogene Herausforderungen darstellen. Ein zentrales Problem ist die fehlerhafte Darstellung von Modulen, beispielsweise durch die Möglichkeit, Module in allen Semestern auszuwählen, obwohl dies nicht immer zulässig ist, sowie die Anzeige "falscher" Module und fehlende Hinweise zu zeitlichen Durchführungen. Zudem gibt es keine Möglichkeit, Module gezielt nach Kategorien oder Kürzeln zu suchen, was die Handhabung erschwert. 

Die Mobilversion des Tools weist ebenfalls Mängel auf, da das Suchen und Hinzufügen von Modulen auf bestimmten Geräten nicht funktioniert. Abgelöste Module werden nicht abgebildet, und Modulabhängigkeiten (sowohl "soft" als auch "hard") sind für die Nutzenden nicht ersichtlich. Der geräteübergreifende Zugriff auf eigene Planungen ist umständlich, da die Nutzer URLs manuell abspeichern müssen.

Darüber hinaus gibt es Probleme im Hintergrundprozess und der Datenqualität: Der Prozess der Modulaufschaltung sowie die Bereitstellung von Informationen im SLCM sind den Betreibenden der Plattform lost.university nicht transparent. Die Datenqualität leidet unter doppelten Modulen und Inkonsistenzen, und es bestehen Zweifel an der langfristigen Wartbarkeit des Systems. Schliesslich fehlen Informationen zur tatsächlichen Nutzung des Tools, wie etwa Logdaten, die für Optimierungen herangezogen werden könnten.

Die vorgeschlagenen *Lösungsansätze* umfassen die Gruppierung der Module gemäss den jeweiligen Reglementen sowie eine direkte Datenanbindung an das SLCM, um eine bessere Aktualität und Datenkonsistenz zu gewährleisten.
Alternativ oder auch ergänzend könnte ein erweitertes Verständnis der verfügbaren SLCM-Daten die Qualität und Funktionalität des Tools weiter verbessern.
Weiter sollten visuelle Hinweise zu zeitlichen Durchführungen und Modulabhängigkeiten integriert werden, um den Nutzenden eine klarere Orientierung zu bieten und das Erstellen von studierbaren Plänen zu erleichtern.
Zudem könnte die bisher eingesetzte Komponente _DataList_ durch eine Suchkomponente ersetzt werden, die die Best Practices in der Suchfunktionalität umsetzt und so das Suchen und Hinzufügen von Modulen erleichtert. 
Ein Login-System, beispielsweise über die _Switch Edu-ID_, würde den Zugriff auf personalisierte Planungen erleichtern,

Folgende *Metriken* wurden definiert: Eine Steigerung der mobilen und Desktop-Aufrufe um mindestens 10% im Peak sowie das Hinzufügen von Modulen im Chrome-Browser auf Android ohne Probleme.
Abschliessend wird eine zuverlässige Funktionalität durch regelmässiges FR-Testing (manuell oder automatisch) sichergestellt.

Als *Stakeholder* wurde der Owner sowie gleichzeitig auch Haupt-Maintainer des Tools identifiziert.

Zu den *Randbedingungen* zählen die Rückwärtskompatibilität für bereits erstellte Pläne und die Beibehaltung des Tech-Stacks (kein Backend, keine native Mobillösung).
Der Stil (Look & Feel) darf ebenfalls nicht stark verändert werden.

Da lost.university auf Daten einer 3rd-Party angewiesen ist (SLCM), besteht ein hohes *Risiko*, dass Änderungen an deren Systemen die Funktionalität des Tools beeinträchtigen.
Weiter besteht das Risiko, dass die Kooperation mit der OST-ICT nicht zustande kommt oder nicht effizient ist, und die Datenqualität der verfügbaren Endpunkte von SLCM nicht ausreicht, um eine korrekte Planung zu ermöglichen.
Zudem könnten Performance-Probleme bei der Suche auftreten.

=== Proto-Persona
Die erstellte Proto-Persona "Felix" repräsentiert einen Informatik-Teilzeitstudenten.
Weitere Parameter wie Probleme und Herausforderungen, Bedürfnisse und Ziele sowie Aufgaben, die sich Felix in Bezug auf die Semesterplanung stellen, wurden in der unten ersichtlichen Proto-Persona festgehalten.

#figure(image("Proto-Persona.jpg", height: 30%), caption: [Proto-Persona "Felix"])

=== Proto-Journey

Die Proto-Journey illustriert den typischen Prozess der Semesterplanung.
In der unten abgebildeten Grafik wird der Ablauf der Planung von der Suche nach Modulen über die Recherche von Modulinformationen bis hin zur finalen Anmeldung in der Anmeldephase 2 dargestellt.

#figure(image("Proto-Journey.jpg"), caption: [Proto-Journey "Planen des nächsten Semesters"])

=== Annahmen-Map

In der Annahmen-Map werden die im Workshop identifizierten Annahmen in einer Risiko-Ungewissheits-Matrix dargestellt.
Da die beiden Autorinnen das Tool bereits seit mehreren Jahren verwenden, haben sie Annahmen, von deren Richtigkeit sie überzeugt sind, jedoch bleibt unklar, wie hoch das damit verbundene Risiko ist.
In der untenstehenden Grafik ist die Annahmen-Map dargestellt.

#figure(image("Annahmen-Map.jpg"), caption: [Annahmen-Map])

Wie in der Grafik ersichtlich, gibt es einige Annahmen, die als Hochrisikobereiche identifiziert wurden:

- *Nicht-studierbare Pläne möglich:* Es ist bekannt, dass es möglich ist, Pläne zu erstellen, die nicht studierbar sind. Da das Tool keine Warnungen oder Hinweise zu solchen Plänen anzeigt, besteht das Risiko, dass Nutzende versehentlich nicht-studierbare Pläne erstellen.
- *Abhängigkeit von SLCM-Daten:* Das Tool ist auf die Daten aus dem SLCM angewiesen, um korrekte Planungen zu ermöglichen. Da die Datenqualität und -verfügbarkeit nicht immer gewährleistet ist, besteht das Risiko, dass das Tool nicht wie gewünscht erweitert werden könnte.
- *Schwierigkeit beim Abspeichern und Wiederauffinden des Planers:* Das Tool funktioniert rein lokal in der URL des Browsers. Es gibt keine Möglichkeit, seinen Plan zu speichern, ausser, man speichert die URL. Als etwas neueres Feature ist eine Zwischenspeicherung im _LocalStorage_ des Browsers dazugekommen. Da dies jedoch nicht allen Nutzenden bekannt ist, besteht das Risiko, dass Nutzende ihren Plan verlieren, insbesondere wenn sie geräteübergreifend darauf zugreifen möchten.
- *Mögliche Kooperation mit der OST-ICT:* Da das Tool von SLCM-Daten abhängig ist, besteht von Entwicklerseite her das Bedürfnis, von der OST-ICT eine bessere Erklärung der Daten oder sogar weitere Endpunkte mit weiteren Daten zu erhalten. Da die OST-ICT jedoch nicht immer die nötigen Ressourcen hat, um solche Anfragen zu bearbeiten, besteht das Risiko, dass die Kooperation nicht zustande kommt oder nicht effizient ist.

== Fazit
Die erarbeiteten Artefakte legen nahe, dass es einige kritische Abklärungen und Verbesserungen im Tool lost.university gibt, die in den folgenden Workshops genauer untersucht und bearbeitet werden sollten.
Insbesondere sollen die Annahmen im Hochrisikobereich möglichst früh überprüft werden.
