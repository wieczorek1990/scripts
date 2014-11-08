#!/bin/bash
if [ $# -ne 1 ]
then
	echo 'Wrong number of params'
	exit 1
fi

#ms='/home/luke/MuseScore/build.release/mscore/mscore'
ms='musescore'

function convert_mscz {
	file="$1"
	ext="$2"
	base="${file%.*}"
	new="$base.$ext"
	echo "Converting $file to $new"
	if [ "$ext" == 'mp3' ]; then
		sox "$base.ogg" "$base.mp3"
	else
		"$ms" "$file" -o "$new"
		if [ "$ext" == 'png' ];	then
			pattern="$base-*.png"
			out=''
			for existing in $pattern
			do
				trimmed="${existing%.*}"'-trimmed.png'
				echo "Trimming $existing to $trimmed"
				# Watch out for page numbers in musescore settings!
				convert -trim "$existing" "$trimmed"
				out="$out"' '"$trimmed"
			done
			convert -append $out $new
			rm $out
		fi
	fi
}

function generate_content {
	file="$1"
	for ext in png ogg mp3 pdf
	do
		convert_mscz "$file" "$ext"
	done
}

file="$1"

generate_content "$file"
