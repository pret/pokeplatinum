	.include "macros/function.inc"
	.include "include/mi_init.inc"

	

	.text


	arm_func_start MI_Init
MI_Init: ; 0x020C50BC
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl MI_SetWramBank
	mov r0, #0
	bl MI_StopDma
	ldmia sp!, {r3, pc}
	arm_func_end MI_Init