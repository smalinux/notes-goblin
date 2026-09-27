---
created: 2026-09-16
tags: [ELF]
---

## HN: ALL ELF articles (format, tooling, hacking)

- Source: HN Algolia API. Full history. Title search.
- Queries: ELF (filtered: no Santa/cosmetics/COSMAC Elf noise), LD_PRELOAD, ld.so, readelf, patchelf, binfmt, GOT, PLT.
- 325 unique articles total. 3 already in [[hn list - re]] / [[hn list - Corrupting Memory]] → tagged #ELF there, not repeated here. 322 listed below.
- ⭐ = 200+ pts. ⭐⭐ = 500+ pts. ⭐⭐⭐ = 1000+ pts.

### ⭐ Important (200–499 pts) — 7 articles

LD_PRELOAD: The Hero We Need and Deserve ⭐ (352 pts, 2019)
https://blog.jessfraz.com/post/ld_preload/
-
Elf Hello World ⭐ (334 pts, 2017)
http://www.cirosantilli.com/elf-hello-world/
-
A Simple ELF ⭐ (292 pts, 2024)
https://4zm.org/2024/12/25/a-simple-elf.html
-
Anatomy of an ELF executable ⭐ (241 pts, 2019)
https://kishuagarwal.github.io/life-of-a-binary.html
-
Zig ELF Linker Improvements Devlog ⭐ (227 pts, 2026)
https://ziglang.org/devlog/2026/#2026-05-30
-
Using LD_PRELOAD to cheat, inject features and investigate programs ⭐ (202 pts, 2023)
https://rafalcieslak.wordpress.com/2013/04/02/dynamic-linker-tricks-using-ld_preload-to-cheat-inject-features-and-investigate-programs/
-
Elfcat: Visualize ELF Binaries ⭐ (201 pts, 2021)
https://github.com/ruslashev/elfcat
-

### 100–199 pts — 23 articles

Nerd Sniped by BINFMT_MISC (174 pts, 2018)
https://blog.jessfraz.com/post/nerd-sniped-by-binfmt_misc/
-
So today musl discovered a longstanding bug in Linux's ELF loader (159 pts, 2022)
https://twitter.com/RichFelker/status/1588592850715172865
-
Supporting four operating systems in a 400 byte ELF executable (155 pts, 2022)
https://justine.lol/sizetricks/#elf
-
PatchELF: Simple utility for modifying existing ELF executables and libraries (152 pts, 2021)
https://github.com/NixOS/patchelf
-
Evolution of the ELF object file format (148 pts, 2024)
https://maskray.me/blog/2024-05-26-evolution-of-elf-object-file-format
-
Hackme: Deconstructing an ELF File (147 pts, 2011)
http://manoharvanga.com/hackme/
-
ELF files on Linux (142 pts, 2019)
https://linux-audit.com/elf-binaries-on-linux-understanding-and-analysis/
-
How programs get run: ELF binaries (2015) (141 pts, 2025)
https://lwn.net/Articles/631631/
-
Tiny ELF Files: Revisited in 2021 (140 pts, 2021)
https://nathanotterness.com/2021/10/tiny_elf_modernized.html
-
New ELF Linker from the LLVM Project (138 pts, 2015)
http://blog.llvm.org/2015/11/new-elf-linker-from-llvm-project.html?m=1
-
PRoot: User-space implementation of chroot, mount –bind, and binfmt_misc (132 pts, 2024)
https://proot-me.github.io/
-
A overview of binaries, ELF, and NoMMU on Linux (125 pts, 2024)
http://lists.landley.net/pipermail/toybox-landley.net/2024-January/029957.html
-
Zig got a new ELF linker and it's fast (123 pts, 2025)
https://github.com/ziglang/zig/pull/25299
-
Cramming a tiny program into a tiny ELF file (122 pts, 2023)
https://tmpout.sh/3/22.html
-
A Whirlwind Tutorial on Creating Really Teensy ELF Executables for Linux (1999) (116 pts, 2019)
https://www.muppetlabs.com/~breadbox/software/tiny/teensy.html
-
Systemd replacing ELF dependencies with dlopen (113 pts, 2024)
https://mastodon.social/@pid_eins/112256363180973672
-
I Built an Ld_preload Worm (110 pts, 2024)
https://lcamtuf.substack.com/p/that-time-i-built-an-ld_preload-worm
-
On ELF, Part 2 (2018) (109 pts, 2021)
https://kestrelcomputer.github.io/kestrel/2018/02/01/on-elf-2
-
The dissection of a simple “hello world” ELF file (109 pts, 2015)
https://github.com/mewrev/dissection
-
Today I Learned: Binfmt_misc (107 pts, 2025)
https://dfir.ch/posts/today_i_learned_binfmt_misc/
-
Linux/ELF .eh_frame from the bottom up (105 pts, 2024)
https://www.corsix.org/content/elf-eh-frame
-
Adding code to an existing ELF file (103 pts, 2022)
https://dropbear.sh/blog/elf-patching.html
-
Binfmtc – binfmt_misc C scripting interface (103 pts, 2025)
https://www.netfort.gr.jp/~dancer/software/binfmtc.html.en
-

### 50–99 pts — 30 articles

ELF Statifier, self-contained dynamically linked executables (99 pts, 2020)
http://statifier.sourceforge.net/
-
The ELF Virus Writing Howto (2003) (94 pts, 2018)
http://www.linuxsecurity.com/resource_files/documentation/virus-writing-HOWTO/_html/index.html
-
Smallest x86 ELF Hello World (89 pts, 2011)
http://timelessname.com/elfbin/
-
ELF hash function may overflow (87 pts, 2023)
https://maskray.me/blog/2023-04-12-elf-hash-function
-
Manually Creating an ELF Executable (87 pts, 2014)
http://robinhoksbergen.com/papers/howto_elf.html
-
Show HN: A (marginally) useful x86-64 ELF executable in 466 bytes (85 pts, 2024)
https://github.com/meribold/btry
-
Awesome-ld-preload: List of resources related to LD_PRELOAD (85 pts, 2020)
https://github.com/gaul/awesome-ld-preload
-
Hardening ELF binaries using Relocation Read-Only (2019) (77 pts, 2021)
https://www.redhat.com/en/blog/hardening-elf-binaries-using-relocation-read-only-relro
-
Emulating Linux MIPS in Perl – Part 1: ELF loader (77 pts, 2015)
http://schplog.schmorp.de/2015-06-08-emulating-linux-mips-in-perl-1.html
-
Analyzing ELF symbols using SQL (76 pts, 2023)
https://fzakaria.com/2023/09/11/quick-insights-using-sqlelf.html
-
The ABI status of ELF hash tables (74 pts, 2022)
https://lwn.net/SubscriberLink/904892/dba951441b61cbdc/
-
Carving ELF Files (73 pts, 2024)
https://blog.nietaanraken.nl/posts/elf-file-size/
-
Dealing with Weird ELF Libraries (73 pts, 2024)
https://mjg59.dreamwidth.org/69070.html
-
planckforth: Bootstrapping a Forth interpreter from hand-written tiny ELF binary (72 pts, 2026)
https://github.com/nineties/planckforth
-
A minimal, complete, and correct ELF file (72 pts, 2024)
https://scratchpad.avikdas.com/elf-explanation/elf-explanation.html
-
ELF Binaries and Relocation Entries (70 pts, 2019)
http://stffrdhrn.github.io/hardware/embedded/openrisc/2019/11/29/relocs.html
-
ELF Crimes: Program Interpreter Fun (67 pts, 2025)
https://nytpu.com/gemlog/2025-12-21
-
Analyze un-instrumented ELF core files for leaks, memory growth and corruption (67 pts, 2017)
https://github.com/vmware/chap#readme
-
Speeding up ELF relocations for store-based systems (64 pts, 2024)
https://fzakaria.com/2024/05/03/speeding-up-elf-relocations-for-store-based-systems.html
-
In-Memory-Only ELF Execution Without Tmpfs (63 pts, 2019)
https://magisterquis.github.io/2018/03/31/in-memory-only-elf-execution.html
-
Show HN: Another ELF Analysis Toolkit (62 pts, 2025)
https://github.com/M3rcuryLake/Nyxelf
-
Dynamic Linking: ELF vs. Mach-O (62 pts, 2010)
http://timetobleed.com/dynamic-linking-elf-vs-mach-o/
-
Memstop: Use LD_PRELOAD to delay process execution when low on memory (62 pts, 2025)
https://github.com/surban/memstop
-
The Missing Link: Explaining ELF Static Linking, Semantically [pdf] (61 pts, 2016)
http://www.cl.cam.ac.uk/~pes20/rems/papers/oopsla-elf-linking-2016.pdf
-
ELF – An extensive, lightweight, and flexible platform for game research (61 pts, 2017)
https://code.facebook.com/posts/132985767285406/introducing-elf-an-extensive-lightweight-and-flexible-platform-for-game-research/
-
ZEVS, the Russian 82Hz ELF transmitter (60 pts, 2015)
http://www.vlf.it/zevs/zevs.htm
-
Clodl: Turn dynamically linked ELF binaries into self-contained closures (56 pts, 2021)
https://github.com/tweag/clodl
-
When ELF notes reveal too much (54 pts, 2024)
https://lwn.net/Articles/962782/
-
Vlany – Linux LD_PRELOAD rootkit (52 pts, 2016)
https://github.com/mempodippy/vlany
-
Understanding the ELF (51 pts, 2015)
https://medium.com/@MrJamesFisher/understanding-the-elf-4bd60daac571
-

### 20–49 pts — 17 articles

Elf in Guile (2014) (47 pts, 2016)
https://wingolog.org/archives/2014/01/19/elf-in-guile
-
Exploiting ELF Expansion Variables (46 pts, 2016)
http://backtrace.io/blog/blog/2016/06/29/exploiting-elf-expansion-variables/
-
ELF Shared Library Injection Forensics (46 pts, 2016)
http://backtrace.io/blog/blog/2016/04/22/elf-shared-library-injection-forensics/
-
The Teensy Files: Creating teensy ELF executables for Linux (44 pts, 2014)
http://www.muppetlabs.com/~breadbox/software/tiny/home.html
-
ELF: Better Symbol Lookup via Dt_gnu_hash (2017) (42 pts, 2020)
https://flapenguin.me/elf-dt-gnu-hash
-
Show HN: ELF Injector (39 pts, 2025)
https://github.com/dillstead/elf_injector
-
LD_PRELOAD, The Invisible Key Theft (38 pts, 2025)
https://bomfather.dev/blog/ld-preload-the-invisible-key-theft/
-
Introduction to the ELF Format: The ELF Header (Part I) (36 pts, 2018)
https://blog.k3170makan.com/2018/09/introduction-to-elf-format-elf-header.html
-
Remote LD_PRELOAD Exploitation (36 pts, 2017)
https://www.elttam.com.au/blog/goahead/
-
Local privilege escalation in glibc’s ld.so (36 pts, 2023)
https://www.qualys.com/2023/10/03/cve-2023-4911/looney-tunables-local-privilege-escalation-glibc-ld-so.txt
-
A Whirlwind Tutorial on Creating Teensy ELF Executables for Linux (2001) (34 pts, 2024)
https://www.muppetlabs.com/%7Ebreadbox/software/tiny/teensy.html
-
Ceed – A tiny x86 compiler with ELF and PE target (2017) (32 pts, 2023)
https://github.com/ipankajg/ceed
-
Go LD_PRELOAD backdoor experiment (31 pts, 2015)
https://github.com/mattbostock/go-ldpreload-backdoor
-
Superlinker: A tool for reinterpreting ELF executables and shared libraries (29 pts, 2024)
https://github.com/whitequark/superlinker
-
Fat ELF binaries for multiple architectures on Linux (and possibly others) (29 pts, 2009)
http://icculus.org/fatelf/
-
Light ELF: exploring potential size reduction (28 pts, 2024)
https://maskray.me/blog/2024-04-01-light-elf-exploring-potential-size-reduction
-
GNU Binutils: The ELF Swiss Army Knife (26 pts, 2020)
https://interrupt.memfault.com/blog/gnu-binutils
-

### 10–19 pts — 11 articles

Surfing with the Linker Aliens: Solaris Linking and ELF Blogs (18 pts, 2022)
http://www.linker-aliens.org/
-
ELF: From the Programmer's Perspective (18 pts, 2022)
https://beefchunk.com/documentation/sys-programming/binary_formats/elf/elf_from_the_programmers_perspective/elf.html
-
Facebook Open Sources ELF OpenGo (16 pts, 2019)
https://facebook.ai/developers/tools/elf-opengo
-
Finesse: Using LD_PRELOAD for high performance kernel bypass FUSE [pdf] (16 pts, 2021)
https://www.eurosys2020.org/wp-content/uploads/2020/04/eurosys20posters-final100-abstract.pdf
-
Think you can't interpose static binaries with LD_PRELOAD? Think again (15 pts, 2025)
https://balintreczey.hu/blog/think-you-cant-interpose-static-binaries-with-ld_preload-think-again/
-
Fileless ELF Execution via Kernel Keyring (11 pts, 2026)
https://matheuzsecurity.github.io/hacking/linux-kernel-keyring-fileless-exec/
-
Show HN: A tiny x86 compiler with ELF and PE target (11 pts, 2017)
http://logicpundit.com/blog/ceed/
-
Suppression of Type I collagen in human scleral fibroblasts treated with ELF (10 pts, 2026)
https://pmc.ncbi.nlm.nih.gov/articles/PMC3626379/
-
Fair Open-Sources New ELF OpenGo Data Set, Research, and Insights (10 pts, 2019)
https://code.fb.com/ai-research/elf-opengo/
-
The ELF Object File Format: Introduction (1995) (10 pts, 2015)
http://www.linuxjournal.com/article/1059
-
Creating ELF relocatable object files in Linux (10 pts, 2014)
http://developer2developer.wordpress.com/2014/10/01/creating-elf-relocatable-object-files-in-linux/
-

### 3–9 pts — 101 articles

BSDun – FreeBSD ELF support for the Linux kernel (9 pts, 2026)
https://gitlab.com/megastallman/bsdun
-
ELF obfuscation: let analysis tools show wrong external symbol calls (9 pts, 2014)
http://h4des.org/blog/index.php?/archives/346-ELF-obfuscation-let-analysis-tools-show-wrong-external-symbol-calls.html
-
Bypassing TLS Certificate Validation with Ld_preload (9 pts, 2025)
https://f0rw4rd.github.io/posts/tls-noverify-bypass-all-the-things/
-
The ELF: What the ARM Assembler Generates on Raspberry Pi (8 pts, 2025)
https://embeddedjourneys.com/blog/hello-world-arm-assember-generates-elf-raspberry-pi/
-
How Dwarf Works: Parsing Just Enough ELF (8 pts, 2024)
https://www.calabro.io/dwarf/elf
-
Facebook open-sources ELF OpenGo (8 pts, 2018)
https://research.fb.com/facebook-open-sources-elf-opengo/
-
Dive into ELF files using readelf command (8 pts, 2012)
http://mylinuxbook.com/readelf-command/
-
"Let's hook up " – said every LD_PRELOAD (8 pts, 2024)
https://vibhavstechdiary.substack.com/p/lets-hook-up-said-every-ld_preload
-
Delve into ELF Binary Magic (7 pts, 2022)
https://www.linux-magazine.com/Issues/2017/202/ELF
-
Linux.Midrashim: Assembly x64 ELF virus (7 pts, 2021)
https://www.guitmz.com/linux-midrashim-elf-virus/
-
Adding package information to ELF objects (7 pts, 2021)
https://lwn.net/Articles/874642/
-
Gwcheck – Check .gnu.warning.* sections in ELF object files (7 pts, 2021)
https://github.com/fcambus/gwcheck
-
Linux/HelloBot (another ELF bot malware from China actors) (7 pts, 2019)
https://imgur.com/a/lAQ1tMQ
-
ELF kickers -- tools and sample code for hacking ELF files in Linux (7 pts, 2011)
http://www.muppetlabs.com/~breadbox/software/elfkickers.html
-
LD_PRELOAD is super fun. And easy (7 pts, 2014)
http://jvns.ca/blog/2014/11/27/ld-preload-is-super-fun-and-easy/
-
Show HN: A 16-control subtractive synth for microcontrollers (39k ELF, web demo) (6 pts, 2026)
https://mini000.itch.io/beeper
-
Golfing Zig ELF binaries (2025) (6 pts, 2026)
https://ctf.gg/blog/zig-binary-golfing
-
Introduction to ELF Program Headers (6 pts, 2025)
https://tmpout.sh/4/12.html
-
GNU Indirect Function and x86 ELF ABIs (6 pts, 2022)
https://jasoncc.github.io/gnu_gcc_glibc/gnu-ifunc.html
-
Emulating Linux/AMD64 userland: interpreting an ELF binary (6 pts, 2021)
https://notes.eatonphil.com/emulating-amd64-starting-with-elf.html
-
ELF OpenGo: An Analysis and Open Reimplementation of AlphaZero (6 pts, 2019)
https://arxiv.org/abs/1902.04522
-
A tiny compiler with ELF and PE executable for x86 (6 pts, 2018)
https://github.com/l0n3c0d3r/ceed
-
A tiny ELF (114 byte Linux program for Christmas) (6 pts, 2017)
https://github.com/wybiral/tiny-elf
-
Show HN: Dress: add symbols back into a stripped ELF binary (~strip) (6 pts, 2017)
https://github.com/docileninja/dress##
-
Creating an ELF Virus Using Assembly (6 pts, 2016)
https://cranklin.wordpress.com/2016/12/26/how-to-create-a-virus-using-the-assembly-language/
-
Show HN: ELF Dump Utility in Nim (5 pts, 2021)
https://github.com/khaledh/elfdump
-
Dynamic symbol table duel: ELF vs Mach-O, round 2 (5 pts, 2010)
http://timetobleed.com/dynamic-symbol-table-duel-elf-vs-mach-o-round-2/
-
Fileless ELF Execution via O_tmpfile (4 pts, 2026)
https://matheuzsecurity.github.io/hacking/fileless-loader-bypassing-elastic-memfd/
-
ELF and Dynamic Linking (4 pts, 2026)
https://fmdlc.github.io/tty0/Linux_ELF_Dynamic_linking_EN.html
-
Show HN: Elfpeek – A tiny interactive ELF binary inspector in C (4 pts, 2025)
https://github.com/Oblivionsage/elfpeek
-
ELF Object File Format (4 pts, 2025)
https://gabi.xinuos.com/index.html
-
Executable Formats ( ELF, Mach-O, PE) (4 pts, 2025)
https://www.youtube.com/watch?v=ehxt6rTc9iI
-
Sharun: Run dynamically linked ELF binaries everywhere (4 pts, 2025)
https://github.com/VHSgunzo/sharun
-
Lld 19 ELF Changes (4 pts, 2024)
https://maskray.me/blog/2024-08-04-lld-19-elf-changes
-
A compact relocation format for ELF (4 pts, 2024)
https://maskray.me/blog/2024-03-09-a-compact-relocation-format-for-elf
-
Explore Linux ELF objects through SQL (4 pts, 2023)
https://github.com/fzakaria/sqlelf
-
Hacking the ELF format for Firefox, 12 years later; doing better with less (4 pts, 2023)
https://glandium.org/blog/?p=4297
-
Hacking Your ELF for Fun and Profit (4 pts, 2023)
https://mgalgs.io/2013/05/10/hacking-your-ELF-for-fun-and-profit.html
-
Lld 15 ELF Changes (4 pts, 2022)
https://maskray.me/blog/2022-09-05-lld-15-elf-changes
-
Vintage Cosmac ELF Is Pretty Close to Original (4 pts, 2022)
https://hackaday.com/2017/03/06/vintage-cosmac-elf-is-pretty-close-to-original/
-
Kiteshield: An open source packer/obfuscator for x86-64 ELF binaries on Linux (4 pts, 2021)
https://github.com/GunshipPenguin/kiteshield
-
Handmade Linux x86 executables – Part 1: ELF header [video] (4 pts, 2021)
https://www.youtube.com/watch?v=XH6jDiKxod8
-
ELF (4 pts, 2020)
https://en.wikipedia.org/wiki/Executable_and_Linkable_Format
-
ELF 101: A Linux Executable Walkthrough (2013) [PNG] (4 pts, 2020)
https://i.imgur.com/GZ5a0sb.png
-
Linux.Midrashim: x64 ELF infector virus (4 pts, 2020)
https://github.com/guitmz/midrashim
-
makeELF – ELF reader-writer library for Python3 (4 pts, 2020)
https://github.com/v3l0c1r4pt0r/makeelf
-
The ELF format – how programs look from the inside (4 pts, 2016)
https://greek0.net/elf.html
-
A new ELF OpenGo bot and analysis of historical Go games (4 pts, 2019)
https://ai.facebook.com/blog/open-sourcing-new-elf-opengo-bot-and-go-research/
-
ELF: An Extensive, Lightweight and Flexible Research Platform for RTS Games (4 pts, 2017)
https://github.com/facebookresearch/ELF
-
ELF processing in Rust (4 pts, 2017)
https://users.rust-lang.org/t/elf-processing-in-rust/10338
-
Optenum: list --options from an ELF executables with static analysis (4 pts, 2017)
https://github.com/mattboyer/optenum
-
Compile JavaScript to WebAssembly, asm.js, exe, elf and more (4 pts, 2017)
http://nectar-lang.com/?compile
-
ELF 101: A Linux executable walkthrough (4 pts, 2013)
https://corkami.googlecode.com/files/elf101.pdf
-
Working Around Skype's Privacy Hole with LD_PRELOAD (4 pts, 2013)
https://crashcoherency.net/posts/working_around_skype_s_privacy_hole_with_ld_preload
-
Looney Tunables: Local Privilege Escalation in the glibc's ld.so (CVE-2023-4911) (4 pts, 2023)
https://www.openwall.com/lists/oss-security/2023/10/03/2
-
The curious case of binfmt for x86 emulation for ARM Docker (4 pts, 2026)
https://gergely.imreh.net/blog/2025/04/the-curious-case-of-binfmt-for-x86-emulation-for-arm-docker/
-
The People's Computer at 50 the Cosmac ELF [video] (3 pts, 2026)
https://www.youtube.com/watch?v=H3Pdf8iRw5E
-
KukuOS: A self-hosting, ELF-emitting x86 stack in Kuku Yalanji (3 pts, 2026)
https://github.com/australia/kukuos
-
Elfina–A multi-architecture ELF loader supporting x86 and x86-64 binaries (3 pts, 2026)
https://github.com/iss4cf0ng/Elfina
-
Show HN: Celeste game installs as ELF binary (42kB) on ESP32/breezybox [video] (3 pts, 2026)
https://www.youtube.com/watch?v=nufOQWBmwpk
-
`dlopen()` Metadata for ELF Files (3 pts, 2025)
https://uapi-group.org/specifications/specs/elf_dlopen_metadata/
-
New Gabi/ELF Spec Available for Public Review (3 pts, 2025)
https://groups.google.com/g/generic-abi/c/doY6WIIPqhU/?pli=1
-
Scaling past 1M ELF symbol relocations (3 pts, 2024)
https://fzakaria.com/2024/07/21/scaling-past-1-million-elf-symbol-relocations.html
-
imgact_elf: Load Ape Executables Faster (3 pts, 2024)
https://github.com/freebsd/freebsd-src/pull/1334
-
elfconv: AOT compiler from AArch64 ELF binary to LLVM bitcode targeting Wasm (3 pts, 2024)
https://fosdem.org/2024/schedule/event/fosdem-2024-2254-elfconv-aot-compiler-that-translates-linux-aarch64-elf-binary-to-llvm-bitcode-targeting-webassembly/
-
Transforming an ELF Executable into a Library (3 pts, 2024)
https://lief-project.github.io/doc/latest/tutorials/08_elf_bin2lib.html
-
ELF-SR2 Spatial Reality Display (3 pts, 2023)
https://pro.sony/ue_US/products/spatial-reality-displays/elf-sr2
-
Stelf-loader: A stealthy ELF loader – no files, no execve, no RWX (3 pts, 2023)
https://github.com/DavidBuchanan314/stelf-loader
-
On ELF, Part 1 (3 pts, 2022)
https://kestrelcomputer.github.io/kestrel/2018/01/29/on-elf
-
Poke-elf: an ELF pickle for GNU poke (3 pts, 2023)
https://jemarch.net/poke-elf
-
elf_to_shellcode: Python Library to Convert ELF to Shellcodes (3 pts, 2022)
https://github.com/jonatanSh/elf_to_shellcode
-
ELF 101 a Linux Executable Walkthrough by Ange Albertini [pdf] (3 pts, 2022)
https://github.com/corkami/pics/blob/master/binary/elf101/elf101.pdf
-
Tmp.out – Zine for ELF Hacks (3 pts, 2021)
https://tmpout.sh/1/
-
Redirecting functions in shared ELF libraries (3 pts, 2021)
https://www.codeproject.com/Articles/70302/Redirecting-functions-in-shared-ELF-libraries
-
Custom Kernel Debugging: Using GDB to debug dynamically loaded ELF files (3 pts, 2021)
https://deepdives.medium.com/custom-kernel-debugging-using-gdb-to-debug-dynamically-loaded-elf-files-c91389205ad6
-
Life, the Universe and Everything: A Small ELF (3 pts, 2021)
https://ftp.lol/posts/small-elf.html
-
More ELF Relocations (3 pts, 2021)
https://fasterthanli.me/series/making-our-own-executable-packer/part-11
-
ELF-VC – Towards Practical AI-Native Video (3 pts, 2021)
https://www.wave.one/elf
-
Show HN: Collection of tiny C ELF programs with graphics output (3 pts, 2020)
https://github.com/grz0zrg/tinycelfgraphics
-
Learning About ELF with Zig (3 pts, 2021)
https://g-w1.github.io/blog/zig/low-level/2021/03/15/elf-linux.html
-
Utility to determine if ELF binary is built with debug sections (3 pts, 2020)
https://github.com/sbz/elfdbg
-
Read your own .note.gnu.build-id ELF section (3 pts, 2020)
https://github.com/mattst88/build-id/
-
PatchELF: Utility to modify the dynamic linker and RPATH of ELF executables (3 pts, 2019)
https://nixos.org/patchelf.html
-
No PE or DWARF but here's a prime that is an ELF file:) (3 pts, 2019)
https://twitter.com/moyix/status/1161413879282294785
-
Secure ELF parsing/loading library for forensics reconstruction of malware (3 pts, 2019)
https://github.com/elfmaster/libelfmaster
-
Leveraging relocations in ELF-binaries for Linux kernel version identification [pdf] (3 pts, 2018)
http://cs.uno.edu/~irfan/publications/dfrws-2018.pdf
-
Decompiler for x86 and x86-64 ELF binaries (3 pts, 2017)
https://github.com/Cararasu/holodec
-
Custom ELF program headers–what, why and how (3 pts, 2017)
http://www.cl.cam.ac.uk/~srk31/blog/2017/02/14/#custom-elf-phdrs
-
World saving music site needs ELF binary lover (3 pts, 2016)
https://news.ycombinator.com/item?id=12781982
-
New open source project (C++/ELF/testing) – review if interested (3 pts, 2016)
https://github.com/mollismerx/elfspy/wiki
-
How to create a working Linux ELF executable in 45 bytes (3 pts, 2016)
https://cseweb.ucsd.edu/~ricko/CSE131/teensyELF.htm
-
Executable and Linkable Format (ELF) [pdf] (3 pts, 2015)
http://www.skyfree.org/linux/references/ELF_Format.pdf
-
Dynamic Linker for Android Native ELF (3 pts, 2015)
https://bitbucket.org/jigsaw_echo/adrld
-
VDSO – overview of the virtual ELF dynamic shared object (3 pts, 2014)
http://man7.org/linux/man-pages/man7/vdso.7.html
-
“Weird Machines” in ELF: A Spotlight on the Underappreciated Metadata (3 pts, 2013)
https://www.usenix.org/system/files/conference/woot13/woot13-shapiro.pdf
-
Improving libxul startup I/O by hacking the ELF format (3 pts, 2010)
http://glandium.org/blog/?p=1177
-
Whitelisting LD_PRELOAD for Fun and No Profit (3 pts, 2023)
https://forensicitguy.github.io/whitelisting-ld-preload-for-fun-and-no-profit/
-
Unit testing C code with LD_PRELOAD (3 pts, 2020)
https://williamdurand.fr/2020/01/07/unit-testing-with-ld-preload/
-
Measure TCP metrics LD_PRELOAD-ish way (3 pts, 2017)
http://blog.donatas.net/blog/2017/07/11/ld-preload-tcp-rtt/
-
Show HN: connect-or-cut -- Stateless LD_PRELOAD based firewall (3 pts, 2016)
https://github.com/tgg/connect-or-cut
-
Ld.so: glibc's dynanic linker/loader (3 pts, 2016)
https://blog.ksub.org/bytes/2016/07/23/ld.so-glibcs-dynanic-linker/loader/
-

### 0–2 pts (no traction) — 133 articles

A 57-byte x86-64 Linux ELF (2 pts, 2026)
https://tmpout.sh/5/3.html
-
Linux Executes Binaries: ELF and Dynamic Linking Explained (2 pts, 2026)
https://fmdlc.github.io/tty0/articles/linux-elf-dynamic-linking/Linux_ELF_Dynamic_linking_EN.html
-
Lld 22 ELF Changes (2 pts, 2026)
https://maskray.me/blog/2026-02-01-lld-22-elf-changes
-
Jas, a minimal hobby x64 ELF assembler library – done (2 pts, 2024)
https://github.com/cheng-alvin/jas
-
Pokology – Fun with ELF Files (2 pts, 2024)
https://pokology.org/fun-with-elf.html
-
Build The COSMAC "ELF" A Low-Cost Experimenter's Microcomputer (1976) [PDF] (2 pts, 2024)
https://dn790007.ca.archive.org/0/items/manualzilla-id-5721710/5721710.pdf
-
Lld 18 ELF Changes (2 pts, 2024)
https://maskray.me/blog/2024-02-18-lld-18-elf-changes
-
Hidings Symbols of Elf Files (2 pts, 2023)
http://hkopp.github.io/2023/09/hidings-symbols-of-ELF-files
-
XELFViewer – ELF file viewer/editor for Windows, Linux, and macOS (2 pts, 2023)
https://github.com/horsicq/XELFViewer
-
ELF Changes in Lld 17 (2 pts, 2023)
https://maskray.me/blog/2023-07-30-lld-17-elf-changes
-
Lld 16 ELF Changes (2 pts, 2023)
https://maskray.me/blog/2023-03-19-lld-16-elf-changes
-
Crafting an ELF Executable (2 pts, 2023)
https://build-your-own.org/blog/20230219_elf_craft/
-
Pyelftools: Pure-Python library for parsing and analyzing ELF files (2 pts, 2022)
https://github.com/eliben/pyelftools
-
Learn about The ELF file format (2 pts, 2022)
https://cr0mll.github.io/cyberclopaedia/Reverse%20Engineering/Binary%20Formats/ELF/index.html
-
ELF Resources (2 pts, 2022)
https://github.com/tmpout/awesome-elf
-
Fee – Execute ELF binaries without dropping any files on disk (2 pts, 2021)
https://github.com/nnsee/fileless-elf-exec
-
ELF Science Part 1 (2 pts, 2021)
https://greatergoodest.github.io/post/elf_science_p1/
-
ELF dynamic linking: a brief introduction (2 pts, 2021)
https://www.humprog.org/~stephen/blog/2021/10/18/#elf-dynamic-linking-intro
-
Debug sections for hot-patching LLD's ELF output (2 pts, 2021)
https://lists.llvm.org/pipermail/llvm-dev/2021-September/152697.html
-
ELF: Extremely Low Frequency (2 pts, 2021)
https://en.wikipedia.org/wiki/Extremely_low_frequency
-
The Last Alliance of ELF and Men: -fno-semantic-interposition (2 pts, 2021)
https://maskray.me/blog/2021-05-09-fno-semantic-interposition
-
ELF Reader in Pure Tcl (2 pts, 2021)
https://github.com/jbroll/riscv-asm/tree/main/elf
-
Elf_diff: A tool to compare ELF binaries (2 pts, 2020)
https://github.com/CapeLeidokos/elf_diff
-
Natural ELF fields in the atmosphere and in living organisms (2 pts, 2020)
https://www.livescience.com/life-electrical-hum-from-lightning.html
-
ELF launcher for encrypted binaries decrypted on-the-fly and executed in memory (2 pts, 2020)
https://www.redtimmy.com/red-teaming/blue-team-vs-red-team-how-to-run-your-encrypted-binary-in-memory-and-go-undetected/
-
Vmlinux-to-elf: A RE tool to recover a .ELF with symbols from a raw kernel (2 pts, 2019)
https://github.com/marin-m/vmlinux-to-elf
-
Linux ELF Runtime Crypter (2 pts, 2019)
https://www.guitmz.com/linux-elf-runtime-crypter/
-
Running ELF Executables from Memory (2 pts, 2019)
https://www.guitmz.com/running-elf-from-memory/
-
Secure Code Partitioning with ELF Binaries, Aka. SCOP (2 pts, 2018)
http://bitlackeys.org/papers/secure_code_partitioning_2018.txt
-
Exploring features and conventions of BPF ELF loaders (2 pts, 2018)
https://kinvolk.io/blog/2018/10/exploring-bpf-elf-loaders-at-the-bpf-hackfest/
-
Intro to ELF (Part V): Understanding .init_array and .fini_array (2 pts, 2018)
https://blog.k3170makan.com/2018/10/introduction-to-elf-format-part-v.html
-
Dissecting and exploiting ELF files (2 pts, 2018)
https://0x00sec.org/t/dissecting-and-exploiting-elf-files/7267
-
ELF: a platform for game research (2 pts, 2018)
https://github.com/pytorch/elf
-
Designing ELF modules (2 pts, 2018)
https://lwn.net/Articles/749108/
-
Fuzzing arbitrary functions in ELF binaries (2 pts, 2018)
https://blahcat.github.io/2018/03/11/fuzzing-arbitrary-functions-in-elf-binaries/
-
CVE-2017-1000253 load_elf_ binary() (2 pts, 2017)
https://access.redhat.com/security/cve/cve-2017-1000253
-
Runtime override of functions in ELF (2 pts, 2017)
https://hardenedapple.github.io/stories/computers/elf_override/
-
A new ELF linker [pdf](2008) (2 pts, 2017)
https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/34417.pdf
-
Having fun with ELF files and GoLang (2 pts, 2017)
https://guitmz.com/having-fun-with-elf-files-and-golang/
-
Custom ELF program headers – what, why and how (2 pts, 2017)
https://www.cl.cam.ac.uk/~srk31/blog/devel/custom-elf-phdrs.html
-
Mammon_'s Tales to his Grandson: Linux on the Half-ELF (2 pts, 2017)
http://mammon.github.io/tales/linux_re.txt
-
Dress: add symbols back into a stripped ELF binary (~strip) (2 pts, 2017)
https://github.com/docileninja/dress#
-
ELF – Extremely Low Friction AWS IoT Client in Python (2 pts, 2016)
https://github.com/awslabs/aws-iot-elf
-
ELF, libelf, compressed sections and elfutils (2 pts, 2016)
https://gnu.wildebeest.org/blog/mjw/2016/01/13/elf-libelf-compressed-sections-and-elfutils/
-
Symboldb: ELF and Java Symbol Database (2 pts, 2016)
https://github.com/fweimer/symboldb
-
A type-safe and zero-allocation library for reading and navigating ELF files (2 pts, 2016)
http://www.ncameron.org/blog/a-type-safe-and-zero-allocation-library-for-reading-and-navigating-elf-files/
-
Malware Must Die (MMD-0047-2015): SSH Bruter ELF Botnet Malware (2 pts, 2015)
http://blog.malwaremustdie.org/2015/12/mmd-0047-2015-sshv-ssh-bruter-elf.html
-
Katana: An ELF/DWARF Manipulation Tool with Hotpatching Capabilities (2011) (2 pts, 2015)
http://katana.nongnu.org/doc/katana.html
-
ELF: Open Source HD Video Streaming Drone (2 pts, 2015)
https://www.indiegogo.com/projects/elf-the-hd-video-streaming-nano-drone
-
Mini binary posters (ELF, ZIP, PE) (2 pts, 2014)
http://imgur.com/a/MtQZv
-
How to run a simple ELF executable, from scratch (2 pts, 2013)
http://jvns.ca/blog/2013/12/13/day-42-how-to-run-an-elf-executable-i-dont-know/
-
Executable and Linkable Format (ELF) (2 pts, 2013)
http://flint.cs.yale.edu/cs422/doc/ELF_Format.pdf
-
Will the ELF, from Durham-based Organic Transit, save the planet? (2 pts, 2013)
http://www.indyweek.com/indyweek/will-the-elf-from-durham-based-organic-transit-save-the-planet/Content?oid=3644982
-
ELF Revisited: Using C (2 pts, 2013)
http://www.negrebskoh.net/howto/howto_elf_revisited.html
-
A Simple Ld_preload Tutorial (2 pts, 2026)
https://catonmat.net/simple-ld-preload-tutorial
-
Libetc – LD_PRELOAD-able shared library that intercepts file operations (2008) (2 pts, 2025)
https://ordiluc.net/fs/libetc/
-
Debugging incorrectly closed file descriptors with LD_PRELOAD (2 pts, 2021)
https://anastas.io/linux/2021/04/07/debugging-file-descriptors-ld_preload.html
-
The LD_PRELOAD trick (2016) (2 pts, 2020)
http://www.goldsborough.me/c/low-level/kernel/2016/08/29/16-48-53-the_-ld_preload-_trick/
-
Fgcov – Hack for a flaw in GCOV using LD_PRELOAD (2 pts, 2016)
https://github.com/Photonios/fgcov
-
Show HN: Record Calls to SSL_read, SSL_write Using LD_PRELOAD (2 pts, 2016)
https://github.com/sebcat/openssl-hook
-
Otherport: LD_PRELOAD hack to redirect connections to other ports (2 pts, 2015)
https://github.com/FiloSottile/otherport
-
Looney Tunables – Local Privilege Escalation in the Glibc’s Ld.so (2 pts, 2023)
https://blog.qualys.com/vulnerabilities-threat-research/2023/10/03/cve-2023-4911-looney-tunables-local-privilege-escalation-in-the-glibcs-ld-so
-
A reimplementation of GNU readelf, using libelfmaster (2 pts, 2019)
https://github.com/Bowlslaw/readelfmaster
-
Bringing BPF to Binfmt_misc (2 pts, 2026)
https://lwn.net/SubscriberLink/1086947/d67ebdaa0865be49/
-
Dynamically Linked RISC-V Programs with Binfmt_misc (2 pts, 2022)
https://danielmangum.com/risc-v-tips/2022-07-03-dynamically-linked-binfmt-misc/
-
PRoot – user-space chroot, mount --bind, and binfmt_misc (2 pts, 2015)
http://proot.me
-
PS5 Y2JB Autoloader:Automatically loads the kernel exploit and your elf payloads (1 pts, 2026)
https://github.com/itsPLK/ps5-y2jb-autoloader
-
Elfuse: Run ARM64/x86-64 Linux ELF Binaries on macOS Apple Silicon (1 pts, 2026)
https://github.com/sysprog21/elfuse
-
Show HN: Biber – ELF and PE binary inspector written in Zig (1 pts, 2026)
https://github.com/hrasityilmaz/Biber
-
Recent lld/ELF performance improvements (1 pts, 2026)
https://maskray.me/blog/2026-04-12-recent-lld-elf-performance-improvements
-
Elfconv: AOT binary translator of Linux/ELF –> WebAssembly (1 pts, 2026)
https://github.com/yomaytk/elfconv
-
HARMless – ARM64 ELF Packer for Linux Security Research (1 pts, 2026)
https://github.com/litemars/hARMless
-
New Elf-Stats Malware Campaign on NPM (1 pts, 2025)
https://www.npmjs.com/search?page=0&q=elf-stats&sortBy=published_at
-
ELF: Management Time (1 pts, 2024)
https://fzakaria.com/2024/07/24/management-time.html
-
ELF binaries and everything before main() starts [pdf] (1 pts, 2023)
https://2023.eurobsdcon.org/slides/eurobsdcon2023-janne_johansson-ELF-binaries.pdf
-
Compressed Arbitrary Sections in ELF (1 pts, 2023)
https://maskray.me/blog/2023-07-07-compressed-arbitrary-sections
-
Creating a minimal ELF-64 file using Clang and Rust (1 pts, 2023)
https://github.com/tchajed/minimal-elf
-
Exploiting Dynamic Linking Procedure in X64 ELF Binaries (1 pts, 2022)
https://syst3mfailure.io/ret2dl_resolve
-
Lld 14 ELF Changes (1 pts, 2022)
https://maskray.me/blog/2022-02-20-lld-14-elf-changes
-
Add ELF machine flag and relocs for upcoming LoongArch target (1 pts, 2022)
https://github.com/llvm/llvm-project/commit/e53e6ec6ef749c2a9b922a1dc6e14e0538292643
-
Shrinkwrap: Freeze Elf Needed Dependencies (1 pts, 2021)
https://github.com/fzakaria/shrinkwrap
-
Perforator: Record exact perf metrics for individual functions of an ELF binary (1 pts, 2021)
https://github.com/zyedidia/perforator
-
List all ELF or DSO dependencies in Linux (1 pts, 2021)
http://si-head.nl/articles/ls_libs
-
A new way of China/PRC adversaries mining our machines with bash-base64 ELF (1 pts, 2020)
https://old.reddit.com/r/LinuxMalware/comments/f26amt/new_systemten_botnet_miner_threat_now_wother/
-
A minimal ELF dynamic loader for learning purposes (1 pts, 2020)
https://github.com/aleclearmind/eld
-
A Packed “Cat” in Your IoT – Packed ELF Bot Binary on Embedded Linux (1 pts, 2019)
https://imgur.com/a/Ak9zICq
-
Linux/AirDropBot – With reversing hands-out for ELF MIPS stripped binary on “r2” (1 pts, 2019)
https://blog.malwaremustdie.org/2019/09/mmd-0064-2019-linuxairdropbot.html
-
Application execution environment for statically-linked RISC-V ELF binaries (1 pts, 2019)
https://github.com/riscv/riscv-pk
-
Reversing statically linked ELF 32-bit file (1 pts, 2019)
https://news.ycombinator.com/item?id=20429895
-
Building an ELF File – Madeleine Goebel (1 pts, 2019)
https://yakshavingcream.blogspot.com/2019/06/building-elf-file.html
-
Tutorial on debugging ELF .so malware executed via LD_PRELOAD (1 pts, 2019)
https://old.reddit.com/r/LinuxMalware/comments/a6dil6/tutorial_video_on_debugging_elf_dynamic_malware/
-
R2CON (Reversing conference) talk about dissecting ELF custom packers (1 pts, 2019)
https://old.reddit.com/r/LinuxMalware/comments/9eqn6m/about_my_presentation_of_unpacking_the/
-
Trojan ELF Go-Lang Miner-Loader by SystemTen Aim Linux via Jenkins/Groovy RCE (1 pts, 2019)
https://imgur.com/a/H7YuWuj
-
Linux/DDoSMan and its C2 toolkit – How this brings old ELF trojan back to action (1 pts, 2019)
https://imgur.com/a/57uOiTu
-
VBA 1.8.0, VBA-M 2.0.2 – Multiple vulnerabilities in ELF file parser (1 pts, 2018)
https://www.youtube.com/watch?v=mHSWxxK6nA8
-
Solar powered electric bike-cars ELF and PEBL might just be weird enough to work (1 pts, 2018)
https://electrek.co/2018/06/04/solar-powered-electric-bike-cars-elf-and-pebl-might-just-be-weird-enough-to-work/
-
A PLT (Procedure Linkage Table) Hook Library for Android Native ELF (1 pts, 2018)
https://github.com/iqiyi/xHook
-
More Fun with ELF Files and GoLang – Code Caves (1 pts, 2017)
https://www.guitmz.com/more-fun-with-elf-files-and-golang-code-caves/#.WgMMiNiub6U.hackernews
-
Resources: Executable Files (ELF, Mach-O, PE) and Debugging Data (DWARF, PDB) (1 pts, 2017)
https://github.com/MattPD/cpplinks/blob/master/executables.md
-
About ELF auxiliary vectors (1 pts, 2017)
http://articles.manugarg.com/aboutelfauxiliaryvectors
-
Visualizing ELF binaries (2016) (1 pts, 2017)
https://reverseengineering.stackexchange.com/questions/6003/visualizing-elf-binaries/6004
-
The ELF: a car-like, solar-powered, electric-assisted velomobile (1 pts, 2017)
https://www.youtube.com/watch?v=r_xDuHuk4_E
-
SQL Server on Linux: ELF and PE Images Just Work (1 pts, 2017)
https://blogs.msdn.microsoft.com/bobsql/2017/01/05/sql-server-on-linux-elf-and-pe-images-just-work/
-
Midgetpack – Multiplatform secure ELF packer (1 pts, 2016)
https://github.com/arisada/midgetpack
-
Rp++: find ROP sequences in PE/Elf/Mach-O x86/x64 binaries (1 pts, 2016)
https://github.com/riusksk/rp
-
Show HN: A brainfuck compiler (no asm produced, just elf) (1 pts, 2015)
https://github.com/prooxod/lunafuck
-
Organic Transit – Exercise Your Power ELF Solar Pedal Power (1 pts, 2015)
http://organictransit.com/
-
Nifty tool to convert from ELF to Mach-O (1 pts, 2015)
https://github.com/vertis/objconv
-
BSD binutils for ELF (1 pts, 2014)
http://elftoolchain.sourceforge.net
-
China ELF botnet malware infection and distribution scheme unleashed (1 pts, 2014)
http://blog.malwaremustdie.org/2014/11/china-elf-botnet-malware-infection.html
-
Unix ELF File Format (1 pts, 2014)
http://vidcat.org/papers/unix-elf-binary-format-explained-step-by-step.html
-
Brainfuck to ELF executable compiler (1 pts, 2013)
https://github.com/Overv/BFC
-
Roll out the ELF to your City (1 pts, 2012)
http://www.kickstarter.com/projects/842248593/roll-out-the-elf-to-your-city
-
Rp++ PE/Elf/Mach-O ROP gadget finder (1 pts, 2012)
https://github.com/0vercl0k/rp
-
Constructing ELF Metadata (1 pts, 2012)
http://www.cs.dartmouth.edu/~bx/elf-bf-tools/slides/ELF-berlinsides-0x3.pdf
-
Python library for parsing ELF and DWARF (1 pts, 2012)
http://eli.thegreenplace.net/2012/01/06/pyelftools-python-library-for-parsing-elf-and-dwarf/
-
Interesting, historical article about the ELF file format (1 pts, 2011)
http://www.linuxjournal.com/article/1059?page=0,0
-
Recent Google Publications : "A New ELF Linker", Ian Lance Taylor (1 pts, 2010)
http://research.google.com/pubs/pub34417.html
-
Fun with Ld_preload [pdf] (1 pts, 2024)
https://yurichev.com/mirrors/LD_PRELOAD/lca2009.pdf
-
Show HN: Simple LD_PRELOAD-able memory allocator (1 pts, 2020)
https://github.com/TurkeyMcMac/bimp
-
Ld_preload Turbo (1 pts, 2019)
https://twitter.com/perbu/status/1100328477402849282
-
Another memory leak debugger by LD_PRELOAD (1 pts, 2018)
https://github.com/WuBingzheng/libleak
-
LD_PRELOAD in depth: code injection on Linux and macOS (1 pts, 2017)
https://www.datawire.io/code-injection-on-linux-and-macos/
-
Gopreload: LD_PRELOAD for the Gopher crowd (1 pts, 2017)
https://christine.website/blog/gopreload-2017-03-25
-
How to LD_PRELOAD JavaScript into native apps (1 pts, 2015)
http://www.frida.re/docs/modes/#preloaded
-
Subverting library calls with LD_PRELOAD (1 pts, 2013)
http://adamjsho.blogspot.com/2013/11/subverting-library-calls-with-ldpreload.html
-
LD_PRELOAD Hack to try and make latest ssh-agent auth socket always available.  (1 pts, 2013)
https://github.com/r4um/ssh-authsock-hack
-
Using cpython to do LD_PRELOAD hooks (1 pts, 2011)
http://blog.awilkins.id.au/2011/09/hello-mr-hooker.html
-
For want of a relative path to ld.so (1 pts, 2025)
https://www.corsix.org/content/for-want-of-a-relative-path
-
Understanding C++ virtual functions using readelf and objdump (1 pts, 2017)
https://codeyarns.com/2017/06/13/an-examination-of-c-virtual-functions/
-
Collaborative exploit development of this week: readelf (1 pts, 2014)
http://www.reddit.com/r/netsec/comments/1x7d5f/collaborative_exploit_development_of_this_week/
-
Binfmt_misc – arbitrary binary format handlers for Linux (1 pts, 2020)
https://en.wikipedia.org/wiki/Binfmt_misc
-
All about Global Offset Table (1 pts, 2021)
https://maskray.me/blog/2021-08-29-all-about-global-offset-table
-

