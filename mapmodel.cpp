#include "mapmodel.h"

MapModel::MapModel(QObject *parent)
    : QAbstractItemModel(parent)
{
    QHash<int, QByteArray> roles;
    roles[URLRole] = "urlImage";
    roles[PosXRole] = "posX";
    roles[PosYRole] = "posY";
    roles[FieldTypeRole] = "fieldType";
    setRoleNames(roles);
}

void MapModel::setFields(QList<QList<Field*> >& fields)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    fields_m = fields;
    endInsertRows();
}
const Field* MapModel::getField(int x, int y)
{
    if (x < 0 || x > rowSize())
        return NULL;
    if (y < 0 || y > columnSize())
        return NULL;
    return fields_m[y][x];
}

int MapModel::rowCount(const QModelIndex & parent) const
{
    Q_UNUSED(parent)
    int columnCount = fields_m.count() > 0 ? fields_m[0].count() : 0;
    int rowCount = columnCount ? fields_m.count()*fields_m[0].count() : fields_m.count();
    return rowCount;
}
int MapModel::columnCount(const QModelIndex & parent) const
{
    Q_UNUSED(parent)
    return fields_m[0].count();
}

int MapModel::rowSize() const
{
   return fields_m.count();
}
int MapModel::columnSize() const
{
   return fields_m[0].count();
}
QVariant MapModel::data(const QModelIndex & index, int role) const
{
    if (index.row() < 0 || index.row() > rowCount())
        return QVariant();
    int x = index.row()%columnSize();
    int y = index.row()/columnSize();
    const Field *field = fields_m[y][x];
    switch (role)
    {
        case URLRole:
         return field->urlImage();
        case PosXRole:
         return x;
        case PosYRole:
         return y;
        case FieldTypeRole:
        return field->type();
    }
    return QVariant();
}

QModelIndex MapModel::index(int row, int column, const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return createIndex(row,column);
}
QModelIndex MapModel::parent(const QModelIndex &child) const
{
    Q_UNUSED(child)
    return QModelIndex();
}
