	.include "macros/function.inc"
	.include "overlay018/ov18_02243440.inc"

	

	.text


	arm_func_start ov18_02243440
ov18_02243440: ; 0x02243440
	stmfd sp!, {r4, lr}
	sub sp, sp, #0xe8
	mov r0, #0xe8
	mov r1, #4
	bl ov18_02245068
	ldr r1, _022435D0 ; =0x022533AC
	str r0, [r1, #0]
	add r0, sp, #0xa0
	bl FS_InitFile
	ldr r1, _022435D4 ; =0x0224B1E4
	add r0, sp, #0xa0
	bl FS_OpenFile
	cmp r0, #0
	bne _0224347C
	bl OS_Terminate
_0224347C:
	bl OS_GetLockID
	ldr r2, _022435D0 ; =0x022533AC
	add r1, sp, #0x18
	ldr r3, [r2, #0]
	mov r2, #8
	strh r0, [r3, #0xe4]
	add r0, sp, #0xa0
	ldr r4, [sp, #0xc4]
	bl FS_ReadFile
	add r0, sp, #0xa0
	add r1, sp, #0x10
	mov r2, #8
	bl FS_ReadFile
	add r0, sp, #0xa0
	bl FS_CloseFile
	ldr r0, _022435D0 ; =0x022533AC
	ldr r0, [r0, #0]
	add r0, r0, #0x88
	bl FS_InitArchive
	ldr r0, _022435D0 ; =0x022533AC
	ldr r1, _022435D8 ; =0x02249718
	ldr r0, [r0, #0]
	mov r2, #3
	add r0, r0, #0x88
	bl FS_RegisterArchiveName
	cmp r0, #0
	bne _022434EC
	bl OS_Terminate
_022434EC:
	ldr r0, _022435D0 ; =0x022533AC
	ldr r1, _022435DC ; =ov18_0224367C
	ldr r0, [r0, #0]
	ldr r2, _022435E0 ; =0x00000602
	add r0, r0, #0x88
	bl FS_SetArchiveProc
	ldr r0, [sp, #0x18]
	ldr r1, _022435E4 ; =ov18_022436E0
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r0, _022435E8 ; =ov18_02243730
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _022435D0 ; =0x022533AC
	ldr r2, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x14]
	mov r1, r4
	add r0, r0, #0x88
	bl FS_LoadArchive
	cmp r0, #0
	bne _0224354C
	bl OS_Terminate
_0224354C:
	ldr r0, _022435D0 ; =0x022533AC
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, r1
	add r0, r0, #0x88
	bl FS_LoadArchiveTables
	mov r1, #4
	mov r4, r0
	bl ov18_02245068
	ldr r1, _022435D0 ; =0x022533AC
	mov r2, r4
	ldr r3, [r1, #0]
	str r0, [r3, #0]
	ldr r0, [r1, #0]
	ldr r1, [r0, #0], #0x88
	bl FS_LoadArchiveTables
	ldr r1, _022435D0 ; =0x022533AC
	mov r0, #0x20
	ldr r1, [r1, #0]
	mov r2, #4
	add r1, r1, #4
	bl ov18_02244008
	ldr r2, _022435D0 ; =0x022533AC
	ldr r1, _022435EC ; =0x0224B1FC
	ldr r3, [r2, #0]
	ldr r2, _022435D8 ; =0x02249718
	str r0, [r3, #0x84]
	add r0, sp, #0x20
	bl OS_SPrintf
	add r0, sp, #0x20
	bl FS_ChangeDir
	add sp, sp, #0xe8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022435D0: .word Unk_ov18_022533AC
_022435D4: .word Unk_ov18_0224B1E4
_022435D8: .word Unk_ov18_02249718
_022435DC: .word ov18_0224367C
_022435E0: .word 0x00000602
_022435E4: .word ov18_022436E0
_022435E8: .word ov18_02243730
_022435EC: .word Unk_ov18_0224B1FC
	arm_func_end ov18_02243440

	arm_func_start ov18_022435F0
ov18_022435F0: ; 0x022435F0
	stmfd sp!, {r3, lr}
	ldr r0, _02243670 ; =0x0224B204
	bl FS_ChangeDir
	ldr r0, _02243674 ; =0x022533AC
	ldr r0, [r0, #0]
	add r0, r0, #0x88
	bl FS_UnloadArchiveTables
	ldr r0, _02243674 ; =0x022533AC
	ldr r0, [r0, #0]
	add r0, r0, #0x88
	bl FS_UnloadArchive
	ldr r0, _02243674 ; =0x022533AC
	ldr r0, [r0, #0]
	add r0, r0, #0x88
	bl FS_ReleaseArchiveName
	ldr r0, _02243674 ; =0x022533AC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xe4]
	bl OS_ReleaseLockID
	ldr r0, _02243674 ; =0x022533AC
	mov r2, #0
	ldr r1, [r0, #0]
	strh r2, [r1, #0xe4]
	ldr r0, [r0, #0]
	bl ov18_0224508C
	ldr r1, _02243674 ; =0x022533AC
	ldr r0, _02243678 ; =0x022533AC
	ldr r1, [r1, #0]
	mov r2, #0
	str r2, [r1, #0]
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02243670: .word Unk_ov18_0224B204
_02243674: .word Unk_ov18_022533AC
_02243678: .word Unk_ov18_022533AC
	arm_func_end ov18_022435F0

	arm_func_start ov18_0224367C
ov18_0224367C: ; 0x0224367C
	stmfd sp!, {r3, lr}
	cmp r1, #1
	beq _022436CC
	cmp r1, #9
	beq _0224369C
	cmp r1, #0xa
	beq _022436B4
	b _022436D4
_0224369C:
	ldr r0, _022436DC ; =0x022533AC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xe4]
	bl CARD_LockRom
	mov r0, #0
	ldmia sp!, {r3, pc}
_022436B4:
	ldr r0, _022436DC ; =0x022533AC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xe4]
	bl CARD_UnlockRom
	mov r0, #0
	ldmia sp!, {r3, pc}
_022436CC:
	mov r0, #4
	ldmia sp!, {r3, pc}
_022436D4:
	mov r0, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022436DC: .word Unk_ov18_022533AC
	arm_func_end ov18_0224367C

	arm_func_start ov18_022436E0
ov18_022436E0: ; 0x022436E0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, _0224371C ; =ov18_02243720
	mov lr, r1
	str ip, [sp]
	mov ip, #1
	stmib sp, {r0, ip}
	ldr r0, [r0, #0x28]
	add r1, r2, r0
	mov r2, lr
	sub r0, ip, #2
	bl CARDi_ReadRom
	mov r0, #6
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_0224371C: .word ov18_02243720
	arm_func_end ov18_022436E0

	arm_func_start ov18_02243720
ov18_02243720: ; 0x02243720
	ldr ip, _0224372C ; =FS_NotifyArchiveAsyncEnd
	mov r1, #0
	bx ip
	; .align 2, 0
_0224372C: .word FS_NotifyArchiveAsyncEnd
	arm_func_end ov18_02243720

	arm_func_start ov18_02243730
ov18_02243730: ; 0x02243730
	mov r0, #1
	bx lr
	arm_func_end ov18_02243730

	arm_func_start ov18_02243738
ov18_02243738: ; 0x02243738
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	ldr r3, _02243824 ; =0x022533AC
	mov r6, r0
	ldr r0, [r3, #0]
	mov r5, r1
	ldr r0, [r0, #0x84]
	mov r4, r2
	bl ov18_022440BC
	add r0, sp, #4
	bl FS_InitFile
	add r0, sp, #4
	mov r1, r6
	bl FS_OpenFile
	cmp r0, #0
	bne _0224377C
	bl OS_Terminate
_0224377C:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r2, #2
	sub r7, r1, r0
	cmp r5, #0
	ldr r1, _02243828 ; =0x0224B20C
	mov r0, r6
	strne r7, [r5]
	bl ov18_02243860
	cmp r0, #0
	mvnne r6, #3
	moveq r6, r4
	mov r0, r7
	mov r1, r6
	bl ov18_02245068
	mov r1, r0
	add r0, sp, #4
	mov r2, r7
	str r1, [sp]
	bl FS_ReadFile
	add r0, sp, #4
	bl FS_CloseFile
	cmp r6, #0
	ldrgt r0, [sp]
	addgt sp, sp, #0x4c
	ldmgtia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp]
	cmp r5, #0
	ldr r0, [r0, #0]
	mov r1, r4
	mov r0, r0, lsr #8
	strne r0, [r5]
	bl ov18_02245068
	mov r4, r0
	ldr r0, [sp]
	mov r1, r4
	bl MI_UncompressLZ8
	add r0, sp, #0
	bl ov18_0224508C
	mov r0, r4
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_02243824: .word Unk_ov18_022533AC
_02243828: .word Unk_ov18_0224B20C
	arm_func_end ov18_02243738

	arm_func_start ov18_0224382C
ov18_0224382C: ; 0x0224382C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl ov18_0224508C
	ldr r0, _0224385C ; =0x022533AC
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x84]
	bl ov18_02244064
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_0224385C: .word Unk_ov18_022533AC
	arm_func_end ov18_0224382C

	arm_func_start ov18_02243860
ov18_02243860: ; 0x02243860
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	bl strlen
	mov r4, r0
	mov r0, r6
	bl strlen
	cmp r4, r5
	cmpge r0, r5
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	sub r1, r0, r5
	sub r3, r4, r5
	mov r2, r5
	add r0, r7, r3
	add r1, r6, r1
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02243860

	.rodata


	.global Unk_ov18_02249718
Unk_ov18_02249718: ; 0x02249718
	.incbin "incbin/overlay18_rodata.bin", 0x32E4, 0x4



	.data


	.global Unk_ov18_0224B1E4
Unk_ov18_0224B1E4: ; 0x0224B1E4
	.incbin "incbin/overlay18_data.bin", 0x1A84, 0x1A9C - 0x1A84

	.global Unk_ov18_0224B1FC
Unk_ov18_0224B1FC: ; 0x0224B1FC
	.incbin "incbin/overlay18_data.bin", 0x1A9C, 0x1AA4 - 0x1A9C

	.global Unk_ov18_0224B204
Unk_ov18_0224B204: ; 0x0224B204
	.incbin "incbin/overlay18_data.bin", 0x1AA4, 0x1AAC - 0x1AA4

	.global Unk_ov18_0224B20C
Unk_ov18_0224B20C: ; 0x0224B20C
	.incbin "incbin/overlay18_data.bin", 0x1AAC, 0x3



	.bss


	.global Unk_ov18_022533AC
Unk_ov18_022533AC: ; 0x022533AC
	.space 0x4

