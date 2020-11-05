#!/bin/bash

mkdir build
cd build
cmake -Dndsafir_BUILD_TESTS=OFF ..
make

cd ..
mkdir -p $PREFIX/bin
cp build/bin/ndsafir $PREFIX/bin/ndsafir
