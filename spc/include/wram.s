.include "includes.s"

.ramsection "RAM" bank 0 slot 0

w0000:
    ds 4-0

wCurrSampleLoopStartOffs: ; $04
    dw

w0006:
    ds 8-6

wCurrSampleDataLen: ; $08
    dw

w000a:
    ds $c-$a

wSnesDataDestAddr: ; $0c
    dw

w0e:
    ds $10-$e

.union

    wNotePitchLo: ; $10
        db

    wPreservedSndChn: ; $11
        db

.nextu

    wPtrToSndChnsSectionPtrs: ; $10
        dw

.nextu

    wPreservedSrcNum: ; $10
        db

.nextu

    wPtrToSoundEffectSrc: ; $10
        dw

.nextu

    w0010:
        db

    wScaledDownFinePitchAdjust: ; $11
        db

.endu

.union

    wChnLeftVol: ; $12
        db

    wChnRightVol: ; $13
        db

.nextu

    wCurrFinePitchAdjust: ; $12
        dw

.nextu

    wTotalPerNotePitchMult: ; $12
        db

.nextu

    wAdsrParamByte: ; $12
        db

.endu

.union

    wHiOfMultTimesPitchLo: ; $14
        db

.nextu

    wSndEffectOffsetToChnData: ; $14
        db

    wNumChannelsLeftForSndEffect: ; $15
        db

.endu

w0016:
    ds 8-6

.union

    wCurrSndChnSndByteSrc: ; $18
        dw

.nextu

    wSndFileSrc: ; $18
        dw

.nextu

    wSoundEffectSrc: ; $18
        dw

.nextu

    wEchoBufferAddr: ; $18
        dw

.endu

w001a:
    ds $d-$a

; todo: some of these $10-byte structs might only be 8 bytes each
wCtrTilProcessingChnsMusicBytes: ; $1d
    ds NUM_SW_CHANNELS

wCtrTilProcessingChnsSEBytes: ; $2d
    ds NUM_SW_CHANNELS

; 8 channels for music, then 8 for sound effects
; If bit 1 set on the 1st 8, it means the sound effect (offset+8) is in use
; If bit 0 set, it means the struct is in use
wMusicAndSEControl: ; $3d
    ds NUM_SW_CHANNELS

wBaseMusicAndSEPitchLow: ; $4d
    ds NUM_SW_CHANNELS

wBaseMusicAndSEPitchHigh: ; $5d
    ds NUM_SW_CHANNELS

wFinalMusicAndSEPitchLow: ; $6d
    ds NUM_SW_CHANNELS

wFinalMusicAndSEPitchHigh: ; $7d
    ds NUM_SW_CHANNELS

w008d: ; $008d
    ds 8

wChnBitflagToKON: ; $95
    db

wChnBitflagToKOF: ; $96
    db

w0097:
    ds 8-7

; bit 3 set: evol r can be neg'd
; bit 4 set: evol l can be neg'd
w0098: ; $98
    db

; bit 0???
w0099: ; $99
    db

wChnBitfieldCanStart: ; $9a
    db

; bit 0 set: can call UpdateSound
; bit 1 set: can do Call_00_3dc4
; bit 2 set: subtract from echo vol mult
; bit 3 set: add to echo vol mult
w009b: ; $009b
    db

wCurrSampleDestAddr: ; $9c
    dw

wCurrSampleIdxTimes4: ; $9e
    db

w09f:
    ds $a0-$9f

wChnBitfieldsStarted: ; $a0
    db

w00a1: ; $a1
    db

w00a2: ; $a2
    db

w00a3: ; $a3
    db

w00a4: ; $a4
    db

w00a5: ; $a5
    db

; todo: has X-indexing up to 8?
w00a6: ; $a6
    db

w00a7: ; $a7
    db

w00a8: ; $a8
    dw

w00aa:
    ds $d-$a

w00ad: ; $ad
    db

w00ae: ; $ae
    ds 8

w00b6:
    ds 7-6

w00b7: ; $b7
    db

w00b8: ; $b8
    db

w00b9: ; $b9
    db

w00ba:
    ds $200-$ba

wSourceDir: ; $0200
    ds $400

w0600:
    ds 3-0

wMusicAndSESectionsPtrLo: ; $0603
    ds NUM_SW_CHANNELS

wMusicAndSESectionsPtrHi: ; $0613
    ds NUM_SW_CHANNELS

wMusicAndSEBaseNote: ; $0623
    ds NUM_SW_CHANNELS

wMusicAndSESndByteSrcLo: ; $0633
    ds NUM_SW_CHANNELS

wMusicAndSESndByteSrcHi: ; $0643
    ds NUM_SW_CHANNELS

wMusicAndSELoopSectionPtrLo: ; $0653
    ds NUM_SW_CHANNELS

w0663:
    ds $73-$63

wMusicAndSELoopSectionPtrHi: ; $0673
    ds NUM_SW_CHANNELS

w0683: ; $0683
    ds NUM_SW_CHANNELS

wMusicAndSESndByteLoopAddrLo: ; $0693
    ds NUM_SW_CHANNELS

w06a3:
    ds $b3-$a3

wMusicAndSESndByteLoopAddrHi: ; $06b3
    ds NUM_SW_CHANNELS

w06c3:
    ds $d3-$c3

wMusicAndSELoopCounter: ; $06d3
    ds NUM_SW_CHANNELS

w06e3: ; $06e3
    ds NUM_SW_CHANNELS

wMusicAndSELoopNote: ; $06f3
    ds NUM_SW_CHANNELS

w0703:
    ds $13-3

wMusicNewSampleIdxToSet: ; $0713
    ds NUM_SW_CHANNELS

w0723: ; $0723
    ds NUM_SW_CHANNELS

w0733: ; $0733
    ds NUM_SW_CHANNELS

; $00-$0b are octave 0, $0c+ use octave 8-x (x=note/12)
wMusicAndSENote: ; $0743
    ds NUM_SW_CHANNELS

w0753: ; $0753
    ds NUM_SW_CHANNELS

w0763: ; $0763
    ds NUM_SW_CHANNELS

w0773: ; $0773
    ds NUM_SW_CHANNELS

w0783: ; $0783
    ds NUM_SW_CHANNELS

w0793: ; $0793
    ds NUM_SW_CHANNELS

w07a3: ; $07a3
    ds NUM_SW_CHANNELS

w07b3: ; $07b3
    ds NUM_SW_CHANNELS

; $80 - normal
; $00 - double (ie as if $100)
; Others center around $80, ie $85 is slightly multiplied
wMusicAndSEMultPerUpdate: ; $07c3
    ds NUM_SW_CHANNELS

w07d3: ; $07d3
    ds NUM_SW_CHANNELS

w07e3: ; $07e3
    ds NUM_SW_CHANNELS

w07f3: ; $07f3
    ds NUM_SW_CHANNELS

w0803: ; $0803
    ds NUM_SW_CHANNELS

w0813: ; $0813
    ds NUM_SW_CHANNELS

wMusicAndSEFinePitchAdjust: ; $0823
    ds NUM_SW_CHANNELS

w0833: ; $0833
    ds NUM_SW_CHANNELS

w0843: ; $0843
    ds NUM_SW_CHANNELS

w0853: ; $0853
    ds NUM_SW_CHANNELS

w0863: ; $0863
    ds NUM_SW_CHANNELS

w0873: ; $0873
    ds NUM_SW_CHANNELS

wMusicAndSEFinePitchMult: ; $0883
    ds NUM_SW_CHANNELS

wMusicAndSEMultPerNewNoteHi: ; $0893
    ds NUM_SW_CHANNELS

wMusicAndSEMultPerNewNoteLo: ; $08a3
    ds NUM_SW_CHANNELS

w08b3: ; $08b3
    ds NUM_SW_CHANNELS

wMvol: ; $08c3
    db

w08c4:
    ds 5-4

wBaseEvolR: ; $08c5
    db

wBaseEvolL: ; $08c6
    db

w8COEFValsIdx: ; $08c7
    db

wEchoFeedback: ; $08c8
    db

wEchoDelay: ; $08c9
    db

wEchoVolMult: ; $08ca
    db

; 1-use everytime set
wAdjustToEchoVolMult: ; $08cb
    db

w08cc: ; $08cc
    db

w08cd: ; $08cd
    db

wFlagDSPReg: ; $08ce
    db

w08cf:
    ds $d0-$cf

w08d0: ; $08d0
    db

w08d1: ; $08d1
    db

wSamplesMetadata: ; $08d2
    instanceof SampleMetadata
wOtherSamplesMetadata:
    ds $ff*SampleMetadata.sizeof

w0cd2:
    ds $4400-$cd2

wSoundFileStart: ; $4400
    dw
w4402:
    ds 3-2
wSoundFileTempoDivider: ; $4403
    db
wSoundFileName: ; $4404
    ds $c
wSoundFileChnsInUse: ; $4410
    ds 8
w4418:
    ds 9-8
wSoundFileEchoDelay: ; $4419
    db
w441a:
    ds $20-$1a
wSoundFileChnSectionOffs: ; $4420
    ds $10

.ends