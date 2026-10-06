# For every foo.c / foo.cpp produce:
#   foo_O0.s  foo_O2.s      assembly listing
#   foo_O0    foo_O2        executable  (sources that have main())
#   foo_O0.o  foo_O2.o      object file (snippets without main(), can't link)
#
#   make       Linux examples: asm + binaries
#   make asm   Linux examples: asm only
#   make bin   Linux examples: binaries only
#   make win   windows/ examples (MinGW, 32-bit like the book's MSVC): asm + .exe/.o
#
# Not built: *_openmp_example.c needs sha512.h, windows/*_msvc.* need MSVC,
# asm/ and java/ are sources only.

# Intel syntax, without the GAS noise (.cfi_* unwind directives, endbr64 and
# the .note.gnu.property section from CET, the .ident compiler banner)
ASMFLAGS := -S -masm=intel -fno-asynchronous-unwind-tables -fcf-protection=none -fno-ident
# g++ keeps unwind tables for exceptions, so delete the .cfi_* lines afterwards
# (only affects the listing, the code is unchanged)
STRIP_CFI = sed -i '/^[[:space:]]*\.cfi_/d' $@

SRCS := $(filter-out %_openmp_example.c, $(wildcard *.c)) $(wildcard *.cpp)
ASM  := $(addsuffix _O0.s, $(basename $(SRCS))) $(addsuffix _O2.s, $(basename $(SRCS)))

# Sources with main() get linked; the rest are compiled to .o only
# (LP holds a literal '(' so make doesn't treat it as part of $(shell ...))
LP := (
HAS_MAIN := $(shell grep -lE '\bmain[[:space:]]*[$(LP)]' $(SRCS))
# have main() but call functions the book never defines -> can't link
NO_LINK  := 011.c 026.c 163.c
HAS_MAIN := $(filter-out $(NO_LINK), $(HAS_MAIN))
NO_MAIN  := $(filter-out $(HAS_MAIN), $(SRCS))
EXE  := $(addsuffix _O0, $(basename $(HAS_MAIN))) $(addsuffix _O2, $(basename $(HAS_MAIN)))
OBJ  := $(addsuffix _O0.o, $(basename $(NO_MAIN))) $(addsuffix _O2.o, $(basename $(NO_MAIN)))

WIN_SRCS := $(filter-out %_msvc.c, $(wildcard windows/*.c))
WIN_ASM  := $(WIN_SRCS:.c=_O0.s) $(WIN_SRCS:.c=_O2.s)
WIN_HAS_MAIN := $(shell grep -lE '\b(Win)?[Mm]ain[[:space:]]*[$(LP)]' $(WIN_SRCS))
WIN_NO_MAIN  := $(filter-out $(WIN_HAS_MAIN), $(WIN_SRCS))
WIN_EXE  := $(WIN_HAS_MAIN:.c=_O0.exe) $(WIN_HAS_MAIN:.c=_O2.exe)
WIN_OBJ  := $(WIN_NO_MAIN:.c=_O0.o) $(WIN_NO_MAIN:.c=_O2.o)

all: asm bin

asm: $(ASM)

bin: $(EXE) $(OBJ)

win: $(WIN_ASM) $(WIN_EXE) $(WIN_OBJ)

# --- assembly ---

%_O0.s: %.c
	gcc -O0 $(ASMFLAGS) $< -o $@

%_O2.s: %.c
	gcc -O2 $(ASMFLAGS) $< -o $@

%_O0.s: %.cpp
	g++ -O0 $(ASMFLAGS) $< -o $@
	$(STRIP_CFI)

%_O2.s: %.cpp
	g++ -O2 $(ASMFLAGS) $< -o $@
	$(STRIP_CFI)

# --- executables ---

%_O0: %.c
	gcc -O0 $< -o $@ -lm

%_O2: %.c
	gcc -O2 $< -o $@ -lm

%_O0: %.cpp
	g++ -O0 $< -o $@

%_O2: %.cpp
	g++ -O2 $< -o $@

# --- objects ---

%_O0.o: %.c
	gcc -O0 -c $< -o $@

%_O2.o: %.c
	gcc -O2 -c $< -o $@

%_O0.o: %.cpp
	g++ -O0 -c $< -o $@

%_O2.o: %.cpp
	g++ -O2 -c $< -o $@

# --- windows ---

windows/%_O0.s: windows/%.c
	i686-w64-mingw32-gcc -O0 $(ASMFLAGS) $< -o $@

windows/%_O2.s: windows/%.c
	i686-w64-mingw32-gcc -O2 $(ASMFLAGS) $< -o $@

windows/%_O0.exe: windows/%.c
	i686-w64-mingw32-gcc -O0 $< -o $@

windows/%_O2.exe: windows/%.c
	i686-w64-mingw32-gcc -O2 $< -o $@

windows/%_O0.o: windows/%.c
	i686-w64-mingw32-gcc -O0 -c $< -o $@

windows/%_O2.o: windows/%.c
	i686-w64-mingw32-gcc -O2 -c $< -o $@

clean:
	rm -f *_O0.s *_O2.s *_O0.o *_O2.o $(EXE) \
	      windows/*_O0.s windows/*_O2.s windows/*_O0.o windows/*_O2.o windows/*.exe

.PHONY: all asm bin win clean
