cmake_minimum_required(VERSION 3.10)

project(cat)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(SOURCES cat.cpp)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")

add_executable(${PROJECT_NAME} ${SOURCES})
