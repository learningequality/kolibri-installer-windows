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
LanguageName=Yoruba 
LanguageID=$046A 
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
SetupAppTitle=Ṣeto 
SetupWindowTitle=Ṣeto- %1 
UninstallAppTitle=Aifi si po 
UninstallAppFullTitle=%1 Aifi si po 

; *** Misc. common
InformationTitle=Alaye 
ConfirmTitle=Jẹ́risí 
ErrorTitle=Àṣìṣe 

; *** SetupLdr messages
SetupLdrStartupMessage=Eyi Yoo fi sori ẹrọ %1. ṣe iwọ fẹ si tẹsiwaju? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=Ṣeto jẹ tẹlẹ nṣiṣẹ. 
WindowsVersionNotSupported=Eyi iwe eto ṣe kii ṣe atilẹyin Awọn ti ikede ti ferese rẹ kọmputa jẹnṣiṣẹ. 
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
ExitSetupMessage=Ṣeto jẹkii ṣe pari. ti o baiwọ tẹlẹ bayi, Awọn etoYoo kii ṣe jẹ fi sori ẹrọ. %n%niwọ Ṣe ṣiṣe ṣeto lẹẹkansi ni miiranaago si pari Awọn fifi soriẹrọ.%n%ntẹlẹ ṣeto? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &Pada 
ButtonNext=&Itele > 
ButtonInstall=&Fi sori ẹrọ 
ButtonOK=Óti da 
ButtonCancel=Fagilée 
ButtonYes=&Bẹ́ẹ̀ni 
ButtonYesToAll=Bẹẹni si &Bbogbo 
ButtonNo=&Rara 
ButtonNoToAll=N&Eyin si gbogbo 
ButtonFinish=&Parí 
ButtonBrowse=&lọkiriayelujara... 
ButtonWizardBrowse=B&rowse... 
ButtonNewFolder=&ṣe Titun Folda 

; *** "Select Language" dialog messages
SelectLanguageTitle=Yan ṣeto Ede 
SelectLanguageLabel=Yan awọn ede si lilo nigba Awọn fifi sori ẹrọ. 

; *** Common wizard text
ClickNext=Tẹ Itele si tẹsiwaju tabi Fagilee si tẹlẹ ṣeto. 
BeveledLabel=
BrowseDialogTitle=Lọ kiri ayelujara Fun Folda 
BrowseDialogLabel=Yan a obinrin folda ni Awọn Akojọ ni isalẹ, lẹhinna tẹ O dara. 
NewFolderName=Titun Folda 

; *** "Welcome" wizard page
WelcomeLabel1=Kaabo si Awọn [name] ṣeto Oluṣeto 
WelcomeLabel2=Eyi Yoo fi sori ẹrọ [name/ver] lori rẹ kọmputa. %n%no jẹ niyanju pe iwọ sunmọ gbogbo miiran ohun elo ṣaaju ki o to tẹsiwaju. 

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
WizardInfoBefore=Alaye 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=Alaye 
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
WizardSelectDir=Yan Ibi ti nlo ipo 
SelectDirDesc=Nibi ti yẹ [name] jẹ fi sori ẹrọ? 
SelectDirLabel3=Ṣeto yoo fi sori ẹrọ [name] sinu Awọn wọnyi folda. 
SelectDirBrowseLabel=Si tẹsiwaju, tẹ Itele. Ti o ba iwọ yoo bi si yan a obinrin yatọ folda, tẹ lọ kiri ayelujara. 
DiskSpaceMBLabel=Ni o kere [mb] MB ti ṣ''ofo disiki Aaye jẹ ti a beer. 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=Kii ṣe to disiki Aaye 
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
WizardSelectProgramGroup=Yan bẹrẹ akojọ aṣayan folda 
SelectStartMenuFolderDesc=Wà yẹ ṣeto Ibi Awọn awọn eto ọna Abuja? 
SelectStartMenuFolderLabel3=Ṣeto eto yoo ṣẹda Awọn awọn eto awọn ọna abuja ni Awọn wọnyi bẹrẹ akojọ aṣayan folda. 
SelectStartMenuFolderBrowseLabel=Si tẹsiwaju, tẹ Itele. Ti o ba iwọ yoo bi si yan a obinrin yatọ folda, tẹ lọ kiri ayelujara. 
MustEnterGroupName=Iwọ gbọdọ tẹ a obinrin folda orukọ. 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=Awọn folda orukọ ko le ṣe pẹlu eyikeyi ti Awọn wọnyi ohun kikọ:%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=Setan si fi sori ẹrọ 
ReadyLabel1=Ṣeto jẹ bayi setan si berè fifi sori ẹrọ [name] lori rẹ kọmputa. 
ReadyLabel2a=Tẹ fi sori ẹrọ si tẹsiwaju pẹlu Awọn fifi sori ẹrọ, tabi tẹ pada ti o ba iwọ fẹ si atunyẹwo tabi iyipada eyikeyi ètò. 
ReadyLabel2b=Tẹ fi sori ẹrọ si tẹsiwaju pẹlu Awọn fifi sori ẹrọ. 
ReadyMemoUserInfo=User information:
ReadyMemoDir=Ibi ti nlo ipo: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=Bẹrẹ akojọ aṣayan folda: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=Ngbaradi si fi sori ẹrọ 
PreparingDesc=Ṣeto jẹ ngbaradi si fi sori ẹrọ [orukọ] lori rẹ kọmputa. 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=Ṣeto ko le ṣe tẹsiwaju. Jowo tẹ Fagilee si tẹlẹ. 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=Fifi sori ẹrọ 
InstallingLabel=Jowo duro nigba ti ṣeto nfi sii [orukọ] lori rẹ kọmputa. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=I pari Awọn [orukọ] ṣeto oluṣeto 
FinishedLabelNoIcons=Ṣeto ni o ni pari fifi sori ẹrọ [name] lori rẹ kọmputa. 
FinishedLabel=Ṣeto yoo pari fifi sori ẹrọ [name] lori rẹ kọmputa. Awọn ohun elo Ṣe jẹ se igbekale nipasẹ yiyan Awọn fi sori ẹrọ ọna abuja. 
ClickFinish=Tẹ pari si tẹlẹ ṣeto. 
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
AbortRetryIgnoreCancel=Fagilee fifi sori ẹrọ 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=Jijade awọn faili... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=Ipari fifi sori ẹrọ... 
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
ConfirmUninstall=Jẹ iwọ daju iwọ fẹ si patapata yọ kuro %1 ati gbogbo ti awọn oniwe- patapata? 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=Jowo duro nigba ti %1 jẹ yọ kuro lati rẹ kọmputa. 
UninstalledAll=%1 je ni ifijišẹ yọ kuro lati rẹ kọmputa. 
UninstalledMost=%1 aifi si po pari. %n%nDiẹ ninu awọn awọn eroja Le kii ṣe jẹ kuro. wọnyi le jẹ kuro pẹlu ọwọ. 
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
CreateDesktopIcon=Ṣẹda a obinrin &tabili ọna abuja 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=%1 lori Awọn wẹẹbu 
UninstallProgram=Aifi si po %1 
LaunchProgram=Ifilole %1 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=Ní bẹ jẹ ohun tẹlẹ fifi sori ẹrọ ti kolibri lori eyi ẹrọ. Yoo iwọ tun bi si imudojuiwọn o? 
UpgradeDelMsg=Ti o ba iwọ yan si ṣe a obinrin titun fifi sori ẹrọ ati kii ṣe si imudojuiwọn, iwọ Yoo alaimuṣinṣin gbogbo ti iwọ tẹlẹ data. Jowo jẹrisi iwọ fẹ si tẹsiwaju pẹlu Awọn titun fifi sori ẹrọ. 
InstallPythonMsg=Iwọ nilo si ni python 3.8+ fi sori ẹrọ ni aṣẹ si ṣiṣe kolibri. ṣeto oluṣeto je kii ṣe anfani si wa python lori rẹ eto ati Yoo ki ibayi tẹsiwaju si o. Jowo tẹ bẹẹni' si jẹrisi ati tẹsiwaju pẹlu Awọn fifi sori ẹrọ. 
InstallPythonErrMsg=Kolibri ko le ṣe ṣiṣe laisi fifi sori ẹrọ python. tẹ O dara si lọ pada ati fi sori ẹrọ python, tabi Fagilee si oyimbo Awọn kolibri insitola 
SetupKolibriErrMsg=Pataki aṣiṣe. dependences ni kuna si fi sori ẹrọ. aṣiṣe nọmba: 
KolibriInstallFailed=Nkan kan lọ aṣiṣe nigba kolibri ṣeto. %nAfikun alaye le jẹ ri ni Awọn wọle faili: 
SetupWizardMsg=Ṣeto oluṣeto jẹ didaakọ awọn faili. Eyi Ṣe ya a obinrin nigba ti, Jowo duro.. 
LaunchKolibri=Ifilole kolibri 
KolibriSupportLink=Agbegbe apero 
KolibriHomePage=Akọọkan 
KolibriDocs=Kikọ sí inu iwe 
FileNotFound= je kii ṣe ri. 
Needhelp=Si gba Egba Mi O online, Jowo ibewo wa agbegbe apero: 
CommunityLink=http:// agbegbe.ẹkọdeede. Org 
UninstallKolibriDataLine1=Yoo iwọ tun bi si paarẹ gbogbo Awọn data ni nkan ṣe pẹlu kolibri? 
UninstallKolibriDataLine2=Eyi Yoo permanently yọ kuro gbogbo gba lati ayelujara akoonu awọn ikanni ati Awọn olumulo ibaraenisepo data. 
UninstallKolibriDataLine3=Eyi iṣẹ ko le ṣe jẹ ko ṣeeṣe. 
UninstallKolibriPath=Data ipo: 
