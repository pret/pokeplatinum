	.include "macros/function.inc"
	.include "include/unk_020C50D4.inc"

	

	.text


	arm_func_start SND_StopSeq
SND_StopSeq: ; 0x020C50D4
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #1
	str r2, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_StopSeq

	arm_func_start SND_PrepareSeq
SND_PrepareSeq: ; 0x020C50F4
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #2
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_PrepareSeq

	arm_func_start SND_StartPreparedSeq
SND_StartPreparedSeq: ; 0x020C511C
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #3
	str r2, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_StartPreparedSeq

	arm_func_start SND_PauseSeq
SND_PauseSeq: ; 0x020C513C
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #4
	str r3, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_PauseSeq

	arm_func_start SND_SetPlayerTempoRatio
SND_SetPlayerTempoRatio: ; 0x020C515C
	ldr ip, _020C5170 ; =SNDi_SetPlayerParam
	mov r2, r1
	mov r1, #0x1a
	mov r3, #2
	bx ip
	; .align 2, 0
_020C5170: .word SNDi_SetPlayerParam
	arm_func_end SND_SetPlayerTempoRatio

	arm_func_start SND_SetPlayerVolume
SND_SetPlayerVolume: ; 0x020C5174
	ldr ip, _020C5188 ; =SNDi_SetPlayerParam
	mov r2, r1
	mov r1, #6
	mov r3, #2
	bx ip
	; .align 2, 0
_020C5188: .word SNDi_SetPlayerParam
	arm_func_end SND_SetPlayerVolume

	arm_func_start SND_SetPlayerChannelPriority
SND_SetPlayerChannelPriority: ; 0x020C518C
	ldr ip, _020C51A0 ; =SNDi_SetPlayerParam
	mov r2, r1
	mov r1, #4
	mov r3, #1
	bx ip
	; .align 2, 0
_020C51A0: .word SNDi_SetPlayerParam
	arm_func_end SND_SetPlayerChannelPriority

	arm_func_start SND_SetTrackPitch
SND_SetTrackPitch: ; 0x020C51A4
	stmfd sp!, {r3, lr}
	mov r3, r2
	mov ip, #2
	mov r2, #0xc
	str ip, [sp]
	bl SNDi_SetTrackParam
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetTrackPitch

	arm_func_start SND_SetTrackPan
SND_SetTrackPan: ; 0x020C51C0
	stmfd sp!, {r3, lr}
	mov r3, r2
	mov ip, #1
	mov r2, #9
	str ip, [sp]
	bl SNDi_SetTrackParam
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetTrackPan

	arm_func_start SND_SetTrackAllocatableChannel
SND_SetTrackAllocatableChannel: ; 0x020C51DC
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov ip, #0
	mov r1, r0
	mov r2, lr
	mov r0, #9
	str ip, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetTrackAllocatableChannel

	arm_func_start SND_StartTimer
SND_StartTimer: ; 0x020C5204
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #0xc
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_StartTimer

	arm_func_start SND_StopTimer
SND_StopTimer: ; 0x020C522C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r2
	mov sb, r0
	mov r8, r1
	mov r6, r3
	mov r5, r7
	mov r4, #0
	b _020C5264
_020C524C:
	tst r5, #1
	beq _020C525C
	mov r0, r4
	bl SNDi_IncAlarmId
_020C525C:
	add r4, r4, #1
	mov r5, r5, lsr #1
_020C5264:
	cmp r4, #8
	bge _020C5274
	cmp r5, #0
	bne _020C524C
_020C5274:
	mov r1, sb
	mov r2, r8
	mov r3, r7
	mov r0, #0xd
	str r6, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end SND_StopTimer

	arm_func_start SND_SetupCapture
SND_SetupCapture: ; 0x020C5290
	stmfd sp!, {r3, lr}
	mov r1, r1, lsl #0x1e
	orr r0, r1, r0, lsl #31
	ldr ip, [sp, #8]
	mov r1, r2
	orr r0, r0, ip, lsl #29
	ldr r2, [sp, #0xc]
	mov lr, #0
	orr r0, r0, r2, lsl #28
	ldr ip, [sp, #0x10]
	mov r2, r3
	orr r3, r0, ip, lsl #27
	mov r0, #0x11
	str lr, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetupCapture

	arm_func_start SND_SetupAlarm
SND_SetupAlarm: ; 0x020C52D0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	mov r5, r1
	ldr r2, [sp, #0x18]
	mov r6, r0
	mov r1, r3
	bl SNDi_SetAlarmHandler
	str r0, [sp]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	mov r0, #0x12
	bl PushCommand_impl
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end SND_SetupAlarm

	arm_func_start SND_LockChannel
SND_LockChannel: ; 0x020C5310
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1a
	str r3, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_LockChannel

	arm_func_start SND_UnlockChannel
SND_UnlockChannel: ; 0x020C5330
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1b
	str r3, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_UnlockChannel

	arm_func_start SND_SetChannelTimer
SND_SetChannelTimer: ; 0x020C5350
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x13
	str r3, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetChannelTimer

	arm_func_start SND_SetChannelVolume
SND_SetChannelVolume: ; 0x020C5370
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov ip, #0
	mov r1, r0
	mov r2, lr
	mov r0, #0x14
	str ip, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetChannelVolume

	arm_func_start SND_SetChannelPan
SND_SetChannelPan: ; 0x020C5398
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x15
	str r3, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetChannelPan

	arm_func_start SND_SetupChannelPcm
SND_SetupChannelPcm: ; 0x020C53B8
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, [sp, #0x1c]
	mov r1, r1, lsl #0x18
	orr r4, r1, r3, lsl #26
	ldr r5, [sp, #0x24]
	mov r1, ip, lsl #0x16
	ldr r3, [sp, #0x18]
	ldr ip, [sp, #0x10]
	orr r4, r4, r5, lsl #16
	orr r4, ip, r4
	ldr lr, [sp, #0x20]
	orr r3, r1, r3, lsl #24
	ldr ip, [sp, #0x14]
	orr r1, r0, lr, lsl #16
	orr r3, ip, r3
	mov r0, #0xe
	str r4, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end SND_SetupChannelPcm

	arm_func_start SND_InvalidateSeqData
SND_InvalidateSeqData: ; 0x020C5404
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1e
	str r3, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_InvalidateSeqData

	arm_func_start SND_InvalidateBankData
SND_InvalidateBankData: ; 0x020C5424
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1f
	str r3, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_InvalidateBankData

	arm_func_start SND_InvalidateWaveData
SND_InvalidateWaveData: ; 0x020C5444
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x20
	str r3, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_InvalidateWaveData

	arm_func_start SND_SetMasterVolume
SND_SetMasterVolume: ; 0x020C5464
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #0x17
	str r2, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetMasterVolume

	arm_func_start SND_SetOutputSelector
SND_SetOutputSelector: ; 0x020C5484
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #0x19
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetOutputSelector

	arm_func_start SND_SetMasterPan
SND_SetMasterPan: ; 0x020C54AC
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #0x18
	str r2, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_SetMasterPan

	arm_func_start SND_ResetMasterPan
SND_ResetMasterPan: ; 0x020C54CC
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r0, #0x18
	mov r3, r2
	sub r1, r0, #0x19
	str r2, [sp]
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SND_ResetMasterPan

	arm_func_start SNDi_SetPlayerParam
SNDi_SetPlayerParam: ; 0x020C54EC
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #6
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SNDi_SetPlayerParam

	arm_func_start SNDi_SetTrackParam
SNDi_SetTrackParam: ; 0x020C5514
	stmfd sp!, {r3, lr}
	ldr ip, [sp, #8]
	mov lr, r2
	str r3, [sp]
	mov r2, r1
	orr r1, r0, ip, lsl #24
	mov r3, lr
	mov r0, #7
	bl PushCommand_impl
	ldmia sp!, {r3, pc}
	arm_func_end SNDi_SetTrackParam

	arm_func_start PushCommand_impl
PushCommand_impl: ; 0x020C553C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl SND_AllocCommand
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	str r7, [r0, #4]
	str r6, [r0, #8]
	str r5, [r0, #0xc]
	ldr r1, [sp, #0x18]
	str r4, [r0, #0x10]
	str r1, [r0, #0x14]
	bl SND_PushCommand
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end PushCommand_impl