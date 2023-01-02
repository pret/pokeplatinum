	.include "macros/function.inc"
	.include "include/unk_020C9A78.inc"

	.extern Unk_021CEC90
	

	.text


	arm_func_start TPi_TpCallback
TPi_TpCallback: ; 0x020C9A78
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r0, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	and r0, r3, #0x7f00
	mov r0, r0, lsl #8
	cmp r2, #0
	mov r0, r0, lsr #0x10
	beq _020C9AD4
	ldr r1, _020C9CF0 ; =0x021CEC90
	mov r2, #1
	ldrh r3, [r1, #0x38]
	orr r2, r3, r2, lsl r0
	strh r2, [r1, #0x38]
	ldr r3, [r1, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #4
	mov r2, #0
	blx r3
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C9AD4:
	cmp r0, #0x10
	bne _020C9B8C
	ldr r1, _020C9CF0 ; =0x021CEC90
	ldrh r2, [r1, #0x10]
	add r2, r2, #1
	strh r2, [r1, #0x10]
	ldrh r3, [r1, #0x10]
	ldrh r2, [r1, #0x18]
	cmp r3, r2
	movhs r2, #0
	strhsh r2, [r1, #0x10]
	ldr r2, _020C9CF4 ; =0x027FFFAA
	ldr r1, _020C9CF0 ; =0x021CEC90
	ldrh r3, [r2]
	ldrh r2, [r2, #2]
	ldrh lr, [r1, #0x10]
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	ldr r5, [sp, #4]
	ldr r7, [r1, #0x14]
	mov r2, r5, lsl #7
	mov r3, r2, lsr #0x1f
	mov r4, r5, lsl #8
	mov r2, r5, lsl #5
	mov ip, r5, lsl #0x14
	mov r2, r2, lsr #0x1e
	mov r6, lr, lsl #3
	mov r5, ip, lsr #0x14
	strh r5, [r7, r6]
	add r5, r7, lr, lsl #3
	mov r4, r4, lsr #0x14
	strh r4, [r5, #2]
	and r3, r3, #0xff
	strh r3, [r5, #4]
	and r2, r2, #0xff
	strh r2, [r5, #6]
	ldr r3, [r1, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r2, [r1, #0x10]
	mov r1, #0
	and r2, r2, #0xff
	blx r3
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C9B8C:
	tst r1, #0x1000000
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	and r1, r3, #0xff
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020C9CE4
_020C9BA8: ; jump table
	b _020C9BBC ; case 0
	b _020C9CE4 ; case 1
	b _020C9C90 ; case 2
	b _020C9C98 ; case 3
	b _020C9C88 ; case 4
_020C9BBC:
	cmp r0, #0
	beq _020C9BE0
	cmp r0, #1
	beq _020C9C40
	cmp r0, #2
	ldreq r1, _020C9CF0 ; =0x021CEC90
	moveq r2, #0
	streqh r2, [r1, #0x36]
	b _020C9C4C
_020C9BE0:
	ldr r2, _020C9CF4 ; =0x027FFFAA
	ldr r1, _020C9CF0 ; =0x021CEC90
	ldrh r4, [r2]
	ldrh r3, [r2, #2]
	mov r2, #0
	strh r4, [sp]
	strh r3, [sp, #2]
	ldr r4, [sp]
	mov r3, r4, lsl #0x14
	mov r5, r3, lsr #0x14
	mov lr, r4, lsl #8
	mov r3, r4, lsl #7
	mov ip, r3, lsr #0x1f
	mov r3, r4, lsl #5
	mov r3, r3, lsr #0x1e
	strh r5, [r1, #8]
	mov lr, lr, lsr #0x14
	strh lr, [r1, #0xa]
	and ip, ip, #0xff
	strh ip, [r1, #0xc]
	and r3, r3, #0xff
	strh r3, [r1, #0xe]
	strh r2, [r1, #0x36]
	b _020C9C4C
_020C9C40:
	ldr r1, _020C9CF0 ; =0x021CEC90
	mov r2, #2
	strh r2, [r1, #0x36]
_020C9C4C:
	ldr r1, _020C9CF0 ; =0x021CEC90
	mov r2, #1
	ldrh r3, [r1, #0x3a]
	mvn r2, r2, lsl r0
	and r2, r3, r2
	strh r2, [r1, #0x3a]
	ldr r3, [r1, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, r1
	blx r3
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C9C88:
	mov r4, #3
	b _020C9C9C
_020C9C90:
	mov r4, #1
	b _020C9C9C
_020C9C98:
	mov r4, #2
_020C9C9C:
	ldr r1, _020C9CF0 ; =0x021CEC90
	mov ip, #1
	ldrh r3, [r1, #0x38]
	mvn r2, ip, lsl r0
	orr r3, r3, ip, lsl r0
	strh r3, [r1, #0x38]
	ldrh r3, [r1, #0x3a]
	and r2, r3, r2
	strh r2, [r1, #0x3a]
	ldr r3, [r1, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	and r1, r4, #0xff
	mov r2, #0
	blx r3
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C9CE4:
	bl OS_Terminate
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C9CF0: .word Unk_021CEC90
_020C9CF4: .word 0x027FFFAA
	arm_func_end TPi_TpCallback

	arm_func_start TP_Init
TP_Init: ; 0x020C9CF8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C9D68 ; =0x021CEC90
	ldrh r1, [r0]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	bl PXI_Init
	ldr r0, _020C9D68 ; =0x021CEC90
	mov r1, #0
	strh r1, [r0, #0x10]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	strh r1, [r0, #0x36]
	strh r1, [r0, #0x34]
	strh r1, [r0, #0x3a]
	strh r1, [r0, #0x38]
	mov r5, #6
	mov r4, #1
_020C9D44:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020C9D44
	ldr r1, _020C9D6C ; =TPi_TpCallback
	mov r0, #6
	bl PXI_SetFifoRecvCallback
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C9D68: .word Unk_021CEC90
_020C9D6C: .word TPi_TpCallback
	arm_func_end TP_Init

	arm_func_start TP_GetUserInfo
TP_GetUserInfo: ; 0x020C9D70
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr ip, _020C9E00 ; =0x027FFC80
	mov r4, r0
	ldrh r1, [ip, #0x58]
	ldrh r2, [ip, #0x5a]
	ldrh r0, [ip, #0x5e]
	cmp r1, #0
	ldrh lr, [ip, #0x60]
	cmpeq r0, #0
	cmpeq r2, #0
	ldrb r3, [ip, #0x5c]
	ldrb r5, [ip, #0x5d]
	ldrb r6, [ip, #0x62]
	ldrb ip, [ip, #0x63]
	cmpeq lr, #0
	beq _020C9DD4
	str r5, [sp]
	stmib sp, {r0, lr}
	str r6, [sp, #0xc]
	mov r0, r4
	str ip, [sp, #0x10]
	bl TP_CalcCalibrateParam
	cmp r0, #0
	beq _020C9DF4
_020C9DD4:
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_020C9DF4:
	mov r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020C9E00: .word 0x027FFC80
	arm_func_end TP_GetUserInfo

	arm_func_start TP_SetCalibrateParam
TP_SetCalibrateParam: ; 0x020C9E04
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _020C9E20
	ldr r0, _020C9F20 ; =0x021CEC90
	mov r1, #0
	strh r1, [r0, #0x34]
	ldmia sp!, {r4, pc}
_020C9E20:
	bl OS_DisableInterrupts
	ldrsh r2, [r4, #4]
	cmp r2, #0
	beq _020C9E84
	ldr r3, _020C9F24 ; =0x04000280
	mov r1, #0
	strh r1, [r3]
	mov r1, #0x10000000
	str r1, [r3, #0x10]
	str r2, [r3, #0x18]
	mov r1, #0
	str r1, [r3, #0x1c]
	ldrsh r2, [r4]
	ldr r1, _020C9F20 ; =0x021CEC90
	str r2, [r1, #0x1c]
	ldrsh r2, [r4, #4]
	str r2, [r1, #0x20]
_020C9E64:
	ldrh r1, [r3]
	tst r1, #0x8000
	bne _020C9E64
	ldr r2, _020C9F28 ; =0x040002A0
	ldr r1, _020C9F20 ; =0x021CEC90
	ldr r2, [r2, #0]
	str r2, [r1, #0x24]
	b _020C9E98
_020C9E84:
	ldr r1, _020C9F20 ; =0x021CEC90
	mov r2, #0
	str r2, [r1, #0x1c]
	str r2, [r1, #0x20]
	str r2, [r1, #0x24]
_020C9E98:
	ldrsh r2, [r4, #6]
	cmp r2, #0
	beq _020C9EF8
	ldr r3, _020C9F24 ; =0x04000280
	mov r1, #0
	strh r1, [r3]
	mov r1, #0x10000000
	str r1, [r3, #0x10]
	str r2, [r3, #0x18]
	mov r1, #0
	str r1, [r3, #0x1c]
	ldrsh r2, [r4, #2]
	ldr r1, _020C9F20 ; =0x021CEC90
	str r2, [r1, #0x28]
	ldrsh r2, [r4, #6]
	str r2, [r1, #0x2c]
_020C9ED8:
	ldrh r1, [r3]
	tst r1, #0x8000
	bne _020C9ED8
	ldr r2, _020C9F28 ; =0x040002A0
	ldr r1, _020C9F20 ; =0x021CEC90
	ldr r2, [r2, #0]
	str r2, [r1, #0x30]
	b _020C9F0C
_020C9EF8:
	ldr r1, _020C9F20 ; =0x021CEC90
	mov r2, #0
	str r2, [r1, #0x28]
	str r2, [r1, #0x2c]
	str r2, [r1, #0x30]
_020C9F0C:
	bl OS_RestoreInterrupts
	ldr r0, _020C9F20 ; =0x021CEC90
	mov r1, #1
	strh r1, [r0, #0x34]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C9F20: .word Unk_021CEC90
_020C9F24: .word 0x04000280
_020C9F28: .word 0x040002A0
	arm_func_end TP_SetCalibrateParam

	arm_func_start TP_RequestSamplingAsync
TP_RequestSamplingAsync: ; 0x020C9F2C
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, #6
	mov r1, #0x3000000
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	bne _020C9F94
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, _020C9FBC ; =0x021CEC90
	ldrh r1, [r0, #0x38]
	orr r1, r1, #1
	strh r1, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0
	mov r2, r0
	mov r1, #4
	blx r3
	ldmia sp!, {r4, pc}
_020C9F94:
	ldr r1, _020C9FBC ; =0x021CEC90
	mov r0, r4
	ldrh r2, [r1, #0x3a]
	orr r2, r2, #1
	strh r2, [r1, #0x3a]
	ldrh r2, [r1, #0x38]
	bic r2, r2, #1
	strh r2, [r1, #0x38]
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C9FBC: .word Unk_021CEC90
	arm_func_end TP_RequestSamplingAsync

	arm_func_start TP_WaitRawResult
TP_WaitRawResult: ; 0x020C9FC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	bl TP_WaitBusy
	ldr r1, _020CA00C ; =0x021CEC90
	ldrh r0, [r1, #0x38]
	tst r0, #1
	movne r0, #1
	ldmneia sp!, {r4, pc}
	ldrh r3, [r1, #8]
	ldrh r2, [r1, #0xa]
	mov r0, #0
	strh r3, [r4]
	strh r2, [r4, #2]
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	strh r2, [r4, #4]
	strh r1, [r4, #6]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CA00C: .word Unk_021CEC90
	arm_func_end TP_WaitRawResult

	arm_func_start TP_RequestAutoSamplingStartAsync
TP_RequestAutoSamplingStartAsync: ; 0x020CA010
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, _020CA10C ; =0x021CEC90
	mov lr, #0
	str r2, [ip, #0x14]
	mov r5, r1
	strh lr, [ip, #0x10]
	strh r5, [ip, #0x12]
	mov r4, r0
	strh r3, [ip, #0x18]
	cmp r3, #0
	bls _020CA058
	mov r1, lr
_020CA040:
	ldr r0, [ip, #0x14]
	add r0, r0, lr, lsl #3
	add lr, lr, #1
	strh r1, [r0, #4]
	cmp lr, r3
	blo _020CA040
_020CA058:
	bl OS_DisableInterrupts
	and r1, r5, #0xff
	orr r1, r1, #0x100
	mov r5, r0
	orr r1, r1, #0x2000000
	mov r0, #6
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r0, #0
	blt _020CA0A4
	orr r1, r4, #0x10000
	orr r1, r1, #0x1000000
	mov r0, #6
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r0, #0
	movge r0, #1
_020CA0A4:
	tst r0, #0xff
	bne _020CA0E4
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, _020CA10C ; =0x021CEC90
	ldrh r1, [r0, #0x38]
	orr r1, r1, #2
	strh r1, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #1
	mov r1, #4
	mov r2, #0
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
_020CA0E4:
	ldr r1, _020CA10C ; =0x021CEC90
	mov r0, r5
	ldrh r2, [r1, #0x3a]
	orr r2, r2, #2
	strh r2, [r1, #0x3a]
	ldrh r2, [r1, #0x38]
	bic r2, r2, #2
	strh r2, [r1, #0x38]
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CA10C: .word Unk_021CEC90
	arm_func_end TP_RequestAutoSamplingStartAsync

	arm_func_start TP_RequestAutoSamplingStopAsync
TP_RequestAutoSamplingStopAsync: ; 0x020CA110
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	ldr r1, _020CA1A0 ; =0x03000200
	mov r0, #6
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	bne _020CA178
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, _020CA1A4 ; =0x021CEC90
	ldrh r1, [r0, #0x38]
	orr r1, r1, #4
	strh r1, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #2
	mov r1, #4
	mov r2, #0
	blx r3
	ldmia sp!, {r4, pc}
_020CA178:
	ldr r1, _020CA1A4 ; =0x021CEC90
	mov r0, r4
	ldrh r2, [r1, #0x3a]
	orr r2, r2, #4
	strh r2, [r1, #0x3a]
	ldrh r2, [r1, #0x38]
	bic r2, r2, #4
	strh r2, [r1, #0x38]
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CA1A0: .word 0x03000200
_020CA1A4: .word Unk_021CEC90
	arm_func_end TP_RequestAutoSamplingStopAsync

	arm_func_start TP_GetLatestRawPointInAuto
TP_GetLatestRawPointInAuto: ; 0x020CA1A8
	stmfd sp!, {r4, lr}
	ldr ip, _020CA2E8 ; =0x021CEC90
	mov r1, #3
	strh r1, [r0, #6]
	ldrh r1, [ip, #0x12]
	ldrh r2, [ip, #0x10]
	cmp r1, #1
	ldrneh r1, [ip, #0x18]
	cmpne r1, #1
	bne _020CA204
	ldr r1, _020CA2E8 ; =0x021CEC90
	mov ip, r2, lsl #3
	ldr r1, [r1, #0x14]
	add r3, r1, r2, lsl #3
	ldrh r2, [r1, ip]
	ldrh r1, [r3, #2]
	strh r2, [r0]
	strh r1, [r0, #2]
	ldrh r2, [r3, #4]
	ldrh r1, [r3, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldmia sp!, {r4, pc}
_020CA204:
	mov r1, #0
	b _020CA2C4
_020CA20C:
	subs lr, r2, r1
	ldr r3, [ip, #0x14]
	addmi lr, lr, r4
	add r3, r3, lr, lsl #3
	ldrh lr, [r3, #4]
	cmp lr, #0
	bne _020CA24C
	ldrh r2, [r3]
	ldrh r1, [r3, #2]
	strh r2, [r0]
	strh r1, [r0, #2]
	ldrh r2, [r3, #4]
	ldrh r1, [r3, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldmia sp!, {r4, pc}
_020CA24C:
	ldrh lr, [r0, #6]
	tst lr, #1
	beq _020CA27C
	ldrh lr, [r3, #6]
	tst lr, #1
	bne _020CA27C
	ldrh lr, [r3]
	cmp r1, #0
	strh lr, [r0]
	ldrneh lr, [r0, #6]
	bicne lr, lr, #1
	strneh lr, [r0, #6]
_020CA27C:
	ldrh lr, [r0, #6]
	tst lr, #2
	beq _020CA2AC
	ldrh lr, [r3, #6]
	tst lr, #2
	bne _020CA2AC
	ldrh r3, [r3, #2]
	cmp r1, #0
	strh r3, [r0, #2]
	ldrneh r3, [r0, #6]
	bicne r3, r3, #2
	strneh r3, [r0, #6]
_020CA2AC:
	ldrh r3, [r0, #6]
	cmp r3, #0
	moveq r1, #1
	streqh r1, [r0, #4]
	ldmeqia sp!, {r4, pc}
	add r1, r1, #1
_020CA2C4:
	ldrh r3, [ip, #0x12]
	cmp r1, r3
	ldrlth r4, [ip, #0x18]
	sublt r3, r4, #1
	cmplt r1, r3
	blt _020CA20C
	mov r1, #1
	strh r1, [r0, #4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CA2E8: .word Unk_021CEC90
	arm_func_end TP_GetLatestRawPointInAuto

	arm_func_start TP_GetLatestIndexInAuto
TP_GetLatestIndexInAuto: ; 0x020CA2EC
	ldr r0, _020CA2F8 ; =0x021CEC90
	ldrh r0, [r0, #0x10]
	bx lr
	; .align 2, 0
_020CA2F8: .word Unk_021CEC90
	arm_func_end TP_GetLatestIndexInAuto

	arm_func_start TP_CalcCalibrateParam
TP_CalcCalibrateParam: ; 0x020CA2FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov r8, r2
	cmp sb, #0x1000
	cmplo r8, #0x1000
	ldrloh r4, [sp, #0x2c]
	mov r7, r3
	mov sl, r0
	cmplo r4, #0x1000
	ldrloh r3, [sp, #0x30]
	cmplo r3, #0x1000
	movhs r0, #1
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, #0x100
	ldrloh r2, [sp, #0x34]
	cmplo r2, #0x100
	ldrloh r1, [sp, #0x28]
	cmplo r1, #0xc0
	ldrloh r0, [sp, #0x38]
	cmplo r0, #0xc0
	movhs r0, #1
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, r2
	cmpne r1, r0
	cmpne sb, r4
	cmpne r8, r3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl OS_DisableInterrupts
	ldrh lr, [sp, #0x2c]
	ldrh ip, [sp, #0x34]
	ldr r3, _020CA4E0 ; =0x04000280
	sub r1, sb, lr
	mov r2, #0
	ldrh r4, [sp, #0x38]
	ldrh r5, [sp, #0x28]
	ldrh r6, [sp, #0x30]
	strh r2, [r3]
	mov r1, r1, lsl #8
	str r1, [r3, #0x10]
	sub r1, r7, ip
	str r1, [r3, #0x18]
	mov r1, r2
	sub r2, r5, r4
	str r1, [r3, #0x1c]
	sub r1, r8, r6
	str r2, [sp]
_020CA3B8:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _020CA3B8
	mov fp, r1, lsl #8
	ldr r1, _020CA4E4 ; =0x040002A0
	ldr r2, [r1, #0]
	mov r1, #0
	strh r1, [r3]
	ldr r1, _020CA4E4 ; =0x040002A0
	cmp r2, #0x8000
	str fp, [r1, #-0x10]
	sub r3, r1, #8
	ldr r1, [sp]
	mov fp, #0
	stmia r3, {r1, fp}
	bge _020CA408
	mov r1, fp
	sub r1, r1, #0x8000
	cmp r2, r1
	bge _020CA414
_020CA408:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CA414:
	strh r2, [sl, #4]
	ldrsh r2, [sl, #4]
	add r1, r7, ip
	add r3, sb, lr
	mul r1, r2, r1
	rsb r1, r1, r3, lsl #8
	mov r1, r1, lsl #9
	mov r2, r1, asr #0x10
	cmp r2, #0x8000
	bge _020CA44C
	mov r1, fp
	sub r1, r1, #0x8000
	cmp r2, r1
	bge _020CA458
_020CA44C:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CA458:
	ldr r1, _020CA4E4 ; =0x040002A0
	strh r2, [sl]
	sub r2, r1, #0x20
_020CA464:
	ldrh r1, [r2]
	tst r1, #0x8000
	bne _020CA464
	ldr r1, _020CA4E4 ; =0x040002A0
	ldr r7, [r1, #0]
	bl OS_RestoreInterrupts
	cmp r7, #0x8000
	bge _020CA494
	mov r1, #0x8000
	rsb r1, r1, #0
	cmp r7, r1
	bge _020CA49C
_020CA494:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CA49C:
	strh r7, [sl, #6]
	ldrsh r2, [sl, #6]
	add r0, r5, r4
	add r3, r8, r6
	mul r0, r2, r0
	rsb r0, r0, r3, lsl #8
	mov r0, r0, lsl #9
	mov r0, r0, asr #0x10
	cmp r0, #0x8000
	bge _020CA4CC
	cmp r0, r1
	bge _020CA4D4
_020CA4CC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CA4D4:
	strh r0, [sl, #2]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CA4E0: .word 0x04000280
_020CA4E4: .word 0x040002A0
	arm_func_end TP_CalcCalibrateParam

	arm_func_start TP_GetCalibratedPoint
TP_GetCalibratedPoint: ; 0x020CA4E8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020CA604 ; =0x021CEC90
	ldrh r2, [r2, #0x34]
	cmp r2, #0
	bne _020CA520
	ldrh r3, [r1]
	ldrh r2, [r1, #2]
	strh r3, [r0]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldmia sp!, {r4, r5, r6, pc}
_020CA520:
	ldrh r3, [r1, #4]
	ldr r2, _020CA608 ; =0x021CECAC
	strh r3, [r0, #4]
	ldrh r3, [r1, #6]
	strh r3, [r0, #6]
	ldrh r3, [r1, #4]
	cmp r3, #0
	bne _020CA550
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldmia sp!, {r4, r5, r6, pc}
_020CA550:
	ldrh r4, [r1]
	ldr r3, [r2, #0]
	ldr lr, [r2, #8]
	mov r4, r4, lsl #2
	subs ip, r4, r3
	mov r3, r3, asr #0x1f
	rsc r3, r3, r4, asr #31
	umull r6, r5, lr, ip
	mla r5, lr, r3, r5
	mov r3, lr, asr #0x1f
	mla r5, r3, ip, r5
	mov r3, r6, lsr #0x16
	orr r3, r3, r5, lsl #10
	strh r3, [r0]
	ldrsh r3, [r0]
	cmp r3, #0
	movlt r3, #0
	strlth r3, [r0]
	blt _020CA5A8
	cmp r3, #0xff
	movgt r3, #0xff
	strgth r3, [r0]
_020CA5A8:
	ldrh r3, [r1, #2]
	ldr r1, [r2, #0xc]
	ldr ip, [r2, #0x14]
	mov r2, r3, lsl #2
	subs r3, r2, r1
	mov r1, r1, asr #0x1f
	rsc r1, r1, r2, asr #31
	umull r4, lr, ip, r3
	mla lr, ip, r1, lr
	mov r1, ip, asr #0x1f
	mla lr, r1, r3, lr
	mov r1, r4, lsr #0x16
	orr r1, r1, lr, lsl #10
	strh r1, [r0, #2]
	ldrsh r1, [r0, #2]
	cmp r1, #0
	movlt r1, #0
	strlth r1, [r0, #2]
	ldmltia sp!, {r4, r5, r6, pc}
	cmp r1, #0xbf
	movgt r1, #0xbf
	strgth r1, [r0, #2]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CA604: .word Unk_021CEC90
_020CA608: .word 0x021CECAC
	arm_func_end TP_GetCalibratedPoint

	arm_func_start TP_WaitBusy
TP_WaitBusy: ; 0x020CA60C
	ldr r1, _020CA620 ; =0x021CEC90
_020CA610:
	ldrh r2, [r1, #0x3a]
	tst r2, r0
	bne _020CA610
	bx lr
	; .align 2, 0
_020CA620: .word Unk_021CEC90
	arm_func_end TP_WaitBusy

	arm_func_start TP_CheckError
TP_CheckError: ; 0x020CA624
	ldr r1, _020CA634 ; =0x021CEC90
	ldrh r1, [r1, #0x38]
	and r0, r1, r0
	bx lr
	; .align 2, 0
_020CA634: .word Unk_021CEC90
	arm_func_end TP_CheckError

	.bss


	.global Unk_021CEC90
Unk_021CEC90: ; 0x021CEC90
	.space 0x4

	.global Unk_021CEC94
Unk_021CEC94: ; 0x021CEC94
	.space 0x38

