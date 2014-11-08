#!/bin/bash
dev=$1
sectors=`blockdev --getsize /dev/$dev`s
echo $sectors
exit
resize2fs /dev/$dev $sectors
