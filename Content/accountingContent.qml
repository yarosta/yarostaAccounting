import QtQuick 2.0

Item {
    id: root

    property var modelList

    signal setContentState(var contentState)

    Text {
        text: "accountingContent"
    }
}
