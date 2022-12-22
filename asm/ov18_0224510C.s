	.include "macros/function.inc"
	.include "include/ov18_0224510C.inc"

	

	.text


	arm_func_start ov18_0224510C
ov18_0224510C: ; 0x0224510C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r0, #0x3a
	mov r1, #4
	bl ov18_02245068
	ldr r1, _02245184 ; =0x022533C8
	str r0, [r1, #4]
	add r0, sp, #0
	bl TP_GetUserInfo
	cmp r0, #0
	bne _0224513C
	bl OS_Terminate
_0224513C:
	add r0, sp, #0
	bl TP_SetCalibrateParam
	ldr r1, _02245184 ; =0x022533C8
	mov r0, #0
	ldr r2, [r1, #4]
	mov r1, #4
	mov r3, #5
	bl TP_RequestAutoSamplingStartAsync
	mov r0, #2
	bl TP_WaitBusy
	mov r0, #2
	bl TP_CheckError
	cmp r0, #0
	beq _02245178
	bl OS_Terminate
_02245178:
	bl ov18_022451C0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02245184: .word 0x022533C8
	arm_func_end ov18_0224510C

	arm_func_start ov18_02245188
ov18_02245188: ; 0x02245188
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #4
	mov r4, r5
_02245194:
	bl TP_RequestAutoSamplingStopAsync
	mov r0, r5
	bl TP_WaitBusy
	mov r0, r4
	bl TP_CheckError
	cmp r0, #0
	bne _02245194
	ldr r0, _022451BC ; =0x022533CC
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022451BC: .word 0x022533CC
	arm_func_end ov18_02245188

	arm_func_start ov18_022451C0
ov18_022451C0: ; 0x022451C0
	stmfd sp!, {r3, lr}
	bl ov18_022451D0
	bl ov18_022452D4
	ldmia sp!, {r3, pc}
	arm_func_end ov18_022451C0

	arm_func_start ov18_022451D0
ov18_022451D0: ; 0x022451D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _022452C0 ; =0x04000130
	ldr r0, _022452C4 ; =0x027FFFA8
	ldrh r2, [r1]
	ldrh r1, [r0]
	ldr r4, _022452C8 ; =0x022533C8
	ldr r0, _022452CC ; =0x00002FFF
	orr r1, r2, r1
	eor r1, r1, r0
	and r0, r1, r0
	ldr r5, [r4, #4]
	mov r0, r0, lsl #0x10
	ldrh r1, [r5, #0x30]
	mov ip, r0, lsr #0x10
	ldr r3, _022452D0 ; =0x022533D0
	eor r1, r1, r0, lsr #16
	and r1, r1, r0, lsr #16
	strh r1, [r5, #0x32]
	ldrh r5, [r5, #0x30]
	ldr r1, [r4, #4]
	mov r2, #0
	eor r0, r5, r0, lsr #16
	and r0, r5, r0
	strh r0, [r1, #0x36]
	ldr r0, [r4, #4]
	mov r5, #0x28
	strh ip, [r0, #0x30]
	ldr r1, [r4, #4]
	ldrh r0, [r1, #0x32]
	strh r0, [r1, #0x34]
	mov r0, r2
	mov r1, #1
_02245250:
	mov r6, r1, lsl r2
	mov lr, r6, lsl #0x10
	tst ip, lr, lsr #16
	streqb r0, [r3]
	beq _022452AC
	ldrb r6, [r3]
	add r7, r6, #1
	and r6, r7, #0xff
	strb r7, [r3]
	cmp r6, #0x28
	bne _02245290
	ldr r7, [r4, #4]
	ldrh r6, [r7, #0x34]
	orr r6, r6, lr, lsr #16
	strh r6, [r7, #0x34]
	b _022452AC
_02245290:
	cmp r6, #0x2f
	bne _022452AC
	ldr r7, [r4, #4]
	ldrh r6, [r7, #0x34]
	orr r6, r6, lr, lsr #16
	strh r6, [r7, #0x34]
	strb r5, [r3]
_022452AC:
	add r2, r2, #1
	cmp r2, #0xe
	add r3, r3, #1
	blt _02245250
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022452C0: .word 0x04000130
_022452C4: .word 0x027FFFA8
_022452C8: .word 0x022533C8
_022452CC: .word 0x00002FFF
_022452D0: .word 0x022533D0
	arm_func_end ov18_022451D0

	arm_func_start ov18_022452D4
ov18_022452D4: ; 0x022452D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _0224546C ; =0x022533C8
	mov r5, #0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x38]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r6, #1
	moveq r6, #0
	bl TP_GetLatestIndexInAuto
	ldr r7, _0224546C ; =0x022533C8
	mov r4, r5
	ldr r3, [r7, #4]
	mov r8, #5
	ldrh r2, [r3, #0x28]
	ldrh r1, [r3, #0x2a]
	strh r2, [r3, #0x2c]
	strh r1, [r3, #0x2e]
_02245320:
	ldr r1, [r7, #4]
	add r1, r1, r0, lsl #3
	ldrh r2, [r1, #4]
	cmp r2, #1
	ldreqh r2, [r1, #6]
	cmpeq r2, #0
	bne _02245364
	add r0, sp, #0
	mov r5, #1
	bl TP_GetCalibratedPoint
	ldr r1, _0224546C ; =0x022533C8
	ldrh r0, [sp]
	ldr r2, [r1, #4]
	ldrh r1, [sp, #2]
	add r2, r2, #0x28
	bl ov18_02244C2C
	b _0224537C
_02245364:
	mov r1, r8
	add r4, r4, #1
	add r0, r0, #4
	bl FX_ModS32
	cmp r4, #4
	blt _02245320
_0224537C:
	ldr r0, _0224546C ; =0x022533C8
	eor r7, r5, r6
	ldr r4, [r0, #4]
	and r1, r5, r7
	ldrb r3, [r4, #0x38]
	and r2, r1, #0xff
	and r1, r6, r7
	bic r3, r3, #2
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #30
	strb r2, [r4, #0x38]
	ldr r4, [r0, #4]
	and r1, r1, #0xff
	ldrb r3, [r4, #0x38]
	mov r2, r1, lsl #0x1f
	cmp r5, #0
	bic r3, r3, #8
	orr r2, r3, r2, lsr #28
	strb r2, [r4, #0x38]
	ldr r3, [r0, #4]
	and r1, r5, #1
	ldrb r2, [r3, #0x38]
	addeq sp, sp, #8
	bic r2, r2, #1
	orr r1, r2, r1
	strb r1, [r3, #0x38]
	ldr r3, [r0, #4]
	ldrb r2, [r3, #0x38]
	mov r1, r2, lsl #0x1e
	mov r1, r1, lsr #0x1f
	bic r2, r2, #4
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #29
	strb r1, [r3, #0x38]
	moveq r1, #0
	streqb r1, [r0, #1]
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r0, #1]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0, #1]
	cmp r1, #0x28
	bne _02245440
	ldr r1, [r0, #4]
	add sp, sp, #8
	ldrb r0, [r1, #0x38]
	orr r0, r0, #4
	strb r0, [r1, #0x38]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02245440:
	cmp r1, #0x2f
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r0, #4]
	mov r1, #0x28
	ldrb r2, [r3, #0x38]
	orr r2, r2, #4
	strb r2, [r3, #0x38]
	strb r1, [r0, #1]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0224546C: .word 0x022533C8
	arm_func_end ov18_022452D4

	arm_func_start ov18_02245470
ov18_02245470: ; 0x02245470
	ldr r1, _022454A8 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _022454AC ; =0x022533C8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x32]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_022454A8: .word 0x027FFFA8
_022454AC: .word 0x022533C8
	arm_func_end ov18_02245470

	arm_func_start ov18_022454B0
ov18_022454B0: ; 0x022454B0
	ldr r1, _022454E8 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _022454EC ; =0x022533C8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x34]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_022454E8: .word 0x027FFFA8
_022454EC: .word 0x022533C8
	arm_func_end ov18_022454B0

	arm_func_start ov18_022454F0
ov18_022454F0: ; 0x022454F0
	ldr r1, _02245528 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0224552C ; =0x022533C8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x36]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_02245528: .word 0x027FFFA8
_0224552C: .word 0x022533C8
	arm_func_end ov18_022454F0

	arm_func_start ov18_02245530
ov18_02245530: ; 0x02245530
	ldr r1, _022455B0 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _022455B4 ; =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
	; .align 2, 0
_022455B0: .word 0x027FFFA8
_022455B4: .word 0x022533C8
	arm_func_end ov18_02245530

	arm_func_start ov18_022455B8
ov18_022455B8: ; 0x022455B8
	ldr r1, _02245638 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0224563C ; =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1e
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
	; .align 2, 0
_02245638: .word 0x027FFFA8
_0224563C: .word 0x022533C8
	arm_func_end ov18_022455B8

	arm_func_start ov18_02245640
ov18_02245640: ; 0x02245640
	ldr r1, _022456C0 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _022456C4 ; =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1d
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
	; .align 2, 0
_022456C0: .word 0x027FFFA8
_022456C4: .word 0x022533C8
	arm_func_end ov18_02245640

	arm_func_start ov18_022456C8
ov18_022456C8: ; 0x022456C8
	ldr r1, _02245748 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0224574C ; =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1c
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
	; .align 2, 0
_02245748: .word 0x027FFFA8
_0224574C: .word 0x022533C8
	arm_func_end ov18_022456C8

	arm_func_start ov18_02245750
ov18_02245750: ; 0x02245750
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _022457B4 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	addne sp, sp, #8
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrh r1, [r0]
	strh r1, [sp]
	ldrh r1, [r0, #2]
	strh r1, [sp, #2]
	ldrh r2, [r0]
	ldrh r1, [r0, #4]
	add r1, r2, r1
	strh r1, [sp, #4]
	ldrh r2, [r0, #2]
	ldrh r1, [r0, #6]
	add r0, sp, #0
	add r1, r2, r1
	strh r1, [sp, #6]
	bl ov18_022455B8
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022457B4: .word 0x027FFFA8
	arm_func_end ov18_02245750

	arm_func_start ov18_022457B8
ov18_022457B8: ; 0x022457B8
	ldr r1, _02245818 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0224581C ; =0x022533C8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	bne _02245800
	ldrh r2, [r3, #0x2c]
	ldrh r1, [r3, #0x2e]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r0, #0
	bx lr
_02245800:
	ldrh r2, [r3, #0x28]
	ldrh r1, [r3, #0x2a]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r0, #1
	bx lr
	; .align 2, 0
_02245818: .word 0x027FFFA8
_0224581C: .word 0x022533C8
	arm_func_end ov18_022457B8

	arm_func_start ov18_02245820
ov18_02245820: ; 0x02245820
	stmfd sp!, {r3, lr}
	ldr r0, _02245894 ; =0x022533C8
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, _02245898 ; =0x027FFFA8
	beq _02245868
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	ldmneia sp!, {r3, pc}
	mov r0, #1
	bl PM_SetLCDPower
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02245894 ; =0x022533C8
	mov r1, #0
	strb r1, [r0]
	ldmia sp!, {r3, pc}
_02245868:
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl PM_SetLCDPower
	cmp r0, #0
	ldrne r0, _02245894 ; =0x022533C8
	movne r1, #1
	strneb r1, [r0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02245894: .word 0x022533C8
_02245898: .word 0x027FFFA8
	arm_func_end ov18_02245820

	.bss


	.global Unk_ov18_022533C8
Unk_ov18_022533C8: ; 0x022533C8
	.space 0x1

	.global Unk_ov18_022533C9
Unk_ov18_022533C9: ; 0x022533C9
	.space 0x1

	.global Unk_ov18_022533CC
Unk_ov18_022533CC: ; 0x022533CC
	.space 0x4

	.global Unk_ov18_022533D0
Unk_ov18_022533D0: ; 0x022533D0
	.space 0x10

