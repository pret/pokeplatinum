	.include "macros/function.inc"
	.include "include/main_dwcutil.inc"

	

	.text


	arm_func_start DWC_StartUtility
DWC_StartUtility: ; 0x0222F20C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _0222F290 ; =0x022532AC
	str r0, [r3, #4]
	mov r0, r1
	mov r1, r2
	bl ov18_0222F298
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _0222F290 ; =0x022532AC
	mov r1, #0
	strb r1, [r0, #1]
	bl ov18_0222F334
	bl ov18_0222F3FC
	bl ov18_0223E8D8
	ldr r0, _0222F294 ; =ov18_0222FF98
	bl ov18_0222F6C4
	ldr r4, _0222F290 ; =0x022532AC
	mov r5, #0
_0222F258:
	bl ov18_022451C0
	ldr r0, [r4, #0xc]
	blx r0
	mov r0, r5
	bl ov18_02246254
	bl ov18_02245820
	bl ov18_022460BC
	bl OS_WaitVBlankIntr
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0222F258
	bl ov18_0222F674
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222F290: .word Unk_ov18_022532AC
_0222F294: .word ov18_0222FF98
	arm_func_end DWC_StartUtility

	arm_func_start ov18_0222F298
ov18_0222F298: ; 0x0222F298
	ldr r2, _0222F330 ; =0x022532AC
	cmp r0, #0
	strb r0, [r2]
	str r1, [r2, #8]
	blt _0222F2B4
	cmp r0, #6
	ble _0222F2BC
_0222F2B4:
	mov r0, #0
	bx lr
_0222F2BC:
	cmp r0, #1
	bne _0222F2D4
	mov r1, r1, lsr #4
	bics r1, r1, #2
	movne r0, #0
	bxne lr
_0222F2D4:
	ldr r1, _0222F330 ; =0x022532AC
	ldr r1, [r1, #8]
	mov r2, r1, lsl #0x1c
	mov r2, r2, lsr #0x1c
	cmp r2, #1
	movhi r0, #0
	bxhi lr
	cmp r0, #0
	beq _0222F308
	mov r1, r1, lsr #4
	tst r1, #1
	movne r0, #0
	bxne lr
_0222F308:
	cmp r0, #0
	bne _0222F328
	ldr r0, _0222F330 ; =0x022532AC
	ldr r0, [r0, #8]
	mov r0, r0, lsr #4
	tst r0, #1
	moveq r0, #0
	bxeq lr
_0222F328:
	mov r0, #1
	bx lr
	; .align 2, 0
_0222F330: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F298

	arm_func_start ov18_0222F334
ov18_0222F334: ; 0x0222F334
	stmfd sp!, {r3, lr}
	ldr r2, _0222F3F0 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	strh r0, [r2]
	bl GX_DispOff
	ldr r1, _0222F3F4 ; =0x04001000
	ldr r0, [r1, #0]
	bic r0, r0, #0x10000
	str r0, [r1, #0]
	bl OS_IsTickAvailable
	cmp r0, #0
	bne _0222F36C
	bl OS_Terminate
_0222F36C:
	bl OS_IsAlarmAvailable
	cmp r0, #0
	bne _0222F37C
	bl OS_Terminate
_0222F37C:
	mov r0, #0
	bl GX_VBlankIntr
	bl FX_Init
	mvn r0, #0
	bl FS_Init
	bl TP_Init
	bl RTC_Init
	bl GX_DispOff
	ldr r1, _0222F3F4 ; =0x04001000
	ldr r0, [r1, #0]
	bic r0, r0, #0x10000
	str r0, [r1, #0]
	bl ov18_02245E7C
	ldr r0, _0222F3F8 ; =0x022532AC
	ldr r0, [r0, #4]
	bl ov18_02244FB8
	bl ov18_0224589C
	bl ov18_022460F8
	bl ov18_02243440
	bl ov18_0224510C
	bl ov18_02244114
	mov r0, #0x700
	mov r1, #0x20
	bl ov18_02245068
	str r0, [sp]
	bl DWC_BM_Init
	add r0, sp, #0
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222F3F0: .word 0x04000208
_0222F3F4: .word 0x04001000
_0222F3F8: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F334

	arm_func_start ov18_0222F3FC
ov18_0222F3FC: ; 0x0222F3FC
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl GX_VBlankIntr
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #2
	bl GX_SetBankForOBJ
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl GX_SetGraphicsMode
	mov r3, #0x4000000
	ldr r1, [r3, #0]
	add r0, r3, #0x6c
	bic r1, r1, #0x1f00
	str r1, [r3, #0]
	ldr r2, [r3, #0]
	mov r1, #0
	bic r2, r2, #0xe000
	str r2, [r3, #0]
	bl GXx_SetMasterBrightness_
	mov r3, #0x4000000
	ldr r2, [r3, #0]
	ldr r0, _0222F660 ; =0xFFCFFFEF
	ldr r1, _0222F664 ; =0x00200010
	and r0, r2, r0
	orr r0, r0, #0x10
	add ip, r1, #0x3e00000
	orr r0, r0, #0x200000
	str r0, [r3, #0]
	ldrh r1, [r3, #8]
	mov lr, #0
	add r0, r3, #0x50
	bic r1, r1, #0x40
	strh r1, [r3, #8]
	ldrh r4, [r3, #0xa]
	mov r1, #0x3f
	mov r2, #0x10
	bic r4, r4, #0x40
	strh r4, [r3, #0xa]
	ldrh r4, [r3, #0xc]
	bic r4, r4, #0x40
	strh r4, [r3, #0xc]
	ldrh r4, [r3, #0xe]
	bic r4, r4, #0x40
	strh r4, [r3, #0xe]
	str lr, [ip]
	str lr, [r3, #0x14]
	str lr, [r3, #0x18]
	str lr, [r3, #0x1c]
	bl G2x_SetBlendBrightness_
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r0, #0
	bl GXS_SetGraphicsMode
	ldr r1, _0222F668 ; =0x04001000
	ldr r0, [r1, #0]
	bic r0, r0, #0x1f00
	str r0, [r1, #0]
	ldr r0, [r1, #0]
	bic r0, r0, #0xe000
	str r0, [r1, #0]
	add r0, r1, #0x6c
	mov r1, #0
	bl GXx_SetMasterBrightness_
	ldr r3, _0222F668 ; =0x04001000
	ldr r0, _0222F660 ; =0xFFCFFFEF
	ldr r1, [r3, #0]
	mov ip, #0
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r3, #0]
	ldrh r2, [r3, #8]
	add r0, r3, #0x50
	mov r1, #0x3f
	bic r2, r2, #0x40
	strh r2, [r3, #8]
	ldrh lr, [r3, #0xa]
	mov r2, #0x10
	bic lr, lr, #0x40
	strh lr, [r3, #0xa]
	ldrh lr, [r3, #0xc]
	bic lr, lr, #0x40
	strh lr, [r3, #0xc]
	ldrh lr, [r3, #0xe]
	bic lr, lr, #0x40
	strh lr, [r3, #0xe]
	str ip, [r3, #0x10]
	str ip, [r3, #0x14]
	str ip, [r3, #0x18]
	str ip, [r3, #0x1c]
	bl G2x_SetBlendBrightness_
	ldr r2, _0222F66C ; =0x04000008
	ldr r3, _0222F670 ; =0x0400100A
	ldrh r0, [r2]
	add r1, r2, #0x1000
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r2]
	ldrh r0, [r2, #2]
	and r0, r0, #0x43
	orr r0, r0, #0x108
	orr r0, r0, #0xc00
	strh r0, [r2, #2]
	ldrh r0, [r2, #4]
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r2, #4]
	ldrh r0, [r2, #6]
	and r0, r0, #0x43
	orr r0, r0, #0xf10
	strh r0, [r2, #6]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r1]
	ldrh r0, [r3]
	and r0, r0, #0x43
	orr r0, r0, #0xd00
	strh r0, [r3]
	ldrh r0, [r3, #2]
	and r0, r0, #0x43
	orr r0, r0, #0xe00
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	mov r2, #0x4000000
	add r1, r2, #0x304
	and r0, r0, #0x43
	orr r0, r0, #0xf00
	strh r0, [r3, #4]
	ldr r0, [r2, #0]
	bic r0, r0, #0x38000000
	str r0, [r2, #0]
	ldr r0, [r2, #0]
	bic r0, r0, #0x7000000
	str r0, [r2, #0]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	bl ov18_02244424
	bl ov18_02245A44
	bl ov18_02245BD8
	bl ov18_022438B8
	bl GX_DispOn
	ldr r2, _0222F668 ; =0x04001000
	mov r0, #1
	ldr r1, [r2, #0]
	orr r1, r1, #0x10000
	str r1, [r2, #0]
	bl GX_VBlankIntr
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222F660: .word 0xFFCFFFEF
_0222F664: .word 0x00200010
_0222F668: .word 0x04001000
_0222F66C: .word 0x04000008
_0222F670: .word 0x0400100A
	arm_func_end ov18_0222F3FC

	arm_func_start ov18_0222F674
ov18_0222F674: ; 0x0222F674
	stmfd sp!, {r3, lr}
	bl GX_DispOff
	ldr r1, _0222F6C0 ; =0x04001000
	ldr r0, [r1, #0]
	bic r0, r0, #0x10000
	str r0, [r1, #0]
	bl ov18_022460E8
	bl ov18_02245188
	bl ov18_02245910
	bl ov18_0223E968
	bl ov18_0224398C
	bl ov18_02245B28
	bl ov18_02244528
	bl ov18_0224415C
	bl ov18_022435F0
	bl ov18_0224620C
	bl ov18_02244FF8
	bl ov18_02245F30
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222F6C0: .word 0x04001000
	arm_func_end ov18_0222F674

	arm_func_start ov18_0222F6C4
ov18_0222F6C4: ; 0x0222F6C4
	ldr r1, _0222F6D0 ; =0x022532AC
	str r0, [r1, #0xc]
	bx lr
	; .align 2, 0
_0222F6D0: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F6C4

	arm_func_start ov18_0222F6D4
ov18_0222F6D4: ; 0x0222F6D4
	ldr r2, _0222F6E4 ; =0x022532AC
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	bx lr
	; .align 2, 0
_0222F6E4: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F6D4

	arm_func_start ov18_0222F6E8
ov18_0222F6E8: ; 0x0222F6E8
	cmp r0, #0
	ldrne r2, _0222F70C ; =0x022532AC
	ldrne r2, [r2, #0x10]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _0222F70C ; =0x022532AC
	ldrne r0, [r0, #0x14]
	strne r0, [r1]
	bx lr
	; .align 2, 0
_0222F70C: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F6E8

	arm_func_start ov18_0222F710
ov18_0222F710: ; 0x0222F710
	ldr r2, _0222F720 ; =0x022532AC
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	bx lr
	; .align 2, 0
_0222F720: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F710

	arm_func_start ov18_0222F724
ov18_0222F724: ; 0x0222F724
	cmp r0, #0
	ldrne r2, _0222F748 ; =0x022532AC
	ldrne r2, [r2, #0x18]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _0222F748 ; =0x022532AC
	ldrne r0, [r0, #0x1c]
	strne r0, [r1]
	bx lr
	; .align 2, 0
_0222F748: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F724

	arm_func_start ov18_0222F74C
ov18_0222F74C: ; 0x0222F74C
	ldr r0, _0222F758 ; =0x022532AC
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
_0222F758: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F74C

	arm_func_start ov18_0222F75C
ov18_0222F75C: ; 0x0222F75C
	ldr r0, _0222F770 ; =0x022532AC
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	bx lr
	; .align 2, 0
_0222F770: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F75C

	arm_func_start ov18_0222F774
ov18_0222F774: ; 0x0222F774
	ldr r1, _0222F78C ; =0x022532AC
	ldr r1, [r1, #8]
	tst r0, r1, lsr #4
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_0222F78C: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F774

	arm_func_start ov18_0222F790
ov18_0222F790: ; 0x0222F790
	ldr r0, _0222F7A0 ; =0x022532AC
	mov r1, #1
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
_0222F7A0: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F790

	arm_func_start ov18_0222F7A4
ov18_0222F7A4: ; 0x0222F7A4
	ldr r0, _0222F7E0 ; =0x022532AC
	ldrb r1, [r0]
	cmp r1, #6
	moveq r0, #0x38
	bxeq lr
	cmp r1, #1
	bne _0222F7D4
	ldr r0, [r0, #8]
	mov r0, r0, lsr #4
	tst r0, #2
	moveq r0, #0x37
	bxeq lr
_0222F7D4:
	add r0, r1, #0x31
	and r0, r0, #0xff
	bx lr
	; .align 2, 0
_0222F7E0: .word Unk_ov18_022532AC
	arm_func_end ov18_0222F7A4

	.bss


	.global Unk_ov18_022532AC
Unk_ov18_022532AC: ; 0x022532AC
	.space 0x1

	.global Unk_ov18_022532AD
Unk_ov18_022532AD: ; 0x022532AD
	.space 0x3

	.global Unk_ov18_022532B0
Unk_ov18_022532B0: ; 0x022532B0
	.space 0x4

	.global Unk_ov18_022532B4
Unk_ov18_022532B4: ; 0x022532B4
	.space 0x4

	.global Unk_ov18_022532B8
Unk_ov18_022532B8: ; 0x022532B8
	.space 0x4

	.global Unk_ov18_022532BC
Unk_ov18_022532BC: ; 0x022532BC
	.space 0x10

