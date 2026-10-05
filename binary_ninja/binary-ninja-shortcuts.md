# Binary Ninja — Keyboard Shortcuts Cheatsheet

> These are the default bindings, taken from the official docs (`docs.binary.ninja`) and the
> debugger source (`Vector35/debugger/ui/ui.cpp`).
> `Ctrl` = `Cmd` on macOS and `Alt` = `Option`. Lowercase letters mean you press the key without Shift.
> Shortcuts depend on context: a key only does something when the focused view supports that action.
> To see or rebind everything: **`Ctrl+Shift+B`** opens the keybindings editor. If a key isn't
> listed here, search for its action in **`Ctrl+P`** (the command palette).

---

## 1. The must-know keys (learn these first)

| Key | Action |
|---|---|
| `Ctrl+P` | Command palette: run any action by name |
| `g` | Go to an address or symbol |
| `Esc` | Navigate back |
| `Space` | Toggle Linear ↔ Graph view |
| `Tab` / `F5` | Toggle Pseudo-C ↔ Disassembly |
| `i` | Cycle Disasm → LLIL → MLIL → HLIL |
| `n` | Rename the symbol, variable, function, or member |
| `y` | Change the type of the selection |
| `;` | Add a comment |
| `x` | Cross-references to the selection (focuses the xref pane) |
| `p` | Create a function here |
| `u` | Undefine (function, data variable, or user symbol) |
| `e` | Edit (assemble) the instruction: **patching** |

---

## 2. Global / application

| Key | Action |
|---|---|
| `Ctrl+P` | Command palette (actions) |
| `Ctrl+Shift+P` | Search everything (symbols, types, actions, …) |
| `Ctrl+,` | Settings | <<<< SMA: Read & play with all
| `Ctrl+Shift+B` | Keybindings editor |
| `Ctrl+Shift+M` | Extension / plugin manager |
| ``Ctrl+` `` | Toggle the Python console |
| `Ctrl+O` | Open a file | <<<<<<<<<<<<<<<<<<<<<<< SMA: look more into this
| `Ctrl+Shift+O` | Open with Options (choose the loader, arch, and analysis settings) |
| `Ctrl+L` | Open a file from a URL |
| `Ctrl+1` … `Ctrl+0` | Quick-open a recent file (on the **New Tab** page; `0` = file 10) |
| `Shift+Enter` on a recent file | Open it with Options |
| `Ctrl/Cmd+Shift+Click` on a recent file | Open it with Options |
| `Ctrl+S` | Save the analysis database (`.bndb`) |
| `Ctrl+Z` / `Ctrl+Shift+Z` | Undo / Redo (most analysis edits can be undone) |
| `Ctrl+F` | Find in the current view or pane |

---

## 3. Navigation

| Key | Action |
|---|---|
| `g` | Go to an address, symbol, or expression (e.g. `main`, `0x401000`, `$here+0x10`) |
| `Esc` | Navigate back |
| `Ctrl+[` (macOS `Cmd+[`) | Navigate back |
| `Ctrl+]` (macOS `Cmd+]`) | Navigate forward |
| `Enter` / double-click | Follow the reference or call under the cursor |
| `Alt+X` | Jump to the **next** cross-reference |
| `Alt+Shift+X` | Jump to the **previous** cross-reference |

### Bookmarks
| Key | Action |
|---|---|
| `Ctrl+Alt+1` … `Ctrl+Alt+0` | Set bookmark 1–10 at the cursor |
| `Ctrl+1` … `Ctrl+0` | Jump to bookmark 1–10 (inside an open binary) |

---

## 4. Views & IL levels

| Key | Action |
|---|---|
| `Space` | Linear ↔ Graph view |
| `Tab` / `F5` | Pseudo-C ↔ Disassembly in the current view |
| `i` | Cycle IL: Disassembly → LLIL → MLIL → HLIL |
| `h` | Hex view |
| `t` | Types view |
| `Tab` (in Hex view) | Switch between the hex and ASCII columns |

### Graph view
| Key | Action |
|---|---|
| `w` | Zoom to fit the whole function |
| `z` | Zoom to the cursor |
| `Ctrl+Shift++` (macOS `Cmd+Shift++`) | Zoom in |
| `Ctrl+Shift+-` (macOS `Cmd+Shift+-`) | Zoom out |
| `Ctrl+Scroll` | Zoom with the mouse |

---

## 5. Functions, symbols, comments, editing

| Key | Action |
|---|---|
| `p` | Create a function at the cursor |
| `u` | Undefine the selected function(s), data variable(s), or user symbol(s) |
| `n` | Name or rename (symbol, function, variable, struct member, register) |
| `;` | Add or edit a comment |
| `e` | Edit (assemble) the instruction: **patching** |
| `c` | Make code here (debugger plugin; also works when you're not debugging) |

> Patching extras such as **Convert to NOP**, **Always Branch**, **Never Branch**, and **Invert
> Branch** live in the right-click → *Patch* menu. You can bind keys to them in `Ctrl+Shift+B`.

---

## 6. Data & types

### Creating / changing data
| Key | Action |
|---|---|
| `1` `2` `4` `8` | Make a data variable of that many bytes at the cursor |
| `d` | Cycle the data variable through integer widths |
| `f` | Cycle through floating-point types |
| `r` | Single ASCII `char` |
| `a` | ASCII C string / char array (up to the next NUL) |
| `Shift+A` | `wchar_t` (wide / UTF-16) string |
| `Ctrl+Shift+A` (macOS `Alt+Shift+A`) | `wchar32_t` (UTF-32) string |
| `o` | Make a pointer |
| `*` | Turn the selection (identical variables) into an array; with no selection, opens the array dialog |
| `y` | Change type (opens a C type prompt, e.g. `struct foo*`) |
| `q` | Forward-propagate the type |

### Structures & enums
| Key | Action |
|---|---|
| `s` | **Magic key**: create a structure from a selection or pointer, or auto-create struct members. Press it on an offset annotation to create a member of the right type |
| `m` | Apply enum display to an integer / change the type to an enum |

### Integer display (constants in disasm / IL)
| Key | Action |
|---|---|
| `0` | Toggle hex ↔ decimal |
| `-` | Toggle signed ↔ unsigned |
| `~` | Toggle normal ↔ bitwise complement |

> For more display formats (char constant, octal, binary, offset, etc.) right-click the constant
> and pick *Display as*.

### Variables (decompiler / IL)
| Key | Action |
|---|---|
| `+` | Merge the variables used in the assignment |
| `=` | Merge / split variables dialog |

### Types view (`t`)
| Key / mouse | Action |
|---|---|
| Double-click | Edit the type as C source / go to its definition |
| `Shift+Click`, `Ctrl+Click` | Select multiple types |
| `n` / `y` / `s` | Rename / retype / create a member (same keys as above) |

---

## 7. Cross-references pane (`x`)

| Key | Action |
|---|---|
| `x` | Focus the xref pane for the current selection |
| `Ctrl+F` | Filter the xrefs |
| `Esc` | Clear the filter |
| `Ctrl+A` | Select all xrefs |
| `↑` / `↓` | Previous / next xref |
| `Enter` | Go to the selected xref |
| `Alt+X` / `Alt+Shift+X` | Next / previous xref without leaving the code view |

---

## 8. Debugger

| Key | Action |
|---|---|
| `F6` | Launch |
| `F9` | Resume / Go |
| `F7` | Step Into |
| `F8` | Step Over |
| `Ctrl+F9` | Step Return (step out) |
| `F4` | Run to here (cursor) |
| `F12` | Pause (break) |
| `F2` | Toggle breakpoint |
| `F3` | Add hardware breakpoint… |
| `c` | Make code |

### Time-travel debugging (TTD, e.g. WinDbg TTD traces)
| Key | Action |
|---|---|
| `Shift+F9` | Go backwards |
| `Shift+F7` | Step into, backwards |
| `Shift+F8` | Step over, backwards |
| `Ctrl+Shift+F9` | Step return, backwards |
| `Shift+F4` | Run back to here |
| `Shift+G` | Go to a TTD timestamp |
| `Shift+Esc` | TTD navigate back |
| `Ctrl+Shift+Esc` | TTD navigate forward |

---

## 9. Typical workflow, by keys

```text
Ctrl+O          open binary
g  main         jump to main
Tab             switch to Pseudo-C (HLIL)
x               who calls this?
n               rename function/var
y               fix its type   (e.g.  int __fastcall f(char* buf, size_t n))
s               build a struct out of `*(arg1 + 0x18)` style accesses
;               leave a note
Esc / Ctrl+]    back / forward
Ctrl+Alt+1      bookmark;  Ctrl+1 later to return
Ctrl+S          save .bndb
```

---

## 10. Tips

- **Forgot a key?** Press `Ctrl+P` and type the action name. The palette shows the bound key next to each action.
- **Rebinding:** `Ctrl+Shift+B` → search for the action → set a new key. Bindings are stored in `keybindings.json` in your user folder (`~/.binaryninja/` on Linux).
- **IDA muscle memory:** many keys already match (`g`, `n`, `y`, `x`, `;`, `p`, `u`, `a`, `d`, `o`, `Esc`, `Tab`/`F5`). If you want more, there are community IDA-style keybinding presets you can import.
- **Plugins** add their own actions. They show up in the command palette and can be bound the same way.
