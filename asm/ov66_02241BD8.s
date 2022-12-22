	.include "macros/function.inc"
	.include "include/ov66_02241BD8.inc"

	

	.text


	arm_func_start ov66_02241BD8
ov66_02241BD8: ; 0x02241BD8
	ldr r1, [r0, #0x28]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	bx lr
_02241BE8: ; jump table
	b _02241BF8 ; case 0
	b _02241C1C ; case 1
	b _02241C30 ; case 2
	bx lr ; case 3
_02241BF8:
	ldr r1, [r0, #0x30]
	cmp r1, #0
	ldrne r1, [r0, #0x34]
	cmpne r1, #0
	movne r1, #1
	moveq r1, #0
	str r1, [r0, #0x28]
	cmp r1, #0
	bxeq lr
_02241C1C:
	ldr r1, [r0, #0x10]
	cmp r1, #0
	movne r1, #2
	strne r1, [r0, #0x28]
	bx lr
_02241C30:
	ldr r1, [r0, #0x38]
	cmp r1, #0
	movne r1, #3
	strne r1, [r0, #0x28]
	bx lr
	arm_func_end ov66_02241BD8

	arm_func_start ov66_02241C44
ov66_02241C44: ; 0x02241C44
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x34
	mov r6, r0
	mov r0, #0x3c
	mov r5, r1
	bl ov66_02246290
	movs r4, r0
	beq _02241CD4
	ldr r1, _02241D3C ; =0x02258EB0
	mov r0, #5
	str r1, [r4, #0]
	str r0, [r4, #4]
	mov r2, #0
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	add r0, sp, #0x24
	add r1, sp, #0x18
	str r2, [r4, #0x10]
	bl ov4_021D806C
	add r0, sp, #0x24
	add r1, sp, #0x18
	bl RTC_ConvertDateTimeToSecond
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	mov r1, #1
	str r1, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	str r0, [r4, #0x28]
	str r5, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
_02241CD4:
	add r0, sp, #4
	add r2, sp, #0x14
	add r1, r6, #4
	str r4, [sp, #0x14]
	bl ov66_02242550
	ldrb r0, [sp, #8]
	mov r2, #0
	ldr r1, [sp, #4]
	strb r2, [sp, #1]
	str r1, [sp, #0xc]
	strb r2, [sp]
	strb r0, [sp, #0x10]
	tst r0, #0xff
	bne _02241D30
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02241D24
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_02241D24:
	add sp, sp, #0x34
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_02241D30:
	mov r0, #1
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02241D3C: .word 0x02258EB0
	arm_func_end ov66_02241C44

	arm_func_start ov66_02241D40
ov66_02241D40: ; 0x02241D40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0xc]
	add r6, r4, #8
	mov r7, r1
	str r0, [sp, #4]
	cmp r0, r6
	beq _02241DC0
	add r5, sp, #4
_02241D68:
	ldr r0, [r0, #0xc]
	ldr r1, [r0, #0x2c]
	cmp r7, r1
	bne _02241DAC
	cmp r0, #0
	beq _02241D8C
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_02241D8C:
	add r1, sp, #4
	ldr r2, [r1, #0]
	add r0, sp, #0
	add r1, r4, #4
	bl ov66_022425F0
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02241DAC:
	mov r0, r5
	bl ov66_0223AD6C
	ldr r0, [sp, #4]
	cmp r0, r6
	bne _02241D68
_02241DC0:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02241D40

	arm_func_start ov66_02241DCC
ov66_02241DCC: ; 0x02241DCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r4, r1
	cmp r4, r0
	addeq sp, sp, #0x18
	addeq r0, r5, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0xc]
	add r7, r5, #8
	str r4, [sp, #0xc]
	str r4, [sp]
	str r7, [sp, #0x10]
	str r7, [sp, #4]
	str r0, [sp, #0x14]
	str r0, [sp, #8]
	add r6, sp, #8
	b _02241E20
_02241E18:
	mov r0, r6
	bl ov66_0223AD6C
_02241E20:
	ldr r1, [sp, #8]
	cmp r1, r7
	ldrne r0, [r1, #0xc]
	ldrne r0, [r0, #0x2c]
	cmpne r4, r0
	bne _02241E18
	add r0, r5, #8
	cmp r1, r0
	ldr r0, [sp, #8]
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02241DCC

	arm_func_start ov66_02241E54
ov66_02241E54: ; 0x02241E54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, [r5, #0xc]
	add r4, r5, #8
	str r0, [sp, #8]
	cmp r0, r4
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r8, sp, #8
	add r7, sp, #0
	add r6, sp, #4
_02241E84:
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02241E9C
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_02241E9C:
	ldr r1, [sp, #8]
	mov r0, r8
	str r1, [sp, #4]
	bl ov66_0223AD6C
	ldr r2, [r6, #0]
	mov r0, r7
	add r1, r5, #4
	bl ov66_022425F0
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _02241E84
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov66_02241E54

	arm_func_start ov66_02241ED0
ov66_02241ED0: ; 0x02241ED0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r1, r0
	ldr r0, [r1, #4]
	mov r2, #0
	add r0, r0, #1
	mov r4, r2
	cmp r0, #0x14
	bne _02241F10
	add r0, sp, #0
	bl ov66_02241F2C
	ldr r0, [sp, #4]
	mov r2, #1
	add r0, r0, #1
	cmp r0, #0x14
	moveq r4, r2
_02241F10:
	cmp r2, #0
	beq _02241F20
	add r0, sp, #0
	bl ov66_0223B5D0
_02241F20:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_02241ED0

	arm_func_start ov66_02241F2C
ov66_02241F2C: ; 0x02241F2C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r2, #0
	mov r6, r0
	str r2, [r6, #0]
	str r2, [r6, #4]
	mov r4, r1
	str r2, [r6, #8]
	ldr r1, [r4, #4]
	cmp r1, #0
	bls _02241F5C
	bl ov66_02242738
_02241F5C:
	ldr r0, [r4, #0xc]
	add r5, r4, #8
	str r0, [sp, #8]
	cmp r0, r5
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	sub r8, sp, #4
	mov r4, #0
	add sb, sp, #4
	add r7, sp, #8
_02241F84:
	ldr r1, [r0, #0xc]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	beq _02241FEC
	ldr r0, [r1, #0x2c]
	str r0, [sp, #4]
	strb r4, [sp]
	ldr r1, [r6, #4]
	ldr r0, [r6, #8]
	cmp r1, r0
	bhs _02241FD0
	mov r0, r1
	add r2, r0, #1
	str r2, [r6, #4]
	ldr r0, [r6, #0]
	ldr r1, [sp, #4]
	add r0, r0, r2, lsl #2
	str r1, [r0, #-4]
	b _02241FEC
_02241FD0:
	strb r4, [sp, #1]
	and r0, r4, #0xff
	strb r0, [r8]
	ldr r2, [r8]
	mov r0, r6
	mov r1, sb
	bl ov66_02242818
_02241FEC:
	mov r0, r7
	bl ov66_0223AD6C
	ldr r0, [sp, #8]
	cmp r0, r5
	bne _02241F84
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov66_02241F2C

	arm_func_start ov66_02242008
ov66_02242008: ; 0x02242008
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xd4
	ldr ip, _02242398 ; =0x02258EB0
	mov r6, r0
	mov sb, r1
	add r8, sp, #0x9c
	mov r7, #0
	mov sl, #5
	add r0, sp, #0x78
	add r1, sp, #0x6c
	mov r5, r2
	mov r4, r3
	str ip, [sp, #0x98]
	str sl, [r8]
	str r7, [r8, #4]
	str r7, [r8, #8]
	str r7, [r8, #0xc]
	add r7, sp, #0x98
	bl ov4_021D806C
	add r0, sp, #0x78
	add r1, sp, #0x6c
	bl RTC_ConvertDateTimeToSecond
	str sb, [r7, #0x2c]
	stmib r8, {r0, r1}
	mov r0, #1
	str r0, [r8, #0x10]
	str r0, [r7, #0x24]
	mov r0, #0
	str r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	str r0, [r7, #0x20]
	str r0, [r7, #0x28]
	str r0, [r7, #0x30]
	str r0, [r7, #0x34]
	str r0, [r7, #0x38]
	mov r1, r8
	add r0, r6, #0x14
	mov r2, #0x10
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _022420E0
	ldr r0, [r7, #4]
	add r1, r7, #8
	str r0, [r6, #0x14]
	add r0, r6, #0x18
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r7, #0x10]
	mov r0, #1
	str r1, [r6, #0x20]
	str r0, [r6, #0x24]
_022420E0:
	ldr sb, [r6, #0x2c]
	ldr r0, [r7, #0x1c]
	mov r8, #0
	cmp sb, r0
	bne _0224212C
	cmp sb, #0
	beq _02242128
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov sl, r0
	add r0, r7, #0x18
	bl ov66_02235B8C
	mov r1, r0
	mov r0, sl
	mov r2, sb
	bl memcmp
	cmp r0, #0
	bne _0224212C
_02242128:
	mov r8, #1
_0224212C:
	cmp r8, #0
	bne _02242170
	add r0, r6, #0x28
	add r1, r7, #0x18
	cmp r0, r1
	beq _02242168
	mov r3, #0
	ldr r1, [r7, #0x18]
	ldr r8, [r7, #0x1c]
	strb r3, [sp, #0xd]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r3, [r2, #0]
	add r2, r1, r8
	bl ov66_02236674
_02242168:
	mov r0, #1
	str r0, [r6, #0x34]
_02242170:
	ldr r1, [r7, #0x28]
	add r0, sp, #0xb0
	str r1, [r6, #0x38]
	ldr r1, [r7, #0x2c]
	str r1, [r6, #0x3c]
	ldr r1, [r7, #0x30]
	str r1, [r6, #0x40]
	ldr r1, [r7, #0x34]
	str r1, [r6, #0x44]
	ldr r1, [r7, #0x38]
	str r1, [r6, #0x48]
	bl ov66_0223B8E8
	mov r2, #0
	mov r3, #5
	add r0, sp, #0x5c
	add r1, sp, #0x50
	str r3, [sp, #0x88]
	str r2, [sp, #0x8c]
	str r2, [sp, #0x90]
	str r2, [sp, #0x94]
	bl ov4_021D806C
	add r0, sp, #0x5c
	add r1, sp, #0x50
	bl RTC_ConvertDateTimeToSecond
	str r1, [sp, #0x90]
	ldr r1, [sp, #0x88]
	str r0, [sp, #0x8c]
	add r0, sp, #0x8c
	str r1, [sp, #0x3c]
	ldmia r0, {r2, r3}
	add r1, sp, #0x40
	stmia r1, {r2, r3}
	ldr r0, [sp, #0x94]
	add r7, sp, #0x3c
	str r0, [sp, #0x48]
	mov r0, #1
	str r0, [sp, #0x4c]
	add r0, r6, #0x14
	mov r1, r7
	mov r2, #0x10
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _02242250
	ldr r0, [r7, #0]
	add r1, r7, #4
	str r0, [r6, #0x14]
	add r0, r6, #0x18
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r7, #0xc]
	mov r0, #1
	str r1, [r6, #0x20]
	str r0, [r6, #0x24]
_02242250:
	mov r1, #1
	str r1, [r6, #0x40]
	mov r0, #0
	add r2, r5, r4
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	strb r0, [sp, #9]
	strb r0, [sp, #0xa]
	strb r0, [sp, #8]
	strb r0, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0x1c]
	str r2, [r1, #0]
	str r0, [r1, #4]
	ldr r3, [r1, #0]
	add r0, sp, #0x20
	add r1, sp, #0x10
	str r5, [sp, #0x10]
	str r2, [sp, #0x18]
	ldmia r1, {r1, r2}
	bl ov66_022366CC
	mov r2, #0
	ldrb r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	ldr r4, [sp, #0x24]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	sub r2, sp, #4
	strb r0, [r2]
	add r5, sp, #0x2c
	ldr r3, [r2, #0]
	mov r0, r5
	add r2, r1, r4
	bl ov66_0223C2F4
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r8, [r6, #0x2c]
	ldr r0, [sp, #0x30]
	mov r7, #0
	cmp r8, r0
	bne _02242334
	cmp r8, #0
	beq _02242330
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r4, r0
	mov r0, r5
	bl ov66_02235B8C
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl memcmp
	cmp r0, #0
	bne _02242334
_02242330:
	mov r7, #1
_02242334:
	cmp r7, #0
	bne _02242370
	add r0, r6, #0x28
	cmp r0, r5
	beq _02242368
	mov r3, #0
	ldmia r5, {r1, r4}
	strb r3, [sp, #0xb]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r3, [r2, #0]
	add r2, r1, r4
	bl ov66_02236674
_02242368:
	mov r0, #1
	str r0, [r6, #0x34]
_02242370:
	add r0, sp, #0x2c
	bl ov66_0223B8E8
	mov r1, #1
	add r0, sp, #0x20
	str r1, [r6, #0x44]
	bl ov66_0223B8E8
	mov r0, #1
	str r0, [r6, #0x48]
	add sp, sp, #0xd4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02242398: .word 0x02258EB0
	arm_func_end ov66_02242008

	arm_func_start ov66_0224239C
ov66_0224239C: ; 0x0224239C
	ldr r0, [r0, #0x28]
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end ov66_0224239C

	arm_func_start ov66_022423B0
ov66_022423B0: ; 0x022423B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r1, _0224245C ; =0x02259100
	mov r7, r0
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r2, [sp, #4]
	str r1, [sp]
	ldr r0, [r7, #0xc]
	add r5, r7, #8
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r5, [sp, #0x18]
	str r5, [sp, #8]
	str r0, [sp, #0x1c]
	str r0, [sp, #0xc]
	add r6, sp, #0
	add r4, sp, #0xc
	b _02242404
_022423FC:
	mov r0, r4
	bl ov66_0223AD6C
_02242404:
	ldr r0, [sp, #0xc]
	cmp r0, r5
	beq _02242440
	ldr r1, [sp, #4]
	ldr r0, [r0, #0xc]
	tst r1, #1
	add r0, r0, r1, asr #1
	ldreq r1, [r6]
	beq _02242434
	ldr r2, [r0, #0]
	ldr r1, [r6, #0]
	ldr r1, [r2, r1]
_02242434:
	blx r1
	cmp r0, #0
	bne _022423FC
_02242440:
	ldr r1, [sp, #0xc]
	add r0, r7, #8
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224245C: .word 0x02259100
	arm_func_end ov66_022423B0

	arm_func_start ov66_02242460
ov66_02242460: ; 0x02242460
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	ldr r1, [r0, #0xc]
	add sb, r0, #8
	str r1, [sp]
	cmp r1, sb
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	add fp, sp, #4
	add sl, sp, #0x10
_0224248C:
	ldr r0, [r1, #0xc]
	bl ov66_02241BD8
	ldr r0, [sp]
	ldr r3, [r0, #0xc]
	ldr r0, [r3, #0x28]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02242534
_022424AC: ; jump table
	b _02242534 ; case 0
	b _02242534 ; case 1
	b _022424BC ; case 2
	b _02242534 ; case 3
_022424BC:
	str r6, [r3, #0x14]
	ldr r0, [sp]
	ldr r5, [r0, #0xc]
	str r6, [r5, #0x24]
	ldr r2, [r3, #4]
	ldr r1, [r3, #8]
	ldr r0, [r3, #0xc]
	str r2, [sp, #0xc]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldmia fp, {r0, r1, r2}
	stmia sl, {r0, r1, r2}
	ldr r0, [sp]
	ldr r7, [r5, #0x1c]
	ldr r0, [r0, #0xc]
	ldr r8, [r0, #0x2c]
	bl ov66_02234FC4
	mov r4, r0
	add r0, r5, #0x18
	bl ov66_02235B8C
	mov r2, r0
	ldr r4, [r4, #0xc]
	mov r3, r7
	mov r0, r8
	mov r1, sl
	blx r4
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	mov r0, #1
	str r0, [r1, #0x38]
_02242534:
	add r0, sp, #0
	bl ov66_0223AD6C
	ldr r1, [sp]
	cmp r1, sb
	bne _0224248C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov66_02242460

	arm_func_start ov66_02242550
ov66_02242550: ; 0x02242550
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	add ip, sp, #4
	mov r4, r2
	mov r5, r1
	mov r6, r0
	add r2, sp, #8
	add r3, sp, #5
	mov r0, r5
	mov r1, r4
	str ip, [sp]
	bl ov66_02242848
	ldr r3, [sp, #8]
	mov r1, r0
	cmp r3, #0
	beq _022425A8
	ldr r2, [r3, #0xc]
	ldr r0, [r4, #0]
	ldr r2, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	cmp r2, r0
	bge _022425D4
_022425A8:
	str r4, [sp]
	ldrb r2, [sp, #5]
	ldrb r3, [sp, #4]
	mov r0, r5
	bl ov66_02242660
	ldr r1, _022425EC ; =0x02259100
	str r0, [r6, #0]
	ldrb r0, [r1]
	add sp, sp, #0xc
	strb r0, [r6, #4]
	ldmia sp!, {r3, r4, r5, r6, pc}
_022425D4:
	ldr r0, _022425EC ; =0x02259100
	str r3, [r6, #0]
	ldrb r0, [r0, #1]
	strb r0, [r6, #4]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_022425EC: .word 0x02259100
	arm_func_end ov66_02242550

	arm_func_start ov66_022425F0
ov66_022425F0: ; 0x022425F0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [sp, #0x18]
	ldr r1, [r5, #8]
	mov r6, r0
	cmp r4, r1
	bne _02242620
	add r0, sp, #0x18
	bl ov66_0223AD6C
	ldr r0, [sp, #0x18]
	str r0, [r5, #8]
_02242620:
	ldr r1, [r5, #4]
	mov r0, r4
	bl ov66_0223AFE4
	str r0, [r6, #0]
	cmp r4, #0
	beq _02242648
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021D77C4
_02242648:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_022425F0

	arm_func_start ov66_02242660
ov66_02242660: ; 0x02242660
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r8, r0
	ldr r4, [r8]
	mvn r0, #0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r4, r0
	bne _02242694
	ldr r0, _02242734 ; =0x0225910C
	bl printf
	bl abort
_02242694:
	mov r1, #0
	mov r0, #0x10
	strb r1, [sp]
	bl ov66_02246290
	mov r4, r0
	add r0, r8, #4
	str r0, [sp, #0xc]
	adds r1, r4, #0xc
	ldrne r0, [sp, #0x30]
	str r4, [sp, #0x10]
	ldrne r0, [r0]
	str r4, [sp, #4]
	strne r0, [r1]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [sp, #0x10]
	str r0, [r4, #0]
	adds r0, r4, #8
	strne r7, [r0]
	cmp r6, #0
	strne r4, [r7]
	streq r4, [r7, #4]
	ldr r1, [r8]
	mov r0, r4
	add r1, r1, #1
	str r1, [r8]
	ldr r1, [r8, #4]
	str r4, [sp, #8]
	bl ov66_0223ADD8
	cmp r5, #0
	ldr r1, [sp, #0x10]
	strne r4, [r8, #8]
	cmp r1, #0
	beq _02242728
	mov r0, #0
	mov r2, r0
	bl ov4_021D77C4
_02242728:
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02242734: .word 0x0225910C
	arm_func_end ov66_02242660

	arm_func_start ov66_02242738
ov66_02242738: ; 0x02242738
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r2, #0
	mov r5, r0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	strb r2, [sp, #2]
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0, #0]
	add r0, sp, #4
	bl ov66_0224290C
	ldr r4, [r5, #0]
	ldr r0, [r5, #4]
	mov ip, #0
	add r0, r4, r0, lsl #2
	sub r1, r0, r4
	mov r0, r1, asr #1
	add r6, r1, r0, lsr #30
	mov r0, r6, asr #2
	mov r7, r0, lsl #2
	ldr r3, [sp, #4]
	ldr r0, [sp, #8]
	mov r1, r4
	mov r2, r7
	add r0, r3, r0, lsl #2
	strb ip, [sp, #1]
	bl memcpy
	mov r0, r4
	mov r2, r7
	mov r1, #0
	bl memset
	ldr r1, [sp, #8]
	mov r0, #0
	add r1, r1, r6, asr #2
	str r1, [sp, #8]
	strb r0, [sp]
	str r0, [r5, #4]
	add r3, sp, #0xc
	ldr r2, [r5, #8]
	ldr r1, [r3, #0]
	add r0, sp, #4
	str r1, [r5, #8]
	str r2, [r3, #0]
	ldr r2, [r5, #0]
	ldr r1, [sp, #4]
	str r1, [r5, #0]
	str r2, [sp, #4]
	ldr r2, [r5, #4]
	ldr r1, [sp, #8]
	str r1, [r5, #4]
	str r2, [sp, #8]
	bl ov66_022428BC
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02242738

	arm_func_start ov66_02242818
ov66_02242818: ; 0x02242818
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r2, #0
	mov r5, r0
	mov r1, #1
	strb r2, [sp]
	bl ov66_0224293C
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl ov66_02242A08
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_02242818

	arm_func_start ov66_02242848
ov66_02242848: ; 0x02242848
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	str r4, [r2, #0]
	ldr r6, [r0, #4]
	mov r4, #1
	ldr r7, [sp, #0x18]
	strb r4, [r3]
	strb r4, [r7]
	cmp r6, #0
	add r0, r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov ip, #0
	mov lr, r4
_0224287C:
	ldr r4, [r1, #0]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0x2c]
	ldr r4, [r0, #0x2c]
	mov r0, r6
	cmp r5, r4
	ldrlt r6, [r6]
	strltb lr, [r3]
	blt _022428B0
	str r6, [r2, #0]
	ldr r6, [r6, #4]
	strb ip, [r3]
	strb ip, [r7]
_022428B0:
	cmp r6, #0
	bne _0224287C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02242848

	arm_func_start ov66_022428BC
ov66_022428BC: ; 0x022428BC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02242900
	ldr r2, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r1, [r4, #4]
	sub r1, r1, r2
	str r1, [r4, #4]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02242900
	mov r2, r0
	bl ov4_021D77C4
_02242900:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_022428BC

	arm_func_start ov66_0224290C
ov66_0224290C: ; 0x0224290C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mvn r1, #0xc0000000
	mov r5, r0
	cmp r4, r1
	bls _02242928
	bl sub_020DFBDC
_02242928:
	mov r0, r4, lsl #2
	bl ov66_02246290
	str r0, [r5, #0]
	str r4, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0224290C

	arm_func_start ov66_0224293C
ov66_0224293C: ; 0x0224293C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r0, #8]
	mvn r0, #0xc0000000
	ldr r1, [sp, #0x14]
	sub r0, r0, r4
	cmp r1, r0
	bls _02242964
	bl sub_020DFBDC
_02242964:
	ldr r0, _02242A00 ; =0x15555555
	cmp r4, r0
	bhs _022429B0
	add r1, r4, #1
	ldr r0, _02242A04 ; =0xCCCCCCCD
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
_022429B0:
	cmp r4, r0, lsl #1
	bhs _022429EC
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
_022429EC:
	mvn r0, #0xc0000000
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_02242A00: .word 0x15555555
_02242A04: .word 0xCCCCCCCD
	arm_func_end ov66_0224293C

	arm_func_start ov66_02242A08
ov66_02242A08: ; 0x02242A08
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	mov r6, r0
	add r3, r6, #8
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x18]
	str r3, [sp, #0x14]
	mov r5, r1
	ldr r3, [r6, #4]
	ldr r1, [r6, #8]
	add r3, r3, r5
	sub r1, r3, r1
	mov r4, r2
	bl ov66_0224293C
	mov r3, #0
	mov r1, r0
	strb r3, [sp, #3]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	add r0, sp, #8
	strb r3, [sp, #4]
	bl ov66_02242B88
	ldr r3, [r6, #4]
	ldr r1, [sp, #8]
	mov r2, #0
	ldr r0, [sp, #0xc]
	add r1, r1, r3, lsl #2
	mov ip, r5
	str r3, [sp, #0x18]
	strb r2, [sp, #2]
	cmp r5, #0
	add r1, r1, r0, lsl #2
	beq _02242AAC
_02242A9C:
	ldr r0, [r4, #0]
	subs ip, ip, #1
	str r0, [r1, #0], #4
	bne _02242A9C
_02242AAC:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	add r0, r0, r5
	str r0, [sp, #0xc]
	ldr r4, [r6, #0]
	ldr r0, [r6, #4]
	mov ip, #0
	add r0, r4, r0, lsl #2
	sub r2, r0, r4
	mov r0, r2, asr #1
	add r5, r2, r0, lsr #30
	sub r3, r1, r5, asr #2
	mov r2, r5, asr #2
	ldr r0, [sp, #8]
	mov r7, r2, lsl #2
	mov r1, r4
	mov r2, r7
	add r0, r0, r3, lsl #2
	strb ip, [sp, #1]
	str r3, [sp, #0x18]
	bl memcpy
	mov r0, r4
	mov r2, r7
	mov r1, #0
	bl memset
	ldr r1, [sp, #0xc]
	mov r0, #0
	add r1, r1, r5, asr #2
	str r1, [sp, #0xc]
	strb r0, [sp]
	str r0, [r6, #4]
	add r3, sp, #0x10
	ldr r2, [r6, #8]
	ldr r1, [r3, #0]
	add r0, sp, #8
	str r1, [r6, #8]
	str r2, [r3, #0]
	ldr r2, [r6, #0]
	ldr r1, [sp, #8]
	str r1, [r6, #0]
	str r2, [sp, #8]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0xc]
	str r1, [r6, #4]
	str r2, [sp, #0xc]
	bl ov66_02242B6C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end ov66_02242A08

	arm_func_start ov66_02242B6C
ov66_02242B6C: ; 0x02242B6C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #4]
	bl ov66_02242BB8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02242B6C

	arm_func_start ov66_02242B88
ov66_02242B88: ; 0x02242B88
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mvn r1, #0xc0000000
	mov r5, r0
	cmp r4, r1
	bls _02242BA4
	bl sub_020DFBDC
_02242BA4:
	mov r0, r4, lsl #2
	bl ov66_02246290
	str r0, [r5, #0]
	str r4, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_02242B88

	arm_func_start ov66_02242BB8
ov66_02242BB8: ; 0x02242BB8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02242BFC
	ldr r2, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r1, [r4, #4]
	sub r1, r1, r2
	str r1, [r4, #4]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02242BFC
	mov r2, r0
	bl ov4_021D77C4
_02242BFC:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_02242BB8
	.data


	.global Unk_ov66_02259100
Unk_ov66_02259100: ; 0x02259100
	.incbin "incbin/overlay66_data.bin", 0x3E0, 0x3E1 - 0x3E0

	.global Unk_ov66_02259101
Unk_ov66_02259101: ; 0x02259101
	.incbin "incbin/overlay66_data.bin", 0x3E1, 0x3E4 - 0x3E1

	.global Unk_ov66_02259104
Unk_ov66_02259104: ; 0x02259104
	.incbin "incbin/overlay66_data.bin", 0x3E4, 0x3EC - 0x3E4

	.global Unk_ov66_0225910C
Unk_ov66_0225910C: ; 0x0225910C
	.incbin "incbin/overlay66_data.bin", 0x3EC, 0x1A

