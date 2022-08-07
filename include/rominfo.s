.memorymap
	defaultslot 1

	slotsize $2000
	slot 0 $0000

	slotsize $8000
    slot 1 $8000
.endme

.banksize $8000
.rombanks 80

.snesheader
	id "ANIE"
	name "Lufia II(Estpolis II)"
	fastrom
	lorom
	cartridgetype $02
	romsize $0c
	sramsize $03
	country $01
	version $00
.endsnes

.snesnativevector
	COP MiscVector
	BRK MiscVector
	ABORT MiscVector
	NMI NmiVector
	UNUSED MiscVector
	IRQ IrqVector
.endnativevector

.snesemuvector
	COP    MiscVector
	UNUSED MiscVector
	ABORT  MiscVector
	NMI    NmiVector
	RESET  ResetVector
	IRQBRK IrqVector
.endemuvector

.asciitable
.enda

.base $80
