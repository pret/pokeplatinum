	.include "macros/function.inc"
	.include "include/alloc.inc"

	

	.text


	arm_func_start malloc
malloc: ; 0x020D3F50
	stmfd sp!, {r3, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl __sys_alloc
	ldmia sp!, {r3, pc}
	arm_func_end malloc

	arm_func_start free
free: ; 0x020D3F68
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl __sys_free
	ldmia sp!, {r3, pc}
	arm_func_end free