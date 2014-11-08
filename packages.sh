#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
sudo apt-get install `sed 's/#.*//' "$DIR/packages" | tr '\n' ' '`
