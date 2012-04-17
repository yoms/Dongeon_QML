#include "mapmodel.h"

MapModel::MapModel(FieldTypeModel *fieldTypeModel, QObject *parent)
    : QAbstractItemModel(parent), m_fieldTypeModel(fieldTypeModel)
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
    m_fields = fields;
    endInsertRows();
}
const Field* MapModel::getField(int x, int y)
{
    if (x < 0 || x > rowSize())
        return NULL;
    if (y < 0 || y > columnSize())
        return NULL;
    return m_fields[y][x];
}

int MapModel::rowCount(const QModelIndex & parent) const
{
    Q_UNUSED(parent)
    int columnCount = m_fields.count() > 0 ? m_fields[0].count() : 0;
    int rowCount = columnCount ? m_fields.count()*m_fields[0].count() : m_fields.count();
    return rowCount;
}
int MapModel::columnCount(const QModelIndex & parent) const
{
    Q_UNUSED(parent)
    return m_fields[0].count();
}

int MapModel::rowSize() const
{
   return m_fields.count();
}
int MapModel::columnSize() const
{
   return m_fields[0].count();
}
QVariant MapModel::data(const QModelIndex & index, int role) const
{
    if (index.row() < 0 || index.row() > rowCount())
        return QVariant();
    int x = index.row()%columnSize();
    int y = index.row()/columnSize();
    const Field *field = m_fields[y][x];
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

void MapModel::changeSelection(int type)
{
    for(int i = 0; i < m_fieldSelected.size(); i++)
    {
        QPair<int, int> pos = m_fieldSelected[i];
        m_fields[pos.first][pos.second] = m_fieldTypeModel->fieldForType(type);
        qDebug() << "m_fields["<< pos.first<<"]["<<pos.second <<"]";
    }
    emit imageChanged();
    m_fieldSelected.clear();
}

void MapModel::removeToSelection(int posX, int posY)
{
    qDebug() << "removeToSelection(int " << posX << ", int "<< posY<< ")";
    m_fieldSelected.removeAll(QPair<int, int>(posX, posY));
}

void MapModel::addToSelection(int posX, int posY)
{
    qDebug() << "addToSelection(int " << posX << ", int " << posY << ")";
    m_fieldSelected << QPair<int, int>(posX, posY);
}

QString MapModel::imageUrl(int posX, int posY)
{
    const Field *field = m_fields[posX][posY];
    return field->urlImage();
}
