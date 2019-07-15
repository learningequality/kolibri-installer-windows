@echo off
REM uninstall kolibri.
REM REF: https://support.microsoft.com/en-us/kb/121170

setlocal enabledelayedexpansion
set scriptPath=%KOLIBRI_SCRIPT_DIR%
set defaultScriptPath=\Python27\Scripts

IF not defined scriptPath goto :NOPATH

IF %scriptPath%=="" (
    GOTO NOPATH
) ELSE (
    GOTO YESPATH
)

:YESPATH
set scriptPath=%scriptPath%
IF NOT EXIST %scriptPath%\pip.exe (
    goto :NOPATH
)
GOTO END

:NOPATH
IF EXIST %defaultScriptPath%\pip.exe (
   set scriptPath=%defaultScriptPath%
)
GOTO END

:END

IF EXIST %scriptPath%\pip.exe  (
  %scriptPath%\pip.exe uninstall --yes kolibri
) ELSE (
   @ECHO kolibri not found.
)


