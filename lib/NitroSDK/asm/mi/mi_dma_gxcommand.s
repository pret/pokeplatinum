	.include "macros/function.inc"
	.include "include/mi_dma_gxcommand.inc"

	.extern Unk_021CD000
	

	.text


	arm_func_start MI_SendGXCommandAsync
MI_SendGXCommandAsync: ; 0x020C4808
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r2, #0
	bne _020C482C
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp, #8]
	blx r3
	ldmia sp!, {r4, pc}
_020C482C:
	ldr r0, _020C48F4 ; =0x021CD000
_020C4830:
	ldr ip, [r0]
	cmp ip, #0
	bne _020C4830
	ldr ip, _020C48F8 ; =0x04000600
_020C4840:
	ldr r0, [ip]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	tst r0, #2
	beq _020C4840
	ldr ip, _020C48F4 ; =0x021CD000
	mov r0, #1
	str r0, [ip]
	str r4, [ip, #4]
	str r1, [ip, #8]
	str r2, [ip, #0xc]
	str r3, [ip, #0x10]
	ldr lr, [sp, #8]
	mov r0, r4
	mov r3, #0
	str lr, [ip, #0x14]
	bl MIi_CheckDma0SourceAddress
	mov r0, r4
	bl MI_WaitDma
	bl OS_DisableInterrupts
	ldr r1, _020C48F8 ; =0x04000600
	mov r4, r0
	ldr r0, [r1, #0]
	ldr r1, _020C48F4 ; =0x021CD000
	and r0, r0, #0xc0000000
	mov r2, r0, lsr #0x1e
	mov r0, #0x200000
	str r2, [r1, #0x18]
	bl OS_GetIrqFunction
	ldr r1, _020C48F4 ; =0x021CD000
	ldr r2, _020C48F8 ; =0x04000600
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0]
	ldr r1, _020C48FC ; =MIi_FIFOCallback
	bic r0, r0, #0xc0000000
	orr r3, r0, #0x40000000
	mov r0, #0x200000
	str r3, [r2, #0]
	bl OS_SetIrqFunction
	mov r0, #0x200000
	bl OS_EnableIrqMask
	bl MIi_FIFOCallback
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C48F4: .word Unk_021CD000
_020C48F8: .word 0x04000600
_020C48FC: .word MIi_FIFOCallback
	arm_func_end MI_SendGXCommandAsync

	arm_func_start MIi_FIFOCallback
MIi_FIFOCallback: ; 0x020C4900
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C499C ; =0x021CD000
	ldr r5, [r0, #0xc]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020C499C ; =0x021CD000
	cmp r5, #0x1d8
	ldr r1, [r0, #0xc]
	movhs r5, #0x1d8
	ldr r4, [r0, #8]
	subs r1, r1, r5
	str r1, [r0, #0xc]
	add r1, r4, r5
	str r1, [r0, #8]
	bne _020C4978
	ldr r0, [r0, #4]
	ldr r1, _020C49A0 ; =MIi_DMACallback
	mov r2, #0
	bl OSi_EnterDmaCallback
	ldr r0, _020C499C ; =0x021CD000
	mov r3, #0x3bc00000
	rsb r3, r3, #0
	ldr r0, [r0, #4]
	ldr r2, _020C49A4 ; =0x04000400
	mov r1, r4
	orr r3, r3, r5, lsr #2
	bl MIi_DmaSetParams
	mov r0, #0x200000
	bl OS_ResetRequestIrqMask
	ldmia sp!, {r3, r4, r5, pc}
_020C4978:
	ldr r3, _020C49A8 ; =0x84400000
	ldr r0, [r0, #4]
	ldr r2, _020C49A4 ; =0x04000400
	mov r1, r4
	orr r3, r3, r5, lsr #2
	bl MIi_DmaSetParams
	mov r0, #0x200000
	bl OS_ResetRequestIrqMask
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C499C: .word Unk_021CD000
_020C49A0: .word MIi_DMACallback
_020C49A4: .word 0x04000400
_020C49A8: .word 0x84400000
	arm_func_end MIi_FIFOCallback

	arm_func_start MIi_DMACallback
MIi_DMACallback: ; 0x020C49AC
	stmfd sp!, {r3, lr}
	mov r0, #0x200000
	bl OS_DisableIrqMask
	ldr r2, _020C4A04 ; =0x04000600
	ldr r0, _020C4A08 ; =0x021CD000
	ldr r1, [r2, #0]
	ldr r3, [r0, #0x18]
	bic r1, r1, #0xc0000000
	orr r1, r1, r3, lsl #30
	str r1, [r2, #0]
	ldr r1, [r0, #0x1c]
	mov r0, #0x200000
	bl OS_SetIrqFunction
	ldr r0, _020C4A08 ; =0x021CD000
	mov r1, #0
	str r1, [r0, #0]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C4A04: .word 0x04000600
_020C4A08: .word Unk_021CD000
	arm_func_end MIi_DMACallback

	arm_func_start MI_SendGXCommandAsyncFast
MI_SendGXCommandAsyncFast: ; 0x020C4A0C
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bne _020C4A34
	cmp r3, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [sp, #0x10]
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
_020C4A34:
	ldr r0, _020C4AB8 ; =0x021CD000
_020C4A38:
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020C4A38
	ldr r2, _020C4AB8 ; =0x021CD000
	mov r0, #1
	str r0, [r2, #0]
	str r6, [r2, #4]
	ldr ip, [sp, #0x10]
	str r3, [r2, #0x10]
	mov r0, r6
	mov r1, #0x38000000
	str ip, [r2, #0x14]
	bl MIi_CheckAnotherAutoDMA
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl MIi_CheckDma0SourceAddress
	mov r0, r6
	bl MI_WaitDma
	mov r0, r6
	ldr r1, _020C4ABC ; =MIi_DMAFastCallback
	mov r2, #0
	bl OSi_EnterDmaCallback
	mov r0, r6
	mov r1, r5
	ldr r2, _020C4AC0 ; =0x04000400
	mov r3, #0x3c00000
	rsb r3, r3, #0
	orr r3, r3, r4, lsr #2
	bl MIi_DmaSetParams
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C4AB8: .word Unk_021CD000
_020C4ABC: .word MIi_DMAFastCallback
_020C4AC0: .word 0x04000400
	arm_func_end MI_SendGXCommandAsyncFast

	arm_func_start MIi_DMAFastCallback
MIi_DMAFastCallback: ; 0x020C4AC4
	stmfd sp!, {r3, lr}
	ldr r0, _020C4AEC ; =0x021CD000
	mov r1, #0
	str r1, [r0, #0]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C4AEC: .word Unk_021CD000
	arm_func_end MIi_DMAFastCallback

	.bss


	.global Unk_021CD000
Unk_021CD000: ; 0x021CD000
	.space 0x20

