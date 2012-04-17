#ifndef FIELD_H
#define FIELD_H

#include <QDeclarativeItem>

class Field
{
public:
    Field(int, QString);
    Field();

    inline QString urlImage() const
    {
        return m_url;
    }

    inline int type() const
    {
        return m_type;
    }

    inline QString toSaveString() const
    {
        return QString::number((int) m_type);
    }
private:
    int m_type;
    QString m_url;

};

#endif // FIELD_H
