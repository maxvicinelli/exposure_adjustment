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

# Include any dependencies generated for this target.
include spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/depend.make

# Include the progress variables for this target.
include spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/progress.make

# Include the compile flags for this target's objects.
include spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/flags.make

spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o: spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/flags.make
spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o: /home/sam/catkin-workspace/src/spinnaker_sdk_camera_driver/src/acquisition_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/catkin-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o"
	cd /home/sam/catkin-workspace/build/spinnaker_sdk_camera_driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o -c /home/sam/catkin-workspace/src/spinnaker_sdk_camera_driver/src/acquisition_node.cpp

spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.i"
	cd /home/sam/catkin-workspace/build/spinnaker_sdk_camera_driver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/catkin-workspace/src/spinnaker_sdk_camera_driver/src/acquisition_node.cpp > CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.i

spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.s"
	cd /home/sam/catkin-workspace/build/spinnaker_sdk_camera_driver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/catkin-workspace/src/spinnaker_sdk_camera_driver/src/acquisition_node.cpp -o CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.s

spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o.requires:

.PHONY : spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o.requires

spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o.provides: spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o.requires
	$(MAKE) -f spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/build.make spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o.provides.build
.PHONY : spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o.provides

spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o.provides.build: spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o


# Object files for target acquisition_node
acquisition_node_OBJECTS = \
"CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o"

# External object files for target acquisition_node
acquisition_node_EXTERNAL_OBJECTS =

/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/build.make
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /home/sam/catkin-workspace/devel/lib/libacquilib.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libunwind.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libunwind-x86_64.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_dnn.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_highgui.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_ml.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_objdetect.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_shape.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_stitching.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_superres.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_videostab.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_viz.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libcv_bridge.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libimage_transport.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libmessage_filters.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libnodeletlib.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libbondcpp.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libclass_loader.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/libPocoFoundation.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libroslib.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librospack.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libroscpp.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librosconsole.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librostime.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libcpp_common.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_calib3d.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_features2d.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_flann.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_photo.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_video.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_videoio.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_imgcodecs.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_imgproc.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/local/lib/libopencv_core.so.3.4.9
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libcv_bridge.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libimage_transport.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libmessage_filters.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libnodeletlib.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libbondcpp.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libclass_loader.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/libPocoFoundation.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libroslib.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librospack.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libroscpp.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librosconsole.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/librostime.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /opt/ros/melodic/lib/libcpp_common.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node: spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sam/catkin-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node"
	cd /home/sam/catkin-workspace/build/spinnaker_sdk_camera_driver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/acquisition_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/build: /home/sam/catkin-workspace/devel/lib/spinnaker_sdk_camera_driver/acquisition_node

.PHONY : spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/build

spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/requires: spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/src/acquisition_node.cpp.o.requires

.PHONY : spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/requires

spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/clean:
	cd /home/sam/catkin-workspace/build/spinnaker_sdk_camera_driver && $(CMAKE_COMMAND) -P CMakeFiles/acquisition_node.dir/cmake_clean.cmake
.PHONY : spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/clean

spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/depend:
	cd /home/sam/catkin-workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/catkin-workspace/src /home/sam/catkin-workspace/src/spinnaker_sdk_camera_driver /home/sam/catkin-workspace/build /home/sam/catkin-workspace/build/spinnaker_sdk_camera_driver /home/sam/catkin-workspace/build/spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : spinnaker_sdk_camera_driver/CMakeFiles/acquisition_node.dir/depend
