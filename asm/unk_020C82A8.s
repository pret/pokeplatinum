	.include "macros/function.inc"
	.include "include/unk_020C82A8.inc"

	

	.text


	arm_func_start FSi_OnRomReadDone
FSi_OnRomReadDone: ; 0x020C82A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl CARD_IsPulledOut
	cmp r0, #0
	movne r1, #5
	moveq r1, #0
	mov r0, r4
	bl FS_NotifyArchiveAsyncEnd
	ldmia sp!, {r4, pc}
	arm_func_end FSi_OnRomReadDone

	arm_func_start FSi_ReadRomCallback
FSi_ReadRomCallback: ; 0x020C82CC
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, _020C830C ; =FSi_OnRomReadDone
	mov lr, r1
	str ip, [sp]
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, _020C8310 ; =0x021CEC1C
	str r1, [sp, #8]
	mov r1, r2
	ldr r0, [r0, #4]
	mov r2, lr
	bl CARDi_ReadRom
	mov r0, #6
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_020C830C: .word FSi_OnRomReadDone
_020C8310: .word 0x021CEC1C
	arm_func_end FSi_ReadRomCallback

	arm_func_start FSi_WriteDummyCallback
FSi_WriteDummyCallback: ; 0x020C8314
	mov r0, #1
	bx lr
	arm_func_end FSi_WriteDummyCallback

	arm_func_start FSi_RomArchiveProc
FSi_RomArchiveProc: ; 0x020C831C
	stmfd sp!, {r3, lr}
	cmp r1, #1
	beq _020C8374
	cmp r1, #9
	beq _020C833C
	cmp r1, #0xa
	beq _020C8358
	b _020C837C
_020C833C:
	ldr r0, _020C8384 ; =0x021CEC1C
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_LockRom
	mov r0, #0
	ldmia sp!, {r3, pc}
_020C8358:
	ldr r0, _020C8384 ; =0x021CEC1C
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_UnlockRom
	mov r0, #0
	ldmia sp!, {r3, pc}
_020C8374:
	mov r0, #4
	ldmia sp!, {r3, pc}
_020C837C:
	mov r0, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C8384: .word 0x021CEC1C
	arm_func_end FSi_RomArchiveProc

	arm_func_start FSi_ReadDummyCallback
FSi_ReadDummyCallback: ; 0x020C8388
	mov r0, #1
	bx lr
	arm_func_end FSi_ReadDummyCallback

	arm_func_start FSi_EmptyArchiveProc
FSi_EmptyArchiveProc: ; 0x020C8390
	mov r0, #4
	bx lr
	arm_func_end FSi_EmptyArchiveProc

	arm_func_start FSi_InitRom
FSi_InitRom: ; 0x020C8398
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r1, _020C84B8 ; =0x021CEC1C
	str r0, [r1, #4]
	bl OS_GetLockID
	ldr r1, _020C84B8 ; =0x021CEC1C
	mov r2, #0
	str r0, [r1, #0]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	bl CARD_Init
	ldr r0, _020C84BC ; =0x021CEC34
	bl FS_InitArchive
	ldr r0, _020C84BC ; =0x021CEC34
	ldr r1, _020C84C0 ; =0x02101164
	mov r2, #3
	bl FS_RegisterArchiveName
	ldr r4, _020C84C4 ; =0x027FFC40
	ldrh r0, [r4]
	cmp r0, #2
	bne _020C8450
	ldr r3, _020C84B8 ; =0x021CEC1C
	mvn r2, #0
	str r2, [r3, #8]
	mov ip, #0
	str ip, [r3, #0xc]
	str r2, [r3, #0x10]
	ldr r0, _020C84BC ; =0x021CEC34
	ldr r1, _020C84C8 ; =FSi_EmptyArchiveProc
	str ip, [r3, #0x14]
	bl FS_SetArchiveProc
	mov r1, #0
	str r1, [sp]
	ldr r0, _020C84CC ; =FSi_ReadDummyCallback
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr ip, _020C84D0 ; =FSi_WriteDummyCallback
	ldr r0, _020C84BC ; =0x021CEC34
	mov r2, r1
	mov r3, r1
	str ip, [sp, #0xc]
	bl FS_LoadArchive
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_020C8450:
	ldr r0, _020C84BC ; =0x021CEC34
	ldr r1, _020C84D4 ; =FSi_RomArchiveProc
	ldr r2, _020C84D8 ; =0x00000602
	bl FS_SetArchiveProc
	ldr r1, [r4, #0x200]
	mvn r0, #0
	cmp r1, r0
	cmpne r1, #0
	ldrne r2, [r4, #0x208]
	cmpne r2, r0
	cmpne r2, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
	str r1, [sp]
	ldr r0, [r4, #0x204]
	ldr r1, _020C84DC ; =FSi_ReadRomCallback
	str r0, [sp, #4]
	ldr r0, _020C84D0 ; =FSi_WriteDummyCallback
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [r4, #0x20c]
	ldr r0, _020C84BC ; =0x021CEC34
	mov r1, #0
	bl FS_LoadArchive
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C84B8: .word 0x021CEC1C
_020C84BC: .word 0x021CEC34
_020C84C0: .word 0x02101164
_020C84C4: .word 0x027FFC40
_020C84C8: .word FSi_EmptyArchiveProc
_020C84CC: .word FSi_ReadDummyCallback
_020C84D0: .word FSi_WriteDummyCallback
_020C84D4: .word FSi_RomArchiveProc
_020C84D8: .word 0x00000602
_020C84DC: .word FSi_ReadRomCallback
	arm_func_end FSi_InitRom

	arm_func_start FS_SetDefaultDMA
FS_SetDefaultDMA: ; 0x020C84E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl OS_DisableInterrupts
	mov r4, r0
	ldr r1, _020C8528 ; =0x021CEC1C
	ldr r0, _020C852C ; =0x021CEC34
	ldr r5, [r1, #4]
	bl FS_SuspendArchive
	ldr r1, _020C8528 ; =0x021CEC1C
	cmp r0, #0
	str r6, [r1, #4]
	beq _020C8518
	ldr r0, _020C852C ; =0x021CEC34
	bl FS_ResumeArchive
_020C8518:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C8528: .word 0x021CEC1C
_020C852C: .word 0x021CEC34
	arm_func_end FS_SetDefaultDMA

	arm_func_start FS_TryLoadTable
FS_TryLoadTable: ; 0x020C8530
	ldr ip, _020C8548 ; =FS_LoadArchiveTables
	mov r3, r0
	mov r2, r1
	ldr r0, _020C854C ; =0x021CEC34
	mov r1, r3
	bx ip
	; .align 2, 0
_020C8548: .word FS_LoadArchiveTables
_020C854C: .word 0x021CEC34
	arm_func_end FS_TryLoadTable

	.data


	.global Unk_02101164
Unk_02101164: ; 0x02101164
	.incbin "incbin/arm9_data.bin", 0x2484, 0x4



	.bss


	.global Unk_021CEC1C
Unk_021CEC1C: ; 0x021CEC1C
	.space 0x4

	.global Unk_021CEC20
Unk_021CEC20: ; 0x021CEC20
	.space 0x4

	.global Unk_021CEC24
Unk_021CEC24: ; 0x021CEC24
	.space 0x8

	.global Unk_021CEC2C
Unk_021CEC2C: ; 0x021CEC2C
	.space 0x8

	.global Unk_021CEC34
Unk_021CEC34: ; 0x021CEC34
	.space 0x5C

