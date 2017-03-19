#ifndef YAROSTAACCOUNTING_H
#define YAROSTAACCOUNTING_H

#include <QQuickItem>

class yarostaAccounting : public QQuickItem
{
    Q_OBJECT
    Q_DISABLE_COPY(yarostaAccounting)

    Q_ENUMS(ApplicationState)

    Q_PROPERTY(ApplicationState applicationState READ applicationState WRITE setApplicationState NOTIFY applicationStateChanged)

public:

    enum ApplicationState {
        noneSelected = 0,
        companySelected,
        contractorsSelected,
        eventsSelected,
        documentsSelected,
        paymentsSelected,
        accountingSelected
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
