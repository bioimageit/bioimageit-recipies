#!/bin/bash


chmod +x build.sh
./build.sh

mkdir -p $PREFIX/bin

cp build/bin/sdeconv2d $PREFIX/bin/sdeconv2d
cp build/bin/sdeconv3d $PREFIX/bin/sdeconv3d
