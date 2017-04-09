import QtQuick 2.0

Item {
    id: root

    property string contractorsContentState
    property string eventsContentState
    property string documentsContentState
    property string paymentsContentState

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

        property string contentState

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height
        width: parent.width
        opacity: 1

        onLoaded: {
            contentLoaderBinder.target = contentLoader.item
        }
    }

    Binding {
        id: contentLoaderBinder

        property: "state"
        value: contentLoader.contentState
    }

    states: [
        State {
            name: "noneSelected"
            PropertyChanges {
                target: contentLoader
                contentState: ""
                source: ""
            }
        },

        State {
            name: "companySelected"
            PropertyChanges {
                target: contentLoader
                contentState: ""
                source: "companyContent.qml"
            }
        },

        State {
            name: "contractorsSelected"
            PropertyChanges {
                target: contentLoader
                contentState: root.contractorsContentState
                source: "contractorsContent.qml"
            }
        },

        State {
            name: "eventsSelected"
            PropertyChanges {
                target: contentLoader
                contentState: root.eventsContentState
                source: "eventsContent.qml"
            }
        },

        State {
            name: "documentsSelected"
            PropertyChanges {
                target: contentLoader
                contentState: root.documentsContentState
                source: "documentsContent.qml"
            }
        },

        State {
            name: "paymentsSelected"
            PropertyChanges {
                target: contentLoader
                source: "paymentsContent.qml"
                contentState: root.paymentsContentState
            }
        },

        State {
            name: "accountingSelected"
            PropertyChanges {
                target: contentLoader
                contentState: ""
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
