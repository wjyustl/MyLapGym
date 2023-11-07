/****************************************************************************
** Meta object code from reading C++ file 'RealGUI.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../../../src/Sofa/GUI/Qt/src/sofa/gui/qt/RealGUI.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'RealGUI.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_sofa__gui__qt__RealGUI_t {
    QByteArrayData data[76];
    char stringdata0[1020];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_sofa__gui__qt__RealGUI_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_sofa__gui__qt__RealGUI_t qt_meta_stringdata_sofa__gui__qt__RealGUI = {
    {
QT_MOC_LITERAL(0, 0, 22), // "sofa::gui::qt::RealGUI"
QT_MOC_LITERAL(1, 23, 6), // "reload"
QT_MOC_LITERAL(2, 30, 0), // ""
QT_MOC_LITERAL(3, 31, 8), // "newScene"
QT_MOC_LITERAL(4, 40, 7), // "newStep"
QT_MOC_LITERAL(5, 48, 4), // "quit"
QT_MOC_LITERAL(6, 53, 11), // "newRootNode"
QT_MOC_LITERAL(7, 65, 23), // "sofa::simulation::Node*"
QT_MOC_LITERAL(8, 89, 4), // "root"
QT_MOC_LITERAL(9, 94, 11), // "const char*"
QT_MOC_LITERAL(10, 106, 4), // "path"
QT_MOC_LITERAL(11, 111, 12), // "activateNode"
QT_MOC_LITERAL(12, 124, 15), // "setSleepingNode"
QT_MOC_LITERAL(13, 140, 10), // "fileSaveAs"
QT_MOC_LITERAL(14, 151, 4), // "node"
QT_MOC_LITERAL(15, 156, 13), // "lockAnimation"
QT_MOC_LITERAL(16, 170, 18), // "fileRecentlyOpened"
QT_MOC_LITERAL(17, 189, 8), // "QAction*"
QT_MOC_LITERAL(18, 198, 6), // "action"
QT_MOC_LITERAL(19, 205, 12), // "playpauseGUI"
QT_MOC_LITERAL(20, 218, 5), // "value"
QT_MOC_LITERAL(21, 224, 14), // "interactionGUI"
QT_MOC_LITERAL(22, 239, 4), // "step"
QT_MOC_LITERAL(23, 244, 8), // "emitIdle"
QT_MOC_LITERAL(24, 253, 5), // "setDt"
QT_MOC_LITERAL(25, 259, 17), // "updateDtEditState"
QT_MOC_LITERAL(26, 277, 10), // "resetScene"
QT_MOC_LITERAL(27, 288, 10), // "screenshot"
QT_MOC_LITERAL(28, 299, 16), // "showhideElements"
QT_MOC_LITERAL(29, 316, 6), // "update"
QT_MOC_LITERAL(30, 323, 22), // "updateBackgroundColour"
QT_MOC_LITERAL(31, 346, 21), // "updateBackgroundImage"
QT_MOC_LITERAL(32, 368, 9), // "resetView"
QT_MOC_LITERAL(33, 378, 8), // "saveView"
QT_MOC_LITERAL(34, 387, 8), // "setSizeW"
QT_MOC_LITERAL(35, 396, 5), // "_valW"
QT_MOC_LITERAL(36, 402, 8), // "setSizeH"
QT_MOC_LITERAL(37, 411, 5), // "_valH"
QT_MOC_LITERAL(38, 417, 5), // "clear"
QT_MOC_LITERAL(39, 423, 6), // "redraw"
QT_MOC_LITERAL(40, 430, 9), // "exportOBJ"
QT_MOC_LITERAL(41, 440, 9), // "exportMTL"
QT_MOC_LITERAL(42, 450, 9), // "dumpState"
QT_MOC_LITERAL(43, 460, 22), // "displayComputationTime"
QT_MOC_LITERAL(44, 483, 16), // "setExportGnuplot"
QT_MOC_LITERAL(45, 500, 16), // "setExportVisitor"
QT_MOC_LITERAL(46, 517, 21), // "displayProflierWindow"
QT_MOC_LITERAL(47, 539, 17), // "currentTabChanged"
QT_MOC_LITERAL(48, 557, 5), // "index"
QT_MOC_LITERAL(49, 563, 7), // "fileNew"
QT_MOC_LITERAL(50, 571, 21), // "popupOpenFileSelector"
QT_MOC_LITERAL(51, 593, 10), // "fileReload"
QT_MOC_LITERAL(52, 604, 8), // "fileSave"
QT_MOC_LITERAL(53, 613, 8), // "fileExit"
QT_MOC_LITERAL(54, 622, 9), // "helpAbout"
QT_MOC_LITERAL(55, 632, 19), // "editRecordDirectory"
QT_MOC_LITERAL(56, 652, 20), // "editGnuplotDirectory"
QT_MOC_LITERAL(57, 673, 14), // "showDocBrowser"
QT_MOC_LITERAL(58, 688, 9), // "showAbout"
QT_MOC_LITERAL(59, 698, 17), // "showPluginManager"
QT_MOC_LITERAL(60, 716, 16), // "showMouseManager"
QT_MOC_LITERAL(61, 733, 24), // "showVideoRecorderManager"
QT_MOC_LITERAL(62, 758, 19), // "showWindowDataGraph"
QT_MOC_LITERAL(63, 778, 14), // "toolsDockMoved"
QT_MOC_LITERAL(64, 793, 12), // "changeViewer"
QT_MOC_LITERAL(65, 806, 16), // "updateViewerList"
QT_MOC_LITERAL(66, 823, 32), // "onSceneGraphRefreshButtonClicked"
QT_MOC_LITERAL(67, 856, 30), // "sceneGraphViewDirtynessChanged"
QT_MOC_LITERAL(68, 887, 7), // "isDirty"
QT_MOC_LITERAL(69, 895, 28), // "sceneGraphViewLockingChanged"
QT_MOC_LITERAL(70, 924, 8), // "isLocked"
QT_MOC_LITERAL(71, 933, 17), // "propertyDockMoved"
QT_MOC_LITERAL(72, 951, 18), // "Qt::DockWidgetArea"
QT_MOC_LITERAL(73, 970, 1), // "a"
QT_MOC_LITERAL(74, 972, 19), // "appendToDataLogFile"
QT_MOC_LITERAL(75, 992, 27) // "docBrowserVisibilityChanged"

    },
    "sofa::gui::qt::RealGUI\0reload\0\0newScene\0"
    "newStep\0quit\0newRootNode\0"
    "sofa::simulation::Node*\0root\0const char*\0"
    "path\0activateNode\0setSleepingNode\0"
    "fileSaveAs\0node\0lockAnimation\0"
    "fileRecentlyOpened\0QAction*\0action\0"
    "playpauseGUI\0value\0interactionGUI\0"
    "step\0emitIdle\0setDt\0updateDtEditState\0"
    "resetScene\0screenshot\0showhideElements\0"
    "update\0updateBackgroundColour\0"
    "updateBackgroundImage\0resetView\0"
    "saveView\0setSizeW\0_valW\0setSizeH\0_valH\0"
    "clear\0redraw\0exportOBJ\0exportMTL\0"
    "dumpState\0displayComputationTime\0"
    "setExportGnuplot\0setExportVisitor\0"
    "displayProflierWindow\0currentTabChanged\0"
    "index\0fileNew\0popupOpenFileSelector\0"
    "fileReload\0fileSave\0fileExit\0helpAbout\0"
    "editRecordDirectory\0editGnuplotDirectory\0"
    "showDocBrowser\0showAbout\0showPluginManager\0"
    "showMouseManager\0showVideoRecorderManager\0"
    "showWindowDataGraph\0toolsDockMoved\0"
    "changeViewer\0updateViewerList\0"
    "onSceneGraphRefreshButtonClicked\0"
    "sceneGraphViewDirtynessChanged\0isDirty\0"
    "sceneGraphViewLockingChanged\0isLocked\0"
    "propertyDockMoved\0Qt::DockWidgetArea\0"
    "a\0appendToDataLogFile\0docBrowserVisibilityChanged"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_sofa__gui__qt__RealGUI[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      60,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,  314,    2, 0x06 /* Public */,
       3,    0,  315,    2, 0x06 /* Public */,
       4,    0,  316,    2, 0x06 /* Public */,
       5,    0,  317,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       6,    2,  318,    2, 0x0a /* Public */,
      11,    2,  323,    2, 0x0a /* Public */,
      12,    2,  328,    2, 0x0a /* Public */,
      13,    1,  333,    2, 0x0a /* Public */,
      15,    1,  336,    2, 0x0a /* Public */,
      16,    1,  339,    2, 0x0a /* Public */,
      19,    1,  342,    2, 0x0a /* Public */,
      21,    1,  345,    2, 0x0a /* Public */,
      22,    0,  348,    2, 0x0a /* Public */,
      23,    0,  349,    2, 0x0a /* Public */,
      24,    1,  350,    2, 0x0a /* Public */,
      25,    0,  353,    2, 0x0a /* Public */,
      26,    0,  354,    2, 0x0a /* Public */,
      27,    0,  355,    2, 0x0a /* Public */,
      28,    0,  356,    2, 0x0a /* Public */,
      29,    0,  357,    2, 0x0a /* Public */,
      30,    0,  358,    2, 0x0a /* Public */,
      31,    0,  359,    2, 0x0a /* Public */,
      32,    0,  360,    2, 0x0a /* Public */,
      33,    0,  361,    2, 0x0a /* Public */,
      34,    1,  362,    2, 0x0a /* Public */,
      36,    1,  365,    2, 0x0a /* Public */,
      38,    0,  368,    2, 0x0a /* Public */,
      39,    0,  369,    2, 0x0a /* Public */,
      40,    2,  370,    2, 0x0a /* Public */,
      40,    1,  375,    2, 0x2a /* Public | MethodCloned */,
      42,    1,  378,    2, 0x0a /* Public */,
      43,    1,  381,    2, 0x0a /* Public */,
      44,    1,  384,    2, 0x0a /* Public */,
      45,    1,  387,    2, 0x0a /* Public */,
      46,    1,  390,    2, 0x0a /* Public */,
      47,    1,  393,    2, 0x0a /* Public */,
      49,    0,  396,    2, 0x0a /* Public */,
      50,    0,  397,    2, 0x0a /* Public */,
      51,    0,  398,    2, 0x0a /* Public */,
      52,    0,  399,    2, 0x0a /* Public */,
      53,    0,  400,    2, 0x0a /* Public */,
      13,    0,  401,    2, 0x0a /* Public */,
      54,    0,  402,    2, 0x0a /* Public */,
      55,    0,  403,    2, 0x0a /* Public */,
      56,    0,  404,    2, 0x0a /* Public */,
      57,    0,  405,    2, 0x0a /* Public */,
      58,    0,  406,    2, 0x0a /* Public */,
      59,    0,  407,    2, 0x0a /* Public */,
      60,    0,  408,    2, 0x0a /* Public */,
      61,    0,  409,    2, 0x0a /* Public */,
      62,    0,  410,    2, 0x0a /* Public */,
      63,    0,  411,    2, 0x0a /* Public */,
      64,    0,  412,    2, 0x09 /* Protected */,
      65,    0,  413,    2, 0x09 /* Protected */,
      66,    0,  414,    2, 0x09 /* Protected */,
      67,    1,  415,    2, 0x09 /* Protected */,
      69,    1,  418,    2, 0x09 /* Protected */,
      71,    1,  421,    2, 0x09 /* Protected */,
      74,    1,  424,    2, 0x09 /* Protected */,
      75,    1,  427,    2, 0x09 /* Protected */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 7, 0x80000000 | 9,    8,   10,
    QMetaType::Void, 0x80000000 | 7, QMetaType::Bool,    2,    2,
    QMetaType::Void, 0x80000000 | 7, QMetaType::Bool,    2,    2,
    QMetaType::Void, 0x80000000 | 7,   14,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, 0x80000000 | 17,   18,
    QMetaType::Void, QMetaType::Bool,   20,
    QMetaType::Void, QMetaType::Bool,   20,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   35,
    QMetaType::Void, QMetaType::Int,   37,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 7, QMetaType::Bool,   14,   41,
    QMetaType::Void, 0x80000000 | 7,   14,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Int,   48,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,   68,
    QMetaType::Void, QMetaType::Bool,   70,
    QMetaType::Void, 0x80000000 | 72,   73,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void, QMetaType::Bool,    2,

       0        // eod
};

void sofa::gui::qt::RealGUI::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<RealGUI *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->reload(); break;
        case 1: _t->newScene(); break;
        case 2: _t->newStep(); break;
        case 3: _t->quit(); break;
        case 4: _t->newRootNode((*reinterpret_cast< sofa::simulation::Node*(*)>(_a[1])),(*reinterpret_cast< const char*(*)>(_a[2]))); break;
        case 5: _t->activateNode((*reinterpret_cast< sofa::simulation::Node*(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 6: _t->setSleepingNode((*reinterpret_cast< sofa::simulation::Node*(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 7: _t->fileSaveAs((*reinterpret_cast< sofa::simulation::Node*(*)>(_a[1]))); break;
        case 8: _t->lockAnimation((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->fileRecentlyOpened((*reinterpret_cast< QAction*(*)>(_a[1]))); break;
        case 10: _t->playpauseGUI((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 11: _t->interactionGUI((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 12: _t->step(); break;
        case 13: _t->emitIdle(); break;
        case 14: _t->setDt((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 15: _t->updateDtEditState(); break;
        case 16: _t->resetScene(); break;
        case 17: _t->screenshot(); break;
        case 18: _t->showhideElements(); break;
        case 19: _t->update(); break;
        case 20: _t->updateBackgroundColour(); break;
        case 21: _t->updateBackgroundImage(); break;
        case 22: _t->resetView(); break;
        case 23: _t->saveView(); break;
        case 24: _t->setSizeW((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 25: _t->setSizeH((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 26: _t->clear(); break;
        case 27: _t->redraw(); break;
        case 28: _t->exportOBJ((*reinterpret_cast< sofa::simulation::Node*(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 29: _t->exportOBJ((*reinterpret_cast< sofa::simulation::Node*(*)>(_a[1]))); break;
        case 30: _t->dumpState((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 31: _t->displayComputationTime((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 32: _t->setExportGnuplot((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 33: _t->setExportVisitor((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 34: _t->displayProflierWindow((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 35: _t->currentTabChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 36: _t->fileNew(); break;
        case 37: _t->popupOpenFileSelector(); break;
        case 38: _t->fileReload(); break;
        case 39: _t->fileSave(); break;
        case 40: _t->fileExit(); break;
        case 41: _t->fileSaveAs(); break;
        case 42: _t->helpAbout(); break;
        case 43: _t->editRecordDirectory(); break;
        case 44: _t->editGnuplotDirectory(); break;
        case 45: _t->showDocBrowser(); break;
        case 46: _t->showAbout(); break;
        case 47: _t->showPluginManager(); break;
        case 48: _t->showMouseManager(); break;
        case 49: _t->showVideoRecorderManager(); break;
        case 50: _t->showWindowDataGraph(); break;
        case 51: _t->toolsDockMoved(); break;
        case 52: _t->changeViewer(); break;
        case 53: _t->updateViewerList(); break;
        case 54: _t->onSceneGraphRefreshButtonClicked(); break;
        case 55: _t->sceneGraphViewDirtynessChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 56: _t->sceneGraphViewLockingChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 57: _t->propertyDockMoved((*reinterpret_cast< Qt::DockWidgetArea(*)>(_a[1]))); break;
        case 58: _t->appendToDataLogFile((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 59: _t->docBrowserVisibilityChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (RealGUI::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&RealGUI::reload)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (RealGUI::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&RealGUI::newScene)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (RealGUI::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&RealGUI::newStep)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (RealGUI::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&RealGUI::quit)) {
                *result = 3;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject sofa::gui::qt::RealGUI::staticMetaObject = { {
    QMetaObject::SuperData::link<QMainWindow::staticMetaObject>(),
    qt_meta_stringdata_sofa__gui__qt__RealGUI.data,
    qt_meta_data_sofa__gui__qt__RealGUI,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *sofa::gui::qt::RealGUI::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *sofa::gui::qt::RealGUI::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_sofa__gui__qt__RealGUI.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "Ui::GUI"))
        return static_cast< Ui::GUI*>(this);
    if (!strcmp(_clname, "sofa::gui::common::BaseGUI"))
        return static_cast< sofa::gui::common::BaseGUI*>(this);
    return QMainWindow::qt_metacast(_clname);
}

int sofa::gui::qt::RealGUI::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 60)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 60;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 60)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 60;
    }
    return _id;
}

// SIGNAL 0
void sofa::gui::qt::RealGUI::reload()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void sofa::gui::qt::RealGUI::newScene()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void sofa::gui::qt::RealGUI::newStep()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void sofa::gui::qt::RealGUI::quit()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
