#include "contractorslistmodel.h"

ContractorsListModel::ContractorsListModel()
{

}

QVariant ContractorsListModel::data(const QModelIndex &index, int role) const
{
    Q_UNUSED(index);
    Q_UNUSED(role);
    return QVariant();
}

int ContractorsListModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return 0;
}
