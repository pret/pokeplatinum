	.include "macros/function.inc"
	.include "include/unk_020AB164.inc"

	.extern Unk_021C5A60
	

	.text


	arm_func_start NNSi_G2dGetCellTransferState
NNSi_G2dGetCellTransferState: ; 0x020AB164
	ldr r2, _020AB178 ; =0x021C5A60
	mov r1, #0x30
	ldr r2, [r2, #8]
	mla r0, r1, r0, r2
	bx lr
	; .align 2, 0
_020AB178: .word Unk_021C5A60
	arm_func_end NNSi_G2dGetCellTransferState

	arm_func_start NNSi_G2dInitCellTransferState
NNSi_G2dInitCellTransferState: ; 0x020AB17C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _020AB21C ; =0x021C5A60
	mov r4, #0x30
	ldr ip, [ip, #8]
	mov r7, r1
	mla r4, r0, r4, ip
	mov r0, r4
	mov r6, r2
	mov r5, r3
	bl NNSi_G2dInitializeVRamLocation
	mvn r0, #0
	cmp r7, r0
	beq _020AB1C0
	mov r0, r4
	mov r2, r7
	mov r1, #0
	bl NNSi_G2dSetVramLocation
_020AB1C0:
	mvn r0, #0
	cmp r6, r0
	beq _020AB1DC
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl NNSi_G2dSetVramLocation
_020AB1DC:
	mvn r0, #0
	cmp r5, r0
	beq _020AB1F8
	mov r0, r4
	mov r2, r5
	mov r1, #2
	bl NNSi_G2dSetVramLocation
_020AB1F8:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #0xc]
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x24]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AB21C: .word Unk_021C5A60
	arm_func_end NNSi_G2dInitCellTransferState

	arm_func_start NNS_G2dInitCellTransferStateManager
NNS_G2dInitCellTransferStateManager: ; 0x020AB220
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020AB280 ; =0x021C5A60
	movs r6, r1
	mov r7, r0
	mov r5, #0
	stmia r3, {r2, r6, r7}
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, r5
_020AB240:
	mov r0, r7
	bl NNSi_G2dInitializeVRamLocation
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	str r4, [r7, #0x14]
	str r4, [r7, #0x18]
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	str r4, [r7, #0x28]
	add r5, r5, #1
	str r4, [r7, #0x2c]
	cmp r5, r6
	add r7, r7, #0x30
	blo _020AB240
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AB280: .word Unk_021C5A60
	arm_func_end NNS_G2dInitCellTransferStateManager

	arm_func_start NNS_G2dUpdateCellTransferStateManager
NNS_G2dUpdateCellTransferStateManager: ; 0x020AB284
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r1, _020AB3A0 ; =0x021C5A60
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r1, #4]
	cmp r0, #0
	addls sp, sp, #8
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #4]
	str r0, [sp]
_020AB2B0:
	ldr r4, _020AB3A0 ; =0x021C5A60
	ldr r0, [sp]
	ldr r1, [r4, #8]
	add r8, r1, r0
	ldr r0, [r8, #0x1c]
	cmp r0, #0
	beq _020AB36C
	mov r7, #0
	cmp r7, #3
	bge _020AB364
	ldr r5, _020AB3A4 ; =0x020F9688
	mov fp, r7
	mov r6, #1
_020AB2E4:
	ldr r0, [r8, #0x24]
	mov r1, fp
	tst r0, r6, lsl r7
	beq _020AB300
	ldr r0, [r8, #0x20]
	tst r0, r6, lsl r7
	movne r1, r6
_020AB300:
	cmp r1, #0
	beq _020AB358
	cmp r7, #0
	ldreq sl, [r8, #0x14]
	ldr sb, [r5, r7, lsl #2]
	mov r0, r8
	mov r1, r7
	ldrne sl, [r8, #0x10]
	bl NNSi_G2dGetVramLocation
	ldr r2, [r8, #0x28]
	mov r1, r0
	mov r0, sb
	ldr r3, [r8, #0x2c]
	ldr sb, [r4]
	add r2, sl, r2
	blx sb
	cmp r0, #0
	beq _020AB358
	mvn r0, r6, lsl r7
	ldr r1, [r8, #0x24]
	and r0, r1, r0
	str r0, [r8, #0x24]
_020AB358:
	add r7, r7, #1
	cmp r7, #3
	blt _020AB2E4
_020AB364:
	mov r0, #0
	str r0, [r8, #0x20]
_020AB36C:
	ldr r0, [sp, #4]
	ldr r1, _020AB3A0 ; =0x021C5A60
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r1, #4]
	add r0, r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	cmp r0, r1
	blo _020AB2B0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AB3A0: .word Unk_021C5A60
_020AB3A4: .word Unk_020F9688
	arm_func_end NNS_G2dUpdateCellTransferStateManager

	arm_func_start NNS_G2dSetCellTransferStateRequested
NNS_G2dSetCellTransferStateRequested: ; 0x020AB3A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	bl NNSi_G2dGetCellTransferState
	mvn r1, #0
	str r1, [r0, #0x24]
	str r5, [r0, #0x28]
	str r4, [r0, #0x2c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G2dSetCellTransferStateRequested

	arm_func_start NNS_G2dGetNewCellTransferStateHandle
NNS_G2dGetNewCellTransferStateHandle: ; 0x020AB3CC
	ldr r1, _020AB420 ; =0x021C5A60
	mov r0, #0
	ldr r3, [r1, #4]
	cmp r3, #0
	bls _020AB418
	ldr ip, [r1, #8]
	mov r2, ip
_020AB3E8:
	ldr r1, [r2, #0x1c]
	cmp r1, #1
	beq _020AB408
	mov r1, #0x30
	mla r1, r0, r1, ip
	mov r2, #1
	str r2, [r1, #0x1c]
	bx lr
_020AB408:
	add r0, r0, #1
	cmp r0, r3
	add r2, r2, #0x30
	blo _020AB3E8
_020AB418:
	mvn r0, #0
	bx lr
	; .align 2, 0
_020AB420: .word Unk_021C5A60
	arm_func_end NNS_G2dGetNewCellTransferStateHandle

	arm_func_start NNS_G2dFreeCellTransferStateHandle
NNS_G2dFreeCellTransferStateHandle: ; 0x020AB424
	stmfd sp!, {r4, lr}
	ldr r2, _020AB46C ; =0x021C5A60
	mov r1, #0x30
	ldr r2, [r2, #8]
	mla r4, r0, r1, r2
	mov r0, r4
	bl NNSi_G2dInitializeVRamLocation
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020AB46C: .word Unk_021C5A60
	arm_func_end NNS_G2dFreeCellTransferStateHandle

	.rodata


	.global Unk_020F9688
Unk_020F9688: ; 0x020F9688
	.incbin "incbin/arm9_rodata.bin", 0x14A48, 0xC



	.bss


	.global Unk_021C5A60
Unk_021C5A60: ; 0x021C5A60
	.space 0x4

	.global Unk_021C5A64
Unk_021C5A64: ; 0x021C5A64
	.space 0x4

	.global Unk_021C5A68
Unk_021C5A68: ; 0x021C5A68
	.space 0x4

