---
created: 2026-08-31
tags: []
---
## TOC
- Intro تحفه
- Binary Files     -> intro about ELF
- 

فى المستقبل هقعد ابعبص كتييير فى ELF وهتعمق فيه, مش هيكون مجرد فيديوه مدته 20 دقيقه.
< لازم اتعلم Qemu كويس جدا علشان ابدأ اجرب فيروسات حساسه جوا بيئه محدده.. كمان اداة wine linux


man syscall
man open

____



1. use asm intel syntax 🌟
2. Master ELF file
3. Tools
	1. Static
		1. Kaitai
	2. Dynamic

ازاى تشوف ابسط مثال asm من كود hello world مكتوب بالسى
```bash
gcc -S -masm=intel hello.c
vim hello.S  # Very readable... assembing step

gcc -o hello hello.c
objdump -M intel -d hello # not very readable,

strip hello    # shipping, or release, remove any extra data, harder for objdump
```




```bash
readelf -a /bin/cat

```


اداة Kaitai احد الادوات اللى ترفع بيها files فى المتصفح وتقرأ الـ binary - مش بس elf ممكن image وممكن zip files - محتاج اقعد اتنح فيه مدة, ارفع ملف cat مثلا وتنح كتييير وافهم
- https://ide.kaitai.io/devel/
	- https://github.com/kaitai-io/kaitai_struct_webide
	- https://github.com/kaitai-io/awesome-kaitai
	- https://gettocode.com/2017/09/22/kaitai-web-ide-on-windows-and-linux/
	- https://www.techwriter.ai/kaitai/tooling/web-ide-and-gallery

	Kaitai Struct Web IDE — a browser tool for reverse-engineering binary file formats. You write a `.ksy` spec (YAML describing fields and layout), load a binary, and it shows a hex dump plus a parsed object tree. Comes with ready-made specs for PNG, ZIP, ELF, etc. The spec can then be compiled into parser code for a dozen languages.



## Master ELF files
مقالات مفيدة جدا لفهم الـ ELF
https://intezer.com/blog/executable-and-linkable-format-101-part-1-sections-and-segments
https://intezer.com/blog/executable-linkable-format-101-part-2-symbols
https://intezer.com/blog/executable-and-linkable-format-101-part-3-relocations
https://intezer.com/blog/executable-linkable-format-101-part-4-dynamic-linking


## ازاى تحلل ملفات ELF؟ فيه عشرات الادوات بعمل ده
```bash

readelf -a /bin/cat
nm -D /bin/cat
patchelf # load libs inside your app to import later # sudo apt install patchelf


# gcc          - to make your ELF.
# readelf      - to parse the ELF header.
# objdump      - to parse the ELF header and disassemble the source code.
# nm           - to view your ELF's symbols.
# patchelf     - to change some ELF properties.
# objcopy      - to swap out ELF sections.
# strip        - to remove otherwise-helpful information (such as symbols).
# kaitai struct (https://ide.kaitai.io/) - to look through your ELF interactively.
```
الموضوع ابسط مما تتخيل, هات app انت عامله او كاتبه بايدك بسيط جدا وعملتله compile واقعد اعمله reverse كانك شخص تانى.
الخطوة الجايه انك تعيش فى الـ man pages بتاعت كل الادوات دى وتفهم كويس جدا اجزاء الـ ELF


## How Linux Loads Processes?

https://0xax.gitbooks.io/linux-insides/content/SysCall/linux-syscall-4.html

	- /proc/sys/fs/binfmt_misc/

المصدرين دول مش كفايه, انا كان عندى كتب اعمق من المقالات دى بتوصف بالضبط ازاى الكيرنال بـ load الـ processes
لكن دى مجرد hints للى اتشرح فى الفيديوهات: والـ slides فعلا حلوه بتاعت الفيديوهات:

لو كتبت تغير مكان الـ interprater:
```bash
patchelf --set-interprater /some/interprater ./cat
```

```bash
man 2 execve
	# ENOENT
# ldd
# lddtree
# strace ./cat myfile -- print all syscall, how kernel loads exactly
#              هنا تقدر تشوف بالضبط الكيرنال نادت على اى انتربرتر
# ltrace
```

إزاي الكيرنل بيعمل Load لملف ELF:
```bash
# 1. The program and its interpreter are loaded by the kernel.
#
# 2. The interpreter locates the libraries.
#    a. LD_PRELOAD environment variable, and anything in /etc/ld.so.preload
#    b. LD_LIBRARY_PATH environment variable (can be set in the shell)
#    c. DT_RUNPATH or DT_RPATH specified in the binary file (both can be modified with patchelf)
#    d. system-wide configuration (/etc/ld.so.conf)
#    e. /lib and /usr/lib
#
# 3. The interpreter loads the libraries.
#    a. these libraries can depend on other libraries, causing more to be loaded
#    b. relocations updated
```


###### هنا هيكتب syscall جديد بدل الـ read syscall وبعدين هيـ load الملف كـ shared library وهتشوف بـ strace انه فعلا نادى عليها وعملها load

```c
// preload.c — override read() to always return "pwn\n"
int read(int fd, char *buf, int n)
{
	buf[0] = 'p';
	buf[1] = 'w';
	buf[2] = 'n';
	buf[3] = 'e';
	buf[4] = 'd';
	buf[5] = '\n';
	return 6;
}
```

```bash
gcc -shared -o preload.so preload.c
LD_PRELOAD=./preload.so cat myfile
strace -E LD_PRELOAD=./preload.so cat myfile
```

مفيد جدا هنا شوف كل الاماكن اللى الكيرنال بتدور فيها على الـ library علشان تعملها linking
```bash
# missup with the load order of loading library
strace -E LD_LIBRARY_PATH=/some/library/path ./cat myfile

# openat(AT_FDCWD, "/some/lib/path/glibc-hwcaps/x86-64-v3/libc.so.6", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
# newfstatat(AT_FDCWD, "/some/lib/path/glibc-hwcaps/x86-64-v3/", 0x7ffcaf1ab070, 0) = -1 ENOENT (No such file or directory)
# openat(AT_FDCWD, "/some/lib/path/glibc-hwcaps/x86-64-v2/libc.so.6", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
# newfstatat(AT_FDCWD, "/some/lib/path/glibc-hwcaps/x86-64-v2/", 0x7ffcaf1ab070, 0) = -1 ENOENT (No such file or directory)
# openat(AT_FDCWD, "/some/lib/path/libc.so.6", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
# newfstatat(AT_FDCWD, "/some/lib/path/", 0x7ffcaf1ab070, 0) = -1 ENOENT (No such file or directory)
# openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3 <---- found it
```


تحذير خطير 🛑 احذر اللعب من /etc/ld.so.preload دى اسرع طريق تبوظ بيها كل الـ system ومفيش طريقه تعمل بيها revert 
```bash
patchelf --set-rpath /some/library/path /usr/bin/cat
```



حاجات حملت حاجات, وحاجات حملت حاجات تانيه ممكن تشوفهم بـ lddtree
السؤال بقى هنا, الحاجات دى بقى اتحملت فين؟ virtual memory

طريقه علشان تطبع بيها شكل الـ virtual memory من وجه نظر الـ process اللى موجوده حاليا cat:
```bash
/usr/bin/cat /proc/self/maps
```


اقرأ: https://gist.github.com/CMCDragonkai/10ab53654b2aa6ce55c11cfc5b2432a4


### Static linking

```bash
gcc -static -o static-cat cat.c
./static-cat /proc/self/maps # look here and compare with normal ./cat
lddtree static-cat # NO linking with anything - but the size is huge!
```


### Why you do care?
من وقت للتانى هيكون عندك امكانيه انك تحقن library خاصه بيك جوا process هنا ابسط سيناريو:

```c
// preload.c
__attribute__((constructor)) void wtf()
{
	write(1, "haha!\n", 6);
}

int read(int fd, char *buf, int n)
{
	buf[0] = 'p';
	buf[1] = 'w';
	buf[2] = 'n';
	buf[3] = 'e';
	buf[4] = 'd';
	buf[5] = '\n';
	return 6;
}
```

```bash
gcc -shared -o preload.so preload.c # compile your lib

# The constructor runs first (prints haha!), then the overridden read syscall
LD_PRELOAD=./preload.so ./cat cat.c | grep haha
# haha!
# pwned
# pwned
# pwned
# pwned
# pwned
# pwned
# pwned
# pwned
```


## Process Exec ==WATCH AGAIN==

تمام الكيرنال علمت load اخيراً لـ process, ازاى بقى الكيرنال بيبدأ الـ exec؟

```bash
# 1. libc_start_main
# 2. argc - argv - env variables
# 3. 
# 4. signals --- $ man 7 signal --- $ kill -l
# 5. shared memory IPC - Claude man page for: /dev/shm

```


### syscall table
- https://x64.syscall.sh/
- https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/
- https://filippo.io/linux-syscall-table/
- https://syscalls.mebeim.net/?table=x86/64/x64/latest
- https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md

```bash
man syscall
man open
```


## Function & Frames ==WATCH AGAIN==
من وجه نظر الـ reverse engineering
هنا قصه حياة الـ function فى الـ memory .. قصه حزينه مع الـ stack & heap
اجمل حاجه فى الفيديو دا انه شرح بالاسمبلى مع السى طول الوقت. حلو جدا ان الاسمبلى يبقى قدام عينى طول الوقت لانه اقرب للميمورى

![[Pasted image 20260904152853.png]]


## Data Access ==WATCH AGAIN==


## Reverse Engineering - Static Tools
==حيث ستقضى وقت تتنح وتبعبص...== اظن **الهدف** من النقطه دى انى اكون مستريح جدا مع كل الادوات دى قبل ما اكمل خطوات اضافيه فى الرحلة دى
### Simple stuff

- **kaitai struct** ([https://ide.kaitai.io/](https://ide.kaitai.io/)): file format parser and explorer
- **nm:** lists symbols used/provided by ELF files
- **strings:** dumps ASCII (and other format) strings found in a file
- **objdump:** simple disassembler
- **checksec** ([https://github.com/slimm609/checksec.sh](https://github.com/slimm609/checksec.sh)): analyzes security features used by an executable

### Advanced Disassemblers

Reverse engineering is a hot topic, with several state-of-the-art tools:
### Commercial
- **IDA Pro:** the "gold standard" of disassemblers ([https://www.hex-rays.com/products/ida/](https://www.hex-rays.com/products/ida/))
- **Binary Ninja:** IDA's main commercial competitor ([https://binary.ninja/](https://binary.ninja/))
### Free
- ==**Binary Ninja Cloud:**== a version of Binary Ninja that runs in your browser! ([https://cloud.binary.ninja/](https://cloud.binary.ninja/)) ⭐
### Open source
- **angr management:** an academic binary analysis framework! ([https://github.com/angr/angr-management/releases](https://github.com/angr/angr-management/releases))
- **ghidra:** a reversing tool created by the National Security Agency ([https://ghidra-sre.org/](https://ghidra-sre.org/))
- **cutter:** a reversing tool created by the radare2 open source project ([https://cutter.re/](https://cutter.re/))

## Reverse Engineering - Dynamic Tools

### Program Tracing
- **ltrace** traces library calls
- **strace** traces system calls
- **gdb**: 
	- https://youtu.be/HcBordv7aWU?t=246 1 min only.
	- https://sourceware.org/gdb/current/onlinedocs/gdb.html/Process-Record-and-Replay.html
	- 
Running the program with multiple different inputs might get you farther.
- ltrace the program with input A
- ltrace the program again with input B
- see if you can reverse the algorithm from looking at input and output
- still does not scale to complex algorithms

**qira** (QEMU Interactive Runtime Analyzer) project page:
- https://github.com/geohot/qira
- https://qira.me/
- https://web.archive.org/web/20260217093709/https://qira.me/

rr
- https://github.com/rr-debugger/rr

### Timeless Debugging

Timeless debugging frees you from having to think of breakpoints ahead of time.

1. record execution
2. rewind execution
3. replay execution

### Relevant tools
- **gdb** has built-in record-replay functionality ([https://sourceware.org/gdb/current/onlinedocs/gdb/Process-Record-and-Replay.html](https://sourceware.org/gdb/current/onlinedocs/gdb/Process-Record-and-Replay.html)) ⭐
- **rr** is a highly-performant record-replay engine ([https://github.com/mozilla/rr](https://github.com/mozilla/rr)) ⭐
  دا تجاهلوه فى الكورس علشان متطلب جهاز يكون حديث وقوى, وبـ hardware قوى, ممكن اجربه بعد الكورس.
- **qira** is a timeless debugger made for reverse engineering ([https://qira.me/](https://qira.me/))
  دا شكله لطيف لكن لو بطلو يعملوله update مش هجربه, 



## Other resources
There are many resources related to reverse engineering around the internet.

- A good place to start is a series of walkthroughs of several hacking challenges by ASU's own Adam Doupe on his [YouTube channel](https://www.youtube.com/watch?v=qGt-0OOAFcM&list=PLK06XT3hFPziMAZj8QuoqC8iVaEbrlZWh). ⭐
- A comprehensive reverse engineering [tutorial series](https://github.com/mytechnotalent/Reverse-Engineering). ⭐

## Useful tools
اقرأ الكلام دا واعمله format كـ cheatsheet ليك:
As mentioned in the slides, there are a number of useful tools for this assignment! Here is a (non-exhaustive) list:

- `gdb` will let you run and inspect the state of these programs. Please check out the Debugging Refresher module. We have also provided a quick briefer here. Some useful gdb concepts:
    - Know the difference between `step instruction` (`si`) and `next instruction` (`ni`). It boils down to the fact that `si` will follow jumps, and `ni` will step over jumps. This means that if you use `si`, you will quickly find yourself crawling through libc code, which is insane and unnecessary.
    - You can use `x/i $rip` to disassemble the next instruction that will be executed. You can call `display/i $rip` to make the next instruction display every time gdb prompts you for input. You can also do `x/2i` and `display/2i` to print two (or other quantities of) instructions.
    - The `disas` command will disassemble the current function that you are looking at.
    - gdb can be scripted! Look up conditional breakpoints and scriptable breakpoints in the gdb manual.
    - Modern binaries are _position independent_, meaning that they can be loaded anywhere in memory when they run. GDB will load them at the offset `0x555555554000`. This means that if objdump is telling you that main starts at some address like, `0x100`, the address when debugging with GDB will be `0x555555554100`
- `strings` will list printable strings in the file. This is useful for looking for constant strings that the program checks for (such as file names and so on) in the course of getting input. Keep in mind that the options for string include a minimum size that it will print.
- Don't forget about pwntools! You will need to interact heavily with these programs. Do it right (with pwntools).
- `rappel` is a nice tool to help you figure out what certain instructions do.
- Tools for reverse engineering actual binaries, included in the dojo:
    - IDA is the industry standard of reverse-engineering tools.
    - Ghidra is an open source direct competitor to IDA that is used and loved by many.
    - Binary Ninja is an alternative product that competes with IDA in the space.
    - angr-management is an open source up-and-coming reversing tool with some advanced functionality.
    - In a pinch, `objdump -d -M intel the_binary` will disassemble the binary you want to look at. `-M intel`, in that command, makes objdump give you nice and readable Intel assembly syntax.



## History

<iframe width="560" height="315" src="https://www.youtube.com/embed/2pqvHSy11JE?si=MAMOXRBMPQJUKTOr" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
### Evolution of DRM

Modern DRM has taken on more and more clever approaches, such as:

- **Anti-debugging:** techniques to fight dynamic analysis
- **VMing:** wrapping the DRM code in a heavily obfuscated, protected emulator for a custom architecture, with the DRM logic inside that architecture.
- **Trusted Execution Environments:** moving the DRM *outside* of the CPU into protected hardware.

### Reverse Engineering for Modding

Another application of reverse engineering: modding. When modders hit the limits of modding a game's data files, they start modding the code.

Examples:
- **Skyrim:** the Skyrim Script Engine (SKSE)
- **Dwarf Fortress:** DFHack

And the dark side: cheating in online games.

### Real-World Reverse Engineering Stories (Games)

### Modding & Script Extenders
- **Skyrim Script Extender (SKSE)** — years of community reverse engineering of Skyrim's engine to expand modding. Story of the RE effort credits contributors like DavidJCobb, Nukem, Aers, po3, Ryan.
	- SKSE main site: [https://skse.silverlock.org/](https://skse.silverlock.org/)🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩
	- David J. Cobb's reverse-engineered Skyrim findings: [https://github.com/davidjcobb/tesv-cobb-api](https://github.com/davidjcobb/tesv-cobb-api)
- **DFHack (Dwarf Fortress)** — memory-editing / RE toolkit for modding Dwarf Fortress: [https://github.com/DFHack/dfhack](https://github.com/DFHack/dfhack) 🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩
- Cheat engines 🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩🤩

### Decompilation & Preservation
- **Super Mario 64 decomp** — fans fully reverse engineered SM64 (2020), leading to native PC ports and mods: [https://github.com/n64decomp/sm64](https://github.com/n64decomp/sm64)
	- Legal analysis paper on the SM64 decomp & fair use: [https://repository.uclawsf.edu/hastings_science_technology_law_journal/vol12/iss1/3/](https://repository.uclawsf.edu/hastings_science_technology_law_journal/vol12/iss1/3/)
- **Zelda: Ocarina of Time decomp (ZRET)** — reverse engineered from scratch; article on it being ~91% done and why it's legal: [https://www.nintendolife.com/news/2021/08/after_18_months_zelda_ocarina_of_time_fans_are_almost_done_decompiling_the_game](https://www.nintendolife.com/news/2021/08/after_18_months_zelda_ocarina_of_time_fans_are_almost_done_decompiling_the_game)
- **N64 decompilation hub** (Zelda, Banjo, GoldenEye, etc.): [https://github.com/n64decomp](https://github.com/n64decomp)
- **OpenRCT2** — decompiling RollerCoaster Tycoon 2 (written almost entirely in x86 assembly by Chris Sawyer) into C, one function at a time: [https://github.com/OpenRCT2/OpenRCT2](https://github.com/OpenRCT2/OpenRCT2)
	- The "patch the DLL and reimplement procedures gradually" writeup: [https://github.com/jvlomax/OpenRCT2](https://github.com/jvlomax/OpenRCT2)
- **OpenTTD** — same idea for Transport Tycoon Deluxe: [https://github.com/OpenTTD/OpenTTD](https://github.com/OpenTTD/OpenTTD)





## Practice Practice Practice

- **Crackme:** [https://en.wikipedia.org/wiki/Crackme](https://en.wikipedia.org/wiki/Crackme)
- **Many many crackmes:** [https://crackmes.one](https://crackmes.one)



____
# CTFs

