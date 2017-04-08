#ifndef YAROSTAACCOUNTING_H
#define YAROSTAACCOUNTING_H

#include <QQuickItem>

class yarostaAccounting : public QQuickItem
{
    Q_OBJECT
    Q_DISABLE_COPY(yarostaAccounting)

    Q_ENUMS(ApplicationState)
    Q_ENUMS(ContractorsState)
    Q_ENUMS(EventsState)
    Q_ENUMS(DocumentsState)
    Q_ENUMS(PaymentsState)

    Q_PROPERTY(ApplicationState applicationState READ applicationState WRITE setApplicationState NOTIFY applicationStateChanged)

public:

    enum ApplicationState {
        NoneSelected = 0,
        CompanySelected,
        ContractorsSelected,
        EventsSelected,
        DocumentsSelected,
        PaymentsSelected,
        AccountingSelected
     };

    enum ContractorsState {
        AllContractorsSelected = 0
    };

    enum EventsState {
        AllEventsSelected = 0,
        SaleSelected,
        BuyingGoodsSelected,
        PaySelected,
        ExpensesSelected
    };

    enum DocumentsState {
        AllDocumentsSeleceted = 0,
        OutgoingSelected,
        IncomingSelected,
        InternalSelected
    };

    enum PaymentsState {
        AllPaymentsSelected = 0
    };

    yarostaAccounting(QQuickItem *parent = 0);
    ~yarostaAccounting();

    Q_INVOKABLE void setApplicationState(ApplicationState applicationState);
    ApplicationState applicationState();

signals:
    void applicationStateChanged();

private:
    ApplicationState m_applicationState;
};

#endif // YAROSTAACCOUNTING_H
