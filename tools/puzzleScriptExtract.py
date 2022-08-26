import clipboard

from util import getRom, bankAddr

data = getRom()
start = bankAddr(0x10, 0xa0e5)
pzStart = bankAddr(0x10, 0xa52d)
end = bankAddr(0x10, 0xa538)

"""
b - byte
a - addr
"""
ops = {
    0x00: '',
    0x01: 'ba',
    0x02: 'b',
    0x03: 'b',
    0x06: 'b',
    0x08: 'b',
    0x09: 'b',
    0x0a: 'a',
    0x0b: 'b',
    0x0c: 'ba',
    0x0d: 'ba',
    0x0f: 'ba',
    0x11: 'b',
    0x13: 'b',
    0x1e: 'aa',
    0x27: 'ba',
    0x29: '',
    0x2f: 'bb',
    0x32: 'b',
    0x34: 'bb',
    0x35: 'bba',
    0x36: 'bba',
    0x3c: 'bba',
    0x42: 'bb',
    0x43: 'bb',
    0x45: 'b',
    0x47: 'bb',
    0x48: 'bb',
    0x49: 'b',
    0x68: 'b', # can wait til next frame
    0x69: 'bb',
    0x6d: 'b',
    0x71: 'ba',
    0x7a: 'bb',
    0x8e: 'bbbbb',
    0x96: 'bba',
    0xa4: 'bbbb',
    0xa9: '?a',
    0xaa: '',
    0xb4: 'bbb',
    0xba: 'bb',
    0xbb: 'b',
}

names = {
    0x42: 'ADD_GROUP0',
    0x43: 'SUB_GROUP0',
    0x45: 'DEC_GROUP0',
    0x47: 'ADD_GROUP1',
    0x48: 'SUB_GROUP1',
    0x49: 'INC_GROUP1',
    0x69: 'MOV_VAR_VAR',
    0xaa: 'RET',
}

curr = pzStart
potential_labels = set()
referenced_labels = set()
while curr < end:
    potential_labels.add(curr-start)
    op = data[curr]
    curr += 1

    if op not in ops:
        raise Exception(f'Implement op ${op:02x}')

    params = ops[op]
    for param in params:
        if param == 'b':
            curr += 1
        elif param == 'a':
            addr = data[curr]|(data[curr+1]<<8)
            curr += 2
            referenced_labels.add(addr)
        elif param == '?':
            val = None
            while val != 0xff:
                val = data[curr]
                curr += 1

valid_labels = potential_labels & referenced_labels

comps = []
curr = pzStart
while curr < end:
    if curr-start in valid_labels:
        comps.append(f'\n@_{curr-start:04x}:')

    op = data[curr]
    curr += 1
    params = ops[op]
    opbs = [op]
    for param in params:
        if param == 'b':
            val = data[curr]
            opbs.append(val)
            curr += 1
        elif param == 'a':
            if opbs:
                comps.append('\t.db ' + ', '.join(f'${b:02x}' for b in opbs))
                opbs = []
            addr = data[curr]|(data[curr+1]<<8)
            ref = f'${addr:04x}'
            if addr in valid_labels:
                ref = f'@_{addr:04x}-PZ_START'
            comps.append(f'\t\t.dw {ref}')
            curr += 2
        elif param == '?':
            val = None
            while val != 0xff:
                val = data[curr]
                opbs.append(val)
                curr += 1
    if opbs:
        comps.append('\t.db ' + ', '.join(f'${b:02x}' for b in opbs))
    if op in names:
        name = names[op]
        comps[-1] = comps[-1].replace(f'.db ${op:02x}', name)

final_str = '\n'.join(comps)
print(final_str)
clipboard.copy(final_str)