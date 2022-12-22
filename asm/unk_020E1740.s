	.include "macros/function.inc"

	

	.text


	arm_func_start _f_ftoi
_f_ftoi: ; 0x020E1740
	bic r1, r0, #0x80000000
	mov r2, #0x9e
	subs r2, r2, r1, lsr #23
	ble _020E1768
	mov r1, r1, lsl #8
	orr r1, r1, #0x80000000
	cmp r0, #0
	mov r0, r1, lsr r2
	rsbmi r0, r0, #0
	bx lr
_020E1768:
	mvn r0, r0, asr #31
	add r0, r0, #-0x80000000
	bx lr
	arm_func_end _f_ftoi