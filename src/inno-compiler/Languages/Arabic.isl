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
LanguageName=Arabic 
LanguageID=$0401 
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
SetupAppTitle=إعداد 
SetupWindowTitle=الإعداد - %1 
UninstallAppTitle=إلغاء التثبيت 
UninstallAppFullTitle=%1 إلغاء التثبيت 

; *** Misc. common
InformationTitle=معلومات 
ConfirmTitle=تأكيد 
ErrorTitle=خطأ 

; *** SetupLdr messages
SetupLdrStartupMessage=سيؤدي ذلك إلى تثبيت %1. هل ترغب في المتابعة؟ 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=الإعداد قيد التشغيل حالياً. 
WindowsVersionNotSupported=هذا البرنامج لا يدعم إصدار ويندوز المثبت على الحاسب الخاص بك. 
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
ExitSetupMessage=الإعداد غير مكتمل. في حال قمت بالخروج الآن، لن يتم تثبيت البرنامج.%n%nقد تحتاج إلة تشغيل الإعداد مجدداً في وقت آخر لإكمال التثبيت.%n%nهل ترغب في الخروج من الإعداد؟ 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &رجوع 
ButtonNext=&التالي > 
ButtonInstall=&التثبيت 
ButtonOK=موافقة 
ButtonCancel=إلغاء 
ButtonYes=&نعم 
ButtonYesToAll=نعم للكل 
ButtonNo=&لا 
ButtonNoToAll=لا للكل 
ButtonFinish=&إنهاء 
ButtonBrowse=&استعراض... 
ButtonWizardBrowse=استعراض... 
ButtonNewFolder=&إنشاء مجلد جديد 

; *** "Select Language" dialog messages
SelectLanguageTitle=اختر لغة الإعداد 
SelectLanguageLabel=قم بتحديد اللغة المستخدمة أثناء التثبيت. 

; *** Common wizard text
ClickNext=انقر على التالي للمتابعة، أو على إلغاء للخروج من الإعداد. 
BeveledLabel=
BrowseDialogTitle=استعراض مجلد 
BrowseDialogLabel=حدد مجلداً في القائمة أدناه، ثم انقر موافق. 
NewFolderName=مجلد جديد 

; *** "Welcome" wizard page
WelcomeLabel1=مرحبا بكم في معالج إعداد [name] 
WelcomeLabel2=سيؤدي ذلك إلى تثبيت [name/ver] على حاسبك.%n%nينصح بإغلاق كافة التطبيقات الأخرى قبل المتابعة. 

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
WizardSelectDir=حدد الوجهة 
SelectDirDesc=أين يجب تثبيت[name] ؟ 
SelectDirLabel3=سيتم تثبيت إعداد [name] في المجلد التالي. 
SelectDirBrowseLabel=للمتابعة، انقر على التالي. إذا كنت ترغب في تحديد مجلد مختلف، انقر على استعراض. 
DiskSpaceMBLabel=يجب أن يتوفر [mb] ميغا بايت على الأقل من مساحة القرص الحرة. 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=لا يوجد مساحة كافية على القرص 
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
WizardSelectProgramGroup=حدد مجلد قائمة البدء 
SelectStartMenuFolderDesc=أين يجب على الإعداد وضع اختصارات البرنامج؟ 
SelectStartMenuFolderLabel3=سيقوم الإعداد بإنشاء اختصارات البرنامج في مجلد قائمة البدء التالي. 
SelectStartMenuFolderBrowseLabel=للمتابعة، انقر على التالي. إذا كنت ترغب في تحديد مجلد مختلف، انقر على استعراض. 
MustEnterGroupName=يجب إدخال اسم للمجلد. 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=لا يمكن أن يتضمن اسم المجلد أياً من المحارف التالية:%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=جاهز للتثبيت 
ReadyLabel1=الإعداد جاهز الآن لبدء تثبيت [name] على الحاسب الخاص بك. 
ReadyLabel2a=انقر على تثبيت لمواصلة التثبيت، أو انقر على رجوع في حال كنت ترغب في مراجعة أو تغيير أية إعدادات. 
ReadyLabel2b=انقر على تثبيت لاستكمال عملية التثبيت. 
ReadyMemoUserInfo=User information:
ReadyMemoDir=الوجهة: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=مجلد قائمة البدء: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=التحضير للتثبيت 
PreparingDesc=يقوم الإعداد الآن بالتحضير لتثبيت [name] على الحاسب الخاص بك. 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=لا يمكن متابعة الإعداد. الرجاء النقر فوق إلغاء للخروج. 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=جاري التثبيت 
InstallingLabel=الرجاء الانتظار بينما يقوم الإعداد بتثبيت [name] على الحاسب الخاص بك. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=إتمام معالج إعداد [name] 
FinishedLabelNoIcons=لقد تم الانتهاء من تثبيت [name] على الحاسب الخاص بك. 
FinishedLabel=انتهى الإعداد من تثبيت [name] على الحاسب الخاص بك. قد يتم تشغيل التطبيق عن طريق تحديد الاختصارات المثبتة. 
ClickFinish=انقر على إنهاء للخروج من الإعداد. 
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
AbortRetryIgnoreCancel=إلغاء التثبيت 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=استخراج الملفات... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=إنهاء التثبيت... 
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
ConfirmUninstall=هل أنت متأكد من أنك تريد إزالة %1 بالكامل وجميع مكوناته؟ 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=الرجاء الانتظار بينما تتم إزالة %1 من الحاسب الخاص بك. 
UninstalledAll=تمت إزالة %1 من الحاسب الخاص بك بنجاح. 
UninstalledMost=%1 اكتمال إلغاء التثبيت.%n%nتعذرت إزالة بعض العناصر. يمكنك إزالتها بشكل يدوي. 
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
CreateDesktopIcon=إنشاء اختصار على سطح المكتب 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=%1 على الشبكة 
UninstallProgram=إلغاء التثبيت %1 
LaunchProgram=تشغيل %1 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=هناك تثبيت موجود من كوليبري على هذا الجهاز. هل ترغب في تحديثه؟ 
UpgradeDelMsg=في حال اخترت القيام بتثبيت جديد وليس التحديث، سوف تفقد جميع بياناتك الموجودة. الرجاء تأكيد رغبتك في المتابعة مع التثبيت الجديد. 
InstallPythonMsg=تحتاج إلى تثبيت لغة برمجة Python 3.8+ من أجل تشغيل كوليبري. لم يتمكن معالج الإعداد من العثور على Python على النظام الخاص بك وسوف ييقوم الآن بتثبيته. الرجاء النقر فوق 'نعم' للتأكيد ومواصلة التثبيت. 
InstallPythonErrMsg=لا يمكن تشغيل كوليبري بدون تثبيت لغة برمجة Python. يرجى النقر على موافق للعودة لتثبيت Python، أو على إلغاء للخروج من مثبت كوليبري 
SetupKolibriErrMsg=خطأ فادح. لقد فشل تثبيت التوابع. رقم الخطأ: 
KolibriInstallFailed=لقد حصل خطأ ما أثناء عملية تثبيت كوليبري.%nيمكنك الحصول على معلومات إضافية من ملف السجل: 
SetupWizardMsg=يقوم معالج الإعداد بنسخ الملفات. قد يستغرق ذلك بعض الوقت، الرجاء الانتظار.. 
LaunchKolibri=تشغيل كوليبري 
KolibriSupportLink=منتدى المجتمع 
KolibriHomePage=الصفحة الرئيسية 
KolibriDocs=توثيق 
FileNotFound= لم يتم العثور عليه. 
Needhelp=للحصول على المساعدة عبر الإنترنت، يرجى زيارة منتدى المجتمع الخاص بنا: 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=هل ترغب أيضاً في حذف جميع البيانات المرتبطة بكوليبري؟ 
UninstallKolibriDataLine2=سيؤدي ذلك إلى إزالة جميع قنوات المحتوى المحملة وبيانات تفاعل المستخدم بشكل دائم. 
UninstallKolibriDataLine3=لا يمكن التراجع عن هذا الإجراء. 
UninstallKolibriPath=موقع البيانات: 
