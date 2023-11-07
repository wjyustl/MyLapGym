/****************************************************************************
** Meta object code from reading C++ file 'QMouseOperations.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../../../src/Sofa/GUI/Qt/src/sofa/gui/qt/QMouseOperations.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QMouseOperations.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_sofa__gui__qt__QMouseOperation_t {
    QByteArrayData data[3];
    char stringdata0[44];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QMouseOperation_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QMouseOperation_t qt_meta_stringdata_sofa__gui__qt__QMouseOperation = {
    {
QT_MOC_LITERAL(0, 0, 30), // "sofa::gui::qt::QMouseOperation"
QT_MOC_LITERAL(1, 31, 11), // "WidgetDirty"
QT_MOC_LITERAL(2, 43, 0) // ""

    },
    "sofa::gui::qt::QMouseOperation\0"
    "WidgetDirty\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QMouseOperation[] = {

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
       1,    1,   19,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::Bool,    2,

       0        // eod
};

void sofa::gui::qt::QMouseOperation::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QMouseOperation *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->WidgetDirty((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QMouseOperation::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QMouseOperation.data,
    qt_meta_data_sofa__gui__qt__QMouseOperation,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QMouseOperation::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QMouseOperation::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QMouseOperation.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int sofa::gui::qt::QMouseOperation::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
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
struct qt_meta_stringdata_sofa__gui__qt__QAttachOperation_t {
    QByteArrayData data[1];
    char stringdata0[32];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QAttachOperation_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QAttachOperation_t qt_meta_stringdata_sofa__gui__qt__QAttachOperation = {
    {
QT_MOC_LITERAL(0, 0, 31) // "sofa::gui::qt::QAttachOperation"

    },
    "sofa::gui::qt::QAttachOperation"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QAttachOperation[] = {

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

void sofa::gui::qt::QAttachOperation::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    (void)_o;
    (void)_id;
    (void)_c;
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QAttachOperation::staticMetaObject = { {
    QMetaObject::SuperData::link<QMouseOperation::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QAttachOperation.data,
    qt_meta_data_sofa__gui__qt__QAttachOperation,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QAttachOperation::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QAttachOperation::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QAttachOperation.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "common::AttachOperation"))
        return static_cast< common::AttachOperation*>(this);
    return QMouseOperation::qt_metacast(_clname);
}

int sofa::gui::qt::QAttachOperation::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMouseOperation::qt_metacall(_c, _id, _a);
    return _id;
}
struct qt_meta_stringdata_sofa__gui__qt__QAddRecordedCameraOperation_t {
    QByteArrayData data[1];
    char stringdata0[43];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QAddRecordedCameraOperation_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QAddRecordedCameraOperation_t qt_meta_stringdata_sofa__gui__qt__QAddRecordedCameraOperation = {
    {
QT_MOC_LITERAL(0, 0, 42) // "sofa::gui::qt::QAddRecordedCa..."

    },
    "sofa::gui::qt::QAddRecordedCameraOperation"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QAddRecordedCameraOperation[] = {

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

void sofa::gui::qt::QAddRecordedCameraOperation::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    (void)_o;
    (void)_id;
    (void)_c;
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QAddRecordedCameraOperation::staticMetaObject = { {
    QMetaObject::SuperData::link<QMouseOperation::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QAddRecordedCameraOperation.data,
    qt_meta_data_sofa__gui__qt__QAddRecordedCameraOperation,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QAddRecordedCameraOperation::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QAddRecordedCameraOperation::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QAddRecordedCameraOperation.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "common::AddRecordedCameraOperation"))
        return static_cast< common::AddRecordedCameraOperation*>(this);
    return QMouseOperation::qt_metacast(_clname);
}

int sofa::gui::qt::QAddRecordedCameraOperation::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMouseOperation::qt_metacall(_c, _id, _a);
    return _id;
}
struct qt_meta_stringdata_sofa__gui__qt__QStartNavigationOperation_t {
    QByteArrayData data[1];
    char stringdata0[41];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QStartNavigationOperation_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QStartNavigationOperation_t qt_meta_stringdata_sofa__gui__qt__QStartNavigationOperation = {
    {
QT_MOC_LITERAL(0, 0, 40) // "sofa::gui::qt::QStartNavigati..."

    },
    "sofa::gui::qt::QStartNavigationOperation"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QStartNavigationOperation[] = {

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

void sofa::gui::qt::QStartNavigationOperation::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    (void)_o;
    (void)_id;
    (void)_c;
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QStartNavigationOperation::staticMetaObject = { {
    QMetaObject::SuperData::link<QMouseOperation::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QStartNavigationOperation.data,
    qt_meta_data_sofa__gui__qt__QStartNavigationOperation,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QStartNavigationOperation::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QStartNavigationOperation::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QStartNavigationOperation.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "common::StartNavigationOperation"))
        return static_cast< common::StartNavigationOperation*>(this);
    return QMouseOperation::qt_metacast(_clname);
}

int sofa::gui::qt::QStartNavigationOperation::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMouseOperation::qt_metacall(_c, _id, _a);
    return _id;
}
struct qt_meta_stringdata_sofa__gui__qt__QFixOperation_t {
    QByteArrayData data[1];
    char stringdata0[29];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QFixOperation_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QFixOperation_t qt_meta_stringdata_sofa__gui__qt__QFixOperation = {
    {
QT_MOC_LITERAL(0, 0, 28) // "sofa::gui::qt::QFixOperation"

    },
    "sofa::gui::qt::QFixOperation"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QFixOperation[] = {

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

void sofa::gui::qt::QFixOperation::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    (void)_o;
    (void)_id;
    (void)_c;
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QFixOperation::staticMetaObject = { {
    QMetaObject::SuperData::link<QMouseOperation::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QFixOperation.data,
    qt_meta_data_sofa__gui__qt__QFixOperation,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QFixOperation::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QFixOperation::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QFixOperation.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "common::FixOperation"))
        return static_cast< common::FixOperation*>(this);
    return QMouseOperation::qt_metacast(_clname);
}

int sofa::gui::qt::QFixOperation::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMouseOperation::qt_metacall(_c, _id, _a);
    return _id;
}
struct qt_meta_stringdata_sofa__gui__qt__QInciseOperation_t {
    QByteArrayData data[6];
    char stringdata0[79];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QInciseOperation_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QInciseOperation_t qt_meta_stringdata_sofa__gui__qt__QInciseOperation = {
    {
QT_MOC_LITERAL(0, 0, 31), // "sofa::gui::qt::QInciseOperation"
QT_MOC_LITERAL(1, 32, 12), // "setEnableBox"
QT_MOC_LITERAL(2, 45, 0), // ""
QT_MOC_LITERAL(3, 46, 1), // "i"
QT_MOC_LITERAL(4, 48, 17), // "setFinishIncision"
QT_MOC_LITERAL(5, 66, 12) // "setkeepPoint"

    },
    "sofa::gui::qt::QInciseOperation\0"
    "setEnableBox\0\0i\0setFinishIncision\0"
    "setkeepPoint"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QInciseOperation[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x0a /* Public */,
       4,    1,   32,    2, 0x0a /* Public */,
       5,    1,   35,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::Bool,    3,
    QMetaType::Void, QMetaType::Bool,    3,
    QMetaType::Void, QMetaType::Bool,    3,

       0        // eod
};

void sofa::gui::qt::QInciseOperation::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QInciseOperation *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->setEnableBox((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->setFinishIncision((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 2: _t->setkeepPoint((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QInciseOperation::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QInciseOperation.data,
    qt_meta_data_sofa__gui__qt__QInciseOperation,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QInciseOperation::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QInciseOperation::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QInciseOperation.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "common::InciseOperation"))
        return static_cast< common::InciseOperation*>(this);
    return QWidget::qt_metacast(_clname);
}

int sofa::gui::qt::QInciseOperation::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
struct qt_meta_stringdata_sofa__gui__qt__QTopologyOperation_t {
    QByteArrayData data[4];
    char stringdata0[50];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QTopologyOperation_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QTopologyOperation_t qt_meta_stringdata_sofa__gui__qt__QTopologyOperation = {
    {
QT_MOC_LITERAL(0, 0, 33), // "sofa::gui::qt::QTopologyOpera..."
QT_MOC_LITERAL(1, 34, 12), // "setEnableBox"
QT_MOC_LITERAL(2, 47, 0), // ""
QT_MOC_LITERAL(3, 48, 1) // "i"

    },
    "sofa::gui::qt::QTopologyOperation\0"
    "setEnableBox\0\0i"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QTopologyOperation[] = {

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
       1,    1,   19,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    3,

       0        // eod
};

void sofa::gui::qt::QTopologyOperation::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QTopologyOperation *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->setEnableBox((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QTopologyOperation::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QTopologyOperation.data,
    qt_meta_data_sofa__gui__qt__QTopologyOperation,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QTopologyOperation::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QTopologyOperation::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QTopologyOperation.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "common::TopologyOperation"))
        return static_cast< common::TopologyOperation*>(this);
    return QWidget::qt_metacast(_clname);
}

int sofa::gui::qt::QTopologyOperation::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
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
struct qt_meta_stringdata_sofa__gui__qt__QAddSutureOperation_t {
    QByteArrayData data[1];
    char stringdata0[35];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QAddSutureOperation_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QAddSutureOperation_t qt_meta_stringdata_sofa__gui__qt__QAddSutureOperation = {
    {
QT_MOC_LITERAL(0, 0, 34) // "sofa::gui::qt::QAddSutureOper..."

    },
    "sofa::gui::qt::QAddSutureOperation"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QAddSutureOperation[] = {

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

void sofa::gui::qt::QAddSutureOperation::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    (void)_o;
    (void)_id;
    (void)_c;
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QAddSutureOperation::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QAddSutureOperation.data,
    qt_meta_data_sofa__gui__qt__QAddSutureOperation,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QAddSutureOperation::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QAddSutureOperation::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QAddSutureOperation.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "common::AddSutureOperation"))
        return static_cast< common::AddSutureOperation*>(this);
    return QWidget::qt_metacast(_clname);
}

int sofa::gui::qt::QAddSutureOperation::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
