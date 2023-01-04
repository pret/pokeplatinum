	.include "macros/function.inc"
	.include "overlay004/ov4_021E91B4.inc"

	

	.text


	arm_func_start ov4_021E91B4
ov4_021E91B4: ; 0x021E91B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021E8E98
	mov r1, r0
	mov r0, #1
	bl DWC_Alloc
	ldr r2, _021E9210 ; =0x0221AE44
	mov r1, #0x790
	str r0, [r2, #4]
	mov r0, #1
	bl DWC_Alloc
	ldr r3, _021E9210 ; =0x0221AE44
	mov r1, #0
	mov r2, #0x790
	str r0, [r3, #0]
	bl MI_CpuFill8
	ldr r1, _021E9210 ; =0x0221AE44
	mov r2, #0
	ldr r3, [r1, #0]
	mov r0, #1
	str r4, [r3, #0]
	str r2, [r1, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E9210: .word Unk_ov4_0221AE44
	arm_func_end ov4_021E91B4

	arm_func_start ov4_021E9214
ov4_021E9214: ; 0x021E9214
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _021E9528 ; =0x0221AE44
	ldr r0, [r3, #4]
	cmp r0, #0
	ldrne r4, [r3]
	cmpne r4, #0
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r3, #8]
	mov r6, #1
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _021E9520
_021E9248: ; jump table
	b _021E9278 ; case 0
	b _021E9520 ; case 1
	b _021E92A0 ; case 2
	b _021E9520 ; case 3
	b _021E92F8 ; case 4
	b _021E935C ; case 5
	b _021E9520 ; case 6
	b _021E9384 ; case 7
	b _021E9520 ; case 8
	b _021E9458 ; case 9
	b _021E94F4 ; case 10
	b _021E951C ; case 11
_021E9278:
	ldr r1, _021E952C ; =ov4_021E95D8
	mov r2, #0
	str r6, [r3, #8]
	bl ov4_021E8EA4
	cmp r0, #0
	beq _021E9520
	ldr r0, _021E9528 ; =0x0221AE44
	mov r1, #0xb
	str r1, [r0, #8]
	b _021E9520
_021E92A0:
	ldr r0, _021E9530 ; =ov4_021E95EC
	mov r1, #3
	str r1, [r3, #8]
	bl ov4_021E8F74
	cmp r0, #0
	bne _021E92E8
	ldr r0, _021E9528 ; =0x0221AE44
	ldr r1, [r0, #0]
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	cmp r0, #0
	cmpeq r1, #0
	bne _021E9520
	bl OS_GetTick
	ldr r2, _021E9528 ; =0x0221AE44
	ldr r2, [r2, #0]
	stmib r2, {r0, r1}
	b _021E9520
_021E92E8:
	ldr r0, _021E9528 ; =0x0221AE44
	mov r1, #0xa
	str r1, [r0, #8]
	b _021E9520
_021E92F8:
	bl OS_GetTick
	ldr r3, _021E9528 ; =0x0221AE44
	ldr r2, _021E9534 ; =0x000082EA
	ldr r4, [r3, #0]
	mov r3, #0
	ldr r5, [r4, #4]
	ldr r4, [r4, #8]
	subs r5, r0, r5
	sbc r0, r1, r4
	mov r1, r0, lsl #6
	orr r1, r1, r5, lsr #26
	mov r0, r5, lsl #6
	bl _ull_div
	ldr r2, _021E9538 ; =0x00000BB8
	cmp r1, #0
	cmpeq r0, r2
	bhs _021E934C
	ldr r0, _021E9528 ; =0x0221AE44
	mov r1, #2
	str r1, [r0, #8]
	b _021E9520
_021E934C:
	ldr r0, _021E9528 ; =0x0221AE44
	mov r1, #5
	str r1, [r0, #8]
	b _021E9520
_021E935C:
	ldr r0, _021E953C ; =ov4_021E9600
	mov r1, #6
	str r1, [r3, #8]
	bl ov4_021E903C
	cmp r0, #0
	beq _021E9520
	ldr r0, _021E9528 ; =0x0221AE44
	mov r1, #0xa
	str r1, [r0, #8]
	b _021E9520
_021E9384:
	add r0, r4, #0xc
	bl ov4_021E9110
	cmp r0, #0
	mov r4, #0
	ldrne r0, _021E9528 ; =0x0221AE44
	movne r1, #0xa
	strne r1, [r0, #8]
	ldr r8, _021E9528 ; =0x0221AE44
	sub r1, r4, #1
	ldr r0, [r8]
	mov r5, r4
	mov r7, r4
	str r1, [r0, #0x78c]
_021E93B8:
	ldr r2, [r8]
	add r1, r2, r7
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _021E941C
	ldrb r0, [r1, #0x78]
	tst r0, #2
	beq _021E941C
	ldrb r0, [r1, #0x77]
	cmp r0, #3
	bhi _021E941C
	add r0, r2, #0x32
	add r0, r0, r7
	bl ov4_021E95A4
	cmp r0, #0
	beq _021E941C
	ldr r1, [r8]
	add r0, r1, r7
	ldrh r0, [r0, #0x10]
	cmp r0, r5
	blo _021E941C
	str r4, [r1, #0x78c]
	ldr r0, [r8]
	add r0, r0, r7
	ldrh r5, [r0, #0x10]
_021E941C:
	add r4, r4, #1
	cmp r4, #0x10
	add r7, r7, #0x78
	blt _021E93B8
	ldr r1, _021E9528 ; =0x0221AE44
	mov r2, #8
	ldr r0, _021E9540 ; =ov4_021E9614
	str r2, [r1, #8]
	bl ov4_021E8F34
	cmp r0, #0
	beq _021E9520
	ldr r0, _021E9528 ; =0x0221AE44
	mov r1, #0xb
	str r1, [r0, #8]
	b _021E9520
_021E9458:
	ldr r2, [r4, #0x78c]
	cmp r2, #0
	movlt r0, #0xb
	strlt r0, [r3, #8]
	blt _021E9520
	add r1, r4, #0x12
	mov r0, #0x78
	mla r0, r2, r0, r1
	ldr r1, [r4, #0]
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r1, _021E9528 ; =0x0221AE44
	mov r0, #0x78
	ldr r4, [r1, #0]
	mov r2, #0x20
	ldr r1, [r4, #0]
	ldr r3, [r4, #0x78c]
	add r4, r4, #0x56
	mla r0, r3, r0, r4
	add r1, r1, #0x20
	bl MI_CpuCopy8
	ldr r1, _021E9528 ; =0x0221AE44
	mov r0, #0x78
	ldr r4, [r1, #0]
	mov r2, #0xa
	ldr r5, [r4, #0x78c]
	ldr r3, [r4, #0]
	mla r4, r5, r0, r4
	ldrb r4, [r4, #0x77]
	str r4, [r3, #0x40]
	ldr r4, [r1, #0]
	ldr r1, [r4, #0]
	ldr r3, [r4, #0x78c]
	add r4, r4, #0x32
	mla r0, r3, r0, r4
	add r1, r1, #0x44
	bl MI_CpuCopy8
	mov r6, #2
	b _021E9520
_021E94F4:
	ldr r0, _021E9544 ; =ov4_021E9628
	mov r1, #8
	str r1, [r3, #8]
	bl ov4_021E8F34
	cmp r0, #0
	beq _021E9520
	ldr r0, _021E9528 ; =0x0221AE44
	mov r1, #0xb
	str r1, [r0, #8]
	b _021E9520
_021E951C:
	mov r6, #3
_021E9520:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021E9528: .word Unk_ov4_0221AE44
_021E952C: .word ov4_021E95D8
_021E9530: .word ov4_021E95EC
_021E9534: .word 0x000082EA
_021E9538: .word 0x00000BB8
_021E953C: .word ov4_021E9600
_021E9540: .word ov4_021E9614
_021E9544: .word ov4_021E9628
	arm_func_end ov4_021E9214

	arm_func_start ov4_021E9548
ov4_021E9548: ; 0x021E9548
	stmfd sp!, {r3, lr}
	ldr r0, _021E95A0 ; =0x0221AE44
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021E9574
	mov r0, #1
	mov r2, #0
	bl DWC_Free
	ldr r0, _021E95A0 ; =0x0221AE44
	mov r1, #0
	str r1, [r0, #4]
_021E9574:
	ldr r0, _021E95A0 ; =0x0221AE44
	ldr r1, [r0, #0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #1
	mov r2, #0
	bl DWC_Free
	ldr r0, _021E95A0 ; =0x0221AE44
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E95A0: .word Unk_ov4_0221AE44
	arm_func_end ov4_021E9548

	arm_func_start ov4_021E95A4
ov4_021E95A4: ; 0x021E95A4
	mov r2, #0
_021E95A8:
	ldrb r1, [r0, r2]
	cmp r1, #0x20
	blo _021E95BC
	cmp r1, #0x7e
	bls _021E95C4
_021E95BC:
	mov r0, #0
	bx lr
_021E95C4:
	add r2, r2, #1
	cmp r2, #0xa
	blt _021E95A8
	mov r0, #1
	bx lr
	arm_func_end ov4_021E95A4

	arm_func_start ov4_021E95D8
ov4_021E95D8: ; 0x021E95D8
	ldr r0, _021E95E8 ; =0x0221AE44
	mov r1, #2
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
_021E95E8: .word Unk_ov4_0221AE44
	arm_func_end ov4_021E95D8

	arm_func_start ov4_021E95EC
ov4_021E95EC: ; 0x021E95EC
	ldr r0, _021E95FC ; =0x0221AE44
	mov r1, #4
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
_021E95FC: .word Unk_ov4_0221AE44
	arm_func_end ov4_021E95EC

	arm_func_start ov4_021E9600
ov4_021E9600: ; 0x021E9600
	ldr r0, _021E9610 ; =0x0221AE44
	mov r1, #7
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
_021E9610: .word Unk_ov4_0221AE44
	arm_func_end ov4_021E9600

	arm_func_start ov4_021E9614
ov4_021E9614: ; 0x021E9614
	ldr r0, _021E9624 ; =0x0221AE44
	mov r1, #9
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
_021E9624: .word Unk_ov4_0221AE44
	arm_func_end ov4_021E9614

	arm_func_start ov4_021E9628
ov4_021E9628: ; 0x021E9628
	ldr r0, _021E9638 ; =0x0221AE44
	mov r1, #0xb
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
_021E9638: .word Unk_ov4_0221AE44
	arm_func_end ov4_021E9628

	.bss


	.global Unk_ov4_0221AE44
Unk_ov4_0221AE44: ; 0x0221AE44
	.space 0x4

	.global Unk_ov4_0221AE48
Unk_ov4_0221AE48: ; 0x0221AE48
	.space 0x4

	.global Unk_ov4_0221AE4C
Unk_ov4_0221AE4C: ; 0x0221AE4C
	.space 0x4

