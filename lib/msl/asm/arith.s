	.include "macros/function.inc"

	

	.text


	arm_func_start abs
abs: ; 0x020D4070
	cmp r0, #0
	rsblt r0, r0, #0
	bx lr
	arm_func_end abs