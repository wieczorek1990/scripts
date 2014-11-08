#!/bin/bash
while [ 1 ]
do
  dropbox status | head -n 1 | sed -r 's/.* ([0-9]+ minuty?).*/\1/'
  sleep 1
done
