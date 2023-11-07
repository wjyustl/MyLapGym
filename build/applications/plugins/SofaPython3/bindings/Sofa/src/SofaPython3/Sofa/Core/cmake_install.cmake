# Install script for directory: /home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/Core.cpython-39-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/Core.cpython-39-x86_64-linux-gnu.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/Core.cpython-39-x86_64-linux-gnu.so"
         RPATH "$ORIGIN:$$ORIGIN:$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../../lib:$$ORIGIN/../../../../lib:@loader_path/../../../../lib:@executable_path/../../../../lib:$ORIGIN/../../../../../../lib:$$ORIGIN/../../../../../../lib:@loader_path/../../../../../../lib:@executable_path/../../../../../../lib:/home/wjy/anaconda3/envs/MyLapGym/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa" TYPE SHARED_LIBRARY FILES "/home/wjy/MyLapGym/build/lib/python3/site-packages/Sofa/Core.cpython-39-x86_64-linux-gnu.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/Core.cpython-39-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/Core.cpython-39-x86_64-linux-gnu.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/Core.cpython-39-x86_64-linux-gnu.so"
         OLD_RPATH "/home/wjy/MyLapGym/build/lib:/home/wjy/anaconda3/envs/MyLapGym/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "$ORIGIN:$$ORIGIN:$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../../lib:$$ORIGIN/../../../../lib:@loader_path/../../../../lib:@executable_path/../../../../lib:$ORIGIN/../../../../../../lib:$$ORIGIN/../../../../../../lib:@loader_path/../../../../../../lib:@executable_path/../../../../../../lib:/home/wjy/anaconda3/envs/MyLapGym/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/site-packages/Sofa/Core.cpython-39-x86_64-linux-gnu.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Base.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Base_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_DataDict.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_DataDict_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseObject.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseObject_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseCamera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseContext.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_ContactListener.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_ContactListener_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Context.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Controller.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Controller_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_DataEngine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_DataEngine_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_ForceField.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_ForceField_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_LinkPath.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_LinkPath_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Mass.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Mass_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_ObjectFactory.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_ObjectFactory_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Node.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Node_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_NodeIterator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_PointSetTopologyModifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Prefab.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Prefab_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core/Data" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Data/Binding_DataContainer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core/Data" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Data/Binding_DataContainer_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core/Data" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Data/Binding_DataString.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core/Data" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Data/Binding_DataLink.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core/Data" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Data/Binding_DataString_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core/Data" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Data/Binding_DataVectorString.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core/Data" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Data/Binding_DataVectorString_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_PythonScriptEvent.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseLink.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseLink_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseData_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseCamera_doc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_Topology.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaPython3/Sofa/Core" TYPE FILE FILES "/home/wjy/MyLapGym/src/applications/plugins/SofaPython3/bindings/Sofa/src/SofaPython3/Sofa/Core/Binding_BaseMeshTopology.h")
endif()

