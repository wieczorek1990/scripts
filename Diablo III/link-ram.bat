:: Author wieczorek1990[<at>]gmail.com

:: This script creates links to your RAM MPQ files.

set ram_disk_letter=X
:: \Diablo III\Data_D3\PC\MPQs directory
set mpq_path="C:\Program Files (x86)\Diablo III\Data_D3\PC\MPQs"

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
mklink %mpq_path%\%~1 %ram_disk_letter%:\%~1
goto :eof