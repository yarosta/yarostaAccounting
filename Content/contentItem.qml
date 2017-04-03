import QtQuick 2.0

Rectangle {
    id: root
    signal clicked
    anchors.horizontalCenter: parent.horizontalCenter
    width: parent.width - 6
    height: 35
    color: "#1D81D8"
    radius: 3.75

    Text {
        id: label
        anchors.verticalCenter: parent.verticalCenter
        x: parent.x + parent.width*0.1
        color: "white"
        font.family: "Ubuntu"
        font.pixelSize: 16
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

