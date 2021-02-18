::written by Finn Jager 2021
::resolveStartupscript to set Environment to hook into the API for wandoze
@echo off
set RESOLVE_SCRIPT_API=%PROGRAMDATA%\\Blackmagic Design\\DaVinci Resolve\\Support\\Developer\\Scripting\\
set RESOLVE_SCRIPT_LIB=C:\\Program Files\\Blackmagic Design\\DaVinci Resolve\\fusionscript.dll
set PYTHONPATH=%RESOLVE_SCRIPT_API%\\Modules\\;%RESOLVE_SCRIPT_API%\\Examples\\

set /p ans=Enter the name of the Render Preset:
echo
echo %ans%

python %~dp0/renderalltimelines2.py %ans%

