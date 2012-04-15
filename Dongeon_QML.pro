#-------------------------------------------------
#
# Project created by QtCreator 2012-02-02T18:35:38
#
#-------------------------------------------------

QT       += core gui declarative
TARGET = Dongeon_QML
TEMPLATE = app
target.path=/usr/local/bin
INSTALLS=target

SOURCES += main.cpp\
        mainwindow.cpp \
    maploader.cpp \
    field.cpp \
    mapwriter.cpp \
    mapmodel.cpp

HEADERS  += mainwindow.h \
    maploader.h \
    field.h \
    mapwriter.h \
    mapmodel.h

FORMS    += mainwindow.ui

OTHER_FILES += \
    1.map \
    qml/MapChooser.qml

RESOURCES += \
    Images.qrc \
    qml.qrc


OTHER_FILES += \
    qml/ViewSwitcher.qml \
    qml/ViewLoader.qml \
    qml/PersonnagesMain.qml \
    qml/PersonnageListModel.qml \
    qml/PersonnageListDelegate.qml \
    qml/PersonnageDetailView.qml \
    qml/Menu.qml \
    qml/MapMain.qml \
    qml/MainView.qml \
    qml/main.qml \
    qml/ImageButton.qml \
    qml/Button.qml \
    qml/FieldDelegate.qml

