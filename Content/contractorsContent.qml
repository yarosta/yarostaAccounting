import QtQuick 2.0

Item {
    id: root

    signal setContentState(var contentState)

    ContentView {
        id: contentView
        viewTitle: "Kontrahenci"
    }
    RowOfContentsButtons {
        ContentButton {
            id: all
            text: "Wszyscy .."
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
            text: "Dodaj .."
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
