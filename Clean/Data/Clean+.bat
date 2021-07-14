@echo off
echo Clean Windows Data ? O/N :

set /p choix2=
if %choix2%==O goto WD
if %choix2%==N goto normal

:WD
cd Data
diskpart /s "Bin.txt"
pause
del Bin.txt
start cleanmgr.exe
start ms-settings:windowsupdate
echo.
echo.
echo Finish ! You can close this window !
echo.
echo.
del Wicon.ico
del Clean+.bat


:normal
cd Data
del Bin.txt
echo.
echo.
echo End ! You can close this window !
echo.
echo.
del Wicon.ico
del Clean+.bat