#!/bin/bash
if [ $# -ne 1 ];then
  exit
fi

TIME=$1
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "cvlc $DIR/alarm.wav" | at $TIME
