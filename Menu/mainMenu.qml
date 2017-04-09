import QtQuick 2.0

Rectangle {
    id: root
    anchors.left: parent.left
    anchors.top: parent.top
    width:230
    height:parent.height
    color: "#4A4A4A"

    signal setApplicationState(var appState)

    Column {
        id: column
        anchors.top: parent.top
        width: parent.width
        height: parent.height
        anchors.margins: 8
        spacing: 8

        readonly property int anchorsMarginsExpanded: 124

        //TODO !!! correct states, describe all states don't invoke all the time noneSelected

            MenuItem {
                id: company
                iconSource: "../Assets/Icons/company.png"
                text: "Firma"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState("noneSelected");
                    } else {
                        setApplicationState("noneSelected");
                        setApplicationState("companySelected");
                    }
                }
            }

            MenuItem {
                id: contractors
                iconSource: "../Assets/Icons/contractors.png"
                text: "Kontrahenci"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState("noneSelected");
                    } else {
                        setApplicationState("noneSelected");
                        setApplicationState("contractorsSelected");
                    }
                }
            }

            MenuItem {
                id: events
                iconSource: "../Assets/Icons/events.png"
                text: "Zdarzenia gosp."
                onClicked: {
                    if (state === "selected") {
                        setApplicationState("noneSelected");
                    } else {
                        setApplicationState("noneSelected");
                        setApplicationState("eventsSelected");
                    }
                }
            }

            MenuItem {
                id: documents
                iconSource: "../Assets/Icons/documents.png"
                text: "Dokumenty"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState("noneSelected");
                    } else {
                        setApplicationState("noneSelected");
                        setApplicationState("documentsSelected");
                    }
                }
            }

            MenuItem {
                id: payments
                iconSource: "../Assets/Icons/payments.png"
                text: "Płatności"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState("noneSelected");
                    } else {
                        setApplicationState("noneSelected");
                        setApplicationState("paymentsSelected");
                    }
                }
            }

            MenuItem {
                id: accounting
                iconSource: "../Assets/Icons/accounting.png"
                text: "Księgowość"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState("noneSelected");
                    } else {
                        setApplicationState("noneSelected");
                        setApplicationState("accountingSelected");
                    }
                }
            }
    }

    states: [
        State {
            name: "noneSelected"
            PropertyChanges {
                target: company
                state: "notSelected"
            }
            PropertyChanges {
                target: contractors
                state: "notSelected"
            }
            PropertyChanges {
                target: events
                state: "notSelected"
            }
            PropertyChanges {
                target: documents
                state: "notSelected"
            }
            PropertyChanges {
                target: payments
                state: "notSelected"
            }
            PropertyChanges {
                target: accounting
                state: "notSelected"
            }
        },

        State {
            name: "companySelected"
            PropertyChanges {
                target: company
                state: "selected"
            }
        },

        State {
            name: "contractorsSelected"
            PropertyChanges {
                target: contractors
                state: "selected"
            }
            PropertyChanges {
                target: column
                anchors.margins: anchorsMarginsExpanded
            }
        },

        State {
            name: "eventsSelected"
            PropertyChanges {
                target: events
                state: "selected"
            }
            PropertyChanges {
                target: column
                anchors.margins: anchorsMarginsExpanded
            }
        },

        State {
            name: "documentsSelected"
            PropertyChanges {
                target: documents
                state: "selected"
            }
            PropertyChanges {
                target: column
                anchors.margins: anchorsMarginsExpanded
            }
        },

        State {
            name: "paymentsSelected"
            PropertyChanges {
                target: payments
                state: "selected"
            }
            PropertyChanges {
                target: column
                anchors.margins: anchorsMarginsExpanded
            }
        },

        State {
            name: "accountingSelected"
            PropertyChanges {
                target: accounting
                state: "selected"
            }
        }
    ]

    transitions: [
        Transition {
            PropertyAnimation {
                target: column
                properties: "anchors.margins"
                duration: 160
            }
        }

    ]
}
