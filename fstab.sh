#!/bin/bash
echo 'UUID=222E38632181F94A /media/luke/data ntfs-3g defaults 0 0' | sudo tee -a /etc/fstab
sudo umount /dev/sda4
sudo mkdir /media/luke/data
sudo mount -a
