/****************************************************************************
** Meta object code from reading C++ file 'GenGraphForm.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../../../src/Sofa/GUI/Qt/src/sofa/gui/qt/GenGraphForm.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'GenGraphForm.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_sofa__gui__qt__GenGraphForm_t {
    QByteArrayData data[16];
    char stringdata0[188];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__GenGraphForm_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__GenGraphForm_t qt_meta_stringdata_sofa__gui__qt__GenGraphForm = {
    {
QT_MOC_LITERAL(0, 0, 27), // "sofa::gui::qt::GenGraphForm"
QT_MOC_LITERAL(1, 28, 6), // "change"
QT_MOC_LITERAL(2, 35, 0), // ""
QT_MOC_LITERAL(3, 36, 8), // "doBrowse"
QT_MOC_LITERAL(4, 45, 8), // "doExport"
QT_MOC_LITERAL(5, 54, 9), // "doDisplay"
QT_MOC_LITERAL(6, 64, 7), // "doClose"
QT_MOC_LITERAL(7, 72, 12), // "taskFinished"
QT_MOC_LITERAL(8, 85, 8), // "exitCode"
QT_MOC_LITERAL(9, 94, 20), // "QProcess::ExitStatus"
QT_MOC_LITERAL(10, 115, 10), // "exitStatus"
QT_MOC_LITERAL(11, 126, 9), // "taskError"
QT_MOC_LITERAL(12, 136, 22), // "QProcess::ProcessError"
QT_MOC_LITERAL(13, 159, 5), // "error"
QT_MOC_LITERAL(14, 165, 12), // "changeFilter"
QT_MOC_LITERAL(15, 178, 9) // "setFilter"

    },
    "sofa::gui::qt::GenGraphForm\0change\0\0"
    "doBrowse\0doExport\0doDisplay\0doClose\0"
    "taskFinished\0exitCode\0QProcess::ExitStatus\0"
    "exitStatus\0taskError\0QProcess::ProcessError\0"
    "error\0changeFilter\0setFilter"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__GenGraphForm[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x0a /* Public */,
       3,    0,   60,    2, 0x0a /* Public */,
       4,    0,   61,    2, 0x0a /* Public */,
       5,    0,   62,    2, 0x0a /* Public */,
       6,    0,   63,    2, 0x0a /* Public */,
       7,    2,   64,    2, 0x0a /* Public */,
      11,    1,   69,    2, 0x0a /* Public */,
      14,    0,   72,    2, 0x0a /* Public */,
      15,    0,   73,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, 0x80000000 | 9,    8,   10,
    QMetaType::Void, 0x80000000 | 12,   13,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void sofa::gui::qt::GenGraphForm::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<GenGraphForm *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->change(); break;
        case 1: _t->doBrowse(); break;
        case 2: _t->doExport(); break;
        case 3: _t->doDisplay(); break;
        case 4: _t->doClose(); break;
        case 5: _t->taskFinished((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QProcess::ExitStatus(*)>(_a[2]))); break;
        case 6: _t->taskError((*reinterpret_cast< QProcess::ProcessError(*)>(_a[1]))); break;
        case 7: _t->changeFilter(); break;
        case 8: _t->setFilter(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::GenGraphForm::staticMetaObject = { {
    QMetaObject::SuperData::link<QDialog::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__GenGraphForm.data,
    qt_meta_data_sofa__gui__qt__GenGraphForm,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::GenGraphForm::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::GenGraphForm::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__GenGraphForm.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "Ui_BaseGenGraphForm"))
        return static_cast< Ui_BaseGenGraphForm*>(this);
    return QDialog::qt_metacast(_clname);
}

int sofa::gui::qt::GenGraphForm::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
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
QT_WARNING_POP
QT_END_MOC_NAMESPACE
