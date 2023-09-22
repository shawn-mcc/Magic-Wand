# Shawn's Magic Wand
# Changelog
## Version 2.0.1

### Bugfixes
- Fixed bug that prevented Dispel_Magic_2 from properly launching to delete Magic Wand after completion.
- Removed error catching for emptying recycle bin due to always throwing false positives.
- Changed initial Error_Num variable in Spell Components from null to 0 in order to prevent issues refering to null value in the case of no errors. 

### New Features
- Added Desktop OneDrive sync and added new catch to let user know if that is the problem.
- Added check to NPS to see if Adobe is already installed before trying to install it.

## Version 2.0.0
This is our first major update since the projects original inception! Many features have been added, changed, or overhauled. Please see below for the changes that were made. Please reach out and let me know if you encounter a bug or error that is not mentioned here.

### New Features

#### General:
- Now an executable! No more having to run the program from ISE and manually changing ExecutionPolicy's!
- Removed the voice feature of the Wizard (too annoying)
- Extended Happy Beeps and Sad Beeps play time for relevant events
- Added check to make sure Magic Wand has admin privileges
- Added check to see if conflicting programs (McAfee) are installed
- Now uses a Json file called spell_components to keep track of status and errors
- Added error checks to each step of the ritual.
- Check's for and updates NuGet Libraries before attempting Windows Updates
- Magic Wand gathers info about the system it is being run on such as hardware info, serial number and OS versions.
- Now re-checks for windows updates a 2nd time after reboot
- All repair activities are now located in the main ps1 file
	- Previously, Dispel Magic held the scripts for post-reboot actions. Now Dispel magic simply relaunches the main wand file which checks spell components and resumes where it left off.
- Magic Wand now gives a summary report of its actions and any errors it encountered at the conclusion of the ritual.
-  Can now throw 3 different types of errors:
	- *Repair Errors* - Errors that occur from failing a specific step in the ritual. These will record the error message from the system itself along with a recommendation from the Wizard on how to proceed.
	- *Critical Errors* - Large-scale errors that stop the ritual from completing.
	- *Overrideable Errors* - Considerable errors that could hamper the Wizard's ability to complete the ritual. The program will recommend quitting until the error is resolved, but will allow the operator to override them. (Overrides are logged in Spell Components as errors)
- Added steps counter for ritual so user can see how far along they are in the process
- Added a 2nd dispel magic script for self-deletion since an exe cannot delete itself like a ps1 file can.
- Reboots a final time after everything is complete and the magic wand has deleted itself.

#### New PC Setup (NPS)
- Now installs VLC Media player in addition to it's other software.
- Performs initial Winget library setup

#### Tune-Up
- Now removes Pre-Fetch files in addition to user and OS temp files
- Now attempts to enable disk cleanup if it is disabled
- Clearing the recycle bin now clears it for all users instead of just the current one

### Known Issues
If you encounter an error that is not in this list, please open an issue on GitHub or reach out to me and let me know.

- Magic Wand does not recognize it is placed on the desktop if the desktop is synced with OneDrive. 
	- *This is because the OneDrive Desktop is located at **C:\Users\USERNAME\OneDrive\Desktop** and the Magic Wand explicitly looks for a path at **C:\Users\USERNAME\Desktop**. If this is the case, please manually navigate to the local desktop and place the application there. I will be fixing this issue in a future relase.*
- Magic Wand currently has no way to catch errors thrown by Winget if an error occurs after the package is found, but before successful installation (e.g. in the event of internet outage or a 403 rejected message).
	- *I'm working on a way to catch these error codes  in real time from the library without having to pull the log files*
- Certain applications do not oblige the **--accept-source-agreements** or **--accept-package-agreements** flags and will cause a pop up to appear. If this occurs, magic wand will hang and until the dialog box is closed. 
	- *I don't currently have an idea for how to handle this one, but I believe it is a rare enough situation that it can be safely ignored. The only app I've found that currently gives this issue is PHP IntelliSense, which is no longer officially supported anyway. This only affects app updates, not windows updates.*
- Sometimes the UAC doesn't trigger after reboot to relaunch Magic Wand. 
	- *I don't currently know what causes this, but it seems to be exclusive to older systems, and even then it's not a constant issue. The older system I tested on which was the only one to give this problem seemed to work ~ 90% of the time*
	- *Since Magic Wand now handles post-reboot actions using Spell Components, if the UAC doesn't automatically trigger after reboot, you can simply relaunch the exe (make sure you do it as an admin) and it will pick up from where it left off* 

### Future Plans

None of these features are guaranteed, just ideas I would like to work on implementing next.

- GUI Interface
- New Ritual - Deep Clean
	- I want to add a 3rd ritual option called a Deep Clean. This will perform everything a Tune Up does but will also perform registry cleaning and malware scans.