	.include "macros/function.inc"
	.include "include/unk_0201CCF0.inc"

	

	.text


	thumb_func_start sub_0201CCF0
sub_0201CCF0: ; 0x0201CCF0
	str r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #8]
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201CCF0

	thumb_func_start sub_0201CD04
sub_0201CD04: ; 0x0201CD04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r7, #0
	cmp r0, #0
	ble _0201CD32
	add r4, r7, #0
	add r6, r7, #0
_0201CD14:
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	add r1, r1, r4
	bl sub_0201CCF0
	ldr r0, [r5, #0x24]
	add r7, r7, #1
	add r1, r0, r4
	ldr r0, [r5, #0x20]
	add r4, #0x1c
	str r1, [r0, r6]
	ldrh r0, [r5]
	add r6, r6, #4
	cmp r7, r0
	blt _0201CD14
_0201CD32:
	mov r0, #0
	strh r0, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201CD04

	thumb_func_start sub_0201CD38
sub_0201CD38: ; 0x0201CD38
	ldrh r3, [r0, #2]
	ldrh r1, [r0]
	cmp r3, r1
	bne _0201CD44
	mov r0, #0
	bx lr
_0201CD44:
	ldr r2, [r0, #0x20]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r3, #1
	strh r1, [r0, #2]
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201CD38

	thumb_func_start sub_0201CD54
sub_0201CD54: ; 0x0201CD54
	ldrh r2, [r0, #2]
	cmp r2, #0
	bne _0201CD5E
	mov r0, #0
	bx lr
_0201CD5E:
	str r0, [r1, #0]
	add r2, r0, #4
	str r2, [r1, #8]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #2]
	sub r2, r2, #1
	strh r2, [r0, #2]
	ldr r2, [r0, #0x20]
	ldrh r0, [r0, #2]
	lsl r0, r0, #2
	str r1, [r2, r0]
	mov r0, #1
	bx lr
	thumb_func_end sub_0201CD54

	thumb_func_start sub_0201CD80
sub_0201CD80: ; 0x0201CD80
	lsl r0, r0, #5
	add r0, #0x34
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201CD80

	thumb_func_start sub_0201CD88
sub_0201CD88: ; 0x0201CD88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0201CD94
	bl GF_AssertFail
_0201CD94:
	add r1, r4, #0
	add r1, #0x34
	lsl r0, r5, #2
	str r1, [r4, #0x20]
	add r0, r1, r0
	str r0, [r4, #0x24]
	strh r5, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl sub_0201CDB4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201CD88

	thumb_func_start sub_0201CDB4
sub_0201CDB4: ; 0x0201CDB4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CD04
	str r4, [r4, #4]
	add r0, r4, #4
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x2c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201CDB4

	thumb_func_start sub_0201CDD4
sub_0201CDD4: ; 0x0201CDD4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _0201CE10
	ldr r1, [r5, #0xc]
	add r4, r5, #4
	str r1, [r5, #0x2c]
	cmp r1, r4
	beq _0201CE0C
	mov r6, #0
_0201CDEA:
	ldr r0, [r1, #8]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _0201CE02
	ldr r2, [r0, #0x14]
	cmp r2, #0
	beq _0201CE04
	ldr r1, [r0, #0x10]
	blx r2
	b _0201CE04
_0201CE02:
	str r6, [r0, #0x18]
_0201CE04:
	ldr r1, [r5, #0x30]
	str r1, [r5, #0x2c]
	cmp r1, r4
	bne _0201CDEA
_0201CE0C:
	mov r0, #0
	str r0, [r1, #0x14]
_0201CE10:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201CDD4

	thumb_func_start sub_0201CE14
sub_0201CE14: ; 0x0201CE14
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #1
	str r5, [r4, #0x28]
	bl sub_0201CE28
	mov r1, #0
	str r1, [r4, #0x28]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201CE14

	thumb_func_start sub_0201CE28
sub_0201CE28: ; 0x0201CE28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0201CD38
	cmp r0, #0
	bne _0201CE3E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CE3E:
	str r4, [r0, #0xc]
	str r7, [r0, #0x10]
	str r6, [r0, #0x14]
	ldr r2, [r5, #0x2c]
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _0201CE5E
	ldr r1, [r2, #0xc]
	cmp r1, r4
	bhi _0201CE58
	mov r1, #1
	str r1, [r0, #0x18]
	b _0201CE62
_0201CE58:
	mov r1, #0
	str r1, [r0, #0x18]
	b _0201CE62
_0201CE5E:
	mov r1, #0
	str r1, [r0, #0x18]
_0201CE62:
	ldr r3, [r5, #0xc]
	add r2, r5, #4
	cmp r3, r2
	beq _0201CE8E
	ldr r4, [r0, #0xc]
_0201CE6C:
	ldr r1, [r3, #0xc]
	cmp r1, r4
	bls _0201CE88
	ldr r1, [r3, #4]
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r3, #4]
	str r0, [r1, #8]
	str r0, [r3, #4]
	ldr r1, [r5, #0x30]
	cmp r3, r1
	bne _0201CEA6
	str r0, [r5, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
_0201CE88:
	ldr r3, [r3, #8]
	cmp r3, r2
	bne _0201CE6C
_0201CE8E:
	ldr r2, [r5, #0x30]
	add r1, r5, #4
	cmp r2, r1
	bne _0201CE98
	str r0, [r5, #0x30]
_0201CE98:
	ldr r1, [r5, #8]
	str r1, [r0, #4]
	add r1, r5, #4
	str r1, [r0, #8]
	ldr r1, [r5, #8]
	str r0, [r1, #8]
	str r0, [r5, #8]
_0201CEA6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201CE28

	thumb_func_start sub_0201CEA8
sub_0201CEA8: ; 0x0201CEA8
	add r1, r0, #0
	ldr r2, [r1, #0]
	ldr r0, [r2, #0x30]
	cmp r0, r1
	bne _0201CEB6
	ldr r0, [r1, #8]
	str r0, [r2, #0x30]
_0201CEB6:
	ldr r2, [r1, #8]
	ldr r0, [r1, #4]
	ldr r3, _0201CEC8 ; =sub_0201CD54
	str r2, [r0, #8]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	str r2, [r0, #4]
	ldr r0, [r1, #0]
	bx r3
	; .align 2, 0
_0201CEC8: .word sub_0201CD54
	thumb_func_end sub_0201CEA8

	thumb_func_start sub_0201CECC
sub_0201CECC: ; 0x0201CECC
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0201CECC

	thumb_func_start sub_0201CED0
sub_0201CED0: ; 0x0201CED0
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0201CED0

	thumb_func_start sub_0201CED4
sub_0201CED4: ; 0x0201CED4
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0201CED4