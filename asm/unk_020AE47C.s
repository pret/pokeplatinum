	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020AE47C
sub_020AE47C: ; 0x020AE47C
	ldr r1, [r0, #0]
	ldrh r2, [r1], #2
	str r1, [r0, #0]
	mov r0, r2
	bx lr
	arm_func_end sub_020AE47C