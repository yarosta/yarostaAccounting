#ifndef CONTRACTOR_H
#define CONTRACTOR_H

#include "utils.h"
#include <QObject>

class Contractor : public QObject
{
    Q_OBJECT
public:
    explicit Contractor(QObject *parent = 0);
    Contractor(QString name = "", QString address = "", QString phone = "", QString email = "", utils::ContractorsState contractorsState = utils::AllContractorsSelected, QObject *parent = 0);

    QString name() const;
    QString address() const;
    QString phone() const;
    QString email() const;
    utils::ContractorsState contractorsState() const;

    void setName(QString name);
    void setAddress(QString address);
    void setPhone(QString phone);
    void setEmail(QString email);
    void setContractorsState(utils::ContractorsState contractorsState);

signals:

public slots:

private:
    QString m_name;
    QString m_address;
    QString m_phone;
    QString m_email;
    utils::ContractorsState m_contractorsState;
};

#endif // CONTRACTOR_H
