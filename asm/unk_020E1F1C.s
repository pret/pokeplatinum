	.include "macros/function.inc"
	.include "include/unk_020E1F1C.inc"

	

	.text


	arm_func_start sub_020E1F1C
sub_020E1F1C: ; 0x020E1F1C
	stmfd sp!, {r4, r5, lr}
	umull r5, r4, r0, r2
	mla r4, r0, r3, r4
	mla r4, r2, r1, r4
	mov r1, r4
	mov r0, r5
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end sub_020E1F1C