= Phase 2: Erkunden
In der Erkundungsphase wurden auf Basis des in der Phase 1: Verstehen erarbeiteten Verständnisses des Problemraums Lösungsansätze entwickelt, diese zu einem kohärenten Lösungskonzept zusammengeführt und validiert.[QUELLE CUXD]

Als Ergebnis der vier untergeordneten Workshops wird ein empirisch validiertes Lösungskonzept festgehalten.
Dieses Konzept wird in Form der validierten Artefakte Mockups, funktionaler Prototyp, Usability-Test-Auswertungen und einer User-Story festgehalten.

Das validierte Lösungskonzept wird in der Phase 3: Deliver genutzt, um eine umsetzbare Lösung zu entwickeln.
Diese Umsetzung ist nicht Teil dieser Studienarbeit.

Es wurde vom vorgeschlagenen Prozess insofern abgewichen, als dass bereits am Anfang der Erkundungsphase festgelegt wurde, dass ein funktionaler High-Fidelity-Prototyp entstehen soll.
Diese Entscheidung fusste auf verschiedenen gelisteten Vorteile im Buch Usability und UX für Webdesigner [QUELLE: Buch UX für Webdesigner S.209/210], auf die im Folgenden eingegangen wird.

*Verfügbarkeit und kleiner Einarbeitungsaufwand*
Zum einen existiert aufgrund der Open-Source-Natur des Tools der Zugriff auf den Source-Code, um diesen weiterzuentwickeln.
Zum anderen ist eine der Autorinnen bereits mit diesem Source-Code vertraut, wodurch schnell und effizient gearbeitet werden kann.
Im Vergleich zur Einarbeitung in eine spezielle Prototyping-Software wie beispielsweise Figma erfordert die Arbeit mit dem bestehenden Tool weniger Zeitaufwand.
Weiter kann der Prototyp einfach als Unterseite der bestehenden Website (sa.lost.university) gehostet werden.
Dies bietet den Vorteil, dass Nutzende ihre eigenen Geräte verwenden können, ohne zusätzliche Software installieren zu müssen.

*Verfügbare Bibliotheken*
Es existieren zahlreiche Bibliotheken, die die funktionale Entwicklung des Prototypen in der Programmiersprache Vue.js und dem Usability-First-CSS-Framework Tailwind unterstützen.

*Hoher Funktionsaufwand im Hinblick auf Interaktionen*
Das Buch Usability und UX für Webdesigner weist darauf hin, dass die Entwicklung eines High-Fidelity-Prototyps besonders dann interessant wird, wenn neue (Teil-)Funktionalitäten hinzukommen, wie es hier der Fall ist [QUELLE: Buch UX für Webdesigner S.209].
Diese neuen Funktionalitäten sind für die Nutzenden weniger vertraut, stellen aber zentrale Aufgaben in der Nutzung des Tools dar.
Der gewählte Detaillierungsgrad ermöglicht es somit, den Prototypen optimal für die geplanten Nutzertests vorzubereiten: Er wird mit redaktionellem Content ausgestattet, ist voll funktionsfähig und visuell ausgestaltet.

*Beschränkung auf Teilbereiche*
Der Fokus der Ausarbeitung richtet sich nach dem Pareto-Prinzip: Es wird angenommen, dass sich die Nutzenden voraussichtlich 80% ihrer Besuchszeit auf 20% der Funktionalitäten konzentrieren.
Daher sollen insbesondere diese 20% detailliert umgesetzt werden [QUELLE: Buch UX für Webdesigner S.210].
Um eine Einschränkung der vielen Opportunity Areas vorzunehmen, wurde im Ideation-Workshop ein Dot-Voting vorgenommen, um die wichtigsten Opportunity Areas zu priorisieren.

*Zu testende Endgeräte*
Vor Beginn der Phase 2 wurde zudem die Frage des Zielgeräts geprüft.
Obwohl der Semesterplaner grundsätzlich mobile-first gestaltet ist, wird der Prototyp zunächst für den Desktop erstellt, da die Zielgruppe die zentralen Funktionen überwiegend auf diesem Gerät nutzt.
Die Integration in eine mobile-first-Umgebung kann in einer späteren Phase ausserhalb des Umfangs dieser Studienarbeit erfolgen.

#include("ideation/ideation.typ")
#include("konzept/konzept.typ")
#include("prototyp/prototyp.typ")
#include("validierung/validierung.typ")
