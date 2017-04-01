import QtQuick 2.0

Item {
    id: root
    Rectangle {
        id: titleBackground
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        width: parent.width
        height: 130
        color: "#4A4A4A"
        Text {
            id: title
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height / 3.6 - font.pointSize / 2
            text: "Moi kontrahenci:"
            font.pointSize: 18
            font.family: "Ubuntu"
            color: "white"
        }
    }

}
