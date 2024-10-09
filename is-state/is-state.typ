#import "@preview/glossarium:0.4.1": gls, glspl

= Ist-Zustand

Das ursprüngliche Projekt, auf dem unsere Arbeit aufbaut, kann als öffentliches GitHub Repository hier gefunden werden: #link("https://github.com/lost-university/web").

Wir haben uns entschieden, einen Fork des Originalprojekts zu erstellen, um unsere Anpassungen unabhängig davon vornehmen zu können. Dadurch stellen wir sicher, dass spätere Änderungen am Originalprojekt, die nach Beginn unserer Semesterarbeit erfolgen, keinen Einfluss auf unseren Entwicklungsprozess haben. 

Ein weiterer Vorteil eines Forks gegenüber einem Branch ist die einfachere Handhabung des Hostings.

== Architektur

=== Daten

Alle Daten zu #gls("module", display: "Modulen"), #gls("category", display: "Kategorien"), #gls("focus", display: "Spezialisierung") und #gls("std", display: "Studienordnungen"), welche der Planer nutzt, sind öffentlich #link("https://studien.ost.ch") zugänglich.

Diese Daten werden von einem Python Crawler gesammelt, verarbeitet und als JSON Dateien im Data Repository abgelegt.

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
Für jedes Modul wird anhand der `"zuordnungen[].url"` eine Anfrage gemacht, woraus das folgende Feld relevant ist.
```json
{
  "kreditpunkte": 4
}
```
Für jede Spezialisierung wird anhand der `"spezialisierungen[].url"` eine Anfrage gemacht, woraus die folgenden Felder relevant sind.
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

Das Diagram @crawler stellt den Ablauf, bei dem der Crawler die oben erwähnten Daten verarbeitet, grob dar.
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

Die Applikation selbst ist eine #gls("spa"), geschrieben in Vue.
Es wird Typescript anstatt JavaScript verwendet.
Die Icons kommen von Fontawesome, das Styling wird grösstenteils über Tailwind gemacht.
Als Build Tool wird Vite eingesetzt.

Vor dem Start unserer Arbeit wurde mit dem Stakeholder, welcher auch Haupt-Maintainer ist, besprochen, dass sich dieser TechStack nicht durch unsere Arbeit verändern soll.

=== Hosting

// Glossar or Bib? https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages#about-github-pages
Die Applikation wird über GitHub Pages gehosted.
Da sie lediglich eine #gls("spa") ohne Backend ist, entfallen somit jegliche Kosten für das Hosting.

// I want the steps to be styled differently
Die gewünschte URL, #link("lost.university"), wird auf GitHub unter Settings -> Pages -> Custom Domain hinterlegt.
Bei der Domain selbst wird die Repository als ein CNAME hinterlegt.

// I want "main" to be styled differently
// Glossar or Bib? https://docs.github.com/en/actions/about-github-actions
Wird ein Branch in den main Branch gemergt, wird über einen GitHub Workflow eine GitHub Action ausgelöst, welche die #gls("spa") buildet und deployed.

Als Alternative zur einer Datenbank wird das Data Repository verwendet: #link("https://github.com/lost-university/data").
Die verwendeten JSON Dateien werden über Tags versioniert.

== Funktionalität

Folgende Funktionalitäten bestanden bereits vor Beginn unserer Arbeit.

- Als User kann ich über ein Dropdown einen Musterplan wählen und diesen anzeigen lassen, um meinen Plan darauf basierend aufzubauen. Es stehen die Musterpläne für alle Spezialisierungen, jeweils für das Teilzeit- und Vollzeit-Modell, zur Verfügung.
  - @musterplan
- Als User sehe ich eine visuelle Representation meines Planes.
  - @planer
- Als User kann ich ein Semester im Plan hinzufügen und entfernen, um meine Studiendauer abzubilden.
- Als User kann ich in einem Semester ein Modul hinzufügen, verschieben und entfernen, um meinen Modulplan zu gestalten.
- Als User erhalte ich eine Fehlermeldung, wenn ich versuche ein Modul in einem zweiten Semester hinzuzufügen, um ungültige Pläne zu vermeiden.
  - @error_doppelt
- Als User sehe ich wieviele Credits ein geplantes Modul wert ist und anhand der Farbe auch, zu welcher Kategorie es gehört.
- Als User kann ich über einen Klick auf den Namen eines geplanten Modules zu dessen Modulbeschreibung auf Adunis gelangen, um mir dort weitere Informationen zu holen.
- Als User sehe ich die Summe der Credits aller Module eines Semesters in meinem Plan.
- Als User kann ich optional mein Startsemester eingeben, damit die Semester mit einem passenden Namen beschriftet, die bereits erreichten, geplanten und noch benötigten Credits pro Kategorie dargestellt und nur mögliche Spezialisierungen angezeit werden.
  - @kategorien
- Als User sehe ich bei einer Spezialisierung, welche Module noch zu deren Erreichung benötigt werden.
  - @spezialisierungen
- Als User erhalte ich eine Fehlermeldung, sollte mein Plan Module enthalten, die nicht korrekt aufgelöst werden können. Ich habe durch diese Fehlermeldung die Möglichkeit, dieses Modul aus meinem Plan zu entfernen.
  - @error_unbekannt
- Als User sehe ich ein paar Memes im Planer, um die Stimmung auch beim Planen noch locker zu halten.
- Als Maintainer oder potentieller Maintainer sehe ich die Namen anderer Maintainer, mit Verlinkung zu ihrem GitHub-Profil, und einem Link zur GitHub-Seite des Planers, um mich zur Mitarbeit zu motivieren.

- Die Module, gruppiert nach Semester, und das Startsemester werden in der URL als Queryparam gespeichert.
- Die URL zum Plan wird im LocalStorage gespeichert.
- Beim Öffnen eines leeren Planes, wird der Plan aus dem LocalStorage verwendet, wenn ein solcher existiert.
- Beim Öffnen eines Planes, der den alten Namen eines Modules enthält, wird dieser automatisch zum neuen Namen migriert.

#figure(image("Musterplan.png"), caption: [Dropdown zur Auswahl eines Musterplanes.]) <musterplan>

#figure(image("Planer.png"), caption: [Ein Beispiel für einen Plan.]) <planer>

#figure(image("Error_Doppelt.png"), caption: [Die Fehlermeldung beim erneuten Hinzufügen eines Modules.]) <error_doppelt>

#figure(image("Kategorien.png"), caption: [Die Auswahl des Startsemesters und die Übersicht der erreichten, geplanten und nötigen Credits pro Kategorie.]) <kategorien>

#figure(image("Spezialisierungen.png"), caption: [Die Spezialisierungen, mit Hinweis zu deren Erreichung.]) <spezialisierungen>

#figure(image("Error_Unbekannt.png"), caption: [Die Fehlermeldung bei einem unbekannten Modul in der URL.]) <error_unbekannt>


== Probleme
Im folgenden werden alle Probleme und Bugs dokumentiert, die bereits zu Beginn unserer Arbeit bestanden, aber nicht im Rahmen unserer geplanten Anpassungen behoben werden sollen.
Sollte genügend Zeit nach erreichen unseres eigentlichen Zieles übrig sein, könnten wir diese ebenfalls noch angehen.

// Unsure, which I should mention here
// Might be better to wait a bit, maybe until after implementation, then try again
- Suche
- Mobile
- Adunis?
- Migration von Daten

