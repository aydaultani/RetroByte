# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/arnavdaultani/desktop/untitled folder"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/arnavdaultani/desktop/untitled folder/build"

# Include any dependencies generated for this target.
include CMakeFiles/RetroByte.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RetroByte.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RetroByte.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RetroByte.dir/flags.make

CMakeFiles/RetroByte.dir/main.cpp.o: CMakeFiles/RetroByte.dir/flags.make
CMakeFiles/RetroByte.dir/main.cpp.o: ../main.cpp
CMakeFiles/RetroByte.dir/main.cpp.o: CMakeFiles/RetroByte.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/arnavdaultani/desktop/untitled folder/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RetroByte.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RetroByte.dir/main.cpp.o -MF CMakeFiles/RetroByte.dir/main.cpp.o.d -o CMakeFiles/RetroByte.dir/main.cpp.o -c "/Users/arnavdaultani/desktop/untitled folder/main.cpp"

CMakeFiles/RetroByte.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RetroByte.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/arnavdaultani/desktop/untitled folder/main.cpp" > CMakeFiles/RetroByte.dir/main.cpp.i

CMakeFiles/RetroByte.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RetroByte.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/arnavdaultani/desktop/untitled folder/main.cpp" -o CMakeFiles/RetroByte.dir/main.cpp.s

# Object files for target RetroByte
RetroByte_OBJECTS = \
"CMakeFiles/RetroByte.dir/main.cpp.o"

# External object files for target RetroByte
RetroByte_EXTERNAL_OBJECTS =

RetroByte: CMakeFiles/RetroByte.dir/main.cpp.o
RetroByte: CMakeFiles/RetroByte.dir/build.make
RetroByte: CMakeFiles/RetroByte.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/arnavdaultani/desktop/untitled folder/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RetroByte"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RetroByte.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RetroByte.dir/build: RetroByte
.PHONY : CMakeFiles/RetroByte.dir/build

CMakeFiles/RetroByte.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RetroByte.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RetroByte.dir/clean

CMakeFiles/RetroByte.dir/depend:
	cd "/Users/arnavdaultani/desktop/untitled folder/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/arnavdaultani/desktop/untitled folder" "/Users/arnavdaultani/desktop/untitled folder" "/Users/arnavdaultani/desktop/untitled folder/build" "/Users/arnavdaultani/desktop/untitled folder/build" "/Users/arnavdaultani/desktop/untitled folder/build/CMakeFiles/RetroByte.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/RetroByte.dir/depend
