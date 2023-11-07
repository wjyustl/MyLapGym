/****************************************************************************
** Meta object code from reading C++ file 'QTabulationModifyObject.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../../../src/Sofa/GUI/Qt/src/sofa/gui/qt/QTabulationModifyObject.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QTabulationModifyObject.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_sofa__gui__qt__QTabulationModifyObject_t {
    QByteArrayData data[12];
    char stringdata0[191];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QTabulationModifyObject_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QTabulationModifyObject_t qt_meta_stringdata_sofa__gui__qt__QTabulationModifyObject = {
    {
QT_MOC_LITERAL(0, 0, 38), // "sofa::gui::qt::QTabulationMod..."
QT_MOC_LITERAL(1, 39, 11), // "UpdateDatas"
QT_MOC_LITERAL(2, 51, 0), // ""
QT_MOC_LITERAL(3, 52, 17), // "UpdateDataWidgets"
QT_MOC_LITERAL(4, 70, 8), // "TabDirty"
QT_MOC_LITERAL(5, 79, 20), // "nodeNameModification"
QT_MOC_LITERAL(6, 100, 17), // "simulation::Node*"
QT_MOC_LITERAL(7, 118, 11), // "setTabDirty"
QT_MOC_LITERAL(8, 130, 15), // "updateDataValue"
QT_MOC_LITERAL(9, 146, 17), // "updateWidgetValue"
QT_MOC_LITERAL(10, 164, 16), // "dataValueChanged"
QT_MOC_LITERAL(11, 181, 9) // "dataValue"

    },
    "sofa::gui::qt::QTabulationModifyObject\0"
    "UpdateDatas\0\0UpdateDataWidgets\0TabDirty\0"
    "nodeNameModification\0simulation::Node*\0"
    "setTabDirty\0updateDataValue\0"
    "updateWidgetValue\0dataValueChanged\0"
    "dataValue"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QTabulationModifyObject[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x06 /* Public */,
       3,    0,   60,    2, 0x06 /* Public */,
       4,    1,   61,    2, 0x06 /* Public */,
       5,    1,   64,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    1,   67,    2, 0x0a /* Public */,
       7,    0,   70,    2, 0x2a /* Public | MethodCloned */,
       8,    0,   71,    2, 0x0a /* Public */,
       9,    0,   72,    2, 0x0a /* Public */,
      10,    1,   73,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, 0x80000000 | 6,    2,

 // slots: parameters
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   11,

       0        // eod
};

void sofa::gui::qt::QTabulationModifyObject::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QTabulationModifyObject *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->UpdateDatas(); break;
        case 1: _t->UpdateDataWidgets(); break;
        case 2: _t->TabDirty((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->nodeNameModification((*reinterpret_cast< simulation::Node*(*)>(_a[1]))); break;
        case 4: _t->setTabDirty((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->setTabDirty(); break;
        case 6: _t->updateDataValue(); break;
        case 7: _t->updateWidgetValue(); break;
        case 8: _t->dataValueChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (QTabulationModifyObject::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QTabulationModifyObject::UpdateDatas)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (QTabulationModifyObject::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QTabulationModifyObject::UpdateDataWidgets)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (QTabulationModifyObject::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QTabulationModifyObject::TabDirty)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (QTabulationModifyObject::*)(simulation::Node * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QTabulationModifyObject::nodeNameModification)) {
                *result = 3;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QTabulationModifyObject::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QTabulationModifyObject.data,
    qt_meta_data_sofa__gui__qt__QTabulationModifyObject,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QTabulationModifyObject::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QTabulationModifyObject::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QTabulationModifyObject.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int sofa::gui::qt::QTabulationModifyObject::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}

// SIGNAL 0
void sofa::gui::qt::QTabulationModifyObject::UpdateDatas()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void sofa::gui::qt::QTabulationModifyObject::UpdateDataWidgets()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void sofa::gui::qt::QTabulationModifyObject::TabDirty(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void sofa::gui::qt::QTabulationModifyObject::nodeNameModification(simulation::Node * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
