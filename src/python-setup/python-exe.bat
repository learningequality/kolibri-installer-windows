@echo off

Set version=3.4.3
Set python32Bit=python-%version%.msi
Set python64Bit=python-%version%.amd64.msi
Set pythonPath=%cd:~0,2%/Python34
Set pythonScriptPath="%pythonPath%/Scripts"
Set pythonExe="%pythonPath%/python.exe"
Set pipWhl=pip-6.0.8-py2.py3-none-any.whl

rem Execute python based on machine architecture.
If /i "%processor_architecture%"=="x86" (
  If NOT DEFINED PROCESSOR_ARCHITEW6432 (
      msiexec /i "%python32Bit%" /passive
  ) Else (
      msiexec /i "%python64Bit%" /passive
  )    
) Else (
    msiexec /i "%python64Bit%" /passive
)

rem reinstall pip
If exist %pythonExe% (
  If NOT exist "%pythonScriptPath%/pip.exe" (
    %pythonExe% %pipWhl%/pip install --upgrade --no-index %pipWhl%
  )
)

