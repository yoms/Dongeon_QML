import QtQuick 1.0
import Qt.labs.gestures 1.0

Rectangle {
    id: container
    anchors.fill: parent
    anchors.leftMargin: 75

    Rectangle {

        id: personnageList
        width: 200
        color:  '#fefefefe'
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        ListModel
        {
            id:model
            ListElement {
                name: "Hash"
                level: "10"
                imageSources: ''
            }
            ListElement {
                name: "Darken"
                level: "10"
                imageSources: ''
            }
            ListElement {
                name: "Azaleh"
                level: "10"
                imageSources: ''
            }
        }

        ListView {
            id: listChoixPerso
            anchors.fill: parent
            spacing: 2
            model: model
            delegate: PersonnageListDelegate{
                personnageLevel: 'Level '+ level
                personnageName: name
                imagePersonage: imageSources === '' ? "qrc:/image/dungeon/no-personnage" : imageSources
                selected: ListView.isCurrentItem
                onClicked: listChoixPerso.currentIndex = index
            }
            currentIndex: 0
        }
    }

    Rectangle {
        id: test
        anchors.left: personnageList.right
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        PersonnageDetailView{}
    }
}
