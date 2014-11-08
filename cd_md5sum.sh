#!/bin/bash
iso="$1"
dd if=/dev/cdrom | head -c `stat --format=%s "$iso"` | md5sum
md5sum "$iso"
