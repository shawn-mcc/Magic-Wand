@echo OFF
color 1b
echo Spell Components and Dispel Magic have been removed from the computer.
echo In 45 seconds, it will reboot one last time and then it should be good to go!
echo Magic Wand along with Dispel Magic will be deleted in 10 seconds.
echo Thank you for choosing Shawn's Magic Wand!
echo.
timeout 10 
cd $env:USERPROFILE\Desktop
del Shawns_Magic_Wand.exe
del Dispel_Magic.bat