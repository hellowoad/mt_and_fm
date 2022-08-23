cmake_minimum_required(VERSION 3.22)
project(mt_and_fm C)

set(CMAKE_C_STANDARD 99)

aux_source_directory(fm FM)
aux_source_directory(mt  MT)

include_directories(fm mt)
#add_compile_options(-g)


add_subdirectory(fm)
add_subdirectory(mt)

add_executable(mt_and_fm main.c ${FM} ${MT} )
