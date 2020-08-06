﻿; ** Inno Setup version 6.0.0+ English messages ***
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
LanguageName=Urdu (Pakistan) 
LanguageID=$0420 
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
SetupAppTitle=سیٹ اپ 
SetupWindowTitle=سیٹ اپ- %1 
UninstallAppTitle=ان انسٹال 
UninstallAppFullTitle=ان انسٹال %1 

; *** Misc. common
InformationTitle=معلومات 
ConfirmTitle=تصديق کریں 
ErrorTitle=خرابی 

; *** SetupLdr messages
SetupLdrStartupMessage=یہ %1 ان انسٹال کرے گا۔ کیا آپ جاری رکھنا چاہتے ہیں؟ 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=سیٹ اپ پہلے سے ہی چل رہا ہے۔ 
WindowsVersionNotSupported=یہ پروگرام اس ونڈوز پر نہیں چل سکتا جس میں آپ کا کمپیوٹر چل رہا ہے ۔ 
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
ExitSetupMessage=سیٹ اپ مکمل نہیں ہے۔ اگر آپ ابھی باہر نکل جاتے ہیں تو ، پروگرام انسٹال نہیں ہوگا%n%n آپ انسٹالیشن مکمل کرنے کے لئے کسی اور وقت دوبارہ سیٹ اپ چلا سکتے ہیں۔%n%n سیٹ اپ سے باہر جانا چاہتے ہیں؟ 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &پیچھے 
ButtonNext=&اگلا > 
ButtonInstall=&نصب 
ButtonOK=ٹھیک ہے 
ButtonCancel=منسوخ کریں 
ButtonYes=&ہاں جی 
ButtonYesToAll=سب& کے لیئے ہاں 
ButtonNo=&نہیں 
ButtonNoToAll=سب کے لیئے نا& 
ButtonFinish=&مکمل کریں 
ButtonBrowse=&براؤز... 
ButtonWizardBrowse=B&rowse... 
ButtonNewFolder=نیا فولڈر بنائیں& 

; *** "Select Language" dialog messages
SelectLanguageTitle=سیٹ اپ کی زبان منتخب کریں 
SelectLanguageLabel=تنصیب کے دوران استعمال ہونے والی زبان کا انتخاب کریں۔ 

; *** Common wizard text
ClickNext=جاری رکھنے کے لئے اگلے پر کلک کریں ، یا سیٹ اپ سے باہر نکلنے کے لئے منسوخ کریں۔ 
BeveledLabel=
BrowseDialogTitle=فولڈر کے لئے براؤز کریں 
BrowseDialogLabel=نیچے دی گئی فہرست میں فولڈر منتخب کریں ، پھر اوکے پر کلک کریں۔ 
NewFolderName=نیا فولڈر 

; *** "Welcome" wizard page
WelcomeLabel1=[name] سیٹ اپ وزرڈ میں خوش آمدید 
WelcomeLabel2=یہ آپ کے کمپیوٹر پر [name / ver] انسٹال کرے گا۔%n%n تجویز یہ کی جاتی ہے کہ آپ آگے جانے سے پہلے دیگر تمام ایپلیکیشنز کو بند کردیں۔ 

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
WizardInfoBefore=معلومات 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=معلومات 
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
WizardSelectDir=منزل مقصود کا انتخاب کریں 
SelectDirDesc=[name] کہاں نصب کیا جانا چاہئے؟ 
SelectDirLabel3=سیٹ اپ[name] درج ذیل فولڈر میں انسٹال کرے گا۔ 
SelectDirBrowseLabel=جاری رکھنے کے لئے ، اگلے پر کلک کریں۔ اگر آپ کوئی مختلف فولڈر منتخب کرنا چاہتے ہیں تو ، براؤز پر کلک کریں۔ 
DiskSpaceMBLabel=کم از کم [mb] کی MB کی جگہ ڈسک پرضرورت ہے۔ 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=ڈسک میں اتنی جگہ نہیں ہے 
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
WizardSelectProgramGroup=اسٹارٹ مینو فولڈر کو منتخب کریں 
SelectStartMenuFolderDesc=پروگرام کے شارٹ کٹ سیٹ اپ کو کہاں رکھنا چاہئے؟ 
SelectStartMenuFolderLabel3=سیٹ اپ مندرجہ ذیل اسٹارٹ مینو فولڈر میں پروگرام کے شارٹ کٹس بنائے گا۔ 
SelectStartMenuFolderBrowseLabel=جاری رکھنے کے لئے ، اگلے پر کلک کریں۔ اگر آپ کوئی مختلف فولڈر منتخب کرنا چاہتے ہیں تو ، براؤز پر کلک کریں۔ 
MustEnterGroupName=آپ کو فولڈر کا نام درج کرنا ہوگا۔ 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=فولڈر کے نام میں درج ذیل میں سے کوئی حرف شامل نہیں ہوسکتا ہے %n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=انسٹال کرنے کے لئے تیار ہے 
ReadyLabel1=سیٹ اپ اب آپ کے کمپیوٹر پر [name] نصب کرنے کے لیئے تیار ہے۔ 
ReadyLabel2a=تنصیب کو جاری رکھنے کے لئے انسٹال پر کلک کریں ، یا اگر آپ کسی بھی ترتیبات کا جائزہ لینے یا تبدیل کرنا چاہتے ہیں تو بیک پر کلک کریں۔ 
ReadyLabel2b=تنصیب کو جاری رکھنے کے لئے انسٹال پر کلک کریں۔ 
ReadyMemoUserInfo=User information:
ReadyMemoDir=منزل مقصود: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=مینو فولڈر شروع کریں: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=انسٹال کرنے کے لیئے تیاری کر رہا ہے 
PreparingDesc=سیٹ اپ آپ کے کمپیوٹر پر[name] نصب کرنے کی تیاری کر رہا ہے۔ 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=سیٹ اپ جاری نہیں رہ سکتا۔ براہ کرم باہر نکلنے کے لئے منسوخ پر کلک کریں۔ 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=انسٹال ہو رہا ہے 
InstallingLabel=براہ کرم انتظار کریں جب تک کہ آپ کے کمپیوٹر پر سیٹ اپ [name] نصب نا ہوجائے۔ 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] سیٹ اپ وزرڈ مکمل ہو رہا ہے 
FinishedLabelNoIcons=سیٹ اپ نے آپ کے کمپیوٹر پر [name] نصب کرنا مکمل کر لیا ہے۔ 
FinishedLabel=سیٹ اپ نے آپ کے کمپیوٹر پر [name] نصب کرنا مکمل کر لیا ہے۔ ایپلیکیشن انسٹال شارٹ کٹ کو منتخب کرکے شروع کی جاسکتی ہے۔ 
ClickFinish=سیٹ اپ سے باہر نکلنے کیلئے خروج پر کلک کریں۔ 
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
AbortRetryIgnoreCancel=تنصیب منسوخ کریں 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=فائلیں نکال رہا ہے... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=تنصیب مکمل ہو رہا ہے... 
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
ConfirmUninstall=کیا آپ واقعی %1 اور اس کے تمام اجزاء کو مکمل طور پر ہٹانا چاہتے ہیں؟ 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=براہ کرم انتظار کریں جب تک کہ آپ کے کمپیوٹر سے%1 کو ہٹایا جا رہا ہے۔ 
UninstalledAll=%1 کو کامیابی کے ساتھ آپ کے کمپیوٹر سے ہٹا دیا گیا ہے۔ 
UninstalledMost=%1 ان انسٹال مکمل ہے۔%n%n کچھ عناصر کو نہیں ہٹایا جاسکا۔ ان کو دستی طور پر ختم کیا جاسکتا ہے۔ 
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
CreateDesktopIcon=ایک &ڈیسک ٹاپ شارٹ کٹ بنائیں 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=%1 ویب پر 
UninstallProgram=ان انسٹال%1 
LaunchProgram=لانچ کریں %1 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=اس آلہ پر کولیبری کی موجودہ تنصیب ہے۔ کیا آپ اسے اپ ڈیٹ کرنا چاہیں گے؟ 
UpgradeDelMsg=اگر آپ نئی تنصیب کرنے کا انتخاب کرتے ہیں اور اپ ڈیٹ نہیں کرنا چاہتے ہیں تو ، آپ اپنے تمام موجود ڈیٹا کو کھو دیں گے۔ براہ کرم تصدیق کریں کہ آپ نئی تنصیب کے ساتھ جاری رکھنا چاہتے ہیں۔ 
InstallPythonMsg=کولیبری کو چلانے کے لئے آپ کو پائتھن 3.6+ انسٹال کرنے کی ضرورت ہے۔ سیٹ اپ وزرڈ آپ کے سسٹم میں پائتھن تلاش کرنے کے قابل نہیں تھا اور اب اسے انسٹال کرنے کے لئے آگے بڑھے گا۔ براہ کرم تصدیق کرنے کے لئے 'ہاں' پر کلک کریں اور تنصیب کے ساتھ جاری رکھیں۔ 
InstallPythonErrMsg=کولیبیری پائیتھن انسٹال کیے بغیر نہیں چل سکتا۔ واپس جانے کے لیئے اور پائیتھن کو انسٹال کرنے کے لئے اوکے پر کلک کریں ، یا کولیبیری انسٹالر کو چھوڑنے کے لئے منسوخ کریں 
SetupKolibriErrMsg=تنقیدی خامی۔ انحصارات انسٹال کرنے میں ناکام ہوگئے ہیں۔ نقص نمبر: 
KolibriInstallFailed=کولیبری سیٹ اپ کے دوران کچھ غلط ہو گیا۔%n لاگ فائل میں مزید معلومات مل سکتی ہیں۔ 
SetupWizardMsg=سیٹ اپ وزرڈ فائلوں کو کاپی کر رہا ہے۔ اس میں کچھ وقت لگ سکتا ہے ، براہ کرم انتظار کریں.. 
LaunchKolibri=کولیبری لانچ کریں 
KolibriSupportLink=کمیونٹی فورم 
KolibriHomePage=ہوم پیج 
KolibriDocs=دستاویزات 
FileNotFound= نہیں ملا۔ 
Needhelp=آن لائن مدد حاصل کرنے کے لئے ، براہ کرم ہمارا کمیونٹی فورم دیکھیں: 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=کیا آپ کولیبری سے وابستہ تمام ڈیٹا کو بھی مٹانا چاہیں گے؟ 
UninstallKolibriDataLine2=یہ مستقل طور پر ڈاؤن لوڈ کردہ تمام مواد چینلز اور صارف کے باہمی تعامل کے کوائف کو ختم کردے گا۔ 
UninstallKolibriDataLine3=اس کارروائی کو ختم نہیں کیا جاسکتا۔ 
UninstallKolibriPath=ڈیٹا کا مقام: 
