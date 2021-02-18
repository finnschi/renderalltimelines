This scipt will render All Timelines in your Project

It is for MacOS and Windows only, it was made for MacOS Catalina and verified to be working for 17b9 and the latest 16 version of resolve.
Please let me know if it doesnt work on your machine.

Demo Video
https://youtu.be/VAQv15XWPrE



Windows version was added description below:


It only works on the Studio Version of resolve! 

MACOS: 

This tool requires python 2.7, on my machine it was allready installed.
https://docs.python-guide.org/starting/install/osx/

you can check that by entering 

python

into a terminal, a interactive python shell will open and tell you its version most likely it will just work. 

useage:
1. Start Resolve Studio and open a project
2. make sure scripting is set to "external scripting using Local or Network" under preferences/General
3. create a renderpreset, make sure a output location is set, remeber to use "timeline name" or some unique token per timeline in the filename or it will overwrite itself
4. doubleclick renderalltimelines.command
5. enter the preset name and press enter
6. watch resolve go vroooom

If you cant doubleclick the renderalltimelines.command file , it means the script does not have permissions to be excuted, you can fix this easily:

in a terminal type:

chmod 775 and then drag the file into the terminal and press enter

WINDOWS:

install python 2.7 and add it to your PATH env variable 
https://datascience.com.co/how-to-install-python-2-7-and-3-6-in-windows-10-add-python-path-281e7eae62a

1. Start Resolve Studio and open a project
2. make sure scripting is set to "external scripting using Local or Network" under preferences/General
3. create a renderpreset, make sure a output location is set, remeber to use "timeline name" or some unique token per timeline in the filename or it will overwrite itself
4. doubleclick renderalltimelinesWin.bat
5. enter the preset name and press enter
6. watch resolve go vroooom

