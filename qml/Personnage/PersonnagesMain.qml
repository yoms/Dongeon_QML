import QtQuick 1.0

Rectangle {
    id: container
    width: 1311
    height: 778
    anchors.fill: parent
    anchors.leftMargin: 200

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
                onClicked:
                {
                    listChoixPerso.currentIndex = index
                    detail.personnageImageSource = imagePersonage
                }
            }
            currentIndex: 0
        }
    }

    PersonnageDetailView
    {
        id: detail
        anchors.left: personnageList.right
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
    }

}
