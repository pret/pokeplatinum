	.include "macros/function.inc"
	.include "include/unk_020DF8EC.inc"

	

	.text


	arm_func_start scalbn
scalbn: ; 0x020DF8EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	add r2, sp, #0
	bl frexp
	ldr r2, [sp]
	add r2, r2, r4
	str r2, [sp]
	bl ldexp
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end scalbn