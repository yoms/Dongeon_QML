#include "field.h"
#include <QPainter>
#include <QImage>
#include <QDebug>



Field::Field(Field::Type type)
{
    m_type = type;
}
QString Field::urlImage() const
{
    switch(m_type)
    {
        case Field::Grass:
            {
                return QString(":/ressources/environment/1");
            }
            break;
        case Field::Land:
            {
                return QString(":/ressources/environment/2");
            }
            break;
        case Field::Water:
            {
                return QString(":/ressources/environment/3");
            }
            break;
    }
    return QString();
}


QString Field::toSaveString()
{
    return QString::number((int) m_type);
}
void Field::setType(Field::Type type)
{
    m_type = type;
}
