# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.5/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sakshet/Desktop/Git/personal/lruCache

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sakshet/Desktop/Git/personal/lruCache/build

# Include any dependencies generated for this target.
include CMakeFiles/cpp-lru-cache-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp-lru-cache-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpp-lru-cache-test.dir/flags.make

CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.o: CMakeFiles/cpp-lru-cache-test.dir/flags.make
CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.o: ../src/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sakshet/Desktop/Git/personal/lruCache/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.o -c /Users/sakshet/Desktop/Git/personal/lruCache/src/test.cpp

CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sakshet/Desktop/Git/personal/lruCache/src/test.cpp > CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.i

CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sakshet/Desktop/Git/personal/lruCache/src/test.cpp -o CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.s

# Object files for target cpp-lru-cache-test
cpp__lru__cache__test_OBJECTS = \
"CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.o"

# External object files for target cpp-lru-cache-test
cpp__lru__cache__test_EXTERNAL_OBJECTS =

cpp-lru-cache-test: CMakeFiles/cpp-lru-cache-test.dir/src/test.cpp.o
cpp-lru-cache-test: CMakeFiles/cpp-lru-cache-test.dir/build.make
cpp-lru-cache-test: ext/gtest/src/googletest-build/libgtest.a
cpp-lru-cache-test: ext/gtest/src/googletest-build/libgtest_main.a
cpp-lru-cache-test: CMakeFiles/cpp-lru-cache-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sakshet/Desktop/Git/personal/lruCache/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpp-lru-cache-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp-lru-cache-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpp-lru-cache-test.dir/build: cpp-lru-cache-test

.PHONY : CMakeFiles/cpp-lru-cache-test.dir/build

CMakeFiles/cpp-lru-cache-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpp-lru-cache-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpp-lru-cache-test.dir/clean

CMakeFiles/cpp-lru-cache-test.dir/depend:
	cd /Users/sakshet/Desktop/Git/personal/lruCache/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sakshet/Desktop/Git/personal/lruCache /Users/sakshet/Desktop/Git/personal/lruCache /Users/sakshet/Desktop/Git/personal/lruCache/build /Users/sakshet/Desktop/Git/personal/lruCache/build /Users/sakshet/Desktop/Git/personal/lruCache/build/CMakeFiles/cpp-lru-cache-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpp-lru-cache-test.dir/depend

