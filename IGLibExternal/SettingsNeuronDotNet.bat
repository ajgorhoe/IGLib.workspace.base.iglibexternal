
@echo off

rem Sets parameters for cloning or updating the NeuronDotNet repository.

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


rem Some alternative repos for NeuronDotNet:
rem   https://sourceforge.net/projects/neurondotnet/
rem     - original source
rem   https://github.com/BitPhinix/NeuronNet.git 
rem     - newer, changes from renovation bot
rem   https://github.com/tiagosomda/NeuronDotNet.git  
rem     -for use in Unity, probably just the same as original
rem   https://github.com/0xFireball/SharpNeuron.git 
rem     - adapted to .NETCore / standard - check it out, maybe you can use
rem     it for your purpose, just take care that apps still work, including
rem     loading old models (binary deserialization may be a problem, or
rem     maybe not after last corrections)
rem   https://github.com/Guardian-Development/NeuralNetworksLibrary.git
rem     - similar lib, looks nice, but no licence attached

rem Parameters for the update:
set ModuleDirRelative=NeuronDotNet
set CheckoutBranch=IGLib/21_11_22_IGLib_1_9_1_Modified
rem for IGLib 1.9.1: IGLib/21_11_22_IGLib_1_9_1_Modified
rem Possible that this would also work:
rem set CheckoutBranch=IGLib/21_11_22_IGLib_1_9_1_Modified
set RepositoryAddress=https://github.com/ajgorhoe/NeuronDotNet.git
set RepositoryAddressSecondary=
set RepositoryAddressLocal=d:\git_external\NeuronDotNet.git
set Remote=origin
set RemoteSecondary=
set RemoteLocal=local

set RepositoryAddressUpstream=https://github.com/trarck/NeuronDotNet.git
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
