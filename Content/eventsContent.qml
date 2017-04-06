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
                text: "Sprzedaż"
            }
            ContentButton {
                text: "Zakup towarów"
            }
            ContentButton {
                text: "Wynagrodzenia"
            }
            ContentButton {
                text: "Wydatki"
            }
        }
        ContentButton {
            id: add
            text: "Dodaj .."
        }
    }
}
