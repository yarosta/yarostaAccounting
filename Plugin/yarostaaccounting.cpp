#include "yarostaaccounting.h"

yarostaAccounting::yarostaAccounting(QQuickItem *parent):
    QQuickItem(parent), m_applicationState(noneSelected)
{
    // By default, QQuickItem does not draw anything. If you subclass
    // QQuickItem to create a visual item, you will need to uncomment the
    // following line and re-implement updatePaintNode()

    // setFlag(ItemHasContents, true);
}

yarostaAccounting::~yarostaAccounting()
{
}

void yarostaAccounting::setApplicationState(ApplicationState applicationState)
{
    m_applicationState = applicationState;
    emit applicationStateChanged();
}

yarostaAccounting::ApplicationState yarostaAccounting::applicationState()
{
    return m_applicationState;
}
