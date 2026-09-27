---
created: 2026-09-16
tags: [rust, security]
---

## HN: Rust attack surface — bugs and problems security researchers found in Rust and Rust apps

- Source: HN Algolia API. Full history. Title search, typo tolerance off, hand-curated.
- In scope: CVEs and vulns in Rust lang/stdlib/compiler/crates, unsoundness holes, UB research, segfaults in safe Rust, crates.io supply-chain attacks, security audits of Rust apps (sudo-rs, coreutils, actix, hyper, TARmageddon), critiques of Rust security claims, unsafe-Rust studies.
- Out of scope (cut by hand): Rust advocacy, tools merely written in Rust, offensive tools in Rust, malware written in Rust, Rust the video game.
- Related: [[hn list - Corrupting Memory]], [[hn list - re]].
- ⭐ = 200+ pts. ⭐⭐ = 500+ pts. ⭐⭐⭐ = 1000+ pts.

### ⭐⭐ Very important (500–999 pts) — 2 articles

Bugs Rust won't catch ⭐⭐ (680 pts, 2026)
https://corrode.dev/blog/bugs-rust-wont-catch/
-
Malicious Rust crate Arrayref runs a build-time payload ⭐⭐ (554 pts, 2026)
https://safedep.io/arrayref-proc-macro1-rust-build-time-malware/
-

### ⭐ Important (200–499 pts) — 6 articles

Bugs You'll Probably Only Have in Rust ⭐ (367 pts, 2017)
https://gankro.github.io/blah/only-in-rust/
-
Backdooring Rust crates for fun and profit ⭐ (362 pts, 2021)
https://kerkour.com/rust-crate-backdoor/
-
Cve-rs: Fast memory vulnerabilities, written in safe Rust ⭐ (317 pts, 2024)
https://github.com/Speykious/cve-rs
-
Date bug in Rust-based coreutils affects Ubuntu 25.10 automatic updates ⭐ (272 pts, 2025)
https://lwn.net/Articles/1043103/
-
Google open-sources Rust crate audits ⭐ (256 pts, 2023)
https://opensource.googleblog.com/2023/05/open-sourcing-our-rust-crate-audits.html
-
Attacking Firecracker: AWS' MicroVM Monitor Written in Rust ⭐ (212 pts, 2022)
https://www.graplsecurity.com/post/attacking-firecracker
-

### 100–199 pts — 17 articles

The Rustonomicon: The Dark Arts of Advanced and Unsafe Rust Programming (191 pts, 2016)
https://doc.rust-lang.org/nomicon/README.html
-
A Rust FFI adventure in unsafety (190 pts, 2018)
https://travisf.net/capstone-rs-unsafety-adventure
-
Rust concurrency: the archetype of a message-passing bug (187 pts, 2020)
https://medium.com/@polyglot_factotum/rust-concurrency-the-archetype-of-a-message-passing-bug-817b60efd8f8
-
Rust's unsafe pointer types need an overhaul (185 pts, 2022)
https://gankra.github.io/blah/fix-rust-pointers/
-
Making Rust supply chain attacks harder with Cackle (181 pts, 2023)
https://davidlattimore.github.io/making-supply-chain-attacks-harder.html
-
The Dark Arts of Advanced and Unsafe Rust Programming (181 pts, 2018)
https://doc.rust-lang.org/nomicon/
-
Undefined vs. Unsafe in Rust (160 pts, 2017)
https://manishearth.github.io/blog/2017/12/24/undefined-vs-unsafe-in-rust/
-
Auditing Rust Crypto: The First Hours (149 pts, 2019)
https://research.kudelskisecurity.com/2019/02/07/auditing-rust-crypto-the-first-hours/
-
How memory safety CVEs differ between Rust and C/C++ (141 pts, 2026)
https://kobzol.github.io/rust/2026/06/15/how-memory-safety-cves-differ-between-rust-and-c-cpp.html
-
The Story of a Rust Bug (140 pts, 2017)
https://thesquareplanet.com/blog/the-story-of-a-rust-bug/
-
Linux Kernel Rust Code Sees Its First CVE Vulnerability (129 pts, 2025)
https://www.phoronix.com/news/First-Linux-Rust-CVE
-
The Rustonomicon: The Dark Arts of Advanced and Unsafe Rust (125 pts, 2015)
https://doc.rust-lang.org/nightly/nomicon/
-
Supply chain nightmare: How Rust will be attacked and what we can do to mitigate (123 pts, 2026)
https://kerkour.com/rust-supply-chain-nightmare
-
Unsafe Rust is harder than C (120 pts, 2024)
https://chadaustin.me/2024/10/intrusive-linked-list-in-rust/
-
Unsafe Zig Is Safer Than Unsafe Rust (112 pts, 2018)
http://andrewkelley.me/post/unsafe-zig-safer-than-unsafe-rust.html
-
Reference cycle bug in Rust's scoped threads (106 pts, 2015)
https://github.com/rust-lang/rust/issues/24292
-
Uninitialized memory: Unsafe Rust is too hard (106 pts, 2022)
https://lucumr.pocoo.org/2022/1/30/unsafe-rust/
-

### 50–99 pts — 15 articles

Rust Malware Staged on Crates.io (93 pts, 2023)
https://blog.phylum.io/rust-malware-staged-on-crates-io/
-
Sudo-rs dependencies: when less is better (93 pts, 2024)
https://tweedegolf.nl/en/blog/119/sudo-rs-depencencies-when-less-is-better
-
Safety and Soundness in Rust (90 pts, 2023)
https://jacko.io/safety_and_soundness.html
-
Rust Bug Minimization Patterns (90 pts, 2019)
http://blog.pnkfx.org/blog/2019/11/18/rust-bug-minimization-patterns/
-
Rust crate rg typosquatting/redirect to ripgrep (87 pts, 2023)
https://github.com/BurntSushi/rg-cratesio-typosquat
-
Unsafe Rust: An Intro and Open Questions (86 pts, 2015)
http://cglab.ca/~abeinges/blah/rust-unsafe-intro/
-
Security vulnerability in Rust standard library (77 pts, 2022)
https://blog.rust-lang.org/2022/01/20/cve-2022-21658.html
-
Miri: Practical Undefined Behavior Detection for Rust [pdf] (77 pts, 2025)
https://research.ralfj.de/papers/2026-popl-miri.pdf
-
The rabbit hole of unsafe Rust bugs (66 pts, 2023)
https://notgull.net/cautionary-unsafe-tale/
-
Rust's Freedom Flaws (66 pts, 2019)
https://wiki.hyperbola.info/doku.php?id=en:main:rusts_freedom_flaws
-
Graydon Hoare Talks About Security, History, and Rust (65 pts, 2019)
https://thenewstack.io/rust-creator-graydon-hoare-talks-about-security-history-and-rust/
-
The 'Tootsie Pop' Model for Unsafe Rust Code (65 pts, 2016)
http://smallcultfollowing.com/babysteps/blog/2016/05/27/the-tootsie-pop-model-for-unsafe-code/
-
Bun's unreleased Rust port has 13,365 unsafe blocks (64 pts, 2026)
https://bun.com/bun-unsafe-audit
-
Sudo-rs' first security audit (62 pts, 2023)
https://ferrous-systems.com/blog/sudo-rs-audit/
-
Unsafe at Any Speed: Tradeoffs and Values in the Rust Ecosystem (59 pts, 2024)
https://bitbashing.io/rust-http.html
-

### 20–49 pts — 11 articles

Rust 1.98 got a P-critical miscompilation (49 pts, 2026)
https://github.com/rust-lang/rust/issues/161441
-
Multiple Security Issues in Rust-sudo-rs (45 pts, 2025)
https://bugs.launchpad.net/ubuntu/+source/rust-sudo-rs/+bug/2130623
-
Making unsafe Rust a little safer (38 pts, 2024)
https://blog.colinbreck.com/making-unsafe-rust-a-little-safer-tools-for-verifying-unsafe-code/
-
Security vulnerability found in Rust Linux kernel code (37 pts, 2025)
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=3e0ae02ba831da2b707905f4e602e43f8507b8cc
-
Rust's crates.io malicious typosquatting crate "rustdecimal" security advisory (35 pts, 2022)
https://blog.rust-lang.org/2022/05/10/malicious-crate-rustdecimal.html
-
Critical Rust flaw enables Windows command injection attacks (32 pts, 2024)
https://www.bleepingcomputer.com/news/security/critical-rust-flaw-enables-windows-command-injection-attacks/
-
Iddqd, or the hardest kind of unsafe Rust (30 pts, 2026)
https://oxide.computer/blog/iddqd-unsafe
-
CrateDepression: Rust Supply-Chain Attack Uses Go Malware (27 pts, 2022)
https://www.sentinelone.com/labs/cratedepression-rust-supply-chain-attack-infects-cloud-ci-pipelines-with-go-malware/
-
Rudra: Finding Memory Safety Bugs in Rust at the Ecosystem Scale (25 pts, 2022)
https://www.micahlerner.com/2021/10/31/rudra-finding-memory-safety-bugs-in-rust-at-the-ecosystem-scale.html
-
An unsafety bug in rust's stdlib (24 pts, 2018)
https://lobste.rs/s/i0jf4b/unsafety_bug_rust_s_stdlib
-
Security issues discovered in sudo-rs (24 pts, 2025)
https://lists.debian.org/debian-security-announce/2025/msg00218.html
-

### 10–19 pts — 12 articles

Rust programming language exploit mitigations (17 pts, 2020)
https://rcvalle.blog/2020/09/16/rust-lang-exploit-mitigations/
-
Rust programming language: Crates package API tokens revoked over security flaw (17 pts, 2020)
https://www.zdnet.com/article/rust-programming-language-crates-package-api-tokens-revoked-over-serious-security-flaw/
-
crates.io: Malicious crates faster_log and async_println (17 pts, 2025)
https://blog.rust-lang.org/2025/09/24/crates.io-malicious-crates-fasterlog-and-asyncprintln/
-
Implementing FMA and finding bugs in C and Rust standard libraries (15 pts, 2026)
https://shnatsel.github.io/implementing-fma-finding-bugs-in-std/
-
Rust Won't Save Us: An Analysis of 2023's Known Exploited Vulnerabilities (13 pts, 2024)
https://www.horizon3.ai/analysis-of-2023s-known-exploited-vulnerabilities/
-
Diagnosing a Double-Free Concurrency Bug in Rust's Unbounded Channels (13 pts, 2025)
https://materialize.com/blog/rust-concurrency-bug-unbounded-channels/
-
Malicious Rust packages on Crates.io steal crypto wallet keys (12 pts, 2025)
https://www.bleepingcomputer.com/news/security/malicious-rust-packages-on-cratesio-steal-crypto-wallet-keys/
-
Does unsafe undermine Rust's guarantees? (12 pts, 2025)
https://steveklabnik.com/writing/does-unsafe-undermine-rusts-guarantees/
-
Corroded: Rust that's so unsafe it should be illegal (11 pts, 2025)
https://github.com/buyukakyuz/corroded
-
Conduit (Rust Matrix Server) v0.10.11 another critical vulnerability (10 pts, 2025)
https://conduit.rs/changelog/#v0-10-11-2025-12-30
-
Sudo-Rs Affected by Multiple Security Vulnerabilities (10 pts, 2025)
https://www.phoronix.com/news/sudo-rs-security-ubuntu-25.10
-
Unsafe Abstractions in Rust (10 pts, 2016)
http://smallcultfollowing.com/babysteps/blog/2016/05/23/unsafe-abstractions/
-

### 3–9 pts — 79 articles

Popular Rust Crates Compromised in Build-Time Supply Chain Attack (9 pts, 2026)
https://socket.dev/blog/popular-rust-crates-compromised
-
Ubuntu Rust Coreutils Audit Revealed 113 Issues (9 pts, 2026)
https://www.phoronix.com/news/Ubuntu-Rust-Coreutils-Audit
-
Rust Is Memory Safe, but Logic Bugs Still Occur - SPARK Ada Can Help (8 pts, 2025)
https://news.ycombinator.com/item?id=45935831
-
Use of unsafe Rust in actix-web (8 pts, 2018)
https://github.com/actix/actix-web/issues/289
-
The Complete Rust Security Handbook (8 pts, 2025)
https://github.com/yevh/rust-security-handbook
-
Rust has a supply chain security problem (8 pts, 2024)
https://kerkour.com/rust-supply-chain-security-standard-library
-
Sudo-rs enables password feedback by default (8 pts, 2026)
https://www.phoronix.com/news/sudo-rs-password-feedback
-
Ask HN: Can CloudBleed Like Bugs Happen in Go, Rust or Java? (7 pts, 2017)
https://news.ycombinator.com/item?id=13726142
-
Why Rust and Its Memory Safety Lulls Developers into a False Sense of Security (7 pts, 2024)
https://www.darrenhorrocks.co.uk/why-rust-its-memory-safety-lulls-developers-into-false-sense-security/
-
Leaked results of Mythos' audit of the Rust stdlib (7 pts, 2026)
https://github.com/Swival/security-audits/tree/main/rust-stdlib
-
Booting into Rust and deadlocking right away – a gnarly bug in my hobby kernel (6 pts, 2024)
https://jannestimm.com/posts/first-gnarly-kernel-bug/
-
Rust-fuzz/trophy-case:  Collection of bugs uncovered by fuzzing Rust code (6 pts, 2018)
https://github.com/rust-fuzz/trophy-case
-
Security issues found within rust-coreutils (6 pts, 2026)
https://discourse.ubuntu.com/t/an-update-on-rust-coreutils/80773
-
Rust Security Problems / Acceptance (6 pts, 2024)
https://github.com/bf/rust-security-problems
-
Security adivsory for the Rust standard library, 2018-09-21 (6 pts, 2018)
https://groups.google.com/forum/#!topic/rustlang-security-announcements/CmSuTm-SaU0
-
Comparing Rust supply chain safety tools (6 pts, 2022)
https://blog.logrocket.com/comparing-rust-supply-chain-safety-tools/
-
Rust vulnerability enables attackers to delete files and directories (5 pts, 2022)
https://developer-tech.com/news/2022/jan/24/rust-vulnerability-enables-attackers-delete-files-and-directories/
-
Using the Kani Rust Verifier on a Rust Standard Library CVE (5 pts, 2022)
https://model-checking.github.io//kani-verifier-blog/2022/06/01/using-the-kani-rust-verifier-on-a-rust-standard-library-cve.html
-
Rust-Coreutils Security Audit Report by Zellic [pdf] (5 pts, 2026)
https://github.com/Zellic/publications/blob/master/uutils%20coreutils%20-%20Zellic%20Audit%20Report.pdf
-
Rust and the Future of Memory Corruption (5 pts, 2013)
http://www.mimisbrunnr.net/~munin/blog/rust-and-the-future-of-memory-corruption.html
-
MirChecker: Detecting Bugs in Rust Programs via Static Analysis (5 pts, 2021)
https://mssun.me/research/ccs21mirchecker.html
-
Improving Supply Chain Security for Rust Through Artifact Signing (5 pts, 2023)
https://foundation.rust-lang.org/news/2023-12-21-improving-supply-chain-security/
-
Audit of the Rust P256 Crate (5 pts, 2025)
https://reports.zksecurity.xyz/reports/near-p256/
-
Audit of Vodozemac, a native Rust reference implementation of Matrix E2EE (5 pts, 2022)
https://matrix.org/blog/2022/05/16/independent-public-audit-of-vodozemac-a-native-rust-reference-implementation-of-matrix-end-to-end-encryption/
-
Ubuntu's Rust Transition Hits Another Bump as Sudo-Rs Security Vulnerabilities (4 pts, 2025)
https://itsfoss.com/news/sudo-rs-issue-ubuntu/
-
Totally Safe: Memory Vulnerabilities in Safe Rust (4 pts, 2025)
https://github.com/viktorlott/totally-safe
-
Rust: Security advisory for the standard library (CVE-2024-24576) (4 pts, 2024)
https://blog.rust-lang.org/2024/04/09/cve-2024-24576.html
-
Everything about Rust SGX CVE-2020-5499 (4 pts, 2020)
https://github.com/apache/incubator-teaclave-sgx-sdk/wiki/Everything-about-CVE---2020---5499
-
Rust's Type Checker Implementation Is Unsound: An Empirical Study (4 pts, 2026)
https://arxiv.org/abs/2608.28713
-
Souundness bugs in Rust libraries: can't live with 'em, can't live without 'em (4 pts, 2019)
https://docs.rs/dtolnay/0.0.7/dtolnay/macro._03__soundness_bugs.html
-
A Type Safety Hole in Unsafe Rust (4 pts, 2017)
http://www.enyo.de/fw/notes/unsafe-rust-type-safety.html
-
Cryptographers engage in war of words over RustSec bug reports subsequent ban (4 pts, 2026)
https://www.theregister.com/2026/03/20/cryptographer_nadim_kobeissi_rustsec_ban/
-
A Study of Undefined Behavior Across Foreign Function Boundaries in Rust Libs (4 pts, 2025)
https://arxiv.org/abs/2404.11671
-
Rudra, Rust Memory Safety and Undefined Behavior Detection (4 pts, 2021)
https://github.com/sslab-gatech/Rudra
-
Protecting Rust against supply chain attacks (4 pts, 2025)
https://kerkour.com/rust-supply-chain-attacks
-
Working Spectre V1 Attack for Rust (4 pts, 2023)
https://twitter.com/toddmaustin/status/1730623011903168724?s=46&t=BBEvy3cvqJ6LT35SuLG75w
-
Rudra: Finding Memory Safety Bugs in Rust at the Ecosystem Scale (2021) [pdf] (4 pts, 2023)
https://gts3.org/assets/papers/2021/bae:rudra.pdf
-
Hunting for Bugs in Rust (4 pts, 2018)
https://blog.troutwine.us/2018/10/08/hunting-for-bugs-in-rust/
-
Fixing Rust's supply chain security: The good, the bad and the ugly (4 pts, 2026)
https://kerkour.com/fixing-rust-supply-chain-security
-
Rust 1.72 seems to optimize away security checks (4 pts, 2023)
https://github.com/betrusted-io/xous-core/issues/416
-
Why Not Rust for Security? (4 pts, 2020)
https://www.cryptologie.net/article/505/why-not-rust-for-security/
-
Formal Methods for Rust Unsafe (4 pts, 2026)
https://antithesis.com/blog/2026/rust_formal_methods/
-
Friendly reminder: Writing unsafe Rust is hard (4 pts, 2021)
https://twitter.com/kodewerx/status/1419880629450121222
-
Crates.io Postmortem: User Uploaded Malware (4 pts, 2023)
https://blog.rust-lang.org/inside-rust/2023/09/01/crates-io-malware-postmortem.html
-
Hackers poison arrayref Rust crate to push infostealer malware (4 pts, 2026)
https://www.bleepingcomputer.com/news/security/hackers-poison-arrayref-rust-crate-to-push-infostealer-malware/
-
Announcing Rust 1.62.1 (Vulnerability Fixed) (3 pts, 2022)
https://blog.rust-lang.org/2022/07/19/Rust-1.62.1.html
-
Exploring How to Exploit Rust Code for Fun and Profit (3 pts, 2017)
https://avadacatavra.github.io/rust/gdb/exploit/2017/09/26/attackingrustforfunandprofit.html
-
Critical safety flaw found in Rust on Windows (CVE-2024-24576) (3 pts, 2024)
https://github.com/rust-lang/rust/security/advisories/GHSA-q455-m56c-85mh
-
How cve-rs breaks Rust [video] (3 pts, 2024)
https://www.youtube.com/watch?v=vfMpIsJwpjU
-
List of CVEs filed against Rust crates (3 pts, 2021)
https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=rust
-
Rust fixes bidirectional Unicode CVE (3 pts, 2021)
https://blog.rust-lang.org/2021/11/01/Rust-1.56.1.html
-
Memory-Safety Challenge Considered Solved? An In-Depth Study with All Rust CVEs (3 pts, 2021)
https://arxiv.org/abs/2003.03296
-
Arbitrary Code Execution in Core Rust – CVE-2018 (3 pts, 2018)
https://cve.mitre.org/cgi-bin/cvename.cgi?name=%20CVE-2018-1000657
-
Segfault on Rust 1.97.0 (3 pts, 2026)
https://github.com/rust-lang/rust/issues/159035
-
Safe Rust Code That Segfaults (3 pts, 2022)
https://www.kxxt.dev/blog/safe-rust-code-that-segfaults/
-
Debugging a segfault in my Rust program (3 pts, 2017)
https://jvns.ca/blog/2017/12/23/segfault-debugging/
-
Tracking Down FFI Segfaults in Rust (3 pts, 2016)
http://cholcombe973.github.io/2016/11/21/Tracking-Down-FFI-Segfaults-in-Rust.html
-
Crates.io: Malicious crates evm-units and uniswap-utils (3 pts, 2025)
https://blog.rust-lang.org/2025/12/03/crates.io-malicious-crates-evm-units-and-uniswap-utils/
-
USN-7867-1: sudo-rs vulnerabilities (3 pts, 2025)
https://ubuntu.com/security/notices/USN-7867-1
-
RustSec Integrity Breach Hides Dangerous Crypto Flaw (3 pts, 2026)
https://www.flyingpenguin.com/rustsec-integrity-breach-hides-dangerous-crypto-flaw/
-
The Most Memory Safe Buffer Overflow in Rust (3 pts, 2022)
https://gist.github.com/rexim/38c176fe4669ef83db69aca9909d7b7f
-
Undefined Behavior in Rust (3 pts, 2017)
https://www.ralfj.de/blog/2017/07/14/undefined-behavior.html
-
The Cost of Bun's Rust Rewrite: Counting the Bugs Left Behind (3 pts, 2026)
https://medium.com/@monikasinghal713/the-real-cost-of-buns-rust-rewrite-counting-the-bugs-left-behind-bdd16442e5bc
-
TypePulse: Detecting type confusion bugs in Rust programs (3 pts, 2025)
https://dl.acm.org/doi/10.5555/3766078.3766435
-
Definite Rust bugs found by the Miri UB detector (3 pts, 2025)
https://github.com/rust-lang/miri
-
SafeDrop: Detecting Memory Deallocation Bugs of Rust Programs (3 pts, 2021)
https://arxiv.org/abs/2103.15420
-
Two bugs in the borrow checker every Rust dev should know (3 pts, 2013)
http://blog.ezyang.com/2013/12/two-bugs-in-the-borrow-checker-every-rust-developer-should-know-about/
-
Linux to Disable RandStruct Security Feature by Default If Rust Support Present (3 pts, 2026)
https://www.phoronix.com/news/Linux-7.3-RandStruct-Rust
-
TARmageddon Compromises Rust Security: A Developer's Guide (3 pts, 2025)
https://thenewstack.io/how-tarmageddon-compromises-rust-security-a-developers-guide/
-
About Safety, Security and yes, C++ and Rust (3 pts, 2023)
https://yoric.github.io/post/safety-and-security/
-
Cargo vet, dependency auditing for Rust (3 pts, 2024)
https://mozilla.github.io/cargo-vet/
-
RustDesk gets removed from WinGet after ESET marks it as potentially unsafe (3 pts, 2026)
https://twitter.com/rustdesk/status/2036632270837297444
-
Unsafe Rust in the Wild: Notes on the Current State of Unsafe Rust (3 pts, 2024)
https://foundation.rust-lang.org/news/unsafe-rust-in-the-wild-notes-on-the-current-state-of-unsafe-rust/
-
Rust Foundation reports 20% of Rust crates use 'unsafe' keyword (3 pts, 2024)
https://developers.slashdot.org/story/24/05/25/2250236/rust-foundation-reports-20-of-rust-crates-use-unsafe-keyword
-
Rust for Morello: Always-On Memory Safety, Even in Unsafe Code (3 pts, 2023)
https://drops.dagstuhl.de/opus/volltexte/2023/18232/
-
Exploring In-Process Isolation to Maintain Memory Safety for Unsafe Rust (3 pts, 2023)
https://arxiv.org/abs/2306.08127
-
Sudo-rs echos * for every character typed breaking security measures (3 pts, 2026)
https://bugs.launchpad.net/ubuntu/+source/rust-sudo-rs/+bug/2142721
-
Sudo-rs enables pwfeedback by default for Resolute Raccoon (3 pts, 2026)
https://discourse.ubuntu.com/t/sudo-rs-enables-pwfeedback-by-default-for-resolute-raccoon/77712
-
Auditing popular Rust crates (3 pts, 2018)
https://www.reddit.com/r/rust/comments/8zpp5f/auditing_popular_crates_how_a_oneline_unsafe_has/
-

### 0–2 pts (no traction) — 66 articles

Microsoft Vulnerabilities Exposed, including the first disclosed bug in a Rust-b (2 pts, 2025)
https://blog.checkpoint.com/research/microsoft-vulnerabilities-exposed-by-check-point-research/
-
Rust Vulnerability Analysis and Maturity Challenges (2 pts, 2023)
https://insights.sei.cmu.edu/blog/rust-vulnerability-analysis-and-maturity-challenges/
-
Rust and Go – Critical IP address validation vulnerability (2 pts, 2021)
https://www.bleepingcomputer.com/news/security/go-rust-net-library-affected-by-critical-ip-address-validation-vulnerability/
-
CVE-2025-68260: rust_binder: fix race condition on death_list (2 pts, 2025)
https://lore.kernel.org/linux-cve-announce/2025121614-CVE-2025-68260-558d@gregkh/T/#u
-
CVE-2023-26964 GitHub Issue – DoS within Hyper, Rust HTTP library (2 pts, 2023)
https://github.com/hyperium/hyper/issues/2877
-
Rust CVEs – Should I worry? (2 pts, 2021)
https://users.rust-lang.org/t/rust-cves-should-i-worry/59904
-
Arbitary Lifetime Transmutation via Rust Unsoundness (2 pts, 2024)
https://i.hsfzxjy.site/rust-lifetime-transmute-unsoundness/
-
Scoped threads in Rust, and why its async counterpart would be unsound (2 pts, 2022)
https://wishawa.github.io/posts/thread-scoped-async/
-
Unsoundness in Rust Library Owning_ref (2 pts, 2022)
https://github.com/noamtashma/owning-ref-unsoundness
-
Miscompilation: Equal pointers comparing as unequal · Issue #107975 · rust-lang (2 pts, 2023)
https://github.com/rust-lang/rust/issues/107975
-
Rust RFC Proposes a Security Tab on Crates.io for RustSec Advisories (2 pts, 2025)
https://socket.dev/blog/rust-rfc-proposes-a-security-tab-on-crates-io-for-rustsec-advisories
-
RustSec, the Rust Security Advisory Database (2 pts, 2020)
https://rustsec.org/
-
Rust Security Advisory Database (2 pts, 2021)
https://rustsec.org/advisories/
-
Countermeasures v.s supply chain attacks, Where Rust can be UNSAFE in practice (2 pts, 2025)
https://kerkour.com/technical-countermeasures-against-supply-chain-attacks
-
Malicious Crate Mimicking 'Finch' Exfiltrates Credentials via a Hidden (2 pts, 2025)
https://socket.dev/blog/malicious-crate-mimicking-finch-exfiltrates-credentials
-
RustSec Advisory Database (2 pts, 2021)
https://github.com/RustSec/advisory-db
-
When undefined behavior causes a nonsensical error (in Rust) (2 pts, 2024)
https://glandium.org/blog/?p=4354
-
Rust Bug Broke Ubuntu 25.10 Automatic Update Checks (2 pts, 2025)
https://www.omgubuntu.co.uk/2025/10/ubuntu-25-10-rust-coreutils-date-bug
-
Rust patches sneaky ReDoS bug (2 pts, 2022)
https://portswigger.net/daily-swig/rust-patches-sneaky-redos-bug
-
I've tested Rust HTTP clients again, found over 50 bugs (2 pts, 2021)
https://www.reddit.com/r/rust/comments/oir1g1/ive_tested_rust_http_clients_again_found_over_50/
-
Hunting down a non-determinism-bug in our Rust WASM build (2 pts, 2020)
https://dev.to/gnunicorn/hunting-down-a-non-determinism-bug-in-our-rust-wasm-build-4fk1
-
Unwrap: A flaw in Rust's stdlib design? (2 pts, 2025)
https://dynstat.bearblog.dev/unwrap-rust-stdlib-flaw/
-
Researchers uncover remote code execution flaw in abandoned Rust code library (2 pts, 2025)
https://cyberscoop.com/async-tar-rust-open-source-vulnerability/
-
Hax: Verifying Security-Critical Rust Software Using Multiple Provers (2 pts, 2026)
https://eprint.iacr.org/2025/142
-
Formal Security & Verification of Cryptographic Protocol Implementations in Rust (2 pts, 2025)
https://eprint.iacr.org/2025/980
-
Memory-safe malware: Rust challenges security researchers (2 pts, 2025)
https://www.techzine.eu/blogs/security/132626/memory-safe-malware-rust-challenges-security-researchers/
-
Security Lessons from the Rust Crates.io Incident (2 pts, 2025)
https://effective-programmer.com/when-cookies-crumble-5-security-lessons-from-the-rust-crates-io-incident-e6759585294c?sk=7c70930d6900dbfc647251566aa738f7
-
Rust Software Security: A Current State Assessment (2 pts, 2023)
https://insights.sei.cmu.edu/blog/rust-software-security-a-current-state-assessment/
-
Mozilla/cargo-vet – supply-chain security for Rust (2 pts, 2022)
https://github.com/mozilla/cargo-vet
-
Rust for Morello ARM CHERI: always-on memory safety, even in unsafe code [pdf] (2 pts, 2026)
https://drops.dagstuhl.de/storage/00lipics/lipics-vol263-ecoop2023/LIPIcs.ECOOP.2023.39/LIPIcs.ECOOP.2023.39.pdf
-
Refactor: Reduce usage of unsafe across Bun Rust codebase ;) (2 pts, 2026)
https://github.com/oven-sh/bun/pull/30759
-
Find memory errors in unsafe Rust in production with GWP-ASan and the Scudo hard (2 pts, 2025)
https://blog.colinbreck.com/making-unsafe-rust-a-little-safer-find-memory-errors-in-production-with-gwp-asan/
-
AWS will pay devs to verify Rust stdlib because of 7500 unsafe functions (2 pts, 2024)
https://devclass.com/2024/11/21/aws-will-pay-devs-to-verify-rust-standard-library-because-of-7500-unsafe-functions-and-enormity-of-task/
-
Towards Sound `unsafe` Rust – Rust Formal Methods Interest Group [video] (2 pts, 2024)
https://www.youtube.com/watch?v=XppPnXzr39E
-
An Interview and Survey Study on How Rust Developers Use Unsafe Code (2 pts, 2024)
https://arxiv.org/abs/2404.02230
-
Learn Unsafe Rust from My Mistakes (2 pts, 2023)
https://geo-ant.github.io/blog/2023/unsafe-rust-exploration/
-
On the Dual Nature of Necessity in Use of Rust Unsafe Code (2 pts, 2023)
https://dl.acm.org/doi/10.1145/3611643.3613878
-
How is unsafe Rust code used in practice? (2 pts, 2022)
https://twitter.com/codestat_dev/status/1516231239828586500
-
Sifting through crates.io for malware with OSSF Package Analysis (2 pts, 2023)
http://www.williballenthin.com/post/sifting-through-crates.io-for-malware-with-ossf-package-analysis/
-
Sudo-rs shows password asterisks by default – break with Unix tradition (2 pts, 2026)
https://www.heise.de/en/news/sudo-rs-shows-password-asterisks-by-default-break-with-Unix-tradition-11193037.html
-
Sudo-Rs Breaks Sudo Tradition of Invisible Password Typing (2 pts, 2026)
https://www.xda-developers.com/sudo-rs-password-asterisk-entry/
-
The unreasonable effectiveness of LLMs for auditing Rust code (2 pts, 2026)
https://shnatsel.medium.com/the-unreasonable-effectiveness-of-llms-for-auditing-rust-code-d4df8bf0afd3
-
TARmageddon Strikes: High Profile Security Vulnerability in Popular Rust Library (1 pts, 2025)
https://www.phoronix.com/news/Rust-TARmageddon
-
Fixing Rust Dependencies Vulnerabilities (1 pts, 2020)
https://dev.to/flipchan/fixing-rust-dependencies-vulnerabilities-5gkl
-
Rust Open Source CVE Search Engine (1 pts, 2022)
https://github.com/Exein-io/kepler
-
A very (not) safe library to check if a number is odd. Based on cve-rs (1 pts, 2024)
https://crates.io/crates/odd_is_odd
-
Resolving the Pin Unsoundness – Rust Lang Team Meeting (1 pts, 2020)
https://www.youtube.com/watch?v=MX_GRNLhlY8
-
One of the longest standing soundness holes in Rust: implied bounds and variance (1 pts, 2022)
https://lcnr.de/blog/diving-deep-implied-bounds-and-variance/
-
Rust: Security advisory for the standard library (1 pts, 2018)
https://blog.rust-lang.org/2018/09/21/Security-advisory-for-std.html
-
Crates.io: an update to the malicious crate notification policy (1 pts, 2026)
https://blog.rust-lang.org/2026/02/13/crates.io-malicious-crate-update/
-
Rustsec-2025-0004: OpenSSL: SSL:select_next_proto use after free (1 pts, 2025)
https://rustsec.org/advisories/RUSTSEC-2025-0004
-
Some nuances of undefined behavior in Rust (1 pts, 2020)
https://typr124.github.io/UB1
-
Hegel-Rust OSS bug-finding (1 pts, 2026)
https://github.com/DRMacIver/hegel-rust-oss-bug-finding
-
Tracking down a bug in Rust firmware (1 pts, 2025)
https://malcolmcrum.com/ppegjs-demo-highlighting/
-
Automatically Detecting Lifetime Annotation Bugs in the Rust Language (1 pts, 2023)
https://arxiv.org/abs/2310.08507
-
Out-of-bounds memory access bug in capnproto-rust (1 pts, 2023)
https://dwrensha.github.io/capnproto-rust/2022/11/30/out_of_bounds_memory_access_bug.html
-
Rust tracking issue for bugs fixed by the MIR borrow checker or NLL (1 pts, 2022)
https://github.com/rust-lang/rust/issues/47366
-
An Analysis of Rust's Language Design Flaws (2025) (1 pts, 2026)
https://nimfsoft.art/blog/2025/06/26/analysis-of-rust-language-design-flaws/
-
Is Rust really the Solution to Security? (1 pts, 2023)
https://news.ycombinator.com/item?id=36701188
-
Rust-Vmm: A Security Journey (2021) (1 pts, 2022)
https://kvmforum2021.sched.com/event/ke44/rust-vmm-a-security-journey-andreea-florescu-amazon
-
Security review of “please” a rust replacement of sudo (1 pts, 2021)
https://marc.info/?l=oss-security&m=162133298513412&w=2
-
The Hardest Kind of Unsafe Rust (1 pts, 2026)
https://oxide-and-friends.transistor.fm/episodes/the-hardest-kind-of-unsafe-rust
-
Embedded Rust Will Always Be Unsafe [video] (1 pts, 2024)
https://www.youtube.com/shorts/cFXX_A_-Lc4
-
Modular Formal Verification of Rust Programs with Unsafe Blocks (1 pts, 2023)
https://arxiv.org/abs/2212.12976
-
Unsafe Rust in the Wild (1 pts, 2022)
https://thenewstack.io/unsafe-rust-in-the-wild/
-
On Control Flow Hijacks of Unsafe Rust [pdf] (1 pts, 2018)
http://cs242.stanford.edu/assets/projects/2017/songyang.pdf
-

