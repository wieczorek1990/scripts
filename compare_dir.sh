#!/bin/bash
tmp='/tmp/md5deep'
md5deep -r -s "$1" > "$tmp"
md5deep -r -X "$tmp" "$2"
