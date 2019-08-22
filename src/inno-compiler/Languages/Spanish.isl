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
SetupAppTitle=ConfiguraciÃ³n 
SetupWindowTitle=ConfiguraciÃ³n - %1 
UninstallAppTitle=Desinstalar 
UninstallAppFullTitle=%1 Desinstalar 

; *** Misc. common
InformationTitle=InformaciÃ³n 
ConfirmTitle=Confirmar 
ErrorTitle=Error 

; *** SetupLdr messages
SetupLdrStartupMessage=Esto instalarÃ¡ %1. Â¿Desea continuar? 
LdrCannotCreateTemp=No se puede crear un archivo temporal. InstalaciÃ³n abortada 
LdrCannotExecTemp=No se puede ejecutar archivo en el directorio temporal. InstalaciÃ³n abortada 

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3 
SetupFileMissing=No se encuentra el archivo %1 en el directorio de instalaciÃ³n. Por favor corrija el problema u consiga una nueva copia del programa. 
SetupFileCorrupt=Los archivos de instalaciÃ³n estÃ¡n daÃ±ados. Por favor obtenga una nueva copia del programa. 
SetupFileCorruptOrWrongVer=Los archivos de instalaciÃ³n estÃ¡n daÃ±ados o son incompatibles con esta versiÃ³n de la instalaciÃ³n. Por favor corrija el problema u obtenega una nueva copia del programa. 
InvalidParameter=Se ha pasado un parÃ¡metro no vÃ¡lido en la lÃ­nea de comando:%n%n%1 
SetupAlreadyRunning=La instalaciÃ³n ya se estÃ¡ ejecutando. 
WindowsVersionNotSupported=Este programa no es compatible con la versiÃ³n de Windows de su ordenador. 
WindowsServicePackRequired=Este programa requiere %1 Service Pack %2 o posterior. 
NotOnThisPlatform=Este programa no se ejecutarÃ¡ en %1. 
OnlyOnThisPlatform=Este programa se debe ejecutar en %1. 
OnlyOnTheseArchitectures=Este programa sÃ³lo se puede instalar en versiones de Windows diseÃ±adas para las siguientes arquitecturas de procesador:%n%n%1 
MissingWOW64APIs=La versiÃ³n de Windows que estÃ¡ ejecutando no incluye funcionalidad requerida por la instalaciÃ³n para realizar una instalaciÃ³n de 64 bits. Para corregir este problema, instale Service Pack %1. 
WinVersionTooLowError=Este programa requiere %1 versiÃ³n %2 o posterior. 
WinVersionTooHighError=Este programa no puede instalarse en %1 versiÃ³n %2 o posterior. 
AdminPrivilegesRequired=Tiene que iniciar la sesiÃ³n como administrador para instalar este programa. 
PowerUserPrivilegesRequired=Tiene que iniciar la sesiÃ³n como administrador o miembro del grupo Power Users para instalar este programa. 
SetupAppRunningError=InstalaciÃ³n ha detectado que %1 estÃ¡ running.%n%nPlease cerca todas las instancias de la misma, luego haga clic en Aceptar para continuar o cancelaciÃ³n para salir. 
UninstallAppRunningError=Desinstalar ha detectado que %1 estÃ¡ running.%n%nPlease cerca todas las instancias de la misma, luego haga clic en Aceptar para continuar o Cancelar para salir. 

; *** Misc. errors
ErrorCreatingDir=InstalaciÃ³n no pudo crear el directorio "%1"
ErrorTooManyFilesInDir=Unable to create a file in the directory "%1" because it contains too many files

; *** Setup common messages
ExitSetupTitle=Salir de la instalaciÃ³n 
ExitSetupMessage=Programa de instalaciÃ³n no estÃ¡ completa. Â¿Si sale ahora, el programa no serÃ¡ installed.%n%nPuede ejecutar la instalaciÃ³n nuevamente en otro momento para completarla.%n%nÂ¿Salir? 
AboutSetupMenuItem=&Acerca de la instalaciÃ³n... 
AboutSetupTitle=Acerca del instalador 
AboutSetupMessage=%1 versiÃ³n %2%n%3%n%n%1 home page: %n%4 
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &Volver 
ButtonNext=&Siguiente > 
ButtonInstall=&Instalar 
ButtonOK=Aceptar 
ButtonCancel=Cancelar 
ButtonYes=&Si 
ButtonYesToAll=SÃ­ a &todo 
ButtonNo=&No 
ButtonNoToAll=N&o a todo 
ButtonFinish=&Finalizar 
ButtonBrowse=&Examinar... 
ButtonWizardBrowse=E&xaminar... 
ButtonNewFolder=&Crear nueva carpeta 

; *** "Select Language" dialog messages
SelectLanguageTitle=Seleccionar idioma de configuraciÃ³n 
SelectLanguageLabel=Seleccione el idioma a utilizar durante la instalaciÃ³n: 

; *** Common wizard text
ClickNext=Haga clic en siguiente para continuar o cancelar para salir de la instalaciÃ³n. 
BeveledLabel=
BrowseDialogTitle=Explorar carpetas 
BrowseDialogLabel=Seleccione una carpeta en la lista de abajo, luego haga clic en Aceptar. 
NewFolderName=Nueva carpeta 

; *** "Welcome" wizard page
WelcomeLabel1=Bienvenido a la [name] Asistente de configuraciÃ³n 
WelcomeLabel2=Este se instala [nombre/ver] en su computer.%n%nIt recomienda que cierre todas las aplicaciones antes de continuar. 

; *** "Password" wizard page
WizardPassword=ContraseÃ±a 
PasswordLabel1=Esta instalaciÃ³n estÃ¡ protegida por contraseÃ±a. 
PasswordLabel3=Proporcionar la contraseÃ±a y, a continuaciÃ³n, haga clic en siguiente para continuar. Las contraseÃ±as distinguen mayÃºsculas de minÃºsculas. 
PasswordEditLabel=&ContraseÃ±a: 
IncorrectPassword=La contraseÃ±a introducida no es correcta. Por favor, intÃ©ntelo de nuevo. 

; *** "License Agreement" wizard page
WizardLicense=Acuerdo de licencia 
LicenseLabel=Por favor lea la siguiente informaciÃ³n importante antes de continuar. 
LicenseLabel3=Por favor lea el siguiente contrato de licencia. Debe aceptar los tÃ©rminos de este acuerdo antes de continuar con la instalaciÃ³n. 
LicenseAccepted=SÃ­, &acepto el acuerdo 
LicenseNotAccepted=&No, no acepto el acuerdo 

; *** "Information" wizard pages
WizardInfoBefore=InformaciÃ³n 
InfoBeforeLabel=Por favor lea la siguiente informaciÃ³n importante antes de continuar. 
InfoBeforeClickLabel=Cuando estÃ©s listo para continuar con la instalaciÃ³n, haga clic en siguiente. 
WizardInfoAfter=InformaciÃ³n 
InfoAfterLabel=Por favor lea la siguiente informaciÃ³n importante antes de continuar. 
InfoAfterClickLabel=Cuando estÃ©s listo para continuar con la instalaciÃ³n, haga clic en siguiente. 

; *** "User Information" wizard page
WizardUserInfo=InformaciÃ³n del usuario 
UserInfoDesc=Por favor, introduzca la informaciÃ³n obligatoria. 
UserInfoName=&Nombre de usuario: 
UserInfoOrg=&OrganizaciÃ³n: 
UserInfoSerial=&NÃºmero de serie: 
UserInfoNameRequired=Debe escribir un nombre. 

; *** "Select Destination Location" wizard page
WizardSelectDir=Seleccionar ubicaciÃ³n de destino 
SelectDirDesc=Â¿DÃ³nde se debe instalar el [name]? 
SelectDirLabel3=Programa de instalaciÃ³n instalarÃ¡ [name] en la carpeta siguiente. 
SelectDirBrowseLabel=Para continuar, haga clic en siguiente. Si desea seleccionar una carpeta diferente, haga clic en examinar. 
DiskSpaceMBLabel=Por lo menos [mb] MB de espacio libre en disco se necesita. 
CannotInstallToNetworkDrive=Programa de instalaciÃ³n no puede instalar a una unidad de red. 
CannotInstallToUNCPath=Programa de instalaciÃ³n no puede instalar a una ruta UNC. 
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=La unidad o recurso compartido UNC seleccionada no existe o no es accesible. Por favor seleccione otro. 
DiskSpaceWarningTitle=No hay suficiente espacio en disco 
DiskSpaceWarning=Â¿Programa de instalaciÃ³n requiere menos %1 KB de espacio libre para instalar, pero la unidad seleccionada sÃ³lo tiene %2 KB available.%n%nDo desea continuar de todos modos? 
DirNameTooLong=El nombre de la carpeta o ruta es demasiado larga. 
InvalidDirName=El nombre de carpeta no es vÃ¡lido. 
BadDirName32=Nombres de carpeta no pueden incluir cualquiera de los siguientes caracteres:%n%n%1 
DirExistsTitle=Carpeta existe 
DirExists=Existe la carpeta:%n%n%1%n%nalready. Â¿Desea instalar de todas formas a esa carpeta? 
DirDoesntExistTitle=Carpeta no existe 
DirDoesntExist=No existe la carpeta:%n%n%1%n%ndoes. Â¿Desea crear la carpeta? 

; *** "Select Components" wizard page
WizardSelectComponents=Seleccione los componentes 
SelectComponentsDesc=Â¿Los componentes que deben instalarse? 
SelectComponentsLabel2=Seleccione los componentes que desea instalar; Desactive los componentes que no desea instalar. Haga clic en siguiente cuando estÃ© listo para continuar. 
FullInstallation=InstalaciÃ³n completa 
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=InstalaciÃ³n compacta 
CustomInstallation=InstalaciÃ³n personalizada 
NoUninstallWarningTitle=Existen componentes 
NoUninstallWarning=Programa de instalaciÃ³n ha detectado que los siguientes componentes ya estÃ¡n instalados en su computadora:%n%n%1%n%nDeselecting que estos componentes no desinstalaciÃ³n them.%n%nWould que quieres seguir Â¿de todos modos? 
ComponentSize1=%1 KB 
ComponentSize2=%1 MB 
ComponentsDiskSpaceMBLabel=SelecciÃ³n actual requiere por lo menos [mb] MB de espacio en disco. 

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Seleccionar tareas adicionales 
SelectTasksDesc=Â¿Que tareas adicionales deben realizarse? 
SelectTasksLabel2=Seleccione las tareas adicionales usted como configuraciÃ³n para llevar a cabo durante la instalaciÃ³n de [name], a continuaciÃ³n, haga clic en siguiente. 

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Seleccione carpeta del menÃº Inicio 
SelectStartMenuFolderDesc=Â¿DÃ³nde debe colocar instalaciÃ³n accesos directos del programa? 
SelectStartMenuFolderLabel3=Programa de instalaciÃ³n crearÃ¡ accesos directos del programa en la siguiente carpeta del menÃº Inicio. 
SelectStartMenuFolderBrowseLabel=Para continuar, haga clic en siguiente. Si desea seleccionar una carpeta diferente, haga clic en examinar. 
MustEnterGroupName=Debe introducir un nombre de carpeta. 
GroupNameTooLong=El nombre de la carpeta o ruta es demasiado larga. 
InvalidGroupName=El nombre de carpeta no es vÃ¡lido. 
BadGroupName=El nombre de carpeta no puede incluir cualquiera de los siguientes caracteres:%n%n%1 
NoProgramGroupCheck2=&No crear una carpeta de menÃº Inicio 

; *** "Ready to Install" wizard page
WizardReady=Listo para instalar 
ReadyLabel1=ConfiguraciÃ³n estÃ¡ ahora lista para comenzar a instalar [name] en tu ordenador. 
ReadyLabel2a=Haga clic en instalar para continuar con la instalaciÃ³n, o haga clic en atrÃ¡s revisar o cambiar cualquier configuraciÃ³n. 
ReadyLabel2b=Haga clic en instalar para continuar con la instalaciÃ³n. 
ReadyMemoUserInfo=InformaciÃ³n del usuario: 
ReadyMemoDir=UbicaciÃ³n de destino: 
ReadyMemoType=Tipo de instalaciÃ³n: 
ReadyMemoComponents=Componentes seleccionados: 
ReadyMemoGroup=Carpeta menÃº Inicio: 
ReadyMemoTasks=Tareas adicionales: 

; *** "Preparing to Install" wizard page
WizardPreparing=Preparando para instalar 
PreparingDesc=ConfiguraciÃ³n se estÃ¡ preparando para instalar [name] en tu ordenador. 
PreviousInstallNotCompleted=La instalaciÃ³n/desinstalaciÃ³n de un programa anterior no se completÃ³. TendrÃ¡ que reiniciar el equipo para completar ese installation.%n%nDespues de reiniciar el equipo, ejecutar la instalaciÃ³n para completar la instalaciÃ³n de [name]. 
CannotContinue=Programa de instalaciÃ³n no puede continuar. Por favor, haga clic en Cancelar para salir. 
ApplicationsFound=Las siguientes aplicaciones estÃ¡n utilizando archivos que necesitan ser actualizados por la instalaciÃ³n. Se recomienda que permita configuraciÃ³n automÃ¡ticamente cerrar estas aplicaciones. 
ApplicationsFound2=Las siguientes aplicaciones estÃ¡n utilizando archivos que necesitan ser actualizados por la instalaciÃ³n. Se recomienda que permita configuraciÃ³n automÃ¡ticamente cerrar estas aplicaciones. Una vez finalizada la instalaciÃ³n configuraciÃ³n intentarÃ¡ reiniciar las aplicaciones. 
CloseApplications=&Cerrar automÃ¡ticamente las aplicaciones 
DontCloseApplications=&No cerrar automÃ¡ticamente las aplicaciones 
ErrorCloseApplications=InstalaciÃ³n no pudo cerrar automÃ¡ticamente todas las aplicaciones. Se recomienda que cierre todas las aplicaciones con archivos que necesitan ser actualizados por la instalaciÃ³n antes de continuar. 

; *** "Installing" wizard page
WizardInstalling=Instalando 
InstallingLabel=Espere mientras el programa de instalaciÃ³n instala [name] en su computadora. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Completar al asistente de configuraciÃ³n de [name] 
FinishedLabelNoIcons=Setup ha terminado de instalar [name] en tu equipo. 
FinishedLabel=Setup ha terminado de instalar [name] en tu equipo. La aplicaciÃ³n puede ser lanzada seleccionando los iconos instalados. 
ClickFinish=Haga clic en finalizar para salir de la instalaciÃ³n. 
FinishedRestartLabel=Para completar la instalaciÃ³n de [name], programa de instalaciÃ³n debe reiniciar el equipo. Â¿Desea reiniciar ahora? 
FinishedRestartMessage=Â¿Para completar la instalaciÃ³n de [name], programa de instalaciÃ³n debe reiniciar su computer.%n%nWould que quieres reiniciar ahora? 
ShowReadmeCheck=SÃ­, me gustarÃ­a ver el archivo README 
YesRadio=&SÃ­, reiniciar el equipo ahora 
NoRadio=&No, reiniciarÃ© el equipo mÃ¡s tarde 
; used for example as 'Run MyProg.exe'
RunEntryExec=Ejecutar %1 
; used for example as 'View Readme.txt'
RunEntryShellExec=Ver %1 

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=Programa de instalaciÃ³n necesita el siguiente disco 
SelectDiskLabel2=Por favor inserte el disco %1 y haga clic en OK.%n%nIf los archivos en este disco pueden encontrarse en una carpeta distinta de la que se muestra a continuaciÃ³n, introduzca la ruta correcta o haga clic en examinar. 
PathLabel=&Ruta: 
FileNotInDir2=The file "%1" could not be located in "%2". Please insert the correct disk or select another folder.
SelectDirectoryLabel=Por favor, especifique la ubicaciÃ³n del siguiente disco. 

; *** Installation phase messages
SetupAborted=ConfiguraciÃ³n fue no completed.%n%nPlease correctamente el problema y vuelva a ejecutar Setup. 
EntryAbortRetryIgnore=Haga clic en Reintentar para intentarlo de nuevo, ignorar para proceder de todas formas, o abortar para cancelar la instalaciÃ³n. 

; *** Installation status messages
StatusClosingApplications=Cerrar aplicaciones... 
StatusCreateDirs=CreaciÃ³n de directorios... 
StatusExtractFiles=Extrayendo archivos... 
StatusCreateIcons=CreaciÃ³n de accesos directos... 
StatusCreateIniEntries=CreaciÃ³n de entradas INI... 
StatusCreateRegistryEntries=Crear entradas de registro... 
StatusRegisterFiles=Registro de archivos... 
StatusSavingUninstall=Ahorro de desinstalar informaciÃ³n... 
StatusRunProgram=Terminando la instalaciÃ³n de... 
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
FileAbortRetryIgnore=Haga clic en Reintentar para intentarlo de nuevo, ignorar para omitir este archivo (no recomendado), o abortar para cancelar la instalaciÃ³n. 
FileAbortRetryIgnore2=Haga clic en Reintentar para intentarlo de nuevo, ignorar para proceder de todos modos (no recomendado) o abortar para cancelar la instalaciÃ³n. 
SourceIsCorrupted=El archivo de origen estÃ¡ daÃ±ado 
SourceDoesntExist=The source file "%1" does not exist
ExistingFileReadOnly=El archivo existente estÃ¡ marcado como read-only.%n%nClick Reintentar para quitar el atributo de sÃ³lo lectura y probar nuevamente, ignorar para omitir este archivo o abortar para cancelar la instalaciÃ³n. 
ErrorReadingExistingDest=Error al intentar leer el archivo existente: 
FileExists=Â¿El archivo ya exists.%n%nWould como configurar para sobrescribirlo? 
ExistingFileNewer=El archivo existente es mÃ¡s reciente que el programa de instalaciÃ³n estÃ¡ intentando instalar. Â¿Se recomienda que usted mantenga el file.%n%nDo existente que desea conservar el archivo existente? 
ErrorChangingAttr=Se ha producido un error al intentar cambiar los atributos del archivo existente: 
ErrorCreatingTemp=Se ha producido un error al intentar crear un archivo en el directorio de destino: 
ErrorReadingSource=Error al intentar leer el archivo de origen: 
ErrorCopying=Se ha producido un error al intentar copiar un archivo: 
ErrorReplacingExistingFile=Se ha producido un error al intentar reemplazar el archivo existente: 
ErrorRestartReplace=RestartReplace fracasado: 
ErrorRenamingTemp=Se ha producido un error al intentar renombrar un archivo en el directorio de destino: 
ErrorRegisterServer=No se pudo registrar el DLL/OCX: %1 
ErrorRegSvr32Failed=RegSvr32 fallÃ³ con cÃ³digo de salida %1 
ErrorRegisterTypeLib=No se pudo registrar la biblioteca de tipos: %1 

; *** Post-installation errors
ErrorOpeningReadme=Se ha producido un error al intentar abrir el archivo LÃ©ame. 
ErrorRestartingComputer=InstalaciÃ³n no pudo reiniciar la computadora. Por favor hacer esto manualmente. 

; *** Uninstaller messages
UninstallNotFound=File "%1" does not exist. Cannot uninstall.
UninstallOpenError=File "%1" could not be opened. Cannot uninstall
UninstallUnsupportedVer=The uninstall log file "%1" is in a format not recognized by this version of the uninstaller. Cannot uninstall
UninstallUnknownEntry=Una entrada desconocida (%1) fue encontrada en el registro de desinstalaciÃ³n 
ConfirmUninstall=Are you sure you would like to remove Kolibri from your computer?
UninstallOnlyOnWin64=Esta instalaciÃ³n sÃ³lo puede ser desinstalada en Windows de 64 bits. 
OnlyAdminCanUninstall=Esta instalaciÃ³n sÃ³lo puede ser desinstalada por un usuario con privilegios administrativos. 
UninstallStatusLabel=Por favor, espere mientras que %1 es quitado de su equipo. 
UninstalledAll=Kolibri has been successfully removed from your computer.
UninstalledMost=%1 desinstalar complete.%n%nSome elementos no podrÃ­an ser quitados. Estos pueden ser removidos manualmente. 
UninstalledAndNeedsRestart=Â¿Para completar la desinstalaciÃ³n de %1, su computadora debe ser restarted.%n%nWould que quieres reiniciar ahora? 
UninstallDataCorrupted="%1" file is corrupted. Cannot uninstall

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Â¿Quitar archivo compartido? 
ConfirmDeleteSharedFile2=El sistema indica que el siguiente archivo compartido ya no estÃ¡ en uso por algÃºn programa. Te gustarÃ­a desinstalar eliminar este archivo compartido?%n%nIf los programas son aÃºn usando este archivo y se quita, esos programas pueden no funcionar correctamente. Si no estÃ¡ seguro, elija no. Dejando el archivo en su sistema no causa ningÃºn daÃ±o. 
SharedFileNameLabel=Nombre de archivo: 
SharedFileLocationLabel=UbicaciÃ³n: 
WizardUninstalling=Estado de la desinstalaciÃ³n 
StatusUninstalling=DesinstalaciÃ³n de %1... 

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Instalando %1. 
ShutdownBlockReasonUninstallingApp=Desinstalando %1. 

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 versiÃ³n %2 
AdditionalIcons=Iconos adicionales: 
CreateDesktopIcon=Crear icono en el &escritorio 
CreateQuickLaunchIcon=Crear icono de &inicio rÃ¡pido 
ProgramOnTheWeb=%1 en la Web 
UninstallProgram=Desinstalar %1 
LaunchProgram=Iniciar %1 
AssocFileExtension=& %1 asociado con la extensiÃ³n %2 
AssocingFileExtension=Asociar %1 con la extensiÃ³n %2... 
AutoStartProgramGroupDescription=Arranque: 
AutoStartProgram=%1 se inicia automÃ¡ticamente 
AddonHostProgramNotFound=Â¿%1 no podÃ­a ser ubicado en la carpeta selected.%n%nDo que desea continuar de todos modos? 

; Kolibri Windows Installer custom messages
UpgradeMsg=Hemos detectado una instalaciÃ³n existente de Kolibri; Â¿quieres actualizar?
UpgradeDelMsg=InstalaciÃ³n fresca borrarÃ¡ todos sus datos existentes; Â¿Esto es lo que realmente quieres hacer?
InstallPythonMsg=La versiÃ³n 3.4+ de Python es necesaria para instalar Kolibri en Windows. Â¿Desea instalar Python 3.4.3, antes de continuar con la instalaciÃ³n de Kolibri?
InstallPythonErrMsg=Advertencia - Kolibri necesita Python para funcionar. Haga clic en Aceptar para volver e instalar Python, o cancelar para salir del instalador de Kolibri
SetupKolibriErrMsg=Critical error. Dependencies have failed to install. Error Number:
KolibriInstallFailed=InstalaciÃ³n de Kolibri ha fallado. Instalador de Kolibri encontrÃ³ un errorinstallation process%n%n
SetupWizardMsg=Asistente de instalaciÃ³n estÃ¡ copiando los archivos. Esto puede tomar un tiempo, por favor espere...
LaunchKolibri=Iniciar Kolibri
KolibriSupportLink=Community forums
KolibriHomePage=Homepage
KolibriDocs=Documentation
FileNotFound= was not found.
Needhelp=To get help online, please visit our community forum:
CommunityLink=https://community.learningequality.org
UninstallKolibriDataLine1=Would you also like to delete all the data associated with Kolibri?
UninstallKolibriDataLine2=This will permanently remove all downloaded content channels and the user interaction data.
UninstallKolibriDataLine3=This action cannot be undone.
UninstallKolibriPath=Data location: