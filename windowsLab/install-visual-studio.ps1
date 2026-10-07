<#
.SYNOPSIS
    Install Visual Studio Community ("Desktop development with C++") on the RE VM,
    and make sure it actually starts.

.DESCRIPTION
    - checks the Windows patch level and free space on the system drive (~25 GB)
    - runs the VS bootstrapper silently (several GB, 20+ minutes)
    - verifies the install is complete + launchable (vswhere), resumes a half-finished one
    - CET check: VS's ServiceHub runs on a bundled .NET 10, which dies on an unpatched
      Windows 10 with "Your Windows doesn't fully support CET" (VS then shows
      "ControllerConnectionException ... Exit code: -2146233082"). If that happens,
      CET shadow stacks are turned off for VS's .NET executables only.
    - `devenv` shim in C:\Tools\bin

    Re-runnable: on an existing install it only re-does the CET check - run it again
    after a VS update, new executables are not covered automatically.

.EXAMPLE
    powershell -NoProfile -ExecutionPolicy Bypass -File .\install-visual-studio.ps1

.EXAMPLE
    powershell -NoProfile -ExecutionPolicy Bypass -File .\install-visual-studio.ps1 -Workloads Microsoft.VisualStudio.Workload.NativeDesktop,Microsoft.VisualStudio.Workload.ManagedDesktop
#>
[CmdletBinding()]
param(
    [string]   $ToolsDir        = 'C:\Tools',
    [string]   $BootstrapperUrl = 'https://aka.ms/vs/17/release/vs_community.exe',
    [string[]] $Workloads       = @('Microsoft.VisualStudio.Workload.NativeDesktop'),
    [int]      $MinFreeGB       = 25,
    [switch]   $Force
)

#Requires -Version 5.1

$ErrorActionPreference = 'Stop'
$ProgressPreference    = 'SilentlyContinue'   # 10x faster Invoke-WebRequest
$script:RebootNeeded   = $false

# ---------------------------------------------------------------- output ----
function Write-Step { param($m) Write-Host "`n==> $m" -ForegroundColor Cyan }
function Write-Ok   { param($m) Write-Host "    [ok]   $m" -ForegroundColor Green }
function Write-Info { param($m) Write-Host "    [..]   $m" -ForegroundColor Gray }
function Write-Warn2{ param($m) Write-Host "    [warn] $m" -ForegroundColor Yellow }
function Write-Err2 { param($m) Write-Host "    [FAIL] $m" -ForegroundColor Red }

# ----------------------------------------------------------- preflight ------
function Assert-Admin {
    $pr = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    if (-not $pr.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        Write-Host ''
        Write-Host '  This script must run elevated.' -ForegroundColor Red
        Write-Host '  Close this window, right-click cmd.exe -> "Run as administrator", and run it again.' -ForegroundColor Red
        Write-Host ''
        exit 1
    }
}

function Test-WindowsPatchLevel {
    # an unpatched Windows breaks modern runtimes in non-obvious ways, e.g. .NET 10
    # dies with 0x80131506 "Your Windows doesn't fully support CET" (kills VS ServiceHub)
    $cv   = Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion'
    $last = Get-HotFix -ErrorAction SilentlyContinue | Where-Object InstalledOn |
            Sort-Object InstalledOn -Descending | Select-Object -First 1
    Write-Host "  windows   : $($cv.ProductName) build $($cv.CurrentBuild).$($cv.UBR), last update $(if ($last) { $last.InstalledOn.ToString('yyyy-MM-dd') } else { 'unknown' })"
    if ($last -and $last.InstalledOn -lt (Get-Date).AddDays(-180)) {
        Write-Warn2 'Windows has not been updated in over 6 months - run Windows Update before using this VM'
        Write-Warn2 '(the known .NET 10 CET crash is worked around below, other new runtimes may still fail)'
    }
}

function Assert-FreeSpace {
    # the C++ workload + recommended components take ~10 GB, plus package cache and
    # temp space while installing; ERROR_DISK_FULL surfaces as -2147024784
    $d      = Get-PSDrive -Name $env:SystemDrive.TrimEnd(':')
    $freeGB = [math]::Round($d.Free / 1GB, 1)
    if ($freeGB -lt $MinFreeGB) { throw "only $freeGB GB free on $env:SystemDrive - Visual Studio needs ~$MinFreeGB GB; grow the VM disk first" }
    Write-Ok "$freeGB GB free on $env:SystemDrive"
}

# --------------------------------------------------------------- helpers ----
function Invoke-Download {
    param([Parameter(Mandatory)] [string] $Url, [Parameter(Mandatory)] [string] $OutFile, [int] $Retries = 3)
    for ($i = 1; $i -le $Retries; $i++) {
        try {
            Write-Info "GET $Url  (attempt $i/$Retries)"
            Invoke-WebRequest -Uri $Url -OutFile $OutFile -UseBasicParsing -TimeoutSec 600
            Write-Info "saved $(Split-Path $OutFile -Leaf)  sha256=$((Get-FileHash $OutFile -Algorithm SHA256).Hash)"
            return
        } catch {
            if (Test-Path $OutFile) { Remove-Item $OutFile -Force -ErrorAction SilentlyContinue }
            if ($i -eq $Retries) { throw "download failed: $Url -- $($_.Exception.Message)" }
            Write-Warn2 "retrying in 5s: $($_.Exception.Message)"
            Start-Sleep -Seconds 5
        }
    }
}

function Invoke-Installer {
    param([Parameter(Mandatory)] [string] $FilePath, [Parameter(Mandatory)] [string[]] $Arguments)
    Write-Info "running $(Split-Path $FilePath -Leaf) $($Arguments -join ' ')"
    $p = Start-Process -FilePath $FilePath -ArgumentList $Arguments -Wait -PassThru
    if ($p.ExitCode -notin 0, 3010, 1641) { throw "installer exited with code $($p.ExitCode)" }
    if ($p.ExitCode -in 3010, 1641) { $script:RebootNeeded = $true }
}

function New-Shim {
    param([Parameter(Mandatory)] [string] $Name, [Parameter(Mandatory)] [string] $Target)
    $binDir = Join-Path $ToolsDir 'bin'
    New-Item -ItemType Directory -Path $binDir -Force | Out-Null
    [IO.File]::WriteAllText((Join-Path $binDir "$Name.cmd"), "@echo off`r`nstart `"`" `"$Target`" %*`r`n", [Text.Encoding]::ASCII)
    $cur = [Environment]::GetEnvironmentVariable('Path', 'Machine')
    if (($cur -split ';') -notcontains $binDir) {
        [Environment]::SetEnvironmentVariable('Path', ($cur.TrimEnd(';') + ';' + $binDir), 'Machine')
    }
}

# --------------------------------------------------------- visual studio ----
function Find-VisualStudio {
    $vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
    if (-not (Test-Path $vswhere)) { return $null }
    # -all also lists half-finished installs (e.g. an earlier run that hit a full disk)
    $args_ = @('-all', '-latest', '-products', '*', '-format', 'json')
    foreach ($w in $Workloads) { $args_ += @('-requires', $w) }
    $vs = (& $vswhere @args_ | Out-String | ConvertFrom-Json) | Select-Object -First 1
    if (-not $vs) { return $null }
    return [pscustomobject]@{
        Path    = $vs.installationPath
        Version = $vs.catalog.productDisplayVersion
        Devenv  = Join-Path $vs.installationPath 'Common7\IDE\devenv.exe'
        Healthy = [bool]($vs.isComplete -and $vs.isLaunchable)
    }
}

function Get-VSDotNetExes {
    # every exe in the VS tree that runs on VS's private .NET (has a runtimeconfig.json),
    # plus all ServiceHub hosts
    param([Parameter(Mandatory)] [string] $VSPath)
    $names = @(Get-ChildItem $VSPath -Recurse -Filter '*.runtimeconfig.json' -ErrorAction SilentlyContinue | ForEach-Object {
        $exe = Join-Path $_.DirectoryName ($_.Name -replace '\.runtimeconfig\.json$', '.exe')
        if (Test-Path $exe) { Split-Path $exe -Leaf }
    })
    $names += @(Get-ChildItem (Join-Path $VSPath 'Common7\ServiceHub') -Recurse -Filter '*.exe' -ErrorAction SilentlyContinue |
                Select-Object -ExpandProperty Name)
    return $names | Sort-Object -Unique
}

function Test-VSRuntimeCetCrash {
    <# Start the ServiceHub controller on VS's newest bundled .NET and see whether the
       runtime itself dies with "Your Windows doesn't fully support CET". Outside VS the
       controller always fails later (VSAPPIDDIR is not set) - that later failure is fine. #>
    param([Parameter(Mandatory)] [string] $VSPath)
    $ctl = Join-Path $VSPath 'Common7\ServiceHub\controller\Microsoft.ServiceHub.Controller.exe'
    $rt  = Get-ChildItem (Join-Path $VSPath 'dotnet') -Directory -ErrorAction SilentlyContinue |
           Sort-Object { [version]($_.Name -replace '^net', '') } -Descending |
           ForEach-Object { Join-Path $_.FullName 'runtime' } | Where-Object { Test-Path $_ } | Select-Object -First 1
    if (-not (Test-Path $ctl) -or -not $rt) { Write-Warn2 'ServiceHub controller / bundled .NET not found, CET check skipped'; return $false }

    $psi = New-Object Diagnostics.ProcessStartInfo $ctl, '--help'
    $psi.UseShellExecute = $false; $psi.CreateNoWindow = $true
    $psi.RedirectStandardOutput = $true; $psi.RedirectStandardError = $true
    $psi.EnvironmentVariables['DOTNET_ROOT'] = $rt
    $p   = [Diagnostics.Process]::Start($psi)
    $out = $p.StandardOutput.ReadToEndAsync(); $err = $p.StandardError.ReadToEndAsync()
    if (-not $p.WaitForExit(30000)) { $p.Kill(); return $false }
    return (($out.Result + $err.Result) -match 'support CET')
}

function Repair-VSCet {
    <# .NET 10 opts into CET shadow stacks; on an unpatched Windows 10 that crashes the
       runtime at startup (0x80131506), so ServiceHub never starts and VS shows
       "ControllerConnectionException ... Exit code: -2146233082". Turn shadow stacks off
       for VS's .NET executables only. The real fix is Windows Update. The setting is the
       MitigationOptions value under HKLM\...\Image File Execution Options\<exe>; delete
       it to undo (Set-ProcessMitigation -Reset leaves it in place on Windows 10). #>
    param([Parameter(Mandatory)] [string] $VSPath)
    if (-not (Test-VSRuntimeCetCrash -VSPath $VSPath)) { Write-Ok 'bundled .NET runtime starts (no CET crash)'; return }
    Write-Warn2 "VS's bundled .NET crashes on this Windows: 'doesn't fully support CET' - Windows Update is the real fix"
    $exes = @(Get-VSDotNetExes -VSPath $VSPath)
    foreach ($n in $exes) { Set-ProcessMitigation -Name $n -Disable UserShadowStack }
    if (Test-VSRuntimeCetCrash -VSPath $VSPath) { throw 'CET workaround applied but the bundled .NET runtime still crashes - run Windows Update' }
    Write-Ok "CET shadow stacks disabled for $($exes.Count) VS .NET executables; ServiceHub starts now"
    Write-Warn2 're-run this script after VS updates: new executables are not covered automatically'
}

function Install-VisualStudio {
    $existing = Find-VisualStudio
    if (-not $Force -and $existing -and $existing.Healthy) {
        Write-Ok "already present ($($existing.Version) at $($existing.Path))"
        return $existing
    }
    if ($existing -and -not $existing.Healthy) { Write-Warn2 "found an incomplete install at $($existing.Path) - resuming it" }
    Assert-FreeSpace
    $cache = Join-Path $ToolsDir '.cache'
    New-Item -ItemType Directory -Path $cache -Force | Out-Null
    $exe = Join-Path $cache 'vs_community.exe'
    Invoke-Download -Url $BootstrapperUrl -OutFile $exe
    $vsArgs = @('--quiet', '--wait', '--norestart', '--nocache', '--includeRecommended')
    foreach ($w in $Workloads) { $vsArgs += @('--add', $w) }
    Write-Info 'this downloads several GB and can take 20+ minutes'
    Invoke-Installer -FilePath $exe -Arguments $vsArgs
    Remove-Item $exe -Force -ErrorAction SilentlyContinue
    $now = Find-VisualStudio
    if (-not $now) { throw 'Visual Studio installer finished but vswhere cannot find the install' }
    if (-not $now.Healthy) { throw "Visual Studio installer finished but the install is incomplete ($($now.Path))" }
    Write-Ok "installed $($now.Version)"
    return $now
}

# --------------------------------------------------------------- main -------
Assert-Admin
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$logDir = Join-Path $ToolsDir 'logs'
New-Item -ItemType Directory -Path $logDir -Force | Out-Null
$log = Join-Path $logDir ('install-vs-{0}.log' -f (Get-Date -Format 'yyyyMMdd-HHmmss'))
try { Start-Transcript -Path $log -Force | Out-Null } catch { }

Write-Host ''
Write-Host '  Visual Studio Community - install + startup check' -ForegroundColor White
Write-Host '  -------------------------------------------------' -ForegroundColor White
Write-Host "  workloads : $($Workloads -join ', ')"
Write-Host "  log       : $log"
Test-WindowsPatchLevel

$rc = 0
try {
    Write-Step 'Visual Studio'
    $vs = Install-VisualStudio
    Write-Step 'CET check (bundled .NET runtime)'
    Repair-VSCet -VSPath $vs.Path
    New-Shim -Name 'devenv' -Target $vs.Devenv
    Write-Ok "devenv shim in $(Join-Path $ToolsDir 'bin')"
} catch {
    Write-Err2 $_.Exception.Message
    $rc = 1
}

Write-Host ''
if ($script:RebootNeeded) {
    Write-Host '  REBOOT before launching Visual Studio - the installer updated system components.' -ForegroundColor Yellow
}
Write-Host "  Full log : $log"
Write-Host ''
try { Stop-Transcript | Out-Null } catch { }
exit $rc
