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
LanguageName=French 
LanguageID=$040C 
LanguageCodePage=1252 
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
SetupAppTitle=Configuration 
SetupWindowTitle=Installation - %1 
UninstallAppTitle=Désinstallation 
UninstallAppFullTitle=Désinstallation %1 

; *** Misc. common
InformationTitle=Information 
ConfirmTitle=Confirmer 
ErrorTitle=Erreur 

; *** SetupLdr messages
SetupLdrStartupMessage=Ceci va installer %1. Voulez-vous continuer ? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=L'installation est déjà en cours d'exécution. 
WindowsVersionNotSupported=Ce programme n'est pas prévu pour fonctionner avec la version de Windows utilisée sur votre ordinateur. 
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
ExitSetupMessage=L'installation n'est pas complète. Si vous quittez maintenant, le programme ne sera pas installé.%n%nVous devrez relancer l'assistant pour finir l'installation.%n%nVoulez-vous quand même quitter l'installation ? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &Retour 
ButtonNext=&Suivant > 
ButtonInstall=&Installation 
ButtonOK=OK 
ButtonCancel=Annuler 
ButtonYes=&Oui 
ButtonYesToAll=Oui à &Tout 
ButtonNo=&Non/Aucun 
ButtonNoToAll=N&on à Tout 
ButtonFinish=&Terminer 
ButtonBrowse=&Parcourir... 
ButtonWizardBrowse=Pa&rcourir... 
ButtonNewFolder=&Créer un Nouveau Dossier 

; *** "Select Language" dialog messages
SelectLanguageTitle=Sélectionner une langue d'installation 
SelectLanguageLabel=Sélectionnez la langue qui sera utilisée pendant l'installation. 

; *** Common wizard text
ClickNext=Cliquez sur Suivant pour continuer ou sur Annuler pour abandonner l'installation. 
BeveledLabel=
BrowseDialogTitle=Parcourir les Dossiers 
BrowseDialogLabel=Sélectionnez un dossier dans la liste ci-dessous, puis cliquez sur OK. 
NewFolderName=Nouveau Dossier 

; *** "Welcome" wizard page
WelcomeLabel1=Bienvenue dans l'assistant d'installation [name] 
WelcomeLabel2=Cela va installer [name/ver] sur votre ordinateur.%n%nIl est recommandé de fermer toutes les autres applications avant de continuer. 

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
WizardInfoBefore=Information 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=Information 
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
WizardSelectDir=Sélectionnez l'emplacement de destination 
SelectDirDesc=Où [name] doit-il être installé ? 
SelectDirLabel3=L'installation va installer [name] dans le dossier suivant. 
SelectDirBrowseLabel=Pour continuer, cliquez sur Suivant. Si vous souhaitez choisir un dossier différent, cliquez sur Parcourir. 
DiskSpaceMBLabel=Au minimum [mb] Mo d'espace disque libre est requis. 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=Pas assez d'espace disque 
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
WizardSelectProgramGroup=Sélectionnez le Dossier du Menu de Démarrage 
SelectStartMenuFolderDesc=Où l'assistant d'installation doit placer les raccourcis du programme ? 
SelectStartMenuFolderLabel3=L'installation va créer les raccourcis du programme dans le dossier du Menu de Démarrage suivant. 
SelectStartMenuFolderBrowseLabel=Pour continuer, cliquez sur Suivant. Si vous souhaitez choisir un dossier différent, cliquez sur Parcourir. 
MustEnterGroupName=Vous devez saisir un nom de dossier. 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=Le nom du dossier ne doit contenir aucun des caractères suivants :%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=Prêt pour l'installation 
ReadyLabel1=L'installation de [name] sur votre ordinateur est maintenant prête à commencer. 
ReadyLabel2a=Cliquez sur Installer pour continuer l'installation ou sur Retour si vous voulez revoir ou changer un paramètre. 
ReadyLabel2b=Cliquez sur Installer pour continuer vers l'installation. 
ReadyMemoUserInfo=User information:
ReadyMemoDir=Emplacement de destination : 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=Dossier du Menu de Démarrage : 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=Préparation de l'installation 
PreparingDesc=L'assistant se prépare à installer [name] sur votre ordinateur. 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=L'installation ne peut pas continuer. Veuillez cliquer sur Annuler pour quitter. 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=Installation… 
InstallingLabel=Veuillez patienter pendant que l'assistant installe [name] sur votre ordinateur. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Préparation de l'Assistant d'Installation [name] 
FinishedLabelNoIcons=L'assistant a terminé l'installation de [name] sur votre ordinateur. 
FinishedLabel=L'assistant a terminé l'installation de [name] sur votre ordinateur. L'application peut être lancée grâce aux raccourcis installés. 
ClickFinish=Cliquez sur Terminer pour quitter l'installation. 
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
AbortRetryIgnoreCancel=Annuler l'installation 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=Extraction des fichiers... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=Finalisation de l'installation... 
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
ConfirmUninstall=Êtes-vous sûr de vouloir supprimer complètement %1 et tous ses composants ? 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=Veuillez patienter pendant que %1 est supprimé de votre ordinateur. 
UninstalledAll=%1 a été correctement supprimé de votre ordinateur. 
UninstalledMost=La désinstallation de %1 est terminée.%n%nCertains éléments n'ont pas pu être supprimés. Vous pouvez les supprimer manuellement. 
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
CreateDesktopIcon=Créer un raccourci sur le &bureau 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=%1 sur le Web 
UninstallProgram=Désinstaller %1 
LaunchProgram=Lancer %1 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=Il y a déjà une installation de Kolibri sur cet appareil. Voulez-vous la mettre à jour ? 
UpgradeDelMsg=Si vous choisissez de faire une nouvelle installation au lieu de faire une mise à jour, vous perdrez toutes vos données existantes. Veuillez confirmer que vous souhaitez poursuivre la nouvelle installation. 
InstallPythonMsg=Vous devez avoir Python 3.8+ installé pour exécuter Kolibri. L'assistant d'installation n'a pas pu trouver Python sur votre système et va donc procéder à son installation. Veuillez cliquer sur "Oui" pour confirmer et continuer l'installation. 
InstallPythonErrMsg=Kolibri ne peut pas fonctionner sans installer Python. Cliquez sur Ok pour revenir en arrière et installer Python, ou sur Annuler pour quitter l'installateur de Kolibri 
SetupKolibriErrMsg=Erreur critique. Les dépendances n'ont pas pu être installées. Numéro d'erreur : 
KolibriInstallFailed=Une erreur s'est produite lors de l'installation de Kolibri.%nDes informations supplémentaires peuvent être trouvées dans le fichier de log : 
SetupWizardMsg=L'assistant d'installation est en train de copier des fichiers. Cela peut prendre un certain temps, veuillez patienter... 
LaunchKolibri=Lancer Kolibri 
KolibriSupportLink=Forum de la communauté 
KolibriHomePage=Page d'accueil 
KolibriDocs=Documentation 
FileNotFound= n'a pas été trouvé(e). 
Needhelp=Pour obtenir de l'aide en ligne, veuillez visiter notre forum communautaire : 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=Voulez-vous également supprimer toutes les données associées à Kolibri ? 
UninstallKolibriDataLine2=Cela supprimera définitivement tous les contenus des chaînes téléchargés et les données d'interactions utilisateur. 
UninstallKolibriDataLine3=Cette action ne peut être annulée. 
UninstallKolibriPath=Emplacement des données : 
