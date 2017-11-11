#-------------------------------------------------
#
# Project created by QtCreator 2017-09-08T00:58:11
#
#-------------------------------------------------

QT += core
QT += gui
QT += sql

CONFIG += console

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = test9
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    dashboard.cpp \
    connection.cpp \
    dialog.cpp \
    grouppopup.cpp \
    invitations.cpp \
    mythread.cpp \
    mythread.cpp

HEADERS += \
        mainwindow.h \
    dashboard.h \
    connection.h \
    dialog.h \
    grouppopup.h \
    invitations.h \
    mythread.h \
    mythread.h

FORMS += \
        mainwindow.ui \
    dashboard.ui \
    dialog.ui \
    grouppopup.ui \
    invitations.ui



win32: LIBS += -L$$PWD/connector/windows/lib/opt/ -lmysqlcppconn

INCLUDEPATH += $$PWD/connector/windows/lib/opt
DEPENDPATH += $$PWD/connector/windows/lib/opt

macx: LIBS += -L$$PWD/connector/mac/lib/ -lmysqlclient

INCLUDEPATH += $$PWD/connector/mac/include
DEPENDPATH += $$PWD/connector/mac/include

RESOURCES += \
    assets.qrc
