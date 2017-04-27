TEMPLATE = lib
TARGET = yarostaAccounting
QT += qml quick
CONFIG += qt plugin

TARGET = $$qtLibraryTarget($$TARGET)
uri = Backend

DESTDIR = ./bin
MOC_DIR = ./build/moc
RCC_DIR = ./build/rcc
UI_DIR = ./build/ui
unix:OBJECTS_DIR = ./build/o/unix
win32:OBJECTS_DIR = ./build/o/win32
macx:OBJECTS_DIR = ./build/o/mac

# Input
SOURCES += \
    yarostaaccounting_plugin.cpp \
    yarostaaccounting.cpp \
    contractorslistmodel.cpp \
    contractor.cpp

HEADERS += \
    yarostaaccounting_plugin.h \
    yarostaaccounting.h \
    contractorslistmodel.h \
    contractor.h \
    utils.h

OTHER_FILES = qmldir

!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
    copy_qmldir.target = $$OUT_PWD/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}

qmldir.files = qmldir
unix {
    installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)
    qmldir.path = $$installPath
    target.path = $$installPath
    INSTALLS += target qmldir
}
