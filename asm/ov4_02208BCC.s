	.include "macros/function.inc"
	.include "include/ov4_02208BCC.inc"

	

	.text


	arm_func_start ov4_02208BCC
ov4_02208BCC: ; 0x02208BCC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_022082CC
	cmp r0, #0
	mvnne r0, #0x1b
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsb r0, [r5, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	mvneq r0, #0x1b
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _02208C20
	ldrsh r0, [r5, #0x70]
	tst r0, #1
	movne r1, #1
_02208C20:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0x70]
	tst r0, #2
	mvnne r0, #0x1b
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov4_02208C4C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02208BCC

	arm_func_start ov4_02208C4C
ov4_02208C4C: ; 0x02208C4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, _02208C84 ; =ov4_02208C88
	mov r1, r5
	mov r2, #1
	bl ov4_02205FF4
	movs r1, r0
	mvneq r0, #0x20
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	str r4, [r1, #0x10]
	bl ov4_0220613C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02208C84: .word ov4_02208C88
	arm_func_end ov4_02208C4C

	arm_func_start ov4_02208C88
ov4_02208C88: ; 0x02208C88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #4]
	ldr r5, [r4, #0x64]
	add r0, r5, #0xe0
	ldr r6, [r5, #0xc4]
	bl sub_020C29D8
	ldr r1, [r7, #0x10]
	cmp r1, #0
	beq _02208CC8
	mov r0, #1
	str r1, [r6, #0xc]
	bl ov4_02210DC0
	mov r0, #4
	strb r0, [r4, #0x73]
	b _02208CDC
_02208CC8:
	mov r0, #0
	strb r0, [r4, #0x73]
	bl ov4_02210DC0
	mov r0, #0
	str r0, [r6, #0xc]
_02208CDC:
	add r0, r5, #0xe0
	bl sub_020C2A5C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_02208C88