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
LanguageName=Hindi 
LanguageID=$0439 
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
UninstallAppTitle=अनइंस्टॉल करें 
UninstallAppFullTitle=%1 अनइंस्टॉल करें 

; *** Misc. common
InformationTitle=जानकारी 
ConfirmTitle=की पुष्टि करें 
ErrorTitle=त्रुटि 

; *** SetupLdr messages
SetupLdrStartupMessage=यह %1 को इंस्टॉल करेगा। क्या आप जारी रखना चाहते हैं? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=सेटअप पहले से चल रहा है। 
WindowsVersionNotSupported=आपके कंप्यूटर में विंडोज़ का को वर्शन चल रहा है उसे यह प्रोग्राम समर्थन नहीं करता है। 
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
ExitSetupMessage=सेटअप पूरा नहीं हुआ है। यदि आप अभी बाहर निकलते हैं, तो प्रोग्राम इंस्टॉल नहीं होगा। %n%n आप सं स्थापना को पूरा करने के लिए किसी अन्य समय पर फिर से सेटअप चला सकते हैं। %n%n सेटअप से बाहर निकलें? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &पीछे 
ButtonNext=&आगे > 
ButtonInstall=&संस्थापित करें 
ButtonOK=ठीक है 
ButtonCancel=रद्द करें 
ButtonYes=&हाँ 
ButtonYesToAll=&सभी के लिए हाँ 
ButtonNo=&नहीं 
ButtonNoToAll=सभी के लिए &नहीं 
ButtonFinish=&समाप्त 
ButtonBrowse=&ब्राउज़ करें... 
ButtonWizardBrowse=&ब्राउज़ करें... 
ButtonNewFolder=&नया फोल्डर बनाएं 

; *** "Select Language" dialog messages
SelectLanguageTitle=सेटअप भाषा चुनें 
SelectLanguageLabel=संस्थापना के दौरान उपयोग की जाने वाली भाषा चुनें। 

; *** Common wizard text
ClickNext=जारी रखने के लिए अगला पर, या सेटअप से बाहर जाने के लिए रद्द करें पर क्लिक करें। 
BeveledLabel=
BrowseDialogTitle=फोल्डर के लिए ब्राउस करें 
BrowseDialogLabel=नीचे दी गई सूची में एक फोल्डर चुनें, फिर ओके पर क्लिक करें। 
NewFolderName=नया फोल्डर 

; *** "Welcome" wizard page
WelcomeLabel1=[name] सेटअप विज़ार्ड में आपका स्वागत है 
WelcomeLabel2=यह आपके कंप्यूटर पर [name/ver] इंस्टॉल करेगा।%n%nयह सलाह दी जाती है कि आप जारी रखने से पहले अन्य सभी एप्लिकेशन्स को बंद कर दें। 

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
WizardInfoBefore=जानकारी 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=जानकारी 
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
WizardSelectDir=गंतव्य स्थान चुनें 
SelectDirDesc=[name] को कहां इंस्टॉल करना चाहिए? 
SelectDirLabel3=सेटअप [name] को निम्नलिखित फ़ोल्डर में इंस्टॉल करेगा। 
SelectDirBrowseLabel=जारी रखने के लिए, आगे पर क्लिक करें। यदि आप एक अलग फ़ोल्डर चुनना चाहते हैं, तो ब्राउज़ पर क्लिक करें। 
DiskSpaceMBLabel=कम-से-कम [mb] एमबी का डिस्क स्थान अपेक्षित है। 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=डिस्क में पर्याप्त स्थान नहीं 
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
WizardSelectProgramGroup=स्टार्ट मेनू फोल्डर चुनें 
SelectStartMenuFolderDesc=प्रोग्राम्स के शॉर्टकट्स को सेटअप ने कहा रखना चाहिये। 
SelectStartMenuFolderLabel3=सेटअप निम्नलिखित स्टार्ट मेनू फ़ोल्डर में प्रोग्राम्स के शॉर्टकटस बनाएगा। 
SelectStartMenuFolderBrowseLabel=जारी रखने के लिए, आगे पर क्लिक करें। यदि आप एक अलग फ़ोल्डर चुनना चाहते हैं, तो ब्राउज़ पर क्लिक करें। 
MustEnterGroupName=फोल्डर का नाम दर्ज करना आवश्यक है 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=फ़ोल्डर नाम में निम्न में से कोई भी वर्ण शामिल नहीं हो सकते है:%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=संस्थापना के लिए तैयार 
ReadyLabel1=आपके कंप्यूटर पर [name] को इंंस्टॉल करना शुरू करने के लिए सेटअप अब तैयार है। 
ReadyLabel2a=संस्थापना जारी रखने के लिए इंसटॉल करें पर क्लिक करें, या यदि आप किसी सेटिंग की समीक्षा करना या बदलना चाहते हैं तो पीछे पर क्लिक करें। 
ReadyLabel2b=संस्थापना शुरू करने के लिए इंसटॉल करें पर क्लिक करें। 
ReadyMemoUserInfo=User information:
ReadyMemoDir=गंतव्य स्थान: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=स्टार्ट मेनू फोल्डर: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=इनस्टॉल करने को तैयार हो रहा है 
PreparingDesc=आपके कंप्यूटर पर [name] को इंंस्टॉल करने के लिए सेटअप तैयार हो रहा है। 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=सेटअप जारी नहीं रह सकता। कृपया बाहर निकलने के लिए 'रद्द करें' पर क्लिक करें। 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=इंस्टॉल हो रहा है 
InstallingLabel=कृपया अपने कंप्यूटर पर सेटअप [name] इनस्टॉल करते समय प्रतीक्षा करें। 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=[name] सेटअप विज़ार्ड पूरा हो रहा है 
FinishedLabelNoIcons=सेटअप ने आपके कंप्यूटर पर [name] इंस्टॉल करना समाप्त कर दिया है। 
FinishedLabel=सेटअप ने आपके कंप्यूटर पर [name] इंस्टॉल करना समाप्त कर दिया है।इंस्टॉल किए गए शॉर्टकट्स का चयन करके एप्लिकेशन लॉन्च किया जा सकता है। 
ClickFinish=सेटअप से बाहर आने के लिए समाप्त पर क्लिक करें। 
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
AbortRetryIgnoreCancel=इंस्टॉल करना रद्द करें 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=फ़ाइलें निकाली जा रही हैं... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=इंस्टॉलेशन ख़तम हो रहा है 
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
ConfirmUninstall=क्या आप वाकई %1 और उसके सभी घटकों को पूरी तरह से हटाना चाहते हैं? 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=कृपया प्रतीक्षा करें जबकि %1 आपके कंप्यूटर से निकाला जा रहा है। 
UninstalledAll=%1 आपके कंप्यूटर से सफलतापूर्वक हटा दिया गया था। 
UninstalledMost=%1 अनइंस्टॉल पूरा हो गया है।%n%nकुछ भाग नहीं निकाले जा सकते।इन्हें खुदके हाथोंसे निकाला जा सकता है। 
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
CreateDesktopIcon=डेस्कटॉप शॉर्टकट बनाएँ 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=वेब पर %1 
UninstallProgram=%1 को अनइंस्टॉल करें 
LaunchProgram=%1 लांच करें 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=इस उपकरण पर पहले से ही कोलिब्री का एक इंस्टॉलेशन मौजूद है। क्या आप इसे अपडेट करना चाहेंगे? 
UpgradeDelMsg=यदि आप एक नया इंस्टॉलेशन करना चाहते हैं और अपडेट नहीं करना चाहते हैं, तो आप अपने सभी मौजूदा डेटा को खो देंगे। कृपया पुष्टि करें कि आप नया इंस्टॉलेशन करना जारी रखना चाहते हैं। 
InstallPythonMsg=कोलिब्री को चलाने के लिए आपको पायथन 3.8+ इंस्टॉल करना होगा। सेटअप विज़ार्ड आपके उपकरण पर पायथन को खोजने में सफल नहीं हुआ और अब वो इसे इनस्टॉल करने के लिए आगे बढ़ेगा। इंस्टॉलेशन करने के लिए को पुष्टि देने और जारी रखने के लिए कृपया 'हाँ' पर क्लिक करें। 
InstallPythonErrMsg=पायथन को स्थापित किए बिना कोलिब्री नहीं चल सकता है। पाइथन स्थापित करने के लिए वापस जाएँ और ओके पर क्लिक करें या कोलिब्री इंस्टॉलर को छोड़ने के लिए कैंसिल पर क्लिक करें | 
SetupKolibriErrMsg=गंभीर त्रुटि। निर्भरताएं स्थापित करने में विफल रही हैं। त्रुटि संख्या: 
KolibriInstallFailed=कोलिब्री स्थापना के दौरान कुछ गड़बड़ हो गई.%nअतिरिक्त जानकारी लॉग फ़ाइल में मिल सकती है: 
SetupWizardMsg=सेटअप विज़ार्ड फ़ाइलों की प्रतिलिपि बना रहा है। इसमें थोड़ा समय लग सकता है, कृपया प्रतीक्षा करें.. 
LaunchKolibri=कोलीब्री लॉन्च करें 
KolibriSupportLink=सामुदायिक मंच 
KolibriHomePage=मुखपृष्ठ 
KolibriDocs=प्रलेखन 
FileNotFound= नहीं मिला। 
Needhelp=ऑनलाइन सहायता प्राप्त करने के लिए, कृपया हमारे सामुदायिक मंच पर जाएँ: 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=क्या आप कोलिब्री से जुड़े सभी डेटा को हटाना भी चाहेंगे? 
UninstallKolibriDataLine2=यह सभी डाउनलोड किए गए सामग्री चैनल और उपयोगकर्ता उपयोगकर्ता संपर्क डेटा को स्थायी रूप से हटा देगा। 
UninstallKolibriDataLine3=इस क्रिया को पूर्ववत नहीं किया जा सकता है। 
UninstallKolibriPath=डेटा स्थान: 
