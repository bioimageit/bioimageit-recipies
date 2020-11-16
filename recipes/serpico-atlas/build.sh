#!/bin/bash

mkdir build
cd build
cmake ..
make

cd ..
mkdir -p $PREFIX/bin
cp build/atlas $PREFIX/bin/atlas
cp build/blobsref $PREFIX/bin/blobsref
