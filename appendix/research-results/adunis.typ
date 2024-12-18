= Fragen und Antworten im Zusammenhang mit SLCM und dessen Daten <adunis-appendix>

== Interview mit Studiengangsleitung

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5%,
  [
    Befragte Person \
    Interviewerin \
    Datum \
    Ort
  ],
  [
    Studiengangsleitung Informatik \
    Stefanie Jäger \
    17.10.2024 \
    OST Campus Rapperswil-Jona
  ]
)

=== Generelle Fragen

/ Wer ist für die Modulbeschreibungen verantwortlich?:
Modulverantwortliche sind zuständig, dass ihre Modulbeschreibungen korrekt sind.
Sie können vorzunehmende Anpassungen jedoch auch an die Studienadministration delegieren.

/ Wer ist für die Studienreglemente verantwortlich?:
Der Hochschulrat ist für das grosse Reglement verantwortlich.
Ich als Studiengangleiter kümmere mich um die Ausführungsbestimmungen für meinen Studiengang, welche vom Hochschulrat freigegeben werden.
Anhänge, Modulzuweisungen etc. unterliegen ebenfalls mir und müssen nicht vom Hochschulrat freigegeben werden.

/ Wie wird festgehalten, wann ein Modul durchgeführt wird?:
Es wird - in einem separaten Tool - pro Semester erfasst, ob das Modul angeboten wird.

_Die Person teilte im Nachgang des Interviews die intern verwendete #link("https://wiki.ost.ch/display/SLCMP/SLCM+Dokumentation+und+Manuals?preview=%2F205785387%2F205790539%2FADUNIS+Angebotsplanung+Schritt+fuer+Schritt.pdf", "Anleitung des Tools")._

/ Wie entstehen Modulkürzel? Weshalb ändern diese manchmal?:
Modulkürzel werden bei der Erfassung gewählt.
Grössere Änderungen, z.B. eine andere Anzahl Credits, sollten auch Änderungen am Kürzel mit sich ziehen, das ist jedoch nicht garantiert.
Das Kürzel kann auch bei kleineren Änderungen ändern.

/ Wie werden die erforderlichen und empfohlenen Vorkenntnisse definiert und erfasst?:
Modulverantwortliche definieren dies, sprechen sich dafür meist auch mit anderen Dozierenden ab.

/ Wie werden diese Eingaben getätigt?:
Die Modulbeschreibungen werden über ein weiteres Tool, das dem SLCM sehr ähnlich ist, erfasst.
Die Durchführungen werden, wie bereits erwähnt, über ein weiteres Tool erfasst.

/ Gibt es zeitliche Fristen, in welchen Änderungen eingegeben werden müssen?:
Ja, diese sind in einem Excel ersichtlich.
Während diesen Zeiten kann es durchaus sein, dass die Daten der jeweiligen HTML- und JSON-Dateien inkonsistent sein können.

/ Wärst du als Studiengangleiter daran interessiert, die Pläne der Studierenden einsehen zu können?:
Nicht wirklich.
Die Pläne, die die Studierenden aufstellen, sind nicht verpflichtend und die Schule kann daher auch keine Entscheidungen darauf basieren.

/ Wer wäre ein Ansprechpartner für technischere Fragen?:
Clemens Meier entwickelt am SLCM mit und kann eventuell technischere Fragen beantworten.
Ich weiss auch, dass einer eurer Mitstudenten - Jan Meier - mit der #link("https://matricula.app/", "Matricula App") ebenfalls Daten vom SLCM abruft.
Eventuell hat er Erfahrungen gemacht, die euch helfen könnten.

_Input, der im Gespräch aufkam:_
Ich wäre auch an einer graphischen Abbildung der Abhängigkeiten zwischen Modulen interessiert.
So könnten wir die Musterstudienpläne für die verschiedenen Vertiefungen und Studienmodelle ansprechender darstellen.
Auch wäre es interessant, könnte man dann nach der Sprache, in welcher das Modul angeboten wird, nach dem Dozent oder Campus filtern.


=== Fragen zu den Daten

/ Teils haben mehrere Module die gleichen oder fast gleichen Namen. Was bedeutet das?:
Bei den Modulen "Lernlabor "Digitalisieren Hands-on"" und "Lernlabor «Digitalisieren Hands-on»" ist es so, dass das 2. ein IKTS-Modul ist und eigentlich das 1. ablöst.
Jedoch ist das 1. noch nicht deaktiviert.

/ Die Semesterzuteilung gewisser Module ist unklar. Kann man davon ausgehen, dass WS für HS und SS für FS steht?:
Ja, dies sind Module, die schon sehr lange angeboten werden und wohl nie aktualisiert wurden.

/ Bei einigen Modulen steht im Fliesstext, dass sie pro Semester auf einem anderen Campus angeboten werden. Wieso wird hier ein solches Format gewählt?:\
Dies sind IKTS-Module. Wahrscheinlich sind die Daten hier in etwas ungewohntem Format, da St. Gallen erst seit kurzem ebenfalls Module über dieses Tool ausschreibt.

/ Es existiert ja eine Struktur, in der die Daten erfasst werden sollten. Jedoch kann es vorkommen, dass Daten stattdessen im Fliesstext oder in einem falschen Feld erfasst werden. Wie kommt das?:
Modulverantwortliche sind sich nicht immer bewusst, dass sie Daten zu ihrem Modul eingeben und bearbeiten können.
So kann es auch vorkommen, dass Daten leicht anders eingegeben werden.

/ "Prototyping for Startup-Ideas" wurde von 3 auf 4 ECTS geändert, ohne dass sich das Kürzel verändert hat. Wieso das?:
Hier ist wohl ein Tippfehler bei der originalen Erfassung passiert. 

== Schriftliches Interview mit Teilzeit-SLCM-Entwickler
#grid(
  columns: (1fr, 1fr),
  column-gutter: 5%,
  [
    Befragte Person \
    Datum Erhalt der Antworten \
  ],
  [
    Teilzeit-SLCM-Entwickler \
    06.11.2024 \
  ]
)

Die Antworten des Entwicklers wurden mit seinem Einverständnis unverändert übernommen.

=== Disclaimer des Entwicklers
Meine Antworten sind eventuell nicht ganz korrekt, es kann sein, dass ich nicht alle Details kenne. Es kann immer vorkommen, dass es Abweichungen gibt. Ebenfalls gibt es auch Dinge, die ich nicht herausfinden konnte. Es ist nicht einfach, von bestimmten Leuten Antworten zu erhalten, auch für mich.

=== Wieso werden archivierte Module auf unterschiedlichen Wegen also solche identifiziert?

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

==== Antwort Joël Schwab
So weit ich das herausgefunden habe ist der Grund relativ Dumm -> Es gibt keinen offiziellen Weg, wie das ganze archiviert/deaktiviert werden soll. Das heisst je nachdem wer das Modul deaktiviert/archiviert, ist das Ergebnis anders.
Für Gewisse Dinge gibt es interne Tools, wo Umstellungen gemacht werden können z.B. auch um die Modulbeschreibungen anzupassen, aber dort kann man nicht Referenzen entfernen. Das macht dann evt jemand direkt auf der Datenbank.

=== Wir erhalten ja nur das jeweils erste und letzte Semester, in welchen ein Modul durchgeführt wird. Teils ist dies jedoch nicht immer das gleiche Semester (FS/HS). Wie können wir herausfinden, wann das Semester der Durchführung jeweils geändert hat?

- #link("https://studien.ost.ch/allModules/25232_M_ComEng1.json", "ComEng1"): `{'count': 2, 'beginJahr': 2015, 'beginSemester': 'HS', 'endJahr': 2025, 'endSemester': 'FS'}`
- #link("https://studien.ost.ch/allModules/23345_M_ComEng2.json", "ComEng2"): `{'count': 2, 'beginJahr': 2014, 'beginSemester': 'FS', 'endJahr': 2024, 'endSemester': 'HS'}`
- #link("https://studien.ost.ch/allModules/24381_M_ExEv.json", "ExEv"): ``
- #link("https://studien.ost.ch/", ""): `{'count': 4, 'beginJahr': 2015, 'beginSemester': 'FS', 'endJahr': 2024, 'endSemester': 'HS'}`
- #link("https://studien.ost.ch/allModules/40139_M_MOSIM.json", "MOSIM"): `{'count': 4, 'beginJahr': 2022, 'beginSemester': 'HS', 'endJahr': 2025, 'endSemester': 'FS'}`
- #link("https://studien.ost.ch/allModules/45138_M_NwP.json", "NwP"): `{'count': 2, 'beginJahr': 2024, 'beginSemester': 'HS', 'endJahr': 2025, 'endSemester': 'FS'}`
- #link("https://studien.ost.ch/allModules/39128_M_NetAut.json", "NetAut"): `{'count': 2, 'beginJahr': 2021, 'beginSemester': 'HS', 'endJahr': 2025, 'endSemester': 'FS'}`

Bei Modulen wie SA und BA sind Start- und Endsemester unterschiedlich, da sie jedes Semester angeboten werden.
Bei IKTS Modulen sind Start- und Endsemester teils unterschiedlich, da sie jedes Semester, jedoch auf anderen Campussen, angeboten werden.

==== Antwort Joël Schwab
Ihr könnt das mit den Informationen, die ihr öffentlich habt, gar nicht machen, ausser ihr schaut jedes Semester den Stundenplan dieses Moduls an. Es gibt auch Module wie z.B. WED3 das früher jedes Semester durchgeführt wurde.

=== Bei einigen IKTS-Modulen steht bei "Bemerkungen" als Fliesstext, dass pro Semester die Durchführung auf einem anderen Campus stattfindet. Wieso existiert dieses Feld im JSON nicht?

- Demokratie im Zeitalter von KI
- Prototyping for Startup-Ideas
- Virtual Reality für gesundes Leben und Altern
- Virtual Reality für Klima und Energie

==== Antwort Joël Schwab
Kann ich euch nicht sagen.

=== Gibt es noch weitere APIs oder Endpunkte, die uns relevante Daten liefern könnten? Wir sind vor allem an mehr Informationen zu den Durchführungssemestern interessiert.

==== Antwort Joël Schwab
Ich arbeite eigentlich nur mit den Tools und der Datenbank direkt, also kenne ich leider keine weiteren Endpunkte.




