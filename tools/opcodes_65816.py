# imm = #$00
# sr = $00,S
# dp = $00
# dpx = $00,X
# dpy = $00,Y
# idp = ($00)
# idx = ($00,X)
# idy = ($00),Y
# idl = [$00]
# idly = [$00],Y
# isy = ($00,S),Y
# abs = $0000
# abx = $0000,X
# aby = $0000,Y
# abl = $000000
# alx = $000000,X
# ind = ($0000)
# iax = ($0000,X)
# ial = [$000000]
# rel = $0000 (8 bits PC-relative)
# rell = $0000 (16 bits PC-relative)
# bm = $00,$00

# beautifulsoup==4.10.0

# copied from http://www.oxyron.de/html/opcodes816.html
table = """<table border="1" cellspacing="0" cellpadding="2">

<tbody><tr>
<td>&nbsp;</td>
<td width="36"><b><font size="+1">x0</font></b></td>
<td width="36"><b><font size="+1">x1</font></b></td>
<td width="36"><b><font size="+1">x2</font></b></td>
<td width="36"><b><font size="+1">x3</font></b></td>
<td width="36"><b><font size="+1">x4</font></b></td>
<td width="36"><b><font size="+1">x5</font></b></td>
<td width="36"><b><font size="+1">x6</font></b></td>
<td width="36"><b><font size="+1">x7</font></b></td>
<td width="36"><b><font size="+1">x8</font></b></td>
<td width="36"><b><font size="+1">x9</font></b></td>
<td width="36"><b><font size="+1">xA</font></b></td>
<td width="36"><b><font size="+1">xB</font></b></td>
<td width="36"><b><font size="+1">xC</font></b></td>
<td width="36"><b><font size="+1">xD</font></b></td>
<td width="36"><b><font size="+1">xE</font></b></td>
<td width="36"><b><font size="+1">xF</font></b></td>
</tr>

<tr>
<td><b><font size="+1">0x</font></b></td>
<td><b><font size="-1">BRK<br>7</font></b></td>
<td><b><font size="-1">ORA<br>idx 6</font></b></td>
<td><b><font size="-1">COP<br>imm 7</font></b></td>
<td><b><font size="-1">ORA<br>sr 4</font></b></td>
<td><b><font size="-1">TSB<br>dp 5</font></b></td>
<td><b><font size="-1">ORA<br>dp 3</font></b></td>
<td><b><font size="-1">ASL<br>dp 5</font></b></td>
<td><b><font size="-1">ORA<br>idl 6</font></b></td>
<td><b><font size="-1">PHP<br>3</font></b></td>
<td><b><font size="-1">ORA<br>imm 2</font></b></td>
<td><b><font size="-1">ASL<br>2</font></b></td>
<td><b><font size="-1">PHD<br>4</font></b></td>
<td><b><font size="-1">TSB<br>abs 6</font></b></td>
<td><b><font size="-1">ORA<br>abs 4</font></b></td>
<td><b><font size="-1">ASL<br>abs 6</font></b></td>
<td><b><font size="-1">ORA<br>abl 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">1x</font></b></td>
<td><b><font size="-1">BPL<br>rel 2*</font></b></td>
<td><b><font size="-1">ORA<br>idy 5*</font></b></td>
<td><b><font size="-1">ORA<br>idp 5</font></b></td>
<td><b><font size="-1">ORA<br>isy 7</font></b></td>
<td><b><font size="-1">TRB<br>dp 5</font></b></td>
<td><b><font size="-1">ORA<br>dpx 4</font></b></td>
<td><b><font size="-1">ASL<br>dpx 6</font></b></td>
<td><b><font size="-1">ORA<br>idly 6</font></b></td>
<td><b><font size="-1">CLC<br>2</font></b></td>
<td><b><font size="-1">ORA<br>aby 4*</font></b></td>
<td><b><font size="-1">INA<br>2</font></b></td>
<td><b><font size="-1">TCS<br>2</font></b></td>
<td><b><font size="-1">TRB<br>abs 6</font></b></td>
<td><b><font size="-1">ORA<br>abx 4*</font></b></td>
<td><b><font size="-1">ASL<br>abx 7</font></b></td>
<td><b><font size="-1">ORA<br>alx 4</font></b></td>
</tr>

<tr>
<td><b><font size="+1">2x</font></b></td>
<td><b><font size="-1">JSR<br>abs 6</font></b></td>
<td><b><font size="-1">AND<br>idx 6</font></b></td>
<td><b><font size="-1">JSR<br>abl 8</font></b></td>
<td><b><font size="-1">AND<br>sr 4</font></b></td>
<td><b><font size="-1">BIT<br>dp 3</font></b></td>
<td><b><font size="-1">AND<br>dp 3</font></b></td>
<td><b><font size="-1">ROL<br>dp 5</font></b></td>
<td><b><font size="-1">AND<br>idl 6</font></b></td>
<td><b><font size="-1">PLP<br>4</font></b></td>
<td><b><font size="-1">AND<br>imm 2</font></b></td>
<td><b><font size="-1">ROL<br>2</font></b></td>
<td><b><font size="-1">PLD<br>5</font></b></td>
<td><b><font size="-1">BIT<br>abs 4</font></b></td>
<td><b><font size="-1">AND<br>abs 4</font></b></td>
<td><b><font size="-1">ROL<br>abs 6</font></b></td>
<td><b><font size="-1">AND<br>abl 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">3x</font></b></td>
<td><b><font size="-1">BMI<br>rel 2*</font></b></td>
<td><b><font size="-1">AND<br>idy 5*</font></b></td>
<td><b><font size="-1">AND<br>idp 5</font></b></td>
<td><b><font size="-1">AND<br>isy 7</font></b></td>
<td><b><font size="-1">BIT<br>dpx 4</font></b></td>
<td><b><font size="-1">AND<br>dpx 4</font></b></td>
<td><b><font size="-1">ROL<br>dpx 6</font></b></td>
<td><b><font size="-1">AND<br>idly 6</font></b></td>
<td><b><font size="-1">SEC<br>2</font></b></td>
<td><b><font size="-1">AND<br>aby 4*</font></b></td>
<td><b><font size="-1">DEA<br>2</font></b></td>
<td><b><font size="-1">TSC<br>2</font></b></td>
<td><b><font size="-1">BIT<br>abx 4*</font></b></td>
<td><b><font size="-1">AND<br>abx 4*</font></b></td>
<td><b><font size="-1">ROL<br>abx 7</font></b></td>
<td><b><font size="-1">AND<br>alx 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">4x</font></b></td>
<td><b><font size="-1">RTI<br>6</font></b></td>
<td><b><font size="-1">EOR<br>idx 6</font></b></td>
<td bgcolor="#E0E0E0"><b><font size="-1">WDM<br>n/a</font></b></td>
<td><b><font size="-1">EOR<br>sr 4</font></b></td>
<td><b><font size="-1">MVP<br>bm 1#</font></b></td>
<td><b><font size="-1">EOR<br>dp 3</font></b></td>
<td><b><font size="-1">LSR<br>dp 5</font></b></td>
<td><b><font size="-1">EOR<br>idl 6</font></b></td>
<td><b><font size="-1">PHA<br>3</font></b></td>
<td><b><font size="-1">EOR<br>imm 2</font></b></td>
<td><b><font size="-1">LSR<br>2</font></b></td>
<td><b><font size="-1">PHK<br>3</font></b></td>
<td><b><font size="-1">JMP<br>abs 3</font></b></td>
<td><b><font size="-1">EOR<br>abs 4</font></b></td>
<td><b><font size="-1">LSR<br>abs 6</font></b></td>
<td><b><font size="-1">EOR<br>abl 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">5x</font></b></td>
<td><b><font size="-1">BVC<br>rel 2*</font></b></td>
<td><b><font size="-1">EOR<br>idy 5*</font></b></td>
<td><b><font size="-1">EOR<br>idp 5</font></b></td>
<td><b><font size="-1">EOR<br>isy 6</font></b></td>
<td><b><font size="-1">MVN<br>bm 1#</font></b></td>
<td><b><font size="-1">EOR<br>dpx 4</font></b></td>
<td><b><font size="-1">LSR<br>dpx 6</font></b></td>
<td><b><font size="-1">EOR<br>idly 6</font></b></td>
<td><b><font size="-1">CLI<br>2</font></b></td>
<td><b><font size="-1">EOR<br>aby 4*</font></b></td>
<td><b><font size="-1">PHY<br>3</font></b></td>
<td><b><font size="-1">TCD<br>2</font></b></td>
<td><b><font size="-1">JMP<br>abl 4</font></b></td>
<td><b><font size="-1">EOR<br>abx 4*</font></b></td>
<td><b><font size="-1">LSR<br>abx 7</font></b></td>
<td><b><font size="-1">EOR<br>alx 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">6x</font></b></td>
<td><b><font size="-1">RTS<br>6</font></b></td>
<td><b><font size="-1">ADC<br>idx 6</font></b></td>
<td><b><font size="-1">PER<br>rell 6</font></b></td>
<td><b><font size="-1">ADC<br>sr 4</font></b></td>
<td><b><font size="-1">STZ<br>dp 3</font></b></td>
<td><b><font size="-1">ADC<br>dp 3</font></b></td>
<td><b><font size="-1">ROR<br>zp 5</font></b></td>
<td><b><font size="-1">ADC<br>idl 6</font></b></td>
<td><b><font size="-1">PLA<br>4</font></b></td>
<td><b><font size="-1">ADC<br>imm 2</font></b></td>
<td><b><font size="-1">ROR<br>2</font></b></td>
<td><b><font size="-1">RTL<br>6</font></b></td>
<td><b><font size="-1">JMP<br>ind 5</font></b></td>
<td><b><font size="-1">ADC<br>abs 4</font></b></td>
<td><b><font size="-1">ROR<br>abs 6</font></b></td>
<td><b><font size="-1">ADC<br>abl 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">7x</font></b></td>
<td><b><font size="-1">BVS<br>rel 2*</font></b></td>
<td><b><font size="-1">ADC<br>idy 5*</font></b></td>
<td><b><font size="-1">ADC<br>idp 5</font></b></td>
<td><b><font size="-1">ADC<br>isy 7</font></b></td>
<td><b><font size="-1">STZ<br>dpx 4</font></b></td>
<td><b><font size="-1">ADC<br>dpx 4</font></b></td>
<td><b><font size="-1">ROR<br>zpx 6</font></b></td>
<td><b><font size="-1">ADC<br>idly 6</font></b></td>
<td><b><font size="-1">SEI<br>2</font></b></td>
<td><b><font size="-1">ADC<br>aby 4*</font></b></td>
<td><b><font size="-1">PLY<br>4</font></b></td>
<td><b><font size="-1">TDC<br>2</font></b></td>
<td><b><font size="-1">JMP<br>iax 6</font></b></td>
<td><b><font size="-1">ADC<br>abx 4*</font></b></td>
<td><b><font size="-1">ROR<br>abx 7</font></b></td>
<td><b><font size="-1">ADC<br>alx 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">8x</font></b></td>
<td><b><font size="-1">BRA<br>rel 3*</font></b></td>
<td><b><font size="-1">STA<br>idx 6</font></b></td>
<td><b><font size="-1">BRL<br>rell 4</font></b></td>
<td><b><font size="-1">STA<br>sr 4</font></b></td>
<td><b><font size="-1">STY<br>dp 3</font></b></td>
<td><b><font size="-1">STA<br>dp 3</font></b></td>
<td><b><font size="-1">STX<br>dp 3</font></b></td>
<td><b><font size="-1">STA<br>idl 6</font></b></td>
<td><b><font size="-1">DEY<br>2</font></b></td>
<td><b><font size="-1">BIT<br>imm 2</font></b></td>
<td><b><font size="-1">TXA<br>2</font></b></td>
<td><b><font size="-1">PHB<br>3</font></b></td>
<td><b><font size="-1">STY<br>abs 4</font></b></td>
<td><b><font size="-1">STA<br>abs 4</font></b></td>
<td><b><font size="-1">STX<br>abs 4</font></b></td>
<td><b><font size="-1">STA<br>abl 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">9x</font></b></td>
<td><b><font size="-1">BCC<br>rel 2*</font></b></td>
<td><b><font size="-1">STA<br>idy 6</font></b></td>
<td><b><font size="-1">STA<br>idp 5</font></b></td>
<td><b><font size="-1">STA<br>isy 7</font></b></td>
<td><b><font size="-1">STY<br>dpx 4</font></b></td>
<td><b><font size="-1">STA<br>dpx 4</font></b></td>
<td><b><font size="-1">STX<br>dpy 4</font></b></td>
<td><b><font size="-1">STA<br>idly 6</font></b></td>
<td><b><font size="-1">TYA<br>2</font></b></td>
<td><b><font size="-1">STA<br>aby 5</font></b></td>
<td><b><font size="-1">TXS<br>2</font></b></td>
<td><b><font size="-1">TXY<br>2</font></b></td>
<td><b><font size="-1">STZ<br>abs 4</font></b></td>
<td><b><font size="-1">STA<br>abx 5</font></b></td>
<td><b><font size="-1">STZ<br>abx 5</font></b></td>
<td><b><font size="-1">STA<br>alx 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">Ax</font></b></td>
<td><b><font size="-1">LDY<br>imm 2</font></b></td>
<td><b><font size="-1">LDA<br>idx 6</font></b></td>
<td><b><font size="-1">LDX<br>imm 2</font></b></td>
<td><b><font size="-1">LDA<br>sr 4</font></b></td>
<td><b><font size="-1">LDY<br>dp 3</font></b></td>
<td><b><font size="-1">LDA<br>dp 3</font></b></td>
<td><b><font size="-1">LDX<br>dp 3</font></b></td>
<td><b><font size="-1">LDA<br>idl 6</font></b></td>
<td><b><font size="-1">TAY<br>2</font></b></td>
<td><b><font size="-1">LDA<br>imm 2</font></b></td>
<td><b><font size="-1">TAX<br>2</font></b></td>
<td><b><font size="-1">PLB<br>4</font></b></td>
<td><b><font size="-1">LDY<br>abs 4</font></b></td>
<td><b><font size="-1">LDA<br>abs 4</font></b></td>
<td><b><font size="-1">LDX<br>abs 4</font></b></td>
<td><b><font size="-1">LDA<br>abl 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">Bx</font></b></td>
<td><b><font size="-1">BCS<br>rel 2*</font></b></td>
<td><b><font size="-1">LDA<br>idy 5*</font></b></td>
<td><b><font size="-1">LDA<br>idp 5</font></b></td>
<td><b><font size="-1">LDA<br>isy 7</font></b></td>
<td><b><font size="-1">LDY<br>dpx 4</font></b></td>
<td><b><font size="-1">LDA<br>dpx 4</font></b></td>
<td><b><font size="-1">LDX<br>dpy 4</font></b></td>
<td><b><font size="-1">LDA<br>idly 6</font></b></td>
<td><b><font size="-1">CLV<br>2</font></b></td>
<td><b><font size="-1">LDA<br>aby 4*</font></b></td>
<td><b><font size="-1">TSX<br>2</font></b></td>
<td><b><font size="-1">TYX<br>2</font></b></td>
<td><b><font size="-1">LDY<br>abx 4*</font></b></td>
<td><b><font size="-1">LDA<br>abx 4*</font></b></td>
<td><b><font size="-1">LDX<br>aby 4*</font></b></td>
<td><b><font size="-1">LDA<br>alx 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">Cx</font></b></td>
<td><b><font size="-1">CPY<br>imm 2</font></b></td>
<td><b><font size="-1">CMP<br>idx 6</font></b></td>
<td><b><font size="-1">REP<br>imm 3</font></b></td>
<td><b><font size="-1">CMP<br>sr 4</font></b></td>
<td><b><font size="-1">CPY<br>dp 3</font></b></td>
<td><b><font size="-1">CMP<br>dp 3</font></b></td>
<td><b><font size="-1">DEC<br>dp 5</font></b></td>
<td><b><font size="-1">CMP<br>idl 6</font></b></td>
<td><b><font size="-1">INY<br>2</font></b></td>
<td><b><font size="-1">CMP<br>imm 2</font></b></td>
<td><b><font size="-1">DEX<br>2</font></b></td>
<td><b><font size="-1">WAI<br>3</font></b></td>
<td><b><font size="-1">CPY<br>abs 4</font></b></td>
<td><b><font size="-1">CMP<br>abs 4</font></b></td>
<td><b><font size="-1">DEC<br>abs 6</font></b></td>
<td><b><font size="-1">CMP<br>abl 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">Dx</font></b></td>
<td><b><font size="-1">BNE<br>rel 2*</font></b></td>
<td><b><font size="-1">CMP<br>idy 5*</font></b></td>
<td><b><font size="-1">CMP<br>idp 5</font></b></td>
<td><b><font size="-1">CMP<br>isy 7</font></b></td>
<td><b><font size="-1">PEI<br>idp 6</font></b></td>
<td><b><font size="-1">CMP<br>dpx 4</font></b></td>
<td><b><font size="-1">DEC<br>dpx 6</font></b></td>
<td><b><font size="-1">CMP<br>idly 6</font></b></td>
<td><b><font size="-1">CLD<br>2</font></b></td>
<td><b><font size="-1">CMP<br>aby 4*</font></b></td>
<td><b><font size="-1">PHX<br>3</font></b></td>
<td><b><font size="-1">STP<br>3</font></b></td>
<td><b><font size="-1">JMP<br>ial 6</font></b></td>
<td><b><font size="-1">CMP<br>abx 4*</font></b></td>
<td><b><font size="-1">DEC<br>abx 7</font></b></td>
<td><b><font size="-1">CMP<br>alx 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">Ex</font></b></td>
<td><b><font size="-1">CPX<br>imm 2</font></b></td>
<td><b><font size="-1">SBC<br>idx 6</font></b></td>
<td><b><font size="-1">SEP<br>imm 3</font></b></td>
<td><b><font size="-1">SBC<br>sr 4</font></b></td>
<td><b><font size="-1">CPX<br>dp 3</font></b></td>
<td><b><font size="-1">SBC<br>dp 3</font></b></td>
<td><b><font size="-1">INC<br>dp 5</font></b></td>
<td><b><font size="-1">SBC<br>idl 6</font></b></td>
<td><b><font size="-1">INX<br>2</font></b></td>
<td><b><font size="-1">SBC<br>imm 2</font></b></td>
<td><b><font size="-1">NOP<br>2</font></b></td>
<td><b><font size="-1">XBA<br>3</font></b></td>
<td><b><font size="-1">CPX<br>abs 4</font></b></td>
<td><b><font size="-1">SBC<br>abs 4</font></b></td>
<td><b><font size="-1">INC<br>abs 6</font></b></td>
<td><b><font size="-1">SBC<br>abl 5</font></b></td>
</tr>

<tr>
<td><b><font size="+1">Fx</font></b></td>
<td><b><font size="-1">BEQ<br>rel 2*</font></b></td>
<td><b><font size="-1">SBC<br>idy 5*</font></b></td>
<td><b><font size="-1">SBC<br>idp 5</font></b></td>
<td><b><font size="-1">SBC<br>isy 7</font></b></td>
<td><b><font size="-1">PEA<br>abs 5</font></b></td>
<td><b><font size="-1">SBC<br>dpx 4</font></b></td>
<td><b><font size="-1">INC<br>dpx 6</font></b></td>
<td><b><font size="-1">SBC<br>idly 6</font></b></td>
<td><b><font size="-1">SED<br>2</font></b></td>
<td><b><font size="-1">SBC<br>aby 4*</font></b></td>
<td><b><font size="-1">PLX<br>4</font></b></td>
<td><b><font size="-1">XCE<br>2</font></b></td>
<td><b><font size="-1">JSR<br>iax 8</font></b></td>
<td><b><font size="-1">SBC<br>abx 4*</font></b></td>
<td><b><font size="-1">INC<br>abx 7</font></b></td>
<td><b><font size="-1">SBC<br>alx 5</font></b></td>
</tr>
</tbody></table>"""

from bs4 import BeautifulSoup
soup = BeautifulSoup(table, 'html.parser')

instruction_set = {}

rows = soup.find_all('tr')[1:]
for rowI, row in enumerate(rows):
    cols = row.find_all('font')[1:]
    for colI, col in enumerate(cols):
        ins, _, addMode = col.contents

        ins = ins.lower()
        addModeContents = addMode.split()

        if len(addModeContents) == 1:
            addMode = 'impl'
        else:
            addMode = addModeContents[0]
        
        instruction_set[rowI * 0x10 + colI] = [ins, addMode]
