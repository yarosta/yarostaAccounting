import QtQuick 2.0
import Backend 1.0

Item {
    Backend {
        id: backend
    }
    property int applicationState: backend.applicationState

    function changeApplicationState(appState) {
        backend.setApplicationState(appState);
    }
}
