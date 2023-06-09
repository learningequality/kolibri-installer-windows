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
LanguageName=Burmese 
LanguageID=$0055 
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
SetupAppTitle=သတ်မှတ် 
SetupWindowTitle=သတ်မှတ်-%1 
UninstallAppTitle=ဖြုတ်ချမှု 
UninstallAppFullTitle=%1 ဖြုတ်ချမှု 

; *** Misc. common
InformationTitle=အချက်အလက် 
ConfirmTitle=အတည်ပြုမည် 
ErrorTitle=ချို့ယွင်းချက် 

; *** SetupLdr messages
SetupLdrStartupMessage=%1 ကိုထည့်သွင်းမည်။ ဆက်လုပ်လိုပါသလား။ 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=သတ်မှတ်မှုက အလုပ်လုပ်နှင့်ပြီးဖြစ်သည်။ 
WindowsVersionNotSupported=ယခုပရိုဂရမ်က သင့်ကွန်ပျူတာရှိဝင်းဒိုးပုံစံကို မထောက်ပံ့ပါ။ 
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
ExitSetupMessage=သတ်မှတ်မှုက မပြီးသေးပါ။ ယခုထွက်သွားလျှင် ပရိုဂရမ်ကိုသွင်းမည်မဟုတ်ပါ။ %n%n ပရိုဂရမ်သွင်းမှုပြီးစီးစေရန် နောက်တစ်ကြိမ်တွင် သတ်မှတ်မှုကိုပြန်လုပ်ရမည်ဖြစ်သည်။ %n%n သတ်မှတ်မှုကို ထွက်မည်လား။ 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< နောက်သို့ 
ButtonNext=ရှေ့သို့> 
ButtonInstall=သွင်းပါ 
ButtonOK=အိုကေ 
ButtonCancel=ပယ်ဖျက်မည် 
ButtonYes=လက်ခံသည် 
ButtonYesToAll=အားလုံးလက်ခံသည် 
ButtonNo=လက်မခံပါ 
ButtonNoToAll=အားလုံးလက်မခံပါ 
ButtonFinish=ပြီးဆုံးသည် 
ButtonBrowse=ဖွင့်ပါ 
ButtonWizardBrowse=ဖွင့်ပါ 
ButtonNewFolder=ဖိုဒါအသစ်ဆောက်ပါ 

; *** "Select Language" dialog messages
SelectLanguageTitle=သတ်မှတ်ဘာသာစကားရွေးပါ 
SelectLanguageLabel=ဆော့ဝဲသွင်းမှုအတွင်းအသုံးပြုမည့် ဘာသာစကားကိုရွေးပါ 

; *** Common wizard text
ClickNext=ဆက်သွားရန် ရှေ့သို့ ကိုနှိပ်ပါ သို့မဟုတ် သတ်မှတ်မှုမှထွက်ရန် ပယ်ဖျက်မည်ကိုနှိပ်ပါ 
BeveledLabel=
BrowseDialogTitle=ဖိုဒါအတွက်ဖွင့်ပါ 
BrowseDialogLabel=အောက်တွင်ဖော်ပြထားသောစာရင်းရှိ ဖိုဒါတစ်ခုကိုရွေးပြီး အိုကေကိုနှိပ်ပါ 
NewFolderName=ဖိုဒါအသစ် 

; *** "Welcome" wizard page
WelcomeLabel1=[name] သတ်မှတ်မှုမှ ကြိုဆိုပါတယ် 
WelcomeLabel2=ဒါက [name/ver] ကို သင့်ကွန်ပျူတာအတွင်းထည့်သွင်းသွားပါမယ်။ %n%n ဆက်လက်မလုပ်ဆောင်ခင် အခြားအပလီကေးရှင်းများအားလုံးကို ပိတ်ပေးပါ။ 

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
WizardInfoBefore=အချက်အလက် 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=အချက်အလက် 
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
WizardSelectDir=သတ်မှတ်တည်နေရာကိုရွေးပါ 
SelectDirDesc=[name] ကို ဘယ်နေရာတွင် ထည့်သွင်းရမလဲ 
SelectDirLabel3=သတ်မှတ်မှုက [name] ကို အောက်ပါဖိုဒါထဲသို့ ထည့်သွင်းသွားပါမယ် 
SelectDirBrowseLabel=ဆက်လက်လုပ်ဆောင်ရန် ရှေ့သို့ ကိုနှိပ်ပါ။ အခြားဖိုဒါတစ်ခုကိုရွေးလိုပါက ဖွင့်ပါကို နှိပ်ပါ 
DiskSpaceMBLabel=အနည်းဆုံး [mb] မဂ္ဂါဘိုက်လိုအပ်ပါတယ် 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=စက်အတွင်းသိုလှောင်ရန်နေရာမလုံလောက်ပါ 
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
WizardSelectProgramGroup=စတင်မှုလုပ်ငန်းများပါဖိုဒါကို ရွေးပါ 
SelectStartMenuFolderDesc=သတ်မှတ်မှုက ပရိုဂရမ်၏ ဖြတ်လမ်းများကို ဘယ်နေရာတွင်ထားရမလဲ 
SelectStartMenuFolderLabel3=သတ်မှတ်မှုက ပရိုဂရမ်၏ဖြတ်လမ်းများကို အောက်ပါစတင်မှုလုပ်ငန်းများပါဖိုဒါထဲသို့ ထည့်သွင်းသွားပါမယ် 
SelectStartMenuFolderBrowseLabel=ဆက်လက်လုပ်ဆောင်ရန် ရှေ့သို့ ကိုနှိပ်ပါ။ အခြားဖိုဒါတစ်ခုကိုရွေးလိုပါက ဖွင့်ပါကို နှိပ်ပါ 
MustEnterGroupName=ဖိုဒါကိုနာမည်ပေးရပါမယ် 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=ဖိုဒါနာမည်က အောက်ပါအက္ခရာများ မပါဝင်ရပါ။ %n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=ထည့်သွင်းရန်အသင့် 
ReadyLabel1=သတ်မှတ်မှုက [name] ကို သင့်ကွန်ပျူတာတွင်စတင်ထည့်သွင်းရန် အသင့်ဖြစ်နေပါပြီ 
ReadyLabel2a=ထည့်သွင်းမှုကိုဆက်လက်လုပ်ဆောင်ရန် သွင်းပါကိုနှိပ်ပါ။ သို့မဟုတ် မည်သည့်ချိန်ညှိမှုကိုမဆိုပြန်သုံးသပ်လိုပါက သို့မဟုတ် ပြောင်းလဲလိုပါက နောက်သို့ကိုနှိပ်ပါ။ 
ReadyLabel2b=ထည့်သွင်းမှုကိုဆက်လုပ်ရန် သွင်းပါကိုနှိပ်ပါ 
ReadyMemoUserInfo=User information:
ReadyMemoDir=သတ်မှတ်တည်နေရာ - 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=စတင်မှုလုပ်ငန်းများပါဖိုဒါ 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=ထည့်သွင်းရန်ပြင်ဆင်နေသည် 
PreparingDesc=သတ်မှတ်မှုက [name] ကို သင့်ကွန်ပျူတာတွင်စတင်ထည့်သွင်းရန် ပြင်ဆင်နေပါတယ် 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=သတ်မှတ်မှုက ဆက်လုပ်လို့မရပါ။ ထွက်ရန် ပယ်ဖျက်မည်ကိုနှိပ်ပါ 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=ထည့်သွင်းနေသည် 
InstallingLabel=သတ်မှတ်မှုက [name] ကို သင့်ကွန်ပျူတာထဲထည့်သွင်းနေစဉ် ခဏစောင့်ပါ 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] သတ်မှတ်မှုပြီးဆုံးပါပြီ 
FinishedLabelNoIcons=သတ်မှတ်မှုက [name] ကို သင့်ကွန်ပျူတာထဲထည့်သွင်းမှု ပြီးဆုံးပါပြီ 
FinishedLabel=သတ်မှတ်မှုက [name] ကို သင့်ကွန်ပျူတာအတွင်းထည့်သွင်းမှု ပြီးဆုံးပါပြီ။ ထည့်သွင်းထားသောဖြတ်လမ်းများကိုနှိပ်ခြင်းဖြင့် အပလီကေးရှင်းကိုစတင်နိုင်ပါမယ်။ 
ClickFinish=သတ်မှတ်မှုမှထွက်ရန် ပြီးဆုံးသည်ကိုနှိပ်ပါ 
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
AbortRetryIgnoreCancel=ထည့်သွင်းမှုကို ပယ်ဖျက်မယ် 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=ဖိုင်များကို အကျယ်ချဲ့နေသည် 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=ထည့်သွင်းမှုကို လက်စသတ်နေသည် 
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
ConfirmUninstall=%1 နှင့်ဆက်စပ်အရာများအားလုံးကို အပြီးတိုင်ဖယ်ရှားလိုတာ သေချာပါသလား 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=%1 ကို သင့်ကွန်ပျူတာမှဖယ်ရှားစဉ် ခဏစောင့်ပါ 
UninstalledAll=%1 ကိုသင့်ကွန်ပျူတာမှ အောင်မြင်စွာဖယ်ရှားပြီးပါပြီ 
UninstalledMost=%1 ကိုဖြုတ်ချမှုပြီးဆုံးပါပြီ။ %n%n အချို့အရာများကို ဖယ်ရှားလို့မရပါ။ ကိုယ်တိုင်ဖယ်ရှားမှသာရပါမယ်။ 
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
CreateDesktopIcon=မျက်နှာပြင်တွင် ဖြတ်လမ်းတစ်ခုကိုဖန်တီးပါ 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=ဝက်ဆိုက်ရှိ %1 
UninstallProgram=%1 ကိုဖြုတ်ချပါ 
LaunchProgram=%1 ကိုဖွင့်ပါ 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=ဒီပစ္စည်းတွင် Kolibri ကို ထည့်သွင်းထားပြီးဖြစ်ပါတယ်။ အဲဒါကိုအဆင့်မြှင့်လိုပါသလား။ 
UpgradeDelMsg=အဆင့်မမြှင့်ဘဲ အသစ်ထည့်သွင်းလိုပါက ရှိပြီးသားအချက်အလက်များအားလုံးဆုံးရှုံးသွားပါမယ်။ အသစ်ထည့်သွင်းမှုကိုဆက်လုပ်လိုပါက အတည်ပြုပေးပါ။ 
InstallPythonMsg=Kolibri ကိုဖွင့်ဖို့ သင့်မှာ Python 3.8+ ရှိရပါမယ်။ သတ်မှတ်မှုက သင်၏ကွန်ပျူတာစနစ်တွင် Python ကိုမတွေ့သည့်အတွက် အဲဒါကိုထည့်သွင်းသွားပါမယ်။ အတည်ပြုရန်နှင့်ထည့်သွင်းမှုကိုဆက်လုပ်ရန် လက်ခံသည်ကိုနှိပ်ပါ။ 
InstallPythonErrMsg=Python ကိုမထည့်သွင်းဘဲ Kolibri ကိုမဖွင့်နိုင်ပါ။ နောက်သို့ပြန်သွားပြီး Python ကိုထည့်သွင်းရန် အိုကေကိုနှိပ်ပါ သို့မဟုတ် Kolibri ထည့်သွင်းမှုမှထွက်ရန် ပယ်ဖျက်မည်ကိုနှိပ်ပါ။ 
SetupKolibriErrMsg=အရေးကြီးမှားယွင်းမှု။ ထောက်ပံ့မှုများကို မထည့်သွင်းနိုင်ပါ။ မှားယွင်းမှုအမှတ်စဉ် - 
KolibriInstallFailed=Kolibri သတ်မှတ်မှုအတွင်း တစ်ခုခုမှားယွင်းသွားပါတယ်။ %n နောက်ထပ်အချက်အလက်တွေကို မှတ်တမ်းဖိုင်ထဲမှာတွေ့နိုင်ပါတယ်။ 
SetupWizardMsg=သတ်မှတ်မှုက ဖိုင်များကိုကူးယူနေပါတယ်။ အချိန်အနည်းငယ်ကြာပါမယ်။ ခဏစောင့်ပါ 
LaunchKolibri=Kolibri ကိုဖွင့်ပါ 
KolibriSupportLink=အစုအဖွဲ့ဖိုရမ် 
KolibriHomePage=ပင်မစာမျက်နှာ 
KolibriDocs=မှတ်တမ်းတင်ခြင်း 
FileNotFound= ကိုမတွေ့ပါ။ 
Needhelp=အွန်လိုင်းတွင်အကူအညီရယူရန် မိမိတို့၏အစုအဖွဲ့ဖိုရမ်သို့သွားပါ။ 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=Kolibri နှင့်ပတ်သက်သောအချက်အလက်များအားလုံးကိုဖျက်ချင်ပါသလား 
UninstallKolibriDataLine2=ဒါက ဒေါင်းလုပ်ဆွဲထားသောအကြောင်းအရာလမ်းကြောင်းများနှင့် အသုံးပြုသူအကျိုးပြုမှုအချက်အလက်များကို အမြဲတမ်းဖျက်သွားပါမယ် 
UninstallKolibriDataLine3=ဒီလုပ်ဆောင်မှုကို မရပ်တန့်နိုင်ပါ 
UninstallKolibriPath=အချက်အလက်တည်နေရာ 
