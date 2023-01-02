	.include "macros/function.inc"
	.include "include/unk_020CD94C.inc"

	.extern Unk_021CF680
	

	.text


	arm_func_start CARD_InitPulledOutCallback
CARD_InitPulledOutCallback: ; 0x020CD94C
	stmfd sp!, {r3, lr}
	bl PXI_Init
	ldr r1, _020CD970 ; =CARDi_PulledOutCallback
	mov r0, #0xe
	bl PXI_SetFifoRecvCallback
	ldr r0, _020CD974 ; =0x021CF680
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD970: .word CARDi_PulledOutCallback
_020CD974: .word Unk_021CF680
	arm_func_end CARD_InitPulledOutCallback

	arm_func_start CARDi_PulledOutCallback
CARDi_PulledOutCallback: ; 0x020CD978
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #0x11
	bne _020CD9C0
	ldr r1, _020CD9C8 ; =0x021CF680
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	str r0, [r1, #0]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _020CD9B0
	blx r1
_020CD9B0:
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl CARD_TerminateForPulledOut
	ldmia sp!, {r3, pc}
_020CD9C0:
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD9C8: .word Unk_021CF680
	arm_func_end CARDi_PulledOutCallback

	arm_func_start CARD_IsPulledOut
CARD_IsPulledOut: ; 0x020CD9CC
	ldr r0, _020CD9D8 ; =0x021CF680
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020CD9D8: .word Unk_021CF680
	arm_func_end CARD_IsPulledOut

	arm_func_start CARD_TerminateForPulledOut
CARD_TerminateForPulledOut: ; 0x020CD9DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0
	mov r5, #1
	bl MI_StopDma
	mov r0, r5
	bl MI_StopDma
	mov r0, #2
	bl MI_StopDma
	mov r0, #3
	bl MI_StopDma
	ldr r0, _020CDA60 ; =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	beq _020CDA44
	bl PM_ForceToPowerOff
	cmp r0, #4
	bne _020CDA3C
	ldr r4, _020CDA64 ; =0x000A3A47
_020CDA28:
	mov r0, r4
	bl OS_SpinWait
	bl PM_ForceToPowerOff
	cmp r0, #4
	beq _020CDA28
_020CDA3C:
	cmp r0, #0
	moveq r5, #0
_020CDA44:
	cmp r5, #0
	beq _020CDA58
	mov r0, #1
	mov r1, r0
	bl CARDi_SendtoPxi
_020CDA58:
	bl OS_Terminate
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CDA60: .word 0x027FFFA8
_020CDA64: .word 0x000A3A47
	arm_func_end CARD_TerminateForPulledOut

	arm_func_start CARDi_CheckPulledOutCore
CARDi_CheckPulledOutCore: ; 0x020CDA68
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _020CDAC4 ; =0x027FFC10
	ldrh r1, [r2]
	cmp r1, #0
	subeq r1, r2, #0x410
	subne r1, r2, #0x10
	ldr r1, [r1, #0]
	str r1, [sp]
	ldr r1, [sp]
	cmp r0, r1
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, #0xe
	mov r1, #0x11
	mov r2, #0
	bl CARDi_PulledOutCallback
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020CDAC4: .word 0x027FFC10
	arm_func_end CARDi_CheckPulledOutCore

	arm_func_start CARDi_SendtoPxi
CARDi_SendtoPxi: ; 0x020CDAC8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r1, r7
	mov r0, #0xe
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0xe
	mov r4, #0
_020CDAF4:
	mov r0, r6
	bl SVC_WaitByLoop
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _020CDAF4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CARDi_SendtoPxi

	.bss


	.global Unk_021CF680
Unk_021CF680: ; 0x021CF680
	.space 0x4

	.global Unk_021CF684
Unk_021CF684: ; 0x021CF684
	.space 0x1C

