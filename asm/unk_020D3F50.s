	.include "macros/function.inc"
	.include "include/unk_020D3F50.inc"

	

	.text


	arm_func_start sub_020D3F50
sub_020D3F50: ; 0x020D3F50
	stmfd sp!, {r3, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020DF918
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3F50

	arm_func_start sub_020D3F68
sub_020D3F68: ; 0x020D3F68
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020DF930
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D3F68