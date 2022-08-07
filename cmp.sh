#!/bin/sh

cmp -l original/lufia2.sfc lufia2.sfc | gawk '{printf "%08X %02X %02X\n", $1, strtonum(0$2), strtonum(0$3)}'
