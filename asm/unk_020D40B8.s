	.include "macros/function.inc"
	.include "include/unk_020D40B8.inc"

	

	.text


	arm_func_start sub_020D40B8
sub_020D40B8: ; 0x020D40B8
	bx lr
	arm_func_end sub_020D40B8

	arm_func_start sub_020D40BC
sub_020D40BC: ; 0x020D40BC
	bx lr
	arm_func_end sub_020D40BC

	arm_func_start sub_020D40C0
sub_020D40C0: ; 0x020D40C0
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x24]
	ldr r3, [r0, #0x20]
	str r3, [r0, #0x28]
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x2c]
	and r1, r2, r1
	sub r1, r3, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end sub_020D40C0

	arm_func_start sub_020D40F0
sub_020D40F0: ; 0x020D40F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, r0
	mov r6, r1
	bl sub_020D40C0
	cmp r5, #1
	ldreq r0, [r4, #0x20]
	add r2, r4, #0x28
	streq r0, [r4, #0x28]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x48]
	ldr ip, [r4, #0x3c]
	blx ip
	cmp r0, #2
	moveq r1, #0
	streq r1, [r4, #0x28]
	cmp r6, #0
	ldrne r1, [r4, #0x28]
	strne r1, [r6]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x18]
	ldr r0, [r4, #4]
	mov r0, r0, lsl #0x13
	movs r0, r0, lsr #0x1f
	bne _020D4174
	ldr r0, [r4, #0x1c]
	add r1, r4, #0x28
	bl sub_020D40BC
_020D4174:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020D40F0

	arm_func_start sub_020D417C
sub_020D417C: ; 0x020D417C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	mov r4, r1
	subs r0, r2, r0
	beq _020D41F4
	str r0, [r5, #0x28]
	ldr r0, [r5, #4]
	mov r0, r0, lsl #0x13
	movs r0, r0, lsr #0x1f
	bne _020D41B8
	ldr r0, [r5, #0x1c]
	add r1, r5, #0x28
	bl sub_020D40B8
_020D41B8:
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x1c]
	ldr r3, [r5, #0x48]
	ldr ip, [r5, #0x40]
	add r2, r5, #0x28
	blx ip
	cmp r4, #0
	ldrne r1, [r5, #0x28]
	strne r1, [r4]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x28]
	add r0, r1, r0
	str r0, [r5, #0x18]
_020D41F4:
	mov r0, r5
	bl sub_020D40C0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020D417C