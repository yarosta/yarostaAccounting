import QtQuick 2.0

Item {
    id: root
    anchors.left: parent.left
    anchors.leftMargin: menuWidth
    anchors.top: parent.top
    width: parent.width - menuWidth
    height: parent.height

    Rectangle {
        id: background
        anchors.fill: parent
        color: "#ADC0D1"
    }

    Loader {
        id: contentLoader
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height
        width: parent.width
        source: {
            switch (applicationState) {
            case "noneSelected":
                return "";
            case "companySelected":
                return "companyContent.qml";
            case "contractorsSelected":
                return "contractorsContent.qml";
            case "eventsSelected":
                return "eventsContent.qml";
            case "documentsSelected":
                return "documentsContent.qml";
            case "paymentsSelected":
                return "paymentsContent.qml";
            case "accountingSelected":
                return "accountingContent.qml";
            }
        }
    }
}
