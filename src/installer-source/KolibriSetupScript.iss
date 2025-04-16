#define MyAppName "Kolibri"
#define MyAppPublisher "Foundation for Learning Equality"
#define MyAppURL "https://learningequality.org/kolibri"
#define MyAppSupportURL "https://community.learningequality.org/c/support/kolibri"
#define MyDocsURL "https://kolibri.readthedocs.io"
#define MyAppExeName "Kolibri.exe"
#define TargetVersion =  GetEnv("KOLIBRI_BUILD_VERSION")
#expr DeleteFile(SourcePath+"\version.temp") 

[Setup]
AppId={#MyAppName}-{#MyAppPublisher}
AppName={#MyAppName}
AppVersion={#TargetVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=..\..\exe
OutputBaseFilename=kolibri-{#TargetVersion}-windows-setup-unsigned
SetupIconFile=..\gui-packed\images\logo48.ico
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin
UsePreviousAppDir=yes
ChangesEnvironment=yes
SetupLogging=yes
UsedUserAreasWarning=no
ShowLanguageDialog=yes

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "vi"; MessagesFile: "compiler:Languages\Vietnamese.isl" 
Name: "sw_TZ"; MessagesFile: "compiler:Languages\Swahili_Tanzania.isl" 
Name: "km"; MessagesFile: "compiler:Languages\Khmer.isl" 
Name: "es_ES"; MessagesFile: "compiler:Languages\Spanish.isl" 
Name: "mr"; MessagesFile: "compiler:Languages\Marathi.isl" 
Name: "fv"; MessagesFile: "compiler:Languages\Fulfulde_Mbororoore.isl" 
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl" 
Name: "te"; MessagesFile: "compiler:Languages\Telugu.isl" 
Name: "tl"; MessagesFile: "compiler:Languages\Tagalog.isl" 
Name: "gu_IN"; MessagesFile: "compiler:Languages\Gujarati.isl" 
Name: "yo"; MessagesFile: "compiler:Languages\Yoruba.isl" 
Name: "zh_CN"; MessagesFile: "compiler:Languages\Chinese_Simplified.isl" 
Name: "my"; MessagesFile: "compiler:Languages\Burmese.isl" 
Name: "ar"; MessagesFile: "compiler:Languages\Arabic.isl" 
Name: "pt_BR"; MessagesFile: "compiler:Languages\Portuguese_Brazilian.isl" 
Name: "bg"; MessagesFile: "compiler:Languages\Bulgarian.isl" 
Name: "bn"; MessagesFile: "compiler:Languages\Bengali.isl" 
Name: "hi"; MessagesFile: "compiler:Languages\Hindi.isl" 
Name: "ka"; MessagesFile: "compiler:Languages\Georgian.isl" 
Name: "de"; MessagesFile: "compiler:Languages\German.isl" 
Name: "ny"; MessagesFile: "compiler:Languages\Chewa.isl" 
Name: "ko"; MessagesFile: "compiler:Languages\Korean.isl" 
Name: "fr"; MessagesFile: "compiler:Languages\French.isl" 
Name: "fa"; MessagesFile: "compiler:Languages\Persian.isl" 
Name: "la"; MessagesFile: "compiler:Languages\Spanish_Latin_America.isl" 
Name: "ne_NP"; MessagesFile: "compiler:Languages\Nepali.isl" 
Name: "ur_PK"; MessagesFile: "compiler:Languages\Urdu_(Pakistan).isl" 
Name: "tr"; MessagesFile: "compiler:Languages\Turkish.isl"


[Files]
Source: "..\kolibri*.whl"; DestDir: "{app}\kolibri"
Source: "..\scripts\reset-env-vars.bat"; DestDir: "{code:getPipDir}\"
Source: "..\scripts\*.bat"; DestDir: "{app}\kolibri\scripts\"
Source: "..\gui-packed\Kolibri.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\gui-packed\guitools.vbs"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\gui-packed\images\logo48.ico"; DestDir: "{app}\images"; Flags: ignoreversion
Source: "..\gui-packed\icon\logo48.ico"; DestDir: "{app}\icon"; Flags: ignoreversion
Source: "..\python-setup\*"; DestDir: "{app}\python-setup"; Flags: ignoreversion
Source: "..\inno-compiler\SecurityAndMaintenance_Error.bmp"; DestDir: "{app}";

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\images\logo48.ico"
Name: "{group}\{cm:KolibriHomePage,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:KolibriDocs}"; Filename: "{#MyDocsURL}"
Name: "{group}\{cm:KolibriSupportLink}"; Filename: "{#MyAppSupportURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; Parameters: "/LOG={commondesktop}\kolibri-uninstall.log";
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\icon\logo48.ico"

[Dirs]
Name: "{app}\"; Permissions: everyone-readexec

[Run]
Filename: "{cmd}"; Parameters: "/k {code:getPipDir}\reset-env-vars.bat && ""{app}\Kolibri.exe"""; Description: "{cm:LaunchKolibri}"; Flags: nowait runhidden postinstall skipifsilent; 

[InstallDelete]
Type: Files; Name: "{app}\*"

[UninstallDelete]
Type: filesandordirs; Name: "{app}\kolibri*"
Type: files; Name: "{userstartup}\Kolibri.lnk"
Type: files; Name: "{app}\CONFIG.dat"

[UninstallRun]
Filename: {app}\kolibri\scripts\uninstall-kolibri.bat; Parameters: ""; Flags: runhidden;

[Code]

function GetHKLM: Integer;
begin
  if IsWin64 then
    Result := HKLM64
  else
    Result := HKLM32;
end;

function GetPreviousVersion : String; Forward;

var
  installFlag : boolean;
  startupFlag : string;
  isUpgrade : boolean;
  stopServerCode: integer;
  removeOldGuiTool: integer;
  uninstallError: integer;
  cleanOldKolibriFolder : integer;
  forceCancel : boolean;
  isWindowsInstall : boolean;

function OpenLogFile():string;
var
  logfilepathname: string;
  logfilename: string;
  newfilepathname: string;
begin
    logfilepathname := ExpandConstant('{log}');
    logfilename := ExtractFileName(logfilepathname);
    RenameFile(logfilename,'Kolibri-setup.log');
    newfilepathname := ExpandConstant('{%HOMEPATH}') + '\Desktop\Kolibri-setup.log';

    if FileExists(newfilepathname) then DeleteFile(newfilepathname);

    filecopy(logfilepathname, newfilepathname, false);
end;

procedure URLLabelOnClick(Sender: TObject);
var
  errorCode: Integer;
begin
  ShellExecAsOriginalUser('open', CustomMessage('CommunityLink'), '', '', SW_SHOWNORMAL, ewNoWait, errorCode);
end;

procedure FileLabelOnClick(Sender: TObject);
var
  errorCode: Integer;
begin
  ShellExecAsOriginalUser('open',  ExpandConstant('{sd}' + '{%HOMEPATH}') + '\Desktop\Kolibri-setup.log', '', '', SW_SHOWNORMAL, ewNoWait, errorCode);
end;

{Customize message box}
function CustomizeMsgbox(msgErr: string):integer;
var
  form: TSetupForm;
  okButton: TNewButton;
  failToInstall: TLabel;
  logPath: TLabel;
  needHelp: TLabel;
  forumsLink: TLabel;
  errDetails: TLabel;
  memoErrMsg: TNewMemo;
  bitmapImage: TBitmapImage;
  bitmapFileName : string;

begin
  form := CreateCustomForm;
  with form do
    begin
        BorderStyle := bsDialog;
        Position := poScreenCenter;
        ClientWidth := ScaleX(380);
        ClientHeight := ScaleY(240);
        Caption := 'Setup Error';
        Color := clWindow;
        ParentBackground := False;
    end;
  
  failToInstall := TLabel.Create(Form);
  with failToInstall do
    begin
        Parent := Form;
        Left := ScaleX(70);
        Top := ScaleX(16);
        Width := Form.ClientWidth - 2*ScaleX(130);
        Height := ScaleY(150);
        AutoSize := True;
        WordWrap := false;
        Caption := CustomMessage('KolibriInstallFailed');
        Font.Size := 8;
    end;
  Log(CustomMessage('KolibriInstallFailed'));
  
  logPath := TLabel.Create(Form);
  with logPath do
    begin
        Parent := Form;
        Left := ScaleX(70);
        Top := ScaleX(45);
        Width := Form.ClientWidth - 2*ScaleX(130);
        Height := ScaleY(170);
        AutoSize := True;
        WordWrap := false;
        Caption := ExpandConstant('{sd}' + '{%HOMEPATH}') + '\Desktop\Kolibri-setup.log';
        Cursor := crHand;
        OnClick := @FileLabelOnClick;
        Font.Style := LogPath.Font.Style + [fsUnderline];
        Font.Color := clHotLight
        Font.Size := 8;
    end;
  Log(ExpandConstant('{sd}' + '{%HOMEPATH}') + '\Desktop\Kolibri-setup.log');
  
  needHelp := TLabel.Create(Form);
  with needHelp do
    begin
        Parent := Form;
        Left := ScaleX(70);
        Top := ScaleX(72);
        Width := Form.ClientWidth - 2*ScaleX(130);
        Height := ScaleY(150);
        AutoSize := True;
        WordWrap := false;
        Caption := CustomMessage('Needhelp');
        Font.Size := 8;  
    end;
  Log(CustomMessage('Needhelp'));

  forumsLink := TLabel.Create(Form);
  with forumsLink do
    begin
        Parent := Form;
        Left := ScaleX(70);
        Top := ScaleX(89);
        Width := Form.ClientWidth - 2*ScaleX(130);
        Height := ScaleY(150);
        AutoSize := True;
        WordWrap := false;
        Caption := CustomMessage('CommunityLink');
        Cursor := crHand;
        OnClick := @URLLabelOnClick;
        Font.Style := ForumsLink.Font.Style + [fsUnderline];
        Font.Color := clHotLight
        Font.Size := 8;
    end;
  Log(CustomMessage('CommunityLink'));

  errDetails := TLabel.Create(Form);
  with errDetails do
    begin
        Parent := Form;
        Left := ScaleX(70);
        Top := ScaleX(118);
        Width := Form.ClientWidth - 2*ScaleX(130);
        Height := ScaleY(150);
        AutoSize := True;
        WordWrap := false;
        Caption := 'Error details:';
        Font.Size := 8;
    end;
  Log('Error details:');

  memoErrMsg := TNewMemo.Create(Form);
  with memoErrMsg do
    begin
        Left := ScaleX(70);
        Top := ScaleX(136);
        Width := Form.ClientWidth - ScaleX(90);
        Height := ScaleY(60); 
        ScrollBars := ssVertical;
        Text := msgErr;
        ReadOnly := True;
        WordWrap := True;
        Parent := Form;
    end;
  Log(msgErr);
  
  okButton := TNewButton.Create(Form);
  with okButton do
    begin
        Parent := Form;
        Width := ScaleX(80);
        Height := ScaleY(24);
        Left :=Form.ClientWidth - 2*ScaleX(48);
        Top := Form.ClientHeight - OkButton.Height - ScaleY(8);
        Caption := '&Ok';
        ModalResult := mrOk;
    end;

  // TODO(cpauya): We extract to {tmp} dir, instead of {app}, coz sometimes setup hasn't extracted the
  // files to their destination folders yet (some dest are to the {app} folder) when an exception occurs.
  // (example: missing `python-3.4.3.amd64.msi`)
  ExtractTemporaryFile('SecurityAndMaintenance_Error.bmp');
  bitmapFileName := ExpandConstant('{tmp}\SecurityAndMaintenance_Error.bmp');
  
  bitmapImage := TBitmapImage.Create(Form);
  with bitmapImage do
    begin
        Parent := Form;
        Bitmap.LoadFromFile(bitmapFileName);
        Stretch := True;
        Left :=ScaleX(20);
         Top := ScaleX(12);
         Width := ScaleX(41);
        Height := ScaleY(41); 
    end;

  OpenLogFile();
  result := Form.ShowModal;
end;

{REF: http://stackoverflow.com/questions/4438506/exit-from-inno-setup-instalation-from-code}
procedure ExitProcess(uExitCode: Integer);
  external 'ExitProcess@kernel32.dll stdcall';

procedure InitializeWizard;
begin
    isUpgrade := False;
    forceCancel := False;

    if WizardForm <> nil then
    begin
        try
            ShellExec('open', 'taskkill.exe', '/F /T /im "Kolibri.exe"', '', SW_HIDE, ewWaitUntilTerminated, stopServerCode);
            ShellExec('open', 'tskill.exe', '"Kolibri"', '', SW_HIDE, ewWaitUntilTerminated, stopServerCode);
            Exec(ExpandConstant('{cmd}'),'/C del winshortcut.vbs', WizardForm.PrevAppDir, SW_HIDE, ewWaitUntilTerminated, removeOldGuiTool);
        except
            // MsgBox('InitializeWizard - ' + GetExceptionMessage, mbInformation, mb_Ok);
            // Log('Exception: ' + GetExceptionMessage);
            CustomizeMsgbox(AddPeriod(GetExceptionMessage));
            ExitProcess(1);
        end;    
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
function GetPreviousVersion() : String;
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

procedure ConfirmUpgradeDialog();
begin
    if MsgBox(CustomMessage('UpgradeMsg'), mbInformation,  MB_YESNO or MB_DEFBUTTON1) = IDYES then
    begin
        isUpgrade := True;
    end
    else if MsgBox(CustomMessage('UpgradeDelMsg'), mbInformation,  MB_YESNO or MB_DEFBUTTON2) = IDYES then
    begin
        isUpgrade := False;
    end
    else
    begin
        isUpgrade := True;
    end;
end;

{REF: https://stackoverflow.com/questions/37825650/compare-version-strings-in-inno-setup}
function CompareVersion(V1, V2: string): Integer;
var
  P, N1, N2: Integer;
begin
  result := 0;
  while (result = 0) and ((V1 <> '') or (V2 <> '')) do
  begin
    P := Pos('.', V1);
    if P > 0 then
    begin
      N1 := StrToInt(Copy(V1, 1, P - 1));
      Delete(V1, 1, P);
    end
      else
    if V1 <> '' then
    begin
      N1 := StrToInt(V1);
      V1 := '';
    end
      else
    begin
      N1 := 0;
    end;

    P := Pos('.', V2);
    if P > 0 then
    begin
      N2 := StrToInt(Copy(V2, 1, P - 1));
      Delete(V2, 1, P);
    end
      else
    if V2 <> '' then
    begin
      N2 := StrToInt(V2);
      V2 := '';
    end
      else
    begin
      N2 := 0;
    end;

    if N1 < N2 then result := -1
      else
    if N1 > N2 then result := 1;
  end;
end;

procedure HandleUpgrade(targetPath : String);
var
    prevVerStr : String;
begin
    prevVerStr := GetPreviousVersion();
    if (CompareVersion('{#TargetVersion}', prevVerStr) >= 0) and not (prevVerStr = '') then
    begin   
        ConfirmUpgradeDialog();
        { forceCancel will be true if something went awry in DoGitMigrate... abort instead of trampling the user's data. }
        if Not forceCancel then
        begin
            RemoveOldInstallation(targetPath);
        end;
    end;  
end;


function GetPythonPathFromRegistry(): string;
var
  PythonCoreKey: string;
  PythonVersion: string;
  MaxSupportedVersion: integer;
  MinSupportedVersion: integer;
  Version: integer;
  PythonPath: string;
  PythonExists: boolean;

begin
  // Check if Python is installed
  PythonCoreKey := 'SOFTWARE\Python\PythonCore\';
  MinSupportedVersion:=6;
  MaxSupportedVersion:=13;
  PythonPath:= '';
  PythonExists := False;

  for Version := MinSupportedVersion to MaxSupportedVersion do
    begin
      PythonVersion := '3.' + IntToStr(Version);
      if not IsWin64 then PythonVersion := PythonVersion + '-32';

      // This checks for Python 3.x installed for all users
      if  RegKeyExists(GetHKLM, 'SOFTWARE\Python\PythonCore\' + PythonVersion + '\InstallPath' ) then
        begin
          PythonExists := True;
          RegQueryStringValue( GetHKLM, 'SOFTWARE\Python\PythonCore\' + PythonVersion + '\InstallPath', '', PythonPath);
          Break;
        end;
      if RegKeyExists(HKEY_CURRENT_USER, 'SOFTWARE\Python\PythonCore\' + PythonVersion + '\InstallPath') then
      // This checks for Python 3.x installed for the current user only
        begin
          PythonExists := True;
          RegQueryStringValue(HKEY_CURRENT_USER, 'SOFTWARE\Python\PythonCore\' + PythonVersion + '\InstallPath', '', PythonPath);
          Break;
        end;
    end;

    if not PythonExists then PythonPath:='';
 Result:= PythonPath;
end;



procedure HandlePythonSetup;
var
    installPythonErrorCode : Integer;
begin
    if(MsgBox(CustomMessage('InstallPythonMsg'), mbConfirmation, MB_YESNO) = idYes) then
    begin
        try
            ExtractTemporaryFile('python-3.8.10-amd64.exe');
            ExtractTemporaryFile('python-3.8.10.exe');
            ExtractTemporaryFile('python-exe.bat');
            ExtractTemporaryFile('pip-23.1.2-py3-none-any.whl');
            ShellExec('open', ExpandConstant('{tmp}')+'\python-exe.bat', '', '', SW_HIDE, ewWaitUntilTerminated, installPythonErrorCode);
        except
            // MsgBox('HandlePythonSetup - ' + GetExceptionMessage, mbInformation, mb_Ok);
            // Log('Exception: ' + GetExceptionMessage);
            CustomizeMsgbox(AddPeriod(GetExceptionMessage));
            ExitProcess(1);
        end;    
    end
    else begin
        if(MsgBox(CustomMessage('InstallPythonErrMsg'), mbError, MB_OKCANCEL) = idCANCEL) then
          begin
            OpenLogFile();
            forceCancel := True;
            ExitProcess(1);
          end
        else begin
           HandlePythonSetup(); 
        end
    end;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
    result := True;
    isWindowsInstall := true;
    if GetPythonPathFromRegistry() = '' then
    begin
        HandlePythonSetup();
    end;
    if CurPageID = wpSelectTasks then
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


{ Used in GetPipPath below }
const
    DEFAULT_PIP_PATH = 'Scripts\pip.exe';
{ Returns the path of pip.exe on the system. }
{ Tries several different locations before prompting user. }

function FailedPipNotFound() : String;
begin
    // MsgBox('FailedPipNotFound - ' + GetExceptionMessage, mbInformation, mb_Ok);
    // Log('Exception: ' + GetExceptionMessage);
    CustomizeMsgbox('File: ' + GetPythonPathFromRegistry() + DEFAULT_PIP_PATH + CustomMessage('FileNotFound'));
    RemoveOldInstallation(ExpandConstant('{app}'));
    forceCancel := True
    ExitProcess(1);
    end;
 
function GetPipPath() : String;
var
    path : string;
    anacondaPath: string;
    i: integer;
    pythonPath: string;
begin
    // First try standard Python installation's pip.exe
    path := GetPythonPathFromRegistry() + DEFAULT_PIP_PATH;
    Log('Checking standard Python path: ' + path);
    if FileExists(path) then
    begin
        result := path;
        exit;
    end;

    // Try Anaconda installation paths
    if RegQueryStringValue(HKLM, 'SOFTWARE\Python\ContinuumAnalytics\Anaconda3', 'InstallPath', anacondaPath) then
        Log('Found Anaconda in HKLM\ContinuumAnalytics: ' + anacondaPath)
    else if RegQueryStringValue(HKCU, 'SOFTWARE\Python\ContinuumAnalytics\Anaconda3', 'InstallPath', anacondaPath) then
        Log('Found Anaconda in HKCU\ContinuumAnalytics: ' + anacondaPath)
    else if RegQueryStringValue(HKLM, 'SOFTWARE\Python\Anaconda3', 'InstallPath', anacondaPath) then
        Log('Found Anaconda in HKLM\Anaconda3: ' + anacondaPath)
    else if RegQueryStringValue(HKCU, 'SOFTWARE\Python\Anaconda3', 'InstallPath', anacondaPath) then
        Log('Found Anaconda in HKCU\Anaconda3: ' + anacondaPath);

    if anacondaPath <> '' then
    begin
        // Try Anaconda's pip.exe
        path := AddBackslash(anacondaPath) + 'Scripts\pip.exe';
        Log('Checking Anaconda pip path: ' + path);
        if FileExists(path) then
        begin
            result := path;
            exit;
        end;

        // Try Anaconda's python -m pip
        pythonPath := AddBackslash(anacondaPath) + 'python.exe';
        Log('Checking Anaconda python path: ' + pythonPath);
        if FileExists(pythonPath) then
        begin
            if Exec('cmd.exe', '/C "' + pythonPath + ' -m pip --version"', '', SW_HIDE, ewWaitUntilTerminated, i) and (i = 0) then
            begin
                result := pythonPath;
                exit;
            end;
        end;
    end;

    FailedPipNotFound();
    result := '';
end;

function GetPipDir(Value: string): String;
begin
    result := ExtractFileDir(GetPipPath());
end;

{REF: https://stackoverflow.com/questions/3304463/how-do-i-modify-the-path-environment-variable-when-running-an-inno-setup-install}
function EnvAddPath(param: string): boolean;
var
  Paths: string;
begin
  { Retrieve current path (use empty string if entry not exists) }
    if not RegQueryStringValue(HKEY_LOCAL_MACHINE, 'System\CurrentControlSet\Control\Session Manager\Environment', 'Path', Paths)
    then Paths := '';

    { Skip if string already found in path }
    if Pos(';' + Uppercase(param) + ';', ';' + Uppercase(Paths) + ';') > 0 then exit;

    { App string to the end of the path variable }
    Paths := '%KOLIBRI_SCRIPT_DIR%' + ';' + Paths + ';'

    { Overwrite (or create if missing) path environment variable }
    if RegWriteStringValue(HKEY_LOCAL_MACHINE, 'System\CurrentControlSet\Control\Session Manager\Environment', 'Path', Paths)
    then Log(Format('The [%s] added to PATH: [%s]', [param, Paths]))
    else Log(Format('Error while adding the [%s] to PATH: [%s]', [param, Paths]));
end;

function EnableLongPathSupport(): Boolean;
var
  LongPathEnabled: Cardinal;
begin
  Result := True;

  { Check if long path support is already enabled }
  if RegQueryDWordValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\FileSystem', 'LongPathsEnabled', LongPathEnabled) then
  begin
    if LongPathEnabled = 1 then
    begin
      exit;
    end;
  end;

  { Enable long path support by setting the registry value to 1 }
  if not RegWriteDWordValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\FileSystem', 'LongPathsEnabled', 1) then
    Result := False;
end;


procedure HandlePipSetup;
var
    PipCommand: string;
    PipPath: string;
    PipDir: string;
    ErrorCode: integer;
    TempFilePath: string;
    SetEnvCmd: string;

begin
    { Enable long path support before installing with pip }
    EnableLongPathSupport();

    PipPath := GetPipPath();
    if PipPath = '' then
        exit;
    PipCommand := '"' + PipPath + '"'+ ' install "' + ExpandConstant('{app}') + '\kolibri\kolibri-' + '{#TargetVersion}' + '-py2.py3-none-any' + '.whl"';
    TempFilePath := GetEnv('HOMEDRIVE') + '\\temp'
    SetEnvCmd := 'set TMP=' + TempFilePath + ' && ' + 'set TEMP=' + TempFilePath
    WizardForm.StatusLabel.WordWrap := true;
    WizardForm.StatusLabel.Height:=50 
    WizardForm.StatusLabel.Font.Style := [fsBold];
    WizardForm.StatusLabel.Caption := CustomMessage('SetupWizardMsg');
    WizardForm.ProgressGauge.Style := npbstMarquee;
    if not Exec('cmd.exe', '/S /C " ' + SetEnvCmd + ' && ' + PipCommand + '"', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode) then
    begin
        FailedPipNotFound();
    end;

    { Check if pip command succeeded (ErrorCode = 0) }
    if ErrorCode <> 0 then
    begin
        FailedPipNotFound();
    end;
        { Delete existing user and system KOLIBRI_SCRIPT_DIR envitoment variables }
        RegDeleteValue(
            HKLM,
            'System\CurrentControlSet\Control\Session Manager\Environment',
            'KOLIBRI_SCRIPT_DIR'
        )
        Exec('cmd.exe', '/c "reg delete HKCU\Environment /F /V KOLIBRI_SCRIPT_DIR"', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode)

        { Use this environment varaible to get the selected language for the kolibri GUI application. }
        RegWriteStringValue(
            HKLM,
            'System\CurrentControlSet\Control\Session Manager\Environment',
            'KOLIBRI_GUI_LANG',
            ExpandConstant('{language}')
        );

        { Delete existing user and system KOLIBRI_SCRIPT_DIR envitoment variables }
        RegDeleteValue(
            HKLM,
            'System\CurrentControlSet\Control\Session Manager\Environment',
            'KOLIBRI_SCRIPT_DIR'
        )
        PipDir := GetPipDir('')
        Exec('cmd.exe', '/c "reg delete HKCU\Environment /F /V KOLIBRI_SCRIPT_DIR"', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode)
        { Must set this environment variable so the systray executable knows where to find the installed kolibri.exe script}
        { Should by in the same directory as pip.exe, e.g. 'C:\Python38\Scripts' }
        RegWriteStringValue(
            HKLM,
            'System\CurrentControlSet\Control\Session Manager\Environment',
            'KOLIBRI_SCRIPT_DIR',
            PipDir
        );
        RegDeleteValue(
            HKLM,
            'System\CurrentControlSet\Control\Session Manager\Environment',
            'KOLIBRI_SETUP'
        )
        Exec('cmd.exe', '/c "reg delete HKCU\Environment /F /V KOLIBRI_SETUP"', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode)
        {Set kolibri command to Path}
        
        EnvAddPath(PipDir) 

        { Delete existing system and user KOLIBRI_INSTALLATION_TYPE environment variables }
        RegDeleteValue(
            HKLM,
            'System\CurrentControlSet\Control\Session Manager\Environment',
            'KOLIBRI_INSTALLATION_TYPE'
        )
        Exec('cmd.exe', '/c "reg delete HKCU\Environment /F /V KOLIBRI_INSTALLATION_TYPE"', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode)

        { Delete existing system and user KOLIBRI_INSTALLER_VERSION environment variables }
        RegDeleteValue(
            HKLM,
            'System\CurrentControlSet\Control\Session Manager\Environment',
            'KOLIBRI_INSTALLER_VERSION'
        )
        Exec('cmd.exe', '/c "reg delete HKCU\Environment /F /V KOLIBRI_INSTALLER_VERSION"', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode)

        RegWriteStringValue(
            HKLM,
            'System\CurrentControlSet\Control\Session Manager\Environment',
            'KOLIBRI_INSTALLATION_TYPE',
            'windows'
        );

        RegWriteStringValue(
            HKLM,
            'System\CurrentControlSet\Control\Session Manager\Environment',
            'KOLIBRI_INSTALLER_VERSION',
            'v1.6.6'
        );

end;

function InitializeSetup(): Boolean;
var
  PythonVersionCodeCheck: integer;
  killErrorCode: integer;
  PythonPath: string;
begin
    installFlag:=true;
    result := true;
    startupFlag:=''; 
  
    ShellExec('open', 'taskkill.exe', '/F /T /im "Kolibri.exe"', '', SW_HIDE, ewWaitUntilTerminated, killErrorCode)
    ShellExec('open', 'tskill.exe', ' "Kolibri"', '', SW_HIDE, ewWaitUntilTerminated, killErrorCode);

    RegDeleteValue(HKCU, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Run', ExpandConstant('{#MyAppName}'));

    if GetPythonPathFromRegistry() = '' then
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
begin                                                                   
    RegWriteStringValue(
      HKLM,
      'System\CurrentControlSet\Control\Session Manager\Environment',
      'KOLIBRI_GUI_LANG',
      ExpandConstant('{language}')
    );
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
            Exec(ExpandConstant('{cmd}'), '/S /C " ' + 'setx KOLIBRI_SETUP ' + ExtractFileName(ExpandConstant('{srcexe}')) + ' && ' +  GetPipDir('')+'\reset-env-vars.bat' + '"', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, stopServerCode);
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
        'KOLIBRI_SCRIPT_DIR'
    )
    { Use this environment varaible to get the selected language for the kolibri GUI application. }
    RegDeleteValue(
        HKLM,
        'System\CurrentControlSet\Control\Session Manager\Environment',
        'KOLIBRI_GUI_LANG'
    )
    { Delete system KOLIBRI_INSTALLATION_TYPE environment variable }
    RegDeleteValue(
        HKLM,
        'System\CurrentControlSet\Control\Session Manager\Environment',
        'KOLIBRI_INSTALLATION_TYPE'
    )
    { Delete system KOLIBRI_INSTALLER_VERSION environment variable }
    RegDeleteValue(
        HKLM,
        'System\CurrentControlSet\Control\Session Manager\Environment',
        'KOLIBRI_INSTALLER_VERSION'
    )
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  kolibriHomePath: String;
  kolibriHomeEnv: String;
  msg: String;
begin
  case CurUninstallStep of usUninstall:
    if not isWindowsInstall then
    begin
      kolibriHomeEnv := GetEnv('KOLIBRI_HOME');
      kolibriHomePath :=  GetEnv('USERPROFILE') + '\.kolibri';
      if DirExists(ExtractFileDir(kolibriHomeEnv)) then
      begin
        kolibriHomePath := kolibriHomeEnv
      end;
      if DirExists(kolibriHomePath) then
      begin
        { We do multiple lines to prepare for customization of the message later. }
        msg := CustomMessage('UninstallKolibriDataLine1') + #13#10 + #13#10;
        msg := msg + CustomMessage('UninstallKolibriDataLine2') + #13#10 + #13#10;
        msg := msg + CustomMessage('UninstallKolibriDataLine3') + #13#10 + #13#10;
        msg := msg + CustomMessage('UninstallKolibriPath') + ' ' + kolibriHomePath;
        if(MsgBox(msg, mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES) then
        begin
          DelTree(kolibriHomePath, True, True, True);
        end;
      end;
    end;
  end;
end;
