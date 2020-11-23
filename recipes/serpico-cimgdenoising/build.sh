#!/bin/bash

mkdir build
cd build
cmake -Dcimgdenoising_BUILD_TESTS=OFF ..
make

cd ..
mkdir -p $PREFIX/bin
cp build/bin/denoise $PREFIX/bin/denoise