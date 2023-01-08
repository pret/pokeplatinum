	.include "macros/function.inc"
	.include "include/capture.inc"

	.extern Unk_021CB8F4
	.extern Unk_021CB8FC
	.extern Unk_021CB93C
	.extern Unk_021CB990
	

	.text


	arm_func_start NNS_SndCaptureStartReverb
NNS_SndCaptureStartReverb: ; 0x020B8ED0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	mov r0, #0
	mov r4, r1
	mov r7, r2
	mov r6, r3
	bl NNS_SndCaptureStopReverb
	ldr r0, _020B8F74 ; =0x021CB8F4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	addne sp, sp, #0x2c
	mov r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r1, r5
	mov r2, r4
	bl MIi_CpuClear32
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x40]
	str r6, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r1, #0x7f
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r1, r5
	mov r3, r4, lsr #1
	add r2, r5, r4, lsr #1
	str r0, [sp, #0x28]
	bl NNSi_SndCaptureStart
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020B8F74: .word Unk_021CB8F4
	arm_func_end NNS_SndCaptureStartReverb

	arm_func_start NNS_SndCaptureSetReverbVolume
NNS_SndCaptureSetReverbVolume: ; 0x020B8F78
	stmfd sp!, {r3, lr}
	ldr r2, _020B8FB4 ; =0x021CB8F4
	mov r3, r0
	ldr r0, [r2, #0x48]
	mov r2, r1
	cmp r0, #0
	ldr r1, _020B8FB8 ; =0x021CB93C
	ldmeqia sp!, {r3, pc}
	ldr r0, [r1, #4]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r1, #0x3c
	mov r1, r3, lsl #8
	bl NNSi_SndFaderSet
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B8FB4: .word Unk_021CB8F4
_020B8FB8: .word Unk_021CB93C
	arm_func_end NNS_SndCaptureSetReverbVolume

	arm_func_start NNS_SndCaptureStopReverb
NNS_SndCaptureStopReverb: ; 0x020B8FBC
	stmfd sp!, {r4, lr}
	ldr r1, _020B900C ; =0x021CB8F4
	mov r2, r0
	ldr r0, [r1, #0x48]
	ldr r4, _020B9010 ; =0x021CB93C
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	cmp r2, #0
	bne _020B8FF4
	bl NNSi_SndCaptureStop
	ldmia sp!, {r4, pc}
_020B8FF4:
	add r0, r4, #0x3c
	mov r1, #0
	bl NNSi_SndFaderSet
	mov r0, #1
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B900C: .word Unk_021CB8F4
_020B9010: .word Unk_021CB93C
	arm_func_end NNS_SndCaptureStopReverb

	arm_func_start NNS_SndCaptureStartEffect
NNS_SndCaptureStartEffect: ; 0x020B9014
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	mov r4, r1
	mov r7, r2
	mov r6, r3
	bl NNS_SndCaptureStopEffect
	ldr r0, _020B90BC ; =0x021CB8F4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	addne sp, sp, #0x2c
	mov r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r1, r5
	mov r2, r4
	bl MIi_CpuClear32
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	str r7, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, #0x7f
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr ip, [sp, #0x48]
	mov r1, r5
	mov r3, r4, lsr #1
	add r2, r5, r4, lsr #1
	str ip, [sp, #0x28]
	bl NNSi_SndCaptureStart
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020B90BC: .word Unk_021CB8F4
	arm_func_end NNS_SndCaptureStartEffect

	arm_func_start NNS_SndCaptureStopEffect
NNS_SndCaptureStopEffect: ; 0x020B90C0
	stmfd sp!, {r3, lr}
	ldr r0, _020B90E8 ; =0x021CB8F4
	ldr r1, [r0, #0x48]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x4c]
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	bl NNSi_SndCaptureStop
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B90E8: .word Unk_021CB8F4
	arm_func_end NNS_SndCaptureStopEffect

	arm_func_start NNS_SndCaptureIsActive
NNS_SndCaptureIsActive: ; 0x020B90EC
	ldr r0, _020B90F8 ; =0x021CB8F4
	ldr r0, [r0, #0x48]
	bx lr
	; .align 2, 0
_020B90F8: .word Unk_021CB8F4
	arm_func_end NNS_SndCaptureIsActive

	arm_func_start NNSi_SndCaptureInit
NNSi_SndCaptureInit: ; 0x020B90FC
	ldr r0, _020B9110 ; =0x021CB8F4
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #0x48]
	bx lr
	; .align 2, 0
_020B9110: .word Unk_021CB8F4
	arm_func_end NNSi_SndCaptureInit

	arm_func_start NNSi_SndCaptureMain
NNSi_SndCaptureMain: ; 0x020B9114
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020B9194 ; =0x021CB8F4
	ldr r4, _020B9198 ; =0x021CB93C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r4, #0x3c
	bl NNSi_SndFaderUpdate
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _020B9164
	add r0, r4, #0x3c
	bl NNSi_SndFaderIsFinished
	cmp r0, #0
	beq _020B9164
	bl NNSi_SndCaptureStop
	ldmia sp!, {r3, r4, r5, pc}
_020B9164:
	add r0, r4, #0x3c
	bl NNSi_SndFaderGet
	ldr r1, [r4, #0x50]
	mov r5, r0, asr #8
	cmp r5, r1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x24]
	mov r1, r5
	mov r2, #0
	bl SND_SetChannelVolume
	str r5, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B9194: .word Unk_021CB8F4
_020B9198: .word Unk_021CB93C
	arm_func_end NNSi_SndCaptureMain

	arm_func_start NNSi_SndCaptureStart
NNSi_SndCaptureStart: ; 0x020B919C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	str r1, [sp, #0x1c]
	mov r1, #0
	str r0, [sp, #0x18]
	str r1, [sp, #0x3c]
	mov sl, r3
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x1c]
	mov r1, sl
	str r2, [sp, #0x38]
	mov r4, r2
	sub r5, r2, #1
	ldr sb, [sp, #0x74]
	ldr r8, [sp, #0x7c]
	ldr r6, _020B94FC ; =0x021CB93C
	bl DC_FlushRange
	ldr r0, [sp, #0x20]
	mov r1, sl
	bl DC_FlushRange
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x78]
	cmp r0, #1
	moveq r7, #1
	ldr r0, _020B9500 ; =0x00FFB0FF
	movne r7, #0
	bl _s32_div_f
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	beq _020B926C
	ldr r1, [sp, #0x34]
	mov r0, sl
	add r1, r1, #0x10
	bic r1, r1, #0x1f
	str r1, [sp, #0x34]
	mov r1, r1, asr #5
	str r1, [sp, #0x2c]
	cmp r7, #0
	ldr r1, [sp, #0x88]
	moveq r0, sl, lsr #1
	bl _u32_div_f
	ldr r1, [sp, #0x2c]
	mov fp, #0x20
	mul r0, r1, r0
	str r0, [sp, #0x30]
	cmp r7, #0
	ldr r0, [sp, #0x2c]
	moveq fp, fp, lsr #1
	mul r0, fp, r0
	mov fp, r0
_020B926C:
	cmp r7, #0
	movne r0, #0
	strne r0, [sp, #0x28]
	moveq r0, #1
	streq r0, [sp, #0x28]
	cmp r7, #0
	movne r0, #1
	strne r0, [sp, #0x24]
	moveq r0, #0
	streq r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	orr r4, r4, #3
	cmp r0, #2
	ldr r0, [sp, #0x3c]
	orr r0, r0, #0xa
	str r0, [sp, #0x3c]
	strne r0, [sp, #0x38]
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	beq _020B92D0
	bl NNS_SndAllocAlarm
	movs r5, r0
	addmi sp, sp, #0x40
	movmi r0, #0
	ldmmiia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B92D0:
	mov r0, r4
	bl NNS_SndLockCapture
	cmp r0, #0
	bne _020B92FC
	cmp r5, #0
	blt _020B92F0
	mov r0, r5
	bl NNS_SndFreeAlarm
_020B92F0:
	add sp, sp, #0x40
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B92FC:
	ldr r0, [sp, #0x3c]
	bl NNS_SndLockChannel
	cmp r0, #0
	bne _020B9330
	cmp r5, #0
	blt _020B931C
	mov r0, r5
	bl NNS_SndFreeAlarm
_020B931C:
	mov r0, r4
	bl NNS_SndUnlockCapture
	add sp, sp, #0x40
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B9330:
	mov r7, sl, lsr #2
	mov r0, #0
	stmia sp, {r0, r7, r8}
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	cmp sb, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x80]
	movne r3, #1
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x1c]
	moveq r3, #2
	mov r0, #1
	bl SND_SetupChannelPcm
	ldr r1, [sp, #0x6c]
	str sb, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x24]
	str r0, [sp, #8]
	ldr r2, [sp, #0x1c]
	mov r0, #0
	mov r3, r7
	bl SND_SetupCapture
	mov r0, #0
	stmia sp, {r0, r7, r8}
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	cmp sb, #0
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x84]
	movne r3, #1
	str r2, [sp, #0x14]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x20]
	moveq r3, #2
	mov r0, #3
	bl SND_SetupChannelPcm
	ldr r2, [sp, #0x6c]
	str sb, [sp]
	str r2, [sp, #4]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x24]
	str r0, [sp, #8]
	ldr r2, [sp, #0x20]
	mov r3, r7
	mov r0, #1
	bl SND_SetupCapture
	cmp r5, #0
	blt _020B9418
	ldr r1, [sp, #0x30]
	ldr r3, _020B9504 ; =AlarmCallback_dup2
	ldr r2, [sp, #0x30]
	mov r0, r5
	add r1, r1, fp
	str r6, [sp]
	bl SND_SetupAlarm
_020B9418:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _020B9438
	mov r0, #1
	mov r2, r0
	mov r3, r0
	mov r1, #2
	bl SND_SetOutputSelector
_020B9438:
	cmp r5, #0
	movge r0, #1
	movge r2, r0, lsl r5
	ldr r0, [sp, #0x38]
	movlt r2, #0
	mov r1, r4
	mov r3, #0
	bl SND_StartTimer
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x38]
	str r0, [r6, #4]
	mov r0, #1
	str r2, [r6, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [r6, #0]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x68]
	str r2, [r6, #0xc]
	ldr r2, [sp, #0x20]
	str r0, [r6, #0x20]
	ldr r1, [sp, #0x88]
	mov r0, sl
	str r4, [r6, #0x28]
	str r5, [r6, #0x2c]
	str r3, [r6, #8]
	str r2, [r6, #0x10]
	str sl, [r6, #0x14]
	bl _u32_div_f
	ldr r3, [sp, #0x88]
	ldr r2, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	str r0, [r6, #0x18]
	mov r4, #0
	add r0, r6, #0x3c
	str r4, [r6, #0x1c]
	str r3, [r6, #0x30]
	str r2, [r6, #0x34]
	str r1, [r6, #0x38]
	str r8, [r6, #0x50]
	bl NNSi_SndFaderInit
	add r0, r6, #0x3c
	mov r1, r8, lsl #8
	mov r2, #1
	bl NNSi_SndFaderSet
	mov r0, r4
	str r0, [r6, #0x4c]
	mov r0, #1
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B94FC: .word Unk_021CB93C
_020B9500: .word 0x00FFB0FF
_020B9504: .word AlarmCallback_dup2
	arm_func_end NNSi_SndCaptureStart

	arm_func_start NNSi_SndCaptureStop
NNSi_SndCaptureStop: ; 0x020B9508
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020B95EC ; =0x021CB8F4
	ldr r4, _020B95F0 ; =0x021CB93C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0x2c]
	mov r3, #0
	cmp r1, #0
	movge r7, #1
	movlt r7, #0
	cmp r7, #0
	movne r0, #1
	movne r2, r0, lsl r1
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	moveq r2, #0
	bl SND_StopTimer
	cmp r7, #0
	beq _020B9590
	bl SND_GetCurrentCommandTag
	mov r5, r0
	mov r0, #1
	bl SND_FlushCommand
	mov r0, r5
	bl SND_WaitForCommandProc
	ldr r6, _020B95F4 ; =0x021CB8FC
	mov r5, #0
_020B9578:
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl OS_ReceiveMessage
	cmp r0, #0
	bne _020B9578
_020B9590:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _020B95A0
	bl NNS_SndUnlockCapture
_020B95A0:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _020B95B0
	bl NNS_SndUnlockChannel
_020B95B0:
	cmp r7, #0
	beq _020B95C0
	ldr r0, [r4, #0x2c]
	bl NNS_SndFreeAlarm
_020B95C0:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _020B95E0
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl SND_SetOutputSelector
_020B95E0:
	mov r0, #0
	str r0, [r4, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B95EC: .word Unk_021CB8F4
_020B95F0: .word Unk_021CB93C
_020B95F4: .word Unk_021CB8FC
	arm_func_end NNSi_SndCaptureStop

	arm_func_start NNSi_SndCaptureBeginSleep
NNSi_SndCaptureBeginSleep: ; 0x020B95F8
	stmfd sp!, {r4, lr}
	ldr r0, _020B9650 ; =0x021CB8F4
	ldr r3, _020B9654 ; =0x021CB93C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r3, #0x2c]
	cmp r1, #0
	movge r0, #1
	movge r2, r0, lsl r1
	ldr r0, [r3, #0x24]
	ldr r1, [r3, #0x28]
	movlt r2, #0
	mov r3, #0
	bl SND_StopTimer
	bl SND_GetCurrentCommandTag
	mov r4, r0
	mov r0, #1
	bl SND_FlushCommand
	mov r0, r4
	bl SND_WaitForCommandProc
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B9650: .word Unk_021CB8F4
_020B9654: .word Unk_021CB93C
	arm_func_end NNSi_SndCaptureBeginSleep

	arm_func_start NNSi_SndCaptureEndSleep
NNSi_SndCaptureEndSleep: ; 0x020B9658
	stmfd sp!, {r4, lr}
	ldr r0, _020B96D4 ; =0x021CB8F4
	ldr r4, _020B96D8 ; =0x021CB93C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0xc]
	mov r0, #0
	ldr r2, [r4, #0x14]
	str r0, [r4, #0x1c]
	bl MIi_CpuClear32
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	mov r0, #0
	bl MIi_CpuClear32
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl DC_FlushRange
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl DC_FlushRange
	ldr r1, [r4, #0x2c]
	mov r3, #0
	cmp r1, #0
	movge r0, #1
	movge r2, r0, lsl r1
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	movlt r2, #0
	bl SND_StartTimer
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B96D4: .word Unk_021CB8F4
_020B96D8: .word Unk_021CB93C
	arm_func_end NNSi_SndCaptureEndSleep

	arm_func_start AlarmCallback_dup2
AlarmCallback_dup2: ; 0x020B96DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r6, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	ldr r0, _020B97BC ; =0x021CB8F4
	mul r2, r6, r1
	ldr r4, [r7, #0xc]
	ldr r3, [r7, #0x10]
	ldr r1, [r0, #0]
	add r4, r4, r2
	cmp r1, #0
	add r5, r3, r2
	beq _020B9764
	ldr r1, [r0, #4]
	mov r0, #0x14
	mul r3, r1, r0
	ldr r1, _020B97C0 ; =0x021CB990
	ldr r0, _020B97C4 ; =0x021CB8FC
	str r7, [r1, r3]
	add r1, r1, r3
	str r6, [r1, #4]
	str r2, [r1, #8]
	str r4, [r1, #0xc]
	mov r2, #0
	str r5, [r1, #0x10]
	bl OS_SendMessage
	ldr r0, _020B97BC ; =0x021CB8F4
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	cmp r1, #8
	movge r1, #0
	strge r1, [r0, #4]
	b _020B979C
_020B9764:
	mov r0, r4
	mov r1, r6
	bl DC_InvalidateRange
	mov r0, r5
	mov r1, r6
	bl DC_InvalidateRange
	ldr r1, [r7, #0x38]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r7, #8]
	ldr r4, [r7, #0x34]
	mov r1, r5
	mov r2, r6
	blx r4
_020B979C:
	ldr r0, [r7, #0x1c]
	add r1, r0, #1
	str r1, [r7, #0x1c]
	ldr r0, [r7, #0x30]
	cmp r1, r0
	movge r0, #0
	strge r0, [r7, #0x1c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B97BC: .word Unk_021CB8F4
_020B97C0: .word Unk_021CB990
_020B97C4: .word Unk_021CB8FC
	arm_func_end AlarmCallback_dup2

	.bss


	.global Unk_021CB8F4
Unk_021CB8F4: ; 0x021CB8F4
	.space 0x4

	.global Unk_021CB8F8
Unk_021CB8F8: ; 0x021CB8F8
	.space 0x4

	.global Unk_021CB8FC
Unk_021CB8FC: ; 0x021CB8FC
	.space 0x20

	.global Unk_021CB91C
Unk_021CB91C: ; 0x021CB91C
	.space 0x20

	.global Unk_021CB93C
Unk_021CB93C: ; 0x021CB93C
	.space 0x54

	.global Unk_021CB990
Unk_021CB990: ; 0x021CB990
	.space 0xA0

	.global Unk_021CBA30
Unk_021CBA30: ; 0x021CBA30
	.space 0xC0

	.global Unk_021CBAF0
Unk_021CBAF0: ; 0x021CBAF0
	.space 0x400

