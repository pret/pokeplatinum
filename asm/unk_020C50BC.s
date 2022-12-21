	.include "macros/function.inc"
	.include "include/unk_020C50BC.inc"

	

	.text


	arm_func_start sub_020C50BC
sub_020C50BC: ; 0x020C50BC
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl sub_020C42C4
	mov r0, #0
	bl sub_020C45F4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C50BC