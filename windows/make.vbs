
'Build script for KOLIBRI INSTALLER WINDOWS
'
'Steps
'
'1. Download python installer
'2. Build the installation package
'
'Python Variable
'PYTHON_VERSION == must set a specific verion (e.g. "2.7", "3.4.3" and etc.)
'PYTHON_32BIT_LINK & PYTHON_64BIT_LINK == URL of the python .exe 
'PYTHON_DIR == Directory when python must save
'
'REF: VB Scripting References
'https://www.codeproject.com/tips/506439/downloading-files-with-vbscript
'http://www.csidata.com/custserv/onlinehelp/vbsdocs/vbs14.htm
'https://stackoverflow.com/questions/20626863/can-you-get-the-pc-user-name-in-vbs

' Set Python
  PYTHON_VERSION = "3.4.3"
  PYTHON_32BIT_LINK =  "https://www.python.org/ftp/python/" & PYTHON_VERSION & "/python-" & PYTHON_VERSION & ".msi"
  PYTHON_64BIT_LINK =  "https://www.python.org/ftp/python/" & PYTHON_VERSION & "/python-" & PYTHON_VERSION & ".amd64.msi"
  PYTHON_DIR = left(WScript.ScriptFullName,(Len(WScript.ScriptFullName))-(len(WScript.ScriptName))) & "python-setup\"
  
' Proceduce to download 
  call Downloads(PYTHON_32BIT_LINK,PYTHON_DIR)
  call Downloads(PYTHON_64BIT_LINK,PYTHON_DIR)

' Compile all the requirement to become an installation
  Set oShell = WScript.CreateObject("WSCript.shell")
  oShell.run "cmd /K title Building the installation package... |inno-compiler\ISCC.exe installer-source\KolibriSetupScript.iss & exit"


sub Downloads(strLink,path)
'strLink == Get file name from URL.
'path == for directory file
strSaveName = Mid(strLink, InStrRev(strLink,"/") + 1, Len(strLink))
strSaveTo = path & strSaveName
' Create an HTTP object
Set objHTTP = CreateObject("MSXML2.XMLHTTP")
' Download the specified URL
objHTTP.open "GET", strLink, False
objHTTP.send
 
Set objFSO = CreateObject("Scripting.FileSystemObject")
If objFSO.FileExists(strSaveTo) Then
  objFSO.DeleteFile(strSaveTo)
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
  set objStream = Nothing
End If

end sub


