#!/usr/bin/env fish
set argc (count $argv)
if test $argc -eq 1
  cd $argv[1]
end
set newline (echo)
set index 1
for file in *.{jpg,JPG}
  set date (exiftool -EXIF:CreateDate $file | \
    sed 's/[^:]*: //;s/:/-/g')
  if test "$date" != "$newline"
    mv "$file" "$date.jpg"
  else
    echo "$file has no create date"
    mv "$file" "$index.jpg"
    set index (math $index + 1)
  end
end
