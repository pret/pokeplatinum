	.include "macros/function.inc"
	.include "include/ov4_02208208.inc"

	

	.text


	arm_func_start ov4_02208208
ov4_02208208: ; 0x02208208
	add r0, r0, #3
	bic r0, r0, #3
	bx lr
	arm_func_end ov4_02208208