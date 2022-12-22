	.include "macros/function.inc"
	.include "include/unk_020E1844.inc"

	

	.text


	arm_func_start _f_lltof
_f_lltof: ; 0x020E1844
	ands r2, r1, #0x80000000
	beq _020E1854
	rsbs r0, r0, #0
	rsc r1, r1, #0
_020E1854:
	cmp r1, #0
	bne _020E1864
	movs r0, r0
	b __f_itof_common
_020E1864:
	clz r3, r1
	movs r1, r1, lsl r3
	rsb r3, r3, #0x20
	orr r1, r1, r0, lsr r3
	rsb ip, r3, #0x20
	movs r0, r0, lsl ip
	orrne r1, r1, #1
	add r3, r3, #0x9e
	ands ip, r1, #0xff
	add r0, r1, r1
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst ip, #0x80
	bxeq lr
	ands r3, ip, #0x7f
	andeqs r3, r0, #1
	addne r0, r0, #1
	bx lr
	arm_func_end _f_lltof