# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/chengshuai/Documents/work/Curve fitting"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/chengshuai/Documents/work/Curve fitting/release"

# Include any dependencies generated for this target.
include CMakeFiles/G20_GN.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/G20_GN.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/G20_GN.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/G20_GN.dir/flags.make

CMakeFiles/G20_GN.dir/GN_g2o.cpp.o: CMakeFiles/G20_GN.dir/flags.make
CMakeFiles/G20_GN.dir/GN_g2o.cpp.o: /Users/chengshuai/Documents/work/Curve\ fitting/GN_g2o.cpp
CMakeFiles/G20_GN.dir/GN_g2o.cpp.o: CMakeFiles/G20_GN.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/chengshuai/Documents/work/Curve fitting/release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/G20_GN.dir/GN_g2o.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/G20_GN.dir/GN_g2o.cpp.o -MF CMakeFiles/G20_GN.dir/GN_g2o.cpp.o.d -o CMakeFiles/G20_GN.dir/GN_g2o.cpp.o -c "/Users/chengshuai/Documents/work/Curve fitting/GN_g2o.cpp"

CMakeFiles/G20_GN.dir/GN_g2o.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/G20_GN.dir/GN_g2o.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/chengshuai/Documents/work/Curve fitting/GN_g2o.cpp" > CMakeFiles/G20_GN.dir/GN_g2o.cpp.i

CMakeFiles/G20_GN.dir/GN_g2o.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/G20_GN.dir/GN_g2o.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/chengshuai/Documents/work/Curve fitting/GN_g2o.cpp" -o CMakeFiles/G20_GN.dir/GN_g2o.cpp.s

# Object files for target G20_GN
G20_GN_OBJECTS = \
"CMakeFiles/G20_GN.dir/GN_g2o.cpp.o"

# External object files for target G20_GN
G20_GN_EXTERNAL_OBJECTS =

G20_GN: CMakeFiles/G20_GN.dir/GN_g2o.cpp.o
G20_GN: CMakeFiles/G20_GN.dir/build.make
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_stitching.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_superres.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_videostab.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_aruco.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_bgsegm.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_bioinspired.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_ccalib.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_dnn_objdetect.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_dpm.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_face.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_freetype.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_fuzzy.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_hfs.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_img_hash.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_line_descriptor.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_optflow.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_reg.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_rgbd.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_saliency.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_sfm.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_stereo.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_structured_light.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_surface_matching.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_tracking.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_xfeatures2d.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_ximgproc.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_xobjdetect.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_xphoto.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_highgui.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_videoio.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_shape.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_phase_unwrapping.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_dnn.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_video.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_datasets.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_ml.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_plot.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_imgcodecs.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_objdetect.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_calib3d.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_features2d.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_flann.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_photo.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_imgproc.3.4.16.dylib
G20_GN: /usr/local/opt/opencv@3/lib/libopencv_core.3.4.16.dylib
G20_GN: CMakeFiles/G20_GN.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/chengshuai/Documents/work/Curve fitting/release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable G20_GN"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/G20_GN.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/G20_GN.dir/build: G20_GN
.PHONY : CMakeFiles/G20_GN.dir/build

CMakeFiles/G20_GN.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/G20_GN.dir/cmake_clean.cmake
.PHONY : CMakeFiles/G20_GN.dir/clean

CMakeFiles/G20_GN.dir/depend:
	cd "/Users/chengshuai/Documents/work/Curve fitting/release" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/chengshuai/Documents/work/Curve fitting" "/Users/chengshuai/Documents/work/Curve fitting" "/Users/chengshuai/Documents/work/Curve fitting/release" "/Users/chengshuai/Documents/work/Curve fitting/release" "/Users/chengshuai/Documents/work/Curve fitting/release/CMakeFiles/G20_GN.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/G20_GN.dir/depend

