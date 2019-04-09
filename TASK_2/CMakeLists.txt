cmake_minimum_required(VERSION 3.10)
project(CMakeCheck LANGUAGES CXX)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")

execute_process(COMMAND python3 preparing.py WORKING_DIRECTORY A)
add_subdirectory(B)
add_executable(main C/main.cpp)

target_link_libraries(main library)
target_include_directories(main PUBLIC "${CMAKE_CURRENT_LIST_DIR}")
