# Direction 03 — Firmware & IoT / Router RE (ARM & MIPS)

**Pitch:** Buy a $20 router and own it completely — the most physically tangible RE there is.

## Why this fits you

This puts your ARM knowledge to work, runs on your Linux/C strengths (embedded *is* Linux), and gives you a real object in your hand that you fully control. Real-world CVEs are everywhere in this space, and the targets are cheap and legal to attack because you own them.

## The ladder

1. **First-hour win — crack open a firmware image.** Download a router's firmware, run `binwalk` on it, extract the SquashFS root filesystem. You're now browsing the device's entire OS. *(skills 1, 22: firmware blobs)*
2. **Find the attack surface.** Locate the web server and CGI binaries (MIPS or ARM), load them into Ghidra, and start reading. *(skills 8: ARM, 10, 15)*
3. **Emulate it.** Use QEMU with FirmAE/firmadyne to boot and debug the firmware without the physical hardware — set breakpoints, poke the web UI. *(skill 27: emulation)*
4. **Find a bug.** Command injection in a CGI parameter is the classic starter. Write a PoC request that pops a shell. *(skills 25, 23)*
5. **Go to hardware.** Solder UART headers for a serial root shell; dump the flash with a cheap SPI programmer. This is the embedded/ARM depth you've wanted. *(skill 22)*
6. **Capstone.** Reproduce a known router CVE end to end (a "1-day"), then hunt a fresh bug on an end-of-life device and practice coordinated disclosure.

## Answer key

Published router-CVE writeups (always reproduce a known bug before hunting a new one); intentionally-vulnerable training targets: OWASP IoTGoat and DVRF (Damn Vulnerable Router Firmware).

## Tools

binwalk, QEMU + FirmAE/firmadyne, Ghidra, a USB-UART adapter, a logic analyzer, a SPI flash programmer.

## Channels (already in your vault)

@stacksmashing, @atc1441, @ColinOFlynn, @FlashbackTeam (router pwn), @LiveOverflow.

**The fun hook:** a real device on your desk that does exactly what *you* tell it, down to the serial console.
