#!/bin/bash
if [ $# -ne 1 ]; then
	echo 'Wrong nameber of arguments'
	exit 1
fi

basename="$1"

IFS=$'\n'
voices=$'Boy Soprano\nSoprano\nMezzosoprano\nAlto\nTenor\nBaritone\nBass'
for voice in $voices; do
	name="$basename-$voice"
	echo '<tr><td>'$voice'</td><td>
<audio controls loop>
  <source src="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/'$name'.ogg" type="audio/ogg">
  <source src="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/'$name'.mp3" type="audio/mpeg">
  <video src="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/'$name'.ogg" type="video/ogg" onclick="if (this.paused) this.play(); else this.pause();" poster="https://lh4.googleusercontent.com/-OlaELiL6qZM/UTYVzjDP17I/AAAAAAAABdo/kZdHSF5Otcw/s16/play_pause.png" loop/>
  <video src="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/'$name'.mp3" type="video/mpeg" onclick="if (this.paused) this.play(); else this.pause();" poster="https://lh4.googleusercontent.com/-OlaELiL6qZM/UTYVzjDP17I/AAAAAAAABdo/kZdHSF5Otcw/s16/play_pause.png" loop/>
  Nie udało się odtworzyć pliku dźwiękowego.
</audio></td>
			<td>
				<a href="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/'$name'.ogg" download="'$name'.ogg"><img src="http://4.bp.blogspot.com/-sOw80agyROQ/UTEfuq-fvMI/AAAAAAAABc8/Z4VYXF0YqNY/s320/ogg.png" /></a>
				<a href="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/'$name'.pdf" download="'$name'.pdf"><img src="http://1.bp.blogspot.com/-J6tLIHbMkKA/UTEfurtI7bI/AAAAAAAABdA/7TSISeC1ngI/s320/pdf.png" /></a>
			</td></tr>'
done
