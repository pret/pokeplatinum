	.include "macros/function.inc"
	.include "include/unk_0208FCF8.inc"

	

	.text


	thumb_func_start sub_0208FCF8
sub_0208FCF8: ; 0x0208FCF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r5, #0
	add r4, r7, #4
_0208FD00:
	ldr r2, _0208FD3C ; =0x020F4ED0
	lsl r6, r5, #4
	lsl r3, r5, #3
	ldr r0, [r7, #0]
	add r1, r4, r6
	add r2, r2, r3
	bl sub_0201A8D4
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x24
	blo _0208FD00
	add r0, r7, #0
	bl sub_020902B0
	add r0, r7, #0
	bl sub_0208FEA4
	add r0, r7, #0
	bl sub_0208FF3C
	add r0, r7, #0
	bl sub_0208FFE0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208FD3C: .word 0x020F4ED0
	thumb_func_end sub_0208FCF8

	thumb_func_start sub_0208FD40
sub_0208FD40: ; 0x0208FD40
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0208FE14 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #7
	bhi _0208FE10
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208FD58: ; jump table
	.short _0208FD68 - _0208FD58 - 2 ; case 0
	.short _0208FD74 - _0208FD58 - 2 ; case 1
	.short _0208FD80 - _0208FD58 - 2 ; case 2
	.short _0208FD8C - _0208FD58 - 2 ; case 3
	.short _0208FDB0 - _0208FD58 - 2 ; case 4
	.short _0208FD98 - _0208FD58 - 2 ; case 5
	.short _0208FDA4 - _0208FD58 - 2 ; case 6
	.short _0208FDB0 - _0208FD58 - 2 ; case 7
_0208FD68:
	mov r0, #0x92
	mov r1, #6
	lsl r0, r0, #2
	ldr r5, _0208FE18 ; =0x020F4E20
	str r1, [r4, r0]
	b _0208FDCE
_0208FD74:
	mov r0, #0x92
	mov r1, #1
	lsl r0, r0, #2
	ldr r5, _0208FE1C ; =0x020F4DB0
	str r1, [r4, r0]
	b _0208FDCE
_0208FD80:
	mov r0, #0x92
	mov r1, #8
	lsl r0, r0, #2
	ldr r5, _0208FE20 ; =0x020F4E50
	str r1, [r4, r0]
	b _0208FDCE
_0208FD8C:
	mov r0, #0x92
	mov r1, #8
	lsl r0, r0, #2
	ldr r5, _0208FE24 ; =0x020F4E90
	str r1, [r4, r0]
	b _0208FDCE
_0208FD98:
	mov r0, #0x92
	mov r1, #6
	lsl r0, r0, #2
	ldr r5, _0208FE28 ; =0x020F4DF0
	str r1, [r4, r0]
	b _0208FDCE
_0208FDA4:
	mov r0, #0x92
	mov r1, #4
	lsl r0, r0, #2
	ldr r5, _0208FE2C ; =0x020F4DD0
	str r1, [r4, r0]
	b _0208FDCE
_0208FDB0:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _0208FDC0
	cmp r0, #4
	bne _0208FE10
_0208FDC0:
	mov r0, #0x92
	mov r1, #3
	lsl r0, r0, #2
	ldr r5, _0208FE30 ; =0x020F4DB8
	str r1, [r4, r0]
	b _0208FDCE
_0208FDCC:
	.byte 0xF8, 0xBD
_0208FDCE:
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0x13
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201A778
	mov r1, #0x91
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r0, [r4, r0]
	mov r6, #0
	cmp r0, #0
	bls _0208FE10
	add r7, r6, #0
_0208FDF0:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r0, [r4, #0]
	add r1, r1, r7
	add r2, r5, #0
	bl sub_0201A8D4
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r6, r6, #1
	add r5, #8
	add r7, #0x10
	cmp r6, r0
	blo _0208FDF0
_0208FE10:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208FE14: .word 0x000006A4
_0208FE18: .word 0x020F4E20
_0208FE1C: .word 0x020F4DB0
_0208FE20: .word 0x020F4E50
_0208FE24: .word 0x020F4E90
_0208FE28: .word 0x020F4DF0
_0208FE2C: .word 0x020F4DD0
_0208FE30: .word 0x020F4DB8
	thumb_func_end sub_0208FD40

	thumb_func_start sub_0208FE34
sub_0208FE34: ; 0x0208FE34
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _0208FE84 ; =0x000006A4
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bhi _0208FE80
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208FE4C: ; jump table
	.short _0208FE6E - _0208FE4C - 2 ; case 0
	.short _0208FE6E - _0208FE4C - 2 ; case 1
	.short _0208FE6E - _0208FE4C - 2 ; case 2
	.short _0208FE6E - _0208FE4C - 2 ; case 3
	.short _0208FE5C - _0208FE4C - 2 ; case 4
	.short _0208FE6E - _0208FE4C - 2 ; case 5
	.short _0208FE6E - _0208FE4C - 2 ; case 6
	.short _0208FE5C - _0208FE4C - 2 ; case 7
_0208FE5C:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _0208FE6E
	cmp r0, #4
	beq _0208FE6E
	pop {r3, pc}
_0208FE6E:
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201A928
_0208FE80:
	pop {r3, pc}
	nop
_0208FE84: .word 0x000006A4
	thumb_func_end sub_0208FE34

	thumb_func_start sub_0208FE88
sub_0208FE88: ; 0x0208FE88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0208FE34
	mov r4, #0
	add r5, r5, #4
_0208FE94:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x24
	blo _0208FE94
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208FE88

	thumb_func_start sub_0208FEA4
sub_0208FEA4: ; 0x0208FEA4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r4, #0x89
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	add r2, r4, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208FF30 ; =0x000F0E00
	add r2, #0x30
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r5, r4
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r4, #0
	add r0, #0x3e
	ldrb r1, [r5, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	bne _0208FF24
	add r0, r0, #1
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	bne _0208FF06
	ldr r2, _0208FF34 ; =0x00000688
	mov r1, #1
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r2, #0xc1
	add r0, r5, #0
	add r1, r5, r4
	lsl r2, r2, #0xa
	mov r3, #1
	bl sub_020900D8
	b _0208FF24
_0208FF06:
	cmp r0, #1
	bne _0208FF24
	ldr r2, _0208FF34 ; =0x00000688
	mov r1, #2
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r2, _0208FF38 ; =0x00050600
	add r0, r5, #0
	add r1, r5, r4
	mov r3, #1
	bl sub_020900D8
_0208FF24:
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0208FF30: .word 0x000F0E00
_0208FF34: .word 0x00000688
_0208FF38: .word 0x00050600
	thumb_func_end sub_0208FEA4

	thumb_func_start sub_0208FF3C
sub_0208FF3C: ; 0x0208FF3C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r6, #0x85
	add r5, r0, #0
	lsl r6, r6, #2
	add r0, r5, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r5, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208FFC6
	mov r0, #5
	str r0, [sp]
	ldr r0, _0208FFD0 ; =0x00000684
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r5, r6
	mov r3, #0
	bl sub_0200C578
	ldr r0, _0208FFD4 ; =0x00000688
	mov r1, #3
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	add r2, r6, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, #0x4e
	ldrb r2, [r5, r2]
	mov r0, #0x69
	lsl r0, r0, #4
	lsl r2, r2, #0x19
	ldr r0, [r5, r0]
	lsr r2, r2, #0x19
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x69
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208FFD8 ; =0x00010200
	ldr r2, _0208FFDC ; =0x00000694
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r5, r6
	mov r3, #0x10
	bl sub_0201D78C
_0208FFC6:
	add r0, r5, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208FFD0: .word 0x00000684
_0208FFD4: .word 0x00000688
_0208FFD8: .word 0x00010200
_0208FFDC: .word 0x00000694
	thumb_func_end sub_0208FF3C

	thumb_func_start sub_0208FFE0
sub_0208FFE0: ; 0x0208FFE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _0209005C ; =0x0000025E
	ldrh r2, [r5, r0]
	cmp r2, #0
	beq _02090028
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B70C
	ldr r0, _02090060 ; =0x00000688
	mov r1, #5
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x69
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	b _02090036
_02090028:
	ldr r2, _02090060 ; =0x00000688
	mov r1, #6
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_02090036:
	mov r2, #0x81
	lsl r2, r2, #2
	add r1, r5, r2
	add r0, r5, #0
	lsl r2, r2, #7
	mov r3, #0
	bl sub_020900D8
	add r0, r5, #0
	add r0, #0x64
	bl sub_0201A9A4
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	pop {r3, r4, r5, pc}
	nop
_0209005C: .word 0x0000025E
_02090060: .word 0x00000688
	thumb_func_end sub_0208FFE0

	thumb_func_start sub_02090064
sub_02090064: ; 0x02090064
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	ldr r3, _02090094 ; =0x000F0E00
	add r0, r5, #0
	mov r1, #0x23
	add r2, r4, #0
	bl sub_02090158
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	pop {r3, r4, r5, pc}
	nop
_02090094: .word 0x000F0E00
	thumb_func_end sub_02090064

	thumb_func_start sub_02090098
sub_02090098: ; 0x02090098
	push {r4, lr}
	mov r3, #0x93
	lsl r3, r3, #2
	add r1, r0, #0
	add r2, r3, #0
	add r2, #0x18
	ldr r0, [r1, r3]
	ldr r4, [r1, r2]
	ldr r2, [r0, #0xc]
	cmp r4, r2
	bne _020900CE
	add r2, r3, #0
	add r2, #0x48
	ldrb r2, [r1, r2]
	ldrb r0, [r0, #0x10]
	cmp r2, r0
	bne _020900CE
	ldr r2, _020900D4 ; =0x00000698
	add r3, #0xc
	ldr r0, [r1, r3]
	ldr r1, [r1, r2]
	bl sub_02023BE0
	cmp r0, #0
	bne _020900CE
	mov r0, #1
	pop {r4, pc}
_020900CE:
	mov r0, #0
	pop {r4, pc}
	nop
_020900D4: .word 0x00000698
	thumb_func_end sub_02090098

	thumb_func_start sub_020900D8
sub_020900D8: ; 0x020900D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #0
	beq _020900F0
	cmp r3, #1
	beq _020900F4
	cmp r3, #2
	beq _02090116
	b _0209013A
_020900F0:
	mov r3, #0
	b _0209013A
_020900F4:
	ldr r1, _02090154 ; =0x00000694
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r6, #0
	bl sub_0201C294
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r0, r0, r5
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	b _0209013A
_02090116:
	ldr r1, _02090154 ; =0x00000694
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r6, #0
	bl sub_0201C294
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r1, r0, r5
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r3, r0, #0x18
_0209013A:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r2, _02090154 ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, r6, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02090154: .word 0x00000694
	thumb_func_end sub_020900D8

	thumb_func_start sub_02090158
sub_02090158: ; 0x02090158
	push {r4, r5, r6, lr}
	add r6, r3, #0
	ldr r3, _02090180 ; =0x00000688
	add r5, r0, #0
	ldr r0, [r5, r3]
	add r4, r1, #0
	add r3, #0xc
	add r1, r2, #0
	ldr r2, [r5, r3]
	bl sub_0200B1B8
	add r2, r5, #4
	lsl r1, r4, #4
	add r1, r2, r1
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_020900D8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02090180: .word 0x00000688
	thumb_func_end sub_02090158

	thumb_func_start sub_02090184
sub_02090184: ; 0x02090184
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _020901CC ; =0x00000688
	add r6, r2, #0
	ldr r0, [r5, r0]
	add r7, r3, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	mov r1, #0
	add r2, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r3, r7, #0
	bl sub_0200B60C
	mov r1, #0x69
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020901CC: .word 0x00000688
	thumb_func_end sub_02090184

	thumb_func_start sub_020901D0
sub_020901D0: ; 0x020901D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	str r3, [sp, #0x10]
	mov r0, #0x91
	lsl r0, r0, #2
	lsl r7, r1, #4
	ldr r3, _020902A4 ; =0x00000688
	ldr r5, [r4, r0]
	ldr r0, [r4, r3]
	add r3, #0xc
	add r1, r2, #0
	ldr r2, [r4, r3]
	bl sub_0200B1B8
	ldr r1, _020902A8 ; =0x00000694
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r1, sp, #0x48
	ldrb r2, [r1]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r0, r1, r0
	str r1, [sp, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, sp, #0x4c
	ldrb r0, [r0]
	mov r1, #0
	ldr r2, _020902A8 ; =0x00000694
	str r0, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020902AC ; =0x00010200
	ldr r3, [sp, #0x14]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, r5, r7
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp]
	add r3, sp, #0x28
	ldrh r2, [r3, #0x14]
	ldrb r3, [r3, #0x1c]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl sub_02090184
	ldr r1, _020902A8 ; =0x00000694
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov ip, r0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020902AC ; =0x00010200
	ldr r2, _020902A8 ; =0x00000694
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x14]
	mov r6, ip
	ldr r2, [r4, r2]
	add r0, r5, r7
	sub r3, r3, r6
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp]
	add r3, sp, #0x28
	ldrh r2, [r3, #0x18]
	ldrb r3, [r3, #0x1c]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl sub_02090184
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020902AC ; =0x00010200
	ldr r2, _020902A8 ; =0x00000694
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	ldr r3, [sp, #0x18]
	add r0, r5, r7
	bl sub_0201D78C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020902A4: .word 0x00000688
_020902A8: .word 0x00000694
_020902AC: .word 0x00010200
	thumb_func_end sub_020901D0

	thumb_func_start sub_020902B0
sub_020902B0: ; 0x020902B0
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _020904B4 ; =0x000F0E00
	mov r1, #0
	mov r2, #7
	add r4, r0, #0
	str r1, [sp]
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x17
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x6d
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x7e
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x80
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x9d
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #6
	mov r2, #4
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #7
	mov r2, #8
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #8
	mov r2, #0xa
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xc
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xd
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xf
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x11
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0x13
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0x6e
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0x6f
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x70
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0x71
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #0x72
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0x73
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0x74
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #0x7f
	bl sub_02090158
	ldr r2, _020904B8 ; =0x00000688
	mov r1, #0x92
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r0, #2
	str r0, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _020904B4 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	add r2, #0x85
	add r0, r4, r2
	ldr r2, _020904BC ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #0x95
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x1a
	mov r2, #0x93
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x1b
	mov r2, #0x94
	bl sub_02090158
	mov r0, #2
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0xa2
	bl sub_02090158
	mov r0, #2
	str r0, [sp]
	ldr r3, _020904C0 ; =0x00010200
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #0xa0
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904C0 ; =0x00010200
	add r0, r4, #0
	mov r1, #0x1e
	mov r2, #0xb6
	bl sub_02090158
	mov r0, #0
	str r0, [sp]
	ldr r3, _020904B4 ; =0x000F0E00
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #0xb3
	bl sub_02090158
	add sp, #0x10
	pop {r4, pc}
	nop
_020904B4: .word 0x000F0E00
_020904B8: .word 0x00000688
_020904BC: .word 0x00000694
_020904C0: .word 0x00010200
	thumb_func_end sub_020902B0

	thumb_func_start sub_020904C4
sub_020904C4: ; 0x020904C4
	push {r4, lr}
	sub sp, #0x10
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #2
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #1
	mov r2, #0
	mov r3, #0xe
	bl sub_02019CB8
	ldr r0, _02090574 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #7
	bhi _02090570
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02090514: ; jump table
	.short _02090524 - _02090514 - 2 ; case 0
	.short _0209052E - _02090514 - 2 ; case 1
	.short _02090538 - _02090514 - 2 ; case 2
	.short _0209054C - _02090514 - 2 ; case 3
	.short _02090542 - _02090514 - 2 ; case 4
	.short _02090556 - _02090514 - 2 ; case 5
	.short _02090560 - _02090514 - 2 ; case 6
	.short _0209056A - _02090514 - 2 ; case 7
_02090524:
	add r0, r4, #0
	bl sub_02090578
	add sp, #0x10
	pop {r4, pc}
_0209052E:
	add r0, r4, #0
	bl sub_020908CC
	add sp, #0x10
	pop {r4, pc}
_02090538:
	add r0, r4, #0
	bl sub_0209093C
	add sp, #0x10
	pop {r4, pc}
_02090542:
	add r0, r4, #0
	bl sub_02090BDC
	add sp, #0x10
	pop {r4, pc}
_0209054C:
	add r0, r4, #0
	bl sub_02090CD4
	add sp, #0x10
	pop {r4, pc}
_02090556:
	add r0, r4, #0
	bl sub_02090D90
	add sp, #0x10
	pop {r4, pc}
_02090560:
	add r0, r4, #0
	bl sub_02090E4C
	add sp, #0x10
	pop {r4, pc}
_0209056A:
	add r0, r4, #0
	bl sub_02090EC8
_02090570:
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02090574: .word 0x000006A4
	thumb_func_end sub_020904C4

	thumb_func_start sub_02090578
sub_02090578: ; 0x02090578
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x74
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x84
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0x94
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xa4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xb4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xc4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xd4
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xe4
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x40
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x50
	bl sub_0201ADA4
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldrh r1, [r4, r1]
	ldr r0, [r0, #0x1c]
	bl sub_0207A294
	add r2, r0, #0
	beq _0209063A
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r3, #3
	bl sub_02090184
	b _02090648
_0209063A:
	ldr r2, _020907F0 ; =0x00000688
	mov r1, #0x16
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
_02090648:
	mov r1, #0x2a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	bne _02090664
	sub r1, #0x5c
	ldr r1, [r4, r1]
	ldr r2, _020907F4 ; =0x00010200
	add r0, r4, #0
	mov r3, #2
	bl sub_020900D8
	b _02090672
_02090664:
	sub r1, #0x5c
	ldr r1, [r4, r1]
	ldr r2, _020907F8 ; =0x00050600
	add r0, r4, #0
	mov r3, #2
	bl sub_020900D8
_02090672:
	mov r1, #0x25
	lsl r1, r1, #4
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020907F4 ; =0x00010200
	add r2, #0xc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r3, #0
	ldrb r3, [r3, #0x17]
	ldr r2, [r4, r2]
	add r0, #0x10
	lsl r3, r3, #3
	sub r3, r3, r5
	lsr r3, r3, #1
	bl sub_0201D78C
	mov r1, #0x96
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r5, #0x91
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	add r1, r2, #0
	add r1, #0x27
	ldrb r1, [r1]
	lsl r1, r1, #3
	sub r0, r1, r0
	lsr r3, r0, #1
	add r0, r5, #0
	add r0, #0x50
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _020906F2
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	add r2, #0x20
	str r1, [sp, #0xc]
	add r5, #0x14
	add r0, r2, #0
	ldr r2, [r4, r5]
	bl sub_0201D78C
	b _0209070C
_020906F2:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020907F8 ; =0x00050600
	add r2, #0x20
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r5, #0x14
	add r0, r2, #0
	ldr r2, [r4, r5]
	bl sub_0201D78C
_0209070C:
	mov r0, #2
	mov r2, #0x99
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	lsl r2, r2, #0x10
	mov r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #5
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _020907F4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x30
	mov r3, #2
	bl sub_020900D8
	mov r0, #1
	mov r2, #0x9a
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x12
	mov r3, #7
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _020907F4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x40
	mov r3, #2
	bl sub_020900D8
	ldr r3, _020907FC ; =0x00000262
	ldrb r0, [r4, r3]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x64
	bhs _02090784
	mov r0, #1
	add r2, r3, #0
	str r0, [sp]
	add r2, #0xe
	ldr r5, [r4, r2]
	add r2, r3, #6
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x15
	sub r2, r5, r2
	mov r3, #7
	bl sub_02090184
	b _02090794
_02090784:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0
	mov r3, #7
	bl sub_02090184
_02090794:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _020907F4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x50
	mov r3, #2
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x40
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020907F0: .word 0x00000688
_020907F4: .word 0x00010200
_020907F8: .word 0x00050600
_020907FC: .word 0x00000262
	thumb_func_end sub_02090578

	thumb_func_start sub_02090800
sub_02090800: ; 0x02090800
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x13
	bl sub_02092494
	add r4, r0, #0
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq _02090834
	ldr r0, [r4, #0x14]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02090834:
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02090856
	ldr r0, [r4, #0x1c]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02090856:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	beq _02090878
	ldr r0, [r4, #0x24]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_02090878:
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0209089A
	ldr r0, [r4, #0x2c]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_0209089A:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _020908BC
	ldr r0, [r4, #0x34]
	mov r1, #0
	sub r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020908C8 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_020908BC:
	add r0, r4, #0
	bl sub_0209282C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_020908C8: .word 0x00010200
	thumb_func_end sub_02090800

	thumb_func_start sub_020908CC
sub_020908CC: ; 0x020908CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x14
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0208DD48
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02090098
	add r7, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r1, [r1, #0x11]
	cmp r1, #2
	bne _02090924
	mov r0, #0x13
	bl sub_02073C74
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020774C8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02090800
	add r0, r4, #0
	bl sub_020181C4
	b _02090930
_02090924:
	sub r0, #8
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02090800
_02090930:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020908CC

	thumb_func_start sub_0209093C
sub_0209093C: ; 0x0209093C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, #0x24
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xf4
	bl sub_0201A9A4
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x49
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x40
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x50
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x60
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x70
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201C294
	mov r1, #0x76
	str r1, [sp]
	mov r1, #0x9d
	lsl r1, r1, #2
	ldrh r2, [r4, r1]
	lsl r0, r0, #0x1a
	add r1, r1, #2
	str r2, [sp, #4]
	ldrh r1, [r4, r1]
	lsr r0, r0, #0x18
	mov r2, #0x75
	str r1, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r1, #0
	add r0, r4, #0
	mov r3, #0x77
	str r1, [sp, #0x14]
	bl sub_020901D0
	mov r0, #0
	mov r2, #0x9e
	str r0, [sp]
	lsl r2, r2, #2
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x78
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x10
	mov r3, #1
	bl sub_020900D8
	mov r0, #0
	str r0, [sp]
	ldr r2, _02090BC8 ; =0x0000027A
	add r0, r4, #0
	ldrh r2, [r4, r2]
	mov r1, #0x79
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x20
	mov r3, #1
	bl sub_020900D8
	mov r0, #0
	mov r2, #0x9f
	str r0, [sp]
	lsl r2, r2, #2
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x7a
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x30
	mov r3, #1
	bl sub_020900D8
	mov r0, #0
	str r0, [sp]
	ldr r2, _02090BCC ; =0x0000027E
	add r0, r4, #0
	ldrh r2, [r4, r2]
	mov r1, #0x7b
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x40
	mov r3, #1
	bl sub_020900D8
	mov r0, #0
	mov r2, #0xa
	str r0, [sp]
	lsl r2, r2, #6
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x7c
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x50
	mov r3, #1
	bl sub_020900D8
	ldr r2, _02090BD0 ; =0x00000282
	mov r0, #0x69
	lsl r0, r0, #4
	ldrb r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B6A0
	ldr r0, _02090BD4 ; =0x00000688
	mov r1, #0x7d
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x69
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x60
	mov r3, #0
	bl sub_020900D8
	mov r2, #0x99
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x13
	bl sub_0200B144
	ldr r1, _02090BD0 ; =0x00000282
	ldr r2, _02090BD8 ; =0x00000694
	ldrb r1, [r4, r1]
	ldr r2, [r4, r2]
	add r5, r0, #0
	bl sub_0200B1B8
	add r0, r5, #0
	bl sub_0200B190
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090BC4 ; =0x00010200
	add r0, r4, #0
	add r1, #0x70
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x40
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x60
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x70
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02090BC4: .word 0x00010200
_02090BC8: .word 0x0000027A
_02090BCC: .word 0x0000027E
_02090BD0: .word 0x00000282
_02090BD4: .word 0x00000688
_02090BD8: .word 0x00000694
	thumb_func_end sub_0209093C

	thumb_func_start sub_02090BDC
sub_02090BDC: ; 0x02090BDC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x34
	bl sub_0201A9A4
	mov r0, #0x59
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _02090C02
	cmp r0, #4
	bne _02090CBA
_02090C02:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	ldr r2, _02090CC0 ; =0x00000688
	mov r1, #0xa5
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090CC4 ; =0x000F0E00
	add r0, r4, #0
	add r1, #0x10
	mov r3, #0
	bl sub_020900D8
	ldr r1, _02090CC8 ; =0x0000029B
	ldr r2, _02090CC0 ; =0x00000688
	ldrb r1, [r4, r1]
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	add r1, #0xa6
	bl sub_0200B1B8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02090CCC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r2, _02090CD0 ; =0x00000694
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	add r0, #0x10
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldrb r1, [r1, #0x12]
	cmp r1, #3
	bne _02090CBA
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	ldr r2, _02090CC0 ; =0x00000688
	mov r1, #0xa3
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090CC4 ; =0x000F0E00
	add r0, r4, #0
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl sub_0208F6DC
_02090CBA:
	add sp, #0x10
	pop {r4, pc}
	nop
_02090CC0: .word 0x00000688
_02090CC4: .word 0x000F0E00
_02090CC8: .word 0x0000029B
_02090CCC: .word 0x00010200
_02090CD0: .word 0x00000694
	thumb_func_end sub_02090BDC

	thumb_func_start sub_02090CD4
sub_02090CD4: ; 0x02090CD4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x44
	bl sub_0201A9A4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _02090CF4
	add r0, r4, #0
	mov r1, #0x9b
	bl sub_02090064
	b _02090CFC
_02090CF4:
	add r0, r4, #0
	mov r1, #0x81
	bl sub_02090064
_02090CFC:
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0
	bl sub_02091188
	add r0, r4, #0
	mov r1, #1
	bl sub_02091188
	add r0, r4, #0
	mov r1, #2
	bl sub_02091188
	add r0, r4, #0
	mov r1, #3
	bl sub_02091188
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02090CD4

	thumb_func_start sub_02090D90
sub_02090D90: ; 0x02090D90
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x54
	bl sub_0201A9A4
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _02090DB0
	add r0, r4, #0
	mov r1, #0x9f
	bl sub_02090064
	b _02090DB8
_02090DB0:
	add r0, r4, #0
	mov r1, #0x9e
	bl sub_02090064
_02090DB8:
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0
	bl sub_02091188
	add r0, r4, #0
	mov r1, #1
	bl sub_02091188
	add r0, r4, #0
	mov r1, #2
	bl sub_02091188
	add r0, r4, #0
	mov r1, #3
	bl sub_02091188
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02090D90

	thumb_func_start sub_02090E4C
sub_02090E4C: ; 0x02090E4C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	ldr r2, _02090EC0 ; =0x000006B1
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #0xb7
	mov r3, #3
	bl sub_02090184
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090EC4 ; =0x00010200
	add r0, r4, #0
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A9A4
	ldr r0, _02090EC0 ; =0x000006B1
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02090EBA
	add r0, r4, #0
	mov r1, #0xb4
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
_02090EBA:
	add sp, #4
	pop {r3, r4, pc}
	nop
_02090EC0: .word 0x000006B1
_02090EC4: .word 0x00010200
	thumb_func_end sub_02090E4C

	thumb_func_start sub_02090EC8
sub_02090EC8: ; 0x02090EC8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #0xa1
	bl sub_02090064
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_0208F6DC
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _02090EFC
	cmp r0, #4
	bne _02090F6A
_02090EFC:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	ldr r2, _02090F70 ; =0x00000688
	mov r1, #0xa5
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02090F74 ; =0x000F0E00
	add r0, r4, #0
	add r1, #0x10
	mov r3, #0
	bl sub_020900D8
	ldr r1, _02090F78 ; =0x0000029B
	ldr r2, _02090F70 ; =0x00000688
	ldrb r1, [r4, r1]
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	add r1, #0xa6
	bl sub_0200B1B8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02090F7C ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r2, _02090F80 ; =0x00000694
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	add r0, #0x10
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl sub_0201A9A4
_02090F6A:
	add sp, #0x10
	pop {r4, pc}
	nop
_02090F70: .word 0x00000688
_02090F74: .word 0x000F0E00
_02090F78: .word 0x0000029B
_02090F7C: .word 0x00010200
_02090F80: .word 0x00000694
	thumb_func_end sub_02090EC8

	thumb_func_start sub_02090F84
sub_02090F84: ; 0x02090F84
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, _020910D8 ; =0x00000688
	mov r1, #0xba
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	mov r2, #0x69
	add r4, r0, #0
	str r1, [sp]
	mov r0, #1
	lsl r2, r2, #4
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	add r2, #0x21
	ldrb r2, [r5, r2]
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x69
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	ldr r1, _020910DC ; =0x00000694
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x38
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020910E0 ; =0x00010200
	ldr r2, _020910DC ; =0x00000694
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r0, #0x10
	add r3, r4, #0
	bl sub_0201D78C
	ldr r0, _020910D8 ; =0x00000688
	mov r1, #0xb9
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r4, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020910E0 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, r4, #0
	add r0, #0x10
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _020910D8 ; =0x00000688
	mov r1, #0xb8
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0
	mov r2, #0x69
	add r6, r0, #0
	lsl r2, r2, #4
	add r3, r2, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	add r2, #0x20
	add r3, #0x1f
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	lsl r2, r2, #2
	add r2, r3, r2
	add r2, r2, #1
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x69
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	ldr r1, _020910DC ; =0x00000694
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r4, r0
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r3, r0, #0x18
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020910E0 ; =0x00010200
	ldr r2, _020910DC ; =0x00000694
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r0, #0x10
	bl sub_0201D78C
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x10
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020910D8: .word 0x00000688
_020910DC: .word 0x00000694
_020910E0: .word 0x00010200
	thumb_func_end sub_02090F84

	thumb_func_start sub_020910E4
sub_020910E4: ; 0x020910E4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, _02091178 ; =0x000006B2
	mov r1, #3
	ldrb r0, [r4, r0]
	bl sub_020923C0
	ldr r2, _0209117C ; =0x0000068C
	add r1, r0, #0
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02091180 ; =0x000F0E00
	add r0, r4, #0
	add r1, #0x20
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, _02091178 ; =0x000006B2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0x20]
	bl sub_02092424
	ldr r2, _0209117C ; =0x0000068C
	add r1, r0, #0
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _02091184 ; =0x00010200
	add r0, r4, #0
	add r1, #0x30
	mov r3, #0
	bl sub_020900D8
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl sub_0201A9A4
	pop {r4, pc}
	; .align 2, 0
_02091178: .word 0x000006B2
_0209117C: .word 0x0000068C
_02091180: .word 0x000F0E00
_02091184: .word 0x00010200
	thumb_func_end sub_020910E4

	thumb_func_start sub_02091188
sub_02091188: ; 0x02091188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x91
	add r7, r1, #0
	lsl r0, r0, #2
	lsl r6, r7, #4
	ldr r4, [r5, r0]
	cmp r7, #4
	beq _020911BA
	lsl r1, r7, #1
	add r2, r5, r1
	add r1, r0, #0
	add r1, #0x40
	ldrh r1, [r2, r1]
	add r2, r0, #0
	add r2, #0x48
	str r1, [sp, #0x20]
	add r1, r5, r7
	ldrb r2, [r1, r2]
	add r0, #0x4c
	str r2, [sp, #0x1c]
	ldrb r0, [r1, r0]
	str r0, [sp, #0x18]
	b _020911CC
_020911BA:
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	ldrh r0, [r0, #0x18]
	str r0, [sp, #0x20]
	bl sub_020790DC
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_020911CC:
	ldr r2, _02091290 ; =0x0000069C
	ldr r1, [sp, #0x20]
	ldr r0, [r5, r2]
	sub r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #2
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02091294 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	ldr r2, _02091298 ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, r6
	mov r3, #1
	bl sub_0201D78C
	ldr r0, [sp, #0x20]
	ldr r2, _0209129C ; =0x00000688
	cmp r0, #0
	beq _02091250
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x87
	bl sub_0200B1B8
	mov r3, #0x10
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020912A0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r2, _02091298 ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, r6
	bl sub_0201D78C
	add r0, r7, #0
	add r0, #0x8d
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r7, #0x88
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x3c
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r2, #0x75
	add r3, r7, #0
	bl sub_020901D0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02091250:
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x99
	bl sub_0200B1B8
	ldr r1, _02091298 ; =0x00000694
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020912A0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, r6
	lsr r4, r3, #1
	mov r3, #0x3c
	ldr r2, _02091298 ; =0x00000694
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	sub r3, r3, r4
	bl sub_0201D78C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02091290: .word 0x0000069C
_02091294: .word 0x000F0E00
_02091298: .word 0x00000694
_0209129C: .word 0x00000688
_020912A0: .word 0x00010200
	thumb_func_end sub_02091188

	thumb_func_start sub_020912A4
sub_020912A4: ; 0x020912A4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	bl sub_0201A9A4
	mov r0, #0x69
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x50
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x60
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x70
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #2
	bl sub_020790C4
	add r2, r0, #0
	cmp r2, #1
	bhi _02091312
	ldr r2, _020913C8 ; =0x00000688
	mov r1, #0x9a
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	b _02091320
_02091312:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x96
	mov r3, #3
	bl sub_02090184
_02091320:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, _020913CC ; =0x00010200
	add r0, r5, #0
	add r1, #0x50
	mov r3, #2
	bl sub_020900D8
	add r0, r4, #0
	mov r1, #4
	bl sub_020790C4
	add r2, r0, #0
	bne _0209134E
	ldr r2, _020913C8 ; =0x00000688
	mov r1, #0x9a
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	b _0209135C
_0209134E:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x97
	mov r3, #3
	bl sub_02090184
_0209135C:
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, _020913CC ; =0x00010200
	add r0, r5, #0
	add r1, #0x60
	mov r3, #2
	bl sub_020900D8
	ldr r2, _020913D0 ; =0x00000286
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x13
	bl sub_0200B144
	ldr r2, _020913D4 ; =0x00000694
	add r1, r4, #0
	ldr r2, [r5, r2]
	add r6, r0, #0
	bl sub_0200B1B8
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, _020913CC ; =0x00010200
	add r0, r5, #0
	add r1, #0x70
	mov r3, #0
	bl sub_020900D8
	add r0, r6, #0
	bl sub_0200B190
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x60
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x70
	bl sub_0201A9A4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020913C8: .word 0x00000688
_020913CC: .word 0x00010200
_020913D0: .word 0x00000286
_020913D4: .word 0x00000694
	thumb_func_end sub_020912A4

	thumb_func_start sub_020913D8
sub_020913D8: ; 0x020913D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x69
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x60
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x70
	bl sub_0201AD10
	pop {r4, pc}
	thumb_func_end sub_020913D8

	thumb_func_start sub_02091420
sub_02091420: ; 0x02091420
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldrh r1, [r1, #0x18]
	cmp r1, #0
	beq _02091452
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x40
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #4
	bl sub_02091188
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x40
	bl sub_0201A9A4
	pop {r4, pc}
_02091452:
	sub r0, #0xc8
	add r0, r4, r0
	bl sub_0201A9A4
	pop {r4, pc}
	thumb_func_end sub_02091420

	thumb_func_start sub_0209145C
sub_0209145C: ; 0x0209145C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0201C3C0
	pop {r4, pc}
	thumb_func_end sub_0209145C

	thumb_func_start sub_02091474
sub_02091474: ; 0x02091474
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _020914F4 ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _020914F4 ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, _020914F4 ; =0x000006A5
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_02091188
	ldr r1, _020914F4 ; =0x000006A5
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl sub_02091188
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _020914F4 ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _020914F4 ; =0x000006A5
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	pop {r4, pc}
	nop
_020914F4: .word 0x000006A5
	thumb_func_end sub_02091474

	thumb_func_start sub_020914F8
sub_020914F8: ; 0x020914F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02091564 ; =0x000006A4
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _02091532
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x60
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x70
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r4, #0x70
	b _0209153A
_02091532:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r4, #0x50
_0209153A:
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r2, _02091568 ; =0x00000688
	mov r1, #0x9c
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r2, _0209156C ; =0x00010200
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_020900D8
	add r0, r4, #0
	bl sub_0201A9A4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02091564: .word 0x000006A4
_02091568: .word 0x00000688
_0209156C: .word 0x00010200
	thumb_func_end sub_020914F8

	thumb_func_start sub_02091570
sub_02091570: ; 0x02091570
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r0, #0x50
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020790C4
	bl sub_0209577C
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd2
	mov r3, #0x13
	bl sub_0200B144
	ldr r2, _020915EC ; =0x00000694
	add r1, r4, #0
	ldr r2, [r5, r2]
	add r6, r0, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020915F0 ; =0x00010200
	ldr r2, _020915EC ; =0x00000694
	str r0, [sp, #8]
	mov r0, #0x91
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r0, #0x50
	add r3, r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_0200B190
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x50
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020915EC: .word 0x00000694
_020915F0: .word 0x00010200
	thumb_func_end sub_02091570

	thumb_func_start sub_020915F4
sub_020915F4: ; 0x020915F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl sub_0201AD10
	pop {r4, pc}
	thumb_func_end sub_020915F4

	thumb_func_start sub_02091610
sub_02091610: ; 0x02091610
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #4
	bgt _02091634
	cmp r1, #0
	blt _02091652
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0209162A: ; jump table
	.short _0209163A - _0209162A - 2 ; case 0
	.short _0209163E - _0209162A - 2 ; case 1
	.short _02091642 - _0209162A - 2 ; case 2
	.short _02091646 - _0209162A - 2 ; case 3
	.short _0209164A - _0209162A - 2 ; case 4
_02091634:
	cmp r1, #0xfe
	beq _0209164E
	b _02091652
_0209163A:
	mov r5, #0xac
	b _02091654
_0209163E:
	mov r5, #0xae
	b _02091654
_02091642:
	mov r5, #0xaf
	b _02091654
_02091646:
	mov r5, #0xb0
	b _02091654
_0209164A:
	mov r5, #0xad
	b _02091654
_0209164E:
	mov r5, #0xb1
	b _02091654
_02091652:
	mov r5, #0xb2
_02091654:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	ldr r2, _020916A4 ; =0x000003E2
	add r6, #0x20
	add r0, r6, #0
	mov r1, #1
	mov r3, #0xd
	bl sub_0200E060
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _020916A8 ; =0x00000688
	add r1, r5, #0
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020916AC ; =0x0001020F
	ldr r2, _020916B0 ; =0x00000694
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, r6, #0
	mov r1, #1
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_020916A4: .word 0x000003E2
_020916A8: .word 0x00000688
_020916AC: .word 0x0001020F
_020916B0: .word 0x00000694
	thumb_func_end sub_02091610

	.rodata


	.global Unk_020F4DB0
Unk_020F4DB0: ; 0x020F4DB0
	.incbin "incbin/arm9_rodata.bin", 0x10170, 0x10178 - 0x10170

	.global Unk_020F4DB8
Unk_020F4DB8: ; 0x020F4DB8
	.incbin "incbin/arm9_rodata.bin", 0x10178, 0x10190 - 0x10178

	.global Unk_020F4DD0
Unk_020F4DD0: ; 0x020F4DD0
	.incbin "incbin/arm9_rodata.bin", 0x10190, 0x101B0 - 0x10190

	.global Unk_020F4DF0
Unk_020F4DF0: ; 0x020F4DF0
	.incbin "incbin/arm9_rodata.bin", 0x101B0, 0x101E0 - 0x101B0

	.global Unk_020F4E20
Unk_020F4E20: ; 0x020F4E20
	.incbin "incbin/arm9_rodata.bin", 0x101E0, 0x10210 - 0x101E0

	.global Unk_020F4E50
Unk_020F4E50: ; 0x020F4E50
	.incbin "incbin/arm9_rodata.bin", 0x10210, 0x10250 - 0x10210

	.global Unk_020F4E90
Unk_020F4E90: ; 0x020F4E90
	.incbin "incbin/arm9_rodata.bin", 0x10250, 0x10290 - 0x10250

	.global Unk_020F4ED0
Unk_020F4ED0: ; 0x020F4ED0
	.incbin "incbin/arm9_rodata.bin", 0x10290, 0x120

