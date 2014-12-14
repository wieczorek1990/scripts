#!/usr/bin/env fish
set argc (count $argv)
if [ $argc -ne 1 ]
  echo 'Provide an argument'
  exit 1
end
set dir "$argv[1]"
if [ ! -d "$dir" ]
  echo 'Argument is not a directory'
  exit 1
end
find "$dir" -type d | parallel chmod 755
find "$dir" -type f | parallel chmod 644
