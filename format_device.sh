#!/bin/bash
dev=/dev/sdb
sudo umount $dev
sudo parted $dev mklabel msdos
gnome-disks
# or sudo fdisk /dev/sdb
