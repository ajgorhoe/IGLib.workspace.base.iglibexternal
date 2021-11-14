
@echo off

rem Updates specific external modulles.
rem This script is currently used for testing and we will see where this goes.

setlocal

rem Reset the error level (by running an always successfull command):
ver > nul

rem Call bootstrapping script to define basic directories and scripts:
call "%~dp0\..\bootstrappingscripts\BootStrapScripting.bat"

echo.
echo Updating external module %ModuleDirRelative% ...
echo.
REM echo Settings:
REM call "%PrintRepoSettings%"
REM echo.

call "%UpdateRepo%" "%~dp0\SettingsAccordDotNet.bat"
echo.
echo   ... Updating external module completeed.
echo.


endlocal

