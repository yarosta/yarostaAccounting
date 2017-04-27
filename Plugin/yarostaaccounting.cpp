#include "yarostaaccounting.h"

yarostaAccounting::yarostaAccounting(QQuickItem *parent):
    QQuickItem(parent),
    m_applicationState(NoneSelected),
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
    utils::ContractorsState contractorsListModelState = m_contractorsListModel -> contractorsState();
    switch(contractorsListModelState) {
    case utils::AllContractorsSelected:
        return yarostaAccounting::AllContractorsSelected;
    case utils::TrustedSelected:
        return yarostaAccounting::TrustedSelected;
    case utils::BlackListedSelected:
        return yarostaAccounting::BlackListedSelected;
    default:
        return yarostaAccounting::AllContractorsSelected;
    }
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

void yarostaAccounting::setContractorsState(yarostaAccounting::ContractorsState contractorsState)
{
    utils::ContractorsState contractorsListModelState;
    switch(contractorsState) {
    case yarostaAccounting::AllContractorsSelected:
        contractorsListModelState = utils::AllContractorsSelected;
        break;
    case yarostaAccounting::TrustedSelected:
        contractorsListModelState = utils::TrustedSelected;
        break;
    case yarostaAccounting::BlackListedSelected:
        contractorsListModelState = utils::BlackListedSelected;
        break;
    default:
        contractorsListModelState = utils::AllContractorsSelected;
        break;
    }
    m_contractorsListModel -> setContractorsState(contractorsListModelState);
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
