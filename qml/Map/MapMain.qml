import QtQuick 1.1
 Rectangle {
     id: mapMain
     width: 1311
     height: 778
     anchors.fill: parent
     anchors.leftMargin: 200

     MapView
     {
     }
     FieldTypeSelection
     {
         id: editionList
         anchors.right: parent.right
         anchors.bottom: parent.bottom
         anchors.top: parent.top
     }
     states: [
         State {
             name: "Edition"
             PropertyChanges {
                 target: editionList
                 visible: true
             }
         }
     ]
 }
