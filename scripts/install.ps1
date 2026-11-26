<#
.SYNOPSIS
  Install the VoiceModule (+ optional OP.GG launcher) into a LOLAutomationTools host folder.
.DESCRIPTION
  Pulls release assets from GitHub (or uses local files) and wires them into the host.
  Does NOT download the host exe or Seraphine; the user must already have them.
.EXAMPLE
  .\install.ps1 -HostDir U:\Downloads\LOLAT
  .\install.ps1 -HostDir U:\Downloads\LOLAT -WithOpgg -SeraphineDir U:\Downloads\Seraphine
  .\install.ps1 -HostDir U:\Downloads\LOLAT -VoiceZip .\VoiceModule-1.0.0.0.zip   # offline install
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory)][string]$HostDir,
  [string]$Repo = 'Tudorose/LOLAutomationTools',
  [string]$VoiceZip,
  [string]$ModelDir,
  [switch]$WithOpgg,
  [string]$SeraphineDir
)
$ErrorActionPreference = 'Stop'

function Get-LatestAsset([string]$name) {
  $rel = Invoke-RestMethod "https://api.github.com/repos/$Repo/releases/latest" -Headers @{ 'User-Agent' = 'install.ps1' }
  $a = $rel.assets | Where-Object name -eq $name
  if (-not $a) { throw "asset '$name' not found in latest release of $Repo" }
  $a.browser_download_url
}

$HostDir = (Resolve-Path $HostDir).Path
if (-not (Test-Path (Join-Path $HostDir 'LOLAutomationTools.exe'))) {
  throw "LOLAutomationTools.exe not found in $HostDir. Install the host first (see README)."
}

# ---- 1. VoiceModule ----
Write-Host "[install] VoiceModule ..." -ForegroundColor Cyan
$tmp = Join-Path ([IO.Path]::GetTempPath()) ('lolat-' + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $tmp | Out-Null
try {
  if (-not $VoiceZip) {
    $VoiceZip = Join-Path $tmp 'VoiceModule.zip'
    Write-Host "  downloading latest release asset ..."
    Invoke-WebRequest (Get-LatestAsset -name 'VoiceModule-latest.zip') -OutFile $VoiceZip
  }
  $vx = Join-Path $tmp 'voice'
  Expand-Archive $VoiceZip -DestinationPath $vx
  Get-Process -Name 'LOLAutomationTools','pythonw' -ErrorAction SilentlyContinue | Stop-Process -Force
  Start-Sleep -Milliseconds 800
  Copy-Item (Join-Path $vx 'VoiceModule.dll'), (Join-Path $vx 'VoiceModule.pdb') -Destination $HostDir -Force
  $cfgDst = Join-Path $HostDir 'LOLAutomationTools.exe.config'
  if (-not (Test-Path $cfgDst)) {
    Copy-Item (Join-Path $vx 'LOLAutomationTools.exe.config') $cfgDst
  }
  $ext = Join-Path $env:USERPROFILE 'Documents\LOLAutomationTools\DATA\Config\Extend'
  if (-not (Test-Path $ext)) { $ext = Join-Path $HostDir 'DATA\Config\Extend'; New-Item -ItemType Directory -Force -Path $ext | Out-Null }
  foreach ($f in 'Voice.json','rules.json','sensitive_words.txt') {
    $dstF = Join-Path $ext $f
    if (-not (Test-Path $dstF)) { Copy-Item (Join-Path $PSScriptRoot "..\voice-module\$f") $dstF }
  }
  Write-Host "  default configs -> $ext (existing files untouched)" -ForegroundColor DarkGray
  Write-Host "  installed -> $HostDir" -ForegroundColor Green
} finally {
  Remove-Item $tmp -Recurse -Force -ErrorAction SilentlyContinue
}

# ---- 2. ASR model (NOT redistributed; user downloads from the link in README) ----
if (-not (Test-Path (Join-Path $HostDir 'Models\sense-voice-funasr-nano\model.int8.onnx'))) {
  if ($ModelDir) {
    New-Item -ItemType Directory -Force -Path (Join-Path $HostDir 'Models') | Out-Null
    Copy-Item $ModelDir (Join-Path $HostDir 'Models') -Recurse -Force
    Write-Host "  model copied from $ModelDir" -ForegroundColor Green
  } else {
    Write-Warning "ASR model not found in $HostDir\Models. Download it (see README, 模型下载) and extract to Models\sense-voice-funasr-nano\"
  }
} else {
  Write-Host "  model already present, skipped" -ForegroundColor DarkGray
}

# ---- 3. OP.GG launcher (optional) ----
if ($WithOpgg) {
  if (-not $SeraphineDir) { throw "-SeraphineDir is required with -WithOpgg (a Seraphine installation folder)." }
  Write-Host "[install] OP.GG launcher ..." -ForegroundColor Cyan
  $SeraphineDir = (Resolve-Path $SeraphineDir).Path
  $opgg = Join-Path $HostDir 'OP.GG'
  New-Item -ItemType Directory -Force -Path $opgg | Out-Null
  Get-ChildItem -LiteralPath $SeraphineDir | Copy-Item -Destination $opgg -Recurse -Force
  Copy-Item (Join-Path $PSScriptRoot '..\opgg-launcher\launcher.py') $opgg -Force
  Write-Host "  installed -> $opgg" -ForegroundColor Green
  Write-Host "  note: launcher.py replaces Seraphine's own entry; run with OP.GG\pythonw.exe launcher.py" -ForegroundColor DarkGray
}

Write-Host "[install] done. Start LOLAutomationTools.exe" -ForegroundColor Green
