
# Clones or updates the IGLib's most basic external dependencies' repositories.
Write-Host "`n`nCloning / updating most basic IGLib external dependencies ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"


Write-Host "`nUpdating MathNetNumerics:"
& $(Join-Path $scriptDir "UpdateRepo_MathNetNumerics.ps1")

Write-Host "`nUpdating Jint:"
& $(Join-Path $scriptDir "UpdateRepo_Jint.ps1")


Write-Host "  ... updating most basic IGLib external dependencies completed.`n`n"

