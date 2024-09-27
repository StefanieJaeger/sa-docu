= Ist-Zustand

Das originale Projekt, auf dem unsere Arbeit basiert, kann als öffentliches GitHub Repository hier gefunden werden: #link("https://github.com/lost-university/web").

Wir haben uns dazu entschieden, einen Fork von diesem Projekt zu erstellen, auf welchem wir unsere Anpassungen durchführen werden. Dies, damit allfällige Änderungen am Original, welche nach dem Start unserer Arbeit anfallen, keinen direkten Einfluss auf unsere Arbeit haben.
Ein eigener Fork hat auch den Vorteil gegenüber einem Branch, dass das Hosting einfacher zu bewerkstelligen ist.

== Architektur

=== Hosting

(Ask Jeremy)
- GitHub Pages (Settings -> Pages -> Custom Domain)
- Domain?
- Client Config (CNAME)

=== Daten

Alle Daten zu Modulen, Kategorien, Vertiefungen und Studienordnungen, welche der Planer nutzt, sind öffentlich #link("https://studien.ost.ch") zugänglich.
Diese Daten werden von einem Python Crawler (Link?) gesammelt, verarbeitet und als JSON Dateien im Data Repository abgelegt.
Die Detailseiten der Studienordnungen dienen hier als Einstiegspunkt. Informationen zu den geltenden Kategorien und benötigten Credits, die möglichen Spezialisierungen und die zugehörigen Module können so entommen werden.
Die Aktualisierung der Daten erfolgt manuel. Vor Beginn eines jeden Semester führt ein Maintainer den Crawler lokal aus, überprüft die Änderungen der Daten auf Spezialfälle und erstellt anschliessend ein neues Tag für die Daten. Zuletzt kann die verwendete Version der Daten im Client über den Tag in der URL angepasst werden. 

(Struktur der Adunis Daten)
(Struktur unsere Daten)
(Diagram, wie Crawler durchgeht. STD (Kat, Modul, Spez) -> Modul, Spez)

=== Code

- VueJS
- NIX
- Tailwind
- 


- Hosting
- Data (How and Structure)
- Adunis (Structure)


== Funktionalität

- Musterpläne
- Semester hinzufügen & entfernen
- Module hinzufügen & entfernen
- Fehlermeldung beim Hinzufügen eines duplikaten Modules
- ECTS pro Modul
- Farbe pro Module, nach Kategorie, mit Hirarchie
- Summe der ECTS pro Semester
- Auswahl des Startsemester
- Berechnung der absolvierten und geplanten ECTS pro Kategorie
- Vertiefungen, mit Liste noch benötigter Module
- Notierung der Semester, Module und Startsemester in URL
- Speicherung der URL im LocalStorage
- Abrufung aus LocalStorage bei Navigation zu leerem Plan
- Fehlermeldung bei unfindbarem Modul aus URL
- Meme
- Credits im Footer
- Link zu Adunis
- Migration von alten Modulnamen zu neuen


== Probleme
Im folgenden werden alle Probleme und Bugs dokumentiert, die bereits zu Beginn unserer Arbeit bestanden, aber nicht im Rahmen unserer geplanten Anpassungen behoben werden sollen.
Sollte genügend Zeit nach erreichen unseres eigentlichen Zieles übrig sein, könnten wir diese ebenfalls noch angehen.

- Suche
- Mobile
- Adunis?
- Migration von Daten

