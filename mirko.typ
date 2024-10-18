= Frageleitfaden Studienadministration & Modulverantwortliche/-r

Die Fragen werden je nach Interviewpartner angepasst.
Intro: Vielen Dank, dass Sie Sich Zeit nehmen für uns. Wir schreiben eine Semesterarbeit zum Semesterplaner. Der Semesterplaner ist ein Tool zur Modul- und Studiumsplanung, welches von Studenten selbst betrieben und verwaltet wird. Der Planer basiert auf Daten, welche von unterricht.ost.ch (Adunis) abgefragt und aufbereitet werden. Die Daten sind jedoch nicht dokumentiert, weshalb wir Ihnen ein paar Fragen stellen möchten. Durch das bessere Verständnis erhoffen wir uns, dass wir dem Semesterplaner mehr Funktionalitäten hinzufügen können, welche eventuell im Rahmen unserer SA gefragt werden. Wir erforschen nämlich mit einem nutzerzentrierten Ansatz, wie der Planer erweitert werden sollte. 

Clemens Meier evtl fragen.
Stocker und Berater können sich als Studenten anmelden.

Jan Meier von Matrikula App.
Hat Bewertungen von Modulen.
Er nutzt evtl auch Adunis, können mit ihm reden.

Separates Tool, moduleditor.adunisdocker.ost.ch für Module.
Modulverantwortliche können ihre bearbeiten.
Maske sieht aus, wie was wir sehen.

Skriptablage nicht anpassbar.

Separates Tool für Aktivieren.
Separates Tool für Studenplan.
Separates Tool für Prüfungsplan.

Studienadmin kann alles anpassen.

Wenn andere ECTS, dann brauchts neue ID.

Es gibt mehrere Clients für Adunis. Also auch separate API.

Stocker hätte auch gerne Vernetztung der Module.
VZ/TZ, Rahmenausbildung, Vertiefung.
Englische Module. Nach Dozent, Kampus.
Er nutzte Cryoscape(?).

=> Unstimmigkeiten (falsche Module, etc) an Mirko schicken.

Augenstein plant Stundenpläne.
Pläne bringen Schule nicht zu viel, weil sie nicht fest sind.

•	Welche Eingaben tätigen Sie für Modulbeschreibungen oder wer tätigt die sonst? Wir haben beispielsweise gehört, dass Durchführungszeiträume durch das Studiengangsadministration geregelt bzw. festgelegt werden, stimmt das? Wie definieren Sie das und wie geben Sie das ein, dass die Information im Adunis/unterricht.ost.ch landet? Welche weiteren Eingaben oder Definitionen entstehen durch Sie?
Modulverantowrtliche. Können auch delegieren an Studienadmin.

•	Welche Eingaben tätigen Sie für Studienreglemente oder wer tätigt die sonst?
Hochschulrat am grossen Reglement.
Ausführungsbestimmungen pro Studiengang macht Studiengagneleister, wird von Hochschulleotung fregegeben.
Anhang, Modulzuweisung, etc, macht Mirko, Laurent gibt frei.

•	Wie bestimmen Sie, wann ein Modul durchgeführt wird? Geben Sie das ein?
Sie tragen pro Semester ein, ob ein Modul stattfindet.
Es sollte strukturiert existieren.
Entwickler fragen, ob wir diese Daten haben können.

•	Wie kann es vorkommen, dass ein Modul in einem anderen Semester stattfindet als bisher? Wo wird das wie festgehalten?
-

•	Wie entstehen Modulkürzel? Weshalb ändern diese Kürzel manchmal? Wo wird das eingegeben?
Bei gewissen Änderungen sollte Id/Kürzel ändern.
Aber Änderung an Kürzel musst nicht grosse Änderung meinen.

•	Wer definiert die erforderlichen bzw. empfohlenen Vorkenntnisse (aka Module)? Sollten diese immer im entsprechenden Feld eingetragen sein oder ist es zu erwarten, dass diese in einem Fliesstext vorkommen (HackingLab)?
Modulverantwortlich definiert, spricht aber mit anderen ab.
Beschreibung wird nicht super clean gehalten. Wissen teils nicht, dass sie selbst bearbeiten können.
=> Evtl sollten wir die ansprechen?

•	Welche Eingaben tätigen Sie für Modulbeschreibungen?
-

•	Wie tätigen Sie diese Eingaben? Auf welcher Plattform, welches Format?
Beschreibung ähnlich, wie Adunis.
Durchführung, Deaktivierung in separatem Modul -> Nur Stocker und Admin, Windows Applikation.
Angebotsplanung: https://wiki.ost.ch/pages/viewpage.action?spaceKey=SLCMP&title=SLCM+Dokumentation+und+Manuals&preview=/205785387/205790539/ADUNIS%20Angebotsplanung%20Schritt%20fuer%20Schritt.pdf

•	Wie geben Sie die Informationen an Adunis/unterricht.ost.ch weiter? Haben Sie dort eine Eingabemaske? Wenn ja, welche Felder können bzw. müssen Sie dort befüllen?

•	Welche Daten/Eingaben liegen nicht in Ihrer Macht? Von wem werden diese Informationen definiert und befüllt?
Modulverantowrtliche, Studienadministration.

•	Welche Änderungen können generell vorkommen? Wie geht das vonstatten?
Alles mögliche.
Wird aber von Studienadministration validiert.

•	Gibt es zeitliche Fristen, in welchen Änderungen an Modulen (Inhalt, Credits, Leistungsnachweise, Kürzel, Semesterwechsel) eingegeben werden müssen?
Semesterfahrplan als Excel.




= Probleme mit der Datenqualität

- Mehrere Module mit gleichem Namen im https://studien.ost.ch/allStudies/10191_I.json
  - Secure Software, Rhetorische Kommunikation für IngenieurInnen, Wireless and IoT, Business Processes für Informatik
    - *Bei diesen haben die Kürzel mal geändert, aber das JSON liefert immer noch beide Versionen. Wieso?*
  - Lernlabor "Digitalisieren Hands-on" & Lernlabor «Digitalisieren Hands-on»
    - Die Kürzel sind unterschiedlich, da es verschiedene Module sind. Aber ausser den Anführungszeichen ist es praktisch der gleiche Name. Sieht man nur den Namen, kann man sie nicht unterscheiden. *Muss das so, resp. ist euch das bewusst?*
    [Oben Anführungszeichen ist alt]

- Für IKTS Module gibt es meistens 2 Module, wobei eines davon noch ein "\_p" am Ende des Kürzels hat. Wir filtern diese selbst raus und fügen beim Namen " (Projektarbeit)" hinzu. *Könnte man die Namen nicht von Anfang an differenzieren? Bzw. weshalb wird das nicht gemacht?*

- Jede Kategorie existiert auch als Modul ("Kat\_[Kategorie]"), das aber deaktiviert ist. *Wieso gibt es dieses "Modul"?*
  - Zeilen im Crawler, wo wir diese filtern: https://github.com/lost-university/data/blob/6b183dee20d4fb0ed691c4bbdd78404e0f2e15e1/crawler.py#L81C1-L85C21

- Die Semesterzuteilung gewisser Module ist unklar:
  - *Generell: Steht WS für HS und SS für FS? Kann man das so annehmen?*
  [Ja]
  - WS oder SS bei den folgenden Modulen:
    - Funktionen mehrerer Variablen (SS)
    - Integraltransformationen (WS)
    - Komplexe Zahlen und Fourierreihen (SS)
  - beginSemester und endSemester bei folgenden Modulen nicht gleich: Computer Engineering 1, Computer Engineering 2, Experimentieren und Evaluieren, Modellbildung und Simulation, Naturwissenschaftliches Praktikum, Network Automation
    - BA und SA kann ich nachvollziehen, weil man die immer nehmen kann. *Leider ist diese Abbildung suboptimal.*
  - Bei den Modulen: Demokratie im Zeitalter von KI, Prototyping for Startup-Ideas, Virtual Reality für gesundes Leben und Altern, Virtual Reality für Klima und Energie, Virtual Reality für Klima und Energie: *pro Semester anderer Campus, steht aber nur im Fliesstext, welcher nicht im JSON ist (nur im HTML)*.
  [Feld fehlt wohl noch, wegen StGallen auch in Adunis]
  - Bei Hacking Lab (https://studien.ost.ch/allModules/36457_M_HackL.html): Module, die empfohlen werden, sind nur im Fliesstext erwähnt. *Gibt es keine feste Regelung, dass Felder genutzt werden sollen, anstatt Fliesstext?*
  [Modulverantowrtliche wissen/tun nicht]

- *Wer erfasst welche Daten? Wer validiert sie? Welche Zuständigkeiten gibt es generell?*
  - Die Beschreibung "Zusätzlich vorausgesetzte Kenntnisse" erwähnt "Computer Networking 2" und "Automation with Python" https://studien.ost.ch/allModules/39128_M_NetAut.json, enthält aber keine "Empfohlene Module". Hier hätte ich "Computernetze 2" und "Automatisierung mit Python" erwartet (die gibts immerhin auch).

- Es hat Änderungen bei den Modulen gegeben, die wir nicht ganz nachvollziehen können
  - Prototyping for Startup-Ideas (IKTS) von 3 auf 4 Credits (wenn schon besucht, zählt 4 und war *Tippfehler?*)
  [wohl Tippfehler, weil keine neue Version]
  - Behavioral Design *wurde gelöscht anstatt deaktiviert, wieso?*
  - MGE wurde gelöscht anstatt deaktiviert, wieso? PF ist noch aktiv!
  [Entwickler fragen] Manchmal aus STD gelöscht, manchmal deaktiviert, manchmal Durchführung nur bis letzt Jahr.

- Wie kann zB ich die Software Engineering Vertiefung noch erreichen?
  - PF und MGE durch UIP abgelöst. Aber PF und UIP zählen zu den 9 möglichen Modulen.
  [MGE zählt als UIP. Nachfolger/Vorgänger zählt auch für Vertiefung.]

- Die Daten im JSON und HTML stimmen teils nicht überein
  - Beispiel am 28.09.24: https://studien.ost.ch/allStudies/10246_I.json und https://studien.ost.ch/allStudies/10191_I.json verweisen beide auf https://studien.ost.ch/allModules/55066_M_IKBD.json und https://studien.ost.ch/allModules/55074_M_CldOp.json, welche wiederum ein 404 geben. Die HTML Versionen der Studienordnungen verweisen aber auf https://studien.ost.ch/allModules/44037_M_IKBH.html und https://studien.ost.ch/allModules/43285_M_CldOp.html.
  - Solche Fälle generieren zusätzlichen Aufwand in Form von manuellem Aktualisieren der Daten. Zudem misstrauen wir daher der Richtigkeit der Daten im JSON. *Können wir überhaupt auf das JSON vertrauen? Was ist generell die Single-Source-of-Truth?*
  [Entwickler fragen]


= Generelle Fragen

- Daten werden ja jedes Semester aktualisiert. *Wann seid ihr jeweils mit der Aktualisierung durch?* Wir haben das Gefühl, dass die Daten zwischen JSON und HTML und auch generell während dieser Aktualisierung teils inkonsistent sind. Wir möchten gerne wissen, wann im Semester die Daten aktualisiert sind, damit wir den Planer *zeitnah und korrekt* aktualisieren und Kopfschmerzen vermeiden können.
[Excel]

- *Gibt es eine Dokumentation für die Daten?* Was welches Feld wirklich bedeutet, welche Werte es haben kann, ob es optional ist, etc. Dies könnte uns bei der Verarbeitung helfen.
  - Im JSON fehlt z.B. das Feld "Bemerkungen", welches für IKTS Module teils die Erklärung enthält, auf welchem Campus welches Semester durchgeführt wird.
[Clemens]

- *Gibt es sonst noch APIs/Endpunkte oder Daten, die für uns hilfreich sein könnten?*
[Clemens?]







