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

.endu

wChnLeftVol: ; $12
    db

wChnRightVol: ; $13
    db

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

w008d:
    ds $95-$8d

wChnBitflagToKON: ; $95
    db

wChnBitflagToKOF: ; $96
    db

w0097:
    ds $c-7

wCurrSampleDestAddr: ; $9c
    dw

wCurrSampleIdxTimes4: ; $9e
    db

w09f:
    ds $200-$9f

wSourceDir: ; $200
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

w0653:
    ds $73-$53

w0673: ; $0673
    ds NUM_SW_CHANNELS

w0683: ; $0683
    ds NUM_SW_CHANNELS

w0693:
    ds $d3-$93

w06d3: ; $06d3
    ds NUM_SW_CHANNELS

w06e3: ; $06e3
    ds NUM_SW_CHANNELS

w06f3:
    ds $713-$6f3

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
wMusicAndSEPitchMult: ; $07c3
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

w0823: ; $0823
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

w0883: ; $0883
    ds NUM_SW_CHANNELS

w0893: ; $0893
    ds NUM_SW_CHANNELS

w08a3: ; $08a3
    ds NUM_SW_CHANNELS

w08b3: ; $08b3
    ds NUM_SW_CHANNELS

wMvol: ; $08c3
    db

w08c4:
    ds 7-4

w8COEFValsIdx: ; $08c7
    db

w08c8:
    ds $d2-$c8

wSamplesMetadata: ; $08d2
    instanceof SampleMetadata
wOtherSamplesMetadata:
    ds $ff*SampleMetadata.sizeof

w0cd2:
    ds $4400-$cd2

wSoundFileStart: ; $4400
    .db
wSoundFileName: ; $4400
    ds $10
wSoundFileChnsInUse: ; $4410
    ds $10
wSoundFileChnSectionOffs: ; $4420
    ds $10

.ends