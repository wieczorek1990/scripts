#!/bin/bash
if [ $# -le 1 ]; then
  if [ $# -eq 1 ]; then
    TARGET=$1
  else
    TARGET=~/Dropbox
  fi
else
  echo 'Wrong number of params'
  exit
fi
find "$TARGET" -name '*~' -exec rm -v '{}' ';'
