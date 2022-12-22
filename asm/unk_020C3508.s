	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020C3508
sub_020C3508: ; 0x020C3508
	mrc p15, 0, r0, c9, c1, 0
	ldr r1, _020C3518 ; =0xFFFFF000
	and r0, r0, r1
	bx lr
	; .align 2, 0
_020C3518: .word 0xFFFFF000
	arm_func_end sub_020C3508