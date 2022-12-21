	.include "macros/function.inc"
	.include "include/unk_020B5C14.inc"

	

	.text


	arm_func_start sub_020B5C14
sub_020B5C14: ; 0x020B5C14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	cmp r2, #0
	ldrne r0, [r2, #8]
	mov sb, r1
	cmpne r0, #0
	addne r7, r2, r0
	ldr r0, _020B5CEC ; =0x02100ED8
	add r1, sl, #0x1a
	ldr r3, [r0, #0]
	mov r0, #0
	str r3, [sl, #0xc]
	ldrb r2, [r2, #0x18]
	moveq r7, #0
	strb r2, [sl, #0x19]
	str sb, [sl, #8]
	ldrb r2, [sl, #0x19]
	mov r2, r2, lsl #1
	bl sub_020C4AF0
	ldrb r0, [sb, #0xd]
	mov r6, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r8, r6
	add r5, sb, #0xc
	mov fp, r6
	mvn r4, #0
_020B5C80:
	cmp r5, #0
	beq _020B5CAC
	ldrb r0, [sb, #0xd]
	cmp r6, r0
	bhs _020B5CAC
	ldrh r0, [sb, #0x12]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r8
	b _020B5CB0
_020B5CAC:
	mov r1, fp
_020B5CB0:
	cmp r7, #0
	moveq r0, r4
	beq _020B5CC4
	add r0, r7, #4
	bl sub_020B3AA4
_020B5CC4:
	cmp r0, #0
	orrge r1, r6, #0x100
	addge r0, sl, r0, lsl #1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [sb, #0xd]
	add r6, r6, #1
	add r8, r8, #0x10
	cmp r6, r0
	blo _020B5C80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B5CEC: .word 0x02100ED8
	arm_func_end sub_020B5C14

	arm_func_start sub_020B5CF0
sub_020B5CF0: ; 0x020B5CF0
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r2
	moveq r0, #0
	beq _020B5D0C
	add r0, r5, #0x3c
	bl sub_020B38E4
_020B5D0C:
	ldr r1, [r0, #0]
	ldr r3, [r4, #0x10]
	and r1, r1, #0x1c000000
	cmp r1, #0x14000000
	ldrne r1, [r5, #8]
	ldr r2, _020B5DC0 ; =0x000007FF
	ldreq r1, [r5, #0x18]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r5, r1, #0xe0000000
	ldr r1, _020B5DC4 ; =0xC00F0000
	and r3, r3, r1
	str r3, [r4, #0x10]
	ldr r1, [r0, #0]
	add r1, r1, r5
	orr r1, r3, r1
	str r1, [r4, #0x10]
	ldr r1, [r0, #4]
	and r1, r1, r2
	strh r1, [r4, #0x2c]
	ldr r1, [r0, #4]
	and r1, r1, r2, lsl #11
	mov r1, r1, lsr #0xb
	strh r1, [r4, #0x2e]
	ldr r0, [r0, #4]
	ldrh r1, [r4, #0x2c]
	and r3, r0, r2
	and r0, r0, r2, lsl #11
	cmp r3, r1
	mov r5, r0, lsr #0xb
	moveq r0, #0x1000
	beq _020B5D98
	mov r0, r3, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_020BCFD0
_020B5D98:
	str r0, [r4, #0x30]
	ldrh r1, [r4, #0x2e]
	cmp r5, r1
	moveq r0, #0x1000
	beq _020B5DB8
	mov r0, r5, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_020BCFD0
_020B5DB8:
	str r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B5DC0: .word 0x000007FF
_020B5DC4: .word 0xC00F0000
	arm_func_end sub_020B5CF0

	arm_func_start sub_020B5DC8
sub_020B5DC8: ; 0x020B5DC8
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	ldrneh r0, [r5, #0x34]
	mov r4, r2
	cmpne r0, #0
	moveq r0, #0
	beq _020B5DEC
	add r0, r5, r0
	bl sub_020B38E4
_020B5DEC:
	ldr r1, [r5, #0x2c]
	ldrh r2, [r0, #2]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r1, r1, #0xe0000000
	mov r1, r1, lsl #0x10
	tst r2, #1
	mov r1, r1, lsr #0x10
	ldrh r0, [r0]
	bne _020B5E24
	mov r0, r0, lsl #0xf
	mov r1, r1, lsl #0xf
	mov r0, r0, lsr #0x10
	mov r1, r1, lsr #0x10
_020B5E24:
	add r0, r0, r1
	str r0, [r4, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B5DC8

	arm_func_start sub_020B5E30
sub_020B5E30: ; 0x020B5E30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r3, [r6, #0]
	ldr r5, [r6, #8]
	mov r1, r2, lsl #0x10
	mov r2, r3, lsl #4
	mov r7, r0
	mov r0, r5
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl sub_020B3D10
	mov r4, r0
	ldrb r1, [r4, #2]
	mov r0, r5
	bl sub_020B3CB8
	mov r1, r0
	ldr r0, [r6, #0x14]
	mov r2, r7
	bl sub_020B5CF0
	ldrb r1, [r4, #3]
	cmp r1, #0xff
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl sub_020B3CE4
	mov r1, r0
	ldr r0, [r6, #0x14]
	mov r2, r7
	bl sub_020B5DC8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020B5E30