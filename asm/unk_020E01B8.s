	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020E01B8
sub_020E01B8: ; 0x020E01B8
	ands r2, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r0, #0
	arm_func_end sub_020E01B8

	arm_func_start sub_020E01C4
sub_020E01C4: ; 0x020E01C4
	mov r1, #0
	bxeq lr
	mov r3, #0x400
	add r3, r3, #0x1e
	clz ip, r0
	movs r0, r0, lsl ip
	sub r3, r3, ip
	movs r1, r0
	mov r0, r1, lsl #0x15
	add r1, r1, r1
	orr r1, r2, r1, lsr #12
	orr r1, r1, r3, lsl #20
	bx lr
	arm_func_end sub_020E01C4

	arm_func_start sub_020E01F8
sub_020E01F8: ; 0x020E01F8
	cmp r0, #0
	arm_func_end sub_020E01F8

	arm_func_start sub_020E01FC
sub_020E01FC: ; 0x020E01FC
	mov r1, #0
	bxeq lr
	mov r3, #0x400
	add r3, r3, #0x1e
	bmi _020E021C
	clz ip, r0
	movs r0, r0, lsl ip
	sub r3, r3, ip
_020E021C:
	mov r1, r0
	mov r0, r1, lsl #0x15
	add r1, r1, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r3, lsl #20
	bx lr
	arm_func_end sub_020E01FC