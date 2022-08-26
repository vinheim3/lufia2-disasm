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

.macro RET
    .db $aa
.endm