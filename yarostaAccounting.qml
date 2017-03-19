import QtQuick 2.0
import Menu 1.0
import Content 1.0

Item {
    id:root
    width: 1000
    height: 700

    property alias applicationState: backendWrapper.applicationState
    property alias menuWidth: menu.width

    MainMenu {
        id: menu
        state: applicationState
    }
    MainContent {
        id: content
    }
    BackendWrapper {
        id: backendWrapper
    }

    function setApplicationState(appState) {
        backendWrapper.changeApplicationState(appState);
    }
}
