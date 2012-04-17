#include "maploader.h"
#include "mapmodel.h"
#include <QFile>
#include <QDebug>

MapLoader::MapLoader(MapModel* mapModel, FieldTypeModel* fieldModel)
{
    m_mapModel = mapModel;
    m_fieldModel = fieldModel;
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
    QList<QList<Field*> > fields;

    for(int i = 0; i < size; i++)
    {
        QString line(file.readLine());
        line.remove("\n");
        int j = 0;
        QList<Field*> fieldsLine;
        foreach(QString a, line.split(','))
        {
            fieldsLine << m_fieldModel->fieldForType(a.toInt());;
            j++;
        }
        fields << fieldsLine;
    }
    m_mapModel->setFields(fields);
    file.close();
}

