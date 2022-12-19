	.include "macros/function.inc"
	.include "include/ov4_0220657C.inc"

	

	.text


	arm_func_start ov4_0220657C
ov4_0220657C: ; 0x0220657C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_022082CC
	cmp r0, #0
	mvnne r0, #0x1b
	ldmneia sp!, {r4, pc}
	cmp r4, #0
	mov r1, #0
	beq _022065AC
	ldrsh r0, [r4, #0x70]
	tst r0, #1
	movne r1, #1
_022065AC:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqia sp!, {r4, pc}
	ldrsh r0, [r4, #0x70]
	tst r0, #2
	mvnne r0, #0x1b
	ldmneia sp!, {r4, pc}
	ldrsb r0, [r4, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	mvneq r0, #0x1b
	ldmeqia sp!, {r4, pc}
	ldrsb r0, [r4, #0x72]
	cmp r0, #1
	moveq r0, #0
	mvnne r0, #5
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220657C

	arm_func_start ov4_022065FC
ov4_022065FC: ; 0x022065FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_022082CC
	cmp r0, #0
	mvnne r0, #0x1b
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	mov r1, #0
	beq _02206634
	ldrsh r0, [r6, #0x70]
	tst r0, #1
	movne r1, #1
_02206634:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r6, #0x70]
	tst r0, #2
	mvnne r0, #0x1b
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r0, [r6, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	mvneq r0, #0x1b
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r0, [r6, #0x72]
	cmp r0, #1
	mvnne r0, #5
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _022066BC ; =0x0221A154
	bl ov4_02206224
	movs r7, r0
	ldmmiia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0x74]
	bl ov4_02206808
	cmp r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl ov4_022066C0
	cmp r0, #0
	movge r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022066BC: .word 0x0221A154
	arm_func_end ov4_022065FC

	arm_func_start ov4_022066C0
ov4_022066C0: ; 0x022066C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_022082CC
	cmp r0, #0
	mvnne r0, #0x1b
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r6, #0
	mov r1, #0
	beq _022066F8
	ldrsh r0, [r6, #0x70]
	tst r0, #1
	movne r1, #1
_022066F8:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrsh r0, [r6, #0x70]
	tst r0, #2
	mvnne r0, #0x1b
	ldmneia sp!, {r4, r5, r6, pc}
	ldrsb r0, [r6, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	mvneq r0, #0x1b
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrsb r2, [r6, #0x72]
	cmp r2, #1
	mvnne r0, #5
	ldmneia sp!, {r4, r5, r6, pc}
	ldrh r0, [r6, #0x74]
	cmp r0, #0
	mvneq r0, #0x1b
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _0220678C ; =ov4_02206790
	mov r1, r6
	bl ov4_02205FF4
	mov r1, r0
	ldrh r2, [r6, #0x74]
	mov r0, r6
	strh r2, [r1, #0x10]
	str r5, [r1, #0x14]
	str r4, [r1, #0x18]
	ldrsh r2, [r6, #0x70]
	orr r2, r2, #2
	strh r2, [r6, #0x70]
	bl ov4_0220613C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0220678C: .word ov4_02206790
	arm_func_end ov4_022066C0

	arm_func_start ov4_02206790
ov4_02206790: ; 0x02206790
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r4, [r6, #4]
	ldr r5, [r4, #0x64]
	add r0, r5, #0xe0
	bl sub_020C29D8
	mov r1, #0
	ldrh r0, [r6, #0x10]
	mov r2, r1
	bl ov4_0220BD48
	bl ov4_0220BE70
	mov r2, #0
	add r0, sp, #0
	add r1, sp, #4
	str r2, [r5, #0xf8]
	bl ov4_0220BF9C
	ldrh r2, [sp]
	ldr r1, [r6, #0x14]
	strh r2, [r1]
	ldr r1, [r6, #0x18]
	str r0, [r1, #0]
	ldrsh r1, [r4, #0x70]
	add r0, r5, #0xe0
	orr r1, r1, #4
	strh r1, [r4, #0x70]
	bl sub_020C2A5C
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_02206790