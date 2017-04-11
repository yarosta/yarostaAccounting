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
        case Backend.TrustedSelected:
            return "trustedSelected";
        case Backend.BlackListedSelected:
            return "blackListedSelected";
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

    function changeContractorsContentState(contractorsState) {
        var contractorsContentState;
        switch (contractorsState) {
        case "allContractorsSelected":
            contractorsContentState = Backend.AllContractorsSelected;
            break;
        case "trustedSelected":
            contractorsContentState = Backend.TrustedSelected;
            break;
        case "blackListedSelected":
            contractorsContentState = Backend.BlackListedSelected;
            break;
        }
        backend.setContractorsState(contractorsContentState);
    }

    function changeEventsContentState(eventsState) {
        var eventsContentState;
        switch (eventsState) {
        case "allEventsSelected":
            eventsContentState = Backend.AllEventsSelected;
            break;
        case "saleSelected":
            eventsContentState = Backend.SaleSelected;
            break;
        case "buyingGoodsSelected":
            eventsContentState = Backend.BuyingGoodsSelected;
            break;
        case "paySelected":
            eventsContentState = Backend.PaySelected;
            break;
        case "expensesSelected":
            eventsContentState = Backend.ExpensesSelected;
            break;
        }
        backend.setEventsState(eventsContentState);
    }

    function changeDocumentsContentState(documentsState) {
        var documentsContentState;
        switch (documentsState) {
        case "allDocumentsSelected":
            documentsContentState = Backend.AllDocumentsSelected;
            break;
        case "outgoingSelected":
            documentsContentState = Backend.OutgoingSelected;
            break;
        case "incomingSelected":
            documentsContentState = Backend.IncomingSelected;
            break;
        case "internalSelected":
            documentsContentState = Backend.InternalSelected;
            break;
        }
        backend.setDocumentsState(documentsContentState);
    }

    function changePaymentsContentState(paymentsState) {
        var paymentsContentState;
        switch (paymentsState) {
        case "allPaymentsSelected":
            paymentsContentState = Backend.AllPaymentsSelected;
            break;
        }
        backend.setPaymentsState(paymentsContentState);
    }
}
