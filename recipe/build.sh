#!/bin/bash

mkdir build
cd build

# Configure the build of Optima
cmake -GNinja .. ${CMAKE_ARGS}  \
    -DCMAKE_BUILD_TYPE=Release  \
    -DPYTHON_EXECUTABLE=$PYTHON

# Build and install Optima in $PREFIX
ninja install

# Perform all Optima tests after build step
ninja tests
