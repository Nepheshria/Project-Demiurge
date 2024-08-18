cmake_minimum_required(VERSION 3.29)
project(Project_Demiurge)

set(CMAKE_CXX_STANDARD 20)

file(GLOB SOURCES
        *.h
        *.c
)

add_executable(yourProj ${SOURCES})

add_executable(Project_Demiurge main.cpp
        glad.c)
target_link_libraries( Project_Demiurge glfw )
