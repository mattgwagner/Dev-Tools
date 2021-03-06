$Here = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$env:Path = "$($env:Path);$Here;C:\Program Files\nodejs"

& "$Here\Ensure-Chocolatey.ps1"

Import-Module $Here\Git.psm1 -DisableNameChecking -Force

Import-Module $Here\Common.psm1 -DisableNameChecking -Force

New-PSDrive -Root $Code -Name Code -PSProvider FileSystem -Scope Global

Write-Host ""
Write-Host "Mapped $Code to Code:"
Write-Host ""

Push-Location "Code:"