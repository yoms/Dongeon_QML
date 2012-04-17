#ifndef MAPMODEL_H
#define MAPMODEL_H
#include <QAbstractItemModel>
#include <QStringList>
#include "field.h"
#include "fieldtypemodel.h"


class MapModel : public QAbstractItemModel
{
    Q_OBJECT
public:
    enum FieldRoles {
        URLRole = Qt::UserRole + 1,
        PosYRole,
        PosXRole,
        FieldTypeRole
    };

    MapModel(FieldTypeModel* fieldTypeModel, QObject *parent = 0);

    void setFields(QList<QList<Field *> > &fields);
    const Field* getField(int x, int y);

    int rowCount(const QModelIndex & parent = QModelIndex()) const;
    int columnCount(const QModelIndex & parent = QModelIndex()) const;

    Q_INVOKABLE int rowSize() const;
    Q_INVOKABLE int columnSize() const;
    Q_INVOKABLE void changeSelection(int type);
    Q_INVOKABLE void removeToSelection(int posX, int posY);
    Q_INVOKABLE void addToSelection(int posX, int posY);
    Q_INVOKABLE QString imageUrl(int posX, int posY);

    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;
    QModelIndex index(int row, int column, const QModelIndex &parent) const;
    QModelIndex parent(const QModelIndex &child) const;
signals:
    void imageChanged();
private:
    QList<QList<Field*> > m_fields;
    QList<QPair<int, int> > m_fieldSelected;
    FieldTypeModel* m_fieldTypeModel;
};

#endif //MAPMODEL_H
