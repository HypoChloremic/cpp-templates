#!/bin/bash

CC=g++
CFLAGS=`pkg-config --cflags glew glfw3`
LDFLAGS=`pkg-config --libs glew glfw3`
LDFLAGS="$LDFLAGS -lglut -Wall"

# Include directory for header files
INCLUDE_DIR="-I./include"

mkdir -p build

$CC $INCLUDE_DIR ./src/main.cpp ./src/shaders.cpp $CFLAGS $LDFLAGS -o progr
