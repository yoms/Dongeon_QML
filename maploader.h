#ifndef MAPLOADER_H
#define MAPLOADER_H
#include <QString>
#include "field.h"
#include "fieldtypemodel.h"
class MapModel;
class MapLoader
{
public:
    MapLoader(MapModel* mapModel, FieldTypeModel* fieldModel);
    void loadMap(QString mapName);
private:
    MapModel* m_mapModel;
    FieldTypeModel* m_fieldModel;
};

#endif // MAPLOADER_H
