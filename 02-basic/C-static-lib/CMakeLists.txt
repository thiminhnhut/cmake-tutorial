cmake_minimum_required(VERSION 3.10)
project(my_project)
set(TARGET main)

# Set static library
set(STATIC_LIB hello_library)

set(SOURCE_STATIC_LIB
  src/hello.cpp
)

add_library(${STATIC_LIB} STATIC
  ${SOURCE_STATIC_LIB}
)

target_include_directories(${STATIC_LIB} PUBLIC
  ${PROJECT_SOURCE_DIR}/include
)

# Set source executable
set(SOURCE
  src/main.cpp
)

add_executable(${TARGET} ${SOURCE})

# Link source executable with static library
target_link_libraries(${TARGET} PRIVATE 
  ${STATIC_LIB}
)