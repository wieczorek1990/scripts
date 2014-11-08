#!/bin/bash
gencontent=/home/luke/Dropbox/Dokumenty/Scripts/gencontent.sh
dir=/home/luke/Dropbox/Public/Opracowania/Wokal/wokalne.blogspot.com/
dir=$dir/*.mscz

for file in $dir
do
	"$gencontent" "$file"
done
