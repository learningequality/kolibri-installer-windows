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
LanguageName=Marathi 
LanguageID=$044E 
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
SetupAppTitle=सेटअप 
SetupWindowTitle=सेटअप - %1 
UninstallAppTitle=अनइन्स्टॉल 
UninstallAppFullTitle=%1 अनइन्स्टॉल 

; *** Misc. common
InformationTitle=माहिती 
ConfirmTitle=खात्री करा 
ErrorTitle=चूक 

; *** SetupLdr messages
SetupLdrStartupMessage=याने %1 इन्स्टॉल होईल. आपल्याला पुढे सुरु ठेवायचे आहे का ? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=सेटअप आधीपासून सुरु आहे. 
WindowsVersionNotSupported=आपल्या संगणकावर सुरु असलेल्या विंडोजच्या आवृत्तीवर हा प्रोग्रॅम चालत नाही. 
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
ExitSetupMessage=सेटअप पूर्ण झालेला नाही. आपण आत्ता यातून बाहेर पडलात तर प्रोग्रॅम इन्स्टॉ्ल होणार नाही.%n%nइन्स्टॉ्लेशन पूर्ण करण्यासाठी आपण नंतर पुन्हा सेटअप रन करू शकता.%n%nसेटअप बंद करायचा का? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &मागे 
ButtonNext=&पुढील > 
ButtonInstall=&इन्स्टॉल 
ButtonOK=ठीक आहे 
ButtonCancel=रद्द करा 
ButtonYes=&होय 
ButtonYesToAll=&सर्वांना होय 
ButtonNo=&नाही 
ButtonNoToAll=&सर्वांना नाही 
ButtonFinish=&समाप्त 
ButtonBrowse=&ब्राउझ... 
ButtonWizardBrowse=ब्राउझ... 
ButtonNewFolder=&नवीन फोल्डर बनवा 

; *** "Select Language" dialog messages
SelectLanguageTitle=सेटअपची भाषा निवडा 
SelectLanguageLabel=इन्स्टॉलेशनसाठी वापरण्याची भाषा निवडा. 

; *** Common wizard text
ClickNext=पुढे जाण्यासाठी पुढील क्लिक करा किंवा सेटअपमधून बाहेर पडण्यासाठी रद्द क्लिक करा. 
BeveledLabel=
BrowseDialogTitle=फोल्डरसाठी ब्राउझ करा 
BrowseDialogLabel=खालील यादीतील फोल्डर निवडा आणि ओकेवर क्लिक करा. 
NewFolderName=नवीन फोल्डर 

; *** "Welcome" wizard page
WelcomeLabel1=[name] सेटअप व्हीझर्डमध्ये आपले स्वागत आहे 
WelcomeLabel2=हे आपल्या संगणकावर [नाव/आवृत्ती] इन्स्टॉल करेल.%n%nपुढे जाण्यापूर्वी कृपया इतर सर्व अॅप्लिकेशन बंद करावीत. 

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
WizardInfoBefore=माहिती 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=माहिती 
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
WizardSelectDir=अंतिम स्थान निवडा 
SelectDirDesc=[name] कोठे इन्स्टॉल करायचे आहे? 
SelectDirLabel3=सेटअप [name] खालील फोल्डरमध्ये इन्स्टॉ्ल करेल. 
SelectDirBrowseLabel=सुरु ठेवण्यासाठी, पुढील क्लिक करा. इतर कोणते फोल्डर निवडण्यासाठी ब्राउझ क्लिक करा. 
DiskSpaceMBLabel=डिस्कवर किमान [mb] MB मोकळी जागा आवश्यक आहे. 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=डिस्कवर पुरेशी जागा नाही 
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
WizardSelectProgramGroup=स्टार्ट मेन्यू फोल्डर निवडा 
SelectStartMenuFolderDesc=सेटअपने प्रोग्रॅमचे शॉर्टकट कोठे ठेवावेत? 
SelectStartMenuFolderLabel3=सेटअप खालील स्टार्ट मेन्यू फोल्डरमध्ये प्रोग्रॅमचे शॉर्टकट तयार करेल. 
SelectStartMenuFolderBrowseLabel=सुरु ठेवण्यासाठी, पुढील क्लिक करा. इतर कोणते फोल्डर निवडण्यासाठी ब्राउझ क्लिक करा. 
MustEnterGroupName=आपल्याला फोल्डरचे नाव टाकावे लागेल. 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=फोल्डरच्या नावामध्ये पुढीलपैकी कोणतेही वर्ण समाविष्ट होऊ शकत नाहीत:%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=इन्स्टॉल करण्यासाठी तयार आहे 
ReadyLabel1=सेटअप आता आपल्या संगणकावर [name] इन्स्टॉल करण्याची प्रक्रिया सुरु करण्यास तयार आहे. 
ReadyLabel2a=इन्स्टॉलेशन सुरू ठेवण्यासाठी इन्स्टॉल क्लिक करा, किंवा काही सेटिंग्ज पाहायची अथवा बदलायची असल्यास मागे क्लिक करा. 
ReadyLabel2b=इन्स्टॉलेशन सुरु ठेवण्यासाठी इन्स्टॉल दाबा. 
ReadyMemoUserInfo=User information:
ReadyMemoDir=अंतिम स्थान: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=स्टार्ट मेन्यू फोल्डर: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=इन्स्टॉलेशनची तयारी करत आहोत 
PreparingDesc=सेटअप आपल्या संगणकावर [name] इन्स्टॉल करण्याची तयारी करत आहे. 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=सेटअप पुढे जाऊ शकत नाही. बाहेर पाडण्यासाठी कृपया रद्द दाबा. 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=इन्स्टॉल होत आहे 
InstallingLabel=सेटअप आपल्या संगणकावर [name] इन्स्टॉल करत आहे, कृपया प्रतीक्षा करा. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] सेटअप व्हिझर्ड पूर्ण होत आहे 
FinishedLabelNoIcons=सेटअपने आपल्या संगणकावर [name] इन्स्टॉल केले आहे. 
FinishedLabel=सेटअपने आपल्या संगणकावर [name] इन्स्टॉल केले आहे. अॅप्लिकेशन सुरु करण्यासाठी इन्स्टॉल केलेला शॉर्टकट निवडा. 
ClickFinish=सेटअपमधून बाहेर पाडण्यासाठी पूर्ण हे बटन दाबा. 
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
AbortRetryIgnoreCancel=इन्स्टॉलेशन रद्द करा 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=फाईल्स मिळवत आहे... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=इन्स्टॉलेशन पूर्ण होत आहे... 
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
ConfirmUninstall=आपल्याला %1 आणि त्यातील सर्व भाग पूर्णपणे काढून टाकायचे आहेत का? 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=आपल्या संगणकावरून %1 काढून टाकले जात आहे, कृपया प्रतीक्षा करा. 
UninstalledAll=आपल्या संगणकावरून %1 यशस्वीरीत्या काढून टाकले गेले आहे. 
UninstalledMost=%1 अनइन्स्टॉल पूर्ण.%n%nकाही घटक काढून टाकता आले नाहीत. हे आपल्याला स्वतः काढून टाकता येतील. 
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
CreateDesktopIcon=&डेस्कटॉप शॉर्टकट तयार करा 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=वेब वरील %1 
UninstallProgram=%1 अनइन्स्टॉल करा 
LaunchProgram=%1 सुरु करा 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=या उपकरणावर कोलिब्री आधीच इन्स्टॉल केलेले आहे. आपल्याला ते अद्ययावत करायचे आहे का ? 
UpgradeDelMsg=आपण आधीचे कोलिब्री अद्ययावत न करता नव्याने इन्स्टॉल करण्याचा निर्णय घेतल्यास, आपला आधीचा सर्व डेटा नष्ट होईल. आपल्याला खरोखर नवे इन्स्टॉलेशन पुढे सुरु ठेवायचे आहे का याची खात्री करा. 
InstallPythonMsg=कोलिब्री चालवण्यासाठी पायथन 3.8+ असणे आवश्यक आहे. सेटअप व्हीझर्डला आपल्या सिस्टिमवर पायथन सापडले नाही, त्यामुळे सेटअप व्हीझर्ड आता ते इन्स्टॉल करण्यास सुरुवात करेल. इन्स्टॉ्लेशन सुरु ठेवण्यासाठी, कृपया 'होय' वर क्लिक करा. 
InstallPythonErrMsg=पायथन इन्स्टॉल केल्याशिवाय कोलिब्री चालू शकत नाही. मागे जाऊन पायथन इन्स्टॉल करण्यासाठी ओके बटण दाबा किंवा कोलिब्री इन्स्टॉलर बंद करण्यासाठी कॅन्सल बटण दाबा 
SetupKolibriErrMsg=गंभीर त्रुटी. डिपेंडन्सी इन्स्टॉल करण्यात अपयश आले. त्रुटी क्रमांक: 
KolibriInstallFailed=कोलिब्री सेट अप करताना काहीतरी समस्या आली.%nअधिक माहितीसाठी लॉग फाईल पहा: 
SetupWizardMsg=सेटअप व्हीझर्ड फाईल्स कॉपी करत आहे. थोडा वेळ लागू शकतो, कृपया प्रतीक्षा करा.. 
LaunchKolibri=कोलिब्री सुरु करा 
KolibriSupportLink=समुदाय मंच 
KolibriHomePage=मुख्य पृष्ठ 
KolibriDocs=दस्तऐवज 
FileNotFound= सापडले नाही. 
Needhelp=ऑनलाईन मदतीसाठी कृपया आमच्या समुदाय मंचाला भेट द्या: 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=कोलिब्रीशी संबंधित सर्व डेटा देखील आपल्याला काढून टाकायचा आहे का? 
UninstallKolibriDataLine2=यामुळे डाउनलोड केलेला सर्व मजकूर, वाहिन्या आणि युझर्सचा परस्परसंवाद याचा सर्व डेटा कायमचा नष्ट होईल. 
UninstallKolibriDataLine3=ही कृती रद्द करता येणार नाही. 
UninstallKolibriPath=डेटाचे स्थान: 
