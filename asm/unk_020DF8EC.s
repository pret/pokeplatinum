	.include "macros/function.inc"
	.include "include/unk_020DF8EC.inc"

	

	.text


	arm_func_start sub_020DF8EC
sub_020DF8EC: ; 0x020DF8EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	add r2, sp, #0
	bl sub_020DE0A4
	ldr r2, [sp]
	add r2, r2, r4
	str r2, [sp]
	bl sub_020DE160
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020DF8EC