#!/bin/sh
# Initializes the directory for the git repositories.

source "${PWD}/Scripts/options.sh"

function clone() {
  parent="$1"
  repository="$2"
  mkdir -p "${parent}"
  cd "${parent}"
  git clone "${repository}"
  cd -
}

clone Others/ https://github.com/newelldev/macos-terminal-solarized.git
clone Others/ https://github.com/fish-shell/fish-shell.git
clone Others/ https://github.com/openssl/openssl.git
clone Others/ https://github.com/python/cpython.git
