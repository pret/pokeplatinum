	.include "macros/function.inc"
	.include "include/unk_020C3D84.inc"

	

	.text


	arm_func_start sub_020C3D84
sub_020C3D84: ; 0x020C3D84
	mrs r0, cpsr
	bic r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end sub_020C3D84

	arm_func_start sub_020C3D98
sub_020C3D98: ; 0x020C3D98
	mrs r0, cpsr
	orr r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end sub_020C3D98

	arm_func_start sub_020C3DAC
sub_020C3DAC: ; 0x020C3DAC
	mrs r1, cpsr
	bic r2, r1, #0x80
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0x80
	bx lr
	arm_func_end sub_020C3DAC

	arm_func_start sub_020C3DC4
sub_020C3DC4: ; 0x020C3DC4
	mrs r0, cpsr
	orr r1, r0, #0xc0
	msr cpsr_c, r1
	and r0, r0, #0xc0
	bx lr
	arm_func_end sub_020C3DC4

	arm_func_start sub_020C3DD8
sub_020C3DD8: ; 0x020C3DD8
	mrs r1, cpsr
	bic r2, r1, #0xc0
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0xc0
	bx lr
	arm_func_end sub_020C3DD8

	arm_func_start sub_020C3DF0
sub_020C3DF0: ; 0x020C3DF0
	mrs r0, cpsr
	and r0, r0, #0x80
	bx lr
	arm_func_end sub_020C3DF0

	arm_func_start sub_020C3DFC
sub_020C3DFC: ; 0x020C3DFC
	mrs r0, cpsr
	and r0, r0, #0x1f
	bx lr
	arm_func_end sub_020C3DFC

	arm_func_start sub_020C3E08
sub_020C3E08:
	subs r0, r0, #4
	bhs sub_020C3E08
	bx lr
	arm_func_end sub_020C3E08

	arm_func_start sub_020C3E14
sub_020C3E14: ; 0x020C3E14
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl sub_02000522
	mov r0, #1
	mov r1, r0
	bl sub_020C12B4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C3E14