	.include "macros/function.inc"
	.include "overlay060/ov60_02225268.inc"

	

	.text


	arm_func_start ov60_02225268
ov60_02225268: ; 0x02225268
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	add r1, sp, #0
	bl ov60_02226E8C
	ldr r1, [r4, #0x14]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov60_02225268