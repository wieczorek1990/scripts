#!/bin/bash
function go {
  org="$1"
  dir="$2"
  echo "cd $dir"
  cd "$dir" &> /dev/null
  if [ $? -eq 0 ]
  then
    new=`pwd`
    echo "go $org $new/$dir"
    go "$org" "$dir"
  else
    dirs=`ls *`
    echo "mv $dirs $org/$dir"
    mv * "$org/$dir"
    echo "cd $org/$dir"
    cd "$org/$dir"
    echo "rm -rf $dir"
    rm -rf "$dir"
  fi
}

for dir in */
do
  echo "$dir"
  org=`pwd`
  go "$org" "$dir"
  cd "$org"
done
