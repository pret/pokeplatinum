	.include "macros/function.inc"
	.include "overlay004/ov4_021DC734.inc"

	

	.text


	arm_func_start ov4_021DC734
ov4_021DC734: ; 0x021DC734
	stmfd sp!, {r3, lr}
	ldr r0, _021DC758 ; =0x0221A6A8
	ldr r1, [r0, #0x10]
	cmp r1, #0
	movne r1, #1
	strne r1, [r0, #0xc]
	ldmneia sp!, {r3, pc}
	bl ov4_021FB018
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DC758: .word 0x0221A6A8
	arm_func_end ov4_021DC734

	arm_func_start DWC_CancelMatching
DWC_CancelMatching: ; 0x021DC75C
	stmfd sp!, {r3, lr}
	bl ov4_021DC77C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021E2080
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end DWC_CancelMatching

	arm_func_start ov4_021DC77C
ov4_021DC77C: ; 0x021DC77C
	stmfd sp!, {r3, lr}
	bl ov4_021D7708
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl ov4_021E4A34
	cmp r0, #0
	beq _021DC7B8
	bl ov4_021D9A40
	cmp r0, #5
	bne _021DC7B8
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a9]
	cmp r0, #0
	beq _021DC7C0
_021DC7B8:
	mov r0, #0
	ldmia sp!, {r3, pc}
_021DC7C0:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021DC77C

	arm_func_start DWC_StopSCMatchingAsync
DWC_StopSCMatchingAsync: ; 0x021DC7C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl ov4_021D7708
	cmp r0, #0
	bne _021DC814
	bl ov4_021E4A34
	cmp r0, #0
	beq _021DC814
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021DC814
	bl ov4_021D9A40
	cmp r0, #5
	beq _021DC81C
	bl ov4_021D9A40
	cmp r0, #6
	beq _021DC81C
_021DC814:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021DC81C:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xa
	bne _021DC858
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x16]
	bl ov4_021DEB94
	cmp r6, #0
	beq _021DC874
	mov r0, r5
	blx r6
	b _021DC874
_021DC858:
	bl ov4_021E4A34
	str r6, [r0, #0x47c]
	bl ov4_021E4A34
	str r5, [r0, #0x480]
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x1ae]
_021DC874:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DWC_StopSCMatchingAsync

	arm_func_start DWC_AddMatchKeyString
DWC_AddMatchKeyString: ; 0x021DC87C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r1
	mov r5, r2
	mov r7, r0
	cmpne r5, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #0x64
	blo _021DC8E0
	sub r2, r7, #0x64
	mov r0, #0xc
	mul r3, r2, r0
	ldr r0, _021DC994 ; =0x0221A6C8
	ldrb r0, [r0, r3]
	cmp r0, #0
	beq _021DC8E0
	ldr r0, _021DC998 ; =0x0221A6CC
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _021DC8F0
	bl strcmp
	cmp r0, #0
	beq _021DC8F0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021DC8E0:
	bl ov4_021E2F70
	movs r7, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_021DC8F0:
	sub r1, r7, #0x64
	mov r0, #0xc
	mul r4, r1, r0
	ldr r1, _021DC994 ; =0x0221A6C8
	ldr r0, _021DC99C ; =0x0221A6C9
	strb r7, [r1, r4]
	mov r2, #1
	ldr r1, _021DC9A0 ; =0x0221A6CA
	strb r2, [r0, r4]
	mov r2, #0
	ldr r0, _021DC998 ; =0x0221A6CC
	strh r2, [r1, r4]
	ldr r1, [r0, r4]
	cmp r1, #0
	beq _021DC934
	mov r0, #4
	bl ov4_021D77C4
_021DC934:
	mov r0, r6
	ldr r8, _021DC998 ; =0x0221A6CC
	bl strlen
	add r1, r0, #1
	mov r0, #4
	bl ov4_021D7780
	str r0, [r8, r4]
	cmp r0, #0
	bne _021DC96C
	ldr r1, _021DC9A4 ; =0xFFFEC77F
	mov r0, #9
	bl ov4_021DE3BC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021DC96C:
	mov r1, r6
	bl strcpy
	ldr r1, _021DC9A8 ; =0x0221A6D0
	mov r0, r8
	str r5, [r1, r4]
	ldr r1, [r0, r4]
	mov r0, r7
	bl ov4_021FD4E0
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021DC994: .word 0x0221A6C8
_021DC998: .word 0x0221A6CC
_021DC99C: .word 0x0221A6C9
_021DC9A0: .word 0x0221A6CA
_021DC9A4: .word 0xFFFEC77F
_021DC9A8: .word 0x0221A6D0
	arm_func_end DWC_AddMatchKeyString

	arm_func_start DWC_SetMatchingOption
DWC_SetMatchingOption: ; 0x021DC9AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_021E4A34
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _021DC9E8
	cmp r5, #1
	beq _021DCAC0
	b _021DCAEC
_021DC9E8:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x13
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4]
	cmp r0, #0
	beq _021DCA18
	ldrb r0, [r4, #1]
	cmp r0, #1
	movls r0, #3
	ldmlsia sp!, {r3, r4, r5, pc}
_021DCA18:
	ldr r0, _021DCAF4 ; =0x0221A6A8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DCA48
	mov r0, #4
	mov r1, #0x20
	bl ov4_021D7780
	ldr r1, _021DCAF4 ; =0x0221A6A8
	cmp r0, #0
	str r0, [r1, #0]
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, pc}
_021DCA48:
	ldrb r2, [r4]
	ldr r1, _021DCAF4 ; =0x0221A6A8
	mov r3, #0
	strb r2, [r0]
	ldrb r2, [r4, #1]
	ldr r0, [r1, #0]
	strb r2, [r0, #1]
	ldr r0, [r1, #0]
	strb r3, [r0, #2]
	ldr r0, [r1, #0]
	strb r3, [r0, #3]
	ldr r2, [r4, #4]
	ldr r0, [r1, #0]
	str r2, [r0, #4]
	ldr r0, [r1, #0]
	str r3, [r0, #8]
	ldr r0, [r1, #0]
	str r3, [r0, #0xc]
	bl OS_GetTick
	ldr r2, _021DCAF4 ; =0x0221A6A8
	ldr r2, [r2, #0]
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	bl OS_GetTick
	ldr r2, _021DCAF4 ; =0x0221A6A8
	ldr r2, [r2, #0]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021DCAC0:
	ldr r0, [r4, #0]
	cmp r0, #0
	ldrne r0, _021DCAF4 ; =0x0221A6A8
	movne r1, #1
	ldreq r0, _021DCAF4 ; =0x0221A6A8
	moveq r1, #0
	strb r1, [r0, #0x1c]
	ldr r1, _021DCAF4 ; =0x0221A6A8
	mov r0, #0
	strb r0, [r1, #0x1d]
	ldmia sp!, {r3, r4, r5, pc}
_021DCAEC:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DCAF4: .word 0x0221A6A8
	arm_func_end DWC_SetMatchingOption

	arm_func_start ov4_021DCAF8
ov4_021DCAF8: ; 0x021DCAF8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021E4A24
	bl ov4_021E4A34
	str r6, [r0, #0]
	bl ov4_021E4A34
	str r5, [r0, #4]
	bl ov4_021E4A34
	str r4, [r0, #8]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x10]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1c]
	bl ov4_021E4A34
	mov r1, #0
	strh r1, [r0, #0x1a]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0xe4]
	mov r0, r1
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0xf]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x19]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1af]
	bl ov4_021E4A34
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb6]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1dc]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x200]
	bl ov4_021E4A34
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x2f4]
	bl ov4_021E4A34
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x2f8]
	bl ov4_021E4A34
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x2fc]
	bl ov4_021E4A34
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x300]
	bl ov4_021E4A34
	add r0, r0, #0x304
	mov r1, #0
	mov r2, #0x40
	bl MI_CpuFill8
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x344]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x464]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x468]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x474]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x478]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x47c]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x480]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x174]
	str r1, [r0, #0x178]
	bl ov4_021E2FB0
	ldr r1, _021DCC70 ; =0x0221A6A8
	mov r0, #0
	strb r0, [r1, #0x1c]
	strb r0, [r1, #0x1d]
	strh r0, [r1, #0x1e]
	bl ov4_021DECF4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021DCC70: .word 0x0221A6A8
	arm_func_end ov4_021DCAF8

	arm_func_start ov4_021DCC74
ov4_021DCC74: ; 0x021DCC74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r4, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov4_021E4A34
	str r4, [r0, #0x200]
	ldr r4, _021DCDEC ; =ov4_021E41F0
	ldr fp, _021DCDF0 ; =ov4_021E4338
	mov sl, #0
	mov r5, #1
_021DCCB0:
	bl ov4_021E4A34
	mov sb, r0
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F876C
	mov r8, r0
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F8754
	mov r7, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldr r3, [r0, #0x2f8]
	mov r1, r8
	stmia sp, {r3, r5}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r3, _021DCDF4 ; =ov4_021E433C
	str fp, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, _021DCDF8 ; =ov4_021E4340
	mov r2, r7
	str r3, [sp, #0x18]
	ldr r3, _021DCDFC ; =ov4_021E43E4
	add r0, sb, #0x10
	str r3, [sp, #0x1c]
	ldr r3, _021DCE00 ; =ov4_021E43EC
	str r3, [sp, #0x20]
	mov r3, #0
	str r3, [sp, #0x24]
	ldr r3, [r6, #0x2f4]
	bl ov4_021FBD94
	movs r6, r0
	beq _021DCD8C
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC1F0
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x10]
	cmp r6, #3
	bne _021DCD6C
	cmp sl, #4
	bne _021DCD80
_021DCD6C:
	mov r0, r6
	bl ov4_021E3858
	add sp, sp, #0x28
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DCD80:
	add sl, sl, #1
	cmp sl, #5
	blt _021DCCB0
_021DCD8C:
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1c]
	bl ov4_021E4A34
	mov r1, #0
	strh r1, [r0, #0x1a]
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	ldr r1, _021DCE04 ; =ov4_021E43F8
	bl ov4_021FBF88
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	ldr r1, _021DCE08 ; =ov4_021E4418
	bl ov4_021FBF58
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	ldr r1, _021DCE0C ; =ov4_021E44CC
	bl ov4_021FBF70
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC194
	mov r0, r6
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021DCDEC: .word ov4_021E41F0
_021DCDF0: .word ov4_021E4338
_021DCDF4: .word ov4_021E433C
_021DCDF8: .word ov4_021E4340
_021DCDFC: .word ov4_021E43E4
_021DCE00: .word ov4_021E43EC
_021DCE04: .word ov4_021E43F8
_021DCE08: .word ov4_021E4418
_021DCE0C: .word ov4_021E44CC
	arm_func_end ov4_021DCC74

	arm_func_start ov4_021DCE10
ov4_021DCE10: ; 0x021DCE10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x114
	ldr r4, _021DCFE8 ; =0x0221A6A8
	mov r7, r1
	ldr r1, [r4, #8]
	mov r8, r0
	mov r6, r2
	mov r5, r3
	cmp r1, #0
	beq _021DCE50
	mov r0, #4
	mov r2, #0
	bl ov4_021D77C4
	mov r0, r4
	mov r1, #0
	str r1, [r0, #8]
_021DCE50:
	cmp r7, #0
	beq _021DCED0
	add r0, sp, #0x14
	mvn r1, #0
	mov r2, #0x20
	mov r3, #3
	bl ov4_021DF3CC
	mov r4, r0
	ldr r0, _021DCFEC ; =0x022174D8
	bl strlen
	rsb r1, r4, #0x100
	sub r4, r1, r0
	mov r1, r4
	mov r0, #4
	bl ov4_021D7780
	movs r1, r0
	ldr r0, _021DCFE8 ; =0x0221A6A8
	str r1, [r0, #8]
	bne _021DCEB0
	ldr r1, _021DCFF0 ; =0xFFFEC77F
	mov r0, #9
	bl ov4_021DE3BC
	add sp, sp, #0x114
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021DCEB0:
	mov r0, r7
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, _021DCFE8 ; =0x0221A6A8
	mov r1, #0
	ldr r0, [r0, #8]
	add r0, r0, r4
	strb r1, [r0, #-1]
_021DCED0:
	mov r1, r8
	mov r2, r6
	mov r3, r5
	mov r0, #0
	bl ov4_021DF08C
	bl ov4_021E4A34
	ldr r1, [sp, #0x130]
	str r1, [r0, #0x474]
	bl ov4_021E4A34
	ldr r1, [sp, #0x134]
	str r1, [r0, #0x478]
	mov r0, #2
	bl ov4_021E4A44
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	bne _021DCF6C
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	mov r2, r0
	mov r0, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	ldr r0, _021DCFF4 ; =ov4_021E3A90
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x2f4]
	ldr r1, [r4, #0x2f4]
	ldr r2, [r2, #0x2f8]
	bl ov4_021FEAE8
	str r0, [r6, #0xe4]
_021DCF6C:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	bne _021DCF90
	mov r0, #5
	bl ov4_021E37C4
	cmp r0, #0
	addne sp, sp, #0x114
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021DCF90:
	ldr r1, _021DCFF8 ; =0x022174E0
	mov r0, #3
	mov r2, #0
	bl ov4_021DB978
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	bl ov4_021DF1D0
	bl ov4_021E37C4
	cmp r0, #0
	addne sp, sp, #0x114
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _021DCFD8
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	bl ov4_021DCC74
_021DCFD8:
	mov r0, #0
	bl ov4_021E32B4
	add sp, sp, #0x114
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021DCFE8: .word 0x0221A6A8
_021DCFEC: .word 0x022174D8
_021DCFF0: .word 0xFFFEC77F
_021DCFF4: .word ov4_021E3A90
_021DCFF8: .word 0x022174E0
	arm_func_end ov4_021DCE10

	arm_func_start ov4_021DCFFC
ov4_021DCFFC: ; 0x021DCFFC
	stmfd sp!, {r4, lr}
	mov lr, r1
	mov ip, r2
	mov r4, r3
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #2
	bl ov4_021DF08C
	bl ov4_021E4A34
	str r4, [r0, #0x46c]
	bl ov4_021E4A34
	ldr r1, [sp, #8]
	str r1, [r0, #0x470]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	str r0, [r4, #0xf4]
	bl ov4_021E4A34
	mov r1, #1
	str r1, [r0, #0x2f0]
	bl ov4_021E4A34
	mov r2, #0
	strb r2, [r0, #0xe]
	ldr r1, _021DD0A0 ; =0x0221A6A8
	mov r0, #0xa
	strb r2, [r1, #0x1d]
	bl ov4_021E4A44
	bl ov4_021DEB94
	bl ov4_021E3750
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	bl ov4_021DCC74
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021DD0A0: .word 0x0221A6A8
	arm_func_end ov4_021DCFFC

	arm_func_start ov4_021DD0A4
ov4_021DD0A4: ; 0x021DD0A4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, r2
	mov r6, r0
	mov r4, r3
	mov r2, r1
	mov r3, r5
	mov r0, #3
	mov r1, #0
	bl ov4_021DF08C
	bl ov4_021E4A34
	str r4, [r0, #0x46c]
	bl ov4_021E4A34
	ldr r1, [sp, #0x28]
	str r1, [r0, #0x470]
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x17]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	str r0, [r4, #0x20]
	bl ov4_021E4A34
	str r6, [r0, #0xf4]
	mov r0, #4
	bl ov4_021E4A44
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	bne _021DD178
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	mov r2, r0
	mov r0, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	ldr r0, _021DD204 ; =ov4_021E3A90
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x2f4]
	ldr r1, [r4, #0x2f4]
	ldr r2, [r2, #0x2f8]
	bl ov4_021FEAE8
	str r0, [r6, #0xe4]
_021DD178:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	bne _021DD19C
	mov r0, #5
	bl ov4_021E37C4
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r3, r4, r5, r6, pc}
_021DD19C:
	ldr r1, _021DD208 ; =0x022174E0
	mov r0, #5
	mov r2, #0
	bl ov4_021DB978
	bl ov4_021E3750
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r3, r4, r5, r6, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _021DD1E4
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	bl ov4_021DCC74
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r3, r4, r5, r6, pc}
_021DD1E4:
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	mov r1, #0
	bl ov4_021E1034
	bl ov4_021E1008
	cmp r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021DD204: .word ov4_021E3A90
_021DD208: .word 0x022174E0
	arm_func_end ov4_021DD0A4

	arm_func_start ov4_021DD20C
ov4_021DD20C: ; 0x021DD20C
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	bl ov4_021FBFA0
	ldr r0, [r4, #0xb4]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	cmpne r0, #1
	beq _021DD248
	cmp r0, #2
	beq _021DD29C
	ldmia sp!, {r4, pc}
_021DD248:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_021DD25C: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _021DD28C ; case 1
	b _021DD28C ; case 2
	b _021DD28C ; case 3
	b _021DD28C ; case 4
	ldmia sp!, {r4, pc} ; case 5
	b _021DD28C ; case 6
	ldmia sp!, {r4, pc} ; case 7
	ldmia sp!, {r4, pc} ; case 8
	ldmia sp!, {r4, pc} ; case 9
	ldmia sp!, {r4, pc} ; case 10
	b _021DD28C ; case 11
_021DD28C:
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC194
	ldmia sp!, {r4, pc}
_021DD29C:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	ldmneia sp!, {r4, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC194
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021DD20C

	arm_func_start ov4_021DD2BC
ov4_021DD2BC: ; 0x021DD2BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	bl ov4_021E4A34
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021D7708
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	bne _021DD338
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021DD30C
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FBFA0
_021DD30C:
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F849C
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD338:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _021DDA64
_021DD360: ; jump table
	b _021DDA64 ; case 0
	b _021DD96C ; case 1
	b _021DD514 ; case 2
	b _021DD514 ; case 3
	b _021DD398 ; case 4
	b _021DD514 ; case 5
	b _021DDA64 ; case 6
	b _021DD5D4 ; case 7
	b _021DDA64 ; case 8
	b _021DDA64 ; case 9
	b _021DDA64 ; case 10
	b _021DD758 ; case 11
	b _021DDA64 ; case 12
	b _021DD84C ; case 13
_021DD398:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1c8]
	cmp r0, #0
	beq _021DD484
	bl OS_GetTick
	mov r6, r0
	mov r7, r1
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	ldr r1, [r5, #0x1cc]
	ldr r0, [r5, #0x1d0]
	subs r2, r6, r1
	sbc r0, r7, r0
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	mov r3, #0
	bl _ull_div
	cmp r1, #0
	ldr r1, [r4, #0x1c8]
	cmpeq r0, r1
	bls _021DD484
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021DD470
	bl ov4_021E4A34
	ldrb r1, [r0, #0x1aa]
	add r1, r1, #1
	strb r1, [r0, #0x1aa]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1aa]
	cmp r0, #5
	bls _021DD44C
	ldr r1, _021DDD30 ; =0xFFFEC5D2
	mov r0, #6
	bl ov4_021DE3BC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD44C:
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	mov r1, #0
	bl ov4_021E1034
	bl ov4_021E1008
	cmp r0, #0
	beq _021DD484
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD470:
	mov r0, #0
	bl ov4_021E14AC
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_021DD484:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1bc]
	cmp r0, #0
	beq _021DDA64
	bl ov4_021E4A34
	ldrb r1, [r0, #0xd]
	ldr r0, _021DDD34 ; =0x00000BB8
	mul r0, r1, r0
	add r0, r0, #0x3b8
	add r5, r0, #0x800
	bl OS_GetTick
	mov r4, r0
	mov r6, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x1c0]
	ldr r0, [r0, #0x1c4]
	subs r2, r4, r1
	sbc r0, r6, r0
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	mov r3, #0
	bl _ull_div
	cmp r1, #0
	cmpeq r0, r5
	blo _021DDA64
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	mov r1, #0
	bl ov4_021E1034
	bl ov4_021E1008
	cmp r0, #0
	beq _021DDA64
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD514:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe8]
	cmp r0, #0
	ble _021DDA64
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #3
	bne _021DD550
	bl ov4_021E4A34
	ldrb r1, [r0, #0xd]
	ldr r0, _021DDD34 ; =0x00000BB8
	mul r0, r1, r0
	add r0, r0, #0x3b8
	add r5, r0, #0x800
	b _021DD564
_021DD550:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe8]
	cmp r0, #1
	moveq r5, #0x3e8
	ldrne r5, _021DDD34 ; =0x00000BB8
_021DD564:
	bl OS_GetTick
	mov r4, r0
	mov r6, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0xec]
	ldr r0, [r0, #0xf0]
	subs r3, r4, r1
	sbc r0, r6, r0
	mov r1, r0, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	cmp r1, #0
	cmpeq r0, r5
	bls _021DDA64
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	bl ov4_021DF1D0
	bl ov4_021E37C4
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0xe8]
	b _021DDA64
_021DD5D4:
	bl ov4_021E4A34
	ldr r1, [r0, #0x190]
	ldr r0, [r0, #0x18c]
	cmp r1, #0
	cmpeq r0, #0
	beq _021DD660
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x18c]
	ldr r0, [r0, #0x190]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _021DDD38 ; =0x000061A8
	cmp r1, #0
	cmpeq r0, r2
	bls _021DDA64
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	bl ov4_021E17F4
	cmp r0, #0
	bne _021DDA64
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD660:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x3cc]
	cmp r0, #6
	bne _021DDA64
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _021DDD3C ; =0x00001770
	cmp r1, #0
	cmpeq r0, r2
	bls _021DDA64
	bl ov4_021E4A34
	ldrb r1, [r0, #0x3cd]
	add r1, r1, #1
	strb r1, [r0, #0x3cd]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x3cd]
	cmp r0, #5
	bls _021DD6F8
	bl ov4_021DE39C
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	bl ov4_021E17F4
	cmp r0, #0
	bne _021DDA64
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD6F8:
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	add r1, r4, #0x3d4
	str r1, [sp]
	add r3, r5, #0x300
	ldr r1, [r0, #0x458]
	mov r0, #6
	str r1, [sp, #4]
	ldr r1, [r7, #0x454]
	ldr r2, [r6, #0x3d0]
	ldrh r3, [r3, #0xce]
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	beq _021DDA64
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD758:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x3cc]
	cmp r0, #2
	bne _021DDA64
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021DD7C0
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _021DDD3C ; =0x00001770
	cmp r1, #0
	cmpeq r0, r2
	bhi _021DD818
_021DD7C0:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021DDA64
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _021DDD40 ; =0x00004A38
	cmp r1, #0
	cmpeq r0, r2
	bls _021DDA64
_021DD818:
	bl ov4_021DE39C
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov4_021E15D8
	cmp r0, #0
	bne _021DDA64
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD84C:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x3cc]
	cmp r0, #8
	bne _021DDA64
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _021DDD44 ; =0x00007530
	cmp r1, #0
	cmpeq r0, r2
	bls _021DDA64
	bl ov4_021E4A34
	ldrb r1, [r0, #0x3cd]
	add r1, r1, #1
	strb r1, [r0, #0x3cd]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x3cd]
	cmp r0, #0
	beq _021DD90C
	bl ov4_021DE39C
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021DD904
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov4_021E15D8
	cmp r0, #0
	bne _021DDA64
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD904:
	bl ov4_021E249C
	b _021DDA64
_021DD90C:
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	add r1, r4, #0x3d4
	str r1, [sp]
	add r3, r5, #0x300
	ldr r1, [r0, #0x458]
	mov r0, #8
	str r1, [sp, #4]
	ldr r1, [r7, #0x454]
	ldr r2, [r6, #0x3d0]
	ldrh r3, [r3, #0xce]
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	beq _021DDA64
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD96C:
	bl ov4_021D9A40
	cmp r0, #5
	bne _021DDA64
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x1f8]
	ldr r0, [r0, #0x1fc]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _021DDD44 ; =0x00007530
	cmp r1, #0
	cmpeq r0, r2
	bls _021DDA64
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1ad]
	cmp r0, #5
	blo _021DD9EC
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	bl ov4_021E17F4
	cmp r0, #0
	bne _021DDA64
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DD9EC:
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r3, [r0, #0xa4]
	ldr r1, [r5, #0xf4]
	ldr r2, [r4, #0x24]
	mov r0, #0x40
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	ldrb r1, [r0, #0x1ad]
	add r1, r1, #1
	strb r1, [r0, #0x1ad]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	ldr r2, _021DDD48 ; =0xFF403B3A
	mvn r3, #0
	adds r0, r0, r2
	str r0, [r4, #0x1f8]
	adc r0, r1, r3
	str r0, [r4, #0x1fc]
_021DDA64:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	beq _021DDA84
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	bne _021DDAFC
_021DDA84:
	bl ov4_021E4A34
	ldr r1, [r0, #0x188]
	ldr r0, [r0, #0x184]
	cmp r1, #0
	cmpeq r0, #0
	beq _021DDAFC
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x184]
	ldr r0, [r0, #0x188]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _021DDD4C ; =0x00002710
	cmp r1, #0
	cmpeq r0, r2
	bls _021DDAFC
	bl ov4_021E4A34
	mov r1, #0
	add r3, r0, #0x194
	mov r2, r1
	mov r0, #1
	bl ov4_021E45DC
_021DDAFC:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _021DDBBC
	ldr r0, _021DDD50 ; =0x0221A6A8
	mov r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x14]
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEE10
	ldr r0, _021DDD50 ; =0x0221A6A8
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021DDB50
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEBBC
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0xe4]
_021DDB50:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _021DDBBC
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEE5C
	cmp r0, #0
	beq _021DDBBC
	bl ov4_021E4A34
	ldr r1, [r0, #0x178]
	ldr r0, [r0, #0x174]
	cmp r1, #0
	cmpeq r0, #0
	beq _021DDBBC
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x178]
	ldr r0, [r0, #0x174]
	cmp r5, r1
	cmpeq r4, r0
	bls _021DDBBC
	ldr r1, _021DDD54 ; =0xFFFEB3EE
	mov r0, #6
	bl ov4_021DE3BC
_021DDBBC:
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021DD20C
	ldr r0, _021DDD50 ; =0x0221A6A8
	mov r1, #0
	str r1, [r0, #0xc]
	mov r1, #1
	str r1, [r0, #0x10]
	bl ov4_021FB89C
	ldr r0, _021DDD50 ; =0x0221A6A8
	mov r2, #0
	str r2, [r0, #0x10]
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _021DDC00
	str r2, [r0, #0xc]
	bl ov4_021FB018
_021DDC00:
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021DDC20
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F849C
_021DDC20:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x12
	bne _021DDC88
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x1f0]
	ldr r0, [r0, #0x1f4]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021DDD2C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _021DDD34 ; =0x00000BB8
	cmp r1, #0
	cmpeq r0, r2
	bls _021DDC88
	bl ov4_021E24D0
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_021DDC88:
	bl ov4_021E285C
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E2D70
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E3324
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1ae]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xa
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x16]
	bl ov4_021DEB94
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1ae]
	bl ov4_021E4A34
	ldr r0, [r0, #0x47c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x480]
	ldr r1, [r4, #0x47c]
	blx r1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DDD2C: .word 0x000082EA
_021DDD30: .word 0xFFFEC5D2
_021DDD34: .word 0x00000BB8
_021DDD38: .word 0x000061A8
_021DDD3C: .word 0x00001770
_021DDD40: .word 0x00004A38
_021DDD44: .word 0x00007530
_021DDD48: .word 0xFF403B3A
_021DDD4C: .word 0x00002710
_021DDD50: .word 0x0221A6A8
_021DDD54: .word 0xFFFEB3EE
	arm_func_end ov4_021DD2BC

	arm_func_start ov4_021DDD58
ov4_021DDD58: ; 0x021DDD58
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r0, [sp, #0x18]
	mov r4, r3
	cmp r0, #0
	cmpne r4, #0
	mov r5, r1
	mov r6, r2
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r1, sp, #0
	mov r0, #0
	mov r2, #8
	bl MIi_CpuClear32
	mov r1, r6, asr #8
	mov r0, r6, lsl #8
	mov r2, #2
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strb r2, [sp, #1]
	strh r0, [sp, #2]
	str r5, [sp, #4]
	ldrb r5, [r4]
	cmp r5, #0xfe
	ldreqb r0, [r4, #1]
	cmpeq r0, #0xfd
	beq _021DDDD4
	cmp r5, #0x5c
	bne _021DDE00
_021DDDD4:
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021DDE3C
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x18]
	add r3, sp, #0
	mov r1, r4
	bl ov4_021FCF60
	b _021DDE3C
_021DDE00:
	ldr r1, _021DDE48 ; =0x022197A8
	mov r0, r4
	mov r2, #6
	bl memcmp
	cmp r0, #0
	bne _021DDE2C
	ldr r1, [sp, #0x18]
	add r2, sp, #0
	mov r0, r4
	bl ov4_021FBC34
	b _021DDE3C
_021DDE2C:
	add sp, sp, #8
	cmp r5, #0xfe
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021DDE3C:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021DDE48: .word 0x022197A8
	arm_func_end ov4_021DDD58

	arm_func_start ov4_021DDE4C
ov4_021DDE4C: ; 0x021DDE4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl ov4_021E4A34
	cmp r0, #0
	beq _021DDE88
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #7
	bne _021DDE88
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a9]
	cmp r0, #0
	beq _021DDE9C
_021DDE88:
	ldr r1, _021DE07C ; =0x022174F4
	mov r0, r8
	mvn r2, #0
	bl ov4_021F84E4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021DDE9C:
	bl ov4_021D9BA8
	mov r5, r0
	mvn r2, #0
	cmp r5, r2
	bne _021DDECC
	ldr r1, _021DE080 ; =0x02217500
	mov r0, r8
	bl ov4_021F84E4
	ldr r1, _021DE084 ; =0xFFFEABC4
	mov r0, #6
	bl ov4_021DE3BC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021DDECC:
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x210]
	cmp r7, r0
	bne _021DDF10
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #1
	add r0, r0, #0x200
	ldrh r0, [r0, #0x90]
	cmp r6, r0
	beq _021DDF9C
_021DDF10:
	ldr r0, [sp, #0x24]
	ldrb r1, [r0]
	cmp r1, #0
	beq _021DDF88
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	mov r4, r0
	bl ov4_021E4A34
	mov sb, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r4, r0
	bne _021DDF88
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	str r7, [r0, #0x210]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #1
	add r0, r0, #0x200
	strh r6, [r0, #0x90]
	b _021DDF9C
_021DDF88:
	ldr r1, _021DE088 ; =0x0221750C
	mov r0, r8
	mvn r2, #0
	bl ov4_021F84E4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021DDF9C:
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	bl ov4_021E4A34
	ldr r1, [r0, #8]
	mov r0, r8
	bl ov4_021F84D8
	cmp r0, #0
	bne _021DDFD4
	ldr r1, _021DE08C ; =0xFFFEC5E6
	mov r0, #6
	bl ov4_021DE3BC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021DDFD4:
	bl ov4_021DE39C
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _021DE008
	ldr r1, [sp, #0x20]
	ldr r0, _021DE090 ; =0x0000FFFF
	mov r4, r1, asr #1
	cmp r0, r1, asr #1
	movle r4, r0
	bl ov4_021E4A34
	add r0, r0, #0x100
	strh r4, [r0, #0xb0]
_021DE008:
	mov r0, r5
	bl ov4_021D9C04
	mov r4, r0
	mov r0, r5
	bl ov4_021D9C7C
	str r8, [r4]
	mov r4, r0
	bl ov4_021E4A34
	ldrb r1, [r0, #0xd]
	add r1, r1, #1
	strb r1, [r0, #0xd]
	strb r5, [r4]
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldrb r1, [r0, #0xd]
	mov r0, r8
	mov r2, #0
	sub r1, r1, #1
	add r1, r5, r1
	ldrb r3, [r1, #0x2d0]
	mov r1, r4
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	str r2, [r4, #4]
	bl ov4_021F877C
	mov r0, #2
	bl ov4_021E1998
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021DE07C: .word 0x022174F4
_021DE080: .word 0x02217500
_021DE084: .word 0xFFFEABC4
_021DE088: .word 0x0221750C
_021DE08C: .word 0xFFFEC5E6
_021DE090: .word 0x0000FFFF
	arm_func_end ov4_021DDE4C

	arm_func_start ov4_021DE094
ov4_021DE094: ; 0x021DE094
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	mov r4, r1
	bl ov4_021E4A34
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #7
	beq _021DE0D8
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, pc}
_021DE0D8:
	cmp r4, #0
	beq _021DE254
	cmp r4, #5
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #6
	bne _021DE228
	bl ov4_021E4A34
	ldrb r1, [r0, #0xc]
	add r1, r1, #1
	strb r1, [r0, #0xc]
	bl ov4_021E4A34
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	bls _021DE144
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0xc]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov4_021E15D8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE144:
	bl ov4_021E4A34
	ldr r3, [r0, #0x200]
	ldr r2, _021DE30C ; =0x022174E4
	add r0, sp, #0x10
	mov r1, #0xc
	bl OS_SNPrintf
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldrb r2, [r6, #0x14]
	ldrb r1, [r0, #0x14]
	add r0, r7, r2, lsl #2
	add r1, r5, r1, lsl #1
	add r1, r1, #0x200
	ldrh r1, [r1, #0x90]
	ldr r0, [r0, #0x210]
	mov r2, #0
	bl ov4_021FABFC
	mov r5, r0
	bl ov4_021E4A34
	mvn r1, #0
	str r1, [sp]
	ldr r3, _021DE310 ; =0x00001388
	mov r1, #0
	str r3, [sp, #4]
	ldr r0, [r0, #8]
	mov r2, r5
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #4]
	add r3, sp, #0x10
	ldr r0, [r0, #0]
	bl ov4_021F84F0
	cmp r0, #1
	bne _021DE1F4
	bl ov4_021E39EC
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE1F4:
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov4_021E15D8
	add sp, sp, #0x1c
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE228:
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov4_021E15D8
	add sp, sp, #0x1c
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE254:
	bl ov4_021D9BA8
	mov r5, r0
	mvn r1, #0
	cmp r5, r1
	bne _021DE27C
	ldr r1, _021DE314 ; =0xFFFEABC4
	mov r0, #6
	bl ov4_021DE3BC
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE27C:
	bl ov4_021D9C04
	mov r4, r0
	mov r0, r5
	bl ov4_021D9C7C
	str r6, [r4, #0]
	mov r4, r0
	bl ov4_021E4A34
	ldrb r2, [r0, #0xd]
	mov r1, #0
	add r2, r2, #1
	strb r2, [r0, #0xd]
	strb r5, [r4]
	strh r1, [r4, #2]
	str r1, [r4, #4]
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldrb r2, [r0, #0xd]
	mov r0, r6
	mov r1, r4
	add r2, r5, r2
	ldrb r2, [r2, #0x2d0]
	strb r2, [r4, #1]
	bl ov4_021F877C
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	bne _021DE2FC
	mov r0, #0
	bl ov4_021E1998
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE2FC:
	mov r0, #1
	bl ov4_021E1998
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DE30C: .word 0x022174E4
_021DE310: .word 0x00001388
_021DE314: .word 0xFFFEABC4
	arm_func_end ov4_021DE094

	arm_func_start ov4_021DE318
ov4_021DE318: ; 0x021DE318
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x218
	mov sb, #0
	mov fp, r1
	mov sl, r2
	add r8, sp, #8
	mov r7, sb
	mov r6, #0xa
	add r5, sp, #0x18
	mvn r4, #0
_021DE340:
	mov r0, r8
	mov r2, sb
	add r1, sl, #1
	bl ov4_021DFB7C
	cmp r0, r4
	beq _021DE378
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl strtoul
	str r0, [r5, sb, lsl #2]
	add sb, sb, #1
	cmp sb, #0x80
	blt _021DE340
_021DE378:
	add r0, sp, #0x18
	stmia sp, {r0, sb}
	mov r2, #0
	ldrb r0, [sl]
	mov r1, fp
	mov r3, r2
	bl ov4_021DFC18
	add sp, sp, #0x218
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_021DE318

	arm_func_start ov4_021DE39C
ov4_021DE39C: ; 0x021DE39C
	stmfd sp!, {r3, lr}
	bl ov4_021E4A34
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x3cd]
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021DE39C

	arm_func_start ov4_021DE3BC
ov4_021DE3BC: ; 0x021DE3BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	cmp r0, #0
	cmpne r4, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl ov4_021E2600
	mov r0, r4
	mov r1, r5
	bl ov4_021D7724
	ldr r1, _021DE474 ; =0x022174E0
	mov r0, #1
	mov r2, #0
	bl ov4_021DB978
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r7, #1
	movne r7, #0
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r8, #1
	movne r8, #0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	bl ov4_021DB8DC
	mov r5, r0
	bl ov4_021E4A34
	str r5, [sp]
	ldr r1, [r0, #0x468]
	mov r0, r4
	str r1, [sp, #4]
	ldr r4, [r6, #0x464]
	mov r2, r8
	mov r3, r7
	mov r1, #0
	blx r4
	bl ov4_021DF134
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021DE474: .word 0x022174E0
	arm_func_end ov4_021DE3BC

	arm_func_start ov4_021DE478
ov4_021DE478: ; 0x021DE478
	stmfd sp!, {r3, lr}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	ldmeqia sp!, {r3, pc}
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x14]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x16]
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC194
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021DE478

	arm_func_start ov4_021DE4B4
ov4_021DE4B4: ; 0x021DE4B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r2
	cmp r1, #2
	beq _021DE4DC
	cmp r1, #3
	beq _021DE588
	cmp r1, #4
	beq _021DE650
	ldmia sp!, {r4, r5, r6, pc}
_021DE4DC:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021DE578
	ldrb r0, [r4]
	cmp r0, #1
	bne _021DE504
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20c]
_021DE504:
	ldrb r6, [r4, #1]
	bl ov4_021E4A34
	ldrb r1, [r4, #2]
	add r0, r0, r6
	strb r1, [r0, #0x2d0]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldr r1, [r0, #0x200]
	add r0, r4, r6, lsl #2
	str r1, [r0, #0xf4]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021DE550
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021DE564
_021DE550:
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x16]
_021DE564:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1ad]
	mov r0, #9
	bl ov4_021E4A44
_021DE578:
	mov r0, r5
	mov r1, #3
	bl ov4_021E276C
	ldmia sp!, {r4, r5, r6, pc}
_021DE588:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x10
	bne _021DE640
	bl ov4_021E4A34
	ldr r2, [r0, #0x1d4]
	mov r1, #1
	orr r1, r2, r1, lsl r5
	str r1, [r0, #0x1d4]
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	orr r4, r1, r0, lsl #8
	bl ov4_021E4A34
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	cmp r4, r0
	ble _021DE5D8
	bl ov4_021E4A34
	add r0, r0, #0x100
	strh r4, [r0, #0xb0]
_021DE5D8:
	mov r0, #0
	bl ov4_021E3228
	mov r4, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x1d4]
	cmp r4, r0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r5, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021DE634
	mov r4, #4
_021DE60C:
	bl ov4_021E4A34
	add r0, r0, r5
	ldrb r0, [r0, #0x2d0]
	mov r1, r4
	bl ov4_021E276C
	add r5, r5, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r5, r0
	ble _021DE60C
_021DE634:
	mov r0, #0x11
	bl ov4_021E4A44
	ldmia sp!, {r4, r5, r6, pc}
_021DE640:
	mov r0, r5
	mov r1, #4
	bl ov4_021E276C
	ldmia sp!, {r4, r5, r6, pc}
_021DE650:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #9
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #4
	bl ov4_021E1998
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021DE4B4

	arm_func_start ov4_021DE66C
ov4_021DE66C: ; 0x021DE66C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_021D9A40
	cmp r0, #5
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _021DE6BC
	ldr r1, _021DE7E0 ; =0xFFFEC780
	mov r0, r5
	add r1, r4, r1
	bl ov4_021DE3BC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_021DE6BC:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x2d0]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a9]
	cmp r0, #1
	beq _021DE6F8
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a8]
	cmp r0, #1
	beq _021DE6F8
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a8]
	cmp r0, #2
	bne _021DE700
_021DE6F8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_021DE700:
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021DE728
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	bl ov4_021FB674
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x19c]
_021DE728:
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021DE768
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a8]
	cmp r0, #0
	bne _021DE7D8
	bl ov4_021E4A34
	mov r1, #3
	strb r1, [r0, #0x1a8]
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F8710
	b _021DE7D8
_021DE768:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021DE788
	ldr r1, _021DE7E4 ; =0xFFFEC5D2
	mov r0, #6
	bl ov4_021DE3BC
	b _021DE7D8
_021DE788:
	bl ov4_021E4A34
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _021DE7A0
	bl ov4_021E24D0
	b _021DE7D8
_021DE7A0:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021DE7D0
	mov r0, #0x12
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1f0]
	str r1, [r4, #0x1f4]
	b _021DE7D8
_021DE7D0:
	mov r0, #1
	bl ov4_021E239C
_021DE7D8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DE7E0: .word 0xFFFEC780
_021DE7E4: .word 0xFFFEC5D2
	arm_func_end ov4_021DE66C

	arm_func_start ov4_021DE7E8
ov4_021DE7E8: ; 0x021DE7E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a8]
	cmp r0, #2
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ov4_021E15D8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021DE7E8

	arm_func_start ov4_021DE80C
ov4_021DE80C: ; 0x021DE80C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl ov4_021E4A34
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	mov r4, #0
	ble _021DE868
_021DE834:
	bl ov4_021E4A34
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r6, r0
	bne _021DE85C
	mov r0, r4
	mov r1, r5
	bl ov4_021DE870
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021DE85C:
	add r4, r4, #1
	cmp r4, r5
	blt _021DE834
_021DE868:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021DE80C

	arm_func_start ov4_021DE870
ov4_021DE870: ; 0x021DE870
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	mov r8, r1
	bl ov4_021E4A34
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov4_021E4A34
	add r0, r0, sb, lsl #2
	ldr fp, [r0, #0xf4]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	add r0, r0, sb
	ldrb r0, [r0, #0x2d0]
	mov r1, #1
	ldr r2, [r4, #0x2f0]
	mvn r0, r1, lsl r0
	and r0, r2, r0
	str r0, [r4, #0x2f0]
	bl ov4_021DEA68
	sub r0, r8, #1
	cmp sb, r0
	bge _021DE9B0
	sub r0, r8, sb
	sub r5, r0, #1
	cmp r5, #0
	mov r4, #0
	ble _021DE9B0
_021DE8E4:
	add r7, sb, r4
	add r6, r7, #1
	bl ov4_021E4A34
	mov sl, r0
	bl ov4_021E4A34
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x24]
	add r0, sl, r7, lsl #2
	str r1, [r0, #0x24]
	bl ov4_021E4A34
	mov sl, r0
	bl ov4_021E4A34
	add r0, r0, r6, lsl #1
	ldrh r1, [r0, #0xa4]
	add r0, sl, r7, lsl #1
	strh r1, [r0, #0xa4]
	bl ov4_021E4A34
	mov sl, r0
	bl ov4_021E4A34
	add r1, sl, r7, lsl #2
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r1, #0xf4]
	bl ov4_021E4A34
	mov sl, r0
	bl ov4_021E4A34
	add r1, sl, r7, lsl #2
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0x210]
	str r0, [r1, #0x210]
	bl ov4_021E4A34
	mov sl, r0
	bl ov4_021E4A34
	add r1, sl, r7, lsl #1
	add r0, r0, r6, lsl #1
	add r0, r0, #0x200
	ldrh r2, [r0, #0x90]
	add r0, r1, #0x200
	strh r2, [r0, #0x90]
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	add r0, sb, r0
	add r0, r4, r0
	ldrb r1, [r0, #0x2d1]
	add r0, sb, r6
	add r0, r4, r0
	strb r1, [r0, #0x2d0]
	add r4, r4, #1
	cmp r4, r5
	blt _021DE8E4
_021DE9B0:
	cmp r8, #0
	ble _021DEA20
	sub r4, r8, #1
	bl ov4_021E4A34
	add r0, r0, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x24]
	bl ov4_021E4A34
	add r0, r0, r4, lsl #1
	mov r1, #0
	strh r1, [r0, #0xa4]
	bl ov4_021E4A34
	add r0, r0, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0xf4]
	bl ov4_021E4A34
	add r0, r0, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x210]
	bl ov4_021E4A34
	add r0, r0, r4, lsl #1
	add r0, r0, #0x200
	mov r1, #0
	strh r1, [r0, #0x90]
	bl ov4_021E4A34
	add r0, r0, r4
	mov r1, #0
	strb r1, [r0, #0x2d0]
_021DEA20:
	mov r0, fp
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_021DE870

	arm_func_start ov4_021DEA28
ov4_021DEA28: ; 0x021DEA28
	stmfd sp!, {r3, lr}
	bl ov4_021E4A34
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021DEA28

	arm_func_start ov4_021DEA48
ov4_021DEA48: ; 0x021DEA48
	stmfd sp!, {r3, lr}
	bl ov4_021E4A34
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0xe]
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021DEA48

	arm_func_start ov4_021DEA68
ov4_021DEA68: ; 0x021DEA68
	stmfd sp!, {r4, r5, r6, lr}
	mvn r5, #0
	mov r6, #0
	mov r4, #1
_021DEA78:
	bl ov4_021E4A34
	ldr r0, [r0, #0x2f0]
	tst r0, r4, lsl r6
	add r6, r6, #1
	addne r5, r5, #1
	cmp r6, #0x20
	blt _021DEA78
	mvn r0, #0
	cmp r5, r0
	bne _021DEAB0
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0xe]
	ldmia sp!, {r4, r5, r6, pc}
_021DEAB0:
	bl ov4_021E4A34
	strb r5, [r0, #0xe]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021DEA68

	arm_func_start ov4_021DEABC
ov4_021DEABC: ; 0x021DEABC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021E4A34
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov4_021E4A34
	add r0, r0, #0x2d0
	str r0, [r4, #0]
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021DEABC

	arm_func_start ov4_021DEAF0
ov4_021DEAF0: ; 0x021DEAF0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	bl ov4_021E4A34
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _021DEB90 ; =0x0221AE00
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r5, #0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	blt _021DEB78
	ldr r6, _021DEB90 ; =0x0221AE00
	mov r4, #1
_021DEB34:
	bl ov4_021E4A34
	mov r8, r0
	bl ov4_021E4A34
	add r0, r0, r5
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r8, #0x2f0]
	tst r1, r4, lsl r0
	beq _021DEB78
	bl ov4_021E4A34
	add r0, r0, r5
	ldrb r0, [r0, #0x2d0]
	add r5, r5, #1
	strb r0, [r6], #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xe]
	cmp r5, r0
	ble _021DEB34
_021DEB78:
	ldr r0, _021DEB90 ; =0x0221AE00
	str r0, [r7, #0]
	bl ov4_021E4A34
	ldrb r0, [r0, #0xe]
	add r0, r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021DEB90: .word 0x0221AE00
	arm_func_end ov4_021DEAF0

	arm_func_start ov4_021DEB94
ov4_021DEB94: ; 0x021DEB94
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	addne sp, sp, #0x2c
	movne r0, #0
	ldmneia sp!, {pc}
	bl ov4_021E4A34
	ldrb r1, [r0, #0x16]
	ldr r2, _021DEC54 ; =0x022174E4
	add r0, sp, #0x20
	add r3, r1, #1
	mov r1, #0xc
	bl OS_SNPrintf
	ldr r0, _021DEC58 ; =0x02217524
	add r1, sp, #0x20
	add r2, sp, #0
	mov r3, #0x2f
	bl ov4_021D8948
	bl ov4_021E4A34
	ldrb r2, [r0, #0xd]
	add r0, sp, #0x20
	mov r1, #0xc
	add r3, r2, #1
	ldr r2, _021DEC54 ; =0x022174E4
	bl OS_SNPrintf
	ldr r0, _021DEC5C ; =0x02217528
	add r1, sp, #0x20
	add r2, sp, #0
	mov r3, #0x2f
	bl ov4_021D8980
	ldr r2, _021DEC54 ; =0x022174E4
	add r0, sp, #0x20
	mov r1, #0xc
	mov r3, #3
	bl OS_SNPrintf
	ldr r0, _021DEC60 ; =0x022174F0
	add r1, sp, #0x20
	add r2, sp, #0
	mov r3, #0x2f
	bl ov4_021D8980
	mov r0, #6
	add r1, sp, #0
	mov r2, #0
	bl ov4_021DB978
	add sp, sp, #0x2c
	ldmia sp!, {pc}
	; .align 2, 0
_021DEC54: .word 0x022174E4
_021DEC58: .word 0x02217524
_021DEC5C: .word 0x02217528
_021DEC60: .word 0x022174F0
	arm_func_end ov4_021DEB94

	arm_func_start ov4_021DEC64
ov4_021DEC64: ; 0x021DEC64
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov4_021E4A24
	ldr r0, _021DECD8 ; =0x0221A6A8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021DEC98
	mov r0, #4
	mov r2, #0
	bl ov4_021D77C4
	ldr r0, _021DECD8 ; =0x0221A6A8
	mov r1, #0
	str r1, [r0, #8]
_021DEC98:
	bl ov4_021E2FB0
	ldr r0, _021DECD8 ; =0x0221A6A8
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _021DECC4
	mov r0, #4
	mov r2, #0
	bl ov4_021D77C4
	ldr r0, _021DECD8 ; =0x0221A6A8
	mov r1, #0
	str r1, [r0, #0]
_021DECC4:
	ldr r0, _021DECD8 ; =0x0221A6A8
	mov r1, #0
	strb r1, [r0, #0x1c]
	strb r1, [r0, #0x1d]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DECD8: .word 0x0221A6A8
	arm_func_end ov4_021DEC64

	arm_func_start ov4_021DECDC
ov4_021DECDC: ; 0x021DECDC
	stmfd sp!, {r3, lr}
	bl ov4_021E4A34
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021DECDC

	arm_func_start ov4_021DECF4
ov4_021DECF4: ; 0x021DECF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0xc]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17c]
	bl ov4_021E4A34
	mov r5, r0
	mov r0, #0x10000
	bl ov4_021D8ABC
	add r1, r5, #0x100
	strh r0, [r1, #0x7e]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x180]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x184]
	str r1, [r0, #0x188]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a4]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a9]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1aa]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1ab]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1ac]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a8]
	bl ov4_021E4A34
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb2]
	bl ov4_021E4A34
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb4]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1b8]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1e0]
	str r1, [r0, #0x1e4]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1f0]
	str r1, [r0, #0x1f4]
	bl ov4_021E4A34
	add r1, r0, #0x3cc
	mov r0, #0
	mov r2, #0x98
	bl MIi_CpuClear32
	cmp r4, #2
	bne _021DEE60
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x14]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021DEE44
	mov r0, #1
	bl ov4_021E4A44
	ldmia sp!, {r3, r4, r5, pc}
_021DEE44:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0xa
	bl ov4_021E4A44
	ldmia sp!, {r3, r4, r5, pc}
_021DEE60:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0xd]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0xe]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x14]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0xe8]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a5]
	bl ov4_021E4A34
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb0]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1c0]
	str r1, [r0, #0x1c4]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1cc]
	str r1, [r0, #0x1d0]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1d4]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x204]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x2f0]
	bl ov4_021E4A34
	add r1, r0, #0x24
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClear32
	bl ov4_021E4A34
	add r1, r0, #0xa4
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClear16
	bl ov4_021E4A34
	add r1, r0, #0xf4
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClear32
	bl ov4_021E4A34
	add r1, r0, #0x194
	mov r0, #0
	mov r2, #0xc
	bl MIi_CpuClear32
	bl ov4_021E4A34
	add r1, r0, #0x210
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClear32
	bl ov4_021E4A34
	add r1, r0, #0x290
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClear16
	bl ov4_021E4A34
	add r0, r0, #0x2d0
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	bl ov4_021E4A34
	add r1, r0, #0x348
	mov r0, #0
	mov r2, #0x84
	bl MIi_CpuClear32
	cmp r4, #1
	bne _021DF00C
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021DEFF0
	mov r0, #3
	bl ov4_021E4A44
	ldmia sp!, {r3, r4, r5, pc}
_021DEFF0:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #4
	bl ov4_021E4A44
	ldmia sp!, {r3, r4, r5, pc}
_021DF00C:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x15]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x16]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x18]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20c]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a6]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1ae]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1ad]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1f8]
	str r1, [r0, #0x1fc]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x46c]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x470]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021DECF4

	arm_func_start ov4_021DF08C
ov4_021DF08C: ; 0x021DF08C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021DECF4
	bl ov4_021E4A34
	strb r7, [r0, #0x15]
	bl ov4_021E4A34
	strb r6, [r0, #0x16]
	bl ov4_021E4A34
	str r5, [r0, #0x464]
	bl ov4_021E4A34
	str r4, [r0, #0x468]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17d]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x2d0]
	mov r0, #0x32
	ldr r1, _021DF120 ; =0x0221752C
	bl ov4_021FD4E0
	mov r0, #0x33
	ldr r1, _021DF124 ; =0x02217534
	bl ov4_021FD4E0
	mov r0, #0x34
	ldr r1, _021DF128 ; =0x02217540
	bl ov4_021FD4E0
	mov r0, #0x35
	ldr r1, _021DF12C ; =0x0221754C
	bl ov4_021FD4E0
	mov r0, #0x36
	ldr r1, _021DF130 ; =0x02217558
	bl ov4_021FD4E0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DF120: .word 0x0221752C
_021DF124: .word 0x02217534
_021DF128: .word 0x02217540
_021DF12C: .word 0x0221754C
_021DF130: .word 0x02217558
	arm_func_end ov4_021DF08C

	arm_func_start ov4_021DF134
ov4_021DF134: ; 0x021DF134
	stmfd sp!, {r3, lr}
	bl ov4_021E4A34
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _021DF184
	ldr r0, _021DF1CC ; =0x0221A6A8
	ldr r1, [r0, #0x18]
	cmp r1, #0
	movne r1, #1
	strne r1, [r0, #0x14]
	bne _021DF184
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEBBC
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0xe4]
_021DF184:
	bl ov4_021DC734
	mov r0, #0
	bl ov4_021E4A44
	ldr r0, _021DF1CC ; =0x0221A6A8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021DF1B8
	mov r0, #4
	mov r2, #0
	bl ov4_021D77C4
	ldr r0, _021DF1CC ; =0x0221A6A8
	mov r1, #0
	str r1, [r0, #8]
_021DF1B8:
	bl ov4_021E2FB0
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x18]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DF1CC: .word 0x0221A6A8
	arm_func_end ov4_021DF134

	arm_func_start ov4_021DF1D0
ov4_021DF1D0: ; 0x021DF1D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1b0
	mov r7, #8
	mov r6, #0xa
	mov r5, #0x32
	mov r4, #0x33
	mov r3, #0x34
	mov r2, #0x35
	mov r1, #0x36
	strb r7, [sp, #0xc]
	strb r6, [sp, #0xd]
	strb r5, [sp, #0xe]
	strb r4, [sp, #0xf]
	strb r3, [sp, #0x10]
	strb r2, [sp, #0x11]
	strb r1, [sp, #0x12]
	mov r4, r0
	mov r8, #7
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021DF238
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021DF264
_021DF238:
	ldr r2, _021DF3B4 ; =0x0221A6C8
	add r3, sp, #0x13
	mov r1, #0
_021DF244:
	ldrb r0, [r2]
	add r1, r1, #1
	add r2, r2, #0xc
	cmp r0, #0
	strneb r0, [r3], #1
	addne r8, r8, #1
	cmp r1, #0x9a
	blt _021DF244
_021DF264:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021DF31C
_021DF278: ; jump table
	b _021DF31C ; case 0
	b _021DF31C ; case 1
	b _021DF2FC ; case 2
	b _021DF290 ; case 3
	b _021DF2FC ; case 4
	b _021DF2FC ; case 5
_021DF290:
	bl ov4_021E4A34
	ldr r0, [r0, #0x208]
	cmp r0, #0
	bne _021DF2F4
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldr r1, [r5, #0x200]
	ldrb r2, [r4, #0x16]
	ldrb r3, [r0, #0x15]
	add r0, sp, #0xad
	bl ov4_021DF3CC
	mov r1, r0
	ldr r0, _021DF3B8 ; =0x0221A6A8
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _021DF31C
	add r0, sp, #0xad
	add r0, r0, r1
	ldr r2, _021DF3BC ; =0x02217564
	rsb r1, r1, #0x100
	bl OS_SNPrintf
	b _021DF31C
_021DF2F4:
	bl ov4_021E4A34
	ldr r4, [r0, #0x208]
_021DF2FC:
	ldr r2, _021DF3C0 ; =0x02217570
	ldr r3, _021DF3C4 ; =0x0221752C
	add r0, sp, #0xad
	mov r1, #0x100
	str r4, [sp]
	bl OS_SNPrintf
	bl ov4_021E4A34
	str r4, [r0, #0x204]
_021DF31C:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEE44
	mov sl, #0
	add r7, sp, #0xad
	mov r6, #6
	mov r5, #1
	mov r4, sl
	add fp, sp, #0xc
_021DF340:
	bl ov4_021E4A34
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r0, #0xe4]
	mov r1, r5
	mov r2, r4
	mov r3, fp
	bl ov4_021FED10
	movs sb, r0
	beq _021DF380
	cmp sb, #2
	bne _021DF380
	add sl, sl, #1
	cmp sl, #5
	blt _021DF340
_021DF380:
	cmp sb, #0
	bne _021DF3A8
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	ldr r2, _021DF3C8 ; =0x00EFB5F7
	adds r0, r0, r2
	str r0, [r4, #0x174]
	adc r0, r1, #0
	str r0, [r4, #0x178]
_021DF3A8:
	mov r0, sb
	add sp, sp, #0x1b0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021DF3B4: .word 0x0221A6C8
_021DF3B8: .word 0x0221A6A8
_021DF3BC: .word 0x02217564
_021DF3C0: .word 0x02217570
_021DF3C4: .word 0x0221752C
_021DF3C8: .word 0x00EFB5F7
	arm_func_end ov4_021DF1D0

	arm_func_start ov4_021DF3CC
ov4_021DF3CC: ; 0x021DF3CC
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov lr, #3
	ldr ip, _021DF420 ; =0x0221752C
	str lr, [sp]
	str ip, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, _021DF424 ; =0x02217534
	ldr r1, _021DF428 ; =0x02217540
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r2, _021DF42C ; =0x02217578
	ldr r3, _021DF430 ; =0x0221754C
	mov r1, #0x100
	str ip, [sp, #0x20]
	bl OS_SNPrintf
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_021DF420: .word 0x0221752C
_021DF424: .word 0x02217534
_021DF428: .word 0x02217540
_021DF42C: .word 0x02217578
_021DF430: .word 0x0221754C
	arm_func_end ov4_021DF3CC

	arm_func_start ov4_021DF434
ov4_021DF434: ; 0x021DF434
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r8, r1
	mov r7, r2
	bl ov4_021E4A34
	cmp r4, #0
	ldrb r4, [r0, #0x14]
	mov r6, #0
	bne _021DF678
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	add r0, r0, #0x100
	ldrh r2, [r0, #0x7e]
	ldr r1, [r5, #0x200]
	mov r0, r7
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	orr r8, r2, r1, lsr #16
	bl ov4_021FE384
	cmp r0, #0
	beq _021DF4F0
	mov r0, r7
	bl ov4_021FE350
	mov r5, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEC0
	cmp r5, r0
	movne r5, #1
	bne _021DF578
	bl ov4_021E4A34
	mov r5, r0
	mov r0, r7
	bl ov4_021FE39C
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x210]
	bl ov4_021E4A34
	mov r5, r0
	mov r0, r7
	bl ov4_021FE3A4
	add r1, r5, r4, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0x90]
	mov r5, r6
	b _021DF578
_021DF4F0:
	bl ov4_022086A0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r2, lsl #0x10
	ldr r1, _021DF71C ; =0x0000A8C0
	mov r0, r0, lsr #0x10
	cmp r0, r1
	beq _021DF538
	and r1, r2, #0xff
	cmp r1, #0xac
	bne _021DF530
	and r0, r2, #0xff00
	cmp r0, #0x1000
	blo _021DF530
	cmp r0, #0x1f00
	bls _021DF538
_021DF530:
	cmp r1, #0xa
	bne _021DF540
_021DF538:
	mov r5, #1
	b _021DF578
_021DF540:
	bl ov4_021E4A34
	mov r5, r0
	mov r0, r7
	bl ov4_021FE350
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x210]
	bl ov4_021E4A34
	mov r5, r0
	mov r0, r7
	bl ov4_021FE358
	add r1, r5, r4, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0x90]
	mov r5, #0
_021DF578:
	cmp r5, #0
	beq _021DF5A4
	bl ov4_021E4A34
	mov r4, r0
	mov r0, #0x10000
	bl ov4_021D8ABC
	add r1, r4, #0x100
	strh r0, [r1, #0x7e]
	bl ov4_021E4A34
	str r8, [r0, #0x19c]
	b _021DF630
_021DF5A4:
	bl ov4_022086A0
	str r0, [sp, #8]
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F8754
	str r0, [sp, #0xc]
	bl ov4_021E4A34
	mov sb, r0
	mov r0, r7
	bl ov4_021FE350
	mov r8, r0
	mov r0, r7
	bl ov4_021FE358
	add r1, sb, r4, lsl #2
	add r4, sp, #8
	mov r3, r0
	mov r0, #2
	str r4, [sp]
	str r0, [sp, #4]
	ldr r1, [r1, #0xf4]
	mov r2, r8
	mov r0, #6
	bl ov4_021DF7DC
	mov r4, r0
	bl ov4_021E4A34
	mov r1, #0
	cmp r4, #0
	strb r1, [r0, #0x3cd]
	addne sp, sp, #0x10
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x19c]
_021DF630:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x194]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x195]
	bl ov4_021E4A34
	mov r4, r0
	mov r0, r7
	bl ov4_021FE358
	add r1, r4, #0x100
	strh r0, [r1, #0x96]
	bl ov4_021E4A34
	mov r4, r0
	mov r0, r7
	bl ov4_021FE350
	str r0, [r4, #0x198]
	b _021DF6B8
_021DF678:
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x194]
	bl ov4_021E4A34
	mov r1, r6
	strb r1, [r0, #0x195]
	bl ov4_021E4A34
	add r0, r0, #0x100
	mov r1, r6
	strh r1, [r0, #0x96]
	bl ov4_021E4A34
	mov r1, r6
	str r1, [r0, #0x198]
	bl ov4_021E4A34
	str r8, [r0, #0x19c]
	mov r5, #1
_021DF6B8:
	cmp r5, #0
	beq _021DF6D4
	bl ov4_021E4A34
	add r0, r0, #0x194
	bl ov4_021DF720
	mov r6, r0
	b _021DF710
_021DF6D4:
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F876C
	mov r4, r0
	bl ov4_021E4A34
	add r3, r0, #0x194
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021E45DC
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
_021DF710:
	mov r0, r6
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021DF71C: .word 0x0000A8C0
	arm_func_end ov4_021DF434

	arm_func_start ov4_021DF720
ov4_021DF720: ; 0x021DF720
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _021DF778
	bl ov4_021E4A34
	mov r4, r0
	mov r1, #0
	ldr r0, [r7, #4]
	mov r2, r1
	bl ov4_021FABFC
	mov r1, r0
	ldrh r2, [r7, #2]
	ldr r0, [r4, #0xe4]
	ldr r3, [r7, #8]
	bl ov4_021FED9C
	bl ov4_021E37C4
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_021DF778:
	ldr r5, _021DF7D4 ; =ov4_021E45DC
	ldr r4, _021DF7D8 ; =ov4_021E45D8
	mov r6, #0
_021DF784:
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F876C
	stmia sp, {r5, r7}
	ldrb r2, [r7]
	ldr r1, [r7, #8]
	mov r3, r4
	bl ov4_021FB5AC
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #3
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r6, #1
	cmp r6, #5
	blt _021DF784
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DF7D4: .word ov4_021E45DC
_021DF7D8: .word ov4_021E45D8
	arm_func_end ov4_021DF720

	arm_func_start ov4_021DF7DC
ov4_021DF7DC: ; 0x021DF7DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x220
	str r3, [sp, #0xc]
	mov sl, r0
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr sb, [sp, #0x248]
	ldr r8, [sp, #0x24c]
	mov r6, #0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021DF838
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021DF830
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	beq _021DF858
_021DF830:
	cmp sl, #6
	bne _021DF858
_021DF838:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r0, sl
	mov r3, sb
	str r8, [sp]
	bl ov4_021DF9A0
	mov r4, r0
	b _021DF900
_021DF858:
	cmp sb, #0
	cmpne r8, #0
	beq _021DF8D8
	ldr r3, [sb]
	ldr r2, _021DF998 ; =0x022174E4
	add r0, sp, #0x20
	mov r1, #0x200
	bl OS_SNPrintf
	mov r6, r0
	cmp r8, #1
	mov r7, #1
	ble _021DF8D8
	add r5, sp, #0x10
	add fp, sp, #0x20
_021DF890:
	ldr r3, [sb, r7, lsl #2]
	ldr r2, _021DF99C ; =0x022175D0
	mov r0, r5
	mov r1, #0x10
	bl OS_SNPrintf
	mov r4, r0
	add r0, r6, r4
	add r0, r0, #1
	cmp r0, #0x200
	bhi _021DF8D8
	mov r0, r5
	add r1, fp, r6
	mov r2, r4
	bl MI_CpuCopy8
	add r7, r7, #1
	add r6, r6, r4
	cmp r7, r8
	blt _021DF890
_021DF8D8:
	add r0, sp, #0x20
	mov r1, #0
	strb r1, [r0, r6]
	bl ov4_021E4A34
	ldr r0, [r0, #0]
	ldr r2, [sp, #4]
	add r3, sp, #0x20
	mov r1, sl
	bl ov4_021DFAB8
	mov r4, r0
_021DF900:
	cmp sl, #2
	cmpne sl, #6
	beq _021DF91C
	add r0, sl, #0xf8
	and r0, r0, #0xff
	cmp r0, #1
	bhi _021DF98C
_021DF91C:
	bl ov4_021E4A34
	strb sl, [r0, #0x3cc]
	bl ov4_021E4A34
	add r1, r0, #0x300
	ldr r0, [sp, #0xc]
	strh r0, [r1, #0xce]
	bl ov4_021E4A34
	ldr r1, [sp, #8]
	str r1, [r0, #0x3d0]
	bl ov4_021E4A34
	ldr r1, [sp, #4]
	str r1, [r0, #0x454]
	bl ov4_021E4A34
	str r8, [r0, #0x458]
	bl ov4_021E4A34
	mov r5, r0
	bl OS_GetTick
	str r0, [r5, #0x45c]
	cmp sb, #0
	str r1, [r5, #0x460]
	cmpne r8, #0
	beq _021DF98C
	bl ov4_021E4A34
	mov r1, r0
	mov r0, sb
	add r1, r1, #0x3d4
	mov r2, r8, lsl #2
	bl MIi_CpuCopy32
_021DF98C:
	mov r0, r4
	add sp, sp, #0x220
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021DF998: .word 0x022174E4
_021DF99C: .word 0x022175D0
	arm_func_end ov4_021DF7DC

	arm_func_start ov4_021DF9A0
ov4_021DF9A0: ; 0x021DF9A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x98
	ldr r5, [sp, #0xb8]
	mov r4, r0
	cmp r5, #0x20
	movhi r5, #0x20
	cmp r3, #0
	cmpne r5, #0
	mov r8, r1
	mov r7, r2
	moveq r5, #0
	beq _021DF9E0
	add r1, sp, #0x18
	mov r0, r3
	mov r2, r5, lsl #2
	bl MIi_CpuCopy32
_021DF9E0:
	ldr r2, _021DFAB4 ; =0x022175D4
	mov r0, r5, lsl #2
	ldrb r1, [r2, #4]
	ldrb r6, [r2]
	add sb, sp, #4
	ldrb r5, [r2, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	strb r1, [sb, #4]
	mov r1, #3
	strb r6, [sb]
	strb r5, [sb, #1]
	strb r3, [sb, #2]
	strb r2, [sb, #3]
	str r1, [sp, #8]
	strb r4, [sp, #0xc]
	strb r0, [sp, #0xd]
	bl ov4_021E4A34
	ldrh r0, [r0, #0x1a]
	strh r0, [sp, #0xe]
	bl ov4_021E4A34
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x10]
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	mov r6, #0
	str r0, [sp, #0x14]
	mov r4, r6
_021DFA50:
	bl ov4_021E4A34
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r4
	bl ov4_021FABFC
	mov r1, r0
	ldrb r0, [sp, #0xd]
	mov r2, r7
	mov r3, sb
	add r0, r0, #0x14
	str r0, [sp]
	ldr r0, [r5, #0xe4]
	bl ov4_021FED44
	cmp r0, #0
	addeq sp, sp, #0x98
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r0, #2
	addne sp, sp, #0x98
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r6, r6, #1
	cmp r6, #5
	blt _021DFA50
	add sp, sp, #0x98
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021DFAB4: .word 0x022175D4
	arm_func_end ov4_021DF9A0

	arm_func_start ov4_021DFAB8
ov4_021DFAB8: ; 0x021DFAB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x208
	mov sb, r0
	mov r8, r2
	mov r7, r3
	mov r0, #3
	mov r5, r1
	str r0, [sp]
	ldr r4, _021DFB6C ; =0x022175EC
	ldr r2, _021DFB70 ; =0x022175DC
	ldr r3, _021DFB74 ; =0x022175E4
	add r0, sp, #8
	mov r1, #0x200
	str r4, [sp, #4]
	bl OS_SNPrintf
	mov r4, r0
	add r2, sp, #8
	add r1, sp, #9
	strb r5, [r2, r4]
	mov r0, #0
	strb r0, [r1, r4]
	cmp r7, #0
	add r6, r1, r4
	beq _021DFB54
	mov r0, r7
	bl strlen
	mov r5, r0
	add r0, r4, #2
	add r0, r0, r5
	cmp r0, #0x200
	ldrhi r0, _021DFB78 ; =0x000001FF
	addhi r1, r4, #1
	subhi r5, r0, r1
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r6, r5]
_021DFB54:
	add r2, sp, #8
	mov r0, sb
	mov r1, r8
	bl ov4_021EBD58
	add sp, sp, #0x208
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021DFB6C: .word 0x022175EC
_021DFB70: .word 0x022175DC
_021DFB74: .word 0x022175E4
_021DFB78: .word 0x000001FF
	arm_func_end ov4_021DFAB8

	arm_func_start ov4_021DFB7C
ov4_021DFB7C: ; 0x021DFB7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r1
	mov r4, r0
	mov r8, r2
	mov r0, sb
	mov r1, #0
	bl strchr
	mov r6, r0
	cmp r8, #0
	mov r7, #0
	ble _021DFBD4
	mov r5, #0x2f
_021DFBAC:
	mov r0, sb
	mov r1, r5
	bl strchr
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, #1
	cmp r7, r8
	add sb, r0, #1
	blt _021DFBAC
_021DFBD4:
	mov r0, sb
	mov r1, #0x2f
	bl strchr
	cmp r0, #0
	moveq r0, r6
	cmp sb, r0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	sub r5, r0, sb
	mov r0, sb
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	mov r1, #0
	mov r0, r5
	strb r1, [r4, r5]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_021DFB7C

	arm_func_start ov4_021DFC18
ov4_021DFC18: ; 0x021DFC18
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x118
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov sl, r3
	ldr r6, [sp, #0x138]
	ldr r5, [sp, #0x13c]
	mov r4, #0
	bl ov4_021E4A34
	cmp r0, #0
	beq _021DFC58
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0
	bne _021DFC64
_021DFC58:
	add sp, sp, #0x118
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021DFC64:
	bl ov4_021D9A40
	cmp r0, #5
	bne _021DFC94
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021DFC94
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021DFC94
	bl ov4_021E328C
_021DFC94:
	cmp sb, #0x40
	bgt _021DFD30
	bge _021E0A74
	cmp sb, #0x20
	addls pc, pc, sb, lsl #2
	b _021E0AE8
_021DFCAC: ; jump table
	b _021E0AE8 ; case 0
	b _021DFD38 ; case 1
	b _021DFF08 ; case 2
	b _021E00DC ; case 3
	b _021E013C ; case 4
	b _021E025C ; case 5
	b _021E02D8 ; case 6
	b _021E03E8 ; case 7
	b _021E0500 ; case 8
	b _021E0680 ; case 9
	b _021E06D4 ; case 10
	b _021DFD38 ; case 11
	b _021E077C ; case 12
	b _021E07F0 ; case 13
	b _021E07F0 ; case 14
	b _021E07F0 ; case 15
	b _021E0814 ; case 16
	b _021E0864 ; case 17
	b _021E0904 ; case 18
	b _021E0960 ; case 19
	b _021E0AE8 ; case 20
	b _021E0AE8 ; case 21
	b _021E0AE8 ; case 22
	b _021E0AE8 ; case 23
	b _021E0AE8 ; case 24
	b _021E0AE8 ; case 25
	b _021E0AE8 ; case 26
	b _021E0AE8 ; case 27
	b _021E0AE8 ; case 28
	b _021E0AE8 ; case 29
	b _021E0AE8 ; case 30
	b _021E0AE8 ; case 31
	b _021E0978 ; case 32
_021DFD30:
	cmp sb, #0x41
	b _021E0AE8
_021DFD38:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021DFD58
	ldr r0, [r6, #8]
	ldr r7, [r6, #4]
	mov r0, r0, lsl #0x10
	mov sl, r0, lsr #0x10
_021DFD58:
	cmp sb, #0xb
	moveq r0, #1
	movne r0, #0
	str r0, [sp]
	ldr r3, [r6, #0]
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl ov4_021E0AFC
	mov r5, r0
	cmp r5, #2
	bne _021DFE7C
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1dc]
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl ov4_021E0DF8
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021DFE00
	bl ov4_021E4A34
	ldr r0, [r0, #0x46c]
	cmp r0, #0
	beq _021DFE00
	bl ov4_021E4A34
	mov r6, r0
	mov r0, r8
	bl ov4_021DB8DC
	mov r4, r0
	bl ov4_021E4A34
	ldr r1, [r0, #0x470]
	ldr r2, [r6, #0x46c]
	mov r0, r4
	blx r2
_021DFE00:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	mov r4, #1
	str r0, [sp, #0x14]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	cmp r0, #1
	blt _021DFE48
	add r6, sp, #0x14
_021DFE24:
	bl ov4_021E4A34
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r6, r4, lsl #2]
	add r4, r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	cmp r4, r0
	ble _021DFE24
_021DFE48:
	bl ov4_021E4A34
	ldr r1, [r0, #0x1c]
	add r0, sp, #0x14
	str r1, [r0, r4, lsl #2]
	bl ov4_021E4A34
	ldrh r2, [r0, #0x1a]
	add r3, r4, #1
	add r1, sp, #0x14
	mov r0, #0xb
	str r2, [r1, r3, lsl #2]
	add r4, r4, #2
	bl ov4_021E4A44
	b _021DFEC8
_021DFE7C:
	cmp r5, #3
	bne _021DFEC8
	bl ov4_021E4A34
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _021DFEC8
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r1, [r6, #0x14]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _021DFEC8
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r0, #0x10
	streq r0, [sp, #0x14]
	moveq r4, #1
_021DFEC8:
	cmp r5, #0xff
	beq _021E0AE8
	add r1, sp, #0x14
	str r1, [sp]
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, sl
	str r4, [sp, #4]
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	beq _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021DFF08:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _021E0AE8
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _021E0AE8
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl ov4_021E4A34
	ldr r1, [r6, #0]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #4]
	str r1, [r0, #0x24]
	bl ov4_021E4A34
	ldr r1, [r6, #0]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #8]
	strh r1, [r0, #0xa4]
	bl ov4_021E4A34
	ldr r1, [r6, #0]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #4]
	str r1, [r0, #0x1b8]
	bl ov4_021E4A34
	ldr r1, [r6, #0]
	add r0, r0, #0x100
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #8]
	strh r1, [r0, #0xb4]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E0030
	ldr r1, [r6, #0]
	add r0, r6, #4
	bl ov4_021E1FF8
	cmp r0, #0
	beq _021DFFF0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E0030
	mov r0, r8
	mov r1, r6
	bl ov4_021E0FB8
	b _021E0030
_021DFFF0:
	mov r0, r8
	bl ov4_021E1584
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #0x118
	mov r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, r0
	mov r2, r8
	bl ov4_021E11E4
	bl ov4_021E1008
	cmp r0, #0
	beq _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E0030:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E00B4
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E0074
	mov r0, r8
	mov r1, r6
	bl ov4_021E0FB8
	bl ov4_021E18B4
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E0074:
	mov r0, #6
	bl ov4_021E4A44
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	mov r1, #0
	bl ov4_021FEE90
	mov r2, r0
	mov r0, #0
	mov r1, r0
	bl ov4_021DF434
	bl ov4_021E3940
	cmp r0, #0
	beq _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E00B4:
	mov r0, #5
	bl ov4_021E4A44
	mov r0, r8
	bl ov4_021DF1D0
	bl ov4_021E37C4
	cmp r0, #0
	beq _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E00DC:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _021E0AE8
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _021E0AE8
	cmp r5, #0
	ble _021E0128
	ldr r0, [r6, #0]
	cmp r0, #0x10
	bne _021E0128
	mov r0, #0xd
	mov r1, #0
	bl ov4_021DE3BC
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E0128:
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	bl ov4_021E14AC
	add sp, sp, #0x118
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E013C:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _021E0AE8
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _021E0AE8
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1cc]
	str r1, [r4, #0x1d0]
	bl ov4_021E4A34
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _021E0190
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a7]
	cmp r0, #0x10
	blo _021E01A0
_021E0190:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E01E4
_021E01A0:
	bl ov4_021E4A34
	mov r1, #1
	str r1, [r0, #0x1bc]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1c0]
	str r1, [r4, #0x1c4]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E0AE8
	bl ov4_021E4A34
	ldrb r1, [r0, #0x1a7]
	add r1, r1, #1
	strb r1, [r0, #0x1a7]
	b _021E0AE8
_021E01E4:
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E0238
	mov r0, #3
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r1, #1
	str r1, [r0, #0xe8]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	b _021E0AE8
_021E0238:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E0AE8
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl ov4_021E11E4
	b _021E0AE8
_021E025C:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E0AE8
	bl ov4_021E4A34
	ldr r0, [r0, #0x20]
	cmp r8, r0
	bne _021E0AE8
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E02BC
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bne _021E02BC
	bl ov4_021E4A34
	ldr r0, [r0, #0xf8]
	cmp r8, r0
	bne _021E02BC
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F8710
_021E02BC:
	mov r0, r8
	bl ov4_021E15D8
	cmp r0, #0
	bne _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E02D8:
	ldr r0, [r6, #4]
	ldr r5, [r6, #0]
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E0304
	mov r0, #6
	bl ov4_021E4A44
	b _021E0334
_021E0304:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	beq _021E0324
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	bne _021E0AE8
_021E0324:
	bl ov4_021E4A34
	ldr r0, [r0, #0x20]
	cmp r8, r0
	bne _021E0AE8
_021E0334:
	bl ov4_021E4A34
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	beq _021E0380
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r6, r0, lsl #2
	str r8, [r0, #0xf4]
_021E0380:
	mov r1, r4, asr #8
	mov r0, r4, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	str r5, [sp, #0xc]
	strh r0, [sp, #0xa]
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x194]
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F876C
	mov r4, r0
	bl ov4_021E4A34
	add r3, r0, #0x194
	mov r1, r4
	mov r0, #0
	add r2, sp, #8
	bl ov4_021E45DC
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	b _021E0AE8
_021E03E8:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E0AE8
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E0AE8
	ldr r0, [r6, #0]
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	and r4, r0, #0xff
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E047C
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	bne _021E047C
	ldr r0, [sp, #0x10]
	bl ov4_021E3078
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	str r0, [sp]
	mov r5, #1
	mov r1, r8
	mov r2, r7
	mov r3, sl
	mov r0, #0x20
	str r5, [sp, #4]
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E047C:
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	add r0, r5, r0, lsl #2
	str r1, [r0, #0xf4]
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r5, r0
	strb r4, [r0, #0x2d0]
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC194
	bl ov4_021E4A34
	ldr r0, [r0, #0x46c]
	cmp r0, #0
	beq _021E0AE8
	bl ov4_021E4A34
	mov r5, r0
	ldr r0, [sp, #0x10]
	bl ov4_021DB8DC
	mov r4, r0
	bl ov4_021E4A34
	ldr r1, [r0, #0x470]
	ldr r2, [r5, #0x46c]
	mov r0, r4
	blx r2
	b _021E0AE8
_021E0500:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E0AE8
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E0AE8
	ldr r0, [r6, #0]
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _021E0568
	ldr r5, [r6, #4]
	ldr r4, [r6, #8]
	bl ov4_021E4A34
	add r0, r5, r0
	strb r4, [r0, #0x2d0]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldr r2, [r0, #0x200]
	add r1, r4, r5, lsl #2
	mov r0, #3
	str r2, [r1, #0xf4]
	bl ov4_021E1998
	b _021E0AE8
_021E0568:
	ldr r0, [r6, #8]
	ldr r5, [r6, #4]
	and r4, r0, #0xff
	bl ov4_021E4A34
	add r0, r0, r5, lsl #2
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xf4]
	cmp r1, r0
	bne _021E05E8
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	sub r0, r0, #1
	cmp r5, r0
	bne _021E05E8
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	add r1, sp, #0x10
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r3, [r0, #0xa4]
	ldr r2, [r4, #0x24]
	mov r1, r8
	mov r0, #9
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	beq _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E05E8:
	bl ov4_021E4A34
	ldr r1, [sp, #0x10]
	add r0, r0, r5, lsl #2
	str r1, [r0, #0xf4]
	bl ov4_021E4A34
	add r0, r5, r0
	strb r4, [r0, #0x2d0]
	bl ov4_021E4A34
	ldr r1, [r6, #0xc]
	add r0, r0, r5, lsl #2
	str r1, [r0, #0x24]
	bl ov4_021E4A34
	ldr r1, [r6, #0x10]
	add r0, r0, r5, lsl #1
	strh r1, [r0, #0xa4]
	bl ov4_021E4A34
	ldr r1, [r6, #0xc]
	str r1, [r0, #0x1b8]
	bl ov4_021E4A34
	add r1, r0, #0x100
	ldr r2, [r6, #0x10]
	mov r0, #5
	strh r2, [r1, #0xb4]
	bl ov4_021E4A44
	ldr r0, [sp, #0x10]
	bl ov4_021DF1D0
	bl ov4_021E37C4
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1bc]
	b _021E0AE8
_021E0680:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xd
	bne _021E0AE8
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a4]
	ldr r1, [r6, #0]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r1, r0
	bne _021E0AE8
	bl ov4_021E4A34
	ldrb r1, [r0, #0x1a4]
	add r1, r1, #1
	strb r1, [r0, #0x1a4]
	mov r0, #0
	bl ov4_021E1998
	b _021E0AE8
_021E06D4:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	beq _021E06F4
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x12
	bne _021E0AE8
_021E06F4:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E0718
	ldr r1, [r6, #0]
	add r0, r6, #4
	bl ov4_021E1FF8
	cmp r0, #0
	beq _021E0734
_021E0718:
	bl ov4_021E4A34
	ldr r1, [r6, #4]
	str r1, [r0, #0x208]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a7]
	b _021E0740
_021E0734:
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x208]
_021E0740:
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E0764
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F8710
	b _021E0AE8
_021E0764:
	bl ov4_021E24D0
	cmp r0, #0
	beq _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E077C:
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E0AE8
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E07AC
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E07C8
_021E07AC:
	mov r0, r8
	bl ov4_021E17F4
	cmp r0, #0
	bne _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E07C8:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E0AE8
	bl ov4_021E4A34
	str r8, [r0, #0x20c]
	bl ov4_021E2600
	mov r0, #0
	bl ov4_021E239C
	b _021E0AE8
_021E07F0:
	ldr r2, [r6, #0]
	mov r0, r8
	mov r1, sb
	bl ov4_021E2B4C
	cmp r0, #0
	bne _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E0814:
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	addne sp, sp, #0x118
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r5, #0
	mov r7, #0
	ble _021E0AE8
	mov r4, r7
_021E083C:
	ldr r0, [r6, r7, lsl #2]
	mov r1, r4
	bl ov4_021E31C4
	cmp r0, #0xff
	beq _021E0854
	bl ov4_021D97F4
_021E0854:
	add r7, r7, #1
	cmp r7, r5
	blt _021E083C
	b _021E0AE8
_021E0864:
	ldr r0, _021E0AF4 ; =0x0221A6A8
	ldr r4, [r0, #0]
	cmp r4, #0
	ldrneb r0, [r4]
	cmpne r0, #0
	beq _021E08C0
	bl OS_GetTick
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #0x14]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E0AF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, [r4, #4]
	cmp r1, #0
	cmpeq r0, r2
	movhs r0, #1
	strhs r0, [sp, #0x14]
	bhs _021E08C8
_021E08C0:
	mov r0, #0
	str r0, [sp, #0x14]
_021E08C8:
	add r0, sp, #0x14
	str r0, [sp]
	mov r4, #1
	mov r1, r8
	mov r2, r7
	mov r3, sl
	mov r0, #0x12
	str r4, [sp, #4]
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	beq _021E0AE8
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E0904:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x13
	bne _021E0AE8
	mov r0, r8
	mov r1, #0
	bl ov4_021E31C4
	cmp r0, #0xff
	beq _021E0AE8
	ldr r1, _021E0AF4 ; =0x0221A6A8
	mov r4, #1
	ldr r3, [r1, #0]
	ldr r2, [r3, #8]
	orr r2, r2, r4, lsl r0
	str r2, [r3, #8]
	ldr r2, [r6, #0]
	cmp r2, #0
	beq _021E0AE8
	ldr r2, [r1, #0]
	ldr r1, [r2, #0xc]
	orr r0, r1, r4, lsl r0
	str r0, [r2, #0xc]
	b _021E0AE8
_021E0960:
	mov r0, #0xc
	mov r1, #0
	bl ov4_021DE3BC
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E0978:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E0AE8
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	bne _021E0AE8
	mov r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E0AE8
_021E09AC:
	bl ov4_021E4A34
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E0A5C
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _021E0A34
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	beq _021E09EC
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	bne _021E0A04
_021E09EC:
	bl ov4_021E22C8
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E0A04:
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021E0A2C
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	bl ov4_021FB674
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x19c]
_021E0A2C:
	bl ov4_021E249C
	b _021E0AE8
_021E0A34:
	bl ov4_021E4A34
	mov r4, r0
	mov r0, r8
	mov r1, #0
	bl ov4_021E31C4
	ldr r2, [r4, #0x1dc]
	mov r1, #1
	orr r0, r2, r1, lsl r0
	str r0, [r4, #0x1dc]
	b _021E0AE8
_021E0A5C:
	add r4, r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E09AC
	b _021E0AE8
_021E0A74:
	mov r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E0AE8
_021E0A88:
	bl ov4_021E4A34
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E0AD4
	mov r4, #0
	str r4, [sp]
	mov r1, r8
	mov r2, r7
	mov r3, sl
	mov r0, #0x41
	str r4, [sp, #4]
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	beq _021E0AE8
	add sp, sp, #0x118
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E0AD4:
	add r4, r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E0A88
_021E0AE8:
	mov r0, #1
	add sp, sp, #0x118
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021E0AF4: .word 0x0221A6A8
_021E0AF8: .word 0x000082EA
	arm_func_end ov4_021DFC18

	arm_func_start ov4_021E0AFC
ov4_021E0AFC: ; 0x021E0AFC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r8, r3
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E0B64
	cmp r0, #1
	beq _021E0B34
	cmp r0, #2
	beq _021E0D40
	b _021E0DEC
_021E0B34:
	bl ov4_021E4A34
	ldr r0, [r0, #0]
	mov r1, r7
	bl ov4_021EBA88
	cmp r0, #0
	moveq r4, #0xff
	beq _021E0DEC
	mov r0, r7
	bl ov4_021E3078
	cmp r0, #0
	moveq r4, #3
	beq _021E0DEC
_021E0B64:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r8, r0
	bne _021E0BCC
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a9]
	cmp r0, #0
	bne _021E0BCC
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r1, [r4, #0x14]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	beq _021E0BCC
	bl ov4_021E4A34
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E0C30
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldr r1, [r4, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	bne _021E0C30
_021E0BCC:
	mov r4, #3
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E0DEC
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0xb4]
	cmp r0, #0
	bne _021E0DEC
	bl ov4_021E4A34
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E0DEC
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldr r1, [r5, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	bne _021E0DEC
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC194
	b _021E0DEC
_021E0C30:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #3
	beq _021E0C50
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _021E0C7C
_021E0C50:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _021E0C70
	bl ov4_021E4A34
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _021E0C7C
_021E0C70:
	cmp r6, #0
	cmpeq r5, #0
	bne _021E0C84
_021E0C7C:
	mov r4, #4
	b _021E0DEC
_021E0C84:
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	cmp r0, #0
	beq _021E0D38
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	cmp r7, r0
	bne _021E0CE0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021E0CD0
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	cmp r0, r7
	bge _021E0CD8
	bl ov4_021E4A34
	ldr r0, [r0, #0x208]
	cmp r7, r0
	beq _021E0CD8
_021E0CD0:
	mov r4, #2
	b _021E0DEC
_021E0CD8:
	mov r4, #0xff
	b _021E0DEC
_021E0CE0:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021E0D0C
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	cmp r0, r7
	bge _021E0D30
	bl ov4_021E4A34
	ldr r0, [r0, #0x208]
	cmp r0, #0
	bne _021E0D30
_021E0D0C:
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	bl ov4_021E1584
	bl ov4_021E1008
	cmp r0, #0
	movne r0, #0xff
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #2
	b _021E0DEC
_021E0D30:
	mov r4, #3
	b _021E0DEC
_021E0D38:
	mov r4, #2
	b _021E0DEC
_021E0D40:
	bl ov4_021E4A34
	ldr r0, [r0, #0]
	mov r1, r7
	bl ov4_021EBA88
	cmp r0, #0
	moveq r4, #0xff
	beq _021E0DEC
	cmp r8, #3
	bne _021E0D80
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r1, [r4, #0x14]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _021E0D88
_021E0D80:
	mov r4, #3
	b _021E0DEC
_021E0D88:
	ldr r0, _021E0DF4 ; =0x0221A6A8
	ldrb r1, [r0, #0x1c]
	cmp r1, #1
	ldreqb r0, [r0, #0x1d]
	cmpeq r0, #1
	moveq r4, #0x13
	beq _021E0DEC
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xa
	bne _021E0DE0
	bl ov4_021E4A34
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _021E0DD4
	bl ov4_021E4A34
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _021E0DE0
_021E0DD4:
	cmp r6, #0
	cmpeq r5, #0
	bne _021E0DE8
_021E0DE0:
	mov r4, #4
	b _021E0DEC
_021E0DE8:
	mov r4, #2
_021E0DEC:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021E0DF4: .word 0x0221A6A8
	arm_func_end ov4_021E0AFC

	arm_func_start ov4_021E0DF8
ov4_021E0DF8: ; 0x021E0DF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_021E4A34
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E0E34
	bl ov4_021E4A34
	ldr r0, [r0, #0x20]
	cmp r6, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021E0E34:
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x17]
	bl ov4_021E4A34
	str r6, [r0, #0x20]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC194
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x204]
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r7, r0, lsl #2
	str r6, [r0, #0xf4]
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r7, r0, lsl #2
	str r5, [r0, #0x24]
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r7, r0, lsl #1
	strh r4, [r0, #0xa4]
	bl ov4_021E4A34
	str r5, [r0, #0x1b8]
	bl ov4_021E4A34
	add r0, r0, #0x100
	strh r4, [r0, #0xb4]
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E3008
	ldrb r1, [r4, #0x14]
	add r1, r1, #1
	add r1, r5, r1
	strb r0, [r1, #0x2d0]
	str r6, [sp, #8]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	mov r7, #1
	add r0, r0, #1
	add r0, r4, r0
	ldrb r0, [r0, #0x2d0]
	str r0, [sp, #0xc]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	cmp r0, #1
	blt _021E0FA4
	add r6, sp, #8
	mov r5, #2
	mov r4, #7
_021E0F48:
	bl ov4_021E4A34
	mov sb, r0
	bl ov4_021E4A34
	mov r8, r0
	bl ov4_021E4A34
	str r6, [sp]
	str r5, [sp, #4]
	add r0, r0, r7, lsl #1
	add r1, sb, r7, lsl #2
	add r2, r8, r7, lsl #2
	ldrh r3, [r0, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r4
	bl ov4_021DF7DC
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	cmp r7, r0
	ble _021E0F48
_021E0FA4:
	mov r0, #1
	bl ov4_021E32B4
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_021E0DF8

	arm_func_start ov4_021E0FB8
ov4_021E0FB8: ; 0x021E0FB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #0]
	mov r6, r0
	add r4, r1, #2
	cmp r4, #2
	bls _021E0FF0
	bl ov4_021E4A34
	mov r1, r0
	sub r2, r4, #2
	add r0, r5, #4
	add r1, r1, #0x350
	mov r2, r2, lsl #2
	bl MIi_CpuCopy32
_021E0FF0:
	bl ov4_021E4A34
	sub r1, r4, #1
	str r1, [r0, #0x348]
	bl ov4_021E4A34
	str r6, [r0, #0x34c]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E0FB8

	arm_func_start ov4_021E1008
ov4_021E1008: ; 0x021E1008
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	mov r0, r4
	bne _021E102C
	bl ov4_021E37C4
	ldmia sp!, {r4, pc}
_021E102C:
	bl ov4_021E3750
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E1008

	arm_func_start ov4_021E1034
ov4_021E1034: ; 0x021E1034
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, r0
	cmp r1, #0
	bne _021E1068
	bl ov4_021E4A34
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _021E109C
	bl ov4_021E4A34
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	bne _021E109C
_021E1068:
	bl ov4_021E4A34
	mov r1, #1
	str r1, [r0, #0x1bc]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1c0]
	str r1, [r4, #0x1c4]
	bl ov4_021E4A34
	str r5, [r0, #0xf4]
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E109C:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E1120
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	mov r1, #0
	bl ov4_021FEE90
	mov r6, r0
	bl ov4_021E4A34
	mov r4, r0
	ldr r1, _021E11DC ; =0x0221752C
	mov r0, r6
	mov r2, #0
	bl ov4_021FE28C
	str r0, [r4, #0xf4]
	bl ov4_021E4A34
	mov r4, r0
	mov r0, r6
	bl ov4_021FE350
	str r0, [r4, #0x24]
	bl ov4_021E4A34
	mov r4, r0
	mov r0, r6
	bl ov4_021FE358
	strh r0, [r4, #0xa4]
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	mov r4, #1
	str r0, [r6, #0x204]
	b _021E115C
_021E1120:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E1138
	bl ov4_021E4A34
	str r5, [r0, #0xf4]
_021E1138:
	bl ov4_021E4A34
	str r5, [r0, #0x204]
	bl ov4_021E4A34
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0xc]
	bl ov4_021E4A34
	ldrh r0, [r0, #0x1a]
	mov r4, #3
	str r0, [sp, #0x10]
_021E115C:
	bl ov4_021E4A34
	ldr r1, _021E11E0 ; =0x00001770
	str r1, [r0, #0x1c8]
	bl ov4_021E4A34
	mov r6, r0
	bl OS_GetTick
	str r0, [r6, #0x1cc]
	str r1, [r6, #0x1d0]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl ov4_021E4A34
	ldr r0, [r0, #0x208]
	cmp r0, #0
	movne r7, #0xb
	moveq r7, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	str r0, [sp, #8]
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	add r2, sp, #8
	stmia sp, {r2, r4}
	mov r3, r0
	ldrh r3, [r3, #0xa4]
	ldr r2, [r6, #0x24]
	mov r1, r5
	mov r0, r7
	bl ov4_021DF7DC
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E11DC: .word 0x0221752C
_021E11E0: .word 0x00001770
	arm_func_end ov4_021E1034

	arm_func_start ov4_021E11E4
ov4_021E11E4: ; 0x021E11E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x228
	movs r4, r1
	mov r8, r0
	mov fp, r2
	beq _021E1208
	bl ov4_021E4A34
	ldrb r6, [r0, #0x1a5]
	b _021E1238
_021E1208:
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x344]
	ldrb r1, [r5, #0x1a5]
	sub r0, r0, #1
	cmp r1, r0
	movge r6, #0
	bge _021E1238
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a5]
	add r6, r0, #1
_021E1238:
	cmp r4, #0
	mov r5, #0
	moveq r7, #1
	movne r7, r5
_021E1248:
	cmp r7, #0
	cmpeq r5, #0
	beq _021E128C
	bl ov4_021E4A34
	ldrb r1, [r0, #0x1a5]
	add r1, r1, #1
	strb r1, [r0, #0x1a5]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r1, [r4, #0x1a5]
	ldr r0, [r0, #0x344]
	cmp r1, r0
	blt _021E128C
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a5]
_021E128C:
	cmp r5, #0
	beq _021E12DC
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a5]
	cmp r6, r0
	bne _021E12DC
	bl ov4_021E4A34
	ldr r1, _021E149C ; =0x00000BB8
	str r1, [r0, #0x1c8]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1cc]
	str r1, [r4, #0x1d0]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1bc]
	add sp, sp, #0x228
	mov r0, r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E12DC:
	mov r5, #1
	bl ov4_021DA87C
	mov sl, r0
	bl ov4_021E4A34
	mov sb, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	mov r1, r0
	ldrb r2, [r1, #0x1a5]
	ldr r3, [sb, #0x2fc]
	mov r1, #0xc
	add r2, r4, r2
	ldrb r2, [r2, #0x304]
	mov r0, sl
	mla r1, r2, r1, r3
	bl DWC_GetGsProfileId
	movs r4, r0
	mvnne r0, #0
	cmpne r4, r0
	beq _021E1248
	bl ov4_021E4A34
	mov sl, r0
	bl ov4_021E4A34
	mov sb, r0
	bl ov4_021E4A34
	ldrb r1, [r0, #0x1a5]
	ldr r2, [sl, #0x2fc]
	mov r0, #0xc
	add r1, sb, r1
	ldrb r1, [r1, #0x304]
	mla r0, r1, r0, r2
	bl DWCi_Acc_IsValidFriendData
	cmp r0, #0
	beq _021E1248
	mov sb, r5
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E13A4
_021E137C:
	bl ov4_021E4A34
	add r0, r0, sb, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r4, r0
	beq _021E13A4
	add sb, sb, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp sb, r0
	ble _021E137C
_021E13A4:
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp sb, r0
	ble _021E1248
	bl ov4_021E4A34
	ldr r0, [r0, #0]
	add r2, sp, #4
	mov r1, r4
	bl ov4_021EBA18
	mov sb, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0]
	ldr r1, [sp, #4]
	add r2, sp, #0x18
	bl ov4_021EB8D8
	orrs r0, sb, r0
	ldreq r0, [sp, #0x1c]
	cmpeq r0, #4
	bne _021E1248
	ldr r0, _021E14A0 ; =0x022174F0
	add r1, sp, #0xc
	add r2, sp, #0x20
	mov r3, #0x2f
	bl ov4_021D89C0
	mov sl, r0
	ldr r0, _021E14A4 ; =0x022174E8
	add r1, sp, #8
	add r2, sp, #0x20
	mov r3, #0x2f
	bl ov4_021D89C0
	mov sb, r0
	ldr r0, _021E14A8 ; =0x022174EC
	add r1, sp, #0
	add r2, sp, #0x20
	mov r3, #0x2f
	bl ov4_021D89C0
	cmp sl, #0
	cmpgt sb, #0
	cmpgt r0, #0
	ble _021E1248
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	cmp r0, #3
	bne _021E1248
	add r0, sp, #8
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	mov sb, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x16]
	cmp sb, r0
	bne _021E1248
	cmp r4, fp
	moveq r8, #1
	mov r0, r4
	mov r1, r8
	bl ov4_021E1034
	add sp, sp, #0x228
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021E149C: .word 0x00000BB8
_021E14A0: .word 0x022174F0
_021E14A4: .word 0x022174E8
_021E14A8: .word 0x022174EC
	arm_func_end ov4_021E11E4

	arm_func_start ov4_021E14AC
ov4_021E14AC: ; 0x021E14AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x204]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1cc]
	str r1, [r4, #0x1d0]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E1520
	mov r0, #3
	bl ov4_021E4A44
	mov r0, #0
	bl ov4_021DF1D0
	bl ov4_021E37C4
	cmp r0, #0
	beq _021E1578
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021E1520:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E1554
	mov r0, #0
	mov r1, r0
	mov r2, r5
	bl ov4_021E11E4
	bl ov4_021E1008
	cmp r0, #0
	beq _021E1578
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021E1554:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E1578
	ldr r1, _021E1580 ; =0xFFFEC5E6
	mov r0, #6
	bl ov4_021DE3BC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021E1578:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E1580: .word 0xFFFEC5E6
	arm_func_end ov4_021E14AC

	arm_func_start ov4_021E1584
ov4_021E1584: ; 0x021E1584
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r3, [r0, #0xa4]
	ldr r2, [r4, #0x24]
	mov r1, r5
	mov r0, #5
	bl ov4_021DF7DC
	mov r4, r0
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x204]
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E1584

	arm_func_start ov4_021E15D8
ov4_021E15D8: ; 0x021E15D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E1610
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldr r1, [r4, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	moveq r4, #0
	beq _021E1614
_021E1610:
	mov r4, #1
_021E1614:
	cmp r4, #0
	beq _021E1640
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20]
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC194
_021E1640:
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0x1f
	bhs _021E1670
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	mov r1, #0
	add r0, r0, #1
	add r0, r6, r0, lsl #2
	str r1, [r0, #0xf4]
_021E1670:
	bl ov4_021E4A34
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021E16A4
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	bl ov4_021FB674
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x19c]
_021E16A4:
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	strb r0, [r6, #0x14]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x204]
	cmp r4, #0
	bne _021E16E4
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E17EC
	bl ov4_021E249C
	b _021E17EC
_021E16E4:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E1720
	mov r0, #3
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r1, #2
	str r1, [r0, #0xe8]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	b _021E17EC
_021E1720:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E174C
	mov r0, #4
	bl ov4_021E4A44
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl ov4_021E11E4
	b _021E17EC
_021E174C:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E17EC
	mov r0, #0xe
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1d8]
	bl ov4_021E4A34
	add r1, r0, #0x100
	mov r2, #0
	mov r0, r5
	strh r2, [r1, #0xb2]
	bl ov4_021E2590
	mov r5, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E17D4
	mov r4, #0xd
_021E17A0:
	bl ov4_021E4A34
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xf4]
	mov r1, r4
	bl ov4_021E2ACC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r5, r0
	ble _021E17A0
_021E17D4:
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _021E17EC
	mov r0, #2
	bl ov4_021E239C
_021E17EC:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E15D8

	arm_func_start ov4_021E17F4
ov4_021E17F4: ; 0x021E17F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E1834
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E1820
	bl ov4_021E2600
_021E1820:
	ldr r1, _021E18B0 ; =0xFFFEC5D2
	mov r0, #6
	bl ov4_021DE3BC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021E1834:
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	strb r0, [r5, #0x14]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021E187C
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	bl ov4_021FB674
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x19c]
_021E187C:
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E1894
	bl ov4_021E249C
	b _021E18A8
_021E1894:
	mov r0, #4
	bl ov4_021E4A44
	mov r0, #0
	bl ov4_021E14AC
	mov r4, r0
_021E18A8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E18B0: .word 0xFFFEC5D2
	arm_func_end ov4_021E17F4

	arm_func_start ov4_021E18B4
ov4_021E18B4: ; 0x021E18B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E194C
	mov r5, #0xa
_021E18D4:
	bl ov4_021E4A34
	mov sb, r0
	bl ov4_021E4A34
	mov r8, r0
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	add r1, r6, #0x348
	str r1, [sp]
	ldr ip, [r0, #0x348]
	add r3, r7, r4, lsl #1
	add ip, ip, #1
	str ip, [sp, #4]
	add r1, sb, r4, lsl #2
	add r2, r8, r4, lsl #2
	ldrh r3, [r3, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r5
	bl ov4_021DF7DC
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r4, r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E18D4
_021E194C:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20]
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x1a8]
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F8710
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a8]
	mov r0, r1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_021E18B4

	arm_func_start ov4_021E1998
ov4_021E1998: ; 0x021E1998
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x1c
	cmp r0, #4
	mov r4, #3
	mov r5, #0
	addls pc, pc, r0, lsl #2
	b _021E1FBC
_021E19B4: ; jump table
	b _021E19C8 ; case 0
	b _021E1D68 ; case 1
	b _021E1DAC ; case 2
	b _021E1E70 ; case 3
	b _021E1E90 ; case 4
_021E19C8:
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	ldrb r1, [r6, #0x1a4]
	sub r0, r0, #1
	cmp r1, r0
	bge _021E1A88
	mov r0, #0xd
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [sp, #8]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	str r0, [sp, #0xc]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	add r0, r4, r0
	ldrb r0, [r0, #0x2d0]
	str r0, [sp, #0x10]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x14]
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a4]
	mov r4, #5
	add r0, r0, #1
	add r0, r6, r0, lsl #1
	ldrh r0, [r0, #0xa4]
	str r0, [sp, #0x18]
	b _021E1CD4
_021E1A88:
	bl ov4_021E4A34
	mov r1, r5
	strb r1, [r0, #0x17]
	bl ov4_021E4A34
	mov r1, r5
	str r1, [r0, #0x20]
	bl ov4_021E4A34
	ldr r0, [r0, #0x10]
	bl ov4_021FC194
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E1AC8
	mov r0, r4
	bl ov4_021E4A44
	b _021E1AEC
_021E1AC8:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E1AE4
	mov r0, #4
	bl ov4_021E4A44
	b _021E1AEC
_021E1AE4:
	mov r0, #0xa
	bl ov4_021E4A44
_021E1AEC:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a4]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _021E1B24
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r1, [r6, #0xd]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _021E1BD4
_021E1B24:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E1B5C
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r7, #0x20c]
	b _021E1B7C
_021E1B5C:
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20c]
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	str r0, [r6, #0xf4]
_021E1B7C:
	mov r0, #0x10
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x1d4]
	mov r7, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E1CC4
	mov r6, #2
_021E1BA8:
	bl ov4_021E4A34
	add r0, r0, r7
	ldrb r0, [r0, #0x2d0]
	mov r1, r6
	bl ov4_021E276C
	add r7, r7, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r7, r0
	ble _021E1BA8
	b _021E1CC4
_021E1BD4:
	mov r0, #0
	str r0, [sp, #8]
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	str r0, [sp, #0xc]
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r6, r0
	ldrb r0, [r0, #0x2d0]
	str r0, [sp, #0x10]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E1C38
	bl ov4_021E4A34
	mov r1, #2
	str r1, [r0, #0xe8]
	bl ov4_021E4A34
	mov r6, r0
	bl OS_GetTick
	str r0, [r6, #0xec]
	str r1, [r6, #0xf0]
	b _021E1CC4
_021E1C38:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E1CC4
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl ov4_021E11E4
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	bne _021E1CC4
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	blo _021E1CC4
	bl ov4_021E4A34
	mov r8, r0
	mov r0, #0
	bl ov4_021E3228
	mov r6, r0
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	mov r1, #1
	ldr r2, [r8, #0x1dc]
	add r0, r7, r0
	ldrb r0, [r0, #0x2d0]
	mvn r0, r1, lsl r0
	and r0, r6, r0
	cmp r2, r0
	beq _021E1CC4
	bl ov4_021E249C
	b _021E1FBC
_021E1CC4:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	movne r5, #1
_021E1CD4:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x10
	beq _021E1FBC
	bl ov4_021E4A34
	mov sl, r0
	bl ov4_021E4A34
	mov sb, r0
	bl ov4_021E4A34
	mov r8, r0
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	add r1, sp, #8
	stmia sp, {r1, r4}
	mov ip, r0
	ldrb r3, [sb, #0xd]
	ldrb r2, [r7, #0xd]
	ldrb r1, [ip, #0xd]
	add r4, sl, r3, lsl #2
	add r2, r8, r2, lsl #2
	add r3, r6, r1, lsl #1
	ldrh r3, [r3, #0xa4]
	ldr r1, [r4, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, #8
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x3cd]
	b _021E1FBC
_021E1D68:
	mov r0, #1
	bl ov4_021E4A44
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E1DA4
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r5, #0x20c]
_021E1DA4:
	mov r5, #1
	b _021E1FBC
_021E1DAC:
	mov r0, #1
	bl ov4_021E4A44
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E1DD4
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E1DF4
_021E1DD4:
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x17]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x200]
	str r0, [r4, #0x20]
_021E1DF4:
	bl ov4_021E328C
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bls _021E1FBC
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	mov r8, r0
	bl ov4_021E4A34
	add r3, r8, #0xf4
	ldrb r2, [r0, #0xd]
	mov r1, #1
	mov r0, #9
	sub r2, r2, #1
	add r2, r3, r2, lsl #2
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, [r7, #0xf4]
	ldr r2, [r6, #0x24]
	ldrh r3, [r4, #0xa4]
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	beq _021E1FBC
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_021E1E70:
	mov r0, #1
	bl ov4_021E4A44
	bl ov4_021E328C
	bl ov4_021E4A34
	mov r1, r5
	str r1, [r0, #0x20c]
	mov r5, #1
	b _021E1FBC
_021E1E90:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _021E1EB0
	ldr r1, _021E1FF0 ; =0x022174E0
	mov r0, #2
	mov r2, r5
	bl ov4_021DB978
_021E1EB0:
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	bl ov4_021DB8DC
	mov r4, r0
	bl ov4_021E4A34
	str r4, [sp]
	ldr r1, [r0, #0x468]
	mov r0, #0
	str r1, [sp, #4]
	ldr r4, [r6, #0x464]
	mov r2, r7
	mov r1, r0
	mov r3, r0
	blx r4
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E1F24
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E1F2C
_021E1F24:
	bl ov4_021DF134
	b _021E1FB0
_021E1F2C:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _021E1F54
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEBBC
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0xe4]
_021E1F54:
	bl ov4_021DC734
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E1F9C
	bl ov4_021DEB94
	bl ov4_021E3750
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _021E1FF4 ; =0x0221A6A8
	ldrb r1, [r0, #0x1c]
	cmp r1, #1
	moveq r1, #1
	streqb r1, [r0, #0x1d]
	mov r0, #0xa
	bl ov4_021E4A44
	b _021E1FA4
_021E1F9C:
	mov r0, #1
	bl ov4_021E4A44
_021E1FA4:
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20c]
_021E1FB0:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a9]
_021E1FBC:
	cmp r5, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEE44
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021E1FF0: .word 0x022174E0
_021E1FF4: .word 0x0221A6A8
	arm_func_end ov4_021E1998

	arm_func_start ov4_021E1FF8
ov4_021E1FF8: ; 0x021E1FF8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	beq _021E2028
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
_021E2028:
	cmp r5, #0
	mov r4, #0
	bls _021E2078
_021E2034:
	ldr r0, [r6, r4, lsl #2]
	bl ov4_021E3078
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	beq _021E206C
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
_021E206C:
	add r4, r4, #1
	cmp r4, r5
	blo _021E2034
_021E2078:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E1FF8

	arm_func_start ov4_021E2080
ov4_021E2080: ; 0x021E2080
	stmfd sp!, {r3, lr}
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20c]
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #2
	bne _021E20A8
	bl ov4_021E2208
	ldmia sp!, {r3, pc}
_021E20A8:
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x1a9]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E2114
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x1a9]
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E20F4
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F8710
	b _021E210C
_021E20F4:
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	bl ov4_021E1584
	bl ov4_021E1008
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_021E210C:
	bl ov4_021E2208
	ldmia sp!, {r3, pc}
_021E2114:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	beq _021E2174
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #5
	beq _021E2174
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	beq _021E2174
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #7
	beq _021E2174
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	beq _021E2174
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	bne _021E21AC
_021E2174:
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	cmp r0, #0
	beq _021E219C
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	bl ov4_021E1584
	bl ov4_021E1008
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_021E219C:
	bl ov4_021E22C8
	bl ov4_021E1008
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_021E21AC:
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021E21D4
	bl ov4_021E4A34
	ldr r0, [r0, #0x19c]
	bl ov4_021FB674
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x19c]
_021E21D4:
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E2200
	bl ov4_021E4A34
	mov r1, #1
	strb r1, [r0, #0x1a9]
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F8710
_021E2200:
	bl ov4_021E2208
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E2080

	arm_func_start ov4_021E2208
ov4_021E2208: ; 0x021E2208
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _021E22C4 ; =0x022174E0
	mov r0, #1
	mov r2, #0
	bl ov4_021DB978
	bl ov4_021E3750
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021DF134
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	movne r6, #1
	bne _021E225C
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r6, #1
	movne r6, #0
_021E225C:
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	bl ov4_021DB8DC
	mov r4, r0
	bl ov4_021E4A34
	str r4, [sp]
	ldr r1, [r0, #0x468]
	mov r2, r7
	str r1, [sp, #4]
	ldr ip, [r5, #0x464]
	mov r3, r6
	mov r0, #0
	mov r1, #1
	blx ip
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a9]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E22C4: .word 0x022174E0
	arm_func_end ov4_021E2208

	arm_func_start ov4_021E22C8
ov4_021E22C8: ; 0x021E22C8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, #0
	str r4, [sp, #8]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E2390
	bl ov4_021E4A34
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _021E2390
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldr r1, [r5, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	beq _021E2390
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	add r2, sp, #8
	mov r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	ldrb r3, [r0, #0xd]
	ldrb r2, [r6, #0xd]
	ldr r1, [r7, #0x20]
	add r3, r3, #1
	add r2, r2, #1
	add r3, r4, r3, lsl #1
	add r2, r5, r2, lsl #2
	ldrh r3, [r3, #0xa4]
	ldr r2, [r2, #0x24]
	mov r0, #0xc
	bl ov4_021DF7DC
	mov r4, r0
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20]
_021E2390:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end ov4_021E22C8

	arm_func_start ov4_021E239C
ov4_021E239C: ; 0x021E239C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r4, r0
	bne _021E23B8
	bl ov4_021E2208
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_021E23B8:
	bl ov4_021DECF4
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _021E23DC
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E2438
_021E23DC:
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r6, #1
	movne r6, #0
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	bl ov4_021DB8DC
	mov r4, r0
	bl ov4_021E4A34
	str r4, [sp]
	ldr r1, [r0, #0x468]
	mov r0, #0
	str r1, [sp, #4]
	ldr ip, [r5, #0x464]
	mov r2, r6
	mov r1, #1
	mov r3, r0
	blx ip
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_021E2438:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E246C
	cmp r4, #1
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0
	bl ov4_021DF1D0
	bl ov4_021E37C4
	add sp, sp, #8
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E246C:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	cmpeq r4, #1
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl ov4_021E11E4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E239C

	arm_func_start ov4_021E249C
ov4_021E249C: ; 0x021E249C
	stmfd sp!, {r3, lr}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	ldmeqia sp!, {r3, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	ldmeqia sp!, {r3, pc}
	bl ov4_021E2600
	mov r0, #1
	bl ov4_021E239C
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E249C

	arm_func_start ov4_021E24D0
ov4_021E24D0: ; 0x021E24D0
	stmfd sp!, {r4, lr}
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x20]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a8]
	bl ov4_021E4A34
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _021E2580
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E2540
	mov r0, #3
	bl ov4_021E4A44
	mov r0, #0
	bl ov4_021DF1D0
	mov r4, r0
	bl ov4_021E37C4
	cmp r0, #0
	beq _021E2588
	mov r0, r4
	ldmia sp!, {r4, pc}
_021E2540:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E2588
	mov r0, #4
	bl ov4_021E4A44
	bl ov4_021E4A34
	ldr r0, [r0, #0x208]
	mov r1, #0
	bl ov4_021E1034
	mov r4, r0
	bl ov4_021E1008
	cmp r0, #0
	beq _021E2588
	mov r0, r4
	ldmia sp!, {r4, pc}
_021E2580:
	mov r0, #1
	bl ov4_021E239C
_021E2588:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E24D0

	arm_func_start ov4_021E2590
ov4_021E2590: ; 0x021E2590
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov4_021E4A34
	str r5, [r0, #0x20c]
	bl ov4_021E4A34
	ldrb r1, [r0, #0xd]
	mov r0, r5
	add r1, r1, #1
	bl ov4_021D9C14
	movs r4, r0
	beq _021E25E4
	bl ov4_021E4A34
	mov r1, #2
	strb r1, [r0, #0x1a8]
	ldr r0, [r4, #0]
	bl ov4_021F86F0
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a8]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_021E25E4:
	bl ov4_021E4A34
	ldrb r1, [r0, #0xd]
	mov r0, r5
	add r1, r1, #1
	bl ov4_021DE80C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E2590

	arm_func_start ov4_021E2600
ov4_021E2600: ; 0x021E2600
	stmfd sp!, {r3, lr}
	bl ov4_021E4A34
	mov r1, #2
	strb r1, [r0, #0x1a8]
	bl ov4_021E4A34
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov4_021F8710
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a8]
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E2600

	arm_func_start ov4_021E2630
ov4_021E2630: ; 0x021E2630
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x108
	mov r7, #0
	mov sl, r0
	mov r8, r7
	mov sb, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E26B8
	add r4, sp, #0x88
	add r5, sp, #8
	mov r6, sb
_021E2664:
	bl ov4_021E4A34
	add r0, r0, sb
	ldrb r0, [r0, #0x2d0]
	tst sl, r6, lsl r0
	beq _021E2690
	bl ov4_021E4A34
	add r0, r0, sb, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	b _021E26A4
_021E2690:
	bl ov4_021E4A34
	add r0, r0, sb, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
_021E26A4:
	add sb, sb, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp sb, r0
	ble _021E2664
_021E26B8:
	cmp r8, #0
	mov sl, #0
	ble _021E2710
	add sb, sp, #0x88
	mov r6, #0x10
	add r5, sp, #8
	mov r4, sl
_021E26D4:
	ldr r1, [r5, sl, lsl #2]
	str sb, [sp]
	mov r0, r6
	mov r2, r4
	mov r3, r4
	str r7, [sp, #4]
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #0x108
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add sl, sl, #1
	cmp sl, r8
	blt _021E26D4
_021E2710:
	bl ov4_021E4A34
	mov r1, #2
	strb r1, [r0, #0x1a8]
	cmp r7, #0
	mov r6, #0
	ble _021E2754
	add r5, sp, #0x88
	mov r4, r6
_021E2730:
	ldr r0, [r5, r6, lsl #2]
	mov r1, r4
	bl ov4_021E31C4
	cmp r0, #0xff
	beq _021E2748
	bl ov4_021D97F4
_021E2748:
	add r6, r6, #1
	cmp r6, r7
	blt _021E2730
_021E2754:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1a8]
	mov r0, #1
	add sp, sp, #0x108
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov4_021E2630

	arm_func_start ov4_021E276C
ov4_021E276C: ; 0x021E276C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	cmp r4, #2
	beq _021E2790
	cmp r4, #3
	beq _021E2808
	b _021E282C
_021E2790:
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r6, r0
	ldrb r0, [r0, #0x2d0]
	mov r6, #1
	cmp r5, r0
	moveq r0, #1
	streqb r0, [sp]
	movne r0, #0
	strneb r0, [sp]
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blo _021E282C
_021E27D0:
	bl ov4_021E4A34
	add r0, r0, r6
	ldrb r0, [r0, #0x2d0]
	cmp r5, r0
	streqb r6, [sp, #1]
	streqb r5, [sp, #2]
	beq _021E282C
	add r0, r6, #1
	and r6, r0, #0xff
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r6, r0
	bls _021E27D0
	b _021E282C
_021E2808:
	bl ov4_021E4A34
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	strb r0, [sp]
	bl ov4_021E4A34
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	mov r0, r0, asr #8
	strb r0, [sp, #1]
_021E282C:
	add r2, sp, #0
	mov r0, r4
	mov r1, r5
	mov r3, #4
	bl ov4_021E4B08
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1e0]
	str r1, [r4, #0x1e4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov4_021E276C

	arm_func_start ov4_021E285C
ov4_021E285C: ; 0x021E285C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #9
	beq _021E2890
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x10
	beq _021E2890
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x11
	bne _021E28D4
_021E2890:
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x1e0]
	ldr r0, [r0, #0x1e4]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E2AC4 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	mov r4, r0
	mov r5, r1
	b _021E28DC
_021E28D4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E28DC:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #9
	beq _021E2900
	cmp r0, #0x10
	beq _021E296C
	cmp r0, #0x11
	beq _021E2A9C
	b _021E2ABC
_021E2900:
	ldr r0, _021E2AC8 ; =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _021E2ABC
	bl ov4_021D9A40
	cmp r0, #5
	bne _021E2948
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1ad]
	cmp r0, #5
	blo _021E2948
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	bl ov4_021E17F4
	cmp r0, #0
	bne _021E2ABC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E2948:
	bl ov4_021E4A34
	ldrb r1, [r0, #0x1ad]
	add r1, r1, #1
	strb r1, [r0, #0x1ad]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x2d0]
	mov r1, #3
	bl ov4_021E276C
	b _021E2ABC
_021E296C:
	ldr r0, _021E2AC8 ; =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _021E2ABC
	bl ov4_021E4A34
	ldrb r1, [r0, #0x1ab]
	add r1, r1, #1
	strb r1, [r0, #0x1ab]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1ab]
	cmp r0, #5
	bls _021E2A34
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E29BC
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E29CC
_021E29BC:
	bl ov4_021E2600
	mov r0, #1
	bl ov4_021E239C
	b _021E2ABC
_021E29CC:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1d4]
	bl ov4_021E2630
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E2A18
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1ab]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1e0]
	str r1, [r4, #0x1e4]
	b _021E2ABC
_021E2A18:
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	bl ov4_021E15D8
	cmp r0, #0
	bne _021E2ABC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E2A34:
	mov r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E2ABC
	mov r5, #2
	mov r6, r4
_021E2A50:
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r7, #0x1d4]
	tst r1, r6, lsl r0
	bne _021E2A84
	bl ov4_021E4A34
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	mov r1, r5
	bl ov4_021E276C
_021E2A84:
	add r4, r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E2A50
	b _021E2ABC
_021E2A9C:
	bl ov4_021E4A34
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	cmp r5, r0, asr #31
	cmpeq r4, r0
	bls _021E2ABC
	mov r0, #4
	bl ov4_021E1998
_021E2ABC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E2AC4: .word 0x000082EA
_021E2AC8: .word 0x00001770
	arm_func_end ov4_021E285C

	arm_func_start ov4_021E2ACC
ov4_021E2ACC: ; 0x021E2ACC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	cmp r5, #0xd
	mov r6, r0
	movne r4, #0
	bne _021E2AF8
	bl ov4_021E4A34
	ldr r0, [r0, #0x20c]
	mov r4, #1
	str r0, [sp, #8]
_021E2AF8:
	add r0, sp, #8
	str r0, [sp]
	mov r2, #0
	mov r0, r5
	mov r1, r6
	mov r3, r2
	str r4, [sp, #4]
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1e8]
	str r1, [r4, #0x1ec]
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov4_021E2ACC

	arm_func_start ov4_021E2B4C
ov4_021E2B4C: ; 0x021E2B4C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_021D9A40
	cmp r0, #6
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r5, #0xd
	beq _021E2B88
	cmp r5, #0xe
	beq _021E2BC4
	cmp r5, #0xf
	beq _021E2D4C
	b _021E2D64
_021E2B88:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #8
	beq _021E2BA8
	mov r0, #8
	bl ov4_021E4A44
	mov r0, r4
	bl ov4_021E2590
_021E2BA8:
	mov r0, r6
	mov r1, #0xe
	bl ov4_021E2ACC
	cmp r0, #0
	bne _021E2D64
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E2BC4:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xe
	bne _021E2D30
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x1e8]
	ldr r0, [r0, #0x1ec]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E2D6C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	mov r2, r0, lsr #1
	mov r0, r1, lsr #1
	cmp r0, #0
	orr r2, r2, r1, lsl #31
	cmpeq r2, #0x12c
	bls _021E2C90
	bl ov4_021E4A34
	ldr r1, [r0, #0x1e8]
	ldr r0, [r0, #0x1ec]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E2D6C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	mov r3, r0, lsr #1
	mov r0, #0x12c
	orr r3, r3, r1, lsl #31
	rsb r0, r0, #0
	mvn r2, #0
	adds r5, r3, r0
	adc r4, r2, r1, lsr #1
	bl ov4_021E4A34
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb2]
	cmp r4, r0, asr #31
	cmpeq r5, r0
	bls _021E2C90
	bl ov4_021E4A34
	add r0, r0, #0x100
	strh r5, [r0, #0xb2]
_021E2C90:
	mov r0, r6
	mov r1, #0
	bl ov4_021E31C4
	mov r4, r0
	cmp r4, #0xff
	beq _021E2CBC
	bl ov4_021E4A34
	ldr r2, [r0, #0x1d8]
	mov r1, #1
	orr r1, r2, r1, lsl r4
	str r1, [r0, #0x1d8]
_021E2CBC:
	mov r0, #1
	bl ov4_021E3228
	mov r4, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x1d8]
	cmp r4, r0
	bne _021E2D64
	mov r5, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E2D24
	mov r4, #0xf
_021E2CF0:
	bl ov4_021E4A34
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xf4]
	mov r1, r4
	bl ov4_021E2ACC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r5, r0
	ble _021E2CF0
_021E2D24:
	mov r0, #0xf
	bl ov4_021E4A44
	b _021E2D64
_021E2D30:
	mov r0, r6
	mov r1, #0xf
	bl ov4_021E2ACC
	cmp r0, #0
	bne _021E2D64
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E2D4C:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #8
	bne _021E2D64
	mov r0, #2
	bl ov4_021E239C
_021E2D64:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E2D6C: .word 0x000082EA
	arm_func_end ov4_021E2B4C

	arm_func_start ov4_021E2D70
ov4_021E2D70: ; 0x021E2D70
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #8
	beq _021E2DA4
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xe
	beq _021E2DA4
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xf
	bne _021E2DE8
_021E2DA4:
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl ov4_021E4A34
	ldr r1, [r0, #0x1e8]
	ldr r0, [r0, #0x1ec]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E2F68 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	mov r4, r0
	mov r5, r1
	b _021E2DF0
_021E2DE8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E2DF0:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #8
	beq _021E2E14
	cmp r0, #0xe
	beq _021E2E44
	cmp r0, #0xf
	beq _021E2F40
	b _021E2F60
_021E2E14:
	ldr r0, _021E2F6C ; =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _021E2F60
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	mov r1, #0xe
	bl ov4_021E2ACC
	cmp r0, #0
	bne _021E2F60
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E2E44:
	ldr r0, _021E2F6C ; =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _021E2F60
	bl ov4_021E4A34
	ldrb r1, [r0, #0x1ac]
	add r1, r1, #1
	strb r1, [r0, #0x1ac]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x1ac]
	cmp r0, #5
	bls _021E2ECC
	bl ov4_021E4A34
	ldr r0, [r0, #0x1d8]
	bl ov4_021E2630
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E2EC0
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1ac]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1e8]
	str r1, [r4, #0x1ec]
	b _021E2F60
_021E2EC0:
	mov r0, #2
	bl ov4_021E239C
	b _021E2F60
_021E2ECC:
	mov r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E2F60
	mov r5, #0xd
	mov r6, r4
_021E2EE8:
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r7, #0x1d8]
	tst r1, r6, lsl r0
	bne _021E2F28
	bl ov4_021E4A34
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	mov r1, r5
	bl ov4_021E2ACC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_021E2F28:
	add r4, r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E2EE8
	b _021E2F60
_021E2F40:
	bl ov4_021E4A34
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb2]
	cmp r5, r0, asr #31
	cmpeq r4, r0
	bls _021E2F60
	mov r0, #2
	bl ov4_021E239C
_021E2F60:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E2F68: .word 0x000082EA
_021E2F6C: .word 0x00001770
	arm_func_end ov4_021E2D70

	arm_func_start ov4_021E2F70
ov4_021E2F70: ; 0x021E2F70
	ldr r2, _021E2FAC ; =0x0221A6C8
	mov r3, #0
	mov r0, #0xc
_021E2F7C:
	mul r1, r3, r0
	ldrb r1, [r2, r1]
	cmp r1, #0
	addeq r0, r3, #0x64
	andeq r0, r0, #0xff
	bxeq lr
	add r1, r3, #1
	and r3, r1, #0xff
	cmp r3, #0x9a
	blo _021E2F7C
	mov r0, #0
	bx lr
	; .align 2, 0
_021E2FAC: .word 0x0221A6C8
	arm_func_end ov4_021E2F70

	arm_func_start ov4_021E2FB0
ov4_021E2FB0: ; 0x021E2FB0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r7, _021E3000 ; =0x0221A6C8
	mov r5, #4
	mov r4, r6
_021E2FC4:
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _021E2FDC
	mov r0, r5
	mov r2, r4
	bl ov4_021D77C4
_021E2FDC:
	add r6, r6, #1
	cmp r6, #0x9a
	add r7, r7, #0xc
	blt _021E2FC4
	ldr r1, _021E3000 ; =0x0221A6C8
	ldr r2, _021E3004 ; =0x00000738
	mov r0, #0
	bl MIi_CpuClear32
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E3000: .word 0x0221A6C8
_021E3004: .word 0x00000738
	arm_func_end ov4_021E2FB0

	arm_func_start ov4_021E3008
ov4_021E3008: ; 0x021E3008
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r4, r5
_021E3014:
	mov r6, r4
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	blt _021E3050
_021E3028:
	bl ov4_021E4A34
	add r0, r0, r6
	ldrb r0, [r0, #0x2d0]
	cmp r5, r0
	beq _021E3050
	add r6, r6, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	cmp r6, r0
	ble _021E3028
_021E3050:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x14]
	cmp r6, r0
	bgt _021E3070
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #0x20
	blo _021E3014
_021E3070:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E3008

	arm_func_start ov4_021E3078
ov4_021E3078: ; 0x021E3078
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x2fc]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r4, #0
	bl ov4_021E4A34
	ldr r0, [r0, #0x344]
	cmp r0, #0
	ble _021E30E0
_021E30A8:
	bl ov4_021E4A34
	add r0, r0, r4
	ldrb r0, [r0, #0x304]
	bl ov4_021DB894
	cmp r0, #0
	ble _021E30CC
	cmp r0, r5
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_021E30CC:
	add r4, r4, #1
	bl ov4_021E4A34
	ldr r0, [r0, #0x344]
	cmp r4, r0
	blt _021E30A8
_021E30E0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E3078

	arm_func_start ov4_021E30E8
ov4_021E30E8: ; 0x021E30E8
	stmfd sp!, {r4, lr}
	ldr r1, _021E31AC ; =0x022175F0
	mvn r2, #0
	mov r4, r0
	bl ov4_021FE28C
	mvn r2, #0
	cmp r0, r2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021E31B0 ; =0x022175FC
	mov r0, r4
	bl ov4_021FE28C
	mvn r2, #0
	cmp r0, r2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021E31B4 ; =0x02217534
	mov r0, r4
	bl ov4_021FE28C
	mvn r2, #0
	cmp r0, r2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021E31B8 ; =0x02217540
	mov r0, r4
	bl ov4_021FE28C
	mvn r1, #0
	cmp r0, r1
	bne _021E3178
	ldr r1, _021E31B8 ; =0x02217540
	mov r0, r4
	mov r2, #0
	bl ov4_021FE28C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021E3178:
	ldr r1, _021E31BC ; =0x0221754C
	mov r0, r4
	mvn r2, #0
	bl ov4_021FE28C
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021E31C0 ; =0x0221752C
	mov r0, r4
	mov r2, #0
	bl ov4_021FE28C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E31AC: .word 0x022175F0
_021E31B0: .word 0x022175FC
_021E31B4: .word 0x02217534
_021E31B8: .word 0x02217540
_021E31BC: .word 0x0221754C
_021E31C0: .word 0x0221752C
	arm_func_end ov4_021E30E8

	arm_func_start ov4_021E31C4
ov4_021E31C4: ; 0x021E31C4
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	moveq r4, #1
	mov r5, r0
	movne r4, #0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	bgt _021E3220
_021E31E8:
	bl ov4_021E4A34
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r5, r0
	bne _021E320C
	bl ov4_021E4A34
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	ldmia sp!, {r3, r4, r5, pc}
_021E320C:
	add r4, r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E31E8
_021E3220:
	mov r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E31C4

	arm_func_start ov4_021E3228
ov4_021E3228: ; 0x021E3228
	stmfd sp!, {r4, r5, r6, lr}
	cmp r0, #0
	mov r5, #0
	beq _021E3248
	bl ov4_021E4A34
	ldr r0, [r0, #0x2f0]
	bic r0, r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021E3248:
	mov r6, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E3284
	mov r4, r6
_021E3260:
	bl ov4_021E4A34
	add r0, r0, r6
	ldrb r0, [r0, #0x2d0]
	add r6, r6, #1
	orr r5, r5, r4, lsl r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r6, r0
	ble _021E3260
_021E3284:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E3228

	arm_func_start ov4_021E328C
ov4_021E328C: ; 0x021E328C
	stmfd sp!, {r4, lr}
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x1ad]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1f8]
	str r1, [r4, #0x1fc]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E328C

	arm_func_start ov4_021E32B4
ov4_021E32B4: ; 0x021E32B4
	stmfd sp!, {r4, lr}
	ldr r1, _021E3320 ; =0x0221A6A8
	mov r4, r0
	ldr r3, [r1, #0]
	cmp r3, #0
	ldrneb r0, [r3]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	str r2, [r3, #8]
	ldr r0, [r1, #0]
	str r2, [r0, #0xc]
	ldr r0, [r1, #0]
	strb r2, [r0, #2]
	bl OS_GetTick
	ldr r2, _021E3320 ; =0x0221A6A8
	cmp r4, #0
	ldr r2, [r2, #0]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldmneia sp!, {r4, pc}
	bl OS_GetTick
	ldr r2, _021E3320 ; =0x0221A6A8
	ldr r2, [r2, #0]
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E3320: .word 0x0221A6A8
	arm_func_end ov4_021E32B4

	arm_func_start ov4_021E3324
ov4_021E3324: ; 0x021E3324
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r0, _021E3744 ; =0x0221A6A8
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrneb r0, [r0]
	cmpne r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x13
	bne _021E3580
	mov r0, #0
	bl ov4_021E3228
	ldr r1, _021E3744 ; =0x0221A6A8
	ldr r5, [r1, #0]
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _021E3458
	ldr r1, [r5, #0xc]
	cmp r1, r0
	bne _021E33E4
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x16]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r1, [r0, #0xd]
	mov r0, #0
	sub r1, r1, #1
	strb r1, [r4, #0x1a4]
	bl ov4_021E1998
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E33E4:
	bl OS_GetTick
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
	mov r0, #0
	str r0, [r5, #8]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E3438
	mov r0, #3
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r1, #2
	str r1, [r0, #0xe8]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	add sp, sp, #8
	str r1, [r4, #0xf0]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3438:
	mov r0, #4
	bl ov4_021E4A44
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl ov4_021E11E4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3458:
	ldrb r4, [r5, #2]
	bl OS_GetTick
	ldr r3, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E3748 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, _021E374C ; =0x00001770
	mul r2, r4, r2
	cmp r1, r2, asr #31
	cmpeq r0, r2
	addlo sp, sp, #8
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r4, #5
	bls _021E34C4
	mov r0, #1
	bl ov4_021E32B4
	bl ov4_021E2600
	mov r0, #1
	bl ov4_021E239C
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E34C4:
	mov r7, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E3564
	ldr r8, _021E3744 ; =0x0221A6A8
	mov r5, #0
	mov r4, #0x11
	mov r6, r7
_021E34E8:
	bl ov4_021E4A34
	add r0, r0, r7
	ldr r1, [r8]
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r1, #8]
	tst r1, r6, lsl r0
	bne _021E3550
	bl ov4_021E4A34
	mov sl, r0
	bl ov4_021E4A34
	mov sb, r0
	bl ov4_021E4A34
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r0, r7, lsl #1
	add r1, sl, r7, lsl #2
	add r2, sb, r7, lsl #2
	ldrh r3, [r0, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r4
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3550:
	add r7, r7, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r7, r0
	ble _021E34E8
_021E3564:
	ldr r0, _021E3744 ; =0x0221A6A8
	add sp, sp, #8
	ldr r1, [r0, #0]
	ldrb r0, [r1, #2]
	add r0, r0, #1
	strb r0, [r1, #2]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3580:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	beq _021E35A4
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #3
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E35A4:
	ldr r0, _021E3744 ; =0x0221A6A8
	ldr r4, [r0, #0]
	bl ov4_021E4A34
	ldrb r1, [r4, #1]
	ldrb r2, [r0, #0xd]
	sub r0, r1, #1
	cmp r2, r0
	addlt sp, sp, #8
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _021E3618
	ldr r0, _021E3744 ; =0x0221A6A8
	ldr r4, [r0, #0]
	bl OS_GetTick
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #0x14]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E3748 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, [r4, #4]
	cmp r1, #0
	cmpeq r0, r2
	bhs _021E3670
_021E3618:
	ldrb r0, [r4, #2]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _021E3744 ; =0x0221A6A8
	ldr r4, [r0, #0]
	bl OS_GetTick
	ldr r3, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E3748 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ull_div
	ldr r2, [r4, #4]
	cmp r1, #0
	cmpeq r0, r2, lsr #2
	addlo sp, sp, #8
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3670:
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	cmp r0, #0
	beq _021E369C
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	bl ov4_021E1584
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E369C:
	mov r0, #0x13
	bl ov4_021E4A44
	mov r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E3720
	mov r6, #0
	mov r5, #0x11
_021E36C0:
	bl ov4_021E4A34
	mov r8, r0
	bl ov4_021E4A34
	mov r7, r0
	bl ov4_021E4A34
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r0, r4, lsl #1
	add r1, r8, r4, lsl #2
	add r2, r7, r4, lsl #2
	ldrh r3, [r0, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r5
	bl ov4_021DF7DC
	bl ov4_021E1008
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r4, r4, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E36C0
_021E3720:
	ldr r0, _021E3744 ; =0x0221A6A8
	ldr r4, [r0, #0]
	bl OS_GetTick
	str r0, [r4, #0x18]
	str r1, [r4, #0x1c]
	mov r0, #1
	strb r0, [r4, #2]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021E3744: .word 0x0221A6A8
_021E3748: .word 0x000082EA
_021E374C: .word 0x00001770
	arm_func_end ov4_021E3324

	arm_func_start ov4_021E3750
ov4_021E3750: ; 0x021E3750
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _021E37AC
_021E376C: ; jump table
	b _021E37AC ; case 0
	b _021E3780 ; case 1
	b _021E378C ; case 2
	b _021E3798 ; case 3
	b _021E37A4 ; case 4
_021E3780:
	mov r0, #9
	sub r2, r0, #0xa
	b _021E37AC
_021E378C:
	mov r0, #9
	sub r2, r0, #0xb
	b _021E37AC
_021E3798:
	mov r0, #6
	sub r2, r0, #0x10
	b _021E37AC
_021E37A4:
	mov r0, #6
	sub r2, r0, #0x1a
_021E37AC:
	ldr r1, _021E37C0 ; =0xFFFEC398
	add r1, r2, r1
	bl ov4_021DE3BC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E37C0: .word 0xFFFEC398
	arm_func_end ov4_021E3750

	arm_func_start ov4_021E37C4
ov4_021E37C4: ; 0x021E37C4
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #6
	addls pc, pc, r4, lsl #2
	b _021E3840
_021E37E0: ; jump table
	b _021E3840 ; case 0
	b _021E37FC ; case 1
	b _021E3808 ; case 2
	b _021E3814 ; case 3
	b _021E3820 ; case 4
	b _021E382C ; case 5
	b _021E3838 ; case 6
_021E37FC:
	mov r0, #6
	sub r2, r0, #0x38
	b _021E3840
_021E3808:
	mov r0, #6
	sub r2, r0, #0x24
	b _021E3840
_021E3814:
	mov r0, #6
	sub r2, r0, #0x1a
	b _021E3840
_021E3820:
	mov r0, #6
	sub r2, r0, #0x2e
	b _021E3840
_021E382C:
	mov r0, #9
	sub r2, r0, #0xa
	b _021E3840
_021E3838:
	mov r0, #9
	sub r2, r0, #0xb
_021E3840:
	ldr r1, _021E3854 ; =0xFFFEB3F8
	add r1, r2, r1
	bl ov4_021DE3BC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E3854: .word 0xFFFEB3F8
	arm_func_end ov4_021E37C4

	arm_func_start ov4_021E3858
ov4_021E3858: ; 0x021E3858
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _021E38C4
_021E3874: ; jump table
	b _021E38C4 ; case 0
	b _021E388C ; case 1
	b _021E3898 ; case 2
	b _021E38A4 ; case 3
	b _021E38B0 ; case 4
	b _021E38BC ; case 5
_021E388C:
	mov r5, #6
	sub r4, r5, #0x38
	b _021E38C4
_021E3898:
	mov r5, #6
	sub r4, r5, #0x42
	b _021E38C4
_021E38A4:
	mov r5, #6
	sub r4, r5, #0x24
	b _021E38C4
_021E38B0:
	mov r5, #6
	sub r4, r5, #0x56
	b _021E38C4
_021E38BC:
	mov r5, #6
	sub r4, r5, #0x1a
_021E38C4:
	bl ov4_021D9A40
	cmp r0, #2
	beq _021E38E4
	cmp r0, #4
	beq _021E38F4
	cmp r0, #5
	beq _021E3908
	b _021E391C
_021E38E4:
	mov r0, r5
	sub r1, r4, #0xfa00
	bl ov4_021DA898
	b _021E392C
_021E38F4:
	ldr r1, _021E3934 ; =0xFFFEDEF0
	mov r0, r5
	add r1, r4, r1
	bl ov4_021DB710
	b _021E392C
_021E3908:
	ldr r1, _021E3938 ; =0xFFFEB7E0
	mov r0, r5
	add r1, r4, r1
	bl ov4_021DE3BC
	b _021E392C
_021E391C:
	ldr r1, _021E393C ; =0xFFFE90D0
	mov r0, r5
	add r1, r4, r1
	bl ov4_021D7724
_021E392C:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E3934: .word 0xFFFEDEF0
_021E3938: .word 0xFFFEB7E0
_021E393C: .word 0xFFFE90D0
	arm_func_end ov4_021E3858

	arm_func_start ov4_021E3940
ov4_021E3940: ; 0x021E3940
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #1
	beq _021E3970
	cmp r4, #2
	beq _021E397C
	cmp r4, #3
	moveq r0, #6
	subeq r2, r0, #0x24
	b _021E3984
_021E3970:
	mov r0, #9
	sub r2, r0, #0xa
	b _021E3984
_021E397C:
	mov r0, #6
	sub r2, r0, #0x38
_021E3984:
	ldr r1, _021E3998 ; =0xFFFEB010
	add r1, r2, r1
	bl ov4_021DE3BC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E3998: .word 0xFFFEB010
	arm_func_end ov4_021E3940

	arm_func_start ov4_021E399C
ov4_021E399C: ; 0x021E399C
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #1
	beq _021E39C0
	cmp r4, #2
	beq _021E39C8
	b _021E39D0
_021E39C0:
	mov r0, #1
	ldmia sp!, {r4, pc}
_021E39C8:
	mov r0, #2
	ldmia sp!, {r4, pc}
_021E39D0:
	movs r0, #6
	beq _021E39E0
	ldr r1, _021E39E8 ; =0xFFFEB007
	bl ov4_021DE3BC
_021E39E0:
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E39E8: .word 0xFFFEB007
	arm_func_end ov4_021E399C

	arm_func_start ov4_021E39EC
ov4_021E39EC: ; 0x021E39EC
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #7
	addls pc, pc, r4, lsl #2
	b _021E3A70
_021E3A08: ; jump table
	b _021E3A70 ; case 0
	b _021E3A28 ; case 1
	b _021E3A34 ; case 2
	b _021E3A44 ; case 3
	b _021E3A50 ; case 4
	b _021E3A34 ; case 5
	b _021E3A5C ; case 6
	b _021E3A68 ; case 7
_021E3A28:
	mov r0, #9
	sub r2, r0, #0xa
	b _021E3A70
_021E3A34:
	mov r0, #0
	mov r2, r0
	mov r4, r0
	b _021E3A70
_021E3A44:
	mov r0, #6
	sub r2, r0, #0x10
	b _021E3A70
_021E3A50:
	mov r0, #6
	sub r2, r0, #0x24
	b _021E3A70
_021E3A5C:
	mov r0, #6
	sub r2, r0, #0x4c
	b _021E3A70
_021E3A68:
	mov r0, #6
	sub r2, r0, #0x56
_021E3A70:
	cmp r0, #0
	beq _021E3A84
	ldr r1, _021E3A8C ; =0xFFFEAC28
	add r1, r2, r1
	bl ov4_021DE3BC
_021E3A84:
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E3A8C: .word 0xFFFEAC28
	arm_func_end ov4_021E39EC

	arm_func_start ov4_021E3A90
ov4_021E3A90: ; 0x021E3A90
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _021E3E98 ; =0x0221A6A8
	mov r6, r0
	ldr r0, [r3, #0x18]
	mov r5, r1
	add r0, r0, #1
	str r0, [r3, #0x18]
	mov r4, r2
	bl ov4_021E4A34
	ldr r1, [r0, #0x178]
	ldr r0, [r0, #0x174]
	cmp r1, #0
	cmpeq r0, #0
	beq _021E3B08
	sub r0, r5, #4
	cmp r0, #1
	bhi _021E3AE8
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x174]
	str r1, [r0, #0x178]
	b _021E3B08
_021E3AE8:
	bl ov4_021E4A34
	mov r7, r0
	bl OS_GetTick
	ldr r2, _021E3E9C ; =0x00EFB5F7
	adds r0, r0, r2
	str r0, [r7, #0x174]
	adc r0, r1, #0
	str r0, [r7, #0x178]
_021E3B08:
	cmp r5, #0
	beq _021E3B20
	cmp r5, #4
	beq _021E3B2C
	cmp r5, #5
	b _021E3E84
_021E3B20:
	mov r0, r4
	bl ov4_021E3EA4
	b _021E3E84
_021E3B2C:
	mov r0, r6
	mov r5, #0
	bl ov4_021FEEA0
	cmp r0, #0
	ble _021E3B80
_021E3B40:
	mov r0, r6
	mov r1, r5
	bl ov4_021FEE90
	mov r4, r0
	bl ov4_021E30E8
	cmp r0, #0
	bne _021E3B6C
	mov r0, r6
	mov r1, r4
	bl ov4_021FEDE4
	sub r5, r5, #1
_021E3B6C:
	mov r0, r6
	add r5, r5, #1
	bl ov4_021FEEA0
	cmp r5, r0
	blt _021E3B40
_021E3B80:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #2
	beq _021E3BA4
	cmp r0, #3
	beq _021E3C90
	cmp r0, #5
	beq _021E3D00
	b _021E3E84
_021E3BA4:
	mov r0, r6
	mov r5, #0
	bl ov4_021FEEA0
	cmp r0, #0
	ble _021E3C34
_021E3BB8:
	mov r0, r6
	mov r1, r5
	bl ov4_021FEE90
	mov r4, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _021E3C20
	bl ov4_021E4A34
	mov r7, r0
	mov r0, r4
	bl ov4_021FE350
	ldr r1, [r7, #0x1c]
	cmp r1, r0
	bne _021E3C20
	bl ov4_021E4A34
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _021E3C20
	bl ov4_021E4A34
	mov r7, r0
	mov r0, r4
	bl ov4_021FE358
	ldrh r1, [r7, #0x1a]
	cmp r1, r0
	beq _021E3C34
_021E3C20:
	mov r0, r6
	add r5, r5, #1
	bl ov4_021FEEA0
	cmp r5, r0
	blt _021E3BB8
_021E3C34:
	mov r0, r6
	bl ov4_021FEEA0
	cmp r5, r0
	bge _021E3C6C
	mov r0, #3
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x204]
	bl ov4_021E4A34
	ldr r0, [r0, #0x204]
	bl ov4_021DF1D0
	bl ov4_021E37C4
	b _021E3E84
_021E3C6C:
	bl ov4_021E4A34
	mov r1, #2
	str r1, [r0, #0xe8]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	b _021E3E84
_021E3C90:
	mov r0, #1
	bl ov4_021E3EA8
	bl ov4_021E4080
	mov r0, r6
	bl ov4_021FEEA0
	cmp r0, #0
	beq _021E3CDC
	mov r0, #0
	mov r1, r0
	bl ov4_021E1034
	bl ov4_021E1008
	cmp r0, #0
	bne _021E3E84
	mov r0, #4
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0xe8]
	b _021E3E84
_021E3CDC:
	bl ov4_021E4A34
	mov r1, #2
	str r1, [r0, #0xe8]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	b _021E3E84
_021E3D00:
	mov r0, r6
	bl ov4_021FEEA0
	cmp r0, #0
	beq _021E3D78
	mov r4, #0
_021E3D14:
	mov r0, r6
	mov r1, r4
	bl ov4_021FEE90
	mov r5, r0
	bl ov4_021FE350
	mov r7, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x1b8]
	cmp r7, r0
	bne _021E3D5C
	mov r0, r5
	bl ov4_021FE358
	mov r7, r0
	bl ov4_021E4A34
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb4]
	cmp r7, r0
	beq _021E3D78
_021E3D5C:
	mov r0, r6
	mov r1, r5
	bl ov4_021FEDE4
	mov r0, r6
	bl ov4_021FEEA0
	cmp r0, #0
	bne _021E3D14
_021E3D78:
	mov r0, r6
	bl ov4_021FEEA0
	cmp r0, #0
	beq _021E3E64
	mov r0, r6
	mov r1, #0
	bl ov4_021FEE90
	ldr r1, _021E3EA0 ; =0x0221752C
	mov r2, #0
	bl ov4_021FE28C
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E3E38
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	cmp r4, r0
	bne _021E3E38
	mov r0, #0
	bl ov4_021E3EA8
	cmp r0, #0
	beq _021E3DF8
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E3E38
	bl ov4_021E18B4
	bl ov4_021E1008
	cmp r0, #0
	bne _021E3E84
	b _021E3E38
_021E3DF8:
	bl ov4_021E4A34
	ldr r0, [r0, #0xf4]
	bl ov4_021E1584
	bl ov4_021E1008
	cmp r0, #0
	bne _021E3E84
	mov r0, #4
	bl ov4_021E4A44
	bl ov4_021E4A34
	mov r1, r0
	mov r0, #0
	ldr r2, [r1, #0xf4]
	mov r1, r0
	bl ov4_021E11E4
	bl ov4_021E1008
	b _021E3E84
_021E3E38:
	mov r0, #6
	bl ov4_021E4A44
	mov r0, r6
	mov r1, #0
	bl ov4_021FEE90
	mov r2, r0
	mov r0, #0
	mov r1, r0
	bl ov4_021DF434
	bl ov4_021E3940
	b _021E3E84
_021E3E64:
	bl ov4_021E4A34
	mov r1, #2
	str r1, [r0, #0xe8]
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
_021E3E84:
	ldr r0, _021E3E98 ; =0x0221A6A8
	ldr r1, [r0, #0x18]
	sub r1, r1, #1
	str r1, [r0, #0x18]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E3E98: .word 0x0221A6A8
_021E3E9C: .word 0x00EFB5F7
_021E3EA0: .word 0x0221752C
	arm_func_end ov4_021E3A90

	arm_func_start ov4_021E3EA4
ov4_021E3EA4: ; 0x021E3EA4
	bx lr
	arm_func_end ov4_021E3EA4

	arm_func_start ov4_021E3EA8
ov4_021E3EA8: ; 0x021E3EA8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sl, r0
	mov r7, r4
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	cmp r0, #0
	ble _021E4018
_021E3ECC:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	mov r1, r7
	bl ov4_021FEE90
	mov sb, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E3F68
	ldr r1, _021E4074 ; =0x0221752C
	mov r0, sb
	mov r2, #0
	bl ov4_021FE28C
	mov r6, r0
	mov r5, #0
	mov r8, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E3F60
_021E3F1C:
	bl ov4_021E4A34
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r6, r0
	bne _021E3F4C
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	mov r1, sb
	bl ov4_021FEDE4
	sub r7, r7, #1
	mov r5, #1
	b _021E3F60
_021E3F4C:
	add r8, r8, #1
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	cmp r8, r0
	ble _021E3F1C
_021E3F60:
	cmp r5, #0
	bne _021E4000
_021E3F68:
	bl ov4_021E4A34
	ldr r0, [r0, #0x474]
	cmp r0, #0
	beq _021E3FE8
	bl ov4_021E4A34
	mov r5, r0
	bl ov4_021E4A34
	ldr r1, [r0, #0x478]
	ldr r2, [r5, #0x474]
	mov r0, r7
	blx r2
	mov r5, r0
	cmp r5, #0
	ble _021E3FCC
	ldr r0, _021E4078 ; =0x007FFFFF
	cmp r5, r0
	movgt r5, r0
	mov r0, #0x100
	bl ov4_021D8ABC
	mov r2, r0
	ldr r1, _021E407C ; =0x02217558
	mov r0, sb
	orr r2, r2, r5, lsl #8
	bl ov4_021FE1E8
	b _021E4000
_021E3FCC:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	mov r1, sb
	bl ov4_021FEDE4
	sub r7, r7, #1
	mov r4, #1
	b _021E4000
_021E3FE8:
	mov r0, #0x80
	bl ov4_021D8ABC
	mov r2, r0
	ldr r1, _021E407C ; =0x02217558
	mov r0, sb
	bl ov4_021FE1E8
_021E4000:
	add r7, r7, #1
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	cmp r7, r0
	blt _021E3ECC
_021E4018:
	cmp sl, #0
	beq _021E404C
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	cmp r0, #0
	beq _021E404C
	bl ov4_021E4A34
	mov r1, #0
	ldr r0, [r0, #0xe4]
	ldr r2, _021E407C ; =0x02217558
	mov r3, r1
	bl ov4_021FEEB0
_021E404C:
	cmp r4, #0
	beq _021E406C
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E406C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021E4074: .word 0x0221752C
_021E4078: .word 0x007FFFFF
_021E407C: .word 0x02217558
	arm_func_end ov4_021E3EA8

	arm_func_start ov4_021E4080
ov4_021E4080: ; 0x021E4080
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov r7, #0
	mov r8, r7
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	cmp r0, #1
	addle sp, sp, #0x18
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov sb, r7
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	cmp r0, #0
	ble _021E4110
	ldr r4, _021E41E8 ; =0x02215880
	ldr r6, _021E41EC ; =0x02217558
	mvn r5, #0
_021E40CC:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	mov r1, sb
	bl ov4_021FEE90
	mov r1, r6
	mov r2, r5
	bl ov4_021FE28C
	cmp r0, r7
	movgt r7, r0
	ldr r0, [r4, sb, lsl #2]
	add sb, sb, #1
	add r8, r8, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	cmp sb, r0
	blt _021E40CC
_021E4110:
	mov r0, #0x64
	bl ov4_021D8ABC
	mov r6, r0
	mov sb, #0
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	cmp r0, #0
	ble _021E41A0
	ldr r4, _021E41E8 ; =0x02215880
	add r5, sp, #0
	mov fp, #0x64
_021E4140:
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	sub r0, r0, #1
	cmp sb, r0
	beq _021E41A0
	ldr r2, [r4, sb, lsl #2]
	cmp sb, #0
	addgt r0, r5, sb, lsl #2
	ldrgt sl, [r0, #-4]
	mul r0, r2, fp
	movle sl, #0
	mov r1, r8
	bl _s32_div_f
	add r0, r0, sl
	str r0, [r5, sb, lsl #2]
	cmp r6, r0
	blo _021E41A0
	add sb, sb, #1
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	bl ov4_021FEEA0
	cmp sb, r0
	blt _021E4140
_021E41A0:
	mvn r0, #0x80000000
	cmp r7, r0
	addlt r7, r7, #1
	bl ov4_021E4A34
	ldr r0, [r0, #0xe4]
	mov r1, sb
	bl ov4_021FEE90
	ldr r1, _021E41EC ; =0x02217558
	mov r2, r7
	bl ov4_021FE1E8
	bl ov4_021E4A34
	mov r1, #0
	ldr r0, [r0, #0xe4]
	ldr r2, _021E41EC ; =0x02217558
	mov r3, r1
	bl ov4_021FEEB0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021E41E8: .word 0x02215880
_021E41EC: .word 0x02217558
	arm_func_end ov4_021E4080

	arm_func_start ov4_021E41F0
ov4_021E41F0: ; 0x021E41F0
	stmfd sp!, {r4, lr}
	mov r4, r1
	cmp r0, #0x32
	bgt _021E4224
	bge _021E426C
	cmp r0, #0xa
	bgt _021E42C8
	cmp r0, #8
	blt _021E42C8
	beq _021E4244
	cmp r0, #0xa
	beq _021E4258
	b _021E42C8
_021E4224:
	sub r1, r0, #0x33
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _021E42C8
_021E4234: ; jump table
	b _021E4280 ; case 0
	b _021E4294 ; case 1
	b _021E42A8 ; case 2
	b _021E42B8 ; case 3
_021E4244:
	bl ov4_021E4A34
	ldrb r1, [r0, #0x14]
	mov r0, r4
	bl ov4_021FC2A0
	ldmia sp!, {r4, pc}
_021E4258:
	bl ov4_021E4A34
	ldrb r1, [r0, #0x16]
	mov r0, r4
	bl ov4_021FC2A0
	ldmia sp!, {r4, pc}
_021E426C:
	bl ov4_021E4A34
	ldr r1, [r0, #0x200]
	mov r0, r4
	bl ov4_021FC2A0
	ldmia sp!, {r4, pc}
_021E4280:
	bl ov4_021E4A34
	ldrb r1, [r0, #0x15]
	mov r0, r4
	bl ov4_021FC2A0
	ldmia sp!, {r4, pc}
_021E4294:
	bl ov4_021E4A34
	ldr r1, [r0, #0x20]
	mov r0, r4
	bl ov4_021FC2A0
	ldmia sp!, {r4, pc}
_021E42A8:
	mov r0, r4
	mov r1, #3
	bl ov4_021FC2A0
	ldmia sp!, {r4, pc}
_021E42B8:
	mov r0, r4
	mov r1, #1
	bl ov4_021FC2A0
	ldmia sp!, {r4, pc}
_021E42C8:
	subs r1, r0, #0x64
	ldmmiia sp!, {r4, pc}
	cmp r1, #0x9a
	ldmgeia sp!, {r4, pc}
	mov r0, #0xc
	mul r2, r1, r0
	ldr r0, _021E432C ; =0x0221A6C8
	ldrb r0, [r0, r2]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _021E4330 ; =0x0221A6C9
	ldrb r0, [r0, r2]
	cmp r0, #0
	beq _021E4314
	ldr r1, _021E4334 ; =0x0221A6D0
	mov r0, r4
	ldr r1, [r1, r2]
	bl ov4_021FC2D4
	ldmia sp!, {r4, pc}
_021E4314:
	ldr r1, _021E4334 ; =0x0221A6D0
	mov r0, r4
	ldr r1, [r1, r2]
	ldr r1, [r1, #0]
	bl ov4_021FC2A0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E432C: .word 0x0221A6C8
_021E4330: .word 0x0221A6C9
_021E4334: .word 0x0221A6D0
	arm_func_end ov4_021E41F0

	arm_func_start ov4_021E4338
ov4_021E4338: ; 0x021E4338
	bx lr
	arm_func_end ov4_021E4338

	arm_func_start ov4_021E433C
ov4_021E433C: ; 0x021E433C
	bx lr
	arm_func_end ov4_021E433C

	arm_func_start ov4_021E4340
ov4_021E4340: ; 0x021E4340
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	cmp r0, #0
	beq _021E435C
	cmp r0, #1
	cmpne r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021E435C:
	mov r0, r6
	mov r1, #8
	bl ov4_021FC274
	mov r0, r6
	mov r1, #0xa
	bl ov4_021FC274
	mov r0, r6
	mov r1, #0x32
	bl ov4_021FC274
	mov r0, r6
	mov r1, #0x33
	bl ov4_021FC274
	mov r0, r6
	mov r1, #0x34
	bl ov4_021FC274
	mov r0, r6
	mov r1, #0x35
	bl ov4_021FC274
	mov r0, r6
	mov r1, #0x36
	bl ov4_021FC274
	ldr r5, _021E43E0 ; =0x0221A6C8
	mov r4, #0
_021E43B8:
	ldrb r1, [r5]
	cmp r1, #0
	beq _021E43CC
	mov r0, r6
	bl ov4_021FC274
_021E43CC:
	add r4, r4, #1
	cmp r4, #0x9a
	add r5, r5, #0xc
	blt _021E43B8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E43E0: .word 0x0221A6C8
	arm_func_end ov4_021E4340

	arm_func_start ov4_021E43E4
ov4_021E43E4: ; 0x021E43E4
	mov r0, #0
	bx lr
	arm_func_end ov4_021E43E4

	arm_func_start ov4_021E43EC
ov4_021E43EC: ; 0x021E43EC
	ldr ip, _021E43F4 ; =ov4_021E3858
	bx ip
	; .align 2, 0
_021E43F4: .word ov4_021E3858
	arm_func_end ov4_021E43EC

	arm_func_start ov4_021E43F8
ov4_021E43F8: ; 0x021E43F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_021E4A34
	str r5, [r0, #0x1c]
	bl ov4_021E4A34
	strh r4, [r0, #0x1a]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E43F8

	arm_func_start ov4_021E4418
ov4_021E4418: ; 0x021E4418
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E443C
	mov r0, #6
	bl ov4_021E4A44
	b _021E445C
_021E443C:
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	beq _021E445C
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	ldmneia sp!, {r4, pc}
_021E445C:
	bl ov4_021E4A34
	ldr r0, [r0, #0x180]
	cmp r4, r0
	bne _021E4480
	bl ov4_021E4A34
	ldrb r1, [r0, #0x17c]
	add r1, r1, #1
	strb r1, [r0, #0x17c]
	b _021E4494
_021E4480:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17c]
	bl ov4_021E4A34
	str r4, [r0, #0x180]
_021E4494:
	bl ov4_021E4A34
	mov r2, #0
	str r2, [r0, #0x184]
	str r2, [r0, #0x188]
	mov r1, r4
	mov r0, #1
	bl ov4_021DF434
	bl ov4_021E3940
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl ov4_021E4A34
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E4418

	arm_func_start ov4_021E44CC
ov4_021E44CC: ; 0x021E44CC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x9c
	mov sl, r0
	mov sb, r1
	mov r8, #0
	bl ov4_021D9A40
	cmp r0, #5
	beq _021E4520
	bl ov4_021D9A40
	cmp r0, #6
	addne sp, sp, #0x9c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _021E4520
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	addne sp, sp, #0x9c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E4520:
	cmp sb, #0x14
	addlo sp, sp, #0x9c
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, _021E45D4 ; =0x022175D4
	add r4, sp, #0x1c
	add r7, sp, #8
	mov r6, #0x14
	mov fp, #4
_021E4540:
	mov r0, sl
	mov r1, r7
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r5
	mov r2, fp
	bl strncmp
	cmp r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #3
	addne sp, sp, #0x9c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [sp, #0x11]
	mov r1, r4
	add r0, sl, #0x14
	bl MI_CpuCopy8
	str r4, [sp]
	ldrb r0, [sp, #0x11]
	mov r0, r0, asr #2
	str r0, [sp, #4]
	ldrb r0, [sp, #0x10]
	ldrh r3, [sp, #0x12]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl ov4_021DFC18
	cmp r0, #0
	addeq sp, sp, #0x9c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [sp, #0x11]
	add r0, r0, #0x14
	add r8, r8, r0
	add r0, r8, #0x14
	cmp r0, sb
	bls _021E4540
	add sp, sp, #0x9c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021E45D4: .word 0x022175D4
	arm_func_end ov4_021E44CC

	arm_func_start ov4_021E45D8
ov4_021E45D8: ; 0x021E45D8
	bx lr
	arm_func_end ov4_021E45D8

	arm_func_start ov4_021E45DC
ov4_021E45DC: ; 0x021E45DC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	mov r6, r2
	mov r4, r3
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	beq _021E4614
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, pc}
_021E4614:
	cmp r4, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	cmp r5, #0
	bne _021E4810
	mov r0, #0
	str r0, [r4, #8]
	bl ov4_021E4A34
	ldrb r1, [r0, #0x14]
	add r1, r1, #1
	strb r1, [r0, #0x14]
	bl ov4_021E4A34
	ldrb r1, [r4]
	ldrb r5, [r0, #0x14]
	cmp r1, #0
	beq _021E47A8
	bl ov4_021E4A34
	ldr r1, [r6, #4]
	add r0, r0, r5, lsl #2
	str r1, [r0, #0x210]
	ldrh r4, [r6, #2]
	bl ov4_021E4A34
	mov r2, r4, asr #8
	mov r1, r4, lsl #8
	add r0, r0, r5, lsl #1
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	add r0, r0, #0x200
	strh r1, [r0, #0x90]
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17c]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x180]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x184]
	str r1, [r0, #0x188]
	bl ov4_021E4A34
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	bne _021E46D0
	mov r0, #0xc
	bl ov4_021E4A44
	b _021E46D8
_021E46D0:
	mov r0, #7
	bl ov4_021E4A44
_021E46D8:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0xc]
	bl ov4_021E4A34
	ldr r3, [r0, #0x200]
	ldr r2, _021E49AC ; =0x022174E4
	add r0, sp, #0x10
	mov r1, #0xc
	bl OS_SNPrintf
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	mov r6, r0
	bl ov4_021E4A34
	add r1, r6, r5, lsl #2
	mov r2, r0
	ldr r0, [r1, #0x210]
	add r1, r2, r5, lsl #1
	add r1, r1, #0x200
	ldrh r1, [r1, #0x90]
	mov r2, #0
	bl ov4_021FABFC
	mov r6, r0
	bl ov4_021E4A34
	mvn r1, #0
	str r1, [sp]
	ldr r3, _021E49B0 ; =0x00001388
	mov r1, #0
	str r3, [sp, #4]
	ldr r0, [r0, #8]
	mov r2, r6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #4]
	add r3, sp, #0x10
	ldr r0, [r0, #0]
	bl ov4_021F84F0
	cmp r0, #1
	bne _021E4780
	bl ov4_021E39EC
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
_021E4780:
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	bl ov4_021E4A34
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov4_021E15D8
	add sp, sp, #0x1c
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021E47A8:
	cmp r6, #0
	beq _021E47EC
	sub r5, r5, #1
	bl ov4_021E4A34
	ldr r1, [r6, #4]
	add r0, r0, r5, lsl #2
	str r1, [r0, #0x210]
	ldrh r4, [r6, #2]
	bl ov4_021E4A34
	mov r2, r4, asr #8
	mov r1, r4, lsl #8
	add r0, r0, r5, lsl #1
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	add r0, r0, #0x200
	strh r1, [r0, #0x90]
_021E47EC:
	bl ov4_021E4A34
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x18c]
	mov r0, #7
	str r1, [r4, #0x190]
	bl ov4_021E4A44
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
_021E4810:
	ldr r0, [r4, #8]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, r5
	bl ov4_021E399C
	mov r6, r0
	cmp r6, #2
	cmpne r6, #1
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldrb r0, [r4]
	cmp r0, #0
	bne _021E48C8
	cmp r6, #1
	beq _021E4864
	cmp r6, #2
	bne _021E48A4
	ldrb r0, [r4, #1]
	cmp r0, #1
	blo _021E48A4
_021E4864:
	mov r0, #0
	str r0, [r4, #8]
	bl ov4_021E49B4
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov4_021E17F4
	add sp, sp, #0x1c
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021E48A4:
	ldrb r1, [r4, #1]
	mov r0, r4
	add r1, r1, #1
	strb r1, [r4, #1]
	bl ov4_021DF720
	bl ov4_021E3940
	add sp, sp, #0x1c
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021E48C8:
	bl ov4_021E4A34
	mov r5, r0
	bl OS_GetTick
	str r0, [r5, #0x184]
	str r1, [r5, #0x188]
	cmp r6, #1
	beq _021E4904
	cmp r6, #2
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x17c]
	cmp r0, #1
	addlo sp, sp, #0x1c
	ldmloia sp!, {r3, r4, r5, r6, pc}
_021E4904:
	mov r0, #0
	str r0, [r4, #8]
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E492C
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E4944
_021E492C:
	mov r0, #1
	bl ov4_021E49B4
	cmp r0, #0
	bne _021E4958
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
_021E4944:
	mov r0, #0
	bl ov4_021E49B4
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_021E4958:
	bl ov4_021E4A34
	mov r1, #0
	strb r1, [r0, #0x17c]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x180]
	bl ov4_021E4A34
	mov r1, #0
	str r1, [r0, #0x184]
	str r1, [r0, #0x188]
	bl ov4_021E4A34
	mov r4, r0
	bl ov4_021E4A34
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov4_021E15D8
	cmp r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021E49AC: .word 0x022174E4
_021E49B0: .word 0x00001388
	arm_func_end ov4_021E45DC

	arm_func_start ov4_021E49B4
ov4_021E49B4: ; 0x021E49B4
	stmfd sp!, {r3, lr}
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E49E4
	bl ov4_021E4A34
	ldrb r1, [r0, #0x17d]
	add r1, r1, #1
	strb r1, [r0, #0x17d]
_021E49E4:
	bl ov4_021E4A34
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E4A04
	bl ov4_021E4A34
	ldrb r0, [r0, #0x17d]
	cmp r0, #5
	blo _021E4A18
_021E4A04:
	ldr r1, _021E4A20 ; =0xFFFEAE6C
	mov r0, #6
	bl ov4_021DE3BC
	mov r0, #0
	ldmia sp!, {r3, pc}
_021E4A18:
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E4A20: .word 0xFFFEAE6C
	arm_func_end ov4_021E49B4

	arm_func_start ov4_021E4A24
ov4_021E4A24: ; 0x021E4A24
	ldr r1, _021E4A30 ; =0x0221A6A8
	str r0, [r1, #4]
	bx lr
	; .align 2, 0
_021E4A30: .word 0x0221A6A8
	arm_func_end ov4_021E4A24

	arm_func_start ov4_021E4A34
ov4_021E4A34: ; 0x021E4A34
	ldr r0, _021E4A40 ; =0x0221A6A8
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
_021E4A40: .word 0x0221A6A8
	arm_func_end ov4_021E4A34

	arm_func_start ov4_021E4A44
ov4_021E4A44: ; 0x021E4A44
	ldr r1, _021E4A54 ; =0x0221A6A8
	ldr r1, [r1, #4]
	str r0, [r1, #0x1a0]
	bx lr
	; .align 2, 0
_021E4A54: .word 0x0221A6A8
	arm_func_end ov4_021E4A44

	.rodata


	.global Unk_ov4_02215880
Unk_ov4_02215880: ; 0x02215880
	.incbin "incbin/overlay4_rodata.bin", 0x18, 0x18



	.data


	.global Unk_ov4_022174D8
Unk_ov4_022174D8: ; 0x022174D8
	.incbin "incbin/overlay4_data.bin", 0x1658, 0x1660 - 0x1658

	.global Unk_ov4_022174E0
Unk_ov4_022174E0: ; 0x022174E0
	.incbin "incbin/overlay4_data.bin", 0x1660, 0x1664 - 0x1660

	.global Unk_ov4_022174E4
Unk_ov4_022174E4: ; 0x022174E4
	.incbin "incbin/overlay4_data.bin", 0x1664, 0x1668 - 0x1664

	.global Unk_ov4_022174E8
Unk_ov4_022174E8: ; 0x022174E8
	.incbin "incbin/overlay4_data.bin", 0x1668, 0x166C - 0x1668

	.global Unk_ov4_022174EC
Unk_ov4_022174EC: ; 0x022174EC
	.incbin "incbin/overlay4_data.bin", 0x166C, 0x1670 - 0x166C

	.global Unk_ov4_022174F0
Unk_ov4_022174F0: ; 0x022174F0
	.incbin "incbin/overlay4_data.bin", 0x1670, 0x1674 - 0x1670

	.global Unk_ov4_022174F4
Unk_ov4_022174F4: ; 0x022174F4
	.incbin "incbin/overlay4_data.bin", 0x1674, 0x1680 - 0x1674

	.global Unk_ov4_02217500
Unk_ov4_02217500: ; 0x02217500
	.incbin "incbin/overlay4_data.bin", 0x1680, 0x168C - 0x1680

	.global Unk_ov4_0221750C
Unk_ov4_0221750C: ; 0x0221750C
	.incbin "incbin/overlay4_data.bin", 0x168C, 0x16A4 - 0x168C

	.global Unk_ov4_02217524
Unk_ov4_02217524: ; 0x02217524
	.incbin "incbin/overlay4_data.bin", 0x16A4, 0x16A8 - 0x16A4

	.global Unk_ov4_02217528
Unk_ov4_02217528: ; 0x02217528
	.incbin "incbin/overlay4_data.bin", 0x16A8, 0x16AC - 0x16A8

	.global Unk_ov4_0221752C
Unk_ov4_0221752C: ; 0x0221752C
	.incbin "incbin/overlay4_data.bin", 0x16AC, 0x16B4 - 0x16AC

	.global Unk_ov4_02217534
Unk_ov4_02217534: ; 0x02217534
	.incbin "incbin/overlay4_data.bin", 0x16B4, 0x16C0 - 0x16B4

	.global Unk_ov4_02217540
Unk_ov4_02217540: ; 0x02217540
	.incbin "incbin/overlay4_data.bin", 0x16C0, 0x16CC - 0x16C0

	.global Unk_ov4_0221754C
Unk_ov4_0221754C: ; 0x0221754C
	.incbin "incbin/overlay4_data.bin", 0x16CC, 0x16D8 - 0x16CC

	.global Unk_ov4_02217558
Unk_ov4_02217558: ; 0x02217558
	.incbin "incbin/overlay4_data.bin", 0x16D8, 0x16E4 - 0x16D8

	.global Unk_ov4_02217564
Unk_ov4_02217564: ; 0x02217564
	.incbin "incbin/overlay4_data.bin", 0x16E4, 0x16F0 - 0x16E4

	.global Unk_ov4_02217570
Unk_ov4_02217570: ; 0x02217570
	.incbin "incbin/overlay4_data.bin", 0x16F0, 0x16F8 - 0x16F0

	.global Unk_ov4_02217578
Unk_ov4_02217578: ; 0x02217578
	.incbin "incbin/overlay4_data.bin", 0x16F8, 0x1750 - 0x16F8

	.global Unk_ov4_022175D0
Unk_ov4_022175D0: ; 0x022175D0
	.incbin "incbin/overlay4_data.bin", 0x1750, 0x1754 - 0x1750

	.global Unk_ov4_022175D4
Unk_ov4_022175D4: ; 0x022175D4
	.incbin "incbin/overlay4_data.bin", 0x1754, 0x175C - 0x1754

	.global Unk_ov4_022175DC
Unk_ov4_022175DC: ; 0x022175DC
	.incbin "incbin/overlay4_data.bin", 0x175C, 0x1764 - 0x175C

	.global Unk_ov4_022175E4
Unk_ov4_022175E4: ; 0x022175E4
	.incbin "incbin/overlay4_data.bin", 0x1764, 0x176C - 0x1764

	.global Unk_ov4_022175EC
Unk_ov4_022175EC: ; 0x022175EC
	.incbin "incbin/overlay4_data.bin", 0x176C, 0x1770 - 0x176C

	.global Unk_ov4_022175F0
Unk_ov4_022175F0: ; 0x022175F0
	.incbin "incbin/overlay4_data.bin", 0x1770, 0x177C - 0x1770

	.global Unk_ov4_022175FC
Unk_ov4_022175FC: ; 0x022175FC
	.incbin "incbin/overlay4_data.bin", 0x177C, 0xB



	.bss


	.global Unk_ov4_0221A6A8
Unk_ov4_0221A6A8: ; 0x0221A6A8
	.space 0x4

	.global Unk_ov4_0221A6AC
Unk_ov4_0221A6AC: ; 0x0221A6AC
	.space 0x4

	.global Unk_ov4_0221A6B0
Unk_ov4_0221A6B0: ; 0x0221A6B0
	.space 0x4

	.global Unk_ov4_0221A6B4
Unk_ov4_0221A6B4: ; 0x0221A6B4
	.space 0x4

	.global Unk_ov4_0221A6B8
Unk_ov4_0221A6B8: ; 0x0221A6B8
	.space 0x4

	.global Unk_ov4_0221A6BC
Unk_ov4_0221A6BC: ; 0x0221A6BC
	.space 0x4

	.global Unk_ov4_0221A6C0
Unk_ov4_0221A6C0: ; 0x0221A6C0
	.space 0x4

	.global Unk_ov4_0221A6C4
Unk_ov4_0221A6C4: ; 0x0221A6C4
	.space 0x4

	.global Unk_ov4_0221A6C8
Unk_ov4_0221A6C8: ; 0x0221A6C8
	.space 0x738

	.global Unk_ov4_0221AE00
Unk_ov4_0221AE00: ; 0x0221AE00
	.space 0x20

