<#
.SYNOPSIS
    Bootstrap a Windows static-analysis VM: downloads and installs the OALabs
    "Static Analysis Tools" set (minus IDA / disassemblers).

.DESCRIPTION
    Installs:
        vcredist   Microsoft VC++ 2015-2022 x64 runtime (needed by PE-bear / DiE / pestudio)
        python     Python 3 (all users, added to PATH, pip + py launcher)
        hxd        HxD Hex Editor            (installed, Program Files)
        pebear     PE-bear                   (portable -> C:\Tools\PE-bear)
        reshacker  Resource Hacker           (portable -> C:\Tools\ResourceHacker)
        die        Detect It Easy            (portable -> C:\Tools\DIE)
        pestudio   PE Studio                 (portable -> C:\Tools\pestudio)
        dnspy      dnSpyEx                   (portable -> C:\Tools\dnSpyEx)
        x64dbg     x64dbg / x32dbg           (portable -> C:\Tools\x64dbg)
        vs         Visual Studio Community   (installed, "Desktop development with C++" workload)

    Portable tools get a desktop shortcut and a command shim in C:\Tools\bin
    (which is added to the system PATH), so `pebear`, `die`, `diec`, `pestudio`,
    `dnspy`, `reshacker`, `x64dbg`, `x32dbg` all work from cmd after a new shell is opened.

    Visual Studio is a multi-GB download and takes a while; skip it with -Skip vs.

    Re-runnable: already-installed tools are skipped unless -Force is given.

.PARAMETER Only
    Install only these tool keys, e.g. -Only die,pestudio

.PARAMETER Skip
    Skip these tool keys, e.g. -Skip python

.EXAMPLE
    powershell -NoProfile -ExecutionPolicy Bypass -File .\install-static-tools.ps1

.EXAMPLE
    powershell -NoProfile -ExecutionPolicy Bypass -File .\install-static-tools.ps1 -Force -Skip python
#>
[CmdletBinding()]
param(
    [string]   $ToolsDir            = 'C:\Tools',
    [string]   $SamplesDir          = 'C:\Samples',
    [string]   $PythonVersion       = '3.13.16',
    [string]   $VSBootstrapperUrl   = 'https://aka.ms/vs/17/release/vs_community.exe',
    [string[]] $VSWorkloads         = @('Microsoft.VisualStudio.Workload.NativeDesktop'),
    [string[]] $Only,
    [string[]] $Skip,
    [switch]   $Force,
    [switch]   $NoDefenderExclusions,
    [switch]   $NoExplorerTweaks,
    [switch]   $NoShortcuts
)

#Requires -Version 5.1

$ErrorActionPreference = 'Stop'
$ProgressPreference    = 'SilentlyContinue'   # 10x faster Invoke-WebRequest
$script:UserAgent      = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'
$script:Results        = New-Object System.Collections.ArrayList
$script:CacheDir       = $null   # set in main: $ToolsDir\.cache (Defender-excluded)

# ---------------------------------------------------------------- output ----
function Write-Step { param($m) Write-Host "`n==> $m" -ForegroundColor Cyan }
function Write-Ok   { param($m) Write-Host "    [ok]   $m" -ForegroundColor Green }
function Write-Info { param($m) Write-Host "    [..]   $m" -ForegroundColor Gray }
function Write-Warn2{ param($m) Write-Host "    [warn] $m" -ForegroundColor Yellow }
function Write-Err2 { param($m) Write-Host "    [FAIL] $m" -ForegroundColor Red }

# ----------------------------------------------------------- preflight ------
function Assert-Admin {
    $id = [Security.Principal.WindowsIdentity]::GetCurrent()
    $pr = New-Object Security.Principal.WindowsPrincipal($id)
    if (-not $pr.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        Write-Host ''
        Write-Host '  This script must run elevated.' -ForegroundColor Red
        Write-Host '  Close this window, right-click cmd.exe -> "Run as administrator", and run it again.' -ForegroundColor Red
        Write-Host ''
        exit 1
    }
}

function Enable-ModernTls {
    try {
        $proto = [Net.SecurityProtocolType]::Tls12
        if ([enum]::GetNames([Net.SecurityProtocolType]) -contains 'Tls13') {
            $proto = $proto -bor [Net.SecurityProtocolType]::Tls13
        }
        [Net.ServicePointManager]::SecurityProtocol = $proto
    } catch {
        Write-Warn2 "Could not raise TLS version: $($_.Exception.Message)"
    }
}

# ----------------------------------------------------------- download -------
function Invoke-Download {
    param(
        [Parameter(Mandatory)] [string] $Url,
        [Parameter(Mandatory)] [string] $OutFile,
        [string] $Referer,
        [int]    $Retries = 3
    )
    $headers = @{ 'User-Agent' = $script:UserAgent }
    if ($Referer) { $headers['Referer'] = $Referer }

    for ($i = 1; $i -le $Retries; $i++) {
        try {
            Write-Info "GET $Url  (attempt $i/$Retries)"
            Invoke-WebRequest -Uri $Url -OutFile $OutFile -Headers $headers -UseBasicParsing -TimeoutSec 600
            $size = [math]::Round((Get-Item $OutFile).Length / 1MB, 1)
            $sha  = (Get-FileHash -Path $OutFile -Algorithm SHA256).Hash
            Write-Info "saved $(Split-Path $OutFile -Leaf)  ${size} MB  sha256=$sha"
            return
        } catch {
            if (Test-Path $OutFile) { Remove-Item $OutFile -Force -ErrorAction SilentlyContinue }
            if ($i -eq $Retries) { throw "download failed: $Url -- $($_.Exception.Message)" }
            Write-Warn2 "retrying in 5s: $($_.Exception.Message)"
            Start-Sleep -Seconds 5
        }
    }
}

function Expand-Zip {
    param(
        [Parameter(Mandatory)] [string] $ZipPath,
        [Parameter(Mandatory)] [string] $Destination
    )
    Add-Type -AssemblyName System.IO.Compression.FileSystem -ErrorAction SilentlyContinue
    $staging = Join-Path ([IO.Path]::GetTempPath()) ("unzip_" + [guid]::NewGuid().ToString('N'))
    New-Item -ItemType Directory -Path $staging -Force | Out-Null
    [IO.Compression.ZipFile]::ExtractToDirectory($ZipPath, $staging)

    # if the archive wraps everything in a single folder, strip that level
    $root  = $staging
    $items = @(Get-ChildItem -LiteralPath $staging -Force)
    if ($items.Count -eq 1 -and $items[0].PSIsContainer) { $root = $items[0].FullName }

    if (Test-Path $Destination) { Remove-Item $Destination -Recurse -Force }
    New-Item -ItemType Directory -Path $Destination -Force | Out-Null
    Get-ChildItem -LiteralPath $root -Force | Move-Item -Destination $Destination -Force
    Remove-Item $staging -Recurse -Force -ErrorAction SilentlyContinue
}

function Invoke-Installer {
    param(
        [Parameter(Mandatory)] [string]   $FilePath,
        [Parameter(Mandatory)] [string[]] $Arguments,
        [int[]] $OkExitCodes = @(0, 3010, 1641)
    )
    Write-Info "running $(Split-Path $FilePath -Leaf) $($Arguments -join ' ')"
    $p = Start-Process -FilePath $FilePath -ArgumentList $Arguments -Wait -PassThru
    if ($OkExitCodes -notcontains $p.ExitCode) { throw "installer exited with code $($p.ExitCode)" }
    if ($p.ExitCode -in 3010, 1641) { Write-Warn2 'installer requests a reboot (not required to continue)' }
}

# ------------------------------------------------------------- github -------
function Get-GitHubAsset {
    <# Resolve the latest release asset URL. Falls back to the /releases/latest
       redirect (which exposes the tag) when the API is rate-limited. #>
    param(
        [Parameter(Mandatory)] [string]      $Repo,
        [Parameter(Mandatory)] [string]      $Pattern,     # wildcard match on asset name
        [scriptblock]                        $NameFromTag  # fallback: build name from tag
    )
    try {
        $rel = Invoke-RestMethod -Uri "https://api.github.com/repos/$Repo/releases/latest" `
                                 -Headers @{ 'User-Agent' = $script:UserAgent; 'Accept' = 'application/vnd.github+json' } `
                                 -TimeoutSec 60
        $asset = $rel.assets | Where-Object { $_.name -like $Pattern } | Select-Object -First 1
        if ($asset) {
            return [pscustomobject]@{ Url = $asset.browser_download_url; Name = $asset.name; Version = $rel.tag_name }
        }
        throw "no asset matching '$Pattern' in $($rel.tag_name)"
    } catch {
        Write-Warn2 "GitHub API unusable for ${Repo} ($($_.Exception.Message)); falling back to redirect"
        if (-not $NameFromTag) { throw }
        $tag = $null
        try {
            $r = Invoke-WebRequest -Uri "https://github.com/$Repo/releases/latest" -Headers @{ 'User-Agent' = $script:UserAgent } `
                                   -MaximumRedirection 0 -UseBasicParsing -ErrorAction SilentlyContinue
            $tag = ($r.Headers.Location -split '/')[-1]
        } catch {
            $tag = ($_.Exception.Response.Headers['Location'] -split '/')[-1]
        }
        if (-not $tag) { throw "could not determine latest tag for $Repo" }
        $name = & $NameFromTag $tag
        return [pscustomobject]@{ Url = "https://github.com/$Repo/releases/download/$tag/$name"; Name = $name; Version = $tag }
    }
}

# ------------------------------------------------- shims / shortcuts --------
function New-Shim {
    param(
        [Parameter(Mandatory)] [string] $Name,
        [Parameter(Mandatory)] [string] $Target,
        [switch] $Console
    )
    $binDir = Join-Path $ToolsDir 'bin'
    New-Item -ItemType Directory -Path $binDir -Force | Out-Null
    $shim = Join-Path $binDir "$Name.cmd"
    $body = if ($Console) { "@echo off`r`n`"$Target`" %*`r`n" } else { "@echo off`r`nstart `"`" `"$Target`" %*`r`n" }
    [IO.File]::WriteAllText($shim, $body, [Text.Encoding]::ASCII)
}

function New-DesktopShortcut {
    param(
        [Parameter(Mandatory)] [string] $Name,
        [Parameter(Mandatory)] [string] $Target
    )
    if ($NoShortcuts) { return }
    try {
        $desktop = [Environment]::GetFolderPath('CommonDesktopDirectory')
        $ws  = New-Object -ComObject WScript.Shell
        $lnk = $ws.CreateShortcut((Join-Path $desktop "$Name.lnk"))
        $lnk.TargetPath       = $Target
        $lnk.WorkingDirectory = Split-Path $Target -Parent
        $lnk.Save()
    } catch {
        Write-Warn2 "shortcut for $Name failed: $($_.Exception.Message)"
    }
}

function Add-ToSystemPath {
    param([Parameter(Mandatory)] [string] $Dir)
    $cur = [Environment]::GetEnvironmentVariable('Path', 'Machine')
    if (($cur -split ';') -notcontains $Dir) {
        [Environment]::SetEnvironmentVariable('Path', ($cur.TrimEnd(';') + ';' + $Dir), 'Machine')
        Write-Ok "added $Dir to the system PATH (open a new cmd to pick it up)"
    }
    if (($env:Path -split ';') -notcontains $Dir) { $env:Path += ";$Dir" }
}

# ------------------------------------------------------- tool installers ----
function Install-VCRedist {
    $marker = 'HKLM:\SOFTWARE\Microsoft\VisualStudio\14.0\VC\Runtimes\x64'
    if (-not $Force -and (Test-Path $marker)) {
        $v = (Get-ItemProperty $marker -ErrorAction SilentlyContinue).Version
        Write-Ok "already present ($v)"; return $v
    }
    $exe = Join-Path $script:CacheDir 'vc_redist.x64.exe'
    Invoke-Download -Url 'https://aka.ms/vs/17/release/vc_redist.x64.exe' -OutFile $exe
    Invoke-Installer -FilePath $exe -Arguments @('/install', '/quiet', '/norestart')
    Remove-Item $exe -Force -ErrorAction SilentlyContinue
    return '2015-2022 x64'
}

function Get-RealPython {
    # Get-Command finds the 0-byte Microsoft Store stub in WindowsApps on a fresh
    # install; only accept an interpreter that actually prints a 3.x version.
    foreach ($c in @(Get-Command python.exe -All -ErrorAction SilentlyContinue)) {
        if ($c.Source -like '*\WindowsApps\*') { continue }
        $out = (& $c.Source --version 2>&1 | Out-String).Trim()
        if ($out -match 'Python\s+(3\.[0-9.]+)') {
            return [pscustomobject]@{ Path = $c.Source; Version = $Matches[1] }
        }
    }
    return $null
}

function Install-Python {
    $existing = Get-RealPython
    if (-not $Force -and $existing) {
        Write-Ok "already present ($($existing.Version) at $($existing.Path))"; return $existing.Version
    }
    $url = "https://www.python.org/ftp/python/$PythonVersion/python-$PythonVersion-amd64.exe"
    $exe = Join-Path $script:CacheDir "python-$PythonVersion-amd64.exe"
    Invoke-Download -Url $url -OutFile $exe
    Invoke-Installer -FilePath $exe -Arguments @(
        '/quiet', 'InstallAllUsers=1', 'PrependPath=1', 'Include_launcher=1',
        'InstallLauncherAllUsers=1', 'Include_pip=1', 'Include_test=0', 'AssociateFiles=1'
    )
    Remove-Item $exe -Force -ErrorAction SilentlyContinue

    # make python visible to the rest of this run without opening a new shell
    $machinePath = [Environment]::GetEnvironmentVariable('Path', 'Machine')
    $env:Path = "$machinePath;$env:Path"
    $now = Get-RealPython
    if (-not $now) { throw 'python installed but no working interpreter found on PATH' }
    try {
        & $now.Path -m pip install --upgrade pip --quiet 2>&1 | Out-Null
        Write-Ok 'pip upgraded'
    } catch { Write-Warn2 'pip upgrade skipped' }
    return $now.Version
}

function Find-HxD {
    # the setup picks the x64 or x86 build depending on the host
    foreach ($base in @($env:ProgramFiles, ${env:ProgramFiles(x86)})) {
        if (-not $base) { continue }
        $candidate = Join-Path $base 'HxD\HxD.exe'
        if (Test-Path $candidate) { return $candidate }
    }
    return $null
}

function Install-HxD {
    $hxd = Find-HxD
    if (-not $Force -and $hxd) { Write-Ok "already present ($hxd)"; return 'installed' }
    $zip = Join-Path $script:CacheDir 'HxDSetup.zip'
    $dir = Join-Path $script:CacheDir 'HxDSetup'
    Invoke-Download -Url 'https://mh-nexus.de/downloads/HxDSetup.zip' -OutFile $zip -Referer 'https://mh-nexus.de/en/downloads.php?product=HxD20'
    Expand-Zip -ZipPath $zip -Destination $dir
    $setup = Get-ChildItem -Path $dir -Filter '*.exe' -Recurse | Select-Object -First 1
    if (-not $setup) { throw 'HxDSetup.exe not found inside HxDSetup.zip' }
    Invoke-Installer -FilePath $setup.FullName -Arguments @('/VERYSILENT', '/SUPPRESSMSGBOXES', '/NORESTART')
    Remove-Item $zip, $dir -Recurse -Force -ErrorAction SilentlyContinue
    $hxd = Find-HxD
    if (-not $hxd) { throw 'HxD setup reported success but HxD.exe was not found' }
    New-Shim -Name 'hxd' -Target $hxd
    New-DesktopShortcut -Name 'HxD' -Target $hxd
    return 'installed'
}

function Install-PEbear {
    $dest = Join-Path $ToolsDir 'PE-bear'
    $exe  = Join-Path $dest 'PE-bear.exe'
    if (-not $Force -and (Test-Path $exe)) { Write-Ok "already present ($dest)"; return 'portable' }
    $a = Get-GitHubAsset -Repo 'hasherezade/pe-bear' -Pattern '*qt6_x64_win*.zip' `
                         -NameFromTag { param($t) "PE-bear_$($t.TrimStart('v'))_qt6_x64_win_vs22.zip" }
    $zip = Join-Path $script:CacheDir $a.Name
    Invoke-Download -Url $a.Url -OutFile $zip
    Expand-Zip -ZipPath $zip -Destination $dest
    Remove-Item $zip -Force -ErrorAction SilentlyContinue
    New-Shim -Name 'pebear' -Target $exe
    New-DesktopShortcut -Name 'PE-bear' -Target $exe
    return $a.Version
}

function Install-ResourceHacker {
    $dest = Join-Path $ToolsDir 'ResourceHacker'
    $exe  = Join-Path $dest 'ResourceHacker.exe'
    if (-not $Force -and (Test-Path $exe)) { Write-Ok "already present ($dest)"; return 'portable' }
    $zip = Join-Path $script:CacheDir 'resource_hacker.zip'
    # angusj.com returns 406 without a browser UA + referer
    Invoke-Download -Url 'https://www.angusj.com/resourcehacker/resource_hacker.zip' -OutFile $zip `
                    -Referer 'https://www.angusj.com/resourcehacker/'
    Expand-Zip -ZipPath $zip -Destination $dest
    Remove-Item $zip -Force -ErrorAction SilentlyContinue
    New-Shim -Name 'reshacker' -Target $exe
    New-DesktopShortcut -Name 'Resource Hacker' -Target $exe
    return 'portable'
}

function Install-DIE {
    $dest = Join-Path $ToolsDir 'DIE'
    $exe  = Join-Path $dest 'die.exe'
    if (-not $Force -and (Test-Path $exe)) { Write-Ok "already present ($dest)"; return 'portable' }
    $a = Get-GitHubAsset -Repo 'horsicq/DIE-engine' -Pattern 'die_win64_portable_*_x64.zip' `
                         -NameFromTag { param($t) "die_win64_portable_${t}_x64.zip" }
    $zip = Join-Path $script:CacheDir $a.Name
    Invoke-Download -Url $a.Url -OutFile $zip
    Expand-Zip -ZipPath $zip -Destination $dest
    Remove-Item $zip -Force -ErrorAction SilentlyContinue
    New-Shim -Name 'die'  -Target $exe
    New-Shim -Name 'diec' -Target (Join-Path $dest 'diec.exe') -Console   # CLI scanner
    New-DesktopShortcut -Name 'Detect It Easy' -Target $exe
    return $a.Version
}

function Install-PEStudio {
    $dest = Join-Path $ToolsDir 'pestudio'
    $exe  = Join-Path $dest 'pestudio.exe'
    if (-not $Force -and (Test-Path $exe)) { Write-Ok "already present ($dest)"; return 'portable' }
    $zip = Join-Path $script:CacheDir 'pestudio.zip'
    Invoke-Download -Url 'https://winitor.com/tools/pestudio/current/pestudio.zip' -OutFile $zip -Referer 'https://winitor.com/download2'
    Expand-Zip -ZipPath $zip -Destination $dest
    Remove-Item $zip -Force -ErrorAction SilentlyContinue
    New-Shim -Name 'pestudio' -Target $exe
    New-DesktopShortcut -Name 'PE Studio' -Target $exe
    return 'portable (free/basic edition)'
}

function Install-dnSpyEx {
    $dest = Join-Path $ToolsDir 'dnSpyEx'
    $exe  = Join-Path $dest 'dnSpy.exe'
    if (-not $Force -and (Test-Path $exe)) { Write-Ok "already present ($dest)"; return 'portable' }
    $a = Get-GitHubAsset -Repo 'dnSpyEx/dnSpy' -Pattern 'dnSpy-net-win64.zip' `
                         -NameFromTag { param($t) 'dnSpy-net-win64.zip' }
    $zip = Join-Path $script:CacheDir $a.Name
    Invoke-Download -Url $a.Url -OutFile $zip
    Expand-Zip -ZipPath $zip -Destination $dest
    Remove-Item $zip -Force -ErrorAction SilentlyContinue
    New-Shim -Name 'dnspy'         -Target $exe
    New-Shim -Name 'dnspy-console' -Target (Join-Path $dest 'dnSpy.Console.exe') -Console
    New-DesktopShortcut -Name 'dnSpyEx' -Target $exe
    return $a.Version
}

function Find-X64dbg {
    # snapshot zips nest the binaries under release\x64 and release\x32
    $dest = Join-Path $ToolsDir 'x64dbg'
    if (-not (Test-Path $dest)) { return $null }
    $x64 = Get-ChildItem -Path $dest -Filter 'x64dbg.exe' -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1
    if (-not $x64) { return $null }
    $root = Split-Path (Split-Path $x64.FullName -Parent) -Parent
    return [pscustomobject]@{
        X64 = $x64.FullName
        X32 = Join-Path $root 'x32\x32dbg.exe'
        X96 = Join-Path $root 'x96dbg.exe'
    }
}

function Install-X64dbg {
    $found = Find-X64dbg
    if (-not $Force -and $found) { Write-Ok "already present ($(Split-Path $found.X64 -Parent))"; return 'portable' }
    # asset names are timestamped (snapshot_YYYY-MM-DD_HH-MM.zip), so no tag fallback
    $a = Get-GitHubAsset -Repo 'x64dbg/x64dbg' -Pattern 'snapshot_*.zip'
    $zip  = Join-Path $script:CacheDir $a.Name
    $dest = Join-Path $ToolsDir 'x64dbg'
    Invoke-Download -Url $a.Url -OutFile $zip
    Expand-Zip -ZipPath $zip -Destination $dest
    Remove-Item $zip -Force -ErrorAction SilentlyContinue
    $found = Find-X64dbg
    if (-not $found) { throw 'x64dbg.exe not found after extracting the snapshot' }
    New-Shim -Name 'x64dbg' -Target $found.X64
    if (Test-Path $found.X32) { New-Shim -Name 'x32dbg' -Target $found.X32 }
    New-DesktopShortcut -Name 'x64dbg' -Target $found.X64
    if (Test-Path $found.X32) { New-DesktopShortcut -Name 'x32dbg' -Target $found.X32 }
    return $a.Version
}

function Find-VisualStudio {
    $vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
    if (-not (Test-Path $vswhere)) { return $null }
    $args_ = @('-latest', '-products', '*', '-format', 'json')
    foreach ($w in $VSWorkloads) { $args_ += @('-requires', $w) }
    $vs = (& $vswhere @args_ | Out-String | ConvertFrom-Json) | Select-Object -First 1
    if (-not $vs) { return $null }
    return [pscustomobject]@{
        Path    = $vs.installationPath
        Version = $vs.catalog.productDisplayVersion
        Devenv  = Join-Path $vs.installationPath 'Common7\IDE\devenv.exe'
    }
}

function Install-VisualStudio {
    $existing = Find-VisualStudio
    if (-not $Force -and $existing) { Write-Ok "already present ($($existing.Version) at $($existing.Path))"; return $existing.Version }
    $exe = Join-Path $script:CacheDir 'vs_community.exe'
    Invoke-Download -Url $VSBootstrapperUrl -OutFile $exe
    $vsArgs = @('--quiet', '--wait', '--norestart', '--nocache', '--includeRecommended')
    foreach ($w in $VSWorkloads) { $vsArgs += @('--add', $w) }
    Write-Info 'this downloads several GB and can take 20+ minutes'
    Invoke-Installer -FilePath $exe -Arguments $vsArgs
    Remove-Item $exe -Force -ErrorAction SilentlyContinue
    $now = Find-VisualStudio
    if (-not $now) { throw 'Visual Studio installer finished but vswhere cannot find the install' }
    New-Shim -Name 'devenv' -Target $now.Devenv
    return $now.Version
}

# ----------------------------------------------------------- VM tweaks ------
function Set-ExplorerTweaks {
    if ($NoExplorerTweaks) { return }
    Write-Step 'Explorer: show file extensions + hidden files'
    $k = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
    Set-ItemProperty -Path $k -Name 'HideFileExt' -Value 0 -Type DWord
    Set-ItemProperty -Path $k -Name 'Hidden'      -Value 1 -Type DWord
    Stop-Process -Name explorer -Force -ErrorAction SilentlyContinue   # restarts itself
    Write-Ok 'file extensions and hidden files are now visible'
}

function Set-DefenderExclusions {
    if ($NoDefenderExclusions) { Write-Info 'Defender exclusions skipped (-NoDefenderExclusions)'; return }
    Write-Step "Defender: exclude $ToolsDir and $SamplesDir"
    try {
        Add-MpPreference -ExclusionPath $ToolsDir, $SamplesDir -ErrorAction Stop
        Write-Ok 'exclusions added (analysis tools are routinely flagged as hacktools)'
        Write-Warn2 'real-time protection is still ON everywhere else - keep this VM isolated and snapshotted'
    } catch {
        Write-Warn2 "could not set exclusions: $($_.Exception.Message)"
    }
}

# --------------------------------------------------------------- main -------
Assert-Admin
Enable-ModernTls

$script:CacheDir = Join-Path $ToolsDir '.cache'
$null = New-Item -ItemType Directory -Path $ToolsDir, $SamplesDir, $script:CacheDir,
                                           (Join-Path $ToolsDir 'bin'), (Join-Path $ToolsDir 'logs') -Force
$log  = Join-Path $ToolsDir ('logs\install-{0}.log' -f (Get-Date -Format 'yyyyMMdd-HHmmss'))
try { Start-Transcript -Path $log -Force | Out-Null } catch { }

Write-Host ''
Write-Host '  Static Analysis VM - tool bootstrap' -ForegroundColor White
Write-Host '  -----------------------------------' -ForegroundColor White
Write-Host "  tools dir : $ToolsDir"
Write-Host "  samples   : $SamplesDir"
Write-Host "  log       : $log"

Set-DefenderExclusions   # before any download: tools get flagged as hacktools

$tools = [ordered]@{
    'vcredist'  = @{ Name = 'VC++ 2015-2022 x64 runtime'; Action = { Install-VCRedist } }
    'python'    = @{ Name = "Python $PythonVersion";      Action = { Install-Python } }
    'hxd'       = @{ Name = 'HxD Hex Editor';             Action = { Install-HxD } }
    'pebear'    = @{ Name = 'PE-bear';                    Action = { Install-PEbear } }
    'reshacker' = @{ Name = 'Resource Hacker';            Action = { Install-ResourceHacker } }
    'die'       = @{ Name = 'Detect It Easy';             Action = { Install-DIE } }
    'pestudio'  = @{ Name = 'PE Studio';                  Action = { Install-PEStudio } }
    'dnspy'     = @{ Name = 'dnSpyEx';                    Action = { Install-dnSpyEx } }
    'x64dbg'    = @{ Name = 'x64dbg';                     Action = { Install-X64dbg } }
    'vs'        = @{ Name = 'Visual Studio Community';    Action = { Install-VisualStudio } }
}

foreach ($key in $tools.Keys) {
    if ($Only -and ($Only -notcontains $key)) { continue }
    if ($Skip -and ($Skip  -contains $key))   { continue }

    $tool = $tools[$key]
    Write-Step "$($tool.Name)  [$key]"
    try {
        $version = & $tool.Action
        Write-Ok "$($tool.Name) ready"
        $null = $script:Results.Add([pscustomobject]@{ Tool = $tool.Name; Status = 'OK'; Detail = "$version" })
    } catch {
        Write-Err2 $_.Exception.Message
        $null = $script:Results.Add([pscustomobject]@{ Tool = $tool.Name; Status = 'FAILED'; Detail = $_.Exception.Message })
    }
}

Add-ToSystemPath -Dir (Join-Path $ToolsDir 'bin')
Set-ExplorerTweaks
Remove-Item (Join-Path $script:CacheDir '*') -Recurse -Force -ErrorAction SilentlyContinue

Write-Host ''
Write-Host '  Summary' -ForegroundColor White
Write-Host '  -------' -ForegroundColor White
$script:Results | Format-Table -AutoSize | Out-String | Write-Host

$failed = @($script:Results | Where-Object { $_.Status -eq 'FAILED' })
Write-Host "  Portable tools : $ToolsDir"
Write-Host "  Samples folder : $SamplesDir"
Write-Host "  Full log       : $log"
Write-Host ''
Write-Host '  Open a NEW cmd window, then: pebear / die / diec / pestudio / dnspy / reshacker / hxd / x64dbg / x32dbg / devenv / python' -ForegroundColor Gray
Write-Host '  Next: set the VM network to host-only (or disconnect it) and take a clean snapshot.' -ForegroundColor Gray
Write-Host ''

try { Stop-Transcript | Out-Null } catch { }
if ($failed.Count -gt 0) {
    Write-Host "  $($failed.Count) tool(s) failed - see the log above." -ForegroundColor Red
    exit 1
}
exit 0
