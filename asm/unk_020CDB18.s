	.include "macros/function.inc"
	.include "include/unk_020CDB18.inc"

	.extern Unk_021CF6A0
	.extern Unk_021CF6A8
	.extern Unk_021CF6C8
	.extern Unk_021CF6F0
	.extern Unk_021CF740
	

	.text


	arm_func_start WM_Init
WM_Init: ; 0x020CDB18
	stmfd sp!, {r3, lr}
	mov r2, #0xf00
	bl WmInitCore
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r1, _020CDB40 ; =0x021CF6A0
	mov r2, #0
	ldr r1, [r1, #4]
	strh r2, [r1, #0x16]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CDB40: .word Unk_021CF6A0
	arm_func_end WM_Init

	arm_func_start WmInitCore
WmInitCore: ; 0x020CDB44
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r6, r0
	mov r4, r1
	mov r7, r2
	bl OS_DisableInterrupts
	ldr r1, _020CDD14 ; =0x021CF6A0
	mov r5, r0
	ldrh r1, [r1]
	cmp r1, #0
	beq _020CDB78
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDB78:
	cmp r6, #0
	bne _020CDB8C
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDB8C:
	cmp r4, #3
	bls _020CDBA0
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDBA0:
	tst r6, #0x1f
	beq _020CDBB4
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDBB4:
	bl PXI_Init
	mov r0, #0xa
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _020CDBDC
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020CDBDC:
	mov r0, r6
	mov r1, r7
	bl DC_InvalidateRange
	mov r0, r4
	mov r1, r6
	mov r3, r7
	mov r2, #0
	bl MI_DmaFill32
	ldr r0, _020CDD14 ; =0x021CF6A0
	add r1, r6, #0x200
	str r6, [r0, #4]
	str r1, [r6, #0]
	ldr r2, [r0, #4]
	ldr r1, [r2, #0]
	add r1, r1, #0x300
	str r1, [r2, #4]
	ldr r2, [r0, #4]
	ldr r1, [r2, #4]
	add r1, r1, #0x800
	str r1, [r2, #0xc]
	ldr r1, [r0, #4]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x100
	str r0, [r1, #0x10]
	bl WmClearFifoRecvFlag
	ldr r1, _020CDD14 ; =0x021CF6A0
	mov r3, #0
	ldr r0, [r1, #4]
	mov r2, r3
	strh r4, [r0, #0x14]
	ldr r0, [r1, #4]
	str r3, [r0, #0x14c]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r3, [r0, #0x50]
	b _020CDC88
_020CDC6C:
	ldr r0, [r1, #4]
	add r0, r0, r3, lsl #2
	str r2, [r0, #0xcc]
	ldr r0, [r1, #4]
	add r0, r0, r3, lsl #2
	str r2, [r0, #0x10c]
	add r3, r3, #1
_020CDC88:
	cmp r3, #0x10
	blt _020CDC6C
	ldr r0, _020CDD18 ; =0x021CF6A8
	ldr r1, _020CDD1C ; =0x021CF6C8
	mov r2, #0xa
	bl OS_InitMessageQueue
	mov r6, #0
	mov r4, #0x8000
	ldr sl, _020CDD20 ; =0x021CF740
	mov sb, #2
	ldr r8, _020CDD18 ; =0x021CF6A8
	mov r7, #1
	b _020CDCE4
_020CDCBC:
	mov r2, r6, lsl #8
	mov r1, sb
	add r0, sl, r6, lsl #8
	strh r4, [sl, r2]
	bl DC_StoreRange
	mov r0, r8
	mov r2, r7
	add r1, sl, r6, lsl #8
	bl OS_SendMessage
	add r6, r6, #1
_020CDCE4:
	cmp r6, #0xa
	blt _020CDCBC
	ldr r1, _020CDD24 ; =WmReceiveFifo
	mov r0, #0xa
	bl PXI_SetFifoRecvCallback
	ldr r1, _020CDD14 ; =0x021CF6A0
	mov r2, #1
	mov r0, r5
	strh r2, [r1]
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020CDD14: .word Unk_021CF6A0
_020CDD18: .word Unk_021CF6A8
_020CDD1C: .word Unk_021CF6C8
_020CDD20: .word Unk_021CF740
_020CDD24: .word WmReceiveFifo
	arm_func_end WmInitCore

	arm_func_start WM_Finish
WM_Finish: ; 0x020CDD28
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl WMi_CheckInitialized
	cmp r0, #0
	beq _020CDD50
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r4, pc}
_020CDD50:
	mov r0, #1
	mov r1, #0
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl WmClearFifoRecvFlag
	mov r0, #0xa
	mov r1, #0
	bl PXI_SetFifoRecvCallback
	ldr r1, _020CDD94 ; =0x021CF6A0
	mov r2, #0
	str r2, [r1, #4]
	mov r0, r4
	strh r2, [r1]
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CDD94: .word Unk_021CF6A0
	arm_func_end WM_Finish

	arm_func_start WMi_SetCallbackTable
WMi_SetCallbackTable: ; 0x020CDD98
	ldr r2, _020CDDAC ; =0x021CF6A0
	ldr r2, [r2, #4]
	add r0, r2, r0, lsl #2
	str r1, [r0, #0x18]
	bx lr
	; .align 2, 0
_020CDDAC: .word Unk_021CF6A0
	arm_func_end WMi_SetCallbackTable

	arm_func_start WmGetCommandBuffer4Arm7
WmGetCommandBuffer4Arm7: ; 0x020CDDB0
	stmfd sp!, {r3, lr}
	ldr r0, _020CDE04 ; =0x021CF6A8
	add r1, sp, #0
	mov r2, #0
	bl OS_ReceiveMessage
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [sp]
	mov r1, #2
	bl DC_InvalidateRange
	ldr r1, [sp]
	ldrh r0, [r1]
	tst r0, #0x8000
	movne r0, r1
	ldmneia sp!, {r3, pc}
	ldr r0, _020CDE04 ; =0x021CF6A8
	mov r2, #1
	bl OS_JamMessage
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CDE04: .word Unk_021CF6A8
	arm_func_end WmGetCommandBuffer4Arm7

	arm_func_start WMi_SendCommand
WMi_SendCommand: ; 0x020CDE08
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl WmGetCommandBuffer4Arm7
	movs r4, r0
	moveq r0, #8
	ldmeqia sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	strh r5, [r4]
	ldrh r5, [sp, #0x14]
	add r0, sp, #0x14
	bic r0, r0, #3
	mov r3, #0
	cmp r5, #0
	add r2, r0, #4
	ble _020CDE68
_020CDE4C:
	add r2, r2, #4
	ldr r1, [r2, #-4]
	add r0, r4, r3, lsl #2
	add r3, r3, #1
	str r1, [r0, #4]
	cmp r3, r5
	blt _020CDE4C
_020CDE68:
	mov r0, r4
	mov r1, #0x100
	bl DC_StoreRange
	mov r1, r4
	mov r0, #0xa
	mov r2, #0
	bl PXI_SendWordByFifo
	mov r5, r0
	ldr r0, _020CDEB0 ; =0x021CF6A8
	mov r1, r4
	mov r2, #1
	bl OS_SendMessage
	cmp r5, #0
	movlt r0, #8
	movge r0, #2
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020CDEB0: .word Unk_021CF6A8
	arm_func_end WMi_SendCommand

	arm_func_start WMi_SendCommandDirect
WMi_SendCommandDirect: ; 0x020CDEB4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	bl WmGetCommandBuffer4Arm7
	movs r5, r0
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_StoreRange
	mov r1, r5
	mov r0, #0xa
	mov r2, #0
	bl PXI_SendWordByFifo
	mov r4, r0
	ldr r0, _020CDF20 ; =0x021CF6A8
	mov r1, r5
	mov r2, #1
	bl OS_SendMessage
	cmp r4, #0
	movlt r0, #8
	movge r0, #2
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CDF20: .word Unk_021CF6A8
	arm_func_end WMi_SendCommandDirect

	arm_func_start WMi_GetSystemWork
WMi_GetSystemWork: ; 0x020CDF24
	ldr r0, _020CDF30 ; =0x021CF6A0
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
_020CDF30: .word Unk_021CF6A0
	arm_func_end WMi_GetSystemWork

	arm_func_start WMi_CheckInitialized
WMi_CheckInitialized: ; 0x020CDF34
	ldr r0, _020CDF4C ; =0x021CF6A0
	ldrh r0, [r0]
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	bx lr
	; .align 2, 0
_020CDF4C: .word Unk_021CF6A0
	arm_func_end WMi_CheckInitialized

	arm_func_start WMi_CheckIdle
WMi_CheckIdle: ; 0x020CDF50
	stmfd sp!, {r3, lr}
	bl WMi_CheckInitialized
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _020CDF94 ; =0x021CF6A0
	mov r1, #2
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	bl DC_InvalidateRange
	ldr r0, _020CDF94 ; =0x021CF6A0
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #1
	movls r0, #3
	movhi r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CDF94: .word Unk_021CF6A0
	arm_func_end WMi_CheckIdle

	arm_func_start WMi_CheckStateEx
WMi_CheckStateEx: ; 0x020CDF98
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	bl WMi_CheckInitialized
	cmp r0, #0
	ldmneia sp!, {r3, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, _020CE028 ; =0x021CF6A0
	mov r1, #2
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	bl DC_InvalidateRange
	ldr r0, _020CE028 ; =0x021CF6A0
	ldr r3, [sp, #8]
	ldr r0, [r0, #4]
	add r1, sp, #8
	ldr r2, [r0, #4]
	bic r0, r1, #3
	add ip, r0, #4
	ldrh lr, [r2]
	cmp r3, #0
	mov r0, #3
	ldmeqia sp!, {r3, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, #0
_020CE000:
	add ip, ip, #4
	ldr r2, [ip, #-4]
	cmp r2, lr
	moveq r0, r1
	subs r3, r3, #1
	str r3, [sp, #8]
	bne _020CE000
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020CE028: .word Unk_021CF6A0
	arm_func_end WMi_CheckStateEx

	arm_func_start WmReceiveFifo
WmReceiveFifo: ; 0x020CE02C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r0, _020CE3C4 ; =0x021CF6A0
	cmp r2, #0
	ldr r4, [r0, #4]
	mov sl, r1
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x10]
	mov r1, #0x100
	bl DC_InvalidateRange
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _020CE070
	ldr r0, [r4, #4]
	mov r1, #0x800
	bl DC_InvalidateRange
_020CE070:
	ldr r0, [r4, #0x10]
	cmp sl, r0
	beq _020CE088
	mov r0, sl
	mov r1, #0x100
	bl DC_InvalidateRange
_020CE088:
	ldrh r0, [sl]
	cmp r0, #0x2c
	blo _020CE140
	cmp r0, #0x80
	bne _020CE0C4
	ldrh r0, [sl, #2]
	cmp r0, #0x13
	bne _020CE0AC
	bl OS_Terminate
_020CE0AC:
	ldr r1, [r4, #0xc8]
	cmp r1, #0
	beq _020CE384
	mov r0, sl
	blx r1
	b _020CE384
_020CE0C4:
	cmp r0, #0x82
	bne _020CE118
	ldrh r0, [sl, #6]
	add r1, r4, r0, lsl #2
	ldr r0, [r1, #0xcc]
	cmp r0, #0
	beq _020CE384
	ldr r0, [r1, #0x10c]
	str r0, [sl, #0x1c]
	ldr r0, [r4, #0x14c]
	strh r0, [sl, #0x22]
	ldr r1, [r4, #4]
	ldr r0, [sl, #8]
	ldrh r1, [r1, #0x72]
	bl DC_InvalidateRange
	ldrh r1, [sl, #6]
	mov r0, sl
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0xcc]
	blx r1
	b _020CE384
_020CE118:
	cmp r0, #0x81
	bne _020CE384
	mov r0, #0xf
	strh r0, [sl]
	ldr r1, [sl, #0x1c]
	cmp r1, #0
	beq _020CE384
	mov r0, sl
	blx r1
	b _020CE384
_020CE140:
	cmp r0, #0xe
	bne _020CE180
	ldrh r0, [sl, #4]
	add r0, r0, #0xf5
	add r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _020CE180
	ldrh r0, [sl, #2]
	cmp r0, #0
	bne _020CE180
	ldr r1, [r4, #4]
	ldr r0, [sl, #8]
	ldrh r1, [r1, #0x72]
	bl DC_InvalidateRange
_020CE180:
	ldrh r1, [sl]
	cmp r1, #2
	ldreqh r0, [sl, #2]
	cmpeq r0, #0
	add r0, r4, r1, lsl #2
	bne _020CE1BC
	ldr r4, [r0, #0x18]
	bl WM_Finish
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	blx r4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CE1BC:
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _020CE1E4
	mov r0, sl
	blx r1
	ldr r0, _020CE3C4 ; =0x021CF6A0
	ldrh r0, [r0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CE1E4:
	ldrh r0, [sl]
	cmp r0, #8
	cmpne r0, #0xc
	bne _020CE384
	cmp r0, #8
	bne _020CE228
	add r0, sl, #0xa
	str r0, [sp]
	ldrh r5, [sl, #8]
	ldrh r6, [sl, #0x10]
	ldrh r0, [sl, #0x12]
	add fp, sl, #0x14
	mov r7, #0
	str r0, [sp, #4]
	ldrh r8, [sl, #0x2c]
	ldrh sb, [sl, #0x2e]
	b _020CE258
_020CE228:
	cmp r0, #0xc
	bne _020CE258
	ldrh r5, [sl, #8]
	ldrh r7, [sl, #0xa]
	ldrh r0, [sl, #0xc]
	mov r6, #0
	mov fp, r6
	str r0, [sp, #4]
	add r0, sl, #0x10
	ldrh r8, [sl, #0x16]
	ldrh sb, [sl, #0x18]
	str r0, [sp]
_020CE258:
	cmp r5, #7
	cmpne r5, #9
	cmpne r5, #0x1a
	bne _020CE384
	cmp r5, #7
	ldreq r1, [r4, #0x14c]
	mov r0, #1
	orreq r0, r1, r0, lsl r6
	mvnne r0, r0, lsl r6
	ldrne r1, [r4, #0x14c]
	add r3, r4, #0x100
	andne r0, r1, r0
	str r0, [r4, #0x14c]
	ldr r0, _020CE3C8 ; =0x021CF6F0
	mov r1, #0
	mov r2, #0x44
	strh r7, [r3, #0x50]
	bl MI_CpuFill8
	ldr ip, _020CE3C4 ; =0x021CF6A0
	mov r1, #0x82
	strh r1, [ip, #0x50]
	mov r1, #0
	strh r1, [ip, #0x52]
	strh r5, [ip, #0x54]
	str r1, [ip, #0x58]
	str r1, [ip, #0x5c]
	strh r1, [ip, #0x60]
	strh r6, [ip, #0x62]
	strh r7, [ip, #0x70]
	ldr r2, [r4, #0x14c]
	ldr r1, _020CE3CC ; =0x0000FFFF
	strh r2, [ip, #0x72]
	strh r1, [ip, #0x6a]
	ldr r3, [sp, #4]
	ldr r0, [sp]
	ldr r1, _020CE3D0 ; =0x021CF704
	mov r2, #6
	strh r3, [ip, #0x8c]
	bl MI_CpuCopy8
	cmp fp, #0
	mov r2, #0x18
	beq _020CE310
	ldr r1, _020CE3D4 ; =0x021CF714
	mov r0, fp
	bl MIi_CpuCopy16
	b _020CE31C
_020CE310:
	ldr r1, _020CE3D4 ; =0x021CF714
	mov r0, #0
	bl MIi_CpuClear16
_020CE31C:
	cmp r7, #0
	moveq r1, r8
	movne r1, sb
	cmp r7, #0
	ldr r0, _020CE3C4 ; =0x021CF6A0
	ldr r7, _020CE3C4 ; =0x021CF6A0
	strh r1, [r0, #0x90]
	movne sb, r8
	ldr r5, _020CE3C8 ; =0x021CF6F0
	mov r6, #0
	strh sb, [r7, #0x92]
_020CE348:
	strh r6, [r7, #0x56]
	add r2, r4, r6, lsl #2
	ldr r0, [r2, #0xcc]
	cmp r0, #0
	beq _020CE370
	ldr r1, [r2, #0x10c]
	mov r0, r5
	str r1, [r7, #0x6c]
	ldr r1, [r2, #0xcc]
	blx r1
_020CE370:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, #0x10
	blo _020CE348
_020CE384:
	ldr r0, [r4, #0x10]
	mov r1, #0x100
	bl DC_InvalidateRange
	bl WmClearFifoRecvFlag
	ldr r0, [r4, #0x10]
	cmp sl, r0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r2, [sl]
	mov r0, sl
	mov r1, #0x100
	orr r2, r2, #0x8000
	strh r2, [sl]
	bl DC_StoreRange
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CE3C4: .word Unk_021CF6A0
_020CE3C8: .word Unk_021CF6F0
_020CE3CC: .word 0x0000FFFF
_020CE3D0: .word 0x021CF704
_020CE3D4: .word 0x021CF714
	arm_func_end WmReceiveFifo

	arm_func_start WmClearFifoRecvFlag
WmClearFifoRecvFlag: ; 0x020CE3D8
	ldr r1, _020CE3F0 ; =0x027FFF96
	ldrh r0, [r1]
	tst r0, #1
	bicne r0, r0, #1
	strneh r0, [r1]
	bx lr
	; .align 2, 0
_020CE3F0: .word 0x027FFF96
	arm_func_end WmClearFifoRecvFlag

	arm_func_start WMi_GetStatusAddress
WMi_GetStatusAddress: ; 0x020CE3F4
	stmfd sp!, {r3, lr}
	bl WMi_CheckInitialized
	cmp r0, #0
	movne r0, #0
	ldreq r0, _020CE414 ; =0x021CF6A0
	ldreq r0, [r0, #4]
	ldreq r0, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CE414: .word Unk_021CF6A0
	arm_func_end WMi_GetStatusAddress

	arm_func_start WM_GetAID
WM_GetAID: ; 0x020CE418
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020CE444 ; =0x021CF6A0
	ldr r1, [r1, #4]
	cmp r1, #0
	addne r1, r1, #0x100
	ldrneh r4, [r1, #0x50]
	moveq r4, #0
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CE444: .word Unk_021CF6A0
	arm_func_end WM_GetAID

	arm_func_start WM_GetConnectedAIDs
WM_GetConnectedAIDs: ; 0x020CE448
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020CE474 ; =0x021CF6A0
	ldr r1, [r1, #4]
	cmp r1, #0
	ldrne r4, [r1, #0x14c]
	moveq r4, #0
	bl OS_RestoreInterrupts
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CE474: .word Unk_021CF6A0
	arm_func_end WM_GetConnectedAIDs

	.bss


	.global Unk_021CF6A0
Unk_021CF6A0: ; 0x021CF6A0
	.space 0x4

	.global Unk_021CF6A4
Unk_021CF6A4: ; 0x021CF6A4
	.space 0x4

	.global Unk_021CF6A8
Unk_021CF6A8: ; 0x021CF6A8
	.space 0x20

	.global Unk_021CF6C8
Unk_021CF6C8: ; 0x021CF6C8
	.space 0x28

	.global Unk_021CF6F0
Unk_021CF6F0: ; 0x021CF6F0
	.space 0x50

	.global Unk_021CF740
Unk_021CF740: ; 0x021CF740
	.space 0xA00

