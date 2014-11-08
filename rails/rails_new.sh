#!/bin/bash
if [ $# -ne 1 ]
then
  echo 'Wrong number of arguments'
  exit
fi
TARGET="$1"
SOURCE=/media/luke/data/Dropbox/Skrypty/rails
ln -s $SOURCE/database.sh $TARGET
ln -s $SOURCE/server.sh $TARGET
cp $SOURCE/seeds.rb $TARGET/db/
