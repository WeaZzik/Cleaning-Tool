@echo off
echo.
echo ---------- Clean Script by WeaZzik ----------  
echo.
echo.
echo Cleaning Tools ? O/N :

set /p choix=
if %choix%==O goto clean
if %choix%==N goto normal

:clean
cd
copy Data\wget.exe C:\Windows\System32
del Data\wget.exe
del Data\.wget-hsts
mkdir Softwares
wget "https://download.adlice.com/api?action=download&app=roguekiller&type=x64"
ren "api@action=download&app=roguekiller&type=x64" RogueKiller.exe
move RogueKiller.exe Softwares
wget "https://downloads.malwarebytes.com/file/adwcleaner"
ren "adwcleaner" Adwcleaner.exe
move Adwcleaner.exe Softwares
wget "https://downloads.malwarebytes.com/file/mb-windows"
ren "mb-windows" Malwarebytes.exe
move Malwarebytes.exe Softwares
move "Data\Malwarebytes Uninstaller.bat"
move "Data\RogueKiller Uninstaller.bat"
start Softwares/RogueKiller.exe
start Softwares/Adwcleaner.exe
start Softwares/Malwarebytes.exe
start Data\Clean+.bat
del Clean.bat
exit

:normal
cd
start Data\Clean+.bat
del Data\wget.exe
del Clean.bat
exit
