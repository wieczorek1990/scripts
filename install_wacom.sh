#!/bin/bash
sudo cp ./3.7/wacom.ko /lib/modules/`uname -r`/kernel/drivers/input/tablet
sudo cp ./3.7/wacom_w8001.ko /lib/modules/`uname -r`/kernel/drivers/input/touchscreen
sudo modprobe -r wacom
sudo modprobe -r w8001
sudo insmod /lib/modules/`uname -r`/kernel/drivers/input/tablet/wacom.ko
sudo insmod /lib/modules/`uname -r`/kernel/drivers/input/touchscreen/wacom_w8001.ko
