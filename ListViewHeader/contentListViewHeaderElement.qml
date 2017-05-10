import QtQuick 2.0

Rectangle {
    id: root

    property string text

    height: parent.height

    radius: 3.75  
    color: "#374D61"

    Text {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 12
        font.family: "Ubuntu"
        font.pixelSize: 14
        font.bold: true
        color: "#BECDDA"
        text: root.text
    }
}
