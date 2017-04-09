import QtQuick 2.0
import QtQuick.Window 2.0
import Menu 1.0
import Content 1.0

Window {
    id:root
    title: "yarostaAccounting"
    width: 1000
    height: 700

    property alias applicationState: backendWrapper.applicationState
    property alias contractorsContentState: backendWrapper.contractorsContentState
    property alias eventsContentState: backendWrapper.eventsContentState
    property alias documentsContentState: backendWrapper.documentsContentState
    property alias paymentsContentState: backendWrapper.paymentsContentState

    property alias menuWidth: menu.width

    MainMenu {
        id: menu
        state: applicationState
    }
    MainContent {
        id: content
        state: applicationState
        contractorsContentState: root.contractorsContentState
        eventsContentState: backendWrapper.eventsContentState
        documentsContentState: backendWrapper.documentsContentState
        paymentsContentState: backendWrapper.paymentsContentState
    }
    BackendWrapper {
        id: backendWrapper
    }

    function setApplicationState(appState) {
        backendWrapper.changeApplicationState(appState);
    }
}
