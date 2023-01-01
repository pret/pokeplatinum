	.include "macros/function.inc"

	

	.text

	arm_func_start _dflt
	arm_func_start _d_itod
_dflt:
_d_itod: ; 0x020E01B8
	ands r2, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r0, #0
	arm_func_end _d_itod

	arm_func_start __d_itod_common
__d_itod_common: ; 0x020E01C4
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
	arm_func_end __d_itod_common

	arm_func_start _dfltu
	arm_func_start _d_utod
_dfltu:
_d_utod: ; 0x020E01F8
	cmp r0, #0
	arm_func_end _d_utod

	arm_func_start __d_utod_common
__d_utod_common: ; 0x020E01FC
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
	arm_func_end __d_utod_common