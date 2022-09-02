.include "includes.s"

.ramsection "RAM" bank 0 slot 0

w0000:
    ds $10-0

wNotePitchLo: ; $10
    db

wPreservedSndChn: ; $11
    db

w0012:
    ds 4-2

wHiOfMultTimesPitchLo: ; $14
    db

w0015:
    ds 8-5

wCurrSndChnSndByteSrc: ; $18
    dw

w001a:
    ds $d-$a

w001d: ; $1d
    ds NUM_SW_CHANNELS

w002d: ; $2d
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
    ds $623-$8d

wMusicAndSEBaseNote: ; $0623
    ds NUM_SW_CHANNELS

wMusicAndSESndByteSrcLo: ; $0633
    ds NUM_SW_CHANNELS

wMusicAndSESndByteSrcHi: ; $0643
    ds NUM_SW_CHANNELS

w0653:
    ds $733-$653

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

.ends