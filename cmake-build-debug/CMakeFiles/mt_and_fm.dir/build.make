# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = "/Users/hewo/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/221.5787.29/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/hewo/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/221.5787.29/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/mt_and_fm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mt_and_fm.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mt_and_fm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mt_and_fm.dir/flags.make

CMakeFiles/mt_and_fm.dir/main.c.o: CMakeFiles/mt_and_fm.dir/flags.make
CMakeFiles/mt_and_fm.dir/main.c.o: ../main.c
CMakeFiles/mt_and_fm.dir/main.c.o: CMakeFiles/mt_and_fm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mt_and_fm.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/mt_and_fm.dir/main.c.o -MF CMakeFiles/mt_and_fm.dir/main.c.o.d -o CMakeFiles/mt_and_fm.dir/main.c.o -c /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/main.c

CMakeFiles/mt_and_fm.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mt_and_fm.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/main.c > CMakeFiles/mt_and_fm.dir/main.c.i

CMakeFiles/mt_and_fm.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mt_and_fm.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/main.c -o CMakeFiles/mt_and_fm.dir/main.c.s

CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.o: CMakeFiles/mt_and_fm.dir/flags.make
CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.o: ../fm/stateMachine.c
CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.o: CMakeFiles/mt_and_fm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.o -MF CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.o.d -o CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.o -c /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/fm/stateMachine.c

CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/fm/stateMachine.c > CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.i

CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/fm/stateMachine.c -o CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.s

CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.o: CMakeFiles/mt_and_fm.dir/flags.make
CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.o: ../mt/MultiTimer.c
CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.o: CMakeFiles/mt_and_fm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.o -MF CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.o.d -o CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.o -c /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/mt/MultiTimer.c

CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/mt/MultiTimer.c > CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.i

CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/mt/MultiTimer.c -o CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.s

CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.o: CMakeFiles/mt_and_fm.dir/flags.make
CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.o: ../mt/unix_tick.c
CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.o: CMakeFiles/mt_and_fm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.o -MF CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.o.d -o CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.o -c /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/mt/unix_tick.c

CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/mt/unix_tick.c > CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.i

CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/mt/unix_tick.c -o CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.s

# Object files for target mt_and_fm
mt_and_fm_OBJECTS = \
"CMakeFiles/mt_and_fm.dir/main.c.o" \
"CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.o" \
"CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.o" \
"CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.o"

# External object files for target mt_and_fm
mt_and_fm_EXTERNAL_OBJECTS =

mt_and_fm: CMakeFiles/mt_and_fm.dir/main.c.o
mt_and_fm: CMakeFiles/mt_and_fm.dir/fm/stateMachine.c.o
mt_and_fm: CMakeFiles/mt_and_fm.dir/mt/MultiTimer.c.o
mt_and_fm: CMakeFiles/mt_and_fm.dir/mt/unix_tick.c.o
mt_and_fm: CMakeFiles/mt_and_fm.dir/build.make
mt_and_fm: CMakeFiles/mt_and_fm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable mt_and_fm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mt_and_fm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mt_and_fm.dir/build: mt_and_fm
.PHONY : CMakeFiles/mt_and_fm.dir/build

CMakeFiles/mt_and_fm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mt_and_fm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mt_and_fm.dir/clean

CMakeFiles/mt_and_fm.dir/depend:
	cd /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug /Users/hewo/WORKSPACE/CLionProjects/mt_and_fm/cmake-build-debug/CMakeFiles/mt_and_fm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mt_and_fm.dir/depend

