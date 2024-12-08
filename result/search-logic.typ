Suchlogik

Es werden stets alle Module in der Suche dargestellt, gruppiert nach ihrer Kategorie.
Zählt ein Modul zu mehreren Kategorien, ist es auch mehrfach in der Suche enthalten.
Einzig die Eingabe eines Suchbegriffes filter die Liste auf passende Module.

Es 
Einträge in der Suchliste können jedoch ni sein.
Je nach Einsatzort der Suche ist diese entsprechend konfiguriert.

*Bei einem Semester im Plan*

#table(
  columns: 4,
  [], [Semester ist in der Vergangenheit], [Semester ist in der Gegenwart], [Semeter ist in der Zukunft],
  [Modul ist bereits im Plan], [disabled, "geplant"], [disabled, "geplant"], [disabled, "geplant"],
  [Modul hat in diesem Semester keine Durchführung], [enabled], [], [],
  [Modul ist inaktiv], [], [], [],
  [], [], [], []
)

||Semester ist in der Vergangenheit|Semester ist in der Gegenwart|Semeter ist in der Zukunft|
|---|---|---|---|
|Modul ist bereits im Plan|disabled, "geplant"|disabled, "geplant"|disabled, "geplant"|
|Modul hat in diesem Semester keine Durchführung||||
|Modul ist inaktiv||||
|||||



Ist das Modul bereits im Plan, ist es disabled.

Schon in Plan.

Wenn nicht weiter, dann.

Wenn nächstmögliches und nicht, dann.

Wenn Durchführung und nicht, dann.





Suchlogik

Anzeige des nächstmöglichen Semesters ist optional.
Ist dies aktiviert, aber das Modul hat kein solches, ist es nicht auswählbar.
Ist das Modul sonst auswählbar, dann wird das nächstmögliche Semester angezeigt.

Ist das Modul bereits im Plan, ist es auch disabled.

Hat das Modul in diesem Semester keine Durchführung oder ist es bereits im Plan, ist es auch disabled.
Ein Modul in der Suche kann anzeigen, dass es bereits geplant ist, inaktiv ist oder wieviele ECTS es wert ist. Zusätzlich auch das nächstmögliche Semester oder die Durchführung.

Bei Semestern
||Vergangenheit|Gegenwart|Zukunft|
|---|---|---|---|
|Modul im falschen Semester|auswählbar|nicht auswählbar und "nur HS/FS"|nicht auswählbar und "nur HS/FS"|
|Modul schon in Plan|nicht auswählbar und "geplant"|nicht auswählbar und "geplant"|nicht auswählbar und "geplant"|
|Modul inaktiv|auswählbar|nicht auswählbar und "inaktiv"|nicht auswählbar und "inaktiv"|
|sonst|auswählbar, "X ECTS" und "FS/HS"|auswählbar, "X ECTS" und "FS/HS"|auswählbar, "X ECTS" und "FS/HS"|

Bei Kategorien
Gleich wie "Gegenwart" und "Zukunft" bei Semestern.
Wenn das Modul ein nächstmögliches Semester hat und auswählbar ist, wird "X ECTS" und "(FSXX/HSXX)" dargestellt.

Bei Übertrittsmodulen
Gleich wie "Gegenwart" und "Zukunft" bei Semestern.
