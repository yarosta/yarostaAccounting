import QtQuick 2.0

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
        width: parent.width * 0.37
        text: address
    }

    ContentListViewRowInteractiveElement {
        width: parent.width * 0.06
        text: ""
    }

    ContentListViewRowInteractiveElement {
        width: parent.width * 0.08
        text: "zmień"
    }

    ContentListViewRowInteractiveElement {
        width: parent.width * 0.085
        text: "usuń"
    }
}
