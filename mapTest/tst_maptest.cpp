#include <QtCore/QString>
#include <QtTest/QtTest>
#include "../map.h"
#include <QDebug>
class MapTest : public QObject
{
    Q_OBJECT
    
public:
    MapTest();
    
private Q_SLOTS:
    void initTestCase();
    void cleanupTestCase();
    void changeMap();
private:
    Map* m_map;
};

MapTest::MapTest()
{

}

void MapTest::initTestCase()
{
    m_map = NULL;
    m_map = Map::getInstance();
    Q_ASSERT(m_map != NULL);
}

void MapTest::cleanupTestCase()
{
    Map::destroyInstance();
}

void MapTest::changeMap()
{
    QCOMPARE(m_map->mapId(), -1);
    m_map->setMapId(1);
    QCOMPARE(m_map->mapId(), 1);

}

QTEST_APPLESS_MAIN(MapTest)

#include "tst_maptest.moc"
