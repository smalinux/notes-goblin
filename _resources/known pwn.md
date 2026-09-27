---
created: 2026-09-01
tags: [security, reverse-engineering, malware, exploitation, roadmap, resources]
locked: true
---

# What comes after pwn.college to become world-class at RE + malware analysis

- You finished pwn.college. Base is done: Linux, assembly, basic pwn.
- Next = go deep + wide. Pick 1-2 lanes, but know the whole map.
- Below = the golden resources per direction. Books, courses, blogs, tools, people, conferences, hidden gems.
- Rule for you: read less, build more. Every resource = do the labs, publish a writeup.

---

## 0. Core essentials (touch every lane)

### Read-first books
- **Practical Binary Analysis** — Dennis Andriesse — build your own RE tools; taint, symbolic exec, instrumentation.
- **Practical Reverse Engineering** — Dang, Gazet, Bachaalany — x86/x64/ARM + Windows kernel + obfuscation.
- **The Ghidra Book** — Chris Eagle & Kara Nance — master the free disassembler.
- **The IDA Pro Book** — Chris Eagle — master IDA workflow + plugins.
- **Blue Fox: Arm Assembly Internals & RE** — Maria Markstedter — modern ARM64 RE (mobile + Apple future).

### Free training that beats most paid
- **OpenSecurityTraining2 (OST2)** — https://ost2.fyi — Xeno Kovah. University-grade x86/ARM/firmware/Windows. Most underrated free resource.
- **pwn.college advanced dojos** — kernel, browser, hard pwn modules you may not have done yet.
- **Nightmare (guyinatuxedo)** — https://guyinatuxedo.github.io — free pwn/RE course from real CTF bugs.

### Daily tools to embed in muscle memory
- Disasm/decompile: Ghidra, IDA Pro/Free, Binary Ninja, radare2/rizin/Cutter.
- Debug: gdb + **pwndbg/GEF**, **x64dbg** (Windows), **WinDbg + Time Travel Debugging**.
- Instrument/emulate: **Frida**, **Unicorn**, **Qiling**, **angr**, **Triton**.
- Exploit: **pwntools**, ROPgadget/Ropper, one_gadget.
- Compare decompilers: **dogbolt.org**. See compiler output: **godbolt.org**.

### Practice ladder (do in order)
- crackmes.one → reversing.kr → challenges.re (Yurichev).
- pwnable.kr → pwnable.tw → ROP Emporium → how2heap.
- Flare-On past archives (malware RE) → live Flare-On each fall.
- Microcorruption (embedded MSP430, in browser).

---

## 1. Reverse engineering foundations & tooling

### Books — canonical
- **Reverse Engineering for Beginners (RE4B)** — Dennis Yurichev — free, ~1000 pages, read next to godbolt.
- **Reversing: Secrets of Reverse Engineering** — Eldad Eilam — old but shapes the RE mindset.
- **Surreptitious Software** — Collberg & Nagra — the obfuscation/deobfuscation theory bible.

### Books — hidden gems
- **Learning Linux Binary Analysis** — Ryan "elfmaster" O'Neill — deep ELF, viruses, packers.
- **Linkers and Loaders** — John Levine — free; why binaries look the way they do.
- **SAT/SMT by Example** — Yurichev — free; makes solver-based RE (angr/Triton) click.
- **The Beginner's Guide to IDAPython** — Alexander Hanel — fastest path to automating IDA.

### Courses / training
- Free: **OST2** (Arch1001/2001, RE3011 C++, RE3201 angr), **Intro to RE with Ghidra** (wrongbaud/HackadayU), **MalwareUnicorn RE101/RE102**, **begin.re** (Ophir Harpaz), **angr_ctf** (17 graded levels), **RPISEC MBE**, **Azeria ARM tutorials**.
- Paid elite: **"Software Deobfuscation Techniques"** — Tim Blazytko (synthesis.to / REcon) — MBA, VM handlers, program synthesis. Top of the field.
- Paid: **REcon Montreal trainings**, **Azeria Labs ARM trainings**.

### Blogs / sites
- **synthesis.to** — Tim Blazytko — deobfuscation, MBA, VMs.
- **msreverseengineering.com/blog** — Rolf Rolles — deepest public deobfuscation + Hex-Rays microcode.
- **hex-rays.com/blog** — "Igor's Tip of the Week" — weekly IDA mastery; read the whole archive.
- **binary.ninja/blog** — Vector 35 — IL/decompiler internals.
- **blog.quarkslab.com** — Triton, QBDI, LIEF, serious deobfuscation cases.
- **mahaloz.re** + **decompilation.wiki** — "30 Years of Decompilation"; the only map of decompiler research.
- **megabeets.net** — "A Journey into Radare2" series; best r2 on-ramp.
- **unprotect.it** — searchable wiki of anti-analysis / anti-disasm / evasion, with code.
- **felixcloutier.com/x86** — clean x86 instruction reference. **agner.org/optimize** — canonical calling conventions PDF.

### Foundational papers / talks
- **SoK: All You Ever Wanted to Know About x86/x64 Binary Disassembly** — Pang et al., S&P 2021.
- **An In-Depth Analysis of Disassembly on Full-Scale Binaries** — Andriesse et al., USENIX 2016.
- **Reverse Compilation Techniques** — Cristina Cifuentes, 1994 — where decompilers began.
- **No More Gotos (DREAM)** — Yakdan et al., NDSS 2015. **Ahoy SAILR!** — Basque et al., USENIX 2024.
- **SoK: (State of) The Art of War** — Shoshitaishvili et al., S&P 2016 — the angr paper.
- **Syntia** — Blazytko et al., USENIX 2017 — synthesize semantics of obfuscated code.
- Talks: **Breaking the x86 ISA** (Christopher Domas), **Decompilers and Beyond** (Ilfak Guilfanov), **Unicorn** (Nguyen Anh Quynh).

### Tools + best docs
- **Ghidra** — ghidra.re + The Ghidra Book + **GhidraClass** (full NSA course shipped inside the repo, almost nobody opens it).
- **IDA + Hex-Rays** — Igor's Tips; Hanel IDAPython book; microcode API via Rolf Rolles.
- **Binary Ninja** — learn LLIL/MLIL/HLIL; best scripting-first decompiler.
- **radare2/rizin/Cutter** — book.rada.re, book.rizin.re, Megabeets' journey.
- **angr / Triton / Miasm** — symbolic exec + IR + JIT emulation. **Unicorn + Qiling** — emulation.
- Level-up plugins: **Lighthouse** (coverage) + **Tenet** (trace) by Markus Gaasedelen; **ret-sync**; **gooMBA**; **msynth**.

### People
- @mr_phrazer (Blazytko), @RolfRolles, @Fox0x01 (Azeria), @JonathanSalwan (Triton), @aquynh (Capstone/Unicorn/Qiling), @Zardus + @mahal0z (angr, pwn.college), @ilfak + @igorskochinsky (Hex-Rays), @psifertex (Binja), @trufae (r2), @xoreaxeaxeax (Domas), @angealbertini (file formats), LaurieWired + @stacksmashing (YouTube).

### Hidden gems
- **GhidraClass** (inside Ghidra repo) — free NSA course.
- **challenges.re** — Yurichev's "what does this code do?" drills; brutal, perfect for asm.
- **corkami** (Ange Albertini) — file-format posters + PoC binaries; makes PE/ELF visual.
- **dogbolt.org** — diff 10+ decompilers on one upload.
- **airbus-seclab/qemu_blog** — the missing QEMU/TCG internals manual.
- **Ricardo Narvaja's RE courses** (Spanish) — legendary, deep, free.

---

## 2. Malware analysis

### Books — core canon
- **Practical Malware Analysis** — Sikorski & Honig — still THE base; static + dynamic labs.
- **The Art of Memory Forensics** — Ligh, Case, Levy, Walters — memory forensics bible (Volatility authors).
- **Evasive Malware** — Kyle Cucci (2024) — modern anti-VM/anti-debug; the "2024 update" to PMA.
- **Mastering Malware Analysis, 2nd ed.** — Kleymenov & Thabet — Windows, Linux, IoT, scripts.
- **Learning Malware Analysis** — Monnappa K A — bridge to memory forensics + code injection.
- **Malware Analysis and Detection Engineering** — Mohanta & Saldanha — analysis + writing detections, packing, hollowing.
- **Rootkits and Bootkits** — Matrosov, Rodionov, Bratus — kernel/boot/UEFI threats.

### Books — intel / attribution / ransomware
- **Attribution of Advanced Persistent Threats** — Timo Steffens — hidden gem; how attribution really works.
- **Intelligence-Driven Incident Response** — Roberts & Brown — CTI process done right.
- **Malware Data Science** — Saxe & Sanders — ML + clustering at scale.
- **The Ransomware Hunting Team** — Dudley & Golden — how hunters break ransomware crypto.
- **Serious Cryptography** — Aumasson — needed to break ransomware crypto mistakes.
- **The Art of Mac Malware** — Patrick Wardle — free at taomm.org; the macOS canon.

### Courses
- Paid: **SANS FOR610 (GREM)** (base standard, expensive) → **SANS FOR710** (advanced, config extractors, automation).
- Best value: **Zero2Automated** (0ffset, ~€180) — real families, unpacking, config extraction; called the natural step after FOR610.
- Cheap entry: **TCM PMAT** (HuskyHacks) — FLARE-VM + REMnux lab, labs free on GitHub.
- **OALabs Patreon** (Frankoff & Wilson) — pro workflows, live streams. **Invoke RE** (Josh Reynolds) — Ghidra-first + automation.
- Free: **FLARE-On archives** (best skill test that exists), **MalwareUnicorn RE101/102**, **OST2**.

### Blogs / sites
- **Mandiant/FLARE (Google Cloud)** — cloud.google.com/blog/topics/threat-intelligence — FLARE tools + deep dives.
- **Check Point Research** (research.checkpoint.com), **Securelist / Kaspersky GReAT**, **SentinelLabs**, **Elastic Security Labs**, **Unit 42**, **Cisco Talos**, **Zscaler ThreatLabz**, **ESET WeLiveSecurity**.
- **The DFIR Report** — full intrusions with timeline; unmatched realism.
- **hasherezade's blog** (PE-sieve/TinyTracer author), **0ffset blog**, **MalwareTech**.
- **vx-underground** — biggest paper + sample archive on earth.
- **Malpedia** — malpedia.caad.fkie.fraunhofer.de — family encyclopedia + YARA; use daily.

### APT report collections
- **APTnotes** (github.com/aptnotes/data), **CyberMonitor APT & CyberCriminal Collections**, **ThaiCERT Threat Group Cards** (apt.etda.or.th).
- **Virus Bulletin archive** — decades of elite papers, free. **Mandiant APT1 (2013)** — defined public attribution.
- **MITRE ATT&CK** — map every sample to techniques.

### Tools worth mastering
- Triage: Detect It Easy, pestudio, PE-bear, CFF Explorer, **CyberChef**.
- FLARE set: **FLARE-VM**, **FLOSS**, **capa** (capability detection), **GoReSym** (Go symbols), **Speakeasy** (emulation).
- .NET: **dnSpyEx**, de4dot, ILSpy. Go/Rust: GoReSym, **GoResolver** (Volexity 2025).
- Unpacking: **UnpacMe**, **PE-sieve/HollowsHunter** (hasherezade), TinyTracer, **dumpulator**.
- Shellcode/maldocs: scdbg, BlobRunner, **Didier Stevens Suite** (oledump, xorsearch), oletools.
- Memory: **Volatility 3** (Rekall is dead, skip), **MemProcFS** (mount memory as filesystem).
- Network/C2: Wireshark, **FakeNet-NG**, INetSim, **JA3/JA4 fingerprints**, **C2 Matrix**.
- Detection: **YARA + YARA-X**, **Sigma**, **Neo23x0/signature-base** (Florian Roth's rules).
- Config extraction: **Binary Refinery** ("CyberChef for CLI"; elite), **malduck + karton + MWDB** (CERT.pl pipeline).

### Sandboxes
- **CAPEv2** — the Cuckoo successor (Cuckoo is dead); self-host this. Auto unpack + config extract.
- **ANY.RUN** (interactive, learn behavior live), **Joe Sandbox**, **Tria.ge**, **Hybrid Analysis**, **DRAKVUF** (agentless, evasion-resistant), **VirusTotal + LiveHunt**.

### Sample sources
- **MalwareBazaar** (abuse.ch), **vx-underground** (35M+ samples), **VirusShare/MalShare**, **Malpedia**, **theZoo**.
- **malware-traffic-analysis.net** (Brad Duncan) — THE C2 traffic school (pcap + samples).
- **MemLabs** (Volatility CTF), **PMAT-labs** (safe teaching samples).
- Safety: isolated VM, host-only network, snapshots — always.

### People
- @hasherezade, @struppigel (Karsten Hahn), @malwareunicorn, @herrcore (OALabs), @0verfl0w_ (Zero2Automated), @HuskyHacks, @jstrosch, @malware_traffic (Brad Duncan), @cyb3rops (Florian Roth), @craiu (Costin Raiu), @juanandres_gs (Guerrero-Saade), @demonslay335 + @fwosar (ransomware), @DidierStevens, @embee_research, @vxunderground.

### Hidden gems
- **Unprotect Project** (unprotect.it) — every evasion technique with code + detections.
- **MalAPI.io** — Windows APIs mapped to malicious use; keep open while reversing.
- **Binary Refinery** — pros extract configs with it.
- **MWDB + karton + malduck** (CERT.pl) — free public malware DB + the automation stack.
- **Malcat** (malcat.fr) — lightweight IDA-like triage; great blog tutorials.
- **Malware Analysis For Hedgehogs** (Karsten Hahn YouTube), **OALabs YouTube**, **Invoke RE YouTube**.
- **n1ght-w0lf**, **modexp**, **ired.team**, **decoded.avast.io** (decryptor writeups).
- **#100DaysOfYARA** + **awesome-yara** (InQuest) — level up YARA fast.

### Short order
- PMA book + PMAT → build lab. → Zero2Automated + OALabs → unpacking/config. → Evasive Malware + Unprotect → anti-analysis. → Art of Memory Forensics + MemLabs → Volatility 3. → malware-traffic-analysis.net → C2 traffic. → Flare-On + 100DaysOfYARA → prove skill. → Read 2-3 APT reports/week, map to ATT&CK.

---

## 3. Advanced binary exploitation

### Books
- **The Shellcoder's Handbook** — Anley et al. — shellcode, stack/heap, format strings.
- **Hacking: The Art of Exploitation** — Jon Erickson — best hands-on intro to memory bugs.
- **A Guide to Kernel Exploitation: Attacking the Core** — Perla & Oldani — kernel LPE theory.
- **The Art of Software Security Assessment** — Dowd, McDonald, Schuh — the bug-finding bible.
- **Gray Hat Hacking, 6th ed** — Harper, Sims et al. — heap, ROP, kernel, mobile.
- Hidden gems: **A Bug Hunter's Diary** (Tobias Klein), **Attacking Network Protocols** (James Forshaw), **Fuzzing: Brute Force Vulnerability Discovery** (Sutton et al.).

### Courses
- **OffSec OSED (EXP-301)** — Windows user-mode: DEP/ASLR bypass, custom ROP.
- **OffSec OSEE (EXP-401 / AWE)** — hardest cert: heap, 64-bit kernel, mitigation bypass; in-person only.
- **Corelan Bootcamp + Advanced** (Peter Van Eeckhoutte) — gold standard Win32/heap.
- **RET2 WarGames** — https://wargames.ret2.systems — browser-tier x64 pwn in the browser, by Pwn2Own winners.
- **Azeria Labs** — free ARM/ARM64 exploitation. **SANS SEC760** (Stephen Sims) — kernel + heap + patch diffing.
- **MalDev Academy** — maldev + EDR evasion (adjacent skill).

### Blogs / writeups
- **Google Project Zero** — deepest real-world 0-day writeups.
- **Phrack** — https://phrack.org — the historic exploitation archive; alive again.
- **RET2 Systems blog**, **Connor McGarr** (modern Windows kernel + CET/VBS bypass), **Zero Day Initiative blog**.
- **Zon8 Research JS engine reading list**, **browser-pwn** (m1ghtym0), **Nightmare** (guyinatuxedo).

### Foundational papers / talks
- **Smashing the Stack for Fun and Profit** — Aleph One (Phrack 49) — the origin.
- **The Malloc Maleficarum** — Phantasmal — birth of "House of X" heap techniques.
- **Attacking JavaScript Engines** + **Exploiting Logic Bugs in JS JIT Engines** — saelo (Phrack 70) — browser exploitation primer.
- **OffensiveCon talks** (YouTube) — yearly top exploitation research.

### Tools / frameworks
- **pwntools**, **pwndbg** (best GDB plugin for heap), Ropper/ROPgadget, one_gadget + libc-database.
- Fuzzing: **syzkaller** (Linux kernel), **AFL++**, libFuzzer + honggfuzz, sanitizers (ASan/UBSan/MSan).
- **WinDbg + KDNET** for Windows kernel.

### Wargames / practice
- **how2heap** (Shellphish) — every glibc heap technique per libc version. Start here for heap.
- **pwnable.tw** (hardest quality), **pwnable.kr**, **ROP Emporium**, **HEVD** (Windows kernel LPE), **Google kernelCTF** (real Linux 0-day program + writeups), exploit.education.

### People
- @5aelo (Samuel Groß, V8/JSC/iOS), @azeria (ARM64/PAC), @tiraniddo (Forshaw), @j00ru (Mateusz Jurczyk), @33y0re (Connor McGarr), @Steph3nSims, @gamozolabs (Brandon Falk, fuzzing), @JonathanSalwan, @taviso (Tavis Ormandy), Jann Horn / Ned Williamson (Project Zero).

### Hidden gems
- **The Fuzzing Book** (fuzzingbook.org) — free, interactive; build fuzzers.
- **sploitfun "Understanding glibc malloc"** — best free malloc internals dive.
- **Awesome-Fuzzing** (secfigo), **Exodus Intelligence / grsecurity** blogs.
- Focus order: how2heap + glibc internals → RET2 WarGames or pwn.college advanced → pick ONE track (kernel via HEVD/syzkaller, or browser via V8/saelo path).

---

## 4. Windows internals + kernel / driver / rootkit RE

### Books
- **Windows Internals, 7th ed, Part 1 & 2** — Yosifovich, Ionescu, Russinovich, Allievi — the core reference.
- **Windows Kernel Programming, 2nd ed** — Yosifovich — best driver-dev book.
- **Windows Security Internals** — James Forshaw (2024) — tokens, ACLs, SIDs with PowerShell labs; key for privesc.
- **Rootkits and Bootkits** — Matrosov et al. — modern rootkits + UEFI bootkits.
- **Evading EDR** — Matt Hand (2023) — how EDRs work and where they are blind. Modern must-read.
- **Rootkits: Subverting the Windows Kernel** — Hoglund & Butler — old but foundational theory (hooks, DKOM).
- **Windows APT Warfare** — Sheng-Hao Ma — PE loader internals, attacker view.

### Courses
- **TrainSec** (trainsec.net) — Yosifovich's Windows Internals + Kernel Programming + EDR Internals. Book as video.
- **OST2** — free WinDbg (Intro/Intermediate) + Architecture 1001/2001. Best free start.
- **CodeMachine** (codemachine.com) — Kernel Internals / Debugging / Rootkits / Exploitation. Elite, hands-on WinDbg.
- **Sektor7 Institute** — RED TEAM Operator maldev (cheap, practical C/ASM). **Maldev Academy** — modern maldev + evasion.
- **Zero Point Security CRTO / CRTO II** (Rasta Mouse) — red team ops, C2, OPSEC.

### Blogs / sites
- **Microsoft Learn** — primary source for NT/Win32/WDK/ETW.
- **Geoff Chappell** (geoffchappell.com) — undocumented Windows structures; deepest reference.
- **Alex Ionescu** (alex-ionescu.com), **tiraniddo.dev** (Forshaw, logic-bug privesc), **ired.team** (red-team notes).
- **CodeMachine Articles** (free kernel data-structure refs), **hasherezade 1001 nights**.
- **Palantir "Tampering with Windows Event Tracing"** — best single ETW offense+defense writeup.
- **modexp** (injection/shellcode primitives), **LOLBAS** (living-off-the-land binaries).

### Talks / practice
- **Alex Ionescu** — BlackHat/REcon/Infiltrate (PatchGuard, KPP, syscalls, VBS).
- **James Forshaw** — "Windows Logical Privilege Escalation" + Project Zero.
- **VX-Underground "Black Mass" Vol I & II** — curated malware papers + source.
- **HEVD** — deliberately vulnerable driver; standard kernel-exploit practice.
- **vergiliusproject.com** — versioned kernel struct layouts (_EPROCESS etc). Essential in kernel RE.

### Tools + best learning
- **WinDbg (Preview / X)** — user + kernel; learn via OST2 + Yarden Shafir posts.
- **Sysinternals** (Process Explorer/Monitor, Autoruns, WinObj, RAMMap) — learn from Russinovich's "Case of the Unexplained".
- **x64dbg** (OALabs tutorials), **IDA/Ghidra**, **PE-bear/CFF Explorer** (+ Corkami PE posters), **API Monitor**.
- **PE-sieve/HollowsHunter** (injection detection), **Volatility 3**, **System Informer** (ex Process Hacker).

### People
- @aionescu, @zodiacon (Yosifovich), @tiraniddo (Forshaw), @markrussinovich, @hasherezade, @yarden_shafir (WinDbg/ETW-TI/pool), @33y0re, @FuzzySec (ETW), @matrosov (firmware/bootkits), @C5pider + mr.d0x + NUL0x4C (Maldev Academy/Havoc), @matterpreter (Matt Hand, EDR).

### Hidden gems
- **vergiliusproject.com** — versioned undocumented kernel struct browser.
- **ReactOS source** — open NT reimplementation; guess undocumented internals.
- **Windows Driver Samples** (github.com/microsoft) — real minifilter/WFP/callback patterns.
- **jdu2600/Windows10EtwEvents** — full ETW provider/event dump; ETW hunting map.
- **Corkami pics** — best PE mental model.
- **Debugger data model / JavaScript in WinDbg** (dx, LINQ) — hugely underused for kernel triage.

---

## 5. Firmware / embedded / IoT / hardware RE (go advanced, you have the base)

### Books
- **The Hardware Hacking Handbook** — van Woudenberg & O'Flynn — power analysis + fault injection on real chips. Main text.
- **Blue Fox** — Markstedter — deep A32/A64 RE, firmware extraction/emulation.
- **Practical IoT Hacking** — Chantzis et al. — UART/JTAG/SWD, SPI/I2C, BLE/Wi-Fi/LPWAN.
- **The Car Hacker's Handbook** — Craig Smith — CAN bus, ECU RE (free online).
- **Rootkits and Bootkits** — UEFI/BIOS implants, Secure Boot. The firmware-malware bible.

### Courses
- **Azeria Labs** — free ARM assembly + exploitation. Best free ARM path.
- **OST2** — **Arch4001 x86-64 Intel Firmware Attack & Defense** (advanced BIOS/reset-vector RE).
- **ChipWhisperer.io learn** — free "Power Analysis 101" + labs. Reference for side-channel/glitching.
- **NewAE live training** (O'Flynn), **hardwear.io trainings** (Joe Grand basics + advanced FI/car), **Hextree.io** (stacksmashing + LiveOverflow).
- **Riscure/Raelize training** — elite fault injection + secure-boot bypass (ESP32-break team).

### Blogs
- **Raelize** — best fault-injection + secure-boot bypass writeups (ESP32, QSEE).
- **Quarkslab** — deep firmware RE (VxWorks, Unicorn RH850, binbloom).
- **Colin O'Flynn**, **rtl-sdr.com**, **Great Scott Gadgets** (Ossmann SDR), **firmwaresecurity.com**.
- OWASP **Firmware Security Testing Methodology (FSTM)** — step-by-step assessment method.

### Papers / talks
- **Bypassing Secure Boot using Fault Injection** — Timmers, BH EU 2016. Classic.
- **Breaking Espressif's ESP32 V3** — WOOT'24 — full glitch break of Secure Boot + Flash Encryption.
- **Exploiting QSEE, the Raelize Way** — HITB 2021 — TrustZone TEE exploitation.
- **HALucinator** (USENIX'20) + **Icicle** — firmware rehosting + grey-box fuzzing.

### Tools / hardware
- **binwalk** (carving), **EMBA** (best all-in-one Linux firmware), **FACT** (analysis + diffing at scale), firmware-mod-kit.
- **Ghidra** (+ efiXplorer for UEFI), emulation: **Qiling**, **Unicorn**, **Renode** (bare-metal/RTOS + fuzzing), **FirmAE**.
- **CHIPSEC** (Intel/UEFI), **UEFITool**.
- Hardware: **ChipWhisperer-Husky** (power/glitch), ChipSHOUTER/PicoEMP (EMFI), Bus Pirate, Saleae, Flipper Zero, RTL-SDR, HackRF One.
- RF: **Universal Radio Hacker** + inspectrum. **flashrom + OpenOCD** (SPI dump + JTAG/SWD).

### Conferences + people
- **hardwear.io** (top priority), IEEE HOST, CHES (side-channel academic), DEF CON hardware/IoT/car villages.
- People: @colinoflynn, @joegrand, @stacksmashing (ghidraninja), @azeria_labs, @tieknimmers + Raelize, @michaelossmann, @LiveOverflow.

### Hidden gems
- **awesome-embedded-and-iot-security** (fkie-cad) — best-maintained hub; start map.
- **awesome-trustzone** + **OP-TEE** — study a real TEE to attack it.
- **binbloom** (Quarkslab) — find firmware load/base address for blob RE.
- Console/AirTag glitch+RE writeups — real end-to-end case studies to copy.
- **Interrupt (Memfault) blog** — deep embedded/RTOS internals.

---

## 6. Mobile RE (Android + iOS)

### Books
- ***OS Internals* trilogy** — Jonathan Levin (newosxbook.com) — THE modern iOS reference (XNU, IOKit, SEP, iBoot). Non-negotiable for iOS depth.
- **Android Security Internals** — Nikolay Elenkov — deep Android security model: Binder, permissions, keystore, SELinux.
- **The Mobile Application Hacker's Handbook** — Chell et al. — core app-attack method (both OS).
- **Android Hacker's Handbook** / **iOS Hacker's Handbook** — dated specifics, but foundations stay.
- **iOS Application Security** — David Thiel — practical iOS flaws + Objective-C intro.

### Courses / standards
- **OWASP MASTG + MASVS + MASWE** (mas.owasp.org) — free standard. Start here.
- **8kSec Academy** — Offensive Mobile Reversing & Exploitation, iOS/Android Internals, Mobile Malware. Deepest offensive training.
- **Mobile Hacking Lab** — hands-on labs + certs. **TCM Mobile (PMPA)** — cheap Android entry.
- **HackTricks — Mobile** — fast practical cheatsheet.

### Blogs
- **highaltitudehacks.com** (Prateek Gianchandani, iOS gold), **8kSec blog**, **NowSecure blog** (Frida team), **Project Zero** (Ian Beer, Natalie Silvanovich), **Quarkslab**, **Comsecuris** (baseband), **Grant Hernandez** (FirmWire).

### Papers / talks
- **FirmWire** (NDSS 2022) — baseband dynamic analysis. Best baseband starter.
- **BaseSAFE** — baseband fuzzing. **"How to unc0ver a 0-day in 4 hours"** — Project Zero jailbreak bug.
- **Ivan Krstić Black Hat talks** — Apple's own security architecture (SEP, data protection).

### Tools
- **Frida** (+ codeshare.frida.re), **Objection** (pinning/root/jailbreak bypass one-liner), **jadx** (DEX→Java), **apktool**.
- **Ghidra** (native .so / Mach-O / JNI), **MobSF** (auto scan), **r2frida** (live native RE), **Corellium** (virtual devices, no jailbreak), **MobExler**, **reFlutter**.

### Practice
- **OWASP MAS Crackmes** (official RE challenges), **DVIA-v2** (iOS), DIVA / InsecureBankv2 / InjuredAndroid (Android), **iGoat**, **awesome-mobile-CTF**.

### People
- @prateekg147, Ian Beer + @natashenka (Project Zero), Brandon Azad, @Digital_Cold (Grant Hernandez), @ifsecure (Ivan Fratric), @0xor0ne (daily low-level links), oleavr (Frida creator), @bellis1000 (iOS kernel tutorials).

### Hidden gems
- **newosxbook.com** (Levin's tools jtool2/joker + forum), **opensource.apple.com** (real XNU source), **bananamafia.dev r2frida series**, **kayssel.com** newsletter, community **frida-scripts** (kept current vs new defenses).

---

## 7. Conferences, CTFs, wargames, certs, communities

### Conferences — Tier 1 (pure RE / exploit)
- **REcon Montreal** (recon.cx) — THE RE conference. June, Montreal. Go first.
- **OffensiveCon** (Berlin, May) — best exploit-dev conf in Europe; Pwn2Own Berlin next to it.
- **Hexacon** (Paris, Oct) — elite single-track offensive, by Synacktiv. Sells out fast.
- **RE//verse** (Orlando, Mar) — new pure-RE conf by Binary Ninja makers.
- **Zer0Con** (Seoul, Apr) + **TyphoonCon** (Seoul, May) + **POC** (Seoul, Nov) — high-level Korean vuln/exploit scene.
- **Hardwear.io** (NL Nov / USA May) — hardware. **Objective by the Sea** — 100% Apple/macOS.

### Conferences — malware-focused
- **Virus Bulletin** (huge free paper archive), **Botconf** (botnet/malware), **SAS** (Kaspersky APT summit + CTF).

### Conferences — big/general but worth it
- **Black Hat USA** (OffSec teaches OSEE here), **DEF CON** (CTF finals + villages), **HITB**, **Nullcon**, **Ekoparty**, **Troopers**, **CCC Congress** (all talks free at media.ccc.de), **Bornhack** (hacker camp).

### CTFs that matter
- **Flare-On** (flare-on.com) — solo malware-RE CTF each fall. #1 for your direction; finishing = real credential.
- **DEF CON CTF** (world pwn championship), **Google CTF**, **PlaidCTF** (CMU PPP), **HITCON CTF**, **Real World CTF** (Chaitin), hxp/Dragon/0CTF.
- **Pwn2Own** (ZDI) — pro zero-day contest; long-term career goal. Track everything on **CTFtime**.

### Wargames / practice
- pwnable.kr → pwnable.tw, ROP Emporium, crackmes.one (+ yearly Feb RE CTF), Flare-On archives, MalwareTech Labs, HTB Reversing/Pwn categories, exploit.education, Microcorruption, Nightmare, Dreamhack, reversing.kr, challenges.re.

### Certifications (worth-it notes)
- **OffSec OSED** — best structured entry to modern Windows exploitation.
- **OffSec OSEE (AWE)** — hardest, strongest prestige in exploit dev.
- **GIAC GREM (FOR610)** — malware analysis standard; best if employer pays.
- **GIAC GXPN (SEC660)** — advanced exploit dev; employer-paid.
- **Zero2Automated** (~€180) — best value; reviewers say deeper than GREM content.
- **TCM PJMR** — cheap practical malware cert. **OSCP** — baseline pentest, HR checkbox only.
- Skip: eLearnSecurity eCRE/eCMAP (retired 2023).

### Communities
- pwn.college Discord, **Reverse Engineering Discord** (~14k, low-level focus), **OALabs Discord**, **vx-underground**, **0x00sec** (back online 2026), **OpenToAll** (open CTF team), **Tuts4You** (old-school unpacking), r/ReverseEngineering + r/Malware + r/ExploitDev, mailing lists (Dailydave, Full Disclosure, oss-security).

### Talk aggregators
- **media.ccc.de**, **InfoconDB** ("IMDb of hacker cons"), **InfoCon archive**, **CTFtime**, YouTube channels (DEF CON, OffensiveCon, hardwear.io, Virus Bulletin).

---

## 8. Living sources — blogs, researchers, newsletters, podcasts

### Team blogs
- Google Project Zero (projectzero.google), Trail of Bits, NCC Group Research, Mandiant/FLARE, Check Point Research, RET2 Systems, Positive Technologies / PT SWARM, Zscaler ThreatLabz, SEKTOR7, Maldev Academy.

### Personal blogs
- **ired.team** (offensive notes), **Azeria Labs** (ARM), **hasherezade 1001 nights**, **Elias Bachaalany / AllThingsIDA** (IDA workflows), **Connor McGarr** (Windows kernel), **saelo** (JIT/V8/browser).

### Archives / zines
- **Phrack** (alive, issue 72 = 40th anniversary), **tmp.0ut** (modern ELF/Linux zine), **Paged Out!** (one-page ideas), **POC||GTFO** (polyglot files), **Uninformed** (old-gold Windows papers).

### Researchers to follow
- Halvar Flake / Thomas Dullien (@halvarflake) — RE theory, binary diffing.
- Ilfak Guilfanov (@ilfak) — IDA/Hex-Rays author. Rolf Rolles (@RolfRolles) — deobfuscation.
- Stephen Sims (@Steph3nSims), Saumil Shah (@therealsaumil), Natalie Silvanovich (@natashenka), James Forshaw (@tiraniddo), Alex Ionescu (@aionescu), Marion Marschalek (@pinkflawd), Ange Albertini (@angealbertini), Xeno Kovah (OST2), Tavis Ormandy (@taviso), Alexandre Borges (exploitreversing.com), Gynvael Coldwind.

### Newsletters / aggregators
- **tl;dr sec** (Clint Gibler, weekly tools/talks), **This Week in Security** (Zack Whittaker), **Risky Business** (+ daily Risky Bulletin), **Detection Engineering Weekly**, vx-underground, r/ReverseEngineering, r/netsec, Hacker News.

### Podcasts / YouTube
- **Darknet Diaries** (Jack Rhysider), **Malware Analysis For Hedgehogs** (Karsten Hahn), **LiveOverflow**, **stacksmashing**, **John Hammond**, **OALabs**, **MalwareTech**, **Off By One Security** (Stephen Sims live exploit dev).

### Hidden gems (pros use, most miss)
- **OST2** (ost2.fyi), **Nightmare** (guyinatuxedo), **how2heap**, Flare-On solutions, **MalwareUnicorn** workshops, **Malpedia**, **abuse.ch** (MalwareBazaar/ThreatFox/URLhaus).
- **Diaphora** (open-source binary diffing), **Synacktiv publications** (Pwn2Own champs), **Quarkslab**, **Doyensec**, **Exodus Intelligence** (n-day root-cause), **OffensiveCon YouTube**, **Gynvael Coldwind**.

---

## The "unknowns" — 15 resources most people never find
- **GhidraClass** — full NSA RE course shipped inside the Ghidra repo.
- **OST2 (ost2.fyi)** — free university-grade x86/ARM/firmware/Windows courses.
- **challenges.re** — Yurichev's brutal "what does this code do" drills.
- **dogbolt.org** — diff 10+ decompilers on one upload.
- **corkami** — Ange Albertini's visual file-format posters + PoC binaries.
- **Binary Refinery** — "CyberChef for CLI"; how pros extract malware configs.
- **MWDB + karton + malduck** (CERT.pl) — free malware DB + real automation stack.
- **Unprotect.it + MalAPI.io** — evasion techniques + malicious-API map.
- **vergiliusproject.com** — versioned undocumented Windows kernel structs.
- **airbus-seclab/qemu_blog** — the missing QEMU/TCG internals manual.
- **Raelize blog** — the frontier of fault injection + secure-boot bypass.
- **newosxbook.com** — Levin's iOS/XNU tools, forum, extra material.
- **tmp.0ut** — modern ELF internals zine by real practitioners.
- **InfoconDB / media.ccc.de** — find and watch almost any con talk ever.
- **#100DaysOfYARA** — community challenge that levels up detection fast.

---

## 9. Live streams (Twitch / YouTube live) — watch a pro work

- Why watch live: RE/pwn/malware is a workflow skill. Live shows the real process — hotkeys, tool switching, dead-ends, how they get unstuck. Blogs hide all that.
- Best use: pick one, watch a full session start to end, copy the workflow, not just the result.

### Malware RE
- **OALabs** (Sergei Frankoff + Sean Wilson) — Twitch + YouTube — weekly malware RE, unpacking, config extraction. Best "shoulder-surf a pro" for malware.
- **MalwareTech** (Marcus Hutchins) — YouTube + occasional live — clear RE of hard Windows internals.
- **Malware Analysis For Hedgehogs** (Karsten Hahn) — YouTube, mostly recorded — short, precise malware RE.
- **John Hammond** — YouTube, some live — malware, CTF, tooling.
- **Invoke RE** (Josh Reynolds) — YouTube — Ghidra-first malware RE + automation.

### Exploit dev / pwn
- **Off By One Security** (Stephen Sims + Chompy) — live exploit dev, patch diffing, n-day/0-day walkthroughs.
- **gamozolabs** (Brandon Falk) — fuzzers, emulators, hypervisors from scratch, low-level Rust. Legendary, but banned from Twitch years ago → now YouTube **archives, not reliably live**.
- **Zardus** (Yan Shoshitaishvili) — Twitch + YouTube — pwn.college content, RE/pwn, CTF; runs the course you finished.
- **LiveOverflow** — YouTube, mostly recorded — best concept videos for pwn/RE intuition.

### Hardware / low-level
- **stacksmashing** (Thomas Roth) — YouTube, mostly recorded — hardware hacking + chip attacks.
- **LaurieWired** — YouTube, recorded — steady high-signal RE content.

Note: most are recorded now; the two that stream real *live* RE regularly are **OALabs** (malware) and **Off By One Security** (exploit dev). Start there.

## 10. Women in RE / malware / exploitation / hardware — to follow

- Verified people, grouped by lane. Handles where known.

### RE / decompilation
- **Cristina Cifuentes** — decompilation pioneer (1994 PhD thesis); the roots of every modern decompiler.
- **Kara Nance** — co-author of *The Ghidra Book*.
- **Ophir Harpaz** (@OphirHarpaz) — RE, author of the free **begin.re** workshop; malware researcher.
- **LaurieWired** — steady RE education on YouTube.

### Malware analysis
- **hasherezade / Aleksandra Doniec** (@hasherezade) — Windows malware RE; author of PE-sieve, PE-bear, HollowsHunter.
- **Amanda Rousseau / malwareunicorn** (@malwareunicorn) — malware RE; free RE101/RE102 workshops; offensive engineer at Microsoft.
- **Marion Marschalek** (@pinkflawd) — malware RE and APT analysis; Linux malware trainer.
- **Mila Parkour** — ran **contagio** malware dump; classic sample-sharing resource.

### Exploit dev / vuln research / kernel
- **Maria Markstedter / Azeria** (@azeria_labs) — ARM RE & exploitation; author of *Blue Fox*; founder of Azeria Labs.
- **Natalie Silvanovich** (@natashenka) — Project Zero; 0-click messaging, browser, mobile bugs.
- **Maddie Stone** (@maddiestone) — Project Zero / Google TAG; 0-days in the wild, Android RE.
- **Alisa Esage** (@alisaesage) — browser / hypervisor / iOS / kernel vuln research; first woman to compete at Pwn2Own; runs Zero Day Engineering.
- **Yarden Shafir** (@yarden_shafir) — Windows kernel, WinDbg, ETW-TI, pool internals.
- **Sophia d'Antoine** (@Calaquendi44) — program analysis + exploit dev; founder of Margin Research.
- **Georgia Weidman** (@georgiaweidman) — exploit dev, Smartphone Pentest Framework, author of *Penetration Testing*.

### Hardware / OS security
- **Sheila Berta** (@UnaPibaGeek) — hardware hacking, RE, exploit dev.
- **Joanna Rutkowska** — OS security and rootkits (Blue Pill); founder of Qubes OS.

### Threat intel / DFIR (malware-relevant)
- **Katie Nickels** (@likethecoins) — threat intel, MITRE ATT&CK.
- **Lesley Carhart** (@hacks4pancakes) — DFIR and ICS incident response.
- **Rebekah Brown** — CTI; co-author of *Intelligence-Driven Incident Response*.

### Resource
- **"Women breaking the kernel"** — negativepid.blog — curated list of women doing kernel/low-level work; good for finding more.

## Links
- [[PWN MOC]]
- [[Reverse Engineering]]
- [[Binary Exploitation]]
- [[Phase 2 builds reverse engineering skill]]
- [[Phase 3 covers advanced exploitation and kernel]]
- [[The security roadmap has a master book list]]
- [[Practice exploitation with pwntools, pwn.college, and kernel CTFs]]

## Source
- Multi-agent research (8 directions), Sept 2026. Names/URLs web-verified.
