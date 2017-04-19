import QtQuick 2.0
import ListViewRow 1.0

Row {
    id: root

    height: 22.5
    width: parent.width

    spacing: width * 0.01

    ContentListViewRowOrdinalElement {
        width: parent.width * 0.065
        text: index + 1 + "."
    }

    ContentListViewRowElement {
        width: parent.width * 0.29
        text: name
    }

    ContentListViewRowElement {
        width: parent.width * 0.35
        text: address
    }

    ContentListViewRowInteractiveElement {
        width: parent.width * 0.08
        text: ""
    }

    ContentListViewRowInteractiveElement {
        width: parent.width * 0.08
        text: "pokaż"
    }

    ContentListViewRowInteractiveElement {
        width: parent.width * 0.085
        text: "zmień"
    }
}
