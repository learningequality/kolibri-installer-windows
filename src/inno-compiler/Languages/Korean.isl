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
LanguageName=Korean 
LanguageID=$0412 
LanguageCodePage=949 
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
SetupAppTitle=설정 
SetupWindowTitle=설정 - %1 
UninstallAppTitle=삭제 
UninstallAppFullTitle=%1 삭제 

; *** Misc. common
InformationTitle=정보 
ConfirmTitle=확인 
ErrorTitle=오류 

; *** SetupLdr messages
SetupLdrStartupMessage=%1을(를) 설치합니다, 계속하시겠습니까? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=설치가 이미 실행 중입니다. 
WindowsVersionNotSupported=이 프로그램은 귀하의 Windows 버전을 지원하지 않습니다. 
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
ExitSetupMessage=설치가 완료되지 않았습니다, 여기서 설치를 종료하면 프로그램은 설치되지 않습니다.%n%n설치를 완료하려면 나중에 다시 설치 프로그램을 실행해야 합니다.%n%n그래도 설치를 종료하시겠습니까? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &뒤로가기 
ButtonNext=&다음 > 
ButtonInstall=설치 
ButtonOK=확인 
ButtonCancel=취소 
ButtonYes=&예 
ButtonYesToAll=모두 예 
ButtonNo=&아니오 
ButtonNoToAll=모두 아니요 
ButtonFinish=&완료 
ButtonBrowse=찾아보기... 
ButtonWizardBrowse=찾아보기... 
ButtonNewFolder=새폴더 생성 

; *** "Select Language" dialog messages
SelectLanguageTitle=설치 언어 선택 
SelectLanguageLabel=설치에 사용할 언어를 선택하십시오. 

; *** Common wizard text
ClickNext=계속하려면 "다음"을 클릭하고 설치를 종료하려면 "취소"를 클릭합니다. 
BeveledLabel=
BrowseDialogTitle=폴더 찾아보기 
BrowseDialogLabel=아래 목록에서 폴더를 선택한 다음 "확인"을 클릭합니다. 
NewFolderName=새 폴더 

; *** "Welcome" wizard page
WelcomeLabel1=[name] 설치 마법사 시작 
WelcomeLabel2=이 마법사는 귀하의 컴퓨터에 [name/ver] 을(를) 설치할 것입니다. %n%n설치하기 전에 다른 응용프로그램들을 모두 닫으시기 바랍니다. 

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
WizardInfoBefore=정보 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=정보 
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
WizardSelectDir=설치 위치 선택 
SelectDirDesc=[name] 의 설치 위치를 선택하십시오. 
SelectDirLabel3=다음 폴더에 [name] 을(를) 설치합니다. 
SelectDirBrowseLabel=계속하려면 "다음"을, 다른 폴더를 선택하려면 "찾아보기"를 클릭하십시오. 
DiskSpaceMBLabel=이 프로그램은 최소 [mb] MB의 디스크 여유 공간이 필요합니다. 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=디스크 공간이 부족합니다 
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
WizardSelectProgramGroup=시작 메뉴 폴더 선택 
SelectStartMenuFolderDesc=어디에 프로그램 바로가기를 위치하겠습니까? 
SelectStartMenuFolderLabel3=다음 시작 메뉴 폴더에 프로그램 바로가기를 만듭니다. 
SelectStartMenuFolderBrowseLabel=계속하려면 "다음"을, 다른 폴더를 선택하려면 "찾아보기"를 클릭하십시오. 
MustEnterGroupName=폴더 이름을 입력하십시오. 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=폴더 이름은 다음 문자를 포함할 수 없습니다:%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=설치 준비 완료 
ReadyLabel1=귀하의 컴퓨터에 [name]을(를) 설치할 준비가 되었습니다. 
ReadyLabel2a=설치를 계속하려면 "설치"를, 설정을 변경하거나 검토하려면 "뒤로"를 클릭하십시오. 
ReadyLabel2b=설치를 계속하려면 "설치"를 클릭하십시오. 
ReadyMemoUserInfo=User information:
ReadyMemoDir=설치 위치: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=시작 메뉴 폴더: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=설치 준비 중 
PreparingDesc=귀하의 컴퓨터에 [name] 설치를 준비하는 중입니다. 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=설치를 계속할 수 없습니다, "취소"를 클릭하여 설치를 종료하십시오. 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=설치 중 
InstallingLabel=귀하의 컴퓨터에 [name]을(를) 설치하는 중이오니 잠시 기다려 주십시오. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] 설치 마법사 완료 
FinishedLabelNoIcons=귀하의 컴퓨터에 [name]이(가) 설치되었습니다. 
FinishedLabel=귀하의 컴퓨터에 [name]이(가) 설치되었습니다, 응용프로그램은 설치된 아이콘을 선택하여 시작할 수 있습니다. 
ClickFinish=설치를 끝내려면 "종료"를 클릭하십시오. 
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
AbortRetryIgnoreCancel=설치 취소 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=파일을 추출하는 중... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=설치를 완료하는 중... 
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
ConfirmUninstall=%1와(과) 그 구성 요소를 모두 제거하시겠습니까? 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=귀하의 컴퓨터에서 %1을(를) 제거하는 중... 잠시 기다려 주십시오. 
UninstalledAll=%1이(가) 성공적으로 제거되었습니다! 
UninstalledMost=%1 제거가 완료되었습니다.%n%n일부 요소는 삭제할 수 없으니, 수동으로 제거하시기 바랍니다. 
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
CreateDesktopIcon=데스크탑 바로가기 만들기 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=웹에 %1 
UninstallProgram=%1 제거 
LaunchProgram=%1 실행 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=이 기기에 Kolibri가 이미 설치되어 있습니다. 업데이트를 진행하시겠습니까? 
UpgradeDelMsg=업데이트가 아닌 신규 설치를 선택하면 기존 데이터가 모두 삭제됩니다. 그래도 신규 설치를 진행할지 확인하십시오. 
InstallPythonMsg=Koribri를 실행하기 위해서는 최소 Python 3.8이상의 버전이 필요합니다. 설치 마법사가 이 시스템에서 Python을 찾지 못했으므로 지금 설치를 시작합니다. 'yes'를 클릭하시고 설치를 계속하십시오. 
InstallPythonErrMsg=Koribri는 Python설치 없이 실행되지 않습니다. 뒤로 돌아가서 Python을 설치하시려면 예를 클릭하시고, Kolibri 설치를 중단하시려면 취소를 클릭하십시오 
SetupKolibriErrMsg=치명적 오류. 종속된 항목의 설치를 실패하였습니다. 오류 넘버: 
KolibriInstallFailed=Kolibri설치중 오류가 발생하였습니다.%n 추가적인 정보는 로그파일에서 확인하십시오: 
SetupWizardMsg=설치 마법사가 파일을 복사하고 있습니다. 몇 분이 걸릴 수 있으니, 기다려주십시오. 
LaunchKolibri=Kolibri 시작하기 
KolibriSupportLink=커뮤니티 포럼 
KolibriHomePage=홈페이지 
KolibriDocs=문서 
FileNotFound= 를 찾을 수 없습니다 
Needhelp=온라인에서 도움을 받으려면 커뮤니티 포럼을 방문하십시오. 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=Kolibri와 관련된 모든 데이터를 삭제하시겠습니까? 
UninstallKolibriDataLine2=다운된 모든 컨텐츠 채널과 사용자 활동 정보를 영구 삭제합니다. 
UninstallKolibriDataLine3=이 작업은 취소할 수 없습니다. 
UninstallKolibriPath=데이터 위치: 
