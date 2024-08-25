cmake_minimum_required(VERSION 3.29)
project(Project_Demiurge)

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
