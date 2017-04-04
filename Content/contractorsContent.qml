import QtQuick 2.0

Item {
    id: root

    ContentView {
        id: contentView
        viewTitle: "Kontrahenci"
        //Wszyscy
        //Dodaj kontrahenta
    }
    Row {
        anchors.bottom: contentView.bottom
        anchors.horizontalCenter: contentView.horizontalCenter
        width: contentView.width - 16
        height: 36
        anchors.margins: 4
        spacing: 30
        ContentItem {
            id: all
            text: "Wszyscy .."
        }
        ContentItem {
            id: add
            text: "Dodaj .."
        }
    }
}
