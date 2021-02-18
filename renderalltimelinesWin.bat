::written by Finn Jager 2021
::resolveStartupscript to set Environment to hook into the API  windows not working at all..  this is WIP

set RESOLVE_SCRIPT_API=%PROGRAMDATA%\\Blackmagic Design\\DaVinci Resolve\\Support\\Developer\\Scripting\\
set RESOLVE_SCRIPT_LIB=C:\\Program Files\\Blackmagic Design\\DaVinci Resolve\\fusionscript.dll
set PYTHONPATH=%RESOLVE_SCRIPT_API%\\Modules\\;%RESOLVE_SCRIPT_API%\\Examples\\

echo %PYTHONPATH%

C:\Python27\python.exe formatchecker.py

::echo "dirname: `dirname $0`"
::parent=`dirname $0`


::printf '%s ' 'Enter the name of the Render Preset'
::read ans
::echo 'Render is starting! for preset: ' $ans
::
::python $parent/renderalltimelines2.py $ans

