@echo off

Set folderName=Python38
Set version=3.8.10
Set python32Bit=python-%version%.exe
Set python64Bit=python-%version%-amd64.exe
Set pythonPath=%cd:~0,2%/Python3.8.10
Set pythonScriptPath="%pythonPath%/Scripts"
Set pythonExe="%pythonPath%/python.exe"
Set pipWhl=pip-23.1.2-py3-none-any.whl

rem Execute python based on machine architecture.
If /i "%processor_architecture%"=="x86" (
  If NOT DEFINED PROCESSOR_ARCHITEW6432 (
	"%python32Bit%" /passive TargetDir="C:\%folderName%" InstallAllUsers=0 Include_doc=0 Include_pip=1 Include_test=0 Include_launcher=0 Include_tcltk=0
  ) Else (
	"%python64Bit%" /passive TargetDir="C:\%folderName%" InstallAllUsers=0 Include_doc=0 Include_pip=1 Include_test=0 Include_launcher=0 Include_tcltk=0
  )    
) Else (
		"%python64Bit%" /passive TargetDir="C:\%folderName%" InstallAllUsers=0 Include_doc=0 Include_pip=1 Include_test=0 Include_launcher=0 Include_tcltk=0
)

rem reinstall pip
If exist %pythonExe% (
  If NOT exist "%pythonScriptPath%/pip.exe" (
    %pythonExe% %pipWhl%/pip install --upgrade --no-index %pipWhl%
  )
)


