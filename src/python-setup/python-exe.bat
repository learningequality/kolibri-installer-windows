@echo off

Set version=3.4.3
Set python32Bit=python-%version%.msi
Set python64Bit=python-%version%.amd64.msi
Set pythonPath=%cd:~0,2%/Python34/Scripts
Set envString=%Path%
Set is_pythonPath=false

rem check if pythonPath exist in environment variables
:Check_Python_Path_Exist
For /f "tokens=1* delims=;" %%i IN ("%envString%") DO (
   If %pythonPath% == %%i (
       Set is_pythonPath=true
   )
   Set envString=%%j
   Goto Check_Python_Path_Exist
)

If %is_pythonPath% == false (
    Goto Add_Python_Path
) Else (
    Goto Check_Architecture
)

rem Add the pythonPath to environment variables.
:Add_Python_Path
Setx Path "%pythonPath%;%Path%"

rem Execute python based on machine architecture.
:Check_Architecture
If /i "%processor_architecture%"=="x86" (
    If NOT DEFINED PROCESSOR_ARCHITEW6432 (
        msiexec /i "%python32Bit%" /passive
    ) Else (
        msiexec /i "%python64Bit%" /passive
    )    
) Else (
        msiexec /i "%python64Bit%" /passive
)