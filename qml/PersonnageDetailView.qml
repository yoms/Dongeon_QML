import QtQuick 1.0

Item {
    width:  1136
    height:  768
    property alias personnageImageSource: personnageImage.source
    Rectangle {
        id: rectangle2
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            width: 152
            color: "#ffffff"
            radius: 10
            border.width: 0
            border.color: "#000000"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Image {
                id: personnageImage
                height: 180
                anchors.top: parent.top
                anchors.topMargin: 16
                anchors.right: parent.right
                anchors.rightMargin: 16
                anchors.left: parent.left
                anchors.leftMargin: 16
                source: "qrc:/qtquickplugin/images/template_image.png"
            }

            Column {
                x: 16
                y: 216
                width: 120
                height: 512
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 16
                anchors.right: parent.right
                anchors.rightMargin: 16
                anchors.left: parent.left
                anchors.leftMargin: 16
                spacing: 5
                Button {
                    id: name
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    height: 40
                    text: "Azaleath"
                }

                Button {
                    id: titre
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    height: 40
                    text: "Grand mage"
                }

                Button {
                    id: level
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    height: 40
                    text: "Level 10"
                }

                Button {
                    id: classe
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    height: 40
                    text: "Mage"
                }

                Button {
                    id: race
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    height: 40
                    text: "Humain"
                }

            }
        }


    }
}
