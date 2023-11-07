/****************************************************************************
** Meta object code from reading C++ file 'QRGBAColorPicker.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../../../src/Sofa/GUI/Qt/src/sofa/gui/qt/QRGBAColorPicker.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QRGBAColorPicker.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_sofa__gui__qt__qrgbacolorpicker_h__QRGBAColorPicker_t {
    QByteArrayData data[6];
    char stringdata0[116];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__qrgbacolorpicker_h__QRGBAColorPicker_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__qrgbacolorpicker_h__QRGBAColorPicker_t qt_meta_stringdata_sofa__gui__qt__qrgbacolorpicker_h__QRGBAColorPicker = {
    {
QT_MOC_LITERAL(0, 0, 51), // "sofa::gui::qt::qrgbacolorpick..."
QT_MOC_LITERAL(1, 52, 10), // "hasChanged"
QT_MOC_LITERAL(2, 63, 0), // ""
QT_MOC_LITERAL(3, 64, 15), // "updateRGBAColor"
QT_MOC_LITERAL(4, 80, 17), // "redrawColorButton"
QT_MOC_LITERAL(5, 98, 17) // "raiseQColorDialog"

    },
    "sofa::gui::qt::qrgbacolorpicker_h::QRGBAColorPicker\0"
    "hasChanged\0\0updateRGBAColor\0"
    "redrawColorButton\0raiseQColorDialog"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__qrgbacolorpicker_h__QRGBAColorPicker[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       3,    0,   35,    2, 0x09 /* Protected */,
       4,    0,   36,    2, 0x09 /* Protected */,
       5,    0,   37,    2, 0x09 /* Protected */,

 // signals: parameters
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void sofa::gui::qt::qrgbacolorpicker_h::QRGBAColorPicker::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QRGBAColorPicker *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->hasChanged(); break;
        case 1: _t->updateRGBAColor(); break;
        case 2: _t->redrawColorButton(); break;
        case 3: _t->raiseQColorDialog(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (QRGBAColorPicker::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QRGBAColorPicker::hasChanged)) {
                *result = 0;
                return;
            }
        }
    }
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::qrgbacolorpicker_h::QRGBAColorPicker::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__qrgbacolorpicker_h__QRGBAColorPicker.data,
    qt_meta_data_sofa__gui__qt__qrgbacolorpicker_h__QRGBAColorPicker,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::qrgbacolorpicker_h::QRGBAColorPicker::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::qrgbacolorpicker_h::QRGBAColorPicker::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__qrgbacolorpicker_h__QRGBAColorPicker.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int sofa::gui::qt::qrgbacolorpicker_h::QRGBAColorPicker::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void sofa::gui::qt::qrgbacolorpicker_h::QRGBAColorPicker::hasChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
