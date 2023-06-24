
@echo off
setlocal enabledelayedexpansion
set ver=1.19.3
set ftmp=forgehref.tmp
curl https://files.minecraftforge.net/net/minecraftforge/forge/index_%ver%.html -k | findstr .jar | findstr /v adfoc.us > %ftmp%3

powershell -command (Get-Content -Path '.\%ftmp%3' -TotalCount 2)[-1] > %ftmp%2
powershell -command iex .\script.ps1
del *.tmp#

echo curl \%href% >> %ftmp%
rename %ftmp% %ftmp%.cmd

call %ftmp%.cmd

rem make tmp a variable lul
pause