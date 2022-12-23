	.include "macros/function.inc"
	.include "overlay061/ov61_0222AE60.inc"

	

	.text


	thumb_func_start ov61_0222AE60
ov61_0222AE60: ; 0x0222AE60
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_0202A75C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5c
	bl sub_0202486C
	add r4, #0x5c
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov61_0222AE60

	thumb_func_start ov61_0222AE80
ov61_0222AE80: ; 0x0222AE80
	ldr r3, _0222AE84 ; =sub_0202A824
	bx r3
	; .align 2, 0
_0222AE84: .word sub_0202A824
	thumb_func_end ov61_0222AE80

	thumb_func_start ov61_0222AE88
ov61_0222AE88: ; 0x0222AE88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	mov r2, #0x67
	add r5, r1, #0
	add r7, r3, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	ldr r1, [sp, #0x28]
	mov r0, #0x3c
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02079AF4
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x14
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	mov r4, #0
	str r7, [sp, #0xc]
	str r7, [sp, #8]
_0222AECA:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #5
	bl sub_02079C08
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	strh r0, [r1, #0x28]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02079C08
	ldr r1, [sp, #8]
	add r2, r4, #0
	str r0, [r1, #0x64]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #7
	bl sub_02079C08
	ldr r1, [sp, #8]
	add r2, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0xae
	bl sub_02079C08
	ldr r1, _0222AF80 ; =0x000001EE
	cmp r0, r1
	bne _0222AF30
	add r0, r1, #0
	sub r0, #0x9a
	ldr r1, [r7, r0]
	mov r0, #1
	lsl r0, r4
	orr r1, r0
	mov r0, #0x55
	lsl r0, r0, #2
	str r1, [r7, r0]
_0222AF30:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x70
	bl sub_02079C08
	mov r1, #0x56
	add r2, r7, r4
	lsl r1, r1, #2
	strb r0, [r2, r1]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	cmp r4, #0x1e
	blt _0222AECA
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02079AA8
	ldr r2, _0222AF84 ; =0x00000176
	mov r1, #0
	strb r0, [r7, r2]
	add r0, r2, #1
	strb r1, [r7, r0]
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, #0x22
	bl sub_0202486C
	mov r1, #0x66
	lsl r1, r1, #2
	strh r0, [r7, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222AF80: .word 0x000001EE
_0222AF84: .word 0x00000176
	thumb_func_end ov61_0222AE88

	thumb_func_start ov61_0222AF88
ov61_0222AF88: ; 0x0222AF88
	push {r4, lr}
	ldr r3, _0222AFA0 ; =0x00000177
	add r4, r1, #0
	strb r2, [r4, r3]
	add r3, #0x21
	add r2, r3, #0
	bl sub_0202486C
	mov r1, #0x66
	lsl r1, r1, #2
	strh r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_0222AFA0: .word 0x00000177
	thumb_func_end ov61_0222AF88

	thumb_func_start ov61_0222AFA4
ov61_0222AFA4: ; 0x0222AFA4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x80
	bl MI_CpuCopy8
	pop {r3, r4, r5, pc}
	thumb_func_end ov61_0222AFA4

	thumb_func_start ov61_0222AFC0
ov61_0222AFC0: ; 0x0222AFC0
	ldr r3, _0222AFC8 ; =MI_CpuCopy8
	mov r2, #0x80
	bx r3
	nop
_0222AFC8: .word MI_CpuCopy8
	thumb_func_end ov61_0222AFC0

	thumb_func_start ov61_0222AFCC
ov61_0222AFCC: ; 0x0222AFCC
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	ldrb r0, [r5, #0x19]
	mov r1, #1
	strb r0, [r4]
	ldrb r0, [r5, #0x1a]
	strb r0, [r4, #1]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #2]
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #3]
	ldrh r0, [r5, #0x1c]
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	bic r0, r1
	ldrb r1, [r5, #0x1b]
	lsl r1, r1, #0x1f
	lsr r2, r1, #0x1f
	mov r1, #1
	and r1, r2
	orr r0, r1
	strb r0, [r4, #6]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov61_0222AFCC