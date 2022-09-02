;       7     6     5     4     3     2     1     0
;    +-----+-----+-----+-----+-----+-----+-----+-----+
; F1 |  -  |  -  | PC32| PC10|  -  | ST2 | ST1 | ST0 | Control, Write only!
;    +-----+-----+-----+-----+-----+-----+-----+-----+
;PC32: "PORT CLEAR" Writing '1' here will reset input from ports 2 & 3. (reset to zero)
;PC10: "PORT CLEAR" Writing '1' here will reset input from ports 0 & 1.
;STx:  Writing '1' here will activate timer X, writing '0' disables the timer.
.define CTRL_REG = $f1
.define _CTRL_TIMER_1 = $02

.define DSP_REG_ADDR = $f2
.define DSP_REG_DATA = $f3
.define PORT_0 = $f4
.define PORT_1 = $f5
.define PORT_2 = $f6
.define PORT_3 = $f7
.define TIMER_0 = $fa
.define TIMER_1 = $fb
.define COUNTER_0 = $fd
.define COUNTER_1 = $fe

; DSP regs
.define VOL_L = $00
.define VOL_R = $01
.define PITCH_L = $02
.define SCRN = $04
.define ADSR_1 = $05
.define ADSR_2 = $06
.define MVOL_L = $0c
.define EFB = $0d
.define COEF = $0f
.define MVOL_R = $1c
.define EVOL_L = $2c
.define PMON = $2d
.define EVOL_R = $3c
.define NON = $3d
.define KON = $4c
.define EON = $4d
.define KOF = $5c ; 1 bit for each voice
.define DIR = $5d
.define FLG = $6c
.define ESA = $6d
.define EDL = $7d

.define NUM_SW_CHANNELS = $10

; wMusicAndSEControl
.define CHN_NO_NEW_SAMPLES = $80
.define CHN_NEG_VOL_R = $40
.define CHN_NEG_VOL_L = $20
.define CHN_USES_SE = $02
.define CHN_USES_MUSIC = $01