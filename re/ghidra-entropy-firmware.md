# Entropy analysis in Ghidra for embedded firmware

Researched + tested locally 2026-10-07 against **Ghidra 12.1.3 PUBLIC**
(`~/tools/ghidra_12.1.3_PUBLIC`). Numbers in the "measured" sections are from a headless run
on this machine, not copied from a blog.

TL;DR: Ghidra has **one** entropy feature — the *Entropy overview bar* in the Listing margin.
It is good for "where are the regions" at a glance, and it knows about ARM/THUMB/PowerPC code
bands, which matters for firmware. It is **not** binwalk: no entropy graph window, no numbers
over file offset, no CSV, no report. The underlying math is exposed as an API class
(`EntropyCalculate`), so the missing pieces are ~40 lines of script. Working, tested script is
at the bottom.

---

## 1. Where it is in the GUI

- **Listing toolbar** → the overview-toggle button (a `MultiActionDockingAction`) → check
  **"Show Entropy"**. The action label is literally `"Show " + <service name>`, so Entropy and
  Address Type both appear in that dropdown. Multiple margin bars can be on at once.
- The bar is on the **right** side of the Listing in modern versions (it was on the left back in
  9.x). Each horizontal pixel-slice = a relative address in the *current view* (default: whole
  address space).
- **Hover** = tooltip with the entropy value (1 decimal), the matched band name, the memory
  block name and the address. **Left-click** = navigate there. **Right-click → Show Legend** =
  the colour palette with band labels.
- **Edit → Tool Options → Entropy** = chunk size + 5 configurable highlight ranges.

## 2. How it actually computes (from source)

`ghidra/app/plugin/core/overview/entropy/EntropyOverviewColorService.java`:

- Plain Shannon entropy over a byte histogram, `0.0 .. 8.0` bits/byte.
- Chunks are **block-aligned and non-overlapping**:
  `chunkStart = block.start + floor((addr - block.start) / chunkSize) * chunkSize`.
  So a given pixel's score is the score of the whole aligned chunk it lands in — no sliding
  window, and chunk boundaries do not follow file offsets if your memory block doesn't start
  at 0.
- The score is quantised to a 256-entry palette index:
  `idx = floor(entropy / 8.0 * 256)`, clamped to 255. The tooltip converts back with
  `entropy = idx * 8.0 / 255`, so **displayed values are quantised to ~0.031 bits**.
- Uninitialized blocks get a dedicated "uninitialized" colour, not a score.
- The overview is explicitly an *approximation*: one sample per pixel row. On a 32 MB firmware
  in a 900-pixel-tall window, you are seeing ~900 of ~32k chunks.

## 3. The bands ("knots") — exact values

`EntropyKnot.java` defines `EntropyRecord(name, center, width)`; `OverviewPalette.addKnot`
builds the band as **center ± width** with the pure colour exactly at `center`. Decoded:

| Knot option | center | width | effective band |
|---|---|---|---|
| `Unicode UTF16` | 3.21 | 0.20 | **3.01 – 3.41** |
| `ASCII strings` | 4.70 | 0.50 | **4.20 – 5.20** (matches the help text's "4.2 - 5.2") |
| `ARM code` | 5.1252 | 0.51 | **4.62 – 5.64** |
| `PowerPC code` | 5.6674 | 0.52 | **5.15 – 6.19** |
| `x86 code` | 5.94 | 0.40 | **5.54 – 6.34** |
| `THUMB code` | 6.2953 | 0.50 | **5.80 – 6.80** |
| `Compressed` | 8.00 | 0.50 | **7.50 – 8.00** |

Defaults: Range 1 = `Compressed`, Range 2 = `x86 code`, Range 3 = `ASCII strings`,
Range 4 = `Unicode UTF16`, Range 5 = `None`; chunk size = `LARGE` (1024).

**For embedded work, change the defaults**: swap Range 2 `x86 code` → `ARM code` and set
Range 5 → `THUMB code` (or `PowerPC code` for older network gear / automotive). The x86 band is
useless on an STM32 image and actively misleads, because the bands overlap (see §6).

Chunk size is a 3-way enum only: `SMALL=256`, `MEDIUM=512`, `LARGE=1024`. No other values.

## 4. Firmware workflow in Ghidra

1. **Import as Raw Binary** so the whole blob is one initialized block — the entropy bar only
   sees program memory, and an ELF/PE loader would carve the image into sections or skip the
   parts you care about. `File > Import File`, Format = *Raw Binary*, pick the real language
   (`ARM:LE:32:v7`, `ARM:LE:32:Cortex`, `MIPS:BE:32:default`, …) and the real load base.
2. **Turn on the entropy bar before analysis.** Entropy needs bytes, not code; it is the thing
   that tells you *where* to point the disassembler, so run it first.
3. Read the picture top to bottom:
   - **0.0 flat** → erased flash (`0xFF`) or zero padding → free space, alignment gaps, or the
     end of a real payload. Good for finding the true length of an image.
   - **3.0 – 3.4** → UTF-16 strings (menus, device descriptors, Windows-ish blobs).
   - **4.2 – 5.2** → ASCII: log/error strings, config, device trees, shell scripts, certificates
     in PEM form. Where you point `Search > For Strings`.
   - **4.6 – 6.8** → machine code of some flavour. Where you point the disassembler.
   - **7.5 – 8.0** → compressed or encrypted. Where you point binwalk/unblob, or where you start
     thinking about the bootloader's decrypt routine.
4. Click into each boundary, note the addresses, then split the memory map
   (`Window > Memory Map`) into named blocks per region. Now the bar doubles as a map of your
   own labelling progress (switch to the *Address Type* overview for that).
5. Compressed region found → extract it outside Ghidra (`binwalk -e` / `unblob`) and import the
   *decompressed* result as a second program. Entropy inside Ghidra tells you where the blob is;
   it will not unpack it.

## 5. Measured lab (reproducible)

Synthetic 64 KB "firmware" (`/tmp/ent-lab/firmware.bin`) with six 8–16 KB regions: real x86-64
`.text` from `/usr/bin/python3`, ASCII log strings, the same strings as UTF-16LE, `zlib -9` of
that `.text`, CSPRNG bytes (stands in for AES-CBC/CTR output), and `0xFF` erased flash.
Imported as Raw Binary at `0x08000000`, chunk 1024, scored with the script in §8:

| region | content | min | max | avg | Ghidra bands hit |
|---|---|---|---|---|---|
| `0x0000–0x4000` | x86-64 machine code | 5.19 | 6.36 | **5.67** | `arm;powerpc`, `x86;thumb`, `powerpc;x86;thumb` |
| `0x4000–0x6000` | ASCII strings | 4.50 | 4.51 | **4.51** | `ascii` |
| `0x6000–0x8000` | UTF-16LE strings | 3.24 | 3.26 | **3.25** | `utf16` |
| `0x8000–0xC000` | zlib `-9` | 7.75 | 7.82 | **7.79** | `compressed/encrypted` |
| `0xC000–0xE000` | random (≈AES) | 7.79 | 7.84 | **7.81** | `compressed/encrypted` |
| `0xE000–0x10000` | `0xFF` padding | 0.00 | 0.00 | **0.00** | `padding/sparse` |

The classification works cleanly for strings, padding and compressed/encrypted. The two
interesting failures are in §6.

## 6. The two real limitations (both measured)

### 6.1 Entropy cannot tell you the ISA — the code bands overlap

ARM `4.62–5.64`, PowerPC `5.15–6.19`, x86 `5.54–6.34`, THUMB `5.80–6.80`. Real x86-64 code
measured 5.19–6.36, i.e. individual chunks landed in **arm**, **powerpc**, **x86** *and*
**thumb** bands depending on the chunk. Use the code bands as "this is probably code", never as
"this is ARM". The ISA comes from the vector table, the reset handler decoding cleanly, or
`Search > For Instruction Patterns` — not from the colour.

### 6.2 Entropy cannot tell compression from encryption, and chunk size moves the ceiling

zlib `-9` averaged **7.79**; CSPRNG bytes averaged **7.81**. A 0.02-bit gap is not a signal.
If you need to distinguish them, look at headers/magics, chi-square/monobit tests, or whether a
decompressor exists in the bootloader — not entropy.

Worse, small chunks have a hard statistical ceiling. Expected Shannon entropy of *perfectly
random* bytes, by chunk size (measured, 40 trials each):

| chunk | expected entropy of random data |
|---|---|
| 256 | **7.18** |
| 512 | **7.59** |
| 1024 | **7.81** |
| 2048 | 7.91 |
| 4096 | 7.96 |

Ghidra's `Compressed` band is `7.50–8.00`. At **chunk size 256 nothing can ever be classified
as compressed** — you cannot reach 7.5 with 256 samples over 256 bins. Confirmed on the lab
image: at 256 bytes the zlib region scored 6.99–7.29 (avg 7.16) and the random region 7.11–7.31
(avg 7.18), both *below* the band. **Keep chunk size at 1024 when hunting packed/encrypted
regions**; drop to 256 only to get finer granularity inside a region you have already found.

### 6.3 Other caveats

- One sample per pixel: a 1–2 KB compressed key blob in a multi-MB image may simply not be
  sampled. Narrow the view (`Current View`) or script it.
- Block-aligned chunks: a region that starts mid-chunk gets a mixed score at its edges, so
  boundaries read as gradients — don't trust the first/last chunk of a region.
- Code mixed with jump tables, relocations, or `.rodata` drags the average down (the lab's code
  region spanned 5.19–6.36 for that reason).
- Firmware read out with ECC/OOB bytes interleaved (raw NAND dumps) raises entropy everywhere;
  strip OOB first or every region looks packed.
- Entropy says nothing about *where* a filesystem begins. Pair it with magic scanning.

## 7. The API nobody documents

`ghidra.app.plugin.core.entropy.EntropyCalculate` (note: `core.entropy`, **not**
`core.overview.entropy`) is a tiny reusable class:

```java
EntropyCalculate calc = new EntropyCalculate(memoryBlock, 1024);
int raw = calc.getValue(offsetInBlock);      // 0..255 palette index
double entropy = raw * 8.0 / 255;            // back to bits/byte
```

Verified on the lab image — it returns the same quantised scores the overview bar paints:

```
off=0x00000 raw=196 -> 6.149    off=0x08000 raw=248 -> 7.780
off=0x02000 raw=178 -> 5.584    off=0x0a000 raw=250 -> 7.843
off=0x04000 raw=143 -> 4.486    off=0x0c000 raw=249 -> 7.812
off=0x06000 raw=103 -> 3.231    off=0x0e000 raw=0   -> 0.000
```

Use it when you want *Ghidra's* numbers exactly; compute Shannon yourself (below) when you want
full precision instead of 1/255 steps.

## 8. Script: entropy → CSV (tested headless)

Drop in `~/ghidra_scripts/EntropyReport.java` (or any `-scriptPath` dir). Java needs no extra
runtime; GhidraScript compiles it on the fly.

```java
// Per-chunk Shannon entropy for every initialized memory block -> CSV.
// Mirrors Ghidra's entropy overview math (block-aligned, non-overlapping chunks).
// Args: [outCsv] [chunkSize]
//@category Firmware
//@runtime Java
import java.io.PrintWriter;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.mem.MemoryBlock;

public class EntropyReport extends GhidraScript {

	@Override
	public void run() throws Exception {
		String[] args = getScriptArgs();
		String out = args.length > 0 ? args[0] : "/tmp/entropy.csv";
		int chunk = args.length > 1 ? Integer.parseInt(args[1]) : 1024;

		byte[] buf = new byte[chunk];
		try (PrintWriter w = new PrintWriter(out)) {
			w.println("block,address,offset,entropy,guess");
			for (MemoryBlock b : currentProgram.getMemory().getBlocks()) {
				if (!b.isInitialized()) {
					continue;
				}
				for (long off = 0; off + chunk <= b.getSize(); off += chunk) {
					Address a = b.getStart().add(off);
					int n = b.getBytes(a, buf);
					double e = shannon(buf, n);
					w.printf("%s,%s,%d,%.4f,%s%n", b.getName(), a, off, e, classify(e));
				}
			}
		}
		println("wrote " + out);
	}

	private double shannon(byte[] d, int n) {
		int[] hist = new int[256];
		for (int i = 0; i < n; i++) {
			hist[d[i] & 0xff]++;
		}
		double e = 0.0;
		for (int c : hist) {
			if (c == 0) {
				continue;
			}
			double p = (double) c / n;
			e -= p * (Math.log(p) / Math.log(2.0));
		}
		return e;
	}

	// Ghidra's own EntropyKnot bands (center +/- width). They overlap, so report every
	// band the score falls into instead of pretending one wins.
	private String classify(double e) {
		StringBuilder sb = new StringBuilder();
		if (e <= 0.5) {
			sb.append("padding/sparse ");
		}
		if (in(e, 3.21, 0.2)) {
			sb.append("utf16 ");
		}
		if (in(e, 4.7, 0.5)) {
			sb.append("ascii ");
		}
		if (in(e, 5.1252, 0.51)) {
			sb.append("arm ");
		}
		if (in(e, 5.6674, 0.52)) {
			sb.append("powerpc ");
		}
		if (in(e, 5.94, 0.4)) {
			sb.append("x86 ");
		}
		if (in(e, 6.2953, 0.5)) {
			sb.append("thumb ");
		}
		if (in(e, 8.0, 0.5)) {
			sb.append("compressed/encrypted ");
		}
		return sb.toString().trim().replace(' ', ';');
	}

	private boolean in(double e, double center, double width) {
		return e >= center - width && e <= center + width;
	}
}
```

Headless invocation that produced the §5 table:

```sh
~/tools/ghidra_12.1.3_PUBLIC/support/analyzeHeadless /tmp/ent-proj EntLab \
  -import /tmp/ent-lab/firmware.bin \
  -loader BinaryLoader -loader-baseAddr 0x08000000 -processor x86:LE:64:default \
  -noanalysis -deleteProject \
  -scriptPath /tmp/ent-scripts -postScript EntropyReport.java /tmp/ent-lab/entropy.csv 1024
```

`-noanalysis` matters: entropy needs no auto-analysis, and skipping it turns a multi-minute run
on a big firmware into seconds. For ARM firmware use e.g. `-processor ARM:LE:32:v7`.

Then plot/triage with anything:

```sh
# regions above the compressed threshold, merged into runs
awk -F, 'NR>1 && $4+0 >= 7.5 {print $2, $4}' entropy.csv
# quick terminal sparkline
python3 -c "
import csv,sys
b='▁▂▃▄▅▆▇█'
print(''.join(b[min(7,int(float(r['entropy'])/8*8))] for r in csv.DictReader(open('entropy.csv'))))"
```

### PyGhidra variant (not tested here — PyGhidra isn't installed on this box)

Ghidra 12 ships the wheel at
`Ghidra/Features/PyGhidra/pypkg/dist/pyghidra-3.1.0-py3-none-any.whl`; install it (or launch
`support/pyghidraRun`) and a `.py` GhidraScript can do the same in a few lines, reusing Ghidra's
own calculator:

```python
# EntropyReport.py  —  @runtime PyGhidra
from ghidra.app.plugin.core.entropy import EntropyCalculate

CHUNK = 1024
for b in currentProgram.getMemory().getBlocks():
    if not b.isInitialized():
        continue
    calc = EntropyCalculate(b, CHUNK)
    for off in range(0, int(b.getSize()) - CHUNK + 1, CHUNK):
        e = calc.getValue(off) * 8.0 / 255
        print("%s+%#x  %.3f" % (b.getName(), off, e))
```

## 9. What to use alongside it

Ghidra's bar answers "where are the regions". These answer the rest:

- **binwalk v3** (Rust rewrite, v3.1.0 Oct 2024): `binwalk -E firmware.bin` writes an entropy
  plot PNG; `binwalk -Me` for recursive extraction. Still the fastest first pass on an unknown
  image, and it does magic scanning at the same time.
- **unblob** — better than binwalk on nested/odd containers; use it when binwalk's extraction is
  incomplete.
- **ImHex** — data-information view with entropy + byte distribution per selection, interactive.
- **Veles / binvis.io** — 2-D/space-filling visualisations; much better than a 1-D bar for
  spotting structure inside a high-entropy region (e.g. ECB-mode repetition).
- **radare2 / Cutter** — `p=e` entropy bar in the terminal, `p=p` printable ratio; scriptable.
- **`ent`**, chi-square / monobit — the actual tool for "compressed or encrypted?".
- **Binary Ninja** (cross-ref: `binary_ninja/external-libs-without-projects.md`) — the Triage
  view ships an entropy graph across the whole file, and it is in every edition including
  Personal. For a quick look at an unknown blob it is friendlier than Ghidra's margin bar.

## 10. Checklist for an unknown firmware image

1. `binwalk -E` + `binwalk` magic scan outside Ghidra → cheap map, known containers extracted.
2. Import the *raw* image into Ghidra as Raw Binary at the right base, correct language.
3. Tool Options → Entropy: chunk 1024, Range 2 = ARM code, Range 5 = THUMB code.
4. Enable the entropy bar, read regions, click boundaries, write them down.
5. Run `EntropyReport.java` headless for exact offsets; `awk` out the ≥7.5 runs.
6. Carve the high-entropy runs, try to decompress; carve the 4.2–5.2 runs, run strings.
7. Split the Memory Map into named blocks per region; disassemble only the code-band regions.
8. Re-check entropy after you've labelled things — any remaining unexplained 7.5+ block is
   either an unidentified compressed payload, a key/certificate store, or the interesting part.

---

## Sources

- [Ghidra help — Overview / Entropy Overview Bar (12.1.2)](https://ghidradocs.com/12.1.2_PUBLIC/help/Base/help/topics/OverviewPlugin/Overview.htm)
  (same text ships in the local 12.1.3 install, `Base.jar!/help/topics/OverviewPlugin/Overview.htm`)
- [`EntropyKnot.java`](https://github.com/NationalSecurityAgency/ghidra/blob/master/Ghidra/Features/Base/src/main/java/ghidra/app/plugin/core/overview/entropy/EntropyKnot.java)
- [`EntropyRecord.java`](https://github.com/NationalSecurityAgency/ghidra/blob/master/Ghidra/Features/Base/src/main/java/ghidra/app/plugin/core/overview/entropy/EntropyRecord.java)
- [`EntropyChunkSize.java`](https://github.com/NationalSecurityAgency/ghidra/blob/master/Ghidra/Features/Base/src/main/java/ghidra/app/plugin/core/overview/entropy/EntropyChunkSize.java)
- [`EntropyOverviewColorService.java`](https://github.com/NationalSecurityAgency/ghidra/blob/master/Ghidra/Features/Base/src/main/java/ghidra/app/plugin/core/overview/entropy/EntropyOverviewColorService.java)
- [`EntropyOverviewOptionsManager.java`](https://github.com/NationalSecurityAgency/ghidra/blob/master/Ghidra/Features/Base/src/main/java/ghidra/app/plugin/core/overview/entropy/EntropyOverviewOptionsManager.java)
- [`OverviewPalette.java`](https://github.com/NationalSecurityAgency/ghidra/blob/master/Ghidra/Features/Base/src/main/java/ghidra/app/plugin/core/overview/entropy/OverviewPalette.java)
- `ghidra.app.plugin.core.entropy.EntropyCalculate` — local stub
  `docs/ghidra_stubs/typestubs/ghidra-stubs/app/plugin/core/entropy/__init__.pyi`
- [Ghidra importer help (Raw Binary, loader options)](https://ghidradocs.com/12.0_PUBLIC/help/Base/help/topics/ImporterPlugin/importer.htm)
- [ServiceNow SecurityLab — the role of entropy in binary data analysis](https://securitylab.servicenow.com/research/2025-04-07-Binary-Data-Analysis-The-Role-of-Entropy/)
- [binwalk (v3, Rust)](https://github.com/ReFirmLabs/binwalk)
- [unblob](https://unblob.org/)
- [ImHex data information view](https://new.docs.werwolv.net/imhex/views/data-information)
- Local lab artifacts: `/tmp/ent-lab/firmware.bin`, `/tmp/ent-lab/entropy.csv`,
  `/tmp/ent-scripts/EntropyReport.java`
