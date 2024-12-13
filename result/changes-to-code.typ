= Änderungen am Code

Nachfolgend sind alle Änderungen am Code, welche im Verlauf der Arbeit vorgenommen wurden, oberflächlich beschrieben.

*Neue Komponenten*

_AccreditedModuleBadge.vue:_ Stellt ein Übertrittsmodul dar. Darstellung enthält Name, ECTS, ein Button zum Entfernen und ist mit der Farbe der Hauptkategorie eingefärbt. Bei Hover erscheint ein Tooltip, welches entweder nochmals die enthaltenen Informationen darstellt oder Informationen zum Validationsfehler.

_AccreditedModules.vue:_ Für "Übertrittsmodule", welche unter den Semestern gelistet werden.

_AccreditedModulesModal.vue:_ Enthält einen Button, welcher das Modal für die Übertrittsmodule öffnet. Erlaubt das Erfassen von angerechneten Modulen und externen Leistungen.

_Categories.vue:_ Für "Übersicht der ECTS Punkte". Bestehender Inhalt für Kategorien wurd aus Home.vue hierhin verschoben. Hinter der Progresbar jeder Kategorie wird ein Button für die Suche dargestellt, über die Module der Kategorie in das nächstmögliche Semester eingeplant werden können.

_GlobalValidtionInfo.vue:_ Stellt alle Fehler der Validierung im Plan dar. Bietet pro Fehler passende Aktionen über Buttons an, über die der Fehler behoben werden kann.

_ModuleSearch.vue:_ Enthält einen Button, der die Modulsuche öffnet. Bestehender Inhalt zur Modulsuche wurde aus Home.vue hierhin verschoben. Die Einträge in der Liste der Modulsuche enthalten Informationen, basierend auf ihrer Verfügbarkeit. Mehr Informationen zur Suche können [hier] gefunden werden.

_storage-helper.ts:_ Hilft dabei, die Plandaten aus der URL oder dem LocalStorage zu lesen und die Plandaten in die URL und den LocalStorage zu speichern. Bestehender Inhalt aus Home.vue wurde hierhin verschoben. Neuerdings enthalten die Plandaten auch, ob die Validierung ausgeschalten ist. Beim Auslesen der Plandaten werden Module, die nicht in der Liste vorkommen, aber von einem anderen Modul als Nachfolger erwähnt werden, neu durch diesen Vorgänger ersetzt.

_store.ts:_ Zum Zwischenspeichern und Übergeben von Daten. Enthält Module, Übertrittsmodule, Kategorien, geplante Semester, Vertiefungen, das gewählte Startsemester, die Studienordnung basierend auf dem Startsemester und ob die Vaidierung eingeschalten ist. Kategorien, geplante Semester und Vertiefungen referenzieren Module, welche zentralisiert im Store verwaltet werden. Daten können bereichtert aus dem Store geladen oder vom Store berechnet werden. Beim Aktualisiern von Daten im Store werden zugehörige Daten ebenfalls angepasst.

_validation-helper.ts:_ Enthält die Logik zur Validierung eines Modules. Die Erklärung der Logik kann [hier] gefunden werden.

*Bestehende Komponenten*

_BeautifulProgressIndicator.vue:_ Stellt die Erreichung einer Kategorie als Progressbar dar. Hier wird neu die Anzahl noch zu planender ECTS angezeigt.

_Focus.vue:_ Für Vertiefungen und deren Module. Neuerdings wird ein Button neben jedem Modul dargestellt, der das einplanen im nächstmöglichen Semester erlaubt.

_Module.vue:_ Stellt ein Modul in einem Semester dar. Neu wird bei einem Hinweis aus der Validierung ein Icon mit einem "i" und Tooltip dargestellt. Bei einem Fehler aus der Validierung wird ein Icon mit einem Ausrufezeichen und Tooltip dargestellt, inklusive roter Umrandung des Modules.

_Semester.vue:_ Stellt ein Semester im Plan dar. Stellt neu die Semesternummer dar und nutzt ModuleSearch, um Module hinzuzufügen.

_Home.vue:_ Die Hauptseite, in der alle Informationen dargestellt werden. Es wurde viel Code in andere Komponenten ausgelagert. Plandaten, die zuvor in dieser Komponente verwaltet und an andere mitgegeben wurden, wurden in einen Store verschoben.

_color-helper.ts:_ Hilft dabei, die richtige Farbe pro Kategorie/Modul zu bestimmen. Zuvor wurden HEX-Werte verwendet, dies wurde auf möglichst ähnliche Tailwind-Klassen geändert, um eine einheitlichere Farbpalette zu gewähren.

_semester-info.ts:_ Stellt Informationen zu einem Semester, unabhängig von der Planung, dar. Kann neu nächstmögliche Durchführung für ein gegebens Semester und das nächste Semester zurückgeben.

_types.ts:_ Enthält die Klassen für Durchführung, Modul, Übertrittsmodul, Vertiefung, Kategorie, eingeplantes Semester, unbekanntes Module und Helfer. Die Felder dieser Klassen wurden analog den Daten aus dem JSON erweitert. Der Name eines eingeplanten Semesters kann neu basierend auf dem Startsemester gesetzt werden. Auf dem Modul kann das nächstmögliche Semester bestummen und die Validierung durchgeführt werden. Ein Übertrittsmodul kann basierend auf einem bestehenden Modul oder eingegebenen Daten erstellt werden und die Validierung kann ebenfalls durchgeführt werden.

_main.ts:_ Neue Icons und Registrierung des Stores.

*NPM Packages*
_vuex:_ Der Hauptgrund für die Einführung eines Stores war die Möglichkeit, Änderungen an Attributen eines Moduls flexibel abzubilden. Dazu zählen beispielsweise die Validierung oder das nächstmögliche Semester. Um sicherzustellen, dass alle Komponenten diese Änderungen stets unmittelbar erhalten, wurde ein Store eingeführt.
Es wurde #link("https://vuex.vuejs.org/", "vuex") gewählt, da diese Library von vue selbst ist und auch häufig mit vue eingesetzt wird. Dies lässt gute Kompatibilität, eine grosse Auswahl an Tutorials und Ressourcen und eine langfristige Unterhaltung (maintained) erwarten.

_headless:_ Um unsere geplanten Änderungen umzusetzen, mussten einige neue UI Elemente eingeführt werden, wie ein Toggle, Modal, Tabs, ComboBox, usw.
Dies selbst von Grund auf zu implementieren, wäre für einen Prototypen nicht zwecksgemäss gewesen.
#link("https://headlessui.com/", "Headless") ist ein Projekt von Tailwind Labs.
Da für das Styling bereits Tailwind genutzt wird und headless für jedes Element passende Komponenten enthält, wurde diese Library gewählt.

*Entscheidungen* <code-decisions>
Im Bereich der Übertrittsmodulen wurden einige Entscheidungen aus technischen und nicht nutzer-zentrierten Gründen gefällt.
Da der Bereich gänzlich neu ist, es sich um einen Prototypen handelt und die Arbeit zeitlich limitiert ist.

- Der Name für eine externe Leistung darf maximal 30 Zeichen lang sein. Eine Limitation wurde benötigt, da der Name komplett in der URL gespeichert werden muss. 30 wurde gewählt, da dies die durchschnittliche Länge eines Modulnamens ist.
- Der Name für eine externe Leistung darf folgenden Zeichen nicht enthalten: ".", "\_", "-", "~". Dies, da diese für die Struktur in der URL bereits verwendet werden und das Auslesen der Daten sonst sehr komplex und nicht mehr eindeutig werden würde.
