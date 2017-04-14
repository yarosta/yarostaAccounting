import QtQuick 2.0

Rectangle {
    id: root

    property string text

    height: parent.height

    radius: 3.75
    color: "#BECDDA"

    Text {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 12
        font.family: "Ubuntu"
        font.pixelSize: 12
        color: "#374D61"
        text: root.text
    }
}
