#/bin/bash
mplayer -af scaletempo -ss "$2" -endpos "$3" -loop 0 "$1"
