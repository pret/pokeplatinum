	.include "macros/function.inc"
	.include "include/unk_020E1D14.inc"

	

	.text


	arm_func_start _ll_mod
_ll_mod: ; 0x020E1D14
	stmfd sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov r4, r1
	orr r4, r4, #1
	b _020E1D34
	arm_func_end _ll_mod

	arm_func_start _ll_sdiv
_ll_sdiv: ; 0x020E1D24
	stmfd sp!, {r4, r5, r6, r7, fp, ip, lr}
	eor r4, r1, r3
	mov r4, r4, asr #1
	mov r4, r4, lsl #1
_020E1D34:
	orrs r5, r3, r2
	bne _020E1D44
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1D44:
	mov r5, r0, lsr #0x1f
	add r5, r5, r1
	mov r6, r2, lsr #0x1f
	add r6, r6, r3
	orrs r6, r5, r6
	bne _020E1D78
	mov r1, r2
	bl _s32_div_f
	ands r4, r4, #1
	movne r0, r1
	mov r1, r0, asr #0x1f
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1D78:
	cmp r1, #0
	bge _020E1D88
	rsbs r0, r0, #0
	rsc r1, r1, #0
_020E1D88:
	cmp r3, #0
	bge _020E1D98
	rsbs r2, r2, #0
	rsc r3, r3, #0
_020E1D98:
	orrs r5, r1, r0
	beq _020E1EBC
	mov r5, #0
	mov r6, #1
	cmp r3, #0
	bmi _020E1DC4
_020E1DB0:
	add r5, r5, #1
	adds r2, r2, r2
	adcs r3, r3, r3
	bpl _020E1DB0
	add r6, r6, r5
_020E1DC4:
	cmp r1, #0
	blt _020E1DE4
_020E1DCC:
	cmp r6, #1
	beq _020E1DE4
	sub r6, r6, #1
	adds r0, r0, r0
	adcs r1, r1, r1
	bpl _020E1DCC
_020E1DE4:
	mov r7, #0
	mov ip, #0
	mov fp, #0
	b _020E1E0C
_020E1DF4:
	orr ip, ip, #1
	subs r6, r6, #1
	beq _020E1E64
	adds r0, r0, r0
	adcs r1, r1, r1
	adcs r7, r7, r7
_020E1E0C:
	subs r0, r0, r2
	sbcs r1, r1, r3
	sbcs r7, r7, #0
	adds ip, ip, ip
	adc fp, fp, fp
	cmp r7, #0
	bge _020E1DF4
_020E1E28:
	subs r6, r6, #1
	beq _020E1E5C
	adds r0, r0, r0
	adcs r1, r1, r1
	adc r7, r7, r7
	adds r0, r0, r2
	adcs r1, r1, r3
	adc r7, r7, #0
	adds ip, ip, ip
	adc fp, fp, fp
	cmp r7, #0
	bge _020E1DF4
	b _020E1E28
_020E1E5C:
	adds r0, r0, r2
	adc r1, r1, r3
_020E1E64:
	ands r7, r4, #1
	moveq r0, ip
	moveq r1, fp
	beq _020E1E9C
	subs r7, r5, #0x20
	movge r0, r1, lsr r7
	bge _020E1EC0
	rsb r7, r5, #0x20
	mov r0, r0, lsr r5
	orr r0, r0, r1, lsl r7
	mov r1, r1, lsr r5
	b _020E1E9C
_020E1E94:
	.byte 0x31, 0x07, 0xA0, 0xE1, 0x00, 0x10, 0xA0, 0xE3
_020E1E9C:
	cmp r4, #0
	blt _020E1EAC
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1EAC:
	rsbs r0, r0, #0
	rsc r1, r1, #0
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1EBC:
	mov r0, #0
_020E1EC0:
	mov r1, #0
	cmp r4, #0
	blt _020E1EAC
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
	arm_func_end _ll_sdiv

	arm_func_start _ll_udiv
	arm_func_start _ull_div
_ll_udiv:
_ull_div: ; 0x020E1ED4
	stmfd sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov r4, #0
	b _020E1EE8
	arm_func_end _ull_div

	arm_func_start _ull_mod
_ull_mod: ; 0x020E1EE0
	stmfd sp!, {r4, r5, r6, r7, fp, ip, lr}
	mov r4, #1
_020E1EE8:
	orrs r5, r3, r2
	bne _020E1EF8
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
_020E1EF8:
	orrs r5, r1, r3
	bne _020E1D98
	mov r1, r2
	bl _u32_div_not_0_f
	cmp r4, #0
	movne r0, r1
	mov r1, #0
	ldmia sp!, {r4, r5, r6, r7, fp, ip, lr}
	bx lr
	arm_func_end _ull_mod