#include "yarostaaccounting_plugin.h"
#include "yarostaaccounting.h"

#include <qqml.h>

void YarostaAccountingPlugin::registerTypes(const char *uri)
{
    // @uri Backend
    qmlRegisterType<yarostaAccounting>(uri, 1, 0, "Backend");
}
