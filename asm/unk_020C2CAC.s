	.include "macros/function.inc"
	.include "include/unk_020C2CAC.inc"

	

	.text


	arm_func_start sub_020C2CAC
sub_020C2CAC: ; 0x020C2CAC
	mov ip, #0x4000000
	ldr r1, [ip, #0x208]
	str ip, [ip, #0x208]
_020C2CB8:
	ldrh r0, [ip, #6]
	cmp r0, #0
	bne _020C2CB8
	str r1, [ip, #0x208]
	bx lr
	arm_func_end sub_020C2CAC

	arm_func_start sub_020C2CCC
sub_020C2CCC: ; 0x020C2CCC
	stmfd sp!, {r3, lr}
	bl sub_020C2D14
	bl sub_020C6350
	bl sub_020C16DC
	bl sub_020C2E18
	bl sub_020C1434
	bl sub_020C16A8
	bl sub_020C3560
	bl sub_020C50BC
	bl sub_020C3D3C
	bl sub_020C405C
	bl sub_020C1DDC
	bl sub_020C3E30
	bl sub_020D0FB4
	bl sub_020CD6F8
	bl sub_020CACD0
	bl sub_020C2CAC
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C2CCC