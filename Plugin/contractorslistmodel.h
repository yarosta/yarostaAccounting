#ifndef CONTRACTORSLISTMODEL_H
#define CONTRACTORSLISTMODEL_H

#include <QAbstractListModel>
#include <QPointer>

#include "contractor.h"

class ContractorsListModel : public QAbstractListModel
{
Q_OBJECT

    //Q_PROPERTY(ContractorsState State READ paymentsState WRITE setPaymentsState NOTIFY paymentsStateChanged)

public:
    enum RoleNames {
        ContractorName,
        ContractorAddress,
        ContractorPhone,
        ContractorEmail
     };

    ContractorsListModel();

    QVariant data(const QModelIndex &index, int role) const;
    int rowCount(const QModelIndex &parent) const;

    void setRoleNames();

    void filter();

protected:
    QHash<int, QByteArray> roleNames() const;

private:
    QHash<int, QByteArray> m_roleNames;

    QList<QPointer<Contractor> > m_data;
    QList<QPointer<Contractor> > m_storageData;
};

#endif // CONTRACTORSLISTMODEL_H
