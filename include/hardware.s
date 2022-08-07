OAMADDL = $2102 ; OAM Address Registers (Low)
OAMDATA = $2104 ; OAM Data Write Register
VMAIN = $2115 ; Video Port Control Register
VMADDL = $2116 ; VRAM Address Registers (Low)
VMDATAL = $2118 ; VRAM Data Write Registers (Low)
WRMPYA = $4202 ; Multiplicand Registers
WRMPYB = $4203 ; Multiplicand Registers
MDMAEN = $420b ; DMA Enable Register
RDMPYL = $4216 ; Multiplication Or Divide Result Registers (Low)

; Bit 7 - set: PPU to CPU. clear: CPU to PPU
; Bit 6 - set: src has pointers to data. clear: src has data
; Bit 4 - set: dec after bytes. clear: inc after bytes
; Bit 3 - set: bit 4 does not take effect. clear: bit 4 takes effect
; Bits 2-0 - transfer mode:
;   - 000 - 1 register write once
DMAP0 = $4300 ; DMA Control Register
DMAP6 = $4360 ; DMA Control Register

BBAD0 = $4301 ; DMA Destination Register
BBAD6 = $4361 ; DMA Destination Register
A1T0L = $4302 ; DMA Source Address Registers
A1T6L = $4362 ; DMA Source Address Registers
A1B0 = $4304 ; DMA Source Address Registers
A1B6 = $4364 ; DMA Source Address Registers
DAS0L = $4305 ; DMA Size Registers (Low)
DAS6L = $4365 ; DMA Size Registers (Low)

ACCU_8 = $20
IDX_8 = $10
BANK_START = $8000