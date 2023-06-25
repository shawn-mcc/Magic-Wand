# Magic-Wand
A PS script to make new PC setups &amp; Tune Up's Eaiser.

#### Version 1.2 Beta (not all features functional yet, see changelog at end of file)



## Instructions
- Go to the green "Code" button above and download this repo as a .zip file
![1](https://user-images.githubusercontent.com/10052698/204049058-98bc26ae-b44e-4851-8a7f-6ce904b9bc19.PNG)

- Extract the .zip file in your Downloads folder and naviagte to the extracted folder
![2](https://user-images.githubusercontent.com/10052698/204050172-8fb97cda-79a7-4eed-948a-65393bdf7cad.PNG)

![3](https://user-images.githubusercontent.com/10052698/204050201-e224cf28-3ac8-40e0-acbb-12fe5e08c846.PNG)



- Copy Shawns_Magic_Wand.ps1 on the *Desktop* of the computer (DO NOT RENAME THE FILE)
![4](https://user-images.githubusercontent.com/10052698/204050241-db9bf90f-e786-4af1-b691-84bb45d6e824.PNG)


- In your windows searchbar, type ISE
- Look for Powershell ISE, and *run it as an administrator*
![12](https://user-images.githubusercontent.com/10052698/204050376-9f214940-fa4c-42d5-9b9a-12ac79546fb4.png)


- Approve the UAC popup by clicking "Yes" on the box that pops up with a notification sound

- Verify that you are currently running as an administrator by checking the terminal. It should end in System32, as shown in the picture below. If it says your username instead, you did not click "run as Administrator" in your windows searchbar.
![5](https://user-images.githubusercontent.com/10052698/204050602-ac79aa4b-f34a-45fb-9166-59bbb1c83681.PNG)



- Type or copy the following command into the terminal:

 > Set-ExecutionPolicy Bypass
 
 - This command is case sensitive and must match exactly. 



- Select "Yes to All" in the dialogue box. This allows the script to run autonomously without asking for permission every step of the way. (Don't worry, the script will undo these settings after it has finished to ensure user security)
![6](https://user-images.githubusercontent.com/10052698/204050768-d30b9b90-90ae-4a60-ae73-72fe4f2a3ef3.PNG)

- In ISE, go to the top and click file -> open
![7](https://user-images.githubusercontent.com/10052698/204050776-d67a0e52-03b0-45d5-b091-fe5de5ee6606.png)

- Navigate to the Desktop folder and open Shawns_Magic_Wand.ps1 in ISE
- Drag the blue terminal screen up (Do not modify the code in the white text editor field)
![8](https://user-images.githubusercontent.com/10052698/204050793-8d7ab9c1-1261-487c-bff9-3fe031c7fb4a.PNG)

![9](https://user-images.githubusercontent.com/10052698/204050810-bf15447f-9ff8-4c2f-b9ee-b898e46ecd1b.PNG)

- Click the green arrow to begin running the program
![10](https://user-images.githubusercontent.com/10052698/204050832-a82b7d16-23ed-466c-bf14-f15eb9003752.PNG)


- Thats it! The wizard himself will guide you through the rest!
![11](https://user-images.githubusercontent.com/10052698/204050843-bd7fe221-5e5c-4abc-a499-d64a8a3c5947.PNG)


- NOTE: This program deletes itself after running. If you'd like to keep a copy of it, it is highly recomended to keep it on something like a flash drive and copy it onto Dekstops of computers you're working on. You can ignore this if you're running it one time on a personal device.


## 1.2 Changelog

### Bug Fixes
- [✔] Fixed issue where Happy-Beeps and the 10 second countdown does not work
- [✔] Fixed issue with winget not properly applying updates
- [✔] Fixed error catching in creating a restore point if the suspect was originally in S mode. (Magic wand will now attempt to enable the service if it is disabled)

### New Features
- [✔] Spell components feature added to store variables and error data
- [] Add end report HTML file for visual feedback of completion and any error data from spell components
- [] Add support to install VLC media player in NPS?
- [] Add check to see if Magic Wand lives in download (i.e. downloaded from github instead of on a flash drive) and remove it from downloads if it does.

### Quality of Life Improvements
- [✔] Added graceful error handling for more events and stores error data to be used in end reprot
- [✔] DISM and SFC now create a new window to show progress
