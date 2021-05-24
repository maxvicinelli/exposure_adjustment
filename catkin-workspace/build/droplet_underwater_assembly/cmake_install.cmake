# Install script for directory: /home/sam/catkin-workspace/src/droplet_underwater_assembly

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sam/catkin-workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/droplet_underwater_assembly/msg" TYPE FILE FILES "/home/sam/catkin-workspace/src/droplet_underwater_assembly/msg/BuildPhase.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/droplet_underwater_assembly/cmake" TYPE FILE FILES "/home/sam/catkin-workspace/build/droplet_underwater_assembly/catkin_generated/installspace/droplet_underwater_assembly-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sam/catkin-workspace/devel/include/droplet_underwater_assembly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sam/catkin-workspace/devel/share/roseus/ros/droplet_underwater_assembly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sam/catkin-workspace/devel/share/common-lisp/ros/droplet_underwater_assembly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sam/catkin-workspace/devel/share/gennodejs/ros/droplet_underwater_assembly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/droplet_underwater_assembly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/droplet_underwater_assembly")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sam/catkin-workspace/build/droplet_underwater_assembly/catkin_generated/installspace/droplet_underwater_assembly.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/droplet_underwater_assembly/cmake" TYPE FILE FILES "/home/sam/catkin-workspace/build/droplet_underwater_assembly/catkin_generated/installspace/droplet_underwater_assembly-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/droplet_underwater_assembly/cmake" TYPE FILE FILES
    "/home/sam/catkin-workspace/build/droplet_underwater_assembly/catkin_generated/installspace/droplet_underwater_assemblyConfig.cmake"
    "/home/sam/catkin-workspace/build/droplet_underwater_assembly/catkin_generated/installspace/droplet_underwater_assemblyConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/droplet_underwater_assembly" TYPE FILE FILES "/home/sam/catkin-workspace/src/droplet_underwater_assembly/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/droplet_underwater_assembly" TYPE PROGRAM FILES
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/assembly_main.py"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/utils.py"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/reporting.py"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/config.py"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/assembly_action.py"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/build_plan_parser.py"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/trajectory_tracker.py"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/build_platform.py"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/gripper_handler.py"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/scripts/open_arm.sh"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/scripts/close_arm.sh"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/src/display_controller.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/droplet_underwater_assembly" TYPE FILE FILES
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/launch/assembly_main.launch"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/launch/stag.launch"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/launch/apm.launch"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/launch/apm_pluginlists.yaml"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/launch/description.launch"
    "/home/sam/catkin-workspace/src/droplet_underwater_assembly/launch/apm_pluginlists.yaml"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/droplet_underwater_assembly/robots" TYPE FILE FILES "/home/sam/catkin-workspace/src/droplet_underwater_assembly/robots/droplet.urdf")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/droplet_underwater_assembly/param" TYPE DIRECTORY FILES "/home/sam/catkin-workspace/src/droplet_underwater_assembly/param/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/droplet_underwater_assembly" TYPE DIRECTORY FILES "/home/sam/catkin-workspace/src/droplet_underwater_assembly/static_assets")
endif()

