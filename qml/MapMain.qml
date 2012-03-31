import QtQuick 1.1
 Rectangle {
     id: mapMain
     width: 1311
     height: 778
     anchors.fill: parent
     anchors.leftMargin: 75
     Flickable
     {
         anchors.fill: parent
         contentWidth: list.width; contentHeight:  list.height
         Grid {
             id: list
             width: MapModel.columnSize()*32
             height: MapModel.rowSize()*32
             rows: MapModel.rowSize(); columns: MapModel.columnSize(); spacing: 0
             Repeater
             {
                 id: repeater
                 model: MapModel
                 Rectangle {
                     height: 32
                     width: 32
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
             }

          }
     }

 }
