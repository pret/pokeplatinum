	.include "macros/function.inc"
	.include "include/unk_020C3930.inc"

	.extern Unk_021CCFC4
	

	.text


	arm_func_start OSi_SetTimer
OSi_SetTimer: ; 0x020C3930
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, _020C39AC ; =0x04000106
	mov r2, #0
	strh r2, [r3]
	ldr ip, [r4, #0xc]
	ldr r3, [r4, #0x10]
	subs r5, ip, r0
	sbc r4, r3, r1
	ldr r1, _020C39B0 ; =OSi_AlarmHandler
	mov r0, #1
	bl OSi_EnterTimerCallback
	subs r0, r5, #0
	mov r3, #0
	sbcs r0, r4, #0
	ldrlt r3, _020C39B4 ; =0x0000FFFE
	blt _020C3990
	subs r0, r5, #0x10000
	sbcs r0, r4, r3
	bge _020C3990
	mvn r0, r5
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
_020C3990:
	ldr r2, _020C39B8 ; =0x04000104
	mov r1, #0xc1
	strh r3, [r2]
	mov r0, #0x10
	strh r1, [r2, #2]
	bl OS_EnableIrqMask
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C39AC: .word 0x04000106
_020C39B0: .word OSi_AlarmHandler
_020C39B4: .word 0x0000FFFE
_020C39B8: .word 0x04000104
	arm_func_end OSi_SetTimer

	arm_func_start OS_InitAlarm
OS_InitAlarm: ; 0x020C39BC
	stmfd sp!, {r3, lr}
	ldr r1, _020C39F8 ; =0x021CCFC4
	ldrh r0, [r1]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	strh r0, [r1]
	bl OSi_SetTimerReserved
	ldr r1, _020C39F8 ; =0x021CCFC4
	mov r2, #0
	str r2, [r1, #4]
	mov r0, #0x10
	str r2, [r1, #8]
	bl OS_DisableIrqMask
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C39F8: .word Unk_021CCFC4
	arm_func_end OS_InitAlarm

	arm_func_start OS_IsAlarmAvailable
OS_IsAlarmAvailable: ; 0x020C39FC
	ldr r0, _020C3A08 ; =0x021CCFC4
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_020C3A08: .word Unk_021CCFC4
	arm_func_end OS_IsAlarmAvailable

	arm_func_start OS_CreateAlarm
OS_CreateAlarm: ; 0x020C3A0C
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #8]
	bx lr
	arm_func_end OS_CreateAlarm

	arm_func_start OSi_InsertAlarm
OSi_InsertAlarm: ; 0x020C3A1C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0x20]
	ldr r3, [r8, #0x1c]
	cmp r0, #0
	mov r7, r1
	mov r6, r2
	cmpeq r3, #0
	beq _020C3A90
	bl OS_GetTick
	ldr r6, [r8, #0x28]
	ldr r7, [r8, #0x24]
	cmp r6, r1
	cmpeq r7, r0
	bhs _020C3A90
	ldr r5, [r8, #0x1c]
	ldr r4, [r8, #0x20]
	subs r0, r0, r7
	mov r2, r5
	mov r3, r4
	sbc r1, r1, r6
	bl _ull_div
	adds r2, r0, #1
	adc r0, r1, #0
	umull r3, r1, r5, r2
	mla r1, r5, r0, r1
	mla r1, r4, r2, r1
	adds r7, r7, r3
	adc r6, r6, r1
_020C3A90:
	str r7, [r8, #0xc]
	ldr r0, _020C3B44 ; =0x021CCFC4
	str r6, [r8, #0x10]
	ldr r5, [r0, #4]
	cmp r5, #0
	beq _020C3B0C
	mov r2, #0
	mov r1, r2
_020C3AB0:
	ldr r3, [r5, #0xc]
	ldr r0, [r5, #0x10]
	subs r4, r7, r3
	sbc r3, r6, r0
	subs r0, r4, r1
	sbcs r0, r3, r2
	bge _020C3B00
	ldr r0, [r5, #0x14]
	str r0, [r8, #0x14]
	str r8, [r5, #0x14]
	str r5, [r8, #0x18]
	ldr r0, [r8, #0x14]
	cmp r0, #0
	strne r8, [r0, #0x18]
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _020C3B44 ; =0x021CCFC4
	mov r0, r8
	str r8, [r1, #4]
	bl OSi_SetTimer
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C3B00:
	ldr r5, [r5, #0x18]
	cmp r5, #0
	bne _020C3AB0
_020C3B0C:
	ldr r1, _020C3B44 ; =0x021CCFC4
	mov r0, #0
	str r0, [r8, #0x18]
	ldr r0, [r1, #8]
	str r8, [r1, #8]
	str r0, [r8, #0x14]
	cmp r0, #0
	strne r8, [r0, #0x18]
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	str r8, [r1, #8]
	mov r0, r8
	str r8, [r1, #4]
	bl OSi_SetTimer
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C3B44: .word Unk_021CCFC4
	arm_func_end OSi_InsertAlarm

	arm_func_start OS_SetAlarm
OS_SetAlarm: ; 0x020C3B48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	mov r7, r3
	beq _020C3B6C
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _020C3B70
_020C3B6C:
	bl OS_Terminate
_020C3B70:
	bl OS_DisableInterrupts
	mov r1, #0
	str r1, [r6, #0x1c]
	str r1, [r6, #0x20]
	str r7, [r6, #0]
	ldr r1, [sp, #0x18]
	mov r7, r0
	str r1, [r6, #4]
	bl OS_GetTick
	adds r3, r5, r0
	adc r2, r4, r1
	mov r0, r6
	mov r1, r3
	bl OSi_InsertAlarm
	mov r0, r7
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end OS_SetAlarm

	arm_func_start OS_CancelAlarm
OS_CancelAlarm: ; 0x020C3BB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, [r5, #0]
	mov r4, r0
	cmp r1, #0
	bne _020C3BD8
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
_020C3BD8:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	ldrne r1, [r5, #0x14]
	strne r1, [r0, #0x14]
	bne _020C3BF8
	ldr r2, [r5, #0x14]
	ldr r1, _020C3C38 ; =0x021CCFC4
	str r2, [r1, #8]
_020C3BF8:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	strne r0, [r1, #0x18]
	bne _020C3C1C
	ldr r1, _020C3C38 ; =0x021CCFC4
	cmp r0, #0
	str r0, [r1, #4]
	beq _020C3C1C
	bl OSi_SetTimer
_020C3C1C:
	mov r1, #0
	str r1, [r5, #0]
	str r1, [r5, #0x1c]
	mov r0, r4
	str r1, [r5, #0x20]
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C3C38: .word Unk_021CCFC4
	arm_func_end OS_CancelAlarm

	arm_func_start OSi_AlarmHandler
OSi_AlarmHandler: ; 0x020C3C3C
	stmfd sp!, {r0, lr}
	bl OSi_ArrangeTimer
	ldmia sp!, {r0, lr}
	bx lr
	arm_func_end OSi_AlarmHandler

	arm_func_start OSi_ArrangeTimer
OSi_ArrangeTimer: ; 0x020C3C4C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020C3D30 ; =0x04000106
	mov r2, #0
	mov r0, #0x10
	strh r2, [r1]
	bl OS_DisableIrqMask
	ldr r0, _020C3D34 ; =0x027E0000
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #0x10
	str r1, [r0, #0xff8]
	bl OS_GetTick
	ldr r2, _020C3D38 ; =0x021CCFC4
	ldr r4, [r2, #4]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r4, #0x10]
	ldr ip, [r4, #0xc]
	cmp r1, r3
	cmpeq r0, ip
	bhs _020C3CAC
	mov r0, r4
	bl OSi_SetTimer
	ldmia sp!, {r3, r4, r5, pc}
_020C3CAC:
	ldr r1, [r4, #0x18]
	mov r0, #0
	str r1, [r2, #4]
	cmp r1, #0
	streq r0, [r2, #8]
	strne r0, [r1, #0x14]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	ldr r5, [r4, #0]
	mov r0, #0
	cmpeq r1, #0
	streq r0, [r4]
	cmp r5, #0
	beq _020C3CF0
	ldr r0, [r4, #4]
	blx r5
_020C3CF0:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	cmpeq r1, #0
	mov r1, #0
	beq _020C3D18
	mov r0, r4
	mov r2, r1
	str r5, [r4, #0]
	bl OSi_InsertAlarm
_020C3D18:
	ldr r0, _020C3D38 ; =0x021CCFC4
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl OSi_SetTimer
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C3D30: .word 0x04000106
_020C3D34: .word 0x027E0000
_020C3D38: .word Unk_021CCFC4
	arm_func_end OSi_ArrangeTimer

	.bss


	.global Unk_021CCFC4
Unk_021CCFC4: ; 0x021CCFC4
	.space 0x2

	.global Unk_021CCFC8
Unk_021CCFC8: ; 0x021CCFC8
	.space 0x8

