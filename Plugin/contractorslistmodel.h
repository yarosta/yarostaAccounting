#ifndef CONTRACTORSLISTMODEL_H
#define CONTRACTORSLISTMODEL_H

#include <QAbstractListModel>

class ContractorsListModel : public QAbstractListModel
{
public:
    ContractorsListModel();

    QVariant data(const QModelIndex &index, int role) const;
    int rowCount(const QModelIndex &parent) const;

};

#endif // CONTRACTORSLISTMODEL_H
