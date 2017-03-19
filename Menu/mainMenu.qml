import QtQuick 2.0

Rectangle {
    id: root
    property int applicationState: parent.applicationState
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    width:230
    height:parent.height
    color: "#4A4A4A"    
    state: {
        switch (applicationState) {
        case 0:
            return "noneSelected";
        case 1:
            return "companySelected";
        case 2:
            return "contractorsSelected";
        case 3:
            return "eventsSelected";
        case 4:
            return "documentsSelected";
        case 5:
            return "paymentsSelected";
        case 6:
            return "accountingSelected";
        }
    }

    Column {
        anchors.top: parent.top
        width: parent.width
        height: parent.height
        anchors.margins: 8
        spacing: 8

            MenuItem {
                id: company
                iconSource: "../Assets/Icons/company.png"
                text: "Firma"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState(0);
                    } else {
                        setApplicationState(0);
                        setApplicationState(1);
                    }
                }
            }

            MenuItem {
                id: contractors
                iconSource: "../Assets/Icons/contractors.png"
                text: "Kontrahenci"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState(0);
                    } else {
                        setApplicationState(0);
                        setApplicationState(2);
                    }
                }
            }

            MenuItem {
                id: events
                iconSource: "../Assets/Icons/events.png"
                text: "Zdarzenia gosp."
                onClicked: {
                    if (state === "selected") {
                        setApplicationState(0);
                    } else {
                        setApplicationState(0);
                        setApplicationState(3);
                    }
                }
            }

            MenuItem {
                id: documents
                iconSource: "../Assets/Icons/documents.png"
                text: "Dokumenty"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState(0);
                    } else {
                        setApplicationState(0);
                        setApplicationState(4);
                    }
                }
            }

            MenuItem {
                id: payments
                iconSource: "../Assets/Icons/payments.png"
                text: "Płatności"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState(0);
                    } else {
                        setApplicationState(0);
                        setApplicationState(5);
                    }
                }
            }

            MenuItem {
                id: accounting
                iconSource: "../Assets/Icons/accounting.png"
                text: "Księgowość"
                onClicked: {
                    if (state === "selected") {
                        setApplicationState(0);
                    } else {
                        setApplicationState(0);
                        setApplicationState(6);
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
        },

        State {
            name: "eventsSelected"
            PropertyChanges {
                target: events
                state: "selected"
            }
        },

        State {
            name: "documentsSelected"
            PropertyChanges {
                target: documents
                state: "selected"
            }
        },

        State {
            name: "paymentsSelected"
            PropertyChanges {
                target: payments
                state: "selected"
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
}
