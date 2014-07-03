TEMPLATE = app
TARGET = harbour-communitest
CONFIG += c++11

QT += quick

INCLUDEPATH += ../plugins
DEPENDPATH += ../plugins

HEADERS += $$PWD/stringfiltermodel.h

SOURCES += $$PWD/main.cpp
SOURCES += $$PWD/stringfiltermodel.cpp

qmlfiles.files = *.qml
qmlfiles.path = /usr/share/$${TARGET}/qml
INSTALLS += qmlfiles

target.path = /usr/bin/$$TARGET
INSTALLS += target
