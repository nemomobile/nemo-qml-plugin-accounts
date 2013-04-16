TARGET = nemoaccounts
PLUGIN_IMPORT_PATH = org/nemomobile/accounts

TEMPLATE = lib
CONFIG += qt plugin hide_symbols
QT += declarative

target.path = $$[QT_INSTALL_IMPORTS]/$$PLUGIN_IMPORT_PATH
INSTALLS += target

qmldir.files += $$_PRO_FILE_PWD_/qmldir
qmldir.path +=  $$[QT_INSTALL_IMPORTS]/$$$$PLUGIN_IMPORT_PATH
INSTALLS += qmldir

CONFIG += link_pkgconfig
PKGCONFIG += accounts-qt

SOURCES += \
           $$PWD/accountinterface.cpp \
           $$PWD/accountmanagerinterface.cpp \
           $$PWD/account-model.cpp \
           $$PWD/account-provider-model.cpp \
           $$PWD/authdatainterface.cpp \
           $$PWD/plugin.cpp \
           $$PWD/providerinterface.cpp \
           $$PWD/serviceaccountinterface.cpp \
           $$PWD/serviceinterface.cpp \
           $$PWD/servicetypeinterface.cpp \
           $$PWD/service-account-model.cpp

HEADERS += \
           $$PWD/accountinterface.h \
           $$PWD/accountmanagerinterface.h \
           $$PWD/account-model.h \
           $$PWD/account-provider-model.h \
           $$PWD/authdatainterface.h \
           $$PWD/providerinterface.h \
           $$PWD/serviceaccountinterface.h \
           $$PWD/serviceinterface.h \
           $$PWD/servicetypeinterface.h \
           $$PWD/service-account-model.h \
           $$PWD/accountinterface_p.h \
           $$PWD/accountmanagerinterface_p.h \
           $$PWD/accountvalueencoding_p.h \
           $$PWD/serviceaccountinterface_p.h

OTHER_FILES += accounts.qdoc accounts.qdocconf

MOC_DIR = $$PWD/../.moc
OBJECTS_DIR = $$PWD/../.obj
