import QtQuick 2.0

Rectangle {
    id: root
    property string text
    state: "notHighlighted"
    height: parent.height
    radius: 3.75
    color: "#BECDDA"

    Text {
        id: label
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 12
        font.family: "Ubuntu"
        font.pixelSize: 12
        color: "#374D61"
        text: root.text
    }

    states: [
        State {
            name: "highlighted"
            PropertyChanges {
                target: root
                color: "white"
            }
            PropertyChanges {
                target: label
                color: "black"
            }
        }
    ]

    transitions :[
        Transition {
            from: "notHighlighted"
            to: "highlighted"
            ColorAnimation {
                target: root
                property: "color"
                duration: 100
            }
            ColorAnimation {
                target: label
                property: "color"
                duration: 100
            }
        },

        Transition {
            from: "highlighted"
            to: "notHighlighted"
            ColorAnimation {
                target: root
                property: "color"
                duration: 160
            }
            ColorAnimation {
                target: label
                property: "color"
                duration: 160
            }
        }
    ]
}
