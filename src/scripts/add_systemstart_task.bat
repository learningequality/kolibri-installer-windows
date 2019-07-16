@echo off
TITLE Adding task to start Kolibri at system start

setlocal
for /f "tokens=4-6 delims=[.XP " %%i in ('ver') do set WIN_VERSION="%%i.%%j"

rem 5.1 and 5.2 are XP and Server 2003/64-bit XP
if %WIN_VERSION% LEQ "5.2" (
    echo This feature is unavailable on this version of Windows.
    pause
) else (
    schtasks /create /tn "Kolibri" /tr "\"%KOLIBRI_SCRIPT_DIR%\Kolibri.bat\" start" /sc onstart /ru %USERNAME% /rp /f
)