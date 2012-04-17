#include "fieldtypemodel.h"

FieldTypeModel::FieldTypeModel(QObject *parent) :
    QAbstractListModel(parent)
{
    QHash<int, QByteArray> roles;
    roles[TypeRole] = "type";
    roles[UrlRole] = "urlImage";
    setRoleNames(roles);
    m_fieldTypeList[0] = Field(0,QString(":/ressources/environment/1"));
    m_fieldTypeList[1] = Field(1,QString(":/ressources/environment/2"));
    m_fieldTypeList[2] = Field(2,QString(":/ressources/environment/3"));
}

QVariant FieldTypeModel::data(const QModelIndex &index, int role) const
{
    Q_UNUSED(index);
    Q_UNUSED(role);
    Q_ASSERT(index.row() < m_fieldTypeList.size());
    switch (role)
    {
        case TypeRole:
        return m_fieldTypeList[m_fieldTypeList.keys()[index.row()]].type();
        case UrlRole:
        return m_fieldTypeList[m_fieldTypeList.keys()[index.row()]].urlImage();
    }
    return QVariant();
}
int FieldTypeModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_fieldTypeList.size();
}
QString FieldTypeModel::fieldUrlForType(int type) const
{
    Q_ASSERT(m_fieldTypeList.contains(type));
    return m_fieldTypeList[type].urlImage();
}

Field *FieldTypeModel::fieldForType(int type)
{
    Q_ASSERT(m_fieldTypeList.contains(type));
    return &m_fieldTypeList[type];
}
