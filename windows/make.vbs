'Build script for KOLIBRI INSTALLER WINDOWS
'
'Steps
'
'1. Set Kolibri Version
'2. Download python installer
'3. Build the installation package
'
'python Variable
'pythonVersion == must set a specific verion (e.g. "2.7", "3.4.3" and etc.)
'python32BitLink & python64BitLink == URL of the python .exe 
'pythonDir == Directory when python must save
'
'REF: VB Scripting References
'https://www.codeproject.com/tips/506439/downloading-files-with-vbscript
'http://www.csidata.com/custserv/onlinehelp/vbsdocs/vbs14.htm
'https://stackoverflow.com/questions/20626863/can-you-get-the-pc-user-name-in-vbs
'https://blogs.technet.microsoft.com/heyscriptingguy/2005/02/08/how-can-i-find-and-replace-text-in-a-text-file/


'***************************************************************************************************************
Function DownloadPythonInstaller(strLink, path)
  'strLink == Get file name from URL.
  'path == for directory file
  strSaveName = Mid(strLink, InStrRev(strLink,"/") + 1, Len(strLink))
  strSaveTo = Path & strSaveName
  
  On Error Resume Next
  'Create an HTTP object
  Set objHTTP = CreateObject("MSXML2.XMLHTTP")
  Set objFSO = CreateObject("Scripting.FileSystemObject")
  
  If objFSO.FileExists(strSaveTo) Then
  'Do nothing
  Else
  'Download the specified URL
    objHTTP.open "GET", strLink, False
    objHTTP.send  
  End If  
   
  If Err.Number <> 0 Then
    strMsg = "There was an error creating " & strFile & VbCrLf & "Error code: 0x" & hex(Err.Number) & " " & Err.Description
    strMsg = strMsg & VbCrLf & strSaveName & " download failure" 
    strMsg = strMsg & VbCrLf & "Aborting the script"
    MsgBox strMsg, vbOKOnly + vbCritical, "Network Error" 
    WScript.Quit
  End If 

  If objHTTP.Status = 200 Then
    Dim objStream
    Set objStream = CreateObject("ADODB.Stream")
    With objStream
    .Type = 1 'adTypeBinary
    .Open
    .Write objHTTP.responseBody
    .SaveToFile strSaveTo
    .Close 
    End With
    Set objStream = Nothing
  End If
End Function


'***************************************************************************************************************
'Set Kolibri Version
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set folder = objFSO.GetFolder (left(WScript.ScriptFullName,(Len(WScript.ScriptFullName))-(len(WScript.ScriptName))))
Count = 0
totalFiles = folder.Files.Count

For Each file In folder.Files
	If instr (file.Name, ".whl") Then
	  whlPackageName = file.Name
  Else
    count = count + 1
	End If
Next

If count = totalFiles Then
  strMsg = folder & VbCrLf & VbCrLf &"Wheel package not found"
  strMsg = strMsg & VbCrLf & "Aborting the script"
  MsgBox strMsg, vbOKOnly + vbCritical, "VB Script: File not found" 
  WScript.Quit
End If

kolibriVersion=Split(whlPackageName, "-")

Const ForReading = 1
Const ForWriting = 2

Set objFSO = CreateObject("Scripting.FileSystemObject")
filePath = folder & "\installer-source\KolibriSetupScript.iss"
Set readFile = objFSO.OpenTextFile(filePath, ForReading, True)
Set writeTemp = objFSO.OpenTextFile(filePath & ".tmp", ForWriting, True)

Do While Not readFile.AtEndofStream
  editTextLine = readFile.ReadLine
  If InStr(editTextLine, "#define TargetVersion = ") Then
    editTextLine = "#define TargetVersion = '" & kolibriVersion(1) & "'"
  End If
  writeTemp.WriteLine editTextLine
Loop

readFile.Close
writeTemp.Close
objFSO.DeleteFile(filePath)
objFSO.MoveFile filePath&".tmp", filePath


'***************************************************************************************************************
'Set Python
pythonVersion = "3.4.3"
python32BitLink = "https://www.python.org/ftp/python/" & pythonVersion & "/python-" & pythonVersion & ".msi"
python64BitLink = "https://www.python.org/ftp/python/" & pythonVersion & "/python-" & pythonVersion & ".amd64.msi"
pythonDir = left(WScript.ScriptFullName,(Len(WScript.ScriptFullName))-(len(WScript.ScriptName))) & "python-setup\"

'Proceduce to download 
DownloadPythonInstaller python32BitLink, pythonDir
DownloadPythonInstaller python64BitLink, pythonDir


'***************************************************************************************************************
'Compile all the requirement to become an installation
Set oShell = WScript.CreateObject("WSCript.shell")
oShell.run "cmd /K title Building the installation package... |inno-compiler\ISCC.exe installer-source\KolibriSetupScript.iss & exit"
