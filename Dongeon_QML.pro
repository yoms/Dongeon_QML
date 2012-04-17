#-------------------------------------------------
#
# Project created by QtCreator 2012-02-02T18:35:38
#
#-------------------------------------------------

QT       += core gui declarative
TARGET = Dongeon_QML
TEMPLATE = app
target.path=/usr/local/bin
INSTALLS=target configuration.xml
QMAKE_CXXFLAGS += -Werror -std=c++0x

SOURCES += main.cpp\
        mainwindow.cpp \
    maploader.cpp \
    field.cpp \
    mapwriter.cpp \
    mapmodel.cpp \
    fieldtypemodel.cpp

HEADERS  += mainwindow.h \
    maploader.h \
    field.h \
    mapwriter.h \
    mapmodel.h \
    fieldtypemodel.h

FORMS    += mainwindow.ui

OTHER_FILES += \
    1.map \
    qml/MapChooser.qml \
    qml/Map/MapView.qml \
    qml/Map/FieldTypeSelection.qml \
    configuration.xml

RESOURCES += \
    Images.qrc \
    qml.qrc


OTHER_FILES += \
    qml/Menu.qml \
    qml/MainView.qml \
    qml/main.qml \
    qml/Personnage/PersonnagesMain.qml \
    qml/Personnage/PersonnageListModel.qml \
    qml/Personnage/PersonnageListDelegate.qml \
    qml/Personnage/PersonnageDetailView.qml \
    qml/Map/MapMain.qml \
    qml/Map/FieldDelegate.qml \
    qml/Component/ImageButton.qml \
    qml/Component/Button.qml \
    qml/Component/ListButton.qml \
    qml/Component/ModalDialog.qml \
    qml/Component/Fader.qml \
    qml/Component/ViewSwitcher.qml \
    qml/Component/ViewLoader.qml \

