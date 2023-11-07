/****************************************************************************
** Meta object code from reading C++ file 'QDisplayLinkWidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../../../src/Sofa/GUI/Qt/src/sofa/gui/qt/QDisplayLinkWidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QDisplayLinkWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_sofa__gui__qt__QDisplayLinkWidget_t {
    QByteArrayData data[8];
    char stringdata0[111];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QDisplayLinkWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QDisplayLinkWidget_t qt_meta_stringdata_sofa__gui__qt__QDisplayLinkWidget = {
    {
QT_MOC_LITERAL(0, 0, 33), // "sofa::gui::qt::QDisplayLinkWi..."
QT_MOC_LITERAL(1, 34, 11), // "WidgetDirty"
QT_MOC_LITERAL(2, 46, 0), // ""
QT_MOC_LITERAL(3, 47, 12), // "WidgetUpdate"
QT_MOC_LITERAL(4, 60, 10), // "LinkUpdate"
QT_MOC_LITERAL(5, 71, 14), // "LinkOwnerDirty"
QT_MOC_LITERAL(6, 86, 10), // "UpdateLink"
QT_MOC_LITERAL(7, 97, 13) // "UpdateWidgets"

    },
    "sofa::gui::qt::QDisplayLinkWidget\0"
    "WidgetDirty\0\0WidgetUpdate\0LinkUpdate\0"
    "LinkOwnerDirty\0UpdateLink\0UpdateWidgets"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QDisplayLinkWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x06 /* Public */,
       3,    0,   47,    2, 0x06 /* Public */,
       4,    0,   48,    2, 0x06 /* Public */,
       5,    1,   49,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       6,    0,   52,    2, 0x0a /* Public */,
       7,    0,   53,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    2,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void sofa::gui::qt::QDisplayLinkWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QDisplayLinkWidget *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->WidgetDirty((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->WidgetUpdate(); break;
        case 2: _t->LinkUpdate(); break;
        case 3: _t->LinkOwnerDirty((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->UpdateLink(); break;
        case 5: _t->UpdateWidgets(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (QDisplayLinkWidget::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QDisplayLinkWidget::WidgetDirty)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (QDisplayLinkWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QDisplayLinkWidget::WidgetUpdate)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (QDisplayLinkWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QDisplayLinkWidget::LinkUpdate)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (QDisplayLinkWidget::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QDisplayLinkWidget::LinkOwnerDirty)) {
                *result = 3;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QDisplayLinkWidget::staticMetaObject = { {
    QMetaObject::SuperData::link<QGroupBox::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QDisplayLinkWidget.data,
    qt_meta_data_sofa__gui__qt__QDisplayLinkWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QDisplayLinkWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QDisplayLinkWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QDisplayLinkWidget.stringdata0))
        return static_cast<void*>(this);
    return QGroupBox::qt_metacast(_clname);
}

int sofa::gui::qt::QDisplayLinkWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGroupBox::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void sofa::gui::qt::QDisplayLinkWidget::WidgetDirty(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void sofa::gui::qt::QDisplayLinkWidget::WidgetUpdate()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void sofa::gui::qt::QDisplayLinkWidget::LinkUpdate()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void sofa::gui::qt::QDisplayLinkWidget::LinkOwnerDirty(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
struct qt_meta_stringdata_sofa__gui__qt__QLinkSimpleEdit_t {
    QByteArrayData data[1];
    char stringdata0[31];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__QLinkSimpleEdit_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__QLinkSimpleEdit_t qt_meta_stringdata_sofa__gui__qt__QLinkSimpleEdit = {
    {
QT_MOC_LITERAL(0, 0, 30) // "sofa::gui::qt::QLinkSimpleEdit"

    },
    "sofa::gui::qt::QLinkSimpleEdit"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__QLinkSimpleEdit[] = {

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

void sofa::gui::qt::QLinkSimpleEdit::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    (void)_o;
    (void)_id;
    (void)_c;
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::QLinkSimpleEdit::staticMetaObject = { {
    QMetaObject::SuperData::link<LinkWidget::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__QLinkSimpleEdit.data,
    qt_meta_data_sofa__gui__qt__QLinkSimpleEdit,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::QLinkSimpleEdit::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::QLinkSimpleEdit::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__QLinkSimpleEdit.stringdata0))
        return static_cast<void*>(this);
    return LinkWidget::qt_metacast(_clname);
}

int sofa::gui::qt::QLinkSimpleEdit::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = LinkWidget::qt_metacall(_c, _id, _a);
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
