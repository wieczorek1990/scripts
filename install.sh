#!/bin/sh
# Installs.

source "${PWD}/Scripts/options.sh"

# Fish shell.
./Scripts/install-fish.sh
# Python with dependencies.
./Scripts/install-openssl.sh
./Scripts/install-cpython.sh
