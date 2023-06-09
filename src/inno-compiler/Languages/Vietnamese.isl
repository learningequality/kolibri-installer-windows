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
LanguageName=Vietnamese 
LanguageID=$042A 
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
SetupAppTitle=Cài đặt 
SetupWindowTitle=Cài đặt - %1 
UninstallAppTitle=Gỡ cài đặt 
UninstallAppFullTitle=Gỡ cài đặt %1 

; *** Misc. common
InformationTitle=Thông tin 
ConfirmTitle=Xác nhận 
ErrorTitle=Lỗi 

; *** SetupLdr messages
SetupLdrStartupMessage=Tiến trình cài đặt %1 sắp bắt đầu. Bạn có muốn tiếp tục? 
LdrCannotCreateTemp=Unable to create a temporary file. Setup aborted
LdrCannotExecTemp=Unable to execute file in the temporary directory. Setup aborted
HelpTextNote=

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=The file %1 is missing from the installation directory. Please correct the problem or obtain a new copy of the program.
SetupFileCorrupt=The setup files are corrupted. Please obtain a new copy of the program.
SetupFileCorruptOrWrongVer=The setup files are corrupted, or are incompatible with this version of Setup. Please correct the problem or obtain a new copy of the program.
InvalidParameter=An invalid parameter was passed on the command line:%n%n%1
SetupAlreadyRunning=Trình cài đặt đã chạy rồi. 
WindowsVersionNotSupported=Chương trình này không hỗ trợ phiên bản Windows mà máy vi tính đang chạy. 
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
ExitSetupMessage=Cài đặt chưa hoàn tất. Nếu bạn thoát, chương trình sẽ không được cài.%n%nBạn có thể cài đặt lại vào lúc khác để hoàn tất cài đặt.%n%nThoát cài đặt? 
AboutSetupMenuItem=&About Setup...
AboutSetupTitle=About Setup
AboutSetupMessage=%1 version %2%n%3%n%n%1 home page:%n%4
AboutSetupNote=
TranslatorNote=

; *** Buttons
ButtonBack=< &Quay lại 
ButtonNext=&Tiếp theo > 
ButtonInstall=&Cài đặt 
ButtonOK=Đồng ý 
ButtonCancel=Hủy bỏ 
ButtonYes=&Có 
ButtonYesToAll=Có cho &Tất cả 
ButtonNo=&Không 
ButtonNoToAll=Không cho Tất cả 
ButtonFinish=&Hoàn tất 
ButtonBrowse=&Duyệt… 
ButtonWizardBrowse=D&uyệt... 
ButtonNewFolder=&Tạo thư mục mới 

; *** "Select Language" dialog messages
SelectLanguageTitle=Chọn ngôn ngữ cài đặt 
SelectLanguageLabel=Chọn ngôn ngữ để sử dụng trong khi cài đặt. 

; *** Common wizard text
ClickNext=Nhấn Tiếp theo để tiếp tục hoặc Hủy bỏ để thoát cài đặt. 
BeveledLabel=
BrowseDialogTitle=Duyệt thư mục 
BrowseDialogLabel=Chọn một thư mục trong danh sách bên dưới rồi nhấp OK. 
NewFolderName=Thư mục mới 

; *** "Welcome" wizard page
WelcomeLabel1=Chào mừng bạn đến thuật sĩ cài đặt [name] 
WelcomeLabel2=Chương trình này sẽ cài đặt [name/ver] trên máy vi tính.%n%nChúng tôi khuyến nghị bạn đóng tất cả các ứng dụng khác trước khi tiếp tục. 

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
WizardInfoBefore=Thông tin 
InfoBeforeLabel=Please read the following important information before continuing.
InfoBeforeClickLabel=When you are ready to continue with Setup, click Next.
WizardInfoAfter=Thông tin 
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
WizardSelectDir=Chọn vị trí đích 
SelectDirDesc=[name] nên được cài đặt ở đâu? 
SelectDirLabel3=Trình cài đặt sẽ cài [name] vào thư mục sau. 
SelectDirBrowseLabel=Để tiếp tục, nhấp Tiếp theo. Nếu bạn muốn chọn một thư mục khác, nhấp Duyệt. 
DiskSpaceMBLabel=Yêu cầu tối thiểu [mb] MB dung lượng đĩa trống. 
CannotInstallToNetworkDrive=Setup cannot install to a network drive.
CannotInstallToUNCPath=Setup cannot install to a UNC path.
InvalidPath=You must enter a full path with drive letter; for example:%n%nC:\APP%n%nor a UNC path in the form:%n%n\\server\share
InvalidDrive=The drive or UNC share you selected does not exist or is not accessible. Please select another.
DiskSpaceWarningTitle=Dung lượng ổ đĩa không đủ 
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
WizardSelectProgramGroup=Chọn thư mục Thực đơn khởi động 
SelectStartMenuFolderDesc=Trình cài đặt nên đặt lối tắt của chương trình ở đâu? 
SelectStartMenuFolderLabel3=Cài đặt sẽ tạo ra lối tắt chương trình trong thư mục Thực đơn khởi động sau. 
SelectStartMenuFolderBrowseLabel=Để tiếp tục, nhấp Tiếp theo. Nếu bạn muốn chọn một thư mục khác, nhấp Duyệt. 
MustEnterGroupName=Bạn phải nhập tên thư mục. 
GroupNameTooLong=The folder name or path is too long.
InvalidGroupName=The folder name is not valid.
BadGroupName=Tên thư mục không được có những ký tự sau: %n%n%1 
NoProgramGroupCheck2=&Don't create a Start Menu folder

; *** "Ready to Install" wizard page
WizardReady=Sẵn sàng cài đặt 
ReadyLabel1=Trình cài đặt đã sẵn sàng bắt đầu cài đặt [name] trên máy vi tính. 
ReadyLabel2a=Nhấp Cài đặt để tiếp tục cài hoặc nhấp Quay lại nếu bạn muốn xem lại hay đổi cài đặt. 
ReadyLabel2b=Nhấp Cài đặt để tiếp tục cài. 
ReadyMemoUserInfo=User information:
ReadyMemoDir=Vị trí đích: 
ReadyMemoType=Setup type:
ReadyMemoComponents=Selected components:
ReadyMemoGroup=Thư mục Thực đơn khởi động: 
ReadyMemoTasks=Additional tasks:

; *** "Preparing to Install" wizard page
WizardPreparing=Chuẩn bị cài đặt 
PreparingDesc=Trình cài đặt đang chuẩn bị cài [name] trên máy vi tính. 
PreviousInstallNotCompleted=The installation/removal of a previous program was not completed. You will need to restart your computer to complete that installation.%n%nAfter restarting your computer, run Setup again to complete the installation of [name].
CannotContinue=Trình cài đặt không thể tiếp tục. Nhấp Hủy bỏ để thoát. 
ApplicationsFound=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications.
ApplicationsFound2=The following applications are using files that need to be updated by Setup. It is recommended that you allow Setup to automatically close these applications. After the installation has completed, Setup will attempt to restart the applications.
CloseApplications=&Automatically close the applications
DontCloseApplications=&Do not close the applications
ErrorCloseApplications=Setup was unable to automatically close all applications. It is recommended that you close all applications using files that need to be updated by Setup before continuing.

; *** "Installing" wizard page
WizardInstalling=Đang cài đặt 
InstallingLabel=Vui lòng đợi khi trình cài đặt cài [name] trên máy vi tính. 

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Đang hoàn tất Thuật sĩ cài đặt [name] 
FinishedLabelNoIcons=Trình cài đặt đã hoàn tất cài [name] trên máy vi tính. 
FinishedLabel=Cài đặt đã hoàn tất [name] trên máy vi tính. Ứng dụng có thể được chạy bằng cách chọn lối tắt đã cài đặt. 
ClickFinish=Nhấp Hoàn tất để thoát cài đặt. 
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
AbortRetryIgnoreCancel=Huỷ cài đặt 

; *** Installation status messages
StatusClosingApplications=Closing applications...
StatusCreateDirs=Creating directories...
StatusExtractFiles=Đang giải nén tệp… 
StatusCreateIcons=Creating shortcuts...
StatusCreateIniEntries=Creating INI entries...
StatusCreateRegistryEntries=Creating registry entries...
StatusRegisterFiles=Registering files...
StatusSavingUninstall=Saving uninstall information...
StatusRunProgram=Đang hoàn tất cài đặt… 
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
ConfirmUninstall=Bạn có chắc chắn muốn gỡ bỏ hoàn toàn %1 và tất cả các cấu phần không? 
UninstallOnlyOnWin64=This installation can only be uninstalled on 64-bit Windows.
OnlyAdminCanUninstall=This installation can only be uninstalled by a user with administrative privileges.
UninstallStatusLabel=Vui lòng đợi khi %1 đang được gỡ bỏ khỏi máy vi tính. 
UninstalledAll=%1 đã được gỡ bỏ thành công khỏi máy vi tính. 
UninstalledMost=Gỡ bỏ %1 hoàn tất.%n%nMột số yếu tố không gỡ bỏ được. Có thể xóa thủ công. 
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
CreateDesktopIcon=Tạo một lối tắt ngoài màn hình 
CreateQuickLaunchIcon=Create a &Quick Launch shortcut
ProgramOnTheWeb=%1 trên web 
UninstallProgram=Gỡ bỏ %1 
LaunchProgram=Khởi động %1 
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
AutoStartProgramGroupDescription=Startup:
AutoStartProgram=Automatically start %1
AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?

; Kolibri Windows Installer custom messages
UpgradeMsg=Kolibri đã được cài đặt trên thiết bị này. Bạn có muốn cập nhật Kolibri không? 
UpgradeDelMsg=Nếu lựa chọn cài đặt mới và không cập nhật, bạn sẽ mất toàn bộ dữ liệu hiện có. Bạn hãy xác nhận muốn tiếp tục cài đặt mới. 
InstallPythonMsg=Bạn cần cài đặt Python 3.8+ trước để chạy Kolibri. Thuật sĩ thiết lập đã không tìm thấy Python trên hệ thống của bạn nên sẽ chuyển sang cài đặt Python. Hãy nhấn 'Có' để xác nhận và tiếp tục cài đặt. 
InstallPythonErrMsg=Kolibri không chạy được nếu không có Python. Nhấp OK để quay lại và cài Python hoặc nhấp Hủy bỏ để thoát trình cài đặt Kolibri 
SetupKolibriErrMsg=Lỗi nghiêm trọng. Các phụ thuộc không cài đặt được. Mã số lỗi: 
KolibriInstallFailed=Đã có lỗi trong khi cài đặt Kolibri.%nCó thể tìm thấy thông tin thêm trong tệp nhật ký: 
SetupWizardMsg=Trình cài đặt đang sao chép tệp. Quá trình này có thể mất thời gian, vui lòng đợi… 
LaunchKolibri=Khởi động Kolibri 
KolibriSupportLink=Diễn đàn cộng đồng 
KolibriHomePage=Trang chủ 
KolibriDocs=Tài liệu 
FileNotFound= không tìm thấy. 
Needhelp=Để tìm kiếm hỗ trợ trên mạng, hãy truy cập diễn đàn cộng đồng: 
CommunityLink=https://community.learningequality.org 
UninstallKolibriDataLine1=Bạn có muốn xóa tất cả dữ liệu gắn liền với Kolibri không? 
UninstallKolibriDataLine2=Hành động này sẽ xóa vĩnh viễn tất cả các kênh nội dung đã tải về và dữ liệu tương tác người dùng. 
UninstallKolibriDataLine3=Không thể hoàn tác thao tác này. 
UninstallKolibriPath=Vị trí dữ liệu: 
