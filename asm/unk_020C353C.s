	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020C353C
sub_020C353C: ; 0x020C353C
	mrc p15, 0, r2, c5, c0, 2
	bic r2, r2, r0
	orr r2, r2, r1
	mcr p15, 0, r2, c5, c0, 2
	bx lr
	arm_func_end sub_020C353C

	arm_func_start sub_020C3550
sub_020C3550: ; 0x020C3550
	mcr p15, 0, r0, c6, c1, 0
	bx lr
	arm_func_end sub_020C3550

	arm_func_start sub_020C3558
sub_020C3558: ; 0x020C3558
	mcr p15, 0, r0, c6, c2, 0
	bx lr
	arm_func_end sub_020C3558