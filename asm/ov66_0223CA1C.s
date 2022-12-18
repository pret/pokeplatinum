	.include "macros/function.inc"
	.include "include/ov66_0223CA1C.inc"

	

	.text


	arm_func_start ov66_0223CA1C
ov66_0223CA1C: ; 0x0223CA1C
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	str r1, [r0, #0x54]
	str r1, [r0, #0x58]
	bx lr
	arm_func_end ov66_0223CA1C

	arm_func_start ov66_0223CA80
ov66_0223CA80: ; 0x0223CA80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #0x30]
	ldr r0, [r2, #0]
	sub r3, r3, #1
	mov r3, r3, lsl #3
	add r3, r3, #0x18
	mov r4, r1
	str r3, [r2, #0]
	cmp r0, r3
	blo _0223CAB4
	cmp r4, #0
	bne _0223CABC
_0223CAB4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0223CABC:
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0]
	ldr r0, [r5, #0x20]
	str r0, [r4, #4]
	ldr r0, [r5, #0x24]
	str r0, [r4, #8]
	ldrb r0, [r5, #0x28]
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #0x29]
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x30]
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _0223CB10
	add r0, r5, #0x2c
	bl ov66_0223CB18
	ldr r2, [r5, #0x30]
	add r1, r4, #0x10
	mov r2, r2, lsl #3
	bl sub_020C4DB0
_0223CB10:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223CA80

	arm_func_start ov66_0223CB18
ov66_0223CB18: ; 0x0223CB18
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldrne r0, [r0]
	bx lr
	arm_func_end ov66_0223CB18

	arm_func_start ov66_0223CB2C
ov66_0223CB2C: ; 0x0223CB2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0
	mov r5, r0
	add r2, sp, #0
	mov r0, r4
	str r1, [sp]
	bl ov66_0223CA80
	ldr r1, [sp]
	mov r2, #0
	str r2, [r5, #0]
	str r2, [r5, #4]
	mov r0, r5
	str r2, [r5, #8]
	bl ov66_0223B6C0
	mov r0, r5
	bl ov66_02235B8C
	mov r1, r0
	add r2, sp, #0
	mov r0, r4
	bl ov66_0223CA80
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223CB2C

	arm_func_start ov66_0223CB84
ov66_0223CB84: ; 0x0223CB84
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r4, r1
	bl ov66_0223EB80
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc]
	add r1, r4, #0x10
	mov r3, #0
	strb r0, [r5, #0x28]
	ldrb r0, [r4, #0xd]
	sub r2, sp, #4
	strb r0, [r5, #0x29]
	ldr ip, [r4]
	add r0, r5, #0x2c
	str ip, [r5, #0x1c]
	ldr ip, [r4, #4]
	str ip, [r5, #0x20]
	ldrh r4, [r4, #0xe]
	strb r3, [sp, #1]
	strb r3, [r2]
	ldr r3, [r2, #0]
	add r2, r1, r4, lsl #3
	bl ov66_0223E9EC
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x30]
	ldrb r2, [sp, #2]
	sub r3, sp, #4
	add r1, r0, r1, lsl #3
	strb r2, [r3]
	ldr r2, [r3, #0]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl ov66_0223D0F4
	ldr r2, [r5, #0x2c]
	ldr r1, [r5, #0x30]
	ldrb r0, [sp]
	add r4, r2, r1, lsl #3
	str r4, [sp, #4]
	ldr r1, [r5, #0x2c]
	sub r2, sp, #4
	strb r0, [r2]
	ldr r3, [r2, #0]
	add r2, sp, #4
	add r0, r5, #0x38
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	bl ov66_0223CC5C
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223CB84

	arm_func_start ov66_0223CC5C
ov66_0223CC5C: ; 0x0223CC5C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	mov r5, r2
	ldr r3, [r5, #0]
	ldr r2, [sp, #0x54]
	mov r6, r0
	sub r1, r3, r2
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r1, r0, asr #3
	str r1, [sp, #0x10]
	ldr r1, [r6, #4]
	str r2, [sp, #8]
	cmp r1, r0, asr #3
	addlo r0, r6, #4
	addhs r0, sp, #0x10
	ldr r4, [r0, #0]
	ldr r1, [sp, #0x54]
	str r3, [sp, #4]
	add r3, r1, r4, lsl #3
	add r0, sp, #0x14
	mov r1, r6
	mov r2, #0
	str r3, [sp, #0xc]
	bl ov66_0223F158
	add r1, sp, #0x54
	add r0, sp, #0xc
	ldr r2, [r0, #0]
	ldr r1, [r1, #0]
	add r0, sp, #0x28
	add r3, sp, #0x14
	bl ov66_0223CF98
	ldr r0, [sp, #0x10]
	subs r0, r0, r4
	str r0, [sp, #0x10]
	beq _0223CD20
	ldrb r0, [sp, #1]
	sub r2, sp, #4
	add r1, sp, #0xc
	strb r0, [r2]
	ldr r3, [r2, #0]
	mov r0, r6
	mov r2, r5
	bl ov66_0223CD68
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_0223CD20:
	ldr r3, [r6, #4]
	cmp r4, r3
	addhs sp, sp, #0x3c
	ldmhsia sp!, {r3, r4, r5, r6, lr}
	addhs sp, sp, #0x10
	bxhs lr
	mov r1, #0
	strb r1, [sp]
	sub r0, sp, #4
	strb r1, [r0]
	ldr r2, [r0, #0]
	mov r0, r6
	sub r1, r3, r4
	bl ov66_0223F66C
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223CC5C

	arm_func_start ov66_0223CD68
ov66_0223CD68: ; 0x0223CD68
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mov r5, r1
	mov r4, r2
	ldr r1, [r5, #0]
	ldr ip, [r4]
	mov r6, r0
	cmp r1, ip
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r3, [r5, #0]
	ldr r1, [r6, #0x10]
	sub r2, ip, r3
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	str r3, [sp, #0xc]
	cmp r1, #0
	mov r2, r0, asr #3
	subne r0, r1, #1
	moveq r3, #0
	movne r3, r0, lsl #7
	ldr r1, [r6, #0]
	ldr r0, [r6, #4]
	str ip, [sp, #8]
	add r0, r1, r0
	sub r1, r3, r0
	cmp r2, r1
	bls _0223CDE4
	mov r0, r6
	sub r1, r2, r1
	bl ov66_0223F1E4
_0223CDE4:
	ldr r2, [r6, #4]
	add r0, sp, #0x10
	mov r1, r6
	bl ov66_0223F158
	add r0, r6, #8
	str r0, [sp]
	add r0, r6, #4
	str r0, [sp, #4]
	ldr r1, [r5, #0]
	ldr r2, [r4, #0]
	add r0, sp, #0x24
	add r3, sp, #0x10
	bl ov66_0223CE20
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_0223CD68

	arm_func_start ov66_0223CE20
ov66_0223CE20: ; 0x0223CE20
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r4, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x3c]
	cmp r4, r2
	beq _0223CF60
	sub r4, r2, r4
	mov r2, r4, asr #2
	add r2, r4, r2, lsr #29
	mov r2, r2, asr #3
	str r2, [sp, #0x10]
_0223CE54:
	ldr r4, [r3, #0x10]
	cmp r4, #0
	moveq r2, r4
	ldrne r2, [r3]
	ldrne r2, [r2]
	addne r2, r2, #0x400
	sub r4, r2, r4
	mov r2, r4, asr #2
	add r2, r4, r2, lsr #29
	ldr r4, [sp, #0x10]
	mov ip, r2, asr #3
	cmp r4, r2, asr #3
	addgt r2, sp, #8
	str ip, [sp, #8]
	addle r2, sp, #0x10
	ldr r4, [sp, #0x2c]
	ldr r5, [r2, #0]
	str r4, [sp, #4]
	add lr, r4, r5, lsl #3
	str lr, [sp, #0xc]
	str lr, [sp]
	cmp r4, lr
	ldr r6, [r3, #0x10]
	beq _0223CEEC
_0223CEB4:
	cmp r6, #0
	beq _0223CECC
	ldr ip, [r4]
	ldr r2, [r4, #4]
	str ip, [r6]
	str r2, [r6, #4]
_0223CECC:
	ldr r2, [r1, #0]
	add r4, r4, #8
	add r2, r2, #1
	str r2, [r1, #0]
	cmp r4, lr
	add r6, r6, #8
	bne _0223CEB4
	str r4, [sp, #4]
_0223CEEC:
	ldr ip, [sp, #0x10]
	sub r2, r5, #1
	sub ip, ip, r5
	str ip, [sp, #0x10]
	ldr ip, [r3, #0x10]
	add r2, ip, r2, lsl #3
	str r2, [r3, #0x10]
	add ip, r2, #8
	ldr r2, [r3, #0]
	str ip, [r3, #0x10]
	ldr r2, [r2, #0]
	add r2, r2, #0x400
	cmp ip, r2
	bne _0223CF4C
	ldr r2, [r3, #0]
	add ip, r2, #4
	str ip, [r3]
	ldr r2, [r3, #0xc]
	cmp ip, r2
	ldreq r2, [r3, #4]
	streq r2, [r3]
	ldr r2, [r3, #0]
	ldr r2, [r2, #0]
	str r2, [r3, #0x10]
_0223CF4C:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r2, [sp, #0xc]
	strne r2, [sp, #0x2c]
	bne _0223CE54
_0223CF60:
	ldr r1, [r3, #0]
	str r1, [r0, #0]
	ldr r1, [r3, #4]
	str r1, [r0, #4]
	ldr r1, [r3, #8]
	str r1, [r0, #8]
	ldr r1, [r3, #0xc]
	str r1, [r0, #0xc]
	ldr r1, [r3, #0x10]
	str r1, [r0, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223CE20

	arm_func_start ov66_0223CF98
ov66_0223CF98: ; 0x0223CF98
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	cmp r2, r1
	beq _0223D0BC
	sub r2, r1, r2
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov r1, r1, asr #3
	str r1, [sp, #0x10]
_0223CFC8:
	ldr r2, [r3, #0x10]
	cmp r2, #0
	moveq r1, r2
	ldrne r1, [r3]
	ldrne r1, [r1]
	addne r1, r1, #0x400
	sub r2, r1, r2
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	ldr r2, [sp, #0x10]
	mov ip, r1, asr #3
	cmp r2, r1, asr #3
	addgt r1, sp, #8
	str ip, [sp, #8]
	addle r1, sp, #0x10
	ldr r2, [sp, #0x24]
	ldr ip, [r1]
	str r2, [sp, #4]
	add r4, r2, ip, lsl #3
	str r4, [sp, #0xc]
	str r4, [sp]
	cmp r2, r4
	ldr lr, [r3, #0x10]
	bhs _0223D048
_0223D028:
	ldr r1, [r2, #0]
	str r1, [lr]
	ldr r1, [r2, #4]
	add r2, r2, #8
	str r1, [lr, #4]
	cmp r2, r4
	add lr, lr, #8
	blo _0223D028
_0223D048:
	ldr r2, [sp, #0x10]
	sub r1, ip, #1
	sub r2, r2, ip
	str r2, [sp, #0x10]
	ldr r2, [r3, #0x10]
	add r1, r2, r1, lsl #3
	str r1, [r3, #0x10]
	add r2, r1, #8
	ldr r1, [r3, #0]
	str r2, [r3, #0x10]
	ldr r1, [r1, #0]
	add r1, r1, #0x400
	cmp r2, r1
	bne _0223D0A8
	ldr r1, [r3, #0]
	add r2, r1, #4
	str r2, [r3, #0]
	ldr r1, [r3, #0xc]
	cmp r2, r1
	ldreq r1, [r3, #4]
	streq r1, [r3]
	ldr r1, [r3, #0]
	ldr r1, [r1, #0]
	str r1, [r3, #0x10]
_0223D0A8:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	ldrne r1, [sp, #0xc]
	strne r1, [sp, #0x24]
	bne _0223CFC8
_0223D0BC:
	ldr r1, [r3, #0]
	str r1, [r0, #0]
	ldr r1, [r3, #4]
	str r1, [r0, #4]
	ldr r1, [r3, #8]
	str r1, [r0, #8]
	ldr r1, [r3, #0xc]
	str r1, [r0, #0xc]
	ldr r1, [r3, #0x10]
	str r1, [r0, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223CF98

	arm_func_start ov66_0223D0F4
ov66_0223D0F4: ; 0x0223D0F4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	sub r1, r1, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r1, r0, asr #3
	cmp r1, #0x14
	movle r1, #0
	add r0, sp, #0xc
	bl ov66_0223E988
	ldr r4, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add ip, sp, #0x24
	mov r2, #0
	add lr, r4, r3, lsl #3
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	str r4, [sp, #0x2c]
	add r0, sp, #0x38
	add r1, sp, #0x3c
	str lr, [sp]
	add r3, sp, #0x40
	str ip, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0x1c
	str r4, [sp, #0x1c]
	str ip, [sp, #0x20]
	str r3, [sp, #8]
	str lr, [sp, #0x14]
	str ip, [sp, #0x18]
	ldmia r2, {r2, r3}
	bl ov66_0223D19C
	ldr r0, [sp, #0x2c]
	bl sub_020E4000
	add sp, sp, #0x30
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223D0F4

	arm_func_start ov66_0223D19C
ov66_0223D19C: ; 0x0223D19C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	ldr r0, [sp, #0x64]
	ldr r6, [sp, #0x60]
	ldr r7, [sp, #0x78]
	sub r1, r0, r6
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r5, r0, asr #3
	cmp r5, #1
	addle sp, sp, #0x4c
	ldmleia sp!, {r4, r5, r6, r7, lr}
	addle sp, sp, #0x10
	bxle lr
	cmp r5, #2
	bne _0223D240
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x60]
	sub r4, r0, #8
	ldr r3, [r4, #0]
	ldr r0, [r1, #0]
	str r4, [sp, #0x64]
	cmp r3, r0
	addge sp, sp, #0x4c
	ldmgeia sp!, {r4, r5, r6, r7, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r2, [r1, #0]
	ldr r1, [r1, #4]
	str r2, [sp, #0x1c]
	str r3, [r6, #0]
	ldr r0, [r4, #4]
	str r1, [sp, #0x20]
	str r0, [r6, #4]
	str r2, [r4, #0]
	add sp, sp, #0x4c
	str r1, [r4, #4]
	ldmia sp!, {r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_0223D240:
	cmp r5, #0x14
	bgt _0223D270
	add r0, sp, #0x60
	add r1, sp, #0x64
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, r7
	bl ov66_0223E8C8
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_0223D270:
	ldr r2, [sp, #0x70]
	ldr r1, [sp, #0x68]
	add r0, r5, r5, lsr #31
	sub r2, r2, r1
	mov r1, r2, asr #2
	add r2, r2, r1, lsr #29
	sub r4, r5, r0, asr #1
	ldr r1, [sp, #0x60]
	cmp r5, r2, asr #3
	add r1, r1, r4, lsl #3
	str r1, [sp, #0x48]
	add r0, sp, #0x60
	add r2, sp, #0x68
	bgt _0223D354
	ldr r0, [r0, #0]
	str r7, [sp]
	ldmia r2, {r2, r3}
	bl ov66_0223DFD4
	ldr r2, [sp, #0x68]
	add r0, sp, #0x48
	add r3, r2, r4, lsl #3
	add r1, sp, #0x64
	ldr r6, [sp, #0x6c]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0x40
	str r6, [sp, #0x44]
	str r3, [sp, #0x40]
	str r7, [sp]
	ldmia r2, {r2, r3}
	bl ov66_0223DFD4
	ldr r0, [sp, #0x68]
	add r1, sp, #0x68
	add r2, r0, r4, lsl #3
	add r3, r0, r5, lsl #3
	stmib sp, {r2, r6}
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x60]
	str r6, [sp, #0x10]
	str r0, [sp, #0x14]
	str r7, [sp, #0x18]
	sub r0, sp, #4
	stmia r0, {r2, r6}
	str r3, [sp, #0x24]
	ldr r3, [r0, #0]
	add r0, sp, #0x3c
	str r6, [sp, #0x28]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x34]
	str r6, [sp, #0x30]
	str r6, [sp, #0x38]
	ldmia r1, {r1, r2}
	bl ov66_0223DE50
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_0223D354:
	ldr r4, [sp, #0x70]
	ldr r3, [sp, #0x74]
	str r4, [sp]
	stmib sp, {r3, r7}
	ldr r0, [r0, #0]
	ldmia r2, {r2, r3}
	bl ov66_0223D19C
	ldr r4, [sp, #0x70]
	add r0, sp, #0x48
	add r1, sp, #0x64
	ldr r3, [sp, #0x74]
	str r4, [sp]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0x68
	stmib sp, {r3, r7}
	ldmia r2, {r2, r3}
	bl ov66_0223D19C
	add r0, sp, #0x60
	add r1, sp, #0x48
	add r2, sp, #0x64
	ldr ip, [sp, #0x48]
	ldr r3, [sp, #0x60]
	ldr r0, [r0, #0]
	sub r5, ip, r3
	mov r4, r5, asr #2
	add r4, r5, r4, lsr #29
	mov r4, r4, asr #3
	str r4, [sp]
	ldr r4, [sp, #0x64]
	ldr r5, [sp, #0x68]
	sub r6, r4, ip
	mov r4, r6, asr #2
	add r4, r6, r4, lsr #29
	mov r4, r4, asr #3
	str r4, [sp, #4]
	str r5, [sp, #8]
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	str r4, [sp, #0xc]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	ldr r4, [sp, #0x74]
	str r5, [sp, #0x10]
	mov r3, r7
	str r4, [sp, #0x14]
	bl ov66_0223D420
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223D19C

	arm_func_start ov66_0223D420
ov66_0223D420: ; 0x0223D420
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x88
	ldr r8, [sp, #0xb0]
	ldr r7, [sp, #0xb4]
	cmp r8, #0
	cmpne r7, #0
	mov r4, r3
	addeq sp, sp, #0x88
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r0, r8, r7
	cmp r0, #2
	bne _0223D4BC
	ldr r6, [sp, #0xa4]
	ldr r1, [sp, #0xa0]
	ldr r5, [r6, #0]
	ldr r0, [r1, #0]
	cmp r5, r0
	addge sp, sp, #0x88
	ldmgeia sp!, {r4, r5, r6, r7, r8, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r4, [r1, #0]
	ldr r3, [r1, #4]
	ldr r2, [sp, #0xa0]
	ldr r0, [sp, #0xa4]
	str r5, [r2, #0]
	ldr r1, [r6, #4]
	str r4, [sp, #0x54]
	str r1, [r2, #4]
	str r4, [r0, #0]
	str r3, [sp, #0x58]
	str r3, [r0, #4]
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_0223D4BC:
	ldr r1, [sp, #0xc0]
	ldr r0, [sp, #0xb8]
	cmp r8, r7
	sub r1, r1, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	cmple r8, r0, asr #3
	bgt _0223D604
	ldr r1, [sp, #0xa4]
	ldr r0, [sp, #0xa0]
	ldr r3, [sp, #0xb8]
	ldr r2, [sp, #0xbc]
	str r0, [sp, #0x50]
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	str r3, [sp, #0x44]
	str r2, [sp, #0x48]
	str r1, [sp, #0x4c]
	cmp r0, #0
	beq _0223D5A8
	cmp r0, #0
	add r1, sp, #0x3c
	beq _0223D5A8
	ldr r5, [sp, #0x50]
	ldr r3, [sp, #0x4c]
_0223D524:
	ldr r0, [sp, #0x44]
	ldr r6, [sp, #0x48]
	str r0, [sp, #0x3c]
	str r6, [sp, #0x40]
	ldr r2, [r6, #8]
	ldr r6, [r6, #4]
	sub r7, r0, r2
	mov r2, r7, asr #2
	add r2, r7, r2, lsr #29
	cmp r6, r2, asr #3
	ble _0223D564
	ldr r2, [r5, #0]
	str r2, [r0, #0]
	ldr r2, [r5, #4]
	str r2, [r0, #4]
	b _0223D58C
_0223D564:
	cmp r0, #0
	beq _0223D57C
	ldr r6, [r5, #0]
	ldr r2, [r5, #4]
	str r6, [r0, #0]
	str r2, [r0, #4]
_0223D57C:
	ldr r2, [r1, #4]
	ldr r0, [r2, #4]
	add r0, r0, #1
	str r0, [r2, #4]
_0223D58C:
	ldr r0, [sp, #0x44]
	add r5, r5, #8
	add r0, r0, #8
	str r0, [sp, #0x44]
	cmp r5, r3
	bne _0223D524
	str r5, [sp, #0x50]
_0223D5A8:
	ldr r0, [sp, #0xa4]
	ldr r1, [sp, #0xa8]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0xa0]
	ldr r5, [sp, #0x44]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x48]
	str r4, [sp, #0x10]
	sub r0, sp, #4
	str r5, [r0, #0]
	str r2, [r0, #4]
	ldr r3, [r0, #0]
	add r1, sp, #0xb8
	str r2, [sp, #0x78]
	add r0, sp, #0x7c
	str r5, [sp, #0x74]
	ldmia r1, {r1, r2}
	bl ov66_0223DCF8
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_0223D604:
	cmp r7, r0, asr #3
	bgt _0223D738
	ldr r1, [sp, #0xa4]
	ldr r0, [sp, #0xa8]
	ldr r3, [sp, #0xb8]
	ldr r2, [sp, #0xbc]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	str r1, [sp, #0x38]
	cmp r0, #0
	beq _0223D6D4
	cmp r0, #0
	add r1, sp, #0x28
	beq _0223D6D4
	ldr r5, [sp, #0x38]
	ldr r3, [sp, #0xa8]
_0223D650:
	ldr r0, [sp, #0x30]
	ldr r6, [sp, #0x34]
	str r0, [sp, #0x28]
	str r6, [sp, #0x2c]
	ldr r2, [r6, #8]
	ldr r6, [r6, #4]
	sub r7, r0, r2
	mov r2, r7, asr #2
	add r2, r7, r2, lsr #29
	cmp r6, r2, asr #3
	ble _0223D690
	ldr r2, [r5, #0]
	str r2, [r0, #0]
	ldr r2, [r5, #4]
	str r2, [r0, #4]
	b _0223D6B8
_0223D690:
	cmp r0, #0
	beq _0223D6A8
	ldr r6, [r5, #0]
	ldr r2, [r5, #4]
	str r6, [r0, #0]
	str r2, [r0, #4]
_0223D6A8:
	ldr r2, [r1, #4]
	ldr r0, [r2, #4]
	add r0, r0, #1
	str r0, [r2, #4]
_0223D6B8:
	ldr r0, [sp, #0x30]
	add r5, r5, #8
	add r0, r0, #8
	str r0, [sp, #0x30]
	cmp r5, r3
	bne _0223D650
	str r5, [sp, #0x38]
_0223D6D4:
	ldr r6, [sp, #0x30]
	ldr r5, [sp, #0x34]
	str r6, [sp, #4]
	ldr r0, [sp, #0xa8]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	add r1, sp, #0xa0
	ldr r3, [sp, #0xb8]
	sub r4, sp, #4
	ldr r2, [sp, #0xbc]
	str r3, [r4, #0]
	str r2, [r4, #4]
	add r0, sp, #0xa4
	ldr r2, [r0, #0]
	ldr r3, [r4, #0]
	ldr r1, [r1, #0]
	add r0, sp, #0x70
	str r6, [sp, #0x68]
	str r5, [sp, #0x6c]
	bl ov66_0223DAC4
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_0223D738:
	cmp r8, r7
	bgt _0223D798
	add r1, sp, #0xa0
	add r2, sp, #0xa4
	add r0, r7, r7, lsr #31
	mov r6, r0, asr #1
	ldr r3, [sp, #0xa4]
	ldr r1, [r1, #0]
	add r3, r3, r6, lsl #3
	ldr r2, [r2, #0]
	add r0, sp, #0x64
	str r4, [sp]
	str r3, [sp, #0x80]
	bl ov66_0223DA44
	ldr r3, [sp, #0x64]
	ldr r2, [sp, #0xa0]
	str r3, [sp, #0x84]
	sub r1, r3, r2
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	mov r5, r0, asr #3
	b _0223D7EC
_0223D798:
	add r1, sp, #0xa4
	add r2, sp, #0xa8
	add r0, r8, r8, lsr #31
	mov r5, r0, asr #1
	ldr r3, [sp, #0xa0]
	ldr r1, [r1, #0]
	add r3, r3, r5, lsl #3
	ldr r2, [r2, #0]
	add r0, sp, #0x60
	str r4, [sp]
	str r3, [sp, #0x84]
	bl ov66_0223D9C4
	ldr r3, [sp, #0x60]
	ldr r2, [sp, #0xa4]
	str r3, [sp, #0x80]
	sub r1, r3, r2
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r6, r0, asr #3
_0223D7EC:
	add r1, sp, #0x84
	add r2, sp, #0xa4
	add r0, sp, #0x80
	ldr r3, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r0, sp, #0x5c
	bl ov66_0223D8B0
	ldr r2, [sp, #0x5c]
	add r0, sp, #0xa0
	add r1, sp, #0x84
	ldr r3, [sp, #0xb8]
	stmia sp, {r5, r6}
	str r3, [sp, #8]
	ldr ip, [sp, #0xbc]
	ldr r3, [sp, #0xc0]
	str ip, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr ip, [sp, #0xc4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r3, r4
	str ip, [sp, #0x14]
	str r2, [sp, #0xa4]
	bl ov66_0223D420
	sub r2, r8, r5
	str r2, [sp]
	sub r5, r7, r6
	str r5, [sp, #4]
	ldr r3, [sp, #0xb8]
	add r0, sp, #0xa4
	add r1, sp, #0x80
	add r2, sp, #0xa8
	str r3, [sp, #8]
	ldr r5, [sp, #0xbc]
	ldr r3, [sp, #0xc0]
	str r5, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r5, [sp, #0xc4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, r4
	str r5, [sp, #0x14]
	bl ov66_0223D420
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223D420

	arm_func_start ov66_0223D8B0
ov66_0223D8B0: ; 0x0223D8B0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x24]
	ldr lr, [sp, #0x28]
	cmp r4, lr
	ldreq r1, [sp, #0x2c]
	addeq sp, sp, #0x10
	streq r1, [r0]
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr ip, [sp, #0x2c]
	cmp lr, ip
	ldreq r1, [sp, #0x24]
	addeq sp, sp, #0x10
	streq r1, [r0]
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r5, [sp, #0x28]
_0223D904:
	ldr r3, [r4, #0]
	ldr r2, [r4, #4]
	ldr r1, [r5, #0]
	str r3, [sp, #8]
	str r1, [r4, #0]
	ldr r1, [r5, #4]
	str r2, [sp, #0xc]
	str r1, [r4, #4]
	str r3, [r5, #0]
	str r2, [r5, #4]
	add r5, r5, #8
	cmp r5, ip
	add r4, r4, #8
	beq _0223D948
	cmp r4, lr
	moveq lr, r5
	b _0223D904
_0223D948:
	mov r5, r4
	cmp r4, lr
	beq _0223D9B0
	ldr r1, [sp, #0x2c]
	mov r6, lr
_0223D95C:
	ldr ip, [r4]
	ldr r3, [r4, #4]
	ldr r2, [r6, #0]
	str ip, [sp]
	str r2, [r4, #0]
	ldr r2, [r6, #4]
	str r3, [sp, #4]
	str r2, [r4, #4]
	str ip, [r6]
	str r3, [r6, #4]
	add r6, r6, #8
	cmp r6, r1
	add r4, r4, #8
	bne _0223D9A4
	cmp r4, lr
	beq _0223D9B0
	mov r6, lr
	b _0223D95C
_0223D9A4:
	cmp r4, lr
	moveq lr, r6
	b _0223D95C
_0223D9B0:
	str r5, [r0, #0]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223D8B0

	arm_func_start ov66_0223D9C4
ov66_0223D9C4: ; 0x0223D9C4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr ip, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str ip, [sp]
	sub r2, r1, ip
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov lr, r1, asr #3
	cmp lr, #0
	ble _0223DA2C
	ldr r4, [r3, #0]
_0223D9F8:
	add r1, lr, lr, lsr #31
	mov r3, r1, asr #1
	ldr r1, [ip, r3, lsl #3]
	add r2, ip, r3, lsl #3
	cmp r1, r4
	movge lr, r3
	bge _0223DA24
	add ip, r2, #8
	add r1, r3, #1
	str ip, [sp, #0x14]
	sub lr, lr, r1
_0223DA24:
	cmp lr, #0
	bgt _0223D9F8
_0223DA2C:
	ldr r1, [sp, #0x14]
	str r1, [r0, #0]
	add sp, sp, #4
	ldmia sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223D9C4

	arm_func_start ov66_0223DA44
ov66_0223DA44: ; 0x0223DA44
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr ip, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str ip, [sp]
	sub r2, r1, ip
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov lr, r1, asr #3
	cmp lr, #0
	ble _0223DAAC
	ldr r4, [r3, #0]
_0223DA78:
	add r1, lr, lr, lsr #31
	mov r3, r1, asr #1
	ldr r1, [ip, r3, lsl #3]
	add r2, ip, r3, lsl #3
	cmp r4, r1
	movlt lr, r3
	blt _0223DAA4
	add ip, r2, #8
	add r1, r3, #1
	str ip, [sp, #0x14]
	sub lr, lr, r1
_0223DAA4:
	cmp lr, #0
	bgt _0223DA78
_0223DAAC:
	ldr r1, [sp, #0x14]
	str r1, [r0, #0]
	add sp, sp, #4
	ldmia sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223DA44

	arm_func_start ov66_0223DAC4
ov66_0223DAC4: ; 0x0223DAC4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x40
	ldr r3, [sp, #0x54]
	ldr r1, [sp, #0x58]
	cmp r3, r1
	bne _0223DB50
	ldr r5, [sp, #0x6c]
	ldr r4, [sp, #0x64]
	ldr r3, [sp, #0x5c]
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x60]
	str r5, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r2, [sp, #0x34]
	str r3, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r4, r3
	beq _0223DB38
_0223DB10:
	ldr r1, [sp, #0x30]
	sub r2, r1, #8
	ldr r1, [r2, #0]
	str r2, [sp, #0x30]
	str r1, [r5, #-8]!
	ldr r1, [r2, #4]
	cmp r2, r3
	str r1, [r5, #4]
	bne _0223DB10
	str r5, [sp, #0x2c]
_0223DB38:
	ldr r1, [sp, #0x2c]
	add sp, sp, #0x40
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0223DB50:
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x64]
	cmp r2, r1
	bne _0223DBAC
	ldr r3, [sp, #0x6c]
	ldr r2, [sp, #0x58]
	ldr r4, [sp, #0x54]
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	str r4, [sp, #0x28]
	cmp r2, r4
	bls _0223DB98
_0223DB80:
	ldr r1, [r2, #-8]!
	cmp r2, r4
	str r1, [r3, #-8]!
	ldr r1, [r2, #4]
	str r1, [r3, #4]
	bhi _0223DB80
_0223DB98:
	add sp, sp, #0x40
	str r3, [r0, #0]
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0223DBAC:
	ldr r1, [sp, #0x58]
	ldr r4, [sp, #0x64]
	sub r1, r1, #8
	sub r4, r4, #8
	ldr ip, [sp, #0x6c]
	str r1, [sp, #0x58]
	str r4, [sp, #0x64]
_0223DBC8:
	ldr r5, [sp, #0x64]
	ldr lr, [r1]
	ldr r4, [r5, #0]
	cmp r4, lr
	bge _0223DC74
	str lr, [ip, #-8]!
	ldr lr, [r1, #4]
	str ip, [sp, #0x6c]
	str lr, [ip, #4]
	cmp r3, r1
	bne _0223DC68
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	add lr, r1, #8
	ldr r3, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	str ip, [sp, #0xc]
	str lr, [sp, #0x64]
	str lr, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r1, [sp, #0x1c]
	cmp lr, r3
	beq _0223DC50
_0223DC28:
	ldr r1, [sp, #0x10]
	sub r2, r1, #8
	ldr r1, [r2, #0]
	str r2, [sp, #0x10]
	str r1, [ip, #-8]!
	ldr r1, [r2, #4]
	cmp r2, r3
	str r1, [ip, #4]
	bne _0223DC28
	str ip, [sp, #0xc]
_0223DC50:
	ldr r1, [sp, #0xc]
	add sp, sp, #0x40
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0223DC68:
	sub r1, r1, #8
	str r1, [sp, #0x58]
	b _0223DBC8
_0223DC74:
	str r4, [ip, #-8]!
	ldr lr, [r5, #4]
	str ip, [sp, #0x6c]
	str lr, [ip, #4]
	cmp r2, r5
	bne _0223DCD8
	ldr r3, [sp, #0x54]
	add r2, r1, #8
	str ip, [sp]
	str r2, [sp, #0x58]
	str r2, [sp, #4]
	str r3, [sp, #8]
	cmp r2, r3
	bls _0223DCC4
_0223DCAC:
	ldr r1, [r2, #-8]!
	cmp r2, r3
	str r1, [ip, #-8]!
	ldr r1, [r2, #4]
	str r1, [ip, #4]
	bhi _0223DCAC
_0223DCC4:
	str ip, [r0]
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0223DCD8:
	ldr lr, [sp, #0x64]
	sub lr, lr, #8
	str lr, [sp, #0x64]
	b _0223DBC8
	arm_func_end ov66_0223DAC4
_0223DCE8:
	.byte 0x40, 0xD0, 0x8D, 0xE2, 0x38, 0x40, 0xBD, 0xE8
	.byte 0x10, 0xD0, 0x8D, 0xE2, 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start ov66_0223DCF8
ov66_0223DCF8: ; 0x0223DCF8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, [sp, #0x44]
	ldr r1, [sp, #0x48]
	ldr ip, [sp, #0x4c]
	ldr r2, [sp, #0x3c]
	b _0223DD64
_0223DD18:
	ldr lr, [sp, #0x34]
	ldr r5, [r4, #0]
	ldr r3, [lr]
	cmp r5, r3
	bge _0223DD44
	str r5, [ip]
	ldr r3, [r4, #4]
	add r4, r4, #8
	str r3, [ip, #4]
	str r4, [sp, #0x44]
	b _0223DD5C
_0223DD44:
	str r3, [ip]
	ldr r3, [sp, #0x34]
	ldr lr, [lr, #4]
	add r3, r3, #8
	str lr, [ip, #4]
	str r3, [sp, #0x34]
_0223DD5C:
	add ip, ip, #8
	str ip, [sp, #0x4c]
_0223DD64:
	ldr r3, [sp, #0x34]
	cmp r3, r2
	cmpne r4, r1
	bne _0223DD18
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	cmp r2, r1
	bne _0223DDD8
	ldr r3, [sp, #0x4c]
	ldr r4, [sp, #0x48]
	ldr r2, [sp, #0x44]
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r2, [sp, #0x1c]
	cmp r2, r4
	bhs _0223DDC4
_0223DDA4:
	ldr r1, [r2, #0]
	str r1, [r3, #0]
	ldr r1, [r2, #4]
	add r2, r2, #8
	str r1, [r3, #4]
	cmp r2, r4
	add r3, r3, #8
	blo _0223DDA4
_0223DDC4:
	add sp, sp, #0x20
	str r3, [r0, #0]
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0223DDD8:
	ldr lr, [sp, #0x4c]
	ldr ip, [sp, #0x3c]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x40]
	ldr r1, [sp, #0x38]
	str lr, [sp]
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	cmp r2, ip
	beq _0223DE38
_0223DE08:
	ldr r3, [sp, #0xc]
	ldr r2, [r3, #0]
	mov r1, r3
	str r2, [lr]
	add r1, r1, #8
	ldr r2, [r3, #4]
	str r1, [sp, #0xc]
	str r2, [lr, #4]
	cmp r1, ip
	add lr, lr, #8
	bne _0223DE08
	str lr, [sp]
_0223DE38:
	ldr r1, [sp]
	str r1, [r0, #0]
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223DCF8

	arm_func_start ov66_0223DE50
ov66_0223DE50: ; 0x0223DE50
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	ldr r1, [sp, #0x54]
	ldr ip, [sp, #0x5c]
	ldr r3, [sp, #0x44]
	b _0223DEC0
_0223DE6C:
	ldr r5, [sp, #0x4c]
	ldr lr, [sp, #0x3c]
	ldr r4, [r5, #0]
	ldr r2, [lr]
	cmp r4, r2
	bge _0223DEA0
	str r4, [ip]
	ldr r2, [sp, #0x4c]
	ldr lr, [r5, #4]
	add r2, r2, #8
	str lr, [ip, #4]
	str r2, [sp, #0x4c]
	b _0223DEB8
_0223DEA0:
	str r2, [ip]
	ldr r2, [sp, #0x3c]
	ldr lr, [lr, #4]
	add r2, r2, #8
	str lr, [ip, #4]
	str r2, [sp, #0x3c]
_0223DEB8:
	add ip, ip, #8
	str ip, [sp, #0x5c]
_0223DEC0:
	ldr r2, [sp, #0x3c]
	cmp r2, r3
	ldrne r2, [sp, #0x4c]
	cmpne r2, r1
	bne _0223DE6C
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x44]
	cmp r2, r1
	bne _0223DF5C
	ldr lr, [sp, #0x5c]
	ldr ip, [sp, #0x54]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x58]
	ldr r1, [sp, #0x50]
	str lr, [sp, #0x14]
	str ip, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	cmp r2, ip
	beq _0223DF44
_0223DF14:
	ldr r3, [sp, #0x20]
	ldr r2, [r3, #0]
	mov r1, r3
	str r2, [lr]
	add r1, r1, #8
	ldr r2, [r3, #4]
	str r1, [sp, #0x20]
	str r2, [lr, #4]
	cmp r1, ip
	add lr, lr, #8
	bne _0223DF14
	str lr, [sp, #0x14]
_0223DF44:
	ldr r1, [sp, #0x14]
	add sp, sp, #0x28
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0223DF5C:
	ldr lr, [sp, #0x5c]
	ldr ip, [sp, #0x44]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x48]
	ldr r1, [sp, #0x40]
	str lr, [sp]
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	cmp r2, ip
	beq _0223DFBC
_0223DF8C:
	ldr r3, [sp, #0xc]
	ldr r2, [r3, #0]
	mov r1, r3
	str r2, [lr]
	add r1, r1, #8
	ldr r2, [r3, #4]
	str r1, [sp, #0xc]
	str r2, [lr, #4]
	cmp r1, ip
	add lr, lr, #8
	bne _0223DF8C
	str lr, [sp]
_0223DFBC:
	ldr r1, [sp]
	str r1, [r0, #0]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223DE50

	arm_func_start ov66_0223DFD4
ov66_0223DFD4: ; 0x0223DFD4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	ldr r1, [sp, #0x9c]
	ldr r0, [sp, #0x98]
	ldr r7, [sp, #0xa8]
	sub r1, r1, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r5, r0, asr #3
	cmp r5, #0
	addle sp, sp, #0x80
	ldmleia sp!, {r3, r4, r5, r6, r7, lr}
	addle sp, sp, #0x10
	bxle lr
	cmp r5, #1
	bne _0223E0A8
	ldr r3, [sp, #0xa0]
	ldr r1, [sp, #0xa4]
	str r3, [sp, #0x74]
	str r1, [sp, #0x78]
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	sub r2, r3, r0
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	cmp r1, r0, asr #3
	add r2, sp, #0x74
	ble _0223E06C
	ldr r1, [sp, #0x98]
	add sp, sp, #0x80
	ldr r0, [r1, #0]
	str r0, [r3, #0]
	ldr r0, [r1, #4]
	str r0, [r3, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_0223E06C:
	cmp r3, #0
	beq _0223E088
	ldr r0, [sp, #0x98]
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	str r1, [r3, #0]
	str r0, [r3, #4]
_0223E088:
	ldr r1, [r2, #4]
	add sp, sp, #0x80
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_0223E0A8:
	cmp r5, #2
	bne _0223E2A4
	ldr r3, [sp, #0x9c]
	ldr r2, [sp, #0x98]
	ldr r1, [r3, #-8]
	ldr r0, [r2, #0]
	cmp r1, r0
	bge _0223E1B8
	ldr r0, [sp, #0xa4]
	ldr r1, [sp, #0xa0]
	str r0, [sp, #0x34]
	cmp r2, r3
	movne r0, #1
	moveq r0, #0
	str r1, [sp, #0x30]
	str r3, [sp, #0x38]
	str r2, [sp, #0x3c]
	cmp r0, #0
	addeq sp, sp, #0x80
	ldmeqia sp!, {r3, r4, r5, r6, r7, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r0, #0
	add r2, sp, #0x28
	addeq sp, sp, #0x80
	ldmeqia sp!, {r3, r4, r5, r6, r7, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r4, [sp, #0x3c]
	ldr r1, [sp, #0x38]
_0223E120:
	ldr r0, [sp, #0x30]
	ldr r5, [sp, #0x34]
	str r0, [sp, #0x28]
	str r5, [sp, #0x2c]
	ldr r3, [r5, #8]
	sub r1, r1, #8
	sub r6, r0, r3
	mov r3, r6, asr #2
	ldr r5, [r5, #4]
	add r3, r6, r3, lsr #29
	str r1, [sp, #0x38]
	cmp r5, r3, asr #3
	ble _0223E168
	ldr r3, [r1, #0]
	str r3, [r0, #0]
	ldr r3, [r1, #4]
	str r3, [r0, #4]
	b _0223E190
_0223E168:
	cmp r0, #0
	beq _0223E180
	ldr r5, [r1, #0]
	ldr r3, [r1, #4]
	str r5, [r0, #0]
	str r3, [r0, #4]
_0223E180:
	ldr r3, [r2, #4]
	ldr r0, [r3, #4]
	add r0, r0, #1
	str r0, [r3, #4]
_0223E190:
	ldr r3, [sp, #0x30]
	ldr r0, [sp, #0x38]
	add r3, r3, #8
	str r3, [sp, #0x30]
	cmp r4, r0
	bne _0223E120
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_0223E1B8:
	ldr r0, [sp, #0xa4]
	ldr r1, [sp, #0xa0]
	str r0, [sp, #0x1c]
	cmp r2, r3
	movne r0, #1
	moveq r0, #0
	str r1, [sp, #0x18]
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	cmp r0, #0
	addeq sp, sp, #0x80
	ldmeqia sp!, {r3, r4, r5, r6, r7, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r0, #0
	add r1, sp, #0x10
	addeq sp, sp, #0x80
	ldmeqia sp!, {r3, r4, r5, r6, r7, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r4, [sp, #0x24]
	ldr r3, [sp, #0x20]
_0223E210:
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r2, [r5, #8]
	ldr r5, [r5, #4]
	sub r6, r0, r2
	mov r2, r6, asr #2
	add r2, r6, r2, lsr #29
	cmp r5, r2, asr #3
	ble _0223E250
	ldr r2, [r4, #0]
	str r2, [r0, #0]
	ldr r2, [r4, #4]
	str r2, [r0, #4]
	b _0223E278
_0223E250:
	cmp r0, #0
	beq _0223E268
	ldr r5, [r4, #0]
	ldr r2, [r4, #4]
	str r5, [r0, #0]
	str r2, [r0, #4]
_0223E268:
	ldr r2, [r1, #4]
	ldr r0, [r2, #4]
	add r0, r0, #1
	str r0, [r2, #4]
_0223E278:
	ldr r0, [sp, #0x18]
	add r4, r4, #8
	add r0, r0, #8
	str r0, [sp, #0x18]
	cmp r4, r3
	bne _0223E210
	str r4, [sp, #0x24]
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_0223E2A4:
	cmp r5, #0x14
	bgt _0223E2F0
	ldr r3, [sp, #0xa0]
	str r7, [sp, #4]
	sub r4, sp, #4
	add r1, sp, #0x98
	ldr r2, [sp, #0xa4]
	str r3, [r4, #0]
	str r2, [r4, #4]
	add r0, sp, #0x9c
	ldr r2, [r0, #0]
	ldr r3, [r4, #0]
	ldr r1, [r1, #0]
	add r0, sp, #0x6c
	bl ov66_0223E6EC
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_0223E2F0:
	add r0, r5, r5, lsr #31
	sub r4, r5, r0, asr #1
	ldr r1, [sp, #0xa0]
	ldr r6, [sp, #0xa4]
	add ip, r1, r4, lsl #3
	ldr r0, [sp, #0x98]
	str ip, [sp]
	add r1, r0, r4, lsl #3
	add r3, sp, #0x98
	str r6, [sp, #4]
	ldr r0, [r3, #0]
	add r2, sp, #0xa0
	str r1, [sp, #0x7c]
	str ip, [sp, #0x64]
	str r6, [sp, #0x68]
	str r7, [sp, #8]
	ldmia r2, {r2, r3}
	bl ov66_0223D19C
	ldr r2, [sp, #0xa0]
	add r0, sp, #0x7c
	add ip, r2, r5, lsl #3
	add r3, r2, r4, lsl #3
	add r1, sp, #0x9c
	str ip, [sp]
	str r6, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0x5c
	str r6, [sp, #0x60]
	str r3, [sp, #0x5c]
	str ip, [sp, #0x54]
	str r6, [sp, #0x58]
	str r7, [sp, #8]
	ldmia r2, {r2, r3}
	bl ov66_0223D19C
	ldr r1, [sp, #0x98]
	ldr r3, [sp, #0xa0]
	add r2, r1, r4, lsl #3
	add r4, r1, r5, lsl #3
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, [sp, #0xa4]
	add r0, sp, #0x98
	str r1, [sp, #8]
	ldr r1, [r0, #0]
	add r0, sp, #0x4c
	mov r3, r2
	str r4, [sp, #0x40]
	str r2, [sp, #0x44]
	str r2, [sp, #0x48]
	str r7, [sp, #0xc]
	bl ov66_0223E3D0
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223DFD4

	arm_func_start ov66_0223E3D0
ov66_0223E3D0: ; 0x0223E3D0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	ldr r3, [sp, #0x64]
	ldr r5, [sp, #0x68]
	ldr r1, [sp, #0x5c]
	ldr r6, [sp, #0x60]
	add ip, sp, #0x38
	add lr, sp, #0x30
	b _0223E4F8
_0223E3F8:
	ldr r4, [r3, #0]
	ldr r2, [r1, #0]
	cmp r4, r2
	bge _0223E47C
	ldr r2, [sp, #0x6c]
	ldr r7, [sp, #0x70]
	str r2, [sp, #0x38]
	str r7, [sp, #0x3c]
	ldr r4, [r7, #8]
	ldr r7, [r7, #4]
	sub r8, r2, r4
	mov r4, r8, asr #2
	add r4, r8, r4, lsr #29
	cmp r7, r4, asr #3
	ble _0223E448
	ldr r4, [r3, #0]
	str r4, [r2, #0]
	ldr r4, [r3, #4]
	str r4, [r2, #4]
	b _0223E470
_0223E448:
	cmp r2, #0
	beq _0223E460
	ldr r7, [r3, #0]
	ldr r4, [r3, #4]
	str r7, [r2, #0]
	str r4, [r2, #4]
_0223E460:
	ldr r4, [ip, #4]
	ldr r2, [r4, #4]
	add r2, r2, #1
	str r2, [r4, #4]
_0223E470:
	add r3, r3, #8
	str r3, [sp, #0x64]
	b _0223E4EC
_0223E47C:
	ldr r2, [sp, #0x6c]
	ldr r7, [sp, #0x70]
	str r2, [sp, #0x30]
	str r7, [sp, #0x34]
	ldr r4, [r7, #8]
	ldr r7, [r7, #4]
	sub r8, r2, r4
	mov r4, r8, asr #2
	add r4, r8, r4, lsr #29
	cmp r7, r4, asr #3
	ble _0223E4BC
	ldr r4, [r1, #0]
	str r4, [r2, #0]
	ldr r4, [r1, #4]
	str r4, [r2, #4]
	b _0223E4E4
_0223E4BC:
	cmp r2, #0
	beq _0223E4D4
	ldr r7, [r1, #0]
	ldr r4, [r1, #4]
	str r7, [r2, #0]
	str r4, [r2, #4]
_0223E4D4:
	ldr r4, [lr, #4]
	ldr r2, [r4, #4]
	add r2, r2, #1
	str r2, [r4, #4]
_0223E4E4:
	add r1, r1, #8
	str r1, [sp, #0x5c]
_0223E4EC:
	ldr r2, [sp, #0x6c]
	add r2, r2, #8
	str r2, [sp, #0x6c]
_0223E4F8:
	cmp r1, r6
	cmpne r3, r5
	bne _0223E3F8
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	cmp r2, r1
	bne _0223E600
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x64]
	ldr r4, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	str r1, [sp, #0x2c]
	cmp r1, r2
	movne r1, #1
	moveq r1, #0
	str r4, [sp, #0x20]
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	cmp r1, #0
	beq _0223E5E0
	cmp r1, #0
	add r2, sp, #0x18
	beq _0223E5E0
	ldr r5, [sp, #0x2c]
	ldr r4, [sp, #0x28]
_0223E55C:
	ldr r1, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str r1, [sp, #0x18]
	str ip, [sp, #0x1c]
	ldr r3, [ip, #8]
	ldr ip, [ip, #4]
	sub lr, r1, r3
	mov r3, lr, asr #2
	add r3, lr, r3, lsr #29
	cmp ip, r3, asr #3
	ble _0223E59C
	ldr r3, [r5, #0]
	str r3, [r1, #0]
	ldr r3, [r5, #4]
	str r3, [r1, #4]
	b _0223E5C4
_0223E59C:
	cmp r1, #0
	beq _0223E5B4
	ldr ip, [r5]
	ldr r3, [r5, #4]
	str ip, [r1]
	str r3, [r1, #4]
_0223E5B4:
	ldr r3, [r2, #4]
	ldr r1, [r3, #4]
	add r1, r1, #1
	str r1, [r3, #4]
_0223E5C4:
	ldr r1, [sp, #0x20]
	add r5, r5, #8
	add r1, r1, #8
	str r1, [sp, #0x20]
	cmp r5, r4
	bne _0223E55C
	str r5, [sp, #0x2c]
_0223E5E0:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r2, [r0, #0]
	str r1, [r0, #4]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_0223E600:
	ldr r2, [sp, #0x60]
	ldr r1, [sp, #0x5c]
	ldr r4, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	str r1, [sp, #0x14]
	cmp r1, r2
	movne r1, #1
	moveq r1, #0
	str r4, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	cmp r1, #0
	beq _0223E6CC
	cmp r1, #0
	add r2, sp, #0
	beq _0223E6CC
	ldr ip, [sp, #0x14]
	ldr r4, [sp, #0x10]
_0223E648:
	ldr r1, [sp, #8]
	ldr r5, [sp, #0xc]
	str r1, [sp]
	str r5, [sp, #4]
	ldr r3, [r5, #8]
	ldr lr, [r5, #4]
	sub r5, r1, r3
	mov r3, r5, asr #2
	add r3, r5, r3, lsr #29
	cmp lr, r3, asr #3
	ble _0223E688
	ldr r3, [ip]
	str r3, [r1, #0]
	ldr r3, [ip, #4]
	str r3, [r1, #4]
	b _0223E6B0
_0223E688:
	cmp r1, #0
	beq _0223E6A0
	ldr lr, [ip]
	ldr r3, [ip, #4]
	str lr, [r1]
	str r3, [r1, #4]
_0223E6A0:
	ldr r3, [r2, #4]
	ldr r1, [r3, #4]
	add r1, r1, #1
	str r1, [r3, #4]
_0223E6B0:
	ldr r1, [sp, #8]
	add ip, ip, #8
	add r1, r1, #8
	str r1, [sp, #8]
	cmp ip, r4
	bne _0223E648
	str ip, [sp, #0x14]
_0223E6CC:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0]
	str r1, [r0, #4]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223E3D0

	arm_func_start ov66_0223E6EC
ov66_0223E6EC: ; 0x0223E6EC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x18
	ldr r3, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	ldr r4, [sp, #0x48]
	cmp r3, r1
	ldr ip, [sp, #0x44]
	beq _0223E8B0
	ldr r1, [sp, #0x44]
	str r4, [sp, #0x14]
	str r1, [sp, #0x10]
	ldr r2, [r4, #8]
	ldr r5, [r4, #4]
	sub r6, r1, r2
	mov r2, r6, asr #2
	add r2, r6, r2, lsr #29
	cmp r5, r2, asr #3
	add r6, sp, #0x10
	ble _0223E754
	ldr r5, [sp, #0x3c]
	ldr r2, [r5, #0]
	str r2, [r1, #0]
	ldr r2, [r5, #4]
	str r2, [r1, #4]
	b _0223E780
_0223E754:
	cmp r1, #0
	beq _0223E770
	ldr r2, [sp, #0x3c]
	ldr r5, [r2, #0]
	ldr r2, [r2, #4]
	str r5, [r1, #0]
	str r2, [r1, #4]
_0223E770:
	ldr r2, [r6, #4]
	ldr r1, [r2, #4]
	add r1, r1, #1
	str r1, [r2, #4]
_0223E780:
	ldr r1, [sp, #0x40]
	add r3, r3, #8
	cmp r3, r1
	movne r1, #1
	moveq r1, #0
	add ip, ip, #8
	cmp r1, #0
	beq _0223E8B0
	cmp r1, #0
	add r2, sp, #0
	beq _0223E8B0
_0223E7AC:
	mov lr, ip
	mov r5, ip
	ldr r8, [sp, #0x44]
	add r1, sp, #8
	b _0223E824
_0223E7C0:
	str lr, [sp, #8]
	str r4, [sp, #0xc]
	ldr r6, [r4, #8]
	ldr r7, [r4, #4]
	sub sb, lr, r6
	mov r6, sb, asr #2
	add r6, sb, r6, lsr #29
	cmp r7, r6, asr #3
	ble _0223E7F8
	ldr r6, [r5, #0]
	str r6, [lr]
	ldr r6, [r5, #4]
	str r6, [lr, #4]
	b _0223E820
_0223E7F8:
	cmp lr, #0
	beq _0223E810
	ldr r7, [r5, #0]
	ldr r6, [r5, #4]
	str r7, [lr]
	str r6, [lr, #4]
_0223E810:
	ldr r7, [r1, #4]
	ldr r6, [r7, #4]
	add r6, r6, #1
	str r6, [r7, #4]
_0223E820:
	sub lr, lr, #8
_0223E824:
	cmp r5, r8
	beq _0223E83C
	ldr r7, [r3, #0]
	ldr r6, [r5, #-8]!
	cmp r7, r6
	blt _0223E7C0
_0223E83C:
	str lr, [sp]
	str r4, [sp, #4]
	ldr r1, [r4, #8]
	ldr r5, [r4, #4]
	sub r6, lr, r1
	mov r1, r6, asr #2
	add r1, r6, r1, lsr #29
	cmp r5, r1, asr #3
	ble _0223E874
	ldr r1, [r3, #0]
	str r1, [lr]
	ldr r1, [r3, #4]
	str r1, [lr, #4]
	b _0223E89C
_0223E874:
	cmp lr, #0
	beq _0223E88C
	ldr r5, [r3, #0]
	ldr r1, [r3, #4]
	str r5, [lr]
	str r1, [lr, #4]
_0223E88C:
	ldr r5, [r2, #4]
	ldr r1, [r5, #4]
	add r1, r1, #1
	str r1, [r5, #4]
_0223E89C:
	ldr r1, [sp, #0x40]
	add r3, r3, #8
	cmp r3, r1
	add ip, ip, #8
	bne _0223E7AC
_0223E8B0:
	str ip, [r0]
	str r4, [r0, #4]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223E6EC

	arm_func_start ov66_0223E8C8
ov66_0223E8C8: ; 0x0223E8C8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr ip, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	cmp ip, r3
	ldrne r0, [sp, #0x18]
	addne lr, r0, #8
	cmpne lr, r3
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
_0223E8FC:
	sub r5, lr, #8
	ldr r1, [lr]
	ldr r0, [r5, #0]
	cmp r1, r0
	bge _0223E96C
	ldr r2, [lr]
	ldr r1, [lr, #4]
	mov r4, r5
	str r0, [lr]
	ldr r0, [r5, #4]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [lr, #4]
	b _0223E948
_0223E934:
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	sub r4, r4, #8
_0223E948:
	cmp r5, ip
	beq _0223E95C
	ldr r0, [r5, #-8]!
	cmp r2, r0
	blt _0223E934
_0223E95C:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [r4, #0]
	str r0, [r4, #4]
_0223E96C:
	add lr, lr, #8
	cmp lr, r3
	bne _0223E8FC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223E8C8

	arm_func_start ov66_0223E988
ov66_0223E988: ; 0x0223E988
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r2, #0
	ldr r0, _0223E9E4 ; =0x02259098
	str r2, [r6, #0]
	ldr r0, [r0, #4]
	mov r5, r1
	str r0, [r6, #4]
	cmp r5, #0
	ldmleia sp!, {r4, r5, r6, pc}
	ldr r4, _0223E9E8 ; =0x021D0D60
_0223E9B4:
	mov r1, r4
	mov r0, r5, lsl #3
	bl sub_020E3FD4
	str r0, [r6, #0]
	cmp r0, #0
	strne r5, [r6, #4]
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, r5, lsr #31
	mov r5, r0, asr #1
	cmp r5, #0
	bgt _0223E9B4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0223E9E4: .word 0x02259098
_0223E9E8: .word 0x021D0D60
	arm_func_end ov66_0223E988

	arm_func_start ov66_0223E9EC
ov66_0223E9EC: ; 0x0223E9EC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r4, r2
	sub r2, r4, r5
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov ip, r1, asr #3
	mov r6, r0
	str ip, [sp, #4]
	ldr r3, [r6, #8]
	cmp r3, r1, asr #3
	bhs _0223EA38
	mov r2, #0
	sub r1, ip, r3
	strb r2, [sp, #3]
	bl ov66_0223FDD8
	mov r2, r0
	b _0223EB18
_0223EA38:
	ldr r1, [r6, #4]
	mov r0, r5
	cmp r1, ip
	addlo r1, r6, #4
	addhs r1, sp, #4
	ldr r1, [r1, #0]
	ldr r2, [r6, #0]
	add r0, r0, r1, lsl #3
	cmp r5, r0
	bhs _0223EA80
_0223EA60:
	ldr r1, [r5, #0]
	str r1, [r2, #0]
	ldr r1, [r5, #4]
	add r5, r5, #8
	str r1, [r2, #4]
	cmp r5, r0
	add r2, r2, #8
	blo _0223EA60
_0223EA80:
	ldr r3, [r6, #4]
	ldr r2, [sp, #4]
	cmp r2, r3
	bhs _0223EAB0
	mov r0, #0
	strb r0, [sp, #2]
	ldr r1, [r6, #4]
	sub r0, r3, r2
	sub r0, r1, r0
	add sp, sp, #8
	str r0, [r6, #4]
	ldmia sp!, {r4, r5, r6, pc}
_0223EAB0:
	cmp r3, r2
	addhs sp, sp, #8
	ldmhsia sp!, {r4, r5, r6, pc}
	mov r1, #0
	strb r1, [sp, #1]
	ldr r2, [r6, #0]
	ldr r1, [r6, #4]
	cmp r0, r4
	addeq sp, sp, #8
	add r3, r2, r1, lsl #3
	ldmeqia sp!, {r4, r5, r6, pc}
_0223EADC:
	cmp r3, #0
	beq _0223EAF4
	ldr r2, [r0, #0]
	ldr r1, [r0, #4]
	str r2, [r3, #0]
	str r1, [r3, #4]
_0223EAF4:
	ldr r1, [r6, #4]
	add r0, r0, #8
	add r1, r1, #1
	str r1, [r6, #4]
	cmp r0, r4
	add r3, r3, #8
	bne _0223EADC
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_0223EB18:
	ldr r1, [sp, #4]
	mov r0, r6
	bl ov66_0223FD68
	mov r0, #0
	strb r0, [sp]
	cmp r5, r4
	ldr r1, [r6, #0]
	ldr r0, [r6, #4]
	addeq sp, sp, #8
	add r2, r1, r0, lsl #3
	ldmeqia sp!, {r4, r5, r6, pc}
_0223EB44:
	cmp r2, #0
	beq _0223EB5C
	ldr r1, [r5, #0]
	ldr r0, [r5, #4]
	str r1, [r2, #0]
	str r0, [r2, #4]
_0223EB5C:
	ldr r0, [r6, #4]
	add r5, r5, #8
	add r0, r0, #1
	str r0, [r6, #4]
	cmp r5, r4
	add r2, r2, #8
	bne _0223EB44
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_0223E9EC

	arm_func_start ov66_0223EB80
ov66_0223EB80: ; 0x0223EB80
	cmp r2, #0x10
	movlo r0, #0
	bxlo lr
	ldrh r0, [r1, #0xe]
	sub r0, r0, #1
	mov r0, r0, lsl #3
	add r0, r0, #0x18
	cmp r2, r0
	movhs r0, #1
	movlo r0, #0
	bx lr
	arm_func_end ov66_0223EB80

	arm_func_start ov66_0223EBAC
ov66_0223EBAC: ; 0x0223EBAC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov66_0223ED8C
	mov r1, #0
	bic r2, r4, #7
	strb r1, [sp]
	sub r0, sp, #4
	strb r1, [r0]
	ldr r3, [r0, #0]
	mov r1, r5
	add r0, r6, #0x50
	add r2, r5, r2
	bl ov66_0223EBF8
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov66_0223EBAC

	arm_func_start ov66_0223EBF8
ov66_0223EBF8: ; 0x0223EBF8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r4, r2
	sub r2, r4, r5
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov ip, r1, asr #3
	mov r6, r0
	str ip, [sp, #4]
	ldr r3, [r6, #8]
	cmp r3, r1, asr #3
	bhs _0223EC44
	mov r2, #0
	sub r1, ip, r3
	strb r2, [sp, #3]
	bl ov66_0223FC9C
	mov r2, r0
	b _0223ED24
_0223EC44:
	ldr r1, [r6, #4]
	mov r0, r5
	cmp r1, ip
	addlo r1, r6, #4
	addhs r1, sp, #4
	ldr r1, [r1, #0]
	ldr r2, [r6, #0]
	add r0, r0, r1, lsl #3
	cmp r5, r0
	bhs _0223EC8C
_0223EC6C:
	ldr r1, [r5, #0]
	str r1, [r2, #0]
	ldr r1, [r5, #4]
	add r5, r5, #8
	str r1, [r2, #4]
	cmp r5, r0
	add r2, r2, #8
	blo _0223EC6C
_0223EC8C:
	ldr r3, [r6, #4]
	ldr r2, [sp, #4]
	cmp r2, r3
	bhs _0223ECBC
	mov r0, #0
	strb r0, [sp, #2]
	ldr r1, [r6, #4]
	sub r0, r3, r2
	sub r0, r1, r0
	add sp, sp, #8
	str r0, [r6, #4]
	ldmia sp!, {r4, r5, r6, pc}
_0223ECBC:
	cmp r3, r2
	addhs sp, sp, #8
	ldmhsia sp!, {r4, r5, r6, pc}
	mov r1, #0
	strb r1, [sp, #1]
	ldr r2, [r6, #0]
	ldr r1, [r6, #4]
	cmp r0, r4
	addeq sp, sp, #8
	add r3, r2, r1, lsl #3
	ldmeqia sp!, {r4, r5, r6, pc}
_0223ECE8:
	cmp r3, #0
	beq _0223ED00
	ldr r2, [r0, #0]
	ldr r1, [r0, #4]
	str r2, [r3, #0]
	str r1, [r3, #4]
_0223ED00:
	ldr r1, [r6, #4]
	add r0, r0, #8
	add r1, r1, #1
	str r1, [r6, #4]
	cmp r0, r4
	add r3, r3, #8
	bne _0223ECE8
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_0223ED24:
	ldr r1, [sp, #4]
	mov r0, r6
	bl ov66_0223FC2C
	mov r0, #0
	strb r0, [sp]
	cmp r5, r4
	ldr r1, [r6, #0]
	ldr r0, [r6, #4]
	addeq sp, sp, #8
	add r2, r1, r0, lsl #3
	ldmeqia sp!, {r4, r5, r6, pc}
_0223ED50:
	cmp r2, #0
	beq _0223ED68
	ldr r1, [r5, #0]
	ldr r0, [r5, #4]
	str r1, [r2, #0]
	str r0, [r2, #4]
_0223ED68:
	ldr r0, [r6, #4]
	add r5, r5, #8
	add r0, r0, #1
	str r0, [r6, #4]
	cmp r5, r4
	add r2, r2, #8
	bne _0223ED50
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_0223EBF8

	arm_func_start ov66_0223ED8C
ov66_0223ED8C: ; 0x0223ED8C
	stmdb sp!, {r3}
	sub sp, sp, #4
	tst r2, #7
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3}
	bxne lr
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3}
	bxne lr
	ldr r2, [r0, #0x54]
	mov r1, #0
	strb r1, [sp]
	ldr r1, [r0, #0x54]
	sub r1, r1, r2
	str r1, [r0, #0x54]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr
	arm_func_end ov66_0223ED8C

	arm_func_start ov66_0223EDE4
ov66_0223EDE4: ; 0x0223EDE4
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x334]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x5c
	mov r2, #0x2d8
	bl sub_020C4DB0
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov66_0223EDE4

	arm_func_start ov66_0223EE0C
ov66_0223EE0C: ; 0x0223EE0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	add r1, r4, #0x5c
	mov r2, #0x2d8
	bl sub_020C4DB0
	mov r0, #1
	str r0, [r4, #0x334]
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223EE0C

	arm_func_start ov66_0223EE30
ov66_0223EE30: ; 0x0223EE30
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	mov r4, r0
	ldr r1, [r4, #0]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0223F000
_0223EE4C: ; jump table
	b _0223F000 ; case 0
	b _0223F000 ; case 1
	b _0223F000 ; case 2
	b _0223F000 ; case 3
	b _0223EE64 ; case 4
	b _0223EEE8 ; case 5
_0223EE64:
	bl ov66_0223F00C
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov66_02234FC4
	mov r1, r0
	add r0, sp, #0x30
	add r1, r1, #0xb8
	bl ov66_02235FC8
	ldr r0, [sp, #0x30]
	ldr r1, _0223F008 ; =0x02258C8C
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0x31
	ldrne r0, [sp, #0x38]
	bl ov66_02245C54
	add r0, sp, #0x30
	bl ov66_0223BADC
	mov r1, #0
	str r1, [sp, #0x10]
	mov r5, #4
	add r0, sp, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	mov r3, r1
	sub r0, r5, #5
	mov r2, #1
	str r5, [sp, #8]
	bl ov66_02237170
	mov r0, r4
	bl ov66_0223F0D0
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223EEE8:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, [r4, #0x38]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	add r0, r0, r5, lsr #7
	bl sub_020E2178
	ldr r2, [r4, #0x40]
	add r0, sp, #0x14
	ldr r6, [r2, r1, lsl #2]
	mov r5, r5, lsl #0x19
	add r1, sp, #0x24
	add r7, r6, r5, lsr #22
	bl ov4_021D806C
	add r0, sp, #0x14
	add r1, sp, #0x24
	bl sub_020CC218
	mov r8, r0
	ldr r2, [r4, #0x10]
	ldr r3, [r6, r5, lsr #22]
	ldr r0, [r4, #0x14]
	mov sl, r1
	subs r2, r8, r2
	sbc r1, sl, r0
	subs r0, r2, r3
	sbcs r0, r1, r3, asr #31
	addlt sp, sp, #0x3c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r5, sp, #4
	add r6, sp, #0xc
	mov fp, #0
_0223EF6C:
	bl ov66_02234FC4
	mov r1, r0
	ldr r0, [r7, #4]
	ldr r1, [r1, #0x30]
	blx r1
	strb fp, [r6]
	and r2, fp, #0xff
	strb r2, [r5]
	ldr r2, [r5, #0]
	add r0, r4, #0x38
	mov r1, #1
	bl ov66_0223F724
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr sb, [r4, #0x38]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	add r0, r0, sb, lsr #7
	bl sub_020E2178
	ldr r0, [r4, #0x40]
	mov r2, sb, lsl #0x19
	ldr r1, [r0, r1, lsl #2]
	ldr r0, [r1, r2, lsr #22]
	add r1, r1, r2, lsr #22
	str r0, [r7, #0]
	ldr r0, [r1, #4]
	str r0, [r7, #4]
	ldr r1, [r4, #0x10]
	ldr r3, [r7, #0]
	ldr r0, [r4, #0x14]
	subs r2, r8, r1
	sbc r1, sl, r0
	subs r0, r2, r3
	sbcs r0, r1, r3, asr #31
	bge _0223EF6C
_0223F000:
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223F008: .word 0x02258C8C
	arm_func_end ov66_0223EE30

	arm_func_start ov66_0223F00C
ov66_0223F00C: ; 0x0223F00C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #5
	beq _0223F034
	bl ov66_02234FC4
	ldr r0, [r0, #0]
	cmp r0, #8
	beq _0223F040
_0223F034:
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_0223F040:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r0, [r4, #0x18]
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #1
	ldmneia sp!, {r3, r4, pc}
	bl ov66_02234FC4
	add r0, r0, #0xe8
	bl ov66_02241ED0
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #1
	ldmneia sp!, {r3, r4, pc}
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov4_021D806C
	add r0, sp, #0
	add r1, sp, #0x10
	bl sub_020CC218
	ldr ip, [r4, #8]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	adds r4, ip, r2
	adc r2, r3, #0
	subs r0, r4, r0
	sbcs r0, r2, r1
	movlt r0, #1
	movge r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223F00C

	arm_func_start ov66_0223F0D0
ov66_0223F0D0: ; 0x0223F0D0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #5
	beq _0223F144
	bl ov66_02234FC4
	ldr r0, [r0, #0]
	cmp r0, #8
	bne _0223F144
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov4_021D806C
	add r0, sp, #0
	add r1, sp, #0x10
	bl sub_020CC218
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	mov r0, #5
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0x18]
	bl ov66_02234FC4
	ldr r1, [r0, #0x30]
	mov r0, #0
	blx r1
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r3, r4, pc}
_0223F144:
	mov r0, #1
	str r0, [r4, #0x18]
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223F0D0

	arm_func_start ov66_0223F158
ov66_0223F158: ; 0x0223F158
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r1
	ldr r1, [r5, #0]
	mov r4, r2
	mov r6, r0
	add r4, r4, r1
	ldr r3, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r2, r3, r1, lsl #2
	add r1, r3, r0, lsl #2
	str r1, [sp, #0xc]
	add r0, sp, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	mov r1, r4, lsr #7
	bl ov66_02240C80
	ldr r0, [r5, #0x10]
	ldr r1, [sp]
	cmp r0, #0
	moveq r5, #0
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldrne r5, [r1]
	str r1, [r6, #0]
	stmib r6, {r0, r2}
	mov r0, r4, lsl #0x19
	str r3, [r6, #0xc]
	add r0, r5, r0, lsr #22
	str r0, [r6, #0x10]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_0223F158

	arm_func_start ov66_0223F1E4
ov66_0223F1E4: ; 0x0223F1E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xbc
	mov r5, r0
	tst r1, #0x7f
	movne r0, #1
	moveq r0, #0
	mov r8, #0
	add r4, r0, r1, lsr #7
	mov r7, r8
	add r6, sp, #0x28
	b _0223F280
_0223F210:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	ldr sb, [r1, r0, lsl #2]
	strb r8, [sp, #0x13]
	ldr r0, [r5, #0xc]
	add r1, r0, #1
	str r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	streq r8, [r5, #0xc]
	ldr r0, [r5, #0x10]
	sub r1, r0, #1
	str r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	add r0, r0, r1
	ldr r1, [r5, #0x14]
	sub r0, r0, #1
	bl sub_020E2178
	ldr r2, [r5, #8]
	add r0, r5, #8
	str sb, [r2, r1, lsl #2]
	mov r1, r6
	str r7, [sp, #0x28]
	bl ov66_0223F944
	ldr r0, [r5, #0]
	sub r4, r4, #1
	sub r0, r0, #0x80
	str r0, [r5, #0]
_0223F280:
	cmp r4, #0
	beq _0223F294
	ldr r0, [r5, #0]
	cmp r0, #0x80
	bhs _0223F210
_0223F294:
	cmp r4, #0
	addeq sp, sp, #0xbc
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _0223F660 ; =0x0225B6C8
	ldr r2, [r1, #0]
	tst r2, #1
	bne _0223F2C4
	ldr r0, _0223F664 ; =0x022590A8
	orr r2, r2, #1
	mvn r3, #0xff
	str r3, [r0, #0]
	str r2, [r1, #0]
_0223F2C4:
	ldr r1, _0223F664 ; =0x022590A8
	mov r6, r4, lsl #7
	ldr r0, [r1, #0]
	cmp r0, r4, lsl #7
	blo _0223F320
	ldr r0, _0223F660 ; =0x0225B6C8
	ldr r2, [r0, #0]
	tst r2, #1
	bne _0223F2F8
	orr r2, r2, #1
	mvn r3, #0xff
	str r3, [r1, #0]
	str r2, [r0, #0]
_0223F2F8:
	ldr r1, [r5, #0x10]
	ldr r0, _0223F664 ; =0x022590A8
	cmp r1, #0
	ldr r2, [r0, #0]
	moveq r1, #0
	subne r0, r1, #1
	movne r1, r0, lsl #7
	sub r0, r2, r6
	cmp r1, r0
	bls _0223F328
_0223F320:
	ldr r0, _0223F668 ; =0x022590AC
	bl ov66_0223F7D8
_0223F328:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	moveq r1, #0
	subne r1, r0, #1
	ldr r0, [r5, #0x10]
	add r0, r4, r0
	cmp r0, r1
	bhi _0223F3AC
	cmp r4, #0
	addeq sp, sp, #0xbc
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	mov r7, #0x400
	mov sb, #0
	add r8, sp, #0x24
_0223F360:
	mov r0, r7
	bl ov66_02246290
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r2, r3, r2
	mov r6, r0
	sub r0, r2, #1
	bl sub_020E2178
	ldr r2, [r5, #8]
	add r0, r5, #8
	str r6, [r2, r1, lsl #2]
	mov r1, r8
	str sb, [sp, #0x24]
	bl ov66_0223F944
	subs r4, r4, #1
	bne _0223F360
	add sp, sp, #0xbc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0223F3AC:
	movs r1, #0
	add r6, sp, #0xac
	str r1, [sp, #0xa4]
	str r1, [sp, #0xa8]
	str r1, [sp, #0x74]
	str r1, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r1, [sp, #0x80]
	str r1, [r6, #0]
	str r1, [r6, #4]
	str r1, [r6, #8]
	str r1, [r6, #0xc]
	add r8, sp, #0x74
	beq _0223F3EC
	add r0, r1, r1
	bl sub_020E2178
_0223F3EC:
	ldr r7, [r8]
	ldr r2, [r8, #4]
	ldr r0, [r8, #0xc]
	add r3, r7, r2, lsl #2
	add r2, r7, r0, lsl #2
	add r8, r7, r1, lsl #2
	ldrb r1, [sp, #0x12]
	add r0, sp, #0x84
	str r8, [sp, #0x84]
	str r7, [sp, #0x88]
	str r7, [sp, #0x98]
	str r3, [sp, #0x8c]
	str r2, [sp, #0x90]
	str r0, [sp, #4]
	add r0, sp, #0x94
	strb r1, [sp, #8]
	sub r7, sp, #0xc
	str r3, [sp, #0x94]
	str r3, [sp, #0x9c]
	str r2, [sp, #0xa0]
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	mov r0, r6
	ldmia r7, {r1, r2, r3}
	bl ov66_02240D98
	add r0, sp, #0x74
	bl ov66_0223C41C
	ldr r0, [r5, #0x10]
	add r8, sp, #0xac
	add r0, r4, r0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	moveq r2, #0
	subne r2, r0, #1
	ldr r0, [sp, #0x1c]
	mov r1, r2, lsl #1
	cmp r0, r2, lsl #1
	addhi r0, sp, #0x1c
	addls r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r1, [r0, #0]
	mov r0, r8
	bl ov66_0223F7E8
	mov r2, #0
	add r1, sp, #0x18
	mov r0, r8
	str r2, [sp, #0x18]
	bl ov66_0223F944
	cmp r4, #0
	beq _0223F50C
	mov r7, #0x400
	mov sl, #0
	add sb, sp, #0x14
_0223F4C8:
	mov r0, r7
	bl ov66_02246290
	ldr r3, [r8, #4]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0xc]
	add r2, r3, r2
	mov r6, r0
	sub r0, r2, #1
	bl sub_020E2178
	ldr r2, [r8]
	mov r0, r8
	str r6, [r2, r1, lsl #2]
	mov r1, sb
	str sl, [sp, #0x14]
	bl ov66_0223F944
	subs r4, r4, #1
	bne _0223F4C8
_0223F50C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0223F5FC
	ldr r1, [r5, #0x14]
	cmp r1, #0
	moveq r1, #0
	beq _0223F538
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl sub_020E2178
_0223F538:
	ldr r4, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r3, r4, r2, lsl #2
	add r2, r4, r0, lsl #2
	add r1, r4, r1, lsl #2
	str r1, [sp, #0x64]
	add r0, sp, #0x64
	str r4, [sp, #0x68]
	str r3, [sp, #0x6c]
	str r2, [sp, #0x70]
	mvn r1, #0
	bl ov66_02240C80
	ldr r0, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #0x14]
	add sb, r0, r2, lsl #2
	mov r6, #0
	ldr r7, [r8]
	ldr r2, [r8, #0xc]
	ldr r3, [r8, #4]
	add r2, r7, r2, lsl #2
	add r4, r7, r3, lsl #2
	ldr r3, [sp, #0x64]
	str r2, [sp, #0x38]
	ldr r2, [sp, #0x68]
	str r3, [sp, #0x50]
	ldr r3, [sp, #0x6c]
	str r2, [sp, #0x54]
	ldr r2, [sp, #0x70]
	str r7, [sp, #0x30]
	add r7, r0, r1, lsl #2
	str r3, [sp, #0x58]
	str r2, [sp, #0x5c]
	str r0, [sp, #0x40]
	add r1, sp, #0x2c
	add r2, sp, #0x3c
	add r3, sp, #0x50
	str r7, [sp, #0x48]
	strb r6, [sp, #0xe]
	strb r6, [sp, #0xf]
	strb r6, [sp, #0xd]
	mov r0, r8
	str sb, [sp, #0x3c]
	str sb, [sp, #0x44]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x34]
	strb r6, [sp]
	bl ov66_0223FEA4
_0223F5FC:
	ldr r2, [r5, #8]
	ldr r1, [r8]
	add r0, sp, #0xa4
	str r1, [r5, #8]
	str r2, [r8]
	ldr r3, [r5, #0xc]
	ldr r1, [r8, #4]
	mov r2, #0
	str r1, [r5, #0xc]
	str r3, [r8, #4]
	ldr r3, [r5, #0x10]
	ldr r1, [r8, #8]
	str r1, [r5, #0x10]
	str r3, [r8, #8]
	ldr r3, [r5, #0x14]
	ldr r1, [r8, #0xc]
	str r1, [r5, #0x14]
	ldr r1, [r8, #8]
	str r3, [r8, #0xc]
	sub r1, r1, r1
	strb r2, [sp, #0xc]
	str r1, [r8, #8]
	bl ov66_0224091C
	add sp, sp, #0xbc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_0223F660: .word 0x0225B6C8
_0223F664: .word 0x022590A8
_0223F668: .word 0x022590AC
	arm_func_end ov66_0223F1E4

	arm_func_start ov66_0223F66C
ov66_0223F66C: ; 0x0223F66C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	cmp r1, #0
	mov r6, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [r6, #4]
	sub r0, r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #0x10]
	cmp r0, #0
	moveq r2, #0
	subne r0, r0, #1
	movne r2, r0, lsl #7
	ldmia r6, {r0, r1}
	add r0, r0, r1
	sub r5, r2, r0
	cmp r5, #0x100
	addlo sp, sp, #4
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	mov r8, #0
	mov r7, r8
	mov r4, r8
_0223F6C8:
	strb r4, [sp]
	ldr r0, [r6, #0x10]
	sub r1, r0, #1
	str r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	add r0, r0, r1
	ldr r1, [r6, #0x14]
	sub r0, r0, #1
	bl sub_020E2178
	ldr sb, [r6, #8]
	mov sl, r1
	ldr r1, [sb, sl, lsl #2]
	cmp r1, #0
	beq _0223F70C
	mov r0, r8
	mov r2, r8
	bl ov4_021D77C4
_0223F70C:
	sub r5, r5, #0x80
	str r7, [sb, sl, lsl #2]
	cmp r5, #0x100
	bhs _0223F6C8
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov66_0223F66C

	arm_func_start ov66_0223F724
ov66_0223F724: ; 0x0223F724
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	cmp r1, #0
	mov r6, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6, #4]
	sub r0, r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #0]
	add r0, r0, r1
	str r0, [r6, #0]
	cmp r0, #0x100
	blo _0223F7C0
	mov r5, #0
	mov r4, r5
_0223F764:
	ldr r1, [r6, #8]
	ldr r0, [r6, #0xc]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq _0223F784
	mov r0, r5
	mov r2, r5
	bl ov4_021D77C4
_0223F784:
	strb r4, [sp]
	ldr r0, [r6, #0xc]
	add r1, r0, #1
	str r1, [r6, #0xc]
	ldr r0, [r6, #0x14]
	cmp r1, r0
	streq r4, [r6, #0xc]
	ldr r0, [r6, #0x10]
	sub r0, r0, #1
	str r0, [r6, #0x10]
	ldr r0, [r6, #0]
	sub r0, r0, #0x80
	str r0, [r6, #0]
	cmp r0, #0x100
	bhs _0223F764
_0223F7C0:
	ldr r0, [r6, #4]
	cmp r0, #0
	moveq r0, #0x40
	streq r0, [r6]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov66_0223F724

	arm_func_start ov66_0223F7D8
ov66_0223F7D8: ; 0x0223F7D8
	stmfd sp!, {r3, lr}
	bl sub_020D7350
	bl sub_020D3DA0
	ldmia sp!, {r3, pc}
	arm_func_end ov66_0223F7D8

	arm_func_start ov66_0223F7E8
ov66_0223F7E8: ; 0x0223F7E8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r1, r0
	addls sp, sp, #0x38
	ldmlsia sp!, {r3, r4, r5, pc}
	mov r2, #0
	add r0, r4, #0xc
	str r0, [sp, #0x34]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	strb r2, [sp, #2]
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0, #0]
	add r0, sp, #0x24
	bl ov66_02240A0C
	ldr r1, [r4, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _0223F864
	ldr r2, [r4, #4]
	ldr r0, [r4, #8]
	add r0, r2, r0
	bl sub_020E2178
_0223F864:
	ldr r0, [r4, #0]
	mov ip, #0
	add r0, r0, r1, lsl #2
	str r0, [sp, #4]
	ldr r2, [r4, #0]
	sub r3, sp, #4
	str r2, [sp, #8]
	ldr r0, [r4, #4]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0xc]
	ldr r1, [r4, #0xc]
	add r0, sp, #0x24
	add r1, r2, r1, lsl #2
	str r1, [sp, #0x10]
	ldr r5, [r4, #0]
	ldr r2, [r4, #4]
	add r1, sp, #0x14
	add r2, r5, r2, lsl #2
	str r2, [sp, #0x14]
	ldr r5, [r4, #0]
	add r2, sp, #4
	str r5, [sp, #0x18]
	ldr lr, [r4, #4]
	add lr, r5, lr, lsl #2
	str lr, [sp, #0x1c]
	ldr lr, [r4, #0xc]
	add lr, r5, lr, lsl #2
	str lr, [sp, #0x20]
	strb ip, [sp, #1]
	strb ip, [r3]
	ldr r3, [r3, #0]
	bl ov66_02240B80
	mov r0, #0
	strb r0, [sp]
	str r0, [r4, #8]
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r4, #0]
	str r1, [sp, #0x24]
	ldr r2, [r4, #4]
	ldr r1, [sp, #0x28]
	add r0, sp, #0x24
	str r1, [r4, #4]
	str r2, [sp, #0x28]
	ldr r2, [r4, #8]
	ldr r1, [sp, #0x2c]
	str r1, [r4, #8]
	str r2, [sp, #0x2c]
	ldr r2, [r4, #0xc]
	ldr r1, [r3, #0]
	str r1, [r4, #0xc]
	str r2, [r3, #0]
	bl ov66_022409BC
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223F7E8

	arm_func_start ov66_0223F944
ov66_0223F944: ; 0x0223F944
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	mov r5, r0
	ldr r3, [r5, #8]
	mov r4, r1
	ldr r1, [r5, #0xc]
	add r2, r3, #1
	cmp r2, r1
	bhs _0223F998
	ldr r0, [r5, #4]
	add r0, r0, r3
	bl sub_020E2178
	ldr r0, [r5, #0]
	add sp, sp, #0x38
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
_0223F998:
	mov r3, #0
	add r2, r5, #0xc
	mov r1, #1
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	str r3, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	bl ov66_0223FB04
	mov r3, #0
	mov r1, r0
	strb r3, [sp, #2]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	add r0, sp, #0x24
	strb r3, [sp, #3]
	bl ov66_02240A0C
	ldr r1, [r5, #8]
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _0223FA24
	ldr r2, [r5, #4]
	ldr r0, [r5, #8]
	add r0, r2, r0
	bl sub_020E2178
_0223FA24:
	ldr r0, [r5, #0]
	mov r4, #0
	add r0, r0, r1, lsl #2
	str r0, [sp, #4]
	ldr r2, [r5, #0]
	sub r3, sp, #4
	str r2, [sp, #8]
	ldr r0, [r5, #4]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0xc]
	ldr r1, [r5, #0xc]
	add r0, sp, #0x24
	add r1, r2, r1, lsl #2
	str r1, [sp, #0x10]
	ldr ip, [r5]
	ldr r2, [r5, #4]
	add r1, sp, #0x14
	add r2, ip, r2, lsl #2
	str r2, [sp, #0x14]
	ldr lr, [r5]
	add r2, sp, #4
	str lr, [sp, #0x18]
	ldr ip, [r5, #4]
	add ip, lr, ip, lsl #2
	str ip, [sp, #0x1c]
	ldr ip, [r5, #0xc]
	add ip, lr, ip, lsl #2
	str ip, [sp, #0x20]
	strb r4, [sp, #1]
	strb r4, [r3]
	ldr r3, [r3, #0]
	bl ov66_02240A74
	mov r0, r4
	strb r0, [sp]
	str r0, [r5, #8]
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r5, #0]
	str r1, [sp, #0x24]
	ldr r2, [r5, #4]
	ldr r1, [sp, #0x28]
	add r0, sp, #0x24
	str r1, [r5, #4]
	str r2, [sp, #0x28]
	ldr r2, [r5, #8]
	ldr r1, [sp, #0x2c]
	str r1, [r5, #8]
	str r2, [sp, #0x2c]
	ldr r2, [r5, #0xc]
	ldr r1, [r3, #0]
	str r1, [r5, #0xc]
	str r2, [r3, #0]
	bl ov66_022409BC
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223F944

	arm_func_start ov66_0223FB04
ov66_0223FB04: ; 0x0223FB04
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r2, _0223FC04 ; =0x0225B6D0
	ldr r3, [r2, #0]
	tst r3, #1
	bne _0223FB34
	ldr r1, _0223FC08 ; =0x022590A4
	orr r3, r3, #1
	mvn r4, #0xc0000001
	str r4, [r1, #0]
	str r3, [r2, #0]
_0223FB34:
	ldr r1, [r0, #0xc]
	ldr r0, _0223FC08 ; =0x022590A4
	cmp r1, #0
	moveq r5, #0
	subne r5, r1, #1
	ldr r4, [r0, #0]
	ldr r1, [sp, #0x1c]
	sub r0, r4, r5
	cmp r1, r0
	bls _0223FB60
	bl ov66_0223FC14
_0223FB60:
	ldr r0, _0223FC0C ; =0xAAAAAAAB
	umull r0, r1, r4, r0
	mov r1, r1, lsr #1
	cmp r5, r1
	bhs _0223FBB4
	add r1, r5, #1
	ldr r0, _0223FC10 ; =0xCCCCCCCD
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #2
	ldr r0, [sp, #0x1c]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x1c
	addls r0, sp, #4
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r5, r0
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0223FBB4:
	cmp r5, r1, lsl #1
	bhs _0223FBF0
	ldr r0, [sp, #0x1c]
	add r1, r5, #1
	mov r2, r1, lsr #1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x1c
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r5, r0
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0223FBF0:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_0223FC04: .word 0x0225B6D0
_0223FC08: .word 0x022590A4
_0223FC0C: .word 0xAAAAAAAB
_0223FC10: .word 0xCCCCCCCD
	arm_func_end ov66_0223FB04

	arm_func_start ov66_0223FC14
ov66_0223FC14: ; 0x0223FC14
	stmfd sp!, {r3, lr}
	ldr r0, _0223FC28 ; =0x022590C4
	bl sub_020D7350
	bl sub_020D3DA0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223FC28: .word 0x022590C4
	arm_func_end ov66_0223FC14

	arm_func_start ov66_0223FC2C
ov66_0223FC2C: ; 0x0223FC2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #4]
	mov r0, #0
	strb r0, [sp, #2]
	ldr r1, [r5, #4]
	mov r4, r2
	sub r1, r1, r3
	str r1, [r5, #4]
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _0223FC74
	beq _0223FC68
	mov r2, r0
	bl ov4_021D77C4
_0223FC68:
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #8]
_0223FC74:
	mov r3, #0
	strb r3, [sp]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	mov r0, r5
	mov r1, r4
	strb r3, [sp, #1]
	bl ov66_02240D38
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223FC2C

	arm_func_start ov66_0223FC9C
ov66_0223FC9C: ; 0x0223FC9C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r0, #8]
	mvn r0, #0xe0000000
	ldr r1, [sp, #0x14]
	sub r0, r0, r4
	cmp r1, r0
	bls _0223FCC4
	bl sub_020DFBDC
_0223FCC4:
	ldr r0, _0223FD60 ; =0x0AAAAAAA
	cmp r4, r0
	bhs _0223FD10
	add r1, r4, #1
	ldr r0, _0223FD64 ; =0xCCCCCCCD
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #2
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x14
	addls r0, sp, #4
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0223FD10:
	cmp r4, r0, lsl #1
	bhs _0223FD4C
	ldr r0, [sp, #0x14]
	add r1, r4, #1
	mov r2, r1, lsr #1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x14
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0223FD4C:
	mvn r0, #0xe0000000
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_0223FD60: .word 0x0AAAAAAA
_0223FD64: .word 0xCCCCCCCD
	arm_func_end ov66_0223FC9C

	arm_func_start ov66_0223FD68
ov66_0223FD68: ; 0x0223FD68
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #4]
	mov r0, #0
	strb r0, [sp, #2]
	ldr r1, [r5, #4]
	mov r4, r2
	sub r1, r1, r3
	str r1, [r5, #4]
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _0223FDB0
	beq _0223FDA4
	mov r2, r0
	bl ov4_021D77C4
_0223FDA4:
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #8]
_0223FDB0:
	mov r3, #0
	strb r3, [sp]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	mov r0, r5
	mov r1, r4
	strb r3, [sp, #1]
	bl ov66_02240D68
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223FD68

	arm_func_start ov66_0223FDD8
ov66_0223FDD8: ; 0x0223FDD8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r0, #8]
	mvn r0, #0xe0000000
	ldr r1, [sp, #0x14]
	sub r0, r0, r4
	cmp r1, r0
	bls _0223FE00
	bl sub_020DFBDC
_0223FE00:
	ldr r0, _0223FE9C ; =0x0AAAAAAA
	cmp r4, r0
	bhs _0223FE4C
	add r1, r4, #1
	ldr r0, _0223FEA0 ; =0xCCCCCCCD
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #2
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x14
	addls r0, sp, #4
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0223FE4C:
	cmp r4, r0, lsl #1
	bhs _0223FE88
	ldr r0, [sp, #0x14]
	add r1, r4, #1
	mov r2, r1, lsr #1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x14
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0223FE88:
	mvn r0, #0xe0000000
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_0223FE9C: .word 0x0AAAAAAA
_0223FEA0: .word 0xCCCCCCCD
	arm_func_end ov66_0223FDD8

	arm_func_start ov66_0223FEA4
ov66_0223FEA4: ; 0x0223FEA4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1a4
	mov sb, r2
	mov r8, r3
	ldrb r6, [r8, #0x10]
	ldrb r2, [sb, #0x10]
	str r1, [sp]
	mov sl, r0
	ldr ip, [r8, #4]
	ldr fp, [r8, #8]
	ldr r7, [r8, #0xc]
	ldr r5, [sb]
	ldr r4, [sb, #4]
	ldr r3, [sb, #8]
	ldr lr, [sb, #0xc]
	ldr r1, [r8]
	add r0, sp, #0x5c
	str r1, [sp, #0x5c]
	add r1, sp, #0x48
	strb r6, [sp, #0x168]
	strb r2, [sp, #0x17c]
	str ip, [sp, #0x60]
	str fp, [sp, #0x64]
	str r7, [sp, #0x68]
	strb r6, [sp, #0x6c]
	str r5, [sp, #0x48]
	str r4, [sp, #0x4c]
	str r3, [sp, #0x50]
	str lr, [sp, #0x54]
	strb r2, [sp, #0x58]
	bl ov66_02240CC4
	movs r4, r0
	addeq sp, sp, #0x1a4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp]
	ldr r3, [sl]
	ldr r1, [sl, #4]
	ldr r2, [r0, #0]
	add r7, r3, r1, lsl #2
	sub r1, r2, r7
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r2, r7
	mov r5, r0, asr #2
	ldrlo r0, [sl, #0xc]
	addlo r5, r5, r0
	ldr r0, [sl, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r4, r0
	ldrls r1, [sl, #8]
	subls r0, r0, r4
	cmpls r1, r0
	bhi _0224026C
	str r7, [sp, #0x194]
	ldr r6, [sl]
	str r6, [sp, #0x198]
	ldr r0, [sl, #4]
	add r0, r6, r0, lsl #2
	str r0, [sp, #4]
	str r0, [sp, #0x19c]
	ldr r0, [sl, #0xc]
	add fp, r6, r0, lsl #2
	str fp, [sp, #0x1a0]
	ldr r1, [sl, #8]
	sub r0, r1, r5
	str r0, [sp, #8]
	cmp r5, r0
	bhs _022400A4
	add r0, sp, #0x194
	rsb r1, r4, #0
	bl ov66_02240C80
	ldr r1, [sp, #0x194]
	ldr r0, [sl]
	cmp r5, #0
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sl, #4]
	ldr r0, [sl, #8]
	add r0, r0, r4
	str r0, [sl, #8]
	beq _022401E0
	ldr r2, [sp, #0x1a0]
	ldr sl, [sp, #0x194]
	ldr r4, [sp, #0x198]
	ldr r3, [sp, #0x19c]
	str r2, [sp, #0x124]
	ldr r2, [sp, #4]
	add r0, sp, #0x38
	mov r1, r5
	str sl, [sp, #0x118]
	str r4, [sp, #0x11c]
	str r3, [sp, #0x120]
	str r7, [sp, #0x38]
	str r6, [sp, #0x3c]
	str r2, [sp, #0x40]
	str fp, [sp, #0x44]
	bl ov66_02240C80
	ldr r2, [r0, #0]
	add r1, sp, #0x138
	str r2, [sp, #0x128]
	ldr r3, [r0, #4]
	add r2, sp, #0x128
	str r3, [sp, #0x12c]
	ldr r4, [r0, #8]
	add r3, sp, #0x118
	str r4, [sp, #0x130]
	ldr r4, [r0, #0xc]
	add r0, sp, #0x148
	str r4, [sp, #0x134]
	ldr r4, [sp, #4]
	str r7, [sp, #0x138]
	str r6, [sp, #0x13c]
	str r4, [sp, #0x140]
	str fp, [sp, #0x144]
	bl ov66_022407A8
	ldr r3, [sp, #0x148]
	ldr r2, [sp, #0x14c]
	ldr r1, [sp, #0x150]
	ldr r0, [sp, #0x154]
	str r3, [sp, #0x194]
	str r2, [sp, #0x198]
	str r1, [sp, #0x19c]
	str r0, [sp, #0x1a0]
	b _022401E0
_022400A4:
	add r0, r1, r4
	str r0, [sl, #8]
	ldr r1, [sl, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _022400CC
	ldr r2, [sl, #4]
	ldr r0, [sl, #8]
	add r0, r2, r0
	bl sub_020E2178
_022400CC:
	ldr r5, [sl]
	ldr r2, [sl, #4]
	ldr r0, [sl, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	ldr r0, [sp, #8]
	add r1, r5, r1, lsl #2
	str r1, [sp, #0x194]
	str r5, [sp, #0x198]
	str r3, [sp, #0x19c]
	str r2, [sp, #0x1a0]
	cmp r0, #0
	beq _022401D4
	add r0, sp, #0x18
	str r1, [sp, #0xd8]
	str r1, [sp, #0x18]
	str r5, [sp, #0xdc]
	str r3, [sp, #0xe0]
	str r2, [sp, #0xe4]
	str r5, [sp, #0x1c]
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	rsb r1, r4, #0
	bl ov66_02240C80
	ldr r2, [r0, #0]
	ldr r1, [sp, #8]
	str r2, [sp, #0xe8]
	ldr r2, [r0, #4]
	add r1, r4, r1
	str r2, [sp, #0xec]
	ldr r2, [r0, #8]
	ldr r6, [sp, #0x194]
	str r2, [sp, #0xf0]
	ldr r7, [r0, #0xc]
	ldr r5, [sp, #0x198]
	ldr r3, [sp, #0x19c]
	ldr r2, [sp, #0x1a0]
	add r0, sp, #0x28
	str r7, [sp, #0xf4]
	str r6, [sp, #0x28]
	str r5, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	rsb r1, r1, #0
	bl ov66_02240C80
	ldr r2, [r0, #0]
	add r1, sp, #0xf8
	str r2, [sp, #0xf8]
	ldr r3, [r0, #4]
	add r2, sp, #0xe8
	str r3, [sp, #0xfc]
	ldr r5, [r0, #8]
	add r3, sp, #0xd8
	str r5, [sp, #0x100]
	ldr r5, [r0, #0xc]
	add r0, sp, #0x108
	str r5, [sp, #0x104]
	bl ov66_02240614
	ldr r0, [sp, #0x108]
	ldr r2, [sp, #0x10c]
	ldr r1, [sp, #0x110]
	str r0, [sp, #0x194]
	ldr r0, [sp, #0x114]
	str r2, [sp, #0x198]
	str r1, [sp, #0x19c]
	str r0, [sp, #0x1a0]
_022401D4:
	add r0, sp, #0x194
	rsb r1, r4, #0
	bl ov66_02240C80
_022401E0:
	ldr r3, [sp, #0x194]
	ldr r2, [sp, #0x198]
	ldr r0, [sp, #0x1a0]
	ldr r1, [sp, #0x19c]
	str r0, [sp, #0x9c]
	str r3, [sp, #0x90]
	str r2, [sp, #0x94]
	str r1, [sp, #0x98]
	ldr r1, [r8]
	add r0, sp, #0xc8
	str r1, [sp, #0xa0]
	ldr r2, [r8, #4]
	add r1, sp, #0xb4
	str r2, [sp, #0xa4]
	ldr r3, [r8, #8]
	add r2, sp, #0xa0
	str r3, [sp, #0xa8]
	ldr r4, [r8, #0xc]
	add r3, sp, #0x90
	str r4, [sp, #0xac]
	ldrb r4, [r8, #0x10]
	strb r4, [sp, #0xb0]
	ldr r4, [sb]
	str r4, [sp, #0xb4]
	ldr r4, [sb, #4]
	str r4, [sp, #0xb8]
	ldr r4, [sb, #8]
	str r4, [sp, #0xbc]
	ldr r4, [sb, #0xc]
	str r4, [sp, #0xc0]
	ldrb r4, [sb, #0x10]
	strb r4, [sp, #0xc4]
	bl ov66_02240444
	add sp, sp, #0x1a4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0224026C:
	mov r3, #0
	add r2, sl, #0xc
	mov r0, sl
	mov r1, r4
	str r3, [sp, #0x180]
	str r3, [sp, #0x184]
	str r3, [sp, #0x188]
	str r3, [sp, #0x18c]
	str r2, [sp, #0x190]
	bl ov66_0223FB04
	mov r3, #0
	mov r1, r0
	strb r3, [sp, #0x10]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	add r0, sp, #0x180
	strb r3, [sp, #0x11]
	bl ov66_02240A0C
	ldr r0, [sp, #0x180]
	str r5, [sp, #0x184]
	cmp r4, #0
	add r5, r0, r5, lsl #2
	beq _02240320
	mov r3, #0
_022402D0:
	ldr r0, [sb]
	cmp r5, #0
	strb r3, [sp, #0xf]
	ldr r2, [r0, #0]
	sub r4, r4, #1
	strne r2, [r5]
	ldr r0, [sp, #0x188]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x188]
	ldr r0, [sb]
	add r1, r0, #4
	str r1, [sb]
	ldr r0, [sb, #0xc]
	cmp r1, r0
	ldreq r0, [sb, #4]
	streq r0, [sb]
	cmp r4, #0
	bne _022402D0
	str r2, [sp, #0x14]
_02240320:
	ldr r1, [sl, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _02240340
	ldr r2, [sl, #4]
	ldr r0, [sl, #8]
	add r0, r2, r0
	bl sub_020E2178
_02240340:
	ldr r0, [sl]
	mov r2, #0
	add r0, r0, r1, lsl #2
	str r0, [sp, #0x80]
	ldr r4, [sl]
	sub r1, sp, #4
	str r4, [sp, #0x84]
	ldr r0, [sl, #4]
	add r0, r4, r0, lsl #2
	str r0, [sp, #0x88]
	ldr r3, [sl, #0xc]
	add r0, sp, #0x180
	add r3, r4, r3, lsl #2
	str r3, [sp, #0x8c]
	strb r2, [sp, #0xe]
	strb r2, [r1]
	ldr r3, [r1, #0]
	ldr r1, [sp]
	add r2, sp, #0x80
	bl ov66_02240B80
	ldr r1, [sl]
	ldr r0, [sl, #4]
	mov r2, #0
	add r0, r1, r0, lsl #2
	str r0, [sp, #0x70]
	ldr r4, [sl]
	sub r1, sp, #4
	str r4, [sp, #0x74]
	ldr r0, [sl, #4]
	add r0, r4, r0, lsl #2
	str r0, [sp, #0x78]
	ldr r3, [sl, #0xc]
	add r0, sp, #0x180
	add r3, r4, r3, lsl #2
	str r3, [sp, #0x7c]
	strb r2, [sp, #0xd]
	strb r2, [r1]
	ldr r3, [r1, #0]
	ldr r2, [sp]
	add r1, sp, #0x70
	bl ov66_02240A74
	mov r0, #0
	strb r0, [sp, #0xc]
	str r0, [sl, #8]
	ldr r1, [sl]
	ldr r0, [sp, #0x180]
	add r3, sp, #0x18c
	str r0, [sl]
	str r1, [sp, #0x180]
	ldr r2, [sl, #4]
	ldr r1, [sp, #0x184]
	add r0, sp, #0x180
	str r1, [sl, #4]
	str r2, [sp, #0x184]
	ldr r2, [sl, #8]
	ldr r1, [sp, #0x188]
	str r1, [sl, #8]
	str r2, [sp, #0x188]
	ldr r2, [sl, #0xc]
	ldr r1, [r3, #0]
	str r1, [sl, #0xc]
	str r2, [r3, #0]
	bl ov66_022409BC
	add sp, sp, #0x1a4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov66_0223FEA4

	arm_func_start ov66_02240444
ov66_02240444: ; 0x02240444
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x60
	mov r5, r1
	ldr r8, [r5]
	ldr r7, [r2, #0]
	mov r6, r0
	mov r4, r3
	cmp r8, r7
	beq _022405EC
	mov r0, r2
	bl ov66_02240CC4
	str r0, [sp, #0xc]
_02240474:
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0xc]
	sub r2, r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	addle r0, sp, #0xc
	str r2, [sp, #8]
	addgt r0, sp, #8
	ldr r7, [r0, #0]
	ldr r1, [r5, #0]
	add r0, sp, #0x10
	str r1, [sp, #0x10]
	ldr r2, [r5, #4]
	mov r1, r7
	str r2, [sp, #0x14]
	ldr r2, [r5, #8]
	str r2, [sp, #0x18]
	ldr r2, [r5, #0xc]
	str r2, [sp, #0x1c]
	ldrb r2, [r5, #0x10]
	strb r2, [sp, #0x20]
	bl ov66_02240C80
	ldrb r2, [sp, #0x20]
	ldr r0, [sp, #0x10]
	ldr ip, [r4]
	ldr sb, [sp, #0x14]
	ldr r8, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x24]
	str sb, [sp, #0x28]
	str r8, [sp, #0x2c]
	str r3, [sp, #0x30]
	strb r2, [sp, #0x34]
	ldr lr, [r5]
	str r3, [sp, #0x58]
	str lr, [sp, #0x38]
	ldr r1, [r5, #4]
	str r0, [sp, #0x4c]
	str r1, [sp, #0x3c]
	ldr r1, [r5, #8]
	str sb, [sp, #0x50]
	str r1, [sp, #0x40]
	ldr r1, [r5, #0xc]
	str r8, [sp, #0x54]
	str r1, [sp, #0x44]
	ldrb r1, [r5, #0x10]
	strb r2, [sp, #0x5c]
	strb r2, [sp]
	strb r1, [sp, #0x48]
	cmp lr, r0
	add r3, sp, #0x24
	add r2, sp, #0x38
	beq _02240598
	mov r1, #0
_02240558:
	strb r1, [sp, #1]
	ldr r0, [lr]
	str r0, [ip]
	ldr lr, [r2]
	ldr r8, [r2, #0xc]
	add lr, lr, #4
	cmp lr, r8
	ldreq r8, [r2, #4]
	str lr, [r2]
	streq r8, [r2]
	ldr lr, [r2]
	ldr r8, [r3]
	add ip, ip, #4
	cmp lr, r8
	bne _02240558
	str r0, [sp, #4]
_02240598:
	ldr r1, [sp, #0xc]
	sub r0, r7, #1
	sub r1, r1, r7
	str r1, [sp, #0xc]
	ldr r1, [r4, #0]
	add r0, r1, r0, lsl #2
	add r1, r0, #4
	str r1, [r4, #0]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	ldreq r0, [r4, #4]
	streq r0, [r4]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022405EC
	add r0, sp, #0x4c
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldrb r7, [sp]
	strb r7, [r5, #0x10]
	b _02240474
_022405EC:
	ldr r0, [r4, #0]
	str r0, [r6, #0]
	ldr r0, [r4, #4]
	str r0, [r6, #4]
	ldr r0, [r4, #8]
	str r0, [r6, #8]
	ldr r0, [r4, #0xc]
	str r0, [r6, #0xc]
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov66_02240444

	arm_func_start ov66_02240614
ov66_02240614: ; 0x02240614
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r1
	mov r8, r2
	ldr r2, [r8]
	ldr r1, [sb]
	mov sl, r0
	mov r7, r3
	cmp r1, r2
	beq _02240780
	add r4, sp, #8
	mov fp, #0
	mov r5, #1
_02240648:
	ldr r0, [r8, #4]
	cmp r2, r0
	ldreq r0, [r8, #0xc]
	streq r0, [r8]
	ldr r0, [r8]
	sub r0, r0, #4
	str r0, [r8]
	ldr r1, [r7, #0]
	ldr r0, [r7, #4]
	cmp r1, r0
	ldreq r0, [r7, #0xc]
	streq r0, [r7]
	ldr r0, [r7, #0]
	sub r0, r0, #4
	str r0, [r7, #0]
	ldr r1, [r7, #8]
	cmp r0, r1
	ldrlo r1, [r7, #4]
	sub r1, r0, r1
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r1, [sb]
	ldr r0, [sb, #8]
	ldr r6, [r8, #8]
	cmp r1, r0
	movhs r2, r5
	ldr r0, [r8]
	movlo r2, fp
	cmp r0, r6
	movhs r3, #1
	movlo r3, #0
	cmp r2, r3
	bne _022406FC
	sub r1, r0, r1
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	ldr r1, [sp, #8]
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _02240728
_022406FC:
	cmp r0, r6
	ldrlo r6, [r8, #4]
	sub r1, r0, r6
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	ldr r1, [sp, #8]
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_02240728:
	ldr r6, [r0, #0]
	ldr r1, [r8]
	add r0, r6, #1
	sub r1, r1, r6, lsl #2
	add r0, r1, r0, lsl #2
	str r1, [r8]
	sub r2, r0, r1
	ldr r3, [r7, #0]
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	add r3, r3, #4
	mov r2, r0, asr #2
	sub r0, r3, r2, lsl #2
	mov r2, r2, lsl #2
	bl sub_020D50D8
	ldr r0, [r7, #0]
	sub r0, r0, r6, lsl #2
	str r0, [r7, #0]
	ldr r2, [r8]
	ldr r0, [sb]
	cmp r0, r2
	bne _02240648
_02240780:
	ldr r0, [r7, #0]
	str r0, [sl]
	ldr r0, [r7, #4]
	str r0, [sl, #4]
	ldr r0, [r7, #8]
	str r0, [sl, #8]
	ldr r0, [r7, #0xc]
	str r0, [sl, #0xc]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov66_02240614

	arm_func_start ov66_022407A8
ov66_022407A8: ; 0x022407A8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r1
	mov r8, r2
	ldr r2, [sb]
	ldr r1, [r8]
	mov sl, r0
	mov r7, r3
	cmp r2, r1
	beq _022408F4
	add r4, sp, #8
	mov fp, #0
	mov r5, #1
_022407DC:
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r2, [sb]
	ldr r0, [sb, #8]
	ldr r1, [r8]
	cmp r2, r0
	movhs r3, r5
	ldr r0, [r8, #8]
	movlo r3, fp
	cmp r1, r0
	movhs r0, #1
	movlo r0, #0
	cmp r3, r0
	bne _02240850
	sub r1, r1, r2
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	ldr r1, [sp, #8]
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _02240878
_02240850:
	ldr r0, [sb, #0xc]
	ldr r1, [sp, #8]
	sub r2, r0, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_02240878:
	ldr r6, [r0, #0]
	ldr r1, [sb]
	ldr r0, [r7, #0]
	add r2, r1, r6, lsl #2
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	mov r2, r2, lsl #2
	bl sub_020D50D8
	ldr r1, [sb]
	sub r0, r6, #1
	add r1, r1, r0, lsl #2
	add r2, r1, #4
	str r2, [sb]
	ldr r1, [sb, #0xc]
	cmp r2, r1
	ldreq r1, [sb, #4]
	streq r1, [sb]
	ldr r1, [r7, #0]
	add r0, r1, r0, lsl #2
	add r1, r0, #4
	str r1, [r7, #0]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	ldreq r0, [r7, #4]
	streq r0, [r7]
	ldr r1, [sb]
	ldr r0, [r8]
	cmp r1, r0
	bne _022407DC
_022408F4:
	ldr r0, [r7, #0]
	str r0, [sl]
	ldr r0, [r7, #4]
	str r0, [sl, #4]
	ldr r0, [r7, #8]
	str r0, [sl, #8]
	ldr r0, [r7, #0xc]
	str r0, [sl, #0xc]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov66_022407A8

	arm_func_start ov66_0224091C
ov66_0224091C: ; 0x0224091C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, #0
	mov r4, r0
	strb r2, [sp]
	str r2, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022409AC
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _0224095C
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r0, r2, r0
	bl sub_020E2178
	mov r2, r1
_0224095C:
	ldr r8, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	add r6, r8, r2, lsl #2
	add r7, r8, r0, lsl #2
	cmp r7, r6
	add sb, r8, r1, lsl #2
	beq _022409AC
	mov r5, #0
_02240980:
	ldr r1, [r7, #0]
	cmp r1, #0
	beq _02240998
	mov r0, r5
	mov r2, r5
	bl ov4_021D77C4
_02240998:
	add r7, r7, #4
	cmp r7, sb
	moveq r7, r8
	cmp r7, r6
	bne _02240980
_022409AC:
	add r0, r4, #8
	bl ov66_0223C41C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov66_0224091C

	arm_func_start ov66_022409BC
ov66_022409BC: ; 0x022409BC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02240A00
	ldr r2, [r4, #8]
	mov r0, #0
	strb r0, [sp]
	ldr r1, [r4, #8]
	sub r1, r1, r2
	str r1, [r4, #8]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02240A00
	mov r2, r0
	bl ov4_021D77C4
_02240A00:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_022409BC

	arm_func_start ov66_02240A0C
ov66_02240A0C: ; 0x02240A0C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _02240A6C ; =0x0225B6CC
	mov r5, r0
	ldr r3, [r2, #0]
	mov r4, r1
	tst r3, #1
	bne _02240A3C
	ldr r0, _02240A70 ; =0x022590A0
	orr r1, r3, #1
	mvn r3, #0xc0000001
	str r3, [r0, #0]
	str r1, [r2, #0]
_02240A3C:
	ldr r0, _02240A70 ; =0x022590A0
	ldr r0, [r0, #0]
	cmp r4, r0
	bls _02240A50
	bl ov66_0223FC14
_02240A50:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl ov66_02246290
	str r0, [r5, #0]
	add r0, r4, #1
	str r0, [r5, #0xc]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02240A6C: .word 0x0225B6CC
_02240A70: .word 0x022590A0
	arm_func_end ov66_02240A0C

	arm_func_start ov66_02240A74
ov66_02240A74: ; 0x02240A74
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r3, [r7, #0]
	ldr r0, [r7, #4]
	ldr r2, [r5, #0]
	ldr r1, [r6, #0]
	add r0, r3, r0, lsl #2
	cmp r1, r2
	bhi _02240AEC
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r3, r2, asr #2
	mov r2, r3, lsl #2
	sub r0, r0, r3, lsl #2
	bl sub_020D50D8
	ldr r2, [r5, #0]
	ldr r0, [r6, #0]
	ldr r1, [r7, #8]
	sub r2, r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	add r1, r1, r0, asr #2
	str r1, [r7, #8]
	ldr r1, [r7, #4]
	sub r0, r1, r0, asr #2
	str r0, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02240AEC:
	ldr r1, [r5, #4]
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	sub r4, r0, r2, lsl #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl sub_020D50D8
	ldr r1, [r6, #0]
	ldr r0, [r6, #0xc]
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	mov r2, r0, lsl #2
	sub r0, r4, r0, lsl #2
	bl sub_020D50D8
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0]
	ldr r4, [r5, #0]
	ldr r3, [r5, #4]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	mov r0, r3, asr #1
	add r1, r2, r1, lsr #30
	add r0, r3, r0, lsr #30
	mov r2, r1, asr #2
	ldr r1, [r7, #4]
	add r2, r2, r0, asr #2
	sub r0, r1, r2
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	add r0, r0, r2
	str r0, [r7, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02240A74

	arm_func_start ov66_02240B80
ov66_02240B80: ; 0x02240B80
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r3, [r7, #4]
	ldr r0, [r7, #8]
	mov r6, r1
	ldr r1, [r7, #0xc]
	add r0, r3, r0
	mov r5, r2
	bl sub_020E2178
	ldr r2, [r7, #0]
	ldr r0, [r5, #0]
	add r4, r2, r1, lsl #2
	ldr r1, [r6, #0]
	cmp r1, r0
	bhi _02240BFC
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl sub_020D50D8
	ldr r1, [r5, #0]
	ldr r0, [r6, #0]
	ldr r2, [r7, #8]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r0, r2, r0, asr #2
	str r0, [r7, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02240BFC:
	ldr r2, [r6, #0xc]
	mov r0, r4
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r8, r2, asr #2
	mov r2, r8, lsl #2
	bl sub_020D50D8
	ldr r1, [r5, #4]
	ldr r2, [r5, #0]
	add r0, r4, r8, lsl #2
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	mov r2, r2, lsl #2
	bl sub_020D50D8
	ldr r1, [r5, #0]
	ldr r0, [r5, #4]
	ldr r4, [r6, #0xc]
	ldr r3, [r6, #0]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	mov r1, r1, asr #2
	ldr r2, [r7, #8]
	add r0, r1, r0, asr #2
	add r0, r2, r0
	str r0, [r7, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov66_02240B80

	arm_func_start ov66_02240C80
ov66_02240C80: ; 0x02240C80
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub ip, r2, r4
	sub lr, r3, r4
	mov r3, ip, asr #1
	mov r2, lr, asr #1
	add r3, ip, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _02240CB8
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_02240CB8:
	add r1, r4, r1, lsl #2
	str r1, [r0, #0]
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02240C80

	arm_func_start ov66_02240CC4
ov66_02240CC4: ; 0x02240CC4
	stmfd sp!, {r3, lr}
	ldr ip, [r1]
	ldr r3, [r0, #0]
	ldr lr, [r0, #8]
	sub r2, r3, ip
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _02240D10
	cmp ip, lr
	bhs _02240D30
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _02240D30
_02240D10:
	cmp ip, lr
	blo _02240D30
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_02240D30:
	mov r0, r2
	ldmia sp!, {r3, pc}
	arm_func_end ov66_02240CC4

	arm_func_start ov66_02240D38
ov66_02240D38: ; 0x02240D38
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mvn r1, #0xe0000000
	mov r5, r0
	cmp r4, r1
	bls _02240D54
	bl sub_020DFBDC
_02240D54:
	mov r0, r4, lsl #3
	bl ov66_02246290
	str r0, [r5, #0]
	str r4, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_02240D38

	arm_func_start ov66_02240D68
ov66_02240D68: ; 0x02240D68
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mvn r1, #0xe0000000
	mov r5, r0
	cmp r4, r1
	bls _02240D84
	bl sub_020DFBDC
_02240D84:
	mov r0, r4, lsl #3
	bl ov66_02246290
	str r0, [r5, #0]
	str r4, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_02240D68

	arm_func_start ov66_02240D98
ov66_02240D98: ; 0x02240D98
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	ldr r1, [sp, #0x44]
	mov r4, r0
	ldmia r1, {r0, r1, r2, r3}
	add r5, sp, #0x14
	add lr, sp, #0x34
	stmia r5, {r0, r1, r2, r3}
	add ip, sp, #4
	ldmia lr, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	mov r0, r5
	mov r1, ip
	bl ov66_02241110
	movs r1, r0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r2, #0
	strb r2, [sp, #1]
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0, #0]
	mov r0, r4
	bl ov66_02241064
	mov r1, #0
	strb r1, [sp]
	sub r0, sp, #4
	strb r1, [r0]
	ldr r3, [r0, #0]
	ldr r2, [sp, #0x44]
	add r1, sp, #0x34
	mov r0, r4
	bl ov66_02240E38
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_02240D98

	arm_func_start ov66_02240E38
ov66_02240E38: ; 0x02240E38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x5c
	mov r7, r0
	ldr r4, [r7, #0]
	mov r6, r1
	cmp r4, #0
	mov r5, r2
	addeq sp, sp, #0x5c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r7, #4]
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	add r0, r2, r0
	bl sub_020E2178
	add r4, r4, r1, lsl #2
	mov r0, r5
	mov r1, r6
	bl ov66_02241110
	str r0, [sp, #0x18]
	ldr r2, [r7, #0]
	ldr r1, [r7, #0xc]
	add r1, r2, r1, lsl #2
	sub r2, r1, r4
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	addlt r1, sp, #0x18
	str r2, [sp, #0x14]
	addge r1, sp, #0x14
	ldr r1, [r1, #0]
	str r1, [sp, #0x14]
	ldr r1, [r7, #8]
	add r0, r1, r0
	str r0, [r7, #8]
	ldr r0, [r6, #0]
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x2c]
	ldr r2, [r6, #4]
	add r0, sp, #0x2c
	str r2, [sp, #0x30]
	ldr r2, [r6, #8]
	str r2, [sp, #0x34]
	ldr r2, [r6, #0xc]
	str r2, [sp, #0x38]
	bl ov66_022410CC
	ldr r8, [r0]
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r8, [sp, #0x4c]
	add r0, sp, #0x4c
	mov r8, sp
	str r3, [sp, #0x50]
	str r2, [sp, #0x54]
	str r1, [sp, #0x58]
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	ldmia r6, {r0, r1, r2, r3}
	bl ov66_02240FB0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	addeq sp, sp, #0x5c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r6, #0]
	add r0, sp, #0x1c
	str r2, [sp, #0x1c]
	ldr r2, [r6, #4]
	str r2, [sp, #0x20]
	ldr r2, [r6, #8]
	str r2, [sp, #0x24]
	ldr r2, [r6, #0xc]
	str r2, [sp, #0x28]
	bl ov66_022410CC
	ldmia r0, {r8, lr}
	ldr ip, [r0, #8]
	ldr r6, [r0, #0xc]
	mov r4, sp
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r4, [r7, #0]
	str r8, [sp, #0x3c]
	add r0, sp, #0x3c
	str lr, [sp, #0x40]
	str ip, [sp, #0x44]
	str r6, [sp, #0x48]
	ldmia r0, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	bl ov66_02240FB0
	add sp, sp, #0x5c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov66_02240E38

	arm_func_start ov66_02240FB0
ov66_02240FB0: ; 0x02240FB0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, [sp, #0x2c]
	ldr r6, [sp, #0x28]
	ldr r5, [sp, #0x38]
	ldr sl, [sp, #0x48]
	cmp r6, r5
	str r0, [sp]
	ldr r8, [sp, #0x34]
	ldr r7, [sp, #0x30]
	ldr fp, [sp, #0x40]
	beq _02241054
_02240FE0:
	cmp r6, r7
	movhs r0, #1
	movlo r0, #0
	cmp r5, fp
	movhs r1, #1
	movlo r1, #0
	cmp r0, r1
	subeq r1, r5, r6
	subne r1, r8, r6
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov sb, r0, asr #2
	add r0, r6, sb, lsl #2
	sub r1, r0, r6
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r4, r0, asr #2
	mov r2, r4, lsl #2
	mov r0, sl
	mov r1, r6
	bl sub_020D50D8
	sub r0, sb, #1
	add r0, r6, r0, lsl #2
	add r6, r0, #4
	cmp r6, r8
	ldreq r6, [sp]
	add sl, sl, r4, lsl #2
	cmp r6, r5
	bne _02240FE0
_02241054:
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_02240FB0

	arm_func_start ov66_02241064
ov66_02241064: ; 0x02241064
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _022410C4 ; =0x0225B6D0
	mov r5, r0
	ldr r3, [r2, #0]
	mov r4, r1
	tst r3, #1
	bne _02241094
	ldr r0, _022410C8 ; =0x022590A4
	orr r1, r3, #1
	mvn r3, #0xc0000001
	str r3, [r0, #0]
	str r1, [r2, #0]
_02241094:
	ldr r0, _022410C8 ; =0x022590A4
	ldr r0, [r0, #0]
	cmp r4, r0
	bls _022410A8
	bl ov66_0223FC14
_022410A8:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl ov66_02246290
	str r0, [r5, #0]
	add r0, r4, #1
	str r0, [r5, #0xc]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022410C4: .word 0x0225B6D0
_022410C8: .word 0x022590A4
	arm_func_end ov66_02241064

	arm_func_start ov66_022410CC
ov66_022410CC: ; 0x022410CC
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub ip, r2, r4
	sub lr, r3, r4
	mov r3, ip, asr #1
	mov r2, lr, asr #1
	add r3, ip, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _02241104
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_02241104:
	add r1, r4, r1, lsl #2
	str r1, [r0, #0]
	ldmia sp!, {r4, pc}
	arm_func_end ov66_022410CC

	arm_func_start ov66_02241110
ov66_02241110: ; 0x02241110
	stmfd sp!, {r3, lr}
	ldr ip, [r1]
	ldr r3, [r0, #0]
	ldr lr, [r0, #8]
	sub r2, r3, ip
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _0224115C
	cmp ip, lr
	bhs _0224117C
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _0224117C
_0224115C:
	cmp ip, lr
	blo _0224117C
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_0224117C:
	mov r0, r2
	ldmia sp!, {r3, pc}
	arm_func_end ov66_02241110

	.rodata


	.global Unk_ov66_02258C8C
Unk_ov66_02258C8C: ; 0x02258C8C
	.incbin "incbin/overlay66_rodata.bin", 0x374, 0x20


	.data


	.global Unk_ov66_02259098
Unk_ov66_02259098: ; 0x02259098
	.incbin "incbin/overlay66_data.bin", 0x378, 0x379 - 0x378

	.global Unk_ov66_02259099
Unk_ov66_02259099: ; 0x02259099
	.incbin "incbin/overlay66_data.bin", 0x379, 0x37C - 0x379

	.global Unk_ov66_0225909C
Unk_ov66_0225909C: ; 0x0225909C
	.incbin "incbin/overlay66_data.bin", 0x37C, 0x380 - 0x37C

	.global Unk_ov66_022590A0
Unk_ov66_022590A0: ; 0x022590A0
	.incbin "incbin/overlay66_data.bin", 0x380, 0x384 - 0x380

	.global Unk_ov66_022590A4
Unk_ov66_022590A4: ; 0x022590A4
	.incbin "incbin/overlay66_data.bin", 0x384, 0x388 - 0x384

	.global Unk_ov66_022590A8
Unk_ov66_022590A8: ; 0x022590A8
	.incbin "incbin/overlay66_data.bin", 0x388, 0x38C - 0x388

	.global Unk_ov66_022590AC
Unk_ov66_022590AC: ; 0x022590AC
	.incbin "incbin/overlay66_data.bin", 0x38C, 0x3A4 - 0x38C

	.global Unk_ov66_022590C4
Unk_ov66_022590C4: ; 0x022590C4
	.incbin "incbin/overlay66_data.bin", 0x3A4, 0x14


	.bss


	.global Unk_ov66_0225B6C8
Unk_ov66_0225B6C8: ; 0x0225B6C8
	.space 0x4

	.global Unk_ov66_0225B6CC
Unk_ov66_0225B6CC: ; 0x0225B6CC
	.space 0x4

	.global Unk_ov66_0225B6D0
Unk_ov66_0225B6D0: ; 0x0225B6D0
	.space 0x4

