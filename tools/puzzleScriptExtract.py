import clipboard

from util import getRom, bankAddr

data = getRom()
start = bankAddr(0x10, 0xa0e5)
pzStart = bankAddr(0x10, 0xa12d)
end = bankAddr(0x10, 0xa748)

"""
b - byte
a - addr
"""
ops = {
    0x00: '',
    0x01: 'ba',
    0x02: 'b',
    0x03: 'b',
    0x06: 'bb',
    0x08: 'b',
    0x09: 'b',
    0x0a: 'a',
    0x0b: 'b',
    0x0c: 'ba',
    0x0d: 'ba',
    0x0e: 'bb',
    0x0f: 'ba',
    0x10: '',
    0x11: 'b',
    0x13: 'b',
    0x16: 'ba',
    0x17: 'b',
    0x1a: 'b',
    0x1e: 'aa',
    0x22: 'b',
    0x27: '?a',
    0x29: '',
    0x2f: 'bb',
    0x32: 'b',
    0x33: 'b',
    0x34: 'bb',
    0x35: 'bba',
    0x36: 'bba',
    0x39: 'bba',
    0x3a: 'bba',
    0x3c: 'bba',
    0x40: 'bba',
    0x42: 'bb',
    0x43: 'bb',
    0x45: 'b',
    0x47: 'bb',
    0x48: 'bb',
    0x49: 'b',
    0x5d: 'bb',
    0x67: 'bbb',
    0x68: 'b', # can wait til next frame
    0x69: 'bb',
    0x6c: 'ba',
    0x6d: 'ba',
    0x71: 'ba',
    0x7a: 'bb',
    0x8e: 'bbbbb',
    0x8f: 'b',
    0x96: 'bba',
    0x9d: 'bbb',
    0xa1: 'b',
    0xa3: 'bbbb',
    0xa4: 'bbbb',
    0xa5: 'bbbb',
    0xa6: 'bbbb',
    0xa9: '?a',
    0xaa: '',
    0xb4: 'bbb',
    0xb5: '',
    0xba: 'bb',
    0xbb: 'b',
    0xbe: 'bb',
}

names = {
    0x00: 'HALT',
    0x01: 'JUMP_IF_FLAG_SET',
    0x08: 'SET_FLAG',
    0x09: 'CLEAR_FLAG',
    0x0a: 'JUMP',
    0x0c: 'JUMP_IF_FLAG_CLEAR',
    0x0d: 'JUMP_IF_FACING_DIR',
    0x11: 'WAIT_FRAMES',
    0x13: 'CHECK_CHAR_ON_POINT',
    0x1e: 'JUMP_IF_NOT_ON_POINT',
    0x2f: 'MOV_VAR_OTHERS_VAR',
    0x32: 'INC_VAR',
    0x33: 'DEC_VAR',
    0x34: 'SET_VAR',
    0x35: 'JUMP_IF_VAR_EQU',
    0x36: 'JUMP_IF_VAR_NE',
    0x42: 'ADD_GROUP0',
    0x43: 'SUB_GROUP0',
    0x45: 'DEC_GROUP0',
    0x47: 'ADD_GROUP1',
    0x48: 'SUB_GROUP1',
    0x49: 'INC_GROUP1',
    0x69: 'MOV_ARITHVAR_DICTVAR',
    0xa9: 'CALL',
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
        raise Exception(f'Implement op ${op:02x}, ${curr:05x}')

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
# debugComps = []
curr = pzStart
while curr < end:
    if curr-start in valid_labels:
        comps.append(f'\n@_{curr-start:04x}:' + f' ; ${curr-start:04x}, ${curr:05x}')
        # debugComps.append(f'\n@_{curr-start:04x}:' + f' ; ${_start-start:04x}, ${_start:05x}')

    op = data[curr]
    _start = curr
    curr += 1
    params = ops[op]
    opbs = [f'\t.db ${op:02x}']
    if op in names:
        opbs = [f'\t{names[op]}']
    for param in params:
        if param == 'b':
            val = data[curr]
            opbs.append(val)
            curr += 1
        elif param == 'a':
            if opbs:
                right = [f'${b:02x}' for b in opbs[1:]]
                comps.append(', '.join([opbs[0], *right]))
                # debugComps.append(', '.join([opbs[0], *right]) + f' ; ${_start-start:04x}, ${_start:05x}')
                opbs = []
            addr = data[curr]|(data[curr+1]<<8)
            ref = f'${addr:04x}'
            if addr in valid_labels:
                ref = f'@_{addr:04x}-PZ_START'
            comps.append(f'\t\t.dw {ref}')
            # debugComps.append(f'\t\t.dw {ref} ; ${_start-start:04x}, ${_start:05x}')
            curr += 2
        elif param == '?':
            val = None
            while val != 0xff:
                val = data[curr]
                opbs.append(val)
                curr += 1
    if opbs:
        right = [f'${b:02x}' for b in opbs[1:]]
        comps.append(', '.join([opbs[0], *right]))
        # debugComps.append(', '.join([opbs[0], *right]) + f' ; ${_start-start:04x}, ${_start:05x}')

final_str = '\n'.join(comps)
# print('\n'.join(debugComps))
clipboard.copy(final_str)