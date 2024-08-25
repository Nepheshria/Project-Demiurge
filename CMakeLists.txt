cmake_minimum_required(VERSION 3.29)
cmake_policy(VERSION 3.0)

project(Project_Demiurge)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

IF(NOT CMAKE_BUILD_TYPE)
    SET(CMAKE_BUILD_TYPE Debug CACHE STRING "Choose the type of build (Debug or Release)" FORCE)
ENDIF(NOT CMAKE_BUILD_TYPE)

set(CMAKE_CXX_STANDARD 20)

file(GLOB SOURCES
        src/*.h
        src/*.c
)

add_executable(Project_Demiurge main.cpp ${SOURCES}
        src/rendering/shader.cpp
        src/rendering/shader.h
        src/rendering/texture.cpp
        src/rendering/texture.h
)

target_link_libraries( Project_Demiurge glfw )

include_directories(${CMAKE_SOURCE_DIR}/includes)