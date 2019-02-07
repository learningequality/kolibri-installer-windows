@echo off

Set version=3.4.3
Set python32Bit=python-%version%.msi
Set python64Bit=python-%version%.amd64.msi

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