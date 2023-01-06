	.include "macros/function.inc"
	.include "overlay004/ov4_02206224.inc"

	.extern Unk_ov4_0221DBFC


	.extern Unk_ov4_0221A134
	.text


	arm_func_start ov4_02206224
ov4_02206224: ; 0x02206224
	stmfd sp!, {r4, lr}
	bl ov4_022062D4
	movs r4, r0
	mvneq r0, #0x30
	ldmeqia sp!, {r4, pc}
	ldr r0, _0220625C ; =ov4_02206260
	mov r1, r4
	mov r2, #1
	bl ov4_02205FF4
	mov r1, r0
	mov r0, r4
	bl ov4_0220615C
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0220625C: .word ov4_02206260
	arm_func_end ov4_02206224

	arm_func_start ov4_02206260
ov4_02206260: ; 0x02206260
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #4]
	mov r0, r4
	bl ov4_0220BCF0
	ldrsb r0, [r4, #0x73]
	ldr r1, [r4, #0x68]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _022062C0
_02206284: ; jump table
	b _02206298 ; case 0
	b _022062A8 ; case 1
	b _022062BC ; case 2
	b _022062C0 ; case 3
	b _02206298 ; case 4
_02206298:
	add r0, r1, #0x20
	bl ov4_0220BDFC
	bl ov4_0220BDA8
	b _022062C0
_022062A8:
	bl ov4_0220BDA8
	bl ov4_0220BD1C
	ldr r0, _022062D0 ; =ov4_02207188
	bl ov4_0220BE54
	b _022062C0
_022062BC:
	bl ov4_0220BD1C
_022062C0:
	mov r0, #1
	strh r0, [r4, #0x70]
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022062D0: .word ov4_02207188
	arm_func_end ov4_02206260

	arm_func_start ov4_022062D4
ov4_022062D4: ; 0x022062D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl ov4_0220633C
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _02206338 ; =0x0221A134
	mov r6, r0
	ldr r1, [r1, #0]
	mov r0, r4
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _02206328
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r7
	bl ov4_022063E4
	mov r0, r5
	bl ov4_02208214
_02206328:
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02206338: .word Unk_ov4_0221A134
	arm_func_end ov4_022062D4

	arm_func_start ov4_0220633C
ov4_0220633C: ; 0x0220633C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #2]
	mov r4, #0x80
	cmp r0, #0
	beq _02206378
	add r4, r4, #0x114
	bl ov4_02208208
	add r4, r4, r0
	ldrh r0, [r5, #8]
	bl ov4_02208208
	add r4, r4, r0
	add r0, r5, #0x10
	bl ov4_022063BC
	add r4, r4, r0
_02206378:
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _022063B4
	add r4, r4, #0x110
	bl ov4_02208208
	add r4, r4, r0
	ldrh r0, [r5, #0xa]
	bl ov4_02208208
	add r4, r4, r0
	ldrh r0, [r5, #0xc]
	bl ov4_02208208
	add r4, r4, r0
	add r0, r5, #0x14
	bl ov4_022063BC
	add r4, r4, r0
_022063B4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_0220633C

	arm_func_start ov4_022063BC
ov4_022063BC: ; 0x022063BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #3]
	mov r0, r0, lsl #2
	bl ov4_02208208
	mov r4, r0
	ldrh r0, [r5]
	bl ov4_02208208
	add r0, r4, r0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_022063BC

	arm_func_start ov4_022063E4
ov4_022063E4: ; 0x022063E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrsb r1, [r5]
	mov r6, r0
	add r4, r6, #0x80
	strb r1, [r6, #0x73]
	ldrsb r0, [r5, #1]
	strb r0, [r6, #0x72]
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _02206464
	str r4, [r6, #0x64]
	ldrh r2, [r5, #4]
	mov r1, r4
	add r0, r4, #0x114
	strh r2, [r4, #0xfc]
	add r2, r5, #0x10
	mov r7, r4
	bl ov4_02206508
	ldrh r2, [r5, #2]
	add r1, r6, #0x3c
	bl ov4_022064E0
	ldrh r2, [r5, #8]
	add r1, r6, #0x50
	bl ov4_022064E0
	ldrh r3, [r5, #0xe]
	add r1, r7, #0x100
	mov r2, #0
	strh r3, [r1, #0xa]
	str r2, [r7, #0x110]
	mov r4, r0
	str r2, [r7, #0x10c]
_02206464:
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _022064C4
	str r4, [r6, #0x68]
	mov r1, r4
	str r6, [r4, #0x10c]
	add r0, r4, #0x110
	add r2, r5, #0x14
	mov r7, r4
	bl ov4_02206508
	ldrh r2, [r5, #6]
	add r1, r6, #0x48
	bl ov4_022064E0
	ldrh r2, [r5, #0xa]
	add r1, r6, #0x58
	bl ov4_022064E0
	ldrh r2, [r5, #0xc]
	add r1, r4, #0xf8
	bl ov4_022064E0
	mov r1, #0
	str r1, [r7, #0x108]
	mov r4, r0
	str r1, [r7, #0x104]
	b _022064D4
_022064C4:
	ldr r0, _022064DC ; =0x0221DBFC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x68]
	str r0, [r6, #0x68]
_022064D4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022064DC: .word Unk_ov4_0221DBFC
	arm_func_end ov4_022063E4

	arm_func_start ov4_022064E0
ov4_022064E0: ; 0x022064E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r2, #0
	moveq r0, #0
	str r0, [r1, #4]
	mov r0, r2
	str r2, [r1, #0]
	bl ov4_02208208
	add r0, r4, r0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022064E0

	arm_func_start ov4_02206508
ov4_02206508: ; 0x02206508
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r2
	mov r7, r0
	mov r0, r5
	mov r6, r1
	bl ov4_022063BC
	mov r4, r0
	ldrb r2, [r5, #3]
	mov r0, r6
	mov r1, r7
	bl OS_InitMessageQueue
	add r0, r6, #0xe0
	bl OS_InitMutex
	ldrh r2, [r5]
	add r0, r6, #0x20
	ldr r1, _02206578 ; =ov4_02206174
	str r2, [sp]
	ldrb ip, [r5, #2]
	mov r2, r6
	add r3, r7, r4
	str ip, [sp, #4]
	bl OS_CreateThread
	add r0, r6, #0x20
	bl OS_WakeupThreadDirect
	add r0, r7, r4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02206578: .word ov4_02206174
	arm_func_end ov4_02206508