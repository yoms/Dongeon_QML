#ifndef MAPLOADER_H
#define MAPLOADER_H
#include <QString>
#include "field.h"
class MapModel;
class MapLoader
{
public:
    MapLoader(MapModel* mapModel);
    void loadMap(QString mapName);
    Field buildField(QString a);
private:
    MapModel* mapModel_m;
};

#endif // MAPLOADER_H
