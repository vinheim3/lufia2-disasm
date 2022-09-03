SoundEffectsPtrs:
	.dw @sound_00h-SoundEffectsPtrs
	.dw $0139
	.dw $0154
	.dw $0183
	.dw $01bb
	.dw $01da
	.dw $01f3
	.dw $020c
	.dw $0225
	.dw $023e
	.dw $0257
	.dw $0270
	.dw $02a4
	.dw $02e3
	.dw $0411
	.dw $0440
	.dw $0483
	.dw $04bd
	.dw $0501
	.dw $052b
	.dw $059b
	.dw $05e7
	.dw $061b
	.dw $064b
	.dw $0661
	.dw $06a6
	.dw $06f2
	.dw $0723
	.dw $0781
	.dw $07b8
	.dw $07e6
	.dw $082a
	.dw $085d
	.dw $0879
	.dw $08a6
	.dw $0922
	.dw $094f
	.dw $096b
	.dw $0994
	.dw $0a2d
	.dw $0a43
	.dw $0afe
	.dw $0b8c
	.dw $0c14
	.dw $0c9c
	.dw $0d41
	.dw $0d9c
	.dw $0e55
	.dw $0ebf
	.dw $0f16
	.dw $0f42
	.dw $0f96
	.dw $0feb
	.dw $1035
	.dw $106a
	.dw $1089
	.dw $10e3
	.dw $1115
	.dw $114a
	.dw $117f
	.dw $11c8
	.dw $11eb
	.dw $121a
	.dw $1242
	.dw $1265
	.dw $1281
	.dw $12b5
	.dw $12e9
	.dw $12f4
	.dw $1331
	.dw $1347
	.dw $135d
	.dw $1373
	.dw $1389
	.dw $139f
	.dw $13b5
	.dw $13c0
	.dw $13cb
	.dw $13fe
	.dw $1418
	.dw $1436
	.dw $1468
	.dw $14b4
	.dw $151b
	.dw $1557
	.dw $158b
	.dw $15be
	.dw $1606
	.dw $162e
	.dw $1660
	.dw $1694
	.dw $16f4
	.dw $1752
	.dw $182f
	.dw $18d1
	.dw $19ba
	.dw $19d3
	.dw $19ec
	.dw $1a05
	.dw $1a1e
	.dw $1a37
	.dw $1a42
	.dw $1ab4
	.dw $1b6f
	.dw $1be6
	.dw $1c38
	.dw $1d87
	.dw $1db7
	.dw $1ea9
	.dw $1eec
	.dw $1f2f
	.dw $1f97
	.dw $2022
	.dw $20e7
	.dw $2117
	.dw $213a
	.dw $21d7
	.dw $2274
	.dw $2286
	.dw $231d
	.dw $2375
	.dw $23a9
	.dw $23c3
	.dw $23f4
	.dw $2413
	.dw $24c9
	.dw $250a
	.dw $2566
	.dw $25a5
	.dw $25eb
	.dw $26f4
	.dw $2729
	.dw $2772
	.dw $27c2
	.dw $2814
	.dw $28ad
	.dw $28fb
	.dw $2932
	.dw $299e
	.dw $2a0a
	.dw $2a39
	.dw $2a58
	.dw SoundData8fh-SoundEffectsPtrs

@sound_00h:
	.db $01 ; num channels used
	.db $07 ; channel to use
	.dw @@chn7-@sound_00h

@@chn7:
	.db $f2, $00, $40
	.db $f1, $00, $40
	.db $f7, $00, $0f
	.db $3d, $02, $02, $78
	.db $be
	.db $3f, $02, $01, $78
	.db $fe
	.db $00, $00, $00, $00 ; n/a


; sound_01h
	tcall 0                                                  ; $0b0b : $01
	or A, [$04+X]                                                  ; $0b0c : $07, $04
	nop                                                  ; $0b0e : $00
	clr1 $00.7                                                  ; $0b0f : $f2, $00
	setp                                                  ; $0b11 : $40
	tcall 15                                                  ; $0b12 : $f1
	nop                                                  ; $0b13 : $00
	setp                                                  ; $0b14 : $40
	mov A, [$00]+Y                                                  ; $0b15 : $f7, $00
	brk                                                  ; $0b17 : $0f


	rol A                                                  ; $0b18 : $3c
	set1 $02.0                                                  ; $0b19 : $02, $02
	cmp $3a, #$bb                                                  ; $0b1b : $78, $bb, $3a
	set1 $01.0                                                  ; $0b1e : $02, $01

br_00_0b20:
	cmp $00, #$fe                                                  ; $0b20 : $78, $fe, $00
	nop                                                  ; $0b23 : $00
	nop                                                  ; $0b24 : $00
	nop                                                  ; $0b25 : $00
	tcall 0                                                  ; $0b26 : $01
	or A, [$04+X]                                                  ; $0b27 : $07, $04
	nop                                                  ; $0b29 : $00
	stop                                                  ; $0b2a : $ff
	bbs $00.0, br_00_0b20                                                  ; $0b2b : $03, $00, $f2

	nop                                                  ; $0b2e : $00
	setp                                                  ; $0b2f : $40
	tcall 15                                                  ; $0b30 : $f1
	nop                                                  ; $0b31 : $00
	setp                                                  ; $0b32 : $40
	mov A, [$00]+Y                                                  ; $0b33 : $f7, $00
	brk                                                  ; $0b35 : $0f


	bbc $03.1, br_00_0b3c                                                  ; $0b36 : $33, $03, $03

	cmp $03, #$33                                                  ; $0b39 : $78, $33, $03

br_00_0b3c:
	bbs $40.0, br_00_0b72                                                  ; $0b3c : $03, $40, $33

	or A, $03                                                  ; $0b3f : $04, $03
	bmi br_00_0b76                                                  ; $0b41 : $30, $33

	or A, !$2003                                                  ; $0b43 : $05, $03, $20
	bbc $06.1, br_00_0b4c                                                  ; $0b46 : $33, $06, $03

	or $33, #$b3                                                  ; $0b49 : $18, $b3, $33

br_00_0b4c:
	or A, [$03+X]                                                  ; $0b4c : $07, $03
	asl !$feb3                                                  ; $0b4e : $0c, $b3, $fe
	stop                                                  ; $0b51 : $ff

br_00_0b52:
	stop                                                  ; $0b52 : $ff
	stop                                                  ; $0b53 : $ff
	stop                                                  ; $0b54 : $ff
	set1 $05.0                                                  ; $0b55 : $02, $05
	or A, (X)                                                  ; $0b57 : $06
	or A, [$00+X]                                                  ; $0b58 : $07, $00
	asl A                                                  ; $0b5a : $1c
	nop                                                  ; $0b5b : $00
	stop                                                  ; $0b5c : $ff
	bbs $00.0, br_00_0b52                                                  ; $0b5d : $03, $00, $f2

	nop                                                  ; $0b60 : $00
	setp                                                  ; $0b61 : $40
	tcall 15                                                  ; $0b62 : $f1
	nop                                                  ; $0b63 : $00
	setp                                                  ; $0b64 : $40
	mov A, [$00]+Y                                                  ; $0b65 : $f7, $00

br_00_0b67:
	brk                                                  ; $0b67 : $0f


	jmp [!$0609+X]                                                  ; $0b68 : $1f, $09, $06


	cmp $0c, #$1f                                                  ; $0b6b : $78, $1f, $0c
	or1 c, $1e78.7                                                  ; $0b6e : $0a, $78, $fe
	stop                                                  ; $0b71 : $ff

br_00_0b72:
	bbs $00.0, br_00_0b67                                                  ; $0b72 : $03, $00, $f2

	nop                                                  ; $0b75 : $00

br_00_0b76:
	setp                                                  ; $0b76 : $40
	tcall 15                                                  ; $0b77 : $f1
	nop                                                  ; $0b78 : $00
	bmi br_00_0b72                                                  ; $0b79 : $30, $f7

	nop                                                  ; $0b7b : $00
	brk                                                  ; $0b7c : $0f


	mov A, !$7a00+Y                                                  ; $0b7d : $f6, $00, $7a
	jmp [!$0509+X]                                                  ; $0b80 : $1f, $09, $05


	cmp $0c, #$1f                                                  ; $0b83 : $78, $1f, $0c
	or1 c, $1e78.7                                                  ; $0b86 : $0a, $78, $fe
	stop                                                  ; $0b89 : $ff
	stop                                                  ; $0b8a : $ff
	stop                                                  ; $0b8b : $ff
	stop                                                  ; $0b8c : $ff
	tcall 0                                                  ; $0b8d : $01
	or A, [$04+X]                                                  ; $0b8e : $07, $04
	nop                                                  ; $0b90 : $00
	stop                                                  ; $0b91 : $ff
	tcall 1                                                  ; $0b92 : $11
	nop                                                  ; $0b93 : $00
	clr1 $00.7                                                  ; $0b94 : $f2, $00
	setp                                                  ; $0b96 : $40
	tcall 15                                                  ; $0b97 : $f1
	nop                                                  ; $0b98 : $00
	setp                                                  ; $0b99 : $40
	mov A, [$00]+Y                                                  ; $0b9a : $f7, $00
	brk                                                  ; $0b9c : $0f


	stop                                                  ; $0b9d : $ff
	bpl br_00_0bb4                                                  ; $0b9e : $10, $14

	mov Y, $3c+X                                                  ; $0ba0 : $fb, $3c

br_00_0ba2:
	or A, (X)                                                  ; $0ba2 : $06
	bbs $60.0, br_00_0ba2                                                  ; $0ba3 : $03, $60, $fc

	bbs $fe.0, br_00_0ba9                                                  ; $0ba6 : $03, $fe, $00

br_00_0ba9:
	bvc br_00_0bab                                                  ; $0ba9 : $50, $00

br_00_0bab:
	bbc $02.2, br_00_0bb4                                                  ; $0bab : $53, $02, $06

	or A, [$07+X]                                                  ; $0bae : $07, $07
	nop                                                  ; $0bb0 : $00
	tset1 !$f200                                                  ; $0bb1 : $0e, $00, $f2

br_00_0bb4:
	nop                                                  ; $0bb4 : $00
	setp                                                  ; $0bb5 : $40
	mov A, [$02]+Y                                                  ; $0bb6 : $f7, $02
	brk                                                  ; $0bb8 : $0f


	dbnz Y, -$0e                                                  ; $0bb9 : $fe, $f2

	nop                                                  ; $0bbb : $00
	setp                                                  ; $0bbc : $40
	mov A, [$02]+Y                                                  ; $0bbd : $f7, $02
	brk                                                  ; $0bbf : $0f


	dbnz Y, br_00_0bc2                                                  ; $0bc0 : $fe, $00

br_00_0bc2:
	nop                                                  ; $0bc2 : $00
	nop                                                  ; $0bc3 : $00
	nop                                                  ; $0bc4 : $00
	set1 $06.0                                                  ; $0bc5 : $02, $06
	or A, [$07+X]                                                  ; $0bc7 : $07, $07
	nop                                                  ; $0bc9 : $00
	tset1 !$f200                                                  ; $0bca : $0e, $00, $f2
	nop                                                  ; $0bcd : $00
	setp                                                  ; $0bce : $40
	mov A, [$02]+Y                                                  ; $0bcf : $f7, $02
	brk                                                  ; $0bd1 : $0f


	dbnz Y, -$0e                                                  ; $0bd2 : $fe, $f2

	nop                                                  ; $0bd4 : $00
	setp                                                  ; $0bd5 : $40
	mov A, [$02]+Y                                                  ; $0bd6 : $f7, $02
	brk                                                  ; $0bd8 : $0f


	dbnz Y, br_00_0bdb                                                  ; $0bd9 : $fe, $00

br_00_0bdb:
	nop                                                  ; $0bdb : $00
	nop                                                  ; $0bdc : $00
	nop                                                  ; $0bdd : $00
	set1 $06.0                                                  ; $0bde : $02, $06
	or A, [$07+X]                                                  ; $0be0 : $07, $07
	nop                                                  ; $0be2 : $00
	tset1 !$f200                                                  ; $0be3 : $0e, $00, $f2
	nop                                                  ; $0be6 : $00
	setp                                                  ; $0be7 : $40
	mov A, [$02]+Y                                                  ; $0be8 : $f7, $02
	brk                                                  ; $0bea : $0f


	dbnz Y, -$0e                                                  ; $0beb : $fe, $f2

	nop                                                  ; $0bed : $00
	setp                                                  ; $0bee : $40
	mov A, [$02]+Y                                                  ; $0bef : $f7, $02
	brk                                                  ; $0bf1 : $0f


	dbnz Y, br_00_0bf4                                                  ; $0bf2 : $fe, $00

br_00_0bf4:
	nop                                                  ; $0bf4 : $00
	nop                                                  ; $0bf5 : $00
	nop                                                  ; $0bf6 : $00
	set1 $06.0                                                  ; $0bf7 : $02, $06
	or A, [$07+X]                                                  ; $0bf9 : $07, $07
	nop                                                  ; $0bfb : $00
	tset1 !$f200                                                  ; $0bfc : $0e, $00, $f2
	nop                                                  ; $0bff : $00
	setp                                                  ; $0c00 : $40
	mov A, [$02]+Y                                                  ; $0c01 : $f7, $02
	brk                                                  ; $0c03 : $0f


	dbnz Y, -$0e                                                  ; $0c04 : $fe, $f2

	nop                                                  ; $0c06 : $00
	setp                                                  ; $0c07 : $40
	mov A, [$02]+Y                                                  ; $0c08 : $f7, $02
	brk                                                  ; $0c0a : $0f


	dbnz Y, br_00_0c0d                                                  ; $0c0b : $fe, $00

br_00_0c0d:
	nop                                                  ; $0c0d : $00
	nop                                                  ; $0c0e : $00
	nop                                                  ; $0c0f : $00
	set1 $06.0                                                  ; $0c10 : $02, $06
	or A, [$07+X]                                                  ; $0c12 : $07, $07
	nop                                                  ; $0c14 : $00
	tset1 !$f200                                                  ; $0c15 : $0e, $00, $f2
	nop                                                  ; $0c18 : $00
	setp                                                  ; $0c19 : $40
	mov A, [$02]+Y                                                  ; $0c1a : $f7, $02
	brk                                                  ; $0c1c : $0f


	dbnz Y, -$0e                                                  ; $0c1d : $fe, $f2

	nop                                                  ; $0c1f : $00
	setp                                                  ; $0c20 : $40
	mov A, [$02]+Y                                                  ; $0c21 : $f7, $02
	brk                                                  ; $0c23 : $0f


	dbnz Y, br_00_0c26                                                  ; $0c24 : $fe, $00

br_00_0c26:
	nop                                                  ; $0c26 : $00
	nop                                                  ; $0c27 : $00
	nop                                                  ; $0c28 : $00
	set1 $06.0                                                  ; $0c29 : $02, $06
	or A, [$07+X]                                                  ; $0c2b : $07, $07
	nop                                                  ; $0c2d : $00
	tset1 !$f200                                                  ; $0c2e : $0e, $00, $f2
	nop                                                  ; $0c31 : $00
	setp                                                  ; $0c32 : $40
	mov A, [$02]+Y                                                  ; $0c33 : $f7, $02
	brk                                                  ; $0c35 : $0f


	dbnz Y, -$0e                                                  ; $0c36 : $fe, $f2

	nop                                                  ; $0c38 : $00
	setp                                                  ; $0c39 : $40
	mov A, [$02]+Y                                                  ; $0c3a : $f7, $02
	brk                                                  ; $0c3c : $0f


	dbnz Y, br_00_0c3f                                                  ; $0c3d : $fe, $00

br_00_0c3f:
	nop                                                  ; $0c3f : $00
	nop                                                  ; $0c40 : $00
	nop                                                  ; $0c41 : $00
	tcall 0                                                  ; $0c42 : $01
	or A, (X)                                                  ; $0c43 : $06
	or A, $00                                                  ; $0c44 : $04, $00
	stop                                                  ; $0c46 : $ff
	tcall 1                                                  ; $0c47 : $11
	nop                                                  ; $0c48 : $00
	tcall 15                                                  ; $0c49 : $f1
	nop                                                  ; $0c4a : $00
	setp                                                  ; $0c4b : $40
	clr1 $00.7                                                  ; $0c4c : $f2, $00
	setp                                                  ; $0c4e : $40
	mov A, [$00]+Y                                                  ; $0c4f : $f7, $00
	brk                                                  ; $0c51 : $0f


	stop                                                  ; $0c52 : $ff
	bpl br_00_0c67                                                  ; $0c53 : $10, $12

	rol A                                                  ; $0c55 : $3c
	or A, (X)                                                  ; $0c56 : $06
	or A, [$50+X]                                                  ; $0c57 : $07, $50
	rol A                                                  ; $0c59 : $3c
	or A, (X)                                                  ; $0c5a : $06
	or A, [$40+X]                                                  ; $0c5b : $07, $40
	rol A                                                  ; $0c5d : $3c
	or A, (X)                                                  ; $0c5e : $06
	or A, [$30+X]                                                  ; $0c5f : $07, $30
	rol A                                                  ; $0c61 : $3c
	or A, (X)                                                  ; $0c62 : $06
	or A, [$20+X]                                                  ; $0c63 : $07, $20
	rol A                                                  ; $0c65 : $3c
	or A, (X)                                                  ; $0c66 : $06

br_00_0c67:
	or A, [$18+X]                                                  ; $0c67 : $07, $18
	rol A                                                  ; $0c69 : $3c
	or A, (X)                                                  ; $0c6a : $06
	or A, [$10+X]                                                  ; $0c6b : $07, $10
	rol A                                                  ; $0c6d : $3c
	or A, (X)                                                  ; $0c6e : $06
	or A, !$fe08                                                  ; $0c6f : $05, $08, $fe
	stop                                                  ; $0c72 : $ff
	stop                                                  ; $0c73 : $ff
	stop                                                  ; $0c74 : $ff
	stop                                                  ; $0c75 : $ff
	tcall 0                                                  ; $0c76 : $01
	or A, (X)                                                  ; $0c77 : $06
	or A, $00                                                  ; $0c78 : $04, $00
	stop                                                  ; $0c7a : $ff

br_00_0c7b:
	tcall 1                                                  ; $0c7b : $11
	nop                                                  ; $0c7c : $00
	clr1 $00.7                                                  ; $0c7d : $f2, $00
	setp                                                  ; $0c7f : $40
	tcall 15                                                  ; $0c80 : $f1
	nop                                                  ; $0c81 : $00
	bmi br_00_0c7b                                                  ; $0c82 : $30, $f7

	nop                                                  ; $0c84 : $00
	tcall 1                                                  ; $0c85 : $11
	stop                                                  ; $0c86 : $ff
	bpl br_00_0ca3                                                  ; $0c87 : $10, $1a

	rol A                                                  ; $0c89 : $3c
	set1 $03.0                                                  ; $0c8a : $02, $03
	clrc                                                  ; $0c8c : $60
	stop                                                  ; $0c8d : $ff
	bpl br_00_0cad                                                  ; $0c8e : $10, $1d

	inc A                                                  ; $0c90 : $bc
	stop                                                  ; $0c91 : $ff
	bpl br_00_0cb2                                                  ; $0c92 : $10, $1e

	rol A                                                  ; $0c94 : $3c
	or A, $02                                                  ; $0c95 : $04, $02
	clrc                                                  ; $0c97 : $60
	rol A                                                  ; $0c98 : $3c
	set1 $02.0                                                  ; $0c99 : $02, $02
	eor $02, #$3c                                                  ; $0c9b : $58, $3c, $02
	set1 $48.0                                                  ; $0c9e : $02, $48
	rol A                                                  ; $0ca0 : $3c
	set1 $02.0                                                  ; $0ca1 : $02, $02

br_00_0ca3:
	setp                                                  ; $0ca3 : $40
	rol A                                                  ; $0ca4 : $3c
	set1 $02.0                                                  ; $0ca5 : $02, $02
	bmi $3c                                                  ; $0ca7 : $30, $3c

	set1 $02.0                                                  ; $0ca9 : $02, $02
	clrp                                                  ; $0cab : $20
	rol A                                                  ; $0cac : $3c

br_00_0cad:
	set1 $01.0                                                  ; $0cad : $02, $01
	or $ff, #$fe                                                  ; $0caf : $18, $fe, $ff

br_00_0cb2:
	stop                                                  ; $0cb2 : $ff
	stop                                                  ; $0cb3 : $ff
	stop                                                  ; $0cb4 : $ff
	bbs $04.0, br_00_0cbd                                                  ; $0cb5 : $03, $04, $05

	or A, (X)                                                  ; $0cb8 : $06
	or1 c, $0a00.3                                                  ; $0cb9 : $0a, $00, $6a
	nop                                                  ; $0cbc : $00

br_00_0cbd:
	mov1 $1f00.7, c                                                  ; $0cbd : $ca, $00, $ff

br_00_0cc0:
	tcall 1                                                  ; $0cc0 : $11
	nop                                                  ; $0cc1 : $00
	clr1 $00.7                                                  ; $0cc2 : $f2, $00
	setp                                                  ; $0cc4 : $40
	tcall 15                                                  ; $0cc5 : $f1
	nop                                                  ; $0cc6 : $00
	bpl br_00_0cc0                                                  ; $0cc7 : $10, $f7

	nop                                                  ; $0cc9 : $00
	brk                                                  ; $0cca : $0f


	stop                                                  ; $0ccb : $ff
	bpl $10                                                  ; $0ccc : $10, $10

	rol A                                                  ; $0cce : $3c
	or A, (X)                                                  ; $0ccf : $06
	or A, !$3c05                                                  ; $0cd0 : $05, $05, $3c
	or A, (X)                                                  ; $0cd3 : $06
	or A, !$3c0a                                                  ; $0cd4 : $05, $0a, $3c
	or A, (X)                                                  ; $0cd7 : $06
	or A, !$3c0f                                                  ; $0cd8 : $05, $0f, $3c
	or A, (X)                                                  ; $0cdb : $06
	or A, !$3c14                                                  ; $0cdc : $05, $14, $3c
	or A, (X)                                                  ; $0cdf : $06
	or A, !$3c19                                                  ; $0ce0 : $05, $19, $3c
	or A, (X)                                                  ; $0ce3 : $06
	or A, !$3c1e                                                  ; $0ce4 : $05, $1e, $3c
	or A, (X)                                                  ; $0ce7 : $06
	or A, !$3c23                                                  ; $0ce8 : $05, $23, $3c
	or A, (X)                                                  ; $0ceb : $06
	or A, !$3c28                                                  ; $0cec : $05, $28, $3c
	or A, (X)                                                  ; $0cef : $06
	or A, !$3c2d                                                  ; $0cf0 : $05, $2d, $3c
	or A, (X)                                                  ; $0cf3 : $06
	or A, !$3c32                                                  ; $0cf4 : $05, $32, $3c
	or A, (X)                                                  ; $0cf7 : $06
	or A, !$3c37                                                  ; $0cf8 : $05, $37, $3c
	or A, (X)                                                  ; $0cfb : $06
	or A, !$3c3c                                                  ; $0cfc : $05, $3c, $3c
	or A, (X)                                                  ; $0cff : $06
	or A, !$3c46                                                  ; $0d00 : $05, $46, $3c
	or A, (X)                                                  ; $0d03 : $06
	or A, !$3c4b                                                  ; $0d04 : $05, $4b, $3c
	or A, (X)                                                  ; $0d07 : $06
	or A, !$3c50                                                  ; $0d08 : $05, $50, $3c
	or A, (X)                                                  ; $0d0b : $06
	or A, !$3c55                                                  ; $0d0c : $05, $55, $3c
	or A, (X)                                                  ; $0d0f : $06
	or A, !$3c5a                                                  ; $0d10 : $05, $5a, $3c
	or A, (X)                                                  ; $0d13 : $06
	or A, !$3c64                                                  ; $0d14 : $05, $64, $3c
	or A, (X)                                                  ; $0d17 : $06
	or A, !$fb78                                                  ; $0d18 : $05, $78, $fb
	inc A                                                  ; $0d1b : $bc
	inc Y                                                  ; $0d1c : $fc
	nop                                                  ; $0d1d : $00
	dbnz Y, -$01                                                  ; $0d1e : $fe, $ff

br_00_0d20:
	tcall 1                                                  ; $0d20 : $11
	nop                                                  ; $0d21 : $00
	clr1 $00.7                                                  ; $0d22 : $f2, $00
	or A, $f1+X                                                  ; $0d24 : $14, $f1
	nop                                                  ; $0d26 : $00
	bpl br_00_0d20                                                  ; $0d27 : $10, $f7

	tcall 0                                                  ; $0d29 : $01
	brk                                                  ; $0d2a : $0f


	stop                                                  ; $0d2b : $ff
	bpl br_00_0d3f                                                  ; $0d2c : $10, $11

	rol A                                                  ; $0d2e : $3c
	or A, (X)                                                  ; $0d2f : $06
	or A, !$3c05                                                  ; $0d30 : $05, $05, $3c
	or A, (X)                                                  ; $0d33 : $06
	or A, !$3c0a                                                  ; $0d34 : $05, $0a, $3c
	or A, (X)                                                  ; $0d37 : $06
	or A, !$3c0f                                                  ; $0d38 : $05, $0f, $3c
	or A, (X)                                                  ; $0d3b : $06
	or A, !$3c14                                                  ; $0d3c : $05, $14, $3c

br_00_0d3f:
	or A, (X)                                                  ; $0d3f : $06
	or A, !$3c19                                                  ; $0d40 : $05, $19, $3c
	or A, (X)                                                  ; $0d43 : $06
	or A, !$3c1e                                                  ; $0d44 : $05, $1e, $3c
	or A, (X)                                                  ; $0d47 : $06
	or A, !$3c23                                                  ; $0d48 : $05, $23, $3c
	or A, (X)                                                  ; $0d4b : $06
	or A, !$3c28                                                  ; $0d4c : $05, $28, $3c
	or A, (X)                                                  ; $0d4f : $06
	or A, !$3c2d                                                  ; $0d50 : $05, $2d, $3c
	or A, (X)                                                  ; $0d53 : $06
	or A, !$3c32                                                  ; $0d54 : $05, $32, $3c
	or A, (X)                                                  ; $0d57 : $06
	or A, !$3c37                                                  ; $0d58 : $05, $37, $3c
	or A, (X)                                                  ; $0d5b : $06
	or A, !$3c3c                                                  ; $0d5c : $05, $3c, $3c
	or A, (X)                                                  ; $0d5f : $06
	or A, !$3c46                                                  ; $0d60 : $05, $46, $3c
	or A, (X)                                                  ; $0d63 : $06
	or A, !$3c4b                                                  ; $0d64 : $05, $4b, $3c
	or A, (X)                                                  ; $0d67 : $06
	or A, !$3c50                                                  ; $0d68 : $05, $50, $3c
	or A, (X)                                                  ; $0d6b : $06
	or A, !$3c55                                                  ; $0d6c : $05, $55, $3c
	or A, (X)                                                  ; $0d6f : $06
	or A, !$3c5a                                                  ; $0d70 : $05, $5a, $3c
	or A, (X)                                                  ; $0d73 : $06
	or A, !$3c64                                                  ; $0d74 : $05, $64, $3c
	or A, (X)                                                  ; $0d77 : $06
	or A, !$fb78                                                  ; $0d78 : $05, $78, $fb
	inc A                                                  ; $0d7b : $bc
	inc Y                                                  ; $0d7c : $fc
	nop                                                  ; $0d7d : $00
	dbnz Y, -$01                                                  ; $0d7e : $fe, $ff

br_00_0d80:
	tcall 1                                                  ; $0d80 : $11
	nop                                                  ; $0d81 : $00
	clr1 $00.7                                                  ; $0d82 : $f2, $00
	cmp $00, #$f1                                                  ; $0d84 : $78, $f1, $00
	bpl br_00_0d80                                                  ; $0d87 : $10, $f7

	set1 $0f.0                                                  ; $0d89 : $02, $0f
	stop                                                  ; $0d8b : $ff
	bpl br_00_0da0                                                  ; $0d8c : $10, $12

	rol A                                                  ; $0d8e : $3c
	or A, (X)                                                  ; $0d8f : $06
	or A, !$3c05                                                  ; $0d90 : $05, $05, $3c
	or A, (X)                                                  ; $0d93 : $06
	or A, !$3c0a                                                  ; $0d94 : $05, $0a, $3c
	or A, (X)                                                  ; $0d97 : $06
	or A, !$3c0f                                                  ; $0d98 : $05, $0f, $3c
	or A, (X)                                                  ; $0d9b : $06
	or A, !$3c14                                                  ; $0d9c : $05, $14, $3c
	or A, (X)                                                  ; $0d9f : $06

br_00_0da0:
	or A, !$3c19                                                  ; $0da0 : $05, $19, $3c
	or A, (X)                                                  ; $0da3 : $06
	or A, !$3c1e                                                  ; $0da4 : $05, $1e, $3c
	or A, (X)                                                  ; $0da7 : $06
	or A, !$3c23                                                  ; $0da8 : $05, $23, $3c
	or A, (X)                                                  ; $0dab : $06
	or A, !$3c28                                                  ; $0dac : $05, $28, $3c
	or A, (X)                                                  ; $0daf : $06
	or A, !$3c2d                                                  ; $0db0 : $05, $2d, $3c
	or A, (X)                                                  ; $0db3 : $06
	or A, !$3c32                                                  ; $0db4 : $05, $32, $3c
	or A, (X)                                                  ; $0db7 : $06
	or A, !$3c37                                                  ; $0db8 : $05, $37, $3c
	or A, (X)                                                  ; $0dbb : $06
	or A, !$3c3c                                                  ; $0dbc : $05, $3c, $3c
	or A, (X)                                                  ; $0dbf : $06
	or A, !$3c46                                                  ; $0dc0 : $05, $46, $3c
	or A, (X)                                                  ; $0dc3 : $06
	or A, !$3c4b                                                  ; $0dc4 : $05, $4b, $3c
	or A, (X)                                                  ; $0dc7 : $06
	or A, !$3c50                                                  ; $0dc8 : $05, $50, $3c
	or A, (X)                                                  ; $0dcb : $06
	or A, !$3c55                                                  ; $0dcc : $05, $55, $3c
	or A, (X)                                                  ; $0dcf : $06
	or A, !$3c5a                                                  ; $0dd0 : $05, $5a, $3c
	or A, (X)                                                  ; $0dd3 : $06
	or A, !$3c64                                                  ; $0dd4 : $05, $64, $3c
	or A, (X)                                                  ; $0dd7 : $06
	or A, !$fb78                                                  ; $0dd8 : $05, $78, $fb
	inc A                                                  ; $0ddb : $bc
	inc Y                                                  ; $0ddc : $fc
	nop                                                  ; $0ddd : $00
	dbnz Y, br_00_0de0                                                  ; $0dde : $fe, $00

br_00_0de0:
	nop                                                  ; $0de0 : $00
	nop                                                  ; $0de1 : $00
	nop                                                  ; $0de2 : $00
	tcall 0                                                  ; $0de3 : $01
	or A, (X)                                                  ; $0de4 : $06
	or A, $00                                                  ; $0de5 : $04, $00
	stop                                                  ; $0de7 : $ff

br_00_0de8:
	tcall 1                                                  ; $0de8 : $11
	nop                                                  ; $0de9 : $00
	clr1 $00.7                                                  ; $0dea : $f2, $00
	setp                                                  ; $0dec : $40
	tcall 15                                                  ; $0ded : $f1
	nop                                                  ; $0dee : $00
	bmi br_00_0de8                                                  ; $0def : $30, $f7

	nop                                                  ; $0df1 : $00
	tcall 1                                                  ; $0df2 : $11
	stop                                                  ; $0df3 : $ff
	bpl br_00_0e14                                                  ; $0df4 : $10, $1e

	rol A                                                  ; $0df6 : $3c
	bbs $03.0, $6e                                                  ; $0df7 : $03, $03, $6e

	stop                                                  ; $0dfa : $ff
	bpl br_00_0e11                                                  ; $0dfb : $10, $14

	rol A                                                  ; $0dfd : $3c
	set1 $02.0                                                  ; $0dfe : $02, $02
	dbnz $3c, br_00_0e05                                                  ; $0e00 : $6e, $3c, $02

	set1 $48.0                                                  ; $0e03 : $02, $48

br_00_0e05:
	rol A                                                  ; $0e05 : $3c
	set1 $02.0                                                  ; $0e06 : $02, $02
	bmi $3c                                                  ; $0e08 : $30, $3c

	set1 $01.0                                                  ; $0e0a : $02, $01
	or $ff, #$fe                                                  ; $0e0c : $18, $fe, $ff
	stop                                                  ; $0e0f : $ff
	stop                                                  ; $0e10 : $ff

br_00_0e11:
	stop                                                  ; $0e11 : $ff
	tcall 0                                                  ; $0e12 : $01
	or A, (X)                                                  ; $0e13 : $06

br_00_0e14:
	or A, $00                                                  ; $0e14 : $04, $00
	stop                                                  ; $0e16 : $ff
	tcall 1                                                  ; $0e17 : $11
	nop                                                  ; $0e18 : $00
	tcall 15                                                  ; $0e19 : $f1
	nop                                                  ; $0e1a : $00
	setp                                                  ; $0e1b : $40
	clr1 $00.7                                                  ; $0e1c : $f2, $00
	setp                                                  ; $0e1e : $40
	mov A, [$00]+Y                                                  ; $0e1f : $f7, $00
	tcall 1                                                  ; $0e21 : $11
	stop                                                  ; $0e22 : $ff
	bpl br_00_0e41                                                  ; $0e23 : $10, $1c

	rol A                                                  ; $0e25 : $3c
	bbs $03.0, br_00_0e8d                                                  ; $0e26 : $03, $03, $64

	stop                                                  ; $0e29 : $ff
	bpl br_00_0e3f                                                  ; $0e2a : $10, $13

	rol A                                                  ; $0e2c : $3c
	set1 $02.0                                                  ; $0e2d : $02, $02
	cmp $02, #$3c                                                  ; $0e2f : $78, $3c, $02
	set1 $58.0                                                  ; $0e32 : $02, $58
	rol A                                                  ; $0e34 : $3c
	set1 $02.0                                                  ; $0e35 : $02, $02
	bvc br_00_0e75                                                  ; $0e37 : $50, $3c

	set1 $02.0                                                  ; $0e39 : $02, $02
	eor A, #$3c                                                  ; $0e3b : $48, $3c
	set1 $02.0                                                  ; $0e3d : $02, $02

br_00_0e3f:
	setp                                                  ; $0e3f : $40
	rol A                                                  ; $0e40 : $3c

br_00_0e41:
	set1 $02.0                                                  ; $0e41 : $02, $02
	and A, $3c+X                                                  ; $0e43 : $34, $3c
	set1 $02.0                                                  ; $0e45 : $02, $02
	bmi $3c                                                  ; $0e47 : $30, $3c

	set1 $02.0                                                  ; $0e49 : $02, $02
	clrp                                                  ; $0e4b : $20
	rol A                                                  ; $0e4c : $3c
	set1 $01.0                                                  ; $0e4d : $02, $01

br_00_0e4f:
	or $ff, #$fe                                                  ; $0e4f : $18, $fe, $ff
	stop                                                  ; $0e52 : $ff
	stop                                                  ; $0e53 : $ff
	stop                                                  ; $0e54 : $ff
	tcall 0                                                  ; $0e55 : $01
	or A, (X)                                                  ; $0e56 : $06
	or A, $00                                                  ; $0e57 : $04, $00
	tcall 15                                                  ; $0e59 : $f1
	nop                                                  ; $0e5a : $00
	bmi br_00_0e4f                                                  ; $0e5b : $30, $f2

	nop                                                  ; $0e5d : $00
	setp                                                  ; $0e5e : $40
	mov A, [$00]+Y                                                  ; $0e5f : $f7, $00
	brk                                                  ; $0e61 : $0f


	mov A, !$8000+Y                                                  ; $0e62 : $f6, $00, $80
	and A, $01                                                  ; $0e65 : $24, $01
	or1 c, $166e.7                                                  ; $0e67 : $0a, $6e, $f6
	tcall 0                                                  ; $0e6a : $01
	tcall 6                                                  ; $0e6b : $61
	mov A, !$4d01+Y                                                  ; $0e6c : $f6, $01, $4d
	mov A, !$4101+Y                                                  ; $0e6f : $f6, $01, $41
	mov A, !$4701+Y                                                  ; $0e72 : $f6, $01, $47

br_00_0e75:
	mov A, !$5501+Y                                                  ; $0e75 : $f6, $01, $55
	mov A, !$6f01+Y                                                  ; $0e78 : $f6, $01, $6f
	mov A, !$9301+Y                                                  ; $0e7b : $f6, $01, $93
	mov A, !$bf01+Y                                                  ; $0e7e : $f6, $01, $bf
	mov A, !$e801+Y                                                  ; $0e81 : $f6, $01, $e8
	mov A, !$fd01+Y                                                  ; $0e84 : $f6, $01, $fd
	mov A, !$8001+Y                                                  ; $0e87 : $f6, $01, $80
	dbnz Y, -$01                                                  ; $0e8a : $fe, $ff

br_00_0e8c:
	stop                                                  ; $0e8c : $ff

br_00_0e8d:
	stop                                                  ; $0e8d : $ff
	stop                                                  ; $0e8e : $ff
	tcall 0                                                  ; $0e8f : $01
	or A, (X)                                                  ; $0e90 : $06
	or A, $00                                                  ; $0e91 : $04, $00
	stop                                                  ; $0e93 : $ff
	tcall 1                                                  ; $0e94 : $11
	nop                                                  ; $0e95 : $00
	tcall 15                                                  ; $0e96 : $f1
	nop                                                  ; $0e97 : $00
	bmi br_00_0e8c                                                  ; $0e98 : $30, $f2

	nop                                                  ; $0e9a : $00
	setp                                                  ; $0e9b : $40
	mov A, [$00]+Y                                                  ; $0e9c : $f7, $00
	tcall 1                                                  ; $0e9e : $11
	stop                                                  ; $0e9f : $ff
	bpl $13                                                  ; $0ea0 : $10, $13

	rol A                                                  ; $0ea2 : $3c
	or A, !$7805                                                  ; $0ea3 : $05, $05, $78
	rol A                                                  ; $0ea6 : $3c
	bbs $03.0, br_00_0f02                                                  ; $0ea7 : $03, $03, $58

	rol A                                                  ; $0eaa : $3c
	bbs $03.0, $50                                                  ; $0eab : $03, $03, $50

	rol A                                                  ; $0eae : $3c
	bbs $03.0, br_00_0efa                                                  ; $0eaf : $03, $03, $48

	rol A                                                  ; $0eb2 : $3c
	bbs $03.0, $40                                                  ; $0eb3 : $03, $03, $40

	rol A                                                  ; $0eb6 : $3c
	bbs $03.0, $34                                                  ; $0eb7 : $03, $03, $34

	rol A                                                  ; $0eba : $3c
	bbs $03.0, $30                                                  ; $0ebb : $03, $03, $30

	rol A                                                  ; $0ebe : $3c
	bbs $03.0, br_00_0ee2                                                  ; $0ebf : $03, $03, $20

	rol A                                                  ; $0ec2 : $3c
	bbs $03.0, br_00_0ede                                                  ; $0ec3 : $03, $03, $18

	rol A                                                  ; $0ec6 : $3c
	bbs $03.0, br_00_0eda                                                  ; $0ec7 : $03, $03, $10

	rol A                                                  ; $0eca : $3c
	bbs $02.0, br_00_0ed6                                                  ; $0ecb : $03, $02, $08

	dbnz Y, -$01                                                  ; $0ece : $fe, $ff

	stop                                                  ; $0ed0 : $ff
	stop                                                  ; $0ed1 : $ff
	stop                                                  ; $0ed2 : $ff

br_00_0ed3:
	set1 $05.0                                                  ; $0ed3 : $02, $05
	or A, (X)                                                  ; $0ed5 : $06

br_00_0ed6:
	or A, [$00+X]                                                  ; $0ed6 : $07, $00
	asl $00+X                                                  ; $0ed8 : $1b, $00

br_00_0eda:
	stop                                                  ; $0eda : $ff
	tcall 1                                                  ; $0edb : $11
	nop                                                  ; $0edc : $00
	tcall 15                                                  ; $0edd : $f1

br_00_0ede:
	nop                                                  ; $0ede : $00
	bmi br_00_0ed3                                                  ; $0edf : $30, $f2

br_00_0ee1:
	nop                                                  ; $0ee1 : $00

br_00_0ee2:
	setp                                                  ; $0ee2 : $40
	mov A, [$00]+Y                                                  ; $0ee3 : $f7, $00
	tcall 1                                                  ; $0ee5 : $11
	stop                                                  ; $0ee6 : $ff
	bpl br_00_0f07                                                  ; $0ee7 : $10, $1e

	rol A                                                  ; $0ee9 : $3c
	asl !$3402                                                  ; $0eea : $0c, $02, $34
	dbnz Y, br_00_0ee1                                                  ; $0eed : $fe, $f2

	nop                                                  ; $0eef : $00
	setp                                                  ; $0ef0 : $40
	mov A, [$02]+Y                                                  ; $0ef1 : $f7, $02
	tcall 0                                                  ; $0ef3 : $01
	tcall 4                                                  ; $0ef4 : $41
	asl !$600a                                                  ; $0ef5 : $0c, $0a, $60
	dbnz Y, -$01                                                  ; $0ef8 : $fe, $ff

br_00_0efa:
	stop                                                  ; $0efa : $ff
	stop                                                  ; $0efb : $ff
	stop                                                  ; $0efc : $ff
	set1 $05.0                                                  ; $0efd : $02, $05
	or A, (X)                                                  ; $0eff : $06
	or A, [$00+X]                                                  ; $0f00 : $07, $00

br_00_0f02:
	bbs $00.2, -$01                                                  ; $0f02 : $43, $00, $ff

	tcall 1                                                  ; $0f05 : $11
	nop                                                  ; $0f06 : $00

br_00_0f07:
	tcall 15                                                  ; $0f07 : $f1
	nop                                                  ; $0f08 : $00
	and A, #$f2                                                  ; $0f09 : $28, $f2
	nop                                                  ; $0f0b : $00
	setp                                                  ; $0f0c : $40
	mov A, [$00]+Y                                                  ; $0f0d : $f7, $00
	tcall 1                                                  ; $0f0f : $11
	stop                                                  ; $0f10 : $ff
	bpl br_00_0f2f                                                  ; $0f11 : $10, $1c

	rol A                                                  ; $0f13 : $3c
	set1 $03.0                                                  ; $0f14 : $02, $03
	or $02, #$3c                                                  ; $0f16 : $18, $3c, $02
	bbs $30.0, $3c                                                  ; $0f19 : $03, $30, $3c

	set1 $03.0                                                  ; $0f1c : $02, $03
	setp                                                  ; $0f1e : $40
	rol A                                                  ; $0f1f : $3c
	set1 $03.0                                                  ; $0f20 : $02, $03
	bvc $3c                                                  ; $0f22 : $50, $3c

	tcall 0                                                  ; $0f24 : $01
	bbs $40.0, $3c                                                  ; $0f25 : $03, $40, $3c

	tcall 0                                                  ; $0f28 : $01
	set1 $34.0                                                  ; $0f29 : $02, $34
	rol A                                                  ; $0f2b : $3c
	tcall 0                                                  ; $0f2c : $01
	set1 $30.0                                                  ; $0f2d : $02, $30

br_00_0f2f:
	rol A                                                  ; $0f2f : $3c
	tcall 0                                                  ; $0f30 : $01
	set1 $20.0                                                  ; $0f31 : $02, $20
	rol A                                                  ; $0f33 : $3c
	tcall 0                                                  ; $0f34 : $01
	set1 $18.0                                                  ; $0f35 : $02, $18
	rol A                                                  ; $0f37 : $3c
	tcall 0                                                  ; $0f38 : $01
	set1 $10.0                                                  ; $0f39 : $02, $10
	rol A                                                  ; $0f3b : $3c
	set1 $01.0                                                  ; $0f3c : $02, $01
	or A, #$fe                                                  ; $0f3e : $08, $fe
	tcall 15                                                  ; $0f40 : $f1
	nop                                                  ; $0f41 : $00
	bmi -$0e                                                  ; $0f42 : $30, $f2

	nop                                                  ; $0f44 : $00
	setp                                                  ; $0f45 : $40
	mov A, [$00]+Y                                                  ; $0f46 : $f7, $00
	brk                                                  ; $0f48 : $0f


	mov A, !$4e00+Y                                                  ; $0f49 : $f6, $00, $4e
	and A, $02                                                  ; $0f4c : $24, $02
	tcall 1                                                  ; $0f4e : $11
	setp                                                  ; $0f4f : $40
	mov A, !$7a02+Y                                                  ; $0f50 : $f6, $02, $7a
	mov A, !$a502+Y                                                  ; $0f53 : $f6, $02, $a5
	mov A, !$b302+Y                                                  ; $0f56 : $f6, $02, $b3
	mov A, !$9302+Y                                                  ; $0f59 : $f6, $02, $93
	mov A, !$6302+Y                                                  ; $0f5c : $f6, $02, $63
	mov A, !$5b02+Y                                                  ; $0f5f : $f6, $02, $5b
	mov A, !$4f02+Y                                                  ; $0f62 : $f6, $02, $4f
	mov A, !$4502+Y                                                  ; $0f65 : $f6, $02, $45
	dbnz Y, br_00_0f6a                                                  ; $0f68 : $fe, $00

br_00_0f6a:
	clr1 $00.7                                                  ; $0f6a : $f2, $00
	or A, $01+X                                                  ; $0f6c : $14, $01
	or A, (X)                                                  ; $0f6e : $06
	or A, $00                                                  ; $0f6f : $04, $00

br_00_0f71:
	tcall 15                                                  ; $0f71 : $f1
	nop                                                  ; $0f72 : $00
	bmi -$0e                                                  ; $0f73 : $30, $f2

	nop                                                  ; $0f75 : $00
	setp                                                  ; $0f76 : $40
	mov A, [$00]+Y                                                  ; $0f77 : $f7, $00
	bpl br_00_0f71                                                  ; $0f79 : $10, $f6

	nop                                                  ; $0f7b : $00
	setc                                                  ; $0f7c : $80
	eor A, #$01                                                  ; $0f7d : $48, $01
	bpl br_00_0fd1                                                  ; $0f7f : $10, $50

	mov A, !$7b01+Y                                                  ; $0f81 : $f6, $01, $7b
	mov A, !$7601+Y                                                  ; $0f84 : $f6, $01, $76
	mov A, !$7101+Y                                                  ; $0f87 : $f6, $01, $71
	mov A, !$6c01+Y                                                  ; $0f8a : $f6, $01, $6c
	mov A, !$6901+Y                                                  ; $0f8d : $f6, $01, $69
	mov A, !$6401+Y                                                  ; $0f90 : $f6, $01, $64
	mov A, !$6001+Y                                                  ; $0f93 : $f6, $01, $60
	mov A, !$5c01+Y                                                  ; $0f96 : $f6, $01, $5c
	mov A, !$5901+Y                                                  ; $0f99 : $f6, $01, $59
	mov A, !$5501+Y                                                  ; $0f9c : $f6, $01, $55
	mov A, !$5201+Y                                                  ; $0f9f : $f6, $01, $52
	mov A, !$4e01+Y                                                  ; $0fa2 : $f6, $01, $4e
	mov A, !$4c01+Y                                                  ; $0fa5 : $f6, $01, $4c
	mov A, !$4801+Y                                                  ; $0fa8 : $f6, $01, $48
	mov A, !$4501+Y                                                  ; $0fab : $f6, $01, $45
	mov A, !$4201+Y                                                  ; $0fae : $f6, $01, $42
	mov A, !$3f01+Y                                                  ; $0fb1 : $f6, $01, $3f
	dbnz Y, -$01                                                  ; $0fb4 : $fe, $ff

	stop                                                  ; $0fb6 : $ff
	stop                                                  ; $0fb7 : $ff
	stop                                                  ; $0fb8 : $ff
	tcall 0                                                  ; $0fb9 : $01
	or A, (X)                                                  ; $0fba : $06
	or A, $00                                                  ; $0fbb : $04, $00

br_00_0fbd:
	tcall 15                                                  ; $0fbd : $f1
	nop                                                  ; $0fbe : $00
	bmi -$0e                                                  ; $0fbf : $30, $f2

	nop                                                  ; $0fc1 : $00
	setp                                                  ; $0fc2 : $40
	mov A, [$00]+Y                                                  ; $0fc3 : $f7, $00
	bpl br_00_0fbd                                                  ; $0fc5 : $10, $f6

	nop                                                  ; $0fc7 : $00
	setc                                                  ; $0fc8 : $80
	rol A                                                  ; $0fc9 : $3c
	tcall 0                                                  ; $0fca : $01
	or $f6, $60                                                  ; $0fcb : $09, $60, $f6
	tcall 0                                                  ; $0fce : $01
	ror $f6+X                                                  ; $0fcf : $7b, $f6

br_00_0fd1:
	tcall 0                                                  ; $0fd1 : $01
	tcall 7                                                  ; $0fd2 : $71
	mov A, !$6901+Y                                                  ; $0fd3 : $f6, $01, $69
	mov A, !$6001+Y                                                  ; $0fd6 : $f6, $01, $60
	mov A, !$5901+Y                                                  ; $0fd9 : $f6, $01, $59
	mov A, !$5201+Y                                                  ; $0fdc : $f6, $01, $52
	mov A, !$4c01+Y                                                  ; $0fdf : $f6, $01, $4c
	mov A, !$4501+Y                                                  ; $0fe2 : $f6, $01, $45
	mov A, !$3f01+Y                                                  ; $0fe5 : $f6, $01, $3f
	dbnz Y, -$01                                                  ; $0fe8 : $fe, $ff

	stop                                                  ; $0fea : $ff
	stop                                                  ; $0feb : $ff
	stop                                                  ; $0fec : $ff

br_00_0fed:
	set1 $06.0                                                  ; $0fed : $02, $06
	or A, [$07+X]                                                  ; $0fef : $07, $07
	nop                                                  ; $0ff1 : $00
	cmp X, !$ff00                                                  ; $0ff2 : $1e, $00, $ff
	tcall 1                                                  ; $0ff5 : $11
	nop                                                  ; $0ff6 : $00
	tcall 15                                                  ; $0ff7 : $f1
	nop                                                  ; $0ff8 : $00
	bmi br_00_0fed                                                  ; $0ff9 : $30, $f2

	nop                                                  ; $0ffb : $00
	setp                                                  ; $0ffc : $40
	mov A, [$00]+Y                                                  ; $0ffd : $f7, $00
	tcall 1                                                  ; $0fff : $11
	stop                                                  ; $1000 : $ff
	bpl br_00_101f                                                  ; $1001 : $10, $1c

	mov Y, $3c+X                                                  ; $1003 : $fb, $3c
	bbs $01.0, br_00_1038                                                  ; $1005 : $03, $01, $30

	inc Y                                                  ; $1008 : $fc
	nop                                                  ; $1009 : $00
	dbnz Y, -$0e                                                  ; $100a : $fe, $f2

	nop                                                  ; $100c : $00
	setp                                                  ; $100d : $40
	mov A, [$00]+Y                                                  ; $100e : $f7, $00
	dec X                                                  ; $1010 : $1d
	mov Y, $41+X                                                  ; $1011 : $fb, $41
	bbs $02.0, br_00_1084                                                  ; $1013 : $03, $02, $6e

	inc Y                                                  ; $1016 : $fc

br_00_1017:
	nop                                                  ; $1017 : $00
	dbnz Y, -$01                                                  ; $1018 : $fe, $ff

	stop                                                  ; $101a : $ff
	stop                                                  ; $101b : $ff
	stop                                                  ; $101c : $ff
	tcall 0                                                  ; $101d : $01
	or A, (X)                                                  ; $101e : $06

br_00_101f:
	or A, $00                                                  ; $101f : $04, $00
	tcall 15                                                  ; $1021 : $f1
	nop                                                  ; $1022 : $00
	bvc br_00_1017                                                  ; $1023 : $50, $f2

	nop                                                  ; $1025 : $00
	setp                                                  ; $1026 : $40
	mov A, [$00]+Y                                                  ; $1027 : $f7, $00
	dec X                                                  ; $1029 : $1d
	eor A, (X)                                                  ; $102a : $46
	asl !$780a                                                  ; $102b : $0c, $0a, $78
	dbnz Y, -$01                                                  ; $102e : $fe, $ff

br_00_1030:
	stop                                                  ; $1030 : $ff
	nop                                                  ; $1031 : $00
	nop                                                  ; $1032 : $00
	set1 $06.0                                                  ; $1033 : $02, $06
	or A, [$07+X]                                                  ; $1035 : $07, $07
	nop                                                  ; $1037 : $00

br_00_1038:
	tcall 2                                                  ; $1038 : $21
	nop                                                  ; $1039 : $00
	tcall 15                                                  ; $103a : $f1
	nop                                                  ; $103b : $00
	bmi br_00_1030                                                  ; $103c : $30, $f2

	nop                                                  ; $103e : $00
	setp                                                  ; $103f : $40
	mov A, [$00]+Y                                                  ; $1040 : $f7, $00
	tcall 0                                                  ; $1042 : $01
	eor $0a, $12                                                  ; $1043 : $49, $12, $0a
	cmp $12, #$47                                                  ; $1046 : $78, $47, $12
	or1 c, $0960.2                                                  ; $1049 : $0a, $60, $49
	clr1 $0a.0                                                  ; $104c : $12, $0a
	setp                                                  ; $104e : $40
	eor A, [$12+X]                                                  ; $104f : $47, $12
	or1 c, $1e30.7                                                  ; $1051 : $0a, $30, $fe
	stop                                                  ; $1054 : $ff
	tcall 1                                                  ; $1055 : $11
	nop                                                  ; $1056 : $00
	tcall 15                                                  ; $1057 : $f1
	nop                                                  ; $1058 : $00
	bmi -$0e                                                  ; $1059 : $30, $f2

	nop                                                  ; $105b : $00
	setp                                                  ; $105c : $40
	mov A, [$00]+Y                                                  ; $105d : $f7, $00
	tcall 1                                                  ; $105f : $11
	stop                                                  ; $1060 : $ff
	bpl br_00_1081                                                  ; $1061 : $10, $1e

	rol A                                                  ; $1063 : $3c
	clr1 $01.0                                                  ; $1064 : $12, $01
	setp                                                  ; $1066 : $40
	rol A                                                  ; $1067 : $3c
	clr1 $01.0                                                  ; $1068 : $12, $01
	bmi br_00_10a8                                                  ; $106a : $30, $3c

	clr1 $01.0                                                  ; $106c : $12, $01
	or $12, #$3c                                                  ; $106e : $18, $3c, $12
	tcall 0                                                  ; $1071 : $01

br_00_1072:
	bpl br_00_1072                                                  ; $1072 : $10, $fe

	stop                                                  ; $1074 : $ff

br_00_1075:
	stop                                                  ; $1075 : $ff

br_00_1076:
	stop                                                  ; $1076 : $ff
	stop                                                  ; $1077 : $ff
	set1 $05.0                                                  ; $1078 : $02, $05
	or A, (X)                                                  ; $107a : $06
	or A, [$00+X]                                                  ; $107b : $07, $00
	bmi br_00_107f                                                  ; $107d : $30, $00

br_00_107f:
	tcall 15                                                  ; $107f : $f1
	nop                                                  ; $1080 : $00

br_00_1081:
	bmi br_00_1075                                                  ; $1081 : $30, $f2

	nop                                                  ; $1083 : $00

br_00_1084:
	setp                                                  ; $1084 : $40
	mov A, [$00]+Y                                                  ; $1085 : $f7, $00
	tcall 0                                                  ; $1087 : $01
	eor A, [$06+X]                                                  ; $1088 : $47, $06
	set1 $60.0                                                  ; $108a : $02, $60
	mov A, [$00]+Y                                                  ; $108c : $f7, $00
	dec X                                                  ; $108e : $1d
	eor A, #$06                                                  ; $108f : $48, $06
	or A, !$4860                                                  ; $1091 : $05, $60, $48
	or A, (X)                                                  ; $1094 : $06
	or A, !$4850                                                  ; $1095 : $05, $50, $48
	or A, (X)                                                  ; $1098 : $06
	or A, !$4840                                                  ; $1099 : $05, $40, $48
	or A, (X)                                                  ; $109c : $06
	or A, !$4830                                                  ; $109d : $05, $30, $48
	or A, (X)                                                  ; $10a0 : $06
	or A, !$4818                                                  ; $10a1 : $05, $18, $48
	or A, (X)                                                  ; $10a4 : $06
	or A, !$fe08                                                  ; $10a5 : $05, $08, $fe

br_00_10a8:
	tcall 15                                                  ; $10a8 : $f1
	nop                                                  ; $10a9 : $00
	bmi -$01                                                  ; $10aa : $30, $ff

	tcall 1                                                  ; $10ac : $11
	nop                                                  ; $10ad : $00
	clr1 $00.7                                                  ; $10ae : $f2, $00
	setp                                                  ; $10b0 : $40
	mov A, [$00]+Y                                                  ; $10b1 : $f7, $00
	brk                                                  ; $10b3 : $0f


	stop                                                  ; $10b4 : $ff
	bpl br_00_10d5                                                  ; $10b5 : $10, $1e

	and A, $06                                                  ; $10b7 : $24, $06
	tcall 0                                                  ; $10b9 : $01
	cmp $0c, #$28                                                  ; $10ba : $78, $28, $0c
	tcall 0                                                  ; $10bd : $01
	cmp $ff, #$fe                                                  ; $10be : $78, $fe, $ff
	stop                                                  ; $10c1 : $ff
	stop                                                  ; $10c2 : $ff
	stop                                                  ; $10c3 : $ff
	set1 $06.0                                                  ; $10c4 : $02, $06
	or A, [$07+X]                                                  ; $10c6 : $07, $07
	nop                                                  ; $10c8 : $00
	or (X), (Y)                                                  ; $10c9 : $19
	nop                                                  ; $10ca : $00
	clr1 $00.7                                                  ; $10cb : $f2, $00
	setp                                                  ; $10cd : $40
	mov A, [$00]+Y                                                  ; $10ce : $f7, $00
	brk                                                  ; $10d0 : $0f


	tcall 15                                                  ; $10d1 : $f1
	nop                                                  ; $10d2 : $00
	bmi $1a                                                  ; $10d3 : $30, $1a

br_00_10d5:
	or A, $03                                                  ; $10d5 : $04, $03
	dbnz $9b, br_00_1076                                                  ; $10d7 : $6e, $9b, $9c

	mov X, SP                                                  ; $10da : $9d
	div YA, X                                                  ; $10db : $9e
	dbnz Y, -$01                                                  ; $10dc : $fe, $ff

br_00_10de:
	tcall 1                                                  ; $10de : $11
	nop                                                  ; $10df : $00
	clr1 $00.7                                                  ; $10e0 : $f2, $00
	setp                                                  ; $10e2 : $40
	tcall 15                                                  ; $10e3 : $f1
	nop                                                  ; $10e4 : $00
	bmi br_00_10de                                                  ; $10e5 : $30, $f7

	nop                                                  ; $10e7 : $00
	brk                                                  ; $10e8 : $0f


	stop                                                  ; $10e9 : $ff
	bpl $10                                                  ; $10ea : $10, $10

	and A, $14                                                  ; $10ec : $24, $14
	bbc $60.0, -$02                                                  ; $10ee : $13, $60, $fe

	stop                                                  ; $10f1 : $ff
	stop                                                  ; $10f2 : $ff
	stop                                                  ; $10f3 : $ff
	stop                                                  ; $10f4 : $ff
	tcall 0                                                  ; $10f5 : $01
	or A, (X)                                                  ; $10f6 : $06
	or A, $00                                                  ; $10f7 : $04, $00
	tcall 15                                                  ; $10f9 : $f1
	nop                                                  ; $10fa : $00
	bmi -$0e                                                  ; $10fb : $30, $f2

	nop                                                  ; $10fd : $00
	setp                                                  ; $10fe : $40
	mov A, [$00]+Y                                                  ; $10ff : $f7, $00
	dec X                                                  ; $1101 : $1d
	rol A                                                  ; $1102 : $3c
	or A, (X)                                                  ; $1103 : $06
	or A, !$3c78                                                  ; $1104 : $05, $78, $3c
	or A, (X)                                                  ; $1107 : $06
	or A, !$4040                                                  ; $1108 : $05, $40, $40
	or A, (X)                                                  ; $110b : $06
	or A, !$4078                                                  ; $110c : $05, $78, $40
	or A, (X)                                                  ; $110f : $06
	or A, !$4340                                                  ; $1110 : $05, $40, $43
	or A, (X)                                                  ; $1113 : $06
	or A, !$4378                                                  ; $1114 : $05, $78, $43
	or A, (X)                                                  ; $1117 : $06
	or A, !$4640                                                  ; $1118 : $05, $40, $46
	or A, (X)                                                  ; $111b : $06
	or A, !$4666                                                  ; $111c : $05, $66, $46
	or A, (X)                                                  ; $111f : $06
	or A, !$4840                                                  ; $1120 : $05, $40, $48
	or A, (X)                                                  ; $1123 : $06
	or A, !$4866                                                  ; $1124 : $05, $66, $48
	or A, (X)                                                  ; $1127 : $06
	or A, !$4860                                                  ; $1128 : $05, $60, $48
	or A, (X)                                                  ; $112b : $06
	or A, !$4850                                                  ; $112c : $05, $50, $48
	or A, (X)                                                  ; $112f : $06
	or A, !$4848                                                  ; $1130 : $05, $48, $48
	or A, (X)                                                  ; $1133 : $06
	or A, !$4840                                                  ; $1134 : $05, $40, $48
	or A, (X)                                                  ; $1137 : $06
	or A, !$4834                                                  ; $1138 : $05, $34, $48
	or A, (X)                                                  ; $113b : $06
	or A, !$4830                                                  ; $113c : $05, $30, $48
	or A, (X)                                                  ; $113f : $06
	or A, !$4820                                                  ; $1140 : $05, $20, $48
	or A, (X)                                                  ; $1143 : $06
	or A, !$4818                                                  ; $1144 : $05, $18, $48
	or A, (X)                                                  ; $1147 : $06
	or A, !$4810                                                  ; $1148 : $05, $10, $48
	or A, (X)                                                  ; $114b : $06
	or A, !$fe08                                                  ; $114c : $05, $08, $fe
	set1 $b3.0                                                  ; $114f : $02, $b3
	mov A, !$0202+Y                                                  ; $1151 : $f6, $02, $02
	or A, !$0706                                                  ; $1154 : $05, $06, $07
	nop                                                  ; $1157 : $00
	asl A                                                  ; $1158 : $1c
	nop                                                  ; $1159 : $00
	tcall 15                                                  ; $115a : $f1
	nop                                                  ; $115b : $00
	bmi -$0e                                                  ; $115c : $30, $f2

	nop                                                  ; $115e : $00
	setp                                                  ; $115f : $40
	mov A, [$00]+Y                                                  ; $1160 : $f7, $00
	brk                                                  ; $1162 : $0f


	mov Y, $0e+X                                                  ; $1163 : $fb, $0e
	or A, $03                                                  ; $1165 : $04, $03
	cmp $90, #$8f                                                  ; $1167 : $78, $8f, $90
	clr1 $92.4                                                  ; $116a : $92, $92
	inc Y                                                  ; $116c : $fc
	nop                                                  ; $116d : $00
	dbnz Y, -$0f                                                  ; $116e : $fe, $f1

	nop                                                  ; $1170 : $00
	bmi -$01                                                  ; $1171 : $30, $ff

	tcall 1                                                  ; $1173 : $11
	nop                                                  ; $1174 : $00
	clr1 $00.7                                                  ; $1175 : $f2, $00
	setp                                                  ; $1177 : $40
	mov A, [$00]+Y                                                  ; $1178 : $f7, $00
	brk                                                  ; $117a : $0f


	stop                                                  ; $117b : $ff
	bpl br_00_118e                                                  ; $117c : $10, $10

	mov Y, $24+X                                                  ; $117e : $fb, $24
	cmp A, $63                                                  ; $1180 : $64, $63
	setp                                                  ; $1182 : $40
	inc Y                                                  ; $1183 : $fc
	nop                                                  ; $1184 : $00
	dbnz Y, -$01                                                  ; $1185 : $fe, $ff

	stop                                                  ; $1187 : $ff
	stop                                                  ; $1188 : $ff
	stop                                                  ; $1189 : $ff
	tcall 0                                                  ; $118a : $01
	or A, (X)                                                  ; $118b : $06
	or A, $00                                                  ; $118c : $04, $00

br_00_118e:
	tcall 15                                                  ; $118e : $f1
	nop                                                  ; $118f : $00
	cmp $00, #$f2                                                  ; $1190 : $78, $f2, $00
	setp                                                  ; $1193 : $40
	mov A, [$00]+Y                                                  ; $1194 : $f7, $00
	tset1 !$044a                                                  ; $1196 : $0e, $4a, $04
	bbs $78.0, br_00_11e6                                                  ; $1199 : $03, $78, $4a

	set1 $02.0                                                  ; $119c : $02, $02
	bvc br_00_11ea                                                  ; $119e : $50, $4a

	set1 $02.0                                                  ; $11a0 : $02, $02
	setp                                                  ; $11a2 : $40
	and1 c, $0202.0                                                  ; $11a3 : $4a, $02, $02
	bmi $4a                                                  ; $11a6 : $30, $4a

	set1 $02.0                                                  ; $11a8 : $02, $02
	or $02, #$4a                                                  ; $11aa : $18, $4a, $02
	set1 $10.0                                                  ; $11ad : $02, $10
	and1 c, $0102.0                                                  ; $11af : $4a, $02, $01
	or A, #$fe                                                  ; $11b2 : $08, $fe
	stop                                                  ; $11b4 : $ff
	stop                                                  ; $11b5 : $ff
	stop                                                  ; $11b6 : $ff
	stop                                                  ; $11b7 : $ff
	tcall 0                                                  ; $11b8 : $01
	or A, !$0004                                                  ; $11b9 : $05, $04, $00
	tcall 15                                                  ; $11bc : $f1
	nop                                                  ; $11bd : $00
	bmi -$01                                                  ; $11be : $30, $ff

	tcall 1                                                  ; $11c0 : $11
	nop                                                  ; $11c1 : $00
	clr1 $00.7                                                  ; $11c2 : $f2, $00
	setp                                                  ; $11c4 : $40
	mov A, [$00]+Y                                                  ; $11c5 : $f7, $00
	brk                                                  ; $11c7 : $0f


	stop                                                  ; $11c8 : $ff
	bpl $0e                                                  ; $11c9 : $10, $0e

	rol A                                                  ; $11cb : $3c
	asl !$780a                                                  ; $11cc : $0c, $0a, $78
	rol A                                                  ; $11cf : $3c
	set1 $03.0                                                  ; $11d0 : $02, $03
	clrc                                                  ; $11d2 : $60
	rol A                                                  ; $11d3 : $3c
	set1 $03.0                                                  ; $11d4 : $02, $03
	bvc br_00_1214                                                  ; $11d6 : $50, $3c

	set1 $03.0                                                  ; $11d8 : $02, $03
	eor A, #$3c                                                  ; $11da : $48, $3c
	set1 $03.0                                                  ; $11dc : $02, $03
	setp                                                  ; $11de : $40
	rol A                                                  ; $11df : $3c
	set1 $03.0                                                  ; $11e0 : $02, $03
	and A, $3c+X                                                  ; $11e2 : $34, $3c
	set1 $03.0                                                  ; $11e4 : $02, $03

br_00_11e6:
	bmi $3c                                                  ; $11e6 : $30, $3c

	set1 $03.0                                                  ; $11e8 : $02, $03

br_00_11ea:
	clrp                                                  ; $11ea : $20
	rol A                                                  ; $11eb : $3c
	set1 $03.0                                                  ; $11ec : $02, $03
	or $02, #$3c                                                  ; $11ee : $18, $3c, $02
	bbs $10.0, br_00_1230                                                  ; $11f1 : $03, $10, $3c

	set1 $01.0                                                  ; $11f4 : $02, $01
	or A, #$fe                                                  ; $11f6 : $08, $fe
	stop                                                  ; $11f8 : $ff
	stop                                                  ; $11f9 : $ff
	stop                                                  ; $11fa : $ff
	stop                                                  ; $11fb : $ff
	tcall 0                                                  ; $11fc : $01
	or A, !$0004                                                  ; $11fd : $05, $04, $00
	tcall 15                                                  ; $1200 : $f1
	nop                                                  ; $1201 : $00
	bmi -$01                                                  ; $1202 : $30, $ff

	tcall 1                                                  ; $1204 : $11
	nop                                                  ; $1205 : $00
	clr1 $00.7                                                  ; $1206 : $f2, $00
	setp                                                  ; $1208 : $40
	mov A, [$00]+Y                                                  ; $1209 : $f7, $00
	brk                                                  ; $120b : $0f


	stop                                                  ; $120c : $ff
	bpl $1c                                                  ; $120d : $10, $1c

	rol A                                                  ; $120f : $3c
	or A, !$0806                                                  ; $1210 : $05, $06, $08
	rol A                                                  ; $1213 : $3c

br_00_1214:
	or A, !$1006                                                  ; $1214 : $05, $06, $10
	rol A                                                  ; $1217 : $3c
	or A, !$1806                                                  ; $1218 : $05, $06, $18
	rol A                                                  ; $121b : $3c
	or A, !$2006                                                  ; $121c : $05, $06, $20
	rol A                                                  ; $121f : $3c
	or A, !$3006                                                  ; $1220 : $05, $06, $30
	mov Y, $3c+X                                                  ; $1223 : $fb, $3c
	or A, !$3806                                                  ; $1225 : $05, $06, $38
	inc Y                                                  ; $1228 : $fc
	nop                                                  ; $1229 : $00
	dbnz Y, -$01                                                  ; $122a : $fe, $ff

	stop                                                  ; $122c : $ff
	stop                                                  ; $122d : $ff
	stop                                                  ; $122e : $ff
	tcall 0                                                  ; $122f : $01

br_00_1230:
	or A, [$04+X]                                                  ; $1230 : $07, $04
	nop                                                  ; $1232 : $00
	tcall 15                                                  ; $1233 : $f1
	nop                                                  ; $1234 : $00
	bmi -$01                                                  ; $1235 : $30, $ff

	tcall 1                                                  ; $1237 : $11
	nop                                                  ; $1238 : $00
	clr1 $00.7                                                  ; $1239 : $f2, $00
	setp                                                  ; $123b : $40
	mov A, [$00]+Y                                                  ; $123c : $f7, $00
	brk                                                  ; $123e : $0f


	stop                                                  ; $123f : $ff
	bpl br_00_125e                                                  ; $1240 : $10, $1c

	rol A                                                  ; $1242 : $3c
	bbs $02.0, br_00_1296                                                  ; $1243 : $03, $02, $50

	dbnz Y, br_00_1248                                                  ; $1246 : $fe, $00

br_00_1248:
	nop                                                  ; $1248 : $00
	nop                                                  ; $1249 : $00
	nop                                                  ; $124a : $00
	tcall 0                                                  ; $124b : $01
	or A, [$04+X]                                                  ; $124c : $07, $04
	nop                                                  ; $124e : $00

br_00_124f:
	tcall 15                                                  ; $124f : $f1
	nop                                                  ; $1250 : $00
	bmi -$0e                                                  ; $1251 : $30, $f2

	nop                                                  ; $1253 : $00
	setp                                                  ; $1254 : $40
	mov A, [$00]+Y                                                  ; $1255 : $f7, $00
	brk                                                  ; $1257 : $0f


	rol A                                                  ; $1258 : $3c
	set1 $01.0                                                  ; $1259 : $02, $01
	bvc -$43                                                  ; $125b : $50, $bd

	das A                                                  ; $125d : $be

br_00_125e:
	mov A, (X)+                                                 ; $125e : $bf
	call !$0102                                                  ; $125f : $3f, $02, $01
	setp                                                  ; $1262 : $40
	call !$0102                                                  ; $1263 : $3f, $02, $01
	bmi br_00_12a7                                                  ; $1266 : $30, $3f

	set1 $01.0                                                  ; $1268 : $02, $01
	or $02, #$3f                                                  ; $126a : $18, $3f, $02
	tcall 0                                                  ; $126d : $01
	asl !$023f                                                  ; $126e : $0c, $3f, $02
	tcall 0                                                  ; $1271 : $01

br_00_1272:
	or A, #$fe                                                  ; $1272 : $08, $fe
	stop                                                  ; $1274 : $ff
	stop                                                  ; $1275 : $ff
	stop                                                  ; $1276 : $ff
	stop                                                  ; $1277 : $ff
	tcall 0                                                  ; $1278 : $01
	or A, [$04+X]                                                  ; $1279 : $07, $04
	nop                                                  ; $127b : $00
	tcall 15                                                  ; $127c : $f1
	nop                                                  ; $127d : $00
	bmi br_00_1272                                                  ; $127e : $30, $f2

	nop                                                  ; $1280 : $00
	setp                                                  ; $1281 : $40
	mov A, [$00]+Y                                                  ; $1282 : $f7, $00
	brk                                                  ; $1284 : $0f


	eor A, $01                                                  ; $1285 : $44, $01
	tcall 0                                                  ; $1287 : $01
	bvc br_00_124f                                                  ; $1288 : $50, $c5

	mov (X), A                                                  ; $128a : $c6
	mov [$47+X], A                                                  ; $128b : $c7, $47
	tcall 0                                                  ; $128d : $01
	tcall 0                                                  ; $128e : $01
	eor A, #$47                                                  ; $128f : $48, $47
	tcall 0                                                  ; $1291 : $01
	tcall 0                                                  ; $1292 : $01
	setp                                                  ; $1293 : $40
	eor A, [$01+X]                                                  ; $1294 : $47, $01

br_00_1296:
	tcall 0                                                  ; $1296 : $01
	and A, $47+X                                                  ; $1297 : $34, $47
	tcall 0                                                  ; $1299 : $01
	tcall 0                                                  ; $129a : $01
	bmi $47                                                  ; $129b : $30, $47

	tcall 0                                                  ; $129d : $01
	tcall 0                                                  ; $129e : $01
	clrp                                                  ; $129f : $20
	eor A, [$01+X]                                                  ; $12a0 : $47, $01
	tcall 0                                                  ; $12a2 : $01
	or $01, #$47                                                  ; $12a3 : $18, $47, $01
	tcall 0                                                  ; $12a6 : $01

br_00_12a7:
	bpl br_00_12f0                                                  ; $12a7 : $10, $47

	tcall 0                                                  ; $12a9 : $01
	tcall 0                                                  ; $12aa : $01
	or A, #$f7                                                  ; $12ab : $08, $f7
	nop                                                  ; $12ad : $00
	clrc                                                  ; $12ae : $60
	mov A, [$00]+Y                                                  ; $12af : $f7, $00
	tset1 !$0242                                                  ; $12b1 : $0e, $42, $02
	set1 $78.0                                                  ; $12b4 : $02, $78
	set1 $42.6                                                  ; $12b6 : $c2, $42
	bbs $02.0, $78                                                  ; $12b8 : $03, $02, $78

	set1 $04.2                                                  ; $12bb : $42, $04
	set1 $78.0                                                  ; $12bd : $02, $78
	set1 $05.2                                                  ; $12bf : $42, $05
	set1 $78.0                                                  ; $12c1 : $02, $78
	set1 $06.2                                                  ; $12c3 : $42, $06
	set1 $78.0                                                  ; $12c5 : $02, $78
	set1 $02.2                                                  ; $12c7 : $42, $02
	set1 $60.0                                                  ; $12c9 : $02, $60
	set1 $02.2                                                  ; $12cb : $42, $02
	set1 $58.0                                                  ; $12cd : $02, $58
	set1 $02.2                                                  ; $12cf : $42, $02
	set1 $48.0                                                  ; $12d1 : $02, $48
	set1 $02.2                                                  ; $12d3 : $42, $02
	set1 $40.0                                                  ; $12d5 : $02, $40
	set1 $02.2                                                  ; $12d7 : $42, $02
	set1 $34.0                                                  ; $12d9 : $02, $34
	set1 $02.2                                                  ; $12db : $42, $02
	set1 $30.0                                                  ; $12dd : $02, $30
	set1 $02.2                                                  ; $12df : $42, $02
	set1 $20.0                                                  ; $12e1 : $02, $20
	set1 $02.2                                                  ; $12e3 : $42, $02

br_00_12e5:
	set1 $18.0                                                  ; $12e5 : $02, $18
	set1 $02.2                                                  ; $12e7 : $42, $02
	set1 $10.0                                                  ; $12e9 : $02, $10
	set1 $02.2                                                  ; $12eb : $42, $02
	tcall 0                                                  ; $12ed : $01

br_00_12ee:
	or A, #$fe                                                  ; $12ee : $08, $fe

br_00_12f0:
	tcall 1                                                  ; $12f0 : $11
	rol A                                                  ; $12f1 : $3c
	or A, (X)                                                  ; $12f2 : $06
	or A, !$0701                                                  ; $12f3 : $05, $01, $07
	or A, $00                                                  ; $12f6 : $04, $00
	tcall 15                                                  ; $12f8 : $f1
	nop                                                  ; $12f9 : $00
	bmi br_00_12ee                                                  ; $12fa : $30, $f2

	nop                                                  ; $12fc : $00
	setp                                                  ; $12fd : $40
	mov A, [$00]+Y                                                  ; $12fe : $f7, $00
	brk                                                  ; $1300 : $0f


	cbne $02, $01                                                  ; $1301 : $2e, $02, $01

	bvc -$51                                                  ; $1304 : $50, $af

	bcs -$4f                                                  ; $1306 : $b0, $b1

	tcall 3                                                  ; $1308 : $31
	set1 $01.0                                                  ; $1309 : $02, $01
	setp                                                  ; $130b : $40
	tcall 3                                                  ; $130c : $31
	set1 $01.0                                                  ; $130d : $02, $01
	bmi $31                                                  ; $130f : $30, $31

	set1 $01.0                                                  ; $1311 : $02, $01
	or $02, #$31                                                  ; $1313 : $18, $31, $02
	tcall 0                                                  ; $1316 : $01
	asl !$0231                                                  ; $1317 : $0c, $31, $02
	tcall 0                                                  ; $131a : $01
	or A, #$fe                                                  ; $131b : $08, $fe
	stop                                                  ; $131d : $ff
	stop                                                  ; $131e : $ff
	stop                                                  ; $131f : $ff
	stop                                                  ; $1320 : $ff
	tcall 0                                                  ; $1321 : $01
	or A, [$04+X]                                                  ; $1322 : $07, $04
	nop                                                  ; $1324 : $00
	clr1 $00.7                                                  ; $1325 : $f2, $00
	setp                                                  ; $1327 : $40
	mov A, [$00]+Y                                                  ; $1328 : $f7, $00

br_00_132a:
	brk                                                  ; $132a : $0f


	tcall 15                                                  ; $132b : $f1
	nop                                                  ; $132c : $00
	bmi br_00_132a                                                  ; $132d : $30, $fb

	bmi $04                                                  ; $132f : $30, $04

	bbs $50.0, br_00_12e5                                                  ; $1331 : $03, $50, $b1

	clr1 $b3.5                                                  ; $1334 : $b2, $b3
	inc Y                                                  ; $1336 : $fc
	nop                                                  ; $1337 : $00
	dbnz Y, br_00_133a                                                  ; $1338 : $fe, $00

br_00_133a:
	nop                                                  ; $133a : $00
	nop                                                  ; $133b : $00
	nop                                                  ; $133c : $00
	tcall 0                                                  ; $133d : $01
	or A, [$04+X]                                                  ; $133e : $07, $04
	nop                                                  ; $1340 : $00
	clr1 $00.7                                                  ; $1341 : $f2, $00
	setp                                                  ; $1343 : $40
	mov A, [$00]+Y                                                  ; $1344 : $f7, $00
	brk                                                  ; $1346 : $0f


	tcall 15                                                  ; $1347 : $f1
	nop                                                  ; $1348 : $00
	bmi br_00_137b                                                  ; $1349 : $30, $30

	bbs $03.0, $50                                                  ; $134b : $03, $03, $50

	tcall 11                                                  ; $134e : $b1
	clr1 $b3.5                                                  ; $134f : $b2, $b3
	bbc $02.1, br_00_1356                                                  ; $1351 : $33, $02, $02

	bvc $33                                                  ; $1354 : $50, $33

br_00_1356:
	set1 $02.0                                                  ; $1356 : $02, $02
	setp                                                  ; $1358 : $40
	bbc $02.1, br_00_135e                                                  ; $1359 : $33, $02, $02

	bmi br_00_1391                                                  ; $135c : $30, $33

br_00_135e:
	set1 $01.0                                                  ; $135e : $02, $01
	or $ff, #$fe                                                  ; $1360 : $18, $fe, $ff
	stop                                                  ; $1363 : $ff
	stop                                                  ; $1364 : $ff
	stop                                                  ; $1365 : $ff

br_00_1366:
	set1 $06.0                                                  ; $1366 : $02, $06
	or A, [$07+X]                                                  ; $1368 : $07, $07
	nop                                                  ; $136a : $00
	eor A, !$ff00+Y                                                  ; $136b : $56, $00, $ff
	tcall 1                                                  ; $136e : $11
	nop                                                  ; $136f : $00
	stop                                                  ; $1370 : $ff
	bbs $00.0, br_00_1366                                                  ; $1371 : $03, $00, $f2

	nop                                                  ; $1374 : $00
	setp                                                  ; $1375 : $40
	mov A, [$00]+Y                                                  ; $1376 : $f7, $00
	clrp                                                  ; $1378 : $20
	tcall 15                                                  ; $1379 : $f1
	nop                                                  ; $137a : $00

br_00_137b:
	setp                                                  ; $137b : $40
	stop                                                  ; $137c : $ff
	bpl $16                                                  ; $137d : $10, $16

	rol A                                                  ; $137f : $3c

br_00_1380:
	bbs $04.0, br_00_139b                                                  ; $1380 : $03, $04, $18

	rol A                                                  ; $1383 : $3c
	bbs $04.0, br_00_13a7                                                  ; $1384 : $03, $04, $20

	rol A                                                  ; $1387 : $3c
	bbs $04.0, br_00_13bb                                                  ; $1388 : $03, $04, $30

	rol A                                                  ; $138b : $3c
	bbs $04.0, $50                                                  ; $138c : $03, $04, $50

	rol A                                                  ; $138f : $3c
	asl A                                                  ; $1390 : $1c

br_00_1391:
	dec X                                                  ; $1391 : $1d
	clrc                                                  ; $1392 : $60
	rol A                                                  ; $1393 : $3c
	bbs $04.0, $40                                                  ; $1394 : $03, $04, $40

	rol A                                                  ; $1397 : $3c
	bbs $04.0, $38                                                  ; $1398 : $03, $04, $38

br_00_139b:
	rol A                                                  ; $139b : $3c
	bbs $04.0, br_00_13d2                                                  ; $139c : $03, $04, $33

	rol A                                                  ; $139f : $3c
	bbs $04.0, br_00_13d1                                                  ; $13a0 : $03, $04, $2e

	rol A                                                  ; $13a3 : $3c
	bbs $04.0, $29                                                  ; $13a4 : $03, $04, $29

br_00_13a7:
	rol A                                                  ; $13a7 : $3c
	bbs $04.0, br_00_13cf                                                  ; $13a8 : $03, $04, $24

	rol A                                                  ; $13ab : $3c
	bbs $04.0, $1f                                                  ; $13ac : $03, $04, $1f

	rol A                                                  ; $13af : $3c
	bbs $04.0, $1a                                                  ; $13b0 : $03, $04, $1a

	rol A                                                  ; $13b3 : $3c
	bbs $04.0, br_00_13cc                                                  ; $13b4 : $03, $04, $15

	rol A                                                  ; $13b7 : $3c
	bbs $02.0, $12                                                  ; $13b8 : $03, $02, $12

br_00_13bb:
	dbnz Y, -$01                                                  ; $13bb : $fe, $ff

	bbs $00.0, -$0e                                                  ; $13bd : $03, $00, $f2

	nop                                                  ; $13c0 : $00
	setp                                                  ; $13c1 : $40
	mov A, [$00]+Y                                                  ; $13c2 : $f7, $00
	cmp X, !$00f1                                                  ; $13c4 : $1e, $f1, $00
	setp                                                  ; $13c7 : $40
	and A, $02+X                                                  ; $13c8 : $34, $02
	set1 $40.0                                                  ; $13ca : $02, $40

br_00_13cc:
	bbc $b2.5, br_00_1380                                                  ; $13cc : $b3, $b2, $b1

br_00_13cf:
	bcs br_00_1380                                                  ; $13cf : $b0, $af

br_00_13d1:
	pop A                                                  ; $13d1 : $ae

br_00_13d2:
	cmp Y, #$ac                                                  ; $13d2 : $ad, $ac
	inc $aa                                                  ; $13d4 : $ab, $aa
	sbc $a7, $a8                                                  ; $13d6 : $a9, $a8, $a7
	sbc A, (X)                                                  ; $13d9 : $a6

br_00_13da:
	sbc A, !$a4a4                                                  ; $13da : $a5, $a4, $a4
	bbs $22.5, br_00_13e2                                                  ; $13dd : $a3, $22, $02

	set1 $38.0                                                  ; $13e0 : $02, $38

br_00_13e2:
	tcall 2                                                  ; $13e2 : $21
	set1 $02.0                                                  ; $13e3 : $02, $02
	bmi $20                                                  ; $13e5 : $30, $20

	set1 $02.0                                                  ; $13e7 : $02, $02
	and A, #$1f                                                  ; $13e9 : $28, $1f
	set1 $02.0                                                  ; $13eb : $02, $02
	clrp                                                  ; $13ed : $20
	cmp X, !$0202                                                  ; $13ee : $1e, $02, $02
	or $02, #$1d                                                  ; $13f1 : $18, $1d, $02
	set1 $10.0                                                  ; $13f4 : $02, $10
	asl A                                                  ; $13f6 : $1c
	set1 $02.0                                                  ; $13f7 : $02, $02
	or A, #$fe                                                  ; $13f9 : $08, $fe
	rol A                                                  ; $13fb : $3c
	or A, (X)                                                  ; $13fc : $06
	or A, !$0128                                                  ; $13fd : $05, $28, $01
	or A, [$04+X]                                                  ; $1400 : $07, $04
	nop                                                  ; $1402 : $00
	clr1 $00.7                                                  ; $1403 : $f2, $00
	setp                                                  ; $1405 : $40
	mov A, [$00]+Y                                                  ; $1406 : $f7, $00
	tset1 !$00f1                                                  ; $1408 : $0e, $f1, $00
	cmp $06, #$2f                                                  ; $140b : $78, $2f, $06
	or A, !$fe78                                                  ; $140e : $05, $78, $fe
	stop                                                  ; $1411 : $ff
	stop                                                  ; $1412 : $ff
	nop                                                  ; $1413 : $00
	nop                                                  ; $1414 : $00
	or A, #$00                                                  ; $1415 : $08, $00

br_00_1417:
	tcall 0                                                  ; $1417 : $01
	set1 $03.0                                                  ; $1418 : $02, $03
	or A, $05                                                  ; $141a : $04, $05
	or A, (X)                                                  ; $141c : $06
	or A, [$19+X]                                                  ; $141d : $07, $19
	nop                                                  ; $141f : $00
	inc X                                                  ; $1420 : $3d
	nop                                                  ; $1421 : $00
	tcall 6                                                  ; $1422 : $61
	nop                                                  ; $1423 : $00
	adc A, !$8f00                                                  ; $1424 : $85, $00, $8f
	nop                                                  ; $1427 : $00
	adc (X), (Y)                                                  ; $1428 : $99
	nop                                                  ; $1429 : $00
	bbs $00.5, br_00_13da                                                  ; $142a : $a3, $00, $ad

	nop                                                  ; $142d : $00
	clr1 $00.7                                                  ; $142e : $f2, $00
	setp                                                  ; $1430 : $40
	tcall 15                                                  ; $1431 : $f1
	nop                                                  ; $1432 : $00
	bmi -$09                                                  ; $1433 : $30, $f7

	nop                                                  ; $1435 : $00
	or A, !$182f+X                                                  ; $1436 : $15, $2f, $18
	or A, !$2f70+Y                                                  ; $1439 : $16, $70, $2f
	or A, #$06                                                  ; $143c : $08, $06

br_00_143e:
	bvs -$51                                                  ; $143e : $70, $af

	mov (X)+, A                                                  ; $1440 : $af
	bra $18                                                  ; $1441 : $2f, $18

	or A, !$3170+Y                                                  ; $1443 : $16, $70, $31
	clr1 $10.0                                                  ; $1446 : $12, $10
	bvs br_00_147b                                                  ; $1448 : $70, $31

	or A, (X)                                                  ; $144a : $06
	or A, !$3370                                                  ; $144b : $05, $70, $33
	clrc                                                  ; $144e : $60
	lsr A                                                  ; $144f : $5c

br_00_1450:
	bvs br_00_1450                                                  ; $1450 : $70, $fe

	clr1 $00.7                                                  ; $1452 : $f2, $00
	setp                                                  ; $1454 : $40
	tcall 15                                                  ; $1455 : $f1
	nop                                                  ; $1456 : $00
	bmi br_00_1450                                                  ; $1457 : $30, $f7

	nop                                                  ; $1459 : $00
	or A, !$1833+X                                                  ; $145a : $15, $33, $18
	or A, !$3370+Y                                                  ; $145d : $16, $70, $33
	or A, #$06                                                  ; $1460 : $08, $06
	bvs br_00_1417                                                  ; $1462 : $70, $b3

	bbc $34.5, $18                                                  ; $1464 : $b3, $34, $18

	or A, !$3670+Y                                                  ; $1467 : $16, $70, $36
	clr1 $10.0                                                  ; $146a : $12, $10
	bvs $36                                                  ; $146c : $70, $36

	or A, (X)                                                  ; $146e : $06
	or A, !$3670                                                  ; $146f : $05, $70, $36
	clrc                                                  ; $1472 : $60
	lsr A                                                  ; $1473 : $5c

br_00_1474:
	bvs br_00_1474                                                  ; $1474 : $70, $fe

	clr1 $00.7                                                  ; $1476 : $f2, $00
	setp                                                  ; $1478 : $40
	tcall 15                                                  ; $1479 : $f1
	nop                                                  ; $147a : $00

br_00_147b:
	bmi br_00_1474                                                  ; $147b : $30, $f7

	nop                                                  ; $147d : $00
	or A, !$1836+X                                                  ; $147e : $15, $36, $18
	or A, !$3670+Y                                                  ; $1481 : $16, $70, $36
	or A, #$06                                                  ; $1484 : $08, $06
	bvs br_00_143e                                                  ; $1486 : $70, $b6

	sbc A, !$1838+Y                                                  ; $1488 : $b6, $38, $18
	or A, !$3a70+Y                                                  ; $148b : $16, $70, $3a
	clr1 $10.0                                                  ; $148e : $12, $10
	bvs $3a                                                  ; $1490 : $70, $3a

	or A, (X)                                                  ; $1492 : $06
	or A, !$3b70                                                  ; $1493 : $05, $70, $3b
	clrc                                                  ; $1496 : $60

br_00_1497:
	lsr A                                                  ; $1497 : $5c

br_00_1498:
	bvs br_00_1498                                                  ; $1498 : $70, $fe

	clr1 $00.7                                                  ; $149a : $f2, $00
	setp                                                  ; $149c : $40
	tcall 15                                                  ; $149d : $f1
	nop                                                  ; $149e : $00
	setp                                                  ; $149f : $40
	mov A, [$c0]+Y                                                  ; $14a0 : $f7, $c0
	nop                                                  ; $14a2 : $00
	dbnz Y, br_00_1497                                                  ; $14a3 : $fe, $f2

	nop                                                  ; $14a5 : $00
	setp                                                  ; $14a6 : $40
	tcall 15                                                  ; $14a7 : $f1
	nop                                                  ; $14a8 : $00
	setp                                                  ; $14a9 : $40
	mov A, [$c0]+Y                                                  ; $14aa : $f7, $c0
	nop                                                  ; $14ac : $00
	dbnz Y, -$0e                                                  ; $14ad : $fe, $f2

	nop                                                  ; $14af : $00
	setp                                                  ; $14b0 : $40
	tcall 15                                                  ; $14b1 : $f1
	nop                                                  ; $14b2 : $00
	setp                                                  ; $14b3 : $40
	mov A, [$c0]+Y                                                  ; $14b4 : $f7, $c0
	nop                                                  ; $14b6 : $00
	dbnz Y, -$0e                                                  ; $14b7 : $fe, $f2

	nop                                                  ; $14b9 : $00
	setp                                                  ; $14ba : $40
	tcall 15                                                  ; $14bb : $f1
	nop                                                  ; $14bc : $00
	setp                                                  ; $14bd : $40
	mov A, [$c0]+Y                                                  ; $14be : $f7, $c0
	nop                                                  ; $14c0 : $00
	dbnz Y, -$0e                                                  ; $14c1 : $fe, $f2

	nop                                                  ; $14c3 : $00
	setp                                                  ; $14c4 : $40
	tcall 15                                                  ; $14c5 : $f1
	nop                                                  ; $14c6 : $00
	setp                                                  ; $14c7 : $40
	mov A, [$c0]+Y                                                  ; $14c8 : $f7, $c0
	nop                                                  ; $14ca : $00
	dbnz Y, br_00_14d2                                                  ; $14cb : $fe, $05

	eor A, !$063c+X                                                  ; $14cd : $55, $3c, $06
	or A, #$00                                                  ; $14d0 : $08, $00

br_00_14d2:
	tcall 0                                                  ; $14d2 : $01
	set1 $03.0                                                  ; $14d3 : $02, $03
	or A, $05                                                  ; $14d5 : $04, $05
	or A, (X)                                                  ; $14d7 : $06
	or A, [$19+X]                                                  ; $14d8 : $07, $19
	nop                                                  ; $14da : $00
	cbne $00, br_00_152c                                                  ; $14db : $2e, $00, $4e

	nop                                                  ; $14de : $00
	eor $62, #$00                                                  ; $14df : $58, $00, $62
	nop                                                  ; $14e2 : $00
	ror !$7600                                                  ; $14e3 : $6c, $00, $76
	nop                                                  ; $14e6 : $00

br_00_14e7:
	setc                                                  ; $14e7 : $80
	nop                                                  ; $14e8 : $00
	clr1 $00.7                                                  ; $14e9 : $f2, $00
	setp                                                  ; $14eb : $40
	tcall 15                                                  ; $14ec : $f1
	nop                                                  ; $14ed : $00
	bmi br_00_14e7                                                  ; $14ee : $30, $f7

	nop                                                  ; $14f0 : $00

br_00_14f1:
	or (X), (Y)                                                  ; $14f1 : $19
	and A, $18+X                                                  ; $14f2 : $34, $18
	or1 c, $1360.5                                                  ; $14f4 : $0a, $60, $b3
	clr1 $b1.5                                                  ; $14f7 : $b2, $b1
	bmi br_00_155b                                                  ; $14f9 : $30, $60

	lsr A                                                  ; $14fb : $5c

br_00_14fc:
	clrc                                                  ; $14fc : $60
	dbnz Y, br_00_14f1                                                  ; $14fd : $fe, $f2

	nop                                                  ; $14ff : $00
	setp                                                  ; $1500 : $40
	tcall 15                                                  ; $1501 : $f1
	nop                                                  ; $1502 : $00
	bmi br_00_14fc                                                  ; $1503 : $30, $f7

	nop                                                  ; $1505 : $00
	or (X), (Y)                                                  ; $1506 : $19
	and A, [$18]+Y                                                  ; $1507 : $37, $18
	or1 c, $1660.5                                                  ; $1509 : $0a, $60, $b6
	sbc A, !$33b4+X                                                  ; $150c : $b5, $b4, $33
	or A, (X)                                                  ; $150f : $06
	or A, !$b460                                                  ; $1510 : $05, $60, $b4
	bbc $b4.5, -$4d                                                  ; $1513 : $b3, $b4, $b3

	sbc A, $b3+X                                                  ; $1516 : $b4, $b3
	sbc A, $33+X                                                  ; $1518 : $b4, $33
	bmi br_00_1549                                                  ; $151a : $30, $2d

	clrc                                                  ; $151c : $60
	dbnz Y, -$0e                                                  ; $151d : $fe, $f2

	nop                                                  ; $151f : $00
	setp                                                  ; $1520 : $40
	tcall 15                                                  ; $1521 : $f1
	nop                                                  ; $1522 : $00
	setp                                                  ; $1523 : $40
	mov A, [$c0]+Y                                                  ; $1524 : $f7, $c0
	rol A                                                  ; $1526 : $3c
	dbnz Y, -$0e                                                  ; $1527 : $fe, $f2

	nop                                                  ; $1529 : $00
	setp                                                  ; $152a : $40
	tcall 15                                                  ; $152b : $f1

br_00_152c:
	nop                                                  ; $152c : $00
	setp                                                  ; $152d : $40
	mov A, [$c0]+Y                                                  ; $152e : $f7, $c0
	rol A                                                  ; $1530 : $3c
	dbnz Y, -$0e                                                  ; $1531 : $fe, $f2

	nop                                                  ; $1533 : $00
	setp                                                  ; $1534 : $40
	tcall 15                                                  ; $1535 : $f1
	nop                                                  ; $1536 : $00
	setp                                                  ; $1537 : $40
	mov A, [$c0]+Y                                                  ; $1538 : $f7, $c0
	rol A                                                  ; $153a : $3c
	dbnz Y, -$0e                                                  ; $153b : $fe, $f2

	nop                                                  ; $153d : $00
	setp                                                  ; $153e : $40
	tcall 15                                                  ; $153f : $f1
	nop                                                  ; $1540 : $00
	setp                                                  ; $1541 : $40
	mov A, [$c0]+Y                                                  ; $1542 : $f7, $c0
	rol A                                                  ; $1544 : $3c
	dbnz Y, -$0e                                                  ; $1545 : $fe, $f2

	nop                                                  ; $1547 : $00
	setp                                                  ; $1548 : $40

br_00_1549:
	tcall 15                                                  ; $1549 : $f1
	nop                                                  ; $154a : $00
	setp                                                  ; $154b : $40
	mov A, [$c0]+Y                                                  ; $154c : $f7, $c0
	rol A                                                  ; $154e : $3c
	dbnz Y, -$0e                                                  ; $154f : $fe, $f2

	nop                                                  ; $1551 : $00
	setp                                                  ; $1552 : $40
	tcall 15                                                  ; $1553 : $f1
	nop                                                  ; $1554 : $00
	setp                                                  ; $1555 : $40
	mov A, [$c0]+Y                                                  ; $1556 : $f7, $c0
	rol A                                                  ; $1558 : $3c
	dbnz Y, br_00_159b                                                  ; $1559 : $fe, $40

br_00_155b:
	mov A, [$c0]+Y                                                  ; $155b : $f7, $c0
	nop                                                  ; $155d : $00
	set1 $06.0                                                  ; $155e : $02, $06
	or A, [$07+X]                                                  ; $1560 : $07, $07
	nop                                                  ; $1562 : $00
	push X                                                  ; $1563 : $4d
	nop                                                  ; $1564 : $00
	stop                                                  ; $1565 : $ff
	tcall 1                                                  ; $1566 : $11
	nop                                                  ; $1567 : $00
	clr1 $00.7                                                  ; $1568 : $f2, $00
	setp                                                  ; $156a : $40
	mov A, [$08]+Y                                                  ; $156b : $f7, $08

br_00_156d:
	brk                                                  ; $156d : $0f


	tcall 15                                                  ; $156e : $f1
	nop                                                  ; $156f : $00
	bmi br_00_156d                                                  ; $1570 : $30, $fb

	stop                                                  ; $1572 : $ff
	bpl br_00_158d                                                  ; $1573 : $10, $18

	rol A                                                  ; $1575 : $3c
	set1 $03.0                                                  ; $1576 : $02, $03

br_00_1578:
	bvc -$01                                                  ; $1578 : $50, $ff

	bpl $16                                                  ; $157a : $10, $16

	rol A                                                  ; $157c : $3c
	set1 $03.0                                                  ; $157d : $02, $03
	setp                                                  ; $157f : $40
	stop                                                  ; $1580 : $ff
	bpl br_00_1597                                                  ; $1581 : $10, $14

	rol A                                                  ; $1583 : $3c
	set1 $03.0                                                  ; $1584 : $02, $03
	bvc -$01                                                  ; $1586 : $50, $ff

	bpl br_00_159c                                                  ; $1588 : $10, $12

	rol A                                                  ; $158a : $3c
	set1 $03.0                                                  ; $158b : $02, $03

br_00_158d:
	clrc                                                  ; $158d : $60
	inc A                                                  ; $158e : $bc
	inc A                                                  ; $158f : $bc
	rol A                                                  ; $1590 : $3c
	set1 $03.0                                                  ; $1591 : $02, $03
	eor A, $3c+X                                                  ; $1593 : $54, $3c
	set1 $03.0                                                  ; $1595 : $02, $03

br_00_1597:
	bvc $3c                                                  ; $1597 : $50, $3c

	set1 $03.0                                                  ; $1599 : $02, $03

br_00_159b:
	setp                                                  ; $159b : $40

br_00_159c:
	rol A                                                  ; $159c : $3c
	set1 $03.0                                                  ; $159d : $02, $03
	and $02, #$3c                                                  ; $159f : $38, $3c, $02
	bbs $30.0, $3c                                                  ; $15a2 : $03, $30, $3c

	or A, [$03+X]                                                  ; $15a5 : $07, $03
	and A, #$fc                                                  ; $15a7 : $28, $fc
	or A, $fe                                                  ; $15a9 : $04, $fe
	clr1 $00.7                                                  ; $15ab : $f2, $00
	setp                                                  ; $15ad : $40
	mov A, [$00]+Y                                                  ; $15ae : $f7, $00

br_00_15b0:
	cmp X, !$05f1                                                  ; $15b0 : $1e, $f1, $05
	bmi br_00_15b0                                                  ; $15b3 : $30, $fb

	and A, !$0202+Y                                                  ; $15b5 : $36, $02, $02
	clrc                                                  ; $15b8 : $60
	and A, !$0202+X                                                  ; $15b9 : $35, $02, $02
	bvc br_00_15f2                                                  ; $15bc : $50, $34

	set1 $02.0                                                  ; $15be : $02, $02
	clrc                                                  ; $15c0 : $60
	bbc $02.1, br_00_15c6                                                  ; $15c1 : $33, $02, $02

	bvs br_00_1578                                                  ; $15c4 : $70, $b2

br_00_15c6:
	tcall 11                                                  ; $15c6 : $b1
	bmi br_00_15cb                                                  ; $15c7 : $30, $02

	set1 $64.0                                                  ; $15c9 : $02, $64

br_00_15cb:
	bra br_00_15cf                                                  ; $15cb : $2f, $02

	set1 $60.0                                                  ; $15cd : $02, $60

br_00_15cf:
	cbne $02, br_00_15d4                                                  ; $15cf : $2e, $02, $02

	bvc br_00_1601                                                  ; $15d2 : $50, $2d

br_00_15d4:
	set1 $02.0                                                  ; $15d4 : $02, $02
	eor A, #$2c                                                  ; $15d6 : $48, $2c
	set1 $02.0                                                  ; $15d8 : $02, $02
	setp                                                  ; $15da : $40
	rol $07                                                  ; $15db : $2b, $07
	set1 $38.0                                                  ; $15dd : $02, $38
	inc Y                                                  ; $15df : $fc
	or A, $fe                                                  ; $15e0 : $04, $fe
	nop                                                  ; $15e2 : $00
	setp                                                  ; $15e3 : $40
	mov A, [$c0]+Y                                                  ; $15e4 : $f7, $c0
	set1 $06.0                                                  ; $15e6 : $02, $06
	or A, [$07+X]                                                  ; $15e8 : $07, $07
	nop                                                  ; $15ea : $00
	bvc br_00_15ed                                                  ; $15eb : $50, $00

br_00_15ed:
	stop                                                  ; $15ed : $ff
	tcall 1                                                  ; $15ee : $11
	nop                                                  ; $15ef : $00
	clr1 $00.7                                                  ; $15f0 : $f2, $00

br_00_15f2:
	setp                                                  ; $15f2 : $40
	mov A, [$08]+Y                                                  ; $15f3 : $f7, $08
	brk                                                  ; $15f5 : $0f


	tcall 15                                                  ; $15f6 : $f1
	nop                                                  ; $15f7 : $00
	and A, #$ff                                                  ; $15f8 : $28, $ff
	bpl br_00_1618                                                  ; $15fa : $10, $1c

	rol A                                                  ; $15fc : $3c
	bbs $04.0, br_00_1650                                                  ; $15fd : $03, $04, $50

	stop                                                  ; $1600 : $ff

br_00_1601:
	bpl $1a                                                  ; $1601 : $10, $1a

	rol A                                                  ; $1603 : $3c
	bbs $04.0, $40                                                  ; $1604 : $03, $04, $40

	stop                                                  ; $1607 : $ff
	bpl br_00_1622                                                  ; $1608 : $10, $18

	rol A                                                  ; $160a : $3c
	bbs $04.0, br_00_165e                                                  ; $160b : $03, $04, $50

	stop                                                  ; $160e : $ff
	bpl $12                                                  ; $160f : $10, $12

	rol A                                                  ; $1611 : $3c
	tcall 4                                                  ; $1612 : $41
	eor A, $60                                                  ; $1613 : $44, $60
	rol A                                                  ; $1615 : $3c
	set1 $03.0                                                  ; $1616 : $02, $03

br_00_1618:
	bvc $3c                                                  ; $1618 : $50, $3c

	set1 $03.0                                                  ; $161a : $02, $03
	eor A, #$3c                                                  ; $161c : $48, $3c
	set1 $03.0                                                  ; $161e : $02, $03
	setp                                                  ; $1620 : $40
	rol A                                                  ; $1621 : $3c

br_00_1622:
	set1 $03.0                                                  ; $1622 : $02, $03
	and A, $3c+X                                                  ; $1624 : $34, $3c
	set1 $03.0                                                  ; $1626 : $02, $03
	bmi $3c                                                  ; $1628 : $30, $3c

	set1 $03.0                                                  ; $162a : $02, $03
	clrp                                                  ; $162c : $20
	rol A                                                  ; $162d : $3c
	set1 $03.0                                                  ; $162e : $02, $03
	or $02, #$3c                                                  ; $1630 : $18, $3c, $02
	tcall 0                                                  ; $1633 : $01

br_00_1634:
	bpl br_00_1634                                                  ; $1634 : $10, $fe

	clr1 $00.7                                                  ; $1636 : $f2, $00
	setp                                                  ; $1638 : $40
	mov A, [$00]+Y                                                  ; $1639 : $f7, $00
	cmp X, !$05f1                                                  ; $163b : $1e, $f1, $05
	bmi br_00_1676                                                  ; $163e : $30, $36

	set1 $02.0                                                  ; $1640 : $02, $02
	clrc                                                  ; $1642 : $60
	and A, !$0202+X                                                  ; $1643 : $35, $02, $02
	bvc $34                                                  ; $1646 : $50, $34

	set1 $02.0                                                  ; $1648 : $02, $02
	clrc                                                  ; $164a : $60
	bbc $02.1, br_00_1650                                                  ; $164b : $33, $02, $02

	bvs -$4e                                                  ; $164e : $70, $b2

br_00_1650:
	tcall 11                                                  ; $1650 : $b1
	bmi br_00_1655                                                  ; $1651 : $30, $02

	set1 $64.0                                                  ; $1653 : $02, $64

br_00_1655:
	bra br_00_1659                                                  ; $1655 : $2f, $02

	set1 $60.0                                                  ; $1657 : $02, $60

br_00_1659:
	cbne $02, br_00_165e                                                  ; $1659 : $2e, $02, $02

	bvc $2d                                                  ; $165c : $50, $2d

br_00_165e:
	set1 $02.0                                                  ; $165e : $02, $02
	eor A, #$2c                                                  ; $1660 : $48, $2c
	set1 $02.0                                                  ; $1662 : $02, $02
	setp                                                  ; $1664 : $40
	rol $07                                                  ; $1665 : $2b, $07
	set1 $38.0                                                  ; $1667 : $02, $38
	dbnz Y, br_00_166b                                                  ; $1669 : $fe, $00

br_00_166b:
	setp                                                  ; $166b : $40
	mov A, [$c0]+Y                                                  ; $166c : $f7, $c0
	set1 $06.0                                                  ; $166e : $02, $06
	or A, [$07+X]                                                  ; $1670 : $07, $07
	nop                                                  ; $1672 : $00
	rol $00+X                                                  ; $1673 : $3b, $00
	stop                                                  ; $1675 : $ff

br_00_1676:
	tcall 1                                                  ; $1676 : $11
	nop                                                  ; $1677 : $00
	clr1 $00.7                                                  ; $1678 : $f2, $00
	setp                                                  ; $167a : $40
	mov A, [$00]+Y                                                  ; $167b : $f7, $00
	brk                                                  ; $167d : $0f


	tcall 15                                                  ; $167e : $f1
	nop                                                  ; $167f : $00
	or $10, #$ff                                                  ; $1680 : $18, $ff, $10
	or $ac, #$3c                                                  ; $1683 : $18, $3c, $ac
	cmp Y, #$40                                                  ; $1686 : $ad, $40
	rol A                                                  ; $1688 : $3c
	bbs $04.0, $34                                                  ; $1689 : $03, $04, $34

	rol A                                                  ; $168c : $3c

br_00_168d:
	bbs $04.0, $30                                                  ; $168d : $03, $04, $30

	rol A                                                  ; $1690 : $3c
	bbs $04.0, $28                                                  ; $1691 : $03, $04, $28

	rol A                                                  ; $1694 : $3c
	bbs $04.0, br_00_16b8                                                  ; $1695 : $03, $04, $20

	rol A                                                  ; $1698 : $3c
	bbs $04.0, $18                                                  ; $1699 : $03, $04, $18

br_00_169c:
	rol A                                                  ; $169c : $3c
	bbs $04.0, br_00_16b0                                                  ; $169d : $03, $04, $10

	rol A                                                  ; $16a0 : $3c
	bbs $02.0, br_00_16ac                                                  ; $16a1 : $03, $02, $08

	rol A                                                  ; $16a4 : $3c
	bbs $02.0, br_00_16aa                                                  ; $16a5 : $03, $02, $02

	dbnz Y, br_00_169c                                                  ; $16a8 : $fe, $f2

br_00_16aa:
	nop                                                  ; $16aa : $00
	setp                                                  ; $16ab : $40

br_00_16ac:
	tcall 15                                                  ; $16ac : $f1

br_00_16ad:
	nop                                                  ; $16ad : $00
	bmi -$09                                                  ; $16ae : $30, $f7

br_00_16b0:
	nop                                                  ; $16b0 : $00
	asl A                                                  ; $16b1 : $1c
	and A, (X)                                                  ; $16b2 : $26
	bbs $03.0, $70                                                  ; $16b3 : $03, $03, $70

	sbc A, [$a8+X]                                                  ; $16b6 : $a7, $a8

br_00_16b8:
	sbc $a8, $a7                                                  ; $16b8 : $a9, $a7, $a8
	sbc $a8, $aa                                                  ; $16bb : $a9, $aa, $a8
	sbc $ab, $aa                                                  ; $16be : $a9, $aa, $ab
	sbc $ab, $aa                                                  ; $16c1 : $a9, $aa, $ab
	inc !$abaa                                                  ; $16c4 : $ac, $aa, $ab
	inc !$abad                                                  ; $16c7 : $ac, $ad, $ab
	inc !$aead                                                  ; $16ca : $ac, $ad, $ae
	inc !$aead                                                  ; $16cd : $ac, $ad, $ae
	mov (X)+, A                                                  ; $16d0 : $af
	cmp Y, #$ae                                                  ; $16d1 : $ad, $ae
	mov (X)+, A                                                  ; $16d3 : $af
	bcs -$52                                                  ; $16d4 : $b0, $ae

	mov (X)+, A                                                  ; $16d6 : $af
	bcs -$4f                                                  ; $16d7 : $b0, $b1

	mov (X)+, A                                                  ; $16d9 : $af
	bcs br_00_168d                                                  ; $16da : $b0, $b1

	clr1 $b0.5                                                  ; $16dc : $b2, $b0
	tcall 11                                                  ; $16de : $b1
	clr1 $b3.5                                                  ; $16df : $b2, $b3
	tcall 11                                                  ; $16e1 : $b1
	clr1 $b3.5                                                  ; $16e2 : $b2, $b3
	sbc A, $b2+X                                                  ; $16e4 : $b4, $b2
	bbc $03.1, br_00_16ec                                                  ; $16e6 : $33, $03, $03

	dbnz $34, br_00_16ef                                                  ; $16e9 : $6e, $34, $03

br_00_16ec:
	bbs $64.0, br_00_1724                                                  ; $16ec : $03, $64, $35

br_00_16ef:
	bbs $03.0, br_00_1752                                                  ; $16ef : $03, $03, $60

	bbc $34.5, br_00_16f8                                                  ; $16f2 : $b3, $34, $03

	bbs $50.0, br_00_16ad                                                  ; $16f5 : $03, $50, $b5

br_00_16f8:
	and A, !$0303+Y                                                  ; $16f8 : $36, $03, $03
	setp                                                  ; $16fb : $40
	sbc A, $35+X                                                  ; $16fc : $b4, $35
	bbs $03.0, br_00_1735                                                  ; $16fe : $03, $03, $34

	sbc A, !$0335+Y                                                  ; $1701 : $b6, $35, $03

br_00_1704:
	bbs $30.0, $37                                                  ; $1704 : $03, $30, $37

	or A, (X)                                                  ; $1707 : $06
	bbs $20.0, $3b                                                  ; $1708 : $03, $20, $3b

	bbs $02.0, $19                                                  ; $170b : $03, $02, $19

	dbnz Y, br_00_1710                                                  ; $170e : $fe, $00

br_00_1710:
	dbnz Y, br_00_1704                                                  ; $1710 : $fe, $f2

	nop                                                  ; $1712 : $00
	bbs $05.0, $06                                                  ; $1713 : $03, $05, $06

	or A, [$0a+X]                                                  ; $1716 : $07, $0a
	nop                                                  ; $1718 : $00
	tcall 2                                                  ; $1719 : $21
	nop                                                  ; $171a : $00

br_00_171b:
	rol $00+X                                                  ; $171b : $3b, $00
	clr1 $00.7                                                  ; $171d : $f2, $00
	setp                                                  ; $171f : $40
	tcall 15                                                  ; $1720 : $f1
	nop                                                  ; $1721 : $00
	bmi br_00_171b                                                  ; $1722 : $30, $f7

br_00_1724:
	nop                                                  ; $1724 : $00
	cmp X, !$16ff                                                  ; $1725 : $1e, $ff, $16
	cmpw YA, $ff                                                  ; $1728 : $5a, $ff
	or $f0, #$0a                                                  ; $172a : $18, $0a, $f0
	nop                                                  ; $172d : $00
	cmp A, $23                                                  ; $172e : $64, $23
	di                                                  ; $1730 : $c0
	das A                                                  ; $1731 : $be

br_00_1732:
	cmp $f2, #$fe                                                  ; $1732 : $78, $fe, $f2

br_00_1735:
	nop                                                  ; $1735 : $00
	setp                                                  ; $1736 : $40
	tcall 15                                                  ; $1737 : $f1
	nop                                                  ; $1738 : $00
	bmi br_00_1732                                                  ; $1739 : $30, $f7

	nop                                                  ; $173b : $00
	cmp X, !$16ff                                                  ; $173c : $1e, $ff, $16
	cmpw YA, $ff                                                  ; $173f : $5a, $ff
	or $f6, #$0a                                                  ; $1741 : $18, $0a, $f6
	nop                                                  ; $1744 : $00
	set1 $f0.4                                                  ; $1745 : $82, $f0
	tcall 0                                                  ; $1747 : $01
	cmp $c0, $23                                                  ; $1748 : $69, $23, $c0
	das A                                                  ; $174b : $be

br_00_174c:
	cmp $f2, #$fe                                                  ; $174c : $78, $fe, $f2
	nop                                                  ; $174f : $00
	setp                                                  ; $1750 : $40
	tcall 15                                                  ; $1751 : $f1

br_00_1752:
	nop                                                  ; $1752 : $00

br_00_1753:
	bmi br_00_174c                                                  ; $1753 : $30, $f7

	nop                                                  ; $1755 : $00
	bpl br_00_1753                                                  ; $1756 : $10, $fb

	call !$0304                                                  ; $1758 : $3f, $04, $03
	cmp $c1, #$c0                                                  ; $175b : $78, $c0, $c1
	set1 $c3.6                                                  ; $175e : $c2, $c3
	mov $c5, A                                                  ; $1760 : $c4, $c5
	mov (X), A                                                  ; $1762 : $c6
	eor A, [$10+X]                                                  ; $1763 : $47, $10
	bbs $78.0, -$04                                                  ; $1765 : $03, $78, $fc

	or A, $fe                                                  ; $1768 : $04, $fe
	mov1 c, $0cab.5                                                  ; $176a : $aa, $ab, $ac
	cmp Y, #$02                                                  ; $176d : $ad, $02
	or A, (X)                                                  ; $176f : $06
	or A, [$07+X]                                                  ; $1770 : $07, $07
	nop                                                  ; $1772 : $00
	eor (X), (Y)                                                  ; $1773 : $59
	nop                                                  ; $1774 : $00
	stop                                                  ; $1775 : $ff
	tcall 1                                                  ; $1776 : $11
	nop                                                  ; $1777 : $00
	clr1 $00.7                                                  ; $1778 : $f2, $00
	setp                                                  ; $177a : $40
	mov A, [$00]+Y                                                  ; $177b : $f7, $00
	brk                                                  ; $177d : $0f


	tcall 15                                                  ; $177e : $f1
	nop                                                  ; $177f : $00
	bmi -$01                                                  ; $1780 : $30, $ff

	bpl br_00_17a2                                                  ; $1782 : $10, $1e

	rol A                                                  ; $1784 : $3c
	or A, (X)                                                  ; $1785 : $06
	set1 $34.0                                                  ; $1786 : $02, $34
	rol A                                                  ; $1788 : $3c
	clr1 $02.0                                                  ; $1789 : $12, $02
	and A, $bc+X                                                  ; $178b : $34, $bc
	rol A                                                  ; $178d : $3c
	and A, $02                                                  ; $178e : $24, $02
	and A, $3c+X                                                  ; $1790 : $34, $3c
	asl !$3402                                                  ; $1792 : $0c, $02, $34
	rol A                                                  ; $1795 : $3c
	cmp X, !$3402                                                  ; $1796 : $1e, $02, $34
	rol A                                                  ; $1799 : $3c
	or A, (X)                                                  ; $179a : $06
	set1 $34.0                                                  ; $179b : $02, $34
	rol A                                                  ; $179d : $3c
	clr1 $02.0                                                  ; $179e : $12, $02
	and A, $3c+X                                                  ; $17a0 : $34, $3c

br_00_17a2:
	or A, (X)                                                  ; $17a2 : $06
	set1 $34.0                                                  ; $17a3 : $02, $34

br_00_17a5:
	rol A                                                  ; $17a5 : $3c
	asl !$3402                                                  ; $17a6 : $0c, $02, $34
	rol A                                                  ; $17a9 : $3c
	or A, (X)                                                  ; $17aa : $06

br_00_17ab:
	set1 $34.0                                                  ; $17ab : $02, $34
	mov A, [$00]+Y                                                  ; $17ad : $f7, $00
	brk                                                  ; $17af : $0f


	stop                                                  ; $17b0 : $ff
	bpl br_00_17d0                                                  ; $17b1 : $10, $1d

	rol A                                                  ; $17b3 : $3c
	or A, (X)                                                  ; $17b4 : $06
	or A, [$10+X]                                                  ; $17b5 : $07, $10
	rol A                                                  ; $17b7 : $3c
	or A, (X)                                                  ; $17b8 : $06
	or A, [$18+X]                                                  ; $17b9 : $07, $18
	rol A                                                  ; $17bb : $3c
	or A, (X)                                                  ; $17bc : $06
	or A, [$30+X]                                                  ; $17bd : $07, $30
	mov A, [$00]+Y                                                  ; $17bf : $f7, $00
	bbc $3c.0, $41                                                  ; $17c1 : $13, $3c, $41

	setp                                                  ; $17c4 : $40

br_00_17c5:
	eor A, #$fe                                                  ; $17c5 : $48, $fe
	clr1 $00.7                                                  ; $17c7 : $f2, $00
	setp                                                  ; $17c9 : $40
	tcall 15                                                  ; $17ca : $f1
	nop                                                  ; $17cb : $00
	bmi br_00_17c5                                                  ; $17cc : $30, $f7

	nop                                                  ; $17ce : $00
	asl A                                                  ; $17cf : $1c

br_00_17d0:
	and A, (X)                                                  ; $17d0 : $26
	bbs $03.0, $70                                                  ; $17d1 : $03, $03, $70

	sbc A, #$a9                                                  ; $17d4 : $a8, $a9
	inc $ad                                                  ; $17d6 : $ab, $ad
	pop A                                                  ; $17d8 : $ae
	cmp Y, #$ac                                                  ; $17d9 : $ad, $ac
	inc $ad                                                  ; $17db : $ab, $ad
	inc !$aaab                                                  ; $17dd : $ac, $ab, $aa
	inc !$aaab                                                  ; $17e0 : $ac, $ab, $aa
	sbc $aa, $ab                                                  ; $17e3 : $a9, $ab, $aa
	sbc $aa, $a8                                                  ; $17e6 : $a9, $a8, $aa

br_00_17e9:
	sbc $a7, $a8                                                  ; $17e9 : $a9, $a8, $a7

br_00_17ec:
	sbc $a7, $a8                                                  ; $17ec : $a9, $a8, $a7
	sbc A, (X)                                                  ; $17ef : $a6
	sbc A, #$a7                                                  ; $17f0 : $a8, $a7
	sbc A, (X)                                                  ; $17f2 : $a6
	sbc A, !$a6a7                                                  ; $17f3 : $a5, $a7, $a6
	sbc A, !$a6a4                                                  ; $17f6 : $a5, $a4, $a6
	sbc A, !$a3a4                                                  ; $17f9 : $a5, $a4, $a3
	sbc A, !$a3a4                                                  ; $17fc : $a5, $a4, $a3
	set1 $a4.5                                                  ; $17ff : $a2, $a4
	bbs $a2.5, br_00_17a5                                                  ; $1801 : $a3, $a2, $a1

	bbs $03.1, br_00_180a                                                  ; $1804 : $23, $03, $03

	dbnz $a2, br_00_17ab                                                  ; $1807 : $6e, $a2, $a1

br_00_180a:
	ei                                                  ; $180a : $a0
	set1 $a1.5                                                  ; $180b : $a2, $a1
	ei                                                  ; $180d : $a0
	jmp [!$0303+X]                                                  ; $180e : $1f, $03, $03


	bvc $21                                                  ; $1811 : $50, $21

	bbs $03.0, br_00_1852                                                  ; $1813 : $03, $03, $3c

	clrp                                                  ; $1816 : $20
	bbs $03.0, br_00_1842                                                  ; $1817 : $03, $03, $28

	jmp [!$0303+X]                                                  ; $181a : $1f, $03, $03


	cmp X, !$031d                                                  ; $181d : $1e, $1d, $03
	set1 $14.0                                                  ; $1820 : $02, $14
	dbnz Y, br_00_1824                                                  ; $1822 : $fe, $00

br_00_1824:
	dbnz Y, br_00_182b                                                  ; $1824 : $fe, $05

	eor A, !$0701+X                                                  ; $1826 : $55, $01, $07
	or A, $00                                                  ; $1829 : $04, $00

br_00_182b:
	stop                                                  ; $182b : $ff

br_00_182c:
	bbs $00.0, -$0e                                                  ; $182c : $03, $00, $f2

	nop                                                  ; $182f : $00
	setp                                                  ; $1830 : $40
	tcall 15                                                  ; $1831 : $f1
	nop                                                  ; $1832 : $00
	bmi br_00_182c                                                  ; $1833 : $30, $f7

	nop                                                  ; $1835 : $00

br_00_1836:
	bbc $2b.0, br_00_183c                                                  ; $1836 : $13, $2b, $03

	bbs $70.0, br_00_17e9                                                  ; $1839 : $03, $70, $ad

Jump_00_183c:
br_00_183c:
	mov (X)+, A                                                  ; $183c : $af
	bcs br_00_17ec                                                  ; $183d : $b0, $ad

	mov (X)+, A                                                  ; $183f : $af

Jump_00_1840:
	bcs -$4e                                                  ; $1840 : $b0, $b2

br_00_1842:
	mov (X)+, A                                                  ; $1842 : $af

Jump_00_1843:
	bcs -$4e                                                  ; $1843 : $b0, $b2

	sbc A, $b0+X                                                  ; $1845 : $b4, $b0
	clr1 $b4.5                                                  ; $1847 : $b2, $b4
	sbc A, !$b4b2+X                                                  ; $1849 : $b5, $b2, $b4
	and A, !$0303+X                                                  ; $184c : $35, $03, $03
	dbnz $b7, -$4c                                                  ; $184f : $6e, $b7, $b4

br_00_1852:
	sbc A, !$b9b7+X                                                  ; $1852 : $b5, $b7, $b9
	sbc A, !$b9b7+X                                                  ; $1855 : $b5, $b7, $b9
	inc $b7+X                                                  ; $1858 : $bb, $b7
	sbc (X), (Y)                                                  ; $185a : $b9
	inc $bc+X                                                  ; $185b : $bb, $bc
	das A                                                  ; $185d : $be
	and (X), (Y)                                                  ; $185e : $39
	or A, !$6005                                                  ; $185f : $05, $05, $60
	inc $3c+X                                                  ; $1862 : $bb, $3c
	or A, !$5005                                                  ; $1864 : $05, $05, $50
	sbc (X), (Y)                                                  ; $1867 : $b9
	rol $05+X                                                  ; $1868 : $3b, $05
	or A, !$bc48                                                  ; $186a : $05, $48, $bc
	and (X), (Y)                                                  ; $186d : $39
	or A, !$4005                                                  ; $186e : $05, $05, $40
	inc $3c+X                                                  ; $1871 : $bb, $3c
	or A, !$3405                                                  ; $1873 : $05, $05, $34
	sbc (X), (Y)                                                  ; $1876 : $b9
	rol $05+X                                                  ; $1877 : $3b, $05
	or A, !$bc30                                                  ; $1879 : $05, $30, $bc
	and (X), (Y)                                                  ; $187c : $39
	or A, !$2005                                                  ; $187d : $05, $05, $20
	rol $05+X                                                  ; $1880 : $3b, $05
	or A, !$3c18                                                  ; $1882 : $05, $18, $3c
	or A, !$1005                                                  ; $1885 : $05, $05, $10
	and (X), (Y)                                                  ; $1888 : $39
	or A, !$0804                                                  ; $1889 : $05, $04, $08
	dbnz Y, br_00_1836                                                  ; $188c : $fe, $a8

	sbc $ad, $ab                                                  ; $188e : $a9, $ab, $ad
	bbs $05.0, $06                                                  ; $1891 : $03, $05, $06

	or A, [$0a+X]                                                  ; $1894 : $07, $0a
	nop                                                  ; $1896 : $00
	tcall 2                                                  ; $1897 : $21
	nop                                                  ; $1898 : $00

br_00_1899:
	rol $00+X                                                  ; $1899 : $3b, $00
	clr1 $00.7                                                  ; $189b : $f2, $00
	setp                                                  ; $189d : $40
	tcall 15                                                  ; $189e : $f1
	nop                                                  ; $189f : $00
	bmi br_00_1899                                                  ; $18a0 : $30, $f7

br_00_18a2:
	nop                                                  ; $18a2 : $00
	cmp X, !$16ff                                                  ; $18a3 : $1e, $ff, $16
	cmpw YA, $ff                                                  ; $18a6 : $5a, $ff
	or $f0, #$0a                                                  ; $18a8 : $18, $0a, $f0
	nop                                                  ; $18ab : $00
	cmp A, $3b                                                  ; $18ac : $64, $3b
	setc                                                  ; $18ae : $80
	reti                                                  ; $18af : $7f


br_00_18b0:
	cmp $f2, #$fe                                                  ; $18b0 : $78, $fe, $f2
	nop                                                  ; $18b3 : $00
	setp                                                  ; $18b4 : $40
	tcall 15                                                  ; $18b5 : $f1
	nop                                                  ; $18b6 : $00
	bmi br_00_18b0                                                  ; $18b7 : $30, $f7

	nop                                                  ; $18b9 : $00
	cmp X, !$16ff                                                  ; $18ba : $1e, $ff, $16
	cmpw YA, $ff                                                  ; $18bd : $5a, $ff

br_00_18bf:
	or $f6, #$0a                                                  ; $18bf : $18, $0a, $f6
	nop                                                  ; $18c2 : $00
	set1 $f0.4                                                  ; $18c3 : $82, $f0
	tcall 0                                                  ; $18c5 : $01
	cmp $7f, $2f                                                  ; $18c6 : $69, $2f, $7f
	cmp Y, $78                                                  ; $18c9 : $7e, $78
	dbnz Y, br_00_18bf                                                  ; $18cb : $fe, $f2

	nop                                                  ; $18cd : $00
	setp                                                  ; $18ce : $40
	tcall 15                                                  ; $18cf : $f1
	nop                                                  ; $18d0 : $00
	bmi -$09                                                  ; $18d1 : $30, $f7

	nop                                                  ; $18d3 : $00
	or (X), (Y)                                                  ; $18d4 : $19
	mov Y, $2f+X                                                  ; $18d5 : $fb, $2f
	or A, $03                                                  ; $18d7 : $04, $03
	cmp $ad, #$ae                                                  ; $18d9 : $78, $ae, $ad
	inc !$aaab                                                  ; $18dc : $ac, $ab, $aa
	sbc $fc, $a8                                                  ; $18df : $a9, $a8, $fc
	or A, $fe                                                  ; $18e2 : $04, $fe
	bmi br_00_18a2                                                  ; $18e4 : $30, $bc

	and (X), (Y)                                                  ; $18e6 : $39
	or A, !$0701                                                  ; $18e7 : $05, $01, $07
	or A, $00                                                  ; $18ea : $04, $00
	stop                                                  ; $18ec : $ff
	tcall 1                                                  ; $18ed : $11
	nop                                                  ; $18ee : $00
	clr1 $00.7                                                  ; $18ef : $f2, $00
	setp                                                  ; $18f1 : $40
	mov A, [$00]+Y                                                  ; $18f2 : $f7, $00
	brk                                                  ; $18f4 : $0f


	tcall 15                                                  ; $18f5 : $f1
	nop                                                  ; $18f6 : $00
	bmi -$01                                                  ; $18f7 : $30, $ff

	bpl br_00_1915                                                  ; $18f9 : $10, $1a

	rol A                                                  ; $18fb : $3c
	or $60, $04                                                  ; $18fc : $09, $04, $60
	rol A                                                  ; $18ff : $3c
	or $50, $04                                                  ; $1900 : $09, $04, $50
	rol A                                                  ; $1903 : $3c
	or $48, $04                                                  ; $1904 : $09, $04, $48
	rol A                                                  ; $1907 : $3c
	or $40, $04                                                  ; $1908 : $09, $04, $40
	rol A                                                  ; $190b : $3c
	or A, #$04                                                  ; $190c : $08, $04
	and $ff, #$fe                                                  ; $190e : $38, $fe, $ff
	stop                                                  ; $1911 : $ff
	stop                                                  ; $1912 : $ff
	stop                                                  ; $1913 : $ff
	tcall 0                                                  ; $1914 : $01

br_00_1915:
	or A, [$04+X]                                                  ; $1915 : $07, $04
	nop                                                  ; $1917 : $00
	clr1 $00.7                                                  ; $1918 : $f2, $00
	setp                                                  ; $191a : $40
	tcall 15                                                  ; $191b : $f1
	nop                                                  ; $191c : $00
	bmi -$09                                                  ; $191d : $30, $f7

	nop                                                  ; $191f : $00
	asl A                                                  ; $1920 : $1c
	or $05, #$02                                                  ; $1921 : $18, $02, $05
	cmp $9b, #$99                                                  ; $1924 : $78, $99, $9b
	dec A                                                  ; $1927 : $9c
	mov X, SP                                                  ; $1928 : $9d
	div YA, X                                                  ; $1929 : $9e
	xcn A                                                  ; $192a : $9f
	ei                                                  ; $192b : $a0
	xcn A                                                  ; $192c : $9f
	div YA, X                                                  ; $192d : $9e
	mov X, SP                                                  ; $192e : $9d
	dec A                                                  ; $192f : $9c
	dec $9a+X                                                  ; $1930 : $9b, $9a
	adc (X), (Y)                                                  ; $1932 : $99
	or $05, #$02                                                  ; $1933 : $18, $02, $05
	dbnz $17, $02                                                  ; $1936 : $6e, $17, $02

	or A, !$1660                                                  ; $1939 : $05, $60, $16
	set1 $05.0                                                  ; $193c : $02, $05
	eor $02, #$15                                                  ; $193e : $58, $15, $02
	or A, !$1450                                                  ; $1941 : $05, $50, $14
	set1 $05.0                                                  ; $1944 : $02, $05
	eor A, #$13                                                  ; $1946 : $48, $13
	set1 $05.0                                                  ; $1948 : $02, $05
	setp                                                  ; $194a : $40
	clr1 $02.0                                                  ; $194b : $12, $02
	or A, !$1138                                                  ; $194d : $05, $38, $11
	set1 $05.0                                                  ; $1950 : $02, $05
	bmi br_00_1964                                                  ; $1952 : $30, $10

	set1 $05.0                                                  ; $1954 : $02, $05
	clrp                                                  ; $1956 : $20
	brk                                                  ; $1957 : $0f


	set1 $05.0                                                  ; $1958 : $02, $05
	or $02, #$0e                                                  ; $195a : $18, $0e, $02
	or A, !$0d0c                                                  ; $195d : $05, $0c, $0d
	set1 $01.0                                                  ; $1960 : $02, $01
	or A, #$fe                                                  ; $1962 : $08, $fe

br_00_1964:
	inc Y                                                  ; $1964 : $fc
	or A, $fe                                                  ; $1965 : $04, $fe
	bmi $01                                                  ; $1967 : $30, $01

	or A, !$0004                                                  ; $1969 : $05, $04, $00
	clr1 $00.7                                                  ; $196c : $f2, $00
	setp                                                  ; $196e : $40
	tcall 15                                                  ; $196f : $f1
	nop                                                  ; $1970 : $00
	bmi -$01                                                  ; $1971 : $30, $ff

	tcall 1                                                  ; $1973 : $11
	nop                                                  ; $1974 : $00
	mov A, [$00]+Y                                                  ; $1975 : $f7, $00
	brk                                                  ; $1977 : $0f


	stop                                                  ; $1978 : $ff
	bpl br_00_1999                                                  ; $1979 : $10, $1e

	rol A                                                  ; $197b : $3c
	or A, !$6006                                                  ; $197c : $05, $06, $60
	stop                                                  ; $197f : $ff
	bpl $1d                                                  ; $1980 : $10, $1d

	rol A                                                  ; $1982 : $3c
	bbs $04.0, $60                                                  ; $1983 : $03, $04, $60

	stop                                                  ; $1986 : $ff
	bpl br_00_19a4                                                  ; $1987 : $10, $1b

	inc A                                                  ; $1989 : $bc
	stop                                                  ; $198a : $ff
	bpl $1a                                                  ; $198b : $10, $1a

	rol A                                                  ; $198d : $3c
	set1 $02.0                                                  ; $198e : $02, $02
	clrc                                                  ; $1990 : $60
	stop                                                  ; $1991 : $ff
	bpl br_00_19a8                                                  ; $1992 : $10, $14

	rol A                                                  ; $1994 : $3c
	bbs $04.0, $60                                                  ; $1995 : $03, $04, $60

	rol A                                                  ; $1998 : $3c

br_00_1999:
	bbs $04.0, br_00_19ec                                                  ; $1999 : $03, $04, $50

	rol A                                                  ; $199c : $3c
	bbs $04.0, br_00_19e0                                                  ; $199d : $03, $04, $40

	rol A                                                  ; $19a0 : $3c
	bbs $04.0, $38                                                  ; $19a1 : $03, $04, $38

br_00_19a4:
	rol A                                                  ; $19a4 : $3c
	bbs $04.0, $30                                                  ; $19a5 : $03, $04, $30

br_00_19a8:
	rol A                                                  ; $19a8 : $3c
	bbs $04.0, br_00_19d0                                                  ; $19a9 : $03, $04, $24

	rol A                                                  ; $19ac : $3c
	bbs $04.0, br_00_19d0                                                  ; $19ad : $03, $04, $20

	rol A                                                  ; $19b0 : $3c
	bbs $04.0, br_00_19cc                                                  ; $19b1 : $03, $04, $18

	rol A                                                  ; $19b4 : $3c
	bbs $02.0, br_00_19c8                                                  ; $19b5 : $03, $02, $10

	dbnz Y, br_00_19be                                                  ; $19b8 : $fe, $04

	dbnz Y, br_00_19ec                                                  ; $19ba : $fe, $30

	inc A                                                  ; $19bc : $bc
	tcall 0                                                  ; $19bd : $01

br_00_19be:
	or A, [$04+X]                                                  ; $19be : $07, $04
	nop                                                  ; $19c0 : $00
	clr1 $00.7                                                  ; $19c1 : $f2, $00
	setp                                                  ; $19c3 : $40
	tcall 15                                                  ; $19c4 : $f1
	nop                                                  ; $19c5 : $00
	bmi -$09                                                  ; $19c6 : $30, $f7

br_00_19c8:
	nop                                                  ; $19c8 : $00
	dec X                                                  ; $19c9 : $1d
	mov Y, $25+X                                                  ; $19ca : $fb, $25

br_00_19cc:
	set1 $02.0                                                  ; $19cc : $02, $02
	clrc                                                  ; $19ce : $60
	sbc A, (X)                                                  ; $19cf : $a6

br_00_19d0:
	sbc A, [$a8+X]                                                  ; $19d0 : $a7, $a8
	sbc $ab, $aa                                                  ; $19d2 : $a9, $aa, $ab
	inc Y                                                  ; $19d5 : $fc
	or A, !$032b                                                  ; $19d6 : $05, $2b, $03
	set1 $60.0                                                  ; $19d9 : $02, $60
	mov1 c, $0329.0                                                  ; $19db : $aa, $29, $03
	set1 $58.0                                                  ; $19de : $02, $58

br_00_19e0:
	sbc A, #$2b                                                  ; $19e0 : $a8, $2b
	bbs $02.0, br_00_1a35                                                  ; $19e2 : $03, $02, $50

	mov1 c, $0329.0                                                  ; $19e5 : $aa, $29, $03
	set1 $44.0                                                  ; $19e8 : $02, $44
	sbc A, #$2b                                                  ; $19ea : $a8, $2b

br_00_19ec:
	bbs $02.0, $40                                                  ; $19ec : $03, $02, $40

	mov1 c, $0329.0                                                  ; $19ef : $aa, $29, $03
	set1 $30.0                                                  ; $19f2 : $02, $30
	sbc A, #$2b                                                  ; $19f4 : $a8, $2b
	bbs $02.0, br_00_1a21                                                  ; $19f6 : $03, $02, $28

	mov1 c, $0329.0                                                  ; $19f9 : $aa, $29, $03
	set1 $20.0                                                  ; $19fc : $02, $20
	and A, #$03                                                  ; $19fe : $28, $03
	set1 $18.0                                                  ; $1a00 : $02, $18
	dbnz Y, -$01                                                  ; $1a02 : $fe, $ff

	stop                                                  ; $1a04 : $ff
	stop                                                  ; $1a05 : $ff
	stop                                                  ; $1a06 : $ff
	tcall 0                                                  ; $1a07 : $01
	or A, [$04+X]                                                  ; $1a08 : $07, $04
	nop                                                  ; $1a0a : $00
	clr1 $00.7                                                  ; $1a0b : $f2, $00
	setp                                                  ; $1a0d : $40
	tcall 15                                                  ; $1a0e : $f1
	nop                                                  ; $1a0f : $00
	bvc -$09                                                  ; $1a10 : $50, $f7

	nop                                                  ; $1a12 : $00
	bbc $fb.0, $31                                                  ; $1a13 : $13, $fb, $31

	bbs $02.0, $60                                                  ; $1a16 : $03, $02, $60

	clr1 $b3.5                                                  ; $1a19 : $b2, $b3
	sbc A, $b3+X                                                  ; $1a1b : $b4, $b3
	inc Y                                                  ; $1a1d : $fc
	bbs $b4.0, -$4d                                                  ; $1a1e : $03, $b4, $b3

br_00_1a21:
	clr1 $b1.5                                                  ; $1a21 : $b2, $b1
	bcs -$51                                                  ; $1a23 : $b0, $af

	pop A                                                  ; $1a25 : $ae
	cmp Y, #$ac                                                  ; $1a26 : $ad, $ac
	inc $2a                                                  ; $1a28 : $ab, $2a
	or A, $02                                                  ; $1a2a : $04, $02
	clrc                                                  ; $1a2c : $60
	sbc $05, $28                                                  ; $1a2d : $a9, $28, $05
	set1 $60.0                                                  ; $1a30 : $02, $60
	sbc A, [$26+X]                                                  ; $1a32 : $a7, $26
	or A, (X)                                                  ; $1a34 : $06

br_00_1a35:
	set1 $60.0                                                  ; $1a35 : $02, $60
	dbnz Y, -$01                                                  ; $1a37 : $fe, $ff

	stop                                                  ; $1a39 : $ff
	stop                                                  ; $1a3a : $ff
	stop                                                  ; $1a3b : $ff
	tcall 0                                                  ; $1a3c : $01
	or A, [$04+X]                                                  ; $1a3d : $07, $04
	nop                                                  ; $1a3f : $00
	clr1 $00.7                                                  ; $1a40 : $f2, $00
	setp                                                  ; $1a42 : $40
	tcall 15                                                  ; $1a43 : $f1
	nop                                                  ; $1a44 : $00
	clrc                                                  ; $1a45 : $60
	mov A, [$00]+Y                                                  ; $1a46 : $f7, $00
	dec X                                                  ; $1a48 : $1d
	mov Y, $3f+X                                                  ; $1a49 : $fb, $3f
	or A, $04                                                  ; $1a4b : $04, $04
	clrc                                                  ; $1a4d : $60
	di                                                  ; $1a4e : $c0
	tcall 12                                                  ; $1a4f : $c1
	set1 $04.2                                                  ; $1a50 : $42, $04
	bbs $60.0, -$04                                                  ; $1a52 : $03, $60, $fc

	nop                                                  ; $1a55 : $00
	dbnz Y, br_00_1a58                                                  ; $1a56 : $fe, $00

br_00_1a58:
	bvc br_00_1a5a                                                  ; $1a58 : $50, $00

br_00_1a5a:
	stop                                                  ; $1a5a : $ff
	tcall 0                                                  ; $1a5b : $01
	or A, [$04+X]                                                  ; $1a5c : $07, $04
	nop                                                  ; $1a5e : $00
	clr1 $00.7                                                  ; $1a5f : $f2, $00
	setp                                                  ; $1a61 : $40
	tcall 15                                                  ; $1a62 : $f1
	nop                                                  ; $1a63 : $00
	bmi -$09                                                  ; $1a64 : $30, $f7

	nop                                                  ; $1a66 : $00
	brk                                                  ; $1a67 : $0f


	or $02, #$03                                                  ; $1a68 : $18, $03, $02
	clrc                                                  ; $1a6b : $60
	subw YA, $9c                                                  ; $1a6c : $9a, $9c
	subw YA, $9c                                                  ; $1a6e : $9a, $9c
	div YA, X                                                  ; $1a70 : $9e
	dec A                                                  ; $1a71 : $9c
	div YA, X                                                  ; $1a72 : $9e
	ei                                                  ; $1a73 : $a0
	div YA, X                                                  ; $1a74 : $9e
	ei                                                  ; $1a75 : $a0
	set1 $a0.5                                                  ; $1a76 : $a2, $a0
	set1 $a4.5                                                  ; $1a78 : $a2, $a4
	set1 $a4.5                                                  ; $1a7a : $a2, $a4
	sbc A, (X)                                                  ; $1a7c : $a6
	sbc A, $a6                                                  ; $1a7d : $a4, $a6
	sbc A, #$a6                                                  ; $1a7f : $a8, $a6
	sbc A, #$aa                                                  ; $1a81 : $a8, $aa
	sbc A, #$aa                                                  ; $1a83 : $a8, $aa
	inc !$acaa                                                  ; $1a85 : $ac, $aa, $ac
	pop A                                                  ; $1a88 : $ae
	inc !$b0ae                                                  ; $1a89 : $ac, $ae, $b0
	bmi $03                                                  ; $1a8c : $30, $03

	set1 $50.0                                                  ; $1a8e : $02, $50
	bmi $03                                                  ; $1a90 : $30, $03

	set1 $48.0                                                  ; $1a92 : $02, $48
	bmi $03                                                  ; $1a94 : $30, $03

	set1 $40.0                                                  ; $1a96 : $02, $40
	bmi $03                                                  ; $1a98 : $30, $03

	set1 $38.0                                                  ; $1a9a : $02, $38
	bmi $03                                                  ; $1a9c : $30, $03

	set1 $30.0                                                  ; $1a9e : $02, $30
	bmi $03                                                  ; $1aa0 : $30, $03

	set1 $20.0                                                  ; $1aa2 : $02, $20
	bmi $03                                                  ; $1aa4 : $30, $03

	set1 $18.0                                                  ; $1aa6 : $02, $18
	bmi $03                                                  ; $1aa8 : $30, $03

	set1 $10.0                                                  ; $1aaa : $02, $10
	bmi $03                                                  ; $1aac : $30, $03

	set1 $08.0                                                  ; $1aae : $02, $08
	dbnz Y, $05                                                  ; $1ab0 : $fe, $05

br_00_1ab2:
	or A, !$3b20                                                  ; $1ab2 : $05, $20, $3b
	tcall 0                                                  ; $1ab5 : $01
	or A, [$04+X]                                                  ; $1ab6 : $07, $04
	nop                                                  ; $1ab8 : $00
	stop                                                  ; $1ab9 : $ff
	tcall 1                                                  ; $1aba : $11
	nop                                                  ; $1abb : $00
	tcall 15                                                  ; $1abc : $f1
	nop                                                  ; $1abd : $00
	bmi br_00_1ab2                                                  ; $1abe : $30, $f2

	nop                                                  ; $1ac0 : $00
	setp                                                  ; $1ac1 : $40
	mov A, [$00]+Y                                                  ; $1ac2 : $f7, $00
	brk                                                  ; $1ac4 : $0f


	stop                                                  ; $1ac5 : $ff
	bpl $18                                                  ; $1ac6 : $10, $18

	rol A                                                  ; $1ac8 : $3c
	set1 $03.0                                                  ; $1ac9 : $02, $03
	clrc                                                  ; $1acb : $60
	stop                                                  ; $1acc : $ff
	bpl $1a                                                  ; $1acd : $10, $1a

	inc A                                                  ; $1acf : $bc
	stop                                                  ; $1ad0 : $ff
	bpl br_00_1aef                                                  ; $1ad1 : $10, $1c

	inc A                                                  ; $1ad3 : $bc
	stop                                                  ; $1ad4 : $ff
	bpl br_00_1af4                                                  ; $1ad5 : $10, $1d

	rol A                                                  ; $1ad7 : $3c
	bbs $03.0, br_00_1b3b                                                  ; $1ad8 : $03, $03, $60

	stop                                                  ; $1adb : $ff
	bpl br_00_1af3                                                  ; $1adc : $10, $15

	rol A                                                  ; $1ade : $3c
	set1 $01.0                                                  ; $1adf : $02, $01
	clrc                                                  ; $1ae1 : $60
	dbnz Y, -$01                                                  ; $1ae2 : $fe, $ff

br_00_1ae4:
	stop                                                  ; $1ae4 : $ff
	stop                                                  ; $1ae5 : $ff
	stop                                                  ; $1ae6 : $ff
	tcall 0                                                  ; $1ae7 : $01
	or A, [$04+X]                                                  ; $1ae8 : $07, $04
	nop                                                  ; $1aea : $00
	stop                                                  ; $1aeb : $ff
	tcall 1                                                  ; $1aec : $11
	nop                                                  ; $1aed : $00
	tcall 15                                                  ; $1aee : $f1

br_00_1aef:
	nop                                                  ; $1aef : $00
	bmi br_00_1ae4                                                  ; $1af0 : $30, $f2

	nop                                                  ; $1af2 : $00

br_00_1af3:
	setp                                                  ; $1af3 : $40

br_00_1af4:
	mov A, [$00]+Y                                                  ; $1af4 : $f7, $00
	bpl -$01                                                  ; $1af6 : $10, $ff

	bpl $14                                                  ; $1af8 : $10, $14

	rol A                                                  ; $1afa : $3c
	bbs $03.0, $60                                                  ; $1afb : $03, $03, $60

	stop                                                  ; $1afe : $ff
	bpl br_00_1b19                                                  ; $1aff : $10, $18

	rol A                                                  ; $1b01 : $3c
	or A, $02                                                  ; $1b02 : $04, $02
	clrc                                                  ; $1b04 : $60
	stop                                                  ; $1b05 : $ff
	bpl br_00_1b20                                                  ; $1b06 : $10, $18

	inc A                                                  ; $1b08 : $bc
	stop                                                  ; $1b09 : $ff
	bpl br_00_1b25                                                  ; $1b0a : $10, $19

	rol A                                                  ; $1b0c : $3c
	or A, $03                                                  ; $1b0d : $04, $03
	clrc                                                  ; $1b0f : $60
	stop                                                  ; $1b10 : $ff
	bpl br_00_1b27                                                  ; $1b11 : $10, $14

	rol A                                                  ; $1b13 : $3c
	or A, !$6e04                                                  ; $1b14 : $05, $04, $6e
	dbnz Y, -$01                                                  ; $1b17 : $fe, $ff

br_00_1b19:
	stop                                                  ; $1b19 : $ff
	stop                                                  ; $1b1a : $ff
	stop                                                  ; $1b1b : $ff
	tcall 0                                                  ; $1b1c : $01
	or A, [$04+X]                                                  ; $1b1d : $07, $04
	nop                                                  ; $1b1f : $00

br_00_1b20:
	stop                                                  ; $1b20 : $ff
	tcall 1                                                  ; $1b21 : $11
	nop                                                  ; $1b22 : $00
	tcall 15                                                  ; $1b23 : $f1
	nop                                                  ; $1b24 : $00

br_00_1b25:
	bmi br_00_1b19                                                  ; $1b25 : $30, $f2

br_00_1b27:
	nop                                                  ; $1b27 : $00
	setp                                                  ; $1b28 : $40
	mov A, [$00]+Y                                                  ; $1b29 : $f7, $00
	brk                                                  ; $1b2b : $0f


	stop                                                  ; $1b2c : $ff
	bpl $1b                                                  ; $1b2d : $10, $1b

	rol A                                                  ; $1b2f : $3c
	set1 $03.0                                                  ; $1b30 : $02, $03
	clrc                                                  ; $1b32 : $60
	stop                                                  ; $1b33 : $ff
	bpl br_00_1b4e                                                  ; $1b34 : $10, $18

	rol A                                                  ; $1b36 : $3c
	tcall 0                                                  ; $1b37 : $01
	set1 $60.0                                                  ; $1b38 : $02, $60
	stop                                                  ; $1b3a : $ff

br_00_1b3b:
	bpl br_00_1b57                                                  ; $1b3b : $10, $1a

	inc A                                                  ; $1b3d : $bc
	stop                                                  ; $1b3e : $ff
	bpl br_00_1b5d                                                  ; $1b3f : $10, $1c

	rol A                                                  ; $1b41 : $3c
	tcall 0                                                  ; $1b42 : $01
	tcall 0                                                  ; $1b43 : $01
	clrc                                                  ; $1b44 : $60
	stop                                                  ; $1b45 : $ff
	bpl br_00_1b66                                                  ; $1b46 : $10, $1e

	rol A                                                  ; $1b48 : $3c
	set1 $01.0                                                  ; $1b49 : $02, $01

br_00_1b4b:
	dbnz $fe, -$01                                                  ; $1b4b : $6e, $fe, $ff

br_00_1b4e:
	stop                                                  ; $1b4e : $ff
	stop                                                  ; $1b4f : $ff
	stop                                                  ; $1b50 : $ff
	tcall 0                                                  ; $1b51 : $01
	or A, (X)                                                  ; $1b52 : $06
	or A, $00                                                  ; $1b53 : $04, $00
	tcall 15                                                  ; $1b55 : $f1
	nop                                                  ; $1b56 : $00

br_00_1b57:
	bmi br_00_1b4b                                                  ; $1b57 : $30, $f2

	nop                                                  ; $1b59 : $00
	setp                                                  ; $1b5a : $40
	mov A, [$00]+Y                                                  ; $1b5b : $f7, $00

br_00_1b5d:
	bbc $f6.0, br_00_1b60                                                  ; $1b5d : $13, $f6, $00

br_00_1b60:
	ror !$012d                                                  ; $1b60 : $6c, $2d, $01
	or1 c, $1678.7                                                  ; $1b63 : $0a, $78, $f6

br_00_1b66:
	tcall 0                                                  ; $1b66 : $01
	cmp A, !$01f6+X                                                  ; $1b67 : $75, $f6, $01
	cmp (X), (Y)                                                  ; $1b6a : $79
	mov A, !$7b01+Y                                                  ; $1b6b : $f6, $01, $7b
	mov A, !$7e02+Y                                                  ; $1b6e : $f6, $02, $7e
	mov A, !$8005+Y                                                  ; $1b71 : $f6, $05, $80
	stop                                                  ; $1b74 : $ff
	tcall 1                                                  ; $1b75 : $11
	nop                                                  ; $1b76 : $00
	tcall 15                                                  ; $1b77 : $f1
	nop                                                  ; $1b78 : $00
	bmi -$0e                                                  ; $1b79 : $30, $f2

	nop                                                  ; $1b7b : $00
	setp                                                  ; $1b7c : $40
	mov A, [$00]+Y                                                  ; $1b7d : $f7, $00
	brk                                                  ; $1b7f : $0f


	stop                                                  ; $1b80 : $ff
	bpl br_00_1b9e                                                  ; $1b81 : $10, $1b

	rol A                                                  ; $1b83 : $3c
	set1 $03.0                                                  ; $1b84 : $02, $03
	clrc                                                  ; $1b86 : $60
	stop                                                  ; $1b87 : $ff
	bpl br_00_1ba6                                                  ; $1b88 : $10, $1c

	rol A                                                  ; $1b8a : $3c
	tcall 0                                                  ; $1b8b : $01
	tcall 0                                                  ; $1b8c : $01
	clrc                                                  ; $1b8d : $60
	stop                                                  ; $1b8e : $ff
	bpl $1e                                                  ; $1b8f : $10, $1e

	rol A                                                  ; $1b91 : $3c
	set1 $01.0                                                  ; $1b92 : $02, $01
	dbnz $fe, -$01                                                  ; $1b94 : $6e, $fe, $ff

br_00_1b97:
	stop                                                  ; $1b97 : $ff
	stop                                                  ; $1b98 : $ff
	stop                                                  ; $1b99 : $ff
	tcall 0                                                  ; $1b9a : $01
	or A, [$04+X]                                                  ; $1b9b : $07, $04
	nop                                                  ; $1b9d : $00

br_00_1b9e:
	stop                                                  ; $1b9e : $ff
	tcall 1                                                  ; $1b9f : $11
	nop                                                  ; $1ba0 : $00
	tcall 15                                                  ; $1ba1 : $f1
	nop                                                  ; $1ba2 : $00
	bmi br_00_1b97                                                  ; $1ba3 : $30, $f2

	nop                                                  ; $1ba5 : $00

br_00_1ba6:
	setp                                                  ; $1ba6 : $40
	mov A, [$00]+Y                                                  ; $1ba7 : $f7, $00
	brk                                                  ; $1ba9 : $0f


	stop                                                  ; $1baa : $ff
	bpl br_00_1bc6                                                  ; $1bab : $10, $19

	rol A                                                  ; $1bad : $3c
	bbs $03.0, br_00_1c11                                                  ; $1bae : $03, $03, $60

	stop                                                  ; $1bb1 : $ff
	bpl br_00_1bcb                                                  ; $1bb2 : $10, $17

	rol A                                                  ; $1bb4 : $3c
	bbs $02.0, br_00_1c18                                                  ; $1bb5 : $03, $02, $60

	dbnz Y, -$01                                                  ; $1bb8 : $fe, $ff

	stop                                                  ; $1bba : $ff
	stop                                                  ; $1bbb : $ff
	stop                                                  ; $1bbc : $ff
	tcall 0                                                  ; $1bbd : $01
	or A, [$04+X]                                                  ; $1bbe : $07, $04
	nop                                                  ; $1bc0 : $00
	clr1 $00.7                                                  ; $1bc1 : $f2, $00
	setp                                                  ; $1bc3 : $40
	stop                                                  ; $1bc4 : $ff
	tcall 1                                                  ; $1bc5 : $11

br_00_1bc6:
	nop                                                  ; $1bc6 : $00
	mov A, [$00]+Y                                                  ; $1bc7 : $f7, $00
	brk                                                  ; $1bc9 : $0f


	tcall 15                                                  ; $1bca : $f1

br_00_1bcb:
	nop                                                  ; $1bcb : $00
	bmi -$01                                                  ; $1bcc : $30, $ff

	bpl br_00_1bea                                                  ; $1bce : $10, $1a

	rol A                                                  ; $1bd0 : $3c
	set1 $01.0                                                  ; $1bd1 : $02, $01
	clrc                                                  ; $1bd3 : $60
	stop                                                  ; $1bd4 : $ff
	bpl br_00_1bf5                                                  ; $1bd5 : $10, $1e

	rol A                                                  ; $1bd7 : $3c
	bbs $03.0, br_00_1c53                                                  ; $1bd8 : $03, $03, $78

	rol A                                                  ; $1bdb : $3c
	bbs $04.0, $40                                                  ; $1bdc : $03, $04, $40

	rol A                                                  ; $1bdf : $3c
	bbs $04.0, br_00_1bfb                                                  ; $1be0 : $03, $04, $18

	rol A                                                  ; $1be3 : $3c
	bbs $02.0, br_00_1bef                                                  ; $1be4 : $03, $02, $08

	dbnz Y, -$01                                                  ; $1be7 : $fe, $ff

	stop                                                  ; $1be9 : $ff

br_00_1bea:
	stop                                                  ; $1bea : $ff
	stop                                                  ; $1beb : $ff
	tcall 0                                                  ; $1bec : $01
	or A, [$04+X]                                                  ; $1bed : $07, $04

br_00_1bef:
	nop                                                  ; $1bef : $00
	tcall 15                                                  ; $1bf0 : $f1
	nop                                                  ; $1bf1 : $00
	bmi -$0e                                                  ; $1bf2 : $30, $f2

	nop                                                  ; $1bf4 : $00

br_00_1bf5:
	setp                                                  ; $1bf5 : $40
	mov A, [$00]+Y                                                  ; $1bf6 : $f7, $00
	bbc $f6.0, br_00_1bfb                                                  ; $1bf8 : $13, $f6, $00

br_00_1bfb:
	ror !$012e                                                  ; $1bfb : $6c, $2e, $01
	or1 c, $1678.7                                                  ; $1bfe : $0a, $78, $f6
	tcall 0                                                  ; $1c01 : $01
	cmp A, !$01f6+X                                                  ; $1c02 : $75, $f6, $01
	cmp (X), (Y)                                                  ; $1c05 : $79
	mov A, !$7b01+Y                                                  ; $1c06 : $f6, $01, $7b
	mov A, !$7e02+Y                                                  ; $1c09 : $f6, $02, $7e
	mov A, !$8005+Y                                                  ; $1c0c : $f6, $05, $80
	dbnz Y, -$01                                                  ; $1c0f : $fe, $ff

br_00_1c11:
	stop                                                  ; $1c11 : $ff
	stop                                                  ; $1c12 : $ff
	stop                                                  ; $1c13 : $ff
	tcall 0                                                  ; $1c14 : $01
	or A, (X)                                                  ; $1c15 : $06
	or A, $00                                                  ; $1c16 : $04, $00

br_00_1c18:
	clr1 $00.7                                                  ; $1c18 : $f2, $00
	setp                                                  ; $1c1a : $40
	stop                                                  ; $1c1b : $ff
	tcall 1                                                  ; $1c1c : $11
	nop                                                  ; $1c1d : $00
	mov A, [$00]+Y                                                  ; $1c1e : $f7, $00
	brk                                                  ; $1c20 : $0f


	tcall 15                                                  ; $1c21 : $f1
	nop                                                  ; $1c22 : $00
	or $ff, #$fb                                                  ; $1c23 : $18, $fb, $ff
	bpl br_00_1c44                                                  ; $1c26 : $10, $1c

	rol A                                                  ; $1c28 : $3c
	set1 $03.0                                                  ; $1c29 : $02, $03
	clrp                                                  ; $1c2b : $20
	stop                                                  ; $1c2c : $ff
	bpl $1e                                                  ; $1c2d : $10, $1e

	inc A                                                  ; $1c2f : $bc
	inc Y                                                  ; $1c30 : $fc
	nop                                                  ; $1c31 : $00
	dbnz Y, -$01                                                  ; $1c32 : $fe, $ff

	stop                                                  ; $1c34 : $ff
	stop                                                  ; $1c35 : $ff
	stop                                                  ; $1c36 : $ff
	tcall 0                                                  ; $1c37 : $01
	or A, [$04+X]                                                  ; $1c38 : $07, $04
	nop                                                  ; $1c3a : $00
	clr1 $00.7                                                  ; $1c3b : $f2, $00
	setp                                                  ; $1c3d : $40
	stop                                                  ; $1c3e : $ff
	tcall 1                                                  ; $1c3f : $11
	nop                                                  ; $1c40 : $00
	mov A, [$00]+Y                                                  ; $1c41 : $f7, $00
	brk                                                  ; $1c43 : $0f


br_00_1c44:
	stop                                                  ; $1c44 : $ff
	bpl br_00_1c65                                                  ; $1c45 : $10, $1e

	tcall 15                                                  ; $1c47 : $f1
	nop                                                  ; $1c48 : $00
	bmi br_00_1c87                                                  ; $1c49 : $30, $3c

	bbs $02.0, $78                                                  ; $1c4b : $03, $02, $78

	dbnz Y, br_00_1c50                                                  ; $1c4e : $fe, $00

br_00_1c50:
	nop                                                  ; $1c50 : $00
	nop                                                  ; $1c51 : $00
	nop                                                  ; $1c52 : $00

br_00_1c53:
	tcall 0                                                  ; $1c53 : $01
	or A, (X)                                                  ; $1c54 : $06
	or A, $00                                                  ; $1c55 : $04, $00

br_00_1c57:
	tcall 15                                                  ; $1c57 : $f1
	nop                                                  ; $1c58 : $00
	bmi -$0e                                                  ; $1c59 : $30, $f2

	nop                                                  ; $1c5b : $00
	setp                                                  ; $1c5c : $40
	mov A, [$00]+Y                                                  ; $1c5d : $f7, $00
	bpl br_00_1c57                                                  ; $1c5f : $10, $f6

	nop                                                  ; $1c61 : $00
	call !$0137                                                  ; $1c62 : $3f, $37, $01

br_00_1c65:
	or $f6, $60                                                  ; $1c65 : $09, $60, $f6
	tcall 0                                                  ; $1c68 : $01
	eor A, !$01f6                                                  ; $1c69 : $45, $f6, $01
	and1 c, $01f6.0                                                  ; $1c6c : $4a, $f6, $01
	bvc -$0a                                                  ; $1c6f : $50, $f6

	tcall 0                                                  ; $1c71 : $01
	eor A, !$01f6+Y                                                  ; $1c72 : $56, $f6, $01
	mov X, A                                                  ; $1c75 : $5d
	mov A, !$6401+Y                                                  ; $1c76 : $f6, $01, $64
	mov A, !$6c01+Y                                                  ; $1c79 : $f6, $01, $6c
	mov A, !$7501+Y                                                  ; $1c7c : $f6, $01, $75
	mov A, !$8001+Y                                                  ; $1c7f : $f6, $01, $80
	dbnz Y, -$01                                                  ; $1c82 : $fe, $ff

	stop                                                  ; $1c84 : $ff
	stop                                                  ; $1c85 : $ff
	stop                                                  ; $1c86 : $ff

br_00_1c87:
	tcall 0                                                  ; $1c87 : $01
	or A, (X)                                                  ; $1c88 : $06
	or A, $00                                                  ; $1c89 : $04, $00

br_00_1c8b:
	tcall 15                                                  ; $1c8b : $f1
	nop                                                  ; $1c8c : $00
	bmi -$0e                                                  ; $1c8d : $30, $f2

	nop                                                  ; $1c8f : $00
	setp                                                  ; $1c90 : $40
	mov A, [$00]+Y                                                  ; $1c91 : $f7, $00
	bpl br_00_1c8b                                                  ; $1c93 : $10, $f6

	nop                                                  ; $1c95 : $00
	setc                                                  ; $1c96 : $80
	and A, [$01]+Y                                                  ; $1c97 : $37, $01
	or $f6, $60                                                  ; $1c99 : $09, $60, $f6
	tcall 0                                                  ; $1c9c : $01
	cmp A, !$01f6+Y                                                  ; $1c9d : $76, $f6, $01
	push Y                                                  ; $1ca0 : $6d
	mov A, !$6501+Y                                                  ; $1ca1 : $f6, $01, $65
	mov A, !$5e01+Y                                                  ; $1ca4 : $f6, $01, $5e
	mov A, !$5701+Y                                                  ; $1ca7 : $f6, $01, $57
	mov A, !$5101+Y                                                  ; $1caa : $f6, $01, $51
	mov A, !$4b01+Y                                                  ; $1cad : $f6, $01, $4b
	mov A, !$4501+Y                                                  ; $1cb0 : $f6, $01, $45
	mov A, !$3f01+Y                                                  ; $1cb3 : $f6, $01, $3f
	dbnz Y, -$01                                                  ; $1cb6 : $fe, $ff

	stop                                                  ; $1cb8 : $ff
	stop                                                  ; $1cb9 : $ff
	stop                                                  ; $1cba : $ff
	tcall 0                                                  ; $1cbb : $01
	or A, [$04+X]                                                  ; $1cbc : $07, $04
	nop                                                  ; $1cbe : $00
	bbc $01.7, -$02                                                  ; $1cbf : $f3, $01, $fe

	bbc $45.2, $30                                                  ; $1cc2 : $53, $45, $30

	bmi $01                                                  ; $1cc5 : $30, $01

	or A, [$04+X]                                                  ; $1cc7 : $07, $04
	nop                                                  ; $1cc9 : $00
	clr1 $00.7                                                  ; $1cca : $f2, $00
	setp                                                  ; $1ccc : $40
	mov A, [$00]+Y                                                  ; $1ccd : $f7, $00
	dec X                                                  ; $1ccf : $1d
	tcall 15                                                  ; $1cd0 : $f1
	set1 $30.0                                                  ; $1cd1 : $02, $30
	rol $03                                                  ; $1cd3 : $2b, $03
	bbs $70.0, br_00_1c87                                                  ; $1cd5 : $03, $70, $af

	clr1 $af.5                                                  ; $1cd8 : $b2, $af
	clr1 $b7.5                                                  ; $1cda : $b2, $b7
	clr1 $b7.5                                                  ; $1cdc : $b2, $b7
	inc $b7+X                                                  ; $1cde : $bb, $b7
	inc $be+X                                                  ; $1ce0 : $bb, $be
	bbs $03.2, $03                                                  ; $1ce2 : $43, $03, $03

	bvc br_00_1d2a                                                  ; $1ce5 : $50, $43

	bbs $03.0, br_00_1d4a                                                  ; $1ce7 : $03, $03, $60

	bbs $03.2, $03                                                  ; $1cea : $43, $03, $03

	setp                                                  ; $1ced : $40
	bbs $03.2, br_00_1cf4                                                  ; $1cee : $43, $03, $03

	eor $03, #$43                                                  ; $1cf1 : $58, $43, $03

br_00_1cf4:
	bbs $30.0, $43                                                  ; $1cf4 : $03, $30, $43

	bbs $03.0, br_00_1d4a                                                  ; $1cf7 : $03, $03, $50

	bbs $03.2, br_00_1cff                                                  ; $1cfa : $43, $03, $02

br_00_1cfd:
	and A, #$fe                                                  ; $1cfd : $28, $fe

br_00_1cff:
	stop                                                  ; $1cff : $ff
	stop                                                  ; $1d00 : $ff
	stop                                                  ; $1d01 : $ff
	stop                                                  ; $1d02 : $ff
	tcall 0                                                  ; $1d03 : $01
	or A, [$04+X]                                                  ; $1d04 : $07, $04
	nop                                                  ; $1d06 : $00
	tcall 15                                                  ; $1d07 : $f1
	nop                                                  ; $1d08 : $00
	bmi br_00_1cfd                                                  ; $1d09 : $30, $f2

	nop                                                  ; $1d0b : $00
	setp                                                  ; $1d0c : $40
	mov A, [$00]+Y                                                  ; $1d0d : $f7, $00
	brk                                                  ; $1d0f : $0f


	tcall 3                                                  ; $1d10 : $31
	bbs $02.0, $6e                                                  ; $1d11 : $03, $02, $6e

	dbnz Y, -$01                                                  ; $1d14 : $fe, $ff

	stop                                                  ; $1d16 : $ff
	nop                                                  ; $1d17 : $00
	nop                                                  ; $1d18 : $00
	tcall 0                                                  ; $1d19 : $01
	or A, [$04+X]                                                  ; $1d1a : $07, $04
	nop                                                  ; $1d1c : $00
	tcall 15                                                  ; $1d1d : $f1
	nop                                                  ; $1d1e : $00
	bmi -$0e                                                  ; $1d1f : $30, $f2

	nop                                                  ; $1d21 : $00
	setp                                                  ; $1d22 : $40
	mov A, [$00]+Y                                                  ; $1d23 : $f7, $00
	brk                                                  ; $1d25 : $0f


	and A, $03+X                                                  ; $1d26 : $34, $03
	set1 $6e.0                                                  ; $1d28 : $02, $6e

br_00_1d2a:
	dbnz Y, -$01                                                  ; $1d2a : $fe, $ff

	stop                                                  ; $1d2c : $ff
	nop                                                  ; $1d2d : $00
	nop                                                  ; $1d2e : $00
	tcall 0                                                  ; $1d2f : $01
	or A, [$04+X]                                                  ; $1d30 : $07, $04
	nop                                                  ; $1d32 : $00
	tcall 15                                                  ; $1d33 : $f1
	nop                                                  ; $1d34 : $00
	bmi -$0e                                                  ; $1d35 : $30, $f2

	nop                                                  ; $1d37 : $00
	setp                                                  ; $1d38 : $40
	mov A, [$00]+Y                                                  ; $1d39 : $f7, $00
	brk                                                  ; $1d3b : $0f


	and A, !$0203+Y                                                  ; $1d3c : $36, $03, $02

br_00_1d3f:
	clrc                                                  ; $1d3f : $60
	dbnz Y, -$01                                                  ; $1d40 : $fe, $ff

	stop                                                  ; $1d42 : $ff
	nop                                                  ; $1d43 : $00
	nop                                                  ; $1d44 : $00
	tcall 0                                                  ; $1d45 : $01
	or A, [$04+X]                                                  ; $1d46 : $07, $04
	nop                                                  ; $1d48 : $00
	tcall 15                                                  ; $1d49 : $f1

br_00_1d4a:
	nop                                                  ; $1d4a : $00
	bmi br_00_1d3f                                                  ; $1d4b : $30, $f2

	nop                                                  ; $1d4d : $00
	setp                                                  ; $1d4e : $40
	mov A, [$00]+Y                                                  ; $1d4f : $f7, $00
	brk                                                  ; $1d51 : $0f


	and (X), (Y)                                                  ; $1d52 : $39
	bbs $02.0, br_00_1dc4                                                  ; $1d53 : $03, $02, $6e

	dbnz Y, -$01                                                  ; $1d56 : $fe, $ff

	stop                                                  ; $1d58 : $ff
	nop                                                  ; $1d59 : $00
	nop                                                  ; $1d5a : $00
	tcall 0                                                  ; $1d5b : $01
	or A, [$04+X]                                                  ; $1d5c : $07, $04
	nop                                                  ; $1d5e : $00
	tcall 15                                                  ; $1d5f : $f1
	nop                                                  ; $1d60 : $00
	bmi -$0e                                                  ; $1d61 : $30, $f2

	nop                                                  ; $1d63 : $00
	setp                                                  ; $1d64 : $40
	mov A, [$00]+Y                                                  ; $1d65 : $f7, $00
	brk                                                  ; $1d67 : $0f


	rol A                                                  ; $1d68 : $3c
	bbs $02.0, br_00_1dda                                                  ; $1d69 : $03, $02, $6e

	dbnz Y, -$01                                                  ; $1d6c : $fe, $ff

	stop                                                  ; $1d6e : $ff
	nop                                                  ; $1d6f : $00
	nop                                                  ; $1d70 : $00
	tcall 0                                                  ; $1d71 : $01
	or A, [$04+X]                                                  ; $1d72 : $07, $04
	nop                                                  ; $1d74 : $00
	tcall 15                                                  ; $1d75 : $f1
	nop                                                  ; $1d76 : $00
	bmi -$0e                                                  ; $1d77 : $30, $f2

	nop                                                  ; $1d79 : $00
	setp                                                  ; $1d7a : $40
	mov A, [$00]+Y                                                  ; $1d7b : $f7, $00
	brk                                                  ; $1d7d : $0f


	call !$0203                                                  ; $1d7e : $3f, $03, $02
	dbnz $fe, -$01                                                  ; $1d81 : $6e, $fe, $ff

	stop                                                  ; $1d84 : $ff
	nop                                                  ; $1d85 : $00
	nop                                                  ; $1d86 : $00
	tcall 0                                                  ; $1d87 : $01
	or A, [$04+X]                                                  ; $1d88 : $07, $04
	nop                                                  ; $1d8a : $00
	bbc $01.7, -$02                                                  ; $1d8b : $f3, $01, $fe

	adc A, [$8d]+Y                                                  ; $1d8e : $97, $8d
	mov !$018d, A                                                  ; $1d90 : $c5, $8d, $01
	or A, [$04+X]                                                  ; $1d93 : $07, $04
	nop                                                  ; $1d95 : $00
	bbc $01.7, -$02                                                  ; $1d96 : $f3, $01, $fe

	eor A, [$83+X]                                                  ; $1d99 : $47, $83
	set1 $83.4                                                  ; $1d9b : $82, $83

br_00_1d9d:
	set1 $06.0                                                  ; $1d9d : $02, $06
	or A, [$07+X]                                                  ; $1d9f : $07, $07
	nop                                                  ; $1da1 : $00
	cmp X, !$ff00                                                  ; $1da2 : $1e, $00, $ff
	tcall 1                                                  ; $1da5 : $11
	nop                                                  ; $1da6 : $00
	tcall 15                                                  ; $1da7 : $f1
	nop                                                  ; $1da8 : $00
	bmi br_00_1d9d                                                  ; $1da9 : $30, $f2

	nop                                                  ; $1dab : $00
	setp                                                  ; $1dac : $40

br_00_1dad:
	mov A, [$00]+Y                                                  ; $1dad : $f7, $00
	tcall 1                                                  ; $1daf : $11
	stop                                                  ; $1db0 : $ff

br_00_1db1:
	bpl br_00_1dcf                                                  ; $1db1 : $10, $1c

	mov Y, $3a+X                                                  ; $1db3 : $fb, $3a
	bbs $01.0, br_00_1de8                                                  ; $1db5 : $03, $01, $30

	inc Y                                                  ; $1db8 : $fc
	nop                                                  ; $1db9 : $00
	dbnz Y, br_00_1dad                                                  ; $1dba : $fe, $f1

	nop                                                  ; $1dbc : $00
	bmi br_00_1db1                                                  ; $1dbd : $30, $f2

	nop                                                  ; $1dbf : $00
	setp                                                  ; $1dc0 : $40
	mov A, [$00]+Y                                                  ; $1dc1 : $f7, $00
	dec X                                                  ; $1dc3 : $1d

br_00_1dc4:
	mov Y, $3e+X                                                  ; $1dc4 : $fb, $3e
	bbs $02.0, br_00_1e37                                                  ; $1dc6 : $03, $02, $6e

	inc Y                                                  ; $1dc9 : $fc
	nop                                                  ; $1dca : $00
	dbnz Y, -$01                                                  ; $1dcb : $fe, $ff

	stop                                                  ; $1dcd : $ff
	stop                                                  ; $1dce : $ff

br_00_1dcf:
	stop                                                  ; $1dcf : $ff
	tcall 0                                                  ; $1dd0 : $01
	or A, [$04+X]                                                  ; $1dd1 : $07, $04
	nop                                                  ; $1dd3 : $00
	clr1 $00.7                                                  ; $1dd4 : $f2, $00
	setp                                                  ; $1dd6 : $40
	mov A, [$00]+Y                                                  ; $1dd7 : $f7, $00
	dec X                                                  ; $1dd9 : $1d

br_00_1dda:
	tcall 15                                                  ; $1dda : $f1
	nop                                                  ; $1ddb : $00
	bmi $40                                                  ; $1ddc : $30, $40

	or A, #$07                                                  ; $1dde : $08, $07
	cmp $0c, #$3c                                                  ; $1de0 : $78, $3c, $0c
	or1 c, $1e78.7                                                  ; $1de3 : $0a, $78, $fe
	nop                                                  ; $1de6 : $00
	nop                                                  ; $1de7 : $00

br_00_1de8:
	nop                                                  ; $1de8 : $00
	nop                                                  ; $1de9 : $00
	tcall 0                                                  ; $1dea : $01
	or A, [$04+X]                                                  ; $1deb : $07, $04
	nop                                                  ; $1ded : $00
	clr1 $00.7                                                  ; $1dee : $f2, $00
	setp                                                  ; $1df0 : $40
	mov A, [$00]+Y                                                  ; $1df1 : $f7, $00
	dec X                                                  ; $1df3 : $1d
	tcall 15                                                  ; $1df4 : $f1
	nop                                                  ; $1df5 : $00
	bmi br_00_1e38                                                  ; $1df6 : $30, $40

	or A, (X)                                                  ; $1df8 : $06
	or A, !$bc78                                                  ; $1df9 : $05, $78, $bc
	di                                                  ; $1dfc : $c0
	inc A                                                  ; $1dfd : $bc
	di                                                  ; $1dfe : $c0
	rol A                                                  ; $1dff : $3c
	asl !$780a                                                  ; $1e00 : $0c, $0a, $78
	dbnz Y, br_00_1e05                                                  ; $1e03 : $fe, $00

br_00_1e05:
	nop                                                  ; $1e05 : $00
	bvc br_00_1e08                                                  ; $1e06 : $50, $00

br_00_1e08:
	set1 $06.0                                                  ; $1e08 : $02, $06
	or A, [$07+X]                                                  ; $1e0a : $07, $07
	nop                                                  ; $1e0c : $00
	or (X), (Y)                                                  ; $1e0d : $19
	nop                                                  ; $1e0e : $00
	clr1 $00.7                                                  ; $1e0f : $f2, $00
	setp                                                  ; $1e11 : $40
	mov A, [$00]+Y                                                  ; $1e12 : $f7, $00

br_00_1e14:
	brk                                                  ; $1e14 : $0f


	tcall 15                                                  ; $1e15 : $f1
	nop                                                  ; $1e16 : $00
	bmi br_00_1e39                                                  ; $1e17 : $30, $20

	or A, (X)                                                  ; $1e19 : $06
	bbs $6e.0, $20                                                  ; $1e1a : $03, $6e, $20

	or $6e, #$16                                                  ; $1e1d : $18, $16, $6e
	dbnz Y, br_00_1e14                                                  ; $1e20 : $fe, $f2

	nop                                                  ; $1e22 : $00
	setp                                                  ; $1e23 : $40
	mov A, [$00]+Y                                                  ; $1e24 : $f7, $00
	brk                                                  ; $1e26 : $0f


	mov A, !$8400+Y                                                  ; $1e27 : $f6, $00, $84
	tcall 15                                                  ; $1e2a : $f1
	nop                                                  ; $1e2b : $00
	bmi br_00_1e4e                                                  ; $1e2c : $30, $20

	or A, (X)                                                  ; $1e2e : $06
	bbs $6e.0, $20                                                  ; $1e2f : $03, $6e, $20

	or $6e, #$16                                                  ; $1e32 : $18, $16, $6e
	dbnz Y, -$01                                                  ; $1e35 : $fe, $ff

br_00_1e37:
	stop                                                  ; $1e37 : $ff

br_00_1e38:
	stop                                                  ; $1e38 : $ff

br_00_1e39:
	stop                                                  ; $1e39 : $ff
	set1 $06.0                                                  ; $1e3a : $02, $06
	or A, [$07+X]                                                  ; $1e3c : $07, $07
	nop                                                  ; $1e3e : $00
	asl A                                                  ; $1e3f : $1c
	nop                                                  ; $1e40 : $00
	stop                                                  ; $1e41 : $ff
	bbs $00.0, br_00_1e37                                                  ; $1e42 : $03, $00, $f2

	nop                                                  ; $1e45 : $00
	setp                                                  ; $1e46 : $40
	mov A, [$00]+Y                                                  ; $1e47 : $f7, $00

br_00_1e49:
	or A, $f1+X                                                  ; $1e49 : $14, $f1
	nop                                                  ; $1e4b : $00
	bmi br_00_1e8f                                                  ; $1e4c : $30, $41

br_00_1e4e:
	or A, #$05                                                  ; $1e4e : $08, $05
	cmp $24, #$4d                                                  ; $1e50 : $78, $4d, $24
	set1 $78.1                                                  ; $1e53 : $22, $78
	dbnz Y, br_00_1e49                                                  ; $1e55 : $fe, $f2

	nop                                                  ; $1e57 : $00
	setp                                                  ; $1e58 : $40
	mov A, [$00]+Y                                                  ; $1e59 : $f7, $00
	tset1 !$11ff                                                  ; $1e5b : $0e, $ff, $11
	nop                                                  ; $1e5e : $00
	stop                                                  ; $1e5f : $ff
	bpl br_00_1e7d                                                  ; $1e60 : $10, $1b

	rol A                                                  ; $1e62 : $3c
	or A, #$07                                                  ; $1e63 : $08, $07
	bmi -$01                                                  ; $1e65 : $30, $ff

	bpl $1e                                                  ; $1e67 : $10, $1e

	rol A                                                  ; $1e69 : $3c
	or A, (X)                                                  ; $1e6a : $06
	or A, [$20+X]                                                  ; $1e6b : $07, $20
	rol A                                                  ; $1e6d : $3c
	or A, (X)                                                  ; $1e6e : $06
	or A, [$18+X]                                                  ; $1e6f : $07, $18
	rol A                                                  ; $1e71 : $3c
	or A, (X)                                                  ; $1e72 : $06
	or A, [$10+X]                                                  ; $1e73 : $07, $10
	rol A                                                  ; $1e75 : $3c
	or A, (X)                                                  ; $1e76 : $06
	or A, [$08+X]                                                  ; $1e77 : $07, $08
	inc A                                                  ; $1e79 : $bc
	inc A                                                  ; $1e7a : $bc
	inc A                                                  ; $1e7b : $bc
	inc A                                                  ; $1e7c : $bc

br_00_1e7d:
	rol A                                                  ; $1e7d : $3c
	or A, (X)                                                  ; $1e7e : $06
	or A, !$fe08                                                  ; $1e7f : $05, $08, $fe
	stop                                                  ; $1e82 : $ff
	stop                                                  ; $1e83 : $ff
	stop                                                  ; $1e84 : $ff
	stop                                                  ; $1e85 : $ff
	set1 $06.0                                                  ; $1e86 : $02, $06
	or A, [$07+X]                                                  ; $1e88 : $07, $07
	nop                                                  ; $1e8a : $00
	bbs $00.2, -$0e                                                  ; $1e8b : $43, $00, $f2

br_00_1e8e:
	nop                                                  ; $1e8e : $00

br_00_1e8f:
	setp                                                  ; $1e8f : $40
	stop                                                  ; $1e90 : $ff
	tcall 1                                                  ; $1e91 : $11
	nop                                                  ; $1e92 : $00
	tcall 15                                                  ; $1e93 : $f1
	nop                                                  ; $1e94 : $00
	bmi br_00_1e8e                                                  ; $1e95 : $30, $f7

	nop                                                  ; $1e97 : $00
	brk                                                  ; $1e98 : $0f


	stop                                                  ; $1e99 : $ff
	bpl $1b                                                  ; $1e9a : $10, $1b

	rol A                                                  ; $1e9c : $3c
	or $18, $08                                                  ; $1e9d : $09, $08, $18
	stop                                                  ; $1ea0 : $ff
	bpl br_00_1ec1                                                  ; $1ea1 : $10, $1e

	rol A                                                  ; $1ea3 : $3c
	or A, (X)                                                  ; $1ea4 : $06
	or A, #$40                                                  ; $1ea5 : $08, $40
	rol A                                                  ; $1ea7 : $3c
	bbs $05.0, $40                                                  ; $1ea8 : $03, $05, $40

	rol A                                                  ; $1eab : $3c
	bbs $05.0, $38                                                  ; $1eac : $03, $05, $38

	inc A                                                  ; $1eaf : $bc
	rol A                                                  ; $1eb0 : $3c
	bbs $05.0, $30                                                  ; $1eb1 : $03, $05, $30

	rol A                                                  ; $1eb4 : $3c
	bbs $05.0, $20                                                  ; $1eb5 : $03, $05, $20

	rol A                                                  ; $1eb8 : $3c
	bbs $05.0, br_00_1ed4                                                  ; $1eb9 : $03, $05, $18

	rol A                                                  ; $1ebc : $3c
	bbs $05.0, $10                                                  ; $1ebd : $03, $05, $10

	rol A                                                  ; $1ec0 : $3c

br_00_1ec1:
	bbs $05.0, $08                                                  ; $1ec1 : $03, $05, $08

	rol A                                                  ; $1ec4 : $3c
	bbs $02.0, br_00_1eca                                                  ; $1ec5 : $03, $02, $02

	dbnz Y, -$0f                                                  ; $1ec8 : $fe, $f1

br_00_1eca:
	nop                                                  ; $1eca : $00
	bmi -$0e                                                  ; $1ecb : $30, $f2

	nop                                                  ; $1ecd : $00
	setp                                                  ; $1ece : $40
	mov A, [$00]+Y                                                  ; $1ecf : $f7, $00
	bbc $f6.0, br_00_1ed4                                                  ; $1ed1 : $13, $f6, $00

br_00_1ed4:
	ror !$0129                                                  ; $1ed4 : $6c, $29, $01
	or1 c, $1678.7                                                  ; $1ed7 : $0a, $78, $f6
	tcall 0                                                  ; $1eda : $01
	cmp A, !$01f6+X                                                  ; $1edb : $75, $f6, $01
	cmp (X), (Y)                                                  ; $1ede : $79
	mov A, !$7b01+Y                                                  ; $1edf : $f6, $01, $7b
	mov A, !$7e02+Y                                                  ; $1ee2 : $f6, $02, $7e
	mov A, !$8005+Y                                                  ; $1ee5 : $f6, $05, $80
	dbnz Y, br_00_1eee                                                  ; $1ee8 : $fe, $04

	or A, #$fe                                                  ; $1eea : $08, $fe
	sbc A, #$01                                                  ; $1eec : $a8, $01

br_00_1eee:
	or A, [$04+X]                                                  ; $1eee : $07, $04
	nop                                                  ; $1ef0 : $00
	clr1 $00.7                                                  ; $1ef1 : $f2, $00
	setp                                                  ; $1ef3 : $40
	stop                                                  ; $1ef4 : $ff
	tcall 1                                                  ; $1ef5 : $11
	nop                                                  ; $1ef6 : $00
	tcall 15                                                  ; $1ef7 : $f1
	nop                                                  ; $1ef8 : $00
	bmi -$09                                                  ; $1ef9 : $30, $f7

	nop                                                  ; $1efb : $00
	brk                                                  ; $1efc : $0f


	stop                                                  ; $1efd : $ff
	bpl br_00_1f14                                                  ; $1efe : $10, $14

	rol A                                                  ; $1f00 : $3c
	tcall 0                                                  ; $1f01 : $01
	set1 $10.0                                                  ; $1f02 : $02, $10
	rol A                                                  ; $1f04 : $3c
	tcall 0                                                  ; $1f05 : $01
	set1 $18.0                                                  ; $1f06 : $02, $18
	rol A                                                  ; $1f08 : $3c
	tcall 0                                                  ; $1f09 : $01
	set1 $20.0                                                  ; $1f0a : $02, $20
	rol A                                                  ; $1f0c : $3c
	tcall 0                                                  ; $1f0d : $01
	set1 $30.0                                                  ; $1f0e : $02, $30
	rol A                                                  ; $1f10 : $3c
	or A, (X)                                                  ; $1f11 : $06
	or A, [$60+X]                                                  ; $1f12 : $07, $60

br_00_1f14:
	rol A                                                  ; $1f14 : $3c
	set1 $04.0                                                  ; $1f15 : $02, $04
	bmi br_00_1f55                                                  ; $1f17 : $30, $3c

	set1 $03.0                                                  ; $1f19 : $02, $03
	clrp                                                  ; $1f1b : $20
	rol A                                                  ; $1f1c : $3c
	set1 $03.0                                                  ; $1f1d : $02, $03
	or $02, #$3c                                                  ; $1f1f : $18, $3c, $02
	tcall 0                                                  ; $1f22 : $01

br_00_1f23:
	bpl br_00_1f23                                                  ; $1f23 : $10, $fe

	stop                                                  ; $1f25 : $ff
	stop                                                  ; $1f26 : $ff
	stop                                                  ; $1f27 : $ff
	stop                                                  ; $1f28 : $ff
	tcall 0                                                  ; $1f29 : $01
	or A, [$04+X]                                                  ; $1f2a : $07, $04
	nop                                                  ; $1f2c : $00

br_00_1f2d:
	tcall 15                                                  ; $1f2d : $f1
	nop                                                  ; $1f2e : $00
	bmi br_00_1f23                                                  ; $1f2f : $30, $f2

	nop                                                  ; $1f31 : $00
	setp                                                  ; $1f32 : $40
	mov A, [$00]+Y                                                  ; $1f33 : $f7, $00
	bpl br_00_1f2d                                                  ; $1f35 : $10, $f6

	nop                                                  ; $1f37 : $00
	setc                                                  ; $1f38 : $80
	tcall 4                                                  ; $1f39 : $41
	tcall 0                                                  ; $1f3a : $01
	or $f6, $50                                                  ; $1f3b : $09, $50, $f6
	tcall 0                                                  ; $1f3e : $01
	ror $f6+X                                                  ; $1f3f : $7b, $f6
	tcall 0                                                  ; $1f41 : $01
	tcall 7                                                  ; $1f42 : $71
	mov A, !$6901+Y                                                  ; $1f43 : $f6, $01, $69
	mov A, !$6001+Y                                                  ; $1f46 : $f6, $01, $60
	mov A, !$5901+Y                                                  ; $1f49 : $f6, $01, $59
	mov A, !$5201+Y                                                  ; $1f4c : $f6, $01, $52
	mov A, !$4c01+Y                                                  ; $1f4f : $f6, $01, $4c
	mov A, !$4501+Y                                                  ; $1f52 : $f6, $01, $45

br_00_1f55:
	mov A, !$3f01+Y                                                  ; $1f55 : $f6, $01, $3f
	dbnz Y, -$01                                                  ; $1f58 : $fe, $ff

	stop                                                  ; $1f5a : $ff
	stop                                                  ; $1f5b : $ff
	stop                                                  ; $1f5c : $ff
	set1 $06.0                                                  ; $1f5d : $02, $06
	or A, [$07+X]                                                  ; $1f5f : $07, $07
	nop                                                  ; $1f61 : $00
	cmp X, !$f100                                                  ; $1f62 : $1e, $00, $f1
	nop                                                  ; $1f65 : $00
	bmi -$01                                                  ; $1f66 : $30, $ff

	tcall 1                                                  ; $1f68 : $11
	nop                                                  ; $1f69 : $00
	clr1 $00.7                                                  ; $1f6a : $f2, $00
	setp                                                  ; $1f6c : $40

br_00_1f6d:
	mov A, [$00]+Y                                                  ; $1f6d : $f7, $00
	tcall 1                                                  ; $1f6f : $11
	stop                                                  ; $1f70 : $ff

br_00_1f71:
	bpl br_00_1f8d                                                  ; $1f71 : $10, $1a

	mov Y, $3c+X                                                  ; $1f73 : $fb, $3c
	bbs $01.0, br_00_1fa8                                                  ; $1f75 : $03, $01, $30

	inc Y                                                  ; $1f78 : $fc
	nop                                                  ; $1f79 : $00
	dbnz Y, br_00_1f6d                                                  ; $1f7a : $fe, $f1

	nop                                                  ; $1f7c : $00
	bmi br_00_1f71                                                  ; $1f7d : $30, $f2

	nop                                                  ; $1f7f : $00
	setp                                                  ; $1f80 : $40
	mov A, [$00]+Y                                                  ; $1f81 : $f7, $00
	dec X                                                  ; $1f83 : $1d
	mov Y, $35+X                                                  ; $1f84 : $fb, $35
	bbs $02.0, $6e                                                  ; $1f86 : $03, $02, $6e

	inc Y                                                  ; $1f89 : $fc
	nop                                                  ; $1f8a : $00
	dbnz Y, -$01                                                  ; $1f8b : $fe, $ff

br_00_1f8d:
	stop                                                  ; $1f8d : $ff
	stop                                                  ; $1f8e : $ff
	stop                                                  ; $1f8f : $ff
	set1 $06.0                                                  ; $1f90 : $02, $06
	or A, [$07+X]                                                  ; $1f92 : $07, $07
	nop                                                  ; $1f94 : $00
	or A, !$f200+X                                                  ; $1f95 : $15, $00, $f2

br_00_1f98:
	nop                                                  ; $1f98 : $00
	setp                                                  ; $1f99 : $40
	mov A, [$00]+Y                                                  ; $1f9a : $f7, $00
	or A, $f1+X                                                  ; $1f9c : $14, $f1
	nop                                                  ; $1f9e : $00
	bmi br_00_1fe4                                                  ; $1f9f : $30, $43

	or $60, #$16                                                  ; $1fa1 : $18, $16, $60
	dbnz Y, br_00_1f98                                                  ; $1fa4 : $fe, $f2

	nop                                                  ; $1fa6 : $00
	setp                                                  ; $1fa7 : $40

br_00_1fa8:
	mov A, [$00]+Y                                                  ; $1fa8 : $f7, $00
	tset1 !$00f1                                                  ; $1faa : $0e, $f1, $00
	bmi -$01                                                  ; $1fad : $30, $ff

	tcall 1                                                  ; $1faf : $11
	nop                                                  ; $1fb0 : $00
	stop                                                  ; $1fb1 : $ff
	bpl br_00_1fcd                                                  ; $1fb2 : $10, $19

	rol A                                                  ; $1fb4 : $3c
	or A, #$07                                                  ; $1fb5 : $08, $07
	bmi -$01                                                  ; $1fb7 : $30, $ff

	bpl br_00_1fd7                                                  ; $1fb9 : $10, $1c

	rol A                                                  ; $1fbb : $3c
	or A, (X)                                                  ; $1fbc : $06
	or A, [$20+X]                                                  ; $1fbd : $07, $20
	rol A                                                  ; $1fbf : $3c
	or A, (X)                                                  ; $1fc0 : $06
	or A, [$18+X]                                                  ; $1fc1 : $07, $18
	rol A                                                  ; $1fc3 : $3c
	or A, (X)                                                  ; $1fc4 : $06
	or A, [$10+X]                                                  ; $1fc5 : $07, $10
	rol A                                                  ; $1fc7 : $3c
	or A, (X)                                                  ; $1fc8 : $06
	or A, [$08+X]                                                  ; $1fc9 : $07, $08
	inc A                                                  ; $1fcb : $bc
	inc A                                                  ; $1fcc : $bc

br_00_1fcd:
	inc A                                                  ; $1fcd : $bc
	inc A                                                  ; $1fce : $bc
	rol A                                                  ; $1fcf : $3c
	or A, (X)                                                  ; $1fd0 : $06
	or A, !$fe08                                                  ; $1fd1 : $05, $08, $fe
	stop                                                  ; $1fd4 : $ff
	stop                                                  ; $1fd5 : $ff
	stop                                                  ; $1fd6 : $ff

br_00_1fd7:
	stop                                                  ; $1fd7 : $ff
	tcall 0                                                  ; $1fd8 : $01
	or A, [$04+X]                                                  ; $1fd9 : $07, $04
	nop                                                  ; $1fdb : $00
	tcall 15                                                  ; $1fdc : $f1
	nop                                                  ; $1fdd : $00
	bmi -$0e                                                  ; $1fde : $30, $f2

	nop                                                  ; $1fe0 : $00
	setp                                                  ; $1fe1 : $40
	mov A, [$00]+Y                                                  ; $1fe2 : $f7, $00

br_00_1fe4:
	bbc $f6.0, br_00_1fe7                                                  ; $1fe4 : $13, $f6, $00

br_00_1fe7:
	ror !$0829                                                  ; $1fe7 : $6c, $29, $08
	dec X                                                  ; $1fea : $1d
	cmp $03, #$f6                                                  ; $1feb : $78, $f6, $03
	cmp A, !$04f6+X                                                  ; $1fee : $75, $f6, $04
	cmp (X), (Y)                                                  ; $1ff1 : $79
	mov A, !$7b04+Y                                                  ; $1ff2 : $f6, $04, $7b
	mov A, !$7e05+Y                                                  ; $1ff5 : $f6, $05, $7e
	mov A, !$8006+Y                                                  ; $1ff8 : $f6, $06, $80
	dbnz Y, -$01                                                  ; $1ffb : $fe, $ff

br_00_1ffd:
	stop                                                  ; $1ffd : $ff
	stop                                                  ; $1ffe : $ff
	stop                                                  ; $1fff : $ff
	set1 $06.0                                                  ; $2000 : $02, $06
	or A, [$07+X]                                                  ; $2002 : $07, $07
	nop                                                  ; $2004 : $00
	or A, !$f100+Y                                                  ; $2005 : $16, $00, $f1
	nop                                                  ; $2008 : $00
	bmi br_00_1ffd                                                  ; $2009 : $30, $f2

	nop                                                  ; $200b : $00
	setp                                                  ; $200c : $40
	mov A, [$00]+Y                                                  ; $200d : $f7, $00

br_00_200f:
	tcall 0                                                  ; $200f : $01
	eor A, $06                                                  ; $2010 : $44, $06
	set1 $78.0                                                  ; $2012 : $02, $78
	mov !$fffe, A                                                  ; $2014 : $c5, $fe, $ff
	tcall 1                                                  ; $2017 : $11
	nop                                                  ; $2018 : $00
	tcall 15                                                  ; $2019 : $f1
	nop                                                  ; $201a : $00
	bmi br_00_200f                                                  ; $201b : $30, $f2

	nop                                                  ; $201d : $00
	setp                                                  ; $201e : $40
	mov A, [$00]+Y                                                  ; $201f : $f7, $00
	brk                                                  ; $2021 : $0f


	stop                                                  ; $2022 : $ff
	bpl br_00_2043                                                  ; $2023 : $10, $1e

	and A, $06                                                  ; $2025 : $24, $06
	tcall 0                                                  ; $2027 : $01
	bmi br_00_2052                                                  ; $2028 : $30, $28

	asl !$3001                                                  ; $202a : $0c, $01, $30
	dbnz Y, -$01                                                  ; $202d : $fe, $ff

	stop                                                  ; $202f : $ff
	stop                                                  ; $2030 : $ff
	stop                                                  ; $2031 : $ff
	tcall 0                                                  ; $2032 : $01
	or A, !$0004                                                  ; $2033 : $05, $04, $00
	clr1 $00.7                                                  ; $2036 : $f2, $00
	setp                                                  ; $2038 : $40
	stop                                                  ; $2039 : $ff
	tcall 1                                                  ; $203a : $11
	nop                                                  ; $203b : $00
	tcall 15                                                  ; $203c : $f1
	nop                                                  ; $203d : $00
	bmi -$09                                                  ; $203e : $30, $f7

	nop                                                  ; $2040 : $00
	brk                                                  ; $2041 : $0f


	stop                                                  ; $2042 : $ff

br_00_2043:
	bpl br_00_205a                                                  ; $2043 : $10, $15

	rol A                                                  ; $2045 : $3c
	tcall 0                                                  ; $2046 : $01
	set1 $10.0                                                  ; $2047 : $02, $10
	rol A                                                  ; $2049 : $3c
	tcall 0                                                  ; $204a : $01
	set1 $18.0                                                  ; $204b : $02, $18
	rol A                                                  ; $204d : $3c
	tcall 0                                                  ; $204e : $01
	set1 $20.0                                                  ; $204f : $02, $20
	rol A                                                  ; $2051 : $3c

br_00_2052:
	tcall 0                                                  ; $2052 : $01
	set1 $30.0                                                  ; $2053 : $02, $30
	rol A                                                  ; $2055 : $3c
	tcall 0                                                  ; $2056 : $01
	set1 $60.0                                                  ; $2057 : $02, $60
	rol A                                                  ; $2059 : $3c

br_00_205a:
	set1 $03.0                                                  ; $205a : $02, $03
	or $02, #$3c                                                  ; $205c : $18, $3c, $02
	tcall 0                                                  ; $205f : $01

br_00_2060:
	bpl br_00_2060                                                  ; $2060 : $10, $fe

	stop                                                  ; $2062 : $ff
	stop                                                  ; $2063 : $ff
	stop                                                  ; $2064 : $ff
	stop                                                  ; $2065 : $ff
	set1 $06.0                                                  ; $2066 : $02, $06
	or A, [$07+X]                                                  ; $2068 : $07, $07
	nop                                                  ; $206a : $00
	rol !$f200                                                  ; $206b : $2c, $00, $f2
	nop                                                  ; $206e : $00
	setp                                                  ; $206f : $40
	tcall 15                                                  ; $2070 : $f1
	nop                                                  ; $2071 : $00
	setp                                                  ; $2072 : $40
	mov A, [$00]+Y                                                  ; $2073 : $f7, $00
	push PSW                                                  ; $2075 : $0d
	clrp                                                  ; $2076 : $20
	or A, (X)                                                  ; $2077 : $06
	or A, !$a478                                                  ; $2078 : $05, $78, $a4
	sbc A, #$ab                                                  ; $207b : $a8, $ab
	cbne $06, $05                                                  ; $207d : $2e, $06, $05

	dbnz $2d, $06                                                  ; $2080 : $6e, $2d, $06

	or A, !$2c50                                                  ; $2083 : $05, $50, $2c
	or A, (X)                                                  ; $2086 : $06
	or A, !$2b40                                                  ; $2087 : $05, $40, $2b
	or A, (X)                                                  ; $208a : $06
	or A, !$2a30                                                  ; $208b : $05, $30, $2a

br_00_208e:
	or A, (X)                                                  ; $208e : $06
	or A, !$fe18                                                  ; $208f : $05, $18, $fe
	clr1 $00.7                                                  ; $2092 : $f2, $00
	setp                                                  ; $2094 : $40
	tcall 15                                                  ; $2095 : $f1
	nop                                                  ; $2096 : $00
	or $11, #$ff                                                  ; $2097 : $18, $ff, $11
	nop                                                  ; $209a : $00
	mov A, [$00]+Y                                                  ; $209b : $f7, $00
	brk                                                  ; $209d : $0f


	stop                                                  ; $209e : $ff
	bpl br_00_20bd                                                  ; $209f : $10, $1c

	rol A                                                  ; $20a1 : $3c
	bbs $04.0, br_00_20ad                                                  ; $20a2 : $03, $04, $08

	rol A                                                  ; $20a5 : $3c
	bbs $04.0, br_00_20b9                                                  ; $20a6 : $03, $04, $10

	rol A                                                  ; $20a9 : $3c
	bbs $04.0, br_00_20c5                                                  ; $20aa : $03, $04, $18

br_00_20ad:
	rol A                                                  ; $20ad : $3c
	and A, #$29                                                  ; $20ae : $28, $29
	bmi $3c                                                  ; $20b0 : $30, $3c

	or A, (X)                                                  ; $20b2 : $06
	or A, [$20+X]                                                  ; $20b3 : $07, $20
	rol A                                                  ; $20b5 : $3c
	or A, (X)                                                  ; $20b6 : $06
	or A, [$18+X]                                                  ; $20b7 : $07, $18

br_00_20b9:
	rol A                                                  ; $20b9 : $3c
	or A, (X)                                                  ; $20ba : $06
	or A, [$10+X]                                                  ; $20bb : $07, $10

br_00_20bd:
	rol A                                                  ; $20bd : $3c
	or A, (X)                                                  ; $20be : $06
	or A, !$fe08                                                  ; $20bf : $05, $08, $fe
	mov A, !$7e02+Y                                                  ; $20c2 : $f6, $02, $7e

br_00_20c5:
	mov A, !$0602+Y                                                  ; $20c5 : $f6, $02, $06
	or A, [$07+X]                                                  ; $20c8 : $07, $07
	nop                                                  ; $20ca : $00
	or1 c, /$1200.7                                                  ; $20cb : $2a, $00, $f2
	nop                                                  ; $20ce : $00
	setp                                                  ; $20cf : $40
	tcall 15                                                  ; $20d0 : $f1
	nop                                                  ; $20d1 : $00
	setp                                                  ; $20d2 : $40
	mov A, [$00]+Y                                                  ; $20d3 : $f7, $00
	push PSW                                                  ; $20d5 : $0d
	mov Y, $1e+X                                                  ; $20d6 : $fb, $1e
	or A, (X)                                                  ; $20d8 : $06
	or A, !$2378                                                  ; $20d9 : $05, $78, $23
	or A, $03                                                  ; $20dc : $04, $03
	cmp $06, #$1c                                                  ; $20de : $78, $1c, $06

br_00_20e1:
	or A, !$fc78                                                  ; $20e1 : $05, $78, $fc
	or A, (X)                                                  ; $20e4 : $06
	jmp [!$0304+X]                                                  ; $20e5 : $1f, $04, $03


	cmp $a1, #$9b                                                  ; $20e8 : $78, $9b, $a1
	sbc A, (X)                                                  ; $20eb : $a6
	bbs $9b.5, br_00_208e                                                  ; $20ec : $a3, $9b, $9f

	dbnz Y, -$0e                                                  ; $20ef : $fe, $f2

	nop                                                  ; $20f1 : $00
	setp                                                  ; $20f2 : $40
	tcall 15                                                  ; $20f3 : $f1
	nop                                                  ; $20f4 : $00
	bmi -$01                                                  ; $20f5 : $30, $ff

	tcall 1                                                  ; $20f7 : $11
	nop                                                  ; $20f8 : $00
	mov A, [$00]+Y                                                  ; $20f9 : $f7, $00
	brk                                                  ; $20fb : $0f


	stop                                                  ; $20fc : $ff
	bpl br_00_2117                                                  ; $20fd : $10, $18

	rol A                                                  ; $20ff : $3c
	bbs $04.0, br_00_210b                                                  ; $2100 : $03, $04, $08

	rol A                                                  ; $2103 : $3c

br_00_2104:
	bbs $04.0, br_00_2117                                                  ; $2104 : $03, $04, $10

	rol A                                                  ; $2107 : $3c
	bbs $04.0, $18                                                  ; $2108 : $03, $04, $18

br_00_210b:
	rol A                                                  ; $210b : $3c
	push Y                                                  ; $210c : $6d
	dbnz $30, br_00_214c                                                  ; $210d : $6e, $30, $3c

	or A, (X)                                                  ; $2110 : $06
	or A, [$20+X]                                                  ; $2111 : $07, $20
	rol A                                                  ; $2113 : $3c
	or A, (X)                                                  ; $2114 : $06
	or A, [$18+X]                                                  ; $2115 : $07, $18

br_00_2117:
	rol A                                                  ; $2117 : $3c
	or A, (X)                                                  ; $2118 : $06
	or A, [$10+X]                                                  ; $2119 : $07, $10
	rol A                                                  ; $211b : $3c
	or A, (X)                                                  ; $211c : $06
	or A, !$fe08                                                  ; $211d : $05, $08, $fe
	or A, #$fe                                                  ; $2120 : $08, $fe
	mov A, !$0302+Y                                                  ; $2122 : $f6, $02, $03
	or A, !$0706                                                  ; $2125 : $05, $06, $07
	or1 c, $0d00.1                                                  ; $2128 : $0a, $00, $2d
	nop                                                  ; $212b : $00
	tcall 6                                                  ; $212c : $61
	nop                                                  ; $212d : $00
	clr1 $00.7                                                  ; $212e : $f2, $00
	setp                                                  ; $2130 : $40
	tcall 15                                                  ; $2131 : $f1
	nop                                                  ; $2132 : $00
	call !$00f7                                                  ; $2133 : $3f, $f7, $00
	push PSW                                                  ; $2136 : $0d
	mov Y, $19+X                                                  ; $2137 : $fb, $19
	or A, (X)                                                  ; $2139 : $06
	or A, !$1e78                                                  ; $213a : $05, $78, $1e
	or A, $03                                                  ; $213d : $04, $03
	cmp $06, #$17                                                  ; $213f : $78, $17, $06
	or A, !$fc78                                                  ; $2142 : $05, $78, $fc
	or (X), (Y)                                                  ; $2145 : $19
	decw $04                                                  ; $2146 : $1a, $04
	bbs $78.0, br_00_20e1                                                  ; $2148 : $03, $78, $96

	dec A                                                  ; $214b : $9c

br_00_214c:
	tcall 10                                                  ; $214c : $a1
	div YA, X                                                  ; $214d : $9e
	adc A, !$fe9a+Y                                                  ; $214e : $96, $9a, $fe
	clr1 $00.7                                                  ; $2151 : $f2, $00

br_00_2153:
	setp                                                  ; $2153 : $40
	tcall 15                                                  ; $2154 : $f1
	nop                                                  ; $2155 : $00
	bmi -$01                                                  ; $2156 : $30, $ff

	tcall 1                                                  ; $2158 : $11
	nop                                                  ; $2159 : $00
	mov A, [$00]+Y                                                  ; $215a : $f7, $00
	brk                                                  ; $215c : $0f


	stop                                                  ; $215d : $ff
	bpl br_00_217a                                                  ; $215e : $10, $1a

	rol A                                                  ; $2160 : $3c
	bbs $04.0, br_00_216c                                                  ; $2161 : $03, $04, $08

	rol A                                                  ; $2164 : $3c
	bbs $04.0, br_00_2178                                                  ; $2165 : $03, $04, $10

	rol A                                                  ; $2168 : $3c
	bbs $04.0, $18                                                  ; $2169 : $03, $04, $18

br_00_216c:
	rol A                                                  ; $216c : $3c
	dbnz Y, -$01                                                  ; $216d : $fe, $ff

	bmi $3c                                                  ; $216f : $30, $3c

	bcc br_00_2104                                                  ; $2171 : $90, $91

	bmi br_00_21b1                                                  ; $2173 : $30, $3c

br_00_2175:
	or A, (X)                                                  ; $2175 : $06
	or A, [$20+X]                                                  ; $2176 : $07, $20

br_00_2178:
	rol A                                                  ; $2178 : $3c
	or A, (X)                                                  ; $2179 : $06

br_00_217a:
	or A, [$18+X]                                                  ; $217a : $07, $18
	rol A                                                  ; $217c : $3c
	or A, (X)                                                  ; $217d : $06
	or A, [$10+X]                                                  ; $217e : $07, $10
	rol A                                                  ; $2180 : $3c
	or A, (X)                                                  ; $2181 : $06
	or A, !$fe08                                                  ; $2182 : $05, $08, $fe
	stop                                                  ; $2185 : $ff

br_00_2186:
	bbs $00.0, -$0e                                                  ; $2186 : $03, $00, $f2

	nop                                                  ; $2189 : $00
	setp                                                  ; $218a : $40
	tcall 15                                                  ; $218b : $f1
	nop                                                  ; $218c : $00
	bmi br_00_2186                                                  ; $218d : $30, $f7

	setp                                                  ; $218f : $40
	asl A                                                  ; $2190 : $1c
	and A, $03                                                  ; $2191 : $24, $03
	bbs $70.0, -$5b                                                  ; $2193 : $03, $70, $a5

	sbc A, (X)                                                  ; $2196 : $a6
	sbc A, [$a8+X]                                                  ; $2197 : $a7, $a8
	sbc $ab, $aa                                                  ; $2199 : $a9, $aa, $ab
	inc !$aead                                                  ; $219c : $ac, $ad, $ae
	mov (X)+, A                                                  ; $219f : $af
	bcs br_00_2153                                                  ; $21a0 : $b0, $b1

	mov Y, $b2+X                                                  ; $21a2 : $fb, $b2
	bbc $fc.5, br_00_21ac                                                  ; $21a4 : $b3, $fc, $05

	sbc A, $a5                                                  ; $21a7 : $a4, $a5
	sbc A, (X)                                                  ; $21a9 : $a6
	sbc A, [$a8+X]                                                  ; $21aa : $a7, $a8

br_00_21ac:
	sbc $ab, $aa                                                  ; $21ac : $a9, $aa, $ab
	sbc A, $a5                                                  ; $21af : $a4, $a5

br_00_21b1:
	sbc A, (X)                                                  ; $21b1 : $a6
	sbc A, [$a8+X]                                                  ; $21b2 : $a7, $a8
	sbc $ab, $aa                                                  ; $21b4 : $a9, $aa, $ab
	inc !$aead                                                  ; $21b7 : $ac, $ad, $ae
	mov (X)+, A                                                  ; $21ba : $af
	bcs -$4f                                                  ; $21bb : $b0, $b1

	mov Y, $b2+X                                                  ; $21bd : $fb, $b2
	bbc $fc.5, $0a                                                  ; $21bf : $b3, $fc, $0a

	clr1 $b1.5                                                  ; $21c2 : $b2, $b1
	bcs br_00_2175                                                  ; $21c4 : $b0, $af

	pop A                                                  ; $21c6 : $ae
	cmp Y, #$ac                                                  ; $21c7 : $ad, $ac
	inc $aa                                                  ; $21c9 : $ab, $aa
	sbc $03, $28                                                  ; $21cb : $a9, $28, $03
	bbs $6e.0, $27                                                  ; $21ce : $03, $6e, $27

	or A, $03                                                  ; $21d1 : $04, $03
	clrc                                                  ; $21d3 : $60
	and A, (X)                                                  ; $21d4 : $26
	or A, $03                                                  ; $21d5 : $04, $03
	eor $04, #$25                                                  ; $21d7 : $58, $25, $04
	bbs $50.0, $24                                                  ; $21da : $03, $50, $24

	or A, $03                                                  ; $21dd : $04, $03
	eor A, #$23                                                  ; $21df : $48, $23
	or A, $03                                                  ; $21e1 : $04, $03
	setp                                                  ; $21e3 : $40
	set1 $04.1                                                  ; $21e4 : $22, $04
	bbs $38.0, $21                                                  ; $21e6 : $03, $38, $21

	or A, $03                                                  ; $21e9 : $04, $03
	bmi br_00_220d                                                  ; $21eb : $30, $20

	or A, $03                                                  ; $21ed : $04, $03
	clrp                                                  ; $21ef : $20
	jmp [!$0304+X]                                                  ; $21f0 : $1f, $04, $03


	or $04, #$1e                                                  ; $21f3 : $18, $1e, $04
	bbs $10.0, $1d                                                  ; $21f6 : $03, $10, $1d

	or A, $03                                                  ; $21f9 : $04, $03
	or A, #$fe                                                  ; $21fb : $08, $fe
	rol A                                                  ; $21fd : $3c

br_00_21fe:
	or A, (X)                                                  ; $21fe : $06
	or A, !$0205                                                  ; $21ff : $05, $05, $02
	or A, (X)                                                  ; $2202 : $06
	or A, [$07+X]                                                  ; $2203 : $07, $07
	nop                                                  ; $2205 : $00
	dbnz $00, -$01                                                  ; $2206 : $6e, $00, $ff

br_00_2209:
	bbs $00.0, br_00_21fe                                                  ; $2209 : $03, $00, $f2

	nop                                                  ; $220c : $00

br_00_220d:
	setp                                                  ; $220d : $40
	tcall 15                                                  ; $220e : $f1
	nop                                                  ; $220f : $00
	bmi br_00_2209                                                  ; $2210 : $30, $f7

	or $2d, #$1c                                                  ; $2212 : $18, $1c, $2d
	bbs $03.0, $70                                                  ; $2215 : $03, $03, $70

	pop A                                                  ; $2218 : $ae
	xcn A                                                  ; $2219 : $9f
	ei                                                  ; $221a : $a0
	tcall 10                                                  ; $221b : $a1
	set1 $a3.5                                                  ; $221c : $a2, $a3
	sbc A, $a5                                                  ; $221e : $a4, $a5
	sbc A, (X)                                                  ; $2220 : $a6
	xcn A                                                  ; $2221 : $9f
	ei                                                  ; $2222 : $a0
	tcall 10                                                  ; $2223 : $a1
	set1 $a3.5                                                  ; $2224 : $a2, $a3
	sbc A, $a5                                                  ; $2226 : $a4, $a5
	sbc A, (X)                                                  ; $2228 : $a6
	sbc A, [$a8+X]                                                  ; $2229 : $a7, $a8
	sbc $ab, $aa                                                  ; $222b : $a9, $aa, $ab
	inc !$adfb                                                  ; $222e : $ac, $fb, $ad
	pop A                                                  ; $2231 : $ae
	inc Y                                                  ; $2232 : $fc
	or1 c, $0cad.5                                                  ; $2233 : $0a, $ad, $ac
	inc $aa                                                  ; $2236 : $ab, $aa
	sbc $a7, $a8                                                  ; $2238 : $a9, $a8, $a7
	sbc A, (X)                                                  ; $223b : $a6
	sbc A, !$23a4                                                  ; $223c : $a5, $a4, $23
	bbs $03.0, $6e                                                  ; $223f : $03, $03, $6e

	set1 $04.1                                                  ; $2242 : $22, $04
	bbs $60.0, $21                                                  ; $2244 : $03, $60, $21

	or A, $03                                                  ; $2247 : $04, $03
	eor $04, #$20                                                  ; $2249 : $58, $20, $04
	bbs $50.0, $1f                                                  ; $224c : $03, $50, $1f

	or A, $03                                                  ; $224f : $04, $03
	eor A, #$1e                                                  ; $2251 : $48, $1e
	or A, $03                                                  ; $2253 : $04, $03
	setp                                                  ; $2255 : $40
	dec X                                                  ; $2256 : $1d
	or A, $03                                                  ; $2257 : $04, $03
	and $04, #$1c                                                  ; $2259 : $38, $1c, $04
	bbs $30.0, br_00_227a                                                  ; $225c : $03, $30, $1b

	or A, $03                                                  ; $225f : $04, $03
	clrp                                                  ; $2261 : $20
	decw $04                                                  ; $2262 : $1a, $04
	bbs $18.0, $19                                                  ; $2264 : $03, $18, $19

	or A, $03                                                  ; $2267 : $04, $03
	bpl br_00_2283                                                  ; $2269 : $10, $18

	or A, $03                                                  ; $226b : $04, $03
	or A, #$fe                                                  ; $226d : $08, $fe
	clr1 $00.7                                                  ; $226f : $f2, $00
	setp                                                  ; $2271 : $40
	tcall 15                                                  ; $2272 : $f1
	nop                                                  ; $2273 : $00
	bmi -$01                                                  ; $2274 : $30, $ff

	tcall 1                                                  ; $2276 : $11
	nop                                                  ; $2277 : $00
	mov A, [$00]+Y                                                  ; $2278 : $f7, $00

br_00_227a:
	brk                                                  ; $227a : $0f


	stop                                                  ; $227b : $ff
	bpl br_00_2294                                                  ; $227c : $10, $16

	rol A                                                  ; $227e : $3c
	bbs $04.0, br_00_228a                                                  ; $227f : $03, $04, $08

	rol A                                                  ; $2282 : $3c

br_00_2283:
	bbs $04.0, br_00_2296                                                  ; $2283 : $03, $04, $10

	rol A                                                  ; $2286 : $3c
	bbs $04.0, $18                                                  ; $2287 : $03, $04, $18

br_00_228a:
	rol A                                                  ; $228a : $3c
	push Y                                                  ; $228b : $6d
	dbnz $30, br_00_22cb                                                  ; $228c : $6e, $30, $3c

	or A, (X)                                                  ; $228f : $06
	or A, [$20+X]                                                  ; $2290 : $07, $20
	rol A                                                  ; $2292 : $3c
	or A, (X)                                                  ; $2293 : $06

br_00_2294:
	or A, [$18+X]                                                  ; $2294 : $07, $18

br_00_2296:
	rol A                                                  ; $2296 : $3c
	or A, (X)                                                  ; $2297 : $06
	or A, [$10+X]                                                  ; $2298 : $07, $10
	rol A                                                  ; $229a : $3c
	or A, (X)                                                  ; $229b : $06
	or A, !$fe08                                                  ; $229c : $05, $08, $fe
	clr1 $b1.5                                                  ; $229f : $b2, $b1
	bcs -$51                                                  ; $22a1 : $b0, $af

	set1 $06.0                                                  ; $22a3 : $02, $06
	or A, [$07+X]                                                  ; $22a5 : $07, $07
	nop                                                  ; $22a7 : $00
	cmp Y, $00                                                  ; $22a8 : $7e, $00
	clr1 $00.7                                                  ; $22aa : $f2, $00
	setp                                                  ; $22ac : $40
	tcall 15                                                  ; $22ad : $f1
	nop                                                  ; $22ae : $00
	bmi -$01                                                  ; $22af : $30, $ff

	tcall 1                                                  ; $22b1 : $11
	nop                                                  ; $22b2 : $00
	mov A, [$00]+Y                                                  ; $22b3 : $f7, $00
	brk                                                  ; $22b5 : $0f


	stop                                                  ; $22b6 : $ff
	bpl $1d                                                  ; $22b7 : $10, $1d

	rol A                                                  ; $22b9 : $3c
	bbs $01.0, br_00_231d                                                  ; $22ba : $03, $01, $60

	stop                                                  ; $22bd : $ff
	bpl br_00_22de                                                  ; $22be : $10, $1e

	rol A                                                  ; $22c0 : $3c
	asl !$6002                                                  ; $22c1 : $0c, $02, $60
	stop                                                  ; $22c4 : $ff
	bpl $1d                                                  ; $22c5 : $10, $1d

	rol A                                                  ; $22c7 : $3c
	or A, (X)                                                  ; $22c8 : $06
	set1 $60.0                                                  ; $22c9 : $02, $60

br_00_22cb:
	rol A                                                  ; $22cb : $3c
	set1 $01.0                                                  ; $22cc : $02, $01
	clrc                                                  ; $22ce : $60
	rol A                                                  ; $22cf : $3c
	or A, [$01+X]                                                  ; $22d0 : $07, $01
	clrc                                                  ; $22d2 : $60
	rol A                                                  ; $22d3 : $3c
	bbs $02.0, $60                                                  ; $22d4 : $03, $02, $60

	rol A                                                  ; $22d7 : $3c
	set1 $01.0                                                  ; $22d8 : $02, $01
	clrc                                                  ; $22da : $60
	stop                                                  ; $22db : $ff
	bpl $1e                                                  ; $22dc : $10, $1e

br_00_22de:
	rol A                                                  ; $22de : $3c
	or A, $01                                                  ; $22df : $04, $01
	clrc                                                  ; $22e1 : $60
	rol A                                                  ; $22e2 : $3c
	set1 $02.0                                                  ; $22e3 : $02, $02
	clrc                                                  ; $22e5 : $60
	rol A                                                  ; $22e6 : $3c
	set1 $01.0                                                  ; $22e7 : $02, $01
	clrc                                                  ; $22e9 : $60
	rol A                                                  ; $22ea : $3c
	or A, #$01                                                  ; $22eb : $08, $01
	clrc                                                  ; $22ed : $60
	stop                                                  ; $22ee : $ff
	bpl br_00_230e                                                  ; $22ef : $10, $1d

	rol A                                                  ; $22f1 : $3c
	set1 $01.0                                                  ; $22f2 : $02, $01
	clrc                                                  ; $22f4 : $60
	rol A                                                  ; $22f5 : $3c
	or A, #$01                                                  ; $22f6 : $08, $01
	clrc                                                  ; $22f8 : $60
	rol A                                                  ; $22f9 : $3c
	or A, (X)                                                  ; $22fa : $06
	set1 $60.0                                                  ; $22fb : $02, $60
	rol A                                                  ; $22fd : $3c
	set1 $01.0                                                  ; $22fe : $02, $01
	clrc                                                  ; $2300 : $60
	rol A                                                  ; $2301 : $3c
	or A, [$01+X]                                                  ; $2302 : $07, $01
	clrc                                                  ; $2304 : $60
	rol A                                                  ; $2305 : $3c
	bbs $02.0, br_00_2369                                                  ; $2306 : $03, $02, $60

	rol A                                                  ; $2309 : $3c
	set1 $01.0                                                  ; $230a : $02, $01
	clrc                                                  ; $230c : $60
	stop                                                  ; $230d : $ff

br_00_230e:
	bpl $1e                                                  ; $230e : $10, $1e

	rol A                                                  ; $2310 : $3c
	or A, $01                                                  ; $2311 : $04, $01
	clrc                                                  ; $2313 : $60

br_00_2314:
	rol A                                                  ; $2314 : $3c
	set1 $02.0                                                  ; $2315 : $02, $02
	clrc                                                  ; $2317 : $60
	rol A                                                  ; $2318 : $3c
	set1 $01.0                                                  ; $2319 : $02, $01
	clrc                                                  ; $231b : $60
	rol A                                                  ; $231c : $3c

br_00_231d:
	or A, #$01                                                  ; $231d : $08, $01

br_00_231f:
	clrc                                                  ; $231f : $60
	dbnz Y, br_00_2314                                                  ; $2320 : $fe, $f2

	nop                                                  ; $2322 : $00
	setp                                                  ; $2323 : $40
	tcall 15                                                  ; $2324 : $f1
	nop                                                  ; $2325 : $00
	bmi br_00_231f                                                  ; $2326 : $30, $f7

	nop                                                  ; $2328 : $00
	asl A                                                  ; $2329 : $1c
	cmp X, !$0303                                                  ; $232a : $1e, $03, $03
	eor $0c, #$1e                                                  ; $232d : $58, $1e, $0c
	asl !$1e58                                                  ; $2330 : $0c, $58, $1e
	or A, (X)                                                  ; $2333 : $06
	or A, (X)                                                  ; $2334 : $06
	eor $02, #$1e                                                  ; $2335 : $58, $1e, $02
	set1 $58.0                                                  ; $2338 : $02, $58
	cmp X, !$0707                                                  ; $233a : $1e, $07, $07
	eor $03, #$1e                                                  ; $233d : $58, $1e, $03
	bbs $58.0, br_00_2361                                                  ; $2340 : $03, $58, $1e

	set1 $02.0                                                  ; $2343 : $02, $02
	eor $04, #$1e                                                  ; $2345 : $58, $1e, $04
	or A, $58                                                  ; $2348 : $04, $58
	cmp X, !$0202                                                  ; $234a : $1e, $02, $02
	eor $1e, #$9e                                                  ; $234d : $58, $9e, $1e
	or A, #$08                                                  ; $2350 : $08, $08
	eor $02, #$1e                                                  ; $2352 : $58, $1e, $02
	set1 $58.0                                                  ; $2355 : $02, $58
	cmp X, !$0808                                                  ; $2357 : $1e, $08, $08
	eor $06, #$1e                                                  ; $235a : $58, $1e, $06
	or A, (X)                                                  ; $235d : $06
	eor $02, #$1e                                                  ; $235e : $58, $1e, $02

br_00_2361:
	set1 $58.0                                                  ; $2361 : $02, $58
	cmp X, !$0707                                                  ; $2363 : $1e, $07, $07
	eor $03, #$1e                                                  ; $2366 : $58, $1e, $03

br_00_2369:
	or A, $58                                                  ; $2369 : $04, $58
	cmp X, !$0908                                                  ; $236b : $1e, $08, $09
	eor $08, #$1e                                                  ; $236e : $58, $1e, $08
	or $1e, $40                                                  ; $2371 : $09, $40, $1e
	or A, #$09                                                  ; $2374 : $08, $09
	and A, #$1e                                                  ; $2376 : $28, $1e
	or A, #$09                                                  ; $2378 : $08, $09
	clrp                                                  ; $237a : $20
	cmp X, !$0908                                                  ; $237b : $1e, $08, $09
	bpl br_00_239e                                                  ; $237e : $10, $1e

	or A, #$09                                                  ; $2380 : $08, $09
	tcall 0                                                  ; $2382 : $01
	cmp X, !$0708                                                  ; $2383 : $1e, $08, $07

br_00_2386:
	tcall 0                                                  ; $2386 : $01
	dbnz Y, $3c                                                  ; $2387 : $fe, $3c

	or A, (X)                                                  ; $2389 : $06
	or A, !$0114                                                  ; $238a : $05, $14, $01
	or A, [$04+X]                                                  ; $238d : $07, $04
	nop                                                  ; $238f : $00
	stop                                                  ; $2390 : $ff

br_00_2391:
	bbs $00.0, br_00_2386                                                  ; $2391 : $03, $00, $f2

	nop                                                  ; $2394 : $00
	setp                                                  ; $2395 : $40
	tcall 15                                                  ; $2396 : $f1
	nop                                                  ; $2397 : $00
	bmi br_00_2391                                                  ; $2398 : $30, $f7

	nop                                                  ; $239a : $00
	jmp [!Jump_00_183c+X]                                                  ; $239b : $1f, $3c, $18


br_00_239e:
	or A, !$fe78+Y                                                  ; $239e : $16, $78, $fe
	nop                                                  ; $23a1 : $00
	nop                                                  ; $23a2 : $00
	nop                                                  ; $23a3 : $00
	nop                                                  ; $23a4 : $00
	tcall 0                                                  ; $23a5 : $01
	or A, [$04+X]                                                  ; $23a6 : $07, $04
	nop                                                  ; $23a8 : $00
	stop                                                  ; $23a9 : $ff

br_00_23aa:
	bbs $00.0, -$0e                                                  ; $23aa : $03, $00, $f2

	nop                                                  ; $23ad : $00
	setp                                                  ; $23ae : $40
	tcall 15                                                  ; $23af : $f1
	nop                                                  ; $23b0 : $00
	bmi br_00_23aa                                                  ; $23b1 : $30, $f7

	nop                                                  ; $23b3 : $00
	jmp [!$183e+X]                                                  ; $23b4 : $1f, $3e, $18


	or A, !$fe78+Y                                                  ; $23b7 : $16, $78, $fe
	nop                                                  ; $23ba : $00
	nop                                                  ; $23bb : $00
	nop                                                  ; $23bc : $00
	nop                                                  ; $23bd : $00
	tcall 0                                                  ; $23be : $01
	or A, [$04+X]                                                  ; $23bf : $07, $04
	nop                                                  ; $23c1 : $00
	stop                                                  ; $23c2 : $ff

br_00_23c3:
	bbs $00.0, -$0e                                                  ; $23c3 : $03, $00, $f2

	nop                                                  ; $23c6 : $00
	setp                                                  ; $23c7 : $40
	tcall 15                                                  ; $23c8 : $f1
	nop                                                  ; $23c9 : $00
	bmi br_00_23c3                                                  ; $23ca : $30, $f7

	nop                                                  ; $23cc : $00
	jmp [!Jump_00_1840+X]                                                  ; $23cd : $1f, $40, $18


	or A, !$fe78+Y                                                  ; $23d0 : $16, $78, $fe
	nop                                                  ; $23d3 : $00
	nop                                                  ; $23d4 : $00
	nop                                                  ; $23d5 : $00
	nop                                                  ; $23d6 : $00
	tcall 0                                                  ; $23d7 : $01
	or A, [$04+X]                                                  ; $23d8 : $07, $04
	nop                                                  ; $23da : $00
	stop                                                  ; $23db : $ff

br_00_23dc:
	bbs $00.0, -$0e                                                  ; $23dc : $03, $00, $f2

	nop                                                  ; $23df : $00
	setp                                                  ; $23e0 : $40
	tcall 15                                                  ; $23e1 : $f1
	nop                                                  ; $23e2 : $00
	bmi br_00_23dc                                                  ; $23e3 : $30, $f7

	nop                                                  ; $23e5 : $00
	jmp [!$1841+X]                                                  ; $23e6 : $1f, $41, $18


	or A, !$fe78+Y                                                  ; $23e9 : $16, $78, $fe
	nop                                                  ; $23ec : $00
	nop                                                  ; $23ed : $00
	nop                                                  ; $23ee : $00
	nop                                                  ; $23ef : $00
	tcall 0                                                  ; $23f0 : $01
	or A, [$04+X]                                                  ; $23f1 : $07, $04
	nop                                                  ; $23f3 : $00
	stop                                                  ; $23f4 : $ff

br_00_23f5:
	bbs $00.0, -$0e                                                  ; $23f5 : $03, $00, $f2

	nop                                                  ; $23f8 : $00
	setp                                                  ; $23f9 : $40
	tcall 15                                                  ; $23fa : $f1
	nop                                                  ; $23fb : $00
	bmi br_00_23f5                                                  ; $23fc : $30, $f7

	nop                                                  ; $23fe : $00
	jmp [!Jump_00_1843+X]                                                  ; $23ff : $1f, $43, $18


	or A, !$fe78+Y                                                  ; $2402 : $16, $78, $fe
	nop                                                  ; $2405 : $00
	nop                                                  ; $2406 : $00
	nop                                                  ; $2407 : $00
	nop                                                  ; $2408 : $00
	tcall 0                                                  ; $2409 : $01
	or A, [$04+X]                                                  ; $240a : $07, $04
	nop                                                  ; $240c : $00
	bbc $01.7, -$02                                                  ; $240d : $f3, $01, $fe

	set1 $83.2                                                  ; $2410 : $42, $83
	eor A, !$0297+Y                                                  ; $2412 : $56, $97, $02
	or A, (X)                                                  ; $2415 : $06
	or A, [$07+X]                                                  ; $2416 : $07, $07
	nop                                                  ; $2418 : $00
	bbc $00.1, -$01                                                  ; $2419 : $33, $00, $ff

br_00_241c:
	bbs $00.0, -$0e                                                  ; $241c : $03, $00, $f2

	nop                                                  ; $241f : $00
	setp                                                  ; $2420 : $40
	tcall 15                                                  ; $2421 : $f1
	nop                                                  ; $2422 : $00
	bmi br_00_241c                                                  ; $2423 : $30, $f7

	nop                                                  ; $2425 : $00
	cmp X, !$38fb                                                  ; $2426 : $1e, $fb, $38
	bbs $03.0, $78                                                  ; $2429 : $03, $03, $78

	sbc A, !$b5b6+X                                                  ; $242c : $b5, $b6, $b5
	sbc A, $fc+X                                                  ; $242f : $b4, $fc
	or A, #$38                                                  ; $2431 : $08, $38
	or A, !$7804                                                  ; $2433 : $05, $04, $78
	and A, !$0405+X                                                  ; $2436 : $35, $05, $04
	clrc                                                  ; $2439 : $60
	and A, !$0405+Y                                                  ; $243a : $36, $05, $04

br_00_243d:
	eor A, #$35                                                  ; $243d : $48, $35
	or A, !$4004                                                  ; $243f : $05, $04, $40
	and A, $64+X                                                  ; $2442 : $34, $64
	or A, $30                                                  ; $2444 : $04, $30
	dbnz Y, -$01                                                  ; $2446 : $fe, $ff

	bbs $00.0, br_00_243d                                                  ; $2448 : $03, $00, $f2

	nop                                                  ; $244b : $00
	setp                                                  ; $244c : $40
	tcall 15                                                  ; $244d : $f1
	nop                                                  ; $244e : $00
	or $00, #$f7                                                  ; $244f : $18, $f7, $00
	or A, $fb+X                                                  ; $2452 : $14, $fb
	rol A                                                  ; $2454 : $3c
	or A, (X)                                                  ; $2455 : $06
	or A, !$b950                                                  ; $2456 : $05, $50, $b9
	mov SP, X                                                  ; $2459 : $bd
	movw YA, $c0                                                  ; $245a : $ba, $c0
	movw YA, $ba                                                  ; $245c : $ba, $ba
	das A                                                  ; $245e : $be
	inc Y                                                  ; $245f : $fc
	or A, $3c                                                  ; $2460 : $04, $3c
	or A, (X)                                                  ; $2462 : $06
	or A, !$3948                                                  ; $2463 : $05, $48, $39
	or A, (X)                                                  ; $2466 : $06
	or A, !$3d40                                                  ; $2467 : $05, $40, $3d
	or A, (X)                                                  ; $246a : $06
	or A, !$3a38                                                  ; $246b : $05, $38, $3a
	or A, (X)                                                  ; $246e : $06
	or A, !$4030                                                  ; $246f : $05, $30, $40
	or A, (X)                                                  ; $2472 : $06
	or A, !$3a20                                                  ; $2473 : $05, $20, $3a
	or A, (X)                                                  ; $2476 : $06
	or A, !$3a18                                                  ; $2477 : $05, $18, $3a
	or A, (X)                                                  ; $247a : $06
	or A, !$3e10                                                  ; $247b : $05, $10, $3e
	or A, (X)                                                  ; $247e : $06
	or A, !$fe08                                                  ; $247f : $05, $08, $fe
	or A, $01                                                  ; $2482 : $04, $01
	clrc                                                  ; $2484 : $60
	rol A                                                  ; $2485 : $3c

br_00_2486:
	bbs $03.0, br_00_248d                                                  ; $2486 : $03, $03, $04

	or A, !$000a                                                  ; $2489 : $05, $0a, $00

br_00_248c:
	tcall 8                                                  ; $248c : $81

br_00_248d:
	nop                                                  ; $248d : $00
	dec $00+X                                                  ; $248e : $9b, $00
	stop                                                  ; $2490 : $ff
	bbs $00.0, br_00_2486                                                  ; $2491 : $03, $00, $f2

	nop                                                  ; $2494 : $00
	setp                                                  ; $2495 : $40
	tcall 15                                                  ; $2496 : $f1
	nop                                                  ; $2497 : $00
	bmi br_00_248c                                                  ; $2498 : $30, $f2

	nop                                                  ; $249a : $00

br_00_249b:
	setp                                                  ; $249b : $40
	mov Y, $f7+X                                                  ; $249c : $fb, $f7
	nop                                                  ; $249e : $00
	cmp X, !$062f                                                  ; $249f : $1e, $2f, $06
	bbs $78.0, br_00_249b                                                  ; $24a2 : $03, $78, $f6

	nop                                                  ; $24a5 : $00
	set1 $b0.4                                                  ; $24a6 : $82, $b0
	mov A, !$8400+Y                                                  ; $24a8 : $f6, $00, $84
	bmi br_00_24b3                                                  ; $24ab : $30, $06

	or A, $78                                                  ; $24ad : $04, $78
	mov A, !$8500+Y                                                  ; $24af : $f6, $00, $85
	tcall 3                                                  ; $24b2 : $31

br_00_24b3:
	asl !$782d                                                  ; $24b3 : $0c, $2d, $78
	mov A, !$8406+Y                                                  ; $24b6 : $f6, $06, $84
	mov A, !$8204+Y                                                  ; $24b9 : $f6, $04, $82
	mov A, !$8102+Y                                                  ; $24bc : $f6, $02, $81
	mov A, !$8001+Y                                                  ; $24bf : $f6, $01, $80
	mov A, !$7e02+Y                                                  ; $24c2 : $f6, $02, $7e
	mov A, !$7d02+Y                                                  ; $24c5 : $f6, $02, $7d
	mov A, !$7b01+Y                                                  ; $24c8 : $f6, $01, $7b
	mov A, !$7901+Y                                                  ; $24cb : $f6, $01, $79
	mov A, !$7701+Y                                                  ; $24ce : $f6, $01, $77
	mov A, !$7601+Y                                                  ; $24d1 : $f6, $01, $76
	mov A, !$7501+Y                                                  ; $24d4 : $f6, $01, $75
	mov A, !$7201+Y                                                  ; $24d7 : $f6, $01, $72
	mov A, !$7001+Y                                                  ; $24da : $f6, $01, $70
	mov A, !$6d01+Y                                                  ; $24dd : $f6, $01, $6d
	mov A, !$6b01+Y                                                  ; $24e0 : $f6, $01, $6b
	mov A, !$6901+Y                                                  ; $24e3 : $f6, $01, $69
	mov A, !$6401+Y                                                  ; $24e6 : $f6, $01, $64
	mov A, !$6201+Y                                                  ; $24e9 : $f6, $01, $62
	mov A, !$5d01+Y                                                  ; $24ec : $f6, $01, $5d
	mov A, !$5a01+Y                                                  ; $24ef : $f6, $01, $5a
	mov A, !$5501+Y                                                  ; $24f2 : $f6, $01, $55
	mov A, !$5001+Y                                                  ; $24f5 : $f6, $01, $50
	mov A, !$4b01+Y                                                  ; $24f8 : $f6, $01, $4b
	mov A, !$4601+Y                                                  ; $24fb : $f6, $01, $46
	mov A, !$3f01+Y                                                  ; $24fe : $f6, $01, $3f
	mov A, !$8018+Y                                                  ; $2501 : $f6, $18, $80
	inc Y                                                  ; $2504 : $fc

br_00_2505:
	set1 $fe.0                                                  ; $2505 : $02, $fe
	clr1 $00.7                                                  ; $2507 : $f2, $00
	setp                                                  ; $2509 : $40
	tcall 15                                                  ; $250a : $f1
	nop                                                  ; $250b : $00
	bmi br_00_2505                                                  ; $250c : $30, $f7

	nop                                                  ; $250e : $00
	cmp X, !$16ff                                                  ; $250f : $1e, $ff, $16
	cmpw YA, $ff                                                  ; $2512 : $5a, $ff
	or $f6, #$0a                                                  ; $2514 : $18, $0a, $f6
	nop                                                  ; $2517 : $00
	set1 $f0.4                                                  ; $2518 : $82, $f0
	tcall 0                                                  ; $251a : $01
	cmp $c0, $23                                                  ; $251b : $69, $23, $c0
	das A                                                  ; $251e : $be

br_00_251f:
	cmp $f2, #$fe                                                  ; $251f : $78, $fe, $f2

Jump_00_2522:
	nop                                                  ; $2522 : $00
	setp                                                  ; $2523 : $40
	tcall 15                                                  ; $2524 : $f1
	nop                                                  ; $2525 : $00

br_00_2526:
	bmi br_00_251f                                                  ; $2526 : $30, $f7

	nop                                                  ; $2528 : $00
	bpl br_00_2526                                                  ; $2529 : $10, $fb

	call !$0304                                                  ; $252b : $3f, $04, $03
	cmp $c1, #$c0                                                  ; $252e : $78, $c0, $c1
	set1 $c3.6                                                  ; $2531 : $c2, $c3
	mov $c5, A                                                  ; $2533 : $c4, $c5
	mov (X), A                                                  ; $2535 : $c6
	eor A, [$10+X]                                                  ; $2536 : $47, $10
	bbs $78.0, -$04                                                  ; $2538 : $03, $78, $fc

	or A, $fe                                                  ; $253b : $04, $fe
	eor $06, #$1e                                                  ; $253d : $58, $1e, $06
	or A, (X)                                                  ; $2540 : $06
	tcall 0                                                  ; $2541 : $01
	or A, [$04+X]                                                  ; $2542 : $07, $04
	nop                                                  ; $2544 : $00
	clr1 $00.7                                                  ; $2545 : $f2, $00
	setp                                                  ; $2547 : $40
	tcall 15                                                  ; $2548 : $f1
	nop                                                  ; $2549 : $00
	bmi -$09                                                  ; $254a : $30, $f7

	nop                                                  ; $254c : $00
	brk                                                  ; $254d : $0f


	or $03, #$03                                                  ; $254e : $18, $03, $03
	cmp $9c, #$9a                                                  ; $2551 : $78, $9a, $9c
	subw YA, $9c                                                  ; $2554 : $9a, $9c
	div YA, X                                                  ; $2556 : $9e
	dec A                                                  ; $2557 : $9c
	div YA, X                                                  ; $2558 : $9e
	ei                                                  ; $2559 : $a0
	div YA, X                                                  ; $255a : $9e
	ei                                                  ; $255b : $a0
	set1 $a0.5                                                  ; $255c : $a2, $a0
	set1 $a4.5                                                  ; $255e : $a2, $a4
	set1 $a4.5                                                  ; $2560 : $a2, $a4
	sbc A, (X)                                                  ; $2562 : $a6
	sbc A, $a6                                                  ; $2563 : $a4, $a6
	sbc A, #$a6                                                  ; $2565 : $a8, $a6
	sbc A, #$aa                                                  ; $2567 : $a8, $aa
	sbc A, #$aa                                                  ; $2569 : $a8, $aa
	inc !$acaa                                                  ; $256b : $ac, $aa, $ac
	pop A                                                  ; $256e : $ae
	inc !$b0ae                                                  ; $256f : $ac, $ae, $b0
	bmi br_00_2577                                                  ; $2572 : $30, $03

	bbs $50.0, br_00_25a7                                                  ; $2574 : $03, $50, $30

br_00_2577:
	bbs $03.0, br_00_25c2                                                  ; $2577 : $03, $03, $48

	bmi br_00_257f                                                  ; $257a : $30, $03

	bbs $40.0, $30                                                  ; $257c : $03, $40, $30

br_00_257f:
	bbs $03.0, br_00_25ba                                                  ; $257f : $03, $03, $38

	bmi br_00_2587                                                  ; $2582 : $30, $03

	bbs $30.0, br_00_25b7                                                  ; $2584 : $03, $30, $30

br_00_2587:
	bbs $03.0, $20                                                  ; $2587 : $03, $03, $20

	bmi br_00_258f                                                  ; $258a : $30, $03

	bbs $18.0, br_00_25bf                                                  ; $258c : $03, $18, $30

br_00_258f:
	bbs $03.0, br_00_25a2                                                  ; $258f : $03, $03, $10

	bmi br_00_2597                                                  ; $2592 : $30, $03

	bbs $08.0, -$09                                                  ; $2594 : $03, $08, $f7

br_00_2597:
	nop                                                  ; $2597 : $00
	or A, $fb+X                                                  ; $2598 : $14, $fb
	rol A                                                  ; $259a : $3c
	or A, $04                                                  ; $259b : $04, $04
	cmp $b5, #$b7                                                  ; $259d : $78, $b7, $b5
	bcs -$04                                                  ; $25a0 : $b0, $fc

br_00_25a2:
	bbs $3c.0, br_00_25a9                                                  ; $25a2 : $03, $3c, $04

	or A, $60                                                  ; $25a5 : $04, $60

br_00_25a7:
	and A, [$04]+Y                                                  ; $25a7 : $37, $04

br_00_25a9:
	or A, $40                                                  ; $25a9 : $04, $40
	and A, !$0204+X                                                  ; $25ab : $35, $04, $02
	bmi $30                                                  ; $25ae : $30, $30

	or A, $02                                                  ; $25b0 : $04, $02
	or $01, #$fe                                                  ; $25b2 : $18, $fe, $01
	lsr $f6                                                  ; $25b5 : $4b, $f6

br_00_25b7:
	tcall 0                                                  ; $25b7 : $01
	set1 $06.0                                                  ; $25b8 : $02, $06

br_00_25ba:
	or A, [$07+X]                                                  ; $25ba : $07, $07
	nop                                                  ; $25bc : $00

br_00_25bd:
	and A, [$00]+Y                                                  ; $25bd : $37, $00

br_00_25bf:
	clr1 $00.7                                                  ; $25bf : $f2, $00
	setp                                                  ; $25c1 : $40

br_00_25c2:
	tcall 15                                                  ; $25c2 : $f1
	nop                                                  ; $25c3 : $00
	bmi br_00_25bd                                                  ; $25c4 : $30, $f7

	nop                                                  ; $25c6 : $00
	push PSW                                                  ; $25c7 : $0d
	mov Y, $2a+X                                                  ; $25c8 : $fb, $2a
	or A, $03                                                  ; $25ca : $04, $03
	cmp $ac, #$a6                                                  ; $25cc : $78, $a6, $ac
	tcall 11                                                  ; $25cf : $b1
	pop A                                                  ; $25d0 : $ae
	sbc A, (X)                                                  ; $25d1 : $a6
	mov1 c, $02fc.0                                                  ; $25d2 : $aa, $fc, $02
	mov1 c, $0426.0                                                  ; $25d5 : $aa, $26, $04
	bbs $60.0, br_00_2607                                                  ; $25d8 : $03, $60, $2c

	or A, $03                                                  ; $25db : $04, $03
	bvc $31                                                  ; $25dd : $50, $31

	or A, $03                                                  ; $25df : $04, $03
	setp                                                  ; $25e1 : $40
	cbne $04, $03                                                  ; $25e2 : $2e, $04, $03

	bmi $26                                                  ; $25e5 : $30, $26

	or A, $03                                                  ; $25e7 : $04, $03
	or $04, #$2a                                                  ; $25e9 : $18, $2a, $04
	bbs $10.0, -$02                                                  ; $25ec : $03, $10, $fe

	stop                                                  ; $25ef : $ff
	or A, !$ff5a+Y                                                  ; $25f0 : $16, $5a, $ff
	or $f0, #$0a                                                  ; $25f3 : $18, $0a, $f0

br_00_25f6:
	nop                                                  ; $25f6 : $00
	cmp A, $f2                                                  ; $25f7 : $64, $f2
	nop                                                  ; $25f9 : $00
	setp                                                  ; $25fa : $40
	tcall 15                                                  ; $25fb : $f1
	nop                                                  ; $25fc : $00
	bmi br_00_25f6                                                  ; $25fd : $30, $f7

	nop                                                  ; $25ff : $00
	cmp X, !$5422                                                  ; $2600 : $1e, $22, $54
	clr1 $78.2                                                  ; $2603 : $52, $78
	dbnz Y, br_00_260a                                                  ; $2605 : $fe, $03

br_00_2607:
	bbs $10.0, $30                                                  ; $2607 : $03, $10, $30

br_00_260a:
	set1 $06.0                                                  ; $260a : $02, $06
	or A, [$07+X]                                                  ; $260c : $07, $07
	nop                                                  ; $260e : $00
	and A, !$ff00+Y                                                  ; $260f : $36, $00, $ff
	tcall 1                                                  ; $2612 : $11
	nop                                                  ; $2613 : $00
	tcall 15                                                  ; $2614 : $f1
	nop                                                  ; $2615 : $00
	bmi -$01                                                  ; $2616 : $30, $ff

	bbs $00.0, -$0e                                                  ; $2618 : $03, $00, $f2

	nop                                                  ; $261b : $00
	setp                                                  ; $261c : $40
	mov A, [$00]+Y                                                  ; $261d : $f7, $00
	brk                                                  ; $261f : $0f


	stop                                                  ; $2620 : $ff
	bpl $16                                                  ; $2621 : $10, $16

	rol A                                                  ; $2623 : $3c
	cmp A, (X)                                                  ; $2624 : $66
	cmp A, [$30+X]                                                  ; $2625 : $67, $30
	rol A                                                  ; $2627 : $3c
	bbs $04.0, br_00_264b                                                  ; $2628 : $03, $04, $20

	rol A                                                  ; $262b : $3c
	bbs $04.0, br_00_2647                                                  ; $262c : $03, $04, $18

	rol A                                                  ; $262f : $3c
	bbs $04.0, $10                                                  ; $2630 : $03, $04, $10

	rol A                                                  ; $2633 : $3c
	bbs $04.0, br_00_263f                                                  ; $2634 : $03, $04, $08

	rol A                                                  ; $2637 : $3c
	bbs $04.0, br_00_263d                                                  ; $2638 : $03, $04, $02

	rol A                                                  ; $263b : $3c
	or A, (X)                                                  ; $263c : $06

br_00_263d:
	or A, $01                                                  ; $263d : $04, $01

br_00_263f:
	dbnz Y, -$01                                                  ; $263f : $fe, $ff

	bbs $00.0, -$0f                                                  ; $2641 : $03, $00, $f1

	nop                                                  ; $2644 : $00
	bmi -$0e                                                  ; $2645 : $30, $f2

br_00_2647:
	nop                                                  ; $2647 : $00
	setp                                                  ; $2648 : $40
	mov A, [$00]+Y                                                  ; $2649 : $f7, $00

br_00_264b:
	cmp X, !$0247                                                  ; $264b : $1e, $47, $02
	set1 $78.0                                                  ; $264e : $02, $78
	mov [$c8+X], A                                                  ; $2650 : $c7, $c8

br_00_2652:
	mov !$cbca, X                                                  ; $2652 : $c9, $ca, $cb
	mov !$00f6, Y                                                  ; $2655 : $cc, $f6, $00
	cmp Y, $cc                                                  ; $2658 : $7e, $cc
	mov A, !$7d00+Y                                                  ; $265a : $f6, $00, $7d
	mov !$00f6, Y                                                  ; $265d : $cc, $f6, $00
	ror $cc+X                                                  ; $2660 : $7b, $cc
	mov A, !$7a00+Y                                                  ; $2662 : $f6, $00, $7a
	mov !$00f6, Y                                                  ; $2665 : $cc, $f6, $00
	cmp (X), (Y)                                                  ; $2668 : $79
	mov !$00f6, Y                                                  ; $2669 : $cc, $f6, $00
	cmp (X), (Y)                                                  ; $266c : $79
	mov !$00f6, Y                                                  ; $266d : $cc, $f6, $00
	cmp A, [$cc]+Y                                                  ; $2670 : $77, $cc
	mov A, !$7600+Y                                                  ; $2672 : $f6, $00, $76
	mov !$00f6, Y                                                  ; $2675 : $cc, $f6, $00
	cmp A, $cc+X                                                  ; $2678 : $74, $cc
	mov A, !$7200+Y                                                  ; $267a : $f6, $00, $72
	mov !$00f6, Y                                                  ; $267d : $cc, $f6, $00
	tcall 7                                                  ; $2680 : $71
	mov !$00f6, Y                                                  ; $2681 : $cc, $f6, $00
	bvs br_00_2652                                                  ; $2684 : $70, $cc

	mov A, !$6f00+Y                                                  ; $2686 : $f6, $00, $6f
	mov !$00f6, Y                                                  ; $2689 : $cc, $f6, $00
	push Y                                                  ; $268c : $6d
	mov !$00f6, Y                                                  ; $268d : $cc, $f6, $00
	ror !$f6cc                                                  ; $2690 : $6c, $cc, $f6
	nop                                                  ; $2693 : $00
	ror $cc                                                  ; $2694 : $6b, $cc
	mov A, !$6b00+Y                                                  ; $2696 : $f6, $00, $6b
	mov !$00f6, Y                                                  ; $2699 : $cc, $f6, $00
	and1 c, /$16cc.7                                                  ; $269c : $6a, $cc, $f6
	nop                                                  ; $269f : $00
	cmp $f6, $cc                                                  ; $26a0 : $69, $cc, $f6
	nop                                                  ; $26a3 : $00
	cmp A, #$cc                                                  ; $26a4 : $68, $cc
	mov A, !$6700+Y                                                  ; $26a6 : $f6, $00, $67
	mov !$00f6, Y                                                  ; $26a9 : $cc, $f6, $00
	cmp A, !$f6cc                                                  ; $26ac : $65, $cc, $f6
	nop                                                  ; $26af : $00
	cmp A, $cc                                                  ; $26b0 : $64, $cc
	mov A, !$6300+Y                                                  ; $26b2 : $f6, $00, $63
	mov !$00f6, Y                                                  ; $26b5 : $cc, $f6, $00
	set1 $cc.3                                                  ; $26b8 : $62, $cc
	mov A, !$6100+Y                                                  ; $26ba : $f6, $00, $61
	mov !$00f6, Y                                                  ; $26bd : $cc, $f6, $00
	clrc                                                  ; $26c0 : $60
	mov !$00f6, Y                                                  ; $26c1 : $cc, $f6, $00
	jmp !$f6cc                                                  ; $26c4 : $5f, $cc, $f6


	nop                                                  ; $26c7 : $00
	cmp Y, !$f6cc                                                  ; $26c8 : $5e, $cc, $f6
	nop                                                  ; $26cb : $00
	mov X, A                                                  ; $26cc : $5d
	mov !$00f6, Y                                                  ; $26cd : $cc, $f6, $00
	lsr A                                                  ; $26d0 : $5c
	mov !$00f6, Y                                                  ; $26d1 : $cc, $f6, $00
	lsr $cc+X                                                  ; $26d4 : $5b, $cc
	mov A, !$5a00+Y                                                  ; $26d6 : $f6, $00, $5a
	mov !$00f6, Y                                                  ; $26d9 : $cc, $f6, $00
	eor (X), (Y)                                                  ; $26dc : $59
	mov !$00f6, Y                                                  ; $26dd : $cc, $f6, $00
	eor $f6, #$cc                                                  ; $26e0 : $58, $cc, $f6
	nop                                                  ; $26e3 : $00
	eor A, [$cc]+Y                                                  ; $26e4 : $57, $cc
	mov A, !$5600+Y                                                  ; $26e6 : $f6, $00, $56
	mov !$00f6, Y                                                  ; $26e9 : $cc, $f6, $00
	eor A, !$f6cc+X                                                  ; $26ec : $55, $cc, $f6
	nop                                                  ; $26ef : $00

br_00_26f0:
	eor A, $cc+X                                                  ; $26f0 : $54, $cc
	mov A, !$5300+Y                                                  ; $26f2 : $f6, $00, $53
	lsr !$0202                                                  ; $26f5 : $4c, $02, $02
	bvs br_00_26f0                                                  ; $26f8 : $70, $f6

	nop                                                  ; $26fa : $00
	clr1 $4c.2                                                  ; $26fb : $52, $4c
	set1 $02.0                                                  ; $26fd : $02, $02
	cmp A, #$f6                                                  ; $26ff : $68, $f6
	nop                                                  ; $2701 : $00
	clr1 $4c.2                                                  ; $2702 : $52, $4c
	set1 $02.0                                                  ; $2704 : $02, $02
	clrc                                                  ; $2706 : $60
	mov A, !$5100+Y                                                  ; $2707 : $f6, $00, $51
	lsr !$0202                                                  ; $270a : $4c, $02, $02
	eor $00, #$f6                                                  ; $270d : $58, $f6, $00
	bvc br_00_275e                                                  ; $2710 : $50, $4c

	set1 $02.0                                                  ; $2712 : $02, $02
	bvc -$0a                                                  ; $2714 : $50, $f6

	nop                                                  ; $2716 : $00
	pcall $4c                                                  ; $2717 : $4f, $4c
	set1 $02.0                                                  ; $2719 : $02, $02
	eor A, #$f6                                                  ; $271b : $48, $f6
	nop                                                  ; $271d : $00
	tclr1 !$024c                                                  ; $271e : $4e, $4c, $02
	set1 $40.0                                                  ; $2721 : $02, $40
	mov A, !$4d00+Y                                                  ; $2723 : $f6, $00, $4d
	lsr !$0202                                                  ; $2726 : $4c, $02, $02
	and $00, #$f6                                                  ; $2729 : $38, $f6, $00
	lsr !$024c                                                  ; $272c : $4c, $4c, $02
	set1 $30.0                                                  ; $272f : $02, $30
	mov A, !$4c00+Y                                                  ; $2731 : $f6, $00, $4c
	lsr !$0202                                                  ; $2734 : $4c, $02, $02
	and A, #$f6                                                  ; $2737 : $28, $f6
	nop                                                  ; $2739 : $00
	lsr $4c                                                  ; $273a : $4b, $4c
	set1 $02.0                                                  ; $273c : $02, $02
	clrp                                                  ; $273e : $20
	mov A, !$4a00+Y                                                  ; $273f : $f6, $00, $4a
	lsr !$0202                                                  ; $2742 : $4c, $02, $02
	or $00, #$f6                                                  ; $2745 : $18, $f6, $00
	eor $02, $4c                                                  ; $2748 : $49, $4c, $02
	set1 $10.0                                                  ; $274b : $02, $10
	mov A, !$4800+Y                                                  ; $274d : $f6, $00, $48
	lsr !$0102                                                  ; $2750 : $4c, $02, $01
	or A, #$fe                                                  ; $2753 : $08, $fe
	nop                                                  ; $2755 : $00

br_00_2756:
	nop                                                  ; $2756 : $00
	nop                                                  ; $2757 : $00
	nop                                                  ; $2758 : $00
	tcall 0                                                  ; $2759 : $01
	or A, !$0004                                                  ; $275a : $05, $04, $00
	stop                                                  ; $275d : $ff

br_00_275e:
	tcall 1                                                  ; $275e : $11
	nop                                                  ; $275f : $00
	tcall 15                                                  ; $2760 : $f1
	nop                                                  ; $2761 : $00
	bmi br_00_2756                                                  ; $2762 : $30, $f2

	nop                                                  ; $2764 : $00
	setp                                                  ; $2765 : $40
	mov A, [$00]+Y                                                  ; $2766 : $f7, $00
	brk                                                  ; $2768 : $0f


	stop                                                  ; $2769 : $ff
	bpl br_00_2788                                                  ; $276a : $10, $1c

	rol A                                                  ; $276c : $3c
	or A, !$3806                                                  ; $276d : $05, $06, $38
	rol A                                                  ; $2770 : $3c
	or A, !$3106                                                  ; $2771 : $05, $06, $31
	rol A                                                  ; $2774 : $3c
	or A, !$2006                                                  ; $2775 : $05, $06, $20
	rol A                                                  ; $2778 : $3c
	or A, !$1806                                                  ; $2779 : $05, $06, $18
	rol A                                                  ; $277c : $3c
	or A, !$1006                                                  ; $277d : $05, $06, $10
	rol A                                                  ; $2780 : $3c
	or A, !$0804                                                  ; $2781 : $05, $04, $08
	dbnz Y, -$01                                                  ; $2784 : $fe, $ff

	stop                                                  ; $2786 : $ff
	stop                                                  ; $2787 : $ff

br_00_2788:
	stop                                                  ; $2788 : $ff
	bbs $04.0, br_00_2791                                                  ; $2789 : $03, $04, $05

	or A, (X)                                                  ; $278c : $06
	or1 c, $1600.2                                                  ; $278d : $0a, $00, $56
	nop                                                  ; $2790 : $00

br_00_2791:
	set1 $00.5                                                  ; $2791 : $a2, $00
	stop                                                  ; $2793 : $ff

br_00_2794:
	tcall 1                                                  ; $2794 : $11
	nop                                                  ; $2795 : $00
	clr1 $00.7                                                  ; $2796 : $f2, $00
	setp                                                  ; $2798 : $40
	tcall 15                                                  ; $2799 : $f1
	nop                                                  ; $279a : $00
	bpl br_00_2794                                                  ; $279b : $10, $f7

	nop                                                  ; $279d : $00
	brk                                                  ; $279e : $0f


	stop                                                  ; $279f : $ff
	bpl $10                                                  ; $27a0 : $10, $10

	rol A                                                  ; $27a2 : $3c
	or A, (X)                                                  ; $27a3 : $06
	or A, !$3c60                                                  ; $27a4 : $05, $60, $3c
	or A, (X)                                                  ; $27a7 : $06
	or A, !$3c58                                                  ; $27a8 : $05, $58, $3c
	or A, (X)                                                  ; $27ab : $06
	or A, !$3c50                                                  ; $27ac : $05, $50, $3c
	or A, (X)                                                  ; $27af : $06
	or A, !$3c48                                                  ; $27b0 : $05, $48, $3c
	or A, (X)                                                  ; $27b3 : $06
	or A, !$3c40                                                  ; $27b4 : $05, $40, $3c
	or A, (X)                                                  ; $27b7 : $06
	or A, !$3c38                                                  ; $27b8 : $05, $38, $3c
	or A, (X)                                                  ; $27bb : $06
	or A, !$3c30                                                  ; $27bc : $05, $30, $3c
	or A, (X)                                                  ; $27bf : $06
	or A, !$3c28                                                  ; $27c0 : $05, $28, $3c
	or A, (X)                                                  ; $27c3 : $06
	or A, !$3c20                                                  ; $27c4 : $05, $20, $3c
	or A, (X)                                                  ; $27c7 : $06
	or A, !$3c18                                                  ; $27c8 : $05, $18, $3c
	or A, (X)                                                  ; $27cb : $06
	or A, !$3c10                                                  ; $27cc : $05, $10, $3c
	or A, (X)                                                  ; $27cf : $06
	or A, !$3c08                                                  ; $27d0 : $05, $08, $3c
	or A, (X)                                                  ; $27d3 : $06
	or A, !$3c06                                                  ; $27d4 : $05, $06, $3c
	or A, (X)                                                  ; $27d7 : $06
	or A, !$3c04                                                  ; $27d8 : $05, $04, $3c
	or A, (X)                                                  ; $27db : $06
	or A, !$fe02                                                  ; $27dc : $05, $02, $fe
	stop                                                  ; $27df : $ff

br_00_27e0:
	tcall 1                                                  ; $27e0 : $11
	nop                                                  ; $27e1 : $00
	clr1 $00.7                                                  ; $27e2 : $f2, $00
	or A, $f1+X                                                  ; $27e4 : $14, $f1
	nop                                                  ; $27e6 : $00
	bpl br_00_27e0                                                  ; $27e7 : $10, $f7

	tcall 0                                                  ; $27e9 : $01
	brk                                                  ; $27ea : $0f


	stop                                                  ; $27eb : $ff
	bpl br_00_27ff                                                  ; $27ec : $10, $11

	rol A                                                  ; $27ee : $3c
	or A, (X)                                                  ; $27ef : $06
	or A, (X)                                                  ; $27f0 : $06
	clrc                                                  ; $27f1 : $60
	rol A                                                  ; $27f2 : $3c
	or A, (X)                                                  ; $27f3 : $06
	or A, (X)                                                  ; $27f4 : $06
	eor $06, #$3c                                                  ; $27f5 : $58, $3c, $06
	or A, (X)                                                  ; $27f8 : $06
	bvc br_00_2837                                                  ; $27f9 : $50, $3c

	or A, (X)                                                  ; $27fb : $06
	or A, (X)                                                  ; $27fc : $06
	eor A, #$3c                                                  ; $27fd : $48, $3c

br_00_27ff:
	or A, (X)                                                  ; $27ff : $06
	or A, (X)                                                  ; $2800 : $06
	setp                                                  ; $2801 : $40
	rol A                                                  ; $2802 : $3c
	or A, (X)                                                  ; $2803 : $06
	or A, (X)                                                  ; $2804 : $06
	and $06, #$3c                                                  ; $2805 : $38, $3c, $06
	or A, (X)                                                  ; $2808 : $06
	bmi br_00_2847                                                  ; $2809 : $30, $3c

	or A, (X)                                                  ; $280b : $06
	or A, (X)                                                  ; $280c : $06
	and A, #$3c                                                  ; $280d : $28, $3c
	or A, (X)                                                  ; $280f : $06
	or A, (X)                                                  ; $2810 : $06
	clrp                                                  ; $2811 : $20
	rol A                                                  ; $2812 : $3c
	or A, (X)                                                  ; $2813 : $06
	or A, (X)                                                  ; $2814 : $06
	or $06, #$3c                                                  ; $2815 : $18, $3c, $06
	or A, (X)                                                  ; $2818 : $06
	bpl br_00_2857                                                  ; $2819 : $10, $3c

	or A, (X)                                                  ; $281b : $06
	or A, (X)                                                  ; $281c : $06
	or A, #$3c                                                  ; $281d : $08, $3c
	or A, (X)                                                  ; $281f : $06
	or A, (X)                                                  ; $2820 : $06
	or A, (X)                                                  ; $2821 : $06
	rol A                                                  ; $2822 : $3c
	or A, (X)                                                  ; $2823 : $06
	or A, (X)                                                  ; $2824 : $06
	or A, $3c                                                  ; $2825 : $04, $3c
	or A, (X)                                                  ; $2827 : $06
	or A, !$fe02                                                  ; $2828 : $05, $02, $fe
	stop                                                  ; $282b : $ff

br_00_282c:
	tcall 1                                                  ; $282c : $11
	nop                                                  ; $282d : $00
	clr1 $00.7                                                  ; $282e : $f2, $00
	cmp $00, #$f1                                                  ; $2830 : $78, $f1, $00
	bpl br_00_282c                                                  ; $2833 : $10, $f7

	set1 $0f.0                                                  ; $2835 : $02, $0f

br_00_2837:
	stop                                                  ; $2837 : $ff
	bpl br_00_284c                                                  ; $2838 : $10, $12

	rol A                                                  ; $283a : $3c
	or A, (X)                                                  ; $283b : $06
	or A, !$3c60                                                  ; $283c : $05, $60, $3c
	or A, (X)                                                  ; $283f : $06
	or A, !$3c58                                                  ; $2840 : $05, $58, $3c
	or A, (X)                                                  ; $2843 : $06
	or A, !$3c50                                                  ; $2844 : $05, $50, $3c

br_00_2847:
	or A, (X)                                                  ; $2847 : $06
	or A, !$3c48                                                  ; $2848 : $05, $48, $3c
	or A, (X)                                                  ; $284b : $06

br_00_284c:
	or A, !$3c40                                                  ; $284c : $05, $40, $3c
	or A, (X)                                                  ; $284f : $06
	or A, !$3c38                                                  ; $2850 : $05, $38, $3c
	or A, (X)                                                  ; $2853 : $06
	or A, !$3c30                                                  ; $2854 : $05, $30, $3c

br_00_2857:
	or A, (X)                                                  ; $2857 : $06
	or A, !$3c28                                                  ; $2858 : $05, $28, $3c
	or A, (X)                                                  ; $285b : $06
	or A, !$3c20                                                  ; $285c : $05, $20, $3c
	or A, (X)                                                  ; $285f : $06
	or A, !$3c18                                                  ; $2860 : $05, $18, $3c
	or A, (X)                                                  ; $2863 : $06
	or A, !$3c10                                                  ; $2864 : $05, $10, $3c
	or A, (X)                                                  ; $2867 : $06
	or A, !$3c08                                                  ; $2868 : $05, $08, $3c
	or A, (X)                                                  ; $286b : $06
	or A, !$3c06                                                  ; $286c : $05, $06, $3c

br_00_286f:
	or A, (X)                                                  ; $286f : $06
	or A, !$3c04                                                  ; $2870 : $05, $04, $3c
	or A, (X)                                                  ; $2873 : $06
	or A, !$fe02                                                  ; $2874 : $05, $02, $fe
	bvs br_00_286f                                                  ; $2877 : $70, $f6

	nop                                                  ; $2879 : $00
	clr1 $02.2                                                  ; $287a : $52, $02
	or A, !$0706                                                  ; $287c : $05, $06, $07
	nop                                                  ; $287f : $00
	cbne $00, -$01                                                  ; $2880 : $2e, $00, $ff

	tcall 1                                                  ; $2883 : $11
	nop                                                  ; $2884 : $00
	clr1 $00.7                                                  ; $2885 : $f2, $00
	setp                                                  ; $2887 : $40
	tcall 15                                                  ; $2888 : $f1
	nop                                                  ; $2889 : $00
	or $00, #$f7                                                  ; $288a : $18, $f7, $00
	tcall 1                                                  ; $288d : $11
	stop                                                  ; $288e : $ff
	bpl br_00_28ac                                                  ; $288f : $10, $1b

	rol A                                                  ; $2891 : $3c
	bbs $03.0, br_00_2903                                                  ; $2892 : $03, $03, $6e

	stop                                                  ; $2895 : $ff
	bpl br_00_28ac                                                  ; $2896 : $10, $14

	rol A                                                  ; $2898 : $3c
	set1 $02.0                                                  ; $2899 : $02, $02
	dbnz $3c, br_00_28a0                                                  ; $289b : $6e, $3c, $02

	set1 $48.0                                                  ; $289e : $02, $48

br_00_28a0:
	rol A                                                  ; $28a0 : $3c
	set1 $02.0                                                  ; $28a1 : $02, $02
	bmi $3c                                                  ; $28a3 : $30, $3c

	set1 $01.0                                                  ; $28a5 : $02, $01
	or $f2, #$fe                                                  ; $28a7 : $18, $fe, $f2
	nop                                                  ; $28aa : $00
	setp                                                  ; $28ab : $40

br_00_28ac:
	tcall 15                                                  ; $28ac : $f1
	nop                                                  ; $28ad : $00
	or $00, #$f7                                                  ; $28ae : $18, $f7, $00
	asl A                                                  ; $28b1 : $1c
	jmp [!$0203+X]                                                  ; $28b2 : $1f, $03, $02


	clrc                                                  ; $28b5 : $60
	ei                                                  ; $28b6 : $a0
	tcall 10                                                  ; $28b7 : $a1
	set1 $fe.5                                                  ; $28b8 : $a2, $fe
	stop                                                  ; $28ba : $ff
	stop                                                  ; $28bb : $ff
	stop                                                  ; $28bc : $ff
	stop                                                  ; $28bd : $ff
	set1 $05.0                                                  ; $28be : $02, $05
	or A, (X)                                                  ; $28c0 : $06
	or A, [$00+X]                                                  ; $28c1 : $07, $00
	cbne $00, -$01                                                  ; $28c3 : $2e, $00, $ff

	tcall 1                                                  ; $28c6 : $11
	nop                                                  ; $28c7 : $00
	clr1 $00.7                                                  ; $28c8 : $f2, $00
	setp                                                  ; $28ca : $40
	tcall 15                                                  ; $28cb : $f1
	nop                                                  ; $28cc : $00
	or $00, #$f7                                                  ; $28cd : $18, $f7, $00
	tcall 1                                                  ; $28d0 : $11
	stop                                                  ; $28d1 : $ff
	bpl br_00_28ef                                                  ; $28d2 : $10, $1b

	rol A                                                  ; $28d4 : $3c
	bbs $03.0, $60                                                  ; $28d5 : $03, $03, $60

	stop                                                  ; $28d8 : $ff
	bpl br_00_28ef                                                  ; $28d9 : $10, $14

	rol A                                                  ; $28db : $3c
	set1 $02.0                                                  ; $28dc : $02, $02
	clrc                                                  ; $28de : $60
	rol A                                                  ; $28df : $3c
	set1 $02.0                                                  ; $28e0 : $02, $02
	eor A, #$3c                                                  ; $28e2 : $48, $3c
	set1 $02.0                                                  ; $28e4 : $02, $02
	bmi $3c                                                  ; $28e6 : $30, $3c

	set1 $01.0                                                  ; $28e8 : $02, $01
	or $f2, #$fe                                                  ; $28ea : $18, $fe, $f2
	nop                                                  ; $28ed : $00
	setp                                                  ; $28ee : $40

br_00_28ef:
	tcall 15                                                  ; $28ef : $f1
	nop                                                  ; $28f0 : $00
	or $00, #$f7                                                  ; $28f1 : $18, $f7, $00
	asl A                                                  ; $28f4 : $1c
	mov Y, $24+X                                                  ; $28f5 : $fb, $24
	bbs $02.0, $50                                                  ; $28f7 : $03, $02, $50

	inc Y                                                  ; $28fa : $fc
	nop                                                  ; $28fb : $00
	dbnz Y, -$01                                                  ; $28fc : $fe, $ff

	stop                                                  ; $28fe : $ff
	stop                                                  ; $28ff : $ff
	stop                                                  ; $2900 : $ff
	set1 $05.0                                                  ; $2901 : $02, $05

br_00_2903:
	or A, (X)                                                  ; $2903 : $06
	or A, [$00+X]                                                  ; $2904 : $07, $00
	cmp X, $00                                                  ; $2906 : $3e, $00
	stop                                                  ; $2908 : $ff
	tcall 1                                                  ; $2909 : $11
	nop                                                  ; $290a : $00
	clr1 $00.7                                                  ; $290b : $f2, $00
	setp                                                  ; $290d : $40
	tcall 15                                                  ; $290e : $f1
	nop                                                  ; $290f : $00
	or $00, #$f7                                                  ; $2910 : $18, $f7, $00
	tcall 1                                                  ; $2913 : $11
	stop                                                  ; $2914 : $ff
	bpl br_00_2932                                                  ; $2915 : $10, $1b

	rol A                                                  ; $2917 : $3c
	bbs $03.0, $6e                                                  ; $2918 : $03, $03, $6e

	stop                                                  ; $291b : $ff
	bpl br_00_2932                                                  ; $291c : $10, $14

	rol A                                                  ; $291e : $3c
	bbs $04.0, br_00_2990                                                  ; $291f : $03, $04, $6e

	rol A                                                  ; $2922 : $3c
	bbs $04.0, br_00_2976                                                  ; $2923 : $03, $04, $50

	rol A                                                  ; $2926 : $3c
	bbs $04.0, $48                                                  ; $2927 : $03, $04, $48

	rol A                                                  ; $292a : $3c
	bbs $04.0, br_00_296e                                                  ; $292b : $03, $04, $40

	rol A                                                  ; $292e : $3c
	bbs $04.0, br_00_2962                                                  ; $292f : $03, $04, $30

br_00_2932:
	rol A                                                  ; $2932 : $3c
	bbs $04.0, $18                                                  ; $2933 : $03, $04, $18

	rol A                                                  ; $2936 : $3c
	bbs $04.0, $10                                                  ; $2937 : $03, $04, $10

	rol A                                                  ; $293a : $3c
	bbs $02.0, $08                                                  ; $293b : $03, $02, $08

	dbnz Y, br_00_2932                                                  ; $293e : $fe, $f2

	nop                                                  ; $2940 : $00
	setp                                                  ; $2941 : $40
	tcall 15                                                  ; $2942 : $f1
	nop                                                  ; $2943 : $00
	or $00, #$f7                                                  ; $2944 : $18, $f7, $00
	asl A                                                  ; $2947 : $1c
	and A, (X)                                                  ; $2948 : $26
	set1 $02.0                                                  ; $2949 : $02, $02
	clrc                                                  ; $294b : $60
	sbc A, !$a3a4                                                  ; $294c : $a5, $a4, $a3
	set1 $03.1                                                  ; $294f : $22, $03
	set1 $60.0                                                  ; $2951 : $02, $60
	tcall 10                                                  ; $2953 : $a1
	ei                                                  ; $2954 : $a0
	xcn A                                                  ; $2955 : $9f
	div YA, X                                                  ; $2956 : $9e
	mov X, SP                                                  ; $2957 : $9d
	asl A                                                  ; $2958 : $1c
	or A, $02                                                  ; $2959 : $04, $02
	clrc                                                  ; $295b : $60
	asl $05+X                                                  ; $295c : $1b, $05
	set1 $60.0                                                  ; $295e : $02, $60
	decw $06                                                  ; $2960 : $1a, $06

br_00_2962:
	set1 $60.0                                                  ; $2962 : $02, $60
	dbnz Y, $11                                                  ; $2964 : $fe, $11

	rol A                                                  ; $2966 : $3c
	or A, (X)                                                  ; $2967 : $06
	or A, (X)                                                  ; $2968 : $06
	set1 $05.0                                                  ; $2969 : $02, $05
	or A, (X)                                                  ; $296b : $06
	or A, [$00+X]                                                  ; $296c : $07, $00

br_00_296e:
	bvc br_00_2970                                                  ; $296e : $50, $00

br_00_2970:
	stop                                                  ; $2970 : $ff
	bbs $00.0, -$01                                                  ; $2971 : $03, $00, $ff

	tcall 1                                                  ; $2974 : $11
	nop                                                  ; $2975 : $00

br_00_2976:
	clr1 $00.7                                                  ; $2976 : $f2, $00
	setp                                                  ; $2978 : $40
	tcall 15                                                  ; $2979 : $f1
	nop                                                  ; $297a : $00
	or $00, #$f7                                                  ; $297b : $18, $f7, $00
	tcall 1                                                  ; $297e : $11
	mov Y, $ff+X                                                  ; $297f : $fb, $ff
	bpl br_00_299f                                                  ; $2981 : $10, $1c

	rol A                                                  ; $2983 : $3c
	bbs $03.0, $50                                                  ; $2984 : $03, $03, $50

	stop                                                  ; $2987 : $ff
	bpl br_00_29a4                                                  ; $2988 : $10, $1a

	inc A                                                  ; $298a : $bc
	stop                                                  ; $298b : $ff
	bpl $18                                                  ; $298c : $10, $18

	inc A                                                  ; $298e : $bc

br_00_298f:
	stop                                                  ; $298f : $ff

br_00_2990:
	bpl $16                                                  ; $2990 : $10, $16

	inc A                                                  ; $2992 : $bc
	inc Y                                                  ; $2993 : $fc
	or A, $ff                                                  ; $2994 : $04, $ff
	bpl br_00_29ad                                                  ; $2996 : $10, $15

	rol A                                                  ; $2998 : $3c
	or A, $05                                                  ; $2999 : $04, $05
	bvc br_00_29d9                                                  ; $299b : $50, $3c

	or A, $05                                                  ; $299d : $04, $05

br_00_299f:
	eor A, #$3c                                                  ; $299f : $48, $3c
	or A, $05                                                  ; $29a1 : $04, $05
	setp                                                  ; $29a3 : $40

br_00_29a4:
	rol A                                                  ; $29a4 : $3c
	or A, $05                                                  ; $29a5 : $04, $05
	bmi br_00_29e5                                                  ; $29a7 : $30, $3c

	or A, $05                                                  ; $29a9 : $04, $05
	clrp                                                  ; $29ab : $20
	rol A                                                  ; $29ac : $3c

br_00_29ad:
	or A, $05                                                  ; $29ad : $04, $05

br_00_29af:
	or $04, #$3c                                                  ; $29af : $18, $3c, $04
	or A, !$3c10                                                  ; $29b2 : $05, $10, $3c
	or A, $03                                                  ; $29b5 : $04, $03
	or A, #$fe                                                  ; $29b7 : $08, $fe
	stop                                                  ; $29b9 : $ff

br_00_29ba:
	bbs $00.0, br_00_29af                                                  ; $29ba : $03, $00, $f2

	nop                                                  ; $29bd : $00
	setp                                                  ; $29be : $40
	tcall 15                                                  ; $29bf : $f1
	nop                                                  ; $29c0 : $00
	bmi br_00_29ba                                                  ; $29c1 : $30, $f7

	nop                                                  ; $29c3 : $00
	cmp X, !$0246                                                  ; $29c4 : $1e, $46, $02
	set1 $60.0                                                  ; $29c7 : $02, $60
	mov !$c3c4, A                                                  ; $29c9 : $c5, $c4, $c3
	set1 $c1.6                                                  ; $29cc : $c2, $c1
	di                                                  ; $29ce : $c0
	mov A, (X)+                                                 ; $29cf : $bf
	das A                                                  ; $29d0 : $be
	mov SP, X                                                  ; $29d1 : $bd
	inc A                                                  ; $29d2 : $bc
	inc $ba+X                                                  ; $29d3 : $bb, $ba
	sbc (X), (Y)                                                  ; $29d5 : $b9
	sbc $b6, #$b7                                                  ; $29d6 : $b8, $b7, $b6

br_00_29d9:
	sbc A, !$b3b4+X                                                  ; $29d9 : $b5, $b4, $b3
	clr1 $b1.5                                                  ; $29dc : $b2, $b1
	bcs br_00_298f                                                  ; $29de : $b0, $af

	pop A                                                  ; $29e0 : $ae
	cmp Y, #$ac                                                  ; $29e1 : $ad, $ac
	inc $aa                                                  ; $29e3 : $ab, $aa

br_00_29e5:
	sbc $a7, $a8                                                  ; $29e5 : $a9, $a8, $a7
	sbc A, (X)                                                  ; $29e8 : $a6
	sbc A, !$23a4                                                  ; $29e9 : $a5, $a4, $23
	set1 $01.0                                                  ; $29ec : $02, $01
	clrc                                                  ; $29ee : $60
	dbnz Y, br_00_29f7                                                  ; $29ef : $fe, $06

	clrp                                                  ; $29f1 : $20
	rol A                                                  ; $29f2 : $3c
	or A, (X)                                                  ; $29f3 : $06
	set1 $05.0                                                  ; $29f4 : $02, $05
	or A, (X)                                                  ; $29f6 : $06

br_00_29f7:
	or A, [$00+X]                                                  ; $29f7 : $07, $00
	eor A, $00                                                  ; $29f9 : $44, $00
	stop                                                  ; $29fb : $ff
	bbs $00.0, -$01                                                  ; $29fc : $03, $00, $ff

	tcall 1                                                  ; $29ff : $11
	nop                                                  ; $2a00 : $00

br_00_2a01:
	clr1 $00.7                                                  ; $2a01 : $f2, $00
	setp                                                  ; $2a03 : $40
	tcall 15                                                  ; $2a04 : $f1
	nop                                                  ; $2a05 : $00
	or $00, #$f7                                                  ; $2a06 : $18, $f7, $00
	tcall 1                                                  ; $2a09 : $11
	stop                                                  ; $2a0a : $ff
	bpl br_00_2a23                                                  ; $2a0b : $10, $16

	mov Y, $3c+X                                                  ; $2a0d : $fb, $3c

br_00_2a0f:
	set1 $02.0                                                  ; $2a0f : $02, $02
	bmi br_00_2a0f                                                  ; $2a11 : $30, $fc

	rol $ff                                                  ; $2a13 : $2b, $ff
	bpl br_00_2a2c                                                  ; $2a15 : $10, $15

	rol A                                                  ; $2a17 : $3c
	or A, $05                                                  ; $2a18 : $04, $05
	bvc $3c                                                  ; $2a1a : $50, $3c

	or A, $05                                                  ; $2a1c : $04, $05

br_00_2a1e:
	eor A, #$3c                                                  ; $2a1e : $48, $3c
	or A, $05                                                  ; $2a20 : $04, $05
	setp                                                  ; $2a22 : $40

br_00_2a23:
	rol A                                                  ; $2a23 : $3c
	or A, $05                                                  ; $2a24 : $04, $05
	bmi br_00_2a64                                                  ; $2a26 : $30, $3c

	or A, $05                                                  ; $2a28 : $04, $05
	clrp                                                  ; $2a2a : $20
	rol A                                                  ; $2a2b : $3c

br_00_2a2c:
	or A, $05                                                  ; $2a2c : $04, $05

br_00_2a2e:
	or $04, #$3c                                                  ; $2a2e : $18, $3c, $04
	or A, !$3c10                                                  ; $2a31 : $05, $10, $3c
	or A, $03                                                  ; $2a34 : $04, $03
	or A, #$fe                                                  ; $2a36 : $08, $fe
	stop                                                  ; $2a38 : $ff

br_00_2a39:
	bbs $00.0, br_00_2a2e                                                  ; $2a39 : $03, $00, $f2

	nop                                                  ; $2a3c : $00
	setp                                                  ; $2a3d : $40
	tcall 15                                                  ; $2a3e : $f1
	nop                                                  ; $2a3f : $00
	bmi br_00_2a39                                                  ; $2a40 : $30, $f7

	nop                                                  ; $2a42 : $00
	cmp X, !$0626                                                  ; $2a43 : $1e, $26, $06
	or A, (X)                                                  ; $2a46 : $06
	clrc                                                  ; $2a47 : $60
	and A, [$05+X]                                                  ; $2a48 : $27, $05
	or A, !$2860                                                  ; $2a4a : $05, $60, $28
	or A, $04                                                  ; $2a4d : $04, $04
	clrc                                                  ; $2a4f : $60
	sbc $03, $2a                                                  ; $2a50 : $a9, $2a, $03
	bbs $60.0, br_00_2a01                                                  ; $2a53 : $03, $60, $ab

	inc !$2ead                                                  ; $2a56 : $ac, $ad, $2e
	set1 $02.0                                                  ; $2a59 : $02, $02
	clrc                                                  ; $2a5b : $60
	mov (X)+, A                                                  ; $2a5c : $af
	bcs $31                                                  ; $2a5d : $b0, $31

	bbs $02.0, br_00_2ac2                                                  ; $2a5f : $03, $02, $60

	clr1 $02.1                                                  ; $2a62 : $32, $02

br_00_2a64:
	set1 $60.0                                                  ; $2a64 : $02, $60
	bbc $b4.5, br_00_2a1e                                                  ; $2a66 : $b3, $b4, $b5

	sbc A, !$b8b7+Y                                                  ; $2a69 : $b6, $b7, $b8
	sbc (X), (Y)                                                  ; $2a6c : $b9
	movw YA, $bb                                                  ; $2a6d : $ba, $bb
	inc A                                                  ; $2a6f : $bc
	mov SP, X                                                  ; $2a70 : $bd
	das A                                                  ; $2a71 : $be
	mov A, (X)+                                                 ; $2a72 : $bf
	di                                                  ; $2a73 : $c0
	tcall 12                                                  ; $2a74 : $c1
	set1 $c3.6                                                  ; $2a75 : $c2, $c3
	mov $c5, A                                                  ; $2a77 : $c4, $c5
	mov (X), A                                                  ; $2a79 : $c6
	mov [$c8+X], A                                                  ; $2a7a : $c7, $c8
	call !$0102                                                  ; $2a7c : $3f, $02, $01
	clrc                                                  ; $2a7f : $60

br_00_2a80:
	das A                                                  ; $2a80 : $be
	mov SP, X                                                  ; $2a81 : $bd
	inc A                                                  ; $2a82 : $bc
	inc $ba+X                                                  ; $2a83 : $bb, $ba
	sbc (X), (Y)                                                  ; $2a85 : $b9
	sbc $b6, #$b7                                                  ; $2a86 : $b8, $b7, $b6

br_00_2a89:
	sbc A, !$b3b4+X                                                  ; $2a89 : $b5, $b4, $b3
	clr1 $01.1                                                  ; $2a8c : $32, $01
	tcall 0                                                  ; $2a8e : $01
	eor $01, #$31                                                  ; $2a8f : $58, $31, $01
	tcall 0                                                  ; $2a92 : $01
	bvc br_00_2ac5                                                  ; $2a93 : $50, $30

	tcall 0                                                  ; $2a95 : $01
	tcall 0                                                  ; $2a96 : $01
	eor A, #$2f                                                  ; $2a97 : $48, $2f
	tcall 0                                                  ; $2a99 : $01
	tcall 0                                                  ; $2a9a : $01
	setp                                                  ; $2a9b : $40
	cbne $01, $01                                                  ; $2a9c : $2e, $01, $01

	and $01, #$2d                                                  ; $2a9f : $38, $2d, $01
	tcall 0                                                  ; $2aa2 : $01
	bmi $2c                                                  ; $2aa3 : $30, $2c

	tcall 0                                                  ; $2aa5 : $01
	tcall 0                                                  ; $2aa6 : $01
	and A, #$2b                                                  ; $2aa7 : $28, $2b
	tcall 0                                                  ; $2aa9 : $01
	tcall 0                                                  ; $2aaa : $01
	clrp                                                  ; $2aab : $20

br_00_2aac:
	or1 c, /$0101.0                                                  ; $2aac : $2a, $01, $01
	or $02, #$29                                                  ; $2aaf : $18, $29, $02
	tcall 0                                                  ; $2ab2 : $01

br_00_2ab3:
	bpl br_00_2ab3                                                  ; $2ab3 : $10, $fe

	rol A                                                  ; $2ab5 : $3c
	or A, (X)                                                  ; $2ab6 : $06
	or A, !$0140                                                  ; $2ab7 : $05, $40, $01
	or A, (X)                                                  ; $2aba : $06
	or A, $00                                                  ; $2abb : $04, $00
	stop                                                  ; $2abd : $ff
	bbs $00.0, br_00_2ab3                                                  ; $2abe : $03, $00, $f2

	nop                                                  ; $2ac1 : $00

br_00_2ac2:
	setp                                                  ; $2ac2 : $40
	tcall 15                                                  ; $2ac3 : $f1
	nop                                                  ; $2ac4 : $00

br_00_2ac5:
	setp                                                  ; $2ac5 : $40
	mov A, [$00]+Y                                                  ; $2ac6 : $f7, $00
	cmp X, !$26fb                                                  ; $2ac8 : $1e, $fb, $26
	or A, (X)                                                  ; $2acb : $06
	or A, !$276e                                                  ; $2acc : $05, $6e, $27
	or A, !$6e04                                                  ; $2acf : $05, $04, $6e
	and A, #$04                                                  ; $2ad2 : $28, $04
	bbs $6e.0, br_00_2a80                                                  ; $2ad4 : $03, $6e, $a9

	or1 c, /$0203.0                                                  ; $2ad7 : $2a, $03, $02
	dbnz $ab, br_00_2a89                                                  ; $2ada : $6e, $ab, $ac

	inc $aa                                                  ; $2add : $ab, $aa
	sbc $a7, $a8                                                  ; $2adf : $a9, $a8, $a7
	inc Y                                                  ; $2ae2 : $fc

br_00_2ae3:
	nop                                                  ; $2ae3 : $00
	dbnz Y, -$01                                                  ; $2ae4 : $fe, $ff

	stop                                                  ; $2ae6 : $ff
	stop                                                  ; $2ae7 : $ff
	stop                                                  ; $2ae8 : $ff
	tcall 0                                                  ; $2ae9 : $01
	or A, (X)                                                  ; $2aea : $06
	or A, $00                                                  ; $2aeb : $04, $00
	stop                                                  ; $2aed : $ff
	bbs $00.0, br_00_2ae3                                                  ; $2aee : $03, $00, $f2

	nop                                                  ; $2af1 : $00
	setp                                                  ; $2af2 : $40
	tcall 15                                                  ; $2af3 : $f1
	nop                                                  ; $2af4 : $00
	setp                                                  ; $2af5 : $40
	mov A, [$00]+Y                                                  ; $2af6 : $f7, $00
	cmp X, !$2afb                                                  ; $2af8 : $1e, $fb, $2a
	set1 $01.0                                                  ; $2afb : $02, $01
	dbnz $ab, br_00_2aac                                                  ; $2afd : $6e, $ab, $ac

	cmp Y, #$ae                                                  ; $2b00 : $ad, $ae
	cmp Y, #$ac                                                  ; $2b02 : $ad, $ac
	inc $fc                                                  ; $2b04 : $ab, $fc
	nop                                                  ; $2b06 : $00
	dbnz Y, -$01                                                  ; $2b07 : $fe, $ff

	stop                                                  ; $2b09 : $ff
	stop                                                  ; $2b0a : $ff
	stop                                                  ; $2b0b : $ff
	set1 $05.0                                                  ; $2b0c : $02, $05
	or A, (X)                                                  ; $2b0e : $06
	or A, [$00+X]                                                  ; $2b0f : $07, $00
	bbc $00.2, -$01                                                  ; $2b11 : $53, $00, $ff

	tcall 1                                                  ; $2b14 : $11
	nop                                                  ; $2b15 : $00
	clr1 $00.7                                                  ; $2b16 : $f2, $00
	setp                                                  ; $2b18 : $40
	tcall 15                                                  ; $2b19 : $f1
	nop                                                  ; $2b1a : $00
	or $00, #$f7                                                  ; $2b1b : $18, $f7, $00
	brk                                                  ; $2b1e : $0f


	stop                                                  ; $2b1f : $ff
	bpl br_00_2b3f                                                  ; $2b20 : $10, $1d

	rol A                                                  ; $2b22 : $3c
	bbs $04.0, br_00_2b2e                                                  ; $2b23 : $03, $04, $08

	rol A                                                  ; $2b26 : $3c
	bbs $04.0, br_00_2b3a                                                  ; $2b27 : $03, $04, $10

	rol A                                                  ; $2b2a : $3c
	bbs $04.0, br_00_2b46                                                  ; $2b2b : $03, $04, $18

br_00_2b2e:
	rol A                                                  ; $2b2e : $3c
	bbs $04.0, br_00_2b52                                                  ; $2b2f : $03, $04, $20

	rol A                                                  ; $2b32 : $3c
	bbs $04.0, br_00_2b5e                                                  ; $2b33 : $03, $04, $28

	rol A                                                  ; $2b36 : $3c
	bbs $04.0, br_00_2b6a                                                  ; $2b37 : $03, $04, $30

br_00_2b3a:
	rol A                                                  ; $2b3a : $3c
	bbs $04.0, $38                                                  ; $2b3b : $03, $04, $38

	rol A                                                  ; $2b3e : $3c

br_00_2b3f:
	setp                                                  ; $2b3f : $40
	tcall 4                                                  ; $2b40 : $41
	setp                                                  ; $2b41 : $40
	rol A                                                  ; $2b42 : $3c
	or A, !$3806                                                  ; $2b43 : $05, $06, $38

br_00_2b46:
	rol A                                                  ; $2b46 : $3c
	or A, !$3006                                                  ; $2b47 : $05, $06, $30
	rol A                                                  ; $2b4a : $3c
	or A, !$2806                                                  ; $2b4b : $05, $06, $28
	rol A                                                  ; $2b4e : $3c
	or A, !$2006                                                  ; $2b4f : $05, $06, $20

br_00_2b52:
	rol A                                                  ; $2b52 : $3c
	or A, !$1806                                                  ; $2b53 : $05, $06, $18
	rol A                                                  ; $2b56 : $3c
	or A, !$1006                                                  ; $2b57 : $05, $06, $10
	rol A                                                  ; $2b5a : $3c
	or A, !$0804                                                  ; $2b5b : $05, $04, $08

br_00_2b5e:
	dbnz Y, br_00_2b52                                                  ; $2b5e : $fe, $f2

	nop                                                  ; $2b60 : $00
	setp                                                  ; $2b61 : $40
	tcall 15                                                  ; $2b62 : $f1
	nop                                                  ; $2b63 : $00
	bmi -$09                                                  ; $2b64 : $30, $f7

	nop                                                  ; $2b66 : $00
	cmp X, !$0343                                                  ; $2b67 : $1e, $43, $03

br_00_2b6a:
	or A, $08                                                  ; $2b6a : $04, $08
	bbs $03.2, $04                                                  ; $2b6c : $43, $03, $04

	bpl br_00_2bb4                                                  ; $2b6f : $10, $43

	bbs $04.0, br_00_2b8c                                                  ; $2b71 : $03, $04, $18

	bbs $03.2, $04                                                  ; $2b74 : $43, $03, $04

	bmi br_00_2bbc                                                  ; $2b77 : $30, $43

	bbs $04.0, br_00_2bbc                                                  ; $2b79 : $03, $04, $40

	bbs $03.2, $04                                                  ; $2b7c : $43, $03, $04

	bvc br_00_2bc4                                                  ; $2b7f : $50, $43

	bbs $04.0, br_00_2be4                                                  ; $2b81 : $03, $04, $60

	bbs $40.2, br_00_2bc8                                                  ; $2b84 : $43, $40, $41

	dbnz $43, br_00_2b8f                                                  ; $2b87 : $6e, $43, $05

	or A, (X)                                                  ; $2b8a : $06
	clrc                                                  ; $2b8b : $60

br_00_2b8c:
	bbs $05.2, $06                                                  ; $2b8c : $43, $05, $06

br_00_2b8f:
	bvc br_00_2bd4                                                  ; $2b8f : $50, $43

	or A, !$4006                                                  ; $2b91 : $05, $06, $40
	bbs $05.2, $06                                                  ; $2b94 : $43, $05, $06

	bmi br_00_2bdc                                                  ; $2b97 : $30, $43

	or A, !$1806                                                  ; $2b99 : $05, $06, $18
	bbs $05.2, $06                                                  ; $2b9c : $43, $05, $06

	bpl br_00_2be4                                                  ; $2b9f : $10, $43

	or A, !$0804                                                  ; $2ba1 : $05, $04, $08
	dbnz Y, br_00_2ba7                                                  ; $2ba4 : $fe, $01

	tcall 0                                                  ; $2ba6 : $01

br_00_2ba7:
	eor $02, #$31                                                  ; $2ba7 : $58, $31, $02
	or A, $05                                                  ; $2baa : $04, $05
	or A, [$00+X]                                                  ; $2bac : $07, $00
	bbc $00.2, -$0e                                                  ; $2bae : $53, $00, $f2

	nop                                                  ; $2bb1 : $00
	setp                                                  ; $2bb2 : $40
	tcall 15                                                  ; $2bb3 : $f1

br_00_2bb4:
	nop                                                  ; $2bb4 : $00
	or $00, #$f7                                                  ; $2bb5 : $18, $f7, $00
	brk                                                  ; $2bb8 : $0f


	stop                                                  ; $2bb9 : $ff
	tcall 1                                                  ; $2bba : $11
	nop                                                  ; $2bbb : $00

br_00_2bbc:
	stop                                                  ; $2bbc : $ff
	bpl br_00_2bdc                                                  ; $2bbd : $10, $1d

	rol A                                                  ; $2bbf : $3c
	bbs $04.0, br_00_2bcb                                                  ; $2bc0 : $03, $04, $08

	rol A                                                  ; $2bc3 : $3c

br_00_2bc4:
	bbs $04.0, br_00_2bd7                                                  ; $2bc4 : $03, $04, $10

	rol A                                                  ; $2bc7 : $3c

br_00_2bc8:
	bbs $04.0, br_00_2be3                                                  ; $2bc8 : $03, $04, $18

br_00_2bcb:
	rol A                                                  ; $2bcb : $3c
	bbs $04.0, br_00_2bef                                                  ; $2bcc : $03, $04, $20

	rol A                                                  ; $2bcf : $3c
	bbs $04.0, br_00_2bfb                                                  ; $2bd0 : $03, $04, $28

	rol A                                                  ; $2bd3 : $3c

br_00_2bd4:
	bbs $04.0, br_00_2c07                                                  ; $2bd4 : $03, $04, $30

br_00_2bd7:
	rol A                                                  ; $2bd7 : $3c
	bbs $04.0, br_00_2c13                                                  ; $2bd8 : $03, $04, $38

	rol A                                                  ; $2bdb : $3c

br_00_2bdc:
	or $40, #$19                                                  ; $2bdc : $18, $19, $40
	rol A                                                  ; $2bdf : $3c
	bbs $04.0, br_00_2c1b                                                  ; $2be0 : $03, $04, $38

br_00_2be3:
	rol A                                                  ; $2be3 : $3c

br_00_2be4:
	bbs $04.0, br_00_2c17                                                  ; $2be4 : $03, $04, $30

	rol A                                                  ; $2be7 : $3c
	bbs $04.0, br_00_2c13                                                  ; $2be8 : $03, $04, $28

	rol A                                                  ; $2beb : $3c
	bbs $04.0, br_00_2c0f                                                  ; $2bec : $03, $04, $20

br_00_2bef:
	rol A                                                  ; $2bef : $3c
	bbs $04.0, br_00_2c0b                                                  ; $2bf0 : $03, $04, $18

	rol A                                                  ; $2bf3 : $3c
	bbs $04.0, br_00_2c07                                                  ; $2bf4 : $03, $04, $10

	rol A                                                  ; $2bf7 : $3c
	bbs $02.0, br_00_2c03                                                  ; $2bf8 : $03, $02, $08

br_00_2bfb:
	dbnz Y, br_00_2bef                                                  ; $2bfb : $fe, $f2

	nop                                                  ; $2bfd : $00
	setp                                                  ; $2bfe : $40
	tcall 15                                                  ; $2bff : $f1
	nop                                                  ; $2c00 : $00
	bmi -$09                                                  ; $2c01 : $30, $f7

br_00_2c03:
	nop                                                  ; $2c03 : $00
	cmp X, !$034f                                                  ; $2c04 : $1e, $4f, $03

br_00_2c07:
	or A, $08                                                  ; $2c07 : $04, $08
	pcall $03                                                  ; $2c09 : $4f, $03

br_00_2c0b:
	or A, $10                                                  ; $2c0b : $04, $10
	pcall $03                                                  ; $2c0d : $4f, $03

br_00_2c0f:
	or A, $18                                                  ; $2c0f : $04, $18
	pcall $03                                                  ; $2c11 : $4f, $03

br_00_2c13:
	or A, $30                                                  ; $2c13 : $04, $30
	pcall $03                                                  ; $2c15 : $4f, $03

br_00_2c17:
	or A, $40                                                  ; $2c17 : $04, $40
	pcall $03                                                  ; $2c19 : $4f, $03

br_00_2c1b:
	or A, $50                                                  ; $2c1b : $04, $50
	pcall $03                                                  ; $2c1d : $4f, $03
	or A, $60                                                  ; $2c1f : $04, $60
	pcall $18                                                  ; $2c21 : $4f, $18
	or (X), (Y)                                                  ; $2c23 : $19
	dbnz $4f, $03                                                  ; $2c24 : $6e, $4f, $03

	or A, $60                                                  ; $2c27 : $04, $60
	pcall $03                                                  ; $2c29 : $4f, $03
	or A, $50                                                  ; $2c2b : $04, $50
	pcall $03                                                  ; $2c2d : $4f, $03
	or A, $40                                                  ; $2c2f : $04, $40
	pcall $03                                                  ; $2c31 : $4f, $03
	or A, $30                                                  ; $2c33 : $04, $30
	pcall $03                                                  ; $2c35 : $4f, $03
	or A, $18                                                  ; $2c37 : $04, $18
	pcall $03                                                  ; $2c39 : $4f, $03
	or A, $10                                                  ; $2c3b : $04, $10
	pcall $03                                                  ; $2c3d : $4f, $03
	set1 $08.0                                                  ; $2c3f : $02, $08
	dbnz Y, br_00_2c44                                                  ; $2c41 : $fe, $01

	tcall 0                                                  ; $2c43 : $01

br_00_2c44:
	eor $01, #$31                                                  ; $2c44 : $58, $31, $01
	or A, (X)                                                  ; $2c47 : $06
	or A, $00                                                  ; $2c48 : $04, $00
	stop                                                  ; $2c4a : $ff
	tcall 1                                                  ; $2c4b : $11
	nop                                                  ; $2c4c : $00
	tcall 15                                                  ; $2c4d : $f1
	nop                                                  ; $2c4e : $00
	or $01, #$f7                                                  ; $2c4f : $18, $f7, $01
	brk                                                  ; $2c52 : $0f


	dbnz Y, -$01                                                  ; $2c53 : $fe, $ff

	stop                                                  ; $2c55 : $ff
	stop                                                  ; $2c56 : $ff
	stop                                                  ; $2c57 : $ff
	tcall 0                                                  ; $2c58 : $01
	or A, (X)                                                  ; $2c59 : $06
	or A, $00                                                  ; $2c5a : $04, $00
	clr1 $00.7                                                  ; $2c5c : $f2, $00
	setp                                                  ; $2c5e : $40
	mov A, [$00]+Y                                                  ; $2c5f : $f7, $00
	brk                                                  ; $2c61 : $0f


	tcall 15                                                  ; $2c62 : $f1

br_00_2c63:
	nop                                                  ; $2c63 : $00
	and $00, #$f7                                                  ; $2c64 : $38, $f7, $00
	brk                                                  ; $2c67 : $0f


	and A, [$04]+Y                                                  ; $2c68 : $37, $04
	bbs $58.0, br_00_2c63                                                  ; $2c6a : $03, $58, $f6

	nop                                                  ; $2c6d : $00
	setc                                                  ; $2c6e : $80
	and A, [$01]+Y                                                  ; $2c6f : $37, $01
	or A, !$f658                                                  ; $2c71 : $05, $58, $f6
	tcall 0                                                  ; $2c74 : $01
	adc A, !$01f6                                                  ; $2c75 : $85, $f6, $01
	dec $f6                                                  ; $2c78 : $8b, $f6
	tcall 0                                                  ; $2c7a : $01
	tcall 9                                                  ; $2c7b : $91
	mov A, !$9801+Y                                                  ; $2c7c : $f6, $01, $98
	mov A, !$a001+Y                                                  ; $2c7f : $f6, $01, $a0
	and A, !$0304+Y                                                  ; $2c82 : $36, $04, $03
	setp                                                  ; $2c85 : $40
	mov A, !$8000+Y                                                  ; $2c86 : $f6, $00, $80
	and A, [$01]+Y                                                  ; $2c89 : $37, $01
	or A, !$f640                                                  ; $2c8b : $05, $40, $f6
	tcall 0                                                  ; $2c8e : $01
	adc A, !$01f6                                                  ; $2c8f : $85, $f6, $01
	dec $f6                                                  ; $2c92 : $8b, $f6
	tcall 0                                                  ; $2c94 : $01
	tcall 9                                                  ; $2c95 : $91
	mov A, !$9801+Y                                                  ; $2c96 : $f6, $01, $98
	mov A, !$a001+Y                                                  ; $2c99 : $f6, $01, $a0
	and A, [$04]+Y                                                  ; $2c9c : $37, $04
	bbs $20.0, -$0a                                                  ; $2c9e : $03, $20, $f6

	nop                                                  ; $2ca1 : $00
	setc                                                  ; $2ca2 : $80
	and A, [$01]+Y                                                  ; $2ca3 : $37, $01
	or A, !$f620                                                  ; $2ca5 : $05, $20, $f6
	tcall 0                                                  ; $2ca8 : $01
	adc A, !$01f6                                                  ; $2ca9 : $85, $f6, $01
	dec $f6                                                  ; $2cac : $8b, $f6
	tcall 0                                                  ; $2cae : $01
	tcall 9                                                  ; $2caf : $91
	mov A, !$9801+Y                                                  ; $2cb0 : $f6, $01, $98
	mov A, !$a001+Y                                                  ; $2cb3 : $f6, $01, $a0
	and A, [$04]+Y                                                  ; $2cb6 : $37, $04
	bbs $10.0, -$0a                                                  ; $2cb8 : $03, $10, $f6

	nop                                                  ; $2cbb : $00
	setc                                                  ; $2cbc : $80
	and A, [$01]+Y                                                  ; $2cbd : $37, $01
	or A, !$f610                                                  ; $2cbf : $05, $10, $f6
	tcall 0                                                  ; $2cc2 : $01
	adc A, !$01f6                                                  ; $2cc3 : $85, $f6, $01
	dec $f6                                                  ; $2cc6 : $8b, $f6
	tcall 0                                                  ; $2cc8 : $01
	tcall 9                                                  ; $2cc9 : $91
	mov A, !$9801+Y                                                  ; $2cca : $f6, $01, $98
	mov A, !$a001+Y                                                  ; $2ccd : $f6, $01, $a0
	and A, [$04]+Y                                                  ; $2cd0 : $37, $04
	bbs $08.0, -$0a                                                  ; $2cd2 : $03, $08, $f6

	nop                                                  ; $2cd5 : $00
	setc                                                  ; $2cd6 : $80
	and A, [$01]+Y                                                  ; $2cd7 : $37, $01
	or A, !$f601                                                  ; $2cd9 : $05, $01, $f6
	tcall 0                                                  ; $2cdc : $01
	adc A, !$01f6                                                  ; $2cdd : $85, $f6, $01
	dec $f6                                                  ; $2ce0 : $8b, $f6
	tcall 0                                                  ; $2ce2 : $01
	tcall 9                                                  ; $2ce3 : $91
	mov A, !$9801+Y                                                  ; $2ce4 : $f6, $01, $98
	mov A, !$a001+Y                                                  ; $2ce7 : $f6, $01, $a0
	dbnz Y, $10                                                  ; $2cea : $fe, $10

	pcall $03                                                  ; $2cec : $4f, $03
	set1 $02.0                                                  ; $2cee : $02, $02
	or A, (X)                                                  ; $2cf0 : $06
	or A, [$07+X]                                                  ; $2cf1 : $07, $07
	nop                                                  ; $2cf3 : $00
	rol $00                                                  ; $2cf4 : $2b, $00
	clr1 $00.7                                                  ; $2cf6 : $f2, $00
	setp                                                  ; $2cf8 : $40
	tcall 15                                                  ; $2cf9 : $f1
	nop                                                  ; $2cfa : $00
	bmi -$01                                                  ; $2cfb : $30, $ff

	tcall 1                                                  ; $2cfd : $11
	nop                                                  ; $2cfe : $00
	mov A, [$00]+Y                                                  ; $2cff : $f7, $00
	brk                                                  ; $2d01 : $0f


	stop                                                  ; $2d02 : $ff
	bpl br_00_2d1c                                                  ; $2d03 : $10, $17

	cmp X, $03                                                  ; $2d05 : $3e, $03
	or A, $40                                                  ; $2d07 : $04, $40
	cmp X, $03                                                  ; $2d09 : $3e, $03
	or A, $30                                                  ; $2d0b : $04, $30

br_00_2d0d:
	cmp X, $03                                                  ; $2d0d : $3e, $03
	or A, $18                                                  ; $2d0f : $04, $18
	cmp X, $03                                                  ; $2d11 : $3e, $03
	or A, $10                                                  ; $2d13 : $04, $10
	cmp X, $03                                                  ; $2d15 : $3e, $03
	set1 $08.0                                                  ; $2d17 : $02, $08
	dbnz Y, br_00_2d0d                                                  ; $2d19 : $fe, $f2

	nop                                                  ; $2d1b : $00

br_00_2d1c:
	setp                                                  ; $2d1c : $40
	tcall 15                                                  ; $2d1d : $f1
	nop                                                  ; $2d1e : $00
	bmi -$09                                                  ; $2d1f : $30, $f7

	nop                                                  ; $2d21 : $00
	jmp [!$00f6+X]                                                  ; $2d22 : $1f, $f6, $00


	setc                                                  ; $2d25 : $80
	and A, [$05]+Y                                                  ; $2d26 : $37, $05
	push PSW                                                  ; $2d28 : $0d
	dbnz $f6, br_00_2d2e                                                  ; $2d29 : $6e, $f6, $02

	adc A, $f6                                                  ; $2d2c : $84, $f6

br_00_2d2e:
	tcall 0                                                  ; $2d2e : $01
	adc A, !$01f6                                                  ; $2d2f : $85, $f6, $01
	adc A, #$f6                                                  ; $2d32 : $88, $f6
	tcall 0                                                  ; $2d34 : $01
	dec $f6                                                  ; $2d35 : $8b, $f6
	tcall 0                                                  ; $2d37 : $01
	pop PSW                                                  ; $2d38 : $8e
	mov A, !$9601+Y                                                  ; $2d39 : $f6, $01, $96
	mov A, !$9e01+Y                                                  ; $2d3c : $f6, $01, $9e
	mov A, !$ad01+Y                                                  ; $2d3f : $f6, $01, $ad
	dbnz Y, -$75                                                  ; $2d42 : $fe, $8b

	mov A, !$9101+Y                                                  ; $2d44 : $f6, $01, $91
	tcall 0                                                  ; $2d47 : $01
	or A, (X)                                                  ; $2d48 : $06

br_00_2d49:
	or A, $00                                                  ; $2d49 : $04, $00
	clr1 $00.7                                                  ; $2d4b : $f2, $00
	setp                                                  ; $2d4d : $40
	tcall 15                                                  ; $2d4e : $f1
	nop                                                  ; $2d4f : $00
	bmi br_00_2d49                                                  ; $2d50 : $30, $f7

	nop                                                  ; $2d52 : $00
	asl A                                                  ; $2d53 : $1c
	and A, (X)                                                  ; $2d54 : $26
	set1 $05.0                                                  ; $2d55 : $02, $05
	cmp $a9, #$a7                                                  ; $2d57 : $78, $a7, $a9
	and A, !$0502                                                  ; $2d5a : $25, $02, $05
	clrc                                                  ; $2d5d : $60
	bbs $02.1, br_00_2d66                                                  ; $2d5e : $23, $02, $05

	bvc br_00_2d84                                                  ; $2d61 : $50, $21

	set1 $05.0                                                  ; $2d63 : $02, $05
	setp                                                  ; $2d65 : $40

br_00_2d66:
	jmp [!$0502+X]                                                  ; $2d66 : $1f, $02, $05


	bmi $1d                                                  ; $2d69 : $30, $1d

	set1 $05.0                                                  ; $2d6b : $02, $05
	or $02, #$1c                                                  ; $2d6d : $18, $1c, $02
	or A, !$1b0c                                                  ; $2d70 : $05, $0c, $1b
	set1 $01.0                                                  ; $2d73 : $02, $01
	or A, #$fe                                                  ; $2d75 : $08, $fe
	stop                                                  ; $2d77 : $ff
	stop                                                  ; $2d78 : $ff
	stop                                                  ; $2d79 : $ff
	stop                                                  ; $2d7a : $ff
	tcall 0                                                  ; $2d7b : $01
	or A, (X)                                                  ; $2d7c : $06
	or A, $00                                                  ; $2d7d : $04, $00

br_00_2d7f:
	clr1 $00.7                                                  ; $2d7f : $f2, $00
	setp                                                  ; $2d81 : $40
	tcall 15                                                  ; $2d82 : $f1
	nop                                                  ; $2d83 : $00

br_00_2d84:
	ror $f7+X                                                  ; $2d84 : $7b, $f7
	nop                                                  ; $2d86 : $00
	set1 $24.0                                                  ; $2d87 : $02, $24

br_00_2d89:
	or A, (X)                                                  ; $2d89 : $06
	or A, !$f77b                                                  ; $2d8a : $05, $7b, $f7
	nop                                                  ; $2d8d : $00
	tcall 0                                                  ; $2d8e : $01

br_00_2d8f:
	sbc A, $fe                                                  ; $2d8f : $a4, $fe
	nop                                                  ; $2d91 : $00
	nop                                                  ; $2d92 : $00
	nop                                                  ; $2d93 : $00
	nop                                                  ; $2d94 : $00
	tcall 0                                                  ; $2d95 : $01
	or A, (X)                                                  ; $2d96 : $06
	or A, $00                                                  ; $2d97 : $04, $00
	stop                                                  ; $2d99 : $ff
	bbs $00.0, br_00_2d8f                                                  ; $2d9a : $03, $00, $f2

	nop                                                  ; $2d9d : $00
	setp                                                  ; $2d9e : $40
	tcall 15                                                  ; $2d9f : $f1
	nop                                                  ; $2da0 : $00
	clrc                                                  ; $2da1 : $60
	mov A, [$00]+Y                                                  ; $2da2 : $f7, $00
	bbc $3c.0, $04                                                  ; $2da4 : $13, $3c, $04

	bbs $40.0, -$40                                                  ; $2da7 : $03, $40, $c0

	bbs $c8.6, $3c                                                  ; $2daa : $c3, $c8, $3c

	or A, $03                                                  ; $2dad : $04, $03
	bmi -$40                                                  ; $2daf : $30, $c0

	bbs $c8.6, br_00_2df0                                                  ; $2db1 : $c3, $c8, $3c

	or A, $03                                                  ; $2db4 : $04, $03
	or $c3, #$c0                                                  ; $2db6 : $18, $c0, $c3
	cmp X, #$3c                                                  ; $2db9 : $c8, $3c
	or A, $03                                                  ; $2dbb : $04, $03
	bpl br_00_2d7f                                                  ; $2dbd : $10, $c0

	bbs $c8.6, -$02                                                  ; $2dbf : $c3, $c8, $fe

	stop                                                  ; $2dc2 : $ff
	stop                                                  ; $2dc3 : $ff
	stop                                                  ; $2dc4 : $ff
	stop                                                  ; $2dc5 : $ff
	tcall 0                                                  ; $2dc6 : $01
	or A, (X)                                                  ; $2dc7 : $06
	or A, $00                                                  ; $2dc8 : $04, $00
	stop                                                  ; $2dca : $ff
	bbs $00.0, -$0e                                                  ; $2dcb : $03, $00, $f2

	nop                                                  ; $2dce : $00
	setp                                                  ; $2dcf : $40
	mov A, [$00]+Y                                                  ; $2dd0 : $f7, $00
	or A, $f1+X                                                  ; $2dd2 : $14, $f1
	nop                                                  ; $2dd4 : $00
	bvc br_00_2e1f                                                  ; $2dd5 : $50, $48

	or A, $02                                                  ; $2dd7 : $04, $02
	bvc -$38                                                  ; $2dd9 : $50, $c8

	cmp X, #$48                                                  ; $2ddb : $c8, $48
	and A, $22                                                  ; $2ddd : $24, $22

br_00_2ddf:
	bvc br_00_2ddf                                                  ; $2ddf : $50, $fe

	nop                                                  ; $2de1 : $00

br_00_2de2:
	bvc br_00_2de4                                                  ; $2de2 : $50, $00

br_00_2de4:
	stop                                                  ; $2de4 : $ff
	set1 $04.0                                                  ; $2de5 : $02, $04
	or A, !$0007                                                  ; $2de7 : $05, $07, $00
	addw YA, $00                                                  ; $2dea : $7a, $00
	stop                                                  ; $2dec : $ff
	bbs $00.0, br_00_2de2                                                  ; $2ded : $03, $00, $f2

br_00_2df0:
	nop                                                  ; $2df0 : $00
	setp                                                  ; $2df1 : $40
	tcall 15                                                  ; $2df2 : $f1
	nop                                                  ; $2df3 : $00
	setp                                                  ; $2df4 : $40
	mov A, [$00]+Y                                                  ; $2df5 : $f7, $00
	asl A                                                  ; $2df7 : $1c
	asl $04                                                  ; $2df8 : $0b, $04
	bbs $40.0, br_00_2d89                                                  ; $2dfa : $03, $40, $8c

	mov Y, #$8e                                                  ; $2dfd : $8d, $8e
	mov Y, #$8e                                                  ; $2dff : $8d, $8e
	brk                                                  ; $2e01 : $0f


	bbs $02.0, br_00_2e45                                                  ; $2e02 : $03, $02, $40

	bpl $04                                                  ; $2e05 : $10, $04

	bbs $40.0, $0f                                                  ; $2e07 : $03, $40, $0f

	bbs $02.0, $40                                                  ; $2e0a : $03, $02, $40

	bpl $04                                                  ; $2e0d : $10, $04

	bbs $40.0, $11                                                  ; $2e0f : $03, $40, $11

	bbs $02.0, br_00_2e55                                                  ; $2e12 : $03, $02, $40

	clr1 $04.0                                                  ; $2e15 : $12, $04
	bbs $40.0, $11                                                  ; $2e17 : $03, $40, $11

	bbs $02.0, br_00_2e5d                                                  ; $2e1a : $03, $02, $40

	clr1 $13.4                                                  ; $2e1d : $92, $13

br_00_2e1f:
	or A, $03                                                  ; $2e1f : $04, $03
	setp                                                  ; $2e21 : $40
	or A, $03+X                                                  ; $2e22 : $14, $03
	set1 $40.0                                                  ; $2e24 : $02, $40
	bbc $94.4, -$6b                                                  ; $2e26 : $93, $94, $95

	adc A, !$0215+Y                                                  ; $2e29 : $96, $15, $02
	tcall 0                                                  ; $2e2c : $01
	setp                                                  ; $2e2d : $40
	or A, !$0203+Y                                                  ; $2e2e : $16, $03, $02
	setp                                                  ; $2e31 : $40
	adc A, [$98]+Y                                                  ; $2e32 : $97, $98
	or A, [$02]+Y                                                  ; $2e34 : $17, $02
	tcall 0                                                  ; $2e36 : $01
	setp                                                  ; $2e37 : $40
	or $02, #$03                                                  ; $2e38 : $18, $03, $02
	setp                                                  ; $2e3b : $40
	or (X), (Y)                                                  ; $2e3c : $19
	set1 $01.0                                                  ; $2e3d : $02, $01
	setp                                                  ; $2e3f : $40
	decw $03                                                  ; $2e40 : $1a, $03
	set1 $40.0                                                  ; $2e42 : $02, $40
	or (X), (Y)                                                  ; $2e44 : $19

br_00_2e45:
	set1 $01.0                                                  ; $2e45 : $02, $01
	setp                                                  ; $2e47 : $40
	subw YA, $9b                                                  ; $2e48 : $9a, $9b
	asl A                                                  ; $2e4a : $1c
	bbs $02.0, br_00_2e8e                                                  ; $2e4b : $03, $02, $40

	mov Y, $1b+X                                                  ; $2e4e : $fb, $1b
	set1 $01.0                                                  ; $2e50 : $02, $01
	setp                                                  ; $2e52 : $40
	dec A                                                  ; $2e53 : $9c
	mov X, SP                                                  ; $2e54 : $9d

br_00_2e55:
	div YA, X                                                  ; $2e55 : $9e
	inc Y                                                  ; $2e56 : $fc
	nop                                                  ; $2e57 : $00
	dbnz Y, -$01                                                  ; $2e58 : $fe, $ff

	bbs $00.0, -$0e                                                  ; $2e5a : $03, $00, $f2

br_00_2e5d:
	nop                                                  ; $2e5d : $00
	setp                                                  ; $2e5e : $40
	tcall 15                                                  ; $2e5f : $f1
	nop                                                  ; $2e60 : $00
	bmi -$01                                                  ; $2e61 : $30, $ff

	tcall 1                                                  ; $2e63 : $11
	nop                                                  ; $2e64 : $00
	mov A, [$00]+Y                                                  ; $2e65 : $f7, $00
	brk                                                  ; $2e67 : $0f


	stop                                                  ; $2e68 : $ff
	bpl $1b                                                  ; $2e69 : $10, $1b

	rol A                                                  ; $2e6b : $3c
	bpl br_00_2e77                                                  ; $2e6c : $10, $09

	or $0f, #$3c                                                  ; $2e6e : $18, $3c, $0f
	or A, #$18                                                  ; $2e71 : $08, $18
	rol A                                                  ; $2e73 : $3c
	tset1 !$1807                                                  ; $2e74 : $0e, $07, $18

br_00_2e77:
	rol A                                                  ; $2e77 : $3c
	push PSW                                                  ; $2e78 : $0d
	or A, (X)                                                  ; $2e79 : $06
	or $0c, #$3c                                                  ; $2e7a : $18, $3c, $0c
	or A, !$3c18                                                  ; $2e7d : $05, $18, $3c
	asl $04                                                  ; $2e80 : $0b, $04
	or $0a, #$3c                                                  ; $2e82 : $18, $3c, $0a
	bbs $18.0, br_00_2ec4                                                  ; $2e85 : $03, $18, $3c

	or $18, $02                                                  ; $2e88 : $09, $02, $18
	rol A                                                  ; $2e8b : $3c
	or A, #$02                                                  ; $2e8c : $08, $02

br_00_2e8e:
	or $3c, #$fb                                                  ; $2e8e : $18, $fb, $3c
	or A, [$02+X]                                                  ; $2e91 : $07, $02
	or $00, #$fc                                                  ; $2e93 : $18, $fc, $00
	dbnz Y, $01                                                  ; $2e96 : $fe, $01

br_00_2e98:
	and A, #$2b                                                  ; $2e98 : $28, $2b
	tcall 0                                                  ; $2e9a : $01
	set1 $04.0                                                  ; $2e9b : $02, $04
	or A, !$0007                                                  ; $2e9d : $05, $07, $00
	bbs $00.1, -$01                                                  ; $2ea0 : $23, $00, $ff

	bbs $00.0, br_00_2e98                                                  ; $2ea3 : $03, $00, $f2

	nop                                                  ; $2ea6 : $00
	setp                                                  ; $2ea7 : $40
	tcall 15                                                  ; $2ea8 : $f1
	nop                                                  ; $2ea9 : $00
	setp                                                  ; $2eaa : $40
	mov A, [$00]+Y                                                  ; $2eab : $f7, $00
	asl A                                                  ; $2ead : $1c
	asl $02+X                                                  ; $2eae : $1b, $02
	tcall 0                                                  ; $2eb0 : $01
	setp                                                  ; $2eb1 : $40
	dec A                                                  ; $2eb2 : $9c
	mov X, SP                                                  ; $2eb3 : $9d

br_00_2eb4:
	div YA, X                                                  ; $2eb4 : $9e
	xcn A                                                  ; $2eb5 : $9f
	ei                                                  ; $2eb6 : $a0
	mov Y, $a0+X                                                  ; $2eb7 : $fb, $a0
	tcall 10                                                  ; $2eb9 : $a1
	set1 $fc.5                                                  ; $2eba : $a2, $fc
	nop                                                  ; $2ebc : $00
	dbnz Y, -$01                                                  ; $2ebd : $fe, $ff

	bbs $00.0, br_00_2eb4                                                  ; $2ebf : $03, $00, $f2

	nop                                                  ; $2ec2 : $00
	setp                                                  ; $2ec3 : $40

br_00_2ec4:
	tcall 15                                                  ; $2ec4 : $f1
	nop                                                  ; $2ec5 : $00
	bmi -$01                                                  ; $2ec6 : $30, $ff

	tcall 1                                                  ; $2ec8 : $11
	nop                                                  ; $2ec9 : $00
	mov A, [$00]+Y                                                  ; $2eca : $f7, $00
	brk                                                  ; $2ecc : $0f


	stop                                                  ; $2ecd : $ff
	bpl br_00_2eeb                                                  ; $2ece : $10, $1b

	mov Y, $3c+X                                                  ; $2ed0 : $fb, $3c
	or A, !$1802                                                  ; $2ed2 : $05, $02, $18
	inc Y                                                  ; $2ed5 : $fc
	nop                                                  ; $2ed6 : $00
	dbnz Y, -$01                                                  ; $2ed7 : $fe, $ff

	stop                                                  ; $2ed9 : $ff
	stop                                                  ; $2eda : $ff
	stop                                                  ; $2edb : $ff

br_00_2edc:
	set1 $04.0                                                  ; $2edc : $02, $04
	or A, !$0007                                                  ; $2ede : $05, $07, $00
	bbs $00.2, -$01                                                  ; $2ee1 : $43, $00, $ff

	tcall 1                                                  ; $2ee4 : $11
	nop                                                  ; $2ee5 : $00
	tcall 15                                                  ; $2ee6 : $f1
	nop                                                  ; $2ee7 : $00
	bmi br_00_2edc                                                  ; $2ee8 : $30, $f2

	nop                                                  ; $2eea : $00

br_00_2eeb:
	setp                                                  ; $2eeb : $40
	mov A, [$00]+Y                                                  ; $2eec : $f7, $00
	tcall 1                                                  ; $2eee : $11
	stop                                                  ; $2eef : $ff
	bpl $13                                                  ; $2ef0 : $10, $13

	rol A                                                  ; $2ef2 : $3c
	or A, !$7805                                                  ; $2ef3 : $05, $05, $78
	rol A                                                  ; $2ef6 : $3c

br_00_2ef7:
	bbs $03.0, $58                                                  ; $2ef7 : $03, $03, $58

	rol A                                                  ; $2efa : $3c
	bbs $03.0, $50                                                  ; $2efb : $03, $03, $50

	rol A                                                  ; $2efe : $3c
	bbs $03.0, br_00_2f4a                                                  ; $2eff : $03, $03, $48

	rol A                                                  ; $2f02 : $3c
	bbs $03.0, br_00_2f46                                                  ; $2f03 : $03, $03, $40

	rol A                                                  ; $2f06 : $3c

br_00_2f07:
	bbs $03.0, br_00_2f3e                                                  ; $2f07 : $03, $03, $34

	rol A                                                  ; $2f0a : $3c

br_00_2f0b:
	bbs $03.0, br_00_2f3e                                                  ; $2f0b : $03, $03, $30

	rol A                                                  ; $2f0e : $3c
	bbs $03.0, $20                                                  ; $2f0f : $03, $03, $20

	rol A                                                  ; $2f12 : $3c
	bbs $03.0, br_00_2f2e                                                  ; $2f13 : $03, $03, $18

	rol A                                                  ; $2f16 : $3c
	bbs $03.0, br_00_2f2a                                                  ; $2f17 : $03, $03, $10

	rol A                                                  ; $2f1a : $3c
	bbs $02.0, br_00_2f26                                                  ; $2f1b : $03, $02, $08

	dbnz Y, -$01                                                  ; $2f1e : $fe, $ff

	bbs $00.0, -$0e                                                  ; $2f20 : $03, $00, $f2

	nop                                                  ; $2f23 : $00
	setp                                                  ; $2f24 : $40
	tcall 15                                                  ; $2f25 : $f1

br_00_2f26:
	nop                                                  ; $2f26 : $00
	setp                                                  ; $2f27 : $40
	stop                                                  ; $2f28 : $ff
	tcall 1                                                  ; $2f29 : $11

br_00_2f2a:
	nop                                                  ; $2f2a : $00
	mov A, [$00]+Y                                                  ; $2f2b : $f7, $00
	brk                                                  ; $2f2d : $0f


br_00_2f2e:
	stop                                                  ; $2f2e : $ff
	bpl br_00_2f40                                                  ; $2f2f : $10, $0f

	bbc $18.7, -$02                                                  ; $2f31 : $f3, $18, $fe

	set1 $01.0                                                  ; $2f34 : $02, $01
	setp                                                  ; $2f36 : $40
	decw $01                                                  ; $2f37 : $1a, $01
	or A, (X)                                                  ; $2f39 : $06

br_00_2f3a:
	or A, $00                                                  ; $2f3a : $04, $00
	clr1 $00.7                                                  ; $2f3c : $f2, $00

br_00_2f3e:
	setp                                                  ; $2f3e : $40
	stop                                                  ; $2f3f : $ff

br_00_2f40:
	bbs $00.0, br_00_2f3a                                                  ; $2f40 : $03, $00, $f7

	nop                                                  ; $2f43 : $00
	dec X                                                  ; $2f44 : $1d
	tcall 15                                                  ; $2f45 : $f1

br_00_2f46:
	nop                                                  ; $2f46 : $00
	cmp $03, #$29                                                  ; $2f47 : $78, $29, $03

br_00_2f4a:
	bbs $40.0, br_00_2ef7                                                  ; $2f4a : $03, $40, $aa

	inc $ac                                                  ; $2f4d : $ab, $ac
	inc $ac                                                  ; $2f4f : $ab, $ac
	cmp Y, #$ae                                                  ; $2f51 : $ad, $ae

br_00_2f53:
	cmp Y, #$ae                                                  ; $2f53 : $ad, $ae
	mov (X)+, A                                                  ; $2f55 : $af
	bcs br_00_2f07                                                  ; $2f56 : $b0, $af

	bcs br_00_2f0b                                                  ; $2f58 : $b0, $b1

	tcall 3                                                  ; $2f5a : $31
	bbs $03.0, br_00_2f96                                                  ; $2f5b : $03, $03, $38

	tcall 3                                                  ; $2f5e : $31
	bbs $03.0, br_00_2f92                                                  ; $2f5f : $03, $03, $30

	tcall 3                                                  ; $2f62 : $31
	bbs $03.0, br_00_2f86                                                  ; $2f63 : $03, $03, $20

	tcall 3                                                  ; $2f66 : $31
	bbs $03.0, br_00_2f82                                                  ; $2f67 : $03, $03, $18

	tcall 3                                                  ; $2f6a : $31

br_00_2f6b:
	bbs $03.0, $10                                                  ; $2f6b : $03, $03, $10

br_00_2f6e:
	tcall 3                                                  ; $2f6e : $31
	bbs $02.0, $08                                                  ; $2f6f : $03, $02, $08

	dbnz Y, -$01                                                  ; $2f72 : $fe, $ff

	stop                                                  ; $2f74 : $ff
	stop                                                  ; $2f75 : $ff
	stop                                                  ; $2f76 : $ff
	tcall 0                                                  ; $2f77 : $01

br_00_2f78:
	or A, (X)                                                  ; $2f78 : $06
	or A, $00                                                  ; $2f79 : $04, $00
	stop                                                  ; $2f7b : $ff
	bbs $00.0, -$0e                                                  ; $2f7c : $03, $00, $f2

	nop                                                  ; $2f7f : $00
	setp                                                  ; $2f80 : $40
	tcall 15                                                  ; $2f81 : $f1

br_00_2f82:
	nop                                                  ; $2f82 : $00
	clrc                                                  ; $2f83 : $60
	mov A, [$00]+Y                                                  ; $2f84 : $f7, $00

br_00_2f86:
	bbc $30.0, br_00_2f8c                                                  ; $2f86 : $13, $30, $03

	bbs $40.0, br_00_2f40                                                  ; $2f89 : $03, $40, $b4

br_00_2f8c:
	sbc A, [$bc]+Y                                                  ; $2f8c : $b7, $bc
	tcall 11                                                  ; $2f8e : $b1
	sbc A, !$bdb8+X                                                  ; $2f8f : $b5, $b8, $bd

br_00_2f92:
	clr1 $b6.5                                                  ; $2f92 : $b2, $b6
	sbc (X), (Y)                                                  ; $2f94 : $b9
	das A                                                  ; $2f95 : $be

br_00_2f96:
	bbc $b7.5, br_00_2f53                                                  ; $2f96 : $b3, $b7, $ba

	mov A, (X)+                                                 ; $2f99 : $bf
	and A, $03+X                                                  ; $2f9a : $34, $03
	bbs $30.0, -$48                                                  ; $2f9c : $03, $30, $b8

	rol $03+X                                                  ; $2f9f : $3b, $03
	bbs $20.0, -$40                                                  ; $2fa1 : $03, $20, $c0

	and A, $03+X                                                  ; $2fa4 : $34, $03
	bbs $18.0, -$48                                                  ; $2fa6 : $03, $18, $b8

	rol $03+X                                                  ; $2fa9 : $3b, $03
	bbs $10.0, br_00_2f6e                                                  ; $2fab : $03, $10, $c0

	and A, $03+X                                                  ; $2fae : $34, $03
	bbs $08.0, br_00_2f6b                                                  ; $2fb0 : $03, $08, $b8

	rol $03+X                                                  ; $2fb3 : $3b, $03
	bbs $02.0, br_00_2f78                                                  ; $2fb5 : $03, $02, $c0

	dbnz Y, -$01                                                  ; $2fb8 : $fe, $ff

	stop                                                  ; $2fba : $ff
	stop                                                  ; $2fbb : $ff
	stop                                                  ; $2fbc : $ff
	bbs $05.0, br_00_2fc6                                                  ; $2fbd : $03, $05, $06

	or A, [$0a+X]                                                  ; $2fc0 : $07, $0a
	nop                                                  ; $2fc2 : $00
	clrc                                                  ; $2fc3 : $60
	nop                                                  ; $2fc4 : $00

br_00_2fc5:
	inc A                                                  ; $2fc5 : $bc

br_00_2fc6:
	nop                                                  ; $2fc6 : $00
	clr1 $00.7                                                  ; $2fc7 : $f2, $00
	setp                                                  ; $2fc9 : $40
	tcall 15                                                  ; $2fca : $f1
	nop                                                  ; $2fcb : $00
	bmi br_00_2fc5                                                  ; $2fcc : $30, $f7

	nop                                                  ; $2fce : $00
	cmp X, !$034e                                                  ; $2fcf : $1e, $4e, $03
	or A, $08                                                  ; $2fd2 : $04, $08
	tclr1 !$0403                                                  ; $2fd4 : $4e, $03, $04
	bpl $4e                                                  ; $2fd7 : $10, $4e

	bbs $04.0, br_00_2ff4                                                  ; $2fd9 : $03, $04, $18

	tclr1 !$0403                                                  ; $2fdc : $4e, $03, $04
	bmi $4e                                                  ; $2fdf : $30, $4e

	bbs $04.0, br_00_3024                                                  ; $2fe1 : $03, $04, $40

	tclr1 !$0403                                                  ; $2fe4 : $4e, $03, $04
	bvc $4e                                                  ; $2fe7 : $50, $4e

	bbs $04.0, br_00_304c                                                  ; $2fe9 : $03, $04, $60

	tclr1 !$4948                                                  ; $2fec : $4e, $48, $49
	dbnz $4e, $03                                                  ; $2fef : $6e, $4e, $03

	or A, $60                                                  ; $2ff2 : $04, $60

br_00_2ff4:
	tclr1 !$0403                                                  ; $2ff4 : $4e, $03, $04
	eor $03, #$4e                                                  ; $2ff7 : $58, $4e, $03
	or A, $50                                                  ; $2ffa : $04, $50
	tclr1 !$0403                                                  ; $2ffc : $4e, $03, $04
	eor A, #$4e                                                  ; $2fff : $48, $4e
	bbs $04.0, br_00_3044                                                  ; $3001 : $03, $04, $40

	tclr1 !$0403                                                  ; $3004 : $4e, $03, $04
	and $03, #$4e                                                  ; $3007 : $38, $4e, $03
	or A, $30                                                  ; $300a : $04, $30
	tclr1 !$0403                                                  ; $300c : $4e, $03, $04
	clrp                                                  ; $300f : $20
	tclr1 !$0403                                                  ; $3010 : $4e, $03, $04
	or $03, #$4e                                                  ; $3013 : $18, $4e, $03
	or A, $10                                                  ; $3016 : $04, $10
	tclr1 !$0203                                                  ; $3018 : $4e, $03, $02
	or A, #$fe                                                  ; $301b : $08, $fe
	stop                                                  ; $301d : $ff
	tcall 1                                                  ; $301e : $11
	nop                                                  ; $301f : $00
	clr1 $00.7                                                  ; $3020 : $f2, $00
	setp                                                  ; $3022 : $40
	tcall 15                                                  ; $3023 : $f1

br_00_3024:
	nop                                                  ; $3024 : $00
	push PSW                                                  ; $3025 : $0d
	mov A, [$00]+Y                                                  ; $3026 : $f7, $00
	brk                                                  ; $3028 : $0f


	stop                                                  ; $3029 : $ff
	bpl br_00_3049                                                  ; $302a : $10, $1d

	rol A                                                  ; $302c : $3c
	bbs $04.0, br_00_3038                                                  ; $302d : $03, $04, $08

	rol A                                                  ; $3030 : $3c
	bbs $04.0, br_00_3044                                                  ; $3031 : $03, $04, $10

	rol A                                                  ; $3034 : $3c
	bbs $04.0, br_00_3050                                                  ; $3035 : $03, $04, $18

br_00_3038:
	rol A                                                  ; $3038 : $3c
	bbs $04.0, br_00_305c                                                  ; $3039 : $03, $04, $20

	rol A                                                  ; $303c : $3c
	bbs $04.0, br_00_3068                                                  ; $303d : $03, $04, $28

	rol A                                                  ; $3040 : $3c
	bbs $04.0, br_00_3074                                                  ; $3041 : $03, $04, $30

br_00_3044:
	rol A                                                  ; $3044 : $3c
	bbs $04.0, br_00_3080                                                  ; $3045 : $03, $04, $38

	rol A                                                  ; $3048 : $3c

br_00_3049:
	eor A, #$49                                                  ; $3049 : $48, $49
	clrc                                                  ; $304b : $60

br_00_304c:
	rol A                                                  ; $304c : $3c
	bbs $04.0, $60                                                  ; $304d : $03, $04, $60

br_00_3050:
	rol A                                                  ; $3050 : $3c
	bbs $04.0, $58                                                  ; $3051 : $03, $04, $58

	rol A                                                  ; $3054 : $3c
	bbs $04.0, br_00_30a8                                                  ; $3055 : $03, $04, $50

	rol A                                                  ; $3058 : $3c
	bbs $04.0, $48                                                  ; $3059 : $03, $04, $48

br_00_305c:
	rol A                                                  ; $305c : $3c
	bbs $04.0, br_00_30a0                                                  ; $305d : $03, $04, $40

	rol A                                                  ; $3060 : $3c
	bbs $04.0, $38                                                  ; $3061 : $03, $04, $38

	rol A                                                  ; $3064 : $3c
	bbs $04.0, $30                                                  ; $3065 : $03, $04, $30

br_00_3068:
	rol A                                                  ; $3068 : $3c
	bbs $04.0, $20                                                  ; $3069 : $03, $04, $20

	rol A                                                  ; $306c : $3c
	bbs $04.0, $18                                                  ; $306d : $03, $04, $18

	rol A                                                  ; $3070 : $3c
	bbs $04.0, br_00_3084                                                  ; $3071 : $03, $04, $10

br_00_3074:
	rol A                                                  ; $3074 : $3c
	bbs $02.0, br_00_3080                                                  ; $3075 : $03, $02, $08

	dbnz Y, -$01                                                  ; $3078 : $fe, $ff

br_00_307a:
	bbs $00.0, -$0e                                                  ; $307a : $03, $00, $f2

	nop                                                  ; $307d : $00
	setp                                                  ; $307e : $40
	tcall 15                                                  ; $307f : $f1

br_00_3080:
	nop                                                  ; $3080 : $00
	bmi br_00_307a                                                  ; $3081 : $30, $f7

	nop                                                  ; $3083 : $00

br_00_3084:
	asl A                                                  ; $3084 : $1c
	and A, $03                                                  ; $3085 : $24, $03
	bbs $60.0, -$5b                                                  ; $3087 : $03, $60, $a5

	sbc A, (X)                                                  ; $308a : $a6
	sbc A, [$a8+X]                                                  ; $308b : $a7, $a8
	sbc $ab, $aa                                                  ; $308d : $a9, $aa, $ab
	inc !$aead                                                  ; $3090 : $ac, $ad, $ae
	mov (X)+, A                                                  ; $3093 : $af
	bcs br_00_30c7                                                  ; $3094 : $b0, $31

	bbs $02.0, $58                                                  ; $3096 : $03, $02, $58

	clr1 $03.1                                                  ; $3099 : $32, $03
	set1 $50.0                                                  ; $309b : $02, $50
	bbc $03.1, br_00_30a2                                                  ; $309d : $33, $03, $02

br_00_30a0:
	eor A, #$34                                                  ; $30a0 : $48, $34

br_00_30a2:
	bbs $02.0, $40                                                  ; $30a2 : $03, $02, $40

	and A, !$0203+X                                                  ; $30a5 : $35, $03, $02

br_00_30a8:
	and $03, #$36                                                  ; $30a8 : $38, $36, $03
	set1 $30.0                                                  ; $30ab : $02, $30
	and A, [$03]+Y                                                  ; $30ad : $37, $03
	set1 $28.0                                                  ; $30af : $02, $28
	and $02, #$03                                                  ; $30b1 : $38, $03, $02
	clrp                                                  ; $30b4 : $20
	and (X), (Y)                                                  ; $30b5 : $39
	bbs $02.0, br_00_30d1                                                  ; $30b6 : $03, $02, $18

	incw $03                                                  ; $30b9 : $3a, $03
	set1 $10.0                                                  ; $30bb : $02, $10
	rol $03+X                                                  ; $30bd : $3b, $03
	set1 $08.0                                                  ; $30bf : $02, $08
	dbnz Y, br_00_30c3                                                  ; $30c1 : $fe, $00

br_00_30c3:
	bvc br_00_3111                                                  ; $30c3 : $50, $4c

	set1 $01.0                                                  ; $30c5 : $02, $01

br_00_30c7:
	or A, (X)                                                  ; $30c7 : $06

br_00_30c8:
	or A, $00                                                  ; $30c8 : $04, $00
	clr1 $00.7                                                  ; $30ca : $f2, $00
	setp                                                  ; $30cc : $40
	tcall 15                                                  ; $30cd : $f1
	nop                                                  ; $30ce : $00
	bvc br_00_30c8                                                  ; $30cf : $50, $f7

br_00_30d1:
	nop                                                  ; $30d1 : $00
	bbc $3c.0, br_00_30d9                                                  ; $30d2 : $13, $3c, $04

	bbs $40.0, -$43                                                  ; $30d5 : $03, $40, $bd

	das A                                                  ; $30d8 : $be

br_00_30d9:
	mov A, (X)+                                                 ; $30d9 : $bf
	rol A                                                  ; $30da : $3c
	or A, $03                                                  ; $30db : $04, $03
	bmi -$43                                                  ; $30dd : $30, $bd

	das A                                                  ; $30df : $be
	mov A, (X)+                                                 ; $30e0 : $bf
	rol A                                                  ; $30e1 : $3c
	or A, $03                                                  ; $30e2 : $04, $03
	or $be, #$bd                                                  ; $30e4 : $18, $bd, $be
	mov A, (X)+                                                 ; $30e7 : $bf
	rol A                                                  ; $30e8 : $3c
	or A, $03                                                  ; $30e9 : $04, $03
	bpl -$43                                                  ; $30eb : $10, $bd

	das A                                                  ; $30ed : $be
	mov A, (X)+                                                 ; $30ee : $bf
	rol A                                                  ; $30ef : $3c
	or A, $03                                                  ; $30f0 : $04, $03
	or A, #$bd                                                  ; $30f2 : $08, $bd
	das A                                                  ; $30f4 : $be

br_00_30f5:
	mov A, (X)+                                                 ; $30f5 : $bf
	dbnz Y, -$01                                                  ; $30f6 : $fe, $ff

	stop                                                  ; $30f8 : $ff
	stop                                                  ; $30f9 : $ff
	stop                                                  ; $30fa : $ff
	set1 $06.0                                                  ; $30fb : $02, $06
	or A, [$07+X]                                                  ; $30fd : $07, $07
	nop                                                  ; $30ff : $00
	bbc $00.1, br_00_30f5                                                  ; $3100 : $33, $00, $f2

	nop                                                  ; $3103 : $00
	setp                                                  ; $3104 : $40
	mov A, [$00]+Y                                                  ; $3105 : $f7, $00
	tset1 !$00f1                                                  ; $3107 : $0e, $f1, $00
	bvc -$01                                                  ; $310a : $50, $ff

	tcall 1                                                  ; $310c : $11
	nop                                                  ; $310d : $00
	stop                                                  ; $310e : $ff
	bpl br_00_312c                                                  ; $310f : $10, $1b

br_00_3111:
	rol A                                                  ; $3111 : $3c
	or A, #$07                                                  ; $3112 : $08, $07
	bmi -$01                                                  ; $3114 : $30, $ff

	bpl br_00_3136                                                  ; $3116 : $10, $1e

	rol A                                                  ; $3118 : $3c
	or A, (X)                                                  ; $3119 : $06
	or A, [$20+X]                                                  ; $311a : $07, $20
	rol A                                                  ; $311c : $3c
	or A, (X)                                                  ; $311d : $06
	or A, [$18+X]                                                  ; $311e : $07, $18
	rol A                                                  ; $3120 : $3c

br_00_3121:
	or A, (X)                                                  ; $3121 : $06
	or A, [$10+X]                                                  ; $3122 : $07, $10
	rol A                                                  ; $3124 : $3c
	or A, (X)                                                  ; $3125 : $06
	or A, [$08+X]                                                  ; $3126 : $07, $08
	inc A                                                  ; $3128 : $bc
	inc A                                                  ; $3129 : $bc
	inc A                                                  ; $312a : $bc
	inc A                                                  ; $312b : $bc

br_00_312c:
	inc A                                                  ; $312c : $bc
	dbnz Y, br_00_3121                                                  ; $312d : $fe, $f2

	nop                                                  ; $312f : $00
	setp                                                  ; $3130 : $40
	mov A, [$00]+Y                                                  ; $3131 : $f7, $00
	or A, $f1+X                                                  ; $3133 : $14, $f1
	nop                                                  ; $3135 : $00

br_00_3136:
	cmp $08, #$45                                                  ; $3136 : $78, $45, $08
	or A, !$5178                                                  ; $3139 : $05, $78, $51
	and A, $22                                                  ; $313c : $24, $22
	cmp $ff, #$fe                                                  ; $313e : $78, $fe, $ff

br_00_3141:
	stop                                                  ; $3141 : $ff
	stop                                                  ; $3142 : $ff
	stop                                                  ; $3143 : $ff
	set1 $06.0                                                  ; $3144 : $02, $06
	or A, [$07+X]                                                  ; $3146 : $07, $07
	nop                                                  ; $3148 : $00
	incw $00                                                  ; $3149 : $3a, $00
	stop                                                  ; $314b : $ff

br_00_314c:
	bbs $00.0, br_00_3141                                                  ; $314c : $03, $00, $f2

	nop                                                  ; $314f : $00
	setp                                                  ; $3150 : $40
	tcall 15                                                  ; $3151 : $f1
	nop                                                  ; $3152 : $00
	bmi br_00_314c                                                  ; $3153 : $30, $f7

br_00_3155:
	nop                                                  ; $3155 : $00
	push PSW                                                  ; $3156 : $0d
	mov Y, $2f+X                                                  ; $3157 : $fb, $2f
	or A, $03                                                  ; $3159 : $04, $03
	cmp $b1, #$ab                                                  ; $315b : $78, $ab, $b1
	sbc A, !$abb3+Y                                                  ; $315e : $b6, $b3, $ab

br_00_3161:
	mov (X)+, A                                                  ; $3161 : $af
	inc Y                                                  ; $3162 : $fc
	set1 $af.0                                                  ; $3163 : $02, $af
	rol $04                                                  ; $3165 : $2b, $04
	bbs $60.0, $31                                                  ; $3167 : $03, $60, $31

	or A, $03                                                  ; $316a : $04, $03
	bvc br_00_31a4                                                  ; $316c : $50, $36

	or A, $03                                                  ; $316e : $04, $03
	setp                                                  ; $3170 : $40
	bbc $04.1, $03                                                  ; $3171 : $33, $04, $03

br_00_3174:
	bmi $2b                                                  ; $3174 : $30, $2b

	or A, $03                                                  ; $3176 : $04, $03
	or $04, #$2f                                                  ; $3178 : $18, $2f, $04
	bbs $10.0, -$02                                                  ; $317b : $03, $10, $fe

	stop                                                  ; $317e : $ff

br_00_317f:
	bbs $00.0, br_00_3174                                                  ; $317f : $03, $00, $f2

	nop                                                  ; $3182 : $00
	setp                                                  ; $3183 : $40
	tcall 15                                                  ; $3184 : $f1
	nop                                                  ; $3185 : $00
	bvc br_00_317f                                                  ; $3186 : $50, $f7

	nop                                                  ; $3188 : $00
	jmp [!$2440+X]                                                  ; $3189 : $1f, $40, $24


	set1 $50.1                                                  ; $318c : $22, $50

br_00_318e:
	inc A                                                  ; $318e : $bc
	dbnz Y, $03                                                  ; $318f : $fe, $03

	or A, $30                                                  ; $3191 : $04, $30
	tclr1 !$0701                                                  ; $3193 : $4e, $01, $07
	or A, $00                                                  ; $3196 : $04, $00
	stop                                                  ; $3198 : $ff

br_00_3199:
	bbs $00.0, br_00_318e                                                  ; $3199 : $03, $00, $f2

	nop                                                  ; $319c : $00
	setp                                                  ; $319d : $40
	tcall 15                                                  ; $319e : $f1
	nop                                                  ; $319f : $00
	bvc br_00_3199                                                  ; $31a0 : $50, $f7

	nop                                                  ; $31a2 : $00
	asl A                                                  ; $31a3 : $1c

br_00_31a4:
	rol $03                                                  ; $31a4 : $2b, $03
	bbs $78.0, br_00_3155                                                  ; $31a6 : $03, $78, $ac

	cmp Y, #$ad                                                  ; $31a9 : $ad, $ad
	pop A                                                  ; $31ab : $ae
	mov (X)+, A                                                  ; $31ac : $af
	mov (X)+, A                                                  ; $31ad : $af
	bcs br_00_3161                                                  ; $31ae : $b0, $b1

	tcall 11                                                  ; $31b0 : $b1
	clr1 $b3.5                                                  ; $31b1 : $b2, $b3
	sbc A, $b5+X                                                  ; $31b3 : $b4, $b5
	and A, !$0303+Y                                                  ; $31b5 : $36, $03, $03
	dbnz $37, br_00_31be                                                  ; $31b8 : $6e, $37, $03

	bbs $60.0, $38                                                  ; $31bb : $03, $60, $38

br_00_31be:
	bbs $03.0, $50                                                  ; $31be : $03, $03, $50

	and (X), (Y)                                                  ; $31c1 : $39
	bbs $03.0, $48                                                  ; $31c2 : $03, $03, $48

	incw $03                                                  ; $31c5 : $3a, $03
	bbs $40.0, br_00_3205                                                  ; $31c7 : $03, $40, $3b

	bbs $03.0, br_00_3205                                                  ; $31ca : $03, $03, $38

	rol A                                                  ; $31cd : $3c
	bbs $03.0, $30                                                  ; $31ce : $03, $03, $30

	inc X                                                  ; $31d1 : $3d
	bbs $03.0, br_00_31f5                                                  ; $31d2 : $03, $03, $20

	cmp X, $03                                                  ; $31d5 : $3e, $03
	bbs $18.0, br_00_3219                                                  ; $31d7 : $03, $18, $3f

	bbs $03.0, br_00_31ed                                                  ; $31da : $03, $03, $10

	setp                                                  ; $31dd : $40
	bbs $03.0, $08                                                  ; $31de : $03, $03, $08

	dbnz Y, $30                                                  ; $31e1 : $fe, $30

br_00_31e3:
	tclr1 !$0403                                                  ; $31e3 : $4e, $03, $04
	set1 $06.0                                                  ; $31e6 : $02, $06
	or A, [$07+X]                                                  ; $31e8 : $07, $07
	nop                                                  ; $31ea : $00
	cmp Y, $00                                                  ; $31eb : $7e, $00

br_00_31ed:
	stop                                                  ; $31ed : $ff
	bbs $00.0, br_00_31e3                                                  ; $31ee : $03, $00, $f2

	nop                                                  ; $31f1 : $00
	setp                                                  ; $31f2 : $40
	tcall 15                                                  ; $31f3 : $f1
	nop                                                  ; $31f4 : $00

br_00_31f5:
	bvc -$0e                                                  ; $31f5 : $50, $f2

	nop                                                  ; $31f7 : $00

br_00_31f8:
	setp                                                  ; $31f8 : $40
	mov Y, $f7+X                                                  ; $31f9 : $fb, $f7
	nop                                                  ; $31fb : $00
	cmp X, !$0431                                                  ; $31fc : $1e, $31, $04
	bbs $78.0, br_00_31f8                                                  ; $31ff : $03, $78, $f6

	nop                                                  ; $3202 : $00
	set1 $32.4                                                  ; $3203 : $82, $32

br_00_3205:
	or A, $02                                                  ; $3205 : $04, $02
	cmp $00, #$f6                                                  ; $3207 : $78, $f6, $00
	adc A, $b2                                                  ; $320a : $84, $b2
	mov A, !$8500+Y                                                  ; $320c : $f6, $00, $85
	bbc $0c.1, $2d                                                  ; $320f : $33, $0c, $2d

	cmp $06, #$f6                                                  ; $3212 : $78, $f6, $06
	adc A, $f6                                                  ; $3215 : $84, $f6
	or A, $82                                                  ; $3217 : $04, $82

br_00_3219:
	mov A, !$8102+Y                                                  ; $3219 : $f6, $02, $81
	mov A, !$8001+Y                                                  ; $321c : $f6, $01, $80
	mov A, !$7e02+Y                                                  ; $321f : $f6, $02, $7e
	mov A, !$7d02+Y                                                  ; $3222 : $f6, $02, $7d
	mov A, !$7b01+Y                                                  ; $3225 : $f6, $01, $7b
	mov A, !$7901+Y                                                  ; $3228 : $f6, $01, $79
	mov A, !$7701+Y                                                  ; $322b : $f6, $01, $77
	mov A, !$7601+Y                                                  ; $322e : $f6, $01, $76
	mov A, !$7501+Y                                                  ; $3231 : $f6, $01, $75
	mov A, !$7201+Y                                                  ; $3234 : $f6, $01, $72
	mov A, !$7001+Y                                                  ; $3237 : $f6, $01, $70
	mov A, !$6d01+Y                                                  ; $323a : $f6, $01, $6d
	mov A, !$6b01+Y                                                  ; $323d : $f6, $01, $6b
	mov A, !$6901+Y                                                  ; $3240 : $f6, $01, $69
	mov A, !$6401+Y                                                  ; $3243 : $f6, $01, $64
	mov A, !$6201+Y                                                  ; $3246 : $f6, $01, $62
	mov A, !$5d01+Y                                                  ; $3249 : $f6, $01, $5d

br_00_324c:
	mov A, !$5a01+Y                                                  ; $324c : $f6, $01, $5a
	mov A, !$5501+Y                                                  ; $324f : $f6, $01, $55
	mov A, !$5001+Y                                                  ; $3252 : $f6, $01, $50
	mov A, !$4b01+Y                                                  ; $3255 : $f6, $01, $4b
	mov A, !$4601+Y                                                  ; $3258 : $f6, $01, $46
	mov A, !$3f01+Y                                                  ; $325b : $f6, $01, $3f
	mov A, !$8000+Y                                                  ; $325e : $f6, $00, $80
	inc Y                                                  ; $3261 : $fc
	bbs $fe.0, -$01                                                  ; $3262 : $03, $fe, $ff

br_00_3265:
	bbs $00.0, -$0e                                                  ; $3265 : $03, $00, $f2

	nop                                                  ; $3268 : $00
	setp                                                  ; $3269 : $40
	tcall 15                                                  ; $326a : $f1
	nop                                                  ; $326b : $00
	bvc br_00_3265                                                  ; $326c : $50, $f7

	nop                                                  ; $326e : $00
	bbc $fb.0, br_00_32b3                                                  ; $326f : $13, $fb, $41

	or A, (X)                                                  ; $3272 : $06
	or A, !$c250                                                  ; $3273 : $05, $50, $c2
	bbs $c4.6, -$04                                                  ; $3276 : $c3, $c4, $fc

br_00_3279:
	or A, (X)                                                  ; $3279 : $06
	dbnz Y, br_00_3280                                                  ; $327a : $fe, $04

	eor $03, #$3c                                                  ; $327c : $58, $3c, $03
	tcall 0                                                  ; $327f : $01

br_00_3280:
	or A, $04                                                  ; $3280 : $04, $04
	nop                                                  ; $3282 : $00
	stop                                                  ; $3283 : $ff

br_00_3284:
	bbs $00.0, br_00_3279                                                  ; $3284 : $03, $00, $f2

	nop                                                  ; $3287 : $00
	setp                                                  ; $3288 : $40
	tcall 15                                                  ; $3289 : $f1
	nop                                                  ; $328a : $00
	bvc br_00_3284                                                  ; $328b : $50, $f7

	nop                                                  ; $328d : $00
	asl A                                                  ; $328e : $1c
	mov Y, $36+X                                                  ; $328f : $fb, $36
	bbs $03.0, $50                                                  ; $3291 : $03, $03, $50

	sbc A, !$b3b4+X                                                  ; $3294 : $b5, $b4, $b3

br_00_3297:
	clr1 $b1.5                                                  ; $3297 : $b2, $b1
	bcs br_00_3297                                                  ; $3299 : $b0, $fc

	or A, (X)                                                  ; $329b : $06
	mov (X)+, A                                                  ; $329c : $af
	pop A                                                  ; $329d : $ae
	cmp Y, #$ac                                                  ; $329e : $ad, $ac
	inc $aa                                                  ; $32a0 : $ab, $aa
	sbc $a7, $a8                                                  ; $32a2 : $a9, $a8, $a7
	sbc A, (X)                                                  ; $32a5 : $a6
	sbc A, !$a3a4                                                  ; $32a6 : $a5, $a4, $a3
	set1 $a1.5                                                  ; $32a9 : $a2, $a1
	ei                                                  ; $32ab : $a0
	xcn A                                                  ; $32ac : $9f
	div YA, X                                                  ; $32ad : $9e
	mov X, SP                                                  ; $32ae : $9d
	dec A                                                  ; $32af : $9c
	dec $9a+X                                                  ; $32b0 : $9b, $9a
	adc (X), (Y)                                                  ; $32b2 : $99

br_00_32b3:
	adc $96, #$97                                                  ; $32b3 : $98, $97, $96
	adc A, !$9394+X                                                  ; $32b6 : $95, $94, $93
	clr1 $91.4                                                  ; $32b9 : $92, $91
	bcc br_00_324c                                                  ; $32bb : $90, $8f

	pop PSW                                                  ; $32bd : $8e
	mov Y, #$8c                                                  ; $32be : $8d, $8c
	dec $8a                                                  ; $32c0 : $8b, $8a
	adc $07, $88                                                  ; $32c2 : $89, $88, $07
	bbs $02.0, br_00_3318                                                  ; $32c5 : $03, $02, $50

	dbnz Y, -$01                                                  ; $32c8 : $fe, $ff

	stop                                                  ; $32ca : $ff
	tcall 0                                                  ; $32cb : $01
	cmp A, !$0701+X                                                  ; $32cc : $75, $01, $07
	or A, $00                                                  ; $32cf : $04, $00
	stop                                                  ; $32d1 : $ff

br_00_32d2:
	bbs $00.0, -$0e                                                  ; $32d2 : $03, $00, $f2

	nop                                                  ; $32d5 : $00
	setp                                                  ; $32d6 : $40
	tcall 15                                                  ; $32d7 : $f1
	nop                                                  ; $32d8 : $00
	bvc br_00_32d2                                                  ; $32d9 : $50, $f7

	nop                                                  ; $32db : $00
	bbc $fb.0, $3c                                                  ; $32dc : $13, $fb, $3c

	or A, (X)                                                  ; $32df : $06
	or A, !$c050                                                  ; $32e0 : $05, $50, $c0
	bbs $c7.6, -$42                                                  ; $32e3 : $c3, $c7, $be

	tcall 12                                                  ; $32e6 : $c1
	mov !$c0c8, A                                                  ; $32e7 : $c5, $c8, $c0
	bbs $c7.6, -$36                                                  ; $32ea : $c3, $c7, $ca

	das A                                                  ; $32ed : $be
	tcall 12                                                  ; $32ee : $c1
	mov !$fcc8, A                                                  ; $32ef : $c5, $c8, $fc
	set1 $b0.0                                                  ; $32f2 : $02, $b0
	sbc A, $b7+X                                                  ; $32f4 : $b4, $b7
	inc $be+X                                                  ; $32f6 : $bb, $be
	tcall 12                                                  ; $32f8 : $c1
	mov !$4cc8, A                                                  ; $32f9 : $c5, $c8, $4c
	asl !$500a                                                  ; $32fc : $0c, $0a, $50
	dbnz Y, -$01                                                  ; $32ff : $fe, $ff

br_00_3301:
	stop                                                  ; $3301 : $ff
	stop                                                  ; $3302 : $ff
	stop                                                  ; $3303 : $ff
	set1 $06.0                                                  ; $3304 : $02, $06
	or A, [$07+X]                                                  ; $3306 : $07, $07
	nop                                                  ; $3308 : $00
	tcall 4                                                  ; $3309 : $41
	nop                                                  ; $330a : $00
	stop                                                  ; $330b : $ff
	bbs $00.0, br_00_3301                                                  ; $330c : $03, $00, $f2

	nop                                                  ; $330f : $00
	setp                                                  ; $3310 : $40
	tcall 15                                                  ; $3311 : $f1
	nop                                                  ; $3312 : $00
	cmp $0b, #$ff                                                  ; $3313 : $78, $ff, $0b
	or A, #$f7                                                  ; $3316 : $08, $f7

br_00_3318:
	nop                                                  ; $3318 : $00
	dec X                                                  ; $3319 : $1d
	clr1 $0a.2                                                  ; $331a : $52, $0a
	or A, [$78+X]                                                  ; $331c : $07, $78
	tcall 15                                                  ; $331e : $f1
	nop                                                  ; $331f : $00
	eor A, $f7                                                  ; $3320 : $44, $f7
	nop                                                  ; $3322 : $00
	brk                                                  ; $3323 : $0f


	clr1 $06.2                                                  ; $3324 : $52, $06
	or A, [$40+X]                                                  ; $3326 : $07, $40
	clr1 $06.2                                                  ; $3328 : $52, $06
	or A, [$38+X]                                                  ; $332a : $07, $38
	clr1 $06.2                                                  ; $332c : $52, $06
	or A, [$30+X]                                                  ; $332e : $07, $30
	clr1 $06.2                                                  ; $3330 : $52, $06
	or A, [$28+X]                                                  ; $3332 : $07, $28
	clr1 $06.2                                                  ; $3334 : $52, $06
	or A, [$20+X]                                                  ; $3336 : $07, $20
	clr1 $06.2                                                  ; $3338 : $52, $06
	or A, [$18+X]                                                  ; $333a : $07, $18
	clr1 $06.2                                                  ; $333c : $52, $06
	or A, [$10+X]                                                  ; $333e : $07, $10
	clr1 $06.2                                                  ; $3340 : $52, $06
	or A, !$fe08                                                  ; $3342 : $05, $08, $fe
	stop                                                  ; $3345 : $ff
	bbs $00.0, -$0e                                                  ; $3346 : $03, $00, $f2

	nop                                                  ; $3349 : $00
	setp                                                  ; $334a : $40
	tcall 15                                                  ; $334b : $f1
	nop                                                  ; $334c : $00
	bpl -$01                                                  ; $334d : $10, $ff

	tcall 1                                                  ; $334f : $11
	nop                                                  ; $3350 : $00
	mov A, [$00]+Y                                                  ; $3351 : $f7, $00
	brk                                                  ; $3353 : $0f


	stop                                                  ; $3354 : $ff
	bpl br_00_3374                                                  ; $3355 : $10, $1d

	rol A                                                  ; $3357 : $3c
	bmi br_00_338b                                                  ; $3358 : $30, $31

	bmi br_00_3398                                                  ; $335a : $30, $3c

	or A, (X)                                                  ; $335c : $06
	or A, [$20+X]                                                  ; $335d : $07, $20
	rol A                                                  ; $335f : $3c
	or A, (X)                                                  ; $3360 : $06
	or A, [$18+X]                                                  ; $3361 : $07, $18
	rol A                                                  ; $3363 : $3c
	or A, (X)                                                  ; $3364 : $06
	or A, [$10+X]                                                  ; $3365 : $07, $10
	rol A                                                  ; $3367 : $3c
	or A, (X)                                                  ; $3368 : $06
	or A, !$fe08                                                  ; $3369 : $05, $08, $fe
	cmpw YA, $f6                                                  ; $336c : $5a, $f6
	tcall 0                                                  ; $336e : $01
	eor A, !$0602+X                                                  ; $336f : $55, $02, $06
	or A, [$07+X]                                                  ; $3372 : $07, $07

br_00_3374:
	nop                                                  ; $3374 : $00
	tcall 4                                                  ; $3375 : $41
	nop                                                  ; $3376 : $00
	stop                                                  ; $3377 : $ff
	bbs $00.0, -$0e                                                  ; $3378 : $03, $00, $f2

	nop                                                  ; $337b : $00
	setp                                                  ; $337c : $40
	tcall 15                                                  ; $337d : $f1
	nop                                                  ; $337e : $00
	cmp $0b, #$ff                                                  ; $337f : $78, $ff, $0b
	or A, #$f7                                                  ; $3382 : $08, $f7
	nop                                                  ; $3384 : $00
	dec X                                                  ; $3385 : $1d
	eor A, $0a+X                                                  ; $3386 : $54, $0a
	or A, [$78+X]                                                  ; $3388 : $07, $78
	tcall 15                                                  ; $338a : $f1

br_00_338b:
	nop                                                  ; $338b : $00
	eor A, $f7                                                  ; $338c : $44, $f7
	nop                                                  ; $338e : $00
	brk                                                  ; $338f : $0f


	eor A, $06+X                                                  ; $3390 : $54, $06
	or A, [$40+X]                                                  ; $3392 : $07, $40
	eor A, $06+X                                                  ; $3394 : $54, $06
	or A, [$38+X]                                                  ; $3396 : $07, $38

br_00_3398:
	eor A, $06+X                                                  ; $3398 : $54, $06
	or A, [$30+X]                                                  ; $339a : $07, $30
	eor A, $06+X                                                  ; $339c : $54, $06
	or A, [$28+X]                                                  ; $339e : $07, $28

br_00_33a0:
	eor A, $06+X                                                  ; $33a0 : $54, $06
	or A, [$20+X]                                                  ; $33a2 : $07, $20
	eor A, $06+X                                                  ; $33a4 : $54, $06

br_00_33a6:
	or A, [$18+X]                                                  ; $33a6 : $07, $18

br_00_33a8:
	eor A, $06+X                                                  ; $33a8 : $54, $06

br_00_33aa:
	or A, [$10+X]                                                  ; $33aa : $07, $10
	eor A, $06+X                                                  ; $33ac : $54, $06
	or A, !$fe08                                                  ; $33ae : $05, $08, $fe
	stop                                                  ; $33b1 : $ff
	bbs $00.0, br_00_33a6                                                  ; $33b2 : $03, $00, $f1

	nop                                                  ; $33b5 : $00
	bpl br_00_33aa                                                  ; $33b6 : $10, $f2

	nop                                                  ; $33b8 : $00
	setp                                                  ; $33b9 : $40
	stop                                                  ; $33ba : $ff
	tcall 1                                                  ; $33bb : $11
	nop                                                  ; $33bc : $00
	mov A, [$00]+Y                                                  ; $33bd : $f7, $00
	brk                                                  ; $33bf : $0f


	stop                                                  ; $33c0 : $ff
	bpl br_00_33e0                                                  ; $33c1 : $10, $1d

	rol A                                                  ; $33c3 : $3c
	bmi $31                                                  ; $33c4 : $30, $31

	bmi br_00_3404                                                  ; $33c6 : $30, $3c

	or A, (X)                                                  ; $33c8 : $06
	or A, [$20+X]                                                  ; $33c9 : $07, $20
	rol A                                                  ; $33cb : $3c
	or A, (X)                                                  ; $33cc : $06
	or A, [$18+X]                                                  ; $33cd : $07, $18
	rol A                                                  ; $33cf : $3c
	or A, (X)                                                  ; $33d0 : $06
	or A, [$10+X]                                                  ; $33d1 : $07, $10
	rol A                                                  ; $33d3 : $3c
	or A, (X)                                                  ; $33d4 : $06
	or A, !$fe08                                                  ; $33d5 : $05, $08, $fe
	cmpw YA, $f6                                                  ; $33d8 : $5a, $f6
	tcall 0                                                  ; $33da : $01
	eor A, !$0601+X                                                  ; $33db : $55, $01, $06
	or A, $00                                                  ; $33de : $04, $00

br_00_33e0:
	stop                                                  ; $33e0 : $ff

br_00_33e1:
	bbs $00.0, -$0e                                                  ; $33e1 : $03, $00, $f2

	nop                                                  ; $33e4 : $00
	setp                                                  ; $33e5 : $40
	tcall 15                                                  ; $33e6 : $f1
	nop                                                  ; $33e7 : $00
	bvc br_00_33e1                                                  ; $33e8 : $50, $f7

	nop                                                  ; $33ea : $00
	brk                                                  ; $33eb : $0f


	tcall 4                                                  ; $33ec : $41
	set1 $02.0                                                  ; $33ed : $02, $02
	setp                                                  ; $33ef : $40
	mov A, (X)+                                                 ; $33f0 : $bf
	mov SP, X                                                  ; $33f1 : $bd
	inc $b9+X                                                  ; $33f2 : $bb, $b9
	sbc A, [$b5]+Y                                                  ; $33f4 : $b7, $b5
	bbc $b1.5, br_00_33a8                                                  ; $33f6 : $b3, $b1, $af

	cmp Y, #$ab                                                  ; $33f9 : $ad, $ab
	sbc $a5, $a7                                                  ; $33fb : $a9, $a7, $a5
	bbs $a1.5, br_00_33a0                                                  ; $33fe : $a3, $a1, $9f

	mov X, SP                                                  ; $3401 : $9d
	asl $02+X                                                  ; $3402 : $1b, $02

br_00_3404:
	tcall 0                                                  ; $3404 : $01
	setp                                                  ; $3405 : $40
	dbnz Y, -$01                                                  ; $3406 : $fe, $ff

	stop                                                  ; $3408 : $ff
	stop                                                  ; $3409 : $ff
	stop                                                  ; $340a : $ff
	set1 $04.0                                                  ; $340b : $02, $04
	or A, !$0007                                                  ; $340d : $05, $07, $00
	tcall 1                                                  ; $3410 : $11
	nop                                                  ; $3411 : $00
	clr1 $00.7                                                  ; $3412 : $f2, $00
	setp                                                  ; $3414 : $40
	tcall 15                                                  ; $3415 : $f1
	nop                                                  ; $3416 : $00
	nop                                                  ; $3417 : $00
	mov A, [$01]+Y                                                  ; $3418 : $f7, $01
	cmp X, !$f2fe                                                  ; $341a : $1e, $fe, $f2
	nop                                                  ; $341d : $00
	setp                                                  ; $341e : $40
	tcall 15                                                  ; $341f : $f1
	nop                                                  ; $3420 : $00
	nop                                                  ; $3421 : $00
	mov A, [$01]+Y                                                  ; $3422 : $f7, $01
	cmp X, !$00fe                                                  ; $3424 : $1e, $fe, $00
	bvc br_00_3429                                                  ; $3427 : $50, $00

br_00_3429:
	stop                                                  ; $3429 : $ff

br_00_342a:
	bbs $05.0, $06                                                  ; $342a : $03, $05, $06

	or A, [$0a+X]                                                  ; $342d : $07, $0a
	nop                                                  ; $342f : $00
	tcall 6                                                  ; $3430 : $61
	nop                                                  ; $3431 : $00
	cmp $ff, #$00                                                  ; $3432 : $78, $00, $ff

br_00_3435:
	bbs $00.0, br_00_342a                                                  ; $3435 : $03, $00, $f2

	nop                                                  ; $3438 : $00
	setp                                                  ; $3439 : $40
	tcall 15                                                  ; $343a : $f1
	nop                                                  ; $343b : $00
	bvc br_00_3435                                                  ; $343c : $50, $f7

	nop                                                  ; $343e : $00
	cmp X, !$00f6                                                  ; $343f : $1e, $f6, $00
	setc                                                  ; $3442 : $80
	pcall $0c                                                  ; $3443 : $4f, $0c
	push PSW                                                  ; $3445 : $0d
	eor $00, #$f6                                                  ; $3446 : $58, $f6, $00
	setc                                                  ; $3449 : $80
	mul YA                                                  ; $344a : $cf
	mov A, !$8100+Y                                                  ; $344b : $f6, $00, $81
	mul YA                                                  ; $344e : $cf
	mov A, !$8200+Y                                                  ; $344f : $f6, $00, $82
	mul YA                                                  ; $3452 : $cf
	mov A, !$8200+Y                                                  ; $3453 : $f6, $00, $82
	mul YA                                                  ; $3456 : $cf
	mov A, !$8300+Y                                                  ; $3457 : $f6, $00, $83
	mul YA                                                  ; $345a : $cf
	mov A, !$8400+Y                                                  ; $345b : $f6, $00, $84
	mul YA                                                  ; $345e : $cf
	mov A, !$8500+Y                                                  ; $345f : $f6, $00, $85
	mul YA                                                  ; $3462 : $cf
	mov A, !$8600+Y                                                  ; $3463 : $f6, $00, $86
	mul YA                                                  ; $3466 : $cf
	mov A, !$8700+Y                                                  ; $3467 : $f6, $00, $87
	mul YA                                                  ; $346a : $cf
	mov A, !$8800+Y                                                  ; $346b : $f6, $00, $88
	mul YA                                                  ; $346e : $cf
	mov A, !$8b00+Y                                                  ; $346f : $f6, $00, $8b
	mul YA                                                  ; $3472 : $cf
	mov A, !$8c00+Y                                                  ; $3473 : $f6, $00, $8c
	mul YA                                                  ; $3476 : $cf
	mov A, !$8d00+Y                                                  ; $3477 : $f6, $00, $8d
	mul YA                                                  ; $347a : $cf
	mov A, !$8e00+Y                                                  ; $347b : $f6, $00, $8e
	mul YA                                                  ; $347e : $cf
	mov A, !$9000+Y                                                  ; $347f : $f6, $00, $90
	mul YA                                                  ; $3482 : $cf
	mov A, !$9300+Y                                                  ; $3483 : $f6, $00, $93
	pcall $0c                                                  ; $3486 : $4f, $0c
	or1 c, $1e58.7                                                  ; $3488 : $0a, $58, $fe
	stop                                                  ; $348b : $ff
	bbs $00.0, -$0e                                                  ; $348c : $03, $00, $f2

	nop                                                  ; $348f : $00
	setp                                                  ; $3490 : $40
	tcall 15                                                  ; $3491 : $f1
	nop                                                  ; $3492 : $00
	or $11, #$ff                                                  ; $3493 : $18, $ff, $11
	nop                                                  ; $3496 : $00
	mov A, [$00]+Y                                                  ; $3497 : $f7, $00
	brk                                                  ; $3499 : $0f


	stop                                                  ; $349a : $ff
	bpl br_00_34bb                                                  ; $349b : $10, $1e

	inc X                                                  ; $349d : $3d
	mov !$40cb, Y                                                  ; $349e : $cc, $cb, $40
	dbnz Y, -$0e                                                  ; $34a1 : $fe, $f2

	nop                                                  ; $34a3 : $00
	setp                                                  ; $34a4 : $40
	tcall 15                                                  ; $34a5 : $f1
	nop                                                  ; $34a6 : $00
	clrp                                                  ; $34a7 : $20
	mov A, [$00]+Y                                                  ; $34a8 : $f7, $00
	brk                                                  ; $34aa : $0f


	eor A, (X)                                                  ; $34ab : $46
	and A, $22                                                  ; $34ac : $24, $22
	setp                                                  ; $34ae : $40
	mov (X), A                                                  ; $34af : $c6
	eor A, (X)                                                  ; $34b0 : $46
	or $40, #$16                                                  ; $34b1 : $18, $16, $40
	mov (X), A                                                  ; $34b4 : $c6
	eor A, (X)                                                  ; $34b5 : $46
	clr1 $10.0                                                  ; $34b6 : $12, $10
	setp                                                  ; $34b8 : $40
	mov (X), A                                                  ; $34b9 : $c6
	eor A, (X)                                                  ; $34ba : $46

br_00_34bb:
	asl !$400a                                                  ; $34bb : $0c, $0a, $40
	mov (X), A                                                  ; $34be : $c6
	eor A, (X)                                                  ; $34bf : $46
	or A, (X)                                                  ; $34c0 : $06
	or A, !$c640                                                  ; $34c1 : $05, $40, $c6
	mov (X), A                                                  ; $34c4 : $c6
	mov (X), A                                                  ; $34c5 : $c6
	dbnz Y, $04                                                  ; $34c6 : $fe, $04

br_00_34c8:
	eor A, #$3c                                                  ; $34c8 : $48, $3c
	.db $03

SoundData8fh:
@sound_8fh:
	.db $02 ; num channels used
	.db $05 ; channel to use
	.db $06
	.dw @@chn5-SoundData8fh
	.dw @@chn6-SoundData8fh

@@chn5:
	.db $ff, $03, $00
	.db $f2, $00, $40
	.db $f1, $00, $50
	.db $f7, $00, $1e
	.db $31, $02, $05, $78
	.db $49, $03, $14, $58
	.db $f6, $03, $7e
	.db $f6, $03, $7d
	.db $f6, $03, $7b
	.db $f6, $03, $7a
	.db $f6, $03, $77
	.db $49, $03, $04, $58
	.db $49, $03, $04, $48
	.db $49, $03, $04, $40
	.db $49, $03, $04, $30
	.db $49, $03, $04, $18
	.db $49, $03, $04, $10
	.db $49, $03, $02, $08
	.db $fe

@@chn6:
	.db $ff, $03, $00
	.db $f2, $00, $40
	.db $f1, $00, $30
	.db $ff, $11, $00
	.db $f7, $00, $0f
	.db $ff, $10, $1e
	.db $3c, $03, $04, $40
	.db $ff, $10, $1c
	.db $bc
	.db $ff, $10, $1b
	.db $bc
	.db $ff, $10, $1a
	.db $bc
	.db $ff, $10, $18
	.db $bc
	.db $ff, $10, $16
	.db $bc
	.db $ff, $10, $14
	.db $3c, $02, $01, $40
	.db $3c, $02, $01, $38
	.db $3c, $02, $01, $30
	.db $3c, $02, $01, $20
	.db $3c, $02, $01, $18
	.db $3c, $02, $01, $10
	.db $3c, $02, $01, $08
	.db $fe

;
	asl !$400a                                                  ; $355c : $0c, $0a, $40
	mov (X), A                                                  ; $355f : $c6
