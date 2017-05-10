import QtQuick 2.0
import ListViewRow 1.0

Item {
    id: root
    property bool changeHighlightStateAvailable: true
    state: "default"
    height: 27.5
    width: parent.width

    signal showExpandedRow
    signal highlightRow
    signal turnOffHighlight

    onShowExpandedRow: {
        if (root.state === "default") {
            root.state = "expanded";
            changeHighlightStateAvailable = false;
        } else if (root.state === "expanded") {
            root.state = "default";
            changeHighlightStateAvailable = true;
        }
    }

    onHighlightRow: {
        if (changeHighlightStateAvailable === true) {
            mainRow.highlightRow();
            expandedRow.highlightRow();
        }
    }

    onTurnOffHighlight: {
        if (changeHighlightStateAvailable === true) {
            mainRow.turnOffHighlight();
            expandedRow.turnOffHighlight();
        }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onEntered:
        {
            root.highlightRow();
        }

        onExited:
        {
            root.turnOffHighlight();
        }
    }

    Row {
        id: mainRow

        height: 27.5
        width: parent.width

        spacing: width * 0.01

        signal highlightRow
        signal turnOffHighlight

        onHighlightRow: {
            ordinals.state = "highlighted";
            name.state = "highlighted";
            address.state = "highlighted";
            show.state = "highlighted";
        }

        onTurnOffHighlight: {
            ordinals.state = "notHighlighted";
            name.state = "notHighlighted";
            address.state = "notHighlighted";
            show.state = "notHighlighted";
        }

        ContentListViewRowOrdinalElement {
            id: ordinals
            width: parent.width * 0.065
            text: index + 1 + "."
        }

        ContentListViewRowElement {
            id: name
            width: parent.width * 0.29
            text: model.name
        }

        ContentListViewRowElement {
            id: address
            width: parent.width * 0.35
            text: model.address
        }

        ContentListViewRowInteractiveElement {
            width: parent.width * 0.08
            text: ""
        }

        ContentListViewRowInteractiveElement {
            id: show
            width: parent.width * 0.08
            text: "pokaż"

            onClicked: root.showExpandedRow()
        }

        ContentListViewRowInteractiveElement {
            width: parent.width * 0.085
            text: "zmień"
        }
    }

    Row {
        id: expandedRow

        anchors.top: mainRow.bottom
        anchors.topMargin: 0

        anchors.left: root.left
        anchors.leftMargin: parent.width * 0.075

        height: 0
        width: parent.width

        spacing: width * 0.01

        visible: false

        signal highlightRow
        signal turnOffHighlight

        onHighlightRow: {
            phone.state = "highlighted";
            email.state = "highlighted";
        }

        onTurnOffHighlight: {
            phone.state = "notHighlighted";
            email.state = "notHighlighted";
        }

        ContentListViewRowElement {
            id: phone
            width: parent.width * 0.29
            text: "tel.: " + model.phone
        }

        ContentListViewRowElement {
            id: email
            width: parent.width * 0.35
            text: "e-mail: " + model.email
        }
    }

    states: [
        State {
            name: "expanded"
            PropertyChanges {
                target: root
                height: 57
            }
            PropertyChanges {
                target: expandedRow
                anchors.topMargin: 2
                height: 27.5
                visible: true
            }
            PropertyChanges {
                target: show
                state: "expanded"
            }
        }
    ]

    transitions: [
        Transition {
            from: "default"
            to: "expanded"
            SequentialAnimation {
                ParallelAnimation {
                    PropertyAnimation {
                        target: root
                        property: "height"
                        duration: 160
                    }
                    PropertyAnimation {
                        target: expandedRow
                        property: "anchors.topMargin"
                        duration: 160
                    }
                    PropertyAnimation {
                        target: expandedRow
                        property: "height"
                        duration: 160
                    }
                }

                PropertyAnimation {
                    target: expandedRow
                    property: "visible"
                    duration: 100
                }
            }
        },

        Transition {
            from: "expanded"
            to: "default"
            SequentialAnimation {
                PropertyAnimation {
                    target: expandedRow
                    property: "visible"
                    duration: 160
                }
                ParallelAnimation {
                    PropertyAnimation {
                        target: root
                        property: "height"
                        duration: 160
                    }
                    PropertyAnimation {
                        target: expandedRow
                        property: "anchors.topMargin"
                        duration: 160
                    }
                    PropertyAnimation {
                        target: expandedRow
                        property: "height"
                        duration: 160
                    }
                }
            }
        }
    ]
}
