	.include "macros/function.inc"
	.include "include/unk_020CD080.inc"

	.extern Unk_021CF440
	.extern Unk_021CF460
	.extern cardi_common
	.extern Unk_021CCC80
	

	.text


	arm_func_start CARDi_ReadFromCache
CARDi_ReadFromCache: ; 0x020CD080
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CD108 ; =0x021CEE20
	mov r1, #0x200
	ldr r3, [r4, #0x1c]
	rsb r1, r1, #0
	ldr r2, [r0, #8]
	and r3, r3, r1
	cmp r3, r2
	bne _020CD0F4
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	sub r3, r2, r3
	rsb r5, r3, #0x200
	cmp r5, r1
	movhi r5, r1
	add r0, r0, #0x20
	ldr r1, [r4, #0x20]
	mov r2, r5
	add r0, r0, r3
	bl MI_CpuCopy8
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	add r2, r2, r5
	add r1, r1, r5
	sub r0, r0, r5
	str r2, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r0, [r4, #0x24]
_020CD0F4:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CD108: .word cardi_common
	arm_func_end CARDi_ReadFromCache

	arm_func_start CARDi_SetRomOp
CARDi_SetRomOp: ; 0x020CD10C
	ldr r3, _020CD164 ; =0x040001A4
_020CD110:
	ldr r2, [r3, #0]
	tst r2, #-0x80000000
	bne _020CD110
	ldr r3, _020CD168 ; =0x040001A1
	mov r2, #0xc0
	strb r2, [r3]
	mov r2, r0, lsr #0x18
	strb r2, [r3, #7]
	mov r2, r0, lsr #0x10
	strb r2, [r3, #8]
	mov r2, r0, lsr #8
	strb r2, [r3, #9]
	strb r0, [r3, #0xa]
	mov r0, r1, lsr #0x18
	strb r0, [r3, #0xb]
	mov r0, r1, lsr #0x10
	strb r0, [r3, #0xc]
	mov r0, r1, lsr #8
	strb r0, [r3, #0xd]
	strb r1, [r3, #0xe]
	bx lr
	; .align 2, 0
_020CD164: .word 0x040001A4
_020CD168: .word 0x040001A1
	arm_func_end CARDi_SetRomOp

	arm_func_start CARDi_SetCardDma
CARDi_SetCardDma: ; 0x020CD16C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CD1B0 ; =0x021CEE20
	ldr r1, _020CD1B4 ; =0x04100010
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x20]
	mov r3, #0x200
	ldr r5, _020CD1B8 ; =0x021CF460
	bl MIi_CardDmaCopy32
	ldr r1, [r4, #0x1c]
	mov r0, r1, lsr #8
	orr r0, r0, #0xb7000000
	mov r1, r1, lsl #0x18
	bl CARDi_SetRomOp
	ldr r1, [r5, #4]
	ldr r0, _020CD1BC ; =0x040001A4
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CD1B0: .word cardi_common
_020CD1B4: .word 0x04100010
_020CD1B8: .word Unk_021CF460
_020CD1BC: .word 0x040001A4
	arm_func_end CARDi_SetCardDma

	arm_func_start CARDi_OnReadCard
CARDi_OnReadCard: ; 0x020CD1C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020CD28C ; =0x021CEE20
	ldr r0, [r0, #0x28]
	bl MI_StopDma
	ldr r3, _020CD28C ; =0x021CEE20
	ldr r0, [r3, #0x24]
	ldr r2, [r3, #0x1c]
	ldr r1, [r3, #0x20]
	subs r0, r0, #0x200
	str r0, [r3, #0x24]
	movne r0, #1
	add r2, r2, #0x200
	add r1, r1, #0x200
	moveq r0, #0
	str r2, [r3, #0x1c]
	str r1, [r3, #0x20]
	cmp r0, #0
	bne _020CD284
	mov r0, #0x80000
	bl OS_DisableIrqMask
	mov r0, #0x80000
	bl OS_ResetRequestIrqMask
	ldr r4, _020CD28C ; =0x021CEE20
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr r5, [r4, #0x38]
	ldr r6, [r4, #0x3c]
	bl OS_DisableInterrupts
	ldr r1, [r4, #0x114]
	mov r7, r0
	bic r0, r1, #0x4c
	str r0, [r4, #0x114]
	add r0, r4, #0x10c
	bl OS_WakeupThread
	ldr r0, [r4, #0x114]
	tst r0, #0x10
	beq _020CD268
	add r0, r4, #0x44
	bl OS_WakeupThreadDirect
_020CD268:
	mov r0, r7
	bl OS_RestoreInterrupts
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	blx r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CD284:
	bl CARDi_SetCardDma
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CD28C: .word cardi_common
	arm_func_end CARDi_OnReadCard

	arm_func_start CARDi_TryReadCardDma
CARDi_TryReadCardDma: ; 0x020CD290
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _020CD408 ; =0x021CEE20
	mov r6, #0
	ldr sb, [r4, #0x20]
	mov fp, r0
	mov r7, r6
	mov r8, r6
	mov r1, r6
	ands sl, sb, #0x1f
	ldr r5, [r4, #0x24]
	bne _020CD2C8
	ldr r0, [r4, #0x28]
	cmp r0, #3
	movls r1, #1
_020CD2C8:
	cmp r1, #0
	beq _020CD31C
	bl OS_GetDTCMAddress
	ldr r1, _020CD40C ; =0x01FF8000
	add r3, sb, r5
	cmp r3, r1
	mov r1, #1
	mov r2, #0
	bls _020CD2F4
	cmp sb, #0x2000000
	movlo r2, r1
_020CD2F4:
	cmp r2, #0
	bne _020CD314
	cmp r0, r3
	bhs _020CD310
	add r0, r0, #0x4000
	cmp r0, sb
	bhi _020CD314
_020CD310:
	mov r1, #0
_020CD314:
	cmp r1, #0
	moveq r8, #1
_020CD31C:
	cmp r8, #0
	beq _020CD338
	ldr r1, [r4, #0x1c]
	ldr r0, _020CD410 ; =0x000001FF
	orr r1, r1, r5
	tst r1, r0
	moveq r7, #1
_020CD338:
	ldr r0, _020CD414 ; =0x02101480
	cmp r7, #0
	ldr r0, [r0, #0]
	cmpne r5, #0
	ldr r0, [r0, #0x60]
	movne r6, #1
	bic r0, r0, #0x7000000
	orr r0, r0, #0xa1000000
	cmp r6, #0
	str r0, [fp, #4]
	beq _020CD400
	bl OS_DisableInterrupts
	ldr r1, [r4, #0x118]
	mov r7, r0
	cmp r5, r1
	bhs _020CD388
	mov r0, sb
	mov r1, r5
	bl IC_InvalidateRange
	b _020CD38C
_020CD388:
	bl IC_InvalidateAll
_020CD38C:
	ldr r0, [r4, #0x11c]
	cmp r5, r0
	bhs _020CD3D4
	cmp sl, #0
	beq _020CD3C0
	sub sb, sb, sl
	mov r0, sb
	mov r1, #0x20
	bl DC_StoreRange
	add r0, sb, r5
	mov r1, #0x20
	bl DC_StoreRange
	add r5, r5, #0x20
_020CD3C0:
	mov r0, sb
	mov r1, r5
	bl DC_InvalidateRange
	bl DC_WaitWriteBufferEmpty
	b _020CD3D8
_020CD3D4:
	bl DC_FlushAll
_020CD3D8:
	ldr r1, _020CD418 ; =CARDi_OnReadCard
	mov r0, #0x80000
	bl OS_SetIrqFunction
	mov r0, #0x80000
	bl OS_ResetRequestIrqMask
	mov r0, #0x80000
	bl OS_EnableIrqMask
	mov r0, r7
	bl OS_RestoreInterrupts
	bl CARDi_SetCardDma
_020CD400:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CD408: .word cardi_common
_020CD40C: .word 0x01FF8000
_020CD410: .word 0x000001FF
_020CD414: .word Unk_02101480
_020CD418: .word CARDi_OnReadCard
	arm_func_end CARDi_TryReadCardDma

	arm_func_start CARDi_ReadCard
CARDi_ReadCard: ; 0x020CD41C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020CD500 ; =0x021CEE20
	mov r6, r0
_020CD428:
	mov r0, #0x200
	ldr r1, [r4, #0x1c]
	rsb r0, r0, #0
	and r2, r1, r0
	cmp r2, r1
	bne _020CD458
	ldr r5, [r4, #0x20]
	tst r5, #3
	bne _020CD458
	ldr r0, [r4, #0x24]
	cmp r0, #0x200
	bhs _020CD460
_020CD458:
	str r2, [r6, #8]
	add r5, r6, #0x20
_020CD460:
	mov r0, r2, lsr #8
	orr r0, r0, #0xb7000000
	mov r1, r2, lsl #0x18
	bl CARDi_SetRomOp
	mov ip, #0
	ldr r0, [r6, #4]
	ldr r2, _020CD504 ; =0x040001A4
	mov lr, ip
	str r0, [r2, #0]
	ldr r1, _020CD508 ; =0x04100010
_020CD488:
	ldr r3, [r2, #0]
	tst r3, #0x800000
	beq _020CD4A8
	ldr r0, [r1, #0]
	cmp lr, #0x200
	strlo r0, [r5, ip, lsl #2]
	addlo lr, lr, #4
	addlo ip, ip, #1
_020CD4A8:
	tst r3, #-0x80000000
	bne _020CD488
	ldr r0, [r4, #0x20]
	cmp r5, r0
	bne _020CD4EC
	ldr r0, _020CD500 ; =0x021CEE20
	ldr r1, [r0, #0x1c]
	add r1, r1, #0x200
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0x20]
	add r1, r1, #0x200
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x24]
	subs r1, r1, #0x200
	str r1, [r0, #0x24]
	ldmeqia sp!, {r4, r5, r6, pc}
	b _020CD428
_020CD4EC:
	mov r0, r6
	bl CARDi_ReadFromCache
	cmp r0, #0
	bne _020CD428
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CD500: .word cardi_common
_020CD504: .word 0x040001A4
_020CD508: .word 0x04100010
	arm_func_end CARDi_ReadCard

	arm_func_start CARDi_ReadRomIDCore
CARDi_ReadRomIDCore: ; 0x020CD50C
	stmfd sp!, {r3, lr}
	mov r0, #-0x48000000
	mov r1, #0
	bl CARDi_SetRomOp
	ldr r1, _020CD55C ; =0x02101480
	mov r0, #0x2000
	ldr r1, [r1, #0]
	rsb r0, r0, #0
	ldr r2, [r1, #0x60]
	ldr r1, _020CD560 ; =0x040001A4
	bic r2, r2, #0x7000000
	orr r2, r2, #0xa7000000
	and r0, r2, r0
	str r0, [r1, #0]
_020CD544:
	ldr r0, [r1, #0]
	tst r0, #0x800000
	beq _020CD544
	ldr r0, _020CD564 ; =0x04100010
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD55C: .word Unk_02101480
_020CD560: .word 0x040001A4
_020CD564: .word 0x04100010
	arm_func_end CARDi_ReadRomIDCore

	arm_func_start CARDi_ReadRomSyncCore
CARDi_ReadRomSyncCore: ; 0x020CD568
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020CD5F8 ; =0x021CF460
	mov r0, r4
	bl CARDi_ReadFromCache
	cmp r0, #0
	beq _020CD58C
	ldr r1, [r4, #0]
	mov r0, r4
	blx r1
_020CD58C:
	ldr r4, _020CD5FC ; =0x021CEE20
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0]
	ldr r5, [r4, #0x38]
	ldr r6, [r4, #0x3c]
	bl OS_DisableInterrupts
	ldr r1, [r4, #0x114]
	mov r7, r0
	bic r0, r1, #0x4c
	str r0, [r4, #0x114]
	add r0, r4, #0x10c
	bl OS_WakeupThread
	ldr r0, [r4, #0x114]
	tst r0, #0x10
	beq _020CD5DC
	add r0, r4, #0x44
	bl OS_WakeupThreadDirect
_020CD5DC:
	mov r0, r7
	bl OS_RestoreInterrupts
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	blx r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CD5F8: .word Unk_021CF460
_020CD5FC: .word cardi_common
	arm_func_end CARDi_ReadRomSyncCore

	arm_func_start CARDi_ReadRom
CARDi_ReadRom: ; 0x020CD600
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	ldr r4, _020CD6E4 ; =0x021CF460
	ldr r5, _020CD6E8 ; =0x021CEE20
	bl CARD_CheckEnabled
	bl OS_DisableInterrupts
	mov r6, r0
	b _020CD634
_020CD62C:
	add r0, r5, #0x10c
	bl OS_SleepThread
_020CD634:
	ldr r0, [r5, #0x114]
	tst r0, #4
	bne _020CD62C
	ldr r0, [r5, #0x114]
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	orr r3, r0, #4
	mov r0, r6
	str r3, [r5, #0x114]
	str r2, [r5, #0x38]
	str r1, [r5, #0x3c]
	bl OS_RestoreInterrupts
	ldr r0, _020CD6EC ; =0x021CF440
	str sl, [r5, #0x28]
	ldr r0, [r0, #0]
	str r8, [r5, #0x20]
	add r0, sb, r0
	str r0, [r5, #0x1c]
	str r7, [r5, #0x24]
	cmp sl, #3
	bhi _020CD690
	mov r0, sl
	bl MI_StopDma
_020CD690:
	mov r0, r4
	bl CARDi_TryReadCardDma
	cmp r0, #0
	beq _020CD6B4
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl CARD_WaitRomAsync
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CD6B4:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _020CD6CC
	ldr r0, _020CD6F0 ; =CARDi_ReadRomSyncCore
	bl CARDi_SetTask
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CD6CC:
	ldr r1, _020CD6F4 ; =0x021CCC80
	mov r0, r5
	ldr r1, [r1, #4]
	str r1, [r5, #0x104]
	bl CARDi_ReadRomSyncCore
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020CD6E4: .word Unk_021CF460
_020CD6E8: .word cardi_common
_020CD6EC: .word Unk_021CF440
_020CD6F0: .word CARDi_ReadRomSyncCore
_020CD6F4: .word Unk_021CCC80
	arm_func_end CARDi_ReadRom

	arm_func_start CARD_Init
CARD_Init: ; 0x020CD6F8
	stmfd sp!, {r3, lr}
	ldr ip, _020CD754 ; =0x021CEE20
	ldr r0, [ip, #0x114]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r2, #0
	ldr r0, _020CD758 ; =0x021CF440
	sub r1, r2, #1
	mov r3, #1
	str r3, [ip, #0x114]
	str r2, [ip, #0x24]
	str r2, [ip, #0x20]
	str r2, [ip, #0x1c]
	str r1, [ip, #0x28]
	str r2, [ip, #0x38]
	str r2, [ip, #0x3c]
	str r2, [r0, #0]
	bl CARDi_InitCommon
	bl CARDi_GetRomAccessor
	ldr r1, _020CD758 ; =0x021CF440
	str r0, [r1, #0x20]
	bl CARD_InitPulledOutCallback
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CD754: .word cardi_common
_020CD758: .word Unk_021CF440
	arm_func_end CARD_Init

	arm_func_start CARD_WaitRomAsync
CARD_WaitRomAsync: ; 0x020CD75C
	ldr ip, _020CD764 ; =CARDi_WaitAsync
	bx ip
	; .align 2, 0
_020CD764: .word CARDi_WaitAsync
	arm_func_end CARD_WaitRomAsync

	arm_func_start CARDi_GetRomAccessor
CARDi_GetRomAccessor: ; 0x020CD768
	ldr r0, _020CD770 ; =CARDi_ReadCard
	bx lr
	; .align 2, 0
_020CD770: .word CARDi_ReadCard
	arm_func_end CARDi_GetRomAccessor

	.data


	.global Unk_02101480
Unk_02101480: ; 0x02101480
	.incbin "incbin/arm9_data.bin", 0x27A0, 0x4



	.bss


	.global Unk_021CF440
Unk_021CF440: ; 0x021CF440
	.space 0x20

	.global Unk_021CF460
Unk_021CF460: ; 0x021CF460
	.space 0x220

