#ifndef CONTRACTORSLISTMODEL_H
#define CONTRACTORSLISTMODEL_H

#include <QAbstractListModel>
#include <QPointer>

#include "utils.h"
#include "contractor.h"

class ContractorsListModel : public QAbstractListModel
{
Q_OBJECT

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
    utils::ContractorsState contractorsState() const;

    void setRoleNames();
    void setContractorsState(utils::ContractorsState contractorsState);

    void filter();

protected:
    QHash<int, QByteArray> roleNames() const;

private:
    QHash<int, QByteArray> m_roleNames;

    QList<QPointer<Contractor> > m_data;
    QList<QPointer<Contractor> > m_storageData;

    utils::ContractorsState m_contractorsState;
};

#endif // CONTRACTORSLISTMODEL_H
