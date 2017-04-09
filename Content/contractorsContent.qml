import QtQuick 2.0

Item {
    id: root

    ContentView {
        id: contentView
        viewTitle: "Kontrahenci"
    }
    RowOfContentsButtons {
        ContentButton {
            id: all
            text: "Wszyscy .."
            onClicked: setContractorsContentState("allContractorsSelected")
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
        }
    ]
}
