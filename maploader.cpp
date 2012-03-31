#include "maploader.h"
#include "mapmodel.h"
#include <QFile>
#include <QDebug>

MapLoader::MapLoader(MapModel* mapModel)
{
    mapModel_m = mapModel;
}

void MapLoader::loadMap(QString mapName)
{
    QFile file(mapName);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        qDebug() << "Failled to open map";
        return;
    }

    QByteArray firstLine = file.readLine();
    int size = firstLine.remove(firstLine.size()-1,1).toInt();
    QList<QList<Field> > fields;

    for(int i = 0; i < size; i++)
    {
        QString line(file.readLine());
        line.remove("\n");
        int j = 0;
        QList<Field> fieldsLine;
        foreach(QString a, line.split(','))
        {
            fieldsLine << buildField(a);
            j++;
        }
        fields << fieldsLine;
    }
    mapModel_m->setFields(fields);
    file.close();
}


Field MapLoader::buildField(QString a)
{
    switch(a.toInt())
    {
    case 0:
        return Field(Field::Grass);
        break;
    case 1:
        return Field(Field::Land);
        break;
    case 2:
        return Field(Field::Water);
        break;
    }
}
