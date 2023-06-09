; ** Inno Setup version 6.0.0+ English messages ***
;
; To download user-contributed translations of this file, go to:
;   http://www.jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Telugu 
LanguageID=$044A 
LanguageCodePage=0 
; If the language you are translating to requires special font faces or
; sizes, uncomment any of the following entries and change them accordingly.
;DialogFontName=
;DialogFontSize=8
;WelcomeFontName=Verdana
;WelcomeFontSize=12
;TitleFontName=Arial
;TitleFontSize=29
;CopyrightFontName=Arial
;CopyrightFontSize=8

[Messages]

; *** Application titles
SetupAppTitle=సెటప్ 
SetupWindowTitle=సెటప్ - %1 
UninstallAppTitle=అన్‌ఇన్‌స్టాల్ చేయి 
UninstallAppFullTitle=%1 అన్‌ఇన్‌స్టాల్ చేయి 

; *** Misc. common
InformationTitle=సమాచారం 
ConfirmTitle=నిర్ధారించు 
ErrorTitle=లోపం 

; *** SetupLdr messages
SetupLdrStartupMessage=ఇది %1 ని ఇన్‌స్టాల్ చేస్తుంది. మీరు కొనసాగాలని కోరుకుంటున్నారా? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=సెటప్ ఇప్పటికే అమలులో ఉంది. 
WindowsVersionNotSupported=మీ కంప్యూటర్‍‌లో అమలులో ఉన్న విండోస్ యొక్క సంస్కరణకు ఈ ప్రోగ్రామ్‌లో మద్దతు లేదు. 
WindowsServicePackRequired=This program requires %1 Service Pack %2 or later.
NotOnThisPlatform=This program will not run on %1.
OnlyOnThisPlatform=This program must be run on %1.
OnlyOnTheseArchitectures=This program can only be installed on versions of Windows designed for the following processor architectures:%n%n%1
WinVersionTooLowError=This program requires %1 version %2 or later.
WinVersionTooHighError=This program cannot be installed on %1 version %2 or later.
AdminPrivilegesRequired=You must be logged in as an administrator when installing this program.
PowerUserPrivilegesRequired=You must be logged in as an administrator or as a member of the Power Users group when installing this program.
SetupAppRunningError=Setup has detected that %1 is currently running.%n%nPlease close all instances of it now, then click OK to continue, or Cancel to exit.
UninstallAppRunningError=Uninstall has detected that %1 is currently running.%n%nPlease close all instances of it now, then click OK to continue, or Cancel to exit.

; *** Startup questions
PrivilegesRequiredOverrideTitle=Select Setup Install Mode
PrivilegesRequiredOverrideInstruction=Select install mode
PrivilegesRequiredOverrideText1=%1 can be installed for all users (requires administrative privileges), or for you only.
PrivilegesRequiredOverrideText2=%1 can be installed for you only, or for all users (requires administrative privileges).
PrivilegesRequiredOverrideAllUsers=Install for &all users
PrivilegesRequiredOverrideAllUsersRecommended=Install for &all users (recommended)
PrivilegesRequiredOverrideCurrentUser=Install for &me only
PrivilegesRequiredOverrideCurrentUserRecommended=Install for &me only (recommended)

; *** Misc. errors
ErrorCreatingDir=Setup was unable to create the directory "%1"
ErrorTooManyFilesInDir=Unable to create a file in the directory "%1" because it contains too many files

; *** Setup common messages
ExitSetupTitle=Exit Setup
ExitSetupMessage=సెటప్ పూర్తి కాలేదు. మీరు ఇప్పుడు నిష్క్రమిస్తే, ప్రోగ్రామ్ ఇన్‌స్టాల్ చేయబడదు. %n%nఇన్‌స్టాలేషన్ ని పూర్తి చేయడానికి మీరు సెటప్‌ని మరో సమయంలో అమలు చేయవచ్చు. %n%nసెటప్ నుంచి నిష్క్రమించాలా? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &వెనుకకు 
ButtonNext=&తరువాత > 
ButtonInstall=&ఇన్‌స్టాల్ 
ButtonOK=సరే 
ButtonCancel=రద్దు చేయు 
ButtonYes=&అవును 
ButtonYesToAll=&అన్నిటికీ అవును 
ButtonNo=&కాదు 
ButtonNoToAll=మొ&త్తానికి వద్దు 
ButtonFinish=&పూర్తయింది 
ButtonBrowse=&బ్రౌజ్ చేయి... 
ButtonWizardBrowse=బ్రౌ&జ్ చేయి... 
ButtonNewFolder=&కొత్త ఫోల్డర్ రూపొందించు 

; *** "Select Language" dialog messages
SelectLanguageTitle=సెటప్ భాషను ఎంచుకోండి 
SelectLanguageLabel=ఇన్‌స్టాలేషన్ సమయంలో వాడే భాషను ఎంచుకోండి. 

; *** Common wizard text
ClickNext=కొనసాగించేందుకు తరువాతపై క్లిక్ చేయండి, లేదా సెటప్ నుండి నిష్క్రమించడానికి రద్దు పై క్లిక్ చేయండి. 
BeveledLabel=
BrowseDialogTitle=ఫోల్డర్ కొరకు బ్రౌజ్ చేయండి 
BrowseDialogLabel=క్రింది జాబితాలో ఒక ఫోల్డర్‌ను ఎంచుకోండి, ఆపై సరే క్లిక్ చేయండి. 
NewFolderName=కొత్త ఫోల్డర్ 

; *** "Welcome" wizard page
WelcomeLabel1=[name] సెటప్ విజార్డ్‌కి స్వాగతం 
WelcomeLabel2=ఇది మీ కంప్యూటర్ పై [name/ver] ను ఇన్‌స్టాల్ చేస్తుంది.%n%nకొనసాగించే ముందు మీరు అన్నీ ఇతర అప్లికేషన్‌లను మూసివేయాలని సిఫార్సు చేయబడుతుంది. 

; *** "Password" wizard page
WizardPassword=Password
PasswordLabel1=This installation is password protected.
PasswordLabel3=Please provide the password, then click Next to continue. Passwords are case-sensitive.
PasswordEditLabel=&Password:
IncorrectPassword=The password you entered is not correct. Please try again.

; *** "License Agreement" wizard page
WizardLicense=License Agreement
LicenseLabel=Please read the following important information before continuing.
LicenseLabel3=Please read the following License Agreement. You must accept the terms of this agreement before continuing with the installation.
LicenseAccepted=I &accept the agreement
LicenseNotAccepted=I &do not accept the agreement

; *** "Information" wizard pages
WizardInfoBefore=సమాచారం 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=సమాచారం 
InfoAfterLabel=Please read the following important information before continuing.
InfoAfterClickLabel=When you are ready to continue with Setup, click Next.

; *** "User Information" wizard page
WizardUserInfo=User Information
UserInfoDesc=Please enter your information.
UserInfoName=&User Name:
UserInfoOrg=&Organization:
UserInfoSerial=&Serial Number:
UserInfoNameRequired=You must enter a name.

; *** "Select Destination Location" wizard page
WizardSelectDir=గమ్యస్థానాన్ని ఎంచుకోండి 
SelectDirDesc=[name] ను ఎక్కడ ఇన్‌స్టాల్ చేయాలి? 
SelectDirLabel3=[name] సెటప్‌ను క్రింది ఫోల్డర్‌లో ఇన్‌స్టాల్ చేస్తుంది. 
SelectDirBrowseLabel=కొనసాగించడానికి, తరువాత పై క్లిక్ చేయండి. వేరే ఫోల్డర్ ఎంచుకోవాలంటే, బ్రౌజ్ క్లిక్ చేయండి. 
DiskSpaceMBLabel=డిస్క్‌లో కనీసం [mb] MB ఖాళీ స్థలం అవసరం. 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=తగినంత ఖాళీ స్థలం లేదు 
DiskSpaceWarning=Setup requires at least %1 KB of free space to install, but the selected drive only has %2 KB available.%n%nDo you want to continue anyway?
DirNameTooLong=The folder name or path is too long.
InvalidDirName=The folder name is not valid.
BadDirName32=Folder names cannot include any of the following characters:%n%n%1
DirExistsTitle=Folder Exists
DirExists=The folder:%n%n%1%n%nalready exists. Would you like to install to that folder anyway?
DirDoesntExistTitle=Folder Does Not Exist
DirDoesntExist=The folder:%n%n%1%n%ndoes not exist. Would you like the folder to be created?

; *** "Select Components" wizard page
WizardSelectComponents=Select Components
SelectComponentsDesc=Which components should be installed?
SelectComponentsLabel2=Select the components you want to install; clear the components you do not want to install. Click Next when you are ready to continue.
FullInstallation=Full installation
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Compact installation
CustomInstallation=Custom installation
NoUninstallWarningTitle=Components Exist
NoUninstallWarning=Setup has detected that the following components are already installed on your computer:%n%n%1%n%nDeselecting these components will not uninstall them.%n%nWould you like to continue anyway?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceMBLabel=Current selection requires at least [mb] MB of disk space.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Select Additional Tasks
SelectTasksDesc=Which additional tasks should be performed?
SelectTasksLabel2=Select the additional tasks you would like Setup to perform while installing [name], then click Next.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=స్టార్ట్ మెనూ ఫోల్డర్‌ని ఎంచుకోండి 
SelectStartMenuFolderDesc=ప్రోగ్రామ్ షార్ట్‌కట్‌ల సెటప్‌ను ఎక్కడ ఉంచాలి? 
SelectStartMenuFolderLabel3=ప్రోగ్రామ్ షార్ట్‌కట్‌ల సెటప్‌ను క్రింది స్టార్ట్ మెనూ ఫోల్డర్‌లో సృష్టిస్తుంది. 
SelectStartMenuFolderBrowseLabel=కొనసాగించడానికి, తరువాత పై క్లిక్ చేయండి. వేరే ఫోల్డర్ ఎంచుకోవాలంటే, బ్రౌజ్ క్లిక్ చేయండి. 
MustEnterGroupName=మీరు ఫోల్డర్ పేరుని తప్పనిసరిగా నమోదు చేయాలి. 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=ఫోల్డర్ పేరు క్రింది అక్షరాలలో దేనిని కలిగి ఉండరాదు:%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=ఇన్‌స్టాల్ చేయడానికి సిద్ధంగా ఉంది 
ReadyLabel1=మీ కంప్యూటర్ పై [name] ని ఇన్‌స్టాల్ చేయడానికి సెటప్ ఇప్పుడు సిద్ధంగా ఉంది. 
ReadyLabel2a=ఇన్‌స్టాలేషన్‌ను కొనసాగించడానికి ఇన్‌స్టాల్ పై క్లిక్ చేయండి, లేదా సెట్టింగ్‌లను పరిశీలించడానికి లేదా మార్చడానికి వెనుకకు పై క్లిక్ చేయండి. 
ReadyLabel2b=ఇన్‌స్టాలేషన్‌ను కొనసాగించడానికి ఇన్‌స్టాల్‌‌పై క్లిక్ చేయండి. 
ReadyMemoUserInfo=User information:
ReadyMemoDir=గమ్యస్థానం: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=స్టార్ట్ మెనూ ఫోల్డర్: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=ఇన్‌స్టాల్ చేయడానికి సిద్ధం చేస్తోంది 
PreparingDesc=మీ కంప్యూటర్ పై [name] ని ఇన్‌స్టాల్ చేయడానికి సెటప్ సిద్ధం చేస్తోంది. 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=సెటప్ కొనసాగించడం సాధ్యం కాదు. దయచేసి నిష్క్రమించడానికి రద్దు చేయిని క్లిక్ చేయండి. 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=ఇన్‌స్టాల్ చేస్తోంది 
InstallingLabel=దయచేసి మీ కంప్యూటర్‌పై [name] ని ఇన్‌స్టాల్ చేస్తున్నప్పుడు వేచి ఉండండి. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] సెటప్ విజార్డ్‌ని పూర్తి చేస్తోంది 
FinishedLabelNoIcons=సెటప్ మీ కంప్యూటర్‌పై [name] ని ఇన్‌స్టాల్ చేయడం పూర్తి చేసింది. 
FinishedLabel=సెటప్ మీ కంప్యూటర్‌పై [name] ని ఇన్‌స్టాల్ చేయడం పూర్తి చేసింది. ఇన్‌స్టాల్ చేసిన షార్ట్‌కట్‌లను ఎంచుకోవడం ద్వారా అప్లికేషన్‌ని ప్రారంభించవచ్చు. 
ClickFinish=సెటప్‌ని నిష్క్రమించడానికి, పూర్తయింది ఎంపికపై క్లిక్ చేయండి. 
FinishedRestartLabel=To complete the installation of [name], Setup must restart your computer. Would you like to restart now?
FinishedRestartMessage=To complete the installation of [name], Setup must restart your computer.%n%nWould you like to restart now?
ShowReadmeCheck=Yes, I would like to view the README file
YesRadio=&Yes, restart the computer now
NoRadio=&No, I will restart the computer later
; used for example as 'Run MyProg.exe'
RunEntryExec=Run %1
; used for example as 'View Readme.txt'
RunEntryShellExec=View %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Setup Needs the Next Disk
SelectDiskLabel2=Please insert Disk %1 and click OK.%n%nIf the files on this disk can be found in a folder other than the one displayed below, enter the correct path or click Browse.
PathLabel=&Path:
FileNotInDir2=The file "%1" could not be located in "%2". Please insert the correct disk or select another folder.
SelectDirectoryLabel=Please specify the location of the next disk.

; *** Installation phase messages
SetupAborted=Setup was not completed.%n%nPlease correct the problem and run Setup again.
AbortRetryIgnoreSelectAction=Select action
AbortRetryIgnoreRetry=&Try again
AbortRetryIgnoreIgnore=&Ignore the error and continue
AbortRetryIgnoreCancel=ఇన్‌స్టాలేషన్‌ను రద్దు చేయండి 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=ఫైల్‌లను సంగ్రహిస్తోంది... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=ఇన్‌స్టాలేషన్ ముగిస్తోంది... 
StatusRestartingApplications=Restarting applications...
StatusRollback=Rolling back changes...

; *** Misc. errors
ErrorInternal2=Internal error: %1
ErrorFunctionFailedNoCode=%1 failed
ErrorFunctionFailed=%1 failed; code %2
ErrorFunctionFailedWithMessage=%1 failed; code %2.%n%3
ErrorExecutingProgram=Unable to execute file:%n%1

; *** Registry errors
ErrorRegOpenKey=Error opening registry key:%n%1\%2
ErrorRegCreateKey=Error creating registry key:%n%1\%2
ErrorRegWriteKey=Error writing to registry key:%n%1\%2

; *** INI errors
ErrorIniEntry=Error creating INI entry in file "%1".

; *** File copying errors
FileAbortRetryIgnoreSkipNotRecommended=&Skip this file (not recommended)
FileAbortRetryIgnoreIgnoreNotRecommended=&Ignore the error and continue (not recommended)
SourceIsCorrupted=The source file is corrupted
SourceDoesntExist=The source file "%1" does not exist
ExistingFileReadOnly2=The existing file could not be replaced because it is marked read-only.
ExistingFileReadOnlyRetry=&Remove the read-only attribute and try again
ExistingFileReadOnlyKeepExisting=&Keep the existing file
ErrorReadingExistingDest=An error occurred while trying to read the existing file:
FileExists=The file already exists.%n%nWould you like Setup to overwrite it?
ExistingFileNewer=The existing file is newer than the one Setup is trying to install. It is recommended that you keep the existing file.%n%nDo you want to keep the existing file?
ErrorChangingAttr=An error occurred while trying to change the attributes of the existing file:
ErrorCreatingTemp=An error occurred while trying to create a file in the destination directory:
ErrorReadingSource=An error occurred while trying to read the source file:
ErrorCopying=An error occurred while trying to copy a file:
ErrorReplacingExistingFile=An error occurred while trying to replace the existing file:
ErrorRestartReplace=RestartReplace failed:
ErrorRenamingTemp=An error occurred while trying to rename a file in the destination directory:
ErrorRegisterServer=Unable to register the DLL/OCX: %1
ErrorRegSvr32Failed=RegSvr32 failed with exit code %1
ErrorRegisterTypeLib=Unable to register the type library: %1

; *** Uninstall display name markings
; used for example as 'My Program (32-bit)'
UninstallDisplayNameMark=%1 (%2)
; used for example as 'My Program (32-bit, All users)'
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-bit
UninstallDisplayNameMark64Bit=64-bit
UninstallDisplayNameMarkAllUsers=All users
UninstallDisplayNameMarkCurrentUser=Current user

; *** Post-installation errors
ErrorOpeningReadme=An error occurred while trying to open the README file.
ErrorRestartingComputer=Setup was unable to restart the computer. Please do this manually.

; *** Uninstaller messages
UninstallNotFound=File "%1" does not exist. Cannot uninstall.
UninstallOpenError=File "%1" could not be opened. Cannot uninstall
UninstallUnsupportedVer=The uninstall log file "%1" is in a format not recognized by this version of the uninstaller. Cannot uninstall
UninstallUnknownEntry=An unknown entry (%1) was encountered in the uninstall log
ConfirmUninstall=మీరు ఖచ్చితంగా %1 మరియు దాని అన్ని భాగాలను తీసివేయాలనుకుంటున్నారా? 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=దయచేసి మీ కంప్యూటర్ నుంచి %1 ని తీస్తునప్పుడు వేచి ఉండండి. 
UninstalledAll=%1 మీ కంప్యూటర్ నుంచి విజయవంతంగా తీసివేయబడింది. 
UninstalledMost=%1 అన్‌ఇన్‌స్టాల్ పూర్తయ్యింది. %n%nకొన్ని మూలకాలు తొలగించడం సాధ్యం కాలేదు. అవి మాన్యువల్‌గా తొలగించవచ్చు. 
UninstalledAndNeedsRestart=To complete the uninstallation of %1, your computer must be restarted.%n%nWould you like to restart now?
UninstallDataCorrupted="%1" file is corrupted. Cannot uninstall

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Remove Shared File?
ConfirmDeleteSharedFile2=The system indicates that the following shared file is no longer in use by any programs. Would you like for Uninstall to remove this shared file?%n%nIf any programs are still using this file and it is removed, those programs may not function properly. If you are unsure, choose No. Leaving the file on your system will not cause any harm.
SharedFileNameLabel=File name:
SharedFileLocationLabel=Location:
WizardUninstalling=Uninstall Status
StatusUninstalling=Uninstalling %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Installing %1.
ShutdownBlockReasonUninstallingApp=Uninstalling %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 version %2
AdditionalIcons=Additional shortcuts:
CreateDesktopIcon=&డెస్క్‌టాప్ సత్వరమార్గాన్ని సృష్టించు 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=%1 వెబ్‌లో 
UninstallProgram=%1ని అన్‌ఇన్‌స్టాల్ చేయి 
LaunchProgram=%1ని ప్రారంభించండి 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=ఈ పరికరంలో ఇప్పటికే Kolibri ఇన్‌స్టాల్ చేసి ఉంది. మీరు దానిని అప్‌డేట్ చేయాలనుకుంటున్నారా? 
UpgradeDelMsg=మీరు అప్‌డేట్ చేయకుండా కొత్తగా ఇన్‌స్టాల్ చేయాలనుకున్నట్లయితే, మీరు ప్రస్తుతం కలిగి ఉన్న డేటా పూర్తిగా తొలగించబడుతుంది. దయచేసి కొత్త ఇన్‌స్టాలేషన్‌ని కొనసాగించాలనుకుంటారా, లేదా అని నిర్ధారించండి. 
InstallPythonMsg=Kolibriని అమలు పరచడానికి మీ పరికరంలో Python 3.8+ ఇన్‌స్టాల్ చేసి ఉండాలి. సెటప్ విజార్డ్‌ మీ పరికరంలో Pythonని కనుగొనలేకపోయింది, అందుకని ఇప్పుడు దానిని ఇన్‌స్టాల్ చేయబోతోంది. ఇన్‌స్టాలేషన్‌ని కొనసాగించడానికి సరే క్లిక్ చేయండి. 
InstallPythonErrMsg=Python ఇన్‌స్టాల్ చేయకుండా Kolibri పని చేయదు. వెనుకకు వెళ్ళి Python ఇన్‌స్టాల్ చేయడానికి సరే క్లిక్ చేయండి, లేదా Kolibri ఇన్‌స్టాలర్ ని నిష్క్రమించడానికి రద్దు చేయి క్లిక్ చేయండి 
SetupKolibriErrMsg=కీలకమైన లోపం. ఆధారితాలు ఇన్‌స్టాల్ అవ్వలేదు. లోపం సంఖ్య: 
KolibriInstallFailed=Kolibri సెటప్ లో ఏదో తప్పు జరిగింది.%nఅదనపు సమాచారం లాగ్ ఫైల్‌లో ఉంది: 
SetupWizardMsg=సెటప్ విజార్డ్ ఫైల్‌లను కాపీ చేస్తోంది. ఇందుకు కొంత సమయం పట్టవచ్చు, దయచేసి వేచి ఉండండి.. 
LaunchKolibri=Kolibriని ప్రారంభించండి 
KolibriSupportLink=కమ్యూనిటీ ఫోరమ్‌ 
KolibriHomePage=హోమ్ పేజీ 
KolibriDocs=డాక్యుమెంటేషన్ 
FileNotFound= కనుగొనబడలేదు. 
Needhelp=ఆన్‌లైన్ సహాయం కోసం, దయచేసి మా కమ్యూనిటీ ఫోరమ్‌లని సందర్శించండి: 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=మీరు Kolibri యొక్క మొత్తం అనుబంధిత డేటాని తొలగించాలనుకుంటున్నారా? 
UninstallKolibriDataLine2=ఈ చర్య డౌన్‌లోడ్ చేసిన అన్ని కంటెంట్ ఛానల్‌లను మరియు యూజర్ ఇంటరాక్షన్ డేటా ను శాశ్వతంగా తొలగిస్తుంది. 
UninstallKolibriDataLine3=ఈ చర్యను రద్దు చేయడం సాధ్యం కాదు. 
UninstallKolibriPath=డేటా స్థానం: 
