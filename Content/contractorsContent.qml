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
        }
        ContentButton {
            id: add
            text: "Dodaj .."
        }
    }
}
