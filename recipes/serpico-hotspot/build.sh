#!/bin/bash

mkdir build
cd build
cmake ..
make

cd ..
mkdir -p $PREFIX/bin
cp build/bin/hotSpotDetection $PREFIX/bin/hotSpotDetection