import QtQuick 2.0

Item {
    id: root

    property int contentHeight
    property int contentWidth

    signal setContentState(var contentState)

    ContentView {
        id: contentView
        viewTitle: "Kontrahenci"
    }

    RowOfContentsButtons {
        ContentButton {
            id: all
            text: "Wszyscy"
            onClicked: setContentState("allContractorsSelected")
        }
        RowOfContentsSpecificButtons {
            ContentButton {
                id: trusted
                text: "Zaufani"
                onClicked: setContentState("trustedSelected")
            }
            ContentButton {
                id: blackListed
                text: "Czarna lista"
                onClicked: setContentState("blackListedSelected")
            }
        }
        ContentButton {
            id: add
            text: "Dodaj ..."
        }
    }

    ListView {

        anchors.top: contentView.bottom
        anchors.topMargin: (contentHeight - contentView.height) * 0.05
        anchors.right: contentView.right
        anchors.rightMargin: contentWidth * 0.05

        height: (contentHeight - contentView.height) * 0.9
        width: contentWidth * 0.9

    }

    states: [
        State {
            name: "allContractorsSelected"
            PropertyChanges {
                target: all
                state: "selected"
            }
            PropertyChanges {
                target: trusted
                state: "notSelected"
            }
            PropertyChanges {
                target: blackListed
                state: "notSelected"
            }
        },

        State {
            name: "trustedSelected"
            PropertyChanges {
                target: all
                state: "notSelected"
            }
            PropertyChanges {
                target: trusted
                state: "selected"
            }
            PropertyChanges {
                target: blackListed
                state: "notSelected"
            }
        },

        State {
            name: "blackListedSelected"
            PropertyChanges {
                target: all
                state: "notSelected"
            }
            PropertyChanges {
                target: trusted
                state: "notSelected"
            }
            PropertyChanges {
                target: blackListed
                state: "selected"
            }
        }
    ]
}
