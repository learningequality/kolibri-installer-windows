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
Name: "English"; MessagesFile: "compiler:default.isl"

[Files]
Source: "..\kolibri*.whl"; DestDir: "{app}\kolibri"
Source: "..\scripts\reset-env-vars.bat"; DestDir: "\Python27\Scripts\"
Source: "..\scripts\*.bat"; DestDir: "{app}\kolibri\scripts\"
Source: "..\gui-packed\locale\*"; DestDir: "{app}\locale"; Flags: ignoreversion recursesubdirs
Source: "..\gui-packed\Kolibri.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\gui-packed\guitools.vbs"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\gui-packed\images\logo48.ico"; DestDir: "{app}\images"; Flags: ignoreversion
Source: "..\gui-packed\icon\logo48.ico"; DestDir: "{app}\icon"; Flags: ignoreversion
Source: "..\python-setup\*"; DestDir: "{app}\python-setup"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\images\logo48.ico"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\icon\logo48.ico"

[Dirs]
Name: "{app}\"; Permissions: everyone-readexec

[Run]
Filename: "{cmd}"; Parameters: "/k {code:getPipDir}\reset-env-vars.bat && ""{app}\Kolibri.exe"""; Check: FileExists('{code:getPipDir}\kolibri.exe'); Description: "Launch Kolibri"; Flags: nowait runhidden postinstall skipifsilent; 

[InstallDelete]
Type: Files; Name: "{app}\*"

[UninstallDelete]
Type: filesandordirs; Name: "{app}\kolibri*"
Type: files; Name: "{userstartup}\Kolibri.lnk"
Type: files; Name: "{app}\CONFIG.dat"

[UninstallRun]
Filename: {app}\kolibri\scripts\uninstall-kolibri.bat; Parameters: ""; Flags: runhidden;

[Code]
function GetPreviousVersion : String; Forward;

var
  installFlag : boolean;
  startupFlag : string;
  StartupOptionsPage : TOutputMsgWizardPage;
  isUpgrade : boolean;
  stopServerCode: integer;
  removeOldGuiTool: integer;
  uninstallError: integer;
  saveDatabaseTemp : integer;
  cleanOldKolibriFolder : integer;
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
        Exec(ExpandConstant('{cmd}'),'/C cd .. & del /q "'+targetPath+'\*" & for /d %x in ( "'+targetPath+'\*" ) do @rd /s /q "%x"', targetPath, SW_HIDE, ewWaitUntilTerminated, cleanOldKolibriFolder);
    end;
    WizardForm.Show;
end;

{ Get the previous version number by checking the uninstall key registry values. }
{ IS writes quite a bit of information to the registry by default: https://github.com/jrsoftware/issrc/blob/5203240a7de9b83c5432bee0b5b09d467869a02b/Projects/Install.pas#L434 }
function GetPreviousVersion : String;
var
    subkey : String;
begin
    subkey := 'Software\Microsoft\Windows\CurrentVersion\Uninstall\Kolibri-Foundation for Learning Equality_is1';
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
    if MsgBox('We have detected an existing Kolibri installation; would you like to upgrade?', mbInformation,  MB_YESNO or MB_DEFBUTTON1) = IDYES then
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

procedure HandleUpgrade(targetPath : String);
var
    prevVerStr : String;
    retCode: Integer;
begin
    prevVerStr := GetPreviousVersion();
    if (CompareStr('{#TargetVersion}', prevVerStr) >= 0) and not (prevVerStr = '') then
    begin
        ConfirmUpgradeDialog;
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

{REF: http://stackoverflow.com/questions/4438506/exit-from-inno-setup-instalation-from-code}
procedure ExitProcess(uExitCode: Integer);
  external 'ExitProcess@kernel32.dll stdcall';

procedure HandlePythonSetup;
var
    installPythonErrorCode : Integer;
begin
    if(MsgBox('Python 2.7.13+ is required to install Kolibri on Windows; do you wish to first install Python 2.7.13, before continuing with the installation of Kolibri?', mbConfirmation, MB_YESNO) = idYes) then
    begin
        ExtractTemporaryFile('python-2.7.13.amd64.msi');
        ExtractTemporaryFile('python-2.7.13.msi');
        ExtractTemporaryFile('python-exe.bat');
        ShellExec('open', ExpandConstant('{tmp}')+'\python-exe.bat', '', '', SW_HIDE, ewWaitUntilTerminated, installPythonErrorCode);
    end
    else begin
        if(MsgBox('Warning' #13#13 'Kolibri cannot run without installing Python.' #13#13 'Click Ok to go back and install Python, or Cancel to quit the Kolibri installer.', mbError, MB_OKCANCEL) = idCANCEL) then
          begin
            forceCancel := True;
            ExitProcess(1);
          end
        else begin
           HandlePythonSetup(); 
        end
    end;
end;

{ Used in GetPipPath below }
const
    DEFAULT_PATH = '\Python27\Scripts\pip.exe';

{ Returns the path of pip.exe on the system. }
{ Tries several different locations before prompting user. }

function FailedInstallation : String;
begin
    MsgBox('Kolibri installation failed. ' #13#13 'Kolibri installer encountered an error during the installation process.', mbError, MB_OK);
    RemoveOldInstallation(ExpandConstant('{app}'));
    forceCancel := True   
    ExitProcess(1);
    end;

function GetPipPath : String;
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
    begin
        FailedInstallation;
        Result := '';
    end;
end;

function GetPipDir(Value: string): String;
begin
    result := ExtractFileDir(GetPipPath);
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
    PipCommand := 'install "' + ExpandConstant('{app}') + '\kolibri\kolibri-' + '{#TargetVersion}' + '-py2.py3-none-any' + '.whl"';
    {MsgBox('Setup will now install Kolibri source files to your Python site-packages.', mbInformation, MB_OK);  }
    WizardForm.StatusLabel.Caption := 'Setup wizard is copying files. This may take a while, please wait...';
    WizardForm.StatusLabel.Font.Style := [fsBold];
    if not Exec(PipPath, PipCommand, '', SW_HIDE, ewWaitUntilTerminated, ErrorCode) then
    begin
      FailedInstallation;
      forceCancel := True;
      WizardForm.Close;
    end;

    { Delete existing user and system KOLIBRI_SCRIPT_DIR envitoment variables }
    RegDeleteValue(
        HKLM,
        'System\CurrentControlSet\Control\Session Manager\Environment',
        'KOLIBRI_SCRIPT_DIR'
    )
    Exec('cmd.exe', '/c "reg delete HKCU\Environment /F /V KOLIBRI_SCRIPT_DIR"', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode)
    { Must set this environment variable so the systray executable knows where to find the installed kolibri.exe script}
    { Should by in the same directory as pip.exe, e.g. 'C:\Python27\Scripts' }
    RegWriteStringValue(
        HKLM,
        'System\CurrentControlSet\Control\Session Manager\Environment',
        'KOLIBRI_SCRIPT_DIR',
        GetPipDir('')
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
   
    if ShellExec('open', 'python.exe','-c "import sys; (sys.version_info >= (2, 7, 13,) and sys.version_info < (3,) and sys.exit(0)) or sys.exit(1)"', '', SW_HIDE, ewWaitUntilTerminated, PythonVersionCodeCheck) then
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
        end;
    end;

end;

{ Called just prior to uninstall finishing. }
{ Clean up things we did during uninstall: }
{   uninstallers of those versions }
procedure DeinitializeUninstall();
begin
    RegDeleteValue(
        HKLM,
        'System\CurrentControlSet\Control\Session Manager\Environment',
        'Kolibri_SCRIPT_DIR'
    )
end;