.include "includes.s"

.bank 0 slot 1
.org 0

Begin:
; Dir page = 0, SP = $ff
	clrp                                                  ; $0300 : $20
	mov X, #$ff                                                  ; $0301 : $cd, $ff
	mov SP, X                                                  ; $0303 : $bd

; Clear zpage
	mov A, #$00                                                  ; $0304 : $e8, $00
	mov X, #$ef                                                  ; $0306 : $cd, $ef
-	mov (X), A                                                  ; $0308 : $c6
	dec X                                                  ; $0309 : $1d
	bne -                                                  ; $030a : $d0, $fc

; For $10 sound channels (8 music, then 8 sound effects), clear them
	mov X, #$0f                                                  ; $030c : $cd, $0f
-	mov A, #$00                                                  ; $030e : $e8, $00
	mov wMusicAndSEControl+X,A                                                  ; $0310 : $d4, $3d
	call !InitSndChnX                                                  ; $0312 : $3f, $30, $3f
	dec X                                                  ; $0315 : $1d
	bpl -                                                  ; $0316 : $10, $f6

;
	mov X, #$07                                                  ; $0318 : $cd, $07
	mov A, #$00                                                  ; $031a : $e8, $00
-	mov !$00ae+X, A                                                  ; $031c : $d5, $ae, $00
	dec X                                                  ; $031f : $1d
	bpl -                                                  ; $0320 : $10, $fa

;
	mov !$08d1, A                                                  ; $0322 : $c5, $d1, $08
	call !Func_4242                                                  ; $0325 : $3f, $42, $42
	mov A, #$ff                                                  ; $0328 : $e8, $ff
	mov !$08cc, A                                                  ; $032a : $c5, $cc, $08
	mov A, #$ff                                                  ; $032d : $e8, $ff
	mov !$08cd, A                                                  ; $032f : $c5, $cd, $08
	mov A, #$ff                                                  ; $0332 : $e8, $ff
	mov !$08ca, A                                                  ; $0334 : $c5, $ca, $08
	mov A, #$00                                                  ; $0337 : $e8, $00
	mov $b9, A                                                  ; $0339 : $c4, $b9
	mov $b7, A                                                  ; $033b : $c4, $b7
	mov $b6, A                                                  ; $033d : $c4, $b6
	mov $a1, A                                                  ; $033f : $c4, $a1
	mov $a2, A                                                  ; $0341 : $c4, $a2
	mov $a5, A                                                  ; $0343 : $c4, $a5
	mov $a6, A                                                  ; $0345 : $c4, $a6
	mov $a3, A                                                  ; $0347 : $c4, $a3
	mov $a4, A                                                  ; $0349 : $c4, $a4
	mov $a0, A                                                  ; $034b : $c4, $a0
	mov $95, A                                                  ; $034d : $c4, $95
	mov $96, A                                                  ; $034f : $c4, $96
	mov !$08d0, A                                                  ; $0351 : $c5, $d0, $08
	mov A, #$ff                                                  ; $0354 : $e8, $ff
	mov $9a, A                                                  ; $0356 : $c4, $9a
	mov $a7, A                                                  ; $0358 : $c4, $a7
	mov A, #$04                                                  ; $035a : $e8, $04
	mov !$08cb, A                                                  ; $035c : $c5, $cb, $08

; Set key off for each voice, to slowly fade them out
	mov DSP_REG_ADDR, #KOF                                                    ; $035f : $8f, $5c, $f2
	mov DSP_REG_DATA, #$ff                                                    ; $0362 : $8f, $ff, $f3

; Wait a bit, then disable key off
	mov Y, #$40                                                               ; $0365 : $8d, $40
-	dbnz Y, -                                                                 ; $0367 : $fe, $fe

	mov DSP_REG_DATA, #$00                                                    ; $0369 : $8f, $00, $f3

; Send signal to SNES that we're done with the init routine
	mov PORT_0, #$ab                                                          ; $036c : $8f, $ab, $f4
	mov PORT_1, #$cd                                                          ; $036f : $8f, $cd, $f5

; Wait until SNES tells us they've received the signal
-	cmp PORT_2, #$67                                                          ; $0372 : $78, $67, $f6
	bne -                                                                     ; $0375 : $d0, $fb
-	cmp PORT_3, #$89                                                          ; $0377 : $78, $89, $f7
	bne -                                                                     ; $037a : $d0, $fb

; Reset active timers, set timer 1, then start timer 1
	mov CTRL_REG, #$80                                                        ; $037c : $8f, $80, $f1
	mov TIMER_1, #$7d                                                         ; $037f : $8f, $7d, $fb
	mov CTRL_REG, #$80|_CTRL_TIMER_1                                          ; $0382 : $8f, $82, $f1

WaitForSNESthenNextSndCmd:
	call !WaitUntilSNESReady                                                  ; $0385 : $3f, $ee, $05

NextSndCommand:
@loop_0388:
	bbc $9b.0, @cont_039f                                                  ; $0388 : $13, $9b, $14

;
	mov A, COUNTER_0                                                  ; $038b : $e4, $fd
	beq @cont_039f                                                  ; $038d : $f0, $10

	mov $1c, A                                                  ; $038f : $c4, $1c
	mov X, !$08d0                                                  ; $0391 : $e9, $d0, $08
	beq @brLoop_0398                                                  ; $0394 : $f0, $02

	asl $1c                                                  ; $0396 : $0b, $1c

@brLoop_0398:
	call !Func_35fb                                                  ; $0398 : $3f, $fb, $35
	dec $1c                                                  ; $039b : $8b, $1c
	bne @brLoop_0398                                                  ; $039d : $d0, $f9

@cont_039f:
;
	mov A, COUNTER_1                                                  ; $039f : $e4, $fe
	beq +                                                  ; $03a1 : $f0, $03
	call !Func_3c3e                                                  ; $03a3 : $3f, $3e, $3c

; To proceed, 2 should be a non-0 command, and 3 should be 0
+	mov A, PORT_2                                                  ; $03a6 : $e4, $f6
	beq @loop_0388                                                  ; $03a8 : $f0, $de

	cmp A, PORT_3                                                  ; $03aa : $64, $f7
	bne @loop_0388                                                  ; $03ac : $d0, $da

; Commands go from 1 to $21
	cmp A, #$22                                                  ; $03ae : $68, $22
	bcs @brLoop_0398                                                  ; $03b0 : $b0, $e6

; Jump for 1-indexed command
	dec A                                                  ; $03b2 : $9c
	asl A                                                  ; $03b3 : $1c
	mov X, A                                                  ; $03b4 : $5d
	jmp [!@cmdHandlers+X]                                                  ; $03b5 : $1f, $b8, $03

@cmdHandlers:
	.dw CommandHandler01h
	.dw CommandHandler02h
	.dw CommandHandler03h
	.dw CommandHandler04h
	.dw CommandHandler05h
	.dw CommandHandler06h
	.dw CommandHandler07h
	.dw CommandHandler08h
	.dw CommandHandler09h
	.dw CommandHandler0ah
	.dw CommandHandler0bh
	.dw CommandHandler0ch
	.dw CommandHandler0dh
	.dw CommandHandler0eh
	.dw CommandHandler0fh
	.dw CommandHandler10h
	.dw CommandHandler11h
	.dw CommandHandler12h
	.dw CommandHandler13h
	.dw CommandHandler14h_LoadFullSample
	.dw CommandHandler15h
	.dw CommandHandler16h
	.dw CommandHandler17h
	.dw CommandHandler18h
	.dw CommandHandler19h
	.dw CommandHandler1ah
	.dw CommandHandler1bh
	.dw CommandHandler1ch
	.dw CommandHandler1dh_LoadSampleHeader
	.dw CommandHandler1eh
	.dw CommandHandler1fh
	.dw CommandHandler20h
	.dw CommandHandler21h


CommandHandler02h:
	clr1 $9b.3                                                  ; $03fa : $72, $9b
	clr1 $9b.2                                                  ; $03fc : $52, $9b
	mov A, #$ff                                                  ; $03fe : $e8, $ff
	mov !$08ca, A                                                  ; $0400 : $c5, $ca, $08
	jmp !Func_3560                                                  ; $0403 : $5f, $60, $35


CommandHandler03h:
	call !_CommandHandler03h                                                  ; $0406 : $3f, $45, $36
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0409 : $5f, $85, $03


CommandHandler0ah:
	mov Y, #$01                                                  ; $040c : $8d, $01
	mov A, #$00                                                  ; $040e : $e8, $00
	mov X, PORT_0                                                  ; $0410 : $f8, $f4
	div YA, X                                                  ; $0412 : $9e
	mov !$08cb, A                                                  ; $0413 : $c5, $cb, $08
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0416 : $5f, $85, $03


CommandHandler06h:
	set1 $9b.2                                                  ; $0419 : $42, $9b
	clr1 $9b.3                                                  ; $041b : $72, $9b
	jmp !WaitForSNESthenNextSndCmd                                                  ; $041d : $5f, $85, $03


CommandHandler07h:
	set1 $9b.3                                                  ; $0420 : $62, $9b
	clr1 $9b.2                                                  ; $0422 : $52, $9b
	mov A, #$00                                                  ; $0424 : $e8, $00
	mov !$08ca, A                                                  ; $0426 : $c5, $ca, $08
	jmp !Func_3560                                                  ; $0429 : $5f, $60, $35


CommandHandler08h:
	mov PORT_0, $8d                                                  ; $042c : $fa, $8d, $f4
	mov PORT_1, $a0                                                  ; $042f : $fa, $a0, $f5
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0432 : $5f, $85, $03


CommandHandler09h:
	mov A, PORT_0                                                  ; $0435 : $e4, $f4
	mov !$08c3, A                                                  ; $0437 : $c5, $c3, $08
	call !Call_00_3fb4                                                  ; $043a : $3f, $b4, $3f
	jmp !WaitForSNESthenNextSndCmd                                                  ; $043d : $5f, $85, $03


CommandHandler0bh:
	mov A, PORT_0                                                  ; $0440 : $e4, $f4
	mov !$08cc, A                                                  ; $0442 : $c5, $cc, $08
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0445 : $5f, $85, $03


CommandHandler0ch:
	mov A, PORT_0                                                  ; $0448 : $e4, $f4
	mov !$08cd, A                                                  ; $044a : $c5, $cd, $08
	jmp !WaitForSNESthenNextSndCmd                                                  ; $044d : $5f, $85, $03


CommandHandler0dh:
	mov A, PORT_0                                                  ; $0450 : $e4, $f4
	mov $99, A                                                  ; $0452 : $c4, $99
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0454 : $5f, $85, $03


CommandHandler18h:
	mov A, $99                                                  ; $0457 : $e4, $99
	mov PORT_0, A                                                  ; $0459 : $c4, $f4
	jmp !WaitForSNESthenNextSndCmd                                                  ; $045b : $5f, $85, $03


CommandHandler1ah:
	mov A, PORT_0                                                  ; $045e : $e4, $f4
	mov X, PORT_1                                                  ; $0460 : $f8, $f5
	mov !$0723+X, A                                                  ; $0462 : $d5, $23, $07
	call !Func_3ffd                                                  ; $0465 : $3f, $fd, $3f
	jmp !NextSndCommand                                                  ; $0468 : $5f, $88, $03


CommandHandler1bh:
	mov A, PORT_1                                                  ; $046b : $e4, $f5
	clrc                                                  ; $046d : $60
	adc A, #$08                                                  ; $046e : $88, $08
	mov X, A                                                  ; $0470 : $5d
	mov A, PORT_0                                                  ; $0471 : $e4, $f4
	mov !$0723+X, A                                                  ; $0473 : $d5, $23, $07
	call !Func_3ffd                                                  ; $0476 : $3f, $fd, $3f
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0479 : $5f, $85, $03


CommandHandler0eh:
	call !Func_4242                                                  ; $047c : $3f, $42, $42
	jmp !WaitForSNESthenNextSndCmd                                                  ; $047f : $5f, $85, $03


CommandHandler0fh:
	mov PORT_0, $9b                                                  ; $0482 : $fa, $9b, $f4
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0485 : $5f, $85, $03


CommandHandler10h:
	mov $9a, PORT_0                                                  ; $0488 : $fa, $f4, $9a
	jmp !WaitForSNESthenNextSndCmd                                                  ; $048b : $5f, $85, $03


CommandHandler11h:
	movw YA, PORT_0                                                  ; $048e : $ba, $f4
	movw $9c, YA                                                  ; $0490 : $da, $9c
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0492 : $5f, $85, $03


CommandHandler13h:
	mov A, PORT_0                                                  ; $0495 : $e4, $f4
	asl A                                                  ; $0497 : $1c
	asl A                                                  ; $0498 : $1c
	mov $9e, A                                                  ; $0499 : $c4, $9e
	jmp !WaitForSNESthenNextSndCmd                                                  ; $049b : $5f, $85, $03


CommandHandler15h:
	mov A, !$08d0                                                  ; $049e : $e5, $d0, $08
	eor A, #$ff                                                  ; $04a1 : $48, $ff
	mov !$08d0, A                                                  ; $04a3 : $c5, $d0, $08
	jmp !WaitForSNESthenNextSndCmd                                                  ; $04a6 : $5f, $85, $03


CommandHandler14h_LoadFullSample:
	call !LoadSNESSampleHeader                                                  ; $04a9 : $3f, $b8, $04
	call !WaitUntilSNESReady                                                  ; $04ac : $3f, $ee, $05
	jmp !LoadInSNESSampleData                                                  ; $04af : $5f, $ba, $05


CommandHandler1dh_LoadSampleHeader:
	call !LoadSNESSampleHeader                                                  ; $04b2 : $3f, $b8, $04
	jmp !WaitForSNESthenNextSndCmd                                                  ; $04b5 : $5f, $85, $03


; todo: 9e is sample idx, 9c.w is sample location
LoadSNESSampleHeader:
	call !WaitUntilSNESReady                                                  ; $04b8 : $3f, $ee, $05

; While SNES is looping through its bytes, copy the 8 bytes to
; 08,09,04,05,8d2-8d5 offset by 9e
	mov Y, #$08                                                  ; $04bb : $8d, $08
	call !GetNextOfSNES8bytes                                                  ; $04bd : $3f, $17, $05
	mov $08, A                                                  ; $04c0 : $c4, $08
	call !GetNextOfSNES8bytes                                                  ; $04c2 : $3f, $17, $05
	mov $09, A                                                  ; $04c5 : $c4, $09
	call !GetNextOfSNES8bytes                                                  ; $04c7 : $3f, $17, $05
	mov $04, A                                                  ; $04ca : $c4, $04
	call !GetNextOfSNES8bytes                                                  ; $04cc : $3f, $17, $05
	mov $05, A                                                  ; $04cf : $c4, $05
	mov X, $9e                                                  ; $04d1 : $f8, $9e
	call !GetNextOfSNES8bytes                                                  ; $04d3 : $3f, $17, $05
	mov !$08d2+X, A                                                  ; $04d6 : $d5, $d2, $08
	call !GetNextOfSNES8bytes                                                  ; $04d9 : $3f, $17, $05
	mov !$08d3+X, A                                                  ; $04dc : $d5, $d3, $08
	call !GetNextOfSNES8bytes                                                  ; $04df : $3f, $17, $05
	mov !$08d4+X, A                                                  ; $04e2 : $d5, $d4, $08
	call !GetNextOfSNES8bytes                                                  ; $04e5 : $3f, $17, $05
	mov !$08d5+X, A                                                  ; $04e8 : $d5, $d5, $08

; 9c is dest low byte, 200+x = sample start/loop in DIR
	mov A, $9c                                                  ; $04eb : $e4, $9c
	mov !$0200+X, A                                                  ; $04ed : $d5, $00, $02
	mov $0c, A                                                  ; $04f0 : $c4, $0c
	clrc                                                  ; $04f2 : $60
	adc A, $08                                                  ; $04f3 : $84, $08
	mov $9c, A                                                  ; $04f5 : $c4, $9c

; 9d is dest high byte
	mov A, $9d                                                  ; $04f7 : $e4, $9d
	mov !$0201+X, A                                                  ; $04f9 : $d5, $01, $02
	mov $0d, A                                                  ; $04fc : $c4, $0d
	adc A, $09                                                  ; $04fe : $84, $09
	mov $9d, A                                                  ; $0500 : $c4, $9d

;
	movw YA, $0c                                                  ; $0502 : $ba, $0c
	addw YA, $04                                                  ; $0504 : $7a, $04
	mov !$0202+X, A                                                  ; $0506 : $d5, $02, $02
	mov A, Y                                                  ; $0509 : $dd
	mov !$0203+X, A                                                  ; $050a : $d5, $03, $02
	clrc                                                  ; $050d : $60
	adc $9e, #$04                                                  ; $050e : $98, $04, $9e

; Wait until SNES sends the 'end' byte
-	cmp PORT_2, #$ff                                                  ; $0511 : $78, $ff, $f6
	bne -                                                  ; $0514 : $d0, $fb

	ret                                                  ; $0516 : $6f


; Y - loop idx from 8 down to 1 (corresponds with SNES' loop idx)
GetNextOfSNES8bytes:
; Wait until SNES sends us the same loop idx
	mov A, Y                                                  ; $0517 : $dd
-	cmp A, PORT_2                                                  ; $0518 : $64, $f6
	bne -                                                  ; $051a : $d0, $fc

; Get data byte and push
	mov A, PORT_0                                                  ; $051c : $e4, $f4
	push A                                                  ; $051e : $2d

; Send loop idx with bit 7 set so SNES knows we received it
	mov A, Y                                                  ; $051f : $dd
	or A, #$80                                                  ; $0520 : $08, $80
	mov PORT_2, A                                                  ; $0522 : $c4, $f6

; To next loop idx
	dec Y                                                  ; $0524 : $dc
	pop A                                                  ; $0525 : $ae
	ret                                                  ; $0526 : $6f


CommandHandler1eh:
	mov PORT_0, $a0                                                  ; $0527 : $fa, $a0, $f4
	jmp !WaitForSNESthenNextSndCmd                                                  ; $052a : $5f, $85, $03


CommandHandler1fh:
	mov A, PORT_0                                                  ; $052d : $e4, $f4
	mov !$08c7, A                                                  ; $052f : $c5, $c7, $08
	call !Call_00_3fc2                                                  ; $0532 : $3f, $c2, $3f
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0535 : $5f, $85, $03


CommandHandler20h:
	mov A, PORT_0                                                  ; $0538 : $e4, $f4
	mov !$08c8, A                                                  ; $053a : $c5, $c8, $08
	mov DSP_REG_ADDR, #$0d                                                  ; $053d : $8f, $0d, $f2
	mov DSP_REG_DATA, A                                                  ; $0540 : $c4, $f3
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0542 : $5f, $85, $03


CommandHandler21h:
	mov A, PORT_0                                                  ; $0545 : $e4, $f4
	call !Call_00_3a0a                                                  ; $0547 : $3f, $0a, $3a
	jmp !WaitForSNESthenNextSndCmd                                                  ; $054a : $5f, $85, $03


CommandHandler12h:
	movw YA, $9c                                                  ; $054d : $ba, $9c
	movw PORT_0, YA                                                  ; $054f : $da, $f4
	jmp !WaitForSNESthenNextSndCmd                                                  ; $0551 : $5f, $85, $03


CommandHandler16h:
	movw YA, PORT_0                                                  ; $0554 : $ba, $f4
	movw $a8, YA                                                  ; $0556 : $da, $a8
	mov $ad, #$ff                                                  ; $0558 : $8f, $ff, $ad
	jmp !WaitForSNESthenNextSndCmd                                                  ; $055b : $5f, $85, $03


CommandHandler17h:
	call !WaitUntilSNESReady                                                  ; $055e : $3f, $ee, $05
	mov A, #$ff                                                  ; $0561 : $e8, $ff

-	cmp A, PORT_2                                                  ; $0563 : $64, $f6
	bne -                                                  ; $0565 : $d0, $fc

	mov PORT_2, A                                                  ; $0567 : $c4, $f6
	mov Y, #$00                                                  ; $0569 : $8d, $00

@nextBytePair:
	mov A, Y                                                  ; $056b : $dd
	and A, #$7f                                                  ; $056c : $28, $7f
	cmp PORT_3, #$ff                                                  ; $056e : $78, $ff, $f7
	bne @notEnd                                                  ; $0571 : $d0, $03

	jmp !WaitForSNESthenNextSndCmd                                                  ; $0573 : $5f, $85, $03

@notEnd:
	cmp A, PORT_2                                                  ; $0576 : $64, $f6
	bne @nextBytePair                                                  ; $0578 : $d0, $f1

	mov A, Y                                                  ; $057a : $dd
	mov X, A                                                  ; $057b : $5d
	mov A, PORT_0                                                  ; $057c : $e4, $f4
	mov [$a8]+Y, A                                                  ; $057e : $d7, $a8
	inc Y                                                  ; $0580 : $fc
	bne +                                                  ; $0581 : $d0, $02
	inc $a9                                                  ; $0583 : $ab, $a9
+	mov A, PORT_1                                                  ; $0585 : $e4, $f5
	mov [$a8]+Y, A                                                  ; $0587 : $d7, $a8
	inc Y                                                  ; $0589 : $fc
	bne +                                                  ; $058a : $d0, $02
	inc $a9                                                  ; $058c : $ab, $a9
+	mov A, X                                                  ; $058e : $7d
	or A, #$80                                                  ; $058f : $08, $80
	mov PORT_2, A                                                  ; $0591 : $c4, $f6
	bra @nextBytePair                                                  ; $0593 : $2f, $d6


CommandHandler1ch:
	mov Y, #$00                                                  ; $0595 : $8d, $00
	mov A, PORT_0                                                  ; $0597 : $e4, $f4
	mov [$a8]+Y, A                                                  ; $0599 : $d7, $a8
	inc Y                                                  ; $059b : $fc
	mov A, PORT_1                                                  ; $059c : $e4, $f5
	mov [$a8]+Y, A                                                  ; $059e : $d7, $a8
	call !WaitUntilSNESReady                                                  ; $05a0 : $3f, $ee, $05
	mov A, $a8                                                  ; $05a3 : $e4, $a8
	clrc                                                  ; $05a5 : $60
	adc A, #$02                                                  ; $05a6 : $88, $02
	mov $a8, A                                                  ; $05a8 : $c4, $a8
	mov A, $a9                                                  ; $05aa : $e4, $a9
	adc A, #$00                                                  ; $05ac : $88, $00
	mov $a9, A                                                  ; $05ae : $c4, $a9
	jmp !NextSndCommand                                                  ; $05b0 : $5f, $88, $03


CommandHandler01h:
	movw YA, PORT_0                                                  ; $05b3 : $ba, $f4
	movw $0c, YA                                                  ; $05b5 : $da, $0c
	call !WaitUntilSNESReady                                                  ; $05b7 : $3f, $ee, $05

; $0c.w - dest addr
LoadInSNESSampleData:
; Wait until SNES sends us $ff, then send it back
	mov A, #$ff                                                  ; $05ba : $e8, $ff
-	cmp A, PORT_2                                                  ; $05bc : $64, $f6
	bne -                                                  ; $05be : $d0, $fc

	mov PORT_2, A                                                  ; $05c0 : $c4, $f6

;
	mov Y, #$00                                                  ; $05c2 : $8d, $00

@nextBytePair:
	mov A, Y                                                  ; $05c4 : $dd
	and A, #$7f                                                  ; $05c5 : $28, $7f

@waitForSnesLoopCtr:
; End once $ff read from port 3
	cmp PORT_3, #$ff                                                  ; $05c7 : $78, $ff, $f7
	bne @notEnd                                                  ; $05ca : $d0, $03

	jmp !WaitForSNESthenNextSndCmd                                                  ; $05cc : $5f, $85, $03

@notEnd:
	cmp A, PORT_2                                                  ; $05cf : $64, $f6
	bne @waitForSnesLoopCtr                                                  ; $05d1 : $d0, $f4

; X = loop counter
	mov A, Y                                                  ; $05d3 : $dd
	mov X, A                                                  ; $05d4 : $5d

; put 1st data byte here
	mov A, PORT_0                                                  ; $05d5 : $e4, $f4
	mov [$0c]+Y, A                                                  ; $05d7 : $d7, $0c
	inc Y                                                  ; $05d9 : $fc
	bne +                                                  ; $05da : $d0, $02
	inc $0d                                                  ; $05dc : $ab, $0d

; put 2nd data byte here
+	mov A, PORT_1                                                  ; $05de : $e4, $f5
	mov [$0c]+Y, A                                                  ; $05e0 : $d7, $0c
	inc Y                                                  ; $05e2 : $fc
	bne +                                                  ; $05e3 : $d0, $02
	inc $0d                                                  ; $05e5 : $ab, $0d

; send SNES back the loop counter with bit 7 set to say we've processed it
+	mov A, X                                                  ; $05e7 : $7d
	or A, #$80                                                  ; $05e8 : $08, $80
	mov PORT_2, A                                                  ; $05ea : $c4, $f6
	bra @nextBytePair                                                  ; $05ec : $2f, $d6


WaitUntilSNESReady:
; Send SNES a $cdef signal, saying we're done (and can receive new data)
	mov PORT_2, #$cd                                                  ; $05ee : $8f, $cd, $f6
	mov PORT_3, #$ef                                                  ; $05f1 : $8f, $ef, $f7

; Wait until they clear our IO ports
-	mov A, PORT_2                                                  ; $05f4 : $e4, $f6
	bne -                                                  ; $05f6 : $d0, $fc
-	mov A, PORT_3                                                  ; $05f8 : $e4, $f7
	bne -                                                  ; $05fa : $d0, $fc

; Then clear their IO ports
	mov A, #$00                                                  ; $05fc : $e8, $00
	mov PORT_2, A                                                  ; $05fe : $c4, $f6
	mov PORT_3, A                                                  ; $0600 : $c4, $f7
	ret                                                  ; $0602 : $6f

