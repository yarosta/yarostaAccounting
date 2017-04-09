import QtQuick 2.0

Item {
    id: root

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
            text: "Wszystkie .."
        }
        RowOfContentsSpecificButtons {
            ContentButton {
                id: sale
                text: "Sprzedaż"
            }
            ContentButton {
                id: buyingGoods
                text: "Zakup towarów"
            }
            ContentButton {
                id: payments
                text: "Wynagrodzenia"
            }
            ContentButton {
                id: expenses
                text: "Wydatki"
            }
        }
        ContentButton {
            id: add
            text: "Dodaj .."
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
                target: payments
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
                target: payments
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
                target: payments
                state: "notSelected"
            }
            PropertyChanges {
                target: expenses
                state: "notSelected"
            }
        },

        State {
            name: "paymentsSelected"
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
                target: payments
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
                target: payments
                state: "notSelected"
            }
            PropertyChanges {
                target: expenses
                state: "selected"
            }
        }
    ]
}
