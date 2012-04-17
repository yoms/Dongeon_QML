#include "field.h"
#include <QPainter>
#include <QImage>
#include <QDebug>


Field::Field(int type, QString url)
{
    m_type = type;
    m_url = url;
}

Field::Field()
{
    m_type = 0;
    m_url = "";
}
//QString Field::urlImage() const
//{
//    switch(m_type)
//    {
//        case Field::Grass:
//            {
//                return QString(":/ressources/environment/1");
//            }
//            break;
//        case Field::Land:
//            {
//                return QString(":/ressources/environment/2");
//            }
//            break;
//        case Field::Water:
//            {
//                return QString(":/ressources/environment/3");
//            }
//            break;
//        default:
//            break;
//    }
//    return QString();
//}

//void Field::setType(Field::Type type)
//{
//    m_type = type;
//}
