---
created: 2026-09-27
tags: [security, pwn, reverse-engineering, malware, exploitation, resources, moc]
---

# Security / RE / Pwn — Master Resource List 🧌

> One consolidated, categorized index of **every** resource and link from this repo.
> Merged from: `after pwn.md`, `known pwn.md`, `Reverse Engineering.md`, `assembly.md`,
> `unsorted.md`, `blogs.md`, `books.md`, `youtube.md`, `README.md`.
> Book covers + reading tracker live in [books.html](./books.html). Rule for me: read less, build more — every resource means do the labs and publish a writeup.

## Table of contents
- [My notes-goblin pages](#my-notes-goblin-pages)
- [Practice platforms & wargames](#practice-platforms--wargames)
- [CTFs, competitions & events](#ctfs-competitions--events)
- [Bug bounty & vuln research programs](#bug-bounty--vuln-research-programs)
- [Courses & training](#courses--training)
- [Certifications](#certifications)
- [Books](#books)
- [Assembly & number bases](#assembly--number-bases)
- [ELF & process loading](#elf--process-loading)
- [Reverse engineering — learning & workflow](#reverse-engineering--learning--workflow)
- [Tools — RE & disassembly](#tools--re--disassembly)
- [Tools — debugging & dynamic analysis](#tools--debugging--dynamic-analysis)
- [Tools — exploitation](#tools--exploitation)
- [Tools — fuzzing & vuln research](#tools--fuzzing--vuln-research)
- [Tools — firmware, hardware & embedded](#tools--firmware-hardware--embedded)
- [Tools — kernel, tracing & dev loop](#tools--kernel-tracing--dev-loop)
- [Tools — malware analysis](#tools--malware-analysis)
- [Tools — web, network, blue/red team, cloud](#tools--web-network-bluered-team-cloud)
- [Blogs, sites & writeups](#blogs-sites--writeups)
- [People to follow](#people-to-follow)
- [Women in RE / malware / exploitation / hardware](#women-in-re--malware--exploitation--hardware)
- [Podcasts, YouTube & live streams](#podcasts-youtube--live-streams)
- [Papers, RFCs & protocol docs](#papers-rfcs--protocol-docs)
- [Curated lists, repos & cheat sheets](#curated-lists-repos--cheat-sheets)
- [Conferences](#conferences)
- [Communities](#communities)
- [Career & market intel](#career--market-intel)
- [Adjacent path A — eBPF & cloud-native](#adjacent-path-a--ebpf--cloud-native)
- [Adjacent path B — network security](#adjacent-path-b--network-security)
- [Adjacent path C — electronics](#adjacent-path-c--electronics)
- [Game RE, decompilation & modding](#game-re-decompilation--modding)
- [Newsletters & aggregators](#newsletters--aggregators)
- [Hidden gems — the "unknowns"](#hidden-gems--the-unknowns)

---

## My notes-goblin pages
Published from this repo (view via GitHub Pages or [htmlpreview.github.io](https://htmlpreview.github.io/)).
- [Book Library](https://smalinux.github.io/notes-goblin/books.html) — covers, ratings, reading status, progress & notes
- [Assembly learning path](./assembly.md)
- [x86-64 Mastery](https://smalinux.github.io/notes-goblin/x86-64-mastery.html)
- [x86-64 Cheatsheet](https://smalinux.github.io/notes-goblin/x86-64-cheatsheet.html)
- [Stack Visualizer](https://smalinux.github.io/notes-goblin/stack-visualizer.html)
- [ASLR On vs Off · Process Memory](https://smalinux.github.io/notes-goblin/aslr-memory-layout.html)
- [x86-64 Segment Registers — Interactive Guide](https://smalinux.github.io/notes-goblin/segment_registers.html)
- [Segment Registers in 32-bit x86](https://smalinux.github.io/notes-goblin/segments_32.html)
- [Segment Registers in x86-64](https://smalinux.github.io/notes-goblin/segments_64.html)
- [CPU Architecture Roadmap](https://smalinux.github.io/notes-goblin/cpu-architecture-roadmap.html)
- [Reverse Engineering Roadmap](https://smalinux.github.io/notes-goblin/re-roadmap.html)
- [the_track: Linux Drivers & Linux Malware — 72-week plan](https://smalinux.github.io/notes-goblin/the_track.html)
- [Binary Ninja Mastery Roadmap](https://smalinux.github.io/notes-goblin/binary-ninja-roadmap.html)
- [ELF Mastery Roadmap](https://smalinux.github.io/notes-goblin/elf-roadmap.html)
- [Mastering ELF — Which Spec Is Which?](https://smalinux.github.io/notes-goblin/elfspec.html)
- [Mastering ELF with your own cat](https://smalinux.github.io/notes-goblin/elf-mastery.html)
- [ELF · The Complete Anatomy](https://smalinux.github.io/notes-goblin/elf-anatomy.svg)
- [The ELF File Format](https://smalinux.github.io/notes-goblin/elf-format.svg)
- Own blog to build — https://smalinux.github.io
- My rentry notes — https://rentry.co/smalinux · https://rentry.co/sma-rust

---

## Practice platforms & wargames
- pwn.college — https://pwn.college/
- ROP Emporium — https://ropemporium.com/guide.html
- exploit.education (Phoenix, Nebula, Protostar) — https://exploit.education
- Nightmare (guyinatuxedo, heap/pwn) — https://guyinatuxedo.github.io/nightmare/ · https://guyinatuxedo.github.io
- how2heap (Shellphish) — https://github.com/shellphish/how2heap — every glibc heap technique per libc version
- pwnable.kr · pwnable.tw (hardest quality) · pwnable.xyz
- picoCTF
- Microcorruption (MSP430 firmware, in browser) — https://microcorruption.com
- crackmes.one — https://crackmes.one (+ yearly Feb RE CTF) · Crackme wiki — https://en.wikipedia.org/wiki/Crackme
- reversing.kr · challenges.re (Yurichev's "what does this code do?" drills) · Dreamhack
- ret2wargames / RET2 WarGames (live memory visualizer, browser x64 pwn) — https://wargames.ret2.systems
- HackTheBox — https://www.hackthebox.com (Reversing/Pwn categories) · TryHackMe · Root-Me
- OverTheWire wargames (Bandit, Narnia, Behemoth, Utumno, Natas, Leviathan) — https://overthewire.org/wargames
- Modern Binary Exploitation (RPISEC, free course) · RPISEC MBE
- Malware Unicorn RE101 / RE102 · MalwareTech Labs
- CryptoHack — https://cryptohack.org/ · Cryptopals
- Azeria Labs (ARM asm & exploitation) — https://azeria-labs.com
- PortSwigger Web Security Academy — https://portswigger.net/
- huntr.dev (open-source bounties)
- syzbot dashboard — https://syzkaller.appspot.com
- OWASP IoTGoat · Damn Vulnerable Router Firmware (DVRF) · Damn Vulnerable ARM Router (DVAR)
- SEED Labs (Syracuse) · CTFlearn · VulnHub
- HEVD (Windows kernel LPE) · Google kernelCTF (real Linux 0-day writeups)
- Flare-On archives (best malware-RE skill test) · MemLabs (Volatility CTF) · PMAT-labs (safe samples)
- OWASP MAS Crackmes · DVIA-v2 (iOS) · DIVA / InsecureBankv2 / InjuredAndroid (Android) · iGoat · awesome-mobile-CTF
- Malware-Traffic-Analysis.net — https://malware-traffic-analysis.net (Brad Duncan; pcap + samples)
- CyberDefenders · LetsDefend (free tier) · Blue Team Labs Online · DetectionLab
- flaws.cloud / CloudGoat / Kubernetes Goat
- Ethernaut / Damn Vulnerable DeFi (blockchain)
- Gandalf (LLM challenge) · starctf oob-v8 (first V8 challenge)
- Kaitai Struct Web IDE — https://ide.kaitai.io/ (devel: https://ide.kaitai.io/devel/)
- Godbolt Compiler Explorer — https://godbolt.org/
- GTFOBins — https://gtfobins.github.io/
- Exploitee.rs — https://exploitee.rs · https://Exploitee.rs
- Introductory CTF list (zaratec) — https://zaratec.io/ctf-practice/
- wargame-nexus (catalog) — https://github.com/zardus/wargame-nexus

## CTFs, competitions & events
- CTFtime — https://ctftime.org/
- Google kernelCTF (Linux LPE + container escape) — https://github.com/google/security-research/blob/master/kernelctf/rules.md
- Google kvmCTF (VM escape, $250k) · Chrome VRP
- Pwn2Own — https://en.wikipedia.org/wiki/Pwn2Own
  - Pwn2Own Automotive — https://vicone.com/pwn2own-automotive/
  - Pwn2Own "IoT / SOHO Smashup" category
  - 34 0-days at Pwn2Own — https://cybersecuritynews.com/34-0-day-vulnerabilities-pwn2own/
- Zero Day Initiative (ZDI)
- Flare-On (solo malware-RE CTF each fall) — https://flare-on.com
- DEF CON CTF · Google CTF · PlaidCTF (CMU PPP) · HITCON CTF · Real World CTF (Chaitin, hypervisor) · hxp / Dragon / 0CTF
- Rhme CTF (ChipWhisperer / fault injection) · Hack-A-Sat (satellite)
- Code4rena / Sherlock / Secureum (smart-contract audits)
- Trace Labs CTFs (OSINT) · Snyk "Fetch the Flag" (John Hammond / Snyk)
- Huntress CTF — https://ctf.huntress.com/
- PicoCTF

## Bug bounty & vuln research programs
- HackerOne — https://www.hackerone.com/
- Bugcrowd — https://www.bugcrowd.com/
- Intigriti
- Google VRP / exploit reward expansion — https://security.googleblog.com/2023/10/expanding-our-exploit-reward-program-to.html
- ZDI / CNA (coordinated disclosure)
- SEC Consult Vulnerability Lab — https://sec-consult.com/vulnerability-lab/
- SBA Research (Vienna, TU Wien-affiliated) · We0wnY0u (TU Wien CTF team)
- Gray market (cautionary, NOT recommended): Zerodium — https://en.wikipedia.org/wiki/Zerodium , Crowdfense — https://securityaffairs.com/161584/hacking/crowdfense-30m-exploit-acquisition-program.html

## Courses & training
- OpenSecurityTraining2 (OST2) — https://ost2.fyi/ (portal: https://p.ost2.fyi/) — Xeno Kovah, university-grade x86/ARM/firmware/Windows
  - Arch1001 x86-64 Assembly — https://p.ost2.fyi/courses/course-v1:OpenSecurityTraining2+Arch1001_x86-64_Asm+2021_v1/about
  - RE1001 / RE2001, RE3011 (C++), RE3201 (angr), Debuggers 1012 (GDB), Debuggers 1102 (Ghidra), Arch2001 (OS Internals), Arch4031 (coreboot/firmware), Arch4001 (x86-64 Intel Firmware Attack & Defense), Arch1005, Bluetooth 1601, TC (Trusted Computing), SCA101, FAULT101, WinDbg Intro/Intermediate
- ASU CSE 466 public lectures (pwn.college source course)
- Nand2Tetris — https://nand2tetris.org
- CMU 15-213 / CS:APP labs — https://csapp.cs.cmu.edu/3e/labs.html
- MIT 6.1810 (xv6 OS) — https://pdos.csail.mit.edu/6.1810
- Stanford CS144 Networking — https://cs144.github.io/
- Intro to RE with Ghidra (wrongbaud / HackadayU) · MalwareUnicorn RE101/RE102 · begin.re (Ophir Harpaz) · angr_ctf (17 graded levels) · Azeria ARM tutorials
- "Software Deobfuscation Techniques" — Tim Blazytko (synthesis.to / REcon)
- REcon Montreal trainings · Azeria Labs ARM trainings
- Malware: SANS FOR610 (GREM) → SANS FOR710 · Zero2Automated (0ffset) · TCM PMAT (HuskyHacks) · OALabs Patreon · Invoke RE (Josh Reynolds)
- Exploit dev: OffSec OSED (EXP-301) · OffSec OSEE (EXP-401 / AWE) · Corelan Bootcamp + Advanced · SANS SEC760 (Stephen Sims) · SANS SEC660 (GXPN)
- Windows: TrainSec (trainsec.net, Yosifovich) · CodeMachine (codemachine.com) · Sektor7 Institute · Maldev Academy · Zero Point Security CRTO / CRTO II (Rasta Mouse)
- Firmware/hardware: TCM "Beginner's Guide to IoT and Hardware Hacking" · Gray Hat Academy IoT Firmware Exploitation · Attify Offensive IoT Exploitation (OIX) · HeXtree.io / Hardware Hacking 101 (Just Hacking Training / stacksmashing + LiveOverflow) · ChipWhisperer.io "Power Analysis 101" · NewAE live (O'Flynn) · hardwear.io trainings (Joe Grand) · Riscure/Raelize fault-injection training
- Mobile: OWASP MASTG + MASVS + MASWE (mas.owasp.org) · 8kSec Academy · Mobile Hacking Lab · TCM Mobile (PMPA) · HackTricks Mobile
- Bootlin slides (embedded Linux)
- Google Cybersecurity Certificate (Coursera, audit free)
- SANS Cyber Aces / SANS FOR / SANS MGT
- Professor Messer Network+ / Security+ (free YouTube) · Practical Networking (YouTube, TCP/IP)
- Hoppers Roppers pwning roadmap — https://www.hoppersroppers.org/roadmap/training/pwning.html  ⭐⭐⭐⭐⭐
- Izzy's "pwner's roadmap" — https://izzy.sh/posts/pwners-roadmap/  ⭐⭐⭐⭐⭐
- Cybershelf best RE books — https://www.cybershelf.org/en/blog/best-reverse-engineering-books-2026
- Cybershelf best cybersecurity books — https://www.cybershelf.org/en/guides/best-cybersecurity-books-2026
- Kernel Recipes 2026: single place to learn Linux kernel internals — Day 1 https://lnkd.in/dTE83Tpd · Day 2 https://lnkd.in/d8vcnmnW · Day 3 https://lnkd.in/ddv5dBaY

## Certifications
- OSCP (PEN-200) — baseline pentest, HR checkbox
- OSED (EXP-301) · OSEE (elite tier) · GXPN (SEC660)
- GIAC GREM (FOR610) — malware analysis standard · TCM PJMR / PJMR practical malware cert
- Zero2Automated (~€180) — best value, reviewers say deeper than GREM
- CompTIA Network+ / Security+, eJPT, PNPT, CCNA (entry/network)
- Governance/standards: CISSP path, Common Criteria, FIPS 140-3, EMVCo, ISA/IEC 62443, ISO 27001, SOC 2, NIST CSF, CIS Controls
- Skip: eLearnSecurity eCRE/eCMAP (retired 2023)

---

## Books
Full shelf with covers, ratings & reading tracker → [books.html](./books.html). Extended lists below.

### Exploitation, RE & systems
- Hacking: The Art of Exploitation — Jon Erickson — https://www.amazon.com/Hacking-Art-Exploitation-Jon-Erickson/dp/1593271441
- Practical Binary Analysis — Dennis Andriesse — https://www.amazon.com/Practical-Binary-Analysis-Instrumentation-Disassembly/dp/1593279124
- Practical Reverse Engineering — Dang, Gazet, Bachaalany — https://www.amazon.com/Practical-Reverse-Engineering-Reversing-Obfuscation/dp/1118787315
- The Shellcoder's Handbook (2nd) — Anley et al. — https://www.amazon.com/Shellcoders-Handbook-Discovering-Exploiting-Security/dp/047008023X
- A Guide to Kernel Exploitation — Perla & Oldani — https://www.amazon.com/Guide-Kernel-Exploitation-Attacking-Core/dp/1597494860
- The Art of Software Security Assessment (TAOSSA) — Dowd, McDonald, Schuh — https://www.amazon.com/Art-Software-Security-Assessment-Vulnerabilities/dp/0321444426
- The Ghidra Book — Eagle & Nance · The IDA Pro Book — Chris Eagle ⭐
- Blue Fox: Arm Assembly Internals & RE — Maria Markstedter
- Reverse Engineering for Beginners (RE4B) — Dennis Yurichev (free) — https://beginners.re/
- Reversing: Secrets of Reverse Engineering — Eldad Eilam · Surreptitious Software — Collberg & Nagra
- Learning Linux Binary Analysis — Ryan "elfmaster" O'Neill
- Linkers and Loaders — John Levine (free) · SAT/SMT by Example — Yurichev (free) · The Beginner's Guide to IDAPython — Alexander Hanel
- The Fuzzing Book (free) — https://fuzzingbook.org
- Fuzzing: Brute Force Vulnerability Discovery — Sutton et al.
- Gray Hat Hacking, 6th ed — Harper, Sims et al.
- A Bug Hunter's Diary — Tobias Klein · Attacking Network Protocols — James Forshaw
- Computer Systems: A Programmer's Perspective (CS:APP) — Bryant & O'Hallaron
- The Linux Programming Interface (TLPI) — Michael Kerrisk
- Operating Systems: Three Easy Pieces (OSTEP, free) — https://pages.cs.wisc.edu/~remzi/OSTEP
- Computer Architecture: A Quantitative Approach / Computer Organization and Design — Hennessy & Patterson
- Linux Kernel Development — Robert Love · Understanding the Linux Kernel — Bovet & Cesati
- Windows Internals (Parts 1 & 2) — Russinovich et al. · Windows Kernel Programming (2nd) — Yosifovich · Windows Security Internals — Forshaw (2024) · Windows APT Warfare — Sheng-Hao Ma · Evading EDR — Matt Hand (2023) · Rootkits: Subverting the Windows Kernel — Hoglund & Butler
- *OS Internals (I–III) — Jonathan Levin (mobile / macOS)
- Attacking JavaScript Engines — Saelo (Phrack 70)

### Malware analysis, intel & forensics
- Practical Malware Analysis — Sikorski & Honig
- The Art of Memory Forensics — Ligh, Case, Levy, Walters
- Evasive Malware — Kyle Cucci (2024) · Mastering Malware Analysis (2nd) — Kleymenov & Thabet · Learning Malware Analysis — Monnappa K A
- Malware Analysis and Detection Engineering — Mohanta & Saldanha
- Rootkits and Bootkits — Matrosov, Rodionov, Bratus
- Attribution of Advanced Persistent Threats — Timo Steffens · Intelligence-Driven Incident Response — Roberts & Brown · Malware Data Science — Saxe & Sanders · The Ransomware Hunting Team — Dudley & Golden
- The Art of Mac Malware — Patrick Wardle (free at taomm.org)

### Bug bounty, web, network, crypto, hardware, mobile
- Real-World Bug Hunting — Peter Yaworski · Bug Bounty Bootcamp — Vickie Li
- The Web Application Hacker's Handbook · The Tangled Web
- Serious Cryptography (2nd) — Aumasson · Cryptographic Engineering — Page · A Graduate Course in Applied Cryptography — Boneh & Shoup (free) · Real-World Cryptography — David Wong · Cryptography and Network Security — William Stallings
- Security Engineering — Ross Anderson (free) · Threat Modeling — Adam Shostack
- Penetration Testing — Georgia Weidman · The Hacker Playbook 3 — Peter Kim
- Practical IoT Hacking — Chantzis, Stais, Calderon — https://www.amazon.com/Practical-IoT-Hacking-Fotios-Chantzis/dp/1718500904
- The Hardware Hacking Handbook — van Woudenberg & O'Flynn — https://www.amazon.com/Hardware-Hacking-Handbook-Breaking-Embedded/dp/1593278748
- The Car Hacker's Handbook (free) · Power Analysis Attacks
- Computer Networking: A Top-Down Approach — Kurose & Ross · TCP/IP Illustrated Vol.1 — Stevens/Fall · Practical Packet Analysis — Chris Sanders · Network Security Assessment — Chris McNab · The Practice of Network Security Monitoring — Bejtlich · Applied Network Security Monitoring — Sanders & Smith
- Mobile: OS Internals trilogy — Jonathan Levin (newosxbook.com) · Android Security Internals — Elenkov · The Mobile Application Hacker's Handbook — Chell et al. · Android Hacker's Handbook · iOS Hacker's Handbook · iOS Application Security — David Thiel

---

## Assembly & number bases
- Assembly learning path (mine): [pwn.college Computing 101](https://pwn.college/computing-101/) → OST2 Architecture 1001 x86-64 Assembly
- Flippy Bit and the Attack of the Hexadecimals from Base 16 (Hex↔Binary) — https://flippybitandtheattackofthehexadecimalsfrombase16.com/
- Cisco Binary Game (Binary↔Decimal) — https://learningnetwork.cisco.com/s/binary-game
- Online disassembler (Google: "Online disassembler")
- aarch64-esr-decoder — https://esr.arm64.dev/
- Godbolt Compiler Explorer — https://godbolt.org/ · diff decompilers: dogbolt.org
- rappel (asm REPL) — https://github.com/yrp604/rappel
- x64 software conventions (MSVC) — https://learn.microsoft.com/en-us/cpp/build/x64-software-conventions?view=msvc-160
- felixcloutier.com/x86 (instruction reference) · agner.org/optimize (calling conventions PDF)
- dsohowto.pdf (Drepper, "How To Write Shared Libraries") — https://www.akkadia.org/drepper/dsohowto.pdf

## ELF & process loading
- Intezer ELF 101 — part 1 (sections/segments) https://intezer.com/blog/executable-and-linkable-format-101-part-1-sections-and-segments · part 2 (symbols) https://intezer.com/blog/executable-linkable-format-101-part-2-symbols · part 3 (relocations) https://intezer.com/blog/executable-and-linkable-format-101-part-3-relocations · part 4 (dynamic linking) https://intezer.com/blog/executable-linkable-format-101-part-4-dynamic-linking
- linux-insides syscall — https://0xax.gitbooks.io/linux-insides/content/SysCall/linux-syscall-4.html
- Linux process loading gist (CMCDragonkai) — https://gist.github.com/CMCDragonkai/10ab53654b2aa6ce55c11cfc5b2432a4
- Kaitai Struct Web IDE — https://ide.kaitai.io/ (devel https://ide.kaitai.io/devel/) · repo https://github.com/kaitai-io/kaitai_struct_webide · awesome https://github.com/kaitai-io/awesome-kaitai · guide https://gettocode.com/2017/09/22/kaitai-web-ide-on-windows-and-linux/ · https://www.techwriter.ai/kaitai/tooling/web-ide-and-gallery
- ELF tooling: `gcc`, `readelf`, `objdump`, `nm`, `patchelf`, `objcopy`, `strip`, `ldd`/`lddtree`, `strace`, `ltrace`; `man 2 execve`, `man syscall`, `man open`
- Syscall tables — https://x64.syscall.sh/ · https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/ · https://filippo.io/linux-syscall-table/ · https://syscalls.mebeim.net/?table=x86/64/x64/latest · https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md

## PE Windows format
- [An In-Depth Look into the Win32 Portable Executable File Format - Part 1](https://www.delphibasics.info/home/delphibasicsarticles/anin-depthlookintothewin32portableexecutablefileformat-part1) by Matt Pietrek #article — PE headers deep dive
- [An In-Depth Look into the Win32 Portable Executable File Format - Part 2](https://www.delphibasics.info/home/delphibasicsarticles/anin-depthlookintothewin32portableexecutablefileformat-part2) by Matt Pietrek #article — PE sections, imports, exports

## Reverse engineering — learning & workflow
- Static tools: kaitai struct (https://ide.kaitai.io/), nm, strings, objdump, checksec (https://github.com/slimm609/checksec.sh · https://github.com/slimm609/checksec)
- Disassemblers — commercial: IDA Pro (https://www.hex-rays.com/products/ida/), Binary Ninja (https://binary.ninja/); free: Binary Ninja Cloud (https://cloud.binary.ninja/) ⭐; open source: angr-management (https://github.com/angr/angr-management/releases), Ghidra (https://ghidra-sre.org/), Cutter (https://cutter.re/)
- Dynamic / tracing: ltrace, strace, gdb (1-min intro https://youtu.be/HcBordv7aWU?t=246 ; record & replay https://sourceware.org/gdb/current/onlinedocs/gdb.html/Process-Record-and-Replay.html · https://sourceware.org/gdb/current/onlinedocs/gdb/Process-Record-and-Replay.html ; manual PDF https://sourceware.org/gdb/current/onlinedocs/gdb.pdf)
- Timeless / record-replay debugging: qira (QEMU Interactive Runtime Analyzer) — https://github.com/geohot/qira · https://qira.me/ · https://web.archive.org/web/20260217093709/https://qira.me/ ; rr — https://github.com/rr-debugger/rr · https://github.com/mozilla/rr
- Walkthroughs: Adam Doupé (ASU) hacking challenges — https://www.youtube.com/watch?v=qGt-0OOAFcM&list=PLK06XT3hFPziMAZj8QuoqC8iVaEbrlZWh ⭐
- Here Be Dragons: Reverse Engineering with Ghidra — Part 1 (Steven Patterson, Shogun Lab; tutorial series with CrackMe/CTF exercises) — https://www.shogunlab.com/blog/2019/12/22/here-be-dragons-ghidra-1.html
- RE tutorial series (mytechnotalent) — https://github.com/mytechnotalent/Reverse-Engineering ⭐
- Practice ladder: crackmes.one → reversing.kr → challenges.re; pwnable.kr → pwnable.tw → ROP Emporium → how2heap; Flare-On archives → live Flare-On each fall; Microcorruption
- Practical Reverse Engineering (book) notes: MSRs (RDMSR/WRMSR, ring 0), SYSENTER → IA32_SYSENTER_EIP MSR (0x17), CR0/CR3

---

## Tools — RE & disassembly
- Ghidra (ghidra.re + The Ghidra Book + GhidraClass — full NSA course inside the repo)
- IDA Pro / IDA Free + Hex-Rays (Igor's Tips; Hanel IDAPython book; microcode API via Rolf Rolles)
- Binary Ninja (learn LLIL/MLIL/HLIL; scripting-first) — API https://api.binary.ninja/ · cookbook https://docs.binary.ninja/dev/cookbook.html · plugins https://extensions.binary.ninja/ · https://banteg.xyz/posts/bn/ · https://zerotistic.github.io/binja-plugins/ · psifertex/callgraph https://github.com/psifertex/callgraph
- radare2 / rizin / Cutter (book.rada.re, book.rizin.re, Megabeets' journey) ⭐⭐⭐⭐
- angr (symbolic execution) + angr_ctf · Triton · Miasm · Unicorn · Qiling
- KLEE / SVF (symbolic / static analysis)
- Level-up plugins: Lighthouse (coverage) + Tenet (trace) by Markus Gaasedelen; ret-sync; gooMBA; msynth
- Diaphora / BinDiff (binary diffing)
- Kaitai Struct — https://github.com/kaitai-io/kaitai_struct_webide , awesome: https://github.com/kaitai-io/awesome-kaitai
- rappel (asm REPL) — https://github.com/yrp604/rappel
- aarch64-esr-decoder — https://esr.arm64.dev/
- readelf / nm / objdump / patchelf / objcopy / strip

## Tools — debugging & dynamic analysis
- gdb + pwndbg / GEF / peda ⭐⭐⭐⭐
- x64dbg (Windows) · WinDbg + Time Travel Debugging (TTD)
- Frida · Unicorn · Qiling · angr · Triton
- strace / ltrace
- rr (record-replay) · qira (timeless)

## Tools — exploitation
- pwntools — https://docs.pwntools.com/en/latest/ — https://github.com/gallopsled/pwntools (cli https://docs.pwntools.com/en/stable/commandline.html , globals https://docs.pwntools.com/en/stable/globals.html)
- ROPgadget · ropper · one_gadget · libc-database
- WinDbg + KDNET (Windows kernel)

## Tools — fuzzing & vuln research
- AFL++ · libFuzzer · honggfuzz
- syzkaller / syzbot (Linux kernel) · OSS-Fuzz
- Sanitizers: ASan / UBSan / MSan
- Awesome-Fuzzing (secfigo)

## Tools — firmware, hardware & embedded
- binwalk · unblob (supersedes binwalk) · firmware-mod-kit
- FACT · EMBA · FirmAE / Firmadyne
- qiling · qemu-user / qemu-system (QEMU) — https://github.com/qemu/qemu · Renode (bare-metal/RTOS + fuzzing)
- Ghidra + efiXplorer (UEFI) · CHIPSEC (Intel/UEFI) · UEFITool · binbloom (Quarkslab)
- Buildroot / Yocto · U-Boot / barebox
- ChipWhisperer — https://www.newae.com/chipwhisperer (jupyter https://github.com/newaetech/chipwhisperer-jupyter) / ChipSHOUTER / PicoEMP / Findus / ChipWhisperer-Husky
- PicoScope 6000 · logic analyzer / Saleae · Bus Pirate · Flashrom · OpenOCD · Flipper Zero
- Lascar / SCALib / ASCAD (side-channel analysis)
- SDR / GNU Radio / HackRF / RTL-SDR · rtl-sdr.com · Ubertooth · Proxmark3 (RFID) · Universal Radio Hacker + inspectrum
- SocketCAN (CAN bus)
- OP-TEE / TF-A / Keylime (trusted computing)
- awesome-implementation-attack — https://github.com/danpage/awesome-implementation-attack
- Hardware gear: T-Deck (LilyGo) — https://lilygo.cc/en-us/products/t-deck , biscuitshop — https://biscuitshop.us/collections/products , EFF Rayhunter — https://eff.org/rayhunter (org https://github.com/efforg)

## Tools — kernel, tracing & dev loop
- virtme-ng (fast kernel test loop) · ccache · icecc
- ftrace / trace-cmd · perf · bpftrace / bcc / libbpf
- KASAN / UBSAN / lockdep · KUnit / kselftest
- b4 + git send-email (upstream patch workflow) · aerc / mutt
- KernelShark · Perfetto
- xairy/linux-kernel-exploitation — https://github.com/xairy/linux-kernel-exploitation
- google/security-research (kernelCTF submissions) — https://github.com/google/security-research
- vergiliusproject.com (versioned kernel struct layouts) · ReactOS source · Windows Driver Samples (github.com/microsoft) · jdu2600/Windows10EtwEvents

## Tools — malware analysis
- Triage: Detect It Easy, pestudio, PE-bear, CFF Explorer, CyberChef
- FLARE set: FLARE-VM, FLOSS, capa, GoReSym, Speakeasy
- .NET: dnSpyEx, de4dot, ILSpy · Go/Rust: GoReSym, GoResolver (Volexity 2025)
- Unpacking: UnpacMe, PE-sieve/HollowsHunter (hasherezade), TinyTracer, dumpulator
- Shellcode/maldocs: scdbg, BlobRunner, Didier Stevens Suite (oledump, xorsearch), oletools
- Memory: Volatility 3, MemProcFS
- Network/C2: Wireshark, FakeNet-NG, INetSim, JA3/JA4 fingerprints, C2 Matrix
- Detection: YARA + YARA-X, Sigma, Neo23x0/signature-base (Florian Roth)
- Config extraction: Binary Refinery, malduck + karton + MWDB (CERT.pl)
- Sandboxes: CAPEv2, ANY.RUN, Joe Sandbox, Tria.ge, Hybrid Analysis, DRAKVUF, VirusTotal + LiveHunt
- Sample sources: MalwareBazaar (abuse.ch), vx-underground, VirusShare/MalShare, Malpedia, theZoo, malware-traffic-analysis.net, contagio
- Reference: MalAPI.io, Malpedia (malpedia.caad.fkie.fraunhofer.de), Unprotect.it, Malcat (malcat.fr)

## Tools — web, network, blue/red team, cloud
- Burp Suite — https://portswigger.net/burp
- Wireshark / tshark / termshark — https://github.com/wireshark/wireshark · tcpdump
- mitmproxy — https://github.com/mitmproxy/mitmproxy
- nmap / masscan · Scapy · bettercap · Ettercap · aircrack-ng
- Metasploit · BloodHound · Sliver / Mythic / Cobalt Strike · Havoc
- GoPhish / Maltego / SET (SE & OSINT)
- Frida / objection / MobSF (mobile) · Pacu / ScoutSuite (cloud)
- DVWA — https://github.com/digininja/DVWA
- Recon: OWASP Amass — https://github.com/owasp-amass/amass , subfinder — https://github.com/projectdiscovery/subfinder , httprobe — https://github.com/tomnomnom/httprobe , subzy — https://github.com/PentestPad/subzy
- Secrets/SAST: TruffleHog — https://github.com/trufflesecurity/trufflehog , Gitleaks — https://github.com/gitleaks/gitleaks , Semgrep — https://github.com/semgrep/semgrep , Checkov — https://github.com/bridgecrewio/checkov , CodeQL
- Containers/images: Trivy — https://github.com/aquasecurity/trivy , Clair — https://github.com/quay/clair
- Crypto/hygiene: age — https://github.com/FiloSottile/age , sops — https://github.com/getsops/sops , WireGuard, LUKS + YubiKey, restic / borg, podman / distrobox, BFG Repo-Cleaner — https://github.com/rtyley/bfg-repo-cleaner
- Detection/DFIR: Snort / Suricata / Zeek / Security Onion, Sigma, Splunk / Elastic, Volatility / Autopsy / KAPE / plaso, Velociraptor / GRR, OSQuery, MISP / OpenCTI / VirusTotal, YARA, REMnux / FLARE-VM, Any.run / Triage
- Purple/deception: Atomic Red Team / Caldera / Prelude, T-Pot / Cowrie / Thinkst Canary
- Lab: GNS3 / EVE-NG, VirtualBox / VMware, Docker

---

## Blogs, sites & writeups
### RE / deobfuscation / decompilation
- synthesis.to (Tim Blazytko) · msreverseengineering.com/blog (Rolf Rolles) · hex-rays.com/blog ("Igor's Tip of the Week") · binary.ninja/blog (Vector 35) · blog.quarkslab.com
- mahaloz.re + decompilation.wiki ("30 Years of Decompilation") · megabeets.net (radare2) · unprotect.it · felixcloutier.com/x86 · agner.org/optimize
- airbus-seclab/qemu_blog · corkami (Ange Albertini) · dogbolt.org · Ricardo Narvaja RE courses (Spanish)
### Exploitation / kernel
- Google Project Zero (projectzero.google) · Phrack — https://phrack.org · RET2 Systems blog · Connor McGarr · Zero Day Initiative blog · Zon8 Research JS engine reading list · browser-pwn (m1ghtym0) · Nightmare (guyinatuxedo) · sploitfun "Understanding glibc malloc" · Exodus Intelligence / grsecurity
### Windows internals
- Microsoft Learn · Geoff Chappell (geoffchappell.com) · Alex Ionescu (alex-ionescu.com) · tiraniddo.dev (Forshaw) · ired.team · CodeMachine Articles · hasherezade "1001 nights" · Palantir "Tampering with Windows Event Tracing" · modexp · LOLBAS
### Malware
- Mandiant/FLARE (cloud.google.com/blog/topics/threat-intelligence) · Check Point Research · Securelist / Kaspersky GReAT · SentinelLabs · Elastic Security Labs · Unit 42 · Cisco Talos · Zscaler ThreatLabz · ESET WeLiveSecurity · The DFIR Report · hasherezade's blog · 0ffset blog · MalwareTech · vx-underground · Malpedia · n1ght-w0lf · ired.team · decoded.avast.io · exploitreversing.com (Alexandre Borges)
- APT collections: APTnotes (github.com/aptnotes/data) · CyberMonitor APT & CyberCriminal Collections · ThaiCERT Threat Group Cards (apt.etda.or.th) · Virus Bulletin archive · Mandiant APT1 (2013) · MITRE ATT&CK
### Firmware / hardware
- Raelize · Quarkslab · Colin O'Flynn · rtl-sdr.com · Great Scott Gadgets (Ossmann) · firmwaresecurity.com · OWASP Firmware Security Testing Methodology (FSTM) · Interrupt (Memfault) blog
### Mobile
- highaltitudehacks.com (Prateek Gianchandani) · 8kSec blog · NowSecure blog · Project Zero (Ian Beer, Natalie Silvanovich) · Quarkslab · Comsecuris (baseband) · Grant Hernandez (FirmWire) · newosxbook.com · bananamafia.dev r2frida series · kayssel.com
### Team & personal blogs
- Trail of Bits · NCC Group Research · Positive Technologies / PT SWARM · SEKTOR7 · Maldev Academy · SpecterOps · colonelpanic.tech — https://colonelpanic.tech/
- saelo (JIT/V8/browser) · Elias Bachaalany / AllThingsIDA · Yarden Shafir (WinDbg/ETW-TI)
### Archives / zines
- Phrack (esp. #49, #70, #72 40th anniversary) · tmp.0ut (modern ELF/Linux zine) · Paged Out! · POC||GTFO · Uninformed · VX-Underground "Black Mass" Vol I & II

## People to follow
- RE/tools: @mr_phrazer (Blazytko), @RolfRolles, @Fox0x01 (Azeria), @JonathanSalwan (Triton), @aquynh (Capstone/Unicorn/Qiling), @Zardus + @mahal0z (angr, pwn.college), @ilfak + @igorskochinsky (Hex-Rays), @psifertex (Binja), @trufae (r2), @xoreaxeaxeax (Domas), @angealbertini (file formats), Halvar Flake / Thomas Dullien (@halvarflake)
- Malware: @hasherezade, @struppigel (Karsten Hahn), @malwareunicorn, @herrcore (OALabs), @0verfl0w_ (Zero2Automated), @HuskyHacks, @jstrosch, @malware_traffic (Brad Duncan), @cyb3rops (Florian Roth), @craiu (Costin Raiu), @juanandres_gs (Guerrero-Saade), @demonslay335 + @fwosar (ransomware), @DidierStevens, @embee_research, @vxunderground
- Exploit dev: @5aelo (Samuel Groß), @azeria (ARM64/PAC), @tiraniddo (Forshaw), @j00ru (Mateusz Jurczyk), @33y0re (Connor McGarr), @Steph3nSims, @gamozolabs (Brandon Falk), @taviso (Tavis Ormandy), Jann Horn / Ned Williamson (Project Zero)
- Windows: @aionescu, @zodiacon (Yosifovich), @markrussinovich, @yarden_shafir, @FuzzySec, @matrosov, @C5pider + mr.d0x + NUL0x4C (Maldev Academy/Havoc), @matterpreter (Matt Hand)
- Firmware/hardware: @colinoflynn, @joegrand, @stacksmashing (ghidraninja), @azeria_labs, @tieknimmers + Raelize, @michaelossmann, @LiveOverflow, @0xor0ne
- Mobile: @prateekg147, Ian Beer + @natashenka, Brandon Azad, @Digital_Cold (Grant Hernandez), @ifsecure (Ivan Fratric), oleavr (Frida), @bellis1000
- Also: Saumil Shah (@therealsaumil), Ange Albertini, Xeno Kovah (OST2), Gynvael Coldwind

## Women in RE / malware / exploitation / hardware
- RE / decompilation: Cristina Cifuentes · Kara Nance (The Ghidra Book) · Ophir Harpaz (@OphirHarpaz, begin.re) · LaurieWired
- Malware: hasherezade / Aleksandra Doniec (@hasherezade) · Amanda Rousseau / malwareunicorn (@malwareunicorn) · Marion Marschalek (@pinkflawd) · Mila Parkour (contagio)
- Exploit dev / vuln research / kernel: Maria Markstedter / Azeria (@azeria_labs) · Natalie Silvanovich (@natashenka) · Maddie Stone (@maddiestone) · Alisa Esage (@alisaesage) · Yarden Shafir (@yarden_shafir) · Sophia d'Antoine (@Calaquendi44) · Georgia Weidman (@georgiaweidman)
- Hardware / OS security: Sheila Berta (@UnaPibaGeek) · Joanna Rutkowska (Qubes OS)
- Threat intel / DFIR: Katie Nickels (@likethecoins) · Lesley Carhart (@hacks4pancakes) · Rebekah Brown
- Resource: "Women breaking the kernel" — negativepid.blog

## Podcasts, YouTube & live streams
- LiveOverflow (binary exploitation series) · pwn.college lecture playlists · John Hammond · stacksmashing · Gynvael Coldwind
- Darknet Diaries (Jack Rhysider) · Malware Analysis For Hedgehogs (Karsten Hahn) · OALabs · MalwareTech · Off By One Security (Stephen Sims live exploit dev) · Invoke RE (Josh Reynolds) · LaurieWired — https://www.youtube.com/@lauriewired
- Live RE to shoulder-surf: OALabs (Twitch+YouTube, malware) · Off By One Security (exploit dev) · Zardus / Yan Shoshitaishvili (Twitch+YouTube, pwn.college) · gamozolabs (Brandon Falk, YouTube archives)
- DEF CON — https://defcon.org/ (YouTube https://www.youtube.com/@DEFCONConference)
- Security Fest — https://www.youtube.com/@securityfest
- Cyb3rMaddy — https://www.youtube.com/@Cyb3rMaddy
- 13cubed (DFIR, YouTube)
- Binary Exploitation PWN101 (guided walkthrough) — https://www.youtube.com/playlist?list=PLchBW5mYosh_F38onTyuhMTt2WGfY-yr7
- Irongeek — https://www.youtube.com/@irongeek
- Joe Rozner (built a BN plugin) — https://www.youtube.com/@JoeRozner/videos
- Off By One Security clip — https://www.youtube.com/watch?v=hV-O6immhcU
- Binary Ninja intro (9-yr-old video) — https://www.youtube.com/watch?v=3ZuHXR2G2Dg · https://www.youtube.com/watch?v=3TmqmiZl8i0
- Josh Watson Twitch clips — https://www.twitch.tv/josh_watson/clips?range=all
- Watch-later queue: https://www.youtube.com/watch?v=w_rQJ7u-lpk · https://www.youtube.com/watch?v=KiPeQyv9JYY · https://www.youtube.com/watch?v=krmxFEOaHss · https://www.youtube.com/watch?v=zjafMP7EgEA&list=PLfi5XR5jA2Hofpdf0i9docq9ZkP1ihenL · https://www.youtube.com/watch?v=Dzn0woX-WW0 · https://www.youtube.com/watch?v=9IOTAZD4OaM&sttick=0
- Channels: https://www.youtube.com/@annabocca/videos · https://www.youtube.com/@bashbunni/videos · https://www.youtube.com/@BenVallack/videos · https://www.youtube.com/@devopstoolbox · https://www.youtube.com/@typecraft_dev/videos
- ELF history video — https://www.youtube.com/embed/2pqvHSy11JE
- gdb quick intro — https://youtu.be/HcBordv7aWU?t=246

## Papers, RFCs & protocol docs
- "Smashing the Stack for Fun and Profit" — Aleph One (Phrack 49)
- "The Malloc Maleficarum" — Phantasmal · "Attacking JavaScript Engines" + "Exploiting Logic Bugs in JS JIT Engines" — saelo (Phrack 70)
- "Setuid Demystified" — USENIX Security 2002 (Chen, Wagner, Dean)
- SoK: All You Ever Wanted to Know About x86/x64 Binary Disassembly — Pang et al., S&P 2021
- An In-Depth Analysis of Disassembly on Full-Scale Binaries — Andriesse et al., USENIX 2016
- Reverse Compilation Techniques — Cristina Cifuentes, 1994
- No More Gotos (DREAM) — Yakdan et al., NDSS 2015 · Ahoy SAILR! — Basque et al., USENIX 2024
- SoK: (State of) The Art of War — Shoshitaishvili et al., S&P 2016 (angr) · Syntia — Blazytko et al., USENIX 2017
- Firmware: Bypassing Secure Boot using Fault Injection — Timmers, BH EU 2016 · Breaking Espressif's ESP32 V3 — WOOT'24 · Exploiting QSEE the Raelize Way — HITB 2021 · HALucinator (USENIX'20) + Icicle
- Mobile: FirmWire (NDSS 2022) · BaseSAFE · "How to unc0ver a 0-day in 4 hours" (Project Zero) · Ivan Krstić Black Hat talks
- Tor design paper — https://svn.torproject.org/svn/projects/design-paper/tor-design.pdf (spec https://spec.torproject.org/ , code https://gitlab.torproject.org/tpo/core/tor , walkthrough https://tpo.pages.torproject.net/core/doc/tor/ , Arti/Rust https://gitlab.torproject.org/tpo/core/arti)
- RFCs: 791 (IPv4) https://www.rfc-editor.org/rfc/rfc791.html , 8200 (IPv6) https://www.rfc-editor.org/rfc/rfc8200.html , 9293 (TCP) https://www.rfc-editor.org/rfc/rfc9293.html , 826 (ARP) https://www.rfc-editor.org/rfc/rfc826.html ; also 1122, 6864, 4291, 4443, 4861, 7414, 7323, 2018, 5681, 6298, 5227, 5494, 2460
- IANA registries: protocol-numbers https://www.iana.org/assignments/protocol-numbers , tcp-parameters https://www.iana.org/assignments/tcp-parameters , arp-parameters https://www.iana.org/assignments/arp-parameters
- IPv4 refs: Wikipedia https://en.wikipedia.org/wiki/Internet_Protocol , NetworkLessons https://networklessons.com/ip-routing/ipv4-packet-header
- Linux net source: https://github.com/torvalds/linux/tree/master/net/ipv4 , ARP https://github.com/torvalds/linux/blob/master/net/ipv4/arp.c
- Python requests docs — https://requests.readthedocs.io/en/latest/
- Bash Scripting Tutorial — https://bash.cyberciti.biz/guide/Main_Page
- Linux man-pages — https://man7.org/linux/man-pages/ , credentials(7) — https://man7.org/linux/man-pages/man7/credentials.7.html
- GNU Bash expansions — https://www.gnu.org/software/bash/manual/html_node/Shell-Expansions.html
- mv/SUID privesc — https://ihsansencan.github.io/privilege-escalation/linux/binaries/mv.html , https://hacklido.com/blog/946-suid-exploits-uncovered-a-step-by-step-privilege-escalation-guide , https://medium.com/purplebox/linux-privilege-escalation-with-path-variable-suid-bit-6b9c492411de
- LWN.net (kernel/security) · lore.kernel.org (mailing-list archive)

## Curated lists, repos & cheat sheets
- CTF Field Guide — https://trailofbits.github.io/ctf/
- awesome-reversing (HACKE-RC) · Awesome-CTF / Awesome-Hacking · browser-pwn repo
- awesome pwn / awesome assembly / awesome elf / awesome reverse engineering (to compile)
- MITRE ATT&CK (+ Navigator) · Caldera · Atomic Red Team · Sigma HQ (detection rules)
- HackTricks · PayloadsAllTheThings (web)
- OWASP Top 10 — https://owasp.org · OWASP ASVS · OWASP IoT Top 10 · OWASP MASVS/MASTG · OWASP LLM Top 10 · MITRE ATLAS (AI)
- SLSA / Sigstore / in-toto / OpenSSF Scorecard (supply chain)
- SANS DFIR posters (free)
- CVE.org — https://www.cve.org/ · vulnerability-databases — https://github.com/haxdoggy/vulnerability-databases
- simulacra — https://github.com/Em3ritus/simulacra
- awesome-embedded-and-iot-security (fkie-cad) · awesome-trustzone + OP-TEE · awesome-yara (InQuest) · #100DaysOfYARA
- GhidraClass (inside Ghidra repo) · vergiliusproject.com · MalAPI.io · Unprotect.it · MWDB + karton + malduck (CERT.pl)

## Conferences
- Tier-1 RE/exploit: REcon Montreal (recon.cx) · OffensiveCon (Berlin) · Hexacon (Paris, Synacktiv) · RE//verse (Orlando) · Zer0Con / TyphoonCon / POC (Seoul) · Hardwear.io (NL/USA) · Objective by the Sea (Apple/macOS)
- Malware: Virus Bulletin · Botconf · SAS (Kaspersky)
- General: Black Hat USA / EU · DEF CON (+ villages: Hardware / IoT / Car / Aerospace) · HITB · Nullcon · Ekoparty · Troopers · CCC Congress (media.ccc.de) · Bornhack · Recon
- Kernel/embedded: Linux Security Summit · Linux Plumbers (BPF track) · Kernel Recipes · FOSDEM · Embedded Open Source Summit / ELC Europe
- Academic: USENIX Security · IEEE S&P · CCS · NDSS · CHES/TCHES · WOOT · CRYPTO · Eurocrypt · IACR ePrint · PETS · IEEE HOST · S4 (ICS) · TU Graz IAIK / Mastik (microarchitectural attacks)
- Aggregators: media.ccc.de · InfoconDB · InfoCon archive · CTFtime

## Communities
- pwn.college Discord · Reverse Engineering Discord (~14k) · OALabs Discord · vx-underground · 0x00sec · OpenToAll · Tuts4You
- CTF & bug-bounty Discords · local CTF team · HTB/THM Discords
- r/netsec · r/ReverseEngineering · r/Malware · r/ExploitDev
- UnknownCheats · Guided Hacking (game hacking) · OpenMined (privacy)
- Mailing lists: Dailydave · Full Disclosure · oss-security

## Career & market intel
- Vuln researcher salary/jobs — https://www.ziprecruiter.com/Jobs/Vulnerability-Research?version=next · https://www.ziprecruiter.com/Salaries/Vulnerability-Researcher-Salary
- 0-day market overview — https://forklog.com/en/the-zero-day-market-discover-sell-and-keep-quiet/
- Google pays $250k KVM 0-day — https://www.bleepingcomputer.com/news/security/google-now-pays-250-000-for-kvm-zero-day-vulnerabilities/
- Google upping Linux bug bounty — https://www.techradar.com/news/google-is-upping-its-linux-bug-bounty-prize
- GhostLock kernel privesc — https://www.ghacks.net/2026/07/13/ai-agent-discovers-15-year-old-linux-kernel-privilege-escalation-bug-named-ghostlock/
- 15-year Linux flaw, 5-sec root — https://www.techtimes.com/articles/319914/20260708/public-exploit-turns-15-year-linux-kernel-flaw-5-second-root-attack.htm

## Adjacent path A — eBPF & cloud-native
- Books: Learning eBPF (Liz Rice) https://www.amazon.com/dp/1098135121 · BPF Performance Tools (Gregg) https://www.amazon.com/dp/0136554822 · Systems Performance 2e (Gregg) https://www.amazon.com/dp/0136820158 · Container Security (Rice) https://www.amazon.com/dp/1492056707 · Learning Go 2e (Bodner) https://www.amazon.com/dp/1098139291 · Kubernetes in Action 2e https://www.amazon.com/dp/1617297615 · Designing Data-Intensive Applications https://www.amazon.com/dp/1449373321
- Repos/tutorials: eunomia-bpf/bpf-developer-tutorial · lizrice/learning-ebpf · libbpf/libbpf-bootstrap · xdp-project/xdp-tutorial · qmonnet/awesome-ebpf · isovalent/CCA-Study-Guide
- Docs: ebpf.io (+ /get-started , /slack) · eBPF reference (Dylan Reimerink) https://ebpf-docs.dylanreimerink.nl · Cilium docs (genuinely excellent, read them like a book — incl. the BPF & XDP guide)
- Blogs: brendangregg.com · Andrii Nakryiko https://nakryiko.com · Cilium & Datadog eng blogs
- Zines: Julia Evans' zines (networking, debugging — wildly efficient) https://wizardzines.com
- Labs/courses: Isovalent labs https://labs.isovalent.com · KillerCoda · Kubernetes the Hard Way · killer.sh https://killer.sh · KodeKloud · Ultimate Go (Ardan Labs)
- Projects: Cilium/Hubble/Tetragon · Falco · Inspektor Gadget · Kepler · Parca/Pyroscope/Pixie · Grafana Beyla/OBI · Aya (Rust)
- Talks: eBPF Summit · KubeCon eBPF/Cilium Day · Linux Plumbers BPF track
- Slack: eBPF https://ebpf.io/slack · Cilium · CNCF (#tetragon #falco) · Kubernetes

## Adjacent path B — network security
Goal: zero → job-ready network security, defensive + offensive. Style: open-source, free, self-study — pwn.college-type platforms first.

### Learning path — the 6 phases
- Phase 0 — Networking base (how packets move): OSI + TCP/IP model, IP, TCP, UDP, DNS, HTTP, ARP, DHCP, NAT, routing
- Phase 1 — Linux + command line (the hacker's tool): shell, permissions, processes, sockets, `ss`, `ip`, `tcpdump`, `nmap`
- Phase 2 — Packet + traffic analysis (see the network): Wireshark, tshark, tcpdump, pcap reading, protocol dissection
- Phase 3 — Attacks + protocol exploitation (offensive): scanning, MITM, spoofing, sniffing, weak protocols, network pentest
- Phase 4 — Defense / monitoring / detection (blue team): IDS/IPS, Snort/Suricata/Zeek, NSM, logging, threat hunting
- Phase 5 — CTF grind + pick a niche: grind challenges, join community, focus (cloud, wireless, ICS, etc.)

### Practice platforms (pwn.college style)
- pwn.college — free, ASU, belts system; low-level, exploitation, systems. Best structured free hacking course
- picoCTF — free, Carnegie Mellon; 500+ challenges, beginner to hard. Best for students
- OverTheWire — free wargames; start with Bandit (Linux/CLI), then Natas, Leviathan
- SEED Labs — free university labs (Syracuse); real network security labs: ARP spoof, TCP attacks, DNS, firewall, VPN. Best for network-specific hands-on
- Root-Me — free; huge challenge count, network + web + crypto categories
- Exploit Education (Phoenix / Nebula) — free VMs, memory + privesc
- pwnable.kr / pwnable.tw — free binary exploitation
- CTFlearn — free beginner CTF practice
- PortSwigger Web Security Academy — free, best web/app labs
- VulnHub — free vulnerable VMs to attack at home
- Malware-Traffic-Analysis.net — free real pcap exercises; best for traffic analysis practice
- CyberDefenders / LetsDefend (free tier) — blue-team pcap + SOC labs
- Hack The Box (free tier) + TryHackMe (free rooms) — guided rooms + machines

### Free courses
- Stanford CS144 — Introduction to Computer Networking (free slides + labs; build a TCP/IP stack from scratch — gold standard for "how networking really works") — https://cs144.github.io/
- Google Cybersecurity Certificate (Coursera, audit free) — network security + SIEM basics
- SANS Cyber Aces — short free OS + networking modules
- Professor Messer — CompTIA Network+ / Security+ (free YouTube) — cheap way to cover the whole map
- Practical Networking (YouTube, free) — TCP/IP fundamentals

### Books (reference, not curriculum — read in this order)
1. Networking base: *Computer Networking: A Top-Down Approach* — Kurose & Ross (best first book) · *TCP/IP Illustrated, Vol. 1: The Protocols* — Stevens/Fall (dense, deep reference)
2. Packet analysis: *Practical Packet Analysis* — Chris Sanders (Wireshark, best hands-on)
3. Offensive / protocols: *Attacking Network Protocols* — James Forshaw (network attack bible) · *Network Security Assessment* — Chris McNab (attacker's field manual) · *The Hacker Playbook 3* — Peter Kim (practical pentest flow)
4. Defense / monitoring: *The Practice of Network Security Monitoring* — Richard Bejtlich · *Applied Network Security Monitoring* — Sanders & Smith (Snort, Zeek, Security Onion)
5. Theory (optional): *Cryptography and Network Security* — William Stallings

### Core tools to master
- Capture / analyze: Wireshark, tshark, tcpdump
- Scan / map: nmap, masscan
- Attack: Scapy (packet crafting), bettercap, Ettercap, aircrack-ng (wireless)
- Defend: Snort, Suricata, Zeek, Security Onion (full NSM distro)
- Lab: VirtualBox / VMware, GNS3 / EVE-NG (network topology sim), Docker

### Weekly cadence (suggested)
- Pick ONE platform, ONE book, ONE tool per phase — don't spread
- 1 hr theory (book/course) + 2 hrs hands-on (platform/lab); daily beats weekend binge
- Ship proof: write short notes / blog per solved box — build a public trail
- Join a community week 0: r/netsec, TryHackMe/HTB Discord, local CTF team

### Certs (only if HR needs them)
- Network+ → Security+ → (optional) OSCP / eJPT / PNPT / CCNA
- Certs are HR filters, not skill

## Adjacent path C — electronics
Full electronics study path from Gihad (works in the field), ordered like a multi-year university track: circuits → practical electronics → digital → analog (Razavi) → power electronics → transducers → control. Big part is theory — work around it smart: follow your priority and your project's need, apply as much as you can, connect the ideas. You do NOT need to build boards by hand — understanding boards well is enough; board design + manufacturing is a separate specialty (better for big companies / older engineers).

### The path (in order)
1. Electric circuits — Eng Karim: [Electric circuit 1](https://youtube.com/playlist?list=PLFM6wDAJoh--qm9UD3VatCBeGJaPGlLK6) (28 videos) · [Electric circuits 2](https://youtube.com/playlist?list=PLFM6wDAJoh-88gjdMrSJ28aPkw2-9uR6f) (35 videos)
2. Practical electronics — Walid Issa: [دبلومة الالكترونيات العملية](https://youtube.com/playlist?list=PLww54WQ2wa5qVh1p8iPi7HspX7N9hbvbc) (216 videos) — the hands-on side of the roadmap
3. Digital electronics — Neso Academy: [Digital Electronics](https://youtube.com/playlist?list=PLBlnK6fEyqRjMH3mWf6kwqiTbT798eAOm) (202 videos)
4. Analog electronics — Razavi: [Razavi Electronics 1](https://youtube.com/playlist?list=PL7qUW0KPfsIIOPOKL84wK_Qj9N7gvJX6v) (45 videos) · [Razavi Electronics 2](https://youtube.com/playlist?list=PL7qUW0KPfsIJ7RH4ga4kMENDgI_KWRy8v) (45 videos)
5. Power electronics — Dr. Lutfi Al-Sharif (10 playlists):
   - [01 Introduction and Basic Concepts](https://youtube.com/playlist?list=PLJqRpPcJQ_g0DlrD452NGJUOriJEXd2gH) — 7 videos
   - [02 Components](https://youtube.com/playlist?list=PLJqRpPcJQ_g1NpCmJeihvSnwyES8MEhfd) — 29 videos
   - [03 Average and RMS Calculations](https://youtube.com/playlist?list=PLJqRpPcJQ_g0UEOMJf0hWzkUQBA0XgpJz) — 8 videos
   - [04 Harmonics, Fourier Series and Orthogonality](https://youtube.com/playlist?list=PLJqRpPcJQ_g2vwDhFx_SdE_BauE6u2rMm) — 16 videos
   - [05 The Power Factor](https://youtube.com/playlist?list=PLJqRpPcJQ_g2bT6mmCB6qlitLKwPRtwKf) — 18 videos
   - [06 AC to DC Converters (Rectifiers)](https://youtube.com/playlist?list=PLJqRpPcJQ_g1RfueC0ENOo7-N9o_-24Tf) — 55 videos
   - [07 DC to DC Converters](https://youtube.com/playlist?list=PLJqRpPcJQ_g3IiXx-jQ51KW5qHMOZ_wix) — 17 videos
   - [08 DC to AC Converters (Inverters)](https://youtube.com/playlist?list=PLJqRpPcJQ_g0H61cbXll_BDkGScNzSsRO) — 40 videos
   - [09 AC to AC Converters](https://youtube.com/playlist?list=PLJqRpPcJQ_g301b-N60ulk0D3gd2P_QjZ) — 22 videos
   - [10 Introduction to SimPowerSystems](https://youtube.com/playlist?list=PLJqRpPcJQ_g0yFfWeKEuzQ8uMGDY16RmX) — 24 videos
6. After that (same channels, no direct links yet): Transducers section — 6 playlists (Lutfi Al-Sharif channel) · Control section — playlists for every control type · Motors + systems — also on Lutfi Al-Sharif channel, optional

### How to study it (Gihad's advice)
- This is years of material — don't do it linearly start-to-finish
- Stop any time → check what your project needs → study that part → come back and continue
- Hunting a specific job position? Stop, find the shortest set of courses that leads straight to it, start there
- Apply as much as you can, connect information together — specialization comes with time
- Don't work alone for a long time in the dark: while learning basics, find someone already doing the job you want, ask them, follow their path
- Warning from Gihad: most people he knows work PLC and embedded, not pure electronics; he doesn't know how people in Europe get electronics jobs. In Egypt, factories usually hire juniors after basics and train them their own way
- Job angle: this curriculum is enough for someone who *uses* boards; board design/manufacture = a different specialty

### Why it matters
- Having the whole ordered path in one place kills the "what do I watch next" question
- Source: WhatsApp messages from Gihad, 29.08.2026 (playlist links + study advice, Arabic)

## Game RE, decompilation & modding
- Skyrim Script Extender (SKSE) — https://skse.silverlock.org/ · David J. Cobb's RE findings — https://github.com/davidjcobb/tesv-cobb-api
- DFHack (Dwarf Fortress) — https://github.com/DFHack/dfhack
- Super Mario 64 decomp — https://github.com/n64decomp/sm64 · legal/fair-use analysis — https://repository.uclawsf.edu/hastings_science_technology_law_journal/vol12/iss1/3/
- Zelda: Ocarina of Time decomp (ZRET) — https://www.nintendolife.com/news/2021/08/after_18_months_zelda_ocarina_of_time_fans_are_almost_done_decompiling_the_game
- N64 decompilation hub — https://github.com/n64decomp
- OpenRCT2 — https://github.com/OpenRCT2/OpenRCT2 · gradual reimplementation writeup — https://github.com/jvlomax/OpenRCT2
- OpenTTD — https://github.com/OpenTTD/OpenTTD
- Cheat engines · UnknownCheats / Guided Hacking (see Communities)

## Newsletters & aggregators
- tl;dr sec (Clint Gibler) · This Week in Security (Zack Whittaker) · Risky Business (+ daily Risky Bulletin) · Detection Engineering Weekly
- vx-underground · r/ReverseEngineering · r/netsec · Hacker News · kayssel.com
- Bellingcat toolkit / OSINT Framework

## Hidden gems — the "unknowns"
Resources most people never find (from `known pwn.md`):
- GhidraClass — full NSA RE course inside the Ghidra repo
- OST2 (ost2.fyi) — free university-grade x86/ARM/firmware/Windows
- challenges.re — Yurichev's brutal "what does this code do" drills
- dogbolt.org — diff 10+ decompilers on one upload
- corkami — Ange Albertini's visual file-format posters + PoC binaries
- Binary Refinery — "CyberChef for CLI"; how pros extract malware configs
- MWDB + karton + malduck (CERT.pl) — free malware DB + real automation stack
- Unprotect.it + MalAPI.io — evasion techniques + malicious-API map
- vergiliusproject.com — versioned undocumented Windows kernel structs
- airbus-seclab/qemu_blog — the missing QEMU/TCG internals manual
- Raelize blog — the frontier of fault injection + secure-boot bypass
- newosxbook.com — Levin's iOS/XNU tools, forum, extra material
- tmp.0ut — modern ELF internals zine
- InfoconDB / media.ccc.de — find and watch almost any con talk ever
- #100DaysOfYARA — community challenge that levels up detection fast

---

## Source & scope notes
- Aggregated 2026-09-27 from every `.md` in this repo: `after pwn.md`, `known pwn.md`, `Reverse Engineering.md`, `assembly.md`, `unsorted.md`, `blogs.md`, `books.md`, `youtube.md`, `README.md`.
- `blogs.md` pointer: `notes/` → Articles (exploits, secure code, and CVE writeups).
- `[[devopstoolbox]]` — 500+ DevOps/terminal tools + 207 YouTube videos (only the security-relevant subset copied above).
- Personal career/immigration links (Austria RWR card, etc.) live in their own career notes, not here.
- Book covers + per-book ratings, reading status and page progress: [books.html](./books.html).
