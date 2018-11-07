
@echo off

SET VERSION=3.4.3
SET PYTHON_32BIT="python-%VERSION%.msi"
SET PYTHON_64BIT="python-%VERSION%.amd64.msi"

rem Execute python based on machine architecture.
:Check_Architecture
if /i "%processor_architecture%"=="x86" (
    IF NOT DEFINED PROCESSOR_ARCHITEW6432 (
        msiexec /i %PYTHON_32BIT% /passive
    ) ELSE (
        msiexec /i %PYTHON_64BIT% /passive
    )           
) else (
        msiexec /i %PYTHON_64BIT% /passive
)
