#ifndef FIELD_H
#define FIELD_H

#include <QDeclarativeItem>

class Field
{
public:
    enum Type{
        Grass,
        Land,
        Water
    };

    explicit Field(Field::Type type = Grass);
    QString urlImage() const;
    void setType(Field::Type type);
    QString toSaveString();
private:
    Type m_type;

};

#endif // FIELD_H
