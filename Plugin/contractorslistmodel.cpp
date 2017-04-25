#include "contractorslistmodel.h"

ContractorsListModel::ContractorsListModel()
{
    setRoleNames();

    m_storageData.append(new Contractor("Consultex","12-430 Radom, ul. Lubelska 34/1","406987095","consultex@eu"));
    m_storageData.append(new Contractor("Tele company","32-110 Dęblin, ul. Sawy 3/11","406444095","tele@eu"));
    m_storageData.append(new Contractor("Polo S.A.","41-604 Radom, ul. Tarnowska 2/10","408887095","polo@eu"));
    m_storageData.append(new Contractor("Kwatera development","11-200 Warszawa, Al. Jerozolimska 2/10","111187095","kwatera@eu"));
    m_storageData.append(new Contractor("San usługi transportowe","44-110 Kraków, ul. Polska 12/11","422227095","san@eu"));
    m_storageData.append(new Contractor("Consultex","12-430 Radom, ul. Lubelska 34/1","406987095","consultex@eu"));
    m_storageData.append(new Contractor("Tele company","32-110 Dęblin, ul. Sawy 3/11","406444095","tele@eu"));
    m_storageData.append(new Contractor("Polo S.A.","41-604 Radom, ul. Tarnowska 2/10","408887095","polo@eu"));
    m_storageData.append(new Contractor("Kwatera development","11-200 Warszawa, Al. Jerozolimska 2/10","111187095","kwatera@eu"));
    m_storageData.append(new Contractor("San usługi transportowe","44-110 Kraków, ul. Polska 12/11","422227095","san@eu"));
    m_storageData.append(new Contractor("Consultex","12-430 Radom, ul. Lubelska 34/1","406987095","consultex@eu"));
    m_storageData.append(new Contractor("Tele company","32-110 Dęblin, ul. Sawy 3/11","406444095","tele@eu"));
    m_storageData.append(new Contractor("Polo S.A.","41-604 Radom, ul. Tarnowska 2/10","408887095","polo@eu"));
    m_storageData.append(new Contractor("Kwatera development","11-200 Warszawa, Al. Jerozolimska 2/10","111187095","kwatera@eu"));
    m_storageData.append(new Contractor("San usługi transportowe","44-110 Kraków, ul. Polska 12/11","422227095","san@eu"));
    m_storageData.append(new Contractor("Consultex","12-430 Radom, ul. Lubelska 34/1","406987095","consultex@eu"));
    m_storageData.append(new Contractor("Tele company","32-110 Dęblin, ul. Sawy 3/11","406444095","tele@eu"));
    m_storageData.append(new Contractor("Polo S.A.","41-604 Radom, ul. Tarnowska 2/10","408887095","polo@eu"));
    m_storageData.append(new Contractor("Kwatera development","11-200 Warszawa, Al. Jerozolimska 2/10","111187095","kwatera@eu"));
    m_storageData.append(new Contractor("San usługi transportowe","44-110 Kraków, ul. Polska 12/11","422227095","san@eu"));

    filter();
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

void ContractorsListModel::filter()
{
    m_data.clear();
    int storageSize = m_storageData.size();
    for (int i=0; i<storageSize; ++i) {
        m_data.append(m_storageData.at(i));
    }
}

QHash<int, QByteArray> ContractorsListModel::roleNames() const
{
    return m_roleNames;
}
