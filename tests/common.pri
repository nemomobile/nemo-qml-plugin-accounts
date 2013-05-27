include(../src/src.pro)
SRCDIR = ../../src/
INCLUDEPATH += $$SRCDIR
DEPENDPATH = $$INCLUDEPATH
QT += testlib
TEMPLATE = app
CONFIG -= app_bundle

CONFIG += link_pkgconfig

equals(QT_MAJOR_VERSION, 4) {
    PKGCONFIG += accounts-qt QtDeclarative QtGui
    target.path = /opt/tests/nemo-qml-plugins/accounts
}
equals(QT_MAJOR_VERSION, 5) {
    PKGCONFIG += accounts-qt5 Qt5Qml Qt5Gui
    target.path = /opt/tests/nemo-qml-plugins-qt5/accounts
}

INSTALLS += target
