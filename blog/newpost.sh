#!/bin/bash
if [ $# -ne 1 ]; then
	echo 'Wrong number of arguments'
	exit 1
fi

num="$1"

echo '<center>
	<img src="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/Cwiczenie_'$num'.png" width="600" />
	<br />
	<br />
	<table>
		<tr>
			<td>
				<audio controls loop>
				  <source src="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/Cwiczenie_'$num'.ogg" type="audio/ogg">
				  <source src="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/Cwiczenie_'$num'.mp3" type="audio/mpeg">
				  <video src="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/Cwiczenie_'$num'.ogg" type="video/ogg" onclick="if (this.paused) this.play(); else this.pause();" poster="https://lh4.googleusercontent.com/-OlaELiL6qZM/UTYVzjDP17I/AAAAAAAABdo/kZdHSF5Otcw/s16/play_pause.png" loop/>
				  <video src="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/Cwiczenie_'$num'.mp3" type="video/mpeg" onclick="if (this.paused) this.play(); else this.pause();" poster="https://lh4.googleusercontent.com/-OlaELiL6qZM/UTYVzjDP17I/AAAAAAAABdo/kZdHSF5Otcw/s16/play_pause.png" loop/>
				  Nie udało się odtworzyć pliku dźwiękowego.
				</audio>
			</td>
			<td>
				<a href="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/Cwiczenie_'$num'.ogg" download="Ćwiczenie '$num'.ogg"><img src="http://4.bp.blogspot.com/-sOw80agyROQ/UTEfuq-fvMI/AAAAAAAABc8/Z4VYXF0YqNY/s320/ogg.png" /></a>
				<a href="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/Cwiczenie_'$num'.pdf" download="Ćwiczenie '$num'.pdf"><img src="http://1.bp.blogspot.com/-J6tLIHbMkKA/UTEfurtI7bI/AAAAAAAABdA/7TSISeC1ngI/s320/pdf.png" /></a>
				<a href="https://dl.dropbox.com/u/19395467/Opracowania/Wokal/wokalne.blogspot.com/Cwiczenie_'$num'.mscz" download="Ćwiczenie '$num'.mscz"><img src="http://3.bp.blogspot.com/-VKdK_-4zQZM/UTEfurPSlSI/AAAAAAAABc4/DYYAgQCyBQg/s320/mscz.png" /></a>
			</td>
		</tr>
	</table>
</center>' | xclip
xclip -o
