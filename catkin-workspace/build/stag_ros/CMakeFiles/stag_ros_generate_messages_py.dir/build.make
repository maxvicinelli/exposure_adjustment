# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sam/catkin-workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sam/catkin-workspace/build

# Utility rule file for stag_ros_generate_messages_py.

# Include the progress variables for this target.
include stag_ros/CMakeFiles/stag_ros_generate_messages_py.dir/progress.make

stag_ros/CMakeFiles/stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py
stag_ros/CMakeFiles/stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py
stag_ros/CMakeFiles/stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/_SetTrackedBundles.py
stag_ros/CMakeFiles/stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/__init__.py
stag_ros/CMakeFiles/stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/__init__.py


/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py: /opt/ros/melodic/lib/genpy/genmsg_py.py
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py: /home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py: /opt/ros/melodic/share/geometry_msgs/msg/PoseStamped.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py: /opt/ros/melodic/share/std_msgs/msg/Header.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/catkin-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python from MSG stag_ros/StagMarker"
	cd /home/sam/catkin-workspace/build/stag_ros && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg -Istag_ros:/home/sam/catkin-workspace/src/stag_ros/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -p stag_ros -o /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg

/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py: /opt/ros/melodic/lib/genpy/genmsg_py.py
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py: /home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py: /home/sam/catkin-workspace/src/stag_ros/msg/StagMarker.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py: /opt/ros/melodic/share/std_msgs/msg/Header.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py: /opt/ros/melodic/share/geometry_msgs/msg/PoseStamped.msg
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/catkin-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python from MSG stag_ros/StagMarkers"
	cd /home/sam/catkin-workspace/build/stag_ros && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /home/sam/catkin-workspace/src/stag_ros/msg/StagMarkers.msg -Istag_ros:/home/sam/catkin-workspace/src/stag_ros/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -p stag_ros -o /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg

/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/_SetTrackedBundles.py: /opt/ros/melodic/lib/genpy/gensrv_py.py
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/_SetTrackedBundles.py: /home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/catkin-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating Python code from SRV stag_ros/SetTrackedBundles"
	cd /home/sam/catkin-workspace/build/stag_ros && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genpy/cmake/../../../lib/genpy/gensrv_py.py /home/sam/catkin-workspace/src/stag_ros/srv/SetTrackedBundles.srv -Istag_ros:/home/sam/catkin-workspace/src/stag_ros/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -p stag_ros -o /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv

/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/__init__.py: /opt/ros/melodic/lib/genpy/genmsg_py.py
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/__init__.py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/__init__.py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/__init__.py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/_SetTrackedBundles.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/catkin-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating Python msg __init__.py for stag_ros"
	cd /home/sam/catkin-workspace/build/stag_ros && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg --initpy

/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/__init__.py: /opt/ros/melodic/lib/genpy/genmsg_py.py
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/__init__.py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/__init__.py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py
/home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/__init__.py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/_SetTrackedBundles.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sam/catkin-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating Python srv __init__.py for stag_ros"
	cd /home/sam/catkin-workspace/build/stag_ros && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv --initpy

stag_ros_generate_messages_py: stag_ros/CMakeFiles/stag_ros_generate_messages_py
stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarker.py
stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/_StagMarkers.py
stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/_SetTrackedBundles.py
stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/msg/__init__.py
stag_ros_generate_messages_py: /home/sam/catkin-workspace/devel/lib/python2.7/dist-packages/stag_ros/srv/__init__.py
stag_ros_generate_messages_py: stag_ros/CMakeFiles/stag_ros_generate_messages_py.dir/build.make

.PHONY : stag_ros_generate_messages_py

# Rule to build all files generated by this target.
stag_ros/CMakeFiles/stag_ros_generate_messages_py.dir/build: stag_ros_generate_messages_py

.PHONY : stag_ros/CMakeFiles/stag_ros_generate_messages_py.dir/build

stag_ros/CMakeFiles/stag_ros_generate_messages_py.dir/clean:
	cd /home/sam/catkin-workspace/build/stag_ros && $(CMAKE_COMMAND) -P CMakeFiles/stag_ros_generate_messages_py.dir/cmake_clean.cmake
.PHONY : stag_ros/CMakeFiles/stag_ros_generate_messages_py.dir/clean

stag_ros/CMakeFiles/stag_ros_generate_messages_py.dir/depend:
	cd /home/sam/catkin-workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/catkin-workspace/src /home/sam/catkin-workspace/src/stag_ros /home/sam/catkin-workspace/build /home/sam/catkin-workspace/build/stag_ros /home/sam/catkin-workspace/build/stag_ros/CMakeFiles/stag_ros_generate_messages_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : stag_ros/CMakeFiles/stag_ros_generate_messages_py.dir/depend

