Neu
- AccreditedModuleBadge.vue: Stellt ein Übertrittsmodul dar. Enthält Name, ECTS, Kategorie-Farbe, Knopf zum Entfernen und Tooltip mit Validations Infos oder nochmals den erwähnten Daten.
- AccreditedModules.vue: Für "Übertrittsmodule" unten an den Semestern. Listet die Übertrittsmodule auf.
- AccreditedModulesModal.vue: Für den Button und das Modal bei "Übertrittsmodule" unten an den Semestern. Erlaubt das Erfassen von angerechneten Modulen und externen Leistungen.
- Categories.vue: Für "Übersicht der ECTS Punkte". Bestehender Inhalt verschoben und ModuleSearch nach Progressbar, um Module der Kategorie in nächstmöglichem Semester hinzuzufügen.
- GlobalValidtionInfo.vue: Um Fehler aus der Validierung anzuzeigen. Stellt nur Fehler vom Schweregrad "hard" dar. Nutzt Disclosure für Darstellung. Daten kommen aus dem Store. Kann über Buttons den Store aktualisieren, um Fehler zu beheben.
- ModuleSearch.vue: Um über Button die Modulsuche zu öffnen. Bestehender Inhalt verschoben. DataList zu Select. Options in Select gestyled, um nächstes Semester oder Auswählbarkeit (falsches Semester oder schon im Plan) zu zeigen. Nutzt Store, um zu prüfen, ob Modul schon im Plan ist.
- storage-helper.ts: Hilft dabei, die Plandaten aus der URL oder dem LocalStorage zu lesen und die Plandaten in die URL und den LocalStorage zu speichern. Bestehender Inhalt verschoben. Neu wird auch gespeichert, ob die Validierung eingeschalten ist. Beim Auslesen der Plandaten werden Module, die nicht in der Liste vorkommen, aber von einem anderen Modul als Nachfolger erwähnt werden, neu durch diesen Vorgänger ersetzt.
- store.ts: Zum Zwischenspeichern und Übergeben von Daten. Enthält Module, Kategorien, geplante Semester, Vertiefungen, das gewählte Startsemester, die Studienordnung basierend auf dem Startsemester und ob die Vaidierung eingeschalten ist. Kategorien, geplante Semester und Vertiefungen referenzieren Module, welche zentralisiert im Store verwaltet werden. Daten können bereichtert aus dem Store geladen oder vom Store berechnet werden. Beim Aktualisiern von Daten im Store werden zugehörige Daten ebenfalls angepasst.
- validation-helper.ts: Hilft beim Validieren eines Modules. Die Logik zur Validierung kann im Kapitel [???] nachgelesen werden.

Bestehend
- BeautifulProgressIndicator.vue: Stellt die Erreichung einer Kategorie als Progressbar dar. Hier wird neu die Anzahl noch zu planender ECTS angezeigt.
- Focus.vue: Für Vertiefungen und deren Module. Button bei jedem Module, um zum nächstmöglichen Semester hinzuzufügen.
- Module.vue: Für Modul in einem Semester. Icon links und Umrandung, wenn Infos aus Validierung bestehen. 
- Semester.vue: Um ein eingeplantes Semester darzustellen. ModuleSearch für das Hinzufügen von Modulen. Holt Module zur Durchsuchung aus dem Store und aktualisiert bei Auswahl den Store.
- Home.vue: Die Hauptseite, in der alle Informationen dargestellt werden. Es wurde viel Code in andere Komponenten ausgelagert. Plandaten, die zuvor in dieser Komponente verwaltet und an andere mitgegeben wurden, wurden in einen Store verschoben.
- color-helper.ts: Hilft dabei, die richtige Farbe pro Kategorie/Modul zu bestimmen. Umbenennung und wechsel von RGB zu Tailwind-Klassen.
- semester-info.ts: Stellt ein Semester, unabhängig von der Planung, dar. Kann neu nächstmögliche Durchführung für ein gegebens Semester und das nächste Semester zurückgeben.
- types.ts: Enthält die Klassen für Durchführung, Modul, Vertiefung, Kategorie, eingeplantes Semester, unbekanntes Module und Helfer. Felder analog den Daten aus dem JSON erweitert. Name auf eingeplantem Semester kann basierend auf dem Startsemester gesetzt werden. Auf dem Modul kann das nächstmögliche Semester basierend auf dem Startsemester gesetzt werden und die Validierung durchgeführt werden.
- main.ts: Neue Icons und Registrierung des Stores.

Packages
/ #link("https://vuex.vuejs.org/", "vuex"):
Der Hauptgrund, der uns dazu bewegte einen Store einzuführen war, dass Attribute auf einem Modul sich neu ändern können. So zum Beispiel die Validierung oder das nächstmögliche Semester. Um sicherzustellen, dass alle Komponenten diese Änderungen immer sofort erhalten, wurde ein Store eingeführt.
Es wurde vuex gewählt, da diese Library von vue selbst ist und auch häufig mit vue eingesetzt wird. Dies lässt gute Kompatibilität, eine grosse Auswahl an Tutorials und Ressourcen und eine langfristige Unterhaltung (maintained) erwarten.

/ #link("https://headlessui.com/", "headless"):
Um unsere geplanten Änderungen umzusetzen, mussten einige neue UI Elemente eingeführt werden, wie ein Toggle, Modal, Tabs, ComboBox, usw.
Dies selbst von Grund auf zu implementieren, wäre für einen Prototypen nicht zwecksgemäss gewesen.
Headless ist ein Projekt von Tailwind Labs.
Da für das Styling bereits Tailwind genutzt wird und headless für jedes Element passende Komponenten enthält, wurde diese Library verwendet.

Entscheidungen (ausserhalb UX)
- Bei späteren Packages generell leichte visuelle Anpassungen, da es so einfacher ging und wir dies dazumal noch nicht abschätzen konnten.
- Name für externe Übertrittsmodule darf maximal 30 Zeichen lang sein. Dies, da dieser komplett in der URL gespeichert werden muss und die durchschnittliche Länge eines Modulnamens auch 30 Zeichen ist.
- Name für externe Übertrittsmodule darf folgende Zeichen nicht enthalten: ".", "\_", "-", "~". Dies, da diese für die Struktur in der URL bereits verwendet werden und das Auslesen der Daten sonst zu komplex werden würde.
