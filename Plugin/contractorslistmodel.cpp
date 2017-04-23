#include "contractorslistmodel.h"

ContractorsListModel::ContractorsListModel()
{
    setRoleNames();

    m_data.append(new Contractor("Consultex","12-430 Radom, ul. Lubelska 34/1","406987095","consultex@eu"));
    m_data.append(new Contractor("Tele company","32-110 Dęblin, ul. Sawy 3/11","406444095","tele@eu"));
    m_data.append(new Contractor("Polo S.A.","41-604 Radom, ul. Tarnowska 2/10","408887095","polo@eu"));
    m_data.append(new Contractor("Kwatera development","11-200 Warszawa, Al. Jerozolimska 2/10","111187095","kwatera@eu"));
    m_data.append(new Contractor("San usługi transportowe","44-110 Kraków, ul. Polska 12/11","422227095","san@eu"));
}

QVariant ContractorsListModel::data(const QModelIndex &index, int role) const
{
    int row = index.row();

    if (role == ContractorName) {
        return m_data.at(row)->name();
    }
    if (role == ContractorAddress) {
        return m_data.at(row)->address();
    }
    if (role == ContractorPhone) {
        return m_data.at(row)->phone();
    }
    if (role == ContractorEmail) {
        return m_data.at(row)->email();
    }
    return QVariant();
}

int ContractorsListModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_data.size();
}

void ContractorsListModel::setRoleNames()
{
    m_roleNames[ContractorName] = "name";
    m_roleNames[ContractorAddress] = "address";
    m_roleNames[ContractorPhone] = "phone";
    m_roleNames[ContractorEmail] = "email";
}

QHash<int, QByteArray> ContractorsListModel::roleNames() const
{
    return m_roleNames;
}
