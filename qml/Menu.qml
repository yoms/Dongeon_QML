import QtQuick 1.0
Item {
    id: container
    width: 75
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
            anchors.leftMargin: 12
            anchors.topMargin: 25
            spacing: 25

            Button {
                id: creePersonnages
                width: 50
                height: 50
                imageSources: "qrc:/image/button/personnages"
                onClicked: {
                    mouveContainer.start()
                    container.creerPersonnages()
                }
                visible : false
            }

            Button {
                id: listPersonnages
                width: 50
                height: 50
                imageSources: "qrc:/image/button/personnages"
                onClicked: {
                    mouveContainer.start()
                    container.listPersonnages()
                }
                visible : false
            }

            Button {
                id: creeScenario
                width: 50
                height: 50
                imageSources: "qrc:/image/button/map"
                onClicked: {
                    mouveContainer.start()
                    container.creeScenario()
                }
                visible : false
            }

            Button {
                id: listScenario
                width: 50
                height: 50
                imageSources: "qrc:/image/button/map"
                onClicked: {
                    mouveContainer.start()
                    container.listScenario()
                }
                visible : false
            }

            Button {
                id: creeSpell
                width: 50
                height: 50
                imageSources: "qrc:/image/button/map"
                onClicked: {
                    mouveContainer.start()
                    container.creeSpell()
                }
                visible : false
            }

            Button {
                id: listSpell
                width: 50
                height: 50
                imageSources: "qrc:/image/button/map"
                onClicked: {
                    mouveContainer.start()
                    container.listSpell()
                }
                visible : false
            }

            Button {
                id: personnages
                width: 50
                height: 50
                imageSources: "qrc:/image/button/personnages"
                onClicked:
                {
                    container.state = "Personnages"
                    mouveContainer.start()
                    container.personnages()
                }
            }

            Button {
                id: spell
                width: 50
                height: 50
                imageSources: "qrc:/image/button/spellBook"
                onClicked:
                {
                    container.state = "Scenario"
                    mouveContainer.start()
                    container.spell()
                }
            }

            Button {
                id: map
                width: 50
                height: 50
                imageSources: "qrc:/image/button/map"
                onClicked:
                {
                    container.state = "Scenario"
                    mouveContainer.start()
                    container.map()
                }
            }

            Button {
                id: quitter
                width: 50
                height: 50
                imageSources: "qrc:/image/button/porte"
                onClicked:
                {
                    mouveContainer.start()
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
        }
    ]
     SequentialAnimation {
             id: mouveContainer
             running: false
             NumberAnimation { target: container; property: "x"; to: container.x-75; duration: 100 }
             NumberAnimation { target: container; property: "x"; to: container.x; duration: 100 }
         }
}
