---
created: 2026-09-16
tags: [security, exploit, writeup]
---

## HN: CVE / exploit writeups — how people actually hacked something

- Source: HN Algolia API. Full history. Title search across many queries (writeup, how I hacked/exploited/pwned, exploiting CVE, pwning, RCE, privilege escalation, sandbox escape, jailbreak, account takeover, auth bypass, SQL injection, 0-day, use-after-free, ...).
- In scope: first-person / narrative technical writeups that show the ACTUAL FLOW of hacking a specific target — software, web app, hardware, IoT, vehicle, game, console, protocol, chip, firmware, network, account — plus specific-CVE exploitation writeups.
- Out of scope (cut by hand + filter): breach/incident news, arrests / lawsuits / policy / law, nation-state & APT reporting, tool/library/product releases, Have I Been Pwned service posts, LLM prompt "jailbreaks", life/body/brain/dev-productivity "hacking", plain jailbreak release announcements, bare CVE-DB / vendor-advisory links with no walkthrough.
- No points shown (as requested). Grouped by year, newest first.
- Related: [[hn list - re]], [[hn list - ebpf for hacking]], [[hn list - ELF]], [[hn list - rust attack]], [[hn list - Corrupting Memory]].
- LEGEND (added 2026-09-16):
    - `~~struck link~~` = DEAD link (server returned 404/410, page gone/moved). Checked with curl.
    - ⭐⭐⭐ = very good for BEGINNERS (clear story, explains concepts as it goes).
    - ⭐⭐ = solid intermediate writeup (assumes some security background).
    - ⭐ = deep / high-quality security RESEARCH (advanced, hard for a beginner).
    - How rated: 2026 section rated by READING each writeup. Other years rated by SOURCE reputation (Project Zero, PortSwigger, ZDI, Synacktiv... = deep). News sites + most `medium.com` left unrated on purpose (quality varies / not real writeups).
    - GitHub writeup collections + references are at the BOTTOM of this note.

### 2026 — 193 writeups

"Half-Day": 0-Day in the Age of AI
https://margin.re/2026/08/introducing-the-half-day-0-day-in-the-age-of-ai/
-
$250K+ XSS in Meta Conversion API Leading to Zero-Click Account Takeover
https://ysamm.com/uncategorized/2025/01/13/capig-xss.html ⭐⭐
-
0-Click Remote Code Execution in OpenClaw with GPT5.2 via Gmail Hook
~~https://veganmosfet.github.io/2026/02/02/openclaw_mail_rce.html~~
-
2-Click Remote Code Execution in Meccha Chameleon
https://khaelkugler.com/blogs/meccha_chameleon.html ⭐⭐
-
A 0-click exploit chain for the Pixel 10
https://projectzero.google/2026/05/pixel-10-exploit.html ⭐
-
A 0-click exploit chain for the Pixel 9 Part 1: Decoding Dolby
https://projectzero.google/2026/01/pixel-0-click-part-1.html ⭐
-
A 27-Year-Old Authentication Bypass in OpenBSD's PPP Stack
https://blog.argus-systems.ai/blog/openbsd-pap-27-year-auth-bypass.html ⭐⭐
-
A Cursor Sandbox Escape Shows Why AI Agents Need Kernel Boundaries
https://medium.com/@Koukyosyumei/a-cursor-sandbox-escape-shows-why-ai-agents-need-kernel-boundaries-281efdb56396
-
A flaky test exposed a Redis client use-after-free
https://buildkite.engineering/how-a-flaky-test-exposed-a-redis-use-after-free/ ⭐⭐
-
A game about programming exposed players to remote code execution
https://outsidetheasylum.blog/screeps/ ⭐⭐⭐
-
A Race Within a Race: Exploiting CVE-2025-38617 in Linux Packet Sockets
https://blog.calif.io/p/a-race-within-a-race-exploiting-cve ⭐
-
AdBreak – Jailbreaking the Kindle
https://kindlemodding.org/jailbreaking/AdBreak/
-
Administrative FortiCloud SSO authentication bypass
https://fortiguard.fortinet.com/psirt/FG-IR-26-060
-
Agents are not thinking: a behavioral study of pwning sonnet
https://technoyoda.github.io/pwning-claude.html ⭐⭐
-
AI Agent ransomware attack through Langflow instance by exploiting CVE-2025-3248
https://www.sysdig.com/blog/jadepuffer-agentic-ransomware-for-automated-database-extortion ⭐⭐
-
AI Finds Vulnerability Chain Leading to Account Takeover and Leaked Bookings
~~https://www.gecko.security/blog/caldotcom-broken-access-controls~~
-
AppFlowy Authenticated SQL Injection
https://projectblack.io/blog/appflowy-authenticated-sql-injection/ ⭐⭐
-
Arbitrary file read and remote code execution in Active Storage
https://discuss.rubyonrails.org/t/cve-2026-66066-possible-arbitrary-file-read-and-remote-code-execution-in-active-storage-variant-processing/91432
-
AST-filtered eval() is not a sandbox: Severity 10 CVE-2026-26030, and others
https://daridor.blog/2026/03/05/ast-filtered-eval-is-not-a-sandbox-remote-code-execution-in-microsoft-semantic-kernel-and-the-ai-infrastructure-pattern-behind-it/ ⭐⭐
-
Authentication Bypass in Cisco Catalyst SD-WAN Controller
https://www.rapid7.com/blog/post/ve-cve-2026-20182-critical-authentication-bypass-cisco-catalyst-sd-wan-controller-fixed/ ⭐⭐
-
Authentication bypass in pac4j-JWT using only the RSA public key
https://www.codeant.ai/security-research/pac4j-jwt-authentication-bypass-public-key ⭐⭐
-
Backblaze Account Takeover
https://fyr.io/post/backblaze-account-takeover ⭐⭐⭐
-
Backstage access: an unauthenticated SQL injection in Front Gate Tickets
https://ian.sh/frontgate ⭐⭐
-
BlackIceHQ – detecting account takeover from login sequences
https://www.blackicehq.com/
-
BlueHammer – Windows 0day LPE
~~https://github.com/Nightmare-Eclipse/BlueHammer~~
-
Breaking LiteLLM: From Low-Privilege User to Admin and RCE
https://www.obsidiansecurity.com/blog/litellm-privilege-escalation-rce ⭐⭐
-
BrokenClaw Part 3: Remote Code Execution in OpenClaw via Email Again
https://veganmosfet.codeberg.page/posts/2026-03-03-openclaw3/ ⭐⭐
-
Chaining LLM and web bugs to Admin
https://blog.quarkslab.com/from-prompt-to-pwned-chaining-llm-and-web-bugs-to-admin.html ⭐
-
Chrome adopts what may be the best protection yet against account takeovers
https://arstechnica.com/security/2026/08/chrome-adopts-what-may-be-the-best-protection-yet-against-account-takeovers/
-
CIFSswitch – local privilege escalation vulnerability
https://heyitsas.im/posts/cifswitch/ ⭐
-
Cisco Email Gateway SQL Injection Yields Unauthenticated Root (CVSS 9.8)
https://sec.cloudapps.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-esa-inj-2bLVGmhX
-
Claude Code CVE-2026-39861:sandbox escape via symlink
https://github.com/advisories/GHSA-vp62-r36r-9xqp ⭐⭐
-
Claude Code RCE: Exploiting Deeplink Handlers via Settings Injection
https://0day.click/recipe/2026-05-12-cc-rce/ ⭐⭐
-
Clawdbot Control Vulnerability Exposes AI System to Remote Code Execution
https://thecyberedition.com/clawdbot-control-vulnerability-exposes-ai-system-to-remote-code-execution/
-
Conditional Privilege Escalation Synology DSM 7.3.2
https://thecontractor.io/synology-dsm-7-3-2/ ⭐⭐
-
Copy-Fail: Linux Privilege Escalation
https://copy.fail/#affected ⭐
-
CopyFail CVE-2026-31431 mitigation with open source tool

-
CPanel and WHM Authentication Bypass – CVE-2026-41940
https://labs.watchtowr.com/the-internet-is-falling-down-falling-down-falling-down-cpanel-whm-authentication-bypass-cve-2026-41940/ ⭐
-
CrackArmor: Critical AppArmor Flaws Enable Local Privilege Escalation to Root
https://blog.qualys.com/vulnerabilities-threat-research/2026/03/12/crackarmor-critical-apparmor-flaws-enable-local-privilege-escalation-to-root ⭐⭐
-
Critical auth bypass vulnerability in phpBB
https://www.aikido.dev/blog/phpbb-authentication-bypass-rce ⭐⭐⭐
-
CrowdStrike Falcon 0day Privilege Escalation Vulnerability
https://github.com/MSNightmare/FalconFlank ⭐⭐
-
Cursor 0day: When Full Disclosure Becomes the Only Protection Left
https://mindgard.ai/blog/cursor-0day-when-full-disclosure-becomes-the-only-protection-left ⭐⭐⭐
-
Cursor, Codex, Gemini CLI, Antigravity hit by sandbox escapes
https://www.bleepingcomputer.com/news/security/cursor-codex-gemini-cli-antigravity-hit-by-sandbox-escapes/
-
CVE-2025-67736 FreePBX Authenticated SQL Injection Leads to RCE
https://theyhack.me/CVE-2025-67736-FreePBX-Authenticated-SQL-Injection/ ⭐⭐
-
CVE-2026-18963 – Keycloak Reset-Credentials Bypass → Account Takeover
https://github.com/Red-Darkin/CVE-2026-18963-keycloak ⭐⭐
-
CVE-2026-22709: Critical Sandbox Escape in Vm2 Enables Arbitrary Code Execution
https://www.endorlabs.com/learn/cve-2026-22709-critical-sandbox-escape-in-vm2-enables-arbitrary-code-execution ⭐⭐
-
CVE-2026-23111: exploiting and detecting a nftables UAF born from a security fix
https://medium.com/@miggo-engineering/detecting-the-nftables-catchall-use-after-free-cve-2026-23111-by-thinking-outside-the-box-2227654d5acf
-
CVE-2026-23993: JWT authentication bypass in HarbourJwt via "unknown alg"
https://pentesterlab.com/blog/cve-2026-23993-harbourjwt-unknown-alg-jwt-bypass ⭐⭐
-
CVE-2026-31525: Linux Kernel Privilege Escalation Flaw
https://www.sentinelone.com/vulnerability-database/cve-2026-31525/ ⭐
-
CVE-2026-3888: Important Snap Flaw Enables Local Privilege Escalation to Root
https://blog.qualys.com/vulnerabilities-threat-research/2026/03/17/cve-2026-3888-important-snap-flaw-enables-local-privilege-escalation-to-root ⭐⭐
-
CVE-2026-40369: Twelve Bytes to Escape the Browser Sandbox
https://voidsec.com/cve-2026-40369-browser-sandbox-escape/ ⭐
-
CVE-2026-42530 – Nginx HTTP3/QUIC Use-After-Free
https://my.f5.com/manage/s/article/K000161616
-
CVE-2026-49176 Exploit Development: WalletService to System
https://davidcarliez.github.io/blog/cve-2026-49176-walletservice-to-system/ ⭐
-
CVE-2026-53361 AF_Unix GC vs. MSG_PEEK use-after-free container escape
https://github.com/sgkdev/bad_garbage ⭐⭐
-
CVE-2026-59208: Cross-Issuer Account Takeover in n8n
https://www.strix.ai/blog/n8n-cross-issuer-account-takeover ⭐⭐
-
CVE-2026-65400: Apple macOS Screen Sharing authentication bypass
https://support.apple.com/en-us/148170
-
Cyberstalkers Are Exploiting Chrome Sync to Spy on Victims
https://www.certosoftware.com/insights/cyberstalkers-exploiting-chrome-sync-to-spy/ ⭐⭐⭐
-
DarkSword Exploit Chain, Unpackaged
https://github.com/DarKDevz/DarKSward ⭐⭐
-
DarkSword: iOS Exploit Chain Adopted by Multiple Threat Actors
https://cloud.google.com/blog/topics/threat-intelligence/darksword-ios-exploit-chain ⭐
-
Deepsec Reconstructed the Pwn2Own Microsoft Edge Sandbox Escape
https://www.darknavy.org/blog/patch_in_exploit_out_how_deepsec_reconstructed_the_pwn2own_microsoft_edge_sandbox_escape/ ⭐
-
DeepSeek v4.1 Flash Is Now Our Best Hacking Model
https://enclave.ai/blog/deepseek-v41-flash-is-now-our-best-hacking-model ⭐⭐
-
Dirty Frag Linux kernel local privilege escalation vulnerability mitigations
https://ubuntu.com/blog/dirty-frag-linux-vulnerability-fixes-available ⭐⭐
-
Dirty Frag: Ongoing Linux Kernel Privilege Escalation Vulnerability Since 2017
https://www.wiz.io/blog/dirty-frag-linux-kernel-local-privilege-escalation-via-esp-and-rxrpc ⭐⭐
-
Dolibarr 23.0.0: PHP eval() whitelist bypass → RCE via two bugs (CVE-2026-22666)
https://jivasecurity.com/writeups/dolibarr-remote-code-execution-cve-2026-22666 ⭐⭐
-
Drone Hacking Part 1: Dumping Firmware and Bruteforcing ECC
https://neodyme.io/en/blog/drone_hacking_part_1/ ⭐
-
ESP32 Bit Pirate Hardware Hacking Kit with Web Tools That Speaks Every Protocol
https://geo-tp.github.io/ESP32-Bit-Pirate/
-
ESP32 Bit Pirate, a Hardware Hacking Tool with WebCLI That Speaks Every Protocol
https://github.com/geo-tp/ESP32-Bit-Pirate ⭐⭐
-
Exploiting a 32-year-old buffer overflow in GNU telnetd (CVE-2026-32746)
https://www.striga.ai/research/pre-auth-rce-in-gnu-inetutils-telnetd ⭐⭐
-
Exploiting deobfuscation in ImunifyAV for code execution (CVE-2025-65530)
https://blog.popovs.lv/imunifyav-code-execution/ ⭐⭐
-
FatGid: FreeBSD 14.x kernel local privilege escalation
https://fatgid.io/ ⭐
-
Flag turned Microsoft 365 apps into account takeover pipeline
https://enclave.ai/blog/flagleft-microsoft-365-android-forgotten-flag-account-takeover ⭐⭐⭐
-
Flatpak: Complete Sandbox Escape
https://github.com/flatpak/flatpak/security/advisories/GHSA-cc2q-qc34-jprg ⭐⭐
-
Fragnesia Made Public as Latest Linux Local Privilege Escalation Vulnerability
https://www.phoronix.com/news/Linux-Fragnesia
-
Fragnesia: Linux kernel local privilege escalation via ESP-in-TCP
https://www.wiz.io/blog/fragnesia-linux-kernel-local-privilege-escalation-via-esp-in-tcp ⭐⭐
-
Free Exploit Development CTFs and Walkthroughs Based on Real CVEs
https://zeropath.com/blog/zeropath-exploit-development-ctfs ⭐⭐
-
Full Disclosure: A project is publishing full analyses of AI-discovered 0-days
https://seclists.org/fulldisclosure/2026/Jul/29 ⭐⭐
-
Full Writeup of the Windows GDID
https://github.com/SmtimesIWndr/gdid-reversal ⭐⭐
-
General Graboids: Worms and Remote Code Execution in Command and Conquer
https://www.atredis.com/blog/2026/1/26/generals ⭐⭐
-
Ghost CMS SQL injection flaw exploited in large-scale ClickFix campaign
https://www.bleepingcomputer.com/news/security/ghost-cms-sql-injection-flaw-exploited-in-large-scale-clickfix-campaign/
-
GPT-5.6 Sol Ultra built a full Chrome V8 exploit chain from patch commits
https://www.hacktron.ai/blog/watching-gpt-55-sol-ultra-write-a-chrome-exploit-exploit-development-as-we-know-it-is-over ⭐
-
GPUBreach: Privilege Escalation Attacks on GPUs Using Rowhammer
https://arxiv.org/abs/2605.03812
-
Hacking a Casio F-91W digital watch (2023)
https://medium.com/infosec-watchtower/how-i-hacked-casio-f-91w-digital-watch-892bd519bd15
-
Hacking AI customer service agents
https://www.intigriti.com/researchers/blog/hacking-tools/hacking-ai-customer-service-agents ⭐⭐
-
Hacking an old Kindle to display bus arrival times
https://www.mariannefeng.com/portfolio/kindle/
-
Hacking for Defense Stanford 2026 – Lessons Learned Presentations
https://steveblank.com/2026/06/08/g-for-defense-stanford-2026-lessons-learned-presentations/
-
Hacking IKEA Furniture
https://greenlightning.eu/diy/hacking-ikea-furniture/
-
Hacking Moltbook
https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys ⭐⭐
-
Hacking Super Mario 64 using covering spaces
https://happel.ai/posts/covering-spaces-geometries-visualized/
-
Hacking Tauri for Designer
https://yujonglee.com/blog/hacking-tauri-for-designer/
-
Hacking Tesla, so the doors open mechanically in an emergency
https://www.thestar.com/news/canada/i-couldnt-live-with-the-idea-of-my-kids-trapped-in-my-tesla-heres-how-i-hacked-it-so-the-doors-open-in-an-emergency/article_30a9ba0a-8beb-4185-9c1d-726e5c2fba47.html
-
Hacking the last Z80 computer – FOSDEM 2026 [video]
https://fosdem.org/2026/schedule/event/FEHLHY-hacking_the_last_z80_computer_ever_made/
-
Hacking with Claude on a $27 smart watch
https://www.mikekasberg.com/blog/2026/08/19/hacking-with-claude-on-a-27-smart-watch.html
-
How a Texas student blew the whistle on a rogue AI hacking attempt
https://www.reuters.com/world/how-texas-student-blew-whistle-rogue-ai-hacking-attempt-2026-08-20/
-
How TypeScript devs can avoid getting pwned by malicious packages
https://builtbystef.com/blog/supply-chain-security/ ⭐⭐
-
How we found exploitable security flaws in OpenClaw that manual review missed
https://www.cubic.dev/blog/we-found-and-fixed-critical-security-vulnerabilities-in-openclaw ⭐⭐
-
How we hacked McKinsey's AI platform
https://codewall.ai/blog/how-we-hacked-mckinseys-ai-platform ⭐⭐
-
How We Hacked Our Way to Free 4.0s and Took Over a uWaterloo & UofT Grading Tool
https://xtra.sh/blog/markus/ ⭐⭐
-
Hugging Face is billing OpenAI $100M for hacking it
https://thenextweb.com/news/hugging-face-delangue-openai-100m-compute-traces-demand
-
Human Approval Is a Privilege Escalation Path
~~https://corebasehq.com/blog/human-approval-is-a-privilege-escalation-path~~
-
Hundreds of GitHub Python Repos Compromised via Account Takeover and Force-Push
https://www.stepsecurity.io/blog/forcememo-hundreds-of-github-python-repos-compromised-via-account-takeover-and-force-push ⭐⭐
-
I got into YC Startup School by hacking it
https://obaid.wtf/jotbook/2026/07/18/how-i-got-into-yc-by-hacking-it.html ⭐⭐
-
I Got Pwned by a Malicious AI Plugin: A Technical Breakdown

-
I Stopped Reading Fiction and How I Found It Again
https://leroy.works/articles/why-i-stopped-reading-fiction-and-how-i-found-it-again/
-
Instagram account takeover exploit via support chatbot prompt injection (fixed)
https://twitter.com/weezerOSINT/status/2061223556994965643
-
Israel Spent Years Hacking Tehran Traffic Cameras to Track Khamenei
https://thedefensepost.com/2026/03/04/israel-traffic-cameras-track-khamenei/
-
iStat Menus < 7.20.5 local privilege escalation
https://markuta.com/istat-menus-local-privilege-escalation/ ⭐⭐
-
Jailbreaking a robot vacuum to run Tailscale and Valetudo
https://tailscale.com/blog/tailscale-sucks ⭐⭐
-
Keycloak Unauthenticated Account Takeover
https://ccb.belgium.be/advisories/warning-critical-account-takeover-password-reset-flow-red-hat-build-keycloack-patch ⭐⭐
-
Keycloak unauthenticated account takeover via reset-credentials flow bypass
https://github.com/keycloak/keycloak/issues/51833 ⭐⭐
-
Kimi K3 Sandbox Escape Exposes Weak Links in Agent Testing
https://ai-updates.net/kimi-k3-sandbox-escape-agent-testing/
-
Kubernetes Remote Code Execution via Nodes/Proxy Get Permission
https://grahamhelton.com/blog/nodes-proxy-rce ⭐⭐
-
Libfuse io_uring use-after-free and NULL deref (CVE-2026-33150, CVE-2026-33179)
https://github.com/libfuse/libfuse/security/advisories/GHSA-qxv7-xrc2-qmfx ⭐⭐
-
Linux Bridge STP Timer Use-After-Free
https://ssd-disclosure.com/linux-bridge-stp-timer-use-after-free/ ⭐
-
LiteSpeed CPanel Plugin with Root Privilege Escalation Under Active Exploitation
https://haltingproblems.com/analysis/litespeed-cpanel-plugin-cve-2026-48172/ ⭐⭐
-
LLM Neuroanatomy II: Modern LLM Hacking and Hints of a Universal Language?
https://dnhkng.github.io/posts/rys-ii/
-
LLMs Feed Your Re Habit: Following the Use-After-Free Trail in CLFS
https://clearbluejar.github.io/posts/how-llms-feed-your-re-habit-following-the-uaf-trail-in-clfs/ ⭐
-
Local privilege escalation in Lix and Nix
https://discourse.nixos.org/t/security-advisory-local-privilege-escalation-in-lix-and-nix/77407 ⭐⭐
-
Local privilege escalation via execve()
https://www.freebsd.org/security/advisories/FreeBSD-SA-26:13.exec.asc ⭐⭐
-
Local Privilege Escalation via the NetBird Client Daemon IPC
https://netbird.io/knowledge-hub/security-advisory-daemon-ipc-local-privilege-escalation ⭐⭐
-
Local Root Privilege Escalation and Credential Disclosure in the Linux Kernel
https://blog.qualys.com/vulnerabilities-threat-research/2026/05/20/cve-2026-46333-local-root-privilege-escalation-and-credential-disclosure-in-the-linux-kernel-ptrace-path ⭐⭐
-
macOS Stats: Local Privilege Escalation via Exposed XPC Method
https://github.com/exelban/stats/security/advisories/GHSA-qwhf-px96-7f6v ⭐⭐
-
Malicious Chrome Extension Steals MEXC API Keys for Account Takeover
https://socket.dev/blog/malicious-chrome-extension-steals-mexc-api-keys ⭐⭐
-
Meta Fixes Instagram AI Flaw Used in Account Takeovers
https://sqmagazine.co.uk/meta-fixes-instagram-ai-flaw-account-takeovers/
-
Metabase: Unauthenticated SQL injection in password reset (CVSS 10.0)
https://github.com/metabase/metabase/security/advisories/GHSA-vwf4-m7j8-wcjf ⭐⭐
-
METR Report on OpenAI / Hugging Face Hacking Incident
https://metr.org/blog/2026-08-26-openai-hugging-face-incident-investigation/#core-takeaways-about-this-incident ⭐
-
Mitigated API authentication bypass for python.org download metadata
https://blog.python.org/2026/06/mitigated-api-bypass-for-download-metadata-python-dot-org/ ⭐⭐
-
Mongoose: Preauth RCE and MTLS Bypass on Devices
https://www.evilsocket.net/2026/04/02/Mongoose-Preauth-Remote-Code-Execution-and-mTLS-Bypass/ ⭐
-
MS Silently Patched a CVSS 9.9 Privilege Escalation in Azure Backup for AKS
https://olearysec.com/research/azure-backup-aks-silent-patch/ ⭐⭐
-
My SoC Analyst Writeup – Support by star, thanks guys
https://github.com/ogtamimi/SOC-Analyst-WriteUp-LetsDefend.io ⭐⭐
-
New Sandbox Escape Affecting Popular Node.js Sandbox Library Vm2
https://semgrep.dev/blog/2026/calling-back-to-vm2-and-escaping-sandbox/ ⭐⭐
-
New Windows Privilege Escalation
https://www.bleepingcomputer.com/news/security/disgruntled-researcher-leaks-bluehammer-windows-zero-day-exploit/
-
Nginx Rift: Remote Code Execution via an 18-Year-Old Vulnerability
https://depthfirst.com/research/nginx-rift-achieving-nginx-rce-via-an-18-year-old-vulnerability ⭐
-
Ni8mare – Unauthenticated Remote Code Execution in N8n
https://www.cyera.com/research-labs/ni8mare-unauthenticated-remote-code-execution-in-n8n-cve-2026-21858 ⭐⭐⭐
-
Nice2Meet: We Turned Teams Mobile Meetings into a Silent Account Takeover
https://enclave.ai/blog/nice2meet-we-turned-teams-mobile-meetings-into-a-silent-account-takeover ⭐⭐
-
Nix: Privilege escalation via symlink following during FOD output registration
https://discourse.nixos.org/t/nix-security-advisory-privilege-escalation-via-symlink-following-during-fod-output-registration/76900 ⭐⭐
-
NocoBase sandbox escape to root RCE via console object prototype chain
https://anonhaven.com/en/news/ocobase-sandbox-escape-rce-cve-2026-34156/ ⭐⭐
-
Off By: Exploiting a Use-After-Free in the Linux Kernel
https://blog.exodusintel.com/2026/06/08/off-by-exploiting-a-use-after-free-in-the-linux-kernel/ ⭐
-
One Click Account Takeover in Granola AI Notetaker
https://www.strix.ai/blog/granola ⭐⭐
-
One link-click Google account takeover
https://weirdmachine64.github.io/research/google-oauth-device-code-hijacking.html ⭐⭐
-
OpenBSD has a use-after-free allowing local privilege escalation to root
https://nvd.nist.gov/vuln/detail/cve-2026-57589
-
phpBB Authentication Bypass
https://pentest-tools.com/research/phpbb-authentication-bypass ⭐⭐
-
Possible arbitrary file read and remote code execution in Active Storage
https://github.com/rails/rails/security/advisories/GHSA-xr9x-r78c-5hrm ⭐⭐
-
Practical Advice to Avoid Getting Pwned by a State Actor Using AI
https://www.choosingvictory.com/p/practical-advice-to-avoid-getting
-
Pre-auth SQL injection in WordPress Core
https://github.com/47Cid/wp2shell-lab ⭐⭐
-
Privilege Escalation Attacks on GPUs Using Rowhammer
https://gpubreach.ca/ ⭐
-
Privilege Escalation in AWS Elastic Kubernetes Service (2023)
https://blog.calif.io/p/privilege-escalation-in-eks ⭐⭐
-
Pwnd Blaster: Hacking your PC using your speaker without ever touching it
https://blog.nns.ee/2026/06/03/katana-badusb/ ⭐
-
Pwning AWS Bedrock AgentCore's AI Code Interpreter
https://www.beyondtrust.com/blog/entry/pwning-aws-agentcore-code-interpreter
-
Pwning Claude Code in 8 Different Ways
https://flatt.tech/research/posts/pwning-claude-code-in-8-different-ways/ ⭐⭐
-
Pwning NetBSD-Aarch64
https://www.feyrer.de/NetBSD/bx/blosxom.cgi/nb_20260308_1932.html ⭐⭐
-
Pwning OpenClaw and Other Agents with Prompt Laundering
https://ironcorelabs.com/blog/2026/prompt-laundering/ ⭐⭐
-
Pwning OpenClaw in 50 Messages
https://www.runlayer.com/blog/pwning-openclaw-in-50-messages ⭐⭐⭐
-
Pwning Supercomputers – A 20yo vulnerability in Munge
https://blog.lexfo.fr/munge-heap-buffer-overflow.html ⭐
-
Pwning V8 with Turbofan Type Confusion (CVE-2025-2135)
https://www.zellic.io/blog/pwning-v8ctf/ ⭐
-
Python CLI Scripts That Solve Problems (Write-Up)
https://write.as/0tsh5vbj4nj0z
-
Qualcomm exploit chain brings bootloader unlocking freedom to Android flagships
https://www.androidauthority.com/qualcomm-snapdragon-8-elite-gbl-exploit-bootloader-unlock-3648651/
-
RefluXFS: A Linux Kernel Local Privilege Escalation to Root in XFS
https://blog.qualys.com/vulnerabilities-threat-research/2026/07/22/refluxfs-a-linux-kernel-local-privilege-escalation-to-root-in-xfs-cve-2026-64600 ⭐⭐
-
Remote Code Execution in Libssh2
https://vuldb.com/cve/CVE-2026-55200
-
Remote Code Execution Vulnerability in Fooocus
https://mrbruh.com/fooocus/ ⭐⭐
-
Reverse engineering Claude's CVE-2026-2796 exploit
https://red.anthropic.com/2026/exploit/ ⭐
-
RF hacking my cloud-controlled ceiling fan
https://samwilkinson.io/posts/2026-06-24-rf-hacking-dreo ⭐⭐
-
RoguePlanet: Windows 0-day privilege escalation
https://github.com/MSNightmare/RoguePlanet ⭐⭐
-
Sandbox Escape Vulnerabilities Across 4 Coding Agent Vendors
https://www.pillar.security/blog/the-week-of-sandbox-escapes ⭐⭐
-
SCTPhantom: An 18-Year-Old SCTP Asconf Transport Use-After-Free
https://matrix.tencent.com/en/2026/08/06/sctphantom-CVE-2026-64564 ⭐
-
ShinyHunters hacked 100 orgs by exploiting an Oracle PeopleSoft 0-day
https://www.theregister.com/cyber-crime/2026/06/11/shinyhunters-claims-oracle-peoplesoft-0-day-hit-100-orgs/5254443
-
Signal: Targeted phishing account takeovers of government officials
https://bsky.app/profile/signal.org/post/3mgnap76pnk2a
-
Six Harmless Bugs Lead to Remote Code Execution
https://mehmetince.net/the-story-of-a-perfect-exploit-chain-six-bugs-that-looked-harmless-until-they-became-pre-auth-rce-in-a-security-appliance/ ⭐⭐
-
Slop-Amplified Fear of Privilege Escalation (Local, Not Remote) in Linux Kernel
https://techrights.org/n/2026/05/12/The_Slop_Amplified_Fear_of_Privilege_Escalation_Local_Not_Remot.shtml
-
Snowflake Cortex Code CLI: Sandbox Escape and RCE
https://www.promptarmor.com/resources/snowflake-cortex-code-sandbox-escape-and-rce ⭐⭐
-
SQL injection on Drupal sites using PostgreSQL
https://www.drupal.org/sa-core-2026-004
-
Summer Is Prime Time for Account Takeover
https://securityboulevard.com/2026/06/summer-is-prime-time-for-account-takeover/
-
Taking down a network with a TLS certificate: my RIPE NCC RPKI exploit chain
https://mxsasha.eu/posts/ripe-ncc-rpki-exploit-chain/ ⭐⭐
-
The Hazardous Interface: SQL Injection Is a Protocol Defect (2026) [pdf]
https://github.com/opoka-research/the-hazardous-interface/blob/main/The%20Hazardous%20Interface%20%E2%80%94%20Opoka.pdf ⭐⭐
-
The most famous brand in physical security got pwned by ShinyHunters
https://www.theregister.com/security/2026/07/31/the-most-famous-brand-in-physical-security-got-pwned-by-shinyhunters/5281924
-
The Proliferation of DarkSword: iOS Exploit Chain Adopted by Hackers
https://login.corp.google.com/request?s=cloud-blog-transform.corp.google.com:443/uberproxy/&d=https://cloud-blog-transform.corp.google.com/blog/preview/58463%3Fhl%3Den%26upxsrf%3DAM2vRLkFeUi0ZDl5yOEqxceriJM_3Rb7hCVJHfwSDHN-DUIlTA:1773846867432&maxAge=1200&authLevel=2000000&keyIds=588916238,1331854303,-337386367,788849210,-1430978537,1163017845,-100563820,2023603197&c=1
-
The System Behind Millions of Student Marks – How I Hacked It
https://ni5arga.com/blog/posts/hacking-cbse/ ⭐⭐⭐
-
They Forgot What Happened Last Time: Hacking the Windows 365 Link [video]
https://media.ccc.de/v/emf2026-93-1-they-forgot-what-happened-last-time ⭐
-
UK Cybercrime Journal: Argos Account Takeover Fraud
https://blog.bushidotoken.net/2026/07/uk-cybercrime-journal-argos-account.html
-
Unauthenticated remote code execution in OpenCode
https://cy.md/opencode-rce/ ⭐⭐
-
Uncovering a universal offline sandbox escape
https://www.primeintellect.ai/blog/universal-offline-sandbox-escape ⭐⭐
-
Unpatched Firefox focus universal XSS 0day poc released
https://twitter.com/i/status/2064119366669435379
-
Users turn to jailbreaking their older Kindles as Amazon ends support
https://techcrunch.com/2026/05/16/users-turn-to-jailbreaking-their-older-kindles-as-amazon-ends-support/
-
Vulnerability Lets Privilege Escalation to Root on Major Linux Distros Est. 2017
https://www.bleepingcomputer.com/news/security/new-linux-copy-fail-flaw-gives-hackers-root-on-major-distros/
-
We fixed a critical auth bypass in Cloudflare's AI-generated Next.js
https://www.cubic.dev/blog/how-we-found-and-fixed-a-critical-auth-bypass-in-cloudflare-s-ai-generated-next.js ⭐⭐⭐
-
We Hacked TikTok SEO and Got the AI to Recommend Our Product
https://llmmoney.beehiiv.com/p/how-we-hacked-tiktok-seo-and-got-the-ai-to-recommend-our-product-after-failing-to-go-viral
-
What a bot hacking attempt looks like: SQL injections galore
https://old.reddit.com/r/vibecoding/comments/1qz3a7y/what_a_bot_hacking_attempt_looks_like_i_set_up/
-
What's in Your Agent's Context? Context Privilege Escalation Attacks Against AI
https://arxiv.org/abs/2609.01222
-
What's the future of custom software development with AI agents taking over?

-
WinBoat: Drive by Client RCE and Sandbox Escape
https://hack.do/posts/winboat-guest-service-host-rce/ ⭐⭐
-
Wp2shell: A Critical Remote Code Execution Vulnerability in WordPress Core
https://slcyber.io/research-center/wp2shell-pre-authentication-rce-in-wordpress-core/
-
Writeup: Byte Intro Rainbow Surf, first place at Revision 2026 – 256B Compo
https://old.reddit.com/r/tinycode/comments/1se0iyt/writeup_for_16_byte_intro_rainbow_surf_1st_place/
-
XSS in Meta API Gateway Leads to Zero-Click Account Takeover [$300k Bounty]
https://ysamm.com/uncategorized/2026/01/13/capig-xss.html ⭐⭐
-
Zoom warns of critical account takeover vulnerability
https://www.bleepingcomputer.com/news/security/zoom-warns-of-critical-account-takeover-vulnerability/
-

### 2025 — 172 writeups

A CNN from scratch in C++/Vulkan (no ML/math libs) – write-up and tutorial
https://deadbeef.io/cnn_from_scratch
-
A Journey Inside Apple Time Capsule: Getting Root Access
https://xpway.com/posts/a-journey-inside-time-capsule-getting-in
-
A kernel stack use-after-free: Exploiting Nvidia's GPU Linux drivers
https://blog.quarkslab.com/./nvidia_gpu_kernel_vmalloc_exploit.html ⭐
-
A novel technique for SQL injection with PHP PDO's prepared statements
~~https://slcyber.io/assetnote-security-research-center/a-novel-technique-for-sql-injection-in-pdos-prepared-statements/~~
-
A privilege escalation from Chrome extensions (2023)
https://0x44.xyz/blog/cve-2023-4369/
-
A Refreshing SQL Injection Discovery in Z-Push
https://xbow.com/blog/xbow-zpush-sqli/
-
Account Takeover Attack on X via OAuth Impersonation
https://twitter.com/grinich/status/1941545470595301446
-
Activism, hacking or campaigning: Why it's so easy to win the vote at Eurovision
https://english.elpais.com/technology/2025-05-19/activism-hacking-or-campaigning-why-its-so-easy-to-win-the-popular-vote-at-eurovision.html
-
Analyzing CVE-2025-31191: A macOS security-scoped bookmarks-based sandbox escape
https://www.microsoft.com/en-us/security/blog/2025/05/01/analyzing-cve-2025-31191-a-macos-security-scoped-bookmarks-based-sandbox-escape/
-
Apple patches 0-day exploited in "sophisticated attack"
https://arstechnica.com/security/2025/03/apple-patches-0-day-exploited-in-extremely-sophisticated-attack/
-
Aruba via VPN LPE+
~~https://thecontractor.io/hp-aruba-privileged-escalation-dec-2025-2/~~
-
Attackers turned Citrix, Cisco 0-day exploits into custom-malware hellscape
https://www.theregister.com/2025/11/12/amazon_cisco_citrix_0day_exploits/
-
Audit and tool to detect Linux cron job misconfigurations (LPE)

-
Authentication bypass in Node.js WebSocket module
https://www.fortiguard.com/psirt/FG-IR-24-535
-
Authentication Bypass Vulnerability in Multiple Air Conditioning Systems [pdf]
https://www.mitsubishielectric.com/psirt/vulnerability/pdf/2025-004_en.pdf
-
Bash a newline: Exploiting SSH via ProxyCommand, again (CVE-2025-61984)
https://dgl.cx/2025/10/bash-a-newline-ssh-proxycommand-cve-2025-61984
-
Better-auth account takeover (CVE-2025-61928) found via ZeroPath
https://zeropath.com/blog/breaking-authentication-unauthenticated-api-key-creation-in-better-auth-cve-2025-61928
-
Bobby Tables: A guide to preventing SQL injection
https://bobby-tables.com/
-
Breaking Sapcar: Four Local Privilege Escalation Bugs in SAR Archive Parsing
https://www.anvilsecure.com/blog/breaking-sapcar.html
-
Bubble.io security research: 0day exploiting Elasticsearch implementation
https://github.com/demon-i386/pop_n_bubble ⭐⭐
-
Bug Bash 2025 conference writeup
https://concerningquality.com/bug-bash-2025/
-
Bypassing Authentication Like It's the '90s – Pre-Auth RCE Chain(s)
https://labs.watchtowr.com/bypassing-authentication-like-its-the-90s-pre-auth-rce-chain-s-in-kentico-xperience-cms/ ⭐
-
Casting a Net(ty) for Bugs, and Catching a Big One (CVE-2025-59419)
~~https://www.depthfirst.com/post/our-ai-agent-found-a-netty-zero-day-that-bypasses-email-authentication-the-story-of-cve-2025-59419~~
-
Cross-Agent Privilege Escalation: When Agents Free Each Other
https://embracethered.com/blog/posts/2025/cross-agent-privilege-escalation-agents-that-free-each-other/ ⭐⭐⭐
-
CVE 2025-23266 (NVIDIAScape) – A Detailed writeup
https://kidbomb.github.io/posts/nvidia-container-escape-cve-2025-23266/
-
CVE-2024-9956 – PassKey Account Takeover in All Mobile Browsers
https://mastersplinter.work/research/passkey/
-
CVE-2025-49844: "RediShell" Critical Remote Code Execution in Redis
https://www.sysdig.com/blog/cve-2025-49844-redishell ⭐⭐
-
CVE-2025-50753 – Mitrastar GPT-2741 GNAC-N2 root privilege escalation
https://amatriz.net/posts/cve-2025-50753-mitrastar-gpt-2741-gnac-n2-root-privilege-escalation/
-
CVE-2025-55182: pre-auth remote code execution in React Server Components
https://nvd.nist.gov/vuln/detail/CVE-2025-55182
-
CVE-2025-5777: CitrixBleed 2 Exploit Deep Dive
https://horizon3.ai/attack-research/attack-blogs/cve-2025-5777-citrixbleed-2-write-up-maybe/
-
CyBearsCTF 2019: Block Dude Writeup
https://greenbender.github.io/ctf-writeup/post-cybearsctf-2019-writeup-blockdude/
-
Defending against account takeovers with passkeys and DBSC
https://workspace.google.com/blog/identity-and-security/defending-against-account-takeovers-top-threats-passkeys-and-dbsc
-
Detect and Demonstrate AWS IAM Privilege Escalation
https://pathfinding.cloud/
-
Detecting and mitigating CVE-2024-12084: rsync remote code execution
https://sysdig.com/blog/detecting-and-mitigating-cve-2024-12084-rsync-remote-code-execution/ ⭐⭐
-
DiceCTF 2024 qualifications Calculator Writeup
https://www.justus.pw/writeups/dicectf-2024/calculator.html
-
Django security release: Potential SQL injection
https://www.djangoproject.com/weblog/2025/sep/03/security-releases/
-
DOGE Is Hacking America
https://foreignpolicy.com/2025/02/11/doge-cyberattack-united-states-treasury/
-
Doge staffer's YouTube nickname accidentally revealed his teen hacking activity
https://arstechnica.com/tech-policy/2025/04/i-no-longer-hack-paypals-doge-staffers-hacker-past-raises-red-flags/
-
DoubleClickjacking: A New type of web hacking technique
https://www.paulosyibelo.com/2024/12/doubleclickjacking-what.html ⭐⭐
-
Doyensec – Systemic SQL Injection in PREST
https://github.com/prest/prest/security/advisories/GHSA-p46v-f2x8-qp98 ⭐⭐
-
Drag and Pwnd: Exploiting VS Code with ASCII
https://portswigger.net/research/drag-and-pwnd-leverage-ascii-characters-to-exploit-vs-code ⭐⭐
-
Dropping a 0 Day: Parallels Desktop Repack Root Privilege Escalation
https://jhftss.github.io/Parallels-0-day/
-
ESP32 Bus Pirate 0.5 – A hardware hacking tool that speaks every protocol
https://github.com/geo-tp/ESP32-Bus-Pirate ⭐⭐
-
Exploiting All Google KernelCTF Instances and Debian 12 with a 0-Day for $82k
https://syst3mfailure.io/rbtree-family-drama/
-
Exploiting an ORM Injection to Steal Cryptocurrency from an Online Shooter
https://blog.p1.gs/writeup/2025/07/06/Hacking-a-crypto-game/
-
Exploiting Partial Compliance: The Redact-and-Recover Jailbreak
https://www.generalanalysis.com/blog/redact_and_recover
-
File Type Spoofing Enabling Remote Code Execution in WhatsApp for Windows
https://nvd.nist.gov/vuln/detail/CVE-2025-30401
-
Firefox: Incorrect handle could lead to sandbox escapes
https://www.mozilla.org/en-US/security/advisories/mfsa2025-19/
-
FortMajeure: Authentication Bypass in FortiWeb
https://pwner.gg/blog/2025-08-13-fortiweb-cve-2025-52970
-
Gayfemboy: A Botnet Deliver Through a Four-Faith Industrial Router 0-Day Exploit
https://blog.xlab.qianxin.com/gayfemboy-en/
-
Get FortiRekt, I Am the Super_Admin Now – Fortinet FortiOS Authentication Bypass
https://labs.watchtowr.com/get-fortirekt-i-am-the-super_admin-now-fortios-authentication-bypass-cve-2024-55591/ ⭐
-
GitHub Copilot: Remote Code Execution via Prompt Injection (CVE-2025-53773)
https://embracethered.com/blog/posts/2025/github-copilot-remote-code-execution-via-prompt-injection/ ⭐⭐⭐
-
Gitlab: Account Takeover via Password Reset
https://hackerone.com/reports/2293343 ⭐⭐
-
Gogs 0-Day Exploited in the Wild
https://www.wiz.io/blog/wiz-research-gogs-cve-2025-8110-rce-exploit ⭐⭐
-
Golden DMSA: What Is DMSA Authentication Bypass?
https://www.semperis.com/blog/golden-dmsa-what-is-dmsa-authentication-bypass/
-
Google fixes Cloud Composer privilege escalation vulnerability
https://www.scworld.com/news/google-fixes-cloud-composer-privilege-escalation-vulnerability
-
Google Patches Chrome Sandbox Escape Zero-Day Caught by Kaspersky
https://www.securityweek.com/google-patches-chrome-sandbox-escape-zero-day-caught-by-kaspersky/
-
Hackers exploiting unpatched Microsoft SharePoint vulnerability CVE-2025-53770
https://www.neowin.net/news/hackers-actively-exploiting-unpatched-microsoft-sharepoint-vulnerability-cve-2025-53770/
-
Hacking a Smart Home Device (2024)
https://jmswrnr.com/blog/hacking-a-smart-home-device
-
Hacking a Toniebox
https://www.schafe-sind-bessere-rasenmaeher.de/tech/hack-all-the-things-toniebox/
-
Hacking Diffusion into Qwen3 for the Arc Challenge
https://www.matthewnewton.com/blog/arc-challenge-diffusion
-
Hacking Emacs: patching how markdown-mode finds images
https://oxal.org/blog/powerful-emacs-hacks-image-markdown/
-
Hacking India's largest automaker: Tata Motors
https://eaton-works.com/2025/10/28/tata-motors-hack/ ⭐⭐
-
Hacking into Apple's new USB-C Controller [video]
https://media.ccc.de/v/38c3-ace-up-the-sleeve-hacking-into-apple-s-new-usb-c-controller
-
Hacking on the ReMarkable 2
https://sgt.hootr.club/blog/hacking-on-the-remarkable-2/
-
Hacking Subaru: Tracking and controlling cars via the admin panel
https://samcurry.net/hacking-subaru ⭐⭐
-
Hacking the call records of millions of Americans
https://evanconnelly.github.io/post/hacking-call-records/
-
Hacking the Postgres wire protocol
https://pgdog.dev/blog/hacking-postgres-wire-protocol
-
Hacking the WiFi-enabled color screen GitHub Universe conference badge
https://simonwillison.net/2025/Oct/28/github-universe-badge/ ⭐⭐⭐
-
Hacking the World Poker Tour: Inside ClubWPT Gold's Back Office
https://samcurry.net/hacking-clubwpt-gold ⭐⭐
-
Hacking the Xbox 360 Hypervisor Part 2: The Bad Update Exploit
https://icode4.coffee/?p=1081
-
Hacking the Yamaha DX9 to Turn It into a DX7 (2023)
https://ajxs.me/blog/Hacking_the_Yamaha_DX9_To_Turn_It_Into_a_DX7.html
-
Hacking VBA to support native scripting runtime with no COM dependencies
https://github.com/ECP-Solutions/ASF ⭐⭐
-
Hacking Washing Machines [video]
https://media.ccc.de/v/39c3-hacking-washing-machines
-
Hacking Your Own AI Coding Assistant with Claude Pro and MCP
https://www.zbeegnew.dev/tech/build_your_own_ai_coding_assistant_a_cost-effective_alternative_to_cursor/
-
Hacking yourself a satellite – recovering BEESAT-1 [video]
https://media.ccc.de/v/38c3-hacking-yourself-a-satellite-recovering-beesat-1
-
Hidden Messages in Emojis and Hacking the US Treasury
https://slamdunksoftware.substack.com/p/hidden-messages-in-emojis-and-hacking
-
High-severity WinRAR 0-day exploited for weeks by 2 groups
https://arstechnica.com/security/2025/08/high-severity-winrar-0-day-exploited-for-weeks-by-2-groups/
-
How a Modular Crypto Scam Is Exploiting Ads, Celebrities and Hacked Sites
https://gostart.substack.com/p/how-a-modular-crypto-scam-network
-
How I found my way to contribute to OSS
https://tarasyarema.com/how-i-found-my-to-contribute-to-oss
-
How I hacked hackers at LeHack 2025
https://7h30th3r0n3.fr/how-i-hacked-hackers-at-lehack-2025/
-
How I pwned a major New Zealand service provider
https://mrbruh.com/majorprovider/ ⭐⭐
-
How I used o3 to find a remote 0-day vulnerability in the Linux kernel (ksmbd)
https://sean.heelan.io/2025/05/22/how-i-used-o3-to-find-cve-2025-37899-a-remote-zeroday-vulnerability-in-the-linux-kernels-smb-implementation/
-
How We Found 7 TiB of Memory Just Sitting Around
https://render.com/blog/how-we-found-7-tib-of-memory-just-sitting-around
-
I found a 0day in libpng(11 years after it got patched)
~~https://blog.himanshuanand.com/posts/discovered-a-libpng-vulnerability-11-years-after-it-was-patched/~~
-
I gave a real use-after-free crash in GDB to AI coding agents
https://undo.io/resources/ai-debug-gdb-crash-experiment-results/
-
I Got Hacked – and Traced How Much Money Hacker Made (CVE-2025-66478)
https://twitter.com/duborges/status/1997293892090183772
-
I hacked a dating app (and how not to treat a security researcher)
https://alexschapiro.com/blog/security/vulnerability/2025/04/21/startups-need-to-take-security-seriously
-
I hacked a way to use URL shortener to extract users' emails from GitHub/Docker

-
I hacked Maruti Suzuki and got access to customer and dealer data
https://rtvkiz.github.io/2025/06/13/How-I-Nearly-Accessed-Millions-Of-Maruti-Suzuki-Customer-Records.html
-
I hacked my clock to control my focus
https://www.paepper.com/blog/posts/how-i-hacked-my-clock-to-control-my-focus.md/
-
I hacked my company's SSO provider
https://mattsayar.com/how-i-hacked-my-companys-sso-provider/
-
I hacked my washing machine
https://nexy.blog/2025/07/27/how-i-hacked-my-washing-machine/
-
I Kind of Got Remote Code Execution via a Terminal and a Markdown Editor
https://hitman.services/cve-2025-43929/
-
I replaced Animal Crossing's dialogue with a live LLM by hacking GameCube memory
https://joshfonseca.com/blogs/animal-crossing-llm
-
ICE unit signs new $3M contract for phone-hacking tech
https://techcrunch.com/2025/09/18/ice-unit-signs-new-3-million-contract-for-phone-hacking-tech/
-
Inside PostHog: SSRF, ClickHouse SQL Escape and Default Postgres Creds to RCE
https://mdisec.com/inside-posthog-how-ssrf-a-clickhouse-sql-escaping-0day-and-default-postgresql-credentials-formed-an-rce-chain-zdi-25-099-zdi-25-097-zdi-25-096/
-
iOS 18.6.1 0-Click RCE POC Exploiting JPEG Decompression
https://github.com/b1n4r1b01/n-days/blob/main/CVE-2025-43300.md ⭐⭐
-
iOS Exploit Chain and Remaining Unpatched Surfaces
~~https://josephgoydish2.substack.com/p/ios-exploit-chain-and-remaining-unpatched~~
-
It's always DNS part ∞: tracking down a use-after-free bug in Envoy's DNS
https://www.pomerium.com/blog/its-always-dns-part-tracking-down-a-use-after-free-bug-in-envoys-dns-resolver-c-ares
-
It's School time: Adventures in hacking an old Kindle
https://samkhawase.com/blog/hacking-kindle/
-
Jailbreaking the censorship of DeepSeek R1 locally
https://deepgains.substack.com/p/jailbreaking-the-censorship-of-deepseek
-
Juniper Networks Routers API Authentication Bypass Vulnerability
https://supportportal.juniper.net/s/article/2025-02-Out-of-Cycle-Security-Bulletin-Session-Smart-Router-Session-Smart-Conductor-WAN-Assurance-Router-API-Authentication-Bypass-Vulnerability-CVE-2025-21589?language=en_US
-
Kernel Security in the Wild: Side-Channel-Assisted Exploit Techniques, Kernel-L [pdf]
https://tugraz.elsevierpure.com/ws/portalfiles/portal/98775241/main.pdf
-
Kernel-hack-drill and exploiting CVE-2024-50264 in the Linux kernel
https://a13xp0p0v.github.io/2025/09/02/kernel-hack-drill-and-CVE-2024-50264.html ⭐
-
Ksmbd – Exploiting CVE-2025-37947
https://blog.doyensec.com/2025/10/08/ksmbd-3.html ⭐⭐
-
Linux Kernel SMB 0-Day Vulnerability CVE-2025-37899 Uncovered Using ChatGPT O3
https://www.upwind.io/feed/linux-kernel-smb-0-day-vulnerability-cve-2025-37899-uncovered-using-chatgpt-o3
-
Linux Privilege Escalation reference for all things
https://github.com/ThatTotallyRealMyth/LinuxPrivEsc ⭐⭐
-
Linux: World Writable Directory in /var/log/ allows Privilege Escalation
https://security.opensuse.org/2025/03/12/below-world-writable-log-dir.html
-
Local Privilege Escalation to Root via Sudo Chroot in Linux
https://github.com/kh4sh3i/CVE-2025-32463 ⭐⭐
-
Local Privilege Escalation via host option
https://www.sudo.ws/security/advisories/host_any/
-
Microsoft Telnet Server MS-TNAP Authentication Bypass
https://github.com/gavz/hfwintelnet ⭐⭐
-
Millions of Cars Exposed to Remote Hacking via PerfektBlue Attack
https://www.securityweek.com/millions-of-cars-exposed-to-remote-hacking-via-perfektblue-attack/
-
Mozilla warns Windows users of critical Firefox sandbox escape flaw
https://www.bleepingcomputer.com/news/security/mozilla-warns-windows-users-of-critical-firefox-sandbox-escape-flaw/
-
NixOS: Declarative Management, Imperative Privilege Escalation
https://labs.snyk.io/resources/nixos-deep-dive/
-
Not so "mini"-dumps: How we found missing crashes on SteamOS
https://blog.sentry.io/not-so-mini-dumps-how-we-found-missing-crashes-on-steamos/
-
OCInception Writeup
https://github.com/fishilico/synacktiv-summer-chall-2025-ocinception/blob/main/writeup.md ⭐⭐
-
One misclick away: How I found a critical vulnerability in a dating app
https://www.hame.page/articles/critical-vulnerability-dating-app
-
Operation ForumTroll: APT attack with Google Chrome zero-day exploit chain
https://securelist.com/operation-forumtroll/115989/ ⭐⭐
-
Palo Alto Networks PAN-OS flaw risks authentication bypass
https://www.scworld.com/news/palo-alto-networks-pan-os-flaw-risks-authentication-bypass
-
Pat-Tastrophe: How We Hacked Virtuals' $4.6B Agentic AI Ecosystem
https://shlomie.uk/posts/Hacking-Virtuals-AI-Ecosystem
-
PostgreSQL psql SQL injection (FIXED)
https://www.rapid7.com/blog/post/2025/02/13/cve-2025-1094-postgresql-psql-sql-injection-fixed/ ⭐⭐
-
Pre-Auth SQLi to RCE – Fortinet FortiWeb Fabric Connector (CVE-2025-25257)
https://labs.watchtowr.com/pre-auth-sql-injection-to-rce-fortinet-fortiweb-fabric-connector-cve-2025-25257/ ⭐
-
Privilege Escalation in Fedora Linux: Exploiting ABRT for Root
https://initblog.com/2025/abrt-root/
-
Privilege escalation on OS X – without exploits (2016)
https://www.n00py.io/2016/10/privilege-escalation-on-os-x-without-exploits/
-
Privilege Escalation on the Playdate
https://www.peterstefek.me/foul-play.html
-
Privleap – Limited privilege escalation framework
https://github.com/ArrayBolt3/privleap ⭐⭐
-
Prompt injection is not SQL injection (it may be worse)
https://www.ncsc.gov.uk/blog-post/prompt-injection-is-not-sql-injection
-
Pwning OpenAI Atlas Through Exposed Browser Internals
https://www.hacktron.ai/blog/hacking-openai-atlas-browser
-
Pwning Phishing Training Through Scientific Lure Crafting [pdf]
https://i.blackhat.com/BH-USA-25/Presentations/US-25-Dameff-Pwning-Phishing-Training-Through-Scientific-Lure-Crafting-Wednesday.pdf
-
Pwning the Ladybird Browser
https://jessie.cafe/posts/pwning-ladybirds-libjs/
-
Pwning the Nix ecosystem
https://ptrpa.ws/nixpkgs-actions-abuse
-
Quick takes on the GCP public incident write-up
https://surfingcomplexity.blog/2025/06/14/quick-takes-on-the-gcp-public-incident-write-up/ ⭐⭐⭐
-
Rapid7 Discovers High-Severity SQL Injection Vulnerability (In Postgres)
https://australiancybersecuritymagazine.com.au/rapid7-discovers-high-severity-sql-injection-vulnerability/
-
React2Shell (CVE-2025-55182): A Log4Shell Moment for the Front End Ecosystem
https://securitylabs.datadoghq.com/articles/cve-2025-55182-react2shell-remote-code-execution-react-server-components/
-
Redis CVE-2025-49844: Use-After-Free may lead to remote code execution
https://redis.io/blog/security-advisory-cve-2025-49844/
-
RediShell: Critical remote code execution vulnerability in Redis
https://www.wiz.io/blog/wiz-research-redis-rce-cve-2025-49844 ⭐⭐
-
Remote code execution in CentOS Web Panel – CVE-2025-48703
https://fenrisk.com/rce-centos-webpanel
-
Remote Code Execution in Marvel Rivals Game
https://shalzuth.com/Blog/IFoundAGameExploit
-
Remote code execution via MIDI messages
https://psi3.ru/blog/swl01u/
-
Researcher Exposes 0-Day Clickjacking Vulnerabilities in Major Password Managers
https://socket.dev/blog/password-manager-clickjacking ⭐⭐
-
Reverse-engineering the RK3588 NPU: Hacking limits to run vision transformers
https://amohan.dev/blog/2025/shard-optimizing-vision-transformers-edge-npu/
-
Root Privilege Escalation on Azure AI and HPC Workloads Using Aznfs-Mount
https://www.varonis.com/blog/aznfs-root-privilege-escalation-on-azure
-
RP2350 A4, RP2354, and a New Hacking Challenge
https://www.raspberrypi.com/news/rp2350-a4-rp2354-and-a-new-hacking-challenge/
-
SAMLStorm: Critical Authentication Bypass in XML-crypto and Node.js libraries
https://workos.com/blog/samlstorm
-
Sign in as anyone: Bypassing SAML SSO authentication with parser differentials
https://github.blog/security/sign-in-as-anyone-bypassing-saml-sso-authentication-with-parser-differentials/ ⭐⭐
-
Smart Pointers Can't Solve Use-After-Free in C++
https://jacko.io/smart_pointers.html
-
SOAPwn: Pwning .NET Framework Applications Through HTTP Client Proxies and WSDL
https://labs.watchtowr.com/soapwn-pwning-net-framework-applications-through-http-client-proxies-and-wsdl/ ⭐
-
Some thoughts around Django SQL Injection CVE-2025-64459
~~https://shivasurya.me/security/django/2025/11/07/django-sql-injection-CVE-2025-64459.html~~
-
SQL Injection as a Feature
https://idiallo.com/blog/sql-injection-as-a-feature
-
Sudo local privilege escalation vulnerabilities fixed
https://www.helpnetsecurity.com/2025/07/01/sudo-local-privilege-escalation-vulnerabilities-fixed-cve-2025-32462-cve-2025-32463/
-
Sudo: Local Privilege Escalation via chroot option
https://www.sudo.ws/security/advisories/chroot_bug/
-
Tachy0n: The Last 0day Jailbreak
https://blog.siguza.net/tachy0n/
-
Technical writeup of universal account takeover on Lovable
https://blog.vidocsecurity.com/blog/how-we-secured-lovable
-
The brain of a 0day finding hacking bot
https://theori.io/blog/exploring-traces-63950
-
Thousands more Asus routers pwned by suspected, evolving China operation
https://www.theregister.com/2025/11/19/thousands_more_asus_routers_pwned/
-
Toyota runs a car-hacking event to boost security (2024)
https://toyotatimes.jp/en/spotlights/1061.html
-
Tricking a Security AI agent into pwning itself
https://www.hacktivesecurity.com/blog/2025/12/10/cve-2025-67511-tricking-a-security-ai-agent-into-pwning-itself/
-
Trust Me, I'm Local: Chrome Extensions, MCP, and the Sandbox Escape
https://blog.extensiontotal.com/trust-me-im-local-chrome-extensions-mcp-and-the-sandbox-escape-1875a0ee4823
-
Turns out the AI CUDA Engineer achieved 100x speedup by hacking the eval script
https://twitter.com/miru_why/status/1892500715857473777
-
Two mul or not two mul: how I found a 20% improvement in ed25519 in Golang
https://storj.dev/blog/two-mul-or-not-two-mul
-
U.S. soldier charged in AT&T hack searched "can hacking be treason"
https://krebsonsecurity.com/2025/02/u-s-soldier-charged-in-att-hack-searched-can-hacking-be-treason/
-
Unauthenticated Remote Code Execution in Erlang/OTP SSH
https://nvd.nist.gov/vuln/detail/CVE-2025-32433
-
Use-after-free in CAN BCM subsystem leading to information disclosure (CVE-2023
https://allelesecurity.com/use-after-free-vulnerability-in-can-bcm-subsystem-leading-to-information-disclosure-cve-2023-52922/
-
Using PDDL to find privilege escalation paths
https://www.usenix.org/conference/usenixsecurity24/presentation/de-pasquale
-
We hacked Burger King: How auth bypass led to drive-thru audio surveillance
https://bobdahacker.com/blog/rbi-hacked-drive-thrus/
-
We pwned X, Vercel, Cursor, and Discord through a supply-chain attack
https://gist.github.com/hackermondev/5e2cdc32849405fff6b46957747a2d28 ⭐⭐
-
We went from unauthenticated to arbitrary RCE in CyberArk Conjur
https://cyata.ai/blog/exploiting-a-full-chain-of-trust-flaws-how-we-went-from-unauthenticated-to-arbitrary-remote-code-execution-rce-in-cyberark-conjur/
-
When parameterization fails: SQL injection in Nim using parameterized queries
https://blog.nns.ee/2025/03/28/nim-postgres-vulnerability
-
When Vibe Scammers Met Vibe Hackers: Pwning PhaaS with Their Own Weapons [video]
https://media.ccc.de/v/39c3-when-vibe-scammers-met-vibe-hackers-pwning-phaas-with-their-own-weapons
-
Zero-Click Remote Code Execution in Android System
~~https://github.com/B1ack4sh/Blackash-CVE-2025-48593~~
-
Zero-Click Remote Code Execution: Exploiting MCP and Agentic IDEs
https://www.lakera.ai/blog/zero-click-remote-code-execution-exploiting-mcp-agentic-ides
-

### 2024 — 190 writeups

"Highly capable" hackers root corporate networks by exploiting firewall 0-day
https://arstechnica.com/security/2024/04/highly-capable-hackers-root-corporate-networks-by-exploiting-firewall-0-day/
-
"How I Hacked Temu"
~~https://portfolio.thijs.gg/posts/hacking-temu~~
-
0.0.0.0 Day: Exploiting Localhost APIs from the Browser
https://www.oligo.security/blog/0-0-0-0-day-exploiting-localhost-apis-from-the-browser
-
0day Contest for End-of-Life Devices Announced
https://www.districtcon.org/junkyard
-
700k OpenSSH servers vulnerable to remote code execution CVE
https://www.cybersecuritydive.com/news/openssh-remote-code-cve/720315/
-
98% of PyMySQL forks are vulnerable to SQL Injection
https://www.cramhacks.com/p/stop-forking-deps
-
A crazy privilege escalation from Chrome extensions (2023)
https://0x44.xyz/blog/cve-2023-4369/index.html
-
A Deep Dive into V8 Sandbox Escape Technique Used in In-the-Wild Exploit
https://blog.theori.io/a-deep-dive-into-v8-sandbox-escape-technique-used-in-in-the-wild-exploit-d5dcf30681d4 ⭐
-
Abusing Ubuntu 24.04 features for root privilege escalation
https://snyk.io/blog/abusing-ubuntu-root-privilege-escalation/ ⭐⭐
-
Active Exploitation Observed for Linux Kernel Privilege Escalation Vulnerabilit
https://www.crowdstrike.com/blog/active-exploitation-linux-kernel-privilege-escalation-vulnerability/ ⭐⭐
-
AI Prompt Injection: How I hacked Priceline's new AI tool Penny in 2 min
https://aiencoder.substack.com/p/preventing-prompt-injection-in-ai
-
AIX is vulnerable to privilege escalation (CVE-2024-27273)
https://www.ibm.com/support/pages/security-bulletin-aix-vulnerable-privilege-escalation-cve-2024-27273
-
Amazon Echo Hacking Wiki
https://github.com/echohacking/wiki/wiki ⭐⭐
-
Analysis of CVE-2024-37084: Spring Cloud Remote Code Execution
https://blog.securelayer7.net/spring-cloud-skipper-vulnerability/
-
Analyzing Forest Blizzard's custom post-compromise tool (CVE-2022-38028)
https://www.microsoft.com/en-us/security/blog/2024/04/22/analyzing-forest-blizzards-custom-post-compromise-tool-for-exploiting-cve-2022-38028-to-obtain-credentials/
-
Ancient Monkey: Pwning a 17-Year-Old Version of SpiderMonkey
https://blog.pspaul.de/posts/ancient-monkey-pwning-a-17-year-old-version-of-spidermonkey/
-
Apache OFBiz versions 18.12.12, earlier are affected by an authentication bypass
https://blog.securelayer7.net/security-bypass-in-apache-ofbiz/
-
Arc browser: incident response writeup to CVE-2024-45489 (cross-user JS RCE)
https://arc.net/blog/CVE-2024-45489-incident-response
-
Authentication Bypass and Command Injection for Ivanti Gateways
https://forums.ivanti.com/s/article/CVE-2023-46805-Authentication-Bypass-CVE-2024-21887-Command-Injection-for-Ivanti-Connect-Secure-and-Ivanti-Policy-Secure-Gateways?language=en_US
-
AWS 'Bucket Monopoly' attacks could allow complete account takeover
https://www.theregister.com/2024/08/07/aws_bucket_monopoly_attacks_could/
-
AWS CDK Risk: Exploiting a Missing S3 Bucket Allowed Account Takeover
https://www.aquasec.com/blog/aws-cdk-risk-exploiting-a-missing-s3-bucket-allowed-account-takeover/
-
AWS fixes 1-click account takeover flaw exposing cloud services to XSS risk
https://www.scmagazine.com/news/aws-mwaa-1-click-account-takeover-flaw-exposes-cloud-service-xss-risk
-
Back to School – Exploiting a Remote Code Execution Vulnerability in Moodle
https://blog.redteam-pentesting.de/2024/moodle-rce/
-
Breaking Free from DRM: Hacking My Air Purifier
https://unethical.info/2024/01/24/hacking-my-air-purifier/
-
Bypassing airport security via SQL injection
https://ian.sh/tsa ⭐⭐
-
Bypassing regulatory locks, hacking AirPods and Faraday cages
https://lagrangepoint.substack.com/p/airpods-hearing-aid-hacking
-
Can You Grok It – Hacking together my own dev tunnel service
https://0xda.de/blog/2024/04/can-you-grok-it/
-
Carrot Disclosure – Remote Code Execution in RaspAP
https://dustri.org/b/carrot-disclosure.html
-
Chaining Three Bugs to Access All Your ServiceNow Data
https://www.assetnote.io/resources/research/chaining-three-bugs-to-access-all-your-servicenow-data
-
ChatGPT Account Takeover via Wildcard Web Cache Deception
https://nokline.github.io/bugbounty/2024/02/04/ChatGPT-ATO.html
-
China's Hacking Reached Deep into U.S. Telecoms
https://www.nytimes.com/2024/11/21/us/politics/china-hacking-telecommunications.html
-
Chrome Critical CVE-2024-2883: Use after free in ANGLE
https://nvd.nist.gov/vuln/detail/CVE-2024-2883
-
CISA Alert: Ivanti Endpoint Manager (EPM) SQL Injection Vulnerability
https://www.cisa.gov/news-events/alerts/2024/10/02/cisa-adds-one-known-exploited-vulnerability-catalog
-
Constructing a Postgres Privilege Escalation Exploit
https://saites.dev/projects/personal/postgres-cve-2024-0985/
-
Creative Defense to Stop Mobile Phone 'Account Takeover' Attacks Invented
https://studyfinds.org/phone-account-takeover-attacks/
-
Critical Gitlab vulnerability exposes 2FA-less users to account takeovers
https://www.theregister.com/2024/01/15/critical_gitlab_vulnerability/
-
Critical Jenkins Vulnerability Leads to Remote Code Execution
https://www.securityweek.com/critical-jenkins-vulnerability-leads-to-remote-code-execution/
-
Critical vulnerability in Postgres JDBC CVE-2024-1597
https://securityonline.info/cve-2024-1597-cvss-10-critical-sql-injection-flaw-in-postgresql-jdbc-driver/
-
CVE-2023-3741: how we hacked a VoIP telephone
https://havce.it/posts/cve-2023-3741/
-
CVE-2024-1086: Universal local privilege escalation Proof-of-Concept exploit
https://github.com/Notselwyn/CVE-2024-1086 ⭐⭐
-
CVE-2024-20356: Jailbreaking a Cisco appliance to run DOOM
https://labs.nettitude.com/blog/cve-2024-20356-jailbreaking-a-cisco-appliance-to-run-doom/
-
CVE-2024-29510 – Exploiting Ghostscript using format strings
https://codeanlabs.com/blog/research/cve-2024-29510-ghostscript-format-string-exploitation/
-
CVE-2024-38063 Windows TCP/IP Remote Code Execution Vulnerability
https://msrc.microsoft.com/update-guide/en-US/advisory/CVE-2024-38063
-
CVE-2024-38063 – Remotely Exploiting Windows via IPv6
https://malwaretech.com/2024/08/exploiting-CVE-2024-38063.html
-
CVE-2024-45844: Privilege escalation in F5 BIG-IP
https://offsec.almond.consulting/privilege-escalation-f5-CVE-2024-45844.html
-
CVE-2024-6409: OpenSSH: Possible remote code execution in privsep child
https://www.openwall.com/lists/oss-security/2024/07/08/2 ⭐⭐
-
DEF Con 32 – AMD Sinkclose Universal Ring-2 Privilege Escalation (Not Redacted) [pdf]
https://media.defcon.org/DEF%20CON%2032/DEF%20CON%2032%20presentations/DEF%20CON%2032%20-%20Enrique%20Nissim%20Krzysztof%20Okupski%20-%20AMD%20Sinkclose%20Universal%20Ring-2%20Privilege%20Escalation.pdf
-
Django: Write-up on optimizing the system check framework
https://adamj.eu/tech/2024/03/23/django-optimizing-system-checks/
-
Escaping the Chrome Sandbox Through DevTools
https://ading.dev/blog/posts/chrome_sandbox_escape.html
-
ESET Patches High-Severity Privilege Escalation Vulnerability
https://www.securityweek.com/eset-patches-high-severity-privilege-escalation-vulnerability/
-
Exploiting 0-Day Opera Vulnerability with a Cross-Browser Extension Store Attack
https://labs.guard.io/crossbarking-exploiting-a-0-day-opera-vulnerability-with-a-cross-browser-extension-store-attack-db3e6d6e6aa8
-
Exploiting CVE-2024-32002: RCE via Git clone
https://amalmurali.me/posts/git-rce/
-
External OpenID Connect Account Takeover by Email Change
https://github.com/mastodon/mastodon/security/advisories/GHSA-vm39-j3vx-pch3 ⭐⭐
-
Facebook account takeovers are turning friendship into fraud
https://www.cbc.ca/news/canada/new-brunswick/facebook-account-taken-over-friends-scam-1.7205356
-
Fast Virtual Functions: Hacking the VTable for Fun and Profit
https://medium.com/@calebleak/fast-virtual-functions-hacking-the-vtable-for-fun-and-profit-25c36409c5e0
-
Federal frenzy to patch gaping Gitlab account takeover hole
https://www.theregister.com/2024/05/02/critical_gitlab_vulnerability/
-
Firefox use-after-free RCE
https://nvd.nist.gov/vuln/detail/CVE-2024-9680
-
Flipping Pages: New Linux vulnerability in nf_tables and exploitation techniques
https://pwning.tech/nftables/
-
Fortinet critical 0-day vulnerability being actively exploited
https://arstechnica.com/security/2024/10/fortinet-stays-mum-on-critical-0-day-reportedly-under-active-exploitation/
-
Fortinet FortiClient EMS SQL injection flaw exploited in the wild
https://www.scmagazine.com/news/fortinet-forticlient-ems-sql-injection-flaw-exploited-in-the-wild
-
Fred Wilson – Anatomy of a Twitter/X Account Takeover Hack
https://avc.xyz/anatomy-of-a-twitterx-account-takeover-hack
-
Fred Wilson – Avoiding Account Takeovers
https://avc.xyz/avoiding-account-takeovers
-
FreeBSD 11.0 Kernel LPE: Userspace Mutexes (Umtx) Use-After-Free Race Condition
https://accessvector.net/2024/freebsd-umtx-privesc
-
Gitlab vulnerability risks account takeover via simple password reset
https://www.scmagazine.com/news/gitlab-vulnerability-risks-account-takeover-via-simple-password-reset
-
Give Me the Green Light Part 1: Hacking Traffic Control Systems
https://www.redthreatsec.com/blog/greenlightspart1
-
Gmail Account Takeover Phishing Scam Exploiting Salesforce and Google Processes
https://docs.google.com/document/d/1xrJsRBcGj9x2mMvRoKLG4ANSs6a4C_rtsDQR7KlXYEA/edit?usp=sharing
-
Gmail Account Takeover: Super Realistic AI Scam Call
https://sammitrovic.com/infosec/gmail-account-takeover-super-realistic-ai-scam-call/
-
GrapheneOS finds new 0day exploits abused by forensics companies in pixel phones
https://twitter.com/GrapheneOS/status/1745506661467299946
-
Green Berets storm building after hacking its Wi-Fi
https://www.theregister.com/2024/08/30/green_berets_wifi_hacking/
-
Hacked TP-Link routers used in years-long account takeover attacks
https://arstechnica.com/information-technology/2024/11/microsoft-warns-of-8000-strong-botnet-used-in-password-spraying-attacks/
-
Hacking 700M Electronic Arts accounts
https://battleda.sh/blog/ea-account-takeover
-
Hacking a CTF: Do not use ECB mode for encryption
https://znano.eu.org/blog/posts/hacking-a-ctf-do-not-use-ecb-mode-for-encryption
-
Hacking a Virtual Power Plant
https://rya.nc/vpp-hack.html
-
Hacking Amazon's Eero 6 (part 1)
https://markuta.com/eero-6-hacking-part-1/
-
Hacking cars in JavaScript (Replay attacks in the browser with the HackRF)
https://charliegerard.dev/blog/replay-attacks-javascript-hackrf/
-
Hacking eInk Price Tags (2021)
https://dmitry.gr/?r=05.Projects&proj=29.%20eInk%20Price%20Tags
-
Hacking Factorio – From save game to remote code execution
https://github.com/Valentin-Metz/writeup_factorio ⭐⭐
-
Hacking into an insurance company by exploiting their premium calculator
https://eaton-works.com/2024/01/17/ttibi-email-hack/ ⭐⭐
-
Hacking Kia: Remotely controlling cars with just a license plate
https://samcurry.net/hacking-kia ⭐⭐
-
Hacking millions of modems and investigating who hacked my modem
https://samcurry.net/hacking-millions-of-modems ⭐⭐
-
Hacking misconfigured AWS S3 buckets: A complete guide
https://blog.intigriti.com/hacking-tools/hacking-misconfigured-aws-s3-buckets-a-complete-guide
-
Hacking phones is too easy
https://www.economist.com/leaders/2024/05/23/hacking-phones-is-too-easy-time-to-make-it-harder
-
Hacking physics from the back of a napkin (2020)
https://hapax.github.io/physics/teaching/hacks/napkin-hacks/
-
Hacking Terraform State for Privilege Escalation
https://blog.plerion.com/hacking-terraform-state-privilege-escalation/
-
Hacking the genome of fungi for smart foods of the future
https://www.sciencedaily.com/releases/2024/03/240314122135.htm
-
Hacking the immune system could slow ageing
https://www.nature.com/articles/d41586-024-01274-3
-
Hacking the largest airline and hotel rewards platform (2023)
https://samcurry.net/points-com ⭐⭐
-
Hacking the Mac OS X Kernel for Unsupported Machines (2005) [pdf]
https://papers.put.as/papers/macosx/2005/Hacking-Mac-OS-X-Kernel-for-unsupported-machines.pdf
-
Hacking the T2S+ Out of Fear: Get Lock-In Thermography for Free
https://dmytroengineering.com/content/projects/t2s-plus-thermal-camera-hacking
-
Hacking with PDF (2022)
https://0xcybery.github.io/blog/hacking-with-pdf
-
How I found a lost stroller in Florence
https://tathagata.dev/2024/09/12/how-i-found-a-lost-stroller-in-florence/
-
How I Hacked 100 Hackers
https://corneacristian.medium.com/how-i-hacked-100-hackers-5c3c313e8a1a
-
How I Hacked into a Nationwide University Database System
https://1-day.medium.com/how-i-hacked-into-a-nationwide-university-database-system-exposing-thousands-of-student-records-65dce4e4ee23
-
How I Hacked My Life by Saying Yes to Everything
https://www.wsj.com/health/wellness/how-i-hacked-my-life-by-saying-yes-to-everything-d85c4ded
-
How our app went viral in Afghanistan (and how I found motivation as a founder)
https://foundersconfidential418.substack.com/p/how-our-app-went-viral-in-afghanistan
-
How to Get Remote Code Execution in Kafka UI
https://github.blog/2024-07-22-3-ways-to-get-remote-code-execution-in-kafka-ui/ ⭐⭐
-
How we found and fixed an eBPF Linux kernel vulnerability
https://bughunters.google.com/blog/6303226026131456/a-deep-dive-into-cve-2023-2163-how-we-found-and-fixed-an-ebpf-linux-kernel-vulnerability
-
How We Found Bin Laden: The Basics of Foreign Signals Intelligence
https://directory.libsyn.com/episode/index/id/32884982
-
I hacked a BIG prize web game hosted by a popular supermarket chain

-
I Hacked WhatsApp Web in 3 Days
https://michalszorad.medium.com/how-i-hacked-whatsapp-web-in-3-days-f23504ed5b42
-
I pwned half of America's fast food chains simultaneously
https://mrbruh.com/chattr/ ⭐⭐
-
Iconv, set the charset to RCE: Exploiting the glibc to hack the PHP engine
https://www.ambionics.io/blog/iconv-cve-2024-2961-p1 ⭐
-
Introduction to Hardware Hacking with a Raspberry Pi
~~https://voidstarsec.com/blog/pifex-config~~
-
Jailbreaking RabbitOS
https://www.da.vidbuchanan.co.uk/blog/r1-jailbreak.html
-
Jeff Bezos phone hacking incident
https://en.wikipedia.org/wiki/Jeff_Bezos_phone_hacking_incident
-
JetBrains TeamCity Multiple Authentication Bypass Vulnerabilities (Fixed)
https://www.rapid7.com/blog/post/2024/03/04/etr-cve-2024-27198-and-cve-2024-27199-jetbrains-teamcity-multiple-authentication-bypass-vulnerabilities-fixed/ ⭐⭐
-
Judge0 Sandbox Escape – allows obtaining root permissions
https://tantosec.com/blog/judge0/
-
Lethal Injection: How We Hacked Microsoft's Healthcare Chat Bot
https://www.breachproof.net/blog/lethal-injection-how-we-hacked-microsoft-ai-chat-bot
-
Local Privilege Escalation in Zscaler Client Connector
https://medium.com/csg-govtech/catch-me-if-you-can-local-privilege-escalation-in-zscaler-client-connector-7ad997bd7058
-
Local Privilege Escalation via MSI Installer
https://sec-consult.com/vulnerability-lab/advisory/local-privilege-escalation-via-msi-installer-in-softmaker-office-freeoffice/
-
Local Privilege Escalation Vulnerability Affecting X.org Server for 18 Years
https://www.phoronix.com/news/X.Org-CVE-2024-9632
-
Local Privilege Escalations in Needrestart
https://www.openwall.com/lists/oss-security/2024/11/19/1 ⭐⭐
-
Losing a hobby (and how I found it again)
~~https://hrv.bearblog.dev/losing-a-hobby-and-how-i-found-it-again/~~
-
macOS PackageKit Privilege Escalation
https://khronokernel.com/macos/2024/06/03/CVE-2024-27822.html
-
Mastodon vulnerability allows attackers to take over accounts
https://www.bleepingcomputer.com/news/security/mastodon-vulnerability-allows-attackers-to-take-over-accounts/
-
MiraclePtr: Protecting users from use-after-free on more platforms
https://security.googleblog.com/2024/01/miracleptr-protecting-users-from-use.html
-
Multiple new macOS sandbox escape vulnerabilities
https://jhftss.github.io/A-New-Era-of-macOS-Sandbox-Escapes/
-
Nasa is hacking Voyager 1 Back to Life
https://spectrum.ieee.org/voyager-1
-
New Wi-Fi Authentication Bypass Flaws Expose Home, Enterprise Networks
https://www.securityweek.com/new-wi-fi-authentication-bypass-flaws-expose-home-enterprise-networks/
-
Nix 2.24 is vulnerable to (remote) privilege escalation
https://puckipedia.com/7hkj-98sq/qixt
-
NPM account takeover using expired domains (2023)
https://blog.illustria.io/illustria-discovers-account-takeover-vulnerability-in-a-popular-package-affecting-1000-8aaaf61ebfc4
-
Offbeat Zen: How I found my way out of depression
https://aeon.co/essays/alan-watts-the-western-buddhist-who-healed-my-mind
-
Over 5,300 Gitlab servers exposed to zero-click account takeover attacks
https://www.bleepingcomputer.com/news/security/over-5-300-gitlab-servers-exposed-to-zero-click-account-takeover-attacks/
-
OWASP Juice Shop: Hacking a Modern Web Application
https://blog.javascripttoday.com/blog/hacking-a-web-application/
-
OWASP PTK v8.9 with cheat sheets for XSS and SQL just released

-
PcTattletale Writeup
https://rentry.co/pcTT
-
PiFex: JTAG Hacking with a Raspberry Pi
https://voidstarsec.com/blog/jtag-pifex
-
Planes, Ferries and Automobiles – How I Hacked Free Travel Across Iceland
https://www.debug.is/2024/03/04/planes-ferries-automobiles/
-
Playing Telephone with ChatGPT and DallE (Writeup)
https://blog.dagworks.io/p/playing-telephone-with-chatgpt-and
-
POC of Gitlab Account-Take-Over CVE-2023-7028
https://twitter.com/hack_git/status/1746062306562236642
-
Practical Introduction to BLE GATT Reverse Engineering: Hacking the Domyos EL500 (2023)
https://jcjc-dev.com/2023/03/19/reversing-domyos-el500-elliptical/
-
Privilege escalation vulnerabilities don't matter
https://wheybags.com/blog/privesc.html
-
Probllama: Ollama Remote Code Execution Vulnerability (CVE-2024-37032)
https://www.wiz.io/blog/probllama-ollama-vulnerability-cve-2024-37032 ⭐⭐
-
ProjectSend – Stored XSS to Account Takeover
https://nv1t.github.io/blog/projectsend-stored-xss-to-account-takeover/
-
Prompt injection and jailbreaking are not the same thing
https://simonwillison.net/2024/Mar/5/prompt-injection-jailbreaking/ ⭐⭐⭐
-
PS4: TheFlow releases PPPwn, Kernel exploit (Jailbreak) for firmware 11.00
https://wololo.net/2024/05/01/ps4-theflow-releases-pppwn-kernel-exploit-jailbreak-for-firmware-11-00/
-
Public URL tool exposes thousands of sensitive links (100+ account takeovers)
https://twitter.com/hackermondev/status/1835452657181336014
-
Pwning a Brother labelmaker, for fun and interop
https://sdomi.pl/weblog/20-pwning-a-labelmaker/
-
Pwning a nuclear-grade entrance control system easily
https://blog.ukatemi.com/blog/2024-10-04-pwning-a-nuclear-grade-door-acs/
-
Qualys Uncovers Five Local Privilege Escalation Vulnerabilities in Needrestart
https://www.qualys.com/2024/11/19/needrestart/needrestart.txt ⭐⭐
-
Quick takes on the latest Cloudflare public incident write-up
https://surfingcomplexity.blog/2024/11/28/quick-takes-on-the-latest-cloudflare-public-incident-write-up/ ⭐⭐⭐
-
Quick takes on the recent OpenAI public incident write-up
https://surfingcomplexity.blog/2024/12/14/quick-takes-on-the-recent-openai-public-incident-write-up/ ⭐⭐⭐
-
Regresshion: Unauthenticated remote code execution in OpenSSH's server
https://www.qualys.com/regresshion-cve-2024-6387/ ⭐⭐
-
Relatively Universal ROM Programmer Makes Retro Tech Hacking Accessible
https://hackaday.com/2024/04/20/relatively-universal-rom-programmer-makes-retro-tech-hacking-accessible/
-
Remote Code Execution in Ansible dynamic inventory plugins
https://www.die-welt.net/2024/03/remote-code-execution-in-ansible-dynamic-inventory-plugins/
-
Researchers find SQL injection to bypass airport TSA security checks
https://www.bleepingcomputer.com/news/security/researchers-find-sql-injection-to-bypass-airport-tsa-security-checks/
-
Resume Tip: Hacking "AI" screening of resumes
https://www.solipsys.co.uk/images/ResumeTip.png
-
Rolling Back Rolling Codes: Decoding ASK/OOK and pwning a garage door opener
https://www.cryptic.red/post/rolling-back-rolling-codes
-
ROM hacking site shutting down after almost 20 years
https://arstechnica.com/gaming/2024/08/rom-hackings-premier-site-is-going-read-only-after-internal-struggle/
-
Rook to XSS: How I hacked chess.com with a rookie exploit
https://skii.dev/rook-to-xss/
-
Root Privilege Escalation via Diskutil
https://mjtsai.com/blog/2024/05/09/root-privilege-escalation-via-diskutil/
-
Ruby-SAML pwned by XML signature wrapping attacks
https://ssoready.com/blog/engineering/ruby-saml-pwned-by-xml-signature-wrapping-attacks/
-
S2malloc: Statistically Secure Allocator for Use-After-Free Protection and More
https://arxiv.org/abs/2402.01894
-
ScreenConnect Authentication Bypass (CVE-2024-1709 and CVE-2024-1708)
https://www.huntress.com/blog/a-catastrophe-for-control-understanding-the-screenconnect-authentication-bypass
-
Security Advisory YSA-2024-01 Yubikey Manager Privilege Escalation
https://www.yubico.com/support/security-advisories/ysa-2024-01/
-
Self-Serve Account Takeover Protection
https://ciamweekly.substack.com/p/self-serve-account-takeover-protection
-
SmoothLLM: Defending Large Language Models Against Jailbreaking Attacks
https://arxiv.org/abs/2310.03684
-
SQL Injection Cheatsheet
https://tib3rius.com/sqli.html
-
SQL Injection Fools Speed Traps and Clears Your Record (2014)
https://hackaday.com/2014/04/04/sql-injection-fools-speed-traps-and-clears-your-record/
-
SQL Injection Isn't Dead: Smuggling Queries at the Protocol Level
https://simonwillison.net/2024/Aug/12/smuggling-queries-at-the-protocol-level/ ⭐⭐⭐
-
SQL Injection Polyglot Payloads
https://nastystereo.com/security/sqli-polyglots.html
-
SQL injection-like attack on LLMs with special tokens
https://twitter.com/karpathy/status/1823418177197646104
-
Studying 0days: How we hacked Anki, the most popular flashcard app
https://skii.dev/anki-0day/
-
Technical Writeup of ESET Israel Wiper
https://www.emanueledelucia.net/hey-eset-wait-for-the-leak-dissecting-the-octoberseventh-wiper-targeting-eset-customers-in-israel/
-
The Extinction Rebellion has reportedly conducted its first hacking operations
https://discoverbundoran.com/2024/11/pwned-by-the-extinction-rebellion-xr/
-
The Full Story of CVE-2024-6386: Remote Code Execution in WPML
https://blog.wpsec.com/the-full-story-of-cve-2024-6386-remote-code-execution-in-wpml/ ⭐⭐
-
The hacking of culture and the creation of socio-technical debt
https://www.schneier.com/blog/archives/2024/06/the-hacking-of-culture-and-the-creation-of-socio-technical-debt.html
-
The State of SQL Injection Today
https://www.aikido.dev/blog/the-state-of-sql-injections
-
The Weird BLE-Lock – Hacking Cloud Locks
https://nv1t.github.io/blog/the-weired-ble-lock/
-
There Are No Secrets –| Exploiting Veeam CVE-2024-29855
https://summoning.team/blog/veeam-recovery-orchestrator-auth-bypass-cve-2024-29855/
-
There is an increase of account takeovers due to insiders at telcos
https://twitter.com/SwiftOnSecurity/status/1745149243017605233
-
Twitter/X Safety Team Statement on SECGov Account Takeover
https://twitter.com/Safety/status/1744924042681897343
-
Two Authentication Bypass Vulnerabilities in JetBrains TeamCity
https://www.tenable.com/blog/cve-2024-27198-cve-2024-27199-two-authentication-bypass-vulnerabilities-in-jetbrains-teamcity ⭐⭐
-
UEVR: An Exploration of Advanced Game Hacking Techniques (2023)
https://praydog.com/reverse-engineering/2023/07/03/uevr.html
-
Uncle Sam has had enough of SQL injection vulnerabilities
https://www.theregister.com/2024/03/26/fbi_cisa_sql_injection/
-
Unpatchable 0-day in surveillance cam is being exploited to install Mirai
https://arstechnica.com/security/2024/08/unpatchable-0-day-in-surveillance-cam-is-being-exploited-to-install-mirai/
-
Unpatched Remote Code Execution in Gogs
https://fysac.github.io/posts/2024/11/unpatched-remote-code-execution-in-gogs/
-
Unverified NPM Account Takeover Vulnerability for Sale on Dark Web Forum
https://socket.dev/blog/unverified-npm-account-takeover-vulnerability-for-sale-on-dark-web-forum ⭐⭐
-
US could ban TP-Link routers over hacking fears: report
https://nypost.com/2024/12/18/business/us-could-ban-chinese-made-tp-link-routers-over-hacking-fears-report/
-
Visual Studio Code for Linux Remote Code Execution Vulnerability CVE-2024-43601
https://github.com/microsoft/vscode/security/advisories/GHSA-g56j-w527-8x6f ⭐⭐
-
VMware ESXi, Workstation, Fusion critical sandbox escape vulnerabilities patches
https://arstechnica.com/security/2024/03/vmware-issues-patches-for-critical-sandbox-escape-vulnerabilities/
-
VMware vCenter Server heap-overflow and privilege escalation
https://support.broadcom.com/web/ecx/support-content-notification/-/external/content/SecurityAdvisories/0/24453
-
Vtiger CRM <= 8.1.0 SQL Injection and Privilege Escalation

-
Vulnerabilities in PanelView Plus devices could lead to remote code execution
https://www.microsoft.com/en-us/security/blog/2024/07/02/vulnerabilities-in-panelview-plus-devices-could-lead-to-remote-code-execution/
-
We hacked Anki – 0 day exploit from studying someone else's flashcards
https://skerritt.blog/anki-0day/
-
We Hacked Multi-Billion $ Companies in 30 Minutes with a VSCode Extension
https://medium.com/@amitassaraf/the-story-of-extensiontotal-how-we-hacked-the-vscode-marketplace-5c6e66a0e9d7
-
What your web framework never told you about SQL injection protection
https://tech.codeyellow.nl/blog/identifier-sqli/
-
Writeup: The COD remote perma ban exploit
https://twitter.com/zebleerpo/status/1847024778600689706
-
XBOW found a Scoold authentication bypass
https://xbow.com/blog/xbow-scoold-vuln/
-
Yubikey Manager Privilege Escalation
https://www.openwall.com/lists/oss-security/2024/04/04/7 ⭐⭐
-

### 2023 — 158 writeups

'Log in with ' Feature Allows Full Online Account Takeover for Millions
https://www.darkreading.com/remote-workforce/oauth-log-in-full-account-takeover-millions
-
0-day in Cisco iOS XE software is under attack
https://www.scmagazine.com/news/0-day-in-cisco-ios-xe-software-is-under-attack
-
A confession exposes India’s hacking industry
https://www.newyorker.com/news/annals-of-crime/a-confession-exposes-indias-secret-hacking-industry
-
A hacking and disinformation team meddling in elections
https://www.theguardian.com/world/2023/feb/15/revealed-disinformation-team-jorge-claim-meddling-elections-tal-hanan
-
A use-after-free in AMD Zen2 Processors
https://www.openwall.com/lists/oss-security/2023/07/24/1 ⭐⭐
-
AAD misconfiguration led to Bing.com results manipulation, account takeover
https://www.wiz.io/blog/azure-active-directory-bing-misconfiguration ⭐⭐
-
Accidental WhatsApp account takeovers? It's a thing
https://www.theregister.com/2023/02/21/accidental_whatsapp_account_takeover/
-
Activation Context Cache Poisoning: Exploiting Csrss for Privilege Escalation
https://www.thezdi.com/blog/2023/1/23/activation-context-cache-poisoning-exploiting-csrss-for-privilege-escalation ⭐
-
AI Hacking Games (Jailbreak CTFs)
https://securitycafe.ro/2023/05/15/ai-hacking-games-jailbreak-ctfs/
-
Apple's interactive television box: Hacking the set top box System 7.1 in ROM
http://oldvcr.blogspot.com/2023/07/apples-interactive-television-box.html
-
Attention ladies and gentleman: this is your (Microsoft) Copilot pwning you
https://www.findandexec.com/find/zeta-copilot/
-
AWS CodeBuild and S3 == Privilege Escalation – Shielder
https://www.shielder.com/blog/2023/07/aws-codebuild--s3-privilege-escalation/
-
Bad Pods: Kubernetes Pod Privilege Escalation (2021)
https://bishopfox.com/blog/kubernetes-pod-privilege-escalation#pod8
-
Bomb threat causes mass evacuation at DEF CON hacking convention
https://www.theregister.com/2023/08/14/def_con_roundup/
-
Booking.com account takeover shows possible pitfalls in OAuth implementations
https://www.csoonline.com/article/3689869/booking-com-account-takeover-flaw-shows-possible-pitfalls-in-oauth-implementations.html
-
Breaking Up with Heroku: How I Found True Love with Rails/Elasticsearch on K8s
https://www.vmii.org/blog/2023/03/12/kubernetes/
-
Bug Writeup: Bing Chat Data Exfiltration Exploit Explained
https://embracethered.com/blog/posts/2023/bing-chat-data-exfiltration-poc-and-fix/ ⭐⭐⭐
-
ChatGPT plugins Account Takeover via Prompt injection
https://rez0.blog/hacking/2023/05/19/prompt-injection-poc.html
-
ChromeOS root privilege escalation (mount-passthrough-jailed)
https://bugs.chromium.org/p/chromium/issues/detail?id=1414511
-
Cisco iOS XE Software Web UI Privilege Escalation Vulnerability
https://sec.cloudapps.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-iosxe-webui-privesc-j22SaA4z
-
Cisco iOS XE Web UI Privilege Escalation Vulnerability
https://nvd.nist.gov/vuln/detail/CVE-2023-20198
-
Comprehensive analysis of attack samples exploiting CVE-2023-23397 vulnerability
https://securelist.com/analysis-of-attack-samples-exploiting-cve-2023-23397/110202/ ⭐⭐
-
Critical account takeover vulnerability in ChatGPT
https://twitter.com/naglinagli/status/1639343866313601024
-
Critical authentication bypass found in Arcserve backup system
https://www.scmagazine.com/news/vulnerability-management/critical-authentication-bypass-found-in-arcserve-backup-system
-
Cross-site forgery bug would facilitate remote code execution in Azure services
https://www.scmagazine.com/analysis/application-security/cross-site-forgery-bug-would-facilitate-remote-code-execution-in-microsoft-azure-services
-
CS:GO: From Zero to 0-Day
https://neodyme.io/blog/csgo_from_zero_to_0day/
-
CSRF Vulnerability Leads to Account Takeover in Casdoor IdP
https://github.com/casdoor/casdoor/issues/1531 ⭐⭐
-
CTF Writeup: Abusing select() to factor RSA
https://threadreaderapp.com/thread/1723398619313603068.html
-
Cueing up a calculator: an introduction to exploit development on Linux
https://github.blog/2023-12-06-cueing-up-a-calculator-an-introduction-to-exploit-development-on-linux/ ⭐⭐
-
CVE-2023-0179: Linux kernel stack buffer overflow in nftables: PoC and writeup
https://seclists.org/oss-sec/2023/q1/20 ⭐⭐
-
CVE-2023-2283 – Client authentication check bypass in libssh
https://nvd.nist.gov/vuln/detail/CVE-2023-2283
-
CVE-2023-38408: Remote Code Execution in OpenSSH's forwarded SSH-agent
https://www.qualys.com/2023/07/19/cve-2023-38408/rce-openssh-forwarded-ssh-agent.txt ⭐⭐
-
Emulating IoT Firmware Made Easy: Start Hacking Without the Physical Device
https://boschko.ca/qemu-emulating-firmware/
-
Exploiting MikroTik RouterOS Hardware with CVE-2023-30799
https://vulncheck.com/blog/mikrotik-foisted-revisited
-
Exploiting the iPhone 4
https://axleos.com/exploiting-the-iphone-4-part-1-gaining-entry/
-
F5 Warns of Critical Remote Code Execution Vulnerability in Big-IP
https://www.securityweek.com/f5-warns-of-critical-remote-code-execution-vulnerability-in-big-ip/
-
GameOver(lay): Local privilege escalation vulnerabilities in Ubuntu
https://www.wiz.io/blog/ubuntu-overlayfs-vulnerability ⭐⭐
-
Gitpod remote code execution 0-day vulnerability via WebSockets
https://snyk.io/blog/gitpod-remote-code-execution-vulnerability-websockets/ ⭐⭐
-
Glibc dynamic loader hit by a nasty local privilege escalation vulnerability
https://www.phoronix.com/news/Glibc-LD-Nasty-Root-Bug
-
Groovy Govee Account Takeover
https://tightropemonkey.dev/posts/govee-part-1/
-
Hackers Abusing OAuth Token to Take over Accounts
https://gbhackers.com/hackers-abusing-oauth-token/#google_vignette
-
Hackers drain Bitcoin ATMs of $1.5M by exploiting 0-day bug
https://arstechnica.com/information-technology/2023/03/hackers-drain-bitcoin-atms-of-1-5-million-by-exploiting-0-day-bug/
-
Hacking Around ChatGPT’s Character Limits with the Code Interpreter
https://knowsuchagency.notion.site/Hacking-around-ChatGPT-s-Character-Limits-with-the-Code-Interpreter-d31dcba26e5a432a839bf94c69c7c39f
-
Hacking around the Twitter login thing

-
Hacking Google Bard – From Prompt Injection to Data Exfiltration
https://embracethered.com/blog/posts/2023/google-bard-data-exfiltration/ ⭐⭐⭐
-
Hacking Google ReCAPTCHA v3 Using Reinforcement Learning (2019)
https://arxiv.org/abs/1903.01003
-
Hacking GTA V RP Servers Using Web Exploitation Techniques
https://www.nullpt.rs/hacking-gta-servers-using-web-exploitation
-
Hacking LangChain for fun and profit
~~https://blog.kevinhu.me/2023/07/10/hacking-langchain-for-fun-and-profit/~~
-
Hacking Little Computer People on the Commodore Amiga
~~http://www.jaruzel.com/blog/hacking-little-computer-people-on-the-amiga~~
-
Hacking my filter coffee machine
https://diziet.dreamwidth.org/17079.html
-
Hacking my “smart” toothbrush
https://kuenzi.dev/toothbrush/
-
Hacking root EPP servers to take control of zones
https://hackcompute.com/hacking-epp-servers/
-
Hacking the Book8088 for better accuracy
https://martypc.blogspot.com/2023/09/hacking-book8088-for-better-accuracy.html
-
Hacking the LG Monitor's EDID
https://gist.github.com/kj800x/be3001c07c49fdb36970633b0bc6defb ⭐⭐
-
Hacking the Nintendo DSi Browser
https://farlow.dev/2023/03/02/hacking-the-nintendo-dsi-browser
-
Hacking the Philips Sonicare NFC Password
https://twitter.com/atc1441/status/1667252413051424773
-
Hacking the Timex m851
https://lock.cmpxchg8b.com/timex.html
-
Hacking with Style: TrueType VT220 Font (2009)
http://sensi.org/~svo/glasstty/
-
Hacking Your Keyboard with Karabiner
https://kau.sh/blog/hacking-your-keyboard/
-
Hackmyvm.eu: BlackHat Writeup
https://overgrowncarrot1.medium.com/hackmyvm-blackhat-71f00aca8693
-
Hardware Hacking to Bypass Bios Passwords
https://blog.cybercx.co.nz/bypassing-bios-password
-
HHKB Studio: The New Happy Hacking Keyboard with TrackPoint
https://hhkeyboard.us/hhkb-studio/product
-
HomeAssistant Supervisor Authentication Bypass
https://www.home-assistant.io/blog/2023/03/08/supervisor-security-disclosure/
-
How I found a RCE bug at LDAP-ws-vip.aholdusa.com, a bug that existed 18 years?
https://medium.com/@jonathanbouman/remote-code-execution-at-ws1-aholdusa-com-compromising-logins-of-ahold-delhaize-usa-employees-c7c9aca7e05d
-
How I found my logo – recursive yin yang
~~https://einarmagnus.net/blog/2020/01/22/finding-the-logo.html~~
-
How I Found The Most Influential Users on Hacker News
https://memgraph.com/blog/how-i-found-the-most-influential-users-on-hacker-news
-
How I found user accounts in my SaaS tools that should have been offboarded

-
How I Hacked Microsoft Teams and Got $150k in Pwn2Own
https://speakerdeck.com/masatokinugawa/how-i-hacked-microsoft-teams-and-got-150000-dollars-in-pwn2own
-
How scientists are hacking the genetic code to give proteins new powers
https://www.nature.com/articles/d41586-023-01980-4
-
How we found about Black Holes by Isaac Asimov [pdf]
http://arvindguptatoys.com/arvindgupta/blackholespix.pdf
-
I hacked a Joy-Con controller to have a Capacitive Trackpad
https://medium.com/@matteo.pisani.91/how-i-hacked-nintendo-joy-con-controller-8ac22d75b0b8
-
I Hacked Casio F-91W digital watch
https://medium.com/@matteo.pisani.91/how-i-hacked-casio-f-91w-digital-watch-892bd519bd15
-
I hacked DEFCON – from 2023's winner
https://www.futureofproduct.ai/p/how-i-hacked-defcon-cody-ho-2023#details
-
I Hacked Facebook, and Found Someone's Backdoor Script
https://devco.re/blog/2016/04/21/how-I-hacked-facebook-and-found-someones-backdoor-script-eng-ver/ ⭐
-
Ian Hacking has died
https://www.nytimes.com/2023/05/28/science/ian-hacking-dead.html
-
Illusions celebrate exploiting human senses
https://hackaday.com/2023/06/16/these-illusions-celebrate-exploiting-human-senses/
-
India targets Apple over its phone hacking notifications
https://www.washingtonpost.com/world/2023/12/27/india-apple-iphone-hacking/
-
Infosec company pwned by 4chan user
https://maia.crimew.gay/posts/optimeyes-leak/
-
Is Computer Hacking a Crime? (1989) [pdf]
~~https://faculty.weber.edu/apainter1/Readings/Hacking%20a%20Crime.pdf~~
-
Knex (with MySQL) had a scary SQL injection
https://evertpot.com/knex-sql-injection/
-
Linux kernel use-after-free in Netfilter, local privilege escalation
https://seclists.org/oss-sec/2023/q2/133 ⭐⭐
-
Local privilege escalation in glibc’s ld.so
https://www.qualys.com/2023/10/03/cve-2023-4911/looney-tunables-local-privilege-escalation-glibc-ld-so.txt ⭐⭐
-
Local Privilege Escalation on the DJI RM500 Smart Controller
https://icanhack.nl/blog/dji-rm500-privilege-escalation/
-
Looney Tunables – Local Privilege Escalation in the Glibc’s Ld.so
https://blog.qualys.com/vulnerabilities-threat-research/2023/10/03/cve-2023-4911-looney-tunables-local-privilege-escalation-in-the-glibcs-ld-so ⭐⭐
-
Looney Tunables: Local Privilege Escalation in the glibc's ld.so (CVE-2023-4911)
https://www.openwall.com/lists/oss-security/2023/10/03/2 ⭐⭐
-
Lua-Resty-JWT Authentication Bypass
https://insinuator.net/2023/10/lua-resty-jwt-authentication-bypass/
-
Microcorruption Writeup
http://msinilo.pl/blog2/post/microcorruption-writeup/
-
Microcorruption – Hollywood (Writeup)
https://grazfather.github.io/posts/2018-11-24-microcorruption-hollywood/
-
Microsoft Azure Account Takeover via DOM-Based XSS in Cosmos DB Explorer
https://starlabs.sg/blog/2023/02-microsoft-azure-account-takeover-via-dom-based-xss-in-cosmos-db-explorer/ ⭐
-
Microsoft Azure AD flaw can lead to account takeover
https://www.malwarebytes.com/blog/news/2023/06/microsoft-azure-ad-flaw-can-lead-to-account-take-overs
-
New Critical Google Chrome Security Warning as 0-Day Exploit Confirmed
https://www.forbes.com/sites/daveywinder/2023/11/29/new-critical-google-chrome-security-warning-as-0-day-attacks-confirmed/
-
New Privilege Escalation Bug Class on macOS and iOS
https://www.trellix.com/en-us/about/newsroom/stories/research/trellix-advanced-research-center-discovers-a-new-privilege-escalation-bug-class-on-macos-and-ios.html
-
Nintendo GBA and DS ROM hacking guide (2016)
https://gbatemp.net/download/gba-and-ds-rom-hacking-guide.33419/
-
NOAuth: Microsoft OAuth Misconfiguration Can Lead to Full Account Takeover
https://www.descope.com/blog/post/noauth
-
NoFilter – Abusing Windows Filtering Platform for Privilege Escalation
https://www.deepinstinct.com/blog/nofilter-abusing-windows-filtering-platform-for-privilege-escalation
-
Now Russians accused of pwning JFK taxi system to sell top spots to cabbies
https://www.theregister.com/2023/10/31/russians_nyc_jfk_taxi_hacking/
-
OAuth Flaw Exposed Social Media Logins to Account Takeover
https://www.bankinfosecurity.com/oauth-flaw-exposed-social-media-logins-to-account-takeover-a-22172
-
Obtaining Remote Code Execution in F5-Bigip via AJP Request Smuggling
https://www.praetorian.com/blog/refresh-compromising-f5-big-ip-with-request-smuggling-cve-2023-46747/ ⭐⭐
-
Of Sun Ray laptops, MIPS and getting root on them
http://oldvcr.blogspot.com/2023/04/of-sun-ray-laptops-mips-and-getting.html
-
OpenSSH Pre-Auth Double Free – Writeup and Proof-of-Concept
https://jfrog.com/blog/openssh-pre-auth-double-free-cve-2023-25136-writeup-and-proof-of-concept/
-
Operation Luigi: How I hacked my friend without her noticing (2017)
https://mango.pdf.zone/operation-luigi-how-i-hacked-my-friend-without-her-noticing
-
Passkeys: The end of passwords and account takeovers
https://www.slashid.dev/blog/passkeys-security-implementation/
-
Possible 0day in Signal? Disable link preview
https://hax0rbana.social/@adam/111236822600142276
-
Post Account Takeover? Account Takeover of Internal Tesla Accounts
https://medium.com/@evan.connelly/post-account-takeover-account-takeover-of-internal-tesla-accounts-bc720603e67d
-
PostHog: How We found our Ideal Customer Profile
https://posthog.com/blog/creating-ideal-customer-profile
-
Potential Risk of Privilege Escalation in Azure Ad Applications
https://msrc.microsoft.com/blog/2023/06/potential-risk-of-privilege-escalation-in-azure-ad-applications/
-
Power Platform Privilege Escalation
https://www.secureworks.com/research/power-platform-privilege-escalation
-
Prince Harry wins phone hacking case against British tabloid
https://www.npr.org/2023/12/15/1219536863/prince-harry-phone-hacking-trial
-
Privilege escalation on Android from installed app to system app
https://github.com/michalbednarski/LeakValue ⭐⭐
-
Privilege Escalation Vulnerability in Confluence Data Center and Server
https://confluence.atlassian.com/security/cve-2023-22515-privilege-escalation-vulnerability-in-confluence-data-center-and-server-1295682276.html
-
Prompt injection along with SQL injection with OpenAI functions
https://twitter.com/dbasch/status/1669821831933751298
-
Pwning Pixel 6 with a leftover patch
https://github.blog/2023-04-06-pwning-pixel-6-with-a-leftover-patch/ ⭐⭐
-
Pwning the all Google phone with a non-Google bug
https://github.blog/2023-01-23-pwning-the-all-google-phone-with-a-non-google-bug/ ⭐⭐
-
Pwning Windows Ancillary Function Driver (Afd.sys)
https://securityintelligence.com/posts/patch-tuesday-exploit-wednesday-pwning-windows-ancillary-function-driver-winsock/ ⭐⭐
-
Raw Water: Quenching Your Thirst for SQL Injection
https://nautilus.institute/blog/2023/raw-water/
-
RCE via LDAP Truncation on Hg.mozilla.org
https://0day.click/recipe/pash/
-
Remote code execution in OpenSSH’s forwarded SSH-agent
https://blog.qualys.com/vulnerabilities-threat-research/2023/07/19/cve-2023-38408-remote-code-execution-in-opensshs-forwarded-ssh-agent ⭐⭐
-
Remote Code Execution in Tutanota Desktop Due to Code Flaw
https://www.sonarsource.com/blog/remote-code-execution-in-tutanota-desktop-due-to-code-flaw/ ⭐
-
Remote code execution vulnerability in Google they are not willing to fix
https://giraffesecurity.dev/posts/google-remote-code-execution/
-
Researchers watched 100 hours of hackers hacking honeypot computers
https://techcrunch.com/2023/08/09/researchers-watched-100-hours-of-hackers-hacking-honeypot-computers/
-
Review: Beepy a Palm-Sized Linux Hacking Playground
https://hackaday.com/2023/08/07/review-beepy-a-palm-sized-linux-hacking-playground/
-
Rezilion Uncovers New Details of Google Chrome 0-Day Vuln (CVE-2023-4863)
~~https://www.rezilion.com/blog/rezilion-researchers-uncover-new-details-on-severity-of-google-chrome-zero-day-vulnerability-cve-2023-4863/~~
-
Root CVE: Linux kernel use-after-free in Netfilter nf_tables
https://www.openwall.com/lists/oss-security/2023/05/08/4 ⭐⭐
-
Roundcube 0-day vulnerability in the wild
https://arstechnica.com/security/2023/10/pro-russia-hackers-target-inboxes-with-0-day-in-webmail-app-used-by-millions/
-
SandboxEscaper is selling two Windows 0-days (RCE / LPE)
~~https://github.com/SandboxEscaper/0day_for_sale~~
-
Shell in the Ghost: Ghostscript CVE-2023-28879 writeup
https://offsec.almond.consulting/ghostscript-cve-2023-28879.html
-
Short writeup on challenges of LLMs in May 2023
https://theblackcat102.github.io/short-writeup-on-challenges-of-llms/
-
SQL Injection in 3CX CRM Integration
https://cve-2023-49954.github.io/
-
SQL Injection on Freshports.org
https://news.freshports.org/2023/03/24/sql-inejection-issues-fixed/
-
SQL Injection: Something Scary (2013)
https://www.itprotoday.com/sql-injection-something-really-scary
-
SSH authentication bypass in VMware Aria Operations
https://www.vmware.com/security/advisories/VMSA-2023-0018.html
-
SSH ProxyCommand == unexpected code execution (CVE-2023-51385)
https://vin01.github.io/piptagole/ssh/security/openssh/libssh/remote-code-execution/2023/12/20/openssh-proxycommand-libssh-rce.html
-
StackRot (CVE-2023-3269): Linux kernel privilege escalation vulnerability
https://github.com/lrh2000/StackRot ⭐⭐
-
Synology NAS DSM Account Takeover: When Random Is Not Secure
https://claroty.com/team82/research/synology-nas-dsm-account-takeover-when-random-is-not-secure
-
Taking Over Booking.com by abusing social login
https://salt.security/blog/traveling-with-oauth-account-takeover-on-booking-com
-
Telegram vulnerability found and SQL injection

-
The Google 0-day all Infostealer groups are exploiting
https://www.infostealers.com/article/the-0-day-all-infostealer-groups-are-exploiting/
-
The MOVEit Transfer exploitation is not just SQL injection
https://twitter.com/_JohnHammond/status/1665898849314164736
-
The stories of teenage hacking are sensationalized
https://twitter.com/ErrataRob/status/1738022454767882537
-
The TED2 Conference Writeup, 22 Years Later – 11 Years Later
http://brianstorms.com/2012/08/the-ted2-conference-writeup----22-years-later.html
-
Threat Actors Exploiting Citrix CVE-2023-3519 to Implant Webshells
https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-201a
-
Turning a boring file move into a privilege escalation on Mac
https://pwn.win/2023/10/28/file-move-privesc-mac.html
-
Twitter XSS + CSRF Vulnerability Exposes Account Takeover Risk
https://twitter.com/shoucccc/status/1734802168723734764
-
Two U.S. men charged in 2022 hacking of DEA portal
https://krebsonsecurity.com/2023/03/two-us-men-charged-in-2022-hacking-of-dea-portal/
-
Victims of MOVEit SQL injection zero-day mount up
https://www.computerweekly.com/news/366539413/Victims-of-MOVEit-SQL-injection-zero-day-mount-up
-
WebP 0-Day: How to Identify Apps Vulnerable to CVE-2023-5129
https://www.ninjaone.com/blog/webp-0-day-how-to-identify-vulnerable-apps-cve-2023-5129/
-
Why SQL template tags are not vulnerable to SQL injection attacks
https://neon.tech/blog/sql-template-tags
-
Windows Hello Fingerprint Authentication Bypassed on Popular Laptops
https://www.securityweek.com/windows-hello-fingerprint-authentication-bypassed-on-popular-laptops/
-
Windows Hello: Remote Code Execution Vulnerability (CVE-2023-32018)
https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-32018
-
Windows Privilege Escalation Vulnerability – Doyensec
https://blog.doyensec.com/2023/03/21/windows-installer.html ⭐⭐
-
Writeup of Some Draw.io CVEs
https://lude.rs/h4ck1ng/draw.io_cves.html
-
Writeup: AWS API Gateway header smuggling and cache confusion
https://securityblog.omegapoint.se/en/writeup-apigw/
-
Writeup: Git Arbitrary Configuration Injection (CVE-2023-29007)
https://blog.ethiack.com/en/blog/git-arbitrary-configuration-injection-cve-2023-29007
-
X.org Security Advisory: X.org Server Overlay Window Use-After-Free
https://lists.x.org/archives/xorg-announce/2023-March/003374.html
-
XSS via SQL Injection, or Bypassing Cloudflare WAF
https://www.ukusormus.com/bypassing-cloudflare-waf-xss-via-sql-injection/
-
Zero Click Facebook Account Takeover and Two-Factor Authentication Bypass
https://medium.com/@yaala/account-takeover-and-two-factor-authentication-bypass-de56ed41d7f9
-
Zero-days for hacking WhatsApp are now worth millions of dollars
https://techcrunch.com/2023/10/05/zero-days-for-hacking-whatsapp-are-now-worth-millions-of-dollars/
-
“Mass Owning of Seedboxes – A Live Hacking Exhibition” Anon, Hacker
https://forum.defcon.org/node/245760
-

### 2022 — 183 writeups

$10k reward for hacking GitHub Actions
https://www.vladionescu.me/posts/how-i-became-a-hacker/
-
31337$ bounty won, pwning Ubuntu and escaping Google's KCTF containers
https://www.willsroot.io/2022/01/cve-2022-0185.html
-
7-Zip up to 21.07 on Windows allows privilege escalation and command execution
https://github.com/kagancapar/CVE-2022-29072 ⭐⭐
-
A Powerful Clipboard: Analysis of a Samsung in-the-wild exploit chain
https://googleprojectzero.blogspot.com/2022/11/a-very-powerful-clipboard-samsung-in-the-wild-exploit-chain.html ⭐
-
A Saudi woman's iPhone revealed hacking around the world
https://www.reuters.com/technology/how-saudi-womans-iphone-revealed-hacking-around-world-2022-02-17/
-
A short writeup about my most recent generative art release: Gradient Ascent
https://frankforce.com/gradient-ascent-generative-space-posters/
-
A tale of a simple Apple kernel bug
https://pwning.systems/posts/easy-apple-kernel-bug/
-
Abusing functionality to exploit a super SSRF in Jira Server (CVE-2022-26135)
https://blog.assetnote.io/2022/06/26/exploiting-ssrf-in-jira/ ⭐⭐
-
Account Takeover and Malicious Replacement of Ctx Project
https://python-security.readthedocs.io/pypi-vuln/index-2022-05-24-ctx-domain-takeover.html
-
Actively-exploited, unpatched, remote code execution in Atlassian Confluence
https://bugalert.org/content/notices/2022-06-02-confluence.html?src=tw
-
Advanced warning: probable remote code execution in Spring
https://bugalert.org/content/notices/2022-03-29-spring.html
-
An unexpected Redis sandbox escape affecting Debian-based distros
https://www.ubercomp.com/posts/2022-01-20_redis_on_debian_rce ⭐⭐
-
Apiiro team uncovers 0-day vulnerability in Argo CD
https://apiiro.com/blog/malicious-kubernetes-helm-charts-can-be-used-to-steal-sensitive-information-from-argo-cd-deployments/
-
Atlassian fixes critical Jira authentication bypass vulnerability
https://nvd.nist.gov/vuln/detail/CVE-2022-0540
-
Australia's online account takeover powers now in use
https://www.itnews.com.au/news/home-affairs-says-online-account-takeover-powers-now-in-use-575279
-
Authentication bypass bug in Nextauth.js could allow email account takeover
https://portswigger.net/daily-swig/authentication-bypass-bug-in-nextauth-js-could-allow-email-account-takeover ⭐⭐
-
Automatically Reversing Account Takeovers
https://www.brightball.com/articles/automatically-reversing-account-takeovers
-
Bd-jb: Blu-ray Disc Java Sandbox Escape affecting PlayStations 3, 4 and 5
https://twitter.com/theflow0/status/1535361317535506432
-
Big Bird: killing SQL injection with graph homomorphisms
https://dustri.org/b/big-bird-killing-sqli-with-graph-homomorphisms.html
-
Buffer overflow exploitation example in vulnerable WebAssembly applications
https://blog.protekkt.com/blog/basic-webassembly-buffer-overflow-exploitation-example
-
Bypass SQL Injection #1109311
https://hackerone.com/reports/1224660 ⭐⭐
-
Checkmk: Remote Code Execution by Chaining Multiple Bugs (2/3)
https://blog.sonarsource.com/checkmk-rce-chain-2/ ⭐
-
Chokuretsu ROM Hacking Challenges Part 1 – Cracking a Compression Algorithm
https://haroohie.club/blog/2022-10-19-chokuretsu-compression/
-
Chrome 0-Day Exploit targeted by NK
https://arstechnica.com/information-technology/2022/03/north-korean-hackers-unleashed-chrome-0-day-exploit-on-hundreds-of-us-targets/
-
Cisco Wireless LAN Controller Interface Authentication Bypass Vulnerability
https://tools.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-wlc-auth-bypass-JRNhV4fF
-
Cisco won’t fix authentication bypass zero-day in EOL routers
https://www.bleepingcomputer.com/news/security/cisco-won-t-fix-authentication-bypass-zero-day-in-eol-routers/
-
Code execution 0-day in Windows has been under active exploit for 7 weeks
https://arstechnica.com/information-technology/2022/05/code-execution-0day-in-windows-has-been-under-active-exploit-for-7-weeks/
-
Companies are hacking their way around the chip shortage
https://www.wired.com/story/chip-shortage-hacks/
-
Critical Gitlab vulnerability let attackers take over accounts
https://www.bleepingcomputer.com/news/security/critical-gitlab-vulnerability-lets-attackers-take-over-accounts/
-
Critical Remote Code Execution Vulnerability in Spnego Security Mechanism
https://securityintelligence.com/posts/critical-remote-code-execution-vulnerability-spnego-extended-negotiation-security-mechanism/ ⭐⭐
-
CrypKey License Service Allows Privilege Escalation
~~https://www.trustwave.com/en-us/resources/blogs/spiderlabs-blog/crypkey-license-service-allows-privilege-escalation/~~
-
CVE-2021-31166: MS HTTP Protocol Stack Remote Code Execution Vulnerability
https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-31166
-
CVE-2022-1096: Type Confusion in V8, exploit exists in the wild
https://chromereleases.googleblog.com/2022/03/stable-channel-update-for-desktop_25.html
-
CVE-2022-23088 – FreeBSD Network Subsystem Remote Code Execution Vulnerability
https://www.freebsd.org/security/advisories/FreeBSD-SA-22:07.wifi_meshid.asc
-
CVE-2022-24706: Apache CouchDB Remote Privilege Escalation
https://lists.apache.org/thread/w24wo0h8nlctfps65txvk0oc5hdcnv00
-
CVE-2022-29143 Microsoft SQL Server Remote Code Execution
https://msrc.microsoft.com/update-guide/vulnerability/CVE-2022-29143
-
CVE-2022-29593 – Authentication Bypass by Capture Replay (Dingtian-DT-R002)
https://github.com/9lyph/CVE-2022-29593 ⭐⭐
-
CVE-2022-40674: libexpat before 2.4.9 has a use-after-free in xmlparse.c
https://nvd.nist.gov/vuln/detail/CVE-2022-40674
-
CVE-2022-41343: Remote Code Execuion in Dompdf library via Phar deserialization
https://tantosec.com/blog/cve-2022-41343/
-
CVE-2022-41853: Potential Remote Code Execution Vulnerability in Hsqldb
https://www.code-intelligence.com/blog/potential-remote-code-execution-in-hsqldb
-
CVE-2022–22718: Windows Print Spooler Privilege Escalation
https://research.ifcr.dk/spoolfool-windows-print-spooler-privilege-escalation-cve-2022-22718-bf7752b68d81?gif=true
-
DangZero: Efficient Use-After-Free Detection via Direct Page Table Access [pdf]
https://download.vusec.net/papers/dangzero_ccs22.pdf
-
Despite decades of hacking attacks, companies leave sensitive data unprotected
https://www.propublica.org/article/identity-theft-surged-during-the-pandemic-heres-where-a-lot-of-the-stolen-data-came-from
-
Django security releases issued: Patches potential SQL injection
https://www.djangoproject.com/weblog/2022/jul/04/security-releases/
-
Druva InSync for Mac Local Privilege Escalation
https://imhotepisinvisible.com/druva-lpe/
-
European private-sector offensive actor using 0-day exploits
https://www.microsoft.com/security/blog/2022/07/27/untangling-knotweed-european-private-sector-offensive-actor-using-0-day-exploits/
-
Exploit chain allows security researchers to pwn phone system
https://portswigger.net/daily-swig/exploit-chain-allows-security-researchers-to-pwn-phone-system ⭐⭐
-
Exploit Development: Browser Exploitation on Windows – CVE-2019-0567 (Part 1)
https://connormcgarr.github.io/type-confusion-part-1/
-
Exploit Development: No Code Execution? No Problem
https://connormcgarr.github.io/hvci/
-
Exploiting a heap overflow in the FreeBSD wi-fi stack
https://www.thezdi.com/blog/2022/6/15/cve-2022-23088-exploiting-a-heap-overflow-in-the-freebsd-wi-fi-stack ⭐
-
Exploiting a Use-After-Free for code execution in every version of Python 3
https://pwn.win/2022/05/11/python-buffered-reader.html
-
Exploiting Apache Cassandra User-Defined Functions for Remote Code Execution
~~https://jfrog.com/blog/cve-2021-44521-exploiting-apache-cassandra-user-defined-functions-for-remote-code-execution/~~
-
Exploiting CVE-2021-26708 (Linux kernel) with sshd
~~https://hardenedvault.net/2022/03/01/poc-cve-2021-26708.html~~
-
Exploiting CVE-2022-42703 – Bringing back the stack attack
https://googleprojectzero.blogspot.com/2022/12/exploiting-CVE-2022-42703-bringing-back-the-stack-attack.html ⭐
-
Exploiting PrintNightmare (CVE-2021–34527)
https://infosecwriteups.com/exploiting-printnightmare-cve-2021-34527-10c6e0f5b83f?gi=8d08f1a86b88
-
Exploiting Redash instances with CVE-2021-41192
https://ian.sh/redash ⭐⭐
-
Exploiting remote code execution within VirusTotal platform
https://www.cysrc.com/blog/virus-total-blog
-
Exploiting the Source Engine
https://ctf.re//source-engine/exploitation/reverse-engineering/2018/08/02/source-engine-1/
-
F5 BIG-IP RCE exploitation (CVE-2022-1388)
https://packetstormsecurity.com/files/167007/F5-BIG-IP-Remote-Code-Execution.html ⭐⭐
-
Fantasy Premier League football app introduces 2FA to tackle account takeover
https://portswigger.net/daily-swig/fantasy-premier-league-football-app-introduces-2fa-to-tackle-account-takeover-hacks ⭐⭐
-
FileWave MDM authentication bypass bugs expose managed devices to hijack risk
https://portswigger.net/daily-swig/filewave-mdm-authentication-bypass-bugs-expose-managed-devices-to-hijack-risk ⭐⭐
-
Finding an unseen SQL Injection by bypassing escape functions in mysqljs/MySQL
https://flattsecurity.medium.com/finding-an-unseen-sql-injection-by-bypassing-escape-functions-in-mysqljs-mysql-90b27f6542b4
-
Firefox JIT Use-After-Frees – Exploiting CVE-2020-26950
https://www.sentinelone.com/labs/firefox-jit-use-after-frees-exploiting-cve-2020-26950/
-
FORCEDENTRY: Sandbox Escape
https://googleprojectzero.blogspot.com/2022/03/forcedentry-sandbox-escape.html ⭐
-
From programmer to pwner: a zero-day journey to Pwn2Own
https://readme.security/from-programmer-to-pwner-my-zero-day-journey-to-pwn2own-c1fc6e6dd5aa
-
From Roman Numerals to APIs: The Story of How We Found Universality
https://blog.alexmaccaw.com/universality/
-
From XSS to RCE – dompdf 0-day
https://positive.security/blog/dompdf-rce
-
Fuzzing Go APIs for SQL Injection
https://blog.fuzzbuzz.io/fuzzing-go-apis-for-sql-injection/
-
Getting Root on Linux Amplifier Adds New Inputs
https://hackaday.com/2022/02/03/getting-root-on-linux-amplifier-adds-new-inputs/
-
Gitlab releases patch for remote code execution in GitHub import tool
https://about.gitlab.com/releases/2022/08/22/critical-security-release-gitlab-15-3-1-released/
-
Google Pixel 6 pwned with a 0day in kernel
https://twitter.com/Markak_/status/1544379506659663872
-
Great writeup about Personal Programming: A user-focused future of computing
https://link.springer.com/article/10.1007/s10270-019-00768-3
-
Hackers are exploiting 0-days more than ever
https://www.wired.com/story/zero-day-exploits-vulnerabilities-google-mandiant/
-
Hacking a Bank by Finding a 0day in DotCMS
https://blog.assetnote.io/2022/05/03/hacking-a-bank-using-dotcms-rce/ ⭐⭐
-
Hacking a Raspberry Pi into a Pluggable Amiga CPU
https://www.hackster.io/news/hands-on-with-the-pistorm-the-ultimate-raspberry-pi-powered-accelerator-for-your-commodore-amiga-449ef0634f3e
-
Hacking a VW Golf Power Steering ECU
https://blog.willemmelching.nl/carhacking/2022/01/02/vw-part1/
-
Hacking anything with GNU Guix
~~https://gexp.no/blog/hacking-anything-with-gnu-guix.html~~
-
Hacking around with the ScotRail audio announcements
https://simonwillison.net/2022/Aug/21/scotrail/ ⭐⭐⭐
-
Hacking attractiveness biases in hiring? The role of beautifying photo-filters
https://www.emerald.com/insight/content/doi/10.1108/MD-06-2021-0747/full/html
-
Hacking F-117A
https://github.com/debugcom/Hacking-F117A ⭐⭐
-
Hacking Google
https://h4ck1ng.google
-
Hacking Hadoukens: Reverse Engineering a Street Fighter Two Cabinet
https://wrongbaud.github.io/sf-slides/
-
Hacking Instagram Scammers and Takeover Accounts
https://infosecwriteups.com/hacking-instagram-scammers-c3392043480c
-
Hacking into the worldwide Jacuzzi SmartTub network
https://eaton-works.com/2022/06/20/hacking-into-the-worldwide-jacuzzi-smarttub-network/ ⭐⭐
-
Hacking on a plane: Leaking data of millions and taking over any account
https://rez0.blog/hacking/2022/12/02/hacking-on-a-plane.html
-
Hacking Perl in Nightclubs (2004)
https://www.perl.com/pub/2004/08/31/livecode.html/
-
Hacking Photosynthesis
~~https://www.codonmag.com/p/hacking-photosynthesis~~
-
Hacking Reolink cameras for fun and profit (2020)
https://www.thirtythreeforty.net/posts/2020/05/hacking-reolink-cameras-for-fun-and-profit/
-
Hacking sum types with Go generics
https://blog.lawrencejones.dev/go-sum-type/
-
Hacking the Apple Webcam (Again)
https://www.ryanpickren.com/safari-uxss
-
Hacking the bureaucracy to get stuff done (2020)
https://www.zainrizvi.io/blog/hacking-the-bureaucracy-to-get-stuff-done/
-
Hacking the PS4 / PS5 Through the PS2 Emulator
https://cturt.github.io/mast1c0re.html ⭐
-
Hacking the S-100 Bus
https://www.glitchwrks.com/s100.html
-
Hacking Upstream: Finding a 0-Day in an OpenSSH Key Parser Library
https://www.arnica.io/blog/hacking-upstream-finding-a-0-day-in-an-openssh-key-parser-library
-
Hacking Your Dishwasher
https://trmm.net/homeconnect/
-
HackTheBox: A Hacking Playground
https://www.hackthebox.com/
-
Hitchhiker's Guide to SQL Injection Prevention
https://phpdelusions.net/sql_injection
-
Horde Webmail 5.2.22 – Account Takeover via Email
https://blog.sonarsource.com/horde-webmail-account-takeover-via-email/ ⭐
-
How can I explain SQL injection without technical jargon? (2012)
https://security.stackexchange.com/a/25710
-
How I found my tech mentor
https://viggy28.dev/article/how-i-found-my-mentor/
-
How I hacked CTX and PHPass – DOES NOT contain any malicious activity
https://sockpuppets.medium.com/how-i-hacked-ctx-and-phpass-modules-656638c6ec5e
-
How to earn money by hacking a “walking for money” app
https://www.deadf00d.com/post/how-to-earn-money-by-hacking-a-walking-for-money-app.html ⭐
-
How We Hacked the Kicksharing
https://prog.world/how-we-hacked-the-kicksharing/
-
I Am a SQL Injection Attack
https://buttondown.email/hillelwayne/archive/i-am-a-sql-injection-attack-5019/
-
I got pwned by my cloud costs
https://www.troyhunt.com/how-i-got-pwned-by-my-cloud-costs/ ⭐⭐⭐
-
I hacked a vanity address generated with Profanity on MacBook
https://medium.com/@rebryk/how-to-hack-a-vanity-address-generated-with-profanity-ffad61ecacd2
-
I hacked an ESA experimental satellite (HackCYSAT writeup)
https://www.deadf00d.com/post/how-to-hack-an-esa-experimental-satellite.html#hn ⭐
-
I hacked my car
https://programmingwithstyle.com/posts/howihackedmycar/
-
I Hacked My Car Guides: Creating Custom Firmware
https://programmingwithstyle.com/posts/howihackedmycarguidescreatingcustomfirmware/
-
I hacked my way to the top of DARPA’s hardware bug bounty
https://readme.security/how-i-hacked-my-way-to-the-top-of-darpas-hardware-bug-bounty-b66ec53b1973?gi=a7ccdd362548
-
I hacked SONOS and YouTube the same day
https://www.deadf00d.com/post/how-i-hacked-sonos-and-youtube-the-same-day.html ⭐
-
I reversed a Node.js malware and found the author
https://medium.com/@devops-guy/how-i-reversed-a-nodejs-malware-and-found-the-author-7dd9531b389f
-
Instagram account takeover via React debug.keystore
https://www.vulnano.com/2022/07/react-debugkeystore-key-was-trusted-by.html
-
Jira Security Advisory 2022-04-20 (authentication bypass)
https://confluence.atlassian.com/jira/jira-security-advisory-2022-04-20-1115127899.html
-
Jira Server and Jira Data Center CVE-2022-0540 – Authentication Bypass in Seraph
https://community.atlassian.com/t5/Jira-articles/Jira-Server-and-Jira-Data-Center-CVE-2022-0540-Authentication/ba-p/2006104
-
Knex.js SQL injection vulnerability, unpatched for 6 years
https://github.com/knex/knex/issues/1227 ⭐⭐
-
Latest WordPress security release fixes XSS, SQL injection bugs
https://portswigger.net/daily-swig/latest-wordpress-security-release-fixes-xss-sql-injection-bugs ⭐⭐
-
LibJS Exploitation: 'Broobwser' Writeup
https://0xbigshaq.github.io/2022/12/08/broobwser/
-
Linux Kernel Ksmbd Use-After-Free Remote Code Execution Vulnerability
https://www.zerodayinitiative.com/advisories/ZDI-22-1690/ ⭐
-
Linux Kernel privilege escalation to root with use-after-free write in netfilter
https://www.openwall.com/lists/oss-security/2022/05/31/1 ⭐⭐
-
Linux Kernel Use-After-Free (CVE-2021-23134) PoC
~~https://ruia-ruia.github.io/NFC-UAF/~~
-
Linux Kernel: Exploiting a Netfilter Use-After-Free in Kmalloc-Cg
https://blog.exodusintel.com/2022/12/19/linux-kernel-exploiting-a-netfilter-use-after-free-in-kmalloc-cg/ ⭐
-
Linux Privilege Escalation
https://tbhaxor.com/linux-privilege-escalation/
-
Linux: Vulnerabilities in nf_tables cause privilege escalation, information leak
https://lwn.net/ml/oss-security/1b176761-5462-4f25-db12-1b988c81c34a@gmail.com/
-
Local Privilege Escalation Vulnerability Discovered snap-confine(CVE-2021-44731)
https://blog.qualys.com/vulnerabilities-threat-research/2022/02/17/oh-snap-more-lemmings-local-privilege-escalation-vulnerability-discovered-in-snap-confine-cve-2021-44731 ⭐⭐
-
Local privilege escalation vulnerability in polkit’s pkexec
https://www.sesin.at/2022/01/25/local-privilege-escalation-vulnerability-in-polkits-pkexec-cve-2021-4034-tue-jan-25th/
-
Locked out of 'God Mode', runners are hacking their treadmills
https://www.wired.com/story/nordictrack-ifit-treadmill-privilege-mode/
-
macOS SUHelper Root Privilege Escalation Vulnerability: CVE-2022-22639
https://www.trendmicro.com/en_us/research/22/d/macos-suhelper-root-privilege-escalation-vulnerability-a-deep-di.html
-
Mass account takeover in the Yunmai smarts cale API
https://www.fortbridge.co.uk/research/mass-account-takeover-yunmai/
-
MiraclePtr or how chromium protects against use-after-frees
https://docs.google.com/presentation/d/1Faou7_Jxu03uPbVne5JYiUpx7q_w20wwNYw2pViHK80/edit#slide=id.g121ebf81d04_0_122
-
Mozilla patches two use-after-free vulnerabilities (ab)used in the wild
https://www.mozilla.org/en-US/security/advisories/mfsa2022-09/
-
Mozilla VPN Local Privilege Escalation
https://www.mozilla.org/en-US/security/advisories/mfsa2022-08/
-
Multiple vulnerability leading to account takeover in TikTok SMB subdomain
https://hackerone.com/reports/1404612 ⭐⭐
-
NodeBB prototype pollution flaw could lead to account takeover
https://portswigger.net/daily-swig/nodebb-prototype-pollution-flaw-could-lead-to-account-takeover ⭐⭐
-
Operation Charlie: Hacking the MBTA CharlieCard from 2008 to Present
https://medium.com/@bobbyrsec/operation-charlie-hacking-the-mbta-charliecard-from-2008-to-present-24ea9f0aaa38
-
Packt Twitter Account Takeover (@Packtpub Twitter hacked)
https://hub.packtpub.com/twitter-account-takeover/
-
PayPal Allows Bypassing Two-Factor Authentication with a Button Click
https://medium.com/@jewbixcube/paypal-allows-bypassing-two-factor-auth-with-a-button-click-claims-its-for-your-protection-ce1d0dc9a28a
-
Pipedream: ‘Swiss Army Knife’ for Hacking Industrial Control Systems
https://www.wired.com/story/pipedream-ics-malware/
-
Playstation bd-j exploit chain
https://hackerone.com/reports/1379975 ⭐⭐
-
Please review product AuthSafe – Account takeovers fraud prevention
https://authsafe.ai/solution/account-takeover-fraud-prevention
-
Police linked to hacking campaign to frame Indian activists
https://www.wired.com/story/modified-elephant-planted-evidence-hacking-police/
-
Privilege Escalation Vulnerability in Snapd
https://ubuntu.com/security/notices/USN-4728-1
-
Project write-up: Display Spotify lyrics on external display
https://yasoob.me/posts/spotify-synced-and-translated-lyrics-display/
-
Prototype pollution in Blitz.js leads to remote code execution
https://portswigger.net/daily-swig/prototype-pollution-in-blitz-js-leads-to-remote-code-execution ⭐⭐
-
Pwning Bitcoin Based Social Media
https://github.com/wfinn/blog/blob/main/ZapRead.md ⭐⭐
-
Pwning the Bcm61650
https://blog.xilokar.info/pwning-the-bcm61650.html
-
Pwnkit: Local Privilege Escalation in polkit's pkexec
https://www.qualys.com/2022/01/25/cve-2021-4034/pwnkit.txt ⭐⭐
-
Pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)
https://seclists.org/oss-sec/2022/q1/80 ⭐⭐
-
PwnKit: Vulnerability in Polkit (CVE-2021-4034)
https://blog.qualys.com/vulnerabilities-threat-research/2022/01/25/pwnkit-local-privilege-escalation-vulnerability-discovered-in-polkits-pkexec-cve-2021-4034 ⭐⭐
-
Pwntools is a CTF framework and exploit development library
https://docs.pwntools.com/en/stable/
-
Python Tackles SQL Injection – PEP 675 – Arbitrary Literal String Type
https://peps.python.org/pep-0675/
-
Race condition in Linux perf subsystem leads to local privilege escalation
https://www.openwall.com/lists/oss-security/2022/05/20/2 ⭐⭐
-
Racing Cats to the Exit: A Boring Linux Kernel Use-After-Free
https://accessvector.net/2022/linux-itimers-uaf
-
Remote code execution in Linux kernel Bluetooth stack. Affected since 2013
https://github.com/google/security-research/security/advisories/GHSA-pf87-6c9q-jvm4 ⭐⭐
-
Remote Code Execution in pfSense
https://www.shielder.it/advisories/pfsense-remote-command-execution/ ⭐⭐
-
RHSB-2022-001 Polkit Privilege Escalation – (CVE-2021-4034)
https://access.redhat.com/security/vulnerabilities/RHSB-2022-001
-
Scapy: Low level packet hacking toolkit for Python
https://www.trickster.dev/post/scapy-low-level-packet-hacking-toolkit-for-python/
-
Silent Spring: Prototype Pollution Leads to Remote Code Execution in Node.js
https://arxiv.org/abs/2207.11171
-
Six Year Old SQL Injection Vulnerability in Knex.js
https://www.ghostccamm.com/blog/knex_sqli/
-
So long, home T1 line; hello, hacking the T1 router
http://oldvcr.blogspot.com/2022/05/so-long-home-t1-line-hello-hacking-t1.html
-
SonicWall: Patch critical SQL injection bug immediately
https://www.bleepingcomputer.com/news/security/sonicwall-patch-critical-sql-injection-bug-immediately/
-
Spring Core on JDK9 is vulnerable to remote code execution
https://www.praetorian.com/blog/spring-core-jdk9-rce/ ⭐⭐
-
Squiz Matrix CMS squashes admin account takeover bug
https://portswigger.net/daily-swig/squiz-matrix-cms-squashes-admin-account-takeover-bug ⭐⭐
-
Stealing checks worth millions and pwning a bank
https://www.jhaddix.com/post/stealing-checks-worth-millions-pwning-a-bank
-
Stop the cross-site script kiddies from pwning you
https://newsletter.param.codes/p/stop-the-cross-site-script-kiddies
-
THCon CTF Writeup – SHA-1 Exploitation, PHP LFI and RCE
https://lewin.co.il/thcon-2k22-ctf-local-card-maker-writeup/
-
The EU has quietly provided Morocco with powerful phone hacking systems [French]
https://disclose.ngo/fr/article/union-europeenne-a-discretement-fourni-au-maroc-de-puissants-systemes-de-piratage-des-telephones
-
The prototypical catastrophic AI action is getting root access to its datacenter
https://www.lesswrong.com/posts/BAzCGCys4BkzGDCWR/the-prototypical-catastrophic-ai-action-is-getting-root
-
Thinking beyond SQL injection: OWASP tips for secure database access
https://github.blog/2022-01-27-beyond-sql-injection-owasp-tips-secure-database-access/ ⭐⭐
-
Threat Actors Exploiting Multiple CVEs Against Zimbra Collaboration Suite
https://www.cisa.gov/uscert/ncas/alerts/aa22-228a
-
TrendNET AC2600 Remote Code Execution via WAN
https://medium.com/tenable-techblog/trendnet-ac2600-rce-via-wan-8926b29908a4
-
Uncovering a macOS App Sandbox escape vulnerability
https://www.microsoft.com/security/blog/2022/07/13/uncovering-a-macos-app-sandbox-escape-vulnerability-a-deep-dive-into-cve-2022-26706/
-
Use-after-free and out of bounds fixes in Chrome 99
https://chromereleases.googleblog.com/2022/03/stable-channel-update-for-desktop.html
-
Use-After-Freedom: MiraclePtr
https://security.googleblog.com/2022/09/use-after-freedom-miracleptr.html
-
VMware Urges Users to Patch Critical Authentication Bypass Bug
https://threatpost.com/vmware-patch-critical-bug/180346/
-
Vuln in Vm2 Sandbox Module Enables Remote Code Execution (CVE-2022-36067)
https://www.oxeye.io/blog/vm2-sandbreak-vulnerability-cve-2022-36067
-
Web hacking techniques of 2021
https://portswigger.net/research/top-10-web-hacking-techniques-of-2021 ⭐⭐
-
WhatsApp Remote Code Execution in Video Call
https://nvd.nist.gov/vuln/detail/CVE-2022-36934
-
WordPress theme Jupiter patches critical privilege escalation flaw
https://portswigger.net/daily-swig/wordpress-theme-jupiter-patches-critical-privilege-escalation-flaw ⭐⭐
-
Write-up of a project to reduce pager load
https://incident.io/blog/reducing-our-pager-load/
-
WSJ reports Meta security guards perform account takeovers
https://www.theverge.com/2022/11/17/23464297/meta-allegedly-fired-contractors-employees-oops-account-recovery-abuse
-
X.org Server Hit by New Local Privilege Escalation, Remote Code
https://www.phoronix.com/scan.php?page=news_item&px=X.Org-July-12-Security
-
Zabbix SAML Authentication Bypass (CVE-2022-23131) and more
https://blog.sonarsource.com/zabbix-case-study-of-unsafe-session-storage/ ⭐
-

### 2021 — 187 writeups

$25000 IRS Penalty to Startups with non-US Co-founders, and how I got off
https://www.jdsupra.com/legalnews/penalty-of-25-000-for-foreigners-with-a-36597/
-
$8k Bug Bounty Highlight: XSS to RCE in the Opera Browser
https://blogs.opera.com/security/2021/09/8000-bug-bounty-highlight-xss-to-rce-in-the-opera-browser/
-
(Un)signed commits: how we found a (non) security bug in GitHub
https://blog.mergify.io/un-signed-commits-how-we-found-a-non-security-bug-in-github/
-
0-Day Vulnerability on Log4j
https://blog.sonatype.com/a-new-0-day-log4j-vulnerability-discovered-in-the-wild
-
0day Exploit in Log4j
https://access.redhat.com/security/cve/cve-2021-44228
-
0day Exploit on iOS 14.6 WebKit
https://twitter.com/ihackbanme/status/1403188846238461952
-
0day Exploit Root Cause Analyses (updated 7 new exploits discovered in the wild)
https://googleprojectzero.blogspot.com/p/rca.html ⭐
-
A Journey from JNDI/LDAP Manipulation to Remote Code Execution Dream Land
https://infocondb.org/con/black-hat/black-hat-usa-2016/a-journey-from-jndildap-manipulation-to-remote-code-execution-dream-land
-
A Journey from JNDI/LDAP Manipulation to Remote Code Execution Dreamland [video] (2016)
https://archive.org/details/youtube-Y8a5nB-vy78
-
A one-bit processor explained: reverse-engineering the vintage MC14500B
https://www.righto.com/2021/02/a-one-bit-processor-explained-reverse.html ⭐⭐
-
A reference counting bug which leads to local privilege escalation in io_uring
https://flattsecurity.medium.com/cve-2021-20226-a-reference-counting-bug-which-leads-to-local-privilege-escalation-in-io-uring-e946bd69177a
-
Account takeover fraud is up 378% since Covid-19 started
https://datadome.co/resources/account-takeover/
-
Account Takeover Protection and WAF to Help Stop Global Brute Force Campaigns
https://blog.cloudflare.com/patching-the-internet-against-global-brute-force-campaigns/ ⭐⭐
-
An Introduction to Linux Kernel Exploitation
https://pwning.systems/posts/an-introduction-to-kernel-exploitation-part1
-
An update on 0day CVE-2021-43798: Grafana directory traversal
https://grafana.com/blog/2021/12/08/an-update-on-0day-cve-2021-43798-grafana-directory-traversal/
-
Another 0-day looms for many Western Digital users
https://krebsonsecurity.com/2021/07/another-0-day-looms-for-many-western-digital-users/
-
Ansible Red Hat detector Remote Code Execution – Log4j (CVE-2021-44228)
https://github.com/lucab85/log4j-cve-2021-44228 ⭐⭐
-
Apache Beam for Search: Getting Started by Hacking Time
https://shopify.engineering/apache-beam-for-search-getting-started-by-hacking-time
-
Apple 0-Day in the Wild
https://twitter.com/ryanaraine/status/1354156225408065536
-
Attacks on Wireless Coexistence: Inter-Chip Privilege Escalation
https://arxiv.org/abs/2112.05719
-
Auditing PassRole: A Problematic Privilege Escalation Permission
https://ermetic.com/whats-new/blog/auditing-passrole-a-problematic-privilege-escalation-permission/
-
Australian Police get online account takeover, data disruption powers
https://www.itnews.com.au/news/police-get-online-account-takeover-data-disruption-powers-569062
-
AWS Account Takeover via Log4Shell
~~https://www.gigasheet.co/post/aws-account-takeover-via-log4shell~~
-
Azure Functions Weakness Allows Privilege Escalation
https://threatpost.com/azure-functions-privilege-escalation/165307/
-
Bad Pods: Kubernetes Pod Privilege Escalation
https://labs.bishopfox.com/tech-blog/bad-pods-kubernetes-pod-privilege-escalation ⭐⭐
-
Belarusian dictator pwned by “cyber-partisans”
https://pluralistic.net/2021/08/25/taxes-are-for-the-little-stores/#cyber-partisans
-
Bitcoin: Remote Code Execution Through API
https://realkeyboardwarrior.github.io/security/2021/10/06/pwning-bitcoind-to-rce.html
-
Blackswan – Multiple 0day priv esc vulnerabilities in Windows
https://fieldeffect.com/blackswan/
-
Blender website under maintenance due to hacking attempt
https://twitter.com/Blender/status/1371273322399404038
-
Bob Cassette Rewinder: Hacking Detergent DRM
https://github.com/dekuNukem/bob_cassette_rewinder ⭐⭐
-
Brizy WordPress Plugin Exploit Chains Allow Full Site Takeovers
https://threatpost.com/brizy-wordpress-plugin-exploit-site-takeovers/175463/
-
ChaosDB: We hacked thousands of Azure customers’ databases
https://www.wiz.io/blog/chaosdb-how-we-hacked-thousands-of-azure-customers-databases ⭐⭐
-
Check Your Pulse: Attackers Leverage Authentication Bypass and Pulse Secure 0Day
https://www.fireeye.com/blog/threat-research/2021/04/suspected-apt-actors-leverage-bypass-techniques-pulse-secure-zero-day.htmlhttps://www.fireeye.com/blog/threat-research/2021/04/suspected-apt-actors-leverage-bypass-techniques-pulse-secure-zero-day.html
-
Chrome CVE-2021-21148 0-day bug
https://chromereleases.googleblog.com/2021/02/stable-channel-update-for-desktop_4.html
-
Cisco RV34X Series – Authentication Bypass and Remote Command Execution
~~https://www.iot-inspector.com/blog/advisory-cisco-rv34x-authentication-bypass-remote-command-execution/~~
-
CLHS: Issue Pathname-Subdirectory-List Writeup
http://www.lispworks.com/documentation/HyperSpec/Issues/iss263_w.htm
-
Cloudflare's Log4j RCE 0-day mitigation – CVE-2021-44228
https://blog.cloudflare.com/cve-2021-44228-log4j-rce-0-day-mitigation/ ⭐⭐
-
Combating E-Commerce Scams and Account Takeover Attacks
https://about.fb.com/news/2021/06/combating-e-commerce-scams-and-account-takeover-attacks/
-
Created My First Digital Product: Time Hacking Formula [E-Book]

-
Current 0-day vulnerability on FreePBX
https://community.freepbx.org/t/0-day-freepbx-exploit/80092
-
Cve-2018-1160 Writeup
https://medium.com/@kevin.massey1189/cve-2018-1160-writeup-936b5e3b3cf2
-
CVE-2020-10148 SolarWinds Orion API authentication bypass allows remote comand e
https://kb.cert.org/vuls/id/843464
-
CVE-2020-15228 redux: Azure DevOps Pipelines RCE
https://pricey.uk/blog/ado-pipelines-remote-code-execution/
-
CVE-2020-9492 Apache Hadoop Potential privilege escalation
http://mail-archives.apache.org/mod_mbox/www-announce/202101.mbox/%3CCAP%2B3qq6eDjjZG-G03RFRj9rrG4r1u%3D891UUEU2S8fbOCKTe4QA%40mail.gmail.com%3E
-
CVE-2021-1048: refcount increment on mid-destruction file
~~https://googleprojectzero.github.io/0days-in-the-wild/0days-in-the-wild/0day-RCAs/2021/CVE-2021-1048.html~~
-
CVE-2021-1815 – macOS local privilege escalation via Preferences
https://www.offensive-security.com/offsec/macos-preferences-priv-escalation/
-
CVE-2021-22555: Turning \x00\x00 into 10000$
https://google.github.io/security-research/pocs/linux/cve-2021-22555/writeup.html
-
CVE-2021-24112 – .NET Core Remote Code Execution Vulnerability
https://msrc.microsoft.com/update-guide/en-us/vulnerability/CVE-2021-24112
-
CVE-2021-26701 – .NET Core Remote Code Execution Vulnerability
https://github.com/dotnet/runtime/issues/49377 ⭐⭐
-
CVE-2021-26900: Privilege Escalation via Use After Free Vulnerability in Win32k
https://www.zerodayinitiative.com/blog/2021/5/3/cve-2021-26900-privilege-escalation-via-a-use-after-free-vulnerability-in-win32k ⭐
-
CVE-2021-27135: xterm flaw may allow remote code execution, CVSS 9.6
https://nvd.nist.gov/vuln/detail/CVE-2021-27135
-
CVE-2021-30481: Source engine remote code execution via game invites
https://secret.club/2021/04/20/source-engine-rce-invite.html
-
CVE-2021-30481: Steam remote arbitrary code execution through invite link
https://nvd.nist.gov/vuln/detail/CVE-2021-30481
-
CVE-2021-31166 – Windows HTTP Protocol Stack Remote Code Execution Vulnerability
https://msrc.microsoft.com/update-guide/en-US/vulnerability/CVE-2021-31166
-
CVE-2021-3156: Sudo privilege escalation
https://cve.mitre.org/cgi-bin/cvename.cgi?name=2021-3156
-
CVE-2021-31956 Exploiting the Windows Kernel (NTFS with WNF) – Part 1
https://research.nccgroup.com/2021/07/15/cve-2021-31956-exploiting-the-windows-kernel-ntfs-with-wnf-part-1/ ⭐
-
CVE-2021-32606: CAN ISOTP local privilege escalation
https://github.com/nrb547/kernel-exploitation/blob/main/cve-2021-32606/cve-2021-32606.md ⭐⭐
-
Dependency Confusion: How I Hacked Into Apple, Microsoft and Other Companies
https://medium.com/@alex.birsan/dependency-confusion-4a5d60fec610
-
Detailed Report on Local Privilege Escalation in Ubuntu Desktop (Pwn2Own 2021)
https://flatt.tech/reports/210401_pwn2own/
-
Detect SQL Injections with Pixie
https://blog.px.dev/sql-injection/
-
Duo Two-Factor Authentication Bypass
https://sensepost.com/blog/2021/duo-two-factor-authentication-bypass/
-
Dutch Security Researcher Receives Award for Hacking Dutch Tax Authority
https://twitter.com/SchizoDuckie/status/1474087696247279626
-
End User Security: Account Takeover Protections with Cloudflare
https://blog.cloudflare.com/account-takeover-protection/ ⭐⭐
-
Ephemeral-iam: GCP self-service privilege escalation utility
https://github.com/rigup/ephemeral-iam ⭐⭐
-
Epik CEO’s live video response to hacking incident descends into complete chaos
~~https://www.dailydot.com/debug/epik-ceos-live-video-response-hacking-inciden/~~
-
Ethical Hacking: SQL Injection for Beginners
https://www.udemy.com/course/sql-injection-tutorial/
-
European startups hacking the ageing process
https://sifted.eu/articles/european-longevity-startups/
-
Exploit Chains in the Simos18 Engine Control Unit
https://github.com/bri3d/VW_Flash/blob/master/docs/docs.md ⭐⭐
-
Exploiting a zero-day WebAssembly Vulnerability (CVE-2021-30734) in macOS Safari
https://blog.ret2.io/2021/06/02/pwn2own-2021-jsc-exploit/ ⭐
-
Exploiting and Mitigating CVE-2021-44228: Log4j Remote Code Execution (RCE)
https://sysdig.com/blog/exploit-detect-mitigate-log4j-cve/ ⭐⭐
-
Exploiting CVE-2014-3153 (Towelroot)
https://elongl.github.io/exploitation/2021/01/08/cve-2014-3153.html
-
Exploiting CVE-2021-21225 and disabling W^X (Chrome Renderer RCE)
https://tiszka.com/blog/CVE_2021_21225_exploit.html
-
Exploiting vulnerabilities in Cellebrite UFED and Physical Analyzer
https://signal.org/blog/cellebrite-vulnerabilities/
-
Exploiting Windows RPC to bypass CFG mitigation: analysis of CVE-2021-26411 in
https://iamelli0t.github.io/2021/04/10/RPC-Bypass-CFG.html
-
Finding Privilege Escalation Vulnerabilities in Windows Using Process Monitor
~~https://vuls.cert.org/confluence/display/Wiki/Finding+Privilege+Escalation+Vulnerabilities+in+Windows+using+Process+Monitor~~
-
Flickr Account Takeover
https://security.lauritz-holtmann.de/advisories/flickr-account-takeover/
-
Four Bytes of Power: exploiting CVE-2021-26708 in the Linux kernel
https://a13xp0p0v.github.io/2021/02/09/CVE-2021-26708.html ⭐
-
Full Disclosure: DICA IMS Privilege Escalation Exploit (CVE-D33Z-NUTZ)
https://bofa.substack.com/p/a4074cd8-71ea-4c72-91a6-8da0bdd9d2d3
-
Galaxy's Meltdown – Exploiting SVE-2020-18610, a write-up
https://github.com/vngkv123/articles/blob/main/Galaxy%27s%20Meltdown%20-%20Exploiting%20SVE-2020-18610.md ⭐⭐
-
Getting root on a 4G LTE mobile hotspot
https://alex.studer.dev/2021/01/04/mw41-1
-
Ghostscript 0-day exploit using malformed SVG
https://therecord.media/ghostscript-zero-day-allows-full-server-compromises/
-
Google Chrome Zero Day CVE-2021-4102, Use after free in V8
https://chromereleases.googleblog.com/2021/12/stable-channel-update-for-desktop_13.html
-
Google results for PHP tutorials contain SQL injection vulnerabilities
https://waritschlager.de/sqlinjections-in-google-results.html
-
Guix SD: risk of local privilege escalation via setuid programs
https://guix.gnu.org/blog/2021/risk-of-local-privilege-escalation-via-setuid-programs/
-
Hacking a $200 Under Desk Exercise Bike
https://codaris.github.io/UnderDeskBike/
-
Hacking a PC sound card to read temperature and liquid level sensors
https://nagimov.me/post/measure-with-music-how-to-read-analog-sensors-using-a-pc-sound-card/
-
Hacking around on the telephone, the internet before the internet
https://madned.substack.com/p/wardialing-and-other-phoney-stuff
-
Hacking Bitcoind RPC to Remote Code Execution
https://twitter.com/Keyb0ardWarr10r/status/1445546553926508547
-
Hacking CD/DVD/Blu-ray for Biosensing (2018)
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6066758/
-
Hacking group says it has found encryption keys needed to unlock the PS5
https://arstechnica.com/gaming/2021/11/uncovered-ps5-encryption-keys-are-the-first-step-to-unlocking-the-console/
-
Hacking Habit Development with iOS Shortcuts
https://kylewill.blog/hacking-habit-development/
-
Hacking Ham Radio for Texting
https://spectrum.ieee.org/ham-radio-text-hacking
-
Hacking the Git Shell Prompt
https://blog.plover.com/prog/git-prompt-hook-hack.html
-
Hacking the Go compiler to add a new keyword
https://avi.im/blag/2021/rc-day-24/
-
Hacking the planet with Notcurses: a guide to TUIs (2020) [pdf]
https://nick-black.com/htp-notcurses.pdf
-
Hacking the Silvercrest (Lidl) Smart Home Gateway
https://paulbanks.org/projects/lidl-zigbee/
-
Hacking the Sony Playstation 5
https://www.schneier.com/blog/archives/2021/11/hacking-the-sony-playstation-5.html
-
Hacking YouTube with a MP4
https://realkeyboardwarrior.github.io/security/2021/10/11/hacking-youtube.html
-
Hafnium targeting Exchange Servers with 0-day Exploits
https://www.microsoft.com/security/blog/2021/03/02/hafnium-targeting-exchange-servers/
-
History of Hacking the Nintendo 3DS [pdf]
https://courses.csail.mit.edu/6.857/2019/project/20-Chau-Ko-Tang.pdf ⭐⭐⭐
-
Hot-patch CVE-2021-44228 by exploiting the vulnerability itself
https://github.com/qingtengyun/cve-2021-44228-qingteng-online-patch ⭐⭐
-
How I found a bug in Intel Skylake processors (2017)
http://gallium.inria.fr/blog/intel-skylake-bug/
-
How I Found a Vulnerability to Hack iCloud Accounts and How Apple Reacted to It
https://thezerohack.com/apple-vulnerability-bug-bounty ⭐⭐⭐
-
How I Found Myself in the Game Industry (2013)
https://nothings.org/gamedev/how_i_found_myself_in_the_game_industry.html
-
How I hacked an office telephone to play DOOM
https://neilbostian.github.io/#/doomphone
-
How SQL Injection attack works
https://blog.guilatrova.dev/how-sql-injection-attack-works-with-examples/
-
How to Avoid SQL Injections, XSS Attacks, and File Upload Attacks in Web Apps
https://tech.ndianabasi.com/how-to-avoid-sql-injections-xss-attacks-and-file-upload-attacks-in-your-web-application
-
How to use Python for privilege escalation in Windows
https://searchsecurity.techtarget.com/feature/How-to-use-Python-for-privilege-escalation-in-Windows
-
How We Found Pricey Provisions in New Jersey Police Contracts
~~http://feeds.propublica.org/link/9499/14270330/how-we-found-pricey-provisions-in-new-jersey-police-contracts~~
-
I exploited existing YouTube videos with a fake Patreon profile
https://www.lucas03.com/how-i-exploited-existing-youtube-videos-with-a-fake-patreon-profile/
-
I Hacked Google App Engine: Anatomy of a Java Bytecode Exploit
https://blog.polybdenum.com/2021/05/05/how-i-hacked-google-app-engine-anatomy-of-a-java-bytecode-exploit.html
-
I Hacked My Standing Desk with a Raspberry Pi
https://medium.com/@davidkongfilm/how-i-hacked-my-standing-desk-with-a-raspberry-pi-a50ed14c7f6f
-
I hacked Wikipedia to make it more readable (2019) [CSS tweaks]
https://blog.usejournal.com/how-i-hacked-wikipedia-to-make-it-more-readable-5b63175034a1
-
I'd love to see a write-up of is how developers have asserted status over time
https://twitter.com/danluu/status/1423412720066514945
-
IAM Vulnerable – An AWS IAM Privilege Escalation Playground
https://labs.bishopfox.com/tech-blog/iam-vulnerable-an-aws-iam-privilege-escalation-playground ⭐⭐
-
ImageMagic/GhostScript 0-day vulnerability allows server compromise
https://borncity.com/win/2021/09/09/ghostscript-0-day-schwachstelle-ermglicht-server-bernahme/
-
Incident Writeup as Sociological Storytelling
https://surfingcomplexity.blog/2021/06/11/incident-writeup-as-sociological-storytelling/ ⭐⭐⭐
-
Interesting Privilege Escalation Vulnerability
https://www.schneier.com/blog/archives/2021/08/interesting-privilege-escalation-vulnerability.html
-
Introduction to SQL Injection
https://patchthenet.medium.com/introduction-to-sql-injection-sql-injection-for-beginners-579c00431d40
-
iOS Microsoft Teams authentication bypass vulnerability
http://ansonliu.com/2021/03/ms-teams-deauth-bug/
-
iOS WebKit RCE and LPE 0day Patch
https://support.apple.com/en-us/HT212146
-
IoT hacking and rickrolling my high school district
https://whitehoodhacker.net/posts/2021-10-04-the-big-rick
-
IP addresses exploiting Log4j CVE-2021-44228
https://gist.github.com/blotus/f87ed46718bfdc634c9081110d243166 ⭐⭐
-
Is Hacking the Next Struggle for Agriculture?
https://www.agweek.com/opinion/columns/7205478-Is-hacking-the-next-struggle-for-agriculture
-
Kernel Pwning with eBPF: A Love Story
https://www.graplsecurity.com/post/kernel-pwning-with-ebpf-a-love-story
-
Linux Privilege Escalation – Exploiting Capabilities
https://steflan-security.com/linux-privilege-escalation-exploiting-capabilities/
-
Linux Privilege Escalation – Three Easy Ways to Gain a Root Shell
https://patchthenet.medium.com/linux-privilege-escalation-three-easy-ways-to-get-a-root-shell-255a71fcf2a0
-
Local Privilege Escalation in Pi Futex Since 2008
https://nvd.nist.gov/vuln/detail/CVE-2021-3347
-
Marcus Hutchins – How I Found My First Ever ZeroDay (In RDP)
https://www.malwaretech.com/2020/12/how-i-found-my-first-ever-zeroday-in-rdp.html
-
McAfee ATR CTF Writeup
https://eu90h.github.io/atr-ctf-2021.html
-
Microsoft links SolarWinds 0-day exploit with hacker group in China
https://www.microsoft.com/security/blog/2021/07/13/microsoft-discovers-threat-actor-targeting-solarwinds-serv-u-software-with-0-day-exploit/
-
Microsoft researcher found Apple 0-day in March, didn’t report it
https://nakedsecurity.sophos.com/2021/07/29/microsoft-researcher-found-apple-0-day-in-march-didnt-report-it/
-
Microsoft: Protecting customers from a private-sector using 0-day exploits
https://www.microsoft.com/security/blog/2021/07/15/protecting-customers-from-a-private-sector-offensive-actor-using-0-day-exploits-and-devilstongue-malware/
-
Mitigate CVE-2021-33909 Sequoia – Linux FS privilege escalation
https://sysdig.com/blog/cve-2021-33909-sequoia-falco-linux-filesystem/ ⭐⭐
-
MP4 video 0-day exploit making the rounds on Discord
https://twitter.com/sky_evangeline/status/1356103619481894913
-
My C++ journey and how I found Synergy
https://symless.com/blog/my-cpp-journey
-
Now-fixed Linux kernel vulnerabilities enabled local privilege escalation
https://www.helpnetsecurity.com/2021/03/03/cve-2021-26708/
-
NTFS Remote Code Execution (CVE-2020-17096) Analysi
https://blog.zecops.com/vulnerabilities/ntfs-remote-code-execution-cve-2020-17096-analysis/
-
One-click account takeover vulnerabilities in Atlassian domains patched
https://www.zdnet.com/article/one-click-account-takeover-vulnerability-in-atlassian-patched/
-
Overwolf 1-Click Remote Code Execution – CVE-2021-33501
https://swordbytes.com/blog/security-advisory-overwolf-1-click-remote-code-execution-cve-2021-33501/
-
Patch immediately: VMware warns of critical remote code execution in vCenter
https://www.zdnet.com/article/patch-immediately-vmware-warns-of-critical-remote-code-execution-holes-in-vcenter
-
Pointer Safety Ideas: Comparison of Use-After-Free Mitigation Proposals
https://docs.google.com/document/d/1qsPh8Bcrma7S-5fobbCkBkXWaAijXOnorEqvIIGKzc0/edit#heading=h.mevjhs884ktt
-
Potential remote code execution in PyPI
https://blog.ryotak.me/post/pypi-potential-remote-code-execution-en/ ⭐
-
PrintNightmare (CVE-2021-1675): Remote code execution in Windows Spooler Service
~~https://github.com/afwu/PrintNightmare~~
-
Privilege Escalation Vulnerability in Windows RPC Protocol
https://labs.sentinelone.com/relaying-potatoes-dce-rpc-ntlm-relay-eop/
-
Privilege escalation with polkit: How to get root on Linux with a seven-year-ol
https://github.blog/2021-06-10-privilege-escalation-polkit-root-on-linux-with-bug/ ⭐⭐
-
Pwning an online retailer via public .git directory
https://jomo.tv/security/git-pwning-retailer
-
Pwning Home Router – Linksys WRT54G
https://elongl.github.io/exploitation/2021/05/30/pwning-home-router.html
-
Python 3.x has a buffer overflow which may lead to remote code execution
https://nvd.nist.gov/vuln/detail/CVE-2021-3177
-
RCE 0-day exploit found in log4j, a popular Java logging package
https://www.lunasec.io/docs/blog/log4j-zero-day/
-
RCE and Privilege Escalation on iOS 14
https://support.apple.com/en-vn/HT212146
-
Regional administration of Rome pwned by ransomware (Italian article)
https://www.repubblica.it/tecnologia/2021/08/02/news/ecco_perche_l_attacco_alla_regione_lazio_e_solo_l_inizio-312706378/
-
Remote code execution in cdnjs of Cloudflare
https://blog.ryotak.me/post/cdnjs-remote-code-execution-en/ ⭐
-
Remote code execution in Homebrew by compromising the official Cask repository
https://blog.ryotak.me/post/homebrew-security-incident-en/ ⭐
-
Remote Code Execution in Microsoft Office 365
https://srcincite.io/blog/2021/01/12/making-clouds-rain-rce-in-office-365.html
-
Remote Code Execution on Confluence Servers (CVE-2021-26084)
https://github.com/httpvoid/writeups/blob/main/Confluence-RCE.md ⭐⭐
-
Remote code execution, SQL injection bugs uncovered in Pentaho Business
https://portswigger.net/daily-swig/remote-code-execution-sql-injection-bugs-uncovered-in-pentaho-business-analytics-software ⭐⭐
-
RemotePotato0 – Another “Won't Fix” Windows Privilege Escalation to Domain Admin
https://github.com/antonioCoco/RemotePotato0 ⭐⭐
-
Researcher finds 5 privilege escalation vulnerabilities in Linux kernel
https://www.scmagazine.com/home/security-news/vulnerabilities/researcher-finds-5-privilege-escalation-vulnerabilities-in-linux-kernel/
-
SAP squashes SQL injection, XSS bugs in December patch round
https://portswigger.net/daily-swig/sap-squashes-sql-injection-xss-bugs-in-december-patch-round ⭐⭐
-
Scientific notation bug in MySQL left AWS WAF vulnerable to SQL injection
https://www.gosecure.net/blog/2021/10/19/a-scientific-notation-bug-in-mysql-left-aws-waf-clients-vulnerable-to-sql-injection/
-
Second Google Chrome 0day exploit dropped on Twitter this week
https://www.bleepingcomputer.com/news/security/second-google-chrome-zero-day-exploit-dropped-on-twitter-this-week/
-
Sequoia: A deep root in Linux's filesystem layer (CVE-2021-33909)
https://www.qualys.com/2021/07/20/cve-2021-33909/sequoia-local-privilege-escalation-linux.txt ⭐⭐
-
Sequoia: A Local Privilege Escalation Vulnerability in Linux’s Filesystem Layer
https://blog.qualys.com/vulnerabilities-threat-research/2021/07/20/sequoia-a-local-privilege-escalation-vulnerability-in-linuxs-filesystem-layer-cve-2021-33909 ⭐⭐
-
SHAREit Flaw Could Lead to Remote Code Execution
https://www.trendmicro.com/en_us/research/21/b/shareit-flaw-could-lead-to-remote-code-execution.html
-
SolarWinds hacking campaign puts Microsoft in hot seat
https://apnews.com/article/politics-malware-national-security-email-software-f51e53523312b87121146de8fd7c0020
-
Someone is hacking the hackers
https://gizmodo.com/someone-is-hacking-the-hackers-1846406428
-
SQL Injection via in Django-debug-toolbar
https://github.com/advisories/GHSA-pghf-347x-c2gj ⭐⭐
-
State-sponsored group targets Port of Houston using 0-day in Zoho appliance
https://therecord.media/state-sponsored-hacking-group-targets-port-of-houston-using-zoho-zero-day/
-
Sudo Exploit Writeup (CVE-2021-3156)
https://www.kalmarunionen.dk/writeups/sudo/
-
Suspected Actors Leverage Authentication Bypass and Pulse Secure Zero Day
https://www.fireeye.com/blog/threat-research/2021/04/suspected-apt-actors-leverage-bypass-techniques-pulse-secure-zero-day.html
-
T-Mobile does not allow Account Takeover Protection on prepaid plans

-
Taking over Uber accounts through voicemail
~~https://blog.assetnote.io/2021/06/27/uber-account-takeover-voicemail/~~
-
Telegram bug bounties: XSS, privacy issues, official bot exploitation and more
https://davtur19.medium.com/telegram-bug-bounties-xss-privacy-issues-official-bot-exploitation-and-more-5277fa78435
-
This Week in Security:Use-After-Free for Dummies, WiFi Cracking, and PHP-FPM
https://hackaday.com/2021/10/29/this-week-in-securityuse-after-free-for-dummies-wifi-cracking-and-php-fpm/
-
Three Former U.S. Intelligence Operatives Admit Hacking for United Arab Emirates
https://www.npr.org/2021/09/14/1037132503/us-charges-former-intelligence-operatives-hacking-for-uae
-
Turning a XSS Attack into an Account Takeover
https://pullerjsecu.medium.com/how-i-was-able-to-turn-a-xss-into-a-account-takeover-ae0c478640e7
-
Unauthenticated Remote Code Execution in Motorola Baby Monitors
https://randywestergren.com/unauthenticated-remote-code-execution-in-motorola-baby-monitors/
-
Using a SQL Injection attack to detect attackers
https://blog.thinkst.com/2021/09/a-mysql-canarytoken.html
-
Using Raspberry Pi to Practice and Prevent SQL Injection Attacks
https://www.tomshardware.com/how-to/use-raspberry-pi-sql-injection-penetration-testing
-
We Hacked Azure Functions and Escaped Docker
~~https://www.intezer.com/blog/research/how-we-hacked-azure-functions-and-escaped-docker/~~
-
Widespread exploitation of critical remote code execution in Apache Log4j
https://www.rapid7.com/blog/post/2021/12/10/widespread-exploitation-of-critical-remote-code-execution-in-apache-log4j/ ⭐⭐
-
Windows privilege escalation with Razer Installer
https://twitter.com/j0nh4t/status/1429049506021138437
-
WIP: Hacking the Nokia Fastmile (T-Mobile's 5G Gateway)
https://eddiez.me/hacking-the-nokia-fastmile/
-
WooCommerce Unauthenticated SQL Injection Vulnerability
https://blog.wpsec.com/woocommerce-unauthenticated-sql-injection-vulnerability-2/ ⭐⭐
-
WordPress security plugin Hide My WP addresses SQL injection, deactivation flaws
https://portswigger.net/daily-swig/wordpress-security-plugin-hide-my-wp-addresses-sql-injection-deactivation-flaws ⭐⭐
-
Write-Up on Building a Browser-Based Video Editor in Vanilla JavaScript
https://jott.live/markdown/mebm
-

### 2020 — 199 writeups

(Pwn2Own Tokyo 2019) Netgear R6700v3 LAN RCE write-up and exploit
https://github.com/pedrib/PoC/blob/master/advisories/Pwn2Own/Tokyo_2019/tokyo_drift/tokyo_drift.md ⭐⭐
-
0day vulnerability in firmware for HiSilicon-based DVRs, NVRs and IP cameras
https://habr.com/en/post/486856/
-
15 years later: remote code execution in qmail
https://www.qualys.com/2020/05/19/cve-2005-1513/remote-code-execution-qmail.txt ⭐⭐
-
15 years later: Remote Code Execution in qmail (CVE-2005-1513)
https://www.openwall.com/lists/oss-security/2020/05/19/8 ⭐⭐
-
A Bug on Punkbuster Server Can Be Leveraged to Remote Code Execution
https://medium.com/@prizmant/hacking-punkbuster-e22e6cf2f36e
-
A case study in overthinking: CTF writeup
https://samnaser.com/post/alternative/
-
A crash course on hacking satellites
https://nyan-sat.com/chapter0.html
-
A CVE Journey: From Crash to Local Privilege Escalation
https://iamalsaher.tech/posts/2020-02-08-cve-2019-18634/
-
A Decade of Account Takeover
https://ato.watch/2020-decade/
-
A little write-up on a 1996 compo (demomaking)
https://twitter.com/thibaut_barrere/status/1329796980978159618
-
A remote code execution vulnerability in qmail
https://lwn.net/Articles/820969/
-
A SQL injection tool for effortlessly saving time on escaping quote marks
https://www.sqltexttochar.com/
-
A tool that detects the privilege escalation vulnerabilities on windows
https://github.com/hlldz/dazzleUP ⭐⭐
-
A14 Bionic pwned by hacker Ben Sparkes
https://yalujailbreak.net/a14-pwned-ben-sparkes/
-
Abusing dynamic groups in Azure AD for privilege escalation
https://www.mnemonic.no/blog/abusing-dynamic-groups-in-azure/
-
Abusing Windows Services (Execution, Persistence and Privilege Escalation)
https://youtu.be/9wQm6jeWWgg?list=PLoEpvlpUwwkbWXz0UjwDDYb91ZpjN5ScV
-
Account Takeover via IDOR in Starbucks Singapore
http://www.kamilonurozkaleli.com/posts/starbucks-singapore-account-takeover/
-
Ackground Intelligent Transfer Service Privilege Escalation
https://packetstormsecurity.com/files/158056/Background-Intelligent-Transfer-Service-Privilege-Escalation.html ⭐⭐
-
Actor selling iOS 0day exploit chain
https://twitter.com/underthebreach/status/1231830863362609154
-
Anatomy of CVE-2019-5736, a runc container escape
https://samuel.karp.dev/blog/2019/04/a-runc-container-escape/#exploiting-it
-
Authentication bypass vulnerability in Bouncy Castle
~~https://www.synopsys.com/blogs/software-security/cve-2020-28052-bouncy-castle/~~
-
AWS Privilege Escalation Vulnerabilities
https://rhinosecuritylabs.com/aws/aws-privilege-escalation-methods-mitigation/ ⭐⭐
-
Beware of the GIF: Account Takeover Vulnerability in Microsoft Teams
https://www.cyberark.com/threat-research-blog/beware-of-the-gif-account-takeover-vulnerability-in-microsoft-teams/ ⭐⭐
-
Blind SQL Injection at Fasteditor.hema.com
https://medium.com/@jonathanbouman/blind-sql-injection-at-fasteditor-hema-com-6ac140c0d1a3
-
Bouncy Castle crypto authentication bypass vulnerability revealed
https://www.bleepingcomputer.com/news/security/bouncy-castle-crypto-authentication-bypass-vulnerability-revealed/
-
Bouncy Castle cryptography bug enables easy password brute-force and auth bypass
https://www.bleepingcomputer.com/news/security/bouncy-castle-fixes-cryptography-api-authentication-bypass-flaw/
-
Building a working custom shellcode encoder for exploit development purposes
https://voidsec.com/slae-assignment-4-custom-shellcode-encoder/ ⭐
-
CNIT 127: Exploit Development
https://samsclass.info/127/127_S20.shtml
-
Credentials hiding in plain sight or how I pwned your HTTP auth
https://0day.work/credentials-hiding-in-plain-sight-or-how-i-pwned-your-http-auth/ ⭐⭐
-
Critical Golang XML parser bugs can cause SAML authentication bypass
https://www.bleepingcomputer.com/news/security/critical-golang-xml-parser-bugs-can-cause-saml-authentication-bypass/
-
Critical Intel Active Management Technology Flaw Allows Privilege Escalation
https://threatpost.com/critical-intel-active-management-technology-flaw-allows-privilege-escalation/159036/
-
CVE 2020-2021 Pan-OS: Authentication Bypass in SAML Authentication
https://security.paloaltonetworks.com/CVE-2020-2021
-
CVE-2019-1215 Analysis of a Use After Free in Ws2ifsl
https://labs.bluefrostsecurity.de/blog/2020/01/07/cve-2019-1215-analysis-of-a-use-after-free-in-ws2ifsl/
-
CVE-2019-18683: Exploiting a Linux kernel vulnerability in the V4L2 subsystem
https://a13xp0p0v.github.io/2020/02/15/CVE-2019-18683.html ⭐
-
CVE-2020-0674: Scripting Engine Mem Corruption Vuln Being Exploited in the Wild
https://old.reddit.com/r/blueteamsec/comments/equ1hq/cve20200674_microsoft_internet_explorer_0day/
-
CVE-2020-0688: Remote Code Execution on Microsoft Exchange Server
https://www.thezdi.com/blog/2020/2/24/cve-2020-0688-remote-code-execution-on-microsoft-exchange-server-through-fixed-cryptographic-keys ⭐
-
CVE-2020-1350 – Windows DNS Server Remote Code Execution Vulnerability
https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-1350
-
CVE-2020-16898 – Windows TCP/IP Remote Code Execution Vulnerability
https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-16898
-
CVE-2020-25695 Privilege Escalation in PostgreSQL
https://staaldraad.github.io/post/2020-12-15-cve-2020-25695-postgresql-privesc/
-
CVE-2020-26217: XStream can be used for Remote Code Execution
https://x-stream.github.io/CVE-2020-26217.html
-
CVE-2020-7460: FreeBSD Kernel Privilege Escalation
https://www.thezdi.com/blog/2020/9/1/cve-2020-7460-freebsd-kernel-privilege-escalation ⭐
-
CVE-2020-8835: Linux kernel privilege escalation via improper eBPF verification
https://www.thezdi.com/blog/2020/4/8/cve-2020-8835-linux-kernel-privilege-escalation-via-improper-ebpf-program-verification ⭐
-
CVE-2020-9771 – mount_apfs TCC bypass and privilege escalation
https://theevilbit.github.io/posts/cve_2020_9771/
-
CVE-2020–14979: Local Privilege Escalation in EVGA Precision X1
https://posts.specterops.io/cve-2020-14979-local-privilege-escalation-in-evga-precisionx1-cf63c6b95896 ⭐⭐
-
CVE: 2020-14356 and 2020-25220 Linux kernel Use-After-Free bug
http://blog.pi3.com.pl/?p=720
-
CyBRICS CTF Writeup: An Adventure into Cpython Internals
https://tcode2k16.github.io/blog/posts/2020-07-27-cybrics-writeup/ ⭐
-
Drupal RCE via file upload (abc.html.txt, filename.php.gif)
https://securityreport.com/drupal-fixes-critical-remote-code-execution-vulnerability-patch-now/
-
Emergency Directive 20-03 – Remote code execution vulnerability in Windows DNS
https://cyber.dhs.gov/ed/20-03/
-
Escaping the Chrome Sandbox with RIDL
https://googleprojectzero.blogspot.com/2020/02/escaping-chrome-sandbox-with-ridl.html ⭐
-
Every startup needs a niche – here's how I found mine
https://mvpsprint.substack.com/p/step-2-even-unicorns-walk-before-they-run
-
Exploiting a Single Instruction Race Condition in Binder
https://www.longterm.io/cve-2020-0423.html
-
Exploiting a WebKit 0-day in Playstation 4
https://www.synacktiv.com/publications/this-is-for-the-pwners-exploiting-a-webkit-0-day-in-playstation-4.html ⭐
-
Exploiting an arbitrary file move in Symantec Endpoint Protection CVE-2020-5825
~~https://www.accenture.com/us-en/blogs/cyber-defense/exploiting-arbitrary-file-move-in-symantec-endpoint-protection~~
-
Exploiting Privileges via GlobalProtect, Part 1: Windows
https://www.crowdstrike.com/blog/exploiting-escalation-of-privileges-via-globalprotect-part-1/ ⭐⭐
-
Exploiting the macOS WindowServer for root (2018)
https://blog.ret2.io/2018/08/28/pwn2own-2018-sandbox-escape/ ⭐
-
Exploring macOS Calendar Alerts: Part 2 – Exfiltrating data CVE-2020-3882
https://research.nccgroup.com/2020/05/28/exploring-macos-calendar-alerts-part-2-exfiltrating-data-cve-2020-3882/ ⭐
-
Facebook Remote Code Execution via CDN ($80k Bounty)
https://www.facebook.com/506669206013977/posts/4087540111260184/
-
FF Sandbox Escape
https://googleprojectzero.blogspot.com/2020/06/ff-sandbox-escape-cve-2020-12388.html?m=1 ⭐
-
FireEye discloses breach, theft of hacking tools
https://www.reuters.com/article/us-fireeye-cyber/u-s-cybersecurity-firm-fireeye-discloses-breach-theft-of-hacking-tools-idUSKBN28I31E
-
FreeDVDBoot – Hacking the Playstation 2 through its DVD player
https://cturt.github.io/freedvdboot.html ⭐
-
From fuzzing to mms remote code execution in Android
https://medium.com/@social_62682/from-fuzzing-to-remote-code-execution-in-samsung-android-56cbdebcfeca
-
Getting Root on macOS via 3rd Party Backup Software (Druva InSync)
https://medium.com/tenable-techblog/getting-root-on-macos-via-3rd-party-backup-software-b804085f0c9
-
GitHub Gist – Account takeover via open redirect – $10k Bounty
https://devcraft.io/2020/10/19/github-gist-account-takeover.html
-
GOG Galaxy Client Local Privilege Escalation Deuce
https://www.positronsecurity.com/blog/2020-08-13-gog-galaxy_client-local-privilege-escalation_deuce/
-
Google Cloud Incident Writeup
https://status.cloud.google.com/incident/zall/20010
-
Google Project Zero Discloses Nasty Windows 0-Day Exploit Already in the Wild
https://hothardware.com/news/windows-kernel-exploit-project-zero
-
Hacking an Audi: performing a man-in-the-middle attack on FlexRay
https://medium.com/@comma_ai/hacking-an-audi-performing-a-man-in-the-middle-attack-on-flexray-2710b1d29f3f
-
Hacking Ethernet out of Fibre Channel cards
https://blog.benjojo.co.uk/post/ip-over-fibre-channel-hack
-
Hacking Grindr Accounts with Copy and Paste
https://www.troyhunt.com/hacking-grindr-accounts-with-copy-and-paste/ ⭐⭐⭐
-
Hacking on Bug Bounties for Four Years
https://blog.assetnote.io/2020/09/15/hacking-on-bug-bounties-for-four-years/ ⭐⭐
-
Hacking on Clang is surprisingly easy
https://mort.coffee/home/clang-compiler-hacking/
-
Hacking Portable Air Conditioners
https://pmarks.net/ac/
-
Hacking the Perfect Auction
https://www.npr.org/2020/11/06/932048876/hacking-the-perfect-auction
-
Hacking together a USB-C charger for a cheap Chromebook
https://blog.filippo.io/usb-c-charger-for-a-cheap-chromebook/
-
Hacking Together an E-ink Dashboard
https://healeycodes.com/hacking-together-an-e-ink-dashboard/
-
Hacking up a fix for the broken AppleTalk kernel module in Linux 5.1 and newer
https://www.downtowndougbrown.com/2020/08/hacking-up-a-fix-for-the-broken-appletalk-kernel-module-in-linux-5-1-and-newer/
-
Hacking up your own shell completion
https://feltrac.co/environment/2020/01/18/build-your-own-shell-completion.html
-
Hacking website like HN in French
https://www.journalduhacker.net/
-
Hacking with environment variables
https://www.elttam.com/blog/env/
-
Haveibeenpwned.com Pwned Our Helpdesk! GLPI 9.4.5 SQL Injection
~~https://fyr.io/2020/05/30/haveibeenpwned-com-pwned-our-helpdesk-glpi-9-4-5-sql-injection/~~
-
Hospital Ransomware Attacks Exploiting Netlogon Vulnerability
https://msrc-blog.microsoft.com/2020/10/29/attacks-exploiting-netlogon-vulnerability-cve-2020-1472/
-
How I bypassed Cloudflare's SQL Injection filter
https://www.astrocamel.com/web/2020/09/04/how-i-bypassed-cloudflares-sql-injection-filter.html
-
How I Found an Alg=None JWT Vulnerability in the NHS Contact Tracing App
https://www.zofrex.com/blog/2020/10/20/alg-none-jwt-nhs-contact-tracing-app/
-
How I Found My Dream Job as Eng #1 at a YC Co. and 3 Tips on How You Can, Too
~~https://wesleytian.github.io/2020/dream-job/~~
-
How I Found Myself in a Command Line vs. GUI Meeting
https://gravitational.com/blog/command-line-vs-gui/#.Xz7LptoW0yI.hackernews
-
How I found the home address of the culprit who put a RaspberryPi in our Network
https://blog.haschek.at/2019/the-curious-case-of-the-RasPi-in-our-network.html
-
How I hacked a live website and It hasn't been fixed yet
https://medium.com/@ujjwalkr/how-i-hacked-a-live-website-and-its-hasnt-been-fixed-yet-7232758cc2f4
-
How I hacked an Android app in a couple of hours and got a free haircut
https://medium.com/@pedro.costa/how-i-hacked-an-android-app-in-a-couple-of-hours-and-got-a-free-haircut-427b638163a8
-
How I hacked FOMO and procrastination by creating yet another productivity app?
https://medium.com/@nezn27/how-i-hacked-fomo-and-reduced-smartphone-distractions-by-developing-yet-another-productivity-app-1095a8178675
-
How I hacked language learning to jump-start my Japanese listening skills
https://medium.com/@upal/how-i-hacked-the-language-learning-process-to-jump-start-my-japanese-listening-skills-2ac7fb9d93be
-
How I hacked my Airbnb neighbor’s smart lock (and you can, too!)
https://medium.com/@_chase_adams/how-i-hacked-my-airbnb-neighbors-smart-lock-and-you-can-too-79d802c5f5aa
-
How I hacked my social media addiction and restored my habit of reading?
~~https://quitbeinganidiot.com/how-i-cured-my-social-media-addiction-and-restored-my-habit-of-reading/~~
-
How I hacked the StaySafe program, the government Covid-19 tracker of Sri Lanka

-
How i hacked worldwide Zoom Users?
https://medium.com/@s3c/how-i-hacked-worldwide-zoom-users-eafdff94077d
-
How malicious Tor relays are exploiting users in 2020
https://medium.com/@nusenu/how-malicious-tor-relays-are-exploiting-users-in-2020-part-i-1097575c0cac
-
I Broke into Data Science
https://hackernoon.com/how-i-broke-into-data-science-p21g3vi6 ⭐⭐⭐
-
I Hacked Facebook Again Unauthenticated RCE on MobileIron MDM
https://blog.orange.tw/2020/09/how-i-hacked-facebook-again-mobileiron-mdm-rce.html ⭐⭐
-
I Hacked Google's Bug Tracker to Claim a Google.com Email Address
https://www.andmp.com/2018/12/how-i-managed-to-get-google.html
-
I hacked hundreds of companies through Google Groups
https://medium.com/@milanmagyar/ggvulnz-how-i-hacked-hundreds-of-companies-through-google-groups-b69c658c8924
-
I Hacked into Facebook's Legal Department Admin Panel
https://alaa.blog/2020/12/how-i-hacked-facebook-part-one/
-
I Hacked University and My College Site
https://medium.com/@shubhamsangle/how-i-hacked-university-and-my-college-site-30df5dc401bc
-
I joined the js13k competition and used Haxe. Here is my writeup/postmortem
https://github.com/markknol/js13k-2020/blob/master/README.md ⭐⭐
-
Intro to Chrome’s V8 – Exploit Development
https://sensepost.com/blog/2020/intro-to-chromes-v8-from-an-exploit-development-angle/
-
iOS 1-day hunting: uncovering and exploiting CVE-2020-27950 kernel memory leak
https://www.synacktiv.com/publications/ios-1-day-hunting-uncovering-and-exploiting-cve-2020-27950-kernel-memory-leak.html ⭐
-
iOS exploit chain deploys LightSpy feature-rich malware
https://securelist.com/ios-exploit-chain-deploys-lightspy-malware/96407/ ⭐⭐
-
iOS Mail Hijack, Hacking Satellites, & 0-Days for Days – PSW #648
https://www.vladimircicovic.com/2020/05/ios-mail-hijack-hacking-satellites-0-days-for-days-psw-648
-
Is SQL injection still a bad thing if the user is restricted to
https://security.stackexchange.com/a/229255/21144
-
It's July 2020, and your PC or Mac can be pwned by a dodgy Photoshop file
https://www.theregister.com/2020/07/21/adobe_photoshop_patches/
-
KB4569509: Guidance for DNS Server Vulnerability CVE-2020-1350 (Work Around)
https://support.microsoft.com/en-us/help/4569509/windows-dns-server-remote-code-execution-vulnerability
-
Kubernetes container isolation impacts privilege escalation attacks
https://snyk.io/blog/kernel-privilege-escalation/ ⭐⭐
-
Kubernetes Privilege Escalation Attack
https://github.com/kubernetes/kubernetes/issues/92914 ⭐⭐
-
Learn Big-O and stop hacking your way through algorithms
https://triplebyte.com/blog/why-you-should-learn-big-o-and-stop-hacking-your-way-through-algorithms/?ref=hnpost
-
Linux kernel heap quarantine versus use-after-free exploits
https://a13xp0p0v.github.io/2020/11/30/slab-quarantine.html ⭐
-
Mac App Store Sandbox Escape
https://saagarjha.com/blog/2020/05/20/mac-app-store-sandbox-escape/
-
Mac sandbox escape
https://lapcatsoftware.com/articles/sandbox-escape.html
-
Malformed .BSP Access Violation in CS:Go Can Lead to Remote Code Execution(2018)
https://hackerone.com/reports/351014 ⭐⭐
-
Microsoft Account Takeover
https://www.theregister.co.uk/2020/03/04/microsoft_subdomain_takeover/
-
Microsoft Edge 0Day [CVE-2020-?]
https://github.com/b1ack0wl/Edge0day.exe ⭐⭐
-
Microsoft identifies second hacking group affecting SolarWinds software
https://www.cyberscoop.com/microsoft-solar-winds-hackers-supernova-backdoor/
-
My /r/BadUI Ping based keyboard was vulnerable to remote code execution
https://hamptonmoore.com/posts/pingkeyboard/
-
My 11 Operating Values (and how I found them)
https://twitter.com/dickiebush/status/1292180779787857923
-
My Hacking Adventures with Safari Reader Mode
https://payatu.com/blog/nikhil-mittal/my-hacking-adventures-with-safari-reader-mode
-
NaNoWriMo write-up/rundown: To do the thing you have to do the thing
https://tinyletter.com/aria-g/letters/nanowrimo-write-up-rundown-to-do-the-thing-you-have-to-do-the-thing
-
Netgear 0-day vulnerability analysis and exploit
https://blog.grimm-co.com/2020/06/soho-device-exploitation.html?m=1
-
New hotness: Pwning devs with targeted poisoned stacks
https://www.theregister.com/2020/09/04/disclosure_developer_targeting/
-
No Need to Hack When It’s Leaking – How I Found 150-200K Phi Records via GitHub
https://www.databreaches.net/report-no-need-to-hack-when-its-leaking-github-leaks-of-protected-health-information/
-
On Hacking MicroSD Cards (2013)
https://www.bunniestudios.com/blog/?p=3554 ⭐
-
OpenWRT remote code execution via MITM due to bug in package manager
~~https://lists.infradead.org/pipermail/openwrt-devel/2020-January/021544.html~~
-
Option Hacking the Tektronix TDS 420A
https://tomverbeure.github.io/2020/07/11/Option-Hacking-the-Tektronix-TDS-420A.html
-
Oracle SQL Injection Example
https://www.foxinfotech.in/2019/03/an-example-to-demonstrate-the-vulnerability-of-sql-injection-and-its-prevention-in-oracle.html
-
Palo Alto Networks researcher discovers Linux privilege escalation vulnerability
https://securityreport.com/palo-alto-networks-researcher-discovers-linux-privilege-escalation-vulnerability/
-
Part 2 of my ransomware architecture writeup – securfreakazoid
https://securityshenaningans.medium.com/architecture-of-a-ransomware-2-2-e22d8eb11cee
-
Preventing Privilege Escalation (2003) [pdf]
http://www.citi.umich.edu/u/provos/papers/privsep.pdf
-
Printdemon Print Spooler Privilege Escalation CVE 2020-1048
https://windows-internals.com/printdemon-cve-2020-1048/
-
Privilege Escalation Bug in Windows Service Tracing
https://itm4n.github.io/cve-2020-0668-windows-service-tracing-eop/
-
Privilege Escalation in AWS EKS by compromising worker node instance role
https://blog.christophetd.fr/privilege-escalation-in-aws-elastic-kubernetes-service-eks-by-compromising-the-instance-role-of-worker-nodes/
-
Privilege escalation via the unintended UnattendedUtilities
~~https://billyhulbert.github.io/priv-esc-the-unintended-UnattendedUtilities/~~
-
Privilege escalation vulnerability patched in Docker Desktop for Windows
https://www.zdnet.com/article/privilege-escalation-vulnerability-patched-in-docker-desktop-for-windows/
-
Privilege Escalation – Windows
~~https://mysecurityjournal.blogspot.com/p/client-side-attacks.html~~
-
Psychic Paper: iOS Sandbox Escape
https://siguza.github.io/psychicpaper/
-
Pwning Avast Secure Browser for Fun and Profit
https://palant.de/2020/01/13/pwning-avast-secure-browser-for-fun-and-profit/
-
Pwning your web server the easy way or why exposing –/.ssh/ is a bad idea
https://0day.work/pwning-your-web-server-and-network-the-easy-way-or-why-exposing-ssh-is-a-bad-idea/ ⭐⭐
-
Python's PyYAML remote code execution (CVE-2020-1747)
https://adamborczyk.pl/blog/pyyaml/
-
RCE in Portainer with Golang Request Splitting
https://medium.com/@andrewaeva_55205/how-dangerous-is-request-splitting-a-vulnerability-in-golang-or-how-we-found-the-rce-in-portainer-7339ba24c871
-
Re-Discovering a JWT Authentication Bypass in ServiceStack
https://www.shielder.it/blog/2020/11/re-discovering-a-jwt-authentication-bypass-in-servicestack/ ⭐⭐
-
Recompile – a 3D Metroidvania-inspired hacking adventure game
https://recompilegame.com/
-
Reflections on the Mac Sandbox Escape
https://lapcatsoftware.com/articles/sandbox-escape2.html
-
Remote Code Execution in Akamai Zero Trust Architecture EAA Client
https://twitter.com/aaditya_purani/status/1298302872761716738
-
Remote Code Execution in Apache Guacamole RDP Gateway (CVE-2020-9497/8)
https://research.checkpoint.com/2020/apache-guacamole-rce/
-
Remote code execution in Elixir-based Paginator
https://www.alphabot.com/security/blog/2020/elixir/Remote-code-execution-vulnerability-in-Elixir-based-Paginator-project.html
-
Remote Code Execution in qmail (CVE-2005-1513)
https://marc.info/?l=oss-security&m=158990858630691&w=2
-
Remote Code Execution in Slack desktop apps
https://hackerone.com/reports/783877 ⭐⭐
-
Remote code execution in TF2 and CS:GO
https://twitter.com/nikkehtine/status/1253008470657335296
-
Remote Code Execution to Persistent Backdoor in TP-Link Surveillance Camera
https://medium.com/@henrybarker_74817/from-remote-code-execution-to-persistent-backdoor-in-tp-link-tl-sc3130g-wireless-2-way-audio-29a0db1d5546
-
Remote Code Execution via McAfee WebAdvisor
https://palant.de/2020/02/25/mcafee-webadvisor-from-xss-in-a-sandboxed-browser-extension-to-administrator-privileges/
-
Remote code execution vulnerability in KensingtonWorks mouse manager
https://robertheaton.com/remote-code-execution-kensingtonworks/
-
Remote iPhone Exploitation Part 3: Gaining Code Execution
https://googleprojectzero.blogspot.com/2020/01/remote-iphone-exploitation-part-3.html ⭐
-
Return of the iOS sandbox escape: lightspeed's back in the race
https://www.synacktiv.com/posts/exploit/return-of-the-ios-sandbox-escape-lightspeeds-back-in-the-race.html ⭐
-
Rocket.Chat XSS Leading to Remote Code Execution [CVE-2020-15926]
https://blog.redteam.pl/2020/08/rocket-chat-xss-rce-cve-2020-15926.html
-
Sentry API Auth Bypass
~~https://blog.sentry.io/2020/07/27/api-authentication-bypass~~
-
Singapore's TraceTogether Token technical writeup [pdf]
https://www.developer.tech.gov.sg/assets/files/TT_Token_Technical_Writeup.pdf
-
Slack account takeovers using HTTP Request Smuggling
https://hackerone.com/reports/737140 ⭐⭐
-
Solarwinds hacked by bypassing 2factor auth via duo akey (OutlookWebAccess servr
https://arstechnica.com/information-technology/2020/12/solarwinds-hackers-have-a-clever-way-to-bypass-multi-factor-authentication/?comments=1
-
SolarWinds Orion API authentication bypass allows remote command execution
https://www.kb.cert.org/vuls/id/843464
-
SoundCloud Tackles DoS, Account Takeover Issues
https://threatpost.com/soundcloud-dos-account-takeover/152838/
-
Sounds shady but here’s how I found lists with 300 investors contact data
http://blog.amplemarket.com/mastering-google-searches-for-b2b-prospecting/
-
SQL Injection and Postgres – An adventure to eventual RCE
https://pulsesecurity.co.nz/articles/postgres-sqli.html
-
SQL Injection Attacks: So Old, but Still So Relevant
https://www.imperva.com/blog/sql-injection-attacks-so-old-but-still-so-relevant-heres-why-charts/
-
SQL Injection for Developers
https://dev.to/prodopsio/sql-injection-for-developers-2pi ⭐⭐⭐
-
SQL Injections: Beginners Guide
https://hackernoon.com/sql-injections-beginners-guide-8t13z3v17 ⭐⭐⭐
-
Steam gaming Windows privilege escalation attacks from writable install folder
https://securityreport.com/steam-gamers-your-windows-pc-is-prone-to-privilege-escalation-attacks/
-
Taking over Azure DevOps accounts with one click
~~https://blog.assetnote.io/2020/06/28/subdomain-takeover-to-account-takeover/~~
-
Talk write-up: How to build a PaaS for 1500 engineers
https://srvaroa.github.io/paas/infrastructure/platform/kubernetes/cloud/2020/01/02/talk-how-to-build-a-paas-for-1500-engineers.html
-
Technical writeup on the 256 bytes Memories demo
http://www.sizecoding.org/wiki/Memories
-
The 80/20 rule: hacking together a “desktop app” as a Chrome extension in 2hours
https://medium.com/@harry_68391/the-80-20-rule-how-i-hacked-together-a-desktop-app-experience-as-a-chrome-extension-in-2-hours-af8f609eea24
-
The Bogdan and the Bugati: How I Found an Excuse to Benchmark EBS/Instance Store
https://breakbeat.tech/the-bogdan-the-bugatti-scalable-vs-performant/
-
The Current State of Exploit Development: Part 1
https://www.crowdstrike.com/blog/state-of-exploit-development-part-1/ ⭐⭐
-
The ergonomic Ultimate Hacking Keyboard 60: v2
https://ultimatehackingkeyboard.com/blog/2020/11/05/introducing-the-uhk-60-v2
-
The WizardOpium LPE: Exploiting CVE-2019-1458
https://byteraptors.github.io/windows/exploitation/2020/06/03/exploitingcve2019-1458.html
-
Third-party code bug left Instagram users at risk of account takeover
https://www.computerweekly.com/news/252489542/Third-party-code-bug-left-Instagram-users-at-risk-of-account-takeover
-
Tor vulnerability in Brave Browser (CVE-2020-8276)
https://community.disclose.io/t/how-i-found-a-tor-vulnerability-in-brave-browser-reported-it-watched-it-get-patched-got-a-cve-cve-2020-8276-and-a-small-bounty-all-in-one-working-day/65
-
Triggering garbage collection to cause use-after-free in Chrome
https://securitylab.github.com/research/garbage-collection-uaf-chrome_gc
-
Twitter Hacking for Profit and the LoLs
https://krebsonsecurity.com/2020/07/twitter-hacking-for-profit-and-the-lols/
-
Two 0-days in Oracle’s iPlanet Web Server (CVE-2020-9315 and CVE-2020-9314)
https://wwws.nightwatchcybersecurity.com/2020/05/10/two-vulnerabilities-in-oracles-iplanet-web-server-cve-2020-9315-and-cve-2020-9314/
-
U.S. Schools Are Buying Cellebrite Phone-Hacking Tech
https://gizmodo.com/u-s-schools-are-buying-phone-hacking-tech-that-the-fbi-1845862393
-
UN experts say hacking of Bezos phone suggests effort to influence news coverage
https://www.wsj.com/articles/u-n-experts-say-hacking-of-bezoss-phone-suggests-effort-to-influence-news-coverage-11579704647
-
Uncovering Openwrt Remote Code Execution (CVE-2020-7982)
https://blog.forallsecure.com/uncovering-openwrt-remote-code-execution-cve-2020-7982
-
Unpatched LPE Vulnerability in Psexec
https://medium.com/tenable-techblog/psexec-local-privilege-escalation-2e8069adc9c8
-
Unpatched Windows Zero-Day Exploited in the Wild for Sandbox Escape
https://threatpost.com/unpatched-windows-zero-day-exploited-sandbox-escape/160828/
-
What Is Privilege Escalation?
https://blog.netwrix.com/2018/09/05/what-is-privilege-escalation/
-
Windows 0day privilege escalation still not fixed
https://bugs.chromium.org/p/project-zero/issues/detail?id=2096
-
Write Up – Google Bug Bounty: XSS to Cloud Shell Instance Takeover (RCE as Root)
https://omespino.com/write-up-google-bug-bounty-xss-to-cloud-shell-instance-takeover-rce-as-root-5000-usd/
-
Write-up about the WordPress Contact Form 7 plugin vulnerability
https://blog.wpsec.com/contact-form-7-vulnerability/ ⭐⭐
-
Write-up for h1415’s CTF challenge
https://lbherrera.github.io/lab/h1415-ctf-writeup.html
-
Write-up: Ulterior motives and influence operations
https://medium.com/@underthebreach/ulterior-motives-and-influence-operations-2d4c3ac6bf6a
-
Writeup: NEC PBX Backdoors, Vulnerabilities
https://shadytel.su/files/necsploits.htm
-
Writing an iOS Kernel Exploit from Scratch
https://secfault-security.com/blog/chain3.html
-
Zero-click, wormable, cross-platform remote code execution in Microsoft Teams
https://github.com/oskarsve/ms-teams-rce ⭐⭐
-
“Rewriting the Laws” of a British Overseas Territory with SQL Injection
https://medium.com/@AkshaySharmaUS/rewriting-the-laws-of-a-british-overseas-territory-with-sql-injection-68d91af6b2ed
-

### 2019 — 217 writeups

$50M CTF from Hackerone – Writeup
https://github.com/manoelt/50M_CTF_Writeup ⭐⭐
-
0day Android Privilege Escalation Vulnerability
https://www.zerodayinitiative.com/advisories/ZDI-19-780/ ⭐
-
0day exploit on ES File explorer
https://threader.app/thread/1085460755313508352
-
0day remote code execution in webmin
https://blog.firosolutions.com/exploits/webmin/
-
@albinowax: CTF Writeup [H1-212]
https://www.skeletonscribe.net/2017/11/h1-212-ctf-writeup.html
-
A deep dive into iOS Exploit chains found in the wild
https://googleprojectzero.blogspot.com/2019/08/a-very-deep-dive-into-ios-exploit.html ⭐
-
A GitHub user is taking over dozens of domains they don't own via GitHub Pages

-
A Guide to Linux Privilege Escalation (2018)
https://payatu.com/blog/Rashid-Feroze/guide-linux-privilege-escalation
-
A Hotel Room Hacking Spree (2017)
https://www.wired.com/2017/08/the-hotel-hacker/
-
A new windows LPE from non admin

-
A Pwn2Own Exploit Chain
https://github.com/saelo/pwn2own2018 ⭐⭐
-
A vulnerability in ubuntu snap system allows privilege escalation to root
https://github.com/initstring/dirty_sock ⭐⭐
-
Abusing Kubernetes defaults for privilege escalation
https://speakerdeck.com/iancoldwater/the-path-less-traveled-abusing-kubernetes-defaults
-
Account takeover via leaked session cookie
https://hackerone.com/reports/745324 ⭐⭐
-
AMDFlaws – pwning the PSP (BlueHat 2019 slides) [pdf]
https://storage.googleapis.com/wzukusers/user-28822230/documents/5c5b3fd28b669cTWPzwo/AMDFlaws%20Lecture%20Slides.pdf
-
An example of exploiting two fixed vulnerabilities in Firefox on Windows
https://github.com/0vercl0k/CVE-2019-11708 ⭐⭐
-
An Exploit Chain Against Citrix SD-WAN
https://medium.com/tenable-techblog/an-exploit-chain-against-citrix-sd-wan-709db08fb4ac
-
Analysis of a targeted attack exploiting the WinRar CVE-2018-20250 vulnerability
https://www.microsoft.com/security/blog/2019/04/10/analysis-of-a-targeted-attack-exploiting-the-winrar-cve-2018-20250-vulnerability/
-
Apache CouchDB CVE-2018-17188: Remote Privilege Escalations
https://blog.couchdb.org/2018/12/17/cve-2018-17188/
-
Apache HTTP Server privilege escalation from modules' scripts (CVE-2019-0211)
https://httpd.apache.org/security/vulnerabilities_24.html#CVE-2019-0211
-
Apache HTTP Server Remote Code Execution CVE-2002-0392
https://www.checkpoint.com/defense/advisories/public/2018/cpai-2018-1279.html
-
Apple apparently ignores researcher’s report of 0-day exploit for MacOS keychain
https://macperformanceguide.com/blog-2019-03.html#20190301_0855-macOS-AppleCoreRot-StealAllYourPasswords-AppleIgnores
-
Attackers exploit 0day vulnerability that gives full control of Android phones
https://arstechnica.com/information-technology/2019/10/attackers-exploit-0day-vulnerability-that-gives-full-control-of-android-phones
-
Attackers Exploiting WinRAR UNACEV2.DLL Vulnerability (CVE-2018-20250)
https://securingtomorrow.mcafee.com/other-blogs/mcafee-labs/attackers-exploiting-winrar-unacev2-dll-vulnerability-cve-2018-20250/
-
Authentication Bypass Found in Zabbix
https://blog.firosolutions.com/exploits/zabbix-auth-bypass/
-
Authentication Bypass in European Commission EIDAS-Node
~~https://sec-consult.com/en/blog/advisories/15587/~~
-
AutoBOF: A Journey into Automation, Exploit Development, and Buffer Overflows
https://0x00sec.org/t/autobof-a-journey-into-automation-exploit-development-and-buffer-overflows/13415
-
Beto O'Rourke's membership in America's oldest hacking group
https://www.reuters.com/investigates/special-report/usa-politics-beto-orourke/
-
Bezos’s Security Consultant Accuses Saudis of Hacking the Amazon CEO’s Phone
https://www.nytimes.com/2019/03/30/technology/jeff-bezos-saudis-hack.html
-
Biggest web hosting sites were vulnerable to simple account takeover hacks
https://techcrunch.com/2019/01/14/web-hosting-account-hacks/
-
Binary Exploitation Challenge Writeup for PicoCTF 2019
https://tcode2k16.github.io/blog/posts/picoctf-2019-writeup/binary-exploitation/ ⭐
-
BitDefender Antivirus Free 2020 – Privilege Escalation to System
https://safebreach.com/Post/BitDefender-Antivirus-Free-2020-Privilege-Escalation-to-SYSTEM
-
Buffer Overflow Exploit Development Practice
https://github.com/freddiebarrsmith/Buffer-Overflow-Exploit-Development-Practice ⭐⭐
-
Castle raises $9.2M for AI that protects consumer apps from account takeovers
https://venturebeat.com/2019/02/08/castle-raises-9-2-million-for-ai-that-protects-consumer-apps-from-account-takeovers/
-
China Prepares to Drop Microsoft Windows, Blames U.S. Hacking Threat
https://www.forbes.com/sites/daveywinder/2019/05/30/china-prepares-to-drop-microsoft-windows-blames-u-s-hacking-threat/
-
Content Tips for Your Dissertation or Project Write-Up
https://bitsilla.com/blog/2019/03/content-tips-for-your-dissertation-or-project-write-up/
-
Critical Privilege Escalation Vulnerability in Harbor (CVE-2019-16097)
https://unit42.paloaltonetworks.com/critical-vulnerability-in-harbor-enables-privilege-escalation-from-zero-to-admin-cve-2019-16097/
-
CTF writeup: First published SerenityOS kernel exploit
https://github.com/Fire30/CTF-WRITEUPS/tree/master/36c3_ctf/wisdom ⭐⭐
-
CVE-2019-0547 – Windows DHCP Client Remote Code Execution Vulnerability
https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2019-0547
-
CVE-2019-0708 – PoC Exploit – RDP Remote Code Execution
https://github.com/CVE-2019-0708/CVE-2019-0708 ⭐⭐
-
CVE-2019-1000032: Memory corruption / DoS in nanosvg
https://0day.work/cve-2019-1000032-memory-corruption-in-nanosvg/ ⭐⭐
-
CVE-2019-11360: BufferOverflow in iptables-restore v1.8.2
https://0day.work/cve-2019-11360-bufferoverflow-in-iptables-restore-v1-8-2/ ⭐⭐
-
CVE-2019-14287: sudo privilege escalation
https://access.redhat.com/security/cve/cve-2019-14287
-
CVE-2019-15107: Remote Code Execution Vulnerability in Webmin
https://sensorstechforum.com/cve-2019-15107-webmin/
-
CVE-2019-1579: Remote Code Execution in PAN-OS 7.1.18 and earlier – paloalto net
https://nvd.nist.gov/vuln/detail/CVE-2019-1579
-
CVE-2019-18935: Remote Code Execution via Insecure Deserialization in Telerik UI
https://know.bishopfox.com/research/cve-2019-18935-remote-code-execution-in-telerik-ui
-
CVE-2019-3010 – Local privilege escalation on Solaris 11.x via xscreensaver
https://techblog.mediaservice.net/2019/10/local-privilege-escalation-on-solaris-11-x-via-xscreensaver/
-
CVE-2019-8641 – Remote Code Execution Vulnerability in OS X
https://support.apple.com/en-us/HT210589
-
CVE-2019-8912: Use After Free Vuln in All Linux Kernels Up to 4.20.10
https://nvd.nist.gov/vuln/detail/CVE-2019-8912
-
Dangerous Kubernetes Bugs Allow Authentication Bypass, DoS
https://threatpost.com/kubernetes-bugs-authentication-bypass-dos/149265/
-
Data Retrieval over DNS in SQL Injection Attacks (2013)
https://arxiv.org/abs/1303.3047
-
Design patterns for hacking together prototypes: object dictionaries
~~http://web.eecs.utk.edu/~azh/blog/objectdictionaries.html~~
-
Detecting Dirty_Sock with Osquery – A Snapd Privilege Escalation Vulnerability
https://www.uptycs.com/blog/detecting-dirty_sock-with-osquery-a-snapd-privilege-escalation-vulnerability
-
Detecting SQL Injections in Python Code Using AST – Artem Golubin
https://rushter.com/blog/detecting-sql-injections-in-python/
-
Dozens of AWS IAM privilege escalation methods to watch out for
https://github.com/RhinoSecurityLabs/AWS-IAM-Privilege-Escalation ⭐⭐
-
Engineer admits hacking Yahoo accounts searching for images
http://www.ktvu.com/business/engineer-admits-hacking-yahoo-accounts-searching-for-images-1
-
Exploit for CVE-2019-0211 Apache Root Privilege Escalation
https://cfreal.github.io/carpe-diem-cve-2019-0211-apache-local-root.html
-
Exploit writeup: macOS Safari sandbox escape and kernel privilege escalation
https://phoenhex.re/2019-05-26/attribution-is-hard-at-least-for-dock ⭐
-
Exploiting an Old NoVNC XSS (CVE-2017-18635) in OpenStack
https://www.shielder.it/blog/exploiting-an-old-novnc-xss-cve-2017-18635-in-openstack/ ⭐⭐
-
Exploiting CVE-2018-1335: command injection in Apache Tika
https://rhinosecuritylabs.com/application-security/exploiting-cve-2018-1335-apache-tika/ ⭐⭐
-
Exploiting CVE-2019-1040 – Combining Relay Vulns for RCE and Domain Admin
https://dirkjanm.io/exploiting-CVE-2019-1040-relay-vulnerabilities-for-rce-and-domain-admin/
-
Exploiting prototype pollution
https://research.securitum.com/prototype-pollution-rce-kibana-cve-2019-7609/
-
Facebook CSRF protection bypass which leads to Account Takeover
https://ysamm.com/?p=185 ⭐⭐
-
Filling in the Blanks: Exploiting Null Byte Buffer Overflow for a $40k Bounty
https://samcurry.net/filling-in-the-blanks-exploiting-null-byte-buffer-overflow-for-a-40000-bounty/ ⭐⭐
-
Flaw in Linux kernel 2.6 may allow attacker to cause DoS or privilege escalation
https://coocoor.com/advisory/cve/CVE-2019-3896
-
Forensics Challenge Writeup for PicoCTF 2019
https://tcode2k16.github.io/blog/posts/picoctf-2019-writeup/forensics/ ⭐
-
Galaxy Leapfrogging: Pwning the Galaxy S8
https://blog.flanker017.me/galaxy-leapfrogging-pwning-the-galaxy-s8/
-
General Skills Challenge Writeup for PicoCTF 2019
https://tcode2k16.github.io/blog/posts/picoctf-2019-writeup/general-skills/ ⭐
-
Getting root with benign AppStore apps
https://theevilbit.github.io/posts/getting_root_with_benign_appstore_apps/
-
GitHub sued for aiding hacking in Capital One breach
https://www.zdnet.com/article/github-sued-for-aiding-hacking-in-capital-one-breach/
-
Google Chrome exploit with a full sandbox escape found in the wild
https://chromereleases.googleblog.com/2019/03/stable-channel-update-for-desktop.html
-
Google is aware of reports that an exploit for CVE-2019-13720 exists in the wild
https://chromereleases.googleblog.com/2019/10/stable-channel-update-for-desktop_31.html
-
Guardian told it was target of Saudi hacking unit after Khashoggi killing
https://www.theguardian.com/world/2019/jun/19/guardian-told-it-was-target-of-saudi-hacking-unit-after-khashoggi-killing
-
H1-702 2019 CTF Writeup
~~https://ajxchapman.github.io/security/2019/03/26/h1-702-ctf-2019.html~~
-
Hackers Bypassing Two-Factor Authentication
https://www.schneier.com/blog/archives/2019/12/chinese_hackers_1.html
-
Hacking Digital Calipers
https://www.notion.so/Hacking-Digital-Calipers-3ee7726f11ca431694dc70a1977516e4
-
Hacking GitHub's Auth with Unicode's Turkish Dotless 'I'
https://eng.getwisdom.io/hacking-github-with-unicode-dotless-i/
-
Hacking Image Interpolation for Fun and Profit
https://peterhrynkow.com/performance/2019/01/13/blowing-up-images-to-make-them-small.html?hn=1
-
Hacking My Mother’s Phone to Save Her Memories
https://www.nytimes.com/2019/06/10/opinion/hacking-phone-privacy.html
-
Hacking of artificial intelligence is an emerging security crisis
~~https://www.wired.co.uk/article/artificial-intelligence-hacking-machine-learning-adversarial~~
-
Hacking the Casio F-91W to Handle 1000 Psi
~~https://dvt.name/2019/06/03/hacking-the-casio-f-91w-to-handle-1000-psi/~~
-
Hacking the Sonos IKEA Symfonisk into a High Quality Speaker Amp
https://makezine.com/2019/08/16/hacking-the-sonos-ikea-symfonisk-into-a-high-quality-speaker-amp/
-
Hacking the Xbox 360 DVD Drive (2006)
http://web.archive.org/web/20060407000310/http://www.kev.nu/360/dvd.html
-
Hacking Voi Scooters: How I Created $100k Worth of Free Rides
https://fant.io/p/hacking-voi/
-
Hacking websites via third-party JavaScript libraries
https://dmsec.io/hacking-thousands-of-websites-via-third-party-javascript-libraries/
-
Hacking with private APIs on iPad
https://rambo.codes/ios/2019/01/11/hacking-with-private-apis-on-ipad.html
-
Hacking your face to dodge the rise of facial recognition tech
~~https://www.wired.co.uk/article/avoid-facial-recognition-software~~
-
Hacking Your Keyboard
https://blog.kaush.co/2019/12/25/hacking-your-keyboard/
-
Heap Exploit Development for iOS
https://azeria-labs.com/heap-exploit-development-part-1/
-
High-severity privilege escalation bug found in Lenovo Solution Centre software
~~https://secalerts.co/article/high-severity-vulnerability-found-in-lenovo-software/c44131e7~~
-
How a double-free bug in WhatsApp turns to remote code execution
https://awakened1712.github.io/hacking/hacking-whatsapp-gif-rce/
-
How I could have hacked all Uber accounts! Bounty $6500 USD
https://medium.com/@appsecure/how-i-could-have-hacked-your-uber-account-e98e64ab51bb
-
How I Could Have Hacked Any Instagram Account
https://thezerohack.com/hack-any-instagram ⭐⭐⭐
-
How I found my dream job by contributing to open source projects
https://medium.freecodecamp.org/how-i-found-my-dream-job-by-contributing-to-open-source-projects-ca98cbe60009 ⭐⭐⭐
-
How I Found My Market (and a 10% Monthly Growth Rate)
https://www.indiehackers.com/interview/how-i-found-my-market-and-a-10-monthly-growth-rate-2fa6c5e1eb
-
How I Hacked Instagram Again
https://thezerohack.com/hack-instagram-again ⭐⭐⭐
-
How I Hacked My Schedule to Get 3 Days of Deep Work a Week
https://blog.harrison.dev/2018/01/08/how-i-hacked-my-schedule.html
-
How to Hack Your Alexa Using a Voice Command-SQL Injection
https://hackernoon.com/voice-command-sql-injection-hack-uncovered-for-alexa-9914x3zwp ⭐⭐⭐
-
How to write SQL injection proof PL/SQL (2008) [pdf]
http://www.oracle.com/technetwork/database/features/plsql/overview/how-to-write-injection-proof-plsql-1-129572.pdf
-
How we found the source of the mystery signals at Parkes Radio Telescope (2015)
https://theconversation.com/how-we-found-the-source-of-the-mystery-signals-at-the-dish-41523
-
How we found who was “poisoning” our memcached server
https://indevopsblog.wordpress.com/2019/11/01/how-we-found-who-was-poisoning-our-memcached-server/
-
How we hacked Blackboard and changed our grades (2018)
https://bustbyte.no/blog/how-we-hacked-blackboard-and-changed-our-grades
-
I Exploited a Loophole in a System
https://hackernoon.com/how-i-exploited-a-loophole-in-a-system-baea0937360b ⭐⭐⭐
-
I exploited TLS-SNI-01 issuing Let's Encrypt SSL-certs for any domain (2018)
https://labs.detectify.com/2018/01/12/how-i-exploited-acme-tls-sni-01-issuing-lets-encrypt-ssl-certs-for-any-domain-using-shared-hosting/
-
I Hacked iPhone’s “Do Not Disturb While Driving” Function and Improved My Life
https://www.gobricknow.com/blog/2018/5/18/how-i-hacked-my-iphones-do-not-disturb-while-driving-function-and-significantly-improved-my-life
-
I hacked my parents, my neighbor, and my school too at age 12
~~https://atha.io/post/2019-08-20-how-i-hacked-my-parents-and-my-neighbor-too-at-age-12/~~
-
I hacked NPM
https://medium.com/@jozef_petro/how-i-hacked-npm-a3d6c83e4a40
-
I Hacked Play-With-Docker and Remotely Ran Code on the Host
https://www.cyberark.com/threat-research-blog/how-i-hacked-play-with-docker-and-remotely-ran-code-on-the-host/ ⭐⭐
-
I Hacked the Block and What They Did About It
https://medium.com/@ousef/how-i-hacked-the-block-and-what-they-did-about-it-part-1-1361d24e732c
-
I hacked the MIT Technology Review website to gain unlimited online access
https://hackernoon.com/how-i-hacked-the-mit-technology-review-website-many-more-and-gained-unlimited-online-access-e89a57cdc248 ⭐⭐⭐
-
iDevices finally get key-based protection against account takeovers
https://arstechnica.com/information-technology/2019/12/idevices-finally-get-key-based-protection-against-account-takeovers/
-
In service of the narrative in an operational surprise writeup
https://lorinhochstein.wordpress.com/2019/08/24/in-service-of-the-narrative/
-
In-the-Wild iOS Exploit Chain 1
https://googleprojectzero.blogspot.com/2019/08/in-wild-ios-exploit-chain-1.html?m=1 ⭐
-
Intro to hacking MicroSD cards (2013)
http://bunniestudios.com/blog/?p=3554
-
Investigating Privilege Escalation Methods in AWS
https://know.bishopfox.com/research/privilege-escalation-in-aws
-
iOS Core Trust Bypass, Jailbreak for A12 devices(CVE-2019-7286, CVE-2019-7287)
https://gist.github.com/Proteas/22525ef733eed42313627a94af022221 ⭐⭐
-
Is true hacking dead? What we lost
http://c0de517e.blogspot.com/2019/12/is-true-hacking-dead-what-we-lost.html
-
JetBrains IntelliJ IDEA Ultimate prior 2018.3.4 privilege escalation
https://vuldb.com/?id.137283
-
JFrog Artifactory Administrator Authentication Bypass
https://packetstormsecurity.com/files/152172/JFrog-Artifactory-Administrator-Authentication-Bypass.html ⭐⭐
-
Less capabilities, more security: minimizing privilege escalation in Docker
https://pythonspeed.com/articles/root-capabilities-docker-security/
-
Libreoffice (CVE-2018-16858) – Remote Code Execution via Macro/Event Execution
https://insert-script.blogspot.com/2019/02/libreoffice-cve-2018-16858-remote-code.html
-
Linux Kernel Prior to 5.0.8 Vulnerable to Remote Code Execution
https://www.bleepingcomputer.com/news/security/linux-kernel-prior-to-508-vulnerable-to-remote-code-execution/
-
Linux Privilege Escalation exploiting sudo rights – devconnected
https://medium.com/schkn/linux-privilege-escalation-using-text-editors-and-files-part-1-a8373396708d
-
Linux Privilege Escalation via LXD and Hijacked Unix Socket Credentials
https://shenaniganslabs.io/2019/05/21/LXD-LPE.html
-
Local Privilege Escalation in most Dell machines running Windows
https://d4stiny.github.io/Local-Privilege-Escalation-on-most-Dell-computers/
-
Local Privilege Escalation in OpenBSD's Dynamic Loader
https://www.openwall.com/lists/oss-security/2019/12/11/9 ⭐⭐
-
Local privilege escalation via the Windows I/O Manager
https://blogs.technet.microsoft.com/srd/2019/03/14/local-privilege-escalation-via-the-windows-i-o-manager-a-variant-finding-collaboration/
-
macOS Kernel Exploit 0-Day
https://github.com/A2nkF/macOS-Kernel-Exploit/ ⭐⭐
-
Make It Rain with Mikrotik: Not a Coinhive Writeup
https://medium.com/tenable-techblog/make-it-rain-with-mikrotik-c90705459bc6
-
Malware analysis writeup: Heodo (1/2)
https://williamdurand.fr/2019/05/24/malware-analysis-writeup-heodo-part-1/
-
Malware analysis writeup: Heodo (2/2)
https://williamdurand.fr/2019/05/27/malware-analysis-writeup-heodo-part-2/
-
Microsoft finds privilege escalation vulnerability in Huawei driver
https://www.microsoft.com/security/blog/2019/03/25/from-alert-to-driver-vulnerability-microsoft-defender-atp-investigation-unearths-privilege-escalation-flaw/
-
More Use-After-Free Bugs Discovered in Bellard's QuickJS, Some Fixed
https://twitter.com/_niklasb/status/1154392571466125313
-
Nagios Xi 5.5.10: XSS to root RCE Writeup
https://www.shielder.it/blog/nagios-xi-5-5-10-xss-to-root-rce/ ⭐⭐
-
NCR Barred Mint, QuickBooks from Banking Platform During Account Takeover Storm
https://krebsonsecurity.com/2019/11/ncr-barred-mint-quickbooks-from-banking-platform-during-account-takeover-storm/
-
NetHack: Privilege escalation/remote code execution/crash in configuration pars
https://www.nethack.org/security/index.html
-
Official writeup of the Rust async-await syntax debate so far
https://github.com/rust-lang/rust/issues/57640#issuecomment-487758650 ⭐⭐
-
One More Steam Windows Client Local Privilege Escalation 0day
https://amonitoring.ru/article/onemore_steam_eop_0day/
-
One-liner Safari sandbox escape exploit
https://medium.com/0xcc/one-liner-safari-sandbox-escape-exploit-91082ddbe6ef
-
Open Redirects in Misconfigured Mod_rewrite Rules (PoC for CVE-2019-10098?)
https://0day.work/open-redirects-in-improperly-configured-mod_rewrite-rules-poc-for-cve-2019-10098/ ⭐⭐
-
Open Source Home Automation System Domoticz Allows SQL Injection
https://coocoor.com/advisory/cve/CVE-2019-10664
-
OpenBSD patches authentication bypass, privilege escalation vulnerabilities
https://www.zdnet.com/article/openbsd-patches-severe-authentication-bypass-privilege-escalation-vulnerabilities/
-
OSSEC Privilege Escalation via Directory Traversal
https://www.dark-sec.net/2018/12/ossec-privilege-escalation-via.html
-
Paige Thompson, Capital One Hacking Suspect, Left a Trail Online
https://www.nytimes.com/2019/07/30/business/paige-thompson-capital-one-hack.html
-
PicoCTF 2019 Write-up: Cereal Hacker 2 (500p)
https://dev.to/0x12b/picoctf-2019-write-up-cereal-hacker-2-500p-23dg ⭐⭐⭐
-
Pixels Camp CTF Challenge Qualifiers Write-Up
https://medium.com/feedzaitech/pixels-camp-ctf-challenge-qualifiers-writeup-ac661f4af96a
-
PoC for “Apache Httpd XSS in mod_proxy error page (CVE-2019-10092)”
https://0day.work/proof-of-concept-for-apache-httpd-limited-cross-site-scripting-in-mod_proxy-error-page-cve-2019-10092/ ⭐⭐
-
Popular Python Package SQLAlchemy Found Vulnerable to SQL Injection Attacks
https://coocoor.com/advisory/cve/CVE-2019-7164
-
Preventing SQL Injection Attacks with Python
https://realpython.com/prevent-python-sql-injection/
-
Preventing SQL Injections When WAF’s Not Enough
https://www.cossacklabs.com/blog/sql-firewall-vs-waf-against-sqli.html
-
Privilege Escalation in Cloud Foundry UAA – CVE-2019-11270
https://www.twistlock.com/labs-blog/privilege-escalation-in-cloud-foundry-uaa-cve-2019-11270/
-
Privilege Escalation in Ubuntu Linux (dirty_sock Exploit)
https://shenaniganslabs.io/2019/02/13/Dirty-Sock.html
-
Privilege escalation through Kubernetes dashboard
https://sysdig.com/blog/privilege-escalation-kubernetes-dashboard/ ⭐⭐
-
Privilege escalation vulnerability uncovered in Microsoft Exchange
https://nakedsecurity.sophos.com/2019/01/30/privilege-escalation-vulnerability-uncovered-in-microsoft-exchange/
-
Proof of concept systemd-journald privilege escalation exploit
http://exploit.delivery/systemd_journald_exploit_no_aslr.py
-
Protection against CVE-2019-16759 in vBulletin
https://blog.cloudflare.com/cloudflares-protection-against-a-new-remote-code-execution-vulnerability-cve-2019-16759-in-vbulletin/ ⭐⭐
-
Pwn2Own 2019: Microsoft Edge Sandbox Escape (CVE-2019-0938). Part 2
https://blog.exodusintel.com/2019/05/27/pwn2own-2019-microsoft-edge-sandbox-escape-cve-2019-0938-part-2/ ⭐
-
Pwndbg – Exploit Development and Reverse Engineering with GDB Made Easy
https://github.com/pwndbg/pwndbg ⭐⭐
-
Pwning WPA/WPA2 Networks with Bettercap and the PMKID Client-Less Attack
https://www.evilsocket.net/2019/02/13/Pwning-WiFi-networks-with-bettercap-and-the-PMKID-client-less-attack/
-
QuickJS Use-After-Free
https://twitter.com/qwertyoruiopz/status/1149424025111801858
-
RCE in CGI Servlet – Apache Tomcat on Windows – CVE-2019-0232
https://wwws.nightwatchcybersecurity.com/2019/04/30/remote-code-execution-rce-in-cgi-servlet-apache-tomcat-on-windows-cve-2019-0232/
-
Red Teaming Made Easy with Exchange Privilege Escalation and PowerPriv
http://blog.redxorblue.com/2019/01/red-teaming-made-easy-with-exchange.html
-
Remote authentication bypass in OpenBSD Libc
https://blog.firosolutions.com/exploits/cve-2019-19521-openbsd-libc-2019/
-
Remote Code Execution in Firefox beyond Memory Corruptions
https://frederik-braun.com/firefox-ui-xss-leading-to-rce.html
-
Remote Code Execution in Mozilla Firefox and Firefox ESR
https://www.cybersecurity-help.cz/vdb/SB2019061805?affChecked=1
-
Remote code execution through type confusion in Ghostscript
https://lgtm.com/blog/ghostscript_CVE-2018-19134_exploit
-
Remote code execution vulnerability in apt/apt-get
https://justi.cz/security/2019/01/22/apt-rce.html? ⭐
-
Remote code execution vulnerability in most recent versions of the Nginx server
https://twitter.com/alisaesage/status/1134400951043874816
-
Remote code execution vulnerability in VLC remains unpatched
https://www.zdnet.com/article/remote-code-execution-vulnerability-in-vlc-remains-unpatched/
-
Saudi Arabia accused of hacking London-based dissident
https://www.theguardian.com/world/2019/may/28/saudi-arabia-accused-of-hacking-london-based-dissident-ghanem-almasarir
-
Sequelize ORM NPM library found vulnerable to SQL Injection attacks
https://snyk.io/blog/sequelize-orm-npm-library-found-vulnerable-to-sql-injection-attacks/ ⭐⭐
-
Simple Windows ret-into-Libc buffer overflow exploits (date unknown)
http://www.phearless.org/istorija/razno/win-ret-into-libc.txt
-
Snapd 2.37 (Ubuntu) Dirty_sock Local Privilege Escalation
https://packetstormsecurity.com/files/151640/snapd-2.37-Ubuntu-dirty_sock-Local-Privilege-Escalation.html ⭐⭐
-
SQL Injection Exposes Starbucks Enterprise Database
https://hackerone.com/reports/531051 ⭐⭐
-
Sql injection hall-of-shame
http://codecurmudgeon.com/wp/sql-injection-hall-of-shame/
-
SQL Injection in Node.js
https://www.atdatabases.org/blog/2019/07/29/sql-injection-in-node
-
SQL Injection Suminagashi
http://www.sbudella.altervista.org/blog/20180227-suminagashi.html
-
SQL Injection Tutorial for Beginners
https://dotweak.com/2019/08/16/sql-injection-tutorial-for-beginners-Zm5NSWw3MjJCUVMrT2hmWUdNeTZiQT09
-
SQL Injection via License Plate
https://www.wired.com/story/null-license-plate-landed-one-hacker-ticket-hell/
-
Steam Windows Client Local Privilege Escalation
https://packetstormsecurity.com/files/154032/Steam-Windows-Client-Local-Privilege-Escalation.html ⭐⭐
-
Steam Windows Client Local Privilege Escalation 0day
https://amonitoring.ru/article/steamclient-0day/
-
Student hacks high school software and finds “SQL injections galore”
~~https://secalerts.co/article/student-hacks-school-software-and-finds-sql-injections-galore/5cf2e72f~~
-
Study of the Belonard Trojan, Exploiting 0day in Counter-Strike 1.6
https://news.drweb.com/show/?i=13135&lng=en
-
StuxCTF Writeup
https://blog.tryhackme.com/stuxctf-writeup/
-
Subdomain Takeover and Open Redirect = Account Takeover
https://www.bleepingcomputer.com/news/security/ea-fixes-origin-game-platform-to-prevent-account-takeovers/
-
Sudo Privilege Escalation Vulnerability
https://people.canonical.com/~ubuntu-security/cve/2019/CVE-2019-14287.html
-
Sweden: SQL injection attempt on a write-in election ballot
~~https://www.wired.co.uk/article/sweden-election-hack~~
-
Systemd cve in journald – local privilege escalation
https://www.theregister.co.uk/2019/01/10/systemd_bugs_qualys/
-
Takeoff Aborted: Heads-up display startup failure writeup
https://glass.aero/news/2018/03/takeoff-aborted/
-
Telegram 0-day vulnerability that can be used to disclose user's phone numbers
https://twitter.com/edwincheese/status/1164826783746629633
-
The PewDiePie Hackers: Could hacking printers ruin your life? [video]
https://www.bbc.com/news/av/technology-47032600/the-pewdiepie-hackers-could-hacking-printers-ruin-your-life
-
The State of Machine Translation Research: A Conference Writeup
https://medium.com/@natasha.latysheva/machine-translation-summit-2019-impressions-summary-and-notes-d8258abbff5c
-
tmux Privilege Escalation
~~https://markdownbin.com/bin/20190711/1ef089bd715cf91fb0d6.html~~
-
Tor Browser 8.5.3 Fixes a Sandbox Escape Vulnerability in Firefox
https://www.bleepingcomputer.com/news/software/tor-browser-853-fixes-a-sandbox-escape-vulnerability-in-firefox/
-
Tracking BlueKeep (CVE-2019-0708) RDP Remote Code Execution Vulnerability
https://www.reddit.com/r/BlueKeep/
-
Travel Hacking 101
https://viatravelers.com/travel-hacking/
-
Trend Micro Password Manager – Privilege Escalation to System
https://safebreach.com/Post/Trend-Micro-Password-Manager-Privilege-Escalation-to-SYSTEM
-
Unautenticated Remote Code Execution in D-Link DIR-859 Routers (CVE-2019–17621)
https://medium.com/@s1kr10s/d94b47a15104
-
VBulletin 5.x pre-auth 0day dropped anonymously on Full Disclosure
https://seclists.org/fulldisclosure/2019/Sep/31 ⭐⭐
-
Virtually Unlimited Memory: Escaping the Chrome Sandbox
https://googleprojectzero.blogspot.com/2019/04/virtually-unlimited-memory-escaping.html?m=1 ⭐
-
Vulnerability in Laravel Framework can lead to remote code execution
https://coocoor.com/advisory/cve/CVE-2019-9081
-
Vulnerability in PHP-FPM Could Lead to Remote Code Execution on Nginx
https://www.tenable.com/blog/cve-2019-11043-vulnerability-in-php-fpm-could-lead-to-remote-code-execution-on-nginx?tns_redirect=true ⭐⭐
-
We Hacked Hacker Noon's “Most Exciting Startup” Award and Won
https://hackernoon.com/how-we-hacked-hacker-noons-most-exciting-startup-award-and-won-3z72o3019 ⭐⭐⭐
-
Why does SQL injection still exist?
https://security.stackexchange.com/questions/128412/sql-injection-is-17-years-old-why-is-it-still-around
-
Windows 0-day exploit used in Operation WizardOpium
https://securelist.com/windows-0-day-exploit-cve-2019-1458-used-in-operation-wizardopium/95432/ ⭐⭐
-
Windows Within Windows – Escaping the Chrome Sandbox with a Win32k NDay
https://blog.exodusintel.com/2019/05/17/windows-within-windows/ ⭐
-
Wmic.exe Whitelisting Bypass – Hacking with Style, Stylesheets (2018)
~~https://subt0x11.blogspot.com/2018/04/~~
-
Wolff PHP SQL Injection Framework
~~https://github.com/Usbac/wolff-framework/blob/master/system/core/DB.php~~
-
WordPress 5.1 CSRF to Remote Code Execution
https://blog.ripstech.com/2019/wordpress-csrf-to-rce/ ⭐
-
WordPress Plugin Has Unpatched Privilege Escalation Flaw, Warn Researchers
https://threatpost.com/wordpress-plugin-has-unpatched-privilege-escalation-flaw-warn-researchers/145150/
-
WordPress Privilege Escalation from an Editor to Administrator
https://stazot.tk/wordpress-privilege-escalation-from-an-editor-to-administrator
-
Write-up of DOMPurify 2.0.0 bypass using mutation XSS
https://research.securitum.com/dompurify-bypass-using-mxss/
-
Write-Up: Adding a Web-Based Remote-Shell to a PaaS
https://medium.com/connect-platform/write-up-adding-a-web-based-remote-shell-to-a-paas-bd1e5f88d2b2
-
Writeup of a Cybersecurity Engineer Interview
https://medium.com/@lormayna/writeup-of-a-cybersecurity-engineer-interview-b6b8e8a0f26c
-
Your Windows DHCP server can be pwned by a packet, IE, Edge by a webpage, etc.
https://www.theregister.co.uk/2019/02/13/patch_tuesday_february/
-
Zero-day privilege escalation disclosed for Android
https://arstechnica.com/information-technology/2019/09/android-zeroday-gives-hackers-a-way-to-elevate-attacks/
-
Zoom web server is vulnerable to remote code execution
https://www.zdnet.com/article/researcher-says-zoom-web-server-is-vulnerable-to-remote-code-execution/
-

### 2018 — 183 writeups

4 Types of SQL Injection
https://bertwagner.com/2018/11/20/4-sql-injection-techniques-for-stealing-data/
-
7-Zip: From Uninitialized Memory to Remote Code Execution
https://landave.io/2018/05/7-zip-from-uninitialized-memory-to-remote-code-execution/?hn
-
A Breakdown of the New SAML Authentication Bypass Vulnerability
https://developer.okta.com/blog/2018/02/27/a-breakdown-of-the-new-saml-authentication-bypass-vulnerability
-
A Little Less in the Dark: Writeup on “A galaxy lacking dark matter”
https://astrobites.org/2018/03/28/a-little-less-in-the-dark/
-
A Remote Code Execution Vulnerability in the Steam Client
https://www.contextis.com/blog/frag-grenade-a-remote-code-execution-vulnerability-in-the-steam-client ⭐
-
A Tweet About Hacking Gets a Google Engineer in Trouble
https://www.wired.com/story/defcon-tweet-about-hacking-gets-engineer-trouble
-
Adobe Flash 0-day vulnerability (CVE-2018-4878)
https://helpx.adobe.com/security/products/flash-player/apsa18-01.html
-
Advisory: WhatsApp account takeover attack
https://m.facebook.com/story.php?story_fbid=10155330917421851&id=525906850
-
Alert (TA18-276B) APT Activity Exploiting Managed Service Providers
https://www.us-cert.gov/ncas/alerts/TA18-276B
-
AMD PSP: Firmware TPM Remote Code Execution via Crafted EK Certificate
http://seclists.org/fulldisclosure/2018/Jan/12 ⭐⭐
-
An open-source cludge for testing serverless functions for SQL injection
https://www.puresec.io/blog/automated-sql-injection-testing-of-serverless-functions-on-a-shoestring-budget-and-some-good-music
-
An overview of the top web hacking techniques of 2017
https://portswigger.net/blog/top-10-web-hacking-techniques-of-2017 ⭐⭐
-
Analysis of SQL Injection Detection Techniques
https://arxiv.org/abs/1605.02796
-
Analyzing CVE-2018-6376 – Joomla, Second Order SQL Injection
~~https://www.notsosecure.com/analyzing-cve-2018-6376/~~
-
Another 0 Day: Protection from a Use-After-Free Vulnerability (2016)
https://www.endgame.com/blog/technical-blog/another-0day-another-prevention
-
Apple Safari and Microsoft Edge Browser Address Bar Spoofing – Writeup
https://www.rafaybaloch.com/2018/09/apple-safari-microsoft-edge-browser.html
-
Apple tells Congress it found no signs of hacking attack
https://www.reuters.com/article/us-china-cyber-apple/apple-tells-congress-it-found-no-signs-of-hacking-attack-idUSKCN1MH0YQ
-
Arbitrary remote code execution vulnerability in Intel ME
https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00112.html
-
Authentication bypass vulnerability in VMware and EMC backup systems
https://twitter.com/daviottenheimer/status/949346036753010689
-
Breaking CFI: Exploiting CVE-2015-5122 Using COOP
https://perception-point.io/2018/04/11/breaking-cfi-cve-2015-5122-coop/
-
Bug bounty write-up: XXE bug leading to LFI
https://medium.com/@jonathanbouman/hackernews-xxe-at-bol-com-7d331186de54
-
Bug bounty write-up: DNS rebinding in EOSIO keosd wallet
https://medium.com/@root_31068/the-call-is-coming-from-inside-the-house-dns-rebinding-in-eosio-keosd-wallet-e11deae05974
-
Charles Proxy: MacOS Local Privilege Escalation
https://www.charlesproxy.com/documentation/security/
-
Commodore Hacking Issue 9 (1995)
http://www.ffd2.com/fridge/chacking/c=hacking9.txt
-
Critical Privilege Escalation Flaw Patched in Kubernetes
https://www.securityweek.com/critical-privilege-escalation-flaw-patched-kubernetes
-
CUPS Local Privilege Escalation and Sandbox Escapes
https://blog.gdssecurity.com/labs/2018/7/11/cups-local-privilege-escalation-and-sandbox-escapes.html
-
Current state of hacking back (counter hacking)
https://blog.0day.rocks/current-state-of-hacking-back-76a7bdaa0248
-
CVE-2018-0492: Local privilege escalation in Linux program that plays a beep
https://holeybeep.ninja/
-
CVE-2018-1002105 – Kubernetes privilege escalation flaw
https://access.redhat.com/security/cve/cve-2018-1002105
-
CVE-2018-10901 in Linux Kernel Could Lead to Privilege Escalation
https://sensorstechforum.com/cve-2018-10901-linux-kernel-privilege-escalation/
-
CVE-2018-11235 Git Remote Code Execution
https://staaldraad.github.io/post/2018-06-03-cve-2018-11235-git-rce/
-
CVE-2018-11769: Apache CouchDB Remote Code Execution ( Versions 1.x and ≤2.1.2)
http://seclists.org/oss-sec/2018/q3/83 ⭐⭐
-
CVE-2018-11776: Remote Code Execution in Apache Struts
http://cve.circl.lu/cve/CVE-2018-11776
-
CVE-2018-15685 – Electron WebPreferences Remote Code Execution
https://www.contrastsecurity.com/security-influencers/cve-2018-15685
-
CVE-2018-4087 PoC: Escaping the sandbox by misleading bluetoothd
https://blog.zimperium.com/cve-2018-4087-poc-escaping-sandbox-misleading-bluetoothd/
-
Dangling Words: How I hacked my brain to be better at writing
https://medium.com/@osolmaz/dangling-words-808e6b33cc24
-
Database leakage/SQL injection detection through poison records
https://www.cossacklabs.com/blog/acra-poison-records.html
-
Disclosure: SQL Injection in Cart66 Pro
https://ttmm.io/php/sql-injection-in-cart66-pro/
-
Easy-to-exploit privilege escalation bug bites OpenBSD and other big name OSes
https://arstechnica.com/information-technology/2018/10/x-org-bug-that-gives-attackers-root-bites-openbsd-and-other-big-name-oses/
-
ENOS Authentication Bypass in Lenovo and IBM RackSwitch and BladeCenter Products
https://support.lenovo.com/en/en/product_security/len-16095
-
Ethical hacker makes $120k USD in one week hacking EOS smart contracts
https://twitter.com/GuidoVranken/status/1003782704310247424
-
Everything you wanted to know about SQL injection (but were afraid to ask)(2013)
https://www.troyhunt.com/everything-you-wanted-to-know-about-sql ⭐⭐⭐
-
Exim Off-By-one RCE: Exploiting CVE-2018-6789 with Fully Mitigations Bypassing
https://devco.re/blog/2018/03/06/exim-off-by-one-RCE-exploiting-CVE-2018-6789-en/ ⭐
-
Exploiting CVE-2018-1038 – Total Meltdown
https://blog.xpnsec.com/total-meltdown-cve-2018-1038/
-
Exploiting LaTeX with CVE-2018-17407
http://nickroessler.com/latex-cve-2018-17407/
-
F-Secure Anti-Virus: Remote Code Execution via Solid RAR Unpacking
https://landave.io/2018/06/f-secure-anti-virus-remote-code-execution-via-solid-rar-unpacking
-
Facebook Vulnerability Affecting 50M Users Allowed Account Takeover
https://www.bleepingcomputer.com/news/security/facebook-vulnerability-affecting-50-million-users-allowed-account-takeover/
-
Free: Windows Privilege Escalation Vulnerability Scan Tool
https://int64software.com/blog/2018/07/04/free-windows-privilege-escalation-vulnerability-scan-tool/
-
From hacked client to 0day discovery
~~https://security.infoteam.ch/en/blog/posts/from-hacked-client-to-0day-discovery.html~~
-
From Joaquin Phoenix to word games. How we found our brand
https://medium.com/@your_pia/from-joaquin-phoenix-to-word-games-how-we-found-our-brand-9bf33729df7
-
Get your code in RunCode, the online programming and pwning extravaganza
https://arstechnica.com/information-technology/2018/11/codewarz-reloaded-programming-contest-ads-pwning-prizes-as-runcode/
-
Google awards researcher over $110,000 for Android exploit chain
http://www.zdnet.com/article/google-awards-researcher-over-110000-for-android-exploit-chain/
-
Grand Pwning Unit: Accelerating Microarchitectural Attacks with the GPU
https://blog.acolyer.org/2018/07/04/grand-pwning-unit-accelerating-microarchitectural-attacks-with-the-gpu/
-
Grand Pwning Unit: Accelerating Microarchitectural Attacks with the GPU [pdf]
https://www.vusec.net/wp-content/uploads/2018/05/glitch.pdf
-
Guardzilla IoT Video Camera Hard-Coded Credentials (CVE-2018-5560)
https://www.0dayallday.org/guardzilla-video-camera-hard-coded-aws-credentials/
-
Hacker exposes 0day Win10 local privilege escalation in ALPC interface with PoC
https://www.kb.cert.org/vuls/id/906424
-
Hackers Could Cause Havoc by Pwning Internet-Connected Irrigation Systems
https://motherboard.vice.com/en_us/article/xwk5n7/hacking-internet-connected-irrigation-systems
-
Hackers hijack surveillance camera footage with 'Peekaboo' 0-day vulnerability
https://www.zdnet.com/article/hackers-can-tamper-with-surveillance-camera-footage-due-to-new-zero-day-vulnerability/
-
Hackers tamper with exploit chain to drop Agent Tesla, circumvent antivirus
https://www.zdnet.com/article/hackers-tamper-with-exploit-chain-to-drop-agent-tesla-circumvent-antivirus-solutions/
-
Hacking a $30 IoT camera to do more than it’s worth
https://hackernoon.com/hacking-a-25-iot-camera-to-do-more-than-its-worth-41a8d4dc805c ⭐⭐⭐
-
Hacking a cheap fitness tracker bracelet
https://rbaron.net/blog/2018/05/27/Hacking-a-cheap-fitness-tracker-bracelet.html
-
Hacking a Google Interview (2009)
http://courses.csail.mit.edu/iap/interview/index.php ⭐⭐⭐
-
Hacking an assault tank...a Nerf one
https://www.pentestpartners.com/security-blog/hacking-an-assault-tank-a-nerf-one/ ⭐⭐
-
Hacking around with a RealSense depth camera and Python
http://erikorndahl.com/about
-
Hacking Asustor AS-602T (CVE-2018-12313) Vuln on SNMP API Allows Root Commands
https://blog.securityevaluators.com/unauthenticated-remote-code-execution-in-asustor-as-602t-2d806c30dcea
-
Hacking chemical plants for competition and extortion (2015) [pdf]
https://www.blackhat.com/docs/us-15/materials/us-15-Krotofil-Rocking-The-Pocket-Book-Hacking-Chemical-Plant-For-Competition-And-Extortion-wp.pdf
-
Hacking Engineers and Engineering Media
https://github.com/nemild/hack-an-engineer ⭐⭐
-
Hacking Gmail’s UX with 'From' Fields – Another Phishing Vector
https://blog.cotten.io/hacking-gmail-with-weird-from-fields-d6494254722f
-
Hacking how we see [video]
https://media.ccc.de/v/35c3-9370-hacking_how_we_see
-
Hacking into a CPU’S Microcode (2017)
https://hackaday.com/2017/12/28/34c3-hacking-into-a-cpus-microcode/
-
Hacking the most popular cryptocurrency hardware wallets [video]
https://media.ccc.de/v/35c3-9563-wallet_fail
-
Hacking WiFi to inject cryptocurrency miner to HTML requests (CoffeeMiner)
~~http://arnaucode.com/blog/coffeeminer-hacking-wifi-cryptocurrency-miner.html~~
-
How I accidentally found a clickjacking “feature” in Facebook
~~https://malfind.com/index.php/2018/12/21/how-i-accidentaly-found-clickjacking-in-facebook/~~
-
How I exploited a bug in Avios Travel rewards programme to get valid air-miles
https://medium.com/@cian_911/how-i-exploited-a-bug-in-the-avios-rewards-programme-to-get-1000s-of-valid-air-mile-points-for-2ad58c4b560a
-
How I Found Myself Learning About Time Changes in the Western Soviet Union
~~https://www.nylas.com/blog/how-i-found-myself-learning-about-time-changes-in-the-western-soviet-union~~
-
How I Found Your Email
http://justindavis.co/2018/03/10/how-I-found-your-email/
-
How I got hired by Google, why I left, and why I chose to join OKCoin
https://hackernoon.com/how-i-got-hired-by-google-why-i-left-and-why-i-chose-to-join-okcoin-7af99c1d9c4f ⭐⭐⭐
-
How I hacked Apple.com
https://medium.com/@jonathanbouman/how-i-hacked-apple-com-unrestricted-file-upload-bcda047e27e3
-
How I Hacked BlackHat 2018
https://ninja.style/post/bcard/
-
How I hacked es6 feature into Java
https://medium.com/@westdabestdb/how-i-hacked-es6-feature-into-java-476f6be37339
-
How I hacked Gitcoin's tipping mechanism
https://medium.com/@cvcassano/how-i-hacked-gitcoins-tipping-mechanism-9f40908bc73b
-
How I hacked hundreds of companies through their helpdesk (2017)
https://medium.com/intigriti/how-i-hacked-hundreds-of-companies-through-their-helpdesk-b7680ddc2d4c
-
How I Hacked into One of the Most Popular Dating Websites
https://medium.com/hackerpreneur-magazine/how-i-hacked-into-one-of-the-most-popular-dating-websites-4cb7907c3796
-
How I hacked modern vending machines
https://hackernoon.com/how-i-hacked-modern-vending-machines-43f4ae8decec ⭐⭐⭐
-
How I hacked my electric bike with a throttle command
https://www.mathieupassenaud.fr/electricBike/
-
How I hacked my imposter syndrome
https://linbug.github.io/self-improvement/personal%20tracking/imposter%20syndrome/2017/09/30/How-I-hacked-my-imposter-syndrome-using-personal-tracking/
-
How I Hacked the Affordable Care Act to Save $10,000
http://www.upbed.co/blog/how-i-hacked-the-affordable-care-act-to-save-10000
-
How I hacked Tinder accounts using Facebook’s Account Kit
https://medium.freecodecamp.org/hacking-tinder-accounts-using-facebook-accountkit-d5cc813340d1 ⭐⭐⭐
-
How i hacked Xiaomi MiBand 2 to control it from Linux
https://medium.com/@a.nikishaev/how-i-hacked-xiaomi-miband-2-to-control-it-from-linux-a5bd2f36d3ad
-
How Type Juggling (PHP) Can Lead to Authentication Bypass
https://www.netsparker.com/blog/web-security/type-juggling-authentication-bypass-cms-made-simple/ ⭐⭐
-
How We Found a Missing Scala Class
~~https://heapanalytics.com/blog/engineering/missing-scala-class-noclassdeffounderror~~
-
How We Found Great Talents for Our Remote Company Without Spending a Fortune
http://blog.nightwatch.io/finding-remote-employees
-
How we found names and addresses of soldiers and secret agents with fitness app
https://decorrespondent.nl/8481/heres-how-we-found-the-names-and-addresses-of-soldiers-and-secret-agents-using-a-simple-fitness-app/407782424280-fb89f1db
-
How we found the identity of military personnel using Strava and fake GPX tracks
https://nrkbeta.no/2018/01/31/how-we-found-the-identity-of-military-personnel-using-strava/
-
How we hacked our office doorbell using Slack, MessageBird and Now
https://blog.mollie.com/how-we-hacked-our-office-doorbell-using-slack-messagebird-and-now-b2042c060e29
-
How we hacked Product Hunt and acquired paid users
https://medium.com/easyleadz/how-we-hacked-product-hunt-acquired-paid-users-3873684f1057
-
In Groundbreaking Decision, Feds Say Hacking DRM to Fix Electronics Is Legal
https://motherboard.vice.com/en_us/article/xw9bwd/1201-exemptions-right-to-repair
-
Interview with Eiiti Wada, Creator of the Happy Hacking Keyboard
https://www.massdrop.com/article/eiiti-wada-interview
-
Introduction to property based or How I found a bug in a 1M download repository?
https://medium.com/@nicolasdubien/introduction-to-property-based-testing-f5236229d237
-
iOS, Mac vulnerabilities allow remote code execution through a single image
https://www.zdnet.com/article/ios-mac-flaw-exposes-your-password-with-one-image-file/
-
iOS/macOS Safari Sandbox Escape via QuartzCore Heap Overflow
https://blogs.securiteam.com/index.php/archives/3796
-
Java: Exploiting your “unreachable” JRMP/RMI/JMX endpoints [CVE-2018-2800]
https://mbechler.github.io/2018/05/21/Java-CVE-2018-2800/
-
Joomla Privilege Escalation via SQL Injection
https://blog.ripstech.com/2018/joomla-privilege-escalation-via-sql-injection/ ⭐
-
Keybase advisory: Local Privilege Escalation on Linux via Keybase-Redirector
https://keybase.io/docs/secadv/kb002
-
Knocking Down the Big Door: How We Bypassed the Auth0 Authentication
https://medium.com/@cintainfinita/knocking-down-the-big-door-8e2177f76ea5
-
Kubernetes privilege escalation vulnerability
https://discuss.kubernetes.io/t/kubernetes-security-announcement-v1-10-11-v1-11-5-v1-12-3-released-to-address-cve-2018-1002105/3700
-
Leaked Emails Show Cops Trying to Hide Emails About Phone Hacking Tools
https://motherboard.vice.com/en_us/article/wjken4/leaked-emails-cops-hiding-graykey-grayshift-phone-hacking-emails
-
Libssh 0.8.4 and 0.7.6 Authentication Bypass Vulnerability Fix (CVE-2018-10933)
https://www.libssh.org/2018/10/16/libssh-0-8-4-and-0-7-6-security-and-bugfix-release/
-
libssh authentication bypass
https://www.libssh.org/security/advisories/CVE-2018-10933.txt
-
LibSSH, You’ve Been Exploited: A New Vulnerability Allows Authentication Bypass
https://www.guardicore.com/2018/10/libssh-new-vulnerability-allows-authentication-bypass
-
LightSpeed, a race for an iOS/MacOS sandbox escape
https://www.synacktiv.com/posts/exploit/lightspeed-a-race-for-an-iosmacos-sandbox-escape.html ⭐
-
Local privilege escalation on many OS (CVE-2018-8897) using MOV/POP SS
https://docs.google.com/presentation/d/1Z9p2iZuysTmkPIC2BdcDbQOCSnVwhaHfrPdzGiStLHI
-
Lunar Limit Technical Writeup (new NES Game)
https://ldjam.com/events/ludum-dare/38/lunar-limit/lunar-limit-technical-part-1
-
Microsoft reveals first known midterm campaign hacking attempts
https://www.politico.com/story/2018/07/19/midterm-campaign-hacking-microsoft-733256
-
Multi-provider VPN Client Privilege Escalation Vulnerabilities
https://blog.talosintelligence.com/2018/09/vulnerability-spotlight-Multi-provider-VPN-Client-Privilege-Escalation.html
-
Multiple SAML libraries may allow authentication bypass
https://www.kb.cert.org/vuls/id/475445
-
My Chumby hacking story: Do you believe in the Users?
http://www.tnhh.net/posts/crankshaft-chumby-do-you-believe-in-the-users.html
-
New data shows China has “taken the gloves off” in hacking attacks on US
https://arstechnica.com/information-technology/2018/11/new-data-shows-china-has-taken-the-gloves-off-in-hacking-attacks-on-us/
-
New Kubernetes privilege escalation flaw
https://www.redhat.com/en/blog/kubernetes-privilege-escalation-flaw-innovation-still-needs-it-security-expertise
-
OATmeal on the Universal Cereal Bus: Exploiting Android Phones Over USB
https://googleprojectzero.blogspot.com/2018/09/oatmeal-on-universal-cereal-bus.html ⭐
-
Oracles's Access Manager Authentication Bypass
https://www.sec-consult.com/en/blog/2018/05/oracle-access-managers-identity-crisis/
-
Out-of-tree kernel module/exploit development tool
https://out-of-tree.io
-
Password Hacking on TENEX: Using Paged Virtual Memory to Break Security
https://www.sjoerdlangkemper.nl/2016/11/01/tenex-password-bug/
-
Patch for critical privilege escalation flaw in Kubernetes
https://groups.google.com/forum/m/#!topic/kubernetes-announce/GVllWCg6L88
-
Persistent XSS, a full write-up
https://medium.com/p/198fe7b4c781
-
PHP: Return True to Win Writeup
https://dev.to/antogarand/php-return-true-to-win---writeup-part-1-9bo ⭐⭐⭐
-
PiWallet uses insecure hashing and has SQL Injection vulnerabilties
https://github.com/johnathanmartin/piWallet/issues/36 ⭐⭐
-
PlayStation Vita h-encore exploit write-up
~~https://github.com/TheOfficialFloW/h-encore/blob/master/WRITE-UP.md~~
-
PlayStation4 4.55 BPF Race Condition Kernel Exploit Writeup
https://github.com/Cryptogenic/Exploit-Writeups/blob/master/FreeBSD/PS4%204.55%20BPF%20Race%20Condition%20Kernel%20Exploit%20Writeup.md ⭐⭐
-
Polkit privilege escalation for users with larger UIDs
https://nvd.nist.gov/vuln/detail/CVE-2018-19788
-
PrestaShop 1.6.x Privilege Escalation (CVE-2018-13784)
https://www.ambionics.io/blog/prestashop-privilege-escalation ⭐
-
Preventing SQL Injection Through Automatic Query Sanitization
https://arxiv.org/abs/1009.3712
-
Preventing SQL Injection with PostgreSQL and Python
https://tapoueh.org/blog/2018/11/preventing-sql-injections/
-
Privilege Escalation in 2.3M WooCommerce Shops
https://blog.ripstech.com/2018/woocommerce-php-object-injection/ ⭐
-
Privilege Escalation in GVisor, Google's Container Sandbox
https://justi.cz/security/2018/11/14/gvisor-lpe.html ⭐
-
Privilege Escalation in the Cloud: From SSRF to Global Account Administrator
https://medium.com/poka-techblog/privilege-escalation-in-the-cloud-from-ssrf-to-global-account-administrator-fd943cf5a2f6
-
Privilege Escalation Through AWS IAM Instance Profile Role
https://blog.redlock.io/privilege-escalation-through-iam-instance-profile-role
-
ProtonVPN, NordVPN Flaws Open Door to Privilege Escalation
https://threatpost.com/protonvpn-nordvpn-flaws-open-door-to-privilege-escalation/137332/
-
PS4 5.05 BPF Double Free Kernel Exploit Writeup
https://github.com/Cryptogenic/Exploit-Writeups/blob/master/FreeBSD/PS4%205.05%20BPF%20Double%20Free%20Kernel%20Exploit%20Writeup.md ⭐⭐
-
Public Disclosure: Authentication Bypass on Help.baaz.com
https://medium.com/@alex.birsan/public-disclosure-authentication-bypass-on-help-baaz-com-79383953189d
-
Pwned together: Hacking dev.to
https://dev.to/antogarand/pwned-together-hacking-devto-hkd ⭐⭐⭐
-
Pwning eBay – How I Dumped eBay Japan's Website Source Code
https://slashcrypto.org/2018/11/28/eBay-source-code-leak/
-
Pwning JBoss Seam 2 like a boss
https://joo.gl/z5jOnHM8
-
Quickly Pwned, Quickly Patched: Details of the Mozilla Pwn2own Exploit
https://www.zerodayinitiative.com/blog/2018/4/5/quickly-pwned-quickly-patched-details-of-the-mozilla-pwn2own-exploit ⭐
-
Rate my writeup: Hot fixing a CDN for an online game
https://truckersmp.com/blog/70
-
Remote Code Execution in Alpine Linux
https://justi.cz/security/2018/09/13/alpine-apk-rce.html ⭐
-
Remote Code Execution in Windows from Malformed Images
https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2018-8475
-
Remote Code Execution Through Intel CPU Bugs (2008) [pdf]
http://www.cs.dartmouth.edu/~sergey/cs258/2010/D2T1%20-%20Kris%20Kaspersky%20-%20Remote%20Code%20Execution%20Through%20Intel%20CPU%20Bugs.pdf
-
Remote Code Execution Vulnerability in Apache Struts (CVE-2018-11776)
https://semmle.com/news/apache-struts-CVE-2018-11776
-
Remote code execution vulnerability in SQLite
https://blade.tencent.com/magellan/index_en.html
-
Reverse engineering and “exploiting” a game trainer
https://codecat.nl/2018/05/reverse-engineering-and-exploiting-a-game-trainer/
-
Reversing ALPC: Where are your windows bugs and sandbox escapes?
~~http://sandboxescaper.blogspot.com/2018/10/reversing-alpc-where-are-your-windows.html~~
-
SAML authentication bypass vulnerability disclosure
http://kb.cert.org/vuls/id/475445
-
Server-Side Spreadsheet Injection – Formula Injection to Remote Code Execution
https://www.bishopfox.com/blog/2018/06/server-side-spreadsheet-injections/
-
Shopify account takeover via race condition – Fixed
https://hackerone.com/reports/300305 ⭐⭐
-
SleuthQL: SQL Injection Discovery Tool
https://rhinosecuritylabs.com/application-security/sleuthql-sql-injection-discovery-tool/ ⭐⭐
-
SQL Injection and Machine Learning
http://nbviewer.jupyter.org/github/ClickSecurity/data_hacking/blob/master/sql_injection/sql_injection.ipynb
-
Sudohulk – try privilege escalation changing sudo command
https://howucan.gr/scripts-tools/2942-sudohulk-try-privilege-escalation-changing-sudo-command
-
Taking over Facebook accounts using Free Basics partner portal
https://www.josipfranjkovic.com/blog/facebook-partners-portal-account-takeover
-
Technical details of a Pixel remote exploit chain
https://security.googleblog.com/2018/01/android-security-ecosystem-investments.html
-
The Economics of Hacking an Election
https://www.cs.columbia.edu/~smb/blog/2018-08/2018-08-07.html
-
The Practical Guide to Hacking Bluetooth Low Energy
https://blog.attify.com/the-practical-guide-to-hacking-bluetooth-low-energy/
-
The toxic Coding Horror posts really deserve a dedicated write-up
https://twitter.com/aprilwensel/status/982887264773533696
-
Tor Browser (Firefox 41-50) - Code Execution 0day Exploit
~~https://0day.today/exploit/29975~~
-
TorrentFreak Is Blocked as a Pirate Site and Hacking Resource
https://torrentfreak.com/torrentfreak-is-blocked-as-a-pirate-site-and-hacking-resource-180825/
-
Trivial authentication bypass in libssh leaves servers wide open
https://arstechnica.com/information-technology/2018/10/bug-in-libssh-makes-it-amazingly-easy-for-hackers-to-gain-root-access/
-
Two 0-day exploits found in PDF on VirusTotal
https://www.welivesecurity.com/2018/05/15/tale-two-zero-days/
-
UK spies: You know how we said bulk device hacking would be used sparingly?
https://www.theregister.co.uk/2018/12/06/uk_gchq_bulk_equipment_interference/
-
Ultimate Hacking Keyboard
https://ultimatehackingkeyboard.com/
-
Urban Airship Bug Bounties (“Full Disclosure Security Policy”)
https://www.urbanairship.com/full-disclosure-security-policy
-
US Govt. Attempts to Force Facebook into Building Backdoor in Facebook Chat
https://pwned.blog/us-govt-attempts-fb-to-access-chat/
-
Utah voting system fending off 1B hacking attempts per day
https://utahpolicy.com/index.php/features/today-at-utah-policy/17116-utah-is-fending-off-one-billion-hacking-attempts-per-day
-
Visual Studio Code silently fixed RCE through DNS rebinding
https://medium.com/0xcc/visual-studio-code-silently-fixed-a-remote-code-execution-vulnerability-8189e85b486b
-
VPN Firms Release New Patches for Privilege Escalation Flaw
https://www.securityweek.com/vpn-firms-release-new-patches-privilege-escalation-flaw
-
WebKit exploit write-up
https://github.com/Cryptogenic/Exploit-Writeups/blob/master/WebKit/setAttributeNodeNS%20UAF%20Write-up.md ⭐⭐
-
What SSH Hacking Attempts Look Like
https://medium.com/@dmrickert/what-ssh-hacking-attempts-look-like-8f698e70a4f5
-
Windows Kernel Exploitation: Use After Free [pdf]
https://dl.packetstormsecurity.net/papers/general/winpart8-uaf.pdf
-
WordPress Privilege Escalation Through Post Types
https://blog.ripstech.com/2018/wordpress-post-type-privilege-escalation/ ⭐
-
Write-up about Adobe Flash Player bug patched today
https://www.ragestorm.net/blogs/?p=421
-
Xorg Arbitrary File Overwrite Vulnerability Leads to Privilege Escalation
https://www.securepatterns.com/2018/10/cve-2018-14665-xorg-x-server.html
-
XSS with SQL Vulnerabilities [Release]

-
Zero to Account Takeover: How I ‘Impersonated’ Someone Else Using Auth0
~~https://www.imperva.com/blog/2018/06/how-i-impersonated-someone-else-using-auth0/~~
-
“User Account Takeover-I just need your email id to login into your account”
https://medium.com/@logicbomb_1/bugbounty-user-account-takeover-i-just-need-your-email-id-to-login-into-your-shopping-portal-7fd4fdd6dd56
-

### 2017 — 182 writeups

0Day in Microsoft Sharepoint 2016
https://www.neuralegion.com/single-post/2017/11/06/Fuzzing-Microsoft-SharePoint-2016
-
0patching Another 0-day: IE 11 Type Confusion by Google's Project Zero
~~https://0patch.blogspot.si/2017/03/0patching-another-0-day-internet.html~~
-
A Curious Tale of Remote Code Execution, the TP-Link Story – CVE-2017-13772
https://www.fidusinfosec.com/tp-link-remote-code-execution-cve-2017-13772/
-
Adium vulnerable to remote code execution via libpurple
http://seclists.org/fulldisclosure/2017/Mar/57 ⭐⭐
-
Advisory – OsTicket v1.10 Unauthenticated SQL Injection (CVE-2017-14396 )
https://pentest.blog/advisory-osticket-v1-10-unauthenticated-sql-injection/
-
Airbnb – Ruby on Rails String Interpolation Led to Remote Code Execution
http://buer.haus/2017/03/13/airbnb-ruby-on-rails-string-interpolation-led-to-remote-code-execution/
-
An SQL Injection Attack Is a Legal Company Name in the UK
https://www.schneier.com/blog/archives/2017/01/an_sql_injectio.html
-
Another Windows 0day from Google's Project Zero Gets a Micropatch(CVE-2017-0037)
~~https://0patch.blogspot.com/2017/03/0patching-another-0-day-internet.html~~
-
Apache Struts2 REST Plugin Payloads (CVE-2017-9805/S2-052)
~~http://pentestit.com/apache-struts2-rest-plugin-remote-code-execution-cve-2017-9805/~~
-
Apache Tomcat Remote Code Execution via JSP Upload CVE-2017-12617
http://mail-archives.apache.org/mod_mbox/www-announce/201710.mbox/%3Cf7229e11-5e8d-aa00-ff22-f0a795669010%40apache.org%3E
-
Attacking a Co-Hosted VM. Pwning the Libpam with Row-Hammer
https://thisissecurity.stormshield.com/2017/10/19/attacking-co-hosted-vm-hacker-hammer-two-memory-modules/
-
Australian Tax Office employee leaks phone hacking guide
http://www.abc.net.au/news/2017-07-12/tax-office-slip-up-reveals-new-phone-hacking-capabilities/8698800
-
Authentication Bypass on Uber’s Single Sign-On via Subdomain Takeover
https://www.arneswinnen.net/2017/06/authentication-bypass-on-ubers-sso-via-subdomain-takeover/
-
Best resources to learn browser hacking, sandbox escape and reverse engineering?

-
Beyond Detection – Exploiting Blind SQL Injections with Burp Collaborator
https://blog.silentsignal.eu/2017/01/03/beyond-detection-exploiting-blind-sql-injections-with-burp-collaborator/
-
Block SQL injections, not your customers
https://blog.sqreen.io/block-sql-injections-not-customers/
-
Boston Key Party “SIDH-RSA-AES128-GCM-SHA256” Challenge Writeup
https://github.com/cstanfill/sidh-writeup ⭐⭐
-
Capturing all the flags in BSidesSF CTF by pwning infrastructure
https://medium.com/@CornflakeSavage/capturing-all-the-flags-in-bsidessf-ctf-by-pwning-our-infrastructure-3570b99b4dd0
-
Capturing all the flags in BSidesSF CTF by pwning our infrastructure
https://hackernoon.com/capturing-all-the-flags-in-bsidessf-ctf-by-pwning-our-infrastructure-3570b99b4dd0 ⭐⭐⭐
-
Certificate Transparency: Hacking web applications before they are installed
https://www.golem.de/news/certificate-transparency-hacking-web-applications-before-they-are-installed-1707-129172.html
-
Chaining 3 Minor Issues to Takeover Flickr Accounts
~~http://blog.mish.re/index.php/2017/04/29/yahoo-bug-bounty-chaining-3-minor-issues-to-takeover-flickr-accounts/~~
-
Chop and change: Hacking is making its way to furniture
https://www.1843magazine.com/design/chop-and-change
-
Cisco 0-day (CVE-2017-3881) has been un-patched for months
https://www.reddit.com/r/programming/comments/6epyhj/cisco_0day_cve20173881_has_been_unpatched_for/?st=j3gg795l&sh=1fba7499
-
Cisco AnyConnect Local Privilege Escalation Vulnerability
https://tools.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-20170607-anyconnect
-
Crashing Phones with Wi-Fi: Exploiting Nitayart's Broadpwn Bug (CVE-2017-9417)
http://boosterok.com/blog/broadpwn2/
-
CVE 2017-5135 SNMP authentication bypass (StringBleed)
https://stringbleed.github.io/
-
CVE-2016-9892 – Remote Code Execution as Root via ESET Endpoint Antivirus 6
http://seclists.org/fulldisclosure/2017/Feb/68 ⭐⭐
-
CVE-2017-2636: Linux local privilege escalation flaw in ‘n_hdlc’
https://ma.ttias.be/cve-2017-2636-local-privilege-escalation-flaw-n_hdlc/
-
CVE-2017-5996: Bomgar Remote Support – Local Privilege Escalation
https://www.vsecurity.com/download/advisories/20171026-1.txt
-
Cyberattacks in 12 Nations Said to Use Leaked N.S.A. Hacking Tool
https://mobile.nytimes.com/2017/05/12/world/europe/uk-national-health-service-cyberattack.html?smprod=nytcore-iphone&smid=nytcore-iphone-share&_r=1&referer=https://www.rt.com/news/388153-thousands-ransomeware-attacks-worldwide/
-
DangSan: Scalable Use-After-free Detection [pdf]
http://www.cs.vu.nl/~giuffrida/papers/dangsan_eurosys17.pdf
-
Deep dive: How we hacked an 8-bit chip to drive stepper motors at 250k steps/sec
~~https://blog.buildbotics.com/deep-dive-how-we-hacked-an-8-bit-chip-to-drive-stepper-motors-at-250k-steps-sec-23af47b16299~~
-
DEFCON CTF 2017 – Divided Writeup
https://www.securifera.com/blog/2017/06/18/defcon-ctf-2017-divided-writeup/
-
Disclosure: WordPress WPDB SQL Injection
https://blog.ircmaxell.com/2017/10/disclosure-wordpress-wpdb-sql-injection-background.html
-
Docker: insecure opening of file-descriptor allows privilege escalation
https://bugzilla.redhat.com/show_bug.cgi?id=1409531
-
Evilginx – Advanced Phishing with Two-Factor Authentication Bypass
https://breakdev.org/evilginx-advanced-phishing-with-two-factor-authentication-bypass/
-
Exim use-after-free vulnerability while reading mail header
https://bugs.exim.org/show_bug.cgi?id=2199
-
Exploit database error to leak users table informations ( writeup )
https://medium.com/@eslamsalem/exploit-database-error-to-leak-users-table-informations-writeup-be62b3c86968
-
Exploiting CVE-2017-5123 with Full Protections, SMEP, SMAP, the Chrome Sandbox
https://salls.github.io/Linux-Kernel-CVE-2017-5123/
-
Exploiting Node.js Deserialization Bug for Remote Code Execution
https://opsecx.com/index.php/2017/02/08/exploiting-node-js-deserialization-bug-for-remote-code-execution/
-
Finding a $5,000 Google Maps XSS by fiddling with Protobuf
https://medium.com/@marin_m/how-i-found-a-5-000-google-maps-xss-by-fiddling-with-protobuf-963ee0d9caff#.9eebbzaif
-
From Facebook account takeover to an empty bank account
https://badcyber.com/from-full-facebook-account-takeover-to-an-empty-bank-account/
-
From Markdown to remote code execution in Atom
https://statuscode.ch/2017/11/from-markdown-to-rce-in-atom/
-
Fuzzing is magic – Or how I found a panic in Rust's regex library
https://www.nibor.org/blog/fuzzing-is-magic---or-how-i-found-a-panic-in-rusts-regex-library/
-
German parents told to destroy Cayla dolls over hacking fears
http://www.bbc.com/news/world-europe-39002142
-
GitHub Enterprise SAML authentication bypass write-up
http://www.economyofmechanism.com/github-saml
-
GitHub Enterprise SQL Injection
http://blog.orange.tw/2017/01/bug-bounty-github-enterprise-sql-injection.html?m=1 ⭐⭐
-
Google CTF 2017 Quals Write-Up Collection
https://drive.google.com/drive/folders/0BwMPuUHZOj0nZ2dGZS1KbWNGN0E
-
Google's bug bounty to root out vulnerabilities in 3rd-party apps on Google Play
https://www.theverge.com/2017/10/22/16516670/google-play-security-rewards-program-vulnerabilities-bug-bounty
-
Hack PR removed the article about “hacking Reddit”

-
Hackers take $81M from Bangladesh central bank by pwning its $10 routers
https://boingboing.net/2016/04/22/hackers-take-81m-from-banglad.html
-
Hacking around Facebook to share links to a third-party apps
https://medium.com/@jgot/how-i-hacked-around-facebook-to-save-articles-to-a-third-party-app-116e970b287d
-
Hacking Back Makes a Comeback, But Is Still a Bad Idea
https://www.technologyreview.com/s/609555/hacking-back-makes-a-comeback-but-its-still-a-really-bad-idea/
-
Hacking Final Fantasy 1 on the NES
~~http://www.walknsqualk.com/post/hacking-final-fantasy-1-on-nes/~~
-
Hacking Slack using postMessage and WebSocket-reconnect to steal your token
~~https://labs.detectify.com/2017/02/28/hacking-slack-using-postmessage-and-websocket-reconnect-to-steal-your-precious-token~~
-
Hacking Soundcloud: Creating an Interactive Track
https://haywirez.com/hacking-soundcloud/
-
Hacking statistics with R
http://www.r-exercises.com/2017/07/08/hacking-statistics-exercises-part-2/
-
Hacking the Hivemind: Predicting Comment Karma on Internet Forums (2014) [pdf]
http://cs229.stanford.edu/proj2014/Daria%20Lamberson,Leo%20Martel,%20Simon%20Zheng,Hacking%20the%20Hivemind.pdf
-
Hacking Voting Machines at Defcon
https://blog.horner.tj/post/hacking-voting-machines-def-con-25
-
How I Bypassed State Bank of India OTP
https://hackernoon.com/how-i-bypassed-state-bank-of-india-otp-f145469a9f1d#.bd535hpl5 ⭐⭐⭐
-
How I Found a 20-Year-Old Linux Kernel Bug
http://robert.ocallahan.org/2017/06/how-i-found-20-year-old-linux-kernel-bug.html
-
How I Found a Bug in Twitter by Debugging Chromium
http://veryveryvery.org/twitter-bug.html
-
How I Found a Developer Partner for My Startup
https://medium.com/startup-grind/how-i-found-a-developer-partner-for-my-startup-d7f589d49101#.t2a0ubtbt
-
How I Found a Vulnerability Leaking User Credentials in Red Hat Ravello Systems
https://marmelab.com/blog/2017/03/29/redhat-ravello-systems-user-credentials-leak.html
-
How I found an exploit in a Paypal vendor ticket server
http://blog.pentestbegins.com/2017/07/21/hacking-into-paypal-server-remote-code-execution-2017/
-
How I Found My First Remote Job
http://malexandre.fr/2017/10/14/how-i-found-my-first-remote-job/
-
How I Found the Best Programming Language in the World [Part 2]
https://kukuruku.co/post/how-i-found-the-best-programming-language-in-the-world-part-2/
-
How I Founded a $2B Company with a 95 Cent Book from RadioShack
https://www.wired.com/2016/07/how-i-founded-a-2-billion-company-with-a-95-cent-book-from-radioshack/?mbid=social_tw_backchannel
-
How I got your phone number through Facebook
https://hackernoon.com/how-i-got-your-phone-number-through-facebook-223b769cccf1#.7r858adls ⭐⭐⭐
-
How I Hacked 23,900,000 Tumblr Domains at Once
https://medium.com/@know.0nix/how-i-hack-23-900-000-tumblr-domains-at-once-341edad6e7cc
-
How I hacked 40 Websites in 7 minutes
https://medium.com/@gakonst/how-i-hacked-40-websites-in-7-minutes-5b4c28bc8824
-
How I hacked biotech stock trading
https://medium.com/the-mission/trade-biotech-stocks-like-a-hedge-fund-with-these-hacks-ff153c907b0b
-
How I Hacked DEF CON
https://medium.com/@catlady9000/how-i-hacked-def-con-c5bf718bb9d8
-
How I Hacked DePauw University Using Hidden Inputs
https://medium.com/@thomasring/how-i-hacked-depauw-university-using-hidden-inputs-79377c3dca7e
-
How I Hacked DePauw University Using Hidden Inputs – Hacker Noon
https://hackernoon.com/how-i-hacked-depauw-university-using-hidden-inputs-79377c3dca7e ⭐⭐⭐
-
How I hacked Google Daydream controller (Part V)
https://hackernoon.com/how-i-hacked-google-daydream-controller-part-v-a0ada411271e#.cw7kkmo94 ⭐⭐⭐
-
How I Hacked Google Daydream Controller (Part VI)
https://medium.com/@matteo.pisani.91/how-i-hacked-google-daydream-controller-part-vi-11297b9efe34
-
How I hacked Google’s bug tracking system itself for $15,600 in bounties
https://medium.freecodecamp.org/messing-with-the-google-buganizer-system-for-15-600-in-bounties-58f86cc9f9a5 ⭐⭐⭐
-
How I hacked hundreds of companies through their helpdesk
~~https://medium.freecodecamp.org/how-i-hacked-hundreds-of-companies-through-their-helpdesk-b7680ddc2d4c~~
-
How I hacked my imposter syndrome using personal tracking
http://linbug.github.io//self-improvement/personal%20tracking/imposter%20syndrome/2017/09/30/How-I-hacked-my-imposter-syndrome-using-personal-tracking/
-
How I Hacked My Smart TV from My Bed via a Command Injection
https://www.netsparker.com/blog/web-security/hacking-smart-tv-command-injection/ ⭐⭐
-
How I Hacked My University's Registration System with Python and Twilio
https://www.twilio.com/blog/2017/06/hacked-my-universitys-registration-system-python-twilio.html
-
How I Hacked My Way to 12,000 Views on My First Ever Blog Post
https://hackernoon.com/how-i-hacked-my-way-to-12-000-views-on-my-first-ever-blog-post-f6494dac4921 ⭐⭐⭐
-
How I hacked my way to TechCrunch coverage
https://www.indiehackers.com/forum/how-i-hacked-my-way-to-techcrunch-coverage--Ky2WaMLxYYtDTVnADsO
-
How I hacked my way to TechCrunch coverage and why I think it worked
https://www.indiehackers.com/@Leandro/how-i-hacked-my-way-to-techcrunch-coverage-and-why-i-think-it-worked-c99a1428b7
-
How I hacked my workflow
https://hackernoon.com/how-i-hacked-my-workflow-45e328ad8d9b ⭐⭐⭐
-
How I Hacked Stress
https://matthewcauble.com/my-experiment-to-break-stress-b644f69c485d#.y0bli3k7q
-
How I Hacked Tinder and Became the Most Hated Woman in Toronto
http://www.cammipham.com/tinder-hack/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost
-
How I hijacked top celebrities tweets including Katy Perry, Shakira…
https://hackernoon.com/how-i-hijacked-top-celebrities-tweets-including-katy-perry-shakira-fca3a0e751c6#.thp87gkpl ⭐⭐⭐
-
How I reverse-engineered hacker news
https://swizec.com/blog/reverse-engineered-hacker-news/swizec/7741
-
How to Exploit BlueBorne RCE on Nexus5 Android 6.0.1 (CVE-2017-0781)
https://jesux.es/exploiting/blueborne-android-6.0.1-english/
-
How we found a tcpdump vulnerability using cloud fuzzing
https://www.softscheck.com/en/identifying-security-vulnerabilities-with-cloud-fuzzing/
-
How We Found All of Optimizely's Clients
http://nerdydatablog.com/2016/12/04/how-we-found-all-of-optimizleys-clients/
-
How We Found and Fixed a Filesystem Corruption Bug
https://engineering.heroku.com/blogs/2017-02-15-filesystem-corruption-on-heroku-dynos/
-
How we found exploitable zero-days in the open-source GlassFish server
https://www.sourceclear.com/blog/How-we-found-exploitable-zero-days-in-the-open-source-GlassFish-server-with-the-Security-Graph-Language/
-
How we found rogerkver’s obfuscated wallet private key
https://medium.freecodecamp.org/lets-enhance-how-we-found-rogerkver-s-1000-wallet-obfuscated-private-key-8514e74a5433 ⭐⭐⭐
-
How we found that hidden Apple job listing
http://www.zdnet.com/article/how-we-found-that-hidden-apple-job-posting/
-
How we hacked a conference and got 120 high quality meetings in 2 days
http://blog.pipecandy.com/conference-hack-irce/
-
How we hacked Intercom to create a MVP
https://www.indiehackers.com/forum/post/-Kx2i-CLU1EoO1DRHvV1
-
How We Hacked Our Coffee Machine with JavaScript
https://moin.world/2017/04/01/how-we-hacked-our-coffee-machine-with-javascript/
-
I run a small web server. Apache Struts CVE-2017-5638
http://blog.trendmicro.com/trendlabs-security-intelligence/cve-2017-5638-apache-struts-vulnerability-remote-code-execution/
-
IBM Data Science Experience: Whole-Cluster Privilege Escalation Disclosure
~~https://wycd.net/posts/2017-02-21-ibm-whole-cluster-privilege-escalation-disclosure.html~~
-
iCTF 2017 flasking unicorns writeup – Or how we might have rooted your iCTF VM
https://0day.work/ictf-2017-flasking-unicorns-writeup-or-how-we-might-have-rooted-your-ictf-vm/ ⭐⭐
-
Interspire Email Marketer - Remote Admin Authentication Bypass
~~https://security.infoteam.ch/en/blog/posts/narrative-of-an-incident-response-from-compromise-to-the-publication-of-the-weakness.html~~
-
Introducing rkt’s ability to detect privilege escalation attacks on containers
https://coreos.com/blog/rkt-detect-privilege-escalation.html
-
Ipv4/udp Remote Code Execution in Linux Kernel
http://www.securityfocus.com/bid/97397
-
Jailbreaking American Tractors with Ukrainian Firmware
https://www.techpowerup.com/231801/jailbreaking-american-tractors-with-ukrainian-firmware
-
Joe Gregorios's Writeup on Geometric Algebra
https://bitworking.org/news/2017/11/ga
-
Let’s Enhance  How we found rogerkver’s $1000 wallet obfuscated private key
https://medium.com/@SassanoM/lets-enhance-how-we-found-rogerkver-s-1000-wallet-obfuscated-private-key-8514e74a5433
-
Local privilege escalation kernel bug left in apple core os due to Final cut pro
https://www.quora.com/Did-you-ever-intentionally-leave-a-bug-while-writing-a-software-code/answer/Terry-Lambert?share=147e37a0&srid=C0r8
-
Macron Campaign Says It Was Target of ‘Massive’ Hacking Attack
https://www.nytimes.com/2017/05/05/world/europe/france-macron-hacking.html
-
Macron condemns 'massive' hacking attack
http://www.bbc.co.uk/news/world-europe-39827244
-
MarkDoom: How I Hacked Every Major IDE in 2 Weeks. By: Matt Austin‏
https://docs.google.com/presentation/d/1wQM4fhjCJ9r3DQ-c98XJFkrd83odM94FaJPqstTR68c
-
Meet the Plaid Parliament of Pwning, one of the world’s elite hacking teams
~~http://kernelmag.dailydot.com/issue-sections/headline-story/16863/plaid-parliament-of-pwning-hacker-ctf/~~
-
Mitch Lowe co-founded Netflix, now he's hacking movie night
http://www.bbc.co.uk/news/technology-41197966
-
Monitoring Jank: How we found the slowest parts of our UI
https://fulcrum.lever.co/monitoring-jank-how-we-found-the-slowest-parts-of-our-ui-b6ffd7386896
-
New Office 0day (CVE-2017-11826) Exploited in the Wild
https://360coresec.blogspot.com/2017/10/new-office-0day-cve-2017-11826.html
-
Nice little write-up on Amber
~~http://www.infoworld.com/article/3150707/application-development/web-friendly-smalltalk-gets-javascript-upgrades.html~~
-
Ode to the use-after-free: one vulnerable function, a thousand possibilities
https://scarybeastsecurity.blogspot.com/2017/05/ode-to-use-after-free-one-vulnerable.html
-
ONC Patient Matching Challenge Approach Writeup
~~http://mindfulmachines.io/blog/2017/7/23/onc-patient-matching-challenge-part1~~
-
OpenSSH 6.8-6.9 PTY local privilege escalation exploit (CVE-2015-6565)
http://www.openwall.com/lists/oss-security/2017/01/26/2 ⭐⭐
-
Operation Luigi: How I hacked my friend without her noticing
https://defaultnamehere.tumblr.com/post/163734466355/operation-luigi-how-i-hacked-my-friend-without#jfuf232n3
-
OWASP Top for ASP.net Core – SQL Injection
~~https://dotnetcoretutorials.com/2017/10/11/owasp-top-10-asp-net-core-sql-injection/~~
-
PEDA – Python Exploit Development Assistance for GDB
https://github.com/longld/peda ⭐⭐
-
PHP quietly fixes issue that allows indirect root-like privilege escalations
https://ma.ttias.be/mitigating-phps-long-standing-issue-opcache-leaking-sensitive-data/?hn
-
Phwning the boardroom: hacking an Android conference phone
https://www.contextis.com/resources/blog/phwning-boardroom-hacking-android-conference-phone/ ⭐
-
Preventing SQL injections in Python (and other vulnerabilities)
https://blog.sqreen.io/preventing-sql-injections-in-python/
-
Privilege Escalation with Kill(-1, SIGKILL) in XNU Kernel of MacOS High Sierra
http://www.openwall.com/lists/oss-security/2017/10/12/1 ⭐⭐
-
PS4 4.05 Kernel Exploit Writeup
https://github.com/Cryptogenic/Exploit-Writeups/blob/master/PS4/%22NamedObj%22%204.05%20Kernel%20Exploit%20Writeup.md ⭐⭐
-
PS4 Jailbreak: Webkit hack, states he has a 4.50 kernel exploit
http://wololo.net/2017/04/02/ps4-jailbreak-qwertyoruiop-progresses-ps4-webkit-hack-states-4-50-kernel-exploit/
-
Pwning banks – Miika Turkia [pdf]
~~http://conference.hitb.org/hitbsecconf2017ams/materials/D1T4%20-%20Miika%20Turkia%20-%20Pwning%20Banks.pdf~~
-
Pwning Lua through 'load'
~~https://saelo.github.io/misc/pwning-lua-through-load.html~~
-
Pwning PHP Mail() Function for Fun and RCE
https://exploitbox.io/paper/Pwning-PHP-Mail-Function-For-Fun-And-RCE.html
-
Pwning the Dlink 850L routers and abusing the MyDlink Cloud protocol
https://pierrekim.github.io/blog/2017-09-08-dlink-850l-mydlink-cloud-0days-vulnerabilities.html
-
Remote code execution in Apache Tomcat 7.0
https://nvd.nist.gov/vuln/detail/CVE-2017-12615
-
Remote Code Execution in BlackBerry Workspaces Server
https://blog.gdssecurity.com/labs/2017/10/16/remote-code-execution-in-blackberry-workspaces-server.html
-
Remote Code Execution in CouchDB (and Privilege Escalation in the Npm Registry)
https://justi.cz/security/2017/11/14/couchdb-rce-npm.html ⭐
-
Remote Code Execution in Source Games
https://oneupsecurity.com/research/remote-code-execution-in-source-games?t=r
-
Remote Code Execution in Unity Editor
http://app.response.unity3d.com/e/es?s=795651218&e=7165522
-
Remote code execution vulnerability in Factorio
https://security.gerhardt.link/RCE-in-Factorio/
-
Remote code execution vulnerability in node-postgres
https://nodesecurity.io/advisories/521
-
Remote Code Execution Vulnerability in Windows DNS Client
https://portal.msrc.microsoft.com/en-us/security-guidance/advisory/CVE-2017-11779
-
Researcher Claims AT&T Modems Have Nasty 0-Day Vulnerability
http://www.dslreports.com/shownews/Researcher-Claims-ATT-Modems-Have-Nasty-0Day-Vulnerability-140249
-
Reverse engineering a hypocritical private API
https://github.com/casperreverser/CasperReverse/blob/master/writeup.md ⭐⭐
-
Reverse Engineering and Exploitation of a “Connected Alarm Clock”
https://courk.fr/index.php/2017/09/10/reverse-engineering-exploitation-connected-clock/
-
Rooting a Printer
https://www.tenable.com/blog/rooting-a-printer-from-security-bulletin-to-remote-code-execution ⭐⭐
-
SAML authentication bypass in GitHub Enterprise
https://enterprise.github.com/releases/2.8.6/notes
-
SANS HolidayHack 2016 Full Writeup
http://ctfhacker.com/pwn/2017/01/05/sans-holidayhack-2016.html
-
Serious privilege escalation bug in Unix OSes imperils servers everywhere
https://arstechnica.com/security/2017/06/12-year-old-security-hole-in-unix-based-oses-isnt-plugged-after-all/
-
Sinking container ships by hacking load plan software
https://www.pentestpartners.com/security-blog/sinking-container-ships-by-hacking-load-plan-software/ ⭐⭐
-
Slack SAML authentication bypass vulnerability
http://blog.intothesymmetry.com/2017/10/slack-saml-authentication-bypass.html
-
Someone is putting lots of work into hacking GitHub developers
https://arstechnica.com/security/2017/03/someone-is-putting-lots-of-work-into-hacking-github-developers/
-
SQL Injection and CSRF Vulnerability in Popular WordPress Plugin Loginizer
https://blog.wpscans.com/sql-injection-and-csrf-security-vulnerability-in-loginizer/
-
SQL Injection Attacks in Entity Framework Core 2.0
https://aspnetmonsters.com/2017/09/monsters-weekly/ep105/
-
SQL Injection Vulnerability in Joomla 3.7
https://blog.sucuri.net/2017/05/sql-injection-vulnerability-joomla-3-7.html ⭐⭐
-
SQL Injection Vulnerability in WP Statistics
https://blog.sucuri.net/2017/06/sql-injection-vulnerability-wp-statistics.html ⭐⭐
-
SQL Injection with New Relic [PATCHED]
https://blog.seanmcelroy.com/2017/05/26/sql-injection-with-new-relic-patched/
-
SquirrelMail 1.4.22 Remote Code Execution (CVE-2017-7692)
http://legalhackers.com/advisories/SquirrelMail-Exploit-Remote-Code-Exec-CVE-2017-7692-Vuln.html ⭐⭐
-
STEM CTF: Cyber Challenge 2017 Binary 150 Writeup
http://blog.manol.is/stem-ctf-cyber-challenge-2017-binary-150-writeup.html
-
SUPER SCATTERBRAINED ELYSIAN WRITEUP 9000 (making of a 56KB Demo)
https://everyweeks.com/entry/5814c12e6965033a77743f63
-
Supercon Badge Hacking Quick-Start
https://hackaday.com/2017/10/20/supercon-badge-hacking-quick-start/
-
The Ethernaut CTF Writeup
https://medium.com/positive-ico/the-ethernaut-ctf-writeup-dc3021824abc
-
TS Session Hijacking / Privilege escalation all windows versions
http://seclists.org/fulldisclosure/2017/Mar/50 ⭐⭐
-
TSIG authentication bypass for zone transfer operations in ISC BIND [pdf]
http://www.synacktiv.ninja/ressources/CVE-2017-3142_BIND9_TSIG_zone_transfers_vulnerability_Synacktiv.pdf ⭐
-
TSIG authentication bypass through signature forgery in ISC BIND [pdf]
http://www.synacktiv.ninja/ressources/CVE-2017-3143_BIND9_TSIG_dynamic_updates_vulnerability_Synacktiv.pdf ⭐
-
TSIG authentication bypass through signature forgery in Knot DNS [pdf]
http://www.synacktiv.ninja/ressources/Knot_DNS_TSIG_Signature_Forgery.pdf ⭐
-
U.S. Defense Budget May Help Fund “Hacking for Defense” Classes at Universities
http://spectrum.ieee.org/view-from-the-valley/at-work/education/us-defense-budget-may-help-fund-university-hacking-for-defense-classes
-
UDP remote code execution in Linux &lt;4.5
https://nvd.nist.gov/vuln/detail/CVE-2016-10229
-
Understanding the root cause of account takeover
https://security.googleblog.com/2017/11/new-research-understanding-root-cause.html
-
Unitrends Bug Hunting: Remote Code Execution (CVE-2017-7280) – Chapter 1
https://rhinosecuritylabs.com/research/remote-code-execution-bug-hunting-chapter-1/ ⭐⭐
-
Unpatched (0day) JQuery Mobile XSS
http://sirdarckcat.blogspot.com/2017/02/unpatched-0day-jquery-mobile-xss.html
-
Using QL to find a remote code execution vulnerability in Apache Struts
https://lgtm.com/blog/apache_struts_CVE-2017-9805
-
Vanilla Forums 0day Exploit
https://exploitbox.io/vuln/Vanilla-Forums-Exploit-Host-Header-Injection-CVE-2016-10073-0day.html
-
Virtual machine escape fetches $100k at Pwn2Own hacking contest
https://arstechnica.com/security/2017/03/hack-that-escapes-vm-by-exploiting-edge-browser-fetches-105000-at-pwn2own/
-
Windows 10 0day exploit goes wild, and so do Microsoft marketers
https://arstechnica.com/security/2017/02/op-ed-when-marketers-drive-microsofts-0day-exploit-communications-we-all-lose/
-
Windows Privilege Escalation Methods for Pentesters
https://pentest.blog/windows-privilege-escalation-methods-for-pentesters/
-
Write-up of character filter bypass in ASP.NET using Razor Code
https://www.scip.ch/en/?labs.20170105
-
Write-up of Wikimedia's migration to Thumbor for media thumbnailing
https://blog.wikimedia.org/2017/12/09/thumbor-journey-development-deployment-strategy/
-
Yahoo Remote Code Execution via Spring Engine Server Side Template Injection
~~https://hawkinsecurity.com/2017/12/13/rce-via-spring-engine-ssti/~~
-
Yet ANOTHER WAY of Getting Root on High Sierra
https://twitter.com/xiam/status/935878591082049536
-
Zerodium Is Offering $1M for Tor Browser 0-Day Exploits
~~https://zerodium.com/tor.html~~
-
ZeroNights ICO Hacking Contest Writeup
https://blog.positive.com/zeronights-ico-hacking-contest-writeup-63afb996f1e3
-

### 2016 — 225 writeups

'Mr. Robot' may be fiction, but its hacking plots are all too real
http://www.recode.net/2016/9/20/12983780/mr-robot-may-be-fiction-but-its-hacking-plots-are-all-too-real
-
0-day exploit for Firefox/tor on windows
https://www.wordfence.com/blog/2016/11/emergency-bulletin-firefox-0-day-wild/ ⭐⭐
-
0-day exploits more than double as attackers prevail in security arms race
http://arstechnica.co.uk/security/2016/04/0-day-exploits-more-than-double-as-attackers-prevail-in-security-arms-race/
-
1 Bit Flips, 1 Cloud Flops:Cross-VM Row Hammer Attacks and Privilege Escalation
https://www.usenix.org/conference/usenixsecurity16/technical-sessions/presentation/xiao
-
2000 cuts with Binary Ninja – DEFCON quals writeup
https://blog.trailofbits.com/2016/06/03/2000-cuts-with-binary-ninja/ ⭐
-
32C3 CTF: Docker writeup
~~https://kitctf.de/writeups/32c3ctf/docker/~~
-
[BugBounty] Sleeping Stored Google XSS Awakens a $5000 Bounty
https://blog.it-securityguard.com/bugbounty-sleeping-stored-google-xss-awakens-a-5000-bounty/
-
A Peek into the Dark Side of Account Takeover Attacks
~~http://www.csoonline.com/article/3045247/cyber-attacks-espionage/sentry-mba-makes-credential-stuffing-attacks-easy-and-cheap.html~~
-
A Statistical Approach to Prevent Account Takeover
~~https://security.linkedin.com/blog-archive#01212016~~
-
Advancing exploitation: a scriptless 0day exploit against Linux desktops
http://scarybeastsecurity.blogspot.com/2016/11/0day-exploit-advancing-exploitation.html
-
All Your Meetings Are Belong to Us: Remote Code Execution in Apache OpenMeetings
http://haxx.ml/post/141655340521/all-your-meetings-are-belong-to-us-remote-code
-
Apache Tomcat (Debian-Based Dist.)-Privilege Escalation Exploit (CVE-2016-1240)
http://legalhackers.com/advisories/Tomcat-DebPkgs-Root-Privilege-Escalation-Exploit-CVE-2016-1240.html ⭐⭐
-
Apache Tomcat Deb.Pkg. – Root Privilege Escalation Video PoC
http://legalhackers.com/videos/Apache-Tomcat-DebPkg-Root-PrivEsc-Exploit.html ⭐⭐
-
Authentication bypass on sso.ubnt.com via subdomain takeover of ping.ubnt.com
https://hackerone.com/reports/172137 ⭐⭐
-
AVM FRITZBox: Remote Code Execution via Buffer Overflow
https://www.redteam-pentesting.de/en/advisories/rt-sa-2015-001/-avm-fritz-box-remote-code-execution-via-buffer-overflow
-
Azure 0day Cross-Site Scripting with Sandbox Escape
http://pen-testing.sans.org/blog/2016/08/19/azure-0day-cross-site-scripting-with-sandbox-escape
-
Backdoor in DVR firmware sends CCTV camera snapshots to email address in China
https://www.pentestpartners.com/blog/pwning-cctv-cameras/ ⭐⭐
-
Badoo account takeover vulnerability via import image from the Facebook
https://twitter.com/VulnersCom/status/711946461873872896
-
Beware of privilege escalation when using Dropbox's free teams
https://www.dropbox.com/en/help/218#basic
-
Blender 2.8 UI Workshop Write-Up
~~https://wiki.blender.org/index.php/Dev:2.8/UI/Workshop_Writeup~~
-
Blind SQL injection doesn't have to be blind
https://github.com/libeclipse/blind-sql-bitshifting ⭐⭐
-
Bobby tables: guide to preventing SQL injections
https://github.com/petdance/bobby-tables ⭐⭐
-
Boston Key Party – Frog Fractions 2 Writeup
http://van.prooyen.com/reversing/2016/03/11/Frog-Fractions-2.html
-
Bounty hunters are legally hacking Apple and the Pentagon
https://www.theguardian.com/technology/2016/aug/22/bounty-hunters-hacking-legally-money-security-apple-pentagon
-
Buffer overflow exploit on iPads running iOS 10.1.1
http://arstechnica.com/apple/2016/12/buffer-overflow-exploit-can-bypass-activation-lock-on-ipads-running-ios-10-1-1/
-
Bypassing PHP Null Byte Injection Protections – CTF Write-Up
https://www.securusglobal.com/community/2016/08/19/abusing-php-wrappers/
-
Careers in security, ethical hacking and advice on where to get started
https://www.troyhunt.com/careers-in-security-ethical-hacking-and-advice-on-where-to-get-started/ ⭐⭐⭐
-
Castle is a drag-and-drop account takeover protection solution
http://techcrunch.com/2016/03/21/castle-yc/
-
Change any Uber user's password – Account Takeover (critical)
https://hackerone.com/reports/143717 ⭐⭐
-
ChitaSoft (Web-Application) – SQL Injection Vulnerabilit
https://vulners.com/vulnerlab/VULNERLAB:1782
-
Climber – Check Unix/Linux systems for privilege escalation
https://github.com/raffaele-forte/climber ⭐⭐
-
Critical Oracle Java 7/8 patch for CVE-2016-0636 (remote code execution)
https://infected.io/441/short-news-critical-oracle-java-78-patch-for-cve-2016-0636-remote-code-execution ⭐⭐
-
Crooks Used SQL Injections to Hack Drupal Sites and Install Fake Ransomware
http://news.softpedia.com/news/crooks-used-sql-injections-to-hack-drupal-sites-and-install-web-ransomware-504300.shtml
-
Cross Domain Authentication Bypass in Office 365
http://www.economyofmechanism.com/office365-authbypass.html
-
Cure53 XSSMas Challenge '15 writeup
https://github.com/cure53/XSSChallengeWiki/wiki/XSSMas-Challenge-2015 ⭐⭐
-
CVE-2015-5090 – Adobe Reader/Acrobat Pro Privilege Escalation
http://warchest.fusionx.com/cve-2015-5090-adobe-readeracrobat-pro-privilege-escalation/
-
CVE-2015-7857: Joomla Core SQL Injection Vulnerabilities
http://www.securiteam.com/securitynews/5RP2V2AHQA.html
-
CVE-2016-1247 Nginx Root Privilege Escalation
http://legalhackers.com/advisories/Nginx-Exploit-Deb-Root-PrivEsc-CVE-2016-1247.html ⭐⭐
-
CVE-2016-2123 Overflow Remote Code Execution Vulnerability
https://www.samba.org/samba/security/CVE-2016-2123.html
-
CVE-2016-3085: Apache CloudStack Authentication Bypass Vulnerability
http://seclists.org/bugtraq/2016/Jun/45 ⭐⭐
-
CVE-2016-4117: Flash 0-day exploited in the wild
https://www.fireeye.com/blog/threat-research/2016/05/cve-2016-4117-flash-zero-day.html
-
CVE-2016-4631 APPLE IMAGE I/O API TILED TIFF REMOTE CODE EXECUTION VULNERABILITY
http://www.talosintelligence.com/reports/TALOS-2016-0171/
-
CVE-2016-6662 – MySQL Remote Root Code Execution / Privilege Escalation ( 0day )
http://seclists.org/oss-sec/2016/q3/481 ⭐⭐
-
CVE-2016-8655 Linux Kernel Local Privilege-Escalation Vulnerability
https://www.tecklyfe.com/cve-2016-8655-five-year-old-linux-kernel-local-privilege-escalation-vulnerability-discovered/
-
D-Link DWR-932 Authentication Bypass Exploit
https://twitter.com/VulnersCom/status/712178728936325120
-
DEFCON 23: Underhanded Crypto Contest Password Authentication Backdoor Write-Up
https://paragonie.com/b/0cXQ2OrtVQPyiX5Q
-
Details on the Privilege Escalation Vulnerability in Joomla
https://blog.sucuri.net/2016/10/details-on-the-privilege-escalation-vulnerability-in-joomla.html ⭐⭐
-
Dirty COW (CVE-2016-5195) – Linux Kernel Privilege Escalation Vulnerability
https://github.com/dirtycow/dirtycow.github.io/wiki/VulnerabilityDetails ⭐⭐
-
Dirty COW is a privilege escalation vulnerability in the Linux Kernel
http://dirtycow.ninja/
-
Exim before 4.86.2 vulnerable to Local Root Privilege Escalation
http://legalhackers.com/advisories/Exim-Local-Root-Privilege-Escalation.txt ⭐⭐
-
Exodus Write-Up on Cisco IKEv1 and IKEv2 Buffer Overflow Vulnerability
https://blog.exodusintel.com/2016/01/26/firewall-hacking/ ⭐
-
Exploiting CVE-2016-2060 on Qualcomm devices
https://www.fireeye.com/blog/threat-research/2016/05/exploiting_cve-2016-.html
-
Exploiting CVE-2016-86
https://blog.lizzie.io/exploiting-CVE-2016-8606.html
-
Exploiting Dirty COW (CVE-2016-5195) in a Container
https://scottydoesntknow.io/container-secure-right/
-
Exploiting Internet Explorer’s MS15-106, Part I: VBScript Filter Type Confusion
https://blog.coresecurity.com/2016/04/25/exploiting-internet-explorers-ms15-106-part-i-vbscript-filter-type-confusion-vulnerability-cve-2015-6055/
-
Exploiting Linux kernel heap off-by-one
https://cyseclabs.com/blog/cve-2016-6187-heap-off-by-one-exploit
-
Exploiting PHPMailer (CVE-2016-10033)
https://hackr.pl/2016/12/27/exploiting-phpmailer-cve-2016-10033/
-
Exploiting PS Vita Kernel: SceNetIoctl Use-After-free
https://blog.xyz.is/2016/vita-netps-ioctl.html
-
Extracting Multiple Bits per Request from Full-Blind SQL Injection Vulns
http://howto.hackallthethings.com/2016/07/extracting-multiple-bits-per-request.html
-
Fare Hacking on BART
http://brennan.io/2016/07/23/bart-fare-hacking/
-
Fedora and Ubuntu 0-days show that hacking desktop Linux is now a thing
http://arstechnica.com/security/2016/12/fedora-and-ubuntu-0days-show-that-hacking-desktop-linux-is-now-a-thing/
-
Firefox 0day in the wild is being used to attack Tor users
http://arstechnica.com/security/2016/11/firefox-0day-used-against-tor-users-almost-identical-to-one-fbi-used-in-2013
-
First iOS Trojan Exploiting Apple DRM Design Flaws to Infect Any iOS Device
http://researchcenter.paloaltonetworks.com/2016/03/acedeceiver-first-ios-trojan-exploiting-apple-drm-design-flaws-to-infect-any-ios-device/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed:+PaloAltoNetworks+%28Palo+Alto+Networks+Research+Center%29
-
Gandi security vulnerability: two factor authentication bypass
https://www.pietroalbini.org/blog/gandi-security-vulnerability-2fa-bypass/
-
Gavin Andresen's commit access to Bitcoin revoked, hacking suspected
https://twitter.com/petertoddbtc/status/727078284345917441
-
Getting root access on a Tesla Model S
http://www.su-tesla.space/
-
GitLab authentication bypass with two-factor enabled
https://www.onthewire.io/gitlab-fixes-authentication-bypass-flaw/
-
Give Congress Time to Debate New Government Hacking Rule
https://www.eff.org/deeplinks/2016/11/give-congress-time-debate-new-government-hacking-rule
-
Hackers Can Now Make $100,000 for Pwning the Chromebook
http://motherboard.vice.com/read/hackers-google-chromebook-bug-bounty-100-000
-
HACKIM WRITEUP (PROG AND CRYPTO) – SHIVAM DIXIT
http://shivamdixit.com/ctf/hackim-writeup/#intro
-
Hacking 27% of the Web via WordPress Auto-Update – Wordfence
https://www.wordfence.com/blog/2016/11/hacking-27-web-via-wordpress-auto-update/ ⭐⭐
-
Hacking Calculords
https://rkoutnik.com/2016/04/06/Hacking-Calculords.html
-
Hacking Calculords part 2: Who needs fingers?
https://rkoutnik.com/2016/06/14/hacking-calculords-2-who-needs-fingers.html
-
Hacking Imgur for Fun and Profit
https://medium.com/@nmalcolm/hacking-imgur-for-fun-and-profit-3b2ec30c9463
-
Hacking inclusion by customizing a Slack bot
https://18f.gsa.gov/2016/01/12/hacking-inclusion-by-customizing-a-slack-bot/
-
Hacking industrial vehicles from the internet
http://jcarlosnorte.com/security/2016/03/06/hacking-tachographs-from-the-internets.html
-
Hacking Infix Operators into Python with Decorators
~~http://tomerfiliba.com/blog/Infix-Operators/~~
-
Hacking my Tesla Model S
http://www.su-tesla.space/2016/04/hack-s.html?m=1
-
Hacking Redis to Save Money
https://medium.com/@paydro/hacking-redis-to-save-money-6472332697e4
-
Hacking the Mitsubishi Outlander PHEV hybrid
https://www.pentestpartners.com/blog/hacking-the-mitsubishi-outlander-phev-hybrid-suv/ ⭐⭐
-
Hacking the Zsun WiFi SD Card Reader
https://wiki.hackerspace.pl/projects:zsun-wifi-card-reader
-
Hacking with LaTeX
https://0day.work/hacking-with-latex/ ⭐⭐
-
Hacking Your Phone
http://www.cbsnews.com/news/60-minutes-hacking-your-phone/
-
Happy Hacking Easter – Story of privacy violation into an eggshell
http://blog.hacktivesecurity.com/index.php?controller=post&action=view&id_post=12
-
Hiawatha Webserver Challenge: SQL Injection
http://sqli.hiawatha-webserver.org
-
Highly critical vulnerabilities allowing remote code execution in Drupal
http://drupal.sh/remote-code-execution-vulnerability-in-drupal-psa-2016-001
-
Holiday Hack Challenge 2015 Complete Writeup
https://medium.com/@jrozner/holiday-hack-challenge-2015-complete-writeup-1c8300cc847a#.83qi1fxub
-
Hot Potato – Windows Privilege Escalation
http://foxglovesecurity.com/2016/01/16/hot-potato/
-
Hotspot Shield 6.0.3 – Unquoted Service Path Privilege Escalation
https://www.exploit-db.com/exploits/40528/?rss ⭐⭐
-
How I could have hacked any Facebook account
http://www.anandpraka.sh/2016/03/how-i-could-have-hacked-your-facebook.html ⭐⭐
-
How I Could Have Hacked Multiple Facebook Accounts
https://medium.com/@gurkiratsingh/how-i-could-have-hacked-multiple-facebook-accounts-d9d335188d9b
-
How I exploited a loophole in a system – Medium
https://medium.com/@xittycat/how-i-exploited-a-loophole-in-a-system-baea0937360b#.y07rj8heu
-
How I found 100 highly targeted leads in 60 seconds
https://find70.wordpress.com/2016/11/14/how-i-found-100-highly-targetted-leads-in-60-seconds/
-
How I Found a Bug in Education
https://medium.com/@KimChouard/how-i-found-a-bug-in-education-1c00d2c307c9#.f1ebsiblk
-
How I found a data leak of a company during a college lecture
http://sijmen.ruwhof.net/weblog/937-how-i-found-a-huge-data-leak-of-a-company-during-a-college-lecture
-
How I found a tech cofounder to join my startup
https://medium.com/@ashleyrdtx/how-i-found-a-tech-cofounder-to-join-my-startup-ecda9fa8c59d
-
How I Found CUDA, Or: Rewriting the Tag Engine
http://blog.marcgravell.com/2016/05/how-i-found-cuda-or-rewriting-tag_9.html
-
How I Found the Best Programming Language in the World. Part 1
http://kukuruku.co/hub/funcprog/how-i-found-the-best-programming-language-in-the-world-part-1
-
How I got featured on Hacker News – case study
https://float-middle.com/i-got-featured-on-hacker-news-case-study/
-
How I hacked a gmail account
https://medium.com/@tawrahim/how-i-hacked-a-gmail-account-56f982f306b4#.ryqoob1u6
-
How I Hacked an Android App to Get Free Beer
https://breakdev.org/how-i-hacked-an-android-app-to-get-free-beer/
-
How I Hacked Facebook and Found Someone's Backdoor Script
http://devco.re/blog/2016/04/21/how-I-hacked-facebook-and-found-someones-backdoor-script-eng-ver/ ⭐
-
How I Hacked Global Citizen for Free Coldplay Tickets
https://medium.com/@iSatyajeet/i-hacked-global-citizen-for-free-tickets-87de7b2a8d1#.hvak4kxg8
-
How I hacked Google Daydream controller
https://hackernoon.com/how-i-hacked-google-daydream-controller-c4619ef318e4#.ej3ylk721 ⭐⭐⭐
-
How I Hacked Medium’s Top Stories
https://medium.com/@cablej/how-i-hacked-medium-s-top-stories-b0215da01bc9#.51s5s92uj
-
How I hacked my local ISP and some general learnings
https://blog.harshillodhi.co.in/how-i-hacked-into-my-isp-and-what-i-learnt-in-the-process/
-
How I hacked my way into TechCrunch Disrupt
https://www.facebook.com/notes/laurentiu-ion/how-i-hacked-my-way-into-techcrunch-disrupt-2016/1400581146637823
-
How I hacked physical life with a Minecraft theme park ride
http://blog.htmlfusion.com/how-i-hacked-physical-life-with-a-minecraft-theme-park-ride/
-
How I hacked plot.ly by exploiting an SVG vulnerability in plotly.js
~~https://acloudtree.com/2016-08-09-how-i-hacked-plotly-by-exploiting-a-svg-vulnerability-in-plotlyjs/~~
-
How I hacked Pornhub for fun and profit ($10,000)
https://5haked.blogspot.com/2016/10/how-i-hacked-pornhub-for-fun-and-profit.html
-
How I hacked sales: write about people who don't buy from me

-
How I hacked the Google Daydream controller
http://www.slideshare.net/MatteoPisani/how-i-hacked-the-google-daydream-controller-70125903
-
How I Hacked the Self Balancing Scooter
http://drewspewsmuse.blogspot.com/2016/06/how-i-hacked-self-balancing-scooter.html
-
How I Hacked Uber for Delivery in Inda
http://www.ewebbuddy.com/2016/10/uber-hack-delivery-india/
-
How I hacked your CFP (and probably some other things too)
http://haxx.ml/post/149975211631/how-i-hacked-your-cfp-and-probably-some-other
-
How I made hiring easy with XSS
https://medium.com/@dheerajhere/hiring-made-so-easy-security-write-up-c717a152c21c
-
How security flaws work: SQL injection
http://arstechnica.com/information-technology/2016/10/how-security-flaws-work-sql-injection/
-
How Tech Startup Founders Are Hacking Immigration
http://www.bloomberg.com/news/articles/2016-02-10/how-tech-startup-founders-are-hacking-immigration
-
How to Prevent SMS 2FA Account Takeover
https://blog.instant2fa.com/how-to-prevent-sms-2fa-account-takeover-d7218e727cfc#.2d75y4nzr
-
How we broke PHP, hacked Pornhub and earned $20k
https://www.evonide.com/how-we-broke-php-hacked-pornhub-and-earned-20000-dollar/
-
How we found a bug in Amazon ELB
https://sysdig.com/blog/amazon-elb-bug/ ⭐⭐
-
How we found that the Linux nios2 memset() implementation had a bug
http://free-electrons.com/blog/how-we-found-that-the-linux-nios2-memset-implementation-had-a-bug/
-
How We Found the Wet Princes of Bel Air
https://www.revealnews.org/blog/now-this-is-a-story-all-about-how-we-found-the-wet-princes-of-bel-air/
-
How we hacked an Amazon Dash Button for a fresh cup of coffee
https://medium.com/@nelsoncash/fresh-pots-443bce83a91b#.j2k37e791
-
How We Hacked Our Blogging Strategy to Land Posts on TechCrunch, Forbes, WSJ
https://medium.com/@mickey_graham/how-we-growth-hacked-our-guest-blogging-strategy-to-land-posts-on-techcrunch-forbes-the-wall-1db9f301d15f?_hsenc=p2ANqtz--a8kQ6Rl04PSdWGhBkhLF-uROWYHm0z_CUopZPNWjK2NkkMTQhGKigQgL_t27fF_hWTo-MOxO-GaBCLLndY-smLE-5uA&_hsmi=31116173#.mtqul2de1
-
How We Hacked the Media and Landed Six-Figure Contracts in Four Days
https://medium.com/p/96ea4aca4eef
-
How we pwned your ICS or why you should not put your HMI on the internet
https://en.internetwache.org/how-we-pwned-your-ics-or-why-you-should-not-put-your-hmi-on-the-internet-18-08-2016/
-
Improper Session Termination Leading to Account Takeover
https://blog.securitycompass.com/improper-session-termination-leading-to-account-takeover-657760aed177#.acjqibxyo
-
Interview with Raph Levien about Xi, Rust, data structures, and hacking history
http://www.newrustacean.com/show_notes/interview/_2/index.html
-
Introduction to Avoiding SQL Injection
http://blog.xojo.com/avoiding-sql-injection
-
Jailbreaking the Kindle
https://github.com/sgayou/kindle-5.6.5-jailbreak/blob/master/doc/README.md ⭐⭐
-
Jailbreaking the Microsoft Fitness Band
http://www.b0n0n.com/2016/04/20/ms-jailbreak/
-
Kernel Local Privilege Escalation – CVE-2016-5195
https://access.redhat.com/security/vulnerabilities/2706661
-
Language Hacking in a Live Programming Environment
https://ohmlang.github.io/pubs/live2016/
-
Learn SQL injection by hacking a website
https://www.hacksplaining.com/exercises/sql-injection
-
Lenovo ThinkPad System Management Mode arbitrary code execution 0day exploit
https://github.com/Cr4sh/ThinkPwn ⭐⭐
-
Linux CVE-2016-4997 (local privilege escalation) and CVE-2016-4998
http://www.openwall.com/lists/oss-security/2016/06/24/5 ⭐⭐
-
Linux Kernel CVE-2015-5157 Local Privilege Escalation Vulnerability
http://www.securityfocus.com/bid/76005
-
Linux Kernel Use-After-Free Remote Code Execution Vulnerability
http://www.securityfocus.com/bid/93304/discuss
-
Linux privilege escalation and OOB memory access: exploitable from containers
http://seclists.org/oss-sec/2016/q2/599 ⭐⭐
-
Local root privilege escalation vulnerability in Debian 8 and Ubuntu 16.04
https://marc.ttias.be/oss-security/2016-05/msg00086.php
-
Maxthon Browser Arbitrary File Write, Login Page UXSS, and SQL Injection
http://d3adend.org/blog/?p=851
-
McAfee SiteList.xml leads to Active Directory domain privilege escalation
~~https://github.com/tfairane/HackStory/blob/master/McAfeePrivesc.md~~
-
McAfee Virus Scan for Linux Vulnerability Writeup
~~https://nation.state.actor/mcafee.html~~
-
Memcached Vulnerable to Remote Code Execution
http://blog.talosintel.com/2016/10/memcached-vulnerabilities.html
-
Mr. Robot Blind SQL Injection Vulnerability
https://corenumb.wordpress.com/2016/05/14/mr-robot-blind-sql-injection-vulnerability/
-
MSI ntiolib.sys/winio.sys local privilege escalation
http://blog.rewolf.pl/blog/?p=1630
-
MySQL Remote Root Code Execution/Privilege Escalation Exploit
http://legalhackers.com/advisories/MySQL-Exploit-Remote-Root-Code-Execution-Privesc-CVE-2016-6662.html ⭐⭐
-
Netflix Account Takeover Through Automated Phone Calls
https://slashcrypto.org/2016/11/07/Netflix/
-
Not a Hacker or a Hipster – How I Got My First Startup Job
https://medium.com/tech-london/not-a-hacker-or-a-hipster-how-i-got-my-first-start-up-job-922399a7dfbb#.qaysnclo5
-
Not-So-Blind SQL Injection
http://libeclipse.me/blind-sql-bitshifting/
-
On Leaving the World Better Than How I Found It
http://www.huffingtonpost.com/chris-castiglione/on-leaving-the-world-bett_b_10058422.html
-
OS X Mass Pwning Using BetterCap and the Sparkle Updater Vulnerability
~~https://www.evilsocket.net/2016/01/30/osx-mass-pwning-using-bettercap-and-the-sparkle-updater-vulnerability/~~
-
Password Authentication Bypass Fixed in GitLab 8.6.5
~~https://about.gitlab.com/2016/04/11/gitlab-8-dot-6-dot-5-released/~~
-
PHP avoiding SQL Injection
http://codetuple.com/articles/php/8CqgJGyg1Rg/php-avoiding-sql-injection
-
Plasma Mobile – Turns your phone into a fully open hacking device
https://plasma-mobile.org/
-
Potentially interesting story of how I found HackerNews :)

-
Pre-auth Remote Code Execution Vulnerability in Metasploit
https://github.com/justinsteven/advisories/blob/master/2016_metasploit_rce_static_key_deserialization.md ⭐⭐
-
PrincesOfPaypal: A security write-up about the Paypal API and data leakage
https://github.com/d3f4ultt/PrincesOfPaypal ⭐⭐
-
Privilege Escalation on Linux with Live Examples
http://resources.infosecinstitute.com/privilege-escalation-linux-live-examples/ ⭐⭐⭐
-
Privilege escalation vulnerability in FreeBSD bhyve
https://www.freebsd.org/security/advisories/FreeBSD-SA-16:32.bhyve.asc
-
Pwning coworkers thanks to LaTeX
https://scumjr.github.io/2016/11/28/pwning-coworkers-thanks-to-latex/
-
Pwning Gnomes: Where CTF Meets 2015 SANS Holiday Hack (Write-Up)
https://www.praetorian.com/blog/engineer-spotlight-cory-duplantis-and-the-2015-sans-holiday-hack-write-up ⭐⭐
-
Pwning Pornhub
https://blog.zsec.uk/pwning-pornhub/
-
Pwning your antivirus, part 1: fun with Avast RPC calls
http://d.igi.tl/2016/02/pwning-your-antivirus-part-1-fun-with.html ⭐⭐
-
Pwning your antivirus, part 2: even your Mac isn't SAFE
http://d.igi.tl/2016/05/pwning-your-antivirus-part-2-even-your.html ⭐⭐
-
Pwning your antivirus, part 3: the UXSS that wouldn't die
http://d.igi.tl/2016/11/pwning-your-antivirus-part-3-uxss-that.html ⭐⭐
-
QSEE privilege escalation vulnerability and exploit
https://bits-please.blogspot.com/2016/05/qsee-privilege-escalation-vulnerability.html
-
Remote Code Execution in CCTV-DVR affecting over 70 different vendors
~~http://www.kerneronsec.com/2016/02/remote-code-execution-in-cctv-dvrs-of.html~~
-
Remote Code Execution in ImageMagick (CVE-2016–3714)
https://medium.com/@rhuber/imagemagick-is-on-fire-cve-2016-3714-379faf762247
-
Remote code execution in remote control software? Dameware vulnerability
https://twitter.com/VulnersCom/status/710719377247707136
-
Remote Code Execution in the Baidu Browser for Android
http://www.lifeform-labs.com/blog/2016/2/27/remote-code-execution-in-the-baidu-browser-for-android
-
Remote Code Execution in Xiaomi MIUI Analytics
https://securityintelligence.com/remote-code-execution-in-xiaomi-miui-analytics/ ⭐⭐
-
Remote code execution through a buffer overflow in all Git versions before 2.7.1
http://www.openwall.com/lists/oss-security/2016/03/15/5 ⭐⭐
-
Remote Code Execution Vulnerability in Broadcom Wi-Fi Driver
https://source.android.com/security/bulletin/2016-02-01.html#remote_code_execution_vulnerability_in_broadcom_wi-fi_driver
-
Remote code execution vulnerability in Git
https://ma.ttias.be/remote-code-execution-git-versions-client-server-2-7-1-cve-2016-2324-cve-2016-2315/
-
Remote code execution vulnerability in ImageMagick
https://imagetragick.com/
-
Reverse engineering and exploitation of a Little Snitch vulnerability
https://sentinelone.com/blogs/shut-snitch-reverse-engineering-exploiting-critical-little-snitch-vulnerability-reverse-engineering-mac-os-x/
-
Reverse engineering and exploiting a critical Little Snitch vulnerability
https://reverse.put.as/2016/07/22/shut-up-snitch-reverse-engineering-and-exploiting-a-critical-little-snitch-vulnerability/
-
Rotten Potato – Privilege Escalation from Service Accounts to SYSTEM
https://foxglovesecurity.com/2016/09/26/rotten-potato-privilege-escalation-from-service-accounts-to-system/
-
RottenPotato – Local privilege escalation from service account to System
https://github.com/foxglovesec/RottenPotato ⭐⭐
-
Security Bulletin: Local Escalation of Privilege Vuln in IBM DB2(CVE-2016-5995)
http://www-01.ibm.com/support/docview.wss?uid=swg21990061
-
Security researcher earns $205k by submitting three 0-day exploits to Zerodium
https://twitter.com/Zerodium/status/760460408142442496
-
SELinux sandbox escape – CXSecurity.com
https://cxsecurity.com/issue/WLB-2016090181
-
Server and client remote code execution through buffer overflow in Git
https://marc.ttias.be/oss-security/2016-03/msg00180.php
-
Some experiments with hacking the Elektronika MK-61
http://www.alfredklomp.com/technology/mk-61/
-
SQL Injection Bypassing WAF
~~https://www.owasp.org/index.php/SQL_Injection_Bypassing_WAF~~
-
SQL Injection Cheat Sheet
https://www.netsparker.com/blog/web-security/sql-injection-cheat-sheet ⭐⭐
-
SQL Injection demonstration on a local sqlite database
https://www.reddit.com/r/programming/comments/4b7gp2/sql_injection_demonstration_on_a_local_sqlite/
-
SQL Injection Fools Speed Traps and Clears Your Record
http://hackaday.com/2014/04/04/sql-injection-fools-speed-traps-and-clears-your-record/
-
SQL Injection on sctrack.email.uber.com.cn
https://hackerone.com/reports/150156 ⭐⭐
-
SQL injection vuln found at Panama Papers firm Mossack Fonseca
http://www.theregister.co.uk/2016/04/11/hackers_pwn_mossack_fonseca/
-
SQL Injection Vulnerability in Ninja Forms
https://blog.sucuri.net/2016/08/sql-injection-vulnerability-ninja-forms.html ⭐⭐
-
SQL injections vulnerabilities in Stack Overflow PHP questions
https://laurent22.github.io/so-injections/
-
SQL Server Announcements:SQL Graph, Adaptive Query Plan,SQL Injection Detection
http://sqlservercode.blogspot.com/2016/10/some-cool-sql-server-announcements-sql.html
-
Statistician calls for audit to address election hacking fears
http://news.berkeley.edu/2016/11/22/election-hacking-audit/
-
Stripe Security Advisory: API Keys in JavaScript Allow Full Account Takeover

-
TempRacer – Windows Privilege Escalation Tool
http://www.darknet.org.uk/2016/03/tempracer-windows-privilege-escalation-tool/
-
The Grad’s Dilemma: How I Found a Software Job That Fits
https://spin.atomicobject.com/2016/07/13/grad-software-job/#.V4Y-04y47uU.hackernews
-
The road not taken: How we found and lost the dream of Personal Rapid Transit
http://www.theverge.com/2016/2/24/11094524/prt-transit-history-self-driving-cars-alden-starrcar-tomorrowland-1960s
-
This low-cost device may be the world’s best hope against account takeovers
http://arstechnica.co.uk/security/2016/12/this-low-cost-device-may-be-the-worlds-best-hope-against-account-takeovers/
-
Three year old privilege escalation bug compromises millions of Android phones
http://arstechnica.com/security/2016/01/linux-bug-imperils-tens-of-millions-of-pcs-servers-and-android-phones/
-
Trove of Stolen Data Is Said to Include Top-Secret U.S. Hacking Tools
http://www.nytimes.com/2016/10/20/us/harold-martin-nsa.html
-
TrustZone Kernel Privilege Escalation (CVE-2016-2431)
https://bits-please.blogspot.com.mt/2016/06/trustzone-kernel-privilege-escalation.html
-
Uber Bug Bounty: Turning Self-XSS into Good-XSS
https://fin1te.net/articles/uber-turning-self-xss-into-good-xss/
-
Uber forces some riders to reset passwords after spike in account takeovers
http://www.businessinsider.com/uber-forces-some-riders-to-reset-their-passwords-2016-3
-
Uber.com Bug Bounty: Remote Code Execution via Flask Jinja2 Template Injection
~~http://blog.orange.tw/2016/03/bug-bounty-ubercom-ubercom-remote-code.html~~
-
Unable to open links in iOS 9.3 bug – fix and tech write-up
https://bencollier.net/2016/03/how-to-fix-ios-9-3s-broken-safari-links/
-
Unfolding obfuscated code with Reven (part 1, full write-up)
http://blog.tetrane.com/2016/11/reversing-f4b-challenge-part1.html
-
Using Multi-Byte Characters to Nullify SQL Injection Sanitizing
http://howto.hackallthethings.com/2016/06/using-multi-byte-characters-to-nullify.html
-
Watch New York City Chess Hustlers Get Pwned by Grandmaster Magnus Carlsen
http://gizmodo.com/watch-new-york-city-chess-hustlers-get-pwned-by-grandma-1787927011
-
Why I love hacking at LibreOffice
http://randomtechnicalstuff.blogspot.com/2016/01/why-i-love-hacking-at-libreoffice.html
-
Why I stopped hacking the Amazon Dash button and learned to solder
https://medium.com/@ecaron/why-i-stopped-hacking-the-amazon-dash-button-and-learned-to-solder-84386a38bbd1
-
Windows 10 Privilege Escalation via Dolby's DAX2_API Service
http://x42.obscurechannel.com/?p=263
-
Windows x86 – 'afd.sys' Privilege Escalation (MS11-046) exploit
https://vulners.com/exploitdb/EDB-ID:40564
-
Writeup of Secure Boot Bypass (MS16-094/MS16-100, CVE-2016-3287/CVE-2016-3320)
https://rol.im/securegoldenkeyboot/
-
Writeup on the BSides Ottawa CTF, My First CTF
https://blog.fletchto99.com/2016/october/bsides-ottawa/
-
Writing my first shellcode
https://0day.work/writing-my-first-shellcode-iptables-p-input-accept/ ⭐⭐
-
Xen Security Advisory 182: Privilege Escalation in PV Guests
https://marc.ttias.be/oss-security/2016-07/msg00152.php
-
XEN x86: Privilege escalation in PV guests
http://xenbits.xen.org/xsa/advisory-182.html
-
Yet Another Car Hacking Tool
http://asintsov.blogspot.com/2016/03/yet-another-car-hacking-tool.html
-
Your CMS Is Probably Vulnerable to Privilege Escalation Attacks
https://www.viget.com/articles/your-cms-is-probably-vulnerable-to-privilege-escalation-attacks
-
“Love Thy Enemy”– How I Found Glitches in Spotify by Comparing with Apple Music
https://medium.com/smartphone-enerlytics/love-thy-enemy-how-i-instantly-found-energy-glitches-in-spotify-by-comparing-it-against-apple-8e599539b1b8#.fo3db4o6l
-
“SQL injection” is 17 years old. Why is it still around?
http://security.stackexchange.com/q/128412/26145
-
“Write Every Day” Is Bad Advice: Hacking the Psychology of Big Projects
http://calnewport.com/blog/2013/01/13/write-every-day-is-bad-advice-hacking-the-psychology-of-big-projects/
-

### 2015 — 197 writeups

(^Exploiting)\s*(CVE-2015-0318)\s*(in)\s*(Flash$)
http://googleprojectzero.blogspot.com/2015/02/exploitingscve-2015-0318sinsflash.html ⭐
-
0-Day Exploit Acquisition Program Update
http://www.netragard.com/0-day-exploit-acquisition-program-update
-
About the “tpwn” Local Privilege Escalation
http://blog.qwertyoruiop.com/?p=69
-
Abusing Blu-Ray Players – Sandbox Escapes
~~https://www.nccgroup.com/en/blog/2015/02/abusing-blu-ray-players-pt-1-sandbox-escapes/~~
-
ACM Applicative Conference 2015 write-up
http://maxhorstmann.net/blog/2015/03/05/acm-applicative-2015/
-
Adobe Flash 0-Day Vulnerability Serves Up Bedep Malware on Adult Website
http://www.tripwire.com/state-of-security/latest-security-news/adobe-flash-0-day-vulnerability-serves-up-bedep-malware-on-adult-website/#.VMpmactORck.hackernews
-
An open letter from bunnie, author of Hacking the Xbox (2013)
http://www.nostarch.com/xboxfree
-
An X86 Design Flaw Allowing Universal Privilege Escalation
https://www.blackhat.com/us-15/briefings.html#the-memory-sinkhole-unleashing-an-x86-design-flaw-allowing-universal-privilege-escalation
-
Anatomy of an Attack: How I Hacked StackOverflow (2012)
http://blog.ircmaxell.com/2012/11/anatomy-of-attack-how-i-hacked.html
-
Android 0-day vulnerability – Drive by download
http://seclists.org/fulldisclosure/2015/Apr/77 ⭐⭐
-
Android linux kernel privilege escalation (CVE-2014-4323)
http://bits-please.blogspot.com/2015/08/android-linux-kernel-privilege_26.html
-
Another Flash 0-Day: CVE-2015-0313 – Already Being Exploited Actively
https://infected.io/57/another-flash-0-day-cve-2015-0313 ⭐⭐
-
Apple to fix privilege escalation bug in 10.10.5
http://www.theguardian.com/technology/2015/aug/05/apple-will-fix-mac-os-x-bug-amid-security-concerns
-
Beginners Guide to “Use After Free Exploits IE 6 0-day Exploit Development”
~~http://garage4hackers.com/content.php?r=143-Beginners-Guide-to-Use-after-free-Exploits-IE-6-0-day-Exploit-Development~~
-
Being diligent at slacking off. How I hacked GitHub streaks
~~http://www.jontsai.com/2015/03/25/hack-github-streaks/~~
-
Bugbounty.me – The first bughunter driven writeup and review portal
https://bugbounty.me
-
Cardinals Face F.B.I. Inquiry in Hacking of Astros’ Network
http://www.nytimes.com/2015/06/17/sports/baseball/st-louis-cardinals-hack-astros-fbi.html
-
CHES 2015 hacking challenge writeup
http://wiki.yobi.be/wiki/CHES2015_Writeup
-
Class Dismissed: 4 Use-After-Free Vulnerabilities in Windows
http://breakingmalware.com/vulnerabilities/class-dismissed-4-use-after-free-vulnerabilities-in-windows/
-
Codeforces Account Takeover
http://blog.mbassem.com/2015/05/09/codeforces-account-takeover/
-
Container Madness: Privilege Escalation Using Docker
~~https://adrianlshaw.github.io/Docker-Container-Madness/~~
-
Controversial Hacking Cases of the Past Decade
http://www.wired.com/2015/10/cfaa-computer-fraud-abuse-act-most-controversial-computer-hacking-cases/
-
CSAW 2015 Web 500 Writeup
http://l.avala.mp/blog/csaw-2015-web-500-writeup/
-
CVE-2014-3440 – Symantec Critical System Protection Remote Code Execution
http://blog.silentsignal.eu/2015/05/07/cve-2014-3440-symantec-critical-system-protection-remote-code-execution/
-
CVE-2015-0235 glibc gethostbyname Overflow writeup
http://www.openwall.com/lists/oss-security/2015/01/27/9 ⭐⭐
-
CVE-2015-1427 Remote Code Execution in Elasticsearch
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-1427
-
CVE-2015-2342 – Remote Code Execution Within VMware VCenter
https://www.7elements.co.uk/resources/blog/cve-2015-2342-remote-code-execution-within-vmware-vcenter/
-
CVE-2015-4335/DSA-3279 – Redis Lua Sandbox Escape
~~https://redislabs.com/blog/cve-2015-4335-dsa-3279-redis-lua-sandbox-escape~~
-
Daily Bite of Python: Prevent SQL injections by avoiding string interpolations
~~https://www.quantifiedcode.com/app/issue_class/5a90dc81d1c54299a358532557e83f84~~
-
Delmarva Power (Pepco) Account Takeover Vulnerability
http://randywestergren.com/delmarva-power-pepco-account-takeover-vulnerability/
-
Detailed writeup of how Bitcoin mining works – Probably not the way you think
https://www.zapchain.com/a/l/bitcoin-mining-it-doesnt-work-the-way-you-think-it-does/g9GRf32qdm
-
Developer's writeup on issues in implementing Bitcoin on an e-commerce site
http://www.reddit.com/r/Bitcoin/comments/2s92mk/i_just_implemented_bitcoin_on_an_ecommerce_site/
-
Developing an account takeover worm for Pixelapse (recent Dropbox acquisition)
http://bleaney.ca/developing-an-account-takeover-worm-for-pixelapse-recent-dropbox-acquisition/?source=hackernews
-
Don't publicly expose .git or how we hacked you – An analysis of Alexa's 1M
https://en.internetwache.org/dont-publicly-expose-git-or-how-we-downloaded-your-websites-sourcecode-an-analysis-of-alexas-1m-28-07-2015/
-
Egor Homakov: Hacking a Bitcoin Exchange
http://sakurity.com/blog/2015/01/10/hacking-bitcoin-exchanger.html
-
Explaining the IIS Range Header Attack (CVE-2015-1635)
~~http://www.softwire.com/blog/2015/04/21/explaining-a-security-vulnerability-the-iis-range-header-attack-cve-2015-1635/~~
-
Exploit Development Course for Windows
http://expdev-kiuhnm.rhcloud.com/ ⭐⭐⭐
-
Exploiting Cannabinoid-Induced Cytotoxic Autophagy to Drive Melanoma Cell Death
http://www.nature.com/jid/journal/vaop/naam/pdf/jid201545a.pdf
-
Exploiting CVE-2011-2461 on Google.com
http://blog.mindedsecurity.com/2015/03/exploiting-cve-2011-2461-on-googlecom.html
-
Exploiting CVE-2015-2426, and How I Ported It to a Recent Windows 8.1 64-bit
https://www.nccgroup.trust/us/our-research/exploiting-cve-2015-2426-and-how-i-ported-it-to-a-recent-windows-8.1-64-bit/?research=Whitepapers ⭐
-
Exploiting Emotions About Paris to Blame Snowden, Distract from Culprits
https://theintercept.com/2015/11/15/exploiting-emotions-about-paris-to-blame-snowden-distract-from-actual-culprits-who-empowered-isis/
-
Exploiting Internet Explorer 10 (part of ExpDev Course)
http://expdev-kiuhnm.rhcloud.com/2015/05/31/ie10-reverse-engineering-ie/ ⭐⭐⭐
-
Exploiting MS14-066 / CVE-2014-6321 (aka “Winshock”)
http://www.securitysift.com/exploiting-ms14-066-cve-2014-6321-aka-winshock/
-
Exploiting NVMAP to Escape the Chrome Sandbox – CVE-2014-5332
http://googleprojectzero.blogspot.com/2015/01/exploiting-nvmap-to-escape-chrome.html ⭐
-
Exploiting PHP Upload Forms with CVE-2015-2348
http://www.paulosyibelo.com/2015/03/exploiting-php-upload-forms-with-cve.html ⭐⭐
-
Exploiting the Adobe Updater (CVE-2015-5090)
http://h30499.www3.hp.com/t5/HP-Security-Research-Blog/Adobe-s-CVE-2015-5090-Updating-the-Updater-to-become-the-bossman/ba-p/6765412#.VafBNxNVikp
-
Exploiting the Superfish certificate
http://blog.erratasec.com/2015/02/exploiting-superfish-certificate.html#.VOgck1PF9k5
-
Exploiting “BadIRET” vulnerability
http://labs.bromium.com/2015/02/02/exploiting-badiret-vulnerability-cve-2014-9322-linux-kernel-privilege-escalation/
-
First Article in Exploit Development Course
http://expdev.byethost7.com/
-
Flash 0-Day CVE-2015-0313 fix going live – you should update Flash
https://infected.io/92/flash-0-day-cve-2015-0313-fix-going-live-you-should-update-it-immediately ⭐⭐
-
Flash 0day in Ad Networks – Another Reason to Use Ad-Blockers
http://research.zscaler.com/2015/01/malvertising-leading-to-flash-zero-day.html
-
Frankly Speaking: How I Found Purpose
https://medium.com/frankly-speaking/frankly-speaking-how-i-found-purpose-38fe929e70bb
-
Full Disclosure: WinRAR SFX v5.21 – Remote Code Execution Vulnerability
http://seclists.org/fulldisclosure/2015/Sep/106 ⭐⭐
-
Gemalto's findings of its investigations into the alleged hacking of SIM cards
http://www.gemalto.com/press/Pages/Gemalto-presents-the-findings-of-its-investigations-into-the-alleged-hacking-of-SIM-card-encryption-keys.aspx
-
Getting Root Access on HP Thin Clients
http://blog.malerisch.net/2015/04/pwning-hp-thin-client.html
-
Ghost in the Shellcode 2015 – Blocky’s Revenge Writeup
https://medium.com/@shanewilton/ghost-in-the-shellcode-2015-blockys-revenge-7074a119115e
-
Google Discloses New Unpatched Windows 8.1 Privilege Escalation Flaw
http://www.securityweek.com/google-discloses-new-unpatched-windows-81-privilege-escalation-flaw
-
Google Fixes Sandbox Escape in Chrome – Threatpost
https://threatpost.com/google-fixes-sandbox-escape-in-chrome/112899
-
Google sticks anti-SQL injection vaccine into MySQL MariaDB fork
http://www.theregister.co.uk/2015/04/09/mariadb_google_security_injection/
-
Hacker claims PlayStation 4 jailbreak via FreeBSD kernel exploit
https://thestack.com/security/2015/12/14/hacker-claims-playstation-4-jailbreak-via-freebsd-9-0-kernel-exploit/
-
Hacking a parking ticket system
~~http://www.ronreiter.com/free-parking-for-life~~
-
Hacking Blu-ray players with Java
https://www.nccgroup.trust/en/blog/2015/02/abusing-blu-ray-players-pt-1-sandbox-escapes/ ⭐
-
Hacking Elixir's Syntax
http://blog.heldscal.la/elixir-hacking.html
-
Hacking Facebook Pages – Facebook Vulnerability – BugBounty
http://www.7xter.com/2015/08/hacking-facebook-pages.html
-
Hacking for Defense in Silicon Valley
http://www.steveblank.com/2015/03/31/hacking-for-defense-in-silicon-valley/
-
Hacking GCN via OpenGL
https://onedrive.live.com/view.aspx?resid=EBE7DEDA70D06DA0!107&app=PowerPoint&authkey=!AD-O3oq3Ung7pzk
-
Hacking Head Tags for Speed and Profit
http://www.nateberkopec.com/2015/10/21/hacking-head-tags-for-speed-and-profit.html
-
Hacking java bytecode
http://cory.li/bytecode-hacking/
-
Hacking of Tax Returns More Extensive Than First Reported, I.R.S. Says
http://www.nytimes.com/2015/08/18/us/politics/hacking-of-tax-returns-more-extensive-than-first-reported-irs-says.html?_r=0
-
Hacking Oklahoma State University's Student ID
http://snelling.io/hacking-oklahoma-state-university-student-id
-
Hacking Our Nervous Systems
http://digg.com/2015/hacking-the-nervous-system
-
Hacking Passion (2013)
http://www.kytrinyx.com/blog/hacking-passion
-
Hacking PayPal Server by Exploiting a Remote Code Execution Flaw
http://securityaffairs.co/wordpress/36394/hacking/paypal-remote-code-execution.html
-
Hacking S-expressions into Ruby
~~https://sonnym.github.io/2015/02/26/hacking-s-expressions-into-ruby/~~
-
Hacking Servo for Noobs
https://gist.github.com/paulrouget/2f00941e6e82aeecad23 ⭐⭐
-
Hacking Smartwatches – The TomTom Runner, Part 1
~~http://grangeia.io/2015/11/09/hacking-tomtom-runner-pt1/~~
-
Hacking Starbucks for unlimited coffee
http://sakurity.com/blog/2015/05/21/starbucks.html
-
Hacking the D-Link DIR-890L
http://www.devttys0.com/2015/04/hacking-the-d-link-dir-890l/ ⭐
-
Hacking the iPod: How I Earned $65K in High School (2012)
http://gizmodo.com/5906616/hacking-the-ipod-how-i-earned-65k-in-high-school
-
Hacking the nervous system
~~http://mosaicscience.com/story/hacking-nervous-system~~
-
Hacking the PS Vita
https://yifan.lu/2015/06/21/hacking-the-ps-vita/
-
Hacking the PS4, part 3: Kernel exploitation
http://cturt.github.io/ps4-3.html ⭐
-
Hacking the random walk hypothesis
~~http://www.turingfinance.com/hacking-the-random-walk-hypothesis/~~
-
Hacking Ubuntu Touch
https://sturmflut.github.io/ubuntu/touch/2015/05/07/hacking-ubuntu-touch-index/
-
Hacking X Rebirth for fun and education
http://fabian.trampusch.info/blog/hacking-xrebirth-for-fun-and-education/
-
Heap Spraying and Use-After-Free
http://expdev-kiuhnm.rhcloud.com/2015/05/29/exploitme5-heap-spraying-uaf/ ⭐⭐⭐
-
How AeroPress Fans Are Hacking Their Way to a Better Cup of Coffee
http://www.npr.org/blogs/thesalt/2015/04/14/399337724/how-aeropress-fans-are-hacking-their-way-to-a-better-cup-of-coffee
-
How Driscoll’s Is Hacking the Strawberry of the Future
http://www.bloomberg.com/news/features/2015-07-29/how-driscoll-s-is-hacking-the-strawberry-of-the-future
-
How hacking helped me become Obama's CTO
https://medium.com/backchannel/how-hacking-helped-me-become-obama-s-cto-c4895cac372e
-
How I found glaring errors in Einstein's calculations (2009)
~~http://www.cognitionandculture.net/home/blog/35-pascals-blog/435-how-i-found-glaring-errors-in-einsteins-calculations~~
-
How I found one of the earliest browsers on a NeXTcube
http://pupeno.com/2015/12/21/how-i-found-one-of-the-earliest-browsers-in-history/
-
How I Found the Optimal Where’s Waldo Strategy with Machine Learning
http://www.wired.com/2015/02/created-perfect-wheres-waldo-strategy-machine-learning/
-
How I Found the Right Startup Idea
http://edoceo.com/blog/2015/03/finding-the-right-startup-idea
-
How I hacked a fitness tracker to wake me – but not my wife – when I get paged
~~http://blog.honeybadger.io/how-i-hacked-a-fitness-tracker-to-wake-me-but-not-my-wife-when-i-get-paged/?utm_source=hn&utm_medium=social&utm_campaign=blogpost~~
-
How I Hacked a Mind-Body TMS with Meditation
~~http://biohackyourself.com/how-i-hacked-a-mind-body-tms-with-meditation/~~
-
How I Hacked Amazon’s $5 WiFi Button
https://medium.com/@edwardbenson/how-i-hacked-amazon-s-5-wifi-button-to-track-baby-data-794214b0bdd8
-
How I Hacked Hotmail
https://www.synack.com/labs/blog/how-i-hacked-hotmail/
-
How I hacked India’s biggest startup
http://thenextweb.com/insider/2015/03/23/how-i-hacked-indias-biggest-startup/
-
How I Hacked Kylie, Kendall, Kim and Khloe's New Apps Under 24 Hours
https://medium.com/@alaxic/the-insecurities-of-the-kardashians-kim-isn-t-as-popular-as-kylie-2023d5b6ab7c
-
How I Hacked Kylie, Kendall, Kim and Khloe's New Apps Within 24 Hours
http://webcache.googleusercontent.com/search?q=cache%3Ahttps%3A%2F%2Fmedium.com%2F%40alaxic%2Fthe-insecurities-of-the-kardashians-kim-isn-t-as-popular-as-kylie-b03775eddea8&oq=cache%3Ahttps%3A%2F%2Fmedium.com%2F%40alaxic%2Fthe-insecurities-of-the-kardashians-kim-isn-t-as-popular-as-kylie-b03775eddea8&aqs=chrome..69i57j69i58.1527j0j9
-
How I hacked my apartment building
http://josecasanova.com/blog/how-i-hacked-my-apartment-building/
-
How I hacked my IP camera, and found this backdoor account
http://jumpespjump.blogspot.com/2015/09/how-i-hacked-my-ip-camera-and-found.html?m=1
-
How I Hacked My Startup

-
How I Hacked My Way from TC to YC
https://medium.com/@sayangel/how-i-hacked-my-way-from-tc-to-yc-73bc719c6792
-
How I hacked my way onto Mashable and the Next Web
http://emarky.net/how-i-hacked-my-way-onto-mashable-the-next-web/
-
How I hacked Spinal Decompression
https://www.linkedin.com/pulse/how-i-hacked-spinal-decompression-ed-freitas
-
How I Hacked Telegram’s “Encryption”
http://blog.zimperium.com/telegram-hack/
-
How I hacked the Job Hunt
https://medium.com/tech-london/how-i-hack-the-job-research-ecc87f8b9127
-
How I hacked Trivia Crack, and you can too
~~http://www.dailydot.com/technology/how-to-win-at-trivia-crack/?tw=dd~~
-
How I hacked WarFace (a Crytek FPS)
~~https://stackedit.io/viewer#!provider=gist&gistId=b9a1852a0a17e334f041&filename=wfre~~
-
How I Hacked Your Facebook Photos
http://7xter.com
-
How i hacked Zomato.com to see data of 62.5M users
http://www.anandpraka.sh/2015/06/how-i-hacked-zomatocom-to-see-data-of.html ⭐⭐
-
How Laravel Prevents SQL Injection, X-Site Request Forgery, and X-Site Scripting
~~http://www.easylaravelbook.com/blog/2015/07/22/how-laravel-5-prevents-sql-injection-cross-site-request-forgery-and-cross-site-scripting/~~
-
How to Prevent SQL Injection in PHP Code
http://www.cloudways.com/blog/protect-php-website-sql-injection/
-
How we found our biggest leak and reduced it by more than 50% in one week
https://medium.com/ux-review/how-we-found-our-biggest-leak-and-reduced-it-by-more-than-50-in-one-week-131503217fd9
-
How We Hacked and Upgraded Our Beta Signup Process
https://blog.blitzen.com/hacked-upgraded-startup-beta-signup-process/
-
How We Hacked and Upgraded Our Startup Beta Signup Process
https://blog.blitzen.com/hacked-upgraded-startup-beta-signup-process/ 
-
How we hacked the Braintree API to store an unlimited number of files
https://medium.com/@viralpickaxe/how-we-hacked-the-braintree-api-to-store-an-unlimited-number-of-files-302860736c25
-
Huawei Modems Authentication Bypass
~~http://www.evilsocket.net/2015/02/01/huawei-usb-modems-authentication-bypass/~~
-
I comercialized a personalized app I wrote for myself. Here's the writeup
https://medium.com/@chewxy/why-and-how-we-made-squatcoach-bb29c4482e32
-
I've been impacted by Twitter's layoffs. This is how I found out this morning
https://twitter.com/bartt/status/653946266938818561/photo/1
-
In Light of the Flash 0-Day Exploit: Doihaveflash.com
http://doihaveflash.com
-
Jailbreaking the Razer Nabu
http://www.qxcg.net/jailbreaking-the-razer-nabu.html
-
Joomla Core SQL Injection
http://developer.joomla.org/security-centre/628-20151001-core-sql-injection.html
-
Joomla SQL Injection Attacks in the Wild
https://blog.sucuri.net/2015/10/joomla-sql-injection-attacks-in-the-wild.html ⭐⭐
-
Joomla SQL Injection Vulnerability Exploit Results in Full Administrative Access
~~https://www.trustwave.com/Resources/SpiderLabs-Blog/Joomla-SQL-Injection-Vulnerability-Exploit-Results-in-Full-Administrative-Access/~~
-
Lenovo exposes users to privilege escalation attack risk
~~http://www.scmagazineuk.com/pc-maker-lenovo-exposes-users-to-massive-security-risk/article/412902/~~
-
Lenovo System Update Multiple Privilege Escalations[pdf]
http://www.ioactive.com/pdfs/Lenovo_System_Update_Multiple_Privilege_Escalations.pdf
-
Linux (x86) Exploit Development Tutorial Series
~~https://sploitfun.wordpress.com/2015/06/04/linux-exploit-tutorial-x86/~~
-
Local privilege escalation flaws in Red Star OS 3.0 and 2.0 desktop
http://seclists.org/oss-sec/2015/q1/101 ⭐⭐
-
Mac OS X 10.9.5 / 10.10.5 – rsh/libmalloc Privilege Escalation
https://www.exploit-db.com/exploits/38371/ ⭐⭐
-
MacPoison – OS X Privilege escalation exploit
~~https://github.com/Dominic12/MacPoison~~
-
Man’s Claims of Hacking Plane Discredited by Law Enforcement
http://www.bloomberg.com/news/articles/2015-05-18/hacker-claims-of-plane-takeover-aren-t-credible-official-says
-
Maximum Overkill Two – From Format String Vulnerability to Remote Code Execution
https://barrebas.github.io/blog/2015/02/22/maximum-overkill-two-from-format-string-vulnerability-to-remote-code-execution/
-
Microsoft Windows Server 2003 SP2 Arbitrary Write Privilege Escalation
https://www.korelogic.com/Resources/Advisories/KL-001-2015-001.txt
-
Mobilizing SQL Injection Attacks
https://securityledger.com/2015/05/mobilizing-sql-injection-attacks-same-pig-new-lipstick/
-
Modern Windows Exploit Development [pdf]
https://drive.google.com/file/d/0B8sHjc3kJKQrUTYxSkpldy01ZWs/view
-
MS15-034: Remote Code Execution via HTTP Request on Windows Servers
~~https://ma.ttias.be/remote-code-execution-via-http-request-in-iis-on-windows/~~
-
My Andela Mentee did a great writeup after a practice interview
http://blog.hisabimbola.com/my-interview-experience-at-stackexchange/
-
NetGear WNDR Authentication Bypass / Information Disclosure
http://seclists.org/fulldisclosure/2015/Feb/56 ⭐⭐
-
New privilege escalation bug hits Mac OS X
http://www.theguardian.com/technology/2015/aug/18/mac-os-x-new-privilege-escalation-bug
-
OS X 10.10 DYLD_PRINT_TO_FILE Local Privilege Escalation Vulnerability
https://www.sektioneins.de/en/blog/15-07-07-dyld_print_to_file_lpe.html ⭐
-
OS X 10.10.5 kernel local privilege escalation
https://github.com/kpwn/tpwn ⭐⭐
-
OS X privilege escalation due to XPC type confusion in sysmond
~~https://code.google.com/p/google-security-research/issues/detail?id=121~~
-
OS X Yosemite Bluetooth: Local privilege escalation vulnerabilities
http://randomthoughts.greyhats.it/2015/01/osx-bluetooth-lpe.html
-
Pentesterlab Tutorial – SQL injection to web admin console to getting a shell
https://pentesterlab.com/exercises/from_sqli_to_shell
-
Php CVE-2015-0273 Use After Free Vulnerability in Unserialize() with DateTime
https://github.com/80vul/phpcodz/blob/master/research/pch-020.md ⭐⭐
-
PIF: How We Hacked TechCrunch Disrupt
https://medium.com/the-pif-chronicles/how-we-hacked-techcrunch-disrupt-f62f9f9f8dd7
-
Portable Hacking with a RasPi and Kali Linux
http://www.lifehacker.co.uk/2015/10/30/build-portable-hacking-station-raspberry-pi-kali-linux
-
Preventing account takeover
https://medium.com/starting-up-security/preventing-account-takeover-c914fa07fb45
-
Preventing SQL Injection in PHP Applications – The Easy and Definitive Guide
https://paragonie.com/blog/2015/05/preventing-sql-injection-in-php-applications-easy-and-definitive-guide?resubmit=yes
-
Privilege Escalation
https://neil.fraser.name/news/2015/05/18/
-
Privilege Escalation via Docker
https://fosterelli.co/privilege-escalation-via-docker.html
-
Privilege escalation via emulated floppy disk drive
http://xenbits.xen.org/xsa/advisory-133.html
-
Public Comments on the Proposed Wassenaar Rule to Limit Export of Hacking Tools
http://www.regulations.gov/#!docketBrowser;rpp=25;so=DESC;sb=postedDate;po=0;dct=PS;D=BIS-2015-0011
-
Pwned by a self-learning AI
http://mindhacks.com/2015/01/21/pwned-by-a-self-learning-ai/
-
Pwning the utility company
http://atxsec.com/hacking-the-utility-company/
-
PyDataLondon 2015 Write-up
~~http://ianozsvald.com/2015/06/21/pydatalondon-2015-write-up-and-my-ship-it-talk-on-publishing-data-science-products/~~
-
Redis Lua sandbox escape
http://benmmurphy.github.io/blog/2015/06/04/redis-eval-lua-sandbox-escape/
-
Referer Header Based Blind SQL Injection Explained with Example
~~https://haiderm.com/referer-header-based-blind-sql-injection-explained-example/~~
-
Remote code execution in Asus router firmware
https://github.com/jduck/asus-cmd ⭐⭐
-
Remote Code Execution in Dolphin Browser for Android
http://rotlogix.com/2015/08/22/remote-code-execution-in-dolphin-browser-for-android/
-
Remote Code Execution in Elasticsearch – CVE-2015-1427
https://jordan-wright.github.io/blog/2015/03/08/elasticsearch-rce-vulnerability-cve-2015-1427/
-
Remote Code Execution in Shopify
https://prakharprasad.com/shopify-remote-code-execution/
-
Remote Code Execution Vulnerability in Joomla CMS Versions 1.5.0 Through 3.4.5
https://developer.joomla.org/security-centre/630-20151214-core-remote-code-execution-vulnerability.html
-
Reverse-Engineering iOS Apps: Hacking on Lyft
https://realm.io/news/conrad-kramer-reverse-engineering-ios-apps-lyft/
-
SECUREDROP = 0.3 – Possible Backdoor and Privileges Escalation by Unauth User
http://seclists.org/bugtraq/2015/Apr/8 ⭐⭐
-
Snapchat has a secret Seattle outpost – and you’ll never guess how we found it
http://www.geekwire.com/2015/exclusive-snapchat-has-a-secret-seattle-outpost-and-youll-never-guess-how-we-found-it/
-
Somebody Just Claimed a $1M Bounty for Hacking the iPhone
http://motherboard.vice.com/read/somebody-just-won-1-million-bounty-for-hacking-the-iphone
-
SQL injection attack on Uber's website
http://petition.uber.org/sf/
-
SQL Injection Attacks (Codebashing)
~~http://www.codebashing.com/try-it~~
-
SQL Injection Attacks, Visually Explained
https://blog.barricade.io/sql-injection-attacks-visually-explained/
-
SQL Injection Bug Fixed in Popular WordPress SEO Plug-In
https://threatpost.com/sql-injection-bug-fixed-in-popular-wordpress-seo-plug-in/111601
-
SQL injection in ESET website allows free NOD32 license
~~http://egyptiangeeks.com/information-security/eset-broken-authentication-vulnerability/~~
-
SQL injection interactive tutorial using SQL.js
https://github.com/benjamingr/pizzahack ⭐⭐
-
Story of how we hacked our product release amidst rains, flood and power outage
http://www.maaxmarket.com/hacked-nature-for-product-release-maaxmarket/
-
Targeted Attacks Against Tibetan and Hong Kong Groups Exploiting CVE-2014-4114
https://citizenlab.org/2015/06/targeted-attacks-against-tibetan-and-hong-kong-groups-exploiting-cve-2014-4114/
-
Texas Forever: How I Found the American Dream in the Lone Star State
http://ryanholiday.net/texas-forever-how-i-found-the-american-dream-in-the-lone-star-state/
-
The Easy Way to Prevent SQL Injection in PHP Applications
https://appsec.solutions/blog/2015/05/preventing-sql-injection-in-php-applications-easy-and-definitive-guide
-
The git-game Write-up
~~http://pravj.github.io/blog/the-git-game-write-up/~~
-
The History of SQL Injection
http://motherboard.vice.com/read/the-history-of-sql-injection-the-hack-that-will-never-go-away
-
The Intel SYSRET privilege escalation (2012)
https://blog.xenproject.org/2012/06/13/the-intel-sysret-privilege-escalation/
-
The ongoing scourge that is SQL injection and Azure’s new SQL Threat Detection
http://www.troyhunt.com/2015/12/the-ongoing-scourge-that-is-sql.html ⭐⭐⭐
-
The Plan to Feed the World by Hacking Photosynthesis
http://gizmodo.com/the-plan-to-feed-the-world-by-hacking-photosynthesis-1715525456
-
The Ultimate Hacking Keyboard got funded, goes Open Source
https://ultimatehackingkeyboard.com/blog/2015/12/08/the-uhk-got-funded-goes-open-source
-
Unconfirmed PayPal 0day auth flaw lingers after XSS gets fixed
http://www.theregister.co.uk/2015/09/04/paypal_bug_brace_xss_2fa_bypass/
-
Web Hacking 101 [pdf]
http://www.gironsec.com/WebHacking101.pdf
-
Windows 8.1 32-bit sandbox escape exploitation
http://googleprojectzero.blogspot.com/2015/08/one-font-vulnerability-to-rule-them-all_13.html ⭐
-
Windows 8.1 64-bit sandbox escape exploitation
http://googleprojectzero.blogspot.com/2015/08/one-font-vulnerability-to-rule-them-all_21.html ⭐
-
WinRAR's expired trial notification used for remote code execution via MitM
~~https://www.exploit-db.com/exploits/38361/~~
-
WordPress Core Race Condition Leading to Privilege Escalation
http://blog.checkpoint.com/2015/08/04/wordpress-vulnerabilities-1/
-
WordPress XSS 0day
http://arstechnica.com/security/2015/04/27/just-released-wordpress-0day-makes-it-easy-to-hijack-millions-of-websites/
-
Writeup of the First Day of the CDO Summit in London
http://channels.theinnovationenterprise.com/articles/2912-chief-digital-officer-summit-london
-
Writeup on Reaktor Hunt Challenge
https://github.com/imkira/hunt-reaktor ⭐⭐
-
Yoics: account takeover vulnerability
~~http://www.ifc0nfig.com/yoics-account-takeover-vulnerability/~~
-
Zerodium publishes full prices/bounties for 0day exploits
~~https://zerodium.com/program.html~~
-
“Modern Windows Exploit Development” Now in Pdf
http://expdev-kiuhnm.rhcloud.com/download-the-book/ ⭐⭐⭐
-

### 2014 — 195 writeups

2014 Crack Me If You Can – Team Hashcat writeup [pdf]
https://hashcat.net/events/CMIYC2014/CMIYC2014WriteupHashcat.pdf
-
300,000 WordPress hacking attempts and 5 observations
http://simonfredsted.com/1260
-
9447 CTF 2014 – HelloMike Writeup
https://medium.com/@shanewilton/9447-ctf-2014-hellomike-writeup-ba812f012d5
-
[RST] vBulletin 5.1.2 SQL Injection
~~https://rstforums.com/forum/86951-rst-vbulletin-5-1-2-sql-injection.rst~~
-
[RST] vBulletin 5.1.2 SQL Injection Exploit
~~https://rstforums.com/forum/87172-rst-vbulletin-5-1-2-sql-injection-exploit.rst~~
-
A Fantasy Explanation of Standard vs. Blind SQL Injection
http://danielmiessler.com/blog/a-fantasy-explanation-of-standard-vs-blind-sql-injection/
-
A Quick Write-up of Docker Conf Europe Day 1
https://intercityup.com/blog/quick-write-docker-conf-europe-day-1/
-
Advisory 01/2014: Drupal – Pre Auth SQL Injection Vulnerability
https://www.sektioneins.de/en/advisories/advisory-012014-drupal-pre-auth-sql-injection-vulnerability.html ⭐
-
Airbus crypto challenge write-up
http://cryptologie.net/article/182/airbus-crypto-challenge-write-up/
-
All Android devices vulnerable to privilege escalation
~~http://www.zdnet.com/android-bugs-leave-every-smartphone-and-tablet-vulnerable-to-privilege-escalation-7000027589/~~
-
An Inside Look at Anonymous, the Radical Hacking Collective
http://www.newyorker.com/magazine/2014/09/08/masked-avengers
-
Anonymous Publishes 0-Day Exploit For D0xing Police Departments
http://revolution-news.com/anonymous-publishes-0-day-exploit-for-d0xing-police-departments/
-
Another Stripe CTF3 Writeup
~~http://blog.phacility.com/post/stripe_ctf3/~~
-
Bazaar-NG: Seven years of hacking on a distributed version control system (2012)
https://www.stationary-traveller.eu/pages/bzr-a-retrospective.html
-
Blatant SQL injection vulnerability?
https://imademo:thisismypass@api.merchantos.com/API/Account/797/Inventory.json?load_relations=all&orderby=Inventory.timeStamp
-
Blind SQL Injection
http://stackoverflow.com/a/24678320/767865
-
Blind SQL injection and remote code execution in Flickr
http://1337way.com/flickr-update-bsqli-to-rce/
-
Bypassing the Telegram authentication protocol [pdf]
http://cert.inteco.es/extfrontinteco/img/File/intecocert/EstudiosInformes/INT_Telegram_EN.pdf
-
Can SQL Injection Fool Speed Traps and Clear Your Record?
http://hackaday.com/2014/04/04/sql-injection-fools-speed-traps-and-clears-your-record/#comments
-
Chrome on Android Exploit Writeup From Mobile Pwn2Own Autumn 2013
https://docs.google.com/document/d/1tHElG04AJR5OR2Ex-m_Jsmc8S5fAbRB3s4RmTG_PFnw/preview?sle=true
-
Circumventing the Drupal 7 SQL Injection at Acquia
https://www.acquia.com/blog/shields
-
Collaborative exploit development of this week: readelf
http://www.reddit.com/r/netsec/comments/1x7d5f/collaborative_exploit_development_of_this_week/
-
CVE-2014-1776: Use-after-free vulnerability in VGX.DLL in IE 6-11
http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-1776
-
CVE-2014-4014: Linux Kernel Local Privilege Escalation
http://hashcrack.org/index.html#190614
-
CVE-2014-6271: Remote code execution through bash
http://seclists.org/oss-sec/2014/q3/649 ⭐⭐
-
DEFCON Router Hacking Contest Reveals Major Vulnerabilities
https://www.eff.org/deeplinks/2014/08/def-con-router-hacking-contest-success-fun-learning-and-profit-many
-
Diabetes Patients Are Hacking Their Way Toward a Bionic Pancreas
http://www.wired.com/2014/12/diabetes-patients-hacking-together-diy-bionic-pancreases/
-
Dissecting the newest IE10 0-day exploit (CVE-2014-0322)
http://labs.bromium.com/2014/02/25/dissecting-the-newest-ie10-0-day-exploit-cve-2014-0322/
-
Docker Privilege Escalation
http://packetstormsecurity.com/files/129257/docker-escalate.txt ⭐⭐
-
Drupal 7 SA-CORE-2014-005 SQL Injection Protection
https://blog.cloudflare.com/drupal-7-sa-core-2014-005-sql-injection-protection/ ⭐⭐
-
Drupal 7 SQL Injection Proof-of-Concept
~~http://milankragujevic.com/post/66~~
-
Drupal 7 SQL Injection Vulnerability
https://www.sektioneins.de/advisories/advisory-012014-drupal-pre-auth-sql-injection-vulnerability.html ⭐
-
Drupal 7.31 Pre Auth SQL Injection Vulnerability
https://www.sektioneins.de/en/blog/14-10-15-drupal-sql-injection-vulnerability.html ⭐
-
EBay Authentication Bypass
http://blog.safetechinnovations.com/pentest/ebay-authentication-bypass/
-
Escaping the Safari sandbox with a kernel GPU bug
http://googleprojectzero.blogspot.com/2014/11/pwn4fun-spring-2014-safari-part-ii.html ⭐
-
Example of Local Privilege Escalation in Linux – Nebula

-
Excellent writeup on how GPS works
~~http://faculty.ksu.edu.sa/hbilani/SE412books/GPS_basics_u_blox_en.pdf~~
-
Expert Finds SQL Injection and RCE Vulnerabilities in Deutsche Telekom Systems
http://news.softpedia.com/news/Expert-Finds-SQL-Injection-and-RCE-Vulnerabilities-in-Deutsche-Telekom-Systems-424518.shtml
-
Exploitation of Mozilla Firefox Use-After-Free Vulnerability (Pwn2Own 2014)
http://www.vupen.com/blog/20140520.Advanced_Exploitation_Firefox_UaF_Pwn2Own_2014.php#
-
Exploiting Ammyy Admin – developing an 0day
http://www.scriptjunkie.us/2014/09/exploiting-ammyy-admin-developing-an-0day/
-
Exploiting Bash Remote Code Execution Vulnerability
http://hexale.blogspot.com/2014/09/cve-2014-6271-exploiting-bash-remote.html
-
Exploiting CVE-2014-0196 a walk-through of the Linux pty race condition PoC
http://blog.includesecurity.com/2014/06/exploit-walkthrough-cve-2014-0196-pty-kernel-race-condition.html ⭐⭐
-
Exploiting CVE-2014-1266 with mitmproxy
~~http://corte.si/posts/security/cve-2014-1266.html~~
-
Exploiting NSUserDefaults (and 2048's high score system) without a jailbreak
http://sambaumgarten.me/2014/04/06/exploiting-nsuserdefaults/
-
Exploiting Simple Buffer Overflows
http://netsec.ws/?p=180
-
Extreme Privilege Escalation  on Windows 8/UEFI Systems [pdf]
https://www.mitre.org/sites/default/files/publications/14-2221-extreme-escalation-presentation.pdf
-
Facebook Page Hacked – how I got it back
~~http://www.tomwillis.com.au/facebook-page-hacked-how-i-got-it-back/~~
-
Federal agents seek to loosen rules on hacking computers during investigations
http://www.bloomberg.com/news/2014-05-09/federal-agents-seek-to-loosen-rules-on-hacking-computers.html
-
Feed2JS/MagpieRSS/Snoopy 0day vuln(it is actually CVE-2005-3330/CVE-2008-4796)
http://mstrokin.com/sec/feed2js-magpierss-0day-vulnerability-not-really-it-is-actually-cve-2005-3330-cve-2008-4796/
-
Flickr from SQL Injection to RCE
http://pwnrules.com/flickr-from-sql-injection-to-rce/
-
For anyone looking for their place in the universe; how I found mine.
https://medium.com/p/a9f9b638f09f
-
Forget about writing DTO sql in 50 lines of python: Fix for sql injection
https://github.com/jmg/data-layer-generator#update-sql-injection-fix ⭐⭐
-
From 0-Day to Exploit - Buffer Overflow in Belkin N750 (CVE-2014-1635)
https://labs.integrity.pt/articles/from-0-day-to-exploit-buffer-overflow-in-belkin-n750-cve-2014-1635/
-
From Fuzzing to 0-day
http://blog.techorganic.com/2014/05/14/from-fuzzing-to-0-day/
-
From HackerNews to FastCompany or how I hacked the media for traffic
http://thebloggingshow.com/front-page-of-hacker-news/
-
Full Account Takeover Vulnerability in GroupMe
~~http://dsaccomanni.blogspot.com/2014/10/full-account-takeover-in-groupme-ios-app.html~~
-
GitHub RCE by Environment variable injection Bug Bounty writeup
https://gist.github.com/joernchen/a7c031b6b8df5d5d0b61 ⭐⭐
-
Google Document Embedder 2.5.16 SQL Injection
http://packetstormsecurity.com/files/129394/Google-Document-Embedder-2.5.16-SQL-Injection.html ⭐⭐
-
Google Project Zero: More Mac OS X and iPhone Sandbox Escapes
http://googleprojectzero.blogspot.com/2014/10/more-mac-os-x-and-iphone-sandbox.html ⭐
-
Great comprehensive writeup about Bitcoin
http://www.supermoney.com/2014/03/bitcoin/
-
GroupMe Account Takeover Vulnerability
http://dsaccomanni.blogspot.com/2014/10/groupme-full-account-takeover-vuln.html?m=1
-
Hacking a ping pong table
http://sidigital.co/blog/lab-notes-hacking-our-ping-pong-table
-
Hacking Airline Lounges for Free Meals
https://www.schneier.com/blog/archives/2014/02/hacking_airline.html
-
Hacking and addiction

-
Hacking Business Reply Mail
~~http://denis.papathanasiou.org/2014/05/30/hacking-business-reply-mail-is-this-legal/~~
-
Hacking Facebook’s Legacy API, Part 1: Making Calls on Behalf of Any User
~~http://stephensclafani.com/2014/07/08/hacking-facebooks-legacy-api-part-1-making-calls-on-behalf-of-any-user~~
-
Hacking Facebook’s Legacy API, Part 2: Stealing User Sessions
~~http://stephensclafani.com/2014/07/29/hacking-facebooks-legacy-api-part-2-stealing-user-sessions/~~
-
Hacking Hack on Heroku
https://blog.heroku.com/archives/2014/3/21/hacking_hack_on_heroku
-
Hacking Hearthstone with machine learning – Defcon talk wrap-up
http://www.elie.net/blog/hearthstone/i-am-a-legend-hacking-hearthstone-with-machine-learning-defcon-talk-wrap-up
-
Hacking into Internet-Connected Light Bulbs
http://www.contextis.co.uk/blog/hacking-internet-connected-light-bulbs/
-
Hacking iOS 8 Interactive Push Notifications with Emojis
https://hall.com/blog/hacking-ios-8-interactive-push-notifications-with-emojis/
-
Hacking Liberty.co.uk
http://www.joetrayns.com/how-i-hacked-liberty-co-uk/
-
Hacking Online Polls and Other Ways British Spies Seek to Control the Internet
~~https://firstlook.org/theintercept/2014/07/14/manipulating-online-polls-ways-british-spies-seek-control-internet/~~
-
Hacking PayPal Accounts with one click
http://yasserali.com/hacking-paypal-accounts-with-one-click/
-
Hacking POS Terminal for Fun and Non-profit
http://h30499.www3.hp.com/t5/HP-Security-Research-Blog/Hacking-POS-Terminal-for-Fun-and-Non-profit/ba-p/6540620#.U8lhTvldXXp
-
Hacking Sonos
https://medium.com/p/48edd2b40cc
-
Hacking the Breast Pump
http://www.newyorker.com/tech/elements/hacking-breast-pump
-
Hacking the DSP-W215, Again
http://www.devttys0.com/2014/05/hacking-the-dspw215-again/ ⭐
-
Hacking the DSP-W215, Again, Again
http://www.devttys0.com/2014/05/hacking-the-dsp-w215-again-again/ ⭐
-
Hacking the Samsung NX300 "Smart" Camera
http://op-co.de/blog/posts/hacking_the_nx300/
-
Hacking Tinder for Fun and Profit
http://www.ydesouza.com/tinder
-
Hacking with DNS
https://docs.google.com/presentation/d/1HfXVJyXElzBshZ9SYNjBwJf_4MBaho6UcATTFwApfXw
-
Hacking Word-of-Mouth: Making Referrals Work for Airbnb
http://nerds.airbnb.com/making-referrals-work-for-airbnb/
-
Here’s how Bell was hacked – SQL injection blow-by-blow
http://www.troyhunt.com/2014/02/heres-how-bell-was-hacked-sql-injection.html ⭐⭐⭐
-
Highly Critical SQL Injection Vulnerability Patched in Drupal Core
http://blog.sucuri.net/2014/10/highly-critical-sql-injection-on-drupal.html ⭐⭐
-
Hillhacks – Hacking and Making in the Himalayas
http://makezine.com/2014/08/08/hillhacks-hacking-and-making-in-the-himalayas/
-
How can I explain SQL injection without technical jargon?
http://security.stackexchange.com/a/25710
-
How I bypassed 2-Factor-Authentication on Google, Facebook, Yahoo, LinkedIn
http://shubh.am/how-i-bypassed-2-factor-authentication-on-google-yahoo-linkedin-and-many-others/
-
How I found a Remote Code Execution bug affecting Facebook's servers
http://www.ubercomp.com/posts/2014-01-16_facebook_remote_code_execution ⭐⭐
-
How I found bugs in my app :-)
https://app.testobject.com/#/share/fb38370b-8712-4ee6-a402-08b086bbedd2/quality-report
-
How I Found Hundreds Of Civil War And Old West Photos In An Attic In Vermont
~~http://www.mosaicarchive.com/2014/01/13/my-photo-archiving-find-of-a-lifetime-how-i-found-hundreds-of-civil-war-and-old-west-photos-in-an-attic-in-vermont/~~
-
How I found my place in the universe.
https://medium.com/philosophy-logic/a9f9b638f09f
-
How I found my startup job
http://blog.anaulin.org/how-i-found-my-startup-job/
-
How I found the hidden connection between Pink Floyd and Justin Bieber
http://blog.braulio.me/stories/How-I-found/
-
How I got hacked in 10 hours on Google Cloud Platform
http://www.kidsil.net/2014/12/hacked-in-10-hours-google-cloud/
-
How I Hacked a Router
~~http://disconnected.io/2014/03/18/how-i-hacked-your-router/~~
-
How I Hacked Facebook
http://blog.dewhurstsecurity.com/2014/12/09/how-i-hacked-facebook.html
-
How I hacked Github again
http://homakov.blogspot.com/2014/02/how-i-hacked-github-again.html ⭐⭐
-
How I hacked GoToWebinar to send my own HTML email
http://www.tropical.io/blog/how-to-send-html-email-in-gotowebinar
-
How I hacked Instagram to see private photos
~~http://insertco.in/2014/02/10/how-i-hacked-instagram/~~
-
How I hacked my friend's Telstra mobile account
http://www.theage.com.au/digital-life/consumer-security/how-i-hacked-my-friends-telstra-mobile-account-20140917-10heac.html
-
How I hacked my home
https://securelist.com/analysis/publications/66207/iot-how-i-hacked-my-home/ ⭐⭐
-
How I Hacked My Husband's Programming Addiction
http://www.huffingtonpost.ca/suzanne-ma/computer-programming-women-html500-vancouver_b_4739610.html?utm_hp_ref=canada-british-columbia#306792682
-
How I hacked my own happiness
~~http://roeybr.svbtle.com/how-i-hacked-my-own-happiness~~
-
How I hacked my own iCloud account for just $200
http://www.smh.com.au/digital-life/consumer-security/how-i-hacked-my-own-icloud-account-for-just-200-20140907-10dr30.html
-
How I Hacked my Resolutions to Make them Actually Stick
https://medium.com/enjoying-life/39bc41e88921
-
How I hacked my sleep
http://blog.yannick.io/misc/2013/09/12/how-i-hacked-my-sleep.html
-
How I hacked my social data to get press coverage and $750K in funding
http://blog.discover.ly/2014/02/04/hack-social-data-press-coverage-funding/
-
How I hacked online dating
https://www.ted.com/talks/amy_webb_how_i_hacked_online_dating
-
How I hacked Paypal to create money
https://medium.com/@demircancelebi/how-i-hacked-paypal-to-create-money-c5856fa3907d
-
How I hacked roobinhood.io's waiting queue
~~http://ganesshkumar.github.io/blog/2014/01/29/hacking-robinhood-dot-io-waiting-queue/~~
-
How I hacked Slack into a community platform with Typeform
https://levels.io/slack-typeform-auto-invite-sign-ups/
-
How I Hacked Snapchat's Dumb Anti-Robot Security In Less Than 30 Minutes
http://gizmodo.com/how-i-hacked-snapchats-dumb-anti-robot-security-in-les-1506890048
-
How I hacked the Apple Store to give me the dollar price anywhere in the world
https://medium.com/@LinusEkenstam/how-i-hacked-the-apple-store-to-give-me-the-dollar-price-anywhere-in-the-world-bcfb2e91ad3d
-
How I hacked the SAT and raised my score by 1000 points in 3 months
http://www.kortaggio.com/blog/hacking-the-sat
-
How I hacked Unbounce to make better landing pages.
https://medium.com/p/8f56b71923c4
-
How I hacked unverified Facebook accounts
http://hak-it.blogspot.com/2014/05/how-i-hacked-your-unverified-facebook.html
-
How I hacked WordPress to spit JSON and serve it on a platter with AngularJS
http://brajeshwar.com/2014/making-autochrome-v3/
-
How we found a directory traversal vulnerability in Rails routes
http://blog.flowdock.com/2014/05/07/how-we-found-a-directory-traversal-vulnerability-in-rails-routes/
-
How we found a million style and grammar errors in the English Wikipedia
https://fosdem.org/2014/schedule/event/how_we_found_600000_grammar_errors/
-
How we hacked Google’s production server and received a $10K reward
http://www.freshtechapps.com/security-researchers-hack-google-using-xxe-vulnerability-2/
-
How We Hacked Hacker News
http://blog.whttl.com/2014/12/29/hacking-hacker-news/
-
How we hacked homepage conversion rate to 63%
http://blog.mailcloud.com/how-we-peaked-at-a-63-homepage-conversion-rate/
-
How we hacked National Judiciary Informatics System of Turkey (UYAP) ...
http://sceptive.com/p/how-we-hacked-national-judiciary-informatics-system-of-turkey-uyap-and-deal-with-it
-
How we hacked our way to £100k by crowdfunding (inc. big wins and what to ignore)
http://allabout.siansplan.com/hacked-way-100k-crowdfunding/
-
How we hacked the hotel industry to save $200+ per night
http://blog.localfu.com/post/105466825757/how-we-hacked-the-hotel-industry-to-save-200-per
-
How we hacked Tomorrowland tickets sale to be the first ones in the queue
http://translate.google.es/translate?sl=auto&tl=en&js=n&prev=_t&hl=es&ie=UTF-8&u=http%3A%2F%2Fwww.dailybits.be%2Fitem%2Ftomorrowland-2014-ticketverkoop-hoe-je-wel-tickets-kunnen-kopen%2F
-
HubCap: pwning the Chromecast part 1
https://fail0verflow.com/blog/2014/hubcap-chromecast-root-pt1.html ⭐
-
HubCap: pwning the Chromecast part 2
https://fail0verflow.com/blog/2014/hubcap-chromecast-root-pt2.html ⭐
-
Idiots think they know more than expert WebDevs. Claim immunity to SQL Injection
http://www.3comets.com
-
Ikea C&D's 8-year old Ikea furniture hacking website
http://www.ikeahackers.net/2014/06/big-changes-coming-to-ikeahackers.html
-
In case you missed this Hacking Documentary – How Hackers Changed the World
http://hackingnews.com/hacking-groups/anonymous/how-hackers-changed-the-world-we-are-legion/
-
Integer overflow into XSS and other fun stuff – a case study of a bug bounty
http://gynvael.coldwind.pl/?id=533
-
Internet Explorer EPM Sandbox Escape CVE-2014-6350
http://googleprojectzero.blogspot.com/2014/12/internet-explorer-epm-sandbox-escape.html?m=1 ⭐
-
IoT: How I hacked my home
http://securelist.com/analysis/publications/66207/iot-how-i-hacked-my-home/ ⭐⭐
-
It had to happen: Jailbreaking a Tesla Model S
http://venturebeat.com/2014/04/05/it-had-to-happen-jailbreaking-a-tesla-model-s/
-
Kevin Mitnick selling 0day exploits is a good idea
http://blog.knowbe4.com//bid/397439/kevin-mitnick-selling-0day-exploits-is-a-good-idea
-
LinEnum – Scripted Local Linux Enumeration and Privilege Escalation Checks
https://github.com/rebootuser/LinEnum ⭐⭐
-
Linus Torvalds: “I'm happily hacking on a new save format using ‘libgit2’”
https://plus.google.com/+LinusTorvalds/posts/X2XVf9Q7MfV
-
Linux Kernel up to v3.15-rc4 local privilege escalation exploit
~~http://bugfuzz.com/stuff/cve-2014-0196-md.c~~
-
Linux privilege escalation in ppp over l2tp sockets
http://permalink.gmane.org/gmane.comp.security.oss.general/13372
-
Local privilege escalation due to capng_lock
http://www.openwall.com/lists/oss-security/2014/04/29/7 ⭐⭐
-
Mac OS X Affected by Critical “Rootpipe” Privilege Escalation Vulnerability
http://www.securityweek.com/mac-os-x-affected-critical-rootpipe-privilege-escalation-vulnerability
-
Mac OS X local privilege escalation (IOBluetoothFamily)
http://randomthoughts.greyhats.it/2014/10/osx-local-privilege-escalation.html
-
Mac OS X privilege escalation with CVE-2014-6271 (Shellshock)
https://twitter.com/cnbrkbolat/status/514889775724363776
-
Magic packet to reactivate backdoor after faked patch by Netgear/Cisco/Linksys
http://www.exploit-db.com/exploits/32938/ ⭐⭐
-
Martijn Pieters: 20 Years of Hacking the Web
https://www.codementor.io/python-experts/stackoverflow-python-legend-martijn-pieters?utm_source=hn&utm_medium=blog&utm_term=martijn-pieters&utm_content=blog&utm_campaign=hn
-
Mass Drupal SQL Injection Attacks – Turning SQLi into Code Execution
http://blog.sucuri.net/2014/10/drupal-sql-injection-attempts-in-the-wild.html ⭐⭐
-
Microsoft Internet Explorer Use-After-Free Vulnerability
http://www.kb.cert.org/vuls/id/222929
-
Microsoft XP SP3 MQAC.sys Arbitrary Write Privilege Escalation
https://www.korelogic.com/Resources/Advisories/KL-001-2014-003.txt
-
Microsoft: 0Day Exploit Targeting Word, Outlook
http://krebsonsecurity.com/2014/03/microsoft-warns-of-word-2010-exploit/
-
MS Internet Explorer CMarkup Use-After-Free RCE Vulnerability [IE8]
http://zerodayinitiative.com/advisories/ZDI-14-140/
-
Mysql_real_escape_string wont solve your SQL injection security bugs
~~http://www.iodigitalsec.com/mysql_real_escape_string-wont-magically-solve-your-sql-injection-problems/~~
-
New Flash Player 0-day (CVE-2014-0515) used in watering-hole attacks
http://www.securelist.com/en/blog/8212/New_Flash_Player_0_day_CVE_2014_0515_used_in_watering_hole_attacks
-
Nginx Anti Xss and Sql Injection.
https://github.com/nbs-system/naxsi ⭐⭐
-
NullCrew attack on Bell Canada was SQL injection and Bell knew weeks ago
http://www.databreaches.net/nullcrew-attack-on-bell-canada-was-sql-injection-and-bell-knew-weeks-ago-nullcrew/
-
Oculus SQL injection vulnerability
http://us5.campaign-archive1.com/?u=88dbd06829e35d5cbf84bbc2e&id=dbf8e7748c&e=f1e07688ef
-
OpenBSD fixes use-after-free race condition in OpenSSL
http://ftp.openbsd.org/pub/OpenBSD/patches/5.3/common/015_openssl.patch
-
OpenSSL CVE-2010-5298 / CVE-2014-0198
http://www.ubuntu.com/usn/usn-2192-1/
-
OS X Yosemite(10.10) contains privilege escalation vulnerability
http://www.macworld.com/article/2841965/swedish-hacker-finds-serious-vulnerability-in-os-x-yosemite.html
-
Oss-sec: Linux kernel futex local privilege escalation (CVE-2014-3153)
http://seclists.org/oss-sec/2014/q2/467 ⭐⭐
-
PHP Script to Thwart Mobile SQL Injections
http://tech.pro/tutorial/2574/php-script-to-thwart-mobile-sql-injections
-
Privilege Escalation on Windows 8/UEFI Systems
https://www.mitre.org/publications/technical-papers/presentation-extreme-privilege-escalation-on-windows-8uefi-systems
-
Privilege Escalation through Mobile OS Updating
http://www.informatics.indiana.edu/xw7/papers/privilegescalationthroughandroidupdating.pdf
-
Pwned by Crypto Currency Miners
http://blog.billgist.com/2014/11/25/pwned-by-crypto-currency-miners/
-
Re: CVE-2014-6271 – remote code execution through bash
http://seclists.org/oss-sec/2014/q3/734 ⭐⭐
-
Remote code execution on Apache+Rails stack by exploiting Paperclip
https://homakov.blogspot.com/2014/11/hacking-file-uploaders-with-race.html ⭐⭐
-
Return of the Obra Dinn: Audio writeup
http://forums.tigsource.com/index.php?topic=40832.msg1048725#msg1048725
-
RTFM 0day in iOS apps
http://algorithm.dk/posts/rtfm-0day-in-ios-apps-g-gmail-fb-messenger-etc
-
Ruby on Rails: Two SQL Injection Vulnerabilities Affecting PostgreSQL
http://seclists.org/oss-sec/2014/q3/5 ⭐⭐
-
SA-CORE-2014-005 - Drupal core - SQL injection
https://www.drupal.org/SA-CORE-2014-005
-
Safari vulnerabilities writeup by the Google Project Zero

-
Samba – Security Announcement – CVE-2014-3560: Remote code execution in nmbd
https://www.samba.org/samba/security/CVE-2014-3560
-
Samsung.com Account Takeover Vulnerability Write-up
http://thehackerblog.com/samsung-com-account-takeover-vulnerability-write-up/
-
SQL Injection Attacks Haunt Retailers
http://www.darkreading.com/sql-injection-attacks-haunt-retailers/d/d-id/1269576?
-
SQL Injection in Plain English
~~https://www.tinfoilsecurity.com/blog/what-is-sql-injection~~
-
SQL Injection on eBay.com.au subdomain
http://blog.internot.info/2014/05/sql-injection-on-ebaycomau-subdomain.html
-
SQL injection within the Oculus Developer Center
http://pastebin.com/CzTNHekB
-
Step-by-step: exploiting SQL injection(s) in Oculus' website
http://josipfranjkovic.blogspot.com/2014/09/step-by-step-exploiting-sql-injection.html
-
Stripe CTF3 Writeup – Problems published
https://github.com/ctfs/write-ups/tree/master/stripe-ctf3 ⭐⭐
-
Stripe-CTF 3 Writeup
~~http://muehe.org/posts/stripe-ctf-3-writeup/~~
-
Sysadmin Casts #21: Anatomy of a SQL Injection Attack leading to Code Execution
http://sysadmincasts.com/episodes/21-anatomy-of-a-sql-injection-attack-leading-to-code-execution
-
Tesla Motors blind SQL injection vulnerability writeup
https://bitquark.co.uk/blog/2014/02/23/tesla_motors_blind_sql_injection
-
The AGOX connector, or, how we hacked reality
http://agocs.org/blog/2014/09/19/agox-connectors/
-
The roots of Anonymous, the infamous online hacking community
http://www.pbs.org/newshour/bb/roots-anonymous-infamous-online-hacking-community/
-
Third cryptocurrency exchange becomes hacking victim, loses Bitcoin
~~http://www.zdnet.com/third-cryptocurrency-exchange-becomes-hacking-victim-loses-bitcoin-7000027052/~~
-
Through the Warp Zone: Hacking Super Mario Brothers to unlock new worlds
~~https://emily.st/p/AUg~~
-
TrueCrypt – Privilege Escalation
~~http://vinicius777.github.io/blog/2014/07/14/truecrypt-privilege-escalation/~~
-
US-CERT recommends not using IE until use-after-free vulnerability is fixed
http://www.us-cert.gov/ncas/current-activity/2014/04/28/Microsoft-Internet-Explorer-Use-After-Free-Vulnerability-Being
-
What to do after discovering SQL Injection vulnerability in random websites?

-
What your framework never told you about SQL injection protection
~~http://www.codeyellow.nl/identifier-sqli.html~~
-
Windows Privilege Escalation Fundamentals
http://www.fuzzysecurity.com/tutorials/16.html
-
Writeup of NYC Traffic Visualization
http://tumblebolt.com/speedy_writeup.html
-
Writeup of Pinkie Pie's Chrome on Android pwn2own exploit
https://docs.google.com/document/d/1tHElG04AJR5OR2Ex-m_Jsmc8S5fAbRB3s4RmTG_PFnw/edit
-
Yahoo SQL Injection Flaw Allows Remote Code Execution and Privileges Scalation
http://securityaffairs.co/wordpress/28475/hacking/yahoo-sql-injection-flaw.html
-

### 2013 — 159 writeups

"j" for switching directories - hacking "cd" with python
~~http://charlesleifer.com/blog/-j-for-switching-directories---improving-the-cd-command-/~~
-
12-year-old boy admits to hacking police and government sites for Anonymous
http://nakedsecurity.sophos.com/2013/10/26/12-year-old-canadian-boy-admits-to-hacking-police-and-government-sites-for-anonymous/
-
14 Years of SQL Injection and still the most dangerous vulnerability
~~https://www.mavitunasecurity.com/blog/sql-injection-vulnerability-history/~~
-
1475 votes 24 answers 204k views How to prevent SQL injection in PHP
http://stackoverflow.com/questions/60174/how-to-prevent-sql-injection-in-php
-
A closer look at a recent privilege escalation bug in Linux (CVE-2013-2094)
http://timetobleed.com/a-closer-look-at-a-recent-privilege-escalation-bug-in-linux-cve-2013-2094/
-
A Crash Course in Sales Hacking and Deal Closing [video]
http://blog.close.io/post/66796387263/a-crash-course-in-sales-hacking-and-deal-closing
-
Amy Webb: How I hacked online dating
http://www.youtube.com/watch?v=d6wG_sAdP0U
-
Any.DO 0-day exploit - 500,000 users affected
http://translate.google.com/translate?sl=ru&tl=en&&hl=en&u=http://habrahabr.ru/company/dsec/blog/192294/
-
Best SQL injection attempt ... (image)
https://twitter.com/gollmann/status/313393642922442752/photo/1
-
Bypassing Two-Factor Authentication for Dropbox
http://www.qcert.org/alerts/bypassing-2-factor-authentication-dropbox
-
Car Hacking Whitepaper and tools released
http://blog.ioactive.com/2013/08/car-hacking-content.html
-
Common OAuth issue you can use to take over accounts
http://webstersprodigy.net/2013/05/09/common-oauth-issue-you-can-use-to-take-over-accounts/
-
Coolest SQL injection attack ever
http://i.imgur.com/haspR.jpg
-
Creating a hacking environment for girls in Chicago
~~https://www.piggybackr.com/seabdalla/chicago-girls-in-computing-encourage-girls-in-tech-fundraiser~~
-
Cue's hookshot: hacking the iOS runtime for fun and profiles
http://tech.blog.cueup.com/hookshot-hacking-the-objective-c-runtime-for
-
CVE-2012-5664: Sql Injection on Rails... again
http://armoredcode.com/blog/cve-2012-5664-sql-injection-on-rails-dot-dot-dot-again/
-
Data Hacking and Coffee
http://heypodo.com/blog/2013/04/29/data_hacking_and_coffee.html
-
Days since last known Java 0-day exploit
http://java-0day.com
-
Debian/Ubuntu root privilege escalation
http://blog.cmpxchg8b.com/2013/08/security-debianisms.html?m=1
-
Dublin Web Summit Writeup
https://www.examtime.com/blog/dublin-web-summit-2013/
-
Edward Snowden: Classified US data shows Hong Kong hacking targets
http://www.scmp.com/news/hong-kong/article/1260306/edward-snowden-classified-us-data-shows-hong-kong-hacking-targets
-
Epic "cnot" Writeup (highest value level from PlaidCTF)
~~http://www.skullsecurity.org/blog/2013/epic-cnot-writeup-plaidctf~~
-
Escaping a Python sandbox (NdH 2013 quals writeup)
http://blog.delroth.net/2013/03/escaping-a-python-sandbox-ndh-2013-quals-writeup/
-
Everything you wanted to know about SQL injection (but were afraid to ask)
http://www.troyhunt.com/2013/07/everything-you-wanted-to-know-about-sql.html# ⭐⭐⭐
-
Exploiting Broadcast Information in Cellular Networks
https://www.usenix.org/conference/usenixsecurity13/let-me-answer-you-exploiting-broadcast-information-cellular-networks
-
Exploiting MS13-005: Protected Mode (LI UIPI) Sandbox Escape
http://blog.cmpxchg8b.com/2013/02/a-few-years-ago-while-working-on.html
-
Facebook CSRF leading to full account takeover (fixed)
~~http://pyx.io/blog/facebook-csrf-leading-to-full-account-takeover~~
-
Finland’s Foreign Ministry gets pwned by worse-than-Red October malware
http://arstechnica.com/tech-policy/2013/10/finlands-foreign-ministry-gets-pwned-by-red-october-malware/
-
Freedom vs. Function: Why I Hate Jailbreaking my iPhone
http://mojaveblues.com/blog/2013/2/10/freedom-vs-function-why-i-hate-jailbreaking-my-iphone
-
Fun with SQL Injection
http://www.sitekickr.com/blog/sql-inserts-safe/
-
Geohot presents an evasi0n7 writeup
http://geohot.com/e7writeup.html
-
Globbert: iOS stop motion game write-up
http://www.andydev.co.uk/blog/globbert-a-development-journey/
-
Good writeup about oh-my-zsh tips
http://justinlilly.com/dotfiles/zsh.html
-
Google crawler tricked into performing SQL injection attacks
http://arstechnica.com/security/2013/11/google-crawler-tricked-into-performing-sql-injection-attacks-using-decade-old-technique/
-
Google Glass Pwned By Lowly QR Code
http://securitywatch.pcmag.com/security/313767-don-t-look-now-google-glass-pwned-by-lowly-qr-code
-
Google patches Chrome's Pwn2own exploit
http://googlechromereleases.blogspot.com/2013/03/stable-channel-update_7.html
-
Hacking a $9 Remote Control Car with Arduino
http://forefront.io/a/hacking-9-buck-remote-controlled-car-with-arduino
-
Hacking debt
http://www.johndcook.com/blog/2013/04/24/hacking-debt/
-
Hacking Developer Auction
http://developerauctionhacker.pen.io/
-
Hacking Flask: A Success Story
http://blog.sendhub.com/post/48832423565/hacking-flask-a-success-story
-
Hacking For Good
~~http://rix.si/2013/07/07/hacking-for-good-1/~~
-
Hacking Github with Webkit
http://homakov.blogspot.com/2013/03/hacking-github-with-webkit.html ⭐⭐
-
Hacking Google's HVAC Systems
http://cylance.com/techblog/Googles-Buildings-Hackable.shtml
-
Hacking Into The Indian Education System
http://deedy.quora.com/Hacking-into-the-Indian-Education-System
-
Hacking Java Bytecode for Programmers (Part 2)
~~http://www.acloudtree.com/lions-and-tiger-and-op-codes-oh-my-hacking-java-bytecode-for-programmers-part2~~
-
Hacking Lego Mindstorms EV3 with JavaScript
~~http://andrew.ghost.io/hacking-lego-mindstorms-ev3-with-javascript/~~
-
Hacking Redis: Adding Interval Sets
http://www.starkiller.net/2013/05/03/hacking-redis-adding-interval-sets/
-
Hacking Sublime Text 2 for faster Rails project navigation
http://fonicmonkey.net/2013/04/22/get-productive-hack-your-code-editor-navigator/
-
Hacking the &lt;a&gt; tag in 100 characters
http://bilaw.al/2013/03/17/hacking-the-a-tag-in-100-characters.html
-
Hacking the coding interview
http://www.restlessprogrammer.com/2013/09/hacking-coding-interview.html
-
Hacking the Olympics

-
Hacking the OS X Kernel for Fun and Profiles
http://research.swtch.com/macpprof
-
Hacking Transcend WiFi SD Cards
http://haxit.blogspot.com/2013/08/hacking-transcend-wifi-sd-cards.html
-
Hacking U.S. Secrets, China Pushes for Drones
http://www.nytimes.com/2013/09/21/world/asia/hacking-us-secrets-china-pushes-for-drones.html
-
Hacking with a Hacker
~~http://symbo1ics.com/blog/?p=1999~~
-
Healthcare.gov: SQL Injection Auto-Suggest
http://imgur.com/xcLrgMT
-
Healthcare.gov’s website suggests SQL injection attacks
https://twitter.com/alexhern/status/402365655250644992/photo/1
-
How can I prevent SQL injection in PHP?
http://stackoverflow.com/a/60496/984422
-
How I found CVE-2013-1310 in IE6 and IE7
http://yuhongbao.blogspot.ca/2013/07/how-i-found-cve-2013-1310.html
-
How I Found Good Contract Help
~~http://aaronfrancis.com/blog/2013/4/9/how-i-found-good-contract-help-and-the-perks-of-having-it~~
-
How I found happiness and started building an audience
http://www.taylorbeck.me/2013/11/how-i-found-happiness/
-
How I Found the Right Business Partner
http://founderdating.com/right-biz-partner/
-
How I found two jobs using Twitter
~~https://www.hireart.com/blog/how-i-found-two-jobs-using-twitter/~~
-
How I got a root shell in my NAS, 0day inside
http://blog.pentbox.net/index.php?controller=post&action=view&id_post=4
-
How I got the Bug Bounty for Mega.co.nz XSS
~~http://blog.detectify.com/post/43100050401/how-i-got-the-bug-bounty-for-mega-co-nz-xss~~
-
How I Hacked Any Facebook Account Again
http://www.nirgoldshlager.com/2013/03/how-i-hacked-any-facebook-accountagain.html? ⭐⭐
-
How I Hacked Any Facebook Account...Again
https://www.breaksec.com/?p=5753 ⭐⭐
-
How I Hacked Facebook OAuth To Get Full Permission On Any Facebook Account
http://www.nirgoldshlager.com/2013/02/how-i-hacked-facebook-oauth-to-get-full.html ⭐⭐
-
How I Hacked Facebook’s Secure Files Transfer Service for Employees
http://www.nirgoldshlager.com/2013/01/how-i-hacked-facebook-employees-secure.html ⭐⭐
-
How I Hacked GitHub Contributions Charts
~~http://pages.adamschwartz.co/blog/hack~~
-
How I Hacked Instagram Accounts
http://www.breaksec.com/?p=6164 ⭐⭐
-
How I hacked my room hunt in SF
http://polaske.tumblr.com/post/65469856095/how-i-hacked-my-room-hunt-in-sf
-
How I Hacked My Startup Visa
https://drive.google.com/file/d/0B0LwotxL3Ql0SUZFU19kWERRVWM/edit?usp=sharing
-
How I hacked my US startup visa
http://qz.com/151333/how-i-hacked-my-us-startup-visa/
-
How I hacked my way into CES
http://touchonomics.com/post/40531900564/how-i-hacked-my-way-into-ces
-
How I Hacked My Way into The New York Times (Accidentally)
http://blog.prmatch.com/2013/11/how-i-accidentally-hacked-my-way-into.html
-
How I hacked SIM cards with a single text - and the networks DON'T CARE
http://www.theregister.co.uk/2013/09/23/white_hat_sim_hacker_disillusioned_and_dismayed_by_operator_response/
-
How I Hacked The Startup Launch Conference Circuit
http://onstartups.com/tabid/3339/bid/100083/How-I-Hacked-The-Startup-Launch-Conference-Circuit.aspx
-
How SQL injection was discovered 15 years ago
http://mobile.esecurityplanet.com/network-security/how-was-sql-injection-discovered.html
-
How We Found All Of Optimizley’s Clients
http://blog.nerdydata.com/post/57308630996/how-we-found-all-of-optimzleys-clients
-
How We Found Every Single Vulnerable Website On The Internet
http://blog.nerdydata.com/post/57544050832/how-we-found-every-single-vulnerable-website
-
How We Founded a Positive News Organization
https://medium.com/lessons-learned/325574001d1a
-
How we hacked Facebook with OAuth2 and Chrome bugs
http://homakov.blogspot.com/2013/02/hacking-facebook-with-oauth2-and-chrome.html ⭐⭐
-
How We Hacked Launch with the F Word
http://blog.getclef.com/?p=23
-
Https://www.healthcare.gov/ search suggests sql injection

-
Ibrahim Balic breaks silence on hacking Apple developer site
http://www.news.com.au/technology/ibrahim-balic-breaks-silence-on-hacking-apple-developer-site/story-e6frfro0-1226684484916?from=public_rss
-
In China, Hacking Has Widespread Acceptance
http://www.nytimes.com/2013/05/23/world/asia/in-china-hacking-has-widespread-acceptance.html?hp&_r=0
-
Inj3ct0r team hacked forum.defcon.org exploiting vBulletin 0day
https://www.facebook.com/inj3ct0rs/posts/614000058661357
-
Inside Anonymous: ‘Topiary’ talks hacking and life after LulzSec
http://thenextweb.com/insider/2013/10/22/inside-anonymous-former-topiary-jake-davis/
-
Inside the Anonymous Hacking File on the Steubenville 'Rape Crew'
http://www.theatlanticwire.com/national/2013/01/inside-anonymous-hacking-file-steubenville-rape-crew/60502/
-
Inside the perfect machine - A writeup of my YC experience
http://27percentco.tumblr.com/post/67511171903/inside-the-perfect-machine-a-thoughtful-writeup-of-my
-
Is ActiveRecord's “order” method vulnerable to SQL injection?
http://stackoverflow.com/questions/17859880/is-activerecords-order-method-vulnerable-to-sql-injection
-
Is this the ultimate SQL injection payload?
~~http://blog.detectify.com/post/51651525114/the-ultimate-sql-injection-payload~~
-
Jailbreaking and unlocking might be restricted in treaty pushed by Obama
http://arstechnica.com/tech-policy/2013/11/jailbreaking-and-unlocking-might-be-restricted-in-treaty-pushed-by-obama/
-
Leadership, community, and how I got Hacker News’s second-highest average karma
http://joshuaspodek.com/leadership-community-hacker-newss
-
Levitate Exploit Development Platform - Node.JS - Scala

-
Levitate Exploit Development Platform [in NodeJS]
http://levitateplatform.org/nodejsdoc/
-
Linux local privilege escalation 0day, 2.6.37 - 3.8.10
http://fucksheep.org/~sd/warez/semtex.c
-
Local File Inclusion and Shell Writing using SQL Injection
http://universells.com/local-file-inclusion-and-shell-writing-using-sql-injection/
-
Metasploit module & writeup for Firefox Tor exit node exploit
~~https://community.rapid7.com/community/metasploit/blog/2013/08/07/heres-that-fbi-firefox-exploit-for-you-cve-2013-1690~~
-
My Blog Was Hacked - Here's What They Did And How I Found Out
http://willnathan.com/valise/2013/3/21/my-blog-was-hacked-heres-what-they-did-and-how-i-found-out
-
My first buffer overflow exploit: pretty easy
http://jvns.ca/blog/2013/10/28/day-17-buffer-overflows/
-
New Java 0-Day Vulnerability Being Exploited in the Wild
http://thenextweb.com/insider/2013/03/01/new-java-vulnerability-is-being-exploited-in-the-wild-disable-the-plugin-or-change-your-security-settings/?fromcat=all
-
November 17th, 2013 Severe Weather Outbreak - Writeup
http://www.crh.noaa.gov/news/display_cmsstory.php?wfo=lot&storyid=98187&source=0
-
Object injection vulnerability enables remote code execution in WordPress 3.6
http://vagosec.org/2013/09/wordpress-php-object-injection/index.html
-
On Hacking MicroSD Cards
http://www.bunniestudios.com/blog/?p=3554 ⭐
-
One Hour Hire - Hacking Engineer Interviews
http://rocketship.instacart.com/2013/08/08/hiring.html
-
Post-mortem Analysis of a Use-After-Free Vulnerability (2011)
http://www.exploit-monday.com/2011/07/post-mortem-analysis-of-use-after-free_07.html
-
Postpwnium Writeup
http://rpw.io/blog/2013/06/11/postpwnium_writeup/
-
Privilege Escalation via Invisible Touch
~~http://cube-drone.com/post/2013_06_12-Cube_Drone_42__Invisible_Touch.html~~
-
Privilege escalation via mmap on freebsd
http://www.freebsd.org/security/advisories/FreeBSD-SA-13:06.mmap.asc
-
Project writeup: curated Twitter
http://instamatique.com/hackerschool/blog/2013/12/04/project-writeup-curated-twitter/
-
PSA: The Rails SQL injection vuln. is more dangerous than previously indicated

-
Pwn2Own Competition Results in 0-Days for Chrome, Firefox, IE, Java and Flash
http://hothardware.com/News/Pwn2Own-Competition-Results-in-0Days-for-Chrome-Firefox-IE-Java-and-Flash/
-
Pwn2Own owned all major browsers
http://h30499.www3.hp.com/t5/HP-Security-Research-Blog/Pwn2Own-2013/ba-p/5981157
-
Pwning Your Privacy in All Browsers
http://homakov.blogspot.com/2013/03/pwning-your-privacy-in-all-browsers.html ⭐⭐
-
Rails SQL Injection Examples
http://rails-sqli.org/
-
Rails SQL injection flaws cause Dutch Government to take site offline
http://www.nrc.nl/nieuws/2013/01/09/digid-offline-na-ontdekking-ernstig-lek/
-
Rails SQL Injection Issue Meets Builders Vs. Breakers
~~http://www.jemurai.com/rails-sqli-issue.html~~
-
Realtime web app for SQL Injection detector and data takeover
~~http://darkoon.herokuapp.com/~~
-
Releasing my book "Hacking the Xbox" as a free PDF in honor of Aaron Swartz
http://nostarch.com/xboxfree
-
Remote Code Execution in BlackBerry Smartphones
http://www.blackberry.com/btsc/KB35315
-
Remote Code Execution in GitLab 5+
http://blog.gitlab.org/gitlab-ce-6-2-and-5-4-security-release/
-
Remote Code Execution in GitLab Shell
http://blog.gitlab.org/security-vulnerability-in-gitlab-shell/
-
Remote code execution in Struts Framework
http://struts.apache.org/release/2.3.x/docs/s2-016.html
-
Reverse-engineering the Z-80: the silicon for two interesting gates explained
http://www.righto.com/2013/09/understanding-z-80-processor-one-gate.html ⭐⭐
-
Room Hacking: How I hacked my room hunt in SF
https://medium.com/what-i-learned-today/ba83062f40c6
-
Ruby on Rails has SQL injection vuln
http://www.theregister.co.uk/2013/01/03/ruby_on_rails_sql_injection_vuln/
-
Ruby on Rails security updates address SQL injection flaw
~~http://www.csoonline.com/article/725387/ruby-on-rails-security-updates-address-sql-injection-flaw~~
-
Ruby on Rails vulnerable to mass assignment and SQL injection
~~http://www.zweitag.de/en/blog/ruby-on-rails-vulnerable-to-mass-assignment-and-sql-injection~~
-
Ruby SQL Injection Flaw a Non-Issue for Most Organizations
http://www.securityweek.com/ruby-rails-sql-injection-flaw-non-issue-most-organizations
-
Résumé Shows Snowden Honed Hacking Skills
http://www.nytimes.com/2013/07/05/us/resume-shows-snowden-honed-hacking-skills.html?_r=0&pagewanted=all
-
Search autocomplete suggests SQL injections on Healthcare.gov
https://plus.google.com/117012765952583558240/posts/BS1MvrCGvaG
-
South African Whistleblowers Exposed via SQL Injection
~~http://www.mavitunasecurity.com/blog/south-african-police-whistleblowers-hacked-sql-injection/~~
-
SQL Injection [video]
http://informationsecurity.451research.com/?p=4986
-
SQL Injection possibility Laravel 3.x
~~https://github.com/laravel/laravel/issues/2380~~
-
SQL Injection possible codes in Github
https://twitter.com/afshinmeh/status/363356008241836032
-
SQL Injection Vulnerability in several versions of Rails
http://weblog.rubyonrails.org/2013/1/2/Rails-3-2-10--3-1-9--and-3-0-18-have-been-released/?sql-injection
-
SQL Injection – Understanding and Protection
https://www.mavitunasecurity.com/blog/understanding-sql-injection-protection/
-
Sudo: Authentication bypass when clock is reset
http://www.sudo.ws/sudo/alerts/epoch_ticket.html
-
Surprise in my logs (Or how I could use Google for proxying and SQL Injection)
http://ezra.c.com.mx/2013/10/surprise-in-my-logs-or-how-i-use-google.html
-
Teaching a Computer to Read: NLP Hacking in Python
~~http://blog.scripted.com/staff/nlp-hacking-in-python/~~
-
Tectia SSH Server Remote Authentication Bypass Exploit Published
http://threatpost.com/tectia-ssh-server-remote-authentication-bypass-exploit-published-120412/
-
The Aaron Swartz Hacking Case Has Been Dismissed By The US District Court
http://techcrunch.com/2013/01/14/the-aaron-swartz-hacking-case-has-been-dismissed-by-the-us-district-court/
-
The big GSM write-up – how to capture, analyze and crack GSM?
http://domonkos.tomcsanyi.net/?p=418
-
The fly-by, Wi-Fi hacking machine
http://www.smh.com.au/it-pro/security-it/the-flyby-wifi-hacking-machine-20130524-2k5xg.html
-
The Hacking Business Model
http://hackingbusinessmodel.info/
-
UCSB iCTF: Hacking Nuclear Plants and Pwning ASLR/NX
http://www.mathyvanhoef.com/2013/04/ucsb-ictf-hacking-nuclear-plants-and.html ⭐
-
Understanding Buffer Overflow Exploits
http://proactivedefender.blogspot.com/2013/05/understanding-buffer-overflows.html
-
US stops jailed activist Barrett Brown from discussing hacking prosecution
http://www.theguardian.com/world/2013/sep/04/barrett-brown-gag-order-us-government
-
Use a Software Bug to Win Video Poker? That’s a Federal Hacking Case
~~http://www.wired.com/threatlevel/2013/05/game-king/~~
-
Using SQL injection vulnerabilities to dump your database
http://blog.jooq.org/2013/11/05/using-sql-injection-vulnerabilities-to-dump-your-database/
-
When Hackers Fight: A leet hacker recounts an epic pwning
~~http://nautil.us/issue/6/secret-codes/when-hackers-fight~~
-
WHMCS SQL Injection Vulnerability in the Wild
http://blog.sucuri.net/2013/10/whmcs-sql-injection-vulnerability-in-the-wild.html ⭐⭐
-
Why it’s easy being a hacker – A SQL injection case study
http://www.securesolutions.no/why-its-easy-being-a-hacker/
-
Windows XP Local Privilege Escalation Zero-Day in The Wild
http://www.fireeye.com/blog/technical/cyber-exploits/2013/11/ms-windows-local-privilege-escalation-zero-day-in-the-wild.html
-
With critical 0-day exploits circulating, Microsoft and Adobe report fixes
http://arstechnica.com/security/2013/05/with-critical-0-day-exploits-circulating-microsoft-and-adobe-report-fixes/
-
Write-up Huge.js nuitduhack 2k13
http://rambaudpierre.fr/blog/penetration-testing/2013-03-15-ndh2k13-huge-js
-
YAML Remote Code Execution in Puppet
~~http://puppetlabs.com/security/cve/cve-2013-3567/~~
-

### 2012 — 151 writeups

"Egor, stop hacking Github"
~~http://homakov.blogspot.com/2012/03/egor-stop-hacking-gh.html~~
-
"Permission denied" - How I found and worked around an annoying quirk
~~http://lukasz.langa.pl/5/error-opening-file-for-reading-permission-denied/~~
-
Aaron Swartz hit with 9 more felony charges in MIT hacking case
~~http://www.dailydot.com/news/aaron-swartz-mit-jstor-hack-charges/~~
-
Adobe Hacker Says He Used SQL Injection To Grab Database Of 150K User Accounts
http://www.darkreading.com/database-security/167901020/security/attacks-breaches/240134996/adobe-hacker-says-he-used-sql-injection-to-grab-database-of-150-000-user-accounts.html
-
Advanced Exploitation of Mozilla Firefox Use-after-free Vulnerability
http://www.vupen.com/blog/20120625.Advanced_Exploitation_of_Mozilla_Firefox_UaF_CVE-2012-0469.php
-
At hacking contest, Google Chrome falls to third zero-day attack
http://arstechnica.com/business/news/2012/03/googles-chrome-browser-on-friday.ars
-
Chrome exploit and sandbox escape demonstrated at CanSecWest, $60k awarded
~~https://pwnium.appspot.com/~~
-
Chrome Pwned in Pwn2Own 2012 By VUPEN
~~http://browserfame.com/525/chrome-got-hacked-pwn2own-2012~~
-
Cliched but good writeup: Things to know before you shift completely to Linux
http://www.quora.com/Switching-from-Windows-to-Linux/I-am-shifting-from-Windows-to-Linux-Can-you-please-completely-explain-Linux-as-I-am-new-to-it/answer/Paul-Reiber
-
Cookie-based SQL Injection
http://resources.infosecinstitute.com/cookie-based-sql-injection/ ⭐⭐⭐
-
CVE-2012-0217: Intel's sysret Kernel Privilege Escalation (on FreeBSD)
http://fail0verflow.com/blog/2012/cve-2012-0217-intel-sysret-freebsd.html ⭐
-
CVE-2012-2553: Windows Kernel VDM use-after-free in win32k.sys
http://j00ru.vexillium.org/?p=1479 ⭐
-
CVE-2012-2661: exploitation write-up (Rails SQL Vulnerability)
http://blog.pentesterlab.com/2012/06/cve-2012-2661-exploitation-write-up.html
-
CVE-2012-2661: SqlInjection on Rails
http://armoredcode.com/blog/cve-2012-2661-sqlinjection-on-rails/
-
Detecting Postgres SQL Injections
http://blog.endpoint.com/2012/06/detecting-postgres-sql-injection.html
-
Disqus Blog Comments Blind SQL Injection Vulnerability
http://www.exploit-db.com/exploits/20913/ ⭐⭐
-
EU wants to criminalize "Hacking Tools"
~~http://www.wired.com/threatlevel/2012/04/hacking-tools/~~
-
EU: Possession/distribution of hacking tools to be made a criminal offence
http://www.europarl.europa.eu/news/en/pressroom/content/20120326IPR41843/html/Hacking-IT-systems-to-become-a-criminal-offence
-
Excellent writeup about Node.js (up to date)
http://stackoverflow.com/questions/1884724/what-is-node-js/6782438#6782438
-
Explain SQL injection without technical jargon
http://security.stackexchange.com/questions/25684/how-can-i-explain-sql-injection-without-technical-jargon#answer-25710
-
Exploitation of Windows Kernel Intel 64-Bit Mode Sysret Privilege Escalation
http://www.vupen.com/blog/20120806.Advanced_Exploitation_of_Windows_Kernel_x64_Sysret_EoP_MS12-042_CVE-2012-0217.php
-
Exploiting the iOS 6's KASLR [Jailbreaking]
http://www.techanalyzer.net/2012/10/15/exploiting-the-ios-6s-kaslr-jailbreaking/
-
Exploiting Type Confusion Vulnerabilities in JRE (CVE-2011-3521/CVE-2012-0507)
http://schierlm.users.sourceforge.net/TypeConfusion.html
-
From SQL injection to shell: PostgreSQL edition
https://www.pentesterlab.com/from_sqli_to_shell_pg_edition.html
-
Geeks love Colored Lights - Hacking IKEA RGB Led Strip
http://openpicus.blogspot.it/2012/09/geeks-love-colored-lights-ikea-dioder.html
-
Getting root on a Sony TV
http://hackaday.com/2012/06/20/getting-root-on-a-sony-tv/
-
Hacker Grabs 150k Adobe User Accounts via SQL Injection
http://slashdot.org/submission/2353147/hacker-grabs-150k-adobe-user-accounts-via-sql-injection
-
Hacking an ATM
http://henryschwarz.blogspot.co.uk/2012/06/black-hatted.html
-
Hacking and defeating Google's reCAPTCHA with a 99% accuracy
http://www.dc949.org/projects/stiltwalker/
-
Hacking Facebook to remove the social value facade
http://hackaday.com/2012/10/23/hacking-facebook-to-remove-the-social-value-facade/
-
Hacking Facebook’s Corporate Network for Fun and Profit
~~http://stephensclafani.com/2012/07/31/hacking-facebooks-corporate-network-for-fun-and-profit/~~
-
Hacking FEMA
http://blog.boxysean.com/2012/11/10/hacking-fema/
-
Hacking Firefox OS
https://hacks.mozilla.org/2012/11/hacking-firefox-os/
-
Hacking Instagram: release your photos under Creative Commons
http://i-am-cc.org/
-
Hacking is child’s play – SQL injection with Havij by 3 year old
http://www.troyhunt.com/2012/10/hacking-is-childs-play-sql-injection.html ⭐⭐⭐
-
Hacking job interviews
http://mycareerstack.com/
-
Hacking Kids - Part 1
~~http://www.eytanlevit.com/post/32391027251/hacking-kids-part-1~~
-
Hacking Meat: Can technology make us eat fewer animals?
http://gigaom.com/cleantech/hacking-meat-can-technology-make-us-eat-fewer-animals/
-
Hacking Mountain Lion: Bringing the old Web Inspector back
http://thomasst.ch/webinspector/
-
Hacking News Aggregation with Smart Tagging

-
Hacking of Human Waste

-
Hacking on Side Projects: The Pool Ball Tracker
http://blog.gocardless.com/post/34568593614/hacking-on-side-projects-the-pool-ball-tracker
-
Hacking the Dropbox Space Race
~~http://blog.burtonthird.com/?p=81~~
-
Hacking The iPod: How I Earned $65K In High School
http://teddy.is/ipod/
-
Hacking the Kindle Touch
http://wiki.mobileread.com/wiki/Kindle_Touch_Hacking
-
Hacking the Startup Open Floor Plan Office
~~http://blog.idonethis.com/post/30585678147/hacking-the-startup-open-floor-plan-office~~
-
Hacking through Airtime to promote your startup
http://noamschwartz.tumblr.com/post/24558058981/hacking-through-airtime-to-promote-your-startup
-
Hacking Twitter and being suspended in less than 2 days and 300 tweets
http://blog.opinionage.com/hacking-twitter-and-be-suspended-in-less-than
-
Hacking Various Sites
http://homakov.blogspot.com/2012/03/hacking-skrillformer-moneybookers.html ⭐⭐
-
Hacking Windows 8 Games
http://justinangel.net/HackingWindows8Games
-
Hacking WinRAR for fun and profit
https://github.com/taviso/rarvmtools ⭐⭐
-
Hacking with Mathematica and Wolfram API
http://patrickcollison.com/blog/2009/04/hacking-for-fun-and-profit-with-mathematica-and-the-google-analytics-api
-
Hakin9 First January 2012 Issue: SQL Injection
http://www.felipemartins.info/2012/01/hakin9-first-january-2012-issue-sql-injection/ ⭐⭐
-
HDMI – Hacking Displays Made Interesting
http://media.blackhat.com/bh-eu-12/Davis/bh-eu-12-Davis-HDMI-WP.pdf
-
HoneyNet Project Releases SQL Injection Emulator
http://www.securityweek.com/honeynet-project-releases-sql-injection-emulator
-
How I found my lost iPhone
http://drunkdetective.com/
-
How I Found My Path in Life: A Story Completely Unrelated to Dan Shipper
http://maxwendkos.com/post/22586832520/how-i-found-my-path-in-life
-
How I found my technical co-founder and the valuable lessons I learned
http://www.pressbuttongoboink.com/2012/03/how-i-found-my-cto-and-socially-awkward-penguin/
-
How I found out how that 105 companies were tracking me on the web.
http://www.theatlantic.com/technology/archive/2012/02/im-being-followed-how-google-and-104-other-companies-are-tracking-me-on-the-web/253758/
-
How I got a $3,500 USD Facebook Bug Bounty
~~http://blog.detectify.com/post/39209711597/how-i-got-a-3-500-usd-facebook-bug-bounty~~
-
How I got a YC interview as a single founder and blew it at the final hurdle
~~http://swaggadocio.com/post/37188318276/how-i-got-a-yc-interview-as-a-single-founder-and-blew~~
-
How I Got Unbanned from Hacker News
http://www.andrewkkirk.com/2012/12/how-unbanned-from-hacker-news/
-
How I hacked 37signals job board to save $400
http://grep-i.com/
-
How I hacked Git commits into TestFlight release notes (& felt dirty doing it)
~~http://www.fullcontact.com/2012/12/20/git-commit-messages-testflight-jenkins/~~
-
How I hacked Gogo inflight wireless Internet with Chrome
http://blog.andrewboni.com/how-i-hacked-gogo-inflight-wireless-internet-with-chrome/
-
How I hacked my brain with Adderall: a cautionary tale
http://www.theverge.com/2012/7/26/3184496/hacked-brain-adderall-cautionary-tale
-
How I hacked My CompSci Class
http://crypticswarm.com/how-i-hacked-my-compsci-class
-
How I Hacked My Own Pseudo-Data Plan
https://gist.github.com/4004545 ⭐⭐
-
How I made $1000 exploiting a broken market (2008)
~~http://jessepollak.me/2012/06/14/how-i-made-1000-exploiting-a-broken-market/~~
-
How My 3 Year Old Performed SQL Injection
~~http://java.dzone.com/articles/hacking-childs-play-how-my-3~~
-
How To Attacke a Website with SQL Injection in 60 Seconds
https://p.twimg.com/AonTonBCIAEjf6X.jpg
-
How to prevent your application from SQL Injection?
http://blog.teamgrowth.net/index.php/security/how-to-prevent-your-application-from-sql-injection
-
How we found our lucky mascot? - a CROW
http://blog.webengage.com/2012/09/13/and-we-found-our-mascot/
-
How we Hacked Angel.co
http://blog.appla.bz/2012/03/22/how-we-hacked-angel-co
-
I hacked my secure wireless network: here's how it's done
http://tech.blorge.com/Structure: /2007/02/06/i-hacked-my-wireless-network/
-
IE9 pwn2owned with 0-day with exploit working back from IE6 to IE10 on Windows 8
https://www.zdnet.com/blog/security/pwn2own-2012-ie-9-hacked-with-two-0day-vulnerabilities/10621
-
Instagram vulnerability on iPhone allows for account takeover
~~http://www.computerworld.com/s/article/9234236/Instagram_vulnerability_on_iPhone_allows_for_account_takeover~~
-
Intel SYSRET privilege escalation
http://blog.xen.org/index.php/2012/06/13/the-intel-sysret-privilege-escalation/
-
IOS to Arduino Hacking Tips

-
I’m a creative guy who can't code. How I found a technical Co-founder.
http://loopswoopandpull.com/2012/05/31/im-a-creative-guy-who-cant-code-how-do-i-find-a-technical-co-founder-2-years-later-answer-below/
-
Jailbreaking a set top box with the remote
http://www.devttys0.com/2012/10/jailbreaking-the-neotv/ ⭐
-
Jailbreaking the 4 Year Degree
http://modernmagnate.com/jailbreaking-the-4-year-degree-degreed/
-
Jailbreaking the Degree
http://techcrunch.com/2012/05/05/jailbreaking-the-degree/
-
Japan's "first hacker" - the man who designed the Happy Hacking keyboard.
http://museum.ipsj.or.jp/en/pioneer/e-wada.html
-
Java 0-day exploit code, prevention explained
~~http://geeknizer.com/java-0day-exploit-explained/~~
-
Java 0-day exploit discovered, everyone should disable Java today
http://www.geek.com/articles/news/java-0-day-exploit-discovered-everyone-should-disable-java-today-20120828/
-
Java 0day analysis (CVE-2012-4681)
http://immunityproducts.blogspot.com.ar/2012/08/java-0day-analysis-cve-2012-4681.html
-
Java 7 0-Day Vulnerability Information & Mitigation
http://www.deependresearch.org/2012/08/java-7-0-day-vulnerability-information.html
-
Lateral SQL Injection in Oracle Database
http://www.greensql.com/blog/2011/09/lateral-sql-injection-in-oracle-database/
-
Lateral SQL Injection Revisited [pdf]
~~http://www.accuvant.com/sites/default/files/Lateral_SQL_Injection_Revisited_Final.pdf~~
-
Learn SQLI - SQL Injection Tutorial
https://github.com/Audi-1/sqli-labs#readme ⭐⭐
-
Lilupophilupop SQL Injection Attack Tops 1 Million Infected URLs
http://threatpost.com/en_us/blogs/lilupophilupop-sql-injection-attack-tops-1-million-infected-urls-010412
-
Linux Local Privilege Escalation via SUID /proc/pid/mem Write
http://blog.zx2c4.com/749
-
Mass SQL Injections Spike Again
http://www.darkreading.com/database-security/167901020/security/news/240000077/mass-sql-injections-spike-again.html
-
Massive MYSQL Authentication Bypass Exploit
https://www.secmaniac.com/blog/2012/06/11/massive-mysql-authentication-bypass-exploit/
-
Metasploit exploit development - The series Part 1.
~~https://community.rapid7.com/community/metasploit/blog/2012/07/05/part-1-metasploit-module-development--the-series~~
-
Microsoft says IE 6, 7, and 8 vulnerable to remote code execution
http://arstechnica.com/security/2012/12/microsoft-says-ie-6-7-and-8-vulnerable-to-remote-code-execution/
-
My own CTF Writeup
http://blog.ericrafaloff.com/2012/08/24/my-stripe-ctf-play-by-play/#
-
New Java 0-day exploit spotted in the wild.
http://blog.fireeye.com/research/2012/08/zero-day-season-is-not-over-yet.html?utm_source=feedburner&utm_medium=twitter&utm_campaign=Feed%3A+FE_research+%28FireEye+Malware+Intelligence+Lab%29
-
New Metasploit 0-day exploit for IE 7, 8 & 9 on Windows XP, Vista, and 7
~~https://community.rapid7.com/community/metasploit/blog/2012/09/17/lets-start-the-week-with-a-new-internet-explorer-0-day-in-metasploit~~
-
Nikjju Mass SQL injection campaign (180k+ sites compromised)
http://blog.sucuri.net/2012/04/nikjju-mass-injection-campaign-150k-sites-compromised.html ⭐⭐
-
Okcupid has huge security privilege escalation for all users

-
Oracle Beefs Up Database Firewall With SQL Injection Defenses, MySQL
http://www.eweek.com/c/a/Security/Oracle-Beefs-Up-Database-Firewall-With-SQL-Injection-Defenses-MySQL-325750/
-
Privilege Escalation Exploit for Linux
http://www.exploitthis.com/2012/01/privilege-escalation-exploit-for-linux.html
-
Privilege escalation on amd64 FreeBSD using an Intel CPU bug
http://security.freebsd.org/advisories/FreeBSD-SA-12:04.sysret.asc
-
Privilege Escalation using MySQL User Defined Functions
http://blog.encription.co.uk/privilege-escalation-using-mysql-user-defined-functions/
-
Privilege escalation vulnerability in the Linux NVidia binary driver
http://permalink.gmane.org/gmane.comp.security.full-disclosure/86747
-
Privilege escalation vulnerability on 64-bit Intel CPU hardware
http://www.kb.cert.org/vuls/id/649219
-
Proprietary Nvidia Linux Driver Contains Privilege Escalation Hole
http://linux.slashdot.org/story/12/08/01/1618225/proprietary-nvidia-linux-driver-contains-privilege-escalation-hole
-
Pwn2Own 2012: IE 9 hacked with two 0day vulnerabilities
http://www.zdnet.com/blog/security/pwn2own-2012-ie-9-hacked-with-two-0day-vulnerabilities/10621
-
Pwning a Spammer's Keylogger
http://blog.spiderlabs.com/2012/04/pwning-a-spammers-keylogger.html
-
Quadrotor build writeup
http://www.coolfactor.org/blog/2012/09/05/quadrotor/
-
Revamped Pwn2Own to Offer $105K in Prizes
http://threatpost.com/en_us/blogs/revamped-pwn2own-offer-105k-prizes-cash-google-chrome-0-days-012312
-
Ruby on Rails SQL Injection
http://seclists.org/oss-sec/2012/q2/504 ⭐⭐
-
Ruby SQL injection library:UNION stacked queries, logarithmic blind injection
http://sqlcake.sourceforge.net/
-
Seemingly Insignificant SQL Injections Lead to Rooted Routers
http://www.darkreading.com/database-security/167901020/security/news/240003263/seemingly-insignificant-sql-injections-lead-to-rooted-routers.html
-
Simple authentication bypass for MySQL root revealed
http://www.h-online.com/open/news/item/Simple-authentication-bypass-for-MySQL-root-revealed-1614990.html
-
Simple Forum PHP 2.1 SQL Injection
http://packetstormsecurity.org/files/113696/VL-599.txt
-
Sony website defacer pwned by second hacker
http://www.theregister.co.uk/2012/01/06/sony_defacement/
-
Spend the 3 day weekend hacking big data - win $1000 cash + other prizes
http://commoncrawl.org/common-crawl-code-contest-extended-through-the-holiday-weekend/
-
SQL Injection - Hacking for noobs
http://hacking4noobs.x10.mx/sql-injection-for-noobs/
-
SQL Injection Attack: What is it, and how to prevent it
~~http://www.zdnet.com/sql-injection-attack-what-is-it-and-how-to-prevent-it-7000000881/~~
-
SQL injection attacks jumped 69% in Q2
http://www.infosecurity-magazine.com/view/27380/sql-injection-attacks-jumped-69-in-q2/
-
SQL injection in one minute
http://blog.detectify.com/post/31942728649/sql-injection-in-1-min ⭐⭐
-
SQL Injection Knowledge Base
http://websec.ca/kb/sql_injection
-
SQL Injection on searchpoint.net (look at the _sort_by query string param)
http://www.searchpoint.net/list.asp?_adv_srch=1&_sort_by=list_price%20asc,Case%20when%20agent_public_id%20IN%20%28%27xxx%27%29%20then%200%20else%201%20end,Case%20when%20agent_office_id%20IN%20%28%27X_SOCAL%27%29%20then%200%20else%201%20end&_org_id=CARETS&_hdnCityState=ca&city_name=Los%20Angeles&_sponsor_office_id=X_SOCAL 
-
SQL Injection Pentesting and more
http://pentestmag.com/webapp-compendium-06_2012/
-
SQL Injection Pocket Reference
https://docs.google.com/document/d/1rO_LCBKJY0puvRhPhAfTD2iNVPfR4e9KiKDpDE2enMI/view
-
SQL injection that gets around mysql_real_escape_string [2011]
http://stackoverflow.com/questions/5741187/sql-injection-that-gets-around-mysql-real-escape-string/12118602
-
SQL Injection through HTTP Headers
http://resources.infosecinstitute.com/sql-injection-http-headers/ ⭐⭐⭐
-
SQL Injection Tools For Database Pwnage
http://www.darkreading.com/galleries/security/news/232900180/slide-show-10-sql-injection-tools-for-database-pwnage.html
-
SQL Injection via table names and field names. Case study.
http://renesd.blogspot.com/2012/06/sql-injection-via-field-names-and-table.html
-
Start Hacking With Java 8
http://functr.blogspot.co.uk/2012/09/start-hacking-with-java-8.html
-
Steve Wozniak gives jailbreaking the thumbs up, wishes iTunes supported Android
http://thenextweb.com/apple/2012/10/02/apple-co-founder-steve-wozniak-supports-jailbreak-community-wishes-itunes-worked-android/
-
Stored procedures and ORMs won't save you from SQL injection
http://www.troyhunt.com/2012/12/stored-procedures-and-orms-wont-save.html ⭐⭐⭐
-
Stripe CTF Writeup
http://blog.ioactive.com/2012/08/stripe-ctf-20-write-up.html
-
Students busted for hacking computers, changing grades
http://www.theregister.co.uk/2012/01/27/students_hack_teachers_computers/
-
Teach Hacking in High Schools
http://kevinjmireles.wordpress.com/2011/06/21/teach-hacking-in-high-schools/
-
The Best Way to Prevent SQL Injection
http://www.endyourif.com/the-best-way-to-prevent-sql-injection/
-
The Product Hacking Ecosystem
http://codeascraft.etsy.com/2012/01/04/the-product-hacking-ecosystem/
-
Thunderbolt-DMA-land: Hacking Macs through the Thunderbolt interface
http://www.breaknenter.org/2012/02/adventures-with-daisy-in-thunderbolt-dma-land-hacking-macs-through-the-thunderbolt-interface/
-
Using SQL injection as a feature
http://stackoverflow.com/questions/11546349/using-urldecode-results-in-mysql-error
-
Website Security tips - Sql Injection and its prevention with Java
http://mrbool.com/website-security-tips-sql-injection-and-its-prevention-with-java/25521
-
Why and how we hacked a good pass for passbook. Here's what we learned.
http://thejana.com/post/32441478846/what-we-learned-in-24-hours
-
Why are big companies still vulnerable to SQL Injection?
http://www.darkreading.com/database-security/167901020/security/vulnerabilities/240003593/let-s-ask-why.html
-
Windows Slowdown, Investigated and Identified - a writeup by performance expert
http://randomascii.wordpress.com/2012/09/04/windows-slowdown-investigated-and-identified/
-
WordPress 3.4.2 security release for privilege escalation
http://wordpress.org/news/2012/09/wordpress-3-4-2/
-
Xen PV Guest Privilege Escalation (CVE-2012-0217)
http://lists.xen.org/archives/html/xen-announce/2012-06/msg00001.html
-
XSS + "Save your password" = pwned
http://homakov.blogspot.com/2012/11/xss-save-your-password-pwned.html ⭐⭐
-
Yahoo Hacked; How to Secure Passwords from SQL Injections
~~http://www.stormpath.com/blog/yahoo-hacked-how-secure-passwords-sql-injections~~
-
“Sharp rise in SQL injections” you say
http://www.bayes-shelton.co.uk/index.php/sharp-rise-in-sql-injections-you-say/
-

### 2011 — 119 writeups

0-day vulnerability on WordPress 3.x (remote command execution)
http://blog.sucuri.net/2011/04/serious-security-vulnerability-on-wordpress-3-x-remote-command-execution.html ⭐⭐
-
0day vulnerability full disclosure: American Express
http://qnrq.se/full-disclosure-american-express/
-
37signals sent me a gift for pwning their leaderboard
http://www.bengarvey.com/2011/09/23/37signals-sent-me-a-gift-for-pwning-their-leaderboards/
-
A Lean Startup Journey or How We Found Ourselves in the Same Rabbit Hole, Again
http://andig.posterous.com/a-lean-startup-journey-or-how-we-found-oursel
-
An introduction to SQL injection for someone that doesn't know SQL
http://pedanticposts.com/intro-to-hacking-part-4-obtaining-passwords-through-sql-injection/
-
Analysis and Exploitation of Adobe Flash 0-Day (CVE-2011-0609)
http://www.vupen.com/blog/20110326.Technical_Analysis_and_Win7_Exploitation_Adobe_Flash_0Day_CVE-2011-0609.php
-
Announcing cross_fuzz, a potential 0-day in circulation, and more
http://lcamtuf.blogspot.com/2011/01/announcing-crossfuzz-potential-0-day-in.html
-
Appeals Court: No Hacking Required to Be Prosecuted as a Hacker
~~http://www.wired.com/threatlevel/2011/04/no-hacking-required/~~
-
Armadillo Aerospace (John Carmack) writeup on 140,000ft rocket flight
http://www.armadilloaerospace.com/n.x/Armadillo/Home/News?news_id=377
-
Ask: Hacking Google Reader Shares

-
BBC Newsnight online 'chat' with Lulz Security hacking group
http://www.bbc.co.uk/news/technology-13912836
-
CCAvenue.com Payment Gateway Vulnerable SQL Injection
http://seclists.org/fulldisclosure/2011/May/127 ⭐⭐
-
China airs documentary proving military university is hacking U.S. targets
http://www.geek.com/articles/news/china-airs-documentary-proving-military-university-is-hacking-u-s-targets-20110822/
-
China paper warns Google may pay price for hacking claims
http://www.reuters.com/article/2011/06/06/us-google-china-idUSTRE7550CV20110606
-
Citibank confirms hacking attack
http://www.bbc.co.uk/news/technology-13711528
-
Cloud Foundry Technical Writeup
~~http://brainspl.at/articles/2011/04/16/cloudfoundry-the-open-paas-is-finally-open-source~~
-
Cookiejacking: 0-day exploit of all Internet Explorer versions
http://sites.google.com/site/tentacoloviola/cookiejacking
-
CWE/SANS Top 25 Most Dangerous Software Errors (SQL injection is still #1)
http://cwe.mitre.org/top25/?2011
-
Dutch Court Rules WiFi Hacking Is Now Legal
~~http://www.pcworld.com/article/222589/dutch_court_rules_wifi_hacking_is_now_legal.html~~
-
Encyclopedia of Windows Privilege Escalation
https://docs.google.com/viewer?url=http://www.insomniasec.com/publications/WindowsPrivEsc.ppt&pli=1
-
Exploiting 'INSERT INTO' SQL Injections Ninja Style
http://www.mathyvanhoef.com/2011/10/exploiting-insert-into-sql-injections.html ⭐
-
Firefox Extension used to test for SQL Injection vulnerabilities
~~https://addons.mozilla.org/en-US/firefox/addon/sql-inject-me/~~
-
Flash 0-day exploit
https://lists.immunityinc.com/pipermail/dailydave/2011-December/000402.html
-
Google Video Distributed Archiving System Writeup
~~http://archiveteam.blogspot.com/~~
-
Hacking a network with an infectious mouse.
http://pentest.snosoft.com/2011/06/24/netragards-hacker-interface-device-hid/
-
Hacking AngelList (or "social proof")
~~http://wensing.tumblr.com/post/11062968069/hacking-angellist-or-social-proof~~
-
Hacking AngelList: Tips for Raising Capital
http://www.seedstagecapital.com/2011/07/hacking-angel-list.html
-
Hacking Challenge: Change this website's homepage picture and win $10K...
http://www.blackbergsecurity.us/
-
Hacking Christmas lights
http://www.deepdarc.com/2010/11/27/hacking-christmas-lights/
-
Hacking Customer’s Technology Adoption Cycles
http://www.kalzumeus.com/2011/01/18/hacking-customers-technology-adoption-cycles/
-
Hacking Dunkin' Donuts
http://notcraig.blogspot.com/2011/01/hacking-for-love.html
-
Hacking Frequent Flyer Programs (video)
~~http://anarchogeek.com/2011/03/24/ignite-oscon-2010-hacking-frequent-flyer-programs/~~
-
Hacking Google for Fun and Profit
http://blog.andrewcantino.com/blog/2011/12/14/hacking-google-for-fun-and-profit/
-
Hacking Heroku with Custom Build Packs
http://quickleft.com/blog/hacking-heroku-with-custom-build-packs
-
Hacking Instagram filters in real life
http://1000memories.com/blog/97-old-school-instagram-filters-using-vintage-cameras-and-film
-
Hacking Minecraft into WebGL
http://metaphysicaldeveloper.wordpress.com/2011/12/20/implementing-minecraft-in-webgl/
-
Hacking Scrabble (part 1)
http://blog.zephod.com/post/14167418899/hacking-scrabble-part-1
-
Hacking side projects: Napkin to $1000 per day
http://waynechang.com/2011/01/18/building-a-sustainable-side-project/
-
Hacking Small Town America
http://www.theatlantic.com/technology/archive/2011/05/hacking-small-town-america-the-unexploited-market-of-tyler-texas/238584/
-
Hacking the American Dream
~~http://mike-hostetler.com/blog/2011/05/hacking-the-american-dream~~
-
Hacking the App Stores
http://blog.betable.com/hacking-the-app-stores
-
Hacking the planet: white pavement and roofs for hot cities
http://solveclimatenews.com/news/20100721/doe-buildings-get-cool-roofs-reflect-heat-back-space
-
Hacking the system: how to land meetings with anyone you want
http://venturebeat.com/2011/06/16/hacking-the-system-how-to-land-meetings-with-anyone-you-want/
-
Hacking Twitter's Javascript
http://blog.jazzychad.net/2011/03/27/hacking-twitters-javascript.html
-
Hacking your apartment's electronic entry system
http://jmtame.posterous.com/hacking-your-apartments-electronic-entry-syst
-
Half a million sites hit with SQL injection attack
http://newenterprise.allthingsd.com/20110401/thousands-of-web-sites-hit-with-new-twist-on-old-sql-injection-hack/?mod=googlenews
-
How a Hacker Performs a SQL Injection Attack and How to Protect Your Data
http://www.webhostingsearch.com/articles/sql-injection-attack-protect-your-data.php
-
How Hackers Take Over Web Sites with SQL Injection / DDoS
http://www.howtogeek.com/97971/htg-explains-how-hackers-take-over-web-sites-with-sql-injection-ddos/
-
How I Found My Co-founder on Hacker News
http://findthetechguy.com/how-i-found-my-co-founder-on-hacker-news/
-
How I found my technical co-founder: how a non-techie should approach a techie.
http://foundingthoughts.com
-
How I found the golden moment to outsource
http://profitawareness.com/blog/2011/12/hire-web-developers/
-
How I Found the Secret to Happiness While Totally Naked
http://www.raptitude.com/2009/07/how-i-found-the-secret-to-happiness-while-totally-naked/
-
How I founded, bootstrapped, grew and sold my web startups
http://www.slideshare.net/cmercier/how-i-founded-bootstrapped-grew-and-sold-my-web-startups-meshu-2009
-
How I got into YC as a non-technical single founder
http://alexkrupp.typepad.com/sensemaking/2011/04/how-i-got-into-yc-as-a-non-technical-single-founder.html
-
How I Hacked a Bank and Made 40 Bucks
https://www.golemtechnologies.com/blog/how-i-hacked-a-bank-and-made-40-bucks
-
How I hacked an android game with Python and OCR
http://vignesh.foamsnet.com/2011/08/how-i-hacked-android-game-with-python.html
-
How we found a name for our startup
http://blog.inspection2.com/name
-
How we found Osama Bin Laden
http://theghostofosamabinladen.com/
-
How we found the file that was used to Hack RSA
~~http://www.f-secure.com/weblog/archives/00002226.html~~
-
How we found the rudest cities in the world
http://engineering.foursquare.com/2011/02/28/how-we-found-the-rudest-cities-in-the-world-analytics-foursquare/#disqus_thread
-
How we found the rudest cities in the world – Analytics  foursquare
http://engineering.foursquare.com/2011/02/28/how-we-found-the-rudest-cities-in-the-world-analytics-foursquare/
-
I hacked a way to get hidden, autopsying audio on iOS
http://flax.ie/how-to-get-hidden-autoplaying-html5-audio-on-ios-now-with-added-hackiness/
-
If you've been exploiting the Mt Gox incident, please share your numbers

-
India’s Leading Payment Gateway “CCAvenue” Hacked by SQL Injection
http://digitizor.com/2011/05/05/ccavenue-hacked/
-
InQuicker: How We Found Our Co-Founder
http://stories.inquicker.com/post/9925670527/how-we-found-our-co-founder
-
Letting the Founder Go: How I Got Here « John Sheehan : Blog
~~http://john-sheehan.com/blog/letting-the-founder-go-how-i-got-here/~~
-
Likely pre-Pwn2Own Safari patch unlikely to stop three-time pwner
http://arstechnica.com/#!/apple/news/2011/03/likely-pre-pwn2own-safari-patch-unlikely-stop-three-time-pwner.ars
-
LizaMoon Mass SQL injection - A lot bigger than what is being reported
http://blog.sucuri.net/2011/04/lizamoon-mass-sql-injection-ur-php-updates.html ⭐⭐
-
Mass infections on IIS sites (using SQL injection)
http://blog.sucuri.net/2011/10/mass-infections-from-jjghui-comurchin-js-sql-injection.html ⭐⭐
-
Massive SQL injection attack making the rounds—694K URLs so far
http://arstechnica.com/security/news/2011/03/massive-sql-injection-attack-making-the-rounds694k-urls-so-far.ars
-
My startup, Tidal Labs, launched today with a TechCrunch writeup

-
MySQL.com compromised via (guess what?) SQL injection
http://blog.sucuri.net/2011/03/mysql-com-compromised.html ⭐⭐
-
MySQL.com hacked via... SQL injection vuln
http://www.theregister.co.uk/2011/03/28/mysql_hack/
-
MySQL.com Vulnerable To Blind SQL Injection Vulnerability
http://seclists.org/fulldisclosure/2011/Mar/309 ⭐⭐
-
New JavaScript hacking tool can intercept PayPal, other secure sessions
http://arstechnica.com/business/news/2011/09/new-javascript-hacking-tool-can-intercept-paypal-other-secure-sessions.ars
-
New Version of Eleonore Exploit Kit Released With New 0-Day Exploit
http://threatpost.com/en_us/blogs/new-version-eleonore-exploit-kit-released-new-0-day-exploit-020811
-
No-SQL injection in Mongo PHP
~~http://www.php.net/manual/en/mongo.security.php~~
-
Nodeconf 2011 Writeup
http://www.sauria.com/blog/2011/05/09/nodeconf-2011/
-
O(n) where more was expected, or how I found a way to Zappos's treasure chest
http://impulse.kirillzubovsky.com/post/4201509238/at-last-i-found-the-shoes-inside-of-zappos-treasure
-
October Issue of Pentest Magazine: SQL Injection
http://www.felipemartins.info/2011/11/october-issue-of-pentest-magazine-sql-injection/ ⭐⭐
-
OWASP: Testing for SQL injection
~~https://www.owasp.org/index.php/Testing_for_SQL_Injection_%28OWASP-DV-005%29~~
-
Phone-hacking whistle-blower found dead
~~http://edition.cnn.com/2011/WORLD/europe/07/18/uk.phone.hacking.hoare/~~
-
PHP Hacking aka trying to push PHP internals forwards
http://www.xarg.org/2011/06/php-hacking/
-
Policykit pwnage: linux local privilege escalation
http://blog.zx2c4.com/675
-
PSB.org was hacked with 0day exploit for MoveableType
http://www.thehackernews.com/2011/05/psborg-was-hacked-with-0day-exploit-for.html
-
Racket intro projects: start hacking on and with Racket
https://github.com/plt/racket/wiki/Intro-Projects ⭐⭐
-
Recent SQL Injection hacks — things you should know
http://blog.whitehatsec.com/recent-sql-injection-hacks-things-you-should-know/
-
RedBull Creation, hardware hacking contest
http://www.redbullusa.com/cs/Satellite/en_US/001242969629749
-
RESTduino - Arduino hacking for the REST of us
http://jasongullickson.posterous.com/restduino-arduino-hacking-for-the-rest-of-us
-
Reverse engineering the Cortex A8 core using software kernels
http://www.futurechips.org/chip-design-for-all/cortex-a8-tips-optimizing-iphone-apps.html
-
Self-pwning cars: the future of automotive rooting
http://www.boingboing.net/2011/03/13/self-pwning-cars-the.html
-
Siri authentication bypass
~~http://www.triskt.com/word/2011/10/18/ios-5-siri-authentication-bypass/~~
-
Six ways to protect yourself from SQL Injection
http://www.mattbearman.co.uk/2011/03/29/six-ways-to-protect-yourself-from-sql-injection/
-
Skype vulnerability was an XSS issue
http://secniche.blogspot.com/2011/05/skype-im-mac-os-x-is-this-0day.html
-
Sony Hacked Again: SQL injection attack against SonyMusic.gr exposes user data
http://nakedsecurity.sophos.com/2011/05/22/sony-bmg-greece-the-latest-hacked-sony-site/
-
Sony Japan hacked by SQL injection
http://nakedsecurity.sophos.com/2011/05/24/sony-music-japan-hacked-through-sql-injection-flaw/
-
Sony Music Japan website hacked via SQL injection: "Stupid Sony, so very stupid"
http://technolog.msnbc.msn.com/_news/2011/05/24/6706778-hackers-stupid-sony-so-very-stupid
-
SQL Injection Attack happening ATM
http://isc.sans.org/diary/SQL+Injection+Attack+happening+ATM/12127
-
SQL injection hack opens 180K sites
http://www.itworld.com/security/216125/powerful-simple-new-mass-sql-injection-attack-opens-180k-sites
-
SQL Injection Pocket Reference (Google Doc)
~~https://docs.google.com/Doc?docid=0AZNlBave77hiZGNjanptbV84Z25yaHJmMjk&pli=1#Allowed_Intermediary_Character_30801873723976314~~
-
Sql injection: be gone, fowl beast
http://www.wildbunny.co.uk/blog/2011/04/12/sql-injection-be-gone/
-
Synthetic biology weaponized virus, 0day exploit infects your brain?
http://blogs.computerworld.com/19409/dna_hackers_synthetic_biology_weaponized_virus_0day_exploit_to_infect_your_brain
-
The Ever-Rising SQL Injection Attack
http://www.information-systems-research.com/blog/2011/11/08/the-ever-rising-sql-injection-attack/
-
The Siemens SIMATIC Remote, Authentication Bypass (that doesn’t exist)
http://xs-sniper.com/blog/2011/12/20/the-siemens-simatic-remote-authentication-bypass-that-doesnt-exist/
-
Toolza : SQL Injection Tool
~~http://sectyp.wordpress.com/2011/04/08/toolza-sql-injection/~~
-
Two Android privilege escalation vulnerabilities
http://blog.duosecurity.com/2011/09/android-vulnerabilities-and-source-barcelona/
-
Urban sql injection
http://seanbonner.tumblr.com/post/3200064101/jacobjoaquin-r03-urban-sql-injection
-
Using buffer overflow exploits to patch ROM based products
~~http://www.insomniacgames.com/research_dev/articles/2011/152563081~~
-
VBulletin 4.X Security SQL Injection & CSRF/XSRF Exploits available
http://www.thehackernews.com/2011/05/security-alert-vbulletin-4x-security.html
-
VBulleting SQL injection vulnerability – Running vbulletin? Update it now
http://blog.sucuri.net/2011/05/vbulleting-sql-injection-vulnerability-update-now.html ⭐⭐
-
Videogames Pwning Hollywood In Release Week Sales
http://www.uproxx.com/gaming/2011/06/infographic-of-the-day-videogames-pwning-hollywood-in-release-week-sales/
-
Website Attacks - XSS and Directory Traversal more popular than SQL Injection
http://www.darkreading.com/database-security/167901020/security/application-security/231002549/websites-are-attacked-once-every-two-minutes.html
-
Who else is hacking a project instead of watching the Super Bowl?

-
Why And How We Founded Business Insider
http://www.businessinsider.com/founding-of-business-insider-2011-4
-
Why Audio Matters: Hacking Gamers' Memories
http://blog.betable.com/stand-out-brand-your-game-with-audio
-
Write-up on Swedish conference: Android – To Industry and Beyond?
http://blogg.antrop.se/?p=4072
-
Writeup of BBC's remake of the famous Stanford prison experiment.
http://www.bbcprisonstudy.org/
-
X64 Kernel Privilege Escalation
http://mcdermottcybersecurity.com/articles/x64-kernel-privilege-escalation
-
“Let The Hacking Begin” Declares Person Who Hacked Zuckerberg’s Facebook Page
http://techcrunch.com/2011/01/25/zuckerberg-fan-page-hack/
-

### 2010 — 55 writeups

$130 wireless touchscreen hacking platform from Kodak
~~http://amzn.com/B0030MIU16~~
-
Avoid hemorrhoids: Improve Hacking and Health by Moving Your Chair
https://spideroak.com/blog/201003291900-improve-productivity-and-health-by-relocating-the-chair
-
Becoming an exploit developer/security researcher help?

-
BlackHat Write-up: go-derper and mining memcaches
~~http://www.sensepost.com/blog/4873.html~~
-
Cables Discuss Vast Hacking by a China That Fears the Web
http://www.nytimes.com/2010/12/05/world/asia/05wikileaks-china.html?pagewanted=all&_r=1&hp
-
Careful when hosting 3rd party apps on subdomains, or how I hacked Facebook
http://gdeglin.blogspot.com/2010/09/dont-host-3rd-party-applications-on.html
-
Christopher “Moot” Poole's testimony in the Palin email hacking case
~~http://i.cdn.turner.com/dr/teg/tsg/release/sites/default/files/assets/poole-testimony.pdf~~
-
Company reaps $25,000,000 hacking TicketMaster & others . . .
~~http://www.sfgate.com/cgi-bin/article.cgi?f=/c/a/2010/03/01/BAK21C9544.DTL~~
-
Complete Noobs Guide to Hacking Nginx
~~http://blog.schmichael.com/2010/12/28/noobs-guide-to-hacking-nginx/~~
-
Conditioned Safe Ceremonies: exploiting human traits to improve security
~~http://papersincomputerscience.org/2010/06/13/conditioned-safe-ceremonies-and-a-user-study-of-an-application-to-web-authentication/~~
-
Detailed explanation of a recent privilege escalation bug in Linux
http://timetobleed.com/detailed-explanation-of-a-recent-privilege-escalation-bug-in-linux-cve-2010-3301/
-
Dongle-less jailbreaking and self-signing on PS3 now possible
~~http://psgroove.com/content.php?581-Sony-s-PS3-Security-is-Epic-Fail~~
-
Emokit: Hacking the Emotiv EPOC Brain-Computer Interface
http://github.com/daeken/Emokit/blob/master/Announcement.md ⭐⭐
-
Escher Circuits: Hacking visual perception
http://www.scientificblogging.com/mark_changizi/eye_computer_turning_vision_programmable_computer
-
Exploiting hard filtered SQL Injections
http://websec.wordpress.com/2010/03/19/exploiting-hard-filtered-sql-injections/
-
Exploiting security holes in Flash Player for Android to jailbreak
http://daringfireball.net/linked/2010/07/06/flash-player-security
-
Exploring Cookie SQL Injection by practical example with Python - Django
http://rafaelcaricio.blogspot.com/2010/11/cookie-sql-injection-explorando-falha.html
-
FreeBSD kernel stack overflow exploit development
http://argp.gr/blog/2009/07/04/cve-2008-3531-exploit/
-
From the guy who makes SMBC to the guy who keeps hacking SMBC
http://www.reddit.com/r/programming/comments/e08d5/from_the_guy_who_makes_smbc_to_the_guy_who_keeps/
-
Good & almost balanced writeup comparing between Ruby & Python
http://groups.google.com/group/comp.lang.python/msg/28422d707512283?pli=1
-
Hacking an ATM: How to Make an ATM Spew out Money
~~http://www.technologyreview.com/video/?vid=628~~
-
Hacking Google Calendar
http://nealpoole.com/blog/2010/11/google-vulnerability-reward-program-google-calendar-csrf/
-
Hacking Ikea products to make them personal
http://www.thisismykea.com/
-
Hacking status (linked from an interesting HN discussion)
http://greenlightwiki.com/improv/Status
-
Hacking the Amazon Kindle DX, Part 1: Bluetooth Shell
http://www.griffin.net/2010/01/hacking-the-amazon-kindle-dx-part-1.html
-
Hacking the D.C. Internet Voting Pilot
http://www.freedom-to-tinker.com/blog/jhalderm/hacking-dc-internet-voting-pilot
-
Hacking the Kinect - How to hack USB device drivers
http://ladyada.net/learn/diykinect/
-
Hacking The NY Times Best Seller List
~~http://www.manyniches.com/fun-stuff/hacking-the-ny-times-best-seller-list/~~
-
Hacking your OSX Address Book with C, Racket and LaTeX
http://matt.might.net/articles/address-book-hacking/
-
Hacking Your Week: The 28 Hour Day
~~http://www.limedaring.com/hacking-your-week-the-28-hour-day/~~
-
How I "hacked" Dustin Curtis's Posterous.

-
How I Found Clarity In My Business
~~http://ittybiz.com/clarity-business/~~
-
How Startl Is Hacking Education From the Outside In
http://www.fastcompany.com/article/startl-hacking-education
-
IE 0day in the wild
http://blogs.technet.com/b/srd/archive/2010/11/03/dep-emet-protect-against-attacks-on-the-latest-internet-explorer-vulnerability.aspx
-
IE was reportedly the attack vector for China's hacking into Google
http://siblog.mcafee.com/cto/operation-%E2%80%9Caurora%E2%80%9D-hit-google-others/?utm_source=twitterfeed&utm_medium=twitter
-
If you were hacking since age 8, it means you were privileged
http://geekfeminism.org/2010/07/27/if-you-were-hacking-since-age-8-it-means-you-were-privileged/
-
Innovative way to combat SQL injection
https://homebank.sactocu.org/UA2004/faq-mfa.htm#pp6
-
Mass SQL Injection Attack Hits Sites Running IIS
http://blog.sucuri.net/2010/06/mass-infection-of-iisasp-sites-2677-inyahoo-js.html ⭐⭐
-
MongoDB Replication and Replica Sets (write-up of talk by Dwight Merriman)
http://effectif.com/mongodb/replication-and-replica-sets
-
New Windows 0-day vulnerability emerges, bypasses UAC
http://www.winrumors.com/new-windows-0-day-vulnerability-emerges-bypasses-uac/
-
Pen-and-Paper SQL Injection Attack Against Swedish Election
http://www.schneier.com/blog/archives/2010/10/pen-and-paper_s.html
-
Popular p2p website - victim of SQL injection
http://www.dailytech.com/Pirate+Bay+Hacked+4+Million+User+Records+Looted+Site+Is+Down/article18978.htm
-
Reddit hacking for votes and profit
http://hackaday.com/2010/10/08/reddit-hacking-for-votes-and-profit/
-
Rockmelt pwned by meebo already?
http://joshr.posterous.com/rockmelt
-
Some notes on CVE-2010-3081 exploitability
http://blog.nelhage.com/2010/11/exploiting-cve-2010-3081/
-
SQL Injection License Plate - Greatest hack I've seen in years
http://gizmodo.com/5498412/sql-injection-license-plate-hopes-to-foil-euro-traffic-cameras
-
SQL Injection Myths & Fallacies: Best practices of defense
~~http://ontwik.com/php/sql-injection-myths-fallacies-best-practices-of-defense/~~
-
SQL injection with raw MD5 hashes
http://cvk.posterous.com/sql-injection-with-raw-md5-hashes
-
Sugru: a silicone molding compound for hacking around the house
http://sugru.com/
-
Voting System Pwned by Michigan Wolverines
~~http://www.wired.com/threatlevel/2010/10/dc-voting-system-hacked/~~
-
Why buffer overflow exploitation took so long to mature
http://rdist.root.org/2010/05/03/why-buffer-overflow-exploitation-took-so-long-to-mature/
-
Why buffer overflow exploitation took so long to mature (part 2)
http://rdist.root.org/2010/05/05/why-buffer-overflow-exploitation-took-so-long-to-mature-part-2/
-
WikiLeaked Cables Confirm China’s Politburo Was Behind Google Hacking Incident
http://techcrunch.com/2010/11/28/wikileaked-cables-china-google/
-
WordPress 3.0.3 -- Security Release for Privilege Escalation
http://wordpress.org/news/2010/12/wordpress-3-0-3/
-
“for the lolz”: 4chan is hacking the attention economy
http://www.zephoria.org/thoughts/archives/2010/06/12/for-the-lolz-4chan-is-hacking-the-attention-economy.html
-

### 2009 — 46 writeups

32mil passwords compromised, SQL injection attack on RockYou
http://www.guardian.co.uk/technology/blog/2009/dec/15/rockyou-hacked-passwords
-
A guide to preventing SQL injection
http://bobby-tables.com/
-
Adobe Confirms 0-Day Vulnerability
http://www.v3.co.uk/v3/news/2246645/adobe-confirms-zero-day
-
Business schools redefine hacking to “stuff that a 7-year-old could do” (2005)
http://blogs.law.harvard.edu/philg/2005/03/08/
-
CloudKick.com account takeover.
http://www.evilpacket.net/2009/sep/16/cloudkick-account-takeover/
-
Erlang Factory 2009 (Erlang Con) writeup
http://www.sauria.com/blog/2009/05/04/erlang-factory-2009/
-
Exclusive Interview: Hacking The iPhone Through SMS
http://www.tomshardware.com/reviews/hacking-iphone-security,2384.html
-
Exploit Development Framework Design
http://www.gnucitizen.org/blog/exploit-development-framework-design/
-
Exploiting the unexploitable, Linux 2.6.30+/SELinux/RHEL5 test kernel 0day
~~http://lists.grok.org.uk/pipermail/full-disclosure/2009-July/069714.html~~
-
From 0 to 0day on Symbian [pdf]
~~https://www.sec-consult.com/files/SEC_Consult_Vulnerability_Lab_Pwning_Symbian_V1.03_PUBLIC.pdf~~
-
Hacking a Google Interview - MIT's guide to Google interviews
http://courses.csail.mit.edu/iap/interview/materials.php ⭐⭐⭐
-
Hacking a Programmable Road Sign
http://www.i-hacked.com/content/view/274/48/
-
Hacking for fun and profit with Mathematica and the Google Analytics API
http://collison.ie/blog/2009/04/hacking-for-fun-and-profit-with-mathematica-and-the-google-analytics-api
-
Hacking goes squishy
http://www.economist.com/printedition/displaystory.cfm?story_id=14299634
-
Hacking Homelessness
~~http://www.well.com/user/xanthian/public/homeless/jail.txt~~
-
Hacking keystroke logger into Apple Keyboard Firmware
http://www.digitalsociety.org/apple-keyboards-hacked-and-possessed/
-
Hacking Perl in Nightclubs
http://www.perl.com/pub/a/2004/08/31/livecode.html
-
Hacking Stephen Fry's Twitter Account
http://eng.xakep.ru/link/50643/
-
Hacking the .SVN directory
http://www.adamgotterer.com/2009/01/26/hacking-the-svn-directory/
-
Hacking the DefCon 17 Badges
~~http://www.wired.com/threatlevel/2009/08/hacking-the-defcon-17-badges/~~
-
Hacking the Hiring Process
~~http://blog.twilio.com/2009/09/hacking-the-hiring-process-part-1.html~~
-
Hacking the IRS with gold coins
http://www.lvrj.com/news/46074037.html#blogcomments?submitted=y
-
How I got started: Papa John's founder John Schnatter - Sep. 23, 2009
http://money.cnn.com/2009/09/22/news/companies/papa_johns_pizza_schnatter.fortune/index.htm?postversion=2009092310
-
How I Spent My Summer: Hacking Into iPhones With Friends (or: 3GS jailbreak)
http://online.wsj.com/article/SB124692204445002607.html
-
Interview with Brad Sprengler, author of the latest Linux 0day exploit
http://www.linuxfr.org/comments/1052695.html#1052695
-
Is Jailbreaking a Real Security Threat?
~~http://zdziarski.com/papers/jailbreaksecurity.html~~
-
John Carmack on hacking Doom and Quake (.plan file from 1998)
http://www.team5150.com/~andrew/carmack/johnc_plan_1998.html#d19980204
-
Linux Magazine writeup on RethinkDB
http://www.linux-mag.com/cache/7488/1.html
-
Local Privilege Escalation On All Linux Kernels
http://linux.slashdot.org/story/09/08/13/2022212/Local-Privilege-Escalation-On-All-Linux-Kernels?from=rss
-
Mark Cramer on Getting 1.3M Add-on Downloads, Mossberg Write-up, etc.
http://www.gabrielweinberg.com/blog/2009/11/mark-cramer-of-surf-canyon-on-getting-traction-part-i.html
-
My first attempt at hacking on Linux: a story
http://jmtd.net/log/dm9601/
-
My writeup on why I think hotpotato is big for live TV
http://www.jonsteinberg.com/2009/12/hotpotato-life-or-tv-uh-finds-a-way/
-
PHP Interpreter Detects SQL Injection and XSS Vulnerabilities
http://www.rkrishardy.com/2009/06/new-php-interpreter-based-xss-and-sql-security-tester/
-
Polish teen derails tram after hacking train network (2008)
http://www.theregister.co.uk/2008/01/11/tram_hack
-
RockYou loses 32 million user login credentials to hackers through SQL injection
http://www.theregister.co.uk/2009/12/17/rockyou_security_snafu/
-
RWW Writeup of Duck Duck Go
http://www.readwriteweb.com/archives/duck_duck_go_silly_name_interesting_search_engine.php
-
SQL injection attack company name 'Navn'
http://w2.brreg.no/enhet/sok/detalj.jsp?orgnr=979829299
-
SSH server 0-day exploit
http://isc.sans.org/diary.html?storyid=6742
-
The Bobby Tables guide to SQL injection
http://blogs.techrepublic.com.com/security/?p=2368
-
Time Magazine Throws Up Its Hands As It Gets Pwned By 4Chan
http://www.techcrunch.com/2009/04/27/time-magazine-throws-up-its-hands-as-it-gets-pwned-by-4chan/
-
Travel Hacking for Noobs
http://manvsdebt.com/travel-hacking-for-noobs/
-
Twitter XSS vulnerability - had fake tweet posted from my account

-
US Man Stole 130m Card Numbers Using SQL Injection Attack
http://news.bbc.co.uk/2/hi/business/8206305.stm
-
Using Resource Obfuscation to Reduce Risk of Mass SQL Injection
~~http://devcentral.f5.com/weblogs/macvittie/archive/2009/03/05/using-resource-obfuscation-to-reduce-risk-of-mass-sql-injection.aspx~~
-
Website-infecting SQL injection attacks hit 450,000 a day
http://www.usatoday.com/tech/news/2009-03-16-sql-attacks-cyber-security_N.htm
-
Writing Windows Buffer Overflow Exploits- A step by step tutorial
http://www.techmantras.com/content/writing-windows-buffer-overflows-exploit-step-step-tutorial
-

### 2008 — 25 writeups

Christmas hacking project: Wikipedia on the iPhone
http://collison.ie/wikipedia-iphone/
-
Embought write-up on How to Split an Atom
http://howtosplitanatom.com/news/lessons-from-entrepreneur-brandon-pollet/
-
Free SQL Injection Vulnerability Scanner By HP
~~http://www.webresourcesdepot.com/free-sql-injection-vulnerability-scanner-by-hp/~~
-
Hack your Own Web Project ? SQL Injection
~~http://9lessons.blogspot.com/2008/12/sql-injection.html~~
-
Hacking Amazon images
http://aaugh.com/imageabuse.html
-
Hacking Education
http://www.avc.com/a_vc/2008/11/hacking-educati.html
-
Hacking the Amazon S3 SLA
http://www.daemonology.net/blog/2008-10-23-hacking-the-amazon-s3-sla.html
-
Hacking the Nobel Prize Medals

-
Hacking your food supply
http://iamelgringo.blogspot.com/2008/12/hacking-your-food-supply-perennial.html
-
Half A Million Microsoft-Powered Sites Hit With SQL Injection
~~http://blog.wired.com/monkeybites/2008/04/microsoft-datab.html~~
-
How I found out about  Ycombinator and PG
http://www.nytimes.com/2006/02/21/business/businessspecial2/21startup.html?th&emc=th
-
How I hacked Digg
http://www.phoboslab.org/log/2008/06/how-i-hacked-digg
-
How One Site Dealt With SQL Injection Attack
http://fergdawg.blogspot.com/2008/05/how-one-site-dealt-with-sql-injection.html
-
How to deal with incompetence, I mean SQL injection
~~http://www.networkworld.com/news/2008/050108-autoweb.html~~
-
How we found the missing memristor
http://www.spectrum.ieee.org/dec08/7024
-
Howto: Make Money While Hacking On Open Source Projects
http://www.damnsmalllinux.org/income-guide/
-
HP Scrawlr: Harmlessly inject yourself to find your sql injection vulnerabilities
http://www.communities.hp.com/securitysoftware/blogs/spilabs/archive/2008/06/23/finding-sql-injection-with-scrawlr.aspx
-
Protecting your MySQL database from SQL injection
~~http://www.linux.com/feature/145341~~
-
Remote Code Execution Through Intel CPU Bugs
http://conference.hitb.org/hitbsecconf2008kl/?page_id=214
-
SQL Injection Attacks by Example
http://www.unixwiz.net/techtips/sql-injection.html
-
SQL Injection Hack using CAST from 1.verynx.cn
http://www.rtraction.com/blog/devit/sql-injection-hack-using-cast.html
-
SQL Injection Part II (Make Sure You Are Sitting Down)
~~http://www.coldfusionmuse.com/index.cfm/2008/7/18/Injection-Using-CAST-And-ASCII~~
-
SQL injection used to turn Businessweek.com into virus hive
http://www.net-security.org/malware_news.php?id=990
-
Thinking About Jailbreaking My iPhone 3G...

-
Warning about the article "SQL Injection" in current "PHP Magazin"
~~http://www.christopher-kunz.de/archives/195-Warning-about-the-article-SQL-Injection-in-current-PHP-Magazin.html~~
-

### 2007 — 5 writeups

A type-based solution to the "strings problem": a fitting end to XSS and SQL-injection holes?
~~http://blog.moertel.com/articles/2006/10/18/a-type-based-solution-to-the-strings-problem~~
-
Facebook Rival ConnectU.com's SQL injection vulnerability: a story of pathetic hubris
http://socialscienceplusplus.blogspot.com/2007/08/connectucom-sql-injection-vulnerability.html
-
How I founded my own company at 26
http://newskicks.com/content/how-i-founded-my-own-company-26.html
-
iPhone Free Software Unlock Achieved, Hacker Claims (exploiting buffer overflow)
~~http://gizmodo.com/gadgets/breaking/independent-iphone-free-software-unlock-achieved-298825.php~~
-
Writeup of interesting VC panel at Fortune iMeme conference
http://blogs.barrons.com/techtraderdaily/2007/07/13/fortune-imeme-vcs-talk-about-the-new-tech-economy/
-

### Awesome writeup collections (GitHub) — mine these for endless more

Big curated indexes of exploit / CVE / bug-bounty writeups. Each one links out to hundreds of writeups. Stars = same scale as above (⭐⭐⭐ = friendly start, ⭐ = deep research).

- Master index of every "awesome hacking" list — https://github.com/Hack-with-Github/Awesome-Hacking ⭐⭐⭐
- Bug bounty writeups grouped by bug TYPE (XSS, SSRF, IDOR...) — https://github.com/devanshbatham/Awesome-Bugbounty-Writeups ⭐⭐⭐
- Bug bounty writeups grouped by bug nature (the original) — https://github.com/ngalongc/bug-bounty-reference ⭐⭐⭐
- Bug bounty notes + checklists + writeups — https://github.com/HolyBugx/HolyTips ⭐⭐⭐
- Curated web security materials + writeups (huge) — https://github.com/qazbnm456/awesome-web-security ⭐⭐
- Web application security list — https://github.com/infoslack/awesome-web-hacking ⭐⭐
- Exploit development learning path (books, tutorials, tools) — https://github.com/FabioBaroni/awesome-exploit-development ⭐⭐
- Google VRP program writeups — https://github.com/xdavidhu/awesome-google-vrp-writeups ⭐⭐
- Fuzzing + root-cause analysis (feeds exploit dev) — https://github.com/secfigo/Awesome-Fuzzing ⭐⭐
- Assorted writeups & POCs — https://github.com/dhaval17/awsome-security-write-ups-and-POCs ⭐⭐
- Real-world browser / kernel / hypervisor CVE exploit writeups — https://github.com/sajjadium/ctf-writeups ⭐
- Linux kernel pwn + writeups — https://github.com/smallkirby/kernelpwn ⭐
- PS4 / console exploit writeups — https://github.com/Cryptogenic/Exploit-Writeups ⭐
- Immunefi smart-contract bug bounty writeups — https://github.com/sayan011/Immunefi-bug-bounty-writeups-list ⭐

### References (source of the GitHub links above)

- https://github.com/Hack-with-Github/Awesome-Hacking
- https://github.com/devanshbatham/Awesome-Bugbounty-Writeups
- https://github.com/ngalongc/bug-bounty-reference
