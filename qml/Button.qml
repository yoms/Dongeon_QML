import QtQuick 1.0

Item {
    id: container
    width: 250
    height: width / 1.61803399
    opacity: 1
    property alias text: text.text
    property alias color: button.color
    property alias radius: button.radius
    property alias border: button.border
    property alias imageSources: images.source
    signal clicked()

    Rectangle {
        id: button
        x: 0
        y: 0
        anchors.fill: parent
        color: "#000000"
        radius: 11
        border.color: "#000000"

        Text {
            id: text
            color: "#ffffff"
            z: 100
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 12
        }

        Image {
            id: images
            anchors.fill: parent
        }
    }

    MouseArea {
        id: button_area
        anchors.fill: parent
        onClicked: container.clicked()
    }
}
