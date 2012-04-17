// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle
{
    width: 42
    ListView {
        id: editionList
        anchors.fill: parent;
        anchors.margins: 5
        spacing: 5
        delegate: Item {
            height: 32
            Rectangle
            {

                Image {
                    id: image
                    source: urlImage
                }
            }
        }
        model: FieldModel
    }
}
