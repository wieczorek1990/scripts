#!/bin/sh
# Sets shell options and defines install function.

set -euox pipefail

function install {
	cd "$1"
	./bin/install.sh
	cd -
}
