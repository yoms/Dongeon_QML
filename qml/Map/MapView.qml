// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Flickable
{
    anchors.fill: parent
    contentWidth: grid.width; contentHeight:  grid.height
    Grid {
        id: grid
        width: MapModel.columnSize()*32
        height: MapModel.rowSize()*32
        rows: MapModel.rowSize(); columns: MapModel.columnSize(); spacing: 0
        Repeater
        {
            id: repeater
            model: MapModel
            FieldDelegate{}
        }

     }
}
