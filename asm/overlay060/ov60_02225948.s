	.include "macros/function.inc"
	.include "overlay060/ov60_02225948.inc"

	

	.text


	arm_func_start ov60_02225948
ov60_02225948: ; 0x02225948
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldr sl, [sb]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp sl, #0
	mov r4, #0
	beq _022259C4
	ldr r1, [sl, #8]
	mov r0, r8
	mov r5, sl
	bl ov60_02228AD4
	cmp r0, #0
	beq _022259C0
	ldr r5, [sl, #4]
	ldr r0, [sb]
	cmp r5, r0
	beq _022259C4
_02225994:
	ldr r1, [r5, #8]
	mov r0, r8
	bl ov60_02228AD4
	cmp r0, #0
	moveq r4, #1
	beq _022259C4
	ldr r5, [r5, #4]
	ldr r0, [sb]
	cmp r5, r0
	bne _02225994
	b _022259C4
_022259C0:
	mov r4, #1
_022259C4:
	cmp r4, #0
	strne r7, [r5, #0xc]
	bne _02225A50
	ldr r1, _02225A58 ; =0x0222A018
	mov r0, r6
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	cmp r0, #0
	bne _02225A00
	ldr r0, _02225A5C ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02225A00:
	str r8, [r0, #8]
	str r7, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sb]
	cmp r1, #0
	streq r0, [r0, #4]
	streq r0, [r0]
	streq r0, [sb]
	beq _02225A50
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [sb]
	str r1, [r0, #4]
	ldr r1, [sb]
	ldr r1, [r1, #0]
	str r0, [r1, #4]
	ldr r1, [sb]
	str r0, [r1, #0]
_02225A50:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02225A58: .word 0x0222A018
_02225A5C: .word 0x0222A014
	arm_func_end ov60_02225948

	arm_func_start ov60_02225A60
ov60_02225A60: ; 0x02225A60
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02225A9C
	ldr r2, [r3, #0]
	cmp r3, r2
	moveq r1, #0
	streq r1, [r0]
	beq _02225A9C
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r2, [r3, #0]
	ldr r1, [r3, #4]
	str r2, [r1, #0]
	ldr r1, [r3, #4]
	str r1, [r0, #0]
_02225A9C:
	mov r0, r3
	bx lr
	arm_func_end ov60_02225A60

	arm_func_start ov60_02225AA4
ov60_02225AA4: ; 0x02225AA4
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x7b
	moveq r0, #0x30
	beq _02225ACC
	cmp r0, #0x5b
	moveq r0, #0x61
	beq _02225ACC
	cmp r0, #0x3a
	moveq r0, #0x41
_02225ACC:
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr
	arm_func_end ov60_02225AA4

	arm_func_start ov60_02225AD8
ov60_02225AD8: ; 0x02225AD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r0, sb
	mov r1, r8
	add r2, sl, #0x46
	mov r3, #0x12
	bl ov60_02228BC8
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r6, _02225B74 ; =0x02228D87
	mov fp, #0x13
	mov r4, #0x12
_02225B14:
	add r7, sl, fp
	ldrsb r5, [r7, #0x44]
_02225B1C:
	and r0, r5, #0xff
	bl ov60_02225AA4
	mov r5, r0
	strb r5, [r7, #0x44]
	ldrsb r0, [r6]
	cmp r5, r0
	beq _02225B5C
	mov r0, sb
	mov r1, r8
	mov r3, r4
	add r2, sl, #0x46
	bl ov60_02228BC8
	cmp r0, #0
	bge _02225B1C
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02225B5C:
	sub fp, fp, #1
	cmp fp, #2
	sub r6, r6, #1
	bge _02225B14
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02225B74: .word 0x02228D87
	arm_func_end ov60_02225AD8

	arm_func_start ov60_02225B78
ov60_02225B78: ; 0x02225B78
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r0, #0x34
	mov r3, #0x18
	bl ov60_02225948
	ldmia sp!, {r3, pc}
	arm_func_end ov60_02225B78

	arm_func_start ov60_02225B9C
ov60_02225B9C: ; 0x02225B9C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8]
	mov r7, r1
	mov r6, r2
	mov r5, #0
	cmp r0, #0
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl ov60_0222714C
	mov r4, r0
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl ov60_02225AD8
	cmp r0, #0
	beq _02225C08
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x38
	mov r3, #0x18
	bl ov60_02225948
	movs r5, r0
	ldrne r0, [r8, #0x38]
	ldrne r0, [r0]
	strne r4, [r0, #0x10]
_02225C08:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov60_02225B9C

	arm_func_start ov60_02225C10
ov60_02225C10: ; 0x02225C10
	ldr r3, [r0, #0]
	cmp r3, #0
	movne r0, #0
	streq r1, [r0, #0x1c]
	streq r2, [r0, #0x18]
	moveq r0, #1
	bx lr
	arm_func_end ov60_02225C10