# Shawn's Magic Wand
#### Version 2.0.0

## A Notice about Templates

Please note that the templates presented here and are for reference & transparency purposes only. The **only** file you need to successfully run the application is the exe file. 

The templates presented here are generic and do not reflect exactly what is run during the course of the application. Please see below for brief descriptions of each template

#### Spell_Components.json
- This is the file that keeps track of statuses and errors for the main program. This template is bundled with the application. A copy of this file is created by Magic Wand and placed on the user's desktop at the beginning of the ritual. This local copy is the one that is actually updated and referenced after the initial copy of the bundled template.

#### Dispel_Magic.bat
- This batch file is created by Magic Wand and placed in the startup folder after the first part of the ritual is completed. It is meant to automatically relaunch the main exe after reboot. Note that $env:USERPROFILE is dynamically replaced with the correct filepath while the program is running.

#### Dispel_Magic_2.bat
- Like the previous Dispel Magic, Dispel_Magic_2 is also created dynamically by Magic Wand in the process of its running. It serves to delete Shawns_Magic_Wand.exe at the conclusion of the ritual. It has a 10 second pause timer at the beginning to allow Magic Wand to finish closing before attempting to delete. It is needed because an EXE cannot delete itself while it is running. After deleting the exe, it deletes itself. Note that $env:USERPROFILE is dynamically replaced with the correct filepath while the program is running.