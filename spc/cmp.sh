#!/bin/sh

cmp -l original/initialSPC.bin initialSPC.bin | gawk '{printf "%08X %02X %02X\n", $1, strtonum(0$2), strtonum(0$3)}'
