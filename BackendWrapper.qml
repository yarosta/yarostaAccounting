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
