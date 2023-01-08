	.include "macros/function.inc"

	

	.text

	arm_func_start _f_qtof
	arm_func_start _d2f
	arm_func_start _d_dtof
_f_qtof:
_d2f:
_d_dtof: ; 0x020DFF84
	and r2, r1, #0x80000000
	mov ip, r1, lsr #0x14
	bics ip, ip, #0x800
	beq _020DFFFC
	mov r3, ip, lsl #0x15
	cmn r3, #0x200000
	bhs _020DFFE0
	subs ip, ip, #0x380
	bls _020E000C
	cmp ip, #0xff
	bge _020E007C
	mov r1, r1, lsl #0xc
	orr r3, r2, r1, lsr #9
	orr r3, r3, r0, lsr #29
	movs r1, r0, lsl #3
	orr r0, r3, ip, lsl #23
	bxeq lr
	tst r1, #-0x80000000
	bxeq lr
	movs r1, r1, lsl #1
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_020DFFE0:
	orrs r3, r0, r1, lsl #12
	bne _020DFFF4
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020DFFF4:
	mvn r0, #0x80000000
	bx lr
_020DFFFC:
	orrs r3, r0, r1, lsl #12
	bne __f_underflow
	arm_func_end _d_dtof

	arm_func_start __f_result_zero
__f_result_zero: ; 0x020E0004
	mov r0, r2
	bx lr
_020E000C:
	cmn ip, #0x17
	beq _020E0060
	bmi __f_underflow
	mov r1, r1, lsl #0xb
	orr r1, r1, #0x80000000
	mov r3, r1, lsr #8
	orr r3, r3, r0, lsr #29
	rsb ip, ip, #1
	movs r1, r0, lsl #3
	orr r0, r2, r3, lsr ip
	rsb ip, ip, #0x20
	mov r3, r3, lsl ip
	orrne r3, r3, #1
	movs r1, r3
	bxeq lr
	tst r1, #-0x80000000
	bxeq lr
	movs r1, r1, lsl #1
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E0060:
	orr r0, r0, r1, lsl #12
	arm_func_end __f_result_zero

	arm_func_start __f_very_tiny_result
__f_very_tiny_result: ; 0x020E0064
	movs r1, r0
	mov r0, r2
	addne r0, r0, #1
	bx lr
	arm_func_end __f_very_tiny_result

	arm_func_start __f_underflow
__f_underflow: ; 0x020E0074
	mov r0, r2
	bx lr
_020E007C:
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
	arm_func_end __f_underflow