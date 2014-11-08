#!/bin/bash
sudo ifconfig eth0 down
sudo macchanger -m "$1" eth0
sudo ifconfig eth0 up
