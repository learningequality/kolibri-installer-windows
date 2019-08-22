; *** Inno Setup version 5.5.3+ French messages ***
;
; To download user-contributed translations of this file, go to:
;   http://www.jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).
;
; Maintained by Pierre Yager (pierre@levosgien.net)
;
; Contributors : FrÃ©dÃ©ric Bonduelle, Francis Pallini, Lumina, Pascal Peyrot
;
; Changes :
; + Accents on uppercase letters
;      http://www.academie-francaise.fr/langue/questions.html#accentuation (lumina)
; + Typography quotes [see ISBN: 978-2-7433-0482-9]
;      http://fr.wikipedia.org/wiki/Guillemet (lumina)
; + Binary units (Kio, Mio) [IEC 80000-13:2008]
;      http://fr.wikipedia.org/wiki/Octet (lumina)
; + Reverted to standard units (Ko, Mo) to follow Windows Explorer Standard
;      http://blogs.msdn.com/b/oldnewthing/archive/2009/06/11/9725386.aspx
; + Use more standard verbs for click and retry
;     "click": "Clicker" instead of "Appuyer" 
;     "retry": "Recommencer" au lieu de "RÃ©essayer"

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Fran<00E7>ais
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
SetupAppTitle=Installation
SetupWindowTitle=Installation - %1
UninstallAppTitle=DÃ©sinstallation
UninstallAppFullTitle=DÃ©sinstallation - %1

; *** Misc. common
InformationTitle=Information
ConfirmTitle=Confirmation
ErrorTitle=Erreur

; *** SetupLdr messages
SetupLdrStartupMessage=Cet assistant va installer %1. Voulez-vous continuer ?
LdrCannotCreateTemp=Impossible de crÃ©er un fichier temporaire. Abandon de l'installation
LdrCannotExecTemp=Impossible d'exÃ©cuter un fichier depuis le dossier temporaire. Abandon de l'installation

; *** Startup error messages
LastErrorMessage=%1.%n%nErreur %2 : %3
SetupFileMissing=Le fichier %1 est absent du dossier d'installation. Veuillez corriger le problÃ¨me ou vous procurer une nouvelle copie du programme.
SetupFileCorrupt=Les fichiers d'installation sont altÃ©rÃ©s. Veuillez vous procurer une nouvelle copie du programme.
SetupFileCorruptOrWrongVer=Les fichiers d'installation sont altÃ©rÃ©s ou ne sont pas compatibles avec cette version de l'assistant d'installation. Veuillez corriger le problÃ¨me ou vous procurer une nouvelle copie du programme.
InvalidParameter=Un paramÃ¨tre non valide a Ã©tÃ© passÃ© Ã  la ligne de commande :%n%n%1
SetupAlreadyRunning=L'assistant d'installation est dÃ©jÃ  en cours d'exÃ©cution.
WindowsVersionNotSupported=Ce programme n'est pas prÃ©vu pour fonctionner avec la version de Windows utilisÃ©e sur votre ordinateur.
WindowsServicePackRequired=Ce programme a besoin de %1 Service Pack %2 ou d'une version plus rÃ©cente.
NotOnThisPlatform=Ce programme ne fonctionne pas sous %1.
OnlyOnThisPlatform=Ce programme ne peut fonctionner que sous %1.
OnlyOnTheseArchitectures=Ce programme ne peut Ãªtre installÃ© que sur des versions de Windows qui supportent ces architectures : %n%n%1
MissingWOW64APIs=La version de Windows que vous utilisez ne dispose pas des fonctionnalitÃ©s nÃ©cessaires pour que l'assistant puisse rÃ©aliser une installation 64 bits. Pour corriger ce problÃ¨me vous devez installer le Service Pack %1.
WinVersionTooLowError=Ce programme requiert la version %2 ou supÃ©rieure de %1.
WinVersionTooHighError=Ce programme ne peut pas Ãªtre installÃ© sous %1 version %2 ou supÃ©rieure.
AdminPrivilegesRequired=Vous devez disposer des droits d'administration de cet ordinateur pour installer ce programme.
PowerUserPrivilegesRequired=Vous devez disposer des droits d'administration ou faire partie du groupe Â« Utilisateurs avec pouvoir Â» de cet ordinateur pour installer ce programme.
SetupAppRunningError=L'assistant d'installation a dÃ©tectÃ© que %1 est actuellement en cours d'exÃ©cution.%n%nVeuillez fermer toutes les instances de cette application puis cliquer sur OK pour continuer, ou bien cliquer sur Annuler pour abandonner l'installation.
UninstallAppRunningError=La procÃ©dure de dÃ©sinstallation a dÃ©tectÃ© que %1 est actuellement en cours d'exÃ©cution.%n%nVeuillez fermer toutes les instances de cette application  puis cliquer sur OK pour continuer, ou bien cliquer sur Annuler pour abandonner la dÃ©sinstallation.

; *** Misc. errors
ErrorCreatingDir=L'assistant d'installation n'a pas pu crÃ©er le dossier "%1"
ErrorTooManyFilesInDir=L'assistant d'installation n'a pas pu crÃ©er un fichier dans le dossier "%1" car celui-ci contient trop de fichiers

; *** Setup common messages
ExitSetupTitle=Quitter l'installation
ExitSetupMessage=L'installation n'est pas terminÃ©e. Si vous abandonnez maintenant, le programme ne sera pas installÃ©.%n%nVous devrez relancer cet assistant pour finir l'installation.%n%nVoulez-vous quand mÃªme quitter l'assistant d'installation ?
AboutSetupMenuItem=&Ã€ propos...
AboutSetupTitle=Ã€ Propos de l'assistant d'installation
AboutSetupMessage=%1 version %2%n%3%n%nPage d'accueil de %1 :%n%4
AboutSetupNote=
TranslatorNote=Traduction franÃ§aise maintenue par Pierre Yager (pierre@levosgien.net)

; *** Buttons
ButtonBack=< &PrÃ©cÃ©dent
ButtonNext=&Suivant >
ButtonInstall=&Installer
ButtonOK=OK
ButtonCancel=Annuler
ButtonYes=&Oui
ButtonYesToAll=Oui pour &tout
ButtonNo=&Non
ButtonNoToAll=N&on pour tout
ButtonFinish=&Terminer
ButtonBrowse=Pa&rcourir...
ButtonWizardBrowse=Pa&rcourir...
ButtonNewFolder=Nouveau &dossier

; *** "Select Language" dialog messages
SelectLanguageTitle=Langue de l'assistant d'installation
SelectLanguageLabel=Veuillez sÃ©lectionner la langue qui sera utilisÃ©e par l'assistant d'installation :

; *** Common wizard text
ClickNext=Cliquez sur Suivant pour continuer ou sur Annuler pour abandonner l'installation.
BeveledLabel=
BrowseDialogTitle=Parcourir les dossiers
BrowseDialogLabel=Veuillez choisir un dossier de destination, puis cliquez sur OK.
NewFolderName=Nouveau dossier

; *** "Welcome" wizard page
WelcomeLabel1=Bienvenue dans l'assistant d'installation de [name]
WelcomeLabel2=Cet assistant va vous guider dans l'installation de [name/ver] sur votre ordinateur.%n%nIl est recommandÃ© de fermer toutes les applications actives avant de continuer.

; *** "Password" wizard page
WizardPassword=Mot de passe
PasswordLabel1=Cette installation est protÃ©gÃ©e par un mot de passe.
PasswordLabel3=Veuillez saisir le mot de passe (attention Ã  la distinction entre majuscules et minuscules) puis cliquez sur Suivant pour continuer.
PasswordEditLabel=&Mot de passe :
IncorrectPassword=Le mot de passe saisi n'est pas valide. Veuillez essayer Ã  nouveau.

; *** "License Agreement" wizard page
WizardLicense=Accord de licence
LicenseLabel=Les informations suivantes sont importantes. Veuillez les lire avant de continuer.
LicenseLabel3=Veuillez lire le contrat de licence suivant. Vous devez en accepter tous les termes avant de continuer l'installation.
LicenseAccepted=Je comprends et j'&accepte les termes du contrat de licence
LicenseNotAccepted=Je &refuse les termes du contrat de licence

; *** "Information" wizard pages
WizardInfoBefore=Information
InfoBeforeLabel=Les informations suivantes sont importantes. Veuillez les lire avant de continuer.
InfoBeforeClickLabel=Lorsque vous Ãªtes prÃªt Ã  continuer, cliquez sur Suivant.
WizardInfoAfter=Information
InfoAfterLabel=Les informations suivantes sont importantes. Veuillez les lire avant de continuer.
InfoAfterClickLabel=Lorsque vous Ãªtes prÃªt Ã  continuer, cliquez sur Suivant.

; *** "User Information" wizard page
WizardUserInfo=Informations sur l'Utilisateur
UserInfoDesc=Veuillez saisir les informations qui vous concernent.
UserInfoName=&Nom d'utilisateur :
UserInfoOrg=&Organisation :
UserInfoSerial=NumÃ©ro de &sÃ©rie :
UserInfoNameRequired=Vous devez au moins saisir un nom.

; *** "Select Destination Location" wizard page
WizardSelectDir=Dossier de destination
SelectDirDesc=OÃ¹ [name] doit-il Ãªtre installÃ© ?
SelectDirLabel3=L'assistant va installer [name] dans le dossier suivant.
SelectDirBrowseLabel=Pour continuer, cliquez sur Suivant. Si vous souhaitez choisir un dossier diffÃ©rent, cliquez sur Parcourir.
DiskSpaceMBLabel=Le programme requiert au moins [mb] Mo d'espace disque disponible.
CannotInstallToNetworkDrive=L'assistant ne peut pas installer sur un disque rÃ©seau.
CannotInstallToUNCPath=L'assistant ne peut pas installer sur un chemin UNC.
InvalidPath=Vous devez saisir un chemin complet avec sa lettre de lecteur ; par exemple :%n%nC:\APP%n%nou un chemin rÃ©seau de la forme :%n%n\\serveur\partage
InvalidDrive=L'unitÃ© ou l'emplacement rÃ©seau que vous avez sÃ©lectionnÃ© n'existe pas ou n'est pas accessible. Veuillez choisir une autre destination.
DiskSpaceWarningTitle=Espace disponible insuffisant
DiskSpaceWarning=L'assistant a besoin d'au moins %1 Ko d'espace disponible pour effectuer l'installation, mais l'unitÃ© que vous avez sÃ©lectionnÃ©e ne dispose que de %2 Ko d'espace disponible.%n%nSouhaitez-vous continuer malgrÃ© tout ?
DirNameTooLong=Le nom ou le chemin du dossier est trop long.
InvalidDirName=Le nom du dossier est invalide.
BadDirName32=Le nom du dossier ne doit contenir aucun des caractÃ¨res suivants :%n%n%1
DirExistsTitle=Dossier existant
DirExists=Le dossier :%n%n%1%n%nexiste dÃ©jÃ . Souhaitez-vous installer dans ce dossier malgrÃ© tout ?
DirDoesntExistTitle=Le dossier n'existe pas
DirDoesntExist=Le dossier %n%n%1%n%nn'existe pas. Souhaitez-vous que ce dossier soit crÃ©Ã© ?

; *** "Select Components" wizard page
WizardSelectComponents=Composants Ã  installer
SelectComponentsDesc=Quels composants de l'application souhaitez-vous installer ?
SelectComponentsLabel2=SÃ©lectionnez les composants que vous dÃ©sirez installer ; dÃ©cochez les composants que vous ne dÃ©sirez pas installer. Cliquez ensuite sur Suivant pour continuer l'installation.
FullInstallation=Installation complÃ¨te
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Installation compacte
CustomInstallation=Installation personnalisÃ©e
NoUninstallWarningTitle=Composants existants
NoUninstallWarning=L'assistant d'installation a dÃ©tectÃ© que les composants suivants sont dÃ©jÃ  installÃ©s sur votre systÃ¨me :%n%n%1%n%nDÃ©sÃ©lectionner ces composants ne les dÃ©sinstallera pas pour autant.%n%nVoulez-vous continuer malgrÃ© tout ?
ComponentSize1=%1 Ko
ComponentSize2=%1 Mo
ComponentsDiskSpaceMBLabel=Les composants sÃ©lectionnÃ©s nÃ©cessitent au moins [mb] Mo d'espace disponible.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=TÃ¢ches supplÃ©mentaires
SelectTasksDesc=Quelles sont les tÃ¢ches supplÃ©mentaires qui doivent Ãªtre effectuÃ©es ?
SelectTasksLabel2=SÃ©lectionnez les tÃ¢ches supplÃ©mentaires que l'assistant d'installation doit effectuer pendant l'installation de [name], puis cliquez sur Suivant.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=SÃ©lection du dossier du menu DÃ©marrer
SelectStartMenuFolderDesc=OÃ¹ l'assistant d'installation doit-il placer les raccourcis du programme ?
SelectStartMenuFolderLabel3=L'assistant va crÃ©er les raccourcis du programme dans le dossier du menu DÃ©marrer indiquÃ© ci-dessous.
SelectStartMenuFolderBrowseLabel=Cliquez sur Suivant pour continuer. Cliquez sur Parcourir si vous souhaitez sÃ©lectionner un autre dossier du menu DÃ©marrer.
MustEnterGroupName=Vous devez saisir un nom de dossier du menu DÃ©marrer.
GroupNameTooLong=Le nom ou le chemin du dossier est trop long.
InvalidGroupName=Le nom du dossier n'est pas valide.
BadGroupName=Le nom du dossier ne doit contenir aucun des caractÃ¨res suivants :%n%n%1
NoProgramGroupCheck2=Ne pas crÃ©er de &dossier dans le menu DÃ©marrer

; *** "Ready to Install" wizard page
WizardReady=PrÃªt Ã  installer
ReadyLabel1=L'assistant dispose Ã  prÃ©sent de toutes les informations pour installer [name] sur votre ordinateur.
ReadyLabel2a=Cliquez sur Installer pour procÃ©der Ã  l'installation ou sur PrÃ©cÃ©dent pour revoir ou modifier une option d'installation.
ReadyLabel2b=Cliquez sur Installer pour procÃ©der Ã  l'installation.
ReadyMemoUserInfo=Informations sur l'utilisateur :
ReadyMemoDir=Dossier de destination :
ReadyMemoType=Type d'installation :
ReadyMemoComponents=Composants sÃ©lectionnÃ©s :
ReadyMemoGroup=Dossier du menu DÃ©marrer :
ReadyMemoTasks=TÃ¢ches supplÃ©mentaires :

; *** "Preparing to Install" wizard page
WizardPreparing=PrÃ©paration de l'installation
PreparingDesc=L'assistant d'installation prÃ©pare l'installation de [name] sur votre ordinateur.
PreviousInstallNotCompleted=L'installation ou la suppression d'un programme prÃ©cÃ©dent n'est pas totalement achevÃ©e. Veuillez redÃ©marrer votre ordinateur pour achever cette installation ou suppression.%n%nUne fois votre ordinateur redÃ©marrÃ©, veuillez relancer cet assistant pour reprendre l'installation de [name].
CannotContinue=L'assistant ne peut pas continuer. Veuillez cliquer sur Annuler pour abandonner l'installation.
ApplicationsFound=Les applications suivantes utilisent des fichiers qui doivent Ãªtre mis Ã  jour par l'assistant. Il est recommandÃ© d'autoriser l'assistant Ã  fermer ces applications automatiquement.
ApplicationsFound2=Les applications suivantes utilisent des fichiers qui doivent Ãªtre mis Ã  jour par l'assistant. Il est recommandÃ© d'autoriser l'assistant Ã  fermer ces applications automatiquement. Une fois l'installation terminÃ©e, l'assistant essaiera de relancer ces applications.
CloseApplications=&ArrÃªter les applications automatiquement
DontCloseApplications=&Ne pas arrÃªter les applications
ErrorCloseApplications=L'assistant d'installation n'a pas pu arrÃªter toutes les applications automatiquement. Nous vous recommandons de fermer toutes les applications qui utilisent des fichiers devant Ãªtre mis Ã  jour par l'assistant d'installation avant de continuer.

; *** "Installing" wizard page
WizardInstalling=Installation en cours
InstallingLabel=Veuillez patienter pendant que l'assistant installe [name] sur votre ordinateur.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Fin de l'installation de [name]
FinishedLabelNoIcons=L'assistant a terminÃ© l'installation de [name] sur votre ordinateur.
FinishedLabel=L'assistant a terminÃ© l'installation de [name] sur votre ordinateur. L'application peut Ãªtre lancÃ©e Ã  l'aide des icÃ´nes crÃ©Ã©es sur le Bureau par l'installation.
ClickFinish=Veuillez cliquer sur Terminer pour quitter l'assistant d'installation.
FinishedRestartLabel=L'assistant doit redÃ©marrer votre ordinateur pour terminer l'installation de [name].%n%nVoulez-vous redÃ©marrer maintenant ?
FinishedRestartMessage=L'assistant doit redÃ©marrer votre ordinateur pour terminer l'installation de [name].%n%nVoulez-vous redÃ©marrer maintenant ?
ShowReadmeCheck=Oui, je souhaite lire le fichier LISEZMOI
YesRadio=&Oui, redÃ©marrer mon ordinateur maintenant
NoRadio=&Non, je prÃ©fÃ¨re redÃ©marrer mon ordinateur plus tard
; used for example as 'Run MyProg.exe'
RunEntryExec=ExÃ©cuter %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Voir %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=L'assistant a besoin du disque suivant
SelectDiskLabel2=Veuillez insÃ©rer le disque %1 et cliquer sur OK.%n%nSi les fichiers de ce disque se trouvent Ã  un emplacement diffÃ©rent de celui indiquÃ© ci-dessous, veuillez saisir le chemin correspondant ou cliquez sur Parcourir.
PathLabel=&Chemin :
FileNotInDir2=Le fichier "%1" ne peut pas Ãªtre trouvÃ© dans "%2". Veuillez insÃ©rer le bon disque ou sÃ©lectionner un autre dossier.
SelectDirectoryLabel=Veuillez indiquer l'emplacement du disque suivant.

; *** Installation phase messages
SetupAborted=L'installation n'est pas terminÃ©e.%n%nVeuillez corriger le problÃ¨me et relancer l'installation.
EntryAbortRetryIgnore=Cliquez sur Recommencer pour essayer Ã  nouveau, Ignorer pour continuer malgrÃ© tout, ou Abandonner pour annuler l'installation.

; *** Installation status messages
StatusClosingApplications=Ferme les applications...
StatusCreateDirs=CrÃ©ation des dossiers...
StatusExtractFiles=Extraction des fichiers...
StatusCreateIcons=CrÃ©ation des raccourcis...
StatusCreateIniEntries=CrÃ©ation des entrÃ©es du fichier INI...
StatusCreateRegistryEntries=CrÃ©ation des entrÃ©es de registre...
StatusRegisterFiles=Enregistrement des fichiers...
StatusSavingUninstall=Sauvegarde des informations de dÃ©sinstallation...
StatusRunProgram=Finalisation de l'installation...
StatusRestartingApplications=Relance les applications...
StatusRollback=Annulation des modifications...

; *** Misc. errors
ErrorInternal2=Erreur interne : %1
ErrorFunctionFailedNoCode=%1 a Ã©chouÃ©
ErrorFunctionFailed=%1 a Ã©chouÃ© ; code %2
ErrorFunctionFailedWithMessage=%1 a Ã©chouÃ© ; code %2.%n%3
ErrorExecutingProgram=Impossible d'exÃ©cuter le fichier :%n%1

; *** Registry errors
ErrorRegOpenKey=Erreur lors de l'ouverture de la clÃ© de registre :%n%1\%2
ErrorRegCreateKey=Erreur lors de la crÃ©ation de la clÃ© de registre :%n%1\%2
ErrorRegWriteKey=Erreur lors de l'Ã©criture de la clÃ© de registre :%n%1\%2

; *** INI errors
ErrorIniEntry=Erreur d'Ã©criture d'une entrÃ©e dans le fichier INI "%1".

; *** File copying errors
FileAbortRetryIgnore=Cliquez sur Recommencer pour essayer Ã  nouveau, Ignorer pour passer ce fichier (dÃ©conseillÃ©), ou Abandonner pour annuler l'installation.
FileAbortRetryIgnore2=Cliquez sur Recommencer pour essayer Ã  nouveau, Ignorer pour continuer malgrÃ© tout (dÃ©conseillÃ©), ou Abandonner pour annuler l'installation.
SourceIsCorrupted=Le fichier source est altÃ©rÃ©
SourceDoesntExist=Le fichier source "%1" n'existe pas
ExistingFileReadOnly=Le fichier existant est protÃ©gÃ© en lecture seule.%n%nCliquez sur Recommencer pour enlever la protection et essayer Ã  nouveau, Ignorer pour passer ce fichier, ou Abandonner pour annuler l'installation.
ErrorReadingExistingDest=Une erreur s'est produite lors de la tentative de lecture du fichier existant :
FileExists=Le fichier existe dÃ©jÃ .%n%nSouhaitez-vous que l'installation le remplace ?
ExistingFileNewer=Le fichier existant est plus rÃ©cent que celui que l'assistant essaie d'installer. Il est recommandÃ© de conserver le fichier existant.%n%nSouhaitez-vous conserver le fichier existant ?
ErrorChangingAttr=Une erreur est survenue en essayant de modifier les attributs du fichier existant :
ErrorCreatingTemp=Une erreur est survenue en essayant de crÃ©er un fichier dans le dossier de destination :
ErrorReadingSource=Une erreur est survenue lors de la lecture du fichier source :
ErrorCopying=Une erreur est survenue lors de la copie d'un fichier :
ErrorReplacingExistingFile=Une erreur est survenue lors du remplacement d'un fichier existant :
ErrorRestartReplace=Le marquage d'un fichier pour remplacement au redÃ©marrage de l'ordinateur a Ã©chouÃ© :
ErrorRenamingTemp=Une erreur est survenue en essayant de renommer un fichier dans le dossier de destination :
ErrorRegisterServer=Impossible d'enregistrer la bibliothÃ¨que DLL/OCX : %1
ErrorRegSvr32Failed=RegSvr32 a Ã©chouÃ© et a retournÃ© le code d'erreur %1
ErrorRegisterTypeLib=Impossible d'enregistrer la bibliothÃ¨que de type : %1

; *** Post-installation errors
ErrorOpeningReadme=Une erreur est survenue Ã  l'ouverture du fichier LISEZMOI.
ErrorRestartingComputer=L'installation n'a pas pu redÃ©marrer l'ordinateur. Merci de bien vouloir le faire vous-mÃªme.

; *** Uninstaller messages
UninstallNotFound=Le fichier "%1" n'existe pas. Impossible de dÃ©sinstaller.
UninstallOpenError=Le fichier "%1" n'a pas pu Ãªtre ouvert. Impossible de dÃ©sinstaller
UninstallUnsupportedVer=Le format du fichier journal de dÃ©sinstallation "%1" n'est pas reconnu par cette version de la procÃ©dure de dÃ©sinstallation. Impossible de dÃ©sinstaller
UninstallUnknownEntry=Une entrÃ©e inconnue (%1) a Ã©tÃ© rencontrÃ©e dans le fichier journal de dÃ©sinstallation
ConfirmUninstall=Are you sure you would like to remove Kolibri from your computer?
UninstallOnlyOnWin64=La dÃ©sinstallation de ce programme ne fonctionne qu'avec une version 64 bits de Windows.
OnlyAdminCanUninstall=Ce programme ne peut Ãªtre dÃ©sinstallÃ© que par un utilisateur disposant des droits d'administration.
UninstallStatusLabel=Veuillez patienter pendant que %1 est retirÃ© de votre ordinateur.
UninstalledAll=Kolibri has been successfully removed from your computer.
UninstalledMost=La dÃ©sinstallation de %1 est terminÃ©e.%n%nCertains Ã©lÃ©ments n'ont pas pu Ãªtre supprimÃ©s automatiquement. Vous pouvez les supprimer manuellement.
UninstalledAndNeedsRestart=Vous devez redÃ©marrer l'ordinateur pour terminer la dÃ©sinstallation de %1.%n%nVoulez-vous redÃ©marrer maintenant ?
UninstallDataCorrupted=Le ficher "%1" est altÃ©rÃ©. Impossible de dÃ©sinstaller

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Supprimer les fichiers partagÃ©s ?
ConfirmDeleteSharedFile2=Le systÃ¨me indique que le fichier partagÃ© suivant n'est plus utilisÃ© par aucun programme. Souhaitez-vous que la dÃ©sinstallation supprime ce fichier partagÃ© ?%n%nSi des programmes utilisent encore ce fichier et qu'il est supprimÃ©, ces programmes ne pourront plus fonctionner correctement. Si vous n'Ãªtes pas sÃ»r, choisissez Non. Laisser ce fichier dans votre systÃ¨me ne posera pas de problÃ¨me.
SharedFileNameLabel=Nom du fichier :
SharedFileLocationLabel=Emplacement :
WizardUninstalling=Ã‰tat de la dÃ©sinstallation
StatusUninstalling=DÃ©sinstallation de %1...

; *** Shutdown block reasons
ShutdownBlockReasonInstallingApp=Installe %1.
ShutdownBlockReasonUninstallingApp=DÃ©sinstalle %1.

; Les messages personnalisÃ©s suivants ne sont pas utilisÃ© par l'installation
; elle-mÃªme, mais si vous les utilisez dans vos scripts, vous devez les
; traduire

[CustomMessages]

NameAndVersion=%1 version %2
AdditionalIcons=IcÃ´nes supplÃ©mentaires :
CreateDesktopIcon=CrÃ©er une icÃ´ne sur le &Bureau
CreateQuickLaunchIcon=CrÃ©er une icÃ´ne dans la barre de &Lancement rapide
ProgramOnTheWeb=Page d'accueil de %1
UninstallProgram=DÃ©sinstaller %1
LaunchProgram=ExÃ©cuter %1
AssocFileExtension=&Associer %1 avec l'extension de fichier %2
AssocingFileExtension=Associe %1 avec l'extension de fichier %2...
AutoStartProgramGroupDescription=DÃ©marrage :
AutoStartProgram=DÃ©marrer automatiquement %1
AddonHostProgramNotFound=%1 n'a pas Ã©tÃ© trouvÃ© dans le dossier que vous avez choisi.%n%nVoulez-vous continuer malgrÃ© tout ?

; Kolibri Windows Installer custom messages
UpgradeMsg=We have detected an existing Kolibri installation; would you like to upgrade?
UpgradeDelMsg=Installing fresh will delete all of your existing data; is this what you really want to do?
InstallPythonMsg=Python 3.4+ is required to install Kolibri on Windows; do you wish to first install Python 3.4.3, before continuing with the installation of Kolibri?
InstallPythonErrMsg=Kolibri cannot run without installing Python. Click Ok to go back and install Python, or Cancel to quit the Kolibri installer
SetupKolibriErrMsg=Critical error. Dependencies have failed to install. Error Number:
KolibriInstallFailed=Something went wrong during Kolibri setup.%nAdditional information can be found in the log file:
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
