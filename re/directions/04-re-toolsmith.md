# Direction 04 — RE Toolsmith: Build the Tools to Understand RE

**Pitch:** You're a C/kernel dev. The deepest way for *you* to learn reverse engineering is to build the tools, not just drive them.

## Why this fits you

You learn systems by building them. Writing the parser, the tracer, the debugger forces you to truly understand ELF, ptrace, and instruction encoding — the exact things you currently only "sort of" know. This direction also directly cures your stack-memory confusion: you stop being confused about breakpoints and single-stepping the moment you *implement* them.

## The ladder

1. **ELF parser from scratch (C).** Parse the header, program/section headers, and symbol table; reproduce a slice of `readelf`. You already have elf-mastery notes — now turn them into running code. *(skills 1, 9)*
2. **A ptrace tracer, then a debugger.** First reimplement `strace` (intercept syscalls). Then a minimal debugger: software breakpoints via `0xCC` (INT3), single-step, read/write registers and memory. **This is where stack frames finally click**, because you're the one restoring them. *(skills 11, 6, 23)*
3. **A disassembler front-end (Capstone).** Turn raw bytes into instructions, then resolve and annotate call/jump targets. For depth, hand-decode a few x86 instructions (ModRM/SIB) so encoding stops being magic. *(skills 4, 15)*
4. **A Ghidra or Binary Ninja plugin.** Automate something tedious — auto-rename functions by signature, flag crypto constants. You already have a Binary Ninja roadmap; this is the payoff. *(skill 26)*
5. **A toy packer + unpacker.** Compress/encrypt a binary and write the stub loader; then write the tool that unpacks it. *(skills 21, 22)*
6. **Capstone.** Open-source one tool and write it up. "I wrote my own debugger / disassembler" is a line that makes the companies in your `jobs/` folder stop scrolling.

## Answer key

Eli Bendersky's "Writing a Linux debugger / ptrace" series, "How debuggers work," the Capstone and pwntools source. Compare your output against the real `readelf`/`strace`/`objdump`.

## Tools

C, Python, Capstone, Unicorn, ptrace, the Ghidra/Binary Ninja SDK.

## Channels (already in your vault)

@LowByteProductions (build-it-from-scratch), @allthingsida (IDA scripting), @InvokeReversing, @GHIDRAuto.

**The fun hook:** the moment *your* debugger catches *your* breakpoint and prints the registers you asked for.
