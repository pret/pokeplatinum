	.include "macros/function.inc"
	.include "include/ov13_02227BDC.inc"

	

	.text


	thumb_func_start ov13_02227BDC
ov13_02227BDC: ; 0x02227BDC
	push {r4, lr}
	add r4, r0, #0
	bl ov13_02227C08
	add r0, r4, #0
	bl ov13_02227C54
	add r0, r4, #0
	bl ov13_02227DE8
	add r0, r4, #0
	bl ov13_02227F7C
	add r0, r4, #0
	bl ov13_02228070
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02227BDC

	thumb_func_start ov13_02227C08
ov13_02227C08: ; 0x02227C08
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02227C50 ; =0x02229BE4
	add r2, sp, #0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	add r4, r0, #0
	bl sub_0200C704
	mov r1, #0xc3
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0xc
	bl sub_0200C7C0
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, sp, #0
	bl sub_0200CB30
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02227C50: .word 0x02229BE4
	thumb_func_end ov13_02227C08

	thumb_func_start ov13_02227C54
ov13_02227C54: ; 0x02227C54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r1, [r6, #0]
	mov r0, #0x10
	ldr r1, [r1, #0xc]
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	str r0, [sp, #0x18]
	mov r4, #0
_02227C72:
	ldr r0, _02227D0C ; =0x0000B4B7
	add r5, r4, r0
	mov r0, #1
	add r1, r0, #0
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0xc3
	str r5, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CC3C
	mov r0, #1
	mov r1, #2
	bl sub_0207CE78
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r3, #0xc3
	str r5, [sp, #0x14]
	lsl r3, r3, #2
	ldr r0, [r6, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [r6, r3]
	mov r1, #3
	bl sub_0200CDC4
	add r4, r4, #1
	cmp r4, #6
	blo _02227C72
	bl sub_0207CF40
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02227D0C ; =0x0000B4B7
	mov r1, #0xc3
	str r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CE24
	bl sub_0207CF44
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02227D0C ; =0x0000B4B7
	mov r1, #0xc3
	str r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CE54
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02227D0C: .word 0x0000B4B7
	thumb_func_end ov13_02227C54

	thumb_func_start ov13_02227D10
ov13_02227D10: ; 0x02227D10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r4, r2, #0
	bl ov16_0223E010
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #0xc3
	str r4, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	mov r2, #0x10
	bl sub_0200D948
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02227D10

	thumb_func_start ov13_02227D48
ov13_02227D48: ; 0x02227D48
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #2
	add r4, r2, #0
	bl sub_0207CE78
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r4, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	ldr r0, [r5, #8]
	ldr r3, [r3, #0xc]
	mov r1, #0x10
	bl sub_02003050
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov13_02227D48

	thumb_func_start ov13_02227D78
ov13_02227D78: ; 0x02227D78
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #0]
	bl ov16_0223E010
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	mov r1, #0x14
	ldr r3, _02227DD4 ; =0x02229CCC
	mul r1, r4
	ldr r3, [r3, r1]
	str r2, [sp, #0xc]
	str r3, [sp, #8]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r3, _02227DD8 ; =0x02229CBC
	str r2, [sp, #0x30]
	ldr r3, [r3, r1]
	add r2, sp, #0
	str r3, [sp, #0x14]
	ldr r3, _02227DDC ; =0x02229CC0
	ldr r3, [r3, r1]
	str r3, [sp, #0x18]
	ldr r3, _02227DE0 ; =0x02229CC4
	ldr r3, [r3, r1]
	str r3, [sp, #0x1c]
	ldr r3, _02227DE4 ; =0x02229CC8
	ldr r1, [r3, r1]
	str r1, [sp, #0x20]
	mov r1, #1
	str r1, [sp, #0x2c]
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	bl sub_0200CE6C
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02227DD4: .word 0x02229CCC
_02227DD8: .word 0x02229CBC
_02227DDC: .word 0x02229CC0
_02227DE0: .word 0x02229CC4
_02227DE4: .word 0x02229CC8
	thumb_func_end ov13_02227D78

	thumb_func_start ov13_02227DE8
ov13_02227DE8: ; 0x02227DE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0x31
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_02227DF4:
	add r0, r6, #0
	add r1, r4, #0
	bl ov13_02227D78
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _02227DF4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02227DE8

	thumb_func_start ov13_02227E08
ov13_02227E08: ; 0x02227E08
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	mov r6, #0x31
	str r0, [sp]
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #4
_02227E1E:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _02227E1E
	add r0, r7, #0
	bl ov13_02227FDC
	add r0, r7, #0
	bl ov13_022280C8
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r0, [sp]
	ldr r1, [r7, r1]
	bl sub_0200D0B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02227E08

	thumb_func_start ov13_02227E48
ov13_02227E48: ; 0x02227E48
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #1
	add r6, r0, #0
	bl sub_0200D3F4
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov13_02227E48

	thumb_func_start ov13_02227E68
ov13_02227E68: ; 0x02227E68
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x31
	str r0, [sp]
	add r7, r1, #0
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #4
_02227E76:
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _02227E76
	cmp r7, #0
	beq _02227E94
	cmp r7, #1
	beq _02227E9C
	cmp r7, #2
	beq _02227EA4
	pop {r3, r4, r5, r6, r7, pc}
_02227E94:
	ldr r0, [sp]
	bl ov13_02227EAC
	pop {r3, r4, r5, r6, r7, pc}
_02227E9C:
	ldr r0, [sp]
	bl ov13_02227EE0
	pop {r3, r4, r5, r6, r7, pc}
_02227EA4:
	ldr r0, [sp]
	bl ov13_02227F38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02227E68

	thumb_func_start ov13_02227EAC
ov13_02227EAC: ; 0x02227EAC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldrh r1, [r1, #0x20]
	cmp r1, #0
	beq _02227EDA
	ldr r2, _02227EDC ; =0x0000B4B7
	bl ov13_02227D10
	ldr r1, [r4, #0]
	ldr r3, _02227EDC ; =0x0000B4B7
	ldrh r1, [r1, #0x20]
	add r0, r4, #0
	mov r2, #0
	bl ov13_02227D48
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x18
	mov r2, #0xb2
	bl ov13_02227E48
_02227EDA:
	pop {r4, pc}
	; .align 2, 0
_02227EDC: .word 0x0000B4B7
	thumb_func_end ov13_02227EAC

	thumb_func_start ov13_02227EE0
ov13_02227EE0: ; 0x02227EE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, _02227F30 ; =0x02229C44
	mov r4, #0
	add r7, r5, #0
_02227EEA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02227BA8
	str r0, [sp]
	cmp r0, #0
	beq _02227F22
	ldr r2, _02227F34 ; =0x0000B4B7
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, r2
	bl ov13_02227D10
	ldr r3, _02227F34 ; =0x0000B4B7
	lsl r2, r4, #0x10
	ldr r1, [sp]
	add r0, r5, #0
	lsr r2, r2, #0x10
	add r3, r4, r3
	bl ov13_02227D48
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	ldr r1, [r6, #0]
	ldr r2, [r6, #4]
	bl ov13_02227E48
_02227F22:
	add r4, r4, #1
	add r6, #8
	add r7, r7, #4
	cmp r4, #6
	blo _02227EEA
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227F30: .word 0x02229C44
_02227F34: .word 0x0000B4B7
	thumb_func_end ov13_02227EE0

	thumb_func_start ov13_02227F38
ov13_02227F38: ; 0x02227F38
	push {r3, r4, r5, lr}
	ldr r1, _02227F74 ; =0x0000114D
	add r4, r0, #0
	ldrb r1, [r4, r1]
	ldr r2, [r4, #0]
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov13_02227BA8
	add r5, r0, #0
	ldr r2, _02227F78 ; =0x0000B4B7
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_02227D10
	ldr r3, _02227F78 ; =0x0000B4B7
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov13_02227D48
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x28
	mov r2, #0x2c
	bl ov13_02227E48
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02227F74: .word 0x0000114D
_02227F78: .word 0x0000B4B7
	thumb_func_end ov13_02227F38

	thumb_func_start ov13_02227F7C
ov13_02227F7C: ; 0x02227F7C
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	ldr r1, _02227FD8 ; =0x0000B4BE
	add r4, r0, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r1, r1, #5
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0xc3
	ldr r3, [r5, #0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, #8]
	ldr r3, [r3, #0xc]
	bl ov16_0226DB7C
	ldr r3, _02227FD8 ; =0x0000B4BE
	mov r1, #0xc3
	str r3, [sp]
	sub r0, r3, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	bl ov16_0226DC24
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	bl ov13_02228A64
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02227FD8: .word 0x0000B4BE
	thumb_func_end ov13_02227F7C

	thumb_func_start ov13_02227FDC
ov13_02227FDC: ; 0x02227FDC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ov13_02228A58
	bl ov16_0226DCA8
	ldr r3, _02228004 ; =0x0000B4B9
	mov r0, #0xc3
	add r1, r3, #5
	str r3, [sp]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov16_0226DBFC
	add sp, #4
	pop {r3, r4, pc}
	nop
_02228004: .word 0x0000B4B9
	thumb_func_end ov13_02227FDC

	thumb_func_start ov13_02228008
ov13_02228008: ; 0x02228008
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _02228048 ; =0x02229BC8
	lsl r2, r4, #2
	ldr r0, [r5, #0x34]
	ldr r1, [r1, r2]
	bl ov13_02228A9C
	cmp r4, #0
	beq _02228026
	cmp r4, #1
	beq _02228032
	cmp r4, #2
	pop {r3, r4, r5, pc}
_02228026:
	ldr r1, _0222804C ; =0x0000114D
	ldr r0, [r5, #0x34]
	ldrb r1, [r5, r1]
	bl ov13_02228A68
	pop {r3, r4, r5, pc}
_02228032:
	ldr r1, _0222804C ; =0x0000114D
	ldr r2, [r5, #0]
	ldrb r1, [r5, r1]
	ldr r0, [r5, #0x34]
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov13_02228A68
	pop {r3, r4, r5, pc}
	nop
_02228048: .word 0x02229BC8
_0222804C: .word 0x0000114D
	thumb_func_end ov13_02228008

	thumb_func_start ov13_02228050
ov13_02228050: ; 0x02228050
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov13_02228A60
	ldr r0, [r4, #0x34]
	bl ov13_02228A90
	ldr r0, [r4, #0x34]
	bl ov13_02228A58
	bl ov16_0226DDE8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02228050

	thumb_func_start ov13_02228070
ov13_02228070: ; 0x02228070
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	ldr r1, _022280C4 ; =0x0000B4BD
	add r4, r0, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r1, r1, #5
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0xc3
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r2, #0xc]
	ldr r3, [r5, #8]
	bl ov16_0226DE44
	ldr r3, _022280C4 ; =0x0000B4BD
	mov r1, #0xc3
	str r3, [sp]
	sub r0, r3, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	bl ov16_0226DEEC
	str r0, [r5, #0x38]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_022280C4: .word 0x0000B4BD
	thumb_func_end ov13_02228070

	thumb_func_start ov13_022280C8
ov13_022280C8: ; 0x022280C8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl ov16_0226DF68
	ldr r3, _022280EC ; =0x0000B4B8
	mov r0, #0xc3
	add r1, r3, #5
	str r3, [sp]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov16_0226DEC4
	add sp, #4
	pop {r3, r4, pc}
	nop
_022280EC: .word 0x0000B4B8
	thumb_func_end ov13_022280C8

	thumb_func_start ov13_022280F0
ov13_022280F0: ; 0x022280F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _02228116
	lsl r3, r1, #3
	ldr r1, _02228120 ; =0x02229BFC
	ldr r2, _02228124 ; =0x02229C00
	ldr r0, [r4, #0x38]
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	bl ov16_0226DFB0
	ldr r0, [r4, #0x38]
	mov r1, #0x3c
	bl ov16_0226DFD0
	pop {r4, pc}
_02228116:
	ldr r0, [r4, #0x38]
	bl ov16_0226DFBC
	pop {r4, pc}
	nop
_02228120: .word 0x02229BFC
_02228124: .word 0x02229C00
	thumb_func_end ov13_022280F0

	.rodata


	.global Unk_ov13_02229BB8
Unk_ov13_02229BB8: ; 0x02229BB8
	.incbin "incbin/overlay13_rodata.bin", 0xEBC, 0xEC4 - 0xEBC

	.global Unk_ov13_02229BC0
Unk_ov13_02229BC0: ; 0x02229BC0
	.incbin "incbin/overlay13_rodata.bin", 0xEC4, 0xECC - 0xEC4

	.global Unk_ov13_02229BC8
Unk_ov13_02229BC8: ; 0x02229BC8
	.incbin "incbin/overlay13_rodata.bin", 0xECC, 0xED8 - 0xECC

	.global Unk_ov13_02229BD4
Unk_ov13_02229BD4: ; 0x02229BD4
	.incbin "incbin/overlay13_rodata.bin", 0xED8, 0xEE8 - 0xED8

	.global Unk_ov13_02229BE4
Unk_ov13_02229BE4: ; 0x02229BE4
	.incbin "incbin/overlay13_rodata.bin", 0xEE8, 0xF00 - 0xEE8

	.global Unk_ov13_02229BFC
Unk_ov13_02229BFC: ; 0x02229BFC
	.incbin "incbin/overlay13_rodata.bin", 0xF00, 0xF18 - 0xF00

	.global Unk_ov13_02229C14
Unk_ov13_02229C14: ; 0x02229C14
	.incbin "incbin/overlay13_rodata.bin", 0xF18, 0xF48 - 0xF18

	.global Unk_ov13_02229C44
Unk_ov13_02229C44: ; 0x02229C44
	.incbin "incbin/overlay13_rodata.bin", 0xF48, 0xF78 - 0xF48

	.global Unk_ov13_02229C74
Unk_ov13_02229C74: ; 0x02229C74
	.incbin "incbin/overlay13_rodata.bin", 0xF78, 0xFC0 - 0xF78

	.global Unk_ov13_02229CBC
Unk_ov13_02229CBC: ; 0x02229CBC
	.incbin "incbin/overlay13_rodata.bin", 0xFC0, 0x78

