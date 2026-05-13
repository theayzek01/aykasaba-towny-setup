$ErrorActionPreference='Stop'
$Root=Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
Set-Location $Root
powershell -ExecutionPolicy Bypass -File scripts/setup-windows.ps1
$Out=Join-Path $Root 'dist'
New-Item -ItemType Directory -Force -Path $Out | Out-Null
$Zip=Join-Path $Out 'aykasaba-towny-setup.zip'
Remove-Item $Zip -Force -ErrorAction SilentlyContinue
Compress-Archive -Path README.md,LICENSE,docs,scripts,server,resourcepack,custom-plugin,addons,templates -DestinationPath $Zip -Force
Write-Host "Release hazır: $Zip"
