@echo off
rem Execute python based on machine architecture.
:Check_Architecture
if /i "%processor_architecture%"=="x86" (
    IF NOT DEFINED PROCESSOR_ARCHITEW6432 (
        msiexec /i "python-3.4.3.msi" /passive

    ) ELSE (
        msiexec /i "python-3.4.3.amd64.msi" /passive
    )           
) else (
        msiexec /i "python-3.4.3.amd64.msi" /passive
)