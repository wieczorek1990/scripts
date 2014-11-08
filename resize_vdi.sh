#!/bin/bash
path=$1
size_gb=$2
size_mb=`echo "$2 * 1024" | bc`
VBoxManage modifyhd $path --resize $size_mb
