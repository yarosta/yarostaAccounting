import QtQuick 2.0

Rectangle {
    id: root
    property string text
    state: "notHighlighted"
    height: parent.height
    radius: 3.75
    color: "#BECDDA"

    signal clicked

    Text {
        id: label
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: "Ubuntu"
        font.pixelSize: 12
        color: "#374D61"
        text: root.text
    }

    MouseArea {
        anchors.fill: root
        onClicked: {
            root.clicked()
        }
    }

    states: [
        State {
            name: "highlighted"
            PropertyChanges {
                target: root
                color: "#1D81D8"
            }
            PropertyChanges {
                target: label
                color: "white"
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
