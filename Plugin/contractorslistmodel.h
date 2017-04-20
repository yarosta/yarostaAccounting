#ifndef CONTRACTORSLISTMODEL_H
#define CONTRACTORSLISTMODEL_H

#include <QAbstractListModel>

class ContractorsListModel : public QAbstractListModel
{
Q_OBJECT

public:
    enum RoleNames {
        ContractorName,
        ContractorAddress
     };

    ContractorsListModel();

    QVariant data(const QModelIndex &index, int role) const;
    int rowCount(const QModelIndex &parent) const;

protected:
    QHash<int, QByteArray> roleNames() const;

private:
    QHash<int, QByteArray> m_roleNames;
};

#endif // CONTRACTORSLISTMODEL_H
