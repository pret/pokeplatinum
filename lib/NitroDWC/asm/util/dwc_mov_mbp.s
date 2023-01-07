	.include "macros/function.inc"
	.include "include/dwc_mov_mbp.inc"

	

	.text


	arm_func_start ov18_022407B0
ov18_022407B0: ; 0x022407B0
	stmfd sp!, {r3, lr}
	ldr r2, _022407EC ; =0x0225339C
	add r1, r0, #0x160
	str r0, [r2, #0]
	add r0, r1, #0x1b000
	bl ov18_02241448
	ldr r1, _022407EC ; =0x0225339C
	mov r2, #0
	ldr r0, [r1, #0]
	add r0, r0, #0x1b000
	str r2, [r0, #0x140]
	ldr r0, [r1, #0]
	add r0, r0, #0x1b000
	str r2, [r0, #0x144]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022407EC: .word Unk_ov18_0225339C
	arm_func_end ov18_022407B0

	arm_func_start ov18_022407F0
ov18_022407F0: ; 0x022407F0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x7c
	mov r5, r0
	add r0, sp, #0x28
	mov r4, r1
	bl OS_GetOwnerInfo
	ldrb r2, [sp, #0x12]
	ldrb r1, [sp, #0x29]
	ldrh r3, [sp, #0x42]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r2, r2, r1
	strb r2, [sp, #0x12]
	add r0, sp, #0x2c
	add r1, sp, #0x14
	mov r2, r3, lsl #1
	strb r3, [sp, #0x13]
	bl MI_CpuCopy8
	ldrb r2, [sp, #0x12]
	ldr r0, _02240908 ; =0x0225339C
	add lr, sp, #4
	mov r1, #0
	ldr r0, [r0, #0]
	bic r2, r2, #0xf0
	mov ip, r0
	strb r2, [sp, #0x12]
	strh r1, [lr]
	strh r1, [lr, #2]
	strh r1, [lr, #4]
	strh r1, [lr, #6]
	strh r1, [lr, #8]
	strh r1, [lr, #0xa]
	strh r1, [lr, #0xc]
	mov r3, #3
_02240878:
	ldrh r2, [lr]
	ldrh r1, [lr, #2]
	add lr, lr, #4
	subs r3, r3, #1
	strh r2, [ip]
	strh r1, [ip, #2]
	add ip, ip, #4
	bne _02240878
	ldrh r2, [lr]
	add r1, r0, #0x40
	add r1, r1, #0x10000
	strh r2, [ip]
	add r0, r0, #0x1b000
	str r1, [r0, #0x140]
	mov r1, #2
	str r1, [sp]
	ldr r0, _02240908 ; =0x0225339C
	add r1, sp, #0x12
	ldr r0, [r0, #0]
	mov r2, r5
	add r0, r0, #0x1b000
	ldr r0, [r0, #0x140]
	mov r3, r4
	bl ov18_0222348C
	cmp r0, #0
	beq _022408E4
	bl OS_Terminate
_022408E4:
	mov r0, #0x100
	mov r1, #1
	bl ov18_022236E0
	ldr r0, _0224090C ; =ov18_02240F00
	bl ov18_0221F84C
	mov r0, #1
	bl ov18_02241224
	add sp, sp, #0x7c
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02240908: .word Unk_ov18_0225339C
_0224090C: .word ov18_02240F00
	arm_func_end ov18_022407F0

	arm_func_start ov18_02240910
ov18_02240910: ; 0x02240910
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #2
	bl ov18_02241224
	mov r0, r4
	bl ov18_02223A30
	cmp r0, #0
	beq _02240940
	mov r0, #7
	bl ov18_02241224
	ldmia sp!, {r3, r4, r5, pc}
_02240940:
	mov r0, r5
	bl ov18_02240958
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl OS_Terminate
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov18_02240910

	arm_func_start ov18_02240958
ov18_02240958: ; 0x02240958
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mov r6, r0
	ldr r0, [r6, #0]
	mov r5, #0
	cmp r0, #0
	moveq r4, r5
	beq _022409A0
	add r0, sp, #0
	bl FS_InitFile
	ldr r1, [r6, #0]
	add r0, sp, #0
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, pc}
	add r4, sp, #0
_022409A0:
	mov r0, r4
	bl ov18_02220C28
	cmp r0, #0
	beq _02240A0C
	ldr r1, _02240A28 ; =0x0225339C
	ldr r0, [r1, #0]
	add r2, r0, #0x2c
	add r0, r0, #0x1b000
	str r2, [r0, #0x144]
	ldr r0, [r1, #0]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	beq _02240A0C
	mov r0, r4
	mov r2, #0x10000
	bl ov18_02220CA8
	cmp r0, #0
	beq _02240A0C
	ldr r1, _02240A28 ; =0x0225339C
	mov r0, r6
	ldr r1, [r1, #0]
	add r1, r1, #0x1b000
	ldr r1, [r1, #0x144]
	bl ov18_02221198
	cmp r0, #0
	movne r5, #1
_02240A0C:
	add r0, sp, #0
	cmp r4, r0
	bne _02240A1C
	bl FS_CloseFile
_02240A1C:
	mov r0, r5
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02240A28: .word Unk_ov18_0225339C
	arm_func_end ov18_02240958

	arm_func_start ov18_02240A2C
ov18_02240A2C: ; 0x02240A2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #1
	mov r4, r0
	bl ov18_0221F94C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #1
	mvn r0, r0, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02240AC8 ; =0x0225339C
	ldr r3, [r1, #0]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl ov18_02223B68
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02240AC8: .word Unk_ov18_0225339C
	arm_func_end ov18_02240A2C

	arm_func_start ov18_02240ACC
ov18_02240ACC: ; 0x02240ACC
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r4, r0
	bl ov18_0221F94C
	cmp r0, #0
	bne _02240B68
	mov r0, #1
	mvn r0, r0, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02240BA0 ; =0x0225339C
	ldr r3, [r1, #0]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl ov18_02223B68
	ldmia sp!, {r3, r4, r5, pc}
_02240B68:
	bl OS_DisableInterrupts
	ldr r1, _02240BA0 ; =0x0225339C
	mov r2, #1
	ldr r3, [r1, #0]
	mvn r4, r2, lsl r4
	ldrh r2, [r3, #4]
	and r2, r2, r4
	strh r2, [r3, #4]
	ldr r2, [r1, #0]
	ldrh r1, [r2, #2]
	and r1, r1, r4
	strh r1, [r2, #2]
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02240BA0: .word Unk_ov18_0225339C
	arm_func_end ov18_02240ACC

	arm_func_start ov18_02240BA4
ov18_02240BA4: ; 0x02240BA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #2
	mov r4, r0
	bl ov18_0221F94C
	cmp r0, #0
	bne _02240C40
	mov r0, #1
	mvn r0, r0, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02240C78 ; =0x0225339C
	ldr r3, [r1, #0]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl ov18_02223B68
	ldmia sp!, {r3, r4, r5, pc}
_02240C40:
	bl OS_DisableInterrupts
	ldr r1, _02240C78 ; =0x0225339C
	mov ip, #1
	ldr r5, [r1, #0]
	mvn r2, ip, lsl r4
	ldrh r3, [r5, #6]
	and r2, r3, r2
	strh r2, [r5, #6]
	ldr r2, [r1, #0]
	ldrh r1, [r2, #8]
	orr r1, r1, ip, lsl r4
	strh r1, [r2, #8]
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02240C78: .word Unk_ov18_0225339C
	arm_func_end ov18_02240BA4

	arm_func_start ov18_02240C7C
ov18_02240C7C: ; 0x02240C7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #3
	bl ov18_02241224
	mov r5, #1
	ldr r7, _02240D58 ; =0x0225339C
	mov r4, r5
_02240C94:
	ldr r1, [r7, #0]
	ldrh r0, [r1, #2]
	tst r0, r4, lsl r5
	beq _02240D40
	ldrh r0, [r1, #4]
	tst r0, r4, lsl r5
	bne _02240D40
	ldrh r0, [r1, #6]
	tst r0, r4, lsl r5
	bne _02240D38
	mvn r0, r4, lsl r5
	mov r6, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r7, #0]
	ldrh r1, [r2, #2]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r7, #0]
	ldrh r1, [r2, #4]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r7, #0]
	ldrh r1, [r2, #6]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r7, #0]
	ldrh r1, [r2, #8]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r7, #0]
	ldrh r1, [r2, #0xa]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r7, #0]
	ldrh r1, [r2, #0xc]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r5
	bl ov18_02223B68
	b _02240D40
_02240D38:
	mov r0, r5
	bl ov18_02240BA4
_02240D40:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r5, #0x10
	blo _02240C94
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240D58: .word Unk_ov18_0225339C
	arm_func_end ov18_02240C7C

	arm_func_start ov18_02240D5C
ov18_02240D5C: ; 0x02240D5C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02240DC0 ; =0x0225339C
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r6, #1
	mov r5, r6
_02240D80:
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	tst r0, r5, lsl r6
	beq _02240DA4
	mov r0, r6
	bl ov18_0221F8F8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_02240DA4:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, #0x10
	blo _02240D80
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02240DC0: .word Unk_ov18_0225339C
	arm_func_end ov18_02240D5C

	arm_func_start ov18_02240DC4
ov18_02240DC4: ; 0x02240DC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, #1
	ldr r4, _02240EB8 ; =0x0225339C
	mov r8, #0
	mov r5, #3
	mov r6, r7
_02240DDC:
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xa]
	tst r0, r6, lsl r7
	beq _02240E84
	mov r0, r7
	mov r1, r5
	bl ov18_0221F94C
	cmp r0, #0
	orrne r0, r8, r6, lsl r7
	movne r0, r0, lsl #0x10
	movne r8, r0, lsr #0x10
	bne _02240E84
	mvn r0, r6, lsl r7
	mov sb, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r4, #0]
	ldrh r1, [r2, #2]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r4, #0]
	ldrh r1, [r2, #4]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r4, #0]
	ldrh r1, [r2, #6]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r4, #0]
	ldrh r1, [r2, #8]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r4, #0]
	ldrh r1, [r2, #0xa]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r4, #0]
	ldrh r1, [r2, #0xc]
	and r1, r1, sb, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r7
	bl ov18_02223B68
_02240E84:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #0x10
	blo _02240DDC
	cmp r8, #0
	bne _02240EAC
	mov r0, #7
	bl ov18_02241224
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02240EAC:
	mov r0, #4
	bl ov18_02241224
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02240EB8: .word Unk_ov18_0225339C
	arm_func_end ov18_02240DC4

	arm_func_start ov18_02240EBC
ov18_02240EBC: ; 0x02240EBC
	stmfd sp!, {r3, lr}
	mov r0, #6
	bl ov18_02241224
	bl ov18_02223B2C
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02240EBC

	arm_func_start ov18_02240ED0
ov18_02240ED0: ; 0x02240ED0
	stmfd sp!, {r3, lr}
	ldr r0, _02240EFC ; =0x0225339C
	ldr r2, [r0, #0]
	ldrh r0, [r2]
	cmp r0, #4
	ldreqh r1, [r2, #2]
	ldreqh r0, [r2, #0xc]
	cmpeq r1, r0
	ldmneia sp!, {r3, pc}
	bl ov18_02223B2C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02240EFC: .word Unk_ov18_0225339C
	arm_func_end ov18_02240ED0

	arm_func_start ov18_02240F00
ov18_02240F00: ; 0x02240F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r2
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	b _02241218
_02240F18: ; jump table
	b _02241218 ; case 0
	ldmia sp!, {r4, r5, r6, pc} ; case 1
	b _02240F54 ; case 2
	b _02240FDC ; case 3
	ldmia sp!, {r4, r5, r6, pc} ; case 4
	ldmia sp!, {r4, r5, r6, pc} ; case 5
	ldmia sp!, {r4, r5, r6, pc} ; case 6
	b _02241118 ; case 7
	ldmia sp!, {r4, r5, r6, pc} ; case 8
	b _02241148 ; case 9
	b _02241068 ; case 10
	ldmia sp!, {r4, r5, r6, pc} ; case 11
	b _0224117C ; case 12
	b _022411D8 ; case 13
	b _022410D4 ; case 14
_02240F54:
	bl ov18_02241238
	cmp r0, #2
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, _02241220 ; =0x0225339C
	ldr r6, [r0, #0]
	bl OS_DisableInterrupts
	ldrh r2, [r6, #2]
	mov r1, #1
	orr r1, r2, r1, lsl r5
	strh r1, [r6, #2]
	bl OS_RestoreInterrupts
	ldr r1, _02241220 ; =0x0225339C
	sub r3, r5, #1
	mov r0, #0x1e
	mul r0, r3, r0
	ldr r2, [r1, #0]
	add r3, r2, #0x24
	ldrb r2, [r4, #0xa]
	add ip, r3, r0
	strb r2, [r3, r0]
	ldrb r2, [r4, #0xb]
	strb r2, [ip, #1]
	ldrb r2, [r4, #0xc]
	strb r2, [ip, #2]
	ldrb r2, [r4, #0xd]
	strb r2, [ip, #3]
	ldrb r2, [r4, #0xe]
	strb r2, [ip, #4]
	ldrb r2, [r4, #0xf]
	strb r2, [ip, #5]
	ldr r1, [r1, #0]
	add r0, r1, r0
	strh r5, [r0, #0x2a]
	ldmia sp!, {r4, r5, r6, pc}
_02240FDC:
	bl ov18_022412A4
	cmp r0, #6
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #1
	mvn r0, r0, lsl r5
	mov r4, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02241220 ; =0x0225339C
	ldr r3, [r1, #0]
	ldrh r2, [r3, #2]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #4]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #6]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #8]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #0xa]
	and r2, r2, r4, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0xc]
	and r1, r1, r4, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	bl ov18_02240ED0
	ldmia sp!, {r4, r5, r6, pc}
_02241068:
	bl ov18_02241238
	cmp r0, #2
	beq _02241080
	mov r0, r5
	bl ov18_02240ACC
	ldmia sp!, {r4, r5, r6, pc}
_02241080:
	ldr r0, _02241220 ; =0x0225339C
	mov r1, #1
	ldr r3, [r0, #0]
	mov r0, r5
	ldrh r2, [r3, #4]
	orr r1, r2, r1, lsl r5
	strh r1, [r3, #4]
	bl ov18_02240A2C
	mov r0, r5
	bl ov18_0221F874
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _02241220 ; =0x0225339C
	sub r2, r5, #1
	ldr r3, [r1, #0]
	mov r1, #0x1e
	add r3, r3, #0xe
	mla r1, r2, r1, r3
	mov r2, #0x16
	bl MI_CpuCopy8
	ldmia sp!, {r4, r5, r6, pc}
_022410D4:
	ldr r0, _02241220 ; =0x0225339C
	mov r4, #1
	ldr r3, [r0, #0]
	mvn r1, r4, lsl r5
	ldrh r2, [r3, #4]
	and r1, r2, r1
	strh r1, [r3, #4]
	ldr r1, [r0, #0]
	ldrh r0, [r1, #6]
	orr r0, r0, r4, lsl r5
	strh r0, [r1, #6]
	bl ov18_02241238
	cmp r0, #3
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl ov18_02240BA4
	ldmia sp!, {r4, r5, r6, pc}
_02241118:
	ldr r0, _02241220 ; =0x0225339C
	mov r4, #1
	ldr r3, [r0, #0]
	mvn r1, r4, lsl r5
	ldrh r2, [r3, #8]
	and r1, r2, r1
	strh r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0xa]
	orr r0, r0, r4, lsl r5
	strh r0, [r1, #0xa]
	ldmia sp!, {r4, r5, r6, pc}
_02241148:
	ldr r0, _02241220 ; =0x0225339C
	mov r4, #1
	ldr r3, [r0, #0]
	mvn r1, r4, lsl r5
	ldrh r2, [r3, #0xa]
	and r1, r2, r1
	strh r1, [r3, #0xa]
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0xc]
	orr r0, r0, r4, lsl r5
	strh r0, [r1, #0xc]
	bl ov18_02240ED0
	ldmia sp!, {r4, r5, r6, pc}
_0224117C:
	bl ov18_02241238
	cmp r0, #4
	bne _02241194
	mov r0, #5
	bl ov18_02241224
	b _0224119C
_02241194:
	mov r0, #0
	bl ov18_02241224
_0224119C:
	ldr r0, _02241220 ; =0x0225339C
	ldr r0, [r0, #0]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x144]
	ldr r0, _02241220 ; =0x0225339C
	ldr r0, [r0, #0]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x140]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x140]
	ldmia sp!, {r4, r5, r6, pc}
_022411D8:
	ldrh r0, [r4]
	cmp r0, #8
	bgt _02241204
	ldmgeia sp!, {r4, r5, r6, pc}
	cmp r0, #2
	ldmgtia sp!, {r4, r5, r6, pc}
	cmp r0, #1
	ldmltia sp!, {r4, r5, r6, pc}
	cmpne r0, #2
	beq _0224120C
	ldmia sp!, {r4, r5, r6, pc}
_02241204:
	cmp r0, #9
	ldmneia sp!, {r4, r5, r6, pc}
_0224120C:
	mov r0, #7
	bl ov18_02241224
	ldmia sp!, {r4, r5, r6, pc}
_02241218:
	bl OS_Terminate
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02241220: .word Unk_ov18_0225339C
	arm_func_end ov18_02240F00

	arm_func_start ov18_02241224
ov18_02241224: ; 0x02241224
	ldr r1, _02241234 ; =0x0225339C
	ldr r1, [r1, #0]
	strh r0, [r1]
	bx lr
	; .align 2, 0
_02241234: .word Unk_ov18_0225339C
	arm_func_end ov18_02241224

	arm_func_start ov18_02241238
ov18_02241238: ; 0x02241238
	ldr r0, _02241248 ; =0x0225339C
	ldr r0, [r0, #0]
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_02241248: .word Unk_ov18_0225339C
	arm_func_end ov18_02241238

	arm_func_start ov18_0224124C
ov18_0224124C: ; 0x0224124C
	ldr r2, _02241298 ; =0x0225339C
	ldr r1, _0224129C ; =0x0224A6B8
	ldr ip, [r2]
	ldr r2, _022412A0 ; =0x0224A6B8
	add r3, ip, #2
	str r3, [r1, #0]
	add r3, ip, #4
	str r3, [r1, #4]
	add r3, ip, #6
	str r3, [r1, #8]
	add r3, ip, #8
	str r3, [r1, #0xc]
	add r3, ip, #0xa
	str r3, [r1, #0x10]
	add r3, ip, #0xc
	str r3, [r1, #0x14]
	ldr r0, [r2, r0, lsl #2]
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_02241298: .word Unk_ov18_0225339C
_0224129C: .word Unk_ov18_0224A6B8
_022412A0: .word Unk_ov18_0224A6B8
	arm_func_end ov18_0224124C

	arm_func_start ov18_022412A4
ov18_022412A4: ; 0x022412A4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _02241368 ; =0x0225339C
	mov r3, #1
	ldr r2, [r1, #0]
	mov r3, r3, lsl r4
	ldrh r1, [r2, #2]
	mov r4, r3, lsl #0x10
	mov r5, r0
	tst r1, r4, lsr #16
	bne _022412E8
	bl OS_RestoreInterrupts
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_022412E8:
	mov r0, r2
	add r1, sp, #0
	mov r2, #0xe
	bl MI_CpuCopy8
	mov r0, r5
	bl OS_RestoreInterrupts
	ldrh r0, [sp, #4]
	tst r0, r4, lsr #16
	addne sp, sp, #0x10
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldrh r0, [sp, #6]
	tst r0, r4, lsr #16
	addne sp, sp, #0x10
	movne r0, #3
	ldmneia sp!, {r3, r4, r5, pc}
	ldrh r0, [sp, #8]
	tst r0, r4, lsr #16
	addne sp, sp, #0x10
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
	ldrh r0, [sp, #0xa]
	tst r0, r4, lsr #16
	addne sp, sp, #0x10
	movne r0, #5
	ldmneia sp!, {r3, r4, r5, pc}
	ldrh r0, [sp, #0xc]
	tst r0, r4, lsr #16
	movne r0, #6
	moveq r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02241368: .word Unk_ov18_0225339C
	arm_func_end ov18_022412A4

	arm_func_start ov18_0224136C
ov18_0224136C: ; 0x0224136C
	ldr r1, _0224139C ; =0x0225339C
	mov r2, #1
	ldr r3, [r1, #0]
	ldrh r1, [r3, #2]
	tst r1, r2, lsl r0
	moveq r0, #0
	bxeq lr
	sub r1, r0, #1
	add r2, r3, #0xe
	mov r0, #0x1e
	mla r0, r1, r0, r2
	bx lr
	; .align 2, 0
_0224139C: .word Unk_ov18_0225339C
	arm_func_end ov18_0224136C

	arm_func_start ov18_022413A0
ov18_022413A0: ; 0x022413A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _02241444 ; =0x0225339C
	mov lr, #1
	ldr r5, [r1, #0]
	mov ip, lr
	ldrh r4, [r5, #2]
	add r1, r5, #0x24
	mov r6, #0x1e
_022413C0:
	tst r4, ip, lsl lr
	beq _02241428
	sub r2, lr, #1
	mul r3, r2, r6
	ldrb r8, [r0]
	ldrb r7, [r1, r3]
	add r2, r1, r3
	cmp r8, r7
	ldreqb r8, [r0, #1]
	ldreqb r7, [r2, #1]
	cmpeq r8, r7
	ldreqb r8, [r0, #2]
	ldreqb r7, [r2, #2]
	cmpeq r8, r7
	ldreqb r8, [r0, #3]
	ldreqb r7, [r2, #3]
	cmpeq r8, r7
	ldreqb r8, [r0, #4]
	ldreqb r7, [r2, #4]
	cmpeq r8, r7
	ldreqb r7, [r0, #5]
	ldreqb r2, [r2, #5]
	cmpeq r7, r2
	addeq r0, r5, r3
	ldreqh r0, [r0, #0x2a]
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02241428:
	add r2, lr, #1
	mov r2, r2, lsl #0x10
	mov lr, r2, lsr #0x10
	cmp lr, #2
	blo _022413C0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02241444: .word Unk_ov18_0225339C
	arm_func_end ov18_022413A0

	.data


	.global Unk_ov18_0224A648
Unk_ov18_0224A648: ; 0x0224A648
	.incbin "incbin/overlay18_data.bin", 0xEE8, 0xEFC - 0xEE8

	.global Unk_ov18_0224A65C
Unk_ov18_0224A65C: ; 0x0224A65C
	.incbin "incbin/overlay18_data.bin", 0xEFC, 0xF10 - 0xEFC

	.global Unk_ov18_0224A670
Unk_ov18_0224A670: ; 0x0224A670
	.incbin "incbin/overlay18_data.bin", 0xF10, 0xF28 - 0xF10

	.global Unk_ov18_0224A688
Unk_ov18_0224A688: ; 0x0224A688
	.incbin "incbin/overlay18_data.bin", 0xF28, 0xF40 - 0xF28

	.global Unk_ov18_0224A6A0
Unk_ov18_0224A6A0: ; 0x0224A6A0
	.incbin "incbin/overlay18_data.bin", 0xF40, 0xF58 - 0xF40

	.global Unk_ov18_0224A6B8
Unk_ov18_0224A6B8: ; 0x0224A6B8
	.incbin "incbin/overlay18_data.bin", 0xF58, 0xF70 - 0xF58

	.global Unk_ov18_0224A6D0
Unk_ov18_0224A6D0: ; 0x0224A6D0
	.incbin "incbin/overlay18_data.bin", 0xF70, 0xF90 - 0xF70

	.global Unk_ov18_0224A6F0
Unk_ov18_0224A6F0: ; 0x0224A6F0
	.incbin "incbin/overlay18_data.bin", 0xF90, 0xFCC - 0xF90

	.global Unk_ov18_0224A72C
Unk_ov18_0224A72C: ; 0x0224A72C
	.incbin "incbin/overlay18_data.bin", 0xFCC, 0xFE4 - 0xFCC

	.global Unk_ov18_0224A744
Unk_ov18_0224A744: ; 0x0224A744
	.incbin "incbin/overlay18_data.bin", 0xFE4, 0x1000 - 0xFE4

	.global Unk_ov18_0224A760
Unk_ov18_0224A760: ; 0x0224A760
	.incbin "incbin/overlay18_data.bin", 0x1000, 0x101C - 0x1000

	.global Unk_ov18_0224A77C
Unk_ov18_0224A77C: ; 0x0224A77C
	.incbin "incbin/overlay18_data.bin", 0x101C, 0x1038 - 0x101C

	.global Unk_ov18_0224A798
Unk_ov18_0224A798: ; 0x0224A798
	.incbin "incbin/overlay18_data.bin", 0x1038, 0x1054 - 0x1038

	.global Unk_ov18_0224A7B4
Unk_ov18_0224A7B4: ; 0x0224A7B4
	.incbin "incbin/overlay18_data.bin", 0x1054, 0x1070 - 0x1054

	.global Unk_ov18_0224A7D0
Unk_ov18_0224A7D0: ; 0x0224A7D0
	.incbin "incbin/overlay18_data.bin", 0x1070, 0x108C - 0x1070

	.global Unk_ov18_0224A7EC
Unk_ov18_0224A7EC: ; 0x0224A7EC
	.incbin "incbin/overlay18_data.bin", 0x108C, 0x10A8 - 0x108C

	.global Unk_ov18_0224A808
Unk_ov18_0224A808: ; 0x0224A808
	.incbin "incbin/overlay18_data.bin", 0x10A8, 0x10C4 - 0x10A8

	.global Unk_ov18_0224A824
Unk_ov18_0224A824: ; 0x0224A824
	.incbin "incbin/overlay18_data.bin", 0x10C4, 0x10E0 - 0x10C4

	.global Unk_ov18_0224A840
Unk_ov18_0224A840: ; 0x0224A840
	.incbin "incbin/overlay18_data.bin", 0x10E0, 0x10FC - 0x10E0

	.global Unk_ov18_0224A85C
Unk_ov18_0224A85C: ; 0x0224A85C
	.incbin "incbin/overlay18_data.bin", 0x10FC, 0x1118 - 0x10FC

	.global Unk_ov18_0224A878
Unk_ov18_0224A878: ; 0x0224A878
	.incbin "incbin/overlay18_data.bin", 0x1118, 0x1134 - 0x1118

	.global Unk_ov18_0224A894
Unk_ov18_0224A894: ; 0x0224A894
	.incbin "incbin/overlay18_data.bin", 0x1134, 0x1154 - 0x1134

	.global Unk_ov18_0224A8B4
Unk_ov18_0224A8B4: ; 0x0224A8B4
	.incbin "incbin/overlay18_data.bin", 0x1154, 0x1174 - 0x1154

	.global Unk_ov18_0224A8D4
Unk_ov18_0224A8D4: ; 0x0224A8D4
	.incbin "incbin/overlay18_data.bin", 0x1174, 0x1194 - 0x1174

	.global Unk_ov18_0224A8F4
Unk_ov18_0224A8F4: ; 0x0224A8F4
	.incbin "incbin/overlay18_data.bin", 0x1194, 0x11B4 - 0x1194

	.global Unk_ov18_0224A914
Unk_ov18_0224A914: ; 0x0224A914
	.incbin "incbin/overlay18_data.bin", 0x11B4, 0x1F



	.bss


	.global Unk_ov18_0225339C
Unk_ov18_0225339C: ; 0x0225339C
	.space 0x4

