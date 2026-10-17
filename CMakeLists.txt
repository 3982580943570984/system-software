cmake_minimum_required(VERSION 3.16)

project(timewriter CXX)

set(CMAKE_CXX_STANDARD 23)

add_executable(timewriter timewriter.cpp)

install(TARGETS timewriter)
