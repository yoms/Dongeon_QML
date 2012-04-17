import QtQuick 1.1
import "Component" as Component
Item {
    id: container
    width: 200
    height: 768
    property alias state: container.state
    signal personnages()
    signal creerPersonnages()
    signal listPersonnages()
    signal creeScenario()
    signal listScenario()
    signal map()
    signal spell()
    signal creeSpell()
    signal listSpell()
    signal quitter()
    Rectangle {
        id: rectangleMenu
        anchors.fill: parent
        color: "#660202"

        Column {
            id: listMenu
            anchors.fill: parent
            anchors.topMargin: 2

            Component.ListButton {
                id: creePersonnages
                imageSources: "qrc:/image/button/personnages"
                text: "Creer un personnage"
                onClicked: {

                    container.creerPersonnages()
                }
                visible : false
            }

            Component.ListButton {
                id: listPersonnages
                imageSources: "qrc:/image/button/personnages"
                text: "Liste des personnages"
                onClicked: {

                    container.listPersonnages()
                }
                visible : false
            }

            Component.ListButton {
                id: creeScenario
                imageSources: "qrc:/image/button/map"
                text: "Creer un scenario"
                onClicked: {

                    container.creeScenario()
                }
                visible : false
            }

            Component.ListButton {
                id: listScenario
                imageSources: "qrc:/image/button/map"
                text: "Lister les scenario"
                onClicked: {

                    container.listScenario()
                }
                visible : false
            }

            Component.ListButton {
                id: creeSpell
                imageSources: "qrc:/image/button/map"
                text: "Creer un sort"
                onClicked: {

                    container.creeSpell()
                }
                visible : false
            }

            Component.ListButton {
                id: listSpell
                imageSources: "qrc:/image/button/map"
                text: "Lister les sorts"
                onClicked: {

                    container.listSpell()
                }
                visible : false
            }

            Component.ListButton {
                id: personnages
                imageSources: "qrc:/image/button/personnages"
                text: "Personnages"
                onClicked:
                {
                    container.state = "Personnages"

                    container.personnages()
                }
            }

            Component.ListButton {
                id: spell
                imageSources: "qrc:/image/button/spellBook"
                text: "Sorts"
                onClicked:
                {
                    container.state = "Spell"

                    container.spell()
                }
            }

            Component.ListButton {
                id: map
                imageSources: "qrc:/image/button/map"
                text: "Scenarios"
                onClicked:
                {
                    container.state = "Scenario"

                    container.map()
                }
            }

            Component.ListButton {
                id: quitter
                imageSources: "qrc:/image/button/porte"
                text: "Quitter";
                onClicked:
                {

                    if( container.state == "")
                        container.quitter()
                    else
                        container.state = ""
                }
            }
        }
    }
    states: [
        State {
            name: "Personnages"

            PropertyChanges {
                target: personnages
                visible: false
            }

            PropertyChanges {
                target: map
                visible: false
            }

            PropertyChanges {
                target: creePersonnages
                visible: true
            }

            PropertyChanges {
                target: listPersonnages
                visible: true
            }

            PropertyChanges {
                target: spell
                visible: false
            }

            PropertyChanges {
                target: quitter
                text: "Retour"
            }
        },
        State {
            name: "Scenario"

            PropertyChanges {
                target: personnages
                visible: false
            }

            PropertyChanges {
                target: map
                visible: false
            }

            PropertyChanges {
                target: creeScenario
                visible: true
            }

            PropertyChanges {
                target: listScenario
                visible: true
            }

            PropertyChanges {
                target: spell
                visible: false
            }

            PropertyChanges {
                target: quitter
                text: "Retour"
            }
        },
        State {
            name: "Spell"
            PropertyChanges {
                target: personnages
                visible: false
            }

            PropertyChanges {
                target: map
                visible: false
            }

            PropertyChanges {
                target: creeScenario
                visible: false
            }

            PropertyChanges {
                target: listScenario
                visible: false
            }

            PropertyChanges {
                target: listSpell
                visible: true
            }

            PropertyChanges {
                target: creeSpell
                visible: true
            }

            PropertyChanges {
                target: spell
                visible: false
            }

            PropertyChanges {
                target: quitter
                text: "Retour"
            }
        }
    ]
}
