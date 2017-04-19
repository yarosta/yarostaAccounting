import QtQuick 2.0

Rectangle {
    id: root
    property alias text: label.text
    property alias iconSource: icon.source
    state: "notSelected"
    signal clicked
    anchors.horizontalCenter: parent.horizontalCenter
    width: parent.width - 6
    height: 56
    color: "#1D81D8"
    radius: 6

    Image {
        id: icon
        anchors.verticalCenter: parent.verticalCenter
        x: parent.x + parent.width*0.5
        fillMode: Image.PreserveAspectCrop
        scale: 0.45
    }

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
                cursorShape = Qt.PointingHandCursor
            } else if (root.state === "selected") {
                cursorShape = Qt.OpenHandCursor
            }
        }
    }

    states: [

        State {
            name: "selected"
            PropertyChanges {
                target: root
                height: 116
                color: "#FFA415"
            }
            PropertyChanges {
                target: icon
                scale: 0.9
                x: parent.x + parent.width*0.25
            }
            PropertyChanges {
                target: label
                text: ""
            }
            PropertyChanges {
                target: mouseArea
                cursorShape: Qt.OpenHandCursor
            }
        }
    ]

    transitions: [
        Transition {
            from: "notSelected"
            to: "selected"

            PropertyAnimation {
                target: root
                properties: "height"
                duration: 100
            }

            ColorAnimation {
                target: root
                properties: "color"
                duration: 100
            }

            PropertyAnimation {
                target: icon
                properties: "scale"
                duration: 160
            }

            PropertyAnimation {
                target: icon
                properties: "x"
                duration: 160
            }

            PropertyAnimation {
                target: label
                properties: "text"
                duration: 160
            }

        },

        Transition {
            from: "selected"
            to: "notSelected"

            PropertyAnimation {
                target: root
                properties: "height"
                duration: 160
            }

            ColorAnimation {
                target: root
                properties: "color"
                duration: 160
            }

            PropertyAnimation {
                target: icon
                properties: "scale"
                duration: 100
            }

            PropertyAnimation {
                target: icon
                properties: "x"
                duration: 100
            }

            PropertyAnimation {
                target: label
                properties: "text"
                duration: 100
            }
        }

    ]
}
