
# Clones or updates the IGLib's EXTENDED external dependencies' repositories.
Write-Host "`n`nCloning / updating EXTENDED IGLib external dependencies ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

# Update IGLib's basic dependencies:
& $(join-path $scriptDir "UpdateReposGroup_Dep_IGLibBasic.ps1")

Write-Host "`nUpdating ActiVizDotNet:"
& $(Join-Path $scriptDir "UpdateRepo_ActiVizDotNet.ps1")

Write-Host "`nUpdating AForgeDotNet:"
& $(Join-Path $scriptDir "UpdateRepo_AForgeDotNet.ps1")

Write-Host "`nUpdating NeuronDotNet:"
& $(Join-Path $scriptDir "UpdateRepo_NeuronDotNet.ps1")


Write-Host "  ... updating basic IGLib's extended dependencies completed.`n`n"

