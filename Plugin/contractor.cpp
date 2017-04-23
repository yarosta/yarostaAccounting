#include "contractor.h"

Contractor::Contractor(QObject *parent) : QObject(parent)
{

}

Contractor::Contractor(QString name, QString address, QString phone, QString email, QObject *parent) :
    QObject(parent),
    m_name(name),
    m_address(address),
    m_phone(phone),
    m_email(email)
{

}

QString Contractor::name() const
{
    return m_name;
}

QString Contractor::address() const
{
    return m_address;
}

QString Contractor::phone() const
{
    return m_phone;
}

QString Contractor::email() const
{
    return m_email;
}

void Contractor::setName(QString name)
{
    m_name = name;
}

void Contractor::setAddress(QString address)
{
    m_address = address;
}

void Contractor::setPhone(QString phone)
{
    m_phone = phone;
}

void Contractor::setEmail(QString email)
{
    m_email = email;
}
