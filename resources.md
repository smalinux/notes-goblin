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
- [Book — Practical Reverse Engineering](#book--practical-reverse-engineering)
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
    - [Tibia — RE hobby project](#tibia--re-hobby-project)
- [Newsletters & aggregators](#newsletters--aggregators)
- [Hidden gems — the "unknowns"](#hidden-gems--the-unknowns)
- [External links — unsorted drop-box](#external-links--unsorted-drop-box)

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
- pwn.college — https://pwn.college/ 🦄
- ROP Emporium — https://ropemporium.com/guide.html
- exploit.education (Phoenix, Nebula, Protostar) — https://exploit.education
- Nightmare (guyinatuxedo, heap/pwn) — https://guyinatuxedo.github.io/nightmare/ · https://guyinatuxedo.github.io
- how2heap (Shellphish) — https://github.com/shellphish/how2heap — every glibc heap technique per libc version
- pwnable.kr · pwnable.tw (hardest quality) · pwnable.xyz
- picoCTF 🦄
- Microcorruption (MSP430 firmware, in browser) — https://microcorruption.com 🦄
- crackmes.one — https://crackmes.one (+ yearly Feb RE CTF) · Crackme wiki — https://en.wikipedia.org/wiki/Crackme 🦄
- reversing.kr · challenges.re (Yurichev's "what does this code do?" drills) · Dreamhack
- ret2wargames / RET2 WarGames (live memory visualizer, browser x64 pwn) — https://wargames.ret2.systems
- HackTheBox — https://www.hackthebox.com (Reversing/Pwn categories) · TryHackMe · Root-Me 🦄
- OverTheWire wargames (Bandit, Narnia, Behemoth, Utumno, Natas, Leviathan) — https://overthewire.org/wargames
- Modern Binary Exploitation (RPISEC, free course) · RPISEC MBE
- Malware Unicorn RE101 / RE102 · MalwareTech Labs 🦄
- CryptoHack — https://cryptohack.org/ · Cryptopals
- Azeria Labs (ARM asm & exploitation) — https://azeria-labs.com
- PortSwigger Web Security Academy — https://portswigger.net/
- huntr.dev (open-source bounties)
- syzbot dashboard — https://syzkaller.appspot.com
- OWASP IoTGoat · Damn Vulnerable Router Firmware (DVRF) · Damn Vulnerable ARM Router (DVAR)
- SEED Labs (Syracuse) · CTFlearn · VulnHub
- HEVD (Windows kernel LPE) · Google kernelCTF (real Linux 0-day writeups)
- Flare-On archives (best malware-RE skill test) · MemLabs (Volatility CTF) · PMAT-labs (safe samples) 🦄
- OWASP MAS Crackmes · DVIA-v2 (iOS) · DIVA / InsecureBankv2 / InjuredAndroid (Android) · iGoat · awesome-mobile-CTF
- Malware-Traffic-Analysis.net — https://malware-traffic-analysis.net (Brad Duncan; pcap + samples)  🦄
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
- Flare-On (solo malware-RE CTF each fall) —  🦄 https://flare-on.com/
- Past-year challenges + official solutions (all editions) — https://github.com/mandiant/flare-on-challenges 🦄
- DEF CON CTF · Google CTF · PlaidCTF (CMU PPP) · HITCON CTF · Real World CTF (Chaitin, hypervisor) · hxp / Dragon / 0CTF
- Rhme CTF (ChipWhisperer / fault injection) · Hack-A-Sat (satellite)
- Code4rena / Sherlock / Secureum (smart-contract audits)
- Trace Labs CTFs (OSINT) · Snyk "Fetch the Flag" (John Hammond / Snyk)
- Huntress CTF — https://ctf.huntress.com/
- PicoCTF 🦄

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
- OpenSecurityTraining2 (OST2) — https://ost2.fyi/ (portal: https://p.ost2.fyi/) — Xeno Kovah, university-grade x86/ARM/firmware/Windows 🦄
  - Arch1001 x86-64 Assembly — https://p.ost2.fyi/courses/course-v1:OpenSecurityTraining2+Arch1001_x86-64_Asm+2021_v1/about 🦄
  - RE1001 / RE2001, RE3011 (C++), RE3201 (angr), Debuggers 1012 (GDB), Debuggers 1102 (Ghidra), Arch2001 (OS Internals), Arch4031 (coreboot/firmware), Arch4001 (x86-64 Intel Firmware Attack & Defense), Arch1005, Bluetooth 1601, TC (Trusted Computing), SCA101, FAULT101, WinDbg Intro/Intermediate
- ASU CSE 466 public lectures (pwn.college source course)
- Nand2Tetris — https://nand2tetris.org
- CMU 15-213 / CS:APP labs — https://csapp.cs.cmu.edu/3e/labs.html
- MIT 6.1810 (xv6 OS) — https://pdos.csail.mit.edu/6.1810
- Stanford CS144 Networking — https://cs144.github.io/
- Intro to RE with Ghidra (wrongbaud / HackadayU) · MalwareUnicorn RE101/RE102 · begin.re (Ophir Harpaz) · angr_ctf (17 graded levels) · Azeria ARM tutorials 🦄
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
- Reverse Engineering for Beginners (RE4B) — Dennis Yurichev (free) — https://beginners.re/ 🦄
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
- Practical Malware Analysis — Sikorski & Honig 🦄
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
- Assembly learning path (mine): [pwn.college Computing 101](https://pwn.college/computing-101/) → OST2 Architecture 1001 x86-64 Assembly 🦄
- Flippy Bit and the Attack of the Hexadecimals from Base 16 (Hex↔Binary) — https://flippybitandtheattackofthehexadecimalsfrombase16.com/
- Cisco Binary Game (Binary↔Decimal) — https://learningnetwork.cisco.com/s/binary-game
- Online disassembler (Google: "Online disassembler")
- aarch64-esr-decoder — https://esr.arm64.dev/
- The dark awful history of ARM: Arm mode → Thumb → Thumb-2 (Armv7) → Arm64. Arm64 = AArch64 (same thing); its instruction set is A64.
- Searchable A64 references: community index of every instruction with quick search, closest in feel to esr.arm64.dev — https://www.scs.stanford.edu/~zyedidia/arm64/ · Arm's official A64 ISA reference, searchable by mnemonic — https://developer.arm.com/documentation/ddi0602/latest · armconverter.com (assembly ↔ hex encoding) — https://armconverter.com
- Godbolt Compiler Explorer — https://godbolt.org/ · diff decompilers: dogbolt.org
- rappel (asm REPL) — https://github.com/yrp604/rappel
- x64 software conventions (MSVC) — https://learn.microsoft.com/en-us/cpp/build/x64-software-conventions?view=msvc-160
- felixcloutier.com/x86 (instruction reference) · agner.org/optimize (calling conventions PDF)
- x86 assembly opcode reference (mathemainzel) — https://www.mathemainzel.info/files/x86asmref.html
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
- Practice ladder: crackmes.one → reversing.kr → challenges.re; pwnable.kr → pwnable.tw → ROP Emporium → how2heap; Flare-On archives → live Flare-On each fall; Microcorruption 🦄
- Suggested path: OST2 Arch1001 → crackmes.one easy levels + picoCTF → Practical Malware Analysis labs → pwn.college → old Flare-On challenges, checking writeups only after trying each one yourself 🦄

## Book — Practical Reverse Engineering

### Watch this while reading
Actual videos & playlists matched to the book's chapters — every link verified. Workflow: read a chapter → watch its matches → redo the book's exercises in IDA/Ghidra + WinDbg.

**The book applied directly** ⭐
- [Practical Reverse Engineering Exercises — Guided Hacking, 5-part playlist](https://www.youtube.com/playlist?list=PLt9cUwGw6CYFFCQXdowh_hHj0PWTfqKz-) — solves the book's own exercises in IDA/x64dbg: [Ex.1 p.11](https://www.youtube.com/watch?v=1zY7lbcbBZQ) · [p.35 Ex.1 sample J](https://www.youtube.com/watch?v=5_LHA3sl7-4) · [p.35 Ex.5 RtlValidateUnicodeString](https://www.youtube.com/watch?v=2zme_cCTHPo)
- Exercise solutions to check yours against: [repnz (kernel ch., excellent writeups)](https://repnz.github.io/posts/practical-reverse-engineering/solutions/) · [bin.re](https://bin.re/projects/solutions-to-practical-reverse-engineering/) · [tandasat Ch.1 gist](https://gist.github.com/tandasat/a9ce7a7b4bfa7cf4f860) · GitHub: [baderj](https://github.com/baderj/practical-reverse-engineering) · [nanabingies](https://github.com/nanabingies/Practical-Reverse-Engineering-Solutions) · [uf0o](https://github.com/uf0o/practical_reverse_engineering) · [alal4465 (kernel drivers)](https://github.com/alal4465/Practical-Reverse-Engineering-Solutions)
- [AllThingsIDA](https://www.youtube.com/@allthingsida) — co-author Elias Bachaalany's own channel; IDA-driven RE from the book's mindset

**Ch.1 — x86/x64**
- [OST2 Arch1001: x86-64 Assembly (playlist)](https://www.youtube.com/playlist?list=PLUFkSN0XLZ-m9B0DhHjkXd8foIMuZO1Gd) → [OST2 Arch2001: x86-64 OS Internals (playlist)](https://www.youtube.com/playlist?list=PLUFkSN0XLZ-myVyCmMvfz_W5Z5SauI3cN) — segmentation, paging, MSRs, SYSENTER/SYSCALL, ring transitions = the system half of this chapter 🦄
- [Creel — Modern x64 Assembly (playlist)](https://www.youtube.com/playlist?list=PLKK11Ligqitg9MOX3-0tFT1Rmh3uJp7kA) · [xorpd — x86 Assembly Adventures pt.1 (playlist)](https://www.youtube.com/playlist?list=PLn4AdTx18u3s2ZUo4DetnL5QzjujJSgxN) · [Low Level — Learn Assembly in 10 Minutes](https://www.youtube.com/watch?v=jPDiaZS-2ok)

**Ch.2 — ARM**
- [LaurieWired — Practical ARM Assembly Tutorial Series (playlist)](https://www.youtube.com/playlist?list=PLn_It163He32Ujm-l_czgEBhbJjOUgFhg)
- [Azeria — Writing ARM Assembly pt.1 (written tutorials; no video version exists)](https://azeria-labs.com/writing-arm-assembly-part-1/) · her talk: [ARM shellcode in six minutes](https://www.youtube.com/watch?v=DGJZBDlhIGU)
- [OST — Introduction to ARM (legacy playlist)](https://www.youtube.com/playlist?list=PLUFkSN0XLZ-n91t_AX5zO007Giz1INwPd) · stacksmashing applied: [bare-metal ARM firmware in Ghidra + SVD-Loader](https://www.youtube.com/watch?v=q4CxE5P6RUE) · [breaking embedded firmware encryption](https://www.youtube.com/watch?v=4urMITJKQQs)

**Ch.3 — Windows kernel**
- [OST2 Arch2821: Windows Kernel Internals 2 (playlist)](https://www.youtube.com/playlist?list=PLUFkSN0XLZ-kOQnYJwx3x9wPMDjlv2iSg)
- Pavel Yosifovich: [Windows Internals (playlist)](https://www.youtube.com/playlist?list=PLxWtYM8HSeNtJpxakYdK_aF78jWEsBmWD) · [Writing a Windows kernel driver in an hour (NDC)](https://www.youtube.com/watch?v=6ZPdbHJH_2g) · on Off By One: [Windows Device Drivers Internals and Some Reversing](https://www.youtube.com/watch?v=cAvgVAJr5fU)
- Driver RE walkthroughs: [Static RE of Windows Kernel Drivers in IDA — device objects, IOCTLs, dispatch routines](https://www.youtube.com/watch?v=5vHhx44Lp2Q) · kernel driver chall in Ghidra [S01E01](https://www.youtube.com/watch?v=Ar4dZNL9rHE)/[E02](https://www.youtube.com/watch?v=e7ydGxJ5fTQ) · [OALabs — reversing a vulnerable AV driver abused by ransomware](https://www.youtube.com/watch?v=ViWLMfSwGVA)
- [Guided Hacking — Kernel Hacking Tutorials (playlist)](https://www.youtube.com/playlist?list=PLt9cUwGw6CYHWuMtGHSgdLUaTo7aa2lEr) · Alex Ionescu talks: [NT Kernel Shim Engine (REcon'16)](https://www.youtube.com/watch?v=qCa9icMqBNM) · [ALPC/LPC internals (SyScan'14)](https://www.youtube.com/watch?v=UNpL5csYC1E) · from yt.html: [Shadow Walker rootkit analysis (WindowsSCOPE)](https://www.youtube.com/watch?v=BETP4koskoE)

**Ch.4 — debugging & automation**
- WinDbg path: [OST2 Dbg1011 Intro WinDbg](https://ost2.fyi/Dbg1011) (videos live on ost2.fyi, not YouTube) → [OST2 Debuggers 3011: Advanced WinDbg (playlist)](https://www.youtube.com/playlist?list=PLUFkSN0XLZ-ka9dfeHWmhqDV-qIns-9uR) — kernel-mode WinDbg + ret-sync with IDA/Ghidra
- Pavel Yosifovich WinDbg singles: [kernel debugging with a VM](https://www.youtube.com/watch?v=wpBbd5FoRMw) · [the dx command](https://www.youtube.com/watch?v=lg36vt1a8Cg) · [Time Travel Debugging](https://www.youtube.com/watch?v=q6QQfjVv76Y) · [write a WinDbg extension](https://www.youtube.com/watch?v=ly-nZjuLNkw)
- OALabs: [WinDbg Basics for Malware Analysis](https://www.youtube.com/watch?v=QuFJpH3My7A) · [x64dbg system breakpoint explained](https://www.youtube.com/watch?v=vdyyg72tc2w) · [unpacking Remcos RAT with x64dbg](https://www.youtube.com/watch?v=DIH4SvKuktM)
- Off By One Security: [Debugging the Windows Kernel and Undocumented Structures](https://www.youtube.com/watch?v=bo7pGYh-7kQ) · [Following the C with WinDbg](https://www.youtube.com/watch?v=sAxBDkB_idM)
- [Josh Stroschein — Ghidra Reversing Tutorials (playlist)](https://www.youtube.com/playlist?list=PLHJns8WZXCdu6kPwPpBhA0mfdB4ZuWy6M) · Arabic, Linux side: [Moatasem Elsayed — Mastering GDB (playlist)](https://www.youtube.com/playlist?list=PLkH1REggdbJozCn0ftsshAPdetD6Bd4hz)

**Ch.5 — obfuscation**
- Tim Blazytko: [34C3 — Let's break modern binary code obfuscation](https://www.youtube.com/watch?v=TDnAkm6ZTYw) · [BH Asia'18 — breaking obfuscation via program synthesis (Syntia)](https://www.youtube.com/watch?v=0SvX6F80qg8) · [r2con'21 hands-on workshop — VM-based obfuscation](https://www.youtube.com/watch?v=b6udPT79itk) · [REcon'22 — next-gen virtualization obfuscators](https://www.youtube.com/watch?v=EWCcOlJf4pE)
- [Rolf Rolles — Program Synthesis in Reverse Engineering](https://www.youtube.com/watch?v=mFjSbxV_1vw) (taught alongside the book's authors) · [Salwan & Thomas — Triton vs VM-based protections](https://www.youtube.com/watch?v=Fk7bF94sy9U)
- Unpacking practice: [hasherezade — malware unpacking (playlist)](https://www.youtube.com/playlist?list=PL3CZ2aaB7m83eYTAVV2knNglB8I4y5QmH) · [MalwareAnalysisForHedgehogs — unpacking theory & tutorials (playlist)](https://www.youtube.com/playlist?list=PLynb9SXC4yER8NinXJwV4GHUM9-jaIsN_) · [OALabs — Open Analysis Live! (playlist, 89 eps)](https://www.youtube.com/playlist?list=PLGf_j68jNtWG_6ZwFN4kx7jfKTQXoG_BN)
- Extra: [DEF CON 33 — automated unpacking of nested VM-based protectors](https://www.youtube.com/watch?v=uCZRf3v3EUI) · [RECON 2026 — deobfuscation in the age of agentic RE](https://www.youtube.com/watch?v=3-gJ6EUFoKM)

**Whole-book practice lane (malware RE end-to-end)**
- [Marcus Hutchins — Reverse Engineering for Beginners, 2024 (playlist)](https://www.youtube.com/playlist?list=PLPsJIruML_ZivGWUd6bPkwDe-KFOIYg7p) + his 2018 series (not in any playlist): [#1](https://www.youtube.com/watch?v=w_rQJ7u-lpk) · [#2](https://www.youtube.com/watch?v=b0WQwCQGjv4) · [#3](https://www.youtube.com/watch?v=jm4DmdygLvw)

### Compiler optimization tricks
Goal: recognize what the optimizer did to the code — not become a compiler engineer. Order: Godbolt's talk → his Advent series for daily pattern drills → Rolles' deck → the idiom articles as you hit each pattern in real binaries; keep Yurichev + Raymond Chen as references. Lab: compile snippets at -O0 vs -O2 on [godbolt.org](https://godbolt.org/) and diff.

**Start here**
- ⭐ [Matt Godbolt — What Has My Compiler Done for Me Lately? (CppCon 2017)](https://www.youtube.com/watch?v=bSkpMdDe4g4) — the canonical talk on reading optimizer output
- ⭐ [Advent of Compiler Optimisations 2025 (Godbolt)](https://xania.org/AoCO2025) — 25 days, one optimization per day, x86-64 + ARM64/ARM32; blog + [YouTube playlist](https://www.youtube.com/playlist?list=PL2HVqYf7If8cY4wLk7JUQ2f0JXY_xMQm2). Key days: [7 — division by constant](https://youtu.be/V9Pvv1tkocM) · [23 — switch lowering](https://youtu.be/aSljdPafBAw)
- [Rolf Rolles — Binary Literacy: Optimizations slide deck (free .ppt)](https://www.msreverseengineering.com/s/Binary-Literacy-Static-6-Optimizations.ppt) — from the one training literally built around compiler optimizations for REs ([course page](https://www.msreverseengineering.com/training))
- [Yurichev — Understanding Assembly Language / RE4B (free book)](https://beginners.re/) — small C snippets → x86/x64/ARM/MIPS output, -O0 and optimized; use as pattern reference, don't read linearly 🦄

**More talks**
- Godbolt: [What Everyone Should Know About How Amazing Compilers Are (C++ on Sea'19)](https://www.youtube.com/watch?v=w0sz5WbS5AM) · [What Else Has My Compiler Done For Me Lately? (C++Now'18)](https://www.youtube.com/watch?v=nAbCKa0FzjQ) · [The Bits Between the Bits: How We Get to main() (CppCon'18)](https://www.youtube.com/watch?v=dOfucXtyEsU)
- Chandler Carruth: [Understanding Compiler Optimization (Meeting C++'15)](https://www.youtube.com/watch?v=FnGCDLhaxKU) · [Tuning C++: Benchmarks, and CPUs, and Compilers! Oh My! (CppCon'15)](https://www.youtube.com/watch?v=nXaxk27zwlk) — how the optimizer thinks
- RE-side view: [Laurie Kirk — Thinking Like a Compiler: Obfuscation from the Other Side (RE//verse 2026 keynote)](https://www.youtube.com/watch?v=jfqFHHsYQAs) · [OliveStem — gcc functions & compiler optimizations in disassembly](https://www.youtube.com/watch?v=JMQQmnjXCmQ)
- [Creel — Branchless Programming](https://www.youtube.com/watch?v=bVJ-mWWL7cE) — the cmov/branchless patterns all over optimized binaries

**Recognize-the-idiom articles**
- [ridiculousfish — Labor of Division, Episode I](https://ridiculousfish.com/blog/posts/labor-of-division-episode-i.html) — why `/` becomes multiply-by-magic-number + shift
- Igor's Tip of the Week ([index](https://hex-rays.com/blog/tag/igors-tip-of-the-week) · [season 1 PDF](https://hex-rays.com/blog/igors-tip-of-the-week-season-01)): [#53 manual switch idioms](https://hex-rays.com/blog/igors-tip-of-the-week-53-manual-switch-idioms) · [Ilfak — tricky jump tables](https://hex-rays.com/blog/tricky-jump-tables)
- Skochinsky — Reversing Microsoft Visual C++: [Part I: exceptions/SEH](http://www.openrce.org/articles/full_view/21) · [Part II: classes, methods, RTTI](http://www.openrce.org/articles/full_view/23) · [REcon'12 Compiler Internals slides (PDF)](http://www.hexblog.com/wp-content/uploads/2012/06/Recon-2012-Skochinsky-Compiler-Internals.pdf)
- Eli Bendersky: [stack frame layout on x86-64](https://eli.thegreenplace.net/2011/09/06/stack-frame-layout-on-x86-64) (red zone, frame-pointer omission) · [where the top of the stack is](https://eli.thegreenplace.net/2011/02/04/where-the-top-of-the-stack-is-on-x86/) · [PIC in shared libraries](https://eli.thegreenplace.net/2011/11/03/position-independent-code-pic-in-shared-libraries/) · [PIC on x64](https://eli.thegreenplace.net/2011/11/11/position-independent-code-pic-in-shared-libraries-on-x64) — GOT/PLT & RIP-relative patterns in disassembly
- [Stefanos Baziotis — Compiler Optimization in a Language you Can Understand](https://sbaziotis.com/compilers/compiler-opt.html) — inlining, strength reduction, CSE, DCE with C→asm examples
- [Agner Fog — Calling Conventions (PDF)](https://www.agner.org/optimize/calling_conventions.pdf) — the cross-compiler/cross-OS reference
- Bridge to PRE Ch.5: [Blazytko — practical MBA deobfuscation with msynth](https://synthesis.to/2021/11/11/practical_mba_deobfuscation.html)

**Per-architecture — Raymond Chen's processor series (compiler-codegen viewpoint)**
- [ARM32/Thumb-2](https://devblogs.microsoft.com/oldnewthing/20210531-00/?p=105265) · [AArch64](https://devblogs.microsoft.com/oldnewthing/20220726-00/?p=106898) · [x86-64 whirlwind tour](https://devblogs.microsoft.com/oldnewthing/20220831-00/?p=107077) · [MIPS R4000](https://devblogs.microsoft.com/oldnewthing/20180402-00/?p=98415) · also Alpha AXP, PowerPC 600, SuperH-3, Itanium (each part 1 links onward)

**Book-shelf reference**
- Hacker's Delight (2nd) — Henry Warren — [publisher page](https://www.informit.com/store/hackers-delight-9780321842688) — the bible of the bit tricks compilers emit (hackersdelight.org is dead; ignore it)

### Assembly anti-forgetting system
The trap has a name — **illusion of competence**: the moment an idea feels clear, the brain files it as "done" before anything is actually stored. The cure: convert everything read into something **made or done**. Anchor habit (decided 2026-09): 30–60 min *daily* — read RE4B, apply by hand, let the book take as long as it needs; every day = one small new thing + review, Intel SDM open on the side for lookups.

**The rules**
- **Predict-then-verify on Godbolt** — write a tiny C function, predict its asm *before* looking, then compare; re-run the same code at `-O0` vs `-O2` and diff. Builds asm-reading intuition faster than anything else — [godbolt.org](https://godbolt.org/) (offline: `gcc -S -masm=intel`)
- **Debugger every single day** — run the small programs under gdb + pwndbg/GEF (x64dbg on Windows), step instruction by instruction, watch registers/stack/flags mutate. Once you've *watched* `push`/`call`/`ret` move the stack live, you can't forget them.
- **Write asm, don't just read it** — reading and writing are different skills. NASM ladder: ① no-libc programs via raw syscalls → ② hand-roll `strlen`, `memcpy`, `atoi` → ③ an asm function called from C, to learn the calling convention for real.
- **Drills & challenges** — [challenges.re](https://challenges.re/) (Yurichev's own drill site, built to pair with RE4B) · [crackmes.one](https://crackmes.one/) starting at very-easy · pwn.college [Assembly Crash Course](https://pwn.college/computing-101/) module
- **Daily log in my own words** — 2–3 lines after each session: *learned what / still fuzzy on what*. Writing it exposes the spots I only *think* I understand; explaining it to someone (blog post) is the Feynman-technique upgrade.
- **Spaced review** — one day per week is review-only, no new material: re-solve an old exercise from scratch without peeking. Anki only for true memorize-items: SysV arg-register order (`rdi rsi rdx rcx r8 r9`), caller/callee-saved sets, which flags each instruction writes.
- **Narrow the scope first** — RE4B covers x86/x64/ARM/MIPS; stay on x86-64 + Intel syntax until comfortable, then widen. Intel SDM = lookup reference, not reading material; [felixcloutier.com/x86](https://www.felixcloutier.com/x86/) is the browsable version of the same content.
- ⭐ **The gate rule (the actual cure for chapter-hopping)** — no moving to the next chapter until something got *made by hand* from this one: a tiny program, an exercise, or a C snippet compiled and taken apart in the debugger. Understanding alone doesn't unlock the next chapter.
- **Streak beats session length** — set a bad-day floor (10 min = one Godbolt predict-diff). Topics die at the restart-after-a-break, not at the short session.

**Deeper cut** — every rule above is one of the three most-replicated results in learning science in disguise: retrieval practice (testing effect), spaced repetition, and the generation effect. Extra ammo: [rappel](https://github.com/yrp604/rappel) as an instant "what does this instruction really do" REPL · [xorpd — xchg rax,rax](https://www.xorpd.net/pages/xchg_rax/snip_00.html) — 0x40 wordless x86 snippets, perfect weekly-review puzzles (explain each one aloud). Pairs with the [Compiler optimization tricks](#compiler-optimization-tricks) lab above — same predict-and-diff muscle.

**The honest closer** — partial forgetting is normal, not failure. Deeply-learned material reloads in an hour; shallow material restarts from zero. This system buys the cheap reload.

### RE roadmap — finish the core once
Assembly fundamentals barely change, so the core can be "finished" once. What keeps coming is new *patterns* — new compilers, obfuscation, ARM. Target state: self-sufficient, where anything new is a quick lookup, not a restudy.

**3-month full-time core**
- **Month 1 — x86-64 foundations:** [OST2 Arch1001](https://p.ost2.fyi/courses/course-v1:OpenSecurityTraining2+Arch1001_x86-64_Asm+2021_v1/about) in full, all exercises · daily [godbolt](https://godbolt.org/) drills — write C, compile at `-O0` and `-O2`, explain every line · hand-decompile 2–3 small functions a day back into C, no Ghidra. Exit bar: read any non-SIMD function and write its C equivalent.
- **Month 2 — compiler patterns & tools:** structs, arrays, pointers, switch tables, loops, recursion, and C++ (vtables, `this`, constructors, STL containers) · master Ghidra (retyping, creating structs, renaming) + one debugger (x64dbg or GDB with pwndbg) · PE and ELF formats, imports/exports, how the loader works · [crackmes.one](https://crackmes.one/) levels 1–3 daily.
- **Month 3 — real binaries:** [Practical Malware Analysis labs](https://practicalmalwareanalysis.com/labs/) · anti-debugging, packing & unpacking, basic obfuscation · 3–5 old [Flare-On](https://flare-on.com) challenges *before* reading the writeups · reverse one real small program end to end (a CLI tool, an old game).

**1-year daily hour (after the core)**
- Steady rhythm: one crackme or challenge every 2–3 days + one good writeup a week (Flare-On solutions, malware blogs).
- Breadth once per quarter: **Q1** SIMD basics + floating point · **Q2** ARM64 (mostly the same concepts, different syntax) · **Q3** Windows internals · **Q4** pwn.college or a specialization — malware, games, or firmware.

**What makes it stick — the pattern notebook** ⭐
Every newly decoded idiom (magic-number division, inlined `strlen`, …) goes into a personal notebook with an example. After a year the notebook replaces restudying — lookups happen in my own reference. Long-term form of the daily log above; the [Compiler optimization tricks](#compiler-optimization-tricks) section is its seed content.

---

## Tools — RE & disassembly
- Ghidra (ghidra.re + The Ghidra Book + GhidraClass — full NSA course inside the repo) 🦄
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
- Hiew (Hacker's View) — https://www.hiew.ru/ — classic hex editor + disassembler/assembler (x86/x64/ARM); fast PE/ELF triage and in-place binary patching
- ImHex — https://github.com/WerWolv/ImHex — hex editor
- rehex — https://github.com/solemnwarning/rehex — hex editor
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
- Network/C2: Wireshark, FakeNet-NG 🦄, INetSim 🦄, JA3/JA4 fingerprints, C2 Matrix
- Detection: YARA + YARA-X, Sigma, Neo23x0/signature-base (Florian Roth)
- Config extraction: Binary Refinery, malduck + karton + MWDB (CERT.pl)
  - Binary Refinery — https://github.com/binref/refinery
- Sandboxes: CAPEv2, ANY.RUN, Joe Sandbox, Tria.ge, Hybrid Analysis, DRAKVUF, VirusTotal + LiveHunt
- Sample sources: MalwareBazaar (abuse.ch) 🦄, vx-underground 🦄, VirusShare/MalShare, Malpedia, theZoo (github repo for Malware samples) 🦄, malware-traffic-analysis.net, contagio
- Test file: EICAR (eicar.org) — harmless AV detection check
- Reference: MalAPI.io, Malpedia (malpedia.caad.fkie.fraunhofer.de), Unprotect.it, Malcat (malcat.fr)
- History: Google: Mirai Botnet
-- YouTube: Revisit later: https://www.youtube.com/watch?v=adAr0KBJm4U

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
- Detection/DFIR: Snort / Suricata / Zeek / Security Onion, Sigma, Splunk / Elastic, Volatility / Autopsy / KAPE / plaso, Velociraptor / GRR, OSQuery, MISP / OpenCTI / VirusTotal, YARA, REMnux 🦄/ FLARE-VM 🦄, Any.run / Triage
- Purple/deception: Atomic Red Team / Caldera / Prelude, T-Pot / Cowrie / Thinkst Canary
- Lab: GNS3 / EVE-NG, VirtualBox / VMware, Docker

---

## Blogs, sites & writeups
### RE / deobfuscation / decompilation
- synthesis.to (Tim Blazytko) · msreverseengineering.com/blog (Rolf Rolles) · hex-rays.com/blog ("Igor's Tip of the Week") · binary.ninja/blog (Vector 35) · blog.quarkslab.com
- mahaloz.re + decompilation.wiki ("30 Years of Decompilation") · megabeets.net (radare2) · unprotect.it · felixcloutier.com/x86 · agner.org/optimize
- airbus-seclab/qemu_blog · corkami (Ange Albertini) · dogbolt.org · Ricardo Narvaja RE courses (Spanish)
  - blog.washi.dev (Washi — AsmResolver author, .NET RE & deobfuscation) — https://blog.washi.dev/
### Exploitation / kernel
- Google Project Zero (projectzero.google) · Phrack — https://phrack.org 🦄 · RET2 Systems blog · Connor McGarr · Zero Day Initiative blog · Zon8 Research JS engine reading list · browser-pwn (m1ghtym0) · Nightmare (guyinatuxedo) · sploitfun "Understanding glibc malloc" · Exodus Intelligence / grsecurity
### Windows internals
- Microsoft Learn · Geoff Chappell (geoffchappell.com) · Alex Ionescu (alex-ionescu.com) · tiraniddo.dev (Forshaw) · ired.team · CodeMachine Articles · hasherezade "1001 nights" · Palantir "Tampering with Windows Event Tracing" · modexp · LOLBAS
### Malware
- Mandiant/FLARE (cloud.google.com/blog/topics/threat-intelligence) · Check Point Research · Securelist / Kaspersky GReAT · SentinelLabs · Elastic Security Labs · Unit 42 · Cisco Talos · Zscaler ThreatLabz · ESET WeLiveSecurity · The DFIR Report · hasherezade's blog · 0ffset blog · MalwareTech · vx-underground · Malpedia · n1ght-w0lf · ired.team · decoded.avast.io · exploitreversing.com (Alexandre Borges)
  - dr4k0nia (.NET malware & deobfuscation) — https://dr4k0nia.github.io/
  - pwnage.io / infosec4breakfast (Joshua Reynolds — malware RE, Qiling emulation) — https://pwnage.io/
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
- "Smashing the Stack for Fun and Profit" — Aleph One (Phrack 49) — https://phrack.org/issues/49/smashing-the-stack-for-fun-and-profit
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
- GhidraClass (inside Ghidra repo) · vergiliusproject.com · MalAPI.io · Unprotect.it · MWDB + karton + malduck (CERT.pl) 🦄

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
- r/netsec · [r/ReverseEngineering](https://www.reddit.com/r/ReverseEngineering/)  🦄· r/Malware · r/ExploitDev
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
- pwn.college — free, ASU, belts system; low-level, exploitation, systems. Best structured free hacking course 🦄
- picoCTF — free, Carnegie Mellon; 500+ challenges, beginner to hard. Best for students 🦄
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
- Hack The Box (free tier) + TryHackMe (free rooms) — guided rooms + machines 🦄

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

### Tibia — RE hobby project
- **Run a server locally** — Canary · The Forgotten Server (TFS) — open-source Tibia server implementations
    - Canary: <https://github.com/opentibiabr/canary>
    - TFS: <https://github.com/otland/forgottenserver>
- **Run a client locally** — OTClient — open-source Tibia client (source = answer key)
    - <https://github.com/edubart/otclient>
- **Sandbox setup** — TFS + OTClient on your Linux box · optional old offline client binary as a "wild" target · you control both ends, nothing at risk
- **Reverse the client** — packet handling · encryption (older versions: XTEA after an RSA handshake) · find where player HP + position live in memory
    - packet handling:
        - Google: tibia otclient protocolgame opcodes parsing
        - <https://github.com/edubart/otclient>
    - encryption (older versions: XTEA after an RSA handshake):
        - Google: tibia RSA XTEA login handshake
        - <https://github.com/a3f/Tibia-Wireshark-Plugin>
        - <https://otland.net/threads/7-70-rsa-xtea-encryption.206077/>
    - find where player HP + position live in memory:
        - <https://github.com/villor/TibiaReader>
- **Build tooling** — small packet logger or memory reader, pointed at your local server
    - Google: open tibia packet logger proxy memory reader github
    - <https://github.com/jo3bingham/TibiaAPI>
    - <https://github.com/d33tah/tibiaproxy>
    - <https://github.com/Mytherin/Tibialyzer>

**Roadmap**
1. **Find your HP** — scanmem/GameConqueror (Linux Cheat Engine) → scan HP, change it, watch it move in-game · memory layout, data types
2. **Rebuild the player struct** — HP neighbours (mana, x/y/z) → C struct · alignment + padding
3. **First tool** — external HP reader in C/Python via `process_vm_readv` / `/proc/pid/mem`
4. **Go static** — Ghidra/Binary Ninja + GDB watchpoint on HP → who writes it → trace the function · C++: vtables, name mangling, STL patterns
5. **The protocol** — Wireshark capture · RSA at login, XTEA for game packets · find XTEA key in handshake/memory → decrypt → parse, check against OTClient source
6. **Capstone (pick one)** — memory-reading radar/minimap of nearby creatures · protocol proxy logging decrypted packets · Ghidra project documenting client structs → blog post (portfolio piece)

**Awesome tibia**
- **Servers** — open-source Tibia server emulators
    - The Forgotten Server (TFS) ⭐1.8k: <https://github.com/otland/forgottenserver>
    - Canary (OpenTibiaBR, latest protocol) ⭐650: <https://github.com/opentibiabr/canary>
    - OpenCoreMMO (C#) ⭐480: <https://github.com/OpenCoreMMO/OpenCoreMMO>
    - opentibia/server (the original, archived) ⭐450: <https://github.com/opentibia/server>
    - OTHire (7.72) ⭐95: <https://github.com/Ezzz-dev/OTHire>
    - Nostalrius (7.7 clone, archived) ⭐115: <https://github.com/Ezzz-dev/Nostalrius>
- **Clients** — alternative clients (C++ + Lua)
    - OTClient (edubart, original) ⭐700: <https://github.com/edubart/otclient>
    - OTClient Redemption (OpenTibiaBR/mehah, C++20) ⭐535: <https://github.com/opentibiabr/otclient>
    - OTClientV8 (optimized) ⭐300: <https://github.com/OTCv8/otclientv8>
    - YATC (old alt client) ⭐70: <https://github.com/opentibia/yatc>
- **Map & asset tools**
    - Remere's Map Editor ⭐320: <https://github.com/hampusborgos/rme>
    - Object Builder (`.dat`/`.spr` editor): <https://github.com/ottools/ObjectBuilder>
    - Item Editor (`items.otb`): <https://github.com/ottools/ItemEditor>
    - open-tibia-library (TS, OTS/OTClient file formats): <https://github.com/gesior/open-tibia-library>
    - OTBM2JSON (map file format): <https://github.com/Inconcessus/OTBM2JSON>
    - tibia-map-data (fully explored maps): <https://github.com/tibiamaps/tibia-map-data>
- **Websites (AAC)** — account creators for OT servers
    - MyAAC ⭐170: <https://github.com/slawkens/myaac>
    - Znote AAC ⭐155: <https://github.com/Znote/ZnoteAAC>
- **RE, proxies & bots** — study material for the roadmap
    - TibiaAPI (C# proxy library) ⭐85: <https://github.com/jo3bingham/TibiaAPI>
    - Tibialyzer (memory reader) ⭐190: <https://github.com/Mytherin/Tibialyzer>
    - Tibia Wireshark dissector: <https://github.com/a3f/Tibia-Wireshark-Plugin>
    - PyTibia (pixel bot, Python) ⭐290: <https://github.com/lucasmonstrox/PyTibia>
    - OpenTibia-Unity (client in Unity) ⭐105: <https://github.com/slavidodo/OpenTibia-Unity>
- **Data / API**
    - TibiaData API (Go) ⭐110: <https://github.com/tibiadata/tibiadata-api-go>

**Search queries**
- Google("Canary open tibia server github opentibiabr")
- Google("The Forgotten Server otland github tibia")
- Google("OTClient edubart github open tibia client protocol")
- Google("Tibia protocol XTEA RSA encryption reverse engineering writeup")
- Google("tibia packet proxy logger github open tibia")
- Google("tibia memory reader bot github player hp position")

**Awesome tibia**

## Newsletters & aggregators
- tl;dr sec (Clint Gibler) · This Week in Security (Zack Whittaker) · Risky Business (+ daily Risky Bulletin) · Detection Engineering Weekly
- vx-underground · r/ReverseEngineering · r/netsec · Hacker News · kayssel.com
- Bellingcat toolkit / OSINT Framework

## Hidden gems — the "unknowns"
Resources most people never find (from `known pwn.md`):
- GhidraClass — full NSA RE course inside the Ghidra repo 🦄
- OST2 (ost2.fyi) — free university-grade x86/ARM/firmware/Windows 🦄
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

## External links — unsorted drop-box
Raw links parked here for later sorting.
- https://github.com/hummanta/awesome-compilers
- https://github.com/HACKE-RC/awesome-reversing
- https://gist.github.com/DtxdF/9c9297945bd7165c53b264ec597a9c39
- https://github.com/wtsxdev/reverse-engineering
- [Introduction To Reverse Engineering With Radare2](https://www.youtube.com/watch?v=LAkYW5ixvhg) #video

---

## Source & scope notes
- Aggregated 2026-09-27 from every `.md` in this repo: `after pwn.md`, `known pwn.md`, `Reverse Engineering.md`, `assembly.md`, `unsorted.md`, `blogs.md`, `books.md`, `youtube.md`, `README.md`.
- `blogs.md` pointer: `notes/` → Articles (exploits, secure code, and CVE writeups).
- `[[devopstoolbox]]` — 500+ DevOps/terminal tools + 207 YouTube videos (only the security-relevant subset copied above).
- Personal career/immigration links (Austria RWR card, etc.) live in their own career notes, not here.
- Book covers + per-book ratings, reading status and page progress: [books.html](./books.html).

### Yara

	- Talk with Yara auther & main maintainer https://podcasts.apple.com/us/podcast/ep02-victor-manuel-alvarez-motivation-community-and/id1777589687?i=1000677670834
	- Introduction to YARA Part 1 - What is a YARA Rule https://youtu.be/3BpIhbsDR_I
	- Yara rules
		-- Google it.
		-- https://github.com/yara-rules/rules
		-- https://github.com/neo23x0/signature-base
		-- https://github.com/elastic/protections-artifacts/tree/main/yara

### Shellcode
shell-storm: https://shell-storm.org/shellcode/index.html

### DLL search order hijacking (Windows persistence)
Technique traces back to **Nick Harbour** (Mandiant), 2010:
- [Malware Persistence without the Windows Registry](https://cloud.google.com/blog/topics/threat-intelligence/malware-persistence-windows-registry) — Jul 2010, still live on Google Cloud's threat-intel blog. The EXE's own directory is first in the DLL search order (except `KnownDLLs`), and `KnownDLLs` does *not* protect *dependent* DLLs: `explorer.exe` loads `ws2_32.dll` (protected) → which loads `iphlpapi.dll` (not protected) → drop a fake in `C:\Windows` for persistence with zero registry footprint. He counted 1,032 exploitable DLL/path combos on Win7 x64.
- "DLL Search Order Hijacking Revisited" — Sep 2010, distinguishes this persistence technique from the remote "DLL preloading / binary planting" flavor. ⚠️ dead everywhere: fireeye.com 530, mandiant.com 301s to a landing page, Google Cloud slug soft-404s, no Wayback snapshot.
- [The Black Art of Binary Hijacking](https://media.blackhat.com/bh-us-10/presentations/Harbour/BlackHat-USA-2010-Harbour-Black-Art-of-Binary-Hijacking-slides.pdf) — same research, Black Hat USA 2010 slides (PDF), live.
- Modern follow-ups: [MITRE T1574.001](https://attack.mitre.org/techniques/T1574/001/) · [Mandiant: DLL Side-loading & Hijacking](https://cloud.google.com/blog/topics/threat-intelligence/abusing-dll-misconfigurations/) · [Hijacking DLLs in Windows](https://www.wietzebeukema.nl/blog/hijacking-dlls-in-windows) (Wietze Beukema) · [HijackLibs](https://hijacklibs.net/)

### DLL side-loading (FireEye, 2014)
**Amanda Stewart** (FireEye) — the canonical reference. Malicious DLL dropped so a trusted EXE loads it instead of the real one (WinSxS abuse); payload runs in-memory under a benign process. ⚠️ all original fireeye.com URLs now 301 to a generic Mandiant landing page.
- [DLL Side-Loading: A Thorn in the Side of the Anti-Virus (AV) Industry](https://docs.huihoo.com/rsaconference/usa-2014/hta-w04a-dll-side-loading-a-thorn-in-the-side-of-the-anti-virus-av-industry.pdf) — RSA Conference 2014 slides, session HTA-W04A (PDF, live mirror). What it is → APT usage → how to recognize → how to avoid.
- [DLL Side-Loading: Another Blind-Spot for Anti-Virus](https://web.archive.org/web/20200313180739/https://www.fireeye.com/blog/threat-research/2014/04/dll-side-loading-another-blind-spot-for-anti-virus.html) — Apr 2014 blog post (Wayback only).
- [rpt-dll-sideloading.pdf](https://web.archive.org/web/20200302090732/https://www.fireeye.com/content/dam/fireeye-www/global/en/current-threats/pdfs/rpt-dll-sideloading.pdf) — the full whitepaper (Wayback only). Best of the three: disambiguates side-loading vs. search-order hijacking vs. DLL hijacking vs. pre-loading, plus a PlugX variant teardown (campaign against Chinese political rights activists).
- Modern follow-ups: [MITRE T1574.002](https://attack.mitre.org/techniques/T1574/002/) · [CAPEC-641](https://capec.mitre.org/data/definitions/641.html) · [mandiant/DueDLLigence](https://github.com/mandiant/DueDLLigence) (hands-on shellcode-execution harness for finding side-loading targets)

### Anti-disassembly in malware samples

**Real malware samples with anti-disassembly**
- [DanaBot obfuscation techniques (Zscaler)](https://www.zscaler.com/blogs/security-research/technical-analysis-danabot-obfuscation-techniques) — the best "real sample" write-up of the bunch. Covers the **junk-byte jump**: a `jmp` over inserted garbage that makes IDA decode wrong instruction boundaries, plus control-flow flattening and string obfuscation.
- [Defeating Anti-Reverse Engineering: the 'Trouble' binary (Binary Ninja, Jan 2026)](https://binary.ninja/2026/01/23/reversing-linux-anti-re.html) — Linux binary that XOR-decrypts a buffer at runtime and jumps into the freshly decrypted region. Relevant to your `binary_ninja/` notes; also discusses how BN's basic-block analysis handles malformed code.
- [How Malware Employs Anti-Debugging, Anti-Disassembly and Anti-Virtualization (Qualys / BlackHat 2012)](https://blog.qualys.com/vulnerabilities-threat-research/2012/07/30/how-malware-employs-anti-debugging-anti-disassembly-and-anti-virtualization-technologies) — statistical study over a large sample corpus: which techniques actually show up in the wild and how often. Old but still the main data point on prevalence.

**Technique references (the canon)**
- [Practical Malware Analysis, Ch. 15 — Anti-Disassembly (PDF)](http://staff.ustc.edu.cn/~bjhua/courses/security/2014/readings/anti-disas.pdf) — the chapter itself. Linear vs. flow-oriented disassembly, jump-with-same-target (`jz`/`jnz` to one address), `E8` false call, impossible disassembly, `push`/`retn` instead of `jmp`, SEH abuse. Start here if you want one source.
- [MBC: Disassembler Evasion](https://github.com/MBCProject/mbc-markdown/blob/main/anti-static-analysis/disassembler-evasion.md) and [Executable Code Obfuscation](https://github.com/MBCProject/mbc-markdown/blob/main/anti-static-analysis/executable-code-obfuscation.md) — MITRE's Malware Behavior Catalog. Each technique has an ID and real malware families cited as examples, so it's a good index into further write-ups.
- [RE Reference Manual — Anti-Disassembly](https://github.com/shangadi/reverse-engineering-reference-manual/blob/master/contents/anti-analysis/Anti-Disassembly.md) — terse cheatsheet form, good to keep next to the disassembler.
- [Anti-disassembly, anti-debugging and anti-VM (Infosec Institute)](https://www.infosecinstitute.com/resources/malware-analysis/anti-disassembly-anti-debugging-and-anti-vm/) — decent overview tying the three categories together.

**Defeating it with scripts**
- [IDA Pro Anti-Disassembly, Basic Blocks, and IDAPython (Moritz Raabe)](https://moritzraabe.de/2017/01/15/ida-pro-anti-disassembly-basic-blocks-and-idapython/) — the practical one: how anti-disassembly breaks IDA's basic-block graph and IDAPython to patch junk bytes to `nop` and re-analyze. This is the "now fix it" piece most overviews are missing.
- [Malware development part 6 — obfuscation with LLVM (0xpat)](https://0xpat.github.io/Malware_development_part_6/) — offense side, useful for understanding *why* opaque predicates and CFG flattening look the way they do in the disassembly.

**Lab walkthroughs (PMA 15-01…15-03)**
- [Lab 15 — Discover Anti-Disassembly Techniques (Medium)](https://medium.com/@aitichoumustapha/lab-15-practical-malware-analysis-discover-anti-disassembly-techniques-7198b91baf3f)
- [Practical Malware Analysis: Anti-Disassembly Lab 15-01](https://jmprsp.wordpress.com/2016/03/20/practical-malware-analysis-anti-disassemblylab-15-01/) — the `xor`-then-`jz` trick and the `E8` opcode abuse, worked byte by byte.

Given your repo rule ("read less, build more — every resource means do the labs and publish a writeup"), the minimal path is: PMA ch.15 → Lab 15-01/02/03 → Raabe's IDAPython script → DanaBot as the real-world confirmation. The Binary Ninja 'Trouble' post slots naturally into `binary_ninja/`.

### Command-line obfuscation (Daniel Bohannon, Mandiant)
_**SMA:** Heard about this from: EP03 Ryan Chapman - From Software Cracking to Threat Hunting: A Reverse Engineering Story._
- [DOSfuscation whitepaper (2018)](https://cloud.google.com/blog/topics/threat-intelligence/dosfuscation-exploring-obfuscation-and-detection-techniques) · [BH Asia talk](https://infocondb.org/con/black-hat/black-hat-asia-2018/invoke-dosfuscation-techniques-for-f-in-style-do-s-level-cmd-obfuscation): `cmd.exe` obfuscation (`^`, `""`, `%VAR:~s,n%`, `%VAR:old=new%`, FOR-loop encodings) + detection.
- [Invoke-DOSfuscation (GitHub)](https://github.com/danielbohannon/Invoke-DOSfuscation) · [HITB 2018 slides](https://conference.hitb.org/hitbsecconf2018ams/materials/D1T2%20-%20Daniel%20Bohannon%20-%20Invoke-DOSfuscation.pdf) · [HITB talk list](https://www.helpnetsecurity.com/2018/01/18/hitb2018ams-accepted-talks/) · [Dark Reading](https://www.darkreading.com/threat-intelligence/researcher-to-release-free-attack-obfuscation-tool)
- Deobfuscation: [De-DOSfuscation with flare-qdb (FLARE)](https://cloud.google.com/blog/topics/threat-intelligence/cmd-and-conquer-de-dosfuscation-flare-qdb)
- Secondary: [IT Carlow student research (PDF)](https://showcase.itcarlow.ie/C00253245/assets/docs/Research.pdf) · [cmd evasion Q&A](https://answers.securityscientist.net/q/22303/what-obfuscation-techniques-do-adversaries-use-to-evade-cmd-exe-detection) · [iThome series, zh-TW](https://ithelp.ithome.com.tw/articles/10281403)
- Related: [Revoke-Obfuscation (PowerShell, BH USA 2017)](https://github.com/danielbohannon/Revoke-Obfuscation) · [MaLDAPtive (DEF CON 32)](https://securityboulevard.com/2024/11/def-con-32-maldaptive-obfuscation-and-de-obfuscation)

### Ryan Chapman: EP03 "From Software Cracking to Threat Hunting: A Reverse Engineering Story"
- Google: `Ryan "rj_chap" Chapman` · `Ryan Chapman SANS FOR528 ransomware` · `Ryan Chapman FOR610` · `Ryan Chapman Palo Alto managed threat hunting` · `Ryan Chapman Blueprint malware triage`
- TODO: talk notes
