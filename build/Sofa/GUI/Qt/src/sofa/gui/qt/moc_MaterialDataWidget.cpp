/****************************************************************************
** Meta object code from reading C++ file 'MaterialDataWidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../../../src/Sofa/GUI/Qt/src/sofa/gui/qt/MaterialDataWidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MaterialDataWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__MaterialDataWidget_t {
    QByteArrayData data[1];
    char stringdata0[56];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__MaterialDataWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__MaterialDataWidget_t qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__MaterialDataWidget = {
    {
QT_MOC_LITERAL(0, 0, 55) // "sofa::gui::qt::materialdatawi..."

    },
    "sofa::gui::qt::materialdatawidget_h::MaterialDataWidget"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__materialdatawidget_h__MaterialDataWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

void sofa::gui::qt::materialdatawidget_h::MaterialDataWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    (void)_o;
    (void)_id;
    (void)_c;
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::materialdatawidget_h::MaterialDataWidget::staticMetaObject = { {
    QMetaObject::SuperData::link<TDataWidget<Material>::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__MaterialDataWidget.data,
    qt_meta_data_sofa__gui__qt__materialdatawidget_h__MaterialDataWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::materialdatawidget_h::MaterialDataWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::materialdatawidget_h::MaterialDataWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__MaterialDataWidget.stringdata0))
        return static_cast<void*>(this);
    return TDataWidget<Material>::qt_metacast(_clname);
}

int sofa::gui::qt::materialdatawidget_h::MaterialDataWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = TDataWidget<Material>::qt_metacall(_c, _id, _a);
    return _id;
}
struct qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__VectorMaterialDataWidget_t {
    QByteArrayData data[3];
    char stringdata0[78];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__VectorMaterialDataWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__VectorMaterialDataWidget_t qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__VectorMaterialDataWidget = {
    {
QT_MOC_LITERAL(0, 0, 61), // "sofa::gui::qt::materialdatawi..."
QT_MOC_LITERAL(1, 62, 14), // "changeMaterial"
QT_MOC_LITERAL(2, 77, 0) // ""

    },
    "sofa::gui::qt::materialdatawidget_h::VectorMaterialDataWidget\0"
    "changeMaterial\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__materialdatawidget_h__VectorMaterialDataWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   19,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    2,

       0        // eod
};

void sofa::gui::qt::materialdatawidget_h::VectorMaterialDataWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<VectorMaterialDataWidget *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->changeMaterial((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::materialdatawidget_h::VectorMaterialDataWidget::staticMetaObject = { {
    QMetaObject::SuperData::link<TDataWidget<VectorMaterial>::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__VectorMaterialDataWidget.data,
    qt_meta_data_sofa__gui__qt__materialdatawidget_h__VectorMaterialDataWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::materialdatawidget_h::VectorMaterialDataWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::materialdatawidget_h::VectorMaterialDataWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__materialdatawidget_h__VectorMaterialDataWidget.stringdata0))
        return static_cast<void*>(this);
    return TDataWidget<VectorMaterial>::qt_metacast(_clname);
}

int sofa::gui::qt::materialdatawidget_h::VectorMaterialDataWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = TDataWidget<VectorMaterial>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
