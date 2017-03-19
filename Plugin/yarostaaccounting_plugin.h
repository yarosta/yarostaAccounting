#ifndef YAROSTAACCOUNTING_PLUGIN_H
#define YAROSTAACCOUNTING_PLUGIN_H

#include <QQmlExtensionPlugin>

class YarostaAccountingPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri);
};

#endif // YAROSTAACCOUNTING_PLUGIN_H
