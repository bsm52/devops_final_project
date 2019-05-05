cmake_minimum_required(VERSION 3.2)
project(2048)


set(SOURCE_FILES 2048.cpp)
add_executable(2048 ${SOURCE_FILES})


enable_testing()

add_executable(2048_t 2048_t.cpp)

add_test(mainTest ./2048_t)
