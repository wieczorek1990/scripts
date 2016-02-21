#!/bin/sh 

sudo ip l s eth0 down
sudo ip a a 192.168.1.96/16 dev eth0
sudo ip l s eth0 up
sudo ip r a default via 192.168.1.1 dev eth0

