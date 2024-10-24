# FindSOIL - attempts to locate the SOIL library.
#
# This module defines the following variables (on success):
# SOIL_INCLUDE_DIRS - where to find SOIL/SOIL.hpp
# SOIL_FOUND - if the library was successfully located
#
# It is trying a few standard installation locations, but can be customized
# with the following variables:
# SOIL_ROOT_DIR - root directory of a SOIL installation
# Headers are expected to be found in either:
# <SOIL_ROOT_DIR>/SOIL/SOIL.hpp OR
# <SOIL_ROOT_DIR>/include/SOIL/SOIL.hpp
# This variable can either be a cmake or environment
# variable. Note however that changing the value
# of the environment variable will NOT result in
# re-running the header search and therefore NOT
# adjust the variables set by this module.
#=============================================================================
# Copyright 2012 Carsten Neumann
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
# License text for the above reference.)
# default search dirs

SET(_SOIL_HEADER_SEARCH_DIRS
        "/usr/include"
        "/usr/local/include"
        "${CMAKE_SOURCE_DIR}/includes"
        "C:/Program Files (x86)/SOIL" )
# check environment variable
SET(_SOIL_HEADER_SEARCH_DIRS "$ENV{SOIL_ROOT_DIR}")
IF(NOT SOIL_ROOT_DIR AND _SOIL_ENV_ROOT_DIR)
    SET(SOIL_ROOT_DIR "${_SOIL_ENV_ROOT_DIR}")
ENDIF(NOT SOIL_ROOT_DIR AND _SOIL_ENV_ROOT_DIR)
# put user specified location at beginning of search
IF(SOIL_ROOT_DIR)
    SET(_SOIL_HEADER_SEARCH_DIRS "${SOIL_ROOT_DIR}"
            "${SOIL_ROOT_DIR}/include"
            ${_SOIL_HEADER_SEARCH_DIRS})
ENDIF(SOIL_ROOT_DIR)
# locate header
FIND_PATH(SOIL_INCLUDE_DIR "SOIL/SOIL.hpp"
        PATHS ${_SOIL_HEADER_SEARCH_DIRS})
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SOIL DEFAULT_MSG
        SOIL_INCLUDE_DIR)
IF(SOIL_FOUND)
    SET(SOIL_INCLUDE_DIRS "${SOIL_INCLUDE_DIR}")
    MESSAGE(STATUS "SOIL_INCLUDE_DIR = ${SOIL_INCLUDE_DIR}")
ENDIF(SOIL_FOUND)