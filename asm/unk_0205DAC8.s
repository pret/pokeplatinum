	.include "macros/function.inc"

	

	.text


	thumb_func_start sub_0205DAC8
sub_0205DAC8: ; 0x0205DAC8
	cmp r0, #2
	bne _0205DAD0
	mov r0, #1
	bx lr
_0205DAD0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAC8

	thumb_func_start sub_0205DAD4
sub_0205DAD4: ; 0x0205DAD4
	cmp r0, #3
	bne _0205DADC
	mov r0, #1
	bx lr
_0205DADC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAD4

	thumb_func_start sub_0205DAE0
sub_0205DAE0: ; 0x0205DAE0
	cmp r0, #0x80
	bne _0205DAE8
	mov r0, #1
	bx lr
_0205DAE8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAE0

	thumb_func_start sub_0205DAEC
sub_0205DAEC: ; 0x0205DAEC
	cmp r0, #0x69
	bne _0205DAF4
	mov r0, #1
	bx lr
_0205DAF4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAEC

	thumb_func_start sub_0205DAF8
sub_0205DAF8: ; 0x0205DAF8
	cmp r0, #0x62
	bne _0205DB00
	mov r0, #1
	bx lr
_0205DB00:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DAF8

	thumb_func_start sub_0205DB04
sub_0205DB04: ; 0x0205DB04
	cmp r0, #0x63
	bne _0205DB0C
	mov r0, #1
	bx lr
_0205DB0C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB04

	thumb_func_start sub_0205DB10
sub_0205DB10: ; 0x0205DB10
	cmp r0, #0x64
	bne _0205DB18
	mov r0, #1
	bx lr
_0205DB18:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB10

	thumb_func_start sub_0205DB1C
sub_0205DB1C: ; 0x0205DB1C
	cmp r0, #0x65
	bne _0205DB24
	mov r0, #1
	bx lr
_0205DB24:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB1C

	thumb_func_start sub_0205DB28
sub_0205DB28: ; 0x0205DB28
	cmp r0, #0x6c
	bne _0205DB30
	mov r0, #1
	bx lr
_0205DB30:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB28

	thumb_func_start sub_0205DB34
sub_0205DB34: ; 0x0205DB34
	cmp r0, #0x6d
	bne _0205DB3C
	mov r0, #1
	bx lr
_0205DB3C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB34

	thumb_func_start sub_0205DB40
sub_0205DB40: ; 0x0205DB40
	cmp r0, #0x6e
	bne _0205DB48
	mov r0, #1
	bx lr
_0205DB48:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB40

	thumb_func_start sub_0205DB4C
sub_0205DB4C: ; 0x0205DB4C
	cmp r0, #0x6f
	bne _0205DB54
	mov r0, #1
	bx lr
_0205DB54:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB4C

	thumb_func_start sub_0205DB58
sub_0205DB58: ; 0x0205DB58
	ldr r1, _0205DB68 ; =0x020ED8C4
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r1, r0
	bne _0205DB64
	mov r0, #0
_0205DB64:
	bx lr
	nop
_0205DB68: .word 0x020ED8C4
	thumb_func_end sub_0205DB58

	thumb_func_start sub_0205DB6C
sub_0205DB6C: ; 0x0205DB6C
	cmp r0, #0x21
	bne _0205DB74
	mov r0, #1
	bx lr
_0205DB74:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB6C

	thumb_func_start sub_0205DB78
sub_0205DB78: ; 0x0205DB78
	cmp r0, #0x17
	bne _0205DB80
	mov r0, #1
	bx lr
_0205DB80:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB78

	thumb_func_start sub_0205DB84
sub_0205DB84: ; 0x0205DB84
	cmp r0, #0x3a
	bne _0205DB8C
	mov r0, #1
	bx lr
_0205DB8C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB84

	thumb_func_start sub_0205DB90
sub_0205DB90: ; 0x0205DB90
	cmp r0, #0x3b
	bne _0205DB98
	mov r0, #1
	bx lr
_0205DB98:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB90

	thumb_func_start sub_0205DB9C
sub_0205DB9C: ; 0x0205DB9C
	cmp r0, #0x39
	bne _0205DBA4
	mov r0, #1
	bx lr
_0205DBA4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DB9C

	thumb_func_start sub_0205DBA8
sub_0205DBA8: ; 0x0205DBA8
	cmp r0, #0x38
	bne _0205DBB0
	mov r0, #1
	bx lr
_0205DBB0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBA8

	thumb_func_start sub_0205DBB4
sub_0205DBB4: ; 0x0205DBB4
	cmp r0, #0x5a
	bne _0205DBBC
	mov r0, #1
	bx lr
_0205DBBC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBB4

	thumb_func_start sub_0205DBC0
sub_0205DBC0: ; 0x0205DBC0
	cmp r0, #0x5b
	bne _0205DBC8
	mov r0, #1
	bx lr
_0205DBC8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBC0

	thumb_func_start sub_0205DBCC
sub_0205DBCC: ; 0x0205DBCC
	cmp r0, #0x5c
	bne _0205DBD4
	mov r0, #1
	bx lr
_0205DBD4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBCC

	thumb_func_start sub_0205DBD8
sub_0205DBD8: ; 0x0205DBD8
	cmp r0, #0x5d
	bne _0205DBE0
	mov r0, #1
	bx lr
_0205DBE0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBD8

	thumb_func_start sub_0205DBE4
sub_0205DBE4: ; 0x0205DBE4
	cmp r0, #0x83
	bne _0205DBEC
	mov r0, #1
	bx lr
_0205DBEC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBE4

	thumb_func_start sub_0205DBF0
sub_0205DBF0: ; 0x0205DBF0
	cmp r0, #0x85
	bne _0205DBF8
	mov r0, #1
	bx lr
_0205DBF8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBF0

	thumb_func_start sub_0205DBFC
sub_0205DBFC: ; 0x0205DBFC
	cmp r0, #0x56
	bne _0205DC04
	mov r0, #1
	bx lr
_0205DC04:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DBFC

	thumb_func_start sub_0205DC08
sub_0205DC08: ; 0x0205DC08
	cmp r0, #0x57
	bne _0205DC10
	mov r0, #1
	bx lr
_0205DC10:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC08

	thumb_func_start sub_0205DC14
sub_0205DC14: ; 0x0205DC14
	cmp r0, #0x58
	bne _0205DC1C
	mov r0, #1
	bx lr
_0205DC1C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC14

	thumb_func_start sub_0205DC20
sub_0205DC20: ; 0x0205DC20
	cmp r0, #0x59
	bne _0205DC28
	mov r0, #1
	bx lr
_0205DC28:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC20

	thumb_func_start sub_0205DC2C
sub_0205DC2C: ; 0x0205DC2C
	cmp r0, #0x6a
	bne _0205DC34
	mov r0, #1
	bx lr
_0205DC34:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC2C

	thumb_func_start sub_0205DC38
sub_0205DC38: ; 0x0205DC38
	cmp r0, #0x6b
	bne _0205DC40
	mov r0, #1
	bx lr
_0205DC40:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC38

	thumb_func_start sub_0205DC44
sub_0205DC44: ; 0x0205DC44
	cmp r0, #0x5e
	bne _0205DC4C
	mov r0, #1
	bx lr
_0205DC4C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC44

	thumb_func_start sub_0205DC50
sub_0205DC50: ; 0x0205DC50
	cmp r0, #0x5f
	bne _0205DC58
	mov r0, #1
	bx lr
_0205DC58:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC50

	thumb_func_start sub_0205DC5C
sub_0205DC5C: ; 0x0205DC5C
	cmp r0, #0x20
	bne _0205DC64
	mov r0, #1
	bx lr
_0205DC64:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC5C

	thumb_func_start sub_0205DC68
sub_0205DC68: ; 0x0205DC68
	cmp r0, #0x4b
	bne _0205DC70
	mov r0, #1
	bx lr
_0205DC70:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC68

	thumb_func_start sub_0205DC74
sub_0205DC74: ; 0x0205DC74
	cmp r0, #0x4c
	bne _0205DC7C
	mov r0, #1
	bx lr
_0205DC7C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC74

	thumb_func_start sub_0205DC80
sub_0205DC80: ; 0x0205DC80
	cmp r0, #0xe0
	bne _0205DC88
	mov r0, #1
	bx lr
_0205DC88:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC80

	thumb_func_start sub_0205DC8C
sub_0205DC8C: ; 0x0205DC8C
	cmp r0, #0xea
	bne _0205DC94
	mov r0, #1
	bx lr
_0205DC94:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC8C

	thumb_func_start sub_0205DC98
sub_0205DC98: ; 0x0205DC98
	cmp r0, #0xe1
	bne _0205DCA0
	mov r0, #1
	bx lr
_0205DCA0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DC98

	thumb_func_start sub_0205DCA4
sub_0205DCA4: ; 0x0205DCA4
	cmp r0, #0xe2
	bne _0205DCAC
	mov r0, #1
	bx lr
_0205DCAC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCA4

	thumb_func_start sub_0205DCB0
sub_0205DCB0: ; 0x0205DCB0
	cmp r0, #0xe4
	bne _0205DCB8
	mov r0, #1
	bx lr
_0205DCB8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCB0

	thumb_func_start sub_0205DCBC
sub_0205DCBC: ; 0x0205DCBC
	cmp r0, #0xe5
	bne _0205DCC4
	mov r0, #1
	bx lr
_0205DCC4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCBC

	thumb_func_start sub_0205DCC8
sub_0205DCC8: ; 0x0205DCC8
	cmp r0, #0xeb
	bne _0205DCD0
	mov r0, #1
	bx lr
_0205DCD0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCC8

	thumb_func_start sub_0205DCD4
sub_0205DCD4: ; 0x0205DCD4
	cmp r0, #0xec
	bne _0205DCDC
	mov r0, #1
	bx lr
_0205DCDC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCD4

	thumb_func_start sub_0205DCE0
sub_0205DCE0: ; 0x0205DCE0
	cmp r0, #0xa4
	beq _0205DCE8
	cmp r0, #0xa5
	bne _0205DCEC
_0205DCE8:
	mov r0, #1
	bx lr
_0205DCEC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCE0

	thumb_func_start sub_0205DCF0
sub_0205DCF0: ; 0x0205DCF0
	cmp r0, #0xa5
	bne _0205DCF8
	mov r0, #1
	bx lr
_0205DCF8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCF0

	thumb_func_start sub_0205DCFC
sub_0205DCFC: ; 0x0205DCFC
	cmp r0, #0xa6
	beq _0205DD04
	cmp r0, #0xa7
	bne _0205DD08
_0205DD04:
	mov r0, #1
	bx lr
_0205DD08:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DCFC

	thumb_func_start sub_0205DD0C
sub_0205DD0C: ; 0x0205DD0C
	cmp r0, #0xa7
	bne _0205DD14
	mov r0, #1
	bx lr
_0205DD14:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD0C

	thumb_func_start sub_0205DD18
sub_0205DD18: ; 0x0205DD18
	add r0, #0x5f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #7
	bhi _0205DD32
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	mov r0, #0x87
	tst r0, r2
	beq _0205DD32
	add r3, r1, #0
_0205DD32:
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205DD18

	thumb_func_start sub_0205DD38
sub_0205DD38: ; 0x0205DD38
	cmp r0, #0xa8
	bne _0205DD40
	mov r0, #1
	bx lr
_0205DD40:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD38

	thumb_func_start sub_0205DD44
sub_0205DD44: ; 0x0205DD44
	cmp r0, #0xa1
	bne _0205DD4C
	mov r0, #1
	bx lr
_0205DD4C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD44

	thumb_func_start sub_0205DD50
sub_0205DD50: ; 0x0205DD50
	cmp r0, #0xa2
	bne _0205DD58
	mov r0, #1
	bx lr
_0205DD58:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD50

	thumb_func_start sub_0205DD5C
sub_0205DD5C: ; 0x0205DD5C
	cmp r0, #0xa3
	bne _0205DD64
	mov r0, #1
	bx lr
_0205DD64:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD5C

	thumb_func_start sub_0205DD68
sub_0205DD68: ; 0x0205DD68
	cmp r0, #0xd9
	beq _0205DD70
	cmp r0, #0xda
	bne _0205DD74
_0205DD70:
	mov r0, #1
	bx lr
_0205DD74:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD68

	thumb_func_start sub_0205DD78
sub_0205DD78: ; 0x0205DD78
	cmp r0, #0xd9
	bne _0205DD80
	mov r0, #1
	bx lr
_0205DD80:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD78

	thumb_func_start sub_0205DD84
sub_0205DD84: ; 0x0205DD84
	cmp r0, #0xda
	bne _0205DD8C
	mov r0, #1
	bx lr
_0205DD8C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD84

	thumb_func_start sub_0205DD90
sub_0205DD90: ; 0x0205DD90
	cmp r0, #0xd7
	bne _0205DD98
	mov r0, #1
	bx lr
_0205DD98:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD90

	thumb_func_start sub_0205DD9C
sub_0205DD9C: ; 0x0205DD9C
	cmp r0, #0xd8
	bne _0205DDA4
	mov r0, #1
	bx lr
_0205DDA4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DD9C

	thumb_func_start sub_0205DDA8
sub_0205DDA8: ; 0x0205DDA8
	cmp r0, #8
	bne _0205DDB0
	mov r0, #1
	bx lr
_0205DDB0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DDA8

	thumb_func_start sub_0205DDB4
sub_0205DDB4: ; 0x0205DDB4
	cmp r0, #0x13
	bne _0205DDBC
	mov r0, #1
	bx lr
_0205DDBC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DDB4

	thumb_func_start sub_0205DDC0
sub_0205DDC0: ; 0x0205DDC0
	cmp r0, #0xdb
	bne _0205DDC8
	mov r0, #1
	bx lr
_0205DDC8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DDC0

	thumb_func_start sub_0205DDCC
sub_0205DDCC: ; 0x0205DDCC
	add r0, #0xce
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x17
	bhi _0205DDE6
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DDEC ; =0x0080000D
	tst r0, r2
	beq _0205DDE6
	add r3, r1, #0
_0205DDE6:
	add r0, r3, #0
	bx lr
	nop
_0205DDEC: .word 0x0080000D
	thumb_func_end sub_0205DDCC

	thumb_func_start sub_0205DDF0
sub_0205DDF0: ; 0x0205DDF0
	add r0, #0xcd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x16
	bhi _0205DE0A
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DE10 ; =0x00400019
	tst r0, r2
	beq _0205DE0A
	add r3, r1, #0
_0205DE0A:
	add r0, r3, #0
	bx lr
	nop
_0205DE10: .word 0x00400019
	thumb_func_end sub_0205DDF0

	thumb_func_start sub_0205DE14
sub_0205DE14: ; 0x0205DE14
	add r0, #0xcf
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x19
	bhi _0205DE2E
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DE34 ; =0x02000051
	tst r0, r2
	beq _0205DE2E
	add r3, r1, #0
_0205DE2E:
	add r0, r3, #0
	bx lr
	nop
_0205DE34: .word 0x02000051
	thumb_func_end sub_0205DE14

	thumb_func_start sub_0205DE38
sub_0205DE38: ; 0x0205DE38
	add r0, #0xd0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x1a
	bhi _0205DE52
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DE58 ; =0x04000051
	tst r0, r2
	beq _0205DE52
	add r3, r1, #0
_0205DE52:
	add r0, r3, #0
	bx lr
	nop
_0205DE58: .word 0x04000051
	thumb_func_end sub_0205DE38

	thumb_func_start sub_0205DE5C
sub_0205DE5C: ; 0x0205DE5C
	cmp r0, #0x16
	beq _0205DE64
	cmp r0, #0x1d
	bne _0205DE68
_0205DE64:
	mov r0, #1
	bx lr
_0205DE68:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DE5C

	thumb_func_start sub_0205DE6C
sub_0205DE6C: ; 0x0205DE6C
	ldr r1, _0205DE80 ; =0x020ED8C4
	ldrb r1, [r1, r0]
	mov r0, #2
	tst r0, r1
	beq _0205DE7A
	mov r0, #1
	bx lr
_0205DE7A:
	mov r0, #0
	bx lr
	nop
_0205DE80: .word 0x020ED8C4
	thumb_func_end sub_0205DE6C

	thumb_func_start sub_0205DE84
sub_0205DE84: ; 0x0205DE84
	cmp r0, #0x86
	bne _0205DE8C
	mov r0, #1
	bx lr
_0205DE8C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DE84

	thumb_func_start sub_0205DE90
sub_0205DE90: ; 0x0205DE90
	add r0, #0xf0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #0x1c
	bhi _0205DEAA
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DEB0 ; =0x10002041
	tst r0, r2
	beq _0205DEAA
	add r3, r1, #0
_0205DEAA:
	add r0, r3, #0
	bx lr
	nop
_0205DEB0: .word 0x10002041
	thumb_func_end sub_0205DE90

	thumb_func_start sub_0205DEB4
sub_0205DEB4: ; 0x0205DEB4
	cmp r0, #0x40
	bne _0205DEBC
	mov r0, #1
	bx lr
_0205DEBC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DEB4

	thumb_func_start sub_0205DEC0
sub_0205DEC0: ; 0x0205DEC0
	cmp r0, #0x41
	bne _0205DEC8
	mov r0, #1
	bx lr
_0205DEC8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DEC0

	thumb_func_start sub_0205DECC
sub_0205DECC: ; 0x0205DECC
	cmp r0, #0x42
	bne _0205DED4
	mov r0, #1
	bx lr
_0205DED4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DECC

	thumb_func_start sub_0205DED8
sub_0205DED8: ; 0x0205DED8
	cmp r0, #0x43
	bne _0205DEE0
	mov r0, #1
	bx lr
_0205DEE0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DED8

	thumb_func_start sub_0205DEE4
sub_0205DEE4: ; 0x0205DEE4
	cmp r0, #0x67
	bne _0205DEEC
	mov r0, #1
	bx lr
_0205DEEC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DEE4

	thumb_func_start sub_0205DEF0
sub_0205DEF0: ; 0x0205DEF0
	cmp r0, #0x70
	bne _0205DEF8
	mov r0, #1
	bx lr
_0205DEF8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DEF0

	thumb_func_start sub_0205DEFC
sub_0205DEFC: ; 0x0205DEFC
	add r0, #0x8f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xc
	bhi _0205DF0A
	mov r0, #1
	bx lr
_0205DF0A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205DEFC

	thumb_func_start sub_0205DF10
sub_0205DF10: ; 0x0205DF10
	add r0, #0x8d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #9
	bhi _0205DF2A
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DF30 ; =0x00000221
	tst r0, r2
	beq _0205DF2A
	add r3, r1, #0
_0205DF2A:
	add r0, r3, #0
	bx lr
	nop
_0205DF30: .word 0x00000221
	thumb_func_end sub_0205DF10

	thumb_func_start sub_0205DF34
sub_0205DF34: ; 0x0205DF34
	add r0, #0x8c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0
	cmp r0, #9
	bhi _0205DF4E
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	ldr r0, _0205DF54 ; =0x00000221
	tst r0, r2
	beq _0205DF4E
	add r3, r1, #0
_0205DF4E:
	add r0, r3, #0
	bx lr
	nop
_0205DF54: .word 0x00000221
	thumb_func_end sub_0205DF34

	thumb_func_start sub_0205DF58
sub_0205DF58: ; 0x0205DF58
	cmp r0, #0x75
	bne _0205DF60
	mov r0, #1
	bx lr
_0205DF60:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DF58

	thumb_func_start sub_0205DF64
sub_0205DF64: ; 0x0205DF64
	add r0, #0x8a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _0205DF72
	mov r0, #1
	bx lr
_0205DF72:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205DF64

	thumb_func_start sub_0205DF78
sub_0205DF78: ; 0x0205DF78
	add r0, #0x86
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _0205DF86
	mov r0, #1
	bx lr
_0205DF86:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205DF78

	thumb_func_start sub_0205DF8C
sub_0205DF8C: ; 0x0205DF8C
	cmp r0, #0xff
	bne _0205DF94
	mov r0, #1
	bx lr
_0205DF94:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DF8C

	thumb_func_start sub_0205DF98
sub_0205DF98: ; 0x0205DF98
	mov r0, #0xff
	bx lr
	thumb_func_end sub_0205DF98

	thumb_func_start sub_0205DF9C
sub_0205DF9C: ; 0x0205DF9C
	cmp r0, #0x2c
	beq _0205DFA4
	cmp r0, #0x1d
	bne _0205DFA8
_0205DFA4:
	mov r0, #1
	bx lr
_0205DFA8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DF9C

	thumb_func_start sub_0205DFAC
sub_0205DFAC: ; 0x0205DFAC
	cmp r0, #0xa9
	bne _0205DFB4
	mov r0, #1
	bx lr
_0205DFB4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DFAC

	thumb_func_start sub_0205DFB8
sub_0205DFB8: ; 0x0205DFB8
	cmp r0, #0x2d
	bne _0205DFC0
	mov r0, #1
	bx lr
_0205DFC0:
	mov r0, #0
	bx lr
	thumb_func_end sub_0205DFB8

	.rodata


	.global Unk_020ED8C4
Unk_020ED8C4: ; 0x020ED8C4
	.incbin "incbin/arm9_rodata.bin", 0x8C84, 0x100

