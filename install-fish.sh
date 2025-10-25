#!/bin/sh
# Installs fish.

# Grab cmake from:
# https://cmake.org/download/
CMAKE='/Applications/CMake.app/Contents/bin/cmake'

source "${PWD}/Scripts/options.sh"

cd ./Others/fish-shell/
mkdir -p build; cd build/
$CMAKE .. &&\
 $CMAKE --build . &&\
 sudo $CMAKE --install .
