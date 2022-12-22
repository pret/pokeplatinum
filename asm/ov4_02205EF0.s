	.include "macros/function.inc"
	.include "include/ov4_02205EF0.inc"

	

	.text


	arm_func_start ov4_02205EF0
ov4_02205EF0: ; 0x02205EF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r0, #0x2c
	mul r1, r4, r0
	ldr r0, _02205F78 ; =0x0221A134
	mov r2, r4, lsl #2
	add r2, r2, #3
	ldr r0, [r0, #0]
	add r1, r1, #3
	bic r5, r2, #3
	bic r2, r1, #3
	ldr r1, [r0, #0x18]
	add r0, r2, r5
	blx r1
	movs r6, r0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _02205F7C ; =0x0221DC34
	mov r1, r6
	mov r2, r4
	bl OS_InitMessageQueue
	cmp r4, #0
	add r5, r6, r5
	ble _02205F68
_02205F50:
	mov r0, r5
	bl ov4_02206034
	sub r4, r4, #1
	cmp r4, #0
	add r5, r5, #0x2c
	bgt _02205F50
_02205F68:
	ldr r1, _02205F80 ; =0x0221DC30
	mov r0, #0
	str r6, [r1, #0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02205F78: .word 0x0221A134
_02205F7C: .word 0x0221DC34
_02205F80: .word 0x0221DC30
	arm_func_end ov4_02205EF0

	arm_func_start ov4_02205F84
ov4_02205F84: ; 0x02205F84
	stmfd sp!, {r3, lr}
	ldr r0, _02205FC4 ; =0x0221DC30
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x18]
	cmp r2, r1
	mvnlt r0, #0
	ldmltia sp!, {r3, pc}
	ldr r1, _02205FC8 ; =0x0221A134
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x1c]
	blx r1
	ldr r1, _02205FC4 ; =0x0221DC30
	mov r0, #0
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02205FC4: .word 0x0221DC30
_02205FC8: .word 0x0221A134
	arm_func_end ov4_02205F84

	arm_func_start ov4_02205FCC
ov4_02205FCC: ; 0x02205FCC
	stmfd sp!, {r3, lr}
	mov r2, r0
	ldr r0, _02205FF0 ; =0x0221DC34
	add r1, sp, #0
	bl OS_ReceiveMessage
	cmp r0, #0
	ldrne r0, [sp]
	moveq r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02205FF0: .word 0x0221DC34
	arm_func_end ov4_02205FCC

	arm_func_start ov4_02205FF4
ov4_02205FF4: ; 0x02205FF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl ov4_02205FCC
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	str r6, [r0, #0]
	str r5, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	ldrsb r1, [r5, #0x73]
	strb r1, [r0, #0xc]
	strb r4, [r0, #0xd]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_02205FF4

	arm_func_start ov4_02206034
ov4_02206034: ; 0x02206034
	stmfd sp!, {r3, lr}
	movs r1, r0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02206050 ; =0x0221DC34
	mov r2, #0
	bl OS_SendMessage
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02206050: .word 0x0221DC34
	arm_func_end ov4_02206034

	arm_func_start ov4_02206054
ov4_02206054: ; 0x02206054
	ldr r1, [r0, #0x64]
	cmp r1, #0
	ldreq r1, [r0, #0x68]
	mov r0, r1
	bx lr
	arm_func_end ov4_02206054

	arm_func_start ov4_02206068
ov4_02206068: ; 0x02206068
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	beq _02206080
	ldrsb r1, [r5, #0xd]
	tst r1, #1
	beq _02206088
_02206080:
	mov r2, #1
	b _0220608C
_02206088:
	mov r2, #0
_0220608C:
	mov r1, r5
	bl OS_SendMessage
	movs r4, r0
	bne _022060A4
	mov r0, r5
	bl ov4_02206034
_022060A4:
	cmp r4, #0
	movne r0, #0
	mvneq r0, #0x29
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02206068

	arm_func_start ov4_022060B4
ov4_022060B4: ; 0x022060B4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl ov4_02206054
	mov r1, r4
	bl ov4_02206068
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022060B4

	arm_func_start ov4_022060CC
ov4_022060CC: ; 0x022060CC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r4, r1
	ldrsb r2, [r4, #0xd]
	mov r5, r0
	cmp r2, #1
	bne _02206120
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #1
	bl OS_InitMessageQueue
	add r2, sp, #8
	mov r0, r5
	mov r1, r4
	str r2, [r4, #8]
	bl ov4_02206068
	add r0, sp, #8
	add r1, sp, #4
	mov r2, #1
	bl OS_ReceiveMessage
	b _02206130
_02206120:
	mov r2, #0
	str r2, [r4, #8]
	bl ov4_02206068
	str r0, [sp, #4]
_02206130:
	ldr r0, [sp, #4]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_022060CC

	arm_func_start ov4_0220613C
ov4_0220613C: ; 0x0220613C
	ldr ip, _02206148 ; =ov4_022060CC
	ldr r0, [r0, #0x64]
	bx ip
	; .align 2, 0
_02206148: .word ov4_022060CC
	arm_func_end ov4_0220613C

	arm_func_start ov4_0220614C
ov4_0220614C: ; 0x0220614C
	ldr ip, _02206158 ; =ov4_022060CC
	ldr r0, [r0, #0x68]
	bx ip
	; .align 2, 0
_02206158: .word ov4_022060CC
	arm_func_end ov4_0220614C

	arm_func_start ov4_0220615C
ov4_0220615C: ; 0x0220615C
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl ov4_02206054
	mov r1, r4
	bl ov4_022060CC
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220615C

	arm_func_start ov4_02206174
ov4_02206174: ; 0x02206174
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r4, #0
	mov sb, r0
	mov sl, r4
	add r6, sp, #0
	mov r5, #1
_02206190:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl OS_ReadMessage
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, [r0, #0]
	blx r1
	mov r8, r0
	bl OS_DisableInterrupts
	mov r7, r0
	bl OS_DisableScheduler
	mov r0, sb
	mov r1, r4
	mov r2, r4
	bl OS_ReceiveMessage
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	strne r8, [r0, #0x6c]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02206204
	mov r1, r8
	mov r2, sl
	bl OS_SendMessage
_02206204:
	ldr r0, [sp]
	bl ov4_02206034
	bl OS_EnableScheduler
	mov r0, r7
	bl OS_RestoreInterrupts
	b _02206190
	arm_func_end ov4_02206174
_0220621C:
	.byte 0x04, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x87, 0xBD, 0xE8


	.bss


	.global Unk_ov4_0221DC30
Unk_ov4_0221DC30: ; 0x0221DC30
	.space 0x4

	.global Unk_ov4_0221DC34
Unk_ov4_0221DC34: ; 0x0221DC34
	.space 0x20

