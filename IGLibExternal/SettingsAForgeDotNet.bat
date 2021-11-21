
@echo off

rem Sets parameters for cloning or updating the AForge.NET repository.

rem Parameters are set as environment variables with agreed names.
rem These settings are used by scripts such as:
rem   UpdateRepo.bat,  PrintRepoSettings.bat, etc.

rem Runnng the script has side effect (variables are set in the calling 
rem context). In order to eliminate side effects, call the script inside
rem a setlocal/endlocal block.

rem If the script is called with command-line PARAMETERS, these are interpreted
rem as EMBEDDED COMMAND with eventual parameters, which is CALLED AFTER the
rem parameters for repository updates are set. In lthis way one can e.g. achieve
rem overriding certain parameters by calling SetVar (with the corresponding
rem parameters) and so overriding the values set at the beginning of this script.

rem see also documentation comments in UpdateRepo.bat.


rem Reset the error level (by running an always successfull command):
ver > nul

rem Parameters for the update:
set ModuleDirRelative=aforge.net
set CheckoutBranch=master
set RepositoryAddress=https://github.com/ajgorhoe/AForge.NET.git
set RepositoryAddressSecondary=
set RepositoryAddressLocal=d:\git_external\aforge.net.git
set Remote=origin
set RemoteSecondary=
set RemoteLocal=local

set RepositoryAddressUpstream=https://github.com/andrewkirillov/AForge.NET.git
set RemoteUpstream=upstream

set ModuleDir=%~dp0%ModuleDirRelative%


if "%~1" EQU "" goto AfterCommandCall
	:: If any command-line arguments were specified then assemble a 
	:: command-line from these arguments and execute it:

	:: Assemble command-line from the remaining arguments....
	set CommandLine6945="%~1"
	:loop
	shift
	if [%1]==[] goto afterloop
	set CommandLine6945=%CommandLine6945% "%~1"
	goto loop
	:afterloop

	:: Call the assembled command-line:
	call %CommandLine6945%
:AfterCommandCall


echo.
echo SETTINGS defined for updating %ModuleDirRelative% .
echo.
