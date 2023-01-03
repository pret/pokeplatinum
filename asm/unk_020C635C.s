	.include "macros/function.inc"
	.include "include/unk_020C635C.inc"


	.text


	arm_func_start PXI_InitFifo
PXI_InitFifo: ; 0x020C635C
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r1, _020C6440 ; =0x021CEB84
	mov r4, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _020C6434
	mov r2, #1
	strh r2, [r1]
	mov r2, #0
	ldr r0, _020C6444 ; =0x027FFC00
	mov r1, r2
	str r2, [r0, #0x388]
	ldr r0, _020C6448 ; =0x021CEB88
_020C6394:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x20
	blt _020C6394
	ldr r2, _020C644C ; =0x0000C408
	ldr r1, _020C6450 ; =0x04000184
	mov r0, #0x40000
	strh r2, [r1]
	bl OS_ResetRequestIrqMask
	ldr r1, _020C6454 ; =PXIi_HandlerRecvFifoNotEmpty
	mov r0, #0x40000
	bl OS_SetIrqFunction
	mov r0, #0x40000
	bl OS_EnableIrqMask
	mov r5, #0
	ldr r3, _020C6458 ; =0x04000180
	mov r1, r5
	mov r2, #0x3e8
_020C63DC:
	ldrh r0, [r3]
	ands lr, r0, #0xf
	mov r0, lr, lsl #8
	strh r0, [r3]
	bne _020C63F8
	cmp r5, #4
	bgt _020C6434
_020C63F8:
	ldrh r0, [r3]
	mov ip, r2
	and r0, r0, #0xf
	cmp r0, lr
	bne _020C642C
_020C640C:
	cmp ip, #0
	movle r5, r1
	ble _020C642C
	ldrh r0, [r3]
	sub ip, ip, #1
	and r0, r0, #0xf
	cmp r0, lr
	beq _020C640C
_020C642C:
	add r5, r5, #1
	b _020C63DC
_020C6434:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C6440: .word Unk_021CEB84
_020C6444: .word 0x027FFC00
_020C6448: .word Unk_021CEB88
_020C644C: .word 0x0000C408
_020C6450: .word 0x04000184
_020C6454: .word PXIi_HandlerRecvFifoNotEmpty
_020C6458: .word 0x04000180
	arm_func_end PXI_InitFifo

	arm_func_start PXI_SetFifoRecvCallback
PXI_SetFifoRecvCallback: ; 0x020C645C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl OS_DisableInterrupts
	ldr r1, _020C64A0 ; =0x021CEB88
	ldr r3, _020C64A4 ; =0x027FFC00
	str r5, [r1, r4, lsl #2]
	cmp r5, #0
	ldrne r2, [r3, #0x388]
	mov r1, #1
	orrne r1, r2, r1, lsl r4
	mvneq r1, r1, lsl r4
	ldreq r2, [r3, #0x388]
	andeq r1, r2, r1
	str r1, [r3, #0x388]
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C64A0: .word Unk_021CEB88
_020C64A4: .word 0x027FFC00
	arm_func_end PXI_SetFifoRecvCallback

	arm_func_start PXI_IsCallbackReady
PXI_IsCallbackReady: ; 0x020C64A8
	ldr r2, _020C64C8 ; =0x027FFC00
	mov r3, #1
	add r1, r2, r1, lsl #2
	ldr r1, [r1, #0x388]
	tst r1, r3, lsl r0
	moveq r3, #0
	mov r0, r3
	bx lr
	; .align 2, 0
_020C64C8: .word 0x027FFC00
	arm_func_end PXI_IsCallbackReady

	arm_func_start PXI_SendWordByFifo
PXI_SendWordByFifo: ; 0x020C64CC
	stmfd sp!, {r3, lr}
	ldr ip, [sp]
	ldr r3, _020C6550 ; =0x04000184
	bic ip, ip, #0x1f
	and r0, r0, #0x1f
	orr ip, ip, r0
	ldrh r0, [r3]
	bic ip, ip, #0x20
	mov r2, r2, lsl #0x1f
	orr r2, ip, r2, lsr #26
	and r2, r2, #0x3f
	orr r1, r2, r1, lsl #6
	str r1, [sp]
	tst r0, #0x4000
	beq _020C651C
	ldrh r1, [r3]
	mvn r0, #0
	orr r1, r1, #0xc000
	strh r1, [r3]
	ldmia sp!, {r3, pc}
_020C651C:
	bl OS_DisableInterrupts
	ldr r2, _020C6550 ; =0x04000184
	ldrh r1, [r2]
	tst r1, #2
	beq _020C653C
	bl OS_RestoreInterrupts
	mvn r0, #1
	ldmia sp!, {r3, pc}
_020C653C:
	ldr r1, [sp]
	str r1, [r2, #4]
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C6550: .word 0x04000184
	arm_func_end PXI_SendWordByFifo

	arm_func_start PXIi_HandlerRecvFifoNotEmpty
PXIi_HandlerRecvFifoNotEmpty: ; 0x020C6554
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mvn r8, #3
	ldr r6, [sp]
	ldr sb, _020C6664 ; =0x04000184
	ldr r4, _020C6668 ; =0x021CEB88
	add sl, r8, #1
	mov r7, #0x4100000
	mov r5, #0
_020C6578:
	ldrh r0, [sb]
	tst r0, #0x4000
	beq _020C6598
	ldrh r0, [sb]
	add r1, r8, #1
	orr r0, r0, #0xc000
	strh r0, [sb]
	b _020C65C4
_020C6598:
	bl OS_DisableInterrupts
	ldrh r1, [sb]
	tst r1, #0x100
	beq _020C65B4
	bl OS_RestoreInterrupts
	mov r1, r8
	b _020C65C4
_020C65B4:
	ldr r6, [r7, #0]
	str r6, [sp]
	bl OS_RestoreInterrupts
	mov r1, r5
_020C65C4:
	cmp r1, r8
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r1, sl
	beq _020C6578
	mov r0, r6, lsl #0x1b
	movs r0, r0, lsr #0x1b
	beq _020C6578
	ldr r3, [r4, r0, lsl #2]
	cmp r3, #0
	beq _020C6604
	mov r2, r6, lsl #0x1a
	mov r1, r6, lsr #6
	mov r2, r2, lsr #0x1f
	blx r3
	b _020C6578
_020C6604:
	mov r0, r6, lsl #0x1a
	movs r0, r0, lsr #0x1f
	bne _020C6578
	ldrh r0, [sb]
	orr r6, r6, #0x20
	str r6, [sp]
	tst r0, #0x4000
	beq _020C6634
	ldrh r0, [sb]
	orr r0, r0, #0xc000
	strh r0, [sb]
	b _020C6578
_020C6634:
	bl OS_DisableInterrupts
	ldrh r1, [sb]
	tst r1, #2
	beq _020C664C
	bl OS_RestoreInterrupts
	b _020C6578
_020C664C:
	mov r1, r6
	str r1, [sb, #4]
	bl OS_RestoreInterrupts
	b _020C6578
_020C665C:
	.byte 0x04, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x87, 0xBD, 0xE8
_020C6664: .word 0x04000184
_020C6668: .word Unk_021CEB88
	arm_func_end PXIi_HandlerRecvFifoNotEmpty

	.bss


	.global Unk_021CEB84
Unk_021CEB84: ; 0x021CEB84
	.space 0x4

	.global Unk_021CEB88
Unk_021CEB88: ; 0x021CEB88
	.space 0x80

