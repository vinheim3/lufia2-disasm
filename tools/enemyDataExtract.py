import clipboard

from util import bankAddr, getRom, wordIn

data = getRom()

start = bankAddr(0x16, 0x85c0) # ends cef1

comps = []
addrs = []
for i in range(0xe0):
    addrs.append(bankAddr(0x16, 0x85c0+wordIn(data, start+i*2)))
    comps.append(f'\t.dw EnemyData_{i:02x}-InBattleEnemyData')

for i in range(0xdf):
    addr = addrs[i]
    nextAddr = addrs[i+1]
    bs = data[addr:nextAddr]
    name = "".join(chr(b) for b in bs[:0xd])
    joined_bs = ", ".join(f'${b:02x}' for b in bs[0xd:])
    comps.append(f'\nEnemyData_{i:02x}:')
    comps.append(f'\t.ascstr "{name}", {joined_bs}')
bs = data[addrs[0xdf]:addrs[0xdf]+0xd]
name = "".join(chr(b) for b in bs[:0xd])
comps.append(f'\nEnemyData_df:')
comps.append(f'\t.ascstr "{name}"')

final_str = '\n'.join(comps)
print(final_str)
clipboard.copy(final_str)