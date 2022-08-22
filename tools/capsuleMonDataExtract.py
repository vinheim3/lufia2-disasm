import clipboard

from util import bankAddr, getRom, wordIn

data = getRom()

start = bankAddr(0x17, 0xdcb8) # ends ee25

comps = []
addrs = []
for i in range(0x23):
    addrs.append(bankAddr(0x17, 0xdcb8+wordIn(data, start+i*2)))
    comps.append(f'\t.dw CapsuleMonsterData_{i:02x}-CapsuleMonstersData')

for i in range(0x22):
    addr = addrs[i]
    nextAddr = addrs[i+1]
    bs = data[addr:nextAddr]
    name = "".join(chr(b) for b in bs[:0xc])
    joined_bs = ", ".join(f'${b:02x}' for b in bs[0xc:])
    comps.append(f'\nCapsuleMonsterData_{i:02x}:')
    comps.append(f'\t.ascstr "{name}", {joined_bs}')
bs = data[addrs[0x22]:addrs[0x22]+0xc]
name = "".join(chr(b) for b in bs[:0xc])
comps.append(f'\nCapsuleMonsterData_22:')
comps.append(f'\t.ascstr "{name}"')

final_str = '\n'.join(comps)
print(final_str)
clipboard.copy(final_str)