import QtQuick 2.0

Item {
    id: root

    ContentView {
        id: contentView
        viewTitle: "Dokumenty"
        //wszystkie
        //wychodzace
        //przychodzace
        //wewnetrzne
    }
    RowOfContentsButtons {
        ContentButton {
            id: all
            text: "Wszystkie .."
        }
        RowOfContentsSpecificButtons {
            ContentButton {
                id: outgoing
                text: "Wychodzące"
            }
            ContentButton {
                id: incoming
                text: "Przychodzące"
            }
            ContentButton {
                id: internal
                text: "Wewnętrzne"
            }
        }
        ContentButton {
            id: add
            text: "Dodaj .."
        }
    }

    states: [
        State {
            name: "allDocumentsSelected"
            PropertyChanges {
                target: all
                state: "selected"
            }
            PropertyChanges {
                target: outgoing
                state: "notSelected"
            }
            PropertyChanges {
                target: incoming
                state: "notSelected"
            }
            PropertyChanges {
                target: internal
                state: "notSelected"
            }
        },

        State {
            name: "outgoingSelected"
            PropertyChanges {
                target: all
                state: "notSelected"
            }
            PropertyChanges {
                target: outgoing
                state: "selected"
            }
            PropertyChanges {
                target: incoming
                state: "notSelected"
            }
            PropertyChanges {
                target: internal
                state: "notSelected"
            }
        },

        State {
            name: "incomingSelected"
            PropertyChanges {
                target: all
                state: "notSelected"
            }
            PropertyChanges {
                target: outgoing
                state: "notSelected"
            }
            PropertyChanges {
                target: incoming
                state: "selected"
            }
            PropertyChanges {
                target: internal
                state: "notSelected"
            }
        },

        State {
            name: "internalSelected"
            PropertyChanges {
                target: all
                state: "notSelected"
            }
            PropertyChanges {
                target: outgoing
                state: "notSelected"
            }
            PropertyChanges {
                target: incoming
                state: "notSelected"
            }
            PropertyChanges {
                target: internal
                state: "selected"
            }
        }
    ]
}
