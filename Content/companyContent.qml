import QtQuick 2.0

Item {
    id: root

    property int contentHeight
    property int contentWidth

    signal setContentState(var contentState)

    Text {
        text: "companyContent"
    }
}
