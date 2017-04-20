#ifndef YAROSTAACCOUNTING_H
#define YAROSTAACCOUNTING_H

#include <QQuickItem>
#include <QPointer>

#include "contractorslistmodel.h"

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
    Q_PROPERTY(ContractorsState contractorsState READ contractorsState WRITE setContractorsState NOTIFY contractorsStateChanged)
    Q_PROPERTY(EventsState eventsState READ eventsState WRITE setEventsState NOTIFY eventsStateChanged)
    Q_PROPERTY(DocumentsState documentsState READ documentsState WRITE setDocumentsState NOTIFY documentsStateChanged)
    Q_PROPERTY(PaymentsState paymentsState READ paymentsState WRITE setPaymentsState NOTIFY paymentsStateChanged)

    Q_PROPERTY(QPointer<ContractorsListModel> contractorsList READ contractorsList NOTIFY contractorsListChanged)

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
        AllContractorsSelected = 0,
        TrustedSelected,
        BlackListedSelected
    };

    enum EventsState {
        AllEventsSelected = 0,
        SaleSelected,
        BuyingGoodsSelected,
        PaySelected,
        ExpensesSelected
    };

    enum DocumentsState {
        AllDocumentsSelected = 0,
        OutgoingSelected,
        IncomingSelected,
        InternalSelected
    };

    enum PaymentsState {
        AllPaymentsSelected = 0
    };

    yarostaAccounting(QQuickItem *parent = 0);
    ~yarostaAccounting();

    ApplicationState applicationState() const;
    ContractorsState contractorsState() const;
    EventsState eventsState() const;
    DocumentsState documentsState() const;
    PaymentsState paymentsState() const;

    QPointer<ContractorsListModel> contractorsList() const;

    Q_INVOKABLE void setApplicationState(ApplicationState applicationState);
    Q_INVOKABLE void setContractorsState(ContractorsState contractorsState);
    Q_INVOKABLE void setEventsState(EventsState eventsState);
    Q_INVOKABLE void setDocumentsState(DocumentsState documentsState);
    Q_INVOKABLE void setPaymentsState(PaymentsState paymentsState);

signals:
    void applicationStateChanged();
    void contractorsStateChanged();
    void eventsStateChanged();
    void documentsStateChanged();
    void paymentsStateChanged();

    void contractorsListChanged();

private:
    ApplicationState m_applicationState;
    ContractorsState m_contractorsState;
    EventsState m_eventsState;
    DocumentsState m_documentsState;
    PaymentsState m_paymentsState;

    QPointer<ContractorsListModel> m_contractorsListModel;
};

#endif // YAROSTAACCOUNTING_H
