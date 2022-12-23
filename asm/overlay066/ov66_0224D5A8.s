	.include "macros/function.inc"
	.include "overlay066/ov66_0224D5A8.inc"

	

	.text


	arm_func_start ov66_0224D5A8
ov66_0224D5A8: ; 0x0224D5A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs r4, r0
	mov sl, r1
	str r2, [sp]
	bne _0224D5D0
	ldr r0, _0224D714 ; =0x0225A4C0
	ldr r1, _0224D718 ; =0x0225A4D0
	ldr r2, _0224D71C ; =0x02259DB4
	ldr r3, _0224D720 ; =0x0000015B
	bl __msl_assertion_failed
_0224D5D0:
	cmp sl, #0
	bgt _0224D5EC
	ldr r0, _0224D724 ; =0x0225A4E0
	ldr r1, _0224D718 ; =0x0225A4D0
	ldr r2, _0224D71C ; =0x02259DB4
	ldr r3, _0224D728 ; =0x0000015D
	bl __msl_assertion_failed
_0224D5EC:
	ldr r0, [sp]
	cmp r0, #0
	bne _0224D60C
	ldr r0, _0224D72C ; =0x0225A4F0
	ldr r1, _0224D718 ; =0x0225A4D0
	ldr r2, _0224D71C ; =0x02259DB4
	ldr r3, _0224D730 ; =0x0000015E
	bl __msl_assertion_failed
_0224D60C:
	ldr r8, [r4, #0x814]
	cmp r8, #0
	beq _0224D70C
_0224D618:
	cmp sl, #0
	mov r6, #0
	ble _0224D700
	ldr sb, [sp]
	ldr fp, _0224D734 ; =0x0225A4F8
	mov r4, #1
	mov r5, r6
_0224D634:
	ldr r0, [sb]
	mov r1, r5
	cmp r0, #0
	blt _0224D64C
	cmp r0, #0x11
	movlt r1, r4
_0224D64C:
	cmp r1, #0
	bne _0224D668
	ldr r1, _0224D718 ; =0x0225A4D0
	ldr r2, _0224D71C ; =0x02259DB4
	mov r0, fp
	mov r3, #0x164
	bl __msl_assertion_failed
_0224D668:
	ldr r1, [r8]
	ldr r0, [sb]
	cmp r1, r0
	bne _0224D6F0
	ldmib sb, {r0, r7}
	cmp r0, #0
	ldreq r1, [r8, #8]
	cmpeq r1, #0
	beq _0224D6A8
	cmp r0, #0
	ldrne r1, [r8, #8]
	cmpne r1, #0
	beq _0224D6F0
	bl strcasecmp
	cmp r0, #0
	bne _0224D6F0
_0224D6A8:
	cmp r7, #0
	ldreq r0, [r8, #0xc]
	cmpeq r0, #0
	beq _0224D6D8
	cmp r7, #0
	ldrne r1, [r8, #0xc]
	cmpne r1, #0
	beq _0224D6F0
	mov r0, r7
	bl strcasecmp
	cmp r0, #0
	bne _0224D6F0
_0224D6D8:
	bl ov4_021EA840
	add r0, r0, #0xa60
	add r1, r0, #0xe000
	mov r0, r8
	str r1, [r8, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0224D6F0:
	add r6, r6, #1
	cmp r6, sl
	add sb, sb, #0xc
	blt _0224D634
_0224D700:
	ldr r8, [r8, #0x24]
	cmp r8, #0
	bne _0224D618
_0224D70C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0224D714: .word 0x0225A4C0
_0224D718: .word 0x0225A4D0
_0224D71C: .word 0x02259DB4
_0224D720: .word 0x0000015B
_0224D724: .word 0x0225A4E0
_0224D728: .word 0x0000015D
_0224D72C: .word 0x0225A4F0
_0224D730: .word 0x0000015E
_0224D734: .word 0x0225A4F8
	arm_func_end ov66_0224D5A8

	arm_func_start ov66_0224D738
ov66_0224D738: ; 0x0224D738
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	mov r5, r1
	bne _0224D75C
	ldr r0, _0224D7E0 ; =0x0225A4C0
	ldr r1, _0224D7E4 ; =0x0225A4D0
	ldr r2, _0224D7E8 ; =0x02259F9C
	ldr r3, _0224D7EC ; =0x0000017F
	bl __msl_assertion_failed
_0224D75C:
	cmp r5, #0
	bne _0224D778
	ldr r0, _0224D7F0 ; =0x0225A530
	ldr r1, _0224D7E4 ; =0x0225A4D0
	ldr r2, _0224D7E8 ; =0x02259F9C
	ldr r3, _0224D7F4 ; =0x00000181
	bl __msl_assertion_failed
_0224D778:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _0224D798
	ldr r0, _0224D7F8 ; =0x0225A538
	ldr r1, _0224D7E4 ; =0x0225A4D0
	ldr r2, _0224D7E8 ; =0x02259F9C
	ldr r3, _0224D7FC ; =0x00000182
	bl __msl_assertion_failed
_0224D798:
	ldr r4, [r4, #0x814]
	cmp r4, #0
	beq _0224D7D8
_0224D7A4:
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bne _0224D7CC
	ldr r0, [r4, #0x1c]
	mov r1, r5
	ldr r0, [r0, #8]
	bl strcasecmp
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
_0224D7CC:
	ldr r4, [r4, #0x24]
	cmp r4, #0
	bne _0224D7A4
_0224D7D8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224D7E0: .word 0x0225A4C0
_0224D7E4: .word 0x0225A4D0
_0224D7E8: .word 0x02259F9C
_0224D7EC: .word 0x0000017F
_0224D7F0: .word 0x0225A530
_0224D7F4: .word 0x00000181
_0224D7F8: .word 0x0225A538
_0224D7FC: .word 0x00000182
	arm_func_end ov66_0224D738

	arm_func_start ov66_0224D800
ov66_0224D800: ; 0x0224D800
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _0224D820
	ldr r0, _0224D844 ; =0x0225A544
	ldr r1, _0224D848 ; =0x0225A4D0
	ldr r2, _0224D84C ; =0x02259EC4
	ldr r3, _0224D850 ; =0x00000193
	bl __msl_assertion_failed
_0224D820:
	ldr r0, [r4, #0x1c]
	bl ov4_021D78B0
	ldr r0, [r4, #8]
	bl ov4_021D78B0
	ldr r0, [r4, #0xc]
	bl ov4_021D78B0
	mov r0, r4
	bl ov4_021D78B0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224D844: .word 0x0225A544
_0224D848: .word 0x0225A4D0
_0224D84C: .word 0x02259EC4
_0224D850: .word 0x00000193
	arm_func_end ov66_0224D800

	arm_func_start ov66_0224D854
ov66_0224D854: ; 0x0224D854
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, #0
	bne _0224D87C
	ldr r0, _0224D8F0 ; =0x0225A4C0
	ldr r1, _0224D8F4 ; =0x0225A4D0
	ldr r2, _0224D8F8 ; =0x02259E74
	ldr r3, _0224D8FC ; =0x0000019F
	bl __msl_assertion_failed
_0224D87C:
	cmp r5, #0
	bne _0224D898
	ldr r0, _0224D900 ; =0x0225A544
	ldr r1, _0224D8F4 ; =0x0225A4D0
	ldr r2, _0224D8F8 ; =0x02259E74
	ldr r3, _0224D904 ; =0x000001A1
	bl __msl_assertion_failed
_0224D898:
	ldr r1, [r6, #0x814]
	mov r0, r1
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_0224D8A8:
	cmp r0, r5
	bne _0224D8DC
	cmp r1, r0
	ldreq r1, [r0, #0x24]
	streq r1, [r6, #0x814]
	ldr r1, [r6, #0x818]
	cmp r1, r0
	streq r4, [r6, #0x818]
	cmp r4, #0
	ldrne r1, [r0, #0x24]
	strne r1, [r4, #0x24]
	bl ov66_0224D800
	ldmia sp!, {r4, r5, r6, pc}
_0224D8DC:
	mov r4, r0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _0224D8A8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0224D8F0: .word 0x0225A4C0
_0224D8F4: .word 0x0225A4D0
_0224D8F8: .word 0x02259E74
_0224D8FC: .word 0x0000019F
_0224D900: .word 0x0225A544
_0224D904: .word 0x000001A1
	arm_func_end ov66_0224D854

	arm_func_start ov66_0224D908
ov66_0224D908: ; 0x0224D908
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	movs r5, r1
	mov r6, r0
	mov r4, r2
	bne _0224D934
	ldr r0, _0224E02C ; =0x0225A554
	ldr r1, _0224E030 ; =0x0225A4D0
	ldr r2, _0224E034 ; =0x02259E84
	ldr r3, _0224E038 ; =0x000001C1
	bl __msl_assertion_failed
_0224D934:
	ldr r0, [r5, #0]
	mov r1, #0
	cmp r0, #0
	blt _0224D94C
	cmp r0, #0x11
	movlt r1, #1
_0224D94C:
	cmp r1, #0
	bne _0224D968
	ldr r0, _0224E03C ; =0x0225A55C
	ldr r1, _0224E030 ; =0x0225A4D0
	ldr r2, _0224E034 ; =0x02259E84
	ldr r3, _0224E040 ; =0x000001C2
	bl __msl_assertion_failed
_0224D968:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _0224DA08
	ldr r2, [r5, #0x14]
	ldr r7, [r5, #0x1c]
	cmp r2, #0
	beq _0224D9B4
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x14
	mov r1, #0xe
	str r4, [sp, #0xc]
	bl ov66_02248C2C
_0224D9B4:
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	ble _0224D9EC
_0224D9C4:
	ldr r0, [r7, #8]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r7, #0x10]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0224D9C4
_0224D9EC:
	ldr r0, [r7, #8]
	bl ov4_021D78B0
	ldr r0, [r7, #0x10]
	bl ov4_021D78B0
	ldr r0, [r7, #0xc]
	bl ov4_021D78B0
	b _0224E018
_0224DA08:
	cmp r0, #1
	bne _0224DA50
	ldr r2, [r5, #0x10]
	cmp r2, #0
	beq _0224E018
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0xc
	mov r1, #0xf
	str r4, [sp, #0xc]
	bl ov66_02248C2C
	b _0224E018
_0224DA50:
	cmp r0, #2
	bne _0224DA94
	ldr r2, [r5, #0x10]
	ldr r7, [r4, #4]
	cmp r2, #0
	beq _0224E018
	ldr r1, [r5, #0x18]
	mov r3, r4
	str r1, [sp]
	ldr r1, [r5, #0x20]
	mov r0, r6
	stmib sp, {r1, r7}
	mov r4, #0xc
	mov r1, #0x10
	str r4, [sp, #0xc]
	bl ov66_02248C2C
	b _0224E018
_0224DA94:
	cmp r0, #3
	bne _0224DB1C
	ldr r2, [r5, #0x10]
	ldr r7, [r5, #0x1c]
	cmp r2, #0
	beq _0224DADC
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x14
	mov r1, #0x13
	str r4, [sp, #0xc]
	bl ov66_02248C2C
_0224DADC:
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	ble _0224DB08
_0224DAEC:
	ldr r0, [r7, #8]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0224DAEC
_0224DB08:
	ldr r0, [r7, #8]
	bl ov4_021D78B0
	ldr r0, [r7, #0xc]
	bl ov4_021D78B0
	b _0224E018
_0224DB1C:
	cmp r0, #4
	bne _0224DBB4
	ldr r2, [r5, #0x10]
	ldr r7, [r5, #0x1c]
	cmp r2, #0
	beq _0224DB64
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x1c
	mov r1, #0x14
	str r4, [sp, #0xc]
	bl ov66_02248C2C
_0224DB64:
	ldr r0, [r7, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _0224DB90
_0224DB74:
	ldr r0, [r7, #0x10]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r7, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blt _0224DB74
_0224DB90:
	ldr r0, [r7, #0x10]
	bl ov4_021D78B0
	ldr r0, [r7, #4]
	bl ov4_021D78B0
	ldr r0, [r7, #8]
	bl ov4_021D78B0
	ldr r0, [r7, #0]
	bl ov4_021D78B0
	b _0224E018
_0224DBB4:
	cmp r0, #0xa
	bne _0224DBFC
	ldr r2, [r5, #0x10]
	cmp r2, #0
	beq _0224E018
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x10
	mov r1, #0x15
	str r4, [sp, #0xc]
	bl ov66_02248C2C
	b _0224E018
_0224DBFC:
	cmp r0, #0xb
	bne _0224DC44
	ldr r2, [r5, #0x10]
	cmp r2, #0
	beq _0224E018
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x10
	mov r1, #0x16
	str r4, [sp, #0xc]
	bl ov66_02248C2C
	b _0224E018
_0224DC44:
	cmp r0, #5
	bne _0224DC8C
	ldr r2, [r5, #0x10]
	cmp r2, #0
	beq _0224E018
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0xc
	mov r1, #0x11
	str r4, [sp, #0xc]
	bl ov66_02248C2C
	b _0224E018
_0224DC8C:
	cmp r0, #6
	bne _0224DCD4
	ldr r2, [r5, #0x10]
	cmp r2, #0
	beq _0224E018
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x10
	mov r1, #0x17
	str r4, [sp, #0xc]
	bl ov66_02248C2C
	b _0224E018
_0224DCD4:
	cmp r0, #7
	bne _0224DCEC
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl ov4_021D78B0
	b _0224E018
_0224DCEC:
	cmp r0, #8
	bne _0224DD64
	ldr r2, [r5, #0x10]
	ldr r7, [r5, #0x1c]
	cmp r2, #0
	beq _0224DD34
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x10
	mov r1, #0x18
	str r4, [sp, #0xc]
	bl ov66_02248C2C
_0224DD34:
	ldr r0, [r7, #0]
	mov r4, #0
	cmp r0, #0
	ble _0224E018
_0224DD44:
	ldr r0, [r7, #4]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r7, #0]
	add r4, r4, #1
	cmp r4, r0
	blt _0224DD44
	b _0224E018
_0224DD64:
	cmp r0, #9
	bne _0224DDAC
	ldr r2, [r5, #0x10]
	cmp r2, #0
	beq _0224E018
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0xc
	mov r1, #0x1a
	str r4, [sp, #0xc]
	bl ov66_02248C2C
	b _0224E018
_0224DDAC:
	cmp r0, #0xc
	bne _0224DE34
	ldr r2, [r5, #0x10]
	ldr r7, [r5, #0x1c]
	cmp r2, #0
	beq _0224DDF4
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x14
	mov r1, #0x1d
	str r4, [sp, #0xc]
	bl ov66_02248C2C
_0224DDF4:
	ldr r0, [r7, #8]
	bl ov4_021D78B0
	ldr r0, [r7, #0]
	mov r4, #0
	cmp r0, #0
	ble _0224DE28
_0224DE0C:
	ldr r0, [r7, #4]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r7, #0]
	add r4, r4, #1
	cmp r4, r0
	blt _0224DE0C
_0224DE28:
	ldr r0, [r7, #4]
	bl ov4_021D78B0
	b _0224E018
_0224DE34:
	cmp r0, #0xd
	bne _0224DEB4
	ldr r2, [r5, #0x10]
	ldr r7, [r5, #0x1c]
	cmp r2, #0
	beq _0224DE7C
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x18
	mov r1, #0x1e
	str r4, [sp, #0xc]
	bl ov66_02248C2C
_0224DE7C:
	ldr r0, [r7, #0]
	mov r4, #0
	cmp r0, #0
	ble _0224DEA8
_0224DE8C:
	ldr r0, [r7, #4]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r7, #0]
	add r4, r4, #1
	cmp r4, r0
	blt _0224DE8C
_0224DEA8:
	ldr r0, [r7, #4]
	bl ov4_021D78B0
	b _0224E018
_0224DEB4:
	cmp r0, #0xe
	bne _0224DF34
	ldr r2, [r5, #0x10]
	ldr r7, [r5, #0x1c]
	cmp r2, #0
	beq _0224DEFC
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x18
	mov r1, #0x1e
	str r4, [sp, #0xc]
	bl ov66_02248C2C
_0224DEFC:
	ldr r0, [r7, #0]
	mov r4, #0
	cmp r0, #0
	ble _0224DF28
_0224DF0C:
	ldr r0, [r7, #4]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r7, #0]
	add r4, r4, #1
	cmp r4, r0
	blt _0224DF0C
_0224DF28:
	ldr r0, [r7, #4]
	bl ov4_021D78B0
	b _0224E018
_0224DF34:
	cmp r0, #0xf
	bne _0224DFBC
	ldr r2, [r5, #0x10]
	ldr r7, [r5, #0x1c]
	cmp r2, #0
	beq _0224DF7C
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #0x10
	mov r1, #0x1b
	str r4, [sp, #0xc]
	bl ov66_02248C2C
_0224DF7C:
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	ble _0224DFA8
_0224DF8C:
	ldr r0, [r7, #8]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0224DF8C
_0224DFA8:
	ldr r0, [r7, #8]
	bl ov4_021D78B0
	ldr r0, [r7, #0xc]
	bl ov4_021D78B0
	b _0224E018
_0224DFBC:
	cmp r0, #0x10
	bne _0224E004
	ldr r2, [r5, #0x10]
	cmp r2, #0
	beq _0224E018
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r3, [r5, #0x20]
	mov r0, r6
	str r3, [sp, #4]
	mov r3, r4
	str r1, [sp, #8]
	mov r4, #8
	mov r1, #0x1f
	str r4, [sp, #0xc]
	bl ov66_02248C2C
	b _0224E018
_0224E004:
	ldr r0, _0224E044 ; =0x0225A590
	ldr r1, _0224E030 ; =0x0225A4D0
	ldr r2, _0224E034 ; =0x02259E84
	mov r3, #0x25c
	bl __msl_assertion_failed
_0224E018:
	mov r0, r6
	mov r1, r5
	bl ov66_0224D854
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E02C: .word 0x0225A554
_0224E030: .word 0x0225A4D0
_0224E034: .word 0x02259E84
_0224E038: .word 0x000001C1
_0224E03C: .word 0x0225A55C
_0224E040: .word 0x000001C2
_0224E044: .word 0x0225A590
	arm_func_end ov66_0224D908

	arm_func_start ov66_0224E048
ov66_0224E048: ; 0x0224E048
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x104
	movs r4, r1
	mov r5, r0
	bne _0224E070
	ldr r0, _0224E454 ; =0x0225A554
	ldr r1, _0224E458 ; =0x0225A4D0
	ldr r2, _0224E45C ; =0x02259F10
	mov r3, #0x268
	bl __msl_assertion_failed
_0224E070:
	ldr r0, [r4, #0]
	mov r1, #0
	cmp r0, #0
	blt _0224E088
	cmp r0, #0x11
	movlt r1, #1
_0224E088:
	cmp r1, #0
	bne _0224E0A4
	ldr r0, _0224E460 ; =0x0225A55C
	ldr r1, _0224E458 ; =0x0225A4D0
	ldr r2, _0224E45C ; =0x02259F10
	ldr r3, _0224E464 ; =0x00000269
	bl __msl_assertion_failed
_0224E0A4:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0224E0E0
	mov r3, #0
	add r2, sp, #0xf0
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0xf0]
	str r3, [sp, #0xf4]
	str r3, [sp, #0xf8]
	str r3, [sp, #0xfc]
	str r3, [sp, #0x100]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E0E0:
	cmp r0, #1
	bne _0224E118
	mov r1, #0
	mov r0, #7
	str r1, [sp, #0xe4]
	str r0, [sp, #0xe8]
	ldr r3, [r4, #8]
	add r2, sp, #0xe4
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0xec]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E118:
	cmp r0, #2
	bne _0224E14C
	mov ip, #0
	str ip, [sp, #0xd8]
	ldr r3, [r4, #8]
	add r2, sp, #0xd8
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0xdc]
	str ip, [sp, #0xe0]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E14C:
	cmp r0, #3
	bne _0224E188
	mov ip, #0
	str ip, [sp, #0xc4]
	ldr r3, [r4, #8]
	add r2, sp, #0xc4
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0xc8]
	str ip, [sp, #0xcc]
	str ip, [sp, #0xd0]
	str ip, [sp, #0xd4]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E188:
	cmp r0, #4
	bne _0224E1CC
	mov ip, #0
	str ip, [sp, #0xa8]
	ldr r3, [r4, #8]
	add r2, sp, #0xa8
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0xac]
	str ip, [sp, #0xb0]
	str ip, [sp, #0xb4]
	str ip, [sp, #0xb8]
	str ip, [sp, #0xbc]
	str ip, [sp, #0xc0]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E1CC:
	cmp r0, #0xa
	bne _0224E204
	mov ip, #0
	str ip, [sp, #0x98]
	ldr r3, [r4, #8]
	add r2, sp, #0x98
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0x9c]
	str ip, [sp, #0xa0]
	str ip, [sp, #0xa4]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E204:
	cmp r0, #0xb
	bne _0224E240
	mov ip, #0
	str ip, [sp, #0x84]
	ldr r3, [r4, #8]
	add r2, sp, #0x84
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0x88]
	str ip, [sp, #0x8c]
	str ip, [sp, #0x90]
	str ip, [sp, #0x94]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E240:
	cmp r0, #5
	bne _0224E274
	mov ip, #0
	str ip, [sp, #0x78]
	ldr r3, [r4, #8]
	add r2, sp, #0x78
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0x7c]
	str ip, [sp, #0x80]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E274:
	cmp r0, #6
	bne _0224E2B0
	mov ip, #0
	str ip, [sp, #0x68]
	ldr r0, [r4, #0xc]
	add r2, sp, #0x68
	str r0, [sp, #0x6c]
	ldr r3, [r4, #8]
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0x70]
	str ip, [sp, #0x74]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E2B0:
	cmp r0, #7
	bne _0224E2D0
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E2D0:
	cmp r0, #8
	bne _0224E304
	ldr ip, [r4, #8]
	mov r3, #0
	add r2, sp, #0x58
	mov r0, r5
	mov r1, r4
	str ip, [sp, #0x5c]
	str r3, [sp, #0x60]
	str r3, [sp, #0x64]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E304:
	cmp r0, #9
	bne _0224E33C
	mov r0, #0
	str r0, [sp, #0x4c]
	ldr r0, [r4, #8]
	add r2, sp, #0x4c
	str r0, [sp, #0x50]
	ldr r3, [r4, #0xc]
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0x54]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E33C:
	cmp r0, #0xc
	bne _0224E374
	mov r3, #0
	add r2, sp, #0x38
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0x38]
	str r3, [sp, #0x3c]
	str r3, [sp, #0x40]
	str r3, [sp, #0x44]
	str r3, [sp, #0x48]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E374:
	cmp r0, #0xd
	bne _0224E3B0
	mov r3, #0
	add r2, sp, #0x20
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	str r3, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r3, [sp, #0x34]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E3B0:
	cmp r0, #0xe
	bne _0224E3EC
	mov r3, #0
	add r2, sp, #8
	mov r0, r5
	mov r1, r4
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E3EC:
	cmp r0, #0xf
	bne _0224E408
	mov r0, r5
	mov r1, r4
	bl ov66_0224D854
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E408:
	cmp r0, #0x10
	bne _0224E438
	ldr r3, _0224E468 ; =0x0225A594
	mov ip, #0
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	str ip, [sp]
	str r3, [sp, #4]
	bl ov66_0224D908
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
_0224E438:
	ldr r0, _0224E46C ; =0x0225A590
	ldr r1, _0224E458 ; =0x0225A4D0
	ldr r2, _0224E45C ; =0x02259F10
	ldr r3, _0224E470 ; =0x00000311
	bl __msl_assertion_failed
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0224E454: .word 0x0225A554
_0224E458: .word 0x0225A4D0
_0224E45C: .word 0x02259F10
_0224E460: .word 0x0225A55C
_0224E464: .word 0x00000269
_0224E468: .word 0x0225A594
_0224E46C: .word 0x0225A590
_0224E470: .word 0x00000311
	arm_func_end ov66_0224E048

	arm_func_start ov66_0224E474
ov66_0224E474: ; 0x0224E474
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	bne _0224E494
	ldr r0, _0224E4D0 ; =0x0225A4C0
	ldr r1, _0224E4D4 ; =0x0225A4D0
	ldr r2, _0224E4D8 ; =0x02259DC4
	ldr r3, _0224E4DC ; =0x0000031A
	bl __msl_assertion_failed
_0224E494:
	bl ov4_021EA840
	ldr r1, [r6, #0x814]
	mov r5, r0
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_0224E4A8:
	ldr r0, [r1, #4]
	ldr r4, [r1, #0x24]
	cmp r5, r0
	bls _0224E4C0
	mov r0, r6
	bl ov66_0224E048
_0224E4C0:
	mov r1, r4
	cmp r4, #0
	bne _0224E4A8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0224E4D0: .word 0x0225A4C0
_0224E4D4: .word 0x0225A4D0
_0224E4D8: .word 0x02259DC4
_0224E4DC: .word 0x0000031A
	arm_func_end ov66_0224E474

	arm_func_start ov66_0224E4E0
ov66_0224E4E0: ; 0x0224E4E0
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _0224E500
	ldr r0, _0224E51C ; =0x0225A4C0
	ldr r1, _0224E520 ; =0x0225A4D0
	ldr r2, _0224E524 ; =0x02259D60
	ldr r3, _0224E528 ; =0x0000032D
	bl __msl_assertion_failed
_0224E500:
	ldr r0, [r4, #0x81c]
	mvn r1, #0x80000000
	cmp r0, r1
	moveq r1, #1
	addne r1, r0, #1
	str r1, [r4, #0x81c]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224E51C: .word 0x0225A4C0
_0224E520: .word 0x0225A4D0
_0224E524: .word 0x02259D60
_0224E528: .word 0x0000032D
	arm_func_end ov66_0224E4E0

	arm_func_start ov66_0224E52C
ov66_0224E52C: ; 0x0224E52C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224E550
	ldr r0, _0224E59C ; =0x0225A4C0
	ldr r1, _0224E5A0 ; =0x0225A4D0
	ldr r2, _0224E5A4 ; =0x02259FB0
	mov r3, #0x340
	bl __msl_assertion_failed
_0224E550:
	cmp r4, #0
	bgt _0224E56C
	ldr r0, _0224E5A8 ; =0x0225A5A0
	ldr r1, _0224E5A0 ; =0x0225A4D0
	ldr r2, _0224E5A4 ; =0x02259FB0
	ldr r3, _0224E5AC ; =0x00000342
	bl __msl_assertion_failed
_0224E56C:
	ldr r1, [r5, #0x814]
	cmp r1, #0
	beq _0224E594
_0224E578:
	ldr r0, [r1, #0x20]
	cmp r0, r4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r1, #0x24]
	cmp r1, #0
	bne _0224E578
_0224E594:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224E59C: .word 0x0225A4C0
_0224E5A0: .word 0x0225A4D0
_0224E5A4: .word 0x02259FB0
_0224E5A8: .word 0x0225A5A0
_0224E5AC: .word 0x00000342
	arm_func_end ov66_0224E52C

	arm_func_start ov66_0224E5B0
ov66_0224E5B0: ; 0x0224E5B0
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _0224E5D0
	ldr r0, _0224E5F4 ; =0x0225A4C0
	ldr r1, _0224E5F8 ; =0x0225A4D0
	ldr r2, _0224E5FC ; =0x02259ED4
	ldr r3, _0224E600 ; =0x00000353
	bl __msl_assertion_failed
_0224E5D0:
	ldr r1, [r4, #0x814]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
_0224E5DC:
	mov r0, r4
	bl ov66_0224E048
	ldr r1, [r4, #0x814]
	cmp r1, #0
	bne _0224E5DC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224E5F4: .word 0x0225A4C0
_0224E5F8: .word 0x0225A4D0
_0224E5FC: .word 0x02259ED4
_0224E600: .word 0x00000353
	arm_func_end ov66_0224E5B0

	arm_func_start ov66_0224E604
ov66_0224E604: ; 0x0224E604
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r0
	mov r8, r1
	mov r6, r2
	mov r5, r3
	bne _0224E630
	ldr r0, _0224E6E0 ; =0x0225A4C0
	ldr r1, _0224E6E4 ; =0x0225A4D0
	ldr r2, _0224E6E8 ; =0x02259D6C
	mov r3, #0x35c
	bl __msl_assertion_failed
_0224E630:
	mov r0, #0x28
	bl ov4_021D7880
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0
	mov r2, #0x28
	bl memset
	str r8, [r4]
	bl ov4_021EA840
	add r0, r0, #0xa60
	add r0, r0, #0xe000
	str r0, [r4, #4]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	cmp r6, #0
	moveq r0, #0
	beq _0224E698
	mov r0, r6
	bl ov4_021EA8AC
_0224E698:
	str r0, [r4, #8]
	cmp r5, #0
	moveq r0, #0
	beq _0224E6B0
	mov r0, r5
	bl ov4_021EA8AC
_0224E6B0:
	str r0, [r4, #0xc]
	mov r0, r7
	bl ov66_0224E4E0
	str r0, [r4, #0x20]
	ldr r0, [r7, #0x814]
	cmp r0, #0
	streq r4, [r7, #0x814]
	ldrne r0, [r7, #0x818]
	strne r4, [r0, #0x24]
	str r4, [r7, #0x818]
	ldr r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0224E6E0: .word 0x0225A4C0
_0224E6E4: .word 0x0225A4D0
_0224E6E8: .word 0x02259D6C
	arm_func_end ov66_0224E604

	arm_func_start ov66_0224E6EC
ov66_0224E6EC: ; 0x0224E6EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r0, #0x14
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021D7880
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r3, r0
	mov r2, #5
	mov r1, #0
_0224E728:
	strb r1, [r3]
	strb r1, [r3, #1]
	strb r1, [r3, #2]
	strb r1, [r3, #3]
	add r3, r3, #4
	subs r2, r2, #1
	bne _0224E728
	str r6, [sp]
	str r5, [sp, #4]
	mov r1, #0
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r2, r1
	mov r3, r1
	bl ov66_0224E604
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_0224E6EC

	arm_func_start ov66_0224E770
ov66_0224E770: ; 0x0224E770
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r8, [sp, #0x2c]
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r8, #0
	bne _0224E7A8
	ldr r0, _0224E85C ; =0x0225A5A8
	ldr r1, _0224E860 ; =0x0225A4D0
	ldr r2, _0224E864 ; =0x02259E94
	ldr r3, _0224E868 ; =0x00000391
	bl __msl_assertion_failed
_0224E7A8:
	ldr r0, [sp, #0x2c]
	bl strlen
	cmp r0, #0x20
	blo _0224E7CC
	ldr r0, _0224E86C ; =0x0225A5BC
	ldr r1, _0224E860 ; =0x0225A4D0
	ldr r2, _0224E864 ; =0x02259E94
	ldr r3, _0224E870 ; =0x00000392
	bl __msl_assertion_failed
_0224E7CC:
	mov r0, #0x54
	bl ov4_021D7880
	movs r8, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0
	mov r2, #0x54
	bl memset
	ldr lr, [sp, #0x28]
	mov ip, r8
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r1, [sp, #0x2c]
	add r0, r8, #0x34
	mov r2, #0x20
	bl strncpy
	mov r3, #0
	strb r3, [r8, #0x53]
	str r5, [sp]
	mov r0, r7
	mov r2, r6
	mov r1, #1
	stmib sp, {r3, r4, r8}
	bl ov66_0224E604
	movs r4, r0
	bne _0224E850
	mov r0, r8
	bl ov4_021D78B0
_0224E850:
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0224E85C: .word 0x0225A5A8
_0224E860: .word 0x0225A4D0
_0224E864: .word 0x02259E94
_0224E868: .word 0x00000391
_0224E86C: .word 0x0225A5BC
_0224E870: .word 0x00000392
	arm_func_end ov66_0224E770

	arm_func_start ov66_0224E874
ov66_0224E874: ; 0x0224E874
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r0, #0x10
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021D7880
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r3, r0
	mov r2, #4
	mov r1, #0
_0224E8B0:
	strb r1, [r3]
	strb r1, [r3, #1]
	strb r1, [r3, #2]
	strb r1, [r3, #3]
	add r3, r3, #4
	subs r2, r2, #1
	bne _0224E8B0
	str r5, [sp]
	mov r3, #0
	stmib sp, {r3, r4}
	str r0, [sp, #0xc]
	mov r0, r7
	mov r2, r6
	mov r1, #3
	bl ov66_0224E604
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_0224E874

	arm_func_start ov66_0224E8F4
ov66_0224E8F4: ; 0x0224E8F4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	str r2, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str r3, [sp, #8]
	mov r2, r1
	mov r3, ip
	mov r1, #5
	str ip, [sp, #0xc]
	bl ov66_0224E604
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov66_0224E8F4

	arm_func_start ov66_0224E928
ov66_0224E928: ; 0x0224E928
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov fp, r0
	mov r0, #0x10
	str r1, [sp, #0x10]
	mov sl, r2
	mov sb, r3
	bl ov4_021D7880
	movs r7, r0
	addeq sp, sp, #0x14
	mov r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r2, r7
	mov r1, #4
_0224E960:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _0224E960
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	str r1, [r7, #0xc]
	str sl, [r7]
	str r0, [r7, #8]
	cmp r1, #0
	ldrne r0, [r7]
	subne r0, r0, #1
	strne r0, [r7]
	ldr r0, [r7, #0]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #4]
	cmp r0, #0
	bne _0224E9CC
	mov r0, r7
	bl ov4_021D78B0
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0224E9CC:
	mov r5, #0
	mov r6, r5
	cmp sl, #0
	ble _0224EA60
	ldr r4, _0224EA98 ; =0x0225A5DC
_0224E9E0:
	ldr r8, [sb, r5, lsl #2]
	mov r1, r4
	mov r0, r8
	bl strcmp
	cmp r0, #0
	beq _0224EA54
	mov r0, r8
	bl ov4_021EA8AC
	ldr r1, [r7, #4]
	str r0, [r1, r6, lsl #2]
	ldr r0, [r7, #4]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	bne _0224EA50
	subs r6, r6, #1
	bmi _0224EA34
_0224EA20:
	ldr r0, [r7, #4]
	ldr r0, [r0, r6, lsl #2]
	bl ov4_021D78B0
	subs r6, r6, #1
	bpl _0224EA20
_0224EA34:
	ldr r0, [r7, #4]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0224EA50:
	add r6, r6, #1
_0224EA54:
	add r5, r5, #1
	cmp r5, sl
	blt _0224E9E0
_0224EA60:
	ldr r0, [sp, #0x40]
	str r6, [r7, #0]
	str r0, [sp]
	mov r3, #0
	ldr r0, [sp, #0x44]
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, fp
	mov r1, #0xd
	str r7, [sp, #0xc]
	bl ov66_0224E604
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0224EA98: .word 0x0225A5DC
	arm_func_end ov66_0224E928

	arm_func_start ov66_0224EA9C
ov66_0224EA9C: ; 0x0224EA9C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov fp, r0
	mov r0, #0xc
	str r1, [sp, #0x10]
	mov sl, r2
	mov sb, r3
	bl ov4_021D7880
	movs r7, r0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, #0
	strb r1, [r7]
	strb r1, [r7, #1]
	strb r1, [r7, #2]
	strb r1, [r7, #3]
	strb r1, [r7, #4]
	strb r1, [r7, #5]
	strb r1, [r7, #6]
	strb r1, [r7, #7]
	strb r1, [r7, #8]
	strb r1, [r7, #9]
	strb r1, [r7, #0xa]
	ldr r0, [sp, #0x38]
	strb r1, [r7, #0xb]
	str r0, [r7, #8]
	str sl, [r7]
	cmp r0, #0
	ldrne r0, [r7]
	subne r0, r0, #1
	strne r0, [r7]
	ldr r0, [r7, #0]
	cmp r0, #0
	beq _0224EBE8
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r7, #4]
	cmp r0, #0
	bne _0224EB50
	mov r0, r7
	bl ov4_021D78B0
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0224EB50:
	mov r5, #0
	mov r6, r5
	cmp sl, #0
	ble _0224EBE4
	ldr r4, _0224EC1C ; =0x0225A5DC
_0224EB64:
	ldr r8, [sb, r5, lsl #2]
	mov r1, r4
	mov r0, r8
	bl strcmp
	cmp r0, #0
	beq _0224EBD8
	mov r0, r8
	bl ov4_021EA8AC
	ldr r1, [r7, #4]
	str r0, [r1, r6, lsl #2]
	ldr r0, [r7, #4]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	bne _0224EBD4
	subs r6, r6, #1
	bmi _0224EBB8
_0224EBA4:
	ldr r0, [r7, #4]
	ldr r0, [r0, r6, lsl #2]
	bl ov4_021D78B0
	subs r6, r6, #1
	bpl _0224EBA4
_0224EBB8:
	ldr r0, [r7, #4]
	bl ov4_021D78B0
	mov r0, r7
	bl ov4_021D78B0
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0224EBD4:
	add r6, r6, #1
_0224EBD8:
	add r5, r5, #1
	cmp r5, sl
	blt _0224EB64
_0224EBE4:
	str r6, [r7, #0]
_0224EBE8:
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, fp
	mov r1, #0xe
	str r7, [sp, #0xc]
	bl ov66_0224E604
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0224EC1C: .word 0x0225A5DC
	arm_func_end ov66_0224EA9C

	arm_func_start ov66_0224EC20
ov66_0224EC20: ; 0x0224EC20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r3, #0
	str r3, [sp, #4]
	movs fp, r0
	str r1, [sp]
	mov sb, r2
	mov r8, r3
	mov r7, r3
	bne _0224EC5C
	ldr r0, _0224EEC4 ; =0x0225A5E0
	ldr r1, _0224EEC8 ; =0x0225A4D0
	ldr r2, _0224EECC ; =0x02259D78
	ldr r3, _0224EED0 ; =0x00000494
	bl __msl_assertion_failed
_0224EC5C:
	ldrsb r0, [fp]
	cmp r0, #0x2b
	moveq sl, #1
	beq _0224EC84
	cmp r0, #0x2d
	moveq sl, #0
	beq _0224EC84
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0224EC84:
	add fp, fp, #1
	mvn r4, #0
_0224EC8C:
	ldrsb r5, [fp], #1
	cmp r5, #0x2d
	bgt _0224ECBC
	cmp r5, #0x2b
	blt _0224ECB0
	beq _0224ED28
	cmp r5, #0x2d
	beq _0224ED34
	b _0224EDF4
_0224ECB0:
	cmp r5, #0
	beq _0224ED40
	b _0224EDF4
_0224ECBC:
	cmp r5, #0x62
	bgt _0224ECCC
	beq _0224EDC4
	b _0224EDF4
_0224ECCC:
	sub r0, r5, #0x65
	cmp r0, #0x12
	addls pc, pc, r0, lsl #2
	b _0224EDF4
_0224ECDC: ; jump table
	b _0224EDE8 ; case 0
	b _0224EDF4 ; case 1
	b _0224EDF4 ; case 2
	b _0224EDF4 ; case 3
	b _0224ED4C ; case 4
	b _0224EDF4 ; case 5
	b _0224ED7C ; case 6
	b _0224ED58 ; case 7
	b _0224ED88 ; case 8
	b _0224ED94 ; case 9
	b _0224EDAC ; case 10
	b _0224ED64 ; case 11
	b _0224EDF4 ; case 12
	b _0224EDF4 ; case 13
	b _0224ED70 ; case 14
	b _0224EDA0 ; case 15
	b _0224EDD0 ; case 16
	b _0224EDB8 ; case 17
	b _0224EDDC ; case 18
_0224ED28:
	mov sl, #1
	mov r6, r4
	b _0224EDF8
_0224ED34:
	mov sl, #0
	mov r6, r4
	b _0224EDF8
_0224ED40:
	mov r6, #0
	mov r7, r6
	b _0224EDF8
_0224ED4C:
	mov r6, #2
	mov r7, #0
	b _0224EDF8
_0224ED58:
	mov r6, #3
	mov r7, #1
	b _0224EDF8
_0224ED64:
	mov r6, #4
	mov r7, #0
	b _0224EDF8
_0224ED70:
	mov r6, #5
	mov r7, #0
	b _0224EDF8
_0224ED7C:
	mov r6, #6
	mov r7, #1
	b _0224EDF8
_0224ED88:
	mov r6, #7
	mov r7, #0
	b _0224EDF8
_0224ED94:
	mov r6, #8
	mov r7, #0
	b _0224EDF8
_0224EDA0:
	mov r6, #9
	mov r7, #0
	b _0224EDF8
_0224EDAC:
	mov r6, #0xa
	mov r7, #1
	b _0224EDF8
_0224EDB8:
	mov r6, #0xb
	mov r7, #1
	b _0224EDF8
_0224EDC4:
	mov r6, #1
	mov r7, r6
	b _0224EDF8
_0224EDD0:
	mov r6, #0xc
	mov r7, #0
	b _0224EDF8
_0224EDDC:
	mov r6, #0xd
	mov r7, #0
	b _0224EDF8
_0224EDE8:
	mov r6, #0xe
	mov r7, #0
	b _0224EDF8
_0224EDF4:
	mov r6, r4
_0224EDF8:
	cmp r6, r4
	beq _0224EEB0
	add r2, r8, #1
	mov r1, #0xc
	mul r1, r2, r1
	ldr r0, [sp, #4]
	bl ov4_021D7894
	cmp r0, #0
	bne _0224EE30
	ldr r0, [sp, #4]
	bl ov4_021D78B0
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0224EE30:
	mov r1, #0xc
	mul r1, r8, r1
	mov r2, #0
	strb r2, [r0, r1]
	add r2, r0, r1
	mov r3, #0
	strb r3, [r2, #1]
	strb r3, [r2, #2]
	strb r3, [r2, #3]
	strb r3, [r2, #4]
	strb r3, [r2, #5]
	strb r3, [r2, #6]
	strb r3, [r2, #7]
	strb r3, [r2, #8]
	strb r3, [r2, #9]
	strb r3, [r2, #0xa]
	strb r3, [r2, #0xb]
	str sl, [r2, #4]
	cmp r7, #0
	str r0, [sp, #4]
	add r8, r8, #1
	str r6, [r0, r1]
	beq _0224EEB0
	cmp sb, #0
	movle r0, r3
	strle r0, [r2, #8]
	ble _0224EEB0
	ldr r0, [sp]
	sub sb, sb, #1
	ldr r1, [r0, #0], #4
	str r0, [sp]
	str r1, [r2, #8]
_0224EEB0:
	cmp r5, #0
	bne _0224EC8C
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0224EEC4: .word 0x0225A5E0
_0224EEC8: .word 0x0225A4D0
_0224EECC: .word 0x02259D78
_0224EED0: .word 0x00000494
	arm_func_end ov66_0224EC20

	arm_func_start ov66_0224EED4
ov66_0224EED4: ; 0x0224EED4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r1
	ldr r1, [r8]
	mov sb, r0
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r6, _0224EFE8 ; =0x0225A590
	ldr r5, _0224EFEC ; =0x0225A4D0
	ldr r4, _0224EFF0 ; =0x0225A028
	ldr sl, _0224EFF4 ; =0x0000056C
	mov r7, #0
_0224EF00:
	ldr r0, [r8]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _0224EFC4
_0224EF10: ; jump table
	b _0224EFC4 ; case 0
	b _0224EFD8 ; case 1
	b _0224EF4C ; case 2
	b _0224EF58 ; case 3
	b _0224EF7C ; case 4
	b _0224EF88 ; case 5
	b _0224EFD8 ; case 6
	b _0224EF94 ; case 7
	b _0224EFA0 ; case 8
	b _0224EFAC ; case 9
	b _0224EFD8 ; case 10
	b _0224EFD8 ; case 11
	b _0224EFD8 ; case 12
	b _0224EFD8 ; case 13
	b _0224EFB8 ; case 14
_0224EF4C:
	ldr r0, [r8, #4]
	str r0, [sb]
	b _0224EFD8
_0224EF58:
	ldr r0, [r8, #4]
	cmp r0, #0
	ldrne r0, [r8, #8]
	cmpne r0, #0
	streq r7, [sb, #0x1c]
	beq _0224EFD8
	bl atoi
	str r0, [sb, #0x1c]
	b _0224EFD8
_0224EF7C:
	ldr r0, [r8, #4]
	str r0, [sb, #4]
	b _0224EFD8
_0224EF88:
	ldr r0, [r8, #4]
	str r0, [sb, #8]
	b _0224EFD8
_0224EF94:
	ldr r0, [r8, #4]
	str r0, [sb, #0xc]
	b _0224EFD8
_0224EFA0:
	ldr r0, [r8, #4]
	str r0, [sb, #0x10]
	b _0224EFD8
_0224EFAC:
	ldr r0, [r8, #4]
	str r0, [sb, #0x14]
	b _0224EFD8
_0224EFB8:
	ldr r0, [r8, #4]
	str r0, [sb, #0x18]
	b _0224EFD8
_0224EFC4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, sl
	bl __msl_assertion_failed
_0224EFD8:
	ldr r0, [r8, #0xc]!
	cmp r0, #0
	bne _0224EF00
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_0224EFE8: .word 0x0225A590
_0224EFEC: .word 0x0225A4D0
_0224EFF0: .word 0x0225A028
_0224EFF4: .word 0x0000056C
	arm_func_end ov66_0224EED4

	arm_func_start ov66_0224EFF8
ov66_0224EFF8: ; 0x0224EFF8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x2c
	movs sb, r0
	mov r4, r1
	mov r7, #0
	bne _0224F024
	ldr r0, _0224F1EC ; =0x0225A4C0
	ldr r1, _0224F1F0 ; =0x0225A4D0
	ldr r2, _0224F1F4 ; =0x02259EE8
	ldr r3, _0224F1F8 ; =0x0000057C
	bl __msl_assertion_failed
_0224F024:
	ldr r0, [r4, #0x24]
	cmp r0, #2
	beq _0224F044
	ldr r0, _0224F1FC ; =0x0225A5F0
	ldr r1, _0224F1F0 ; =0x0225A4D0
	ldr r2, _0224F1F4 ; =0x02259EE8
	ldr r3, _0224F200 ; =0x00000582
	bl __msl_assertion_failed
_0224F044:
	ldr r0, [r4, #0x24]
	cmp r0, #2
	addne sp, sp, #0x2c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r4, #0x20]
	ldr r6, [r4, #8]
	ldmia r0, {r5, r8}
	mov r0, r8
	bl strlen
	ldrsb r1, [r8]
	ldr r4, _0224F204 ; =0x0225A608
	cmp r1, #1
	bne _0224F0D8
	ldrsb r1, [r8, #1]
	cmp r1, #0x41
	blt _0224F08C
	cmp r1, #0x5a
	ble _0224F09C
_0224F08C:
	cmp r1, #0x61
	blt _0224F0D8
	cmp r1, #0x7a
	bgt _0224F0D8
_0224F09C:
	sub r3, r0, #1
	ldrsb r0, [r8, r3]
	cmp r0, #1
	bne _0224F0D8
	mov r2, #0
	mov r0, r8
	mov r1, #0x20
	strb r2, [r8, r3]
	bl strchr
	cmp r0, #0
	beq _0224F0D8
	mov r1, #0
	add r4, r8, #1
	strb r1, [r0]
	add r8, r0, #1
_0224F0D8:
	ldr r1, _0224F208 ; =0x0225A60C
	mov r0, r4
	bl strcmp
	cmp r0, #0
	moveq r7, #1
	beq _0224F100
	ldrsb r0, [r4]
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0224F100:
	mov r0, r5
	add r1, sb, #0x36c
	bl strcasecmp
	cmp r0, #0
	bne _0224F178
	ldr r0, [sb, #0x800]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r7, #0
	movne r0, #1
	strne r0, [sp, #0x28]
	moveq r0, #0
	streq r0, [sp, #0x28]
	str r6, [sp, #0x20]
	str r8, [sp, #0x24]
	ldr r1, [sb, #0x808]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [sb, #0x800]
	add r3, sp, #0x20
	mov r0, sb
	mov r1, #2
	bl ov66_02248C2C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0224F178:
	mov r0, sb
	mov r1, r5
	bl ov66_0224BD94
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r7, #0
	movne r1, #1
	strne r1, [sp, #0x1c]
	moveq r1, #0
	streq r1, [sp, #0x1c]
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	str r8, [sp, #0x18]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r5}
	mov r1, #0x10
	str r1, [sp, #0xc]
	ldr r2, [r0, #0]
	add r3, sp, #0x10
	mov r0, sb
	mov r1, #4
	bl ov66_02248C2C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0224F1EC: .word 0x0225A4C0
_0224F1F0: .word 0x0225A4D0
_0224F1F4: .word 0x02259EE8
_0224F1F8: .word 0x0000057C
_0224F1FC: .word 0x0225A5F0
_0224F200: .word 0x00000582
_0224F204: .word 0x0225A608
_0224F208: .word 0x0225A60C
	arm_func_end ov66_0224EFF8

	arm_func_start ov66_0224F20C
ov66_0224F20C: ; 0x0224F20C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	movs r7, r0
	mov r6, r1
	bne _0224F234
	ldr r0, _0224F35C ; =0x0225A4C0
	ldr r1, _0224F360 ; =0x0225A4D0
	ldr r2, _0224F364 ; =0x02259EA4
	ldr r3, _0224F368 ; =0x000005EA
	bl __msl_assertion_failed
_0224F234:
	ldr r0, [r6, #0x24]
	cmp r0, #2
	beq _0224F254
	ldr r0, _0224F36C ; =0x0225A5F0
	ldr r1, _0224F360 ; =0x0225A4D0
	ldr r2, _0224F364 ; =0x02259EA4
	mov r3, #0x5f0
	bl __msl_assertion_failed
_0224F254:
	ldr r0, [r6, #0x24]
	cmp r0, #2
	addne sp, sp, #0x2c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x20]
	add r1, r7, #0x36c
	ldmia r0, {r4, r5}
	mov r0, r4
	bl strcasecmp
	cmp r0, #0
	bne _0224F2E4
	ldr r0, [r7, #0x800]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6, #8]
	mov r1, #2
	cmp r0, #0
	strne r0, [sp, #0x20]
	moveq r0, #0
	streq r0, [sp, #0x20]
	str r5, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r2, [r7, #0x808]
	mov r0, #0
	str r2, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r7, #0x800]
	add r3, sp, #0x20
	mov r0, r7
	bl ov66_02248C2C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
_0224F2E4:
	mov r0, r7
	mov r1, r4
	bl ov66_0224BD94
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r4, [sp, #0x10]
	ldr r1, [r6, #8]
	add r3, sp, #0x10
	cmp r1, #0
	strne r1, [sp, #0x14]
	moveq r1, #0
	streq r1, [sp, #0x14]
	mov r1, #2
	str r1, [sp, #0x1c]
	str r5, [sp, #0x18]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r4}
	mov r1, #0x10
	str r1, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r0, r7
	mov r1, #4
	bl ov66_02248C2C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F35C: .word 0x0225A4C0
_0224F360: .word 0x0225A4D0
_0224F364: .word 0x02259EA4
_0224F368: .word 0x000005EA
_0224F36C: .word 0x0225A5F0
	arm_func_end ov66_0224F20C

	arm_func_start ov66_0224F370
ov66_0224F370: ; 0x0224F370
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	movs r7, r0
	mov r6, r1
	bne _0224F398
	ldr r0, _0224F4C4 ; =0x0225A4C0
	ldr r1, _0224F4C8 ; =0x0225A4D0
	ldr r2, _0224F4CC ; =0x02259D94
	ldr r3, _0224F4D0 ; =0x0000061F
	bl __msl_assertion_failed
_0224F398:
	ldr r0, [r6, #0x24]
	cmp r0, #2
	beq _0224F3B8
	ldr r0, _0224F4D4 ; =0x0225A5F0
	ldr r1, _0224F4C8 ; =0x0225A4D0
	ldr r2, _0224F4CC ; =0x02259D94
	ldr r3, _0224F4D8 ; =0x00000625
	bl __msl_assertion_failed
_0224F3B8:
	ldr r0, [r6, #0x24]
	cmp r0, #2
	addne sp, sp, #0x2c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x20]
	add r1, r7, #0x36c
	ldmia r0, {r4, r5}
	mov r0, r4
	bl strcasecmp
	cmp r0, #0
	bne _0224F44C
	ldr r0, [r7, #0x800]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6, #8]
	add r3, sp, #0x20
	cmp r0, #0
	strne r0, [sp, #0x20]
	moveq r0, #0
	streq r0, [sp, #0x20]
	mov r0, #3
	str r0, [sp, #0x28]
	str r5, [sp, #0x24]
	ldr r1, [r7, #0x808]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r7, #0x800]
	mov r0, r7
	mov r1, #2
	bl ov66_02248C2C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
_0224F44C:
	mov r0, r7
	mov r1, r4
	bl ov66_0224BD94
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r4, [sp, #0x10]
	ldr r1, [r6, #8]
	add r3, sp, #0x10
	cmp r1, #0
	strne r1, [sp, #0x14]
	moveq r1, #0
	streq r1, [sp, #0x14]
	mov r1, #3
	str r1, [sp, #0x1c]
	str r5, [sp, #0x18]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r4}
	mov r1, #0x10
	str r1, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r0, r7
	mov r1, #4
	bl ov66_02248C2C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F4C4: .word 0x0225A4C0
_0224F4C8: .word 0x0225A4D0
_0224F4CC: .word 0x02259D94
_0224F4D0: .word 0x0000061F
_0224F4D4: .word 0x0225A5F0
_0224F4D8: .word 0x00000625
	arm_func_end ov66_0224F370

	arm_func_start ov66_0224F4DC
ov66_0224F4DC: ; 0x0224F4DC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	movs r7, r0
	mov r6, r1
	bne _0224F504
	ldr r0, _0224F62C ; =0x0225A4C0
	ldr r1, _0224F630 ; =0x0225A4D0
	ldr r2, _0224F634 ; =0x02259DA4
	ldr r3, _0224F638 ; =0x00000654
	bl __msl_assertion_failed
_0224F504:
	ldr r0, [r6, #0x24]
	cmp r0, #2
	beq _0224F524
	ldr r0, _0224F63C ; =0x0225A5F0
	ldr r1, _0224F630 ; =0x0225A4D0
	ldr r2, _0224F634 ; =0x02259DA4
	ldr r3, _0224F640 ; =0x0000065A
	bl __msl_assertion_failed
_0224F524:
	ldr r0, [r6, #0x24]
	cmp r0, #2
	addne sp, sp, #0x2c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x20]
	add r1, r7, #0x36c
	ldmia r0, {r4, r5}
	mov r0, r4
	bl strcasecmp
	cmp r0, #0
	bne _0224F5B8
	ldr r0, [r7, #0x800]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6, #8]
	add r3, sp, #0x20
	cmp r0, #0
	strne r0, [sp, #0x20]
	moveq r0, #0
	streq r0, [sp, #0x20]
	mov r0, #4
	str r0, [sp, #0x28]
	str r5, [sp, #0x24]
	ldr r1, [r7, #0x808]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r7, #0x800]
	mov r0, r7
	mov r1, #2
	bl ov66_02248C2C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
_0224F5B8:
	mov r0, r7
	mov r1, r4
	bl ov66_0224BD94
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r4, [sp, #0x10]
	ldr r1, [r6, #8]
	mov r2, #0
	cmp r1, #0
	strne r1, [sp, #0x14]
	moveq r1, #0
	streq r1, [sp, #0x14]
	mov r1, #4
	str r5, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r3, [r0, #0x2c]
	str r3, [sp]
	stmib sp, {r2, r4}
	mov r2, #0x10
	str r2, [sp, #0xc]
	ldr r2, [r0, #0]
	add r3, sp, #0x10
	mov r0, r7
	bl ov66_02248C2C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224F62C: .word 0x0225A4C0
_0224F630: .word 0x0225A4D0
_0224F634: .word 0x02259DA4
_0224F638: .word 0x00000654
_0224F63C: .word 0x0225A5F0
_0224F640: .word 0x0000065A
	arm_func_end ov66_0224F4DC

	arm_func_start ov66_0224F644
ov66_0224F644: ; 0x0224F644
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224F668
	ldr r0, _0224F67C ; =0x0225A4C0
	ldr r1, _0224F680 ; =0x0225A4D0
	ldr r2, _0224F684 ; =0x02259DD4
	ldr r3, _0224F688 ; =0x00000687
	bl __msl_assertion_failed
_0224F668:
	ldr r2, [r4, #0x1c]
	ldr r1, _0224F68C ; =0x0225A614
	add r0, r5, #0x1c
	bl ov66_02256E70
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224F67C: .word 0x0225A4C0
_0224F680: .word 0x0225A4D0
_0224F684: .word 0x02259DD4
_0224F688: .word 0x00000687
_0224F68C: .word 0x0225A614
	arm_func_end ov66_0224F644

	arm_func_start ov66_0224F690
ov66_0224F690: ; 0x0224F690
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	movs r4, r0
	mov r6, r1
	bne _0224F6B8
	ldr r0, _0224F7AC ; =0x0225A4C0
	ldr r1, _0224F7B0 ; =0x0225A4D0
	ldr r2, _0224F7B4 ; =0x02259DE4
	ldr r3, _0224F7B8 ; =0x00000694
	bl __msl_assertion_failed
_0224F6B8:
	ldr r0, [r6, #0x24]
	cmp r0, #1
	beq _0224F6D8
	ldr r0, _0224F7BC ; =0x0225A61C
	ldr r1, _0224F7B0 ; =0x0225A4D0
	ldr r2, _0224F7B4 ; =0x02259DE4
	ldr r3, _0224F7C0 ; =0x0000069A
	bl __msl_assertion_failed
_0224F6D8:
	ldr r0, [r6, #0x24]
	cmp r0, #1
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r5, [r6, #8]
	ldr r2, [r6, #0x20]
	mov r0, r5
	add r1, r4, #0x36c
	ldr r6, [r2, #0]
	bl strcasecmp
	cmp r0, #0
	bne _0224F794
	mov r0, r6
	bl strlen
	cmp r0, #0x40
	blo _0224F72C
	ldr r0, _0224F7C4 ; =0x0225A634
	ldr r1, _0224F7B0 ; =0x0225A4D0
	ldr r2, _0224F7B4 ; =0x02259DE4
	ldr r3, _0224F7C8 ; =0x000006AA
	bl __msl_assertion_failed
_0224F72C:
	mov r1, r6
	add r0, r4, #0x36c
	mov r2, #0x40
	bl strncpy
	mov r1, #0
	add r2, sp, #0xc
	strb r1, [r4, #0x3ab]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #0]
	mov r3, #9
	mov r0, r4
	mov r1, #1
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	bl ov66_0224D5A8
	movs r1, r0
	beq _0224F794
	mov r3, #1
	add r2, sp, #0
	mov r0, r4
	str r3, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl ov66_0224D908
_0224F794:
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl ov66_0224CF50
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0224F7AC: .word 0x0225A4C0
_0224F7B0: .word 0x0225A4D0
_0224F7B4: .word 0x02259DE4
_0224F7B8: .word 0x00000694
_0224F7BC: .word 0x0225A61C
_0224F7C0: .word 0x0000069A
_0224F7C4: .word 0x0225A634
_0224F7C8: .word 0x000006AA
	arm_func_end ov66_0224F690

	arm_func_start ov66_0224F7CC
ov66_0224F7CC: ; 0x0224F7CC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x2c
	movs r4, r0
	mov r8, r1
	bne _0224F7F4
	ldr r0, _0224FA24 ; =0x0225A4C0
	ldr r1, _0224FA28 ; =0x0225A4D0
	ldr r2, _0224FA2C ; =0x02259DF4
	ldr r3, _0224FA30 ; =0x000006D6
	bl __msl_assertion_failed
_0224F7F4:
	ldr r0, [r8, #0x24]
	cmp r0, #1
	beq _0224F814
	ldr r0, _0224FA34 ; =0x0225A61C
	ldr r1, _0224FA28 ; =0x0225A4D0
	ldr r2, _0224FA2C ; =0x02259DF4
	ldr r3, _0224FA38 ; =0x000006DC
	bl __msl_assertion_failed
_0224F814:
	ldr r0, [r8, #0x24]
	cmp r0, #1
	addne sp, sp, #0x2c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r6, [r8, #8]
	ldr r1, [r8, #0x20]
	ldrsb r0, [r6]
	ldr r5, [r1, #0]
	ldr r7, [r8, #0xc]
	cmp r0, #0x40
	ldr r8, [r8, #0x10]
	bne _0224F86C
	ldrsb r0, [r6, #1]!
	mov sb, #2
	cmp r0, #0
	bne _0224F8A0
	ldr r0, _0224FA3C ; =0x0225A650
	ldr r1, _0224FA28 ; =0x0225A4D0
	ldr r2, _0224FA2C ; =0x02259DF4
	ldr r3, _0224FA40 ; =0x000006EB
	bl __msl_assertion_failed
	b _0224F8A0
_0224F86C:
	cmp r0, #0x2b
	bne _0224F89C
	ldrsb r0, [r6, #1]!
	mov sb, #1
	cmp r0, #0
	bne _0224F8A0
	ldr r0, _0224FA3C ; =0x0225A650
	ldr r1, _0224FA28 ; =0x0225A4D0
	ldr r2, _0224FA2C ; =0x02259DF4
	add r3, sb, #0x6f0
	bl __msl_assertion_failed
	b _0224F8A0
_0224F89C:
	mov sb, #0
_0224F8A0:
	mov r0, r6
	add r1, r4, #0x36c
	bl strcmp
	cmp r0, #0
	mov r0, r4
	mov r1, r5
	bne _0224F944
	bl ov66_0224B9DC
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r2, sp, #0x20
	mov r3, #0
	str r3, [r2, #4]
	mov r0, r4
	str r3, [r2, #0]
	mov r1, #1
	str r3, [r2, #8]
	str r1, [sp, #0x20]
	str r5, [sp, #0x24]
	bl ov66_0224D5A8
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r6, [r0, #0x1c]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl ov66_0224BA90
	mov r0, r4
	mov r1, r5
	add r2, r6, #0x34
	bl ov66_0224C350
	mov r3, #1
	ldr r1, _0224FA44 ; =0x0225A660
	mov r2, r5
	add r0, r4, #0x1c
	str r3, [r6, #0x30]
	bl ov66_02256E70
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0224F944:
	bl ov66_0224C134
	cmp r0, #0
	beq _0224F968
	mov r0, r4
	mov r1, r6
	mov r2, r5
	mov r3, sb
	stmia sp, {r7, r8}
	bl ov66_0224C784
_0224F968:
	mov r0, r4
	mov r1, r5
	bl ov66_0224C518
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	mov r1, r5
	bl ov66_0224BD94
	movs r7, r0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0224F9DC
	str r5, [sp, #0x14]
	str r6, [sp, #0x18]
	str sb, [sp, #0x1c]
	ldr r1, [r7, #0x2c]
	mov r0, #0
	str r1, [sp]
	stmib sp, {r0, r5}
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r7, #8]
	add r3, sp, #0x14
	mov r0, r4
	mov r1, #6
	bl ov66_02248C2C
_0224F9DC:
	ldr r0, [r7, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	str r5, [sp, #0x10]
	ldr r1, [r7, #0x2c]
	mov r0, #0
	str r1, [sp]
	stmib sp, {r0, r5}
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r7, #0x20]
	add r3, sp, #0x10
	mov r0, r4
	mov r1, #0xc
	bl ov66_02248C2C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0224FA24: .word 0x0225A4C0
_0224FA28: .word 0x0225A4D0
_0224FA2C: .word 0x02259DF4
_0224FA30: .word 0x000006D6
_0224FA34: .word 0x0225A61C
_0224FA38: .word 0x000006DC
_0224FA3C: .word 0x0225A650
_0224FA40: .word 0x000006EB
_0224FA44: .word 0x0225A660
	arm_func_end ov66_0224F7CC

	arm_func_start ov66_0224FA48
ov66_0224FA48: ; 0x0224FA48
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	movs r7, r0
	mov r4, r1
	bne _0224FA70
	ldr r0, _0224FB74 ; =0x0225A4C0
	ldr r1, _0224FB78 ; =0x0225A4D0
	ldr r2, _0224FB7C ; =0x02259E04
	ldr r3, _0224FB80 ; =0x00000752
	bl __msl_assertion_failed
_0224FA70:
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	ldr r4, [r4, #8]
	cmp r0, #1
	ldrgt r8, [r1, #4]
	ldr r5, [r1, #0]
	ldrle r8, _0224FB84 ; =0x0225A608
	mov r0, r4
	add r1, r7, #0x36c
	bl strcmp
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl ov66_0224C994
	mov r0, r7
	mov r1, r5
	bl ov66_0224C518
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r5
	bl ov66_0224BD94
	movs r6, r0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _0224FB2C
	mov r2, #0
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r8, [sp, #0x20]
	str r2, [sp, #0x24]
	ldr r1, [r6, #0x2c]
	mov r0, #0x14
	stmia sp, {r1, r2, r5}
	str r0, [sp, #0xc]
	ldr r2, [r6, #0xc]
	add r3, sp, #0x14
	mov r0, r7
	mov r1, #7
	bl ov66_02248C2C
_0224FB2C:
	ldr r0, [r6, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r5, [sp, #0x10]
	ldr r1, [r6, #0x2c]
	mov r0, #0
	str r1, [sp]
	stmib sp, {r0, r5}
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r6, #0x20]
	add r3, sp, #0x10
	mov r0, r7
	mov r1, #0xc
	bl ov66_02248C2C
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0224FB74: .word 0x0225A4C0
_0224FB78: .word 0x0225A4D0
_0224FB7C: .word 0x02259E04
_0224FB80: .word 0x00000752
_0224FB84: .word 0x0225A608
	arm_func_end ov66_0224FA48

	arm_func_start ov66_0224FB88
ov66_0224FB88: ; 0x0224FB88
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x34
	movs sb, r0
	mov r5, r1
	bne _0224FBB0
	ldr r0, _0224FD54 ; =0x0225A4C0
	ldr r1, _0224FD58 ; =0x0225A4D0
	ldr r2, _0224FD5C ; =0x02259E14
	ldr r3, _0224FD60 ; =0x00000794
	bl __msl_assertion_failed
_0224FBB0:
	ldr r0, [r5, #0x24]
	mov r1, #1
	cmp r0, #2
	cmpne r0, #3
	movne r1, #0
	cmp r1, #0
	bne _0224FBE0
	ldr r0, _0224FD64 ; =0x0225A668
	ldr r1, _0224FD58 ; =0x0225A4D0
	ldr r2, _0224FD5C ; =0x02259E14
	ldr r3, _0224FD68 ; =0x0000079A
	bl __msl_assertion_failed
_0224FBE0:
	ldr r1, [r5, #0x24]
	cmp r1, #2
	cmpne r1, #3
	addne sp, sp, #0x34
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r5, #0x20]
	cmp r1, #3
	ldreq r8, [r0, #8]
	ldmia r0, {r4, r6}
	mov r0, sb
	mov r1, r6
	mov r2, r4
	ldr r5, [r5, #8]
	ldrne r8, _0224FD6C ; =0x0225A608
	bl ov66_0224C994
	mov r0, sb
	mov r1, r4
	bl ov66_0224BD94
	movs r7, r0
	addeq sp, sp, #0x34
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, r6
	add r1, sb, #0x36c
	bl strcasecmp
	cmp r0, #0
	bne _0224FCA4
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0224FC90
	str r4, [sp, #0x28]
	str r5, [sp, #0x2c]
	str r8, [sp, #0x30]
	ldr r1, [r7, #0x2c]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r7, #4]
	add r3, sp, #0x28
	mov r0, sb
	mov r1, #5
	bl ov66_02248C2C
_0224FC90:
	mov r0, sb
	mov r1, r4
	bl ov66_0224BC80
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0224FCA4:
	mov r0, sb
	mov r1, r4
	bl ov66_0224C518
	cmp r0, #0
	addeq sp, sp, #0x34
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _0224FD0C
	mov r0, #2
	str r0, [sp, #0x1c]
	str r4, [sp, #0x14]
	str r6, [sp, #0x18]
	str r8, [sp, #0x20]
	str r5, [sp, #0x24]
	ldr r1, [r7, #0x2c]
	mov r0, #0
	str r1, [sp]
	stmib sp, {r0, r4}
	mov r0, #0x14
	str r0, [sp, #0xc]
	ldr r2, [r7, #0xc]
	add r3, sp, #0x14
	mov r0, sb
	mov r1, #7
	bl ov66_02248C2C
_0224FD0C:
	ldr r0, [r7, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x34
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	str r4, [sp, #0x10]
	ldr r1, [r7, #0x2c]
	mov r0, #0
	str r1, [sp]
	stmib sp, {r0, r4}
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r7, #0x20]
	add r3, sp, #0x10
	mov r0, sb
	mov r1, #0xc
	bl ov66_02248C2C
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0224FD54: .word 0x0225A4C0
_0224FD58: .word 0x0225A4D0
_0224FD5C: .word 0x02259E14
_0224FD60: .word 0x00000794
_0224FD64: .word 0x0225A668
_0224FD68: .word 0x0000079A
_0224FD6C: .word 0x0225A608
	arm_func_end ov66_0224FB88

	arm_func_start ov66_0224FD70
ov66_0224FD70: ; 0x0224FD70
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	bne _0224FDA0
	ldr r0, _0224FEEC ; =0x0225A6A0
	ldr r1, _0224FEF0 ; =0x0225A4D0
	ldr r2, _0224FEF4 ; =0x0225A224
	ldr r3, _0224FEF8 ; =0x000007E6
	bl __msl_assertion_failed
_0224FDA0:
	ldrsb r0, [r7]
	cmp r0, #0
	bne _0224FDC0
	ldr r0, _0224FEFC ; =0x0225A6B0
	ldr r1, _0224FEF0 ; =0x0225A4D0
	ldr r2, _0224FEF4 ; =0x0225A224
	ldr r3, _0224FEF8 ; =0x000007E6
	bl __msl_assertion_failed
_0224FDC0:
	cmp r6, #0
	bne _0224FDDC
	ldr r0, _0224FF00 ; =0x0225A6C0
	ldr r1, _0224FEF0 ; =0x0225A4D0
	ldr r2, _0224FEF4 ; =0x0225A224
	ldr r3, _0224FF04 ; =0x000007E7
	bl __msl_assertion_failed
_0224FDDC:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _0224FDFC
	ldr r0, _0224FF08 ; =0x0225A6D0
	ldr r1, _0224FEF0 ; =0x0225A4D0
	ldr r2, _0224FEF4 ; =0x0225A224
	ldr r3, _0224FF04 ; =0x000007E7
	bl __msl_assertion_failed
_0224FDFC:
	cmp r5, #0
	bne _0224FE18
	ldr r0, _0224FF0C ; =0x0225A6E4
	ldr r1, _0224FEF0 ; =0x0225A4D0
	ldr r2, _0224FEF4 ; =0x0225A224
	ldr r3, _0224FF10 ; =0x000007E8
	bl __msl_assertion_failed
_0224FE18:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl ov66_0224C994
	mov r0, r8
	mov r1, r6
	bl ov66_0224C518
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r6
	bl ov66_0224BD94
	movs r4, r0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0224FEA4
	mov r0, #1
	mov r2, #0
	str r0, [sp, #0x1c]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	str r5, [sp, #0x20]
	str r2, [sp, #0x24]
	ldr r1, [r4, #0x2c]
	mov r0, #0x14
	stmia sp, {r1, r2, r6}
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x14
	mov r0, r8
	mov r1, #7
	bl ov66_02248C2C
_0224FEA4:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r6, [sp, #0x10]
	ldr r1, [r4, #0x2c]
	mov r0, #0
	str r1, [sp]
	stmib sp, {r0, r6}
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x20]
	add r3, sp, #0x10
	mov r0, r8
	mov r1, #0xc
	bl ov66_02248C2C
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0224FEEC: .word 0x0225A6A0
_0224FEF0: .word 0x0225A4D0
_0224FEF4: .word 0x0225A224
_0224FEF8: .word 0x000007E6
_0224FEFC: .word 0x0225A6B0
_0224FF00: .word 0x0225A6C0
_0224FF04: .word 0x000007E7
_0224FF08: .word 0x0225A6D0
_0224FF0C: .word 0x0225A6E4
_0224FF10: .word 0x000007E8
	arm_func_end ov66_0224FD70

	arm_func_start ov66_0224FF14
ov66_0224FF14: ; 0x0224FF14
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224FF38
	ldr r0, _0224FF80 ; =0x0225A4C0
	ldr r1, _0224FF84 ; =0x0225A4D0
	ldr r2, _0224FF88 ; =0x02259E24
	ldr r3, _0224FF8C ; =0x00000813
	bl __msl_assertion_failed
_0224FF38:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	beq _0224FF58
	ldr r0, _0224FF90 ; =0x0225A61C
	ldr r1, _0224FF84 ; =0x0225A4D0
	ldr r2, _0224FF88 ; =0x02259E24
	ldr r3, _0224FF94 ; =0x00000819
	bl __msl_assertion_failed
_0224FF58:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #8]
	ldr r3, [r0, #0]
	ldr r2, _0224FF98 ; =ov66_0224FD70
	mov r0, r5
	bl ov66_0224CBE4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224FF80: .word 0x0225A4C0
_0224FF84: .word 0x0225A4D0
_0224FF88: .word 0x02259E24
_0224FF8C: .word 0x00000813
_0224FF90: .word 0x0225A61C
_0224FF94: .word 0x00000819
_0224FF98: .word ov66_0224FD70
	arm_func_end ov66_0224FF14

	arm_func_start ov66_0224FF9C
ov66_0224FF9C: ; 0x0224FF9C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	bne _0224FFCC
	ldr r0, _02250118 ; =0x0225A6A0
	ldr r1, _0225011C ; =0x0225A4D0
	ldr r2, _02250120 ; =0x0225A240
	ldr r3, _02250124 ; =0x00000828
	bl __msl_assertion_failed
_0224FFCC:
	ldrsb r0, [r7]
	cmp r0, #0
	bne _0224FFEC
	ldr r0, _02250128 ; =0x0225A6B0
	ldr r1, _0225011C ; =0x0225A4D0
	ldr r2, _02250120 ; =0x0225A240
	ldr r3, _02250124 ; =0x00000828
	bl __msl_assertion_failed
_0224FFEC:
	cmp r6, #0
	bne _02250008
	ldr r0, _0225012C ; =0x0225A6C0
	ldr r1, _0225011C ; =0x0225A4D0
	ldr r2, _02250120 ; =0x0225A240
	ldr r3, _02250130 ; =0x00000829
	bl __msl_assertion_failed
_02250008:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _02250028
	ldr r0, _02250134 ; =0x0225A6D0
	ldr r1, _0225011C ; =0x0225A4D0
	ldr r2, _02250120 ; =0x0225A240
	ldr r3, _02250130 ; =0x00000829
	bl __msl_assertion_failed
_02250028:
	cmp r5, #0
	bne _02250044
	ldr r0, _02250138 ; =0x0225A6E4
	ldr r1, _0225011C ; =0x0225A4D0
	ldr r2, _02250120 ; =0x0225A240
	ldr r3, _0225013C ; =0x0000082A
	bl __msl_assertion_failed
_02250044:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl ov66_0224C994
	mov r0, r8
	mov r1, r6
	bl ov66_0224C518
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r6
	bl ov66_0224BD94
	movs r4, r0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022500D0
	mov r0, #3
	mov r2, #0
	str r0, [sp, #0x1c]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	str r5, [sp, #0x20]
	str r2, [sp, #0x24]
	ldr r1, [r4, #0x2c]
	mov r0, #0x14
	stmia sp, {r1, r2, r6}
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x14
	mov r0, r8
	mov r1, #7
	bl ov66_02248C2C
_022500D0:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r6, [sp, #0x10]
	ldr r1, [r4, #0x2c]
	mov r0, #0
	str r1, [sp]
	stmib sp, {r0, r6}
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x20]
	add r3, sp, #0x10
	mov r0, r8
	mov r1, #0xc
	bl ov66_02248C2C
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02250118: .word 0x0225A6A0
_0225011C: .word 0x0225A4D0
_02250120: .word 0x0225A240
_02250124: .word 0x00000828
_02250128: .word 0x0225A6B0
_0225012C: .word 0x0225A6C0
_02250130: .word 0x00000829
_02250134: .word 0x0225A6D0
_02250138: .word 0x0225A6E4
_0225013C: .word 0x0000082A
	arm_func_end ov66_0224FF9C

	arm_func_start ov66_02250140
ov66_02250140: ; 0x02250140
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0x24]
	mov r5, r0
	cmp r1, #2
	beq _0225016C
	ldr r0, _02250190 ; =0x0225A5F0
	ldr r1, _02250194 ; =0x0225A4D0
	ldr r2, _02250198 ; =0x02259E34
	ldr r3, _0225019C ; =0x00000859
	bl __msl_assertion_failed
_0225016C:
	ldr r0, [r4, #0x24]
	cmp r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x20]
	ldr r2, _022501A0 ; =ov66_0224FF9C
	ldmia r0, {r1, r3}
	mov r0, r5
	bl ov66_0224CBE4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02250190: .word 0x0225A5F0
_02250194: .word 0x0225A4D0
_02250198: .word 0x02259E34
_0225019C: .word 0x00000859
_022501A0: .word ov66_0224FF9C
	arm_func_end ov66_02250140

	arm_func_start ov66_022501A4
ov66_022501A4: ; 0x022501A4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	movs r4, r0
	mov r5, r1
	bne _022501CC
	ldr r0, _02250270 ; =0x0225A4C0
	ldr r1, _02250274 ; =0x0225A4D0
	ldr r2, _02250278 ; =0x02259E54
	ldr r3, _0225027C ; =0x0000086A
	bl __msl_assertion_failed
_022501CC:
	ldr r0, [r5, #0x24]
	cmp r0, #2
	beq _022501EC
	ldr r0, _02250280 ; =0x0225A5F0
	ldr r1, _02250274 ; =0x0225A4D0
	ldr r2, _02250278 ; =0x02259E54
	mov r3, #0x870
	bl __msl_assertion_failed
_022501EC:
	ldr r0, [r5, #0x24]
	cmp r0, #2
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #0x20]
	mov r0, r4
	ldmia r1, {r5, r6}
	mov r1, r5
	mov r2, r6
	bl ov66_0224C5DC
	mov r0, r4
	mov r1, r5
	bl ov66_0224BD94
	cmp r0, #0
	ldrne r1, [r0, #0x14]
	cmpne r1, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, r5, r6, pc}
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r5}
	mov r1, #8
	str r1, [sp, #0xc]
	ldr r2, [r0, #0x14]
	add r3, sp, #0x10
	mov r0, r4
	mov r1, #9
	bl ov66_02248C2C
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02250270: .word 0x0225A4C0
_02250274: .word 0x0225A4D0
_02250278: .word 0x02259E54
_0225027C: .word 0x0000086A
_02250280: .word 0x0225A5F0
	arm_func_end ov66_022501A4

	arm_func_start ov66_02250284
ov66_02250284: ; 0x02250284
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r4, r1
	ldr r1, [r4, #0x24]
	mov sb, r0
	cmp r1, #2
	bge _022502B4
	ldr r0, _02250478 ; =0x0225A6F4
	ldr r1, _0225047C ; =0x0225A4D0
	ldr r2, _02250480 ; =0x02259E44
	ldr r3, _02250484 ; =0x00000893
	bl __msl_assertion_failed
_022502B4:
	ldr r0, [r4, #0x24]
	cmp r0, #2
	addlt sp, sp, #0x28
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4, #0x20]
	mov r0, sb
	ldr r8, [r1]
	ldr r5, [r1, #4]
	mov r1, r8
	bl ov66_0224C134
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	mov r0, r5
	add r1, r1, #8
	sub r2, r2, #2
	bl ov66_0224EC20
	str r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r0, #0]
	ldr r7, [sp, #4]
	cmp r0, #0
	beq _02250424
	ldr sl, _02250488 ; =0x0225A590
	ldr fp, _0225047C ; =0x0225A4D0
	mov r4, #1
	mov r5, #2
	mov r6, #0
_02250334:
	ldr r0, [r7, #0]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _02250404
_02250344: ; jump table
	b _02250404 ; case 0
	b _02250418 ; case 1
	b _02250418 ; case 2
	b _02250418 ; case 3
	b _02250418 ; case 4
	b _02250418 ; case 5
	b _02250380 ; case 6
	b _02250418 ; case 7
	b _02250418 ; case 8
	b _02250418 ; case 9
	b _022503B4 ; case 10
	b _022503DC ; case 11
	b _02250418 ; case 12
	b _02250418 ; case 13
	b _02250418 ; case 14
_02250380:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _022503A0
	ldr r2, [r7, #8]
	mov r0, sb
	mov r1, r8
	bl ov66_0224C350
	b _02250418
_022503A0:
	mov r0, sb
	mov r1, r8
	mov r2, r6
	bl ov66_0224C350
	b _02250418
_022503B4:
	ldr r1, [r7, #8]
	cmp r1, #0
	beq _02250418
	ldr r2, [r7, #4]
	mov r0, sb
	str r2, [sp]
	mov r2, r8
	mov r3, r5
	bl ov66_0224D090
	b _02250418
_022503DC:
	ldr r1, [r7, #8]
	cmp r1, #0
	beq _02250418
	ldr r2, [r7, #4]
	mov r0, sb
	str r2, [sp]
	mov r2, r8
	mov r3, r4
	bl ov66_0224D090
	b _02250418
_02250404:
	ldr r2, _02250480 ; =0x02259E44
	ldr r3, _0225048C ; =0x000008DC
	mov r0, sl
	mov r1, fp
	bl __msl_assertion_failed
_02250418:
	ldr r0, [r7, #0xc]!
	cmp r0, #0
	bne _02250334
_02250424:
	add r2, sp, #8
	mov r0, sb
	mov r1, r8
	bl ov66_0224C184
	cmp r0, #0
	bne _0225044C
	ldr r0, [sp, #4]
	bl ov4_021D78B0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0225044C:
	ldr r1, [sp, #4]
	add r0, sp, #8
	bl ov66_0224EED4
	add r2, sp, #8
	mov r0, sb
	mov r1, r8
	bl ov66_0224C270
	ldr r0, [sp, #4]
	bl ov4_021D78B0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02250478: .word 0x0225A6F4
_0225047C: .word 0x0225A4D0
_02250480: .word 0x02259E44
_02250484: .word 0x00000893
_02250488: .word 0x0225A590
_0225048C: .word 0x000008DC
	arm_func_end ov66_02250284

	arm_func_start ov66_02250490
ov66_02250490: ; 0x02250490
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _022504B4
	ldr r0, _022504F4 ; =0x0225A4C0
	ldr r1, _022504F8 ; =0x0225A4D0
	ldr r2, _022504FC ; =0x02259E64
	ldr r3, _02250500 ; =0x000008F1
	bl __msl_assertion_failed
_022504B4:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	beq _022504D4
	ldr r0, _02250504 ; =0x0225A61C
	ldr r1, _022504F8 ; =0x0225A4D0
	ldr r2, _022504FC ; =0x02259E64
	ldr r3, _02250508 ; =0x000008F7
	bl __msl_assertion_failed
_022504D4:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x20]
	mov r0, r5
	ldr r1, [r1, #0]
	bl ov66_02253598
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022504F4: .word 0x0225A4C0
_022504F8: .word 0x0225A4D0
_022504FC: .word 0x02259E64
_02250500: .word 0x000008F1
_02250504: .word 0x0225A61C
_02250508: .word 0x000008F7
	arm_func_end ov66_02250490

	arm_func_start ov66_0225050C
ov66_0225050C: ; 0x0225050C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	movs r4, r0
	mov r5, r1
	bne _02250534
	ldr r0, _022505C0 ; =0x0225A4C0
	ldr r1, _022505C4 ; =0x0225A4D0
	ldr r2, _022505C8 ; =0x02259EB4
	ldr r3, _022505CC ; =0x00000904
	bl __msl_assertion_failed
_02250534:
	ldr r0, [r5, #0x24]
	cmp r0, #2
	beq _02250554
	ldr r0, _022505D0 ; =0x0225A5F0
	ldr r1, _022505C4 ; =0x0225A4D0
	ldr r2, _022505C8 ; =0x02259EB4
	ldr r3, _022505D4 ; =0x0000090A
	bl __msl_assertion_failed
_02250554:
	ldr r0, [r5, #0x24]
	cmp r0, #2
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x804]
	ldr r1, [r5, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldr r2, [r5, #8]
	ldr r0, [r1, #4]
	ldmeqia sp!, {r3, r4, r5, pc}
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r1, [r4, #0x808]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x804]
	add r3, sp, #0x10
	mov r0, r4
	mov r1, #3
	bl ov66_02248C2C
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022505C0: .word 0x0225A4C0
_022505C4: .word 0x0225A4D0
_022505C8: .word 0x02259EB4
_022505CC: .word 0x00000904
_022505D0: .word 0x0225A5F0
_022505D4: .word 0x0000090A
	arm_func_end ov66_0225050C

	arm_func_start ov66_022505D8
ov66_022505D8: ; 0x022505D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov r4, r1
	ldr r1, [r4, #0x24]
	str r0, [sp, #8]
	cmp r1, #4
	mov r8, #0
	beq _0225060C
	ldr r0, _022508A4 ; =0x0225A70C
	ldr r1, _022508A8 ; =0x0225A4D0
	ldr r2, _022508AC ; =0x02259F88
	ldr r3, _022508B0 ; =0x0000092F
	bl __msl_assertion_failed
_0225060C:
	ldr r0, [r4, #0x24]
	cmp r0, #4
	addne sp, sp, #0x40
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4, #0x20]
	add r2, sp, #0x10
	mov r0, #0
	ldr r7, [r1, #8]
	ldr r4, [r1, #0xc]
	mov r3, r2
	mov r1, r0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3, {r0, r1}
	mov r3, #3
	mov r6, #1
	mov r5, #0xf
	ldr r0, [sp, #8]
	mov r1, #4
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	str r5, [sp, #0x1c]
	str r7, [sp, #0x20]
	str r3, [sp, #0x28]
	str r7, [sp, #0x2c]
	str r3, [sp, #0x34]
	bl ov66_0224D5A8
	movs r6, r0
	addeq sp, sp, #0x40
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r6, #0]
	ldr r1, _022508B4 ; =0x0225A724
	cmp r0, #1
	ldrne r8, [r6, #0x1c]
	mov r0, r4
	bl strtok
	movs sb, r0
	addeq sp, sp, #0x40
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022508B8 ; =0x00000957
	ldr fp, _022508A8 ; =0x0225A4D0
	sub r0, r0, #6
	str r0, [sp, #0xc]
_022506C4:
	ldrsb r0, [sb]
	cmp r0, #0
	bne _022506E4
	ldr r0, _022508BC ; =0x0225A728
	ldr r2, _022508AC ; =0x02259F88
	ldr r3, [sp, #0xc]
	mov r1, fp
	bl __msl_assertion_failed
_022506E4:
	ldrsb r0, [sb]
	cmp r0, #0x40
	bne _0225071C
	ldrsb r0, [sb, #1]
	cmp r0, #0
	bne _02250710
	ldr r0, _022508C0 ; =0x0225A738
	ldr r2, _022508AC ; =0x02259F88
	ldr r3, _022508B8 ; =0x00000957
	mov r1, fp
	bl __msl_assertion_failed
_02250710:
	mov sl, #2
	add sb, sb, #1
	b _02250758
_0225071C:
	cmp r0, #0x2b
	bne _02250754
	ldrsb r0, [sb, #1]
	cmp r0, #0
	bne _02250748
	ldr r3, _022508B8 ; =0x00000957
	ldr r0, _022508C0 ; =0x0225A738
	ldr r2, _022508AC ; =0x02259F88
	mov r1, fp
	add r3, r3, #6
	bl __msl_assertion_failed
_02250748:
	mov sl, #1
	add sb, sb, #1
	b _02250758
_02250754:
	mov sl, #0
_02250758:
	ldr r0, [r6, #0]
	cmp r0, #1
	beq _02250858
	ldr r1, [r8]
	ldr r0, [r8, #4]
	cmp r0, r1
	bne _022507F4
	add r0, r1, #0x64
	mov r1, r0, lsl #2
	ldr r0, [r8, #8]
	bl ov4_021D7894
	cmp r0, #0
	bne _022507A8
	ldr r0, _022508C4 ; =0x0225A590
	ldr r1, _022508A8 ; =0x0225A4D0
	ldr r2, _022508AC ; =0x02259F88
	ldr r3, _022508C8 ; =0x0000096D
	bl __msl_assertion_failed
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022507A8:
	str r0, [r8, #8]
	ldr r0, [r8, #0xc]
	ldr r1, [r8]
	add r1, r1, #0x64
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	bne _022507E4
	ldr r0, _022508C4 ; =0x0225A590
	ldr r1, _022508A8 ; =0x0225A4D0
	ldr r2, _022508AC ; =0x02259F88
	ldr r3, _022508CC ; =0x00000974
	bl __msl_assertion_failed
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022507E4:
	str r0, [r8, #0xc]
	ldr r0, [r8]
	add r0, r0, #0x64
	str r0, [r8]
_022507F4:
	mov r0, sb
	bl strlen
	mov r5, r0
	add r0, r5, #1
	bl ov4_021D7880
	movs r4, r0
	bne _0225082C
	ldr r0, _022508C4 ; =0x0225A590
	ldr r1, _022508A8 ; =0x0225A4D0
	ldr r2, _022508AC ; =0x02259F88
	ldr r3, _022508D0 ; =0x00000981
	bl __msl_assertion_failed
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0225082C:
	add r2, r5, #1
	mov r1, sb
	bl memcpy
	ldmib r8, {r0, r1}
	str r4, [r1, r0, lsl #2]
	ldr r1, [r8, #0xc]
	ldr r0, [r8, #4]
	str sl, [r1, r0, lsl #2]
	ldr r0, [r8, #4]
	add r0, r0, #1
	str r0, [r8, #4]
_02250858:
	ldr r0, [r6, #0]
	cmp r0, #1
	cmpne r0, #0xf
	bne _02250888
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r1, sb
	mov r3, sl
	mov r2, r7
	bl ov66_0224C784
_02250888:
	ldr r1, _022508B4 ; =0x0225A724
	mov r0, #0
	bl strtok
	movs sb, r0
	bne _022506C4
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022508A4: .word 0x0225A70C
_022508A8: .word 0x0225A4D0
_022508AC: .word 0x02259F88
_022508B0: .word 0x0000092F
_022508B4: .word 0x0225A724
_022508B8: .word 0x00000957
_022508BC: .word 0x0225A728
_022508C0: .word 0x0225A738
_022508C4: .word 0x0225A590
_022508C8: .word 0x0000096D
_022508CC: .word 0x00000974
_022508D0: .word 0x00000981
	arm_func_end ov66_022505D8

	arm_func_start ov66_022508D4
ov66_022508D4: ; 0x022508D4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x60
	movs r6, r0
	mov r4, r1
	bne _022508FC
	ldr r0, _02250A8C ; =0x0225A4C0
	ldr r1, _02250A90 ; =0x0225A4D0
	ldr r2, _02250A94 ; =0x02259FD8
	ldr r3, _02250A98 ; =0x0000099F
	bl __msl_assertion_failed
_022508FC:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	beq _0225091C
	ldr r0, _02250A9C ; =0x0225A748
	ldr r1, _02250A90 ; =0x0225A4D0
	ldr r2, _02250A94 ; =0x02259FD8
	ldr r3, _02250AA0 ; =0x000009A5
	bl __msl_assertion_failed
_0225091C:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	addne sp, sp, #0x60
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x20]
	ldr r1, _02250AA4 ; =0x0225A760
	ldr r5, [r0, #4]
	mov r0, r5
	bl strcmp
	cmp r0, #0
	add r2, sp, #0x30
	mov r0, #0
	mov r3, r2
	mov r1, r0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3, {r0, r1}
	moveq r5, #0
	mov r3, #3
	mov ip, #1
	mov r4, #0xf
	mov r0, r6
	mov r1, #4
	str ip, [sp, #0x30]
	str r5, [sp, #0x34]
	str r4, [sp, #0x3c]
	str r5, [sp, #0x40]
	str r3, [sp, #0x48]
	str r5, [sp, #0x4c]
	str r3, [sp, #0x54]
	bl ov66_0224D5A8
	movs r4, r0
	addeq sp, sp, #0x60
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _02250A00
	mov r1, #1
	mov r0, #0
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	str r5, [sp, #0x2c]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _022509E8
	mov r0, r6
	mov r1, r5
	bl ov66_0224C454
_022509E8:
	add r2, sp, #0x24
	mov r0, r6
	mov r1, r4
	bl ov66_0224D908
	add sp, sp, #0x60
	ldmia sp!, {r4, r5, r6, pc}
_02250A00:
	cmp r0, #0xf
	bne _02250A40
	ldr ip, [r4, #0x1c]
	add r2, sp, #0x14
	str r5, [sp, #0x14]
	ldr r1, [ip, #4]
	mov r0, r6
	str r1, [sp, #0x18]
	ldr r3, [ip, #8]
	mov r1, r4
	str r3, [sp, #0x1c]
	ldr r3, [ip, #0xc]
	str r3, [sp, #0x20]
	bl ov66_0224D908
	add sp, sp, #0x60
	ldmia sp!, {r4, r5, r6, pc}
_02250A40:
	cmp r0, #3
	addne sp, sp, #0x60
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r3, [r4, #0x1c]
	mov r0, #1
	str r5, [sp, #4]
	str r0, [sp]
	ldr r0, [r3, #4]
	add r2, sp, #0
	str r0, [sp, #8]
	ldr r1, [r3, #8]
	mov r0, r6
	str r1, [sp, #0xc]
	ldr r3, [r3, #0xc]
	mov r1, r4
	str r3, [sp, #0x10]
	bl ov66_0224D908
	add sp, sp, #0x60
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02250A8C: .word 0x0225A4C0
_02250A90: .word 0x0225A4D0
_02250A94: .word 0x02259FD8
_02250A98: .word 0x0000099F
_02250A9C: .word 0x0225A748
_02250AA0: .word 0x000009A5
_02250AA4: .word 0x0225A760
	arm_func_end ov66_022508D4

	arm_func_start ov66_02250AA8
ov66_02250AA8: ; 0x02250AA8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	mov r4, r1
	ldr r1, [r4, #0x24]
	mov r5, r0
	cmp r1, #3
	beq _02250AD8
	ldr r0, _02250BB4 ; =0x0225A748
	ldr r1, _02250BB8 ; =0x0225A4D0
	ldr r2, _02250BBC ; =0x02259F4C
	ldr r3, _02250BC0 ; =0x00000A05
	bl __msl_assertion_failed
_02250AD8:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	addne sp, sp, #0x30
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x20]
	mov r0, r5
	ldmib r1, {r4, r6}
	mov r1, r4
	mov r2, r6
	bl ov66_0224C5DC
	add r2, sp, #0x24
	mov ip, #0
	str ip, [r2, #4]
	mov r0, r5
	str ip, [r2]
	mov r3, #2
	mov r1, #1
	str ip, [r2, #8]
	str r3, [sp, #0x24]
	str r4, [sp, #0x28]
	bl ov66_0224D5A8
	movs r1, r0
	beq _02250B58
	mov r3, #1
	add r2, sp, #0x18
	mov r0, r5
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r6, [sp, #0x20]
	bl ov66_0224D908
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, pc}
_02250B58:
	mov r0, r5
	mov r1, r4
	bl ov66_0224BD94
	cmp r0, #0
	ldrne r1, [r0, #0x14]
	cmpne r1, #0
	addeq sp, sp, #0x30
	ldmeqia sp!, {r4, r5, r6, pc}
	str r4, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r4}
	mov r1, #8
	str r1, [sp, #0xc]
	ldr r2, [r0, #0x14]
	add r3, sp, #0x10
	mov r0, r5
	mov r1, #9
	bl ov66_02248C2C
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02250BB4: .word 0x0225A748
_02250BB8: .word 0x0225A4D0
_02250BBC: .word 0x02259F4C
_02250BC0: .word 0x00000A05
	arm_func_end ov66_02250AA8

	arm_func_start ov66_02250BC4
ov66_02250BC4: ; 0x02250BC4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r4, r1
	ldr r1, [r4, #0x24]
	mov r5, r0
	cmp r1, #2
	bge _02250BF4
	ldr r0, _02250CC8 ; =0x0225A6F4
	ldr r1, _02250CCC ; =0x0225A4D0
	ldr r2, _02250CD0 ; =0x0225A000
	ldr r3, _02250CD4 ; =0x00000A3C
	bl __msl_assertion_failed
_02250BF4:
	ldr r0, [r4, #0x24]
	cmp r0, #2
	addlt sp, sp, #0x30
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x20]
	add r2, sp, #0x24
	ldr r4, [r0, #4]
	mov ip, #0
	str ip, [r2, #4]
	mov r0, r5
	str ip, [r2]
	mov r3, #2
	mov r1, #1
	str ip, [r2, #8]
	str r3, [sp, #0x24]
	str r4, [sp, #0x28]
	bl ov66_0224D5A8
	movs r1, r0
	beq _02250C68
	ldr r3, _02250CD8 ; =0x0225A608
	mov ip, #1
	add r2, sp, #0x18
	mov r0, r5
	str ip, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r3, [sp, #0x20]
	bl ov66_0224D908
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
_02250C68:
	mov r0, r5
	mov r1, r4
	bl ov66_0224BD94
	cmp r0, #0
	ldrne r1, [r0, #0x14]
	cmpne r1, #0
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _02250CD8 ; =0x0225A608
	str r4, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r4}
	mov r1, #8
	str r1, [sp, #0xc]
	ldr r2, [r0, #0x14]
	add r3, sp, #0x10
	mov r0, r5
	mov r1, #9
	bl ov66_02248C2C
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02250CC8: .word 0x0225A6F4
_02250CCC: .word 0x0225A4D0
_02250CD0: .word 0x0225A000
_02250CD4: .word 0x00000A3C
_02250CD8: .word 0x0225A608
	arm_func_end ov66_02250BC4

	arm_func_start ov66_02250CDC
ov66_02250CDC: ; 0x02250CDC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	movs r4, r0
	mov r5, r1
	bne _02250D04
	ldr r0, _02250DE8 ; =0x0225A4C0
	ldr r1, _02250DEC ; =0x0225A4D0
	ldr r2, _02250DF0 ; =0x0225A0D0
	ldr r3, _02250DF4 ; =0x00000A6D
	bl __msl_assertion_failed
_02250D04:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	beq _02250D24
	ldr r0, _02250DF8 ; =0x0225A748
	ldr r1, _02250DEC ; =0x0225A4D0
	ldr r2, _02250DF0 ; =0x0225A0D0
	ldr r3, _02250DFC ; =0x00000A73
	bl __msl_assertion_failed
_02250D24:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0x10
	ldmia r0, {r5, r6}
	mov r1, #0
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #0]
	mov r3, #9
	mov r0, r4
	mov r1, #1
	str r3, [sp, #0x10]
	str r5, [sp, #0x14]
	str r6, [sp, #0x18]
	bl ov66_0224D5A8
	movs r1, r0
	beq _02250D98
	mov r3, #0
	add r2, sp, #4
	mov r0, r4
	str r3, [sp, #4]
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	bl ov66_0224D908
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
_02250D98:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02250DB8
	ldr r0, _02250E00 ; =0x0225A764
	ldr r1, _02250DEC ; =0x0225A4D0
	ldr r2, _02250DF0 ; =0x0225A0D0
	ldr r3, _02250E04 ; =0x00000A93
	bl __msl_assertion_failed
_02250DB8:
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r3, #0
	mov r0, r4
	add r2, r4, #0x36c
	mov r1, #1
	str r3, [sp]
	bl ov66_02255A08
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02250DE8: .word 0x0225A4C0
_02250DEC: .word 0x0225A4D0
_02250DF0: .word 0x0225A0D0
_02250DF4: .word 0x00000A6D
_02250DF8: .word 0x0225A748
_02250DFC: .word 0x00000A73
_02250E00: .word 0x0225A764
_02250E04: .word 0x00000A93
	arm_func_end ov66_02250CDC

	arm_func_start ov66_02250E08
ov66_02250E08: ; 0x02250E08
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x68
	mov sb, r1
	ldr r1, [sb, #0x24]
	mov sl, r0
	cmp r1, #8
	beq _02250E38
	ldr r0, _02251014 ; =0x0225A77C
	ldr r1, _02251018 ; =0x0225A4D0
	ldr r2, _0225101C ; =0x0225A040
	ldr r3, _02251020 ; =0x00000AA6
	bl __msl_assertion_failed
_02250E38:
	ldr r0, [sb, #0x24]
	cmp r0, #8
	addne sp, sp, #0x68
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r4, [sb, #0x20]
	mov r0, sl
	ldr r6, [r4, #8]
	ldr r7, [r4, #0xc]
	ldr r5, [r4, #0x14]
	mov r2, r6
	mov r1, r5
	mov r3, r7
	ldr r4, [r4, #4]
	bl ov66_0224D35C
	add r2, sp, #0x44
	mov r0, #0
	mov r3, r2
	mov r1, r0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	str r0, [r3, #0]
	mov r1, #6
	mov r0, #0xa
	str r1, [sp, #0x44]
	mov r1, #0xb
	str r0, [sp, #0x50]
	str r1, [sp, #0x5c]
	mov r0, sl
	mov r1, #3
	str r5, [sp, #0x48]
	str r4, [sp, #0x4c]
	str r5, [sp, #0x54]
	str r4, [sp, #0x60]
	bl ov66_0224D5A8
	movs r8, r0
	addeq sp, sp, #0x68
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [r8]
	cmp r0, #6
	bne _02250F40
	ldr r0, [sb, #0x20]
	mov r1, #0x40
	ldr r7, [r0, #0x18]
	mov r6, #0
	mov r0, r7
	bl strchr
	cmp r0, #0
	orrne r6, r6, #2
	mov r0, r7
	mov r1, #0x2b
	bl strchr
	cmp r0, #0
	orrne r6, r6, #1
	mov r3, #1
	add r2, sp, #0x34
	mov r0, sl
	mov r1, r8
	str r3, [sp, #0x34]
	str r4, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r6, [sp, #0x40]
	bl ov66_0224D908
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02250F40:
	cmp r0, #0xa
	bne _02250FA0
	mov r0, #1
	str r5, [sp, #0x28]
	str r6, [sp, #0x2c]
	str r7, [sp, #0x30]
	str r0, [sp, #0x24]
	ldr r0, [r8, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r2, [r8, #0x20]
	mov r0, #0x10
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r8, #0x10]
	add r3, sp, #0x24
	mov r0, sl
	mov r1, #0x15
	bl ov66_02248C2C
	mov r0, #0
	add sp, sp, #0x68
	str r0, [r8, #0x10]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02250FA0:
	cmp r0, #0xb
	addne sp, sp, #0x68
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [r8, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x68
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r8, #8]
	mov r1, #0
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	str r6, [sp, #0x1c]
	str r7, [sp, #0x20]
	ldr r2, [r8, #0x18]
	mov r0, #0x14
	str r2, [sp]
	ldr r2, [r8, #0x20]
	add r3, sp, #0x10
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r8, #0x10]
	mov r0, sl
	mov r1, #0x16
	bl ov66_02248C2C
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02251014: .word 0x0225A77C
_02251018: .word 0x0225A4D0
_0225101C: .word 0x0225A040
_02251020: .word 0x00000AA6
	arm_func_end ov66_02250E08

	arm_func_start ov66_02251024
ov66_02251024: ; 0x02251024
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x3c
	mov r4, r1
	ldr r1, [r4, #0x24]
	mov r5, r0
	cmp r1, #3
	beq _02251054
	ldr r0, _0225112C ; =0x0225A748
	ldr r1, _02251130 ; =0x0225A4D0
	ldr r2, _02251134 ; =0x0225A058
	ldr r3, _02251138 ; =0x00000B0D
	bl __msl_assertion_failed
_02251054:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	addne sp, sp, #0x3c
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x20]
	add r2, sp, #0x24
	ldr r4, [r0, #4]
	mov lr, #0
	str lr, [r2, #4]
	str lr, [r2, #0x10]
	mov r0, r5
	str lr, [r2]
	mov ip, #0xa
	str lr, [r2, #0xc]
	mov r3, #0xb
	mov r1, #2
	str lr, [r2, #8]
	str lr, [r2, #0x14]
	str ip, [sp, #0x24]
	str r4, [sp, #0x28]
	str r3, [sp, #0x30]
	str r4, [sp, #0x34]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r1, #0]
	cmp r0, #0xa
	bne _022510F0
	mov r3, #0
	add r2, sp, #0x14
	mov r0, r5
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r3, [sp, #0x20]
	bl ov66_0224D908
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, pc}
_022510F0:
	cmp r0, #0xb
	addne sp, sp, #0x3c
	ldmneia sp!, {r4, r5, pc}
	mov r3, #0
	mov ip, #1
	add r2, sp, #0
	mov r0, r5
	str ip, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	bl ov66_0224D908
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0225112C: .word 0x0225A748
_02251130: .word 0x0225A4D0
_02251134: .word 0x0225A058
_02251138: .word 0x00000B0D
	arm_func_end ov66_02251024

	arm_func_start ov66_0225113C
ov66_0225113C: ; 0x0225113C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r4, r1
	bne _02251160
	ldr r0, _022511F0 ; =0x0225A794
	ldr r1, _022511F4 ; =0x0225A4D0
	ldr r2, _022511F8 ; =0x02259D84
	ldr r3, _022511FC ; =0x00000B48
	bl __msl_assertion_failed
_02251160:
	cmp r4, #0
	bne _0225117C
	ldr r0, _02251200 ; =0x0225A79C
	ldr r1, _022511F4 ; =0x0225A4D0
	ldr r2, _022511F8 ; =0x02259D84
	ldr r3, _02251204 ; =0x00000B49
	bl __msl_assertion_failed
_0225117C:
	cmp r7, #0
	beq _02251190
	ldrsb r0, [r7]
	cmp r0, #0x5c
	beq _02251198
_02251190:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02251198:
	mov r6, #0
	b _022511A4
_022511A0:
	add r6, r6, #1
_022511A4:
	add r0, r7, r6
	ldrsb r0, [r0, #1]
	cmp r0, #0
	cmpne r0, #0x5c
	bne _022511A0
	add r0, r6, #1
	bl ov4_021D7880
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, r6
	add r1, r7, #1
	bl memcpy
	mov r0, #0
	strb r0, [r5, r6]
	add r1, r6, #1
	mov r0, r5
	str r1, [r4, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022511F0: .word 0x0225A794
_022511F4: .word 0x0225A4D0
_022511F8: .word 0x02259D84
_022511FC: .word 0x00000B48
_02251200: .word 0x0225A79C
_02251204: .word 0x00000B49
	arm_func_end ov66_0225113C

	arm_func_start ov66_02251208
ov66_02251208: ; 0x02251208
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	mov r4, r1
	ldr r1, [r4, #0x24]
	str r0, [sp, #0x10]
	cmp r1, #4
	beq _02251238
	ldr r0, _022513A4 ; =0x0225A70C
	ldr r1, _022513A8 ; =0x0225A4D0
	ldr r2, _022513AC ; =0x02259F60
	ldr r3, _022513B0 ; =0x00000B76
	bl __msl_assertion_failed
_02251238:
	ldr r0, [r4, #0x24]
	cmp r0, #4
	addne sp, sp, #0x3c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4, #0x20]
	add r2, sp, #0x30
	ldr r0, [r1, #4]
	ldr r5, [r1, #8]
	ldr r7, [r1, #0xc]
	mov r4, #0
	str r0, [sp, #0x14]
	str r4, [r2, #4]
	ldr r0, [sp, #0x10]
	str r4, [r2, #0]
	mov r3, #0xc
	mov r1, #1
	str r4, [r2, #8]
	str r3, [sp, #0x30]
	str r5, [sp, #0x34]
	bl ov66_0224D5A8
	movs r6, r0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr fp, [r6, #0x1c]
	ldr r8, [fp]
	mov r0, r8, lsl #2
	bl ov4_021D7880
	movs sb, r0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r8, #0
	mov sl, r4
	ble _02251300
	ldr r4, _022513B4 ; =0x0225A608
	add r5, sp, #0x18
_022512C4:
	mov r0, r7
	mov r1, r5
	bl ov66_0225113C
	cmp r0, #0
	beq _022512E8
	str r0, [sb, sl, lsl #2]
	ldr r0, [sp, #0x18]
	add r7, r7, r0
	b _022512F4
_022512E8:
	mov r0, r4
	bl ov4_021EA8AC
	str r0, [sb, sl, lsl #2]
_022512F4:
	add sl, sl, #1
	cmp sl, r8
	blt _022512C4
_02251300:
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	str r8, [sp, #0x24]
	str r0, [sp, #0x20]
	ldr r0, [fp, #4]
	str sb, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r0, [fp, #8]
	cmp r0, #0
	bne _02251340
	ldr r0, [sp, #0x10]
	add r2, sp, #0x1c
	mov r1, r6
	bl ov66_0224D908
	b _02251374
_02251340:
	ldr r0, [r6, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r2, [r6, #0x20]
	mov r0, #0x14
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r6, #0x10]
	ldr r0, [sp, #0x10]
	add r3, sp, #0x1c
	mov r1, #0x1d
	bl ov66_02248C2C
_02251374:
	cmp r8, #0
	mov r4, #0
	ble _02251394
_02251380:
	ldr r0, [sb, r4, lsl #2]
	bl ov4_021D78B0
	add r4, r4, #1
	cmp r4, r8
	blt _02251380
_02251394:
	mov r0, sb
	bl ov4_021D78B0
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022513A4: .word 0x0225A70C
_022513A8: .word 0x0225A4D0
_022513AC: .word 0x02259F60
_022513B0: .word 0x00000B76
_022513B4: .word 0x0225A608
	arm_func_end ov66_02251208

	arm_func_start ov66_022513B8
ov66_022513B8: ; 0x022513B8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #4
	beq _022513E8
	ldr r0, _02251474 ; =0x0225A70C
	ldr r1, _02251478 ; =0x0225A4D0
	ldr r2, _0225147C ; =0x0225A088
	ldr r3, _02251480 ; =0x00000BCC
	bl __msl_assertion_failed
_022513E8:
	ldr r0, [r5, #0x24]
	cmp r0, #4
	addne sp, sp, #0x20
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0x14
	ldr lr, [r0, #8]
	mov ip, #0
	str ip, [r2, #4]
	mov r0, r4
	str ip, [r2]
	mov r3, #0xc
	mov r1, #1
	str ip, [r2, #8]
	str r3, [sp, #0x14]
	str lr, [sp, #0x18]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r1, #0x1c]
	mov ip, #0
	mov r0, #1
	str ip, [sp, #4]
	str r0, [sp]
	ldr r0, [r3, #0]
	add r2, sp, #0
	str r0, [sp, #8]
	ldr r3, [r3, #4]
	mov r0, r4
	str r3, [sp, #0xc]
	str ip, [sp, #0x10]
	bl ov66_0224D908
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02251474: .word 0x0225A70C
_02251478: .word 0x0225A4D0
_0225147C: .word 0x0225A088
_02251480: .word 0x00000BCC
	arm_func_end ov66_022513B8

	arm_func_start ov66_02251484
ov66_02251484: ; 0x02251484
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x54
	mov r4, r1
	ldr r1, [r4, #0x24]
	str r0, [sp, #0x10]
	cmp r1, #5
	beq _022514B4
	ldr r0, _02251808 ; =0x0225A7A0
	ldr r1, _0225180C ; =0x0225A4D0
	ldr r2, _02251810 ; =0x02259FC4
	ldr r3, _02251814 ; =0x00000BFC
	bl __msl_assertion_failed
_022514B4:
	ldr r0, [r4, #0x24]
	cmp r0, #5
	addne sp, sp, #0x54
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, [r4, #0x20]
	ldr r1, _02251818 ; =0x0225A7B8
	ldr r5, [r3, #0xc]
	ldr r2, [r3, #8]
	mov r0, r5
	ldr fp, [r3, #4]
	str r2, [sp, #0x14]
	ldr r8, [r3, #0x10]
	bl strcmp
	cmp r0, #0
	bne _022515E8
	ldr r0, [sp, #0x10]
	mov r1, fp
	bl ov66_0224BD94
	movs r7, r0
	ldrne r0, [r7, #0x28]
	cmpne r0, #0
	addeq sp, sp, #0x54
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add sl, sp, #0x38
	mov r0, #0
	str r0, [sl]
	str r0, [sl, #4]
	str r0, [sl, #8]
	str r0, [sl, #0xc]
	ldr r0, [sp, #0x14]
	str fp, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldrsb r0, [r8]
	cmp r0, #0
	addeq sp, sp, #0x54
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	mov r5, r6
	mov r4, #0x10
_02251550:
	ldr r1, _0225181C ; =0x0225A7C0
	mov r0, r8
	bl strstr
	mov r8, r0
	b _02251568
_02251564:
	add r8, r8, #1
_02251568:
	ldrsb r1, [r8]
	cmp r1, #0
	cmpne r1, #0x5c
	bne _02251564
	cmp r1, #0
	addeq sp, sp, #0x54
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	strb r6, [r8], #1
	mov r1, r8
	b _02251594
_02251590:
	add r8, r8, #1
_02251594:
	ldrsb sb, [r8]
	cmp sb, #0
	cmpne sb, #0x5c
	bne _02251590
	strb r5, [r8]
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r1, [r7, #0x2c]
	ldr r0, [sp, #0x10]
	stmia sp, {r1, r5, fp}
	str r4, [sp, #0xc]
	ldr r2, [r7, #0x28]
	mov r1, #0x1c
	mov r3, sl
	bl ov66_02248C2C
	strb sb, [r8]
	ldrsb r0, [r8]
	cmp r0, #0
	bne _02251550
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022515E8:
	add r2, sp, #0x48
	mov r4, #0
	str r4, [r2, #4]
	ldr r0, [sp, #0x10]
	str r4, [r2, #0]
	mov r3, #0xd
	mov r1, #1
	str r4, [r2, #8]
	str r3, [sp, #0x48]
	str r5, [sp, #0x4c]
	bl ov66_0224D5A8
	str r0, [sp, #0x18]
	cmp r0, #0
	addeq sp, sp, #0x54
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r6, [r0, #0x1c]
	ldr r5, [r6, #0]
	mov r0, r5, lsl #2
	bl ov4_021D7880
	movs r7, r0
	addeq sp, sp, #0x54
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r5, #0
	mov sb, r4
	ble _02251678
	add r4, sp, #0x1c
_02251650:
	mov r0, r8
	mov r1, r4
	bl ov66_0225113C
	str r0, [r7, sb, lsl #2]
	cmp r0, #0
	ldrne r0, [sp, #0x1c]
	add sb, sb, #1
	addne r8, r8, r0
	cmp sb, r5
	blt _02251650
_02251678:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _02251754
	add r1, sp, #0x1c
	mov r0, r8
	bl ov66_0225113C
	movs sb, r0
	beq _02251750
_02251698:
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x1c
	add r8, r8, r0
	mov r0, r8
	bl ov66_0225113C
	movs r4, r0
	beq _02251730
	add r0, r5, #1
	mov sl, r0, lsl #2
	ldr r1, [sp, #0x1c]
	ldr r0, [r6, #4]
	add r8, r8, r1
	mov r1, sl
	bl ov4_021D7894
	cmp r0, #0
	beq _0225171C
	str r0, [r6, #4]
	mov r0, r7
	mov r1, sl
	bl ov4_021D7894
	cmp r0, #0
	beq _02251708
	ldr r1, [r6, #4]
	mov r7, r0
	str sb, [r1, r5, lsl #2]
	str r4, [r0, r5, lsl #2]
	add r5, r5, #1
	b _0225173C
_02251708:
	mov r0, sb
	bl ov4_021D78B0
	mov r0, r4
	bl ov4_021D78B0
	b _0225173C
_0225171C:
	mov r0, sb
	bl ov4_021D78B0
	mov r0, r4
	bl ov4_021D78B0
	b _0225173C
_02251730:
	mov r0, sb
	bl ov4_021D78B0
	b _02251750
_0225173C:
	mov r0, r8
	add r1, sp, #0x1c
	bl ov66_0225113C
	movs sb, r0
	bne _02251698
_02251750:
	str r5, [r6, #0]
_02251754:
	mov r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	str fp, [sp, #0x24]
	str r5, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	str r7, [sp, #0x34]
	str r0, [sp, #0x30]
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _02251798
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	add r2, sp, #0x20
	bl ov66_0224D908
	b _022517D8
_02251798:
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r0, #0x18]
	add r3, sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r2, [r0, #0x20]
	mov r0, #0x18
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	mov r1, #0x1e
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x10]
	bl ov66_02248C2C
_022517D8:
	cmp r5, #0
	mov r4, #0
	ble _022517F8
_022517E4:
	ldr r0, [r7, r4, lsl #2]
	bl ov4_021D78B0
	add r4, r4, #1
	cmp r4, r5
	blt _022517E4
_022517F8:
	mov r0, r7
	bl ov4_021D78B0
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02251808: .word 0x0225A7A0
_0225180C: .word 0x0225A4D0
_02251810: .word 0x02259FC4
_02251814: .word 0x00000BFC
_02251818: .word 0x0225A7B8
_0225181C: .word 0x0225A7C0
	arm_func_end ov66_02251484

	arm_func_start ov66_02251820
ov66_02251820: ; 0x02251820
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r4, r1
	ldr r1, [r4, #0x24]
	mov r5, r0
	cmp r1, #4
	beq _02251850
	ldr r0, _022518E0 ; =0x0225A70C
	ldr r1, _022518E4 ; =0x0225A4D0
	ldr r2, _022518E8 ; =0x0225A0E8
	mov r3, #0xcb0
	bl __msl_assertion_failed
_02251850:
	ldr r0, [r4, #0x24]
	cmp r0, #4
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x20]
	add r2, sp, #0x18
	ldmib r0, {r4, lr}
	mov ip, #0
	str ip, [r2, #4]
	mov r0, r5
	str ip, [r2]
	mov r3, #0xd
	mov r1, #1
	str ip, [r2, #8]
	str r3, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, pc}
	ldr r3, [r1, #0x1c]
	mov ip, #0
	mov r0, #1
	str r4, [sp, #4]
	str ip, [sp, #8]
	str r0, [sp]
	ldr r0, [r3, #0]
	add r2, sp, #0
	str r0, [sp, #0xc]
	ldr r3, [r3, #4]
	mov r0, r5
	str r3, [sp, #0x10]
	str ip, [sp, #0x14]
	bl ov66_0224D908
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_022518E0: .word 0x0225A70C
_022518E4: .word 0x0225A4D0
_022518E8: .word 0x0225A0E8
	arm_func_end ov66_02251820

	arm_func_start ov66_022518EC
ov66_022518EC: ; 0x022518EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x58
	mov r4, r1
	ldr r1, [r4, #0x24]
	str r0, [sp, #0x10]
	cmp r1, #4
	beq _0225191C
	ldr r0, _02251D54 ; =0x0225A70C
	ldr r1, _02251D58 ; =0x0225A4D0
	ldr r2, _02251D5C ; =0x0225A100
	ldr r3, _02251D60 ; =0x00000CE1
	bl __msl_assertion_failed
_0225191C:
	ldr r0, [r4, #0x24]
	cmp r0, #4
	addne sp, sp, #0x58
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x20]
	ldr r1, _02251D64 ; =0x0225A7B8
	ldmib r2, {r0, r5}
	str r0, [sp, #0x18]
	mov r0, r5
	ldr sb, [r2, #0xc]
	bl strcmp
	cmp r0, #0
	bne _02251A54
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	bl ov66_0224BD94
	movs r8, r0
	ldrne r0, [r8, #0x28]
	cmpne r0, #0
	addeq sp, sp, #0x58
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r7, sp, #0x3c
	mov r1, #0
	str r1, [r7, #4]
	ldr r0, [sp, #0x18]
	str r1, [r7, #0]
	str r1, [r7, #8]
	str r1, [r7, #0xc]
	str r1, [sp, #0x40]
	str r0, [sp, #0x3c]
	ldrsb r0, [sb]
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr fp, _02251D68 ; =0x0225A7C0
	mov r6, r1
	mov r5, r1
	mov r4, #0x10
_022519B4:
	mov r0, sb
	mov r1, fp
	bl strstr
	mov sb, r0
	b _022519CC
_022519C8:
	add sb, sb, #1
_022519CC:
	ldrsb r1, [sb]
	cmp r1, #0
	cmpne r1, #0x5c
	bne _022519C8
	cmp r1, #0
	addeq sp, sp, #0x58
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	strb r6, [sb], #1
	mov r1, sb
	b _022519F8
_022519F4:
	add sb, sb, #1
_022519F8:
	ldrsb sl, [sb]
	cmp sl, #0
	cmpne sl, #0x5c
	bne _022519F4
	strb r5, [sb]
	str r0, [sp, #0x44]
	str r1, [sp, #0x48]
	ldr r1, [r8, #0x2c]
	ldr r0, [sp, #0x10]
	stmia sp, {r1, r5}
	ldr r1, [sp, #0x18]
	mov r3, r7
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r8, #0x28]
	mov r1, #0x1c
	bl ov66_02248C2C
	strb sl, [sb]
	ldrsb r0, [sb]
	cmp r0, #0
	bne _022519B4
	add sp, sp, #0x58
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02251A54:
	add r2, sp, #0x4c
	mov r4, #0
	str r4, [r2, #4]
	ldr r0, [sp, #0x10]
	str r4, [r2, #0]
	mov r3, #0xe
	mov r1, #1
	str r4, [r2, #8]
	str r3, [sp, #0x4c]
	str r5, [sp, #0x50]
	bl ov66_0224D5A8
	str r0, [sp, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, [r0, #0x1c]
	ldr sl, [r4]
	cmp sl, #0
	beq _02251BD0
	mov r0, sl, lsl #2
	bl ov4_021D7880
	movs r5, r0
	addeq sp, sp, #0x58
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	mov r7, #0
	ble _02251AEC
	add r6, sp, #0x20
_02251AC4:
	mov r0, sb
	mov r1, r6
	bl ov66_0225113C
	str r0, [r5, r7, lsl #2]
	cmp r0, #0
	ldrne r0, [sp, #0x20]
	add r7, r7, #1
	addne sb, sb, r0
	cmp r7, sl
	blt _02251AC4
_02251AEC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02251CEC
	add r1, sp, #0x20
	mov r0, sb
	bl ov66_0225113C
	movs r7, r0
	beq _02251BC8
	add fp, sp, #0x20
_02251B10:
	ldr r0, [sp, #0x20]
	mov r1, fp
	add sb, sb, r0
	mov r0, sb
	bl ov66_0225113C
	movs r6, r0
	beq _02251BA8
	add r0, sl, #1
	mov r8, r0, lsl #2
	ldr r2, [sp, #0x20]
	ldr r0, [r4, #4]
	mov r1, r8
	add sb, sb, r2
	bl ov4_021D7894
	cmp r0, #0
	beq _02251B94
	str r0, [r4, #4]
	mov r0, r5
	mov r1, r8
	bl ov4_021D7894
	cmp r0, #0
	beq _02251B80
	ldr r1, [r4, #4]
	mov r5, r0
	str r7, [r1, sl, lsl #2]
	str r6, [r0, sl, lsl #2]
	add sl, sl, #1
	b _02251BB4
_02251B80:
	mov r0, r7
	bl ov4_021D78B0
	mov r0, r6
	bl ov4_021D78B0
	b _02251BB4
_02251B94:
	mov r0, r7
	bl ov4_021D78B0
	mov r0, r6
	bl ov4_021D78B0
	b _02251BB4
_02251BA8:
	mov r0, r7
	bl ov4_021D78B0
	b _02251BC8
_02251BB4:
	mov r0, sb
	mov r1, fp
	bl ov66_0225113C
	movs r7, r0
	bne _02251B10
_02251BC8:
	str sl, [r4]
	b _02251CEC
_02251BD0:
	mov r6, #0
	mov r5, r6
	mov sl, r6
_02251BDC:
	add r1, sp, #0x20
	mov r0, sb
	bl ov66_0225113C
	movs fp, r0
	beq _02251CE4
	ldr r0, [sp, #0x20]
	add r1, sp, #0x20
	add sb, sb, r0
	mov r0, sb
	bl ov66_0225113C
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02251C1C
	mov r0, fp
	bl ov4_021D78B0
	b _02251CE4
_02251C1C:
	add r0, sl, #1
	mov r7, r0, lsl #2
	ldr r2, [sp, #0x20]
	mov r0, r6
	mov r1, r7
	add sb, sb, r2
	bl ov4_021D7894
	mov r1, r7
	mov r7, r0
	mov r0, r5
	bl ov4_021D7894
	mov r8, r0
	cmp r7, #0
	cmpne r8, #0
	bne _02251CC8
	mov r0, fp
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	cmp sl, #0
	sub sl, sl, #1
	beq _02251C90
_02251C74:
	ldr r0, [r6, sl, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r5, sl, lsl #2]
	bl ov4_021D78B0
	cmp sl, #0
	sub sl, sl, #1
	bne _02251C74
_02251C90:
	cmp r7, #0
	beq _02251CA4
	mov r0, r7
	bl ov4_021D78B0
	b _02251CAC
_02251CA4:
	mov r0, r6
	bl ov4_021D78B0
_02251CAC:
	cmp r8, #0
	beq _02251CC0
	mov r0, r8
	bl ov4_021D78B0
	b _02251CC8
_02251CC0:
	mov r0, r5
	bl ov4_021D78B0
_02251CC8:
	ldr r0, [sp, #0x14]
	str fp, [r7, sl, lsl #2]
	str r0, [r8, sl, lsl #2]
	mov r6, r7
	mov r5, r8
	add sl, sl, #1
	b _02251BDC
_02251CE4:
	str sl, [r4]
	str r6, [r4, #4]
_02251CEC:
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str sl, [sp, #0x30]
	ldr r3, [r4, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x24
	str r3, [sp, #0x34]
	str r5, [sp, #0x38]
	bl ov66_0224D908
	cmp sl, #0
	mov r4, #0
	ble _02251D44
_02251D30:
	ldr r0, [r5, r4, lsl #2]
	bl ov4_021D78B0
	add r4, r4, #1
	cmp r4, sl
	blt _02251D30
_02251D44:
	mov r0, r5
	bl ov4_021D78B0
	add sp, sp, #0x58
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02251D54: .word 0x0225A70C
_02251D58: .word 0x0225A4D0
_02251D5C: .word 0x0225A100
_02251D60: .word 0x00000CE1
_02251D64: .word 0x0225A7B8
_02251D68: .word 0x0225A7C0
	arm_func_end ov66_022518EC

	arm_func_start ov66_02251D6C
ov66_02251D6C: ; 0x02251D6C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	movs r4, r0
	mov r5, r1
	bne _02251D94
	ldr r0, _02251E34 ; =0x0225A4C0
	ldr r1, _02251E38 ; =0x0225A4D0
	ldr r2, _02251E3C ; =0x02259F74
	ldr r3, _02251E40 ; =0x00000DBD
	bl __msl_assertion_failed
_02251D94:
	ldr r0, [r5, #0x24]
	cmp r0, #1
	bge _02251DB4
	ldr r0, _02251E44 ; =0x0225A7C4
	ldr r1, _02251E38 ; =0x0225A4D0
	ldr r2, _02251E3C ; =0x02259F74
	ldr r3, _02251E48 ; =0x00000DC3
	bl __msl_assertion_failed
_02251DB4:
	ldr r0, [r5, #0x24]
	cmp r0, #1
	addlt sp, sp, #0x80
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x20]
	sub r0, r0, #1
	ldr r0, [r1, r0, lsl #2]
	mov r1, #0x40
	bl strchr
	cmp r0, #0
	ldrne r1, [r4, #0x10]
	cmpne r1, #0
	beq _02251E24
	add r0, r0, #1
	bl ov4_021EAF1C
	mov r1, r0
	ldr r3, [r4, #0x18]
	ldr ip, [r4, #0x10]
	add r2, sp, #0
	mov r0, r4
	blx ip
	add r0, r4, #0x2c
	add r1, sp, #0
	add r0, r0, #0x400
	mov r2, #0x80
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x4ab]
_02251E24:
	mov r0, r4
	bl ov66_0225389C
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02251E34: .word 0x0225A4C0
_02251E38: .word 0x0225A4D0
_02251E3C: .word 0x02259F74
_02251E40: .word 0x00000DBD
_02251E44: .word 0x0225A7C4
_02251E48: .word 0x00000DC3
	arm_func_end ov66_02251D6C

	arm_func_start ov66_02251E4C
ov66_02251E4C: ; 0x02251E4C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	add r2, sp, #0
	mov r3, #0
	str r3, [r2, #0]
	mov r1, #1
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [sp]
	bl ov66_0224D5A8
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, pc}
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _02251EA0
	ldr r0, _02251EB0 ; =0x0225A7DC
	ldr r1, _02251EB4 ; =0x0225A4D0
	ldr r2, _02251EB8 ; =0x0225A0A0
	ldr r3, _02251EBC ; =0x00000DEF
	bl __msl_assertion_failed
_02251EA0:
	mov r0, #1
	str r0, [r4, #0]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02251EB0: .word 0x0225A7DC
_02251EB4: .word 0x0225A4D0
_02251EB8: .word 0x0225A0A0
_02251EBC: .word 0x00000DEF
	arm_func_end ov66_02251E4C

	arm_func_start ov66_02251EC0
ov66_02251EC0: ; 0x02251EC0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov sb, r1
	ldr r1, [sb, #0x24]
	mov sl, r0
	cmp r1, #4
	beq _02251EF0
	ldr r0, _022520F4 ; =0x0225A70C
	ldr r1, _022520F8 ; =0x0225A4D0
	ldr r2, _022520FC ; =0x02259EFC
	ldr r3, _02252100 ; =0x00000E01
	bl __msl_assertion_failed
_02251EF0:
	ldr r0, [sb, #0x24]
	cmp r0, #4
	addne sp, sp, #0x34
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r2, sp, #0x28
	mov r3, #0
	str r3, [r2, #0]
	mov r0, sl
	mov r1, #1
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [sp, #0x28]
	bl ov66_0224D5A8
	movs r7, r0
	ldrne r0, [r7, #0x10]
	cmpne r0, #0
	addeq sp, sp, #0x34
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r8, [r7, #0x1c]
	cmp r8, #0
	bne _02251F58
	ldr r0, _02252104 ; =0x0225A7DC
	ldr r1, _022520F8 ; =0x0225A4D0
	ldr r2, _022520FC ; =0x02259EFC
	ldr r3, _02252108 ; =0x00000E15
	bl __msl_assertion_failed
_02251F58:
	ldr r0, [sb, #0x20]
	ldr r0, [r0, #4]
	bl strlen
	mov r4, r0
	add r0, r4, #1
	bl ov4_021D7880
	movs r6, r0
	addeq sp, sp, #0x34
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0x20]
	add r2, r4, #1
	ldr r1, [r1, #4]
	bl memcpy
	ldr r0, [sb, #0x20]
	ldr r0, [r0, #8]
	bl atoi
	ldr r1, [sb, #0x20]
	mov r5, r0
	ldr r0, [r1, #0xc]
	bl strlen
	mov fp, r0
	add r0, fp, #1
	bl ov4_021D7880
	movs r4, r0
	bne _02251FCC
	mov r0, r6
	bl ov4_021D78B0
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02251FCC:
	ldr r1, [sb, #0x20]
	add r2, fp, #1
	ldr r1, [r1, #0xc]
	bl memcpy
	ldr sb, [r8, #4]
	mov r0, #1
	str sb, [sp, #0x14]
	str r6, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x18]
	mov r1, #0
	str r0, [sp]
	ldr r2, [r7, #0x20]
	mov r0, #0x18
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r7, #0x10]
	add r3, sp, #0x10
	mov r0, sl
	mov r1, #0xd
	bl ov66_02248C2C
	ldr r1, [r8, #4]
	ldr r0, [r8, #8]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	bne _02252060
	mov r0, r6
	bl ov4_021D78B0
	mov r0, r4
	bl ov4_021D78B0
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02252060:
	str r0, [r8, #8]
	str r6, [r0, sb, lsl #2]
	ldr r1, [r8, #4]
	ldr r0, [r8, #0xc]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	bne _0225209C
	mov r0, r6
	bl ov4_021D78B0
	mov r0, r4
	bl ov4_021D78B0
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0225209C:
	str r0, [r8, #0xc]
	str r5, [r0, sb, lsl #2]
	ldr r1, [r8, #4]
	ldr r0, [r8, #0x10]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	bne _022520D8
	mov r0, r6
	bl ov4_021D78B0
	mov r0, r4
	bl ov4_021D78B0
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022520D8:
	str r0, [r8, #0x10]
	str r4, [r0, sb, lsl #2]
	ldr r0, [r8, #4]
	add r0, r0, #1
	str r0, [r8, #4]
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022520F4: .word 0x0225A70C
_022520F8: .word 0x0225A4D0
_022520FC: .word 0x02259EFC
_02252100: .word 0x00000E01
_02252104: .word 0x0225A7DC
_02252108: .word 0x00000E15
	arm_func_end ov66_02251EC0

	arm_func_start ov66_0225210C
ov66_0225210C: ; 0x0225210C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	add r2, sp, #0x14
	mov r3, #0
	str r3, [r2, #0]
	mov r1, #1
	mov r4, r0
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [sp, #0x14]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, pc}
	ldr ip, [r1, #0x1c]
	mov r0, #1
	str r0, [sp]
	ldr r0, [ip, #4]
	add r2, sp, #0
	str r0, [sp, #4]
	ldr r3, [ip, #8]
	mov r0, r4
	str r3, [sp, #8]
	ldr r3, [ip, #0xc]
	str r3, [sp, #0x10]
	ldr r3, [ip, #0x10]
	str r3, [sp, #0xc]
	bl ov66_0224D908
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0225210C

	arm_func_start ov66_02252184
ov66_02252184: ; 0x02252184
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x70
	mov r4, r1
	ldr r1, [r4, #0x24]
	mov r6, r0
	cmp r1, #3
	bge _022521B4
	ldr r0, _022522F4 ; =0x0225A7EC
	ldr r1, _022522F8 ; =0x0225A4D0
	ldr r2, _022522FC ; =0x0225A1D0
	ldr r3, _02252300 ; =0x00000E93
	bl __msl_assertion_failed
_022521B4:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	addlt sp, sp, #0x70
	ldmltia sp!, {r4, r5, r6, pc}
	ldr r3, [r4, #0x20]
	sub r2, r0, #3
	ldr r0, [r3, #8]
	add r1, r3, #0xc
	ldr r4, [r3, #4]
	bl ov66_0224EC20
	movs r5, r0
	addeq sp, sp, #0x70
	ldmeqia sp!, {r4, r5, r6, pc}
	add r3, sp, #0x50
	mov r0, #0
	mov r2, r3
	mov r1, r0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2, {r0, r1}
	mov r0, r3
	mov r1, r5
	bl ov66_0224EED4
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r4
	bl ov66_0224C184
	cmp r0, #0
	bne _02252290
	add r2, sp, #0x50
	mov r0, r6
	mov r1, r4
	bl ov66_0224C270
	mov r0, r6
	mov r1, r4
	bl ov66_0224BD94
	cmp r0, #0
	ldrne r1, [r0, #0x18]
	cmpne r1, #0
	beq _02252290
	add r1, sp, #0x50
	str r1, [sp, #0x14]
	str r4, [sp, #0x10]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r4}
	mov r1, #8
	str r1, [sp, #0xc]
	ldr r2, [r0, #0x18]
	add r3, sp, #0x10
	mov r0, r6
	mov r1, #0xa
	bl ov66_02248C2C
_02252290:
	add r2, sp, #0x24
	mov ip, #0
	str ip, [r2, #4]
	mov r0, r6
	str ip, [r2]
	mov r3, #5
	mov r1, #1
	str ip, [r2, #8]
	str r3, [sp, #0x24]
	str r4, [sp, #0x28]
	bl ov66_0224D5A8
	movs r1, r0
	beq _022522E4
	add r3, sp, #0x50
	mov ip, #1
	add r2, sp, #0x18
	mov r0, r6
	str ip, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r3, [sp, #0x20]
	bl ov66_0224D908
_022522E4:
	mov r0, r5
	bl ov4_021D78B0
	add sp, sp, #0x70
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022522F4: .word 0x0225A7EC
_022522F8: .word 0x0225A4D0
_022522FC: .word 0x0225A1D0
_02252300: .word 0x00000E93
	arm_func_end ov66_02252184

	arm_func_start ov66_02252304
ov66_02252304: ; 0x02252304
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	movs r7, r0
	mov r6, r1
	bne _0225232C
	ldr r0, _022524B8 ; =0x0225A4C0
	ldr r1, _022524BC ; =0x0225A4D0
	ldr r2, _022524C0 ; =0x0225A0B8
	ldr r3, _022524C4 ; =0x00000ED5
	bl __msl_assertion_failed
_0225232C:
	ldr r0, [r6, #0x24]
	cmp r0, #6
	beq _0225234C
	ldr r0, _022524C8 ; =0x0225A804
	ldr r1, _022524BC ; =0x0225A4D0
	ldr r2, _022524C0 ; =0x0225A0B8
	ldr r3, _022524CC ; =0x00000EDB
	bl __msl_assertion_failed
_0225234C:
	ldr r0, [r6, #0x24]
	cmp r0, #6
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x20]
	add r2, sp, #0
	ldr ip, [r0, #4]
	mov r5, #0
	str r5, [r2, #4]
	str r5, [r2, #0x10]
	mov r0, r7
	str r5, [r2, #0]
	mov r4, #4
	str r5, [r2, #0xc]
	mov r3, #7
	mov r1, #2
	str r5, [r2, #8]
	str r5, [r2, #0x14]
	str r4, [sp]
	str ip, [sp, #4]
	str r3, [sp, #0xc]
	str ip, [sp, #0x10]
	bl ov66_0224D5A8
	movs r4, r0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0]
	cmp r0, #4
	bne _02252418
	ldr r1, [r6, #0x20]
	ldr r6, [r4, #0x1c]
	ldr r0, [r1, #8]
	ldr r4, [r1, #0x14]
	ldr r5, [r1, #0xc]
	bl ov4_021EA8AC
	cmp r0, #0
	addeq sp, sp, #0x18
	str r0, [r6, #0]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl ov4_021EA8AC
	cmp r0, #0
	addeq sp, sp, #0x18
	str r0, [r6, #4]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl ov4_021EA8AC
	add sp, sp, #0x18
	str r0, [r6, #8]
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02252418:
	cmp r0, #7
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	bne _02252444
	ldr r0, _022524D0 ; =0x0225A7DC
	ldr r1, _022524BC ; =0x0225A4D0
	ldr r2, _022524C0 ; =0x0225A0B8
	ldr r3, _022524D4 ; =0x00000F1D
	bl __msl_assertion_failed
_02252444:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _02252464
	ldr r0, _022524D8 ; =0x0225A81C
	ldr r1, _022524BC ; =0x0225A4D0
	ldr r2, _022524C0 ; =0x0225A0B8
	ldr r3, _022524DC ; =0x00000F1E
	bl __msl_assertion_failed
_02252464:
	ldr r0, [r5, #0]
	ldrsb r0, [r0]
	cmp r0, #0
	bne _02252488
	ldr r0, _022524E0 ; =0x0225A834
	ldr r1, _022524BC ; =0x0225A4D0
	ldr r2, _022524C0 ; =0x0225A0B8
	ldr r3, _022524DC ; =0x00000F1E
	bl __msl_assertion_failed
_02252488:
	ldr r0, [r6, #0x20]
	ldr r2, [r5, #0]
	ldr r3, [r0, #0xc]
	ldr r1, _022524E4 ; =0x0225A850
	add r0, r7, #0x1c
	bl ov66_02256E70
	mov r0, r7
	mov r1, r4
	mov r2, #0
	bl ov66_0224D908
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022524B8: .word 0x0225A4C0
_022524BC: .word 0x0225A4D0
_022524C0: .word 0x0225A0B8
_022524C4: .word 0x00000ED5
_022524C8: .word 0x0225A804
_022524CC: .word 0x00000EDB
_022524D0: .word 0x0225A7DC
_022524D4: .word 0x00000F1D
_022524D8: .word 0x0225A81C
_022524DC: .word 0x00000F1E
_022524E0: .word 0x0225A834
_022524E4: .word 0x0225A850
	arm_func_end ov66_02252304

	arm_func_start ov66_022524E8
ov66_022524E8: ; 0x022524E8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r6, r1
	ldr r1, [r6, #0x24]
	mov r7, r0
	cmp r1, #3
	beq _02252518
	ldr r0, _0225261C ; =0x0225A748
	ldr r1, _02252620 ; =0x0225A4D0
	ldr r2, _02252624 ; =0x0225A1EC
	ldr r3, _02252628 ; =0x00000F34
	bl __msl_assertion_failed
_02252518:
	ldr r0, [r6, #0x24]
	cmp r0, #3
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x20]
	add r2, sp, #0
	ldr r5, [r0, #4]
	mov r4, #0
	str r4, [r2, #4]
	mov r0, r7
	str r4, [r2, #0]
	mov r3, #4
	mov r1, #1
	str r4, [r2, #8]
	str r3, [sp]
	str r5, [sp, #4]
	bl ov66_0224D5A8
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x20]
	ldr r4, [r0, #0x1c]
	ldr r0, [r1, #8]
	ldr r1, _0225262C ; =0x0225A724
	bl strtok
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r5, _0225262C ; =0x0225A724
	mov r6, #0
_02252590:
	ldrsb r1, [r0]
	cmp r1, #0x2d
	addeq r0, r0, #1
	ldrsb r1, [r0]
	cmp r1, #0x40
	cmpne r1, #0x2b
	addeq r0, r0, #1
	bl ov4_021EA8AC
	movs r7, r0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	bne _022525E8
	mov r0, r7
	bl ov4_021D78B0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_022525E8:
	str r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	str r7, [r0, r1, lsl #2]
	ldr r1, [r4, #0xc]
	mov r0, r6
	add r2, r1, #1
	mov r1, r5
	str r2, [r4, #0xc]
	bl strtok
	cmp r0, #0
	bne _02252590
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225261C: .word 0x0225A748
_02252620: .word 0x0225A4D0
_02252624: .word 0x0225A1EC
_02252628: .word 0x00000F34
_0225262C: .word 0x0225A724
	arm_func_end ov66_022524E8

	arm_func_start ov66_02252630
ov66_02252630: ; 0x02252630
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #3
	beq _02252660
	ldr r0, _02252708 ; =0x0225A748
	ldr r1, _0225270C ; =0x0225A4D0
	ldr r2, _02252710 ; =0x0225A118
	ldr r3, _02252714 ; =0x00000F76
	bl __msl_assertion_failed
_02252660:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x28
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0x1c
	ldr r5, [r0, #4]
	mov ip, #0
	str ip, [r2, #4]
	mov r0, r4
	str ip, [r2]
	mov r3, #4
	mov r1, #1
	str ip, [r2, #8]
	str r3, [sp, #0x1c]
	str r5, [sp, #0x20]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr ip, [r1, #0x1c]
	add r2, sp, #0
	ldr r0, [ip]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r5, [sp, #4]
	str r0, [sp]
	ldr r0, [ip]
	str r0, [sp, #8]
	ldr r3, [ip, #4]
	mov r0, r4
	str r3, [sp, #0xc]
	ldr r3, [ip, #8]
	str r3, [sp, #0x10]
	ldr r3, [ip, #0xc]
	str r3, [sp, #0x14]
	ldr r3, [ip, #0x10]
	str r3, [sp, #0x18]
	bl ov66_0224D908
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02252708: .word 0x0225A748
_0225270C: .word 0x0225A4D0
_02252710: .word 0x0225A118
_02252714: .word 0x00000F76
	arm_func_end ov66_02252630

	arm_func_start ov66_02252718
ov66_02252718: ; 0x02252718
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r1
	ldr r1, [r4, #0x24]
	mov r5, r0
	cmp r1, #3
	bge _02252748
	ldr r0, _02252848 ; =0x0225A864
	ldr r1, _0225284C ; =0x0225A4D0
	ldr r2, _02252850 ; =0x02259FEC
	ldr r3, _02252854 ; =0x00000F9D
	bl __msl_assertion_failed
_02252748:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	addlt sp, sp, #0xc
	ldmltia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x20]
	add r2, sp, #0
	ldr r7, [r0, #4]
	ldr r4, [r0, #8]
	mov r6, #0
	str r6, [r2, #4]
	mov r0, r5
	str r6, [r2, #0]
	mov r3, #8
	mov r1, #1
	str r6, [r2, #8]
	str r3, [sp]
	str r7, [sp, #4]
	bl ov66_0224D5A8
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r5, [r0, #0x1c]
	cmp r5, #0
	bne _022527BC
	ldr r0, _02252858 ; =0x0225A7DC
	ldr r1, _0225284C ; =0x0225A4D0
	ldr r2, _02252850 ; =0x02259FEC
	ldr r3, _0225285C ; =0x00000FAF
	bl __msl_assertion_failed
_022527BC:
	ldr r0, [r5, #0]
	cmp r0, #0
	bge _022527DC
	ldr r0, _02252860 ; =0x0225A87C
	ldr r1, _0225284C ; =0x0225A4D0
	ldr r2, _02252850 ; =0x02259FEC
	mov r3, #0xfb0
	bl __msl_assertion_failed
_022527DC:
	ldr r1, [r5, #0]
	ldr r0, [r5, #4]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r0, [r5, #4]
	mov r0, r4
	bl strlen
	mov r7, r0
	add r0, r7, #1
	bl ov4_021D7880
	movs r6, r0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, r4
	add r2, r7, #1
	bl memcpy
	ldmia r5, {r0, r1}
	str r6, [r1, r0, lsl #2]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_02252848: .word 0x0225A864
_0225284C: .word 0x0225A4D0
_02252850: .word 0x02259FEC
_02252854: .word 0x00000F9D
_02252858: .word 0x0225A7DC
_0225285C: .word 0x00000FAF
_02252860: .word 0x0225A87C
	arm_func_end ov66_02252718

	arm_func_start ov66_02252864
ov66_02252864: ; 0x02252864
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #3
	beq _02252894
	ldr r0, _02252918 ; =0x0225A748
	ldr r1, _0225291C ; =0x0225A4D0
	ldr r2, _02252920 ; =0x0225A17C
	ldr r3, _02252924 ; =0x00000FCF
	bl __msl_assertion_failed
_02252894:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0x10
	ldr r5, [r0, #4]
	mov ip, #0
	str ip, [r2, #4]
	mov r0, r4
	str ip, [r2]
	mov r3, #8
	mov r1, #1
	str ip, [r2, #8]
	str r3, [sp, #0x10]
	str r5, [sp, #0x14]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, pc}
	ldr r3, [r1, #0x1c]
	mov r0, #1
	str r5, [sp, #4]
	str r0, [sp]
	ldr r0, [r3, #0]
	add r2, sp, #0
	str r0, [sp, #8]
	ldr r3, [r3, #4]
	mov r0, r4
	str r3, [sp, #0xc]
	bl ov66_0224D908
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02252918: .word 0x0225A748
_0225291C: .word 0x0225A4D0
_02252920: .word 0x0225A17C
_02252924: .word 0x00000FCF
	arm_func_end ov66_02252864

	arm_func_start ov66_02252928
ov66_02252928: ; 0x02252928
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	mov r5, r1
	bne _0225294C
	ldr r0, _022529D8 ; =0x0225A4C0
	ldr r1, _022529DC ; =0x0225A4D0
	ldr r2, _022529E0 ; =0x0225A014
	ldr r3, _022529E4 ; =0x00000FEC
	bl __msl_assertion_failed
_0225294C:
	ldr r0, [r5, #0x24]
	cmp r0, #2
	beq _0225296C
	ldr r0, _022529E8 ; =0x0225A5F0
	ldr r1, _022529DC ; =0x0225A4D0
	ldr r2, _022529E0 ; =0x0225A014
	ldr r3, _022529EC ; =0x00000FF2
	bl __msl_assertion_failed
_0225296C:
	ldr r0, [r5, #0x24]
	cmp r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x20]
	add r0, r4, #0x36c
	ldr r5, [r1, #0]
	mov r1, r5
	bl strcmp
	cmp r0, #0
	beq _022529AC
	mov r1, r5
	add r0, r4, #0x36c
	mov r2, #0x40
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x3ab]
_022529AC:
	mov r2, #0
	str r2, [r4, #4]
	mov r1, #1
	str r1, [r4, #0]
	ldr ip, [r4, #0x14]
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r4, #0x18]
	mov r0, r4
	blx ip
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022529D8: .word 0x0225A4C0
_022529DC: .word 0x0225A4D0
_022529E0: .word 0x0225A014
_022529E4: .word 0x00000FEC
_022529E8: .word 0x0225A5F0
_022529EC: .word 0x00000FF2
	arm_func_end ov66_02252928

	arm_func_start ov66_022529F0
ov66_022529F0: ; 0x022529F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r0
	mov r4, r1
	bne _02252A14
	ldr r0, _02252AF4 ; =0x0225A4C0
	ldr r1, _02252AF8 ; =0x0225A4D0
	ldr r2, _02252AFC ; =0x0225A070
	ldr r3, _02252B00 ; =0x00001015
	bl __msl_assertion_failed
_02252A14:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	beq _02252A34
	ldr r0, _02252B04 ; =0x0225A748
	ldr r1, _02252AF8 ; =0x0225A4D0
	ldr r2, _02252AFC ; =0x0225A070
	ldr r3, _02252B08 ; =0x0000101B
	bl __msl_assertion_failed
_02252A34:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0x20]
	ldmib r0, {r4, r5}
	mov r0, r4
	bl strlen
	mov r8, r0
	mov r0, r5
	bl strlen
	add r2, r6, #0x28
	mov r7, r0
	mov r0, r4
	mov r1, r8
	add r2, r2, #0x800
	bl ov66_0224D568
	add r2, r6, #0x28
	mov r0, r5
	mov r1, r7
	add r2, r2, #0x800
	bl ov66_0224D568
	add r2, r6, #0x42
	mov r0, r4
	mov r1, r8
	add r2, r2, #0x200
	bl ov66_0224D450
	mov r0, r5
	mov r1, r7
	add r2, r6, #0x140
	bl ov66_0224D450
	mov r0, #1
	str r0, [r6, #0x13c]
	ldr r0, [r6, #0x8a8]
	cmp r0, #0
	beq _02252ACC
	mov r0, r6
	bl ov66_022538B4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02252ACC:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _02252AE8
	ldr r1, _02252B0C ; =0x0225A890
	add r0, r6, #0x1c
	bl ov66_02256BB0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02252AE8:
	mov r0, r6
	bl ov66_0225389C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02252AF4: .word 0x0225A4C0
_02252AF8: .word 0x0225A4D0
_02252AFC: .word 0x0225A070
_02252B00: .word 0x00001015
_02252B04: .word 0x0225A748
_02252B08: .word 0x0000101B
_02252B0C: .word 0x0225A890
	arm_func_end ov66_022529F0

	arm_func_start ov66_02252B10
ov66_02252B10: ; 0x02252B10
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #3
	beq _02252B40
	ldr r0, _02252BB8 ; =0x0225A748
	ldr r1, _02252BBC ; =0x0225A4D0
	ldr r2, _02252BC0 ; =0x02259F24
	ldr r3, _02252BC4 ; =0x0000104E
	bl __msl_assertion_failed
_02252B40:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x14
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #4]
	bl atoi
	ldr r1, [r5, #0x20]
	mov r5, r0
	ldr r6, [r1, #8]
	add r2, sp, #8
	mov ip, #0
	mov r0, r4
	str ip, [r2]
	mov r3, #0x10
	mov r1, #1
	str ip, [r2, #4]
	str ip, [r2, #8]
	str r3, [sp, #8]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r2, sp, #0
	mov r0, r4
	str r5, [sp]
	str r6, [sp, #4]
	bl ov66_0224D908
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02252BB8: .word 0x0225A748
_02252BBC: .word 0x0225A4D0
_02252BC0: .word 0x02259F24
_02252BC4: .word 0x0000104E
	arm_func_end ov66_02252B10

	arm_func_start ov66_02252BC8
ov66_02252BC8: ; 0x02252BC8
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _02252BEC
	ldr r0, _02252C60 ; =0x0225A4C0
	ldr r1, _02252C64 ; =0x0225A4D0
	ldr r2, _02252C68 ; =0x02259F38
	ldr r3, _02252C6C ; =0x00001069
	bl __msl_assertion_failed
_02252BEC:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	bge _02252C0C
	ldr r0, _02252C70 ; =0x0225A864
	ldr r1, _02252C64 ; =0x0225A4D0
	ldr r2, _02252C68 ; =0x02259F38
	ldr r3, _02252C74 ; =0x0000106F
	bl __msl_assertion_failed
_02252C0C:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #4]
	bl atoi
	str r0, [r5, #0x8ac]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #8]
	bl atoi
	str r0, [r5, #0x8b0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02252C54
	ldr r1, _02252C78 ; =0x0225A890
	add r0, r5, #0x1c
	bl ov66_02256BB0
	ldmia sp!, {r3, r4, r5, pc}
_02252C54:
	mov r0, r5
	bl ov66_0225389C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02252C60: .word 0x0225A4C0
_02252C64: .word 0x0225A4D0
_02252C68: .word 0x02259F38
_02252C6C: .word 0x00001069
_02252C70: .word 0x0225A864
_02252C74: .word 0x0000106F
_02252C78: .word 0x0225A890
	arm_func_end ov66_02252BC8

	arm_func_start ov66_02252C7C
ov66_02252C7C: ; 0x02252C7C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x44
	mov r4, r1
	ldr r1, [r4, #0x24]
	mov r5, r0
	cmp r1, #3
	beq _02252CAC
	ldr r0, _02252DA8 ; =0x0225A748
	ldr r1, _02252DAC ; =0x0225A4D0
	ldr r2, _02252DB0 ; =0x0225A1B4
	ldr r3, _02252DB4 ; =0x00001090
	bl __msl_assertion_failed
_02252CAC:
	ldr r0, [r4, #0x24]
	cmp r0, #3
	addne sp, sp, #0x44
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x20]
	add r2, sp, #0x2c
	ldr r4, [r0, #4]
	mov lr, #0
	str lr, [r2, #4]
	mov r3, #5
	mov r0, r5
	str lr, [r2]
	mov ip, #1
	mov r1, #2
	str lr, [r2, #8]
	str ip, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r3, [sp, #0x38]
	str r4, [sp, #0x3c]
	bl ov66_0224D5A8
	movs r1, r0
	beq _02252D64
	ldr r0, [r1, #0]
	cmp r0, #1
	bne _02252D38
	mov ip, #0
	mov r3, #1
	add r2, sp, #0x20
	mov r0, r5
	str ip, [sp, #0x20]
	str r3, [sp, #0x24]
	str r4, [sp, #0x28]
	bl ov66_0224D908
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
_02252D38:
	cmp r0, #5
	bne _02252D64
	mov r3, #0
	add r2, sp, #0x14
	mov r0, r5
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl ov66_0224D908
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
_02252D64:
	mov r0, r5
	mov r1, r4
	bl ov66_0224D738
	movs r1, r0
	addeq sp, sp, #0x44
	ldmeqia sp!, {r4, r5, pc}
	mov r3, #0
	add r2, sp, #0
	mov r0, r5
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	bl ov66_0224D908
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02252DA8: .word 0x0225A748
_02252DAC: .word 0x0225A4D0
_02252DB0: .word 0x0225A1B4
_02252DB4: .word 0x00001090
	arm_func_end ov66_02252C7C

	arm_func_start ov66_02252DB8
ov66_02252DB8: ; 0x02252DB8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #3
	beq _02252DE8
	ldr r0, _02252E5C ; =0x0225A748
	ldr r1, _02252E60 ; =0x0225A4D0
	ldr r2, _02252E64 ; =0x0225A294
	ldr r3, _02252E68 ; =0x000010DE
	bl __msl_assertion_failed
_02252DE8:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0xc
	ldr r5, [r0, #4]
	mov r3, #0
	str r3, [r2, #4]
	mov r0, r4
	str r3, [r2, #0]
	mov r1, #1
	str r3, [r2, #8]
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	mov ip, #0
	mov r3, #6
	add r2, sp, #0
	mov r0, r4
	str ip, [sp]
	str r3, [sp, #4]
	str r5, [sp, #8]
	bl ov66_0224D908
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02252E5C: .word 0x0225A748
_02252E60: .word 0x0225A4D0
_02252E64: .word 0x0225A294
_02252E68: .word 0x000010DE
	arm_func_end ov66_02252DB8

	arm_func_start ov66_02252E6C
ov66_02252E6C: ; 0x02252E6C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #3
	beq _02252E9C
	ldr r0, _02252F10 ; =0x0225A748
	ldr r1, _02252F14 ; =0x0225A4D0
	ldr r2, _02252F18 ; =0x0225A208
	ldr r3, _02252F1C ; =0x00001101
	bl __msl_assertion_failed
_02252E9C:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0xc
	ldr r5, [r0, #4]
	mov r3, #0
	str r3, [r2, #4]
	mov r0, r4
	str r3, [r2, #0]
	mov r1, #1
	str r3, [r2, #8]
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	mov ip, #0
	mov r3, #2
	add r2, sp, #0
	mov r0, r4
	str ip, [sp]
	str r3, [sp, #4]
	str r5, [sp, #8]
	bl ov66_0224D908
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02252F10: .word 0x0225A748
_02252F14: .word 0x0225A4D0
_02252F18: .word 0x0225A208
_02252F1C: .word 0x00001101
	arm_func_end ov66_02252E6C

	arm_func_start ov66_02252F20
ov66_02252F20: ; 0x02252F20
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #3
	beq _02252F50
	ldr r0, _02252FC4 ; =0x0225A748
	ldr r1, _02252FC8 ; =0x0225A4D0
	ldr r2, _02252FCC ; =0x0225A25C
	ldr r3, _02252FD0 ; =0x00001124
	bl __msl_assertion_failed
_02252F50:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0xc
	ldr r5, [r0, #4]
	mov r3, #0
	str r3, [r2, #4]
	mov r0, r4
	str r3, [r2, #0]
	mov r1, #1
	str r3, [r2, #8]
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	mov ip, #0
	mov r3, #3
	add r2, sp, #0
	mov r0, r4
	str ip, [sp]
	str r3, [sp, #4]
	str r5, [sp, #8]
	bl ov66_0224D908
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02252FC4: .word 0x0225A748
_02252FC8: .word 0x0225A4D0
_02252FCC: .word 0x0225A25C
_02252FD0: .word 0x00001124
	arm_func_end ov66_02252F20

	arm_func_start ov66_02252FD4
ov66_02252FD4: ; 0x02252FD4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #3
	beq _02253004
	ldr r0, _02253078 ; =0x0225A748
	ldr r1, _0225307C ; =0x0225A4D0
	ldr r2, _02253080 ; =0x0225A278
	ldr r3, _02253084 ; =0x00001147
	bl __msl_assertion_failed
_02253004:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0xc
	ldr r5, [r0, #4]
	mov r3, #0
	str r3, [r2, #4]
	mov r0, r4
	str r3, [r2, #0]
	mov r1, #1
	str r3, [r2, #8]
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	mov ip, #0
	mov r3, #4
	add r2, sp, #0
	mov r0, r4
	str ip, [sp]
	str r3, [sp, #4]
	str r5, [sp, #8]
	bl ov66_0224D908
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02253078: .word 0x0225A748
_0225307C: .word 0x0225A4D0
_02253080: .word 0x0225A278
_02253084: .word 0x00001147
	arm_func_end ov66_02252FD4

	arm_func_start ov66_02253088
ov66_02253088: ; 0x02253088
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #3
	beq _022530B8
	ldr r0, _0225312C ; =0x0225A748
	ldr r1, _02253130 ; =0x0225A4D0
	ldr r2, _02253134 ; =0x0225A198
	ldr r3, _02253138 ; =0x0000116A
	bl __msl_assertion_failed
_022530B8:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0xc
	ldr r5, [r0, #4]
	mov r3, #0
	str r3, [r2, #4]
	mov r0, r4
	str r3, [r2, #0]
	mov r1, #1
	str r3, [r2, #8]
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	mov ip, #0
	mov r3, #5
	add r2, sp, #0
	mov r0, r4
	str ip, [sp]
	str r3, [sp, #4]
	str r5, [sp, #8]
	bl ov66_0224D908
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0225312C: .word 0x0225A748
_02253130: .word 0x0225A4D0
_02253134: .word 0x0225A198
_02253138: .word 0x0000116A
	arm_func_end ov66_02253088

	arm_func_start ov66_0225313C
ov66_0225313C: ; 0x0225313C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r4, r0
	cmp r1, #3
	beq _0225316C
	ldr r0, _022531E0 ; =0x0225A748
	ldr r1, _022531E4 ; =0x0225A4D0
	ldr r2, _022531E8 ; =0x0225A130
	ldr r3, _022531EC ; =0x0000118D
	bl __msl_assertion_failed
_0225316C:
	ldr r0, [r5, #0x24]
	cmp r0, #3
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	add r2, sp, #0xc
	ldr r5, [r0, #4]
	mov r3, #0
	str r3, [r2, #4]
	mov r0, r4
	str r3, [r2, #0]
	mov r1, #1
	str r3, [r2, #8]
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	bl ov66_0224D5A8
	movs r1, r0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	mov ip, #0
	mov r3, #8
	add r2, sp, #0
	mov r0, r4
	str ip, [sp]
	str r3, [sp, #4]
	str r5, [sp, #8]
	bl ov66_0224D908
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022531E0: .word 0x0225A748
_022531E4: .word 0x0225A4D0
_022531E8: .word 0x0225A130
_022531EC: .word 0x0000118D
	arm_func_end ov66_0225313C

	arm_func_start ov66_022531F0
ov66_022531F0: ; 0x022531F0
	bx lr
	arm_func_end ov66_022531F0

	arm_func_start ov66_022531F4
ov66_022531F4: ; 0x022531F4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	movs r4, r0
	bne _02253218
	ldr r0, _02253248 ; =0x0225A4C0
	ldr r1, _0225324C ; =0x0225A4D0
	ldr r2, _02253250 ; =0x0225A2B0
	ldr r3, _02253254 ; =0x000011B2
	bl __msl_assertion_failed
_02253218:
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r3, #0
	mov r0, r4
	add r2, r4, #0x36c
	mov r1, #2
	str r3, [sp]
	bl ov66_02255A08
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02253248: .word 0x0225A4C0
_0225324C: .word 0x0225A4D0
_02253250: .word 0x0225A2B0
_02253254: .word 0x000011B2
	arm_func_end ov66_022531F4

	arm_func_start ov66_02253258
ov66_02253258: ; 0x02253258
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _02253278
	ldr r0, _022532AC ; =0x0225A4C0
	ldr r1, _022532B0 ; =0x0225A4D0
	ldr r2, _022532B4 ; =0x0225A148
	ldr r3, _022532B8 ; =0x000011C2
	bl __msl_assertion_failed
_02253278:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	str r1, [r4, #4]
	ldr ip, [r4, #0x14]
	cmp ip, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r4, #0x18]
	mov r0, r4
	mov r2, #2
	blx ip
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022532AC: .word 0x0225A4C0
_022532B0: .word 0x0225A4D0
_022532B4: .word 0x0225A148
_022532B8: .word 0x000011C2
	arm_func_end ov66_02253258

	arm_func_start ov66_022532BC
ov66_022532BC: ; 0x022532BC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	movs r4, r0
	bne _022532E0
	ldr r0, _02253310 ; =0x0225A4C0
	ldr r1, _02253314 ; =0x0225A4D0
	ldr r2, _02253318 ; =0x0225A160
	ldr r3, _0225331C ; =0x000011DB
	bl __msl_assertion_failed
_022532E0:
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r2, _02253320 ; =0x0225A608
	mov r3, #0
	mov r0, r4
	mov r1, #4
	str r3, [sp]
	bl ov66_02255A08
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02253310: .word 0x0225A4C0
_02253314: .word 0x0225A4D0
_02253318: .word 0x0225A160
_0225331C: .word 0x000011DB
_02253320: .word 0x0225A608
	arm_func_end ov66_022532BC

	arm_func_start ov66_02253324
ov66_02253324: ; 0x02253324
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	movs r4, r0
	bne _02253348
	ldr r0, _02253378 ; =0x0225A4C0
	ldr r1, _0225337C ; =0x0225A4D0
	ldr r2, _02253380 ; =0x0225A2D0
	ldr r3, _02253384 ; =0x000011EB
	bl __msl_assertion_failed
_02253348:
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r2, _02253388 ; =0x0225A608
	mov r3, #0
	mov r0, r4
	mov r1, #3
	str r3, [sp]
	bl ov66_02255A08
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02253378: .word 0x0225A4C0
_0225337C: .word 0x0225A4D0
_02253380: .word 0x0225A2D0
_02253384: .word 0x000011EB
_02253388: .word 0x0225A608
	arm_func_end ov66_02253324

	arm_func_start ov66_0225338C
ov66_0225338C: ; 0x0225338C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r4, r0
	mov r5, r1
	bne _022533B0
	ldr r0, _022534A0 ; =0x0225A4C0
	ldr r1, _022534A4 ; =0x0225A4D0
	ldr r2, _022534A8 ; =0x0225A2F0
	mov r3, #0x1200
	bl __msl_assertion_failed
_022533B0:
	ldr r0, [r5, #0x24]
	cmp r0, #4
	beq _022533D0
	ldr r0, _022534AC ; =0x0225A70C
	ldr r1, _022534A4 ; =0x0225A4D0
	ldr r2, _022534A8 ; =0x0225A2F0
	ldr r3, _022534B0 ; =0x00001206
	bl __msl_assertion_failed
_022533D0:
	ldr r0, [r5, #0x24]
	cmp r0, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #4]
	bl atoi
	ldr r2, [r5, #0x20]
	ldr r1, [r4, #4]
	ldr r5, [r2, #8]
	mov r7, r0
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7, lsl #2
	bl ov4_021D7880
	movs r8, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _022534B4 ; =0x0225A898
	mov r0, r5
	bl strtok
	mov sb, #0
	mov r6, sb
	ldr r5, _022534B4 ; =0x0225A898
	b _0225344C
_0225342C:
	bl ov4_021EA8AC
	str r0, [r8, sb, lsl #2]
	cmp r0, #0
	beq _0225345C
	mov r0, r6
	mov r1, r5
	bl strtok
	add sb, sb, #1
_0225344C:
	cmp sb, r7
	bge _0225345C
	cmp r0, #0
	bne _0225342C
_0225345C:
	mov r0, r4
	mov r3, sb
	add r2, r4, #0x510
	mov r1, #5
	str r8, [sp]
	bl ov66_02255A08
	cmp sb, #0
	mov r4, #0
	ble _02253494
_02253480:
	ldr r0, [r8, r4, lsl #2]
	bl ov4_021D78B0
	add r4, r4, #1
	cmp r4, sb
	blt _02253480
_02253494:
	mov r0, r8
	bl ov4_021D78B0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_022534A0: .word 0x0225A4C0
_022534A4: .word 0x0225A4D0
_022534A8: .word 0x0225A2F0
_022534AC: .word 0x0225A70C
_022534B0: .word 0x00001206
_022534B4: .word 0x0225A898
	arm_func_end ov66_0225338C
	.data


	.global Unk_ov66_02259C50
Unk_ov66_02259C50: ; 0x02259C50
	.incbin "incbin/overlay66_data.bin", 0xF30, 0xF34 - 0xF30

	.global Unk_ov66_02259C54
Unk_ov66_02259C54: ; 0x02259C54
	.incbin "incbin/overlay66_data.bin", 0xF34, 0xF38 - 0xF34

	.global Unk_ov66_02259C58
Unk_ov66_02259C58: ; 0x02259C58
	.incbin "incbin/overlay66_data.bin", 0xF38, 0xF3C - 0xF38

	.global Unk_ov66_02259C5C
Unk_ov66_02259C5C: ; 0x02259C5C
	.incbin "incbin/overlay66_data.bin", 0xF3C, 0xF40 - 0xF3C

	.global Unk_ov66_02259C60
Unk_ov66_02259C60: ; 0x02259C60
	.incbin "incbin/overlay66_data.bin", 0xF40, 0xF44 - 0xF40

	.global Unk_ov66_02259C64
Unk_ov66_02259C64: ; 0x02259C64
	.incbin "incbin/overlay66_data.bin", 0xF44, 0xF48 - 0xF44

	.global Unk_ov66_02259C68
Unk_ov66_02259C68: ; 0x02259C68
	.incbin "incbin/overlay66_data.bin", 0xF48, 0xF4C - 0xF48

	.global Unk_ov66_02259C6C
Unk_ov66_02259C6C: ; 0x02259C6C
	.incbin "incbin/overlay66_data.bin", 0xF4C, 0xF50 - 0xF4C

	.global Unk_ov66_02259C70
Unk_ov66_02259C70: ; 0x02259C70
	.incbin "incbin/overlay66_data.bin", 0xF50, 0xF54 - 0xF50

	.global Unk_ov66_02259C74
Unk_ov66_02259C74: ; 0x02259C74
	.incbin "incbin/overlay66_data.bin", 0xF54, 0xF58 - 0xF54

	.global Unk_ov66_02259C78
Unk_ov66_02259C78: ; 0x02259C78
	.incbin "incbin/overlay66_data.bin", 0xF58, 0xF5C - 0xF58

	.global Unk_ov66_02259C7C
Unk_ov66_02259C7C: ; 0x02259C7C
	.incbin "incbin/overlay66_data.bin", 0xF5C, 0xF60 - 0xF5C

	.global Unk_ov66_02259C80
Unk_ov66_02259C80: ; 0x02259C80
	.incbin "incbin/overlay66_data.bin", 0xF60, 0xF64 - 0xF60

	.global Unk_ov66_02259C84
Unk_ov66_02259C84: ; 0x02259C84
	.incbin "incbin/overlay66_data.bin", 0xF64, 0xF68 - 0xF64

	.global Unk_ov66_02259C88
Unk_ov66_02259C88: ; 0x02259C88
	.incbin "incbin/overlay66_data.bin", 0xF68, 0xF6C - 0xF68

	.global Unk_ov66_02259C8C
Unk_ov66_02259C8C: ; 0x02259C8C
	.incbin "incbin/overlay66_data.bin", 0xF6C, 0xF70 - 0xF6C

	.global Unk_ov66_02259C90
Unk_ov66_02259C90: ; 0x02259C90
	.incbin "incbin/overlay66_data.bin", 0xF70, 0xF74 - 0xF70

	.global Unk_ov66_02259C94
Unk_ov66_02259C94: ; 0x02259C94
	.incbin "incbin/overlay66_data.bin", 0xF74, 0xF78 - 0xF74

	.global Unk_ov66_02259C98
Unk_ov66_02259C98: ; 0x02259C98
	.incbin "incbin/overlay66_data.bin", 0xF78, 0xF7C - 0xF78

	.global Unk_ov66_02259C9C
Unk_ov66_02259C9C: ; 0x02259C9C
	.incbin "incbin/overlay66_data.bin", 0xF7C, 0xF80 - 0xF7C

	.global Unk_ov66_02259CA0
Unk_ov66_02259CA0: ; 0x02259CA0
	.incbin "incbin/overlay66_data.bin", 0xF80, 0xF84 - 0xF80

	.global Unk_ov66_02259CA4
Unk_ov66_02259CA4: ; 0x02259CA4
	.incbin "incbin/overlay66_data.bin", 0xF84, 0xF88 - 0xF84

	.global Unk_ov66_02259CA8
Unk_ov66_02259CA8: ; 0x02259CA8
	.incbin "incbin/overlay66_data.bin", 0xF88, 0xF8C - 0xF88

	.global Unk_ov66_02259CAC
Unk_ov66_02259CAC: ; 0x02259CAC
	.incbin "incbin/overlay66_data.bin", 0xF8C, 0xF90 - 0xF8C

	.global Unk_ov66_02259CB0
Unk_ov66_02259CB0: ; 0x02259CB0
	.incbin "incbin/overlay66_data.bin", 0xF90, 0xF94 - 0xF90

	.global Unk_ov66_02259CB4
Unk_ov66_02259CB4: ; 0x02259CB4
	.incbin "incbin/overlay66_data.bin", 0xF94, 0xF98 - 0xF94

	.global Unk_ov66_02259CB8
Unk_ov66_02259CB8: ; 0x02259CB8
	.incbin "incbin/overlay66_data.bin", 0xF98, 0xF9C - 0xF98

	.global Unk_ov66_02259CBC
Unk_ov66_02259CBC: ; 0x02259CBC
	.incbin "incbin/overlay66_data.bin", 0xF9C, 0xFA0 - 0xF9C

	.global Unk_ov66_02259CC0
Unk_ov66_02259CC0: ; 0x02259CC0
	.incbin "incbin/overlay66_data.bin", 0xFA0, 0xFA4 - 0xFA0

	.global Unk_ov66_02259CC4
Unk_ov66_02259CC4: ; 0x02259CC4
	.incbin "incbin/overlay66_data.bin", 0xFA4, 0xFA8 - 0xFA4

	.global Unk_ov66_02259CC8
Unk_ov66_02259CC8: ; 0x02259CC8
	.incbin "incbin/overlay66_data.bin", 0xFA8, 0xFAC - 0xFA8

	.global Unk_ov66_02259CCC
Unk_ov66_02259CCC: ; 0x02259CCC
	.incbin "incbin/overlay66_data.bin", 0xFAC, 0xFB0 - 0xFAC

	.global Unk_ov66_02259CD0
Unk_ov66_02259CD0: ; 0x02259CD0
	.incbin "incbin/overlay66_data.bin", 0xFB0, 0xFB4 - 0xFB0

	.global Unk_ov66_02259CD4
Unk_ov66_02259CD4: ; 0x02259CD4
	.incbin "incbin/overlay66_data.bin", 0xFB4, 0xFB8 - 0xFB4

	.global Unk_ov66_02259CD8
Unk_ov66_02259CD8: ; 0x02259CD8
	.incbin "incbin/overlay66_data.bin", 0xFB8, 0xFBC - 0xFB8

	.global Unk_ov66_02259CDC
Unk_ov66_02259CDC: ; 0x02259CDC
	.incbin "incbin/overlay66_data.bin", 0xFBC, 0xFC0 - 0xFBC

	.global Unk_ov66_02259CE0
Unk_ov66_02259CE0: ; 0x02259CE0
	.incbin "incbin/overlay66_data.bin", 0xFC0, 0xFC4 - 0xFC0

	.global Unk_ov66_02259CE4
Unk_ov66_02259CE4: ; 0x02259CE4
	.incbin "incbin/overlay66_data.bin", 0xFC4, 0xFC8 - 0xFC4

	.global Unk_ov66_02259CE8
Unk_ov66_02259CE8: ; 0x02259CE8
	.incbin "incbin/overlay66_data.bin", 0xFC8, 0xFCC - 0xFC8

	.global Unk_ov66_02259CEC
Unk_ov66_02259CEC: ; 0x02259CEC
	.incbin "incbin/overlay66_data.bin", 0xFCC, 0xFD0 - 0xFCC

	.global Unk_ov66_02259CF0
Unk_ov66_02259CF0: ; 0x02259CF0
	.incbin "incbin/overlay66_data.bin", 0xFD0, 0xFD4 - 0xFD0

	.global Unk_ov66_02259CF4
Unk_ov66_02259CF4: ; 0x02259CF4
	.incbin "incbin/overlay66_data.bin", 0xFD4, 0xFD8 - 0xFD4

	.global Unk_ov66_02259CF8
Unk_ov66_02259CF8: ; 0x02259CF8
	.incbin "incbin/overlay66_data.bin", 0xFD8, 0xFE0 - 0xFD8

	.global Unk_ov66_02259D00
Unk_ov66_02259D00: ; 0x02259D00
	.incbin "incbin/overlay66_data.bin", 0xFE0, 0xFE8 - 0xFE0

	.global Unk_ov66_02259D08
Unk_ov66_02259D08: ; 0x02259D08
	.incbin "incbin/overlay66_data.bin", 0xFE8, 0xFF0 - 0xFE8

	.global Unk_ov66_02259D10
Unk_ov66_02259D10: ; 0x02259D10
	.incbin "incbin/overlay66_data.bin", 0xFF0, 0xFF8 - 0xFF0

	.global Unk_ov66_02259D18
Unk_ov66_02259D18: ; 0x02259D18
	.incbin "incbin/overlay66_data.bin", 0xFF8, 0x1000 - 0xFF8

	.global Unk_ov66_02259D20
Unk_ov66_02259D20: ; 0x02259D20
	.incbin "incbin/overlay66_data.bin", 0x1000, 0x1008 - 0x1000

	.global Unk_ov66_02259D28
Unk_ov66_02259D28: ; 0x02259D28
	.incbin "incbin/overlay66_data.bin", 0x1008, 0x1010 - 0x1008

	.global Unk_ov66_02259D30
Unk_ov66_02259D30: ; 0x02259D30
	.incbin "incbin/overlay66_data.bin", 0x1010, 0x1018 - 0x1010

	.global Unk_ov66_02259D38
Unk_ov66_02259D38: ; 0x02259D38
	.incbin "incbin/overlay66_data.bin", 0x1018, 0x1020 - 0x1018

	.global Unk_ov66_02259D40
Unk_ov66_02259D40: ; 0x02259D40
	.incbin "incbin/overlay66_data.bin", 0x1020, 0x1028 - 0x1020

	.global Unk_ov66_02259D48
Unk_ov66_02259D48: ; 0x02259D48
	.incbin "incbin/overlay66_data.bin", 0x1028, 0x1030 - 0x1028

	.global Unk_ov66_02259D50
Unk_ov66_02259D50: ; 0x02259D50
	.incbin "incbin/overlay66_data.bin", 0x1030, 0x1038 - 0x1030

	.global Unk_ov66_02259D58
Unk_ov66_02259D58: ; 0x02259D58
	.incbin "incbin/overlay66_data.bin", 0x1038, 0x1040 - 0x1038

	.global Unk_ov66_02259D60
Unk_ov66_02259D60: ; 0x02259D60
	.incbin "incbin/overlay66_data.bin", 0x1040, 0x104C - 0x1040

	.global Unk_ov66_02259D6C
Unk_ov66_02259D6C: ; 0x02259D6C
	.incbin "incbin/overlay66_data.bin", 0x104C, 0x1058 - 0x104C

	.global Unk_ov66_02259D78
Unk_ov66_02259D78: ; 0x02259D78
	.incbin "incbin/overlay66_data.bin", 0x1058, 0x1064 - 0x1058

	.global Unk_ov66_02259D84
Unk_ov66_02259D84: ; 0x02259D84
	.incbin "incbin/overlay66_data.bin", 0x1064, 0x1074 - 0x1064

	.global Unk_ov66_02259D94
Unk_ov66_02259D94: ; 0x02259D94
	.incbin "incbin/overlay66_data.bin", 0x1074, 0x1084 - 0x1074

	.global Unk_ov66_02259DA4
Unk_ov66_02259DA4: ; 0x02259DA4
	.incbin "incbin/overlay66_data.bin", 0x1084, 0x1094 - 0x1084

	.global Unk_ov66_02259DB4
Unk_ov66_02259DB4: ; 0x02259DB4
	.incbin "incbin/overlay66_data.bin", 0x1094, 0x10A4 - 0x1094

	.global Unk_ov66_02259DC4
Unk_ov66_02259DC4: ; 0x02259DC4
	.incbin "incbin/overlay66_data.bin", 0x10A4, 0x10B4 - 0x10A4

	.global Unk_ov66_02259DD4
Unk_ov66_02259DD4: ; 0x02259DD4
	.incbin "incbin/overlay66_data.bin", 0x10B4, 0x10C4 - 0x10B4

	.global Unk_ov66_02259DE4
Unk_ov66_02259DE4: ; 0x02259DE4
	.incbin "incbin/overlay66_data.bin", 0x10C4, 0x10D4 - 0x10C4

	.global Unk_ov66_02259DF4
Unk_ov66_02259DF4: ; 0x02259DF4
	.incbin "incbin/overlay66_data.bin", 0x10D4, 0x10E4 - 0x10D4

	.global Unk_ov66_02259E04
Unk_ov66_02259E04: ; 0x02259E04
	.incbin "incbin/overlay66_data.bin", 0x10E4, 0x10F4 - 0x10E4

	.global Unk_ov66_02259E14
Unk_ov66_02259E14: ; 0x02259E14
	.incbin "incbin/overlay66_data.bin", 0x10F4, 0x1104 - 0x10F4

	.global Unk_ov66_02259E24
Unk_ov66_02259E24: ; 0x02259E24
	.incbin "incbin/overlay66_data.bin", 0x1104, 0x1114 - 0x1104

	.global Unk_ov66_02259E34
Unk_ov66_02259E34: ; 0x02259E34
	.incbin "incbin/overlay66_data.bin", 0x1114, 0x1124 - 0x1114

	.global Unk_ov66_02259E44
Unk_ov66_02259E44: ; 0x02259E44
	.incbin "incbin/overlay66_data.bin", 0x1124, 0x1134 - 0x1124

	.global Unk_ov66_02259E54
Unk_ov66_02259E54: ; 0x02259E54
	.incbin "incbin/overlay66_data.bin", 0x1134, 0x1144 - 0x1134

	.global Unk_ov66_02259E64
Unk_ov66_02259E64: ; 0x02259E64
	.incbin "incbin/overlay66_data.bin", 0x1144, 0x1154 - 0x1144

	.global Unk_ov66_02259E74
Unk_ov66_02259E74: ; 0x02259E74
	.incbin "incbin/overlay66_data.bin", 0x1154, 0x1164 - 0x1154

	.global Unk_ov66_02259E84
Unk_ov66_02259E84: ; 0x02259E84
	.incbin "incbin/overlay66_data.bin", 0x1164, 0x1174 - 0x1164

	.global Unk_ov66_02259E94
Unk_ov66_02259E94: ; 0x02259E94
	.incbin "incbin/overlay66_data.bin", 0x1174, 0x1184 - 0x1174

	.global Unk_ov66_02259EA4
Unk_ov66_02259EA4: ; 0x02259EA4
	.incbin "incbin/overlay66_data.bin", 0x1184, 0x1194 - 0x1184

	.global Unk_ov66_02259EB4
Unk_ov66_02259EB4: ; 0x02259EB4
	.incbin "incbin/overlay66_data.bin", 0x1194, 0x11A4 - 0x1194

	.global Unk_ov66_02259EC4
Unk_ov66_02259EC4: ; 0x02259EC4
	.incbin "incbin/overlay66_data.bin", 0x11A4, 0x11B4 - 0x11A4

	.global Unk_ov66_02259ED4
Unk_ov66_02259ED4: ; 0x02259ED4
	.incbin "incbin/overlay66_data.bin", 0x11B4, 0x11C8 - 0x11B4

	.global Unk_ov66_02259EE8
Unk_ov66_02259EE8: ; 0x02259EE8
	.incbin "incbin/overlay66_data.bin", 0x11C8, 0x11DC - 0x11C8

	.global Unk_ov66_02259EFC
Unk_ov66_02259EFC: ; 0x02259EFC
	.incbin "incbin/overlay66_data.bin", 0x11DC, 0x11F0 - 0x11DC

	.global Unk_ov66_02259F10
Unk_ov66_02259F10: ; 0x02259F10
	.incbin "incbin/overlay66_data.bin", 0x11F0, 0x1204 - 0x11F0

	.global Unk_ov66_02259F24
Unk_ov66_02259F24: ; 0x02259F24
	.incbin "incbin/overlay66_data.bin", 0x1204, 0x1218 - 0x1204

	.global Unk_ov66_02259F38
Unk_ov66_02259F38: ; 0x02259F38
	.incbin "incbin/overlay66_data.bin", 0x1218, 0x122C - 0x1218

	.global Unk_ov66_02259F4C
Unk_ov66_02259F4C: ; 0x02259F4C
	.incbin "incbin/overlay66_data.bin", 0x122C, 0x1240 - 0x122C

	.global Unk_ov66_02259F60
Unk_ov66_02259F60: ; 0x02259F60
	.incbin "incbin/overlay66_data.bin", 0x1240, 0x1254 - 0x1240

	.global Unk_ov66_02259F74
Unk_ov66_02259F74: ; 0x02259F74
	.incbin "incbin/overlay66_data.bin", 0x1254, 0x1268 - 0x1254

	.global Unk_ov66_02259F88
Unk_ov66_02259F88: ; 0x02259F88
	.incbin "incbin/overlay66_data.bin", 0x1268, 0x127C - 0x1268

	.global Unk_ov66_02259F9C
Unk_ov66_02259F9C: ; 0x02259F9C
	.incbin "incbin/overlay66_data.bin", 0x127C, 0x1290 - 0x127C

	.global Unk_ov66_02259FB0
Unk_ov66_02259FB0: ; 0x02259FB0
	.incbin "incbin/overlay66_data.bin", 0x1290, 0x12A4 - 0x1290

	.global Unk_ov66_02259FC4
Unk_ov66_02259FC4: ; 0x02259FC4
	.incbin "incbin/overlay66_data.bin", 0x12A4, 0x12B8 - 0x12A4

	.global Unk_ov66_02259FD8
Unk_ov66_02259FD8: ; 0x02259FD8
	.incbin "incbin/overlay66_data.bin", 0x12B8, 0x12CC - 0x12B8

	.global Unk_ov66_02259FEC
Unk_ov66_02259FEC: ; 0x02259FEC
	.incbin "incbin/overlay66_data.bin", 0x12CC, 0x12E0 - 0x12CC

	.global Unk_ov66_0225A000
Unk_ov66_0225A000: ; 0x0225A000
	.incbin "incbin/overlay66_data.bin", 0x12E0, 0x12F4 - 0x12E0

	.global Unk_ov66_0225A014
Unk_ov66_0225A014: ; 0x0225A014
	.incbin "incbin/overlay66_data.bin", 0x12F4, 0x1308 - 0x12F4

	.global Unk_ov66_0225A028
Unk_ov66_0225A028: ; 0x0225A028
	.incbin "incbin/overlay66_data.bin", 0x1308, 0x1320 - 0x1308

	.global Unk_ov66_0225A040
Unk_ov66_0225A040: ; 0x0225A040
	.incbin "incbin/overlay66_data.bin", 0x1320, 0x1338 - 0x1320

	.global Unk_ov66_0225A058
Unk_ov66_0225A058: ; 0x0225A058
	.incbin "incbin/overlay66_data.bin", 0x1338, 0x1350 - 0x1338

	.global Unk_ov66_0225A070
Unk_ov66_0225A070: ; 0x0225A070
	.incbin "incbin/overlay66_data.bin", 0x1350, 0x1368 - 0x1350

	.global Unk_ov66_0225A088
Unk_ov66_0225A088: ; 0x0225A088
	.incbin "incbin/overlay66_data.bin", 0x1368, 0x1380 - 0x1368

	.global Unk_ov66_0225A0A0
Unk_ov66_0225A0A0: ; 0x0225A0A0
	.incbin "incbin/overlay66_data.bin", 0x1380, 0x1398 - 0x1380

	.global Unk_ov66_0225A0B8
Unk_ov66_0225A0B8: ; 0x0225A0B8
	.incbin "incbin/overlay66_data.bin", 0x1398, 0x13B0 - 0x1398

	.global Unk_ov66_0225A0D0
Unk_ov66_0225A0D0: ; 0x0225A0D0
	.incbin "incbin/overlay66_data.bin", 0x13B0, 0x13C8 - 0x13B0

	.global Unk_ov66_0225A0E8
Unk_ov66_0225A0E8: ; 0x0225A0E8
	.incbin "incbin/overlay66_data.bin", 0x13C8, 0x13E0 - 0x13C8

	.global Unk_ov66_0225A100
Unk_ov66_0225A100: ; 0x0225A100
	.incbin "incbin/overlay66_data.bin", 0x13E0, 0x13F8 - 0x13E0

	.global Unk_ov66_0225A118
Unk_ov66_0225A118: ; 0x0225A118
	.incbin "incbin/overlay66_data.bin", 0x13F8, 0x1410 - 0x13F8

	.global Unk_ov66_0225A130
Unk_ov66_0225A130: ; 0x0225A130
	.incbin "incbin/overlay66_data.bin", 0x1410, 0x1428 - 0x1410

	.global Unk_ov66_0225A148
Unk_ov66_0225A148: ; 0x0225A148
	.incbin "incbin/overlay66_data.bin", 0x1428, 0x1440 - 0x1428

	.global Unk_ov66_0225A160
Unk_ov66_0225A160: ; 0x0225A160
	.incbin "incbin/overlay66_data.bin", 0x1440, 0x145C - 0x1440

	.global Unk_ov66_0225A17C
Unk_ov66_0225A17C: ; 0x0225A17C
	.incbin "incbin/overlay66_data.bin", 0x145C, 0x1478 - 0x145C

	.global Unk_ov66_0225A198
Unk_ov66_0225A198: ; 0x0225A198
	.incbin "incbin/overlay66_data.bin", 0x1478, 0x1494 - 0x1478

	.global Unk_ov66_0225A1B4
Unk_ov66_0225A1B4: ; 0x0225A1B4
	.incbin "incbin/overlay66_data.bin", 0x1494, 0x14B0 - 0x1494

	.global Unk_ov66_0225A1D0
Unk_ov66_0225A1D0: ; 0x0225A1D0
	.incbin "incbin/overlay66_data.bin", 0x14B0, 0x14CC - 0x14B0

	.global Unk_ov66_0225A1EC
Unk_ov66_0225A1EC: ; 0x0225A1EC
	.incbin "incbin/overlay66_data.bin", 0x14CC, 0x14E8 - 0x14CC

	.global Unk_ov66_0225A208
Unk_ov66_0225A208: ; 0x0225A208
	.incbin "incbin/overlay66_data.bin", 0x14E8, 0x1504 - 0x14E8

	.global Unk_ov66_0225A224
Unk_ov66_0225A224: ; 0x0225A224
	.incbin "incbin/overlay66_data.bin", 0x1504, 0x1520 - 0x1504

	.global Unk_ov66_0225A240
Unk_ov66_0225A240: ; 0x0225A240
	.incbin "incbin/overlay66_data.bin", 0x1520, 0x153C - 0x1520

	.global Unk_ov66_0225A25C
Unk_ov66_0225A25C: ; 0x0225A25C
	.incbin "incbin/overlay66_data.bin", 0x153C, 0x1558 - 0x153C

	.global Unk_ov66_0225A278
Unk_ov66_0225A278: ; 0x0225A278
	.incbin "incbin/overlay66_data.bin", 0x1558, 0x1574 - 0x1558

	.global Unk_ov66_0225A294
Unk_ov66_0225A294: ; 0x0225A294
	.incbin "incbin/overlay66_data.bin", 0x1574, 0x1590 - 0x1574

	.global Unk_ov66_0225A2B0
Unk_ov66_0225A2B0: ; 0x0225A2B0
	.incbin "incbin/overlay66_data.bin", 0x1590, 0x15B0 - 0x1590

	.global Unk_ov66_0225A2D0
Unk_ov66_0225A2D0: ; 0x0225A2D0
	.incbin "incbin/overlay66_data.bin", 0x15B0, 0x15D0 - 0x15B0

	.global Unk_ov66_0225A2F0
Unk_ov66_0225A2F0: ; 0x0225A2F0
	.incbin "incbin/overlay66_data.bin", 0x15D0, 0x15F0 - 0x15D0

	.global Unk_ov66_0225A310
Unk_ov66_0225A310: ; 0x0225A310
	.incbin "incbin/overlay66_data.bin", 0x15F0, 0x17A0 - 0x15F0

	.global Unk_ov66_0225A4C0
Unk_ov66_0225A4C0: ; 0x0225A4C0
	.incbin "incbin/overlay66_data.bin", 0x17A0, 0x17B0 - 0x17A0

	.global Unk_ov66_0225A4D0
Unk_ov66_0225A4D0: ; 0x0225A4D0
	.incbin "incbin/overlay66_data.bin", 0x17B0, 0x17C0 - 0x17B0

	.global Unk_ov66_0225A4E0
Unk_ov66_0225A4E0: ; 0x0225A4E0
	.incbin "incbin/overlay66_data.bin", 0x17C0, 0x17D0 - 0x17C0

	.global Unk_ov66_0225A4F0
Unk_ov66_0225A4F0: ; 0x0225A4F0
	.incbin "incbin/overlay66_data.bin", 0x17D0, 0x17D8 - 0x17D0

	.global Unk_ov66_0225A4F8
Unk_ov66_0225A4F8: ; 0x0225A4F8
	.incbin "incbin/overlay66_data.bin", 0x17D8, 0x1810 - 0x17D8

	.global Unk_ov66_0225A530
Unk_ov66_0225A530: ; 0x0225A530
	.incbin "incbin/overlay66_data.bin", 0x1810, 0x1818 - 0x1810

	.global Unk_ov66_0225A538
Unk_ov66_0225A538: ; 0x0225A538
	.incbin "incbin/overlay66_data.bin", 0x1818, 0x1824 - 0x1818

	.global Unk_ov66_0225A544
Unk_ov66_0225A544: ; 0x0225A544
	.incbin "incbin/overlay66_data.bin", 0x1824, 0x1834 - 0x1824

	.global Unk_ov66_0225A554
Unk_ov66_0225A554: ; 0x0225A554
	.incbin "incbin/overlay66_data.bin", 0x1834, 0x183C - 0x1834

	.global Unk_ov66_0225A55C
Unk_ov66_0225A55C: ; 0x0225A55C
	.incbin "incbin/overlay66_data.bin", 0x183C, 0x1870 - 0x183C

	.global Unk_ov66_0225A590
Unk_ov66_0225A590: ; 0x0225A590
	.incbin "incbin/overlay66_data.bin", 0x1870, 0x1874 - 0x1870

	.global Unk_ov66_0225A594
Unk_ov66_0225A594: ; 0x0225A594
	.incbin "incbin/overlay66_data.bin", 0x1874, 0x1880 - 0x1874

	.global Unk_ov66_0225A5A0
Unk_ov66_0225A5A0: ; 0x0225A5A0
	.incbin "incbin/overlay66_data.bin", 0x1880, 0x1888 - 0x1880

	.global Unk_ov66_0225A5A8
Unk_ov66_0225A5A8: ; 0x0225A5A8
	.incbin "incbin/overlay66_data.bin", 0x1888, 0x189C - 0x1888

	.global Unk_ov66_0225A5BC
Unk_ov66_0225A5BC: ; 0x0225A5BC
	.incbin "incbin/overlay66_data.bin", 0x189C, 0x18BC - 0x189C

	.global Unk_ov66_0225A5DC
Unk_ov66_0225A5DC: ; 0x0225A5DC
	.incbin "incbin/overlay66_data.bin", 0x18BC, 0x18C0 - 0x18BC

	.global Unk_ov66_0225A5E0
Unk_ov66_0225A5E0: ; 0x0225A5E0
	.incbin "incbin/overlay66_data.bin", 0x18C0, 0x18D0 - 0x18C0

	.global Unk_ov66_0225A5F0
Unk_ov66_0225A5F0: ; 0x0225A5F0
	.incbin "incbin/overlay66_data.bin", 0x18D0, 0x18E8 - 0x18D0

	.global Unk_ov66_0225A608
Unk_ov66_0225A608: ; 0x0225A608
	.incbin "incbin/overlay66_data.bin", 0x18E8, 0x18EC - 0x18E8

	.global Unk_ov66_0225A60C
Unk_ov66_0225A60C: ; 0x0225A60C
	.incbin "incbin/overlay66_data.bin", 0x18EC, 0x18F4 - 0x18EC

	.global Unk_ov66_0225A614
Unk_ov66_0225A614: ; 0x0225A614
	.incbin "incbin/overlay66_data.bin", 0x18F4, 0x18FC - 0x18F4

	.global Unk_ov66_0225A61C
Unk_ov66_0225A61C: ; 0x0225A61C
	.incbin "incbin/overlay66_data.bin", 0x18FC, 0x1914 - 0x18FC

	.global Unk_ov66_0225A634
Unk_ov66_0225A634: ; 0x0225A634
	.incbin "incbin/overlay66_data.bin", 0x1914, 0x1930 - 0x1914

	.global Unk_ov66_0225A650
Unk_ov66_0225A650: ; 0x0225A650
	.incbin "incbin/overlay66_data.bin", 0x1930, 0x1940 - 0x1930

	.global Unk_ov66_0225A660
Unk_ov66_0225A660: ; 0x0225A660
	.incbin "incbin/overlay66_data.bin", 0x1940, 0x1948 - 0x1940

	.global Unk_ov66_0225A668
Unk_ov66_0225A668: ; 0x0225A668
	.incbin "incbin/overlay66_data.bin", 0x1948, 0x1980 - 0x1948

	.global Unk_ov66_0225A6A0
Unk_ov66_0225A6A0: ; 0x0225A6A0
	.incbin "incbin/overlay66_data.bin", 0x1980, 0x1990 - 0x1980

	.global Unk_ov66_0225A6B0
Unk_ov66_0225A6B0: ; 0x0225A6B0
	.incbin "incbin/overlay66_data.bin", 0x1990, 0x19A0 - 0x1990

	.global Unk_ov66_0225A6C0
Unk_ov66_0225A6C0: ; 0x0225A6C0
	.incbin "incbin/overlay66_data.bin", 0x19A0, 0x19B0 - 0x19A0

	.global Unk_ov66_0225A6D0
Unk_ov66_0225A6D0: ; 0x0225A6D0
	.incbin "incbin/overlay66_data.bin", 0x19B0, 0x19C4 - 0x19B0

	.global Unk_ov66_0225A6E4
Unk_ov66_0225A6E4: ; 0x0225A6E4
	.incbin "incbin/overlay66_data.bin", 0x19C4, 0x19D4 - 0x19C4

	.global Unk_ov66_0225A6F4
Unk_ov66_0225A6F4: ; 0x0225A6F4
	.incbin "incbin/overlay66_data.bin", 0x19D4, 0x19EC - 0x19D4

	.global Unk_ov66_0225A70C
Unk_ov66_0225A70C: ; 0x0225A70C
	.incbin "incbin/overlay66_data.bin", 0x19EC, 0x1A04 - 0x19EC

	.global Unk_ov66_0225A724
Unk_ov66_0225A724: ; 0x0225A724
	.incbin "incbin/overlay66_data.bin", 0x1A04, 0x1A08 - 0x1A04

	.global Unk_ov66_0225A728
Unk_ov66_0225A728: ; 0x0225A728
	.incbin "incbin/overlay66_data.bin", 0x1A08, 0x1A18 - 0x1A08

	.global Unk_ov66_0225A738
Unk_ov66_0225A738: ; 0x0225A738
	.incbin "incbin/overlay66_data.bin", 0x1A18, 0x1A28 - 0x1A18

	.global Unk_ov66_0225A748
Unk_ov66_0225A748: ; 0x0225A748
	.incbin "incbin/overlay66_data.bin", 0x1A28, 0x1A40 - 0x1A28

	.global Unk_ov66_0225A760
Unk_ov66_0225A760: ; 0x0225A760
	.incbin "incbin/overlay66_data.bin", 0x1A40, 0x1A44 - 0x1A40

	.global Unk_ov66_0225A764
Unk_ov66_0225A764: ; 0x0225A764
	.incbin "incbin/overlay66_data.bin", 0x1A44, 0x1A5C - 0x1A44

	.global Unk_ov66_0225A77C
Unk_ov66_0225A77C: ; 0x0225A77C
	.incbin "incbin/overlay66_data.bin", 0x1A5C, 0x1A74 - 0x1A5C

	.global Unk_ov66_0225A794
Unk_ov66_0225A794: ; 0x0225A794
	.incbin "incbin/overlay66_data.bin", 0x1A74, 0x1A7C - 0x1A74

	.global Unk_ov66_0225A79C
Unk_ov66_0225A79C: ; 0x0225A79C
	.incbin "incbin/overlay66_data.bin", 0x1A7C, 0x1A80 - 0x1A7C

	.global Unk_ov66_0225A7A0
Unk_ov66_0225A7A0: ; 0x0225A7A0
	.incbin "incbin/overlay66_data.bin", 0x1A80, 0x1A98 - 0x1A80

	.global Unk_ov66_0225A7B8
Unk_ov66_0225A7B8: ; 0x0225A7B8
	.incbin "incbin/overlay66_data.bin", 0x1A98, 0x1AA0 - 0x1A98

	.global Unk_ov66_0225A7C0
Unk_ov66_0225A7C0: ; 0x0225A7C0
	.incbin "incbin/overlay66_data.bin", 0x1AA0, 0x1AA4 - 0x1AA0

	.global Unk_ov66_0225A7C4
Unk_ov66_0225A7C4: ; 0x0225A7C4
	.incbin "incbin/overlay66_data.bin", 0x1AA4, 0x1ABC - 0x1AA4

	.global Unk_ov66_0225A7DC
Unk_ov66_0225A7DC: ; 0x0225A7DC
	.incbin "incbin/overlay66_data.bin", 0x1ABC, 0x1ACC - 0x1ABC

	.global Unk_ov66_0225A7EC
Unk_ov66_0225A7EC: ; 0x0225A7EC
	.incbin "incbin/overlay66_data.bin", 0x1ACC, 0x1AE4 - 0x1ACC

	.global Unk_ov66_0225A804
Unk_ov66_0225A804: ; 0x0225A804
	.incbin "incbin/overlay66_data.bin", 0x1AE4, 0x1AFC - 0x1AE4

	.global Unk_ov66_0225A81C
Unk_ov66_0225A81C: ; 0x0225A81C
	.incbin "incbin/overlay66_data.bin", 0x1AFC, 0x1B14 - 0x1AFC

	.global Unk_ov66_0225A834
Unk_ov66_0225A834: ; 0x0225A834
	.incbin "incbin/overlay66_data.bin", 0x1B14, 0x1B30 - 0x1B14

	.global Unk_ov66_0225A850
Unk_ov66_0225A850: ; 0x0225A850
	.incbin "incbin/overlay66_data.bin", 0x1B30, 0x1B44 - 0x1B30

	.global Unk_ov66_0225A864
Unk_ov66_0225A864: ; 0x0225A864
	.incbin "incbin/overlay66_data.bin", 0x1B44, 0x1B5C - 0x1B44

	.global Unk_ov66_0225A87C
Unk_ov66_0225A87C: ; 0x0225A87C
	.incbin "incbin/overlay66_data.bin", 0x1B5C, 0x1B70 - 0x1B5C

	.global Unk_ov66_0225A890
Unk_ov66_0225A890: ; 0x0225A890
	.incbin "incbin/overlay66_data.bin", 0x1B70, 0x1B78 - 0x1B70

	.global Unk_ov66_0225A898
Unk_ov66_0225A898: ; 0x0225A898
	.incbin "incbin/overlay66_data.bin", 0x1B78, 0x2

