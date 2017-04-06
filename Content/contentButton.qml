import QtQuick 2.0

Rectangle {
    id: root
    property alias text: label.text
    state: "notSelected"
    signal clicked
    anchors.verticalCenter: parent.verticalCenter
    width: 110
    height: parent.height
    color: "#1D81D8"
    radius: 3.75

    Text {
        id: label
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
        font.family: "Ubuntu"
        font.pixelSize: 14
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            root.clicked();
        }
        onEntered:  {
            if (root.state === "notSelected") {
                cursorShape = Qt.OpenHandCursor
            } else if (root.state === "selected") {
                cursorShape = Qt.ClosedHandCursor
            }
        }
    }

}

