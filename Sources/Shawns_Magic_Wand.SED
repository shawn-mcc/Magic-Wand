[Version]
Class=IEXPRESS
SEDVersion=3
[Options]
PackagePurpose=InstallApp
ShowInstallProgramWindow=3
HideExtractAnimation=1
UseLongFileName=1
InsideCompressed=0
CAB_FixedSize=0
CAB_ResvCodeSigning=0
RebootMode=N
InstallPrompt=%InstallPrompt%
DisplayLicense=%DisplayLicense%
FinishMessage=%FinishMessage%
TargetName=%TargetName%
FriendlyName=%FriendlyName%
AppLaunched=%AppLaunched%
PostInstallCmd=%PostInstallCmd%
AdminQuietInstCmd=%AdminQuietInstCmd%
UserQuietInstCmd=%UserQuietInstCmd%
SourceFiles=SourceFiles
[Strings]
InstallPrompt=
DisplayLicense=
FinishMessage=
TargetName=C:\Users\Shawn\Desktop\Magic Wand\Test\Shawns_Magic_Wand.EXE
FriendlyName=Shawn's Magic Wand v2.0.1
AppLaunched=powershell.exe -ExecutionPolicy Bypass -File Shawns_Magic_Wand.ps1 -Verb RunAs
PostInstallCmd=<None>
AdminQuietInstCmd=
UserQuietInstCmd=
FILE0="Shawns_Magic_Wand.ps1"
FILE1="Spell_Components.json"
[SourceFiles]
SourceFiles0=C:\Users\Shawn\Desktop\Magic Wand\Test\
[SourceFiles0]
%FILE0%=
%FILE1%=
