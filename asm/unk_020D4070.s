	.include "macros/function.inc"
	.include "include/unk_020D4070.inc"

	

	.text


	arm_func_start sub_020D4070
sub_020D4070: ; 0x020D4070
	cmp r0, #0
	rsblt r0, r0, #0
	bx lr
	arm_func_end sub_020D4070