	.include "macros/function.inc"
	.include "include/unk_020CD774.inc"

	.extern Unk_021CEE20
	

	.text


	arm_func_start CARDi_OnFifoRecv
CARDi_OnFifoRecv: ; 0x020CD774
	stmfd sp!, {r3, lr}
	cmp r0, #0xb
	ldmneia sp!, {r3, pc}
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _020CD7A4 ; =0x021CEE20
	ldr r1, [r2, #0x114]
	ldr r0, [r2, #0x104]
	bic r1, r1, #0x20
	str r1, [r2, #0x114]
	bl OS_WakeupThreadDirect
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD7A4: .word Unk_021CEE20
	arm_func_end CARDi_OnFifoRecv

	arm_func_start CARDi_TaskThread
CARDi_TaskThread: ; 0x020CD7A8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020CD7F4 ; =0x021CEE20
	mov r4, #0
_020CD7B4:
	bl OS_DisableInterrupts
	ldr r1, [r5, #0x114]
	mov r6, r0
	tst r1, #8
	bne _020CD7DC
_020CD7C8:
	mov r0, r4
	bl OS_SleepThread
	ldr r0, [r5, #0x114]
	tst r0, #8
	beq _020CD7C8
_020CD7DC:
	mov r0, r6
	bl OS_RestoreInterrupts
	ldr r1, [r5, #0x40]
	mov r0, r5
	blx r1
	b _020CD7B4
	; .align 2, 0
_020CD7F4: .word Unk_021CEE20
	arm_func_end CARDi_TaskThread

	arm_func_start CARDi_Request
CARDi_Request: ; 0x020CD7F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl, #0x114]
	mov sb, r1
	str r2, [sp]
	tst r0, #2
	bne _020CD86C
	ldr r1, [sl, #0x114]
	mov r0, #0xb
	orr r2, r1, #2
	mov r1, #1
	str r2, [sl, #0x114]
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _020CD85C
	mov r6, #0x64
	mov r5, #0xb
	mov r4, #1
_020CD840:
	mov r0, r6
	bl OS_SpinWait
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CD840
_020CD85C:
	mov r0, sl
	mov r1, #0
	mov r2, #1
	bl CARDi_Request
_020CD86C:
	ldr r0, [sl]
	mov r1, #0x60
	bl DC_FlushRange
	bl DC_WaitWriteBufferEmpty
	mov r7, #0xb
	mov r6, #1
	mov r5, r7
	mov r4, r6
	mov fp, #0
_020CD890:
	str sb, [sl, #4]
	ldr r0, [sl, #0x114]
	orr r0, r0, #0x20
	str r0, [sl, #0x114]
_020CD8A0:
	mov r0, r7
	mov r1, sb
	mov r2, r6
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _020CD8A0
	cmp sb, #0
	bne _020CD8DC
	ldr r8, [sl]
_020CD8C4:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _020CD8C4
_020CD8DC:
	bl OS_DisableInterrupts
	ldr r1, [sl, #0x114]
	mov r8, r0
	tst r1, #0x20
	beq _020CD904
_020CD8F0:
	mov r0, fp
	bl OS_SleepThread
	ldr r0, [sl, #0x114]
	tst r0, #0x20
	bne _020CD8F0
_020CD904:
	mov r0, r8
	bl OS_RestoreInterrupts
	ldr r0, [sl]
	mov r1, #0x60
	bl DC_InvalidateRange
	ldr r0, [sl]
	ldr r1, [r0, #0]
	cmp r1, #4
	bne _020CD93C
	ldr r0, [sp]
	sub r0, r0, #1
	str r0, [sp]
	cmp r0, #0
	bgt _020CD890
_020CD93C:
	cmp r1, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end CARDi_Request
