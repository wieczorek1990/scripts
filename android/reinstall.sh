#!/bin/bash
if [ "$#" -ne 1 ]
then
  echo 'Please specify apk filename'
  exit 1
fi
adb shell pm uninstall -k com.unit9.henson
adb install "$1"
