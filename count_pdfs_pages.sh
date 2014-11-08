#!/bin/bash
if [ $# -ne 1 ]
then
  DIR=.
else
  DIR=$1
fi
total=0
for file in $DIR/*.pdf
do
  echo $file
  pages=`pdfinfo "$file" | grep Pages: | sed s/Pages:\ \ \ \ \ \ \ \ \ \ //`
  echo $pages
  total=$(($total + $pages))
done
echo "Total pages: $total"
