	.include "macros/function.inc"
	.include "overlay063/ov63_0222CA88.inc"

	

	.text


	thumb_func_start ov63_0222CA88
ov63_0222CA88: ; 0x0222CA88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r7, #0
	bne _0222CA9C
	bl GF_AssertFail
_0222CA9C:
	cmp r5, #0
	bne _0222CAA4
	bl GF_AssertFail
_0222CAA4:
	cmp r4, #0
	bne _0222CAAC
	bl GF_AssertFail
_0222CAAC:
	cmp r6, #0
	bne _0222CAB4
	bl GF_AssertFail
_0222CAB4:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	bl ov63_0222BF80
	str r0, [sp, #4]
	cmp r0, #0
	bne _0222CAC6
	bl GF_AssertFail
_0222CAC6:
	str r6, [sp]
	add r3, r4, #0
	ldrh r4, [r4]
	add r2, r5, #0
	ldr r0, [sp, #4]
	lsl r5, r4, #2
	ldr r4, _0222CAE0 ; =0x0222DC6C
	add r1, r7, #0
	ldr r4, [r4, r5]
	blx r4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CAE0: .word 0x0222DC6C
	thumb_func_end ov63_0222CA88

	thumb_func_start ov63_0222CAE4
ov63_0222CAE4: ; 0x0222CAE4
	push {r3, r4, r5, lr}
	mov r1, #5
	add r5, r0, #0
	add r4, r3, #0
	bl ov63_0222BF90
	cmp r0, #0
	beq _0222CAF8
	cmp r0, #4
	bne _0222CB0C
_0222CAF8:
	ldrb r0, [r4, #2]
	add r1, r5, #0
	str r0, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x10]
	bl ov63_0222CCB8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222CB0C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222CAE4

	thumb_func_start ov63_0222CB10
ov63_0222CB10: ; 0x0222CB10
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r1, #5
	add r4, r3, #0
	bl ov63_0222BF90
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #6
	bl ov63_0222BF90
	cmp r6, #0
	bne _0222CB46
	ldrb r1, [r4, #2]
	cmp r0, r1
	beq _0222CB46
	str r1, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl ov63_0222CCB8
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0222CB46:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov63_0222CB10

	thumb_func_start ov63_0222CB4C
ov63_0222CB4C: ; 0x0222CB4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #5
	add r5, r0, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl ov63_0222BF90
	add r6, r0, #0
	bne _0222CB94
	ldrb r2, [r4, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ov63_0222CC3C
	cmp r0, #1
	beq _0222CB94
	ldrb r2, [r4, #2]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov63_0222CCA4
	cmp r0, #1
	beq _0222CB94
	ldrb r0, [r4, #2]
	add r1, r5, #0
	str r0, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x20]
	bl ov63_0222CCB8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222CB94:
	cmp r6, #0
	bne _0222CBBA
	add r0, r5, #0
	mov r1, #0xa
	bl ov63_0222BF90
	cmp r0, #8
	blt _0222CBBA
	ldrb r0, [r4, #2]
	add r1, r5, #0
	mov r2, #5
	str r0, [sp]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x20]
	bl ov63_0222CCB8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222CBBA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222CB4C

	thumb_func_start ov63_0222CBC0
ov63_0222CBC0: ; 0x0222CBC0
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov63_0222CB4C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov63_0222CBC0

	thumb_func_start ov63_0222CBD0
ov63_0222CBD0: ; 0x0222CBD0
	push {r3, r4, r5, lr}
	mov r1, #5
	add r5, r0, #0
	add r4, r3, #0
	bl ov63_0222BF90
	cmp r0, #0
	bne _0222CBF4
	ldrb r0, [r4, #2]
	add r1, r5, #0
	str r0, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x10]
	bl ov63_0222CCB8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222CBF4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222CBD0

	thumb_func_start ov63_0222CBF8
ov63_0222CBF8: ; 0x0222CBF8
	push {r3, lr}
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov63_0222CBF8

	thumb_func_start ov63_0222CC04
ov63_0222CC04: ; 0x0222CC04
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov63_0222CB4C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov63_0222CC04

	thumb_func_start ov63_0222CC14
ov63_0222CC14: ; 0x0222CC14
	push {r3, r4, r5, lr}
	mov r1, #5
	add r5, r0, #0
	add r4, r3, #0
	bl ov63_0222BF90
	cmp r0, #0
	bne _0222CC38
	ldrb r0, [r4, #2]
	add r1, r5, #0
	str r0, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x10]
	bl ov63_0222CCB8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222CC38:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222CC14

	thumb_func_start ov63_0222CC3C
ov63_0222CC3C: ; 0x0222CC3C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r2, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	add r1, r5, #0
	strh r0, [r2, #2]
	ldr r0, [r2, #0]
	bl ov63_0222C078
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #8
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r3, [r2, r1]
	add r0, r4, #0
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	mov r3, #0xa
	ldrsh r3, [r2, r3]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x10
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x10
	bl ov63_0222BDAC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov63_0222CC3C

	thumb_func_start ov63_0222CCA4
ov63_0222CCA4: ; 0x0222CCA4
	push {r3, lr}
	bl ov63_0222C1C4
	cmp r0, #0
	beq _0222CCB2
	mov r0, #1
	pop {r3, pc}
_0222CCB2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov63_0222CCA4

	thumb_func_start ov63_0222CCB8
ov63_0222CCB8: ; 0x0222CCB8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	strh r4, [r5, #4]
	ldr r0, [sp, #0x18]
	strb r6, [r5, #7]
	strb r0, [r5, #6]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov63_0222CCB8

	.rodata


	.global Unk_ov63_0222DC6C
Unk_ov63_0222DC6C: ; 0x0222DC6C
	.incbin "incbin/overlay63_rodata.bin", 0x36C, 0x30

