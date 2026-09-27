# Assembly Learning Path

The actual sequence I took to learn assembly:

1. [pwn.college — Computing 101](https://pwn.college/computing-101/)
2. OST2 — Architecture 1001: x86-64 Assembly

## Number base conversions

Being able to quickly convert between binary, hexadecimal, and decimal is an essential skill when reading assembly. You need to have memorized all the conversions on the below table:

| Decimal (base 10) | Binary (base 2) | Hexadecimal (aka "Hex") (base 16) |
|-------------------|-----------------|-----------------------------------|
| 00                | 0000b           | 0x00                              |
| 01                | 0001b           | 0x01                              |
| 02                | 0010b           | 0x02                              |
| 03                | 0011b           | 0x03                              |
| 04                | 0100b           | 0x04                              |
| 05                | 0101b           | 0x05                              |
| 06                | 0110b           | 0x06                              |
| 07                | 0111b           | 0x07                              |
| 08                | 1000b           | 0x08                              |
| 09                | 1001b           | 0x09                              |
| 10                | 1010b           | 0x0A                              |
| 11                | 1011b           | 0x0B                              |
| 12                | 1100b           | 0x0C                              |
| 13                | 1101b           | 0x0D                              |
| 14                | 1110b           | 0x0E                              |
| 15                | 1111b           | 0x0F                              |

If you haven't done a lot of this conversion in a while (or ever), you are recommended to play the following games:

- [Flippy Bit and the Attack of the Hexadecimals from Base 16](https://flippybitandtheattackofthehexadecimalsfrombase16.com/) — (This tests Hex<->Binary) You should be able to get at least a score of 25 before proceeding in this class
- [Cisco Binary Game](https://learningnetwork.cisco.com/s/binary-game) — (This tests Binary<->Decimal)

### General formula for hex positions

Each hex digit is worth its value times a power of 16, based on its position (counting from 0 at the rightmost digit):

```
value = dₙ × 16ⁿ + ... + d₂ × 16² + d₁ × 16¹ + d₀ × 16⁰
```

The place values are: 16⁰ = 1, 16¹ = 16, 16² = 256, 16³ = 4096, ...

Example: `0x1A3F`

```
0x1A3F = 1 × 16³ + A × 16² + 3 × 16¹ + F × 16⁰
       = 1 × 4096 + 10 × 256 + 3 × 16 + 15 × 1
       = 4096 + 2560 + 48 + 15
       = 6719
```


# Practical Reverse Engineering Book

	MSRs (model-specific registers)
		RDMSR/WRMSR instructions.
		Ring 0 ONLY
		SYSENTER instruction -> IA32_SYSENTER_EIP MSR (0x17) === OS syscall handler
	CR0 : CR3

	Instruction Set:


Google: Online disassembler

https://github.com/yrp604/rappel

https://learn.microsoft.com/en-us/cpp/build/x64-software-conventions?view=msvc-160

Kernel Recipes 2026: Single place to learn Linux kernel internals
Day 1: https://lnkd.in/dTE83Tpd
Day 2: https://lnkd.in/d8vcnmnW
Day 3: https://lnkd.in/ddv5dBaY


# Assembly
- https://esr.arm64.dev/ - Goolge: aarch64-esr-decoder
- https://godbolt.org/ - Google: https://godbolt.org/
- rappel - https://github.com/yrp604/rappel
