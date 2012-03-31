import QtQuick 1.0
Item{
    id: container
    width: 200
    height: 60
    property alias personnageName: personnageName.text
    property alias personnageLevel: personnageLevel.text
    property alias imagePersonage: imagePersonage.source
    property bool selected : false
    signal clicked()
    MouseArea{
        anchors.fill: parent
        onClicked: container.clicked()
    }

    Rectangle {
        id:  main
        opacity: 1
        anchors.fill: parent
        color: "#eeeeee"
        radius: 3
        border.color: "#eeeeee"
        border.width: 1
        Column{
            x: 68
            y: 0
            Text {
                id: personnageName
                text: 'Azaleath'
            }
            Text {
                id: personnageLevel
                color: 'grey'
                text: 'Level 25 '
            }
        }

        Rectangle {
            id: selection
            x: 212
            y: 9
            width: 43
            height: 43
            color: "#ffffff"
            rotation: 45
        }
        Component.onCompleted: console.log(personnageName.text)

    }

    Image {
        id: imagePersonage

        x: 3
        y: 3
        width: 54
        height: 54
        anchors.verticalCenter: parent.verticalCenter
        smooth: false
        source: "qrc:/image/dungeon/no-personnage"
    }
    states: [
        State {
            name: "Selected"
            when: selected == true
            PropertyChanges {
                target: selection
                x: 180
                y: 9
            }
        }
    ]
    transitions: [
        Transition {
            to: "*"
            NumberAnimation { properties: "x"; easing.type: Easing.OutBounce; duration: 350 }
        }
    ]

}
