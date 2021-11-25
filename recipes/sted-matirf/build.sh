#!/bin/bash

mkdir build
cd build
cmake ..
make

cd ..
mkdir -p $PREFIX/bin
cp build/bin/matirf $PREFIX/bin/matirf