	.include "macros/function.inc"
	.include "include/unk_020298BC.inc"

	

	.text


	thumb_func_start sub_020298BC
sub_020298BC: ; 0x020298BC
	ldr r1, _020298D0 ; =0x00001234
	cmp r0, r1
	beq _020298C8
	ldr r1, _020298D4 ; =0x00002345
	cmp r0, r1
	bne _020298CC
_020298C8:
	mov r0, #1
	bx lr
_020298CC:
	mov r0, #0
	bx lr
	; .align 2, 0
_020298D0: .word 0x00001234
_020298D4: .word 0x00002345
	thumb_func_end sub_020298BC

	thumb_func_start sub_020298D8
sub_020298D8: ; 0x020298D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r2, #0
	add r4, r0, #0
	add r1, sp, #4
	add r2, sp, #0
	add r7, r3, #0
	bl ov22_02259250
	add r0, r4, #0
	bl ov22_022591E0
	add r4, r0, #0
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #8
	cmp r1, r0
	blt _02029902
	bl sub_02022974
_02029902:
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #8
	cmp r1, r0
	blt _02029910
	bl sub_02022974
_02029910:
	mov r0, #0x7f
	mvn r0, r0
	cmp r4, r0
	bgt _0202991C
	bl sub_02022974
_0202991C:
	ldr r0, [sp, #4]
	strb r0, [r5]
	ldr r0, [sp]
	strb r0, [r6]
	strb r4, [r7]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020298D8

	thumb_func_start sub_0202992C
sub_0202992C: ; 0x0202992C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	add r7, r3, #0
	bl sub_02074470
	add r2, r5, #0
	strh r0, [r5, #8]
	add r0, r4, #0
	mov r1, #0x75
	add r2, #0xa
	bl sub_02074470
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x33
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0x31
	strb r6, [r0]
	add r0, r5, #0
	add r0, #0x32
	strb r7, [r0]
	add r1, sp, #8
	mov r0, #0x10
	ldrsb r0, [r1, r0]
	add r5, #0x30
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202992C

	thumb_func_start sub_02029990
sub_02029990: ; 0x02029990
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	add r1, sp, #4
	add r2, sp, #4
	add r1, #2
	add r2, #1
	add r3, sp, #4
	bl sub_020298D8
	add r3, sp, #4
	mov r0, #0
	ldrsb r0, [r3, r0]
	add r1, r4, #0
	str r0, [sp]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #1]
	add r0, r5, #0
	bl sub_0202992C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02029990

	thumb_func_start sub_020299C0
sub_020299C0: ; 0x020299C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r5, #0
	add r4, r2, #0
	add r1, #0x20
	mov r2, #8
	bl sub_02023DF0
	add r5, #0x34
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020299C0

	thumb_func_start sub_020299D8
sub_020299D8: ; 0x020299D8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	str r1, [sp]
	ldr r0, [r5, #0]
	mov r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	add r3, r2, #0
	str r0, [sp, #0xc]
	ldrh r1, [r5, #8]
	add r0, r4, #0
	bl sub_02073D80
	add r2, r5, #0
	add r0, r4, #0
	mov r1, #0x75
	add r2, #0xa
	bl sub_02074B30
	add r5, #0x33
	add r0, r4, #0
	mov r1, #0x70
	add r2, r5, #0
	bl sub_02074B30
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020299D8

	thumb_func_start sub_02029A18
sub_02029A18: ; 0x02029A18
	strb r1, [r0]
	ldr r1, _02029A28 ; =0xFFFFFFF0
	strb r2, [r0, #1]
	strb r3, [r0, #2]
	add r1, sp
	ldrb r1, [r1, #0x10]
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
_02029A28: .word 0xFFFFFFF0
	thumb_func_end sub_02029A18

	thumb_func_start sub_02029A2C
sub_02029A2C: ; 0x02029A2C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #0x3d
	blo _02029A3C
	bl sub_02022974
_02029A3C:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1a
	lsr r1, r0, #0x18
	lsr r0, r4, #3
	lsl r0, r0, #0x18
	mov r2, #0xf
	lsr r0, r0, #0x16
	lsl r2, r1
	ldr r3, [r5, r0]
	mvn r2, r2
	and r2, r3
	str r2, [r5, r0]
	add r2, r6, #0
	ldr r3, [r5, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029A2C

	thumb_func_start sub_02029A70
sub_02029A70: ; 0x02029A70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x3d
	blo _02029A7E
	bl sub_02022974
_02029A7E:
	lsr r3, r4, #0x1f
	lsl r2, r4, #0x1d
	lsr r0, r4, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	sub r2, r2, r3
	mov r1, #0x1d
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1a
	add r2, r0, #0
	lsr r1, r1, #0x18
	lsr r2, r1
	mov r0, #0xf
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #9
	bls _02029AAC
	mov r0, #9
_02029AAC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02029A70

	thumb_func_start sub_02029AB0
sub_02029AB0: ; 0x02029AB0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02029AC0
	bl sub_02022974
_02029AC0:
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsr r0, r6, #5
	lsl r0, r0, #0x18
	mov r2, #1
	lsr r0, r0, #0x16
	lsl r2, r1
	ldr r3, [r5, r0]
	mvn r2, r2
	and r2, r3
	str r2, [r5, r0]
	add r2, r4, #0
	ldr r3, [r5, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029AB0

	thumb_func_start sub_02029AF0
sub_02029AF0: ; 0x02029AF0
	lsr r2, r1, #5
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r3, [r0, r2]
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r3, #0
	lsr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
	thumb_func_end sub_02029AF0

	thumb_func_start sub_02029B18
sub_02029B18: ; 0x02029B18
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x12
	bls _02029B28
	bl sub_02022974
_02029B28:
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x18
	lsr r0, r6, #2
	lsl r0, r0, #0x18
	mov r2, #0xff
	lsr r0, r0, #0x16
	lsl r2, r1
	ldr r3, [r5, r0]
	mvn r2, r2
	and r2, r3
	str r2, [r5, r0]
	add r2, r4, #0
	ldr r3, [r5, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029B18

	thumb_func_start sub_02029B5C
sub_02029B5C: ; 0x02029B5C
	lsr r2, r1, #2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r0, [r0, r2]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x18
	lsr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_02029B5C

	thumb_func_start sub_02029B80
sub_02029B80: ; 0x02029B80
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_02029B88:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02029B5C
	cmp r0, #0x12
	beq _02029B98
	add r5, r5, #1
_02029B98:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02029B88
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029B80

	thumb_func_start sub_02029BA4
sub_02029BA4: ; 0x02029BA4
	cmp r0, #0x3d
	bhs _02029BAC
	mov r0, #1
	bx lr
_02029BAC:
	mov r0, #0
	bx lr
	thumb_func_end sub_02029BA4

	thumb_func_start sub_02029BB0
sub_02029BB0: ; 0x02029BB0
	push {r4, r5, r6, lr}
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	bl memset
	mov r4, #0
	add r5, #0x28
	mov r6, #0x12
_02029BC2:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_02029B18
	add r4, r4, #1
	cmp r4, #0x12
	blt _02029BC2
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02029BB0

	thumb_func_start sub_02029BD8
sub_02029BD8: ; 0x02029BD8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #2
	add r4, r2, #0
	bl sub_020765B8
	mov r1, #0x80
	strb r1, [r5]
	mov r1, #0x28
	sub r1, r1, r0
	mov r0, #0x8d
	sub r0, r0, r1
	strb r0, [r4]
	ldrb r0, [r4]
	add r0, #0x28
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02029BD8

	thumb_func_start sub_02029BFC
sub_02029BFC: ; 0x02029BFC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _02029C4C ; =0x00001234
	str r0, [sp]
	add r5, r0, #0
	add r7, r4, #0
_02029C08:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x74
	bl memset
	str r6, [r5, #0]
	add r4, r4, #1
	add r5, #0x74
	cmp r4, #0xb
	blt _02029C08
	ldr r0, [sp]
	ldr r1, _02029C50 ; =0x000004FC
	ldr r7, _02029C4C ; =0x00001234
	mov r6, #0
	add r4, r0, r1
	add r5, r0, #0
_02029C28:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x98
	bl memset
	ldr r0, _02029C50 ; =0x000004FC
	add r6, r6, #1
	str r7, [r5, r0]
	add r4, #0x98
	add r5, #0x98
	cmp r6, #5
	blt _02029C28
	ldr r1, _02029C54 ; =0x000007F4
	ldr r0, [sp]
	add r0, r0, r1
	bl sub_02029BB0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02029C4C: .word 0x00001234
_02029C50: .word 0x000004FC
_02029C54: .word 0x000007F4
	thumb_func_end sub_02029BFC

	thumb_func_start sub_02029C58
sub_02029C58: ; 0x02029C58
	ldr r0, _02029C5C ; =0x00000834
	bx lr
	; .align 2, 0
_02029C5C: .word 0x00000834
	thumb_func_end sub_02029C58

	thumb_func_start sub_02029C60
sub_02029C60: ; 0x02029C60
	mov r0, #0x74
	bx lr
	thumb_func_end sub_02029C60

	thumb_func_start sub_02029C64
sub_02029C64: ; 0x02029C64
	mov r0, #0x98
	bx lr
	thumb_func_end sub_02029C64

	thumb_func_start sub_02029C68
sub_02029C68: ; 0x02029C68
	push {r4, lr}
	mov r1, #0x74
	bl sub_02018144
	mov r1, #0
	mov r2, #0x74
	add r4, r0, #0
	bl memset
	ldr r0, _02029C84 ; =0x00001234
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r4, pc}
	nop
_02029C84: .word 0x00001234
	thumb_func_end sub_02029C68

	thumb_func_start sub_02029C88
sub_02029C88: ; 0x02029C88
	push {r4, lr}
	mov r1, #0x98
	bl sub_02018144
	mov r1, #0
	mov r2, #0x98
	add r4, r0, #0
	bl memset
	ldr r0, _02029CA4 ; =0x00001234
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r4, pc}
	nop
_02029CA4: .word 0x00001234
	thumb_func_end sub_02029C88

	thumb_func_start sub_02029CA8
sub_02029CA8: ; 0x02029CA8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #0xb
	blt _02029CB6
	bl sub_02022974
_02029CB6:
	mov r0, #0x74
	add r4, r6, #0
	mul r4, r0
	ldr r0, [r5, r4]
	bl sub_020298BC
	cmp r0, #0
	bne _02029CCA
	bl sub_02022974
_02029CCA:
	add r0, r5, r4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02029CA8

	thumb_func_start sub_02029CD0
sub_02029CD0: ; 0x02029CD0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #5
	blt _02029CDE
	bl sub_02022974
_02029CDE:
	mov r0, #0x98
	add r4, r6, #0
	mul r4, r0
	ldr r0, _02029D00 ; =0x000004FC
	add r1, r5, r4
	ldr r0, [r1, r0]
	bl sub_020298BC
	cmp r0, #0
	bne _02029CF6
	bl sub_02022974
_02029CF6:
	ldr r0, _02029D00 ; =0x000004FC
	add r0, r5, r0
	add r0, r0, r4
	pop {r4, r5, r6, pc}
	nop
_02029D00: .word 0x000004FC
	thumb_func_end sub_02029CD0

	thumb_func_start sub_02029D04
sub_02029D04: ; 0x02029D04
	ldr r1, _02029D0C ; =0x000007F4
	add r0, r0, r1
	bx lr
	nop
_02029D0C: .word 0x000007F4
	thumb_func_end sub_02029D04

	thumb_func_start sub_02029D10
sub_02029D10: ; 0x02029D10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xb
	blt _02029D1E
	bl sub_02022974
_02029D1E:
	mov r0, #0x74
	mul r0, r4
	add r0, r5, r0
	bl sub_02029F34
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02029D10

	thumb_func_start sub_02029D2C
sub_02029D2C: ; 0x02029D2C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #5
	blt _02029D3A
	bl sub_02022974
_02029D3A:
	ldr r0, _02029D4C ; =0x000004FC
	add r1, r5, r0
	mov r0, #0x98
	mul r0, r4
	add r0, r1, r0
	bl sub_0202A218
	pop {r3, r4, r5, pc}
	nop
_02029D4C: .word 0x000004FC
	thumb_func_end sub_02029D2C

	thumb_func_start sub_02029D50
sub_02029D50: ; 0x02029D50
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #1
	bl sub_02029D94
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02029BA4
	cmp r0, #0
	beq _02029D72
	add r0, r6, r5
	cmp r0, #9
	bls _02029D7A
	mov r4, #0
	b _02029D7A
_02029D72:
	add r0, r6, r5
	cmp r0, #1
	bls _02029D7A
	mov r4, #0
_02029D7A:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02029D50

	thumb_func_start sub_02029D80
sub_02029D80: ; 0x02029D80
	push {r3, lr}
	bl sub_02029DD4
	cmp r0, #0x12
	beq _02029D8E
	mov r0, #1
	pop {r3, pc}
_02029D8E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02029D80

	thumb_func_start sub_02029D94
sub_02029D94: ; 0x02029D94
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x64
	blo _02029DA2
	bl sub_02022974
_02029DA2:
	add r0, r5, #0
	bl sub_02029BA4
	cmp r0, #0
	beq _02029DB8
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02029A70
	pop {r3, r4, r5, pc}
_02029DB8:
	cmp r5, #0x3d
	bhs _02029DC0
	bl sub_02022974
_02029DC0:
	sub r5, #0x3d
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	add r4, #0x20
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02029AF0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02029D94

	thumb_func_start sub_02029DD4
sub_02029DD4: ; 0x02029DD4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x12
	blo _02029DE2
	bl sub_02022974
_02029DE2:
	add r5, #0x28
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02029B5C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02029DD4

	thumb_func_start sub_02029DF0
sub_02029DF0: ; 0x02029DF0
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_02029DF8:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029D94
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #0x64
	blt _02029DF8
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029DF0

	thumb_func_start sub_02029E0C
sub_02029E0C: ; 0x02029E0C
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_02029E14:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029DD4
	cmp r0, #0x12
	beq _02029E22
	add r5, r5, #1
_02029E22:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02029E14
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029E0C

	thumb_func_start sub_02029E2C
sub_02029E2C: ; 0x02029E2C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x64
	blo _02029E3C
	bl sub_02022974
_02029E3C:
	add r0, r4, #0
	bl sub_02029BA4
	cmp r0, #0
	beq _02029E68
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02029A70
	add r0, r0, r6
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #9
	bls _02029E5C
	mov r1, #9
_02029E5C:
	lsl r2, r4, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02029A2C
	pop {r4, r5, r6, pc}
_02029E68:
	add r0, r5, #0
	lsl r1, r4, #0x18
	add r0, #0x20
	lsr r1, r1, #0x18
	bl sub_02029AF0
	add r0, r0, r6
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #1
	bls _02029E80
	mov r6, #1
_02029E80:
	cmp r4, #0x3d
	bhs _02029E88
	bl sub_02022974
_02029E88:
	sub r4, #0x3d
	lsl r0, r4, #0x18
	lsr r2, r0, #0x18
	add r5, #0x20
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_02029AB0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02029E2C

	thumb_func_start sub_02029EA0
sub_02029EA0: ; 0x02029EA0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x64
	blo _02029EB0
	bl sub_02022974
_02029EB0:
	add r0, r4, #0
	bl sub_02029BA4
	cmp r0, #0
	beq _02029EDE
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02029A70
	cmp r0, r6
	bls _02029ED0
	sub r0, r0, r6
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	b _02029ED2
_02029ED0:
	mov r1, #0
_02029ED2:
	lsl r2, r4, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02029A2C
	pop {r4, r5, r6, pc}
_02029EDE:
	cmp r4, #0x3d
	bhs _02029EE6
	bl sub_02022974
_02029EE6:
	sub r4, #0x3d
	lsl r0, r4, #0x18
	lsr r2, r0, #0x18
	add r5, #0x20
	lsl r2, r2, #0x18
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl sub_02029AB0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02029EA0

	thumb_func_start sub_02029EFC
sub_02029EFC: ; 0x02029EFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x12
	blo _02029F0A
	bl sub_02022974
_02029F0A:
	add r0, r5, #0
	lsl r1, r4, #0x18
	add r0, #0x28
	lsr r1, r1, #0x18
	bl sub_02029B5C
	cmp r0, #0x12
	bne _02029F30
	add r0, r5, #0
	add r0, #0x28
	bl sub_02029B80
	lsl r2, r4, #0x18
	add r5, #0x28
	add r1, r0, #0
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02029B18
_02029F30:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02029EFC

	thumb_func_start sub_02029F34
sub_02029F34: ; 0x02029F34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _02029F46
	bl sub_02022974
_02029F46:
	ldr r1, [r4, #0]
	ldr r0, _02029F58 ; =0x00002345
	cmp r1, r0
	bne _02029F52
	mov r0, #1
	pop {r4, pc}
_02029F52:
	mov r0, #0
	pop {r4, pc}
	nop
_02029F58: .word 0x00002345
	thumb_func_end sub_02029F34

	thumb_func_start sub_02029F5C
sub_02029F5C: ; 0x02029F5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _02029F6E
	bl sub_02022974
_02029F6E:
	ldr r0, _02029F7C ; =0x00002345
	str r0, [r4, #0]
	ldr r0, _02029F80 ; =0x020E4C44
	add r4, #0x71
	ldrb r0, [r0]
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
_02029F7C: .word 0x00002345
_02029F80: .word 0x020E4C44
	thumb_func_end sub_02029F5C

	thumb_func_start sub_02029F84
sub_02029F84: ; 0x02029F84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _02029F96
	bl sub_02022974
_02029F96:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x74
	bl memset
	ldr r0, _02029FA8 ; =0x00001234
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_02029FA8: .word 0x00001234
	thumb_func_end sub_02029F84

	thumb_func_start sub_02029FAC
sub_02029FAC: ; 0x02029FAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _02029FC2
	bl sub_02022974
_02029FC2:
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02029990
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02029FAC

	thumb_func_start sub_02029FD0
sub_02029FD0: ; 0x02029FD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r2, #0
	bl sub_0201525C
	add r1, sp, #0xc
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, [r4, #4]
	bl sub_02015290
	add r7, r0, #0
	cmp r6, #0xa
	blt _0202A000
	bl sub_02022974
_0202A000:
	add r1, sp, #0xc
	mov r0, #4
	ldrsh r1, [r1, r0]
	add r0, #0xfc
	cmp r1, r0
	blt _0202A010
	bl sub_02022974
_0202A010:
	add r0, sp, #0xc
	mov r1, #6
	ldrsh r0, [r0, r1]
	add r1, #0xfa
	str r0, [sp, #8]
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _0202A024
	bl sub_02022974
_0202A024:
	mov r0, #0x7f
	mvn r0, r0
	cmp r7, r0
	bgt _0202A030
	bl sub_02022974
_0202A030:
	mov r0, #1
	lsl r0, r6
	ldr r1, [r5, #0x3c]
	str r0, [sp, #4]
	tst r0, r1
	beq _0202A040
	bl sub_02022974
_0202A040:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A04E
	bl sub_02022974
_0202A04E:
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r1, r5, #0
	add r3, sp, #0xc
	mov r2, #4
	ldrsh r2, [r3, r2]
	ldr r3, [sp, #8]
	add r1, #0x48
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r1, [r4, #0]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02029A18
	ldr r1, [r5, #0x3c]
	ldr r0, [sp, #4]
	orr r0, r1
	str r0, [r5, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02029FD0

	thumb_func_start sub_0202A084
sub_0202A084: ; 0x0202A084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A098
	bl sub_02022974
_0202A098:
	add r5, #0x70
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A084

	thumb_func_start sub_0202A0A0
sub_0202A0A0: ; 0x0202A0A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A0B4
	bl sub_02022974
_0202A0B4:
	add r0, r5, #0
	add r0, #0x40
	bl sub_02014A84
	add r5, #0x40
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_02014CF8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A0A0

	thumb_func_start sub_0202A0CC
sub_0202A0CC: ; 0x0202A0CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A0E0
	bl sub_02022974
_0202A0E0:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x74
	bl memcpy
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A0CC

	thumb_func_start sub_0202A0EC
sub_0202A0EC: ; 0x0202A0EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A102
	bl sub_02022974
_0202A102:
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020299C0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202A0EC

	thumb_func_start sub_0202A110
sub_0202A110: ; 0x0202A110
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xa
	blt _0202A11E
	bl sub_02022974
_0202A11E:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A12C
	bl sub_02022974
_0202A12C:
	mov r0, #1
	ldr r1, [r5, #0x3c]
	lsl r0, r4
	and r0, r1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A110

	thumb_func_start sub_0202A138
sub_0202A138: ; 0x0202A138
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A14A
	bl sub_02022974
_0202A14A:
	add r0, r4, #4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A138

	thumb_func_start sub_0202A150
sub_0202A150: ; 0x0202A150
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xa
	blt _0202A15E
	bl sub_02022974
_0202A15E:
	mov r0, #1
	ldr r1, [r5, #0x3c]
	lsl r0, r4
	tst r0, r1
	bne _0202A16C
	bl sub_02022974
_0202A16C:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A17A
	bl sub_02022974
_0202A17A:
	add r5, #0x48
	lsl r0, r4, #2
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A150

	thumb_func_start sub_0202A184
sub_0202A184: ; 0x0202A184
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A196
	bl sub_02022974
_0202A196:
	add r0, r4, #4
	bl sub_0202A5E8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A184

	thumb_func_start sub_0202A1A0
sub_0202A1A0: ; 0x0202A1A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A1B4
	bl sub_02022974
_0202A1B4:
	add r0, r5, #4
	add r1, r4, #0
	bl sub_0202A5EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A1A0

	thumb_func_start sub_0202A1C0
sub_0202A1C0: ; 0x0202A1C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A1D2
	bl sub_02022974
_0202A1D2:
	add r0, r4, #4
	bl sub_0202A5FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A1C0

	thumb_func_start sub_0202A1DC
sub_0202A1DC: ; 0x0202A1DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A1EE
	bl sub_02022974
_0202A1EE:
	add r4, #0x70
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0202A1DC

	thumb_func_start sub_0202A1F4
sub_0202A1F4: ; 0x0202A1F4
	ldr r3, _0202A1FC ; =sub_02014C78
	add r0, #0x40
	mov r1, #0
	bx r3
	; .align 2, 0
_0202A1FC: .word sub_02014C78
	thumb_func_end sub_0202A1F4

	thumb_func_start sub_0202A200
sub_0202A200: ; 0x0202A200
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A212
	bl sub_02022974
_0202A212:
	add r4, #0x71
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0202A200

	thumb_func_start sub_0202A218
sub_0202A218: ; 0x0202A218
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A22A
	bl sub_02022974
_0202A22A:
	ldr r1, [r4, #0]
	ldr r0, _0202A23C ; =0x00002345
	cmp r1, r0
	bne _0202A236
	mov r0, #1
	pop {r4, pc}
_0202A236:
	mov r0, #0
	pop {r4, pc}
	nop
_0202A23C: .word 0x00002345
	thumb_func_end sub_0202A218

	thumb_func_start sub_0202A240
sub_0202A240: ; 0x0202A240
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A252
	bl sub_02022974
_0202A252:
	ldr r0, _0202A258 ; =0x00002345
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_0202A258: .word 0x00002345
	thumb_func_end sub_0202A240

	thumb_func_start sub_0202A25C
sub_0202A25C: ; 0x0202A25C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A26E
	bl sub_02022974
_0202A26E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x98
	bl memset
	ldr r0, _0202A280 ; =0x00001234
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_0202A280: .word 0x00001234
	thumb_func_end sub_0202A25C

	thumb_func_start sub_0202A284
sub_0202A284: ; 0x0202A284
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A29A
	bl sub_02022974
_0202A29A:
	add r5, #8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02029990
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202A284

	thumb_func_start sub_0202A2A8
sub_0202A2A8: ; 0x0202A2A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r2, #0
	bl sub_0201525C
	add r1, sp, #0xc
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, [r4, #4]
	bl sub_02015290
	add r7, r0, #0
	cmp r6, #0x14
	blt _0202A2D8
	bl sub_02022974
_0202A2D8:
	add r1, sp, #0xc
	mov r0, #4
	ldrsh r1, [r1, r0]
	add r0, #0xfc
	cmp r1, r0
	blt _0202A2E8
	bl sub_02022974
_0202A2E8:
	add r0, sp, #0xc
	mov r1, #6
	ldrsh r0, [r0, r1]
	add r1, #0xfa
	str r0, [sp, #8]
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _0202A2FC
	bl sub_02022974
_0202A2FC:
	mov r0, #0x7f
	mvn r0, r0
	cmp r7, r0
	bgt _0202A308
	bl sub_02022974
_0202A308:
	mov r0, #1
	lsl r0, r6
	ldr r1, [r5, #0x40]
	str r0, [sp, #4]
	tst r0, r1
	beq _0202A318
	bl sub_02022974
_0202A318:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A326
	bl sub_02022974
_0202A326:
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r1, r5, #0
	add r3, sp, #0xc
	mov r2, #4
	ldrsh r2, [r3, r2]
	ldr r3, [sp, #8]
	add r1, #0x44
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r1, [r4, #0]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02029A18
	ldr r1, [r5, #0x40]
	ldr r0, [sp, #4]
	orr r0, r1
	str r0, [r5, #0x40]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202A2A8

	thumb_func_start sub_0202A35C
sub_0202A35C: ; 0x0202A35C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A370
	bl sub_02022974
_0202A370:
	add r5, #0x94
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A35C

	thumb_func_start sub_0202A378
sub_0202A378: ; 0x0202A378
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A38C
	bl sub_02022974
_0202A38C:
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A378

	thumb_func_start sub_0202A390
sub_0202A390: ; 0x0202A390
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A3A4
	bl sub_02022974
_0202A3A4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x98
	bl memcpy
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A390

	thumb_func_start sub_0202A3B0
sub_0202A3B0: ; 0x0202A3B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A3C8
	bl sub_02022974
_0202A3C8:
	add r1, sp, #4
	add r0, r4, #0
	add r1, #1
	add r2, sp, #4
	bl sub_02029BD8
	add r5, #8
	str r6, [sp]
	add r3, sp, #4
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202992C
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202A3B0

	thumb_func_start sub_0202A3EC
sub_0202A3EC: ; 0x0202A3EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r3, [sp, #4]
	add r6, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	ldr r4, [sp, #0x24]
	cmp r6, #0x14
	blo _0202A402
	bl sub_02022974
_0202A402:
	cmp r7, #0x64
	blo _0202A40A
	bl sub_02022974
_0202A40A:
	mov r1, #1
	ldr r0, [sp, #4]
	lsl r1, r1, #8
	cmp r0, r1
	blt _0202A418
	bl sub_02022974
_0202A418:
	add r0, sp, #0x10
	ldrb r1, [r0, #0x10]
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	blt _0202A428
	bl sub_02022974
_0202A428:
	mov r0, #0x7f
	mvn r0, r0
	cmp r4, r0
	bgt _0202A434
	bl sub_02022974
_0202A434:
	mov r0, #1
	lsl r0, r6
	ldr r1, [r5, #0x40]
	str r0, [sp, #8]
	tst r0, r1
	beq _0202A444
	bl sub_02022974
_0202A444:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A452
	bl sub_02022974
_0202A452:
	mov r0, #0x38
	ldrsb r0, [r5, r0]
	cmp r0, r4
	blt _0202A460
	add r0, r0, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_0202A460:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r3, sp, #0x10
	add r1, r5, #0
	ldrb r3, [r3, #0x10]
	add r1, #0x44
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl sub_02029A18
	ldr r1, [r5, #0x40]
	ldr r0, [sp, #8]
	orr r0, r1
	str r0, [r5, #0x40]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202A3EC

	thumb_func_start sub_0202A488
sub_0202A488: ; 0x0202A488
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blt _0202A496
	bl sub_02022974
_0202A496:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A4A4
	bl sub_02022974
_0202A4A4:
	mov r0, #1
	add r1, r0, #0
	ldr r2, [r5, #0x40]
	lsl r1, r4
	tst r1, r2
	bne _0202A4B2
	mov r0, #0
_0202A4B2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A488

	thumb_func_start sub_0202A4B4
sub_0202A4B4: ; 0x0202A4B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A4CA
	bl sub_02022974
_0202A4CA:
	add r5, #8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020299C0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202A4B4

	thumb_func_start sub_0202A4D8
sub_0202A4D8: ; 0x0202A4D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A4EA
	bl sub_02022974
_0202A4EA:
	add r4, #8
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0202A4D8

	thumb_func_start sub_0202A4F0
sub_0202A4F0: ; 0x0202A4F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blt _0202A4FE
	bl sub_02022974
_0202A4FE:
	mov r0, #1
	ldr r1, [r5, #0x40]
	lsl r0, r4
	tst r0, r1
	bne _0202A50C
	bl sub_02022974
_0202A50C:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A51A
	bl sub_02022974
_0202A51A:
	add r5, #0x44
	lsl r0, r4, #2
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A4F0

	thumb_func_start sub_0202A524
sub_0202A524: ; 0x0202A524
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A538
	bl sub_02022974
_0202A538:
	add r5, #8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202A5EC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A524

	thumb_func_start sub_0202A544
sub_0202A544: ; 0x0202A544
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A556
	bl sub_02022974
_0202A556:
	add r4, #8
	add r0, r4, #0
	bl sub_0202A5FC
	pop {r4, pc}
	thumb_func_end sub_0202A544

	thumb_func_start sub_0202A560
sub_0202A560: ; 0x0202A560
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_020298BC
	cmp r0, #0
	bne _0202A574
	bl sub_02022974
_0202A574:
	add r5, #8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020299D8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202A560

	thumb_func_start sub_0202A580
sub_0202A580: ; 0x0202A580
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x14
	blt _0202A58E
	bl sub_02022974
_0202A58E:
	mov r0, #1
	ldr r1, [r5, #0x40]
	lsl r0, r4
	tst r0, r1
	bne _0202A59C
	bl sub_02022974
_0202A59C:
	ldr r0, [r5, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A5AA
	bl sub_02022974
_0202A5AA:
	add r5, #0x44
	lsl r0, r4, #2
	add r0, r5, r0
	bl sub_0202A624
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202A580

	thumb_func_start sub_0202A5B8
sub_0202A5B8: ; 0x0202A5B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A5CA
	bl sub_02022974
_0202A5CA:
	add r4, #0x94
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0202A5B8

	thumb_func_start sub_0202A5D0
sub_0202A5D0: ; 0x0202A5D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020298BC
	cmp r0, #0
	bne _0202A5E2
	bl sub_02022974
_0202A5E2:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A5D0

	thumb_func_start sub_0202A5E8
sub_0202A5E8: ; 0x0202A5E8
	ldrh r0, [r0, #8]
	bx lr
	thumb_func_end sub_0202A5E8

	thumb_func_start sub_0202A5EC
sub_0202A5EC: ; 0x0202A5EC
	add r2, r0, #0
	ldr r3, _0202A5F8 ; =sub_02023D28
	add r2, #0x20
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0202A5F8: .word sub_02023D28
	thumb_func_end sub_0202A5EC

	thumb_func_start sub_0202A5FC
sub_0202A5FC: ; 0x0202A5FC
	add r0, #0x34
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A5FC

	thumb_func_start sub_0202A604
sub_0202A604: ; 0x0202A604
	mov r1, #0x30
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A604

	thumb_func_start sub_0202A60C
sub_0202A60C: ; 0x0202A60C
	add r0, #0x31
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A60C

	thumb_func_start sub_0202A614
sub_0202A614: ; 0x0202A614
	add r0, #0x32
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A614

	thumb_func_start sub_0202A61C
sub_0202A61C: ; 0x0202A61C
	ldr r3, _0202A620 ; =sub_020299D8
	bx r3
	; .align 2, 0
_0202A620: .word sub_020299D8
	thumb_func_end sub_0202A61C

	thumb_func_start sub_0202A624
sub_0202A624: ; 0x0202A624
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202A624

	thumb_func_start sub_0202A628
sub_0202A628: ; 0x0202A628
	ldrb r0, [r0, #1]
	bx lr
	thumb_func_end sub_0202A628

	thumb_func_start sub_0202A62C
sub_0202A62C: ; 0x0202A62C
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_0202A62C

	thumb_func_start sub_0202A630
sub_0202A630: ; 0x0202A630
	mov r1, #3
	ldrsb r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A630

	thumb_func_start sub_0202A638
sub_0202A638: ; 0x0202A638
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #1
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_02029F34
	cmp r0, #1
	bne _0202A696
	ldr r1, _0202A6A4 ; =0xEDB88320
	add r0, sp, #4
	bl MATHi_CRC32InitTableRev
	add r0, sp, #4
	add r1, r4, #0
	mov r2, #0x74
	bl MATH_CalcCRC32
	add r6, r0, #0
	mov r5, #0
_0202A668:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02029CA8
	add r4, r0, #0
	ldr r1, _0202A6A4 ; =0xEDB88320
	add r0, sp, #4
	bl MATHi_CRC32InitTableRev
	add r0, sp, #4
	add r1, r4, #0
	mov r2, #0x74
	bl MATH_CalcCRC32
	cmp r0, r6
	bne _0202A68E
	mov r0, #0
	str r0, [sp]
	b _0202A69A
_0202A68E:
	add r5, r5, #1
	cmp r5, #0xb
	blt _0202A668
	b _0202A69A
_0202A696:
	mov r0, #0
	str r0, [sp]
_0202A69A:
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202A6A4: .word 0xEDB88320
	thumb_func_end sub_0202A638

	thumb_func_start sub_0202A6A8
sub_0202A6A8: ; 0x0202A6A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r7, #0
	ldr r0, [sp]
	str r1, [sp, #4]
	add r5, r2, #0
	add r6, r7, #0
	str r3, [sp, #8]
	cmp r0, #0
	ble _0202A6E2
	add r4, r3, #0
_0202A6C0:
	ldr r0, [sp, #4]
	cmp r6, r0
	beq _0202A6D8
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0202A6D8
	add r0, r5, #0
	bl sub_0202A638
	cmp r0, #1
	bne _0202A6D8
	add r7, r7, #1
_0202A6D8:
	ldr r0, [sp]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0202A6C0
_0202A6E2:
	mov r4, #0xa
_0202A6E4:
	add r1, r4, r7
	cmp r1, #0xb
	bge _0202A702
	add r0, r5, #0
	bl sub_02029CA8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02029CA8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0202A0CC
_0202A702:
	sub r4, r4, #1
	cmp r4, #1
	bge _0202A6E4
	ldr r0, [sp]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	ble _0202A74A
_0202A712:
	ldr r0, [sp, #4]
	cmp r4, r0
	beq _0202A73C
	ldr r0, [sp, #8]
	ldr r7, [r0, #0]
	cmp r7, #0
	beq _0202A73C
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202A638
	cmp r0, #1
	bne _0202A73C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02029CA8
	add r1, r7, #0
	add r6, r6, #1
	bl sub_0202A0CC
_0202A73C:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp]
	cmp r4, r0
	blt _0202A712
_0202A74A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202A6A8

	thumb_func_start sub_0202A750
sub_0202A750: ; 0x0202A750
	ldr r3, _0202A758 ; =sub_020245BC
	mov r1, #0xe
	bx r3
	nop
_0202A758: .word sub_020245BC
	thumb_func_end sub_0202A750

	thumb_func_start sub_0202A75C
sub_0202A75C: ; 0x0202A75C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	add r2, r5, #0
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	add r3, r4, #0
	str r0, [r4, #8]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0xc]
_0202A782:
	ldrh r0, [r2, #0x24]
	add r1, r1, #1
	add r2, r2, #2
	strh r0, [r3, #0xe]
	add r3, r3, #2
	cmp r1, #8
	blt _0202A782
	mov r0, #0x34
	ldrsb r0, [r5, r0]
	mov r2, #0
	strb r0, [r4, #0x1e]
	add r0, r5, #0
	add r0, #0x35
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	add r0, r5, #0
	add r0, #0x36
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x37
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	str r0, [r4, #0x24]
	add r0, r5, #0
	add r0, #0x40
	ldrh r0, [r0]
	strh r0, [r4, #0x28]
	add r0, r5, #0
	add r0, #0x42
	ldrh r0, [r0]
	strh r0, [r4, #0x2a]
	add r0, r5, #0
	add r0, #0x44
	ldrh r0, [r0]
	strh r0, [r4, #0x2c]
	add r0, r5, #0
	add r0, #0x46
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	add r0, r5, #0
	add r0, #0x48
_0202A7E2:
	ldrb r6, [r0]
	add r3, r1, #0
	add r3, #0x30
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #1]
	add r3, #0x31
	add r2, r2, #1
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #2]
	add r3, #0x32
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #3]
	add r3, #0x33
	add r0, r0, #4
	add r1, r1, #4
	strb r6, [r3]
	cmp r2, #0xa
	blt _0202A7E2
	add r0, r5, #0
	add r0, #0x70
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x58
	add r5, #0x71
	strb r1, [r0]
	ldrb r0, [r5]
	add r4, #0x59
	strb r0, [r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202A75C

	thumb_func_start sub_0202A824
sub_0202A824: ; 0x0202A824
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02029C60
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	add r2, r5, #0
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	add r3, r4, #0
	str r0, [r4, #8]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0xc]
_0202A84E:
	ldrh r0, [r2, #0xe]
	add r1, r1, #1
	add r2, r2, #2
	strh r0, [r3, #0x24]
	add r3, r3, #2
	cmp r1, #8
	blt _0202A84E
	mov r0, #0x1e
	ldrsb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #0x1f]
	add r0, #0x35
	mov r2, #0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x36
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x37
	strb r1, [r0]
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x3c]
	add r0, r4, #0
	ldrh r1, [r5, #0x28]
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #0x2a]
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #0x2c]
	add r0, #0x44
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #0x2e]
	add r0, #0x46
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
_0202A8B2:
	ldrb r6, [r0]
	add r3, r1, #0
	add r3, #0x48
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #1]
	add r3, #0x49
	add r2, r2, #1
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #2]
	add r3, #0x4a
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #3]
	add r3, #0x4b
	add r0, r0, #4
	add r1, r1, #4
	strb r6, [r3]
	cmp r2, #0xa
	blt _0202A8B2
	add r0, r5, #0
	add r0, #0x58
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	strb r1, [r0]
	add r5, #0x59
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x71
	mov r2, #0
	strb r1, [r0]
	ldr r0, _0202A90C ; =0x0000FFFF
	add r1, r4, #0
_0202A8F8:
	add r2, r2, #1
	strh r0, [r1, #0xe]
	add r1, r1, #2
	cmp r2, #0xb
	blt _0202A8F8
	mov r0, #0
	add r4, #0x38
	strb r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_0202A90C: .word 0x0000FFFF
	thumb_func_end sub_0202A824