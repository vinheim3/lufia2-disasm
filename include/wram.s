.include "includes.s"

.base $00

.ramsection "Low Ram" bank 0 slot 0

w00:
    ds $2a

wCurrCharMovePatternAddr: ; $2a
    dw

w2c:
    ds $40-$2c

; both can be set
wNmiCounter1: ; $40
    dw

wNmiCounter2: ; $42
    dw

w44:
    ds 6-4

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

.union

    wCameraTopLeftX: ; $9f
        dw

.nextu

    wCurrPuzzlePieceX: ; $9f
        db

    wCurrPuzzlePieceY: ; $a0
        db

.endu

wCameraTopLeftY: ; $a1
    dw

wa3:
    ds 7-3

; todo: refers to the same thing? as in 8 static NPCs per room?
; or 1st 8 can use scripts?
.union

    wCurrChar: ; $a7
        db

.nextu

    wCurrPuzzleScript: ; $a7
        db

.endu

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
    ds $320-$200

wShadowPalettes: ; $0320
    ds $200

w0520:
    ds $59-$20

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
    ds $d-3

wGenericMvn: ; $057d
    db
wGenericMvnDestBank: ; $057e
    db
wGenericMvnSrcBank: ; $057f
    db

w0580:
    ds 3-0

wIniDisp: ; $0583
    db

w0584:
    ds $a4-$84

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
    ds $b9-$ad

wRoomMetatilesWide: ; $05b9
    db

w05ba:
    ds $b-$a

wRoomMetatilesHigh: ; $05bb
    db

w05bc:
    ds $d2-$bc

; ie how they look
wCharacterType: ; $05d2
    ds NUM_CHARS

wCharacterIds: ; $05fa
    ds NUM_CHARS

w0622:
    ds $92-$22

; D - 0, L - 2, U - 4, R - 6
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
    ds $81e-$79e

wMovableNPCsIds: ; $081e
    ds $40

wMovableNPCsRoomIds: ; $085e
    ds $40

; -$4f
wMovableNPCsEntityIds: ; $089e
    ds $40

wMovableNPCsTypeIds: ; $08de
    ds $40

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
    ds $df-$c6

wShipUpgradeLevel: ; $09df
    db

w09e0:
    ds 2-0

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

wPartyCharTypeIdxes: ; $0a7b
    ds 4

w0a7f:
    ds $8d-$7f

; low 9 bits is inventory item, upper 7 bits>>1 = count
; since count is bcd, max is 127, though display will render as 27
wInventoryItemsAndCounts: ; $0a8d
    ds $c0

w0b4d:
    ds $77-$4d

; todo: unknown size
wBufferedTextToDisplay: ; $0b77
    db

w0b78:
    ds $be-$78

wNotInCode_PlayerHealth: ; $0bbe
    db

w0bbf:
    ds $11a3-$bbf

; 0 to 6
wCurrCapMon: ; $11a3
    db

w11a4:
    ds $d-4

wCapsuleMonstersDesiredFood: ; $11ad
    ds NUM_CAP_MONS*2

wCapsuleMonstersLevel: ; $11bb
    ds NUM_CAP_MONS

wCapsuleMonstersFedVal: ; $11c2
    ds NUM_CAP_MONS

w11c9:
    ds $f2-$c9

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
    ds $54f-$4df

wCapMonsValLeftToFeed: ; $154f
    db

w1550:
    ds $605-$550

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

w7ee180:
    ds $f000-$e180

; todo: unknown size
wRoomMetadataDicts: ; $f000
    db

.ends

.ramsection "Ram 7fh" bank $7f slot 1

w7f2000:
    ds $d010-$2000

; todo: the wide/high vars seem to be 8 bytes in size
wOrigRoomMetatilesWide: ; $d010
    db

w7fd011:
    ds 8-1

wOrigRoomMetatilesHigh: ; $d018
    db

w7fd019:
    ds $74-$19

wPuzzleScriptVars: ; $d074
    ds $20

w7fd094:
    ds $f2-$94

; ie uppper nybble of MOSAIC
wMosaicPixelSize: ; $d0f2
    db

w7fd0f3:
    ds $100-$f3

; todo: unknown size
wPuzzleScriptBitFlags: ; $d100
    db

w7fd101:
    ds $4c-1

wCurrScriptBtnPressedStatus: ; $d14c
    ds NUM_PUZZLE_SCRIPTS

w7fd154: ; $d154
    ds NUM_PUZZLE_SCRIPTS

; idxed (code-$fb)*8 + curr script
; container 0 - eg contains btn stepped on for curr script
wPuzzleScriptContainer0Vars: ; $d15c
    ds NUM_PUZZLE_SCRIPTS
wPuzzleScriptContainer1Vars: ; $d164
    ds NUM_PUZZLE_SCRIPTS
wPuzzleScriptContainer2Vars: ; $d16c
    ds NUM_PUZZLE_SCRIPTS
wPuzzleScriptContainer3Vars: ; $d174
    ds NUM_PUZZLE_SCRIPTS

wtodo_PzScriptVars_d17c: ; $d17c
    ds NUM_PUZZLE_SCRIPTS

wtodo_PzScriptVars_d184: ; $d184
    ds NUM_PUZZLE_SCRIPTS

; enabled if bit 7 set, delay is the other 7(?) bytes
wPuzzleScriptsEnabledAndDelay: ; $d18c
    ds NUM_PUZZLE_SCRIPTS

; if $ffff, there is no script
wPuzzleScriptBaseAddr: ; $d194
    dw
wPuzzleScriptBaseBank: ; $d196
    db

wPuzzleScriptCurrAddr: ; $d197
    dw
wPuzzleScriptCurrBank: ; $d199
    db

; eg for detecting stepping on button for world's hardest trick:
; $ff is set when player is on button
; bit 0 is set if the player just stepped on the button, else cleared
wPuzzleScriptGenericCheck: ; $d19a
    db

; with the +$20, eg for world's hardest, the original $34 btn idx
; they start at $20 as they get morphed into a bitflag from idx 4+
wPuzzleBtnEntryIdx: ; $d19b
    db

w7fd19c: ; $d19c
    ds 4

wCurrRoomChestContentsAddr: ; $d1a0
    dw

w7fd1a2:
    ds 3-2

; todo: unknown size, $20 makes sense if e0 to ff is allowed
wPuzzleScriptArithmeticVars0: ; $d1a3
    ds $20

w7fd1c3:
    ds $e3-$c3

; todo: unknown size, $20 makes sense if e0 to ff is allowed
wPuzzleScriptArithmeticVars1: ; $d1e3
    ds $20

w7fd203:
    ds $23-3

; todo: unknown size, $20 makes sense if e0 to ff is allowed
wPuzzleScriptArithmeticVars2: ; $d223
    ds $20

w7fd243:
    ds $63-$43

; todo: unknown size, $20 makes sense if e0 to ff is allowed
wPuzzleScriptArithmeticVars3: ; $d263
    ds $20

w7fd283:
    ds $a3-$83

wtodo_SavedPuzzleScriptIdx: ; $d2a3
    db

w7fd2a4:
    ds $dae-$2a4

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

wPlayerHPAdjust: ; $f462
    db

w7ff463:
    ds $8a4-$463

wOverworldEnemySetupIdx: ; $f8a4
    db

.ends