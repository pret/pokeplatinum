	.include "macros/function.inc"
	.include "include/unk_020CC544.inc"

	

	.text


	arm_func_start CARDi_SetTask
CARDi_SetTask: ; 0x020CC544
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CC57C ; =0x021CEE20
	mov r5, r0
	ldr r1, [r4, #0x108]
	add r0, r4, #0x44
	bl OS_SetThreadPriority
	ldr r1, [r4, #0x114]
	add r0, r4, #0x44
	orr r1, r1, #8
	str r0, [r4, #0x104]
	str r5, [r4, #0x40]
	str r1, [r4, #0x114]
	bl OS_WakeupThreadDirect
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CC57C: .word 0x021CEE20
	arm_func_end CARDi_SetTask

	arm_func_start CARDi_LockResource
CARDi_LockResource: ; 0x020CC580
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020CC600 ; =0x021CEE20
	mov r8, r0
	mov r7, r1
	bl OS_DisableInterrupts
	ldr r1, [r4, #8]
	mov r5, r0
	cmp r1, r8
	bne _020CC5B8
	ldr r0, [r4, #0x18]
	cmp r0, r7
	beq _020CC5DC
	bl OS_Terminate
	b _020CC5DC
_020CC5B8:
	mvn r6, #2
	b _020CC5C8
_020CC5C0:
	add r0, r4, #0x10
	bl OS_SleepThread
_020CC5C8:
	ldr r0, [r4, #8]
	cmp r0, r6
	bne _020CC5C0
	str r8, [r4, #8]
	str r7, [r4, #0x18]
_020CC5DC:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0]
	add r2, r0, #1
	mov r0, r5
	str r2, [r4, #0xc]
	mov r2, #0
	str r2, [r1, #0]
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020CC600: .word 0x021CEE20
	arm_func_end CARDi_LockResource

	arm_func_start CARDi_UnlockResource
CARDi_UnlockResource: ; 0x020CC604
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020CC68C ; =0x021CEE20
	mov r7, r0
	mov r6, r1
	bl OS_DisableInterrupts
	ldr r1, [r4, #8]
	mov r5, r0
	cmp r1, r7
	bne _020CC634
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020CC63C
_020CC634:
	bl OS_Terminate
	b _020CC674
_020CC63C:
	ldr r0, [r4, #0x18]
	cmp r0, r6
	beq _020CC64C
	bl OS_Terminate
_020CC64C:
	ldr r0, [r4, #0xc]
	subs r0, r0, #1
	str r0, [r4, #0xc]
	bne _020CC674
	mvn r2, #2
	mov r1, #0
	add r0, r4, #0x10
	str r2, [r4, #8]
	str r1, [r4, #0x18]
	bl OS_WakeupThread
_020CC674:
	ldr r1, [r4, #0]
	mov r2, #0
	mov r0, r5
	str r2, [r1, #0]
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CC68C: .word 0x021CEE20
	arm_func_end CARDi_UnlockResource

	arm_func_start CARDi_InitCommon
CARDi_InitCommon: ; 0x020CC690
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _020CC784 ; =0x021CEE20
	ldr r1, _020CC788 ; =0x021CEDC0
	mvn r2, #2
	mov r0, #0
	str r2, [r4, #8]
	mov r2, #0x60
	str r0, [r4, #0xc]
	str r0, [r4, #0x18]
	str r1, [r4, #0]
	bl MIi_CpuClearFast
	ldr r0, _020CC788 ; =0x021CEDC0
	mov r1, #0x60
	bl DC_FlushRange
	mvn r1, #0
	ldr r0, _020CC78C ; =0x027FFC40
	str r1, [r4, #0x118]
	str r1, [r4, #0x11c]
	ldrh r0, [r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020CC704
	ldr r0, _020CC790 ; =0x027FFE00
	mov r2, #0x160
	sub r1, r0, #0x380
	bl MI_CpuCopy8
_020CC704:
	mov r2, #0
	mov r0, #4
	str r0, [r4, #0x108]
	str r2, [r4, #0x14]
	str r2, [r4, #0x10]
	str r2, [r4, #0x110]
	str r2, [r4, #0x10c]
	mov r0, #0x400
	str r0, [sp]
	ldr ip, [r4, #0x108]
	ldr r1, _020CC794 ; =CARDi_TaskThread
	ldr r3, _020CC798 ; =0x021CF440
	add r0, r4, #0x44
	str ip, [sp, #4]
	bl OS_CreateThread
	add r0, r4, #0x44
	bl OS_WakeupThreadDirect
	ldr r1, _020CC79C ; =CARDi_OnFifoRecv
	mov r0, #0xb
	bl PXI_SetFifoRecvCallback
	ldr r0, _020CC78C ; =0x027FFC40
	ldrh r0, [r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, pc}
	mov r0, #1
	bl CARD_Enable
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CC784: .word 0x021CEE20
_020CC788: .word 0x021CEDC0
_020CC78C: .word 0x027FFC40
_020CC790: .word 0x027FFE00
_020CC794: .word CARDi_TaskThread
_020CC798: .word 0x021CF440
_020CC79C: .word CARDi_OnFifoRecv
	arm_func_end CARDi_InitCommon

	arm_func_start CARD_IsEnabled
CARD_IsEnabled: ; 0x020CC7A0
	ldr r0, _020CC7AC ; =0x021CEDA0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020CC7AC: .word 0x021CEDA0
	arm_func_end CARD_IsEnabled

	arm_func_start CARD_CheckEnabled
CARD_CheckEnabled: ; 0x020CC7B0
	stmfd sp!, {r3, lr}
	bl CARD_IsEnabled
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	arm_func_end CARD_CheckEnabled

	arm_func_start CARD_Enable
CARD_Enable: ; 0x020CC7C8
	ldr r1, _020CC7D4 ; =0x021CEDA0
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020CC7D4: .word 0x021CEDA0
	arm_func_end CARD_Enable

	arm_func_start CARDi_WaitAsync
CARDi_WaitAsync: ; 0x020CC7D8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CC820 ; =0x021CEE20
	bl OS_DisableInterrupts
	mov r5, r0
	b _020CC7F4
_020CC7EC:
	add r0, r4, #0x10c
	bl OS_SleepThread
_020CC7F4:
	ldr r0, [r4, #0x114]
	tst r0, #4
	bne _020CC7EC
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CC820: .word 0x021CEE20
	arm_func_end CARDi_WaitAsync

	arm_func_start CARDi_TryWaitAsync
CARDi_TryWaitAsync: ; 0x020CC824
	ldr r0, _020CC83C ; =0x021CEE20
	ldr r0, [r0, #0x114]
	tst r0, #4
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_020CC83C: .word 0x021CEE20
	arm_func_end CARDi_TryWaitAsync

	arm_func_start CARD_GetResultCode
CARD_GetResultCode: ; 0x020CC840
	ldr r0, _020CC850 ; =0x021CEE20
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020CC850: .word 0x021CEE20
	arm_func_end CARD_GetResultCode

	arm_func_start CARD_LockRom
CARD_LockRom: ; 0x020CC854
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	bl CARDi_LockResource
	mov r0, r4
	bl OS_LockCard
	ldmia sp!, {r4, pc}
	arm_func_end CARD_LockRom

	arm_func_start CARD_UnlockRom
CARD_UnlockRom: ; 0x020CC870
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_UnlockCard
	mov r0, r4
	mov r1, #1
	bl CARDi_UnlockResource
	ldmia sp!, {r4, pc}
	arm_func_end CARD_UnlockRom

	arm_func_start CARD_LockBackup
CARD_LockBackup: ; 0x020CC88C
	ldr ip, _020CC898 ; =CARDi_LockResource
	mov r1, #2
	bx ip
	; .align 2, 0
_020CC898: .word CARDi_LockResource
	arm_func_end CARD_LockBackup

	arm_func_start CARD_UnlockBackup
CARD_UnlockBackup: ; 0x020CC89C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl CARD_TryWaitBackupAsync
	cmp r0, #0
	bne _020CC8B4
	bl CARD_WaitBackupAsync
_020CC8B4:
	mov r0, r4
	mov r1, #2
	bl CARDi_UnlockResource
	ldmia sp!, {r4, pc}
	arm_func_end CARD_UnlockBackup

	arm_func_start CARD_SetCacheFlushThreshold
CARD_SetCacheFlushThreshold: ; 0x020CC8C4
	ldr r2, _020CC8D4 ; =0x021CEDA0
	str r0, [r2, #0x198]
	str r1, [r2, #0x19c]
	bx lr
	; .align 2, 0
_020CC8D4: .word 0x021CEDA0
	arm_func_end CARD_SetCacheFlushThreshold

	.bss


	.global Unk_021CEDA0
Unk_021CEDA0: ; 0x021CEDA0
	.space 0x20

	.global Unk_021CEDC0
Unk_021CEDC0: ; 0x021CEDC0
	.space 0x60

	.global Unk_021CEE20
Unk_021CEE20: ; 0x021CEE20
	.space 0x220

	.global Unk_021CF040
Unk_021CF040: ; 0x021CF040
	.space 0x400

