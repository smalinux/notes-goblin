<#
.SYNOPSIS
    Turn on OpenSSH Server so the Linux host can drive this VM over ssh.

.DESCRIPTION
    - installs the OpenSSH.Server Windows capability (needs internet / Windows Update)
    - sshd: automatic start, running now
    - key-only login: password auth is turned off, the host key below goes into
      administrators_authorized_keys (admin accounts ignore ~\.ssh\authorized_keys)
    - default shell = Windows PowerShell
    - firewall: port 22 open to -AllowFrom only (the VMware NAT host by default)

    Re-runnable. -Disable stops sshd, sets it to Disabled and removes the firewall rule;
    do that (or revert to a snapshot) before detonating anything.

.PARAMETER AllowFrom
    Remote address(es) allowed to reach port 22. Default: 192.168.231.1 (host side of vmnet8).

.PARAMETER PublicKey
    The authorized public key. Default: the smalinux host key.

.EXAMPLE
    powershell -NoProfile -ExecutionPolicy Bypass -File .\enable-ssh.ps1

.EXAMPLE
    powershell -NoProfile -ExecutionPolicy Bypass -File .\enable-ssh.ps1 -AllowFrom 192.168.56.1

.EXAMPLE
    powershell -NoProfile -ExecutionPolicy Bypass -File .\enable-ssh.ps1 -Disable
#>
[CmdletBinding()]
param(
    [string[]] $AllowFrom = @('192.168.231.1'),
    [string]   $PublicKey = 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/WN0OZ9JsUMhH3PHx6+HzfFmw8MgY7j5WyB9eVPTnxlKyB+eqlntb0R+vLAQ1I7pN3nguHoA6WZD2dRnFqXlNoVCDBHvFdEABpUDfmLbcAxUNHKH0HqctqUUaXiDCIMw2sn4ZgDTF49amBX/TgmaBLBAcSLM/PZnMhsiQgJWezf9Tgp7BeGOtV9vOx7k1RXaIDkLAc7vF8yxx0sF9PSpwOHGfdSvokE+6efrzKXPReEC3c765zJ+GyWYGmWRlsmVR05laifAKvtcM6Q/+L/TEPozNnG8mfuiNgVmzhieh39XrMMyX2ujQx5+hLs3/wYKdnJRNmoyBZuI5ItaTTc4v8qAJUjXQs/7sSIxCyxgCepCu/1jlTIr3hP61LfP0sauhqxlgysGPlzwAczOazxI3jnZdBGwwqCsSQ0VQ+tL40XquqhIvQirsDUpdDnGjRCFpwltOYdN+SPzEgB2dNAkdHzgWeQGLvLatSyoYNFNqSH8hLhQUFqT5u2LgXLIzHy8= smalinux@smalinux',
    [switch]   $Disable
)

#Requires -Version 5.1

$ErrorActionPreference = 'Stop'
$ProgressPreference    = 'SilentlyContinue'
$RuleName              = 'sshd-host-only'

function Write-Step { param($m) Write-Host "`n==> $m" -ForegroundColor Cyan }
function Write-Ok   { param($m) Write-Host "    [ok]   $m" -ForegroundColor Green }
function Write-Info { param($m) Write-Host "    [..]   $m" -ForegroundColor Gray }
function Write-Warn2{ param($m) Write-Host "    [warn] $m" -ForegroundColor Yellow }

$pr = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $pr.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host ''
    Write-Host '  This script must run elevated.' -ForegroundColor Red
    Write-Host '  Close this window, right-click cmd.exe -> "Run as administrator", and run it again.' -ForegroundColor Red
    Write-Host ''
    exit 1
}

# ------------------------------------------------------------- disable -------
if ($Disable) {
    Write-Step 'Disabling sshd'
    Stop-Service sshd -ErrorAction SilentlyContinue
    Set-Service  sshd -StartupType Disabled -ErrorAction SilentlyContinue
    Get-NetFirewallRule -Name $RuleName -ErrorAction SilentlyContinue | Remove-NetFirewallRule
    Write-Ok 'sshd stopped + disabled, firewall rule removed'
    exit 0
}

# ------------------------------------------------------------- install -------
Write-Step 'OpenSSH Server capability'
$cap = Get-WindowsCapability -Online -Name 'OpenSSH.Server*' | Select-Object -First 1
if ($cap.State -eq 'Installed') {
    Write-Ok "already installed ($($cap.Name))"
} else {
    Write-Info "installing $($cap.Name) from Windows Update (a minute or two)"
    Add-WindowsCapability -Online -Name $cap.Name | Out-Null
    Write-Ok 'installed'
}

# first start generates the host keys and C:\ProgramData\ssh\sshd_config
Set-Service   sshd -StartupType Automatic
Start-Service sshd

# ------------------------------------------------------------- config --------
Write-Step 'Key-only login, PowerShell as default shell'
$sshDir = Join-Path $env:ProgramData 'ssh'
$ak     = Join-Path $sshDir 'administrators_authorized_keys'
[IO.File]::WriteAllText($ak, $PublicKey.Trim() + "`n", [Text.Encoding]::ASCII)
# sshd refuses the file unless only Administrators + SYSTEM can touch it
icacls $ak /inheritance:r /grant 'Administrators:F' /grant 'SYSTEM:F' | Out-Null
Write-Ok "public key -> $ak"

$cfg  = Join-Path $sshDir 'sshd_config'
$text = Get-Content $cfg -Raw
if ($text -match '(?m)^\s*#?\s*PasswordAuthentication\s+\S+') {
    $text = $text -replace '(?m)^\s*#?\s*PasswordAuthentication\s+\S+', 'PasswordAuthentication no'
} else {
    # must sit above any Match block
    $text = "PasswordAuthentication no`r`n" + $text
}
[IO.File]::WriteAllText($cfg, $text, [Text.Encoding]::ASCII)
Write-Ok 'PasswordAuthentication no'

New-ItemProperty -Path 'HKLM:\SOFTWARE\OpenSSH' -Name DefaultShell -PropertyType String -Force `
                 -Value (Join-Path $env:SystemRoot 'System32\WindowsPowerShell\v1.0\powershell.exe') | Out-Null
Write-Ok 'default shell = powershell.exe'

Restart-Service sshd

# ------------------------------------------------------------- firewall ------
Write-Step "Firewall: port 22 from $($AllowFrom -join ', ') only"
# the capability ships an any-source rule; replace it with a scoped one
Get-NetFirewallRule -Name 'OpenSSH-Server-In-TCP', $RuleName -ErrorAction SilentlyContinue | Remove-NetFirewallRule
New-NetFirewallRule -Name $RuleName -DisplayName 'OpenSSH Server (host only)' -Direction Inbound `
                    -Protocol TCP -LocalPort 22 -RemoteAddress $AllowFrom -Action Allow -Profile Any | Out-Null
Write-Ok 'rule added'

# ------------------------------------------------------------- summary -------
$user = $env:USERNAME
$ips  = @(Get-NetIPAddress -AddressFamily IPv4 -ErrorAction SilentlyContinue |
          Where-Object { $_.IPAddress -notlike '127.*' -and $_.IPAddress -notlike '169.254.*' } |
          Select-Object -ExpandProperty IPAddress)

Write-Host ''
Write-Host '  sshd is up' -ForegroundColor White
Write-Host '  ----------' -ForegroundColor White
foreach ($ip in $ips) { Write-Host "  from the host:  ssh $user@$ip" }
Write-Host ''
Write-Warn2 'this is a way into the analysis VM - run with -Disable (or revert a snapshot) before detonating samples'
Write-Host ''
exit 0
