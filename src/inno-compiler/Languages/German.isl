; ******************************************************
; ***                                                ***
; *** Inno Setup version 5.5.3+ German messages      ***
; ***                                                ***
; *** Changes 5.5.3+ Author:                         ***
; ***                                                ***
; ***   Peter Stadler(Peter.Stadler@univie.ac.at)    ***
; *** Original Author:                               ***
; ***                                                ***
; ***   Michael Reitz (innosetup@assimilate.de)      ***
; ***                                                ***
; *** Contributors:                                  ***
; ***                                                ***
; ***   Roland Ruder (info@rr4u.de)                  ***
; ***   Hans Sperber (Hans.Sperber@de.bosch.com)     ***
; ***   LaughingMan (puma.d@web.de)                  ***
; ***                                                ***
; ******************************************************
;
; Diese Ãœbersetzung hÃ¤lt sich an die neue deutsche Rechtschreibung.

[LangOptions]
LanguageName=Deutsch
LanguageID=$0407
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
SetupAppTitle=Setup
SetupWindowTitle=Setup - %1
UninstallAppTitle=Entfernen
UninstallAppFullTitle=%1 entfernen

; *** Misc. common
InformationTitle=Information
ConfirmTitle=BestÃ¤tigen
ErrorTitle=Fehler

; *** SetupLdr messages
SetupLdrStartupMessage=%1 wird jetzt installiert. MÃ¶chten Sie fortfahren?
LdrCannotCreateTemp=Es konnte keine temporÃ¤re Datei erstellt werden. Das Setup wurde abgebrochen
LdrCannotExecTemp=Die Datei konnte nicht im temporÃ¤ren Ordner ausgefÃ¼hrt werden. Das Setup wurde abgebrochen

; *** Startup error messages
LastErrorMessage=%1.%n%nFehler %2: %3
SetupFileMissing=Die Datei %1 fehlt im Installations-Ordner. Bitte beheben Sie das Problem, oder besorgen Sie sich eine neue Kopie des Programms.
SetupFileCorrupt=Die Setup-Dateien sind beschÃ¤digt. Besorgen Sie sich bitte eine neue Kopie des Programms.
SetupFileCorruptOrWrongVer=Die Setup-Dateien sind beschÃ¤digt oder inkompatibel zu dieser Version des Setups. Bitte beheben Sie das Problem, oder besorgen Sie sich eine neue Kopie des Programms.
InvalidParameter=Ein ungÃ¼ltiger Paramter wurde auf der Kommandozeile Ã¼bergeben:%n%n%1
SetupAlreadyRunning=Setup lÃ¤uft bereits.
WindowsVersionNotSupported=Dieses Programm unterstÃ¼tzt die auf Ihrem Computer installierte Windows-Version nicht.
WindowsServicePackRequired=Dieses Programm benÃ¶tigt %1 Service Pack %2 oder hÃ¶her.
NotOnThisPlatform=Dieses Programm kann nicht unter %1 ausgefÃ¼hrt werden.
OnlyOnThisPlatform=Dieses Programm muss unter %1 ausgefÃ¼hrt werden.
OnlyOnTheseArchitectures=Dieses Programm kann nur auf Windows-Versionen installiert werden, die folgende Prozessor-Architekturen unterstÃ¼tzen:%n%n%1
MissingWOW64APIs=Ihre Windows-Version enthÃ¤lt nicht die Funktionen, die vom Setup fÃ¼r eine 64-bit Installation benÃ¶tigt werden. Installieren Sie bitte Service Pack %1, um dieses Problem zu beheben.
WinVersionTooLowError=Dieses Programm benÃ¶tigt %1 Version %2 oder hÃ¶her.
WinVersionTooHighError=Dieses Programm kann nicht unter %1 Version %2 oder hÃ¶her installiert werden.
AdminPrivilegesRequired=Sie mÃ¼ssen als Administrator angemeldet sein, um dieses Programm installieren zu kÃ¶nnen.
PowerUserPrivilegesRequired=Sie mÃ¼ssen als Administrator oder als Mitglied der Hauptbenutzer-Gruppe angemeldet sein, um dieses Programm installieren zu kÃ¶nnen.
SetupAppRunningError=Das Setup hat entdeckt, dass %1 zur Zeit ausgefÃ¼hrt wird.%n%nBitte schlieÃŸen Sie jetzt alle laufenden Instanzen, und klicken Sie auf "OK", um fortzufahren, oder auf "Abbrechen", um zu beenden.
UninstallAppRunningError=Die Deinstallation hat entdeckt, dass %1 zur Zeit ausgefÃ¼hrt wird.%n%nBitte schlieÃŸen Sie jetzt alle laufenden Instanzen, und klicken Sie auf "OK", um fortzufahren, oder auf "Abbrechen", um zu beenden.

; *** Misc. errors
ErrorCreatingDir=Das Setup konnte den Ordner "%1" nicht erstellen
ErrorTooManyFilesInDir=Das Setup konnte eine Datei im Ordner "%1" nicht erstellen, weil er zu viele Dateien enthÃ¤lt

; *** Setup common messages
ExitSetupTitle=Setup verlassen
ExitSetupMessage=Das Setup ist noch nicht abgeschlossen. Wenn Sie jetzt beenden, wird das Programm nicht installiert.%n%nSie kÃ¶nnen das Setup zu einem spÃ¤teren Zeitpunkt nochmals ausfÃ¼hren, um die Installation zu vervollstÃ¤ndigen.%n%nSetup verlassen?
AboutSetupMenuItem=&Ãœber das Setup ...
AboutSetupTitle=Ãœber das Setup
AboutSetupMessage=%1 Version %2%n%3%n%n%1 Internet-Seite:%n%4
AboutSetupNote=
TranslatorNote=German translation maintained by Peter Stadler (Peter.Stadler@univie.ac.at)

; *** Buttons
ButtonBack=< &ZurÃ¼ck
ButtonNext=&Weiter >
ButtonInstall=&Installieren
ButtonOK=OK
ButtonCancel=Abbrechen
ButtonYes=&Ja
ButtonYesToAll=J&a fÃ¼r Alle
ButtonNo=&Nein
ButtonNoToAll=N&ein fÃ¼r Alle
ButtonFinish=&Fertigstellen
ButtonBrowse=&Durchsuchen ...
ButtonWizardBrowse=Du&rchsuchen ...
ButtonNewFolder=&Neuen Ordner erstellen

; *** "Select Language" dialog messages
SelectLanguageTitle=Setup-Sprache auswÃ¤hlen
SelectLanguageLabel=WÃ¤hlen Sie die Sprache aus, die wÃ¤hrend der Installation benutzt werden soll:

; *** Common wizard text
ClickNext="Weiter" zum Fortfahren, "Abbrechen" zum Verlassen.
BeveledLabel=
BrowseDialogTitle=Ordner suchen
BrowseDialogLabel=WÃ¤hlen Sie einen Ordner aus, und klicken Sie danach auf "OK".
NewFolderName=Neuer Ordner

; *** "Welcome" wizard page
WelcomeLabel1=Willkommen zum [name] Setup-Assistenten
WelcomeLabel2=Dieser Assistent wird jetzt [name/ver] auf Ihrem Computer installieren.%n%nSie sollten alle anderen Anwendungen beenden, bevor Sie mit dem Setup fortfahren.

; *** "Password" wizard page
WizardPassword=Passwort
PasswordLabel1=Diese Installation wird durch ein Passwort geschÃ¼tzt.
PasswordLabel3=Bitte geben Sie das Passwort ein, und klicken Sie danach auf "Weiter". Achten Sie auf korrekte GroÃŸ-/Kleinschreibung.
PasswordEditLabel=&Passwort:
IncorrectPassword=Das eingegebene Passwort ist nicht korrekt. Bitte versuchen Sie es noch einmal.

; *** "License Agreement" wizard page
WizardLicense=Lizenzvereinbarung
LicenseLabel=Lesen Sie bitte folgende, wichtige Informationen bevor Sie fortfahren.
LicenseLabel3=Lesen Sie bitte die folgenden Lizenzvereinbarungen. Benutzen Sie bei Bedarf die Bildlaufleiste oder drÃ¼cken Sie die "Bild Ab"-Taste.
LicenseAccepted=Ich &akzeptiere die Vereinbarung
LicenseNotAccepted=Ich &lehne die Vereinbarung ab

; *** "Information" wizard pages
WizardInfoBefore=Information
InfoBeforeLabel=Lesen Sie bitte folgende, wichtige Informationen bevor Sie fortfahren.
InfoBeforeClickLabel=Klicken Sie auf "Weiter", sobald Sie bereit sind mit dem Setup fortzufahren.
WizardInfoAfter=Information
InfoAfterLabel=Lesen Sie bitte folgende, wichtige Informationen bevor Sie fortfahren.
InfoAfterClickLabel=Klicken Sie auf "Weiter", sobald Sie bereit sind mit dem Setup fortzufahren.

; *** "User Information" wizard page
WizardUserInfo=Benutzerinformationen
UserInfoDesc=Bitte tragen Sie Ihre Daten ein.
UserInfoName=&Name:
UserInfoOrg=&Organisation:
UserInfoSerial=&Seriennummer:
UserInfoNameRequired=Sie mÃ¼ssen einen Namen eintragen.

; *** "Select Destination Location" wizard page
WizardSelectDir=Ziel-Ordner wÃ¤hlen
SelectDirDesc=Wohin soll [name] installiert werden?
SelectDirLabel3=Das Setup wird [name] in den folgenden Ordner installieren.
SelectDirBrowseLabel=Klicken Sie auf "Weiter", um fortzufahren. Klicken Sie auf "Durchsuchen", falls Sie einen anderen Ordner auswÃ¤hlen mÃ¶chten.
DiskSpaceMBLabel=Mindestens [mb] MB freier Speicherplatz ist erforderlich.
CannotInstallToNetworkDrive=Das Setup kann nicht in einen Netzwerk-Pfad installieren.
CannotInstallToUNCPath=Das Setup kann nicht in einen UNC-Pfad installieren. Wenn Sie auf ein Netzlaufwerk installieren mÃ¶chten, mÃ¼ssen Sie dem Netzwerkpfad einen Laufwerksbuchstaben zuordnen.
InvalidPath=Sie mÃ¼ssen einen vollstÃ¤ndigen Pfad mit einem Laufwerksbuchstaben angeben; z.B.:%n%nC:\Beispiel%n%noder einen UNC-Pfad in der Form:%n%n\\Server\Freigabe
InvalidDrive=Das angegebene Laufwerk bzw. der UNC-Pfad existiert nicht oder es kann nicht darauf zugegriffen werden. WÃ¤hlen Sie bitte einen anderen Ordner.
DiskSpaceWarningTitle=Nicht genug freier Speicherplatz
DiskSpaceWarning=Das Setup benÃ¶tigt mindestens %1 KB freien Speicherplatz zum Installieren, aber auf dem ausgewÃ¤hlten Laufwerk sind nur %2 KB verfÃ¼gbar.%n%nMÃ¶chten Sie trotzdem fortfahren?
DirNameTooLong=Der Ordnername/Pfad ist zu lang.
InvalidDirName=Der Ordnername ist nicht gÃ¼ltig.
BadDirName32=Ordnernamen dÃ¼rfen keine der folgenden Zeichen enthalten:%n%n%1
DirExistsTitle=Ordner existiert bereits
DirExists=Der Ordner:%n%n%1%n%n existiert bereits. MÃ¶chten Sie trotzdem in diesen Ordner installieren?
DirDoesntExistTitle=Ordner ist nicht vorhanden
DirDoesntExist=Der Ordner:%n%n%1%n%nist nicht vorhanden. Soll der Ordner erstellt werden?

; *** "Select Components" wizard page
WizardSelectComponents=Komponenten auswÃ¤hlen
SelectComponentsDesc=Welche Komponenten sollen installiert werden?
SelectComponentsLabel2=WÃ¤hlen Sie die Komponenten aus, die Sie installieren mÃ¶chten. Klicken Sie auf "Weiter", wenn sie bereit sind fortzufahren.
FullInstallation=VollstÃ¤ndige Installation
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Kompakte Installation
CustomInstallation=Benutzerdefinierte Installation
NoUninstallWarningTitle=Komponenten vorhanden
NoUninstallWarning=Das Setup hat festgestellt, dass die folgenden Komponenten bereits auf Ihrem Computer installiert sind:%n%n%1%n%nDiese nicht mehr ausgewÃ¤hlten Komponenten werden nicht vom Computer entfernt.%n%nMÃ¶chten Sie trotzdem fortfahren?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceMBLabel=Die aktuelle Auswahl erfordert min. [mb] MB Speicherplatz.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=ZusÃ¤tzliche Aufgaben auswÃ¤hlen
SelectTasksDesc=Welche zusÃ¤tzlichen Aufgaben sollen ausgefÃ¼hrt werden?
SelectTasksLabel2=WÃ¤hlen Sie die zusÃ¤tzlichen Aufgaben aus, die das Setup wÃ¤hrend der Installation von [name] ausfÃ¼hren soll, und klicken Sie danach auf "Weiter".

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=StartmenÃ¼-Ordner auswÃ¤hlen
SelectStartMenuFolderDesc=Wo soll das Setup die Programm-VerknÃ¼pfungen erstellen?
SelectStartMenuFolderLabel3=Das Setup wird die Programm-VerknÃ¼pfungen im folgenden StartmenÃ¼-Ordner erstellen.
SelectStartMenuFolderBrowseLabel=Klicken Sie auf "Weiter", um fortzufahren. Klicken Sie auf "Durchsuchen", falls Sie einen anderen Ordner auswÃ¤hlen mÃ¶chten.
MustEnterGroupName=Sie mÃ¼ssen einen Ordnernamen eingeben.
GroupNameTooLong=Der Ordnername/Pfad ist zu lang.
InvalidGroupName=Der Ordnername ist nicht gÃ¼ltig.
BadGroupName=Der Ordnername darf keine der folgenden Zeichen enthalten:%n%n%1
NoProgramGroupCheck2=&Keinen Ordner im StartmenÃ¼ erstellen

; *** "Ready to Install" wizard page
WizardReady=Bereit zur Installation.
ReadyLabel1=Das Setup ist jetzt bereit, [name] auf Ihrem Computer zu installieren.
ReadyLabel2a=Klicken Sie auf "Installieren", um mit der Installation zu beginnen, oder auf "ZurÃ¼ck", um Ihre Einstellungen zu Ã¼berprÃ¼fen oder zu Ã¤ndern.
ReadyLabel2b=Klicken Sie auf "Installieren", um mit der Installation zu beginnen.
ReadyMemoUserInfo=Benutzerinformationen:
ReadyMemoDir=Ziel-Ordner:
ReadyMemoType=Setup-Typ:
ReadyMemoComponents=AusgewÃ¤hlte Komponenten:
ReadyMemoGroup=StartmenÃ¼-Ordner:
ReadyMemoTasks=ZusÃ¤tzliche Aufgaben:

; *** "Preparing to Install" wizard page
WizardPreparing=Vorbereitung der Installation
PreparingDesc=Das Setup bereitet die Installation von [name] auf diesen Computer vor.
PreviousInstallNotCompleted=Eine vorherige Installation/Deinstallation eines Programms wurde nicht abgeschlossen. Der Computer muss neu gestartet werden, um die Installation/Deinstallation zu beenden.%n%nStarten Sie das Setup nach dem Neustart Ihres Computers erneut, um die Installation von [name] durchzufÃ¼hren.
CannotContinue=Das Setup kann nicht fortfahren. Bitte klicken Sie auf "Abbrechen" zum Verlassen.
ApplicationsFound=Die folgenden Anwendungen benutzen Dateien, die aktualisiert werden mÃ¼ssen. Es wird empfohlen, Setup zu erlauben, diese Anwendungen zu schlieÃŸen.
ApplicationsFound2=Die folgenden Anwendungen benutzen Dateien, die aktualisiert werden mÃ¼ssen. Es wird empfohlen, Setup zu erlauben, diese Anwendungen zu schlieÃŸen. Nachdem die Installation fertiggestellt wurde, versucht Setup diese Anwendungen wieder zu starten.
CloseApplications=&SchlieÃŸe automatisch die Anwendungen
DontCloseApplications=&SchlieÃŸe die Anwendungen nicht
ErrorCloseApplications=Das Setup konnte nicht alle Anwendungen automatisch schlieÃŸen. Es wird empfohlen, alle Anwendungen zu schlieÃŸen, die Dateien benutzen, die vom Setup vor einer Fortsetzung aktualisiert werden mÃ¼ssen.  

; *** "Installing" wizard page
WizardInstalling=Installiere ...
InstallingLabel=Warten Sie bitte wÃ¤hrend [name] auf Ihrem Computer installiert wird.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Beenden des [name] Setup-Assistenten
FinishedLabelNoIcons=Das Setup hat die Installation von [name] auf Ihrem Computer abgeschlossen.
FinishedLabel=Das Setup hat die Installation von [name] auf Ihrem Computer abgeschlossen. Die Anwendung kann Ã¼ber die installierten Programm-VerknÃ¼pfungen gestartet werden.
ClickFinish=Klicken Sie auf "Fertigstellen", um das Setup zu beenden.
FinishedRestartLabel=Um die Installation von [name] abzuschlieÃŸen, muss das Setup Ihren Computer neu starten. MÃ¶chten Sie jetzt neu starten?
FinishedRestartMessage=Um die Installation von [name] abzuschlieÃŸen, muss das Setup Ihren Computer neu starten.%n%nMÃ¶chten Sie jetzt neu starten?
ShowReadmeCheck=Ja, ich mÃ¶chte die LIESMICH-Datei sehen
YesRadio=&Ja, Computer jetzt neu starten
NoRadio=&Nein, ich werde den Computer spÃ¤ter neu starten
; used for example as 'Run MyProg.exe'
RunEntryExec=%1 starten
; used for example as 'View Readme.txt'
RunEntryShellExec=%1 anzeigen

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=NÃ¤chste Diskette einlegen
SelectDiskLabel2=Legen Sie bitte Diskette %1 ein, und klicken Sie auf "OK".%n%nWenn sich die Dateien von dieser Diskette in einem anderen als dem angezeigten Ordner befinden, dann geben Sie bitte den korrekten Pfad ein oder klicken auf "Durchsuchen".
PathLabel=&Pfad:
FileNotInDir2=Die Datei "%1" befindet sich nicht in "%2". Bitte Ordner Ã¤ndern oder richtige Diskette einlegen.
SelectDirectoryLabel=Geben Sie bitte an, wo die nÃ¤chste Diskette eingelegt wird.

; *** Installation phase messages
SetupAborted=Das Setup konnte nicht abgeschlossen werden.%n%nBeheben Sie bitte das Problem, und starten Sie das Setup erneut.
EntryAbortRetryIgnore=Klicken Sie auf "Wiederholen" fÃ¼r einen weiteren Versuch, "Ignorieren", um trotzdem fortzufahren, oder "Abbrechen", um die Installation abzubrechen.

; *** Installation status messages
StatusClosingApplications=Anwendungen werden geschlossen...
StatusCreateDirs=Ordner werden erstellt ...
StatusExtractFiles=Dateien werden entpackt ...
StatusCreateIcons=VerknÃ¼pfungen werden erstellt ...
StatusCreateIniEntries=INI-EintrÃ¤ge werden erstellt ...
StatusCreateRegistryEntries=Registry-EintrÃ¤ge werden erstellt ...
StatusRegisterFiles=Dateien werden registriert ...
StatusSavingUninstall=Deinstallations-Informationen werden gespeichert ...
StatusRunProgram=Installation wird beendet ...
StatusRestartingApplications=Neustart der Anwendungen...
StatusRollback=Ã„nderungen werden rÃ¼ckgÃ¤ngig gemacht ...

; *** Misc. errors
ErrorInternal2=Interner Fehler: %1
ErrorFunctionFailedNoCode=%1 schlug fehl
ErrorFunctionFailed=%1 schlug fehl; Code %2
ErrorFunctionFailedWithMessage=%1 schlug fehl; Code %2.%n%3
ErrorExecutingProgram=Datei kann nicht ausgefÃ¼hrt werden:%n%1

; *** Registry errors
ErrorRegOpenKey=Registry-SchlÃ¼ssel konnte nicht geÃ¶ffnet werden:%n%1\%2
ErrorRegCreateKey=Registry-SchlÃ¼ssel konnte nicht erstellt werden:%n%1\%2
ErrorRegWriteKey=Fehler beim Schreiben des Registry-SchlÃ¼ssels:%n%1\%2

; *** INI errors
ErrorIniEntry=Fehler beim Erstellen eines INI-Eintrages in der Datei "%1".

; *** File copying errors
FileAbortRetryIgnore=Klicken Sie auf "Wiederholen" fÃ¼r einen weiteren Versuch, "Ignorieren", um diese Datei zu Ã¼berspringen (nicht empfohlen), oder "Abbrechen", um die Installation abzubrechen.
FileAbortRetryIgnore2=Klicken Sie auf "Wiederholen" fÃ¼r einen weiteren Versuch, "Ignorieren", um trotzdem fortzufahren (nicht empfohlen), oder "Abbrechen", um die Installation abzubrechen.
SourceIsCorrupted=Die Quelldatei ist beschÃ¤digt
SourceDoesntExist=Die Quelldatei "%1" existiert nicht
ExistingFileReadOnly=Die vorhandene Datei ist schreibgeschÃ¼tzt.%n%nKlicken Sie auf "Wiederholen", um den Schreibschutz zu entfernen, "Ignorieren", um die Datei zu Ã¼berspringen, oder "Abbrechen", um die Installation abzubrechen.
ErrorReadingExistingDest=Lesefehler in Datei:
FileExists=Die Datei ist bereits vorhanden.%n%nSoll sie Ã¼berschrieben werden?
ExistingFileNewer=Die vorhandene Datei ist neuer als die Datei, die installiert werden soll. Es wird empfohlen die vorhandene Datei beizubehalten.%n%n MÃ¶chten Sie die vorhandene Datei beibehalten?
ErrorChangingAttr=Fehler beim Ã„ndern der Datei-Attribute:
ErrorCreatingTemp=Fehler beim Erstellen einer Datei im Ziel-Ordner:
ErrorReadingSource=Fehler beim Lesen der Quelldatei:
ErrorCopying=Fehler beim Kopieren einer Datei:
ErrorReplacingExistingFile=Fehler beim Ersetzen einer vorhandenen Datei:
ErrorRestartReplace="Ersetzen nach Neustart" fehlgeschlagen:
ErrorRenamingTemp=Fehler beim Umbenennen einer Datei im Ziel-Ordner:
ErrorRegisterServer=DLL/OCX konnte nicht registriert werden: %1
ErrorRegSvr32Failed=RegSvr32-Aufruf scheiterte mit Exit-Code %1
ErrorRegisterTypeLib=Typen-Bibliothek konnte nicht registriert werden: %1

; *** Post-installation errors
ErrorOpeningReadme=Fehler beim Ã–ffnen der LIESMICH-Datei.
ErrorRestartingComputer=Das Setup konnte den Computer nicht neu starten. Bitte fÃ¼hren Sie den Neustart manuell durch.

; *** Uninstaller messages
UninstallNotFound=Die Datei "%1" existiert nicht. Entfernen der Anwendung fehlgeschlagen.
UninstallOpenError=Die Datei "%1" konnte nicht geÃ¶ffnet werden. Entfernen der Anwendung fehlgeschlagen.
UninstallUnsupportedVer=Das Format der Deinstallations-Datei "%1" konnte nicht erkannt werden. Entfernen der Anwendung fehlgeschlagen
UninstallUnknownEntry=In der Deinstallations-Datei wurde ein unbekannter Eintrag (%1) gefunden
ConfirmUninstall=Are you sure you would like to remove Kolibri from your computer?
UninstallOnlyOnWin64=Diese Installation kann nur unter 64-bit Windows-Versionen entfernt werden.
OnlyAdminCanUninstall=Diese Installation kann nur von einem Benutzer mit Administrator-Rechten entfernt werden.
UninstallStatusLabel=Warten Sie bitte wÃ¤hrend %1 von Ihrem Computer entfernt wird.
UninstalledAll=Kolibri has been successfully removed from your computer.
UninstalledMost=Entfernen von %1 beendet.%n%nEinige Komponenten konnten nicht entfernt werden. Diese kÃ¶nnen von Ihnen manuell gelÃ¶scht werden.
UninstalledAndNeedsRestart=Um die Deinstallation von %1 abzuschlieÃŸen, muss Ihr Computer neu gestartet werden.%n%nMÃ¶chten Sie jetzt neu starten?
UninstallDataCorrupted="%1"-Datei ist beschÃ¤digt. Entfernen der Anwendung fehlgeschlagen.

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Gemeinsame Datei entfernen?
ConfirmDeleteSharedFile2=Das System zeigt an, dass die folgende gemeinsame Datei von keinem anderen Programm mehr benutzt wird. MÃ¶chten Sie diese Datei entfernen lassen?%nSollte es doch noch Programme geben, die diese Datei benutzen, und sie wird entfernt, funktionieren diese Programme vielleicht nicht mehr richtig. Wenn Sie unsicher sind, wÃ¤hlen Sie "Nein" um die Datei im System zu belassen. Es schadet Ihrem System nicht, wenn Sie die Datei behalten.
SharedFileNameLabel=Dateiname:
SharedFileLocationLabel=Ordner:
WizardUninstalling=Entfernen (Status)
StatusUninstalling=Entferne %1 ...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Installation von %1.
ShutdownBlockReasonUninstallingApp=Deinstallation von %1.

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 Version %2
AdditionalIcons=ZusÃ¤tzliche Symbole:
CreateDesktopIcon=&Desktop-Symbol erstellen
CreateQuickLaunchIcon=Symbol in der Schnellstartleiste erstellen
ProgramOnTheWeb=%1 im Internet
UninstallProgram=%1 entfernen
LaunchProgram=%1 starten
AssocFileExtension=&Registriere %1 mit der %2-Dateierweiterung
AssocingFileExtension=%1 wird mit der %2-Dateierweiterung registriert...
AutoStartProgramGroupDescription=Beginn des Setups:
AutoStartProgram=Starte automatisch%1
AddonHostProgramNotFound=%1 konnte im ausgewÃ¤hlten Ordner nicht gefunden werden.%n%nMÃ¶chten Sie dennoch fortfahren?

; Kolibri Windows Installer custom messages
UpgradeMsg=We have detected an existing Kolibri installation; would you like to upgrade?
UpgradeDelMsg=Installing fresh will delete all of your existing data; is this what you really want to do?
InstallPythonMsg=Python 3.4+ is required to install Kolibri on Windows; do you wish to first install Python 3.4.3, before continuing with the installation of Kolibri?
InstallPythonErrMsg=Kolibri cannot run without installing Python. Click Ok to go back and install Python, or Cancel to quit the Kolibri installer
SetupKolibriErrMsg=Critical error. Dependencies have failed to install. Error Number:
KolibriInstallFailed=Kolibri installation failed. Kolibri installer encountered an error during the installation process%n%n
SetupWizardMsg=Setup wizard is copying files. This may take a while, please wait..
LaunchKolibri=Launch Kolibri
KolibriSupportLink=Community forum
KolibriHomePage=Homepage
KolibriDocs=Documentation
FileNotFound= was not found.
Needhelp=To get help online, please visit our community forum:
CommunityLink=https://community.learningequality.org
UninstallKolibriDataLine1=Would you also like to delete all the data associated with Kolibri?
UninstallKolibriDataLine2=This will permanently remove all downloaded content channels and the user interaction data.
UninstallKolibriDataLine3=This action cannot be undone.
UninstallKolibriPath=Data location:
