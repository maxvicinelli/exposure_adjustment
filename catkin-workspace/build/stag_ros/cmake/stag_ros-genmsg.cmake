# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "stag_ros: 2 messages, 1 services")

set(MSG_I_FLAGS "-Istag_ros:/home/sam/catkin-workspace/src/stag_ros/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(stag_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg" NAME_WE)
add_custom_target(_stag_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stag_ros" "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv" NAME_WE)
add_custom_target(_stag_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stag_ros" "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv" ""
)

get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg" NAME_WE)
add_custom_target(_stag_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stag_ros" "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg" "stag_ros/StagMarker:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stag_ros
)
_generate_msg_cpp(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stag_ros
)

### Generating Services
_generate_srv_cpp(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stag_ros
)

### Generating Module File
_generate_module_cpp(stag_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stag_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(stag_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(stag_ros_generate_messages stag_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_cpp _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv" NAME_WE)
add_dependencies(stag_ros_generate_messages_cpp _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_cpp _stag_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stag_ros_gencpp)
add_dependencies(stag_ros_gencpp stag_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stag_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stag_ros
)
_generate_msg_eus(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stag_ros
)

### Generating Services
_generate_srv_eus(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stag_ros
)

### Generating Module File
_generate_module_eus(stag_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stag_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(stag_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(stag_ros_generate_messages stag_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_eus _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv" NAME_WE)
add_dependencies(stag_ros_generate_messages_eus _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_eus _stag_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stag_ros_geneus)
add_dependencies(stag_ros_geneus stag_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stag_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stag_ros
)
_generate_msg_lisp(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stag_ros
)

### Generating Services
_generate_srv_lisp(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stag_ros
)

### Generating Module File
_generate_module_lisp(stag_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stag_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(stag_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(stag_ros_generate_messages stag_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_lisp _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv" NAME_WE)
add_dependencies(stag_ros_generate_messages_lisp _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_lisp _stag_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stag_ros_genlisp)
add_dependencies(stag_ros_genlisp stag_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stag_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stag_ros
)
_generate_msg_nodejs(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stag_ros
)

### Generating Services
_generate_srv_nodejs(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stag_ros
)

### Generating Module File
_generate_module_nodejs(stag_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stag_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(stag_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(stag_ros_generate_messages stag_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_nodejs _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv" NAME_WE)
add_dependencies(stag_ros_generate_messages_nodejs _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_nodejs _stag_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stag_ros_gennodejs)
add_dependencies(stag_ros_gennodejs stag_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stag_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stag_ros
)
_generate_msg_py(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stag_ros
)

### Generating Services
_generate_srv_py(stag_ros
  "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stag_ros
)

### Generating Module File
_generate_module_py(stag_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stag_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(stag_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(stag_ros_generate_messages stag_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_py _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv" NAME_WE)
add_dependencies(stag_ros_generate_messages_py _stag_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg" NAME_WE)
add_dependencies(stag_ros_generate_messages_py _stag_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stag_ros_genpy)
add_dependencies(stag_ros_genpy stag_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stag_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stag_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stag_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(stag_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(stag_ros_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stag_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stag_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(stag_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(stag_ros_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stag_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stag_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(stag_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(stag_ros_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stag_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stag_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(stag_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(stag_ros_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stag_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stag_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stag_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(stag_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(stag_ros_generate_messages_py geometry_msgs_generate_messages_py)
endif()
