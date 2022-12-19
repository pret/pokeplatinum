	.include "macros/function.inc"
	.include "include/ov4_021EF924.inc"

	

	.text


	arm_func_start ov4_021EF924
ov4_021EF924: ; 0x021EF924
	stmfd sp!, {r3, r4, r5, lr}
	cmp r0, #0
	cmpeq r1, #0
	cmpeq r2, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0
	cmpge r1, #0
	cmpge r2, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	b _021EFA2C
_021EF95C: ; jump table
	b _021EF990 ; case 0
	b _021EF9A0 ; case 1
	b _021EF9C0 ; case 2
	b _021EF9A0 ; case 3
	b _021EF9B0 ; case 4
	b _021EF9A0 ; case 5
	b _021EF9B0 ; case 6
	b _021EF9A0 ; case 7
	b _021EF9A0 ; case 8
	b _021EF9B0 ; case 9
	b _021EF9A0 ; case 10
	b _021EF9B0 ; case 11
	b _021EF9A0 ; case 12
_021EF990:
	cmp r0, #0
	beq _021EFA34
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021EF9A0:
	cmp r0, #0x1f
	ble _021EFA34
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021EF9B0:
	cmp r0, #0x1e
	ble _021EFA34
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021EF9C0:
	mov r4, r2, lsr #0x1f
	rsb r3, r4, r2, lsl #30
	adds r3, r4, r3, ror #30
	bne _021EF9EC
	ldr ip, _021EFA7C ; =0x51EB851F
	mov lr, #0x64
	smull r3, r5, ip, r2
	add r5, r4, r5, asr #5
	smull r3, ip, lr, r5
	subs r5, r2, r3
	bne _021EFA0C
_021EF9EC:
	ldr lr, _021EFA7C ; =0x51EB851F
	mov r3, r2, lsr #0x1f
	smull ip, r4, lr, r2
	add r4, r3, r4, asr #7
	mov lr, #0x190
	smull r3, ip, lr, r4
	subs r4, r2, r3
	bne _021EFA1C
_021EFA0C:
	cmp r0, #0x1d
	ble _021EFA34
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021EFA1C:
	cmp r0, #0x1c
	ble _021EFA34
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021EFA2C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021EFA34:
	ldr ip, _021EFA80 ; =0x0000076C
	cmp r2, ip
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	add r3, ip, #0xb3
	cmp r2, r3
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
	bne _021EFA74
	cmp r1, #6
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
	bne _021EFA74
	cmp r0, #6
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
_021EFA74:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021EFA7C: .word 0x51EB851F
_021EFA80: .word 0x0000076C
	arm_func_end ov4_021EF924

	arm_func_start ov4_021EFA84
ov4_021EFA84: ; 0x021EFA84
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov lr, r1, asr #0x18
	mov ip, r1, asr #0x10
	mov r1, r1, lsl #0x10
	and r5, ip, #0xff
	and r4, lr, #0xff
	mov sb, r0
	mov r6, r1, lsr #0x10
	mov r8, r2
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r7, r3
	bl ov4_021EF924
	cmp r0, #0
	bne _021EFAD8
	ldr r0, _021EFB1C ; =0x022185DC
	ldr r1, _021EFB20 ; =0x022185C0
	ldr r2, _021EFB24 ; =0x0221859C
	mov r3, #0xb7
	bl sub_020D407C
_021EFAD8:
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl ov4_021EF924
	cmp r0, #0
	bne _021EFB04
	ldr r1, _021EFB28 ; =0x022185CC
	mov r0, sb
	bl ov4_021F5D68
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021EFB04:
	str r4, [r8]
	ldr r0, [sp, #0x20]
	str r5, [r7, #0]
	str r6, [r0, #0]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021EFB1C: .word 0x022185DC
_021EFB20: .word 0x022185C0
_021EFB24: .word 0x0221859C
_021EFB28: .word 0x022185CC
	arm_func_end ov4_021EFA84

	arm_func_start ov4_021EFB2C
ov4_021EFB2C: ; 0x021EFB2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #8]
	beq _021EFB58
	add r0, r4, #8
	mov r2, #0x1f
	bl ov4_021F5820
_021EFB58:
	ldr r1, [r5, #4]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x27]
	beq _021EFB78
	add r0, r4, #0x27
	mov r2, #0x15
	bl ov4_021F5820
_021EFB78:
	ldr r1, [r5, #8]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x3c]
	beq _021EFB98
	add r0, r4, #0x3c
	mov r2, #0x33
	bl ov4_021F5820
_021EFB98:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x6f]
	beq _021EFBB8
	add r0, r4, #0x6f
	mov r2, #0x1f
	bl ov4_021F5820
_021EFBB8:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x8e]
	beq _021EFBD8
	add r0, r4, #0x8e
	mov r2, #0x1f
	bl ov4_021F5820
_021EFBD8:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0xad]
	beq _021EFBF8
	add r0, r4, #0xad
	mov r2, #0x4c
	bl ov4_021F5820
_021EFBF8:
	ldr r3, [r5, #0x18]
	add r0, r4, #0x100
	add r1, r5, #0x1c
	mov r2, #0xb
	str r3, [r4, #0xfc]
	bl ov4_021F5820
	add r0, r4, #0xb
	add r0, r0, #0x100
	add r1, r5, #0x27
	mov r2, #3
	bl ov4_021F5820
	ldr r0, [r5, #0x2c]
	adds r1, r5, #0x34
	str r0, [r4, #0x110]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x114]
	moveq r0, #0
	streqb r0, [r4, #0x118]
	beq _021EFC50
	add r0, r4, #0x118
	mov r2, #0x80
	bl ov4_021F5820
_021EFC50:
	ldr r0, [r5, #0xb4]
	str r0, [r4, #0x198]
	ldr r0, [r5, #0xb8]
	str r0, [r4, #0x19c]
	ldr r0, [r5, #0xbc]
	str r0, [r4, #0x1a0]
	ldr r0, [r5, #0xc0]
	str r0, [r4, #0x1a4]
	ldr r0, [r5, #0xc4]
	str r0, [r4, #0x1a8]
	ldr r1, [r5, #0xc8]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x1ac]
	beq _021EFC98
	add r0, r4, #0x1ac
	mov r2, #0x33
	bl ov4_021F5820
_021EFC98:
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xfc]
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x110]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x114]
	ldr r0, [r5, #0xb4]
	str r0, [r4, #0x198]
	ldr r0, [r5, #0xb8]
	str r0, [r4, #0x19c]
	ldr r0, [r5, #0xbc]
	str r0, [r4, #0x1a0]
	ldr r0, [r5, #0xc0]
	str r0, [r4, #0x1a4]
	ldr r0, [r5, #0xc4]
	str r0, [r4, #0x1a8]
	ldr r0, [r5, #0xcc]
	str r0, [r4, #0x1e0]
	ldr r0, [r5, #0xd0]
	str r0, [r4, #0x1e4]
	ldr r0, [r5, #0xd4]
	str r0, [r4, #0x1e8]
	ldr r0, [r5, #0xd8]
	str r0, [r4, #0x1ec]
	ldr r0, [r5, #0xdc]
	str r0, [r4, #0x1f0]
	ldr r0, [r5, #0xe0]
	str r0, [r4, #0x1f4]
	ldr r0, [r5, #0xe4]
	str r0, [r4, #0x1f8]
	ldr r0, [r5, #0xe8]
	str r0, [r4, #0x1fc]
	ldr r0, [r5, #0xec]
	str r0, [r4, #0x200]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021EFB2C

	arm_func_start ov4_021EFD24
ov4_021EFD24: ; 0x021EFD24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x268
	mov r4, r2
	mov sl, r0
	mov fp, r1
	mov r1, r4
	mov r2, #1
	ldr r6, [sl]
	bl ov4_021F58A0
	cmp r0, #0
	addne sp, sp, #0x268
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F04AC ; =0x022185F4
	mov r0, r4
	mov r2, #4
	bl sub_020D8E28
	cmp r0, #0
	beq _021EFD9C
	ldr r2, _021F04B0 ; =0x022185FC
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x268
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EFD9C:
	ldr r1, _021F04B4 ; =0x0221862C
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	bne _021EFDE4
	ldr r2, _021F04B0 ; =0x022185FC
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x268
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EFDE4:
	add r0, sp, #0xec
	bl sub_020DAE0C
	mov sb, r0
	cmp sb, #0
	bgt _021EFE0C
	ldr r0, _021F04B8 ; =0x02218638
	ldr r1, _021F04BC ; =0x022185C0
	ldr r2, _021F04C0 ; =0x022185AC
	ldr r3, _021F04C4 ; =0x0000015A
	bl sub_020D407C
_021EFE0C:
	add r2, sp, #0x10
	mov r0, sl
	mov r1, sb
	bl ov4_021F32A8
	mov r0, #0
	add r7, sp, #0x178
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r5, #7
_021EFE34:
	stmia r7!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _021EFE34
	stmia r7!, {r0, r1, r2, r3}
	add r3, sp, #0xb8
	add r1, sp, #0x66
	add r2, sp, #0xcd
	add r5, sp, #0x85
	add r0, sp, #0x47
	str r3, [sp, #0x17c]
	add r3, sp, #0x12c
	str r1, [sp, #0x184]
	str r5, [sp, #0x180]
	add r5, sp, #0x14
	str r0, [sp, #0x188]
	str r3, [sp, #0x18c]
	ldr r1, _021F04C8 ; =0x02218648
	mov r0, r4
	mov r3, #0x1f
	str r2, [sp, #0x178]
	str r5, [sp, #0x240]
	bl ov4_021F5978
	cmp r0, #0
	ldreq r0, [sp, #0x178]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x17c]
	ldr r1, _021F04CC ; =0x02218650
	mov r0, r4
	mov r3, #0x15
	bl ov4_021F5978
	cmp r0, #0
	ldreq r0, [sp, #0x17c]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x180]
	ldr r1, _021F04D0 ; =0x02218660
	mov r0, r4
	mov r3, #0x33
	bl ov4_021F5978
	cmp r0, #0
	ldreq r0, [sp, #0x180]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x184]
	ldr r1, _021F04D4 ; =0x02218668
	mov r0, r4
	mov r3, #0x1f
	bl ov4_021F5978
	cmp r0, #0
	ldreq r0, [sp, #0x184]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x188]
	ldr r1, _021F04D8 ; =0x02218674
	mov r0, r4
	mov r3, #0x1f
	bl ov4_021F5978
	cmp r0, #0
	ldreq r0, [sp, #0x188]
	moveq r1, #0
	streqb r1, [r0]
	ldr r1, _021F04DC ; =0x02218680
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	mvneq r0, #0
	streq r0, [sp, #0x190]
	beq _021EFF60
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x190]
_021EFF60:
	ldr r2, [sp, #0x18c]
	ldr r1, _021F04E0 ; =0x0221868C
	mov r0, r4
	mov r3, #0x4c
	bl ov4_021F5978
	cmp r0, #0
	ldreq r0, [sp, #0x18c]
	moveq r1, #0
	streqb r1, [r0]
	ldr r1, _021F04E4 ; =0x02218698
	add r2, sp, #0x194
	mov r0, r4
	mov r3, #0xb
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	add r2, sp, #0x100
	streqb r0, [sp, #0x194]
	ldr r1, _021F04E8 ; =0x022186A4
	add r2, r2, #0x9f
	mov r0, r4
	mov r3, #3
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x19f]
	ldr r1, _021F04EC ; =0x022186B4
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x1a4]
	beq _021EFFFC
	add r0, sp, #0xec
	bl sub_020DA448
	bl sub_020DFF84
	str r0, [sp, #0x1a4]
_021EFFFC:
	ldr r1, _021F04F0 ; =0x022186BC
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x1a8]
	beq _021F0030
	add r0, sp, #0xec
	bl sub_020DA448
	bl sub_020DFF84
	str r0, [sp, #0x1a8]
_021F0030:
	ldr r1, _021F04F4 ; =0x022186C4
	add r2, sp, #0x1ac
	mov r0, r4
	mov r3, #0x80
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x1ac]
	ldr r1, _021F04F8 ; =0x022186CC
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	bne _021F0080
	mov r0, #0
	str r0, [sp, #0x22c]
	str r0, [sp, #0x230]
	str r0, [sp, #0x234]
	b _021F00B0
_021F0080:
	add r0, sp, #0xec
	bl sub_020DAE0C
	add r5, sp, #0x234
	mov r1, r0
	add r2, sp, #0x22c
	add r3, sp, #0x230
	mov r0, sl
	str r5, [sp]
	bl ov4_021EFA84
	cmp r0, #0
	addne sp, sp, #0x268
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F00B0:
	ldr r1, _021F04FC ; =0x022186D8
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	ldreq r0, _021F0500 ; =0x00000502
	streq r0, [sp, #0x238]
	beq _021F00FC
	ldrsb r0, [sp, #0xec]
	cmp r0, #0x30
	moveq r0, #0x500
	streq r0, [sp, #0x238]
	beq _021F00FC
	cmp r0, #0x31
	ldreq r0, _021F0504 ; =0x00000501
	streq r0, [sp, #0x238]
	ldrne r0, _021F0500 ; =0x00000502
	strne r0, [sp, #0x238]
_021F00FC:
	ldr r1, _021F0508 ; =0x022186E0
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	mvneq r0, #0
	streq r0, [sp, #0x23c]
	beq _021F012C
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x23c]
_021F012C:
	ldr r2, [sp, #0x240]
	ldr r1, _021F050C ; =0x022186E8
	mov r0, r4
	mov r3, #0x33
	bl ov4_021F5978
	cmp r0, #0
	ldreq r0, [sp, #0x240]
	moveq r1, #0
	streqb r1, [r0]
	ldr r1, _021F0510 ; =0x022186F0
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x244]
	beq _021F0180
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x244]
_021F0180:
	ldr r1, _021F0514 ; =0x022186F8
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x248]
	beq _021F01B0
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x248]
_021F01B0:
	ldr r1, _021F0518 ; =0x02218700
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x24c]
	beq _021F01E0
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x24c]
_021F01E0:
	ldr r1, _021F051C ; =0x02218708
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x250]
	beq _021F0210
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x250]
_021F0210:
	ldr r1, _021F0520 ; =0x02218710
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x254]
	beq _021F0240
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x254]
_021F0240:
	ldr r1, _021F0524 ; =0x02218718
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x258]
	beq _021F0270
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x258]
_021F0270:
	ldr r1, _021F0528 ; =0x02218720
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x25c]
	beq _021F02A0
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x25c]
_021F02A0:
	ldr r1, _021F052C ; =0x02218728
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x260]
	beq _021F02D0
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x260]
_021F02D0:
	ldr r1, _021F0530 ; =0x02218730
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x264]
	beq _021F0300
	add r0, sp, #0xec
	bl sub_020DAE0C
	str r0, [sp, #0x264]
_021F0300:
	ldr r1, _021F0534 ; =0x02218738
	add r2, sp, #0xec
	mov r0, r4
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	bne _021F0348
	ldr r2, _021F04B0 ; =0x022185FC
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x268
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F0348:
	ldr r7, [r6, #0x434]
	ldr r8, [r6, #0x100]
	cmp r7, #0
	beq _021F03A4
	mov r5, #0x66
	mov r4, #1
_021F0360:
	ldr r0, [r7, #0xc]
	cmp r0, sb
	ldreq r0, [r7]
	cmpeq r0, #0x65
	bne _021F0398
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021F0390
	mov r0, sl
	mov r1, sb
	bl ov4_021F31C4
	str r0, [sp, #0x10]
_021F0390:
	mov r8, r4
	str r5, [r7, #0]
_021F0398:
	ldr r7, [r7, #0x3c]
	cmp r7, #0
	bne _021F0360
_021F03A4:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021F03CC
	ldr r0, [r6, #0x100]
	cmp r0, #0
	beq _021F03CC
	mov r0, sl
	mov r1, sb
	bl ov4_021F31C4
	str r0, [sp, #0x10]
_021F03CC:
	cmp r8, #0
	beq _021F03FC
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x18]
	bl ov4_021D78B0
	ldr r1, [sp, #0x10]
	mov r2, #0
	add r0, sp, #0xec
	str r2, [r1, #0x18]
	bl ov4_021EA8AC
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x18]
_021F03FC:
	ldr r0, [r6, #0x100]
	cmp r0, #0
	beq _021F0418
	ldr r1, [sp, #0x10]
	add r2, sp, #0x178
	mov r0, sl
	bl ov4_021F1564
_021F0418:
	ldr r1, [fp, #0xc]
	ldr r0, [fp, #0x10]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _021F0494
	mov r0, #0x204
	bl ov4_021D7880
	movs r4, r0
	bne _021F0458
	ldr r1, _021F0538 ; =0x02218740
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x268
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F0458:
	add r0, sp, #0x178
	mov r1, r4
	bl ov4_021EFB2C
	mov r2, #0
	stmia r4, {r2, sb}
	str fp, [sp]
	add r1, sp, #8
	str r2, [sp, #4]
	mov r0, sl
	mov r3, r4
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	addne sp, sp, #0x268
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F0494:
	mov r0, sl
	mov r1, fp
	bl ov4_021F1BA8
	mov r0, #0
	add sp, sp, #0x268
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021F04AC: .word 0x022185F4
_021F04B0: .word 0x022185FC
_021F04B4: .word 0x0221862C
_021F04B8: .word 0x02218638
_021F04BC: .word 0x022185C0
_021F04C0: .word 0x022185AC
_021F04C4: .word 0x0000015A
_021F04C8: .word 0x02218648
_021F04CC: .word 0x02218650
_021F04D0: .word 0x02218660
_021F04D4: .word 0x02218668
_021F04D8: .word 0x02218674
_021F04DC: .word 0x02218680
_021F04E0: .word 0x0221868C
_021F04E4: .word 0x02218698
_021F04E8: .word 0x022186A4
_021F04EC: .word 0x022186B4
_021F04F0: .word 0x022186BC
_021F04F4: .word 0x022186C4
_021F04F8: .word 0x022186CC
_021F04FC: .word 0x022186D8
_021F0500: .word 0x00000502
_021F0504: .word 0x00000501
_021F0508: .word 0x022186E0
_021F050C: .word 0x022186E8
_021F0510: .word 0x022186F0
_021F0514: .word 0x022186F8
_021F0518: .word 0x02218700
_021F051C: .word 0x02218708
_021F0520: .word 0x02218710
_021F0524: .word 0x02218718
_021F0528: .word 0x02218720
_021F052C: .word 0x02218728
_021F0530: .word 0x02218730
_021F0534: .word 0x02218738
_021F0538: .word 0x02218740
	arm_func_end ov4_021EFD24

	arm_func_start ov4_021F053C
ov4_021F053C: ; 0x021F053C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0]
	mov r5, r1
	ldr r2, [r4, #0x448]
	cmp r2, #0
	ble _021F0598
	ldr r2, _021F05F4 ; =0x02218750
	bl ov4_021ED5C4
	ldr r2, [r4, #0x198]
	mov r0, r6
	mov r1, r5
	bl ov4_021ED5F4
	ldr r2, [r4, #0x440]
	mov r0, r6
	mov r1, r5
	bl ov4_021ED5C4
	ldr r2, _021F05F8 ; =0x02218768
	mov r0, r6
	mov r1, r5
	bl ov4_021ED5C4
	mov r0, #0
	str r0, [r4, #0x448]
_021F0598:
	ldr r0, [r4, #0x458]
	cmp r0, #0
	ble _021F05EC
	ldr r2, _021F05FC ; =0x02218770
	mov r0, r6
	mov r1, r5
	bl ov4_021ED5C4
	ldr r2, [r4, #0x198]
	mov r0, r6
	mov r1, r5
	bl ov4_021ED5F4
	ldr r2, [r4, #0x450]
	mov r0, r6
	mov r1, r5
	bl ov4_021ED5C4
	ldr r2, _021F05F8 ; =0x02218768
	mov r0, r6
	mov r1, r5
	bl ov4_021ED5C4
	mov r0, #0
	str r0, [r4, #0x458]
_021F05EC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F05F4: .word 0x02218750
_021F05F8: .word 0x02218768
_021F05FC: .word 0x02218770
	arm_func_end ov4_021F053C

	arm_func_start ov4_021F0600
ov4_021F0600: ; 0x021F0600
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0]
	mov r5, r2
	mov r2, r1
	add r1, r4, #0x440
	bl ov4_021ED5C4
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x440
	bl ov4_021ED5C4
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021F0600

	arm_func_start ov4_021F0640
ov4_021F0640: ; 0x021F0640
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0]
	mov r5, r2
	mov r2, r1
	add r1, r4, #0x450
	bl ov4_021ED5C4
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x450
	bl ov4_021ED5C4
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021F0640

	arm_func_start ov4_021F0680
ov4_021F0680: ; 0x021F0680
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	sub r1, r1, #6
	sub r1, r1, #0x700
	mov r4, r0
	cmp r1, #0x18
	addls pc, pc, r1, lsl #2
	b _021F0AC4
_021F06A0: ; jump table
	b _021F07D8 ; case 0
	b _021F0AC4 ; case 1
	b _021F0704 ; case 2
	b _021F0AC4 ; case 3
	b _021F0AC4 ; case 4
	b _021F074C ; case 5
	b _021F0804 ; case 6
	b _021F0830 ; case 7
	b _021F085C ; case 8
	b _021F0AC4 ; case 9
	b _021F0894 ; case 10
	b _021F0AC4 ; case 11
	b _021F08CC ; case 12
	b _021F0904 ; case 13
	b _021F0930 ; case 14
	b _021F095C ; case 15
	b _021F0AC4 ; case 16
	b _021F0AC4 ; case 17
	b _021F0990 ; case 18
	b _021F09BC ; case 19
	b _021F09E8 ; case 20
	b _021F0A14 ; case 21
	b _021F0A40 ; case 22
	b _021F0A6C ; case 23
	b _021F0A98 ; case 24
_021F0704:
	cmp r2, #0
	bge _021F0720
	ldr r1, _021F0AE8 ; =0x02218784
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0720:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0AF0 ; =0x02218698
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F074C:
	cmp r2, #0x500
	beq _021F0770
	ldr r1, _021F0AF4 ; =0x00000501
	cmp r2, r1
	beq _021F078C
	add r1, r1, #1
	cmp r2, r1
	beq _021F07A8
	b _021F07C4
_021F0770:
	ldr r1, _021F0AF8 ; =0x022186D8
	ldr r2, _021F0AFC ; =0x0221879C
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F078C:
	ldr r1, _021F0AF8 ; =0x022186D8
	ldr r2, _021F0B00 ; =0x022187A0
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F07A8:
	ldr r1, _021F0AF8 ; =0x022186D8
	ldr r2, _021F0B04 ; =0x022187A4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F07C4:
	ldr r1, _021F0B08 ; =0x022187A8
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F07D8:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B0C ; =0x02218680
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0804:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B10 ; =0x022187B8
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0640
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0830:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B14 ; =0x022187C8
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0640
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F085C:
	mov r0, r2, asr #3
	add r2, r2, r0, lsr #28
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	mov r2, r2, asr #4
	bl sub_020D7510
	ldr r1, _021F0B18 ; =0x022187D4
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0640
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0894:
	mov r0, r2, asr #1
	add r2, r2, r0, lsr #30
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	mov r2, r2, asr #2
	bl sub_020D7510
	ldr r1, _021F0B1C ; =0x022187E0
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0640
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F08CC:
	mov r0, r2, asr #1
	add r2, r2, r0, lsr #30
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	mov r2, r2, asr #2
	bl sub_020D7510
	ldr r1, _021F0B20 ; =0x022187F0
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0640
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0904:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B24 ; =0x02218800
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0640
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0930:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B28 ; =0x02218810
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0640
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F095C:
	ldr r1, _021F0AEC ; =0x02218798
	cmp r2, #0
	movne r2, #1
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B2C ; =0x02218824
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0640
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0990:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B30 ; =0x022186F0
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F09BC:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B34 ; =0x022186F8
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F09E8:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B38 ; =0x02218700
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0A14:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B3C ; =0x02218708
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0A40:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B40 ; =0x02218710
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0A6C:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B44 ; =0x02218718
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0A98:
	ldr r1, _021F0AEC ; =0x02218798
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _021F0B48 ; =0x02218720
	add r2, sp, #0
	mov r0, r4
	bl ov4_021F0600
	cmp r0, #0
	beq _021F0ADC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F0AC4:
	ldr r1, _021F0B4C ; =0x02218834
	mov r0, r4
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0ADC:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F0AE8: .word 0x02218784
_021F0AEC: .word 0x02218798
_021F0AF0: .word 0x02218698
_021F0AF4: .word 0x00000501
_021F0AF8: .word 0x022186D8
_021F0AFC: .word 0x0221879C
_021F0B00: .word 0x022187A0
_021F0B04: .word 0x022187A4
_021F0B08: .word 0x022187A8
_021F0B0C: .word 0x02218680
_021F0B10: .word 0x022187B8
_021F0B14: .word 0x022187C8
_021F0B18: .word 0x022187D4
_021F0B1C: .word 0x022187E0
_021F0B20: .word 0x022187F0
_021F0B24: .word 0x02218800
_021F0B28: .word 0x02218810
_021F0B2C: .word 0x02218824
_021F0B30: .word 0x022186F0
_021F0B34: .word 0x022186F8
_021F0B38: .word 0x02218700
_021F0B3C: .word 0x02218708
_021F0B40: .word 0x02218710
_021F0B44: .word 0x02218718
_021F0B48: .word 0x02218720
_021F0B4C: .word 0x02218834
	arm_func_end ov4_021F0680

	arm_func_start ov4_021F0B50
ov4_021F0B50: ; 0x021F0B50
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x100
	mov r6, r0
	movs r5, r2
	ldr r4, [r6, #0]
	bne _021F0B7C
	ldr r1, _021F12A0 ; =0x02218844
	bl ov4_021F5D68
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0B7C:
	sub r1, r1, #0x700
	cmp r1, #0x1e
	addls pc, pc, r1, lsl #2
	b _021F127C
_021F0B8C: ; jump table
	b _021F0C08 ; case 0
	b _021F0C68 ; case 1
	b _021F0CCC ; case 2
	b _021F0D34 ; case 3
	b _021F0D98 ; case 4
	b _021F0DC8 ; case 5
	b _021F0F4C ; case 6
	b _021F0DF8 ; case 7
	b _021F0E28 ; case 8
	b _021F0E58 ; case 9
	b _021F127C ; case 10
	b _021F0EB0 ; case 11
	b _021F127C ; case 12
	b _021F0F7C ; case 13
	b _021F0FA4 ; case 14
	b _021F0FCC ; case 15
	b _021F0FFC ; case 16
	b _021F1024 ; case 17
	b _021F1054 ; case 18
	b _021F127C ; case 19
	b _021F107C ; case 20
	b _021F10A4 ; case 21
	b _021F10CC ; case 22
	b _021F10FC ; case 23
	b _021F112C ; case 24
	b _021F115C ; case 25
	b _021F118C ; case 26
	b _021F11BC ; case 27
	b _021F11EC ; case 28
	b _021F121C ; case 29
	b _021F124C ; case 30
_021F0C08:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F0C28
	ldr r1, _021F12A0 ; =0x02218844
	bl ov4_021F5D68
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0C28:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	add r1, sp, #0
	add r0, r4, #0x110
	mov r2, #0x1f
	bl ov4_021F5820
	ldr r1, _021F12A4 ; =0x02218648
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0C68:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F0C88
	ldr r1, _021F12A0 ; =0x02218844
	bl ov4_021F5D68
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0C88:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x15
	bl ov4_021F5820
	add r0, r4, #0x2f
	add r1, sp, #0
	add r0, r0, #0x100
	mov r2, #0x15
	bl ov4_021F5820
	ldr r1, _021F12A8 ; =0x02218650
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0CCC:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F0CEC
	ldr r1, _021F12A0 ; =0x02218844
	bl ov4_021F5D68
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0CEC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x33
	bl ov4_021F5820
	add r0, sp, #0
	bl ov4_021EA8E0
	add r1, sp, #0
	add r0, r4, #0x144
	mov r2, #0x33
	bl ov4_021F5820
	ldr r1, _021F12AC ; =0x02218660
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0640
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0D34:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F0D54
	ldr r1, _021F12A0 ; =0x02218844
	bl ov4_021F5D68
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0D54:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	add r0, r4, #0x77
	add r1, sp, #0
	add r0, r0, #0x100
	mov r2, #0x1f
	bl ov4_021F5820
	ldr r1, _021F12B0 ; =0x02218854
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0640
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0D98:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	ldr r1, _021F12B4 ; =0x02218668
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0DC8:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	ldr r1, _021F12B8 ; =0x02218674
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0DF8:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x4c
	bl ov4_021F5820
	ldr r1, _021F12BC ; =0x0221868C
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0E28:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0xb
	bl ov4_021F5820
	ldr r1, _021F12C0 ; =0x02218698
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0E58:
	mov r0, r5
	bl sub_020D8B60
	cmp r0, #2
	beq _021F0E80
	ldr r1, _021F12C4 ; =0x02218860
	mov r0, r6
	bl ov4_021F5D68
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0E80:
	add r0, sp, #0
	mov r1, r5
	mov r2, #3
	bl ov4_021F5820
	ldr r1, _021F12C8 ; =0x022186A4
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0EB0:
	ldrsb r1, [r5]
	cmp r1, #0
	blt _021F0ECC
	cmp r1, #0x80
	bge _021F0ECC
	ldr r0, _021F12CC ; =0x020FE7E4
	ldrb r1, [r0, r1]
_021F0ECC:
	mov r0, r1, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, #0x4d
	add r2, sp, #0
	bne _021F0EF8
	ldr r0, _021F12D0 ; =0x0221879C
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r2]
	strb r0, [r2, #1]
	b _021F0F2C
_021F0EF8:
	cmp r0, #0x46
	bne _021F0F18
	ldr r0, _021F12D4 ; =0x022187A0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r2]
	strb r0, [r2, #1]
	b _021F0F2C
_021F0F18:
	ldr r0, _021F12D8 ; =0x022187A4
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r2]
	strb r0, [r2, #1]
_021F0F2C:
	ldr r1, _021F12DC ; =0x022186D8
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0F4C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F12E0 ; =0x02218680
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0F7C:
	mov r0, r5
	bl sub_020DAE0C
	mov r2, r0
	ldr r1, _021F12E4 ; =0x0000070D
	mov r0, r6
	bl ov4_021F0680
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0FA4:
	mov r0, r5
	bl sub_020DAE0C
	mov r2, r0
	ldr r1, _021F12E8 ; =0x0000070E
	mov r0, r6
	bl ov4_021F0680
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0FCC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F12EC ; =0x02218878
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F0FFC:
	mov r0, r5
	bl sub_020DAE0C
	mov r2, r0
	mov r0, r6
	mov r1, #0x710
	bl ov4_021F0680
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F1024:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F12F0 ; =0x0221888C
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F1054:
	mov r0, r5
	bl sub_020DAE0C
	mov r2, r0
	ldr r1, _021F12F4 ; =0x00000712
	mov r0, r6
	bl ov4_021F0680
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F107C:
	mov r0, r5
	bl sub_020DAE0C
	mov r2, r0
	ldr r1, _021F12F8 ; =0x00000714
	mov r0, r6
	bl ov4_021F0680
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F10A4:
	mov r0, r5
	bl sub_020DAE0C
	mov r2, r0
	ldr r1, _021F12FC ; =0x00000715
	mov r0, r6
	bl ov4_021F0680
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F10CC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F1300 ; =0x022188A0
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F10FC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x33
	bl ov4_021F5820
	ldr r1, _021F1304 ; =0x022186E8
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F112C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F1308 ; =0x022186F0
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F115C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F130C ; =0x022186F8
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F118C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F1310 ; =0x02218700
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F11BC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F1314 ; =0x02218708
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F11EC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F1318 ; =0x02218710
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F121C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F131C ; =0x02218718
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F124C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	ldr r1, _021F1320 ; =0x02218720
	add r2, sp, #0
	mov r0, r6
	bl ov4_021F0600
	cmp r0, #0
	beq _021F1294
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F127C:
	ldr r1, _021F1324 ; =0x02218834
	mov r0, r6
	bl ov4_021F5D68
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F1294:
	mov r0, #0
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F12A0: .word 0x02218844
_021F12A4: .word 0x02218648
_021F12A8: .word 0x02218650
_021F12AC: .word 0x02218660
_021F12B0: .word 0x02218854
_021F12B4: .word 0x02218668
_021F12B8: .word 0x02218674
_021F12BC: .word 0x0221868C
_021F12C0: .word 0x02218698
_021F12C4: .word 0x02218860
_021F12C8: .word 0x022186A4
_021F12CC: .word 0x020FE7E4
_021F12D0: .word 0x0221879C
_021F12D4: .word 0x022187A0
_021F12D8: .word 0x022187A4
_021F12DC: .word 0x022186D8
_021F12E0: .word 0x02218680
_021F12E4: .word 0x0000070D
_021F12E8: .word 0x0000070E
_021F12EC: .word 0x02218878
_021F12F0: .word 0x0221888C
_021F12F4: .word 0x00000712
_021F12F8: .word 0x00000714
_021F12FC: .word 0x00000715
_021F1300: .word 0x022188A0
_021F1304: .word 0x022186E8
_021F1308: .word 0x022186F0
_021F130C: .word 0x022186F8
_021F1310: .word 0x02218700
_021F1314: .word 0x02218708
_021F1318: .word 0x02218710
_021F131C: .word 0x02218718
_021F1320: .word 0x02218720
_021F1324: .word 0x02218834
	arm_func_end ov4_021F0B50

	arm_func_start ov4_021F1328
ov4_021F1328: ; 0x021F1328
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #0]
	mov r5, r2
	mov r6, r1
	ldr r2, _021F13B0 ; =0x022188AC
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r4, #0x198]
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	ldr r2, _021F13B4 ; =0x0221862C
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r2, r6
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	mov r0, r7
	add r1, r4, #0x1f4
	ldr r2, _021F13B8 ; =0x022188C4
	bl ov4_021ED5C4
	mov r2, r5
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	mov r0, r7
	add r1, r4, #0x1f4
	ldr r2, _021F13BC ; =0x02218768
	bl ov4_021ED5C4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F13B0: .word 0x022188AC
_021F13B4: .word 0x0221862C
_021F13B8: .word 0x022188C4
_021F13BC: .word 0x02218768
	arm_func_end ov4_021F1328

	arm_func_start ov4_021F13C0
ov4_021F13C0: ; 0x021F13C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	ldr r0, [r8]
	mov r4, #0
	str r4, [sp, #0x14]
	ldr r0, [r0, #0x100]
	cmp r2, #1
	moveq r4, #1
	cmp r0, #0
	ldr r5, [sp, #0x38]
	moveq r4, #0
	cmp r5, #0
	mov r7, r1
	mov r6, r3
	cmpne r4, #0
	beq _021F14E0
	add r2, sp, #0x18
	mov r0, r8
	mov r1, r7
	bl ov4_021F32A8
	cmp r0, #0
	ldrne r0, [sp, #0x18]
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _021F14E0
	mov r0, #0x204
	bl ov4_021D7880
	movs r4, r0
	bne _021F1450
	ldr r1, _021F1560 ; =0x02218740
	mov r0, r8
	bl ov4_021F5D68
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021F1450:
	ldr r0, [sp, #0x18]
	mov r1, r4
	ldr r0, [r0, #0xc]
	bl ov4_021EFB2C
	mov r2, #0
	ldr ip, [sp, #0x3c]
	stmia r4, {r2, r7}
	mov r0, #1
	stmia sp, {r0, r5}
	add r3, sp, #0x14
	mov r0, r8
	mov r1, #2
	str r5, [sp, #0xc]
	str ip, [sp, #0x10]
	str ip, [sp, #8]
	bl ov4_021F1A54
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [sp, #0x14]
	add r1, sp, #0xc
	ldr r5, [r2, #0x18]
	mov r0, r8
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r3, r4
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x14]
	mov r0, r8
	bl ov4_021F1BA8
	b _021F1534
_021F14E0:
	str r6, [sp]
	ldr r4, [sp, #0x3c]
	str r5, [sp, #4]
	add r3, sp, #0x14
	mov r0, r8
	mov r1, #2
	mov r2, #0
	str r4, [sp, #8]
	bl ov4_021F1A54
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x14]
	mov r0, r8
	ldr r5, [r1, #0x18]
	mov r1, r7
	mov r2, r5
	bl ov4_021F1328
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021F1534:
	cmp r6, #0
	beq _021F1554
	mov r0, r8
	mov r1, r5
	bl ov4_021EC3B0
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021F1554:
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F1560: .word 0x02218740
	arm_func_end ov4_021F13C0

	arm_func_start ov4_021F1564
ov4_021F1564: ; 0x021F1564
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, [r0, #0]
	mov r5, r1
	ldr r0, [r0, #0x100]
	mov r4, r2
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl ov4_021F163C
	mov r0, #0xf0
	bl ov4_021D7880
	movs r6, r0
	str r0, [r5, #0xc]
	beq _021F1628
	mov lr, r4
	mov ip, #0xf
_021F15A8:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _021F15A8
	ldr r0, [r4, #0]
	bl ov4_021EA8AC
	ldr r1, [r5, #0xc]
	str r0, [r1, #0]
	ldr r0, [r4, #4]
	bl ov4_021EA8AC
	ldr r1, [r5, #0xc]
	str r0, [r1, #4]
	ldr r0, [r4, #8]
	bl ov4_021EA8AC
	ldr r1, [r5, #0xc]
	str r0, [r1, #8]
	ldr r0, [r4, #0xc]
	bl ov4_021EA8AC
	ldr r1, [r5, #0xc]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x10]
	bl ov4_021EA8AC
	ldr r1, [r5, #0xc]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	bl ov4_021EA8AC
	ldr r1, [r5, #0xc]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0xc8]
	bl ov4_021EA8AC
	ldr r1, [r5, #0xc]
	str r0, [r1, #0xc8]
_021F1628:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021F1564

	arm_func_start ov4_021F163C
ov4_021F163C: ; 0x021F163C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r0, #0]
	bl ov4_021D78B0
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl ov4_021D78B0
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	bl ov4_021D78B0
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl ov4_021D78B0
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x10]
	bl ov4_021D78B0
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x14]
	bl ov4_021D78B0
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0xc8]
	bl ov4_021D78B0
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0xc8]
	ldr r0, [r4, #0xc]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F163C

	.data


	.global Unk_ov4_0221859C
Unk_ov4_0221859C: ; 0x0221859C
	.incbin "incbin/overlay4_data.bin", 0x271C, 0x272C - 0x271C

	.global Unk_ov4_022185AC
Unk_ov4_022185AC: ; 0x022185AC
	.incbin "incbin/overlay4_data.bin", 0x272C, 0x2740 - 0x272C

	.global Unk_ov4_022185C0
Unk_ov4_022185C0: ; 0x022185C0
	.incbin "incbin/overlay4_data.bin", 0x2740, 0x274C - 0x2740

	.global Unk_ov4_022185CC
Unk_ov4_022185CC: ; 0x022185CC
	.incbin "incbin/overlay4_data.bin", 0x274C, 0x275C - 0x274C

	.global Unk_ov4_022185DC
Unk_ov4_022185DC: ; 0x022185DC
	.incbin "incbin/overlay4_data.bin", 0x275C, 0x2774 - 0x275C

	.global Unk_ov4_022185F4
Unk_ov4_022185F4: ; 0x022185F4
	.incbin "incbin/overlay4_data.bin", 0x2774, 0x277C - 0x2774

	.global Unk_ov4_022185FC
Unk_ov4_022185FC: ; 0x022185FC
	.incbin "incbin/overlay4_data.bin", 0x277C, 0x27AC - 0x277C

	.global Unk_ov4_0221862C
Unk_ov4_0221862C: ; 0x0221862C
	.incbin "incbin/overlay4_data.bin", 0x27AC, 0x27B8 - 0x27AC

	.global Unk_ov4_02218638
Unk_ov4_02218638: ; 0x02218638
	.incbin "incbin/overlay4_data.bin", 0x27B8, 0x27C8 - 0x27B8

	.global Unk_ov4_02218648
Unk_ov4_02218648: ; 0x02218648
	.incbin "incbin/overlay4_data.bin", 0x27C8, 0x27D0 - 0x27C8

	.global Unk_ov4_02218650
Unk_ov4_02218650: ; 0x02218650
	.incbin "incbin/overlay4_data.bin", 0x27D0, 0x27E0 - 0x27D0

	.global Unk_ov4_02218660
Unk_ov4_02218660: ; 0x02218660
	.incbin "incbin/overlay4_data.bin", 0x27E0, 0x27E8 - 0x27E0

	.global Unk_ov4_02218668
Unk_ov4_02218668: ; 0x02218668
	.incbin "incbin/overlay4_data.bin", 0x27E8, 0x27F4 - 0x27E8

	.global Unk_ov4_02218674
Unk_ov4_02218674: ; 0x02218674
	.incbin "incbin/overlay4_data.bin", 0x27F4, 0x2800 - 0x27F4

	.global Unk_ov4_02218680
Unk_ov4_02218680: ; 0x02218680
	.incbin "incbin/overlay4_data.bin", 0x2800, 0x280C - 0x2800

	.global Unk_ov4_0221868C
Unk_ov4_0221868C: ; 0x0221868C
	.incbin "incbin/overlay4_data.bin", 0x280C, 0x2818 - 0x280C

	.global Unk_ov4_02218698
Unk_ov4_02218698: ; 0x02218698
	.incbin "incbin/overlay4_data.bin", 0x2818, 0x2824 - 0x2818

	.global Unk_ov4_022186A4
Unk_ov4_022186A4: ; 0x022186A4
	.incbin "incbin/overlay4_data.bin", 0x2824, 0x2834 - 0x2824

	.global Unk_ov4_022186B4
Unk_ov4_022186B4: ; 0x022186B4
	.incbin "incbin/overlay4_data.bin", 0x2834, 0x283C - 0x2834

	.global Unk_ov4_022186BC
Unk_ov4_022186BC: ; 0x022186BC
	.incbin "incbin/overlay4_data.bin", 0x283C, 0x2844 - 0x283C

	.global Unk_ov4_022186C4
Unk_ov4_022186C4: ; 0x022186C4
	.incbin "incbin/overlay4_data.bin", 0x2844, 0x284C - 0x2844

	.global Unk_ov4_022186CC
Unk_ov4_022186CC: ; 0x022186CC
	.incbin "incbin/overlay4_data.bin", 0x284C, 0x2858 - 0x284C

	.global Unk_ov4_022186D8
Unk_ov4_022186D8: ; 0x022186D8
	.incbin "incbin/overlay4_data.bin", 0x2858, 0x2860 - 0x2858

	.global Unk_ov4_022186E0
Unk_ov4_022186E0: ; 0x022186E0
	.incbin "incbin/overlay4_data.bin", 0x2860, 0x2868 - 0x2860

	.global Unk_ov4_022186E8
Unk_ov4_022186E8: ; 0x022186E8
	.incbin "incbin/overlay4_data.bin", 0x2868, 0x2870 - 0x2868

	.global Unk_ov4_022186F0
Unk_ov4_022186F0: ; 0x022186F0
	.incbin "incbin/overlay4_data.bin", 0x2870, 0x2878 - 0x2870

	.global Unk_ov4_022186F8
Unk_ov4_022186F8: ; 0x022186F8
	.incbin "incbin/overlay4_data.bin", 0x2878, 0x2880 - 0x2878

	.global Unk_ov4_02218700
Unk_ov4_02218700: ; 0x02218700
	.incbin "incbin/overlay4_data.bin", 0x2880, 0x2888 - 0x2880

	.global Unk_ov4_02218708
Unk_ov4_02218708: ; 0x02218708
	.incbin "incbin/overlay4_data.bin", 0x2888, 0x2890 - 0x2888

	.global Unk_ov4_02218710
Unk_ov4_02218710: ; 0x02218710
	.incbin "incbin/overlay4_data.bin", 0x2890, 0x2898 - 0x2890

	.global Unk_ov4_02218718
Unk_ov4_02218718: ; 0x02218718
	.incbin "incbin/overlay4_data.bin", 0x2898, 0x28A0 - 0x2898

	.global Unk_ov4_02218720
Unk_ov4_02218720: ; 0x02218720
	.incbin "incbin/overlay4_data.bin", 0x28A0, 0x28A8 - 0x28A0

	.global Unk_ov4_02218728
Unk_ov4_02218728: ; 0x02218728
	.incbin "incbin/overlay4_data.bin", 0x28A8, 0x28B0 - 0x28A8

	.global Unk_ov4_02218730
Unk_ov4_02218730: ; 0x02218730
	.incbin "incbin/overlay4_data.bin", 0x28B0, 0x28B8 - 0x28B0

	.global Unk_ov4_02218738
Unk_ov4_02218738: ; 0x02218738
	.incbin "incbin/overlay4_data.bin", 0x28B8, 0x28C0 - 0x28B8

	.global Unk_ov4_02218740
Unk_ov4_02218740: ; 0x02218740
	.incbin "incbin/overlay4_data.bin", 0x28C0, 0x28D0 - 0x28C0

	.global Unk_ov4_02218750
Unk_ov4_02218750: ; 0x02218750
	.incbin "incbin/overlay4_data.bin", 0x28D0, 0x28E8 - 0x28D0

	.global Unk_ov4_02218768
Unk_ov4_02218768: ; 0x02218768
	.incbin "incbin/overlay4_data.bin", 0x28E8, 0x28F0 - 0x28E8

	.global Unk_ov4_02218770
Unk_ov4_02218770: ; 0x02218770
	.incbin "incbin/overlay4_data.bin", 0x28F0, 0x2904 - 0x28F0

	.global Unk_ov4_02218784
Unk_ov4_02218784: ; 0x02218784
	.incbin "incbin/overlay4_data.bin", 0x2904, 0x2918 - 0x2904

	.global Unk_ov4_02218798
Unk_ov4_02218798: ; 0x02218798
	.incbin "incbin/overlay4_data.bin", 0x2918, 0x291C - 0x2918

	.global Unk_ov4_0221879C
Unk_ov4_0221879C: ; 0x0221879C
	.incbin "incbin/overlay4_data.bin", 0x291C, 0x2920 - 0x291C

	.global Unk_ov4_022187A0
Unk_ov4_022187A0: ; 0x022187A0
	.incbin "incbin/overlay4_data.bin", 0x2920, 0x2924 - 0x2920

	.global Unk_ov4_022187A4
Unk_ov4_022187A4: ; 0x022187A4
	.incbin "incbin/overlay4_data.bin", 0x2924, 0x2928 - 0x2924

	.global Unk_ov4_022187A8
Unk_ov4_022187A8: ; 0x022187A8
	.incbin "incbin/overlay4_data.bin", 0x2928, 0x2938 - 0x2928

	.global Unk_ov4_022187B8
Unk_ov4_022187B8: ; 0x022187B8
	.incbin "incbin/overlay4_data.bin", 0x2938, 0x2948 - 0x2938

	.global Unk_ov4_022187C8
Unk_ov4_022187C8: ; 0x022187C8
	.incbin "incbin/overlay4_data.bin", 0x2948, 0x2954 - 0x2948

	.global Unk_ov4_022187D4
Unk_ov4_022187D4: ; 0x022187D4
	.incbin "incbin/overlay4_data.bin", 0x2954, 0x2960 - 0x2954

	.global Unk_ov4_022187E0
Unk_ov4_022187E0: ; 0x022187E0
	.incbin "incbin/overlay4_data.bin", 0x2960, 0x2970 - 0x2960

	.global Unk_ov4_022187F0
Unk_ov4_022187F0: ; 0x022187F0
	.incbin "incbin/overlay4_data.bin", 0x2970, 0x2980 - 0x2970

	.global Unk_ov4_02218800
Unk_ov4_02218800: ; 0x02218800
	.incbin "incbin/overlay4_data.bin", 0x2980, 0x2990 - 0x2980

	.global Unk_ov4_02218810
Unk_ov4_02218810: ; 0x02218810
	.incbin "incbin/overlay4_data.bin", 0x2990, 0x29A4 - 0x2990

	.global Unk_ov4_02218824
Unk_ov4_02218824: ; 0x02218824
	.incbin "incbin/overlay4_data.bin", 0x29A4, 0x29B4 - 0x29A4

	.global Unk_ov4_02218834
Unk_ov4_02218834: ; 0x02218834
	.incbin "incbin/overlay4_data.bin", 0x29B4, 0x29C4 - 0x29B4

	.global Unk_ov4_02218844
Unk_ov4_02218844: ; 0x02218844
	.incbin "incbin/overlay4_data.bin", 0x29C4, 0x29D4 - 0x29C4

	.global Unk_ov4_02218854
Unk_ov4_02218854: ; 0x02218854
	.incbin "incbin/overlay4_data.bin", 0x29D4, 0x29E0 - 0x29D4

	.global Unk_ov4_02218860
Unk_ov4_02218860: ; 0x02218860
	.incbin "incbin/overlay4_data.bin", 0x29E0, 0x29F8 - 0x29E0

	.global Unk_ov4_02218878
Unk_ov4_02218878: ; 0x02218878
	.incbin "incbin/overlay4_data.bin", 0x29F8, 0x2A0C - 0x29F8

	.global Unk_ov4_0221888C
Unk_ov4_0221888C: ; 0x0221888C
	.incbin "incbin/overlay4_data.bin", 0x2A0C, 0x2A20 - 0x2A0C

	.global Unk_ov4_022188A0
Unk_ov4_022188A0: ; 0x022188A0
	.incbin "incbin/overlay4_data.bin", 0x2A20, 0x2A2C - 0x2A20

	.global Unk_ov4_022188AC
Unk_ov4_022188AC: ; 0x022188AC
	.incbin "incbin/overlay4_data.bin", 0x2A2C, 0x2A44 - 0x2A2C

	.global Unk_ov4_022188C4
Unk_ov4_022188C4: ; 0x022188C4
	.incbin "incbin/overlay4_data.bin", 0x2A44, 0x5

