#!/bin/bash
pid=$(ps aux | grep gradle | grep -v 'grep gradle' | tr -s ' ' | cut -d ' ' -f 2)
if [ "$pid" -eq "$pid" ]
then
  echo "Found gradle pid: $pid"
  kill "$pid"
else
  echo "Gradle not found"
fi
