
# Clones or updates the IGLib's ALL EXTENDED external dependencies' repositories.
Write-Host "`n`nCloning / updating ALL EXTENDED IGLib external dependencies ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"


# Update IGLib's extended dependencies, which will also udate 
# the basic dependencies (viia script UpdateReposGroup_Dep_IGLibBasic.ps1):
& $(join-path $scriptDir "UpdateReposGroup_Dep_IGLibExtended.ps1")


Write-Host "`nUpdating AccordDotNet:"
& $(Join-Path $scriptDir "UpdateRepo_AccordDotNet.ps1")

Write-Host "`nUpdating NeuronDotNet:"
& $(Join-Path $scriptDir "UpdateRepo_NeuronDotNet.ps1")


Write-Host "  ... updating all extended IGLib's extended dependencies completed.`n`n"

