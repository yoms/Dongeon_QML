#ifndef MAPWRITER_H
#define MAPWRITER_H

#include "mapmodel.h"
class MapWriter
{
public:
    MapWriter(MapModel* mapModel);
    void writeMap(int id);
private:
    MapModel* mapModel_m;
};

#endif // MAPWRITER_H
