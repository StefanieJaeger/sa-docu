#import "@preview/glossarium:0.4.1": gls, glspl

#set heading(numbering: "1.")

= Ist-Zustand
Das ursprüngliche Projekt, auf welchem diese Studienarbeit aufbaut, kann als öffentliches GitHub Repository eingesehen werden unter: #link("https://github.com/lost-university/web").

Es wurde entschieden, einen Fork des Originalprojekts zu erstellen, um prototypische Anpassungen unabhängig vornehmen zu können. Dadurch wird sichergestellt, dass spätere Änderungen am Originalprojekt, die nach Beginn der Semesterarbeit erfolgen, keinen Einfluss auf den Entwicklungsprozess haben. 

Ein weiterer Vorteil eines Forks gegenüber einem Branch ist die einfachere Handhabung des Hostings (siehe @hosting).

=== Daten

Alle Daten zu #gls("module", display: "Modulen"), #gls("category", display: "Kategorien"), #gls("focus", display: "Spezialisierung") und #gls("std", display: "Studienordnungen"), welche die Applikation nutzt, sind öffentlich #link("https://studien.ost.ch") zugänglich.

Die Daten werden von einem Python-Crawler gesammelt, verarbeitet und anschliessend als JSON-Dateien im Data Repository abgelegt.

Die Detailseiten der Studienordnungen dienen dem Crawler als Einstiegspunkt. Informationen zu den geltenden Kategorien und benötigten #glspl("ects"), den möglichen Spezialisierungen und den zugehörigen Modulen können so entnommen werden.

Die Aktualisierung der Daten erfolgt manuell. Vor Beginn eines jeden Semesters führt ein Maintainer den Crawler lokal aus, überprüft die Änderungen der Daten auf Spezialfälle und erstellt anschliessend ein neues Tag für die Daten. Zuletzt kann die verwendete Version der Daten im Client über den Tag in der URL angepasst werden.

Nachfolgend sind die relevanten Felder für eine Studienordnung gelistet. Die Beispieldaten dazu stammen von #link("https://studien.ost.ch/allStudies/10191_I.json").
```json
{
  "kredits": [
    {
      "kategorien": [
        {
          "bezeichnung": "Aufbau",
          "kuerzel": "I_Auf"
        },
        ...
      ],
      "minKredits": 48
    }
  ],
  "zuordnungen": [
    {
      "bezeichnung": "Application Architecture",
      "kuerzel": "M_AppArch",
      "url": "allModules/28236_M_AppArch.json",
      "istAbschlussArbeit": false,
      "istPflichtmodul": false,
      "semEmpfehlung": 7,
      "kategorien": [
        {
          "bezeichnung": "Aufbau",
          "kuerzel": "I_Auf",
          "kreditpunkte": 4
        },
        ...
      ]
    }
  ],
  "spezialisierungen": [
    {
      "bezeichnung": "Frontend Engineering",
      "kuerzel": "FrEng",
      "url": "allStudies/10193_FrEng.json"
    },
    ...
  ]
}
```
Für jedes Modul wird anhand der `"zuordnungen[].url"` eine Anfrage gestellt, um die Informationen des folgenden Feldes zu erhalten.
```json
{
  "kreditpunkte": 4
}
```
Für jede Spezialisierung wird anhand der `"spezialisierungen[].url"` eine Anfrage gestellt, um die Informationen der folgenden Felder zu erhalten.
```json
{
  "zuordnungen": [
    {
      "kuerzel": "M_AppArch"
    },
    ...
  ]
}
```

==== Speicherformat der Daten

Das Vorgehen des Crawlers bei der Verarbeitung der zuvor genannten Daten ist im Diagramm @crawler ersichtlich.
#figure(image("Crawler.drawio.png"), caption: [Ablauf des Crawlers]) <crawler>

Um sicherzustellen, dass die Daten von der Applikation effizient abgefragt und verarbeitet werden können, wird ihr Format entsprechend angepasst. Auf diese Weise werden zudem redundante Daten für die Applikation nicht übernommen.

*Module*
```json
[
  {
    "id": "AppArch",
    "name": "Application Architecture",
    "url": "allModules/28236_M_AppArch.json",
    "isThesis": false,
    "isRequired": false,
    "recommendedSemester": 7,
    "ects": 4,
    "categories_for_coloring": [
      "Auf",
      "Inf"
    ]
  },
  ...
]
```

*Kategorien*
```json
[
  {
    "id": "Auf",
    "required_ects": 48,
    "name": "Aufbau",
    "modules": [
      {
        "id": "AppArch",
        "name": "Application Architecture",
        "url": "allModules/28236_M_AppArch.json"
      },
      ...
    ]
  },
  ...
]
```

*Spezialisierungen*
```json
[
  {
    "id": "FrEng",
    "url": "allStudies/10193_FrEng.json",
    "name": "Frontend Engineering",
    "modules": [
      {
        "id": "AppArch",
        "name": "Application Architecture",
        "url": "allModules/28236_M_AppArch.json"
      },
      ...
    ]
  },
  ...
]
```

=== Code

Die Applikation selbst ist eine #gls("spa"), entwickelt mit Vue.
Anstelle von JavaScript wird dabei TypeScript verwendet.
Die Icons stammen von #gls("fontawesome"), während das Styling überwiegend mit #gls("tailwind") umgesetzt wird.
Als Build-Tool kommt #gls("vite") zum Einsatz.

Vor Beginn der Studienarbeit wurde mit dem Stakeholder, welcher gleichzeitig Haupt-Maintainer ist, vereinbart, dass der identifizierte Tech-Stack unverändert bleiben soll.

=== Hosting <hosting>

Die Applikation wird über #gls("githubPages") gehostet.
Da sie lediglich eine #gls("spa") ohne Backend ist, entfallen somit jegliche Kosten für das Hosting.

Die gewünschte URL, #link("lost.university"), wird auf GitHub unter _Settings > Pages > Custom Domain_ hinterlegt.
Die Domain wird so konfiguriert, dass sie über einen CNAME-Eintrag auf das Repository der Applikation verweist.

Wird ein Branch in den main-Branch gemergt, wird über einen Workflow eine #gls("githubActions") ausgelöst, welche die #gls("spa") baut und deployt.

Anstelle einer Datenbank wird das Data Repository verwendet: #link("https://github.com/lost-university/data").
Die darin enthaltenen JSON-Dateien werden mithilfe von Tags versioniert.

=== Diagramm

Wir haben uns dagegen entschieden, die Architektur mittels arch42 zu dokumentieren, da wir nicht die Entscheidungen fällen, sondern lediglich die existierende Architektur dokumentieren.
Für diese Bedürfnisse reicht ein C4 Diagramm vollkommen aus.
Jedoch limitieren wir uns auf die ersten drei Cs, da dieses Diagram zum Ziel hat, den Aufbau der bestehenden Applikation zu erklären, nicht den Code zu dokumentieren.

#figure(image("structurizr-System.png"), caption: [C4 Diagram, Level Context]) <c4_context>
#figure(image("structurizr-Containers.png"), caption: [C4 Diagram, Level Containers]) <c4_containers>
#figure(image("structurizr-Data.png"), caption: [C4 Diagram, Level Component, Data]) <c4_component_data>
#figure(image("structurizr-Web.png"), caption: [C4 Diagram, Level Component, Web]) <c4_component_web>

== Funktionalität

Die im folgenden as User Stories beschriebenen Funktionalitäten bestanden bereits vor Beginn dieser Studienarbeit.

Als User kann ich über ein Dropdown einen Musterstudienplan auswählen, der vorausgefüllt angezeigt wird, sodass ich diesen als Grundlage für meinen eigenen Plan verwenden und bei Bedarf anpassen kann. Es stehen die Musterstudienpläne für alle Spezialisierungen, jeweils für das Teilzeit- und Vollzeit-Modell, zur Verfügung.
  - @musterplan
- Als User sehe ich eine visuelle Repräsentation meines Planes.
  - @planer
- Als User kann ich Semester im Plan hinzufügen und entfernen, um meine Studiendauer abzubilden.
- Als User kann ich einem Semester ein Modul hinzufügen, das Modul beliebig verschieben und auch entfernen, um meinen Modulplan zu gestalten.
- Als User erhalte ich eine Fehlermeldung, wenn ich versuche, ein Modul einem zweiten Semester hinzuzufügen, um ungültige Pläne zu verhindern.
  - @error_doppelt
- Als User sehe ich, wie viele Credits ein geplantes Modul wert ist, und erkenne anhand der Farbgebung auch, zu welcher Kategorie es gehört.
- Als User kann ich durch einen Klick auf den Namen eines geplanten Modules zur entsprechenden Modulbeschreibung auf Adunis gelangen, um dort weitere Informationen abzurufen.
- Als User sehe ich die Summe der Credits aller Module eines Semesters in meinem Plan.
- Als User kann ich optional mein Startsemester eingeben, damit die Semester mit einem passenden Namen beschriftet, die bereits erreichten, geplanten und gesammthaft benötigten Credits pro Kategorie dargestellt und nur mögliche Spezialisierungen angezeit werden.
  - @kategorien
- Als User sehe ich, welche Module noch benötigt werden, um eine Spezialisierung zu erreichen.
  - @spezialisierungen
- Als User erhalte ich eine Fehlermeldung, wenn mein Plan Module enthält, die nicht korrekt aufgelöst werden können. Diese Meldung gibt mir die Möglichkeit, das betroffene Modul aus meinem Plan zu entfernen.
  - @error_unbekannt
- Als User sehe ich Memes im Semesterplaner, um die Stimmung beim Planen aufzulockern.
- Als Maintainer oder potentieller Maintainer sehe ich die Namen anderer Maintainer, die mit ihren GitHub-Profilen verlinkt sind, sowie einen Link zur GitHub-Seite des Semesterplaners, um mich zur Mitarbeit zu motivieren.

- Die geplanten Module, gruppiert nach Semester, und das ausgewählte Startsemester werden in der URL als Query-Parameter gespeichert.
- Die URL zum Plan wird im Local Storage abgelegt.
- Beim Öffnen eines leeren Planes, wird der Plan aus dem Local Storage verwendet, wenn ein solcher existiert.
- Beim Öffnen eines Plans, der den alten Namen eines Modules enthält, wird der Modulname automatisch auf den neuen Namen migriert.

#figure(image("Musterplan.png"), caption: [Dropdown zur Auswahl eines Musterstudienplans.]) <musterplan>

#figure(image("Planer.png"), caption: [Ein Beispiel für einen Plan.]) <planer>

#figure(image("Error_Doppelt.png"), caption: [Die Fehlermeldung beim erneuten Hinzufügen eines Modules.]) <error_doppelt>

#figure(image("Kategorien.png"), caption: [Die Auswahl des Startsemesters und die Übersicht der erreichten, geplanten und nötigen Credits pro Kategorie.]) <kategorien>

#figure(image("Spezialisierungen.png"), caption: [Die Spezialisierungen, mit Hinweis zu deren Erreichung.]) <spezialisierungen>

#figure(image("Error_Unbekannt.png"), caption: [Die Fehlermeldung bei einem unbekannten Modul in der URL.]) <error_unbekannt>


== Probleme
Im Folgenden werden alle Probleme und Bugs dokumentiert, die bereits vor Beginn dieser Semesterarbeit in der Applikation vorhanden waren. Im Verlauf dieser Arbeit werden jene Probleme und Bugs behandelt, welche im Rahmen des User-Centered-Design-Ansatzes als relevant identifiziert wurden. Die übrigen entfallen somit aus dem Umfang dieser Arbeit.

- Suche
  - Wird nach Hinzufügen eines Modules nicht zurückgesetzt.
  - Funktionalität eingeschränkt auf gewissen Browsern.
  - Modul nicht über Kürzel auffindbar.
- Daten
  - Keine Dokumentation der Daten von SLCM.
  - Vermutete Inkonsistenzen.
  - Jedes Semester sind manuelle Anpassungen für korrekte Migration notwendig.
