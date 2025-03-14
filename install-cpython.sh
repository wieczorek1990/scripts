#!/bin/sh
# Installs Python.

source "${PWD}/Scripts/base-install.sh"

cd ./Others/cpython/
./configure --prefix=/usr/local --with-openssl=/usr/local &&\
 make -s -j10 &&\
 sudo make install
