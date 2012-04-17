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
        model: FieldModel
        delegate: Item {
            height: 32
            property int type: fieldType
            Image {
                id: image
                source: urlImage
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                        MapModel.changeSelection(parent.parent.type)
                        console.log("clicked");
                    }
                }
            }
        }
    }
}
