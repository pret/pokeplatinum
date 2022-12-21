	.include "macros/function.inc"
	.include "include/unk_020C351C.inc"

	

	.text


	arm_func_start sub_020C351C
sub_020C351C: ; 0x020C351C
	mrc p15, 0, r0, c1, c0, 0
	orr r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end sub_020C351C

	arm_func_start sub_020C352C
sub_020C352C: ; 0x020C352C
	mrc p15, 0, r0, c1, c0, 0
	bic r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end sub_020C352C