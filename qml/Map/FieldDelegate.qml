// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    height: 32
    width: 32
    property int type: fieldType;
    Image {
         id: image
         anchors.fill: parent
         source: urlImage
    }
    Rectangle {
         id: over
         anchors.fill: parent
         color: "#00000000"
    }
    MouseArea{
        anchors.fill: parent
        onClicked:
        {
            if(over.color == "#b00000")
               over.color = "#00000000"
            else
               over.color = "#55B00000"
        }
    }
}
