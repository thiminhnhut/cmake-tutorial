cmake_minimum_required(VERSION 3.10)
project(my_project)
set(TARGET main)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DEX2")

set(SOURCE 
  main.cpp
)

add_executable(${TARGET} ${SOURCE})
