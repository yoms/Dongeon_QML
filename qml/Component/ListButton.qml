import QtQuick 1.1

Item {
    id: container
    width: 200
    height: 50
    property alias text: text.text
    property alias color: button.color
    property alias radius: button.radius
    property alias border: button.border
    property alias imageSources: images.source
    signal clicked()

    Rectangle {
        color: "white"
        border.width: 2
        border.color: "#aaaaaa"
        id: button
        anchors.fill: parent

        Image {
            id: images
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: parent.border.width
            anchors.leftMargin: parent.border.width
            anchors.bottomMargin: parent.border.width
            width: height
        }

        Text {
            id: text
            color: "black"
            verticalAlignment: Text.AlignVCenter
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: images.width + parent.border.width
            font.pixelSize: 12
            font.bold: true
        }
    }

    MouseArea {
        id: button_area
        anchors.fill: parent
        onClicked: container.clicked()
    }
}
