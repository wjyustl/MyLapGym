/********************************************************************************
** Form generated from reading UI file 'GUI.ui'
**
** Created by: Qt User Interface Compiler version 5.15.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_GUI_H
#define UI_GUI_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDockWidget>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QTextBrowser>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include <sofa/gui/qt/config.h>

QT_BEGIN_NAMESPACE

class Ui_GUI
{
public:
    QAction *fileNewAction;
    QAction *fileOpenAction;
    QAction *fileReloadAction;
    QAction *fileSaveAction;
    QAction *fileSaveAsAction;
    QAction *fileExitAction;
    QAction *helpAboutAction;
    QAction *ViewerAction;
    QAction *editRecordDirectoryAction;
    QAction *editGnuplotDirectoryAction;
    QAction *PluginManagerAction;
    QAction *MouseManagerAction;
    QAction *Action;
    QAction *TestAction;
    QAction *VideoRecorderManagerAction;
    QAction *helpShowDocBrowser;
    QAction *DataGraphAction;
    QWidget *widget;
    QVBoxLayout *vboxLayout;
    QHBoxLayout *mainWidgetLayout;
    QMenuBar *menubar;
    QMenu *fileMenu;
    QMenu *editMenu;
    QMenu *View;
    QMenu *helpMenu;
    QDockWidget *dockWidget;
    QWidget *dockWidgetContents;
    QHBoxLayout *horizontalLayout;
    QWidget *optionTabs;
    QVBoxLayout *_13;
    QGridLayout *_14;
    QPushButton *ResetViewButton;
    QPushButton *startButton;
    QPushButton *SaveViewButton;
    QPushButton *ReloadSceneButton;
    QPushButton *stepButton;
    QPushButton *screenshotButton;
    QHBoxLayout *_15;
    QLabel *dtLabel;
    QLineEdit *dtEdit;
    QCheckBox *realTimeCheckBox;
    QSpacerItem *spacer_tab;
    QTabWidget *tabs;
    QWidget *TabGraph;
    QVBoxLayout *_19;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *ExportGraphButton;
    QPushButton *CollapseAllButton;
    QPushButton *ExpandAllButton;
    QPushButton *sceneGraphRefreshToggleButton;
    QWidget *tabView;
    QGridLayout *gridLayout1;
    QGridLayout *_17;
    QGridLayout *_18;
    QSpacerItem *spacer8;
    QLabel *pixmapLabel1;
    QSpacerItem *spacer7;
    QWidget *TabVisualGraph;
    QVBoxLayout *_20;
    QPushButton *ExportVisualGraphButton;
    QWidget *TabStats;
    QVBoxLayout *_21;
    QCheckBox *dumpStateCheckBox;
    QCheckBox *displayComputationTimeCheckBox;
    QCheckBox *exportGnuplotFilesCheckbox;
    QCheckBox *exportVisitorCheckbox;
    QCheckBox *displayTimeProfiler;
    QWidget *TabPage;
    QVBoxLayout *_22;
    QHBoxLayout *_23;
    QSpacerItem *spacer5_3_3;
    QSpinBox *sizeW;
    QLabel *textLabel_sizeX;
    QSpinBox *sizeH;
    QSpacerItem *spacer5_3_2_3;
    QTextBrowser *textEdit1;

    void setupUi(QMainWindow *GUI)
    {
        if (GUI->objectName().isEmpty())
            GUI->setObjectName(QString::fromUtf8("GUI"));
        GUI->resize(800, 600);
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Minimum);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(GUI->sizePolicy().hasHeightForWidth());
        GUI->setSizePolicy(sizePolicy);
        GUI->setMinimumSize(QSize(210, 481));
        GUI->setAcceptDrops(true);
        fileNewAction = new QAction(GUI);
        fileNewAction->setObjectName(QString::fromUtf8("fileNewAction"));
        QIcon icon;
        icon.addFile(QString::fromUtf8("image2"), QSize(), QIcon::Normal, QIcon::Off);
        fileNewAction->setIcon(icon);
        fileNewAction->setProperty("name", QVariant(QByteArray("fileNewAction")));
        fileOpenAction = new QAction(GUI);
        fileOpenAction->setObjectName(QString::fromUtf8("fileOpenAction"));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8("image3"), QSize(), QIcon::Normal, QIcon::Off);
        fileOpenAction->setIcon(icon1);
        fileOpenAction->setProperty("name", QVariant(QByteArray("fileOpenAction")));
        fileReloadAction = new QAction(GUI);
        fileReloadAction->setObjectName(QString::fromUtf8("fileReloadAction"));
        fileReloadAction->setProperty("name", QVariant(QByteArray("fileReloadAction")));
        fileSaveAction = new QAction(GUI);
        fileSaveAction->setObjectName(QString::fromUtf8("fileSaveAction"));
        fileSaveAction->setEnabled(true);
        QIcon icon2;
        icon2.addFile(QString::fromUtf8("image4"), QSize(), QIcon::Normal, QIcon::Off);
        fileSaveAction->setIcon(icon2);
        fileSaveAction->setProperty("name", QVariant(QByteArray("fileSaveAction")));
        fileSaveAsAction = new QAction(GUI);
        fileSaveAsAction->setObjectName(QString::fromUtf8("fileSaveAsAction"));
        fileSaveAsAction->setProperty("name", QVariant(QByteArray("fileSaveAsAction")));
        fileExitAction = new QAction(GUI);
        fileExitAction->setObjectName(QString::fromUtf8("fileExitAction"));
        fileExitAction->setProperty("name", QVariant(QByteArray("fileExitAction")));
        helpAboutAction = new QAction(GUI);
        helpAboutAction->setObjectName(QString::fromUtf8("helpAboutAction"));
        helpAboutAction->setEnabled(true);
        helpAboutAction->setIconVisibleInMenu(false);
        helpAboutAction->setProperty("name", QVariant(QByteArray("helpAboutAction")));
        ViewerAction = new QAction(GUI);
        ViewerAction->setObjectName(QString::fromUtf8("ViewerAction"));
        ViewerAction->setProperty("name", QVariant(QByteArray("ViewerAction")));
        editRecordDirectoryAction = new QAction(GUI);
        editRecordDirectoryAction->setObjectName(QString::fromUtf8("editRecordDirectoryAction"));
        editRecordDirectoryAction->setProperty("name", QVariant(QByteArray("editRecordDirectoryAction")));
        editGnuplotDirectoryAction = new QAction(GUI);
        editGnuplotDirectoryAction->setObjectName(QString::fromUtf8("editGnuplotDirectoryAction"));
        editGnuplotDirectoryAction->setProperty("name", QVariant(QByteArray("editGnuplotDirectoryAction")));
        PluginManagerAction = new QAction(GUI);
        PluginManagerAction->setObjectName(QString::fromUtf8("PluginManagerAction"));
        PluginManagerAction->setProperty("name", QVariant(QByteArray("PluginManagerAction")));
        MouseManagerAction = new QAction(GUI);
        MouseManagerAction->setObjectName(QString::fromUtf8("MouseManagerAction"));
        MouseManagerAction->setProperty("name", QVariant(QByteArray("MouseManagerAction")));
        Action = new QAction(GUI);
        Action->setObjectName(QString::fromUtf8("Action"));
        Action->setProperty("name", QVariant(QByteArray("Action")));
        TestAction = new QAction(GUI);
        TestAction->setObjectName(QString::fromUtf8("TestAction"));
        TestAction->setProperty("name", QVariant(QByteArray("TestAction")));
        VideoRecorderManagerAction = new QAction(GUI);
        VideoRecorderManagerAction->setObjectName(QString::fromUtf8("VideoRecorderManagerAction"));
        VideoRecorderManagerAction->setProperty("name", QVariant(QByteArray("VideoRecorderManagerAction")));
        helpShowDocBrowser = new QAction(GUI);
        helpShowDocBrowser->setObjectName(QString::fromUtf8("helpShowDocBrowser"));
        helpShowDocBrowser->setCheckable(false);
        helpShowDocBrowser->setIconVisibleInMenu(false);
        DataGraphAction = new QAction(GUI);
        DataGraphAction->setObjectName(QString::fromUtf8("DataGraphAction"));
        widget = new QWidget(GUI);
        widget->setObjectName(QString::fromUtf8("widget"));
        QSizePolicy sizePolicy1(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(widget->sizePolicy().hasHeightForWidth());
        widget->setSizePolicy(sizePolicy1);
        widget->setMinimumSize(QSize(0, 0));
        vboxLayout = new QVBoxLayout(widget);
        vboxLayout->setSpacing(2);
        vboxLayout->setContentsMargins(5, 5, 5, 5);
        vboxLayout->setObjectName(QString::fromUtf8("vboxLayout"));
        vboxLayout->setSizeConstraint(QLayout::SetNoConstraint);
        vboxLayout->setContentsMargins(0, 0, 0, 0);
        mainWidgetLayout = new QHBoxLayout();
        mainWidgetLayout->setSpacing(2);
        mainWidgetLayout->setObjectName(QString::fromUtf8("mainWidgetLayout"));

        vboxLayout->addLayout(mainWidgetLayout);

        GUI->setCentralWidget(widget);
        menubar = new QMenuBar(GUI);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setEnabled(true);
        menubar->setGeometry(QRect(0, 0, 800, 22));
        fileMenu = new QMenu(menubar);
        fileMenu->setObjectName(QString::fromUtf8("fileMenu"));
        editMenu = new QMenu(menubar);
        editMenu->setObjectName(QString::fromUtf8("editMenu"));
        View = new QMenu(menubar);
        View->setObjectName(QString::fromUtf8("View"));
        helpMenu = new QMenu(menubar);
        helpMenu->setObjectName(QString::fromUtf8("helpMenu"));
        GUI->setMenuBar(menubar);
        dockWidget = new QDockWidget(GUI);
        dockWidget->setObjectName(QString::fromUtf8("dockWidget"));
        QSizePolicy sizePolicy2(QSizePolicy::Minimum, QSizePolicy::Expanding);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(dockWidget->sizePolicy().hasHeightForWidth());
        dockWidget->setSizePolicy(sizePolicy2);
        dockWidget->setMinimumSize(QSize(200, 551));
        dockWidgetContents = new QWidget();
        dockWidgetContents->setObjectName(QString::fromUtf8("dockWidgetContents"));
        sizePolicy2.setHeightForWidth(dockWidgetContents->sizePolicy().hasHeightForWidth());
        dockWidgetContents->setSizePolicy(sizePolicy2);
        dockWidgetContents->setMinimumSize(QSize(200, 0));
        horizontalLayout = new QHBoxLayout(dockWidgetContents);
        horizontalLayout->setSpacing(2);
        horizontalLayout->setContentsMargins(5, 5, 5, 5);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        optionTabs = new QWidget(dockWidgetContents);
        optionTabs->setObjectName(QString::fromUtf8("optionTabs"));
        optionTabs->setEnabled(true);
        sizePolicy1.setHeightForWidth(optionTabs->sizePolicy().hasHeightForWidth());
        optionTabs->setSizePolicy(sizePolicy1);
        _13 = new QVBoxLayout(optionTabs);
        _13->setSpacing(2);
        _13->setContentsMargins(5, 5, 5, 5);
        _13->setObjectName(QString::fromUtf8("_13"));
        _13->setSizeConstraint(QLayout::SetNoConstraint);
        _14 = new QGridLayout();
        _14->setSpacing(2);
        _14->setObjectName(QString::fromUtf8("_14"));
        _14->setSizeConstraint(QLayout::SetNoConstraint);
        ResetViewButton = new QPushButton(optionTabs);
        ResetViewButton->setObjectName(QString::fromUtf8("ResetViewButton"));
        ResetViewButton->setEnabled(true);

        _14->addWidget(ResetViewButton, 2, 0, 1, 1);

        startButton = new QPushButton(optionTabs);
        startButton->setObjectName(QString::fromUtf8("startButton"));
        startButton->setCheckable(true);

        _14->addWidget(startButton, 0, 0, 1, 1);

        SaveViewButton = new QPushButton(optionTabs);
        SaveViewButton->setObjectName(QString::fromUtf8("SaveViewButton"));
        SaveViewButton->setEnabled(true);

        _14->addWidget(SaveViewButton, 2, 1, 1, 1);

        ReloadSceneButton = new QPushButton(optionTabs);
        ReloadSceneButton->setObjectName(QString::fromUtf8("ReloadSceneButton"));
        ReloadSceneButton->setEnabled(true);

        _14->addWidget(ReloadSceneButton, 1, 0, 1, 1);

        stepButton = new QPushButton(optionTabs);
        stepButton->setObjectName(QString::fromUtf8("stepButton"));
        stepButton->setAutoRepeat(true);

        _14->addWidget(stepButton, 0, 1, 1, 1);

        screenshotButton = new QPushButton(optionTabs);
        screenshotButton->setObjectName(QString::fromUtf8("screenshotButton"));

        _14->addWidget(screenshotButton, 3, 0, 1, 2);

        _15 = new QHBoxLayout();
        _15->setSpacing(2);
        _15->setObjectName(QString::fromUtf8("_15"));
        _15->setSizeConstraint(QLayout::SetNoConstraint);
        dtLabel = new QLabel(optionTabs);
        dtLabel->setObjectName(QString::fromUtf8("dtLabel"));
        dtLabel->setWordWrap(false);

        _15->addWidget(dtLabel);

        dtEdit = new QLineEdit(optionTabs);
        dtEdit->setObjectName(QString::fromUtf8("dtEdit"));
        QSizePolicy sizePolicy3(QSizePolicy::Expanding, QSizePolicy::Fixed);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(dtEdit->sizePolicy().hasHeightForWidth());
        dtEdit->setSizePolicy(sizePolicy3);
        dtEdit->setMinimumSize(QSize(20, 0));
        dtEdit->setMaximumSize(QSize(80, 32767));

        _15->addWidget(dtEdit);

        realTimeCheckBox = new QCheckBox(optionTabs);
        realTimeCheckBox->setObjectName(QString::fromUtf8("realTimeCheckBox"));

        _15->addWidget(realTimeCheckBox);


        _14->addLayout(_15, 1, 1, 1, 1);


        _13->addLayout(_14);

        spacer_tab = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        _13->addItem(spacer_tab);

        tabs = new QTabWidget(optionTabs);
        tabs->setObjectName(QString::fromUtf8("tabs"));
        sizePolicy1.setHeightForWidth(tabs->sizePolicy().hasHeightForWidth());
        tabs->setSizePolicy(sizePolicy1);
        tabs->setMinimumSize(QSize(200, 0));
        TabGraph = new QWidget();
        TabGraph->setObjectName(QString::fromUtf8("TabGraph"));
        _19 = new QVBoxLayout(TabGraph);
        _19->setSpacing(2);
        _19->setContentsMargins(5, 5, 5, 5);
        _19->setObjectName(QString::fromUtf8("_19"));
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(2);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        ExportGraphButton = new QPushButton(TabGraph);
        ExportGraphButton->setObjectName(QString::fromUtf8("ExportGraphButton"));
        sizePolicy3.setHeightForWidth(ExportGraphButton->sizePolicy().hasHeightForWidth());
        ExportGraphButton->setSizePolicy(sizePolicy3);
        QIcon icon3;
        icon3.addFile(QString::fromUtf8("image1"), QSize(), QIcon::Normal, QIcon::Off);
        ExportGraphButton->setIcon(icon3);

        horizontalLayout_2->addWidget(ExportGraphButton);

        CollapseAllButton = new QPushButton(TabGraph);
        CollapseAllButton->setObjectName(QString::fromUtf8("CollapseAllButton"));
        CollapseAllButton->setStyleSheet(QString::fromUtf8(""));

        horizontalLayout_2->addWidget(CollapseAllButton);

        ExpandAllButton = new QPushButton(TabGraph);
        ExpandAllButton->setObjectName(QString::fromUtf8("ExpandAllButton"));
        ExpandAllButton->setStyleSheet(QString::fromUtf8(""));

        horizontalLayout_2->addWidget(ExpandAllButton);

        sceneGraphRefreshToggleButton = new QPushButton(TabGraph);
        sceneGraphRefreshToggleButton->setObjectName(QString::fromUtf8("sceneGraphRefreshToggleButton"));

        horizontalLayout_2->addWidget(sceneGraphRefreshToggleButton);


        _19->addLayout(horizontalLayout_2);

        tabs->addTab(TabGraph, QString());
        tabView = new QWidget();
        tabView->setObjectName(QString::fromUtf8("tabView"));
        sizePolicy1.setHeightForWidth(tabView->sizePolicy().hasHeightForWidth());
        tabView->setSizePolicy(sizePolicy1);
        gridLayout1 = new QGridLayout(tabView);
        gridLayout1->setSpacing(2);
        gridLayout1->setContentsMargins(5, 5, 5, 5);
        gridLayout1->setObjectName(QString::fromUtf8("gridLayout1"));
        _17 = new QGridLayout();
        _17->setSpacing(2);
        _17->setObjectName(QString::fromUtf8("_17"));
        _18 = new QGridLayout();
        _18->setSpacing(2);
        _18->setObjectName(QString::fromUtf8("_18"));
        spacer8 = new QSpacerItem(0, 16, QSizePolicy::Ignored, QSizePolicy::Minimum);

        _18->addItem(spacer8, 0, 2, 1, 1);

        pixmapLabel1 = new QLabel(tabView);
        pixmapLabel1->setObjectName(QString::fromUtf8("pixmapLabel1"));
        QSizePolicy sizePolicy4(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy4.setHorizontalStretch(0);
        sizePolicy4.setVerticalStretch(0);
        sizePolicy4.setHeightForWidth(pixmapLabel1->sizePolicy().hasHeightForWidth());
        pixmapLabel1->setSizePolicy(sizePolicy4);
        pixmapLabel1->setPixmap(QPixmap(QString::fromUtf8("image0")));
        pixmapLabel1->setScaledContents(true);
        pixmapLabel1->setWordWrap(false);

        _18->addWidget(pixmapLabel1, 0, 1, 1, 1);

        spacer7 = new QSpacerItem(0, 16, QSizePolicy::Ignored, QSizePolicy::Minimum);

        _18->addItem(spacer7, 0, 0, 1, 1);


        _17->addLayout(_18, 1, 0, 1, 1);


        gridLayout1->addLayout(_17, 2, 0, 1, 1);

        tabs->addTab(tabView, QString());
        TabVisualGraph = new QWidget();
        TabVisualGraph->setObjectName(QString::fromUtf8("TabVisualGraph"));
        _20 = new QVBoxLayout(TabVisualGraph);
        _20->setSpacing(2);
        _20->setContentsMargins(5, 5, 5, 5);
        _20->setObjectName(QString::fromUtf8("_20"));
        ExportVisualGraphButton = new QPushButton(TabVisualGraph);
        ExportVisualGraphButton->setObjectName(QString::fromUtf8("ExportVisualGraphButton"));
        ExportVisualGraphButton->setIcon(icon3);

        _20->addWidget(ExportVisualGraphButton);

        tabs->addTab(TabVisualGraph, QString());
        TabStats = new QWidget();
        TabStats->setObjectName(QString::fromUtf8("TabStats"));
        _21 = new QVBoxLayout(TabStats);
        _21->setSpacing(2);
        _21->setContentsMargins(5, 5, 5, 5);
        _21->setObjectName(QString::fromUtf8("_21"));
        dumpStateCheckBox = new QCheckBox(TabStats);
        dumpStateCheckBox->setObjectName(QString::fromUtf8("dumpStateCheckBox"));

        _21->addWidget(dumpStateCheckBox);

        displayComputationTimeCheckBox = new QCheckBox(TabStats);
        displayComputationTimeCheckBox->setObjectName(QString::fromUtf8("displayComputationTimeCheckBox"));

        _21->addWidget(displayComputationTimeCheckBox);

        exportGnuplotFilesCheckbox = new QCheckBox(TabStats);
        exportGnuplotFilesCheckbox->setObjectName(QString::fromUtf8("exportGnuplotFilesCheckbox"));

        _21->addWidget(exportGnuplotFilesCheckbox);

        exportVisitorCheckbox = new QCheckBox(TabStats);
        exportVisitorCheckbox->setObjectName(QString::fromUtf8("exportVisitorCheckbox"));

        _21->addWidget(exportVisitorCheckbox);

        displayTimeProfiler = new QCheckBox(TabStats);
        displayTimeProfiler->setObjectName(QString::fromUtf8("displayTimeProfiler"));

        _21->addWidget(displayTimeProfiler);

        tabs->addTab(TabStats, QString());
        TabPage = new QWidget();
        TabPage->setObjectName(QString::fromUtf8("TabPage"));
        _22 = new QVBoxLayout(TabPage);
        _22->setSpacing(2);
        _22->setContentsMargins(5, 5, 5, 5);
        _22->setObjectName(QString::fromUtf8("_22"));
        _23 = new QHBoxLayout();
        _23->setSpacing(0);
        _23->setObjectName(QString::fromUtf8("_23"));
        spacer5_3_3 = new QSpacerItem(10, 2, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _23->addItem(spacer5_3_3);

        sizeW = new QSpinBox(TabPage);
        sizeW->setObjectName(QString::fromUtf8("sizeW"));
        sizeW->setMaximum(30000);
        sizeW->setValue(800);

        _23->addWidget(sizeW);

        textLabel_sizeX = new QLabel(TabPage);
        textLabel_sizeX->setObjectName(QString::fromUtf8("textLabel_sizeX"));
        QSizePolicy sizePolicy5(QSizePolicy::Fixed, QSizePolicy::Preferred);
        sizePolicy5.setHorizontalStretch(0);
        sizePolicy5.setVerticalStretch(0);
        sizePolicy5.setHeightForWidth(textLabel_sizeX->sizePolicy().hasHeightForWidth());
        textLabel_sizeX->setSizePolicy(sizePolicy5);
        textLabel_sizeX->setWordWrap(false);

        _23->addWidget(textLabel_sizeX);

        sizeH = new QSpinBox(TabPage);
        sizeH->setObjectName(QString::fromUtf8("sizeH"));
        sizeH->setMaximum(30000);
        sizeH->setValue(600);

        _23->addWidget(sizeH);

        spacer5_3_2_3 = new QSpacerItem(10, 2, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _23->addItem(spacer5_3_2_3);


        _22->addLayout(_23);

        textEdit1 = new QTextBrowser(TabPage);
        textEdit1->setObjectName(QString::fromUtf8("textEdit1"));

        _22->addWidget(textEdit1);

        tabs->addTab(TabPage, QString());

        _13->addWidget(tabs);


        horizontalLayout->addWidget(optionTabs);

        dockWidget->setWidget(dockWidgetContents);
        GUI->addDockWidget(Qt::LeftDockWidgetArea, dockWidget);

        menubar->addAction(fileMenu->menuAction());
        menubar->addAction(editMenu->menuAction());
        menubar->addAction(View->menuAction());
        menubar->addAction(helpMenu->menuAction());
        fileMenu->addAction(fileNewAction);
        fileMenu->addAction(fileOpenAction);
        fileMenu->addAction(fileReloadAction);
        fileMenu->addAction(fileSaveAction);
        fileMenu->addAction(fileSaveAsAction);
        fileMenu->addSeparator();
        fileMenu->addSeparator();
        fileMenu->addAction(fileExitAction);
        editMenu->addAction(editRecordDirectoryAction);
        editMenu->addAction(editGnuplotDirectoryAction);
        editMenu->addSeparator();
        editMenu->addAction(PluginManagerAction);
        editMenu->addAction(MouseManagerAction);
        editMenu->addAction(VideoRecorderManagerAction);
        editMenu->addAction(DataGraphAction);
        View->addSeparator();
        View->addSeparator();
        View->addSeparator();
        helpMenu->addSeparator();
        helpMenu->addAction(helpShowDocBrowser);
        helpMenu->addAction(helpAboutAction);

        retranslateUi(GUI);
        QObject::connect(fileNewAction, SIGNAL(triggered()), GUI, SLOT(fileNew()));
        QObject::connect(fileOpenAction, SIGNAL(triggered()), GUI, SLOT(popupOpenFileSelector()));
        QObject::connect(fileReloadAction, SIGNAL(triggered()), GUI, SLOT(fileReload()));
        QObject::connect(fileSaveAction, SIGNAL(triggered()), GUI, SLOT(fileSave()));
        QObject::connect(fileSaveAsAction, SIGNAL(triggered()), GUI, SLOT(fileSaveAs()));
        QObject::connect(fileExitAction, SIGNAL(triggered()), GUI, SLOT(fileExit()));
        QObject::connect(editRecordDirectoryAction, SIGNAL(triggered()), GUI, SLOT(editRecordDirectory()));
        QObject::connect(PluginManagerAction, SIGNAL(triggered()), GUI, SLOT(showPluginManager()));
        QObject::connect(MouseManagerAction, SIGNAL(triggered()), GUI, SLOT(showMouseManager()));
        QObject::connect(DataGraphAction, SIGNAL(triggered()), GUI, SLOT(showWindowDataGraph()));
        QObject::connect(editGnuplotDirectoryAction, SIGNAL(triggered()), GUI, SLOT(editGnuplotDirectory()));
        QObject::connect(VideoRecorderManagerAction, SIGNAL(triggered()), GUI, SLOT(showVideoRecorderManager()));
        QObject::connect(helpShowDocBrowser, SIGNAL(triggered()), GUI, SLOT(showDocBrowser()));

        tabs->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(GUI);
    } // setupUi

    void retranslateUi(QMainWindow *GUI)
    {
        GUI->setWindowTitle(QCoreApplication::translate("GUI", "Sofa", nullptr));
        fileNewAction->setText(QCoreApplication::translate("GUI", "&New", nullptr));
        fileNewAction->setIconText(QCoreApplication::translate("GUI", "New", nullptr));
#if QT_CONFIG(shortcut)
        fileNewAction->setShortcut(QCoreApplication::translate("GUI", "Ctrl+N", nullptr));
#endif // QT_CONFIG(shortcut)
        fileOpenAction->setText(QCoreApplication::translate("GUI", "&Open...", nullptr));
        fileOpenAction->setIconText(QCoreApplication::translate("GUI", "Open", nullptr));
#if QT_CONFIG(shortcut)
        fileOpenAction->setShortcut(QCoreApplication::translate("GUI", "Ctrl+O", nullptr));
#endif // QT_CONFIG(shortcut)
        fileReloadAction->setText(QCoreApplication::translate("GUI", "&Reload", nullptr));
        fileReloadAction->setIconText(QCoreApplication::translate("GUI", "Reload", nullptr));
#if QT_CONFIG(shortcut)
        fileReloadAction->setShortcut(QCoreApplication::translate("GUI", "Ctrl+R", nullptr));
#endif // QT_CONFIG(shortcut)
        fileSaveAction->setText(QCoreApplication::translate("GUI", "&Save", nullptr));
        fileSaveAction->setIconText(QCoreApplication::translate("GUI", "Save", nullptr));
#if QT_CONFIG(shortcut)
        fileSaveAction->setShortcut(QCoreApplication::translate("GUI", "Ctrl+S", nullptr));
#endif // QT_CONFIG(shortcut)
        fileSaveAsAction->setText(QCoreApplication::translate("GUI", "Save &As...", nullptr));
        fileSaveAsAction->setIconText(QCoreApplication::translate("GUI", "Save As", nullptr));
#if QT_CONFIG(shortcut)
        fileSaveAsAction->setShortcut(QString());
#endif // QT_CONFIG(shortcut)
        fileExitAction->setText(QCoreApplication::translate("GUI", "E&xit", nullptr));
        fileExitAction->setIconText(QCoreApplication::translate("GUI", "Exit", nullptr));
#if QT_CONFIG(shortcut)
        fileExitAction->setShortcut(QString());
#endif // QT_CONFIG(shortcut)
        helpAboutAction->setText(QCoreApplication::translate("GUI", "&About", nullptr));
        helpAboutAction->setIconText(QCoreApplication::translate("GUI", "About", nullptr));
#if QT_CONFIG(shortcut)
        helpAboutAction->setShortcut(QString());
#endif // QT_CONFIG(shortcut)
        ViewerAction->setIconText(QCoreApplication::translate("GUI", "Viewer", nullptr));
        editRecordDirectoryAction->setText(QCoreApplication::translate("GUI", "Record Directory...", nullptr));
        editRecordDirectoryAction->setIconText(QCoreApplication::translate("GUI", "Record Directory...", nullptr));
        editGnuplotDirectoryAction->setText(QCoreApplication::translate("GUI", "Gnuplot Directory...", nullptr));
        editGnuplotDirectoryAction->setIconText(QCoreApplication::translate("GUI", "Gnuplot Directory...", nullptr));
        PluginManagerAction->setText(QCoreApplication::translate("GUI", "Plugin Manager...", nullptr));
        PluginManagerAction->setIconText(QCoreApplication::translate("GUI", "Plugin Manager...", nullptr));
        MouseManagerAction->setText(QCoreApplication::translate("GUI", "Mouse Manager...", nullptr));
        MouseManagerAction->setIconText(QCoreApplication::translate("GUI", "Mouse Manager...", nullptr));
        Action->setIconText(QCoreApplication::translate("GUI", "Recently Opened Files...", nullptr));
        TestAction->setText(QCoreApplication::translate("GUI", "Test", nullptr));
        TestAction->setIconText(QCoreApplication::translate("GUI", "Test", nullptr));
        VideoRecorderManagerAction->setText(QCoreApplication::translate("GUI", "Video Recorder Manager...", nullptr));
        VideoRecorderManagerAction->setIconText(QCoreApplication::translate("GUI", "Video Recorder Manager...", nullptr));
        helpShowDocBrowser->setText(QCoreApplication::translate("GUI", "Show doc browser", nullptr));
        DataGraphAction->setText(QCoreApplication::translate("GUI", "Data Graph...", nullptr));
#if QT_CONFIG(tooltip)
        DataGraphAction->setToolTip(QCoreApplication::translate("GUI", "Data Graph Window", nullptr));
#endif // QT_CONFIG(tooltip)
        fileMenu->setTitle(QCoreApplication::translate("GUI", "&File", nullptr));
        editMenu->setTitle(QCoreApplication::translate("GUI", "&Edit", nullptr));
        View->setTitle(QCoreApplication::translate("GUI", "&View", nullptr));
        helpMenu->setTitle(QCoreApplication::translate("GUI", "Help", nullptr));
#if QT_CONFIG(tooltip)
        ResetViewButton->setToolTip(QCoreApplication::translate("GUI", "Set the camera to initial position and orientation", nullptr));
#endif // QT_CONFIG(tooltip)
        ResetViewButton->setText(QCoreApplication::translate("GUI", "Reset &View", nullptr));
#if QT_CONFIG(shortcut)
        ResetViewButton->setShortcut(QCoreApplication::translate("GUI", "Alt+V", nullptr));
#endif // QT_CONFIG(shortcut)
#if QT_CONFIG(tooltip)
        startButton->setToolTip(QCoreApplication::translate("GUI", "Launch the Simulation", nullptr));
#endif // QT_CONFIG(tooltip)
        startButton->setText(QCoreApplication::translate("GUI", "&Animate", nullptr));
#if QT_CONFIG(shortcut)
        startButton->setShortcut(QCoreApplication::translate("GUI", "Alt+A", nullptr));
#endif // QT_CONFIG(shortcut)
#if QT_CONFIG(tooltip)
        SaveViewButton->setToolTip(QCoreApplication::translate("GUI", "Save the position and orientation of the camera", nullptr));
#endif // QT_CONFIG(tooltip)
        SaveViewButton->setText(QCoreApplication::translate("GUI", "Save Vie&w", nullptr));
#if QT_CONFIG(shortcut)
        SaveViewButton->setShortcut(QCoreApplication::translate("GUI", "Alt+W", nullptr));
#endif // QT_CONFIG(shortcut)
#if QT_CONFIG(tooltip)
        ReloadSceneButton->setToolTip(QCoreApplication::translate("GUI", "Reload the simulation file", nullptr));
#endif // QT_CONFIG(tooltip)
        ReloadSceneButton->setText(QCoreApplication::translate("GUI", "&Reload Scene", nullptr));
#if QT_CONFIG(shortcut)
        ReloadSceneButton->setShortcut(QCoreApplication::translate("GUI", "Alt+R", nullptr));
#endif // QT_CONFIG(shortcut)
#if QT_CONFIG(tooltip)
        stepButton->setToolTip(QCoreApplication::translate("GUI", "Compute the simulation at time t+DT", nullptr));
#endif // QT_CONFIG(tooltip)
        stepButton->setText(QCoreApplication::translate("GUI", "S&tep", nullptr));
#if QT_CONFIG(shortcut)
        stepButton->setShortcut(QCoreApplication::translate("GUI", "Alt+T", nullptr));
#endif // QT_CONFIG(shortcut)
        screenshotButton->setText(QCoreApplication::translate("GUI", "Save S&creenshot", nullptr));
#if QT_CONFIG(shortcut)
        screenshotButton->setShortcut(QCoreApplication::translate("GUI", "Alt+C", nullptr));
#endif // QT_CONFIG(shortcut)
        dtLabel->setText(QCoreApplication::translate("GUI", "DT:", nullptr));
#if QT_CONFIG(tooltip)
        realTimeCheckBox->setToolTip(QCoreApplication::translate("GUI", "Use the duration of the previous simulation step as the next DT", nullptr));
#endif // QT_CONFIG(tooltip)
        realTimeCheckBox->setText(QCoreApplication::translate("GUI", "Real Time", nullptr));
        ExportGraphButton->setText(QCoreApplication::translate("GUI", "Export Graph...", nullptr));
#if QT_CONFIG(shortcut)
        ExportGraphButton->setShortcut(QCoreApplication::translate("GUI", "Alt+X", nullptr));
#endif // QT_CONFIG(shortcut)
#if QT_CONFIG(tooltip)
        CollapseAllButton->setToolTip(QCoreApplication::translate("GUI", "Collapse All", nullptr));
#endif // QT_CONFIG(tooltip)
        CollapseAllButton->setText(QString());
#if QT_CONFIG(tooltip)
        ExpandAllButton->setToolTip(QCoreApplication::translate("GUI", "Expand All", nullptr));
#endif // QT_CONFIG(tooltip)
        ExpandAllButton->setText(QString());
#if QT_CONFIG(tooltip)
        sceneGraphRefreshToggleButton->setToolTip(QCoreApplication::translate("GUI", "The scene graph update button has three states\n"
"State 0: unlocked (all the changes on the graph are immediately taken into account)\n"
"State 1: locked (the changes on the graph are not done but the simulation graph is set to dirty if\n"
"         there is some changes on the graph. A click on the button unlocks the graph (go to state 0).\n"
"State 2: dirty, in that state the button reflect the fact that the scene graph view has changed but not displayed.\n"
"         A click on the button refreshes the graph view but does not change the Lock/Unlock state", nullptr));
#endif // QT_CONFIG(tooltip)
        sceneGraphRefreshToggleButton->setText(QString());
        tabs->setTabText(tabs->indexOf(TabGraph), QCoreApplication::translate("GUI", "Graph", nullptr));
#if QT_CONFIG(tooltip)
        pixmapLabel1->setToolTip(QCoreApplication::translate("GUI", "http://sofa-framework.org", nullptr));
#endif // QT_CONFIG(tooltip)
        tabs->setTabText(tabs->indexOf(tabView), QCoreApplication::translate("GUI", "View", nullptr));
        ExportVisualGraphButton->setText(QCoreApplication::translate("GUI", "E&xport Graph...", nullptr));
#if QT_CONFIG(shortcut)
        ExportVisualGraphButton->setShortcut(QCoreApplication::translate("GUI", "Alt+X", nullptr));
#endif // QT_CONFIG(shortcut)
        tabs->setTabText(tabs->indexOf(TabVisualGraph), QCoreApplication::translate("GUI", "Visual", nullptr));
#if QT_CONFIG(tooltip)
        dumpStateCheckBox->setToolTip(QCoreApplication::translate("GUI", "Record the state at each time step in file \"dumpState.data\"", "This is used to plut curves fter a simulation"));
#endif // QT_CONFIG(tooltip)
        dumpStateCheckBox->setText(QCoreApplication::translate("GUI", "Dump State", nullptr));
#if QT_CONFIG(tooltip)
        displayComputationTimeCheckBox->setToolTip(QCoreApplication::translate("GUI", "Display information about the time spent at each branch of the graph", nullptr));
#endif // QT_CONFIG(tooltip)
        displayComputationTimeCheckBox->setText(QCoreApplication::translate("GUI", "Log Time", nullptr));
#if QT_CONFIG(tooltip)
        exportGnuplotFilesCheckbox->setToolTip(QCoreApplication::translate("GUI", "Create gnuplot files for each named element of the simulation", nullptr));
#endif // QT_CONFIG(tooltip)
        exportGnuplotFilesCheckbox->setText(QCoreApplication::translate("GUI", "Export state as gnuplot files", nullptr));
#if QT_CONFIG(tooltip)
        exportVisitorCheckbox->setToolTip(QCoreApplication::translate("GUI", "Open a Dialog showing a trace of the execution and time spent", nullptr));
#endif // QT_CONFIG(tooltip)
        exportVisitorCheckbox->setText(QCoreApplication::translate("GUI", "Trace Visitor and Component execution", nullptr));
        displayTimeProfiler->setText(QCoreApplication::translate("GUI", "Display AdvancedTimer profiler", nullptr));
        tabs->setTabText(tabs->indexOf(TabStats), QCoreApplication::translate("GUI", "Stats", nullptr));
        textLabel_sizeX->setText(QCoreApplication::translate("GUI", "<p align=\"center\">x</p>", nullptr));
        tabs->setTabText(tabs->indexOf(TabPage), QCoreApplication::translate("GUI", "Viewer", nullptr));
    } // retranslateUi

};

namespace Ui {
    class GUI: public Ui_GUI {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_GUI_H
