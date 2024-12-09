Suchlogik

Es werden stets alle Module in der Suche dargestellt, gruppiert nach ihrer Kategorie.
Zählt ein Modul zu mehreren Kategorien, ist es auch mehrfach in der Suche enthalten.
Einzig die Eingabe eines Suchbegriffes filter die Liste auf passende Module.

Ein Eintrag in der Suchliste kann auch disabled sein.
Je nach Einsatzort der Suche, kann konfiguriert werden, wann ein Eintrag disabled ist.

*Bei einem Semester im Plan*

#table(
  columns: 4,
  [], [Semester ist in der Vergangenheit], [Semester ist in der Gegenwart], [Semeter ist in der Zukunft],
  [Modul ist bereits im Plan], [disabled, "geplant"], [disabled, "geplant"], [disabled, "geplant"],
  [Modul hat in diesem Semester keine Durchführung], [enabled], [disabled, "nur FS/HS"], [disabled, "nur FS/HS"],
  [Modul ist inaktiv], [enabled], [disabled und "inaktiv"], [disabled und "inaktiv"],
  [sonst], [enabled, "X ECTS" und "FS/HS"], [enabled, "X ECTS" und "FS/HS"], [enabled, "X ECTS" und "FS/HS"]
)

*Bei Kategorien*

Das Verhalten ist gleich wie bei einem Semester in der Gegenwart oder Zukunft.
Die Suche ist aber nicht an eine Durchführung gebunden.
Hat ein Modul in nächstmögliches Semester und ist enabled, wird dieses Semester im Eintrag dargestellt.
Hat es jedoch keines, ist es disabled.

*Bei Übertrittsmodulen*

Das Verhalten ist gleich wie bei einem Semester in der Gegenwart oder Zukunft.
Die Suche ist aber nicht an eine Durchführung gebunden.
