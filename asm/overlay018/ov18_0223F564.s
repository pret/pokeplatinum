	.include "macros/function.inc"
	.include "overlay018/ov18_0223F564.inc"

	

	.text


	arm_func_start ov18_0223F564
ov18_0223F564: ; 0x0223F564
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x54
	mov r4, r0
	ldr r0, _0223F6CC ; =0x00001BA0
	mov r1, #0x20
	bl ov18_02245068
	ldr r2, _0223F6D0 ; =0x02253394
	add r1, r0, #0x1000
	str r0, [r2, #0]
	str r4, [r1, #0x370]
	bl OS_GetTick
	ldr r4, _0223F6D0 ; =0x02253394
	mov r2, #3
	ldr r3, [r4, #0]
	add r3, r3, #0x1000
	str r0, [r3, #0xb88]
	str r1, [r3, #0xb8c]
	ldr r0, [r4, #0]
	ldr r1, _0223F6D4 ; =ov18_0223F818
	bl WM_Initialize
	cmp r0, #2
	bne _0223F6B8
_0223F5BC:
	ldr r0, [r4, #0]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl WM_ReadStatus
	ldr ip, [r4]
	add r0, ip, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	bne _0223F5BC
	add r0, ip, #0x374
	ldr r5, _0223F6D8 ; =0x02249610
	add lr, r0, #0x1000
	mov r4, #4
_0223F5F0:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0223F5F0
	ldr r0, [r5, #0]
	add r1, ip, #0xf00
	str r0, [lr]
	add r0, ip, #0x1000
	str r1, [r0, #0x374]
	bl WM_GetDispersionScanPeriod
	ldr r1, _0223F6D0 ; =0x02253394
	ldr r1, [r1, #0]
	add r1, r1, #0x1300
	strh r0, [r1, #0x7c]
	add r0, sp, #0
	bl OS_GetOwnerInfo
	ldr r1, _0223F6D0 ; =0x02253394
	ldr r0, _0223F6DC ; =0x02249604
	ldr r1, [r1, #0]
	mov r2, #8
	add r1, r1, #0x388
	add r1, r1, #0x1000
	bl MI_CpuCopy8
	ldr r2, _0223F6D0 ; =0x02253394
	mov r3, #1
	ldr r1, [r2, #0]
	add r0, sp, #4
	add r1, r1, #0x1000
	strb r3, [r1, #0x391]
	ldr r1, [r2, #0]
	ldrh r2, [sp, #0x1a]
	add r1, r1, #0x394
	add r1, r1, #0x1000
	mov r2, r2, lsl #1
	bl MI_CpuCopy8
	bl ov18_0223F6E8
	cmp r0, #0
	beq _0223F6B8
	mov r0, #0
	ldr r1, _0223F6E0 ; =ov18_0223FB0C
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223F6D0 ; =0x02253394
	add sp, sp, #0x54
	ldr r1, [r1, #0]
	add r1, r1, #0x1000
	str r0, [r1, #0xb90]
	mov r0, #1
	ldmia sp!, {r4, r5, pc}
_0223F6B8:
	ldr r0, _0223F6E4 ; =0x02253394
	bl ov18_0224508C
	mov r0, #0
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0223F6CC: .word 0x00001BA0
_0223F6D0: .word Unk_ov18_02253394
_0223F6D4: .word ov18_0223F818
_0223F6D8: .word Unk_ov18_02249610
_0223F6DC: .word Unk_ov18_02249604
_0223F6E0: .word ov18_0223FB0C
_0223F6E4: .word Unk_ov18_02253394
	arm_func_end ov18_0223F564

	arm_func_start ov18_0223F6E8
ov18_0223F6E8: ; 0x0223F6E8
	stmfd sp!, {r3, lr}
	ldr r1, _0223F714 ; =0x02253394
	ldr r0, _0223F718 ; =ov18_0223F818
	ldr r1, [r1, #0]
	add r1, r1, #0x374
	add r1, r1, #0x1000
	bl WM_StartScanEx
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223F714: .word Unk_ov18_02253394
_0223F718: .word ov18_0223F818
	arm_func_end ov18_0223F6E8

	arm_func_start ov18_0223F71C
ov18_0223F71C: ; 0x0223F71C
	stmfd sp!, {r4, lr}
	ldr r1, _0223F7F4 ; =0x02253394
	mov r2, #1
	ldr r0, [r1, #0]
	add r0, r0, #0x1000
	strb r2, [r0, #0xb94]
	ldr r0, [r1, #0]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl WM_ReadStatus
	ldr r0, _0223F7F4 ; =0x02253394
	ldr r0, [r0, #0]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	beq _0223F798
	ldr r0, _0223F7F8 ; =ov18_0223F818
	bl WM_Reset
	cmp r0, #2
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r4, _0223F7F4 ; =0x02253394
_0223F774:
	ldr r0, [r4, #0]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl WM_ReadStatus
	ldr r0, [r4, #0]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	bne _0223F774
_0223F798:
	ldr r0, _0223F7F8 ; =ov18_0223F818
	bl WM_End
	cmp r0, #2
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _0223F7F4 ; =0x02253394
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xb90]
	cmp r1, #0
	beq _0223F7CC
	mov r0, #0
	bl ov18_022463CC
_0223F7CC:
	ldr r0, _0223F7F4 ; =0x02253394
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
_0223F7D8:
	ldrb r1, [r0, #0xb94]
	cmp r1, #2
	bne _0223F7D8
	ldr r0, _0223F7FC ; =0x02253394
	bl ov18_0224508C
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223F7F4: .word Unk_ov18_02253394
_0223F7F8: .word ov18_0223F818
_0223F7FC: .word Unk_ov18_02253394
	arm_func_end ov18_0223F71C

	arm_func_start ov18_0223F800
ov18_0223F800: ; 0x0223F800
	ldr r1, _0223F814 ; =0x02253394
	ldr r1, [r1, #0]
	add r1, r1, #0x1000
	str r0, [r1, #0x370]
	bx lr
	; .align 2, 0
_0223F814: .word Unk_ov18_02253394
	arm_func_end ov18_0223F800

	arm_func_start ov18_0223F818
ov18_0223F818: ; 0x0223F818
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, _0223F8A4 ; =0x02253394
	ldr r1, [r1, #0]
	add r1, r1, #0x1000
	ldrb r2, [r1, #0xb94]
	cmp r2, #0
	beq _0223F854
	ldrh r0, [r0]
	cmp r0, #2
	moveq r0, #2
	streqb r0, [r1, #0xb94]
	ldmia sp!, {r3, pc}
_0223F854:
	ldrh r2, [r0]
	cmp r2, #0x26
	ldmneia sp!, {r3, pc}
	ldrh r2, [r0, #8]
	cmp r2, #4
	beq _0223F894
	cmp r2, #5
	bne _0223F89C
	ldrb r1, [r1, #0xb96]
	cmp r1, #0
	beq _0223F888
	bl ov18_0223FA00
	b _0223F88C
_0223F888:
	bl ov18_0223F8A8
_0223F88C:
	bl ov18_0223F6E8
	ldmia sp!, {r3, pc}
_0223F894:
	bl ov18_0223F6E8
	ldmia sp!, {r3, pc}
_0223F89C:
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223F8A4: .word Unk_ov18_02253394
	arm_func_end ov18_0223F818

	arm_func_start ov18_0223F8A8
ov18_0223F8A8: ; 0x0223F8A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov fp, r0
	ldrh r0, [fp, #0xe]
	mov r7, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223F8C0:
	add r0, fp, r7, lsl #2
	ldr r6, [r0, #0x10]
	mov r1, #0xc0
	mov r0, r6
	bl DC_InvalidateRange
	ldr r1, _0223F9F4 ; =0x02249604
	add r0, r6, #0xc
	mov r2, #8
	bl memcmp
	cmp r0, #0
	bne _0223F9E0
	ldr r0, _0223F9F8 ; =0x02253394
	mov r5, #0
	ldr sb, [r0]
	mov r4, #6
	add r8, sb, #0x1300
_0223F900:
	mov r1, r8
	mov r2, r4
	add r0, r6, #4
	bl memcmp
	cmp r0, #0
	bne _0223F958
	rsb r0, r5, r5, lsl #3
	add r0, sb, r0
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	bne _0223F9E0
	ldrb r0, [r6, #0x15]
	tst r0, #1
	beq _0223F9E0
	add r0, sb, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #1
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223F958:
	add r5, r5, #1
	cmp r5, #0x10
	add r8, r8, #7
	blt _0223F900
	ldr r5, _0223F9FC ; =0x022495FC
	add r8, sb, #0x1300
	mov sl, #0
	mov r4, #6
_0223F978:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl memcmp
	cmp r0, #0
	bne _0223F9D0
	rsb r4, sl, sl, lsl #3
	add r1, sb, #0x1300
	add r0, r6, #4
	add r1, r1, r4
	mov r2, #6
	bl MI_CpuCopy8
	ldrb r0, [r6, #0x15]
	tst r0, #1
	ldr r0, _0223F9F8 ; =0x02253394
	movne r1, #1
	ldr r0, [r0, #0]
	moveq r1, #0
	add r0, r0, r4
	add r0, r0, #0x1000
	strb r1, [r0, #0x306]
	b _0223F9E0
_0223F9D0:
	add sl, sl, #1
	cmp sl, #0x10
	add r8, r8, #7
	blt _0223F978
_0223F9E0:
	ldrh r0, [fp, #0xe]
	add r7, r7, #1
	cmp r7, r0
	blt _0223F8C0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223F9F4: .word Unk_ov18_02249604
_0223F9F8: .word Unk_ov18_02253394
_0223F9FC: .word Unk_ov18_022495FC
	arm_func_end ov18_0223F8A8

	arm_func_start ov18_0223FA00
ov18_0223FA00: ; 0x0223FA00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _0223FB04 ; =0x02253394
	mov sl, r0
	ldr r2, [r1, #0]
	add r1, r2, #0x1000
	ldrb r0, [r1, #0xb95]
	cmp r0, #0
	beq _0223FA34
	ldr r1, [r1, #0x370]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223FA34:
	add r0, r2, #0xf00
	mov r1, #0x400
	bl DC_InvalidateRange
	ldrh fp, [sl, #0xe]
	mov r6, #0
	cmp fp, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _0223FB04 ; =0x02253394
	mov r4, #6
	ldr sb, [r0]
_0223FA5C:
	add r0, sl, r6, lsl #2
	ldr r5, [r0, #0x10]
	ldr r1, _0223FB08 ; =0x02249604
	mov r2, #8
	add r0, r5, #0xc
	bl memcmp
	cmp r0, #0
	bne _0223FAF4
	ldrb r0, [r5, #0x15]
	tst r0, #1
	beq _0223FAF4
	mov r7, #0
	add r8, sb, #0x1300
_0223FA90:
	mov r1, r8
	mov r2, r4
	add r0, r5, #4
	bl memcmp
	cmp r0, #0
	bne _0223FAE4
	rsb r0, r7, r7, lsl #3
	add r0, sb, r0
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	bne _0223FAF4
	add r0, sb, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0xb95]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #1
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223FAE4:
	add r7, r7, #1
	cmp r7, #0x10
	add r8, r8, #7
	blt _0223FA90
_0223FAF4:
	add r6, r6, #1
	cmp r6, fp
	blt _0223FA5C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223FB04: .word Unk_ov18_02253394
_0223FB08: .word Unk_ov18_02249604
	arm_func_end ov18_0223FA00

	arm_func_start ov18_0223FB0C
ov18_0223FB0C: ; 0x0223FB0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	str r0, [sp]
	bl OS_GetTick
	ldr r2, _0223FC3C ; =0x02253394
	ldr r3, _0223FC40 ; =0x0017F898
	ldr sl, [r2]
	mov r7, #0
	add r2, sl, #0x1000
	ldr r4, [r2, #0xb88]
	ldr r2, [r2, #0xb8c]
	adds r3, r4, r3
	adc r2, r2, #0
	cmp r1, r2
	cmpeq r0, r3
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _0223FC44 ; =0x022495FC
	mov r6, r7
	mov r5, r7
	mov sb, sl
	add r8, sl, #0x1300
	mov fp, #6
_0223FB60:
	mov r0, r8
	mov r1, r4
	mov r2, fp
	bl memcmp
	cmp r0, #0
	beq _0223FB8C
	add r0, sb, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	movne r6, #1
	moveq r7, #1
_0223FB8C:
	add r5, r5, #1
	cmp r5, #0x10
	add r8, r8, #7
	add sb, sb, #7
	blt _0223FB60
	cmp r6, #0
	cmpne r7, #0
	beq _0223FBC8
	add r0, sl, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _0223FC0C
	mov r0, #2
	blx r1
	b _0223FC0C
_0223FBC8:
	cmp r6, #0
	beq _0223FBEC
	add r0, sl, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _0223FC0C
	mov r0, #1
	blx r1
	b _0223FC0C
_0223FBEC:
	cmp r7, #0
	bne _0223FC0C
	add r0, sl, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _0223FC0C
	mov r0, #0
	blx r1
_0223FC0C:
	ldr r3, _0223FC3C ; =0x02253394
	mov r0, #0
	ldr r2, [r3, #0]
	ldr r1, [sp]
	add r2, r2, #0x1000
	str r0, [r2, #0xb90]
	ldr r2, [r3, #0]
	mov r3, #1
	add r2, r2, #0x1000
	strb r3, [r2, #0xb96]
	bl ov18_022463AC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223FC3C: .word Unk_ov18_02253394
_0223FC40: .word 0x0017F898
_0223FC44: .word Unk_ov18_022495FC
	arm_func_end ov18_0223FB0C

	.rodata


	.global Unk_ov18_022495FC
Unk_ov18_022495FC: ; 0x022495FC
	.incbin "incbin/overlay18_rodata.bin", 0x31C8, 0x31D0 - 0x31C8

	.global Unk_ov18_02249604
Unk_ov18_02249604: ; 0x02249604
	.incbin "incbin/overlay18_rodata.bin", 0x31D0, 0x31DC - 0x31D0

	.global Unk_ov18_02249610
Unk_ov18_02249610: ; 0x02249610
	.incbin "incbin/overlay18_rodata.bin", 0x31DC, 0x44



	.bss


	.global Unk_ov18_02253394
Unk_ov18_02253394: ; 0x02253394
	.space 0x4

