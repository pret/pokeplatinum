	.include "macros/function.inc"

	

	.text

	arm_func_start _dfix
	arm_func_start _d_dtoi
_dfix:
_d_dtoi: ; 0x020E0088
	bic r3, r1, #0x80000000
	ldr r2, _020E00D0 ; =0x0000041E
	subs r2, r2, r3, lsr #20
	ble _020E00C4
	cmp r2, #0x20
	bge _020E00BC
	mov r3, r1, lsl #0xb
	orr r3, r3, #0x80000000
	orr r3, r3, r0, lsr #21
	cmp r1, #0
	mov r0, r3, lsr r2
	rsbmi r0, r0, #0
	bx lr
_020E00BC:
	mov r0, #0
	bx lr
_020E00C4:
	mvn r0, r1, asr #31
	add r0, r0, #-0x80000000
	bx lr
	; .align 2, 0
_020E00D0: .word 0x0000041E
	arm_func_end _d_dtoi