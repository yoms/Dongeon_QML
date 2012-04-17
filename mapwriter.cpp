#include "mapwriter.h"
#include <QFile>
#include <QTextStream>
#include <QDebug>
#include "mapmodel.h"
MapWriter::MapWriter(MapModel* mapModel)
{
    mapModel_m = mapModel;
}

void MapWriter::writeMap(int id)
{
    QFile file(QString::number(id)+".map");
    if (!file.open(QIODevice::WriteOnly | QIODevice::Text))
    {
        qDebug() << "Failled to open map";
        return;
    }
    QTextStream out(&file);
    out << mapModel_m->columnSize() << "\n";
    for(int i = 0; i < mapModel_m->rowSize(); i ++)
    {
        QString line;
        for(int j = 0; j < mapModel_m->columnSize(); j ++)
        {
            if(j)
            {
                out << ",";
                line += ",";
            }
            out << mapModel_m->getField(i,j)->toSaveString();
            line += mapModel_m->getField(i,j)->toSaveString();
        }
        out << "\n";
        line += "\n";
        qDebug() << line;
    }
    file.close();
}
