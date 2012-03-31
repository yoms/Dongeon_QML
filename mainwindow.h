#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "mapmodel.h"

namespace Ui {
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

public slots:
    void save();
private slots:
    void on_actionQuitter_triggered();
    void on_actionSave_triggered();
    void on_actionNouveau_triggered();
    void on_actionOuvrir_triggered();

private:
    Ui::MainWindow *ui;
    MapModel mapModel_m;
};

#endif // MAINWINDOW_H
