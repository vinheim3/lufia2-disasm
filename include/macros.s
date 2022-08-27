.macro HALT
    .db $00
.endm

.macro JUMP_IF_FLAG_SET
    .db $01, \1
.endm

.macro JUMP_IF_FLAG_CLEAR
    .db $0c, \1
.endm

.macro JUMP_IF_FACING_DIR
    .db $0d, \1
.endm

.macro MOV_VAR_OTHERS_VAR
    .db $2f, \1, \2
.endm

.macro INC_VAR
    .db $32, \1
.endm

.macro DEC_VAR
    .db $33, \1
.endm

.macro SET_VAR
    .db $34, \1, \2
.endm

.macro JUMP_IF_VAR_EQU
    .db $35, \1, \2
.endm

.macro JUMP_IF_VAR_NE
    .db $36, \1, \2
.endm

.macro ADD_GROUP0
    .db $42, \1, \2
.endm

.macro SUB_GROUP0
    .db $43, \1, \2
.endm

.macro DEC_GROUP0
    .db $45, \1
.endm

.macro ADD_GROUP1
    .db $47, \1, \2
.endm

.macro SUB_GROUP1
    .db $48, \1, \2
.endm

.macro INC_GROUP1
    .db $49, \1
.endm

.macro MOV_VAR_VAR
    .db $69, \1, \2
.endm

.macro CALL
    .db $a9
    .rept NARGS
    .db \1
    .shift
    .endr
.endm

.macro RET
    .db $aa
.endm