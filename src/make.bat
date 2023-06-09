:: Build script for KOLIBRI INSTALLER WINDOWS
:: 
:: TODO(cpauya):
:: 1. Add error handling.
:: 2. Be verbose by including values of environment variables in messages where applicable.
:: 3. Return error codes if failure occur within the script so calling program knows something went wrong.
:: 
:: Steps
::
:: 1. Look for .whl package and get the Kolibri version to be used for the Kolibri setup filename.
:: 2. Set KOLIBRI_BUILD_VERSION environment variable to the Kolibri build version.
:: 3. Download Python installers
:: 4. Build the installer package
::
:: Python Variable
:: VERSION == must set a specific verion (e.g. "2.7", "3.4.3" and etc.)
:: PYTHON_URL == URL of the python .exe 
:: PYTHON_DIR == Directory when python must save
:: ===========================================================================
@ECHO OFF

ECHO STEP 1/4. Looking for *.whl package...
IF EXIST "*.whl" (
    FOR %%a in ("*.whl") do (
        SET WHL_FILE_NAME=%%a
        ECHO ... found "%WHL_FILE_NAME%".
        GOTO SET_KOLIBRI_BUILD_VERSION
    )
)
:: If code reaches here, then it's safe to assume we didn't find any .whl package.
ECHO ... Cannot find the .whl package, quitting.
GOTO END


:SET_KOLIBRI_BUILD_VERSION
ECHO STEP 2/4. Setting the `KOLIBRI_BUILD_VERSION` environment variable...
:: Parse the first 2 tokens delimited with "-" and check the second token with the KOLIBRI_BUILD_VERSION environment variable value.
:: This is used to generate the Kolibri setup filename, example: KolibriSetup-0.12.6a4.exe
:: Sample values for the second token would be:
::     .whl filename example = kolibri-0.12.5-py2.py3-none-any.whl, kolibri-0.12.6a4-py2.py3-none-any.whl
::     second token sample values = buildkite, 0.12.5, 0.12.6a4
FOR /f "tokens=1,2 delims=-" %%a in ("%WHL_FILE_NAME%") DO (
    SET TARGET_VERSION=%%b
    :: Check the second token if the same as the value of KOLIBRI_BUILD_VERSION env var
    IF "%KOLIBRI_BUILD_VERSION%" == "%%b" (
        ECHO KOLIBRI_BUILD_VERSION is already set to %KOLIBRI_BUILD_VERSION%. 
    ) ELSE (
        :: Set the second token as the version for the build.
        SETX KOLIBRI_BUILD_VERSION %TARGET_VERSION%
        SET KOLIBRI_BUILD_VERSION=%TARGET_VERSION%
        ECHO ... set KOLIBRI_BUILD_VERSION=%TARGET_VERSION%
    )
)


:DOWNLOAD_PYTHON
ECHO STEP 3/4. Downloading Python installers...
:: TODO(cpauya): Find a way to get get this from a file like `PYTHON_VERSION.txt` instead of hard-coding here.
SET VERSION=3.8.10
SET PYTHON_URL=https://www.python.org/ftp/python/%VERSION%/python-%VERSION%
SET PYTHON_DIR=%~dp0python-setup\python-%VERSION%

SET PYTHON_EXE="%PYTHON_DIR%.exe"
SET PYTHON_AMD64_EXE="%PYTHON_DIR%-amd64.exe"

:: MUST: Do not download the Python installers if they already exist!
IF EXIST %PYTHON_EXE% (
    ECHO ... found %PYTHON_EXE% so will NOT download it.
) ELSE (
    BITSADMIN /TRANSFER python-%VERSION%.exe /DOWNLOAD /PRIORITY NORMAL "%PYTHON_URL%.exe" "%PYTHON_EXE%"
)
IF EXIST %PYTHON_AMD64_EXE% (
    ECHO ... found %PYTHON_AMD64_EXE% so will NOT download it.
) ELSE (
    BITSADMIN /TRANSFER python-%VERSION%.amd64.exe /DOWNLOAD /PRIORITY NORMAL "%PYTHON_URL%.amd64.exe" "%PYTHON_AMD64_EXE%"
)


:COMPILE
ECHO STEP 4/4. COMPILING...
inno-compiler\ISCC.exe installer-source\KolibriSetupScript.iss

:END
