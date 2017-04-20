#include "contractorslistmodel.h"

ContractorsListModel::ContractorsListModel()
{
    m_roleNames[ContractorName] = "name";
    m_roleNames[ContractorAddress] = "address";
}

QVariant ContractorsListModel::data(const QModelIndex &index, int role) const
{
    Q_UNUSED(index);
    if (role == ContractorName) {
        return QVariant("Firma krzak");
    }
    if (role == ContractorAddress) {
        return QVariant("53-810 Deblin, ul. Tarnowska 21/2");
    }
    return QVariant();
}

int ContractorsListModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return 1;
}

QHash<int, QByteArray> ContractorsListModel::roleNames() const
{
    return m_roleNames;
}
