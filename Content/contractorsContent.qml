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

    ListModel {
        id: contractorsModel

        ListElement {name: "Firma krzak sp. z o.o."; address: "22-100 Chełm, ul. Wojsławicka 22/4"}
        ListElement {name: "Piramida development sp. z o.o."; address: "58-213 Warszawa, Al. Jerozolimskie 132B"}
        ListElement {name: "Consult with us your whole life"; address: "18-432 Borusłowice, ul. Krzątaczy 12/12"}
        ListElement {name: "Your medic"; address: "45-710 Sanok, ul. Płomienna 12/6"}
    }

    ListView {
        id: listView

        anchors.top: contentView.bottom
        anchors.topMargin: (root.height - contentView.height) * 0.05
        anchors.right: contentView.right
        anchors.rightMargin: root.width * 0.05

        height: (root.height - contentView.height) * 0.9
        width: root.width * 0.9

        model: contractorsModel
        delegate: contractorsDelegate

        spacing: 6
    }

    Component {
        id: contractorsDelegate
        ContractorsListViewRow {

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
