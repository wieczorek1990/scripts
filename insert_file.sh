#!/bin/bash
# insert.sh file1 file2 line
# Inserts file2 into file1 begining from line.
# line should be 1..infinity

file1="$1"
file2="$2"
line="$3"

head -n `echo "$line" - 1 | bc` "$file1"
cat "$file2"
tail -n +`echo "$line" | bc` "$file1"
