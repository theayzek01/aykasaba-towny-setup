$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Tools = Join-Path $Root '.tools'
$Runtime = Join-Path $Root 'runtime-server'
$Plugins = Join-Path $Runtime 'plugins'
New-Item -ItemType Directory -Force -Path $Tools,$Runtime,$Plugins | Out-Null

function Download($Url, $Out) {
  if (!(Test-Path $Out)) {
    Write-Host "Downloading $Url"
    Invoke-WebRequest -Uri $Url -OutFile $Out -UseBasicParsing
  }
}

# Portable Java 21 (Temurin) - no system install needed
$JdkZip = Join-Path $Tools 'jdk21.zip'
$JdkDir = Join-Path $Tools 'jdk-21'
if (!(Test-Path $JdkDir)) {
  Download 'https://api.adoptium.net/v3/binary/latest/21/ga/windows/x64/jdk/hotspot/normal/eclipse?project=jdk' $JdkZip
  $Extract = Join-Path $Tools 'jdk-extract'
  Remove-Item -Recurse -Force $Extract -ErrorAction SilentlyContinue
  Expand-Archive $JdkZip -DestinationPath $Extract -Force
  $Found = Get-ChildItem $Extract -Directory | Select-Object -First 1
  Move-Item $Found.FullName $JdkDir
  Remove-Item -Recurse -Force $Extract
}
$Java = Join-Path $JdkDir 'bin/java.exe'

# Portable Maven
$MavenZip = Join-Path $Tools 'maven.zip'
$MavenDir = Join-Path $Tools 'apache-maven-3.9.9'
if (!(Test-Path $MavenDir)) {
  Download 'https://archive.apache.org/dist/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.zip' $MavenZip
  Expand-Archive $MavenZip -DestinationPath $Tools -Force
}
$Mvn = Join-Path $MavenDir 'bin/mvn.cmd'

# Build custom plugin
Write-Host 'Building MoonTownyCore...'
$env:JAVA_HOME = $JdkDir
$env:PATH = (Join-Path $JdkDir 'bin') + ';' + (Join-Path $MavenDir 'bin') + ';' + $env:PATH
& $Mvn -f (Join-Path $Root 'custom-plugin/pom.xml') -DskipTests package
Copy-Item (Join-Path $Root 'custom-plugin/target/moon-towny-core-1.0.0.jar') (Join-Path $Plugins 'MoonTownyCore.jar') -Force

# Paper server jar
$PaperJar = Join-Path $Runtime 'paper.jar'
if (!(Test-Path $PaperJar)) {
  $Meta = Invoke-RestMethod 'https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds'
  $Build = $Meta.builds[-1].build
  $Name = "paper-1.21.1-$Build.jar"
  Download "https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/$Build/downloads/$Name" $PaperJar
}

# Copy configs/templates
Copy-Item (Join-Path $Root 'server/plugins/*') $Plugins -Recurse -Force
Copy-Item (Join-Path $Root 'templates/server.properties') (Join-Path $Runtime 'server.properties') -Force
'eula=true' | Set-Content (Join-Path $Runtime 'eula.txt') -Encoding ASCII

# Resourcepack zip
$RpZip = Join-Path $Runtime 'resourcepack.zip'
Remove-Item $RpZip -Force -ErrorAction SilentlyContinue
Compress-Archive -Path (Join-Path $Root 'resourcepack/*') -DestinationPath $RpZip -Force

# Start scripts
@"
@echo off
set JAVA_HOME=%~dp0..\.tools\jdk-21
"%JAVA_HOME%\bin\java.exe" -Xms2G -Xmx4G -jar paper.jar nogui
pause
"@ | Set-Content (Join-Path $Runtime 'start.bat') -Encoding ASCII

Write-Host "DONE: runtime server prepared at $Runtime"
Write-Host "Put required third-party plugin jars into $Plugins, then run runtime-server/start.bat"
