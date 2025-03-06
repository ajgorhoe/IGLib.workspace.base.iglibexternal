
# Clones or updates the IGLib basic repositories in iglibmodules.
Write-Host "`n`nCloning / updating basic IGLib repositories in iglibmodules ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating IGLibCore:"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibCore.ps1")

Write-Host "`nUpdating IGLibScripts:"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibScripts.ps1")

Write-Host "`nUpdating IGLibScripting:"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibScripting.ps1")

Write-Host "`nUpdating IGLibScriptingCs:"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibScriptingCs.ps1")

Write-Host "`nUpdating IGLibSandbox:"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibSandbox.ps1")

Write-Host "`nUpdating IGLibEventAggregator:"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibEventAggregator.ps1")

Write-Host "  ... updating basuc repositoris in iglibmodules/ completed.`n`n"

