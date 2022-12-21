	.include "macros/function.inc"
	.include "include/unk_020C42A8.inc"

	

	.text


	arm_func_start sub_020C42A8
sub_020C42A8: ; 0x020C42A8
	stmfd sp!, {r3, lr}
_020C42AC:
	bl sub_020C3D98
	bl sub_020C42B8
	b _020C42AC
	arm_func_end sub_020C42A8

	arm_func_start sub_020C42B8
sub_020C42B8: ; 0x020C42B8
	mov r0, #0
	mcr p15, 0, r0, c7, c0, 4
	bx lr
	arm_func_end sub_020C42B8