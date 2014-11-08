#!/bin/bash
if [ $# -ne 2 -o ! -f "$1" -o ! -d "$2" ]
then
  echo 'Usage: copy_spotify_local.sh spotify-uri directory'
  exit 1
fi
uris="$1"
dir="$2"
local='/tmp/local'
red='\e[0;31m'
NC='\e[0m'
shopt -s expand_aliases
alias decode='python -c "import urllib, sys; print urllib.unquote_plus(sys.stdin.read())"'

cat "$uris" | tr ' ' '\n' | grep 'spotify:local:' | cut -d ':' -f 5 | decode | head -n -1 > $local
while read title
do
  echo "Processing: \"$title\""
  sql='select Uri from CoreTracks where Title = "'"$title"'" and Uri LIKE "%.mp3"'
  uri=`sqlite3 ~/.config/banshee-1/banshee.db "$sql"`
  path=`echo "$uri" | decode | sed 's/file:\/\///'`
  if [ -z "$path" ]
  then
    echo -e "${red}Not found${NC}"
  else
    echo "cp -n \"$path\" \"$dir\""
    cp -n "$path" "$dir"
  fi
done < "$local"
unalias decode
rm "$local"
