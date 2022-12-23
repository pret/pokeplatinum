	.include "macros/function.inc"
	.include "overlay060/ov60_02225214.inc"

	

	.text


	arm_func_start ov60_02225214
ov60_02225214: ; 0x02225214
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	add r1, sp, #0
	bl ov60_02226E8C
	movs r1, r0
	bmi _0222525C
	ldr r0, [sp]
	bl ov60_022256B4
	ldr r1, [r4, #0x10]
	add sp, sp, #4
	str r0, [r1, #0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, r4, pc}
_0222525C:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov60_02225214