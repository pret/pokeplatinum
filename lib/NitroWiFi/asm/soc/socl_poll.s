	.include "macros/function.inc"
	.include "include/socl_poll.inc"

	

	.text


	arm_func_start ov4_022080F0
ov4_022080F0: ; 0x022080F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r5, r0
	bl ov4_022082CC
	cmp r0, #0
	orrne r4, r4, #0x80
	bne _022081B8
	ldrsh r0, [r5, #0x70]
	tst r0, #0x40
	ldrsb r0, [r5, #0x73]
	orrne r4, r4, #0x20
	cmp r0, #1
	beq _02208130
	ldrsh r0, [r5, #0x70]
	tst r0, #4
	beq _02208160
_02208130:
	bl OS_DisableInterrupts
	mov r6, r0
	mov r0, r5
	bl ov4_022081C0
	cmp r0, #0
	mov r0, r5
	orrgt r4, r4, #1
	bl ov4_02207538
	cmp r0, #0
	mov r0, r6
	orrgt r4, r4, #8
	bl OS_RestoreInterrupts
_02208160:
	ldrsb r0, [r5, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022081B8
	ldrsh r0, [r5, #0x70]
	tst r0, #4
	ldrneb r0, [r5, #8]
	cmpne r0, #4
	beq _022081A0
	tst r4, #1
	ldreqsh r0, [r5, #0x70]
	biceq r0, r0, #6
	streqh r0, [r5, #0x70]
_022081A0:
	ldrsh r0, [r5, #0x70]
	tst r0, #2
	bne _022081B8
	ldrsh r0, [r5, #0x70]
	tst r0, #4
	orreq r4, r4, #0x40
_022081B8:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_022080F0

	arm_func_start ov4_022081C0
ov4_022081C0: ; 0x022081C0
	ldr r2, [r0, #0x64]
	mov r3, #0
	cmp r2, #0
	beq _02208200
	ldrsb r1, [r0, #0x73]
	cmp r1, #1
	bne _022081EC
	ldr r0, [r2, #0x104]
	cmp r0, #0
	ldrneh r3, [r0, #4]
	b _02208200
_022081EC:
	cmp r1, #0
	cmpne r1, #4
	ldreq r1, [r0, #0x44]
	ldreq r0, [r2, #0xf8]
	subeq r3, r1, r0
_02208200:
	mov r0, r3
	bx lr
	arm_func_end ov4_022081C0