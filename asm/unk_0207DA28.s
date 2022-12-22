	.include "macros/function.inc"
	.include "include/unk_0207DA28.inc"

	

	.text


	thumb_func_start sub_0207DA28
sub_0207DA28: ; 0x0207DA28
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0x1d
	bls _0207DA42
	b _0207DD82
_0207DA42:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207DA4E: ; jump table
	.short _0207DA8A - _0207DA4E - 2 ; case 0
	.short _0207DA90 - _0207DA4E - 2 ; case 1
	.short _0207DAB4 - _0207DA4E - 2 ; case 2
	.short _0207DAC6 - _0207DA4E - 2 ; case 3
	.short _0207DB9E - _0207DA4E - 2 ; case 4
	.short _0207DBB4 - _0207DA4E - 2 ; case 5
	.short _0207DBBA - _0207DA4E - 2 ; case 6
	.short _0207DBC8 - _0207DA4E - 2 ; case 7
	.short _0207DBCE - _0207DA4E - 2 ; case 8
	.short _0207DBEA - _0207DA4E - 2 ; case 9
	.short _0207DBEA - _0207DA4E - 2 ; case 10
	.short _0207DBEA - _0207DA4E - 2 ; case 11
	.short _0207DC00 - _0207DA4E - 2 ; case 12
	.short _0207DC12 - _0207DA4E - 2 ; case 13
	.short _0207DC26 - _0207DA4E - 2 ; case 14
	.short _0207DC3A - _0207DA4E - 2 ; case 15
	.short _0207DC50 - _0207DA4E - 2 ; case 16
	.short _0207DC68 - _0207DA4E - 2 ; case 17
	.short _0207DC80 - _0207DA4E - 2 ; case 18
	.short _0207DC92 - _0207DA4E - 2 ; case 19
	.short _0207DCA6 - _0207DA4E - 2 ; case 20
	.short _0207DCC0 - _0207DA4E - 2 ; case 21
	.short _0207DCD6 - _0207DA4E - 2 ; case 22
	.short _0207DCE8 - _0207DA4E - 2 ; case 23
	.short _0207DCFC - _0207DA4E - 2 ; case 24
	.short _0207DD16 - _0207DA4E - 2 ; case 25
	.short _0207DD2C - _0207DA4E - 2 ; case 26
	.short _0207DD3E - _0207DA4E - 2 ; case 27
	.short _0207DD52 - _0207DA4E - 2 ; case 28
	.short _0207DD6C - _0207DA4E - 2 ; case 29
_0207DA8A:
	ldr r1, [r5, #0xc]
	ldr r0, [r4, #0]
	str r1, [r0, #0]
_0207DA90:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _0207DAE2
	ldr r0, [r5, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _0207DAE2
	mov r0, #0xa
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #0
	strh r1, [r0]
	b _0207DD86
_0207DAB4:
	ldr r1, _0207DD8C ; =0x020F1B98
	ldr r2, [r4, #0]
	add r0, r6, #0
	bl sub_02050A38
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DAC6:
	ldr r0, [r5, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _0207DADA
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AF5C
_0207DADA:
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0xf
	bls _0207DAE4
_0207DAE2:
	b _0207DD86
_0207DAE4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207DAF0: ; jump table
	.short _0207DD86 - _0207DAF0 - 2 ; case 0
	.short _0207DB1C - _0207DAF0 - 2 ; case 1
	.short _0207DB2A - _0207DAF0 - 2 ; case 2
	.short _0207DB10 - _0207DAF0 - 2 ; case 3
	.short _0207DB46 - _0207DAF0 - 2 ; case 4
	.short _0207DB54 - _0207DAF0 - 2 ; case 5
	.short _0207DB38 - _0207DAF0 - 2 ; case 6
	.short _0207DB62 - _0207DAF0 - 2 ; case 7
	.short _0207DB74 - _0207DAF0 - 2 ; case 8
	.short _0207DB98 - _0207DAF0 - 2 ; case 9
	.short _0207DB68 - _0207DAF0 - 2 ; case 10
	.short _0207DB7A - _0207DAF0 - 2 ; case 11
	.short _0207DB80 - _0207DAF0 - 2 ; case 12
	.short _0207DB86 - _0207DAF0 - 2 ; case 13
	.short _0207DB8C - _0207DAF0 - 2 ; case 14
	.short _0207DB92 - _0207DAF0 - 2 ; case 15
_0207DB10:
	mov r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB1C:
	mov r0, #0x32
	strb r0, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB2A:
	mov r0, #0x64
	strb r0, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB38:
	mov r0, #0
	strb r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB46:
	mov r0, #0x32
	strb r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB54:
	mov r0, #0x64
	strb r0, [r4, #0xc]
	mov r0, #1
	strb r0, [r4, #0xd]
	mov r0, #4
	str r0, [r4, #4]
	b _0207DD86
_0207DB62:
	mov r0, #6
	str r0, [r4, #4]
	b _0207DD86
_0207DB68:
	ldr r0, [r4, #8]
	mov r1, #1
	strh r1, [r0]
	mov r0, #0xb
	str r0, [r4, #4]
	b _0207DD86
_0207DB74:
	mov r0, #9
	str r0, [r4, #4]
	b _0207DD86
_0207DB7A:
	mov r0, #0xc
	str r0, [r4, #4]
	b _0207DD86
_0207DB80:
	mov r0, #0x10
	str r0, [r4, #4]
	b _0207DD86
_0207DB86:
	mov r0, #0x12
	str r0, [r4, #4]
	b _0207DD86
_0207DB8C:
	mov r0, #0x16
	str r0, [r4, #4]
	b _0207DD86
_0207DB92:
	mov r0, #0x1a
	str r0, [r4, #4]
	b _0207DD86
_0207DB98:
	mov r0, #8
	str r0, [r4, #4]
	b _0207DD86
_0207DB9E:
	ldr r1, [r4, #0]
	ldrb r2, [r4, #0xc]
	ldrb r3, [r4, #0xd]
	ldr r1, [r1, #8]
	add r0, r6, #0
	bl sub_020516F4
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DBB4:
	mov r0, #2
	str r0, [r4, #4]
	b _0207DD86
_0207DBBA:
	add r0, r6, #0
	bl sub_0203DDDC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DBC8:
	mov r0, #2
	str r0, [r4, #4]
	b _0207DD86
_0207DBCE:
	ldr r2, _0207DD90 ; =0x00040100
	mov r0, #3
	mov r1, #0x36
	bl sub_02017FC8
	bl sub_02099570
	mov r0, #0x36
	bl ov18_0221F800
	mov r0, #0
	bl OS_ResetSystem
	b _0207DD86
_0207DBEA:
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0207DC00:
	add r1, r5, #0
	mov r2, #0xb
	mov r3, #0
	bl sub_0207DE04
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DC12:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DC72
	add r0, r4, #0
	bl sub_0207DE40
	str r0, [r4, #4]
	b _0207DD86
_0207DC26:
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_020996A0
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DC3A:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DC72
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #2
	str r0, [r4, #4]
	b _0207DD86
_0207DC50:
	mov r0, #0
	bl sub_0203632C
	add r0, r5, #0
	mov r1, #0
	bl sub_0209BA18
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DC68:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0207DC74
_0207DC72:
	b _0207DD86
_0207DC74:
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #2
	str r0, [r4, #4]
	b _0207DD86
_0207DC80:
	add r1, r5, #0
	mov r2, #0xb
	mov r3, #1
	bl sub_0207DE04
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DC92:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	add r0, r4, #0
	bl sub_0207DE40
	str r0, [r4, #4]
	b _0207DD86
_0207DCA6:
	add r0, r5, #0
	bl sub_0207DF9C
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0207DE90
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DCC0:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0207DED8
	b _0207DD86
_0207DCD6:
	add r1, r5, #0
	mov r2, #0xb
	mov r3, #2
	bl sub_0207DE04
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DCE8:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	add r0, r4, #0
	bl sub_0207DE40
	str r0, [r4, #4]
	b _0207DD86
_0207DCFC:
	add r0, r5, #0
	bl sub_0207DF9C
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0207DEEC
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DD16:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0207DF2C
	b _0207DD86
_0207DD2C:
	add r1, r5, #0
	mov r2, #0xb
	mov r3, #3
	bl sub_0207DE04
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DD3E:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	add r0, r4, #0
	bl sub_0207DE40
	str r0, [r4, #4]
	b _0207DD86
_0207DD52:
	add r0, r5, #0
	bl sub_0207DF9C
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_0207DF40
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0207DD86
_0207DD6C:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _0207DD86
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_0207DF88
	b _0207DD86
_0207DD82:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0207DD86:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0207DD8C: .word 0x020F1B98
_0207DD90: .word 0x00040100
	thumb_func_end sub_0207DA28

	thumb_func_start sub_0207DD94
sub_0207DD94: ; 0x0207DD94
	push {r4, lr}
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018184
	mov r1, #0
	mov r2, #0xc
	str r0, [r4, #0]
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207DD94

	thumb_func_start sub_0207DDC0
sub_0207DDC0: ; 0x0207DDC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207DD94
	add r2, r0, #0
	ldr r0, [r2, #0]
	mov r1, #2
	str r1, [r0, #4]
	ldr r1, _0207DDDC ; =sub_0207DA28
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	nop
_0207DDDC: .word sub_0207DA28
	thumb_func_end sub_0207DDC0

	thumb_func_start sub_0207DDE0
sub_0207DDE0: ; 0x0207DDE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0207DD94
	add r2, r0, #0
	ldr r0, [r2, #0]
	mov r1, #1
	str r1, [r0, #4]
	ldr r1, _0207DE00 ; =sub_0207DA28
	add r0, r5, #0
	str r4, [r2, #8]
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_0207DE00: .word sub_0207DA28
	thumb_func_end sub_0207DDE0

	thumb_func_start sub_0207DE04
sub_0207DE04: ; 0x0207DE04
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #0xc
	add r4, r3, #0
	bl sub_02018144
	add r2, r0, #0
	strb r4, [r2]
	mov r0, #2
	strb r0, [r2, #1]
	ldr r0, _0207DE38 ; =0x020F1B64
	ldr r1, _0207DE3C ; =0x020F1B88
	ldrb r0, [r0, r4]
	strb r0, [r2, #2]
	mov r0, #0
	strb r0, [r2, #3]
	strb r0, [r2, #4]
	ldr r0, [r5, #0xc]
	str r0, [r2, #8]
	add r0, r5, #0
	str r2, [r6, #0x10]
	bl sub_0203CD84
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207DE38: .word 0x020F1B64
_0207DE3C: .word 0x020F1B88
	thumb_func_end sub_0207DE04

	thumb_func_start sub_0207DE40
sub_0207DE40: ; 0x0207DE40
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #3]
	cmp r1, #1
	bne _0207DE7E
	ldrb r1, [r0]
	cmp r1, #3
	bhi _0207DE82
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207DE5E: ; jump table
	.short _0207DE66 - _0207DE5E - 2 ; case 0
	.short _0207DE6C - _0207DE5E - 2 ; case 1
	.short _0207DE72 - _0207DE5E - 2 ; case 2
	.short _0207DE78 - _0207DE5E - 2 ; case 3
_0207DE66:
	mov r1, #0xe
	str r1, [r4, #4]
	b _0207DE82
_0207DE6C:
	mov r1, #0x14
	str r1, [r4, #4]
	b _0207DE82
_0207DE72:
	mov r1, #0x18
	str r1, [r4, #4]
	b _0207DE82
_0207DE78:
	mov r1, #0x1c
	str r1, [r4, #4]
	b _0207DE82
_0207DE7E:
	mov r1, #1
	str r1, [r4, #4]
_0207DE82:
	ldrb r0, [r0, #4]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	ldr r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end sub_0207DE40

	thumb_func_start sub_0207DE90
sub_0207DE90: ; 0x0207DE90
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x3c
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x3c
	bl memset
	add r0, r4, #0
	add r0, #0x38
	strb r6, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x39
	strb r1, [r0]
	ldr r0, [r5, #0xc]
	mov r1, #2
	str r0, [r4, #0x34]
	ldr r0, _0207DED0 ; =0x00000072
	bl sub_02006590
	ldr r1, _0207DED4 ; =0x020F1B68
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207DED0: .word 0x00000072
_0207DED4: .word 0x020F1B68
	thumb_func_end sub_0207DE90

	thumb_func_start sub_0207DED8
sub_0207DED8: ; 0x0207DED8
	push {r3, lr}
	bl sub_020181C4
	ldr r0, _0207DEE8 ; =0x00000072
	bl sub_02006514
	pop {r3, pc}
	nop
_0207DEE8: .word 0x00000072
	thumb_func_end sub_0207DED8

	thumb_func_start sub_0207DEEC
sub_0207DEEC: ; 0x0207DEEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x40
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl memset
	str r6, [r4, #0x3c]
	mov r0, #0
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	mov r1, #2
	str r0, [r4, #0x34]
	ldr r0, _0207DF24 ; =0x00000072
	bl sub_02006590
	ldr r1, _0207DF28 ; =0x020F1B78
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207DF24: .word 0x00000072
_0207DF28: .word 0x020F1B78
	thumb_func_end sub_0207DEEC

	thumb_func_start sub_0207DF2C
sub_0207DF2C: ; 0x0207DF2C
	push {r3, lr}
	bl sub_020181C4
	ldr r0, _0207DF3C ; =0x00000072
	bl sub_02006514
	pop {r3, pc}
	nop
_0207DF3C: .word 0x00000072
	thumb_func_end sub_0207DF2C

	thumb_func_start sub_0207DF40
sub_0207DF40: ; 0x0207DF40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x3c
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x3c
	bl MI_CpuFill8
	add r0, r4, #0
	add r0, #0x38
	strb r6, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x39
	strb r1, [r0]
	ldr r0, [r5, #0xc]
	mov r1, #2
	str r0, [r4, #0x34]
	ldr r0, _0207DF80 ; =0x00000072
	bl sub_02006590
	ldr r1, _0207DF84 ; =0x020F1BA8
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207DF80: .word 0x00000072
_0207DF84: .word 0x020F1BA8
	thumb_func_end sub_0207DF40

	thumb_func_start sub_0207DF88
sub_0207DF88: ; 0x0207DF88
	push {r3, lr}
	bl sub_020181C4
	ldr r0, _0207DF98 ; =0x00000072
	bl sub_02006514
	pop {r3, pc}
	nop
_0207DF98: .word 0x00000072
	thumb_func_end sub_0207DF88

	thumb_func_start sub_0207DF9C
sub_0207DF9C: ; 0x0207DF9C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x32
	bl sub_0202CFEC
	pop {r3, pc}
	thumb_func_end sub_0207DF9C

	.rodata


	.global Unk_020F1B64
Unk_020F1B64: ; 0x020F1B64
	.incbin "incbin/arm9_rodata.bin", 0xCF24, 0xCF28 - 0xCF24

	.global Unk_020F1B68
Unk_020F1B68: ; 0x020F1B68
	.incbin "incbin/arm9_rodata.bin", 0xCF28, 0xCF38 - 0xCF28

	.global Unk_020F1B78
Unk_020F1B78: ; 0x020F1B78
	.incbin "incbin/arm9_rodata.bin", 0xCF38, 0xCF48 - 0xCF38

	.global Unk_020F1B88
Unk_020F1B88: ; 0x020F1B88
	.incbin "incbin/arm9_rodata.bin", 0xCF48, 0xCF58 - 0xCF48

	.global Unk_020F1B98
Unk_020F1B98: ; 0x020F1B98
	.incbin "incbin/arm9_rodata.bin", 0xCF58, 0xCF68 - 0xCF58

	.global Unk_020F1BA8
Unk_020F1BA8: ; 0x020F1BA8
	.incbin "incbin/arm9_rodata.bin", 0xCF68, 0x10

