@echo off

cd\
cd C:\Program Files (x86)\GOG Galaxy\Games\DUSK\SDK\mnt\local\dank\maps


echo Copying Files...
copy C:\Program Files (x86)\GOG Galaxy\Games\DUSK\SDK\mnt\local\dank\maps\dank.map C:\Program Files (x86)\GOG Galaxy\Games\DUSK\SDK\mnt\local\dank\maps


echo Converting map...


echo --------------QBSP--------------
C:\quakedev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\qbsp.exe dank

echo --------------VIS---------------
C:\quakedev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\vis.exe -fast dank

echo -------------LIGHT--------------
C:\quakedev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\light.exe -soft -extra4 dank

copy dank.bsp C:\Program Files (x86)\GOG Galaxy\Games\DUSK\SDK\mnt\local\dank\maps
copy dank.pts C:\Program Files (x86)\GOG Galaxy\Games\DUSK\SDK\mnt\local\dank\maps
copy dank.lit C:\Program Files (x86)\GOG Galaxy\Games\DUSK\SDK\mnt\local\dank\maps
pause
