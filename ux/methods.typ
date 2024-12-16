#import "@preview/glossarium:0.4.1": gls, glspl
= Vorgehen
Nachfolgend wird das für diese Studienarbeit gewählte Vorgehensmodell erläutert.

== Vorgehensweise nach dem User-Centered Design
Das in dieser Arbeit angewandte Vorgehen implementiert das CUXD-Vorgehensmodell, wie es von #cite(<cuxd>, form: "prose") in ihrem Buch «Collaborative UX Design» beschrieben wird.
Im nächsten Abschnitt wird dieses genauer erläutert.
Dieses Modell wurde gewählt, um die Bedürfnisse der Nutzenden in den Vordergrund zu rücken und benutzerfreundliche und menschzentrierte Lösungsansätze für die Applikation lost.university zu entwickeln.

=== Angewandte Methodik im Entwicklungsprozess
Die in diesem Abschnitt beschriebene Methodik basiert auf dem CUXD-Vorgehensmodell, wie es von #cite(<cuxd>, form: "prose") beschrieben wird.
Wie in der untenstehenden Grafik ersichtlich @cuxd-prozess, gliedert sich das Vorgehen in zwei, in dieser Arbeit zum Teil parallel ablaufende Phasen: «Verstehen» und «Erkunden».
Die Erkundungsphase kann dabei mehrfach durchlaufen werden.
Die Phase "Deliver" steht in dieser Arbeit nicht im Fokus und wird daher nicht weiter erläutert.

#figure(image("cuxd-prozess.png"), caption: "CUXD-Vorgehensmodell")

In jeder Phase werden mehrere Workshops abgehalten, um Inhalte zu erarbeiten, aufzubereiten oder zu analysieren.
Im Folgenden werden diese näher erklärt.
#cite(<cuxd>, form: "prose") stellen klar fest, dass das CUXD-Vorgehensmodell keinesfalls ein starrer Prozess ist, sondern je nach zugrunde liegender Aufgabenstellung angepasst werden kann und sollte.
Es können Workshops bei komplexen Aufgabenstellungen beispielsweise weiter unterteilt werden oder einzelne Schritte sogar weggelassen werden.
Abweichungen vom CUXD-Vorgehensmodell werden in dieser Arbeit explizit genannt und begründet.

==== Verstehen
Diese Phase befasst sich, wie ihr Name es vermuten lässt, mit dem Verstehen des Problemraums.
Ihr sind drei Workshops untergeordnet.
Als Ergebnis der drei Workshop winkt ein empirisch validiertes Verständnis des Problemraums.

===== Workshop: Scoping
Im Scoping-Workshop werden Rahmenbedingungen festgelegt, potenzielle Probleme identifiziert, die Gruppe der Nutzenden initial abgesteckt.
Weiter werden mögliche Nutzungsabläufe definiert und Annahmen erarbeitet.
Die erarbeiteten Artefakte werden mit dem "Proto-" Präfix versehen, um ihre vorläufige Natur zu kennzeichnen.

===== Workshop: Research
Im Research-Workshop wird ein detaillierter Forschungsplan zur Validierung der im Scoping-Workshop erarbeiteten Inhalte aufgestellt.
Hierbei liegt der Fokus auf den definierten Wissenslücken und kritischen Annahmen.
Es werden Leitfäden für die Durchführung der gewählten Forschungsmethoden erstellt und danach die Erhebungen durchgeführt.

===== Workshop: Synthese
Im Synthese-Workshop werden durchgeführte Erhebungen ausgewertet und die erstellten Proto-Artefakte in validierte Artefakte überführt.
Es wird eine Annahmen-Überprüfung durchgeführt und neue Erkenntnisse festgehalten.
Während der Überarbeitung der Proto-Artefakte wird eine neue Sicht auf die Problemstellung gewonnen, mit welchem sich die Aufgabenstellung validieren lässt.
Die dabei entstehenden Artefakte definieren indirekt etwaige funktionale wie auch nicht-funktionale Anforderungen, weshalb auf eine explizite Definition dieser verzichtet wird.

==== Erkunden
In der Erkundungsphase werden Lösungsansätze gesammelt und zu einem Lösungskonzept weiterentwickelt.
Auch hier sind mehrere Workshops vorgesehen.

===== Workshop: Ideation
Im Ideation Workshop wird ein umfassender Ideenkatalog erstellt, welcher später neben der #gls("persona") und Journey Map als Basis für den Konzept Workshop dient.
Um möglichst viele Lösungsideen zu generieren, werden hierbei die unterschiedlichen Produktchancen betrachtet.
Es gilt das Prinzip "Quantität vor Qualität".
Damit dies gelingt, kommen verschiedene Kreativitätstechniken zum Einsatz, wie beispielsweise das How-Might-We, das 6-3-5 und das Design Studio.

===== Workshop: Konzept
Mit Hilfe von Szenarien werden im Konzept-Workshop die zuvor ausgearbeiteten Lösungsideen zu einem passenden Konzept weiterentwickelt.
Dies ermöglicht es bereits vor dem Prototyping mögliche Probleme und Widersprüche in den Lösungen zu identifizieren und zu beheben.
Im Workshop entstehen verschiedene Artefakte, wie #glspl("keyscreen"), Szenarien und eine User-Story-Map.
Letztere enthält eine erste Version eines Produkt-Backlogs.

===== Workshop: Prototyping
Im Prototyping-Workshop wird in einem ersten Schritt ausgearbeitet, mit welchen Methoden welche zuvor definierten Funktionalitäten validiert werden sollen.
Dieses Validierungs-Mapping schafft die Voraussetzung zur Entwicklung entsprechender Prototypen.
In einem zweiten Schritt werden die im Validierungs-Mapping definierten Prototypen erstellt. 

===== Workshop: Validierung
Im Validierung-Workshop werden die zuvor definierten Validierungsmethoden durchgeführt, um die Eignung der gewählten Lösungskonzepte zu überprüfen.
Die Ergebnisse werden in Kontrast zu den ursprünglich definierten Annahmen gestellt, um zu überprüfen, ob die Lösungskonzepte die gestellten Anforderungen erfüllen.
Im negativen Fall erfolgt erneut eine Iteration über die Erkundungs-Phase.

== Qualitative Forschungsmethoden
Qualitative Forschungsmethoden eignen sich besonders für die vorliegende Studienarbeit, da sie nach #cite(<cuxd>, form: "prose") eine tiefgehende Auseinandersetzung mit den Bedürfnissen und Erfahrungen der Nutzenden ermöglichen.
Im Vordergrund steht dabei die Erfassung subjektiver Eindrücke, Meinungen und Emotionen der Nutzenden, die durch Methoden wie Interviews oder Beobachtungen detailliert untersucht werden können.
Diese Methoden bieten die Möglichkeit, Herausforderungen in der Nutzung des Tools zu identifizieren und die zugrunde liegenden Ursachen besser zu verstehen.

Insbesondere die menschzentrierte Weiterentwicklung erfordert gemäss #cite(<us-ux>, form: "prose") ein tiefes Verständnis der Nutzungskontexte sowie der Interaktionen der Anwender und Anwenderinnen mit dem Tool.
Dabei erlauben qualitative Methoden, flexibel auf unerwartete Erkenntnisse während der Datenerhebung einzugehen und so eine umfassendere Analyse der Nutzungsszenarien zu ermöglichen.
Darüber hinaus sind qualitative Ansätze hilfreich, um Verbesserungsvorschläge aus Sicht der Nutzenden zu erheben und konkrete Usability-Probleme zu erfassen, die für die Optimierung des Tools relevant sind @cuxd.

Da der Fokus in der vorliegenden Arbeit auf der Erfassung komplexer Interaktionen und subjektiver Erfahrungen der Nutzenden liegt, bieten qualitative Methoden somit eine geeignete Basis, um explorative Forschung durchzuführen.
Diese Herangehensweise ermöglicht es, während dieser Arbeit tiefgründige Einblicke in die Nutzung des Tools zu gewinnen, die für dessen zielgerichtete Weiterentwicklung von zentraler Bedeutung sind.

== Methoden zur Datenerhebung
Die folgenden Methoden zur Datenerhebung wurden im Rahmen dieser Studienarbeit angewandt:
- Nutzungskontextanalyse @nutzungskontextanalyse
  - Contextual Inquiry @contextual-inquiry
  - Tagebuchstudie @tagebuchstudie
- Interviews technischer Natur @technical-interview
- Fragebogen @persona-fragebogenstudie
- Usability Tests @ut-preparation