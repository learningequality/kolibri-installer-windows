@echo off

Set folderName=Python36
Set version=3.9.10
Set python32Bit=python-%version%.exe
Set python64Bit=python-%version%-amd64.exe
Set pythonPath=%cd:~0,2%/Python3.6.8
Set pythonScriptPath="%pythonPath%/Scripts"
Set pythonExe="%pythonPath%/python.exe"
Set pipWhl=pip-6.0.8-py2.py3-none-any.whl

rem Execute python based on machine architecture.
If /i "%processor_architecture%"=="x86" (
  If NOT DEFINED PROCESSOR_ARCHITEW6432 (
    	"%python32Bit%" /passive DefaultJustForMeTargetDir="C:\%folderName%"
  ) Else (
    	"%python64Bit%" /passive DefaultJustForMeTargetDir="C:\%folderName%"
  )    
) Else (
   		"%python64Bit%" /passive DefaultJustForMeTargetDir="C:\%folderName%"
)

rem reinstall pip
If exist %pythonExe% (
  If NOT exist "%pythonScriptPath%/pip.exe" (
    %pythonExe% %pipWhl%/pip install --upgrade --no-index %pipWhl%
  )
)


