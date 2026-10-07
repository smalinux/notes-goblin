---
created: 2026-10-07
source: claude-code
project: /src/notes-goblin
---

# VMware Workstation cheatsheet (Linux host)

Workstation 17.6 · CLIs: `vmrun`, `vmcli`, `vmware-vdiskmanager` · VMs in `~/vmware/`

```bash
VMX="$HOME/vmware/Windows 10 x64/Windows 10 x64.vmx" 🤑
```

## Keyboard (inside the VM window)

| keys | does |
|---|---|
| `Ctrl+Alt` | release mouse/keyboard |
| `Ctrl+Alt+Insert` | send Ctrl+Alt+Del to guest |
| `Ctrl+Alt+Enter` | fullscreen toggle |
| `Ctrl+G` | grab input |

## Power

```bash
vmrun list                                  # running VMs 🤑
vmrun -T ws start   "$VMX"                  # GUI
vmrun -T ws start   "$VMX" nogui            # headless
vmrun -T ws stop    "$VMX" soft             # clean shutdown (needs VMware Tools); hard = pull plug
vmrun -T ws reset   "$VMX" soft
vmrun -T ws suspend "$VMX"                  # saves RAM to .vmss
vmrun -T ws pause   "$VMX" ; vmrun -T ws unpause "$VMX"
```

## Snapshots

GUI: **VM → Snapshot → Take Snapshot / Snapshot Manager → Go To**

```bash
vmrun -T ws snapshot         "$VMX" clean-base 🤑
vmrun -T ws listSnapshots    "$VMX" showTree 🤑
vmrun -T ws revertToSnapshot "$VMX" clean-base 🤑
vmrun -T ws deleteSnapshot   "$VMX" clean-base 🤑 # merges into child, frees space
vmrun -T ws deleteSnapshot   "$VMX" old andDeleteChildren
```

- Power off before snapshot → no RAM image, smaller, cleaner.
- Snapshots are deltas (`*-00000N.vmdk`), not backups. Backup = copy the whole VM folder while off.
- Disk can't be expanded while snapshots exist.

## Clone

```bash
vmrun -T ws clone "$VMX" ~/vmware/W10-dyn/W10-dyn.vmx full   -snapshot=clean-base -cloneName=W10-dyn
vmrun -T ws clone "$VMX" ~/vmware/W10-ln/W10-ln.vmx   linked -snapshot=clean-base -cloneName=W10-ln
```

`linked` = tiny, depends on the parent snapshot (don't delete it). `full` = independent.

## Disk

```bash
DISK="$HOME/vmware/Windows 10 x64/Windows 10 x64.vmdk"
vmware-vdiskmanager -x 100GB "$DISK"     # grow (VM off, no snapshots)
vmware-vdiskmanager -d "$DISK"           # defragment
vmware-vdiskmanager -k "$DISK"           # shrink/compact (zero free space in guest first)
vmware-vdiskmanager -R "$DISK"           # repair sparse disk
vmware-vdiskmanager -e "$DISK"           # check snapshot chain
```

After growing, extend C: in the guest (elevated PowerShell):

```powershell
Resize-Partition -DriveLetter C -Size (Get-PartitionSupportedSize -DriveLetter C).SizeMax
```

Fails if a recovery partition sits after C: → delete it (`diskpart`) or use GParted live ISO.

## Network

| vmnet | mode | subnet | host IP |
|---|---|---|---|
| `vmnet0` | bridged | your LAN | — |
| `vmnet1` | host-only | 172.16.165.0/24 | 172.16.165.1 |
| `vmnet8` | NAT | 192.168.231.0/24 | 192.168.231.1 (gw `.2`) |

- Switch: **VM → Settings → Network Adapter** (Custom → `vmnet1` = isolated from internet).
- Disconnect instantly: uncheck **Connected** on the adapter, or:

```bash
vmrun -T ws disconnectNamedDevice "$VMX" ethernet0
vmrun -T ws connectNamedDevice    "$VMX" ethernet0
vmrun -T ws getGuestIPAddress     "$VMX" -wait
```

| file | what |
|---|---|
| `/etc/vmware/networking` | vmnet definitions |
| `/etc/vmware/vmnet8/nat/nat.conf` | NAT + port forwards (`[incomingtcp]`) |
| `/etc/vmware/vmnet8/dhcpd/dhcpd.conf` | DHCP, fixed IPs |
| `/etc/vmware/vmnet8/dhcpd/dhcpd.leases` | who got which IP |

```bash
sudo vmware-netcfg                         # GUI network editor
sudo systemctl restart vmware              # apply networking changes
```

Fixed guest IP (append to `dhcpd.conf`, then restart):

```
host w10 { hardware ethernet 00:0C:29:XX:XX:XX; fixed-address 192.168.231.129; }
```

MAC = `ethernet0.generatedAddress` in the `.vmx`.

## Guest operations (need VMware Tools + guest creds)

```bash
G=(-T ws -gu Sohaib -gp 'PASSWORD')        # auth flags go BEFORE the command
vmrun "${G[@]}" CopyFileFromHostToGuest "$VMX" ./x.ps1 'C:\Users\Sohaib\x.ps1'
vmrun "${G[@]}" CopyFileFromGuestToHost "$VMX" 'C:\Tools\logs\x.log' ./x.log
vmrun "${G[@]}" runProgramInGuest       "$VMX" -activeWindow -interactive 'C:\Windows\System32\cmd.exe' '/c whoami'
vmrun "${G[@]}" listProcessesInGuest    "$VMX"
vmrun "${G[@]}" killProcessInGuest      "$VMX" 1234
vmrun "${G[@]}" listDirectoryInGuest    "$VMX" 'C:\Tools'
vmrun "${G[@]}" captureScreen           "$VMX" shot.png
vmrun -T ws checkToolsState "$VMX"
```

## Shared folders / clipboard

```bash
vmrun -T ws enableSharedFolders "$VMX"
vmrun -T ws addSharedFolder     "$VMX" share /tmp/share      # guest: \\vmware-host\Shared Folders\share
vmrun -T ws setSharedFolderState "$VMX" share /tmp/share readonly
vmrun -T ws removeSharedFolder  "$VMX" share
```

Malware VM: shared folders, drag & drop and clipboard **off** (**VM → Settings → Options → Guest Isolation**).

## .vmx tweaks (edit with VM off)

```ini
isolation.tools.copy.disable = "TRUE"        # no clipboard guest→host
isolation.tools.paste.disable = "TRUE"
isolation.tools.dnd.disable = "TRUE"
isolation.tools.hgfs.disable = "TRUE"        # no shared folders
mainMem.useNamedFile = "FALSE"               # no .vmem file on disk
memsize = "8192"
numvcpus = "4"
```

## Analysis-VM routine

1. Install tools → `install-static-tools.ps1`, `install-visual-studio.ps1`.
2. Windows Update → reboot.
3. `enable-ssh.ps1 -Disable` (if SSH was on).
4. Network → host-only / disconnected; guest isolation on.
5. Power off → snapshot `clean-base`.
6. Analyze → `revertToSnapshot clean-base` after every sample.

## Host troubleshooting

```bash
sudo vmware-modconfig --console --install-all   # rebuild vmmon/vmnet after kernel update
sudo systemctl restart vmware
tail -f "$HOME/vmware/Windows 10 x64/vmware.log"
rm -r "$HOME/vmware/Windows 10 x64/"*.lck       # stale lock after crash (VM must be off)
```
