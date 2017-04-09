import QtQuick 2.0
import Backend 1.0

Item {
    Backend {
        id: backend
    }
    property string applicationState: {
        switch (backend.applicationState) {
        case Backend.NoneSelected:
            return "noneSelected";
        case Backend.CompanySelected:
            return "companySelected";
        case Backend.ContractorsSelected:
            return "contractorsSelected";
        case Backend.EventsSelected:
            return "eventsSelected";
        case Backend.DocumentsSelected:
            return "documentsSelected";
        case Backend.PaymentsSelected:
            return "paymentsSelected";
        case Backend.AccountingSelected:
            return "accountingSelected";
        default:
            return "noneSelected";
        }
    }

    property string contractorsContentState: {
        switch (backend.contractorsState) {
        case Backend.AllContractorsSelected:
            return "allContractorsSelected";
        default:
            return "allContractorsSelected";
        }
    }

    property string eventsContentState: {
        switch (backend.eventsState) {
        case Backend.AllEventsSelected:
            return "allEventsSelected";
        case Backend.SaleSelected:
            return "saleSelected";
        case Backend.BuyingGoodsSelected:
            return "buyingGoodsSelected";
        case Backend.PaySelected:
            return "paySelected";
        case Backend.ExpensesSelected:
            return "expensesSelected";
        default:
            return "allEventsSelected";
        }
    }

    property string documentsContentState: {
        switch (backend.documentsState) {
        case Backend.AllDocumentsSelected:
            return "allDocumentsSelected";
        case Backend.OutgoingSelected:
            return "outgoingSelected";
        case Backend.IncomingSelected:
            return "incomingSelected";
        case Backend.InternalSelected:
            return "internalSelected";
        default:
            return "allDocumentsSelected";
        }
    }

    property string paymentsContentState: {
        switch (backend.paymentsState) {
        case Backend.AllPaymentsSelected:
            return "allPaymentsSelected";
        default:
            return "allPaymentsSelected";
        }
    }

    function changeApplicationState(appState) {
        var applicationState;
        switch (appState) {
        case "noneSelected":
            applicationState = Backend.NoneSelected;
            break;
        case "companySelected":
            applicationState = Backend.CompanySelected;
            break;
        case "contractorsSelected":
            applicationState = Backend.ContractorsSelected;
            break;
        case "eventsSelected":
            applicationState = Backend.EventsSelected;
            break;
        case "documentsSelected":
            applicationState = Backend.DocumentsSelected;
            break;
        case "paymentsSelected":
            applicationState = Backend.PaymentsSelected;
            break;
        case "accountingSelected":
            applicationState = Backend.AccountingSelected;
            break;
        default:
            applicationState = Backend.NoneSelected;
        }
        backend.setApplicationState(applicationState);
    }
}
