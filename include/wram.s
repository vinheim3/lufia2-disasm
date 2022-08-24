.include "includes.s"

.base $00

.ramsection "Low Ram" bank 0 slot 0

w00:
    ds $2a

wCurrCharMovePatternAddr: ; $2a
    dw

w2c:
    ds $46-$2c

wJoy1CurrHeld: ; $46
    dw

wJoy2CurrHeld: ; $48
    dw

wJoy1InvertedStickyHeld: ; $4a
    dw

wJoy2InvertedStickyHeld: ; $4c
    dw

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

wCurrChar: ; $a7
    db

wa8:
    ds 9-8

wCurrEntity: ; $a9
    db

waa:
    ds $b-$a

wCurrCharMovePatternIdx: ; $ab
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
    ds $a4-$73

; Every tile is -/+ $10
wInAreaPlayerX: ; $05a4
    dw

; Every tile is -/+ $10
wInAreaPlayerY: ; $05a6
    dw

w05a8:
    ds $c-8

wCurrRoomIdx: ; $05ac
    db

w05ad:
    ds $d2-$ad

; ie how they look
wCharacterType: ; $05d2
    ds NUM_CHARS

wCharacterIds: ; $05fa
    ds NUM_CHARS

w0622:
    ds $92-$22

wCharacterMovementDirs: ; $0692
    ds NUM_CHARS

; this is their X / 16 so it fits in a byte
wCharacterXsDiv16s: ; 06ba
    ds NUM_CHARS

; this is their Y / 16 so it fits in a byte
wCharacterYsDiv16s: ; 06e2
    ds NUM_CHARS

w070a:
    ds $7e-$a

; todo: unknown size, max $20
wtodo_SomeFlagsBitfield: ; $077e
    ds $20

w079e:
    ds $91e-$79e

; todo: unknown size
wScenarioItemsBitsSet: ; $091e
    db

w091f:
    ds $9e-$1f

wRoomScriptAddr: ; $099e
    dw
wRoomScriptBank: ; $09a0:
    db

w09a1:
    ds $b7-$a1

wCurrScriptAddr: ; $09b7
    dw
wCurrScriptBank: ; $09b9
    db

w09ba:
    ds $c4-$ba

wCapsuleMonsterDataOffs: ; $09c4
    dw

w09c6:
    ds $e2-$c6

; 0-3 = dlur
wShipDir: ; $09e2
    db

wShipXdiv16: ; $09e3
    db

wShipYdiv16: ; $09e4
    db

w09e5:
    ds $f2-$e5

.union

    wCurrInBattleEnemyIdx: ; $09f2
        db

.nextu

    wCurrInvItemId: ; $09f2
        dw

.endu

w09f4:
    ds $a-4

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
    ds $7a-$c

wNumPartyChars: ; $0a7a
    db

wPartCharTypeIdxes: ; $0a7b
    ds 4

w0a7f:
    ds $8d-$7f

; low 9 bits is inventory item, upper 7 bits>>1 = count
; since count is bcd, max is 127, though display will render as 27
wInventoryItemsAndCounts: ; $0a8d
    ds $be

w0b4b:
    ds $77-$4b

; todo: unknown size
wBufferedTextToDisplay: ; $0b77
    db

w0b78:
    ds $be-$78

wNotInCode_PlayerHealth: ; $0bbe
    db

w0bbf:
    ds $11bb-$bbf

wCapsuleMonstersAndLevel: ; $11bb
    ds 7

w11c2:
    ds $f2-$c2

wCurrOverworldPlayerX: ; $11f2
    dw

wCurrOverworldPlayerY: ; $11f4
    dw

wPrevOverworldPlayerXLo: ; $11f6
    db

wPrevOverworldPlayerYLo: ; $11f7
    db

w11f8:
    ds $267-$1f8

wFinalScriptCondition: ; $1267
    db

wCurrScriptCondition: ; $1268
    db

w1269:
    ds $345-$269

wInBattleEnemyIdxes: ; $1345
    ds NUM_ENEMIES_IN_BATTLE

w134b:
    ds $4ab-$34b

wJoy1StickyPressed: ; $14ab
    dw

w14ad:
    ds $de-$ad

wSelectedCapsuleMonsterType: ; $14de
    db

w14df:
    ds $605-$4df

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
    ds $d0f2-$2000

; ie uppper nybble of MOSAIC
wMosaicPixelSize: ; $d0f2
    db

w7fd0f3:
    ds $dae-$f3

wEntityXs: ; $ddae
    ds NUM_ENTITIES*2

wEntityYs: ; $de3e
    ds NUM_ENTITIES*2

w7fdece:
    ds $e216-$dece

wEntitySizeTypes: ; $e216
    ds NUM_ENTITIES

wEntitySpriteTileIdxes: ; $e25e
    ds NUM_ENTITIES

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
    ds $696-$3ef

wAncientCaveFloorPlus1: ; $e696
    db

w7fe697:
    ds $f462-$e697

wPlayerDamageTaken: ; $f462
    db

w7ff463:
    ds $8a4-$463

wOverworldEnemySetupIdx: ; $f8a4
    db

.ends