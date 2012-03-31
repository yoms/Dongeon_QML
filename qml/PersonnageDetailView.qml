import QtQuick 1.0

Item {
    width:  1136
    height:  768
    Rectangle {
        anchors.fill: parent
        color: 'red'

        Image {
            id: image1
            x: 25
            y: 25
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
        }
        Column {
            x: 138
            y: 25
            spacing: 2
            Text {
                id: name
                width: 80
                height: 20
                text: "Azaleath"
                font.pixelSize: 12
            }

            Text {
                id: titre
                width: 80
                height: 20
                text: "Grand mage"
                font.pixelSize: 12
            }

            Text {
                id: level
                width: 80
                height: 20
                text: "Level 10"
                font.pixelSize: 12
            }

            Text {
                id: classe
                width: 80
                height: 20
                text: "Mage"
                font.pixelSize: 12
            }

            Text {
                id: race
                width: 80
                height: 20
                text: "Humain"
                font.pixelSize: 12
            }

        }

    }
}
