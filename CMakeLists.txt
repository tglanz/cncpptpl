cmake_minimum_required(VERSION 2.8)
project(app)

set(EXECUTABLE_OUTPUT_PATH "${CMAKE_SOURCE_DIR}/bin")
set(ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib")
set(LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/lib")

include_directories(./include)

add_library(testFuncs ./src/testFuncs.cpp)

add_executable(app ./src/main.cpp)
target_link_libraries(app testFuncs)