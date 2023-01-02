	.include "macros/function.inc"
	.include "include/unk_020BB070.inc"

	.extern Unk_021CBF30
	.extern Unk_021CBF3C
	.extern Unk_021CC5CC
	

	.text


	arm_func_start NNSi_SndArcStrmMain
NNSi_SndArcStrmMain: ; 0x020BB070
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020BB178 ; =0x021CC5CC
	ldr r4, _020BB17C ; =0x020FDAB0
	mov r5, #0
_020BB080:
	ldr r1, [r7, #0x110]
	mov r0, r1, lsl #0x1f
	movs r0, r0, asr #0x1f
	beq _020BB164
	ldr r0, [r7, #0x114]
	cmp r0, #0
	bne _020BB0A8
	mov r0, r7
	bl ForceStopStrm_dup2
	b _020BB164
_020BB0A8:
	mov r0, r1, lsl #0x1d
	movs r0, r0, asr #0x1f
	ldrne r0, [r7, #0x118]
	cmpne r0, #0
	beq _020BB0D4
	mov r0, r7
	bl NNS_SndStrmStart
	ldr r0, [r7, #0x110]
	orr r0, r0, #2
	bic r0, r0, #4
	str r0, [r7, #0x110]
_020BB0D4:
	ldr r0, [r7, #0x110]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _020BB164
	add r0, r7, #0xe8
	bl NNSi_SndFaderUpdate
	ldr r1, [r7, #0x154]
	add r0, r7, #0xe8
	mov r1, r1, lsl #1
	ldrsh r6, [r4, r1]
	bl NNSi_SndFaderGet
	mov r0, r0, asr #8
	ldr r1, [r7, #0x158]
	mov r0, r0, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r4, r0]
	ldrsh r2, [r4, r2]
	ldr r0, [r7, #0x15c]
	add r1, r1, r6
	add r6, r2, r1
	cmp r6, r0
	beq _020BB13C
	mov r0, r7
	mov r1, r6
	bl NNS_SndStrmSetVolume
	str r6, [r7, #0x15c]
_020BB13C:
	ldr r0, [r7, #0x110]
	mov r0, r0, lsl #0x1c
	movs r0, r0, asr #0x1f
	beq _020BB164
	add r0, r7, #0xe8
	bl NNSi_SndFaderIsFinished
	cmp r0, #0
	beq _020BB164
	mov r0, r7
	bl ForceStopStrm_dup2
_020BB164:
	add r5, r5, #1
	cmp r5, #4
	add r7, r7, #0x174
	blt _020BB080
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BB178: .word Unk_021CC5CC
_020BB17C: .word 0x020FDAB0
	arm_func_end NNSi_SndArcStrmMain

	arm_func_start FreePlayer
FreePlayer: ; 0x020BB180
	ldr r2, [r0, #0x14c]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2]
	strne r1, [r0, #0x14c]
	ldr r1, [r0, #0x110]
	bic r2, r1, #1
	bic r1, r2, #4
	bic r1, r1, #2
	str r1, [r0, #0x110]
	bx lr
	arm_func_end FreePlayer

	arm_func_start ForceStopStrm_dup2
ForceStopStrm_dup2: ; 0x020BB1AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020BB23C ; =0x021CC5A8
	bl OS_LockMutex
	ldr r0, _020BB240 ; =0x021CBF30
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020BB1D8
	add r0, r0, #0xc8
	add r0, r0, #0x400
	bl OS_LockMutex
_020BB1D8:
	ldr r0, [r4, #0x110]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _020BB1F0
	mov r0, r4
	bl NNS_SndStrmStop
_020BB1F0:
	ldr r0, [r4, #0x110]
	mov r0, r0, lsl #0x1f
	movs r0, r0, asr #0x1f
	beq _020BB20C
	ldr r1, [r4, #0x170]
	mov r0, r4
	blx r1
_020BB20C:
	mov r0, r4
	bl ShutdownPlayer_dup2
	ldr r0, _020BB23C ; =0x021CC5A8
	bl OS_UnlockMutex
	ldr r0, _020BB240 ; =0x021CBF30
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0xc8
	add r0, r0, #0x400
	bl OS_UnlockMutex
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BB23C: .word 0x021CC5A8
_020BB240: .word Unk_021CBF30
	arm_func_end ForceStopStrm_dup2

	arm_func_start ShutdownPlayer_dup2
ShutdownPlayer_dup2: ; 0x020BB244
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x110]
	mov r1, r1, lsl #0x1f
	movs r1, r1, asr #0x1f
	ldmeqia sp!, {r4, pc}
	bl FreeChannel
	ldr r1, [r4, #0x168]
	mov r0, r4
	blx r1
	ldr r0, _020BB2A0 ; =0x021CC5C0
	mov r1, r4
	bl RemoveCommandByPlayer
	ldr r0, _020BB2A4 ; =0x021CBF30
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020BB294
	mov r1, r4
	add r0, r0, #0x4e0
	bl RemoveCommandByPlayer
_020BB294:
	mov r0, r4
	bl FreePlayer
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BB2A0: .word 0x021CC5C0
_020BB2A4: .word Unk_021CBF30
	arm_func_end ShutdownPlayer_dup2

	arm_func_start FreeChannel
FreeChannel: ; 0x020BB2A8
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x120]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	subs r1, r1, #1
	str r1, [r0, #0x120]
	ldmneia sp!, {r3, pc}
	bl NNS_SndStrmFreeChannel
	ldmia sp!, {r3, pc}
	arm_func_end FreeChannel

	arm_func_start RemoveCommandByPlayer
RemoveCommandByPlayer: ; 0x020BB2CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, r8
	mov r1, #0
	bl NNS_FndGetNextListObject
	movs r5, r0
	beq _020BB330
_020BB2F4:
	mov r0, r8
	mov r1, r5
	bl NNS_FndGetNextListObject
	ldr r1, [r5, #8]
	mov r6, r0
	cmp r1, r7
	bne _020BB324
	mov r0, r8
	mov r1, r5
	bl NNS_FndRemoveListObject
	mov r0, r5
	bl FreeCommandBuffer
_020BB324:
	mov r5, r6
	cmp r6, #0
	bne _020BB2F4
_020BB330:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end RemoveCommandByPlayer

	arm_func_start FreeCommandBuffer
FreeCommandBuffer: ; 0x020BB33C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	ldr r0, _020BB364 ; =0x021CBF3C
	mov r1, r5
	bl NNS_FndAppendListObject
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020BB364: .word Unk_021CBF3C
	arm_func_end FreeCommandBuffer

	.bss


	.global Unk_021CBF30
Unk_021CBF30: ; 0x021CBF30
	.space 0x4

	.global Unk_021CBF34
Unk_021CBF34: ; 0x021CBF34
	.space 0x4

	.global Unk_021CBF38
Unk_021CBF38: ; 0x021CBF38
	.space 0x4

	.global Unk_021CBF3C
Unk_021CBF3C: ; 0x021CBF3C
	.space 0xC

	.global Unk_021CBF48
Unk_021CBF48: ; 0x021CBF48
	.space 0x18

	.global Unk_021CBF60
Unk_021CBF60: ; 0x021CBF60
	.space 0x180

	.global Unk_021CC0E0
Unk_021CC0E0: ; 0x021CC0E0
	.space 0x4EC

	.global Unk_021CC5CC
Unk_021CC5CC: ; 0x021CC5CC
	.space 0x5D0

