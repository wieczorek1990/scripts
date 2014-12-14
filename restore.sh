#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
from=/media/usb0
to=/home/luke/Backup
rsync -r --info=progress2 "$from/" "$to"
