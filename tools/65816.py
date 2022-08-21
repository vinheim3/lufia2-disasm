#!/usr/bin/env python3

import os
import os.path
import sys
import clipboard
from opcodes_65816 import instruction_set

hw_regs = {}


class Bank:
    def __init__(self, bankNum, data, offset):
        self.labels = set()
        self.label_map = {}
        self.bankNum = bankNum
        self.data = data
        self.offset = offset

        self.isA8 = False
        self.isI8 = False

    def bytesIn(self, offset, num):
        bs = self.data[offset:offset+num]
        return ".db " + ", ".join(f"${b:02x}" for b in bs)

    def wordIn(self, offset):
        return self.data[offset]+self.data[offset+1]*0x100

    def longIn(self, offset):
        return self.data[offset]+self.data[offset+1]*0x100+self.data[offset+2]*0x10000

    def abl(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-3:
                if mnem in ['jmp', 'jsr']:
                    bank = self.data[opOffset+3]
                    jumpAddr = self.wordIn(opOffset+1)
                    if bank == (self.bankNum|0x80) and jumpAddr in self.labels:
                        prefix = {'jmp': 'Jump', 'jsr': 'Call'}[mnem]
                        return f"{mnem} {prefix}_{self.bankNum:02x}_{jumpAddr:04x}.l", 4
                return f"{mnem} ${self.longIn(opOffset+1):06x}.l", 4
            else:
                return self.bytesIn(opOffset, 4), 4
        else:
            if opOffset < len(self.data)-3:
                if mnem in ['jmp', 'jsr']:
                    bank = self.data[opOffset+3]
                    if bank == (self.bankNum|0x80):
                        jumpAddr = self.wordIn(opOffset+1)
                        prefix = {'jmp': 'Jump', 'jsr': 'Call'}[mnem]
                        self.label_map.setdefault(jumpAddr, set()).add(prefix)
                        return {jumpAddr}, 4
            return set(), 4

    def abs(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-2:
                if mnem in ['jmp', 'jsr']:
                    jumpAddr = self.wordIn(opOffset+1)
                    if jumpAddr in self.labels:
                        prefix = {'jmp': 'Jump', 'jsr': 'Call'}[mnem]
                        return f"{mnem} {prefix}_{self.bankNum:02x}_{jumpAddr:04x}.w", 3
                return f"{mnem} ${self.wordIn(opOffset+1):04x}.w", 3
            else:
                return self.bytesIn(opOffset, 3), 3
        else:
            if opOffset < len(self.data)-2:
                if mnem in ['jmp', 'jsr']:
                    jumpAddr = self.wordIn(opOffset+1)
                    prefix = {'jmp': 'Jump', 'jsr': 'Call'}[mnem]
                    self.label_map.setdefault(jumpAddr, set()).add(prefix)
                    return {jumpAddr}, 3

            return set(), 3

    def abx(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-2:
                return f"{mnem} ${self.wordIn(opOffset+1):04x}.w, X", 3
            else:
                return self.bytesIn(opOffset, 3), 3
        else:
            return set(), 3

    def aby(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-2:
                return f"{mnem} ${self.wordIn(opOffset+1):04x}.w, Y", 3
            else:
                return self.bytesIn(opOffset, 3), 3
        else:
            return set(), 3

    def alx(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-3:
                return f"{mnem} ${self.longIn(opOffset+1):06x}.l, X", 4
            else:
                return self.bytesIn(opOffset, 4), 4
        else:
            return set(), 4

    def bm(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-2:
                return f"{mnem} ${self.data[opOffset+2]:02x}, ${self.data[opOffset+1]:02x}", 3
            else:
                return self.bytesIn(opOffset, 3), 3
        else:
            return set(), 3

    def dp(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} ${self.data[opOffset+1]:02x}", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def dpx(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} ${self.data[opOffset+1]:02x}, X", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def dpy(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} ${self.data[opOffset+1]:02x}, Y", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def ial(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-2:
                mnem = mnem.replace('jmp', 'jml')
                return f"{mnem} [${self.wordIn(opOffset+1):04x}.w]", 3
            else:
                return self.bytesIn(opOffset, 3), 3
        else:
            return set(), 3

    def iax(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-2:
                return f"{mnem} (${self.wordIn(opOffset+1):04x}.w, X)", 3
            else:
                return self.bytesIn(opOffset, 3), 3
        else:
            return set(), 3

    def idl(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} [${self.data[opOffset+1]:02x}]", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def idly(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} [${self.data[opOffset+1]:02x}], Y", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def idp(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} (${self.data[opOffset+1]:02x})", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def idx(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} (${self.data[opOffset+1]:02x}, X)", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def idy(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} (${self.data[opOffset+1]:02x}), Y", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def imm(self, mnem, opOffset, gotLabels, is8=True):
        _bytes = 2
        if not is8:
            _bytes = 3

        if mnem in ['rep', 'sep'] and opOffset < len(self.data)-(_bytes-1):
            byte = self.data[opOffset+1]
            if mnem == 'rep':
                if byte & 0x20:
                    self.isA8 = False
                if byte & 0x10:
                    self.isI8 = False
            else:
                if byte & 0x20:
                    self.isA8 = True
                if byte & 0x10:
                    self.isI8 = True
        if gotLabels:
            if opOffset < len(self.data)-(_bytes-1):
                hash = '#'
                if mnem == 'cop':
                    hash = ''
                if is8:
                    return f"{mnem} {hash}${self.data[opOffset+1]:02x}.b", _bytes
                else:
                    return f"{mnem} {hash}${self.wordIn(opOffset+1):04x}.w", _bytes
            else:
                return self.bytesIn(opOffset, _bytes), _bytes
        else:
            return set(), _bytes

    def impl(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if mnem == 'brk':
                return ".db $00", 1
            else:
                return f"{mnem}", 1
        else:
            return set(), 1

    def ind(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-2:
                return f"{mnem} (${self.wordIn(opOffset+1):04x}.w)", 3
            else:
                return self.bytesIn(opOffset, 3), 3
        else:
            return set(), 3

    def isy(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} (${self.data[opOffset+1]:02x}, S), Y", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def rel(self, mnem, opOffset, gotLabels, **kwargs):
        if opOffset < len(self.data)-1:
            _byte = self.data[opOffset+1]
            if _byte > 127:
                _byte -= 256
            iOffset = opOffset+_byte+2
            if 0 <= iOffset < len(self.data):
                jumpAddr = self.offset + iOffset
                if gotLabels:
                    if jumpAddr in self.labels:
                        return f"{mnem} br_{self.bankNum:02x}_{jumpAddr:04x}", 2
                    else:
                        return self.bytesIn(opOffset, 2), 2
                else:
                    self.label_map.setdefault(jumpAddr, set()).add('br')
                    return {jumpAddr}, 2

        if gotLabels:
            return f".db ${self.data[opOffset]:02x}", 1
        else:
            return set(), 1


    def rell(self, mnem, opOffset, gotLabels, **kwargs):
        if opOffset < len(self.data)-2:
            _word = self.data[opOffset+1]+self.data[opOffset+2]*0x100
            if _word > 32767:
                _word -= 65536
            iOffset = opOffset+_word+3
            if 0 <= iOffset < len(self.data):
                jumpAddr = self.offset + iOffset
                if gotLabels:
                    if jumpAddr in self.labels:
                        return f"{mnem} br_{self.bankNum:02x}_{jumpAddr:04x}", 3
                    else:
                        return self.bytesIn(opOffset, 3), 3
                else:
                    self.label_map.setdefault(self.offset+iOffset, set()).add('br')
                    return {self.offset+iOffset}, 3

        if gotLabels:
            return f".db ${self.data[opOffset]:02x}", 1
        else:
            return set(), 1

    def sr(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} ${self.data[opOffset+1]:02x}, S", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def zp(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} ${self.data[opOffset+1]:02x}", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def zpx(self, mnem, opOffset, gotLabels, **kwargs):
        if gotLabels:
            if opOffset < len(self.data)-1:
                return f"{mnem} ${self.data[opOffset+1]:02x}, X", 2
            else:
                return self.bytesIn(opOffset, 2), 2
        else:
            return set(), 2

    def gen_labels(self, force_a=None, force_idx=None):
        self.isA8 = False
        self.isI8 = False

        if force_a == 8:
            self.isA8 = True

        if force_idx == 8:
            self.isI8 = True

        i = 0
        avail_labels = set()
        referenced_labels = set()
        while i < len(self.data):
            # in this loop, i always points to opcode
            avail_labels.add(self.offset+i)

            op = self.data[i]

            ins, addMode = instruction_set[op]
            is8 = True
            if addMode == 'imm':
                if ins in ['ldx', 'ldy', 'cpx', 'cpy']:
                    is8 = self.isI8
                elif ins in ['cop', 'rep', 'sep']:
                    pass
                else:
                    is8 = self.isA8

            newLabels, skipBytes = getattr(self, addMode)(ins, i, False, is8=is8)
            referenced_labels |= newLabels
            i += skipBytes

        self.labels = avail_labels & referenced_labels

    def disassemble(self, slot, force_a=None, force_idx=None):
        self.isA8 = False
        self.isI8 = False

        if force_a == 8:
            self.isA8 = True

        if force_idx == 8:
            self.isI8 = True

        def info(iOffset, numBytes):
            bs = self.data[iOffset:iOffset + numBytes]
            joined_bs = ", ".join(f"${b:02x}" for b in bs)
            return " " * 50 + f"; ${self.offset+iOffset:04x} : {joined_bs}"

        i = 0
        comps = [f""".include "includes.s"
        
.bank ${self.bankNum:03x} slot {slot}
.org $0
"""]
        while i < len(self.data):
            label = self.offset+i
            if label in self.labels:
                for pid, prefix in enumerate(sorted(self.label_map[label])):
                    comp = f"{prefix}_{self.bankNum:02x}_{label:04x}:"
                    if pid == 0 and comps[-1] not in ["\n", ""]:
                        comp = "\n" + comp
                    comps.append(comp)

            op = self.data[i]
            
            ins, addMode = instruction_set[op]
            is8 = True
            if addMode == 'imm':
                if ins in ['ldx', 'ldy', 'cpx', 'cpy']:
                    is8 = self.isI8
                elif ins in ['cop', 'rep', 'sep']:
                    pass
                else:
                    is8 = self.isA8

            comp, skipBytes = getattr(self, addMode)(ins, i, True, is8=is8)
            comps.append(f"\t{comp}{info(i, skipBytes)}")
            i += skipBytes

            if ins in ['jmp', 'rti', 'rtl', 'rts']:
                comps.append('\n')
            elif ins in ['bcc', 'bcs', 'beq', 'bmi', 'bne', 'bpl', 'bvc', 'bvs', 'bra', 'brl', 'per']:
                comps.append('')

        return comps

if len(sys.argv) < 2:
    print("Usage: ./nesdis romname [bank] [start] [end]")
    exit(-1)

isPartial = len(sys.argv) > 2

if not isPartial:
    if os.path.exists('disassembly'):
        os.system('rm -rf disassembly')
    os.mkdir("disassembly")
    os.mkdir("disassembly/build")
    os.mkdir("disassembly/code")
    os.mkdir("disassembly/gfx")
    os.mkdir("disassembly/include")
    os.mkdir("disassembly/original")
    os.mkdir("disassembly/tools")
    os.mkdir("disassembly/web")

# maker code = "9C"
# game code = "AWAJ"
# expansion ram = 0
# special version = 0
# cartridge = 0
# title = "SUPER WRESTLE ANGELS "
# map mode = $30 - 3.58MHz LoROM
# cart type = $02 - ROM, RAM and battery
# rom size = $0b - 2mb
# ram size = $03 - 8kb
# dest code = 0 - Japan
# mask rom = 0
# compl check = ff67
# checksum = 0098

# Hard-coded - change bankSize, rominfo.s, ext
bankSize = 0x8000
ext = '.sfc'

fname = sys.argv[1]
gameName = fname.replace(ext, '')

with open(fname, 'rb') as f:
    data = f.read()
    # rom = data[:0x8000]
    rom = data

assert len(rom) % bankSize == 0
numBanks = len(rom) // bankSize

if not isPartial:
    with open(f'disassembly/original/{fname}', "wb") as f:
        f.write(rom)
    with open('disassembly/web/prgRom.bin', "wb") as f:
        f.write(rom)
    os.system('cp tools/* disassembly/tools/')
    os.system('cp cmp.sh disassembly/cmp.sh')
    os.system('cp index.html disassembly/web/')
    with open('disassembly/cmp.sh') as f:
        cmpText = f.read().replace('<gameName>', fname)
    with open('disassembly/cmp.sh', 'w') as f:
        f.write(cmpText)
    for include in ["constants.s", "macros.s", "structs.s", "hardware.s"]:
        with open(f"disassembly/include/{include}", 'w') as f:
            f.write("")
    with open('disassembly/include/wram.s', 'w') as f:
        f.write(""".include "includes.s"

.ramsection "WRAM 0" bank 0 slot 0

.ends
""")

    with open('disassembly/include/rominfo.s', 'w') as f:
        f.write(f""".memorymap
\tdefaultslot 0

\tslotsize $8000
\tslot 0 $8000
.endme

.banksize $8000
.rombanks {numBanks}

.asciitable
.enda

.base $80
""")
    with open('disassembly/Makefile', 'w') as f:
        f.write(f"""OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o

all: {fname}

build/wram.o: include/wram.s
\twla-65816 -o $@ $<

build/%.o: code/%.s
\twla-65816 -o $@ $<

{fname}: $(OBJS) $(RAM_OBJS)
\twlalink -S linkfile $@
""")
    with open('disassembly/includes.s', 'w') as f:
        f.write(""".include "include/hardware.s"
.include "include/rominfo.s"
.include "include/constants.s"
.include "include/structs.s"
.include "include/macros.s"
""")
    with open('disassembly/linkfile', 'w') as f:
        linkfile_text = """[objects]
build/wram.o\n""" + "\n".join(f"build/bank_{i:03x}.o" for i in range(numBanks))
        f.write(linkfile_text)

    for i in range(numBanks):
        offset = 0x8000
        slot = 0
        bank = Bank(i, rom[i*bankSize:(i+1)*bankSize], offset)

        bank.gen_labels()
        comps = bank.disassemble(slot)
        with open(f"disassembly/code/bank_{i:03x}.s", "w") as f:
            f.write("\n".join(comps))

else:
    bank, start, end, force_a, force_idx = map(lambda x: int(x, 16), sys.argv[2:])
    slot = 0
    bankStart = bank*0x8000
    data = rom[bankStart + (start % 0x8000):bankStart + (end % 0x8000)]
    bank = Bank(bank, data, start)

    bank.gen_labels(force_a, force_idx)
    comps = bank.disassemble(slot, force_a, force_idx)
    final_str = '\n'.join(comps[1:])
    print(final_str)
    clipboard.copy(final_str)