cmake_minimum_required(VERSION 3.10)
project(my_project)
set(TARGET main)

option(BUILD_STATIC_LIB "Build the static library" ON)

# Set static library
set(STATIC_LIB hello_library)

if(BUILD_STATIC_LIB)
  set(SOURCE_STATIC_LIB
    src/hello.cpp
  )
 
  add_library(${STATIC_LIB} STATIC
    ${SOURCE_STATIC_LIB}
  )

  target_include_directories(${STATIC_LIB} PUBLIC
    ${PROJECT_SOURCE_DIR}/include
  )
endif()

# Set source executable
set(SOURCE
  src/main.cpp
)

add_executable(${TARGET} ${SOURCE})

# Link source executable with static library
if(BUILD_STATIC_LIB)
  target_link_libraries(${TARGET} PRIVATE 
    ${STATIC_LIB}
  )
else()
  target_include_directories(${TARGET} PUBLIC
      ${PROJECT_SOURCE_DIR}/include
    )
  target_link_libraries(${TARGET}  
  ${PROJECT_SOURCE_DIR}/static/lib${STATIC_LIB}.a
  )
endif()