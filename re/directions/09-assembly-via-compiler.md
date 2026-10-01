# Direction 09 — Master Assembly by Mastering the Compiler

**Pitch:** You asked how to get better at assembly. The fastest route isn't more asm drills — it's learning exactly what the compiler *does* to your C.

## Why this fits you

You already write C fluently. Connecting C to assembly *through the compiler* turns assembly from memorization into understanding — you stop asking "what does this instruction do" and start knowing "this is the prologue the compiler emits for a frame with locals." It also kills your stack-memory frustration at the root, because you finally see *why* the compiler emits each push, sub, and mov.

## The ladder

1. **First-hour win — Compiler Explorer (godbolt.org).** Write a C snippet, read the asm beside it, toggle `-O0` vs `-O2`, watch it transform. Make this a 10-minute daily habit. *(skills 4, 5)*
2. **Catalogue the patterns.** Build a personal "C construct → asm pattern" deck: loops, `switch` (jump tables), structs, prologue/epilogue, inlining, the full stack frame. This *is* roadmap skill 16, done deliberately. *(skills 16, 9)*
3. **Calling conventions for real.** Put SysV (Linux), Microsoft x64, and AArch64 side by side in Godbolt. You half-know these from memory — now watch them actually get emitted. *(skill 8)*
4. **Watch the optimizer.** See `-O2` do constant folding, auto-vectorization (SIMD), and tail calls — and understand why decompilers choke on optimized code. *(skill 16)*
5. **Emit assembly yourself.** Write a toy compiler: a tiny expression evaluator, or Brainfuck, that generates x86-64. Nothing teaches assembly like having to produce correct code. *(skills 4, 26)*
6. **Capstone.** Extend your existing `as/` steppers with "here's the C → here's the asm → here's why" pages. This turns study into your signature notes-goblin artifact.

## Answer key

Godbolt itself is the ultimate answer key — C and asm, side by side, instantly. Back it with "Computer Systems: A Programmer's Perspective," chapter 3.

## Tools

Compiler Explorer, `gcc/clang -S`, `objdump -d`, a toy code generator.

## Channels (already in your vault)

@Bisqwit (writes compilers/codegen on stream), @CoreDumpped (animated internals), @Creel/WhatsACreel (x86 & SIMD), @LowLevelTV.

**The fun hook:** the same prediction game as your stack fix, scaled up — guess the exact asm before Godbolt reveals it, and watch your hit rate climb until the compiler stops surprising you.
