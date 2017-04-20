#include "yarostaaccounting.h"

yarostaAccounting::yarostaAccounting(QQuickItem *parent):
    QQuickItem(parent),
    m_applicationState(NoneSelected),
    m_contractorsState(AllContractorsSelected),
    m_eventsState(AllEventsSelected),
    m_documentsState(AllDocumentsSelected),
    m_paymentsState(AllPaymentsSelected)
{
    m_contractorsListModel = QPointer<ContractorsListModel>(new ContractorsListModel());
}

yarostaAccounting::~yarostaAccounting()
{
}

yarostaAccounting::ApplicationState yarostaAccounting::applicationState() const
{
    return m_applicationState;
}

yarostaAccounting::ContractorsState yarostaAccounting::contractorsState() const
{
    return m_contractorsState;
}

yarostaAccounting::EventsState yarostaAccounting::eventsState() const
{
    return m_eventsState;
}

yarostaAccounting::DocumentsState yarostaAccounting::documentsState() const
{
    return m_documentsState;
}

yarostaAccounting::PaymentsState yarostaAccounting::paymentsState() const
{
    return m_paymentsState;
}

QPointer<ContractorsListModel> yarostaAccounting::contractorsList() const
{
    return m_contractorsListModel;
}

void yarostaAccounting::setApplicationState(ApplicationState applicationState)
{
    m_applicationState = applicationState;
    emit applicationStateChanged();
}

void yarostaAccounting::setContractorsState(ContractorsState contractorsState)
{
    m_contractorsState = contractorsState;
    emit contractorsStateChanged();
}

void yarostaAccounting::setEventsState(EventsState eventsState)
{
    m_eventsState = eventsState;
    emit eventsStateChanged();
}

void yarostaAccounting::setDocumentsState(DocumentsState documentsState)
{
    m_documentsState = documentsState;
    emit documentsStateChanged();
}

void yarostaAccounting::setPaymentsState(PaymentsState paymentsState)
{
    m_paymentsState = paymentsState;
    emit paymentsStateChanged();
}
