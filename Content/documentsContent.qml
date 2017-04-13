import QtQuick 2.0

Item {
    id: root

    property int contentHeight
    property int contentWidth

    signal setContentState(var contentState)

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
            text: "Wszystkie"
            onClicked: setContentState("allDocumentsSelected")
        }
        RowOfContentsSpecificButtons {
            ContentButton {
                id: outgoing
                text: "Wychodzące"
                onClicked: setContentState("outgoingSelected")
            }
            ContentButton {
                id: incoming
                text: "Przychodzące"
                onClicked: setContentState("incomingSelected")
            }
            ContentButton {
                id: internal
                text: "Wewnętrzne"
                onClicked: setContentState("internalSelected")
            }
        }
        ContentButton {
            id: add
            text: "Dodaj ..."
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
