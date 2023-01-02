	.include "macros/function.inc"
	.include "include/unk_020C8550.inc"

	.extern Unk_021CEC24
	.extern Unk_021CEC2C
	.extern Unk_021CEC34
	

	.text


	arm_func_start FSi_GetOverlayBinarySize
FSi_GetOverlayBinarySize: ; 0x020C8550
	ldr r1, [r0, #0x1c]
	mov r2, r1, lsr #0x18
	tst r2, #1
	movne r0, r1, lsl #8
	movne r0, r0, lsr #8
	ldreq r0, [r0, #8]
	bx lr
	arm_func_end FSi_GetOverlayBinarySize

	arm_func_start FS_ClearOverlayImage
FS_ClearOverlayImage: ; 0x020C856C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #0xc]
	ldmib r0, {r4, r5}
	add r6, r5, r1
	mov r0, r4
	mov r1, r6
	bl IC_InvalidateRange
	mov r0, r4
	mov r1, r6
	bl DC_InvalidateRange
	add r0, r4, r5
	sub r2, r6, r5
	mov r1, #0
	bl MI_CpuFill8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end FS_ClearOverlayImage

	arm_func_start FS_GetOverlayFileID
FS_GetOverlayFileID: ; 0x020C85A8
	sub sp, sp, #8
	ldr r1, [r1, #0x18]
	ldr r2, _020C85CC ; =0x021CEC34
	str r1, [sp, #4]
	str r2, [r0, #0]
	str r2, [sp]
	str r1, [r0, #4]
	add sp, sp, #8
	bx lr
	; .align 2, 0
_020C85CC: .word Unk_021CEC34
	arm_func_end FS_GetOverlayFileID

	arm_func_start FSi_LoadOverlayInfoCore
FSi_LoadOverlayInfoCore: ; 0x020C85D0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x54
	movs sb, r1
	ldreq r7, [sp, #0x74]
	ldreq r6, [sp, #0x70]
	ldrne r7, [sp, #0x7c]
	ldrne r6, [sp, #0x78]
	cmp r7, r2, lsl #5
	mov r4, r0
	mov r8, r3
	mov r5, r2, lsl #5
	addls sp, sp, #0x54
	movls r0, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, sp, #0xc
	bl FS_InitFile
	mvn ip, #0
	add r0, sp, #0xc
	mov r1, r8
	add r2, r6, r5
	add r3, r6, r7
	str ip, [sp]
	bl FS_OpenFileDirect
	cmp r0, #0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, sp, #0xc
	mov r1, r4
	mov r2, #0x20
	bl FS_ReadFile
	cmp r0, #0x20
	add r0, sp, #0xc
	beq _020C8668
	bl FS_CloseFile
	add sp, sp, #0x54
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020C8668:
	bl FS_CloseFile
	add r0, sp, #4
	mov r1, r4
	str sb, [r4, #0x20]
	bl FS_GetOverlayFileID
	add r1, sp, #4
	add r0, sp, #0xc
	ldmia r1, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [sp, #0x30]
	add r0, sp, #0xc
	str r1, [r4, #0x24]
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x30]
	sub r1, r2, r1
	str r1, [r4, #0x28]
	bl FS_CloseFile
	mov r0, #1
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end FSi_LoadOverlayInfoCore

	arm_func_start FS_LoadOverlayInfo
FS_LoadOverlayInfo: ; 0x020C86C8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x60
	movs r4, r1
	mov r5, r0
	ldreq r0, _020C87B4 ; =0x021CEC24
	ldrne r0, _020C87B8 ; =0x021CEC2C
	ldr ip, [r0]
	cmp ip, #0
	beq _020C8778
	ldr r0, [r0, #4]
	mov r3, r2, lsl #5
	cmp r0, r2, lsl #5
	addls sp, sp, #0x60
	movls r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
	mov r1, r5
	add r0, ip, r3
	mov r2, #0x20
	bl MI_CpuCopy8
	add r0, sp, #0x18
	str r4, [r5, #0x20]
	bl FS_InitFile
	add r0, sp, #0x10
	mov r1, r5
	bl FS_GetOverlayFileID
	add r1, sp, #0x10
	add r0, sp, #0x18
	ldmia r1, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	addeq sp, sp, #0x60
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x3c]
	add r0, sp, #0x18
	str r1, [r5, #0x24]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x3c]
	sub r1, r2, r1
	str r1, [r5, #0x28]
	bl FS_CloseFile
	add sp, sp, #0x60
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020C8778:
	ldr ip, _020C87BC ; =0x027FFE50
	ldr r3, _020C87C0 ; =0x021CEC34
	ldr r1, [ip]
	mov r0, r5
	str r1, [sp]
	ldr r5, [ip, #4]
	mov r1, r4
	str r5, [sp, #4]
	ldr r4, [ip, #8]
	str r4, [sp, #8]
	ldr r4, [ip, #0xc]
	str r4, [sp, #0xc]
	bl FSi_LoadOverlayInfoCore
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C87B4: .word Unk_021CEC24
_020C87B8: .word Unk_021CEC2C
_020C87BC: .word 0x027FFE50
_020C87C0: .word Unk_021CEC34
	arm_func_end FS_LoadOverlayInfo

	arm_func_start FS_LoadOverlayImageAsync
FS_LoadOverlayImageAsync: ; 0x020C87C4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl FS_InitFile
	add r0, sp, #0
	mov r1, r6
	bl FS_GetOverlayFileID
	add r1, sp, #0
	mov r0, r5
	ldmia r1, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FSi_GetOverlayBinarySize
	mov r4, r0
	mov r0, r6
	bl FS_ClearOverlayImage
	ldr r1, [r6, #4]
	mov r0, r5
	mov r2, r4
	bl FS_ReadFileAsync
	cmp r4, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FS_CloseFile
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end FS_LoadOverlayImageAsync

	arm_func_start FS_LoadOverlayImage
FS_LoadOverlayImage: ; 0x020C8850
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x50
	mov r5, r0
	add r0, sp, #8
	bl FS_InitFile
	add r0, sp, #0
	mov r1, r5
	bl FS_GetOverlayFileID
	add r1, sp, #0
	add r0, sp, #8
	ldmia r1, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	addeq sp, sp, #0x50
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FSi_GetOverlayBinarySize
	mov r4, r0
	mov r0, r5
	bl FS_ClearOverlayImage
	ldr r1, [r5, #4]
	add r0, sp, #8
	mov r2, r4
	bl FS_ReadFile
	cmp r4, r0
	add r0, sp, #8
	beq _020C88D0
	bl FS_CloseFile
	add sp, sp, #0x50
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020C88D0:
	bl FS_CloseFile
	mov r0, #1
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end FS_LoadOverlayImage

	arm_func_start FSi_CompareDigest
FSi_CompareDigest: ; 0x020C88E0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x58
	mov r4, r0
	mov r6, r1
	mov r5, r2
	add r0, sp, #0x44
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r2, _020C8970 ; =0x02101168
	add r1, sp, #4
	ldmia r2, {r0, r2}
	bl MI_CpuCopy8
	ldr r3, _020C8970 ; =0x02101168
	mov r1, r6
	ldr ip, [r3, #4]
	mov r2, r5
	add r0, sp, #0x44
	add r3, sp, #4
	str ip, [sp]
	bl DGT_Hash2CalcHmac
	add r3, sp, #0x44
	mov r2, #0
_020C893C:
	ldr r1, [r3, #0]
	ldr r0, [r4, r2]
	cmp r1, r0
	bne _020C895C
	add r2, r2, #4
	cmp r2, #0x14
	add r3, r3, #4
	blo _020C893C
_020C895C:
	cmp r2, #0x14
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C8970: .word 0x02101168
	arm_func_end FSi_CompareDigest

	arm_func_start FS_StartOverlay
FS_StartOverlay: ; 0x020C8974
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FSi_GetOverlayBinarySize
	ldr r1, _020C8A58 ; =0x027FFC40
	mov r4, r0
	ldrh r0, [r1]
	cmp r0, #2
	bne _020C8A04
	ldr r1, [r5, #0x1c]
	mov r0, #0
	mov r1, r1, lsr #0x18
	tst r1, #2
	beq _020C89E4
	ldr r1, _020C8A5C ; =0x02101D14
	ldr r3, _020C8A60 ; =0x02101D14
	ldr r2, _020C8A64 ; =0x66666667
	sub ip, r1, r3
	smull r1, lr, r2, ip
	mov r1, ip, lsr #0x1f
	ldr r2, [r5, #0]
	add lr, r1, lr, asr #3
	cmp r2, lr
	bhs _020C89E4
	mov r0, #0x14
	mla r0, r2, r0, r3
	ldr r1, [r5, #4]
	mov r2, r4
	bl FSi_CompareDigest
_020C89E4:
	cmp r0, #0
	bne _020C8A04
	ldr r0, [r5, #4]
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	bl OS_Terminate
	ldmia sp!, {r3, r4, r5, pc}
_020C8A04:
	ldr r0, [r5, #0x1c]
	mov r0, r0, lsr #0x18
	tst r0, #1
	beq _020C8A20
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl MIi_UncompressBackward
_020C8A20:
	ldmib r5, {r0, r1}
	bl DC_FlushRange
	ldr r4, [r5, #0x10]
	ldr r5, [r5, #0x14]
	cmp r4, r5
	ldmhsia sp!, {r3, r4, r5, pc}
_020C8A38:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020C8A48
	blx r0
_020C8A48:
	add r4, r4, #4
	cmp r4, r5
	blo _020C8A38
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C8A58: .word 0x027FFC40
_020C8A5C: .word 0x02101D14
_020C8A60: .word 0x02101D14
_020C8A64: .word 0x66666667
	arm_func_end FS_StartOverlay

	arm_func_start FS_EndOverlay
FS_EndOverlay: ; 0x020C8A68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov fp, r0
_020C8A70:
	ldr r1, [fp, #8]
	ldr r0, [fp, #0xc]
	mov r4, #0
	ldr r6, [fp, #4]
	add r0, r1, r0
	mov r5, r4
	add r7, r6, r0
	bl OS_DisableInterrupts
	ldr r1, _020C8B54 ; =0x021D0D68
	mov ip, r4
	ldr lr, [r1]
	mov r8, lr
	cmp lr, #0
	beq _020C8B1C
	mov r2, r4
_020C8AAC:
	ldr sl, [r8, #8]
	ldr sb, [r8]
	cmp sl, #0
	ldr r3, [r8, #4]
	bne _020C8AD0
	cmp r3, r6
	blo _020C8AD0
	cmp r3, r7
	blo _020C8AE0
_020C8AD0:
	cmp sl, r6
	blo _020C8B0C
	cmp sl, r7
	bhs _020C8B0C
_020C8AE0:
	cmp r5, #0
	strne r8, [r5]
	moveq r4, r8
	cmp lr, r8
	streq sb, [r1]
	moveq lr, sb
	str r2, [r8]
	cmp ip, #0
	mov r5, r8
	strne sb, [ip]
	b _020C8B10
_020C8B0C:
	mov ip, r8
_020C8B10:
	mov r8, sb
	cmp sb, #0
	bne _020C8AAC
_020C8B1C:
	bl OS_RestoreInterrupts
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C8B28:
	ldr r1, [r4, #4]
	ldr r5, [r4, #0]
	cmp r1, #0
	beq _020C8B40
	ldr r0, [r4, #8]
	blx r1
_020C8B40:
	mov r4, r5
	cmp r5, #0
	bne _020C8B28
	b _020C8A70
_020C8B50:
	.byte 0xF8, 0x8F, 0xBD, 0xE8
_020C8B54: .word 0x021D0D68
	arm_func_end FS_EndOverlay

	arm_func_start FS_UnloadOverlayImage
FS_UnloadOverlayImage: ; 0x020C8B58
	stmfd sp!, {r3, lr}
	bl FS_EndOverlay
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end FS_UnloadOverlayImage

	arm_func_start FS_LoadOverlay
FS_LoadOverlay: ; 0x020C8B68
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl FS_LoadOverlayInfo
	cmp r0, #0
	beq _020C8B9C
	add r0, sp, #0
	bl FS_LoadOverlayImage
	cmp r0, #0
	bne _020C8BA8
_020C8B9C:
	add sp, sp, #0x2c
	mov r0, #0
	ldmia sp!, {pc}
_020C8BA8:
	add r0, sp, #0
	bl FS_StartOverlay
	mov r0, #1
	add sp, sp, #0x2c
	ldmia sp!, {pc}
	arm_func_end FS_LoadOverlay

	arm_func_start FS_UnloadOverlay
FS_UnloadOverlay: ; 0x020C8BBC
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl FS_LoadOverlayInfo
	cmp r0, #0
	beq _020C8BF0
	add r0, sp, #0
	bl FS_UnloadOverlayImage
	cmp r0, #0
	bne _020C8BFC
_020C8BF0:
	add sp, sp, #0x2c
	mov r0, #0
	ldmia sp!, {pc}
_020C8BFC:
	mov r0, #1
	add sp, sp, #0x2c
	ldmia sp!, {pc}
	arm_func_end FS_UnloadOverlay

	.rodata


	.global Unk_020FE4A8
Unk_020FE4A8: ; 0x020FE4A8
	.incbin "incbin/arm9_rodata.bin", 0x19868, 0x40



	.data


	.global Unk_02101168
Unk_02101168: ; 0x02101168
	.incbin "incbin/arm9_data.bin", 0x2488, 0x248C - 0x2488

	.global Unk_0210116C
Unk_0210116C: ; 0x0210116C
	.incbin "incbin/arm9_data.bin", 0x248C, 0x4

