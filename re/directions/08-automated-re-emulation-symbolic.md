# Direction 08 — Automated RE: Emulation & Symbolic Execution

**Pitch:** Stop single-stepping by hand — teach a machine to solve crackmes for you. Chess-engine energy, but for binaries.

## Why this fits you

You're a programmer who likes elegant systems, and this is the "write a solver, not a solution" mindset applied to RE. It also finally pays off all your manual stack work: once you've suffered through stepping by hand, automating it is deeply satisfying, and you understand exactly what the tools are abstracting away.

## The ladder

1. **First-hour win — emulate one function.** Use Unicorn in Python to run a single function from a real binary: map its code, set up registers and stack, execute, read the result. No full process needed. *(skill 27)*
2. **Build a tracer.** Capstone + Unicorn: log every instruction and the register/memory delta it causes. Given your stack struggles, watching this stream is genuinely clarifying. *(skills 4, 6)*
3. **Solve a crackme with angr.** Symbolic execution: declare "reach this address, avoid that one," and let the SMT solver hand you the valid input. This is the magic moment that reframes RE for you. *(skill 28)*
4. **Go harder.** Use angr or Triton for concolic deobfuscation, or to automatically find an input that triggers a buffer overflow. *(skills 21, 25)*
5. **Full-system & exotic targets.** QEMU TCG plugins for malware that won't run natively, or to emulate an unusual architecture end to end. *(skill 27)*
6. **Capstone.** An automated crackme-solver or a deobfuscation script, written up. A rare, impressive skill that signals real engineering depth.

## Answer key

**angr_ctf** (jakespringer) is a perfectly graded set of challenges that teaches angr step by step; the Triton examples; the official angr docs and example scripts.

## Tools

Unicorn, Capstone, angr, Triton, Z3.

## Channels (already in your vault)

@gamozolabs (emulators and fuzzing at a high level), @LiveOverflow (approachable angr videos), @allthingsida.

**The fun hook:** typing one command and watching `angr` print the password you never reverse-engineered by hand — the binary solved itself.
