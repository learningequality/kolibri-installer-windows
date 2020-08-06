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
LanguageName=Spanish 
LanguageID=$0c0a 
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
SetupAppTitle=Asistente de instalación 
SetupWindowTitle=Asistente de instalación - %1 
UninstallAppTitle=Desinstalar 
UninstallAppFullTitle=Desinstalar %1 

; *** Misc. common
InformationTitle=Información 
ConfirmTitle=Confirmar 
ErrorTitle=Error 

; *** SetupLdr messages
SetupLdrStartupMessage=Se va a instalar %1. ¿Deseas continuar? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=La instalación ya se está ejecutando. 
WindowsVersionNotSupported=Este programa no es compatible con la versión de Windows de tu ordenador. 
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
ExitSetupMessage=La instalación no está completa. Si cancelas ahora, el programa no será instalado.%n%nPuedes ejecutar la instalación de nuevo en otro momento para completar la instalación.%n%n¿Salir de la instalación? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &Atrás 
ButtonNext=&Siguiente > 
ButtonInstall=&Instalar 
ButtonOK=Aceptar 
ButtonCancel=Cancelar 
ButtonYes=&Sí 
ButtonYesToAll=Sí a &todo 
ButtonNo=&No 
ButtonNoToAll=N&o a todo 
ButtonFinish=&Finalizar 
ButtonBrowse=&Examinar... 
ButtonWizardBrowse=E&xaminar... 
ButtonNewFolder=&Crear nueva carpeta 

; *** "Select Language" dialog messages
SelectLanguageTitle=Seleccionar idioma de instalación 
SelectLanguageLabel=Seleccione el idioma a utilizar durante la instalación. 

; *** Common wizard text
ClickNext=Haz clic en 'Siguiente' para continuar o 'Cancelar' para salir de la instalación. 
BeveledLabel=
BrowseDialogTitle=Explorar carpetas 
BrowseDialogLabel=Selecciona una carpeta en la lista de abajo, luego haga clic en 'Aceptar'. 
NewFolderName=Nueva carpeta 

; *** "Welcome" wizard page
WelcomeLabel1=Bienvenid@s al Asistente de instalación de [name] 
WelcomeLabel2=[name/ver] será instalado en tu ordenador.%n%nSe recomienda cerrar todas las demás aplicaciones antes de continuar. 

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
WizardInfoBefore=Información 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=Información 
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
WizardSelectDir=Seleccionar la ubicación de destino 
SelectDirDesc=¿Dónde deseas instalar [name]? 
SelectDirLabel3=Asistente de instalación instalará [name] en la siguiente carpeta. 
SelectDirBrowseLabel=Para continuar, haz clic en 'Siguiente'. Si deseas seleccionar una carpeta diferente, haz clic en 'Examinar'. 
DiskSpaceMBLabel=Se necesitan al menos [mb] MB de espacio libre en el disco. 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=No hay suficiente espacio en disco 
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
WizardSelectProgramGroup=Seleccionar la carpeta del menú Inicio 
SelectStartMenuFolderDesc=¿Dónde se van a instalar los accesos directos del programa? 
SelectStartMenuFolderLabel3=Asistente de instalación creará accesos directos del programa en la siguiente carpeta del menú Inicio. 
SelectStartMenuFolderBrowseLabel=Para continuar, haz clic en 'Siguiente'. Si deseas seleccionar una carpeta diferente, haz clic en 'Examinar'. 
MustEnterGroupName=Hay que introducir un nombre de carpeta. 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=El nombre de carpeta no puede contener los siguientes caracteres:%n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=Listo para instalar 
ReadyLabel1=Asistente de instalación está listo para empezar a instalar [name] en tu ordenador. 
ReadyLabel2a=Haz clic en 'Instalar' para continuar con la instalación, o en 'Atrás' para revisar o cambiar los parámetros. 
ReadyLabel2b=Haz clic en 'Instalar' para continuar con la instalación. 
ReadyMemoUserInfo=User information:
ReadyMemoDir=Ubicación de destino: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=Carpeta menú Inicio: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=Preparando para instalar 
PreparingDesc=Preparando para instalar [name] en tu ordenador. 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=Programa de instalación no puede continuar. Por favor, haz clic en 'Cancelar' para salir. 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=Instalando 
InstallingLabel=Espera mientras el programa de instalación acabe de instalar [name] en tu ordenador. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Finalizando la instalación de [name] 
FinishedLabelNoIcons=Se ha terminado de instalar [name] en tu equipo. 
FinishedLabel=La instalación de [name] en tu equipo ha terminado. Puedes iniciar el programa usando los accesos directos. 
ClickFinish=Haz clic en 'Finalizar' para salir de la instalación. 
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
AbortRetryIgnoreCancel=Cancelar instalación 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=Extrayendo archivos... 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=Finalizando instalación... 
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
ConfirmUninstall=Por favor, confirma que deseas eliminar %1 y todos sus componentes. 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=Por favor, espera mientras el %1 se elimine de tu equipo. 
UninstalledAll=%1 fue eliminado con éxito de tu equipo. 
UninstalledMost=La desinstalación de %1 está completa.%n%nAlgunos elementos no pudieron ser eliminados pero se pueden eliminar manualmente. 
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
CreateDesktopIcon=Crear acceso directo en el escritorio 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=%1 en la Web 
UninstallProgram=Desinstalar %1 
LaunchProgram=Iniciar %1 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=Hay una instalación anterior de Kolibri en este dispositivo. ¿Deseas actualizarla? 
UpgradeDelMsg=Si decides hacer una instalación nueva y no actualizar, perderás todos los datos existentes. Por favor, confirma que deseas continuar con la nueva instalación. 
InstallPythonMsg=Es necesario tener Python 3.6+ instalado para poder ejecutar Kolibri. Asistente de instalación no pudo encontrar Python en su sistema y ahora procederá a instalarlo. Haz clic en 'Sí' para confirmar y continuar con la instalación. 
InstallPythonErrMsg=Advertencia: Kolibri necesita Python para funcionar. Haz clic en 'Aceptar' para volver e instalar Python, o 'Cancelar' para salir del instalador de Kolibri 
SetupKolibriErrMsg=Error crítico. No se han podido instalar las dependencias. Número de error: 
KolibriInstallFailed=Algo salió mal durante la instalación de Kolibri. Se puede encontrar%ninformación adicional en el archivo de registro: 
SetupWizardMsg=Asistente de instalación está copiando los archivos. Esto puede tomar un tiempo, por favor espera... 
LaunchKolibri=Iniciar Kolibri 
KolibriSupportLink=Foro de la comunidad 
KolibriHomePage=Página web 
KolibriDocs=Documentación 
FileNotFound= no encontrado. 
Needhelp=Para obtener ayuda en línea, por favor visita el nuestro foro de la comunidad: 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=¿Deseas eliminar también todos los datos asociados con Kolibri? 
UninstallKolibriDataLine2=Esto eliminará permanentemente todos los canales de contenido descargados y la base de datos de los usuarios. 
UninstallKolibriDataLine3=Esta acción no se puede deshacer. 
UninstallKolibriPath=Ubicación de datos: 
