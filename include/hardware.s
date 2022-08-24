OAMADDL = $2102 ; OAM Address Registers (Low)
OAMDATA = $2104 ; OAM Data Write Register
BGMODE = $2105 ; BG Mode and Character Size Register
MOSAIC = $2106 ; Mosaic Register
BG3HOFS = $2111 ; BG Scroll Registers (BG3)
BG3VOFS = $2112 ; BG Scroll Registers (BG3)
VMAIN = $2115 ; Video Port Control Register
VMADDL = $2116 ; VRAM Address Registers (Low)
VMDATAL = $2118 ; VRAM Data Write Registers (Low)
CGADD = $2121 ; CGRAM Address Register
CGDATA = $2122 ; CGRAM Data Write Register
APUIO0 = $2140 ; APU IO Registers
APUIO1 = $2141 ; APU IO Registers
APUIO2 = $2142 ; APU IO Registers
APUIO3 = $2143 ; APU IO Registers
WMDATA = $2180 ; WRAM Data Register
WMADDL = $2181 ; WRAM Address Registers
WMADDM = $2182 ; WRAM Address Registers
WMADDH = $2183 ; WRAM Address Registers
WRMPYA = $4202 ; Multiplicand Registers
WRMPYB = $4203 ; Multiplicand Registers
MDMAEN = $420b ; DMA Enable Register
HVBJOY = $4212 ; PPU Status Register
RDMPYL = $4216 ; Multiplication Or Divide Result Registers (Low)
JOY1L = $4218 ; Controller Port Data Registers (Pad 1 - Low)

; Bit 7 - set: PPU to CPU. clear: CPU to PPU
; Bit 6 - set: src has pointers to data. clear: src has data
; Bit 4 - set: dec after bytes. clear: inc after bytes
; Bit 3 - set: bit 4 does not take effect. clear: bit 4 takes effect
; Bits 2-0 - transfer mode:
;   - 000 - 1 register write once
;   - 001 - 2 registers write once
DMAP0 = $4300 ; DMA Control Register
DMAP6 = $4360 ; DMA Control Register
DMAP_2_REGS_WRITE_ONCE = $01

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