#
# Usage:
#	gdb -q -x view.gdb ./a.out
#
# usage: gdb -q -x view.gdb ./prog
set disassembly-flavor intel
set pagination off
set confirm off

# print general registers, changed ones in red
python
prev = {}

def show_regs():
    global prev
    frame = gdb.selected_frame()
    cur = {}
    out = []
    for r in frame.architecture().registers("general"):
        val = frame.read_register(r)
        try:
            v = int(val)
        except gdb.error:
            continue
        cur[r.name] = v
        cell = "%-6s 0x%-16x" % (r.name, v)
        if r.name in prev and prev[r.name] != v:
            cell = "\033[1;31m" + cell + "\033[0m"
        out.append(cell)
    for i in range(0, len(out), 3):
        print("  ".join(out[i:i + 3]))
    prev = cur

class Regs(gdb.Command):
    def __init__(self):
        super().__init__("regs", gdb.COMMAND_DATA)
    def invoke(self, arg, from_tty):
        show_regs()

Regs()

# print stack: 20 slots at/above rsp, then 10 slots below rsp (red zone)
def show_stack():
    print("\tstack:")
    for i in reversed(range(-5, 10)):
        line = gdb.execute("x/a $rsp%+d" % (8 * i), to_string=True).strip()
        if i == 0:
            line += "   <------------------------------ rsp"
        print("\t\t" + line)
        if i == 0:
            print("\t\t---------------- below rsp (red zone) ----------------")

class Stack(gdb.Command):
    def __init__(self):
        super().__init__("stack", gdb.COMMAND_DATA)
    def invoke(self, arg, from_tty):
        show_stack()

Stack()
end

define hook-stop
  echo \n----------------- registers -----------------\n
  regs
  echo \n------------------- stack -------------------\n
  stack
  echo \n------------------- code --------------------\n
  x/5i $pc
  echo #######################################################################################################################\n
end

break main
run
