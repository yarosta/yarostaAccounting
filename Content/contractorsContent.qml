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
