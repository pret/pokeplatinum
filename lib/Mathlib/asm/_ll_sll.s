	.include "macros/function.inc"

	

	.text

	arm_func_start _ll_sll
	arm_func_start _ll_shl
	arm_func_start _ull_sll
_ll_sll:
_ll_shl:
_ull_sll: ; 0x020E1F3C
	ands r2, r2, #0x3f
	bxeq lr
	subs r3, r2, #0x20
	bge _020E1F60
	rsb r3, r2, #0x20
	mov r1, r1, lsl r2
	orr r1, r1, r0, lsr r3
	mov r0, r0, lsl r2
	bx lr
_020E1F60:
	mov r1, r0, lsl r3
	mov r0, #0
	bx lr
	arm_func_end _ull_sll