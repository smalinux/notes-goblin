# Direction 01 — Linux Kernel Rootkit RE & Defense

**Pitch:** Turn your single biggest advantage — kernel + C — into a specialty almost no malware analyst has.

## Why this fits you

You already live in the kernel; most RE and malware people are scared of it. Linux kernel rootkits are rare, high-value, and sit on your home turf. This is the one domain where you start as an expert instead of a beginner — so lean into it hard.

## The ladder

1. **First-hour win — make `ps` lie to you.** Write a hello-world LKM that hides a chosen process by hooking the syscall table (or via ftrace). Load it, watch the process vanish from `ps`. *(skills 23, kernel/user boundary)*
2. **Full rootkit basics.** Extend it to hide a file, then a listening port, then the module itself. Classic techniques: syscall hooking, VFS hooking, `/proc` tampering, giving root on a magic signal. *(skills 16, 21)*
3. **Reverse a real one.** Read the source of an open-source rootkit (Diamorphine, Reptile) — that's your answer key — then compile it, load the `.ko` into Ghidra, and match the compiled code back to the source you just read. *(skills 10, 15, 16)*
4. **Switch sides — build a detector.** Compare the live syscall table against a known-good baseline, walk the module list for hidden entries, use kprobes to catch the hooks. This is EDR/detection-engineering work. *(skill 29: malware track)*
5. **The eBPF era.** Write an eBPF-based rootkit (a hot, current area) and then an eBPF-based detector. This is where the field is moving and where your kernel fluency is gold.
6. **Capstone.** A blog series "Linux rootkits and how to catch them," or a small anti-rootkit / kernel-integrity tool. Standout portfolio for detection-engineering and EDR roles.

## Answer key

Diamorphine and Reptile source on GitHub; "Linux Kernel Programming" (Kaiwan Billimoria); the LKM rootkit tutorial lineage (bendersky/mncoppola style writeups).

## Tools

QEMU + a custom-built kernel (**never your host**), kernel GDB via `qemu -s -S`, ftrace, bpftrace/bcc, Ghidra for the `.ko`.

## Channels (already in your vault)

@deeplinux2248 (inside Linux executables & the OS guts), @CoreDumpped (animated OS internals), @gamozolabs (deep systems).

## Safety

Everything runs in a throwaway VM with snapshots. A rootkit you wrote is still a rootkit — never load it on a machine you care about.

**The fun hook:** making the system lie to you, then being the one person who can catch the lie.
