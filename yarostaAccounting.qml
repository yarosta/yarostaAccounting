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

    property alias menuWidth: menu.width

    MainMenu {
        id: menu
        state: applicationState

        onSetApplicationState: backendWrapper.changeApplicationState(appState)
    }
    MainContent {
        id: content

        state: applicationState

        contractorsContentState: backendWrapper.contractorsContentState
        eventsContentState: backendWrapper.eventsContentState
        documentsContentState: backendWrapper.documentsContentState
        paymentsContentState: backendWrapper.paymentsContentState

        onSetContractorsContentState: backendWrapper.changeContractorsContentState(contractorsState)
        onSetEventsContentState: backendWrapper.changeEventsContentState(eventsState)
        onSetDocumentsContentState: backendWrapper.changeDocumentsContentState(documentsState)
        onSetPaymentsContentState: backendWrapper.changePaymentsContentState(paymentsState)
    }
    BackendWrapper {
        id: backendWrapper
    }
}
