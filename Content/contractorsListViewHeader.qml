import QtQuick 2.0
import ListViewHeader 1.0

Item {
    id: root
    height: 28.5
    width: parent.width

    Row {
        id: rowOfElements

        anchors.top: root.top

        height: 22.5
        width: parent.width

        spacing: width * 0.01

        ContentListViewHeaderOrdinalElement {
            width: parent.width * 0.065
            text: "L.p."
        }

        ContentListViewHeaderElement {
            width: parent.width * 0.29
            text: "Nazwa :"
        }

        ContentListViewHeaderElement {
            width: parent.width * 0.35
            text: "Adres :"
        }

        ContentListViewHeaderInteractiveElement {
            width: parent.width * 0.08
            text: ""
        }

        ContentListViewHeaderInteractiveElement {
            width: parent.width * 0.08
            text: "zmień"
        }

        ContentListViewHeaderInteractiveElement {
            width: parent.width * 0.085
            text: "usuń"
        }
    }
}
