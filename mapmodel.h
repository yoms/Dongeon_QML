#ifndef MAPMODEL_H
#define MAPMODEL_H
#include <QAbstractItemModel>
#include <QStringList>
#include "field.h"


class MapModel : public QAbstractItemModel
{
    Q_OBJECT
public:
    enum FieldRoles {
        URLRole = Qt::UserRole + 1,
        PosYRole,
        PosXRole
    };

    MapModel(QObject *parent = 0);

    void setFields(QList<QList<Field> > &fields);
    Field getField(int x, int y);

    int rowCount(const QModelIndex & parent = QModelIndex()) const;
    int columnCount(const QModelIndex & parent = QModelIndex()) const;
    Q_INVOKABLE int rowSize() const;
    Q_INVOKABLE int columnSize() const;

    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;
    QModelIndex index(int row, int column, const QModelIndex &parent) const;
    QModelIndex parent(const QModelIndex &child) const;

private:
    QList<QList<Field> > fields_m;
};

#endif //MAPMODEL_H
