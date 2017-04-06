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
                text: "Wychodzące"
            }
            ContentButton {
                text: "Przychodzące"
            }
            ContentButton {
                text: "Wewnętrzne"
            }
        }
        ContentButton {
            id: add
            text: "Dodaj .."
        }
    }
}
