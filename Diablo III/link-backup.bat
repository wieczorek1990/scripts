:: Author wieczorek1990[<at>]gmail.com

:: This script makes links to backup MPQ files

:: \Diablo III\Data_D3\PC\MPQs directory
set mpq_path="C:\Program Files (x86)\Diablo III\Data_D3\PC\MPQs"
:: Backup directory
set backup_path="C:\Program Files (x86)\Diablo III\Data_D3\PC\MPQs\backup"

:: call :link base-Win.mpq
call :link ClientData.mpq
:: call :link CoreData.mpq
:: call :link enGB_Audio.mpq
:: call :link enGB_Cutscene.mpq
:: call :link enGB_Text.mpq
:: call :link HLSLShaders.mpq
call :link Sound.mpq
call :link Texture.mpq
:: pause
exit

:link
del %mpq_path%\%~1
mklink %mpq_path%\%~1 %backup_path%\%~1
goto :eof