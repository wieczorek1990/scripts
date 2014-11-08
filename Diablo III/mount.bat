:: Author wieczorek1990[<at>]gmail.com

:: This script copies your MPQ files to RAM drive and creates links from your RAM drive files to Diablo III MPQ directory.
:: You must have ImDisk: http://www.ltr-data.se/opencode.html/#ImDisk
:: You should have around 8GB RAM for this to work properly (you can put less or more MPQ files in RAM though - just uncoment adequate lines in script)

:: HOWTO
:: Go to diablo MPQ directory - Instalation Path\Diablo III\Data_D3\PC\MPQs
:: Create a new directory named backup
:: Cut MPQ files (ClientData.mpq, Sound.mpq, Texture.mpq) and paste them to backup diretory
:: Setup variables in script
:: Run mount.bat
:: Start game
:: After exit run unmount.bat

:: Setup these variables
set ram_disk_size=5151M
:: Available letter for your RAM drive
set ram_disk_letter=X
:: \Diablo III\Data_D3\PC\MPQs directory
set mpq_path="C:\Program Files (x86)\Diablo III\Data_D3\PC\MPQs"
:: Backup directory
set backup_path="C:\Program Files (x86)\Diablo III\Data_D3\PC\MPQs\backup"

imdisk -a -s %ram_disk_size% -m %ram_disk_letter%: -p "/fs:ntfs /q /y"
robocopy %backup_path% %ram_disk_letter%:

:: call :link base-Win.mpq
call :link ClientData.mpq
:: call :link CoreData.mpq
:: call :link enGB_Audio.mpq
:: call :link enGB_Cutscene.mpq
:: call :link enGB_Text.mpq
:: call :link HLSLShaders.mpq
call :link Sound.mpq
call :link Texture.mpq
pause
exit

:link
del %mpq_path%\%~1
mklink %mpq_path%\%~1 %ram_disk_letter%:\%~1
goto :eof