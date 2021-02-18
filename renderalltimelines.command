rte#!/bin/bash
##written by Finn Jager 2021
##resolveStartupscript to set Environment to hook into the API  for MacOS only
export PYTHONPATH="/Library/Application Support/Blackmagic Design/DaVinci Resolve/Developer/Scripting/Modules/:/Library/Application Support/Blackmagic Design/DaVinci Resolve/Developer/Scripting/Examples/"
export RESOLVE_SCRIPT_LIB="/Applications/DaVinci Resolve/DaVinci Resolve.app/Contents/Libraries/Fusion/fusionscript.so"
export RESOLVE_SCRIPT_API="/Library/Application Support/Blackmagic Design/DaVinci Resolve/Developer/Scripting/"


echo "dirname: `dirname $0`"
parent=`dirname $0`


printf '%s ' 'Enter the name of the Render Preset'
read ans
echo 'Render is starting! for preset: ' $ans

python $parent/renderalltimelines2.py $ans

