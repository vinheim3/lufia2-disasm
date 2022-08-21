import clipboard

from util import bankAddr, getRom, wordIn

data = getRom()

start = bankAddr(0x15, 0xfa5b) # ends ff02

comps = []
addrs = []
for i in range(0x28):
    addrs.append(bankAddr(0x15, 0xfa5b+wordIn(data, start+i*2)))
    comps.append(f'\t.dw SpellData_{i:02x}-SpellsData')

for i in range(0x27):
    addr = addrs[i]
    nextAddr = addrs[i+1]
    bs = data[addr:nextAddr]
    name = "".join(chr(b) for b in bs[:0x8])
    joined_bs = ", ".join(f'${b:02x}' for b in bs[0x8:])
    comps.append(f'\nSpellData_{i:02x}:')
    comps.append(f'\t.ascstr "{name}", {joined_bs}')
bs = data[addrs[0x27]:addrs[0x27]+0x8]
name = "".join(chr(b) for b in bs[:0x8])
comps.append(f'\nSpellData_27:')
comps.append(f'\t.ascstr "{name}"')

final_str = '\n'.join(comps)
print(final_str)
clipboard.copy(final_str)