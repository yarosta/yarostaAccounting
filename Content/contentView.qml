import QtQuick 2.0

Rectangle {
    id: titleBackground
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    width: parent.width
    height: 136
    color: "#4A4A4A"

    property alias viewTitle: title.text

    Text {
        id: title
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height / 3.6 - font.pointSize / 2
        font.pointSize: 18
        font.family: "Ubuntu"
        color: "white"
    }
}