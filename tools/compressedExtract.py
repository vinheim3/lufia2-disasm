import clipboard
from util import getRom, bankAddr, longIn

data = getRom()
addrs = []
for i in range(0x2a9):
    addrs.append(longIn(data, bankAddr(0x27, i*3)) + bankAddr(0x27, 0))
byteMap = []
for i, addr in enumerate(addrs[:-1]):
    nextAddr = addrs[i+1]
    bs = data[addr:nextAddr]
    byteMap.append(len(bs))
    # with open(f'data/compressed_{i:03x}.bin', 'wb') as f:
    #     f.write(bs)

comps = []
bank = 0x27
srcoffs = 0x7fb

def bankStr(bank):
    return f".bank ${bank:03x} slot 1\n.org $0"

for i, byteLen in enumerate(byteMap):
    end = srcoffs + byteLen
    if end >= 0x8000:
        part1len = 0x8000 - srcoffs
        comps.append(f'CompressedData_{i:03x}:\n\t.incbin "data/compressed_{i:03x}.bin" READ ${part1len:04x}')
        bank += 1
        comps.append(bankStr(bank))
        comps.append(f'\t.incbin "data/compressed_{i:03x}.bin" SKIP ${part1len:04x}')
    else:
        comps.append(f'CompressedData_{i:03x}:\n\t.incbin "data/compressed_{i:03x}.bin"')
    srcoffs = end % 0x8000

final_str = '\n\n'.join(comps)
print(final_str)
clipboard.copy(final_str)
