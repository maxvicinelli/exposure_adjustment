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
include stag_ros/modules/stag/CMakeFiles/stag_main.dir/depend.make

# Include the progress variables for this target.
include stag_ros/modules/stag/CMakeFiles/stag_main.dir/progress.make

# Include the compile flags for this target's objects.
include stag_ros/modules/stag/CMakeFiles/stag_main.dir/flags.make

stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o: stag_ros/modules/stag/CMakeFiles/stag_main.dir/flags.make
stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o: /home/sam/catkin-workspace/src/stag_ros/modules/stag/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/catkin-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o"
	cd /home/sam/catkin-workspace/build/stag_ros/modules/stag && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stag_main.dir/src/main.cpp.o -c /home/sam/catkin-workspace/src/stag_ros/modules/stag/src/main.cpp

stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stag_main.dir/src/main.cpp.i"
	cd /home/sam/catkin-workspace/build/stag_ros/modules/stag && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/catkin-workspace/src/stag_ros/modules/stag/src/main.cpp > CMakeFiles/stag_main.dir/src/main.cpp.i

stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stag_main.dir/src/main.cpp.s"
	cd /home/sam/catkin-workspace/build/stag_ros/modules/stag && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/catkin-workspace/src/stag_ros/modules/stag/src/main.cpp -o CMakeFiles/stag_main.dir/src/main.cpp.s

stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o.requires:

.PHONY : stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o.requires

stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o.provides: stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o.requires
	$(MAKE) -f stag_ros/modules/stag/CMakeFiles/stag_main.dir/build.make stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o.provides.build
.PHONY : stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o.provides

stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o.provides.build: stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o


# Object files for target stag_main
stag_main_OBJECTS = \
"CMakeFiles/stag_main.dir/src/main.cpp.o"

# External object files for target stag_main
stag_main_EXTERNAL_OBJECTS =

/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: stag_ros/modules/stag/CMakeFiles/stag_main.dir/build.make
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /home/sam/catkin-workspace/devel/lib/libstag_lib.so
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_dnn.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_highgui.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_ml.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_objdetect.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_shape.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_stitching.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_superres.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_videostab.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_calib3d.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_features2d.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_flann.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_photo.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_video.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_videoio.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_imgcodecs.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_imgproc.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_viz.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: /usr/local/lib/libopencv_core.so.3.4.9
/home/sam/catkin-workspace/devel/lib/stag_ros/stag_main: stag_ros/modules/stag/CMakeFiles/stag_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sam/catkin-workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/sam/catkin-workspace/devel/lib/stag_ros/stag_main"
	cd /home/sam/catkin-workspace/build/stag_ros/modules/stag && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stag_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
stag_ros/modules/stag/CMakeFiles/stag_main.dir/build: /home/sam/catkin-workspace/devel/lib/stag_ros/stag_main

.PHONY : stag_ros/modules/stag/CMakeFiles/stag_main.dir/build

stag_ros/modules/stag/CMakeFiles/stag_main.dir/requires: stag_ros/modules/stag/CMakeFiles/stag_main.dir/src/main.cpp.o.requires

.PHONY : stag_ros/modules/stag/CMakeFiles/stag_main.dir/requires

stag_ros/modules/stag/CMakeFiles/stag_main.dir/clean:
	cd /home/sam/catkin-workspace/build/stag_ros/modules/stag && $(CMAKE_COMMAND) -P CMakeFiles/stag_main.dir/cmake_clean.cmake
.PHONY : stag_ros/modules/stag/CMakeFiles/stag_main.dir/clean

stag_ros/modules/stag/CMakeFiles/stag_main.dir/depend:
	cd /home/sam/catkin-workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/catkin-workspace/src /home/sam/catkin-workspace/src/stag_ros/modules/stag /home/sam/catkin-workspace/build /home/sam/catkin-workspace/build/stag_ros/modules/stag /home/sam/catkin-workspace/build/stag_ros/modules/stag/CMakeFiles/stag_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : stag_ros/modules/stag/CMakeFiles/stag_main.dir/depend
