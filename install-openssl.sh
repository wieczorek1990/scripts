#!/bin/sh
# Installs OpenSSL.

source "${PWD}/Scripts/options.sh"

cd ./Others/openssl/
./Configure &&\
 make -s -j10 &&\
 sudo make install
