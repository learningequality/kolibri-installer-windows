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
LanguageName=Khmer 
LanguageID=$0053 
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
SetupAppTitle=រៀបចំ 
SetupWindowTitle=រៀបចំ- %1 
UninstallAppTitle=លុបការដំឡើង 
UninstallAppFullTitle=%1 លុបការដំឡើង 

; *** Misc. common
InformationTitle=ពត៍មាន 
ConfirmTitle=បញ្ជាក់ 
ErrorTitle=កំហុស 

; *** SetupLdr messages
SetupLdrStartupMessage=នេះនឹងតំឡើង %1។ តើអ្នកចង់បន្តដែរទេ? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=ការរៀបចំកំពុងដំណើរការ។ 
WindowsVersionNotSupported=កម្មវិធីនេះមិនគាំទ្រជំនាន់ Windows ដែលកុំព្យូទ័ររបស់អ្នកកំពុងដំណើរការទេ។ 
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
ExitSetupMessage=ការរៀបចំមិនបានបញ្ចប់។ ប្រសិនបើអ្នកចាកចេញឥឡូវនេះ កម្មវិធីនឹងមិនត្រូវបានដំឡើងទេ។ %n%nអ្នកអាចដំណើរការការរៀបចំម្ដងទៀតនៅពេលវេលាមួយផ្សេងទៀតដើម្បីបញ្ចប់ការដំឡើងនោះ។ %n%nចាកចេញពីការរៀបចំ? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &បកក្រោយ 
ButtonNext=&បន្ទាប់ > 
ButtonInstall=&ដំឡើង 
ButtonOK=យល់ព្រម 
ButtonCancel=បោះ​បង់ 
ButtonYes=&បាទ 
ButtonYesToAll=បាទ &ទាំងអស់ 
ButtonNo=&ទេ 
ButtonNoToAll=&ទេ ទៅទាំងអស់ 
ButtonFinish=&បញ្ចប់ 
ButtonBrowse=&រុករក... 
ButtonWizardBrowse=រុ&ករក... 
ButtonNewFolder=&បង្កើតសឺមីថ្មី 

; *** "Select Language" dialog messages
SelectLanguageTitle=ជ្រើសរើសរៀបចំភាសា 
SelectLanguageLabel=ជ្រើសរើសភាសាដែលត្រូវប្រើកំឡុងពេលតំឡើង។ 

; *** Common wizard text
ClickNext=ចុចបន្ទាប់ដើម្បីបន្ត ឬ បោះបង់ដើម្បីចាកចេញពីការរៀបចំ​។ 
BeveledLabel=
BrowseDialogTitle=រុករកសឺមី 
BrowseDialogLabel=ជ្រើសរើសសឺមីមួយនៅក្នុងបញ្ជីខាងក្រោម បន្ទាប់មកចុច យល់ព្រម។ 
NewFolderName=សឺមីថ្មី 

; *** "Welcome" wizard page
WelcomeLabel1=សូមស្វាគមន៍មកកាន់ [name] Setup Wizard 
WelcomeLabel2=នេះនឹងដំឡើង [name/ver] នៅក្នុងកុំព្យូទ័ររបស់អ្នក។ %n%nវាត្រូវបានណែនាំឱ្យអ្នកបិទកម្មវិធីផ្សេងទៀតទាំងអស់មុននឹងបន្ត។ 

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
WizardInfoBefore=ពត៍មាន 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=ពត៍មាន 
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
WizardSelectDir=ជ្រើសរើសអាសយដ្ឋានគោលដៅ 
SelectDirDesc=តើអ្នកគួរតែដំឡើង [name] នៅកន្លែងណា? 
SelectDirLabel3=ការរៀបចំនឹងដំឡើង [name] ចូលទៅក្នុងសឺមីខាងក្រោម។ 
SelectDirBrowseLabel=ដើម្បីបន្ត សូមចុចពាក្យ "បន្ទាប់"។ ប្រសិនបើអ្នកចង់ជ្រើសរើសសឺមីដែលខុសប្លែកនោះ ចុច រុករក​។ 
DiskSpaceMBLabel=យ៉ាងហោចណាស់ក៏អ្នកត្រូវការមានទំហំ [mb] MB នៅលើទំហំថាសដែរ។ 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=មិនមានទំហំគ្រប់គ្រាន់ 
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
WizardSelectProgramGroup=ជ្រើសរើសការចាប់ផ្ដើមសឺមីមីនុយ 
SelectStartMenuFolderDesc=តើគួររៀបចំកន្លែងផ្លូវកាត់របស់កម្មវិធីនៅកន្លែងណា? 
SelectStartMenuFolderLabel3=ការរៀបចំនឹងបង្កើតផ្លូវកាត់របស់កម្មវិធីនៅក្នុងការចាប់ផ្ដើមសឺមីមីនុយខាងក្រោម។ 
SelectStartMenuFolderBrowseLabel=ដើម្បីបន្ត សូមចុចពាក្យ "បន្ទាប់"។ ប្រសិនបើអ្នកចង់ជ្រើសរើសសឺមីដែលខុសប្លែកនោះ ចុច រុករក​។ 
MustEnterGroupName=អ្នកត្រូវតែវាយបញ្ចូលឈ្មោះសឺមីមួយ។ 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=ឈ្មោះសឺមីមិនអាចបូកបញ្ចូលតួអក្សរខាងក្រោមនេះបានទេ៖%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=រួចរាល់​ដើម្បី​ដំឡើង 
ReadyLabel1=ការរៀបចំបានរួចរាល់ដើម្បីដំឡើង [name] ក្នុងកុំព្យូទ័ររបស់អ្នក។ 
ReadyLabel2a=ចុចដំឡើងដើម្បីបន្តការដំឡើង ឬចុចថយក្រោយប្រសិនបើអ្នកចង់ពិនិត្យឡើងវិញ ឬផ្លាស់ប្តូរការកំណត់ណាមួយ។ 
ReadyLabel2b=ចុច​ដំឡើង ដើម្បី​បន្ត​ការ​ដំឡើង។ 
ReadyMemoUserInfo=User information:
ReadyMemoDir=ទីតាំងគោលដៅ៖ 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=ចាប់ផ្ដើមសឺមីមីនុយ៖ 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=កំពុងរៀបចំដើម្បីតំឡើង 
PreparingDesc=ការរៀបចំកំពុងត្រៀមដើម្បីតំឡើង [name]ក្នុងកុំព្យូទ័ររបស់អ្នក 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=ការរៀបចំមិនអាចបន្តបានទេ។ សូមចុចបោះបង់ដើម្បីចាកចេញ 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=កំពុងដំឡើង 
InstallingLabel=សូមរងចាំខណៈពេលដែលការរៀបកំពុងដំឡើង [name] ក្នុងកុំព្យូទ័ររបស់អ្នក 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=កំពុងបញ្ចប់ [name] ជំនួយការរៀបចំ 
FinishedLabelNoIcons=ការរៀបចំត្រូវបានបញ្ចប់ដើម្បីតំឡើង [name] ក្នុងកុំព្យូទ័ររបស់អ្នក 
FinishedLabel=ការរៀបចំបានបញ្ចប់ការដំឡើង [name] នៅលើកុំព្យូទ័ររបស់អ្នក។ កម្មវិធីអាចត្រូវបានដាក់ឱ្យដំណើរការដោយជ្រើសរើសផ្លូវកាត់ដែលបានតំឡើងរួច។ 
ClickFinish=ចុច បញ្ចប់ ដើម្បី​​​ចាកចេញ​ពី​ការរៀបចំ។ 
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
AbortRetryIgnoreCancel=បោះបង់ការដំឡើង 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=កំពុងស្រង់ចេញជាហ្វាល... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=កំពុងបញ្ចប់ការដំឡើង... 
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
ConfirmUninstall=តើអ្នកពិតជាចង់ដកចេញ %1 និងសមាសធាតុទាំងអស់របស់វាចេញដែរឬទេ? 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=សូមរង់ចាំខណៈពេលដែល %1 ត្រូវបានដកចេញពីកុំព្យូទ័ររបស់អ្នក។ 
UninstalledAll=1% បានយកចេញពីកុំព្យូទ័ររបស់អ្នកដោយជោគជ័យ។ 
UninstalledMost=%1 ការលុបការដំឡើងបានបញ្ចប់។%n%nវត្ថុធាតុមួយចំនួនមិនអាចត្រូវបានដកចេញទេ។ វត្ថុធាតុទាំងនេះអាចត្រូវបានដកចេញដោយខ្លួនរបស់អ្នកផ្ទាល់។ 
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
CreateDesktopIcon=បង្កើត&ផ្លូវកាត់នៅលើដែសថប 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=1% នៅលើវេបសាយន៍ 
UninstallProgram=លុបការដំឡើង %1 
LaunchProgram=បើកដំណើរការ %1 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=មានការតំឡើង Kolibri ដែលមានស្រាប់ក្នុងឧបករណ៍នេះ។ តើអ្នកចង់ធ្វើបច្ចុប្បន្នភាពវាដែរឬទេ? 
UpgradeDelMsg=ប្រសិនបើអ្នកជ្រើសរើសធ្វើការដំឡើងថ្មីនេះ និងមិនបានធ្វើបច្ចុប្បន្នភាព អ្នកនឹងបាត់បង់រាល់ទិន្នន័យដែលមានស្រាប់របស់អ្នក។ សូមបញ្ជាក់ថាអ្នកចង់បន្តការដំឡើងថ្មីនេះ។ 
InstallPythonMsg=អ្នកត្រូវការកម្មវិធី Python 3.8+ ដែលបានដំឡើងតាមលំដាប់លំដោយដើម្បីដំណើរការ Kolibri។ Setup Wizard មិនត្រូវបានរកឃើញ Python ទេនៅក្នុងប្រព័ន្ធ និងបន្តដំឡើងវាឥឡូវនេះ។ សូមចុចពាក្យ "បាទ/ចាស" ដើម្បីទទួលយក និងបន្តការដំឡើងនេះ។ 
InstallPythonErrMsg=Kolibri មិនអាចដំណើរការដោយគ្មានកម្មវិធី Python បានទេ។ ចុច "យល់ព្រម" ដើម្បីត្រឡប់ និងដំឡើង Python ឬ "បោះបង់" ដើម្បីបញ្ឈប់កម្មវិធីដំឡើង Kolibri 
SetupKolibriErrMsg=កំហុសសំខាន់់៖ កម្មវិធីមួយចំនួនបានបរាជ័យក្នុងការដំឡើង។ កំហុសលេខ៖ 
KolibriInstallFailed=មានកំហុសក្នុងអំឡុងពេលដែលកំពុងរៀបចំ Kolibri។ %nព័ត៌មានបន្ថែមអាចរកបាននៅក្នុងហ្វាលកំណត់ហេតុ៖ 
SetupWizardMsg=Setup Wizard គឺកំពុងចម្លងហ្វាល។ វាអាចចំណាយពេលមួយរយៈ សូមរង់ចាំ.. 
LaunchKolibri=បើកដំណើរការ Kolibri 
KolibriSupportLink=វេទិកាសហគមន៍ 
KolibriHomePage=ទំព័រដើម 
KolibriDocs=ឯកសារ 
FileNotFound= មិនត្រូវបានរកឃើញ។ 
Needhelp=ដើម្បីទទួលបានជំនួយតាមអ៊ីនធឺណិត សូមទស្សនាវេទិកាសហគមន៍របស់យើង៖ 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=តើអ្នកចង់លុបទិន្នន័យទាំងអស់ដែលទាក់ទងនឹង Kolibri ដែរឬទេ? 
UninstallKolibriDataLine2=វានឹងដកចេញមាតិកាឆានែលដែលបានដោនឡុតទាំងអស់ និងទិន្នន័យអន្តរកម្មទាំងអស់របស់អ្នកប្រើប្រាស់។ 
UninstallKolibriDataLine3=សកម្មភាពនេះមិនអាចត្រូវបានមិនធ្វើវិញ។ 
UninstallKolibriPath=ទីតាំងទិន្នន័យ៖ 
