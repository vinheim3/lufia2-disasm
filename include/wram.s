.include "includes.s"

.base $00

.ramsection "Low Ram" bank 0 slot 0

w00:
    ds $2a

wCurrEntityMovePatternAddr: ; $2a
    dw

w2c:
    ds $46-$2c

wJoy1CurrHeld: ; $46
    dw

wJoy2CurrHeld: ; $48
    dw

w04a:
    ds $e-$a

wWordInMultWordByByte: ; $4e
    dw

wByteInMultWordByByte: ; $50
    db

wResultOfMultWordByByte: ; $51
    dl

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
    ds $559-$200

wCounterTilSlowlyUpdatingRNG: ; $0559
    db

wJoy1StickyCounter: ; $055a
    dw

wJoy2StickyCounter: ; $055c
    dw

wJoy1PrevHeld: ; $055e
    dw

wJoy2PrevHeld: ; $0560
    dw

w0562:
    ds 7-2

wBCDversionOfANum: ; $0567
    ds 8

w056f:
    ds $70-$6f

wNumToConvertToBCD: ; $0570
    dl

w0573:
    ds $ac-$73

wCurrRoomIdx: ; $05ac
    db

w05ad:
    ds $692-$5ad

; todo: unknown size
wEntityMovementDirs: ; $0692
    db

w0693:
    ds $91e-$693

; todo: unknown size
wScenarioItemsBitsSet: ; $091e
    db

w091f:
    ds $b7-$1f

wCurrScriptAddr: ; $09b7
    dw
wCurrScriptBank: ; $09b9
    db

w09ba:
    ds $f2-$ba

wCurrInBattleEnemyIdx: ; $09f2
    db

w09f3:
    ds $a-3

; ie a4 for red slime
wHitEnemyIdx: ; $09fa
    db

w09fb:
    ds $c-$b

wCurrEnemyExpGiven: ; $09fc
    dw

wCurrEnemyGoldGiven: ; $09fe
    dw

w0a00:
    ds 6-0

wCurrItemIdx: ; $0a06
    dw

w0a08:
    ds $b-8

wCurrSpellIdx: ; $0a0b
    db

w0a0c:
    ds $8d-$c

; todo: unknown size, word-sized
; low 9 bits is inventory item, upper 7 bits>>1 = count
; since count is bcd, max is 127, though display will render as 27
wInventoryItemsAndCounts: ; $0a8d
    db

w0a8e:
    ds $b77-$a8e

; todo: unknown size
wBufferedTextToDisplay: ; $0b77
    db

w0b78:
    ds $be-$78

wNotInCode_PlayerHealth: ; $0bbe
    db

w0bbf:
    ds $11f2-$bbf

wCurrOverworldPlayerX: ; $11f2
    dw

wCurrOverworldPlayerY: ; $11f4
    dw

wPrevOverworldPlayerXLo: ; $11f6
    db

wPrevOverworldPlayerYLo: ; $11f7
    db

w11f8:
    ds $345-$1f8

wInBattleEnemyIdxes: ; $1345
    ds NUM_ENEMIES_IN_BATTLE

w134b:
    ds $605-$34b

wAccumulatedBattleExp: ; $1605
    dl

wAccumulatedBattleGold: ; $1608
    dl

.ends

.ramsection "Ram 7eh" bank $7e slot 1

w7e2000:
    ds $1800

w7e3800:
    ds $e100-$3800

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

w7fe3ef:
    ds $f462-$e3ef

wPlayerDamageTaken: ; $f462
    db

w7ff463:
    ds $8a4-$463

wOverworldEnemySetupIdx: ; $f8a4
    db

.ends