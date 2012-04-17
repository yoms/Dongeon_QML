#ifndef FIELDTYPEMODEL_H
#define FIELDTYPEMODEL_H

#include <QAbstractListModel>
#include "field.h"

class FieldTypeModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum TypesRoles {
        TypeRole = Qt::UserRole + 1,
        UrlRole
    };
    explicit FieldTypeModel(QObject *parent = 0);
    QVariant data(const QModelIndex &index, int role) const;
    int rowCount(const QModelIndex &parent) const;
    QString fieldUrlForType(int type) const;
    Field* fieldForType(int type);

signals:
    
public slots:
    
private:
    QMap<int, Field> m_fieldTypeList;
};

#endif // FIELDTYPEMODEL_H
