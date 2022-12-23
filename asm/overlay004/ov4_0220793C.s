	.include "macros/function.inc"
	.include "overlay004/ov4_0220793C.inc"

	

	.text


	arm_func_start ov4_0220793C
ov4_0220793C: ; 0x0220793C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl ov4_022082CC
	cmp r0, #0
	mvnne r0, #0x1b
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	mov r1, #0
	beq _0220796C
	ldrsh r0, [r4, #0x70]
	tst r0, #1
	movne r1, #1
_0220796C:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrsh r0, [r4, #0x70]
	tst r0, #4
	beq _02207990
	ldrsh r0, [r4, #0x70]
	tst r0, #8
	beq _02207998
_02207990:
	mvn r0, #0x37
	ldmia sp!, {r3, r4, r5, pc}
_02207998:
	ldrsh r0, [r4, #0x70]
	orr r0, r0, #8
	strh r0, [r4, #0x70]
	ldr r5, [r4, #0x68]
	cmp r5, #0
	ldrne r1, [r5, #0x10c]
	cmpne r1, #0
	beq _022079DC
	ldrsb r2, [r4, #0x72]
	ldr r0, _022079E4 ; =ov4_022079E8
	bl ov4_02205FF4
	movs r1, r0
	mvneq r0, #0x20
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x10c]
	bl ov4_0220614C
	ldmia sp!, {r3, r4, r5, pc}
_022079DC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022079E4: .word ov4_022079E8
	arm_func_end ov4_0220793C

	arm_func_start ov4_022079E8
ov4_022079E8: ; 0x022079E8
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	mov r1, #1
	ldrsb r0, [r0, #0x73]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _02207A10
	bl ov4_0220C03C
_02207A10:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_022079E8