#ifndef CONTRACTORSLISTMODEL_H
#define CONTRACTORSLISTMODEL_H

#include <QAbstractListModel>
#include <QPointer>

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

    void setRoleNames();

protected:
    QHash<int, QByteArray> roleNames() const;

private:
    QHash<int, QByteArray> m_roleNames;
    QList<QPointer<Contractor> > m_data;
};

#endif // CONTRACTORSLISTMODEL_H
