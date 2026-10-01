# The Reading List — Fuel for the Track 🔥

Articles, writeups, and long-reads to read *during work* when you need a hit of "this is why I'm doing this." Everything here is on-track for the [directions](README.md): RE, malware, assembly, exploitation, kernel, firmware, game hacking.

**How to use it without it becoming another passive time-sink:**
- Keep a `read.md` log — one line per article: date, title, and the single thing you'll *try* because of it. If an article doesn't make you want to open a terminal, skip to the next.
- Mix one **adrenaline** piece (Section A) with one **buildable** piece (anything with code) per session. Awe to light the fire, hands to keep it lit.
- Links marked ⭐ are the ones I'd read first.

---

## A. Legendary long-reads (pure adrenaline)

These are the "I can't believe this is real" epics. Read one when motivation is low — they remind you how deep the rabbit hole goes.

- ⭐ [A deep dive into an NSO zero-click iMessage exploit (FORCEDENTRY)](https://googleprojectzero.blogspot.com/2021/12/a-deep-dive-into-nso-zero-click.html) — Project Zero reverse-engineers a nation-state exploit that builds a *tiny virtual CPU* out of a 1990s image codec. Possibly the most jaw-dropping exploit writeup ever published.
- ⭐ [Reading privileged memory with a side-channel (Spectre/Meltdown)](https://googleprojectzero.blogspot.com/2018/01/reading-privileged-memory-with-side.html) — the disclosure post that broke every CPU on Earth. Hardware itself became the vulnerability.
- ⭐ [Project Zero: Introducing the In-the-Wild Series](https://projectzero.google/2021/01/introducing-in-wild-series.html) — a full real-world 0-day exploit chain (Chrome → sandbox → kernel) dissected across a multi-part series. The gold standard for exploit writeups.
- [Smashing the Stack for Fun and Profit — Aleph One, Phrack 49](https://phrack.org/issues/49/14) — the 1996 paper that created the entire field of memory-corruption exploitation. Read the thing everything else descends from.
- [Reflections on Trusting Trust — Ken Thompson](https://dl.acm.org/doi/10.1145/358198.358210) — the shortest, most mind-bending security paper ever written (widely mirrored as a free PDF). A compiler that backdoors itself invisibly. You'll never trust a binary the same way.
- *W32.Stuxnet Dossier* (Symantec) — the first cyber-weapon to break physical machines, reverse-engineered in full. Mirrored on [vx-underground](https://vx-underground.org/) and archive.org; search the title.

## B. Foundations & assembly mastery
*(feeds [Direction 09](09-assembly-via-compiler.md))*

- ⭐ [Reverse Engineering for Beginners — Dennis Yurichev](https://beginners.re/) — a free ~1000-page book that shows the *same C compiled to x86, x64, ARM, and MIPS* side by side. The single best bridge from "I write C" to "I read assembly." Dip into chapters, don't read front-to-back.
- ⭐ [Compiler Explorer (Godbolt)](https://godbolt.org/) — not an article, a habit: paste C, watch the asm, toggle `-O0`/`-O2`. Ten minutes a day and assembly stops being mysterious.
- [What Every Programmer Should Know About Memory — Ulrich Drepper](https://www.akkadia.org/drepper/cpumemory.pdf) — why caches, pages, and TLBs make your code fast or slow. Dense, legendary, worth it in pieces.
- [Agner Fog's optimization manuals](https://www.agner.org/optimize/) — the microarchitecture bible: how instructions *actually* execute on the pipeline.
- [The ryg blog — Fabian Giesen](https://fgiesen.wordpress.com/) — low-level performance and bit-twiddling from one of the sharpest systems minds writing publicly.
- [Open Security Training 2 (OST2)](https://ost2.fyi/) — free, deep architecture/RE courses (you already use the Arch1001 steppers). Xeno Kovah's x86-64 material is the real deal.

## C. Build the tools from scratch
*(feeds [Direction 04](04-re-toolsmith.md))*

- ⭐ [How debuggers work: Part 1 — Eli Bendersky](https://eli.thegreenplace.net/2011/01/23/how-debuggers-work-part-1) — `ptrace`, breakpoints (`0xCC`), and single-stepping, implemented from zero. Read this, then write your own debugger; your stack confusion dies here.
- [A Whirlwind Tutorial on Creating Really Teensy ELF Executables — Brian Raiter](https://www.muppetlabs.com/~breadbox/software/tiny/teensy.html) — hand-craft the smallest possible working ELF, byte by byte. Nothing teaches the format faster.
- [Corkami visual binary-format posters — Ange Albertini](https://github.com/corkami/pics) — ELF, PE, and more drawn as gorgeous one-page maps. Tape one above your desk.

## D. Binary exploitation, pwn & vuln research
*(feeds [Directions 02](02-ctf-ladder.md) & [06](06-vuln-research-exploit-dev.md))*

- ⭐ [LiveOverflow — Binary Exploitation / blog](https://liveoverflow.com/) — the most beginner-friendly on-ramp to pwn that still respects your intelligence. Project-driven, exactly your style.
- ⭐ [Nightmare — guyinatuxedo](https://guyinatuxedo.github.io/) — a free, hands-on binary-exploitation course built entirely from real CTF challenges with full writeups. Read-then-solve.
- [Corelan: Exploit writing tutorial, Part 1 — Stack Based Overflows](https://www.corelan.be/index.php/2009/07/19/exploit-writing-tutorial-part-1-stack-based-overflows/) — the classic, meticulous series that taught a generation to write exploits.
- [Azeria Labs — ARM assembly & exploitation](https://azeria-labs.com/) — the best free ARM exploitation tutorials anywhere. Pairs perfectly with your ARM interest.
- [gamozolabs blog — Brandon Falk](https://gamozolabs.github.io/) — world-class fuzzing, emulation, and performance writeups. Intense and inspiring.
- [Connor McGarr — exploit development](https://connormcgarr.github.io/) — modern, clearly-written Windows/Linux exploit-dev walkthroughs including kernel.
- [Trail of Bits CTF Field Guide](https://trailofbits.github.io/ctf/) — how to actually play and win at RE/pwn CTFs.

## E. Heap & advanced memory corruption

- ⭐ [shellphish / how2heap](https://github.com/shellphish/how2heap) — every glibc heap-exploitation technique as runnable, commented code. The canonical heap curriculum.
- [Nightmare: Heap Exploitation chapter](https://guyinatuxedo.github.io/25-heap/index.html) — the gentle, guided path into the heap before how2heap's deep end.

## F. Linux kernel: rootkits & exploitation
*(feeds [Direction 01](01-kernel-rootkit-re.md) and the kernel tier of [06](06-vuln-research-exploit-dev.md))*

- ⭐ [Linux Rootkits series — TheXcellerator](https://xcellerator.github.io/posts/linux_rootkits_01/) — build a modern LKM rootkit step by step with ftrace hooking: hide processes, ports, files, grant root. Directly on your home turf.
- [The Linux Kernel Module Programming Guide (LKMPG)](https://sysprog21.github.io/lkmpg/) — the maintained, modern-kernel LKM bible. Your launchpad.
- ⭐ [xairy/linux-kernel-exploitation](https://github.com/xairy/linux-kernel-exploitation) — a curated firehose of every serious Linux-kernel exploitation writeup, talk, and CTF. Bookmark and graze forever.
- [a13xp0p0v/kernel-hack-drill](https://github.com/a13xp0p0v/kernel-hack-drill) + [linux-kernel-defence-map](https://github.com/a13xp0p0v/linux-kernel-defence-map) — a vulnerable module to practice on, and a map of every kernel hardening mechanism.
- Answer-key rootkits to read + reverse: [Diamorphine](https://github.com/m0nad/Diamorphine) and [Reptile](https://github.com/f0rb1dd3n/Reptile).

## G. Malware analysis
*(feeds [Direction 05](05-malware-analyst-track.md) & [07](07-anti-analysis-arms-race.md))*

- ⭐ [hasherezade's 1001 nights](https://hshrzd.wordpress.com/) — malware RE, unpacking, and process-injection tutorials from the author of PE-bear/PE-sieve. Start with her [How to start RE/malware analysis?](https://hshrzd.wordpress.com/how-to-start/).
- ⭐ [OALABS research](https://research.openanalysis.net/) — intensely practical unpacking and config-extraction writeups (pairs with the @OALABS videos in your vault).
- [MalwareTech — beginner malware reversing](https://www.malwaretech.com/) — Marcus Hutchins' approachable RE challenges and writeups.
- [Kaspersky Securelist](https://securelist.com/) — the APT epics: Equation Group, Flame, and other nation-state deep-dives.
- [The DFIR Report](https://thedfirreport.com/) — "real intrusions by real attackers," reconstructed hour by hour. Reads like a thriller.
- [Elastic Security Labs](https://www.elastic.co/security-labs) and [Check Point Research](https://research.checkpoint.com/) — steady streams of fresh, detailed malware teardowns.
- [FLARE-On challenges & official writeups](https://flare-on.com/) — gamified malware RE; every past year is playable, every solution is published.

## H. Firmware, embedded & hardware
*(feeds [Direction 03](03-firmware-iot-re.md))*

- ⭐ [Microcorruption](https://microcorruption.com/) — an in-browser embedded CTF: debug and defeat a (simulated) MSP430 lock. Absurdly fun, zero setup, teaches disassembly + debugging painlessly.
- [fail0verflow blog](https://fail0verflow.com/blog/) — legendary console-hacking (PS3/PS4, Switch) and hardware RE. The pinnacle of "own the device."
- [Azeria Labs](https://azeria-labs.com/) — again: your ARM reference for firmware work.

## I. Game hacking & anti-cheat RE
*(feeds the [Tibia plan](../tibia-malware-learning-plan.md) & [Direction 07](07-anti-analysis-arms-race.md))*

- ⭐ [secret.club](https://secret.club/) — reverse-engineering anti-cheats (BattlEye, EAC), hypervisor detection, and packet encryption. Cutting-edge, Windows-kernel-flavored, exactly the Tibia-adjacent world.
- [secret.club: BattlEye reverse-engineer tracking](https://secret.club/2020/03/31/battleye-developer-tracking.html) — how an anti-cheat hunts the people reversing it. A real cat-and-mouse story.

## J. Automated RE: emulation & symbolic execution
*(feeds [Direction 08](08-automated-re-emulation-symbolic.md))*

- ⭐ [angr_ctf — jakespringer](https://github.com/jakespringer/angr_ctf) — learn symbolic execution by letting angr solve a graded ladder of crackmes. The "the binary solved itself" moment.
- [gamozolabs blog](https://gamozolabs.github.io/) — again: the best public writing on emulators and snapshot fuzzing.

## K. Deep internals & "how things really work"

- [The Old New Thing — Raymond Chen](https://devblogs.microsoft.com/oldnewthing/) — decades of Windows internals war-stories from someone who was there. Endlessly browsable.
- [Alex Ionescu's blog](https://www.alex-ionescu.com/) — Windows kernel internals at the deepest level.
- [xorl %eax, %eax](https://xorl.wordpress.com/) — years of concise CVE and advisory breakdowns; great for "read one bug a day."
- [Gynvael Coldwind](https://gynvael.coldwind.pl/) — RE, CTF, and security brain-food from a long-time Project Zero / CTF legend.
- [Hex-Rays blog](https://hex-rays.com/blog/) and [Binary Ninja blog](https://binary.ninja/blog/) — tooling internals and RE technique from the people building the disassemblers.

## L. Read-then-DO: wargames & challenge sites

Reading is kindling; these keep the fire lit. Each has writeups you can read *after* you try.

- [crackmes.one](https://crackmes.one/) — bottomless supply of RE puzzles, any difficulty.
- [pwn.college](https://pwn.college/) — the structured dojo; theory + graded hands-on.
- [ROP Emporium](https://ropemporium.com/) — learn return-oriented programming through a clean challenge ladder.
- [exploit.education](https://exploit.education/) — Phoenix/Protostar: the friendliest intro to memory-corruption practice.
- [pwnable.kr](http://pwnable.kr/) & [pwnable.tw](https://pwnable.tw/) — classic, elegant pwn challenges with a rating ladder.

## M. Subscribe to these — the endless stream

Point an RSS reader at these so fresh fuel arrives without you hunting for it:

- **Project Zero** — https://projectzero.google/ (the exploit epics)
- **Trail of Bits** — https://blog.trailofbits.com/ (tooling + deep technique)
- **Securelist / The DFIR Report / Elastic Security Labs / Check Point Research** — the malware & intrusion firehose (links above)
- **secret.club** — https://secret.club/ (RE + game/anti-cheat)
- **xairy's kernel list** — https://github.com/xairy/linux-kernel-exploitation (kernel, updated regularly)
- **Hex-Rays + Binary Ninja blogs** — tooling technique
- **r/ReverseEngineering** and **Hacker News** — your existing feeds; keep them.

---

**The point of this whole file:** awe is renewable, but only if you convert it to motion. Every article that lights you up should end with you logging one concrete thing to *try* — a struct to rebuild, a crackme to solve, a rootkit to load in a VM, a packet to decrypt. Read to get fired up; then go make something move.
