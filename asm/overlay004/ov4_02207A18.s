	.include "macros/function.inc"
	.include "overlay004/ov4_02207A18.inc"

	.extern Unk_ov4_0221DC60

	.text


	arm_func_start ov4_02207A18
ov4_02207A18: ; 0x02207A18
	stmfd sp!, {r4, lr}
	movs r4, r0
	bmi _02207A44
	bl ov4_022082CC
	cmp r0, #0
	beq _02207A44
	mov r0, r4
	bl ov4_02208300
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_02207A44:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_02207A18

	arm_func_start ov4_02207A4C
ov4_02207A4C: ; 0x02207A4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r4, #0
	mvnle r0, #0x1b
	ldmleia sp!, {r4, pc}
	bl ov4_02208300
	cmp r0, #0
	mvnne r0, #0x19
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov4_022082CC
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	cmp r4, #0
	mov r1, #0
	beq _02207A9C
	ldrsh r0, [r4, #0x70]
	tst r0, #1
	movne r1, #1
_02207A9C:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqia sp!, {r4, pc}
	ldrsh r0, [r4, #0x70]
	tst r0, #0x10
	mvnne r0, #0x19
	ldmneia sp!, {r4, pc}
	ldrsh r0, [r4, #0x70]
	mov r1, #1
	orr r0, r0, #0x18
	strh r0, [r4, #0x70]
	ldrsb r0, [r4, #0x73]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _02207AEC
	ldr r0, [r4, #0x68]
	mov r1, #0
	bl ov4_02206068
_02207AEC:
	ldr r0, _02207B18 ; =ov4_02207B1C
	mov r1, r4
	mov r2, #1
	bl ov4_02205FF4
	mov r1, r0
	mov r2, #0
	mov r0, r4
	str r2, [r1, #8]
	bl ov4_022060B4
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02207B18: .word ov4_02207B1C
	arm_func_end ov4_02207A4C

	arm_func_start ov4_02207B1C
ov4_02207B1C: ; 0x02207B1C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #4]
	mov r1, #1
	ldrsb r0, [r4, #0x73]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _02207B58
	ldr r0, [r4, #0x68]
	add r0, r0, #0x20
	bl OS_JoinThread
	bl ov4_0220C03C
	bl ov4_0220C078
	bl ov4_0220BDDC
_02207B58:
	bl ov4_0220BD04
	ldrsh r0, [r4, #0x70]
	mov r1, #0
	bic r0, r0, #6
	strh r0, [r4, #0x70]
	ldrsb r0, [r4, #0x73]
	cmp r0, #2
	ldreq r0, [r4, #0x68]
	ldrne r0, [r4, #0x64]
	bl ov4_02206068
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl ov4_02208254
	mov r0, r4
	bl ov4_0220823C
	mov r0, r5
	bl OS_RestoreInterrupts
	ldrsh r1, [r4, #0x70]
	mov r0, #0
	orr r1, r1, #0x20
	strh r1, [r4, #0x70]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02207B1C

	arm_func_start ov4_02207BB4
ov4_02207BB4: ; 0x02207BB4
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0
	strh r0, [r4, #0x70]
	ldrsb r2, [r4, #0x73]
	mov r1, #1
	cmp r2, #0
	cmpne r2, #4
	movne r1, r0
	cmp r1, #0
	beq _02207BF8
	ldr r0, [r4, #0x68]
	bl ov4_02207CB4
	ldr r0, [r4, #0x64]
	bl ov4_02207CB4
	b _02207C78
_02207BF8:
	cmp r2, #1
	bne _02207C68
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x104]
	cmp r0, #0
	beq _02207C30
	ldr r5, _02207CB0 ; =0x0221A134
_02207C14:
	ldr r1, [r5, #0]
	ldr r6, [r0, #0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r6
	cmp r6, #0
	bne _02207C14
_02207C30:
	ldr r0, [r4, #0x64]
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #8]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x100]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x104]
	ldr r0, [r4, #0x64]
	add r0, r0, #0x10c
	bl OS_WakeupThread
	ldr r0, [r4, #0x64]
	bl ov4_02207CB4
	b _02207C78
_02207C68:
	cmp r2, #2
	bne _02207C78
	ldr r0, [r4, #0x68]
	bl ov4_02207CB4
_02207C78:
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl ov4_02208254
	mov r0, r4
	bl ov4_022082B4
	ldr r1, _02207CB0 ; =0x0221A134
	mov r0, r4
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02207CB0: .word 0x0221A134
	arm_func_end ov4_02207BB4

	arm_func_start ov4_02207CB4
ov4_02207CB4: ; 0x02207CB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs sb, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, sb, #0x20
	bl OS_JoinThread
	bl OS_DisableInterrupts
	mov r8, r0
	bl OS_DisableScheduler
	add r1, sp, #0
	mov r0, sb
	mov r2, #0
	bl OS_ReceiveMessage
	cmp r0, #0
	beq _02207D40
	mov r6, #0
	mvn r7, #0xa
	add r5, sp, #0
	mov r4, r6
_02207CFC:
	ldr r0, [sp]
	cmp r0, #0
	beq _02207D28
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02207D20
	mov r1, r7
	mov r2, r6
	bl OS_SendMessage
_02207D20:
	ldr r0, [sp]
	bl ov4_02206034
_02207D28:
	mov r0, sb
	mov r1, r5
	mov r2, r4
	bl OS_ReceiveMessage
	cmp r0, #0
	bne _02207CFC
_02207D40:
	bl OS_EnableScheduler
	bl OS_RescheduleThread
	mov r0, r8
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_02207CB4

	arm_func_start ov4_02207D54
ov4_02207D54: ; 0x02207D54
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r4, _02207D8C ; =0x0221DC60
	mov r5, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02207D80
_02207D70:
	bl ov4_02207BB4
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02207D70
_02207D80:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02207D8C: .word Unk_ov4_0221DC60
	arm_func_end ov4_02207D54