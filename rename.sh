#!/bin/bash
if [ "$#" -ne 1 ]
then
  echo 'Usage: bash rename.sh dir'
  exit 1
fi

dir="$1"

for file in "$dir"/*.flac
do
  new=`echo "$file" | sed -r 's/Disc [0-9]+ - //'`
  mv "$file" "$new"
done
