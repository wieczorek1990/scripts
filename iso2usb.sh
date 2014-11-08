#!/bin/bash
sudo umount /dev/sdb1
sudo dd bs=4M if="$1" of=/dev/sdb1
