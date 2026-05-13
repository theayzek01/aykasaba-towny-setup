$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
Set-Location $Root
if (!(Test-Path '.git')) { git init }
git add .
git commit -m "Initial free Turkish Towny setup" 2>$null
Write-Host 'Repo hazır. GitHub remote eklemek için:'
Write-Host 'git remote add origin https://github.com/KULLANICI/aykasaba-towny-setup.git'
Write-Host 'git push -u origin main'
