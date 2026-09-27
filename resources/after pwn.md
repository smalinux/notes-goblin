---
created: 2026-09-01
tags:
  - security
  - pwn
  - resources
  - moc
locked: false
---

# After pwn.college — one big resource list

> All links & resources from this vault, in one place. What to do after finishing pwn.college.
> Sourced from every note: [[PWN MOC]], [[Security MOC]], the roadmap phases, canvases, inbox, refs.
> For the DevOps/terminal tool directory (500+ tools) see [[devopstoolbox]] — only security-relevant ones copied here.

## The path (read first)
- [[PWN MOC]] — master map for pwning
- [[Security MOC]] — security topic map
- [[Seven overlapping phases structure the security roadmap]]
- [[Security roadmap timeline runs about 18 months]]
- [[Phase 1 builds binary exploitation foundations]]
- [[Phase 2 builds reverse engineering skill]]
- [[Phase 3 covers advanced exploitation and kernel]]
- [[Phase 4 makes firmware and IoT your specialization]]
- [[Phase 5 goes into hardware hacking]]
- [[Phase 6 grinds bug bounty, CTFs, and CVEs]]
- [[Phase 7 adds optional certs and the job hunt]]
- [[The security end goal is belts, CVEs, bounty, and a job]]
- [[Pick Linux kernel and container exploitation as your security niche]]
- [[Sohaib's roadmap turns an embedded engineer into a vuln researcher]]

## Practice platforms & wargames
- pwn.college — https://pwn.college/ (dojos: https://pwn.college/dojos , source: https://github.com/pwncollege)
  - Linux Luminarium — https://pwn.college/linux-luminarium/
  - Computing 101 — https://pwn.college/computing-101/
- ROP Emporium — https://ropemporium.com/guide.html
- exploit.education (Phoenix, Nebula, Protostar) — https://exploit.education
- Nightmare (guyinatuxedo, heap/pwn) — https://guyinatuxedo.github.io/nightmare/
- how2heap (Shellphish) — https://github.com/shellphish/how2heap
- pwnable.kr
- pwnable.tw
- pwnable.xyz
- picoCTF
- Microcorruption (MSP430 firmware) — https://microcorruption.com
- crackmes.one
- ret2wargames (live memory visualizer)
- HackTheBox — https://www.hackthebox.com
- TryHackMe
- Root-Me
- OverTheWire wargames (Bandit, Narnia, Behemoth, Utumno, Natas, Leviathan) — https://overthewire.org/wargames
- Modern Binary Exploitation (RPISEC, free course)
- Malware Unicorn RE101 / RE102
- CryptoHack — https://cryptohack.org/
- Cryptopals
- Azeria Labs (ARM asm & exploitation) — https://azeria-labs.com
- PortSwigger Web Security Academy — https://portswigger.net/
- huntr.dev (open-source bounties)
- syzbot dashboard — https://syzkaller.appspot.com
- OWASP IoTGoat
- Damn Vulnerable Router Firmware (DVRF)
- Damn Vulnerable ARM Router (DVAR)
- SEED Labs (Syracuse)
- CTFlearn
- VulnHub
- Malware-Traffic-Analysis.net
- CyberDefenders
- LetsDefend (free tier)
- Blue Team Labs Online
- DetectionLab
- flaws.cloud / CloudGoat / Kubernetes Goat
- Ethernaut / Damn Vulnerable DeFi (blockchain)
- Gandalf (LLM challenge)
- starctf oob-v8 (first V8 challenge)
- Kaitai Struct Web IDE — https://ide.kaitai.io/ (devel: https://ide.kaitai.io/devel/)
- Godbolt Compiler Explorer — https://godbolt.org/
- GTFOBins — https://gtfobins.github.io/
- Exploitee.rs — https://exploitee.rs
- Introductory CTF list (zaratec) — https://zaratec.io/ctf-practice/
- wargame-nexus (catalog) — https://github.com/zardus/wargame-nexus

## CTFs, competitions & events
- CTFtime — https://ctftime.org/
- Google kernelCTF (Linux LPE + container escape) — https://github.com/google/security-research/blob/master/kernelctf/rules.md
- Google kvmCTF (VM escape, $250k)
- Chrome VRP
- Pwn2Own — https://en.wikipedia.org/wiki/Pwn2Own
  - Pwn2Own Automotive — https://vicone.com/pwn2own-automotive/
  - Pwn2Own "IoT / SOHO Smashup" category
  - 34 0-days at Pwn2Own (article) — https://cybersecuritynews.com/34-0-day-vulnerabilities-pwn2own/
- Zero Day Initiative (ZDI)
- Rhme CTF (ChipWhisperer / fault injection)
- Real World CTF (hypervisor)
- Hack-A-Sat (satellite)
- Code4rena / Sherlock / Secureum (smart-contract audits)
- Trace Labs CTFs (OSINT)
- Snyk "Fetch the Flag" (John Hammond / Snyk)

## Bug bounty & vuln research programs
- HackerOne — https://www.hackerone.com/
- Bugcrowd — https://www.bugcrowd.com/
- Intigriti
- Google VRP / exploit reward expansion — https://security.googleblog.com/2023/10/expanding-our-exploit-reward-program-to.html
- ZDI / CNA (coordinated disclosure)
- SEC Consult Vulnerability Lab — https://sec-consult.com/vulnerability-lab/
- SBA Research (Vienna, TU Wien-affiliated)
- We0wnY0u (TU Wien CTF team)
- Gray market (cautionary, NOT recommended): Zerodium — https://en.wikipedia.org/wiki/Zerodium , Crowdfense — https://securityaffairs.com/161584/hacking/crowdfense-30m-exploit-acquisition-program.html
- See [[Keep the money legal by choosing bounties over the gray market]]

## Courses & training
- OpenSecurityTraining2 (OST2) — https://ost2.fyi/ (portal: https://p.ost2.fyi/)
  - Arch1001 x86-64 Assembly — https://p.ost2.fyi/courses/course-v1:OpenSecurityTraining2+Arch1001_x86-64_Asm+2021_v1/about
  - RE1001 / RE2001, Debuggers 1012 (GDB), Debuggers 1102 (Ghidra), Arch2001 (OS Internals), Arch4031 (coreboot/firmware), Arch1005, Bluetooth 1601, TC (Trusted Computing), SCA101, FAULT101
- ASU CSE 466 public lectures (pwn.college source course)
- Nand2Tetris — https://nand2tetris.org
- CMU 15-213 / CS:APP labs — https://csapp.cs.cmu.edu/3e/labs.html
- MIT 6.1810 (xv6 OS) — https://pdos.csail.mit.edu/6.1810
- Stanford CS144 Networking — https://cs144.github.io/
- TCM Security — Beginner's Guide to IoT and Hardware Hacking
- Gray Hat Academy — IoT Firmware Exploitation
- Attify — Offensive IoT Exploitation (OIX)
- HeXtree.io hardware track / Hardware Hacking 101 (Just Hacking Training)
- Maldev Academy / Sektor7 (Windows malware dev)
- Bootlin slides (embedded Linux)
- Google Cybersecurity Certificate (Coursera, audit free)
- SANS Cyber Aces / SANS FOR / SANS MGT
- Professor Messer Network+ / Security+ (free YouTube)
- Practical Networking (YouTube, TCP/IP)
- Hoppers Roppers pwning roadmap — https://www.hoppersroppers.org/roadmap/training/pwning.html
- Izzy's "pwner's roadmap" — https://izzy.sh/posts/pwners-roadmap/
- Cybershelf best RE books — https://www.cybershelf.org/en/blog/best-reverse-engineering-books-2026
- Cybershelf best cybersecurity books — https://www.cybershelf.org/en/guides/best-cybersecurity-books-2026

## Certifications
- OSCP (PEN-200)
- OSED (EXP-301)
- OSEE (elite tier)
- CompTIA Network+ / Security+, eJPT, PNPT, CCNA (entry/network)
- Governance/standards seen in the landscape canvas: CISSP path, Common Criteria, FIPS 140-3, EMVCo, ISA/IEC 62443, ISO 27001, SOC 2, NIST CSF, CIS Controls
- Note: certs are optional for the vuln-research path — see [[Phase 7 adds optional certs and the job hunt]]

## Books — exploitation, RE & systems
- Hacking: The Art of Exploitation — Jon Erickson — https://www.amazon.com/Hacking-Art-Exploitation-Jon-Erickson/dp/1593271441
- Practical Binary Analysis — Dennis Andriesse — https://www.amazon.com/Practical-Binary-Analysis-Instrumentation-Disassembly/dp/1593279124
- Practical Reverse Engineering — Dang, Gazet, Bachaalany — https://www.amazon.com/Practical-Reverse-Engineering-Reversing-Obfuscation/dp/1118787315
- The Shellcoder's Handbook (2nd) — Anley et al. — https://www.amazon.com/Shellcoders-Handbook-Discovering-Exploiting-Security/dp/047008023X
- A Guide to Kernel Exploitation — Perla & Oldani — https://www.amazon.com/Guide-Kernel-Exploitation-Attacking-Core/dp/1597494860
- The Art of Software Security Assessment (TAOSSA) — Dowd, McDonald, Schuh — https://www.amazon.com/Art-Software-Security-Assessment-Vulnerabilities/dp/0321444426
- The Ghidra Book — Eagle & Nance
- The IDA Pro Book — Chris Eagle
- Blue Fox: Arm Assembly Internals & RE — Maria Markstedter
- Reverse Engineering for Beginners — Dennis Yurichev (free, beginners.re)
- Learning Linux Binary Analysis — Ryan O'Neill
- The Fuzzing Book (free) — https://fuzzingbook.org
- Fuzzing: Brute Force Vulnerability Discovery — Sutton et al.
- Computer Systems: A Programmer's Perspective (CS:APP) — Bryant & O'Hallaron
- The Linux Programming Interface (TLPI) — Michael Kerrisk
- Operating Systems: Three Easy Pieces (OSTEP, free) — https://pages.cs.wisc.edu/~remzi/OSTEP
- Computer Architecture: A Quantitative Approach / Computer Organization and Design — Hennessy & Patterson
- Linux Kernel Development — Robert Love
- Understanding the Linux Kernel — Bovet & Cesati
- Windows Internals (Parts 1 & 2) — Russinovich et al.
- *OS Internals (I–III) — Jonathan Levin (mobile)
- Attacking JavaScript Engines — Saelo (Phrack 70)

## Books — bug bounty, web, network, crypto, hardware
- Real-World Bug Hunting — Peter Yaworski
- Bug Bounty Bootcamp — Vickie Li
- The Web Application Hacker's Handbook
- The Tangled Web
- Attacking Network Protocols — James Forshaw
- Rootkits and Bootkits — Matrosov, Rodionov, Bratus
- Serious Cryptography (2nd) — Aumasson
- Cryptographic Engineering — Page
- A Graduate Course in Applied Cryptography — Boneh & Shoup (free)
- Real-World Cryptography — David Wong
- Security Engineering — Ross Anderson (free)
- Practical Malware Analysis — Sikorski & Honig
- The Art of Memory Forensics
- Threat Modeling — Adam Shostack
- Penetration Testing — Georgia Weidman
- The Hacker Playbook 3 — Peter Kim
- Practical IoT Hacking — Chantzis, Stais, Calderon — https://www.amazon.com/Practical-IoT-Hacking-Fotios-Chantzis/dp/1718500904
- The Hardware Hacking Handbook — van Woudenberg & O'Flynn — https://www.amazon.com/Hardware-Hacking-Handbook-Breaking-Embedded/dp/1593278748
- The Car Hacker's Handbook (free)
- Power Analysis Attacks
- Computer Networking: A Top-Down Approach — Kurose & Ross
- TCP/IP Illustrated Vol.1 — Stevens/Fall
- Practical Packet Analysis — Chris Sanders
- Network Security Assessment — Chris McNab
- The Practice of Network Security Monitoring — Richard Bejtlich
- Applied Network Security Monitoring — Sanders & Smith
- Cryptography and Network Security — William Stallings
- See [[Security roadmap book stack and free platforms]] and [[Ten hacking books as reference not curriculum]]

## Tools — exploitation & reverse engineering
- pwntools — https://docs.pwntools.com/en/latest/ — https://github.com/gallopsled/pwntools (cli: https://docs.pwntools.com/en/stable/commandline.html , globals: https://docs.pwntools.com/en/stable/globals.html)
- gdb + **pwndbg** / GEF / peda ⭐⭐⭐⭐
- Ghidra
- IDA Pro / IDA Free
- Binary Ninja
- **radare2** / rizin / **Cutter** ⭐⭐⭐⭐
- angr (symbolic execution) + angr CTF
- KLEE / Triton / SVF (symbolic / static analysis)
- one_gadget, ROPgadget, ropper
- readelf / nm / objdump / patchelf / objcopy / strip
- rappel (asm REPL) — https://github.com/yrp604/rappel
- aarch64-esr-decoder — https://esr.arm64.dev/
- Kaitai Struct — https://github.com/kaitai-io/kaitai_struct_webide , awesome: https://github.com/kaitai-io/awesome-kaitai
- strace / ltrace

## Tools — fuzzing & vuln research
- AFL++
- libFuzzer
- honggfuzz
- syzkaller / syzbot
- OSS-Fuzz
- Sanitizers: ASan / UBSan / MSan

## Tools — firmware, hardware & embedded
- binwalk
- unblob (supersedes binwalk)
- firmware-mod-kit
- FACT
- EMBA
- FirmAE / Firmadyne
- qiling
- qemu-user / qemu-system (QEMU) — https://github.com/qemu/qemu
- Buildroot / Yocto, U-Boot / barebox
- ChipWhisperer — https://www.newae.com/chipwhisperer (jupyter: https://github.com/newaetech/chipwhisperer-jupyter) / ChipShouter / Findus
- PicoScope 6000, logic analyzer, Bus Pirate, Flashrom, OpenOCD
- Lascar / SCALib / ASCAD (side-channel analysis)
- SDR / GNU Radio / HackRF / RTL-SDR / Ubertooth, Proxmark3 (RFID)
- SocketCAN (CAN bus)
- OP-TEE / TF-A / Keylime (trusted computing)
- awesome-implementation-attack — https://github.com/danpage/awesome-implementation-attack
- Hardware gear referenced: T-Deck (LilyGo) — https://lilygo.cc/en-us/products/t-deck , biscuitshop — https://biscuitshop.us/collections/products , EFF Rayhunter — https://eff.org/rayhunter (org: https://github.com/efforg)

## Tools — kernel, tracing & dev loop
- virtme-ng (fast kernel test loop), ccache, icecc
- ftrace / trace-cmd, perf, bpftrace / bcc / libbpf
- KASAN / UBSAN / lockdep
- KUnit / kselftest
- b4 + git send-email (upstream patch workflow), aerc / mutt
- KernelShark, Perfetto
- xairy/linux-kernel-exploitation — https://github.com/xairy/linux-kernel-exploitation
- google/security-research (kernelCTF submissions) — https://github.com/google/security-research

## Tools — web, network, blue/red team, cloud (security subset of [[devopstoolbox]])
- Burp Suite — https://portswigger.net/burp
- Wireshark / tshark / termshark — https://github.com/wireshark/wireshark , tcpdump
- mitmproxy — https://github.com/mitmproxy/mitmproxy
- nmap / masscan, Scapy, bettercap, Ettercap, aircrack-ng
- Metasploit, BloodHound, Sliver / Mythic / Cobalt Strike
- GoPhish / Maltego / SET (SE & OSINT)
- Frida / objection / MobSF (mobile), Pacu / ScoutSuite (cloud)
- DVWA — https://github.com/digininja/DVWA
- Recon: OWASP Amass — https://github.com/owasp-amass/amass , subfinder — https://github.com/projectdiscovery/subfinder , httprobe — https://github.com/tomnomnom/httprobe , subzy — https://github.com/PentestPad/subzy
- Secrets/SAST: TruffleHog — https://github.com/trufflesecurity/trufflehog , Gitleaks — https://github.com/gitleaks/gitleaks , Semgrep — https://github.com/semgrep/semgrep , Checkov — https://github.com/bridgecrewio/checkov , CodeQL
- Containers/images: Trivy — https://github.com/aquasecurity/trivy , Clair — https://github.com/quay/clair
- Crypto/hygiene: age — https://github.com/FiloSottile/age , sops — https://github.com/getsops/sops , WireGuard, LUKS + YubiKey, restic / borg, podman / distrobox, BFG Repo-Cleaner — https://github.com/rtyley/bfg-repo-cleaner
- Detection/DFIR: Snort / Suricata / Zeek / Security Onion, Sigma, Splunk / Elastic, Volatility / Autopsy / KAPE / plaso, Velociraptor / GRR, OSQuery, MISP / OpenCTI / VirusTotal, YARA, REMnux / FLARE-VM, Any.run / Triage
- Purple/deception: Atomic Red Team / Caldera / Prelude, T-Pot / Cowrie / Thinkst Canary
- Lab: GNS3 / EVE-NG, VirtualBox / VMware, Docker

## Curated lists, repos, roadmaps & cheat sheets
- CTF Field Guide — https://trailofbits.github.io/ctf/
- awesome-reversing (HACKE-RC)
- Awesome-CTF / Awesome-Hacking
- browser-pwn repo
- MITRE ATT&CK (+ Navigator), Caldera, Atomic Red Team
- Sigma HQ (detection rules)
- HackTricks, PayloadsAllTheThings (web)
- OWASP Top 10 — https://owasp.org , OWASP ASVS, OWASP IoT Top 10, OWASP MASVS/MASTG, OWASP LLM Top 10, MITRE ATLAS (AI)
- SLSA / Sigstore / in-toto / OpenSSF Scorecard (supply chain)
- SANS DFIR posters (free)
- CVE.org — https://www.cve.org/ , vulnerability-databases — https://github.com/haxdoggy/vulnerability-databases
- Intezer ELF 101 series — https://intezer.com/blog/executable-and-linkable-format-101-part-1-sections-and-segments , part 2 https://intezer.com/blog/executable-linkable-format-101-part-2-symbols , part 3 https://intezer.com/blog/executable-and-linkable-format-101-part-3-relocations , part 4 https://intezer.com/blog/executable-linkable-format-101-part-4-dynamic-linking
- linux-insides syscall — https://0xax.gitbooks.io/linux-insides/content/SysCall/linux-syscall-4.html
- Linux process loading gist — https://gist.github.com/CMCDragonkai/10ab53654b2aa6ce55c11cfc5b2432a4
- Bash Scripting Tutorial — https://bash.cyberciti.biz/guide/Main_Page
- Linux man-pages — https://man7.org/linux/man-pages/ , credentials(7) — https://man7.org/linux/man-pages/man7/credentials.7.html
- GNU Bash expansions — https://www.gnu.org/software/bash/manual/html_node/Shell-Expansions.html
- mv/SUID privesc refs — https://ihsansencan.github.io/privilege-escalation/linux/binaries/mv.html , https://hacklido.com/blog/946-suid-exploits-uncovered-a-step-by-step-privilege-escalation-guide , https://medium.com/purplebox/linux-privilege-escalation-with-path-variable-suid-bit-6b9c492411de
- simulacra — https://github.com/Em3ritus/simulacra

## Papers, RFCs & protocol docs (from [[Intercepting Communication]] etc.)
- "Smashing the Stack for Fun and Profit" — Phrack 49
- "Setuid Demystified" — USENIX Security 2002 (Chen, Wagner, Dean)
- Tor design paper — https://svn.torproject.org/svn/projects/design-paper/tor-design.pdf (spec: https://spec.torproject.org/ , code: https://gitlab.torproject.org/tpo/core/tor , walkthrough: https://tpo.pages.torproject.net/core/doc/tor/ , Arti/Rust: https://gitlab.torproject.org/tpo/core/arti)
- RFCs: 791 (IPv4) https://www.rfc-editor.org/rfc/rfc791.html , 8200 (IPv6) https://www.rfc-editor.org/rfc/rfc8200.html , 9293 (TCP) https://www.rfc-editor.org/rfc/rfc9293.html , 826 (ARP) https://www.rfc-editor.org/rfc/rfc826.html ; also 1122, 6864, 4291, 4443, 4861, 7414, 7323, 2018, 5681, 6298, 5227, 5494, 2460
- IANA registries: protocol-numbers https://www.iana.org/assignments/protocol-numbers , tcp-parameters https://www.iana.org/assignments/tcp-parameters , arp-parameters https://www.iana.org/assignments/arp-parameters
- IPv4 refs: Wikipedia https://en.wikipedia.org/wiki/Internet_Protocol , NetworkLessons https://networklessons.com/ip-routing/ipv4-packet-header
- Linux net source: https://github.com/torvalds/linux/tree/master/net/ipv4 , ARP https://github.com/torvalds/linux/blob/master/net/ipv4/arp.c
- Python requests docs — https://requests.readthedocs.io/en/latest/
- LWN.net (kernel/security), lore.kernel.org (mailing-list archive)

## Blogs, writeups, people, YouTube & talks
- LiveOverflow (binary exploitation series)
- pwn.college lecture playlists
- John Hammond
- stacksmashing
- Gynvael Coldwind
- Google Project Zero blog
- SpecterOps blog
- Phrack magazine (esp. #49, #70)
- vx-underground (malware)
- 13cubed (DFIR, YouTube)
- Cyb3rMaddy — https://www.youtube.com/@Cyb3rMaddy
- DEF CON — https://defcon.org/ (YouTube https://www.youtube.com/@DEFCONConference)
- Security Fest — https://www.youtube.com/@securityfest
- colonelpanic.tech — https://colonelpanic.tech/
- Bellingcat toolkit / OSINT Framework
- Own blog to build — https://smalinux.github.io

## Communities
- pwn.college Discord
- CTF & bug-bounty Discords, local CTF team
- r/netsec, HTB/THM Discords
- UnknownCheats, Guided Hacking (game hacking)
- OpenMined (privacy)

## Conferences
- OffensiveCon, Black Hat EU, Recon, Nullcon, Hardwear.io
- DEF CON villages (Hardware / IoT / Car / Aerospace)
- Linux Security Summit, Linux Plumbers (BPF track), Kernel Recipes, FOSDEM
- Embedded Open Source Summit / ELC Europe
- Academic: USENIX Security, IEEE S&P, CCS, NDSS, CHES/TCHES, WOOT, CRYPTO, Eurocrypt, IACR ePrint, PETS
- TU Graz IAIK / Mastik (microarchitectural attacks), S4 (ICS)

## Career & market intel
- Vuln researcher salary/jobs — https://www.ziprecruiter.com/Jobs/Vulnerability-Research?version=next , https://www.ziprecruiter.com/Salaries/Vulnerability-Researcher-Salary
- 0-day market overview — https://forklog.com/en/the-zero-day-market-discover-sell-and-keep-quiet/
- Google now pays $250k KVM 0-day — https://www.bleepingcomputer.com/news/security/google-now-pays-250-000-for-kvm-zero-day-vulnerabilities/
- Google upping Linux bug bounty — https://www.techradar.com/news/google-is-upping-its-linux-bug-bounty-prize
- GhostLock kernel privesc — https://www.ghacks.net/2026/07/13/ai-agent-discovers-15-year-old-linux-kernel-privilege-escalation-bug-named-ghostlock/
- 15-year Linux flaw, 5-sec root — https://www.techtimes.com/articles/319914/20260708/public-exploit-turns-15-year-linux-kernel-flaw-5-second-root-attack.htm
- See [[This security path rewards obsession and dips your income first]]

## Adjacent path A — eBPF & cloud-native (faster salary)
- Books: Learning eBPF (Liz Rice) — https://www.amazon.com/dp/1098135121 , BPF Performance Tools (Gregg) — https://www.amazon.com/dp/0136554822 , Systems Performance 2e (Gregg) — https://www.amazon.com/dp/0136820158 , Container Security (Rice) — https://www.amazon.com/dp/1492056707 , Learning Go 2e (Bodner) — https://www.amazon.com/dp/1098139291 , Kubernetes in Action 2e — https://www.amazon.com/dp/1617297615 , Designing Data-Intensive Applications — https://www.amazon.com/dp/1449373321
- Repos/tutorials: eunomia-bpf/bpf-developer-tutorial, lizrice/learning-ebpf, libbpf/libbpf-bootstrap, xdp-project/xdp-tutorial, qmonnet/awesome-ebpf
- Docs: ebpf.io (+ /get-started , /slack), eBPF reference (Dylan Reimerink) — https://ebpf-docs.dylanreimerink.nl , Cilium BPF & XDP guide
- Blogs: brendangregg.com, Andrii Nakryiko — https://nakryiko.com , Cilium & Datadog eng blogs
- Labs/courses: Isovalent labs — https://labs.isovalent.com , KillerCoda, Kubernetes the Hard Way, killer.sh — https://killer.sh , KodeKloud, Ultimate Go (Ardan Labs)
- Projects: Cilium/Hubble/Tetragon, Falco, Inspektor Gadget, Kepler, Parca/Pyroscope/Pixie, Grafana Beyla/OBI, Aya (Rust)
- Talks: eBPF Summit, KubeCon eBPF/Cilium Day, Linux Plumbers BPF track
- Slack: eBPF — https://ebpf.io/slack , Cilium, CNCF (#tetragon #falco), Kubernetes
- Full detail: [[The eBPF roadmap reading list]], [[The cloud and eBPF roadmap from Linux to Kubernetes to eBPF to Go]]

## Adjacent path B — network security roadmap
- Full list in [[zettel - ROADMAP - network security]] (books, platforms, tools above already merged)

## Adjacent path C — electronics roadmap (foundations)
- Full playlists in [[Electronics roadmap runs from circuits to power electronics]]
- Circuits (Eng Karim): https://youtube.com/playlist?list=PLFM6wDAJoh--qm9UD3VatCBeGJaPGlLK6 , https://youtube.com/playlist?list=PLFM6wDAJoh-88gjdMrSJ28aPkw2-9uR6f
- Practical electronics (Walid Issa): https://youtube.com/playlist?list=PLww54WQ2wa5qVh1p8iPi7HspX7N9hbvbc
- Digital (Neso Academy): https://youtube.com/playlist?list=PLBlnK6fEyqRjMH3mWf6kwqiTbT798eAOm
- Razavi Electronics 1 & 2: https://youtube.com/playlist?list=PL7qUW0KPfsIIOPOKL84wK_Qj9N7gvJX6v , https://youtube.com/playlist?list=PL7qUW0KPfsIJ7RH4ga4kMENDgI_KWRy8v
- Power Electronics (Al-Sharif) 01–10: https://youtube.com/playlist?list=PLJqRpPcJQ_g0DlrD452NGJUOriJEXd2gH , https://youtube.com/playlist?list=PLJqRpPcJQ_g1NpCmJeihvSnwyES8MEhfd , https://youtube.com/playlist?list=PLJqRpPcJQ_g0UEOMJf0hWzkUQBA0XgpJz , https://youtube.com/playlist?list=PLJqRpPcJQ_g2vwDhFx_SdE_BauE6u2rMm , https://youtube.com/playlist?list=PLJqRpPcJQ_g2bT6mmCB6qlitLKwPRtwKf , https://youtube.com/playlist?list=PLJqRpPcJQ_g1RfueC0ENOo7-N9o_-24Tf , https://youtube.com/playlist?list=PLJqRpPcJQ_g3IiXx-jQ51KW5qHMOZ_wix , https://youtube.com/playlist?list=PLJqRpPcJQ_g0H61cbXll_BDkGScNzSsRO , https://youtube.com/playlist?list=PLJqRpPcJQ_g301b-N60ulk0D3gd2P_QjZ , https://youtube.com/playlist?list=PLJqRpPcJQ_g0yFfWeKEuzQ8uMGDY16RmX

## Not inlined (see source notes)
- [[devopstoolbox]] — 500+ DevOps/terminal tools + 207 YouTube videos (only security-relevant subset copied above)
- Personal career/immigration links (Austria RWR card, etc.) live in their own career notes, not here

## Links
- [[index]]
- [[PWN MOC]]
- [[Security MOC]]
- [[Reverse Engineering]]
- [[Binary Exploitation]]

## Source
- Aggregated from every note in this vault (zettel, inbox, canvases) on 2026-09-01
