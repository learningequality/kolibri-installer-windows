#define MyAppName "Kolibri"
#define MyAppPublisher "Foundation for Learning Equality"
#define MyAppURL "http://learningequality.org/"
#define MyAppExeName "Kolibri.exe"

#define getKolibriVersion() \
    Local[1] = GetEnv("KOLIBRI_BUILD_VERSION")

#define TargetVersion = getKolibriVersion();

#expr DeleteFile(SourcePath+"\version.temp")

[Setup]
AppId={#MyAppName}-{#MyAppPublisher}
AppName={#MyAppName}
AppVersion={#TargetVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=..\kolibri\LICENSE
OutputDir=..\
OutputBaseFilename=KolibriSetup-{#TargetVersion}
SetupIconFile=..\gui-packed\images\logo48.ico
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin
UsePreviousAppDir=yes
ChangesEnvironment=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\kolibri_static*.whl"; DestDir: "{app}\kolibri"
Source: "..\scripts\kolibri-stop.bat"; DestDir: "\Python34\Scripts\"
Source: "..\gui-packed\Kolibri.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\gui-packed\guitools.vbs"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\gui-packed\images\logo48.ico"; DestDir: "{app}\images"; Flags: ignoreversion
Source: "..\gui-packed\icon\logo48.ico"; DestDir: "{app}\icon"; Flags: ignoreversion
Source: "..\python-setup\*"; DestDir: "{app}\python-setup"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\images\logo48.ico"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon ; IconFilename: "{app}\icon\logo48.ico"

[Dirs]
Name: "{app}\"; Permissions: everyone-readexec

[InstallDelete]
Type: Files; Name: "{app}\*"

[UninstallDelete]
Type: filesandordirs; Name: "{app}\kolibri*"
Type: files; Name: "{userstartup}\Kolibri.lnk"
Type: files; Name: "{app}\CONFIG.dat"

[UninstallRun]
Filename: \Python34\Scripts\pip.exe; Parameters: "uninstall --yes kolibri-static"; Flags: runhidden;
Filename: C:\Windows\System32\cmd.exe; Parameters: "/c setx KOLIBRI_SCRIPT_DIR """; Flags: runhidden;

[Code]
function GetPreviousVersion : String; Forward;

var
  installFlag : boolean;
  startupFlag : string;
  ServerInformationPage : TInputQueryWizardPage;
  StartupOptionsPage : TOutputMsgWizardPage;
  isUpgrade : boolean;
  stopServerCode: integer;
  removeOldGuiTool: integer;
  uninstallError: integer;
  saveDatabaseTemp : integer;
  cleanOldKaliteFolder : integer;
  restoreDatabaseTemp : integer;
  forceCancel : boolean;

procedure InitializeWizard;
begin
    isUpgrade := False;
    forceCancel := False;

    if WizardForm <> nil then
    begin
        ShellExec('open', 'taskkill.exe', '/F /T /im "Kolibri.exe"', '', SW_HIDE, ewWaitUntilTerminated, stopServerCode);
        ShellExec('open', 'tskill.exe', '"Kolibri"', '', SW_HIDE, ewWaitUntilTerminated, stopServerCode);
        Exec(ExpandConstant('{cmd}'),'/C del winshortcut.vbs', WizardForm.PrevAppDir, SW_HIDE, ewWaitUntilTerminated, removeOldGuiTool);
    end;

end;

procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
  if forceCancel = True then
  begin
    Confirm := False;
  end;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
    result := False;
    if isUpgrade = True then
    begin
        if PageID = ServerInformationPage.ID then
        begin
            result := True;
        end;
        if PageID = wpSelectDir then
        begin
            result := True;
        end;
    end;
end;

procedure RemoveOldInstallation(targetPath : String);
begin
    WizardForm.Hide;
    if Not Exec(ExpandConstant('{cmd}'),'/C ( dir /b "unins***.exe" | findstr /r "unins[0-9][0-9][0-9].exe" ) > tempu & ( for /f "delims=" %A in ( tempu ) do call %A /SILENT /SUPPRESSMSGBOXES ) & del tempu', targetPath, SW_HIDE, ewWaitUntilTerminated, uninstallError) then
    begin
        Exec(ExpandConstant('{cmd}'),'/C mkdir '+ExpandConstant('{tmp}')+'\ka-lite\kalite\database & xcopy /y /s ka-lite\kalite\database\data.sqlite '+ExpandConstant('{tmp}')+'\ka-lite\kalite\database', targetPath, SW_HIDE, ewWaitUntilTerminated, saveDatabaseTemp);
        Exec(ExpandConstant('{cmd}'),'/C cd .. & del /q "'+targetPath+'\*" & for /d %x in ( "'+targetPath+'\*" ) do @rd /s /q "%x"', targetPath, SW_HIDE, ewWaitUntilTerminated, cleanOldKaliteFolder);
        Exec(ExpandConstant('{cmd}'),'/C mkdir ka-lite\kalite\database & xcopy /y /s '+ExpandConstant('{tmp}')+'\ka-lite\kalite\database\data.sqlite ka-lite\kalite\database', targetPath, SW_HIDE, ewWaitUntilTerminated, restoreDatabaseTemp);
    end;
    WizardForm.Show;
end;

{ Get the previous version number by checking the uninstall key registry values. }
{ IS writes quite a bit of information to the registry by default: https://github.com/jrsoftware/issrc/blob/5203240a7de9b83c5432bee0b5b09d467869a02b/Projects/Install.pas#L434 }
function GetPreviousVersion : String;
var
    subkey : String;
begin
    subkey := 'Software\Microsoft\Windows\CurrentVersion\Uninstall\KA Lite-Foundation for Learning Equality_is1';
    result := '';
    { 32-bit programs have a virtualized registry on 64-bit windows. So check all possible root keys. }
    if Not RegQueryStringValue(HKLM, subkey, 'DisplayVersion', result) then
    begin
        if Not RegQueryStringValue(HKCU, subkey, 'DisplayVersion', result) then
        begin
            if IsWin64 then
            begin
                if Not RegQueryStringValue(HKLM64, subkey, 'DisplayVersion', result) then
                begin
                    if Not RegQueryStringValue(HKCU64, subkey, 'DisplayVersion', result) then
                    begin
                        { Couldn't determine the previous version, so result is '' }
                    end;
                end;
            end;
        end;
    end;
end;

procedure ConfirmUpgradeDialog;
begin
    if MsgBox('We have detected an existing KA Lite installation; would you like to upgrade?', mbInformation,  MB_YESNO or MB_DEFBUTTON1) = IDYES then
    begin
        isUpgrade := True;
    end
    else if MsgBox('Installing fresh will delete all of your existing data; is this what you really want to do?', mbInformation,  MB_YESNO or MB_DEFBUTTON2) = IDYES then
    begin
        isUpgrade := False;
    end
    else
    begin
        isUpgrade := True;
    end;
end;

{ Copy files a la the gitmigrate management command, but use native windows executables instead. }
{ We assume the installing user is the main user of the app, so content goes into that user's .kalite dir}
procedure DoGitMigrate;
var
    retCodeContent, retCodeDB, retCode : integer;
begin
    MsgBox('Migrating old data to current user''s %USERPROFILE%\.kalite\ directory.', mbInformation, MB_OK);
    Exec(ExpandConstant('{cmd}'), '/S /C "mkdir "%USERPROFILE%\.kalite""', '', SW_SHOW, ewWaitUntilTerminated, retCode);
    Exec(ExpandConstant('{cmd}'), '/S /C "xcopy "' + WizardForm.PrevAppDir + '\ka-lite\content" "%USERPROFILE%\.kalite\content\" /Y"', '', SW_SHOW, ewWaitUntilTerminated, retCodeContent);
    Exec(ExpandConstant('{cmd}'), '/S /C "xcopy "' + WizardForm.PrevAppDir + '\ka-lite\kalite\database" "%USERPROFILE%\.kalite\database\" /Y"', '', SW_SHOW, ewWaitUntilTerminated, retCodeDB);
    if (retCodeContent <> 0) or (retCodeDB <> 0) then
    begin
        MsgBox('Something went wrong! Unable to backup your data. Continuing installation.', mbError, MB_OK);
    end;
end;

{ In version 0.13.x or below, users who selected the "Run KA Lite at system startup" option ran KA Lite as the }
{ SYSTEM user. Starting in 0.16.0, it will be run as the current user. Consequently, data must be migrated from the }
{ SYSTEM user's profile to the new location. }
procedure MoveSystemKaliteData;
var
    systemKaliteDir: String;
    userKaliteDir: String;
    userKaliteDirBackup: String;
    resultCode: Integer;
begin
    systemKaliteDir := 'C:\Windows\System32\config\systemprofile\.kalite';
    if DirExists(systemKaliteDir) then
    begin
        if(MsgBox('You may need to migrate data from the SYSTEM user''s profile to the current user''s profile.' #13#13
                  'This is because of a change in the behavior of KA Lite using the "Run KA Lite at system startup" option.' #13
                  'If you use this option, we recommend clicking yes. Your data will be backed up.' #13#13
                  'Would you like to migrate data from the SYSTEM user''s profile to the current user''s profile?', mbConfirmation, MB_YESNO) = idYes) then
        begin
            userKaliteDir := ExpandConstant('{%USERPROFILE}\.kalite');
            userKaliteDirBackup := userKaliteDir + '.backup';
            if DirExists(userKaliteDir) then
            begin
                MsgBox(userKaliteDir + ' already exists, backing up to ' + userKaliteDirBackup, mbInformation, MB_OK);
                if not Exec(ExpandConstant('{cmd}'), '/C "xcopy  "' + userKaliteDir +'" "' + userKaliteDirBackup +'\" /Y /S"', '', SW_SHOW, ewWaitUntilTerminated, resultCode) then
                begin
                    MsgBox('Backup .kalite file copy fail.', mbInformation, MB_OK);
                end;
            end;
            if not Exec(ExpandConstant('{cmd}'), '/C "xcopy  "' + systemKaliteDir +'" "' + userKaliteDir +'\" /Y /S"', '', SW_SHOW, ewWaitUntilTerminated, resultCode) then
            begin
                MsgBox('System .kalite file copy fail.', mbInformation, MB_OK);
            end;
        end;
    end;
end;

procedure HandleUpgrade(targetPath : String);
var
    prevVerStr : String;
    retCode: Integer;
begin
    prevVerStr := GetPreviousVersion();
    if (CompareStr('{#TargetVersion}', prevVerStr) >= 0) and not (prevVerStr = '') then
    begin
        ConfirmUpgradeDialog;
        if Not isUpgrade then
        begin
            if Not DeleteFile(targetPath + '\ka-lite\kalite\database\data.sqlite') then
            begin
                MsgBox('Error' #13#13 'Failed to delete the old database as requested; aborting the install.', mbError, MB_OK);
                forceCancel := True;
                WizardForm.Close;
            end;
        end
        else
        begin
            { This is where version-specific migration stuff should happen. }

            if CompareStr(prevVerStr, '0.13.99') < 0 then
            begin
                if CompareStr('{#TargetVersion}', '0.14.0') >= 0 then
                begin
                    DoGitMigrate;
                end;
            end;

            { A special case where we'd like to remove a scheduled task, since it should now be run as current user }
            { instead of the SYSTEM user. }
            if CompareStr(prevVerStr, '0.15.99') < 0 then
            begin
                if CompareStr('{#TargetVersion}', '0.16.0') >= 0 then
                begin
                    Exec(ExpandConstant('{cmd}'),'/C "schtasks /delete /tn "KALite" /f"', '', SW_SHOW, ewWaitUntilTerminated, retCode);
                end;
            end;

            { Migrating from 0.14.x and 0.15.x to 0.16.x }
            if (CompareStr(prevVerStr, '0.14.0') >= 0) and (CompareStr(prevVerStr, '0.15.99') < 0) then
            begin
                if CompareStr('{#TargetVersion}', '0.16.0') >= 0 then
                begin
                    MoveSystemKaliteData;
                end;
            end;
        end;

        { forceCancel will be true if something went awry in DoGitMigrate... abort instead of trampling the user's data. }
        if Not forceCancel then
        begin
            RemoveOldInstallation(targetPath);
        end;
    end;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
    result := True;

    if CurPageID = wpLicense then
    begin
        if WizardForm <> nil then
            HandleUpgrade(WizardForm.PrevAppDir);
    end;
    
    if CurPageID = wpSelectDir then
    begin
        { Unclear what the logic here is. This is only executed if HandleUpgrade was not previously run. }
        if Not isUpgrade then
            HandleUpgrade(ExpandConstant('{app}'));
    end;
end;

procedure HandlePythonSetup;
var
    installPythonErrorCode : Integer;
begin
    if(MsgBox('Python 3.4.2+ is required to install Kolibri on Windows; do you wish to first install Python 3.4.4, before continuing with the installation of Kolibri?', mbConfirmation, MB_YESNO) = idYes) then
    begin
        ExtractTemporaryFile('python-3.4.4.amd64.msi');
        ExtractTemporaryFile('python-3.4.4.msi');
        ExtractTemporaryFile('python-exe.bat');
        ShellExec('open', ExpandConstant('{tmp}')+'\python-exe.bat', '', '', SW_SHOWNORMAL, ewWaitUntilTerminated, installPythonErrorCode);
    end
    else begin
        MsgBox('Error' #13#13 'You must have Python 3.4.4+ installed to proceed! Installation will now exit.', mbError, MB_OK);
        forceCancel := True;
        WizardForm.Close;
    end;
end;

{ Used in GetPipPath below }
const
    DEFAULT_PATH = '\Python34\Scripts\pip.exe';

{ Returns the path of pip.exe on the system. }
{ Tries several different locations before prompting user. }
function GetPipPath: string;
var
    path : string;
    i : integer;
begin
    for i := Ord('C') to Ord('H') do
    begin
        path := Chr(i) + ':' + DEFAULT_PATH;
        if FileExists(path) then
        begin
            Result := path;
            exit;
        end;
    end;
    MsgBox('Could not find pip.exe. Please select the location of pip.exe to continue installation.', mbInformation, MB_OK);
    if GetOpenFileName('Please select pip.exe', path, '', 'All files (*.*)|*.*', 'exe') then
    begin
        Result := path;
    end
    else begin
        MsgBox('Fatal error'#13#13'Please install pip and try again.', mbError, MB_OK);
        forceCancel := True;
        Result := '';
    end;
end;

procedure HandlePipSetup;
var
    PipCommand: string;
    PipPath: string;
    ErrorCode: integer;

begin
    PipPath := GetPipPath;
    if PipPath = '' then
        exit;
    PipCommand := 'install "' + ExpandConstant('{app}') + '\kolibri\kolibri_static-' + '{#TargetVersion}' + '-py2.py3-none-any' + '.whl"';
    MsgBox('Setup will now install Kolibri source files to your Python site-packages.', mbInformation, MB_OK);
    if not Exec(PipPath, PipCommand, '', SW_SHOW, ewWaitUntilTerminated, ErrorCode) then
    begin
      MsgBox('Critical error.' #13#13 'Dependencies have failed to install. Error Number: ' + IntToStr(ErrorCode), mbInformation, MB_OK);
      forceCancel := True;
      WizardForm.Close;
    end;

    { Must set this environment variable so the systray executable knows where to find the installed kolibri.exe script}
    { Should by in the same directory as pip.exe, e.g. 'C:\Python34\Scripts' }
    RegWriteStringValue(
        HKLM,
        'System\CurrentControlSet\Control\Session Manager\Environment',
        'KOLIBRI_SCRIPT_DIR',
        ExtractFileDir(PipPath)
    );
end;

function InitializeSetup(): Boolean;
var
  PythonVersionCodeCheck: integer;
  killErrorCode: integer;
begin
    installFlag:=true;
    Result := true;
    startupFlag:=''; 
  
    ShellExec('open', 'taskkill.exe', '/F /T /im "Kolibri.exe"', '', SW_HIDE, ewWaitUntilTerminated, killErrorCode)
    ShellExec('open', 'tskill.exe', ' "Kolibri"', '', SW_HIDE, ewWaitUntilTerminated, killErrorCode);

    RegDeleteValue(HKCU, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Run', ExpandConstant('{#MyAppName}'));
   
    if ShellExec('open', 'python.exe','-c "import sys; (sys.version_info >= (3, 4, 2,) and sys.version_info > (3,) and sys.exit(0)) or sys.exit(1)"', '', SW_HIDE, ewWaitUntilTerminated, PythonVersionCodeCheck) then
    begin
        Log('The Value is: ' + IntToStr(PythonVersionCodeCheck));
        if PythonVersionCodeCheck = 1 then
        begin
            HandlePythonSetup();
        end;
    end
    else 
    begin
        HandlePythonSetup();
    end; 
end;

function InitializeUninstall(): Boolean;
var
ErrorCode: Integer;
begin
  ShellExec('open', 'taskkill.exe', '/F /T /im "Kolibri.exe"', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode);
  ShellExec('open', 'tskill.exe', '"Kolibri"', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode);
  result := True;
end;

procedure DoSetup;
var
    retCode: integer;
begin
    { Used to have more responsibility, but we delegated those to the app itself! }
    { Unpacks the English content pack. }
    Exec(ExpandConstant('{cmd}'), '/S /C "' + ExpandConstant('"{reg:HKLM\System\CurrentControlSet\Control\Session Manager\Environment,KOLIBRI_SCRIPT_DIR}\kolibri.bat"') + ' manage retrievecontentpack local en en.zip --foreground"', ExpandConstant('{app}'), SW_SHOW, ewWaitUntilTerminated, retCode);
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  informationBoxFlagged: boolean;
  userKolibriDir: String;
  extractContent: String;
begin
    if CurStep = ssInstall then
    begin
        informationBoxFlagged :=False;
        
        ShellExec('open', 'taskkill.exe', '/F /T /im "Kolibri.exe"', '', SW_HIDE, ewWaitUntilTerminated, stopServerCode);
        ShellExec('open', 'tskill.exe', '"Kolibri"', '', SW_HIDE, ewWaitUntilTerminated, stopServerCode);
        Exec(ExpandConstant('{cmd}'),'/C del winshortcut.vbs', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, removeOldGuiTool);  
    end;

    if CurStep = ssPostInstall then
    begin
        if installFlag then
        begin
            HandlePipSetup();
            if Not forceCancel then
            begin
                DoSetup;
            end;
        end;
    end;

end;

{ Called just prior to uninstall finishing. }
{ Clean up things we did during uninstall: }
{ * Remove environment variable KALITE_SCRIPT_DIR, which is set starting in version 0.16.x }
{ * Previously (versions 0.13.x to 0.15.x) KALITE_ROOT_DATA_PATH was set -- it should be unset by the respective }
{   uninstallers of those versions }
procedure DeinitializeUninstall();
begin
    RegDeleteValue(
        HKLM,
        'System\CurrentControlSet\Control\Session Manager\Environment',
        'Kolibri_SCRIPT_DIR'
    )
end;