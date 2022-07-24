cmake_minimum_required(VERSION 3.10)
project(my_project)
set(TARGET main)

# Set source excutable file
set(SOURCE main.cpp)

# Execute source file
add_executable(${TARGET} ${SOURCE})