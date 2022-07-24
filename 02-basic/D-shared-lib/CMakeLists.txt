cmake_minimum_required(VERSION 3.10)
project(my_project)
set(TARGET main)

# Set shared library
set(SHARED_LIB hello_library)
set(SHARED_LIB_REF hello::library)

set(SOURCE_SHARED_LIB
  src/hello.cpp
)

add_library(${SHARED_LIB} SHARED
  ${SOURCE_SHARED_LIB}
)

add_library(${SHARED_LIB_REF} ALIAS 
  ${SHARED_LIB}
)

target_include_directories(${SHARED_LIB} PUBLIC
  ${PROJECT_SOURCE_DIR}/include
)

# Set source executable
set(SOURCE 
  src/main.cpp
)

add_executable(${TARGET} ${SOURCE})

# Link source executable with share library
target_link_libraries(${TARGET} PRIVATE 
  ${SHARED_LIB_REF}
)