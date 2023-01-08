	.include "macros/function.inc"
	.include "include/waveout.inc"

	.extern Unk_021CAE0C
	

	.text


	arm_func_start NNS_SndWaveOutAllocChannel
NNS_SndWaveOutAllocChannel: ; 0x020B7C00
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r0, r0, lsl r4
	bl NNS_SndLockChannel
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0x14
	mul r0, r4, r0
	ldr r2, _020B7C40 ; =0x021CAE0C
	mov r1, #0
	str r4, [r2, r0]
	add r0, r2, r0
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B7C40: .word Unk_021CAE0C
	arm_func_end NNS_SndWaveOutAllocChannel

	arm_func_start NNS_SndWaveOutFreeChannel
NNS_SndWaveOutFreeChannel: ; 0x020B7C44
	ldr r0, [r0, #0]
	mov r1, #1
	ldr ip, _020B7C58 ; =NNS_SndUnlockChannel
	mov r0, r1, lsl r0
	bx ip
	; .align 2, 0
_020B7C58: .word NNS_SndUnlockChannel
	arm_func_end NNS_SndWaveOutFreeChannel

	arm_func_start NNS_SndWaveOutStart
NNS_SndWaveOutStart: ; 0x020B7C5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x18
	movs r8, r1
	mov sb, r0
	mov r7, r2
	mov r6, r3
	beq _020B7C84
	cmp r8, #1
	beq _020B7C98
	b _020B7CA8
_020B7C84:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	mov r4, r1, asr #2
	rsb r5, r4, r0, asr #2
	b _020B7CA8
_020B7C98:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	mov r4, r1, asr #1
	rsb r5, r4, r0, asr #1
_020B7CA8:
	ldr r2, [sp, #0x40]
	ldr r0, _020B7D74 ; =0xD87F8000
	mov r3, r2, asr #0x1f
	mov r1, #0x7f
	bl _ull_div
	ldr r2, [sp, #0x48]
	mov r3, r2, asr #0x1f
	bl _ull_div
	cmp r1, #0
	mov r2, #0x10
	cmpeq r0, #0x10
	mov r3, #0
	movlo r0, r2
	blo _020B7CF0
	ldr r2, _020B7D78 ; =0x0000FFFF
	cmp r1, r3
	cmpeq r0, r2
	movhi r0, r2
_020B7CF0:
	ldr r1, [sp, #0x44]
	stmia sp, {r4, r5}
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	cmp r6, #0
	movne r3, #1
	ldr r1, [sp, #0x4c]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sb]
	moveq r3, #2
	mov r1, r8
	mov r2, r7
	bl SND_SetupChannelPcm
	mov r1, #0
	ldr r0, [sb]
	mov r2, #1
	mov r0, r2, lsl r0
	mov r2, r1
	mov r3, r1
	bl SND_StartTimer
	mov r0, #1
	str r0, [sb, #8]
	mov r0, #0
	str r0, [sb, #0xc]
	bl SND_GetCurrentCommandTag
	str r0, [sb, #0x10]
	ldr r1, [sp, #0x40]
	mov r0, #1
	str r1, [sb, #4]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020B7D74: .word 0xD87F8000
_020B7D78: .word 0x0000FFFF
	arm_func_end NNS_SndWaveOutStart

	arm_func_start NNS_SndWaveOutStop
NNS_SndWaveOutStop: ; 0x020B7D7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0]
	mov r2, #1
	mov r1, #0
	mov r0, r2, lsl r0
	mov r2, r1
	mov r3, r1
	bl SND_StopTimer
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end NNS_SndWaveOutStop

	arm_func_start NNS_SndWaveOutSetVolume
NNS_SndWaveOutSetVolume: ; 0x020B7DB8
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	mov r2, #1
	mov r0, r2, lsl r0
	mov r2, #0
	bl SND_SetChannelVolume
	ldmia sp!, {r3, pc}
	arm_func_end NNS_SndWaveOutSetVolume

	arm_func_start NNS_SndWaveOutSetSpeed
NNS_SndWaveOutSetSpeed: ; 0x020B7DE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #4]
	ldr r0, _020B7E5C ; =0xD87F8000
	mov r3, r2, asr #0x1f
	mov r1, #0x7f
	bl _ull_div
	mov r2, r4
	mov r3, r4, asr #0x1f
	bl _ull_div
	mov r3, r0
	cmp r1, #0
	mov r0, #0x10
	cmpeq r3, #0x10
	mov r2, #0
	movlo r3, r0
	blo _020B7E44
	ldr r0, _020B7E60 ; =0x0000FFFF
	cmp r1, r2
	cmpeq r3, r0
	movhi r3, r0
_020B7E44:
	ldr r0, [r5, #0]
	mov r1, #1
	mov r0, r1, lsl r0
	mov r1, r3
	bl SND_SetChannelTimer
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B7E5C: .word 0xD87F8000
_020B7E60: .word 0x0000FFFF
	arm_func_end NNS_SndWaveOutSetSpeed

	arm_func_start NNS_SndWaveOutSetPan
NNS_SndWaveOutSetPan: ; 0x020B7E64
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	mov r2, #1
	mov r0, r2, lsl r0
	bl SND_SetChannelPan
	ldmia sp!, {r3, pc}
	arm_func_end NNS_SndWaveOutSetPan

	arm_func_start NNS_SndWaveOutIsPlaying
NNS_SndWaveOutIsPlaying: ; 0x020B7E88
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020B7EC4
	ldr r0, [r4, #0x10]
	bl SND_IsFinishedCommandTag
	cmp r0, #0
	mov r0, #1
	ldmeqia sp!, {r4, pc}
	str r0, [r4, #0xc]
_020B7EC4:
	bl SND_GetChannelStatus
	ldr r1, [r4, #0]
	mov r2, #1
	tst r0, r2, lsl r1
	movne r0, r2
	moveq r0, #0
	streq r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end NNS_SndWaveOutIsPlaying

	.bss


	.global Unk_021CAE0C
Unk_021CAE0C: ; 0x021CAE0C
	.space 0x140

