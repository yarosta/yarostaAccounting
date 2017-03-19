import QtQuick 2.0

Rectangle {
    id: root
    anchors.top: parent.top
    anchors.right: parent.right
    width: parent.width - menuWidth
    height: parent.height
    color: "#ADC0D1"

    Text {
        text: applicationState
    }

}
