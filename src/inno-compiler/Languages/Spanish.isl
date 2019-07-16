; *** Inno Setup version 5.5.3+ English messages ***
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
SetupAppTitle=Configuración 
SetupWindowTitle=Configuración - %1 
UninstallAppTitle=Desinstalar 
UninstallAppFullTitle=%1 Desinstalar 

; *** Misc. common
InformationTitle=Información 
ConfirmTitle=Confirmar 
ErrorTitle=Error 

; *** SetupLdr messages
SetupLdrStartupMessage=Esto instalará %1. ¿Desea continuar? 
LdrCannotCreateTemp=No se puede crear un archivo temporal. Instalación abortada 
LdrCannotExecTemp=No se puede ejecutar archivo en el directorio temporal. Instalación abortada 

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3 
SetupFileMissing=No se encuentra el archivo %1 en el directorio de instalación. Por favor corrija el problema u consiga una nueva copia del programa. 
SetupFileCorrupt=Los archivos de instalación están dañados. Por favor obtenga una nueva copia del programa. 
SetupFileCorruptOrWrongVer=Los archivos de instalación están dañados o son incompatibles con esta versión de la instalación. Por favor corrija el problema u obtenega una nueva copia del programa. 
InvalidParameter=Se ha pasado un parámetro no válido en la línea de comando:%n%n%1 
SetupAlreadyRunning=La instalación ya se está ejecutando. 
WindowsVersionNotSupported=Este programa no es compatible con la versión de Windows de su ordenador. 
WindowsServicePackRequired=Este programa requiere %1 Service Pack %2 o posterior. 
NotOnThisPlatform=Este programa no se ejecutará en %1. 
OnlyOnThisPlatform=Este programa se debe ejecutar en %1. 
OnlyOnTheseArchitectures=Este programa sólo se puede instalar en versiones de Windows diseñadas para las siguientes arquitecturas de procesador:%n%n%1 
MissingWOW64APIs=La versión de Windows que está ejecutando no incluye funcionalidad requerida por la instalación para realizar una instalación de 64 bits. Para corregir este problema, instale Service Pack %1. 
WinVersionTooLowError=Este programa requiere %1 versión %2 o posterior. 
WinVersionTooHighError=Este programa no puede instalarse en %1 versión %2 o posterior. 
AdminPrivilegesRequired=Tiene que iniciar la sesión como administrador para instalar este programa. 
PowerUserPrivilegesRequired=Tiene que iniciar la sesión como administrador o miembro del grupo Power Users para instalar este programa. 
SetupAppRunningError=Instalación ha detectado que %1 está running.%n%nPlease cerca todas las instancias de la misma, luego haga clic en Aceptar para continuar o cancelación para salir. 
UninstallAppRunningError=Desinstalar ha detectado que %1 está running.%n%nPlease cerca todas las instancias de la misma, luego haga clic en Aceptar para continuar o Cancelar para salir. 

; *** Misc. errors
ErrorCreatingDir=Instalación no pudo crear el directorio "%1"
ErrorTooManyFilesInDir=Unable to create a file in the directory "%1" because it contains too many files

; *** Setup common messages
ExitSetupTitle=Salir de la instalación 
ExitSetupMessage=Programa de instalación no está completa. ¿Si sale ahora, el programa no será installed.%n%nPuede ejecutar la instalación nuevamente en otro momento para completarla.%n%n¿Salir? 
AboutSetupMenuItem=&Acerca de la instalación... 
AboutSetupTitle=Acerca del instalador 
AboutSetupMessage=%1 versión %2%n%3%n%n%1 home page: %n%4 
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &Volver 
ButtonNext=&Siguiente > 
ButtonInstall=&Instalar 
ButtonOK=Aceptar 
ButtonCancel=Cancelar 
ButtonYes=&Si 
ButtonYesToAll=Sí a &todo 
ButtonNo=&No 
ButtonNoToAll=N&o a todo 
ButtonFinish=&Finalizar 
ButtonBrowse=&Examinar... 
ButtonWizardBrowse=E&xaminar... 
ButtonNewFolder=&Crear nueva carpeta 

; *** "Select Language" dialog messages
SelectLanguageTitle=Seleccionar idioma de configuración 
SelectLanguageLabel=Seleccione el idioma a utilizar durante la instalación: 

; *** Common wizard text
ClickNext=Haga clic en siguiente para continuar o cancelar para salir de la instalación. 
BeveledLabel=
BrowseDialogTitle=Explorar carpetas 
BrowseDialogLabel=Seleccione una carpeta en la lista de abajo, luego haga clic en Aceptar. 
NewFolderName=Nueva carpeta 

; *** "Welcome" wizard page
WelcomeLabel1=Bienvenido a la [name] Asistente de configuración 
WelcomeLabel2=Este se instala [nombre/ver] en su computer.%n%nIt recomienda que cierre todas las aplicaciones antes de continuar. 

; *** "Password" wizard page
WizardPassword=Contraseña 
PasswordLabel1=Esta instalación está protegida por contraseña. 
PasswordLabel3=Proporcionar la contraseña y, a continuación, haga clic en siguiente para continuar. Las contraseñas distinguen mayúsculas de minúsculas. 
PasswordEditLabel=&Contraseña: 
IncorrectPassword=La contraseña introducida no es correcta. Por favor, inténtelo de nuevo. 

; *** "License Agreement" wizard page
WizardLicense=Acuerdo de licencia 
LicenseLabel=Por favor lea la siguiente información importante antes de continuar. 
LicenseLabel3=Por favor lea el siguiente contrato de licencia. Debe aceptar los términos de este acuerdo antes de continuar con la instalación. 
LicenseAccepted=Sí, &acepto el acuerdo 
LicenseNotAccepted=&No, no acepto el acuerdo 

; *** "Information" wizard pages
WizardInfoBefore=Información 
InfoBeforeLabel=Por favor lea la siguiente información importante antes de continuar. 
InfoBeforeClickLabel=Cuando estés listo para continuar con la instalación, haga clic en siguiente. 
WizardInfoAfter=Información 
InfoAfterLabel=Por favor lea la siguiente información importante antes de continuar. 
InfoAfterClickLabel=Cuando estés listo para continuar con la instalación, haga clic en siguiente. 

; *** "User Information" wizard page
WizardUserInfo=Información del usuario 
UserInfoDesc=Por favor, introduzca la información obligatoria. 
UserInfoName=&Nombre de usuario: 
UserInfoOrg=&Organización: 
UserInfoSerial=&Número de serie: 
UserInfoNameRequired=Debe escribir un nombre. 

; *** "Select Destination Location" wizard page
WizardSelectDir=Seleccionar ubicación de destino 
SelectDirDesc=¿Dónde se debe instalar el [name]? 
SelectDirLabel3=Programa de instalación instalará [name] en la carpeta siguiente. 
SelectDirBrowseLabel=Para continuar, haga clic en siguiente. Si desea seleccionar una carpeta diferente, haga clic en examinar. 
DiskSpaceMBLabel=Por lo menos [mb] MB de espacio libre en disco se necesita. 
CannotInstallToNetworkDrive=Programa de instalación no puede instalar a una unidad de red. 
CannotInstallToUNCPath=Programa de instalación no puede instalar a una ruta UNC. 
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=La unidad o recurso compartido UNC seleccionada no existe o no es accesible. Por favor seleccione otro. 
DiskSpaceWarningTitle=No hay suficiente espacio en disco 
DiskSpaceWarning=¿Programa de instalación requiere menos %1 KB de espacio libre para instalar, pero la unidad seleccionada sólo tiene %2 KB available.%n%nDo desea continuar de todos modos? 
DirNameTooLong=El nombre de la carpeta o ruta es demasiado larga. 
InvalidDirName=El nombre de carpeta no es válido. 
BadDirName32=Nombres de carpeta no pueden incluir cualquiera de los siguientes caracteres:%n%n%1 
DirExistsTitle=Carpeta existe 
DirExists=Existe la carpeta:%n%n%1%n%nalready. ¿Desea instalar de todas formas a esa carpeta? 
DirDoesntExistTitle=Carpeta no existe 
DirDoesntExist=No existe la carpeta:%n%n%1%n%ndoes. ¿Desea crear la carpeta? 

; *** "Select Components" wizard page
WizardSelectComponents=Seleccione los componentes 
SelectComponentsDesc=¿Los componentes que deben instalarse? 
SelectComponentsLabel2=Seleccione los componentes que desea instalar; Desactive los componentes que no desea instalar. Haga clic en siguiente cuando esté listo para continuar. 
FullInstallation=Instalación completa 
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Instalación compacta 
CustomInstallation=Instalación personalizada 
NoUninstallWarningTitle=Existen componentes 
NoUninstallWarning=Programa de instalación ha detectado que los siguientes componentes ya están instalados en su computadora:%n%n%1%n%nDeselecting que estos componentes no desinstalación them.%n%nWould que quieres seguir ¿de todos modos? 
ComponentSize1=%1 KB 
ComponentSize2=%1 MB 
ComponentsDiskSpaceMBLabel=Selección actual requiere por lo menos [mb] MB de espacio en disco. 

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Seleccionar tareas adicionales 
SelectTasksDesc=¿Que tareas adicionales deben realizarse? 
SelectTasksLabel2=Seleccione las tareas adicionales usted como configuración para llevar a cabo durante la instalación de [name], a continuación, haga clic en siguiente. 

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Seleccione carpeta del menú Inicio 
SelectStartMenuFolderDesc=¿Dónde debe colocar instalación accesos directos del programa? 
SelectStartMenuFolderLabel3=Programa de instalación creará accesos directos del programa en la siguiente carpeta del menú Inicio. 
SelectStartMenuFolderBrowseLabel=Para continuar, haga clic en siguiente. Si desea seleccionar una carpeta diferente, haga clic en examinar. 
MustEnterGroupName=Debe introducir un nombre de carpeta. 
GroupNameTooLong=El nombre de la carpeta o ruta es demasiado larga. 
InvalidGroupName=El nombre de carpeta no es válido. 
BadGroupName=El nombre de carpeta no puede incluir cualquiera de los siguientes caracteres:%n%n%1 
NoProgramGroupCheck2=&No crear una carpeta de menú Inicio 

; *** "Ready to Install" wizard page
WizardReady=Listo para instalar 
ReadyLabel1=Configuración está ahora lista para comenzar a instalar [name] en tu ordenador. 
ReadyLabel2a=Haga clic en instalar para continuar con la instalación, o haga clic en atrás revisar o cambiar cualquier configuración. 
ReadyLabel2b=Haga clic en instalar para continuar con la instalación. 
ReadyMemoUserInfo=Información del usuario: 
ReadyMemoDir=Ubicación de destino: 
ReadyMemoType=Tipo de instalación: 
ReadyMemoComponents=Componentes seleccionados: 
ReadyMemoGroup=Carpeta menú Inicio: 
ReadyMemoTasks=Tareas adicionales: 

; *** "Preparing to Install" wizard page
WizardPreparing=Preparando para instalar 
PreparingDesc=Configuración se está preparando para instalar [name] en tu ordenador. 
PreviousInstallNotCompleted=La instalación/desinstalación de un programa anterior no se completó. Tendrá que reiniciar el equipo para completar ese installation.%n%nDespues de reiniciar el equipo, ejecutar la instalación para completar la instalación de [name]. 
CannotContinue=Programa de instalación no puede continuar. Por favor, haga clic en Cancelar para salir. 
ApplicationsFound=Las siguientes aplicaciones están utilizando archivos que necesitan ser actualizados por la instalación. Se recomienda que permita configuración automáticamente cerrar estas aplicaciones. 
ApplicationsFound2=Las siguientes aplicaciones están utilizando archivos que necesitan ser actualizados por la instalación. Se recomienda que permita configuración automáticamente cerrar estas aplicaciones. Una vez finalizada la instalación configuración intentará reiniciar las aplicaciones. 
CloseApplications=&Cerrar automáticamente las aplicaciones 
DontCloseApplications=&No cerrar automáticamente las aplicaciones 
ErrorCloseApplications=Instalación no pudo cerrar automáticamente todas las aplicaciones. Se recomienda que cierre todas las aplicaciones con archivos que necesitan ser actualizados por la instalación antes de continuar. 

; *** "Installing" wizard page
WizardInstalling=Instalando 
InstallingLabel=Espere mientras el programa de instalación instala [name] en su computadora. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Completar al asistente de configuración de [name] 
FinishedLabelNoIcons=Setup ha terminado de instalar [name] en tu equipo. 
FinishedLabel=Setup ha terminado de instalar [name] en tu equipo. La aplicación puede ser lanzada seleccionando los iconos instalados. 
ClickFinish=Haga clic en finalizar para salir de la instalación. 
FinishedRestartLabel=Para completar la instalación de [name], programa de instalación debe reiniciar el equipo. ¿Desea reiniciar ahora? 
FinishedRestartMessage=¿Para completar la instalación de [name], programa de instalación debe reiniciar su computer.%n%nWould que quieres reiniciar ahora? 
ShowReadmeCheck=Sí, me gustaría ver el archivo README 
YesRadio=&Sí, reiniciar el equipo ahora 
NoRadio=&No, reiniciaré el equipo más tarde 
; used for example as 'Run MyProg.exe'
RunEntryExec=Ejecutar %1 
; used for example as 'View Readme.txt'
RunEntryShellExec=Ver %1 

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Programa de instalación necesita el siguiente disco 
SelectDiskLabel2=Por favor inserte el disco %1 y haga clic en OK.%n%nIf los archivos en este disco pueden encontrarse en una carpeta distinta de la que se muestra a continuación, introduzca la ruta correcta o haga clic en examinar. 
PathLabel=&Ruta: 
FileNotInDir2=The file "%1" could not be located in "%2". Please insert the correct disk or select another folder.
SelectDirectoryLabel=Por favor, especifique la ubicación del siguiente disco. 

; *** Installation phase messages
SetupAborted=Configuración fue no completed.%n%nPlease correctamente el problema y vuelva a ejecutar Setup. 
EntryAbortRetryIgnore=Haga clic en Reintentar para intentarlo de nuevo, ignorar para proceder de todas formas, o abortar para cancelar la instalación. 

; *** Installation status messages
StatusClosingApplications=Cerrar aplicaciones... 
StatusCreateDirs=Creación de directorios... 
StatusExtractFiles=Extrayendo archivos... 
StatusCreateIcons=Creación de accesos directos... 
StatusCreateIniEntries=Creación de entradas INI... 
StatusCreateRegistryEntries=Crear entradas de registro... 
StatusRegisterFiles=Registro de archivos... 
StatusSavingUninstall=Ahorro de desinstalar información... 
StatusRunProgram=Terminando la instalación de... 
StatusRestartingApplications=Reinicio de aplicaciones... 
StatusRollback=Deshaciendo cambios... 

; *** Misc. errors
ErrorInternal2=Error interno: %1 
ErrorFunctionFailedNoCode=%1 ha fallado 
ErrorFunctionFailed=%1 ha fallado; code %2 
ErrorFunctionFailedWithMessage=%1 ha fallado; code %2.%n%3 
ErrorExecutingProgram=No se puede ejecutar file:%n%1 

; *** Registry errors
ErrorRegOpenKey=Error opening registry key:%n%1\%2
ErrorRegCreateKey=Error creating registry key:%n%1\%2
ErrorRegWriteKey=Error writing to registry key:%n%1\%2

; *** INI errors
ErrorIniEntry=Error creating INI entry in file "%1".

; *** File copying errors
FileAbortRetryIgnore=Haga clic en Reintentar para intentarlo de nuevo, ignorar para omitir este archivo (no recomendado), o abortar para cancelar la instalación. 
FileAbortRetryIgnore2=Haga clic en Reintentar para intentarlo de nuevo, ignorar para proceder de todos modos (no recomendado) o abortar para cancelar la instalación. 
SourceIsCorrupted=El archivo de origen está dañado 
SourceDoesntExist=The source file "%1" does not exist
ExistingFileReadOnly=El archivo existente está marcado como read-only.%n%nClick Reintentar para quitar el atributo de sólo lectura y probar nuevamente, ignorar para omitir este archivo o abortar para cancelar la instalación. 
ErrorReadingExistingDest=Error al intentar leer el archivo existente: 
FileExists=¿El archivo ya exists.%n%nWould como configurar para sobrescribirlo? 
ExistingFileNewer=El archivo existente es más reciente que el programa de instalación está intentando instalar. ¿Se recomienda que usted mantenga el file.%n%nDo existente que desea conservar el archivo existente? 
ErrorChangingAttr=Se ha producido un error al intentar cambiar los atributos del archivo existente: 
ErrorCreatingTemp=Se ha producido un error al intentar crear un archivo en el directorio de destino: 
ErrorReadingSource=Error al intentar leer el archivo de origen: 
ErrorCopying=Se ha producido un error al intentar copiar un archivo: 
ErrorReplacingExistingFile=Se ha producido un error al intentar reemplazar el archivo existente: 
ErrorRestartReplace=RestartReplace fracasado: 
ErrorRenamingTemp=Se ha producido un error al intentar renombrar un archivo en el directorio de destino: 
ErrorRegisterServer=No se pudo registrar el DLL/OCX: %1 
ErrorRegSvr32Failed=RegSvr32 falló con código de salida %1 
ErrorRegisterTypeLib=No se pudo registrar la biblioteca de tipos: %1 

; *** Post-installation errors
ErrorOpeningReadme=Se ha producido un error al intentar abrir el archivo Léame. 
ErrorRestartingComputer=Instalación no pudo reiniciar la computadora. Por favor hacer esto manualmente. 

; *** Uninstaller messages
UninstallNotFound=File "%1" does not exist. Cannot uninstall.
UninstallOpenError=File "%1" could not be opened. Cannot uninstall
UninstallUnsupportedVer=The uninstall log file "%1" is in a format not recognized by this version of the uninstaller. Cannot uninstall
UninstallUnknownEntry=Una entrada desconocida (%1) fue encontrada en el registro de desinstalación 
ConfirmUninstall=¿Está seguro que desea eliminar %1 y todos sus componentes? 
UninstallOnlyOnWin64=Esta instalación sólo puede ser desinstalada en Windows de 64 bits. 
OnlyAdminCanUninstall=Esta instalación sólo puede ser desinstalada por un usuario con privilegios administrativos. 
UninstallStatusLabel=Por favor, espere mientras que %1 es quitado de su equipo. 
UninstalledAll=%1 fue quitado con éxito de su equipo. 
UninstalledMost=%1 desinstalar complete.%n%nSome elementos no podrían ser quitados. Estos pueden ser removidos manualmente. 
UninstalledAndNeedsRestart=¿Para completar la desinstalación de %1, su computadora debe ser restarted.%n%nWould que quieres reiniciar ahora? 
UninstallDataCorrupted="%1" file is corrupted. Cannot uninstall

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=¿Quitar archivo compartido? 
ConfirmDeleteSharedFile2=El sistema indica que el siguiente archivo compartido ya no está en uso por algún programa. Te gustaría desinstalar eliminar este archivo compartido?%n%nIf los programas son aún usando este archivo y se quita, esos programas pueden no funcionar correctamente. Si no está seguro, elija no. Dejando el archivo en su sistema no causa ningún daño. 
SharedFileNameLabel=Nombre de archivo: 
SharedFileLocationLabel=Ubicación: 
WizardUninstalling=Estado de la desinstalación 
StatusUninstalling=Desinstalación de %1... 

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Instalando %1. 
ShutdownBlockReasonUninstallingApp=Desinstalando %1. 

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 versión %2 
AdditionalIcons=Iconos adicionales: 
CreateDesktopIcon=Crear icono en el &escritorio 
CreateQuickLaunchIcon=Crear icono de &inicio rápido 
ProgramOnTheWeb=%1 en la Web 
UninstallProgram=Desinstalar %1 
LaunchProgram=Iniciar %1 
AssocFileExtension=& %1 asociado con la extensión %2 
AssocingFileExtension=Asociar %1 con la extensión %2... 
AutoStartProgramGroupDescription=Arranque: 
AutoStartProgram=%1 se inicia automáticamente 
AddonHostProgramNotFound=¿%1 no podía ser ubicado en la carpeta selected.%n%nDo que desea continuar de todos modos? 

; Kolibri Windows Installer custom messages
UpgradeMsg=Hemos detectado una instalación existente de Kolibri; ¿quieres actualizar?
UpgradeDelMsg=Instalación fresca borrará todos sus datos existentes; ¿Esto es lo que realmente quieres hacer?
InstallPythonMsg=La versión 3.4+ de Python es necesaria para instalar Kolibri en Windows. ¿Desea instalar Python 3.4.3, antes de continuar con la instalación de Kolibri?
InstallPtythonErrMsg=Advertencia - Kolibri necesita Python para funcionar. Haga clic en Aceptar para volver e instalar Python, o cancelar para salir del instalador de Kolibri
SetupKolibriErrMsg=Critical error. Dependencies have failed to install. Error Number:
KolibriInstallFailed=Instalación de Kolibri ha fallado. Instalador de Kolibri encontró un errorinstallation process%n%n
SetupWizardMsg=Asistente de instalación está copiando los archivos. Esto puede tomar un tiempo, por favor espere...
LaunchKolibri=Iniciar Kolibri
KolibriSupportLink=Community forums
KolibriHomePage=Homepage
KolibriDocs=Documentation
FileNotFound= was not found.
Needhelp=To get help online, please visit our community forum:
CommunityLink=https://community.learningequality.org