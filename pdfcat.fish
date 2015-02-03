#!/usr/bin/env fish
set argc (count $argv)
if [ $argc -ne 3 ]
  echo 'Wrong argc'
  exit 1
end
set list $argv[1]
set dir $argv[2]
set out $argv[3]
while read line
  echo $line
  set file "$dir/$line"
  if not [ -e "$file.png" ]
    convert -density 300 "$file.pdf" -trim "$file.png"
  end
end < $list
convert -append "$dir/*.png" "$out.png"
