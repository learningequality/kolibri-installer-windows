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
LanguageName=Chinese Simplified 
LanguageID=$0804 
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
SetupAppTitle=安装 
SetupWindowTitle=安装 - %1 
UninstallAppTitle=卸载 
UninstallAppFullTitle=%1 卸载 

; *** Misc. common
InformationTitle=信息 
ConfirmTitle=确认 
ErrorTitle=出错 

; *** SetupLdr messages
SetupLdrStartupMessage=现在将安装 %1。您想要继续吗？ 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=安装程序正在运行。 
WindowsVersionNotSupported=这个程序不支持您电脑的Windows版本。 
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
ExitSetupMessage=安装程序未完成安装。如果您现在退出，您的程序将不能安装。%n%n您可以以后再运行安装程序以完成安装。%n%n退出安装程序吗？ 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &返回 
ButtonNext=&下一个 > 
ButtonInstall=&安装 
ButtonOK=确认 
ButtonCancel=取消 
ButtonYes=&是 
ButtonYesToAll=&全选 是 
ButtonNo=&否 
ButtonNoToAll=全否 
ButtonFinish=&完成 
ButtonBrowse=&浏览... 
ButtonWizardBrowse=浏览...... 
ButtonNewFolder=&新建文件夹 

; *** "Select Language" dialog messages
SelectLanguageTitle=选择安装语言 
SelectLanguageLabel=选择安装时要使用的语言。 

; *** Common wizard text
ClickNext=单击“下一步”继续，或单击“取消”退出安装程序。 
BeveledLabel=
BrowseDialogTitle=浏览文件夹 
BrowseDialogLabel=在下列列表中选择一个文件夹，然后单击“确定”。 
NewFolderName=新文件夹 

; *** "Welcome" wizard page
WelcomeLabel1=欢迎使用 [name] 安装向导 
WelcomeLabel2=现在将安装 [name/ver] 到您的电脑中。%n%n推荐您在继续安装前关闭所有其它应用程序。 

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
WizardInfoBefore=信息 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=信息 
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
WizardSelectDir=选择目标位置 
SelectDirDesc=您想将 [name] 安装在什么地方？ 
SelectDirLabel3=安装程序将安装 [name] 到下列文件夹中。 
SelectDirBrowseLabel=单击“下一步”继续。如果您想选择其它文件夹，单击“浏览”。 
DiskSpaceMBLabel=至少需要有 [mb] MB 的可用磁盘空间。 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=没有足够的磁盘空间 
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
WizardSelectProgramGroup=选择开始菜单文件夹 
SelectStartMenuFolderDesc=您想在哪里放置程序的快捷方式？ 
SelectStartMenuFolderLabel3=安装程序现在将在下列开始菜单文件夹中创建程序的快捷方式。 
SelectStartMenuFolderBrowseLabel=单击“下一步”继续。如果您想选择其它文件夹，单击“浏览”。 
MustEnterGroupName=您必须输入一个文件夹名。 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=文件夹名不能包含下列任何字符:%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=准备安装 
ReadyLabel1=安装程序现在准备开始安装 [name] 到您的电脑中。 
ReadyLabel2a=单击“安装”继续此安装程序。如果您想要回顾或改变设置，请单击“上一步”。 
ReadyLabel2b=单击“安装”继续此安装程序? 
ReadyMemoUserInfo=User information:
ReadyMemoDir=目标位置: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=开始菜单文件夹: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=正在准备安装 
PreparingDesc=安装程序正在准备安装 [name] 到您的电脑中。 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=安装程序不能继续。请单击“取消”退出。 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=安装中 
InstallingLabel=安装程序正在安装 [name] 到您的电脑中，请稍等。 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] 安装完成 
FinishedLabelNoIcons=安装程序已在您的电脑中安装了 [name]。 
FinishedLabel=安装程序已在您的电脑中安装了 [name]。此应用程序可以通过选择安装的快捷方式运行。 
ClickFinish=单击“完成”退出安装程序。 
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
AbortRetryIgnoreCancel=关闭安装程序 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=正在解压缩文件... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=正在完成安装... 
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
ConfirmUninstall=您确定想要完全删除 %1 及它的所有组件吗？ 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=正在从您的电脑中删除 %1，请等待。 
UninstalledAll=%1 已顺利地从您的电脑中删除。 
UninstalledMost=%1 卸载完成。%n%n有一些内容不能被删除。您可以手工删除它们。 
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
CreateDesktopIcon=创建桌面快捷方式 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=%1 网站 
UninstallProgram=卸载 %1 
LaunchProgram=启动 %1 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=此设备上已安装课励彼。您想要更新它吗？ 
UpgradeDelMsg=如果您选择重新安装而不是更新，您将会丢失所有现有数据。 请确认您想要继续安装。 
InstallPythonMsg=您需要安装 Python 3.8+ 才能运行课励彼。 由于安装向导无法在您的系统上找到 Python，所以现在将安装Python。 请单击“是”，确认并继续安装。 
InstallPythonErrMsg=不安装 Python，课励彼无法运行。点击“确认”返回并安装 Python，或“取消”退出课励彼安装程序 
SetupKolibriErrMsg=严重错误。依赖关系安装失败。错误号： 
KolibriInstallFailed=在课励彼设置过程中出了错。%n在日志文件中可以找到更多信息： 
SetupWizardMsg=安装向导正在复制文件。这可能需要一段时间，请稍候... 
LaunchKolibri=启动课励彼 
KolibriSupportLink=社区论坛 
KolibriHomePage=首页 
KolibriDocs=文档 
FileNotFound= 没有找到 
Needhelp=若要在线获得帮助，请访问我们的社区论坛： 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=您是否也想要删除与课励彼相关联的所有数据？ 
UninstallKolibriDataLine2=这将永久删除所有已下载的内容频道和用户互动数据。 
UninstallKolibriDataLine3=这个操作无法撤销。 
UninstallKolibriPath=数据位置： 
