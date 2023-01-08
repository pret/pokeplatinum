	.include "macros/function.inc"
	.include "include/card_backup.inc"

	.extern cardi_common
	.extern Unk_021CCC80
	

	.text


	arm_func_start CARDi_RequestStreamCommandCore
CARDi_RequestStreamCommandCore: ; 0x020CCC20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	ldr r7, [sb, #0x2c]
	ldr r0, _020CCE08 ; =0x02000BFC
	ldr r4, [sb, #0x34]
	ldr sl, [sb, #0x30]
	mov r5, #0x100
	bl OSi_ReferSymbol
	cmp r7, #0xb
	bne _020CCC54
	bl CARD_GetBackupSectorSize
	mov r5, r0
	b _020CCC64
_020CCC54:
	cmp r7, #0xf
	ldreq r0, _020CCE0C ; =0x021CEE20
	ldreq r0, [r0]
	ldreq r5, [r0, #0x20]
_020CCC64:
	add r6, sb, #0x120
	mov fp, #9
_020CCC6C:
	ldr r8, [sb, #0x24]
	ldr r0, [sb]
	cmp r5, r8
	movlo r8, r5
	str r8, [r0, #0x14]
	ldr r0, [sb, #0x114]
	tst r0, #0x40
	beq _020CCCA8
	ldr r0, [sb, #0x114]
	mov r1, #7
	bic r0, r0, #0x40
	str r0, [sb, #0x114]
	ldr r0, [sb]
	str r1, [r0, #0]
	b _020CCDB4
_020CCCA8:
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020CCD38
_020CCCB4: ; jump table
	b _020CCCC4 ; case 0
	b _020CCCE8 ; case 1
	b _020CCCE8 ; case 2
	b _020CCD20 ; case 3
_020CCCC4:
	mov r0, r6
	mov r1, r8
	bl DC_InvalidateRange
	ldr r1, [sb, #0x1c]
	ldr r0, [sb]
	str r1, [r0, #0xc]
	ldr r0, [sb]
	str r6, [r0, #0x10]
	b _020CCD38
_020CCCE8:
	ldr r0, [sb, #0x1c]
	mov r1, r6
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r6
	mov r1, r8
	bl DC_FlushRange
	bl DC_WaitWriteBufferEmpty
	ldr r0, [sb]
	str r6, [r0, #0xc]
	ldr r1, [sb, #0x20]
	ldr r0, [sb]
	str r1, [r0, #0x10]
	b _020CCD38
_020CCD20:
	ldr r1, [sb, #0x1c]
	ldr r0, [sb]
	str r1, [r0, #0xc]
	ldr r1, [sb, #0x20]
	ldr r0, [sb]
	str r1, [r0, #0x10]
_020CCD38:
	mov r0, sb
	mov r1, r7
	mov r2, sl
	bl CARDi_Request
	cmp r0, #0
	beq _020CCDB4
	cmp r4, #2
	bne _020CCD74
	mov r0, sb
	mov r1, fp
	mov r2, #1
	bl CARDi_Request
	cmp r0, #0
	beq _020CCDB4
	b _020CCD8C
_020CCD74:
	cmp r4, #0
	bne _020CCD8C
	ldr r1, [sb, #0x20]
	mov r0, r6
	mov r2, r8
	bl MI_CpuCopy8
_020CCD8C:
	ldr r0, [sb, #0x1c]
	add r0, r0, r8
	str r0, [sb, #0x1c]
	ldr r0, [sb, #0x20]
	add r0, r0, r8
	str r0, [sb, #0x20]
	ldr r0, [sb, #0x24]
	subs r0, r0, r8
	str r0, [sb, #0x24]
	bne _020CCC6C
_020CCDB4:
	ldr r6, [sb, #0x38]
	ldr r5, [sb, #0x3c]
	bl OS_DisableInterrupts
	ldr r1, [sb, #0x114]
	mov r4, r0
	bic r0, r1, #0x4c
	str r0, [sb, #0x114]
	add r0, sb, #0x10c
	bl OS_WakeupThread
	ldr r0, [sb, #0x114]
	tst r0, #0x10
	beq _020CCDEC
	add r0, sb, #0x44
	bl OS_WakeupThreadDirect
_020CCDEC:
	mov r0, r4
	bl OS_RestoreInterrupts
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r5
	blx r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CCE08: .word 0x02000BFC
_020CCE0C: .word cardi_common
	arm_func_end CARDi_RequestStreamCommandCore

	arm_func_start CARDi_RequestStreamCommand
CARDi_RequestStreamCommand: ; 0x020CCE10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r4, _020CCEE8 ; =0x021CEE20
	ldr r0, _020CCEEC ; =0x02000BFC
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl OSi_ReferSymbol
	bl OS_DisableInterrupts
	ldr r1, [r4, #0x114]
	mov r5, r0
	tst r1, #4
	beq _020CCE58
_020CCE44:
	add r0, r4, #0x10c
	bl OS_SleepThread
	ldr r0, [r4, #0x114]
	tst r0, #4
	bne _020CCE44
_020CCE58:
	ldr r0, [r4, #0x114]
	ldr r1, [sp, #0x20]
	orr r2, r0, #4
	mov r0, r5
	str r2, [r4, #0x114]
	str r6, [r4, #0x38]
	str r1, [r4, #0x3c]
	bl OS_RestoreInterrupts
	ldr r3, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x24]
	str sb, [r4, #0x1c]
	str r8, [r4, #0x20]
	str r7, [r4, #0x24]
	str r3, [r4, #0x2c]
	str r2, [r4, #0x30]
	str r1, [r4, #0x34]
	cmp r0, #0
	beq _020CCEB8
	ldr r0, _020CCEF0 ; =CARDi_RequestStreamCommandCore
	bl CARDi_SetTask
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020CCEB8:
	ldr r0, _020CCEF4 ; =0x021CCC80
	ldr r1, _020CCEE8 ; =0x021CEE20
	ldr r2, [r0, #4]
	mov r0, r4
	str r2, [r1, #0x104]
	bl CARDi_RequestStreamCommandCore
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020CCEE8: .word cardi_common
_020CCEEC: .word 0x02000BFC
_020CCEF0: .word CARDi_RequestStreamCommandCore
_020CCEF4: .word Unk_021CCC80
	arm_func_end CARDi_RequestStreamCommand

	arm_func_start CARD_GetBackupSectorSize
CARD_GetBackupSectorSize: ; 0x020CCEF8
	ldr r0, _020CCF08 ; =0x021CEE20
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	bx lr
	; .align 2, 0
_020CCF08: .word cardi_common
	arm_func_end CARD_GetBackupSectorSize

	arm_func_start CARD_IdentifyBackup
CARD_IdentifyBackup: ; 0x020CCF0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, _020CD038 ; =0x02000BFC
	ldr r4, _020CD03C ; =0x021CEE20
	bl OSi_ReferSymbol
	cmp r6, #0
	bne _020CCF2C
	bl OS_Terminate
_020CCF2C:
	bl CARD_CheckEnabled
	bl OS_DisableInterrupts
	ldr r1, [r4, #0x114]
	mov r5, r0
	tst r1, #4
	beq _020CCF58
_020CCF44:
	add r0, r4, #0x10c
	bl OS_SleepThread
	ldr r0, [r4, #0x114]
	tst r0, #4
	bne _020CCF44
_020CCF58:
	ldr r0, [r4, #0x114]
	mov r1, #0
	orr r2, r0, #4
	mov r0, r5
	str r2, [r4, #0x114]
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	bl OS_RestoreInterrupts
	mov r0, r6
	bl CARDi_IdentifyBackupCore
	ldr r0, _020CD040 ; =0x021CCC80
	ldr r1, _020CD03C ; =0x021CEE20
	ldr r2, [r0, #4]
	mov r0, r4
	str r2, [r1, #0x104]
	mov r1, #2
	mov r2, #1
	bl CARDi_Request
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r4, #0]
	add r1, r4, #0x120
	str r1, [r0, #0x10]
	ldr r1, [r4, #0]
	mov r2, #1
	mov r0, r4
	str r2, [r1, #0x14]
	mov r1, #6
	bl CARDi_Request
	ldr r7, [r4, #0x38]
	ldr r6, [r4, #0x3c]
	bl OS_DisableInterrupts
	mov r5, r0
	ldr r1, [r4, #0x114]
	add r0, r4, #0x10c
	bic r1, r1, #0x4c
	str r1, [r4, #0x114]
	bl OS_WakeupThread
	ldr r0, [r4, #0x114]
	tst r0, #0x10
	beq _020CD008
	add r0, r4, #0x44
	bl OS_WakeupThreadDirect
_020CD008:
	mov r0, r5
	bl OS_RestoreInterrupts
	cmp r7, #0
	beq _020CD020
	mov r0, r6
	blx r7
_020CD020:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CD038: .word 0x02000BFC
_020CD03C: .word cardi_common
_020CD040: .word Unk_021CCC80
	arm_func_end CARD_IdentifyBackup

	arm_func_start CARD_WaitBackupAsync
CARD_WaitBackupAsync: ; 0x020CD044
	ldr ip, _020CD04C ; =CARDi_WaitAsync
	bx ip
	; .align 2, 0
_020CD04C: .word CARDi_WaitAsync
	arm_func_end CARD_WaitBackupAsync

	arm_func_start CARD_TryWaitBackupAsync
CARD_TryWaitBackupAsync: ; 0x020CD050
	ldr ip, _020CD058 ; =CARDi_TryWaitAsync
	bx ip
	; .align 2, 0
_020CD058: .word CARDi_TryWaitAsync
	arm_func_end CARD_TryWaitBackupAsync

	arm_func_start CARD_CancelBackupAsync
CARD_CancelBackupAsync: ; 0x020CD05C
	stmfd sp!, {r3, lr}
	bl OS_DisableInterrupts
	ldr r1, _020CD07C ; =0x021CEE20
	ldr r2, [r1, #0x114]
	orr r2, r2, #0x40
	str r2, [r1, #0x114]
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD07C: .word cardi_common
	arm_func_end CARD_CancelBackupAsync
