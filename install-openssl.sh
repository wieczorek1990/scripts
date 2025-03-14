#!/bin/sh
# Installs OpenSSL.

source "${PWD}/Scripts/base-install.sh"

cd ./Others/openssl/
./Configure &&\
 make -s -j10 &&\
 sudo make install
