
@echo off

:: Prepares environment for execution of repository updating scripts,
:: fallback.

echo.
echo BootStrapScriptingFallback.bat:
echo   bootstrapping essential scripts (fallback mode)...
echo.
echo Obtaining bootstrapping fallback scripts settins...

:: Define initially script locations for bootstrapping:
set FallbackIGLibScripts=%~dp0\IGLibScripts_copy
set FallbackSetScriptReferences=%FallbackIGLibScripts%\SetScriptReferences.bat

if not defined FallbackSetScriptReferences goto ErrorScriptRepo

if not exist "%FallbackSetScriptReferences%" goto ErrorScriptRepo

rem Call the fallback script for setting script references...
call "%FallbackSetScriptReferences%" %*


:ErrorScriptRepo
  echo.
  echo ERROR in BOOTSTRAPPING scripts:
  echo   Fallback scripts could not be executed correctly.
  echo.
:AfterScriptReferencesUpdate


:finalize

echo.
echo   ... bootstrappping essential scripts (fallback) completed.
echo.
