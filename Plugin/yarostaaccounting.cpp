#include "yarostaaccounting.h"

yarostaAccounting::yarostaAccounting(QQuickItem *parent):
    QQuickItem(parent), m_applicationState(NoneSelected)
{
    // By default, QQuickItem does not draw anything. If you subclass
    // QQuickItem to create a visual item, you will need to uncomment the
    // following line and re-implement updatePaintNode()

    // setFlag(ItemHasContents, true);
}

yarostaAccounting::~yarostaAccounting()
{
}

yarostaAccounting::ApplicationState yarostaAccounting::applicationState()
{
    return m_applicationState;
}

yarostaAccounting::ContractorsState yarostaAccounting::contractorsState()
{
    return m_contractorsState;
}

yarostaAccounting::EventsState yarostaAccounting::eventsState()
{
    return m_eventsState;
}

yarostaAccounting::DocumentsState yarostaAccounting::documentsState()
{
    return m_documentsState;
}

yarostaAccounting::PaymentsState yarostaAccounting::paymentsState()
{
    return m_paymentsState;
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
