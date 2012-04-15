import QtQuick 1.0
Rectangle {
    id: main
    width:  1366
    height:  768
    Rectangle {
        id: contentPane
        x:  25
        y:  0
        width:  1341
        height:  768
    }

    ViewSwitcher {
        id: viewSwitcher
        // Rooted in contentPane
        root: contentPane
    }

    ViewLoader {
        id: personnages
        viewSource: "PersonnagesMain.qml"
        keepLoaded: true        
    }

    ViewLoader {
        id: map
        viewSource: "MapMain.qml"
        keepLoaded: true
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 74
        height: 768
        color: "#ffffff"

        Menu {
            id: menu
            x: 0
            y: 0
            width: 75
            height: 785
            onListPersonnages: viewSwitcher.switchView(personnages, 5, "instant");
            onMap: viewSwitcher.switchView(map, 5, "instant");
        }
    }
}
