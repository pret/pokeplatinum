	.include "macros/function.inc"
	.include "include/unk_020D4908.inc"

	

	.text


	arm_func_start sub_020D4908
sub_020D4908: ; 0x020D4908
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	mov r1, r1, lsl #0x16
	movs r1, r1, lsr #0x1d
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020D497C
	mov r4, r0
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x44]
	blx r1
	ldr r1, [r5, #4]
	mov r2, #0
	bic r1, r1, #0x380
	str r1, [r5, #4]
	str r2, [r5, #0]
	ldr r1, [r5, #8]
	mov r1, r1, lsl #0x1c
	movs r1, r1, lsr #0x1f
	subne r0, r2, #1
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	cmpeq r0, #0
	movne r2, #1
	rsb r0, r2, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020D4908

	arm_func_start sub_020D497C
sub_020D497C: ; 0x020D497C
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _020D4990
	bl sub_020D4008
	ldmia sp!, {r4, pc}
_020D4990:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _020D49AC
	ldr r0, [r4, #4]
	mov r1, r0, lsl #0x16
	movs r1, r1, lsr #0x1d
	bne _020D49B4
_020D49AC:
	mvn r0, #0
	ldmia sp!, {r4, pc}
_020D49B4:
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	mov r1, r0, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #3
	bichs r0, r0, #7
	orrhs r0, r0, #2
	strhs r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #2
	moveq r0, #0
	streq r0, [r4, #0x28]
	ldr r0, [r4, #8]
	mov r1, r0, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #1
	beq _020D4A20
	bic r0, r0, #7
	str r0, [r4, #8]
	mov r0, #0
	ldmia sp!, {r4, pc}
_020D4A20:
	mov r0, r4
	mov r1, #0
	bl sub_020D417C
	cmp r0, #0
	mov r0, #0
	beq _020D4A4C
	mov r1, #1
	strb r1, [r4, #0xd]
	str r0, [r4, #0x28]
	sub r0, r0, #1
	ldmia sp!, {r4, pc}
_020D4A4C:
	ldr r1, [r4, #8]
	bic r1, r1, #7
	str r1, [r4, #8]
	str r0, [r4, #0x18]
	str r0, [r4, #0x28]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D497C