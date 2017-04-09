import QtQuick 2.0

Item {
    id: root

    ContentView {
        id: contentView
        viewTitle: "Płatności"
        //Wszyscy
        //Dodaj kontrahenta
    }
    RowOfContentsButtons {
        ContentButton {
            id: all
            text: "Wszystkie .."
            onClicked: setPaymentsContentState("allPaymentsSelected")
        }
        ContentButton {
            id: add
            text: "Dodaj .."
        }
    }

    states: [
        State {
            name: "allPaymentsSelected"
            PropertyChanges {
                target: all
                state: "selected"
            }
        }
    ]
}
