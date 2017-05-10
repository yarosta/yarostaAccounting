import QtQuick 2.5

Item {
    id: root

    property var modelList

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
        id: listView

        anchors.top: contentView.bottom
        anchors.topMargin: (root.height - contentView.height) * 0.05
        anchors.right: contentView.right
        anchors.rightMargin: root.width * 0.05

        height: (root.height - contentView.height * 1.485) * 0.9
        width: root.width * 0.9

        clip: true

        model: modelList

        header: contractorsHeader
        headerPositioning: ListView.OverlayHeader

        delegate: contractorsDelegate

        footer: contractorsFooter
        footerPositioning: ListView.OverlayFooter

        spacing: 2

        boundsBehavior: Flickable.StopAtBounds
        snapMode: ListView.SnapToItem
    }

    Component {
        id: contractorsHeader
        ContractorsListViewHeader {
        }
    }

    Component {
        id: contractorsDelegate
        ContractorsListViewRow {
        }
    }

    Component {
        id: contractorsFooter
        ContractorsListViewFooter {
        }
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
