::written by Finn Jager 2021
::resolveStartupscript to set Environment to hook into the API for wandoze
@echo off
set RESOLVE_SCRIPT_API=%PROGRAMDATA%\\Blackmagic Design\\DaVinci Resolve\\Support\\Developer\\Scripting\\
set RESOLVE_SCRIPT_LIB=C:\\Program Files\\Blackmagic Design\\DaVinci Resolve\\fusionscript.dll
set PYTHONPATH=%RESOLVE_SCRIPT_API%\\Modules\\;%RESOLVE_SCRIPT_API%\\Examples\\

powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Enter the name of the Render Preset:', 'Right here')}" > %TEMP%\out.tmp
set /p OUT=<%TEMP%\out.tmp

python %~dp0/renderalltimelines2.py %OUT%

