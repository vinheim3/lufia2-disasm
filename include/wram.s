.include "includes.s"

.base $00

.ramsection "Low Ram" bank 0 slot 0

w00:
    ds $2a

wCurrEntityMovePatternAddr: ; $2a
    dw

w2c:
    ds $54-$2c

.union

    wCompressedDataIdx: ; $54
        dw

.nextu

    wNumOamSlotsUsedByEntity: ; $54
        db

.endu

wNumOldCompressedBytesToCopyMinus1: ; $56
    dw

wTotalDecompressedBytes: ; $58
    dw

wSavedCurrCompressedRamDest: ; $5a
    dw

w5c:
    ds $d-$c

wCompressedDataRomSrc: ; $5d
    ds 3

wCompressedDataRamDest: ; $60
    ds 3

wCompressedDataEndRamAddr: ; $63
    dw

wCompressedDataCtrlByte: ; $65
    db

wCompressedDataNumCtrlBitsLeft: ; $66
    db

w67:
    ds $8f-$67

wSpriteX: ; $8f
    db

w90:
    ds 1-0

wSpriteY: ; $91
    db

w92:
    ds 7-2

wSpriteAttr: ; $97
    db

w98:
    ds $d-8

wSpriteTileIdx: ; $9d
    db

w9e:
    ds $f-$e

wCameraTopLeftX: ; $9f
    dw

wCameraTopLeftY: ; $a1
    dw

wa3:
    ds 7-3

wCurrEntity: ; $a7
    db

wa8:
    ds $b-8

wCurrEntityMovePatternIdx: ; $ab
    db

wac:
    ds $100-$ac

wOam: ; $0100
    ds $100

w0200:
    ds $692-$200

; todo: unknown size
wEntityMovementDirs: ; $0692
    db

.ends

.ramsection "Ram 7eh" bank $7e slot 1

w7e2000:
    ds $e100-$2000

wEntitiesReservingSpriteSlots: ; $e100
    ds $80

.ends

.ramsection "Ram 7fh" bank $7f slot 1

w7f2000:
    ds $ddae-$2000

; todo: unknown size
wEntityXs: ; $ddae
    ds $e3e-$dae

; todo: unkown size
wEntityYs: ; $de3e
    ds $e216-$de3e

; todo: unknown size
wEntitySizeTypes: ; $e216
    ds $5e-$16

; todo: unknown size
wEntitySpriteTileIdxes: ; $e25e
    ds $a6-$5e

; todo: unknown size
wEntityNonPriorityAttrBits: ; $e2a6
    ds $316-$2a6

; todo: unknown size
wEntityPriorityAttrBits: ; $e316
    ds $ee-$16

; todo: unknown size
wEntityMovePatternLongAddrs: ; $e3ee
    db

.ends