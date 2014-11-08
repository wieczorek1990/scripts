#!/bin/bash
tmp=/tmp/current.mac
if [ ! -f $tmp ]
then
  current=0
else
  last=`cat $tmp`
  current=$(($last + 1))
fi
echo $current > $tmp
if [ $current -lt 10 ]
then
  current=0$current
fi
permanent=`sudo macchanger -p eth0 | grep Permanent | cut -d' ' -f 3`
new=`echo $permanent | sed s/..$/$current/`
sudo service network-manager stop
sudo macchanger -m $new wlan0
sudo service network-manager start
