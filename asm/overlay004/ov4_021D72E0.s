	.include "macros/function.inc"
	.include "overlay004/ov4_021D72E0.inc"

	

	.text


	arm_func_start ov4_021D72E0
ov4_021D72E0: ; 0x021D72E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r4, _021D7460 ; =0xAAAAAAAB
	str r2, [sp]
	umull r4, r5, r1, r4
	mov r6, #3
	mov r5, r5, lsr #1
	umull r4, r5, r6, r5
	mov sl, r0
	subs r5, r1, r4
	movne r5, #4
	ldr r2, _021D7460 ; =0xAAAAAAAB
	ldr r0, [sp]
	moveq r5, #0
	cmp r0, #0
	umull r0, r4, r1, r2
	mov r4, r4, lsr #1
	addeq sp, sp, #8
	add r0, r5, r4, lsl #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, r0
	addlo sp, sp, #8
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r7, sl, r1
	ldr r8, [sp]
	cmp sl, r7
	beq _021D7450
	sub fp, r2, #-0x80000000
	ldr r5, _021D7464 ; =0x02216628
	mov r4, fp
_021D735C:
	sub sb, r7, sl
	mov r0, sb, lsl #3
	smull r1, r2, r4, r0
	add r2, r2, r0, lsr #31
	mov r1, #6
	smull r2, r3, r1, r2
	subs r2, r0, r2
	smull r1, r2, fp, r0
	movne r3, #1
	moveq r3, #0
	add r2, r2, r0, lsr #31
	cmp sb, #3
	add r6, r2, r3
	movge sb, #3
	add r0, sp, #4
	mov r1, #0
	mov r2, #3
	bl MI_CpuFill8
	mov r0, sl
	add r1, sp, #4
	mov r2, sb
	bl MI_CpuCopy8
	ldrb r0, [sp, #4]
	ldr r1, [r5, #0]
	cmp r6, #2
	mov r0, r0, asr #2
	ldrsb r0, [r1, r0]
	strb r0, [r8]
	movlt r0, #0x2a
	blt _021D73F0
	ldrb r2, [sp, #4]
	ldrb r1, [sp, #5]
	ldr r0, [r5, #0]
	mov r2, r2, lsl #4
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #4
	ldrsb r0, [r0, r1]
_021D73F0:
	strb r0, [r8, #1]
	cmp r6, #3
	movlt r0, #0x2a
	blt _021D741C
	ldrb r2, [sp, #5]
	ldrb r1, [sp, #6]
	ldr r0, [r5, #0]
	mov r2, r2, lsl #2
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #6
	ldrsb r0, [r0, r1]
_021D741C:
	strb r0, [r8, #2]
	cmp r6, #4
	movlt r0, #0x2a
	blt _021D743C
	ldrb r0, [sp, #6]
	ldr r1, [r5, #0]
	and r0, r0, #0x3f
	ldrsb r0, [r1, r0]
_021D743C:
	add sl, sl, sb
	strb r0, [r8, #3]
	cmp sl, r7
	add r8, r8, #4
	bne _021D735C
_021D7450:
	ldr r0, [sp]
	sub r0, r8, r0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021D7460: .word 0xAAAAAAAB
_021D7464: .word Unk_ov4_02216628
	arm_func_end ov4_021D72E0

	arm_func_start ov4_021D7468
ov4_021D7468: ; 0x021D7468
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	tst r1, #3
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov ip, r5
	cmp r1, #0
	bls _021D74A0
_021D7488:
	ldrsb r4, [r0, ip]
	add ip, ip, #1
	cmp r4, #0x2a
	addne r5, r5, #6
	cmp ip, r1
	blo _021D7488
_021D74A0:
	mov ip, r5, asr #2
	add ip, r5, ip, lsr #29
	mov ip, ip, asr #3
	cmp r2, #0
	moveq r0, ip
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, ip
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r2]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r2
_021D74D8:
	mov r7, #0
	add r6, sp, #0
	mov r3, r7
	mov r4, #0x3f
	mov lr, #0x3e
_021D74EC:
	ldrsb r5, [r0, r7]
	cmp r5, #0x41
	blt _021D7508
	cmp r5, #0x5a
	suble r5, r5, #0x41
	strleb r5, [r6]
	ble _021D7550
_021D7508:
	cmp r5, #0x61
	blt _021D7520
	cmp r5, #0x7a
	suble r5, r5, #0x47
	strleb r5, [r6]
	ble _021D7550
_021D7520:
	cmp r5, #0x30
	blt _021D7538
	cmp r5, #0x39
	addle r5, r5, #4
	strleb r5, [r6]
	ble _021D7550
_021D7538:
	cmp r5, #0x2e
	streqb lr, [r6]
	beq _021D7550
	cmp r5, #0x2d
	streqb r4, [r6]
	strneb r3, [r6]
_021D7550:
	add r7, r7, #1
	cmp r7, #4
	add r6, r6, #1
	blt _021D74EC
	ldrsb r4, [sp, #1]
	ldrsb lr, [sp]
	add r3, r1, #1
	mov r4, r4, asr #4
	orr r4, r4, lr, lsl #2
	sub r3, r3, r2
	strb r4, [r1]
	cmp r3, ip
	add r0, r0, #4
	bge _021D75CC
	ldrsb lr, [sp, #2]
	ldrsb r4, [sp, #1]
	add r3, r1, #2
	mov lr, lr, asr #2
	orr r4, lr, r4, lsl #4
	sub r3, r3, r2
	strb r4, [r1, #1]
	cmp r3, ip
	bge _021D75CC
	ldrsb lr, [sp, #2]
	ldrsb r3, [sp, #3]
	orr r3, r3, lr, lsl #6
	strb r3, [r1, #2]
	add r1, r1, #3
	sub r3, r1, r2
	cmp r3, ip
	blt _021D74D8
_021D75CC:
	mov r0, r3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021D7468

	.data


	.global Unk_ov4_02216628
Unk_ov4_02216628: ; 0x02216628
	.incbin "incbin/overlay4_data.bin", 0x7A8, 0x7AC - 0x7A8

	.global Unk_ov4_0221662C
Unk_ov4_0221662C: ; 0x0221662C
	.incbin "incbin/overlay4_data.bin", 0x7AC, 0x41

