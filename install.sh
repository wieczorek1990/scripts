#!/bin/sh
# Installs.

source "${PWD}/Scripts/options.sh"

./Scritps/install-rust.sh
./Scripts/install-fish.sh
./Scripts/install-openssl.sh
./Scripts/install-cpython.sh
