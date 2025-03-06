
# Clones or updates the IGLib external dependencies' repositories.
Write-Host "`n`nCloning / updating basic IGLib external dependencies ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating :"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_.ps1")

Write-Host "  ... updating basic IGLib external dependencies completed.`n`n"

