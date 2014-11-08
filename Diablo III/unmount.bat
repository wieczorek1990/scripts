:: Author wieczorek1990[<at>]gmail.com

:: Unmounts the RAM drive

:: Setup these variables
:: Available letter for your RAM drive
set ram_disk_letter=X

imdisk -D -m %ram_disk_letter%:
exit