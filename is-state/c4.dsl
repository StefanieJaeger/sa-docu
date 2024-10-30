workspace "Semesterplaner" "Dokumentation zum Semesterplaner" {

    !identifiers hierarchical

    model {
        u = person "User"
        ss = softwareSystem "Semesterplaner" {
            web = container "Web" "Die Web Applikation" "HTML, VueJS, Tailwind" {
                category = component "Kategorien" "Zeigt die Erfüllung pro Kategorie als Progress Bar"
                focus = component "Vertiefungen" "Zeigt noch benötigte Module pro Vertiefung"
                plan = component "Plan" "Enthält alle Semester"
                semester = component "Semester" "Zeigt Bezeichnung und zugehörige Module pro Semester"
                module = component "Module" "Zeigt Name und ECTS pro Modul"
                startSemesterDD = component "Startsemester Dropdown" "Dropdown zur Wahl des Startsemesters"
                planDD = component "Musterstudienpläne Dropdown" "Dropdown zur Wahl eines Musterstudienplanes"
                toast = component "Toast Benachrichtigung" "Toast zum Anzeigen von Fehlern oder Hinweisen"
            }
            data = container "Data" "Das Datenrepository" "Python, JSON" {
                crawler = component "Crawler" "Sammelt Daten, formatiert diese um und speichert sie als JSON" "Python"
                modules = component "Module" "Alle Module" "JSON"
                categories = component "Kategorien" "Kategorien pro Studienordnung" "JSON"
                focuses = component "Vertiefungen" "Vertiefungen pro Studienordnung" "JSON"
            }
        }
        slcm = softwareSystem "SLCM"
        
        u -> ss.web "Nutzt"
        
        ss.web -> ss.data "Liest von"
        ss.data.crawler -> slcm "Sammelt Daten von"
        
        ss.data.crawler -> ss.data.modules "Füllt ab"
        ss.data.crawler -> ss.data.categories "Füllt ab"
        ss.data.crawler -> ss.data.focuses "Füllt ab"
        
        ss.web.plan -> ss.web.semester "Enthält"
        ss.web.semester -> ss.web.module "Enthält"
        ss.web.startSemesterDD -> ss.web.semester "Gibt Namen"
        ss.web.startSemesterDD -> ss.web.category "Ermöglicht Berechnung"
        ss.web.plan -> ss.web.category "Ermöglicht Berechnung"
        ss.web.plan -> ss.web.focus "Ermöglicht Bestimmung der Erreichung"
        ss.web.planDD -> ss.web.plan "Füllt ab"
    }

    views {
        systemContext ss "System" {
            include *
            autolayout lr
        }

        container ss "Containers" {
            include *
            autolayout lr
        }
        
        component ss.web "Web" {
            include *
            autolayout lr
        }
        
        component ss.data "Data" {
            include *
            autolayout lr
        }

        styles {
            element "Element" {
                color #ffffff
            }
            element "Person" {
                background #741eba
                shape person
            }
            element "Software System" {
                background #8723d9
            }
            element "Container" {
                background #9a28f8
            }
            element "Component" {
                background #ff28f8
            }
        }
    }

    configuration {
        scope softwaresystem
    }

}