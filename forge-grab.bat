
@echo off

set /p ver=
set ftmp=forgehref.tmp
curl https://files.minecraftforge.net/net/minecraftforge/forge/index_%ver%.html -k | findstr .jar | findstr /v adfoc.us > %ftmp%3

powershell -command (Get-Content -Path '.\%ftmp%3' -TotalCount 2)[-1] > %ftmp%2
powershell -command iex .\script.ps1


call %ftmp%.cmd
curl %href% -L -o forge-installer.jar

del *.tmp?
pause