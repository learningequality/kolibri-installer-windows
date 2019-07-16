:: Build script for KOLIBRI INSTALLER WINDOWS
::
:: Steps
::
:: 1. Ser kolibri version
:: 2. Download python installer
:: 3. Build the installation package
::
:: python Variable
:: VERSION == must set a specific verion (e.g. "2.7", "3.4.3" and etc.)
:: PYTHON_URL == URL of the python .exe 
:: PYTHON_DIR == Directory when python must save
:: ===========================================================================
@ECHO OFF

:FIND_WHL_NAME
IF EXIST "*.whl" (
    FOR %%a in ("*.whl") do (
        SET WHL_FILE_NAME=%%a 
        GOTO GET_WHL_VERSION
    )
) ELSE (
        GOTO CANNOT_FIND
    )

:GET_WHL_VERSION
FOR /f "tokens=1,2 delims=-" %%a in ("%WHL_FILE_NAME%") DO (
    SET TARGET_VERSION=%%b
    IF "%KOLIBRI_BUILD_VERSION%" == "%%b" (
            GOTO DONT_SET_KOLIBRI_VERSION 
    ) ELSE (
            GOTO SET_KOLIBRI_VERSION 
    )
)

:SET_KOLIBRI_VERSION
SETX KOLIBRI_BUILD_VERSION %TARGET_VERSION%
SET KOLIBRI_BUILD_VERSION=%TARGET_VERSION%
GOTO DOWNLOAD_PYTHON

:DONT_SET_KOLIBRI_VERSION
ECHO KOLIBRI_BUILD_VERSION is already set. 
GOTO DOWNLOAD_PYTHON

:CANNOT_FIND
ECHO Cannot find the wheel package...

:DOWNLOAD_PYTHON
SET VERSION=3.4.3
SET PYTHON_URL=https://www.python.org/ftp/python/%VERSION%/python-%VERSION%
SET PYTHON_DIR=%~dp0python-setup\python-%VERSION%

BITSADMIN /TRANSFER python-%VERSION%.msi /DOWNLOAD /PRIORITY NORMAL "%PYTHON_URL%.msi" "%PYTHON_DIR%.msi"
BITSADMIN /TRANSFER python-%VERSION%.amd64.msi /DOWNLOAD /PRIORITY NORMAL "%PYTHON_URL%.amd64.msi" "%PYTHON_DIR%.amd64.msi"

:COMPILE
inno-compiler\ISCC.exe installer-source\KolibriSetupScript.iss

:END

 