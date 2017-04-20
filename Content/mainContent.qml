import QtQuick 2.0

Item {
    id: root

    property var contractorsList

    property string contractorsContentState
    property string eventsContentState
    property string documentsContentState
    property string paymentsContentState

    signal setContractorsContentState(var contractorsState)
    signal setEventsContentState(var eventsState)
    signal setDocumentsContentState(var documentsState)
    signal setPaymentsContentState(var paymentsState)

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

        property var contentListModel

        property string contentState
        property int contentHeight: root.height
        property int contentWidth: root.width

        signal setContentState(var contentState)

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height
        width: parent.width
        opacity: 1

        onLoaded: {
            contentModelListBinder.target = contentLoader.item;
            contentLoaderBinder.target = contentLoader.item;         
            contentHeightBinder.target = contentLoader.item;
            contentWidthBinder.target = contentLoader.item;
            contentLoader.item.setContentState.connect(setContentState)
        }

        onSetContentState: {
            switch (root.state) {
            case "noneSelected":
                break;
            case "companySelected":
                break;
            case "contractorsSelected":
                setContractorsContentState(contentState);
                break;
            case "eventsSelected":
                setEventsContentState(contentState);
                break;
            case "documentsSelected":
                setDocumentsContentState(contentState);
                break;
            case "paymentsSelected":
                setPaymentsContentState(contentState);
                break;
            case "accountingSelected":
                break;
            default:
                break;
            }
        }
    }


    Binding {
        id: contentModelListBinder

        property: "modelList"
        value: contentLoader.contentListModel
    }

    Binding {
        id: contentLoaderBinder

        property: "state"
        value: contentLoader.contentState
    }

    Binding {
        id: contentHeightBinder

        property: "height"
        value: contentLoader.contentHeight
    }

    Binding {
        id: contentWidthBinder

        property: "width"
        value: contentLoader.contentWidth
    }

    states: [
        State {
            name: "noneSelected"
            PropertyChanges {
                target: contentLoader
                contentListModel: null
                contentState: ""
                source: ""
            }
        },

        State {
            name: "companySelected"
            PropertyChanges {
                target: contentLoader
                contentListModel: null
                contentState: ""
                source: "companyContent.qml"
            }
        },

        State {
            name: "contractorsSelected"
            PropertyChanges {
                target: contentLoader
                contentListModel: root.contractorsList
                contentState: root.contractorsContentState
                source: "contractorsContent.qml"
            }
        },

        State {
            name: "eventsSelected"
            PropertyChanges {
                target: contentLoader
                contentListModel: null
                contentState: root.eventsContentState
                source: "eventsContent.qml"
            }
        },

        State {
            name: "documentsSelected"
            PropertyChanges {
                target: contentLoader
                contentListModel: null
                contentState: root.documentsContentState
                source: "documentsContent.qml"
            }
        },

        State {
            name: "paymentsSelected"
            PropertyChanges {
                target: contentLoader
                contentListModel: null
                contentState: root.paymentsContentState
                source: "paymentsContent.qml"
            }
        },

        State {
            name: "accountingSelected"
            PropertyChanges {
                target: contentLoader
                contentListModel: null
                contentState: ""
                source: "accountingContent.qml"
            }
        }
    ]

    transitions: [
        Transition {
            PropertyAnimation {
                target: contentLoader
                properties: "source"
                duration: 160
            }
            PropertyAnimation {
                target: contentLoader
                properties: "contentListModel"
                duration: 160
            }
        }
    ]
}
