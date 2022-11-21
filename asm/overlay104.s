
	thumb_func_start ov104_0222DCE0
ov104_0222DCE0: @ 0x0222DCE0
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r0, r2, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl FUN_02006AC0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222DCE0

	thumb_func_start ov104_0222DCF4
ov104_0222DCF4: @ 0x0222DCF4
	adds r3, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, _0222DD00 @ =FUN_02006AA4
	bx r3
	nop
_0222DD00: .4byte FUN_02006AA4
	thumb_func_end ov104_0222DCF4

	thumb_func_start ov104_0222DD04
ov104_0222DD04: @ 0x0222DD04
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	str r3, [sp]
	movs r0, #1
	movs r1, #0x1a
	movs r2, #0x15
	adds r3, r6, #0
	bl FUN_0200B144
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x30
	blx FUN_020C4CF4
	lsls r0, r4, #0x10
	ldr r2, [sp]
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl ov104_0222DCE0
	adds r6, r0, #0
	ldr r0, _0222DD68 @ =0x0000FFFF
	str r4, [r5]
	strh r0, [r5, #0x18]
	lsls r0, r4, #1
	adds r0, r4, r0
	strh r0, [r5, #0x1a]
	ldrh r0, [r6]
	adds r1, r4, #0
	strh r0, [r5, #4]
	adds r0, r7, #0
	bl FUN_0200B1EC
	adds r5, #8
	adds r4, r0, #0
	adds r1, r5, #0
	movs r2, #8
	bl FUN_02023DF0
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B190
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222DD68: .4byte 0x0000FFFF
	thumb_func_end ov104_0222DD04

	thumb_func_start ov104_0222DD6C
ov104_0222DD6C: @ 0x0222DD6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp]
	adds r7, r2, #0
	movs r1, #0
	movs r2, #0x38
	adds r4, r0, #0
	adds r6, r3, #0
	ldr r5, [sp, #0x34]
	blx FUN_020C4CF4
	ldr r1, [sp]
	ldr r2, [sp, #0x40]
	add r0, sp, #8
	bl ov104_0222DCF4
	ldrh r1, [r4]
	add r3, sp, #8
	ldr r0, _0222DF18 @ =0xFFFFF800
	adds r2, r1, #0
	ands r2, r0
	ldrh r1, [r3]
	lsrs r0, r0, #0x15
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldrh r1, [r4]
	ldr r0, _0222DF1C @ =0xFFFF07FF
	ands r0, r1
	ldrh r1, [r3, #0xe]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x10
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _0222DDCC
	cmp r5, #4
	blo _0222DDC2
	movs r0, #3
	ands r0, r5
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0222DDC2:
	ldr r0, _0222DF20 @ =0x0223F290
	lsls r1, r5, #1
	ldrh r0, [r0, r1]
	strh r0, [r4, #2]
	b _0222DDD0
_0222DDCC:
	ldrh r0, [r3, #0xc]
	strh r0, [r4, #2]
_0222DDD0:
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #8
	adds r2, r4, #0
	adds r5, r0, #0
_0222DDDC:
	ldrh r3, [r1, #2]
	strh r3, [r2, #4]
	ldrh r3, [r1, #2]
	cmp r3, #0xda
	bne _0222DDE8
	str r5, [sp, #4]
_0222DDE8:
	adds r0, r0, #1
	adds r1, r1, #2
	adds r2, r2, #2
	cmp r0, #4
	blt _0222DDDC
	str r7, [r4, #0xc]
	cmp r6, #0
	bne _0222DE26
_0222DDF8:
	bl FUN_0201D2E8
	adds r5, r0, #0
	bl FUN_0201D2E8
	lsls r0, r0, #0x10
	adds r6, r5, #0
	orrs r6, r0
	adds r0, r6, #0
	bl FUN_02075BFC
	add r1, sp, #8
	ldrb r1, [r1, #0xb]
	cmp r1, r0
	bne _0222DDF8
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_02075E38
	cmp r0, #1
	beq _0222DDF8
	str r6, [r4, #0x10]
	b _0222DE28
_0222DE26:
	str r6, [r4, #0x10]
_0222DE28:
	add r0, sp, #0x20
	ldrb r1, [r0, #0x10]
	ldr r2, [r4, #0x14]
	movs r0, #0x1f
	bics r2, r0
	movs r0, #0x1f
	ands r0, r1
	orrs r2, r0
	ldr r0, _0222DF24 @ =0xFFFFFC1F
	movs r7, #0
	ands r2, r0
	lsls r0, r1, #0x1b
	lsrs r1, r0, #0x16
	orrs r2, r1
	ldr r1, _0222DF28 @ =0xFFFF83FF
	adds r5, r7, #0
	ands r2, r1
	lsrs r1, r0, #0x11
	orrs r2, r1
	ldr r1, _0222DF2C @ =0xFFF07FFF
	ands r2, r1
	lsrs r1, r0, #0xc
	orrs r2, r1
	ldr r1, _0222DF30 @ =0xFE0FFFFF
	ands r2, r1
	lsrs r1, r0, #7
	orrs r2, r1
	ldr r1, _0222DF34 @ =0xC1FFFFFF
	lsrs r0, r0, #2
	ands r1, r2
	orrs r0, r1
	str r0, [r4, #0x14]
_0222DE68:
	adds r0, r5, #0
	bl FUN_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0222DE78
	adds r7, r7, #1
_0222DE78:
	adds r5, r5, #1
	cmp r5, #6
	blt _0222DE68
	ldr r0, _0222DF38 @ =0x000001FE
	adds r1, r7, #0
	blx FUN_020E1F6C
	cmp r0, #0xff
	ble _0222DE8C
	movs r0, #0xff
_0222DE8C:
	lsls r0, r0, #0x18
	movs r5, #0
	lsrs r7, r0, #0x18
_0222DE92:
	adds r0, r5, #0
	bl FUN_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0222DEA4
	adds r0, r4, r5
	strb r7, [r0, #0x18]
_0222DEA4:
	adds r5, r5, #1
	cmp r5, #6
	blt _0222DE92
	movs r0, #0
	strb r0, [r4, #0x1e]
	ldr r0, _0222DF3C @ =0x020E4C44
	movs r1, #0x19
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	ldrh r0, [r4]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	bl FUN_020759F0
	cmp r0, #0
	beq _0222DEE8
	ldr r2, [r4, #0x10]
	movs r1, #1
	tst r1, r2
	beq _0222DED4
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
	b _0222DEFA
_0222DED4:
	ldrh r0, [r4]
	movs r1, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	bl FUN_020759F0
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
	b _0222DEFA
_0222DEE8:
	ldrh r0, [r4]
	movs r1, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	bl FUN_020759F0
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
_0222DEFA:
	adds r1, r4, #0
	ldr r0, [sp, #4]
	adds r1, #0x21
	strb r0, [r1]
	ldrh r0, [r4]
	adds r4, #0x22
	ldr r1, [sp, #0x3c]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	adds r2, r4, #0
	bl FUN_0200B274
	adds r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222DF18: .4byte 0xFFFFF800
_0222DF1C: .4byte 0xFFFF07FF
_0222DF20: .4byte 0x0223F290
_0222DF24: .4byte 0xFFFFFC1F
_0222DF28: .4byte 0xFFFF83FF
_0222DF2C: .4byte 0xFFF07FFF
_0222DF30: .4byte 0xFE0FFFFF
_0222DF34: .4byte 0xC1FFFFFF
_0222DF38: .4byte 0x000001FE
_0222DF3C: .4byte 0x020E4C44
	thumb_func_end ov104_0222DD6C

	thumb_func_start ov104_0222DF40
ov104_0222DF40: @ 0x0222DF40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r4, r2, #0
	bl FUN_02073C2C
	cmp r4, #0x78
	bne _0222DF58
	movs r4, #0x32
	b _0222DF5E
_0222DF58:
	cmp r4, #0x79
	bne _0222DF5E
	movs r4, #0x64
_0222DF5E:
	ldr r1, [r6, #0x14]
	ldr r0, _0222E108 @ =0x3FFFFFFF
	adds r2, r4, #0
	ands r0, r1
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrh r1, [r6]
	ldr r3, [sp, #0x1c]
	adds r0, r5, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	bl FUN_02073D80
	adds r0, r5, #0
	movs r1, #0xaf
	add r2, sp, #0x1c
	bl FUN_02074B30
	adds r0, r5, #0
	bl FUN_0207418C
	ldrh r0, [r6]
	add r2, sp, #0x14
	adds r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x1b
	add r0, sp, #0x14
	strb r1, [r0, #1]
	adds r0, r5, #0
	movs r1, #0x70
	bl FUN_02074B30
	adds r0, r5, #0
	movs r1, #6
	adds r2, r6, #2
	bl FUN_02074B30
	movs r4, #0
	str r6, [sp, #0x10]
	adds r7, r4, #0
_0222DFBC:
	ldr r0, [sp, #0x10]
	add r2, sp, #0x14
	ldrh r1, [r0, #4]
	add r0, sp, #0x14
	adds r2, #2
	strh r1, [r0, #2]
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x36
	bl FUN_02074B30
	ldrb r0, [r6, #0x1e]
	add r2, sp, #0x14
	adds r2, #1
	adds r1, r0, #0
	asrs r1, r7
	movs r0, #3
	ands r1, r0
	add r0, sp, #0x14
	strb r1, [r0, #1]
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x3e
	bl FUN_02074B30
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x42
	movs r2, #0
	bl FUN_02074470
	add r1, sp, #0x14
	strb r0, [r1]
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x3a
	add r2, sp, #0x14
	bl FUN_02074B30
	ldr r0, [sp, #0x10]
	adds r4, r4, #1
	adds r0, r0, #2
	adds r7, r7, #2
	str r0, [sp, #0x10]
	cmp r4, #4
	blt _0222DFBC
	ldr r0, [r6, #0xc]
	movs r1, #7
	str r0, [sp, #0x18]
	adds r0, r5, #0
	add r2, sp, #0x18
	bl FUN_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x18]
	add r0, sp, #0x14
	adds r2, #1
	strb r1, [r0, #1]
	adds r0, r5, #0
	movs r1, #0xd
	bl FUN_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x19]
	add r0, sp, #0x14
	adds r2, #1
	strb r1, [r0, #1]
	adds r0, r5, #0
	movs r1, #0xe
	bl FUN_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1a]
	add r0, sp, #0x14
	adds r2, #1
	strb r1, [r0, #1]
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1b]
	add r0, sp, #0x14
	adds r2, #1
	strb r1, [r0, #1]
	adds r0, r5, #0
	movs r1, #0x10
	bl FUN_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1c]
	add r0, sp, #0x14
	adds r2, #1
	strb r1, [r0, #1]
	adds r0, r5, #0
	movs r1, #0x11
	bl FUN_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1d]
	add r0, sp, #0x14
	adds r2, #1
	strb r1, [r0, #1]
	adds r0, r5, #0
	movs r1, #0x12
	bl FUN_02074B30
	adds r2, r6, #0
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, #0x20
	bl FUN_02074B30
	adds r2, r6, #0
	adds r0, r5, #0
	movs r1, #9
	adds r2, #0x21
	bl FUN_02074B30
	ldr r0, [r6, #0x14]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1f
	beq _0222E0E6
	movs r2, #0x67
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #4
	bl FUN_0200B144
	ldrh r1, [r6]
	adds r4, r0, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	bl FUN_0200B1EC
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0x77
	adds r2, r7, #0
	bl FUN_02074B30
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B190
	b _0222E0F2
_0222E0E6:
	adds r2, r6, #0
	adds r0, r5, #0
	movs r1, #0x75
	adds r2, #0x22
	bl FUN_02074B30
_0222E0F2:
	adds r6, #0x1f
	adds r0, r5, #0
	movs r1, #0xc
	adds r2, r6, #0
	bl FUN_02074B30
	adds r0, r5, #0
	bl FUN_0207418C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222E108: .4byte 0x3FFFFFFF
	thumb_func_end ov104_0222DF40

	thumb_func_start ov104_0222E10C
ov104_0222E10C: @ 0x0222E10C
	ldr r3, _0222E12C @ =0x0223F298
	movs r2, #0
_0222E110:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0222E11E
	ldr r0, _0222E130 @ =0x0223F29A
	lsls r1, r2, #2
	ldrh r0, [r0, r1]
	bx lr
_0222E11E:
	adds r2, r2, #1
	adds r3, r3, #4
	cmp r2, #0x3f
	blo _0222E110
	movs r0, #3
	bx lr
	nop
_0222E12C: .4byte 0x0223F298
_0222E130: .4byte 0x0223F29A
	thumb_func_end ov104_0222E10C

	thumb_func_start ov104_0222E134
ov104_0222E134: @ 0x0222E134
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	bl FUN_02025E38
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #8]
	adds r0, r5, #0
	bl FUN_02025E38
	movs r3, #0
	adds r1, r0, #0
	str r3, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #4
	bl FUN_02077EE4
	ldr r0, _0222E1B8 @ =0x00000232
	bl FUN_0203A138
	adds r3, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl FUN_0209304C
	ldr r2, _0222E1BC @ =0x0000016B
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0xb
	bl FUN_0200B144
	movs r1, #0
	adds r5, r0, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0x91
	adds r2, r6, #0
	bl FUN_02074B30
	adds r0, r4, #0
	movs r1, #7
	add r2, sp, #8
	bl FUN_02074B30
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0200B190
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0222E1B8: .4byte 0x00000232
_0222E1BC: .4byte 0x0000016B
	thumb_func_end ov104_0222E134

	thumb_func_start ov104_0222E1C0
ov104_0222E1C0: @ 0x0222E1C0
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r5, r1, #0
	adds r1, r4, #0
	bl ov104_0222E134
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0207A048
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222E1C0

	thumb_func_start ov104_0222E1D8
ov104_0222E1D8: @ 0x0222E1D8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_02021E24
	cmp r4, r0
	beq _0222E200
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02021E50
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02021D6C
	movs r1, #1
	adds r0, r5, #0
	lsls r1, r1, #0xc
	bl FUN_02021E2C
_0222E200:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222E1D8

	thumb_func_start ov104_0222E204
ov104_0222E204: @ 0x0222E204
	push {r4, r5, lr}
	sub sp, #0xc
	lsls r1, r1, #0xc
	adds r4, r2, #0
	str r1, [sp]
	lsls r1, r4, #0xc
	str r1, [sp, #4]
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp, #8]
	cmp r3, #1
	bne _0222E232
	bl FUN_02021E74
	cmp r0, #0
	bne _0222E22C
	subs r0, r4, #3
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	b _0222E232
_0222E22C:
	adds r0, r4, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
_0222E232:
	adds r0, r5, #0
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222E204

	thumb_func_start ov104_0222E240
ov104_0222E240: @ 0x0222E240
	push {r3, lr}
	movs r2, #0x30
	bl FUN_0208C104
	cmp r0, #4
	bhi _0222E272
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222E258: @ jump table
	.2byte _0222E272 - _0222E258 - 2 @ case 0
	.2byte _0222E26E - _0222E258 - 2 @ case 1
	.2byte _0222E26A - _0222E258 - 2 @ case 2
	.2byte _0222E266 - _0222E258 - 2 @ case 3
	.2byte _0222E262 - _0222E258 - 2 @ case 4
_0222E262:
	movs r0, #1
	pop {r3, pc}
_0222E266:
	movs r0, #2
	pop {r3, pc}
_0222E26A:
	movs r0, #3
	pop {r3, pc}
_0222E26E:
	movs r0, #4
	pop {r3, pc}
_0222E272:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0222E240

	thumb_func_start ov104_0222E278
ov104_0222E278: @ 0x0222E278
	push {r3, lr}
	bl ov104_0222DD04
	bl FUN_020181C4
	pop {r3, pc}
	thumb_func_end ov104_0222E278

	thumb_func_start ov104_0222E284
ov104_0222E284: @ 0x0222E284
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	lsls r0, r3, #2
	ldr r1, [r4]
	adds r0, r5, r0
	str r1, [r0, #0x18]
	movs r0, #0x34
	adds r6, r3, #0
	muls r6, r0, r6
	adds r0, r5, r6
	ldrh r1, [r4, #4]
	adds r0, #0x29
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	adds r1, r4, #0
	adds r0, r0, r6
	adds r1, #8
	bl FUN_020021B0
	adds r0, r5, r6
	ldrh r1, [r4, #0x20]
	adds r0, #0x4c
	strh r1, [r0]
	adds r0, r5, r6
	ldrh r1, [r4, #0x22]
	adds r0, #0x4e
	strh r1, [r0]
	adds r0, r5, r6
	ldrh r1, [r4, #0x24]
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r5, r6
	ldrh r1, [r4, #0x26]
	adds r0, #0x52
	strh r1, [r0]
	adds r0, r5, r6
	ldrh r1, [r4, #0x28]
	adds r0, #0x54
	strh r1, [r0]
	adds r0, r5, r6
	ldrh r1, [r4, #0x2a]
	adds r0, #0x56
	strh r1, [r0]
	adds r0, r5, r6
	ldrh r1, [r4, #0x2c]
	adds r0, #0x58
	strh r1, [r0]
	adds r0, r5, r6
	ldrh r1, [r4, #0x2e]
	adds r0, #0x5a
	strh r1, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0222E284

	thumb_func_start ov104_0222E2F0
ov104_0222E2F0: @ 0x0222E2F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	str r1, [sp, #0x14]
	adds r5, r2, #0
	adds r4, r3, #0
	bl FUN_0201D2E8
	adds r6, r0, #0
	bl FUN_0201D2E8
	lsls r0, r0, #0x10
	adds r2, r6, #0
	orrs r2, r0
	lsls r0, r5, #0x18
	str r4, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	adds r0, r7, #0
	bl ov104_0222DD6C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0222E2F0

	thumb_func_start ov104_0222E330
ov104_0222E330: @ 0x0222E330
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	adds r7, r1, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r2, [sp, #0x10]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r3, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	movs r4, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _0222E3A4
	ldr r5, [sp, #0x30]
	adds r6, r3, #0
_0222E358:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0222E362
	movs r0, #0
	b _0222E364
_0222E362:
	ldrb r0, [r0, r4]
_0222E364:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0222E372
	movs r0, #0
	b _0222E374
_0222E372:
	ldr r0, [r6]
_0222E374:
	str r0, [sp]
	ldr r0, [sp, #0x38]
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #8]
	ldrh r1, [r7]
	ldr r0, [sp, #0xc]
	bl ov104_0222E2F0
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _0222E390
	str r0, [r5]
_0222E390:
	ldr r0, [sp, #0xc]
	adds r4, r4, #1
	adds r0, #0x38
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	adds r6, r6, #4
	adds r7, r7, #2
	adds r5, r5, #4
	cmp r4, r0
	blt _0222E358
_0222E3A4:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222E330

	thumb_func_start ov104_0222E3A8
ov104_0222E3A8: @ 0x0222E3A8
	cmp r0, #0x64
	bhs _0222E3B0
	movs r0, #3
	bx lr
_0222E3B0:
	cmp r0, #0x78
	bhs _0222E3B8
	movs r0, #6
	bx lr
_0222E3B8:
	cmp r0, #0x8c
	bhs _0222E3C0
	movs r0, #9
	bx lr
_0222E3C0:
	cmp r0, #0xa0
	bhs _0222E3C8
	movs r0, #0xc
	bx lr
_0222E3C8:
	cmp r0, #0xb4
	bhs _0222E3D0
	movs r0, #0xf
	bx lr
_0222E3D0:
	cmp r0, #0xc8
	bhs _0222E3D8
	movs r0, #0x12
	bx lr
_0222E3D8:
	cmp r0, #0xdc
	bhs _0222E3E0
	movs r0, #0x15
	bx lr
_0222E3E0:
	movs r0, #0x1f
	bx lr
	thumb_func_end ov104_0222E3A8

	thumb_func_start ov104_0222E3E4
ov104_0222E3E4: @ 0x0222E3E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp]
	ldr r0, [sp, #0x90]
	adds r7, r3, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0x90]
	cmp r0, #6
	ble _0222E3FC
	bl FUN_02022974
_0222E3FC:
	ldr r0, [sp, #0x90]
	movs r4, #0
	str r4, [sp, #0x14]
	cmp r0, #0
	beq _0222E4AA
	add r0, sp, #0x1c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x94]
	str r0, [sp, #0xc]
_0222E40E:
	bl FUN_0201D2E8
	ldr r1, [sp]
	ldrh r1, [r1, #2]
	blx FUN_020E1F6C
	ldr r0, [sp]
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	movs r2, #0xb3
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	bl ov104_0222DCF4
	movs r0, #0
	cmp r4, #0
	ble _0222E452
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x10]
	ldrh r2, [r2]
	ldrh r3, [r3, #0xc]
	add r1, sp, #0x1c
_0222E43E:
	ldrh r5, [r1]
	cmp r5, r2
	beq _0222E452
	ldrh r5, [r1, #0xc]
	cmp r5, r3
	beq _0222E452
	adds r0, r0, #1
	adds r1, #0x10
	cmp r0, r4
	blt _0222E43E
_0222E452:
	cmp r0, r4
	bne _0222E4A4
	ldr r0, [sp, #0x14]
	cmp r0, #0x32
	bge _0222E490
	movs r3, #0
	cmp r7, #0
	ble _0222E484
	ldr r2, [sp, #0x10]
	ldr r5, [sp, #0x10]
	ldrh r2, [r2]
	ldrh r6, [r5, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
_0222E46E:
	ldrh r5, [r0]
	cmp r2, r5
	beq _0222E484
	ldrh r5, [r1]
	cmp r6, r5
	beq _0222E484
	adds r3, r3, #1
	adds r0, r0, #2
	adds r1, r1, #2
	cmp r3, r7
	blt _0222E46E
_0222E484:
	cmp r3, r7
	beq _0222E490
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	b _0222E4A4
_0222E490:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	adds r4, r4, #1
	strh r1, [r0]
	ldr r0, [sp, #0x10]
	adds r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r0, r0, #2
	str r0, [sp, #0xc]
_0222E4A4:
	ldr r0, [sp, #0x90]
	cmp r4, r0
	bne _0222E40E
_0222E4AA:
	ldr r0, [sp, #0x14]
	cmp r0, #0x32
	blt _0222E4B6
	add sp, #0x7c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0222E4B6:
	movs r0, #0
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222E3E4

	thumb_func_start ov104_0222E4BC
ov104_0222E4BC: @ 0x0222E4BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x8c]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r0, [sp, #0x8c]
	add r0, sp, #0x44
	movs r2, #0xb
	movs r3, #0xb2
	adds r5, r1, #0
	bl ov104_0222DD04
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	movs r4, #0
	cmp r0, #0
	ble _0222E4F2
_0222E4E0:
	adds r0, r5, #0
	bl ov104_0222E3A8
	ldr r1, [sp, #0x8c]
	strb r0, [r1, r4]
	ldr r0, [sp, #0x10]
	adds r4, r4, #1
	cmp r4, r0
	blt _0222E4E0
_0222E4F2:
	add r0, sp, #0x78
	ldrb r0, [r0, #0x1c]
	add r1, sp, #0x2c
	cmp r0, #0
	bne _0222E514
	ldr r0, [sp, #0x10]
	add r2, sp, #0x24
	str r0, [sp]
	ldr r0, [sp, #0x18]
	movs r3, #0
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	bl ov104_0222E3E4
	b _0222E5AA
_0222E514:
	ldr r0, [sp, #0x10]
	add r2, sp, #0x24
	lsrs r0, r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	movs r3, #0
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	bl ov104_0222E3E4
	ldr r0, [sp, #0x1c]
	movs r7, #0
	cmp r0, #0
	ble _0222E560
	ldr r6, [sp, #0x18]
	add r4, sp, #0x2c
	add r5, sp, #0x24
_0222E53C:
	ldrh r1, [r6]
	add r0, sp, #0x34
	movs r2, #0xb3
	bl ov104_0222DCF4
	add r0, sp, #0x24
	ldrh r0, [r0, #0x10]
	adds r7, r7, #1
	adds r6, r6, #2
	strh r0, [r4]
	add r0, sp, #0x24
	ldrh r0, [r0, #0x1c]
	adds r4, r4, #2
	strh r0, [r5]
	ldr r0, [sp, #0x1c]
	adds r5, r5, #2
	cmp r7, r0
	blt _0222E53C
_0222E560:
	ldr r0, [sp, #0x20]
	bl FUN_020181C4
	ldr r1, [sp, #0x14]
	add r0, sp, #0x44
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222DD04
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x20]
	lsrs r6, r1, #1
	ldr r1, [sp, #0x18]
	lsls r2, r6, #1
	adds r1, r1, r2
	str r6, [sp]
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	add r1, sp, #0x2c
	add r2, sp, #0x24
	adds r3, r6, #0
	bl ov104_0222E3E4
	movs r5, #0
	cmp r6, #0
	ble _0222E5AA
	ldr r0, [sp, #0x8c]
	adds r4, r0, r6
_0222E59A:
	ldr r0, [sp, #0x14]
	bl ov104_0222E3A8
	strb r0, [r4]
	adds r5, r5, #1
	adds r4, r4, #1
	cmp r5, r6
	blt _0222E59A
_0222E5AA:
	ldr r0, [sp, #0x20]
	bl FUN_020181C4
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x8c]
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x88]
	movs r3, #0
	bl ov104_0222E330
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222E4BC

	thumb_func_start ov104_0222E5D0
ov104_0222E5D0: @ 0x0222E5D0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203608C
	movs r1, #1
	eors r0, r1
	bl FUN_02032EE8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200B498
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222E5D0

	thumb_func_start ov104_0222E5F0
ov104_0222E5F0: @ 0x0222E5F0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_02025F30
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02025FCC
	cmp r0, #0
	bgt _0222E608
	beq _0222E624
	b _0222E618
_0222E608:
	cmp r0, #0xc
	bgt _0222E618
	cmp r0, #7
	blt _0222E618
	beq _0222E618
	cmp r0, #8
	beq _0222E618
	cmp r0, #0xc
_0222E618:
	cmp r4, #0
	bne _0222E620
	movs r0, #0
	pop {r3, r4, r5, pc}
_0222E620:
	movs r0, #0x61
	pop {r3, r4, r5, pc}
_0222E624:
	cmp r4, #0
	bne _0222E62C
	movs r0, #0xfc
	pop {r3, r4, r5, pc}
_0222E62C:
	movs r0, #0xfd
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0222E5F0

	thumb_func_start ov104_0222E630
ov104_0222E630: @ 0x0222E630
	push {r3, lr}
	bl FUN_0202C878
	bl FUN_02038F8C
	pop {r3, pc}
	thumb_func_end ov104_0222E630

	thumb_func_start ov104_0222E63C
ov104_0222E63C: @ 0x0222E63C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0xbc
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0xbc
	blx FUN_020C4CF4
	str r7, [r4]
	adds r0, r4, #0
	adds r1, r4, #0
	str r5, [r4, #0x34]
	adds r0, #0x52
	strh r6, [r0]
	adds r0, r4, #0
	adds r0, #0x40
	adds r1, #0x3c
	adds r2, r6, #0
	adds r3, r5, #0
	bl ov104_0222E830
	movs r0, #8
	movs r1, #0x40
	adds r2, r5, #0
	bl FUN_0200B368
	str r0, [r4, #0x44]
	movs r0, #1
	lsls r0, r0, #0xa
	adds r1, r5, #0
	bl FUN_02023790
	str r0, [r4, #0x48]
	movs r0, #1
	lsls r0, r0, #0xa
	adds r1, r5, #0
	bl FUN_02023790
	lsls r1, r6, #0x10
	movs r2, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	lsrs r1, r1, #0x10
	adds r3, r2, #0
	bl ov104_0222E82C
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0222E63C

	thumb_func_start ov104_0222E6A8
ov104_0222E6A8: @ 0x0222E6A8
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x51
	str r0, [sp]
	ldrsb r0, [r0, r1]
	cmp r0, #0
	bne _0222E6B8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222E6B8:
	ldr r0, [sp]
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222E6FC
	ldr r5, [sp]
	movs r7, #0
	adds r6, r5, #0
	adds r6, #0x51
_0222E6CA:
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _0222E6EC
	adds r0, r4, #0
	bl ov104_0222E988
	cmp r0, #0
	bne _0222E6EC
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov104_0222E7FC
	movs r0, #0
	str r0, [r5, #4]
	ldrsb r0, [r6, r0]
	subs r0, r0, #1
	strb r0, [r6]
_0222E6EC:
	adds r7, r7, #1
	adds r5, r5, #4
	cmp r7, #8
	blt _0222E6CA
	ldr r0, [sp]
	ldr r0, [r0]
	bl ov104_0223D8C4
_0222E6FC:
	ldr r0, [sp]
	movs r1, #0x51
	ldrsb r0, [r0, r1]
	cmp r0, #0
	bne _0222E70A
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222E70A:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0222E6A8

	thumb_func_start ov104_0222E710
ov104_0222E710: @ 0x0222E710
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x51
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0222E720
	bl FUN_02022974
_0222E720:
	ldr r0, [r4, #0x44]
	bl FUN_0200B3F0
	ldr r0, [r4, #0x48]
	bl FUN_020237BC
	ldr r0, [r4, #0x4c]
	bl FUN_020237BC
	ldr r0, [r4, #0x40]
	bl FUN_020181C4
	ldr r0, [r4, #0x3c]
	bl FUN_0200B190
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222E710

	thumb_func_start ov104_0222E748
ov104_0222E748: @ 0x0222E748
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	adds r6, r1, #0
	movs r1, #0x90
	adds r7, r2, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x90
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r2, _0222E7C0 @ =0x0223F63C
	ldr r1, _0222E7C4 @ =0x0223F674
	ldr r2, [r2]
	adds r0, r4, #0
	bl ov104_0222E930
	ldr r0, _0222E7C8 @ =0x0000FFFF
	str r5, [r4]
	cmp r6, r0
	beq _0222E780
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r0, [r0]
	cmp r0, r6
	bne _0222E792
_0222E780:
	adds r0, r4, #0
	ldr r1, [r5, #0x40]
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	ldr r1, [r5, #0x3c]
	adds r0, #0x80
	str r1, [r0]
	b _0222E7A2
_0222E792:
	adds r0, r4, #0
	adds r1, r4, #0
	ldr r3, [r5, #0x34]
	adds r0, #0x84
	adds r1, #0x80
	adds r2, r6, #0
	bl ov104_0222E830
_0222E7A2:
	adds r1, r4, #0
	adds r1, #0x84
	ldr r1, [r1]
	adds r0, r4, #0
	bl ov104_0222E968
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov104_0222E904
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov104_0222E7CC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222E7C0: .4byte 0x0223F63C
_0222E7C4: .4byte 0x0223F674
_0222E7C8: .4byte 0x0000FFFF
	thumb_func_end ov104_0222E748

	thumb_func_start ov104_0222E7CC
ov104_0222E7CC: @ 0x0222E7CC
	push {r4, lr}
	movs r3, #0
	adds r4, r0, #0
_0222E7D2:
	ldr r2, [r4, #4]
	cmp r2, #0
	bne _0222E7EC
	lsls r2, r3, #2
	adds r2, r0, r2
	str r1, [r2, #4]
	movs r1, #0x51
	ldrsb r1, [r0, r1]
	adds r0, #0x51
	adds r1, r1, #1
	strb r1, [r0]
	movs r0, #1
	pop {r4, pc}
_0222E7EC:
	adds r3, r3, #1
	adds r4, r4, #4
	cmp r3, #8
	blt _0222E7D2
	bl FUN_02022974
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_0222E7CC

	thumb_func_start ov104_0222E7FC
ov104_0222E7FC: @ 0x0222E7FC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r5, #0x3c]
	cmp r0, r1
	beq _0222E812
	bl FUN_0200B190
_0222E812:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	cmp r0, r1
	beq _0222E822
	bl FUN_020181C4
_0222E822:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222E7FC

	thumb_func_start ov104_0222E82C
ov104_0222E82C: @ 0x0222E82C
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222E82C

	thumb_func_start ov104_0222E830
ov104_0222E830: @ 0x0222E830
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #1
	adds r7, r3, #0
	bl ov104_0222EA90
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #2
	bl ov104_0222EA90
	adds r6, r0, #0
	ldr r1, [sp]
	movs r0, #0x95
	adds r2, r7, #0
	bl FUN_02006AC0
	str r0, [r5]
	movs r0, #1
	movs r1, #0x1a
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_0200B144
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0222E830

	thumb_func_start ov104_0222E86C
ov104_0222E86C: @ 0x0222E86C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x52
	ldrh r0, [r0]
	adds r6, r1, #0
	movs r1, #2
	adds r7, r2, #0
	bl ov104_0222EA90
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #2
	bl ov104_0222EA90
	adds r2, r0, #0
	cmp r4, r2
	beq _0222E8C4
	movs r0, #1
	movs r1, #0x1a
	adds r3, r7, #0
	bl FUN_0200B144
	adds r4, r0, #0
	movs r1, #0
	adds r2, r5, #0
_0222E89E:
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _0222E8B4
	adds r3, r0, #0
	adds r3, #0x80
	ldr r6, [r3]
	ldr r3, [r5, #0x3c]
	cmp r6, r3
	bne _0222E8B4
	adds r0, #0x80
	str r4, [r0]
_0222E8B4:
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #8
	blt _0222E89E
	ldr r0, [r5, #0x3c]
	bl FUN_0200B190
	str r4, [r5, #0x3c]
_0222E8C4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0222E86C

	thumb_func_start ov104_0222E8C8
ov104_0222E8C8: @ 0x0222E8C8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #0x10
	bl FUN_02018144
	adds r4, #0x24
	adds r3, r0, #0
	movs r2, #8
_0222E8DA:
	ldrh r1, [r4]
	adds r4, r4, #2
	strh r1, [r3]
	adds r3, r3, #2
	subs r2, r2, #1
	bne _0222E8DA
	pop {r4, pc}
	thumb_func_end ov104_0222E8C8

	thumb_func_start ov104_0222E8E8
ov104_0222E8E8: @ 0x0222E8E8
	push {r4, lr}
	adds r4, r1, #0
	adds r0, #0x24
	movs r3, #8
_0222E8F0:
	ldrh r2, [r4]
	adds r4, r4, #2
	strh r2, [r0]
	adds r0, r0, #2
	subs r3, r3, #1
	bne _0222E8F0
	adds r0, r1, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov104_0222E8E8

	thumb_func_start ov104_0222E904
ov104_0222E904: @ 0x0222E904
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	lsls r1, r1, #2
	adds r1, r2, r1
	str r1, [r4, #0x1c]
	bl ov104_0222EA60
	ldr r1, [r4, #0x1c]
	adds r0, r1, r0
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov104_0222E904

	thumb_func_start ov104_0222E91C
ov104_0222E91C: @ 0x0222E91C
	adds r0, #0x24
	lsls r1, r1, #1
	adds r0, r0, r1
	bx lr
	thumb_func_end ov104_0222E91C

	thumb_func_start ov104_0222E924
ov104_0222E924: @ 0x0222E924
	ldr r3, _0222E92C @ =FUN_0209B974
	ldr r0, [r0]
	bx r3
	nop
_0222E92C: .4byte FUN_0209B974
	thumb_func_end ov104_0222E924

	thumb_func_start ov104_0222E930
ov104_0222E930: @ 0x0222E930
	push {r3, r4}
	movs r4, #0
	strb r4, [r0, #0x19]
	str r4, [r0, #0x1c]
	adds r3, r0, #0
	strb r4, [r0, #0x18]
	adds r3, #0x88
	str r4, [r3]
	str r1, [r0, #0x70]
	str r2, [r0, #0x74]
	adds r2, r0, #0
	adds r3, r4, #0
_0222E948:
	adds r1, r2, #0
	adds r1, #0x78
	adds r4, r4, #1
	adds r2, r2, #2
	strh r3, [r1]
	cmp r4, #4
	blo _0222E948
	movs r1, #0
_0222E958:
	adds r3, r3, #1
	str r1, [r0, #0x20]
	adds r0, r0, #4
	cmp r3, #0x14
	blo _0222E958
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222E930

	thumb_func_start ov104_0222E968
ov104_0222E968: @ 0x0222E968
	str r1, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #0x19]
	adds r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222E968

	thumb_func_start ov104_0222E974
ov104_0222E974: @ 0x0222E974
	movs r2, #2
	strb r2, [r0, #0x19]
	adds r0, #0x88
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222E974

	thumb_func_start ov104_0222E980
ov104_0222E980: @ 0x0222E980
	movs r1, #0
	strb r1, [r0, #0x19]
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov104_0222E980

	thumb_func_start ov104_0222E988
ov104_0222E988: @ 0x0222E988
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x19]
	cmp r1, #0
	beq _0222E99C
	cmp r1, #1
	beq _0222E9C2
	cmp r1, #2
	beq _0222E9A0
	b _0222E9F4
_0222E99C:
	movs r0, #0
	pop {r4, pc}
_0222E9A0:
	adds r1, r4, #0
	adds r1, #0x88
	ldr r1, [r1]
	cmp r1, #0
	beq _0222E9BE
	blx r1
	cmp r0, #1
	bne _0222E9BA
	movs r0, #1
	strb r0, [r4, #0x19]
	movs r0, #0
	adds r4, #0x88
	str r0, [r4]
_0222E9BA:
	movs r0, #1
	pop {r4, pc}
_0222E9BE:
	movs r0, #1
	strb r0, [r4, #0x19]
_0222E9C2:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0222E9CE
	movs r0, #0
	strb r0, [r4, #0x19]
	pop {r4, pc}
_0222E9CE:
	adds r0, r4, #0
	bl ov104_0222EA48
	adds r1, r0, #0
	ldr r0, [r4, #0x74]
	cmp r1, r0
	blo _0222E9E6
	bl FUN_02022974
	movs r0, #0
	strb r0, [r4, #0x19]
	pop {r4, pc}
_0222E9E6:
	ldr r2, [r4, #0x70]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	adds r0, r4, #0
	blx r1
	cmp r0, #1
	bne _0222E9C2
_0222E9F4:
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov104_0222E988

	thumb_func_start ov104_0222E9F8
ov104_0222E9F8: @ 0x0222E9F8
	ldrb r3, [r0, #0x18]
	adds r2, r3, #1
	cmp r2, #0x14
	blt _0222EA04
	movs r0, #1
	bx lr
_0222EA04:
	lsls r2, r3, #2
	adds r2, r0, r2
	str r1, [r2, #0x20]
	ldrb r1, [r0, #0x18]
	adds r1, r1, #1
	strb r1, [r0, #0x18]
	movs r0, #0
	bx lr
	thumb_func_end ov104_0222E9F8

	thumb_func_start ov104_0222EA14
ov104_0222EA14: @ 0x0222EA14
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	bne _0222EA1E
	movs r0, #0
	bx lr
_0222EA1E:
	subs r1, r1, #1
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0x18]
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov104_0222EA14

	thumb_func_start ov104_0222EA2C
ov104_0222EA2C: @ 0x0222EA2C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	bl ov104_0222E9F8
	str r4, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0222EA2C

	thumb_func_start ov104_0222EA3C
ov104_0222EA3C: @ 0x0222EA3C
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA14
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov104_0222EA3C

	thumb_func_start ov104_0222EA48
ov104_0222EA48: @ 0x0222EA48
	ldr r1, [r0, #0x1c]
	adds r3, r1, #1
	str r3, [r0, #0x1c]
	ldrb r2, [r1]
	adds r1, r3, #1
	str r1, [r0, #0x1c]
	ldrb r0, [r3]
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	thumb_func_end ov104_0222EA48

	thumb_func_start ov104_0222EA60
ov104_0222EA60: @ 0x0222EA60
	push {r4, r5}
	ldr r1, [r0, #0x1c]
	adds r2, r1, #1
	str r2, [r0, #0x1c]
	ldrb r3, [r1]
	adds r1, r2, #1
	adds r5, r1, #1
	str r1, [r0, #0x1c]
	ldrb r2, [r2]
	adds r4, r5, #1
	str r5, [r0, #0x1c]
	ldrb r1, [r1]
	str r4, [r0, #0x1c]
	ldrb r0, [r5]
	movs r4, #0
	adds r0, r4, r0
	lsls r0, r0, #8
	adds r0, r0, r1
	lsls r0, r0, #8
	adds r0, r0, r2
	lsls r0, r0, #8
	adds r0, r0, r3
	pop {r4, r5}
	bx lr
	thumb_func_end ov104_0222EA60

	thumb_func_start ov104_0222EA90
ov104_0222EA90: @ 0x0222EA90
	push {r3, lr}
	cmp r1, #0xd
	bhi _0222EB4A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222EAA2: @ jump table
	.2byte _0222EABE - _0222EAA2 - 2 @ case 0
	.2byte _0222EAC8 - _0222EAA2 - 2 @ case 1
	.2byte _0222EAD2 - _0222EAA2 - 2 @ case 2
	.2byte _0222EADC - _0222EAA2 - 2 @ case 3
	.2byte _0222EAE6 - _0222EAA2 - 2 @ case 4
	.2byte _0222EAF0 - _0222EAA2 - 2 @ case 5
	.2byte _0222EAFA - _0222EAA2 - 2 @ case 6
	.2byte _0222EB04 - _0222EAA2 - 2 @ case 7
	.2byte _0222EB0E - _0222EAA2 - 2 @ case 8
	.2byte _0222EB18 - _0222EAA2 - 2 @ case 9
	.2byte _0222EB22 - _0222EAA2 - 2 @ case 10
	.2byte _0222EB2C - _0222EAA2 - 2 @ case 11
	.2byte _0222EB36 - _0222EAA2 - 2 @ case 12
	.2byte _0222EB40 - _0222EAA2 - 2 @ case 13
_0222EABE:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB54 @ =0x0223F394
	ldr r0, [r0, r1]
	pop {r3, pc}
_0222EAC8:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB58 @ =0x0223F3A0
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EAD2:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB5C @ =0x0223F3A2
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EADC:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB60 @ =0x0223F3A4
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EAE6:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB64 @ =0x0223F3A6
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EAF0:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB68 @ =0x0223F3A8
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EAFA:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB6C @ =0x0223F3AA
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB04:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB70 @ =0x0223F3AC
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB0E:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB74 @ =0x0223F3AE
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB18:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB78 @ =0x0223F3B0
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB22:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB7C @ =0x0223F3B2
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB2C:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB80 @ =0x0223F3B4
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222EB36:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB84 @ =0x0223F3B6
	ldrb r0, [r0, r1]
	pop {r3, pc}
_0222EB40:
	movs r1, #0x28
	muls r1, r0, r1
	ldr r0, _0222EB88 @ =0x0223F3B7
	ldrb r0, [r0, r1]
	pop {r3, pc}
_0222EB4A:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	nop
_0222EB54: .4byte 0x0223F394
_0222EB58: .4byte 0x0223F3A0
_0222EB5C: .4byte 0x0223F3A2
_0222EB60: .4byte 0x0223F3A4
_0222EB64: .4byte 0x0223F3A6
_0222EB68: .4byte 0x0223F3A8
_0222EB6C: .4byte 0x0223F3AA
_0222EB70: .4byte 0x0223F3AC
_0222EB74: .4byte 0x0223F3AE
_0222EB78: .4byte 0x0223F3B0
_0222EB7C: .4byte 0x0223F3B2
_0222EB80: .4byte 0x0223F3B4
_0222EB84: .4byte 0x0223F3B6
_0222EB88: .4byte 0x0223F3B7
	thumb_func_end ov104_0222EA90

	thumb_func_start ov104_0222EB8C
ov104_0222EB8C: @ 0x0222EB8C
	push {r3, lr}
	movs r3, #0x28
	muls r3, r2, r3
	ldr r2, _0222EBA0 @ =0x0223F398
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _0222EB9C
	blx r2
_0222EB9C:
	pop {r3, pc}
	nop
_0222EBA0: .4byte 0x0223F398
	thumb_func_end ov104_0222EB8C

	thumb_func_start ov104_0222EBA4
ov104_0222EBA4: @ 0x0222EBA4
	push {r3, lr}
	movs r3, #0x28
	muls r3, r2, r3
	ldr r2, _0222EBB8 @ =0x0223F39C
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _0222EBB4
	blx r2
_0222EBB4:
	pop {r3, pc}
	nop
_0222EBB8: .4byte 0x0223F39C
	thumb_func_end ov104_0222EBA4

	thumb_func_start ov104_0222EBBC
ov104_0222EBBC: @ 0x0222EBBC
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x5e
	movs r1, #0x20
	bl FUN_02018144
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov104_0222EBBC

	thumb_func_start ov104_0222EBCC
ov104_0222EBCC: @ 0x0222EBCC
	ldr r3, _0222EBD4 @ =FUN_020181C4
	ldr r0, [r1]
	bx r3
	nop
_0222EBD4: .4byte FUN_020181C4
	thumb_func_end ov104_0222EBCC

	thumb_func_start ov104_0222EBD8
ov104_0222EBD8: @ 0x0222EBD8
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, [r2]
	ldr r1, [r2, #4]
	bl ov104_0223D9E4
	str r0, [r4]
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #2
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222EBD8

	thumb_func_start ov104_0222EC0C
ov104_0222EC0C: @ 0x0222EC0C
	ldr r3, _0222EC14 @ =ov104_0223DA28
	ldr r0, [r1]
	bx r3
	nop
_0222EC14: .4byte ov104_0223DA28
	thumb_func_end ov104_0222EC0C

	thumb_func_start ov104_0222EC18
ov104_0222EC18: @ 0x0222EC18
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222EC18

	thumb_func_start ov104_0222EC1C
ov104_0222EC1C: @ 0x0222EC1C
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222EC1C

	thumb_func_start ov104_0222EC20
ov104_0222EC20: @ 0x0222EC20
	push {r3, lr}
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #2
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	adds r1, r0, #0
	bl FUN_02019060
	movs r3, #0x14
	ldr r0, _0222EC54 @ =0x04000050
	movs r1, #1
	movs r2, #0x3c
	str r3, [sp]
	blx FUN_020BF55C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	pop {r3, pc}
	nop
_0222EC54: .4byte 0x04000050
	thumb_func_end ov104_0222EC20

	thumb_func_start ov104_0222EC58
ov104_0222EC58: @ 0x0222EC58
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222EC58

	thumb_func_start ov104_0222EC5C
ov104_0222EC5C: @ 0x0222EC5C
	push {r3, lr}
	movs r0, #2
	movs r1, #3
	bl FUN_02019060
	movs r0, #3
	movs r1, #2
	bl FUN_02019060
	pop {r3, pc}
	thumb_func_end ov104_0222EC5C

	thumb_func_start ov104_0222EC70
ov104_0222EC70: @ 0x0222EC70
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222EC70

	thumb_func_start ov104_0222EC74
ov104_0222EC74: @ 0x0222EC74
	push {r3, lr}
	ldr r0, _0222EC88 @ =0x04000050
	movs r3, #0x14
	movs r1, #1
	movs r2, #0x3c
	str r3, [sp]
	blx FUN_020BF55C
	pop {r3, pc}
	nop
_0222EC88: .4byte 0x04000050
	thumb_func_end ov104_0222EC74

	thumb_func_start ov104_0222EC8C
ov104_0222EC8C: @ 0x0222EC8C
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222EC8C

	thumb_func_start ov104_0222EC90
ov104_0222EC90: @ 0x0222EC90
	push {r4, lr}
	ldr r0, [r0]
	adds r4, r1, #0
	bl ov104_0223C164
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222EC90

	thumb_func_start ov104_0222ECA0
ov104_0222ECA0: @ 0x0222ECA0
	ldr r3, _0222ECA8 @ =ov104_0223C23C
	ldr r0, [r1]
	bx r3
	nop
_0222ECA8: .4byte ov104_0223C23C
	thumb_func_end ov104_0222ECA0

	thumb_func_start ov104_0222ECAC
ov104_0222ECAC: @ 0x0222ECAC
	push {r3, lr}
	movs r0, #1
	movs r1, #0
	bl FUN_02019060
	movs r0, #0
	movs r1, #2
	bl FUN_02019060
	movs r0, #2
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	adds r1, r0, #0
	bl FUN_02019060
	movs r3, #0x14
	ldr r0, _0222ECE0 @ =0x04000050
	movs r1, #1
	movs r2, #0x3c
	str r3, [sp]
	blx FUN_020BF55C
	pop {r3, pc}
	nop
_0222ECE0: .4byte 0x04000050
	thumb_func_end ov104_0222ECAC

	thumb_func_start ov104_0222ECE4
ov104_0222ECE4: @ 0x0222ECE4
	bx lr
	.align 2, 0
	thumb_func_end ov104_0222ECE4

	thumb_func_start ov104_0222ECE8
ov104_0222ECE8: @ 0x0222ECE8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd9
	lsls r0, r0, #4
	ldrb r1, [r3, r0]
	adds r1, r1, #1
	strb r1, [r3, r0]
	bl FUN_0203608C
	cmp r4, r0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222ECE8

	thumb_func_start ov104_0222ED00
ov104_0222ED00: @ 0x0222ED00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0222ED24 @ =0x000006FC
	ldr r0, [r4, r0]
	bl FUN_02025E38
	ldr r1, _0222ED28 @ =0x0000072C
	movs r0, #0x22
	adds r1, r4, r1
	movs r2, #0x2c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222ED20
	movs r0, #1
	pop {r4, pc}
_0222ED20:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0222ED24: .4byte 0x000006FC
_0222ED28: .4byte 0x0000072C
	thumb_func_end ov104_0222ED00

	thumb_func_start ov104_0222ED2C
ov104_0222ED2C: @ 0x0222ED2C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd9
	lsls r0, r0, #4
	ldrb r1, [r3, r0]
	adds r1, r1, #1
	strb r1, [r3, r0]
	bl FUN_0203608C
	cmp r4, r0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222ED2C

	thumb_func_start ov104_0222ED44
ov104_0222ED44: @ 0x0222ED44
	push {r4, lr}
	ldr r1, _0222ED70 @ =0x0000072C
	movs r3, #0
	adds r1, r0, r1
	adds r4, r1, #0
_0222ED4E:
	ldrh r2, [r0, #0x18]
	adds r3, r3, #1
	adds r0, r0, #2
	strh r2, [r4]
	adds r4, r4, #2
	cmp r3, #0x14
	blt _0222ED4E
	movs r0, #0x23
	movs r2, #0x2c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222ED6C
	movs r0, #1
	pop {r4, pc}
_0222ED6C:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0222ED70: .4byte 0x0000072C
	thumb_func_end ov104_0222ED44

	thumb_func_start ov104_0222ED74
ov104_0222ED74: @ 0x0222ED74
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0xd9
	adds r4, r3, #0
	lsls r0, r0, #4
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222EDA6
	bl FUN_0203608C
	cmp r0, #0
	beq _0222EDA6
	movs r1, #0
_0222ED98:
	ldrh r0, [r5]
	adds r1, r1, #1
	adds r5, r5, #2
	strh r0, [r4, #0x18]
	adds r4, r4, #2
	cmp r1, #0x14
	blt _0222ED98
_0222EDA6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0222ED74

	thumb_func_start ov104_0222EDA8
ov104_0222EDA8: @ 0x0222EDA8
	push {r3, r4, r5, lr}
	ldr r1, _0222EDD8 @ =0x0000072C
	movs r2, #0x9a
	adds r1, r0, r1
	movs r4, #0
	adds r5, r1, #0
	lsls r2, r2, #2
_0222EDB6:
	ldrh r3, [r0, r2]
	adds r4, r4, #1
	adds r0, r0, #2
	strh r3, [r5]
	adds r5, r5, #2
	cmp r4, #0x14
	blt _0222EDB6
	movs r0, #0x24
	movs r2, #0x2c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222EDD4
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222EDD4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222EDD8: .4byte 0x0000072C
	thumb_func_end ov104_0222EDA8

	thumb_func_start ov104_0222EDDC
ov104_0222EDDC: @ 0x0222EDDC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0xd9
	adds r4, r3, #0
	lsls r0, r0, #4
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222EE12
	bl FUN_0203608C
	cmp r0, #0
	beq _0222EE12
	movs r0, #0x9a
	movs r2, #0
	lsls r0, r0, #2
_0222EE04:
	ldrh r1, [r5]
	adds r2, r2, #1
	adds r5, r5, #2
	strh r1, [r4, r0]
	adds r4, r4, #2
	cmp r2, #0x14
	blt _0222EE04
_0222EE12:
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0222EDDC

	thumb_func_start ov104_0222EE14
ov104_0222EE14: @ 0x0222EE14
	push {r3, lr}
	ldr r2, _0222EE34 @ =0x0000072C
	adds r3, r0, #0
	strh r1, [r3, r2]
	adds r1, r3, r2
	movs r0, #0x25
	movs r2, #0x2c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222EE2E
	movs r0, #1
	pop {r3, pc}
_0222EE2E:
	movs r0, #0
	pop {r3, pc}
	nop
_0222EE34: .4byte 0x0000072C
	thumb_func_end ov104_0222EE14

	thumb_func_start ov104_0222EE38
ov104_0222EE38: @ 0x0222EE38
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xd9
	adds r4, r3, #0
	lsls r0, r0, #4
	ldrb r1, [r4, r0]
	adds r6, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r5, r0
	beq _0222EE58
	ldrh r1, [r6]
	ldr r0, _0222EE5C @ =0x00000D88
	strb r1, [r4, r0]
_0222EE58:
	pop {r4, r5, r6, pc}
	nop
_0222EE5C: .4byte 0x00000D88
	thumb_func_end ov104_0222EE38

	thumb_func_start ov104_0222EE60
ov104_0222EE60: @ 0x0222EE60
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_02073C70
	adds r4, r0, #0
	ldr r0, _0222EEA0 @ =0x000006FC
	ldr r0, [r5, r0]
	bl FUN_0207A268
	movs r1, #0x26
	lsls r1, r1, #4
	ldrb r1, [r5, r1]
	bl FUN_0207A0FC
	ldr r1, _0222EEA4 @ =0x00000784
	adds r2, r4, #0
	adds r1, r5, r1
	blx FUN_020C4DB0
	ldr r1, _0222EEA4 @ =0x00000784
	movs r2, #2
	movs r0, #0x26
	adds r1, r5, r1
	lsls r2, r2, #8
	bl FUN_0203597C
	cmp r0, #1
	bne _0222EE9C
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222EE9C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222EEA0: .4byte 0x000006FC
_0222EEA4: .4byte 0x00000784
	thumb_func_end ov104_0222EE60

	thumb_func_start ov104_0222EEA8
ov104_0222EEA8: @ 0x0222EEA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xd9
	adds r4, r3, #0
	lsls r0, r0, #4
	ldrb r1, [r4, r0]
	adds r6, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r5, r0
	beq _0222EED2
	bl FUN_02073C70
	ldr r1, _0222EED4 @ =0x00000D8C
	adds r2, r0, #0
	ldr r1, [r4, r1]
	adds r0, r6, #0
	blx FUN_020C4DB0
_0222EED2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222EED4: .4byte 0x00000D8C
	thumb_func_end ov104_0222EEA8

	thumb_func_start ov104_0222EED8
ov104_0222EED8: @ 0x0222EED8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #2
	lsls r0, r0, #8
	adds r4, r1, #0
	cmp r2, r0
	ble _0222EEEA
	bl FUN_02022974
_0222EEEA:
	ldr r0, _0222EEF4 @ =0x00000984
	adds r1, r4, r0
	lsls r0, r5, #9
	adds r0, r1, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222EEF4: .4byte 0x00000984
	thumb_func_end ov104_0222EED8

	thumb_func_start ov104_0222EEF8
ov104_0222EEF8: @ 0x0222EEF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0222EF2C @ =0x00000504
	adds r4, r5, r0
	subs r0, #0xc
	ldr r0, [r5, r0]
	bl FUN_02025E38
	ldrh r0, [r5, #8]
	adds r1, r4, #0
	movs r2, #0x3c
	strh r0, [r4, #2]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #4]
	ldrh r0, [r5, #0xe]
	strh r0, [r4, #6]
	movs r0, #0x16
	bl FUN_020359DC
	cmp r0, #1
	bne _0222EF26
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222EF26:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0222EF2C: .4byte 0x00000504
	thumb_func_end ov104_0222EEF8

	thumb_func_start ov104_0222EF30
ov104_0222EF30: @ 0x0222EF30
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0222EF60 @ =0x00000702
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222EF5C
	ldrh r1, [r5, #2]
	movs r0, #0x16
	lsls r0, r0, #6
	strh r1, [r4, r0]
	ldrh r2, [r5, #4]
	adds r1, r0, #2
	subs r0, r0, #2
	strh r2, [r4, r1]
	ldrh r1, [r5, #6]
	strh r1, [r4, r0]
_0222EF5C:
	pop {r4, r5, r6, pc}
	nop
_0222EF60: .4byte 0x00000702
	thumb_func_end ov104_0222EF30

	thumb_func_start ov104_0222EF64
ov104_0222EF64: @ 0x0222EF64
	push {r4, lr}
	ldr r1, _0222EF90 @ =0x00000504
	movs r3, #0
	adds r1, r0, r1
	adds r4, r1, #0
_0222EF6E:
	ldrh r2, [r0, #0x18]
	adds r3, r3, #1
	adds r0, r0, #2
	strh r2, [r4]
	adds r4, r4, #2
	cmp r3, #0xe
	blt _0222EF6E
	movs r0, #0x17
	movs r2, #0x3c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222EF8C
	movs r0, #1
	pop {r4, pc}
_0222EF8C:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0222EF90: .4byte 0x00000504
	thumb_func_end ov104_0222EF64

	thumb_func_start ov104_0222EF94
ov104_0222EF94: @ 0x0222EF94
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0222EFC8 @ =0x00000702
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222EFC4
	bl FUN_0203608C
	cmp r0, #0
	beq _0222EFC4
	movs r1, #0
_0222EFB6:
	ldrh r0, [r5]
	adds r1, r1, #1
	adds r5, r5, #2
	strh r0, [r4, #0x18]
	adds r4, r4, #2
	cmp r1, #0xe
	blt _0222EFB6
_0222EFC4:
	pop {r4, r5, r6, pc}
	nop
_0222EFC8: .4byte 0x00000702
	thumb_func_end ov104_0222EF94

	thumb_func_start ov104_0222EFCC
ov104_0222EFCC: @ 0x0222EFCC
	push {r4, r5, r6, lr}
	ldr r1, _0222F030 @ =0x00000504
	ldr r2, _0222F034 @ =0x00000584
	adds r1, r0, r1
	movs r4, #0
	adds r5, r0, #0
	adds r6, r1, #0
_0222EFDA:
	ldrh r3, [r5, r2]
	adds r4, r4, #1
	adds r5, r5, #2
	strh r3, [r6]
	adds r6, r6, #2
	cmp r4, #6
	blt _0222EFDA
	movs r2, #0x59
	movs r5, #0
	adds r4, r1, #0
	lsls r2, r2, #4
_0222EFF0:
	adds r3, r0, r5
	ldrb r3, [r3, r2]
	adds r5, r5, #1
	strh r3, [r4, #0xc]
	adds r4, r4, #2
	cmp r5, #6
	blt _0222EFF0
	ldr r4, _0222F038 @ =0x00000598
	adds r2, r1, #0
	movs r3, #0
	adds r2, #0x18
	adds r5, r4, #0
_0222F008:
	ldr r6, [r0, r4]
	adds r3, r3, #1
	strh r6, [r2]
	ldr r6, [r0, r5]
	adds r0, r0, #4
	lsrs r6, r6, #0x10
	strh r6, [r2, #0xc]
	adds r2, r2, #2
	cmp r3, #6
	blt _0222F008
	movs r0, #0x18
	movs r2, #0x3c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F02C
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222F02C:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222F030: .4byte 0x00000504
_0222F034: .4byte 0x00000584
_0222F038: .4byte 0x00000598
	thumb_func_end ov104_0222EFCC

	thumb_func_start ov104_0222F03C
ov104_0222F03C: @ 0x0222F03C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0222F0B0 @ =0x00000702
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222F0AE
	bl FUN_0203608C
	cmp r0, #0
	beq _0222F0AE
	movs r0, #0x95
	movs r2, #0
	adds r3, r5, #0
	adds r6, r4, #0
	lsls r0, r0, #2
_0222F066:
	ldrh r1, [r3]
	adds r2, r2, #1
	adds r3, r3, #2
	strh r1, [r6, r0]
	adds r6, r6, #2
	cmp r2, #6
	blt _0222F066
	movs r0, #0x26
	movs r6, #0
	adds r3, r5, #0
	lsls r0, r0, #4
_0222F07C:
	ldrh r2, [r3, #0xc]
	adds r1, r4, r6
	adds r6, r6, #1
	adds r3, r3, #2
	strb r2, [r1, r0]
	cmp r6, #6
	blt _0222F07C
	movs r2, #0x9a
	lsls r2, r2, #2
	movs r1, #0
	adds r5, #0x18
	adds r3, r2, #0
	adds r6, r2, #0
_0222F096:
	ldrh r0, [r5]
	adds r1, r1, #1
	str r0, [r4, r2]
	ldrh r7, [r5, #0xc]
	ldr r0, [r4, r3]
	adds r5, r5, #2
	lsls r7, r7, #0x10
	orrs r0, r7
	str r0, [r4, r6]
	adds r4, r4, #4
	cmp r1, #6
	blt _0222F096
_0222F0AE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222F0B0: .4byte 0x00000702
	thumb_func_end ov104_0222F03C

	thumb_func_start ov104_0222F0B4
ov104_0222F0B4: @ 0x0222F0B4
	push {r4, r5, r6, lr}
	ldr r1, _0222F118 @ =0x00000504
	ldr r2, _0222F11C @ =0x000003D2
	adds r1, r0, r1
	movs r4, #0
	adds r5, r0, #0
	adds r6, r1, #0
_0222F0C2:
	ldrh r3, [r5, r2]
	adds r4, r4, #1
	adds r5, r5, #2
	strh r3, [r6]
	adds r6, r6, #2
	cmp r4, #4
	blt _0222F0C2
	ldr r2, _0222F120 @ =0x000003DA
	movs r5, #0
	adds r4, r1, #0
_0222F0D6:
	adds r3, r0, r5
	ldrb r3, [r3, r2]
	adds r5, r5, #1
	strh r3, [r4, #8]
	adds r4, r4, #2
	cmp r5, #4
	blt _0222F0D6
	movs r4, #0x3e
	adds r2, r1, #0
	lsls r4, r4, #4
	movs r3, #0
	adds r2, #0x10
	adds r5, r4, #0
_0222F0F0:
	ldr r6, [r0, r4]
	adds r3, r3, #1
	strh r6, [r2]
	ldr r6, [r0, r5]
	adds r0, r0, #4
	lsrs r6, r6, #0x10
	strh r6, [r2, #8]
	adds r2, r2, #2
	cmp r3, #4
	blt _0222F0F0
	movs r0, #0x19
	movs r2, #0x3c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F114
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222F114:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222F118: .4byte 0x00000504
_0222F11C: .4byte 0x000003D2
_0222F120: .4byte 0x000003DA
	thumb_func_end ov104_0222F0B4

	thumb_func_start ov104_0222F124
ov104_0222F124: @ 0x0222F124
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0222F194 @ =0x00000702
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222F192
	bl FUN_0203608C
	cmp r0, #0
	beq _0222F192
	ldr r0, _0222F198 @ =0x000003D2
	movs r2, #0
	adds r3, r5, #0
	adds r6, r4, #0
_0222F14C:
	ldrh r1, [r3]
	adds r2, r2, #1
	adds r3, r3, #2
	strh r1, [r6, r0]
	adds r6, r6, #2
	cmp r2, #4
	blt _0222F14C
	ldr r0, _0222F19C @ =0x000003DA
	movs r6, #0
	adds r3, r5, #0
_0222F160:
	ldrh r2, [r3, #8]
	adds r1, r4, r6
	adds r6, r6, #1
	adds r3, r3, #2
	strb r2, [r1, r0]
	cmp r6, #4
	blt _0222F160
	movs r2, #0x3e
	lsls r2, r2, #4
	movs r1, #0
	adds r5, #0x10
	adds r3, r2, #0
	adds r6, r2, #0
_0222F17A:
	ldrh r0, [r5]
	adds r1, r1, #1
	str r0, [r4, r2]
	ldrh r7, [r5, #8]
	ldr r0, [r4, r3]
	adds r5, r5, #2
	lsls r7, r7, #0x10
	orrs r0, r7
	str r0, [r4, r6]
	adds r4, r4, #4
	cmp r1, #4
	blt _0222F17A
_0222F192:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222F194: .4byte 0x00000702
_0222F198: .4byte 0x000003D2
_0222F19C: .4byte 0x000003DA
	thumb_func_end ov104_0222F124

	thumb_func_start ov104_0222F1A0
ov104_0222F1A0: @ 0x0222F1A0
	push {r3, lr}
	ldr r2, _0222F1C0 @ =0x00000504
	adds r3, r0, #0
	strh r1, [r3, r2]
	adds r1, r3, r2
	movs r0, #0x1a
	movs r2, #0x3c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F1BA
	movs r0, #1
	pop {r3, pc}
_0222F1BA:
	movs r0, #0
	pop {r3, pc}
	nop
_0222F1C0: .4byte 0x00000504
	thumb_func_end ov104_0222F1A0

	thumb_func_start ov104_0222F1C4
ov104_0222F1C4: @ 0x0222F1C4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0222F1E4 @ =0x00000702
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r6, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r5, r0
	beq _0222F1E2
	ldrh r1, [r6]
	ldr r0, _0222F1E8 @ =0x0000057C
	strb r1, [r4, r0]
_0222F1E2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222F1E4: .4byte 0x00000702
_0222F1E8: .4byte 0x0000057C
	thumb_func_end ov104_0222F1C4

	thumb_func_start ov104_0222F1EC
ov104_0222F1EC: @ 0x0222F1EC
	push {r3, lr}
	ldr r2, _0222F20C @ =0x00000504
	adds r3, r0, #0
	strh r1, [r3, r2]
	adds r1, r3, r2
	movs r0, #0x1b
	movs r2, #0x3c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F206
	movs r0, #1
	pop {r3, pc}
_0222F206:
	movs r0, #0
	pop {r3, pc}
	nop
_0222F20C: .4byte 0x00000504
	thumb_func_end ov104_0222F1EC

	thumb_func_start ov104_0222F210
ov104_0222F210: @ 0x0222F210
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0222F230 @ =0x00000702
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r6, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r5, r0
	beq _0222F22E
	ldrh r1, [r6]
	ldr r0, _0222F234 @ =0x0000057D
	strb r1, [r4, r0]
_0222F22E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222F230: .4byte 0x00000702
_0222F234: .4byte 0x0000057D
	thumb_func_end ov104_0222F210

	thumb_func_start ov104_0222F238
ov104_0222F238: @ 0x0222F238
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, _0222F310 @ =0x00000504
	adds r0, r5, r0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #4]
	bl ov104_0223AA50
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	cmp r4, #0
	ble _0222F28A
	add r7, sp, #0x10
	add r6, sp, #0x14
_0222F25C:
	ldr r0, _0222F314 @ =0x000004D4
	ldr r1, [sp, #8]
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	str r0, [sp, #0xc]
	movs r1, #0x47
	movs r2, #0
	bl FUN_02074470
	strb r0, [r7]
	movs r1, #0
	ldr r0, [sp, #0xc]
	adds r2, r1, #0
	bl FUN_02074470
	stm r6!, {r0}
	ldr r0, [sp, #8]
	adds r7, r7, #1
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r4
	blt _0222F25C
_0222F28A:
	movs r3, #0
	cmp r4, #0
	ble _0222F2A2
	ldr r2, [sp]
	ldr r0, _0222F318 @ =0x000004E8
_0222F294:
	ldrh r1, [r5, r0]
	adds r3, r3, #1
	adds r5, r5, #2
	strh r1, [r2]
	adds r2, r2, #2
	cmp r3, r4
	blt _0222F294
_0222F2A2:
	ldr r0, [sp, #4]
	adds r0, r0, r4
	str r0, [sp, #4]
	movs r0, #0
	cmp r4, #0
	ble _0222F2C6
	ldr r1, [sp, #4]
	add r3, sp, #0x10
	lsls r2, r1, #1
	ldr r1, [sp]
	adds r2, r1, r2
_0222F2B8:
	ldrb r1, [r3]
	adds r0, r0, #1
	adds r3, r3, #1
	strh r1, [r2]
	adds r2, r2, #2
	cmp r0, r4
	blt _0222F2B8
_0222F2C6:
	ldr r0, [sp, #4]
	movs r3, #0
	adds r0, r0, r4
	cmp r4, #0
	ble _0222F2F6
	ldr r5, [sp]
	lsls r6, r4, #1
	ldr r2, [sp]
	lsls r0, r0, #1
	adds r5, r5, r6
	adds r2, r2, r0
	add r1, sp, #0x14
	adds r0, r5, r0
_0222F2E0:
	ldr r5, [r1]
	adds r3, r3, #1
	strh r5, [r2]
	ldr r5, [r1]
	adds r1, r1, #4
	lsrs r5, r5, #0x10
	strh r5, [r0]
	adds r2, r2, #2
	adds r0, r0, #2
	cmp r3, r4
	blt _0222F2E0
_0222F2F6:
	ldr r1, [sp]
	movs r0, #0x1c
	movs r2, #0x3c
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F30A
	add sp, #0x1c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0222F30A:
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222F310: .4byte 0x00000504
_0222F314: .4byte 0x000004D4
_0222F318: .4byte 0x000004E8
	thumb_func_end ov104_0222F238

	thumb_func_start ov104_0222F31C
ov104_0222F31C: @ 0x0222F31C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0222F3AC @ =0x00000702
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	str r2, [sp]
	movs r7, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r5, r0
	beq _0222F3A8
	ldrb r0, [r4, #4]
	bl ov104_0223AA50
	adds r3, r7, #0
	cmp r0, #0
	ble _0222F356
	ldr r5, [sp]
	ldr r1, _0222F3B0 @ =0x00000584
	adds r6, r4, #0
_0222F348:
	ldrh r2, [r5]
	adds r3, r3, #1
	adds r5, r5, #2
	strh r2, [r6, r1]
	adds r6, r6, #2
	cmp r3, r0
	blt _0222F348
_0222F356:
	adds r7, r7, r0
	movs r6, #0
	cmp r0, #0
	ble _0222F376
	ldr r1, [sp]
	lsls r2, r7, #1
	adds r5, r1, r2
	movs r1, #0x59
	lsls r1, r1, #4
_0222F368:
	ldrh r3, [r5]
	adds r2, r4, r6
	adds r6, r6, #1
	strb r3, [r2, r1]
	adds r5, r5, #2
	cmp r6, r0
	blt _0222F368
_0222F376:
	adds r2, r7, r0
	movs r1, #0
	cmp r0, #0
	ble _0222F3A8
	ldr r3, [sp]
	lsls r2, r2, #1
	lsls r6, r0, #1
	adds r5, r3, r2
	adds r3, r3, r6
	adds r6, r3, r2
	ldr r2, _0222F3B4 @ =0x00000598
_0222F38C:
	ldrh r7, [r5]
	ldr r3, _0222F3B4 @ =0x00000598
	adds r1, r1, #1
	str r7, [r4, r3]
	ldrh r7, [r6]
	ldr r3, [r4, r3]
	adds r5, r5, #2
	lsls r7, r7, #0x10
	orrs r3, r7
	str r3, [r4, r2]
	adds r4, r4, #4
	adds r6, r6, #2
	cmp r1, r0
	blt _0222F38C
_0222F3A8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F3AC: .4byte 0x00000702
_0222F3B0: .4byte 0x00000584
_0222F3B4: .4byte 0x00000598
	thumb_func_end ov104_0222F31C

	thumb_func_start ov104_0222F3B8
ov104_0222F3B8: @ 0x0222F3B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_0203041C
	ldrh r1, [r5, #0x14]
	ldr r0, _0222F410 @ =0x000003C2
	strh r1, [r5, r0]
	ldrh r1, [r5, #0x16]
	adds r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r4, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	ldr r1, _0222F414 @ =0x000003D6
	movs r2, #0x28
	strh r0, [r5, r1]
	subs r1, #0x16
	movs r0, #0x2a
	adds r1, r5, r1
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F40A
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222F40A:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_0222F410: .4byte 0x000003C2
_0222F414: .4byte 0x000003D6
	thumb_func_end ov104_0222F3B8

	thumb_func_start ov104_0222F418
ov104_0222F418: @ 0x0222F418
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0222F444 @ =0x00000A1A
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222F442
	ldrh r1, [r5, #2]
	ldr r0, _0222F448 @ =0x00000A16
	strh r1, [r4, r0]
	ldrh r2, [r5, #4]
	subs r1, r0, #4
	adds r0, r0, #6
	strh r2, [r4, r1]
	ldrh r1, [r5, #0x16]
	strh r1, [r4, r0]
_0222F442:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222F444: .4byte 0x00000A1A
_0222F448: .4byte 0x00000A16
	thumb_func_end ov104_0222F418

	thumb_func_start ov104_0222F44C
ov104_0222F44C: @ 0x0222F44C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf
	movs r2, #0
	adds r3, r4, #0
	lsls r0, r0, #6
_0222F458:
	ldrh r1, [r3, #0x30]
	adds r2, r2, #1
	strh r1, [r3, r0]
	adds r3, r3, #2
	cmp r2, #0xe
	blt _0222F458
	movs r1, #0xf
	lsls r1, r1, #6
	movs r0, #0x2b
	adds r1, r4, r1
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F47A
	movs r0, #1
	pop {r4, pc}
_0222F47A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222F44C

	thumb_func_start ov104_0222F480
ov104_0222F480: @ 0x0222F480
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0222F4B4 @ =0x00000A1A
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222F4B0
	bl FUN_0203608C
	cmp r0, #0
	beq _0222F4B0
	movs r1, #0
_0222F4A2:
	ldrh r0, [r5]
	adds r1, r1, #1
	adds r5, r5, #2
	strh r0, [r4, #0x30]
	adds r4, r4, #2
	cmp r1, #0xe
	blt _0222F4A2
_0222F4B0:
	pop {r4, r5, r6, pc}
	nop
_0222F4B4: .4byte 0x00000A1A
	thumb_func_end ov104_0222F480

	thumb_func_start ov104_0222F4B8
ov104_0222F4B8: @ 0x0222F4B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0222F524 @ =0x00000A18
	ldrb r1, [r4, r0]
	movs r0, #0xf
	lsls r0, r0, #6
	strh r1, [r4, r0]
	bl FUN_0203608C
	cmp r0, #0
	ldr r1, _0222F528 @ =0x00000A1B
	bne _0222F4F0
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0222F4DE
	subs r0, r1, #3
	ldrb r0, [r4, r0]
	strb r0, [r4, r1]
	b _0222F502
_0222F4DE:
	subs r0, r0, #6
	cmp r0, #4
	bne _0222F502
	subs r0, r1, #3
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _0222F502
	strb r0, [r4, r1]
	b _0222F502
_0222F4F0:
	ldrb r0, [r4, r1]
	cmp r0, #4
	bne _0222F502
	subs r0, r1, #3
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _0222F502
	adds r0, r0, #6
	strb r0, [r4, r1]
_0222F502:
	ldr r0, _0222F528 @ =0x00000A1B
	ldr r1, _0222F52C @ =0x000003C2
	ldrb r0, [r4, r0]
	movs r2, #0x28
	strh r0, [r4, r1]
	subs r1, r1, #2
	movs r0, #0x2c
	adds r1, r4, r1
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F51E
	movs r0, #1
	pop {r4, pc}
_0222F51E:
	movs r0, #0
	pop {r4, pc}
	nop
_0222F524: .4byte 0x00000A18
_0222F528: .4byte 0x00000A1B
_0222F52C: .4byte 0x000003C2
	thumb_func_end ov104_0222F4B8

	thumb_func_start ov104_0222F530
ov104_0222F530: @ 0x0222F530
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0222F5C4 @ =0x00000A1A
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222F5C2
	ldrh r1, [r5]
	ldr r0, _0222F5C8 @ =0x00000A19
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _0222F594
	ldr r1, _0222F5CC @ =0x00000A1B
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0222F57A
	cmp r0, #4
	bne _0222F5C2
	subs r0, r1, #2
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _0222F5C2
	adds r2, r0, #6
	subs r0, r1, #3
	strb r2, [r4, r0]
	subs r0, r1, #2
	ldrb r0, [r4, r0]
	adds r0, r0, #6
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0222F57A:
	subs r0, r1, #2
	ldrb r0, [r4, r0]
	adds r0, r0, #6
	strb r0, [r4, r1]
	subs r0, r1, #2
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _0222F5C2
	adds r0, r1, #5
	ldr r2, _0222F5D0 @ =0x0000EEDD
	ldr r0, [r4, r0]
	strh r2, [r0]
	pop {r4, r5, r6, pc}
_0222F594:
	ldrh r1, [r5, #2]
	ldr r0, _0222F5CC @ =0x00000A1B
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, #4
	beq _0222F5A8
	adds r0, r0, #5
	ldr r1, _0222F5D0 @ =0x0000EEDD
	ldr r0, [r4, r0]
	strh r1, [r0]
_0222F5A8:
	ldr r1, _0222F5C8 @ =0x00000A19
	ldrb r0, [r4, r1]
	cmp r0, #4
	bne _0222F5C2
	subs r0, r1, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0222F5C2
	cmp r0, #4
	beq _0222F5C2
	adds r2, r0, #6
	adds r0, r1, #2
	strb r2, [r4, r0]
_0222F5C2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222F5C4: .4byte 0x00000A1A
_0222F5C8: .4byte 0x00000A19
_0222F5CC: .4byte 0x00000A1B
_0222F5D0: .4byte 0x0000EEDD
	thumb_func_end ov104_0222F530

	thumb_func_start ov104_0222F5D4
ov104_0222F5D4: @ 0x0222F5D4
	push {r3, r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r0, #0x9b
	movs r1, #0xf
	movs r4, #0
	adds r5, r3, #0
	lsls r0, r0, #2
	lsls r1, r1, #6
_0222F5E4:
	ldrh r2, [r5, r0]
	adds r4, r4, #1
	strh r2, [r5, r1]
	adds r5, r5, #2
	cmp r4, #4
	blt _0222F5E4
	movs r0, #0x9d
	movs r1, #0xf2
	movs r5, #0
	adds r4, r3, #0
	lsls r0, r0, #2
	lsls r1, r1, #2
_0222F5FC:
	adds r2, r3, r5
	ldrb r2, [r2, r0]
	adds r5, r5, #1
	strh r2, [r4, r1]
	adds r4, r4, #2
	cmp r5, #4
	blt _0222F5FC
	movs r7, #0xf
	lsls r7, r7, #6
	adds r1, r3, #0
	movs r5, #0x9e
	adds r6, r7, #0
	movs r2, #0
	adds r0, r3, #0
	adds r1, #0x10
	lsls r5, r5, #2
	adds r6, #8
_0222F61E:
	movs r4, #0x9e
	lsls r4, r4, #2
	ldr r4, [r0, r4]
	adds r2, r2, #1
	strh r4, [r1, r7]
	ldr r4, [r0, r5]
	adds r0, r0, #4
	lsrs r4, r4, #0x10
	strh r4, [r1, r6]
	adds r1, r1, #2
	cmp r2, #4
	blt _0222F61E
	movs r1, #0xf
	lsls r1, r1, #6
	movs r0, #0x2d
	adds r1, r3, r1
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F64C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F64C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222F5D4

	thumb_func_start ov104_0222F650
ov104_0222F650: @ 0x0222F650
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0222F6C4 @ =0x00000A1A
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222F6C2
	bl FUN_0203608C
	cmp r0, #0
	beq _0222F6C2
	movs r0, #0x9b
	movs r2, #0
	adds r3, r5, #0
	adds r6, r4, #0
	lsls r0, r0, #2
_0222F67A:
	ldrh r1, [r3]
	adds r2, r2, #1
	adds r3, r3, #2
	strh r1, [r6, r0]
	adds r6, r6, #2
	cmp r2, #4
	blt _0222F67A
	movs r0, #0x9d
	movs r6, #0
	adds r3, r5, #0
	lsls r0, r0, #2
_0222F690:
	ldrh r2, [r3, #8]
	adds r1, r4, r6
	adds r6, r6, #1
	adds r3, r3, #2
	strb r2, [r1, r0]
	cmp r6, #4
	blt _0222F690
	movs r2, #0x9e
	lsls r2, r2, #2
	movs r1, #0
	adds r5, #0x10
	adds r3, r2, #0
	adds r6, r2, #0
_0222F6AA:
	ldrh r0, [r5]
	adds r1, r1, #1
	str r0, [r4, r2]
	ldrh r7, [r5, #8]
	ldr r0, [r4, r3]
	adds r5, r5, #2
	lsls r7, r7, #0x10
	orrs r0, r7
	str r0, [r4, r6]
	adds r4, r4, #4
	cmp r1, #4
	blt _0222F6AA
_0222F6C2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222F6C4: .4byte 0x00000A1A
	thumb_func_end ov104_0222F650

	thumb_func_start ov104_0222F6C8
ov104_0222F6C8: @ 0x0222F6C8
	push {r3, lr}
	movs r2, #0xf
	adds r3, r0, #0
	lsls r2, r2, #6
	strh r1, [r3, r2]
	adds r1, r3, r2
	movs r0, #0x2e
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F6E4
	movs r0, #1
	pop {r3, pc}
_0222F6E4:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222F6C8

	thumb_func_start ov104_0222F6E8
ov104_0222F6E8: @ 0x0222F6E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0222F70C @ =0x00000A1A
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r6, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r5, r0
	beq _0222F708
	ldrh r1, [r6]
	movs r0, #0xa1
	lsls r0, r0, #4
	strb r1, [r4, r0]
_0222F708:
	pop {r4, r5, r6, pc}
	nop
_0222F70C: .4byte 0x00000A1A
	thumb_func_end ov104_0222F6E8

	thumb_func_start ov104_0222F710
ov104_0222F710: @ 0x0222F710
	push {r3, lr}
	movs r2, #0xf
	adds r3, r0, #0
	lsls r2, r2, #6
	strh r1, [r3, r2]
	adds r1, r3, r2
	movs r0, #0x2f
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F72C
	movs r0, #1
	pop {r3, pc}
_0222F72C:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222F710

	thumb_func_start ov104_0222F730
ov104_0222F730: @ 0x0222F730
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0222F750 @ =0x00000A1A
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r6, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r5, r0
	beq _0222F74E
	ldrh r1, [r6]
	ldr r0, _0222F754 @ =0x00000A11
	strb r1, [r4, r0]
_0222F74E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222F750: .4byte 0x00000A1A
_0222F754: .4byte 0x00000A11
	thumb_func_end ov104_0222F730

	thumb_func_start ov104_0222F758
ov104_0222F758: @ 0x0222F758
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #0x10]
	movs r1, #0
	bl ov104_0223B7A8
	str r0, [sp]
	bl FUN_02073C70
	adds r6, r0, #0
	ldr r0, [sp]
	movs r4, #0
	cmp r0, #0
	ble _0222F79C
	movs r0, #0x41
	lsls r0, r0, #4
	adds r0, r7, r0
	adds r5, r4, #0
	str r0, [sp, #4]
_0222F780:
	ldr r0, [r7, #0x28]
	adds r1, r4, #0
	bl FUN_0207A0FC
	ldr r1, [sp, #4]
	adds r2, r6, #0
	adds r1, r1, r5
	blx FUN_020C4DB0
	ldr r0, [sp]
	adds r4, r4, #1
	adds r5, r5, r6
	cmp r4, r0
	blt _0222F780
_0222F79C:
	movs r1, #0x41
	lsls r1, r1, #4
	movs r2, #2
	movs r0, #0x30
	adds r1, r7, r1
	lsls r2, r2, #8
	bl FUN_0203597C
	cmp r0, #1
	bne _0222F7B6
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F7B6:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222F758

	thumb_func_start ov104_0222F7BC
ov104_0222F7BC: @ 0x0222F7BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0222F848 @ =0x00000A1A
	adds r4, r0, #0
	adds r0, r3, #0
	ldrb r0, [r0, r1]
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r0, #1
	adds r0, r3, #0
	strb r2, [r0, r1]
	bl FUN_0203608C
	cmp r4, r0
	beq _0222F844
	ldr r0, [sp, #4]
	movs r1, #0
	ldrb r0, [r0, #0x10]
	bl ov104_0223B7A8
	str r0, [sp, #8]
	bl FUN_02073C70
	adds r5, r0, #0
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	ldr r0, [sp, #8]
	movs r7, #0
	cmp r0, #0
	ble _0222F81E
	adds r4, r7, #0
_0222F7FE:
	ldr r0, [sp]
	adds r1, r6, #0
	adds r0, r0, r4
	adds r2, r5, #0
	blx FUN_020C4DB0
	ldr r0, [sp, #4]
	adds r1, r6, #0
	ldr r0, [r0, #0x28]
	bl FUN_0207A048
	ldr r0, [sp, #8]
	adds r7, r7, #1
	adds r4, r4, r5
	cmp r7, r0
	blt _0222F7FE
_0222F81E:
	adds r0, r6, #0
	bl FUN_020181C4
	bl FUN_0203608C
	cmp r0, #0
	beq _0222F844
	ldr r0, [sp, #4]
	movs r1, #0
	ldr r0, [r0, #0x28]
	movs r2, #2
	bl FUN_0207A184
	ldr r0, [sp, #4]
	movs r1, #1
	ldr r0, [r0, #0x28]
	movs r2, #3
	bl FUN_0207A184
_0222F844:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222F848: .4byte 0x00000A1A
	thumb_func_end ov104_0222F7BC

	thumb_func_start ov104_0222F84C
ov104_0222F84C: @ 0x0222F84C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #2
	lsls r0, r0, #8
	adds r4, r1, #0
	cmp r2, r0
	ble _0222F85E
	bl FUN_02022974
_0222F85E:
	movs r0, #0x61
	lsls r0, r0, #4
	adds r1, r4, r0
	lsls r0, r5, #9
	adds r0, r1, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222F84C

	thumb_func_start ov104_0222F86C
ov104_0222F86C: @ 0x0222F86C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_020305B8
	ldrh r0, [r4, #0x18]
	ldr r1, _0222F89C @ =0x00000426
	strh r0, [r4, r1]
	adds r0, r1, #2
	ldrh r2, [r4, #0x1a]
	subs r1, r1, #2
	adds r1, r4, r1
	strh r2, [r4, r0]
	movs r0, #0x41
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F896
	movs r0, #1
	pop {r4, pc}
_0222F896:
	movs r0, #0
	pop {r4, pc}
	nop
_0222F89C: .4byte 0x00000426
	thumb_func_end ov104_0222F86C

	thumb_func_start ov104_0222F8A0
ov104_0222F8A0: @ 0x0222F8A0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0222F8C8 @ =0x00000A7C
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222F8C4
	ldrh r1, [r5, #2]
	ldr r0, _0222F8CC @ =0x00000A78
	strh r1, [r4, r0]
	ldrh r1, [r5, #4]
	subs r0, r0, #2
	strh r1, [r4, r0]
_0222F8C4:
	pop {r4, r5, r6, pc}
	nop
_0222F8C8: .4byte 0x00000A7C
_0222F8CC: .4byte 0x00000A78
	thumb_func_end ov104_0222F8A0

	thumb_func_start ov104_0222F8D0
ov104_0222F8D0: @ 0x0222F8D0
	push {r4, lr}
	adds r1, r0, #0
	ldr r2, _0222F904 @ =0x00000424
	movs r3, #0
	adds r4, r1, #0
_0222F8DA:
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	adds r3, r3, #1
	strh r0, [r4, r2]
	adds r4, r4, #2
	cmp r3, #0xe
	blt _0222F8DA
	ldr r2, _0222F904 @ =0x00000424
	movs r0, #0x42
	adds r1, r1, r2
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F8FE
	movs r0, #1
	pop {r4, pc}
_0222F8FE:
	movs r0, #0
	pop {r4, pc}
	nop
_0222F904: .4byte 0x00000424
	thumb_func_end ov104_0222F8D0

	thumb_func_start ov104_0222F908
ov104_0222F908: @ 0x0222F908
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0222F940 @ =0x00000A7C
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222F93C
	bl FUN_0203608C
	cmp r0, #0
	beq _0222F93C
	movs r2, #0
_0222F92A:
	ldrh r1, [r5]
	adds r0, r4, #0
	adds r0, #0x78
	adds r2, r2, #1
	strh r1, [r0]
	adds r5, r5, #2
	adds r4, r4, #2
	cmp r2, #0xe
	blt _0222F92A
_0222F93C:
	pop {r4, r5, r6, pc}
	nop
_0222F940: .4byte 0x00000A7C
	thumb_func_end ov104_0222F908

	thumb_func_start ov104_0222F944
ov104_0222F944: @ 0x0222F944
	push {r3, r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r0, #0xc5
	ldr r1, _0222F9B8 @ =0x00000424
	movs r4, #0
	adds r5, r3, #0
	lsls r0, r0, #2
_0222F952:
	ldrh r2, [r5, r0]
	adds r4, r4, #1
	strh r2, [r5, r1]
	adds r5, r5, #2
	cmp r4, #4
	blt _0222F952
	movs r0, #0xc7
	ldr r1, _0222F9BC @ =0x0000042C
	movs r5, #0
	adds r4, r3, #0
	lsls r0, r0, #2
_0222F968:
	adds r2, r3, r5
	ldrb r2, [r2, r0]
	adds r5, r5, #1
	strh r2, [r4, r1]
	adds r4, r4, #2
	cmp r5, #4
	blt _0222F968
	ldr r7, _0222F9B8 @ =0x00000424
	adds r1, r3, #0
	movs r5, #0x32
	adds r6, r7, #0
	movs r2, #0
	adds r0, r3, #0
	adds r1, #0x10
	lsls r5, r5, #4
	adds r6, #8
_0222F988:
	movs r4, #0x32
	lsls r4, r4, #4
	ldr r4, [r0, r4]
	adds r2, r2, #1
	strh r4, [r1, r7]
	ldr r4, [r0, r5]
	adds r0, r0, #4
	lsrs r4, r4, #0x10
	strh r4, [r1, r6]
	adds r1, r1, #2
	cmp r2, #4
	blt _0222F988
	ldr r1, _0222F9B8 @ =0x00000424
	movs r0, #0x43
	adds r1, r3, r1
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _0222F9B4
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F9B4:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222F9B8: .4byte 0x00000424
_0222F9BC: .4byte 0x0000042C
	thumb_func_end ov104_0222F944

	thumb_func_start ov104_0222F9C0
ov104_0222F9C0: @ 0x0222F9C0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0222FA34 @ =0x00000A7C
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0222FA32
	bl FUN_0203608C
	cmp r0, #0
	beq _0222FA32
	movs r0, #0xc5
	movs r2, #0
	adds r3, r5, #0
	adds r6, r4, #0
	lsls r0, r0, #2
_0222F9EA:
	ldrh r1, [r3]
	adds r2, r2, #1
	adds r3, r3, #2
	strh r1, [r6, r0]
	adds r6, r6, #2
	cmp r2, #4
	blt _0222F9EA
	movs r0, #0xc7
	movs r6, #0
	adds r3, r5, #0
	lsls r0, r0, #2
_0222FA00:
	ldrh r2, [r3, #8]
	adds r1, r4, r6
	adds r6, r6, #1
	adds r3, r3, #2
	strb r2, [r1, r0]
	cmp r6, #4
	blt _0222FA00
	movs r2, #0x32
	lsls r2, r2, #4
	movs r1, #0
	adds r5, #0x10
	adds r3, r2, #0
	adds r6, r2, #0
_0222FA1A:
	ldrh r0, [r5]
	adds r1, r1, #1
	str r0, [r4, r2]
	ldrh r7, [r5, #8]
	ldr r0, [r4, r3]
	adds r5, r5, #2
	lsls r7, r7, #0x10
	orrs r0, r7
	str r0, [r4, r6]
	adds r4, r4, #4
	cmp r1, #4
	blt _0222FA1A
_0222FA32:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222FA34: .4byte 0x00000A7C
	thumb_func_end ov104_0222F9C0

	thumb_func_start ov104_0222FA38
ov104_0222FA38: @ 0x0222FA38
	push {r3, lr}
	ldr r2, _0222FA58 @ =0x00000424
	adds r3, r0, #0
	strh r1, [r3, r2]
	adds r1, r3, r2
	movs r0, #0x44
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _0222FA52
	movs r0, #1
	pop {r3, pc}
_0222FA52:
	movs r0, #0
	pop {r3, pc}
	nop
_0222FA58: .4byte 0x00000424
	thumb_func_end ov104_0222FA38

	thumb_func_start ov104_0222FA5C
ov104_0222FA5C: @ 0x0222FA5C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0222FA7C @ =0x00000A7C
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r6, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r5, r0
	beq _0222FA7A
	ldrh r1, [r6]
	ldr r0, _0222FA80 @ =0x00000A74
	strb r1, [r4, r0]
_0222FA7A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222FA7C: .4byte 0x00000A7C
_0222FA80: .4byte 0x00000A74
	thumb_func_end ov104_0222FA5C

	thumb_func_start ov104_0222FA84
ov104_0222FA84: @ 0x0222FA84
	push {r3, lr}
	ldr r2, _0222FAA4 @ =0x00000424
	adds r3, r0, #0
	strh r1, [r3, r2]
	adds r1, r3, r2
	movs r0, #0x45
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _0222FA9E
	movs r0, #1
	pop {r3, pc}
_0222FA9E:
	movs r0, #0
	pop {r3, pc}
	nop
_0222FAA4: .4byte 0x00000424
	thumb_func_end ov104_0222FA84

	thumb_func_start ov104_0222FAA8
ov104_0222FAA8: @ 0x0222FAA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0222FAC8 @ =0x00000A7C
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r6, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r5, r0
	beq _0222FAC6
	ldrh r1, [r6]
	ldr r0, _0222FACC @ =0x00000A75
	strb r1, [r4, r0]
_0222FAC6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222FAC8: .4byte 0x00000A7C
_0222FACC: .4byte 0x00000A75
	thumb_func_end ov104_0222FAA8

	thumb_func_start ov104_0222FAD0
ov104_0222FAD0: @ 0x0222FAD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #0x10]
	movs r1, #0
	bl ov104_0223BD70
	str r0, [sp]
	bl FUN_02073C70
	adds r6, r0, #0
	ldr r0, [sp]
	movs r4, #0
	cmp r0, #0
	ble _0222FB12
	ldr r0, _0222FB30 @ =0x00000474
	adds r5, r4, #0
	adds r0, r7, r0
	str r0, [sp, #4]
_0222FAF6:
	ldr r0, [r7, #0x70]
	adds r1, r4, #0
	bl FUN_0207A0FC
	ldr r1, [sp, #4]
	adds r2, r6, #0
	adds r1, r1, r5
	blx FUN_020C4DB0
	ldr r0, [sp]
	adds r4, r4, #1
	adds r5, r5, r6
	cmp r4, r0
	blt _0222FAF6
_0222FB12:
	ldr r1, _0222FB30 @ =0x00000474
	movs r2, #2
	movs r0, #0x46
	adds r1, r7, r1
	lsls r2, r2, #8
	bl FUN_0203597C
	cmp r0, #1
	bne _0222FB2A
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222FB2A:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222FB30: .4byte 0x00000474
	thumb_func_end ov104_0222FAD0

	thumb_func_start ov104_0222FB34
ov104_0222FB34: @ 0x0222FB34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0222FBC0 @ =0x00000A7C
	adds r4, r0, #0
	adds r0, r3, #0
	ldrb r0, [r0, r1]
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r0, #1
	adds r0, r3, #0
	strb r2, [r0, r1]
	bl FUN_0203608C
	cmp r4, r0
	beq _0222FBBC
	ldr r0, [sp, #4]
	movs r1, #0
	ldrb r0, [r0, #0x10]
	bl ov104_0223BD70
	str r0, [sp, #8]
	bl FUN_02073C70
	adds r5, r0, #0
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	ldr r0, [sp, #8]
	movs r7, #0
	cmp r0, #0
	ble _0222FB96
	adds r4, r7, #0
_0222FB76:
	ldr r0, [sp]
	adds r1, r6, #0
	adds r0, r0, r4
	adds r2, r5, #0
	blx FUN_020C4DB0
	ldr r0, [sp, #4]
	adds r1, r6, #0
	ldr r0, [r0, #0x70]
	bl FUN_0207A048
	ldr r0, [sp, #8]
	adds r7, r7, #1
	adds r4, r4, r5
	cmp r7, r0
	blt _0222FB76
_0222FB96:
	adds r0, r6, #0
	bl FUN_020181C4
	bl FUN_0203608C
	cmp r0, #0
	beq _0222FBBC
	ldr r0, [sp, #4]
	movs r1, #0
	ldr r0, [r0, #0x70]
	movs r2, #2
	bl FUN_0207A184
	ldr r0, [sp, #4]
	movs r1, #1
	ldr r0, [r0, #0x70]
	movs r2, #3
	bl FUN_0207A184
_0222FBBC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222FBC0: .4byte 0x00000A7C
	thumb_func_end ov104_0222FB34

	thumb_func_start ov104_0222FBC4
ov104_0222FBC4: @ 0x0222FBC4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #2
	lsls r0, r0, #8
	adds r4, r1, #0
	cmp r2, r0
	ble _0222FBD6
	bl FUN_02022974
_0222FBD6:
	ldr r0, _0222FBE0 @ =0x00000674
	adds r1, r4, r0
	lsls r0, r5, #9
	adds r0, r1, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222FBE0: .4byte 0x00000674
	thumb_func_end ov104_0222FBC4

	thumb_func_start ov104_0222FBE4
ov104_0222FBE4: @ 0x0222FBE4
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC14
	adds r4, r0, #0
	bne _0222FBFC
	bl FUN_02022974
_0222FBFC:
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov104_0222FBE4

	thumb_func_start ov104_0222FC00
ov104_0222FC00: @ 0x0222FC00
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC8C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222FC00

	thumb_func_start ov104_0222FC14
ov104_0222FC14: @ 0x0222FC14
	push {r3, lr}
	movs r3, #2
	lsls r3, r3, #0xe
	cmp r1, r3
	bhs _0222FC22
	movs r0, #0
	pop {r3, pc}
_0222FC22:
	adds r2, r3, #0
	adds r2, #8
	cmp r1, r2
	bhs _0222FC34
	subs r1, r1, r3
	adds r0, #8
	lsls r1, r1, #1
	adds r0, r0, r1
	pop {r3, pc}
_0222FC34:
	adds r2, r3, #0
	adds r2, #0x10
	cmp r1, r2
	bhs _0222FC48
	adds r3, #8
	ldr r0, [r0]
	subs r1, r1, r3
	bl ov104_0222E91C
	pop {r3, pc}
_0222FC48:
	adds r2, r3, #0
	adds r2, #0x14
	cmp r1, r2
	bhs _0222FC5C
	adds r3, #0x10
	subs r1, r1, r3
	adds r0, #0x78
	lsls r1, r1, #1
	adds r0, r0, r1
	pop {r3, pc}
_0222FC5C:
	ldr r0, _0222FC84 @ =0x0000FD13
	cmp r1, r0
	bne _0222FC66
	movs r0, #0
	pop {r3, pc}
_0222FC66:
	ldr r0, _0222FC88 @ =0x0000EEEE
	cmp r1, r0
	bne _0222FC70
	movs r0, #0
	pop {r3, pc}
_0222FC70:
	adds r0, r0, #1
	cmp r1, r0
	bne _0222FC7A
	movs r0, #0
	pop {r3, pc}
_0222FC7A:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	nop
_0222FC84: .4byte 0x0000FD13
_0222FC88: .4byte 0x0000EEEE
	thumb_func_end ov104_0222FC14

	thumb_func_start ov104_0222FC8C
ov104_0222FC8C: @ 0x0222FC8C
	push {r4, lr}
	adds r4, r1, #0
	bl ov104_0222FC14
	cmp r0, #0
	beq _0222FC9A
	ldrh r4, [r0]
_0222FC9A:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222FC8C

	thumb_func_start ov104_0222FCA0
ov104_0222FCA0: @ 0x0222FCA0
	movs r0, #0
	bx lr
	thumb_func_end ov104_0222FCA0

	thumb_func_start ov104_0222FCA4
ov104_0222FCA4: @ 0x0222FCA4
	push {r3, lr}
	bl ov104_0222E980
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0222FCA4

	thumb_func_start ov104_0222FCB0
ov104_0222FCB0: @ 0x0222FCB0
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222E980
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B9B4
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_0222FCB0

	thumb_func_start ov104_0222FCC4
ov104_0222FCC4: @ 0x0222FCC4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5]
	bl ov104_0222FC00
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r2, _0222FCE4 @ =0x0000FFFF
	bl FUN_0209B9BC
	ldr r1, _0222FCE8 @ =ov104_0222FCEC
	adds r0, r5, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222FCE4: .4byte 0x0000FFFF
_0222FCE8: .4byte ov104_0222FCEC
	thumb_func_end ov104_0222FCC4

	thumb_func_start ov104_0222FCEC
ov104_0222FCEC: @ 0x0222FCEC
	movs r0, #1
	bx lr
	thumb_func_end ov104_0222FCEC

	thumb_func_start ov104_0222FCF0
ov104_0222FCF0: @ 0x0222FCF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5]
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r2, r0, #0
	ldr r0, [r4]
	adds r1, r6, #0
	bl FUN_0209B9BC
	adds r0, r5, #0
	bl ov104_0222E980
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_0222FCF0

	thumb_func_start ov104_0222FD18
ov104_0222FD18: @ 0x0222FD18
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl ov104_0222EA48
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov104_0222FC14
	strh r4, [r0]
	adds r0, r5, #0
	adds r0, #0x78
	strh r6, [r0]
	ldr r1, _0222FD48 @ =ov104_0222FD4C
	adds r0, r5, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_0222FD48: .4byte ov104_0222FD4C
	thumb_func_end ov104_0222FD18

	thumb_func_start ov104_0222FD4C
ov104_0222FD4C: @ 0x0222FD4C
	push {r3, lr}
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC14
	ldrh r1, [r0]
	subs r1, r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _0222FD68
	movs r0, #1
	pop {r3, pc}
_0222FD68:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222FD4C

	thumb_func_start ov104_0222FD6C
ov104_0222FD6C: @ 0x0222FD6C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222FD6C

	thumb_func_start ov104_0222FD84
ov104_0222FD84: @ 0x0222FD84
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0222FD84

	thumb_func_start ov104_0222FD9C
ov104_0222FD9C: @ 0x0222FD9C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	ldrh r1, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222FD9C

	thumb_func_start ov104_0222FDB8
ov104_0222FDB8: @ 0x0222FDB8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	ldrh r1, [r4]
	subs r0, r1, r0
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222FDB8

	thumb_func_start ov104_0222FDD4
ov104_0222FDD4: @ 0x0222FDD4
	cmp r0, r1
	bhs _0222FDDC
	movs r0, #0
	bx lr
_0222FDDC:
	cmp r0, r1
	bne _0222FDE4
	movs r0, #1
	bx lr
_0222FDE4:
	movs r0, #2
	bx lr
	thumb_func_end ov104_0222FDD4

	thumb_func_start ov104_0222FDE8
ov104_0222FDE8: @ 0x0222FDE8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov104_0222FDD4
	adds r5, #0x8c
	strb r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0222FDE8

	thumb_func_start ov104_0222FE08
ov104_0222FE08: @ 0x0222FE08
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r1, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r1]
	bl ov104_0222FDD4
	adds r5, #0x8c
	strb r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0222FE08

	thumb_func_start ov104_0222FE2C
ov104_0222FE2C: @ 0x0222FE2C
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov104_0222FE2C

	thumb_func_start ov104_0222FE30
ov104_0222FE30: @ 0x0222FE30
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA60
	adds r2, r0, #0
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r1, r2
	bl ov104_0222FE2C
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_0222FE30

	thumb_func_start ov104_0222FE48
ov104_0222FE48: @ 0x0222FE48
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0x1c]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222EA60
	adds r1, r0, #0
	lsls r0, r4, #1
	adds r4, r4, r0
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r3, _0222FE7C @ =0x0223F648
	ldrb r2, [r0]
	adds r0, r3, r4
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0222FE78
	ldr r2, [r5, #0x1c]
	adds r0, r5, #0
	adds r1, r2, r1
	bl ov104_0222FE2C
_0222FE78:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222FE7C: .4byte 0x0223F648
	thumb_func_end ov104_0222FE48

	thumb_func_start ov104_0222FE80
ov104_0222FE80: @ 0x0222FE80
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA60
	adds r2, r0, #0
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r1, r2
	bl ov104_0222EA2C
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_0222FE80

	thumb_func_start ov104_0222FE98
ov104_0222FE98: @ 0x0222FE98
	push {r3, lr}
	bl ov104_0222EA3C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0222FE98

	thumb_func_start ov104_0222FEA4
ov104_0222FEA4: @ 0x0222FEA4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0x1c]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222EA60
	adds r1, r0, #0
	lsls r0, r4, #1
	adds r4, r4, r0
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r3, _0222FED8 @ =0x0223F648
	ldrb r2, [r0]
	adds r0, r3, r4
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0222FED4
	ldr r2, [r5, #0x1c]
	adds r0, r5, #0
	adds r1, r2, r1
	bl ov104_0222EA2C
_0222FED4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222FED8: .4byte 0x0223F648
	thumb_func_end ov104_0222FEA4

	thumb_func_start ov104_0222FEDC
ov104_0222FEDC: @ 0x0222FEDC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r2, r0, #0
	movs r3, #0
	add r0, sp, #4
	strb r3, [r0]
	strb r3, [r0, #1]
	movs r1, #1
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r4]
	adds r4, #0x80
	ldr r1, [r4]
	bl ov104_02231F74
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0222FEDC

	thumb_func_start ov104_0222FF0C
ov104_0222FF0C: @ 0x0222FF0C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl ov104_0222EA48
	movs r3, #0
	adds r1, r4, #0
	str r3, [sp]
	adds r1, #0x80
	adds r2, r0, #0
	ldr r0, [r4]
	ldr r1, [r1]
	bl ov104_02231F74
	ldr r1, _0222FF38 @ =ov104_0222FF6C
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_0222FF38: .4byte ov104_0222FF6C
	thumb_func_end ov104_0222FF0C

	thumb_func_start ov104_0222FF3C
ov104_0222FF3C: @ 0x0222FF3C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r2, r0, #0
	movs r0, #0
	adds r1, r4, #0
	str r0, [sp]
	adds r1, #0x80
	ldr r0, [r4]
	ldr r1, [r1]
	movs r3, #1
	bl ov104_02231F74
	ldr r1, _0222FF68 @ =ov104_0222FF6C
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0222FF68: .4byte ov104_0222FF6C
	thumb_func_end ov104_0222FF3C

	thumb_func_start ov104_0222FF6C
ov104_0222FF6C: @ 0x0222FF6C
	push {r3, lr}
	ldr r0, [r0]
	adds r0, #0x50
	ldrb r0, [r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0222FF80
	movs r0, #1
	pop {r3, pc}
_0222FF80:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222FF6C

	thumb_func_start ov104_0222FF84
ov104_0222FF84: @ 0x0222FF84
	push {r3, lr}
	ldr r0, [r0]
	bl ov104_02232088
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0222FF84

	thumb_func_start ov104_0222FF90
ov104_0222FF90: @ 0x0222FF90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl ov104_0222EA48
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	str r4, [sp]
	adds r3, r0, #0
	str r6, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	adds r2, r7, #0
	bl FUN_0200F174
	movs r0, #0
	bl FUN_0200F32C
	movs r0, #1
	bl FUN_0200F32C
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222FF90

	thumb_func_start ov104_0222FFD8
ov104_0222FFD8: @ 0x0222FFD8
	push {r3, lr}
	ldr r1, _0222FFE4 @ =ov104_0222FFE8
	bl ov104_0222E974
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_0222FFE4: .4byte ov104_0222FFE8
	thumb_func_end ov104_0222FFD8

	thumb_func_start ov104_0222FFE8
ov104_0222FFE8: @ 0x0222FFE8
	push {r3, lr}
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0222FFF6
	movs r0, #1
	pop {r3, pc}
_0222FFF6:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0222FFE8

	thumb_func_start ov104_0222FFFC
ov104_0222FFFC: @ 0x0222FFFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5]
	adds r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	adds r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	adds r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222EA48
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl ov104_0222FC14
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	adds r3, r7, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	bl ov104_02232258
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	adds r5, #0x78
	strh r0, [r5]
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0222FFFC

	thumb_func_start ov104_02230058
ov104_02230058: @ 0x02230058
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5]
	adds r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	adds r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	adds r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222EA48
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl ov104_0222FC14
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	adds r3, r7, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	bl ov104_02232258
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	adds r5, #0x78
	strh r0, [r5]
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02230058

	thumb_func_start ov104_022300B8
ov104_022300B8: @ 0x022300B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5]
	bl ov104_0222EA48
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r3, r0, #0
	ldr r0, [r4, #0x60]
	adds r1, r6, #0
	movs r2, #0xff
	bl ov104_022322A8
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_022300B8

	thumb_func_start ov104_022300DC
ov104_022300DC: @ 0x022300DC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, [r5]
	bl ov104_0222EA48
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r3, r0, #0
	ldr r0, [r4, #0x60]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_022322A8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022300DC

	thumb_func_start ov104_02230108
ov104_02230108: @ 0x02230108
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl ov104_022322B0
	ldr r1, _02230120 @ =ov104_02230124
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_02230120: .4byte ov104_02230124
	thumb_func_end ov104_02230108

	thumb_func_start ov104_02230124
ov104_02230124: @ 0x02230124
	push {r4, lr}
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r1, [r1]
	ldr r4, [r0]
	bl ov104_0222FC14
	ldrh r1, [r0]
	ldr r0, _02230148 @ =0x0000EEEE
	cmp r1, r0
	bne _0223013E
	movs r0, #0
	pop {r4, pc}
_0223013E:
	movs r0, #0
	str r0, [r4, #0x60]
	movs r0, #1
	pop {r4, pc}
	nop
_02230148: .4byte 0x0000EEEE
	thumb_func_end ov104_02230124

	thumb_func_start ov104_0223014C
ov104_0223014C: @ 0x0223014C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5]
	adds r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	adds r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	adds r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222EA48
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl ov104_0222FC14
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	adds r3, r7, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	bl ov104_022325FC
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	adds r5, #0x78
	strh r0, [r5]
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223014C

	thumb_func_start ov104_022301A8
ov104_022301A8: @ 0x022301A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5]
	adds r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	adds r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	adds r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222EA48
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl ov104_0222FC14
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	adds r3, r7, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	bl ov104_022325FC
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	adds r5, #0x78
	strh r0, [r5]
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022301A8

	thumb_func_start ov104_02230208
ov104_02230208: @ 0x02230208
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, [r5]
	bl ov104_0222EA48
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r3, r0, #0
	ldr r0, [r4, #0x60]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_0223261C
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02230208

	thumb_func_start ov104_02230234
ov104_02230234: @ 0x02230234
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl ov104_02232624
	ldr r1, _0223024C @ =ov104_02230124
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0223024C: .4byte ov104_02230124
	thumb_func_end ov104_02230234

	thumb_func_start ov104_02230250
ov104_02230250: @ 0x02230250
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bl ov104_02232B5C
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02230250

	thumb_func_start ov104_02230260
ov104_02230260: @ 0x02230260
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r4, [r5]
	adds r0, r4, #0
	bl ov104_0222E924
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	ldr r1, [r5, #0x1c]
	adds r7, r0, #0
	adds r0, r1, #1
	str r0, [r5, #0x1c]
	ldrb r0, [r1]
	ldr r1, _022302A8 @ =0x0223F640
	ldr r2, _022302AC @ =0x000003D9
	str r0, [sp]
	ldr r0, [r4, #0x34]
	movs r3, #0xc
	str r0, [sp, #4]
	ldr r0, [r6]
	bl FUN_02002054
	str r0, [r4, #0x74]
	adds r0, r5, #0
	adds r0, #0x78
	strh r7, [r0]
	ldr r1, _022302B0 @ =ov104_022302B4
	adds r0, r5, #0
	bl ov104_0222E974
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022302A8: .4byte 0x0223F640
_022302AC: .4byte 0x000003D9
_022302B0: .4byte ov104_022302B4
	thumb_func_end ov104_02230260

	thumb_func_start ov104_022302B4
ov104_022302B4: @ 0x022302B4
	push {r3, r4, r5, lr}
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r1, [r1]
	ldr r5, [r0]
	bl ov104_0222FC14
	adds r4, r0, #0
	ldr r0, [r5, #0x74]
	ldr r1, [r5, #0x34]
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _022302D8
	movs r0, #0
	pop {r3, r4, r5, pc}
_022302D8:
	cmp r0, #0
	bne _022302E0
	movs r0, #0
	b _022302E2
_022302E0:
	movs r0, #1
_022302E2:
	strh r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022302B4

	thumb_func_start ov104_022302E8
ov104_022302E8: @ 0x022302E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r4, r0, #0
	ldr r0, [sp]
	bl ov104_0222EA60
	ldr r1, [sp]
	ldr r1, [r1, #0x1c]
	str r1, [sp, #4]
	adds r1, r1, r0
	ldr r0, [sp]
	str r1, [r0, #0x1c]
_0223030C:
	ldr r0, [sp]
	bl ov104_0222FC00
	add r1, sp, #0xc
	strh r0, [r1]
	ldrh r2, [r1]
	ldr r0, _022303A0 @ =0x0000FD13
	cmp r2, r0
	beq _02230394
	ldr r0, [sp]
	ldr r3, [r0, #0x1c]
	adds r2, r3, #1
	str r2, [r0, #0x1c]
	ldrb r0, [r3]
	strb r0, [r1, #2]
	ldrh r1, [r1]
	ldr r0, _022303A4 @ =0x0000EEEE
	cmp r1, r0
	bne _02230352
	ldr r0, [sp, #8]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_02025E38
	bl ov104_0222E5F0
	add r1, sp, #0xc
	strh r0, [r1]
	adds r0, r4, #0
	add r1, sp, #0xc
	bl ov104_0223D0EC
	b _0223030C
_02230352:
	adds r0, r0, #1
	cmp r1, r0
	bne _0223038A
	bl FUN_02035E38
	cmp r0, #1
	bne _0223030C
	bl FUN_02035E18
	adds r6, r0, #0
	movs r5, #0
	cmp r6, #0
	ble _0223030C
	add r7, sp, #0xc
_0223036E:
	adds r0, r5, #0
	bl FUN_02032EE8
	bl ov104_0222E5F0
	strh r0, [r7]
	adds r0, r4, #0
	add r1, sp, #0xc
	bl ov104_0223D0EC
	adds r5, r5, #1
	cmp r5, r6
	blt _0223036E
	b _0223030C
_0223038A:
	adds r0, r4, #0
	add r1, sp, #0xc
	bl ov104_0223D0EC
	b _0223030C
_02230394:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	str r1, [r0, #0x1c]
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022303A0: .4byte 0x0000FD13
_022303A4: .4byte 0x0000EEEE
	thumb_func_end ov104_022302E8

	thumb_func_start ov104_022303A8
ov104_022303A8: @ 0x022303A8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov104_0223D148
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022303A8

	thumb_func_start ov104_022303C8
ov104_022303C8: @ 0x022303C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r0]
	bl FUN_0209B974
	str r0, [sp, #4]
	adds r0, r5, #0
	bl ov104_0222EA60
	ldr r1, [r5, #0x1c]
	adds r4, r5, #0
	adds r0, r1, r0
	str r1, [sp]
	str r0, [r5, #0x1c]
	adds r4, #0x1c
	add r6, sp, #0xc
_022303EE:
	movs r7, #0
	adds r0, r5, #0
	mvns r7, r7
	bl ov104_0222FC00
	strh r0, [r6, #4]
	ldrh r1, [r6, #4]
	ldr r0, _02230498 @ =0x0000FD13
	cmp r1, r0
	beq _0223048C
	adds r0, r5, #0
	bl ov104_0222FC00
	strh r0, [r6]
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	adds r0, r0, #1
	str r0, [r4]
	ldrb r0, [r1]
	strb r0, [r6, #0xa]
	adds r0, r5, #0
	bl ov104_0222EA48
	subs r0, #8
	strh r0, [r6, #6]
	adds r0, r5, #0
	bl ov104_0222EA48
	subs r0, #0x10
	strh r0, [r6, #8]
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	adds r0, r0, #1
	str r0, [r4]
	ldrb r0, [r1]
	strb r0, [r6, #0xb]
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	adds r0, r0, #1
	str r0, [r4]
	ldrb r0, [r1]
	strb r0, [r6, #0xc]
	movs r0, #0
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldr r0, _0223049C @ =0x0000EEEE
	cmp r1, r0
	bne _02230466
	ldr r0, [sp, #8]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_02025E38
	bl ov104_0222E5F0
	strh r0, [r6]
	movs r7, #0x1f
	b _02230480
_02230466:
	adds r0, r0, #1
	cmp r1, r0
	bne _02230480
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	adds r0, r0, #1
	str r0, [r4]
	ldrb r0, [r1]
	bl FUN_02032EE8
	bl ov104_0222E5F0
	strh r0, [r6]
_02230480:
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	adds r2, r7, #0
	bl ov104_0223D180
	b _022303EE
_0223048C:
	ldr r0, [sp]
	str r0, [r5, #0x1c]
	movs r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02230498: .4byte 0x0000FD13
_0223049C: .4byte 0x0000EEEE
	thumb_func_end ov104_022303C8

	thumb_func_start ov104_022304A0
ov104_022304A0: @ 0x022304A0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r1, r0, #0
	ldr r0, [r5, #0x14]
	bl FUN_0222BF18
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov104_0223D200
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022304A0

	thumb_func_start ov104_022304C8
ov104_022304C8: @ 0x022304C8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	ldr r2, [r5, #0x1c]
	adds r1, r0, #0
	adds r0, r2, #1
	str r0, [r5, #0x1c]
	ldrb r5, [r2]
	movs r2, #0
	adds r0, r4, #0
	str r2, [sp]
	add r3, sp, #0
	bl ov104_0223D258
	ldr r0, [sp]
	cmp r0, #0
	bne _022304FC
	bl FUN_02022974
_022304FC:
	ldr r0, [sp]
	adds r1, r5, #0
	bl FUN_0222D008
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022304C8

	thumb_func_start ov104_02230508
ov104_02230508: @ 0x02230508
	movs r0, #0
	bx lr
	thumb_func_end ov104_02230508

	thumb_func_start ov104_0223050C
ov104_0223050C: @ 0x0223050C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, [r5]
	ldr r0, [r4]
	bl FUN_0209B974
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA60
	adds r6, r0, #0
	ldr r0, [r4]
	adds r1, r7, #0
	bl ov104_0223D5A8
	str r0, [sp, #8]
	cmp r0, #0
	bne _0223053E
	bl FUN_02022974
_0223053E:
	adds r0, r4, #0
	adds r0, #0x59
	str r0, [sp]
	ldr r0, [r4, #0x34]
	ldr r3, [sp, #0xc]
	str r0, [sp, #4]
	ldr r2, [r5, #0x1c]
	ldr r1, [sp, #8]
	ldr r3, [r3, #0x30]
	adds r0, r7, #0
	adds r2, r2, r6
	bl ov104_0223056C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	adds r4, #0x59
	adds r0, r0, #1
	strb r0, [r4]
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223050C

	thumb_func_start ov104_0223056C
ov104_0223056C: @ 0x0223056C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0x1c]
	movs r1, #0x18
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x18
	blx FUN_020C4CF4
	str r5, [r4, #0x14]
	ldr r0, [sp]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x18]
	strh r6, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _022305A0
	bl FUN_02022974
_022305A0:
	ldr r0, _022305B0 @ =ov104_02232B78
	ldr r2, _022305B4 @ =0x0000EAC4
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r5, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022305B0: .4byte ov104_02232B78
_022305B4: .4byte 0x0000EAC4
	thumb_func_end ov104_0223056C

	thumb_func_start ov104_022305B8
ov104_022305B8: @ 0x022305B8
	push {r3, lr}
	ldr r1, _022305C4 @ =ov104_022305C8
	bl ov104_0222E974
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_022305C4: .4byte ov104_022305C8
	thumb_func_end ov104_022305B8

	thumb_func_start ov104_022305C8
ov104_022305C8: @ 0x022305C8
	ldr r0, [r0]
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	bne _022305D6
	movs r0, #1
	bx lr
_022305D6:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov104_022305C8

	thumb_func_start ov104_022305DC
ov104_022305DC: @ 0x022305DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, [r6]
	ldr r0, [r4]
	bl FUN_0209B974
	adds r5, r0, #0
	adds r0, r6, #0
	bl ov104_0222EA60
	ldr r1, [r6, #0x1c]
	adds r0, r1, r0
	str r0, [r6, #0x1c]
	str r1, [sp, #4]
	ldr r1, [r4, #0x34]
	movs r0, #0x97
	bl FUN_02006C24
	adds r7, r0, #0
_02230604:
	adds r0, r6, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	ldr r0, _0223063C @ =0x0000FD13
	cmp r4, r0
	beq _0223062A
	str r4, [sp]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	ldr r3, [r5, #4]
	adds r2, r7, #0
	bl ov104_0223D768
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov104_0223D29C
	b _02230604
_0223062A:
	adds r0, r7, #0
	bl FUN_02006CA8
	ldr r0, [sp, #4]
	str r0, [r6, #0x1c]
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223063C: .4byte 0x0000FD13
	thumb_func_end ov104_022305DC

	thumb_func_start ov104_02230640
ov104_02230640: @ 0x02230640
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r5, r0, #0
	ldr r0, [r4, #0x38]
	adds r1, r5, #0
	bl ov104_0223D7EC
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov104_0223D2CC
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02230640

	thumb_func_start ov104_0223066C
ov104_0223066C: @ 0x0223066C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA60
	ldr r1, [r5, #0x1c]
	adds r4, r5, #0
	adds r0, r1, r0
	str r1, [sp]
	str r0, [r5, #0x1c]
	adds r4, #0x1c
_0223068E:
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	ldr r0, _02230704 @ =0x0000FD13
	cmp r7, r0
	beq _022306FA
	adds r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x10]
	adds r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x14]
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	adds r2, r0, #1
	str r2, [r4]
	ldrb r0, [r1]
	str r0, [sp, #8]
	adds r0, r2, #1
	ldr r1, [r5, #0x1c]
	adds r2, r7, #0
	str r0, [r4]
	ldrb r0, [r1]
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	adds r0, r6, #0
	bl ov104_0223D2FC
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r7, r0, #0
	bl FUN_0200D4C4
	ldr r1, [sp, #0x14]
	adds r0, r7, #0
	bl FUN_0200D3F4
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r6, #0
	bl ov104_0223D378
	b _0223068E
_022306FA:
	ldr r0, [sp]
	str r0, [r5, #0x1c]
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02230704: .4byte 0x0000FD13
	thumb_func_end ov104_0223066C

	thumb_func_start ov104_02230708
ov104_02230708: @ 0x02230708
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov104_0223D348
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230708

	thumb_func_start ov104_02230728
ov104_02230728: @ 0x02230728
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	ldr r2, [r5, #0x1c]
	adds r1, r0, #0
	adds r0, r2, #1
	str r0, [r5, #0x1c]
	adds r0, r4, #0
	ldrb r5, [r2]
	bl ov104_0223D370
	adds r4, r0, #0
	bne _02230754
	bl FUN_02022974
_02230754:
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200D3F4
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230728

	thumb_func_start ov104_02230760
ov104_02230760: @ 0x02230760
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov104_0223D370
	adds r4, r0, #0
	bne _02230784
	bl FUN_02022974
_02230784:
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0200D7CC
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230760

	thumb_func_start ov104_02230790
ov104_02230790: @ 0x02230790
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_0223D370
	adds r4, r0, #0
	bne _022307BE
	bl FUN_02022974
_022307BE:
	cmp r5, #0
	ldr r0, [r4]
	bne _022307CC
	movs r1, #0
	bl FUN_0200D808
	b _022307D2
_022307CC:
	movs r1, #1
	bl FUN_0200D808
_022307D2:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_02230790

	thumb_func_start ov104_022307D8
ov104_022307D8: @ 0x022307D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl ov104_0222FC00
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r1, r5, #0
	adds r4, r0, #0
	bl ov104_0223D370
	adds r1, r6, #0
	bl FUN_0200D364
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov104_0223D378
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_022307D8

	thumb_func_start ov104_02230810
ov104_02230810: @ 0x02230810
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r1, r4, #0
	movs r2, #0
	bl ov104_0223D378
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02230810

	thumb_func_start ov104_02230830
ov104_02230830: @ 0x02230830
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222FC00
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _0223084C @ =ov104_02230850
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_0223084C: .4byte ov104_02230850
	thumb_func_end ov104_02230830

	thumb_func_start ov104_02230850
ov104_02230850: @ 0x02230850
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r1, [r1]
	adds r4, r0, #0
	bl ov104_0223D370
	adds r5, #0x78
	adds r6, r0, #0
	ldrh r1, [r5]
	adds r0, r4, #0
	bl ov104_0223D3A4
	cmp r0, #0
	beq _02230882
	adds r0, r6, #0
	bl FUN_0200D3B8
	cmp r0, #0
	bne _02230886
_02230882:
	movs r0, #1
	pop {r4, r5, r6, pc}
_02230886:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_02230850

	thumb_func_start ov104_0223088C
ov104_0223088C: @ 0x0223088C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r2, #0
	ldr r7, [r6]
	cmp r4, #7
	ble _0223089E
	bl FUN_02022974
_0223089E:
	ldr r0, [r7, #0x34]
	lsls r1, r4, #1
	bl FUN_02018144
	str r0, [sp, #8]
	adds r0, r6, #0
	bl ov104_0222FC00
	ldr r5, [sp, #8]
	str r0, [sp, #4]
	movs r4, #0
_022308B4:
	adds r0, r6, #0
	bl ov104_0222FC00
	strh r0, [r5]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #3
	blt _022308B4
	movs r0, #3
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	movs r2, #1
	bl ov104_0223D860
	ldr r0, [sp, #8]
	bl FUN_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223088C

	thumb_func_start ov104_022308E0
ov104_022308E0: @ 0x022308E0
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl ov104_0222FC00
	movs r2, #0
	str r2, [sp]
	adds r1, r0, #0
	ldr r0, [r4]
	adds r3, r2, #0
	ldr r0, [r0]
	bl ov104_0223D860
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov104_022308E0

	thumb_func_start ov104_02230900
ov104_02230900: @ 0x02230900
	push {r3, lr}
	movs r1, #1
	movs r2, #3
	bl ov104_0223088C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02230900

	thumb_func_start ov104_02230910
ov104_02230910: @ 0x02230910
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #4]
	movs r1, #0
	str r0, [sp]
	movs r0, #0xb
	adds r2, r1, #0
	movs r3, #8
	bl FUN_0208712C
	adds r2, r0, #0
	ldr r0, _02230948 @ =ov104_02230950
	ldr r1, _0223094C @ =0x020F2DAC
	str r0, [sp]
	ldr r0, [r4]
	movs r3, #0
	ldr r0, [r0]
	bl FUN_0209B988
	movs r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_02230948: .4byte ov104_02230950
_0223094C: .4byte 0x020F2DAC
	thumb_func_end ov104_02230910

	thumb_func_start ov104_02230950
ov104_02230950: @ 0x02230950
	ldr r3, _02230954 @ =FUN_0208716C
	bx r3
	.align 2, 0
_02230954: .4byte FUN_0208716C
	thumb_func_end ov104_02230950

	thumb_func_start ov104_02230958
ov104_02230958: @ 0x02230958
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	movs r1, #0xb
	add r2, sp, #0
	bl FUN_0202F1F8
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02230958

	thumb_func_start ov104_02230970
ov104_02230970: @ 0x02230970
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r4, [r5]
	bl ov104_0222EA48
	str r0, [sp, #4]
	adds r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp]
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r7, r0, #0
	ldr r0, _022309D4 @ =0x0000270F
	cmp r6, r0
	bls _0223099E
	adds r6, r0, #0
_0223099E:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xb0
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb2
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov104_02230A2C
	adds r1, r4, #0
	adds r1, #0xb4
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb6
	strh r6, [r0]
	adds r4, #0xb8
	ldr r1, _022309D8 @ =ov104_022309DC
	adds r0, r5, #0
	str r7, [r4]
	bl ov104_0222E974
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022309D4: .4byte 0x0000270F
_022309D8: .4byte ov104_022309DC
	thumb_func_end ov104_02230970

	thumb_func_start ov104_022309DC
ov104_022309DC: @ 0x022309DC
	push {r4, lr}
	sub sp, #8
	ldr r4, [r0]
	ldr r0, [r4]
	bl FUN_0209B970
	adds r1, r4, #0
	adds r1, #0xb0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0xb2
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	adds r1, #0xb4
	adds r2, #0xb6
	ldrh r1, [r1]
	ldrh r2, [r2]
	ldr r0, [r0, #8]
	movs r3, #0
	bl FUN_0202F41C
	subs r1, r0, #2
	cmp r1, #1
	bhi _02230A24
	cmp r0, #2
	bne _02230A16
	movs r1, #1
	b _02230A18
_02230A16:
	movs r1, #0
_02230A18:
	adds r4, #0xb8
	ldr r0, [r4]
	add sp, #8
	strh r1, [r0]
	movs r0, #1
	pop {r4, pc}
_02230A24:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_022309DC

	thumb_func_start ov104_02230A2C
ov104_02230A2C: @ 0x02230A2C
	push {r4, lr}
	movs r4, #0xf
	cmp r0, #6
	bhi _02230A6C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230A40: @ jump table
	.2byte _02230B4C - _02230A40 - 2 @ case 0
	.2byte _02230A4E - _02230A40 - 2 @ case 1
	.2byte _02230A7C - _02230A40 - 2 @ case 2
	.2byte _02230AA6 - _02230A40 - 2 @ case 3
	.2byte _02230AD0 - _02230A40 - 2 @ case 4
	.2byte _02230AFA - _02230A40 - 2 @ case 5
	.2byte _02230B24 - _02230A40 - 2 @ case 6
_02230A4E:
	cmp r1, #6
	bhi _02230A76
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230A5E: @ jump table
	.2byte _02230A6C - _02230A5E - 2 @ case 0
	.2byte _02230A6E - _02230A5E - 2 @ case 1
	.2byte _02230A72 - _02230A5E - 2 @ case 2
	.2byte _02230A72 - _02230A5E - 2 @ case 3
	.2byte _02230A74 - _02230A5E - 2 @ case 4
	.2byte _02230A74 - _02230A5E - 2 @ case 5
	.2byte _02230A72 - _02230A5E - 2 @ case 6
_02230A6C:
	b _02230B4C
_02230A6E:
	movs r4, #0x10
	b _02230B4C
_02230A72:
	movs r4, #0x11
_02230A74:
	b _02230B4C
_02230A76:
	bl FUN_02022974
	b _02230B4C
_02230A7C:
	cmp r1, #3
	bhi _02230AA0
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230A8C: @ jump table
	.2byte _02230A94 - _02230A8C - 2 @ case 0
	.2byte _02230A98 - _02230A8C - 2 @ case 1
	.2byte _02230A9C - _02230A8C - 2 @ case 2
	.2byte _02230A9C - _02230A8C - 2 @ case 3
_02230A94:
	movs r4, #0x12
	b _02230B4C
_02230A98:
	movs r4, #0x13
	b _02230B4C
_02230A9C:
	movs r4, #0x14
	b _02230B4C
_02230AA0:
	bl FUN_02022974
	b _02230B4C
_02230AA6:
	cmp r1, #3
	bhi _02230ACA
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230AB6: @ jump table
	.2byte _02230ABE - _02230AB6 - 2 @ case 0
	.2byte _02230AC2 - _02230AB6 - 2 @ case 1
	.2byte _02230AC6 - _02230AB6 - 2 @ case 2
	.2byte _02230AC6 - _02230AB6 - 2 @ case 3
_02230ABE:
	movs r4, #0x15
	b _02230B4C
_02230AC2:
	movs r4, #0x16
	b _02230B4C
_02230AC6:
	movs r4, #0x17
	b _02230B4C
_02230ACA:
	bl FUN_02022974
	b _02230B4C
_02230AD0:
	cmp r1, #3
	bhi _02230AF4
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230AE0: @ jump table
	.2byte _02230AE8 - _02230AE0 - 2 @ case 0
	.2byte _02230AEC - _02230AE0 - 2 @ case 1
	.2byte _02230AF0 - _02230AE0 - 2 @ case 2
	.2byte _02230AF0 - _02230AE0 - 2 @ case 3
_02230AE8:
	movs r4, #0x1b
	b _02230B4C
_02230AEC:
	movs r4, #0x1c
	b _02230B4C
_02230AF0:
	movs r4, #0x1d
	b _02230B4C
_02230AF4:
	bl FUN_02022974
	b _02230B4C
_02230AFA:
	cmp r1, #3
	bhi _02230B1E
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230B0A: @ jump table
	.2byte _02230B12 - _02230B0A - 2 @ case 0
	.2byte _02230B16 - _02230B0A - 2 @ case 1
	.2byte _02230B1A - _02230B0A - 2 @ case 2
	.2byte _02230B1A - _02230B0A - 2 @ case 3
_02230B12:
	movs r4, #0x18
	b _02230B4C
_02230B16:
	movs r4, #0x19
	b _02230B4C
_02230B1A:
	movs r4, #0x1a
	b _02230B4C
_02230B1E:
	bl FUN_02022974
	b _02230B4C
_02230B24:
	cmp r1, #3
	bhi _02230B48
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230B34: @ jump table
	.2byte _02230B3C - _02230B34 - 2 @ case 0
	.2byte _02230B40 - _02230B34 - 2 @ case 1
	.2byte _02230B44 - _02230B34 - 2 @ case 2
	.2byte _02230B44 - _02230B34 - 2 @ case 3
_02230B3C:
	movs r4, #0x1e
	b _02230B4C
_02230B40:
	movs r4, #0x1f
	b _02230B4C
_02230B44:
	movs r4, #0x20
	b _02230B4C
_02230B48:
	bl FUN_02022974
_02230B4C:
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov104_02230A2C

	thumb_func_start ov104_02230B50
ov104_02230B50: @ 0x02230B50
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	movs r1, #0x72
	adds r4, r0, #0
	movs r0, #0xb
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x72
	movs r1, #0
	lsls r2, r2, #2
	adds r6, r0, #0
	blx FUN_020C4CF4
	movs r0, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	movs r1, #0xb
	add r2, sp, #4
	adds r3, r6, #0
	bl FUN_0202F298
	ldr r1, _02230BA8 @ =0x0000045F
	movs r0, #5
	movs r2, #1
	bl FUN_02004550
	movs r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, _02230BAC @ =0x020EA358
	ldr r0, [r0]
	adds r2, r6, #0
	movs r3, #1
	bl FUN_0209B988
	movs r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02230BA8: .4byte 0x0000045F
_02230BAC: .4byte 0x020EA358
	thumb_func_end ov104_02230B50

	thumb_func_start ov104_02230BB0
ov104_02230BB0: @ 0x02230BB0
	push {r3, lr}
	bl FUN_0202F22C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02230BB0

	thumb_func_start ov104_02230BBC
ov104_02230BBC: @ 0x02230BBC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r5, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0xb
	add r2, sp, #0
	movs r3, #0
	bl FUN_0202F330
	strh r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230BBC

	thumb_func_start ov104_02230BE4
ov104_02230BE4: @ 0x02230BE4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FBE4
	ldr r0, [r5, #8]
	bl FUN_020246E0
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02230BE4

	thumb_func_start ov104_02230C04
ov104_02230C04: @ 0x02230C04
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5]
	ldr r0, [r4]
	bl FUN_0209B970
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	movs r0, #4
	bl FUN_02017DE0
	ldr r0, [r4, #0x34]
	bl FUN_02017E00
	ldr r0, [r6, #8]
	movs r1, #2
	bl FUN_02024814
	ldr r1, _02230C38 @ =ov104_02230C3C
	adds r0, r5, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_02230C38: .4byte ov104_02230C3C
	thumb_func_end ov104_02230C04

	thumb_func_start ov104_02230C3C
ov104_02230C3C: @ 0x02230C3C
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_02024828
	cmp r0, #2
	bne _02230C5E
	bl FUN_02017E2C
	movs r0, #4
	bl FUN_02017DF0
	movs r0, #1
	pop {r3, pc}
_02230C5E:
	cmp r0, #3
	bne _02230C70
	bl FUN_02017E2C
	movs r0, #4
	bl FUN_02017DF0
	movs r0, #1
	pop {r3, pc}
_02230C70:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02230C3C

	thumb_func_start ov104_02230C74
ov104_02230C74: @ 0x02230C74
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_02025340
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02230C74

	thumb_func_start ov104_02230C88
ov104_02230C88: @ 0x02230C88
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r5, r0, #0
	ldr r0, [r4, #8]
	bl FUN_020247C8
	strh r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02230C88

	thumb_func_start ov104_02230CAC
ov104_02230CAC: @ 0x02230CAC
	push {r4, lr}
	ldr r4, [r0]
	ldr r1, _02230CC0 @ =0x000003E2
	adds r0, r4, #0
	adds r0, #0x64
	bl FUN_0200E7FC
	str r0, [r4, #0x7c]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02230CC0: .4byte 0x000003E2
	thumb_func_end ov104_02230CAC

	thumb_func_start ov104_02230CC4
ov104_02230CC4: @ 0x02230CC4
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0, #0x7c]
	bl FUN_0200EBA0
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02230CC4

	thumb_func_start ov104_02230CD4
ov104_02230CD4: @ 0x02230CD4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0x1c]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222FC00
	adds r2, r0, #0
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r0, [r0, #0x44]
	bl FUN_0200B70C
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230CD4

	thumb_func_start ov104_02230CF4
ov104_02230CF4: @ 0x02230CF4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, [r5, #0x1c]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222FC00
	adds r6, r0, #0
	bl ov104_02230D28
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r0, [r0, #0x44]
	adds r2, r6, #0
	bl FUN_0200B60C
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_02230CF4

	thumb_func_start ov104_02230D28
ov104_02230D28: @ 0x02230D28
	push {r4, lr}
	movs r1, #0xa
	adds r4, r0, #0
	blx FUN_020E2178
	cmp r0, #0
	bne _02230D3A
	movs r0, #1
	pop {r4, pc}
_02230D3A:
	adds r0, r4, #0
	movs r1, #0x64
	blx FUN_020E2178
	cmp r0, #0
	bne _02230D4A
	movs r0, #2
	pop {r4, pc}
_02230D4A:
	movs r1, #0xfa
	adds r0, r4, #0
	lsls r1, r1, #2
	blx FUN_020E2178
	cmp r0, #0
	bne _02230D5C
	movs r0, #3
	pop {r4, pc}
_02230D5C:
	ldr r1, _02230DB0 @ =0x00002710
	adds r0, r4, #0
	blx FUN_020E2178
	cmp r0, #0
	bne _02230D6C
	movs r0, #4
	pop {r4, pc}
_02230D6C:
	ldr r1, _02230DB4 @ =0x000186A0
	adds r0, r4, #0
	blx FUN_020E2178
	cmp r0, #0
	bne _02230D7C
	movs r0, #5
	pop {r4, pc}
_02230D7C:
	ldr r1, _02230DB8 @ =0x000F4240
	adds r0, r4, #0
	blx FUN_020E2178
	cmp r0, #0
	bne _02230D8C
	movs r0, #6
	pop {r4, pc}
_02230D8C:
	ldr r1, _02230DBC @ =0x00989680
	adds r0, r4, #0
	blx FUN_020E2178
	cmp r0, #0
	bne _02230D9C
	movs r0, #7
	pop {r4, pc}
_02230D9C:
	ldr r1, _02230DC0 @ =0x05F5E100
	adds r0, r4, #0
	blx FUN_020E2178
	cmp r0, #0
	bne _02230DAC
	movs r0, #8
	pop {r4, pc}
_02230DAC:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_02230DB0: .4byte 0x00002710
_02230DB4: .4byte 0x000186A0
_02230DB8: .4byte 0x000F4240
_02230DBC: .4byte 0x00989680
_02230DC0: .4byte 0x05F5E100
	thumb_func_end ov104_02230D28

	thumb_func_start ov104_02230DC4
ov104_02230DC4: @ 0x02230DC4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r2, [r5, #0x1c]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldr r0, [r0, #8]
	ldrb r4, [r2]
	bl FUN_02025E38
	adds r2, r0, #0
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r0, [r0, #0x44]
	bl FUN_0200B498
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02230DC4

	thumb_func_start ov104_02230DF0
ov104_02230DF0: @ 0x02230DF0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r1, [r5, #0x1c]
	adds r0, r1, #1
	str r0, [r5, #0x1c]
	ldrb r4, [r1]
	bl FUN_0203608C
	movs r1, #1
	eors r0, r1
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r0, [r0, #0x44]
	bl FUN_0200B498
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230DF0

	thumb_func_start ov104_02230E20
ov104_02230E20: @ 0x02230E20
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0x1c]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222FC00
	adds r2, r0, #0
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r0, [r0, #0x44]
	bl FUN_0200B630
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230E20

	thumb_func_start ov104_02230E40
ov104_02230E40: @ 0x02230E40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r2, [r5, #0x1c]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	ldr r1, [r5, #0x1c]
	str r0, [sp, #8]
	adds r0, r1, #1
	str r0, [r5, #0x1c]
	ldrb r4, [r1]
	adds r0, r7, #0
	movs r1, #0xb
	bl ov104_02230E90
	adds r7, r0, #0
	str r4, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r3, [sp, #8]
	ldr r0, [r0, #0x44]
	adds r1, r6, #0
	adds r2, r7, #0
	bl FUN_0200B48C
	adds r0, r7, #0
	bl FUN_020237BC
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02230E40

	thumb_func_start ov104_02230E90
ov104_02230E90: @ 0x02230E90
	push {r3, r4, r5, lr}
	movs r2, #0x67
	adds r4, r0, #0
	adds r3, r1, #0
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	bl FUN_0200B144
	adds r5, r0, #0
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0200B190
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02230E90

	thumb_func_start ov104_02230EB8
ov104_02230EB8: @ 0x02230EB8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0x1c]
	adds r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl ov104_0222FC00
	adds r2, r0, #0
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r0, [r0, #0x44]
	bl FUN_0200B7EC
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02230EB8

	thumb_func_start ov104_02230ED8
ov104_02230ED8: @ 0x02230ED8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r1, [r4, #0x1c]
	adds r2, r0, #0
	adds r0, r1, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	ldrb r1, [r1]
	ldr r0, [r0, #0x44]
	ldr r2, [r2, #8]
	bl FUN_0200B4BC
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_02230ED8

	thumb_func_start ov104_02230EFC
ov104_02230EFC: @ 0x02230EFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r5, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0202D750
	movs r1, #0
	adds r2, r1, #0
	bl FUN_0202D230
	strh r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02230EFC

	thumb_func_start ov104_02230F28
ov104_02230F28: @ 0x02230F28
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r5, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0202440C
	adds r1, r5, #0
	bl FUN_0206D0C8
	ldr r0, [r4, #8]
	bl FUN_0202CD88
	movs r1, #0x44
	adds r2, r5, #0
	bl FUN_0202CF70
	ldr r0, [r4, #8]
	bl FUN_0202D750
	adds r1, r5, #0
	movs r2, #5
	bl FUN_0202D230
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02230F28

	thumb_func_start ov104_02230F6C
ov104_02230F6C: @ 0x02230F6C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r5, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0202CD88
	movs r1, #0x45
	adds r2, r5, #0
	bl FUN_0202CF70
	ldr r0, [r4, #8]
	bl FUN_0202D750
	adds r1, r5, #0
	movs r2, #6
	bl FUN_0202D230
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02230F6C

	thumb_func_start ov104_02230FA4
ov104_02230FA4: @ 0x02230FA4
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222FC00
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_020364F0
	ldr r1, _02230FC8 @ =ov104_02230FCC
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_02230FC8: .4byte ov104_02230FCC
	thumb_func_end ov104_02230FA4

	thumb_func_start ov104_02230FCC
ov104_02230FCC: @ 0x02230FCC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02035E18
	cmp r0, #2
	bge _02230FDC
	movs r0, #1
	pop {r4, pc}
_02230FDC:
	adds r4, #0x78
	ldrh r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02036540
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_02230FCC

	thumb_func_start ov104_02230FEC
ov104_02230FEC: @ 0x02230FEC
	push {r3, lr}
	bl FUN_020365F4
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02230FEC

	thumb_func_start ov104_02230FF8
ov104_02230FF8: @ 0x02230FF8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0205987C
	ldr r1, _0223100C @ =ov104_02231010
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0223100C: .4byte ov104_02231010
	thumb_func_end ov104_02230FF8

	thumb_func_start ov104_02231010
ov104_02231010: @ 0x02231010
	push {r3, lr}
	bl FUN_02036780
	cmp r0, #1
	beq _02231026
	bl FUN_02033E1C
	cmp r0, #1
	beq _02231026
	movs r0, #1
	pop {r3, pc}
_02231026:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02231010

	thumb_func_start ov104_0223102C
ov104_0223102C: @ 0x0223102C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl ov104_0222FBE4
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	bl FUN_0201D2E8
	adds r1, r4, #0
	blx FUN_020E1F6C
	strh r1, [r5]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0223102C

	thumb_func_start ov104_02231050
ov104_02231050: @ 0x02231050
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0207A268
	bl FUN_02097284
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02231050

	thumb_func_start ov104_02231068
ov104_02231068: @ 0x02231068
	push {r3, lr}
	ldr r1, _02231074 @ =ov104_02231078
	bl ov104_0222E974
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02231074: .4byte ov104_02231078
	thumb_func_end ov104_02231068

	thumb_func_start ov104_02231078
ov104_02231078: @ 0x02231078
	ldr r0, _0223108C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02231086
	movs r0, #1
	bx lr
_02231086:
	movs r0, #0
	bx lr
	nop
_0223108C: .4byte 0x021BF67C
	thumb_func_end ov104_02231078

	thumb_func_start ov104_02231090
ov104_02231090: @ 0x02231090
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222FC00
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _022310AC @ =ov104_022310B0
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_022310AC: .4byte ov104_022310B0
	thumb_func_end ov104_02231090

	thumb_func_start ov104_022310B0
ov104_022310B0: @ 0x022310B0
	ldr r1, _022310DC @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #3
	tst r1, r2
	beq _022310BE
	movs r0, #1
	bx lr
_022310BE:
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r1, [r1]
	subs r2, r1, #1
	adds r1, r0, #0
	adds r1, #0x78
	strh r2, [r1]
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _022310D8
	movs r0, #1
	bx lr
_022310D8:
	movs r0, #0
	bx lr
	.align 2, 0
_022310DC: .4byte 0x021BF67C
	thumb_func_end ov104_022310B0

	thumb_func_start ov104_022310E0
ov104_022310E0: @ 0x022310E0
	push {r3, lr}
	bl ov104_0222FBE4
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022310E0

	thumb_func_start ov104_022310EC
ov104_022310EC: @ 0x022310EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl ov104_0222EA48
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_020507E4
	adds r1, r6, #0
	bl FUN_020508B8
	strh r4, [r0]
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_022310EC

	thumb_func_start ov104_02231118
ov104_02231118: @ 0x02231118
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl ov104_0222EA48
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_020507E4
	adds r1, r6, #0
	bl FUN_020508B8
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_02231118

	thumb_func_start ov104_02231148
ov104_02231148: @ 0x02231148
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0223115A
	cmp r0, #1
	beq _02231176
	b _022311A8
_0223115A:
	movs r1, #0x10
	movs r0, #2
	adds r2, r1, #0
	adds r3, r4, #0
	str r0, [sp]
	movs r0, #1
	subs r2, #0x20
	adds r3, #0xc
	bl ov104_0223E894
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _022311B6
_02231176:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022311B6
	movs r0, #0
	bl FUN_0200F32C
	movs r0, #1
	bl FUN_0200F32C
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #0x20
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _022311B6
_022311A8:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022311B6
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_022311B6:
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov104_02231148

	thumb_func_start ov104_022311BC
ov104_022311BC: @ 0x022311BC
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _02231284
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022311D4: @ jump table
	.2byte _022311DC - _022311D4 - 2 @ case 0
	.2byte _022311F8 - _022311D4 - 2 @ case 1
	.2byte _02231252 - _022311D4 - 2 @ case 2
	.2byte _0223126A - _022311D4 - 2 @ case 3
_022311DC:
	movs r1, #0x10
	movs r0, #2
	adds r2, r1, #0
	adds r3, r4, #0
	str r0, [sp]
	movs r0, #1
	subs r2, #0x20
	adds r3, #0xc
	bl ov104_0223E894
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _022312D2
_022311F8:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022312D2
	movs r0, #0xb
	movs r1, #1
	bl FUN_0201A778
	str r0, [r4, #0x28]
	movs r3, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	ldr r0, [r0]
	movs r2, #1
	bl FUN_0201A7E8
	movs r1, #0
	str r1, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r2, #2
	ldr r0, [r0, #4]
	adds r3, r1, #0
	bl FUN_020038B0
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0x28]
	bl FUN_0201A9A4
	movs r0, #0xb
	bl ov104_0223EBA0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_02231252:
	movs r0, #0xf
	str r0, [sp]
	movs r1, #1
	ldr r0, [r4, #0x2c]
	ldr r3, [r4, #0x28]
	adds r2, r1, #0
	bl ov104_0223EBF0
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _022312D2
_0223126A:
	ldr r0, [r4, #0x2c]
	bl ov104_0223EC34
	adds r5, r0, #0
	ldr r0, [r4, #0x28]
	bl FUN_0201A9A4
	cmp r5, #0
	beq _022312D2
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _022312D2
_02231284:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022312D2
	ldr r0, [r4, #0x2c]
	bl ov104_0223EBD0
	ldr r0, [r4, #0x28]
	bl FUN_0201ACF4
	ldr r0, [r4, #0x28]
	bl FUN_0201A8FC
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_0201A928
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0xb
	bl FUN_02019690
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	add sp, #0x14
	movs r0, #0
	pop {r4, r5, pc}
_022312D2:
	movs r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov104_022311BC

	thumb_func_start ov104_022312D8
ov104_022312D8: @ 0x022312D8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _022313A0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022312F0: @ jump table
	.2byte _022312F8 - _022312F0 - 2 @ case 0
	.2byte _02231314 - _022312F0 - 2 @ case 1
	.2byte _0223136E - _022312F0 - 2 @ case 2
	.2byte _02231386 - _022312F0 - 2 @ case 3
_022312F8:
	movs r1, #0x10
	movs r0, #2
	adds r2, r1, #0
	adds r3, r4, #0
	str r0, [sp]
	movs r0, #1
	subs r2, #0x20
	adds r3, #0xc
	bl ov104_0223E894
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _022313EE
_02231314:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022313EE
	movs r0, #0xb
	movs r1, #1
	bl FUN_0201A778
	str r0, [r4, #0x28]
	movs r3, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	ldr r0, [r0]
	movs r2, #1
	bl FUN_0201A7E8
	movs r1, #0
	str r1, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r2, #2
	ldr r0, [r0, #4]
	adds r3, r1, #0
	bl FUN_020038B0
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0x28]
	bl FUN_0201A9A4
	movs r0, #0xb
	bl ov104_0223EBA0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_0223136E:
	movs r0, #0xf
	str r0, [sp]
	movs r1, #1
	ldr r0, [r4, #0x2c]
	ldr r3, [r4, #0x28]
	adds r2, r1, #0
	bl ov104_0223EBF0
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _022313EE
_02231386:
	ldr r0, [r4, #0x2c]
	bl ov104_0223EE44
	adds r5, r0, #0
	ldr r0, [r4, #0x28]
	bl FUN_0201A9A4
	cmp r5, #0
	beq _022313EE
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _022313EE
_022313A0:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022313EE
	ldr r0, [r4, #0x2c]
	bl ov104_0223EBD0
	ldr r0, [r4, #0x28]
	bl FUN_0201ACF4
	ldr r0, [r4, #0x28]
	bl FUN_0201A8FC
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_0201A928
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0xb
	bl FUN_02019690
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	add sp, #0x14
	movs r0, #0
	pop {r4, r5, pc}
_022313EE:
	movs r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov104_022312D8

	thumb_func_start ov104_022313F4
ov104_022313F4: @ 0x022313F4
	lsls r1, r1, #0x10
	orrs r0, r1
	bx lr
	.align 2, 0
	thumb_func_end ov104_022313F4

	thumb_func_start ov104_022313FC
ov104_022313FC: @ 0x022313FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #2
	ldr r0, [r0]
	ldr r7, [r4, #0x24]
	bl FUN_02019FF0
	str r0, [sp, #0x20]
	ldr r0, [r4]
	movs r1, #2
	ldr r0, [r0]
	bl FUN_02019FF0
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_02019FF0
	str r0, [sp, #0x18]
	ldr r0, [r4]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_02019FF0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _0223143E
	b _022315AE
_0223143E:
	movs r0, #6
	lsls r0, r0, #8
	ldr r0, [r7, r0]
	bl ov104_0223F27C
	str r0, [sp, #0x24]
	movs r0, #0
	str r0, [sp, #0x28]
	adds r4, r7, #0
_02231450:
	movs r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	ldrsh r6, [r4, r0]
	movs r0, #2
	ldrsh r0, [r4, r0]
	cmp r6, r0
	blt _02231462
	b _02231586
_02231462:
	ldr r0, [sp, #0x24]
	lsls r1, r6, #5
	adds r5, r0, r1
_02231468:
	movs r2, #1
	movs r0, #0
	lsls r2, r2, #0xc
	str r0, [sp]
	add r0, sp, #0x2c
	movs r1, #0
	adds r3, r2, #0
	bl FUN_0201D470
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x20]
	adds r0, r0, r1
	movs r1, #0xa
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0x10
	adds r1, r1, r2
	ldr r2, _0223171C @ =0x00000604
	lsls r1, r1, #0x10
	ldr r2, [r7, r2]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	cmp r2, #2
	bne _022314BC
	lsrs r2, r0, #0x1f
	lsls r3, r0, #0x18
	subs r3, r3, r2
	movs r0, #0x18
	rors r3, r0
	adds r0, r2, r3
	lsrs r2, r1, #0x1f
	lsls r3, r1, #0x18
	lsls r0, r0, #0x10
	subs r3, r3, r2
	movs r1, #0x18
	rors r3, r1
	adds r1, r2, r3
	lsls r1, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	b _022314E8
_022314BC:
	cmp r2, #1
	bne _022314E8
	cmp r0, #0
	bge _022314CE
	movs r2, #1
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_022314CE:
	cmp r1, #0
	bge _022314D8
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
_022314D8:
	lsrs r2, r0, #0x1f
	lsls r3, r0, #0x18
	subs r3, r3, r2
	movs r0, #0x18
	rors r3, r0
	adds r0, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_022314E8:
	str r0, [sp]
	movs r2, #0
	str r1, [sp, #4]
	adds r0, r5, #0
	add r1, sp, #0x2c
	adds r3, r2, #0
	blx FUN_020BF4AC
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	movs r1, #0xa
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0x10
	adds r1, r1, r2
	ldr r2, _0223171C @ =0x00000604
	lsls r1, r1, #0x10
	ldr r2, [r7, r2]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	cmp r2, #2
	bne _0223153A
	lsrs r2, r0, #0x1f
	lsls r3, r0, #0x18
	subs r3, r3, r2
	movs r0, #0x18
	rors r3, r0
	adds r0, r2, r3
	lsrs r2, r1, #0x1f
	lsls r3, r1, #0x18
	lsls r0, r0, #0x10
	subs r3, r3, r2
	movs r1, #0x18
	rors r3, r1
	adds r1, r2, r3
	lsls r1, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	b _02231566
_0223153A:
	cmp r2, #1
	bne _02231566
	cmp r0, #0
	bge _0223154C
	movs r2, #1
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0223154C:
	cmp r1, #0
	bge _02231556
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
_02231556:
	lsrs r2, r0, #0x1f
	lsls r3, r0, #0x18
	subs r3, r3, r2
	movs r0, #0x18
	rors r3, r0
	adds r0, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_02231566:
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	str r1, [sp, #4]
	adds r0, #0x10
	add r1, sp, #0x2c
	adds r3, r2, #0
	blx FUN_020BF4AC
	movs r0, #2
	ldrsh r0, [r4, r0]
	adds r6, r6, #1
	adds r5, #0x20
	cmp r6, r0
	bge _02231586
	b _02231468
_02231586:
	ldr r0, [sp, #0x28]
	adds r4, #0x10
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #0x60
	bge _02231594
	b _02231450
_02231594:
	movs r0, #6
	lsls r0, r0, #8
	ldr r0, [r7, r0]
	bl ov104_0223F258
	adds r0, r7, #0
	bl FUN_020181C4
	ldr r0, [sp, #8]
	bl FUN_0200DA58
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_022315AE:
	movs r0, #6
	lsls r0, r0, #8
	ldr r0, [r7, r0]
	bl ov104_0223F27C
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r4, r7, #0
_022315C0:
	movs r0, #8
	ldrsh r1, [r4, r0]
	movs r0, #4
	ldrsh r0, [r4, r0]
	adds r0, r1, r0
	strh r0, [r4, #8]
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	movs r0, #6
	ldrsh r0, [r4, r0]
	adds r0, r1, r0
	strh r0, [r4, #0xa]
	movs r0, #0
	ldrsh r6, [r4, r0]
	movs r0, #2
	ldrsh r0, [r4, r0]
	cmp r6, r0
	blt _022315E6
	b _0223170A
_022315E6:
	ldr r0, [sp, #0x10]
	lsls r1, r6, #5
	adds r5, r0, r1
_022315EC:
	movs r2, #1
	movs r0, #0
	lsls r2, r2, #0xc
	str r0, [sp]
	add r0, sp, #0x2c
	movs r1, #0
	adds r3, r2, #0
	bl FUN_0201D470
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x20]
	adds r0, r0, r1
	movs r1, #0xa
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0x10
	adds r1, r1, r2
	ldr r2, _0223171C @ =0x00000604
	lsls r1, r1, #0x10
	ldr r2, [r7, r2]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	cmp r2, #2
	bne _02231640
	lsrs r2, r0, #0x1f
	lsls r3, r0, #0x18
	subs r3, r3, r2
	movs r0, #0x18
	rors r3, r0
	adds r0, r2, r3
	lsrs r2, r1, #0x1f
	lsls r3, r1, #0x18
	lsls r0, r0, #0x10
	subs r3, r3, r2
	movs r1, #0x18
	rors r3, r1
	adds r1, r2, r3
	lsls r1, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	b _0223166C
_02231640:
	cmp r2, #1
	bne _0223166C
	cmp r0, #0
	bge _02231652
	movs r2, #1
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_02231652:
	cmp r1, #0
	bge _0223165C
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
_0223165C:
	lsrs r2, r0, #0x1f
	lsls r3, r0, #0x18
	subs r3, r3, r2
	movs r0, #0x18
	rors r3, r0
	adds r0, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0223166C:
	str r0, [sp]
	movs r2, #0
	str r1, [sp, #4]
	adds r0, r5, #0
	add r1, sp, #0x2c
	adds r3, r2, #0
	blx FUN_020BF4AC
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	movs r1, #0xa
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0x10
	adds r1, r1, r2
	ldr r2, _0223171C @ =0x00000604
	lsls r1, r1, #0x10
	ldr r2, [r7, r2]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	cmp r2, #2
	bne _022316BE
	lsrs r2, r0, #0x1f
	lsls r3, r0, #0x18
	subs r3, r3, r2
	movs r0, #0x18
	rors r3, r0
	adds r0, r2, r3
	lsrs r2, r1, #0x1f
	lsls r3, r1, #0x18
	lsls r0, r0, #0x10
	subs r3, r3, r2
	movs r1, #0x18
	rors r3, r1
	adds r1, r2, r3
	lsls r1, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	b _022316EA
_022316BE:
	cmp r2, #1
	bne _022316EA
	cmp r0, #0
	bge _022316D0
	movs r2, #1
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_022316D0:
	cmp r1, #0
	bge _022316DA
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
_022316DA:
	lsrs r2, r0, #0x1f
	lsls r3, r0, #0x18
	subs r3, r3, r2
	movs r0, #0x18
	rors r3, r0
	adds r0, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_022316EA:
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	str r1, [sp, #4]
	adds r0, #0x10
	add r1, sp, #0x2c
	adds r3, r2, #0
	blx FUN_020BF4AC
	movs r0, #2
	ldrsh r0, [r4, r0]
	adds r6, r6, #1
	adds r5, #0x20
	cmp r6, r0
	bge _0223170A
	b _022315EC
_0223170A:
	ldr r0, [sp, #0xc]
	adds r4, #0x10
	adds r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x60
	bge _02231718
	b _022315C0
_02231718:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223171C: .4byte 0x00000604
	thumb_func_end ov104_022313FC

	thumb_func_start ov104_02231720
ov104_02231720: @ 0x02231720
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02231736
	cmp r0, #1
	beq _02231752
	cmp r0, #2
	beq _0223180C
	b _02231846
_02231736:
	movs r1, #0x10
	movs r0, #2
	adds r2, r1, #0
	adds r3, r5, #0
	str r0, [sp]
	movs r0, #1
	subs r2, #0x20
	adds r3, #0xc
	bl ov104_0223E894
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	b _0223184C
_02231752:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0223184C
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C4CF4
	movs r0, #0
	str r0, [r5, #0x10]
	ldr r1, _02231854 @ =0x00000608
	movs r0, #0x5e
	bl FUN_02018144
	ldr r1, _02231858 @ =0x00000604
	str r0, [r5, #0x24]
	movs r2, #1
	str r2, [r0, r1]
	ldr r0, _0223185C @ =0x04000020
	add r1, sp, #4
	movs r2, #0x5e
	bl ov104_0223F1B4
	movs r7, #0
	movs r1, #6
	ldr r2, [r5, #0x24]
	lsls r1, r1, #8
	str r0, [r2, r1]
	adds r6, r7, #0
	adds r4, r7, #0
_0223178E:
	ldr r0, [r5, #0x24]
	strh r6, [r0, r4]
	ldr r1, [r5, #0x24]
	adds r0, r1, r4
	ldrsh r1, [r1, r4]
	adds r1, r1, #2
	strh r1, [r0, #2]
	movs r0, #0x31
	subs r2, r0, r7
	lsrs r1, r2, #0x1f
	lsls r3, r2, #0x1d
	subs r3, r3, r1
	movs r0, #0x1d
	rors r3, r0
	adds r0, r1, r3
	ldr r1, [r5, #0x24]
	adds r1, r1, r4
	strh r0, [r1, #4]
	asrs r0, r2, #1
	lsrs r0, r0, #0x1e
	adds r0, r2, r0
	asrs r1, r0, #2
	ldr r0, [r5, #0x24]
	adds r0, r0, r4
	strh r1, [r0, #6]
	ldr r0, [r5, #0x24]
	adds r1, r0, r4
	movs r0, #0
	strh r0, [r1, #8]
	ldr r0, [r5, #0x24]
	adds r1, r0, r4
	movs r0, #0
	strh r0, [r1, #0xa]
	adds r1, r0, #0
	bl ov104_022313F4
	ldr r1, [r5, #0x24]
	adds r7, r7, #1
	adds r1, r1, r4
	str r0, [r1, #0xc]
	adds r6, r6, #2
	adds r4, #0x10
	cmp r7, #0x60
	blt _0223178E
	movs r0, #1
	str r0, [sp]
	movs r0, #0x28
	adds r1, r0, #0
	subs r1, #0x38
	movs r2, #0
	movs r3, #0x1e
	bl FUN_0200AAE0
	movs r2, #1
	ldr r0, _02231860 @ =ov104_022313FC
	adds r1, r5, #0
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	b _0223184C
_0223180C:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #0
	beq _0223184C
	movs r0, #1
	str r0, [r5, #0x10]
	movs r0, #3
	movs r1, #0
	bl FUN_02019120
	ldr r0, [r5]
	movs r2, #0
	ldr r0, [r0]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	ldr r0, [r5]
	movs r1, #3
	ldr r0, [r0]
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	b _0223184C
_02231846:
	add sp, #0x24
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0223184C:
	movs r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02231854: .4byte 0x00000608
_02231858: .4byte 0x00000604
_0223185C: .4byte 0x04000020
_02231860: .4byte ov104_022313FC
	thumb_func_end ov104_02231720

	thumb_func_start ov104_02231864
ov104_02231864: @ 0x02231864
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0223187A
	cmp r0, #1
	beq _02231896
	cmp r0, #2
	beq _02231974
	b _022319AE
_0223187A:
	movs r1, #0x10
	movs r0, #2
	adds r2, r1, #0
	adds r3, r5, #0
	str r0, [sp]
	movs r0, #1
	subs r2, #0x20
	adds r3, #0xc
	bl ov104_0223E894
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	b _022319B4
_02231896:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0223189E
	b _022319B4
_0223189E:
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C4CF4
	movs r0, #0
	str r0, [r5, #0x10]
	ldr r1, _022319BC @ =0x00000608
	movs r0, #0x5e
	bl FUN_02018144
	ldr r1, _022319C0 @ =0x00000604
	str r0, [r5, #0x24]
	movs r2, #2
	str r2, [r0, r1]
	ldr r0, _022319C4 @ =0x04000020
	add r1, sp, #4
	movs r2, #0x5e
	bl ov104_0223F1B4
	movs r6, #0
	movs r1, #6
	ldr r2, [r5, #0x24]
	lsls r1, r1, #8
	str r0, [r2, r1]
	adds r7, r6, #0
	adds r4, r6, #0
_022318D4:
	ldr r0, [r5, #0x24]
	lsrs r2, r6, #0x1f
	strh r7, [r0, r4]
	ldr r1, [r5, #0x24]
	adds r0, r1, r4
	ldrsh r1, [r1, r4]
	adds r1, r1, #2
	strh r1, [r0, #2]
	movs r0, #0x30
	subs r1, r0, r6
	asrs r0, r1, #2
	lsrs r0, r0, #0x1d
	adds r0, r1, r0
	asrs r0, r0, #3
	adds r1, r0, #1
	ldr r0, [r5, #0x24]
	adds r0, r0, r4
	strh r1, [r0, #4]
	lsls r1, r6, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	beq _02231912
	ldr r0, [r5, #0x24]
	movs r1, #4
	adds r0, r0, r4
	ldrsh r2, [r0, r1]
	subs r1, r1, #5
	muls r1, r2, r1
	strh r1, [r0, #4]
_02231912:
	cmp r6, #0x30
	bge _0223191E
	ldr r0, [r5, #0x24]
	adds r0, r0, r4
	strh r6, [r0, #6]
	b _02231928
_0223191E:
	movs r0, #0x60
	subs r1, r0, r6
	ldr r0, [r5, #0x24]
	adds r0, r0, r4
	strh r1, [r0, #6]
_02231928:
	ldr r0, [r5, #0x24]
	adds r1, r0, r4
	movs r0, #0
	strh r0, [r1, #8]
	ldr r0, [r5, #0x24]
	adds r1, r0, r4
	movs r0, #0
	strh r0, [r1, #0xa]
	adds r1, r0, #0
	bl ov104_022313F4
	ldr r1, [r5, #0x24]
	adds r6, r6, #1
	adds r1, r1, r4
	str r0, [r1, #0xc]
	adds r7, r7, #2
	adds r4, #0x10
	cmp r6, #0x60
	blt _022318D4
	movs r0, #1
	str r0, [sp]
	movs r0, #0x28
	adds r1, r0, #0
	subs r1, #0x38
	movs r2, #0
	movs r3, #0x1c
	bl FUN_0200AAE0
	movs r2, #1
	ldr r0, _022319C8 @ =ov104_022313FC
	adds r1, r5, #0
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	b _022319B4
_02231974:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #0
	beq _022319B4
	movs r0, #1
	str r0, [r5, #0x10]
	movs r0, #3
	movs r1, #0
	bl FUN_02019120
	ldr r0, [r5]
	movs r2, #0
	ldr r0, [r0]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	ldr r0, [r5]
	movs r1, #3
	ldr r0, [r0]
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	b _022319B4
_022319AE:
	add sp, #0x24
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_022319B4:
	movs r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022319BC: .4byte 0x00000608
_022319C0: .4byte 0x00000604
_022319C4: .4byte 0x04000020
_022319C8: .4byte ov104_022313FC
	thumb_func_end ov104_02231864

	thumb_func_start ov104_022319CC
ov104_022319CC: @ 0x022319CC
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022319DE
	cmp r0, #1
	beq _022319F0
	b _02231A1A
_022319DE:
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #0x5e
	bl ov104_0223F094
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _02231A1A
_022319F0:
	movs r0, #0x12
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #0x19
	lsls r0, r0, #4
	str r0, [sp, #4]
	ldr r0, _02231A20 @ =0x0400001C
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #4
	str r0, [sp, #0x10]
	adds r0, r4, #0
	ldr r3, _02231A24 @ =0x000002AA
	adds r0, #0x18
	movs r2, #0xbf
	bl ov104_0223F0B0
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_02231A1A:
	movs r0, #1
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_02231A20: .4byte 0x0400001C
_02231A24: .4byte 0x000002AA
	thumb_func_end ov104_022319CC

	thumb_func_start ov104_02231A28
ov104_02231A28: @ 0x02231A28
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r1, r5, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _02231AA0 @ =0x0000045F
	movs r0, #5
	movs r2, #1
	bl FUN_02004550
	movs r0, #0xb
	movs r1, #0x30
	bl FUN_02018144
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	str r0, [r4, #0x14]
	movs r0, #0
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r0, [r0]
	str r0, [r4, #8]
	ldr r0, [r5]
	bl ov104_0222E924
	str r0, [r4]
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r0, [r0]
	bl FUN_0209B980
	ldr r1, _02231AA4 @ =ov104_02231AA8
	adds r0, r5, #0
	bl ov104_0222E974
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r2, #2
	ldr r0, [r0, #4]
	adds r3, r1, #0
	bl FUN_020038B0
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_02231AA0: .4byte 0x0000045F
_02231AA4: .4byte ov104_02231AA8
	thumb_func_end ov104_02231A28

	thumb_func_start ov104_02231AA8
ov104_02231AA8: @ 0x02231AA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	ldr r1, [r4, #8]
	lsls r2, r1, #2
	ldr r1, _02231AF0 @ =0x0223F65C
	ldr r1, [r1, r2]
	blx r1
	adds r6, r0, #0
	bne _02231AE4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	ldr r0, [r5]
	ldr r1, [r4, #0x14]
	ldr r0, [r0]
	bl FUN_0209B980
	adds r0, r4, #0
	bl FUN_020181C4
_02231AE4:
	cmp r6, #0
	bne _02231AEC
	movs r0, #1
	pop {r4, r5, r6, pc}
_02231AEC:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02231AF0: .4byte 0x0223F65C
	thumb_func_end ov104_02231AA8

	thumb_func_start ov104_02231AF4
ov104_02231AF4: @ 0x02231AF4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_02025E38
	bl FUN_02025F30
	cmp r0, #0
	bne _02231B18
	movs r0, #0
	b _02231B1A
_02231B18:
	movs r0, #0x61
_02231B1A:
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02231AF4

	thumb_func_start ov104_02231B20
ov104_02231B20: @ 0x02231B20
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r3, r0, #0
	ldr r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_0223D614
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02231B20

	thumb_func_start ov104_02231B54
ov104_02231B54: @ 0x02231B54
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov104_0223D68C
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02231B54

	thumb_func_start ov104_02231B74
ov104_02231B74: @ 0x02231B74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	ldr r0, [r5, #0x10]
	adds r1, r6, #0
	bl ov104_0223D6D0
	movs r2, #0
	adds r1, r4, #0
	adds r3, r2, #0
	bl FUN_020146F4
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_02231B74

	thumb_func_start ov104_02231BA8
ov104_02231BA8: @ 0x02231BA8
	push {r3, lr}
	ldr r1, _02231BB4 @ =ov104_02231BB8
	bl ov104_0222E974
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02231BB4: .4byte ov104_02231BB8
	thumb_func_end ov104_02231BA8

	thumb_func_start ov104_02231BB8
ov104_02231BB8: @ 0x02231BB8
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B974
	ldr r0, [r0, #0x10]
	bl ov104_0223D6E4
	cmp r0, #1
	bne _02231BD0
	movs r0, #1
	pop {r3, pc}
_02231BD0:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02231BB8

	thumb_func_start ov104_02231BD4
ov104_02231BD4: @ 0x02231BD4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r5, r0, #0
	adds r0, #0xa4
	ldr r0, [r0]
	adds r5, #0xa4
	cmp r0, #0
	beq _02231BF6
	bl FUN_02022974
	ldr r0, [r5]
	bl FUN_0200DA58
_02231BF6:
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	str r0, [sp]
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	strh r6, [r5, #4]
	ldr r0, [sp]
	strh r7, [r5, #6]
	strb r0, [r5, #9]
	ldr r0, _02231C3C @ =ov104_0223319C
	ldr r2, _02231C40 @ =0x00011170
	adds r1, r5, #0
	strb r4, [r5, #0xa]
	bl FUN_0200D9E8
	str r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231C3C: .4byte ov104_0223319C
_02231C40: .4byte 0x00011170
	thumb_func_end ov104_02231BD4

	thumb_func_start ov104_02231C44
ov104_02231C44: @ 0x02231C44
	push {r3, lr}
	ldr r1, _02231C50 @ =ov104_02231C54
	bl ov104_0222E974
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02231C50: .4byte ov104_02231C54
	thumb_func_end ov104_02231C44

	thumb_func_start ov104_02231C54
ov104_02231C54: @ 0x02231C54
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r0, #0xa4
	ldr r0, [r0]
	cmp r0, #0
	bne _02231C6A
	movs r0, #1
	pop {r3, pc}
_02231C6A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02231C54

	thumb_func_start ov104_02231C70
ov104_02231C70: @ 0x02231C70
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	adds r4, #0xb0
	cmp r0, #0
	beq _02231C92
	bl FUN_02022974
	ldr r0, [r4]
	bl FUN_0200DA58
_02231C92:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	adds r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #5]
	adds r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #6]
	adds r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #7]
	adds r0, r5, #0
	bl ov104_0222FC00
	strh r0, [r4, #8]
	adds r0, r5, #0
	bl ov104_0222FC00
	strb r0, [r4, #0xa]
	movs r2, #0x4b
	ldr r0, _02231CE0 @ =ov104_022331E8
	adds r1, r4, #0
	lsls r2, r2, #2
	bl FUN_0200D9E8
	str r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02231CE0: .4byte ov104_022331E8
	thumb_func_end ov104_02231C70

	thumb_func_start ov104_02231CE4
ov104_02231CE4: @ 0x02231CE4
	push {r3, lr}
	ldr r1, _02231CF0 @ =ov104_02231CF4
	bl ov104_0222E974
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02231CF0: .4byte ov104_02231CF4
	thumb_func_end ov104_02231CE4

	thumb_func_start ov104_02231CF4
ov104_02231CF4: @ 0x02231CF4
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	bne _02231D0A
	movs r0, #1
	pop {r3, pc}
_02231D0A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02231CF4

	thumb_func_start ov104_02231D10
ov104_02231D10: @ 0x02231D10
	push {r3, lr}
	bl ov104_0222EA48
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02231D10

	thumb_func_start ov104_02231D1C
ov104_02231D1C: @ 0x02231D1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [r5]
	bl ov104_0222E924
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x18]
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r0, r5, #0
	bl ov104_0222EA48
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0207A268
	ldr r1, [sp, #0x18]
	bl FUN_0207A0FC
	str r4, [sp]
	adds r1, r0, #0
	str r6, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	adds r0, r7, #0
	movs r2, #0xb
	bl ov104_02232CE0
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02231D1C

	thumb_func_start ov104_02231D8C
ov104_02231D8C: @ 0x02231D8C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	bl ov104_0222E924
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov104_02232E80
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02231D8C

	thumb_func_start ov104_02231DAC
ov104_02231DAC: @ 0x02231DAC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	bl ov104_0222E924
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	add r1, sp, #0x10
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, #2
	add r2, sp, #0x10
	bl ov104_0223D554
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x78
	str r0, [sp, #4]
	movs r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	movs r0, #0
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xc]
	ldr r1, [r4]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r0, r6, #0
	bl ov104_0223DC7C
	ldr r1, _02231E0C @ =0x000004B2
	movs r0, #5
	movs r2, #1
	bl FUN_02004550
	ldr r1, _02231E10 @ =ov104_02231E14
	adds r0, r5, #0
	bl ov104_0222E974
	movs r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02231E0C: .4byte 0x000004B2
_02231E10: .4byte ov104_02231E14
	thumb_func_end ov104_02231DAC

	thumb_func_start ov104_02231E14
ov104_02231E14: @ 0x02231E14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B974
	adds r4, #0x78
	ldrh r0, [r4]
	cmp r0, #1
	bne _02231E2C
	movs r0, #1
	pop {r4, pc}
_02231E2C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_02231E14

	thumb_func_start ov104_02231E30
ov104_02231E30: @ 0x02231E30
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222EA48
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0202CD88
	adds r1, r4, #0
	bl FUN_0202CF28
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02231E30

	thumb_func_start ov104_02231E54
ov104_02231E54: @ 0x02231E54
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl ov104_0222EA48
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0202CD88
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0202CF70
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_02231E54

	thumb_func_start ov104_02231E80
ov104_02231E80: @ 0x02231E80
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222EA48
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0202CD88
	adds r1, r4, #0
	bl FUN_0202CFEC
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02231E80

	thumb_func_start ov104_02231EA4
ov104_02231EA4: @ 0x02231EA4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0205E6D8
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02231EA4

	thumb_func_start ov104_02231EC4
ov104_02231EC4: @ 0x02231EC4
	push {r4, lr}
	bl ov104_0222FBE4
	adds r4, r0, #0
	bl FUN_0202FAC0
	strh r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_02231EC4

	thumb_func_start ov104_02231ED8
ov104_02231ED8: @ 0x02231ED8
	push {r4, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0202B370
	adds r4, r0, #0
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0202B13C
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_02231ED8

	thumb_func_start ov104_02231EFC
ov104_02231EFC: @ 0x02231EFC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0202440C
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	bl FUN_0203608C
	movs r1, #1
	subs r0, r1, r0
	bl FUN_02032EE8
	lsls r1, r4, #0x18
	adds r2, r0, #0
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_0206D088
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02231EFC

	thumb_func_start ov104_02231F34
ov104_02231F34: @ 0x02231F34
	push {r3, lr}
	bl ov104_0222FC00
	bl FUN_0203632C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02231F34

	thumb_func_start ov104_02231F44
ov104_02231F44: @ 0x02231F44
	push {r3, lr}
	ldr r2, [r0, #0x1c]
	ldr r3, [r0]
	adds r1, r2, #1
	str r1, [r0, #0x1c]
	ldrb r1, [r2]
	ldr r0, [r3, #0x60]
	bl ov104_0223327C
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02231F44

	thumb_func_start ov104_02231F5C
ov104_02231F5C: @ 0x02231F5C
	push {r3, lr}
	ldr r2, [r0, #0x1c]
	ldr r3, [r0]
	adds r1, r2, #1
	str r1, [r0, #0x1c]
	ldrb r1, [r2]
	ldr r0, [r3, #0x60]
	bl ov104_02233298
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02231F5C

	thumb_func_start ov104_02231F74
ov104_02231F74: @ 0x02231F74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	bl ov104_02231FC4
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_02232034
	cmp r4, #0
	bne _02231FAE
	adds r0, r5, #0
	bl ov104_0222E924
	ldr r0, [r0, #8]
	bl FUN_0209B970
	ldr r0, [r0, #4]
	bl FUN_02027AC0
	adds r2, r0, #0
	movs r0, #0
	movs r1, #1
	b _02231FB4
_02231FAE:
	ldrb r2, [r4]
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
_02231FB4:
	str r0, [sp]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	bl ov104_02232050
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02231F74

	thumb_func_start ov104_02231FC4
ov104_02231FC4: @ 0x02231FC4
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	bl ov104_0222E924
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223201C
	movs r1, #0x13
	str r1, [sp]
	movs r1, #0x1b
	str r1, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r1, #0xd
	str r1, [sp, #0xc]
	ldr r1, _0223202C @ =0x0000036D
	movs r2, #1
	str r1, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r0]
	adds r1, #0x64
	movs r3, #2
	bl FUN_0201A7E8
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	ldr r2, _02232030 @ =0x000003E2
	adds r0, #0x64
	movs r1, #0
	movs r3, #0xb
	bl FUN_0200E060
	movs r0, #1
	adds r4, #0x5a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, pc}
_0223201C:
	adds r4, #0x64
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223202C: .4byte 0x0000036D
_02232030: .4byte 0x000003E2
	thumb_func_end ov104_02231FC4

	thumb_func_start ov104_02232034
ov104_02232034: @ 0x02232034
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r2, [r4, #0x4c]
	bl FUN_0200B1B8
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	bl FUN_0200C388
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_02232034

	thumb_func_start ov104_02232050
ov104_02232050: @ 0x02232050
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r3, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl FUN_02002AC8
	ldr r0, [sp, #0x20]
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x48]
	adds r0, #0x64
	adds r1, r6, #0
	bl FUN_0201D738
	adds r5, #0x50
	strb r0, [r5]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov104_02232050

	thumb_func_start ov104_02232088
ov104_02232088: @ 0x02232088
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	beq _02232098
	bl FUN_02022974
_02232098:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0x64
	bl FUN_0201A8FC
	movs r0, #0
	adds r4, #0x5a
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_02232088

	thumb_func_start ov104_022320B4
ov104_022320B4: @ 0x022320B4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov104_02231FC4
	add r3, sp, #8
	ldrh r0, [r3, #0x14]
	adds r1, r6, #0
	adds r2, r7, #0
	str r0, [sp]
	ldrh r3, [r3, #0x10]
	ldr r0, [r5, #0x48]
	bl ov104_022320FC
	add r0, sp, #8
	ldrb r3, [r0, #0x18]
	cmp r3, #0xff
	beq _022320EC
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl ov104_02232050
	pop {r3, r4, r5, r6, r7, pc}
_022320EC:
	movs r2, #0
	adds r0, r5, #0
	movs r1, #1
	str r2, [sp]
	bl ov104_02232050
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022320B4

	thumb_func_start ov104_022320FC
ov104_022320FC: @ 0x022320FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	add r0, sp, #0
	adds r7, r3, #0
	bl FUN_02014A84
	add r0, sp, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02014CE0
	add r0, sp, #0
	movs r1, #0
	adds r2, r7, #0
	bl FUN_02014CF8
	add r2, sp, #0x10
	ldrh r2, [r2, #0x10]
	add r0, sp, #0
	movs r1, #1
	bl FUN_02014CF8
	add r0, sp, #0
	movs r1, #0x20
	bl FUN_02014B34
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02023810
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022320FC

	thumb_func_start ov104_0223214C
ov104_0223214C: @ 0x0223214C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r1, [sp, #0x28]
	adds r7, r0, #0
	adds r4, r2, #0
	adds r5, r3, #0
	cmp r1, #0
	bne _0223217A
	ldr r2, _02232250 @ =0x00000169
	ldr r3, [r7, #0x34]
	movs r0, #1
	movs r1, #0x1a
	bl FUN_0200B144
	adds r1, r6, #0
	adds r1, #0x8c
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x97
	ldrb r1, [r0]
	movs r0, #2
	orrs r1, r0
	b _0223218A
_0223217A:
	adds r0, r6, #0
	adds r0, #0x8c
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0x97
	ldrb r1, [r0]
	movs r0, #2
	bics r1, r0
_0223218A:
	adds r0, r6, #0
	adds r0, #0x97
	strb r1, [r0]
	adds r0, r6, #0
	ldr r1, [sp, #0x24]
	adds r0, #0x90
	str r1, [r0]
	adds r0, r6, #0
	ldr r1, [sp, #0x20]
	str r7, [r6]
	adds r0, #0xa0
	str r1, [r0]
	adds r1, r6, #0
	adds r1, #0xa0
	ldr r1, [r1]
	movs r0, #0
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x97
	ldrb r3, [r1]
	movs r1, #1
	bics r3, r1
	add r1, sp, #8
	ldrb r2, [r1, #0x14]
	movs r1, #1
	ands r1, r2
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r6, #0
	adds r1, #0x97
	strb r2, [r1]
	add r1, sp, #8
	adds r2, r6, #0
	ldrb r1, [r1, #0x10]
	adds r2, #0x96
	movs r3, #3
	strb r1, [r2]
	adds r2, r6, #0
	adds r2, #0x98
	strb r4, [r2]
	adds r2, r6, #0
	adds r2, #0x99
	strb r5, [r2]
	adds r2, r6, #0
	adds r2, #0x9b
	strb r0, [r2]
	adds r2, r7, #0
	adds r2, #0x64
	str r2, [r6, #0x18]
	adds r2, r6, #0
	adds r2, #0x94
	strb r3, [r2]
	movs r2, #0xb5
	lsls r2, r2, #2
	strh r1, [r6, r2]
	adds r3, r6, #0
	adds r2, r0, #0
_022321FC:
	adds r1, r3, #0
	adds r1, #0xb4
	str r2, [r1]
	adds r1, r3, #0
	adds r1, #0xb8
	adds r0, r0, #1
	adds r3, #8
	str r2, [r1]
	cmp r0, #0x1c
	blt _022321FC
	adds r0, r6, #0
	adds r1, r6, #0
	movs r5, #0
	movs r4, #0xff
_02232218:
	movs r3, #0x6f
	lsls r3, r3, #2
	str r5, [r0, r3]
	adds r3, r3, #4
	str r5, [r0, r3]
	movs r3, #0xa7
	lsls r3, r3, #2
	strh r4, [r1, r3]
	adds r2, r2, #1
	adds r0, #8
	adds r1, r1, #2
	cmp r2, #0x1c
	blt _02232218
	adds r4, r6, #0
_02232234:
	ldr r1, [r7, #0x34]
	movs r0, #0x50
	bl FUN_02023790
	str r0, [r4, #0x1c]
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #0x1c
	blt _02232234
	adds r6, #0xa0
	ldr r1, _02232254 @ =0x0000EEEE
	ldr r0, [r6]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02232250: .4byte 0x00000169
_02232254: .4byte 0x0000EEEE
	thumb_func_end ov104_0223214C

	thumb_func_start ov104_02232258
ov104_02232258: @ 0x02232258
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	str r2, [sp, #0x14]
	adds r7, r1, #0
	movs r1, #0xb6
	ldr r0, [r5, #0x34]
	lsls r1, r1, #2
	adds r4, r3, #0
	bl FUN_02018144
	adds r6, r0, #0
	bne _02232278
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232278:
	movs r2, #0xb6
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	str r4, [sp]
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r5, #0
	bl ov104_0223214C
	adds r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02232258

	thumb_func_start ov104_022322A8
ov104_022322A8: @ 0x022322A8
	push {r3, lr}
	bl ov104_02232390
	pop {r3, pc}
	thumb_func_end ov104_022322A8

	thumb_func_start ov104_022322B0
ov104_022322B0: @ 0x022322B0
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	bl ov104_0222E924
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_02232414
	movs r1, #7
	tst r1, r0
	bne _022322CE
	lsrs r0, r0, #3
	b _022322D2
_022322CE:
	lsrs r0, r0, #3
	adds r0, r0, #1
_022322D2:
	adds r1, r5, #0
	adds r1, #0x97
	ldrb r1, [r1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	beq _022322EC
	adds r1, r5, #0
	adds r1, #0x98
	ldrb r1, [r1]
	subs r2, r1, r0
	adds r1, r5, #0
	adds r1, #0x98
	strb r2, [r1]
_022322EC:
	adds r1, r5, #0
	adds r1, #0x97
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1f
	beq _0223230E
	adds r1, r5, #0
	adds r1, #0x99
	ldrb r2, [r1]
	adds r1, r5, #0
	adds r1, #0x9b
	ldrb r1, [r1]
	lsls r1, r1, #1
	subs r2, r2, r1
	adds r1, r5, #0
	adds r1, #0x99
	strb r2, [r1]
_0223230E:
	adds r1, r5, #0
	adds r1, #0x99
	ldrb r1, [r1]
	lsls r0, r0, #0x18
	adds r3, r5, #0
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	adds r1, r5, #0
	movs r2, #1
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	adds r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r4]
	adds r1, #8
	bl FUN_0201A7E8
	adds r0, r5, #0
	ldr r2, _02232388 @ =0x000003D9
	adds r0, #8
	movs r1, #1
	movs r3, #0xc
	bl FUN_0200DC48
	adds r0, r5, #0
	bl ov104_02232454
	ldr r2, [r5]
	adds r1, r5, #0
	adds r1, #0x96
	ldr r2, [r2, #0x34]
	adds r0, r5, #0
	lsls r2, r2, #0x18
	ldrb r1, [r1]
	adds r0, #0xa4
	lsrs r2, r2, #0x18
	bl FUN_02001B9C
	adds r1, r5, #0
	adds r1, #0xb0
	str r0, [r1]
	adds r0, r5, #0
	bl ov104_022325D8
	ldr r0, _0223238C @ =ov104_022324C8
	adds r1, r5, #0
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02232388: .4byte 0x000003D9
_0223238C: .4byte ov104_022324C8
	thumb_func_end ov104_022322B0

	thumb_func_start ov104_02232390
ov104_02232390: @ 0x02232390
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r1, [sp]
	ldr r1, [r5]
	movs r0, #0x50
	ldr r1, [r1, #0x34]
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp]
	adds r2, r4, #0
	bl FUN_0200B1B8
	adds r1, r5, #0
	adds r1, #0x9b
	ldrb r1, [r1]
	adds r0, r5, #0
	adds r0, #0x90
	lsls r1, r1, #2
	adds r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r5, r0
	lsls r1, r1, #3
	adds r1, r5, r1
	ldr r0, [r0, #0x1c]
	adds r1, #0xb4
	str r0, [r1]
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	strh r6, [r1, r0]
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r0, #0xb8
	str r7, [r0]
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	adds r5, #0x9b
	adds r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02232390

	thumb_func_start ov104_02232414
ov104_02232414: @ 0x02232414
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	movs r6, #0
	adds r4, r6, #0
	cmp r0, #0
	ble _0223244C
	adds r5, r7, #0
_02232426:
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	cmp r1, #0
	beq _0223244C
	movs r0, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	cmp r6, r0
	bhs _0223243E
	adds r6, r0, #0
_0223243E:
	adds r0, r7, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	adds r4, r4, #1
	adds r5, #8
	cmp r4, r0
	blt _02232426
_0223244C:
	adds r6, #0xc
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02232414

	thumb_func_start ov104_02232454
ov104_02232454: @ 0x02232454
	adds r2, r0, #0
	adds r1, r0, #0
	adds r2, #0xb4
	adds r1, #0xa4
	str r2, [r1]
	adds r2, r0, #0
	adds r1, r0, #0
	adds r2, #8
	adds r1, #0xa8
	str r2, [r1]
	adds r1, r0, #0
	movs r2, #0
	adds r1, #0xac
	strb r2, [r1]
	adds r1, r0, #0
	movs r2, #1
	adds r1, #0xad
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x9b
	ldrb r2, [r1]
	adds r1, r0, #0
	adds r1, #0xae
	strb r2, [r1]
	adds r2, r0, #0
	adds r2, #0xaf
	ldrb r3, [r2]
	movs r2, #0xf
	adds r1, r0, #0
	bics r3, r2
	adds r2, r0, #0
	adds r2, #0xaf
	strb r3, [r2]
	adds r2, r0, #0
	adds r2, #0xaf
	ldrb r3, [r2]
	movs r2, #0x30
	adds r1, #0xaf
	bics r3, r2
	adds r2, r0, #0
	adds r2, #0xaf
	strb r3, [r2]
	adds r0, #0x9b
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, #4
	blo _022324BE
	movs r0, #0xc0
	bics r2, r0
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r1]
	bx lr
_022324BE:
	movs r0, #0xc0
	bics r2, r0
	strb r2, [r1]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02232454

	thumb_func_start ov104_022324C8
ov104_022324C8: @ 0x022324C8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _022324E4
	adds r0, r5, #0
	adds r0, #0x94
	ldrb r0, [r0]
	adds r5, #0x94
	subs r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_022324E4:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _02232562
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	bl FUN_02001BE0
	adds r4, r0, #0
	ldr r0, _02232564 @ =0x021BF67C
	movs r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	bne _02232514
	movs r1, #0x80
	tst r1, r0
	bne _02232514
	movs r1, #0x20
	tst r1, r0
	bne _02232514
	movs r1, #0x10
	tst r0, r1
	beq _0223251A
_02232514:
	adds r0, r5, #0
	bl ov104_022325D8
_0223251A:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	ldr r1, _02232568 @ =0x0000EEDD
	ldrh r2, [r0]
	cmp r2, r1
	bne _02232530
	adds r0, r5, #0
	bl ov104_02232570
	pop {r3, r4, r5, pc}
_02232530:
	movs r1, #1
	mvns r1, r1
	cmp r4, r1
	beq _02232540
	adds r1, r1, #1
	cmp r4, r1
	beq _02232562
	b _0223255A
_02232540:
	adds r1, r5, #0
	adds r1, #0x97
	ldrb r1, [r1]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, #1
	bne _02232562
	ldr r1, _0223256C @ =0x0000FFFE
	strh r1, [r0]
	adds r0, r5, #0
	bl ov104_02232570
	pop {r3, r4, r5, pc}
_0223255A:
	strh r4, [r0]
	adds r0, r5, #0
	bl ov104_02232570
_02232562:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02232564: .4byte 0x021BF67C
_02232568: .4byte 0x0000EEDD
_0223256C: .4byte 0x0000FFFE
	thumb_func_end ov104_022324C8

	thumb_func_start ov104_02232570
ov104_02232570: @ 0x02232570
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _022325D4 @ =0x000005DC
	bl FUN_02005748
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r6, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r6, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl FUN_0201A8FC
	movs r4, #0
	adds r5, r6, #0
_022325A0:
	ldr r0, [r5, #0x1c]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x1c
	blt _022325A0
	adds r0, r6, #0
	adds r0, #0x97
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _022325C6
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0]
	bl FUN_0200B190
_022325C6:
	ldr r0, [r6, #4]
	bl FUN_0200DA58
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022325D4: .4byte 0x000005DC
	thumb_func_end ov104_02232570

	thumb_func_start ov104_022325D8
ov104_022325D8: @ 0x022325D8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	bl FUN_02001DC4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	ldrh r1, [r1, r0]
	cmp r1, #0xff
	beq _022325FA
	adds r0, r4, #0
	movs r2, #0
	bl ov104_02232AC4
_022325FA:
	pop {r4, pc}
	thumb_func_end ov104_022325D8

	thumb_func_start ov104_022325FC
ov104_022325FC: @ 0x022325FC
	push {r4, lr}
	sub sp, #0x10
	add r4, sp, #8
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x20]
	str r4, [sp, #8]
	ldr r4, [sp, #0x24]
	str r4, [sp, #0xc]
	bl ov104_02232258
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_022325FC

	thumb_func_start ov104_0223261C
ov104_0223261C: @ 0x0223261C
	push {r3, lr}
	bl ov104_02232750
	pop {r3, pc}
	thumb_func_end ov104_0223261C

	thumb_func_start ov104_02232624
ov104_02232624: @ 0x02232624
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	bl ov104_0222E924
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_022327F0
	movs r1, #7
	tst r1, r0
	bne _02232642
	lsrs r1, r0, #3
	b _02232646
_02232642:
	lsrs r0, r0, #3
	adds r1, r0, #1
_02232646:
	adds r0, r5, #0
	adds r0, #0x97
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	beq _02232660
	adds r0, r5, #0
	adds r0, #0x98
	ldrb r0, [r0]
	subs r2, r0, r1
	adds r0, r5, #0
	adds r0, #0x98
	strb r2, [r0]
_02232660:
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	cmp r0, #8
	bls _022326B0
	adds r0, r5, #0
	adds r0, #0x97
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	beq _02232684
	adds r0, r5, #0
	adds r0, #0x99
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x99
	subs r2, #0x10
	strb r2, [r0]
_02232684:
	adds r0, r5, #0
	adds r0, #0x99
	ldrb r0, [r0]
	adds r3, r5, #0
	movs r2, #1
	str r0, [sp]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	adds r3, #0x98
	adds r1, r5, #0
	ldrb r3, [r3]
	ldr r0, [r4]
	adds r1, #8
	bl FUN_0201A7E8
	b _022326FE
_022326B0:
	adds r2, r5, #0
	adds r2, #0x97
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	beq _022326CC
	adds r2, r5, #0
	adds r2, #0x99
	ldrb r2, [r2]
	lsls r0, r0, #1
	subs r2, r2, r0
	adds r0, r5, #0
	adds r0, #0x99
	strb r2, [r0]
_022326CC:
	adds r0, r5, #0
	adds r0, #0x99
	ldrb r0, [r0]
	adds r3, r5, #0
	movs r2, #1
	str r0, [sp]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r3, #0x98
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r3, [r3]
	ldr r0, [r4]
	adds r1, #8
	bl FUN_0201A7E8
_022326FE:
	adds r0, r5, #0
	ldr r2, _02232748 @ =0x000003D9
	adds r0, #8
	movs r1, #1
	movs r3, #0xc
	bl FUN_0200DC48
	adds r0, r5, #0
	bl ov104_02232830
	ldr r3, [r5]
	adds r2, r5, #0
	adds r2, #0x96
	ldr r3, [r3, #0x34]
	movs r0, #0x65
	lsls r0, r0, #2
	lsls r3, r3, #0x18
	ldrb r2, [r2]
	adds r0, r5, r0
	movs r1, #0
	lsrs r3, r3, #0x18
	bl FUN_0200112C
	movs r1, #0x6d
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov104_02232B2C
	ldr r0, _0223274C @ =ov104_0223296C
	adds r1, r5, #0
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_02232748: .4byte 0x000003D9
_0223274C: .4byte ov104_0223296C
	thumb_func_end ov104_02232624

	thumb_func_start ov104_02232750
ov104_02232750: @ 0x02232750
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r1, [sp]
	ldr r1, [r5]
	movs r0, #0x50
	ldr r1, [r1, #0x34]
	adds r7, r2, #0
	adds r4, r3, #0
	bl FUN_02023790
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp]
	adds r2, r6, #0
	bl FUN_0200B1B8
	adds r1, r5, #0
	adds r1, #0x9b
	ldrb r1, [r1]
	adds r0, r5, #0
	adds r0, #0x90
	lsls r1, r1, #2
	adds r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r5, r0
	lsls r1, r1, #3
	adds r2, r5, r1
	movs r1, #0x6f
	ldr r0, [r0, #0x1c]
	lsls r1, r1, #2
	str r0, [r2, r1]
	adds r0, r6, #0
	bl FUN_020237BC
	cmp r4, #0xfa
	bne _022327C2
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	movs r2, #2
	mvns r2, r2
	lsls r0, r0, #3
	adds r1, r5, r0
	movs r0, #7
	lsls r0, r0, #6
	str r2, [r1, r0]
	b _022327D2
_022327C2:
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r5, r0
	movs r0, #7
	lsls r0, r0, #6
	str r4, [r1, r0]
_022327D2:
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	strh r7, [r1, r0]
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	adds r5, #0x9b
	adds r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02232750

	thumb_func_start ov104_022327F0
ov104_022327F0: @ 0x022327F0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	movs r6, #0
	adds r4, r6, #0
	cmp r0, #0
	ble _02232828
	adds r5, r7, #0
_02232802:
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02232828
	movs r0, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	cmp r6, r0
	bhs _0223281A
	adds r6, r0, #0
_0223281A:
	adds r0, r7, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	adds r4, r4, #1
	adds r5, #8
	cmp r4, r0
	blt _02232802
_02232828:
	adds r6, #0xc
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022327F0

	thumb_func_start ov104_02232830
ov104_02232830: @ 0x02232830
	push {r4, r5}
	movs r3, #0x6f
	lsls r3, r3, #2
	adds r1, r3, #0
	adds r2, r0, r3
	subs r1, #0x28
	str r2, [r0, r1]
	adds r1, r3, #0
	ldr r2, _02232928 @ =ov104_02232960
	subs r1, #0x24
	str r2, [r0, r1]
	adds r1, r3, #0
	ldr r2, _0223292C @ =ov104_0223293C
	subs r1, #0x20
	str r2, [r0, r1]
	adds r2, r0, #0
	adds r1, r3, #0
	adds r2, #8
	subs r1, #0x1c
	str r2, [r0, r1]
	adds r1, r0, #0
	adds r1, #0x9b
	ldrb r2, [r1]
	adds r1, r3, #0
	subs r1, #0x18
	strh r2, [r0, r1]
	adds r1, r3, #0
	movs r2, #8
	subs r1, #0x16
	strh r2, [r0, r1]
	adds r1, r3, #0
	movs r2, #1
	subs r1, #0x14
	strb r2, [r0, r1]
	adds r1, r3, #0
	movs r4, #0xc
	subs r1, #0x13
	strb r4, [r0, r1]
	adds r1, r3, #0
	movs r4, #2
	subs r1, #0x12
	strb r4, [r0, r1]
	adds r1, r3, #0
	subs r1, #0x11
	ldrb r4, [r0, r1]
	movs r1, #0xf
	bics r4, r1
	orrs r4, r2
	adds r2, r3, #0
	subs r2, #0x11
	strb r4, [r0, r2]
	adds r2, r3, #0
	subs r2, #0x11
	ldrb r5, [r0, r2]
	movs r2, #0xf0
	movs r4, #0x10
	bics r5, r2
	orrs r5, r4
	adds r4, r3, #0
	subs r4, #0x11
	strb r5, [r0, r4]
	adds r4, r3, #0
	subs r4, #0x10
	ldrb r4, [r0, r4]
	bics r4, r1
	movs r1, #0xf
	orrs r4, r1
	adds r1, r3, #0
	subs r1, #0x10
	strb r4, [r0, r1]
	adds r1, r3, #0
	subs r1, #0x10
	ldrb r4, [r0, r1]
	movs r1, #0x20
	bics r4, r2
	adds r2, r4, #0
	orrs r2, r1
	adds r1, r3, #0
	subs r1, #0x10
	strb r2, [r0, r1]
	adds r1, r3, #0
	subs r1, #0xe
	ldrh r2, [r0, r1]
	movs r1, #7
	bics r2, r1
	adds r1, r3, #0
	subs r1, #0xe
	strh r2, [r0, r1]
	adds r1, r3, #0
	subs r1, #0xe
	ldrh r2, [r0, r1]
	movs r1, #0x78
	bics r2, r1
	adds r1, r3, #0
	subs r1, #0xe
	strh r2, [r0, r1]
	adds r1, r3, #0
	subs r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _02232930 @ =0xFFFFFE7F
	ands r2, r1
	adds r1, r3, #0
	subs r1, #0xe
	strh r2, [r0, r1]
	adds r1, r3, #0
	subs r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _02232934 @ =0xFFFF81FF
	ands r2, r1
	adds r1, r3, #0
	subs r1, #0xe
	strh r2, [r0, r1]
	adds r1, r3, #0
	subs r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _02232938 @ =0xFFFF7FFF
	ands r2, r1
	adds r1, r3, #0
	subs r1, #0xe
	strh r2, [r0, r1]
	subs r3, #0xc
	str r0, [r0, r3]
	pop {r4, r5}
	bx lr
	.align 2, 0
_02232928: .4byte ov104_02232960
_0223292C: .4byte ov104_0223293C
_02232930: .4byte 0xFFFFFE7F
_02232934: .4byte 0xFFFF81FF
_02232938: .4byte 0xFFFF7FFF
	thumb_func_end ov104_02232830

	thumb_func_start ov104_0223293C
ov104_0223293C: @ 0x0223293C
	push {r3, lr}
	movs r2, #2
	mvns r2, r2
	cmp r1, r2
	bne _02232952
	movs r1, #3
	movs r2, #0xf
	movs r3, #4
	bl FUN_0200147C
	pop {r3, pc}
_02232952:
	movs r1, #1
	movs r2, #0xf
	movs r3, #2
	bl FUN_0200147C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223293C

	thumb_func_start ov104_02232960
ov104_02232960: @ 0x02232960
	ldr r3, _02232968 @ =FUN_02001504
	movs r1, #0x13
	bx r3
	nop
_02232968: .4byte FUN_02001504
	thumb_func_end ov104_02232960

	thumb_func_start ov104_0223296C
ov104_0223296C: @ 0x0223296C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _02232988
	adds r0, r5, #0
	adds r0, #0x94
	ldrb r0, [r0]
	adds r5, #0x94
	subs r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02232988:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _02232A46
	movs r0, #0x6d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001288
	adds r4, r0, #0
	movs r0, #0x6d
	movs r1, #0xb5
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, r0]
	adds r1, r5, r1
	bl FUN_020014D0
	movs r0, #0xb5
	lsls r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _022329BE
	ldr r0, _02232A48 @ =0x000005DC
	bl FUN_02005748
_022329BE:
	ldr r0, _02232A4C @ =0x021BF67C
	movs r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	bne _022329DA
	movs r1, #0x80
	tst r1, r0
	bne _022329DA
	movs r1, #0x20
	tst r1, r0
	bne _022329DA
	movs r1, #0x10
	tst r0, r1
	beq _022329E0
_022329DA:
	adds r0, r5, #0
	bl ov104_02232B2C
_022329E0:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _02232A50 @ =0x0000EEDD
	cmp r1, r0
	bne _022329F8
	adds r0, r5, #0
	movs r1, #0
	bl ov104_02232A58
	pop {r4, r5, r6, pc}
_022329F8:
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _02232A08
	adds r0, r0, #1
	cmp r4, r0
	beq _02232A46
	b _02232A30
_02232A08:
	adds r0, r5, #0
	adds r0, #0x97
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02232A46
	ldr r0, _02232A48 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r1, _02232A54 @ =0x0000FFFE
	ldr r0, [r0]
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #1
	bl ov104_02232A58
	pop {r4, r5, r6, pc}
_02232A30:
	ldr r0, _02232A48 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	movs r1, #1
	strh r4, [r0]
	adds r0, r5, #0
	bl ov104_02232A58
_02232A46:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02232A48: .4byte 0x000005DC
_02232A4C: .4byte 0x021BF67C
_02232A50: .4byte 0x0000EEDD
_02232A54: .4byte 0x0000FFFE
	thumb_func_end ov104_0223296C

	thumb_func_start ov104_02232A58
ov104_02232A58: @ 0x02232A58
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	cmp r1, #1
	bne _02232A66
	ldr r0, _02232AC0 @ =0x000005DC
	bl FUN_02005748
_02232A66:
	movs r0, #0x6d
	lsls r0, r0, #2
	movs r1, #0
	ldr r0, [r6, r0]
	adds r2, r1, #0
	bl FUN_02001384
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r6, #0
	adds r0, #8
	bl FUN_0201A8FC
	movs r4, #0
	adds r5, r6, #0
_02232A8C:
	ldr r0, [r5, #0x1c]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x1c
	blt _02232A8C
	adds r0, r6, #0
	adds r0, #0x97
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02232AB2
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0]
	bl FUN_0200B190
_02232AB2:
	ldr r0, [r6, #4]
	bl FUN_0200DA58
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
_02232AC0: .4byte 0x000005DC
	thumb_func_end ov104_02232A58

	thumb_func_start ov104_02232AC4
ov104_02232AC4: @ 0x02232AC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	str r1, [sp, #0xc]
	ldr r1, [r5]
	movs r0, #0x50
	ldr r1, [r1, #0x34]
	adds r7, r2, #0
	bl FUN_02023790
	ldr r1, [r5]
	adds r4, r0, #0
	ldr r1, [r1, #0x34]
	movs r0, #0x50
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [r5, #0x18]
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r2, r4, #0
	bl FUN_0200B1B8
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x18]
	movs r1, #1
	adds r2, r6, #0
	bl FUN_0201D738
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02232AC4

	thumb_func_start ov104_02232B2C
ov104_02232B2C: @ 0x02232B2C
	push {r4, lr}
	movs r1, #0x6d
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, r1, #6
	adds r1, r4, r1
	bl FUN_020014D0
	ldr r0, _02232B58 @ =0x000001BA
	ldrh r1, [r4, r0]
	adds r0, #0xe2
	lsls r1, r1, #1
	adds r1, r4, r1
	ldrh r1, [r1, r0]
	cmp r1, #0xff
	beq _02232B56
	adds r0, r4, #0
	movs r2, #0
	bl ov104_02232AC4
_02232B56:
	pop {r4, pc}
	.align 2, 0
_02232B58: .4byte 0x000001BA
	thumb_func_end ov104_02232B2C

	thumb_func_start ov104_02232B5C
ov104_02232B5C: @ 0x02232B5C
	push {r3, lr}
	cmp r0, #0
	beq _02232B72
	adds r1, r0, #0
	adds r1, #0xa0
	ldr r2, _02232B74 @ =0x0000FFFE
	ldr r1, [r1]
	strh r2, [r1]
	movs r1, #0
	bl ov104_02232A58
_02232B72:
	pop {r3, pc}
	.align 2, 0
_02232B74: .4byte 0x0000FFFE
	thumb_func_end ov104_02232B5C

	thumb_func_start ov104_02232B78
ov104_02232B78: @ 0x02232B78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r7, r0, #0
	ldr r0, [r5, #0xc]
	ldrh r4, [r0]
	ldrh r6, [r0, #2]
	ldrb r0, [r5]
	cmp r0, #0
	beq _02232B98
	cmp r0, #1
	beq _02232BA6
	cmp r0, #2
	beq _02232C4A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02232B98:
	ldr r0, _02232C78 @ =0x0000FD13
	cmp r4, r0
	bne _02232BA6
	movs r0, #2
	add sp, #8
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02232BA6:
	ldr r0, [r5, #0x14]
	movs r1, #5
	ldr r0, [r0]
	bl FUN_0222BF90
	cmp r0, #0
	bne _02232C72
	cmp r4, #0x20
	blo _02232BDE
	cmp r4, #0x26
	bhi _02232BDE
	movs r0, #2
	ldrsh r1, [r5, r0]
	subs r4, #0x20
	adds r1, r1, #1
	strh r1, [r5, #2]
	ldrsh r1, [r5, r0]
	ldr r0, _02232C7C @ =0x0223F9A4
	ldrb r0, [r0, r4]
	cmp r1, r0
	blt _02232C72
	movs r0, #0
	strh r0, [r5, #2]
	ldr r0, [r5, #0xc]
	add sp, #8
	adds r0, r0, #4
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02232BDE:
	cmp r4, #0x27
	blo _02232C16
	cmp r4, #0x29
	bhs _02232C16
	cmp r4, #0x27
	beq _02232BF0
	cmp r4, #0x28
	beq _02232BFC
	b _02232C08
_02232BF0:
	ldr r0, [r5, #0x14]
	movs r1, #1
	ldr r0, [r0, #4]
	bl FUN_0222D008
	b _02232C0C
_02232BFC:
	ldr r0, [r5, #0x14]
	movs r1, #0
	ldr r0, [r0, #4]
	bl FUN_0222D008
	b _02232C0C
_02232C08:
	bl FUN_02022974
_02232C0C:
	ldr r0, [r5, #0xc]
	add sp, #8
	adds r0, r0, #4
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02232C16:
	ldr r1, [r5, #0x14]
	ldrh r2, [r5, #4]
	ldr r1, [r1]
	add r0, sp, #0
	adds r3, r4, #0
	bl ov104_02232C80
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	bl FUN_0222D7C8
	ldrb r0, [r5, #1]
	adds r0, r0, #1
	strb r0, [r5, #1]
	ldrb r0, [r5, #1]
	cmp r0, r6
	blt _02232C42
	movs r0, #0
	strb r0, [r5, #1]
	ldr r0, [r5, #0xc]
	adds r0, r0, #4
	str r0, [r5, #0xc]
_02232C42:
	movs r0, #0
	add sp, #8
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02232C4A:
	ldr r0, [r5, #0x14]
	movs r1, #5
	ldr r0, [r0]
	bl FUN_0222BF90
	cmp r0, #0
	bne _02232C72
	ldr r1, [r5, #8]
	ldrb r0, [r1]
	subs r0, r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x14]
	movs r1, #0
	str r1, [r0, #0x38]
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r7, #0
	bl FUN_0200DA58
_02232C72:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232C78: .4byte 0x0000FD13
_02232C7C: .4byte 0x0223F9A4
	thumb_func_end ov104_02232B78

	thumb_func_start ov104_02232C80
ov104_02232C80: @ 0x02232C80
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	strb r2, [r4, #7]
	ldr r0, _02232CD8 @ =0x022419A2
	lsls r2, r3, #2
	ldrh r0, [r0, r2]
	strb r0, [r4, #6]
	ldr r0, _02232CDC @ =0x022419A0
	ldrh r0, [r0, r2]
	strh r0, [r4, #4]
	cmp r0, #2
	beq _02232CA2
	cmp r0, #3
	beq _02232CA2
	cmp r0, #6
	bne _02232CBC
_02232CA2:
	adds r0, r1, #0
	bl FUN_0222C0F0
	add r1, sp, #0
	strh r0, [r1, #4]
	lsrs r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	add sp, #8
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	pop {r4, pc}
_02232CBC:
	adds r0, r1, #0
	bl FUN_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	add sp, #8
	pop {r4, pc}
	nop
_02232CD8: .4byte 0x022419A2
_02232CDC: .4byte 0x022419A0
	thumb_func_end ov104_02232C80

	thumb_func_start ov104_02232CE0
ov104_02232CE0: @ 0x02232CE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	adds r5, r0, #0
	ldr r0, [r5, #4]
	str r1, [sp, #0x20]
	str r0, [sp, #0x2c]
	ldr r7, [r5, #0x34]
	ldr r6, [r5, #0x38]
	movs r0, #0x1b
	adds r1, r2, #0
	str r2, [sp, #0x24]
	adds r4, r3, #0
	bl FUN_02006C24
	str r0, [sp, #0x30]
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #0x70
	str r4, [sp, #8]
	bl FUN_0200CC3C
	ldr r0, [sp, #0x30]
	movs r1, #2
	str r0, [sp]
	movs r0, #0x6f
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	adds r2, r7, #0
	adds r3, r6, #0
	str r4, [sp, #0x14]
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x30]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #0x71
	str r4, [sp, #4]
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x30]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #0x72
	str r4, [sp, #4]
	bl FUN_0200CE54
	ldr r0, [sp, #0x30]
	bl FUN_02006CA8
	add r0, sp, #0x38
	movs r1, #0
	movs r2, #0x34
	blx FUN_020C4CF4
	ldr r0, [sp, #0x90]
	add r1, sp, #0x38
	strh r0, [r1]
	ldr r0, [sp, #0x94]
	strh r0, [r1, #2]
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldr r1, [sp, #0x98]
	str r0, [sp, #0x44]
	str r1, [sp, #0x40]
	movs r1, #1
	str r1, [sp, #0x48]
	ldr r1, [sp, #0x9c]
	str r0, [sp, #0x68]
	str r1, [sp, #0x64]
	add r1, sp, #0x38
_02232D8A:
	adds r0, r0, #1
	str r4, [r1, #0x14]
	adds r1, r1, #4
	cmp r0, #6
	blt _02232D8A
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x38
	bl FUN_0200CE6C
	adds r6, r0, #0
	bl FUN_0200D330
	movs r1, #0x32
	ldr r0, [sp, #0x24]
	lsls r1, r1, #6
	bl FUN_02018144
	str r0, [sp, #0x28]
	movs r1, #0
	ldr r0, [sp, #0x20]
	adds r2, r1, #0
	bl FUN_02074470
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	ldr r1, [sp, #0x20]
	add r0, sp, #0x6c
	movs r2, #2
	bl FUN_02075EF4
	movs r3, #0
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	add r1, sp, #0x38
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x24]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0x18]
	str r7, [sp, #0x1c]
	ldrh r0, [r1, #0x34]
	ldrh r1, [r1, #0x36]
	bl FUN_020136A4
	ldr r0, [r6]
	bl FUN_02021F98
	adds r7, r0, #0
	ldr r0, [sp, #0x28]
	movs r1, #4
	blx FUN_020C2C54
	movs r2, #0x32
	ldr r0, [sp, #0x28]
	ldr r1, [r7, #4]
	lsls r2, r2, #6
	blx FUN_020C02BC
	ldr r0, [r6]
	bl FUN_02021F9C
	movs r1, #1
	bl FUN_0201FAB4
	lsls r7, r0, #4
	movs r0, #2
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	add r2, sp, #0x38
	ldrh r1, [r2, #0x34]
	ldrh r2, [r2, #0x38]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x24]
	bl FUN_02003050
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	ble _02232E5E
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x80
	ldrh r0, [r0, #0x24]
	lsls r2, r7, #0x10
	movs r1, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_020039B0
_02232E5E:
	ldr r0, [sp, #0x28]
	bl FUN_020181C4
	ldr r0, _02232E7C @ =0x0000C350
	adds r5, #0x80
	subs r0, r4, r0
	lsls r4, r0, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02232E76
	bl FUN_02022974
_02232E76:
	str r6, [r5, r4]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02232E7C: .4byte 0x0000C350
	thumb_func_end ov104_02232CE0

	thumb_func_start ov104_02232E80
ov104_02232E80: @ 0x02232E80
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02232EBC @ =0x0000C350
	adds r6, r1, #0
	adds r4, r5, #0
	subs r0, r6, r0
	adds r4, #0x80
	lsls r7, r0, #2
	ldr r0, [r4, r7]
	bl FUN_0200D0F4
	movs r0, #0
	str r0, [r4, r7]
	ldr r0, [r5, #0x38]
	adds r1, r6, #0
	bl FUN_0200D070
	ldr r0, [r5, #0x38]
	adds r1, r6, #0
	bl FUN_0200D080
	ldr r0, [r5, #0x38]
	adds r1, r6, #0
	bl FUN_0200D090
	ldr r0, [r5, #0x38]
	adds r1, r6, #0
	bl FUN_0200D0A0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02232EBC: .4byte 0x0000C350
	thumb_func_end ov104_02232E80

	thumb_func_start ov104_02232EC0
ov104_02232EC0: @ 0x02232EC0
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	bl FUN_02079FD0
	movs r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x7d
	lsls r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x38]
	movs r1, #2
	bl FUN_0200CD7C
	bl FUN_02079FD8
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x7d
	lsls r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	movs r2, #0x13
	bl FUN_0200CE0C
	bl FUN_02079FE4
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x7d
	lsls r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	movs r2, #0x13
	bl FUN_0200CE3C
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_02232EC0

	thumb_func_start ov104_02232F28
ov104_02232F28: @ 0x02232F28
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x7d
	ldr r0, [r4, #0x38]
	lsls r1, r1, #4
	bl FUN_0200D090
	movs r1, #0x7d
	ldr r0, [r4, #0x38]
	lsls r1, r1, #4
	bl FUN_0200D0A0
	movs r1, #0x7d
	ldr r0, [r4, #0x38]
	lsls r1, r1, #4
	bl FUN_0200D080
	pop {r4, pc}
	thumb_func_end ov104_02232F28

	thumb_func_start ov104_02232F4C
ov104_02232F4C: @ 0x02232F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r4, r2, #0
	adds r5, r0, #0
	adds r7, r1, #0
	str r3, [sp, #0xc]
	cmp r4, #8
	blt _02232F60
	bl FUN_02022974
_02232F60:
	adds r0, r7, #0
	bl FUN_02079D80
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x7d
	lsls r0, r0, #4
	adds r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	movs r2, #0x13
	bl FUN_0200D888
	ldr r6, _02232FD0 @ =0x0223F9E0
	add r3, sp, #0x10
	movs r2, #6
_02232F88:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02232F88
	ldr r0, [r6]
	add r1, sp, #0x10
	str r0, [r3]
	ldr r0, [sp, #0x24]
	add r2, sp, #0x10
	adds r0, r0, r4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	strh r0, [r1]
	ldr r0, [sp, #0x58]
	strh r0, [r1, #2]
	movs r0, #0xc8
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl FUN_0200CE6C
	adds r4, r0, #0
	adds r0, r7, #0
	bl FUN_02079FC4
	adds r1, r0, #0
	ldr r0, [r4]
	bl FUN_02021F24
	adds r0, r4, #0
	bl FUN_0200D330
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_02232FD0: .4byte 0x0223F9E0
	thumb_func_end ov104_02232F4C

	thumb_func_start ov104_02232FD4
ov104_02232FD4: @ 0x02232FD4
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #0x7d
	lsls r1, r1, #4
	ldr r0, [r0, #0x38]
	adds r1, r2, r1
	bl FUN_0200D070
	adds r0, r4, #0
	bl FUN_0200D0F4
	pop {r4, pc}
	thumb_func_end ov104_02232FD4

	thumb_func_start ov104_02232FEC
ov104_02232FEC: @ 0x02232FEC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0x14
	movs r1, #0x5e
	bl FUN_02006C24
	adds r4, r0, #0
	bl FUN_02081934
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02233074 @ =0x000007D1
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x34]
	ldr r3, [r5, #0x38]
	bl FUN_0200CDC4
	bl FUN_02081938
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02233074 @ =0x000007D1
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl FUN_0200CE24
	bl FUN_0208193C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02233074 @ =0x000007D1
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl FUN_0200CE54
	bl FUN_02081930
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02233078 @ =0x000007D9
	movs r2, #0x14
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl FUN_0200D888
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_02233074: .4byte 0x000007D1
_02233078: .4byte 0x000007D9
	thumb_func_end ov104_02232FEC

	thumb_func_start ov104_0223307C
ov104_0223307C: @ 0x0223307C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	ldr r1, _022330A4 @ =0x000007D9
	bl FUN_0200D070
	ldr r0, [r4, #0x38]
	ldr r1, _022330A8 @ =0x000007D1
	bl FUN_0200D090
	ldr r0, [r4, #0x38]
	ldr r1, _022330A8 @ =0x000007D1
	bl FUN_0200D0A0
	ldr r0, [r4, #0x38]
	ldr r1, _022330A8 @ =0x000007D1
	bl FUN_0200D080
	pop {r4, pc}
	nop
_022330A4: .4byte 0x000007D9
_022330A8: .4byte 0x000007D1
	thumb_func_end ov104_0223307C

	thumb_func_start ov104_022330AC
ov104_022330AC: @ 0x022330AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r5, _022330EC @ =0x0223F9AC
	adds r6, r2, #0
	adds r3, r0, #0
	adds r7, r1, #0
	add r4, sp, #0
	movs r2, #6
_022330BC:
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	subs r2, r2, #1
	bne _022330BC
	ldr r0, [r5]
	add r2, sp, #0
	str r0, [r4]
	add r0, sp, #0
	strh r7, [r0]
	strh r6, [r0, #2]
	movs r0, #0x4b
	lsls r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [r3, #0x34]
	ldr r1, [r3, #0x38]
	bl FUN_0200CE6C
	adds r4, r0, #0
	bl FUN_0200D330
	adds r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_022330EC: .4byte 0x0223F9AC
	thumb_func_end ov104_022330AC

	thumb_func_start ov104_022330F0
ov104_022330F0: @ 0x022330F0
	ldr r3, _022330F8 @ =FUN_0200D0F4
	adds r0, r1, #0
	bx r3
	nop
_022330F8: .4byte FUN_0200D0F4
	thumb_func_end ov104_022330F0

	thumb_func_start ov104_022330FC
ov104_022330FC: @ 0x022330FC
	ldr r3, _02233104 @ =ov104_0223310C
	ldr r2, _02233108 @ =0x00000266
	bx r3
	nop
_02233104: .4byte ov104_0223310C
_02233108: .4byte 0x00000266
	thumb_func_end ov104_022330FC

	thumb_func_start ov104_0223310C
ov104_0223310C: @ 0x0223310C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	ldr r0, [r0]
	adds r6, r2, #0
	bl FUN_0209B970
	ldrh r2, [r4]
	ldr r1, _0223317C @ =0x0000FFFF
	cmp r2, r1
	bne _0223314C
	movs r0, #1
	movs r1, #0x1a
	adds r2, r6, #0
	movs r3, #0x20
	bl FUN_0200B144
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	ldrh r2, [r4, #2]
	ldr r0, [r5]
	adds r1, r6, #0
	movs r3, #1
	bl ov104_02231F74
	adds r0, r6, #0
	bl FUN_0200B190
	b _02233170
_0223314C:
	ldr r0, [r0, #8]
	bl FUN_02025E44
	bl FUN_02027AC0
	adds r1, r0, #0
	ldrh r0, [r4, #4]
	str r0, [sp]
	movs r0, #6
	ldrsh r0, [r4, r0]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	ldr r0, [r5]
	bl ov104_022320B4
_02233170:
	ldr r1, _02233180 @ =ov104_02233184
	adds r0, r5, #0
	bl ov104_0222E974
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223317C: .4byte 0x0000FFFF
_02233180: .4byte ov104_02233184
	thumb_func_end ov104_0223310C

	thumb_func_start ov104_02233184
ov104_02233184: @ 0x02233184
	push {r3, lr}
	ldr r0, [r0]
	adds r0, #0x50
	ldrb r0, [r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _02233198
	movs r0, #1
	pop {r3, pc}
_02233198:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02233184

	thumb_func_start ov104_0223319C
ov104_0223319C: @ 0x0223319C
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #8
	ldrsb r2, [r4, r1]
	adds r2, r2, #1
	strb r2, [r4, #8]
	ldrsb r2, [r4, r1]
	movs r1, #9
	ldrsb r1, [r4, r1]
	cmp r2, r1
	ble _022331E4
	movs r1, #0
	strb r1, [r4, #8]
	movs r1, #0xa
	ldrsb r2, [r4, r1]
	subs r2, r2, #1
	strb r2, [r4, #0xa]
	ldrsb r1, [r4, r1]
	cmp r1, #0
	bge _022331D4
	bl FUN_0200DA58
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	pop {r4, pc}
_022331D4:
	movs r0, #4
	ldrsh r0, [r4, r0]
	rsbs r0, r0, #0
	strh r0, [r4, #4]
	movs r0, #6
	ldrsh r0, [r4, r0]
	rsbs r0, r0, #0
	strh r0, [r4, #6]
_022331E4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223319C

	thumb_func_start ov104_022331E8
ov104_022331E8: @ 0x022331E8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r1, #8
	adds r7, r0, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0223326E
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _02233252
	ldr r2, _02233274 @ =0x04000048
	movs r1, #0x3f
	ldrh r3, [r2]
	movs r0, #0xf
	movs r5, #0x20
	bics r3, r1
	orrs r0, r3
	orrs r0, r5
	strh r0, [r2]
	ldrh r3, [r2, #2]
	movs r0, #0x1f
	bics r3, r1
	orrs r0, r3
	orrs r0, r5
	strh r0, [r2, #2]
	ldrb r3, [r4, #4]
	ldrb r1, [r4, #7]
	ldrb r0, [r4, #5]
	lsls r6, r3, #8
	movs r3, #0xff
	lsls r3, r3, #8
	ands r6, r3
	ldrb r3, [r4, #6]
	orrs r6, r3
	adds r3, r2, #0
	subs r3, #8
	strh r6, [r3]
	lsls r3, r0, #8
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r3
	orrs r1, r0
	subs r0, r2, #4
	strh r1, [r0]
	lsls r2, r5, #0x15
	ldr r1, [r2]
	ldr r0, _02233278 @ =0xFFFF1FFF
	ands r1, r0
	lsls r0, r5, #8
	orrs r0, r1
	str r0, [r2]
	b _0223325C
_02233252:
	lsls r2, r1, #0x17
	ldr r1, [r2]
	ldr r0, _02233278 @ =0xFFFF1FFF
	ands r0, r1
	str r0, [r2]
_0223325C:
	adds r0, r7, #0
	bl FUN_0200DA58
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	pop {r3, r4, r5, r6, r7, pc}
_0223326E:
	subs r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233274: .4byte 0x04000048
_02233278: .4byte 0xFFFF1FFF
	thumb_func_end ov104_022331E8

	thumb_func_start ov104_0223327C
ov104_0223327C: @ 0x0223327C
	adds r2, r0, #0
	adds r2, #0x97
	ldrb r3, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x40
	lsls r1, r1, #0x1f
	bics r3, r2
	lsrs r1, r1, #0x19
	orrs r1, r3
	adds r0, #0x97
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223327C

	thumb_func_start ov104_02233298
ov104_02233298: @ 0x02233298
	adds r2, r0, #0
	adds r2, #0x97
	ldrb r3, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x80
	lsls r1, r1, #0x1f
	bics r3, r2
	lsrs r1, r1, #0x18
	orrs r1, r3
	adds r0, #0x97
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02233298

	thumb_func_start ov104_022332B4
ov104_022332B4: @ 0x022332B4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	lsls r2, r4, #0x18
	lsls r3, r6, #0x18
	ldr r0, [r0, #8]
	adds r1, r7, #0
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl ov104_022339B4
	adds r1, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B980
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022332B4

	thumb_func_start ov104_022332F4
ov104_022332F4: @ 0x022332F4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r4, #0
	bl ov104_02233B98
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022332F4

	thumb_func_start ov104_02233310
ov104_02233310: @ 0x02233310
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_022340D0
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02233310

	thumb_func_start ov104_02233324
ov104_02233324: @ 0x02233324
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r7, r0, #0
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r5, r0, #0
	movs r0, #0xb
	movs r1, #0x24
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x24
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r7, #8]
	movs r3, #0
	str r0, [r4]
	ldrb r0, [r5, #4]
	adds r2, r4, #0
	strb r0, [r4, #4]
	ldrb r0, [r5, #5]
	strb r0, [r4, #5]
	ldr r0, _02233380 @ =0x000004D4
	strb r3, [r4, #6]
	ldr r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r4, #8]
	ldr r0, [r5, r0]
	ldr r1, _02233384 @ =0x0223FA14
	str r0, [r4, #0xc]
	ldr r0, _02233388 @ =ov104_02233478
	str r5, [r4, #0x1c]
	str r0, [sp]
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0209B988
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233380: .4byte 0x000004D4
_02233384: .4byte 0x0223FA14
_02233388: .4byte ov104_02233478
	thumb_func_end ov104_02233324

	thumb_func_start ov104_0223338C
ov104_0223338C: @ 0x0223338C
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	ldr r0, _022333B0 @ =0x000004FC
	ldr r5, [r4, r0]
	ldr r0, [r5, #0x14]
	bl FUN_02052868
	str r0, [r4, #0x14]
	adds r0, r5, #0
	bl FUN_020520A4
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022333B0: .4byte 0x000004FC
	thumb_func_end ov104_0223338C

	thumb_func_start ov104_022333B4
ov104_022333B4: @ 0x022333B4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r6, #0
	adds r4, r0, #0
	bl ov104_0223ABA0
	adds r2, r0, #0
	ldr r0, _022333F0 @ =0x000004FC
	movs r3, #0
	str r2, [r4, r0]
	str r3, [sp]
	ldr r0, [r5]
	ldr r1, _022333F4 @ =0x020EA358
	ldr r0, [r0]
	bl FUN_0209B988
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022333F0: .4byte 0x000004FC
_022333F4: .4byte 0x020EA358
	thumb_func_end ov104_022333B4

	thumb_func_start ov104_022333F8
ov104_022333F8: @ 0x022333F8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r7, r0, #0
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _02233468 @ =0x000004DC
	adds r3, r5, #0
	adds r1, r2, #0
_02233418:
	adds r2, r2, #1
	strh r1, [r3, r0]
	adds r3, r3, #2
	cmp r2, #6
	blt _02233418
	movs r0, #0xb
	movs r1, #0x24
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x24
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r7, #8]
	adds r2, r4, #0
	str r0, [r4]
	ldrb r0, [r5, #4]
	movs r3, #0
	strb r0, [r4, #4]
	ldrb r0, [r5, #5]
	strb r0, [r4, #5]
	movs r0, #1
	strb r0, [r4, #6]
	ldr r0, _0223346C @ =0x000004D4
	ldr r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r4, #8]
	ldr r0, [r5, r0]
	ldr r1, _02233470 @ =0x0223FA24
	str r0, [r4, #0xc]
	ldr r0, _02233474 @ =ov104_02233478
	str r5, [r4, #0x1c]
	str r0, [sp]
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0209B988
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233468: .4byte 0x000004DC
_0223346C: .4byte 0x000004D4
_02233470: .4byte 0x0223FA24
_02233474: .4byte ov104_02233478
	thumb_func_end ov104_022333F8

	thumb_func_start ov104_02233478
ov104_02233478: @ 0x02233478
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	adds r1, r4, #0
	bl ov104_0223410C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov104_02233478

	thumb_func_start ov104_0223348C
ov104_0223348C: @ 0x0223348C
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_0223449C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223348C

	thumb_func_start ov104_022334A0
ov104_022334A0: @ 0x022334A0
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_02234570
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022334A0

	thumb_func_start ov104_022334B4
ov104_022334B4: @ 0x022334B4
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_022346A4
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022334B4

	thumb_func_start ov104_022334C8
ov104_022334C8: @ 0x022334C8
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_0223470C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022334C8

	thumb_func_start ov104_022334DC
ov104_022334DC: @ 0x022334DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	adds r6, r0, #0
	ldr r2, [r6, #0x1c]
	adds r1, r2, #1
	str r1, [r6, #0x1c]
	ldrb r7, [r2]
	adds r2, r1, #1
	str r2, [r6, #0x1c]
	ldrb r5, [r1]
	adds r1, r2, #1
	str r1, [r6, #0x1c]
	ldrb r1, [r2]
	str r1, [sp, #0x1c]
	bl ov104_0222FBE4
	str r0, [sp, #0x18]
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	ldr r0, [r6]
	bl ov104_0222E924
	str r0, [sp, #0x20]
	cmp r7, #0x29
	bhi _0223359E
	adds r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02233520: @ jump table
	.2byte _02233574 - _02233520 - 2 @ case 0
	.2byte _02233578 - _02233520 - 2 @ case 1
	.2byte _0223357C - _02233520 - 2 @ case 2
	.2byte _02233580 - _02233520 - 2 @ case 3
	.2byte _0223358E - _02233520 - 2 @ case 4
	.2byte _02233596 - _02233520 - 2 @ case 5
	.2byte _02233892 - _02233520 - 2 @ case 6
	.2byte _022335A6 - _02233520 - 2 @ case 7
	.2byte _02233892 - _02233520 - 2 @ case 8
	.2byte _022335AE - _02233520 - 2 @ case 9
	.2byte _022335BC - _02233520 - 2 @ case 10
	.2byte _02233892 - _02233520 - 2 @ case 11
	.2byte _02233892 - _02233520 - 2 @ case 12
	.2byte _02233892 - _02233520 - 2 @ case 13
	.2byte _022335C6 - _02233520 - 2 @ case 14
	.2byte _022335D2 - _02233520 - 2 @ case 15
	.2byte _022335E8 - _02233520 - 2 @ case 16
	.2byte _02233600 - _02233520 - 2 @ case 17
	.2byte _02233638 - _02233520 - 2 @ case 18
	.2byte _022336F8 - _02233520 - 2 @ case 19
	.2byte _02233704 - _02233520 - 2 @ case 20
	.2byte _02233712 - _02233520 - 2 @ case 21
	.2byte _0223371A - _02233520 - 2 @ case 22
	.2byte _02233722 - _02233520 - 2 @ case 23
	.2byte _0223372E - _02233520 - 2 @ case 24
	.2byte _02233892 - _02233520 - 2 @ case 25
	.2byte _02233738 - _02233520 - 2 @ case 26
	.2byte _02233742 - _02233520 - 2 @ case 27
	.2byte _0223374A - _02233520 - 2 @ case 28
	.2byte _02233756 - _02233520 - 2 @ case 29
	.2byte _0223375E - _02233520 - 2 @ case 30
	.2byte _02233782 - _02233520 - 2 @ case 31
	.2byte _0223379A - _02233520 - 2 @ case 32
	.2byte _022337B2 - _02233520 - 2 @ case 33
	.2byte _022337E0 - _02233520 - 2 @ case 34
	.2byte _02233810 - _02233520 - 2 @ case 35
	.2byte _0223381C - _02233520 - 2 @ case 36
	.2byte _02233824 - _02233520 - 2 @ case 37
	.2byte _0223384C - _02233520 - 2 @ case 38
	.2byte _02233854 - _02233520 - 2 @ case 39
	.2byte _02233880 - _02233520 - 2 @ case 40
	.2byte _02233888 - _02233520 - 2 @ case 41
_02233574:
	strb r5, [r4, #7]
	b _02233892
_02233578:
	strb r5, [r4, #5]
	b _02233892
_0223357C:
	strb r5, [r4, #4]
	b _02233892
_02233580:
	lsls r0, r5, #1
	adds r1, r4, r0
	ldr r0, _02233898 @ =0x000004DC
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_0223358E:
	ldrh r1, [r4, #0xc]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_02233596:
	ldrh r1, [r4, #0xc]
	ldr r0, _0223389C @ =0x0000270F
	cmp r1, r0
	blo _022335A0
_0223359E:
	b _02233892
_022335A0:
	adds r0, r1, #1
	strh r0, [r4, #0xc]
	b _02233892
_022335A6:
	movs r0, #0
	blx FUN_020C3EE4
	b _02233892
_022335AE:
	ldr r0, _022338A0 @ =0x000004F4
	ldr r0, [r4, r0]
	bl FUN_0202FF68
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_022335BC:
	adds r0, r4, #0
	movs r1, #2
	bl ov104_02234148
	b _02233892
_022335C6:
	adds r0, r4, #0
	bl ov104_02234430
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_022335D2:
	movs r0, #0x38
	muls r0, r5, r0
	adds r1, r4, r0
	movs r0, #0x3f
	lsls r0, r0, #4
	ldrh r0, [r1, r0]
	lsls r0, r0, #0x15
	lsrs r1, r0, #0x15
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_022335E8:
	movs r0, #0x38
	muls r0, r5, r0
	adds r1, r4, r0
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xfd
	lsls r0, r0, #2
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_02233600:
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r0, #0x38
	muls r0, r5, r0
	adds r0, r1, r0
	adds r1, r6, #0
	bl ov104_0222DF40
	adds r0, r6, #0
	movs r1, #0xb1
	movs r2, #0
	bl FUN_02074470
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	adds r0, r6, #0
	bl FUN_020181C4
	b _02233892
_02233638:
	ldrb r0, [r4, #4]
	movs r1, #1
	bl ov104_0223AA74
	movs r1, #0
	str r0, [sp, #0x14]
	add r2, sp, #0x24
	adds r0, r1, #0
_02233648:
	adds r1, r1, #1
	stm r2!, {r0}
	cmp r1, #0x12
	blt _02233648
	movs r0, #0xb
	bl FUN_02073C74
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _022336BE
	movs r0, #0x3f
	lsls r0, r0, #4
	adds r6, r4, r0
_02233668:
	adds r0, r4, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov104_0222DF40
	adds r0, r5, #0
	movs r1, #0xb1
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0xb2
	movs r2, #0
	bl FUN_02074470
	cmp r7, r0
	bne _02233694
	movs r0, #0xff
_02233694:
	lsls r1, r7, #2
	add r2, sp, #0x24
	ldr r2, [r2, r1]
	adds r3, r2, #1
	add r2, sp, #0x24
	str r3, [r2, r1]
	cmp r0, #0xff
	beq _022336B0
	lsls r0, r0, #2
	adds r1, r2, #0
	ldr r1, [r1, r0]
	adds r2, r1, #1
	add r1, sp, #0x24
	str r2, [r1, r0]
_022336B0:
	ldr r0, [sp, #0x10]
	adds r6, #0x38
	adds r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02233668
_022336BE:
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0
	add r4, sp, #0x24
	adds r5, r0, #0
	adds r3, r4, #0
_022336CC:
	lsls r1, r0, #2
	ldr r2, [r3, r1]
	ldr r1, [r4]
	cmp r2, r1
	bge _022336D8
	adds r0, r5, #0
_022336D8:
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #0x12
	blt _022336CC
	lsls r2, r0, #2
	add r1, sp, #0x24
	ldr r1, [r1, r2]
	cmp r1, #1
	bgt _022336F2
	ldr r0, [sp, #0x18]
	movs r1, #0xff
	strh r1, [r0]
	b _02233892
_022336F2:
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_022336F8:
	adds r0, r4, #0
	bl ov104_0223AF34
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_02233704:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov104_02234440
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_02233712:
	adds r0, r4, #0
	bl ov104_02234474
	b _02233892
_0223371A:
	adds r0, r4, #0
	bl ov104_02234480
	b _02233892
_02233722:
	adds r0, r4, #0
	bl ov104_0223443C
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_0223372E:
	ldr r0, _022338A4 @ =0x0000057C
	ldrb r1, [r4, r0]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_02233738:
	ldr r0, _022338A8 @ =0x0000057D
	ldrb r1, [r4, r0]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_02233742:
	adds r0, r4, #0
	bl FUN_0209BA80
	b _02233892
_0223374A:
	ldrb r0, [r4, #4]
	bl ov104_0223AED4
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_02233756:
	ldrb r1, [r4, #4]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_0223375E:
	movs r0, #0x1a
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	movs r1, #3
	ldr r0, [sp, #0x20]
	str r5, [sp, #8]
	ldr r0, [r0]
	adds r2, r1, #0
	movs r3, #0xa
	bl FUN_02019E2C
	ldr r0, [sp, #0x20]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	b _02233892
_02233782:
	ldr r0, [r6]
	bl ov104_0222E924
	adds r1, r0, #0
	ldr r0, _022338AC @ =ov104_022338B4
	movs r2, #5
	bl FUN_0200D9E8
	movs r1, #5
	lsls r1, r1, #8
	str r0, [r4, r1]
	b _02233892
_0223379A:
	movs r0, #5
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02233892
	bl FUN_0200DA58
	movs r0, #5
	movs r1, #0
	lsls r0, r0, #8
	str r1, [r4, r0]
	b _02233892
_022337B2:
	ldrb r1, [r4, #6]
	adds r0, r4, #0
	adds r0, #0x34
	lsls r1, r1, #1
	adds r1, r4, r1
	ldrh r1, [r1, #0x18]
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222E278
	ldrb r1, [r4, #6]
	movs r0, #0x51
	lsls r0, r0, #2
	adds r1, r1, #7
	lsls r1, r1, #1
	adds r1, r4, r1
	ldrh r1, [r1, #0x18]
	adds r0, r4, r0
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222E278
	b _02233892
_022337E0:
	ldrb r0, [r4, #4]
	bl ov104_0223AA50
	adds r7, r0, #0
	movs r5, #0
	cmp r7, #0
	ble _02233892
_022337EE:
	ldr r0, _022338B0 @ =0x000004D4
	adds r1, r5, #0
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r6]
	adds r1, r5, #0
	ldr r0, [r0, #0x44]
	bl FUN_0200B538
	adds r5, r5, #1
	cmp r5, r7
	blt _022337EE
	b _02233892
_02233810:
	adds r0, r4, #0
	bl ov104_022347F8
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_0223381C:
	adds r0, r4, #0
	bl ov104_02234790
	b _02233892
_02233824:
	ldr r0, [sp, #0x18]
	movs r1, #0
	strh r1, [r0]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02233892
	ldrh r0, [r4, #0xc]
	adds r0, r0, #1
	cmp r0, #0x15
	bne _02233840
	ldr r0, [sp, #0x18]
	movs r1, #1
	strh r1, [r0]
	b _02233892
_02233840:
	cmp r0, #0x31
	bne _02233892
	ldr r0, [sp, #0x18]
	movs r1, #2
	strh r1, [r0]
	b _02233892
_0223384C:
	adds r0, r4, #0
	bl ov104_0223AE30
	b _02233892
_02233854:
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	movs r3, #0x3f
	lsls r3, r3, #4
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	adds r1, r3, #0
	adds r2, r3, #0
	str r0, [sp, #0xc]
	adds r0, r4, r3
	subs r1, #0x1e
	subs r2, #0x16
	subs r3, #0x10
	adds r1, r4, r1
	adds r2, r4, r2
	adds r3, r4, r3
	bl ov104_0222E330
	b _02233892
_02233880:
	adds r0, r4, #0
	bl ov104_0223ADB0
	b _02233892
_02233888:
	ldrb r1, [r4, #0xb]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	movs r0, #1
	strb r0, [r4, #0xb]
_02233892:
	movs r0, #0
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02233898: .4byte 0x000004DC
_0223389C: .4byte 0x0000270F
_022338A0: .4byte 0x000004F4
_022338A4: .4byte 0x0000057C
_022338A8: .4byte 0x0000057D
_022338AC: .4byte ov104_022338B4
_022338B0: .4byte 0x000004D4
	thumb_func_end ov104_022334DC

	thumb_func_start ov104_022338B4
ov104_022338B4: @ 0x022338B4
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	movs r1, #2
	bl FUN_020192F8
	cmp r0, #0xff
	ldr r0, [r4]
	blt _022338D2
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_0201C63C
	pop {r4, pc}
_022338D2:
	movs r1, #2
	movs r2, #4
	movs r3, #1
	bl FUN_0201C63C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_022338B4

	thumb_func_start ov104_022338E0
ov104_022338E0: @ 0x022338E0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r0, [r0, #0x14]
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_022338E0

	thumb_func_start ov104_022338FC
ov104_022338FC: @ 0x022338FC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_022347A4
	strh r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022338FC

	thumb_func_start ov104_0223392C
ov104_0223392C: @ 0x0223392C
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _02233948 @ =ov104_0223394C
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_02233948: .4byte ov104_0223394C
	thumb_func_end ov104_0223392C

	thumb_func_start ov104_0223394C
ov104_0223394C: @ 0x0223394C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC8C
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r1, _02233978 @ =0x00000702
	ldrb r2, [r0, r1]
	cmp r2, #2
	blo _02233972
	movs r2, #0
	strb r2, [r0, r1]
	movs r0, #1
	pop {r4, pc}
_02233972:
	movs r0, #0
	pop {r4, pc}
	nop
_02233978: .4byte 0x00000702
	thumb_func_end ov104_0223394C

	thumb_func_start ov104_0223397C
ov104_0223397C: @ 0x0223397C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r1, [r5, #0x1c]
	adds r0, r1, #1
	str r0, [r5, #0x1c]
	ldr r0, [r5]
	ldrb r4, [r1]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r2, r0, #0
	bne _022339A0
	movs r0, #0
	pop {r3, r4, r5, pc}
_022339A0:
	lsls r1, r4, #4
	adds r1, r4, r1
	adds r2, #0x4c
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r1, r2, r1
	bl ov104_022330FC
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223397C

	thumb_func_start ov104_022339B4
ov104_022339B4: @ 0x022339B4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r4, r0, #0
	ldr r1, _02233B80 @ =0x00000708
	movs r0, #0xb
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	ldr r1, _02233B84 @ =0x02241AC0
	ldr r2, _02233B80 @ =0x00000708
	str r0, [r1]
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r5, [r0]
	adds r0, r4, #0
	bl FUN_0202FF58
	ldr r1, _02233B88 @ =0x000004F4
	str r0, [r5, r1]
	adds r0, r1, #4
	str r4, [r5, r0]
	movs r0, #0xb
	ldr r1, _02233B84 @ =0x02241AC0
	str r0, [r5]
	ldr r5, [r1]
	bl FUN_02079FF4
	ldr r1, _02233B8C @ =0x000004D4
	str r0, [r5, r1]
	movs r0, #0xb
	bl FUN_02079FF4
	ldr r1, _02233B90 @ =0x000004D8
	str r0, [r5, r1]
	adds r1, #0x1c
	adds r0, r4, #0
	ldr r5, [r5, r1]
	bl FUN_020300F4
	adds r4, r0, #0
	cmp r6, #0
	bne _02233AC6
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r1, [r0]
	strb r7, [r1, #4]
	ldr r0, [sp]
	strb r0, [r1, #5]
	movs r0, #0
	strb r0, [r1, #6]
	adds r0, r5, #0
	bl FUN_0202FF4C
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r2, [r0]
	ldrb r3, [r2, #4]
	cmp r3, #3
	bne _02233A3A
	ldr r0, _02233B94 @ =0x000004F8
	ldr r0, [r2, r0]
	bl FUN_020507E4
	bl FUN_0206B6FC
	b _02233A4E
_02233A3A:
	ldrb r2, [r2, #5]
	adds r0, r4, #0
	movs r1, #0xa
	lsls r2, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_020300E0
_02233A4E:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _02233AB6
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r5, [r0]
	ldr r0, _02233B94 @ =0x000004F8
	ldr r0, [r5, r0]
	bl FUN_0203068C
	adds r4, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E430
	adds r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E430
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	strh r0, [r5, #0xc]
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r4, [r0]
	ldr r0, _02233B94 @ =0x000004F8
	ldr r0, [r4, r0]
	bl FUN_0203068C
	adds r6, r0, #0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	bl FUN_0205E488
	adds r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E488
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02030698
	b _02233ABE
_02233AB6:
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r4, [r0]
	movs r0, #0
	strh r0, [r4, #0xc]
_02233ABE:
	strh r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x10]
	b _02233B54
_02233AC6:
	movs r2, #0
	adds r0, r5, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02030030
	ldr r1, _02233B84 @ =0x02241AC0
	ldr r4, [r1]
	movs r1, #0
	strb r0, [r4, #4]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02030030
	movs r2, #0
	strb r0, [r4, #5]
	adds r0, r5, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02030030
	strb r0, [r4, #6]
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r5, [r0]
	ldr r0, _02233B94 @ =0x000004F8
	ldr r0, [r5, r0]
	bl FUN_0203068C
	adds r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E430
	adds r7, r0, #0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	bl FUN_0205E430
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02030698
	strh r0, [r5, #0xc]
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r4, [r0]
	ldr r0, _02233B94 @ =0x000004F8
	ldr r0, [r4, r0]
	bl FUN_0203068C
	adds r6, r0, #0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	bl FUN_0205E488
	adds r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E488
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02030698
	strh r0, [r4, #8]
_02233B54:
	ldr r0, _02233B84 @ =0x02241AC0
	movs r1, #7
	ldr r4, [r0]
	ldrh r0, [r4, #0xc]
	blx FUN_020E1F6C
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #4]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02233B78
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r1, [r0]
	ldr r0, _02233B94 @ =0x000004F8
	ldr r0, [r1, r0]
	bl ov104_0222E630
_02233B78:
	ldr r0, _02233B84 @ =0x02241AC0
	ldr r0, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233B80: .4byte 0x00000708
_02233B84: .4byte 0x02241AC0
_02233B88: .4byte 0x000004F4
_02233B8C: .4byte 0x000004D4
_02233B90: .4byte 0x000004D8
_02233B94: .4byte 0x000004F8
	thumb_func_end ov104_022339B4

	thumb_func_start ov104_02233B98
ov104_02233B98: @ 0x02233B98
	push {r3, lr}
	cmp r1, #0
	bne _02233BA4
	bl ov104_02233BAC
	pop {r3, pc}
_02233BA4:
	bl ov104_02233F1C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02233B98

	thumb_func_start ov104_02233BAC
ov104_02233BAC: @ 0x02233BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xd8
	adds r4, r0, #0
	bl ov104_0223AF34
	adds r1, r0, #0
	adds r2, r4, #0
	ldrb r0, [r4, #4]
	adds r2, #0x18
	movs r3, #0xe
	bl ov104_0223A860
	adds r0, r4, #0
	bl ov104_0223AF34
	movs r3, #0x26
	lsls r3, r3, #4
	adds r1, r4, r3
	str r1, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	adds r1, #8
	adds r1, r4, r1
	str r1, [sp, #4]
	ldrh r1, [r4, #8]
	subs r2, #0xc
	adds r3, #0x20
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrb r1, [r4, #5]
	adds r2, r4, r2
	adds r3, r4, r3
	bl ov104_0223AAA0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl ov104_02233D80
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl ov104_02233D80
	movs r0, #6
	str r0, [sp, #0x18]
	movs r0, #0
	mov ip, r0
	adds r3, r4, #0
	add r5, sp, #0x34
_02233C16:
	movs r0, #0xa
	lsls r0, r0, #6
	adds r2, r3, r0
	adds r7, r5, #0
	movs r6, #7
_02233C20:
	ldm r2!, {r0, r1}
	stm r7!, {r0, r1}
	subs r6, r6, #1
	bne _02233C20
	mov r0, ip
	adds r0, r0, #1
	adds r3, #0x38
	adds r5, #0x38
	mov ip, r0
	cmp r0, #6
	blt _02233C16
	ldrb r0, [r4, #4]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02233CE4
	movs r0, #0xa
	lsls r0, r0, #6
	ldr r7, _02233D70 @ =0x00000282
	movs r5, #0
	adds r0, r4, r0
	add r1, sp, #0x28
	adds r2, r4, #0
	add r3, sp, #0x1c
_02233C50:
	ldrh r6, [r0]
	adds r5, r5, #1
	adds r0, #0x38
	lsls r6, r6, #0x15
	lsrs r6, r6, #0x15
	strh r6, [r1]
	ldrh r6, [r2, r7]
	adds r1, r1, #2
	adds r2, #0x38
	strh r6, [r3]
	adds r3, r3, #2
	cmp r5, #6
	blt _02233C50
	adds r0, r4, #0
	bl ov104_0223AF34
	movs r3, #0x59
	lsls r3, r3, #4
	adds r1, r4, r3
	str r1, [sp]
	adds r1, r3, #0
	adds r1, #8
	adds r1, r4, r1
	str r1, [sp, #4]
	adds r1, r3, #0
	adds r2, r3, #0
	subs r1, #0x10
	ldrh r1, [r4, r1]
	subs r2, #0xc
	adds r3, #0x20
	str r1, [sp, #8]
	add r1, sp, #0x28
	str r1, [sp, #0xc]
	add r1, sp, #0x1c
	str r1, [sp, #0x10]
	ldrb r1, [r4, #5]
	adds r2, r4, r2
	adds r3, r4, r3
	bl ov104_0223AAA0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	bl ov104_02233D80
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	bl ov104_02233D80
	movs r0, #0xc
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r5, r4, #0
	add r6, sp, #0x34
_02233CC0:
	movs r0, #0x5b
	lsls r0, r0, #4
	adds r3, r5, r0
	movs r0, #0x15
	lsls r0, r0, #4
	adds r2, r6, r0
	movs r7, #7
_02233CCE:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r7, r7, #1
	bne _02233CCE
	ldr r0, [sp, #0x14]
	adds r5, #0x38
	adds r0, r0, #1
	adds r6, #0x38
	str r0, [sp, #0x14]
	cmp r0, #6
	blt _02233CC0
_02233CE4:
	ldrb r0, [r4, #4]
	movs r1, #1
	bl ov104_0223AA74
	ldr r2, _02233D74 @ =0x000003D2
	add r3, sp, #0x34
	adds r1, r4, r2
	str r1, [sp]
	adds r1, r2, #0
	adds r1, #0x1e
	adds r1, r4, r1
	str r1, [sp, #4]
	adds r1, r2, #0
	adds r1, #8
	adds r1, r4, r1
	adds r2, #0xe
	str r1, [sp, #8]
	adds r1, r4, r2
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r1, [sp, #0x10]
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #5]
	lsls r1, r1, #1
	adds r1, r4, r1
	ldrh r1, [r1, #0x18]
	bl ov104_0223AB0C
	movs r0, #0xa
	lsls r0, r0, #6
	movs r7, #0
	adds r6, r4, r0
_02233D24:
	movs r0, #0xb
	bl FUN_02073C74
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov104_0222DF40
	ldr r0, _02233D78 @ =0x000004F8
	ldr r1, _02233D7C @ =0x000004D4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	adds r2, r5, #0
	bl ov104_0222E1C0
	adds r0, r5, #0
	bl FUN_020181C4
	adds r7, r7, #1
	adds r6, #0x38
	cmp r7, #6
	blt _02233D24
	ldr r6, _02233D7C @ =0x000004D4
	movs r5, #0
_02233D5C:
	ldr r0, [r4, r6]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r5, r5, #1
	cmp r5, #6
	blt _02233D5C
	add sp, #0x1fc
	add sp, #0xd8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02233D70: .4byte 0x00000282
_02233D74: .4byte 0x000003D2
_02233D78: .4byte 0x000004F8
_02233D7C: .4byte 0x000004D4
	thumb_func_end ov104_02233BAC

	thumb_func_start ov104_02233D80
ov104_02233D80: @ 0x02233D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xdc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl FUN_0201D2E8
	movs r1, #6
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	cmp r6, #0
	bne _02233E5C
	movs r0, #0x95
	lsls r0, r0, #2
	adds r1, r4, r0
	lsls r3, r5, #1
	str r1, [sp, #0x5c]
	ldrh r1, [r1, r3]
	str r3, [sp, #0x20]
	add r6, sp, #0xa4
	str r1, [sp, #0x1c]
	adds r1, r0, #0
	adds r1, #0xc
	adds r1, r4, r1
	str r1, [sp, #0x24]
	ldrb r1, [r1, r5]
	movs r7, #7
	str r1, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #0x14
	adds r1, r4, r1
	str r1, [sp, #0x28]
	lsls r1, r5, #2
	ldr r3, [sp, #0x28]
	str r1, [sp, #0x2c]
	ldr r1, [r3, r1]
	adds r0, #0x2c
	str r1, [sp, #0x14]
	adds r1, r4, r0
	movs r0, #0x38
	muls r0, r5, r0
	adds r0, r1, r0
	str r0, [sp, #0x10]
	str r0, [sp, #0x30]
_02233DDC:
	ldr r3, [sp, #0x30]
	subs r7, r7, #1
	ldm r3!, {r0, r1}
	str r3, [sp, #0x30]
	stm r6!, {r0, r1}
	bne _02233DDC
	movs r0, #0x95
	lsls r0, r0, #2
	adds r1, r4, r0
	str r1, [sp, #0x34]
	ldr r3, [sp, #0x34]
	lsls r1, r2, #1
	ldrh r6, [r3, r1]
	str r1, [sp, #0x38]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x5c]
	strh r6, [r1, r3]
	adds r1, r0, #0
	adds r1, #0xc
	adds r1, r4, r1
	ldrb r3, [r1, r2]
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x24]
	strb r3, [r1, r5]
	adds r1, r0, #0
	adds r1, #0x14
	adds r7, r4, r1
	lsls r1, r2, #2
	str r1, [sp, #0x60]
	ldr r5, [r7, r1]
	ldr r3, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	adds r0, #0x2c
	str r5, [r3, r1]
	adds r1, r4, r0
	movs r0, #0x38
	muls r0, r2, r0
	adds r6, r1, r0
	adds r5, r6, #0
	movs r4, #7
_02233E2C:
	ldr r3, [sp, #0x10]
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	str r3, [sp, #0x10]
	subs r4, r4, #1
	bne _02233E2C
	ldr r3, [sp, #0x1c]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	strh r3, [r1, r0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	add r3, sp, #0xa4
	strb r1, [r0, r2]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x60]
	movs r2, #7
	str r1, [r7, r0]
_02233E50:
	ldm r3!, {r0, r1}
	stm r6!, {r0, r1}
	subs r2, r2, #1
	bne _02233E50
	add sp, #0xdc
	pop {r4, r5, r6, r7, pc}
_02233E5C:
	ldr r0, _02233F18 @ =0x00000584
	lsls r3, r5, #1
	adds r1, r4, r0
	str r1, [sp, #0x64]
	ldrh r1, [r1, r3]
	str r3, [sp, #0x40]
	add r6, sp, #0x6c
	str r1, [sp, #8]
	adds r1, r0, #0
	adds r1, #0xc
	adds r1, r4, r1
	str r1, [sp, #0x44]
	ldrb r1, [r1, r5]
	movs r7, #7
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0x14
	adds r1, r4, r1
	str r1, [sp, #0x48]
	lsls r1, r5, #2
	ldr r3, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [r3, r1]
	adds r0, #0x2c
	str r1, [sp]
	adds r1, r4, r0
	movs r0, #0x38
	muls r0, r5, r0
	adds r0, r1, r0
	str r0, [sp, #0xc]
	str r0, [sp, #0x50]
_02233E9A:
	ldr r3, [sp, #0x50]
	subs r7, r7, #1
	ldm r3!, {r0, r1}
	str r3, [sp, #0x50]
	stm r6!, {r0, r1}
	bne _02233E9A
	ldr r3, _02233F18 @ =0x00000584
	adds r0, r4, r3
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x54]
	lsls r0, r2, #1
	ldrh r6, [r1, r0]
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x64]
	strh r6, [r0, r1]
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldrb r1, [r0, r2]
	mov ip, r0
	ldr r0, [sp, #0x44]
	strb r1, [r0, r5]
	adds r0, r3, #0
	adds r0, #0x14
	adds r7, r4, r0
	lsls r0, r2, #2
	str r0, [sp, #0x68]
	ldr r5, [r7, r0]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	adds r3, #0x2c
	str r5, [r1, r0]
	movs r0, #0x38
	adds r1, r4, r3
	muls r0, r2, r0
	adds r5, r1, r0
	adds r6, r5, #0
	movs r4, #7
_02233EE8:
	ldr r3, [sp, #0xc]
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	str r3, [sp, #0xc]
	subs r4, r4, #1
	bne _02233EE8
	ldr r3, [sp, #8]
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0x58]
	strh r3, [r1, r0]
	ldr r1, [sp, #4]
	mov r0, ip
	strb r1, [r0, r2]
	ldr r1, [sp]
	ldr r0, [sp, #0x68]
	add r3, sp, #0x6c
	str r1, [r7, r0]
	movs r2, #7
_02233F0C:
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	subs r2, r2, #1
	bne _02233F0C
	add sp, #0xdc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02233F18: .4byte 0x00000584
	thumb_func_end ov104_02233D80

	thumb_func_start ov104_02233F1C
ov104_02233F1C: @ 0x02233F1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x19c
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	bl ov104_0223AA50
	ldr r7, _022340B8 @ =0x000004F4
	movs r4, #0
	adds r6, r5, #0
_02233F2E:
	lsls r2, r4, #0x18
	ldr r0, [r5, r7]
	movs r1, #3
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030030
	strh r0, [r6, #0x18]
	adds r4, r4, #1
	adds r6, r6, #2
	cmp r4, #0xe
	blt _02233F2E
	add r0, sp, #0x28
	movs r4, #0
	add r6, sp, #0x40
	str r0, [sp, #0x14]
	add r7, sp, #0x20
	str r5, [sp, #0x10]
_02233F52:
	ldr r0, _022340B8 @ =0x000004F4
	lsls r2, r4, #0x18
	ldr r0, [r5, r0]
	movs r1, #4
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030030
	strh r0, [r6]
	ldr r0, _022340B8 @ =0x000004F4
	lsls r2, r4, #0x18
	ldr r0, [r5, r0]
	movs r1, #6
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030030
	ldr r1, [sp, #0x14]
	lsls r2, r4, #0x18
	str r0, [r1]
	ldr r0, _022340B8 @ =0x000004F4
	movs r1, #5
	ldr r0, [r5, r0]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030030
	strb r0, [r7]
	ldrh r2, [r6]
	ldr r1, [sp, #0x10]
	ldr r0, _022340BC @ =0x000004E8
	adds r4, r4, #1
	strh r2, [r1, r0]
	ldr r0, [sp, #0x14]
	adds r6, r6, #2
	adds r0, r0, #4
	str r0, [sp, #0x14]
	adds r0, r1, #0
	adds r0, r0, #2
	adds r7, r7, #1
	str r0, [sp, #0x10]
	cmp r4, #4
	blt _02233F52
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	str r0, [sp, #0xc]
	add r0, sp, #0x4c
	add r1, sp, #0x40
	add r2, sp, #0x20
	add r3, sp, #0x28
	bl ov104_0222E330
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	movs r7, #0
	add r4, sp, #0x4c
_02233FD0:
	adds r0, r5, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _022340C0 @ =0x000004F8
	ldr r1, _022340C4 @ =0x000004D4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl ov104_0222E1C0
	adds r7, r7, #1
	adds r4, #0x38
	cmp r7, #4
	blt _02233FD0
	adds r0, r6, #0
	bl FUN_020181C4
	add r0, sp, #0x28
	movs r4, #0
	add r6, sp, #0x40
	str r0, [sp, #0x1c]
	add r7, sp, #0x20
	str r5, [sp, #0x18]
_02234008:
	ldr r0, _022340B8 @ =0x000004F4
	lsls r2, r4, #0x18
	ldr r0, [r5, r0]
	movs r1, #7
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030030
	strh r0, [r6]
	ldr r0, _022340B8 @ =0x000004F4
	lsls r2, r4, #0x18
	ldr r0, [r5, r0]
	movs r1, #9
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030030
	ldr r1, [sp, #0x1c]
	lsls r2, r4, #0x18
	str r0, [r1]
	ldr r0, _022340B8 @ =0x000004F4
	movs r1, #8
	ldr r0, [r5, r0]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030030
	strb r0, [r7]
	ldrh r2, [r6]
	ldr r1, [sp, #0x18]
	ldr r0, _022340C8 @ =0x000003D2
	adds r4, r4, #1
	strh r2, [r1, r0]
	ldr r0, [sp, #0x1c]
	adds r6, r6, #2
	adds r0, r0, #4
	str r0, [sp, #0x1c]
	adds r0, r1, #0
	adds r0, r0, #2
	adds r7, r7, #1
	str r0, [sp, #0x18]
	cmp r4, #4
	blt _02234008
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	str r0, [sp, #0xc]
	add r0, sp, #0x4c
	add r1, sp, #0x40
	add r2, sp, #0x20
	add r3, sp, #0x28
	bl ov104_0222E330
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	movs r7, #0
	add r4, sp, #0x4c
_02234086:
	adds r0, r5, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _022340C0 @ =0x000004F8
	ldr r1, _022340CC @ =0x000004D8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl ov104_0222E1C0
	adds r7, r7, #1
	adds r4, #0x38
	cmp r7, #4
	blt _02234086
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #0x19c
	pop {r4, r5, r6, r7, pc}
	nop
_022340B8: .4byte 0x000004F4
_022340BC: .4byte 0x000004E8
_022340C0: .4byte 0x000004F8
_022340C4: .4byte 0x000004D4
_022340C8: .4byte 0x000003D2
_022340CC: .4byte 0x000004D8
	thumb_func_end ov104_02233F1C

	thumb_func_start ov104_022340D0
ov104_022340D0: @ 0x022340D0
	push {r4, lr}
	adds r4, r0, #0
	beq _022340FE
	ldr r0, _02234100 @ =0x000004D4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022340E2
	bl FUN_020181C4
_022340E2:
	ldr r0, _02234104 @ =0x000004D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022340EE
	bl FUN_020181C4
_022340EE:
	ldr r2, _02234108 @ =0x00000708
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020C4CF4
	adds r0, r4, #0
	bl FUN_020181C4
_022340FE:
	pop {r4, pc}
	.align 2, 0
_02234100: .4byte 0x000004D4
_02234104: .4byte 0x000004D8
_02234108: .4byte 0x00000708
	thumb_func_end ov104_022340D0

	thumb_func_start ov104_0223410C
ov104_0223410C: @ 0x0223410C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0223412C @ =0x000004DC
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_02234116:
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	bl ov104_02234130
	strh r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #6
	blt _02234116
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223412C: .4byte 0x000004DC
	thumb_func_end ov104_0223410C

	thumb_func_start ov104_02234130
ov104_02234130: @ 0x02234130
	push {r3, lr}
	cmp r1, #6
	blo _0223413E
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
_0223413E:
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0x10]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02234130

	thumb_func_start ov104_02234148
ov104_02234148: @ 0x02234148
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, _02234414 @ =0x000004F8
	adds r6, r1, #0
	ldr r0, [r5, r0]
	bl FUN_020300F4
	str r0, [sp]
	ldr r0, _02234414 @ =0x000004F8
	ldr r0, [r5, r0]
	bl FUN_0203068C
	adds r4, r0, #0
	ldrb r0, [r5, #4]
	bl ov104_0223AA50
	ldrb r0, [r5, #4]
	movs r1, #1
	bl ov104_0223AA74
	ldrb r1, [r5, #5]
	add r0, sp, #4
	add r3, sp, #0xc
	strb r1, [r0, #8]
	ldr r0, _02234418 @ =0x000004F4
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_0202FF84
	ldrb r1, [r5, #4]
	add r0, sp, #4
	movs r2, #0
	strb r1, [r0, #8]
	ldr r0, _02234418 @ =0x000004F4
	movs r1, #1
	ldr r0, [r5, r0]
	add r3, sp, #0xc
	bl FUN_0202FF84
	ldr r0, _02234418 @ =0x000004F4
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_0202FF70
	ldrb r1, [r5, #6]
	add r0, sp, #4
	movs r2, #0
	strb r1, [r0, #8]
	ldr r0, _02234418 @ =0x000004F4
	movs r1, #2
	ldr r0, [r5, r0]
	add r3, sp, #0xc
	bl FUN_0202FF84
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E488
	adds r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E488
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_020306E4
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E430
	adds r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E430
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #0xc]
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_020306E4
	cmp r6, #2
	beq _022342F4
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E45C
	adds r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E45C
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	adds r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E45C
	adds r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E45C
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #0xc]
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02030848
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E45C
	adds r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E45C
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02030698
	ldrh r1, [r5, #0xc]
	cmp r1, r6
	bne _0223428E
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E4B4
	adds r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E4B4
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030848
	b _022342B4
_0223428E:
	cmp r6, r0
	bhs _022342B4
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E4B4
	adds r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl FUN_0205E4B4
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_020306E4
_022342B4:
	ldrb r1, [r5, #0xa]
	add r0, sp, #4
	strb r1, [r0, #8]
	ldrb r2, [r5, #5]
	ldrb r3, [r5, #4]
	ldr r0, [sp]
	lsls r2, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #0x18
	movs r1, #0xa
	lsrs r2, r2, #0x18
	add r3, sp, #0xc
	bl FUN_020300B0
	ldrb r0, [r5, #4]
	cmp r0, #3
	bne _022342F4
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _022342E0
	movs r6, #0x66
	b _022342E2
_022342E0:
	movs r6, #0x68
_022342E2:
	adds r0, r6, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrb r3, [r5, #0xa]
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_020306E4
_022342F4:
	ldr r7, _02234418 @ =0x000004F4
	movs r4, #0
	add r6, sp, #4
_022342FA:
	lsls r0, r4, #1
	adds r0, r5, r0
	ldrh r0, [r0, #0x18]
	lsls r2, r4, #0x18
	movs r1, #3
	strh r0, [r6]
	ldr r0, [r5, r7]
	lsrs r2, r2, #0x18
	add r3, sp, #4
	bl FUN_0202FF84
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xe
	blo _022342FA
	ldr r0, _0223441C @ =0x000004D4
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	adds r7, r0, #0
	ldr r4, _02234420 @ =0x00000000
	beq _02234394
_02234328:
	ldr r0, _0223441C @ =0x000004D4
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r6, r0, #0
	lsls r0, r4, #1
	adds r1, r5, r0
	ldr r0, _02234424 @ =0x000004E8
	lsls r2, r4, #0x18
	ldrh r1, [r1, r0]
	add r0, sp, #4
	lsrs r2, r2, #0x18
	strh r1, [r0]
	ldr r0, _02234418 @ =0x000004F4
	movs r1, #4
	ldr r0, [r5, r0]
	add r3, sp, #4
	bl FUN_0202FF84
	adds r0, r6, #0
	movs r1, #0x47
	movs r2, #0
	bl FUN_02074470
	add r1, sp, #4
	strb r0, [r1, #8]
	ldr r0, _02234418 @ =0x000004F4
	lsls r2, r4, #0x18
	ldr r0, [r5, r0]
	movs r1, #5
	lsrs r2, r2, #0x18
	add r3, sp, #0xc
	bl FUN_0202FF84
	movs r1, #0
	adds r0, r6, #0
	adds r2, r1, #0
	bl FUN_02074470
	str r0, [sp, #0x10]
	ldr r0, _02234418 @ =0x000004F4
	lsls r2, r4, #0x18
	ldr r0, [r5, r0]
	movs r1, #6
	lsrs r2, r2, #0x18
	add r3, sp, #0x10
	bl FUN_0202FF84
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blo _02234328
_02234394:
	ldr r0, _02234428 @ =0x000004D8
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	adds r7, r0, #0
	ldr r4, _02234420 @ =0x00000000
	beq _0223440E
_022343A2:
	ldr r0, _02234428 @ =0x000004D8
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r6, r0, #0
	lsls r0, r4, #1
	adds r1, r5, r0
	ldr r0, _0223442C @ =0x000003D2
	lsls r2, r4, #0x18
	ldrh r1, [r1, r0]
	add r0, sp, #4
	lsrs r2, r2, #0x18
	strh r1, [r0]
	ldr r0, _02234418 @ =0x000004F4
	movs r1, #7
	ldr r0, [r5, r0]
	add r3, sp, #4
	bl FUN_0202FF84
	adds r0, r6, #0
	movs r1, #0x47
	movs r2, #0
	bl FUN_02074470
	add r1, sp, #4
	strb r0, [r1, #8]
	ldr r0, _02234418 @ =0x000004F4
	lsls r2, r4, #0x18
	ldr r0, [r5, r0]
	movs r1, #8
	lsrs r2, r2, #0x18
	add r3, sp, #0xc
	bl FUN_0202FF84
	movs r1, #0
	adds r0, r6, #0
	adds r2, r1, #0
	bl FUN_02074470
	str r0, [sp, #0x10]
	ldr r0, _02234418 @ =0x000004F4
	lsls r2, r4, #0x18
	ldr r0, [r5, r0]
	movs r1, #9
	lsrs r2, r2, #0x18
	add r3, sp, #0x10
	bl FUN_0202FF84
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blo _022343A2
_0223440E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234414: .4byte 0x000004F8
_02234418: .4byte 0x000004F4
_0223441C: .4byte 0x000004D4
_02234420: .4byte 0x00000000
_02234424: .4byte 0x000004E8
_02234428: .4byte 0x000004D8
_0223442C: .4byte 0x000003D2
	thumb_func_end ov104_02234148

	thumb_func_start ov104_02234430
ov104_02234430: @ 0x02234430
	ldrb r1, [r0, #6]
	adds r1, r1, #1
	strb r1, [r0, #6]
	ldrb r0, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02234430

	thumb_func_start ov104_0223443C
ov104_0223443C: @ 0x0223443C
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end ov104_0223443C

	thumb_func_start ov104_02234440
ov104_02234440: @ 0x02234440
	push {r4, lr}
	sub sp, #0x30
	adds r2, r0, #0
	ldrb r4, [r2, #6]
	movs r3, #7
	muls r3, r1, r3
	adds r1, r4, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x17
	adds r1, r2, r1
	ldrh r1, [r1, #0x18]
	add r0, sp, #0
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl ov104_0222E10C
	add sp, #0x30
	pop {r4, pc}
	thumb_func_end ov104_02234440

	thumb_func_start ov104_02234474
ov104_02234474: @ 0x02234474
	ldr r3, _0223447C @ =ov104_02234148
	movs r1, #1
	bx r3
	nop
_0223447C: .4byte ov104_02234148
	thumb_func_end ov104_02234474

	thumb_func_start ov104_02234480
ov104_02234480: @ 0x02234480
	movs r1, #1
	strb r1, [r0, #0xa]
	ldrh r1, [r0, #0xe]
	cmp r1, #8
	bhs _0223448E
	adds r1, r1, #1
	strh r1, [r0, #0xe]
_0223448E:
	ldr r3, _02234498 @ =ov104_02234148
	movs r1, #0
	strb r1, [r0, #6]
	bx r3
	nop
_02234498: .4byte ov104_02234148
	thumb_func_end ov104_02234480

	thumb_func_start ov104_0223449C
ov104_0223449C: @ 0x0223449C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	bl ov104_0223AA50
	str r0, [sp, #4]
	ldrb r0, [r5, #4]
	movs r1, #1
	bl ov104_0223AA74
	str r0, [sp]
	ldr r0, _0223455C @ =0x000004D4
	ldr r0, [r5, r0]
	bl FUN_0207A008
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	ldr r0, [sp, #4]
	movs r7, #0
	cmp r0, #0
	ble _0223451A
	movs r0, #0xa
	lsls r0, r0, #6
	adds r0, r5, r0
	adds r4, r5, #0
	str r0, [sp, #8]
_022344D6:
	adds r0, r5, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	ldr r0, _02234560 @ =0x000004DC
	movs r1, #0x38
	ldrh r0, [r4, r0]
	muls r1, r0, r1
	ldr r0, [sp, #8]
	adds r0, r0, r1
	adds r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _02234564 @ =0x000004F8
	ldr r1, _0223455C @ =0x000004D4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl ov104_0222E1C0
	ldr r0, _02234560 @ =0x000004DC
	adds r7, r7, #1
	ldrh r0, [r4, r0]
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x95
	lsls r0, r0, #2
	ldrh r1, [r1, r0]
	ldr r0, _02234568 @ =0x000004E8
	strh r1, [r4, r0]
	ldr r0, [sp, #4]
	adds r4, r4, #2
	cmp r7, r0
	blt _022344D6
_0223451A:
	ldr r0, [sp]
	movs r7, #0
	cmp r0, #0
	ble _02234550
	movs r0, #0x3f
	lsls r0, r0, #4
	adds r4, r5, r0
_02234528:
	adds r0, r5, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _02234564 @ =0x000004F8
	ldr r1, _0223456C @ =0x000004D8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl ov104_0222E1C0
	ldr r0, [sp]
	adds r7, r7, #1
	adds r4, #0x38
	cmp r7, r0
	blt _02234528
_02234550:
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223455C: .4byte 0x000004D4
_02234560: .4byte 0x000004DC
_02234564: .4byte 0x000004F8
_02234568: .4byte 0x000004E8
_0223456C: .4byte 0x000004D8
	thumb_func_end ov104_0223449C

	thumb_func_start ov104_02234570
ov104_02234570: @ 0x02234570
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	movs r1, #0
	adds r5, r0, #0
	add r2, sp, #0x3c
	add r3, sp, #0x2c
	adds r0, r1, #0
_0223457E:
	adds r1, r1, #1
	strh r0, [r2]
	strh r0, [r3]
	adds r2, r2, #2
	adds r3, r3, #2
	cmp r1, #8
	blt _0223457E
	ldrb r0, [r5, #4]
	movs r1, #1
	bl ov104_0223AA74
	str r0, [sp, #0x1c]
	ldr r0, _02234698 @ =0x000004D4
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	movs r7, #0
	str r0, [sp, #0x20]
	cmp r0, #0
	ble _022345D8
	add r6, sp, #0x3c
	add r4, sp, #0x2c
_022345AA:
	ldr r0, _02234698 @ =0x000004D4
	adds r1, r7, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	str r0, [sp, #0x24]
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	strh r0, [r6]
	ldr r0, [sp, #0x24]
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4]
	ldr r0, [sp, #0x20]
	adds r7, r7, #1
	adds r6, r6, #2
	adds r4, r4, #2
	cmp r7, r0
	blt _022345AA
_022345D8:
	ldr r0, _0223469C @ =0x000004D8
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	movs r7, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02234636
	ldr r0, [sp, #0x20]
	str r5, [sp, #0x18]
	lsls r1, r0, #1
	add r0, sp, #0x3c
	adds r6, r0, r1
	add r0, sp, #0x2c
	adds r4, r0, r1
_022345F6:
	ldr r0, _0223469C @ =0x000004D8
	adds r1, r7, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	str r0, [sp, #0x28]
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	strh r0, [r6]
	ldr r0, [sp, #0x28]
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4]
	ldr r1, [sp, #0x18]
	ldr r0, _022346A0 @ =0x000003D2
	adds r7, r7, #1
	ldrh r2, [r1, r0]
	movs r0, #0x95
	lsls r0, r0, #2
	strh r2, [r1, r0]
	adds r0, r1, #0
	adds r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r6, r6, #2
	adds r4, r4, #2
	cmp r7, r0
	blt _022345F6
_02234636:
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #5]
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0, #0x18]
	bl ov104_0223A8A8
	ldr r1, _022346A0 @ =0x000003D2
	ldr r3, [sp, #0x20]
	adds r2, r5, r1
	str r2, [sp]
	movs r2, #0xb
	str r2, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r1, #8
	str r0, [sp, #0xc]
	adds r0, r5, r1
	str r0, [sp, #0x10]
	adds r2, r3, r2
	ldr r3, [sp, #0x1c]
	add r0, sp, #0x3c
	add r1, sp, #0x2c
	bl ov104_0223A918
	movs r2, #0x3e
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	adds r1, r2, #0
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	str r0, [sp, #0xc]
	adds r0, r2, #0
	adds r0, #0x10
	subs r1, #0xe
	subs r2, r2, #6
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r5, r2
	movs r3, #0
	bl ov104_0222E330
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02234698: .4byte 0x000004D4
_0223469C: .4byte 0x000004D8
_022346A0: .4byte 0x000003D2
	thumb_func_end ov104_02234570

	thumb_func_start ov104_022346A4
ov104_022346A4: @ 0x022346A4
	push {r4, lr}
	ldr r1, _022346FC @ =0x000004DC
	adds r4, r0, #0
	ldrh r0, [r4, r1]
	cmp r0, #0xff
	beq _022346F8
	subs r0, r1, #4
	adds r1, r1, #2
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	ldr r1, _02234700 @ =0x000004D4
	adds r2, r0, #0
	ldr r0, [r4, r1]
	adds r1, #8
	ldrh r1, [r4, r1]
	bl FUN_0207A128
	ldr r1, _02234704 @ =0x000004DE
	ldrh r0, [r4, r1]
	lsls r0, r0, #1
	adds r2, r4, r0
	movs r0, #0x95
	lsls r0, r0, #2
	ldrh r2, [r2, r0]
	subs r0, r1, #2
	ldrh r0, [r4, r0]
	adds r1, #0xa
	lsls r0, r0, #1
	adds r0, r4, r0
	strh r2, [r0, r1]
	adds r0, r4, #0
	bl ov104_02234790
	ldr r0, _02234708 @ =0x000004F8
	ldr r0, [r4, r0]
	bl FUN_0202CD88
	movs r1, #0x40
	bl FUN_0202CF28
_022346F8:
	pop {r4, pc}
	nop
_022346FC: .4byte 0x000004DC
_02234700: .4byte 0x000004D4
_02234704: .4byte 0x000004DE
_02234708: .4byte 0x000004F8
	thumb_func_end ov104_022346A4

	thumb_func_start ov104_0223470C
ov104_0223470C: @ 0x0223470C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	bl ov104_0223AA50
	ldrb r0, [r4, #4]
	movs r1, #1
	bl ov104_0223AA74
	adds r6, r0, #0
	ldr r0, _02234788 @ =0x000004D8
	ldr r0, [r4, r0]
	bl FUN_0207A008
	movs r0, #0xb
	bl FUN_02073C74
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	cmp r6, #0
	ble _02234768
	movs r0, #0x3f
	lsls r0, r0, #4
	adds r5, r4, r0
_0223473E:
	adds r0, r4, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov104_0222DF40
	ldr r0, _0223478C @ =0x000004F8
	ldr r1, _02234788 @ =0x000004D8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	adds r2, r7, #0
	bl ov104_0222E1C0
	ldr r0, [sp]
	adds r5, #0x38
	adds r0, r0, #1
	str r0, [sp]
	cmp r0, r6
	blt _0223473E
_02234768:
	adds r0, r7, #0
	bl FUN_020181C4
	movs r5, #0
	cmp r6, #0
	ble _02234784
	ldr r7, _02234788 @ =0x000004D8
_02234776:
	ldr r0, [r4, r7]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r5, r5, #1
	cmp r5, r6
	blt _02234776
_02234784:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234788: .4byte 0x000004D8
_0223478C: .4byte 0x000004F8
	thumb_func_end ov104_0223470C

	thumb_func_start ov104_02234790
ov104_02234790: @ 0x02234790
	ldrh r2, [r0, #8]
	ldr r1, _022347A0 @ =0x0000270F
	cmp r2, r1
	bhs _0223479C
	adds r1, r2, #1
	strh r1, [r0, #8]
_0223479C:
	bx lr
	nop
_022347A0: .4byte 0x0000270F
	thumb_func_end ov104_02234790

	thumb_func_start ov104_022347A4
ov104_022347A4: @ 0x022347A4
	push {r3, lr}
	cmp r1, #6
	bhi _022347F4
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022347B6: @ jump table
	.2byte _022347C4 - _022347B6 - 2 @ case 0
	.2byte _022347CA - _022347B6 - 2 @ case 1
	.2byte _022347D0 - _022347B6 - 2 @ case 2
	.2byte _022347D6 - _022347B6 - 2 @ case 3
	.2byte _022347DC - _022347B6 - 2 @ case 4
	.2byte _022347E6 - _022347B6 - 2 @ case 5
	.2byte _022347F0 - _022347B6 - 2 @ case 6
_022347C4:
	bl ov104_0222EEF8
	pop {r3, pc}
_022347CA:
	bl ov104_0222EF64
	pop {r3, pc}
_022347D0:
	bl ov104_0222EFCC
	pop {r3, pc}
_022347D6:
	bl ov104_0222F0B4
	pop {r3, pc}
_022347DC:
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl ov104_0222F1A0
	pop {r3, pc}
_022347E6:
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl ov104_0222F1EC
	pop {r3, pc}
_022347F0:
	bl ov104_0222F238
_022347F4:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022347A4

	thumb_func_start ov104_022347F8
ov104_022347F8: @ 0x022347F8
	ldrb r3, [r0, #4]
	ldrh r2, [r0, #0xe]
	cmp r3, #1
	bhi _0223480E
	cmp r2, #8
	blo _02234808
	movs r1, #9
	b _0223481A
_02234808:
	ldr r1, _02234830 @ =0x0223FA34
	ldrb r1, [r1, r2]
	b _0223481A
_0223480E:
	cmp r2, #8
	blo _02234816
	movs r1, #0x15
	b _0223481A
_02234816:
	ldr r1, _02234834 @ =0x0223FA40
	ldrb r1, [r1, r2]
_0223481A:
	cmp r3, #0
	bne _0223482A
	ldrh r0, [r0, #0xc]
	cmp r0, #0x15
	beq _02234828
	cmp r0, #0x31
	bne _0223482A
_02234828:
	movs r1, #0x14
_0223482A:
	adds r0, r1, #0
	bx lr
	nop
_02234830: .4byte 0x0223FA34
_02234834: .4byte 0x0223FA40
	thumb_func_end ov104_022347F8

	thumb_func_start ov104_02234838
ov104_02234838: @ 0x02234838
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	bl ov104_0222FC00
	str r0, [sp, #4]
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	lsls r2, r4, #0x18
	lsls r3, r6, #0x18
	ldr r0, [r0, #8]
	ldr r1, [sp, #4]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl ov104_02234DB4
	adds r1, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B980
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02234838

	thumb_func_start ov104_0223488C
ov104_0223488C: @ 0x0223488C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r4, #0
	bl ov104_022350B0
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223488C

	thumb_func_start ov104_022348A8
ov104_022348A8: @ 0x022348A8
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_02235190
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022348A8

	thumb_func_start ov104_022348BC
ov104_022348BC: @ 0x022348BC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r7, r0, #0
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	movs r0, #0xb
	movs r1, #0x20
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x20
	adds r5, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r7, #8]
	ldr r1, _0223497C @ =0x00000704
	str r0, [r5]
	ldrb r0, [r4, #4]
	adds r3, r4, r1
	subs r1, #0xf
	strb r0, [r5, #4]
	str r4, [r5, #0x10]
	ldrb r2, [r4, #4]
	lsls r0, r2, #3
	adds r0, r2, r0
	adds r0, r3, r0
	str r0, [r5, #8]
	movs r0, #0x99
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [r5, #0xc]
	ldrh r0, [r4, #8]
	strh r0, [r5, #0x18]
	ldrb r0, [r4, r1]
	strb r0, [r5, #5]
	ldr r0, _02234980 @ =0x00000D84
	adds r0, r4, r0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	bl FUN_0207A008
	ldr r0, [r7, #8]
	bl FUN_0207A268
	movs r1, #0x26
	lsls r1, r1, #4
	ldrb r1, [r4, r1]
	adds r7, r0, #0
	bl FUN_0207A0FC
	adds r1, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_0207A048
	ldrb r0, [r5, #4]
	cmp r0, #1
	bne _02234950
	ldr r1, _02234984 @ =0x00000261
	adds r0, r7, #0
	ldrb r1, [r4, r1]
	bl FUN_0207A0FC
	adds r1, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_0207A048
	b _02234964
_02234950:
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _02234964
	ldr r1, _02234988 @ =0x00000D8C
	ldr r0, [r5, #0xc]
	ldr r1, [r4, r1]
	bl FUN_0207A048
_02234964:
	ldr r0, _0223498C @ =ov104_02234A08
	ldr r1, _02234990 @ =0x0223FA4C
	str r0, [sp]
	ldr r0, [r6]
	adds r2, r5, #0
	ldr r0, [r0]
	movs r3, #0
	bl FUN_0209B988
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223497C: .4byte 0x00000704
_02234980: .4byte 0x00000D84
_02234984: .4byte 0x00000261
_02234988: .4byte 0x00000D8C
_0223498C: .4byte ov104_02234A08
_02234990: .4byte 0x0223FA4C
	thumb_func_end ov104_022348BC

	thumb_func_start ov104_02234994
ov104_02234994: @ 0x02234994
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	movs r0, #7
	lsls r0, r0, #8
	ldr r5, [r4, r0]
	ldr r0, [r5, #0x14]
	bl FUN_02052868
	str r0, [r4, #0x14]
	adds r0, r5, #0
	bl FUN_020520A4
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02234994

	thumb_func_start ov104_022349B8
ov104_022349B8: @ 0x022349B8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r6, #0
	adds r4, r0, #0
	bl ov104_0223B250
	adds r6, r0, #0
	movs r0, #7
	lsls r0, r0, #8
	str r6, [r4, r0]
	ldr r1, _02234A00 @ =0x0000045F
	movs r0, #5
	movs r2, #1
	bl FUN_02004550
	movs r3, #0
	str r3, [sp]
	ldr r0, [r5]
	ldr r1, _02234A04 @ =0x020EA358
	ldr r0, [r0]
	adds r2, r6, #0
	bl FUN_0209B988
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02234A00: .4byte 0x0000045F
_02234A04: .4byte 0x020EA358
	thumb_func_end ov104_022349B8

	thumb_func_start ov104_02234A08
ov104_02234A08: @ 0x02234A08
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	adds r1, r4, #0
	bl ov104_022351CC
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov104_02234A08

	thumb_func_start ov104_02234A1C
ov104_02234A1C: @ 0x02234A1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r2, r1, #1
	str r2, [r4, #0x1c]
	ldrb r7, [r1]
	adds r1, r2, #1
	str r1, [r4, #0x1c]
	ldrb r6, [r2]
	adds r1, r1, #1
	str r1, [r4, #0x1c]
	bl ov104_0222FBE4
	adds r5, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B970
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	cmp r7, #0x26
	bls _02234A54
	b _02234C62
_02234A54:
	adds r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02234A60: @ jump table
	.2byte _02234C62 - _02234A60 - 2 @ case 0
	.2byte _02234C62 - _02234A60 - 2 @ case 1
	.2byte _02234AAE - _02234A60 - 2 @ case 2
	.2byte _02234AB2 - _02234A60 - 2 @ case 3
	.2byte _02234ABA - _02234A60 - 2 @ case 4
	.2byte _02234AC0 - _02234A60 - 2 @ case 5
	.2byte _02234C62 - _02234A60 - 2 @ case 6
	.2byte _02234ACE - _02234A60 - 2 @ case 7
	.2byte _02234C62 - _02234A60 - 2 @ case 8
	.2byte _02234AD6 - _02234A60 - 2 @ case 9
	.2byte _02234AE2 - _02234A60 - 2 @ case 10
	.2byte _02234C62 - _02234A60 - 2 @ case 11
	.2byte _02234C62 - _02234A60 - 2 @ case 12
	.2byte _02234C62 - _02234A60 - 2 @ case 13
	.2byte _02234AEA - _02234A60 - 2 @ case 14
	.2byte _02234C18 - _02234A60 - 2 @ case 15
	.2byte _02234C62 - _02234A60 - 2 @ case 16
	.2byte _02234BAC - _02234A60 - 2 @ case 17
	.2byte _02234C62 - _02234A60 - 2 @ case 18
	.2byte _02234AF2 - _02234A60 - 2 @ case 19
	.2byte _02234B04 - _02234A60 - 2 @ case 20
	.2byte _02234B0E - _02234A60 - 2 @ case 21
	.2byte _02234B14 - _02234A60 - 2 @ case 22
	.2byte _02234B1A - _02234A60 - 2 @ case 23
	.2byte _02234B22 - _02234A60 - 2 @ case 24
	.2byte _02234C62 - _02234A60 - 2 @ case 25
	.2byte _02234C62 - _02234A60 - 2 @ case 26
	.2byte _02234B2A - _02234A60 - 2 @ case 27
	.2byte _02234B66 - _02234A60 - 2 @ case 28
	.2byte _02234B9C - _02234A60 - 2 @ case 29
	.2byte _02234BA2 - _02234A60 - 2 @ case 30
	.2byte _02234BB2 - _02234A60 - 2 @ case 31
	.2byte _02234BCA - _02234A60 - 2 @ case 32
	.2byte _02234BF8 - _02234A60 - 2 @ case 33
	.2byte _02234C10 - _02234A60 - 2 @ case 34
	.2byte _02234C36 - _02234A60 - 2 @ case 35
	.2byte _02234C3C - _02234A60 - 2 @ case 36
	.2byte _02234C42 - _02234A60 - 2 @ case 37
	.2byte _02234C62 - _02234A60 - 2 @ case 38
_02234AAE:
	strb r6, [r4, #4]
	b _02234C62
_02234AB2:
	ldr r0, _02234C68 @ =0x000006F2
	ldrh r0, [r4, r0]
	strh r0, [r5]
	b _02234C62
_02234ABA:
	ldrh r0, [r4, #8]
	strh r0, [r5]
	b _02234C62
_02234AC0:
	ldrh r1, [r4, #8]
	ldr r0, _02234C6C @ =0x0000270F
	cmp r1, r0
	bhs _02234B64
	adds r0, r1, #1
	strh r0, [r4, #8]
	b _02234C62
_02234ACE:
	movs r0, #0
	blx FUN_020C3EE4
	b _02234C62
_02234AD6:
	ldr r0, _02234C70 @ =0x000006F8
	ldr r0, [r4, r0]
	bl FUN_02030124
	strh r0, [r5]
	b _02234C62
_02234AE2:
	movs r1, #2
	bl ov104_0223526C
	b _02234C62
_02234AEA:
	bl ov104_022354B0
	strh r0, [r5]
	b _02234C62
_02234AF2:
	ldrb r0, [r4, #4]
	cmp r0, #2
	bne _02234AFE
	movs r0, #0xa
	strh r0, [r5]
	b _02234C62
_02234AFE:
	ldrh r0, [r4, #0xa]
	strh r0, [r5]
	b _02234C62
_02234B04:
	adds r1, r6, #0
	bl ov104_022354C0
	strh r0, [r5]
	b _02234C62
_02234B0E:
	bl ov104_022354F4
	b _02234C62
_02234B14:
	bl ov104_02235518
	b _02234C62
_02234B1A:
	bl ov104_022354BC
	strh r0, [r5]
	b _02234C62
_02234B22:
	ldr r0, _02234C74 @ =0x00000D88
	ldrb r0, [r4, r0]
	strh r0, [r5]
	b _02234C62
_02234B2A:
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl FUN_0207A268
	str r0, [sp]
	ldrb r0, [r4, #4]
	bl ov104_0223B500
	adds r7, r0, #0
	movs r5, #0
	cmp r7, #0
	ble _02234B64
	ldr r0, _02234C78 @ =0x00000728
	adds r6, r4, r0
_02234B46:
	movs r1, #0x26
	adds r2, r4, r5
	lsls r1, r1, #4
	ldrb r1, [r2, r1]
	ldr r0, [sp]
	bl FUN_0207A0FC
	movs r1, #6
	adds r2, r6, #0
	bl FUN_02074B30
	adds r5, r5, #1
	adds r6, r6, #2
	cmp r5, r7
	blt _02234B46
_02234B64:
	b _02234C62
_02234B66:
	ldr r1, _02234C7C @ =0x000006F5
	ldrb r2, [r4, #4]
	ldrb r0, [r4, r1]
	adds r1, #0xf
	adds r3, r4, r1
	lsls r1, r2, #3
	adds r1, r2, r1
	adds r1, r3, r1
	bl FUN_020301E0
	adds r2, r0, #0
	cmp r2, #0xa
	bhs _02234C62
	ldr r1, _02234C7C @ =0x000006F5
	ldrb r3, [r4, #4]
	ldrb r0, [r4, r1]
	adds r1, #0xf
	adds r5, r4, r1
	lsls r1, r3, #3
	adds r2, r2, #1
	adds r1, r3, r1
	lsls r2, r2, #0x18
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl FUN_02030204
	b _02234C62
_02234B9C:
	bl FUN_0209BA80
	b _02234C62
_02234BA2:
	ldrb r0, [r4, #4]
	bl ov104_0223B5B0
	strh r0, [r5]
	b _02234C62
_02234BAC:
	ldrb r0, [r4, #4]
	strh r0, [r5]
	b _02234C62
_02234BB2:
	cmp r6, #0
	bne _02234BC0
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	b _02234C62
_02234BC0:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	b _02234C62
_02234BCA:
	ldrb r1, [r4, #5]
	adds r0, #0x40
	movs r2, #0xb
	lsls r1, r1, #2
	adds r1, r4, r1
	ldrh r1, [r1, #0x18]
	movs r3, #0xb2
	bl ov104_0222E278
	ldrb r1, [r4, #5]
	movs r0, #0x15
	lsls r0, r0, #4
	lsls r1, r1, #1
	adds r1, r1, #1
	lsls r1, r1, #1
	adds r1, r4, r1
	ldrh r1, [r1, #0x18]
	adds r0, r4, r0
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222E278
	b _02234C62
_02234BF8:
	ldr r1, _02234C7C @ =0x000006F5
	ldrb r2, [r4, #4]
	ldrb r0, [r4, r1]
	adds r1, #0xf
	adds r3, r4, r1
	lsls r1, r2, #3
	adds r1, r2, r1
	adds r1, r3, r1
	bl FUN_020301E0
	strh r0, [r5]
	b _02234C62
_02234C10:
	bl ov104_02235578
	strh r0, [r5]
	b _02234C62
_02234C18:
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl FUN_0207A268
	movs r1, #0x26
	lsls r1, r1, #4
	ldrb r1, [r4, r1]
	bl FUN_0207A0FC
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	strh r0, [r5]
	b _02234C62
_02234C36:
	bl ov104_022356A0
	b _02234C62
_02234C3C:
	bl ov104_022356F4
	b _02234C62
_02234C42:
	movs r0, #0
	strh r0, [r5]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02234C62
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	cmp r0, #0x32
	bne _02234C5A
	movs r0, #1
	strh r0, [r5]
	b _02234C62
_02234C5A:
	cmp r0, #0xaa
	bne _02234C62
	movs r0, #2
	strh r0, [r5]
_02234C62:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02234C68: .4byte 0x000006F2
_02234C6C: .4byte 0x0000270F
_02234C70: .4byte 0x000006F8
_02234C74: .4byte 0x00000D88
_02234C78: .4byte 0x00000728
_02234C7C: .4byte 0x000006F5
	thumb_func_end ov104_02234A1C

	thumb_func_start ov104_02234C80
ov104_02234C80: @ 0x02234C80
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r0, [r0, #0x14]
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02234C80

	thumb_func_start ov104_02234C9C
ov104_02234C9C: @ 0x02234C9C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_02235534
	strh r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02234C9C

	thumb_func_start ov104_02234CCC
ov104_02234CCC: @ 0x02234CCC
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _02234CE8 @ =ov104_02234CEC
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_02234CE8: .4byte ov104_02234CEC
	thumb_func_end ov104_02234CCC

	thumb_func_start ov104_02234CEC
ov104_02234CEC: @ 0x02234CEC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC8C
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	movs r1, #0xd9
	lsls r1, r1, #4
	ldrb r2, [r0, r1]
	cmp r2, #2
	blo _02234D14
	movs r2, #0
	strb r2, [r0, r1]
	movs r0, #1
	pop {r4, pc}
_02234D14:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_02234CEC

	thumb_func_start ov104_02234D18
ov104_02234D18: @ 0x02234D18
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r1, [r5, #0x1c]
	adds r0, r1, #1
	str r0, [r5, #0x1c]
	ldr r0, [r5]
	ldrb r4, [r1]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r2, r0, #0
	bne _02234D3C
	movs r0, #0
	pop {r3, r4, r5, pc}
_02234D3C:
	lsls r1, r4, #4
	adds r1, r4, r1
	adds r2, #0x58
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r1, r2, r1
	bl ov104_022330FC
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02234D18

	thumb_func_start ov104_02234D50
ov104_02234D50: @ 0x02234D50
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r4, #0
	bl ov104_0223520C
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02234D50

	thumb_func_start ov104_02234D6C
ov104_02234D6C: @ 0x02234D6C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r5, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	ldr r0, [r5, #8]
	bl FUN_0207A268
	movs r1, #0x26
	lsls r1, r1, #4
	ldrb r1, [r4, r1]
	bl FUN_0207A0FC
	movs r1, #5
	movs r2, #0
	adds r6, r0, #0
	bl FUN_02074470
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02234DB0
	ldr r0, [r5, #8]
	bl FUN_0202440C
	adds r1, r6, #0
	bl FUN_0206D048
_02234DB0:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_02234D6C

	thumb_func_start ov104_02234DB4
ov104_02234DB4: @ 0x02234DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r1, #0
	str r0, [sp, #4]
	ldr r1, _02235090 @ =0x00000D98
	movs r0, #0xb
	adds r6, r2, #0
	str r3, [sp, #8]
	bl FUN_02018144
	ldr r1, _02235094 @ =0x02241AC4
	ldr r2, _02235090 @ =0x00000D98
	str r0, [r1]
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, _02235094 @ =0x02241AC4
	ldr r4, [r0]
	ldr r0, [sp, #4]
	bl FUN_02030114
	ldr r1, _02235098 @ =0x000006F8
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	adds r1, r1, #4
	str r0, [r4, r1]
	movs r0, #0xb
	ldr r1, _02235094 @ =0x02241AC4
	str r0, [r4]
	ldr r4, [r1]
	bl FUN_02079FF4
	movs r1, #0x99
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0xb
	bl FUN_02073C74
	ldr r1, _0223509C @ =0x00000D8C
	str r0, [r4, r1]
	ldr r0, _02235098 @ =0x000006F8
	ldr r4, [r4, r0]
	ldr r0, [sp, #4]
	bl FUN_0203026C
	str r0, [sp, #0xc]
	cmp r5, #0
	bne _02234ED0
	ldr r0, _02235094 @ =0x02241AC4
	ldr r0, [r0]
	strb r6, [r0, #4]
	ldrb r0, [r0, #4]
	bl ov104_0223B500
	adds r6, r0, #0
	ldr r0, _02235094 @ =0x02241AC4
	movs r1, #0
	ldr r0, [r0]
	strb r1, [r0, #5]
	adds r0, r4, #0
	bl FUN_02030108
	ldr r0, _02235094 @ =0x02241AC4
	ldr r1, [r0]
	ldrb r2, [r1, #4]
	cmp r2, #3
	bne _02234E48
	ldr r0, _022350A0 @ =0x000006FC
	ldr r0, [r1, r0]
	bl FUN_020507E4
	bl FUN_0206B6FC
	b _02234E54
_02234E48:
	ldr r0, [sp, #0xc]
	movs r3, #0
	movs r1, #5
	str r3, [sp]
	bl FUN_020302B4
_02234E54:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _02234E96
	ldr r0, _02235094 @ =0x02241AC4
	ldr r1, [r0]
	ldr r0, _022350A0 @ =0x000006FC
	ldr r0, [r1, r0]
	bl FUN_0203068C
	adds r4, r0, #0
	ldr r0, _02235094 @ =0x02241AC4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl FUN_0205E50C
	adds r5, r0, #0
	ldr r0, _02235094 @ =0x02241AC4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl FUN_0205E50C
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_02030698
	ldr r1, _02235094 @ =0x02241AC4
	ldr r1, [r1]
	strh r0, [r1, #8]
	b _02234EBA
_02234E96:
	ldr r5, _02235094 @ =0x02241AC4
	movs r4, #0
	ldr r0, [r5]
	ldr r7, _022350A0 @ =0x000006FC
	strh r4, [r0, #8]
_02234EA0:
	ldr r1, [r5]
	lsls r2, r4, #0x18
	ldr r0, [r1, r7]
	ldrb r1, [r1, #4]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl ov104_02235620
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x12
	blo _02234EA0
_02234EBA:
	ldr r0, _02235094 @ =0x02241AC4
	movs r1, #0x26
	ldr r3, [r0]
	ldr r0, [sp, #8]
	lsls r1, r1, #4
	strb r0, [r3, r1]
	add r0, sp, #0x20
	ldrb r2, [r0, #0x10]
	adds r0, r1, #1
	strb r2, [r3, r0]
	b _02234FBA
_02234ED0:
	ldr r0, _02235094 @ =0x02241AC4
	movs r1, #0
	ldr r5, [r0]
	str r1, [sp]
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02030198
	strb r0, [r5, #4]
	ldrb r0, [r5, #4]
	bl ov104_0223B500
	movs r2, #0
	adds r6, r0, #0
	ldr r0, _02235094 @ =0x02241AC4
	str r2, [sp]
	ldr r5, [r0]
	adds r0, r4, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02030198
	strb r0, [r5, #5]
	ldr r0, _02235094 @ =0x02241AC4
	ldr r1, [r0]
	ldr r0, _022350A0 @ =0x000006FC
	ldr r0, [r1, r0]
	bl FUN_0203068C
	adds r7, r0, #0
	ldr r0, _02235094 @ =0x02241AC4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl FUN_0205E50C
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	bl FUN_0205E50C
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r1, [sp, #0x10]
	adds r0, r7, #0
	bl FUN_02030698
	ldr r1, _02235094 @ =0x02241AC4
	movs r5, #0
	ldr r1, [r1]
	cmp r6, #0
	strh r0, [r1, #8]
	ble _02234F62
	adds r7, r5, #0
_02234F3C:
	lsls r2, r5, #0x18
	adds r0, r4, #0
	movs r1, #3
	lsrs r2, r2, #0x18
	adds r3, r7, #0
	str r7, [sp]
	bl FUN_02030198
	ldr r1, _02235094 @ =0x02241AC4
	ldr r1, [r1]
	adds r2, r1, r5
	movs r1, #0x26
	lsls r1, r1, #4
	strb r0, [r2, r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blt _02234F3C
_02234F62:
	movs r5, #0
	adds r7, r5, #0
_02234F66:
	lsls r2, r5, #0x18
	adds r0, r4, #0
	movs r1, #2
	lsrs r2, r2, #0x18
	adds r3, r7, #0
	str r7, [sp]
	bl FUN_02030198
	ldr r1, _02235094 @ =0x02241AC4
	ldr r2, [r1]
	lsls r1, r5, #1
	adds r1, r2, r1
	strh r0, [r1, #0x18]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x14
	blo _02234F66
	movs r5, #0
_02234F8C:
	ldr r0, _02235094 @ =0x02241AC4
	lsls r2, r5, #0x18
	ldr r7, [r0]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #4
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030198
	lsls r1, r5, #1
	lsls r0, r0, #0x18
	adds r2, r7, r1
	movs r1, #0x9a
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	strh r0, [r2, r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x14
	blo _02234F8C
_02234FBA:
	movs r5, #0
	cmp r6, #0
	ble _02234FF4
	ldr r7, _02235094 @ =0x02241AC4
_02234FC2:
	ldr r4, [r7]
	ldr r0, _022350A0 @ =0x000006FC
	ldr r0, [r4, r0]
	bl FUN_0207A268
	movs r1, #0x26
	adds r2, r4, r5
	lsls r1, r1, #4
	ldrb r1, [r2, r1]
	bl FUN_0207A0FC
	ldr r4, [r7]
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	lsls r1, r5, #1
	adds r2, r4, r1
	ldr r1, _022350A4 @ =0x00000728
	strh r0, [r2, r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blt _02234FC2
_02234FF4:
	ldr r0, _02235094 @ =0x02241AC4
	movs r1, #0xa
	ldr r4, [r0]
	movs r0, #0
	str r0, [r4, #0x10]
	ldrh r0, [r4, #8]
	blx FUN_020E1F6C
	strh r0, [r4, #0xa]
	ldrb r0, [r4, #4]
	cmp r0, #2
	bne _0223502E
	ldr r4, _02235094 @ =0x02241AC4
	ldr r6, _022350A8 @ =0x00000716
	movs r5, #0
	movs r7, #9
_02235014:
	ldr r1, [r4]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	adds r1, r1, r6
	adds r2, r7, #0
	bl FUN_02030204
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x12
	blo _02235014
	b _0223506E
_0223502E:
	ldr r5, _02235094 @ =0x02241AC4
	movs r4, #0
	add r7, sp, #0x14
_02235034:
	ldr r1, [r5]
	str r7, [sp]
	ldrb r1, [r1, #4]
	lsls r2, r4, #0x18
	add r3, sp, #0x14
	ldr r0, [sp, #4]
	lsrs r2, r2, #0x18
	adds r3, #2
	bl ov104_022355C0
	adds r2, r0, #0
	lsls r0, r4, #0x18
	lsls r2, r2, #0x18
	ldr r1, [r5]
	ldr r3, _022350AC @ =0x00000704
	lsrs r0, r0, #0x18
	adds r6, r1, r3
	ldrb r3, [r1, #4]
	lsrs r2, r2, #0x18
	lsls r1, r3, #3
	adds r1, r3, r1
	adds r1, r6, r1
	bl FUN_02030204
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x12
	blo _02235034
_0223506E:
	ldr r0, _02235094 @ =0x02241AC4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl ov104_0223B5B0
	cmp r0, #1
	bne _02235088
	ldr r0, _02235094 @ =0x02241AC4
	ldr r1, [r0]
	ldr r0, _022350A0 @ =0x000006FC
	ldr r0, [r1, r0]
	bl ov104_0222E630
_02235088:
	ldr r0, _02235094 @ =0x02241AC4
	ldr r0, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02235090: .4byte 0x00000D98
_02235094: .4byte 0x02241AC4
_02235098: .4byte 0x000006F8
_0223509C: .4byte 0x00000D8C
_022350A0: .4byte 0x000006FC
_022350A4: .4byte 0x00000728
_022350A8: .4byte 0x00000716
_022350AC: .4byte 0x00000704
	thumb_func_end ov104_02234DB4

	thumb_func_start ov104_022350B0
ov104_022350B0: @ 0x022350B0
	ldr r3, _022350B4 @ =ov104_022350B8
	bx r3
	.align 2, 0
_022350B4: .4byte ov104_022350B8
	thumb_func_end ov104_022350B0

	thumb_func_start ov104_022350B8
ov104_022350B8: @ 0x022350B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldrb r2, [r5, #4]
	movs r4, #0
	movs r6, #1
	cmp r2, #0
	beq _022350CA
	movs r6, #2
_022350CA:
	ldr r1, _02235180 @ =0x000006F5
	lsls r3, r2, #3
	ldrb r0, [r5, r1]
	adds r1, #0xf
	adds r1, r5, r1
	adds r2, r2, r3
	adds r1, r1, r2
	bl FUN_020301E0
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_02235704
	strb r0, [r5, #7]
	adds r0, r5, #0
	adds r0, #0x18
	str r0, [sp]
	ldr r0, _02235180 @ =0x000006F5
	ldrb r3, [r5, #5]
	ldrb r0, [r5, r0]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_0223AF58
	ldrb r0, [r5, #5]
	adds r1, r6, #0
	adds r3, r7, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x18
	str r0, [sp, #4]
	ldrb r0, [r5, #4]
	ldrh r2, [r5, #0xa]
	bl ov104_0223AFB4
	ldrb r0, [r5, #5]
	adds r6, r5, #0
	adds r6, #0x18
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x17
	ldrh r1, [r6, r0]
	str r0, [sp, #0xc]
	ldr r0, _02235184 @ =0x0000FECD
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _02235134
	adds r0, r5, #0
	bl ov104_0223B5C0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_02235134:
	ldr r0, [sp, #0xc]
	ldrh r1, [r6, r0]
	ldr r0, _02235188 @ =0x00000133
	cmp r1, r0
	bne _02235140
	movs r4, #1
_02235140:
	movs r0, #0x4d
	lsls r0, r0, #2
	cmp r1, r0
	bne _0223514A
	movs r4, #2
_0223514A:
	movs r0, #0x99
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0207A0FC
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0223518C @ =0x000006F4
	ldrb r3, [r5, #5]
	ldrb r1, [r5, r1]
	movs r0, #1
	adds r2, r7, #0
	bl ov104_0223B0C8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02235180: .4byte 0x000006F5
_02235184: .4byte 0x0000FECD
_02235188: .4byte 0x00000133
_0223518C: .4byte 0x000006F4
	thumb_func_end ov104_022350B8

	thumb_func_start ov104_02235190
ov104_02235190: @ 0x02235190
	push {r4, lr}
	adds r4, r0, #0
	beq _022351C0
	movs r0, #0x99
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022351A4
	bl FUN_020181C4
_022351A4:
	ldr r0, _022351C4 @ =0x00000D8C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022351B0
	bl FUN_020181C4
_022351B0:
	ldr r2, _022351C8 @ =0x00000D98
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020C4CF4
	adds r0, r4, #0
	bl FUN_020181C4
_022351C0:
	pop {r4, pc}
	nop
_022351C4: .4byte 0x00000D8C
_022351C8: .4byte 0x00000D98
	thumb_func_end ov104_02235190

	thumb_func_start ov104_022351CC
ov104_022351CC: @ 0x022351CC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #0
	bl ov104_02235208
	ldr r1, _02235200 @ =0x000006F2
	strh r0, [r4, r1]
	ldrh r2, [r4, r1]
	adds r0, r1, #3
	strb r2, [r4, r0]
	ldrh r0, [r4, r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl ov104_0223B5A4
	ldr r1, _02235204 @ =0x000006F4
	strb r0, [r4, r1]
	adds r0, r1, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x11
	blo _022351FE
	movs r2, #0x11
	adds r0, r1, #1
	strb r2, [r4, r0]
_022351FE:
	pop {r4, pc}
	.align 2, 0
_02235200: .4byte 0x000006F2
_02235204: .4byte 0x000006F4
	thumb_func_end ov104_022351CC

	thumb_func_start ov104_02235208
ov104_02235208: @ 0x02235208
	ldrh r0, [r0, #6]
	bx lr
	thumb_func_end ov104_02235208

	thumb_func_start ov104_0223520C
ov104_0223520C: @ 0x0223520C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldrb r6, [r5, #4]
	adds r4, r1, #0
	cmp r6, #3
	beq _0223525E
	adds r0, r6, #0
	bl FUN_0205E534
	adds r7, r0, #0
	ldrb r0, [r5, #4]
	bl FUN_0205E55C
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	bl FUN_0205E534
	bl FUN_0205E6A8
	str r0, [sp, #0x14]
	adds r0, r6, #0
	bl FUN_0205E584
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	add r0, sp, #0x18
	str r0, [sp, #0xc]
	ldr r0, _02235268 @ =0x000006FC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x14]
	adds r1, r7, #0
	bl FUN_020309A0
	add sp, #0x20
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0223525E:
	movs r0, #0
	strh r0, [r4]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235268: .4byte 0x000006FC
	thumb_func_end ov104_0223520C

	thumb_func_start ov104_0223526C
ov104_0223526C: @ 0x0223526C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, _022354A4 @ =0x000006FC
	adds r4, r1, #0
	ldr r0, [r5, r0]
	bl FUN_0203026C
	str r0, [sp, #4]
	ldr r0, _022354A4 @ =0x000006FC
	ldr r0, [r5, r0]
	bl FUN_0203068C
	str r0, [sp, #0xc]
	ldrb r1, [r5, #4]
	add r0, sp, #0x14
	strb r1, [r0, #8]
	movs r1, #0
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, _022354A8 @ =0x000006F8
	adds r2, r1, #0
	ldr r0, [r5, r0]
	adds r3, r1, #0
	bl FUN_02030140
	ldr r0, _022354A8 @ =0x000006F8
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_0203012C
	ldr r0, _022354A4 @ =0x000006FC
	ldr r0, [r5, r0]
	bl FUN_0207A268
	movs r1, #0x26
	lsls r1, r1, #4
	ldrb r1, [r5, r1]
	bl FUN_0207A0FC
	movs r1, #5
	movs r2, #0
	str r0, [sp, #8]
	bl FUN_02074470
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r5, #4]
	bl FUN_0205E55C
	adds r7, r0, #0
	ldrb r0, [r5, #4]
	bl FUN_0205E55C
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	bl FUN_02030698
	adds r7, r0, #0
	movs r2, #0
	ldrb r1, [r5, #5]
	add r0, sp, #0x14
	adds r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, _022354A8 @ =0x000006F8
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_02030140
	ldrb r0, [r5, #4]
	bl FUN_0205E50C
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	bl FUN_0205E50C
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl FUN_020306E4
	cmp r4, #2
	beq _022353B8
	ldrb r4, [r5, #4]
	cmp r4, #3
	beq _02235348
	adds r0, r4, #0
	bl FUN_0205E534
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_0205E534
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	bl FUN_020306E4
	b _0223538A
_02235348:
	cmp r7, r6
	beq _0223536C
	adds r0, r4, #0
	bl FUN_0205E534
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_0205E534
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	bl FUN_020306E4
	b _0223538A
_0223536C:
	adds r0, r4, #0
	bl FUN_0205E534
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_0205E534
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	bl FUN_02030848
_0223538A:
	ldrb r1, [r5, #6]
	add r0, sp, #0x14
	movs r3, #0
	strb r1, [r0, #8]
	add r0, sp, #0x1c
	str r0, [sp]
	ldrb r2, [r5, #4]
	ldr r0, [sp, #4]
	movs r1, #5
	bl FUN_02030280
	ldrb r0, [r5, #4]
	cmp r0, #3
	bne _022353B8
	movs r0, #0x6a
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrb r3, [r5, #6]
	ldr r0, [sp, #0xc]
	movs r1, #0x6a
	bl FUN_020306E4
_022353B8:
	movs r4, #0
	add r6, sp, #0x14
	add r7, sp, #0x14
_022353BE:
	lsls r0, r4, #1
	adds r0, r5, r0
	ldrh r0, [r0, #0x18]
	lsls r2, r4, #0x18
	movs r1, #2
	strh r0, [r7]
	ldr r0, _022354A8 @ =0x000006F8
	str r6, [sp]
	ldr r0, [r5, r0]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030140
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x14
	blo _022353BE
	movs r4, #0
	add r6, sp, #0x1c
	add r7, sp, #0x14
_022353E8:
	movs r0, #0x26
	adds r1, r5, r4
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	lsls r2, r4, #0x18
	movs r1, #3
	strb r0, [r7, #8]
	ldr r0, _022354A8 @ =0x000006F8
	str r6, [sp]
	ldr r0, [r5, r0]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030140
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	blo _022353E8
	ldr r0, _022354AC @ =0x00000704
	movs r4, #0
	adds r6, r5, r0
	add r7, sp, #0x14
_02235416:
	ldrb r2, [r5, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r2, #3
	adds r1, r2, r1
	adds r1, r6, r1
	bl FUN_020301E0
	strb r0, [r7, #8]
	ldr r0, _022354A4 @ =0x000006FC
	lsls r2, r4, #0x18
	ldrb r1, [r5, #4]
	ldrb r3, [r7, #8]
	ldr r0, [r5, r0]
	lsrs r2, r2, #0x18
	bl ov104_02235620
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x12
	blo _02235416
	movs r4, #0
	add r6, sp, #0x14
	add r7, sp, #0x14
_02235448:
	lsls r0, r4, #1
	adds r1, r5, r0
	movs r0, #0x9a
	lsls r0, r0, #2
	ldrh r0, [r1, r0]
	lsls r2, r4, #0x18
	movs r1, #4
	strh r0, [r7]
	ldr r0, _022354A8 @ =0x000006F8
	str r6, [sp]
	ldr r0, [r5, r0]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030140
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x14
	blo _02235448
	ldrb r0, [r5, #4]
	bl FUN_0205E55C
	adds r4, r0, #0
	ldrb r0, [r5, #4]
	bl FUN_0205E55C
	bl FUN_0205E6A8
	adds r5, r0, #0
	ldr r0, [sp, #8]
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	adds r3, r0, #0
	lsls r3, r3, #0x10
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	adds r2, r5, #0
	lsrs r3, r3, #0x10
	bl FUN_020306E4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022354A4: .4byte 0x000006FC
_022354A8: .4byte 0x000006F8
_022354AC: .4byte 0x00000704
	thumb_func_end ov104_0223526C

	thumb_func_start ov104_022354B0
ov104_022354B0: @ 0x022354B0
	ldrb r1, [r0, #5]
	adds r1, r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r0, #5]
	bx lr
	.align 2, 0
	thumb_func_end ov104_022354B0

	thumb_func_start ov104_022354BC
ov104_022354BC: @ 0x022354BC
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end ov104_022354BC

	thumb_func_start ov104_022354C0
ov104_022354C0: @ 0x022354C0
	push {r3, lr}
	sub sp, #0x30
	adds r2, r0, #0
	ldrb r3, [r2, #5]
	add r0, sp, #0
	lsls r3, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x17
	adds r1, r2, r1
	ldrh r1, [r1, #0x18]
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl ov104_0222E10C
	add sp, #0x30
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022354C0

	thumb_func_start ov104_022354F4
ov104_022354F4: @ 0x022354F4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #4]
	ldr r0, _02235514 @ =0x00000704
	adds r2, r4, r0
	lsls r0, r1, #3
	adds r0, r1, r0
	adds r0, r2, r0
	bl FUN_02030244
	adds r0, r4, #0
	movs r1, #1
	bl ov104_0223526C
	pop {r4, pc}
	nop
_02235514: .4byte 0x00000704
	thumb_func_end ov104_022354F4

	thumb_func_start ov104_02235518
ov104_02235518: @ 0x02235518
	movs r1, #1
	strb r1, [r0, #6]
	ldrh r1, [r0, #0xa]
	cmp r1, #0x12
	bhs _02235526
	adds r1, r1, #1
	strh r1, [r0, #0xa]
_02235526:
	ldr r3, _02235530 @ =ov104_0223526C
	movs r1, #0
	strb r1, [r0, #5]
	bx r3
	nop
_02235530: .4byte ov104_0223526C
	thumb_func_end ov104_02235518

	thumb_func_start ov104_02235534
ov104_02235534: @ 0x02235534
	push {r3, lr}
	cmp r1, #7
	bhi _02235576
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02235546: @ jump table
	.2byte _02235556 - _02235546 - 2 @ case 0
	.2byte _0223555C - _02235546 - 2 @ case 1
	.2byte _02235562 - _02235546 - 2 @ case 2
	.2byte _02235568 - _02235546 - 2 @ case 3
	.2byte _02235576 - _02235546 - 2 @ case 4
	.2byte _02235576 - _02235546 - 2 @ case 5
	.2byte _02235576 - _02235546 - 2 @ case 6
	.2byte _02235572 - _02235546 - 2 @ case 7
_02235556:
	bl ov104_0222ED00
	pop {r3, pc}
_0223555C:
	bl ov104_0222ED44
	pop {r3, pc}
_02235562:
	bl ov104_0222EDA8
	pop {r3, pc}
_02235568:
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl ov104_0222EE14
	pop {r3, pc}
_02235572:
	bl ov104_0222EE60
_02235576:
	pop {r3, pc}
	thumb_func_end ov104_02235534

	thumb_func_start ov104_02235578
ov104_02235578: @ 0x02235578
	ldrb r3, [r0, #4]
	ldrh r2, [r0, #0xa]
	cmp r3, #1
	bhi _0223558E
	cmp r2, #0x12
	blo _02235588
	movs r1, #0xc
	b _0223559A
_02235588:
	ldr r1, _022355B8 @ =0x0223FA5C
	ldrb r1, [r1, r2]
	b _0223559A
_0223558E:
	cmp r2, #0x12
	blo _02235596
	movs r1, #0x17
	b _0223559A
_02235596:
	ldr r1, _022355BC @ =0x0223FA70
	ldrb r1, [r1, r2]
_0223559A:
	cmp r3, #0
	bne _022355AC
	ldrh r0, [r0, #8]
	cmp r0, #0x32
	beq _022355A8
	cmp r0, #0xaa
	bne _022355B2
_022355A8:
	movs r1, #0x14
	b _022355B2
_022355AC:
	cmp r3, #2
	bne _022355B2
	movs r1, #0xc
_022355B2:
	adds r0, r1, #0
	bx lr
	nop
_022355B8: .4byte 0x0223FA5C
_022355BC: .4byte 0x0223FA70
	thumb_func_end ov104_02235578

	thumb_func_start ov104_022355C0
ov104_022355C0: @ 0x022355C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r4, [sp, #0x20]
	bl FUN_0203068C
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_0205E4E0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_0205E4E0
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl FUN_02030698
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0xf
	ands r0, r1
	strh r0, [r6]
	asrs r0, r1, #4
	strh r0, [r4]
	lsrs r2, r5, #0x1f
	lsls r1, r5, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	bne _02235618
	add sp, #8
	ldrh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02235618:
	ldrh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022355C0

	thumb_func_start ov104_02235620
ov104_02235620: @ 0x02235620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r3, #0
	add r3, sp, #0xc
	str r3, [sp]
	add r3, sp, #0xc
	adds r3, #2
	str r0, [sp, #4]
	adds r6, r1, #0
	adds r5, r2, #0
	bl ov104_022355C0
	add r0, sp, #0xc
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsrs r3, r5, #0x1f
	lsls r1, r1, #4
	orrs r0, r1
	lsls r2, r5, #0x1f
	lsls r0, r0, #0x18
	subs r2, r2, r3
	movs r1, #0x1f
	rors r2, r1
	adds r1, r3, r2
	lsls r1, r1, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x18
	bne _0223565C
	movs r2, #0xf0
	b _0223565E
_0223565C:
	movs r2, #0xf
_0223565E:
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r1, #2
	adds r1, r7, #0
	lsls r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r0, [sp, #4]
	bl FUN_0203068C
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_0205E4E0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_0205E4E0
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r1, [sp, #8]
	adds r0, r7, #0
	adds r3, r4, #0
	bl FUN_020306E4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02235620

	thumb_func_start ov104_022356A0
ov104_022356A0: @ 0x022356A0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #2
	beq _022356EE
	ldr r0, _022356F0 @ =0x00000704
	movs r4, #0
	adds r6, r5, r0
_022356B0:
	ldrb r2, [r5, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r2, #3
	adds r1, r2, r1
	adds r1, r6, r1
	bl FUN_020301E0
	cmp r0, #0xa
	blo _022356CA
	adds r4, r4, #1
	cmp r4, #0x11
	blt _022356B0
_022356CA:
	cmp r4, #0x11
	bne _022356EE
	ldr r0, _022356F0 @ =0x00000704
	movs r4, #0
	adds r6, r5, r0
	movs r7, #9
_022356D6:
	ldrb r2, [r5, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r2, #3
	adds r1, r2, r1
	adds r1, r6, r1
	adds r2, r7, #0
	bl FUN_02030204
	adds r4, r4, #1
	cmp r4, #0x11
	blt _022356D6
_022356EE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022356F0: .4byte 0x00000704
	thumb_func_end ov104_022356A0

	thumb_func_start ov104_022356F4
ov104_022356F4: @ 0x022356F4
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0223B64C
	bl ov104_0223B6C4
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov104_022356F4

	thumb_func_start ov104_02235704
ov104_02235704: @ 0x02235704
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r1, _022358D0 @ =0x000006F5
	ldrb r2, [r6, #4]
	ldrb r0, [r6, r1]
	adds r1, #0xf
	adds r3, r6, r1
	lsls r1, r2, #3
	adds r1, r2, r1
	adds r1, r3, r1
	bl FUN_020301E0
	adds r4, r0, #0
	adds r0, r6, #0
	bl ov104_0223B64C
	str r0, [sp, #4]
	ldrb r0, [r6, #4]
	cmp r0, #2
	bne _02235738
	ldr r0, [sp, #4]
	add sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6, r7, pc}
_02235738:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02235750
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0223575E
_02235750:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0223575E:
	ldr r5, [r6, #0xc]
	blx FUN_020E1740
	lsls r1, r5, #1
	adds r1, r5, r1
	subs r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	blx FUN_020E17B4
	ldr r1, _022358D4 @ =0x45800000
	blx FUN_020E1304
	blx FUN_020E16BC
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r1, _022358D8 @ =0x40140000
	movs r0, #0
	blx FUN_020E0234
	blx FUN_020DFF84
	adds r5, r0, #0
	ldr r0, [sp, #4]
	blx FUN_020E17B4
	adds r1, r5, #0
	blx FUN_020E1304
	blx FUN_020E16BC
	ldr r3, _022358DC @ =0x3FF00000
	movs r2, #0
	blx FUN_020E0EF8
	bhs _022357B2
	adds r0, r4, #0
	blx FUN_020E17B4
	str r0, [sp]
	b _022357F0
_022357B2:
	ldr r0, [sp, #4]
	muls r0, r4, r0
	cmp r0, #0
	ble _022357CC
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _022357DA
_022357CC:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_022357DA:
	blx FUN_020E1740
	blx FUN_020E17B4
	ldr r1, _022358D4 @ =0x45800000
	blx FUN_020E1304
	adds r1, r5, #0
	blx FUN_020E1304
	str r0, [sp]
_022357F0:
	ldr r0, _022358E0 @ =0x00000704
	movs r5, #0
	adds r4, r5, #0
	adds r7, r6, r0
_022357F8:
	ldr r0, _022358D0 @ =0x000006F5
	ldrb r0, [r6, r0]
	cmp r4, r0
	bne _02235816
	adds r0, r5, #0
	blx FUN_020E16BC
	ldr r3, _022358DC @ =0x3FF00000
	movs r2, #0
	blx FUN_020DFC6C
	blx FUN_020DFF84
	adds r5, r0, #0
	b _0223583E
_02235816:
	ldrb r2, [r6, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r2, #3
	adds r1, r2, r1
	adds r1, r7, r1
	bl FUN_020301E0
	cmp r0, #0
	beq _0223583E
	adds r0, r5, #0
	blx FUN_020E16BC
	ldr r3, _022358DC @ =0x3FF00000
	movs r2, #0
	blx FUN_020DFC6C
	blx FUN_020DFF84
	adds r5, r0, #0
_0223583E:
	adds r4, r4, #1
	cmp r4, #0x12
	blt _022357F8
	adds r0, r5, #0
	blx FUN_020E16BC
	adds r2, r0, #0
	movs r0, #0
	adds r3, r1, #0
	adds r1, r0, #0
	blx FUN_020E1020
	beq _0223586C
	adds r0, r5, #0
	blx FUN_020E16BC
	ldr r3, _022358DC @ =0x3FF00000
	movs r2, #0
	blx FUN_020E074C
	blx FUN_020DFF84
	adds r5, r0, #0
_0223586C:
	adds r0, r5, #0
	blx FUN_020E16BC
	ldr r3, _022358E4 @ =0x3FE00000
	movs r2, #0
	blx FUN_020E0234
	blx FUN_020DFF84
	adds r4, r0, #0
	ldr r0, [sp, #8]
	blx FUN_020E17B4
	ldr r1, _022358D4 @ =0x45800000
	blx FUN_020E1304
	ldr r1, [sp]
	blx FUN_020E0B00
	adds r1, r0, #0
	adds r0, r4, #0
	blx FUN_020E0B00
	adds r5, r0, #0
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r5, #0
	blx FUN_020E1740
	blx FUN_020E17B4
	adds r1, r0, #0
	adds r0, r5, #0
	blx FUN_020E1290
	beq _022358B8
	adds r4, r4, #1
_022358B8:
	ldr r0, [sp, #4]
	cmp r4, r0
	ble _022358C0
	adds r4, r0, #0
_022358C0:
	cmp r4, #0x64
	ble _022358C6
	movs r4, #0x64
_022358C6:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022358D0: .4byte 0x000006F5
_022358D4: .4byte 0x45800000
_022358D8: .4byte 0x40140000
_022358DC: .4byte 0x3FF00000
_022358E0: .4byte 0x00000704
_022358E4: .4byte 0x3FE00000
	thumb_func_end ov104_02235704

	thumb_func_start ov104_022358E8
ov104_022358E8: @ 0x022358E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	bl ov104_0222FC00
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x10]
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	str r0, [sp, #0x14]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	str r6, [sp]
	lsls r2, r4, #0x18
	ldr r1, [sp, #0x14]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsrs r2, r2, #0x18
	bl ov104_022361B4
	adds r1, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B980
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022358E8

	thumb_func_start ov104_0223594C
ov104_0223594C: @ 0x0223594C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r4, #0
	bl ov104_02236514
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223594C

	thumb_func_start ov104_02235968
ov104_02235968: @ 0x02235968
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_022367AC
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02235968

	thumb_func_start ov104_0223597C
ov104_0223597C: @ 0x0223597C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r7, r0, #0
	movs r0, #0xb
	movs r1, #0x30
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x30
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r6, #8]
	adds r1, r7, #0
	str r0, [r4]
	adds r0, r4, #0
	bl ov104_02235B3C
	ldr r0, _022359C8 @ =ov104_02235B84
	ldr r1, _022359CC @ =0x0223FA94
	str r0, [sp]
	ldr r0, [r5]
	adds r2, r4, #0
	ldr r0, [r0]
	movs r3, #0
	bl FUN_0209B988
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022359C8: .4byte ov104_02235B84
_022359CC: .4byte 0x0223FA94
	thumb_func_end ov104_0223597C

	thumb_func_start ov104_022359D0
ov104_022359D0: @ 0x022359D0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r7, r0, #0
	movs r0, #0xb
	movs r1, #0x30
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x30
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r6, #8]
	adds r1, r7, #0
	str r0, [r4]
	adds r0, r4, #0
	bl ov104_02235B3C
	ldr r0, _02235A1C @ =ov104_02235B84
	ldr r1, _02235A20 @ =0x0223FA84
	str r0, [sp]
	ldr r0, [r5]
	adds r2, r4, #0
	ldr r0, [r0]
	movs r3, #0
	bl FUN_0209B988
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02235A1C: .4byte ov104_02235B84
_02235A20: .4byte 0x0223FA84
	thumb_func_end ov104_022359D0

	thumb_func_start ov104_02235A24
ov104_02235A24: @ 0x02235A24
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	ldr r5, [r4, #0xc]
	movs r1, #0
	ldr r0, [r5, #4]
	bl FUN_0207A0FC
	adds r2, r0, #0
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_0207A128
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_0207A0FC
	adds r2, r0, #0
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_0207A128
	ldrb r0, [r4, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02235A74
	ldr r0, [r5, #4]
	movs r1, #2
	bl FUN_0207A0FC
	adds r2, r0, #0
	ldr r0, [r4, #0x28]
	movs r1, #2
	bl FUN_0207A128
	b _02235A98
_02235A74:
	ldr r0, [r5, #0xc]
	movs r1, #0
	bl FUN_0207A0FC
	adds r2, r0, #0
	ldr r0, [r4, #0x28]
	movs r1, #2
	bl FUN_0207A128
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_0207A0FC
	adds r2, r0, #0
	ldr r0, [r4, #0x28]
	movs r1, #3
	bl FUN_0207A128
_02235A98:
	ldr r0, [r5, #0x14]
	bl FUN_02052868
	str r0, [r4, #0x1c]
	adds r0, r5, #0
	bl FUN_020520A4
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02235A24

	thumb_func_start ov104_02235AAC
ov104_02235AAC: @ 0x02235AAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r6, #0
	adds r4, r0, #0
	bl ov104_0223B810
	adds r2, r0, #0
	str r2, [r4, #0xc]
	movs r3, #0
	str r3, [sp]
	ldr r0, [r5]
	ldr r1, _02235AE4 @ =0x020EA358
	ldr r0, [r0]
	bl FUN_0209B988
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02235AE4: .4byte 0x020EA358
	thumb_func_end ov104_02235AAC

	thumb_func_start ov104_02235AE8
ov104_02235AE8: @ 0x02235AE8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r7, r0, #0
	movs r0, #0xb
	movs r1, #0x30
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x30
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r6, #8]
	adds r1, r7, #0
	str r0, [r4]
	adds r0, r4, #0
	bl ov104_02235B3C
	ldr r0, _02235B34 @ =ov104_02235B84
	ldr r1, _02235B38 @ =0x0223FAA4
	str r0, [sp]
	ldr r0, [r5]
	adds r2, r4, #0
	ldr r0, [r0]
	movs r3, #0
	bl FUN_0209B988
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02235B34: .4byte ov104_02235B84
_02235B38: .4byte 0x0223FAA4
	thumb_func_end ov104_02235AE8

	thumb_func_start ov104_02235B3C
ov104_02235B3C: @ 0x02235B3C
	push {r4, r5, r6, r7}
	ldrb r2, [r1, #0x10]
	movs r6, #0
	strb r2, [r0, #4]
	ldr r2, [r1, #0x28]
	str r2, [r0, #0x18]
	ldr r2, [r1, #0x2c]
	str r2, [r0, #0x1c]
	ldr r2, _02235B80 @ =0x00000A1C
	str r1, [r0, #0x24]
	ldrh r2, [r1, r2]
	strh r2, [r0, #0x28]
	movs r2, #0xde
	lsls r2, r2, #2
	adds r3, r2, #4
_02235B5A:
	movs r7, #0x37
	adds r5, r1, r6
	lsls r7, r7, #4
	ldrb r7, [r5, r7]
	adds r4, r0, r6
	adds r6, r6, #1
	strb r7, [r4, #8]
	movs r7, #0xdd
	lsls r7, r7, #2
	ldrb r7, [r5, r7]
	cmp r6, #4
	strb r7, [r4, #0xc]
	ldrb r7, [r5, r2]
	strb r7, [r4, #0x10]
	ldrb r5, [r5, r3]
	strb r5, [r4, #0x14]
	blt _02235B5A
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02235B80: .4byte 0x00000A1C
	thumb_func_end ov104_02235B3C

	thumb_func_start ov104_02235B84
ov104_02235B84: @ 0x02235B84
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	adds r1, r4, #0
	bl ov104_022367DC
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov104_02235B84

	thumb_func_start ov104_02235B98
ov104_02235B98: @ 0x02235B98
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_02236BF0
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02235B98

	thumb_func_start ov104_02235BAC
ov104_02235BAC: @ 0x02235BAC
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_02236BF8
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02235BAC

	thumb_func_start ov104_02235BC0
ov104_02235BC0: @ 0x02235BC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, [r0, #0x1c]
	adds r1, r0, #0
	adds r2, r3, #1
	str r2, [r1, #0x1c]
	ldrb r1, [r3]
	adds r3, r2, #1
	str r0, [sp, #0x10]
	str r1, [sp, #0x18]
	adds r1, r0, #0
	str r3, [r1, #0x1c]
	ldrb r6, [r2]
	adds r2, r3, #1
	str r2, [r1, #0x1c]
	ldrb r1, [r3]
	str r1, [sp, #0x14]
	bl ov104_0222FBE4
	adds r5, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r7, r0, #0
	ldr r0, [sp, #0x18]
	cmp r0, #0x2c
	bls _02235C08
	b _02235F7E
_02235C08:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02235C14: @ jump table
	.2byte _02235F7E - _02235C14 - 2 @ case 0
	.2byte _02235F7E - _02235C14 - 2 @ case 1
	.2byte _02235C6E - _02235C14 - 2 @ case 2
	.2byte _02235C72 - _02235C14 - 2 @ case 3
	.2byte _02235C80 - _02235C14 - 2 @ case 4
	.2byte _02235C86 - _02235C14 - 2 @ case 5
	.2byte _02235F7E - _02235C14 - 2 @ case 6
	.2byte _02235C94 - _02235C14 - 2 @ case 7
	.2byte _02235F7E - _02235C14 - 2 @ case 8
	.2byte _02235C9C - _02235C14 - 2 @ case 9
	.2byte _02235CA6 - _02235C14 - 2 @ case 10
	.2byte _02235F7E - _02235C14 - 2 @ case 11
	.2byte _02235F7E - _02235C14 - 2 @ case 12
	.2byte _02235F7E - _02235C14 - 2 @ case 13
	.2byte _02235CB0 - _02235C14 - 2 @ case 14
	.2byte _02235CBA - _02235C14 - 2 @ case 15
	.2byte _02235CCE - _02235C14 - 2 @ case 16
	.2byte _02235E1A - _02235C14 - 2 @ case 17
	.2byte _02235CE4 - _02235C14 - 2 @ case 18
	.2byte _02235D10 - _02235C14 - 2 @ case 19
	.2byte _02235D1A - _02235C14 - 2 @ case 20
	.2byte _02235D26 - _02235C14 - 2 @ case 21
	.2byte _02235D2E - _02235C14 - 2 @ case 22
	.2byte _02235D36 - _02235C14 - 2 @ case 23
	.2byte _02235D40 - _02235C14 - 2 @ case 24
	.2byte _02235E20 - _02235C14 - 2 @ case 25
	.2byte _02235D4A - _02235C14 - 2 @ case 26
	.2byte _02235D52 - _02235C14 - 2 @ case 27
	.2byte _02235D66 - _02235C14 - 2 @ case 28
	.2byte _02235D6E - _02235C14 - 2 @ case 29
	.2byte _02235D76 - _02235C14 - 2 @ case 30
	.2byte _02235D88 - _02235C14 - 2 @ case 31
	.2byte _02235D98 - _02235C14 - 2 @ case 32
	.2byte _02235D9E - _02235C14 - 2 @ case 33
	.2byte _02235DDC - _02235C14 - 2 @ case 34
	.2byte _02235E10 - _02235C14 - 2 @ case 35
	.2byte _02235E26 - _02235C14 - 2 @ case 36
	.2byte _02235E3A - _02235C14 - 2 @ case 37
	.2byte _02235E68 - _02235C14 - 2 @ case 38
	.2byte _02235E72 - _02235C14 - 2 @ case 39
	.2byte _02235EA2 - _02235C14 - 2 @ case 40
	.2byte _02235EC4 - _02235C14 - 2 @ case 41
	.2byte _02235EF0 - _02235C14 - 2 @ case 42
	.2byte _02235EF8 - _02235C14 - 2 @ case 43
	.2byte _02235F02 - _02235C14 - 2 @ case 44
_02235C6E:
	strb r6, [r4, #0x10]
	b _02235F7E
_02235C72:
	lsls r0, r6, #1
	adds r1, r4, r0
	movs r0, #0xe
	lsls r0, r0, #6
	ldrh r0, [r1, r0]
	strh r0, [r5]
	b _02235F7E
_02235C80:
	ldrh r0, [r4, #0x14]
	strh r0, [r5]
	b _02235F7E
_02235C86:
	ldrh r1, [r4, #0x14]
	ldr r0, _02235F84 @ =0x0000270F
	cmp r1, r0
	bhs _02235D0E
	adds r0, r1, #1
	strh r0, [r4, #0x14]
	b _02235F7E
_02235C94:
	movs r0, #0
	blx FUN_020C3EE4
	b _02235F7E
_02235C9C:
	ldr r0, [r4, #8]
	bl FUN_020302EC
	strh r0, [r5]
	b _02235F7E
_02235CA6:
	adds r0, r4, #0
	movs r1, #2
	bl ov104_02236848
	b _02235F7E
_02235CB0:
	adds r0, r4, #0
	bl ov104_02236B48
	strh r0, [r5]
	b _02235F7E
_02235CBA:
	movs r0, #0x38
	muls r0, r6, r0
	adds r1, r4, r0
	movs r0, #0xa2
	lsls r0, r0, #2
	ldrh r0, [r1, r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	strh r0, [r5]
	b _02235F7E
_02235CCE:
	movs r0, #0x38
	muls r0, r6, r0
	adds r1, r4, r0
	ldr r0, [sp, #0x14]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xa3
	lsls r0, r0, #2
	ldrh r0, [r1, r0]
	strh r0, [r5]
	b _02235F7E
_02235CE4:
	ldr r0, [r7, #8]
	bl FUN_0207A268
	adds r7, r0, #0
	ldr r0, _02235F88 @ =0x0000036A
	movs r5, #0
	adds r6, r4, r0
_02235CF2:
	adds r1, r4, r5
	adds r1, #0x24
	ldrb r1, [r1]
	adds r0, r7, #0
	bl FUN_0207A0FC
	movs r1, #6
	adds r2, r6, #0
	bl FUN_02074B30
	adds r5, r5, #1
	adds r6, r6, #2
	cmp r5, #3
	blt _02235CF2
_02235D0E:
	b _02235F7E
_02235D10:
	adds r0, r4, #0
	bl ov104_0223BB60
	strh r0, [r5]
	b _02235F7E
_02235D1A:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_02236B58
	strh r0, [r5]
	b _02235F7E
_02235D26:
	adds r0, r4, #0
	bl ov104_02236B8C
	b _02235F7E
_02235D2E:
	adds r0, r4, #0
	bl ov104_02236BD0
	b _02235F7E
_02235D36:
	adds r0, r4, #0
	bl ov104_02236B54
	strh r0, [r5]
	b _02235F7E
_02235D40:
	movs r0, #0xa1
	lsls r0, r0, #4
	ldrb r0, [r4, r0]
	strh r0, [r5]
	b _02235F7E
_02235D4A:
	ldr r0, _02235F8C @ =0x00000A11
	ldrb r0, [r4, r0]
	strh r0, [r5]
	b _02235F7E
_02235D52:
	adds r0, r4, #0
	bl ov104_02236D10
	strh r0, [r5]
	ldrb r1, [r4, #0x10]
	ldrh r2, [r5]
	ldr r0, [r4, #4]
	bl ov104_02236ED8
	b _02235F7E
_02235D66:
	adds r0, r4, #0
	bl ov104_02236C50
	b _02235F7E
_02235D6E:
	adds r0, r4, #0
	bl FUN_0209BA80
	b _02235F7E
_02235D76:
	ldr r0, _02235F90 @ =0x00000A1B
	ldrb r0, [r4, r0]
	cmp r0, #6
	blo _02235D84
	subs r0, r0, #6
	strh r0, [r5]
	b _02235F7E
_02235D84:
	strh r0, [r5]
	b _02235F7E
_02235D88:
	ldr r0, _02235F90 @ =0x00000A1B
	movs r2, #0
	strb r2, [r4, r0]
	subs r1, r0, #2
	strb r2, [r4, r1]
	subs r0, r0, #3
	strb r2, [r4, r0]
	b _02235F7E
_02235D98:
	ldr r0, _02235F94 @ =0x00000A18
	strb r6, [r4, r0]
	b _02235F7E
_02235D9E:
	ldr r0, _02235F90 @ =0x00000A1B
	movs r5, #0
	ldrb r0, [r4, r0]
	cmp r0, #6
	blo _02235DB4
	bl FUN_0203608C
	cmp r0, #0
	beq _02235DBE
	movs r5, #1
	b _02235DBE
_02235DB4:
	bl FUN_0203608C
	cmp r0, #0
	bne _02235DBE
	movs r5, #1
_02235DBE:
	cmp r5, #1
	bne _02235DD2
	ldr r0, [r7, #8]
	bl FUN_0203068C
	ldrb r1, [r4, #0x10]
	movs r2, #0x32
	bl ov104_0223BC2C
	b _02235F7E
_02235DD2:
	ldr r0, _02235F98 @ =0x00000A1C
	ldrh r1, [r4, r0]
	subs r1, #0x32
	strh r1, [r4, r0]
	b _02235F7E
_02235DDC:
	movs r0, #0
	strh r0, [r5]
	ldrb r0, [r4, #0x10]
	bl ov104_0223BA14
	cmp r0, #1
	bne _02235E08
	ldr r0, _02235F90 @ =0x00000A1B
	ldrb r0, [r4, r0]
	cmp r0, #6
	blo _02235E00
	bl FUN_0203608C
	cmp r0, #0
	bne _02235E08
	movs r0, #1
	strh r0, [r5]
	b _02235F7E
_02235E00:
	bl FUN_0203608C
	cmp r0, #0
	bne _02235E0A
_02235E08:
	b _02235F7E
_02235E0A:
	movs r0, #1
	strh r0, [r5]
	b _02235F7E
_02235E10:
	ldrb r0, [r4, #0x10]
	bl ov104_0223BA14
	strh r0, [r5]
	b _02235F7E
_02235E1A:
	ldrb r0, [r4, #0x10]
	strh r0, [r5]
	b _02235F7E
_02235E20:
	ldrb r0, [r4, #0x12]
	strh r0, [r5]
	b _02235F7E
_02235E26:
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	bl ov104_0222E924
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #3
	bl ov104_0223BB84
	b _02235F7E
_02235E3A:
	ldrb r1, [r4, #0x11]
	adds r0, r4, #0
	adds r0, #0x4c
	lsls r1, r1, #1
	adds r1, r4, r1
	ldrh r1, [r1, #0x30]
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222E278
	ldrb r1, [r4, #0x11]
	movs r0, #0x57
	lsls r0, r0, #2
	adds r1, r1, #7
	lsls r1, r1, #1
	adds r1, r4, r1
	ldrh r1, [r1, #0x30]
	adds r0, r4, r0
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222E278
	b _02235F7E
_02235E68:
	adds r0, r4, #0
	bl ov104_02237338
	strh r0, [r5]
	b _02235F7E
_02235E72:
	ldr r0, [r7, #8]
	bl FUN_0203041C
	movs r2, #0
	str r2, [sp]
	movs r1, #0xa
	adds r3, r2, #0
	bl FUN_02030470
	strh r0, [r5]
	movs r1, #1
	add r0, sp, #0x20
	strb r1, [r0]
	ldr r0, [r7, #8]
	bl FUN_0203041C
	add r1, sp, #0x20
	movs r2, #0
	str r1, [sp]
	movs r1, #0xa
	adds r3, r2, #0
	bl FUN_02030430
	b _02235F7E
_02235EA2:
	movs r0, #0
	strh r0, [r5]
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _02235F7E
	ldrh r0, [r4, #0x14]
	adds r0, r0, #1
	cmp r0, #0x15
	bne _02235EBA
	movs r0, #1
	strh r0, [r5]
	b _02235F7E
_02235EBA:
	cmp r0, #0x31
	bne _02235F7E
	movs r0, #2
	strh r0, [r5]
	b _02235F7E
_02235EC4:
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	movs r3, #0xa2
	lsls r3, r3, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	adds r1, r3, #0
	adds r2, r3, #0
	str r0, [sp, #0xc]
	adds r0, r4, r3
	subs r1, #0x1c
	subs r2, #0x14
	subs r3, #0x10
	adds r1, r4, r1
	adds r2, r4, r2
	adds r3, r4, r3
	bl ov104_0222E330
	b _02235F7E
_02235EF0:
	adds r0, r4, #0
	bl ov104_0223BAB8
	b _02235F7E
_02235EF8:
	ldrb r0, [r4, #0x13]
	strh r0, [r5]
	movs r0, #1
	strb r0, [r4, #0x13]
	b _02235F7E
_02235F02:
	ldrb r5, [r4, #0x10]
	cmp r5, #3
	bne _02235F7E
	cmp r6, #0
	ldr r0, [r7, #8]
	bne _02235F5A
	bl FUN_0203068C
	adds r6, r0, #0
	ldrb r0, [r4, #0x10]
	bl FUN_0205E630
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r1, [sp, #0x1c]
	adds r0, r6, #0
	bl FUN_02030698
	strh r0, [r4, #0x22]
	ldr r0, [r7, #8]
	bl FUN_0203068C
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	bl FUN_0205E630
	adds r6, r0, #0
	ldrb r0, [r4, #0x10]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r4, #0x20]
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_020306E4
	b _02235F7E
_02235F5A:
	bl FUN_0203068C
	adds r6, r0, #0
	ldrb r0, [r4, #0x10]
	bl FUN_0205E630
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r4, #0x22]
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_020306E4
_02235F7E:
	movs r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02235F84: .4byte 0x0000270F
_02235F88: .4byte 0x0000036A
_02235F8C: .4byte 0x00000A11
_02235F90: .4byte 0x00000A1B
_02235F94: .4byte 0x00000A18
_02235F98: .4byte 0x00000A1C
	thumb_func_end ov104_02235BC0

	thumb_func_start ov104_02235F9C
ov104_02235F9C: @ 0x02235F9C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r0, [r0, #0x1c]
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02235F9C

	thumb_func_start ov104_02235FB8
ov104_02235FB8: @ 0x02235FB8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_02236F70
	strh r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02235FB8

	thumb_func_start ov104_02235FE8
ov104_02235FE8: @ 0x02235FE8
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _02236004 @ =ov104_02236008
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_02236004: .4byte ov104_02236008
	thumb_func_end ov104_02235FE8

	thumb_func_start ov104_02236008
ov104_02236008: @ 0x02236008
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC8C
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r1, _02236034 @ =0x00000A1A
	ldrb r2, [r0, r1]
	cmp r2, #2
	blo _0223602E
	movs r2, #0
	strb r2, [r0, r1]
	movs r0, #1
	pop {r4, pc}
_0223602E:
	movs r0, #0
	pop {r4, pc}
	nop
_02236034: .4byte 0x00000A1A
	thumb_func_end ov104_02236008

	thumb_func_start ov104_02236038
ov104_02236038: @ 0x02236038
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _02236054 @ =ov104_02236058
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_02236054: .4byte ov104_02236058
	thumb_func_end ov104_02236038

	thumb_func_start ov104_02236058
ov104_02236058: @ 0x02236058
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC14
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r2, _0223608C @ =0x00000A1B
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _0223607C
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223607C:
	movs r3, #0
	subs r1, r2, #1
	strb r3, [r0, r1]
	ldrb r0, [r0, r2]
	strh r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0223608C: .4byte 0x00000A1B
	thumb_func_end ov104_02236058

	thumb_func_start ov104_02236090
ov104_02236090: @ 0x02236090
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r0, #0
	ldr r0, [r4]
	bl ov104_02236FC0
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_02236090

	thumb_func_start ov104_022360A8
ov104_022360A8: @ 0x022360A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r0, #0
	ldr r0, [r4]
	bl ov104_022370E0
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_022360A8

	thumb_func_start ov104_022360C0
ov104_022360C0: @ 0x022360C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r0, #0
	ldr r0, [r4]
	bl ov104_02237180
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_022360C0

	thumb_func_start ov104_022360D8
ov104_022360D8: @ 0x022360D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0203068C
	adds r5, r0, #0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0205E630
	adds r7, r0, #0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02030698
	strh r0, [r6]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022360D8

	thumb_func_start ov104_02236120
ov104_02236120: @ 0x02236120
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl FUN_0203068C
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	bl ov104_0223BC2C
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_02236120

	thumb_func_start ov104_02236150
ov104_02236150: @ 0x02236150
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	lsls r1, r4, #0x18
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	bl ov104_02236ED8
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_02236150

	thumb_func_start ov104_0223617C
ov104_0223617C: @ 0x0223617C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r1, [r5, #0x1c]
	adds r0, r1, #1
	str r0, [r5, #0x1c]
	ldr r0, [r5]
	ldrb r4, [r1]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r2, r0, #0
	bne _022361A0
	movs r0, #0
	pop {r3, r4, r5, pc}
_022361A0:
	lsls r1, r4, #4
	adds r1, r4, r1
	adds r2, #0x64
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r1, r2, r1
	bl ov104_022330FC
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223617C

	thumb_func_start ov104_022361B4
ov104_022361B4: @ 0x022361B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r1, #0
	adds r5, r0, #0
	ldr r1, _02236508 @ =0x00000A28
	movs r0, #0xb
	adds r6, r2, #0
	str r3, [sp, #4]
	bl FUN_02018144
	ldr r1, _0223650C @ =0x02241AC8
	ldr r2, _02236508 @ =0x00000A28
	str r0, [r1]
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, _0223650C @ =0x02241AC8
	ldr r4, [r0]
	adds r0, r5, #0
	bl FUN_020302DC
	str r0, [r4, #8]
	ldr r1, _0223650C @ =0x02241AC8
	str r5, [r4, #4]
	movs r0, #0xb
	str r0, [r4]
	ldr r4, [r1]
	bl FUN_02079FF4
	str r0, [r4, #0x28]
	movs r0, #0xb
	bl FUN_02079FF4
	str r0, [r4, #0x2c]
	movs r0, #0xa2
	ldr r1, [sp, #0x38]
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r5, #0
	ldr r4, [r4, #8]
	bl FUN_0203041C
	adds r5, r0, #0
	cmp r7, #0
	beq _02236210
	b _022363AA
_02236210:
	ldr r0, _0223650C @ =0x02241AC8
	ldr r1, [r0]
	movs r0, #0
	strb r6, [r1, #0x10]
	strb r0, [r1, #0x11]
	adds r0, r4, #0
	bl FUN_020302D0
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldrb r2, [r0, #0x10]
	cmp r2, #3
	bne _02236236
	ldr r0, [r0, #4]
	bl FUN_020507E4
	bl FUN_0206B6FC
	b _02236242
_02236236:
	movs r3, #0
	adds r0, r5, #0
	movs r1, #9
	str r3, [sp]
	bl FUN_02030470
_02236242:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _02236282
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_0203068C
	adds r5, r0, #0
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl FUN_0205E5E0
	adds r4, r0, #0
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl FUN_0205E5E0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02030698
	ldr r1, _0223650C @ =0x02241AC8
	ldr r1, [r1]
	strh r0, [r1, #0x14]
	b _02236320
_02236282:
	ldr r0, _0223650C @ =0x02241AC8
	ldr r4, [r0]
	movs r0, #0
	strh r0, [r4, #0x14]
	ldr r0, [r4, #4]
	bl FUN_0203068C
	adds r5, r0, #0
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl FUN_0205E630
	adds r7, r0, #0
	ldrb r0, [r4, #0x10]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	movs r3, #0
	bl FUN_020306E4
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_0203068C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0205E658
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_0205E658
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl FUN_020306E4
	ldr r4, _0223650C @ =0x02241AC8
	movs r5, #0
_022362E2:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_0203068C
	adds r6, r0, #0
	ldr r0, [r4]
	lsls r1, r5, #0x18
	ldrb r0, [r0, #0x10]
	lsrs r1, r1, #0x18
	bl FUN_0205E5B4
	adds r7, r0, #0
	ldr r0, [r4]
	lsls r1, r5, #0x18
	ldrb r0, [r0, #0x10]
	lsrs r1, r1, #0x18
	bl FUN_0205E5B4
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #1
	bl FUN_020306E4
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	blo _022362E2
_02236320:
	ldr r0, _0223650C @ =0x02241AC8
	movs r1, #7
	ldr r5, [r0]
	ldrh r0, [r5, #0x14]
	blx FUN_020E1F6C
	strh r0, [r5, #0x16]
	movs r0, #0
	str r0, [r5, #0x18]
	adds r1, r5, #0
	ldr r0, [sp, #4]
	adds r1, #0x24
	strb r0, [r1]
	add r1, sp, #0x20
	adds r0, r5, #0
	ldrh r2, [r1, #0x10]
	adds r0, #0x25
	strb r2, [r0]
	adds r0, r5, #0
	ldrh r1, [r1, #0x14]
	adds r0, #0x26
	strb r1, [r0]
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_0203068C
	adds r4, r0, #0
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl FUN_0205E630
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	strh r0, [r5, #0x20]
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_0203068C
	adds r4, r0, #0
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl FUN_0205E630
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0xa
	bl FUN_02030804
	b _0223642E
_022363AA:
	ldr r0, _0223650C @ =0x02241AC8
	movs r1, #0
	ldr r5, [r0]
	str r1, [sp]
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02030398
	strb r0, [r5, #0x10]
	movs r2, #0
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02030398
	strb r0, [r5, #0x11]
	ldr r0, _0223650C @ =0x02241AC8
	ldr r6, [r0]
	ldr r0, [r6, #4]
	bl FUN_0203068C
	adds r7, r0, #0
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl FUN_0205E5E0
	str r0, [sp, #0xc]
	ldrb r0, [r5, #0x10]
	bl FUN_0205E5E0
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r1, [sp, #0xc]
	adds r0, r7, #0
	bl FUN_02030698
	strh r0, [r6, #0x14]
	ldrh r0, [r6, #0x14]
	movs r1, #7
	blx FUN_020E1F6C
	movs r5, #0
	strh r0, [r6, #0x16]
	ldr r7, _0223650C @ =0x02241AC8
	adds r6, r5, #0
_0223640C:
	lsls r2, r5, #0x18
	adds r0, r4, #0
	movs r1, #7
	lsrs r2, r2, #0x18
	adds r3, r6, #0
	str r6, [sp]
	bl FUN_02030398
	ldr r1, [r7]
	adds r1, r1, r5
	adds r1, #0x24
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	blo _0223640C
_0223642E:
	ldr r6, _0223650C @ =0x02241AC8
	ldr r7, _02236510 @ =0x0000036A
	movs r4, #0
_02236434:
	ldr r5, [r6]
	ldr r0, [r5, #4]
	bl FUN_0207A268
	adds r1, r5, r4
	adds r1, #0x24
	ldrb r1, [r1]
	bl FUN_0207A0FC
	ldr r5, [r6]
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	lsls r1, r4, #1
	adds r1, r5, r1
	strh r0, [r1, r7]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	blo _02236434
	ldr r0, [r5, #4]
	bl FUN_0207A268
	str r0, [sp, #8]
	ldr r0, _0223650C @ =0x02241AC8
	movs r1, #0
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl ov104_0223B7A8
	adds r7, r0, #0
	movs r5, #0
	cmp r7, #0
	ble _022364E8
	ldr r6, _0223650C @ =0x02241AC8
_0223647E:
	ldr r1, [r6]
	ldr r0, [sp, #8]
	adds r1, r1, r5
	adds r1, #0x24
	ldrb r1, [r1]
	bl FUN_0207A0FC
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r0, [r0, #0x28]
	bl FUN_0207A048
	ldr r0, [r6]
	adds r1, r5, #0
	ldr r0, [r0, #0x28]
	bl FUN_0207A0FC
	movs r1, #0
	str r1, [sp, #0x14]
	adds r4, r0, #0
	movs r1, #6
	add r2, sp, #0x14
	bl FUN_02074B30
	adds r0, r4, #0
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0x32
	bls _022364DE
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x32
	bl FUN_02075AD0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #8
	add r2, sp, #0x10
	bl FUN_02074B30
	adds r0, r4, #0
	bl FUN_0207418C
_022364DE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blt _0223647E
_022364E8:
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl ov104_0223BA14
	cmp r0, #1
	bne _02236500
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov104_0222E630
_02236500:
	ldr r0, _0223650C @ =0x02241AC8
	ldr r0, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02236508: .4byte 0x00000A28
_0223650C: .4byte 0x02241AC8
_02236510: .4byte 0x0000036A
	thumb_func_end ov104_022361B4

	thumb_func_start ov104_02236514
ov104_02236514: @ 0x02236514
	push {r3, lr}
	cmp r1, #0
	bne _02236520
	bl ov104_02236528
	pop {r3, pc}
_02236520:
	bl ov104_022365F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02236514

	thumb_func_start ov104_02236528
ov104_02236528: @ 0x02236528
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	bl FUN_0207A0F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _02236590
	adds r5, r7, #0
_02236542:
	ldr r0, [r7, #0x28]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #0x3a
	movs r2, #0
	adds r4, r0, #0
	bl FUN_02074470
	movs r1, #0xe5
	lsls r1, r1, #2
	strh r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0x3b
	movs r2, #0
	bl FUN_02074470
	ldr r1, _022365F0 @ =0x00000396
	movs r2, #0
	strh r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0x3c
	bl FUN_02074470
	movs r1, #0xe6
	lsls r1, r1, #2
	strh r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0x3d
	movs r2, #0
	bl FUN_02074470
	ldr r1, _022365F4 @ =0x0000039A
	adds r6, r6, #1
	strh r0, [r5, r1]
	ldr r0, [sp, #0x10]
	adds r5, #8
	cmp r6, r0
	blt _02236542
_02236590:
	adds r0, r7, #0
	bl ov104_0223BB60
	adds r1, r0, #0
	adds r2, r7, #0
	ldrb r0, [r7, #0x10]
	adds r2, #0x30
	movs r3, #0xe
	bl ov104_0223B760
	ldrb r0, [r7, #0x10]
	movs r1, #1
	ldrb r4, [r7, #0x11]
	bl ov104_0223B7DC
	adds r5, r0, #0
	ldrb r0, [r7, #0x10]
	bl ov104_0223BA14
	movs r3, #0xa2
	lsls r3, r3, #2
	adds r1, r7, r3
	str r1, [sp]
	adds r1, r3, #0
	subs r1, #0x14
	adds r1, r7, r1
	str r1, [sp, #4]
	adds r1, r3, #0
	subs r1, #0x10
	adds r1, r7, r1
	lsls r0, r0, #0x18
	adds r2, r4, #7
	str r1, [sp, #8]
	lsrs r0, r0, #0x18
	lsls r1, r4, #1
	lsls r2, r2, #1
	str r0, [sp, #0xc]
	adds r1, r7, r1
	adds r2, r7, r2
	subs r3, #0x1c
	ldrh r1, [r1, #0x30]
	ldrh r2, [r2, #0x30]
	adds r0, r5, #0
	adds r3, r7, r3
	bl ov104_0222E4BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022365F0: .4byte 0x00000396
_022365F4: .4byte 0x0000039A
	thumb_func_end ov104_02236528

	thumb_func_start ov104_022365F8
ov104_022365F8: @ 0x022365F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18c
	adds r5, r0, #0
	bl ov104_022366A4
	movs r4, #0
	adds r6, r5, #0
	adds r7, r4, #0
_02236608:
	str r7, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #6
	lsrs r2, r2, #0x18
	adds r3, r7, #0
	bl FUN_02030398
	strh r0, [r6, #0x30]
	adds r4, r4, #1
	adds r6, r6, #2
	cmp r4, #0xe
	blt _02236608
	movs r6, #0
	add r4, sp, #0x30
	adds r7, r5, #0
_02236628:
	movs r0, #0
	str r0, [sp]
	lsls r2, r6, #0x18
	ldr r0, [r5, #8]
	movs r1, #8
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030398
	strh r0, [r4]
	ldrh r1, [r4]
	movs r0, #0x9b
	lsls r0, r0, #2
	strh r1, [r7, r0]
	adds r6, r6, #1
	adds r4, r4, #2
	adds r7, r7, #2
	cmp r6, #4
	blt _02236628
	add r0, sp, #0x18
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	add r1, sp, #0x30
	add r2, sp, #0x10
	movs r3, #0
	bl ov104_0222E330
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	movs r7, #0
	add r4, sp, #0x3c
_02236676:
	adds r0, r5, #0
	bl ov104_0223BA10
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_0222DF40
	ldr r1, [r5, #0x2c]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov104_0223BAA0
	adds r7, r7, #1
	adds r4, #0x38
	cmp r7, #4
	blt _02236676
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #0x18c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022365F8

	thumb_func_start ov104_022366A4
ov104_022366A4: @ 0x022366A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #0x28]
	bl FUN_0207A0F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _022367A6
	add r7, sp, #8
_022366BE:
	ldr r0, [r5, #0x28]
	adds r1, r4, #0
	bl FUN_0207A0FC
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #2
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030398
	add r2, sp, #8
	strh r0, [r7, #2]
	adds r0, r6, #0
	movs r1, #0xa3
	adds r2, #2
	bl FUN_02074B30
	movs r0, #0
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #3
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030398
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #0x3a
	add r2, sp, #8
	bl FUN_02074B30
	movs r0, #0
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #3
	lsrs r2, r2, #0x18
	movs r3, #1
	bl FUN_02030398
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #0x3b
	add r2, sp, #8
	bl FUN_02074B30
	movs r0, #0
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #3
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_02030398
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #0x3c
	add r2, sp, #8
	bl FUN_02074B30
	movs r0, #0
	str r0, [sp]
	movs r1, #3
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	lsrs r2, r2, #0x18
	adds r3, r1, #0
	bl FUN_02030398
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #0x3d
	add r2, sp, #8
	bl FUN_02074B30
	movs r0, #0
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #4
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030398
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0xa0
	add r2, sp, #0xc
	bl FUN_02074B30
	movs r0, #0
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #5
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030398
	add r2, sp, #8
	strh r0, [r7, #2]
	adds r0, r6, #0
	movs r1, #6
	adds r2, #2
	bl FUN_02074B30
	ldr r0, [sp, #4]
	adds r4, r4, #1
	cmp r4, r0
	blt _022366BE
_022367A6:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022366A4

	thumb_func_start ov104_022367AC
ov104_022367AC: @ 0x022367AC
	push {r4, lr}
	adds r4, r0, #0
	beq _022367D6
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _022367BC
	bl FUN_020181C4
_022367BC:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _022367C6
	bl FUN_020181C4
_022367C6:
	ldr r2, _022367D8 @ =0x00000A28
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020C4CF4
	adds r0, r4, #0
	bl FUN_020181C4
_022367D6:
	pop {r4, pc}
	.align 2, 0
_022367D8: .4byte 0x00000A28
	thumb_func_end ov104_022367AC

	thumb_func_start ov104_022367DC
ov104_022367DC: @ 0x022367DC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r4, #0
	adds r5, r7, #0
_022367E6:
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	bl ov104_02236834
	movs r1, #0xe
	lsls r1, r1, #6
	strh r0, [r5, r1]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #6
	blt _022367E6
	movs r3, #0
	subs r0, r1, #4
_02236802:
	adds r2, r6, r3
	ldrb r5, [r2, #8]
	movs r4, #0x37
	adds r1, r7, r3
	lsls r4, r4, #4
	strb r5, [r1, r4]
	ldrb r5, [r2, #0xc]
	adds r4, r4, #4
	adds r3, r3, #1
	strb r5, [r1, r4]
	movs r4, #0xde
	lsls r4, r4, #2
	ldrb r5, [r2, #0x10]
	cmp r3, #4
	strb r5, [r1, r4]
	ldrb r2, [r2, #0x14]
	strb r2, [r1, r0]
	blt _02236802
	ldrh r1, [r6, #0x28]
	ldr r0, _02236830 @ =0x00000A1C
	strh r1, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02236830: .4byte 0x00000A1C
	thumb_func_end ov104_022367DC

	thumb_func_start ov104_02236834
ov104_02236834: @ 0x02236834
	push {r3, lr}
	cmp r1, #6
	blo _02236842
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
_02236842:
	ldrh r0, [r0, #0x20]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02236834

	thumb_func_start ov104_02236848
ov104_02236848: @ 0x02236848
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r6, r1, #0
	bl FUN_0203041C
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r4, r0, #0
	ldrb r0, [r5, #0x10]
	movs r1, #1
	bl ov104_0223B7DC
	ldrb r1, [r5, #0x10]
	add r0, sp, #0x10
	strb r1, [r0, #8]
	movs r1, #0
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02030308
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_020302F4
	movs r2, #0
	ldrb r1, [r5, #0x11]
	add r0, sp, #0x10
	adds r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_02030308
	ldrb r0, [r5, #0x10]
	bl FUN_0205E5E0
	adds r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E5E0
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #0x14]
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_020306E4
	cmp r6, #2
	beq _022369BA
	ldrb r0, [r5, #0x10]
	bl FUN_0205E608
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E608
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E608
	adds r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E608
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #0x14]
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02030848
	ldrb r0, [r5, #0x10]
	bl FUN_0205E608
	adds r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E608
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02030698
	str r0, [sp, #0xc]
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	adds r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02030698
	adds r7, r0, #0
	ldrh r0, [r5, #0x14]
	cmp r0, r6
	bne _0223695E
	ldrb r0, [r5, #0x10]
	bl FUN_0205E680
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E680
	bl FUN_0205E6A8
	lsls r3, r7, #0x10
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	lsrs r3, r3, #0x10
	bl FUN_02030848
	b _02236984
_0223695E:
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bhs _02236984
	ldrb r0, [r5, #0x10]
	bl FUN_0205E680
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E680
	bl FUN_0205E6A8
	lsls r3, r7, #0x10
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	lsrs r3, r3, #0x10
	bl FUN_020306E4
_02236984:
	adds r0, r5, #0
	adds r0, #0x27
	ldrb r1, [r0]
	add r0, sp, #0x10
	movs r3, #0
	strb r1, [r0, #8]
	add r0, sp, #0x18
	str r0, [sp]
	ldrb r2, [r5, #0x10]
	ldr r0, [sp, #4]
	movs r1, #9
	bl FUN_02030430
	ldrb r0, [r5, #0x10]
	cmp r0, #3
	bne _022369BA
	movs r0, #0x6c
	bl FUN_0205E6A8
	adds r3, r5, #0
	adds r3, #0x27
	adds r2, r0, #0
	ldrb r3, [r3]
	adds r0, r4, #0
	movs r1, #0x6c
	bl FUN_020306E4
_022369BA:
	movs r4, #0
	add r6, sp, #0x10
	add r7, sp, #0x10
_022369C0:
	lsls r0, r4, #1
	adds r0, r5, r0
	ldrh r0, [r0, #0x30]
	lsls r2, r4, #0x18
	movs r1, #6
	strh r0, [r7]
	str r6, [sp]
	ldr r0, [r5, #8]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030308
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xe
	blo _022369C0
	movs r4, #0
	add r6, sp, #0x18
	add r7, sp, #0x10
_022369E8:
	adds r0, r5, r4
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r2, r4, #0x18
	movs r1, #7
	strb r0, [r7, #8]
	str r6, [sp]
	ldr r0, [r5, #8]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030308
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	blo _022369E8
	ldr r0, [r5, #0x28]
	bl FUN_0207A0F8
	movs r4, #0
	str r0, [sp, #8]
	cmp r0, #0
	bls _02236B00
	add r7, sp, #0x10
_02236A1A:
	ldr r0, [r5, #0x28]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #0xa3
	movs r2, #0
	adds r6, r0, #0
	bl FUN_02074470
	strh r0, [r7]
	add r0, sp, #0x10
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #2
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030308
	adds r0, r6, #0
	movs r1, #0x3a
	movs r2, #0
	bl FUN_02074470
	strb r0, [r7, #8]
	add r0, sp, #0x18
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #3
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030308
	adds r0, r6, #0
	movs r1, #0x3b
	movs r2, #0
	bl FUN_02074470
	strb r0, [r7, #8]
	add r0, sp, #0x18
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #3
	lsrs r2, r2, #0x18
	movs r3, #1
	bl FUN_02030308
	adds r0, r6, #0
	movs r1, #0x3c
	movs r2, #0
	bl FUN_02074470
	strb r0, [r7, #8]
	add r0, sp, #0x18
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #3
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_02030308
	adds r0, r6, #0
	movs r1, #0x3d
	movs r2, #0
	bl FUN_02074470
	strb r0, [r7, #8]
	add r0, sp, #0x18
	str r0, [sp]
	movs r1, #3
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	lsrs r2, r2, #0x18
	adds r3, r1, #0
	bl FUN_02030308
	adds r0, r6, #0
	movs r1, #0xa0
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x1c]
	add r0, sp, #0x1c
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #4
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030308
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	strh r0, [r7]
	add r0, sp, #0x10
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #5
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030308
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [sp, #8]
	cmp r4, r0
	blo _02236A1A
_02236B00:
	ldr r0, [r5, #0x2c]
	bl FUN_0207A0F8
	adds r6, r0, #0
	ldr r4, _02236B44 @ =0x00000000
	beq _02236B3E
	add r7, sp, #0x10
_02236B0E:
	ldr r0, [r5, #0x2c]
	adds r1, r4, #0
	bl FUN_0207A0FC
	lsls r0, r4, #1
	adds r1, r5, r0
	movs r0, #0x9b
	lsls r0, r0, #2
	ldrh r1, [r1, r0]
	add r0, sp, #0x10
	lsls r2, r4, #0x18
	strh r1, [r0]
	str r7, [sp]
	ldr r0, [r5, #8]
	movs r1, #8
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_02030308
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _02236B0E
_02236B3E:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02236B44: .4byte 0x00000000
	thumb_func_end ov104_02236848

	thumb_func_start ov104_02236B48
ov104_02236B48: @ 0x02236B48
	ldrb r1, [r0, #0x11]
	adds r1, r1, #1
	strb r1, [r0, #0x11]
	ldrb r0, [r0, #0x11]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02236B48

	thumb_func_start ov104_02236B54
ov104_02236B54: @ 0x02236B54
	ldrb r0, [r0, #0x11]
	bx lr
	thumb_func_end ov104_02236B54

	thumb_func_start ov104_02236B58
ov104_02236B58: @ 0x02236B58
	push {r4, lr}
	sub sp, #0x30
	adds r2, r0, #0
	ldrb r4, [r2, #0x11]
	movs r3, #7
	muls r3, r1, r3
	adds r1, r4, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x17
	adds r1, r2, r1
	ldrh r1, [r1, #0x30]
	add r0, sp, #0
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl ov104_0222E10C
	add sp, #0x30
	pop {r4, pc}
	thumb_func_end ov104_02236B58

	thumb_func_start ov104_02236B8C
ov104_02236B8C: @ 0x02236B8C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
_02236B92:
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r6, r0, #0
	lsls r1, r4, #0x18
	ldrb r0, [r5, #0x10]
	lsrs r1, r1, #0x18
	bl FUN_0205E5B4
	adds r7, r0, #0
	lsls r1, r4, #0x18
	ldrb r0, [r5, #0x10]
	lsrs r1, r1, #0x18
	bl FUN_0205E5B4
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #1
	bl FUN_020306E4
	adds r4, r4, #1
	cmp r4, #3
	blt _02236B92
	adds r0, r5, #0
	movs r1, #1
	bl ov104_02236848
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02236B8C

	thumb_func_start ov104_02236BD0
ov104_02236BD0: @ 0x02236BD0
	adds r1, r0, #0
	movs r2, #1
	adds r1, #0x27
	strb r2, [r1]
	ldrh r1, [r0, #0x16]
	cmp r1, #8
	bhs _02236BE2
	adds r1, r1, #1
	strh r1, [r0, #0x16]
_02236BE2:
	ldr r3, _02236BEC @ =ov104_02236848
	movs r1, #0
	strb r1, [r0, #0x11]
	bx r3
	nop
_02236BEC: .4byte ov104_02236848
	thumb_func_end ov104_02236BD0

	thumb_func_start ov104_02236BF0
ov104_02236BF0: @ 0x02236BF0
	ldr r3, _02236BF4 @ =ov104_0223BAB8
	bx r3
	.align 2, 0
_02236BF4: .4byte ov104_0223BAB8
	thumb_func_end ov104_02236BF0

	thumb_func_start ov104_02236BF8
ov104_02236BF8: @ 0x02236BF8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	movs r1, #1
	ldrb r4, [r5, #0x11]
	bl ov104_0223B7DC
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl ov104_0223BA14
	movs r3, #0xa2
	lsls r3, r3, #2
	adds r1, r5, r3
	str r1, [sp]
	adds r1, r3, #0
	subs r1, #0x14
	adds r1, r5, r1
	str r1, [sp, #4]
	adds r1, r3, #0
	subs r1, #0x10
	adds r1, r5, r1
	lsls r0, r0, #0x18
	adds r2, r4, #7
	str r1, [sp, #8]
	lsrs r0, r0, #0x18
	lsls r1, r4, #1
	lsls r2, r2, #1
	str r0, [sp, #0xc]
	adds r1, r5, r1
	adds r2, r5, r2
	subs r3, #0x1c
	ldrh r1, [r1, #0x30]
	ldrh r2, [r2, #0x30]
	adds r0, r6, #0
	adds r3, r5, r3
	bl ov104_0222E4BC
	adds r0, r5, #0
	bl ov104_0223BAB8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_02236BF8

	thumb_func_start ov104_02236C50
ov104_02236C50: @ 0x02236C50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _02236C64
	movs r0, #0
	str r0, [sp]
	b _02236C68
_02236C64:
	movs r0, #2
	str r0, [sp]
_02236C68:
	ldrb r0, [r6, #0x10]
	movs r1, #0
	bl ov104_0223B7A8
	adds r5, r0, #0
	ldr r0, [r6, #0x28]
	bl FUN_0207A0F8
	ldr r4, [sp]
	adds r0, r4, #0
	adds r0, r5, r0
	adds r1, r4, #0
	str r0, [sp, #4]
	cmp r1, r0
	bge _02236CDA
_02236C86:
	ldr r0, [r6, #0x28]
	adds r1, r4, #0
	bl FUN_0207A0FC
	ldr r1, [sp]
	movs r2, #0
	subs r1, r4, r1
	lsls r1, r1, #3
	adds r5, r6, r1
	movs r1, #0x3a
	adds r7, r0, #0
	bl FUN_02074470
	movs r1, #0xe5
	lsls r1, r1, #2
	strh r0, [r5, r1]
	adds r0, r7, #0
	movs r1, #0x3b
	movs r2, #0
	bl FUN_02074470
	ldr r1, _02236D08 @ =0x00000396
	movs r2, #0
	strh r0, [r5, r1]
	adds r0, r7, #0
	movs r1, #0x3c
	bl FUN_02074470
	movs r1, #0xe6
	lsls r1, r1, #2
	strh r0, [r5, r1]
	adds r0, r7, #0
	movs r1, #0x3d
	movs r2, #0
	bl FUN_02074470
	ldr r1, _02236D0C @ =0x0000039A
	adds r4, r4, #1
	strh r0, [r5, r1]
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _02236C86
_02236CDA:
	ldr r0, [r6, #0x28]
	bl ov104_0223BA24
	movs r0, #0x37
	lsls r0, r0, #4
	movs r7, #0
	adds r2, r0, #0
	adds r3, r0, #0
	adds r4, r7, #0
	adds r1, r0, #4
	adds r2, #8
	adds r3, #0xc
_02236CF2:
	adds r5, r6, r7
	strb r4, [r5, r0]
	strb r4, [r5, r1]
	strb r4, [r5, r2]
	adds r7, r7, #1
	strb r4, [r5, r3]
	cmp r7, #4
	blt _02236CF2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02236D08: .4byte 0x00000396
_02236D0C: .4byte 0x0000039A
	thumb_func_end ov104_02236C50

	thumb_func_start ov104_02236D10
ov104_02236D10: @ 0x02236D10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	add r1, sp, #0x18
	adds r4, r0, #0
_02236D1E:
	adds r0, r0, #1
	strb r4, [r1]
	adds r1, r1, #1
	cmp r0, #0x14
	blt _02236D1E
	strb r4, [r6, #0x12]
	bl FUN_0203608C
	cmp r0, #0
	bne _02236D38
	movs r0, #0
	str r0, [sp]
	b _02236D3C
_02236D38:
	movs r0, #2
	str r0, [sp]
_02236D3C:
	ldrb r0, [r6, #0x10]
	movs r1, #0
	bl ov104_0223B7A8
	str r0, [sp, #8]
	ldrb r0, [r6, #0x10]
	movs r1, #1
	bl ov104_0223B7DC
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp]
	adds r0, r1, r0
	ldr r1, [sp]
	str r0, [sp, #0xc]
	cmp r1, r0
	bge _02236E12
	add r7, sp, #0x18
_02236D60:
	ldr r0, [r6, #0x28]
	ldr r1, [sp]
	bl FUN_0207A0FC
	movs r1, #0xac
	movs r2, #0
	adds r5, r0, #0
	bl FUN_02074470
	cmp r0, #0
	beq _02236E06
	adds r0, r5, #0
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _02236DD2
	ldrb r1, [r7]
	adds r1, r1, #1
	strb r1, [r7]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bne _02236DA6
	ldrb r0, [r7, #1]
	adds r0, r0, #1
	strb r0, [r7, #1]
	b _02236DBC
_02236DA6:
	lsrs r1, r0, #1
	ldr r0, [sp, #0x14]
	cmp r0, r1
	blo _02236DB6
	ldrb r0, [r7, #2]
	adds r0, r0, #1
	strb r0, [r7, #2]
	b _02236DBC
_02236DB6:
	ldrb r0, [r7, #3]
	adds r0, r0, #1
	strb r0, [r7, #3]
_02236DBC:
	adds r0, r5, #0
	movs r1, #0xa0
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _02236DD6
	ldrb r0, [r7, #4]
	adds r0, r0, #1
	strb r0, [r7, #4]
	b _02236DD6
_02236DD2:
	movs r0, #1
	strb r0, [r6, #0x12]
_02236DD6:
	adds r0, r5, #0
	movs r1, #0x3a
	movs r2, #0
	bl FUN_02074470
	adds r4, r4, r0
	adds r0, r5, #0
	movs r1, #0x3b
	movs r2, #0
	bl FUN_02074470
	adds r4, r4, r0
	adds r0, r5, #0
	movs r1, #0x3c
	movs r2, #0
	bl FUN_02074470
	adds r4, r4, r0
	adds r0, r5, #0
	movs r1, #0x3d
	movs r2, #0
	bl FUN_02074470
	adds r4, r4, r0
_02236E06:
	ldr r0, [sp]
	adds r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp]
	cmp r1, r0
	blt _02236D60
_02236E12:
	ldr r1, [sp, #4]
	movs r0, #0
	cmp r1, #0
	ble _02236E36
	movs r2, #0xdd
	add r3, sp, #0x18
	lsls r2, r2, #2
_02236E20:
	adds r1, r6, r0
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _02236E2E
	ldrb r1, [r3, #8]
	adds r1, r1, #1
	strb r1, [r3, #8]
_02236E2E:
	ldr r1, [sp, #4]
	adds r0, r0, #1
	cmp r0, r1
	blt _02236E20
_02236E36:
	ldr r0, [sp, #8]
	movs r3, #0
	adds r7, r3, #0
	cmp r0, #0
	ble _02236E5E
	movs r0, #0xe5
	lsls r0, r0, #2
_02236E44:
	movs r2, #0
	adds r5, r6, #0
_02236E48:
	ldrh r1, [r5, r0]
	adds r2, r2, #1
	adds r5, r5, #2
	adds r3, r3, r1
	cmp r2, #4
	blt _02236E48
	ldr r1, [sp, #8]
	adds r7, r7, #1
	adds r6, #8
	cmp r7, r1
	blt _02236E44
_02236E5E:
	subs r0, r3, r4
	cmp r0, #5
	bgt _02236E6E
	add r0, sp, #0x18
	ldrb r1, [r0, #5]
	adds r1, r1, #1
	strb r1, [r0, #5]
	b _02236E88
_02236E6E:
	cmp r0, #0xa
	bgt _02236E7C
	add r0, sp, #0x18
	ldrb r1, [r0, #6]
	adds r1, r1, #1
	strb r1, [r0, #6]
	b _02236E88
_02236E7C:
	cmp r0, #0xf
	bgt _02236E88
	add r0, sp, #0x18
	ldrb r1, [r0, #7]
	adds r1, r1, #1
	strb r1, [r0, #7]
_02236E88:
	add r1, sp, #0x18
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r2, r2, r0
	ldr r0, [sp, #0x10]
	adds r3, r0, r2
	ldrb r2, [r1, #1]
	lsls r0, r2, #1
	adds r0, r2, r0
	adds r2, r3, r0
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrb r0, [r1, #3]
	adds r2, r2, r0
	ldrb r0, [r1, #4]
	adds r2, r2, r0
	ldrb r0, [r1, #5]
	lsls r0, r0, #3
	adds r3, r2, r0
	ldrb r2, [r1, #6]
	movs r0, #6
	muls r0, r2, r0
	adds r2, r3, r0
	ldrb r0, [r1, #7]
	ldrb r1, [r1, #8]
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #7
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #0x10]
	cmp r0, #0
	bgt _02236ED0
	movs r0, #1
	str r0, [sp, #0x10]
_02236ED0:
	ldr r0, [sp, #0x10]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02236D10

	thumb_func_start ov104_02236ED8
ov104_02236ED8: @ 0x02236ED8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r0, #0
	adds r4, r2, #0
	bl FUN_0203068C
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_0205E630
	str r0, [sp]
	adds r0, r5, #0
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r1, [sp]
	adds r0, r7, #0
	bl FUN_02030698
	adds r1, r0, r4
	ldr r0, _02236F6C @ =0x0000270F
	cmp r1, r0
	ble _02236F34
	adds r0, r6, #0
	bl FUN_0203068C
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_0205E630
	str r0, [sp, #4]
	adds r0, r5, #0
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r1, [sp, #4]
	ldr r3, _02236F6C @ =0x0000270F
	adds r0, r7, #0
	bl FUN_020306E4
	b _02236F5A
_02236F34:
	adds r0, r6, #0
	bl FUN_0203068C
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_0205E630
	str r0, [sp, #8]
	adds r0, r5, #0
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r1, [sp, #8]
	adds r0, r7, #0
	adds r3, r4, #0
	bl FUN_02030804
_02236F5A:
	adds r0, r6, #0
	bl FUN_0202CD88
	movs r1, #0x41
	adds r2, r4, #0
	bl FUN_0202CF70
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02236F6C: .4byte 0x0000270F
	thumb_func_end ov104_02236ED8

	thumb_func_start ov104_02236F70
ov104_02236F70: @ 0x02236F70
	push {r3, lr}
	cmp r1, #6
	bhi _02236FBC
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02236F82: @ jump table
	.2byte _02236F90 - _02236F82 - 2 @ case 0
	.2byte _02236F96 - _02236F82 - 2 @ case 1
	.2byte _02236F9C - _02236F82 - 2 @ case 2
	.2byte _02236FA2 - _02236F82 - 2 @ case 3
	.2byte _02236FA8 - _02236F82 - 2 @ case 4
	.2byte _02236FB0 - _02236F82 - 2 @ case 5
	.2byte _02236FB8 - _02236F82 - 2 @ case 6
_02236F90:
	bl ov104_0222F3B8
	pop {r3, pc}
_02236F96:
	bl ov104_0222F44C
	pop {r3, pc}
_02236F9C:
	bl ov104_0222F4B8
	pop {r3, pc}
_02236FA2:
	bl ov104_0222F5D4
	pop {r3, pc}
_02236FA8:
	adds r1, r2, #0
	bl ov104_0222F6C8
	pop {r3, pc}
_02236FB0:
	adds r1, r2, #0
	bl ov104_0222F710
	pop {r3, pc}
_02236FB8:
	bl ov104_0222F758
_02236FBC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02236F70

	thumb_func_start ov104_02236FC0
ov104_02236FC0: @ 0x02236FC0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov104_0222E924
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _02236FDC
	bl FUN_02022974
_02236FDC:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _02236FEA
	bl FUN_02022974
_02236FEA:
	ldrb r0, [r6, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02237032
	movs r0, #0xb
	movs r1, #1
	bl FUN_0201A778
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	movs r2, #1
	adds r1, r5, #0
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _022370B8 @ =0x00000253
	adds r1, #0xa8
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, [r1]
	adds r3, r2, #0
	bl FUN_0201A7E8
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r0, [r4]
	ldr r1, [r1]
	bl ov104_022370C0
	b _022370AA
_02237032:
	movs r0, #0xb
	movs r1, #1
	bl FUN_0201A778
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	movs r0, #0xb
	movs r1, #1
	bl FUN_0201A778
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r2, #1
	adds r1, r5, #0
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _022370B8 @ =0x00000253
	adds r1, #0xa8
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, [r1]
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r2, #1
	adds r1, r5, #0
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _022370BC @ =0x0000022B
	adds r1, #0xac
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, [r1]
	movs r3, #0x15
	bl FUN_0201A7E8
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r0, [r4]
	ldr r1, [r1]
	bl ov104_022370C0
	adds r1, r5, #0
	adds r1, #0xac
	ldr r0, [r4]
	ldr r1, [r1]
	bl ov104_022370C0
_022370AA:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov104_02237180
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_022370B8: .4byte 0x00000253
_022370BC: .4byte 0x0000022B
	thumb_func_end ov104_02236FC0

	thumb_func_start ov104_022370C0
ov104_022370C0: @ 0x022370C0
	push {r4, lr}
	adds r4, r1, #0
	ldr r2, _022370DC @ =0x000003D9
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xc
	bl FUN_0200DC48
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	pop {r4, pc}
	nop
_022370DC: .4byte 0x000003D9
	thumb_func_end ov104_022370C0

	thumb_func_start ov104_022370E0
ov104_022370E0: @ 0x022370E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r1, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02237114
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	bne _022370FC
	bl FUN_02022974
_022370FC:
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r4, [r0]
	movs r1, #0
	adds r0, r4, #0
	bl FUN_0200DC9C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0201A928
	b _02237170
_02237114:
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	bne _02237122
	bl FUN_02022974
_02237122:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	bne _02237130
	bl FUN_02022974
_02237130:
	bl FUN_0203608C
	cmp r0, #0
	bne _02237144
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r4, [r0]
	adds r0, r5, #0
	adds r0, #0xac
	b _0223714E
_02237144:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r4, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
_0223714E:
	ldr r6, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0201A928
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r6, #0
	movs r1, #1
	bl FUN_0201A928
_02237170:
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xa8
	str r1, [r0]
	adds r5, #0xac
	str r1, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_022370E0

	thumb_func_start ov104_02237180
ov104_02237180: @ 0x02237180
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldrb r0, [r5, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _022371DA
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	bne _0223719E
	bl FUN_02022974
_0223719E:
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	adds r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02030698
	adds r6, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02025E38
	adds r2, r0, #0
	adds r0, r4, #0
	adds r4, #0xa8
	ldr r1, [r4]
	adds r3, r6, #0
	bl ov104_02237284
	pop {r3, r4, r5, r6, r7, pc}
_022371DA:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	bne _022371E8
	bl FUN_02022974
_022371E8:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	bne _022371F6
	bl FUN_02022974
_022371F6:
	bl FUN_0203608C
	cmp r0, #0
	bne _0223722A
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	adds r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02030698
	adds r6, r0, #0
	ldr r0, _02237280 @ =0x00000A1C
	ldrh r5, [r5, r0]
	b _02237254
_0223722A:
	ldr r0, _02237280 @ =0x00000A1C
	ldrh r6, [r5, r0]
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	str r0, [sp]
	ldrb r0, [r5, #0x10]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r1, [sp]
	adds r0, r7, #0
	bl FUN_02030698
	adds r5, r0, #0
_02237254:
	movs r0, #0
	bl FUN_02032EE8
	adds r1, r4, #0
	adds r1, #0xa8
	adds r2, r0, #0
	ldr r1, [r1]
	adds r0, r4, #0
	adds r3, r6, #0
	bl ov104_02237284
	movs r0, #1
	bl FUN_02032EE8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r4, #0xac
	ldr r1, [r4]
	adds r3, r5, #0
	bl ov104_02237284
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02237280: .4byte 0x00000A1C
	thumb_func_end ov104_02237180

	thumb_func_start ov104_02237284
ov104_02237284: @ 0x02237284
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	str r3, [sp, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r5, #0x34]
	movs r0, #0x14
	str r2, [sp, #0x10]
	bl FUN_02023790
	adds r4, r0, #0
	ldr r1, [r5, #0x34]
	movs r0, #0x14
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xc7
	movs r3, #0xb
	bl FUN_0200B144
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	ldr r2, [sp, #0x14]
	movs r1, #0
	movs r3, #4
	bl FUN_0200B60C
	adds r0, r7, #0
	movs r1, #2
	adds r2, r4, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x44]
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200C388
	movs r3, #0x10
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	adds r2, r6, #0
	bl FUN_0201D738
	ldr r0, [r5, #0x44]
	ldr r2, [sp, #0x10]
	movs r1, #0
	bl FUN_0200B498
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x44]
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200C388
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r2, r6, #0
	adds r3, r1, #0
	str r1, [sp, #8]
	bl FUN_0201D738
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B190
	ldr r0, [sp, #0xc]
	bl FUN_0201A954
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02237284

	thumb_func_start ov104_02237338
ov104_02237338: @ 0x02237338
	ldrb r3, [r0, #0x10]
	ldrh r2, [r0, #0x16]
	cmp r3, #1
	bhi _0223734E
	cmp r2, #8
	blo _02237348
	movs r1, #7
	b _0223735A
_02237348:
	ldr r1, _02237370 @ =0x0223FAB4
	ldrb r1, [r1, r2]
	b _0223735A
_0223734E:
	cmp r2, #8
	blo _02237356
	movs r1, #0x12
	b _0223735A
_02237356:
	ldr r1, _02237374 @ =0x0223FAC0
	ldrb r1, [r1, r2]
_0223735A:
	cmp r3, #0
	bne _0223736A
	ldrh r0, [r0, #0x14]
	cmp r0, #0x15
	beq _02237368
	cmp r0, #0x31
	bne _0223736A
_02237368:
	movs r1, #0x14
_0223736A:
	adds r0, r1, #0
	bx lr
	nop
_02237370: .4byte 0x0223FAB4
_02237374: .4byte 0x0223FAC0
	thumb_func_end ov104_02237338

	thumb_func_start ov104_02237378
ov104_02237378: @ 0x02237378
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	bl ov104_0222FC00
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x10]
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	str r0, [sp, #0x14]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	str r6, [sp]
	lsls r2, r4, #0x18
	ldr r1, [sp, #0x14]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsrs r2, r2, #0x18
	bl ov104_02237DD8
	adds r1, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B980
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02237378

	thumb_func_start ov104_022373DC
ov104_022373DC: @ 0x022373DC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r4, #0
	bl ov104_0223806C
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022373DC

	thumb_func_start ov104_022373F8
ov104_022373F8: @ 0x022373F8
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_02238210
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022373F8

	thumb_func_start ov104_0223740C
ov104_0223740C: @ 0x0223740C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r7, r0, #0
	movs r0, #0xb
	movs r1, #0x48
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x48
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r6, #8]
	adds r1, r7, #0
	str r0, [r4]
	adds r0, r4, #0
	bl ov104_02237634
	ldr r0, _02237458 @ =ov104_0223770C
	ldr r1, _0223745C @ =0x0223FAD8
	str r0, [sp]
	ldr r0, [r5]
	adds r2, r4, #0
	ldr r0, [r0]
	movs r3, #0
	bl FUN_0209B988
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02237458: .4byte ov104_0223770C
_0223745C: .4byte 0x0223FAD8
	thumb_func_end ov104_0223740C

	thumb_func_start ov104_02237460
ov104_02237460: @ 0x02237460
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r6, r0, #0
	ldr r1, [r6, #0xc]
	movs r4, #0x6d
	str r1, [sp, #8]
	ldr r2, [sp, #8]
	ldr r3, [sp, #8]
	lsls r4, r4, #2
	ldr r1, [r1, #4]
	ldr r2, [r2, #0xc]
	ldr r3, [r3, r4]
	bl ov104_02238538
	strb r0, [r6, #0x1d]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x14]
	bl FUN_02052868
	str r0, [r6, #0x28]
	ldrb r0, [r6, #0x13]
	cmp r0, #0x1b
	bne _0223749C
	movs r1, #1
	movs r7, #3
	b _022374A0
_0223749C:
	movs r1, #0
	movs r7, #2
_022374A0:
	ldr r0, [sp, #8]
	lsls r5, r1, #2
	adds r4, r0, #4
	movs r2, #0
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	adds r3, r2, #0
	bl ov104_02239054
	movs r2, #1
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	adds r3, r2, #0
	bl ov104_02239054
	ldrb r0, [r6, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _022374D6
	movs r2, #2
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	adds r3, r2, #0
	bl ov104_02239054
	b _022374F4
_022374D6:
	ldr r0, [sp, #8]
	lsls r5, r7, #2
	adds r4, r0, #4
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	movs r2, #0
	movs r3, #2
	bl ov104_02239054
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	movs r2, #1
	movs r3, #3
	bl ov104_02239054
_022374F4:
	ldrb r0, [r6, #0x13]
	cmp r0, #0x11
	bne _02237548
	ldrb r0, [r6, #0x10]
	movs r1, #1
	bl ov104_0223BD70
	movs r5, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02237548
_0223750A:
	ldr r0, [r6, #0x70]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r4, r0, #0
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	subs r1, r7, #3
	bl FUN_02075AD0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #8
	add r2, sp, #0x10
	bl FUN_02074B30
	adds r0, r4, #0
	bl FUN_0207418C
	ldr r0, [sp, #4]
	adds r5, r5, #1
	cmp r5, r0
	blt _0223750A
_02237548:
	ldr r0, [r6, #0x70]
	bl FUN_0207A0F8
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _022375EA
	adds r5, r6, #0
	add r7, sp, #0x14
_0223755E:
	ldr r0, [r6, #0x70]
	ldr r1, [sp]
	bl FUN_0207A0FC
	adds r1, r5, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r4, r0, #0
	str r1, [sp, #0x14]
	movs r1, #0xa4
	adds r2, r7, #0
	bl FUN_02074B30
	adds r0, r4, #0
	movs r1, #0xa3
	adds r2, r7, #0
	bl FUN_02074B30
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0xa5
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r2, r7, #0
	bl FUN_02074B30
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #0xa6
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r2, r7, #0
	bl FUN_02074B30
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #0xa7
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r2, r7, #0
	bl FUN_02074B30
	adds r0, r5, #0
	adds r0, #0xd4
	ldr r0, [r0]
	movs r1, #0xa8
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r2, r7, #0
	bl FUN_02074B30
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	movs r1, #0xa9
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r2, r7, #0
	bl FUN_02074B30
	ldr r0, [sp]
	adds r5, r5, #4
	adds r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp]
	cmp r1, r0
	blt _0223755E
_022375EA:
	ldr r0, [sp, #8]
	bl FUN_020520A4
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02237460

	thumb_func_start ov104_022375F8
ov104_022375F8: @ 0x022375F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r6, #0
	adds r4, r0, #0
	bl ov104_0223BDD8
	adds r2, r0, #0
	str r2, [r4, #0xc]
	movs r3, #0
	str r3, [sp]
	ldr r0, [r5]
	ldr r1, _02237630 @ =0x020EA358
	ldr r0, [r0]
	bl FUN_0209B988
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02237630: .4byte 0x020EA358
	thumb_func_end ov104_022375F8

	thumb_func_start ov104_02237634
ov104_02237634: @ 0x02237634
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r4, r0, #0
	ldrb r0, [r7, #0x10]
	strb r0, [r4, #4]
	adds r0, r7, #0
	bl ov104_0223C124
	strh r0, [r4, #0x1e]
	adds r0, r7, #0
	adds r0, #0x20
	str r0, [r4, #0x14]
	adds r0, r7, #0
	adds r0, #0x13
	str r0, [r4, #0x10]
	ldrb r0, [r7, #0x1d]
	movs r1, #0
	strb r0, [r4, #7]
	ldrh r0, [r7, #0x18]
	strh r0, [r4, #0x1c]
	ldr r0, _02237708 @ =0x00000A78
	ldrh r0, [r7, r0]
	strh r0, [r4, #0x18]
	adds r0, r7, #0
	adds r0, #0x1c
	str r0, [r4, #0xc]
	ldr r0, [r7, #0x70]
	str r0, [r4, #0x30]
	ldr r0, [r7, #0x74]
	str r0, [r4, #0x34]
	str r7, [r4, #0x3c]
	adds r0, r7, #0
	str r1, [r7, #0x14]
	adds r0, #0x14
	str r0, [r4, #8]
	ldrb r0, [r7, #0x12]
	adds r4, #0x42
	strb r0, [r4]
	strb r1, [r7, #0x12]
	strb r1, [r7, #0x1f]
	ldr r0, [r7, #0x70]
	bl FUN_0207A0F8
	movs r6, #0
	str r0, [sp]
	cmp r0, #0
	ble _02237706
	adds r5, r7, #0
_02237694:
	ldr r0, [r7, #0x70]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #0xa4
	movs r2, #0
	adds r4, r0, #0
	bl FUN_02074470
	adds r1, r5, #0
	adds r1, #0x94
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa5
	movs r2, #0
	bl FUN_02074470
	adds r1, r5, #0
	adds r1, #0xa4
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa6
	movs r2, #0
	bl FUN_02074470
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa7
	movs r2, #0
	bl FUN_02074470
	adds r1, r5, #0
	adds r1, #0xc4
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa8
	movs r2, #0
	bl FUN_02074470
	adds r1, r5, #0
	adds r1, #0xd4
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa9
	movs r2, #0
	bl FUN_02074470
	adds r1, r5, #0
	adds r1, #0xe4
	str r0, [r1]
	ldr r0, [sp]
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _02237694
_02237706:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02237708: .4byte 0x00000A78
	thumb_func_end ov104_02237634

	thumb_func_start ov104_0223770C
ov104_0223770C: @ 0x0223770C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	adds r1, r4, #0
	bl ov104_02238240
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov104_0223770C

	thumb_func_start ov104_02237720
ov104_02237720: @ 0x02237720
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_022384D4
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02237720

	thumb_func_start ov104_02237734
ov104_02237734: @ 0x02237734
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_022384DC
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02237734

	thumb_func_start ov104_02237748
ov104_02237748: @ 0x02237748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r7, r0, #0
	ldr r2, [r7, #0x1c]
	adds r1, r2, #1
	str r1, [r7, #0x1c]
	ldrb r1, [r2]
	str r1, [sp, #0x20]
	bl ov104_0222FC00
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #0
	bl ov104_0222FC00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	adds r0, r7, #0
	bl ov104_0222FBE4
	adds r5, r0, #0
	ldr r0, [r7]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	ldr r0, [r7]
	ldr r0, [r0]
	bl FUN_0209B970
	str r0, [sp, #0x24]
	ldr r0, [r7]
	bl ov104_0222E924
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x28]
	cmp r1, #0x34
	bls _02237798
	b _02237C02
_02237798:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022377A4: @ jump table
	.2byte _02237C02 - _022377A4 - 2 @ case 0
	.2byte _02237C02 - _022377A4 - 2 @ case 1
	.2byte _0223780E - _022377A4 - 2 @ case 2
	.2byte _02237812 - _022377A4 - 2 @ case 3
	.2byte _0223781E - _022377A4 - 2 @ case 4
	.2byte _02237824 - _022377A4 - 2 @ case 5
	.2byte _022379A0 - _022377A4 - 2 @ case 6
	.2byte _02237832 - _022377A4 - 2 @ case 7
	.2byte _02237C02 - _022377A4 - 2 @ case 8
	.2byte _0223783A - _022377A4 - 2 @ case 9
	.2byte _02237844 - _022377A4 - 2 @ case 10
	.2byte _02237A52 - _022377A4 - 2 @ case 11
	.2byte _0223784E - _022377A4 - 2 @ case 12
	.2byte _02237C02 - _022377A4 - 2 @ case 13
	.2byte _0223785A - _022377A4 - 2 @ case 14
	.2byte _02237864 - _022377A4 - 2 @ case 15
	.2byte _02237886 - _022377A4 - 2 @ case 16
	.2byte _022379B2 - _022377A4 - 2 @ case 17
	.2byte _0223788C - _022377A4 - 2 @ case 18
	.2byte _022378BA - _022377A4 - 2 @ case 19
	.2byte _022378C4 - _022377A4 - 2 @ case 20
	.2byte _022378D0 - _022377A4 - 2 @ case 21
	.2byte _022378D8 - _022377A4 - 2 @ case 22
	.2byte _022378E0 - _022377A4 - 2 @ case 23
	.2byte _022378EA - _022377A4 - 2 @ case 24
	.2byte _022378F2 - _022377A4 - 2 @ case 25
	.2byte _02237C02 - _022377A4 - 2 @ case 26
	.2byte _02237C02 - _022377A4 - 2 @ case 27
	.2byte _022379A8 - _022377A4 - 2 @ case 28
	.2byte _022379B8 - _022377A4 - 2 @ case 29
	.2byte _022379BE - _022377A4 - 2 @ case 30
	.2byte _022379C4 - _022377A4 - 2 @ case 31
	.2byte _02237A22 - _022377A4 - 2 @ case 32
	.2byte _02237A2E - _022377A4 - 2 @ case 33
	.2byte _02237A34 - _022377A4 - 2 @ case 34
	.2byte _02237A3A - _022377A4 - 2 @ case 35
	.2byte _02237A46 - _022377A4 - 2 @ case 36
	.2byte _02237A5C - _022377A4 - 2 @ case 37
	.2byte _02237A72 - _022377A4 - 2 @ case 38
	.2byte _02237AC2 - _022377A4 - 2 @ case 39
	.2byte _02237AD4 - _022377A4 - 2 @ case 40
	.2byte _02237B06 - _022377A4 - 2 @ case 41
	.2byte _02237B14 - _022377A4 - 2 @ case 42
	.2byte _02237B22 - _022377A4 - 2 @ case 43
	.2byte _02237B40 - _022377A4 - 2 @ case 44
	.2byte _02237B82 - _022377A4 - 2 @ case 45
	.2byte _02237B8C - _022377A4 - 2 @ case 46
	.2byte _02237B96 - _022377A4 - 2 @ case 47
	.2byte _02237B9C - _022377A4 - 2 @ case 48
	.2byte _02237BBE - _022377A4 - 2 @ case 49
	.2byte _02237BEA - _022377A4 - 2 @ case 50
	.2byte _02237BF2 - _022377A4 - 2 @ case 51
	.2byte _02237BFC - _022377A4 - 2 @ case 52
_0223780E:
	strb r6, [r4, #0x10]
	b _02237C02
_02237812:
	lsls r0, r6, #1
	adds r1, r4, r0
	ldr r0, _02237B2C @ =0x00000418
	ldrh r0, [r1, r0]
	strh r0, [r5]
	b _02237C02
_0223781E:
	ldrh r0, [r4, #0x18]
	strh r0, [r5]
	b _02237C02
_02237824:
	ldrh r1, [r4, #0x18]
	ldr r0, _02237B30 @ =0x0000270F
	cmp r1, r0
	bhs _022378B8
	adds r0, r1, #1
	strh r0, [r4, #0x18]
	b _02237C02
_02237832:
	movs r0, #0
	blx FUN_020C3EE4
	b _02237C02
_0223783A:
	ldr r0, [r4, #8]
	bl FUN_020304B0
	strh r0, [r5]
	b _02237C02
_02237844:
	adds r0, r4, #0
	movs r1, #2
	bl ov104_02238278
	b _02237C02
_0223784E:
	ldrb r1, [r4, #0x13]
	adds r0, r4, #0
	bl ov104_0223C0BC
	strh r0, [r5]
	b _02237C02
_0223785A:
	adds r0, r4, #0
	bl ov104_02238454
	strh r0, [r5]
	b _02237C02
_02237864:
	cmp r6, #0
	bne _02237872
	ldr r0, [r4, #0x70]
	movs r1, #0
	bl FUN_0207A0FC
	b _0223787A
_02237872:
	ldr r0, [r4, #0x74]
	movs r1, #0
	bl FUN_0207A0FC
_0223787A:
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	strh r0, [r5]
	b _02237C02
_02237886:
	ldrb r0, [r4, #0x13]
	strh r0, [r5]
	b _02237C02
_0223788C:
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #8]
	bl FUN_0207A268
	adds r7, r0, #0
	ldr r0, _02237B34 @ =0x00000412
	movs r5, #0
	adds r6, r4, r0
_0223789C:
	adds r1, r4, r5
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r0, r7, #0
	bl FUN_0207A0FC
	movs r1, #6
	adds r2, r6, #0
	bl FUN_02074B30
	adds r5, r5, #1
	adds r6, r6, #2
	cmp r5, #3
	blt _0223789C
_022378B8:
	b _02237C02
_022378BA:
	adds r0, r4, #0
	bl ov104_0223C124
	strh r0, [r5]
	b _02237C02
_022378C4:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_02238464
	strh r0, [r5]
	b _02237C02
_022378D0:
	adds r0, r4, #0
	bl ov104_022384A8
	b _02237C02
_022378D8:
	adds r0, r4, #0
	bl ov104_022384B4
	b _02237C02
_022378E0:
	adds r0, r4, #0
	bl ov104_02238460
	strh r0, [r5]
	b _02237C02
_022378EA:
	ldr r0, _02237B38 @ =0x00000A74
	ldrb r0, [r4, r0]
	strh r0, [r5]
	b _02237C02
_022378F2:
	ldrb r0, [r4, #0x13]
	cmp r0, #0x1b
	bne _0223799E
	ldrb r0, [r4, #0x10]
	movs r1, #1
	bl ov104_0223BD70
	str r0, [sp, #0x18]
	ldrb r0, [r4, #0x10]
	movs r1, #1
	bl ov104_0223BDA4
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0223799E
_02237914:
	ldr r0, [r4, #0x30]
	ldr r7, [r0]
	adds r0, r7, #0
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x38
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x40]
	ldr r5, [r0]
	adds r0, r5, #0
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0x2c
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r3]
	adds r0, r7, #0
	bl FUN_02021C50
	adds r0, r5, #0
	add r1, sp, #0x38
	bl FUN_02021C50
	ldr r0, [r4, #0x50]
	ldr r7, [r0]
	adds r0, r7, #0
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x38
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x60]
	ldr r5, [r0]
	adds r0, r5, #0
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0x2c
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r3]
	adds r0, r7, #0
	bl FUN_02021C50
	adds r0, r5, #0
	add r1, sp, #0x38
	bl FUN_02021C50
	ldr r0, [sp, #0x10]
	adds r4, r4, #4
	adds r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02237914
_0223799E:
	b _02237C02
_022379A0:
	adds r0, r4, #0
	bl FUN_0209BA80
	b _02237C02
_022379A8:
	ldrb r0, [r4, #0x10]
	bl ov104_0223C000
	strh r0, [r5]
	b _02237C02
_022379B2:
	ldrb r0, [r4, #0x10]
	strh r0, [r5]
	b _02237C02
_022379B8:
	bl ov104_02232EC0
	b _02237C02
_022379BE:
	bl ov104_02232F28
	b _02237C02
_022379C4:
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	adds r2, r6, #0
	bl ov104_02238764
	ldrb r0, [r4, #0x10]
	movs r1, #1
	bl ov104_0223BD70
	str r0, [sp, #0x14]
	ldrb r0, [r4, #0x10]
	movs r1, #1
	bl ov104_0223BDA4
	adds r7, r0, #0
	cmp r6, #0
	bne _02237A06
	ldr r0, [sp, #0x14]
	movs r5, #0
	cmp r0, #0
	ble _02237A04
	movs r6, #2
_022379F0:
	ldr r0, [r4, #0x30]
	adds r1, r6, #0
	ldr r0, [r0]
	bl FUN_02021E80
	ldr r0, [sp, #0x14]
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, r0
	blt _022379F0
_02237A04:
	b _02237C02
_02237A06:
	movs r5, #0
	cmp r7, #0
	ble _02237A20
	movs r6, #2
_02237A0E:
	ldr r0, [r4, #0x40]
	adds r1, r6, #0
	ldr r0, [r0]
	bl FUN_02021E80
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, r7
	blt _02237A0E
_02237A20:
	b _02237C02
_02237A22:
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	adds r2, r6, #0
	bl ov104_02238814
	b _02237C02
_02237A2E:
	bl ov104_02232FEC
	b _02237C02
_02237A34:
	bl ov104_0223307C
	b _02237C02
_02237A3A:
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	adds r2, r6, #0
	bl ov104_022388DC
	b _02237C02
_02237A46:
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	adds r2, r6, #0
	bl ov104_022389A0
	b _02237C02
_02237A52:
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	bl ov104_02238658
	b _02237C02
_02237A5C:
	ldrb r0, [r4, #0x10]
	bl ov104_0223C000
	cmp r0, #1
	beq _02237A68
	b _02237C02
_02237A68:
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	bl ov104_02238728
	b _02237C02
_02237A72:
	ldrb r0, [r4, #0x13]
	bl ov104_0223C148
	cmp r0, #0
	bne _02237A9A
	ldr r1, [sp, #0x1c]
	adds r0, r4, #0
	bl ov104_02238498
	adds r2, r0, #0
	lsls r2, r2, #1
	adds r2, r4, r2
	ldr r0, [r7]
	adds r2, #0x78
	ldrh r2, [r2]
	ldr r0, [r0, #0x44]
	adds r1, r6, #0
	bl FUN_0200BA40
	b _02237C02
_02237A9A:
	ldrb r0, [r4, #0x10]
	bl ov104_0223C000
	cmp r0, #0
	bne _02237AAE
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #8]
	bl FUN_02025E38
	b _02237AB4
_02237AAE:
	ldr r0, [sp, #0x1c]
	bl FUN_02032EE8
_02237AB4:
	adds r2, r0, #0
	ldr r0, [r7]
	adds r1, r6, #0
	ldr r0, [r0, #0x44]
	bl FUN_0200B498
	b _02237C02
_02237AC2:
	ldr r1, _02237B3C @ =0x00000A7A
	ldr r0, [sp, #0x1c]
	adds r2, r6, #0
	strb r0, [r4, r1]
	adds r0, r7, #0
	adds r1, r4, #0
	bl ov104_02237C0C
	b _02237C02
_02237AD4:
	ldrb r1, [r4, #0x11]
	adds r0, r4, #0
	adds r0, #0xf4
	lsls r1, r1, #1
	adds r1, r4, r1
	adds r1, #0x78
	ldrh r1, [r1]
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222E278
	ldrb r1, [r4, #0x11]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r1, r1, #7
	lsls r1, r1, #1
	adds r1, r4, r1
	adds r1, #0x78
	ldrh r1, [r1]
	adds r0, r4, r0
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222E278
	b _02237C02
_02237B06:
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	adds r0, r4, #0
	adds r2, r6, #0
	bl ov104_0223886C
	b _02237C02
_02237B14:
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	adds r0, r4, #0
	adds r2, r6, #0
	bl ov104_022388A4
	b _02237C02
_02237B22:
	ldr r1, [sp, #0x1c]
	adds r0, r6, #0
	bl ov104_02238AB4
	b _02237C02
	.align 2, 0
_02237B2C: .4byte 0x00000418
_02237B30: .4byte 0x0000270F
_02237B34: .4byte 0x00000412
_02237B38: .4byte 0x00000A74
_02237B3C: .4byte 0x00000A7A
_02237B40:
	cmp r6, #0
	bne _02237B58
	str r6, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r1, #2
	adds r3, r1, #0
	ldr r0, [r0, #4]
	adds r3, #0xfe
	bl FUN_020039B0
	b _02237C02
_02237B58:
	ldr r0, [r7]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0]
	bl ov104_0223D5A8
	ldr r0, [r0, #4]
	bl FUN_0222D050
	adds r2, r0, #0
	lsls r2, r2, #0x14
	str r6, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	movs r1, #2
	ldr r0, [r0, #4]
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_020039B0
	b _02237C02
_02237B82:
	adds r0, r4, #0
	bl ov104_02239014
	strh r0, [r5]
	b _02237C02
_02237B8C:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	b _02237C02
_02237B96:
	ldrb r0, [r4, #0x1f]
	strh r0, [r5]
	b _02237C02
_02237B9C:
	movs r0, #0
	strh r0, [r5]
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _02237C02
	ldrh r0, [r4, #0x18]
	adds r0, r0, #1
	cmp r0, #0x15
	bne _02237BB4
	movs r0, #1
	strh r0, [r5]
	b _02237C02
_02237BB4:
	cmp r0, #0x31
	bne _02237C02
	movs r0, #2
	strh r0, [r5]
	b _02237C02
_02237BBE:
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	movs r3, #0x33
	lsls r3, r3, #4
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	adds r1, r3, #0
	adds r2, r3, #0
	str r0, [sp, #0xc]
	adds r0, r4, r3
	subs r1, #0x1c
	subs r2, #0x14
	subs r3, #0x10
	adds r1, r4, r1
	adds r2, r4, r2
	adds r3, r4, r3
	bl ov104_0222E330
	b _02237C02
_02237BEA:
	adds r0, r4, #0
	bl ov104_0223C04C
	b _02237C02
_02237BF2:
	ldrb r0, [r4, #0x1e]
	strh r0, [r5]
	movs r0, #1
	strb r0, [r4, #0x1e]
	b _02237C02
_02237BFC:
	ldr r0, _02237C08 @ =0x00000A7C
	movs r1, #0
	strb r1, [r4, r0]
_02237C02:
	movs r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02237C08: .4byte 0x00000A7C
	thumb_func_end ov104_02237748

	thumb_func_start ov104_02237C0C
ov104_02237C0C: @ 0x02237C0C
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	adds r5, r1, #0
	adds r4, r2, #0
	bl ov104_0222E924
	ldr r0, [r0, #0x10]
	movs r1, #0
	bl ov104_0223D6D0
	ldr r2, _02237C2C @ =ov104_02237C30
	adds r1, r4, #0
	adds r3, r5, #0
	bl FUN_020146F4
	pop {r3, r4, r5, pc}
	.align 2, 0
_02237C2C: .4byte ov104_02237C30
	thumb_func_end ov104_02237C0C

	thumb_func_start ov104_02237C30
ov104_02237C30: @ 0x02237C30
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	bl FUN_02014764
	ldr r5, _02237CA4 @ =0x0223FACC
	adds r2, r0, #0
	ldm r5!, {r0, r1}
	add r3, sp, #8
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, _02237CA8 @ =0x00000A7A
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _02237CA0
	adds r0, r4, #0
	add r1, sp, #0
	bl FUN_02014798
	add r1, sp, #0
	movs r0, #0
	ldrsh r2, [r1, r0]
	subs r0, r0, #1
	muls r0, r2, r0
	strh r0, [r1]
	adds r0, r4, #0
	ldrh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r4, #0
	ldrh r2, [r1, #2]
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r4, #0
	ldrh r1, [r1, #4]
	adds r0, #0x54
	strh r1, [r0]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r1, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0xc]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	adds r0, r1, r0
	str r0, [r4, #0x30]
_02237CA0:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_02237CA4: .4byte 0x0223FACC
_02237CA8: .4byte 0x00000A7A
	thumb_func_end ov104_02237C30

	thumb_func_start ov104_02237CAC
ov104_02237CAC: @ 0x02237CAC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r0, [r0, #0x28]
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02237CAC

	thumb_func_start ov104_02237CC8
ov104_02237CC8: @ 0x02237CC8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_02238B40
	strh r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02237CC8

	thumb_func_start ov104_02237CF8
ov104_02237CF8: @ 0x02237CF8
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _02237D14 @ =ov104_02237D18
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_02237D14: .4byte ov104_02237D18
	thumb_func_end ov104_02237CF8

	thumb_func_start ov104_02237D18
ov104_02237D18: @ 0x02237D18
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC8C
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r1, _02237D44 @ =0x00000A7C
	ldrb r2, [r0, r1]
	cmp r2, #2
	blo _02237D3E
	movs r2, #0
	strb r2, [r0, r1]
	movs r0, #1
	pop {r4, pc}
_02237D3E:
	movs r0, #0
	pop {r4, pc}
	nop
_02237D44: .4byte 0x00000A7C
	thumb_func_end ov104_02237D18

	thumb_func_start ov104_02237D48
ov104_02237D48: @ 0x02237D48
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r1, [r5, #0x1c]
	adds r0, r1, #1
	str r0, [r5, #0x1c]
	ldr r0, [r5]
	ldrb r4, [r1]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r2, r0, #0
	bne _02237D6C
	movs r0, #0
	pop {r3, r4, r5, pc}
_02237D6C:
	movs r1, #0x43
	lsls r1, r1, #2
	adds r2, r2, r1
	lsls r1, r4, #4
	adds r1, r4, r1
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r1, r2, r1
	bl ov104_022330FC
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02237D48

	thumb_func_start ov104_02237D84
ov104_02237D84: @ 0x02237D84
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	ldrb r1, [r0, #0x13]
	bl ov104_02238B88
	movs r0, #1
	pop {r3, pc}
	thumb_func_end ov104_02237D84

	thumb_func_start ov104_02237D98
ov104_02237D98: @ 0x02237D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	bl ov104_0222E924
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #4]
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r3, [sp, #4]
	adds r1, r6, #0
	adds r2, r7, #0
	str r4, [sp]
	bl ov104_022389F4
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02237D98

	thumb_func_start ov104_02237DD8
ov104_02237DD8: @ 0x02237DD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r1, #0
	adds r4, r0, #0
	str r2, [sp, #4]
	ldr r1, _02238060 @ =0x00000A88
	movs r0, #0xb
	str r3, [sp, #8]
	bl FUN_02018144
	ldr r1, _02238064 @ =0x02241ACC
	ldr r2, _02238060 @ =0x00000A88
	str r0, [r1]
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, _02238064 @ =0x02241ACC
	ldr r5, [r0]
	adds r0, r4, #0
	bl FUN_020304A0
	str r0, [r5, #8]
	ldr r1, _02238064 @ =0x02241ACC
	str r4, [r5, #4]
	movs r0, #0xb
	str r0, [r5]
	ldr r5, [r1]
	bl FUN_02079FF4
	str r0, [r5, #0x70]
	movs r0, #0xb
	bl FUN_02079FF4
	str r0, [r5, #0x74]
	movs r0, #0x2a
	ldr r1, [sp, #0x38]
	lsls r0, r0, #6
	str r1, [r5, r0]
	movs r0, #0x20
	strb r0, [r5, #0x13]
	adds r0, r4, #0
	ldr r6, [r5, #8]
	bl FUN_020305B8
	adds r4, r0, #0
	cmp r7, #0
	bne _02237EDC
	ldr r0, _02238064 @ =0x02241ACC
	movs r1, #0
	ldr r2, [r0]
	ldr r0, [sp, #4]
	strb r0, [r2, #0x10]
	strb r1, [r2, #0x11]
	movs r0, #3
	strb r0, [r2, #0x1c]
	adds r0, r6, #0
	strb r1, [r2, #0x12]
	bl FUN_02030494
	ldr r0, _02238064 @ =0x02241ACC
	ldr r0, [r0]
	ldrb r2, [r0, #0x10]
	cmp r2, #3
	bne _02237E64
	ldr r0, [r0, #4]
	bl FUN_020507E4
	bl FUN_0206B6FC
	b _02237E70
_02237E64:
	movs r3, #0
	adds r0, r4, #0
	movs r1, #8
	str r3, [sp]
	bl FUN_02030600
_02237E70:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _02237EA8
	ldr r0, _02238064 @ =0x02241ACC
	ldr r5, [r0]
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r4, r0, #0
	ldr r0, _02238064 @ =0x02241ACC
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl FUN_0205E700
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E700
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	strh r0, [r5, #0x18]
	b _02237EB0
_02237EA8:
	ldr r0, _02238064 @ =0x02241ACC
	movs r1, #0
	ldr r0, [r0]
	strh r1, [r0, #0x18]
_02237EB0:
	ldr r0, _02238064 @ =0x02241ACC
	movs r1, #7
	ldr r4, [r0]
	ldrh r0, [r4, #0x18]
	blx FUN_020E1F6C
	strh r0, [r4, #0x1a]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r1, r4, #0
	ldr r0, [sp, #8]
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r4, #0
	add r1, sp, #0x20
	ldrh r2, [r1, #0x10]
	adds r0, #0x2d
	adds r4, #0x2e
	strb r2, [r0]
	ldrh r0, [r1, #0x14]
	strb r0, [r4]
	b _02237F84
_02237EDC:
	movs r1, #0
	adds r0, r6, #0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp]
	bl FUN_0203054C
	ldr r1, _02238064 @ =0x02241ACC
	movs r2, #0
	ldr r1, [r1]
	adds r3, r2, #0
	strb r0, [r1, #0x10]
	adds r0, r6, #0
	movs r1, #2
	str r2, [sp]
	bl FUN_0203054C
	ldr r1, _02238064 @ =0x02241ACC
	movs r2, #0
	ldr r4, [r1]
	movs r1, #3
	strb r0, [r4, #0x11]
	str r2, [sp]
	adds r0, r6, #0
	adds r3, r2, #0
	bl FUN_0203054C
	strb r0, [r4, #0x1c]
	movs r2, #0
	str r2, [sp]
	adds r0, r6, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_0203054C
	strb r0, [r4, #0x12]
	ldr r0, _02238064 @ =0x02241ACC
	ldr r5, [r0]
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r7, r0, #0
	ldr r0, _02238064 @ =0x02241ACC
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl FUN_0205E700
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0x10]
	bl FUN_0205E700
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r1, [sp, #0x10]
	adds r0, r7, #0
	bl FUN_02030698
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	movs r1, #7
	blx FUN_020E1F6C
	movs r4, #0
	strh r0, [r5, #0x1a]
	adds r7, r4, #0
_02237F60:
	ldr r0, _02238064 @ =0x02241ACC
	lsls r2, r4, #0x18
	ldr r5, [r0]
	adds r0, r6, #0
	movs r1, #6
	lsrs r2, r2, #0x18
	adds r3, r7, #0
	str r7, [sp]
	bl FUN_0203054C
	adds r1, r5, r4
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	blo _02237F60
_02237F84:
	ldr r6, _02238064 @ =0x02241ACC
	ldr r7, _02238068 @ =0x00000412
	movs r5, #0
_02237F8A:
	ldr r4, [r6]
	ldr r0, [r4, #4]
	bl FUN_0207A268
	adds r1, r4, r5
	adds r1, #0x2c
	ldrb r1, [r1]
	bl FUN_0207A0FC
	ldr r4, [r6]
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	lsls r1, r5, #1
	adds r1, r4, r1
	strh r0, [r1, r7]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	blo _02237F8A
	ldr r0, [r4, #4]
	bl FUN_0207A268
	str r0, [sp, #0xc]
	ldr r0, _02238064 @ =0x02241ACC
	movs r1, #0
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl ov104_0223BD70
	adds r7, r0, #0
	movs r5, #0
	cmp r7, #0
	ble _0223803E
	ldr r6, _02238064 @ =0x02241ACC
_02237FD4:
	ldr r1, [r6]
	ldr r0, [sp, #0xc]
	adds r1, r1, r5
	adds r1, #0x2c
	ldrb r1, [r1]
	bl FUN_0207A0FC
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r0, [r0, #0x70]
	bl FUN_0207A048
	ldr r0, [r6]
	adds r1, r5, #0
	ldr r0, [r0, #0x70]
	bl FUN_0207A0FC
	movs r1, #0
	str r1, [sp, #0x18]
	adds r4, r0, #0
	movs r1, #6
	add r2, sp, #0x18
	bl FUN_02074B30
	adds r0, r4, #0
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0x32
	bls _02238034
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x32
	bl FUN_02075AD0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #8
	add r2, sp, #0x14
	bl FUN_02074B30
	adds r0, r4, #0
	bl FUN_0207418C
_02238034:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blt _02237FD4
_0223803E:
	ldr r0, _02238064 @ =0x02241ACC
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl ov104_0223C000
	cmp r0, #1
	bne _02238056
	ldr r0, _02238064 @ =0x02241ACC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov104_0222E630
_02238056:
	ldr r0, _02238064 @ =0x02241ACC
	ldr r0, [r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02238060: .4byte 0x00000A88
_02238064: .4byte 0x02241ACC
_02238068: .4byte 0x00000412
	thumb_func_end ov104_02237DD8

	thumb_func_start ov104_0223806C
ov104_0223806C: @ 0x0223806C
	push {r3, lr}
	cmp r1, #0
	bne _02238078
	bl ov104_02238080
	pop {r3, pc}
_02238078:
	bl ov104_02238114
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223806C

	thumb_func_start ov104_02238080
ov104_02238080: @ 0x02238080
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	bl ov104_0223C124
	adds r1, r0, #0
	adds r2, r5, #0
	ldrb r0, [r5, #0x10]
	adds r2, #0x78
	movs r3, #0xe
	bl ov104_0223BD28
	ldrb r0, [r5, #0x10]
	movs r1, #1
	ldrb r4, [r5, #0x11]
	bl ov104_0223BDA4
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl ov104_0223C000
	movs r3, #0x33
	lsls r3, r3, #4
	adds r1, r5, r3
	str r1, [sp]
	adds r1, r3, #0
	subs r1, #0x14
	adds r1, r5, r1
	str r1, [sp, #4]
	adds r1, r3, #0
	subs r1, #0x10
	adds r1, r5, r1
	adds r2, r4, #7
	str r1, [sp, #8]
	lsls r0, r0, #0x18
	lsls r1, r4, #1
	lsls r2, r2, #1
	lsrs r0, r0, #0x18
	adds r1, r5, r1
	adds r2, r5, r2
	str r0, [sp, #0xc]
	adds r1, #0x78
	adds r2, #0x78
	subs r3, #0x1c
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r0, r6, #0
	adds r3, r5, r3
	bl ov104_0222E4BC
	adds r0, r5, #0
	bl ov104_0223C124
	ldr r3, _0223810C @ =0x0223FAF8
	movs r2, #0
_022380EE:
	ldrb r1, [r3]
	cmp r0, r1
	blt _02238100
	ldr r0, _02238110 @ =0x0223FAF9
	lsls r1, r2, #1
	ldrb r0, [r0, r1]
	add sp, #0x10
	strb r0, [r5, #0x1c]
	pop {r4, r5, r6, pc}
_02238100:
	adds r2, r2, #1
	adds r3, r3, #2
	cmp r2, #3
	blo _022380EE
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223810C: .4byte 0x0223FAF8
_02238110: .4byte 0x0223FAF9
	thumb_func_end ov104_02238080

	thumb_func_start ov104_02238114
ov104_02238114: @ 0x02238114
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18c
	adds r5, r0, #0
	bl ov104_022381C4
	movs r4, #0
	adds r6, r5, #0
	adds r7, r4, #0
_02238124:
	str r7, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #5
	lsrs r2, r2, #0x18
	adds r3, r7, #0
	bl FUN_0203054C
	adds r1, r6, #0
	adds r1, #0x78
	adds r4, r4, #1
	adds r6, r6, #2
	strh r0, [r1]
	cmp r4, #0xe
	blt _02238124
	movs r6, #0
	add r4, sp, #0x30
	adds r7, r5, #0
_02238148:
	movs r0, #0
	str r0, [sp]
	lsls r2, r6, #0x18
	ldr r0, [r5, #8]
	movs r1, #7
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_0203054C
	strh r0, [r4]
	ldrh r1, [r4]
	movs r0, #0xc5
	lsls r0, r0, #2
	strh r1, [r7, r0]
	adds r6, r6, #1
	adds r4, r4, #2
	adds r7, r7, #2
	cmp r6, #4
	blt _02238148
	add r0, sp, #0x18
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	add r1, sp, #0x30
	add r2, sp, #0x10
	movs r3, #0
	bl ov104_0222E330
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	movs r7, #0
	add r4, sp, #0x3c
_02238196:
	adds r0, r5, #0
	bl ov104_0223BFFC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_0222DF40
	ldr r1, [r5, #0x74]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov104_0223C034
	adds r7, r7, #1
	adds r4, #0x38
	cmp r7, #4
	blt _02238196
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #0x18c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02238114

	thumb_func_start ov104_022381C4
ov104_022381C4: @ 0x022381C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	bl FUN_0207A0F8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r4, #0
	cmp r7, #0
	ble _0223820A
_022381DA:
	ldr r0, [r5, #0x70]
	adds r1, r4, #0
	bl FUN_0207A0FC
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #4
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_0203054C
	add r1, sp, #4
	strh r0, [r1]
	adds r0, r6, #0
	movs r1, #6
	add r2, sp, #4
	bl FUN_02074B30
	adds r4, r4, #1
	cmp r4, r7
	blt _022381DA
_0223820A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022381C4

	thumb_func_start ov104_02238210
ov104_02238210: @ 0x02238210
	push {r4, lr}
	adds r4, r0, #0
	beq _0223823A
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _02238220
	bl FUN_020181C4
_02238220:
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0223822A
	bl FUN_020181C4
_0223822A:
	ldr r2, _0223823C @ =0x00000A88
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020C4CF4
	adds r0, r4, #0
	bl FUN_020181C4
_0223823A:
	pop {r4, pc}
	.align 2, 0
_0223823C: .4byte 0x00000A88
	thumb_func_end ov104_02238210

	thumb_func_start ov104_02238240
ov104_02238240: @ 0x02238240
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02238260 @ =0x00000418
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_0223824A:
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	bl ov104_02238264
	strh r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #6
	blt _0223824A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02238260: .4byte 0x00000418
	thumb_func_end ov104_02238240

	thumb_func_start ov104_02238264
ov104_02238264: @ 0x02238264
	push {r3, lr}
	cmp r1, #6
	blo _02238272
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
_02238272:
	ldrh r0, [r0, #0x38]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02238264

	thumb_func_start ov104_02238278
ov104_02238278: @ 0x02238278
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	bl FUN_020305B8
	str r0, [sp, #4]
	ldrb r0, [r5, #0x10]
	movs r1, #1
	bl ov104_0223BDA4
	ldrb r1, [r5, #0x10]
	add r0, sp, #8
	strb r1, [r0, #8]
	movs r1, #0
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r5, #8]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_020304CC
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_020304B8
	movs r2, #0
	ldrb r1, [r5, #0x11]
	add r0, sp, #8
	adds r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #2
	bl FUN_020304CC
	movs r2, #0
	ldrb r1, [r5, #0x1c]
	add r0, sp, #8
	adds r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #3
	bl FUN_020304CC
	movs r2, #0
	ldrb r1, [r5, #0x12]
	add r0, sp, #8
	adds r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_020304CC
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E700
	adds r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E700
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_020306E4
	cmp r4, #2
	beq _0223837E
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r4, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E728
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl FUN_0205E728
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldrh r3, [r5, #0x18]
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030848
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	add r0, sp, #8
	movs r3, #0
	strb r1, [r0, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldrb r2, [r5, #0x10]
	ldr r0, [sp, #4]
	movs r1, #8
	bl FUN_020305CC
	ldrb r0, [r5, #0x10]
	cmp r0, #3
	bne _0223837E
	ldr r0, [r5, #4]
	bl FUN_0203068C
	adds r4, r0, #0
	movs r0, #0x6e
	bl FUN_0205E6A8
	adds r3, r5, #0
	adds r3, #0x2f
	adds r2, r0, #0
	ldrb r3, [r3]
	adds r0, r4, #0
	movs r1, #0x6e
	bl FUN_020306E4
_0223837E:
	movs r4, #0
	add r6, sp, #8
	add r7, sp, #8
_02238384:
	lsls r0, r4, #1
	adds r0, r5, r0
	adds r0, #0x78
	ldrh r0, [r0]
	lsls r2, r4, #0x18
	movs r1, #5
	strh r0, [r7]
	str r6, [sp]
	ldr r0, [r5, #8]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_020304CC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xe
	blo _02238384
	movs r4, #0
	add r6, sp, #0x10
	add r7, sp, #8
_022383AE:
	adds r0, r5, r4
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r2, r4, #0x18
	movs r1, #6
	strb r0, [r7, #8]
	str r6, [sp]
	ldr r0, [r5, #8]
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_020304CC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	blo _022383AE
	ldr r0, [r5, #0x70]
	bl FUN_0207A0F8
	adds r6, r0, #0
	ldr r4, _02238450 @ =0x00000000
	beq _0223840C
	add r7, sp, #8
_022383DE:
	ldr r0, [r5, #0x70]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	add r1, sp, #8
	strh r0, [r1]
	str r7, [sp]
	lsls r2, r4, #0x18
	ldr r0, [r5, #8]
	movs r1, #4
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_020304CC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _022383DE
_0223840C:
	ldr r0, [r5, #0x74]
	bl FUN_0207A0F8
	adds r6, r0, #0
	ldr r4, _02238450 @ =0x00000000
	beq _0223844A
	add r7, sp, #8
_0223841A:
	ldr r0, [r5, #0x74]
	adds r1, r4, #0
	bl FUN_0207A0FC
	lsls r0, r4, #1
	adds r1, r5, r0
	movs r0, #0xc5
	lsls r0, r0, #2
	ldrh r1, [r1, r0]
	add r0, sp, #8
	lsls r2, r4, #0x18
	strh r1, [r0]
	str r7, [sp]
	ldr r0, [r5, #8]
	movs r1, #7
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_020304CC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0223841A
_0223844A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02238450: .4byte 0x00000000
	thumb_func_end ov104_02238278

	thumb_func_start ov104_02238454
ov104_02238454: @ 0x02238454
	ldrb r1, [r0, #0x11]
	adds r1, r1, #1
	strb r1, [r0, #0x11]
	ldrb r0, [r0, #0x11]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02238454

	thumb_func_start ov104_02238460
ov104_02238460: @ 0x02238460
	ldrb r0, [r0, #0x11]
	bx lr
	thumb_func_end ov104_02238460

	thumb_func_start ov104_02238464
ov104_02238464: @ 0x02238464
	push {r4, lr}
	sub sp, #0x30
	adds r4, r0, #0
	bl ov104_02238498
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x17
	adds r1, r4, r1
	adds r1, #0x78
	ldrh r1, [r1]
	add r0, sp, #0
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl ov104_0222E10C
	add sp, #0x30
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_02238464

	thumb_func_start ov104_02238498
ov104_02238498: @ 0x02238498
	ldrb r2, [r0, #0x11]
	movs r0, #7
	muls r0, r1, r0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
	thumb_func_end ov104_02238498

	thumb_func_start ov104_022384A8
ov104_022384A8: @ 0x022384A8
	ldr r3, _022384B0 @ =ov104_02238278
	movs r1, #1
	bx r3
	nop
_022384B0: .4byte ov104_02238278
	thumb_func_end ov104_022384A8

	thumb_func_start ov104_022384B4
ov104_022384B4: @ 0x022384B4
	adds r1, r0, #0
	movs r2, #1
	adds r1, #0x2f
	strb r2, [r1]
	ldrh r1, [r0, #0x1a]
	cmp r1, #8
	bhs _022384C6
	adds r1, r1, #1
	strh r1, [r0, #0x1a]
_022384C6:
	ldr r3, _022384D0 @ =ov104_02238278
	movs r1, #0
	strb r1, [r0, #0x11]
	bx r3
	nop
_022384D0: .4byte ov104_02238278
	thumb_func_end ov104_022384B4

	thumb_func_start ov104_022384D4
ov104_022384D4: @ 0x022384D4
	ldr r3, _022384D8 @ =ov104_0223C04C
	bx r3
	.align 2, 0
_022384D8: .4byte ov104_0223C04C
	thumb_func_end ov104_022384D4

	thumb_func_start ov104_022384DC
ov104_022384DC: @ 0x022384DC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	movs r1, #1
	ldrb r4, [r5, #0x11]
	bl ov104_0223BDA4
	adds r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl ov104_0223C000
	movs r3, #0x33
	lsls r3, r3, #4
	adds r1, r5, r3
	str r1, [sp]
	adds r1, r3, #0
	subs r1, #0x14
	adds r1, r5, r1
	str r1, [sp, #4]
	adds r1, r3, #0
	subs r1, #0x10
	adds r1, r5, r1
	adds r2, r4, #7
	str r1, [sp, #8]
	lsls r0, r0, #0x18
	lsls r1, r4, #1
	lsls r2, r2, #1
	lsrs r0, r0, #0x18
	adds r1, r5, r1
	adds r2, r5, r2
	str r0, [sp, #0xc]
	adds r1, #0x78
	adds r2, #0x78
	subs r3, #0x1c
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r0, r6, #0
	adds r3, r5, r3
	bl ov104_0222E4BC
	adds r0, r5, #0
	bl ov104_0223C04C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_022384DC

	thumb_func_start ov104_02238538
ov104_02238538: @ 0x02238538
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0x10]
	movs r4, #0
	adds r7, r1, #0
	str r2, [sp]
	adds r1, r4, #0
	adds r5, r3, #0
	bl ov104_0223BD70
	adds r3, r0, #0
	ldr r2, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov104_02238584
	ldr r2, _0223857C @ =0x0223FAFE
	adds r4, r4, r0
	movs r1, #0
_0223855E:
	ldrb r0, [r2]
	cmp r5, r0
	bge _0223856E
	ldr r0, _02238580 @ =0x0223FAFF
	lsls r1, r1, #1
	ldrb r0, [r0, r1]
	adds r4, r4, r0
	b _02238576
_0223856E:
	adds r1, r1, #1
	adds r2, r2, #2
	cmp r1, #5
	blt _0223855E
_02238576:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223857C: .4byte 0x0223FAFE
_02238580: .4byte 0x0223FAFF
	thumb_func_end ov104_02238538

	thumb_func_start ov104_02238584
ov104_02238584: @ 0x02238584
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #0xc]
	str r0, [sp]
	movs r4, #0
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	str r2, [sp, #8]
	adds r5, r4, #0
	adds r6, r4, #0
	cmp r0, #0
	ble _022385E2
_0223859C:
	ldr r0, [sp, #4]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #0xac
	movs r2, #0
	adds r7, r0, #0
	bl FUN_02074470
	cmp r0, #0
	beq _022385DA
	adds r0, r7, #0
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _022385C6
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_022385C6:
	adds r0, r7, #0
	movs r1, #0xa0
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _022385DA
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_022385DA:
	ldr r0, [sp, #0xc]
	adds r6, r6, #1
	cmp r6, r0
	blt _0223859C
_022385E2:
	ldr r0, [sp]
	ldrb r0, [r0, #0x10]
	bl ov104_0223C000
	cmp r0, #1
	bne _0223863C
	ldr r0, [sp, #0xc]
	movs r6, #0
	cmp r0, #0
	ble _0223863C
_022385F6:
	ldr r0, [sp, #8]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #0xac
	movs r2, #0
	adds r7, r0, #0
	bl FUN_02074470
	cmp r0, #0
	beq _02238634
	adds r0, r7, #0
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _02238620
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_02238620:
	adds r0, r7, #0
	movs r1, #0xa0
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _02238634
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_02238634:
	ldr r0, [sp, #0xc]
	adds r6, r6, #1
	cmp r6, r0
	blt _022385F6
_0223863C:
	ldr r0, _02238650 @ =0x0223FAF0
	ldrb r1, [r0, r5]
	movs r0, #0
	adds r1, r0, r1
	ldr r0, _02238654 @ =0x0223FAE8
	ldrb r0, [r0, r4]
	adds r0, r1, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02238650: .4byte 0x0223FAF0
_02238654: .4byte 0x0223FAE8
	thumb_func_end ov104_02238584

	thumb_func_start ov104_02238658
ov104_02238658: @ 0x02238658
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldrb r0, [r5, #0x13]
	adds r4, r1, #0
	cmp r0, #0x20
	beq _0223870E
	movs r0, #0x96
	movs r1, #0x5e
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x5e
	str r1, [sp, #0xc]
	ldrb r2, [r5, #0x13]
	movs r1, #6
	adds r6, r0, #0
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _0223871C @ =0x0223FBBA
	ldr r2, [r4]
	ldrh r1, [r1, r3]
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5e
	str r0, [sp, #0xc]
	ldrb r2, [r5, #0x13]
	movs r1, #6
	adds r0, r6, #0
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _02238720 @ =0x0223FBBC
	ldr r2, [r4]
	ldrh r1, [r1, r3]
	movs r3, #2
	bl FUN_0200710C
	ldrb r2, [r5, #0x13]
	movs r1, #6
	adds r0, r6, #0
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _02238724 @ =0x0223FBBE
	add r2, sp, #0x10
	ldrh r1, [r1, r3]
	movs r3, #0x5e
	bl FUN_020071EC
	ldr r1, [sp, #0x10]
	adds r5, r0, #0
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	blx FUN_020C2C54
	blx FUN_020C096C
	ldr r0, [sp, #0x10]
	movs r1, #1
	lsls r1, r1, #0xe
	ldr r0, [r0, #0xc]
	lsrs r2, r1, #1
	blx FUN_020C0A0C
	blx FUN_020C0A7C
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
	adds r0, r6, #0
	bl FUN_02006CA8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_0223870E:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0223871C: .4byte 0x0223FBBA
_02238720: .4byte 0x0223FBBC
_02238724: .4byte 0x0223FBBE
	thumb_func_end ov104_02238658

	thumb_func_start ov104_02238728
ov104_02238728: @ 0x02238728
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	movs r0, #0x96
	movs r1, #0x5e
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x5e
	str r1, [sp, #0xc]
	ldr r2, [r5]
	movs r1, #0x35
	movs r3, #3
	adds r4, r0, #0
	bl FUN_0200710C
	ldr r0, [r5]
	movs r1, #3
	bl FUN_0201C3C0
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02238728

	thumb_func_start ov104_02238764
ov104_02238764: @ 0x02238764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldrb r0, [r0, #0x10]
	str r1, [sp, #8]
	movs r1, #1
	adds r4, r2, #0
	bl ov104_0223BD70
	adds r7, r0, #0
	ldr r0, [sp, #4]
	movs r1, #1
	ldrb r0, [r0, #0x10]
	bl ov104_0223BDA4
	str r0, [sp, #0xc]
	cmp r4, #0
	bne _022387C8
	movs r4, #0
	cmp r7, #0
	ble _02238808
	ldr r5, _0223880C @ =0x0223FB18
	ldr r6, [sp, #4]
_02238792:
	ldr r0, [sp, #4]
	adds r1, r4, #0
	ldr r0, [r0, #0x70]
	bl FUN_0207A0FC
	adds r1, r0, #0
	movs r0, #2
	ldrsh r0, [r5, r0]
	movs r3, #0
	adds r2, r4, #0
	str r0, [sp]
	ldrsh r3, [r5, r3]
	ldr r0, [sp, #8]
	bl ov104_02232F4C
	str r0, [r6, #0x30]
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021CC8
	adds r4, r4, #1
	adds r5, r5, #4
	adds r6, r6, #4
	cmp r4, r7
	blt _02238792
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022387C8:
	movs r6, #0
	cmp r0, #0
	ble _02238808
	ldr r4, _02238810 @ =0x0223FB28
	ldr r5, [sp, #4]
_022387D2:
	ldr r0, [sp, #4]
	adds r1, r6, #0
	ldr r0, [r0, #0x74]
	bl FUN_0207A0FC
	adds r1, r0, #0
	movs r0, #2
	ldrsh r0, [r4, r0]
	movs r3, #0
	adds r2, r7, #0
	str r0, [sp]
	ldrsh r3, [r4, r3]
	ldr r0, [sp, #8]
	bl ov104_02232F4C
	str r0, [r5, #0x40]
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021CC8
	ldr r0, [sp, #0xc]
	adds r6, r6, #1
	adds r4, r4, #4
	adds r7, r7, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _022387D2
_02238808:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223880C: .4byte 0x0223FB18
_02238810: .4byte 0x0223FB28
	thumb_func_end ov104_02238764

	thumb_func_start ov104_02238814
ov104_02238814: @ 0x02238814
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	adds r7, r1, #0
	movs r1, #1
	adds r6, r2, #0
	bl ov104_0223BD70
	adds r4, r0, #0
	ldrb r0, [r5, #0x10]
	movs r1, #1
	bl ov104_0223BDA4
	str r0, [sp]
	cmp r6, #0
	bne _0223884E
	movs r6, #0
	cmp r4, #0
	ble _0223886A
_0223883A:
	ldr r1, [r5, #0x30]
	adds r0, r7, #0
	adds r2, r6, #0
	bl ov104_02232FD4
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r4
	blt _0223883A
	pop {r3, r4, r5, r6, r7, pc}
_0223884E:
	movs r6, #0
	cmp r0, #0
	ble _0223886A
_02238854:
	ldr r1, [r5, #0x40]
	adds r0, r7, #0
	adds r2, r4, #0
	bl ov104_02232FD4
	ldr r0, [sp]
	adds r6, r6, #1
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _02238854
_0223886A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02238814

	thumb_func_start ov104_0223886C
ov104_0223886C: @ 0x0223886C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	movs r1, #1
	adds r6, r2, #0
	adds r4, r3, #0
	bl ov104_0223BD70
	cmp r4, r0
	bge _022388A2
	cmp r6, #1
	bne _02238894
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x30]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02021CAC
	pop {r4, r5, r6, pc}
_02238894:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x30]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02021CAC
_022388A2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0223886C

	thumb_func_start ov104_022388A4
ov104_022388A4: @ 0x022388A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	movs r1, #1
	adds r6, r2, #0
	adds r4, r3, #0
	bl ov104_0223BDA4
	cmp r4, r0
	bge _022388DA
	cmp r6, #1
	bne _022388CC
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x40]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02021CAC
	pop {r4, r5, r6, pc}
_022388CC:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x40]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02021CAC
_022388DA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_022388A4

	thumb_func_start ov104_022388DC
ov104_022388DC: @ 0x022388DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldrb r0, [r7, #0x10]
	str r1, [sp]
	movs r1, #1
	adds r4, r2, #0
	bl ov104_0223BD70
	str r0, [sp, #8]
	ldrb r0, [r7, #0x10]
	movs r1, #1
	bl ov104_0223BDA4
	str r0, [sp, #4]
	cmp r4, #0
	bne _0223894C
	ldr r0, [sp, #8]
	movs r6, #0
	cmp r0, #0
	ble _02238994
	ldr r4, _02238998 @ =0x0223FB18
	adds r5, r7, #0
_0223890A:
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [sp]
	adds r1, #8
	adds r2, r2, #4
	bl ov104_022330AC
	str r0, [r5, #0x50]
	ldr r0, [r7, #0x70]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223893C
	ldr r0, [r5, #0x50]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02021CAC
_0223893C:
	ldr r0, [sp, #8]
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, r0
	blt _0223890A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0223894C:
	movs r6, #0
	cmp r0, #0
	ble _02238994
	ldr r4, _0223899C @ =0x0223FB28
	adds r5, r7, #0
_02238956:
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [sp]
	adds r1, #8
	adds r2, r2, #4
	bl ov104_022330AC
	str r0, [r5, #0x60]
	ldr r0, [r7, #0x74]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _02238988
	ldr r0, [r5, #0x60]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02021CAC
_02238988:
	ldr r0, [sp, #4]
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, r0
	blt _02238956
_02238994:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02238998: .4byte 0x0223FB18
_0223899C: .4byte 0x0223FB28
	thumb_func_end ov104_022388DC

	thumb_func_start ov104_022389A0
ov104_022389A0: @ 0x022389A0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	adds r4, r1, #0
	movs r1, #1
	adds r6, r2, #0
	bl ov104_0223BD70
	str r0, [sp]
	ldrb r0, [r5, #0x10]
	movs r1, #1
	bl ov104_0223BDA4
	adds r7, r0, #0
	cmp r6, #0
	bne _022389DC
	ldr r0, [sp]
	movs r6, #0
	cmp r0, #0
	ble _022389F2
_022389C8:
	ldr r1, [r5, #0x50]
	adds r0, r4, #0
	bl ov104_022330F0
	ldr r0, [sp]
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _022389C8
	pop {r3, r4, r5, r6, r7, pc}
_022389DC:
	movs r6, #0
	cmp r7, #0
	ble _022389F2
_022389E2:
	ldr r1, [r5, #0x60]
	adds r0, r4, #0
	bl ov104_022330F0
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r7
	blt _022389E2
_022389F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022389A0

	thumb_func_start ov104_022389F4
ov104_022389F4: @ 0x022389F4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	movs r1, #1
	adds r6, r2, #0
	adds r4, r3, #0
	bl ov104_0223BD70
	adds r7, r0, #0
	ldrb r0, [r5, #0x10]
	movs r1, #1
	bl ov104_0223BDA4
	cmp r6, #0
	bne _02238A62
	cmp r4, r7
	bge _02238AB0
	ldr r0, [r5, #0x70]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	cmp r1, #1
	bne _02238A52
	cmp r0, #0
	bne _02238A42
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x50]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238A42:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x50]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238A52:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x50]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238A62:
	cmp r4, r0
	bge _02238AB0
	ldr r0, [r5, #0x74]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	cmp r1, #1
	bne _02238AA2
	cmp r0, #0
	bne _02238A92
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x60]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238A92:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x60]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238AA2:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x60]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02021CAC
_02238AB0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_022389F4

	thumb_func_start ov104_02238AB4
ov104_02238AB4: @ 0x02238AB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	cmp r1, #0
	bne _02238AC6
	movs r5, #0x1e
	movs r6, #0x8f
	lsls r5, r5, #4
	b _02238ACC
_02238AC6:
	movs r6, #0x8e
	adds r5, r6, #0
	adds r5, #0x92
_02238ACC:
	movs r1, #2
	movs r0, #0x5e
	lsls r1, r1, #0xc
	bl FUN_02018144
	movs r2, #2
	movs r1, #0
	lsls r2, r2, #0xc
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x96
	movs r1, #0x5e
	bl FUN_02006C24
	adds r1, r6, #0
	add r2, sp, #8
	movs r3, #0x5e
	str r0, [sp, #4]
	bl FUN_020071EC
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	movs r2, #1
	ldr r0, [r0, #0xc]
	adds r1, r4, #0
	lsls r2, r2, #0xc
	adds r3, r7, #0
	bl FUN_0200393C
	movs r1, #2
	adds r0, r4, #0
	lsls r1, r1, #0xc
	blx FUN_020C2C54
	blx FUN_020C096C
	movs r1, #6
	adds r0, r4, #0
	lsls r1, r1, #0xc
	adds r2, r5, #0
	blx FUN_020C0A0C
	blx FUN_020C0A7C
	ldr r0, [sp, #4]
	bl FUN_02006CA8
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_02238AB4

	thumb_func_start ov104_02238B40
ov104_02238B40: @ 0x02238B40
	push {r3, lr}
	cmp r1, #5
	bhi _02238B84
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02238B52: @ jump table
	.2byte _02238B5E - _02238B52 - 2 @ case 0
	.2byte _02238B64 - _02238B52 - 2 @ case 1
	.2byte _02238B6A - _02238B52 - 2 @ case 2
	.2byte _02238B70 - _02238B52 - 2 @ case 3
	.2byte _02238B78 - _02238B52 - 2 @ case 4
	.2byte _02238B80 - _02238B52 - 2 @ case 5
_02238B5E:
	bl ov104_0222F86C
	pop {r3, pc}
_02238B64:
	bl ov104_0222F8D0
	pop {r3, pc}
_02238B6A:
	bl ov104_0222F944
	pop {r3, pc}
_02238B70:
	adds r1, r2, #0
	bl ov104_0222FA38
	pop {r3, pc}
_02238B78:
	adds r1, r2, #0
	bl ov104_0222FA84
	pop {r3, pc}
_02238B80:
	bl ov104_0222FAD0
_02238B84:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02238B40

	thumb_func_start ov104_02238B88
ov104_02238B88: @ 0x02238B88
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r6, #9
	bhs _02238B9E
	ldrb r0, [r5, #0x10]
	movs r1, #1
	ldr r4, [r5, #0x74]
	bl ov104_0223BDA4
	b _02238BA8
_02238B9E:
	ldrb r0, [r5, #0x10]
	movs r1, #1
	ldr r4, [r5, #0x70]
	bl ov104_0223BD70
_02238BA8:
	ldr r3, _02238BB8 @ =0x02241A38
	adds r1, r4, #0
	lsls r4, r6, #2
	adds r2, r0, #0
	ldr r3, [r3, r4]
	adds r0, r5, #0
	blx r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_02238BB8: .4byte 0x02241A38
	thumb_func_end ov104_02238B88

	thumb_func_start ov104_02238BBC
ov104_02238BBC: @ 0x02238BBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r2, #0
	movs r5, #0
	str r1, [sp]
	cmp r7, #0
	ble _02238C0C
_02238BCA:
	ldr r0, [sp]
	adds r1, r5, #0
	bl FUN_0207A0FC
	movs r1, #0xa4
	movs r2, #0
	adds r6, r0, #0
	bl FUN_02074470
	adds r4, r0, #0
	blx FUN_020E01F8
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _02238C10 @ =0x33333333
	ldr r1, _02238C14 @ =0x3FF33333
	blx FUN_020E0234
	blx FUN_020E00D4
	str r0, [sp, #4]
	subs r0, r0, r4
	str r0, [sp, #4]
	subs r0, r4, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0xa3
	add r2, sp, #4
	bl FUN_02074B30
	adds r5, r5, #1
	cmp r5, r7
	blt _02238BCA
_02238C0C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02238C10: .4byte 0x33333333
_02238C14: .4byte 0x3FF33333
	thumb_func_end ov104_02238BBC

	thumb_func_start ov104_02238C18
ov104_02238C18: @ 0x02238C18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #8]
	str r0, [sp]
	movs r5, #0
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	str r5, [sp, #0xc]
	cmp r0, #0
	ble _02238C88
_02238C2C:
	ldr r0, [sp, #4]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r4, r0, #0
	movs r1, #0xb1
	movs r2, #0
	bl FUN_02074470
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0xb2
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_02074470
	cmp r6, #3
	beq _02238C6A
	cmp r7, #3
	beq _02238C6A
	cmp r6, #8
	beq _02238C6A
	cmp r7, #8
	beq _02238C6A
	cmp r0, #0x11
	bne _02238C72
_02238C6A:
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
	b _02238C80
_02238C72:
	movs r0, #8
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0xa0
	add r2, sp, #0x10
	bl FUN_02074B30
_02238C80:
	ldr r0, [sp, #8]
	adds r5, r5, #1
	cmp r5, r0
	blt _02238C2C
_02238C88:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _02238C96
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x1f]
_02238C96:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02238C18

	thumb_func_start ov104_02238C9C
ov104_02238C9C: @ 0x02238C9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #8]
	str r0, [sp]
	movs r6, #0
	ldr r0, [sp, #8]
	adds r5, r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _02238D02
_02238CB0:
	ldr r0, [sp, #4]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r4, r0, #0
	movs r1, #0xb1
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #0xb2
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_02074470
	cmp r7, #4
	beq _02238CE8
	ldr r1, [sp, #0xc]
	cmp r1, #4
	beq _02238CE8
	cmp r0, #7
	bne _02238CEC
_02238CE8:
	adds r6, r6, #1
	b _02238CFA
_02238CEC:
	movs r0, #0x40
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0xa0
	add r2, sp, #0x10
	bl FUN_02074B30
_02238CFA:
	ldr r0, [sp, #8]
	adds r5, r5, #1
	cmp r5, r0
	blt _02238CB0
_02238D02:
	ldr r0, [sp, #8]
	cmp r6, r0
	blt _02238D0E
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x1f]
_02238D0E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02238C9C

	thumb_func_start ov104_02238D14
ov104_02238D14: @ 0x02238D14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #8]
	str r0, [sp]
	movs r6, #0
	ldr r0, [sp, #8]
	adds r5, r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _02238D7A
_02238D28:
	ldr r0, [sp, #4]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r4, r0, #0
	movs r1, #0xb1
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #0xb2
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_02074470
	cmp r7, #0xa
	beq _02238D60
	ldr r1, [sp, #0xc]
	cmp r1, #0xa
	beq _02238D60
	cmp r0, #0x29
	bne _02238D64
_02238D60:
	adds r6, r6, #1
	b _02238D72
_02238D64:
	movs r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0xa0
	add r2, sp, #0x10
	bl FUN_02074B30
_02238D72:
	ldr r0, [sp, #8]
	adds r5, r5, #1
	cmp r5, r0
	blt _02238D28
_02238D7A:
	ldr r0, [sp, #8]
	cmp r6, r0
	blt _02238D86
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x1f]
_02238D86:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02238D14

	thumb_func_start ov104_02238D8C
ov104_02238D8C: @ 0x02238D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldrh r0, [r0, #0x20]
	adds r5, r2, #0
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r6, #0
	blx FUN_020E1F6C
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	adds r7, r6, #0
	cmp r5, #0
	ble _02238DFA
_02238DAA:
	ldr r0, [sp, #4]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #0xa
	movs r2, #0
	str r0, [sp, #8]
	bl FUN_02074470
	cmp r0, #0xf
	beq _02238DC4
	cmp r0, #0x48
	bne _02238DD4
_02238DC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r6, #1
	cmp r4, r5
	blo _02238DF4
	movs r4, #0
	b _02238DF4
_02238DD4:
	bl FUN_0201D2E8
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	adds r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	movs r1, #0xa0
	add r2, sp, #0xc
	bl FUN_02074B30
	b _02238DFA
_02238DF4:
	adds r7, r7, #1
	cmp r7, r5
	blt _02238DAA
_02238DFA:
	cmp r6, r5
	blt _02238E04
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x1f]
_02238E04:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02238D8C

	thumb_func_start ov104_02238E08
ov104_02238E08: @ 0x02238E08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldrh r0, [r0, #0x20]
	adds r6, r2, #0
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r7, #0
	blx FUN_020E1F6C
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, #0
	str r0, [sp, #8]
	cmp r6, #0
	ble _02238E8C
_02238E28:
	ldr r0, [sp, #4]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r4, r0, #0
	movs r1, #0xb1
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0xb2
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_02074470
	ldr r1, [sp, #0xc]
	cmp r1, #0xf
	beq _02238E62
	ldr r1, [sp, #0x10]
	cmp r1, #0xf
	beq _02238E62
	cmp r0, #0x28
	bne _02238E72
_02238E62:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r7, r7, #1
	cmp r5, r6
	blo _02238E82
	movs r5, #0
	b _02238E82
_02238E72:
	movs r0, #0x20
	str r0, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #0xa0
	add r2, sp, #0x14
	bl FUN_02074B30
	b _02238E8C
_02238E82:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r6
	blt _02238E28
_02238E8C:
	cmp r7, r6
	blt _02238E96
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x1f]
_02238E96:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02238E08

	thumb_func_start ov104_02238E9C
ov104_02238E9C: @ 0x02238E9C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	bl ov104_0223C124
	cmp r0, #3
	bhs _02238EB4
	ldr r0, _02238EF4 @ =0x02241A20
	movs r1, #8
	ldr r4, [r0]
	b _02238EC6
_02238EB4:
	cmp r0, #6
	bhs _02238EC0
	ldr r0, _02238EF4 @ =0x02241A20
	movs r1, #0x14
	ldr r4, [r0, #4]
	b _02238EC6
_02238EC0:
	ldr r0, _02238EF4 @ =0x02241A20
	movs r1, #0xa
	ldr r4, [r0, #8]
_02238EC6:
	ldrh r0, [r7, #0x20]
	blx FUN_020E1F6C
	lsls r0, r1, #1
	ldrh r1, [r4, r0]
	add r0, sp, #0
	movs r4, #0
	strh r1, [r0]
	cmp r5, #0
	ble _02238EF2
	movs r7, #6
_02238EDC:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0207A0FC
	adds r1, r7, #0
	add r2, sp, #0
	bl FUN_02074B30
	adds r4, r4, #1
	cmp r4, r5
	blt _02238EDC
_02238EF2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02238EF4: .4byte 0x02241A20
	thumb_func_end ov104_02238E9C

	thumb_func_start ov104_02238EF8
ov104_02238EF8: @ 0x02238EF8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	bl ov104_0223C124
	cmp r0, #3
	bhs _02238F10
	ldr r0, _02238F50 @ =0x02241A20
	movs r1, #0xb
	ldr r4, [r0, #0xc]
	b _02238F22
_02238F10:
	cmp r0, #6
	bhs _02238F1C
	ldr r0, _02238F50 @ =0x02241A20
	movs r1, #0xd
	ldr r4, [r0, #0x10]
	b _02238F22
_02238F1C:
	ldr r0, _02238F50 @ =0x02241A20
	movs r1, #0xb
	ldr r4, [r0, #0x14]
_02238F22:
	ldrh r0, [r7, #0x20]
	blx FUN_020E1F6C
	lsls r0, r1, #1
	ldrh r1, [r4, r0]
	add r0, sp, #0
	movs r4, #0
	strh r1, [r0]
	cmp r5, #0
	ble _02238F4E
	movs r7, #6
_02238F38:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0207A0FC
	adds r1, r7, #0
	add r2, sp, #0
	bl FUN_02074B30
	adds r4, r4, #1
	cmp r4, r5
	blt _02238F38
_02238F4E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02238F50: .4byte 0x02241A20
	thumb_func_end ov104_02238EF8

	thumb_func_start ov104_02238F54
ov104_02238F54: @ 0x02238F54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r2, #0
	movs r4, #0
	str r1, [sp]
	cmp r7, #0
	ble _02238FA8
_02238F62:
	ldr r0, [sp]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #0xa1
	movs r2, #0
	adds r5, r0, #0
	bl FUN_02074470
	adds r6, r0, #3
	cmp r6, #0x64
	bls _02238F80
	bl FUN_02022974
	movs r6, #0x64
_02238F80:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	adds r1, r6, #0
	bl FUN_02075AD0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #8
	add r2, sp, #4
	bl FUN_02074B30
	adds r0, r5, #0
	bl FUN_0207418C
	adds r4, r4, #1
	cmp r4, r7
	blt _02238F62
_02238FA8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02238F54

	thumb_func_start ov104_02238FAC
ov104_02238FAC: @ 0x02238FAC
	ldr r1, _02238FB4 @ =0x000003E9
	str r1, [r0, #0x14]
	bx lr
	nop
_02238FB4: .4byte 0x000003E9
	thumb_func_end ov104_02238FAC

	thumb_func_start ov104_02238FB8
ov104_02238FB8: @ 0x02238FB8
	movs r1, #2
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02238FB8

	thumb_func_start ov104_02238FC0
ov104_02238FC0: @ 0x02238FC0
	movs r1, #0xa
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02238FC0

	thumb_func_start ov104_02238FC8
ov104_02238FC8: @ 0x02238FC8
	movs r1, #5
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02238FC8

	thumb_func_start ov104_02238FD0
ov104_02238FD0: @ 0x02238FD0
	movs r1, #0xe
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02238FD0

	thumb_func_start ov104_02238FD8
ov104_02238FD8: @ 0x02238FD8
	ldr r1, _02238FE0 @ =0x000003EA
	str r1, [r0, #0x14]
	bx lr
	nop
_02238FE0: .4byte 0x000003EA
	thumb_func_end ov104_02238FD8

	thumb_func_start ov104_02238FE4
ov104_02238FE4: @ 0x02238FE4
	ldrb r1, [r0, #0x1c]
	cmp r1, #7
	bhs _02238FEE
	adds r1, r1, #1
	strb r1, [r0, #0x1c]
_02238FEE:
	bx lr
	thumb_func_end ov104_02238FE4

	thumb_func_start ov104_02238FF0
ov104_02238FF0: @ 0x02238FF0
	ldrb r1, [r0, #0x1c]
	cmp r1, #0
	beq _02238FFA
	subs r1, r1, #1
	strb r1, [r0, #0x1c]
_02238FFA:
	bx lr
	thumb_func_end ov104_02238FF0

	thumb_func_start ov104_02238FFC
ov104_02238FFC: @ 0x02238FFC
	movs r1, #1
	strb r1, [r0, #0x12]
	bx lr
	.align 2, 0
	thumb_func_end ov104_02238FFC

	thumb_func_start ov104_02239004
ov104_02239004: @ 0x02239004
	bx lr
	.align 2, 0
	thumb_func_end ov104_02239004

	thumb_func_start ov104_02239008
ov104_02239008: @ 0x02239008
	bx lr
	.align 2, 0
	thumb_func_end ov104_02239008

	thumb_func_start ov104_0223900C
ov104_0223900C: @ 0x0223900C
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223900C

	thumb_func_start ov104_02239010
ov104_02239010: @ 0x02239010
	bx lr
	.align 2, 0
	thumb_func_end ov104_02239010

	thumb_func_start ov104_02239014
ov104_02239014: @ 0x02239014
	ldrb r3, [r0, #0x10]
	ldrh r2, [r0, #0x1a]
	cmp r3, #1
	bhi _0223902A
	cmp r2, #8
	blo _02239024
	movs r1, #6
	b _02239036
_02239024:
	ldr r1, _0223904C @ =0x0223FC7C
	ldrb r1, [r1, r2]
	b _02239036
_0223902A:
	cmp r2, #8
	blo _02239032
	movs r1, #0x11
	b _02239036
_02239032:
	ldr r1, _02239050 @ =0x0223FC88
	ldrb r1, [r1, r2]
_02239036:
	cmp r3, #0
	bne _02239046
	ldrh r0, [r0, #0x18]
	cmp r0, #0x15
	beq _02239044
	cmp r0, #0x31
	bne _02239046
_02239044:
	movs r1, #0x14
_02239046:
	adds r0, r1, #0
	bx lr
	nop
_0223904C: .4byte 0x0223FC7C
_02239050: .4byte 0x0223FC88
	thumb_func_end ov104_02239014

	thumb_func_start ov104_02239054
ov104_02239054: @ 0x02239054
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	add r1, sp, #0
	strh r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #6
	add r2, sp, #0
	bl FUN_02074B30
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_02239054

	thumb_func_start ov104_02239080
ov104_02239080: @ 0x02239080
	push {r3, lr}
	bl ov104_0222FC00
	bl FUN_02005748
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02239080

	thumb_func_start ov104_02239090
ov104_02239090: @ 0x02239090
	push {r3, lr}
	bl ov104_0222FC00
	movs r1, #0
	bl FUN_020057A4
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02239090

	thumb_func_start ov104_022390A0
ov104_022390A0: @ 0x022390A0
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222FC00
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _022390BC @ =ov104_022390C0
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_022390BC: .4byte ov104_022390C0
	thumb_func_end ov104_022390A0

	thumb_func_start ov104_022390C0
ov104_022390C0: @ 0x022390C0
	push {r3, lr}
	adds r0, #0x78
	ldrh r0, [r0]
	bl FUN_020057D4
	cmp r0, #0
	bne _022390D2
	movs r0, #1
	pop {r3, pc}
_022390D2:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022390C0

	thumb_func_start ov104_022390D8
ov104_022390D8: @ 0x022390D8
	push {r3, lr}
	bl ov104_0222EA48
	bl FUN_02006150
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022390D8

	thumb_func_start ov104_022390E8
ov104_022390E8: @ 0x022390E8
	push {r3, lr}
	ldr r1, _022390F4 @ =ov104_022390F8
	bl ov104_0222E974
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_022390F4: .4byte ov104_022390F8
	thumb_func_end ov104_022390E8

	thumb_func_start ov104_022390F8
ov104_022390F8: @ 0x022390F8
	push {r3, lr}
	bl FUN_020061E4
	cmp r0, #0
	bne _02239106
	movs r0, #1
	pop {r3, pc}
_02239106:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_022390F8

	thumb_func_start ov104_0223910C
ov104_0223910C: @ 0x0223910C
	push {r3, lr}
	bl ov104_0222EA48
	bl FUN_0200549C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223910C

	thumb_func_start ov104_0223911C
ov104_0223911C: @ 0x0223911C
	push {r3, lr}
	bl ov104_0222EA48
	bl FUN_020041FC
	movs r1, #0
	bl FUN_020055D0
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0223911C

	thumb_func_start ov104_02239130
ov104_02239130: @ 0x02239130
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r5, r0, #0
	adds r0, r7, #0
	bl ov104_0222EA48
	adds r6, r0, #0
	adds r0, r7, #0
	bl ov104_0222FC00
	str r0, [sp]
	adds r0, r7, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r7]
	ldr r0, [r0]
	bl FUN_0209B978
	cmp r6, #0x3b
	bgt _022391B0
	adds r1, r6, #0
	subs r1, #0x21
	bmi _022391AA
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02239174: @ jump table
	.2byte _022391EC - _02239174 - 2 @ case 0
	.2byte _022391F4 - _02239174 - 2 @ case 1
	.2byte _022391FC - _02239174 - 2 @ case 2
	.2byte _02239204 - _02239174 - 2 @ case 3
	.2byte _0223922E - _02239174 - 2 @ case 4
	.2byte _02239236 - _02239174 - 2 @ case 5
	.2byte _02239240 - _02239174 - 2 @ case 6
	.2byte _02239214 - _02239174 - 2 @ case 7
	.2byte _0223921C - _02239174 - 2 @ case 8
	.2byte _0223926C - _02239174 - 2 @ case 9
	.2byte _0223920C - _02239174 - 2 @ case 10
	.2byte _02239226 - _02239174 - 2 @ case 11
	.2byte _0223926C - _02239174 - 2 @ case 12
	.2byte _022391BC - _02239174 - 2 @ case 13
	.2byte _0223926C - _02239174 - 2 @ case 14
	.2byte _0223926C - _02239174 - 2 @ case 15
	.2byte _0223926C - _02239174 - 2 @ case 16
	.2byte _0223926C - _02239174 - 2 @ case 17
	.2byte _0223926C - _02239174 - 2 @ case 18
	.2byte _0223926C - _02239174 - 2 @ case 19
	.2byte _0223926C - _02239174 - 2 @ case 20
	.2byte _0223926C - _02239174 - 2 @ case 21
	.2byte _022391DE - _02239174 - 2 @ case 22
	.2byte _0223926C - _02239174 - 2 @ case 23
	.2byte _0223926C - _02239174 - 2 @ case 24
	.2byte _02239246 - _02239174 - 2 @ case 25
	.2byte _02239254 - _02239174 - 2 @ case 26
_022391AA:
	cmp r6, #2
	beq _022391B6
	b _0223926C
_022391B0:
	cmp r6, #0x64
	beq _0223925C
	b _0223926C
_022391B6:
	bl FUN_02049F8C
	b _02239270
_022391BC:
	bl FUN_0204AA04
	strh r0, [r4]
	ldr r0, [r5, #8]
	bl FUN_0202440C
	ldrh r1, [r4]
	bl FUN_0206D0C8
	ldr r0, [r5, #8]
	bl FUN_0202CD88
	ldrh r2, [r4]
	movs r1, #0x44
	bl FUN_0202CF70
	b _02239270
_022391DE:
	ldr r1, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov104_0223927C
	strh r0, [r4]
	b _02239270
_022391EC:
	bl FUN_0204A578
	strh r0, [r4]
	b _02239270
_022391F4:
	bl ov104_022395B4
	strh r0, [r4]
	b _02239270
_022391FC:
	bl FUN_0204A57C
	strh r0, [r4]
	b _02239270
_02239204:
	bl ov104_022395D8
	strh r0, [r4]
	b _02239270
_0223920C:
	bl FUN_0204A9F8
	strh r0, [r4]
	b _02239270
_02239214:
	ldr r1, [r5, #8]
	bl ov104_022394A4
	b _02239270
_0223921C:
	ldr r1, [sp]
	bl ov104_02239588
	strh r0, [r4]
	b _02239270
_02239226:
	ldr r1, [sp]
	bl ov104_022395A0
	b _02239270
_0223922E:
	ldr r1, [r5, #8]
	bl FUN_0204A660
	b _02239270
_02239236:
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	bl FUN_0204A7A4
	b _02239270
_02239240:
	bl FUN_0204A8C8
	b _02239270
_02239246:
	ldr r1, _02239274 @ =0x00000884
	movs r2, #0x46
	adds r0, r0, r1
	movs r1, #0
	blx FUN_020C4CF4
	b _02239270
_02239254:
	ldr r1, _02239278 @ =0x000008D6
	movs r2, #1
	strb r2, [r0, r1]
	b _02239270
_0223925C:
	cmp r0, #0
	bne _02239266
	movs r0, #1
	strh r0, [r4]
	b _02239270
_02239266:
	movs r0, #0
	strh r0, [r4]
	b _02239270
_0223926C:
	bl FUN_02022974
_02239270:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02239274: .4byte 0x00000884
_02239278: .4byte 0x000008D6
	thumb_func_end ov104_02239130

	thumb_func_start ov104_0223927C
ov104_0223927C: @ 0x0223927C
	cmp r1, #2
	bne _02239288
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1d
	bx lr
_02239288:
	cmp r1, #1
	bne _022392AE
	ldrb r1, [r0, #0xf]
	cmp r1, #2
	bne _022392A0
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1d
	lsls r1, r0, #1
	ldr r0, _022392BC @ =0x0223FC94
	ldrh r0, [r0, r1]
	bx lr
_022392A0:
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _022392AA
	movs r0, #0x61
	bx lr
_022392AA:
	movs r0, #0
	bx lr
_022392AE:
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _022392B8
	movs r0, #0x61
	bx lr
_022392B8:
	movs r0, #0
	bx lr
	.align 2, 0
_022392BC: .4byte 0x0223FC94
	thumb_func_end ov104_0223927C

	thumb_func_start ov104_022392C0
ov104_022392C0: @ 0x022392C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r1, [r5, #0x1c]
	adds r0, r1, #1
	str r0, [r5, #0x1c]
	ldr r0, [r5]
	ldrb r6, [r1]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	bne _022392E4
	movs r0, #0
	pop {r4, r5, r6, pc}
_022392E4:
	ldrb r0, [r4, #0xf]
	bl ov104_0223A790
	lsls r1, r6, #4
	adds r1, r6, r1
	adds r2, r0, #0
	adds r4, #0x90
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r1, r4, r1
	bl ov104_0223310C
	movs r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_022392C0

	thumb_func_start ov104_02239300
ov104_02239300: @ 0x02239300
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl FUN_0204A32C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02239300

	thumb_func_start ov104_02239314
ov104_02239314: @ 0x02239314
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r6, #0
	adds r4, r0, #0
	bl ov104_0223A580
	adds r6, r0, #0
	movs r0, #0x8d
	lsls r0, r0, #4
	str r6, [r4, r0]
	ldr r1, _0223935C @ =0x0000045F
	movs r0, #5
	movs r2, #1
	bl FUN_02004550
	movs r3, #0
	str r3, [sp]
	ldr r0, [r5]
	ldr r1, _02239360 @ =0x020EA358
	ldr r0, [r0]
	adds r2, r6, #0
	bl FUN_0209B988
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223935C: .4byte 0x0000045F
_02239360: .4byte 0x020EA358
	thumb_func_end ov104_02239314

	thumb_func_start ov104_02239364
ov104_02239364: @ 0x02239364
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r6, r0, #0
	movs r0, #0x8d
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	ldr r0, [r5, #0x14]
	bl FUN_02052868
	ldr r1, _02239398 @ =0x000008CC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	strh r0, [r6]
	adds r0, r5, #0
	bl FUN_020520A4
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02239398: .4byte 0x000008CC
	thumb_func_end ov104_02239364

	thumb_func_start ov104_0223939C
ov104_0223939C: @ 0x0223939C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov104_0222FBE4
	adds r5, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	cmp r6, #2
	bne _022393D6
	adds r1, r7, #0
	bl ov104_0223A734
	b _022393DA
_022393D6:
	bl FUN_02022974
_022393DA:
	bl FUN_0203608C
	ldr r1, _022393FC @ =0x0000083E
	adds r1, r4, r1
	bl FUN_02036614
	cmp r0, #1
	bne _022393F0
	movs r0, #1
	strh r0, [r5]
	b _022393F8
_022393F0:
	movs r0, #0
	strh r0, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022393F8:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022393FC: .4byte 0x0000083E
	thumb_func_end ov104_0223939C

	thumb_func_start ov104_02239400
ov104_02239400: @ 0x02239400
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222EA48
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222EA48
	adds r1, r5, #0
	adds r1, #0x78
	strh r4, [r1]
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldr r1, _02239428 @ =ov104_0223942C
	adds r0, r5, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02239428: .4byte ov104_0223942C
	thumb_func_end ov104_02239400

	thumb_func_start ov104_0223942C
ov104_0223942C: @ 0x0223942C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r5, #0x78
	ldrh r3, [r5]
	ldr r2, [r4, #8]
	bl ov104_02239464
	cmp r0, #1
	bne _02239460
	movs r0, #1
	pop {r3, r4, r5, pc}
_02239460:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223942C

	thumb_func_start ov104_02239464
ov104_02239464: @ 0x02239464
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r3, #0
	bl FUN_0203608C
	movs r1, #1
	subs r0, r1, r0
	bl FUN_0203664C
	adds r7, r0, #0
	bne _02239480
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02239480:
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	adds r0, r4, #0
	bl ov104_0222FC14
	adds r4, r0, #0
	cmp r5, #2
	bne _0223949C
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov104_0223A750
	strh r0, [r4]
	b _022394A0
_0223949C:
	bl FUN_02022974
_022394A0:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02239464

	thumb_func_start ov104_022394A4
ov104_022394A4: @ 0x022394A4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldrb r2, [r4, #0xf]
	cmp r2, #6
	bhi _02239560
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022394BC: @ jump table
	.2byte _02239560 - _022394BC - 2 @ case 0
	.2byte _02239560 - _022394BC - 2 @ case 1
	.2byte _022394E0 - _022394BC - 2 @ case 2
	.2byte _022394E0 - _022394BC - 2 @ case 3
	.2byte _022394CA - _022394BC - 2 @ case 4
	.2byte _022394CA - _022394BC - 2 @ case 5
	.2byte _022394E0 - _022394BC - 2 @ case 6
_022394CA:
	ldrb r2, [r4, #0xc]
	adds r0, r1, #0
	adds r1, r4, #0
	subs r2, r2, #1
	lsls r2, r2, #0x18
	adds r1, #0x78
	lsrs r2, r2, #0x18
	bl ov104_0223A30C
	add sp, #0x18
	pop {r4, r5, r6, pc}
_022394E0:
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r4, #4]
	str r1, [sp, #0xc]
	ldrb r2, [r4, #0xc]
	adds r1, r4, #0
	ldrb r3, [r4, #0xe]
	subs r2, r2, #1
	lsls r2, r2, #2
	adds r2, r4, r2
	ldrh r2, [r2, #0x3e]
	adds r1, #0x78
	bl ov104_0223A0C4
	ldrb r3, [r4, #0xe]
	movs r0, #0
	cmp r3, #0
	ble _02239532
	adds r1, r4, #0
	adds r1, #0xa8
	add r2, sp, #0x14
	adds r5, r4, #0
	add r6, sp, #0x10
_02239512:
	ldrh r3, [r1]
	adds r0, r0, #1
	adds r1, #0x38
	lsls r3, r3, #0x15
	lsrs r3, r3, #0x15
	strh r3, [r2]
	adds r3, r5, #0
	adds r3, #0xaa
	ldrh r3, [r3]
	adds r2, r2, #2
	adds r5, #0x38
	strh r3, [r6]
	ldrb r3, [r4, #0xe]
	adds r6, r6, #2
	cmp r0, r3
	blt _02239512
_02239532:
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	movs r1, #0x62
	str r0, [sp, #0xc]
	ldrb r2, [r4, #0xc]
	lsls r1, r1, #2
	adds r0, r4, #0
	subs r2, r2, #1
	lsls r2, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	adds r2, r4, r2
	ldrh r2, [r2, #0x3e]
	adds r1, r4, r1
	bl ov104_0223A0C4
	add sp, #0x18
	pop {r4, r5, r6, pc}
_02239560:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	adds r1, r4, #0
	str r0, [sp, #0xc]
	ldrb r2, [r4, #0xc]
	ldrb r3, [r4, #0xe]
	adds r0, r4, #0
	subs r2, r2, #1
	lsls r2, r2, #1
	adds r2, r4, r2
	ldrh r2, [r2, #0x3e]
	adds r1, #0x78
	bl ov104_0223A0C4
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_022394A4

	thumb_func_start ov104_02239588
ov104_02239588: @ 0x02239588
	lsls r2, r1, #4
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, #0x7c
	ldrh r0, [r0]
	ldr r3, _0223959C @ =ov104_0222E10C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx r3
	.align 2, 0
_0223959C: .4byte ov104_0222E10C
	thumb_func_end ov104_02239588

	thumb_func_start ov104_022395A0
ov104_022395A0: @ 0x022395A0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x1e
	ldrb r3, [r0, #0x10]
	movs r2, #6
	lsrs r1, r1, #0x1d
	bics r3, r2
	orrs r1, r3
	strb r1, [r0, #0x10]
	bx lr
	thumb_func_end ov104_022395A0

	thumb_func_start ov104_022395B4
ov104_022395B4: @ 0x022395B4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xf]
	cmp r0, #6
	beq _022395CC
	ldr r0, [r4, #8]
	bl FUN_0206BFF0
	str r0, [r4, #8]
_022395CC:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_022395B4

	thumb_func_start ov104_022395D8
ov104_022395D8: @ 0x022395D8
	ldrb r1, [r0, #0xd]
	ldrh r0, [r0, #0x1a]
	adds r1, r0, r1
	ldr r0, _022395EC @ =0x0000FFFF
	cmp r1, r0
	bhi _022395E8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
_022395E8:
	bx lr
	nop
_022395EC: .4byte 0x0000FFFF
	thumb_func_end ov104_022395D8

	thumb_func_start ov104_022395F0
ov104_022395F0: @ 0x022395F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r0, [r0, #8]
	bl ov104_02239C58
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0209B980
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov104_022395F0

	thumb_func_start ov104_02239610
ov104_02239610: @ 0x02239610
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl ov104_02239C7C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02239610

	thumb_func_start ov104_02239624
ov104_02239624: @ 0x02239624
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp]
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov104_02239C88
	strh r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_02239624

	thumb_func_start ov104_02239660
ov104_02239660: @ 0x02239660
	push {r4, lr}
	adds r4, r0, #0
	bl ov104_0222EA48
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldr r1, _0223967C @ =ov104_02239680
	adds r0, r4, #0
	bl ov104_0222E974
	movs r0, #1
	pop {r4, pc}
	nop
_0223967C: .4byte ov104_02239680
	thumb_func_end ov104_02239660

	thumb_func_start ov104_02239680
ov104_02239680: @ 0x02239680
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r1, r0, #0
	adds r1, #0x6f
	ldrb r1, [r1]
	cmp r1, #2
	blo _0223969E
	movs r1, #0
	adds r0, #0x6f
	strb r1, [r0]
	movs r0, #1
	pop {r3, pc}
_0223969E:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02239680

	thumb_func_start ov104_022396A4
ov104_022396A4: @ 0x022396A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r6, r0
	bne _022396CA
	movs r0, #1
	b _022396CC
_022396CA:
	movs r0, #0
_022396CC:
	strh r0, [r4]
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_022396A4

	thumb_func_start ov104_022396D4
ov104_022396D4: @ 0x022396D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov104_0222FC00
	adds r0, r5, #0
	bl ov104_0222FC00
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	ldr r1, [r0, #0x28]
	adds r0, r4, #0
	adds r0, #0x98
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb0
	str r6, [r0]
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r0, [r0]
	adds r2, r7, #0
	bl ov104_02239CD0
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022396D4

	thumb_func_start ov104_0223971C
ov104_0223971C: @ 0x0223971C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov104_0222FBE4
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r5, r0, #0
	adds r0, #0xa8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #7
	bne _0223975C
	movs r0, #0xff
	movs r2, #0
	strh r0, [r4]
	adds r1, r2, #0
_0223974E:
	adds r0, r5, r2
	adds r0, #0xa1
	adds r2, r2, #1
	strb r1, [r0]
	cmp r2, #2
	blt _0223974E
	b _02239782
_0223975C:
	cmp r0, #6
	bne _02239782
	adds r1, #0x2c
	ldrb r0, [r1]
	strh r0, [r4]
	ldrh r0, [r4]
	subs r0, r0, #1
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r0, #0x2d
	ldrb r0, [r0]
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #0
	beq _02239782
	subs r0, r0, #1
	strh r0, [r6]
_02239782:
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl FUN_020181C4
	movs r0, #0
	adds r5, #0xa8
	str r0, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0223971C

	thumb_func_start ov104_02239794
ov104_02239794: @ 0x02239794
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r0, #0x59
	ldrb r0, [r0]
	strh r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02239794

	thumb_func_start ov104_022397B0
ov104_022397B0: @ 0x022397B0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r2, r1, #1
	str r2, [r7, #0x1c]
	ldrb r1, [r1]
	str r1, [sp]
	adds r1, r2, #1
	str r1, [r7, #0x1c]
	ldrb r6, [r2]
	adds r1, r1, #1
	str r1, [r7, #0x1c]
	bl ov104_0222FBE4
	adds r5, r0, #0
	ldr r0, [r7]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r4, r0, #0
	ldr r0, [r7]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r7, r0, #0
	ldr r0, [sp]
	cmp r0, #0xd
	bhi _02239860
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022397F4: @ jump table
	.2byte _02239810 - _022397F4 - 2 @ case 0
	.2byte _02239818 - _022397F4 - 2 @ case 1
	.2byte _02239820 - _022397F4 - 2 @ case 2
	.2byte _022398D4 - _022397F4 - 2 @ case 3
	.2byte _022398F0 - _022397F4 - 2 @ case 4
	.2byte _02239918 - _022397F4 - 2 @ case 5
	.2byte _02239924 - _022397F4 - 2 @ case 6
	.2byte _02239936 - _022397F4 - 2 @ case 7
	.2byte _0223993C - _022397F4 - 2 @ case 8
	.2byte _02239944 - _022397F4 - 2 @ case 9
	.2byte _0223994C - _022397F4 - 2 @ case 10
	.2byte _02239954 - _022397F4 - 2 @ case 11
	.2byte _022399CE - _022397F4 - 2 @ case 12
	.2byte _02239AFC - _022397F4 - 2 @ case 13
_02239810:
	adds r0, r4, #0
	bl FUN_0209BA80
	b _02239B10
_02239818:
	adds r4, #0x86
	ldrh r0, [r4]
	strh r0, [r5]
	b _02239B10
_02239820:
	cmp r6, #1
	bne _0223986A
	movs r0, #0
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r1, r0
	beq _02239842
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r1, r0
	bne _02239848
_02239842:
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
_02239848:
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r1, r0
	beq _02239862
	adds r4, #0x88
	ldrh r0, [r4]
	cmp r1, r0
	beq _02239862
_02239860:
	b _02239B10
_02239862:
	ldrh r0, [r5]
	adds r0, r0, #2
	strh r0, [r5]
	b _02239B10
_0223986A:
	cmp r6, #5
	bne _02239888
	adds r0, r4, #0
	adds r0, #0x76
	adds r4, #0x86
	ldrh r1, [r0]
	ldrh r0, [r4]
	cmp r1, r0
	bne _02239882
	movs r0, #0
	strh r0, [r5]
	b _02239B10
_02239882:
	movs r0, #1
	strh r0, [r5]
	b _02239B10
_02239888:
	cmp r6, #4
	beq _02239890
	cmp r6, #6
	bne _02239986
_02239890:
	movs r0, #0
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r1, r0
	beq _022398AE
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r1, r0
	bne _022398B4
_022398AE:
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
_022398B4:
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r1, r0
	beq _022398CC
	adds r4, #0x88
	ldrh r0, [r4]
	cmp r1, r0
	bne _02239986
_022398CC:
	ldrh r0, [r5]
	adds r0, r0, #2
	strh r0, [r5]
	b _02239B10
_022398D4:
	ldr r0, [r7, #8]
	bl FUN_0203068C
	adds r4, r0, #0
	movs r0, #0x6a
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x6a
	bl FUN_02030698
	strh r0, [r5]
	b _02239B10
_022398F0:
	ldr r0, [r7, #8]
	bl FUN_0203068C
	adds r4, r0, #0
	movs r0, #3
	bl FUN_0205E55C
	adds r6, r0, #0
	movs r0, #3
	bl FUN_0205E55C
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	strh r0, [r5]
	b _02239B10
_02239918:
	lsls r0, r6, #1
	adds r0, r4, r0
	adds r0, #0x76
	ldrh r0, [r0]
	strh r0, [r5]
	b _02239B10
_02239924:
	ldr r0, [r7, #8]
	bl FUN_0203026C
	adds r1, r0, #0
	ldr r0, [r7, #8]
	movs r2, #3
	bl FUN_0204FA50
	b _02239B10
_02239936:
	adds r4, #0xa0
	strb r6, [r4]
	b _02239B10
_0223993C:
	adds r4, #0x74
	ldrh r0, [r4]
	strh r0, [r5]
	b _02239B10
_02239944:
	adds r4, #0xa0
	ldrb r0, [r4]
	strh r0, [r5]
	b _02239B10
_0223994C:
	adds r4, #0x71
	ldrb r0, [r4]
	strh r0, [r5]
	b _02239B10
_02239954:
	movs r0, #1
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C264
	adds r6, r0, #0
	ldr r0, [r4]
	bl FUN_0203068C
	adds r7, r0, #0
	adds r0, r6, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_02030698
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r1, [r1]
	cmp r0, r1
	bne _02239988
_02239986:
	b _02239B10
_02239988:
	ldr r0, [r4]
	bl FUN_0203068C
	adds r7, r0, #0
	adds r0, r6, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #0
	bl FUN_020306E4
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C29C
	adds r6, r0, #0
	ldr r0, [r4]
	bl FUN_0203068C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	bl FUN_020306E4
	movs r0, #0
	strh r0, [r5]
	b _02239B10
_022399CE:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C29C
	adds r6, r0, #0
	ldr r0, [r4]
	bl FUN_0203068C
	adds r7, r0, #0
	adds r0, r6, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_02030698
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #0
	bne _02239AE0
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C264
	adds r5, r0, #0
	ldr r0, [r4]
	bl FUN_0203068C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl FUN_020306E4
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02239A38
	ldr r0, [r4]
	bl FUN_0202D750
	movs r1, #6
	movs r2, #2
	bl FUN_0202D3B4
_02239A38:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #4
	bne _02239A76
	ldr r0, [r4]
	bl FUN_0203068C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	movs r1, #0x88
	movs r3, #0
	bl FUN_020306E4
	ldr r0, [r4]
	bl FUN_0203068C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	movs r1, #0x89
	movs r3, #0
	bl FUN_020306E4
_02239A76:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #2
	bne _02239AAA
	ldr r0, [r4]
	bl FUN_0203068C
	adds r5, r0, #0
	movs r0, #0
	movs r1, #3
	bl FUN_0205E488
	adds r6, r0, #0
	movs r0, #0
	movs r1, #3
	bl FUN_0205E488
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl FUN_020306E4
_02239AAA:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #3
	bne _02239B10
	ldr r0, [r4]
	bl FUN_0203068C
	adds r5, r0, #0
	movs r0, #1
	movs r1, #3
	bl FUN_0205E488
	adds r4, r0, #0
	movs r0, #1
	movs r1, #3
	bl FUN_0205E488
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl FUN_020306E4
	b _02239B10
_02239AE0:
	ldr r0, [r4]
	bl FUN_0203068C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	bl FUN_020306E4
	b _02239B10
_02239AFC:
	movs r2, #0
	adds r1, r2, #0
_02239B00:
	adds r0, r4, r2
	adds r0, #0xa1
	adds r2, r2, #1
	strb r1, [r0]
	cmp r2, #2
	blt _02239B00
	adds r4, #0x9f
	strb r1, [r4]
_02239B10:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022397B0

	thumb_func_start ov104_02239B14
ov104_02239B14: @ 0x02239B14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb4
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B970
	adds r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	adds r6, r0, #0
	adds r4, r6, #0
	add r3, sp, #0
	movs r2, #0x16
_02239B34:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02239B34
	ldr r0, [r4]
	str r0, [r3]
	adds r0, r6, #0
	bl ov104_02239C7C
	ldr r0, [r7, #8]
	movs r1, #0
	movs r2, #6
	bl FUN_0204A124
	adds r4, r0, #0
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r0, [r0]
	bl FUN_0209B980
	ldrb r0, [r4, #0xf]
	cmp r0, #6
	bne _02239B68
	ldr r0, [r7, #8]
	bl ov104_0222E630
_02239B68:
	ldrb r0, [r4, #0xe]
	movs r2, #0
	cmp r0, #0
	ble _02239BA0
	add r3, sp, #0
	adds r5, r3, #0
	adds r6, r4, #0
_02239B76:
	adds r0, r3, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	adds r0, r4, r2
	adds r0, #0x2a
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r2, r2, #1
	adds r3, r3, #1
	strh r0, [r6, #0x2e]
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	adds r5, r5, #2
	strh r0, [r6, #0x36]
	ldrb r0, [r4, #0xe]
	adds r6, r6, #2
	cmp r2, r0
	blt _02239B76
_02239BA0:
	add r0, sp, #0x80
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x16]
	ldrh r0, [r0, #8]
	movs r1, #0xe0
	strh r0, [r4, #0x18]
	add r0, sp, #0x40
	ldrb r2, [r0, #0x18]
	strb r2, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	bics r0, r1
	adds r1, r2, #5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x18
	orrs r0, r1
	strb r0, [r4, #0x10]
	bl FUN_0203608C
	cmp r0, #0
	bne _02239BD4
	ldr r1, [r7, #8]
	adds r0, r4, #0
	bl FUN_0204A4C8
_02239BD4:
	ldr r0, [r7, #8]
	bl FUN_0207A268
	bl FUN_02097284
	adds r0, r4, #0
	bl FUN_0209BA80
	ldr r1, _02239BF0 @ =0x000008D4
	movs r0, #0
	strb r0, [r4, r1]
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
	nop
_02239BF0: .4byte 0x000008D4
	thumb_func_end ov104_02239B14

	thumb_func_start ov104_02239BF4
ov104_02239BF4: @ 0x02239BF4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0222FBE4
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0209B978
	bl FUN_0209BB08
	strh r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02239BF4

	thumb_func_start ov104_02239C10
ov104_02239C10: @ 0x02239C10
	push {r3, lr}
	ldr r1, _02239C1C @ =ov104_02239C20
	bl ov104_0222E974
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02239C1C: .4byte ov104_02239C20
	thumb_func_end ov104_02239C10

	thumb_func_start ov104_02239C20
ov104_02239C20: @ 0x02239C20
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	ldr r1, _02239C40 @ =0x000008D4
	ldrb r2, [r0, r1]
	cmp r2, #2
	bhs _02239C36
	movs r0, #0
	pop {r3, pc}
_02239C36:
	movs r2, #0
	strb r2, [r0, r1]
	movs r0, #1
	pop {r3, pc}
	nop
_02239C40: .4byte 0x000008D4
	thumb_func_end ov104_02239C20

	thumb_func_start ov104_02239C44
ov104_02239C44: @ 0x02239C44
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0209B978
	bl FUN_0204A32C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02239C44

	thumb_func_start ov104_02239C58
ov104_02239C58: @ 0x02239C58
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xb
	movs r1, #0xb4
	bl FUN_02018144
	ldr r1, _02239C78 @ =0x02241AD0
	movs r2, #0xb4
	str r0, [r1]
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, _02239C78 @ =0x02241AD0
	ldr r0, [r0]
	str r4, [r0]
	pop {r4, pc}
	.align 2, 0
_02239C78: .4byte 0x02241AD0
	thumb_func_end ov104_02239C58

	thumb_func_start ov104_02239C7C
ov104_02239C7C: @ 0x02239C7C
	push {r3, lr}
	cmp r0, #0
	beq _02239C86
	bl FUN_020181C4
_02239C86:
	pop {r3, pc}
	thumb_func_end ov104_02239C7C

	thumb_func_start ov104_02239C88
ov104_02239C88: @ 0x02239C88
	push {r3, lr}
	cmp r1, #5
	bhi _02239CCC
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02239C9A: @ jump table
	.2byte _02239CA6 - _02239C9A - 2 @ case 0
	.2byte _02239CAC - _02239C9A - 2 @ case 1
	.2byte _02239CB4 - _02239C9A - 2 @ case 2
	.2byte _02239CCC - _02239C9A - 2 @ case 3
	.2byte _02239CBE - _02239C9A - 2 @ case 4
	.2byte _02239CC6 - _02239C9A - 2 @ case 5
_02239CA6:
	bl FUN_0209BBA4
	pop {r3, pc}
_02239CAC:
	adds r1, r2, #0
	bl FUN_0209BC1C
	pop {r3, pc}
_02239CB4:
	adds r1, r2, #0
	adds r2, r3, #0
	bl FUN_0209BC64
	pop {r3, pc}
_02239CBE:
	adds r1, r2, #0
	bl FUN_0209BD68
	pop {r3, pc}
_02239CC6:
	adds r1, r2, #0
	bl FUN_0209BDB0
_02239CCC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02239C88

	thumb_func_start ov104_02239CD0
ov104_02239CD0: @ 0x02239CD0
	push {r3, lr}
	adds r3, r1, #0
	adds r3, #0x98
	ldr r3, [r3]
	cmp r2, #4
	bhi _02239D18
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_02239CE8: @ jump table
	.2byte _02239CF2 - _02239CE8 - 2 @ case 0
	.2byte _02239CFC - _02239CE8 - 2 @ case 1
	.2byte _02239D06 - _02239CE8 - 2 @ case 2
	.2byte _02239D10 - _02239CE8 - 2 @ case 3
	.2byte _02239D18 - _02239CE8 - 2 @ case 4
_02239CF2:
	adds r2, r3, #0
	movs r3, #0xb
	bl ov104_02239D1C
	pop {r3, pc}
_02239CFC:
	adds r2, r3, #0
	movs r3, #0xb
	bl ov104_02239F38
	pop {r3, pc}
_02239D06:
	adds r2, r3, #0
	movs r3, #0xb
	bl ov104_02239FB0
	pop {r3, pc}
_02239D10:
	adds r2, r3, #0
	movs r3, #0xb
	bl ov104_0223A090
_02239D18:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_02239CD0

	thumb_func_start ov104_02239D1C
ov104_02239D1C: @ 0x02239D1C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #0xb
	movs r1, #0x40
	adds r4, r2, #0
	bl FUN_02018144
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	movs r0, #0
	movs r2, #0x40
	blx FUN_020C4BB8
	ldr r0, [r5]
	bl FUN_0207A268
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	str r0, [r1]
	ldr r0, [r5]
	bl FUN_0207D990
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r0, [r5]
	bl FUN_02028430
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	str r0, [r1, #8]
	ldr r0, [r5]
	bl FUN_02025E44
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	str r0, [r1, #0xc]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	adds r0, #0x21
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02239D9E
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x11
	adds r0, #0x20
	strb r1, [r0]
	b _02239DD8
_02239D9E:
	cmp r0, #5
	bne _02239DB0
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x16
	adds r0, #0x20
	strb r1, [r0]
	b _02239DD8
_02239DB0:
	cmp r0, #4
	bne _02239DC2
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x17
	adds r0, #0x20
	strb r1, [r0]
	b _02239DD8
_02239DC2:
	cmp r0, #6
	bne _02239DD4
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x17
	adds r0, #0x20
	strb r1, [r0]
	b _02239DD8
_02239DD4:
	bl FUN_02022974
_02239DD8:
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	str r4, [r0, #0x1c]
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r0, #0x22
	strb r1, [r0]
	movs r0, #0
_02239DF2:
	adds r1, r5, r0
	adds r1, #0xa1
	ldrb r2, [r1]
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	adds r1, r1, r0
	adds r0, r0, #1
	lsls r0, r0, #0x18
	adds r1, #0x2c
	lsrs r0, r0, #0x18
	strb r2, [r1]
	cmp r0, #2
	blo _02239DF2
	adds r0, r5, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02239E56
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r2, [r1]
	movs r1, #0xf
	adds r0, #0x32
	bics r2, r1
	movs r1, #2
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r2, [r1]
	movs r1, #0xf0
	adds r0, #0x32
	bics r2, r1
	movs r1, #0x20
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x64
	adds r0, #0x33
	strb r1, [r0]
	b _02239F20
_02239E56:
	cmp r0, #5
	bne _02239E98
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r2, [r1]
	movs r1, #0xf
	adds r0, #0x32
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r2, [r1]
	movs r1, #0xf0
	adds r0, #0x32
	bics r2, r1
	movs r1, #0x10
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x1e
	adds r0, #0x33
	strb r1, [r0]
	b _02239F20
_02239E98:
	cmp r0, #4
	bne _02239EDA
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r2, [r1]
	movs r1, #0xf
	adds r0, #0x32
	bics r2, r1
	movs r1, #2
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r2, [r1]
	movs r1, #0xf0
	adds r0, #0x32
	bics r2, r1
	movs r1, #0x20
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x64
	adds r0, #0x33
	strb r1, [r0]
	b _02239F20
_02239EDA:
	cmp r0, #6
	bne _02239F1C
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r2, [r1]
	movs r1, #0xf
	adds r0, #0x32
	bics r2, r1
	movs r1, #2
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x32
	ldrb r2, [r1]
	movs r1, #0xf0
	adds r0, #0x32
	bics r2, r1
	movs r1, #0x20
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x64
	adds r0, #0x33
	strb r1, [r0]
	b _02239F20
_02239F1C:
	bl FUN_02022974
_02239F20:
	movs r3, #0
	str r3, [sp]
	adds r5, #0xa8
	ldr r1, _02239F34 @ =0x020F1E88
	ldr r2, [r5]
	adds r0, r6, #0
	bl FUN_0209B988
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02239F34: .4byte 0x020F1E88
	thumb_func_end ov104_02239D1C

	thumb_func_start ov104_02239F38
ov104_02239F38: @ 0x02239F38
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x22
	ldrb r1, [r1]
	cmp r1, #6
	beq _02239F60
	cmp r1, #7
	bne _02239F70
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #4
	strh r1, [r0]
	adds r4, #0x9d
	strb r1, [r4]
	pop {r4, pc}
_02239F60:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #4
	strh r1, [r0]
	adds r4, #0x9d
	strb r1, [r4]
	pop {r4, pc}
_02239F70:
	adds r1, r4, #0
	adds r0, #0x2c
	adds r1, #0xa1
	movs r2, #2
	blx FUN_020C4DB0
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r0, #0x22
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xa8
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #2
	strh r1, [r0]
	adds r4, #0x9d
	strb r1, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_02239F38

	thumb_func_start ov104_02239FB0
ov104_02239FB0: @ 0x02239FB0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r3, #0
	movs r1, #0x30
	bl FUN_02018184
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0x30
	blx FUN_020C4CF4
	ldr r0, [r4]
	bl FUN_02025E44
	adds r1, r4, #0
	adds r1, #0xac
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r0, [r4]
	bl FUN_0207A268
	adds r1, r4, #0
	adds r1, #0xac
	ldr r1, [r1]
	str r0, [r1]
	ldr r0, [r4]
	bl FUN_0207A274
	adds r1, r4, #0
	adds r1, #0xac
	ldr r1, [r1]
	str r0, [r1, #0x1c]
	ldr r0, [r4]
	bl FUN_0208C324
	adds r1, r4, #0
	adds r1, #0xac
	ldr r1, [r1]
	str r0, [r1, #0x2c]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #1
	strb r1, [r0, #0x11]
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	strb r1, [r0, #0x14]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0207A0F8
	adds r1, r4, #0
	adds r1, #0xac
	ldr r1, [r1]
	strb r0, [r1, #0x13]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0
	strh r1, [r0, #0x18]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	strb r1, [r0, #0x12]
	ldr r0, [r4]
	bl FUN_0202D79C
	adds r1, r4, #0
	adds r1, #0xac
	ldr r1, [r1]
	str r0, [r1, #0x20]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, _0223A088 @ =0x0223FCA0
	bl FUN_0208D720
	ldr r0, [r4]
	bl FUN_02025E38
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_0208E9C0
	movs r3, #0
	str r3, [sp]
	adds r4, #0xac
	ldr r1, _0223A08C @ =0x020F410C
	ldr r2, [r4]
	adds r0, r5, #0
	bl FUN_0209B988
	pop {r3, r4, r5, pc}
	nop
_0223A088: .4byte 0x0223FCA0
_0223A08C: .4byte 0x020F410C
	thumb_func_end ov104_02239FB0

	thumb_func_start ov104_0223A090
ov104_0223A090: @ 0x0223A090
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldrb r1, [r0, #0x14]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xac
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	adds r4, #0x9d
	strh r1, [r0]
	strb r1, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223A090

	thumb_func_start ov104_0223A0C4
ov104_0223A0C4: @ 0x0223A0C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov104_0223A77C
	adds r3, r0, #0
	ldr r2, [sp, #0x3c]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_0222DD04
	str r0, [sp, #0x14]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	adds r4, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	adds r2, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	adds r3, r4, #0
	str r0, [sp, #0x10]
	adds r0, r5, #0
	bl ov104_0223A118
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	bl FUN_020181C4
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223A0C4

	thumb_func_start ov104_0223A118
ov104_0223A118: @ 0x0223A118
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	adds r7, r0, #0
	ldr r0, [sp, #0x9c]
	str r2, [sp, #0x18]
	str r0, [sp, #0x9c]
	ldr r0, [sp, #0xa0]
	str r1, [sp, #0x14]
	str r0, [sp, #0xa0]
	ldr r0, [sp, #0xa4]
	str r3, [sp, #0x1c]
	str r0, [sp, #0xa4]
	ldr r0, [sp, #0xa8]
	str r0, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x88
	ldrb r0, [r0, #0x10]
	cmp r0, #4
	bls _0223A144
	bl FUN_02022974
_0223A144:
	add r0, sp, #0x88
	ldrb r6, [r0, #0x10]
	movs r4, #0
	str r4, [sp, #0x30]
	cmp r6, #0
	bne _0223A152
	b _0223A262
_0223A152:
	add r0, sp, #0x74
	str r0, [sp, #0x24]
_0223A156:
	adds r0, r7, #0
	bl FUN_0204AEC0
	ldr r1, [sp, #0x14]
	ldrh r1, [r1, #2]
	blx FUN_020E1F6C
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x17
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	str r0, [sp, #0x34]
	ldrb r0, [r7, #0xf]
	bl ov104_0223A768
	adds r2, r0, #0
	ldr r1, [sp, #0x34]
	add r0, sp, #0x44
	bl ov104_0222DCF4
	movs r0, #0
	str r0, [sp, #0x40]
	cmp r4, #0
	ble _0223A1B0
	add r5, sp, #0x74
_0223A18A:
	ldrb r0, [r7, #0xf]
	bl ov104_0223A768
	adds r2, r0, #0
	ldr r1, [r5]
	add r0, sp, #0x54
	bl ov104_0222DCF4
	add r0, sp, #0x44
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0223A1B0
	ldr r0, [sp, #0x40]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, r4
	blt _0223A18A
_0223A1B0:
	ldr r0, [sp, #0x40]
	cmp r0, r4
	bne _0223A25C
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	beq _0223A1DA
	movs r0, #0
	cmp r6, #0
	ble _0223A1D6
	add r1, sp, #0x44
	ldrh r3, [r1]
	ldr r2, [sp, #0x9c]
_0223A1C8:
	ldrh r1, [r2]
	cmp r3, r1
	beq _0223A1D6
	adds r0, r0, #1
	adds r2, r2, #2
	cmp r0, r6
	blt _0223A1C8
_0223A1D6:
	cmp r0, r6
	bne _0223A25C
_0223A1DA:
	ldr r0, [sp, #0x30]
	cmp r0, #0x32
	bge _0223A252
	movs r0, #0
	str r0, [sp, #0x20]
	cmp r4, #0
	ble _0223A214
	add r5, sp, #0x74
_0223A1EA:
	ldrb r0, [r7, #0xf]
	bl ov104_0223A768
	adds r2, r0, #0
	ldr r1, [r5]
	add r0, sp, #0x54
	bl ov104_0222DCF4
	add r0, sp, #0x44
	ldrh r1, [r0, #0x1c]
	cmp r1, #0
	beq _0223A208
	ldrh r0, [r0, #0xc]
	cmp r1, r0
	beq _0223A214
_0223A208:
	ldr r0, [sp, #0x20]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r4
	blt _0223A1EA
_0223A214:
	ldr r0, [sp, #0x20]
	cmp r0, r4
	beq _0223A222
	ldr r0, [sp, #0x30]
	adds r0, r0, #1
	str r0, [sp, #0x30]
	b _0223A25C
_0223A222:
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	beq _0223A252
	movs r0, #0
	cmp r6, #0
	ble _0223A246
	add r1, sp, #0x44
	ldrh r3, [r1, #0xc]
	ldr r2, [sp, #0xa0]
_0223A234:
	ldrh r1, [r2]
	cmp r3, r1
	bne _0223A23E
	cmp r1, #0
	bne _0223A246
_0223A23E:
	adds r0, r0, #1
	adds r2, r2, #2
	cmp r0, r6
	blt _0223A234
_0223A246:
	cmp r0, r6
	beq _0223A252
	ldr r0, [sp, #0x30]
	adds r0, r0, #1
	str r0, [sp, #0x30]
	b _0223A25C
_0223A252:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x24]
	adds r4, r4, #1
	stm r0!, {r1}
	str r0, [sp, #0x24]
_0223A25C:
	cmp r4, r6
	beq _0223A262
	b _0223A156
_0223A262:
	ldr r0, [sp, #0x18]
	bl FUN_0204AE84
	str r0, [sp, #0x3c]
	adds r0, r7, #0
	bl FUN_0204AEC0
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_0204AEC0
	lsls r0, r0, #0x10
	orrs r0, r5
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x30]
	cmp r0, #0x32
	blt _0223A288
	movs r0, #1
	str r0, [sp, #0x2c]
_0223A288:
	movs r5, #0
	cmp r4, #0
	ble _0223A2D0
	add r0, sp, #0x74
	str r0, [sp, #0x28]
	add r6, sp, #0x64
_0223A294:
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	str r0, [sp, #4]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xa8]
	ldr r3, [sp, #0x38]
	str r0, [sp, #0x10]
	ldr r2, [r2]
	adds r0, r7, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl ov104_0223A3A8
	stm r6!, {r0}
	ldr r0, [sp, #0x28]
	adds r5, r5, #1
	adds r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	adds r0, #0x38
	str r0, [sp, #0x1c]
	cmp r5, r4
	blt _0223A294
_0223A2D0:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bne _0223A2DC
	ldr r0, [sp, #0x2c]
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
_0223A2DC:
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0xa4]
	str r1, [r0]
	movs r3, #0
	add r0, sp, #0x74
	add r1, sp, #0x64
_0223A2E8:
	ldr r5, [r0]
	ldr r4, [sp, #0xa4]
	adds r3, r3, #1
	strh r5, [r4, #4]
	ldr r4, [r1]
	adds r0, r0, #4
	str r4, [r2, #8]
	ldr r4, [sp, #0xa4]
	adds r1, r1, #4
	adds r4, r4, #2
	adds r2, r2, #4
	str r4, [sp, #0xa4]
	cmp r3, #2
	blt _0223A2E8
	ldr r0, [sp, #0x2c]
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223A118

	thumb_func_start ov104_0223A30C
ov104_0223A30C: @ 0x0223A30C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	movs r2, #0x11
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0
	lsls r2, r2, #4
	blx FUN_020C4CF4
	adds r0, r6, #0
	bl FUN_0202D764
	adds r6, r0, #0
	bl FUN_0202D5E8
	cmp r0, #0
	bne _0223A33A
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov104_0223A348
	pop {r4, r5, r6, pc}
_0223A33A:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl FUN_0202D63C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_0223A30C

	thumb_func_start ov104_0223A348
ov104_0223A348: @ 0x0223A348
	push {r3, r4, r5, r6, r7, lr}
	movs r2, #0x11
	adds r4, r1, #0
	movs r1, #0
	lsls r2, r2, #4
	adds r5, r0, #0
	blx FUN_020C4CF4
	movs r0, #6
	muls r0, r4, r0
	ldr r1, _0223A39C @ =0x0223FCB4
	str r0, [sp]
	adds r6, r1, r0
	ldr r1, _0223A3A0 @ =0x0223FCE0
	movs r2, #0x30
	adds r0, r4, #0
	muls r0, r2, r0
	adds r0, r1, r0
	adds r1, r5, #0
	ldr r7, _0223A3A4 @ =0x0223FE30
	blx FUN_020C4DB0
	ldr r1, _0223A39C @ =0x0223FCB4
	ldr r0, [sp]
	movs r4, #0
	ldrh r0, [r1, r0]
	strh r0, [r5, #6]
	adds r5, #0x30
_0223A380:
	adds r0, r6, r4
	ldrb r1, [r0, #2]
	movs r0, #0x38
	movs r2, #0x38
	muls r0, r1, r0
	adds r0, r7, r0
	adds r1, r5, #0
	blx FUN_020C4DB0
	adds r4, r4, #1
	adds r5, #0x38
	cmp r4, #4
	blt _0223A380
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223A39C: .4byte 0x0223FCB4
_0223A3A0: .4byte 0x0223FCE0
_0223A3A4: .4byte 0x0223FE30
	thumb_func_end ov104_0223A348

	thumb_func_start ov104_0223A3A8
ov104_0223A3A8: @ 0x0223A3A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, r2, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x38
	str r3, [sp]
	blx FUN_020C4CF4
	ldrb r0, [r4, #0xf]
	bl ov104_0223A768
	adds r2, r0, #0
	add r0, sp, #8
	adds r1, r6, #0
	bl ov104_0222DCF4
	add r2, sp, #8
	ldrh r0, [r5]
	ldr r1, _0223A558 @ =0xFFFFF800
	ldrh r3, [r2]
	ands r0, r1
	lsrs r1, r1, #0x15
	ands r1, r3
	orrs r0, r1
	strh r0, [r5]
	ldrh r1, [r5]
	ldr r0, _0223A55C @ =0xFFFF07FF
	ands r1, r0
	ldrh r0, [r2, #0xe]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r5]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0223A402
	add r0, sp, #0x20
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #1
	ldr r0, _0223A560 @ =0x0223FCAC
	ldrh r0, [r0, r1]
	b _0223A404
_0223A402:
	ldrh r0, [r2, #0xc]
_0223A404:
	strh r0, [r5, #2]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #8
	adds r2, r5, #0
	adds r3, r0, #0
_0223A412:
	ldrh r6, [r1, #2]
	strh r6, [r2, #4]
	ldrh r6, [r1, #2]
	cmp r6, #0xda
	bne _0223A41E
	str r3, [sp, #4]
_0223A41E:
	adds r0, r0, #1
	adds r1, r1, #2
	adds r2, r2, #2
	cmp r0, #4
	blt _0223A412
	ldr r0, [sp]
	ldr r7, [sp, #0x30]
	str r0, [r5, #0xc]
	cmp r7, #0
	bne _0223A464
_0223A432:
	adds r0, r4, #0
	bl FUN_0204AEC0
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_0204AEC0
	lsls r0, r0, #0x10
	adds r7, r6, #0
	orrs r7, r0
	adds r0, r7, #0
	bl FUN_02075BFC
	add r1, sp, #8
	ldrb r1, [r1, #0xb]
	cmp r1, r0
	bne _0223A432
	ldr r0, [sp]
	adds r1, r7, #0
	bl FUN_02075E38
	cmp r0, #1
	beq _0223A432
	str r7, [r5, #0x10]
	b _0223A466
_0223A464:
	str r7, [r5, #0x10]
_0223A466:
	add r0, sp, #0x20
	ldrb r1, [r0, #0x14]
	ldr r2, [r5, #0x14]
	movs r0, #0x1f
	bics r2, r0
	movs r0, #0x1f
	ands r0, r1
	orrs r2, r0
	ldr r0, _0223A564 @ =0xFFFFFC1F
	movs r6, #0
	ands r2, r0
	lsls r0, r1, #0x1b
	lsrs r1, r0, #0x16
	orrs r2, r1
	ldr r1, _0223A568 @ =0xFFFF83FF
	adds r4, r6, #0
	ands r2, r1
	lsrs r1, r0, #0x11
	orrs r2, r1
	ldr r1, _0223A56C @ =0xFFF07FFF
	ands r2, r1
	lsrs r1, r0, #0xc
	orrs r2, r1
	ldr r1, _0223A570 @ =0xFE0FFFFF
	ands r2, r1
	lsrs r1, r0, #7
	orrs r2, r1
	ldr r1, _0223A574 @ =0xC1FFFFFF
	lsrs r0, r0, #2
	ands r1, r2
	orrs r0, r1
	str r0, [r5, #0x14]
_0223A4A6:
	adds r0, r4, #0
	bl FUN_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0223A4B6
	adds r6, r6, #1
_0223A4B6:
	adds r4, r4, #1
	cmp r4, #6
	blt _0223A4A6
	ldr r0, _0223A578 @ =0x000001FE
	adds r1, r6, #0
	blx FUN_020E1F6C
	cmp r0, #0xff
	ble _0223A4CA
	movs r0, #0xff
_0223A4CA:
	lsls r0, r0, #0x18
	movs r4, #0
	lsrs r6, r0, #0x18
_0223A4D0:
	adds r0, r4, #0
	bl FUN_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0223A4E2
	adds r0, r5, r4
	strb r6, [r0, #0x18]
_0223A4E2:
	adds r4, r4, #1
	cmp r4, #6
	blt _0223A4D0
	movs r0, #0
	strb r0, [r5, #0x1e]
	ldr r0, _0223A57C @ =0x020E4C44
	movs r1, #0x19
	ldrb r0, [r0]
	strb r0, [r5, #0x1f]
	ldrh r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	bl FUN_020759F0
	cmp r0, #0
	beq _0223A526
	ldr r2, [r5, #0x10]
	movs r1, #1
	tst r1, r2
	beq _0223A512
	adds r1, r5, #0
	adds r1, #0x20
	strb r0, [r1]
	b _0223A538
_0223A512:
	ldrh r0, [r5]
	movs r1, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	bl FUN_020759F0
	adds r1, r5, #0
	adds r1, #0x20
	strb r0, [r1]
	b _0223A538
_0223A526:
	ldrh r0, [r5]
	movs r1, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	bl FUN_020759F0
	adds r1, r5, #0
	adds r1, #0x20
	strb r0, [r1]
_0223A538:
	adds r1, r5, #0
	ldr r0, [sp, #4]
	adds r1, #0x21
	strb r0, [r1]
	ldrh r0, [r5]
	adds r5, #0x22
	ldr r1, [sp, #0x40]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	adds r2, r5, #0
	bl FUN_0200B274
	adds r0, r7, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223A558: .4byte 0xFFFFF800
_0223A55C: .4byte 0xFFFF07FF
_0223A560: .4byte 0x0223FCAC
_0223A564: .4byte 0xFFFFFC1F
_0223A568: .4byte 0xFFFF83FF
_0223A56C: .4byte 0xFFF07FFF
_0223A570: .4byte 0xFE0FFFFF
_0223A574: .4byte 0xC1FFFFFF
_0223A578: .4byte 0x000001FE
_0223A57C: .4byte 0x020E4C44
	thumb_func_end ov104_0223A3A8

	thumb_func_start ov104_0223A580
ov104_0223A580: @ 0x0223A580
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	adds r4, r1, #0
	bl ov104_0223A700
	adds r1, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02051D8C
	adds r7, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0207A268
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	movs r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	str r0, [sp, #8]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x1c]
	adds r0, r7, #0
	bl FUN_020521B8
	movs r0, #0x15
	movs r1, #0x12
	lsls r0, r0, #4
	str r1, [r7, r0]
	adds r0, r0, #4
	str r1, [r7, r0]
	ldr r0, [r5, #4]
	bl FUN_02073C74
	adds r4, r0, #0
	ldrb r1, [r5, #0xe]
	ldr r0, [r7, #4]
	bl FUN_0207A014
	ldrb r0, [r5, #0xe]
	movs r6, #0
	cmp r0, #0
	ble _0223A630
_0223A5DC:
	adds r1, r5, r6
	adds r1, #0x2a
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl FUN_0207A0FC
	adds r1, r4, #0
	bl FUN_020775EC
	adds r0, r4, #0
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0x32
	bls _0223A61E
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x32
	bl FUN_02075AD0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #8
	add r2, sp, #0x10
	bl FUN_02074B30
	adds r0, r4, #0
	bl FUN_0207418C
_0223A61E:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0205213C
	ldrb r0, [r5, #0xe]
	adds r6, r6, #1
	cmp r6, r0
	blt _0223A5DC
_0223A630:
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r7, #0
	bl FUN_02052894
	ldr r0, [r5, #4]
	adds r1, r5, #0
	str r0, [sp]
	ldrb r2, [r5, #0xe]
	adds r0, r7, #0
	adds r1, #0x78
	movs r3, #1
	bl ov104_0223A6AC
	movs r2, #0
	adds r1, r7, #0
	movs r0, #7
_0223A654:
	adds r2, r2, #1
	str r0, [r1, #0x34]
	adds r1, #0x34
	cmp r2, #4
	blt _0223A654
	ldrb r0, [r5, #0xf]
	cmp r0, #2
	beq _0223A66E
	cmp r0, #3
	beq _0223A690
	cmp r0, #6
	beq _0223A690
	b _0223A6A4
_0223A66E:
	ldr r0, [r5, #4]
	movs r1, #0xa6
	str r0, [sp]
	ldrb r2, [r5, #0x10]
	lsls r1, r1, #2
	adds r1, r5, r1
	lsls r2, r2, #0x18
	lsrs r3, r2, #0x1d
	lsls r2, r3, #4
	adds r2, r3, r2
	lsls r2, r2, #4
	adds r1, r1, r2
	ldrb r2, [r5, #0xe]
	adds r0, r7, #0
	movs r3, #2
	bl ov104_0223A6AC
_0223A690:
	ldr r0, [r5, #4]
	movs r1, #0x62
	str r0, [sp]
	ldrb r2, [r5, #0xe]
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r1, r5, r1
	movs r3, #3
	bl ov104_0223A6AC
_0223A6A4:
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223A580

	thumb_func_start ov104_0223A6AC
ov104_0223A6AC: @ 0x0223A6AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x28]
	str r0, [sp, #4]
	adds r5, r1, #0
	adds r7, r2, #0
	str r3, [sp, #8]
	str r4, [sp]
	bl ov104_0222E284
	ldr r0, [sp, #0x28]
	bl FUN_02073C74
	adds r4, r0, #0
	movs r6, #0
	cmp r7, #0
	ble _0223A6F6
	ldr r0, [sp, #8]
	adds r5, #0x30
	lsls r1, r0, #2
	ldr r0, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #0xc]
_0223A6DA:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x78
	bl ov104_0222DF40
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	ldr r0, [r0, #4]
	bl FUN_0207A048
	adds r6, r6, #1
	adds r5, #0x38
	cmp r6, r7
	blt _0223A6DA
_0223A6F6:
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223A6AC

	thumb_func_start ov104_0223A700
ov104_0223A700: @ 0x0223A700
	cmp r0, #6
	bhi _0223A72E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223A710: @ jump table
	.2byte _0223A71E - _0223A710 - 2 @ case 0
	.2byte _0223A722 - _0223A710 - 2 @ case 1
	.2byte _0223A726 - _0223A710 - 2 @ case 2
	.2byte _0223A72A - _0223A710 - 2 @ case 3
	.2byte _0223A71E - _0223A710 - 2 @ case 4
	.2byte _0223A72E - _0223A710 - 2 @ case 5
	.2byte _0223A72A - _0223A710 - 2 @ case 6
_0223A71E:
	movs r0, #0x81
	bx lr
_0223A722:
	movs r0, #0x83
	bx lr
_0223A726:
	movs r0, #0xcb
	bx lr
_0223A72A:
	movs r0, #0x8f
	bx lr
_0223A72E:
	movs r0, #0x81
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223A700

	thumb_func_start ov104_0223A734
ov104_0223A734: @ 0x0223A734
	ldrb r3, [r0, #0x10]
	movs r2, #8
	bics r3, r2
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x1c
	orrs r2, r3
	strb r2, [r0, #0x10]
	ldr r2, _0223A74C @ =0x0000083E
	strh r1, [r0, r2]
	bx lr
	.align 2, 0
_0223A74C: .4byte 0x0000083E
	thumb_func_end ov104_0223A734

	thumb_func_start ov104_0223A750
ov104_0223A750: @ 0x0223A750
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bne _0223A75E
	ldrh r0, [r1]
	cmp r0, #0
	beq _0223A762
_0223A75E:
	movs r0, #1
	bx lr
_0223A762:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223A750

	thumb_func_start ov104_0223A768
ov104_0223A768: @ 0x0223A768
	push {r3, lr}
	bl ov104_0223A7AC
	cmp r0, #0
	bne _0223A776
	movs r0, #0x87
	pop {r3, pc}
_0223A776:
	movs r0, #0xb3
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223A768

	thumb_func_start ov104_0223A77C
ov104_0223A77C: @ 0x0223A77C
	push {r3, lr}
	bl ov104_0223A7AC
	cmp r0, #0
	bne _0223A78A
	movs r0, #0x86
	pop {r3, pc}
_0223A78A:
	movs r0, #0xb2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223A77C

	thumb_func_start ov104_0223A790
ov104_0223A790: @ 0x0223A790
	push {r3, lr}
	bl ov104_0223A7AC
	cmp r0, #0
	bne _0223A79E
	ldr r0, _0223A7A4 @ =0x00000265
	pop {r3, pc}
_0223A79E:
	ldr r0, _0223A7A8 @ =0x00000266
	pop {r3, pc}
	nop
_0223A7A4: .4byte 0x00000265
_0223A7A8: .4byte 0x00000266
	thumb_func_end ov104_0223A790

	thumb_func_start ov104_0223A7AC
ov104_0223A7AC: @ 0x0223A7AC
	push {r3, r4, r5, lr}
	cmp r0, #3
	beq _0223A7B6
	cmp r0, #6
	bne _0223A7F0
_0223A7B6:
	movs r0, #0
	bl FUN_02032EE8
	adds r5, r0, #0
	bne _0223A7C4
	bl FUN_02022974
_0223A7C4:
	movs r0, #1
	bl FUN_02032EE8
	adds r4, r0, #0
	bne _0223A7D2
	bl FUN_02022974
_0223A7D2:
	adds r0, r5, #0
	bl FUN_02025FCC
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02025FCC
	cmp r5, #0
	beq _0223A7E8
	cmp r0, #0
	bne _0223A7EC
_0223A7E8:
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223A7EC:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223A7F0:
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223A7AC

	thumb_func_start ov104_0223A7F4
ov104_0223A7F4: @ 0x0223A7F4
	push {r3, r4, r5, lr}
	cmp r1, #8
	blo _0223A7FC
	movs r1, #7
_0223A7FC:
	cmp r0, #0
	bne _0223A818
	movs r0, #7
	adds r3, r2, #1
	muls r0, r1, r0
	adds r0, r3, r0
	cmp r0, #0x15
	bne _0223A810
	ldr r0, _0223A848 @ =0x00000135
	pop {r3, r4, r5, pc}
_0223A810:
	cmp r0, #0x31
	bne _0223A818
	ldr r0, _0223A84C @ =0x00000136
	pop {r3, r4, r5, pc}
_0223A818:
	cmp r2, #6
	beq _0223A820
	cmp r2, #0xd
	bne _0223A82E
_0223A820:
	ldr r0, _0223A850 @ =0x02240200
	lsls r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223A854 @ =0x02240202
	ldrh r0, [r0, r1]
	subs r5, r0, r4
	b _0223A83A
_0223A82E:
	ldr r0, _0223A858 @ =0x022401FC
	lsls r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223A85C @ =0x022401FE
	ldrh r0, [r0, r1]
	subs r5, r0, r4
_0223A83A:
	bl FUN_0201D2E8
	adds r1, r5, #0
	blx FUN_020E1F6C
	adds r0, r4, r1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223A848: .4byte 0x00000135
_0223A84C: .4byte 0x00000136
_0223A850: .4byte 0x02240200
_0223A854: .4byte 0x02240202
_0223A858: .4byte 0x022401FC
_0223A85C: .4byte 0x022401FE
	thumb_func_end ov104_0223A7F4

	thumb_func_start ov104_0223A860
ov104_0223A860: @ 0x0223A860
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	adds r7, r3, #0
	movs r4, #0
	adds r5, r6, #0
_0223A870:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r2, r4, #0
	bl ov104_0223A7F4
	movs r1, #0
	strh r0, [r5]
	cmp r4, #0
	ble _0223A896
	lsls r0, r4, #1
	ldrh r3, [r6, r0]
	adds r2, r6, #0
_0223A888:
	ldrh r0, [r2]
	cmp r0, r3
	beq _0223A896
	adds r1, r1, #1
	adds r2, r2, #2
	cmp r1, r4
	blt _0223A888
_0223A896:
	cmp r1, r4
	bne _0223A89E
	adds r5, r5, #2
	adds r4, r4, #1
_0223A89E:
	cmp r4, r7
	blt _0223A870
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223A860

	thumb_func_start ov104_0223A8A8
ov104_0223A8A8: @ 0x0223A8A8
	push {r4, lr}
	cmp r1, #0
	bne _0223A8B4
	ldr r2, _0223A8E8 @ =0x0224028C
	ldr r1, _0223A8EC @ =0x02241AB8
	b _0223A8B8
_0223A8B4:
	ldr r2, _0223A8F0 @ =0x022402DC
	ldr r1, _0223A8EC @ =0x02241AB8
_0223A8B8:
	movs r4, #0xa
	str r2, [r1]
	movs r2, #0
	cmp r4, #0
	ble _0223A8D4
	ldr r1, _0223A8EC @ =0x02241AB8
	ldr r3, [r1]
_0223A8C6:
	ldrh r1, [r3]
	cmp r0, r1
	blt _0223A8D4
	adds r2, r2, #1
	adds r3, #8
	cmp r2, r4
	blt _0223A8C6
_0223A8D4:
	cmp r2, r4
	blt _0223A8DE
	bl FUN_02022974
	subs r2, r4, #1
_0223A8DE:
	ldr r0, _0223A8EC @ =0x02241AB8
	ldr r1, [r0]
	lsls r0, r2, #3
	adds r0, r1, r0
	pop {r4, pc}
	.align 2, 0
_0223A8E8: .4byte 0x0224028C
_0223A8EC: .4byte 0x02241AB8
_0223A8F0: .4byte 0x022402DC
	thumb_func_end ov104_0223A8A8

	thumb_func_start ov104_0223A8F4
ov104_0223A8F4: @ 0x0223A8F4
	cmp r0, #8
	blt _0223A8FA
	movs r0, #7
_0223A8FA:
	cmp r1, #0
	bne _0223A906
	ldr r1, _0223A910 @ =0x0224028C
	lsls r0, r0, #3
	adds r0, r1, r0
	bx lr
_0223A906:
	ldr r1, _0223A914 @ =0x0224023C
	lsls r0, r0, #3
	adds r0, r1, r0
	bx lr
	nop
_0223A910: .4byte 0x0224028C
_0223A914: .4byte 0x0224023C
	thumb_func_end ov104_0223A8F4

	thumb_func_start ov104_0223A918
ov104_0223A918: @ 0x0223A918
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r0, [sp]
	ldr r0, [sp, #0xa0]
	str r1, [sp, #4]
	str r0, [sp, #0xa0]
	ldr r0, [sp, #0xa8]
	adds r7, r2, #0
	str r0, [sp, #0xa8]
	adds r0, r3, #0
	str r3, [sp, #8]
	cmp r0, #6
	ble _0223A936
	bl FUN_02022974
_0223A936:
	ldr r0, [sp, #0xa0]
	movs r4, #0
	ldrh r1, [r0, #4]
	ldrh r0, [r0, #2]
	subs r0, r1, r0
	add r1, sp, #0x88
	ldrh r5, [r1, #0x1c]
	str r0, [sp, #0x1c]
	adds r0, r4, #0
	cmp r5, #0
	beq _0223A964
	ldr r3, _0223AA4C @ =0x022401E8
	movs r0, #5
	adds r2, r4, #0
_0223A952:
	ldr r1, [r3]
	cmp r5, r1
	bgt _0223A95C
	adds r0, r2, #0
	b _0223A964
_0223A95C:
	adds r2, r2, #1
	adds r3, r3, #4
	cmp r2, #5
	blo _0223A952
_0223A964:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0223AA44
	add r1, sp, #0x24
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x98]
	str r1, [sp, #0x10]
	ldr r1, [sp, #8]
	subs r0, r1, r0
	str r0, [sp, #0xc]
_0223A978:
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blt _0223A9AC
	ldr r0, [sp, #0xa0]
	ldrb r0, [r0, #7]
	cmp r0, #1
	bne _0223A9AC
	ldr r0, [sp, #0xa0]
	ldrh r1, [r0, #0xc]
	ldrh r0, [r0, #0xa]
	subs r0, r1, r0
	str r0, [sp, #0x1c]
	bl FUN_0201D2E8
	ldr r1, [sp, #0x1c]
	adds r1, r1, #1
	blx FUN_020E1F6C
	ldr r0, [sp, #0xa0]
	ldrh r0, [r0, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xa0]
	ldrb r0, [r0, #0xe]
	str r0, [sp, #0x20]
	b _0223A9C6
_0223A9AC:
	bl FUN_0201D2E8
	ldr r1, [sp, #0x1c]
	adds r1, r1, #1
	blx FUN_020E1F6C
	ldr r0, [sp, #0xa0]
	ldrh r0, [r0, #4]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xa0]
	ldrb r0, [r0, #6]
	str r0, [sp, #0x20]
_0223A9C6:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	movs r2, #0xb3
	bl ov104_0222DCF4
	movs r2, #0
	cmp r4, #0
	ble _0223A9F4
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x14]
	ldrh r1, [r1]
	ldrh r3, [r3, #0xc]
	add r0, sp, #0x24
_0223A9E0:
	ldrh r5, [r0]
	cmp r5, r1
	beq _0223A9F4
	ldrh r5, [r0, #0xc]
	cmp r5, r3
	beq _0223A9F4
	adds r2, r2, #1
	adds r0, #0x10
	cmp r2, r4
	blt _0223A9E0
_0223A9F4:
	cmp r2, r4
	bne _0223AA3E
	movs r3, #0
	cmp r7, #0
	ble _0223AA20
	ldr r2, [sp, #0x14]
	ldr r5, [sp, #0x14]
	ldrh r2, [r2]
	ldrh r6, [r5, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
_0223AA0A:
	ldrh r5, [r0]
	cmp r2, r5
	beq _0223AA20
	ldrh r5, [r1]
	cmp r6, r5
	beq _0223AA20
	adds r3, r3, #1
	adds r0, r0, #2
	adds r1, r1, #2
	cmp r3, r7
	blt _0223AA0A
_0223AA20:
	cmp r3, r7
	bne _0223AA3E
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	strh r1, [r0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0xa8]
	strb r1, [r0, r4]
	ldr r0, [sp, #0x14]
	adds r4, r4, #1
	adds r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, r0, #2
	str r0, [sp, #0x10]
_0223AA3E:
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _0223A978
_0223AA44:
	movs r0, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_0223AA4C: .4byte 0x022401E8
	thumb_func_end ov104_0223A918

	thumb_func_start ov104_0223AA50
ov104_0223AA50: @ 0x0223AA50
	cmp r0, #3
	bhi _0223AA70
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223AA60: @ jump table
	.2byte _0223AA68 - _0223AA60 - 2 @ case 0
	.2byte _0223AA68 - _0223AA60 - 2 @ case 1
	.2byte _0223AA6C - _0223AA60 - 2 @ case 2
	.2byte _0223AA6C - _0223AA60 - 2 @ case 3
_0223AA68:
	movs r0, #3
	bx lr
_0223AA6C:
	movs r0, #2
	bx lr
_0223AA70:
	movs r0, #0
	bx lr
	thumb_func_end ov104_0223AA50

	thumb_func_start ov104_0223AA74
ov104_0223AA74: @ 0x0223AA74
	cmp r0, #3
	bhi _0223AA9C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223AA84: @ jump table
	.2byte _0223AA8C - _0223AA84 - 2 @ case 0
	.2byte _0223AA8C - _0223AA84 - 2 @ case 1
	.2byte _0223AA90 - _0223AA84 - 2 @ case 2
	.2byte _0223AA90 - _0223AA84 - 2 @ case 3
_0223AA8C:
	movs r0, #3
	bx lr
_0223AA90:
	cmp r1, #0
	bne _0223AA98
	movs r0, #2
	bx lr
_0223AA98:
	movs r0, #4
	bx lr
_0223AA9C:
	movs r0, #0
	bx lr
	thumb_func_end ov104_0223AA74

	thumb_func_start ov104_0223AAA0
ov104_0223AAA0: @ 0x0223AAA0
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r2, #0
	adds r4, r3, #0
	bl ov104_0223A8F4
	ldr r1, [sp, #0x2c]
	str r5, [sp]
	cmp r1, #0
	bne _0223AAD2
	movs r1, #0xb
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x18]
	movs r3, #6
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	bl ov104_0223A918
	b _0223AAEC
_0223AAD2:
	movs r2, #0xb
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x18]
	movs r2, #6
	adds r3, r2, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	adds r0, r1, #0
	bl ov104_0223A918
_0223AAEC:
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl ov104_0222E330
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov104_0223AAA0

	thumb_func_start ov104_0223AB0C
ov104_0223AB0C: @ 0x0223AB0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xa8]
	adds r7, r3, #0
	str r0, [sp, #0xa8]
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov104_0223A8A8
	str r0, [sp, #0x18]
	movs r0, #0
	mov ip, r0
	ldr r0, [sp, #0xa8]
	cmp r0, #0
	ble _0223AB60
	add r4, sp, #0x34
	add r5, sp, #0x1c
_0223AB30:
	adds r6, r7, #0
	add r3, sp, #0x4c
	movs r2, #7
_0223AB36:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223AB36
	add r0, sp, #0x1c
	ldrh r0, [r0, #0x30]
	adds r7, #0x38
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x15
	strh r0, [r4]
	add r0, sp, #0x1c
	ldrh r0, [r0, #0x32]
	adds r4, r4, #2
	strh r0, [r5]
	mov r0, ip
	adds r1, r0, #1
	ldr r0, [sp, #0xa8]
	adds r5, r5, #2
	mov ip, r1
	cmp r1, r0
	blt _0223AB30
_0223AB60:
	ldr r0, [sp, #0x98]
	ldr r2, [sp, #0xa8]
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x1c
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xa0]
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, sp, #0x34
	bl ov104_0223A918
	ldr r0, [sp, #0xa4]
	ldr r1, [sp, #0x98]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xa0]
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x9c]
	movs r3, #0
	bl ov104_0222E330
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223AB0C

	thumb_func_start ov104_0223ABA0
ov104_0223ABA0: @ 0x0223ABA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	adds r6, r1, #0
	bl ov104_0223AA50
	str r0, [sp, #0x14]
	ldrb r0, [r5, #4]
	movs r1, #0
	bl ov104_0223AA74
	str r0, [sp, #0x10]
	ldr r0, _0223AD6C @ =0x000004D4
	ldr r0, [r5, r0]
	bl FUN_02097284
	ldr r0, _0223AD70 @ =0x000004D8
	ldr r0, [r5, r0]
	bl FUN_02097284
	ldrb r0, [r5, #4]
	bl ov104_0223AD74
	adds r1, r0, #0
	movs r0, #0xb
	bl FUN_02051D8C
	ldr r1, [r6, #0xc]
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, [r6, #0x10]
	str r1, [sp, #4]
	ldr r1, [r6, #0x20]
	str r1, [sp, #8]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x1c]
	movs r1, #0
	bl FUN_020521B8
	movs r0, #0x15
	movs r1, #0x13
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	bl FUN_0207A014
	movs r0, #0xb
	bl FUN_02073C74
	adds r7, r0, #0
	ldr r0, [sp, #0x14]
	movs r6, #0
	cmp r0, #0
	ble _0223AC36
_0223AC14:
	ldr r0, _0223AD6C @ =0x000004D4
	adds r1, r6, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r1, r7, #0
	bl FUN_020775EC
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl FUN_0205213C
	ldr r0, [sp, #0x14]
	adds r6, r6, #1
	cmp r6, r0
	blt _0223AC14
_0223AC36:
	adds r0, r7, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_02052894
	ldrb r1, [r5, #6]
	add r0, sp, #0x18
	movs r2, #0xb
	lsls r1, r1, #1
	adds r1, r5, r1
	ldrh r1, [r1, #0x18]
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	movs r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	add r1, sp, #0x18
	movs r3, #1
	bl ov104_0222E284
	ldrb r0, [r5, #4]
	movs r1, #0
	bl ov104_0223AA74
	adds r1, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0207A014
	movs r7, #0
	adds r6, r4, #0
_0223AC7C:
	adds r0, r5, #0
	bl ov104_0223AEE4
	str r0, [r6, #0x34]
	adds r7, r7, #1
	adds r6, #0x34
	cmp r7, #4
	blt _0223AC7C
	movs r0, #0xb
	bl FUN_02073C74
	adds r7, r0, #0
	ldr r0, [sp, #0x10]
	movs r6, #0
	cmp r0, #0
	ble _0223ACBE
_0223AC9C:
	ldr r0, _0223AD70 @ =0x000004D8
	adds r1, r6, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r1, r7, #0
	bl FUN_020775EC
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #1
	bl FUN_0205213C
	ldr r0, [sp, #0x10]
	adds r6, r6, #1
	cmp r6, r0
	blt _0223AC9C
_0223ACBE:
	adds r0, r7, #0
	bl FUN_020181C4
	ldrb r0, [r5, #4]
	cmp r0, #2
	beq _0223ACCE
	cmp r0, #3
	bne _0223AD64
_0223ACCE:
	adds r0, r4, #0
	bl FUN_02052894
	bl FUN_0203608C
	movs r1, #1
	subs r0, r1, r0
	bl FUN_02032EE8
	movs r1, #1
	lsls r1, r1, #8
	ldr r1, [r4, r1]
	bl FUN_02025E80
	ldrb r1, [r5, #6]
	add r0, sp, #0x18
	movs r2, #0xb
	adds r1, r1, #7
	lsls r1, r1, #1
	adds r1, r5, r1
	ldrh r1, [r1, #0x18]
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	movs r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	add r1, sp, #0x18
	movs r3, #3
	bl ov104_0222E284
	ldrb r0, [r5, #4]
	movs r1, #0
	bl ov104_0223AA74
	adds r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_0207A014
	movs r0, #0xb
	bl FUN_02073C74
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0223AD5E
	adds r6, r0, #0
_0223AD36:
	ldr r0, _0223AD70 @ =0x000004D8
	adds r1, r6, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r1, r7, #0
	bl FUN_020775EC
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #3
	bl FUN_0205213C
	ldr r0, [sp, #0xc]
	adds r6, r6, #1
	adds r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0223AD36
_0223AD5E:
	adds r0, r7, #0
	bl FUN_020181C4
_0223AD64:
	adds r0, r4, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223AD6C: .4byte 0x000004D4
_0223AD70: .4byte 0x000004D8
	thumb_func_end ov104_0223ABA0

	thumb_func_start ov104_0223AD74
ov104_0223AD74: @ 0x0223AD74
	cmp r0, #3
	bhi _0223AD9C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223AD84: @ jump table
	.2byte _0223AD8C - _0223AD84 - 2 @ case 0
	.2byte _0223AD90 - _0223AD84 - 2 @ case 1
	.2byte _0223AD94 - _0223AD84 - 2 @ case 2
	.2byte _0223AD98 - _0223AD84 - 2 @ case 3
_0223AD8C:
	movs r0, #0x81
	bx lr
_0223AD90:
	movs r0, #0x83
	bx lr
_0223AD94:
	movs r0, #0x8f
	bx lr
_0223AD98:
	movs r0, #0x8f
	bx lr
_0223AD9C:
	movs r0, #0x81
	bx lr
	thumb_func_end ov104_0223AD74

	thumb_func_start ov104_0223ADA0
ov104_0223ADA0: @ 0x0223ADA0
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0223ADAA
	movs r0, #0x32
	bx lr
_0223ADAA:
	movs r0, #0x64
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223ADA0

	thumb_func_start ov104_0223ADB0
ov104_0223ADB0: @ 0x0223ADB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r3, #0xa
	lsls r3, r3, #6
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xb3
	adds r1, r3, #0
	adds r2, r3, #0
	str r0, [sp, #0xc]
	adds r0, r5, r3
	subs r1, #0x2c
	subs r2, #0x20
	subs r3, #0x18
	adds r1, r5, r1
	adds r2, r5, r2
	adds r3, r5, r3
	bl ov104_0222E330
	ldr r0, _0223AE28 @ =0x000004D4
	ldr r0, [r5, r0]
	bl FUN_0207A008
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	movs r0, #0xa
	lsls r0, r0, #6
	movs r7, #0
	adds r4, r5, r0
_0223ADF8:
	adds r0, r5, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_0222DF40
	ldr r0, _0223AE2C @ =0x000004F8
	ldr r1, _0223AE28 @ =0x000004D4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl ov104_0222E1C0
	adds r7, r7, #1
	adds r4, #0x38
	cmp r7, #6
	blt _0223ADF8
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223AE28: .4byte 0x000004D4
_0223AE2C: .4byte 0x000004F8
	thumb_func_end ov104_0223ADB0

	thumb_func_start ov104_0223AE30
ov104_0223AE30: @ 0x0223AE30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	adds r5, r0, #0
	ldr r0, _0223AEC8 @ =0x000004D4
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	adds r4, r0, #0
	cmp r4, #2
	ble _0223AE54
	ldr r6, _0223AEC8 @ =0x000004D4
_0223AE46:
	ldr r0, [r5, r6]
	subs r1, r4, #1
	bl FUN_0207A080
	subs r4, r4, #1
	cmp r4, #2
	bgt _0223AE46
_0223AE54:
	ldr r3, _0223AECC @ =0x00000584
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	adds r2, r3, #0
	str r0, [sp, #8]
	movs r0, #0xb3
	adds r1, r5, r3
	adds r2, #0xc
	adds r3, #0x14
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	adds r2, r5, r2
	adds r3, r5, r3
	bl ov104_0222E330
	movs r0, #0xb
	bl FUN_02073C74
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	add r6, sp, #0x14
	adds r4, r5, #0
_0223AE88:
	adds r0, r5, #0
	bl ov104_0223ADA0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov104_0222DF40
	ldr r0, _0223AED0 @ =0x000004F8
	ldr r1, _0223AEC8 @ =0x000004D4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r7, #0
	bl ov104_0222E1C0
	ldr r0, _0223AECC @ =0x00000584
	adds r6, #0x38
	ldrh r1, [r4, r0]
	subs r0, #0x98
	strh r1, [r4, r0]
	ldr r0, [sp, #0x10]
	adds r4, r4, #2
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #2
	blt _0223AE88
	adds r0, r7, #0
	bl FUN_020181C4
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_0223AEC8: .4byte 0x000004D4
_0223AECC: .4byte 0x00000584
_0223AED0: .4byte 0x000004F8
	thumb_func_end ov104_0223AE30

	thumb_func_start ov104_0223AED4
ov104_0223AED4: @ 0x0223AED4
	cmp r0, #2
	beq _0223AEDC
	cmp r0, #3
	bne _0223AEE0
_0223AEDC:
	movs r0, #1
	bx lr
_0223AEE0:
	movs r0, #0
	bx lr
	thumb_func_end ov104_0223AED4

	thumb_func_start ov104_0223AEE4
ov104_0223AEE4: @ 0x0223AEE4
	push {r3, lr}
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _0223AF04
	ldrb r1, [r0, #6]
	lsls r1, r1, #1
	adds r1, r0, r1
	ldrh r2, [r1, #0x18]
	ldr r1, _0223AF30 @ =0x0000FECB
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bhi _0223AF04
	movs r0, #7
	pop {r3, pc}
_0223AF04:
	bl ov104_0223AF34
	adds r0, r0, #1
	movs r1, #7
	cmp r0, #4
	bhi _0223AF2C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223AF1C: @ jump table
	.2byte _0223AF2C - _0223AF1C - 2 @ case 0
	.2byte _0223AF26 - _0223AF1C - 2 @ case 1
	.2byte _0223AF26 - _0223AF1C - 2 @ case 2
	.2byte _0223AF2A - _0223AF1C - 2 @ case 3
	.2byte _0223AF2A - _0223AF1C - 2 @ case 4
_0223AF26:
	movs r1, #0
	b _0223AF2C
_0223AF2A:
	movs r1, #1
_0223AF2C:
	adds r0, r1, #0
	pop {r3, pc}
	.align 2, 0
_0223AF30: .4byte 0x0000FECB
	thumb_func_end ov104_0223AEE4

	thumb_func_start ov104_0223AF34
ov104_0223AF34: @ 0x0223AF34
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	ldrh r4, [r5, #0xe]
	bl ov104_0223AED4
	cmp r0, #1
	bne _0223AF50
	ldr r0, _0223AF54 @ =0x0000057E
	ldrh r1, [r5, r0]
	ldrh r0, [r5, #0xe]
	cmp r1, r0
	bls _0223AF50
	adds r4, r1, #0
_0223AF50:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223AF54: .4byte 0x0000057E
	thumb_func_end ov104_0223AF34

	thumb_func_start ov104_0223AF58
ov104_0223AF58: @ 0x0223AF58
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r3, #0
	adds r0, r2, #0
	str r1, [sp]
	movs r4, #0
	bl ov104_0223B644
	lsls r1, r5, #0x19
	lsls r0, r0, #0x18
	ldr r2, [sp, #0x18]
	lsrs r1, r1, #0x17
	adds r5, r2, r1
	ldr r1, _0223AFAC @ =0x0224041C
	lsrs r0, r0, #0x14
	adds r7, r1, r0
	ldr r1, _0223AFB0 @ =0x0224038C
	lsls r0, r6, #3
	adds r6, r1, r0
_0223AF7E:
	bl FUN_0201D2E8
	movs r1, #0xc
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bhs _0223AF96
	lsls r0, r0, #1
	ldrh r0, [r7, r0]
	b _0223AF9E
_0223AF96:
	lsls r0, r0, #1
	adds r0, r6, r0
	subs r0, #0x10
	ldrh r0, [r0]
_0223AF9E:
	strh r0, [r5]
	ldr r0, [sp]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, r0
	blt _0223AF7E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223AFAC: .4byte 0x0224041C
_0223AFB0: .4byte 0x0224038C
	thumb_func_end ov104_0223AF58

	thumb_func_start ov104_0223AFB4
ov104_0223AFB4: @ 0x0223AFB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [sp, #0x34]
	str r1, [sp]
	str r0, [sp, #0x34]
	movs r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x20
	ldrb r4, [r0, #0x10]
	adds r6, r2, #0
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r0, r3, #0
	bl ov104_0223B644
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r5, #0
	bne _0223B00E
	movs r0, #0xa
	adds r1, r4, #1
	muls r0, r6, r0
	adds r0, r1, r0
	cmp r0, #0x32
	bne _0223AFFA
	ldr r0, [sp, #8]
	ldr r2, _0223B0BC @ =0x00000133
	lsls r1, r0, #1
	ldr r0, [sp, #0x34]
	add sp, #0x1c
	strh r2, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_0223AFFA:
	cmp r0, #0xaa
	bne _0223B00E
	ldr r0, [sp, #8]
	movs r2, #0x4d
	lsls r1, r0, #1
	ldr r0, [sp, #0x34]
	lsls r2, r2, #2
	strh r2, [r0, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0223B00E:
	ldr r0, [sp, #8]
	lsls r1, r0, #1
	ldr r0, [sp, #0x34]
	adds r0, r0, r1
	str r0, [sp, #0xc]
_0223B018:
	bl FUN_0201D2E8
	movs r1, #0x4b
	lsls r1, r1, #2
	blx FUN_020E2178
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r5, r1, r0
	lsls r0, r5, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	lsls r1, r0, #4
	ldr r0, _0223B0C0 @ =0x0224041C
	adds r7, r0, r1
_0223B03C:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x18]
	ldrh r6, [r1, r0]
	ldr r0, _0223B0C4 @ =0x022404BC
	lsls r1, r4, #1
	ldrh r0, [r0, r1]
	cmp r6, r0
	bne _0223B076
	movs r1, #0
	cmp r5, #0
	ble _0223B062
	ldr r2, [sp, #0x34]
_0223B054:
	ldrh r0, [r2]
	cmp r4, r0
	beq _0223B062
	adds r1, r1, #1
	adds r2, r2, #2
	cmp r1, r5
	blt _0223B054
_0223B062:
	cmp r1, r5
	bne _0223B076
	ldr r0, [sp, #0xc]
	strh r4, [r0]
	adds r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	b _0223B0AE
_0223B076:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x4b
	lsls r0, r0, #2
	cmp r4, r0
	blo _0223B086
	movs r4, #0
_0223B086:
	ldr r0, [sp, #0x14]
	cmp r4, r0
	bne _0223B03C
_0223B08C:
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x1d
	subs r2, r2, r1
	movs r0, #0x1d
	rors r2, r0
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldrh r2, [r7, r0]
	cmp r6, r2
	beq _0223B08C
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x18]
	strh r2, [r1, r0]
	b _0223B03C
_0223B0AE:
	adds r1, r0, #0
	ldr r0, [sp]
	cmp r1, r0
	blt _0223B018
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223B0BC: .4byte 0x00000133
_0223B0C0: .4byte 0x0224041C
_0223B0C4: .4byte 0x022404BC
	thumb_func_end ov104_0223AFB4

	thumb_func_start ov104_0223B0C8
ov104_0223B0C8: @ 0x0223B0C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x28]
	movs r7, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	ldr r6, [sp, #0x2c]
	str r0, [sp, #0x30]
	lsls r0, r3, #0x19
	lsrs r4, r0, #0x18
	adds r0, r2, #0
	str r7, [sp, #0xc]
	bl ov104_0223B644
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0223B14E
	ldr r3, _0223B238 @ =0x02240714
	adds r2, r7, #0
_0223B0F6:
	lsls r0, r2, #1
	ldrh r1, [r3, r0]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _0223B104
	adds r5, r2, #0
	b _0223B110
_0223B104:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _0223B23C @ =0x000001DD
	cmp r2, r0
	blo _0223B0F6
_0223B110:
	ldr r0, _0223B23C @ =0x000001DD
	cmp r2, r0
	bne _0223B11A
	adds r5, r0, #0
	subs r5, #0x65
_0223B11A:
	ldr r0, _0223B240 @ =0x0224032C
	movs r1, #0
_0223B11E:
	lsls r2, r1, #2
	adds r2, r0, r2
	ldrh r2, [r2, #2]
	cmp r5, r2
	blo _0223B132
	adds r1, r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #4
	blo _0223B11E
_0223B132:
	cmp r1, #4
	bne _0223B138
	movs r1, #3
_0223B138:
	ldr r0, [sp, #0x30]
	cmp r0, #2
	bne _0223B144
	ldr r0, _0223B244 @ =0x02240338
	str r0, [sp, #0x10]
	b _0223B156
_0223B144:
	ldr r2, _0223B240 @ =0x0224032C
	lsls r0, r1, #2
	adds r0, r2, r0
	str r0, [sp, #0x10]
	b _0223B156
_0223B14E:
	ldr r1, _0223B248 @ =0x02240364
	lsls r0, r2, #2
	adds r0, r1, r0
	str r0, [sp, #0x10]
_0223B156:
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	subs r0, r1, r0
	adds r0, r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl FUN_0201D2E8
	adds r1, r5, #0
	blx FUN_020E1F6C
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	str r2, [sp, #8]
	ldr r0, [sp]
	cmp r0, #0
	ble _0223B234
	subs r0, r4, #2
	lsls r0, r0, #1
	mov ip, r0
	lsls r0, r4, #1
	adds r5, r6, r0
_0223B190:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0223B1B2
	movs r0, #0
	cmp r4, #0
	ble _0223B1C2
	adds r1, r2, #1
_0223B19E:
	lsls r3, r0, #1
	ldrh r3, [r6, r3]
	cmp r1, r3
	beq _0223B1C2
	adds r0, r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	blt _0223B19E
	b _0223B1C2
_0223B1B2:
	mov r1, ip
	ldrh r1, [r6, r1]
	adds r0, r2, #1
	cmp r0, r1
	bne _0223B1C0
	movs r0, #0
	b _0223B1C2
_0223B1C0:
	adds r0, r4, #0
_0223B1C2:
	cmp r0, r4
	bne _0223B20A
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0223B1E2
	ldr r0, _0223B238 @ =0x02240714
	lsls r1, r2, #1
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _0223B20A
	lsls r0, r7, #1
	adds r1, r2, #1
	strh r1, [r5, r0]
	adds r7, r7, #1
	b _0223B20A
_0223B1E2:
	ldr r1, _0223B24C @ =0x02240ACE
	lsls r0, r2, #2
	adds r3, r1, r0
	ldrh r1, [r1, r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _0223B1F6
	ldrh r1, [r3, #2]
	cmp r0, r1
	bne _0223B20A
_0223B1F6:
	ldr r0, _0223B238 @ =0x02240714
	lsls r1, r2, #1
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _0223B20A
	lsls r0, r7, #1
	adds r1, r2, #1
	strh r1, [r5, r0]
	adds r7, r7, #1
_0223B20A:
	ldr r1, [sp, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r1, [r1, #2]
	adds r0, r2, #1
	cmp r0, r1
	blt _0223B224
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	subs r0, r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0223B224:
	ldr r0, [sp, #8]
	cmp r2, r0
	bne _0223B22E
	movs r0, #1
	str r0, [sp, #0xc]
_0223B22E:
	ldr r0, [sp]
	cmp r7, r0
	blt _0223B190
_0223B234:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223B238: .4byte 0x02240714
_0223B23C: .4byte 0x000001DD
_0223B240: .4byte 0x0224032C
_0223B244: .4byte 0x02240338
_0223B248: .4byte 0x02240364
_0223B24C: .4byte 0x02240ACE
	thumb_func_end ov104_0223B0C8

	thumb_func_start ov104_0223B250
ov104_0223B250: @ 0x0223B250
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	adds r6, r1, #0
	lsls r0, r0, #0x19
	lsrs r7, r0, #0x18
	ldrb r0, [r5, #4]
	bl ov104_0223B500
	str r0, [sp, #0x18]
	ldrb r0, [r5, #4]
	bl ov104_0223B50C
	str r0, [sp, #0x10]
	ldr r0, _0223B49C @ =0x000006FC
	ldr r0, [r5, r0]
	bl FUN_0207A268
	str r0, [sp, #0x1c]
	bl FUN_02097284
	ldrb r0, [r5, #4]
	bl ov104_0223B4D4
	adds r1, r0, #0
	movs r0, #0xb
	bl FUN_02051D8C
	ldr r1, [r6, #0xc]
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, [r6, #0x10]
	str r1, [sp, #4]
	ldr r1, [r6, #0x20]
	str r1, [sp, #8]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x1c]
	movs r1, #0
	bl FUN_020521B8
	movs r0, #0x15
	movs r1, #0x16
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	bl FUN_0207A014
	movs r0, #0xb
	bl FUN_02073C74
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	movs r6, #0
	cmp r0, #0
	ble _0223B2EC
_0223B2C6:
	movs r1, #0x26
	adds r2, r5, r6
	lsls r1, r1, #4
	ldrb r1, [r2, r1]
	ldr r0, [sp, #0x1c]
	bl FUN_0207A0FC
	ldr r1, [sp, #0x20]
	bl FUN_020775EC
	ldr r1, [sp, #0x20]
	adds r0, r4, #0
	movs r2, #0
	bl FUN_0205213C
	ldr r0, [sp, #0x18]
	adds r6, r6, #1
	cmp r6, r0
	blt _0223B2C6
_0223B2EC:
	ldr r0, [sp, #0x20]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_02052894
	lsls r0, r7, #1
	str r0, [sp, #0x28]
	adds r6, r5, #0
	ldr r1, [sp, #0x28]
	adds r6, #0x18
	ldrh r1, [r6, r1]
	add r0, sp, #0x34
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	movs r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	add r1, sp, #0x34
	movs r3, #1
	bl ov104_0222E284
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	bl FUN_0207A014
	ldr r1, _0223B4A0 @ =0x000006F5
	ldrb r2, [r5, #4]
	ldrb r0, [r5, r1]
	adds r1, #0xf
	adds r3, r5, r1
	lsls r1, r2, #3
	adds r1, r2, r1
	adds r1, r3, r1
	bl FUN_020301E0
	str r0, [sp, #0x24]
	ldrb r0, [r5, #4]
	cmp r0, #2
	bne _0223B34A
	movs r0, #9
	str r0, [sp, #0x24]
_0223B34A:
	ldr r2, [sp, #0x24]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov104_0223B604
	movs r2, #0
	adds r1, r4, #0
_0223B358:
	adds r2, r2, #1
	str r0, [r1, #0x34]
	adds r1, #0x34
	cmp r2, #4
	blt _0223B358
	movs r0, #0x38
	muls r0, r7, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	movs r3, #0x29
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	movs r0, #0xb4
	str r0, [sp, #8]
	ldr r2, [sp, #0x28]
	lsls r3, r3, #4
	adds r1, r5, r3
	ldr r0, [sp, #0x14]
	ldrh r2, [r6, r2]
	subs r3, #0x28
	adds r0, r1, r0
	adds r6, r5, r3
	lsls r3, r7, #1
	ldr r1, [sp, #0x24]
	adds r3, r6, r3
	bl ov104_0223B518
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0223B3F2
	movs r0, #0x29
	lsls r0, r0, #4
	adds r0, r5, r0
	str r0, [sp, #0x2c]
	movs r0, #0x38
	muls r0, r7, r0
	str r0, [sp, #0x30]
_0223B3B0:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov104_0223B4A4
	cmp r0, #0
	bne _0223B3B0
	ldr r1, [sp, #0x24]
	adds r0, r5, #0
	bl ov104_0223B57C
	adds r2, r0, #0
	lsls r2, r2, #0x18
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	lsrs r2, r2, #0x18
	adds r0, r1, r0
	adds r1, r6, #0
	bl ov104_0222DF40
	adds r0, r6, #0
	bl FUN_0207803C
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	bl FUN_0205213C
	ldr r0, [sp, #0xc]
	adds r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0223B3B0
_0223B3F2:
	adds r0, r6, #0
	bl FUN_020181C4
	ldrb r0, [r5, #4]
	cmp r0, #2
	beq _0223B402
	cmp r0, #3
	bne _0223B494
_0223B402:
	adds r0, r4, #0
	bl FUN_02052894
	bl FUN_0203608C
	movs r1, #1
	subs r0, r1, r0
	bl FUN_02032EE8
	movs r1, #1
	lsls r1, r1, #8
	ldr r1, [r4, r1]
	bl FUN_02025E80
	adds r1, r7, #1
	lsls r1, r1, #1
	adds r1, r5, r1
	ldrh r1, [r1, #0x18]
	add r0, sp, #0x34
	movs r2, #0xb
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	movs r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	add r1, sp, #0x34
	movs r3, #3
	bl ov104_0222E284
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x10]
	bl FUN_0207A014
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
_0223B454:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov104_0223B4A4
	cmp r0, #0
	bne _0223B454
	ldr r1, [sp, #0x24]
	adds r0, r5, #0
	bl ov104_0223B57C
	adds r2, r0, #0
	movs r0, #0x29
	lsls r0, r0, #4
	adds r1, r5, r0
	ldr r0, [sp, #0x14]
	lsls r2, r2, #0x18
	adds r0, r1, r0
	adds r1, r6, #0
	lsrs r2, r2, #0x18
	bl ov104_0222DF40
	adds r0, r6, #0
	bl FUN_0207803C
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	bl FUN_0205213C
	adds r0, r6, #0
	bl FUN_020181C4
_0223B494:
	adds r0, r4, #0
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	nop
_0223B49C: .4byte 0x000006FC
_0223B4A0: .4byte 0x000006F5
	thumb_func_end ov104_0223B250

	thumb_func_start ov104_0223B4A4
ov104_0223B4A4: @ 0x0223B4A4
	push {r4, lr}
	movs r2, #0x38
	muls r2, r1, r2
	movs r1, #0x2a
	lsls r1, r1, #4
	adds r1, r0, r1
	ldr r4, [r1, r2]
	ldr r3, _0223B4D0 @ =0x0003D0A9
	cmp r4, r3
	bls _0223B4BC
	subs r3, r4, r3
	b _0223B4BE
_0223B4BC:
	adds r3, r4, r3
_0223B4BE:
	str r3, [r1, r2]
	adds r3, r0, r2
	movs r0, #0xa7
	lsls r0, r0, #2
	ldr r0, [r3, r0]
	ldr r1, [r1, r2]
	bl FUN_02075E38
	pop {r4, pc}
	.align 2, 0
_0223B4D0: .4byte 0x0003D0A9
	thumb_func_end ov104_0223B4A4

	thumb_func_start ov104_0223B4D4
ov104_0223B4D4: @ 0x0223B4D4
	cmp r0, #3
	bhi _0223B4FC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B4E4: @ jump table
	.2byte _0223B4EC - _0223B4E4 - 2 @ case 0
	.2byte _0223B4F0 - _0223B4E4 - 2 @ case 1
	.2byte _0223B4F4 - _0223B4E4 - 2 @ case 2
	.2byte _0223B4F8 - _0223B4E4 - 2 @ case 3
_0223B4EC:
	movs r0, #0x81
	bx lr
_0223B4F0:
	movs r0, #0x83
	bx lr
_0223B4F4:
	movs r0, #0x8f
	bx lr
_0223B4F8:
	movs r0, #0x8f
	bx lr
_0223B4FC:
	movs r0, #0x81
	bx lr
	thumb_func_end ov104_0223B4D4

	thumb_func_start ov104_0223B500
ov104_0223B500: @ 0x0223B500
	cmp r0, #1
	bne _0223B508
	movs r0, #2
	bx lr
_0223B508:
	movs r0, #1
	bx lr
	thumb_func_end ov104_0223B500

	thumb_func_start ov104_0223B50C
ov104_0223B50C: @ 0x0223B50C
	cmp r0, #1
	bne _0223B514
	movs r0, #2
	bx lr
_0223B514:
	movs r0, #1
	bx lr
	thumb_func_end ov104_0223B50C

	thumb_func_start ov104_0223B518
ov104_0223B518: @ 0x0223B518
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, [sp, #0x2c]
	adds r5, r3, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldr r7, [sp, #0x28]
	str r0, [sp, #0x30]
	ldr r0, _0223B578 @ =0x00000133
	cmp r2, r0
	bne _0223B534
	movs r0, #0x1f
	b _0223B544
_0223B534:
	adds r0, r0, #1
	cmp r2, r0
	bne _0223B53E
	movs r0, #0x1f
	b _0223B544
_0223B53E:
	adds r0, r1, #0
	bl ov104_0223B5F0
_0223B544:
	movs r4, #0
	cmp r7, #0
	ble _0223B572
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
_0223B550:
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	adds r2, r4, #0
	str r0, [sp, #8]
	ldrh r1, [r5]
	adds r0, r6, #0
	bl ov104_0222E2F0
	adds r4, r4, #1
	adds r5, r5, #2
	adds r6, #0x38
	cmp r4, r7
	blt _0223B550
_0223B572:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B578: .4byte 0x00000133
	thumb_func_end ov104_0223B518

	thumb_func_start ov104_0223B57C
ov104_0223B57C: @ 0x0223B57C
	push {r3, lr}
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x17
	adds r1, r0, r1
	ldrh r2, [r1, #0x18]
	ldr r1, _0223B5A0 @ =0x0000FECD
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bhi _0223B59A
	bl ov104_0223B64C
	pop {r3, pc}
_0223B59A:
	ldrb r0, [r0, #7]
	pop {r3, pc}
	nop
_0223B5A0: .4byte 0x0000FECD
	thumb_func_end ov104_0223B57C

	thumb_func_start ov104_0223B5A4
ov104_0223B5A4: @ 0x0223B5A4
	ldr r1, _0223B5AC @ =0x02241244
	ldrb r0, [r1, r0]
	bx lr
	nop
_0223B5AC: .4byte 0x02241244
	thumb_func_end ov104_0223B5A4

	thumb_func_start ov104_0223B5B0
ov104_0223B5B0: @ 0x0223B5B0
	cmp r0, #2
	beq _0223B5B8
	cmp r0, #3
	bne _0223B5BC
_0223B5B8:
	movs r0, #1
	bx lr
_0223B5BC:
	movs r0, #0
	bx lr
	thumb_func_end ov104_0223B5B0

	thumb_func_start ov104_0223B5C0
ov104_0223B5C0: @ 0x0223B5C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223B5EC @ =0x000006FC
	ldr r0, [r4, r0]
	bl FUN_0207A268
	movs r1, #0x26
	lsls r1, r1, #4
	ldrb r1, [r4, r1]
	bl FUN_0207A0FC
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	movs r1, #0xa
	blx FUN_020E1F6C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4, pc}
	nop
_0223B5EC: .4byte 0x000006FC
	thumb_func_end ov104_0223B5C0

	thumb_func_start ov104_0223B5F0
ov104_0223B5F0: @ 0x0223B5F0
	push {r3, lr}
	bl ov104_0223B644
	lsls r1, r0, #2
	ldr r0, _0223B600 @ =0x0224033D
	ldrb r0, [r0, r1]
	pop {r3, pc}
	nop
_0223B600: .4byte 0x0224033D
	thumb_func_end ov104_0223B5F0

	thumb_func_start ov104_0223B604
ov104_0223B604: @ 0x0223B604
	adds r2, r2, #1
	cmp r2, #8
	blt _0223B60E
	movs r2, #7
	b _0223B618
_0223B60E:
	cmp r2, #4
	blt _0223B616
	movs r2, #1
	b _0223B618
_0223B616:
	movs r2, #0
_0223B618:
	ldrb r3, [r0, #4]
	cmp r3, #0
	bne _0223B634
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	ldr r0, _0223B640 @ =0x0000FECD
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0223B634
	movs r2, #7
_0223B634:
	cmp r3, #2
	bne _0223B63A
	movs r2, #7
_0223B63A:
	adds r0, r2, #0
	bx lr
	nop
_0223B640: .4byte 0x0000FECD
	thumb_func_end ov104_0223B604

	thumb_func_start ov104_0223B644
ov104_0223B644: @ 0x0223B644
	cmp r0, #0xa
	blo _0223B64A
	movs r0, #9
_0223B64A:
	bx lr
	thumb_func_end ov104_0223B644

	thumb_func_start ov104_0223B64C
ov104_0223B64C: @ 0x0223B64C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0223B6B8 @ =0x000006FC
	ldr r0, [r5, r0]
	bl FUN_0207A268
	movs r1, #0x26
	lsls r1, r1, #4
	ldrb r1, [r5, r1]
	adds r6, r0, #0
	bl FUN_0207A0FC
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r5, #4]
	bl ov104_0223B500
	cmp r0, #2
	bne _0223B69A
	ldr r1, _0223B6BC @ =0x00000261
	adds r0, r6, #0
	ldrb r1, [r5, r1]
	bl FUN_0207A0FC
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bhi _0223B696
	adds r4, r0, #0
_0223B696:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_0223B69A:
	ldrb r0, [r5, #4]
	bl ov104_0223B5B0
	cmp r0, #1
	bne _0223B6B2
	ldr r0, _0223B6C0 @ =0x00000D84
	ldrh r0, [r5, r0]
	cmp r4, r0
	bhi _0223B6AE
	adds r4, r0, #0
_0223B6AE:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_0223B6B2:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0223B6B8: .4byte 0x000006FC
_0223B6BC: .4byte 0x00000261
_0223B6C0: .4byte 0x00000D84
	thumb_func_end ov104_0223B64C

	thumb_func_start ov104_0223B6C4
ov104_0223B6C4: @ 0x0223B6C4
	push {r3, lr}
	cmp r0, #0
	beq _0223B6DC
	lsls r0, r0, #0xc
	blx FUN_020E17FC
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0223B6EA
_0223B6DC:
	lsls r0, r0, #0xc
	blx FUN_020E17FC
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0223B6EA:
	blx FUN_020E1740
	blx FUN_020BCFF0
	pop {r3, pc}
	thumb_func_end ov104_0223B6C4

	thumb_func_start ov104_0223B6F4
ov104_0223B6F4: @ 0x0223B6F4
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _0223B712
	movs r0, #7
	adds r3, r2, #1
	muls r0, r1, r0
	adds r0, r3, r0
	cmp r0, #0x15
	bne _0223B70A
	ldr r0, _0223B748 @ =0x00000139
	pop {r3, r4, r5, pc}
_0223B70A:
	cmp r0, #0x31
	bne _0223B712
	ldr r0, _0223B74C @ =0x0000013A
	pop {r3, r4, r5, pc}
_0223B712:
	cmp r1, #8
	blo _0223B718
	movs r1, #7
_0223B718:
	cmp r2, #6
	beq _0223B720
	cmp r2, #0xd
	bne _0223B72E
_0223B720:
	ldr r0, _0223B750 @ =0x0224125C
	lsls r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223B754 @ =0x0224125E
	ldrh r0, [r0, r1]
	subs r5, r0, r4
	b _0223B73A
_0223B72E:
	ldr r0, _0223B758 @ =0x02241258
	lsls r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223B75C @ =0x0224125A
	ldrh r0, [r0, r1]
	subs r5, r0, r4
_0223B73A:
	bl FUN_0201D2E8
	adds r1, r5, #0
	blx FUN_020E1F6C
	adds r0, r4, r1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B748: .4byte 0x00000139
_0223B74C: .4byte 0x0000013A
_0223B750: .4byte 0x0224125C
_0223B754: .4byte 0x0224125E
_0223B758: .4byte 0x02241258
_0223B75C: .4byte 0x0224125A
	thumb_func_end ov104_0223B6F4

	thumb_func_start ov104_0223B760
ov104_0223B760: @ 0x0223B760
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	adds r7, r3, #0
	movs r4, #0
	adds r5, r6, #0
_0223B770:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r2, r4, #0
	bl ov104_0223B6F4
	movs r1, #0
	strh r0, [r5]
	cmp r4, #0
	ble _0223B796
	lsls r0, r4, #1
	ldrh r3, [r6, r0]
	adds r2, r6, #0
_0223B788:
	ldrh r0, [r2]
	cmp r0, r3
	beq _0223B796
	adds r1, r1, #1
	adds r2, r2, #2
	cmp r1, r4
	blt _0223B788
_0223B796:
	cmp r1, r4
	bne _0223B79E
	adds r5, r5, #2
	adds r4, r4, #1
_0223B79E:
	cmp r4, r7
	blt _0223B770
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223B760

	thumb_func_start ov104_0223B7A8
ov104_0223B7A8: @ 0x0223B7A8
	push {r3, lr}
	cmp r0, #3
	bhi _0223B7D2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B7BA: @ jump table
	.2byte _0223B7C2 - _0223B7BA - 2 @ case 0
	.2byte _0223B7C2 - _0223B7BA - 2 @ case 1
	.2byte _0223B7C6 - _0223B7BA - 2 @ case 2
	.2byte _0223B7C6 - _0223B7BA - 2 @ case 3
_0223B7C2:
	movs r0, #3
	pop {r3, pc}
_0223B7C6:
	cmp r1, #0
	bne _0223B7CE
	movs r0, #2
	pop {r3, pc}
_0223B7CE:
	movs r0, #4
	pop {r3, pc}
_0223B7D2:
	bl FUN_02022974
	movs r0, #3
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223B7A8

	thumb_func_start ov104_0223B7DC
ov104_0223B7DC: @ 0x0223B7DC
	push {r3, lr}
	cmp r0, #3
	bhi _0223B806
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B7EE: @ jump table
	.2byte _0223B7F6 - _0223B7EE - 2 @ case 0
	.2byte _0223B7F6 - _0223B7EE - 2 @ case 1
	.2byte _0223B7FA - _0223B7EE - 2 @ case 2
	.2byte _0223B7FA - _0223B7EE - 2 @ case 3
_0223B7F6:
	movs r0, #3
	pop {r3, pc}
_0223B7FA:
	cmp r1, #0
	bne _0223B802
	movs r0, #2
	pop {r3, pc}
_0223B802:
	movs r0, #4
	pop {r3, pc}
_0223B806:
	bl FUN_02022974
	movs r0, #3
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223B7DC

	thumb_func_start ov104_0223B810
ov104_0223B810: @ 0x0223B810
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	adds r6, r1, #0
	movs r1, #0
	bl ov104_0223B7A8
	str r0, [sp, #0x14]
	ldrb r0, [r5, #0x10]
	movs r1, #0
	bl ov104_0223B7DC
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	bl FUN_02097284
	ldrb r0, [r5, #0x10]
	bl ov104_0223B9E4
	adds r1, r0, #0
	movs r0, #0xb
	bl FUN_02051D8C
	ldr r1, [r6, #0xc]
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, [r6, #0x10]
	str r1, [sp, #4]
	ldr r1, [r6, #0x20]
	str r1, [sp, #8]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x1c]
	movs r1, #0
	bl FUN_020521B8
	movs r1, #0x15
	lsls r0, r1, #4
	str r1, [r4, r0]
	movs r0, #0x55
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	bl FUN_0207A014
	bl FUN_0203608C
	cmp r0, #0
	bne _0223B878
	movs r6, #0
	b _0223B87A
_0223B878:
	movs r6, #2
_0223B87A:
	movs r0, #0xb
	bl FUN_02073C74
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _0223B8B2
_0223B88C:
	ldr r0, [r5, #0x28]
	adds r1, r6, #0
	bl FUN_0207A0FC
	adds r1, r7, #0
	bl FUN_020775EC
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl FUN_0205213C
	ldr r0, [sp, #0x18]
	adds r6, r6, #1
	adds r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _0223B88C
_0223B8B2:
	adds r0, r7, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_02052894
	ldrb r1, [r5, #0x11]
	add r0, sp, #0x1c
	movs r2, #0xb
	lsls r1, r1, #1
	adds r1, r5, r1
	ldrh r1, [r1, #0x30]
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	movs r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	add r1, sp, #0x1c
	movs r3, #1
	bl ov104_0222E284
	ldrb r0, [r5, #0x10]
	movs r1, #0
	bl ov104_0223B7DC
	adds r1, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0207A014
	movs r7, #0
	adds r6, r4, #0
_0223B8F8:
	adds r0, r5, #0
	bl ov104_0223BB10
	str r0, [r6, #0x34]
	adds r7, r7, #1
	adds r6, #0x34
	cmp r7, #4
	blt _0223B8F8
	movs r0, #0xb
	bl FUN_02073C74
	adds r7, r0, #0
	ldr r0, [sp, #0x10]
	movs r6, #0
	cmp r0, #0
	ble _0223B938
_0223B918:
	ldr r0, [r5, #0x2c]
	adds r1, r6, #0
	bl FUN_0207A0FC
	adds r1, r7, #0
	bl FUN_020775EC
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #1
	bl FUN_0205213C
	ldr r0, [sp, #0x10]
	adds r6, r6, #1
	cmp r6, r0
	blt _0223B918
_0223B938:
	adds r0, r7, #0
	bl FUN_020181C4
	ldrb r0, [r5, #0x10]
	cmp r0, #2
	beq _0223B948
	cmp r0, #3
	bne _0223B9DC
_0223B948:
	adds r0, r4, #0
	bl FUN_02052894
	bl FUN_0203608C
	movs r1, #1
	subs r0, r1, r0
	bl FUN_02032EE8
	movs r1, #1
	lsls r1, r1, #8
	ldr r1, [r4, r1]
	bl FUN_02025E80
	ldrb r1, [r5, #0x11]
	add r0, sp, #0x1c
	movs r2, #0xb
	adds r1, r1, #7
	lsls r1, r1, #1
	adds r1, r5, r1
	ldrh r1, [r1, #0x30]
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	movs r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	add r1, sp, #0x1c
	movs r3, #3
	bl ov104_0222E284
	ldrb r0, [r5, #0x10]
	movs r1, #0
	bl ov104_0223B7DC
	adds r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_0207A014
	movs r0, #0xb
	bl FUN_02073C74
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0223B9D6
	adds r6, r0, #0
_0223B9B0:
	ldr r0, [r5, #0x2c]
	adds r1, r6, #0
	bl FUN_0207A0FC
	adds r1, r7, #0
	bl FUN_020775EC
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #3
	bl FUN_0205213C
	ldr r0, [sp, #0xc]
	adds r6, r6, #1
	adds r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0223B9B0
_0223B9D6:
	adds r0, r7, #0
	bl FUN_020181C4
_0223B9DC:
	adds r0, r4, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223B810

	thumb_func_start ov104_0223B9E4
ov104_0223B9E4: @ 0x0223B9E4
	cmp r0, #3
	bhi _0223BA0C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B9F4: @ jump table
	.2byte _0223B9FC - _0223B9F4 - 2 @ case 0
	.2byte _0223BA00 - _0223B9F4 - 2 @ case 1
	.2byte _0223BA04 - _0223B9F4 - 2 @ case 2
	.2byte _0223BA08 - _0223B9F4 - 2 @ case 3
_0223B9FC:
	movs r0, #0x81
	bx lr
_0223BA00:
	movs r0, #0x83
	bx lr
_0223BA04:
	movs r0, #0x8f
	bx lr
_0223BA08:
	movs r0, #0x8f
	bx lr
_0223BA0C:
	movs r0, #0x81
	bx lr
	thumb_func_end ov104_0223B9E4

	thumb_func_start ov104_0223BA10
ov104_0223BA10: @ 0x0223BA10
	movs r0, #0x32
	bx lr
	thumb_func_end ov104_0223BA10

	thumb_func_start ov104_0223BA14
ov104_0223BA14: @ 0x0223BA14
	cmp r0, #2
	beq _0223BA1C
	cmp r0, #3
	bne _0223BA20
_0223BA1C:
	movs r0, #1
	bx lr
_0223BA20:
	movs r0, #0
	bx lr
	thumb_func_end ov104_0223BA14

	thumb_func_start ov104_0223BA24
ov104_0223BA24: @ 0x0223BA24
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl FUN_0207A0F8
	adds r6, r0, #0
	movs r4, #0
	cmp r6, #0
	ble _0223BA7A
_0223BA34:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #0xac
	movs r2, #0
	adds r5, r0, #0
	bl FUN_02074470
	cmp r0, #0
	beq _0223BA74
	adds r0, r5, #0
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223BA66
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa3
	add r2, sp, #0
	bl FUN_02074B30
_0223BA66:
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa0
	add r2, sp, #0
	bl FUN_02074B30
_0223BA74:
	adds r4, r4, #1
	cmp r4, r6
	blt _0223BA34
_0223BA7A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223BA24

	thumb_func_start ov104_0223BA7C
ov104_0223BA7C: @ 0x0223BA7C
	push {r4, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	adds r4, r1, #0
	bl FUN_02025E38
	movs r3, #0
	adds r1, r0, #0
	str r3, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #4
	bl FUN_02077EE4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223BA7C

	thumb_func_start ov104_0223BAA0
ov104_0223BAA0: @ 0x0223BAA0
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r5, r1, #0
	adds r1, r4, #0
	bl ov104_0223BA7C
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0207A048
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0223BAA0

	thumb_func_start ov104_0223BAB8
ov104_0223BAB8: @ 0x0223BAB8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl FUN_0207A008
	ldrb r0, [r5, #0x10]
	movs r1, #1
	bl ov104_0223B7DC
	str r0, [sp]
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	ldr r0, [sp]
	movs r7, #0
	cmp r0, #0
	ble _0223BB06
	movs r0, #0xa2
	lsls r0, r0, #2
	adds r4, r5, r0
_0223BAE2:
	adds r0, r5, #0
	bl ov104_0223BA10
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov104_0222DF40
	ldr r1, [r5, #0x2c]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov104_0223BAA0
	ldr r0, [sp]
	adds r7, r7, #1
	adds r4, #0x38
	cmp r7, r0
	blt _0223BAE2
_0223BB06:
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223BAB8

	thumb_func_start ov104_0223BB10
ov104_0223BB10: @ 0x0223BB10
	push {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	bne _0223BB30
	ldrb r1, [r0, #0x11]
	lsls r1, r1, #1
	adds r1, r0, r1
	ldrh r2, [r1, #0x30]
	ldr r1, _0223BB5C @ =0x0000FEC7
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bhi _0223BB30
	movs r0, #7
	pop {r3, pc}
_0223BB30:
	bl ov104_0223BB60
	adds r0, r0, #1
	movs r1, #7
	cmp r0, #4
	bhi _0223BB58
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223BB48: @ jump table
	.2byte _0223BB58 - _0223BB48 - 2 @ case 0
	.2byte _0223BB52 - _0223BB48 - 2 @ case 1
	.2byte _0223BB52 - _0223BB48 - 2 @ case 2
	.2byte _0223BB56 - _0223BB48 - 2 @ case 3
	.2byte _0223BB56 - _0223BB48 - 2 @ case 4
_0223BB52:
	movs r1, #0
	b _0223BB58
_0223BB56:
	movs r1, #1
_0223BB58:
	adds r0, r1, #0
	pop {r3, pc}
	.align 2, 0
_0223BB5C: .4byte 0x0000FEC7
	thumb_func_end ov104_0223BB10

	thumb_func_start ov104_0223BB60
ov104_0223BB60: @ 0x0223BB60
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	ldrh r4, [r5, #0x16]
	bl ov104_0223BA14
	cmp r0, #1
	bne _0223BB7C
	ldr r0, _0223BB80 @ =0x00000A12
	ldrh r1, [r5, r0]
	ldrh r0, [r5, #0x16]
	cmp r1, r0
	bls _0223BB7C
	adds r4, r1, #0
_0223BB7C:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223BB80: .4byte 0x00000A12
	thumb_func_end ov104_0223BB60

	thumb_func_start ov104_0223BB84
ov104_0223BB84: @ 0x0223BB84
	push {r3, r4, r5, lr}
	sub sp, #0x48
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl ov104_0223BB60
	adds r1, r0, #0
	add r0, sp, #0xc
	bl ov104_0223BBC4
	movs r0, #6
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #3
	lsls r1, r4, #0x18
	str r0, [sp, #8]
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	add r2, sp, #0xc
	movs r3, #0xb
	bl FUN_020198C0
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0223BB84

	thumb_func_start ov104_0223BBC4
ov104_0223BBC4: @ 0x0223BBC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	adds r0, r1, #0
	bl ov104_0223BC24
	movs r3, #0
	add r4, sp, #4
	movs r1, #4
_0223BBD6:
	strb r3, [r4]
	subs r2, r1, r3
	strb r2, [r4, #5]
	adds r3, r3, #1
	adds r4, r4, #1
	cmp r3, #5
	blo _0223BBD6
	movs r1, #0x60
	movs r7, #0
	muls r1, r0, r1
	movs r5, #1
	adds r1, #0x10
	adds r2, r7, #0
	lsls r5, r5, #0xa
_0223BBF2:
	ldr r4, [sp]
	lsls r6, r2, #1
	movs r0, #0
	add r3, sp, #4
	adds r4, r4, r6
_0223BBFC:
	ldrb r6, [r3]
	adds r6, r6, r1
	strh r6, [r4]
	cmp r0, #5
	blo _0223BC0C
	ldrh r6, [r4]
	orrs r6, r5
	strh r6, [r4]
_0223BC0C:
	adds r0, r0, #1
	adds r3, r3, #1
	adds r4, r4, #2
	cmp r0, #0xa
	blo _0223BBFC
	adds r7, r7, #1
	adds r1, #0x20
	adds r2, #0xa
	cmp r7, #3
	blo _0223BBF2
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223BBC4

	thumb_func_start ov104_0223BC24
ov104_0223BC24: @ 0x0223BC24
	cmp r0, #8
	blo _0223BC2A
	movs r0, #7
_0223BC2A:
	bx lr
	thumb_func_end ov104_0223BC24

	thumb_func_start ov104_0223BC2C
ov104_0223BC2C: @ 0x0223BC2C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r6, r2, #0
	bl FUN_0205E630
	adds r7, r0, #0
	adds r0, r4, #0
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl FUN_02030824
	adds r0, r4, #0
	bl FUN_0205E658
	adds r7, r0, #0
	adds r0, r4, #0
	bl FUN_0205E658
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02030698
	adds r1, r0, r6
	ldr r0, _0223BCB8 @ =0x0000270F
	cmp r1, r0
	ble _0223BC96
	adds r0, r4, #0
	bl FUN_0205E658
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_0205E658
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r3, _0223BCB8 @ =0x0000270F
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_020306E4
	pop {r3, r4, r5, r6, r7, pc}
_0223BC96:
	adds r0, r4, #0
	bl FUN_0205E658
	adds r7, r0, #0
	adds r0, r4, #0
	bl FUN_0205E658
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl FUN_02030804
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BCB8: .4byte 0x0000270F
	thumb_func_end ov104_0223BC2C

	thumb_func_start ov104_0223BCBC
ov104_0223BCBC: @ 0x0223BCBC
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _0223BCDC
	movs r0, #7
	adds r3, r2, #1
	muls r0, r1, r0
	adds r0, r3, r0
	cmp r0, #0x15
	bne _0223BCD2
	ldr r0, _0223BD14 @ =0x00000137
	pop {r3, r4, r5, pc}
_0223BCD2:
	cmp r0, #0x31
	bne _0223BCDC
	movs r0, #0x4e
	lsls r0, r0, #2
	pop {r3, r4, r5, pc}
_0223BCDC:
	cmp r1, #8
	blo _0223BCE2
	movs r1, #7
_0223BCE2:
	cmp r2, #6
	beq _0223BCEA
	cmp r2, #0xd
	bne _0223BCF8
_0223BCEA:
	ldr r0, _0223BD18 @ =0x0224129C
	lsls r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223BD1C @ =0x0224129E
	ldrh r0, [r0, r1]
	subs r5, r0, r4
	b _0223BD04
_0223BCF8:
	ldr r0, _0223BD20 @ =0x02241298
	lsls r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223BD24 @ =0x0224129A
	ldrh r0, [r0, r1]
	subs r5, r0, r4
_0223BD04:
	bl FUN_0201D2E8
	adds r1, r5, #0
	blx FUN_020E1F6C
	adds r0, r4, r1
	pop {r3, r4, r5, pc}
	nop
_0223BD14: .4byte 0x00000137
_0223BD18: .4byte 0x0224129C
_0223BD1C: .4byte 0x0224129E
_0223BD20: .4byte 0x02241298
_0223BD24: .4byte 0x0224129A
	thumb_func_end ov104_0223BCBC

	thumb_func_start ov104_0223BD28
ov104_0223BD28: @ 0x0223BD28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	adds r7, r3, #0
	movs r4, #0
	adds r5, r6, #0
_0223BD38:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r2, r4, #0
	bl ov104_0223BCBC
	movs r1, #0
	strh r0, [r5]
	cmp r4, #0
	ble _0223BD5E
	lsls r0, r4, #1
	ldrh r3, [r6, r0]
	adds r2, r6, #0
_0223BD50:
	ldrh r0, [r2]
	cmp r0, r3
	beq _0223BD5E
	adds r1, r1, #1
	adds r2, r2, #2
	cmp r1, r4
	blt _0223BD50
_0223BD5E:
	cmp r1, r4
	bne _0223BD66
	adds r5, r5, #2
	adds r4, r4, #1
_0223BD66:
	cmp r4, r7
	blt _0223BD38
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223BD28

	thumb_func_start ov104_0223BD70
ov104_0223BD70: @ 0x0223BD70
	push {r3, lr}
	cmp r0, #3
	bhi _0223BD9A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223BD82: @ jump table
	.2byte _0223BD8A - _0223BD82 - 2 @ case 0
	.2byte _0223BD8A - _0223BD82 - 2 @ case 1
	.2byte _0223BD8E - _0223BD82 - 2 @ case 2
	.2byte _0223BD8E - _0223BD82 - 2 @ case 3
_0223BD8A:
	movs r0, #3
	pop {r3, pc}
_0223BD8E:
	cmp r1, #0
	bne _0223BD96
	movs r0, #2
	pop {r3, pc}
_0223BD96:
	movs r0, #4
	pop {r3, pc}
_0223BD9A:
	bl FUN_02022974
	movs r0, #3
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223BD70

	thumb_func_start ov104_0223BDA4
ov104_0223BDA4: @ 0x0223BDA4
	push {r3, lr}
	cmp r0, #3
	bhi _0223BDCE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223BDB6: @ jump table
	.2byte _0223BDBE - _0223BDB6 - 2 @ case 0
	.2byte _0223BDBE - _0223BDB6 - 2 @ case 1
	.2byte _0223BDC2 - _0223BDB6 - 2 @ case 2
	.2byte _0223BDC2 - _0223BDB6 - 2 @ case 3
_0223BDBE:
	movs r0, #3
	pop {r3, pc}
_0223BDC2:
	cmp r1, #0
	bne _0223BDCA
	movs r0, #2
	pop {r3, pc}
_0223BDCA:
	movs r0, #4
	pop {r3, pc}
_0223BDCE:
	bl FUN_02022974
	movs r0, #3
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223BDA4

	thumb_func_start ov104_0223BDD8
ov104_0223BDD8: @ 0x0223BDD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	adds r7, r0, #0
	ldrb r0, [r7, #0x10]
	adds r5, r1, #0
	movs r1, #0
	bl ov104_0223BD70
	str r0, [sp, #0x14]
	ldrb r0, [r7, #0x10]
	movs r1, #0
	bl ov104_0223BDA4
	str r0, [sp, #0x10]
	ldrb r0, [r7, #0x10]
	bl ov104_0223BFD0
	adds r1, r0, #0
	movs r0, #0xb
	bl FUN_02051D8C
	ldr r1, [r5, #0xc]
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, [r5, #0x10]
	str r1, [sp, #4]
	ldr r1, [r5, #0x20]
	str r1, [sp, #8]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0x1c]
	movs r1, #0
	bl FUN_020521B8
	movs r1, #0x15
	lsls r1, r1, #4
	movs r2, #0x14
	str r2, [r4, r1]
	adds r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r7, #0x14]
	adds r1, #0x24
	str r0, [r4, r1]
	ldr r0, [r7, #0x74]
	ldr r1, [r7, #0x70]
	str r0, [sp, #0x18]
	ldrb r0, [r7, #0x13]
	str r1, [sp, #0x1c]
	cmp r0, #0x1b
	bne _0223BE40
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x18]
_0223BE40:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	bl FUN_0207A014
	bl FUN_0203608C
	cmp r0, #0
	bne _0223BE54
	movs r5, #0
	b _0223BE56
_0223BE54:
	movs r5, #2
_0223BE56:
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _0223BE8E
_0223BE68:
	ldr r0, [sp, #0x1c]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r1, r6, #0
	bl FUN_020775EC
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl FUN_0205213C
	ldr r0, [sp, #0x20]
	adds r5, r5, #1
	adds r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0223BE68
_0223BE8E:
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_02052894
	ldrb r1, [r7, #0x11]
	add r0, sp, #0x24
	movs r2, #0xb
	lsls r1, r1, #1
	adds r1, r7, r1
	adds r1, #0x78
	ldrh r1, [r1]
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	movs r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	add r1, sp, #0x24
	movs r3, #1
	bl ov104_0222E284
	ldrb r0, [r7, #0x10]
	movs r1, #0
	bl ov104_0223BDA4
	adds r1, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0207A014
	movs r6, #0
	adds r5, r4, #0
_0223BED6:
	adds r0, r7, #0
	bl ov104_0223C0D0
	str r0, [r5, #0x34]
	adds r6, r6, #1
	adds r5, #0x34
	cmp r6, #4
	blt _0223BED6
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	movs r5, #0
	cmp r0, #0
	ble _0223BF16
_0223BEF6:
	ldr r0, [sp, #0x18]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r1, r6, #0
	bl FUN_020775EC
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	bl FUN_0205213C
	ldr r0, [sp, #0x10]
	adds r5, r5, #1
	cmp r5, r0
	blt _0223BEF6
_0223BF16:
	adds r0, r6, #0
	bl FUN_020181C4
	ldrb r0, [r7, #0x10]
	cmp r0, #2
	beq _0223BF26
	cmp r0, #3
	bne _0223BFBC
_0223BF26:
	adds r0, r4, #0
	bl FUN_02052894
	bl FUN_0203608C
	movs r1, #1
	subs r0, r1, r0
	bl FUN_02032EE8
	movs r1, #1
	lsls r1, r1, #8
	ldr r1, [r4, r1]
	bl FUN_02025E80
	ldrb r1, [r7, #0x11]
	add r0, sp, #0x24
	movs r2, #0xb
	adds r1, r1, #7
	lsls r1, r1, #1
	adds r1, r7, r1
	adds r1, #0x78
	ldrh r1, [r1]
	movs r3, #0xb2
	bl ov104_0222DD04
	bl FUN_020181C4
	movs r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	add r1, sp, #0x24
	movs r3, #3
	bl ov104_0222E284
	ldrb r0, [r7, #0x10]
	movs r1, #0
	bl ov104_0223BDA4
	adds r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_0207A014
	movs r0, #0xb
	bl FUN_02073C74
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0223BFB6
	adds r5, r0, #0
_0223BF90:
	ldr r0, [sp, #0x18]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r1, r6, #0
	bl FUN_020775EC
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	bl FUN_0205213C
	ldr r0, [sp, #0xc]
	adds r5, r5, #1
	adds r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0223BF90
_0223BFB6:
	adds r0, r6, #0
	bl FUN_020181C4
_0223BFBC:
	ldr r0, [r7, #0x70]
	bl FUN_02097284
	ldr r0, [r7, #0x74]
	bl FUN_02097284
	adds r0, r4, #0
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223BDD8

	thumb_func_start ov104_0223BFD0
ov104_0223BFD0: @ 0x0223BFD0
	cmp r0, #3
	bhi _0223BFF8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223BFE0: @ jump table
	.2byte _0223BFE8 - _0223BFE0 - 2 @ case 0
	.2byte _0223BFEC - _0223BFE0 - 2 @ case 1
	.2byte _0223BFF0 - _0223BFE0 - 2 @ case 2
	.2byte _0223BFF4 - _0223BFE0 - 2 @ case 3
_0223BFE8:
	movs r0, #0x81
	bx lr
_0223BFEC:
	movs r0, #0x83
	bx lr
_0223BFF0:
	movs r0, #0x8f
	bx lr
_0223BFF4:
	movs r0, #0x8f
	bx lr
_0223BFF8:
	movs r0, #0x81
	bx lr
	thumb_func_end ov104_0223BFD0

	thumb_func_start ov104_0223BFFC
ov104_0223BFFC: @ 0x0223BFFC
	movs r0, #0x32
	bx lr
	thumb_func_end ov104_0223BFFC

	thumb_func_start ov104_0223C000
ov104_0223C000: @ 0x0223C000
	cmp r0, #2
	beq _0223C008
	cmp r0, #3
	bne _0223C00C
_0223C008:
	movs r0, #1
	bx lr
_0223C00C:
	movs r0, #0
	bx lr
	thumb_func_end ov104_0223C000

	thumb_func_start ov104_0223C010
ov104_0223C010: @ 0x0223C010
	push {r4, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	adds r4, r1, #0
	bl FUN_02025E38
	movs r3, #0
	adds r1, r0, #0
	str r3, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #4
	bl FUN_02077EE4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223C010

	thumb_func_start ov104_0223C034
ov104_0223C034: @ 0x0223C034
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r5, r1, #0
	adds r1, r4, #0
	bl ov104_0223C010
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0207A048
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0223C034

	thumb_func_start ov104_0223C04C
ov104_0223C04C: @ 0x0223C04C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x74]
	bl FUN_0207A008
	ldrb r0, [r5, #0x10]
	movs r1, #1
	bl ov104_0223BDA4
	str r0, [sp]
	movs r0, #0xb
	bl FUN_02073C74
	adds r7, r0, #0
	ldr r0, [sp]
	movs r6, #0
	cmp r0, #0
	ble _0223C0B0
	movs r0, #0x33
	lsls r0, r0, #4
	adds r4, r5, r0
_0223C078:
	adds r0, r5, #0
	bl ov104_0223BFFC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov104_0222DF40
	ldr r1, [r5, #0x74]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov104_0223C034
	ldr r0, [r5, #0x74]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #6
	add r2, sp, #4
	bl FUN_02074B30
	ldr r0, [sp]
	adds r6, r6, #1
	adds r4, #0x38
	cmp r6, r0
	blt _0223C078
_0223C0B0:
	adds r0, r7, #0
	bl FUN_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223C04C

	thumb_func_start ov104_0223C0BC
ov104_0223C0BC: @ 0x0223C0BC
	push {r4, lr}
	adds r4, r1, #0
	bl ov104_0223C124
	cmp r4, #0x1c
	bne _0223C0CC
	movs r0, #1
	pop {r4, pc}
_0223C0CC:
	movs r0, #3
	pop {r4, pc}
	thumb_func_end ov104_0223C0BC

	thumb_func_start ov104_0223C0D0
ov104_0223C0D0: @ 0x0223C0D0
	push {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	bne _0223C0F2
	ldrb r1, [r0, #0x11]
	lsls r1, r1, #1
	adds r1, r0, r1
	adds r1, #0x78
	ldrh r2, [r1]
	ldr r1, _0223C120 @ =0x0000FEC9
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bhi _0223C0F2
	movs r0, #7
	pop {r3, pc}
_0223C0F2:
	bl ov104_0223C124
	adds r0, r0, #1
	movs r1, #7
	cmp r0, #4
	bhi _0223C11A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223C10A: @ jump table
	.2byte _0223C11A - _0223C10A - 2 @ case 0
	.2byte _0223C114 - _0223C10A - 2 @ case 1
	.2byte _0223C114 - _0223C10A - 2 @ case 2
	.2byte _0223C118 - _0223C10A - 2 @ case 3
	.2byte _0223C118 - _0223C10A - 2 @ case 4
_0223C114:
	movs r1, #0
	b _0223C11A
_0223C118:
	movs r1, #1
_0223C11A:
	adds r0, r1, #0
	pop {r3, pc}
	nop
_0223C120: .4byte 0x0000FEC9
	thumb_func_end ov104_0223C0D0

	thumb_func_start ov104_0223C124
ov104_0223C124: @ 0x0223C124
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x10]
	ldrh r4, [r5, #0x1a]
	bl ov104_0223C000
	cmp r0, #1
	bne _0223C140
	ldr r0, _0223C144 @ =0x00000A76
	ldrh r1, [r5, r0]
	ldrh r0, [r5, #0x1a]
	cmp r1, r0
	bls _0223C140
	adds r4, r1, #0
_0223C140:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C144: .4byte 0x00000A76
	thumb_func_end ov104_0223C124

	thumb_func_start ov104_0223C148
ov104_0223C148: @ 0x0223C148
	cmp r0, #9
	bhs _0223C150
	movs r0, #0
	bx lr
_0223C150:
	cmp r0, #0x12
	bhs _0223C158
	movs r0, #1
	bx lr
_0223C158:
	cmp r0, #0x1b
	bhs _0223C160
	movs r0, #2
	bx lr
_0223C160:
	movs r0, #3
	bx lr
	thumb_func_end ov104_0223C148

	thumb_func_start ov104_0223C164
ov104_0223C164: @ 0x0223C164
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x5e
	movs r1, #8
	bl FUN_02018144
	movs r1, #0
	movs r2, #8
	adds r4, r0, #0
	blx FUN_020C4CF4
	adds r0, r5, #0
	bl ov104_0223C188
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0223C164

	thumb_func_start ov104_0223C188
ov104_0223C188: @ 0x0223C188
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x5e
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	str r5, [r4, #4]
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0223C1B4 @ =ov104_0223C1BC
	ldr r2, _0223C1B8 @ =0x0001368C
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C1B4: .4byte ov104_0223C1BC
_0223C1B8: .4byte 0x0001368C
	thumb_func_end ov104_0223C188

	thumb_func_start ov104_0223C1BC
ov104_0223C1BC: @ 0x0223C1BC
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r1, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #2
	bhs _0223C1D0
	adds r0, r0, #1
	add sp, #0x14
	strh r0, [r4, #0xa]
	pop {r3, r4, pc}
_0223C1D0:
	movs r0, #0
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #8]
	movs r0, #1
	eors r0, r1
	strh r0, [r4, #8]
	ldrh r1, [r4, #8]
	add r0, sp, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov104_0223C208
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	movs r1, #3
	add r2, sp, #0xc
	movs r3, #0xe
	bl FUN_020198C0
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov104_0223C1BC

	thumb_func_start ov104_0223C208
ov104_0223C208: @ 0x0223C208
	push {r4, r5, r6, r7}
	cmp r1, #0
	bne _0223C212
	movs r6, #0xc
	b _0223C214
_0223C212:
	movs r6, #0xe
_0223C214:
	movs r1, #0
	movs r3, #0x60
	adds r4, r1, #0
_0223C21A:
	lsls r5, r4, #1
	movs r2, #0
	adds r5, r0, r5
_0223C220:
	adds r7, r6, r2
	adds r7, r3, r7
	strh r7, [r5]
	adds r2, r2, #1
	adds r5, r5, #2
	cmp r2, #2
	blo _0223C220
	adds r1, r1, #1
	adds r3, #0x10
	adds r4, r4, #2
	cmp r1, #2
	blo _0223C21A
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov104_0223C208

	thumb_func_start ov104_0223C23C
ov104_0223C23C: @ 0x0223C23C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov104_0223C250
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223C23C

	thumb_func_start ov104_0223C250
ov104_0223C250: @ 0x0223C250
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223C250

	thumb_func_start ov104_0223C264
ov104_0223C264: @ 0x0223C264
	cmp r0, #6
	bhi _0223C298
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223C274: @ jump table
	.2byte _0223C298 - _0223C274 - 2 @ case 0
	.2byte _0223C296 - _0223C274 - 2 @ case 1
	.2byte _0223C282 - _0223C274 - 2 @ case 2
	.2byte _0223C286 - _0223C274 - 2 @ case 3
	.2byte _0223C28A - _0223C274 - 2 @ case 4
	.2byte _0223C28E - _0223C274 - 2 @ case 5
	.2byte _0223C292 - _0223C274 - 2 @ case 6
_0223C282:
	movs r0, #0x73
	bx lr
_0223C286:
	movs r0, #0x77
	bx lr
_0223C28A:
	movs r0, #0x87
	bx lr
_0223C28E:
	movs r0, #0x7b
	bx lr
_0223C292:
	movs r0, #0x8f
	bx lr
_0223C296:
	movs r0, #0x71
_0223C298:
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223C264

	thumb_func_start ov104_0223C29C
ov104_0223C29C: @ 0x0223C29C
	cmp r0, #6
	bhi _0223C2D0
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223C2AC: @ jump table
	.2byte _0223C2D0 - _0223C2AC - 2 @ case 0
	.2byte _0223C2CE - _0223C2AC - 2 @ case 1
	.2byte _0223C2BA - _0223C2AC - 2 @ case 2
	.2byte _0223C2BE - _0223C2AC - 2 @ case 3
	.2byte _0223C2C2 - _0223C2AC - 2 @ case 4
	.2byte _0223C2C6 - _0223C2AC - 2 @ case 5
	.2byte _0223C2CA - _0223C2AC - 2 @ case 6
_0223C2BA:
	movs r0, #0x66
	bx lr
_0223C2BE:
	movs r0, #0x68
	bx lr
_0223C2C2:
	movs r0, #0x6c
	bx lr
_0223C2C6:
	movs r0, #0x6a
	bx lr
_0223C2CA:
	movs r0, #0x6e
	bx lr
_0223C2CE:
	movs r0, #0x64
_0223C2D0:
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223C29C

	thumb_func_start ov104_0223C2D4
ov104_0223C2D4: @ 0x0223C2D4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl FUN_0209B970
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_02025E38
	adds r7, r0, #0
	movs r0, #0
	adds r4, #0x24
	adds r1, r0, #0
	ldrb r5, [r4]
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r1, #1
	lsls r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _0223C49C @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0223C4A0 @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _0223C4A4 @ =0xFFFF1FFF
	ands r3, r2
	str r3, [r1]
	ldr r3, [r0]
	adds r1, #0x50
	ands r2, r3
	str r2, [r0]
	movs r2, #0
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r2, #9
	movs r0, #3
	movs r1, #0x5e
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r0, #0x5e
	movs r1, #0xc4
	bl FUN_02018144
	movs r1, #0
	movs r2, #0xc4
	adds r4, r0, #0
	blx FUN_020C4CF4
	adds r0, r4, #0
	str r6, [r4, #8]
	adds r0, #0xc1
	ldr r1, _0223C4A8 @ =0x0000FFFF
	strb r5, [r0]
	movs r2, #0
	adds r3, r4, #0
_0223C356:
	adds r0, r3, #0
	adds r0, #0x70
	adds r2, r2, #1
	adds r3, r3, #2
	strh r1, [r0]
	cmp r2, #8
	blt _0223C356
	movs r0, #0x5e
	bl ov104_0223CF4C
	str r0, [r4, #0xc]
	movs r0, #0x5e
	bl FUN_02002F38
	str r0, [r4, #4]
	movs r1, #1
	bl FUN_02003858
	movs r2, #2
	ldr r0, [r4, #4]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x5e
	bl FUN_02002F70
	movs r1, #1
	ldr r0, [r4, #4]
	lsls r2, r1, #9
	movs r3, #0x5e
	bl FUN_02002F70
	movs r2, #7
	ldr r0, [r4, #4]
	movs r1, #2
	lsls r2, r2, #6
	movs r3, #0x5e
	bl FUN_02002F70
	movs r2, #2
	ldr r0, [r4, #4]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x5e
	bl FUN_02002F70
	movs r0, #0x5e
	bl FUN_02018340
	str r0, [r4]
	movs r0, #0x40
	movs r1, #0x5e
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	ldr r0, [r4]
	adds r1, r5, #0
	bl ov104_0223C948
	adds r0, r4, #0
	bl ov104_0223CB80
	adds r0, r4, #0
	bl ov104_0223CC10
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	adds r0, r4, #0
	bl ov104_0223CFF4
	movs r0, #0x5e
	bl ov104_0223D5D0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov104_0223CC74
	ldr r0, _0223C4AC @ =ov104_0223C720
	ldr r2, _0223C4B0 @ =0x0000EA60
	adds r1, r4, #0
	bl FUN_0200D9E8
	adds r1, r4, #0
	adds r1, #0x94
	str r0, [r1]
	ldr r0, _0223C4B4 @ =ov104_0223C72C
	ldr r2, _0223C4B8 @ =0x0000EE48
	adds r1, r4, #0
	bl FUN_0200D9E8
	adds r1, r4, #0
	adds r1, #0x98
	str r0, [r1]
	ldr r0, _0223C4BC @ =ov104_0223C738
	ldr r2, _0223C4C0 @ =0x00013880
	adds r1, r4, #0
	bl FUN_0200D9E8
	adds r1, r4, #0
	adds r1, #0x9c
	str r0, [r1]
	bl FUN_0201FFD0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r5, #0
	movs r1, #3
	bl ov104_0222EA90
	adds r1, r0, #0
	lsls r1, r1, #0x10
	movs r0, #4
	lsrs r1, r1, #0x10
	movs r2, #1
	bl FUN_02004550
	movs r0, #1
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002B20
	ldr r0, _0223C4C4 @ =ov104_0223C6EC
	adds r1, r4, #0
	bl FUN_02017798
	ldr r0, _0223C4C8 @ =ov104_0223C71C
	adds r1, r4, #0
	movs r2, #0xa
	bl FUN_0200DA04
	adds r1, r4, #0
	adds r1, #0xa0
	str r0, [r1]
	adds r2, r4, #0
	adds r2, #0xc1
	adds r1, r4, #0
	ldrb r2, [r2]
	adds r0, r4, #0
	adds r1, #0x90
	bl ov104_0222EB8C
	bl FUN_02039734
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C49C: .4byte 0xFFFFE0FF
_0223C4A0: .4byte 0x04001000
_0223C4A4: .4byte 0xFFFF1FFF
_0223C4A8: .4byte 0x0000FFFF
_0223C4AC: .4byte ov104_0223C720
_0223C4B0: .4byte 0x0000EA60
_0223C4B4: .4byte ov104_0223C72C
_0223C4B8: .4byte 0x0000EE48
_0223C4BC: .4byte ov104_0223C738
_0223C4C0: .4byte 0x00013880
_0223C4C4: .4byte ov104_0223C6EC
_0223C4C8: .4byte ov104_0223C71C
	thumb_func_end ov104_0223C2D4

	thumb_func_start ov104_0223C4CC
ov104_0223C4CC: @ 0x0223C4CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0209B970
	adds r2, r4, #0
	adds r2, #0xc1
	adds r1, r4, #0
	ldrb r2, [r2]
	adds r0, r4, #0
	adds r1, #0x90
	bl ov104_0222EBA4
	adds r0, r4, #0
	bl ov104_0223CEEC
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4]
	movs r1, #3
	bl FUN_02019044
	movs r0, #4
	movs r1, #0
	bl FUN_02019120
	ldr r0, [r4]
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	bl ov104_0223D058
	ldr r0, [r4, #0x10]
	bl ov104_0223D5F0
	bl FUN_0201DC3C
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02002FA0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02002FA0
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02002FA0
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_02002FA0
	ldr r0, [r4, #4]
	bl FUN_02002F54
	ldr r0, [r4]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_0200DA58
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_0200DA58
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_0200DA58
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r0, [r0]
	bl FUN_0200DA58
	ldr r0, [r4, #0xc]
	bl ov104_0223CFEC
	bl FUN_0201E530
	adds r0, r4, #0
	bl FUN_020181C4
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0223C614 @ =0xFFFF1FFF
	ands r1, r0
	str r1, [r2]
	ldr r2, _0223C618 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #0x5e
	bl FUN_0201807C
	movs r0, #0
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	bl FUN_02039794
	movs r1, #5
	movs r2, #2
	ldr r0, _0223C61C @ =0x00007FFF
	lsls r1, r1, #0x18
	lsls r2, r2, #8
	blx FUN_020C4AF0
	movs r2, #2
	ldr r0, _0223C61C @ =0x00007FFF
	ldr r1, _0223C620 @ =0x05000200
	lsls r2, r2, #8
	blx FUN_020C4AF0
	movs r2, #2
	ldr r0, _0223C61C @ =0x00007FFF
	ldr r1, _0223C624 @ =0x05000400
	lsls r2, r2, #8
	blx FUN_020C4AF0
	movs r2, #2
	ldr r0, _0223C61C @ =0x00007FFF
	ldr r1, _0223C628 @ =0x05000600
	lsls r2, r2, #8
	blx FUN_020C4AF0
	ldr r0, _0223C62C @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0223C630 @ =0x04001050
	strh r1, [r0]
	pop {r4, pc}
	nop
_0223C614: .4byte 0xFFFF1FFF
_0223C618: .4byte 0x04001000
_0223C61C: .4byte 0x00007FFF
_0223C620: .4byte 0x05000200
_0223C624: .4byte 0x05000400
_0223C628: .4byte 0x05000600
_0223C62C: .4byte 0x04000050
_0223C630: .4byte 0x04001050
	thumb_func_end ov104_0223C4CC

	thumb_func_start ov104_0223C634
ov104_0223C634: @ 0x0223C634
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r7, #6
_0223C63C:
	ldr r0, [r6, #8]
	adds r1, r5, #0
	bl FUN_0209B9D4
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0223C67A
	adds r1, r7, #0
	bl FUN_0222BF90
	strb r0, [r4, #0x12]
	ldr r0, [r4]
	movs r1, #5
	bl FUN_0222BF90
	strh r0, [r4, #0xa]
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0222BF90
	strh r0, [r4, #0xe]
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0222BF90
	strh r0, [r4, #0x10]
	ldr r0, [r4, #4]
	bl FUN_0222CFFC
	strb r0, [r4, #0x13]
_0223C67A:
	adds r5, r5, #1
	cmp r5, #0x20
	blt _0223C63C
	adds r0, r6, #0
	bl ov104_0223D3B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223C634

	thumb_func_start ov104_0223C688
ov104_0223C688: @ 0x0223C688
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl FUN_0209B9CC
	ldr r7, _0223C6E8 @ =0x0000FFFF
	adds r4, r0, #0
	movs r6, #0
_0223C69A:
	ldrh r1, [r4]
	cmp r1, r7
	beq _0223C6AA
	ldrb r2, [r4, #2]
	ldr r0, [r5, #0x20]
	movs r3, #0x5e
	bl FUN_0222CDE8
_0223C6AA:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #0x18
	blt _0223C69A
	ldr r7, _0223C6E8 @ =0x0000FFFF
	movs r4, #0
	add r6, sp, #0
_0223C6B8:
	ldr r0, [r5, #8]
	adds r1, r4, #0
	bl FUN_0209B9D4
	ldrh r1, [r0, #0xc]
	cmp r1, r7
	beq _0223C6D6
	adds r1, r6, #0
	bl ov104_0223D570
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov104_0223D180
_0223C6D6:
	adds r4, r4, #1
	cmp r4, #0x20
	blt _0223C6B8
	adds r0, r5, #0
	bl ov104_0223D498
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C6E8: .4byte 0x0000FFFF
	thumb_func_end ov104_0223C688

	thumb_func_start ov104_0223C6EC
ov104_0223C6EC: @ 0x0223C6EC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200C800
	ldr r0, [r4, #4]
	bl FUN_02003694
	ldr r0, [r4]
	bl FUN_0201C2B8
	ldr r3, _0223C714 @ =0x027E0000
	ldr r1, _0223C718 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0223C714: .4byte 0x027E0000
_0223C718: .4byte 0x00003FF8
	thumb_func_end ov104_0223C6EC

	thumb_func_start ov104_0223C71C
ov104_0223C71C: @ 0x0223C71C
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223C71C

	thumb_func_start ov104_0223C720
ov104_0223C720: @ 0x0223C720
	ldr r3, _0223C728 @ =FUN_0222BE84
	ldr r0, [r1, #0x14]
	bx r3
	nop
_0223C728: .4byte FUN_0222BE84
	thumb_func_end ov104_0223C720

	thumb_func_start ov104_0223C72C
ov104_0223C72C: @ 0x0223C72C
	ldr r3, _0223C734 @ =ov104_0223C8E8
	adds r0, r1, #0
	bx r3
	nop
_0223C734: .4byte ov104_0223C8E8
	thumb_func_end ov104_0223C72C

	thumb_func_start ov104_0223C738
ov104_0223C738: @ 0x0223C738
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r0, [r7, #8]
	movs r1, #0x1f
	bl FUN_0209B9D4
	ldr r1, [r0]
	cmp r1, #0
	beq _0223C752
	adds r0, r7, #0
	adds r0, #0x1c
	bl FUN_0222D160
_0223C752:
	adds r0, r7, #0
	bl ov104_0223C798
	ldr r0, [r7, #0x20]
	bl FUN_0222CEE4
	ldr r4, [r7, #0x6c]
	movs r6, #0
	adds r5, r7, #0
_0223C764:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _0223C774
	movs r1, #1
	tst r1, r4
	beq _0223C774
	bl FUN_0200D330
_0223C774:
	adds r6, r6, #1
	lsrs r4, r4, #1
	adds r5, r5, #4
	cmp r6, #8
	blt _0223C764
	ldr r0, [r7, #0x38]
	bl FUN_0200C7EC
	bl FUN_0200C808
	bl ov104_0223D6A8
	movs r0, #1
	movs r1, #0
	bl FUN_020241BC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223C738

	thumb_func_start ov104_0223C798
ov104_0223C798: @ 0x0223C798
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl FUN_0209B970
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r0, [r0]
	movs r1, #0xc
	bl ov104_0222EA90
	cmp r0, #0
	beq _0223C7B6
	cmp r0, #1
	beq _0223C7E4
_0223C7B6:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0223C7C4
	adds r1, r5, #0
	adds r1, #0x1c
	bl FUN_0222D228
_0223C7C4:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0223C7EA
	adds r4, #0x24
	ldrb r0, [r4]
	movs r1, #0xd
	bl ov104_0222EA90
	cmp r0, #1
	bne _0223C7EA
	ldr r0, [r5, #0x28]
	adds r5, #0x1c
	adds r1, r5, #0
	bl FUN_0222D228
	pop {r3, r4, r5, pc}
_0223C7E4:
	adds r0, r5, #0
	bl ov104_0223C7EC
_0223C7EA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223C798

	thumb_func_start ov104_0223C7EC
ov104_0223C7EC: @ 0x0223C7EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl FUN_0209B970
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0x1c
	bl FUN_0222D1B0
	movs r1, #0xaa
	ldrsh r1, [r5, r1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x1c
	bl FUN_0222D1B8
	movs r1, #0xa8
	ldrsh r1, [r5, r1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r4, #0
	ble _0223C836
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	str r0, [sp, #4]
	b _0223C846
_0223C836:
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	str r0, [sp, #4]
_0223C846:
	cmp r6, #0
	ble _0223C85E
	lsls r0, r6, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	str r0, [sp]
	b _0223C86E
_0223C85E:
	lsls r0, r6, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	str r0, [sp]
_0223C86E:
	ldr r0, [r5, #0x34]
	bl FUN_0200C738
	str r0, [sp, #8]
	ldr r0, [sp]
	blx FUN_020E1740
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	blx FUN_020E1740
	adds r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl FUN_0200962C
	ldr r0, [r5]
	movs r1, #3
	movs r2, #0
	adds r3, r6, #0
	bl FUN_0201C63C
	movs r1, #3
	ldr r0, [r5]
	adds r2, r1, #0
	adds r3, r4, #0
	bl FUN_0201C63C
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	movs r1, #9
	bl ov104_0222EA90
	ldr r1, _0223C8E4 @ =0x0000FFFF
	cmp r0, r1
	beq _0223C8DE
	adds r7, #0x24
	ldrb r0, [r7]
	movs r1, #0xd
	bl ov104_0222EA90
	cmp r0, #1
	bne _0223C8DE
	ldr r0, [r5]
	movs r1, #2
	movs r2, #0
	adds r3, r6, #0
	bl FUN_0201C63C
	ldr r0, [r5]
	movs r1, #2
	movs r2, #3
	adds r3, r4, #0
	bl FUN_0201C63C
_0223C8DE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C8E4: .4byte 0x0000FFFF
	thumb_func_end ov104_0223C7EC

	thumb_func_start ov104_0223C8E8
ov104_0223C8E8: @ 0x0223C8E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	add r1, sp, #0
	bl FUN_0222D810
	cmp r0, #1
	bne _0223C910
	add r4, sp, #0
_0223C8FC:
	ldr r0, [r5, #0x14]
	adds r1, r4, #0
	bl FUN_0222BE70
	ldr r0, [r5, #0x30]
	adds r1, r4, #0
	bl FUN_0222D810
	cmp r0, #1
	beq _0223C8FC
_0223C910:
	ldr r0, [r5, #0x2c]
	add r1, sp, #8
	bl FUN_0222D8D0
	cmp r0, #1
	bne _0223C944
	add r6, sp, #0
	add r4, sp, #8
_0223C920:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	adds r2, r4, #0
	adds r3, r6, #0
	bl FUN_0222CA88
	cmp r0, #1
	bne _0223C938
	ldr r0, [r5, #0x14]
	adds r1, r6, #0
	bl FUN_0222BE70
_0223C938:
	ldr r0, [r5, #0x2c]
	adds r1, r4, #0
	bl FUN_0222D8D0
	cmp r0, #1
	beq _0223C920
_0223C944:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov104_0223C8E8

	thumb_func_start ov104_0223C948
ov104_0223C948: @ 0x0223C948
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa8
	adds r7, r1, #0
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #0
	bl ov104_0222EA90
	adds r4, r0, #0
	bl FUN_0201FF00
	ldr r6, _0223CB68 @ =0x0224135C
	add r3, sp, #0x2c
	movs r2, #5
_0223C964:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223C964
	add r0, sp, #0x2c
	bl FUN_0201FE94
	movs r1, #6
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x12
	blx FUN_020C4B4C
	movs r1, #0x62
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x14
	lsls r2, r2, #0x10
	blx FUN_020C4B4C
	movs r1, #0x19
	movs r2, #1
	movs r0, #0
	lsls r1, r1, #0x16
	lsls r2, r2, #0x12
	blx FUN_020C4B4C
	movs r1, #0x66
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x14
	lsls r2, r2, #0x10
	blx FUN_020C4B4C
	ldr r6, _0223CB6C @ =0x022412E4
	add r3, sp, #0x1c
	adds r2, r3, #0
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	str r4, [sp, #0x20]
	bl FUN_02018368
	ldr r6, _0223CB70 @ =0x02241384
	add r3, sp, #0x54
	movs r2, #0xa
_0223C9C6:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223C9C6
	ldr r0, [r6]
	cmp r4, #0
	str r0, [r3]
	bne _0223C9E4
	movs r2, #0
	add r1, sp, #0x74
	strb r2, [r1, #0xd]
	add r0, sp, #0x94
	strb r2, [r0, #9]
	strb r2, [r1, #0x10]
	strb r2, [r0, #0xc]
_0223C9E4:
	adds r0, r7, #0
	movs r1, #4
	bl ov104_0222EA90
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	add r0, sp, #0x94
	strb r6, [r0, #8]
	adds r0, r7, #0
	movs r1, #9
	bl ov104_0222EA90
	ldr r1, _0223CB74 @ =0x0000FFFF
	cmp r0, r1
	beq _0223CA06
	add r0, sp, #0x74
	strb r6, [r0, #0xc]
_0223CA06:
	cmp r4, #0
	add r2, sp, #0x54
	bne _0223CA90
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #2
	add r2, sp, #0x70
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #3
	add r2, sp, #0x8c
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	adds r0, r5, #0
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	b _0223CB12
_0223CA90:
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r1, #2
	adds r0, r5, #0
	add r2, sp, #0x70
	adds r3, r1, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #3
	add r2, sp, #0x8c
	movs r3, #2
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	adds r0, r5, #0
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
_0223CB12:
	ldr r1, _0223CB78 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	strh r2, [r1]
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r4, _0223CB7C @ =0x02241320
	add r3, sp, #0
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	movs r1, #4
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #4
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #4
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	add sp, #0xa8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223CB68: .4byte 0x0224135C
_0223CB6C: .4byte 0x022412E4
_0223CB70: .4byte 0x02241384
_0223CB74: .4byte 0x0000FFFF
_0223CB78: .4byte 0x04000008
_0223CB7C: .4byte 0x02241320
	thumb_func_end ov104_0223C948

	thumb_func_start ov104_0223CB80
ov104_0223CB80: @ 0x0223CB80
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	movs r1, #0xe
	movs r2, #6
	movs r3, #0x5e
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	movs r1, #0xe
	movs r2, #7
	movs r3, #0x5e
	bl FUN_02003050
	ldr r0, [r4, #8]
	bl FUN_0209B970
	ldr r0, [r0, #4]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x5e
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _0223CC08 @ =0x000003E2
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DD0C
	ldr r0, [r4, #4]
	movs r1, #0
	movs r2, #0xb0
	movs r3, #0x20
	bl FUN_02003070
	movs r0, #0
	str r0, [sp]
	movs r0, #0x5e
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _0223CC0C @ =0x000003D9
	movs r1, #1
	movs r3, #0xc
	bl FUN_0200DAA4
	ldr r0, [r4, #4]
	movs r1, #0
	movs r2, #0xc0
	movs r3, #0x20
	bl FUN_02003070
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_0223CC08: .4byte 0x000003E2
_0223CC0C: .4byte 0x000003D9
	thumb_func_end ov104_0223CB80

	thumb_func_start ov104_0223CC10
ov104_0223CC10: @ 0x0223CC10
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x96
	movs r1, #0x5e
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x5e
	str r1, [sp, #0xc]
	ldr r2, [r5]
	movs r1, #0x7d
	movs r3, #4
	adds r4, r0, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0x7e
	movs r3, #4
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	movs r1, #0x96
	movs r2, #0xab
	movs r3, #0x5e
	bl FUN_02003050
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223CC10

	thumb_func_start ov104_0223CC74
ov104_0223CC74: @ 0x0223CC74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x20
	movs r1, #0x5e
	adds r6, r2, #0
	bl FUN_0222BE18
	str r0, [r5, #0x14]
	movs r0, #0x10
	adds r1, r0, #0
	movs r2, #0x5e
	bl FUN_0222BCE8
	str r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x1c
	bl FUN_0222D19C
	ldr r0, [r5, #0x38]
	bl FUN_0200D9B0
	adds r7, r0, #0
	adds r0, r6, #0
	bl ov104_0222E5F0
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x5e
	str r0, [sp, #8]
	ldr r1, [r5, #4]
	adds r0, r7, #0
	movs r2, #0x20
	bl FUN_0222CD2C
	ldr r3, _0223CEE0 @ =0x022412D8
	str r0, [r5, #0x20]
	add r2, sp, #0x20
	movs r1, #0xb
_0223CCCA:
	ldrb r0, [r3]
	adds r3, r3, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0223CCCA
	adds r0, r4, #0
	movs r1, #5
	bl ov104_0222EA90
	add r1, sp, #0x18
	strb r0, [r1, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl ov104_0222EA90
	add r1, sp, #0x18
	strb r0, [r1, #0x11]
	adds r0, r4, #0
	movs r1, #0xc
	bl ov104_0222EA90
	adds r6, r0, #0
	bne _0223CD0C
	ldr r0, [r5, #0x34]
	bl FUN_0200C738
	ldr r1, [r5]
	add r2, sp, #0x20
	movs r3, #0x5e
	bl FUN_0222D1C0
	str r0, [r5, #0x24]
_0223CD0C:
	adds r0, r4, #0
	movs r1, #9
	bl ov104_0222EA90
	ldr r1, _0223CEE4 @ =0x0000FFFF
	cmp r0, r1
	beq _0223CD4A
	adds r0, r4, #0
	movs r1, #9
	bl ov104_0222EA90
	add r1, sp, #0x18
	strb r0, [r1, #0x11]
	movs r0, #2
	strb r0, [r1, #9]
	movs r2, #1
	movs r0, #8
	strb r2, [r1, #0xb]
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	cmp r6, #0
	bne _0223CD4A
	ldr r0, [r5, #0x34]
	bl FUN_0200C738
	ldr r1, [r5]
	add r2, sp, #0x20
	movs r3, #0x5e
	bl FUN_0222D1C0
	str r0, [r5, #0x28]
_0223CD4A:
	movs r0, #0x80
	movs r1, #0x5e
	bl FUN_0222D848
	str r0, [r5, #0x2c]
	movs r0, #0x80
	movs r1, #0x5e
	bl FUN_0222D77C
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x18]
	ldr r1, _0223CEE8 @ =0x022413D8
	bl FUN_0222BD50
	adds r0, r4, #0
	movs r1, #0
	bl ov104_0222EA90
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #5
	bl ov104_0222EA90
	movs r1, #0x5e
	str r0, [sp, #0x10]
	bl FUN_02006C24
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #7
	bl ov104_0222EA90
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r3, #3
	bl FUN_020070E8
	cmp r7, #0
	bne _0223CDCA
	adds r0, r4, #0
	movs r1, #8
	bl ov104_0222EA90
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0x16
	str r1, [sp]
	lsls r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x10]
	movs r3, #0x5e
	bl FUN_02003050
	b _0223CE08
_0223CDCA:
	adds r0, r4, #0
	movs r1, #8
	bl ov104_0222EA90
	adds r1, r0, #0
	adds r0, r6, #0
	add r2, sp, #0x1c
	movs r3, #0x5e
	bl FUN_020071EC
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	blx FUN_020C2C54
	blx FUN_020C096C
	ldr r0, [sp, #0x1c]
	movs r1, #6
	movs r2, #2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	blx FUN_020C0A0C
	blx FUN_020C0A7C
	ldr r0, [sp, #0x14]
	bl FUN_020181C4
_0223CE08:
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	movs r2, #2
	adds r3, r1, #0
	bl FUN_020038B0
	adds r0, r4, #0
	movs r1, #6
	bl ov104_0222EA90
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r3, #3
	bl FUN_0200710C
	adds r0, r4, #0
	movs r1, #9
	bl ov104_0222EA90
	ldr r1, _0223CEE4 @ =0x0000FFFF
	cmp r0, r1
	beq _0223CECE
	adds r0, r4, #0
	movs r1, #0xa
	bl ov104_0222EA90
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r3, #2
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #9
	bl ov104_0222EA90
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r3, #2
	bl FUN_0200710C
	cmp r7, #0
	beq _0223CECE
	adds r0, r4, #0
	movs r1, #0xb
	bl ov104_0222EA90
	adds r1, r0, #0
	adds r0, r6, #0
	add r2, sp, #0x18
	movs r3, #0x5e
	bl FUN_020071EC
	ldr r1, [sp, #0x18]
	adds r4, r0, #0
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	blx FUN_020C2C54
	blx FUN_020C096C
	ldr r0, [sp, #0x18]
	movs r1, #1
	lsls r1, r1, #0xe
	ldr r0, [r0, #0xc]
	lsrs r2, r1, #1
	blx FUN_020C0A0C
	blx FUN_020C0A7C
	adds r0, r4, #0
	bl FUN_020181C4
_0223CECE:
	ldr r0, [r5]
	movs r1, #3
	bl FUN_0201C3C0
	adds r0, r6, #0
	bl FUN_02006CA8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223CEE0: .4byte 0x022412D8
_0223CEE4: .4byte 0x0000FFFF
_0223CEE8: .4byte 0x022413D8
	thumb_func_end ov104_0223CC74

	thumb_func_start ov104_0223CEEC
ov104_0223CEEC: @ 0x0223CEEC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #8]
	bl FUN_0209B9D0
	adds r5, r0, #0
	movs r4, #0
_0223CEFA:
	ldr r0, [r5]
	cmp r0, #0
	beq _0223CF0E
	bl FUN_0222BF08
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0223CF0E
	bl FUN_02022974
_0223CF0E:
	adds r4, r4, #1
	adds r5, #0x3c
	cmp r4, #0x20
	blt _0223CEFA
	ldr r0, [r6, #0x14]
	bl FUN_0222BE58
	ldr r0, [r6, #0x18]
	bl FUN_0222BD30
	ldr r0, [r6, #0x20]
	bl FUN_0222CD9C
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _0223CF32
	bl FUN_0222D214
_0223CF32:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0223CF3C
	bl FUN_0222D214
_0223CF3C:
	ldr r0, [r6, #0x2c]
	bl FUN_0222D880
	ldr r0, [r6, #0x30]
	bl FUN_0222D7B4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_0223CEEC

	thumb_func_start ov104_0223CF4C
ov104_0223CF4C: @ 0x0223CF4C
	push {r3, lr}
	sub sp, #8
	movs r2, #1
	ldr r1, _0223CF64 @ =ov104_0223CF68
	str r2, [sp]
	str r1, [sp, #4]
	movs r1, #0
	adds r3, r1, #0
	bl FUN_02024220
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_0223CF64: .4byte ov104_0223CF68
	thumb_func_end ov104_0223CF4C

	thumb_func_start ov104_0223CF68
ov104_0223CF68: @ 0x0223CF68
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _0223CFD4 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0223CFD8 @ =0xFFFFCFFD
	ands r2, r1
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r3, [r0]
	adds r1, r1, #2
	ands r3, r2
	movs r2, #0x10
	orrs r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0223CFDC @ =0x0000CFFB
	ands r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	subs r2, #0x1c
	ands r3, r1
	movs r1, #8
	orrs r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	ands r1, r2
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r0, #0
	ldr r2, _0223CFE0 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _0223CFE4 @ =0xBFFF0000
	ldr r0, _0223CFE8 @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0223CFD4: .4byte 0x04000008
_0223CFD8: .4byte 0xFFFFCFFD
_0223CFDC: .4byte 0x0000CFFB
_0223CFE0: .4byte 0x00007FFF
_0223CFE4: .4byte 0xBFFF0000
_0223CFE8: .4byte 0x04000580
	thumb_func_end ov104_0223CF68

	thumb_func_start ov104_0223CFEC
ov104_0223CFEC: @ 0x0223CFEC
	ldr r3, _0223CFF0 @ =FUN_020242C4
	bx r3
	.align 2, 0
_0223CFF0: .4byte FUN_020242C4
	thumb_func_end ov104_0223CFEC

	thumb_func_start ov104_0223CFF4
ov104_0223CFF4: @ 0x0223CFF4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5e
	bl FUN_0200C6E4
	ldr r1, _0223D048 @ =0x0224133C
	ldr r2, _0223D04C @ =0x022412F4
	movs r3, #0x20
	str r0, [r4, #0x34]
	bl FUN_0200C73C
	ldr r1, _0223D050 @ =0x00200010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r0, [r4, #0x34]
	bl FUN_0200C704
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	movs r2, #0x80
	bl FUN_0200C7C0
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	ldr r2, _0223D054 @ =0x02241308
	bl FUN_0200CB30
	ldr r0, [r4, #0x34]
	bl FUN_0200C738
	movs r2, #2
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	pop {r4, pc}
	nop
_0223D048: .4byte 0x0224133C
_0223D04C: .4byte 0x022412F4
_0223D050: .4byte 0x00200010
_0223D054: .4byte 0x02241308
	thumb_func_end ov104_0223CFF4

	thumb_func_start ov104_0223D058
ov104_0223D058: @ 0x0223D058
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
_0223D060:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0223D06A
	bl ov104_0223D858
_0223D06A:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #8
	blt _0223D060
	ldr r7, _0223D0E4 @ =0x0000FFFF
	movs r6, #0
	adds r4, r5, #0
_0223D078:
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r1, [r0]
	cmp r1, r7
	beq _0223D088
	ldr r0, [r5, #0x38]
	bl ov104_0223D7EC
_0223D088:
	adds r6, r6, #1
	adds r4, r4, #2
	cmp r6, #8
	blt _0223D078
	ldr r7, _0223D0E8 @ =0x0000C350
	movs r4, #0
	adds r6, r5, #0
_0223D096:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0223D0CA
	bl FUN_0200D0F4
	ldr r1, _0223D0E8 @ =0x0000C350
	ldr r0, [r5, #0x38]
	adds r1, r4, r1
	bl FUN_0200D070
	ldr r1, _0223D0E8 @ =0x0000C350
	ldr r0, [r5, #0x38]
	adds r1, r4, r1
	bl FUN_0200D080
	ldr r1, _0223D0E8 @ =0x0000C350
	ldr r0, [r5, #0x38]
	adds r1, r4, r1
	bl FUN_0200D090
	ldr r0, [r5, #0x38]
	adds r1, r4, r7
	bl FUN_0200D0A0
_0223D0CA:
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, #4
	blt _0223D096
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl FUN_0200D0B0
	ldr r0, [r5, #0x34]
	bl FUN_0200C8D4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D0E4: .4byte 0x0000FFFF
_0223D0E8: .4byte 0x0000C350
	thumb_func_end ov104_0223D058

	thumb_func_start ov104_0223D0EC
ov104_0223D0EC: @ 0x0223D0EC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #8]
	adds r5, r1, #0
	bl FUN_0209B9CC
	adds r7, r0, #0
	ldrh r3, [r5]
	movs r1, #0
	adds r2, r7, #0
_0223D100:
	ldrh r0, [r2]
	cmp r3, r0
	beq _0223D142
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #0x18
	blt _0223D100
	ldr r0, _0223D144 @ =0x0000FFFF
	movs r4, #0
	adds r2, r7, #0
_0223D114:
	ldrh r1, [r2]
	cmp r1, r0
	beq _0223D122
	adds r4, r4, #1
	adds r2, r2, #4
	cmp r4, #0x18
	blt _0223D114
_0223D122:
	cmp r4, #0x18
	bne _0223D12A
	bl FUN_02022974
_0223D12A:
	ldrh r0, [r5]
	lsls r2, r4, #2
	adds r1, r7, r2
	strh r0, [r7, r2]
	ldrh r0, [r5, #2]
	movs r3, #0x5e
	strh r0, [r1, #2]
	ldrh r1, [r5]
	ldrb r2, [r5, #2]
	ldr r0, [r6, #0x20]
	bl FUN_0222CDE8
_0223D142:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D144: .4byte 0x0000FFFF
	thumb_func_end ov104_0223D0EC

	thumb_func_start ov104_0223D148
ov104_0223D148: @ 0x0223D148
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #8]
	adds r5, r1, #0
	bl FUN_0209B9CC
	adds r7, r0, #0
	movs r4, #0
	adds r1, r7, #0
_0223D15A:
	ldrh r0, [r1]
	cmp r5, r0
	bne _0223D170
	ldr r0, [r6, #0x20]
	adds r1, r5, #0
	bl FUN_0222CE0C
	ldr r1, _0223D17C @ =0x0000FFFF
	lsls r0, r4, #2
	strh r1, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0223D170:
	adds r4, r4, #1
	adds r1, r1, #4
	cmp r4, #0x18
	blt _0223D15A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D17C: .4byte 0x0000FFFF
	thumb_func_end ov104_0223D148

	thumb_func_start ov104_0223D180
ov104_0223D180: @ 0x0223D180
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r0, [r6, #8]
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_0209B9D0
	movs r1, #0
	mvns r1, r1
	cmp r4, r1
	bne _0223D1B0
	movs r4, #0
_0223D19A:
	ldr r1, [r0]
	cmp r1, #0
	beq _0223D1A8
	adds r4, r4, #1
	adds r0, #0x3c
	cmp r4, #0x20
	blt _0223D19A
_0223D1A8:
	cmp r4, #0x20
	bne _0223D1B0
	bl FUN_02022974
_0223D1B0:
	movs r0, #6
	ldrsh r0, [r5, r0]
	add r1, sp, #8
	strh r0, [r1]
	movs r0, #8
	ldrsh r0, [r5, r0]
	strh r0, [r1, #2]
	ldrh r0, [r5, #4]
	strh r0, [r1, #4]
	ldrh r0, [r5, #2]
	strh r0, [r1, #6]
	ldrb r0, [r5, #0xa]
	strh r0, [r1, #8]
	ldrh r0, [r5]
	strh r0, [r1, #0xa]
	ldr r0, [r6, #0x14]
	add r1, sp, #8
	bl FUN_0222BEC0
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	ldr r1, [sp, #4]
	movs r2, #0
	movs r3, #0x5e
	bl FUN_0222CE44
	ldrb r1, [r5, #0xb]
	adds r7, r0, #0
	bl FUN_0222D008
	str r5, [sp]
	ldr r0, [r6, #8]
	ldr r2, [sp, #4]
	adds r1, r4, #0
	adds r3, r7, #0
	bl ov104_0223D584
	ldr r0, [sp, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223D180

	thumb_func_start ov104_0223D200
ov104_0223D200: @ 0x0223D200
	push {r3, r4, r5, lr}
	ldr r0, [r0, #8]
	adds r5, r1, #0
	bl FUN_0209B9D0
	adds r4, r0, #0
	movs r1, #0
	adds r2, r4, #0
_0223D210:
	ldr r0, [r2]
	cmp r0, r5
	bne _0223D248
	movs r0, #0x3c
	adds r5, r1, #0
	muls r5, r0, r5
	ldr r0, [r4, r5]
	bl FUN_0222BF08
	adds r0, r4, r5
	ldr r0, [r0, #4]
	bl FUN_0222CECC
	adds r0, r4, r5
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0223D236
	bl FUN_02022974
_0223D236:
	adds r0, r4, r5
	movs r1, #0
	movs r2, #0x3c
	blx FUN_020C4CF4
	ldr r1, _0223D254 @ =0x0000FFFF
	adds r0, r4, r5
	strh r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
_0223D248:
	adds r1, r1, #1
	adds r2, #0x3c
	cmp r1, #0x20
	blt _0223D210
	pop {r3, r4, r5, pc}
	nop
_0223D254: .4byte 0x0000FFFF
	thumb_func_end ov104_0223D200

	thumb_func_start ov104_0223D258
ov104_0223D258: @ 0x0223D258
	push {r4, r5, r6, lr}
	ldr r0, [r0, #8]
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0209B9D0
	movs r1, #0
	adds r3, r0, #0
_0223D26A:
	ldrh r2, [r3, #0xc]
	cmp r5, r2
	bne _0223D28C
	cmp r4, #0
	beq _0223D27C
	movs r2, #0x3c
	muls r2, r1, r2
	ldr r2, [r0, r2]
	str r2, [r4]
_0223D27C:
	cmp r6, #0
	beq _0223D298
	movs r2, #0x3c
	muls r2, r1, r2
	adds r0, r0, r2
	ldr r0, [r0, #4]
	str r0, [r6]
	pop {r4, r5, r6, pc}
_0223D28C:
	adds r1, r1, #1
	adds r3, #0x3c
	cmp r1, #0x20
	blt _0223D26A
	bl FUN_02022974
_0223D298:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_0223D258

	thumb_func_start ov104_0223D29C
ov104_0223D29C: @ 0x0223D29C
	push {r3, r4, r5, lr}
	ldr r3, _0223D2C8 @ =0x0000FFFF
	movs r4, #0
	adds r5, r0, #0
_0223D2A4:
	adds r2, r5, #0
	adds r2, #0x70
	ldrh r2, [r2]
	cmp r2, r3
	bne _0223D2B8
	lsls r2, r4, #1
	adds r0, r0, r2
	adds r0, #0x70
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_0223D2B8:
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #8
	blt _0223D2A4
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	nop
_0223D2C8: .4byte 0x0000FFFF
	thumb_func_end ov104_0223D29C

	thumb_func_start ov104_0223D2CC
ov104_0223D2CC: @ 0x0223D2CC
	push {r3, r4}
	movs r3, #0
	adds r4, r0, #0
_0223D2D2:
	adds r2, r4, #0
	adds r2, #0x70
	ldrh r2, [r2]
	cmp r1, r2
	bne _0223D2EA
	lsls r1, r3, #1
	adds r0, r0, r1
	ldr r2, _0223D2F8 @ =0x0000FFFF
	adds r0, #0x70
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_0223D2EA:
	adds r3, r3, #1
	adds r4, r4, #2
	cmp r3, #8
	blt _0223D2D2
	pop {r3, r4}
	bx lr
	nop
_0223D2F8: .4byte 0x0000FFFF
	thumb_func_end ov104_0223D2CC

	thumb_func_start ov104_0223D2FC
ov104_0223D2FC: @ 0x0223D2FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #8
	blo _0223D30E
	bl FUN_02022974
_0223D30E:
	adds r7, r5, #0
	lsls r0, r4, #2
	adds r7, #0x3c
	str r0, [sp]
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _0223D320
	bl FUN_02022974
_0223D320:
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	adds r2, r6, #0
	bl ov104_0223D828
	ldr r1, [sp]
	str r0, [sp, #4]
	str r0, [r7, r1]
	lsls r0, r4, #1
	adds r0, r5, r0
	adds r0, #0x5c
	strh r6, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov104_0223D378
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223D2FC

	thumb_func_start ov104_0223D348
ov104_0223D348: @ 0x0223D348
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #8
	blo _0223D356
	bl FUN_02022974
_0223D356:
	lsls r4, r4, #2
	adds r5, #0x3c
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0223D364
	bl FUN_02022974
_0223D364:
	ldr r0, [r5, r4]
	bl ov104_0223D858
	movs r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D348

	thumb_func_start ov104_0223D370
ov104_0223D370: @ 0x0223D370
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end ov104_0223D370

	thumb_func_start ov104_0223D378
ov104_0223D378: @ 0x0223D378
	push {r3, r4}
	cmp r2, #1
	bne _0223D38E
	movs r2, #1
	ldr r3, [r0, #0x6c]
	lsls r2, r1
	adds r1, r3, #0
	orrs r1, r2
	str r1, [r0, #0x6c]
	pop {r3, r4}
	bx lr
_0223D38E:
	movs r2, #1
	adds r3, r2, #0
	lsls r3, r1
	subs r1, r2, #2
	ldr r4, [r0, #0x6c]
	eors r1, r3
	ands r1, r4
	str r1, [r0, #0x6c]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223D378

	thumb_func_start ov104_0223D3A4
ov104_0223D3A4: @ 0x0223D3A4
	ldr r0, [r0, #0x6c]
	adds r2, r0, #0
	lsrs r2, r1
	movs r0, #1
	ands r0, r2
	bx lr
	thumb_func_end ov104_0223D3A4

	thumb_func_start ov104_0223D3B0
ov104_0223D3B0: @ 0x0223D3B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #8]
	bl FUN_0209B9E0
	ldr r4, [sp]
	adds r6, r0, #0
	ldr r0, _0223D484 @ =0x0000FFFF
	adds r4, #0x3c
	movs r3, #0
_0223D3C6:
	lsls r2, r3, #1
	adds r1, r4, r2
	ldrh r1, [r1, #0x34]
	cmp r1, r0
	beq _0223D3D4
	strh r1, [r6, r2]
	adds r3, r3, #1
_0223D3D4:
	adds r3, r3, #1
	cmp r3, #8
	blt _0223D3C6
	adds r0, r6, #0
	str r0, [sp, #8]
	adds r0, #0x12
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r5, r6, #0
	str r0, [sp, #4]
	adds r0, #0x10
	movs r7, #0
	adds r5, #0x16
	str r4, [sp, #0xc]
	str r0, [sp, #4]
_0223D3F2:
	ldr r0, [r4]
	cmp r0, #0
	beq _0223D460
	bl FUN_0200D37C
	strb r0, [r6, #0x15]
	ldr r0, [r4]
	bl FUN_0200D3E0
	ldrh r2, [r5]
	ldr r1, _0223D488 @ =0xFFFFE000
	ands r1, r2
	ldr r2, _0223D48C @ =0x00001FFF
	ands r0, r2
	orrs r0, r1
	strh r0, [r5]
	lsls r1, r7, #0x10
	ldr r0, [sp]
	lsrs r1, r1, #0x10
	bl ov104_0223D3A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x1f
	ldrh r2, [r5]
	ldr r1, _0223D490 @ =0xFFFFDFFF
	lsrs r0, r0, #0x12
	ands r1, r2
	orrs r0, r1
	strh r0, [r5]
	ldr r0, [r4]
	bl FUN_0200D408
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x1f
	ldrh r2, [r5]
	ldr r1, _0223D494 @ =0xFFFFBFFF
	lsrs r0, r0, #0x11
	ands r1, r2
	orrs r0, r1
	strh r0, [r5]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldrh r0, [r0, #0x20]
	ldr r2, [sp, #8]
	strb r0, [r6, #0x14]
	ldr r0, [r4]
	bl FUN_0200D550
	movs r0, #2
	ldrh r1, [r5]
	lsls r0, r0, #0xe
	orrs r0, r1
	strh r0, [r5]
_0223D460:
	ldr r0, [sp, #0xc]
	adds r7, r7, #1
	adds r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r4, r4, #4
	adds r0, #8
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r6, #8
	adds r0, #8
	adds r5, #8
	str r0, [sp, #4]
	cmp r7, #8
	blt _0223D3F2
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D484: .4byte 0x0000FFFF
_0223D488: .4byte 0xFFFFE000
_0223D48C: .4byte 0x00001FFF
_0223D490: .4byte 0xFFFFDFFF
_0223D494: .4byte 0xFFFFBFFF
	thumb_func_end ov104_0223D3B0

	thumb_func_start ov104_0223D498
ov104_0223D498: @ 0x0223D498
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #8]
	bl FUN_0209B9E0
	adds r5, r0, #0
	movs r0, #0x97
	movs r1, #0x5e
	bl FUN_02006C24
	str r0, [sp, #4]
	movs r6, #0
	adds r4, r5, #0
_0223D4B4:
	ldrh r1, [r4]
	ldr r0, _0223D550 @ =0x0000FFFF
	cmp r1, r0
	beq _0223D4D2
	str r1, [sp]
	ldr r0, [r7, #0x34]
	ldr r1, [r7, #0x38]
	ldr r2, [sp, #4]
	ldr r3, [r7, #4]
	bl ov104_0223D768
	ldrh r1, [r4]
	adds r0, r7, #0
	bl ov104_0223D29C
_0223D4D2:
	adds r6, r6, #1
	adds r4, r4, #2
	cmp r6, #8
	blt _0223D4B4
	adds r4, r5, #0
	movs r6, #0
	adds r4, #0x16
_0223D4E0:
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0223D534
	ldrb r2, [r5, #0x14]
	lsls r1, r6, #0x10
	adds r0, r7, #0
	lsrs r1, r1, #0x10
	bl ov104_0223D2FC
	movs r1, #0x10
	movs r2, #0x12
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	str r0, [sp, #8]
	bl FUN_0200D4C4
	ldrh r1, [r4]
	ldr r0, [sp, #8]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1f
	bl FUN_0200D3F4
	ldrh r2, [r4]
	lsls r1, r6, #0x10
	adds r0, r7, #0
	lsls r2, r2, #0x12
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x1f
	bl ov104_0223D378
	ldrb r1, [r5, #0x15]
	ldr r0, [sp, #8]
	bl FUN_0200D364
	ldrh r1, [r4]
	ldr r0, [sp, #8]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl FUN_0200D3CC
_0223D534:
	adds r6, r6, #1
	adds r4, #8
	adds r5, #8
	cmp r6, #8
	blt _0223D4E0
	ldr r0, [sp, #4]
	bl FUN_02006CA8
	ldr r0, [r7, #8]
	bl FUN_0209B9EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223D550: .4byte 0x0000FFFF
	thumb_func_end ov104_0223D498

	thumb_func_start ov104_0223D554
ov104_0223D554: @ 0x0223D554
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x1c
	adds r6, r1, #0
	adds r4, r2, #0
	bl FUN_0222D1B0
	adds r5, #0x1c
	strh r0, [r4]
	adds r0, r5, #0
	bl FUN_0222D1B8
	strh r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0223D554

	thumb_func_start ov104_0223D570
ov104_0223D570: @ 0x0223D570
	adds r0, #8
	movs r3, #0xf
_0223D574:
	ldrh r2, [r0]
	adds r0, r0, #2
	strh r2, [r1]
	adds r1, r1, #2
	subs r3, r3, #1
	bne _0223D574
	bx lr
	.align 2, 0
	thumb_func_end ov104_0223D570

	thumb_func_start ov104_0223D584
ov104_0223D584: @ 0x0223D584
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	adds r4, r3, #0
	bl FUN_0209B9D4
	str r5, [r0]
	str r4, [r0, #4]
	ldr r3, [sp, #0x10]
	adds r0, #8
	movs r2, #0xf
_0223D598:
	ldrh r1, [r3]
	adds r3, r3, #2
	strh r1, [r0]
	adds r0, r0, #2
	subs r2, r2, #1
	bne _0223D598
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0223D584

	thumb_func_start ov104_0223D5A8
ov104_0223D5A8: @ 0x0223D5A8
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0209B9D0
	movs r2, #0
_0223D5B2:
	ldr r1, [r0]
	cmp r1, #0
	beq _0223D5BE
	ldrh r1, [r0, #0xc]
	cmp r1, r4
	beq _0223D5CC
_0223D5BE:
	adds r2, r2, #1
	adds r0, #0x3c
	cmp r2, #0x20
	blt _0223D5B2
	bl FUN_02022974
	movs r0, #0
_0223D5CC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223D5A8

	thumb_func_start ov104_0223D5D0
ov104_0223D5D0: @ 0x0223D5D0
	push {r3, r4, r5, lr}
	movs r1, #0x24
	adds r5, r0, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x24
	blx FUN_020C4CF4
	strh r5, [r4, #0x20]
	bl FUN_02014000
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0223D5D0

	thumb_func_start ov104_0223D5F0
ov104_0223D5F0: @ 0x0223D5F0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_0223D5F8:
	ldr r0, [r5]
	cmp r0, #0
	beq _0223D602
	bl ov104_0223D708
_0223D602:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _0223D5F8
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_0223D5F0

	thumb_func_start ov104_0223D614
ov104_0223D614: @ 0x0223D614
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r6, r1, #2
	ldr r0, [r5, r6]
	adds r7, r2, #0
	str r3, [sp, #8]
	cmp r0, #0
	beq _0223D62A
	bl FUN_02022974
_0223D62A:
	ldrh r0, [r5, #0x20]
	movs r1, #0x12
	lsls r1, r1, #0xa
	bl FUN_02018144
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	ldrh r0, [r5, #0x20]
	movs r3, #0x12
	ldr r1, _0223D684 @ =ov104_0223D744
	str r0, [sp, #4]
	ldr r0, _0223D688 @ =ov104_0223D720
	lsls r3, r3, #0xa
	bl FUN_02014014
	adds r4, r0, #0
	bl FUN_02014784
	adds r2, r0, #0
	movs r0, #1
	movs r1, #0xe1
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl FUN_02014788
	ldrh r2, [r5, #0x20]
	movs r0, #0x9d
	adds r1, r7, #0
	bl FUN_020144C4
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xa
	movs r3, #1
	bl FUN_020144CC
	str r4, [r5, r6]
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223D684: .4byte ov104_0223D744
_0223D688: .4byte ov104_0223D720
	thumb_func_end ov104_0223D614

	thumb_func_start ov104_0223D68C
ov104_0223D68C: @ 0x0223D68C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0223D69C
	bl FUN_02022974
_0223D69C:
	ldr r0, [r5, r4]
	bl ov104_0223D708
	movs r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D68C

	thumb_func_start ov104_0223D6A8
ov104_0223D6A8: @ 0x0223D6A8
	push {r3, lr}
	bl FUN_020241B4
	bl FUN_02014680
	cmp r0, #0
	bne _0223D6BA
	movs r0, #0
	pop {r3, pc}
_0223D6BA:
	bl FUN_0201469C
	cmp r0, #0
	ble _0223D6C6
	bl FUN_020241B4
_0223D6C6:
	bl FUN_020146C0
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223D6A8

	thumb_func_start ov104_0223D6D0
ov104_0223D6D0: @ 0x0223D6D0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0223D6E0
	bl FUN_02022974
_0223D6E0:
	ldr r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D6D0

	thumb_func_start ov104_0223D6E4
ov104_0223D6E4: @ 0x0223D6E4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0223D6EA:
	ldr r0, [r5]
	cmp r0, #0
	beq _0223D6FC
	bl FUN_02014710
	cmp r0, #0
	ble _0223D6FC
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223D6FC:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _0223D6EA
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D6E4

	thumb_func_start ov104_0223D708
ov104_0223D708: @ 0x0223D708
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_02014730
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0201411C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D708

	thumb_func_start ov104_0223D720
ov104_0223D720: @ 0x0223D720
	push {r4, lr}
	ldr r3, _0223D740 @ =0x02100DEC
	movs r2, #0
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bne _0223D732
	bl FUN_02022974
_0223D732:
	adds r0, r4, #0
	bl FUN_020145B4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_0223D740: .4byte 0x02100DEC
	thumb_func_end ov104_0223D720

	thumb_func_start ov104_0223D744
ov104_0223D744: @ 0x0223D744
	push {r4, lr}
	ldr r3, _0223D764 @ =0x02100DF4
	movs r2, #1
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bne _0223D756
	bl FUN_02022974
_0223D756:
	adds r0, r4, #0
	bl FUN_020145F4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_0223D764: .4byte 0x02100DF4
	thumb_func_end ov104_0223D744

	thumb_func_start ov104_0223D768
ov104_0223D768: @ 0x0223D768
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	adds r7, r1, #0
	adds r5, r2, #0
	str r3, [sp, #0x18]
	cmp r0, #4
	blo _0223D780
	bl FUN_02022974
_0223D780:
	add r1, sp, #0x20
	ldrh r2, [r1, #0x10]
	movs r1, #0x34
	ldr r0, _0223D7E8 @ =0x022417D8
	muls r1, r2, r1
	adds r4, r0, r1
	ldr r3, [r4, #0x14]
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl FUN_0200CC3C
	ldr r1, [r4, #0x18]
	movs r0, #0
	str r5, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	movs r1, #2
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_0200CDC4
	ldr r3, [r4, #0x1c]
	movs r0, #1
	str r0, [sp]
	str r3, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl FUN_0200CE24
	ldr r3, [r4, #0x20]
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	str r3, [sp, #4]
	bl FUN_0200CE54
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223D7E8: .4byte 0x022417D8
	thumb_func_end ov104_0223D768

	thumb_func_start ov104_0223D7EC
ov104_0223D7EC: @ 0x0223D7EC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #4
	blo _0223D7FA
	bl FUN_02022974
_0223D7FA:
	movs r0, #0x34
	ldr r1, _0223D824 @ =0x022417D8
	muls r0, r4, r0
	adds r4, r1, r0
	ldr r1, [r4, #0x14]
	adds r0, r5, #0
	bl FUN_0200D070
	ldr r1, [r4, #0x18]
	adds r0, r5, #0
	bl FUN_0200D080
	ldr r1, [r4, #0x1c]
	adds r0, r5, #0
	bl FUN_0200D090
	ldr r1, [r4, #0x20]
	adds r0, r5, #0
	bl FUN_0200D0A0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223D824: .4byte 0x022417D8
	thumb_func_end ov104_0223D7EC

	thumb_func_start ov104_0223D828
ov104_0223D828: @ 0x0223D828
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r4, #4
	blo _0223D838
	bl FUN_02022974
_0223D838:
	movs r2, #0x34
	ldr r3, _0223D854 @ =0x022417D8
	muls r2, r4, r2
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r3, r2
	bl FUN_0200CE6C
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200D324
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223D854: .4byte 0x022417D8
	thumb_func_end ov104_0223D828

	thumb_func_start ov104_0223D858
ov104_0223D858: @ 0x0223D858
	ldr r3, _0223D85C @ =FUN_0200D0F4
	bx r3
	.align 2, 0
_0223D85C: .4byte FUN_0200D0F4
	thumb_func_end ov104_0223D858

	thumb_func_start ov104_0223D860
ov104_0223D860: @ 0x0223D860
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x18]
	bl ov104_0223D5A8
	adds r4, r0, #0
	adds r0, #0x26
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	adds r0, r4, #0
	adds r0, #0x26
	movs r2, #0
	strb r7, [r0]
	cmp r6, #0
	ble _0223D894
	adds r0, r2, #0
_0223D886:
	ldrsh r1, [r5, r0]
	adds r2, r2, #1
	adds r5, r5, #2
	strh r1, [r4, #0x28]
	adds r4, r4, #2
	cmp r2, r6
	blt _0223D886
_0223D894:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223D860

	thumb_func_start ov104_0223D898
ov104_0223D898: @ 0x0223D898
	push {r4, lr}
	adds r4, r1, #0
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r2, [r2]
	lsls r3, r2, #2
	ldr r2, _0223D8C0 @ =0x022418A8
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _0223D8BE
	blx r2
	cmp r0, #1
	bne _0223D8BE
	adds r4, #0x26
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
_0223D8BE:
	pop {r4, pc}
	.align 2, 0
_0223D8C0: .4byte 0x022418A8
	thumb_func_end ov104_0223D898

	thumb_func_start ov104_0223D8C4
ov104_0223D8C4: @ 0x0223D8C4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl FUN_0209B9D0
	adds r4, r0, #0
	movs r5, #0
_0223D8D0:
	ldr r0, [r4]
	cmp r0, #0
	beq _0223D8E4
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _0223D8E4
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov104_0223D898
_0223D8E4:
	adds r5, r5, #1
	adds r4, #0x3c
	cmp r5, #0x20
	blt _0223D8D0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_0223D8C4

	thumb_func_start ov104_0223D8F0
ov104_0223D8F0: @ 0x0223D8F0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r4, r6, #0
	adds r4, #0x26
	bl FUN_0209B974
	adds r5, r0, #0
	movs r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0223D912
	subs r0, r0, #1
	strh r0, [r4, #6]
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_0223D912:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _0223D9D4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223D924: @ jump table
	.2byte _0223D92C - _0223D924 - 2 @ case 0
	.2byte _0223D992 - _0223D924 - 2 @ case 1
	.2byte _0223D992 - _0223D924 - 2 @ case 2
	.2byte _0223D992 - _0223D924 - 2 @ case 3
_0223D92C:
	movs r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #3
	bhi _0223D97C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223D940: @ jump table
	.2byte _0223D948 - _0223D940 - 2 @ case 0
	.2byte _0223D948 - _0223D940 - 2 @ case 1
	.2byte _0223D960 - _0223D940 - 2 @ case 2
	.2byte _0223D960 - _0223D940 - 2 @ case 3
_0223D948:
	movs r1, #4
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bne _0223D958
	strh r0, [r4, #8]
	movs r0, #3
	strh r0, [r4, #0xa]
	b _0223D986
_0223D958:
	movs r1, #3
	strh r1, [r4, #8]
	strh r0, [r4, #0xa]
	b _0223D986
_0223D960:
	movs r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0223D972
	movs r0, #0
	strh r0, [r4, #8]
	movs r0, #1
	strh r0, [r4, #0xa]
	b _0223D986
_0223D972:
	movs r0, #1
	strh r0, [r4, #8]
	movs r0, #0
	strh r0, [r4, #0xa]
	b _0223D986
_0223D97C:
	bl FUN_02022974
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223D986:
	movs r0, #2
	ldrsh r0, [r4, r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
_0223D992:
	ldrb r3, [r4, #1]
	ldr r1, [r6]
	ldrh r2, [r6, #0xc]
	adds r3, r3, #2
	lsls r3, r3, #1
	adds r6, r4, r3
	movs r3, #2
	ldrsh r3, [r6, r3]
	add r0, sp, #0
	bl ov104_02232C80
	ldr r0, [r5, #0x30]
	add r1, sp, #0
	bl FUN_0222D7C8
	ldrb r1, [r4, #1]
	movs r0, #2
	ldrsh r2, [r4, r0]
	adds r1, r1, #2
	lsls r1, r1, #1
	adds r1, r4, r1
	ldrsh r0, [r1, r0]
	cmp r2, r0
	bne _0223D9CA
	movs r0, #0x2d
	strh r0, [r4, #6]
	movs r0, #1
	b _0223D9DA
_0223D9CA:
	movs r0, #0x1e
	strh r0, [r4, #6]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	b _0223D9DA
_0223D9D4:
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223D9DA:
	strb r0, [r4, #1]
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_0223D8F0

	thumb_func_start ov104_0223D9E4
ov104_0223D9E4: @ 0x0223D9E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x5e
	movs r1, #0xc
	bl FUN_02018144
	movs r1, #0
	movs r2, #0xc
	adds r4, r0, #0
	blx FUN_020C4CF4
	adds r0, r5, #0
	bl ov104_0223DA40
	str r0, [r4]
	adds r0, r6, #0
	bl ov104_0223DBB8
	str r0, [r4, #4]
	movs r0, #9
	str r0, [sp]
	ldr r0, _0223DA24 @ =0x04000050
	movs r1, #4
	movs r2, #0x1f
	movs r3, #8
	blx FUN_020BF55C
	adds r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223DA24: .4byte 0x04000050
	thumb_func_end ov104_0223D9E4

	thumb_func_start ov104_0223DA28
ov104_0223DA28: @ 0x0223DA28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov104_0223DB34
	ldr r0, [r4, #4]
	bl ov104_0223DC04
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov104_0223DA28

	thumb_func_start ov104_0223DA40
ov104_0223DA40: @ 0x0223DA40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, _0223DB1C @ =0x0002200C
	adds r4, r0, #0
	movs r0, #0x5e
	bl FUN_02018144
	ldr r2, _0223DB1C @ =0x0002200C
	str r0, [sp, #8]
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, [sp, #8]
	movs r1, #0x5e
	str r4, [r0, #4]
	movs r0, #0x96
	bl FUN_02006C24
	ldr r5, [sp, #8]
	ldr r4, _0223DB20 @ =0x022418B0
	str r0, [sp, #4]
	movs r6, #0
	adds r5, #8
_0223DA6E:
	movs r0, #0x5e
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [sp, #4]
	movs r2, #1
	add r3, sp, #0x10
	bl FUN_020071D0
	adds r7, r0, #0
	ldr r0, [sp, #0x10]
	movs r2, #1
	adds r0, #0xc
	adds r1, r5, #0
	lsls r2, r2, #0xc
	blx FUN_020C4B68
	adds r0, r7, #0
	bl FUN_020181C4
	movs r0, #1
	lsls r0, r0, #0xc
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, r0
	cmp r6, #2
	blt _0223DA6E
	ldr r0, [sp, #4]
	bl FUN_02006CA8
	movs r0, #0x96
	movs r1, #0x5e
	bl FUN_02006C24
	movs r1, #0x5e
	str r1, [sp]
	movs r1, #0xe
	movs r2, #1
	add r3, sp, #0xc
	adds r4, r0, #0
	bl FUN_020071B4
	ldr r3, [sp, #0xc]
	adds r5, r0, #0
	ldr r2, _0223DB24 @ =0x00002008
	ldr r1, [sp, #8]
	ldr r0, [r3, #0x14]
	adds r1, r1, r2
	ldr r2, [r3, #0x10]
	blx FUN_020C4B68
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0x5e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #1
	add r3, sp, #0xc
	bl FUN_020071B4
	ldr r3, [sp, #0xc]
	adds r5, r0, #0
	ldr r2, _0223DB28 @ =0x00012008
	ldr r1, [sp, #8]
	ldr r0, [r3, #0x14]
	adds r1, r1, r2
	ldr r2, [r3, #0x10]
	blx FUN_020C4B68
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_02006CA8
	ldr r0, _0223DB2C @ =ov104_0223DB48
	ldr r1, [sp, #8]
	ldr r2, _0223DB30 @ =0x0001368C
	bl FUN_0200D9E8
	ldr r1, [sp, #8]
	str r0, [r1]
	adds r0, r1, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223DB1C: .4byte 0x0002200C
_0223DB20: .4byte 0x022418B0
_0223DB24: .4byte 0x00002008
_0223DB28: .4byte 0x00012008
_0223DB2C: .4byte ov104_0223DB48
_0223DB30: .4byte 0x0001368C
	thumb_func_end ov104_0223DA40

	thumb_func_start ov104_0223DB34
ov104_0223DB34: @ 0x0223DB34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223DB34

	thumb_func_start ov104_0223DB48
ov104_0223DB48: @ 0x0223DB48
	push {r3, r4, lr}
	sub sp, #4
	ldr r3, _0223DBAC @ =0x00022008
	adds r4, r1, #0
	ldrb r0, [r4, r3]
	cmp r0, #0xc
	bhs _0223DB5E
	adds r0, r0, #1
	add sp, #4
	strb r0, [r4, r3]
	pop {r3, r4, pc}
_0223DB5E:
	movs r0, #0
	strb r0, [r4, r3]
	str r0, [sp]
	adds r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, _0223DBB0 @ =0x00002008
	ldr r0, [r4, #4]
	adds r2, r4, r2
	lsls r3, r3, #0x10
	adds r2, r2, r3
	movs r3, #1
	movs r1, #3
	lsls r3, r3, #0x10
	bl FUN_0201958C
	ldr r2, _0223DBB4 @ =0x00022009
	adds r3, r4, #0
	ldrb r2, [r4, r2]
	adds r3, #8
	ldr r0, [r4, #4]
	lsls r2, r2, #0xc
	adds r2, r3, r2
	movs r3, #1
	movs r1, #3
	lsls r3, r3, #0xc
	bl FUN_02019574
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_0201C3C0
	ldr r1, _0223DBB4 @ =0x00022009
	movs r0, #1
	ldrb r2, [r4, r1]
	eors r0, r2
	strb r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223DBAC: .4byte 0x00022008
_0223DBB0: .4byte 0x00002008
_0223DBB4: .4byte 0x00022009
	thumb_func_end ov104_0223DB48

	thumb_func_start ov104_0223DBB8
ov104_0223DBB8: @ 0x0223DBB8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x5e
	movs r1, #0x6c
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x6c
	blx FUN_020C4CF4
	adds r0, r4, #0
	str r5, [r4, #4]
	movs r1, #2
	adds r0, #0x68
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02003164
	adds r1, r4, #0
	adds r0, #0xa0
	adds r1, #8
	movs r2, #0x60
	blx FUN_020C4B18
	ldr r0, _0223DBFC @ =ov104_0223DC18
	ldr r2, _0223DC00 @ =0x0001368D
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223DBFC: .4byte ov104_0223DC18
_0223DC00: .4byte 0x0001368D
	thumb_func_end ov104_0223DBB8

	thumb_func_start ov104_0223DC04
ov104_0223DC04: @ 0x0223DC04
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223DC04

	thumb_func_start ov104_0223DC18
ov104_0223DC18: @ 0x0223DC18
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #8
	bhs _0223DC38
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	adds r4, #0x69
	add sp, #4
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0223DC38:
	adds r0, r4, #0
	movs r2, #0
	adds r0, #0x69
	strb r2, [r0]
	movs r0, #0x20
	str r0, [sp]
	adds r1, #0x68
	ldrb r1, [r1]
	adds r3, r4, #0
	ldr r0, [r4, #4]
	adds r3, #8
	lsls r1, r1, #5
	adds r1, r3, r1
	movs r3, #0x60
	bl FUN_02002FBC
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #3
	blo _0223DC76
	movs r0, #0
	adds r4, #0x68
	strb r0, [r4]
_0223DC76:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223DC18

	thumb_func_start ov104_0223DC7C
ov104_0223DC7C: @ 0x0223DC7C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r1, #0x5a
	movs r2, #0xfa
	str r3, [sp]
	ldr r0, _0223DD24 @ =ov104_0223DDB4
	lsls r1, r1, #2
	lsls r2, r2, #2
	movs r3, #0x5e
	bl FUN_0200679C
	bl FUN_0201CED0
	adds r4, r0, #0
	str r5, [r4, #0x10]
	ldr r0, [sp]
	str r7, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x18]
	add r1, sp, #8
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x20]
	movs r0, #0x18
	ldrsh r0, [r1, r0]
	strh r0, [r4, #0x28]
	movs r0, #0x1c
	ldrsh r0, [r1, r0]
	movs r1, #0x5e
	strh r0, [r4, #0x2a]
	movs r0, #0x70
	bl FUN_02006C24
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _0223DCCE
	movs r0, #0
	strh r0, [r1]
_0223DCCE:
	adds r0, r4, #0
	subs r1, r6, #1
	adds r0, #0x2c
	strb r1, [r0]
	movs r0, #1
	bl FUN_02019F28
	movs r2, #2
	adds r1, r0, #0
	movs r0, #0
	lsls r2, r2, #0xe
	blx FUN_020C4B4C
	movs r2, #0
	adds r0, r5, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_0201C63C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_0201C63C
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r2, [r1]
	movs r1, #0xc
	ldr r3, _0223DD28 @ =0x0224191C
	muls r1, r2, r1
	adds r0, r4, #0
	adds r1, r3, r1
	bl ov104_0223E5A8
	ldr r0, _0223DD2C @ =ov104_0223DD5C
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0200DA3C
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DD24: .4byte ov104_0223DDB4
_0223DD28: .4byte 0x0224191C
_0223DD2C: .4byte ov104_0223DD5C
	thumb_func_end ov104_0223DC7C

	thumb_func_start ov104_0223DD30
ov104_0223DD30: @ 0x0223DD30
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_0200DA58
	ldr r0, [r5, #0x34]
	bl FUN_0200DA58
	ldr r0, [r5, #0x24]
	bl FUN_02006CA8
	ldr r1, [r5, #0xc]
	movs r0, #0x5e
	bl FUN_02018238
	adds r0, r4, #0
	bl FUN_020067D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223DD30

	thumb_func_start ov104_0223DD5C
ov104_0223DD5C: @ 0x0223DD5C
	push {r3, r4, r5, r6}
	adds r0, r1, #0
	ldr r1, _0223DDAC @ =0x00000151
	subs r2, r1, #2
	ldrb r3, [r0, r2]
	subs r2, r1, #3
	ldrb r2, [r0, r2]
	ldrb r4, [r0, r1]
	lsls r3, r3, #8
	lsls r5, r2, #8
	adds r6, r5, #0
	subs r5, r1, #1
	movs r2, #0xff
	lsls r2, r2, #8
	ands r3, r2
	ldrb r5, [r0, r5]
	ands r6, r2
	orrs r3, r4
	orrs r5, r6
	ldr r6, _0223DDB0 @ =0x04000040
	strh r5, [r6]
	strh r3, [r6, #4]
	adds r3, r1, #4
	ldrb r5, [r0, r3]
	adds r3, r1, #2
	ldrb r4, [r0, r3]
	adds r3, r1, #1
	ldrb r3, [r0, r3]
	adds r1, r1, #3
	ldrb r0, [r0, r1]
	lsls r3, r3, #8
	ands r3, r2
	orrs r0, r3
	strh r0, [r6, #2]
	lsls r0, r4, #8
	ands r0, r2
	orrs r0, r5
	strh r0, [r6, #6]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_0223DDAC: .4byte 0x00000151
_0223DDB0: .4byte 0x04000040
	thumb_func_end ov104_0223DD5C

	thumb_func_start ov104_0223DDB4
ov104_0223DDB4: @ 0x0223DDB4
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r3, r4, #0
	adds r3, #0x2c
	ldrb r6, [r3]
	movs r3, #0xc
	ldr r2, _0223DDE0 @ =0x0224191C
	muls r3, r6, r3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x5e
	adds r2, r2, r3
	bl ov104_0223DDE4
	cmp r0, #1
	bne _0223DDDC
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov104_0223DD30
_0223DDDC:
	pop {r4, r5, r6, pc}
	nop
_0223DDE0: .4byte 0x0224191C
	thumb_func_end ov104_0223DDB4

	thumb_func_start ov104_0223DDE4
ov104_0223DDE4: @ 0x0223DDE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r4]
	adds r7, r2, #0
	ldr r5, [r4, #0xc]
	cmp r1, #0x12
	bls _0223DDF8
	b _0223E290
_0223DDF8:
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223DE04: @ jump table
	.2byte _0223DE2A - _0223DE04 - 2 @ case 0
	.2byte _0223E080 - _0223DE04 - 2 @ case 1
	.2byte _0223E09E - _0223DE04 - 2 @ case 2
	.2byte _0223E0AE - _0223DE04 - 2 @ case 3
	.2byte _0223E0C8 - _0223DE04 - 2 @ case 4
	.2byte _0223E0D8 - _0223DE04 - 2 @ case 5
	.2byte _0223E0E6 - _0223DE04 - 2 @ case 6
	.2byte _0223E0FA - _0223DE04 - 2 @ case 7
	.2byte _0223E116 - _0223DE04 - 2 @ case 8
	.2byte _0223E11C - _0223DE04 - 2 @ case 9
	.2byte _0223E134 - _0223DE04 - 2 @ case 10
	.2byte _0223E140 - _0223DE04 - 2 @ case 11
	.2byte _0223E164 - _0223DE04 - 2 @ case 12
	.2byte _0223E1EA - _0223DE04 - 2 @ case 13
	.2byte _0223E204 - _0223DE04 - 2 @ case 14
	.2byte _0223E218 - _0223DE04 - 2 @ case 15
	.2byte _0223E228 - _0223DE04 - 2 @ case 16
	.2byte _0223E248 - _0223DE04 - 2 @ case 17
	.2byte _0223E258 - _0223DE04 - 2 @ case 18
_0223DE2A:
	adds r0, r6, #0
	movs r1, #0x94
	bl FUN_02018144
	str r0, [r4, #0xc]
	movs r1, #0
	movs r2, #0x94
	blx FUN_020D5124
	ldr r5, [r4, #0xc]
	ldr r0, [r4, #0x24]
	movs r1, #2
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223E17C @ =0x000007D4
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl FUN_0200CDC4
	movs r3, #0x59
	adds r1, r0, #0
	lsls r3, r3, #2
	movs r2, #1
	lsls r2, r1
	ldr r0, [r4, r3]
	movs r1, #0x5e
	orrs r0, r2
	str r0, [r4, r3]
	movs r0, #4
	bl FUN_02012744
	str r0, [r4, #0x30]
	ldr r2, _0223E180 @ =0x0000026A
	movs r0, #1
	movs r1, #0x1a
	adds r3, r6, #0
	bl FUN_0200B144
	ldr r1, [r7]
	str r0, [sp, #0x20]
	bl FUN_0200B1EC
	str r0, [sp, #0x24]
	ldr r0, _0223E184 @ =0x00010200
	adds r1, r5, #0
	str r0, [sp]
	movs r3, #0
	ldr r0, _0223E17C @ =0x000007D4
	str r3, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x28
	ldrsh r0, [r4, r0]
	ldr r2, [sp, #0x24]
	adds r1, #0x7c
	adds r0, #0x74
	str r0, [sp, #0xc]
	movs r0, #0x2a
	ldrsh r0, [r4, r0]
	adds r0, #0x58
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	adds r0, r4, #0
	bl ov104_0223E29C
	ldr r0, [r5, #0x7c]
	movs r1, #0
	bl FUN_020129D0
	ldr r0, [sp, #0x24]
	bl FUN_020237BC
	ldr r0, [sp, #0x20]
	bl FUN_0200B190
	ldr r0, [r4, #0x24]
	movs r1, #2
	str r0, [sp]
	ldrb r0, [r7, #4]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223E188 @ =0x000007D2
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl FUN_0200CDC4
	movs r3, #0x16
	lsls r3, r3, #4
	str r0, [r4, r3]
	adds r0, r3, #4
	ldr r2, [r4, r3]
	movs r1, #1
	ldr r0, [r4, r0]
	lsls r1, r2
	orrs r1, r0
	adds r0, r3, #4
	str r1, [r4, r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0223E18C @ =0x000007DA
	str r0, [sp, #8]
	ldrb r3, [r7, #5]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223E188 @ =0x000007D2
	str r0, [sp, #4]
	ldrb r3, [r7, #6]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223E188 @ =0x000007D2
	str r0, [sp, #4]
	ldrb r3, [r7, #7]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl FUN_0200CE54
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0
	movs r2, #0x16
	str r0, [sp, #4]
	lsls r2, r2, #4
	ldr r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x14
	movs r1, #2
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_020039B0
	ldr r0, [r4, #0x24]
	movs r1, #2
	str r0, [sp]
	movs r0, #0x33
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223E190 @ =0x000007D3
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl FUN_0200CDC4
	adds r3, r0, #0
	movs r7, #0x59
	movs r0, #1
	lsls r7, r7, #2
	adds r1, r0, #0
	lsls r1, r3
	ldr r2, [r4, r7]
	movs r3, #0x90
	orrs r1, r2
	str r1, [r4, r7]
	movs r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _0223E194 @ =0x000007DB
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223E190 @ =0x000007D3
	movs r3, #0x91
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223E190 @ =0x000007D3
	movs r3, #0x92
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl FUN_0200CE54
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, _0223E198 @ =0x022418B4
	bl FUN_0200CE6C
	adds r1, r5, #0
	adds r1, #0x90
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0200D324
	movs r0, #0x2a
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0223E01A
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	str r0, [sp, #0x1c]
	b _0223E02A
_0223E01A:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	str r0, [sp, #0x1c]
_0223E02A:
	movs r0, #0x28
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0223E044
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0223E052
_0223E044:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0223E052:
	blx FUN_020E1740
	adds r7, r0, #0
	ldr r0, [sp, #0x1c]
	blx FUN_020E1740
	adds r5, #0x14
	adds r1, r5, #0
	movs r2, #0x12
	movs r5, #0x52
	adds r3, r0, #0
	lsls r2, r2, #0xe
	lsls r5, r5, #0xc
	str r6, [sp]
	adds r0, r4, #0
	adds r2, r7, r2
	adds r3, r3, r5
	bl ov104_0223E3FC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E080:
	movs r0, #3
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	ldr r3, _0223E19C @ =0x00007FFF
	str r6, [sp, #8]
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E09E:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223E16C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E0AE:
	movs r0, #3
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, _0223E19C @ =0x00007FFF
	str r6, [sp, #8]
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E0C8:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223E16C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E0D8:
	movs r1, #0
	bl ov104_0223E6F0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E0E6:
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223E16C
	adds r0, r1, #1
	str r0, [r4]
	movs r0, #0xa
	str r0, [r5, #0x78]
	b _0223E290
_0223E0FA:
	ldr r0, [r5, #0x78]
	subs r0, r0, #1
	str r0, [r5, #0x78]
	bpl _0223E16C
	adds r5, #0x14
	adds r0, r5, #0
	bl ov104_0223E4A4
	cmp r0, #1
	bne _0223E16C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E116:
	adds r0, r1, #1
	str r0, [r4]
	b _0223E290
_0223E11C:
	movs r2, #0x56
	lsls r2, r2, #2
	adds r1, r5, #0
	adds r2, r4, r2
	bl ov104_0223E804
	cmp r0, #1
	bne _0223E16C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E134:
	movs r0, #0xa
	str r0, [r5, #0x78]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E140:
	ldr r0, [r5, #0x78]
	subs r0, r0, #1
	str r0, [r5, #0x78]
	bpl _0223E16C
	movs r0, #3
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0
	ldr r3, _0223E19C @ =0x00007FFF
	str r6, [sp, #8]
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E164:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _0223E16E
_0223E16C:
	b _0223E290
_0223E16E:
	movs r0, #0
	movs r2, #0x59
	str r0, [sp]
	lsls r2, r2, #2
	ldr r3, [r4, r2]
	ldr r2, _0223E1A0 @ =0x00003FFF
	b _0223E1A4
	.align 2, 0
_0223E17C: .4byte 0x000007D4
_0223E180: .4byte 0x0000026A
_0223E184: .4byte 0x00010200
_0223E188: .4byte 0x000007D2
_0223E18C: .4byte 0x000007DA
_0223E190: .4byte 0x000007D3
_0223E194: .4byte 0x000007DB
_0223E198: .4byte 0x022418B4
_0223E19C: .4byte 0x00007FFF
_0223E1A0: .4byte 0x00003FFF
_0223E1A4:
	ldr r0, [r4, #0x1c]
	eors r2, r3
	lsls r2, r2, #0x10
	movs r1, #2
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_02003A2C
	movs r0, #0
	str r0, [sp]
	movs r2, #0x16
	str r0, [sp, #4]
	lsls r2, r2, #4
	ldr r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x14
	movs r1, #2
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_020039B0
	movs r0, #0xd
	mvns r0, r0
	movs r1, #0x2c
	movs r2, #1
	bl FUN_0200AB4C
	ldr r0, [r5, #0x7c]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E1EA:
	movs r0, #3
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, _0223E298 @ =0x00007FFF
	str r6, [sp, #8]
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E204:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223E290
	movs r0, #0x1a
	str r0, [r5, #0x78]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E218:
	ldr r0, [r5, #0x78]
	subs r0, r0, #1
	str r0, [r5, #0x78]
	bpl _0223E290
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E228:
	movs r0, #0xf
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x5e
	movs r1, #0
	str r0, [sp, #8]
	ldr r3, _0223E298 @ =0x00007FFF
	movs r0, #3
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E248:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223E290
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E290
_0223E258:
	ldr r1, _0223E298 @ =0x00007FFF
	movs r0, #1
	bl FUN_0200F344
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _0223E26A
	movs r0, #1
	strh r0, [r1]
_0223E26A:
	adds r0, r5, #0
	adds r0, #0x7c
	bl ov104_0223E3B8
	ldr r0, [r4, #0x30]
	bl FUN_020127BC
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl FUN_0200D0F4
	adds r5, #0x14
	adds r0, r5, #0
	bl ov104_0223E48C
	add sp, #0x28
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223E290:
	movs r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E298: .4byte 0x00007FFF
	thumb_func_end ov104_0223DDE4

	thumb_func_start ov104_0223E29C
ov104_0223E29C: @ 0x0223E29C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	adds r5, r1, #0
	adds r7, r0, #0
	ldr r0, [r5]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x9c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _0223E2B6
	bl FUN_02022974
_0223E2B6:
	ldr r0, [r7, #0x10]
	cmp r4, #0
	str r0, [sp, #0x24]
	ldr r0, [r7, #0x18]
	str r0, [sp, #0x20]
	bne _0223E2D0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov104_0223E3CC
	b _0223E2D8
_0223E2D0:
	ldrh r0, [r4, #0x12]
	str r0, [sp, #0x2c]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #0x28]
_0223E2D8:
	cmp r4, #0
	bne _0223E316
	add r0, sp, #0x3c
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x24]
	lsls r2, r2, #0x18
	add r1, sp, #0x3c
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_0201A870
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x3c
	str r3, [sp, #0x14]
	bl FUN_0201D7E0
	b _0223E322
_0223E316:
	adds r3, r4, #0
	add r2, sp, #0x3c
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
_0223E322:
	add r0, sp, #0x3c
	movs r1, #1
	movs r2, #0x5e
	bl FUN_02012898
	movs r1, #1
	adds r2, r1, #0
	add r3, sp, #0x30
	bl FUN_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _0223E346
	ldr r1, [sp, #0x2c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r6, r6, r0
_0223E346:
	ldr r0, [r7, #0x30]
	str r0, [sp, #0x4c]
	add r0, sp, #0x3c
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x20]
	bl FUN_0200D9B0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x98]
	bl FUN_0200D04C
	movs r1, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x5c]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xa0]
	str r6, [sp, #0x64]
	subs r0, #8
	str r0, [sp, #0x68]
	movs r0, #0xb
	str r0, [sp, #0x70]
	movs r0, #1
	str r0, [sp, #0x74]
	movs r0, #0x5e
	str r0, [sp, #0x78]
	add r0, sp, #0x4c
	str r1, [sp, #0x6c]
	bl FUN_020127E8
	ldr r1, [sp, #0x94]
	adds r7, r0, #0
	bl FUN_02012AC0
	ldr r2, [sp, #0xa0]
	adds r0, r7, #0
	adds r1, r6, #0
	subs r2, #8
	bl FUN_020128C4
	cmp r4, #0
	bne _0223E3A2
	add r0, sp, #0x3c
	bl FUN_0201A8FC
_0223E3A2:
	str r7, [r5]
	add r3, sp, #0x30
	ldm r3!, {r0, r1}
	adds r2, r5, #4
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #0x2c]
	strh r0, [r5, #0x10]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223E29C

	thumb_func_start ov104_0223E3B8
ov104_0223E3B8: @ 0x0223E3B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02012870
	adds r0, r4, #4
	bl FUN_0201EE28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223E3B8

	thumb_func_start ov104_0223E3CC
ov104_0223E3CC: @ 0x0223E3CC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0
	adds r7, r3, #0
	bl FUN_02002D7C
	adds r4, r0, #0
	asrs r1, r4, #2
	lsrs r1, r1, #0x1d
	adds r1, r4, r1
	asrs r5, r1, #3
	movs r1, #8
	blx FUN_020BD140
	cmp r0, #0
	beq _0223E3F4
	adds r5, r5, #1
_0223E3F4:
	str r4, [r6]
	str r5, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223E3CC

	thumb_func_start ov104_0223E3FC
ov104_0223E3FC: @ 0x0223E3FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r6, r3, #0
	mov ip, r2
	ldr r3, _0223E488 @ =0x022418E8
	adds r7, r0, #0
	adds r4, r1, #0
	add r2, sp, #0
	movs r5, #6
_0223E40E:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r5, r5, #1
	bne _0223E40E
	ldr r0, [r3]
	adds r5, r4, #0
	str r0, [r2]
	mov r0, ip
	asrs r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0]
	asrs r1, r6, #0xc
	strh r1, [r0, #2]
	movs r6, #0
	strh r6, [r4]
	strh r6, [r4, #2]
	adds r5, #0x14
_0223E430:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	add r2, sp, #0
	bl FUN_0200CE6C
	movs r1, #0
	str r0, [r4, #4]
	bl FUN_0200D3F4
	cmp r6, #3
	beq _0223E46A
	ldr r0, [r4, #4]
	movs r1, #2
	ldr r0, [r0]
	bl FUN_02021CF8
	ldr r0, [r4, #4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02021D6C
	movs r1, #2
	lsls r1, r1, #0xc
	adds r0, r5, #0
	lsrs r2, r1, #1
	movs r3, #6
	bl ov104_0223E534
	b _0223E478
_0223E46A:
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r2, r1, #0
	movs r3, #6
	bl ov104_0223E534
_0223E478:
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x14
	cmp r6, #4
	blt _0223E430
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223E488: .4byte 0x022418E8
	thumb_func_end ov104_0223E3FC

	thumb_func_start ov104_0223E48C
ov104_0223E48C: @ 0x0223E48C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0223E492:
	ldr r0, [r5, #4]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0223E492
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0223E48C

	thumb_func_start ov104_0223E4A4
ov104_0223E4A4: @ 0x0223E4A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	movs r0, #1
	movs r1, #2
	str r0, [sp]
	ldrsh r0, [r7, r1]
	cmp r0, #4
	bge _0223E4D2
	movs r0, #0
	str r0, [sp]
	ldrsh r0, [r7, r0]
	subs r0, r0, #1
	strh r0, [r7]
	ldr r0, [sp]
	ldrsh r0, [r7, r0]
	cmp r0, #0
	bgt _0223E4D2
	movs r0, #3
	strh r0, [r7]
	ldrsh r0, [r7, r1]
	adds r0, r0, #1
	strh r0, [r7, #2]
_0223E4D2:
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _0223E52E
	adds r6, r7, #0
	adds r6, #0x14
	adds r4, r7, #0
	adds r5, r7, #0
_0223E4E6:
	adds r0, r6, #0
	bl ov104_0223E544
	ldr r1, [r4, #0x14]
	str r0, [sp, #8]
	add r0, sp, #0xc
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov104_0223E58C
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	ldr r0, [r0]
	bl FUN_02021C70
	ldr r0, [r5, #4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02021CAC
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0223E518
	movs r0, #0
	str r0, [sp]
_0223E518:
	ldr r0, [sp, #4]
	adds r6, #0x14
	adds r0, r0, #1
	str r0, [sp, #4]
	movs r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #4]
	adds r4, #0x14
	adds r5, r5, #4
	cmp r0, r1
	blt _0223E4E6
_0223E52E:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223E4A4

	thumb_func_start ov104_0223E534
ov104_0223E534: @ 0x0223E534
	str r1, [r0]
	str r1, [r0, #4]
	subs r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov104_0223E534

	thumb_func_start ov104_0223E544
ov104_0223E544: @ 0x0223E544
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	ldr r1, [r4, #0x10]
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	ldr r1, [r4, #4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r0, r0, #1
	cmp r0, r1
	bgt _0223E584
	str r0, [r4, #0xc]
	movs r0, #0
	pop {r4, pc}
_0223E584:
	str r1, [r4, #0xc]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223E544

	thumb_func_start ov104_0223E58C
ov104_0223E58C: @ 0x0223E58C
	push {r4}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r2, sp, #0
	adds r4, r0, #0
	str r1, [sp]
	ldm r2!, {r0, r1}
	stm r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	add sp, #0xc
	pop {r4}
	bx lr
	thumb_func_end ov104_0223E58C

	thumb_func_start ov104_0223E5A8
ov104_0223E5A8: @ 0x0223E5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r3, #1
	lsls r3, r3, #0x1a
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r3]
	ldr r0, _0223E6AC @ =0xFFFF1FFF
	adds r2, r3, #0
	ands r1, r0
	movs r0, #6
	lsls r0, r0, #0xc
	orrs r0, r1
	str r0, [r3]
	adds r2, #0x48
	ldrh r6, [r2]
	movs r0, #0x3f
	movs r1, #0x1f
	bics r6, r0
	orrs r1, r6
	movs r7, #0x20
	orrs r1, r7
	strh r1, [r2]
	ldrh r6, [r2]
	ldr r1, _0223E6B0 @ =0xFFFFC0FF
	ands r1, r6
	movs r6, #0x1f
	lsls r6, r6, #8
	orrs r6, r1
	lsls r1, r7, #8
	orrs r1, r6
	strh r1, [r2]
	adds r1, r3, #0
	adds r1, #0x4a
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #0x1d
	orrs r0, r2
	orrs r0, r7
	strh r0, [r1]
	adds r1, r3, #0
	movs r0, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x44
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r3, #0x46
	strh r0, [r3]
	str r0, [sp]
	str r7, [sp, #4]
	movs r0, #0xc0
	str r0, [sp, #8]
	ldrb r2, [r4, #8]
	ldr r0, [r5, #0x1c]
	movs r1, #0x70
	movs r3, #0x5e
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x5e
	str r0, [sp, #0xc]
	ldrb r1, [r4, #9]
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x10]
	movs r3, #1
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x5e
	str r0, [sp, #0xc]
	ldrb r1, [r4, #0xa]
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x10]
	movs r3, #1
	bl FUN_0200710C
	adds r0, r7, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xc
	str r0, [sp, #8]
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019E2C
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl FUN_0201C3C0
	ldrb r1, [r4, #8]
	movs r0, #0x70
	add r2, sp, #0x10
	movs r3, #0x5e
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp, #0x10]
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r0, [r0, #0xc]
	adds r1, #0x40
	adds r2, #0xe0
	blx FUN_020C4B18
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, _0223E6B4 @ =ov104_0223E6BC
	ldr r2, _0223E6B8 @ =0x0000044C
	adds r1, r5, #0
	bl FUN_0200D9E8
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223E6AC: .4byte 0xFFFF1FFF
_0223E6B0: .4byte 0xFFFFC0FF
_0223E6B4: .4byte ov104_0223E6BC
_0223E6B8: .4byte 0x0000044C
	thumb_func_end ov104_0223E5A8

	thumb_func_start ov104_0223E6BC
ov104_0223E6BC: @ 0x0223E6BC
	push {r3, lr}
	ldr r0, [r1, #0x38]
	adds r0, r0, #1
	str r0, [r1, #0x38]
	bmi _0223E6EE
	movs r2, #0
	str r2, [r1, #0x38]
	ldr r0, [r1, #0x3c]
	adds r0, r0, #1
	str r0, [r1, #0x3c]
	cmp r0, #8
	blt _0223E6D6
	str r2, [r1, #0x3c]
_0223E6D6:
	movs r0, #0x20
	str r0, [sp]
	adds r2, r1, #0
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x3c]
	adds r2, #0x40
	lsls r1, r1, #5
	adds r1, r2, r1
	movs r2, #0
	movs r3, #0xc0
	bl FUN_02002FBC
_0223E6EE:
	pop {r3, pc}
	thumb_func_end ov104_0223E6BC

	thumb_func_start ov104_0223E6F0
ov104_0223E6F0: @ 0x0223E6F0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x51
	lsls r1, r1, #2
	adds r4, r0, r1
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	cmp r5, #0
	bne _0223E71E
	movs r0, #5
	lsls r0, r0, #0xc
	str r0, [r4]
	str r0, [r4, #4]
	movs r2, #0xfa
	ldr r0, _0223E738 @ =ov104_0223E740
	adds r1, r4, #0
	lsls r2, r2, #2
	bl FUN_0200D9E8
	pop {r3, r4, r5, pc}
_0223E71E:
	movs r0, #0x2e
	lsls r0, r0, #8
	str r0, [r4]
	movs r0, #0x72
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r2, #0xfa
	ldr r0, _0223E73C @ =ov104_0223E7A4
	adds r1, r4, #0
	lsls r2, r2, #2
	bl FUN_0200D9E8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E738: .4byte ov104_0223E740
_0223E73C: .4byte ov104_0223E7A4
	thumb_func_end ov104_0223E6F0

	thumb_func_start ov104_0223E740
ov104_0223E740: @ 0x0223E740
	push {r3, lr}
	ldrb r2, [r1, #9]
	cmp r2, #0
	bne _0223E798
	movs r0, #2
	ldr r2, [r1]
	lsls r0, r0, #0xa
	subs r2, r2, r0
	str r2, [r1]
	ldr r2, [r1, #4]
	adds r0, r2, r0
	str r0, [r1, #4]
	movs r0, #0x2e
	ldr r2, [r1]
	lsls r0, r0, #8
	cmp r2, r0
	bgt _0223E770
	str r0, [r1]
	movs r0, #0x72
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldrb r0, [r1, #9]
	adds r0, r0, #1
	strb r0, [r1, #9]
_0223E770:
	movs r0, #0
	strb r0, [r1, #0xa]
	ldr r2, [r1]
	asrs r2, r2, #8
	strb r2, [r1, #0xb]
	movs r2, #0xff
	strb r2, [r1, #0xc]
	ldr r2, [r1, #4]
	asrs r2, r2, #8
	strb r2, [r1, #0xd]
	movs r2, #1
	strb r2, [r1, #0xe]
	ldr r2, [r1]
	asrs r2, r2, #8
	strb r2, [r1, #0xf]
	strb r0, [r1, #0x10]
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	strb r0, [r1, #0x11]
	pop {r3, pc}
_0223E798:
	movs r2, #1
	strb r2, [r1, #8]
	bl FUN_0200DA58
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223E740

	thumb_func_start ov104_0223E7A4
ov104_0223E7A4: @ 0x0223E7A4
	push {r3, lr}
	ldrb r2, [r1, #9]
	cmp r2, #0
	bne _0223E7F8
	movs r0, #2
	ldr r2, [r1]
	lsls r0, r0, #0xa
	adds r2, r2, r0
	str r2, [r1]
	ldr r2, [r1, #4]
	subs r0, r2, r0
	str r0, [r1, #4]
	movs r0, #5
	ldr r2, [r1]
	lsls r0, r0, #0xc
	cmp r2, r0
	blt _0223E7D0
	str r0, [r1]
	str r0, [r1, #4]
	ldrb r0, [r1, #9]
	adds r0, r0, #1
	strb r0, [r1, #9]
_0223E7D0:
	movs r0, #0
	strb r0, [r1, #0xa]
	ldr r2, [r1]
	asrs r2, r2, #8
	strb r2, [r1, #0xb]
	movs r2, #0xff
	strb r2, [r1, #0xc]
	ldr r2, [r1, #4]
	asrs r2, r2, #8
	strb r2, [r1, #0xd]
	movs r2, #1
	strb r2, [r1, #0xe]
	ldr r2, [r1]
	asrs r2, r2, #8
	strb r2, [r1, #0xf]
	strb r0, [r1, #0x10]
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	strb r0, [r1, #0x11]
	pop {r3, pc}
_0223E7F8:
	movs r2, #1
	strb r2, [r1, #8]
	bl FUN_0200DA58
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223E7A4

	thumb_func_start ov104_0223E804
ov104_0223E804: @ 0x0223E804
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r3, r0, #0
	ldr r0, [r4, #4]
	adds r5, r1, #0
	cmp r0, #0
	beq _0223E818
	cmp r0, #1
	beq _0223E854
	b _0223E88C
_0223E818:
	movs r1, #0x28
	ldrsh r2, [r3, r1]
	adds r1, #0xd8
	adds r0, r5, #0
	adds r1, r2, r1
	movs r2, #0x2a
	ldrsh r2, [r3, r2]
	adds r0, #0x90
	lsls r1, r1, #0x10
	adds r2, #0x50
	lsls r2, r2, #0x10
	movs r3, #2
	ldr r0, [r0]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	bl FUN_0200D500
	adds r5, #0x90
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #1
	lsls r0, r0, #0x10
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	b _0223E890
_0223E854:
	movs r0, #0xf
	ldr r1, [r4]
	lsls r0, r0, #8
	subs r1, r1, r0
	movs r0, #0xd
	lsls r0, r0, #0xc
	str r1, [r4]
	cmp r1, r0
	bgt _0223E86E
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_0223E86E:
	movs r2, #0x2a
	ldrsh r2, [r3, r2]
	ldr r1, [r4]
	adds r5, #0x90
	adds r2, #0x50
	lsls r1, r1, #8
	lsls r2, r2, #0x10
	movs r3, #2
	ldr r0, [r5]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	bl FUN_0200D500
	b _0223E890
_0223E88C:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223E890:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223E804

	thumb_func_start ov104_0223E894
ov104_0223E894: @ 0x0223E894
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0xb
	movs r1, #0x4c
	str r2, [sp]
	adds r5, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x4c
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, _0223E8D4 @ =ov104_0223E8D8
	adds r1, r4, #0
	movs r2, #5
	bl FUN_0200D9E8
	str r5, [r4, #0x48]
	cmp r5, #0
	beq _0223E8C4
	movs r0, #0
	str r0, [r5]
_0223E8C4:
	str r6, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E8D4: .4byte ov104_0223E8D8
	thumb_func_end ov104_0223E894

	thumb_func_start ov104_0223E8D8
ov104_0223E8D8: @ 0x0223E8D8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4]
	cmp r1, #5
	bhi _0223E9BE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223E8F0: @ jump table
	.2byte _0223E8FC - _0223E8F0 - 2 @ case 0
	.2byte _0223E934 - _0223E8F0 - 2 @ case 1
	.2byte _0223E94E - _0223E8F0 - 2 @ case 2
	.2byte _0223E962 - _0223E8F0 - 2 @ case 3
	.2byte _0223E97C - _0223E8F0 - 2 @ case 4
	.2byte _0223E9A0 - _0223E8F0 - 2 @ case 5
_0223E8FC:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0223E916
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	ldr r2, [r4, #0x14]
	adds r0, #0x30
	movs r1, #0
	movs r3, #2
	bl ov104_0223E9EC
	b _0223E92C
_0223E916:
	cmp r0, #2
	bne _0223E92C
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	ldr r2, [r4, #0x14]
	adds r0, #0x30
	movs r1, #0
	movs r3, #1
	bl ov104_0223E9EC
_0223E92C:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E9BE
_0223E934:
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0xc]
	adds r0, #0x18
	movs r1, #0
	bl ov104_0223E9EC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E9BE
_0223E94E:
	adds r0, r4, #0
	adds r0, #0x18
	bl ov104_0223E9F8
	cmp r0, #0
	beq _0223E9BE
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E9BE
_0223E962:
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	ldr r1, [r4, #0x10]
	ldr r3, [r4, #0xc]
	adds r0, #0x18
	movs r2, #0
	bl ov104_0223E9EC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223E9BE
_0223E97C:
	adds r0, r4, #0
	adds r0, #0x18
	bl ov104_0223E9F8
	cmp r0, #0
	beq _0223E9BE
	ldr r0, [r4, #8]
	adds r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _0223E99A
	movs r0, #5
	str r0, [r4]
	b _0223E9BE
_0223E99A:
	movs r0, #1
	str r0, [r4]
	b _0223E9BE
_0223E9A0:
	movs r1, #0
	str r1, [r4]
	str r1, [r4, #8]
	ldr r2, [r4, #0x48]
	cmp r2, #0
	beq _0223E9B0
	movs r1, #1
	str r1, [r2]
_0223E9B0:
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
_0223E9BE:
	adds r4, #0x30
	adds r0, r4, #0
	bl ov104_0223E9F8
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223E8D8

	thumb_func_start ov104_0223E9CC
ov104_0223E9CC: @ 0x0223E9CC
	push {r3, lr}
	cmp r0, #1
	bne _0223E9DA
	ldr r0, _0223E9E4 @ =0x0400006C
	blx FUN_020BDEC4
	pop {r3, pc}
_0223E9DA:
	ldr r0, _0223E9E8 @ =0x0400106C
	blx FUN_020BDEC4
	pop {r3, pc}
	nop
_0223E9E4: .4byte 0x0400006C
_0223E9E8: .4byte 0x0400106C
	thumb_func_end ov104_0223E9CC

	thumb_func_start ov104_0223E9EC
ov104_0223E9EC: @ 0x0223E9EC
	push {r3, lr}
	str r3, [r0, #0x14]
	ldr r3, [sp, #8]
	bl ov104_0223EA28
	pop {r3, pc}
	thumb_func_end ov104_0223E9EC

	thumb_func_start ov104_0223E9F8
ov104_0223E9F8: @ 0x0223E9F8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov104_0223EA38
	adds r4, r0, #0
	ldr r0, _0223EA10 @ =ov104_0223EA14
	adds r1, r5, #0
	movs r2, #0xa
	bl FUN_0200DA3C
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223EA10: .4byte ov104_0223EA14
	thumb_func_end ov104_0223E9F8

	thumb_func_start ov104_0223EA14
ov104_0223EA14: @ 0x0223EA14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1]
	bl ov104_0223E9CC
	adds r0, r4, #0
	bl FUN_0200DA58
	pop {r4, pc}
	thumb_func_end ov104_0223EA14

	thumb_func_start ov104_0223EA28
ov104_0223EA28: @ 0x0223EA28
	str r1, [r0]
	str r1, [r0, #4]
	subs r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov104_0223EA28

	thumb_func_start ov104_0223EA38
ov104_0223EA38: @ 0x0223EA38
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	muls r0, r1, r0
	ldr r1, [r4, #0x10]
	blx FUN_020E1F6C
	ldr r1, [r4, #4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r0, r0, #1
	cmp r0, r1
	bgt _0223EA5E
	str r0, [r4, #0xc]
	movs r0, #0
	pop {r4, pc}
_0223EA5E:
	str r1, [r4, #0xc]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov104_0223EA38

	thumb_func_start ov104_0223EA64
ov104_0223EA64: @ 0x0223EA64
	push {r4, lr}
	movs r1, #0x30
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x30
	adds r4, r0, #0
	blx FUN_020D5124
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223EA64

	thumb_func_start ov104_0223EA7C
ov104_0223EA7C: @ 0x0223EA7C
	ldr r3, _0223EA80 @ =FUN_020181C4
	bx r3
	.align 2, 0
_0223EA80: .4byte FUN_020181C4
	thumb_func_end ov104_0223EA7C

	thumb_func_start ov104_0223EA84
ov104_0223EA84: @ 0x0223EA84
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r0, #0
	beq _0223EA9A
	bl FUN_02022974
_0223EA9A:
	ldr r3, [sp, #0x1c]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov104_0223EA28
	adds r0, r5, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	adds r0, #0x14
	adds r1, r7, #0
	bl ov104_0223EA28
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, [sp, #0x28]
	adds r0, #0x2d
	strb r1, [r0]
	add r0, sp, #0x2c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x2f
	strb r1, [r0]
	movs r0, #1
	adds r5, #0x2e
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov104_0223EA84

	thumb_func_start ov104_0223EADC
ov104_0223EADC: @ 0x0223EADC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223EAF2
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223EAF2:
	bl ov104_0223EA38
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x14
	bl ov104_0223EA38
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5]
	ldr r6, [r5, #0x14]
	lsrs r1, r0, #1
	subs r1, r2, r1
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	adds r1, r5, #0
	adds r1, #0x2d
	ldrb r2, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsrs r1, r2, #1
	str r0, [sp]
	adds r0, r5, #0
	subs r1, r6, r1
	adds r0, #0x2f
	lsls r1, r1, #0x10
	ldrb r0, [r0]
	asrs r1, r1, #0x10
	adds r2, r1, r2
	str r0, [sp, #4]
	lsls r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asrs r2, r2, #0x10
	bl ov104_0223EB44
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_0223EADC

	thumb_func_start ov104_0223EB44
ov104_0223EB44: @ 0x0223EB44
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x18]
	adds r4, r1, #0
	cmp r5, #0
	ble _0223EB9C
	cmp r2, #0
	ble _0223EB9C
	cmp r3, r5
	beq _0223EB9C
	cmp r4, r2
	beq _0223EB9C
	cmp r3, #0
	bge _0223EB62
	movs r3, #0
_0223EB62:
	movs r1, #1
	lsls r1, r1, #8
	cmp r5, r1
	ble _0223EB6C
	adds r5, r1, #0
_0223EB6C:
	cmp r4, #0
	bge _0223EB72
	movs r4, #0
_0223EB72:
	movs r1, #1
	lsls r1, r1, #8
	cmp r2, r1
	ble _0223EB7C
	adds r2, r1, #0
_0223EB7C:
	subs r1, r5, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	subs r1, r2, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r3, #0x10
	add r1, sp, #8
	lsls r3, r4, #0x10
	ldrb r1, [r1, #0x14]
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
_0223EB9C:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223EB44

	thumb_func_start ov104_0223EBA0
ov104_0223EBA0: @ 0x0223EBA0
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x19
	lsls r1, r1, #4
	adds r6, r0, #0
	bl FUN_02018144
	movs r2, #0x19
	movs r1, #0
	lsls r2, r2, #4
	adds r7, r0, #0
	blx FUN_020D5124
	movs r4, #0
	adds r5, r7, #0
_0223EBBC:
	adds r0, r6, #0
	bl ov104_0223EA64
	str r0, [r5, #4]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x60
	blt _0223EBBC
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223EBA0

	thumb_func_start ov104_0223EBD0
ov104_0223EBD0: @ 0x0223EBD0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_0223EBD8:
	ldr r0, [r5, #4]
	bl ov104_0223EA7C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x60
	blt _0223EBD8
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov104_0223EBD0

	thumb_func_start ov104_0223EBF0
ov104_0223EBF0: @ 0x0223EBF0
	push {r3, r4}
	str r3, [r0]
	ldr r3, _0223EC30 @ =0xFFFFFFF8
	add r3, sp
	ldrb r4, [r3, #0x10]
	movs r3, #0x63
	lsls r3, r3, #2
	strb r4, [r0, r3]
	subs r4, r3, #3
	strb r1, [r0, r4]
	subs r1, r3, #2
	strb r2, [r0, r1]
	adds r2, r3, #0
	movs r1, #0
	subs r2, #8
	strb r1, [r0, r2]
	subs r2, r3, #7
	strb r1, [r0, r2]
	subs r2, r3, #6
	strb r1, [r0, r2]
	subs r2, r3, #5
	strb r1, [r0, r2]
	subs r2, r3, #4
	strb r1, [r0, r2]
	subs r2, r3, #1
	strb r1, [r0, r2]
	movs r2, #1
	adds r1, r3, #1
	strb r2, [r0, r1]
	pop {r3, r4}
	bx lr
	nop
_0223EC30: .4byte 0xFFFFFFF8
	thumb_func_end ov104_0223EBF0

	thumb_func_start ov104_0223EC34
ov104_0223EC34: @ 0x0223EC34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, _0223EE38 @ =0x0000018D
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _0223EC48
	add sp, #0x1c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223EC48:
	adds r1, r0, #0
	subs r1, #9
	ldrb r1, [r5, r1]
	cmp r1, #0x60
	bhs _0223EC62
	subs r1, r0, #2
	ldrsb r1, [r5, r1]
	subs r2, r1, #1
	subs r1, r0, #2
	strb r2, [r5, r1]
	ldrsb r1, [r5, r1]
	cmp r1, #0
	ble _0223EC64
_0223EC62:
	b _0223EDDE
_0223EC64:
	subs r1, r0, #3
	ldrb r2, [r5, r1]
	subs r1, r0, #2
	ldr r3, _0223EE3C @ =0x02241970
	strb r2, [r5, r1]
	subs r1, r0, #6
	ldrb r1, [r5, r1]
	lsls r4, r1, #4
	adds r1, r0, #0
	subs r1, #8
	ldrb r2, [r5, r1]
	adds r1, r3, r4
	subs r3, r0, #7
	ldrb r3, [r5, r3]
	subs r4, r0, #4
	ldrb r1, [r2, r1]
	lsls r3, r3, #4
	adds r3, #8
	str r3, [sp]
	ldrb r4, [r5, r4]
	lsls r1, r1, #5
	adds r2, r1, #0
	str r4, [sp, #4]
	ldr r4, [r5]
	adds r2, #0x20
	str r4, [sp, #8]
	movs r4, #0x20
	str r4, [sp, #0xc]
	movs r4, #0x10
	str r4, [sp, #0x10]
	subs r4, r0, #1
	ldrb r4, [r5, r4]
	subs r0, #9
	str r4, [sp, #0x14]
	ldrb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r0, _0223EE40 @ =0x00000187
	movs r1, #1
	ldrb r2, [r5, r0]
	ldr r3, _0223EE3C @ =0x02241970
	eors r1, r2
	lsls r4, r1, #4
	subs r1, r0, #2
	ldrb r2, [r5, r1]
	adds r1, r3, r4
	subs r3, r0, #1
	ldrb r4, [r5, r3]
	movs r3, #5
	ldrb r1, [r2, r1]
	subs r3, r3, r4
	lsls r3, r3, #4
	adds r3, #8
	str r3, [sp]
	adds r4, r0, #2
	ldrb r4, [r5, r4]
	lsls r1, r1, #5
	adds r2, r1, #0
	str r4, [sp, #4]
	ldr r4, [r5]
	adds r2, #0x20
	str r4, [sp, #8]
	movs r4, #0x20
	str r4, [sp, #0xc]
	movs r4, #0x10
	str r4, [sp, #0x10]
	adds r4, r0, #5
	ldrb r4, [r5, r4]
	subs r0, r0, #3
	str r4, [sp, #0x14]
	ldrb r0, [r5, r0]
	adds r0, r0, #1
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r0, _0223EE40 @ =0x00000187
	ldr r3, _0223EE3C @ =0x02241970
	ldrb r1, [r5, r0]
	lsls r4, r1, #4
	subs r1, r0, #2
	ldrb r2, [r5, r1]
	adds r1, r3, r4
	ldrb r1, [r2, r1]
	subs r2, r0, #1
	ldrb r2, [r5, r2]
	lsls r1, r1, #5
	adds r2, r2, #6
	lsls r3, r2, #4
	adds r3, #8
	str r3, [sp]
	adds r2, r0, #2
	ldrb r2, [r5, r2]
	str r2, [sp, #4]
	ldr r2, [r5]
	str r2, [sp, #8]
	movs r2, #0x20
	str r2, [sp, #0xc]
	movs r2, #0x10
	str r2, [sp, #0x10]
	adds r2, r0, #5
	ldrb r2, [r5, r2]
	subs r0, r0, #3
	str r2, [sp, #0x14]
	ldrb r0, [r5, r0]
	adds r2, r1, #0
	adds r2, #0x20
	adds r0, r0, #2
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r0, _0223EE40 @ =0x00000187
	movs r1, #1
	ldrb r2, [r5, r0]
	ldr r3, _0223EE3C @ =0x02241970
	eors r1, r2
	lsls r4, r1, #4
	subs r1, r0, #2
	ldrb r2, [r5, r1]
	adds r1, r3, r4
	ldrb r1, [r2, r1]
	subs r2, r0, #1
	ldrb r3, [r5, r2]
	movs r2, #0xb
	lsls r1, r1, #5
	subs r2, r2, r3
	lsls r3, r2, #4
	adds r3, #8
	str r3, [sp]
	adds r2, r0, #2
	ldrb r2, [r5, r2]
	str r2, [sp, #4]
	ldr r2, [r5]
	str r2, [sp, #8]
	movs r2, #0x20
	str r2, [sp, #0xc]
	movs r2, #0x10
	str r2, [sp, #0x10]
	adds r2, r0, #5
	ldrb r2, [r5, r2]
	subs r0, r0, #3
	str r2, [sp, #0x14]
	ldrb r0, [r5, r0]
	adds r2, r1, #0
	adds r2, #0x20
	adds r0, r0, #3
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	movs r1, #0x61
	lsls r1, r1, #2
	ldrb r0, [r5, r1]
	adds r0, r0, #4
	strb r0, [r5, r1]
	adds r0, r1, #1
	ldrb r0, [r5, r0]
	adds r2, r0, #1
	adds r0, r1, #1
	strb r2, [r5, r0]
	ldrb r0, [r5, r0]
	lsrs r3, r0, #0x1f
	lsls r2, r0, #0x1d
	subs r2, r2, r3
	movs r0, #0x1d
	rors r2, r0
	adds r0, r3, r2
	bne _0223EDDE
	adds r0, r1, #3
	ldrb r2, [r5, r0]
	movs r0, #1
	eors r2, r0
	adds r0, r1, #3
	strb r2, [r5, r0]
	adds r0, r1, #2
	ldrb r0, [r5, r0]
	adds r2, r0, #1
	adds r0, r1, #2
	strb r2, [r5, r0]
	movs r2, #0
	adds r0, r1, #1
	strb r2, [r5, r0]
_0223EDDE:
	movs r0, #0x62
	lsls r0, r0, #2
	ldrb r4, [r5, r0]
	subs r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0223EE14
	lsls r0, r4, #2
	movs r7, #0x62
	adds r6, r5, r0
	lsls r7, r7, #2
_0223EDF4:
	ldr r0, [r6, #4]
	bl ov104_0223EADC
	str r0, [sp, #0x18]
	cmp r0, #1
	bne _0223EE06
	ldrb r0, [r5, r7]
	adds r0, r0, #1
	strb r0, [r5, r7]
_0223EE06:
	movs r0, #0x61
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, r0
	blt _0223EDF4
_0223EE14:
	movs r1, #0x62
	lsls r1, r1, #2
	ldrb r0, [r5, r1]
	cmp r0, #0x60
	blo _0223EE30
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0223EE30
	movs r2, #0
	adds r0, r1, #5
	strb r2, [r5, r0]
	add sp, #0x1c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223EE30:
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223EE38: .4byte 0x0000018D
_0223EE3C: .4byte 0x02241970
_0223EE40: .4byte 0x00000187
	thumb_func_end ov104_0223EC34

	thumb_func_start ov104_0223EE44
ov104_0223EE44: @ 0x0223EE44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, _0223F04C @ =0x0000018D
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _0223EE58
	add sp, #0x1c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223EE58:
	adds r1, r0, #0
	subs r1, #9
	ldrb r1, [r5, r1]
	cmp r1, #0x60
	bhs _0223EE72
	subs r1, r0, #2
	ldrsb r1, [r5, r1]
	subs r2, r1, #1
	subs r1, r0, #2
	strb r2, [r5, r1]
	ldrsb r1, [r5, r1]
	cmp r1, #0
	ble _0223EE74
_0223EE72:
	b _0223EFF4
_0223EE74:
	subs r1, r0, #3
	ldrb r2, [r5, r1]
	subs r1, r0, #2
	ldr r4, _0223F050 @ =0x02241964
	strb r2, [r5, r1]
	subs r2, r0, #6
	ldrb r3, [r5, r2]
	movs r2, #6
	adds r1, r0, #0
	muls r2, r3, r2
	subs r3, r0, #7
	ldrb r3, [r5, r3]
	adds r2, r4, r2
	subs r1, #8
	ldrb r2, [r3, r2]
	ldrb r1, [r5, r1]
	lsls r3, r2, #5
	adds r2, r3, #0
	adds r2, #0x20
	str r2, [sp]
	subs r2, r0, #4
	ldrb r2, [r5, r2]
	lsls r1, r1, #4
	adds r1, #8
	str r2, [sp, #4]
	ldr r2, [r5]
	str r2, [sp, #8]
	movs r2, #0x10
	str r2, [sp, #0xc]
	movs r2, #0x20
	str r2, [sp, #0x10]
	subs r2, r0, #1
	ldrb r2, [r5, r2]
	subs r0, #9
	str r2, [sp, #0x14]
	ldrb r0, [r5, r0]
	adds r2, r1, #0
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r2, _0223F054 @ =0x00000185
	movs r0, #7
	ldrb r1, [r5, r2]
	subs r0, r0, r1
	lsls r1, r0, #4
	adds r0, r2, #2
	ldrb r3, [r5, r0]
	movs r0, #1
	adds r1, #8
	eors r3, r0
	movs r0, #6
	muls r0, r3, r0
	adds r3, r2, #1
	ldrb r3, [r5, r3]
	adds r0, r4, r0
	ldrb r0, [r3, r0]
	lsls r3, r0, #5
	adds r0, r3, #0
	adds r0, #0x20
	str r0, [sp]
	adds r0, r2, #4
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	adds r0, r2, #7
	ldrb r0, [r5, r0]
	str r0, [sp, #0x14]
	subs r0, r2, #1
	ldrb r0, [r5, r0]
	adds r2, r1, #0
	adds r0, r0, #1
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r2, _0223F054 @ =0x00000185
	ldrb r0, [r5, r2]
	adds r0, #8
	lsls r1, r0, #4
	adds r0, r2, #2
	ldrb r3, [r5, r0]
	movs r0, #6
	adds r1, #8
	muls r0, r3, r0
	adds r3, r2, #1
	ldrb r3, [r5, r3]
	adds r0, r4, r0
	ldrb r0, [r3, r0]
	lsls r3, r0, #5
	adds r0, r3, #0
	adds r0, #0x20
	str r0, [sp]
	adds r0, r2, #4
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	adds r0, r2, #7
	ldrb r0, [r5, r0]
	str r0, [sp, #0x14]
	subs r0, r2, #1
	ldrb r0, [r5, r0]
	adds r2, r1, #0
	adds r0, r0, #2
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	ldr r2, _0223F054 @ =0x00000185
	movs r0, #0xf
	ldrb r1, [r5, r2]
	subs r0, r0, r1
	lsls r1, r0, #4
	adds r0, r2, #2
	ldrb r3, [r5, r0]
	movs r0, #1
	adds r1, #8
	eors r3, r0
	movs r0, #6
	muls r0, r3, r0
	adds r3, r2, #1
	ldrb r3, [r5, r3]
	adds r0, r4, r0
	ldrb r0, [r3, r0]
	lsls r3, r0, #5
	adds r0, r3, #0
	adds r0, #0x20
	str r0, [sp]
	adds r0, r2, #4
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	adds r0, r2, #7
	ldrb r0, [r5, r0]
	str r0, [sp, #0x14]
	subs r0, r2, #1
	ldrb r0, [r5, r0]
	adds r2, r1, #0
	adds r0, r0, #3
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl ov104_0223EA84
	movs r0, #0x61
	lsls r0, r0, #2
	ldrb r1, [r5, r0]
	adds r1, r1, #4
	strb r1, [r5, r0]
	adds r1, r0, #2
	ldrb r1, [r5, r1]
	adds r2, r1, #1
	adds r1, r0, #2
	strb r2, [r5, r1]
	adds r0, r0, #2
	ldrb r0, [r5, r0]
	movs r1, #6
	blx FUN_020E1F6C
	cmp r1, #0
	bne _0223EFF4
	ldr r1, _0223F058 @ =0x00000187
	movs r0, #1
	ldrb r2, [r5, r1]
	eors r0, r2
	strb r0, [r5, r1]
	subs r0, r1, #2
	ldrb r0, [r5, r0]
	adds r2, r0, #1
	subs r0, r1, #2
	strb r2, [r5, r0]
	movs r2, #0
	subs r0, r1, #1
	strb r2, [r5, r0]
_0223EFF4:
	movs r0, #0x62
	lsls r0, r0, #2
	ldrb r4, [r5, r0]
	subs r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0223F02A
	lsls r0, r4, #2
	movs r7, #0x62
	adds r6, r5, r0
	lsls r7, r7, #2
_0223F00A:
	ldr r0, [r6, #4]
	bl ov104_0223EADC
	str r0, [sp, #0x18]
	cmp r0, #1
	bne _0223F01C
	ldrb r0, [r5, r7]
	adds r0, r0, #1
	strb r0, [r5, r7]
_0223F01C:
	movs r0, #0x61
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, r0
	blt _0223F00A
_0223F02A:
	movs r1, #0x62
	lsls r1, r1, #2
	ldrb r0, [r5, r1]
	cmp r0, #0x60
	blo _0223F046
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0223F046
	movs r2, #0
	adds r0, r1, #5
	strb r2, [r5, r0]
	add sp, #0x1c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223F046:
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223F04C: .4byte 0x0000018D
_0223F050: .4byte 0x02241964
_0223F054: .4byte 0x00000185
_0223F058: .4byte 0x00000187
	thumb_func_end ov104_0223EE44

	thumb_func_start ov104_0223F05C
ov104_0223F05C: @ 0x0223F05C
	ldr r3, _0223F068 @ =FUN_0200DA04
	movs r2, #1
	adds r1, r0, #0
	ldr r0, _0223F06C @ =ov104_0223F070
	lsls r2, r2, #0xa
	bx r3
	.align 2, 0
_0223F068: .4byte FUN_0200DA04
_0223F06C: .4byte ov104_0223F070
	thumb_func_end ov104_0223F05C

	thumb_func_start ov104_0223F070
ov104_0223F070: @ 0x0223F070
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #2
	blo _0223F084
	ldr r0, [r4]
	bl FUN_02013DA4
	movs r0, #0
	str r0, [r4, #8]
_0223F084:
	ldr r0, [r4]
	bl FUN_02013DDC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223F070

	thumb_func_start ov104_0223F094
ov104_0223F094: @ 0x0223F094
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_02013BE0
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ov104_0223F05C
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223F094

	thumb_func_start ov104_0223F0B0
ov104_0223F0B0: @ 0x0223F0B0
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	add r5, sp, #0x10
	str r4, [sp]
	movs r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0]
	bl FUN_02013C10
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov104_0223F0B0

	thumb_func_start ov104_0223F0D8
ov104_0223F0D8: @ 0x0223F0D8
	push {r3, lr}
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0223F0EC
	movs r0, #1
	str r0, [r1, #0xc]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x10]
	blx r1
	pop {r3, pc}
_0223F0EC:
	bl FUN_02013BA8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov104_0223F0D8

	thumb_func_start ov104_0223F0F4
ov104_0223F0F4: @ 0x0223F0F4
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0223F10E
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223F10E
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	movs r0, #0
	str r0, [r4, #0xc]
_0223F10E:
	pop {r4, pc}
	thumb_func_end ov104_0223F0F4

	thumb_func_start ov104_0223F110
ov104_0223F110: @ 0x0223F110
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r5, #0
	bne _0223F122
	bl FUN_02022974
_0223F122:
	movs r0, #1
	str r0, [r5, #8]
	movs r2, #0
	str r2, [r5, #0xc]
	str r4, [r5, #0x18]
	str r6, [r5, #0x10]
	ldr r0, _0223F148 @ =ov104_0223F0D8
	str r7, [r5, #0x14]
	adds r1, r5, #0
	bl FUN_0200DA3C
	str r0, [r5, #4]
	ldr r0, _0223F14C @ =ov104_0223F0F4
	adds r1, r5, #0
	movs r2, #0
	bl FUN_0200DA04
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223F148: .4byte ov104_0223F0D8
_0223F14C: .4byte ov104_0223F0F4
	thumb_func_end ov104_0223F110

	thumb_func_start ov104_0223F150
ov104_0223F150: @ 0x0223F150
	push {r4, lr}
	adds r4, r0, #0
	bne _0223F15A
	bl FUN_02022974
_0223F15A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0223F164
	bl FUN_0200DA58
_0223F164:
	ldr r0, [r4]
	cmp r0, #0
	beq _0223F16E
	bl FUN_0200DA58
_0223F16E:
	bl FUN_02013BA8
	pop {r4, pc}
	thumb_func_end ov104_0223F150

	thumb_func_start ov104_0223F174
ov104_0223F174: @ 0x0223F174
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl FUN_02013B68
	adds r5, r0, #0
	bl FUN_02013BA8
	ldr r1, _0223F194 @ =0x00003020
	adds r0, r5, #0
	ldr r1, [r4, r1]
	movs r2, #0x20
	movs r3, #1
	bl FUN_02013BB8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223F194: .4byte 0x00003020
	thumb_func_end ov104_0223F174

	thumb_func_start ov104_0223F198
ov104_0223F198: @ 0x0223F198
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl FUN_02013B94
	adds r0, r4, #0
	bl ov104_0223F174
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223F198

	thumb_func_start ov104_0223F1AC
ov104_0223F1AC: @ 0x0223F1AC
	ldr r3, _0223F1B0 @ =ov104_0223F174
	bx r3
	.align 2, 0
_0223F1B0: .4byte ov104_0223F174
	thumb_func_end ov104_0223F1AC

	thumb_func_start ov104_0223F1B4
ov104_0223F1B4: @ 0x0223F1B4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r0, #0
	ldr r1, _0223F244 @ =0x00003024
	adds r0, r5, #0
	bl FUN_02018144
	ldr r2, _0223F244 @ =0x00003024
	str r0, [sp]
	movs r1, #0
	blx FUN_020D5124
	ldr r0, [sp]
	cmp r0, #0
	bne _0223F1D8
	bl FUN_02022974
_0223F1D8:
	ldr r1, [sp]
	ldr r3, _0223F248 @ =0x00001820
	ldr r2, [sp]
	adds r0, r5, #0
	adds r1, #0x20
	adds r2, r2, r3
	bl FUN_02013B10
	ldr r1, [sp]
	cmp r0, #0
	str r0, [r1, #0x1c]
	bne _0223F1F4
	bl FUN_02022974
_0223F1F4:
	ldr r0, [sp]
	ldr r1, _0223F24C @ =0x00003020
	movs r5, #0
	str r4, [r0, r1]
	adds r6, r0, #0
_0223F1FE:
	adds r3, r6, #0
	adds r4, r7, #0
	adds r3, #0x20
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, _0223F248 @ =0x00001820
	adds r3, r7, #0
	adds r4, r6, r0
	ldm r3!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r3!, {r0, r1}
	adds r5, r5, #1
	adds r6, r2, #0
	stm r4!, {r0, r1}
	cmp r5, #0xc0
	blt _0223F1FE
	ldr r0, [sp]
	ldr r2, _0223F250 @ =ov104_0223F198
	ldr r3, _0223F254 @ =ov104_0223F1AC
	adds r1, r0, #0
	bl ov104_0223F110
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223F244: .4byte 0x00003024
_0223F248: .4byte 0x00001820
_0223F24C: .4byte 0x00003020
_0223F250: .4byte ov104_0223F198
_0223F254: .4byte ov104_0223F1AC
	thumb_func_end ov104_0223F1B4

	thumb_func_start ov104_0223F258
ov104_0223F258: @ 0x0223F258
	push {r4, lr}
	adds r4, r0, #0
	bne _0223F262
	bl FUN_02022974
_0223F262:
	adds r0, r4, #0
	bl ov104_0223F150
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0223F272
	bl FUN_02013B40
_0223F272:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223F258

	thumb_func_start ov104_0223F27C
ov104_0223F27C: @ 0x0223F27C
	push {r4, lr}
	adds r4, r0, #0
	bne _0223F286
	bl FUN_02022974
_0223F286:
	ldr r0, [r4, #0x1c]
	bl FUN_02013B54
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov104_0223F27C
	@ 0x0223F290
