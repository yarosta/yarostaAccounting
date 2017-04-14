import QtQuick 2.0

Item {
    id: root

    signal setContentState(var contentState)

    ContentView {
        id: contentView
        viewTitle: "Zdarzenia gospodarcze"
        //wszystkie
        //sprzedaż
        //zakup towarów
        //wynagrodzenia
        //wydatki
        //ubezpieczenia społeczne
        //podatek dochodowy
    }
    RowOfContentsButtons {
        ContentButton {
            id: all
            text: "Wszystkie"
            onClicked: setContentState("allEventsSelected")
        }
        RowOfContentsSpecificButtons {
            ContentButton {
                id: sale
                text: "Sprzedaż"
                onClicked: setContentState("saleSelected")
            }
            ContentButton {
                id: buyingGoods
                text: "Zakup towarów"
                onClicked: setContentState("buyingGoodsSelected")
            }
            ContentButton {
                id: pay
                text: "Wynagrodzenia"
                onClicked: setContentState("paySelected")
            }
            ContentButton {
                id: expenses
                text: "Wydatki"
                onClicked: setContentState("expensesSelected")
            }
        }
        ContentButton {
            id: add
            text: "Dodaj ..."
        }
    }

    states: [
        State {
            name: "allEventsSelected"
            PropertyChanges {
                target: all
                state: "selected"
            }
            PropertyChanges {
                target: sale
                state: "notSelected"
            }
            PropertyChanges {
                target: buyingGoods
                state: "notSelected"
            }
            PropertyChanges {
                target: pay
                state: "notSelected"
            }
            PropertyChanges {
                target: expenses
                state: "notSelected"
            }
        },

        State {
            name: "saleSelected"
            PropertyChanges {
                target: all
                state: "notSelected"
            }
            PropertyChanges {
                target: sale
                state: "selected"
            }
            PropertyChanges {
                target: buyingGoods
                state: "notSelected"
            }
            PropertyChanges {
                target: pay
                state: "notSelected"
            }
            PropertyChanges {
                target: expenses
                state: "notSelected"
            }
        },

        State {
            name: "buyingGoodsSelected"
            PropertyChanges {
                target: all
                state: "notSelected"
            }
            PropertyChanges {
                target: sale
                state: "notSelected"
            }
            PropertyChanges {
                target: buyingGoods
                state: "selected"
            }
            PropertyChanges {
                target: pay
                state: "notSelected"
            }
            PropertyChanges {
                target: expenses
                state: "notSelected"
            }
        },

        State {
            name: "paySelected"
            PropertyChanges {
                target: all
                state: "notSelected"
            }
            PropertyChanges {
                target: sale
                state: "notSelected"
            }
            PropertyChanges {
                target: buyingGoods
                state: "notSelected"
            }
            PropertyChanges {
                target: pay
                state: "selected"
            }
            PropertyChanges {
                target: expenses
                state: "notSelected"
            }
        },

        State {
            name: "expensesSelected"
            PropertyChanges {
                target: all
                state: "notSelected"
            }
            PropertyChanges {
                target: sale
                state: "notSelected"
            }
            PropertyChanges {
                target: buyingGoods
                state: "notSelected"
            }
            PropertyChanges {
                target: pay
                state: "notSelected"
            }
            PropertyChanges {
                target: expenses
                state: "selected"
            }
        }
    ]
}
