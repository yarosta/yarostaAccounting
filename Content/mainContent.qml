import QtQuick 2.0

Item {
    id: root
    anchors.left: parent.left
    anchors.leftMargin: menuWidth
    anchors.top: parent.top
    width: parent.width - menuWidth
    height: parent.height

    Rectangle {
        id: background
        anchors.fill: parent
        color: "#ADC0D1"
    }

    Loader {
        id: contentLoader
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height
        width: parent.width
        opacity: 1
    }

    states: [
        State {
            name: "noneSelected"
            PropertyChanges {
                target: contentLoader
                source: ""
            }
        },

        State {
            name: "companySelected"
            PropertyChanges {
                target: contentLoader
                source: "companyContent.qml"
            }
        },

        State {
            name: "contractorsSelected"
            PropertyChanges {
                target: contentLoader
                source: "contractorsContent.qml"
            }
        },

        State {
            name: "eventsSelected"
            PropertyChanges {
                target: contentLoader
                source: "eventsContent.qml"
            }
        },

        State {
            name: "documentsSelected"
            PropertyChanges {
                target: contentLoader
                source: "documentsContent.qml"
            }
        },

        State {
            name: "paymentsSelected"
            PropertyChanges {
                target: contentLoader
                source: "paymentsContent.qml"
            }
        },

        State {
            name: "accountingSelected"
            PropertyChanges {
                target: contentLoader
                source: "accountingContent.qml"
            }
        }
    ]

    transitions: [
        Transition {
            PropertyAnimation {
                target: contentLoader
                properties: "source"
                duration: 160
            }
        }
    ]
}
