---
created: 2026-10-04T21:28:01
source: claude-code
project: /src/notes-goblin/windowsLab
---

VM lab for reverse engineering

## FLARE-VM — the ready-made answer
[mandiant/flare-vm](https://github.com/mandiant/flare-vm) (9.1k stars, last push 2026-06-23). Chocolatey + Boxstarter, a GUI package picker, 100+ RE tools including every tool in your screenshot.

```powershell
(New-Object net.webclient).DownloadFile('https://raw.githubusercontent.com/mandiant/flare-vm/main/install.ps1',"$([Environment]::GetFolderPath('Desktop'))\install.ps1")
Unblock-File .\install.ps1; Set-ExecutionPolicy Unrestricted -Force; .\install.ps1
```

The cost: it **requires Defender and Tamper Protection fully off** (not exclusions — off, preferably via Group Policy), disables Windows Update and Store updates, reboots several times, wants 60 GB+, and takes hours. It's a whole-VM commitment, not an add-on to an existing box.

The part worth stealing: `-customConfig` takes **a URL or path to an XML package list**, and `-noGui -noWait` makes it non-interactive. So you can get your exact 7 tools, from maintained packages, in one command:

```powershell
.\install.ps1 -customConfig https://raw.githubusercontent.com/smalinux/notes-goblin/main/windowsLab/flare-config.xml -noGui -noWait
```

## VM-Packages — the middle path
[mandiant/VM-Packages](https://github.com/mandiant/VM-Packages) is where FLARE-VM's packages actually live — 305 of them, last push **5 days ago**, the most actively maintained thing in this space. All seven of yours exist: `hxd.vm`, `pebear.vm`, `resourcehacker.vm`, `die.vm`, `pestudio.vm`, `dnspyex.vm`, `python3.vm` (plus `x64dbg.vm`, `capa.vm`, `floss.vu`, `yara-x.vm`, `ghidra.vm`, `binaryninja.vm` for later).

```cmd
choco install pebear.vm die.vm pestudio.vm dnspyex.vm hxd.vm resourcehacker.vm python3.vm -y -s https://www.myget.org/F/vm-packages/api/v2
```

One caveat I couldn't confirm: `.vm` packages depend on `common.vm` and env vars (`VM_COMMON_DIR`, `RAW_TOOLS_DIR`, `TOOL_LIST_DIR`), and the wiki doesn't document installing them cleanly *outside* a FLARE-VM environment. Worth a snapshot before testing.

## winget configure — the Microsoft-native option
A declarative YAML (`winget configure -f setup.yaml`) covering apps *and* settings, no third-party bootstrap. Coverage check I just ran against winget-pkgs: `MHNexus.HxD`, `dnSpyEx.dnSpy`, `AngusJohnson.ResourceHacker`, `hasherezade.PE-bear`, `horsicq.DIE-engine`, `Python.Python.3.13` — all present. **pestudio is not in winget**, so you'd still need a manual step for it.

## Also worth knowing
- **[Commando VM](https://github.com/mandiant/commando-vm)** — same machinery, offensive toolset. Last push 2025-10-16, so ~a year stale.
- **[REMnux](https://remnux.org)** — the Linux equivalent, ships as a ready OVA. Complementary, not a replacement.
- **Packer/Vagrant templates** (e.g. `StefanScherer/packer-windows`) — if you want the *VM image itself* built from scratch unattended, with your script as a provisioner.

## What I'd actually do
Keep your script for the static box. It does something FLARE-VM explicitly won't: leaves Defender and Windows Update on, touching only `C:\Tools` and `C:\Samples`. That's a safer daily-driver analysis VM, and it's ~20 s of install versus hours.

Then when you move to dynamic analysis and want x64dbg + pe-sieve + capa + floss + Ghidra in one shot, build a **separate, isolated, snapshot-first VM with FLARE-VM** — that's where disabling Defender is a feature, not a liability.

Want me to generate the `flare-config.xml` for the custom-config path, or a `winget configure` YAML as an alternative to the PowerShell script?

Sources: [flare-vm](https://github.com/mandiant/flare-vm), [VM-Packages](https://github.com/mandiant/VM-Packages), [commando-vm](https://github.com/mandiant/commando-vm), [winget-pkgs](https://github.com/microsoft/winget-pkgs)
