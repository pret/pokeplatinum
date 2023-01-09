	.include "macros/function.inc"
	.include "include/snd_command.inc"

	.extern Unk_021CD064
	.extern Unk_021CD0A0
	.extern Unk_021CD320
	.extern Unk_021CEB80
	.extern Unk_021CD040
	

	.text


	arm_func_start SND_CommandInit
SND_CommandInit: ; 0x020C55E0
	stmfd sp!, {r4, lr}
	bl InitPXI
	ldr lr, _020C569C ; =0x021CD320
	ldr r0, _020C56A0 ; =0x021CD040
	mov r4, #0
	str lr, [r0]
	mov r0, #0x18
	mov r1, r0
	b _020C5618
_020C5604:
	add r3, r4, #1
	mul r2, r4, r1
	mla ip, r3, r0, lr
	mov r4, r3
	str ip, [lr, r2]
_020C5618:
	cmp r4, #0xff
	blt _020C5604
	ldr r0, _020C56A4 ; =0x021CE040
	mov r3, #0
	str r3, [r0, #0xac8]
	ldr r1, _020C56A8 ; =0x021CEB08
	ldr r2, _020C56A0 ; =0x021CD040
	mov r0, #1
	str r1, [r2, #0x10]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x1c]
	str r3, [r2, #0x14]
	str r3, [r2, #0x18]
	str r0, [r2, #0x20]
	ldr r0, _020C56AC ; =0x021CD0A0
	ldr r1, _020C56B0 ; =0x021CEB80
	str r3, [r2, #4]
	str r0, [r1, #0]
	bl SNDi_InitSharedWork
	mov r0, #1
	bl SND_AllocCommand
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0x1d
	ldr r1, _020C56B0 ; =0x021CEB80
	str r2, [r0, #4]
	ldr r1, [r1, #0]
	str r1, [r0, #8]
	bl SND_PushCommand
	mov r0, #1
	bl SND_FlushCommand
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C569C: .word Unk_021CD320
_020C56A0: .word Unk_021CD040
_020C56A4: .word 0x021CE040
_020C56A8: .word 0x021CEB08
_020C56AC: .word Unk_021CD0A0
_020C56B0: .word Unk_021CEB80
	arm_func_end SND_CommandInit

	arm_func_start SND_RecvCommandReply
SND_RecvCommandReply: ; 0x020C56B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	tst r5, #1
	beq _020C5710
	bl SNDi_GetFinishedCommandTag
	ldr r5, _020C57BC ; =0x021CD040
	ldr r1, [r5, #4]
	cmp r1, r0
	bne _020C5734
	mov r6, #0x64
_020C56E4:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r6
	bl OS_SpinWait
	bl OS_DisableInterrupts
	mov r4, r0
	bl SNDi_GetFinishedCommandTag
	ldr r1, [r5, #4]
	cmp r1, r0
	beq _020C56E4
	b _020C5734
_020C5710:
	bl SNDi_GetFinishedCommandTag
	ldr r1, _020C57BC ; =0x021CD040
	ldr r1, [r1, #4]
	cmp r1, r0
	bne _020C5734
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_020C5734:
	ldr r0, _020C57BC ; =0x021CD040
	ldr r2, _020C57C0 ; =0x021CD064
	ldr r3, [r0, #0x14]
	add r1, r3, #1
	ldr r5, [r2, r3, lsl #2]
	str r1, [r0, #0x14]
	cmp r1, #8
	movgt r1, #0
	strgt r1, [r0, #0x14]
	ldr r0, [r5, #0]
	mov r2, r5
	cmp r0, #0
	beq _020C5778
_020C5768:
	ldr r2, [r2, #0]
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _020C5768
_020C5778:
	ldr r0, _020C57BC ; =0x021CD040
	ldr r1, [r0, #0x10]
	cmp r1, #0
	strne r5, [r1]
	streq r5, [r0]
	ldr r1, _020C57BC ; =0x021CD040
	mov r0, r4
	str r2, [r1, #0x10]
	ldr r2, [r1, #0x1c]
	sub r2, r2, #1
	str r2, [r1, #0x1c]
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C57BC: .word Unk_021CD040
_020C57C0: .word Unk_021CD064
	arm_func_end SND_RecvCommandReply

	arm_func_start SND_AllocCommand
SND_AllocCommand: ; 0x020C57C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl IsCommandAvailable
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl AllocCommand
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	tst r4, #1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl SND_CountWaitingCommand
	cmp r0, #0
	ble _020C5824
	mov r4, #0
_020C5804:
	mov r0, r4
	bl SND_RecvCommandReply
	cmp r0, #0
	bne _020C5804
	bl AllocCommand
	cmp r0, #0
	beq _020C582C
	ldmia sp!, {r4, pc}
_020C5824:
	mov r0, #1
	bl SND_FlushCommand
_020C582C:
	bl RequestCommandProc
	mov r4, #1
_020C5834:
	mov r0, r4
	bl SND_RecvCommandReply
	bl AllocCommand
	cmp r0, #0
	beq _020C5834
	ldmia sp!, {r4, pc}
	arm_func_end SND_AllocCommand

	arm_func_start SND_PushCommand
SND_PushCommand: ; 0x020C584C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _020C5880 ; =0x021CD040
	ldr r2, [r1, #0xc]
	cmp r2, #0
	streq r4, [r1, #8]
	strne r4, [r2]
	str r4, [r1, #0xc]
	mov r1, #0
	str r1, [r4, #0]
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5880: .word Unk_021CD040
	arm_func_end SND_PushCommand

	arm_func_start SND_FlushCommand
SND_FlushCommand: ; 0x020C5884
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl OS_DisableInterrupts
	ldr r4, _020C5A34 ; =0x021CD040
	mov sb, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _020C58B0
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C58B0:
	ldr r1, [r4, #0x1c]
	cmp r1, #8
	blt _020C5908
	tst sl, #1
	bne _020C58D0
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C58D0:
	mov r5, #1
_020C58D4:
	mov r0, r5
	bl SND_RecvCommandReply
	ldr r0, [r4, #0x1c]
	cmp r0, #8
	bge _020C58D4
	ldr r0, _020C5A34 ; =0x021CD040
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020C5908
	mov r0, sb
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C5908:
	ldr r0, _020C5A38 ; =0x021CD320
	mov r1, #0x1800
	bl DC_FlushRange
	ldr r1, _020C5A34 ; =0x021CD040
	mov r0, #7
	ldr r1, [r1, #8]
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	bge _020C59C8
	tst sl, #1
	bne _020C5948
	mov r0, sb
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C5948:
	mov fp, #0
	mov r5, #7
	mov r8, fp
	ldr r7, _020C5A38 ; =0x021CD320
	mov r6, #0x1800
	ldr r4, _020C5A34 ; =0x021CD040
	b _020C59A4
_020C5964:
	mov r0, sb
	bl OS_RestoreInterrupts
	mov r0, r8
	bl SND_RecvCommandReply
	bl OS_DisableInterrupts
	mov sb, r0
	mov r0, r7
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020C59A4
	mov r0, sb
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C59A4:
	ldr r0, [r4, #0x1c]
	cmp r0, #8
	bge _020C5964
	ldr r1, [r4, #8]
	mov r0, r5
	mov r2, fp
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _020C5964
_020C59C8:
	ldr r0, _020C5A34 ; =0x021CD040
	ldr r2, _020C5A3C ; =0x021CD064
	ldr r3, [r0, #0x18]
	ldr r4, [r0, #8]
	add r1, r3, #1
	str r4, [r2, r3, lsl #2]
	str r1, [r0, #0x18]
	cmp r1, #8
	movgt r1, #0
	strgt r1, [r0, #0x18]
	ldr r1, _020C5A34 ; =0x021CD040
	mov r0, #0
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r2, [r1, #0x1c]
	mov r0, sb
	add r2, r2, #1
	str r2, [r1, #0x1c]
	ldr r2, [r1, #0x20]
	add r2, r2, #1
	str r2, [r1, #0x20]
	bl OS_RestoreInterrupts
	tst sl, #2
	beq _020C5A2C
	bl RequestCommandProc
_020C5A2C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020C5A34: .word Unk_021CD040
_020C5A38: .word Unk_021CD320
_020C5A3C: .word Unk_021CD064
	arm_func_end SND_FlushCommand

	arm_func_start SND_WaitForCommandProc
SND_WaitForCommandProc: ; 0x020C5A40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r4, #0
_020C5A58:
	mov r0, r4
	bl SND_RecvCommandReply
	cmp r0, #0
	bne _020C5A58
	mov r0, r5
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl RequestCommandProc
	mov r0, r5
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r4, #1
_020C5A90:
	mov r0, r4
	bl SND_RecvCommandReply
	mov r0, r5
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	beq _020C5A90
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end SND_WaitForCommandProc

	arm_func_start SND_GetCurrentCommandTag
SND_GetCurrentCommandTag: ; 0x020C5AAC
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020C5AD4 ; =0x021CD040
	ldr r2, [r1, #8]
	cmp r2, #0
	ldreq r4, [r1, #4]
	ldrne r4, [r1, #0x20]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5AD4: .word Unk_021CD040
	arm_func_end SND_GetCurrentCommandTag

	arm_func_start SND_IsFinishedCommandTag
SND_IsFinishedCommandTag: ; 0x020C5AD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _020C5B24 ; =0x021CD040
	ldr r1, [r1, #4]
	cmp r4, r1
	bls _020C5B08
	sub r1, r4, r1
	cmp r1, #-0x80000000
	movlo r4, #0
	movhs r4, #1
	b _020C5B18
_020C5B08:
	sub r1, r1, r4
	cmp r1, #-0x80000000
	movlo r4, #1
	movhs r4, #0
_020C5B18:
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5B24: .word Unk_021CD040
	arm_func_end SND_IsFinishedCommandTag

	arm_func_start SND_CountFreeCommand
SND_CountFreeCommand: ; 0x020C5B28
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020C5B60 ; =0x021CD040
	mov r4, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _020C5B54
_020C5B44:
	ldr r1, [r1, #0]
	add r4, r4, #1
	cmp r1, #0
	bne _020C5B44
_020C5B54:
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5B60: .word Unk_021CD040
	arm_func_end SND_CountFreeCommand

	arm_func_start SND_CountReservedCommand
SND_CountReservedCommand: ; 0x020C5B64
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020C5B9C ; =0x021CD040
	mov r4, #0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020C5B90
_020C5B80:
	ldr r1, [r1, #0]
	add r4, r4, #1
	cmp r1, #0
	bne _020C5B80
_020C5B90:
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5B9C: .word Unk_021CD040
	arm_func_end SND_CountReservedCommand

	arm_func_start SND_CountWaitingCommand
SND_CountWaitingCommand: ; 0x020C5BA0
	stmfd sp!, {r4, lr}
	bl SND_CountFreeCommand
	mov r4, r0
	bl SND_CountReservedCommand
	rsb r1, r4, #0x100
	sub r0, r1, r0
	ldmia sp!, {r4, pc}
	arm_func_end SND_CountWaitingCommand

	arm_func_start PxiFifoCallback
PxiFifoCallback: ; 0x020C5BBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, r5
	bl SNDi_CallAlarmHandler
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end PxiFifoCallback

	arm_func_start InitPXI
InitPXI: ; 0x020C5BE0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020C5C3C ; =PxiFifoCallback
	mov r0, #7
	bl PXI_SetFifoRecvCallback
	bl IsCommandAvailable
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #7
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r6, #0x64
	mov r5, #7
	mov r4, #1
_020C5C1C:
	mov r0, r6
	bl OS_SpinWait
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020C5C1C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C5C3C: .word PxiFifoCallback
	arm_func_end InitPXI

	arm_func_start RequestCommandProc
RequestCommandProc: ; 0x020C5C40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #7
	mov r4, #0
_020C5C4C:
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _020C5C4C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end RequestCommandProc

	arm_func_start AllocCommand
AllocCommand: ; 0x020C5C68
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020C5CAC ; =0x021CD040
	ldr r4, [r1, #0]
	cmp r4, #0
	bne _020C5C8C
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r4, pc}
_020C5C8C:
	ldr r2, [r4, #0]
	str r2, [r1, #0]
	cmp r2, #0
	moveq r2, #0
	streq r2, [r1, #0x10]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5CAC: .word Unk_021CD040
	arm_func_end AllocCommand

	arm_func_start IsCommandAvailable
IsCommandAvailable: ; 0x020C5CB0
	stmfd sp!, {r4, lr}
	bl OS_IsRunOnEmulator
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	bl OS_DisableInterrupts
	ldr r1, _020C5CEC ; =0x04FFF200
	mov r2, #0x10
	str r2, [r1, #0]
	ldr r4, [r1, #0]
	bl OS_RestoreInterrupts
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5CEC: .word 0x04FFF200
	arm_func_end IsCommandAvailable

	.bss


	.global Unk_021CD040
Unk_021CD040: ; 0x021CD040
	.space 0x4

	.global Unk_021CD044
Unk_021CD044: ; 0x021CD044
	.space 0x4

	.global Unk_021CD048
Unk_021CD048: ; 0x021CD048
	.space 0x4

	.global Unk_021CD04C
Unk_021CD04C: ; 0x021CD04C
	.space 0x4

	.global Unk_021CD050
Unk_021CD050: ; 0x021CD050
	.space 0x4

	.global Unk_021CD054
Unk_021CD054: ; 0x021CD054
	.space 0x4

	.global Unk_021CD058
Unk_021CD058: ; 0x021CD058
	.space 0x4

	.global Unk_021CD05C
Unk_021CD05C: ; 0x021CD05C
	.space 0x4

	.global Unk_021CD060
Unk_021CD060: ; 0x021CD060
	.space 0x4

	.global Unk_021CD064
Unk_021CD064: ; 0x021CD064
	.space 0x3C

	.global Unk_021CD0A0
Unk_021CD0A0: ; 0x021CD0A0
	.space 0x280

	.global Unk_021CD320
Unk_021CD320: ; 0x021CD320
	.space 0x1800

