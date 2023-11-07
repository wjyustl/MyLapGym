# Install script for directory: /home/wjy/MyLapGym/src/Sofa/GUI/Qt

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wjy/MyLapGym/build/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc" TYPE FILE RENAME "Sofa.GUI.Qt.ini" FILES "/home/wjy/MyLapGym/build/etc/installedSofa.GUI.Qt.ini")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xresourcesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sofa/gui/qt" TYPE DIRECTORY FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/resources/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Qt/Sofa.GUI.QtTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Qt/Sofa.GUI.QtTargets.cmake"
         "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/CMakeFiles/Export/lib/cmake/Sofa.GUI.Qt/Sofa.GUI.QtTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Qt/Sofa.GUI.QtTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Qt/Sofa.GUI.QtTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/CMakeFiles/Export/lib/cmake/Sofa.GUI.Qt/Sofa.GUI.QtTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/CMakeFiles/Export/lib/cmake/Sofa.GUI.Qt/Sofa.GUI.QtTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/Sofa.GUI.QtConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/lib/cmake/Sofa.GUI.QtConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so.22.12.99")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so.22.12.99"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.GUI.Qt.so.22.12.99")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so.22.12.99" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so.22.12.99")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so.22.12.99"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so.22.12.99")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/libSofa.GUI.Qt.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Qt.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/AboutSOFADialog.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/DataFilenameWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/DataWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/DisplayFlagsDataWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/GenGraphForm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/LinkWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/MaterialDataWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/RGBAColorDataWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/ModifyObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QDataDescriptionWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QDisplayDataWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QDisplayLinkWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QDisplayPropertyWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QRGBAColorPicker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QModelViewTableUpdater.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QMouseOperations.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QMouseWheelAdjustementGuard.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QSofaListView.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QSofaStatWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QTabulationModifyObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QTransformationWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/RealGUI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/SimpleDataWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/SofaMouseManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/SofaVideoRecorderManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/SofaPluginManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/SofaSceneGraphWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/WDoubleLineEdit.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt/viewer/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/viewer/qt/QtViewer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt/viewer/qgl" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/viewer/qgl/QtGLViewer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/include/Sofa.GUI.Qt/sofa/gui/qt/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/fwd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/init.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/qt.conf.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/FileManagement.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/GraphListenerQListView.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/PickHandlerCallBacks.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QMenuFilesRecentlyOpened.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/QModelViewTableDataContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/StructDataWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/TableDataWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt/viewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/viewer/SofaViewer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt/viewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/viewer/EngineBackend.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt/viewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/viewer/VisualModelPolicy.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/GenericWidget.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/GLPickHandler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt/viewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/viewer/GLBackend.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/sofa/gui/qt/viewer" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/src/sofa/gui/qt/viewer/OglModelPolicy.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/ui_AboutDialog.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/ui_BaseGenGraphForm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/ui_DialogAddObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/ui_GUI.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/ui_MouseManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/ui_PluginManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/build/Sofa/GUI/Qt/ui_VideoRecorderManager.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Qt" TYPE FILE FILES "/home/wjy/MyLapGym/src/Sofa/GUI/Qt/LICENSE.GPL.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/wjy/MyLapGym/build/Sofa/GUI/Qt/libQGLViewer/QGLViewer/cmake_install.cmake")

endif()

