---
created: 2026-09-16
tags: [ebpf, security]
---

## HN: eBPF for hacking — offensive uses and eBPF security research

- Source: HN Algolia API. Full history. Title search, hand-curated hard.
- In scope: eBPF rootkits/backdoors/malware (BPFDoor, TripleCross, Boopkit), keyloggers, kernel pwning and BPF verifier CVEs/exploits, bypassing/defeating eBPF security monitoring, TLS/traffic interception via eBPF, detecting malicious eBPF, eBPF forensics, threat models, attack-surface studies.
- Out of scope (cut by hand): plain observability/monitoring (Cilium, Pixie, Coroot, bpftrace tutorials, DTrace ports, K8s dashboards, AI-agent tracing).
- Related: [[hn list - re]], [[hn list - Corrupting Memory]].
- ⭐ = 200+ pts. ⭐⭐ = 500+ pts. ⭐⭐⭐ = 1000+ pts.

### ⭐ Important (200–499 pts) — 2 articles

How we found and fixed an eBPF Linux kernel vulnerability ⭐ (268 pts, 2024)
https://bughunters.google.com/blog/6303226026131456/a-deep-dive-into-cve-2023-2163-how-we-found-and-fixed-an-ebpf-linux-kernel-vulnerability
-
Intercepting Zoom's encrypted data with BPF ⭐ (265 pts, 2020)
https://confused.ai/posts/intercepting-zoom-tls-encryption-bpf-uprobes
-

### 100–199 pts — 6 articles

Detecting Monero Miners with Bpftrace (192 pts, 2022)
https://blog.px.dev/detect-monero-miners/
-
Capturing Linux SSL/TLS plaintext without a CA certificate using eBPF (183 pts, 2024)
https://github.com/gojue/ecapture
-
Kernel Pwning with eBPF: A Love Story (136 pts, 2021)
https://www.graplsecurity.com/post/kernel-pwning-with-ebpf-a-love-story
-
Learning eBPF Exploitation (120 pts, 2023)
https://stdnoerr.github.io/writeup/2022/08/21/eBPF-exploitation-(ft.-D-3CTF-d3bpf).html
-
When eBPF meets TLS. Defeating TLS encryption with eBPF tricks [pdf] (112 pts, 2022)
https://github.com/quarkslab/conf-presentations/blob/master/CanSecWest-2022/When%20eBPF%20meets%20TLS.pdf
-
Boopkit: eBPF backdoor (TCP) for spawning reverse shells (109 pts, 2022)
https://github.com/kris-nova/boopkit
-

### 50–99 pts — 6 articles

Spying on a Ruby process's memory allocations with eBPF (95 pts, 2018)
https://jvns.ca/blog/2018/01/31/spying-on-a-ruby-process-s-memory-allocations/
-
eBPF Offensive Capabilities – Get Ready for Next-Gen Malware (2023) (89 pts, 2024)
https://sysdig.com/blog/ebpf-offensive-capabilities/
-
eBPF for Cybersecurity – Part 1 (81 pts, 2023)
https://blog.cloudnativefolks.org/ebpf-for-cybersecurity-part-1
-
On Bypassing eBPF Security Monitoring (71 pts, 2022)
https://blog.doyensec.com/2022/10/11/ebpf-bypass-security-monitoring.html
-
PS4 5.05 BPF Double Free Kernel Exploit Writeup (61 pts, 2018)
https://github.com/Cryptogenic/Exploit-Writeups/blob/master/FreeBSD/PS4%205.05%20BPF%20Double%20Free%20Kernel%20Exploit%20Writeup.md
-
Defeating eBPF Uprobe Monitoring (60 pts, 2022)
https://blog.quarkslab.com/defeating-ebpf-uprobe-monitoring.html
-

### 20–49 pts — 1 articles

eBPF for Cybersecurity – Part 2 (29 pts, 2023)
https://blog.cloudnativefolks.org/ebpf-for-cybersecurity-part-2
-

### 10–19 pts — 5 articles

Vulnerabilities in the Linux BPF VM Lets Any Local User Run Kernel-Level Code (17 pts, 2021)
https://linuxreviews.org/Vulnerabilities_In_The_Linux_Kernels_BPF_Virtual_Machine_Lets_Any_Local_User_Run_Kernel-Level_Code
-
56% of PyPI malware runs at install, so I sandboxed pip with eBPF (13 pts, 2026)
https://news.ycombinator.com/item?id=47074155
-
Linux: Easy Keylogger with eBPF (2018) (13 pts, 2024)
http://arighi.blogspot.com/2018/12/linux-easy-keylogger-with-ebpf.html
-
BPFDoor – an active Chinese global surveillance tool (13 pts, 2022)
https://doublepulsar.com/bpfdoor-an-active-chinese-global-surveillance-tool-54b078f1a896?gi=82b009d3a9dd
-
A KeyLogger using eBPF written in Rust (11 pts, 2024)
https://github.com/pythops/tamanoir
-

### 3–9 pts — 31 articles

eBPF Security Threat Model [pdf] (9 pts, 2024)
https://github.com/ebpffoundation/publications/blob/main/2024/ControlPlane_eBPF_Security_Threat_Model.pdf
-
TripleCross: A Linux eBPF rootkit framework (9 pts, 2022)
https://github.com/h3xduck/TripleCross
-
Live-patching security vulns inside Linux kernel with eBPF Linux Security Module (9 pts, 2022)
https://blog.cloudflare.com/live-patch-security-vulnerabilities-with-ebpf-lsm/
-
eBPF: Block Linux Fileless Payload “Malware” Execution with BPF LSM (8 pts, 2022)
https://djalal.opendz.org/post/ebpf-block-linux-fileless-payload-execution-with-bpf-lsm/
-
BPFdoor: Stealthy Linux malware bypasses firewalls for remote access (8 pts, 2022)
https://www.bleepingcomputer.com/news/security/bpfdoor-stealthy-linux-malware-bypasses-firewalls-for-remote-access/
-
Linux eBPF bug gets root privileges on Ubuntu – Exploit released (7 pts, 2021)
https://www.bleepingcomputer.com/news/security/linux-ebpf-bug-gets-root-privileges-on-ubuntu-exploit-released/
-
BPF and Security (7 pts, 2023)
https://lwn.net/Articles/946389/
-
Show HN: Kairos – Open-Source eBPF Malware Analysis Framework (7 pts, 2024)
https://github.com/recontech404/Kairos
-
eBPF for Cybersecurity – Part 3 (7 pts, 2023)
https://blog.cloudnativefolks.org/ebpf-for-cybersecurity-part-3
-
Getting acquainted with eBPF as a security tool (6 pts, 2023)
https://edgebit.io/blog/acquainted-with-bpf/
-
eBPF Observability Tools Are Not Security Tools (6 pts, 2023)
https://www.brendangregg.com/blog/2023-04-28/ebpf-security-issues.html
-
Show HN: Poolnarc – catch hidden Linux cryptominers from two eBPF hooks (5 pts, 2026)
https://github.com/yeet-src/poolnarc
-
CVE-2020-8835: Linux kernel privilege escalation via improper eBPF verification (5 pts, 2020)
https://www.thezdi.com/blog/2020/4/8/cve-2020-8835-linux-kernel-privilege-escalation-via-improper-ebpf-program-verification
-
Show HN: Spliff – Correlating XDP and TLS via eBPF (Building a Linux EDR) (5 pts, 2026)
https://github.com/NoFear0411/spliff
-
Attacking and Securing eBPF Maps [video] (4 pts, 2026)
https://www.youtube.com/watch?v=HV_-XOSRlGs
-
Show HN: Azazel – Lightweight eBPF-based malware analysis sandbox using Docker (4 pts, 2026)
https://github.com/beelzebub-labs/azazel
-
Attacking and Securing eBPF Maps (4 pts, 2025)
https://bomfather.dev/blog/attacking-and-securing-ebpf-maps/
-
Bypassing eBPF-Based Security Enforcement Tools (4 pts, 2022)
https://www.form3.tech/engineering/content/bypassing-ebpf-tools
-
BPFdoor in Telecom Networks: Sleeper Cells in the Backbone (4 pts, 2026)
https://www.rapid7.com/blog/post/tr-bpfdoor-telecom-networks-sleeper-cells-threat-research-report/
-
BPF Security Auditing at Google (4 pts, 2021)
https://linuxplumbersconf.org/event/11/contributions/938/
-
eBPF: Capturing SSL/TLS Plain Text Using Uprobe (4 pts, 2024)
https://medium.com/@yunwei356/ebpf-practical-tutorial-capturing-ssl-tls-plain-text-using-uprobe-fccb010cfd64
-
eBPF rootkits and the Volatility blind spot in Linux memory forensics (3 pts, 2026)
https://andreafortuna.org/2026/05/27/ebpf-rootkits/
-
Microsoft Is Back to Working on "Hornet" Security for eBPF Programs on Linux (3 pts, 2025)
https://www.phoronix.com/news/Microsoft-Hornet-For-Linux-2025
-
Ransomware Detection Using Machine Learning with eBPF for Linux (3 pts, 2024)
https://github.com/TomasPhilippart/ebpfangel
-
Cross Container Attacks: The Bewildered eBPF on Clouds (2023) [pdf] (3 pts, 2024)
https://www.usenix.org/system/files/usenixsecurity23-he.pdf
-
Pitfalls of relying on eBPF for security monitoring (3 pts, 2023)
https://blog.trailofbits.com/2023/09/25/pitfalls-of-relying-on-ebpf-for-security-monitoring-and-some-solutions/
-
VED-eBPF: Kernel Exploit and Rootkit Detection Using eBPF (3 pts, 2023)
https://github.com/hardenedvault/ved-ebpf
-
eBPF’s Rollercoaster of Pwn: An Overview of CVE-2020-8835 (3 pts, 2020)
https://capsule8.com/blog/ebpfs-rollercoaster-of-pwn-an-overview-of-cve-2020-8835/
-
An exploration the archeological roots of the BPFDoor Linux malware (3 pts, 2025)
https://haxrob.net/bpfdoor-past-and-present-part-1/
-
The Calico EBPF Dataplane (3 pts, 2020)
https://www.projectcalico.org/introducing-the-calico-ebpf-dataplane/
-
Bpfsnitch: Open-Source eBPF-Based Real-Time Monitoring for Linux and Kubernetes (3 pts, 2024)
https://github.com/nullswan/bpfsnitch
-

### 0–2 pts (no traction) — 22 articles

Protecting Against eBPF Rootkits (2 pts, 2026)
https://substack.bomfather.dev/p/protecting-against-ebpf-rootkits
-
Kloak: Kernel-space secret injection via eBPF on Kubernetes (2 pts, 2026)
https://a-cup-of.coffee/blog/kloak/
-
Hardening eBPF for Runtime Security: Lessons from Datadog Workload Protection (2 pts, 2026)
https://www.datadoghq.com/blog/engineering/ebpf-workload-protection-lessons/
-
eBPF Rootkit (2 pts, 2025)
https://www.synacktiv.com/en/publications/linkpro-ebpf-rootkit-analysis
-
⎈ Kubernetes Goat – Cilium Tetragon: eBPF-Based Runtime Security Scenario (2 pts, 2023)
https://madhuakula.com/kubernetes-goat/docs/scenarios/scenario-21/ebpf-runtime-security-monitoring-and-detection-in-kubernetes-cluster-using-cilium-tetragon/welcome/
-
Bypassing Linux kernel BPF protection to mount speculative execution attacks (2 pts, 2021)
https://seclists.org/oss-sec/2021/q2/226
-
BPF security issues in Debian (2 pts, 2017)
https://www.decadent.org.uk/ben/blog/bpf-security-issues-in-debian.html
-
PlayStation4 4.55 BPF Race Condition Kernel Exploit Writeup (2 pts, 2018)
https://github.com/Cryptogenic/Exploit-Writeups/blob/master/FreeBSD/PS4%204.55%20BPF%20Race%20Condition%20Kernel%20Exploit%20Writeup.md
-
Monitor Linux syscalls in real time for threat detection with bpftrace (2 pts, 2026)
https://github.com/ringzeropirate/ringzeropirate.github.io/tree/main/scripts/Ebpf/Primo%20Hook
-
BPF for Security – and Chaos – In Kubernetes (2 pts, 2019)
https://lwn.net/SubscriberLink/790684/276a8f71f6c243ad/
-
Ecapture: Capture and Decode TLS with eBPF (2 pts, 2022)
https://github.com/ehids/ecapture
-
Comparing SystemTap and Bpftrace (2 pts, 2021)
https://lwn.net/Articles/852112/
-
Show HN: Inner Warden – Self-Defending Security Agent: eBPF+LSM+XDP (Rust, 29MB) (2 pts, 2026)
https://github.com/InnerWarden/innerwarden/
-
Big Strings in Bpftrace (2 pts, 2024)
https://dxuuu.xyz/big-strings.html
-
RuntimeGuard, ransomware detection for Linux using eBPF (1 pts, 2026)
https://runtimeguard.io
-
Programmable System Call Security with eBPF (1 pts, 2023)
https://arxiv.org/abs/2302.10366
-
SSH Probe: monitor and protect SSH sessions with eBPF (1 pts, 2022)
https://github.com/Gui774ume/ssh-probe
-
Analyzing the Security of eBPF Maps (1 pts, 2021)
https://www.crowdstrike.com/blog/analyzing-the-security-of-ebpf-maps/
-
BPF Memory Forensics with Volatility 3 (1 pts, 2024)
https://lolcads.github.io/posts/2023/12/bpf_memory_forensics_with_volatility3/
-
Kernel attack surface reduction with network flow dissectors in BPF (1 pts, 2018)
https://lwn.net/SubscriberLink/764200/b8014286e1cb8765/
-
Show HN: Telos – eBPF/LSM Runtime Security for Autonomous AI Agents (1 pts, 2026)
https://github.com/nevinshine/telos-runtime
-
Show HN: Busted – eBPF tool that monitors what your AI agents send (1 pts, 2026)
https://github.com/barakber/busted
-

