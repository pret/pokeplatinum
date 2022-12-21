	.include "macros/function.inc"
	.include "include/unk_020DE05C.inc"

	

	.text


	arm_func_start sub_020DE05C
sub_020DE05C: ; 0x020DE05C
	stmfd sp!, {r0, r1, r2, r3}
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	bic r1, r1, #0x80000000
	and r0, r0, #0x80000000
	orr r1, r1, r0
	ldr r0, [sp]
	str r1, [sp, #4]
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020DE05C