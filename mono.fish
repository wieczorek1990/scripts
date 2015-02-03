#!/usr/bin/env fish
set dir $argv[1]
set out $argv[2]
rm -rf $out
mkdir -p $out
for file in $dir/*
  set base (basename $file)
  convert $file -type Grayscale $out/$base
  #convert $file -monochrome $out/$base
  #convert $file -threshold 40% $out/$base
end
