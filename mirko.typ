= Interview mit dem Studiengangleiter Informatik

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5%,
  [
    Studiengangleiter \
    Interviewer \
    Datum \
    Ort
  ],
  [
    Mirko Stocker \
    Stefanie Jäger \
    17.10.2024 \
    OST
  ]
)

== Generelle Fragen

/ Wer ist für die Modulbeschreibungen verantwortlich?:
Modulverantwortliche sind zuständig, dass ihre Modulbeschreibungen korrekt sind.
Sie können Anpassungen jedoch auch an die Studienadministration delegieren.

/ Wer ist für die Studienreglemente verantwortlich?:
Der Hochschulrat ist für das grosse Reglement verantwortlich.
Ich als Studiengangleiter kümmere mich um die Ausführungsbestimmungen für meinen Studiengang, welche vom Hochschulrat freigegeben werden.
Anhänge, Modulzuweisungen, etc. unterliegen ebenfalls mir, müssen jedoch nicht vom Hochschulrat freigegeben werden.

/ Wie wird festgehalten, wann ein Modul durchgeführt wird?:
Es wird - in einem separaten Tool - pro Semester erfasst, ob das Modul angeboten wird.

/ Wie entstehen Modulkürzel? Weshalb ändern diese manchmal?:
Modulkürzel werden bei der Erfassung gewählt.
Grössere Änderungen, zB eine andere Anzahl Credits, sollten auch Änderungen am Kürzel mit sich ziehen, das ist jedoch nicht garantiert.
Das Kürzel kann auch bei kleineren Änderungen ändern.

/ Wie werden die erforderlichen und empfohlenen Vorkenntnisse definiert und erfasst?:
Modulverantwortliche definieren dies, sprechen sich dafür meist auch mit anderen Dozierenden ab.

/ Wie werden diese Eingaben getätigt?:
Die Modulbeschreibungen werden über ein Tool, das dem SLCM sehr ähnelt, erfasst.
Die Durchführungen werden über ein separates Tool erfasst.

/ Gibt es zeitliche Fristen, in welchen Änderungen eingegeben werden müssen?:
Ja, diese sind in einem Excel ersichtlich.
Während diesen Zeiten kann es durchaus sein, dass Daten zwischen dem HTML und JSON leicht inkonsistent sein können.

/ Wärst du als Studiengangleiter daran interessiert, die Pläne der Studenten einsehen zu können?:
Nicht wirklich.
Die Pläne, die die Studierenden aufstellen, sind nicht verpflichtend und die Schule kann daher auch keine Entscheidungen darauf basieren.

/ Wer wäre ein Ansprechspartner für eher technischere Fragen?:
Clemens Mader entwickelt am SLCM mit und kann eventuell technischere Fragen beantworten.
Ich weiss auch, dass einer eurer Mitstudenten - Jan Meier - mit der #link("https://matricula.app/", "Matricula App") ebenfalls Daten vom SLCM abruft.
Eventuell hat er Erfahrungen gemacht, die euch helfen könnten.

_Input, der im Gespräch auf kam:_
Ich wäre auch an einer graphischen Abbildung der Abhängigkeiten zwischen Modulen interessiert.
So könnten wir die Musterstudienpläne für die verschiedenen Vertiefungen und Studienmodelle ansprechender darstellen.
Auch wäre es interessent, könnte man dann nach der Sprache, in der das Modul angeboten wird, nach dem Dozent oder Kampus filtern.


== Fragen zu den Daten

/ Teils haben mehrere Module die gleichen oder fast gleichen Namen. Was bedeutet das?:
Bei den Modulen "Lernlabor "Digitalisieren Hands-on"" und "Lernlabor «Digitalisieren Hands-on»" ist es so, dass das 2. ein IKTS-Modul ist und eigentlich das 1. ablöst.
Jedoch ist das 1. noch nicht deaktiviert.

/ Die Semesterzuteilung gewisser Module ist unklar. Kann man davon ausgehen, dass WS für HS und SS für FS steht?:
Ja, dies sind Module, die schon sehr lange angeboten werden und wohl nie aktualisiert wurden.

/ Bei einigen Modulen steht im Fliesstext, dass sie pro Semester auf einem anderen Campus angeboten werden. Wieso wird hier ein solches Format gewählt?:\
Dies sind IKTS-Module. Wahrscheinlich sind die Daten hier in etwas ungewohnterem Format, da St. Gallen erst seit kurzem ebenfalls Module über dieses Tools ausschreibt.

/ Es existiert ja eine Struktur, in der die Daten erfasst werden sollten. Jedoch kann es vorkommen, dass Daten stattdessen im Fliesstext oder in einem faschen Feld erfasst werden. Wie kommt das?:
Modulverantwortliche sind sich nicht immer bewusst, dass sie Daten zu ihrem Modul eingeben und bearbeiten können.
So kann es auch kommen, dass Daten leicht anderst eingegeben werden.

/ "Prototyping for Startup-Ideas" wurde von 3 and 4 Credits geändert, ohne dass sich das Kürzel verändert hat. Wieso das?:
Hier ist wohl ein Tippfehler bei der originalen Erfassung passiert. 

== Offene Fragen

=== Wieso werden archivierte Module auf unterschiedlichste Wege also solche identifiziert?

Einige sind noch im STD referenziert, aber in der Modulbeschreibung dann als "deaktiviert" markiert.

_Rhetorische Kommunikation für IngenieurInnen_
- #link("https://studien.ost.ch/allModules/43277_M_RheKoI.html", "RheKoI")
- #link("https://studien.ost.ch/allModules/25661_M_RKI.html", "RKI")
- #link("https://studien.ost.ch/allModules/31909_M_RheKI.html", "RheKI")

_Secure Software_
- #link("https://studien.ost.ch/allModules/36488_M_SecSW.html", "SecSW")
- #link("https://studien.ost.ch/allModules/40311_M_SecSoW.html", "SecSoW")

_Wireless and IoT_
(Hier sind sogar beide Module als "deaktiviert" markiert.)
- #link("https://studien.ost.ch/allModules/40038_M_WsoT.html", "WsoT")
- #link("https://studien.ost.ch/allModules/37157_M_WIoT.html", "WIoT")


Einige sind nicht mehr im STD referenziert und in der Modulbeschreibung als "deaktiviert" markiert.

_Mobile and GUI Engineering_
- #link("https://studien.ost.ch/allModules/28254_M_MGE.html", "MGE")

Einige sind noch im STD referenziert, aber in der Modulbeschreibung als "deaktiviert" markiert und ihnen fehlt das Feld "Durchführungen" komplett.

_Business Processes für Informatik_
- #link("https://studien.ost.ch/allModules/40825_M_BuPro.html", "BuPro")
- #link("https://studien.ost.ch/allModules/40981_M_WI2.html", "WI2")

Einige sind noch im STD referenziert und in der Modulbeschreibung nicht als "deaktiviert" markiert, aber für dieses Jahr ist keine Durchführung eingetragen.

_Lernlabor "Digitalisieren Hands-on"_
- #link("https://studien.ost.ch/allModules/41732_M_LLDIG.html", "LLDIG")


== Wir erhalten ja nur das erste und letzte Semester, in dem ein Modul durchgeführt wird. Teils ist dies jedoch nicht immer das gleiche Semester. Wie können wir einsehen, wann das Semester der Durchführung jeweils geändert hat?

- #link("https://studien.ost.ch/allModules/25232_M_ComEng1.json", "ComEng1"): `{'count': 2, 'beginJahr': 2015, 'beginSemester': 'HS', 'endJahr': 2025, 'endSemester': 'FS'}`
- #link("https://studien.ost.ch/allModules/23345_M_ComEng2.json", "ComEng2"): `{'count': 2, 'beginJahr': 2014, 'beginSemester': 'FS', 'endJahr': 2024, 'endSemester': 'HS'}`
- #link("https://studien.ost.ch/allModules/24381_M_ExEv.json", "ExEv"): ``
- #link("https://studien.ost.ch/", ""): `{'count': 4, 'beginJahr': 2015, 'beginSemester': 'FS', 'endJahr': 2024, 'endSemester': 'HS'}`
- #link("https://studien.ost.ch/allModules/40139_M_MOSIM.json", "MOSIM"): `{'count': 4, 'beginJahr': 2022, 'beginSemester': 'HS', 'endJahr': 2025, 'endSemester': 'FS'}`
- #link("https://studien.ost.ch/allModules/45138_M_NwP.json", "NwP"): `{'count': 2, 'beginJahr': 2024, 'beginSemester': 'HS', 'endJahr': 2025, 'endSemester': 'FS'}`
- #link("https://studien.ost.ch/allModules/39128_M_NetAut.json", "NetAut"): `{'count': 2, 'beginJahr': 2021, 'beginSemester': 'HS', 'endJahr': 2025, 'endSemester': 'FS'}`

Bei Modulen wie SA und BA sind Start- und Endsemester unterschiedlich, da sie jedes Semester angeboten werden.
Bei IKTS Modulen sind Start- und Endsemester teils unterschiedlich, da sie jedes Semester, jedoch auf anderen Kampussen, angeboten werden.

== Bei einigen IKTS-Modulen steht bei "Bemerkungen" als Fliesstext, dass pro Semester die Durchführung auf einem anderen Kampus stattfindet. Wieso existiert dieses Feld im JSON nicht?

- Demokratie im Zeitalter von KI
- Prototyping for Startup-Ideas
- Virtual Reality für gesundes Leben und Altern
- Virtual Reality für Klima und Energie

== Gibt es noch weitere APIs oder Endpunkte, die uns relevante Daten liefern könnten?:

Wir wären vorallem an mehr Informationen zur Durchführung interessiert.



