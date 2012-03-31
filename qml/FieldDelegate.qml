// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: container
    width: 32
    height: 32
    property alias sourceImage: image.source
    signal clicked();
    color: "blue"
    MouseArea {
        id: mouse_area
        anchors.fill: parent
        onClicked: container.clicked()
    }
    Image {
        id: image
        anchors.fill: parent
        Component.onCompleted: console.debug(image.source)
    }
}
