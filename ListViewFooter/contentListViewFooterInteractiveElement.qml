import QtQuick 2.0

Rectangle {
    id: root

    property string text

    height: parent.height

    radius: 3.75 
    color: "#374D61"

    Text {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: "Ubuntu"
        font.pixelSize: 12
        color: "#BECDDA"
        text: root.text
    }
}
