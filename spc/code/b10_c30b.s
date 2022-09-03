.include "includes.s"

.bank 1 slot 2
.org 0

.include "data/soundEffects.s"

InitSoundFile:
	call !WaitUntilSNESReady                                                  ; $3560 : $3f, $ee, $05

;
	mov A, #$00                                                  ; $3563 : $e8, $00
	mov !w00a1, A                                                  ; $3565 : $c5, $a1, $00
	mov !w00a5, A                                                  ; $3568 : $c5, $a5, $00
	mov !w00a3, A                                                  ; $356b : $c5, $a3, $00

; Get pointer to channels in use for music
	mov wSndFileSrc, #<wSoundFileChnsInUse                                    ; $356e : $8f, $10, $18
	mov wSndFileSrc+1, #>wSoundFileChnsInUse                                  ; $3571 : $8f, $44, $19

; X and Y = snd hw channel
	mov X, #$00                                                               ; $3574 : $cd, $00
	mov Y, #$00                                                               ; $3576 : $8d, $00

@nextHwChannel_1:
; Clear that sound effects use this channel
	mov A, wMusicAndSEControl+X                                               ; $3578 : $f4, $3d
	and A, #CHN_USES_SE                                                       ; $357a : $28, $02
	mov wMusicAndSEControl+X,A                                                ; $357c : $d4, $3d

; Ignore channel if byte read = $ff
	mov A, [wSndFileSrc]+Y                                                    ; $357e : $f7, $18
	cmp A, #$ff                                                               ; $3580 : $68, $ff
	beq @toNextHwChannel                                                      ; $3582 : $f0, $08

; From above byte, get bit 7 and set bit 0 (music in use)
	and A, #$80                                                               ; $3584 : $28, $80
	or A, #$01                                                                ; $3586 : $08, $01
	or A, wMusicAndSEControl+X                                                ; $3588 : $14, $3d
	mov wMusicAndSEControl+X,A                                                ; $358a : $d4, $3d

@toNextHwChannel:
; Stop once all 8 hardware channels processed
	inc X                                                                     ; $358c : $3d
	inc Y                                                                     ; $358d : $fc
	cmp Y, #$08                                                               ; $358e : $ad, $08
	bne @nextHwChannel_1                                                      ; $3590 : $d0, $e6

; Point Y at section offsets per channel
	mov Y, #(wSoundFileChnSectionOffs-wSoundFileChnsInUse)                    ; $3592 : $8d, $10
	mov X, #$00                                                               ; $3594 : $cd, $00

@nextHwChannel_2:
; Init sound channel, then have it process next UpdateSound
	call !InitSndChnX                                                         ; $3596 : $3f, $30, $3f
	mov A, #$01                                                               ; $3599 : $e8, $01
	mov wCtrTilProcessingChnsMusicBytes+X,A                                   ; $359b : $d4, $1d

;
	mov A, #$00                                                  ; $359d : $e8, $00
	mov w008d+X,A                                                  ; $359f : $d4, $8d

; Get low byte of the channel's 1st section
	mov A, [wSndFileSrc]+Y                                                    ; $35a1 : $f7, $18
	mov !wMusicAndSESectionsPtrLo+X, A                                        ; $35a3 : $d5, $03, $06
	mov wPtrToSndChnsSectionPtrs, A                                           ; $35a6 : $c4, $10
	inc Y                                                                     ; $35a8 : $fc

; Get high byte of above
	mov A, [wSndFileSrc]+Y                                                    ; $35a9 : $f7, $18
	clrc                                                                      ; $35ab : $60
	adc A, #>wSoundFileStart                                                  ; $35ac : $88, $44
	mov !wMusicAndSESectionsPtrHi+X, A                                        ; $35ae : $d5, $13, $06
	mov wPtrToSndChnsSectionPtrs+1, A                                         ; $35b1 : $c4, $11

; Save the initial section's src addr
	inc Y                                                                     ; $35b3 : $fc
	call !SetChannelXsNextSectionPtr                                          ; $35b4 : $3f, $28, $3b

; Set curr channel's sample to 0
	push Y                                                                    ; $35b7 : $6d
	mov A, #$00                                                               ; $35b8 : $e8, $00
	call !AssignSampleToSndChannel                                            ; $35ba : $3f, $0f, $42
	pop Y                                                                     ; $35bd : $ee

	inc X                                                                     ; $35be : $3d
	cmp X, #$08                                                               ; $35bf : $c8, $08
	beq @afterInitChannels                                                    ; $35c1 : $f0, $03

	jmp !@nextHwChannel_2                                                     ; $35c3 : $5f, $96, $35

@afterInitChannels:
	call !SetDspPMON                                                  ; $35c6 : $3f, $90, $3f
	call !SetDspNON                                                  ; $35c9 : $3f, $a8, $3f

;
	mov A, !wSoundFileEchoDelay                                                  ; $35cc : $e5, $19, $44
	mov !wEchoDelay, A                                                  ; $35cf : $c5, $c9, $08
	mov A, #$50                                                  ; $35d2 : $e8, $50
	mov !wEchoFeedback, A                                                  ; $35d4 : $c5, $c8, $08
	mov A, #$00                                                  ; $35d7 : $e8, $00
	mov !w8COEFValsIdx, A                                                  ; $35d9 : $c5, $c7, $08
	call !SetDspCOEF                                                  ; $35dc : $3f, $c2, $3f
	call !SetupNewValsForEchoRegs                                                  ; $35df : $3f, $c4, $42
	mov A, #$54                                                  ; $35e2 : $e8, $54
	call !SetBaseEvolFromMvol                                                  ; $35e4 : $3f, $0a, $3a
	mov CTRL_REG, #$00                                                  ; $35e7 : $8f, $00, $f1
	mov A, !wSoundFileTempoDivider                                                  ; $35ea : $e5, $03, $44
	mov TIMER_0, A                                                  ; $35ed : $c4, $fa
	mov TIMER_1, #$7d                                                  ; $35ef : $8f, $7d, $fb
	mov CTRL_REG, #$03                                                  ; $35f2 : $8f, $03, $f1
	or w009b, #$01                                                  ; $35f5 : $18, $01, $9b
	jmp !NextSndCommand                                                  ; $35f8 : $5f, $88, $03


UpdateSound:
	mov X, #$00                                                               ; $35fb : $cd, $00

@nextHwSndChannel:
; Skip channel if not in use
	mov A, wMusicAndSEControl+X                                               ; $35fd : $f4, $3d
	and A, #CHN_USES_MUSIC                                                    ; $35ff : $28, $01
	beq @toNextHwSndChannel                                                   ; $3601 : $f0, $33

; Skip ending sound effects channel if no counter set to end it...
	mov A, wCtrTilProcessingChnsSEBytes+X                                     ; $3603 : $f4, $2d
	beq @processMusicForChn                                                   ; $3605 : $f0, $0d

; If that counter isn't yet 0...
	dec wCtrTilProcessingChnsSEBytes+X                                        ; $3607 : $9b, $2d
	bne @processMusicForChn                                                   ; $3609 : $d0, $09

; And if the channel does not have a sound effect attached
	mov A, wMusicAndSEControl+X                                               ; $360b : $f4, $3d
	and A, #CHN_USES_SE                                                       ; $360d : $28, $02
	bne @processMusicForChn                                                   ; $360f : $d0, $03

	call !SetThatChnShouldStop                                                ; $3611 : $3f, $8f, $3b

@processMusicForChn:
; Skip music if the counter til processing it isn't 0
	dec wCtrTilProcessingChnsMusicBytes+X                                     ; $3614 : $9b, $1d
	bne @toNextHwSndChannel                                                   ; $3616 : $d0, $1e

; Skip attaching a new sample to the channel if capability disabled for channel...
; (through bit 7, ie CHN_NO_NEW_SAMPLES)
	call !ProcessChannelsSndBytes                                             ; $3618 : $3f, $91, $36
	mov A, wMusicAndSEControl+X                                               ; $361b : $f4, $3d
	bmi @toNextHwSndChannel                                                   ; $361d : $30, $17

; If sound effects are currently in use for the channel
	and A, #CHN_USES_SE                                                       ; $361f : $28, $02
	bne @toNextHwSndChannel                                                   ; $3621 : $d0, $13

;
	mov A, !MusicBitfieldMap+X                                                  ; $3623 : $f5, $42, $43
	and A, w00b7                                                  ; $3626 : $24, $b7
	beq @toNextHwSndChannel                                                  ; $3628 : $f0, $0c

	eor A, #$ff                                                  ; $362a : $48, $ff
	and A, w00b7                                                  ; $362c : $24, $b7
	mov w00b7, A                                                  ; $362e : $c4, $b7
	mov A, !wMusicNewSampleIdxToSet+X                                                  ; $3630 : $f5, $13, $07
	call !AssignSampleToSndChannel                                                  ; $3633 : $3f, $0f, $42

@toNextHwSndChannel:
	inc X                                                                     ; $3636 : $3d
	cmp X, #$08                                                               ; $3637 : $c8, $08
	bne @nextHwSndChannel                                                     ; $3639 : $d0, $c2

; Finally update hardware regs
	call !UpdateAllVolAndEchoVol                                              ; $363b : $3f, $18, $40
	call !UpdateAllPitchDspRegs                                               ; $363e : $3f, $ef, $40
	call !UpdateKON_KOF                                                       ; $3641 : $3f, $08, $3f
	ret                                                                       ; $3644 : $6f


_CommandHandler03h:
	mov A, w009b                                                  ; $3645 : $e4, $9b
	and A, #$f2                                                  ; $3647 : $28, $f2
	mov w009b, A                                                  ; $3649 : $c4, $9b
	mov w00a1, #$00                                                  ; $364b : $8f, $00, $a1
	mov w00a5, #$00                                                  ; $364e : $8f, $00, $a5
	mov w00a3, #$00                                                  ; $3651 : $8f, $00, $a3
	call !SetDspNON                                                  ; $3654 : $3f, $a8, $3f
	call !SetDspPMON                                                  ; $3657 : $3f, $90, $3f
	call !SetDspEON                                                  ; $365a : $3f, $9c, $3f
	mov A, #$00                                                  ; $365d : $e8, $00
	call !SetBaseEvolFromMvol                                                  ; $365f : $3f, $0a, $3a
	mov wChnBitfieldCanStart, #$ff                                                  ; $3662 : $8f, $ff, $9a
	mov X, #$07                                                  ; $3665 : $cd, $07

@loop_3667:
	mov A, wMusicAndSEControl+X                                                  ; $3667 : $f4, $3d
	and A, #$01                                                  ; $3669 : $28, $01
	beq @cont_3676                                                  ; $366b : $f0, $09

	mov A, wMusicAndSEControl+X                                                  ; $366d : $f4, $3d
	and A, #CHN_USES_SE                                                  ; $366f : $28, $02
	bne @cont_3676                                                  ; $3671 : $d0, $03

	call !SetThatChnShouldStop                                                  ; $3673 : $3f, $8f, $3b

@cont_3676:
	mov A, wMusicAndSEControl+X                                                  ; $3676 : $f4, $3d
	and A, #CHN_USES_SE                                                  ; $3678 : $28, $02
	mov wMusicAndSEControl+X,A                                                  ; $367a : $d4, $3d
	dec X                                                  ; $367c : $1d
	bpl @loop_3667                                                  ; $367d : $10, $e8

	mov A, #$00                                                  ; $367f : $e8, $00
	mov wChnBitflagToKON, A                                                  ; $3681 : $c4, $95
	call !UpdateKON_KOF                                                  ; $3683 : $3f, $08, $3f
	mov A, !wFlagDSPReg                                                  ; $3686 : $e5, $ce, $08
	or A, #$20                                                  ; $3689 : $08, $20
	mov DSP_REG_ADDR, #FLG                                                  ; $368b : $8f, $6c, $f2
	mov DSP_REG_DATA, A                                                  ; $368e : $c4, $f3
	ret                                                  ; $3690 : $6f


; X - software sound channel
ProcessChannelsSndBytes:
; Set curr sound byte src from channels pointer
	mov A, !wMusicAndSESndByteSrcLo+X                                                  ; $3691 : $f5, $33, $06
	mov wCurrSndChnSndByteSrc, A                                                  ; $3694 : $c4, $18
	mov A, !wMusicAndSESndByteSrcHi+X                                                  ; $3696 : $f5, $43, $06
	mov wCurrSndChnSndByteSrc+1, A                                                  ; $3699 : $c4, $19

; Get next sound byte
	mov Y, #$00                                                  ; $369b : $8d, $00
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $369d : $f7, $18
	bmi @soundByteBit7set                                                  ; $369f : $30, $26

; If bit 7 clear, it's a regular note
	call !Call_00_3b59                                                  ; $36a1 : $3f, $59, $3b
	inc Y                                                  ; $36a4 : $fc

; Channel's note is param + base
	clrc                                                  ; $36a5 : $60
	adc A, !wMusicAndSEBaseNote+X                                                  ; $36a6 : $95, $23, $06
	mov !wMusicAndSENote+X, A                                                  ; $36a9 : $d5, $43, $07

;
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $36ac : $f7, $18
	mov !w0753+X, A                                                  ; $36ae : $d5, $53, $07
	inc Y                                                  ; $36b1 : $fc
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $36b2 : $f7, $18
	mov !w0763+X, A                                                  ; $36b4 : $d5, $63, $07
	inc Y                                                  ; $36b7 : $fc
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $36b8 : $f7, $18
	mov !w0773+X, A                                                  ; $36ba : $d5, $73, $07

;
	call !Func_3ffd                                                  ; $36bd : $3f, $fd, $3f

; Skip past the note and 3 params
	mov A, #$04                                                  ; $36c0 : $e8, $04
	call !AddAontoChannelsSndByteSrc                                                  ; $36c2 : $3f, $1a, $3b
	bra @afterSndByte                                                  ; $36c5 : $2f, $2e

@soundByteBit7set:
; $f0+ codes are special control codes
	inc Y                                                  ; $36c7 : $fc
	cmp A, #$f0                                                  ; $36c8 : $68, $f0
	bcc @soundByte80hToEFh                                                  ; $36ca : $90, $03

	jmp !@soundByteFXh                                                  ; $36cc : $5f, $54, $37

@soundByte80hToEFh:
;
	call !Call_00_3b59                                                  ; $36cf : $3f, $59, $3b
	and A, #$7f                                                  ; $36d2 : $28, $7f
	clrc                                                  ; $36d4 : $60
	adc A, !wMusicAndSEBaseNote+X                                                  ; $36d5 : $95, $23, $06
	mov !wMusicAndSENote+X, A                                                  ; $36d8 : $d5, $43, $07
	mov A, !w0793+X                                                  ; $36db : $f5, $93, $07
	mov !w0753+X, A                                                  ; $36de : $d5, $53, $07
	mov A, !w07a3+X                                                  ; $36e1 : $f5, $a3, $07
	mov !w0763+X, A                                                  ; $36e4 : $d5, $63, $07
	mov A, !w07b3+X                                                  ; $36e7 : $f5, $b3, $07
	mov !w0773+X, A                                                  ; $36ea : $d5, $73, $07
	call !Func_3ffd                                                  ; $36ed : $3f, $fd, $3f
	mov A, #$01                                                  ; $36f0 : $e8, $01
	call !AddAontoChannelsSndByteSrc                                                  ; $36f2 : $3f, $1a, $3b

@afterSndByte:
	mov A, wMusicAndSEControl+X                                                  ; $36f5 : $f4, $3d
	and A, #CHN_USES_SE                                                  ; $36f7 : $28, $02
	bne @end_3716                                                  ; $36f9 : $d0, $1b

	mov A, !w0763+X                                                  ; $36fb : $f5, $63, $07
	beq @end_3716                                                  ; $36fe : $f0, $16

	mov A, wMusicAndSEControl+X                                                  ; $3700 : $f4, $3d
	bmi @br_3721                                                  ; $3702 : $30, $1d

	mov A, wCtrTilProcessingChnsSEBytes+X                                                  ; $3704 : $f4, $2d
	beq @br_3710                                                  ; $3706 : $f0, $08

	mov A, !w0783+X                                                  ; $3708 : $f5, $83, $07
	cmp A, !wMusicAndSENote+X                                                  ; $370b : $75, $43, $07
	beq @end_3716                                                  ; $370e : $f0, $06

@br_3710:
	call !CalcSndChnXsBasePitch                                                  ; $3710 : $3f, $bf, $41
	call !SetThatChnShouldStart                                                  ; $3713 : $3f, $74, $3b

@end_3716:
	mov A, !w0753+X                                                  ; $3716 : $f5, $53, $07
	mov wCtrTilProcessingChnsMusicBytes+X,A                                                  ; $3719 : $d4, $1d
	mov A, !w0763+X                                                  ; $371b : $f5, $63, $07
	mov wCtrTilProcessingChnsSEBytes+X,A                                                  ; $371e : $d4, $2d
	ret                                                  ; $3720 : $6f

@br_3721:
	call !SetThatChnShouldStart                                                  ; $3721 : $3f, $74, $3b
	mov Y, #$00                                                  ; $3724 : $8d, $00

@loop_3726:
	mov A, !Data_3c10+Y                                                  ; $3726 : $f6, $10, $3c
	beq @done                                                  ; $3729 : $f0, $28

	cmp A, !wMusicAndSENote+X                                                  ; $372b : $75, $43, $07
	beq @br_3733                                                  ; $372e : $f0, $03

	inc Y                                                  ; $3730 : $fc
	bra @loop_3726                                                  ; $3731 : $2f, $f3

@br_3733:
	mov A, !Data_3c1a+Y                                                  ; $3733 : $f6, $1a, $3c
	mov wBaseMusicAndSEPitchLow+X,A                                                  ; $3736 : $d4, $4d
	mov A, !Data_3c23+Y                                                  ; $3738 : $f6, $23, $3c
	mov wBaseMusicAndSEPitchHigh+X,A                                                  ; $373b : $d4, $5d
	mov A, !Data_3c2c+Y                                                  ; $373d : $f6, $2c, $3c
	mov !w0733+X, A                                                  ; $3740 : $d5, $33, $07
	mov A, !Data_3c35+Y                                                  ; $3743 : $f6, $35, $3c
	call !AssignSampleToSndChannel                                                  ; $3746 : $3f, $0f, $42
	mov A, !w0753+X                                                  ; $3749 : $f5, $53, $07
	mov wCtrTilProcessingChnsMusicBytes+X,A                                                  ; $374c : $d4, $1d
	mov A, !w0763+X                                                  ; $374e : $f5, $63, $07
	mov wCtrTilProcessingChnsSEBytes+X,A                                                  ; $3751 : $d4, $2d

@done:
	ret                                                  ; $3753 : $6f

@soundByteFXh:
	push X                                                  ; $3754 : $4d
	setc                                                  ; $3755 : $80
	sbc A, #$f0                                                  ; $3756 : $a8, $f0
	asl A                                                  ; $3758 : $1c
	mov X, A                                                  ; $3759 : $5d
	jmp [!SoundByteFXHandlers+X]                                                  ; $375a : $1f, $a0, $3b


SoundByteHandlerF0h:
	pop X                                                  ; $375d : $ce
	call !SetSndByteDelayAndAequNextByte                                                  ; $375e : $3f, $12, $3b
	push A                                                  ; $3761 : $2d
	mov A, !wMusicAndSEFinePitchMult+X                                                  ; $3762 : $f5, $83, $08
	bne +                                                  ; $3765 : $d0, $06

	mov !w07e3+X, A                                                  ; $3767 : $d5, $e3, $07
	mov !w0833+X, A                                                  ; $376a : $d5, $33, $08

+	pop A                                                  ; $376d : $ae
	mov !wMusicAndSEFinePitchMult+X, A                                                  ; $376e : $d5, $83, $08
	mov A, #$03                                                  ; $3771 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3773 : $5f, $07, $3b


SoundByteHandlerF1h:
	pop X                                                  ; $3776 : $ce
	call !SetSndByteDelayAndAequNextByte                                                  ; $3777 : $3f, $12, $3b
	mov !w0723+X, A                                                  ; $377a : $d5, $23, $07
	call !Func_3ffd                                                  ; $377d : $3f, $fd, $3f
	mov A, #$03                                                  ; $3780 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3782 : $5f, $07, $3b


SoundByteHandlerF2h:
	pop X                                                  ; $3785 : $ce
	call !SetSndByteDelayAndAequNextByte                                                  ; $3786 : $3f, $12, $3b
	mov !w0733+X, A                                                  ; $3789 : $d5, $33, $07
	mov A, #$03                                                  ; $378c : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $378e : $5f, $07, $3b


SoundByteHandlerF3h_SetDelay:
; Just set ctr til next snd byte, and skip past it and the $f3 command
	pop X                                                                     ; $3791 : $ce
	call !SetSndByteDelayAndAequNextByte                                      ; $3792 : $3f, $12, $3b
	mov A, #$02                                                               ; $3795 : $e8, $02
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $3797 : $5f, $07, $3b


SoundByteHandlerF4h_SetDelayAndTempoDivider:
	pop X                                                  ; $379a : $ce
	call !SetSndByteDelayAndAequNextByte                                                  ; $379b : $3f, $12, $3b
	mov CTRL_REG, #$00                                                  ; $379e : $8f, $00, $f1
	mov TIMER_0, A                                                  ; $37a1 : $c4, $fa
	mov TIMER_1, #$7d                                                  ; $37a3 : $8f, $7d, $fb
	mov CTRL_REG, #$03                                                  ; $37a6 : $8f, $03, $f1
	mov A, #$03                                                  ; $37a9 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $37ab : $5f, $07, $3b


SoundByteHandlerF6h_SetDelayAndPitchMult:
; Set ctr til next snd byte, pitch mult, the skip those bytes and the $f6 cmd
	pop X                                                                     ; $37ae : $ce
	call !SetSndByteDelayAndAequNextByte                                      ; $37af : $3f, $12, $3b
	mov !wMusicAndSEMultPerUpdate+X, A                                        ; $37b2 : $d5, $c3, $07

	mov A, #$03                                                               ; $37b5 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $37b7 : $5f, $07, $3b


SoundByteHandlerF7h_SetDelayAndSampleIdx:
; Next byte is delay, byte after is the next sample idx
	pop X                                                                     ; $37ba : $ce
	call !SetSndByteDelayAndAequNextByte                                      ; $37bb : $3f, $12, $3b
	mov !wMusicNewSampleIdxToSet+X, A                                         ; $37be : $d5, $13, $07

; Attach sample already if no sound effects in use
	mov A, wMusicAndSEControl+X                                               ; $37c1 : $f4, $3d
	and A, #CHN_USES_SE                                                       ; $37c3 : $28, $02
	bne +                                                                     ; $37c5 : $d0, $06

	mov A, !wMusicNewSampleIdxToSet+X                                         ; $37c7 : $f5, $13, $07
	call !AssignSampleToSndChannel                                            ; $37ca : $3f, $0f, $42

; Skip past the $f7, delay byte and sample idx
+	mov A, #$03                                                               ; $37cd : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $37cf : $5f, $07, $3b


SoundByteHandlerFBh_StartLoop:
; Push pointer to $fb
	pop X                                                  ; $37d2 : $ce
	push X                                                  ; $37d3 : $4d

; Y = pointer to $fb
	mov A, X                                                  ; $37d4 : $7d
	mov Y, A                                                  ; $37d5 : $fd

;
	mov A, !wMusicAndSELoopSectionPtrHi+X                                                  ; $37d6 : $f5, $73, $06
	beq @br_37e5                                                  ; $37d9 : $f0, $0a

	mov A, !w0683+X                                                  ; $37db : $f5, $83, $06
	bne @nextSrc                                                  ; $37de : $d0, $2d

	mov A, X                                                  ; $37e0 : $7d
	clrc                                                  ; $37e1 : $60
	adc A, #$10                                                  ; $37e2 : $88, $10
	mov X, A                                                  ; $37e4 : $5d

@br_37e5:
; Save curr sections ptr as the loop point
	mov A, !wMusicAndSESectionsPtrLo+Y                                        ; $37e5 : $f6, $03, $06
	mov !wMusicAndSELoopSectionPtrLo+X, A                                     ; $37e8 : $d5, $53, $06
	mov A, !wMusicAndSESectionsPtrHi+Y                                        ; $37eb : $f6, $13, $06
	mov !wMusicAndSELoopSectionPtrHi+X, A                                     ; $37ee : $d5, $73, $06

; Set loop address to after this $fb byte
	mov A, !wMusicAndSESndByteSrcLo+Y                                         ; $37f1 : $f6, $33, $06
	clrc                                                                      ; $37f4 : $60
	adc A, #<1                                                                ; $37f5 : $88, $01
	mov !wMusicAndSESndByteLoopAddrLo+X, A                                    ; $37f7 : $d5, $93, $06

	mov A, !wMusicAndSESndByteSrcHi+Y                                         ; $37fa : $f6, $43, $06
	adc A, #>1                                                                ; $37fd : $88, $00
	mov !wMusicAndSESndByteLoopAddrHi+X, A                                    ; $37ff : $d5, $b3, $06

;
	mov A, #$fe                                                  ; $3802 : $e8, $fe
	mov !wMusicAndSELoopCounter+X, A                                                  ; $3804 : $d5, $d3, $06
	mov A, !wMusicAndSEBaseNote+Y                                                  ; $3807 : $f6, $23, $06
	mov !wMusicAndSELoopNote+X, A                                                  ; $380a : $d5, $f3, $06

@nextSrc:
	pop X                                                  ; $380d : $ce
	mov A, #$01                                                  ; $380e : $e8, $01
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3810 : $5f, $07, $3b


SoundByteHandlerFCh_Loop:
	pop X                                                  ; $3813 : $ce
	push X                                                  ; $3814 : $4d
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $3815 : $f7, $18
	dec A                                                  ; $3817 : $9c
	beq @skipLoop                                                  ; $3818 : $f0, $4b

	mov $10, A                                                  ; $381a : $c4, $10
	mov A, X                                                  ; $381c : $7d
	mov Y, A                                                  ; $381d : $fd
	mov A, !w0683+X                                                  ; $381e : $f5, $83, $06
	beq @cont_3828                                                  ; $3821 : $f0, $05

	mov A, X                                                  ; $3823 : $7d
	clrc                                                  ; $3824 : $60
	adc A, #$10                                                  ; $3825 : $88, $10
	mov X, A                                                  ; $3827 : $5d

@cont_3828:
	mov A, !wMusicAndSELoopCounter+X                                                  ; $3828 : $f5, $d3, $06
	cmp A, #$ff                                                  ; $382b : $68, $ff
	beq @loop                                                  ; $382d : $f0, $14

	cmp A, #$fe                                                  ; $382f : $68, $fe
	beq @br_383e                                                  ; $3831 : $f0, $0b

	dec A                                                  ; $3833 : $9c
	mov !wMusicAndSELoopCounter+X, A                                                  ; $3834 : $d5, $d3, $06
	bne @loop                                                  ; $3837 : $d0, $0a

	mov !wMusicAndSELoopSectionPtrHi+X, A                                                  ; $3839 : $d5, $73, $06
	bra @skipLoop                                                  ; $383c : $2f, $27

@br_383e:
	mov A, $10                                                  ; $383e : $e4, $10
	mov !wMusicAndSELoopCounter+X, A                                                  ; $3840 : $d5, $d3, $06

@loop:
	mov A, !wMusicAndSELoopSectionPtrLo+X                                                  ; $3843 : $f5, $53, $06
	mov !wMusicAndSESectionsPtrLo+Y, A                                                  ; $3846 : $d6, $03, $06
	mov A, !wMusicAndSELoopSectionPtrHi+X                                                  ; $3849 : $f5, $73, $06
	mov !wMusicAndSESectionsPtrHi+Y, A                                                  ; $384c : $d6, $13, $06
	mov A, !wMusicAndSESndByteLoopAddrLo+X                                                  ; $384f : $f5, $93, $06
	mov !wMusicAndSESndByteSrcLo+Y, A                                                  ; $3852 : $d6, $33, $06
	mov A, !wMusicAndSESndByteLoopAddrHi+X                                                  ; $3855 : $f5, $b3, $06
	mov !wMusicAndSESndByteSrcHi+Y, A                                                  ; $3858 : $d6, $43, $06
	mov A, !wMusicAndSELoopNote+X                                                  ; $385b : $f5, $f3, $06
	mov !wMusicAndSEBaseNote+Y, A                                                  ; $385e : $d6, $23, $06
	pop X                                                  ; $3861 : $ce
	jmp !ProcessChannelsSndBytes                                                  ; $3862 : $5f, $91, $36

@skipLoop:
	pop X                                                  ; $3865 : $ce
	mov A, #$02                                                  ; $3866 : $e8, $02
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3868 : $5f, $07, $3b


; unused?
	ret                                                  ; $386b : $6f


SoundByteHandlerFDh_NextSection:
; Clear curr note
	pop X                                                                     ; $386c : $ce
	mov A, #$00                                                               ; $386d : $e8, $00
	mov !wMusicAndSEBaseNote+X, A                                             ; $386f : $d5, $23, $06

;
	inc w008d+X                                                  ; $3872 : $bb, $8d

; Go to next section
	mov A, !wMusicAndSESectionsPtrLo+X                                        ; $3874 : $f5, $03, $06
	clrc                                                                      ; $3877 : $60
	adc A, #<2                                                                ; $3878 : $88, $02
	mov wPtrToSndChnsSectionPtrs, A                                           ; $387a : $c4, $10
	mov !wMusicAndSESectionsPtrLo+X, A                                        ; $387c : $d5, $03, $06

	mov A, !wMusicAndSESectionsPtrHi+X                                        ; $387f : $f5, $13, $06
	adc A, #>2                                                                ; $3882 : $88, $00
	mov wPtrToSndChnsSectionPtrs+1, A                                         ; $3884 : $c4, $11
	mov !wMusicAndSESectionsPtrHi+X, A                                        ; $3886 : $d5, $13, $06

; As long as we have sections, set the next section ptr
	mov Y, #$00                                                               ; $3889 : $8d, $00
	mov A, [wPtrToSndChnsSectionPtrs]+Y                                       ; $388b : $f7, $10
	cmp A, #$ff                                                               ; $388d : $68, $ff
	bne @setNextSectionPtr                                                    ; $388f : $d0, $26

;
	mov A, wMusicAndSEControl+X                                                  ; $3891 : $f4, $3d
	and A, #$ff-CHN_USES_MUSIC                                                  ; $3893 : $28, $fe
	mov wMusicAndSEControl+X,A                                                  ; $3895 : $d4, $3d

; Combine all channel's control bytes in A
	mov Y, #$07                                                  ; $3897 : $8d, $07
	mov A, #$00                                                  ; $3899 : $e8, $00
-	or A, !wMusicAndSEControl+Y                                                  ; $389b : $16, $3d, $00
	dec Y                                                  ; $389e : $dc
	bpl -                                                  ; $389f : $10, $fa

;
	and A, #CHN_USES_MUSIC                                                  ; $38a1 : $28, $01
	bne @cont_38ab                                                  ; $38a3 : $d0, $06

	mov A, w009b                                                  ; $38a5 : $e4, $9b
	and A, #$fe                                                  ; $38a7 : $28, $fe
	mov w009b, A                                                  ; $38a9 : $c4, $9b

@cont_38ab:
	mov A, wMusicAndSEControl+X                                                  ; $38ab : $f4, $3d
	and A, #CHN_USES_SE                                                  ; $38ad : $28, $02
	mov wMusicAndSEControl+X,A                                                  ; $38af : $d4, $3d
	bne +                                                  ; $38b1 : $d0, $03
	call !SetThatChnShouldStop                                                  ; $38b3 : $3f, $8f, $3b
+	ret                                                  ; $38b6 : $6f

@setNextSectionPtr:
	call !SetChannelXsNextSectionPtr                                                  ; $38b7 : $3f, $28, $3b
	jmp !ProcessChannelsSndBytes                                                  ; $38ba : $5f, $91, $36


SoundByteHandlerFEh_End:
	pop X                                                  ; $38bd : $ce
	mov A, #$00                                                  ; $38be : $e8, $00
	mov wMusicAndSEControl+X,A                                                  ; $38c0 : $d4, $3d
	mov !wMusicAndSEFinePitchMult+X, A                                                  ; $38c2 : $d5, $83, $08
	mov A, #$80                                                  ; $38c5 : $e8, $80
	mov !wMusicAndSEMultPerUpdate+X, A                                                  ; $38c7 : $d5, $c3, $07
	mov A, #$20                                                  ; $38ca : $e8, $20
	mov !w0813+X, A                                                  ; $38cc : $d5, $13, $08
	mov A, #$10                                                  ; $38cf : $e8, $10
	mov !w0863+X, A                                                  ; $38d1 : $d5, $63, $08
	call !SetThatChnShouldStop                                                  ; $38d4 : $3f, $8f, $3b
	ret                                                  ; $38d7 : $6f


SoundByteHandlerFFh_MoreCtrlCodes:
; Next sound byte points to another set of handlers
	mov A, [wCurrSndChnSndByteSrc]+Y                                          ; $38d8 : $f7, $18
	inc Y                                                                     ; $38da : $fc
	asl A                                                                     ; $38db : $1c
	mov X, A                                                                  ; $38dc : $5d
	jmp [!SoundByteFFHandlers+X]                                              ; $38dd : $1f, $c8, $3b


SoundByteHandlerFF00h_SetEchoDelay:
; Param byte is the echo delay val
	pop X                                                                     ; $38e0 : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                          ; $38e1 : $f7, $18
	mov !wEchoDelay, A                                                        ; $38e3 : $c5, $c9, $08

; Skip past param and $ff00 command
	mov A, #$03                                                               ; $38e6 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $38e8 : $5f, $07, $3b


SoundByteHandlerFF01h_SetEchoFeedback:
; Next param is the echo feedback
	pop X                                                                     ; $38eb : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                          ; $38ec : $f7, $18
	mov !wEchoFeedback, A                                                     ; $38ee : $c5, $c8, $08
	mov DSP_REG_ADDR, #EFB                                                    ; $38f1 : $8f, $0d, $f2
	mov DSP_REG_DATA, A                                                       ; $38f4 : $c4, $f3

; Skip past the param and $ff01 command
	mov A, #$03                                                               ; $38f6 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $38f8 : $5f, $07, $3b


SoundByteHandlerFF02h_SetCoefSetupIdx:
; Next param determines which 1 of 4 sets of COEF vals to use
	pop X                                                                     ; $38fb : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                          ; $38fc : $f7, $18
	mov !w8COEFValsIdx, A                                                     ; $38fe : $c5, $c7, $08
	push X                                                                    ; $3901 : $4d
	call !SetDspCOEF                                                          ; $3902 : $3f, $c2, $3f
	pop X                                                                     ; $3905 : $ce

; Skip past the param and $ff02 command
	mov A, #$03                                                               ; $3906 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $3908 : $5f, $07, $3b


SoundByteHandlerFF03h:
	pop X                                                  ; $390b : $ce
	mov A, !MusicBitfieldMap+X                                                  ; $390c : $f5, $42, $43
	cmp X, #$08                                                  ; $390f : $c8, $08
	bcc @br_3919                                                  ; $3911 : $90, $06

	or A, w00a4                                                  ; $3913 : $04, $a4
	mov w00a4, A                                                  ; $3915 : $c4, $a4
	bra +                                                  ; $3917 : $2f, $04

@br_3919:
	or A, w00a3                                                  ; $3919 : $04, $a3
	mov w00a3, A                                                  ; $391b : $c4, $a3

+	call !SetDspEON                                                  ; $391d : $3f, $9c, $3f
	mov A, #$03                                                  ; $3920 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3922 : $5f, $07, $3b


SoundByteHandlerFF04h:
	pop X                                                  ; $3925 : $ce
	mov A, !MusicBitmaskMap+X                                                  ; $3926 : $f5, $52, $43
	cmp X, #$08                                                  ; $3929 : $c8, $08
	bcc @br_3933                                                  ; $392b : $90, $06

	and A, w00a4                                                  ; $392d : $24, $a4
	mov w00a4, A                                                  ; $392f : $c4, $a4
	bra +                                                  ; $3931 : $2f, $04

@br_3933:
	and A, w00a3                                                  ; $3933 : $24, $a3
	mov w00a3, A                                                  ; $3935 : $c4, $a3

+	call !SetDspEON                                                  ; $3937 : $3f, $9c, $3f
	mov A, #$03                                                  ; $393a : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $393c : $5f, $07, $3b


SoundByteHandlerFF05h_Invalid:
	pop X                                                                     ; $393f : $ce
	mov A, #$03                                                               ; $3940 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $3942 : $5f, $07, $3b


SoundByteHandlerFF06h_Invalid:
	pop X                                                                     ; $3945 : $ce
	mov A, #$03                                                               ; $3946 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $3948 : $5f, $07, $3b


SoundByteHandlerFF07h_Invalid:
	pop X                                                                     ; $394b : $ce
	mov A, #$03                                                               ; $394c : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $394e : $5f, $07, $3b


SoundByteHandlerFF08h:
	pop X                                                  ; $3951 : $ce
	call !SetDspRegAddrToCurrChnsADSR                                                  ; $3952 : $3f, $c2, $39
	and wAdsrParamByte, #$0f                                                  ; $3955 : $38, $0f, $12
	mov A, DSP_REG_DATA                                                  ; $3958 : $e4, $f3
	and A, #$f0                                                  ; $395a : $28, $f0
	or A, wAdsrParamByte                                                  ; $395c : $04, $12
	mov DSP_REG_DATA, A                                                  ; $395e : $c4, $f3
	mov A, #$03                                                  ; $3960 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3962 : $5f, $07, $3b


SoundByteHandlerFF09h:
	pop X                                                  ; $3965 : $ce
	call !SetDspRegAddrToCurrChnsADSR                                                  ; $3966 : $3f, $c2, $39
	mov A, wAdsrParamByte                                                  ; $3969 : $e4, $12
	xcn A                                                  ; $396b : $9f
	and A, #$70                                                  ; $396c : $28, $70
	mov wAdsrParamByte, A                                                  ; $396e : $c4, $12
	mov A, DSP_REG_DATA                                                  ; $3970 : $e4, $f3
	and A, #$0f                                                  ; $3972 : $28, $0f
	or A, wAdsrParamByte                                                  ; $3974 : $04, $12
	or A, #$80                                                  ; $3976 : $08, $80
	mov DSP_REG_DATA, A                                                  ; $3978 : $c4, $f3
	mov A, #$03                                                  ; $397a : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $397c : $5f, $07, $3b


SoundByteHandlerFF0Ah:
	pop X                                                  ; $397f : $ce
	call !SetDspRegAddrToCurrChnsADSR                                                  ; $3980 : $3f, $c2, $39
	inc DSP_REG_ADDR                                                  ; $3983 : $ab, $f2
	mov A, wAdsrParamByte                                                  ; $3985 : $e4, $12
	xcn A                                                  ; $3987 : $9f
	asl A                                                  ; $3988 : $1c
	and A, #$e0                                                  ; $3989 : $28, $e0
	mov wAdsrParamByte, A                                                  ; $398b : $c4, $12
	mov A, DSP_REG_DATA                                                  ; $398d : $e4, $f3
	and A, #$1f                                                  ; $398f : $28, $1f
	or A, wAdsrParamByte                                                  ; $3991 : $04, $12
	mov DSP_REG_DATA, A                                                  ; $3993 : $c4, $f3
	mov A, #$03                                                  ; $3995 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3997 : $5f, $07, $3b


SoundByteHandlerFF0Bh:
	pop X                                                  ; $399a : $ce
	call !SetDspRegAddrToCurrChnsADSR                                                  ; $399b : $3f, $c2, $39
	inc DSP_REG_ADDR                                                  ; $399e : $ab, $f2
	mov A, wAdsrParamByte                                                  ; $39a0 : $e4, $12
	and A, #$1f                                                  ; $39a2 : $28, $1f
	mov wAdsrParamByte, A                                                  ; $39a4 : $c4, $12
	mov A, DSP_REG_DATA                                                  ; $39a6 : $e4, $f3
	and A, #$e0                                                  ; $39a8 : $28, $e0
	or A, wAdsrParamByte                                                  ; $39aa : $04, $12
	mov DSP_REG_DATA, A                                                  ; $39ac : $c4, $f3
	mov A, #$03                                                  ; $39ae : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $39b0 : $5f, $07, $3b


SoundByteHandlerFF0Ch:
	pop X                                                  ; $39b3 : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $39b4 : $f7, $18
	and A, #$1f                                                  ; $39b6 : $28, $1f
	or A, #$80                                                  ; $39b8 : $08, $80
	mov !w07d3+X, A                                                  ; $39ba : $d5, $d3, $07
	mov A, #$03                                                  ; $39bd : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $39bf : $5f, $07, $3b


SetDspRegAddrToCurrChnsADSR:
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $39c2 : $f7, $18
	mov wAdsrParamByte, A                                                  ; $39c4 : $c4, $12
	mov A, X                                                  ; $39c6 : $7d
	cmp A, #$08                                                  ; $39c7 : $68, $08
	bcc +                                                  ; $39c9 : $90, $03

	setc                                                  ; $39cb : $80
	sbc A, #$08                                                  ; $39cc : $a8, $08

+	xcn A                                                  ; $39ce : $9f
	clrc                                                  ; $39cf : $60
	adc A, #ADSR_1                                                  ; $39d0 : $88, $05
	mov DSP_REG_ADDR, A                                                  ; $39d2 : $c4, $f2
	ret                                                  ; $39d4 : $6f


SoundByteHandlerFF0Dh_SetBaseEvolFromMvol:
; Param byte is the base evol value, scaled down by MVOL / $100
	pop X                                                                     ; $39d5 : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                          ; $39d6 : $f7, $18
	call !SetBaseEvolFromMvol                                                 ; $39d8 : $3f, $0a, $3a
	mov !wBaseEvolL, A                                                        ; $39db : $c5, $c6, $08
	mov !wBaseEvolR, A                                                        ; $39de : $c5, $c5, $08

; Skip past the evol value, and the $ff0d command
	mov A, #$03                                                               ; $39e1 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $39e3 : $5f, $07, $3b


SoundByteHandlerFF0Eh_SetBaseEvolRFromMvol:
; Param byte is the base evol value, scaled down by MVOL / $100
	pop X                                                                     ; $39e6 : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                          ; $39e7 : $f7, $18
	mov Y, !wMvol                                                             ; $39e9 : $ec, $c3, $08
	mul YA                                                                    ; $39ec : $cf
	asl A                                                                     ; $39ed : $1c
	mov A, Y                                                                  ; $39ee : $dd
	rol A                                                                     ; $39ef : $3c
	mov !wBaseEvolR, A                                                        ; $39f0 : $c5, $c5, $08

; Skip past the evol value, and the $ff0e command
	mov A, #$03                                                               ; $39f3 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $39f5 : $5f, $07, $3b


SoundByteHandlerFF0Fh_SetBaseEvolLFromMvol:
; Param byte is the base evol value, scaled down by MVOL / $100
	pop X                                                                     ; $39f8 : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                          ; $39f9 : $f7, $18
	mov Y, !wMvol                                                             ; $39fb : $ec, $c3, $08
	mul YA                                                                    ; $39fe : $cf
	asl A                                                                     ; $39ff : $1c
	mov A, Y                                                                  ; $3a00 : $dd
	rol A                                                                     ; $3a01 : $3c
	mov !wBaseEvolL, A                                                        ; $3a02 : $c5, $c6, $08

; Skip past the evol value, and the $ff0f command
	mov A, #$03                                                               ; $3a05 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                          ; $3a07 : $5f, $07, $3b


; A - EVOL value, before being scaled down based on MVOL value / $100
; Returns dampened value in A
SetBaseEvolFromMvol:
	mov Y, !wMvol                                                             ; $3a0a : $ec, $c3, $08
	mul YA                                                                    ; $3a0d : $cf
	asl A                                                                     ; $3a0e : $1c
	mov A, Y                                                                  ; $3a0f : $dd
	rol A                                                                     ; $3a10 : $3c
	mov !wBaseEvolR, A                                                        ; $3a11 : $c5, $c5, $08
	mov !wBaseEvolL, A                                                        ; $3a14 : $c5, $c6, $08
	ret                                                                       ; $3a17 : $6f


SoundByteHandlerFF10h:
	pop X                                                  ; $3a18 : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $3a19 : $f7, $18
	and A, #$1f                                                  ; $3a1b : $28, $1f
	mov $10, A                                                  ; $3a1d : $c4, $10
	mov A, !wFlagDSPReg                                                  ; $3a1f : $e5, $ce, $08
	and A, #$e0                                                  ; $3a22 : $28, $e0
	or A, $10                                                  ; $3a24 : $04, $10
	mov !wFlagDSPReg, A                                                  ; $3a26 : $c5, $ce, $08
	mov DSP_REG_ADDR, #FLG                                                  ; $3a29 : $8f, $6c, $f2
	mov DSP_REG_DATA, A                                                  ; $3a2c : $c4, $f3
	mov A, #$03                                                  ; $3a2e : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3a30 : $5f, $07, $3b


SoundByteHandlerFF11h:
	pop X                                                  ; $3a33 : $ce
	mov A, !MusicBitfieldMap+X                                                  ; $3a34 : $f5, $42, $43
	cmp X, #$08                                                  ; $3a37 : $c8, $08
	bcc @br_3a41                                                  ; $3a39 : $90, $06

	or A, w00a2                                                  ; $3a3b : $04, $a2
	mov w00a2, A                                                  ; $3a3d : $c4, $a2
	bra +                                                  ; $3a3f : $2f, $04

@br_3a41:
	or A, w00a1                                                  ; $3a41 : $04, $a1
	mov w00a1, A                                                  ; $3a43 : $c4, $a1

+	call !SetDspNON                                                  ; $3a45 : $3f, $a8, $3f
	mov A, #$03                                                  ; $3a48 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3a4a : $5f, $07, $3b


SoundByteHandlerFF12h:
	pop X                                                  ; $3a4d : $ce
	mov A, !MusicBitmaskMap+X                                                  ; $3a4e : $f5, $52, $43
	cmp X, #$08                                                  ; $3a51 : $c8, $08
	bcc @br_3a5b                                                  ; $3a53 : $90, $06

	and A, w00a2                                                  ; $3a55 : $24, $a2
	mov w00a2, A                                                  ; $3a57 : $c4, $a2
	bra +                                                  ; $3a59 : $2f, $04

@br_3a5b:
	and A, w00a1                                                  ; $3a5b : $24, $a1
	mov w00a1, A                                                  ; $3a5d : $c4, $a1

+	call !SetDspNON                                                  ; $3a5f : $3f, $a8, $3f
	mov A, #$03                                                  ; $3a62 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3a64 : $5f, $07, $3b


SoundByteHandlerFF13h:
	pop X                                                  ; $3a67 : $ce
	mov A, !MusicBitfieldMap+X                                                  ; $3a68 : $f5, $42, $43
	cmp X, #$08                                                  ; $3a6b : $c8, $08
	bcc @br_3a75                                                  ; $3a6d : $90, $06

	or A, w00a6                                                  ; $3a6f : $04, $a6
	mov w00a6, A                                                  ; $3a71 : $c4, $a6
	bra +                                                  ; $3a73 : $2f, $04

@br_3a75:
	or A, w00a5                                                  ; $3a75 : $04, $a5
	mov w00a5, A                                                  ; $3a77 : $c4, $a5

+	call !SetDspPMON                                                  ; $3a79 : $3f, $90, $3f
	mov A, #$03                                                  ; $3a7c : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3a7e : $5f, $07, $3b


SoundByteHandlerFF14h:
	pop X                                                  ; $3a81 : $ce
	mov A, !MusicBitmaskMap+X                                                  ; $3a82 : $f5, $52, $43
	cmp X, #$08                                                  ; $3a85 : $c8, $08
	bcc @br_3a8f                                                  ; $3a87 : $90, $06

	and A, w00a6                                                  ; $3a89 : $24, $a6
	mov w00a6, A                                                  ; $3a8b : $c4, $a6
	bra +                                                  ; $3a8d : $2f, $04

@br_3a8f:
	and A, w00a5                                                  ; $3a8f : $24, $a5
	mov w00a5, A                                                  ; $3a91 : $c4, $a5

+	call !SetDspPMON                                                  ; $3a93 : $3f, $90, $3f
	mov A, #$03                                                  ; $3a96 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3a98 : $5f, $07, $3b


SoundByteHandlerFF15h:
	pop X                                                  ; $3a9b : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $3a9c : $f7, $18
	mov !w0863+X, A                                                  ; $3a9e : $d5, $63, $08
	mov A, #$03                                                  ; $3aa1 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3aa3 : $5f, $07, $3b


SoundByteHandlerFF16h:
	pop X                                                  ; $3aa6 : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $3aa7 : $f7, $18
	mov !w0813+X, A                                                  ; $3aa9 : $d5, $13, $08
	mov A, #$03                                                  ; $3aac : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3aae : $5f, $07, $3b


SoundByteHandlerFF17h:
	pop X                                                  ; $3ab1 : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $3ab2 : $f7, $18
	mov !w0843+X, A                                                  ; $3ab4 : $d5, $43, $08
	mov A, #$03                                                  ; $3ab7 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3ab9 : $5f, $07, $3b


SoundByteHandlerFF18h:
	pop X                                                  ; $3abc : $ce
	mov A, [wCurrSndChnSndByteSrc]+Y                                                  ; $3abd : $f7, $18
	mov !w07f3+X, A                                                  ; $3abf : $d5, $f3, $07
	mov A, #$03                                                  ; $3ac2 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3ac4 : $5f, $07, $3b


SoundByteHandlerFF19h:
	pop X                                                  ; $3ac7 : $ce
	mov A, wMusicAndSEControl+X                                                  ; $3ac8 : $f4, $3d
	or A, #$20                                                  ; $3aca : $08, $20
	mov wMusicAndSEControl+X,A                                                  ; $3acc : $d4, $3d
	mov A, #$03                                                  ; $3ace : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3ad0 : $5f, $07, $3b


SoundByteHandlerFF1Ah:
	pop X                                                  ; $3ad3 : $ce
	mov A, wMusicAndSEControl+X                                                  ; $3ad4 : $f4, $3d
	or A, #$40                                                  ; $3ad6 : $08, $40
	mov wMusicAndSEControl+X,A                                                  ; $3ad8 : $d4, $3d
	mov A, #$03                                                  ; $3ada : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3adc : $5f, $07, $3b


SoundByteHandlerFF1Bh:
	pop X                                                  ; $3adf : $ce
	mov A, !wMusicAndSEControl+X                                                  ; $3ae0 : $f5, $3d, $00
	and A, #$9f                                                  ; $3ae3 : $28, $9f
	mov !wMusicAndSEControl+X, A                                                  ; $3ae5 : $d5, $3d, $00
	mov A, #$03                                                  ; $3ae8 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3aea : $5f, $07, $3b


SoundByteHandlerFF1Ch:
	pop X                                                  ; $3aed : $ce
	set1 w0098.4                                                  ; $3aee : $82, $98
	mov A, #$03                                                  ; $3af0 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3af2 : $5f, $07, $3b


SoundByteHandlerFF1Dh:
	pop X                                                  ; $3af5 : $ce
	set1 w0098.3                                                  ; $3af6 : $62, $98
	mov A, #$03                                                  ; $3af8 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3afa : $5f, $07, $3b


SoundByteHandlerFF1Eh:
	pop X                                                  ; $3afd : $ce
	clr1 w0098.3                                                  ; $3afe : $72, $98
	clr1 w0098.4                                                  ; $3b00 : $92, $98
	mov A, #$03                                                  ; $3b02 : $e8, $03
	jmp !MaybeContinueAfterAddingAontoChnsSndByteSrc                                                  ; $3b04 : $5f, $07, $3b


MaybeContinueAfterAddingAontoChnsSndByteSrc:
; Process more bytes if we didn't add more to the counter til it's processed
	call !AddAontoChannelsSndByteSrc                                          ; $3b07 : $3f, $1a, $3b
	mov A, wCtrTilProcessingChnsMusicBytes+X                                  ; $3b0a : $f4, $1d
	beq @processSndBytes                                                      ; $3b0c : $f0, $01

	ret                                                                       ; $3b0e : $6f

@processSndBytes:
	jmp !ProcessChannelsSndBytes                                              ; $3b0f : $5f, $91, $36


SetSndByteDelayAndAequNextByte:
; 1st byte is counter til next data byte read, then return byte after in A
	mov A, [wCurrSndChnSndByteSrc]+Y                                          ; $3b12 : $f7, $18
	mov wCtrTilProcessingChnsMusicBytes+X,A                                   ; $3b14 : $d4, $1d
	inc Y                                                                     ; $3b16 : $fc
	mov A, [wCurrSndChnSndByteSrc]+Y                                          ; $3b17 : $f7, $18
	ret                                                                       ; $3b19 : $6f


; X - software sound channel
AddAontoChannelsSndByteSrc:
	clrc                                                                      ; $3b1a : $60
	adc A, wCurrSndChnSndByteSrc                                              ; $3b1b : $84, $18
	mov !wMusicAndSESndByteSrcLo+X, A                                         ; $3b1d : $d5, $33, $06
	mov A, wCurrSndChnSndByteSrc+1                                            ; $3b20 : $e4, $19
	adc A, #$00                                                               ; $3b22 : $88, $00
	mov !wMusicAndSESndByteSrcHi+X, A                                         ; $3b24 : $d5, $43, $06
	ret                                                                       ; $3b27 : $6f


SetChannelXsNextSectionPtr:
; Preserve the curr section offset
	push Y                                                                    ; $3b28 : $6d

@nextSectionDataByte:
; If bit 7 clear on the 1st byte read, jump
	mov Y, #$00                                                               ; $3b29 : $8d, $00
	mov A, [wPtrToSndChnsSectionPtrs]+Y                                       ; $3b2b : $f7, $10
	bpl @setNextAddr                                                          ; $3b2d : $10, $1c

; Otherwise, the non-bit 7 set value is the channel's base note
	and A, #$7f                                                               ; $3b2f : $28, $7f
	mov !wMusicAndSEBaseNote+X, A                                             ; $3b31 : $d5, $23, $06

; Add 1 to sections offset ptr to skip the processed byte
	mov A, !wMusicAndSESectionsPtrLo+X                                        ; $3b34 : $f5, $03, $06
	clrc                                                                      ; $3b37 : $60
	adc A, #<1                                                                ; $3b38 : $88, $01
	mov !wMusicAndSESectionsPtrLo+X, A                                        ; $3b3a : $d5, $03, $06
	mov wPtrToSndChnsSectionPtrs, A                                           ; $3b3d : $c4, $10

	mov A, !wMusicAndSESectionsPtrHi+X                                        ; $3b3f : $f5, $13, $06
	adc A, #>1                                                                ; $3b42 : $88, $00
	mov !wMusicAndSESectionsPtrHi+X, A                                        ; $3b44 : $d5, $13, $06
	mov wPtrToSndChnsSectionPtrs+1, A                                         ; $3b47 : $c4, $11

; Keep reading to find the next section addr
	bra @nextSectionDataByte                                                  ; $3b49 : $2f, $de

@setNextAddr:
; Simply read big-endian word, channel src addr is that + file start
	clrc                                                                      ; $3b4b : $60
	adc A, #>wSoundFileStart                                                  ; $3b4c : $88, $44
	mov !wMusicAndSESndByteSrcHi+X, A                                         ; $3b4e : $d5, $43, $06
	inc Y                                                                     ; $3b51 : $fc

	mov A, [wPtrToSndChnsSectionPtrs]+Y                                       ; $3b52 : $f7, $10
	mov !wMusicAndSESndByteSrcLo+X, A                                         ; $3b54 : $d5, $33, $06
	pop Y                                                                     ; $3b57 : $ee
	ret                                                                       ; $3b58 : $6f


Call_00_3b59:
	push A                                                  ; $3b59 : $2d
	mov A, !wMusicAndSENote+X                                                  ; $3b5a : $f5, $43, $07
	mov !w0783+X, A                                                  ; $3b5d : $d5, $83, $07
	mov A, !w0753+X                                                  ; $3b60 : $f5, $53, $07
	mov !w0793+X, A                                                  ; $3b63 : $d5, $93, $07
	mov A, !w0763+X                                                  ; $3b66 : $f5, $63, $07
	mov !w07a3+X, A                                                  ; $3b69 : $d5, $a3, $07
	mov A, !w0773+X                                                  ; $3b6c : $f5, $73, $07
	mov !w07b3+X, A                                                  ; $3b6f : $d5, $b3, $07
	pop A                                                  ; $3b72 : $ae
	ret                                                  ; $3b73 : $6f


; X - curr sound channel being processed
SetThatChnShouldStart:
; If sound effect, set that the channel will be affected by KON
; Else if music, only set it if the channel was startable in the 1st place
	mov A, !MusicBitfieldMap+X                                                ; $3b74 : $f5, $42, $43
	or A, wChnBitflagToKON                                                    ; $3b77 : $04, $95
	cmp X, #$08                                                               ; $3b79 : $c8, $08
	bcs +                                                                     ; $3b7b : $b0, $02
	and A, wChnBitfieldCanStart                                               ; $3b7d : $24, $9a
+	mov wChnBitflagToKON, A                                                   ; $3b7f : $c4, $95

; Repeat above with the 'started' flag, similarly affected
	mov A, !MusicBitfieldMap+X                                                ; $3b81 : $f5, $42, $43
	or A, wChnBitfieldsStarted                                                ; $3b84 : $04, $a0
	cmp X, #$08                                                               ; $3b86 : $c8, $08
	bcs +                                                                     ; $3b88 : $b0, $02
	and A, wChnBitfieldCanStart                                               ; $3b8a : $24, $9a
+	mov wChnBitfieldsStarted, A                                               ; $3b8c : $c4, $a0
	ret                                                                       ; $3b8e : $6f


; X - curr sound channel being processed
SetThatChnShouldStop:
; Set bit for channel that KOF should apply to it
	mov A, !MusicBitfieldMap+X                                                ; $3b8f : $f5, $42, $43
	or A, wChnBitflagToKOF                                                    ; $3b92 : $04, $96
	mov wChnBitflagToKOF, A                                                   ; $3b94 : $c4, $96

; Clear bit that can tell SNES the channel will be inactive
	mov A, !MusicBitfieldMap+X                                                ; $3b96 : $f5, $42, $43
	eor A, #$ff                                                               ; $3b99 : $48, $ff
	and A, wChnBitfieldsStarted                                               ; $3b9b : $24, $a0
	mov wChnBitfieldsStarted, A                                               ; $3b9d : $c4, $a0
	ret                                                                       ; $3b9f : $6f


SoundByteFXHandlers:
	.dw SoundByteHandlerF0h
	.dw SoundByteHandlerF1h
	.dw SoundByteHandlerF2h
	.dw SoundByteHandlerF3h_SetDelay
	.dw SoundByteHandlerF4h_SetDelayAndTempoDivider
	.dw InvalidSoundFXhByte
	.dw SoundByteHandlerF6h_SetDelayAndPitchMult
	.dw SoundByteHandlerF7h_SetDelayAndSampleIdx
	.dw InvalidSoundFXhByte
	.dw InvalidSoundFXhByte
	.dw InvalidSoundFXhByte
	.dw SoundByteHandlerFBh_StartLoop
	.dw SoundByteHandlerFCh_Loop
	.dw SoundByteHandlerFDh_NextSection
	.dw SoundByteHandlerFEh_End
	.dw SoundByteHandlerFFh_MoreCtrlCodes


InvalidSoundFXhByte:
; Simply skip the sound byte
	mov A, #$01                                                               ; $3bc0 : $e8, $01
	call !AddAontoChannelsSndByteSrc                                          ; $3bc2 : $3f, $1a, $3b
	jmp !ProcessChannelsSndBytes                                              ; $3bc5 : $5f, $91, $36


SoundByteFFHandlers:
	.dw SoundByteHandlerFF00h_SetEchoDelay
	.dw SoundByteHandlerFF01h_SetEchoFeedback
	.dw SoundByteHandlerFF02h_SetCoefSetupIdx
	.dw SoundByteHandlerFF03h
	.dw SoundByteHandlerFF04h
	.dw SoundByteHandlerFF05h_Invalid
	.dw SoundByteHandlerFF06h_Invalid
	.dw SoundByteHandlerFF07h_Invalid
	.dw SoundByteHandlerFF08h
	.dw SoundByteHandlerFF09h
	.dw SoundByteHandlerFF0Ah
	.dw SoundByteHandlerFF0Bh
	.dw SoundByteHandlerFF0Ch
	.dw SoundByteHandlerFF0Dh_SetBaseEvolFromMvol
	.dw SoundByteHandlerFF0Eh_SetBaseEvolRFromMvol
	.dw SoundByteHandlerFF0Fh_SetBaseEvolLFromMvol
	.dw SoundByteHandlerFF10h
	.dw SoundByteHandlerFF11h
	.dw SoundByteHandlerFF12h
	.dw SoundByteHandlerFF13h
	.dw SoundByteHandlerFF14h
	.dw SoundByteHandlerFF15h
	.dw SoundByteHandlerFF16h
	.dw SoundByteHandlerFF17h
	.dw SoundByteHandlerFF18h
	.dw SoundByteHandlerFF19h
	.dw SoundByteHandlerFF1Ah
	.dw SoundByteHandlerFF1Bh
	.dw SoundByteHandlerFF1Ch
	.dw SoundByteHandlerFF1Dh
	.dw SoundByteHandlerFF1Eh
	.dw InvalidSoundFFhByte


InvalidSoundFFhByte:
; Skip past the 3 bytes $ff bytes have
	mov A, #$03                                                               ; $3c08 : $e8, $03
	call !AddAontoChannelsSndByteSrc                                          ; $3c0a : $3f, $1a, $3b
	jmp !ProcessChannelsSndBytes                                              ; $3c0d : $5f, $91, $36


Data_3c10:
	and A, $26                                                  ; $3c10 : $24, $26
	or1 c, /$102e.1                                                  ; $3c12 : $2a, $2e, $30
	push A                                                  ; $3c15 : $2d
	and $28, $31                                                  ; $3c16 : $29, $31, $28
	nop                                                  ; $3c19 : $00


Data_3c1a:
	nop                                                  ; $3c1a : $00
	nop                                                  ; $3c1b : $00
	nop                                                  ; $3c1c : $00
	nop                                                  ; $3c1d : $00
	nop                                                  ; $3c1e : $00
	cmp A, w00ae+X                                                  ; $3c1f : $74, $ae
	nop                                                  ; $3c21 : $00
	nop                                                  ; $3c22 : $00


Data_3c23:
	tset1 !$1010                                                  ; $3c23 : $0e, $10, $10
	bpl br_00_3c36                                                  ; $3c26 : $10, $0e

	asl $07                                                  ; $3c28 : $0b, $07
	push PSW                                                  ; $3c2a : $0d
	.db $08


Data_3c2c:
	.db $40
	setp                                                  ; $3c2d : $40
	.db $30, $30

	and A, !$4840+Y                                                  ; $3c30 : $36, $40, $48
	.db $50, $40


Data_3c35:
	nop                                                  ; $3c35 : $00

br_00_3c36:
	tcall 0                                                  ; $3c36 : $01
	.db $03, $04, $05

	or A, !$0605                                                  ; $3c3a : $05, $05, $06
	.db $02


UpdateFrame:
	call !Func_3c54                                                  ; $3c3e : $3f, $54, $3c
	call !Call_00_3dc4                                                  ; $3c41 : $3f, $c4, $3d
	call !AdjustEchoVolMult                                                  ; $3c44 : $3f, $61, $3c
	call !Call_00_3c93                                                  ; $3c47 : $3f, $93, $3c
	call !UpdateAllPitchDspRegs                                                  ; $3c4a : $3f, $ef, $40
	call !UpdateAllVolAndEchoVol                                                  ; $3c4d : $3f, $18, $40
	call !UpdateKON_KOF                                                  ; $3c50 : $3f, $08, $3f
	ret                                                  ; $3c53 : $6f


Func_3c54:
	mov A, w00b9                                                  ; $3c54 : $e4, $b9
	beq @done                                                  ; $3c56 : $f0, $08

	dec A                                                  ; $3c58 : $9c
	mov w00b9, A                                                  ; $3c59 : $c4, $b9
	bne @done                                                  ; $3c5b : $d0, $03

	call !SetDspEON                                                  ; $3c5d : $3f, $9c, $3f

@done:
	ret                                                  ; $3c60 : $6f


AdjustEchoVolMult:
	bbc w009b.2, @checkIfPositiveAdjust                                                  ; $3c61 : $53, $9b, $18

	mov A, !wEchoVolMult                                                  ; $3c64 : $e5, $ca, $08
	setc                                                  ; $3c67 : $80
	sbc A, !wAdjustToEchoVolMult                                                  ; $3c68 : $a5, $cb, $08
	mov !wEchoVolMult, A                                                  ; $3c6b : $c5, $ca, $08
	bcs @done                                                  ; $3c6e : $b0, $22

	mov A, #$00                                                  ; $3c70 : $e8, $00
	mov !wEchoVolMult, A                                                  ; $3c72 : $c5, $ca, $08
	clr1 w009b.2                                                  ; $3c75 : $52, $9b
	call !_CommandHandler03h                                                  ; $3c77 : $3f, $45, $36
	bra @done                                                  ; $3c7a : $2f, $16

@checkIfPositiveAdjust:
	bbc w009b.3, @done                                                  ; $3c7c : $73, $9b, $13

	mov A, !wEchoVolMult                                                  ; $3c7f : $e5, $ca, $08
	clrc                                                  ; $3c82 : $60
	adc A, !wAdjustToEchoVolMult                                                  ; $3c83 : $85, $cb, $08
	mov !wEchoVolMult, A                                                  ; $3c86 : $c5, $ca, $08
	bcc @done                                                  ; $3c89 : $90, $07

	mov A, #$ff                                                  ; $3c8b : $e8, $ff
	mov !wEchoVolMult, A                                                  ; $3c8d : $c5, $ca, $08
	clr1 w009b.3                                                  ; $3c90 : $72, $9b

@done:
	ret                                                  ; $3c92 : $6f


Call_00_3c93:
	mov X, #$0f                                                  ; $3c93 : $cd, $0f

@loop_3c95:
	mov A, !wMusicAndSEFinePitchMult+X                                                  ; $3c95 : $f5, $83, $08
	bne @br_3c9d                                                  ; $3c98 : $d0, $03

	jmp !@cont_3d00                                                  ; $3c9a : $5f, $00, $3d

@br_3c9d:
	mov A, !w0803+X                                                  ; $3c9d : $f5, $03, $08
	clrc                                                  ; $3ca0 : $60
	adc A, !w07f3+X                                                  ; $3ca1 : $95, $f3, $07
	mov Y, A                                                  ; $3ca4 : $fd
	and A, #$01                                                  ; $3ca5 : $28, $01
	mov !w0803+X, A                                                  ; $3ca7 : $d5, $03, $08
	mov A, Y                                                  ; $3caa : $dd
	lsr A                                                  ; $3cab : $5c
	clrc                                                  ; $3cac : $60
	adc A, !w07e3+X                                                  ; $3cad : $95, $e3, $07
	mov !w07e3+X, A                                                  ; $3cb0 : $d5, $e3, $07
	and A, #$7f                                                  ; $3cb3 : $28, $7f
	mov Y, A                                                  ; $3cb5 : $fd
	mov A, !Data_437a+Y                                                  ; $3cb6 : $f6, $7a, $43
	mov Y, A                                                  ; $3cb9 : $fd
	mov A, !w0813+X                                                  ; $3cba : $f5, $13, $08
	mul YA                                                  ; $3cbd : $cf
	mov A, !w07e3+X                                                  ; $3cbe : $f5, $e3, $07
	bmi @br_3cc6                                                  ; $3cc1 : $30, $03

	mov A, Y                                                  ; $3cc3 : $dd
	bra +                                                  ; $3cc4 : $2f, $03

@br_3cc6:
	mov A, Y                                                  ; $3cc6 : $dd
	or A, #$80                                                  ; $3cc7 : $08, $80

+	mov !wMusicAndSEFinePitchAdjust+X, A                                                  ; $3cc9 : $d5, $23, $08
	mov A, !w0863+X                                                  ; $3ccc : $f5, $63, $08
	beq @cont_3d00                                                  ; $3ccf : $f0, $2f

	mov A, !w0853+X                                                  ; $3cd1 : $f5, $53, $08
	clrc                                                  ; $3cd4 : $60
	adc A, !w0843+X                                                  ; $3cd5 : $95, $43, $08
	mov Y, A                                                  ; $3cd8 : $fd
	and A, #$01                                                  ; $3cd9 : $28, $01
	mov !w0853+X, A                                                  ; $3cdb : $d5, $53, $08
	mov A, Y                                                  ; $3cde : $dd
	lsr A                                                  ; $3cdf : $5c
	clrc                                                  ; $3ce0 : $60
	adc A, !w0833+X                                                  ; $3ce1 : $95, $33, $08
	mov !w0833+X, A                                                  ; $3ce4 : $d5, $33, $08
	and A, #$7f                                                  ; $3ce7 : $28, $7f
	mov Y, A                                                  ; $3ce9 : $fd
	mov A, !Data_437a+Y                                                  ; $3cea : $f6, $7a, $43
	mov Y, A                                                  ; $3ced : $fd
	mov A, !w0863+X                                                  ; $3cee : $f5, $63, $08
	mul YA                                                  ; $3cf1 : $cf
	mov A, !w0833+X                                                  ; $3cf2 : $f5, $33, $08
	bmi @br_3cfa                                                  ; $3cf5 : $30, $03

	mov A, Y                                                  ; $3cf7 : $dd
	bra +                                                  ; $3cf8 : $2f, $03

@br_3cfa:
	mov A, Y                                                  ; $3cfa : $dd
	or A, #$80                                                  ; $3cfb : $08, $80

+	mov !w0873+X, A                                                  ; $3cfd : $d5, $73, $08

@cont_3d00:
	dec X                                                  ; $3d00 : $1d
	bpl @loop_3c95                                                  ; $3d01 : $10, $92

	ret                                                  ; $3d03 : $6f


CommandHandler04h_PlaySoundEffect:
; A = sound effect idx
	mov A, PORT_0                                                             ; $3d04 : $e4, $f4
	push A                                                                    ; $3d06 : $2d
	call !WaitUntilSNESReady                                                  ; $3d07 : $3f, $ee, $05

; Y = addr of sound effect data
	mov wPtrToSoundEffectSrc, #<SoundEffectsPtrs                              ; $3d0a : $8f, $d2, $10
	mov wPtrToSoundEffectSrc+1, #>SoundEffectsPtrs                            ; $3d0d : $8f, $09, $11
	pop A                                                                     ; $3d10 : $ae
	asl A                                                                     ; $3d11 : $1c
	bcc +                                                                     ; $3d12 : $90, $02
	inc wPtrToSoundEffectSrc+1                                                ; $3d14 : $ab, $11
+	mov Y, A                                                                  ; $3d16 : $fd

; Read table entry to get sound effect src addr
	mov A, [wPtrToSoundEffectSrc]+Y                                           ; $3d17 : $f7, $10
	clrc                                                                      ; $3d19 : $60
	adc A, #<SoundEffectsPtrs                                                 ; $3d1a : $88, $d2
	mov wSoundEffectSrc, A                                                    ; $3d1c : $c4, $18
	inc Y                                                                     ; $3d1e : $fc

	mov A, [wPtrToSoundEffectSrc]+Y                                           ; $3d1f : $f7, $10
	adc A, #>SoundEffectsPtrs                                                 ; $3d21 : $88, $09
	mov wSoundEffectSrc+1, A                                                  ; $3d23 : $c4, $19

;
	mov $14, #$00                                                  ; $3d25 : $8f, $00, $14

@loop_3d28:
	mov X, #$00                                                  ; $3d28 : $cd, $00
	mov A, $14                                                  ; $3d2a : $e4, $14

@loop_3d2c:
	cmp A, !w00ae+X                                                  ; $3d2c : $75, $ae, $00
	beq @br_3d38                                                  ; $3d2f : $f0, $07

	inc X                                                  ; $3d31 : $3d
	cmp X, #$08                                                  ; $3d32 : $c8, $08
	bne @loop_3d2c                                                  ; $3d34 : $d0, $f6

	bra @cont_3d41                                                  ; $3d36 : $2f, $09

@br_3d38:
	mov A, $14                                                  ; $3d38 : $e4, $14
	inc A                                                  ; $3d3a : $bc
	mov $14, A                                                  ; $3d3b : $c4, $14
	cmp A, #$10                                                  ; $3d3d : $68, $10
	bne @loop_3d28                                                  ; $3d3f : $d0, $e7

@cont_3d41:
	mov A, $14                                                  ; $3d41 : $e4, $14
	mov !w08d1, A                                                  ; $3d43 : $c5, $d1, $08

; Read next byte (num channels), +1 is an offset that points to the 1st channel's data
	mov Y, #$00                                                               ; $3d46 : $8d, $00
	mov A, [wSoundEffectSrc]+Y                                                ; $3d48 : $f7, $18
	inc Y                                                                     ; $3d4a : $fc
	mov wNumChannelsLeftForSndEffect, A                                       ; $3d4b : $c4, $15
	inc A                                                                     ; $3d4d : $bc
	mov wSndEffectOffsetToChnData, A                                          ; $3d4e : $c4, $14

;
	push Y                                                  ; $3d50 : $6d
	call !Call_00_3e78                                                  ; $3d51 : $3f, $78, $3e
	pop Y                                                  ; $3d54 : $ee

@nextSndChn:
	mov A, [wSoundEffectSrc]+Y                                                  ; $3d55 : $f7, $18
	mov X, A                                                  ; $3d57 : $5d
	mov A, #$01                                                  ; $3d58 : $e8, $01
	mov wMusicAndSEControl+8+X,A                                                  ; $3d5a : $d4, $45

;
	mov A, #CHN_USES_SE                                                  ; $3d5c : $e8, $02
	or A, wMusicAndSEControl+X                                                  ; $3d5e : $14, $3d
	mov wMusicAndSEControl+X,A                                                  ; $3d60 : $d4, $3d

;
	and A, #CHN_USES_MUSIC                                                  ; $3d62 : $28, $01
	beq +                                                 ; $3d64 : $f0, $03
	call !SetThatChnShouldStop                                                  ; $3d66 : $3f, $8f, $3b

;
+	mov A, !w08d1                                                  ; $3d69 : $e5, $d1, $08
	mov !w00ae+X, A                                                  ; $3d6c : $d5, $ae, $00

; Get pointer to sound data
	push Y                                                                    ; $3d6f : $6d
	mov Y, wSndEffectOffsetToChnData                                          ; $3d70 : $eb, $14

; Next word is offset from sound effect to save the channel's address' low byte
	mov A, [wSoundEffectSrc]+Y                                                ; $3d72 : $f7, $18
	clrc                                                                      ; $3d74 : $60
	adc A, wSoundEffectSrc                                                    ; $3d75 : $84, $18
	mov !wMusicAndSESndByteSrcLo+8+X, A                                       ; $3d77 : $d5, $3b, $06
	inc Y                                                                     ; $3d7a : $fc

; Repeat for high byte
	mov A, [wSoundEffectSrc]+Y                                                ; $3d7b : $f7, $18
	adc A, wSoundEffectSrc+1                                                  ; $3d7d : $84, $19
	mov !wMusicAndSESndByteSrcHi+8+X, A                                       ; $3d7f : $d5, $4b, $06
	inc Y                                                                     ; $3d82 : $fc
	mov wSndEffectOffsetToChnData, Y                                          ; $3d83 : $cb, $14

; unset bit on a7
	pop Y                                                  ; $3d85 : $ee
	mov A, w00a7                                                  ; $3d86 : $e4, $a7
	eor A, #$ff                                                  ; $3d88 : $48, $ff
	or A, !SoundEffectBitfieldMap+X                                                  ; $3d8a : $15, $4a, $43
	eor A, #$ff                                                  ; $3d8d : $48, $ff
	mov w00a7, A                                                  ; $3d8f : $c4, $a7

; unset bit on a4
	mov A, !SoundEffectBitmaskMap+X                                                  ; $3d91 : $f5, $5a, $43
	and A, w00a4                                                  ; $3d94 : $24, $a4
	mov w00a4, A                                                  ; $3d96 : $c4, $a4

;
	push X                                                  ; $3d98 : $4d
	mov A, X                                                  ; $3d99 : $7d
	clrc                                                  ; $3d9a : $60
	adc A, #$08                                                  ; $3d9b : $88, $08
	mov X, A                                                  ; $3d9d : $5d
	call !InitSndChnX                                                  ; $3d9e : $3f, $30, $3f

;
	mov A, #$01                                                  ; $3da1 : $e8, $01
	mov wCtrTilProcessingChnsMusicBytes+X,A                                                  ; $3da3 : $d4, $1d
	mov A, #$00                                                  ; $3da5 : $e8, $00
	mov wCtrTilProcessingChnsSEBytes+X,A                                                  ; $3da7 : $d4, $2d

;
	pop X                                                  ; $3da9 : $ce
	inc Y                                                  ; $3daa : $fc
	dec wNumChannelsLeftForSndEffect                                                  ; $3dab : $8b, $15
	beq @cont_3db2                                                  ; $3dad : $f0, $03

	jmp !@nextSndChn                                                  ; $3daf : $5f, $55, $3d

@cont_3db2:
	call !SetDspEON                                                  ; $3db2 : $3f, $9c, $3f
	call !SetDspNON                                                  ; $3db5 : $3f, $a8, $3f
	call !SetDspPMON                                                  ; $3db8 : $3f, $90, $3f

;
	mov A, #$02                                                  ; $3dbb : $e8, $02
	or A, w009b                                                  ; $3dbd : $04, $9b
	mov w009b, A                                                  ; $3dbf : $c4, $9b
	jmp !NextSndCommand                                                  ; $3dc1 : $5f, $88, $03


Call_00_3dc4:
	mov A, w009b                                                  ; $3dc4 : $e4, $9b
	and A, #$02                                                  ; $3dc6 : $28, $02
	bne @br_3dcd                                                  ; $3dc8 : $d0, $03

	jmp !@done                                                  ; $3dca : $5f, $2b, $3e

@br_3dcd:
	mov w00b8, w00a7                                                  ; $3dcd : $fa, $a7, $b8
	mov X, #$08                                                  ; $3dd0 : $cd, $08

@bigLoop_3dd2:
	mov A, wMusicAndSEControl+X                                                  ; $3dd2 : $f4, $3d
	beq @cont_3e1b                                                  ; $3dd4 : $f0, $45

	mov A, wCtrTilProcessingChnsSEBytes+X                                                  ; $3dd6 : $f4, $2d
	beq @cont_3de1                                                  ; $3dd8 : $f0, $07

	dec wCtrTilProcessingChnsSEBytes+X                                                  ; $3dda : $9b, $2d
	bne @cont_3de1                                                  ; $3ddc : $d0, $03

	call !SetThatChnShouldStop                                                  ; $3dde : $3f, $8f, $3b

@cont_3de1:
	dec wCtrTilProcessingChnsMusicBytes+X                                                  ; $3de1 : $9b, $1d
	bne @cont_3e1b                                                  ; $3de3 : $d0, $36

	call !ProcessChannelsSndBytes                                                  ; $3de5 : $3f, $91, $36
	mov A, wMusicAndSEControl+X                                                  ; $3de8 : $f4, $3d
	and A, #$01                                                  ; $3dea : $28, $01
	bne @cont_3e1b                                                  ; $3dec : $d0, $2d

	call !Call_00_3ebe                                                  ; $3dee : $3f, $be, $3e
	mov A, w00a6+X                                                  ; $3df1 : $f4, $a6
	mov $10, A                                                  ; $3df3 : $c4, $10
	or A, #$80                                                  ; $3df5 : $08, $80
	mov w00a6+X,A                                                  ; $3df7 : $d4, $a6
	push X                                                  ; $3df9 : $4d
	mov X, #$07                                                  ; $3dfa : $cd, $07

@loop_3dfc:
	mov A, w00ae+X                                                  ; $3dfc : $f4, $ae
	bmi @br_3e04                                                  ; $3dfe : $30, $04

	cmp A, $10                                                  ; $3e00 : $64, $10
	beq @cont_3e1a                                                  ; $3e02 : $f0, $16

@br_3e04:
	dec X                                                  ; $3e04 : $1d
	bpl @loop_3dfc                                                  ; $3e05 : $10, $f5

	mov X, #$07                                                  ; $3e07 : $cd, $07

@loop_3e09:
	mov A, w00ae+X                                                  ; $3e09 : $f4, $ae
	bpl @cont_3e17                                                  ; $3e0b : $10, $0a

	and A, #$7f                                                  ; $3e0d : $28, $7f
	cmp A, $10                                                  ; $3e0f : $64, $10
	bne @cont_3e17                                                  ; $3e11 : $d0, $04

	mov A, #$00                                                  ; $3e13 : $e8, $00
	mov w00ae+X,A                                                  ; $3e15 : $d4, $ae

@cont_3e17:
	dec X                                                  ; $3e17 : $1d
	bpl @loop_3e09                                                  ; $3e18 : $10, $ef

@cont_3e1a:
	pop X                                                  ; $3e1a : $ce

@cont_3e1b:
	inc X                                                  ; $3e1b : $3d
	cmp X, #NUM_SW_CHANNELS                                                  ; $3e1c : $c8, $10
	bne @bigLoop_3dd2                                                  ; $3e1e : $d0, $b2

	cmp w00b8, w00a7                                                  ; $3e20 : $69, $a7, $b8
	beq @done                                                  ; $3e23 : $f0, $06

	call !SetDspNON                                                  ; $3e25 : $3f, $a8, $3f
	call !SetDspPMON                                                  ; $3e28 : $3f, $90, $3f

@done:
	ret                                                  ; $3e2b : $6f


SetDspNON_PMON:
	call !SetDspNON                                                           ; $3e2c : $3f, $a8, $3f
	call !SetDspPMON                                                          ; $3e2f : $3f, $90, $3f
	ret                                                                       ; $3e32 : $6f


CommandHandler05h:
	mov X, #$08                                                  ; $3e33 : $cd, $08

@loop_3e35:
	mov A, wMusicAndSEControl+X                                                  ; $3e35 : $f4, $3d
	and A, #$01                                                  ; $3e37 : $28, $01
	beq +                                                 ; $3e39 : $f0, $06

	call !Call_00_3ebe                                                  ; $3e3b : $3f, $be, $3e
	call !SetThatChnShouldStop                                                  ; $3e3e : $3f, $8f, $3b

+	inc X                                                  ; $3e41 : $3d
	cmp X, #NUM_SW_CHANNELS                                                  ; $3e42 : $c8, $10
	bne @loop_3e35                                                  ; $3e44 : $d0, $ef

	call !SetDspNON_PMON                                                  ; $3e46 : $3f, $2c, $3e
	mov A, !w009b                                                  ; $3e49 : $e5, $9b, $00
	and A, #$fd                                                  ; $3e4c : $28, $fd
	mov !w009b, A                                                  ; $3e4e : $c5, $9b, $00
	call !WaitUntilSNESReady                                                  ; $3e51 : $3f, $ee, $05
	jmp !NextSndCommand                                                  ; $3e54 : $5f, $88, $03


CommandHandler19h:
	mov wPtrToSoundEffectSrc, #<SoundEffectsPtrs                                                  ; $3e57 : $8f, $d2, $10
	mov wPtrToSoundEffectSrc+1, #>SoundEffectsPtrs                                                  ; $3e5a : $8f, $09, $11

; Y = double sound idx
	mov A, PORT_0                                                  ; $3e5d : $e4, $f4
	asl A                                                  ; $3e5f : $1c
	mov Y, A                                                  ; $3e60 : $fd

; Sound effect src = table entry based on sound idx
	mov A, [wPtrToSoundEffectSrc]+Y                                                  ; $3e61 : $f7, $10
	clrc                                                  ; $3e63 : $60
	adc A, #<SoundEffectsPtrs                                                  ; $3e64 : $88, $d2
	mov wSoundEffectSrc, A                                                  ; $3e66 : $c4, $18
	inc Y                                                  ; $3e68 : $fc

	mov A, [wPtrToSoundEffectSrc]+Y                                                  ; $3e69 : $f7, $10
	adc A, #>SoundEffectsPtrs                                                  ; $3e6b : $88, $09
	mov wSoundEffectSrc+1, A                                                  ; $3e6d : $c4, $19

;
	call !WaitUntilSNESReady                                                  ; $3e6f : $3f, $ee, $05
	call !Call_00_3e78                                                  ; $3e72 : $3f, $78, $3e
	jmp !NextSndCommand                                                  ; $3e75 : $5f, $88, $03


Call_00_3e78:
	mov w00b8, w00a7                                                  ; $3e78 : $fa, $a7, $b8
	mov Y, #$00                                                  ; $3e7b : $8d, $00
	mov A, [wSoundEffectSrc]+Y                                                  ; $3e7d : $f7, $18
	mov $17, A                                                  ; $3e7f : $c4, $17
	inc Y                                                  ; $3e81 : $fc

@loop_3e82:
	mov A, [wSoundEffectSrc]+Y                                                  ; $3e82 : $f7, $18
	inc Y                                                  ; $3e84 : $fc
	mov X, A                                                  ; $3e85 : $5d
	mov A, !w00ae+X                                                  ; $3e86 : $f5, $ae, $00
	beq @cont_3eae                                                  ; $3e89 : $f0, $23

	mov $16, A                                                  ; $3e8b : $c4, $16
	mov X, #$08                                                  ; $3e8d : $cd, $08

@nextSndChn:
	mov A, wMusicAndSEControl+X                                                  ; $3e8f : $f4, $3d
	and A, #$01                                                  ; $3e91 : $28, $01
	beq @toNextSndChn                                                  ; $3e93 : $f0, $14

	mov A, !w00a6+X                                                  ; $3e95 : $f5, $a6, $00
	and A, #$7f                                                  ; $3e98 : $28, $7f
	cmp A, $16                                                  ; $3e9a : $64, $16
	bne @toNextSndChn                                                  ; $3e9c : $d0, $0b

	mov A, #$00                                                  ; $3e9e : $e8, $00
	mov !w00a6+X, A                                                  ; $3ea0 : $d5, $a6, $00
	call !Call_00_3ebe                                                  ; $3ea3 : $3f, $be, $3e
	call !SetThatChnShouldStop                                                  ; $3ea6 : $3f, $8f, $3b

@toNextSndChn:
	inc X                                                  ; $3ea9 : $3d
	cmp X, #NUM_SW_CHANNELS                                                  ; $3eaa : $c8, $10
	bne @nextSndChn                                                  ; $3eac : $d0, $e1

@cont_3eae:
	dec $17                                                  ; $3eae : $8b, $17
	bne @loop_3e82                                                  ; $3eb0 : $d0, $d0

	cmp w00b8, w00a7                                                  ; $3eb2 : $69, $a7, $b8
	beq +                                                  ; $3eb5 : $f0, $06

	call !SetDspNON_PMON                                                  ; $3eb7 : $3f, $2c, $3e
	call !UpdateKON_KOF                                                  ; $3eba : $3f, $08, $3f

+	ret                                                  ; $3ebd : $6f


Call_00_3ebe:
	mov A, !MusicBitmaskMap+X                                                  ; $3ebe : $f5, $52, $43
	mov $10, A                                                  ; $3ec1 : $c4, $10
	and A, !w00a2                                                  ; $3ec3 : $25, $a2, $00
	mov !w00a2, A                                                  ; $3ec6 : $c5, $a2, $00
	mov A, !w00a4                                                  ; $3ec9 : $e5, $a4, $00
	and A, $10                                                  ; $3ecc : $24, $10
	mov !w00a4, A                                                  ; $3ece : $c5, $a4, $00
	mov A, !w00a6                                                  ; $3ed1 : $e5, $a6, $00
	and A, $10                                                  ; $3ed4 : $24, $10
	mov !w00a6, A                                                  ; $3ed6 : $c5, $a6, $00
	mov A, !MusicBitfieldMap+X                                                  ; $3ed9 : $f5, $42, $43
	mov $10, A                                                  ; $3edc : $c4, $10
	or A, w00a7                                                  ; $3ede : $04, $a7
	mov w00a7, A                                                  ; $3ee0 : $c4, $a7
	cmp A, #$ff                                                  ; $3ee2 : $68, $ff
	bne @cont_3eee                                                  ; $3ee4 : $d0, $08

	mov A, !w009b                                                  ; $3ee6 : $e5, $9b, $00
	and A, #$fd                                                  ; $3ee9 : $28, $fd
	mov !w009b, A                                                  ; $3eeb : $c5, $9b, $00

@cont_3eee:
	mov A, wCtrTilProcessingChnsSEBytes+8+X                                                  ; $3eee : $f4, $35
	and A, #$01                                                  ; $3ef0 : $28, $01
	beq @cont_3efa                                                  ; $3ef2 : $f0, $06

	mov A, w00b7                                                  ; $3ef4 : $e4, $b7
	or A, $10                                                  ; $3ef6 : $04, $10
	mov w00b7, A                                                  ; $3ef8 : $c4, $b7

@cont_3efa:
	mov A, wCtrTilProcessingChnsSEBytes+8+X                                                  ; $3efa : $f4, $35
	and A, #$fd                                                  ; $3efc : $28, $fd
	mov wCtrTilProcessingChnsSEBytes+8+X,A                                                  ; $3efe : $d4, $35
	mov A, #$00                                                  ; $3f00 : $e8, $00
	mov wMusicAndSEControl+X,A                                                  ; $3f02 : $d4, $3d
	mov w00b9, #$04                                                  ; $3f04 : $8f, $04, $b9
	ret                                                  ; $3f07 : $6f


UpdateKON_KOF:
; If there are any bits to set for KOF, do so and wait some cycles
	mov A, wChnBitflagToKOF                                                   ; $3f08 : $e4, $96
	beq @afterKofCheck                                                        ; $3f0a : $f0, $09

	mov DSP_REG_ADDR, #KOF                                                    ; $3f0c : $8f, $5c, $f2
	mov DSP_REG_DATA, A                                                       ; $3f0f : $c4, $f3

	mov Y, #$40                                                               ; $3f11 : $8d, $40
-	dbnz Y, -                                                                 ; $3f13 : $fe, $fe

@afterKofCheck:
; Repeat above, but for KON, first clearing KOF
	mov A, wChnBitflagToKON                                                   ; $3f15 : $e4, $95
	beq @clearBitsToKonOrKof                                                  ; $3f17 : $f0, $10

	mov DSP_REG_ADDR, #KOF                                                    ; $3f19 : $8f, $5c, $f2
	mov DSP_REG_DATA, #$00                                                    ; $3f1c : $8f, $00, $f3

	mov Y, #$40                                                               ; $3f1f : $8d, $40
-	dbnz Y, -                                                                 ; $3f21 : $fe, $fe

	mov DSP_REG_ADDR, #KON                                                    ; $3f23 : $8f, $4c, $f2
	mov DSP_REG_DATA, wChnBitflagToKON                                        ; $3f26 : $fa, $95, $f3

@clearBitsToKonOrKof:
; Finally clear these pending vars
	mov A, #$00                                                               ; $3f29 : $e8, $00
	mov wChnBitflagToKON, A                                                   ; $3f2b : $c4, $95
	mov wChnBitflagToKOF, A                                                   ; $3f2d : $c4, $96
	ret                                                                       ; $3f2f : $6f


InitSndChnX:
	mov A, #$00                                                  ; $3f30 : $e8, $00
	mov !wMusicAndSEBaseNote+X, A                                                  ; $3f32 : $d5, $23, $06
	mov !w0753+X, A                                                  ; $3f35 : $d5, $53, $07
	mov !w0763+X, A                                                  ; $3f38 : $d5, $63, $07
	mov !w0773+X, A                                                  ; $3f3b : $d5, $73, $07
	mov !w0793+X, A                                                  ; $3f3e : $d5, $93, $07
	mov !w07a3+X, A                                                  ; $3f41 : $d5, $a3, $07
	mov !w07b3+X, A                                                  ; $3f44 : $d5, $b3, $07
	mov !w0853+X, A                                                  ; $3f47 : $d5, $53, $08
	mov !w0803+X, A                                                  ; $3f4a : $d5, $03, $08
	mov !wMusicAndSEFinePitchMult+X, A                                                  ; $3f4d : $d5, $83, $08
	mov !wMusicAndSELoopSectionPtrHi+X, A                                                  ; $3f50 : $d5, $73, $06
	mov !w0683+X, A                                                  ; $3f53 : $d5, $83, $06
	mov !wMusicAndSELoopCounter+X, A                                                  ; $3f56 : $d5, $d3, $06
	mov !w06e3+X, A                                                  ; $3f59 : $d5, $e3, $06
	mov wCtrTilProcessingChnsSEBytes+X,A                                                  ; $3f5c : $d4, $2d
	mov A, #$87                                                  ; $3f5e : $e8, $87
	mov !w07d3+X, A                                                  ; $3f60 : $d5, $d3, $07
	mov A, #$70                                                  ; $3f63 : $e8, $70
	mov !w0723+X, A                                                  ; $3f65 : $d5, $23, $07
	mov A, #$80                                                  ; $3f68 : $e8, $80
	mov !wMusicAndSEMultPerUpdate+X, A                                                  ; $3f6a : $d5, $c3, $07
	mov A, #$20                                                  ; $3f6d : $e8, $20
	mov !w0843+X, A                                                  ; $3f6f : $d5, $43, $08
	mov A, #$20                                                  ; $3f72 : $e8, $20
	mov !w07f3+X, A                                                  ; $3f74 : $d5, $f3, $07
	mov A, #$00                                                  ; $3f77 : $e8, $00
	mov !wMusicAndSEFinePitchAdjust+X, A                                                  ; $3f79 : $d5, $23, $08
	mov !w0873+X, A                                                  ; $3f7c : $d5, $73, $08
	mov !w07e3+X, A                                                  ; $3f7f : $d5, $e3, $07
	mov !w0833+X, A                                                  ; $3f82 : $d5, $33, $08
	mov A, #$10                                                  ; $3f85 : $e8, $10
	mov !w0863+X, A                                                  ; $3f87 : $d5, $63, $08
	mov A, #$20                                                  ; $3f8a : $e8, $20
	mov !w0813+X, A                                                  ; $3f8c : $d5, $13, $08
	ret                                                  ; $3f8f : $6f


SetDspPMON:
	mov A, w00a5                                                  ; $3f90 : $e4, $a5
	and A, w00a7                                                  ; $3f92 : $24, $a7
	or A, w00a6                                                  ; $3f94 : $04, $a6
	mov DSP_REG_ADDR, #PMON                                                  ; $3f96 : $8f, $2d, $f2
	mov DSP_REG_DATA, A                                                  ; $3f99 : $c4, $f3
	ret                                                  ; $3f9b : $6f


SetDspEON:
	mov A, w00a3                                                  ; $3f9c : $e4, $a3
	and A, w00a7                                                  ; $3f9e : $24, $a7
	or A, w00a4                                                  ; $3fa0 : $04, $a4
	mov DSP_REG_ADDR, #EON                                                  ; $3fa2 : $8f, $4d, $f2
	mov DSP_REG_DATA, A                                                  ; $3fa5 : $c4, $f3
	ret                                                  ; $3fa7 : $6f


SetDspNON:
	mov A, w00a1                                                  ; $3fa8 : $e4, $a1
	and A, w00a7                                                  ; $3faa : $24, $a7
	or A, w00a2                                                  ; $3fac : $04, $a2
	mov DSP_REG_ADDR, #NON                                                  ; $3fae : $8f, $3d, $f2
	mov DSP_REG_DATA, A                                                  ; $3fb1 : $c4, $f3
	ret                                                  ; $3fb3 : $6f


SetDspMVOL:
	mov A, !wMvol                                                             ; $3fb4 : $e5, $c3, $08
	mov DSP_REG_ADDR, #MVOL_R                                                 ; $3fb7 : $8f, $1c, $f2
	mov DSP_REG_DATA, A                                                       ; $3fba : $c4, $f3
	mov DSP_REG_ADDR, #MVOL_L                                                 ; $3fbc : $8f, $0c, $f2
	mov DSP_REG_DATA, A                                                       ; $3fbf : $c4, $f3
	ret                                                                       ; $3fc1 : $6f


SetDspCOEF:
; X = pointer to 1 of 4 8 COEF vals based on this ram var
	mov A, !w8COEFValsIdx                                                     ; $3fc2 : $e5, $c7, $08
	asl A                                                                     ; $3fc5 : $1c
	asl A                                                                     ; $3fc6 : $1c
	asl A                                                                     ; $3fc7 : $1c
	mov X, A                                                                  ; $3fc8 : $5d

; Y to point to each channel's COEF addr
	mov Y, #COEF                                                              ; $3fc9 : $8d, $0f

@nextHwSndChn:
; Read in 1 of 8 coef vals for each channel using table below
	mov A, !@coefVals+X                                                       ; $3fcb : $f5, $dd, $3f
	mov DSP_REG_ADDR, Y                                                       ; $3fce : $cb, $f2
	mov DSP_REG_DATA, A                                                       ; $3fd0 : $c4, $f3
	inc X                                                                     ; $3fd2 : $3d

; Go to next hardware sound channel
	mov A, Y                                                                  ; $3fd3 : $dd
	clrc                                                                      ; $3fd4 : $60
	adc A, #$10                                                               ; $3fd5 : $88, $10
	mov Y, A                                                                  ; $3fd7 : $fd
	cmp A, #$80|COEF                                                          ; $3fd8 : $68, $8f
	bne @nextHwSndChn                                                         ; $3fda : $d0, $ef

	ret                                                                       ; $3fdc : $6f

@coefVals:
	.db $7f, $00, $00, $00, $00, $00, $00, $00
	.db $0c, $21, $2b, $2b, $13, $fe, $f3, $f9
	.db $58, $bf, $db, $f0, $fe, $07, $0c, $0c
	.db $34, $33, $00, $d9, $e5, $01, $fc, $eb


; X - curr sound channel idx
Func_3ffd:
; music uses 08cc, se uses 08cd
	mov Y, !w08cd                                                  ; $3ffd : $ec, $cd, $08
	cmp X, #$08                                                  ; $4000 : $c8, $08
	bcs +                                                  ; $4002 : $b0, $03
	mov Y, !w08cc                                                  ; $4004 : $ec, $cc, $08

;
+	mov A, !w0773+X                                                  ; $4007 : $f5, $73, $07
	asl A                                                  ; $400a : $1c
	inc A                                                  ; $400b : $bc
	mul YA                                                  ; $400c : $cf
	mov A, !w0723+X                                                  ; $400d : $f5, $23, $07
	asl A                                                  ; $4010 : $1c
	inc A                                                  ; $4011 : $bc
	mul YA                                                  ; $4012 : $cf
	mov A, Y                                                  ; $4013 : $dd
	mov !w08b3+X, A                                                  ; $4014 : $d5, $b3, $08
	ret                                                  ; $4017 : $6f


UpdateAllVolAndEchoVol:
	mov X, #$00                                                  ; $4018 : $cd, $00

@nextSndChn:
; Skip channel if it doesn't use music
	mov A, wMusicAndSEControl+X                                                  ; $401a : $f4, $3d
	and A, #CHN_USES_MUSIC                                                  ; $401c : $28, $01
	bne @usesMusic                                                  ; $401e : $d0, $03

	jmp !@toNextSndChn                                                  ; $4020 : $5f, $ba, $40

@usesMusic:
; Ignore if it uses sound
	mov A, wMusicAndSEControl+X                                                  ; $4023 : $f4, $3d
	and A, #CHN_USES_SE                                                  ; $4025 : $28, $02
	beq @doesNotUseSnd                                                  ; $4027 : $f0, $03

	jmp !@toNextSndChn                                                  ; $4029 : $5f, $ba, $40

@doesNotUseSnd:
	cmp X, #$08                                                  ; $402c : $c8, $08
	bcs @isSndEffect                                                  ; $402e : $b0, $0b

	mov A, !w08b3+X                                                  ; $4030 : $f5, $b3, $08
	mov Y, !wEchoVolMult                                                  ; $4033 : $ec, $ca, $08
	mul YA                                                  ; $4036 : $cf
	mov $10, Y                                                  ; $4037 : $cb, $10
	bra +                                                  ; $4039 : $2f, $05

@isSndEffect:
	mov A, !w08b3+X                                                  ; $403b : $f5, $b3, $08
	mov $10, A                                                  ; $403e : $c4, $10

;
+	mov A, !w0873+X                                                  ; $4040 : $f5, $73, $08
	beq @cont_406a                                                  ; $4043 : $f0, $25

	mov A, !wMusicAndSEFinePitchMult+X                                                  ; $4045 : $f5, $83, $08
	beq @cont_406a                                                  ; $4048 : $f0, $20

	asl A                                                  ; $404a : $1c
	mov Y, $10                                                  ; $404b : $eb, $10
	mul YA                                                  ; $404d : $cf
	push X                                                  ; $404e : $4d
	mov A, !w0873+X                                                  ; $404f : $f5, $73, $08
	asl A                                                  ; $4052 : $1c
	mul YA                                                  ; $4053 : $cf
	pop X                                                  ; $4054 : $ce
	bcc @br_4060                                                  ; $4055 : $90, $09

	mov A, Y                                                  ; $4057 : $dd
	eor A, #$ff                                                  ; $4058 : $48, $ff
	inc A                                                  ; $405a : $bc
	clrc                                                  ; $405b : $60
	adc A, $10                                                  ; $405c : $84, $10
	bra @cont_4068                                                  ; $405e : $2f, $08

@br_4060:
	mov A, Y                                                  ; $4060 : $dd
	clrc                                                  ; $4061 : $60
	adc A, $10                                                  ; $4062 : $84, $10
	bpl @cont_4068                                                  ; $4064 : $10, $02

	mov A, #$7f                                                  ; $4066 : $e8, $7f

@cont_4068:
	mov $10, A                                                  ; $4068 : $c4, $10

@cont_406a:
;
	bbs w0099.0, @br_4083                                                  ; $406a : $03, $99, $16

;
	mov A, !w0733+X                                                  ; $406d : $f5, $33, $07
	cmp A, #$40                                                  ; $4070 : $68, $40
	beq @br_4083                                                  ; $4072 : $f0, $0f

	mov Y, $10                                                  ; $4074 : $eb, $10
	asl A                                                  ; $4076 : $1c
	mul YA                                                  ; $4077 : $cf
	mov wChnRightVol, Y                                                  ; $4078 : $cb, $13
	mov A, Y                                                  ; $407a : $dd
	sbc A, $10                                                  ; $407b : $a4, $10
	eor A, #$ff                                                  ; $407d : $48, $ff
	mov wChnLeftVol, A                                                  ; $407f : $c4, $12
	bra @cont_408a                                                  ; $4081 : $2f, $07

@br_4083:
	mov A, $10                                                  ; $4083 : $e4, $10
	lsr A                                                  ; $4085 : $5c
	mov wChnLeftVol, A                                                  ; $4086 : $c4, $12
	mov wChnRightVol, A                                                  ; $4088 : $c4, $13

@cont_408a:
;
	bbs w0099.0, @setChnsVol                                                  ; $408a : $03, $99, $16

; Make left volume negative if flag set for channel
	mov A, wMusicAndSEControl+X                                               ; $408d : $f4, $3d
	and A, #CHN_NEG_VOL_L                                                     ; $408f : $28, $20
	beq +                                                                     ; $4091 : $f0, $05

	eor wChnLeftVol, #$ff                                                     ; $4093 : $58, $ff, $12
	inc wChnLeftVol                                                           ; $4096 : $ab, $12

; Repeat above for right volume
+	mov A, wMusicAndSEControl+X                                               ; $4098 : $f4, $3d
	and A, #CHN_NEG_VOL_R                                                     ; $409a : $28, $40
	beq @setChnsVol                                                           ; $409c : $f0, $05

	eor wChnRightVol, #$ff                                                    ; $409e : $58, $ff, $13
	inc wChnRightVol                                                          ; $40a1 : $ab, $13

@setChnsVol:
; If X is for sound effects...
	cmp X, #$08                                                               ; $40a3 : $c8, $08
	bcc @setHwChnsVol                                                         ; $40a5 : $90, $07

; -8 to set the relevant hardware channel's volume
	mov A, X                                                                  ; $40a7 : $7d
	setc                                                                      ; $40a8 : $80
	sbc A, #$08                                                               ; $40a9 : $a8, $08
	xcn A                                                                     ; $40ab : $9f
	bra +                                                                     ; $40ac : $2f, $02

@setHwChnsVol:
; A points to channel's VOL_L
	mov A, X                                                                  ; $40ae : $7d
	xcn A                                                                     ; $40af : $9f

; Set VOL_L
+	mov DSP_REG_ADDR, A                                                       ; $40b0 : $c4, $f2
	mov DSP_REG_DATA, wChnLeftVol                                             ; $40b2 : $fa, $12, $f3

; Set VOL_R
	inc DSP_REG_ADDR                                                          ; $40b5 : $ab, $f2
	mov DSP_REG_DATA, wChnRightVol                                            ; $40b7 : $fa, $13, $f3

@toNextSndChn:
	inc X                                                                     ; $40ba : $3d
	cmp X, #NUM_SW_CHANNELS                                                   ; $40bb : $c8, $10
	beq @afterProcessingSndChns                                               ; $40bd : $f0, $03

	jmp !@nextSndChn                                                          ; $40bf : $5f, $1a, $40

@afterProcessingSndChns:
;
	mov A, !wBaseEvolR                                                  ; $40c2 : $e5, $c5, $08
	mov Y, !wEchoVolMult                                                  ; $40c5 : $ec, $ca, $08
	mul YA                                                  ; $40c8 : $cf
	mov A, Y                                                  ; $40c9 : $dd
	bbs w0099.0, @setEvolR                                                  ; $40ca : $03, $99, $06
	bbc w0098.3, @setEvolR                                                  ; $40cd : $73, $98, $03

	eor A, #$ff                                                  ; $40d0 : $48, $ff
	inc A                                                  ; $40d2 : $bc

@setEvolR:
	mov DSP_REG_ADDR, #EVOL_R                                                 ; $40d3 : $8f, $3c, $f2
	mov DSP_REG_DATA, A                                                  ; $40d6 : $c4, $f3

;
	mov A, !wBaseEvolL                                                  ; $40d8 : $e5, $c6, $08
	mov Y, !wEchoVolMult                                                  ; $40db : $ec, $ca, $08
	mul YA                                                  ; $40de : $cf
	mov A, Y                                                  ; $40df : $dd
	bbs w0099.0, @setEvolL                                                  ; $40e0 : $03, $99, $06
	bbc w0098.4, @setEvolL                                                  ; $40e3 : $93, $98, $03

	eor A, #$ff                                                  ; $40e6 : $48, $ff
	inc A                                                  ; $40e8 : $bc

@setEvolL:
	mov DSP_REG_ADDR, #EVOL_L                                                  ; $40e9 : $8f, $2c, $f2
	mov DSP_REG_DATA, A                                                  ; $40ec : $c4, $f3
	ret                                                  ; $40ee : $6f


UpdateAllPitchDspRegs:
	mov X, #$00                                                               ; $40ef : $cd, $00

@nextSndChn:
; If bit 0 clear, the struct is not in use, try next channel
	mov A, wMusicAndSEControl+X                                               ; $40f1 : $f4, $3d
	and A, #CHN_USES_MUSIC                                                    ; $40f3 : $28, $01
	bne @structInUse                                                          ; $40f5 : $d0, $03

	jmp !@toNextSndChn                                                        ; $40f7 : $5f, $87, $41

@structInUse:
; If bit 1 set, sound effects are using the channel, try next channel
	mov A, wMusicAndSEControl+X                                               ; $40fa : $f4, $3d
	and A, #CHN_USES_SE                                                       ; $40fc : $28, $02
	beq @structNotOverridden                                                  ; $40fe : $f0, $03

	jmp !@toNextSndChn                                                        ; $4100 : $5f, $87, $41

@structNotOverridden:
; Start branching based on if pitch multiplier is $80, $00 or other
	mov A, !wMusicAndSEMultPerUpdate+X                                        ; $4103 : $f5, $c3, $07
	cmp A, #$80                                                               ; $4106 : $68, $80
	bne @notNormalMult                                                        ; $4108 : $d0, $0c

; If mult is $80, pitch is normal
	mov A, wBaseMusicAndSEPitchLow+X                                          ; $410a : $f4, $4d
	and A, #$f0                                                               ; $410c : $28, $f0
	mov wFinalMusicAndSEPitchLow+X,A                                          ; $410e : $d4, $6d
	mov A, wBaseMusicAndSEPitchHigh+X                                         ; $4110 : $f4, $5d
	mov wFinalMusicAndSEPitchHigh+X,A                                         ; $4112 : $d4, $7d
	bra @afterBasePitchSet                                                    ; $4114 : $2f, $2f

@notNormalMult:
	or A, #$00                                                                ; $4116 : $08, $00
	bne @notDoubleMult                                                        ; $4118 : $d0, $0e

; If mult is 0, double the pitch
	mov A, wBaseMusicAndSEPitchLow+X                                          ; $411a : $f4, $4d
	asl A                                                                     ; $411c : $1c
	and A, #$f0                                                               ; $411d : $28, $f0
	mov wFinalMusicAndSEPitchLow+X,A                                          ; $411f : $d4, $6d

	mov A, wBaseMusicAndSEPitchHigh+X                                         ; $4121 : $f4, $5d
	rol A                                                                     ; $4123 : $3c
	mov wFinalMusicAndSEPitchHigh+X,A                                         ; $4124 : $d4, $7d
	bra @afterBasePitchSet                                                    ; $4126 : $2f, $1d

@notDoubleMult:
; Else do multiplier * base pitch lo, storing high byte
	mov Y, wBaseMusicAndSEPitchLow+X                                          ; $4128 : $fb, $4d
	mul YA                                                                    ; $412a : $cf
	mov wHiOfMultTimesPitchLo, Y                                              ; $412b : $cb, $14

; Do multiplier * base pitch hi
	mov A, !wMusicAndSEMultPerUpdate+X                                        ; $412d : $f5, $c3, $07
	mov Y, A                                                                  ; $4130 : $fd
	mov A, wBaseMusicAndSEPitchHigh+X                                         ; $4131 : $f4, $5d
	mul YA                                                                    ; $4133 : $cf

; Add low byte onto the high byte of mult*lo
	clrc                                                                      ; $4134 : $60
	adc A, wHiOfMultTimesPitchLo                                              ; $4135 : $84, $14
	mov wHiOfMultTimesPitchLo, A                                              ; $4137 : $c4, $14
	bcc +                                                                     ; $4139 : $90, $01
	inc Y                                                                     ; $413b : $fc

; Finally double the pitch, as the normal is $80
+	asl A                                                                     ; $413c : $1c
	and A, #$f0                                                               ; $413d : $28, $f0
	mov wFinalMusicAndSEPitchLow+X,A                                          ; $413f : $d4, $6d

	mov A, Y                                                                  ; $4141 : $dd
	rol A                                                                     ; $4142 : $3c
	mov wFinalMusicAndSEPitchHigh+X,A                                         ; $4143 : $d4, $7d

@afterBasePitchSet:
; Skip below if fine pitch multiplier = 0
	mov A, !wMusicAndSEFinePitchMult+X                                        ; $4145 : $f5, $83, $08
	beq @toNextSndChn                                                         ; $4148 : $f0, $3d

; Scale down fine pitch adjust by multiplier
	mov Y, A                                                                  ; $414a : $fd
	mov A, !wMusicAndSEFinePitchAdjust+X                                      ; $414b : $f5, $23, $08
	asl A                                                                     ; $414e : $1c
	mul YA                                                                    ; $414f : $cf
	mov wScaledDownFinePitchAdjust, Y                                         ; $4150 : $cb, $11

; Fine pitch adjust low = curr pitch lo * scaled fine pitch
	mov A, wFinalMusicAndSEPitchLow+X                                         ; $4152 : $f4, $6d
	mul YA                                                                    ; $4154 : $cf
	mov wCurrFinePitchAdjust, Y                                               ; $4155 : $cb, $12

; Fine pitch adjust high = curr pitch hi * scaled fine pitch
	mov Y, wScaledDownFinePitchAdjust                                         ; $4157 : $eb, $11
	mov A, wFinalMusicAndSEPitchHigh+X                                        ; $4159 : $f4, $7d
	mul YA                                                                    ; $415b : $cf

; Total the above 2 to get the final fine pitch adjust
	clrc                                                                      ; $415c : $60
	adc A, wCurrFinePitchAdjust                                               ; $415d : $84, $12
	mov wCurrFinePitchAdjust, A                                               ; $415f : $c4, $12

	mov A, Y                                                                  ; $4161 : $dd
	adc A, #$00                                                               ; $4162 : $88, $00
	mov wCurrFinePitchAdjust+1, A                                             ; $4164 : $c4, $13

; If bit 7 set, the signed adjust causes a subtraction
	mov A, !wMusicAndSEFinePitchAdjust+X                                      ; $4166 : $f5, $23, $08
	bmi @subtractFromPitch                                                    ; $4169 : $30, $0f

; Add to pitch
	mov A, wCurrFinePitchAdjust                                               ; $416b : $e4, $12
	clrc                                                                      ; $416d : $60
	adc A, wFinalMusicAndSEPitchLow+X                                         ; $416e : $94, $6d
	mov wFinalMusicAndSEPitchLow+X,A                                          ; $4170 : $d4, $6d
	mov A, wCurrFinePitchAdjust+1                                             ; $4172 : $e4, $13
	adc A, wFinalMusicAndSEPitchHigh+X                                        ; $4174 : $94, $7d
	mov wFinalMusicAndSEPitchHigh+X,A                                         ; $4176 : $d4, $7d
	bra @toNextSndChn                                                         ; $4178 : $2f, $0d

@subtractFromPitch:
	mov A, wFinalMusicAndSEPitchLow+X                                         ; $417a : $f4, $6d
	setc                                                                      ; $417c : $80
	sbc A, wCurrFinePitchAdjust                                               ; $417d : $a4, $12
	mov wFinalMusicAndSEPitchLow+X,A                                          ; $417f : $d4, $6d
	mov A, wFinalMusicAndSEPitchHigh+X                                        ; $4181 : $f4, $7d
	sbc A, wCurrFinePitchAdjust+1                                             ; $4183 : $a4, $13
	mov wFinalMusicAndSEPitchHigh+X,A                                         ; $4185 : $d4, $7d

@toNextSndChn:
; Jump once all music + sound effects processed
	inc X                                                                     ; $4187 : $3d
	cmp X, #NUM_SW_CHANNELS                                                   ; $4188 : $c8, $10
	beq @afterSndChns                                                         ; $418a : $f0, $03

	jmp !@nextSndChn                                                          ; $418c : $5f, $f1, $40

@afterSndChns:
; now loop for the 8 actual hardware sound channels
	mov X, #$00                                                               ; $418f : $cd, $00
	mov Y, #PITCH_L                                                           ; $4191 : $8d, $02

@nextHwSndChn:
; If bit 1 clear (no sound effects), jump to get music data
	push X                                                                    ; $4193 : $4d
	mov A, wMusicAndSEControl+X                                               ; $4194 : $f4, $3d
	and A, #CHN_USES_SE                                                       ; $4196 : $28, $02
	beq @useMusic                                                             ; $4198 : $f0, $07

; X += 8 to use sound effect data
	mov A, X                                                                  ; $419a : $7d
	clrc                                                                      ; $419b : $60
	adc A, #$08                                                               ; $419c : $88, $08
	mov X, A                                                                  ; $419e : $5d
	bra @updatePitch                                                          ; $419f : $2f, $06

@useMusic:
; If bit 0 clear (no music), skip channel
	mov A, wMusicAndSEControl+X                                               ; $41a1 : $f4, $3d
	and A, #CHN_USES_MUSIC                                                    ; $41a3 : $28, $01
	beq @toNextHwSndChn                                                       ; $41a5 : $f0, $0c

@updatePitch:
; Write to pitch low then high
	mov DSP_REG_ADDR, Y                                                       ; $41a7 : $cb, $f2
	mov A, wFinalMusicAndSEPitchLow+X                                         ; $41a9 : $f4, $6d
	mov DSP_REG_DATA, A                                                       ; $41ab : $c4, $f3

	inc DSP_REG_ADDR                                                          ; $41ad : $ab, $f2
	mov A, wFinalMusicAndSEPitchHigh+X                                        ; $41af : $f4, $7d
	mov DSP_REG_DATA, A                                                       ; $41b1 : $c4, $f3

@toNextHwSndChn:
; Y += $10 to next hw channel
	mov A, Y                                                                  ; $41b3 : $dd
	clrc                                                                      ; $41b4 : $60
	adc A, #$10                                                               ; $41b5 : $88, $10
	mov Y, A                                                                  ; $41b7 : $fd

; X += 1 until all 8 channels done
	pop X                                                                     ; $41b8 : $ce
	inc X                                                                     ; $41b9 : $3d
	cmp X, #$08                                                               ; $41ba : $c8, $08
	bne @nextHwSndChn                                                         ; $41bc : $d0, $d5

	ret                                                                       ; $41be : $6f


; X - sound channel for music/sound effects
CalcSndChnXsBasePitch:
; Preserve sound channel
	push X                                                                    ; $41bf : $4d
	mov wPreservedSndChn, X                                                   ; $41c0 : $d8, $11

; Div to get octave and note in octave
	mov A, !wMusicAndSENote+X                                                 ; $41c2 : $f5, $43, $07
	mov Y, #$00                                                               ; $41c5 : $8d, $00
	mov X, #$0c                                                               ; $41c7 : $cd, $0c
	div YA, X                                                                 ; $41c9 : $9e

; Get octave later in Y, then pitch value for note in A$10
	push A                                                                    ; $41ca : $2d
	mov A, !NotePitchesLo+Y                                                   ; $41cb : $f6, $62, $43
	mov wNotePitchLo, A                                                       ; $41ce : $c4, $10
	mov A, !NotePitchesHi+Y                                                   ; $41d0 : $f6, $6e, $43
	pop Y                                                                     ; $41d3 : $ee
	beq @afterNotePitchGot                                                    ; $41d4 : $f0, $08

; 0 means normal, other octaves mean actual octave = 8-x
@nextOctaveShift:
	lsr A                                                                     ; $41d6 : $5c
	ror wNotePitchLo                                                          ; $41d7 : $6b, $10
	inc Y                                                                     ; $41d9 : $fc
	cmp Y, #$08                                                               ; $41da : $ad, $08
	bne @nextOctaveShift                                                      ; $41dc : $d0, $f8

@afterNotePitchGot:
; Save pitch for channel
	mov X, wPreservedSndChn                                                   ; $41de : $f8, $11
	mov wBaseMusicAndSEPitchHigh+X,A                                          ; $41e0 : $d4, $5d

	mov A, wNotePitchLo                                                       ; $41e2 : $e4, $10
	mov wBaseMusicAndSEPitchLow+X,A                                           ; $41e4 : $d4, $4d

; Save lo*hi
	mov A, !wMusicAndSEMultPerNewNoteLo+X                                     ; $41e6 : $f5, $a3, $08
	mov Y, wBaseMusicAndSEPitchHigh+X                                         ; $41e9 : $fb, $5d
	mul YA                                                                    ; $41eb : $cf
	movw wTotalPerNotePitchMult, YA                                           ; $41ec : $da, $12

; Save high of lo*lo (to be low later)
	mov A, !wMusicAndSEMultPerNewNoteLo+X                                     ; $41ee : $f5, $a3, $08
	mov Y, wBaseMusicAndSEPitchLow+X                                          ; $41f1 : $fb, $4d
	mul YA                                                                    ; $41f3 : $cf
	push Y                                                                    ; $41f4 : $6d

; Add on hi*lo to above lo*hi
	mov A, !wMusicAndSEMultPerNewNoteHi+X                                     ; $41f5 : $f5, $93, $08
	mov Y, wBaseMusicAndSEPitchLow+X                                          ; $41f8 : $fb, $4d
	mul YA                                                                    ; $41fa : $cf
	addw YA, wTotalPerNotePitchMult                                           ; $41fb : $7a, $12
	movw wTotalPerNotePitchMult, YA                                           ; $41fd : $da, $12

; Y (to add to high) = <hi*hi, A (to add to low) = >(lo*lo)
	mov A, !wMusicAndSEMultPerNewNoteHi+X                                     ; $41ff : $f5, $93, $08
	mov Y, wBaseMusicAndSEPitchHigh+X                                         ; $4202 : $fb, $5d
	mul YA                                                                    ; $4204 : $cf
	mov Y, A                                                                  ; $4205 : $fd
	pop A                                                                     ; $4206 : $ae

; Add to get base pitch
	addw YA, wTotalPerNotePitchMult                                           ; $4207 : $7a, $12
	mov wBaseMusicAndSEPitchLow+X,A                                           ; $4209 : $d4, $4d
	mov wBaseMusicAndSEPitchHigh+X,Y                                          ; $420b : $db, $5d
	pop X                                                                     ; $420d : $ce
	ret                                                                       ; $420e : $6f


; A - src num
; X - curr snd channel
AssignSampleToSndChannel:
	mov wPreservedSrcNum, A                                                   ; $420f : $c4, $10

; If X is a sound effect, X = the music idx (-8)
	mov A, X                                                                  ; $4211 : $7d
	cmp A, #$08                                                               ; $4212 : $68, $08
	bcc +                                                                     ; $4214 : $90, $03

	setc                                                                      ; $4216 : $80
	sbc A, #$08                                                               ; $4217 : $a8, $08

; Put in high nybble, +SCRN to get the source num for the channel
+	xcn A                                                                     ; $4219 : $9f
	clrc                                                                      ; $421a : $60
	adc A, #SCRN                                                              ; $421b : $88, $04
	mov DSP_REG_ADDR, A                                                       ; $421d : $c4, $f2

; Y = 4*src num (SampleMetadata.sizeof), set the channel's src num
	mov A, wPreservedSrcNum                                                   ; $421f : $e4, $10
	mov DSP_REG_DATA, wPreservedSrcNum                                        ; $4221 : $fa, $10, $f3
	asl A                                                                     ; $4224 : $1c
	asl A                                                                     ; $4225 : $1c
	mov Y, A                                                                  ; $4226 : $fd

; Set channel's ADSR_1
	mov A, !wSamplesMetadata.adsr_1+Y                                         ; $4227 : $f6, $d2, $08
	inc DSP_REG_ADDR                                                          ; $422a : $ab, $f2
	mov DSP_REG_DATA, A                                                       ; $422c : $c4, $f3

; Set channel's ADSR_2
	mov A, !wSamplesMetadata.adsr_2+Y                                         ; $422e : $f6, $d3, $08
	inc DSP_REG_ADDR                                                          ; $4231 : $ab, $f2
	mov DSP_REG_DATA, A                                                       ; $4233 : $c4, $f3

; Set channel's pitch mult against each note
	mov A, !wSamplesMetadata.pitchMultHi+Y                                    ; $4235 : $f6, $d4, $08
	mov !wMusicAndSEMultPerNewNoteHi+X, A                                     ; $4238 : $d5, $93, $08
	mov A, !wSamplesMetadata.pitchMultLo+Y                                    ; $423b : $f6, $d5, $08
	mov !wMusicAndSEMultPerNewNoteLo+X, A                                     ; $423e : $d5, $a3, $08
	ret                                                                       ; $4241 : $6f


ResetSoundRegs:
; Disable timers and set FLG to reset/disable everything
	mov A, #$00                                                               ; $4242 : $e8, $00
	mov CTRL_REG, A                                                           ; $4244 : $c4, $f1
	mov DSP_REG_ADDR, #FLG                                                    ; $4246 : $8f, $6c, $f2
	mov DSP_REG_DATA, #_RESET|_MUTE|_ECHO_DISABLE                             ; $4249 : $8f, $e0, $f3

; Loop to set non-channel-specific hardware regs
	mov X, #$00                                                               ; $424c : $cd, $00

@nextReg:
; End once $ff read
	mov A, !InitialNonChnDSPRegData+X                                         ; $424e : $f5, $2b, $43
	cmp A, #$ff                                                               ; $4251 : $68, $ff
	beq @clearEchoRegs                                                        ; $4253 : $f0, $0b

; Else set addr from 1st byte, and data from 2nd byte
	mov DSP_REG_ADDR, A                                                       ; $4255 : $c4, $f2
	inc X                                                                     ; $4257 : $3d
	mov A, !InitialNonChnDSPRegData+X                                         ; $4258 : $f5, $2b, $43
	mov DSP_REG_DATA, A                                                       ; $425b : $c4, $f3
	inc X                                                                     ; $425d : $3d
	bra @nextReg                                                              ; $425e : $2f, $ee

@clearEchoRegs:
; Clear echo data addr, and delay reg
	mov DSP_REG_ADDR, #ESA                                                    ; $4260 : $8f, $6d, $f2
	mov DSP_REG_DATA, #$00                                                    ; $4263 : $8f, $00, $f3
	mov DSP_REG_ADDR, #EDL                                                    ; $4266 : $8f, $7d, $f2
	mov DSP_REG_DATA, #$00                                                    ; $4269 : $8f, $00, $f3

; X = x0 dsp reg for channel x
	mov X, #$00                                                               ; $426c : $cd, $00

@nextSndChn:
; Y = idx of of dsp reg
	mov Y, #$00                                                               ; $426e : $8d, $00

@nextChnDspReg:
; Set dsp reg to 0-7, and data to 1 of 8 bytes in table based on reg
	mov DSP_REG_ADDR, X                                                       ; $4270 : $d8, $f2
	mov A, !InitialChnDSPRegData+Y                                            ; $4272 : $f6, $23, $43
	mov DSP_REG_DATA, A                                                       ; $4275 : $c4, $f3
	inc Y                                                                     ; $4277 : $fc
	inc X                                                                     ; $4278 : $3d
	cmp Y, #$08                                                               ; $4279 : $ad, $08
	bne @nextChnDspReg                                                        ; $427b : $d0, $f3

; To next sound channel, ending when A = $80 (past the last channel's pitch)
	mov A, X                                                                  ; $427d : $7d
	and A, #$f0                                                               ; $427e : $28, $f0
	clrc                                                                      ; $4280 : $60
	adc A, #$10                                                               ; $4281 : $88, $10
	mov X, A                                                                  ; $4283 : $5d
	cmp A, #$80                                                               ; $4284 : $68, $80
	bne @nextSndChn                                                           ; $4286 : $d0, $e6

;
	mov TIMER_0, #$80                                                  ; $4288 : $8f, $80, $fa
	mov CTRL_REG, #_CTRL_TIMER_0                                                 ; $428b : $8f, $01, $f1

;
	mov X, #$0f                                                  ; $428e : $cd, $0f
-	mov A, COUNTER_0                                                  ; $4290 : $e4, $fd
	beq -                                                  ; $4292 : $f0, $fc
	dec X                                                  ; $4294 : $1d
	bne -                                                  ; $4295 : $d0, $f9

; Clear timers, and set FLG just to initially disable echo
	mov CTRL_REG, #$00                                                        ; $4297 : $8f, $00, $f1

	mov DSP_REG_ADDR, #FLG                                                    ; $429a : $8f, $6c, $f2
	mov A, #_ECHO_DISABLE                                                     ; $429d : $e8, $20
	mov DSP_REG_DATA, A                                                       ; $429f : $c4, $f3
	mov !wFlagDSPReg, A                                                       ; $42a1 : $c5, $ce, $08

; Set mvol and evol regs
	mov A, #$70                                                               ; $42a4 : $e8, $70
	mov !wMvol, A                                                             ; $42a6 : $c5, $c3, $08
	call !SetDspMVOL                                                          ; $42a9 : $3f, $b4, $3f

	mov A, #$54                                                               ; $42ac : $e8, $54
	call !SetBaseEvolFromMvol                                                 ; $42ae : $3f, $0a, $3a

; Set echo+coef-related regs
	mov A, #$50                                                               ; $42b1 : $e8, $50
	mov !wEchoFeedback, A                                                     ; $42b3 : $c5, $c8, $08
	mov A, #$00                                                               ; $42b6 : $e8, $00
	mov !w8COEFValsIdx, A                                                     ; $42b8 : $c5, $c7, $08
	mov A, #$00                                                               ; $42bb : $e8, $00
	mov !wEchoDelay, A                                                        ; $42bd : $c5, $c9, $08
	call !SetDspCOEF                                                          ; $42c0 : $3f, $c2, $3f
	ret                                                                       ; $42c3 : $6f


SetupNewValsForEchoRegs:
; Clear echo enable and volume regs
	mov A, #$00                                                               ; $42c4 : $e8, $00
	mov DSP_REG_ADDR, #EON                                                    ; $42c6 : $8f, $4d, $f2
	mov DSP_REG_DATA, A                                                       ; $42c9 : $c4, $f3
	mov DSP_REG_ADDR, #EVOL_R                                                 ; $42cb : $8f, $3c, $f2
	mov DSP_REG_DATA, A                                                       ; $42ce : $c4, $f3
	mov DSP_REG_ADDR, #EVOL_L                                                 ; $42d0 : $8f, $2c, $f2
	mov DSP_REG_DATA, A                                                       ; $42d3 : $c4, $f3

; Set flag to disable echo buffer being written to
	mov A, !wFlagDSPReg                                                       ; $42d5 : $e5, $ce, $08
	or A, #_ECHO_DISABLE                                                      ; $42d8 : $08, $20
	mov DSP_REG_ADDR, #FLG                                                    ; $42da : $8f, $6c, $f2
	mov DSP_REG_DATA, A                                                       ; $42dd : $c4, $f3

; Update echo delay
	mov DSP_REG_ADDR, #EDL                                                    ; $42df : $8f, $7d, $f2
	mov A, !wEchoDelay                                                        ; $42e2 : $e5, $c9, $08
	mov DSP_REG_DATA, A                                                       ; $42e5 : $c4, $f3

; Clear echo src addr if no delay being set
	mov DSP_REG_ADDR, #ESA                                                    ; $42e7 : $8f, $6d, $f2
	mov A, !wEchoDelay                                                        ; $42ea : $e5, $c9, $08
	bne @hasDelay                                                             ; $42ed : $d0, $04

	mov DSP_REG_DATA, #$00                                                    ; $42ef : $8f, $00, $f3
	ret                                                                       ; $42f2 : $6f

@hasDelay:
; A = -8 * delay (as every +1 delay uses up $800 bytes)
	asl A                                                                     ; $42f3 : $1c
	asl A                                                                     ; $42f4 : $1c
	asl A                                                                     ; $42f5 : $1c
	eor A, #$ff                                                               ; $42f6 : $48, $ff
	inc A                                                                     ; $42f8 : $bc

; Use as echo buffer area at the end of ram
	mov DSP_REG_DATA, A                                                       ; $42f9 : $c4, $f3
	mov wEchoBufferAddr+1, A                                                  ; $42fb : $c4, $19
	mov wEchoBufferAddr, #$00                                                 ; $42fd : $8f, $00, $18

; X = delay * 8 (num pages to clear)
	mov A, !wEchoDelay                                                        ; $4300 : $e5, $c9, $08
	asl A                                                                     ; $4303 : $1c
	asl A                                                                     ; $4304 : $1c
	asl A                                                                     ; $4305 : $1c
	mov X, A                                                                  ; $4306 : $5d

@nextPage:
; Clear $100 bytes for the echo buffer
	mov Y, #$00                                                               ; $4307 : $8d, $00
	mov A, #$00                                                               ; $4309 : $e8, $00

-	mov [wEchoBufferAddr]+Y, A                                                ; $430b : $d7, $18
	inc Y                                                                     ; $430d : $fc
	bne -                                                                     ; $430e : $d0, $fb

	inc wEchoBufferAddr+1                                                     ; $4310 : $ab, $19
	dec X                                                                     ; $4312 : $1d
	bne @nextPage                                                             ; $4313 : $d0, $f2

; No reset, no mute, allow echo to write to external ram
	mov A, !wFlagDSPReg                                                       ; $4315 : $e5, $ce, $08
	and A, #$ff-(_RESET|_MUTE|_ECHO_DISABLE)                                  ; $4318 : $28, $1f
	mov !wFlagDSPReg, A                                                       ; $431a : $c5, $ce, $08
	mov DSP_REG_ADDR, #FLG                                                    ; $431d : $8f, $6c, $f2
	mov DSP_REG_DATA, A                                                       ; $4320 : $c4, $f3
	ret                                                                       ; $4322 : $6f


InitialChnDSPRegData:
; vol l, vol r, pitch l, pitch h, src num, adsr 1, adsr 2, gain
	.db $00, $00, $00, $10, $00, $ff, $ff, $00


InitialNonChnDSPRegData:
	.db MVOL_R, $00
	.db MVOL_L, $00
	.db KON, $00
	.db KOF, $00
	.db PMON, $00
	.db NON, $00
	.db DIR, >wSourceDir
	.db EON, $00
	.db EFB, $00
	.db EVOL_R, $00
	.db EVOL_L, $00
	.db $ff


MusicBitfieldMap:
	.db $01, $02, $04, $08, $10, $20, $40, $80


SoundEffectBitfieldMap:
	.db $01, $02, $04, $08, $10, $20, $40, $80


MusicBitmaskMap:
	.db $fe, $fd, $fb, $f7, $ef, $df, $bf, $7f


SoundEffectBitmaskMap:
	.db $fe, $fd, $fb, $f7, $ef, $df, $bf, $7f


NotePitchesLo:
	.db <$217d
	.db <$237b
	.db <$2597
	.db <$27d3
	.db <$2a31
	.db <$2cb3
	.db <$2f5c
	.db <$322d
	.db <$3529
	.db <$3852
	.db <$3bab
	.db <$3f38


NotePitchesHi:
	.db >$217d
	.db >$237b
	.db >$2597
	.db >$27d3
	.db >$2a31
	.db >$2cb3
	.db >$2f5c
	.db >$322d
	.db >$3529
	.db >$3852
	.db >$3bab
	.db >$3f38


Data_437a:
	.dw $0300                                                  ; $437a : $00, $03
	or A, (X)                                                  ; $437c : $06
	or $10, $0d                                                  ; $437d : $09, $0d, $10
	bbc $16.0, br_00_439c                                                  ; $4380 : $13, $16, $19

	asl A                                                  ; $4383 : $1c
	jmp [!Jump_00_2522+X]                                                  ; $4384 : $1f, $22, $25


	and A, #$2b                                                  ; $4387 : $28, $2b
	cbne $31, br_00_43c0                                                  ; $4389 : $2e, $31, $34

	and A, [$3a]+Y                                                  ; $438c : $37, $3a
	rol A                                                  ; $438e : $3c
	call !$4442                                                  ; $438f : $3f, $42, $44
	eor A, [$4a+X]                                                  ; $4392 : $47, $4a
	lsr !$514f                                                  ; $4394 : $4c, $4f, $51
	bbc $56.2, br_00_43f2                                                  ; $4397 : $53, $56, $58

	cmpw YA, $5d                                                  ; $439a : $5a, $5d

br_00_439c:
	jmp !$6361                                                  ; $439c : $5f, $61, $63


	cmp A, !$6867                                                  ; $439f : $65, $67, $68
	and1 c, /$0d6c.3                                                  ; $43a2 : $6a, $6c, $6d
	ret                                                  ; $43a5 : $6f


	tcall 7                                                  ; $43a6 : $71
	clr1 $73.3                                                  ; $43a7 : $72, $73
	cmp A, !$7776+X                                                  ; $43a9 : $75, $76, $77
	cmp $7a, #$79                                                  ; $43ac : $78, $79, $7a
	ror $7c+X                                                  ; $43af : $7b, $7c
	ror A                                                  ; $43b1 : $7c
	mov A, X                                                  ; $43b2 : $7d
	mov A, X                                                  ; $43b3 : $7d
	cmp Y, $7e                                                  ; $43b4 : $7e, $7e
	reti                                                  ; $43b6 : $7f


	reti                                                  ; $43b7 : $7f


	reti                                                  ; $43b8 : $7f


	reti                                                  ; $43b9 : $7f


	reti                                                  ; $43ba : $7f


	reti                                                  ; $43bb : $7f


	reti                                                  ; $43bc : $7f


	reti                                                  ; $43bd : $7f


	cmp Y, $7e                                                  ; $43be : $7e, $7e

br_00_43c0:
	mov A, X                                                  ; $43c0 : $7d
	mov A, X                                                  ; $43c1 : $7d
	ror A                                                  ; $43c2 : $7c
	ror A                                                  ; $43c3 : $7c
	ror $7a+X                                                  ; $43c4 : $7b, $7a
	cmp (X), (Y)                                                  ; $43c6 : $79
	cmp $76, #$77                                                  ; $43c7 : $78, $77, $76
	cmp A, !$7273+X                                                  ; $43ca : $75, $73, $72
	tcall 7                                                  ; $43cd : $71
	ret                                                  ; $43ce : $6f


	push Y                                                  ; $43cf : $6d
	ror !$686a                                                  ; $43d0 : $6c, $6a, $68
	cmp A, [$65+X]                                                  ; $43d3 : $67, $65
	bbs $61.3, $5f                                                  ; $43d5 : $63, $61, $5f

	mov X, A                                                  ; $43d8 : $5d
	cmpw YA, $58                                                  ; $43d9 : $5a, $58
	eor A, !$5153+Y                                                  ; $43db : $56, $53, $51
	pcall $4c                                                  ; $43de : $4f, $4c
	and1 c, $0447.2                                                  ; $43e0 : $4a, $47, $44
	set1 $3f.2                                                  ; $43e3 : $42, $3f
	rol A                                                  ; $43e5 : $3c
	incw $37                                                  ; $43e6 : $3a, $37
	and A, $31+X                                                  ; $43e8 : $34, $31
	cbne $2b, $28                                                  ; $43ea : $2e, $2b, $28

	and A, !$1f22                                                  ; $43ed : $25, $22, $1f
	asl A                                                  ; $43f0 : $1c
	or (X), (Y)                                                  ; $43f1 : $19

br_00_43f2:
	or A, !$1013+Y                                                  ; $43f2 : $16, $13, $10
	push PSW                                                  ; $43f5 : $0d
	or $03, $06                                                  ; $43f6 : $09, $06, $03
	nop                                                  ; $43f9 : $00
