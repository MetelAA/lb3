# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\CLion\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\CLion\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\ClionProj\cProj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\ClionProj\cProj\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cProj.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cProj.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cProj.dir/flags.make

CMakeFiles/cProj.dir/main.c.obj: CMakeFiles/cProj.dir/flags.make
CMakeFiles/cProj.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\ClionProj\cProj\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cProj.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cProj.dir\main.c.obj   -c D:\ClionProj\cProj\main.c

CMakeFiles/cProj.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cProj.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\ClionProj\cProj\main.c > CMakeFiles\cProj.dir\main.c.i

CMakeFiles/cProj.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cProj.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\ClionProj\cProj\main.c -o CMakeFiles\cProj.dir\main.c.s

# Object files for target cProj
cProj_OBJECTS = \
"CMakeFiles/cProj.dir/main.c.obj"

# External object files for target cProj
cProj_EXTERNAL_OBJECTS =

cProj.exe: CMakeFiles/cProj.dir/main.c.obj
cProj.exe: CMakeFiles/cProj.dir/build.make
cProj.exe: CMakeFiles/cProj.dir/linklibs.rsp
cProj.exe: CMakeFiles/cProj.dir/objects1.rsp
cProj.exe: CMakeFiles/cProj.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\ClionProj\cProj\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cProj.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cProj.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cProj.dir/build: cProj.exe

.PHONY : CMakeFiles/cProj.dir/build

CMakeFiles/cProj.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cProj.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cProj.dir/clean

CMakeFiles/cProj.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\ClionProj\cProj D:\ClionProj\cProj D:\ClionProj\cProj\cmake-build-debug D:\ClionProj\cProj\cmake-build-debug D:\ClionProj\cProj\cmake-build-debug\CMakeFiles\cProj.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cProj.dir/depend

