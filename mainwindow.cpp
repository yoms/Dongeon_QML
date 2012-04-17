#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "field.h"
#include "mapmodel.h"
#include "maploader.h"
#include "mapwriter.h"
#include <QDebug>
#include <QFileDialog>
#include <QDeclarativeEngine>
#include <QDeclarativeComponent>
#include <QDeclarativeContext>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    m_mapModel(&m_fieldModel, this)
{
    ui->setupUi(this);
    MapLoader mapLoader(&m_mapModel, &m_fieldModel);
    mapLoader.loadMap("/home/guillaume/Workspace/Test_QGraphicsMap/1.map");
    this->ui->graphicsView->setSource(QUrl("qrc:/qml/qml/main.qml"));
    QDeclarativeContext *ctxt = this->ui->graphicsView->rootContext();
    ctxt->setContextProperty("MapModel", &m_mapModel);
    ctxt->setContextProperty("FieldModel", &m_fieldModel);
    //MapModel::getInstance()->debug();

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::save()
{
    //MapWriter::writeMap(ui->saveSpinBox->value());
}

void MainWindow::on_actionQuitter_triggered()
{
    this->close();
}

void MainWindow::on_actionSave_triggered()
{
    //MapWriter::writeMap(MapModel::getInstance()->mapId());
}

void MainWindow::on_actionNouveau_triggered()
{

}

void MainWindow::on_actionOuvrir_triggered()
{
//    QString fileName = QFileDialog::getOpenFileName(this,
//         tr("Open Image"), QCoreApplication::applicationDirPath(), tr("Map Files (*.map *.jpg *.bmp)"));
//    qDebug() << fileName;
//    MapLoader::loadMap(fileName);
//    QDeclarativeContext *ctxt = this->ui->graphicsView->rootContext();
//    ctxt->setContextProperty("MapModel", MapModel::getInstance());
}
