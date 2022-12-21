	.include "macros/function.inc"
	.include "include/unk_020E17B4.inc"

	

	.text


	arm_func_start sub_020E17B4
sub_020E17B4: ; 0x020E17B4
	ands r2, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r0, #0
	arm_func_end sub_020E17B4

	arm_func_start sub_020E17C0
sub_020E17C0: ; 0x020E17C0
	bxeq lr
	clz r3, r0
	movs r0, r0, lsl r3
	rsb r3, r3, #0x9e
	ands r1, r0, #0xff
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst r1, #0x80
	bxeq lr
	ands r3, r1, #0x7f
	andeqs r3, r0, #1
	addne r0, r0, #1
	bx lr
	arm_func_end sub_020E17C0

	arm_func_start sub_020E17FC
sub_020E17FC: ; 0x020E17FC
	cmp r0, #0
	arm_func_end sub_020E17FC

	arm_func_start sub_020E1800
sub_020E1800: ; 0x020E1800
	bxeq lr
	mov r3, #0x9e
	bmi _020E1818
	clz ip, r0
	movs r0, r0, lsl ip
	sub r3, r3, ip
_020E1818:
	ands r2, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst r2, #0x80
	bxeq lr
	ands r1, r2, #0x7f
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
	arm_func_end sub_020E1800