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
LanguageName=Bengali 
LanguageID=0 
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
SetupAppTitle=সেটআপ 
SetupWindowTitle=সেটআপ - %1 
UninstallAppTitle=আনইন্সটল 
UninstallAppFullTitle=%1 আনইন্সটল 

; *** Misc. common
InformationTitle=তথ্য 
ConfirmTitle=নিশ্চিত করুন 
ErrorTitle=সমস্যা 

; *** SetupLdr messages
SetupLdrStartupMessage=এটা %1 ইন্সটল করবে। আপনি কি বজায় রাখতে চান? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=সেটআপ ইতিমধ্যে চলমান। 
WindowsVersionNotSupported=আপনার কম্পিউটারের চলমান উইন্ডো সংস্করণটি এই প্রোগ্রামটি সমর্থন করছে না। 
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
ExitSetupMessage=সেটআপ সম্পূর্ণ হয়নি। এখন যদি আপনি প্রস্থান করেন, প্রোগ্রামটি ইন্সটল হবেনা। %n%n ইন্সটলেশন সম্পূর্ণ করার জন্য আপনি অন্য সময়ে আবার সেটআপ সচল করতে পারেন। %n%n সেটআপ থেকে প্রস্থান করবেন? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &ব্যাক 
ButtonNext=&নেক্সট > 
ButtonInstall=&ইন্সটল করুন 
ButtonOK=সঠিক 
ButtonCancel=বাতিল 
ButtonYes=&হ্যাঁ 
ButtonYesToAll=হ্যাঁ &সমস্ত ক্ষেত্রে 
ButtonNo=&না 
ButtonNoToAll=সমস্ত ক্ষেত্রে না 
ButtonFinish=&শেষ করুন 
ButtonBrowse=&ব্রাউস... 
ButtonWizardBrowse=ব্রা&উস... 
ButtonNewFolder=&তৈরি করুন নতুন ফোল্ডার 

; *** "Select Language" dialog messages
SelectLanguageTitle=সেটআপ ভাষা নির্বাচন করুন 
SelectLanguageLabel=ইন্সটলেশন চলাকালীন ব্যবহৃত ভাষাটি নির্বাচন করুন। 

; *** Common wizard text
ClickNext=চালিয়ে যাওয়ার জন্য নেক্সট ক্লিক করুন, বা সেটআপ থেকে প্রস্থানের জন্য ক্যান্সেল ক্লিক করুন। 
BeveledLabel=
BrowseDialogTitle=ফোল্ডারের জন্য ব্রাউস করুন 
BrowseDialogLabel=নীচের তালিকার একটি ফোল্ডার নির্বাচন করুন, তারপর ওকে ক্লিক করুন। 
NewFolderName=নতুন ফোল্ডার 

; *** "Welcome" wizard page
WelcomeLabel1=[name] সেটআপ উইজার্ডটিতে স্বাগত 
WelcomeLabel2=এটা আপনার কম্পিউটারে [নাম/সংস্করণ] ইন্সটল করবে। %n%n এটা সুপারিশ করা হয় যে চলমান হওয়ার আগে অন্যান্য সমস্ত অ্যাপলিকেশন আপনি বন্ধ করবেন। 

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
WizardInfoBefore=তথ্য 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=তথ্য 
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
WizardSelectDir=গন্তব্য অবস্থান নির্বাচন করুন 
SelectDirDesc=[name] কোথায় ইন্সটল হওয়া উচিৎ? 
SelectDirLabel3=নিম্নলিখিত ফোল্ডারটির মধ্যে সেটআপ [name] ইন্সটল করবে। 
SelectDirBrowseLabel=চালিতে যাওয়ার জন্য, নেক্সট ক্লিক করুন। যদি আপনি একটা ভিন্ন ফোল্ডার নির্বাচন করতে চান, ব্রাউস ক্লিক করুন। 
DiskSpaceMBLabel=অন্তত [mb] এম.বি মুক্ত ডিস্ক স্থান প্রয়োজন। 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=যথেষ্ট ডিস্ক স্থান নেই 
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
WizardSelectProgramGroup=স্টার্ট মেনু ফোল্ডার নির্বাচন করুন 
SelectStartMenuFolderDesc=প্রোগ্রামের শর্টকাটগুলি সেটআপের কোথায় স্থাপন করা উচিৎ? 
SelectStartMenuFolderLabel3=নিম্নলিখিত স্টার্ট মেনু ফোল্ডারটিতে সেটআপ প্রোগ্রামের শর্টকাটগুলি প্রস্তুত করবে। 
SelectStartMenuFolderBrowseLabel=চালিতে যাওয়ার জন্য, নেক্সট ক্লিক করুন। যদি আপনি একটা ভিন্ন ফোল্ডার নির্বাচন করতে চান, ব্রাউস ক্লিক করুন। 
MustEnterGroupName=আপনাকে অবশ্যই একটি ফোল্ডার নাম লিখতে হবে। 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=ফোল্ডার নামটিতে নিম্নলিখিত কোনও অক্ষর অন্তর্ভুক্ত করা যায়না: %n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=ইন্সটল করার জন্য প্রস্তুত 
ReadyLabel1=এখন সেটআপ প্রস্তুত আপনার কম্পিউটারে [name] ইন্সটল আরম্ভ করতে। 
ReadyLabel2a=ইন্সটল করা চলমান রাখার জন্য ইন্সটল ক্লিক করুন, বা যদি আপনি কোনও সেটিঙের পর্যালোচনা বা পরিবর্তন করতে চান ব্যাক ক্লিক করুন। 
ReadyLabel2b=ইন্সটল করা চলমান রাখতে ইন্সটল ক্লিক করুন। 
ReadyMemoUserInfo=User information:
ReadyMemoDir=গন্তব্য অবস্থান: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=স্টার্ট মেনু ফোল্ডার: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=ইন্সটল করার জন্য প্রস্তুত হচ্ছে 
PreparingDesc=আপনার কম্পিউটারে [name] ইন্সটল করার জন্য সেটআপ প্রস্তুত হচ্ছে। 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=সেটআপ চলমান হতে পারছেনা। অনুগ্রহ করে প্রস্থান করতে ক্যান্সেল ক্লিক করুন। 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=ইন্সটল হচ্ছে 
InstallingLabel=অনুগ্রহ করে আপেক্ষা করুন যখন সেটআপ আপনার কম্পিউটারে [name] ইন্সটল করছে। 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] সেটআপ উইজার্ডটি সম্পূর্ণ করা হচ্ছে 
FinishedLabelNoIcons=আপনার কম্পিউটারে সেটআপ [name] ইন্সটল করা সম্পূর্ণ করেছে। 
FinishedLabel=আপনার কম্পিউটারে সেটআপ [name] ইন্সটল করা সম্পূর্ণ করেছে। ইন্সটল হওয়া শর্টকাটন নির্বাচনের মাধ্যমে অ্যাপলিকেশনটি শুরু করা যেতে পারে। 
ClickFinish=সেটআপ থেকে প্রস্থান করার জন্য ফিনিশ ক্লিক করুন। 
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
AbortRetryIgnoreCancel=ইন্সটল হওয়া বাতিল করুন 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=ফাইলগুলি নিষ্কাশিত হচ্ছে... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=ইন্সটল হওয়া সম্পূর্ণ করা হচ্ছে... 
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
ConfirmUninstall=আপনি কি নিশ্চিত যে আপনি %1 এবং এর সমস্ত উপকরণ সম্পূর্ণভাবে অপসারণ করতে চান? 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=অনুগ্রহ করে অপেক্ষা করুন যখন আপনার কম্পিউটার থেকে %1 কে অপসারিত করা হয়। 
UninstalledAll=আপনার কম্পিউটার থেকে সফলভাবে %1 কে অপসারিত করা হয়েছিল। 
UninstalledMost=%1 আনইন্সটল করা সম্পূর্ণ। %n%n কিছু উপাদান অপসারণ করা যায়নি। এগুলি ম্যানুয়ালি অপসারিত করা যায়। 
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
CreateDesktopIcon=একটা &ডেস্কটপ শর্টকাট তৈরি করুন 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=%1 ওয়েবসাইটে 
UninstallProgram=%1 আনইন্সটল করুন 
LaunchProgram=%1 শুরু করুন 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=এই ডিভাইসে বর্তমানে একটা কোলিব্রি ইন্সটল করা আছে। আপনি কি এটা আপডেট করতে চান? 
UpgradeDelMsg=যদি আপনি আপডেট না করে একটা নতুন ইন্সটল করা নির্বাচন করেন, আপনি আপনার উপস্থিত সমস্ত ডেটা হারিয়ে ফেলবেন। অনুগ্রহ করে নিশ্চিত করুন যে আপনি নতুন ইন্সটলেশন চালিয়ে যেতে চান। 
InstallPythonMsg=কোলিব্রি সচল করার জন্য আপনার Python 3.6+ ইন্সটল থাকা প্রয়োজন। আপনার সিস্টেমে সেটআপ উইজার্ড Python খুঁজে পায়নি এবং সেটা এখন ইন্সটল করতে চলেছে। অনুগ্রহ করে 'ইয়েস' ক্লিক করুন এবং ইন্সটলেশন চালিয়ে যান। 
InstallPythonErrMsg=Python ইন্সটল করা ব্যতীত কোলিব্রি সচল হতে পারেনা। ফিরে যাওয়ার জন্য ওকে ক্লিক করুন এবং Python ইন্সটল করুন, বা ক্যান্সেল ক্লিক করুন কোলিব্রি ইন্সটলার বাতিল করার জন্য 
SetupKolibriErrMsg=গুরুতর ত্রুটি। ডিপেন্ডেন্সিগুলি ইন্সটল করা ব্যর্থ হয়েছে। ত্রুটি নাম্বার: 
KolibriInstallFailed=কোলিব্রি সেটআপ চলাকালীন কিছু ত্রুটি ঘটেছিল। %n লগ ফাইলটিতে অতিরিক্ত তথ্য পাওয়া যাবে: 
SetupWizardMsg=সেটআপ উইজার্ড ফাইলগুলি নকল করছে। এর জন্য কিছু সময়ের লাগতে পারে, অনুগ্রহ করে অপেক্ষা করুন.. 
LaunchKolibri=কোলিব্রি শুরু করুন 
KolibriSupportLink=কমিউনিটি ফোরাম 
KolibriHomePage=হোমপেজ 
KolibriDocs=ডকুমেন্টেশন 
FileNotFound= খুঁজে পাওয়া যায়নি। 
Needhelp=অনলাইনে সাহায্য পাওয়ার জন্য, অনুগ্রহ করে আমাদের কমিউনিটি ফোরাম দেখুন: 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=এছাড়াও আপনি কি চান কোলিব্রির সাথে সম্পর্কিত সমস্ত ডেটা মুছে ফেলতে? 
UninstallKolibriDataLine2=এর ফলে সমস্ত ডাউনলোড করা বিষয়বস্তুর চ্যানেলগুলি এবং ব্যবহারকারীর পারস্পরিক যোগাযোগের ডেটাটি স্থায়ীভাবে অপসারিত হবে। 
UninstallKolibriDataLine3=এই ক্রিয়াটি থেকে ফেরত আসা যাবে না। 
UninstallKolibriPath=ডেটার অবস্থান: 
