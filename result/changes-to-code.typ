Neu
- Categories.vue: Für "Übersicht der ECTS Punkte". Bestehender Inhalt verschoben und ModuleSearch nach Progressbar, um Module der Kategorie in nächstmöglichem Semester hinzuzufügen.
- GlobalValidtionInfo.vue: Um Fehler aus der Validierung anzuzeigen. Nutzt Disclosure für Darstellung. Daten kommen aus dem Store. Kann über Buttons den Store aktualisieren, um Fehler zu beheben.
- ModuleSearch.vue: Um über Button die Modulsuche zu öffnen. Bestehender Inhalt verschoben. DataList zu Select. Options in Select gestyled, um nächstes Semester oder Auswählbarkeit (falsches Semester oder schon im Plan) zu zeigen. Nutzt Store, um zu prüfen, ob Modul schon im Plan ist.
- storage-helper.ts: [todo]
- store.ts: [todo]
- validation-helper.ts: [todo]

Bestehend
- Focus.vue: Für Vertiefungen und deren Module. Button bei jedem Module, um zum nächstmöglichen Semester hinzuzufügen.
- Module.vue: Für Modul in einem Semester. Icon links und Umrandung, wenn Infos aus Validierung bestehen. 
- Semester.vue: Um ein eingeplantes Semester darzustellen. ModuleSearch für das Hinzufügen von Modulen. Holt Module zur Durchsuchung aus dem Store und aktualisiert bei Auswahl den Store.
- Home.vue: [todo]
- color-helper.ts: Hilft dabei, die richtige Farbe pro Kategorie/Modul zu bestimmen. Umbenennung und wechsel von RGB zu Tailwind-Klassen.
- semester-info.ts: Stellt ein Semester, unabhängig von der Planung, dar. Kann neu nächstmögliches Semester für gegebenen Term(?) zurückgeben.
- types.ts: Enthält die Klassen für Term(?), Modul, Vertiefung, Kategorie, eingeplantes Semester, unbekanntes Module und Helfer. Felder analog den Daten aus dem JSON erweitert. Name auf eingeplantem Semester kann basierend auf dem Startsemester gesetzt werden. Auf dem Modul kann das nächstmögliche Semester basierend auf dem Startsemester gesetzt werden und die Validierung durchgeführt werden.

Installiert
- vuex: [todo]
- headless: [todo]
