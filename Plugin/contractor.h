#ifndef CONTRACTOR_H
#define CONTRACTOR_H

#include <QObject>

class Contractor : public QObject
{
    Q_OBJECT
public:
    explicit Contractor(QObject *parent = 0);
    Contractor(QString name = "", QString address = "", QString phone = "", QString email = "", QObject *parent = 0);

    QString name() const;
    QString address() const;
    QString phone() const;
    QString email() const;

    void setName(QString name);
    void setAddress(QString address);
    void setPhone(QString phone);
    void setEmail(QString email);

signals:

public slots:

private:
    QString m_name;
    QString m_address;
    QString m_phone;
    QString m_email;
};

#endif // CONTRACTOR_H
