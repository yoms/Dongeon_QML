import QtQuick 1.0
import "Component" as Component
Rectangle {
    id: main
    width:  1366
    height:  768
    Rectangle {
        id: contentPane
        x:  200
        y:  0
        width:  1341
        height:  768
    }

    Component.ViewSwitcher {
        id: viewSwitcher
        // Rooted in contentPane
        root: contentPane
    }

    Component.ViewLoader {
        id: personnages
        viewSource: "Personnage/PersonnagesMain.qml"
        keepLoaded: true        
    }

    Component.ViewLoader {
        id: map
        viewSource: "Map/MapMain.qml"
        keepLoaded: true
    }
    Menu {
        id: menu
        x: 0
        y: 0
        onListPersonnages: viewSwitcher.switchView(personnages, 5, "instant");
        onMap: viewSwitcher.switchView(map, 5, "instant");
    }
}
