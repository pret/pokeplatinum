	.include "macros/function.inc"
	.include "include/unk_020B799C.inc"

	.extern Unk_021C8A00
	.extern Unk_021C8A10
	.extern Unk_021C8A1C
	

	.text


	arm_func_start NNS_SndInit
NNS_SndInit: ; 0x020B799C
	stmfd sp!, {r3, lr}
	ldr r0, _020B7A10 ; =0x021C8A00
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	mov r1, #1
	str r1, [r0, #0xc]
	bl SND_Init
	ldr r0, _020B7A14 ; =BeginSleep_dup1
	ldr r1, _020B7A10 ; =0x021C8A00
	mov r2, #0
	str r0, [r1, #0x10]
	ldr r0, _020B7A18 ; =EndSleep_dup1
	str r2, [r1, #0x14]
	str r0, [r1, #0x1c]
	ldr r0, _020B7A1C ; =0x021C8A10
	str r2, [r1, #0x20]
	bl PM_PrependPreSleepCallback
	ldr r0, _020B7A20 ; =0x021C8A1C
	bl PM_AppendPostSleepCallback
	bl NNSi_SndInitResourceMgr
	bl NNSi_SndCaptureInit
	bl NNSi_SndPlayerInit
	ldr r0, _020B7A10 ; =0x021C8A00
	mvn r1, #0
	strb r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B7A10: .word Unk_021C8A00
_020B7A14: .word BeginSleep_dup1
_020B7A18: .word EndSleep_dup1
_020B7A1C: .word Unk_021C8A10
_020B7A20: .word Unk_021C8A1C
	arm_func_end NNS_SndInit

	arm_func_start NNS_SndMain
NNS_SndMain: ; 0x020B7A24
	stmfd sp!, {r4, lr}
	mov r4, #0
_020B7A2C:
	mov r0, r4
	bl SND_RecvCommandReply
	cmp r0, #0
	bne _020B7A2C
	bl NNSi_SndPlayerMain
	bl NNSi_SndCaptureMain
	bl NNSi_SndArcStrmMain
	mov r0, #0
	bl SND_FlushCommand
	ldmia sp!, {r4, pc}
	arm_func_end NNS_SndMain

	arm_func_start NNS_SndSetMasterVolume
NNS_SndSetMasterVolume: ; 0x020B7A54
	ldr ip, _020B7A5C ; =SND_SetMasterVolume
	bx ip
	; .align 2, 0
_020B7A5C: .word SND_SetMasterVolume
	arm_func_end NNS_SndSetMasterVolume

	arm_func_start NNS_SndSetMonoFlag
NNS_SndSetMonoFlag: ; 0x020B7A60
	stmfd sp!, {r3, lr}
	cmp r0, #0
	beq _020B7A78
	mov r0, #0x40
	bl SND_SetMasterPan
	ldmia sp!, {r3, pc}
_020B7A78:
	bl SND_ResetMasterPan
	ldmia sp!, {r3, pc}
	arm_func_end NNS_SndSetMonoFlag

	arm_func_start BeginSleep_dup1
BeginSleep_dup1: ; 0x020B7A80
	stmfd sp!, {r4, lr}
	bl NNSi_SndCaptureBeginSleep
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl SND_StopTimer
	bl SND_GetCurrentCommandTag
	mov r4, r0
	mov r0, #1
	bl SND_FlushCommand
	mov r0, r4
	bl SND_WaitForCommandProc
	ldmia sp!, {r4, pc}
	arm_func_end BeginSleep_dup1

	arm_func_start EndSleep_dup1
EndSleep_dup1: ; 0x020B7AB8
	ldr ip, _020B7AC0 ; =NNSi_SndCaptureEndSleep
	bx ip
	; .align 2, 0
_020B7AC0: .word NNSi_SndCaptureEndSleep
	arm_func_end EndSleep_dup1

	.bss


	.global Unk_021C8A00
Unk_021C8A00: ; 0x021C8A00
	.space 0x4

	.global Unk_021C8A04
Unk_021C8A04: ; 0x021C8A04
	.space 0x4

	.global Unk_021C8A08
Unk_021C8A08: ; 0x021C8A08
	.space 0x4

	.global Unk_021C8A0C
Unk_021C8A0C: ; 0x021C8A0C
	.space 0x4

	.global Unk_021C8A10
Unk_021C8A10: ; 0x021C8A10
	.space 0xC

	.global Unk_021C8A1C
Unk_021C8A1C: ; 0x021C8A1C
	.space 0x24

	.global Unk_021C8A40
Unk_021C8A40: ; 0x021C8A40
	.space 0x23C0

