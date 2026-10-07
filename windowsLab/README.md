# Windows static-analysis VM — one-shot setup

`install-static-tools.ps1` builds the OALabs "Static Analysis Tools" box on a fresh
Windows VM. No IDA, no Ghidra, no Binary Ninja — those get installed by hand.
Visual Studio has its own script: [`install-visual-studio.ps1`](#visual-studio-install-visual-studiops1).

## Run it

Open **cmd.exe as Administrator** (right-click → Run as administrator), then:

```cmd
curl -L -o %TEMP%\sa.ps1 https://raw.githubusercontent.com/smalinux/notes-goblin/main/windowsLab/install-static-tools.ps1 && powershell -NoProfile -ExecutionPolicy Bypass -File %TEMP%\sa.ps1
```

That is the whole install. ~10 min on a normal link, mostly dnSpyEx (95 MB) and DiE (25 MB).

## What it installs

| key | tool | where |
|-----|------|-------|
| `vcredist`  | VC++ 2015-2022 x64 runtime (PE-bear / DiE / pestudio need it) | system |
| `python`    | Python 3.13.x, all users, on PATH, with pip + `py` launcher | `C:\Program Files\Python313` |
| `hxd`       | HxD Hex Editor (silent Inno install) | `C:\Program Files\HxD` |
| `pebear`    | PE-bear (latest GitHub release, Qt6 x64) | `C:\Tools\PE-bear` |
| `reshacker` | Resource Hacker (portable zip) | `C:\Tools\ResourceHacker` |
| `die`       | Detect It Easy (latest GitHub release) | `C:\Tools\DIE` |
| `pestudio`  | PE Studio (free/basic edition) | `C:\Tools\pestudio` |
| `dnspy`     | dnSpyEx (latest GitHub release, self-contained .NET x64) | `C:\Tools\dnSpyEx` |
| `x64dbg`    | x64dbg / x32dbg (latest snapshot) | `C:\Tools\x64dbg` |

Versions are resolved at runtime from the GitHub releases API (with a redirect-based
fallback when the API rate-limits), so the script does not go stale. Only Python is
pinned, via `-PythonVersion`.

## What else it touches

- Creates `C:\Tools` and `C:\Samples`.
- Puts `.cmd` shims in `C:\Tools\bin` and adds that one directory to the system PATH,
  so a **new** cmd window gets: `pebear`, `die`, `diec`, `pestudio`, `dnspy`,
  `dnspy-console`, `reshacker`, `hxd`, `x64dbg`, `x32dbg`, `python`.
- Desktop shortcuts for the portable GUI tools (`-NoShortcuts` to skip).
- Defender exclusions for `C:\Tools` and `C:\Samples` only — RE tools get flagged as
  hacktools and silently quarantined otherwise. Real-time protection stays on
  everywhere else. `-NoDefenderExclusions` to skip.
- Explorer: show file extensions + hidden files, then restarts explorer.exe
  (`-NoExplorerTweaks` to skip).
- Logs every step, including the SHA256 of every download, to
  `C:\Tools\logs\install-<timestamp>.log`.

## Options

```cmd
:: skip a tool
powershell -NoProfile -ExecutionPolicy Bypass -File %TEMP%\sa.ps1 -Skip python,hxd

:: only one tool
powershell -NoProfile -ExecutionPolicy Bypass -File %TEMP%\sa.ps1 -Only die

:: reinstall / update everything to the current releases
powershell -NoProfile -ExecutionPolicy Bypass -File %TEMP%\sa.ps1 -Force

:: elsewhere, different python
powershell -NoProfile -ExecutionPolicy Bypass -File %TEMP%\sa.ps1 -ToolsDir D:\Tools -PythonVersion 3.12.10
```

Re-running is safe: anything already present is skipped unless `-Force`. A tool that
fails does not stop the rest — the summary table at the end lists `OK` / `FAILED` per
tool, and the exit code is 1 if any failed.

## After the install

1. Open a new cmd (for the PATH change).
2. Set the VM network to host-only or disconnect it.
3. **Take a clean snapshot** before any sample touches the disk.

## Visual Studio (`install-visual-studio.ps1`)

Community edition with the "Desktop development with C++" workload. Several GB, 20+ min,
needs ~25 GB free on `C:`. In **cmd.exe as Administrator**:

```cmd
curl -L -o %TEMP%\vs.ps1 https://raw.githubusercontent.com/smalinux/notes-goblin/main/windowsLab/install-visual-studio.ps1 && powershell -NoProfile -ExecutionPolicy Bypass -File %TEMP%\vs.ps1
```

Besides installing, it checks that VS can actually **start**:

- Warns if Windows hasn't been updated in 6+ months.
- Refuses to start with less than 25 GB free (`-MinFreeGB`); a full disk mid-install
  leaves a half-written VS. An incomplete install is detected (`vswhere` `isComplete` /
  `isLaunchable`) and resumed.
- **CET check.** VS's ServiceHub runs on a bundled .NET 10, which opts into CET shadow
  stacks. On an unpatched Windows 10 (e.g. stuck at a 2023 build) that runtime dies at
  startup — `Your Windows doesn't fully support CET` — and VS shows
  *"Could not start Visual Studio … ControllerConnectionException … Exit code: -2146233082"*.
  The script launches the ServiceHub controller on the bundled runtime; if it hits that
  crash, it disables shadow stacks for VS's .NET executables only (21 of them) and re-checks.
  Windows Update is the real fix.
- Prints a reboot reminder when the installer asks for one.

Re-run it on an existing install to just redo the CET check — do that **after every VS
update**, since new executables aren't covered. To undo the workaround for one exe, delete
the `MitigationOptions` value under
`HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\<exe>`
(`Set-ProcessMitigation -Reset` does not remove it on Windows 10).

## SSH from the Linux host (`enable-ssh.ps1`)

So the host can drive the VM (logs, fixes, file copies) without copy-paste into the console.
In **cmd.exe as Administrator** on the VM:

```cmd
curl -L -o %TEMP%\ssh.ps1 https://raw.githubusercontent.com/smalinux/notes-goblin/main/windowsLab/enable-ssh.ps1 && powershell -NoProfile -ExecutionPolicy Bypass -File %TEMP%\ssh.ps1
```

- Installs the OpenSSH Server capability (needs internet), sshd on automatic start.
- Key-only: password login off, the host's `id_rsa.pub` goes into
  `C:\ProgramData\ssh\administrators_authorized_keys` (`-PublicKey '<key>'` to use another).
- Default shell is PowerShell.
- Port 22 open to `192.168.231.1` only — the host side of VMware `vmnet8`
  (`-AllowFrom <ip>` for another network).
- Prints the `ssh user@ip` line to use from the host.

**Turn it off before detonating anything:** `powershell -NoProfile -ExecutionPolicy Bypass -File %TEMP%\ssh.ps1 -Disable`
(stops + disables sshd, removes the firewall rule), or just revert to a pre-SSH snapshot.

## Notes

- PE Studio here is the free "basic" edition — not licensed for corporate use.
- `diec.exe` is the DiE command-line scanner: `diec C:\Samples\x.bin`.
