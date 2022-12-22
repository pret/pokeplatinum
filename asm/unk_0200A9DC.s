	.include "macros/function.inc"
	.include "include/unk_0200A9DC.inc"

	

	.text


	thumb_func_start sub_0200A9DC
sub_0200A9DC: ; 0x0200A9DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x10
	ldrsb r2, [r5, r0]
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r1, r2, #0
	mov r7, #0x1a
	ldrsh r2, [r5, r7]
	mul r1, r0
	mov r6, #0xa
	ldrsh r0, [r5, r6]
	add r1, r2, r1
	mov r4, #0
	cmp r0, r1
	beq _0200AA3A
	cmp r2, r0
	beq _0200AA3A
	strh r1, [r5, #0x1a]
	ldrh r3, [r5, #0x18]
	ldrh r0, [r5, #0x16]
	add r2, r5, #0
	add r1, r5, #0
	add r0, r3, r0
	strh r0, [r5, #0x18]
	ldrh r3, [r5, #0x18]
	ldrh r0, [r5, #8]
	add r2, #0x1a
	add r1, #0x18
	cmp r3, r0
	blo _0200AA3E
	mov r3, #0x10
	ldrsh r0, [r2, r4]
	ldrsb r3, [r5, r3]
	add r0, r0, r3
	strh r0, [r2]
	ldrsh r2, [r5, r7]
	ldrsh r0, [r5, r6]
	cmp r2, r0
	beq _0200AA36
	ldrh r2, [r1]
	ldrh r0, [r5, #8]
	sub r0, r2, r0
	strh r0, [r1]
	b _0200AA3E
_0200AA36:
	mov r4, #1
	b _0200AA3E
_0200AA3A:
	strh r0, [r5, #0x1a]
	mov r4, #1
_0200AA3E:
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _0200AA54
	mov r2, #0x1a
	ldrsh r2, [r5, r2]
	ldr r0, _0200AA70 ; =0x04000050
	ldr r1, [r5, #0]
	bl G2x_SetBlendBrightness_
	b _0200AA66
_0200AA54:
	mov r0, #2
	tst r0, r1
	beq _0200AA66
	mov r2, #0x1a
	ldrsh r2, [r5, r2]
	ldr r0, _0200AA74 ; =0x04001050
	ldr r1, [r5, #0]
	bl G2x_SetBlendBrightness_
_0200AA66:
	cmp r4, #1
	bne _0200AA6E
	mov r0, #0
	str r0, [r5, #0x1c]
_0200AA6E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200AA70: .word 0x04000050
_0200AA74: .word 0x04001050
	thumb_func_end sub_0200A9DC

	thumb_func_start sub_0200AA78
sub_0200AA78: ; 0x0200AA78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0200AA8C
	bl sub_02022974
_0200AA8C:
	ldr r1, [sp, #0x18]
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [r5, #0x1c]
	lsr r1, r1, #0x18
	str r1, [r5, #0]
	ldr r1, [sp, #0x1c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [r5, #4]
	strh r4, [r5, #8]
	strh r6, [r5, #0xa]
	strh r7, [r5, #0x1a]
	sub r1, r7, r6
	strh r1, [r5, #0x12]
	mov r1, #0x12
	ldrsh r2, [r5, r1]
	cmp r2, #0
	ble _0200AAB8
	sub r1, #0x13
	strb r1, [r5, #0x10]
	b _0200AAC2
_0200AAB8:
	strb r0, [r5, #0x10]
	ldrsh r0, [r5, r1]
	sub r1, #0x13
	mul r1, r0
	strh r1, [r5, #0x12]
_0200AAC2:
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r1, r4, #0
	bl _s32_div_f
	strh r0, [r5, #0x14]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r1, r4, #0
	bl _s32_div_f
	strh r1, [r5, #0x16]
	mov r0, #0
	strh r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200AA78

	thumb_func_start sub_0200AAE0
sub_0200AAE0: ; 0x0200AAE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	cmp r5, #0
	beq _0200AB36
	ldr r1, [sp, #0x20]
	mov r0, #1
	tst r0, r1
	beq _0200AB12
	ldr r0, _0200AB3C ; =0x04000050
	add r1, r4, #0
	bl G2x_SetBlendBrightness_
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0200AB40 ; =0x021BF454
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0200AA78
_0200AB12:
	ldr r1, [sp, #0x20]
	mov r0, #2
	tst r0, r1
	beq _0200AB36
	ldr r0, _0200AB44 ; =0x04001050
	add r1, r4, #0
	add r2, r6, #0
	bl G2x_SetBlendBrightness_
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0200AB48 ; =0x021BF434
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0200AA78
_0200AB36:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200AB3C: .word 0x04000050
_0200AB40: .word 0x021BF454
_0200AB44: .word 0x04001050
_0200AB48: .word 0x021BF434
	thumb_func_end sub_0200AAE0

	thumb_func_start sub_0200AB4C
sub_0200AB4C: ; 0x0200AB4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #1
	add r6, r1, #0
	tst r0, r4
	beq _0200AB62
	ldr r0, _0200AB7C ; =0x04000050
	add r2, r5, #0
	bl G2x_SetBlendBrightness_
_0200AB62:
	mov r0, #2
	tst r0, r4
	beq _0200AB72
	ldr r0, _0200AB80 ; =0x04001050
	add r1, r6, #0
	add r2, r5, #0
	bl G2x_SetBlendBrightness_
_0200AB72:
	add r0, r4, #0
	bl sub_0200ABB0
	pop {r4, r5, r6, pc}
	nop
_0200AB7C: .word 0x04000050
_0200AB80: .word 0x04001050
	thumb_func_end sub_0200AB4C

	thumb_func_start sub_0200AB84
sub_0200AB84: ; 0x0200AB84
	push {r3, lr}
	ldr r0, _0200ABA4 ; =0x021BF454
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r0, _0200ABA8 ; =0x021BF434
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r0, _0200ABAC ; =0x021BF434
	mov r1, #0
	str r1, [r0, #0x3c]
	str r1, [r0, #0x1c]
	pop {r3, pc}
	; .align 2, 0
_0200ABA4: .word 0x021BF454
_0200ABA8: .word 0x021BF434
_0200ABAC: .word 0x021BF434
	thumb_func_end sub_0200AB84

	thumb_func_start sub_0200ABB0
sub_0200ABB0: ; 0x0200ABB0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	tst r0, r4
	beq _0200ABCA
	ldr r0, _0200ABE4 ; =0x021BF454
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r0, _0200ABE8 ; =0x021BF434
	mov r1, #0
	str r1, [r0, #0x3c]
_0200ABCA:
	mov r0, #2
	tst r0, r4
	beq _0200ABE0
	ldr r0, _0200ABEC ; =0x021BF434
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r0, _0200ABE8 ; =0x021BF434
	mov r1, #0
	str r1, [r0, #0x1c]
_0200ABE0:
	pop {r4, pc}
	nop
_0200ABE4: .word 0x021BF454
_0200ABE8: .word 0x021BF434
_0200ABEC: .word 0x021BF434
	thumb_func_end sub_0200ABB0

	thumb_func_start sub_0200ABF0
sub_0200ABF0: ; 0x0200ABF0
	push {r3, lr}
	ldr r0, _0200AC10 ; =0x021BF434
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0200AC00
	ldr r0, _0200AC14 ; =0x021BF454
	bl sub_0200A9DC
_0200AC00:
	ldr r0, _0200AC10 ; =0x021BF434
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0200AC0E
	ldr r0, _0200AC18 ; =0x021BF434
	bl sub_0200A9DC
_0200AC0E:
	pop {r3, pc}
	; .align 2, 0
_0200AC10: .word 0x021BF434
_0200AC14: .word 0x021BF454
_0200AC18: .word 0x021BF434
	thumb_func_end sub_0200ABF0

	thumb_func_start sub_0200AC1C
sub_0200AC1C: ; 0x0200AC1C
	cmp r0, #3
	bne _0200AC32
	ldr r0, _0200AC58 ; =0x021BF434
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	bne _0200AC52
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0200AC52
	mov r0, #1
	bx lr
_0200AC32:
	cmp r0, #1
	bne _0200AC42
	ldr r0, _0200AC58 ; =0x021BF434
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _0200AC52
	mov r0, #1
	bx lr
_0200AC42:
	cmp r0, #2
	bne _0200AC52
	ldr r0, _0200AC58 ; =0x021BF434
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0200AC52
	mov r0, #1
	bx lr
_0200AC52:
	mov r0, #0
	bx lr
	nop
_0200AC58: .word 0x021BF434
	thumb_func_end sub_0200AC1C

	.bss


	.global Unk_021BF434
Unk_021BF434: ; 0x021BF434
	.space 0x20

	.global Unk_021BF454
Unk_021BF454: ; 0x021BF454
	.space 0x20

