cmake_minimum_required(VERSION 3.10)
project(my_project)
set(TARGET main)

# Set source excutable and library files
set(SOURCE
  src/hello.cpp
  src/main.cpp
)

add_executable(${TARGET} ${SOURCE})

# Set include directories for source executable and library files
target_include_directories(${TARGET} PRIVATE
  ${PROJECT_SOURCE_DIR}/include
)