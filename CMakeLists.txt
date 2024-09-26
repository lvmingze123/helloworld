cmake_minimum_required(VERSION 3.0)

project(HelloWorldProject)

add_library(hello_lib hello.cpp)

add_executable(hello_main main.cpp)

target_link_libraries(hello_main hello_lib)