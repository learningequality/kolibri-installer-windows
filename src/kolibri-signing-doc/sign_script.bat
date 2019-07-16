@echo off
rem This script for signing the windows installer.

setlocal
set arg_dir=%1
set extension="*.exe"
pushd %arg_dir%
for %%a in (*.%extension%) do set exe_name=%%a
set file_path=%arg_dir%\%exe_name%
popd
set signtool_exe="C:\Program Files (x86)\Windows Kits\8.1\bin\x64\signtool.exe"
set signcmd=%signtool_exe% sign /f "C:\Users\xxx.p12" /p xpasswordx /ac "C:\Users\xxxx.cert" %file_path%
echo "Running the command:"
echo %signcmd%
%signcmd%

endlocal