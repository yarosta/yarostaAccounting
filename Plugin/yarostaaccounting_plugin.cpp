#include <qqml.h>

#include "yarostaaccounting_plugin.h"
#include "yarostaaccounting.h"
#include "contractorslistmodel.h"

void YarostaAccountingPlugin::registerTypes(const char *uri)
{
    qmlRegisterType<yarostaAccounting>(uri, 1, 0, "Backend");
    qmlRegisterUncreatableType<ContractorsListModel>(uri, 1, 0, "ContractorsListModel", QString("Contractors List Model"));
}
