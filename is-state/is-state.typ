#import "@preview/glossarium:0.4.1": gls, glspl

= Ist-Zustand

Das ursprüngliche Projekt, auf dem unsere Arbeit aufbaut, kann als öffentliches GitHub Repository hier gefunden werden: #link("https://github.com/lost-university/web").

Wir haben uns entschieden, einen Fork des Originalprojekts zu erstellen, um unsere Anpassungen unabhängig davon vornehmen zu können. Dadurch stellen wir sicher, dass spätere Änderungen am Originalprojekt, die nach Beginn unserer Semesterarbeit erfolgen, keinen Einfluss auf unseren Entwicklungsprozess haben. 

Ein weiterer Vorteil eines Forks gegenüber einem Branch ist die einfachere Handhabung des Hostings.

== Architektur

=== Daten

Alle Daten zu #gls("module", display: "Modulen"), #gls("category", display: "Kategorien"), #gls("focus", display: "Spezialisierung") und #gls("std", display: "Studienordnungen"), welche der Planer nutzt, sind öffentlich #link("https://studien.ost.ch") zugänglich.

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

Wie bereits erwähnt, wird das Format der Daten für die weitere Nutzung angepasst.

Module werden in folgendem Format gespeichert.
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

Kategorien in folgendem Format.
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

Spezialisierungen in folgendem Format.
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
Die Icons kommen von Fontawesome, das Styling wird grösstenteils über Tailwind gemacht.
Als Build-Tool kommt Vite zum Einsatz.

Vor Beginn unserer Arbeit wurde mit dem Stakeholder, welcher gleichzeitig Haupt-Maintainer ist, vereinbart, dass dieser Tech-Stack im Verlauf unserer Arbeit unverändert bleibt.

=== Hosting

// Glossar or Bib? https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages#about-github-pages
Die Applikation wird über GitHub Pages gehostet.
Da sie lediglich eine #gls("spa") ohne Backend ist, entfallen somit jegliche Kosten für das Hosting.

// I want the steps to be styled differently
Die gewünschte URL, #link("lost.university"), wird auf GitHub unter Settings -> Pages -> Custom Domain hinterlegt.
Bei der Domain selbst wird die Repository als ein CNAME hinterlegt.

// I want "main" to be styled differently
// Glossar or Bib? https://docs.github.com/en/actions/about-github-actions
Wird ein Branch in den main-Branch gemergt, wird über einen GitHub Workflow eine GitHub Action ausgelöst, welche die #gls("spa") baut und deployt.

Anstelle einer Datenbank wird das Data Repository verwendet: #link("https://github.com/lost-university/data").
Die darin enthaltenen JSON-Dateien werden mithilfe von Tags versioniert.

== Funktionalität

Folgende Funktionalitäten bestanden bereits vor Beginn dieser Semesterarbeit.

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
- Als User kann ich optional mein Startsemester eingeben, damit die Semester mit einem passenden Namen beschriftet, die bereits erreichten, geplanten und noch benötigten Credits pro Kategorie dargestellt und nur mögliche Spezialisierungen angezeit werden.
  - @kategorien
- Als User sehe ich, welche Module noch benötigt werden, um eine Spezialisierung zu erreichen.
  - @spezialisierungen
- Als User erhalte ich eine Fehlermeldung, wenn mein Plan Module enthält, die nicht korrekt aufgelöst werden können. Diese Meldung gibt mir die Möglichkeit, das betroffene Modul aus meinem Plan zu entfernen.
  - @error_unbekannt
- Als User sehe ich Memes im Planer, um die Stimmung beim Planen aufzulockern.
- Als Maintainer oder potentieller Maintainer sehe ich die Namen anderer Maintainer, die mit ihren GitHub-Profilen verlinkt sind, sowie einen Link zur GitHub-Seite des Planers, um mich zur Mitarbeit zu motivieren.

- Die Module, gruppiert nach Semester, und das Startsemester werden in der URL als Queryparam gespeichert.
- Die URL zum Plan wird im LocalStorage gespeichert.
- Beim Öffnen eines leeren Planes, wird der Plan aus dem LocalStorage verwendet, wenn ein solcher existiert.
- Beim Öffnen eines Plans, der den alten Namen eines Modules enthält, wird der Modulname automatisch auf den neuen Namen migriert.

#figure(image("Musterplan.png"), caption: [Dropdown zur Auswahl eines Musterstudienplans.]) <musterplan>

#figure(image("Planer.png"), caption: [Ein Beispiel für einen Plan.]) <planer>

#figure(image("Error_Doppelt.png"), caption: [Die Fehlermeldung beim erneuten Hinzufügen eines Modules.]) <error_doppelt>

#figure(image("Kategorien.png"), caption: [Die Auswahl des Startsemesters und die Übersicht der erreichten, geplanten und nötigen Credits pro Kategorie.]) <kategorien>

#figure(image("Spezialisierungen.png"), caption: [Die Spezialisierungen, mit Hinweis zu deren Erreichung.]) <spezialisierungen>

#figure(image("Error_Unbekannt.png"), caption: [Die Fehlermeldung bei einem unbekannten Modul in der URL.]) <error_unbekannt>


== Probleme
Im folgenden werden alle Probleme und Bugs dokumentiert, die bereits vor Beginn dieser Semesterarbeit in der Applikation vorhanden waren. Im Verlauf dieser Arbeit werden nur jene Probleme und Bugs behandelt, die im Rahmen des User-Centered-Design-Ansatzes als relevant identifiziert wurden. Die übrigen fallen nicht in den Umfang dieser Semesterarbeit.

// Unsure, which I should mention here
// Might be better to wait a bit, maybe until after implementation, then try again
- Suche
- Mobile
- Adunis?
- Migration von Daten

