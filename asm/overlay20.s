
	thumb_func_start ov20_021D0D80
ov20_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #0
	beq _021D0D92
	cmp r1, #1
	beq _021D0DCA
	b _021D0DF2
_021D0D92:
	movs r1, #0
	movs r0, #0x3e
	adds r2, r1, #0
	bl FUN_02004550
	movs r2, #2
	movs r0, #3
	movs r1, #0x22
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	movs r2, #0xa
	movs r0, #3
	movs r1, #0x23
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	adds r0, r5, #0
	bl ov20_021D0EC8
	ldr r0, [r0, #0x14]
	movs r1, #0
	bl ov20_021D21A0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0DF2
_021D0DCA:
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D0DF2
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021D0DE8
	ldr r0, [r4, #0x14]
	bl ov20_021D2DF4
	b _021D0DEA
_021D0DE8:
	movs r0, #0
_021D0DEA:
	adds r4, #0x64
	strb r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D0DF2:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D0D80

	thumb_func_start ov20_021D0DF8
ov20_021D0DF8: @ 0x021D0DF8
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _021D0E34 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	strh r1, [r4, #0x30]
	ldr r1, [r0, #0x44]
	strh r1, [r4, #0x32]
	ldr r0, [r0, #0x4c]
	strh r0, [r4, #0x34]
	ldr r0, [r4, #0x40]
	bl FUN_0202404C
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _021D0E26
	adds r0, r4, #0
	adds r4, #0x28
	adds r1, r4, #0
	blx r2
	movs r0, #0
	pop {r4, pc}
_021D0E26:
	adds r1, r4, #0
	ldr r2, [r4, #0x20]
	adds r0, r4, #0
	adds r1, #0x1c
	blx r2
	pop {r4, pc}
	nop
_021D0E34: .4byte 0x021BF67C
	thumb_func_end ov20_021D0DF8

	thumb_func_start ov20_021D0E38
ov20_021D0E38: @ 0x021D0E38
	push {r4, lr}
	adds r4, r2, #0
	cmp r1, #3
	bhi _021D0EA0
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0E4C: @ jump table
	.2byte _021D0E54 - _021D0E4C - 2 @ case 0
	.2byte _021D0E74 - _021D0E4C - 2 @ case 1
	.2byte _021D0E96 - _021D0E4C - 2 @ case 2
	.2byte _021D0E74 - _021D0E4C - 2 @ case 3
_021D0E54:
	str r0, [r4, #0x38]
	cmp r0, #2
	beq _021D0E60
	cmp r0, #3
	beq _021D0E6A
	pop {r4, pc}
_021D0E60:
	ldr r0, [r4, #0x14]
	movs r1, #0x19
	bl ov20_021D21A0
	pop {r4, pc}
_021D0E6A:
	ldr r0, [r4, #0x14]
	movs r1, #0x1a
	bl ov20_021D21A0
	pop {r4, pc}
_021D0E74:
	cmp r0, #2
	beq _021D0E7E
	cmp r0, #3
	beq _021D0E88
	b _021D0E90
_021D0E7E:
	ldr r0, [r4, #0x14]
	movs r1, #0x1b
	bl ov20_021D21A0
	b _021D0E90
_021D0E88:
	ldr r0, [r4, #0x14]
	movs r1, #0x1c
	bl ov20_021D21A0
_021D0E90:
	movs r0, #4
	str r0, [r4, #0x38]
	pop {r4, pc}
_021D0E96:
	subs r1, r0, #2
	cmp r1, #1
	bhi _021D0EA4
	str r0, [r4, #0x38]
	pop {r4, pc}
_021D0EA0:
	movs r0, #4
	str r0, [r4, #0x38]
_021D0EA4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D0E38

	thumb_func_start ov20_021D0EA8
ov20_021D0EA8: @ 0x021D0EA8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	adds r1, r4, #0
	bl ov20_021D1014
	movs r0, #0x22
	bl FUN_0201807C
	movs r0, #0x23
	bl FUN_0201807C
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D0EA8

	thumb_func_start ov20_021D0EC8
ov20_021D0EC8: @ 0x021D0EC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x68
	movs r2, #0x22
	bl FUN_0200681C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	str r0, [r4]
	bl FUN_02097550
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	ldr r0, [r4]
	adds r1, #0x10
	adds r2, #8
	bl FUN_0209756C
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021D0F04
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x60
	adds r1, #8
	bl ov20_021D0F64
_021D0F04:
	ldr r1, [r4]
	movs r0, #0x22
	bl FUN_020998EC
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x18]
	adds r0, r4, #0
	bl ov20_021D2098
	str r0, [r4, #0x14]
	movs r0, #0x22
	str r0, [sp]
	ldr r0, _021D0F54 @ =0x021D5154
	ldr r2, _021D0F58 @ =ov20_021D0E38
	movs r1, #5
	adds r3, r4, #0
	bl FUN_02023FCC
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x44]
	adds r0, r4, #0
	str r1, [r4, #0x48]
	adds r0, #0x65
	strb r1, [r0]
	str r1, [r4, #0x2c]
	ldr r0, _021D0F5C @ =ov20_021D103C
	str r1, [r4, #0x28]
	str r0, [r4, #0x20]
	adds r0, r4, #0
	str r1, [r4, #0x1c]
	adds r0, #0x4e
	strh r1, [r0]
	ldr r1, _021D0F60 @ =ov20_021D1C5C
	adds r0, r4, #0
	bl ov20_021D1C4C
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D0F54: .4byte 0x021D5154
_021D0F58: .4byte ov20_021D0E38
_021D0F5C: .4byte ov20_021D103C
_021D0F60: .4byte ov20_021D1C5C
	thumb_func_end ov20_021D0EC8

	thumb_func_start ov20_021D0F64
ov20_021D0F64: @ 0x021D0F64
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02014C80
	strh r0, [r5]
	movs r0, #0
	ldrsh r0, [r5, r0]
	bl FUN_02014CD4
	strb r0, [r5, #3]
	adds r0, r4, #0
	bl FUN_02014C84
	strb r0, [r5, #2]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D0F64

	thumb_func_start ov20_021D0F88
ov20_021D0F88: @ 0x021D0F88
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #2
	adds r4, r1, #0
	ldrsb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, #2]
	ldrsb r1, [r5, r0]
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r1, r0
	blt _021D0FBC
	movs r1, #0
	strb r1, [r5, #2]
	ldrsh r0, [r5, r1]
	adds r0, r0, #1
	strh r0, [r5]
	ldrsh r0, [r5, r1]
	cmp r0, #5
	blt _021D0FB2
	strh r1, [r5]
_021D0FB2:
	movs r0, #0
	ldrsh r0, [r5, r0]
	bl FUN_02014CD4
	strb r0, [r5, #3]
_021D0FBC:
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r5, r1]
	ldrsb r2, [r5, r2]
	adds r0, r4, #0
	bl FUN_02014CE0
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D0F88

	thumb_func_start ov20_021D0FCC
ov20_021D0FCC: @ 0x021D0FCC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #2
	adds r4, r1, #0
	ldrsb r1, [r5, r0]
	subs r1, r1, #1
	strb r1, [r5, #2]
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _021D1004
	movs r0, #0
	ldrsh r1, [r5, r0]
	subs r1, r1, #1
	strh r1, [r5]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _021D0FF2
	movs r0, #4
	strh r0, [r5]
_021D0FF2:
	movs r0, #0
	ldrsh r0, [r5, r0]
	bl FUN_02014CD4
	strb r0, [r5, #3]
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, r0, #1
	strb r0, [r5, #2]
_021D1004:
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r5, r1]
	ldrsb r2, [r5, r2]
	adds r0, r4, #0
	bl FUN_02014CE0
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D0FCC

	thumb_func_start ov20_021D1014
ov20_021D1014: @ 0x021D1014
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	adds r4, r1, #0
	bl FUN_02024034
	ldr r0, [r5, #0x14]
	bl ov20_021D2128
	ldr r0, [r5, #0x18]
	bl FUN_0209992C
	adds r0, r4, #0
	bl FUN_02006830
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D1014

	thumb_func_start ov20_021D1034
ov20_021D1034: @ 0x021D1034
	str r1, [r0, #0x20]
	movs r1, #0
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov20_021D1034

	thumb_func_start ov20_021D103C
ov20_021D103C: @ 0x021D103C
	push {r3, lr}
	ldr r2, [r0, #4]
	lsls r3, r2, #2
	ldr r2, _021D104C @ =0x021D5148
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_021D104C: .4byte 0x021D5148
	thumb_func_end ov20_021D103C

	thumb_func_start ov20_021D1050
ov20_021D1050: @ 0x021D1050
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D1066
	cmp r0, #1
	beq _021D10F0
	cmp r0, #2
	beq _021D1104
	b _021D1116
_021D1066:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	bne _021D1076
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D108C
_021D1076:
	cmp r1, #1
	bne _021D1084
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D108C
_021D1084:
	ldrh r0, [r5, #0x30]
	movs r1, #4
	tst r1, r0
	beq _021D1096
_021D108C:
	ldr r1, _021D111C @ =ov20_021D1F38
	adds r0, r5, #0
	bl ov20_021D1C4C
	b _021D1116
_021D1096:
	movs r1, #0x88
	tst r1, r0
	beq _021D10B8
	ldr r0, _021D1120 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x4c
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	movs r1, #4
	bl ov20_021D21A0
	movs r0, #1
	str r0, [r4]
	b _021D1116
_021D10B8:
	movs r1, #2
	tst r1, r0
	beq _021D10CE
	ldr r0, _021D1120 @ =0x000005DC
	bl FUN_02005748
	ldr r1, _021D1124 @ =ov20_021D1DBC
	adds r0, r5, #0
	bl ov20_021D1C4C
	b _021D1116
_021D10CE:
	movs r1, #1
	tst r0, r1
	beq _021D1116
	ldr r0, _021D1120 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	movs r1, #6
	bl ov20_021D21A0
	movs r0, #2
	str r0, [r4]
	b _021D1116
_021D10F0:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1116
	ldr r1, _021D1128 @ =ov20_021D1468
	adds r0, r5, #0
	bl ov20_021D1034
	b _021D1116
_021D1104:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1116
	ldr r1, _021D112C @ =ov20_021D15A0
	adds r0, r5, #0
	bl ov20_021D1034
_021D1116:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D111C: .4byte ov20_021D1F38
_021D1120: .4byte 0x000005DC
_021D1124: .4byte ov20_021D1DBC
_021D1128: .4byte ov20_021D1468
_021D112C: .4byte ov20_021D15A0
	thumb_func_end ov20_021D1050

	thumb_func_start ov20_021D1130
ov20_021D1130: @ 0x021D1130
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D1146
	cmp r0, #1
	beq _021D1220
	cmp r0, #2
	beq _021D1234
	b _021D1246
_021D1146:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	bne _021D1156
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D116C
_021D1156:
	cmp r1, #1
	bne _021D1164
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D116C
_021D1164:
	ldrh r0, [r5, #0x30]
	movs r1, #4
	tst r1, r0
	beq _021D1176
_021D116C:
	ldr r1, _021D124C @ =ov20_021D1F38
	adds r0, r5, #0
	bl ov20_021D1C4C
	b _021D1246
_021D1176:
	movs r1, #0x88
	tst r1, r0
	beq _021D1198
	ldr r0, _021D1250 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x4c
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	movs r1, #4
	bl ov20_021D21A0
	movs r0, #1
	str r0, [r4]
	b _021D1246
_021D1198:
	movs r1, #0x20
	tst r1, r0
	beq _021D11C0
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _021D1246
	ldr r0, _021D1250 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x4e
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	movs r1, #0xc
	bl ov20_021D21A0
	b _021D1246
_021D11C0:
	movs r1, #0x10
	tst r1, r0
	beq _021D11E8
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _021D1246
	ldr r0, _021D1250 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x4e
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	movs r1, #0xc
	bl ov20_021D21A0
	b _021D1246
_021D11E8:
	movs r1, #2
	tst r1, r0
	beq _021D11FE
	ldr r0, _021D1250 @ =0x000005DC
	bl FUN_02005748
	ldr r1, _021D1254 @ =ov20_021D1DBC
	adds r0, r5, #0
	bl ov20_021D1C4C
	b _021D1246
_021D11FE:
	movs r1, #1
	tst r0, r1
	beq _021D1246
	ldr r0, _021D1250 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	movs r1, #6
	bl ov20_021D21A0
	movs r0, #2
	str r0, [r4]
	b _021D1246
_021D1220:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1246
	ldr r1, _021D1258 @ =ov20_021D1468
	adds r0, r5, #0
	bl ov20_021D1034
	b _021D1246
_021D1234:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1246
	ldr r1, _021D125C @ =ov20_021D15A0
	adds r0, r5, #0
	bl ov20_021D1034
_021D1246:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D124C: .4byte ov20_021D1F38
_021D1250: .4byte 0x000005DC
_021D1254: .4byte ov20_021D1DBC
_021D1258: .4byte ov20_021D1468
_021D125C: .4byte ov20_021D15A0
	thumb_func_end ov20_021D1130

	thumb_func_start ov20_021D1260
ov20_021D1260: @ 0x021D1260
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #4
	bhi _021D12DC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D1278: @ jump table
	.2byte _021D1282 - _021D1278 - 2 @ case 0
	.2byte _021D1292 - _021D1278 - 2 @ case 1
	.2byte _021D1416 - _021D1278 - 2 @ case 2
	.2byte _021D1428 - _021D1278 - 2 @ case 3
	.2byte _021D143C - _021D1278 - 2 @ case 4
_021D1282:
	ldr r0, [r4, #0x14]
	bl ov20_021D2DF4
	adds r1, r4, #0
	adds r1, #0x64
	strb r0, [r1]
	movs r0, #1
	str r0, [r5]
_021D1292:
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _021D12A2
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D12B8
_021D12A2:
	cmp r1, #1
	bne _021D12B0
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D12B8
_021D12B0:
	ldrh r0, [r4, #0x30]
	movs r1, #4
	tst r1, r0
	beq _021D12C2
_021D12B8:
	ldr r1, _021D1454 @ =ov20_021D1F38
	adds r0, r4, #0
	bl ov20_021D1C4C
	b _021D144E
_021D12C2:
	movs r1, #0x40
	tst r1, r0
	beq _021D12FC
	adds r0, r4, #0
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D12DC
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _021D12DE
_021D12DC:
	b _021D144E
_021D12DE:
	ldr r0, _021D1458 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x4e
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #0xc
	bl ov20_021D21A0
	b _021D144E
_021D12FC:
	movs r1, #0x80
	tst r0, r1
	beq _021D134C
	ldr r0, _021D1458 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0x64
	ldrb r2, [r0]
	cmp r2, #0
	beq _021D1336
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r1, [r0]
	subs r0, r2, #1
	cmp r1, r0
	bge _021D1336
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x4e
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #0xc
	bl ov20_021D21A0
	b _021D134C
_021D1336:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #4
	bl ov20_021D21A0
	movs r0, #3
	str r0, [r5]
	b _021D144E
_021D134C:
	ldrh r1, [r4, #0x30]
	movs r0, #8
	tst r0, r1
	bne _021D1366
	movs r0, #1
	adds r2, r1, #0
	ands r2, r0
	beq _021D1382
	adds r0, r4, #0
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D1382
_021D1366:
	ldr r0, _021D1458 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #4
	bl ov20_021D21A0
	movs r0, #3
	str r0, [r5]
	b _021D144E
_021D1382:
	ldrh r0, [r4, #0x34]
	movs r3, #0x20
	tst r3, r0
	beq _021D13B2
	ldr r0, _021D1458 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x4e
	strh r1, [r0]
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x60
	adds r1, #8
	bl ov20_021D0FCC
	ldr r0, [r4, #0x14]
	movs r1, #3
	bl ov20_021D21A0
	movs r0, #2
	str r0, [r5]
	b _021D144E
_021D13B2:
	movs r3, #0x10
	tst r0, r3
	beq _021D13E0
	ldr r0, _021D1458 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x4e
	strh r1, [r0]
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x60
	adds r1, #8
	bl ov20_021D0F88
	ldr r0, [r4, #0x14]
	movs r1, #3
	bl ov20_021D21A0
	movs r0, #2
	str r0, [r5]
	b _021D144E
_021D13E0:
	movs r0, #2
	tst r0, r1
	beq _021D13F6
	ldr r0, _021D1458 @ =0x000005DC
	bl FUN_02005748
	ldr r1, _021D145C @ =ov20_021D1DBC
	adds r0, r4, #0
	bl ov20_021D1C4C
	b _021D144E
_021D13F6:
	cmp r2, #0
	beq _021D144E
	ldr r0, _021D1458 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #6
	bl ov20_021D21A0
	movs r0, #4
	str r0, [r5]
	b _021D144E
_021D1416:
	ldr r0, [r4, #0x14]
	movs r1, #3
	bl ov20_021D2210
	cmp r0, #0
	beq _021D144E
	movs r0, #0
	str r0, [r5]
	b _021D144E
_021D1428:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D144E
	ldr r1, _021D1460 @ =ov20_021D1468
	adds r0, r4, #0
	bl ov20_021D1034
	b _021D144E
_021D143C:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D144E
	ldr r1, _021D1464 @ =ov20_021D15A0
	adds r0, r4, #0
	bl ov20_021D1034
_021D144E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1454: .4byte ov20_021D1F38
_021D1458: .4byte 0x000005DC
_021D145C: .4byte ov20_021D1DBC
_021D1460: .4byte ov20_021D1468
_021D1464: .4byte ov20_021D15A0
	thumb_func_end ov20_021D1260

	thumb_func_start ov20_021D1468
ov20_021D1468: @ 0x021D1468
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #5
	bls _021D1476
	b _021D1588
_021D1476:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D1482: @ jump table
	.2byte _021D148E - _021D1482 - 2 @ case 0
	.2byte _021D1558 - _021D1482 - 2 @ case 1
	.2byte _021D1564 - _021D1482 - 2 @ case 2
	.2byte _021D1570 - _021D1482 - 2 @ case 3
	.2byte _021D1570 - _021D1482 - 2 @ case 4
	.2byte _021D1576 - _021D1482 - 2 @ case 5
_021D148E:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1588
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _021D14A8
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D14BE
_021D14A8:
	cmp r1, #1
	bne _021D14B6
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D14BE
_021D14B6:
	ldrh r0, [r4, #0x30]
	movs r1, #4
	tst r1, r0
	beq _021D14C8
_021D14BE:
	ldr r1, _021D158C @ =ov20_021D1F38
	adds r0, r4, #0
	bl ov20_021D1C4C
	b _021D1588
_021D14C8:
	movs r1, #0x30
	tst r1, r0
	beq _021D14EE
	ldr r0, _021D1590 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	movs r0, #1
	eors r1, r0
	adds r0, r4, #0
	adds r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #0xd
	bl ov20_021D21A0
	b _021D1588
_021D14EE:
	movs r1, #8
	tst r1, r0
	beq _021D150C
	ldr r0, _021D1590 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #0xd
	bl ov20_021D21A0
	b _021D1588
_021D150C:
	movs r1, #0x40
	tst r1, r0
	beq _021D1526
	ldr r0, _021D1590 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #0x14]
	movs r1, #5
	bl ov20_021D21A0
	movs r0, #5
	str r0, [r5]
	b _021D1588
_021D1526:
	movs r1, #1
	tst r1, r0
	beq _021D1546
	ldr r0, _021D1590 @ =0x000005DC
	bl FUN_02005748
	adds r4, #0x4c
	ldrh r0, [r4]
	cmp r0, #0
	bne _021D1540
	movs r0, #1
	str r0, [r5]
	b _021D1588
_021D1540:
	movs r0, #2
	str r0, [r5]
	b _021D1588
_021D1546:
	movs r1, #2
	tst r0, r1
	beq _021D1588
	ldr r0, _021D1590 @ =0x000005DC
	bl FUN_02005748
	movs r0, #2
	str r0, [r5]
	b _021D1588
_021D1558:
	movs r1, #3
	str r1, [r5]
	ldr r1, _021D1594 @ =ov20_021D1C90
	bl ov20_021D1C4C
	b _021D1588
_021D1564:
	movs r1, #4
	str r1, [r5]
	ldr r1, _021D1598 @ =ov20_021D1DBC
	bl ov20_021D1C4C
	b _021D1588
_021D1570:
	movs r0, #0
	str r0, [r5]
	b _021D1588
_021D1576:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1588
	ldr r1, _021D159C @ =ov20_021D103C
	adds r0, r4, #0
	bl ov20_021D1034
_021D1588:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D158C: .4byte ov20_021D1F38
_021D1590: .4byte 0x000005DC
_021D1594: .4byte ov20_021D1C90
_021D1598: .4byte ov20_021D1DBC
_021D159C: .4byte ov20_021D103C
	thumb_func_end ov20_021D1468

	thumb_func_start ov20_021D15A0
ov20_021D15A0: @ 0x021D15A0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D15B8
	cmp r0, #1
	beq _021D16AC
	cmp r0, #2
	bne _021D15B6
	b _021D16C0
_021D15B6:
	b _021D16D0
_021D15B8:
	ldr r0, [r5, #0x14]
	movs r1, #0xf
	bl ov20_021D2210
	cmp r0, #0
	bne _021D15C6
	b _021D16D0
_021D15C6:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	bne _021D15D6
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D15EC
_021D15D6:
	cmp r1, #1
	bne _021D15E4
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D15EC
_021D15E4:
	ldrh r0, [r5, #0x30]
	movs r1, #4
	tst r1, r0
	beq _021D1618
_021D15EC:
	ldr r0, _021D16D4 @ =0x000005E4
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r1, [r0]
	movs r0, #1
	eors r1, r0
	adds r0, r5, #0
	adds r0, #0x65
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	movs r1, #0x18
	bl ov20_021D21A0
	movs r0, #2
	str r0, [r4]
	b _021D16D0
_021D1618:
	movs r1, #2
	tst r1, r0
	beq _021D1636
	ldr r0, _021D16D8 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r5, #0x14]
	movs r1, #7
	bl ov20_021D21A0
	ldr r0, _021D16DC @ =ov20_021D103C
	str r0, [r5, #0x24]
	movs r0, #1
	str r0, [r4]
	b _021D16D0
_021D1636:
	movs r1, #1
	tst r0, r1
	beq _021D1692
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0xfe
	bne _021D165E
	ldr r0, _021D16D8 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r5, #0x14]
	movs r1, #7
	bl ov20_021D21A0
	ldr r0, _021D16DC @ =ov20_021D103C
	str r0, [r5, #0x24]
	movs r0, #1
	str r0, [r4]
	b _021D16D0
_021D165E:
	adds r0, r5, #0
	bl ov20_021D16E8
	cmp r0, #0
	beq _021D168A
	ldr r0, _021D16D8 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0x54
	adds r1, r5, #0
	bl ov20_021D1884
	ldr r0, _021D16E0 @ =ov20_021D18E4
	movs r1, #8
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x14]
	bl ov20_021D21A0
	movs r0, #1
	str r0, [r4]
	b _021D16D0
_021D168A:
	ldr r0, _021D16E4 @ =0x000005F2
	bl FUN_02005748
	b _021D16D0
_021D1692:
	adds r0, r5, #0
	bl ov20_021D1720
	cmp r0, #0
	beq _021D16D0
	ldr r0, _021D16D8 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r5, #0x14]
	movs r1, #0xe
	bl ov20_021D21A0
	b _021D16D0
_021D16AC:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D16D0
	ldr r1, [r5, #0x24]
	adds r0, r5, #0
	bl ov20_021D1034
	b _021D16D0
_021D16C0:
	ldr r0, [r5, #0x14]
	movs r1, #0x18
	bl ov20_021D2210
	cmp r0, #0
	beq _021D16D0
	movs r0, #0
	str r0, [r4]
_021D16D0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D16D4: .4byte 0x000005E4
_021D16D8: .4byte 0x000005DC
_021D16DC: .4byte ov20_021D103C
_021D16E0: .4byte ov20_021D18E4
_021D16E4: .4byte 0x000005F2
	thumb_func_end ov20_021D15A0

	thumb_func_start ov20_021D16E8
ov20_021D16E8: @ 0x021D16E8
	push {r3, lr}
	adds r1, r0, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r1, #0x18]
	bne _021D170A
	adds r1, #0x50
	ldrh r1, [r1]
	bl FUN_02099CA0
	cmp r0, #0
	beq _021D1706
	movs r0, #1
	pop {r3, pc}
_021D1706:
	movs r0, #0
	pop {r3, pc}
_021D170A:
	adds r1, #0x50
	ldrh r1, [r1]
	bl FUN_02099CDC
	cmp r0, #0
	beq _021D171A
	movs r0, #1
	pop {r3, pc}
_021D171A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov20_021D16E8

	thumb_func_start ov20_021D1720
ov20_021D1720: @ 0x021D1720
	push {r3, lr}
	adds r1, r0, #0
	adds r1, #0x65
	ldrb r1, [r1]
	lsls r2, r1, #2
	ldr r1, _021D1734 @ =0x021D5140
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_021D1734: .4byte 0x021D5140
	thumb_func_end ov20_021D1720

	thumb_func_start ov20_021D1738
ov20_021D1738: @ 0x021D1738
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	ldrh r2, [r0]
	adds r1, r2, #0
	cmp r2, #0xfe
	bne _021D1748
	movs r1, #0xc
_021D1748:
	cmp r2, #0xfe
	beq _021D17A4
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrh r0, [r4, #0x34]
	movs r2, #0x40
	tst r2, r0
	beq _021D1768
	ldr r0, _021D17E0 @ =0x021D5168
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	adds r4, #0x50
	strh r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1768:
	movs r2, #0x80
	tst r2, r0
	beq _021D177C
	ldr r0, _021D17E4 @ =0x021D5169
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	adds r4, #0x50
	strh r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D177C:
	movs r2, #0x20
	tst r2, r0
	beq _021D1790
	ldr r0, _021D17E8 @ =0x021D516A
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	adds r4, #0x50
	strh r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1790:
	movs r2, #0x10
	tst r0, r2
	beq _021D17DC
	ldr r0, _021D17EC @ =0x021D516B
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	adds r4, #0x50
	strh r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D17A4:
	ldrh r1, [r4, #0x34]
	movs r0, #0x40
	tst r0, r1
	beq _021D17C2
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r0, [r0]
	movs r1, #3
	blx FUN_020E1F6C
	adds r1, #9
	adds r4, #0x50
	strh r1, [r4]
	movs r0, #1
	pop {r4, pc}
_021D17C2:
	movs r0, #0x80
	tst r0, r1
	beq _021D17DC
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r0, [r0]
	movs r1, #3
	blx FUN_020E1F6C
	adds r4, #0x50
	strh r1, [r4]
	movs r0, #1
	pop {r4, pc}
_021D17DC:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D17E0: .4byte 0x021D5168
_021D17E4: .4byte 0x021D5169
_021D17E8: .4byte 0x021D516A
_021D17EC: .4byte 0x021D516B
	thumb_func_end ov20_021D1738

	thumb_func_start ov20_021D17F0
ov20_021D17F0: @ 0x021D17F0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0xfe
	beq _021D184E
	ldrh r1, [r4, #0x34]
	movs r3, #0x40
	movs r2, #0xff
	tst r3, r1
	beq _021D180E
	bl ov20_021D5098
	adds r2, r0, #0
	b _021D1836
_021D180E:
	movs r3, #0x80
	tst r3, r1
	beq _021D181C
	bl ov20_021D50B4
	adds r2, r0, #0
	b _021D1836
_021D181C:
	movs r3, #0x10
	tst r3, r1
	beq _021D182A
	bl ov20_021D50EC
	adds r2, r0, #0
	b _021D1836
_021D182A:
	movs r3, #0x20
	tst r1, r3
	beq _021D1836
	bl ov20_021D50D0
	adds r2, r0, #0
_021D1836:
	cmp r2, #0xff
	beq _021D1880
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r4, #0x50
	strh r2, [r4]
	movs r0, #1
	pop {r4, pc}
_021D184E:
	ldrh r1, [r4, #0x34]
	movs r0, #0x40
	tst r0, r1
	beq _021D1868
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r0, [r0]
	bl ov20_021D5124
	adds r4, #0x50
	strh r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1868:
	movs r0, #0x80
	tst r0, r1
	beq _021D1880
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r0, [r0]
	bl ov20_021D5108
	adds r4, #0x50
	strh r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1880:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov20_021D17F0

	thumb_func_start ov20_021D1884
ov20_021D1884: @ 0x021D1884
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	adds r0, r1, #0
	bl ov20_021D1FE4
	strh r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	ldrh r2, [r4, #4]
	cmp r2, #0xa
	bls _021D18B6
	adds r1, r2, #0
	subs r1, #0xa
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #1
	ands r0, r2
	adds r0, r1, r0
	strh r0, [r4, #2]
	pop {r4, pc}
_021D18B6:
	strh r0, [r4, #2]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D1884

	thumb_func_start ov20_021D18BC
ov20_021D18BC: @ 0x021D18BC
	ldrb r1, [r0, #6]
	ldrb r0, [r0, #7]
	lsls r0, r0, #1
	adds r0, r1, r0
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D18BC

	thumb_func_start ov20_021D18C8
ov20_021D18C8: @ 0x021D18C8
	push {r4, lr}
	adds r4, r0, #0
	bl ov20_021D18BC
	ldrh r1, [r4]
	lsls r1, r1, #1
	adds r0, r1, r0
	pop {r4, pc}
	thumb_func_end ov20_021D18C8

	thumb_func_start ov20_021D18D8
ov20_021D18D8: @ 0x021D18D8
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov20_021D18D8

	thumb_func_start ov20_021D18DC
ov20_021D18DC: @ 0x021D18DC
	ldrh r0, [r0]
	bx lr
	thumb_func_end ov20_021D18DC

	thumb_func_start ov20_021D18E0
ov20_021D18E0: @ 0x021D18E0
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end ov20_021D18E0

	thumb_func_start ov20_021D18E4
ov20_021D18E4: @ 0x021D18E4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #3
	bls _021D18F2
	b _021D1A54
_021D18F2:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D18FE: @ jump table
	.2byte _021D1906 - _021D18FE - 2 @ case 0
	.2byte _021D1A12 - _021D18FE - 2 @ case 1
	.2byte _021D1A24 - _021D18FE - 2 @ case 2
	.2byte _021D1A3E - _021D18FE - 2 @ case 3
_021D1906:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _021D1916
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r1, [r1]
	cmp r1, #0
	bne _021D192C
_021D1916:
	cmp r0, #1
	bne _021D1924
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r1, [r1]
	cmp r1, #1
	bne _021D192C
_021D1924:
	ldrh r2, [r4, #0x30]
	movs r1, #4
	tst r1, r2
	beq _021D195C
_021D192C:
	ldr r0, _021D1A58 @ =0x000005E4
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r1, [r0]
	movs r0, #1
	eors r1, r0
	adds r0, r4, #0
	adds r0, #0x65
	strb r1, [r0]
	ldr r0, [r4, #0x14]
	movs r1, #9
	bl ov20_021D21A0
	ldr r0, _021D1A5C @ =ov20_021D15A0
	str r0, [r4, #0x24]
	movs r0, #3
	str r0, [r5]
	b _021D1A54
_021D195C:
	cmp r0, #2
	bne _021D196A
	adds r0, r4, #0
	adds r0, #0x54
	bl ov20_021D1B48
	b _021D1982
_021D196A:
	cmp r0, #3
	bne _021D1978
	adds r0, r4, #0
	adds r0, #0x54
	bl ov20_021D1B70
	b _021D1982
_021D1978:
	ldrh r1, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x54
	bl ov20_021D1A68
_021D1982:
	cmp r0, #1
	beq _021D1990
	cmp r0, #2
	beq _021D19A2
	cmp r0, #3
	beq _021D19B8
	b _021D19CE
_021D1990:
	ldr r0, _021D1A60 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #0x14]
	movs r1, #0xf
	bl ov20_021D21A0
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D19A2:
	ldr r0, _021D1A60 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #0x14]
	movs r1, #0x10
	bl ov20_021D21A0
	movs r0, #1
	str r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D19B8:
	ldr r0, _021D1A60 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #0x14]
	movs r1, #0x10
	bl ov20_021D21A0
	movs r0, #2
	str r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D19CE:
	ldrh r1, [r4, #0x30]
	movs r0, #2
	tst r0, r1
	beq _021D19EE
	ldr r0, _021D1A60 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #0x14]
	movs r1, #9
	bl ov20_021D21A0
	ldr r0, _021D1A5C @ =ov20_021D15A0
	str r0, [r4, #0x24]
	movs r0, #3
	str r0, [r5]
	b _021D1A54
_021D19EE:
	movs r0, #1
	tst r0, r1
	beq _021D1A54
	ldr r0, _021D1A60 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov20_021D1BB0
	ldr r0, _021D1A64 @ =ov20_021D103C
	movs r1, #0xa
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	bl ov20_021D21A0
	movs r0, #3
	str r0, [r5]
	b _021D1A54
_021D1A12:
	ldr r0, [r4, #0x14]
	movs r1, #0x10
	bl ov20_021D2210
	cmp r0, #0
	beq _021D1A54
	movs r0, #0
	str r0, [r5]
	b _021D1A54
_021D1A24:
	ldr r0, [r4, #0x14]
	movs r1, #0x10
	bl ov20_021D2210
	cmp r0, #0
	beq _021D1A54
	ldr r0, [r4, #0x14]
	movs r1, #0xf
	bl ov20_021D21A0
	movs r0, #0
	str r0, [r5]
	b _021D1A54
_021D1A3E:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1A54
	ldr r1, [r4, #0x24]
	adds r0, r4, #0
	bl ov20_021D1034
	movs r0, #0
	str r0, [r5]
_021D1A54:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1A58: .4byte 0x000005E4
_021D1A5C: .4byte ov20_021D15A0
_021D1A60: .4byte 0x000005DC
_021D1A64: .4byte ov20_021D103C
	thumb_func_end ov20_021D18E4

	thumb_func_start ov20_021D1A68
ov20_021D1A68: @ 0x021D1A68
	push {r3, r4, r5, lr}
	movs r2, #0x80
	adds r4, r0, #0
	tst r2, r1
	beq _021D1AD2
	ldrb r1, [r4, #7]
	cmp r1, #4
	bhs _021D1AA6
	adds r1, r1, #1
	strb r1, [r4, #7]
	bl ov20_021D18C8
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021D1A8A
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D1A8A:
	cmp r0, r1
	bne _021D1A9C
	movs r1, #1
	tst r0, r1
	beq _021D1A9C
	movs r0, #0
	strb r0, [r4, #6]
	adds r0, r1, #0
	pop {r3, r4, r5, pc}
_021D1A9C:
	ldrb r0, [r4, #7]
	subs r0, r0, #1
	strb r0, [r4, #7]
	movs r0, #4
	pop {r3, r4, r5, pc}
_021D1AA6:
	ldrh r2, [r4]
	ldrh r1, [r4, #2]
	cmp r2, r1
	bhs _021D1ACE
	movs r1, #1
	str r1, [r4, #8]
	ldrh r1, [r4]
	adds r1, r1, #1
	strh r1, [r4]
	bl ov20_021D18C8
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021D1AC6
	movs r0, #2
	pop {r3, r4, r5, pc}
_021D1AC6:
	movs r0, #0
	strb r0, [r4, #6]
	movs r0, #3
	pop {r3, r4, r5, pc}
_021D1ACE:
	movs r0, #4
	pop {r3, r4, r5, pc}
_021D1AD2:
	movs r5, #0x40
	adds r2, r1, #0
	tst r2, r5
	beq _021D1B00
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _021D1AE8
	subs r0, r0, #1
	strb r0, [r4, #7]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D1AE8:
	ldrh r0, [r4]
	cmp r0, #0
	beq _021D1AFC
	subs r5, #0x41
	str r5, [r4, #8]
	ldrh r0, [r4]
	subs r0, r0, #1
	strh r0, [r4]
	movs r0, #2
	pop {r3, r4, r5, pc}
_021D1AFC:
	movs r0, #4
	pop {r3, r4, r5, pc}
_021D1B00:
	movs r3, #0x30
	adds r2, r1, #0
	tst r2, r3
	beq _021D1B2A
	ldrb r2, [r4, #6]
	movs r1, #1
	eors r1, r2
	strb r1, [r4, #6]
	bl ov20_021D18C8
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021D1B1E
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D1B1E:
	ldrb r1, [r4, #6]
	movs r0, #1
	eors r0, r1
	strb r0, [r4, #6]
	movs r0, #4
	pop {r3, r4, r5, pc}
_021D1B2A:
	lsls r2, r5, #3
	tst r2, r1
	beq _021D1B36
	bl ov20_021D1B48
	pop {r3, r4, r5, pc}
_021D1B36:
	adds r3, #0xd0
	tst r1, r3
	beq _021D1B42
	bl ov20_021D1B70
	pop {r3, r4, r5, pc}
_021D1B42:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D1A68

	thumb_func_start ov20_021D1B48
ov20_021D1B48: @ 0x021D1B48
	ldrh r1, [r0]
	cmp r1, #0
	beq _021D1B6A
	cmp r1, #5
	blo _021D1B5E
	subs r1, r1, #5
	strh r1, [r0]
	movs r1, #4
	mvns r1, r1
	str r1, [r0, #8]
	b _021D1B66
_021D1B5E:
	rsbs r1, r1, #0
	str r1, [r0, #8]
	movs r1, #0
	strh r1, [r0]
_021D1B66:
	movs r0, #2
	bx lr
_021D1B6A:
	movs r0, #4
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D1B48

	thumb_func_start ov20_021D1B70
ov20_021D1B70: @ 0x021D1B70
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #2]
	ldrh r1, [r4]
	cmp r1, r2
	bhs _021D1BAC
	adds r0, r1, #5
	cmp r0, r2
	bgt _021D1B8C
	movs r0, #5
	str r0, [r4, #8]
	ldrh r0, [r4]
	adds r0, r0, #5
	b _021D1B92
_021D1B8C:
	subs r0, r2, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #2]
_021D1B92:
	strh r0, [r4]
	adds r0, r4, #0
	bl ov20_021D18C8
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021D1BA4
	movs r0, #2
	pop {r4, pc}
_021D1BA4:
	movs r0, #0
	strb r0, [r4, #6]
	movs r0, #3
	pop {r4, pc}
_021D1BAC:
	movs r0, #4
	pop {r4, pc}
	thumb_func_end ov20_021D1B70

	thumb_func_start ov20_021D1BB0
ov20_021D1BB0: @ 0x021D1BB0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	bl ov20_021D18C8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _021D1BD4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r1, [r1]
	bl FUN_02099CC8
	b _021D1BDE
_021D1BD4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r1, [r1]
	bl FUN_02099D14
_021D1BDE:
	adds r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D1BF0
	cmp r0, #1
	beq _021D1BF4
	cmp r0, #2
	beq _021D1C02
	b _021D1C10
_021D1BF0:
	strh r2, [r4, #0x10]
	b _021D1C10
_021D1BF4:
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r4, r0
	strh r2, [r0, #0x10]
	b _021D1C10
_021D1C02:
	adds r1, r4, #0
	adds r1, #0x4e
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #8
	bl FUN_02014CF8
_021D1C10:
	adds r0, r4, #0
	bl ov20_021D1E8C
	pop {r4, pc}
	thumb_func_end ov20_021D1BB0

	thumb_func_start ov20_021D1C18
ov20_021D1C18: @ 0x021D1C18
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021D1C28
	cmp r1, #1
	beq _021D1C38
	b _021D1C46
_021D1C28:
	ldr r0, [r0, #0x14]
	movs r1, #1
	bl ov20_021D21A0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D1C46
_021D1C38:
	ldr r0, [r0, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1C46
	movs r0, #1
	pop {r4, pc}
_021D1C46:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D1C18

	thumb_func_start ov20_021D1C4C
ov20_021D1C4C: @ 0x021D1C4C
	str r1, [r0, #0x2c]
	movs r1, #0
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end ov20_021D1C4C

	thumb_func_start ov20_021D1C54
ov20_021D1C54: @ 0x021D1C54
	movs r1, #0
	str r1, [r0, #0x2c]
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D1C54

	thumb_func_start ov20_021D1C5C
ov20_021D1C5C: @ 0x021D1C5C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D1C6E
	cmp r0, #1
	beq _021D1C7E
	pop {r3, r4, r5, pc}
_021D1C6E:
	ldr r0, [r5, #0x14]
	movs r1, #2
	bl ov20_021D21A0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D1C7E:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1C8E
	adds r0, r5, #0
	bl ov20_021D1C54
_021D1C8E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D1C5C

	thumb_func_start ov20_021D1C90
ov20_021D1C90: @ 0x021D1C90
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #3
	bls _021D1C9E
	b _021D1DAC
_021D1C9E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D1CAA: @ jump table
	.2byte _021D1CB2 - _021D1CAA - 2 @ case 0
	.2byte _021D1D00 - _021D1CAA - 2 @ case 1
	.2byte _021D1D86 - _021D1CAA - 2 @ case 2
	.2byte _021D1D9C - _021D1CAA - 2 @ case 3
_021D1CB2:
	bl ov20_021D1E70
	cmp r0, #0
	bne _021D1CC4
	ldr r0, [r4]
	bl FUN_02097568
	cmp r0, #0
	beq _021D1CF6
_021D1CC4:
	adds r0, r4, #0
	bl ov20_021D1E8C
	cmp r0, #0
	beq _021D1CE8
	adds r0, r4, #0
	adds r0, #0x66
	movs r1, #1
	movs r2, #0
	bl ov20_021D1ED4
	ldr r0, [r4, #0x14]
	movs r1, #0x12
	bl ov20_021D21A0
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1CE8:
	ldr r0, [r4, #0x14]
	movs r1, #0x14
	bl ov20_021D21A0
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1CF6:
	ldr r1, _021D1DB0 @ =ov20_021D1DBC
	adds r0, r4, #0
	bl ov20_021D1C4C
	pop {r3, r4, r5, pc}
_021D1D00:
	ldr r0, [r4, #0x14]
	movs r1, #0x15
	bl ov20_021D2210
	cmp r0, #0
	beq _021D1DAC
	ldrh r1, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x66
	bl ov20_021D1EDC
	adds r0, r0, #3
	cmp r0, #4
	bhi _021D1DAC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D1D28: @ jump table
	.2byte _021D1D32 - _021D1D28 - 2 @ case 0
	.2byte _021D1D42 - _021D1D28 - 2 @ case 1
	.2byte _021D1DAC - _021D1D28 - 2 @ case 2
	.2byte _021D1D56 - _021D1D28 - 2 @ case 3
	.2byte _021D1D42 - _021D1D28 - 2 @ case 4
_021D1D32:
	ldr r0, _021D1DB4 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #0x14]
	movs r1, #0x15
	bl ov20_021D21A0
	pop {r3, r4, r5, pc}
_021D1D42:
	ldr r0, _021D1DB4 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #0x14]
	movs r1, #0x16
	bl ov20_021D21A0
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1D56:
	ldr r0, _021D1DB4 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021D1D6A
	adds r0, r4, #0
	adds r0, #8
	bl FUN_02014D10
_021D1D6A:
	adds r1, r4, #0
	adds r2, r4, #0
	ldr r0, [r4]
	adds r1, #0x10
	adds r2, #8
	bl FUN_020975E4
	ldr r1, _021D1DB8 @ =ov20_021D1C18
	adds r0, r4, #0
	bl ov20_021D1034
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1D86:
	ldrh r1, [r4, #0x30]
	movs r0, #0xf3
	tst r0, r1
	beq _021D1DAC
	ldr r0, [r4, #0x14]
	movs r1, #0x11
	bl ov20_021D21A0
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1D9C:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1DAC
	adds r0, r4, #0
	bl ov20_021D1C54
_021D1DAC:
	pop {r3, r4, r5, pc}
	nop
_021D1DB0: .4byte ov20_021D1DBC
_021D1DB4: .4byte 0x000005DC
_021D1DB8: .4byte ov20_021D1C18
	thumb_func_end ov20_021D1C90

	thumb_func_start ov20_021D1DBC
ov20_021D1DBC: @ 0x021D1DBC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021D1DD2
	cmp r0, #1
	beq _021D1DEC
	cmp r0, #2
	beq _021D1E56
	pop {r3, r4, r5, pc}
_021D1DD2:
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x66
	adds r2, r1, #0
	bl ov20_021D1ED4
	ldr r0, [r4, #0x14]
	movs r1, #0x13
	bl ov20_021D21A0
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1DEC:
	ldr r0, [r4, #0x14]
	movs r1, #0x15
	bl ov20_021D2210
	cmp r0, #0
	beq _021D1E66
	ldrh r1, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x66
	bl ov20_021D1EDC
	adds r0, r0, #3
	cmp r0, #4
	bhi _021D1E66
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D1E14: @ jump table
	.2byte _021D1E1E - _021D1E14 - 2 @ case 0
	.2byte _021D1E2E - _021D1E14 - 2 @ case 1
	.2byte _021D1E66 - _021D1E14 - 2 @ case 2
	.2byte _021D1E42 - _021D1E14 - 2 @ case 3
	.2byte _021D1E2E - _021D1E14 - 2 @ case 4
_021D1E1E:
	ldr r0, _021D1E68 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #0x14]
	movs r1, #0x15
	bl ov20_021D21A0
	pop {r3, r4, r5, pc}
_021D1E2E:
	ldr r0, _021D1E68 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4, #0x14]
	movs r1, #0x16
	bl ov20_021D21A0
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1E42:
	ldr r0, _021D1E68 @ =0x000005DC
	bl FUN_02005748
	ldr r1, _021D1E6C @ =ov20_021D1C18
	adds r0, r4, #0
	bl ov20_021D1034
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1E56:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1E66
	adds r0, r4, #0
	bl ov20_021D1C54
_021D1E66:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1E68: .4byte 0x000005DC
_021D1E6C: .4byte ov20_021D1C18
	thumb_func_end ov20_021D1DBC

	thumb_func_start ov20_021D1E70
ov20_021D1E70: @ 0x021D1E70
	push {r3, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	ldr r0, [r2]
	adds r1, #0x10
	adds r2, #8
	bl FUN_020975A0
	cmp r0, #0
	bne _021D1E88
	movs r0, #1
	pop {r3, pc}
_021D1E88:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov20_021D1E70

	thumb_func_start ov20_021D1E8C
ov20_021D1E8C: @ 0x021D1E8C
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021D1E9E
	cmp r1, #1
	beq _021D1EAE
	cmp r1, #2
	beq _021D1EC4
	b _021D1ECC
_021D1E9E:
	ldrh r1, [r0, #0x10]
	ldr r0, _021D1ED0 @ =0x0000FFFF
	cmp r1, r0
	beq _021D1EAA
	movs r0, #1
	pop {r3, pc}
_021D1EAA:
	movs r0, #0
	pop {r3, pc}
_021D1EAE:
	ldrh r2, [r0, #0x10]
	ldr r1, _021D1ED0 @ =0x0000FFFF
	cmp r2, r1
	beq _021D1EC0
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	beq _021D1EC0
	movs r0, #1
	pop {r3, pc}
_021D1EC0:
	movs r0, #0
	pop {r3, pc}
_021D1EC4:
	adds r0, #8
	bl FUN_02014BD0
	pop {r3, pc}
_021D1ECC:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_021D1ED0: .4byte 0x0000FFFF
	thumb_func_end ov20_021D1E8C

	thumb_func_start ov20_021D1ED4
ov20_021D1ED4: @ 0x021D1ED4
	strb r2, [r0]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D1ED4

	thumb_func_start ov20_021D1EDC
ov20_021D1EDC: @ 0x021D1EDC
	movs r2, #0x40
	adds r3, r1, #0
	tst r3, r2
	beq _021D1EFA
	ldrb r1, [r0]
	cmp r1, #0
	bne _021D1EF0
	subs r2, #0x44
	adds r0, r2, #0
	bx lr
_021D1EF0:
	subs r1, r1, #1
	subs r2, #0x43
	strb r1, [r0]
	adds r0, r2, #0
	bx lr
_021D1EFA:
	movs r2, #0x80
	adds r3, r1, #0
	tst r3, r2
	beq _021D1F1A
	ldrb r3, [r0]
	ldrb r1, [r0, #1]
	cmp r3, r1
	bne _021D1F10
	subs r2, #0x84
	adds r0, r2, #0
	bx lr
_021D1F10:
	adds r1, r3, #1
	subs r2, #0x83
	strb r1, [r0]
	adds r0, r2, #0
	bx lr
_021D1F1A:
	movs r2, #1
	tst r2, r1
	beq _021D1F24
	ldrb r0, [r0]
	bx lr
_021D1F24:
	movs r0, #2
	tst r1, r0
	beq _021D1F2E
	subs r0, r0, #4
	bx lr
_021D1F2E:
	subs r0, r0, #3
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D1EDC

	thumb_func_start ov20_021D1F34
ov20_021D1F34: @ 0x021D1F34
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov20_021D1F34

	thumb_func_start ov20_021D1F38
ov20_021D1F38: @ 0x021D1F38
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D1F4A
	cmp r0, #1
	beq _021D1F6E
	pop {r3, r4, r5, pc}
_021D1F4A:
	ldr r0, _021D1F80 @ =0x000005E4
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r1, [r0]
	movs r0, #1
	eors r1, r0
	adds r0, r5, #0
	adds r0, #0x65
	strb r1, [r0]
	ldr r0, [r5, #0x14]
	movs r1, #0x17
	bl ov20_021D21A0
	movs r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D1F6E:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1F7E
	adds r0, r5, #0
	bl ov20_021D1C54
_021D1F7E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1F80: .4byte 0x000005E4
	thumb_func_end ov20_021D1F38

	thumb_func_start ov20_021D1F84
ov20_021D1F84: @ 0x021D1F84
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov20_021D1F84

	thumb_func_start ov20_021D1F88
ov20_021D1F88: @ 0x021D1F88
	ldr r3, _021D1F90 @ =FUN_02097554
	ldr r0, [r0]
	bx r3
	nop
_021D1F90: .4byte FUN_02097554
	thumb_func_end ov20_021D1F88

	thumb_func_start ov20_021D1F94
ov20_021D1F94: @ 0x021D1F94
	adds r0, #0x65
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D1F94

	thumb_func_start ov20_021D1F9C
ov20_021D1F9C: @ 0x021D1F9C
	ldr r3, _021D1FA4 @ =FUN_02014C80
	adds r0, #8
	bx r3
	nop
_021D1FA4: .4byte FUN_02014C80
	thumb_func_end ov20_021D1F9C

	thumb_func_start ov20_021D1FA8
ov20_021D1FA8: @ 0x021D1FA8
	push {r3, lr}
	ldr r2, [r0, #4]
	cmp r2, #2
	bne _021D1FB8
	adds r0, #8
	bl FUN_02014C78
	pop {r3, pc}
_021D1FB8:
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0x10]
	pop {r3, pc}
	thumb_func_end ov20_021D1FA8

	thumb_func_start ov20_021D1FC0
ov20_021D1FC0: @ 0x021D1FC0
	ldr r3, _021D1FC8 @ =FUN_02014BA0
	adds r0, #8
	bx r3
	nop
_021D1FC8: .4byte FUN_02014BA0
	thumb_func_end ov20_021D1FC0

	thumb_func_start ov20_021D1FCC
ov20_021D1FCC: @ 0x021D1FCC
	adds r0, #0x4e
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D1FCC

	thumb_func_start ov20_021D1FD4
ov20_021D1FD4: @ 0x021D1FD4
	adds r0, #0x4c
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D1FD4

	thumb_func_start ov20_021D1FDC
ov20_021D1FDC: @ 0x021D1FDC
	adds r0, #0x50
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D1FDC

	thumb_func_start ov20_021D1FE4
ov20_021D1FE4: @ 0x021D1FE4
	push {r3, lr}
	adds r1, r0, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r1, #0x18]
	bne _021D1FFC
	adds r1, #0x50
	ldrh r1, [r1]
	bl FUN_02099CA0
	pop {r3, pc}
_021D1FFC:
	adds r1, #0x50
	ldrh r1, [r1]
	bl FUN_02099CDC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov20_021D1FE4

	thumb_func_start ov20_021D2008
ov20_021D2008: @ 0x021D2008
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x65
	ldrb r0, [r0]
	adds r4, r1, #0
	adds r3, r2, #0
	cmp r0, #0
	ldr r0, [r5, #0x18]
	bne _021D2026
	adds r5, #0x50
	ldrh r1, [r5]
	adds r2, r4, #0
	bl FUN_02099CA8
	pop {r3, r4, r5, pc}
_021D2026:
	adds r5, #0x50
	ldrh r1, [r5]
	adds r2, r4, #0
	bl FUN_02099CEC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D2008

	thumb_func_start ov20_021D2034
ov20_021D2034: @ 0x021D2034
	ldr r3, _021D203C @ =ov20_021D18BC
	adds r0, #0x54
	bx r3
	nop
_021D203C: .4byte ov20_021D18BC
	thumb_func_end ov20_021D2034

	thumb_func_start ov20_021D2040
ov20_021D2040: @ 0x021D2040
	ldr r3, _021D2048 @ =ov20_021D18D8
	adds r0, #0x54
	bx r3
	nop
_021D2048: .4byte ov20_021D18D8
	thumb_func_end ov20_021D2040

	thumb_func_start ov20_021D204C
ov20_021D204C: @ 0x021D204C
	push {r3, lr}
	adds r0, #0x54
	bl ov20_021D18DC
	cmp r0, #0
	beq _021D205C
	movs r0, #1
	pop {r3, pc}
_021D205C:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov20_021D204C

	thumb_func_start ov20_021D2060
ov20_021D2060: @ 0x021D2060
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x54
	bl ov20_021D18DC
	adds r5, #0x54
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov20_021D18E0
	cmp r4, r0
	bge _021D207C
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D207C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2060

	thumb_func_start ov20_021D2080
ov20_021D2080: @ 0x021D2080
	ldr r3, _021D2088 @ =FUN_02097558
	ldr r0, [r0]
	bx r3
	nop
_021D2088: .4byte FUN_02097558
	thumb_func_end ov20_021D2080

	thumb_func_start ov20_021D208C
ov20_021D208C: @ 0x021D208C
	ldr r3, _021D2094 @ =ov20_021D1F34
	adds r0, #0x66
	bx r3
	nop
_021D2094: .4byte ov20_021D1F34
	thumb_func_end ov20_021D208C

	thumb_func_start ov20_021D2098
ov20_021D2098: @ 0x021D2098
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r1, #0
	movs r1, #0x7d
	adds r5, r0, #0
	movs r0, #0x23
	lsls r1, r1, #2
	bl FUN_02018144
	adds r4, r0, #0
	beq _021D2118
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	str r5, [r4, #0x18]
	str r6, [r4, #0x1c]
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x23
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	adds r1, r4, #0
	movs r0, #0x80
	adds r1, #0x28
	movs r2, #0x23
	bl FUN_020095C4
	str r0, [r4, #0x24]
	movs r0, #0x23
	bl FUN_02018340
	str r0, [r4, #0x20]
	ldr r0, _021D2120 @ =ov20_021D2178
	adds r1, r4, #0
	movs r2, #2
	bl FUN_0200D9E8
	str r0, [r4]
	ldr r0, _021D2124 @ =ov20_021D217C
	adds r1, r4, #0
	movs r2, #1
	bl ov20_021D2170
	movs r1, #0
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r0, r1, #0
_021D210E:
	adds r1, r1, #1
	str r0, [r2, #8]
	adds r2, r2, #4
	cmp r1, #4
	blt _021D210E
_021D2118:
	adds r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D2120: .4byte ov20_021D2178
_021D2124: .4byte ov20_021D217C
	thumb_func_end ov20_021D2098

	thumb_func_start ov20_021D2128
ov20_021D2128: @ 0x021D2128
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	beq _021D216E
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r4, #0
	adds r5, r6, #0
_021D213A:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D2144
	bl FUN_0200DA58
_021D2144:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D213A
	ldr r0, [r6]
	bl FUN_0200DA58
	ldr r0, [r6, #4]
	bl FUN_0200DA58
	bl FUN_0200A878
	ldr r0, [r6, #0x24]
	bl FUN_02021964
	ldr r0, [r6, #0x20]
	bl FUN_020181C4
	adds r0, r6, #0
	bl FUN_020181C4
_021D216E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov20_021D2128

	thumb_func_start ov20_021D2170
ov20_021D2170: @ 0x021D2170
	ldr r3, _021D2174 @ =FUN_0200DA04
	bx r3
	.align 2, 0
_021D2174: .4byte FUN_0200DA04
	thumb_func_end ov20_021D2170

	thumb_func_start ov20_021D2178
ov20_021D2178: @ 0x021D2178
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D2178

	thumb_func_start ov20_021D217C
ov20_021D217C: @ 0x021D217C
	push {r3, lr}
	ldr r0, [r1, #0x24]
	bl FUN_020219F8
	bl FUN_0200A858
	ldr r3, _021D2198 @ =0x027E0000
	ldr r1, _021D219C @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021D2198: .4byte 0x027E0000
_021D219C: .4byte 0x00003FF8
	thumb_func_end ov20_021D217C

	thumb_func_start ov20_021D21A0
ov20_021D21A0: @ 0x021D21A0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r6, #0x1d
	bhs _021D21EE
	movs r0, #0x23
	movs r1, #0x18
	bl FUN_02018144
	adds r1, r0, #0
	beq _021D21F2
	movs r4, #0
	str r4, [r1, #0x14]
	str r6, [r1, #0xc]
	str r5, [r1]
	ldr r0, [r5, #0x18]
	adds r2, r5, #0
	str r0, [r1, #4]
	ldr r0, [r5, #0x1c]
	str r0, [r1, #8]
_021D21C8:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _021D21E4
	ldr r0, _021D21F4 @ =0x021D5260
	lsls r2, r6, #2
	ldr r0, [r0, r2]
	movs r2, #1
	str r4, [r1, #0x10]
	bl FUN_0200D9E8
	lsls r1, r4, #2
	adds r1, r5, r1
	str r0, [r1, #8]
	pop {r4, r5, r6, pc}
_021D21E4:
	adds r4, r4, #1
	adds r2, r2, #4
	cmp r4, #4
	blt _021D21C8
	pop {r4, r5, r6, pc}
_021D21EE:
	bl FUN_02022974
_021D21F2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D21F4: .4byte 0x021D5260
	thumb_func_end ov20_021D21A0

	thumb_func_start ov20_021D21F8
ov20_021D21F8: @ 0x021D21F8
	movs r2, #0
_021D21FA:
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021D2204
	movs r0, #0
	bx lr
_021D2204:
	adds r2, r2, #1
	adds r0, r0, #4
	cmp r2, #4
	blt _021D21FA
	movs r0, #1
	bx lr
	thumb_func_end ov20_021D21F8

	thumb_func_start ov20_021D2210
ov20_021D2210: @ 0x021D2210
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_021D2218:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D222C
	bl FUN_0201CED0
	ldr r0, [r0, #0xc]
	cmp r0, r6
	bne _021D222C
	movs r0, #0
	pop {r4, r5, r6, pc}
_021D222C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D2218
	movs r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov20_021D2210

	thumb_func_start ov20_021D2238
ov20_021D2238: @ 0x021D2238
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #8]
	bl FUN_0200DA58
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	lsls r0, r0, #2
	movs r2, #0
	adds r0, r1, r0
	str r2, [r0, #8]
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D2238

	thumb_func_start ov20_021D2260
ov20_021D2260: @ 0x021D2260
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r1, #1
	lsls r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _021D2360 @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _021D2364 @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r2, [r1]
	ldr r3, _021D2368 @ =0xFFCFFFEF
	adds r5, r2, #0
	ldr r2, _021D236C @ =0x00100010
	ands r5, r3
	orrs r2, r5
	str r2, [r1]
	ldr r1, [r0]
	adds r2, r1, #0
	ands r2, r3
	movs r1, #0x10
	orrs r1, r2
	str r1, [r0]
	movs r0, #0x4c
	movs r1, #0x23
	bl FUN_02006C24
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov20_021D24EC
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov20_021D2370
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D2EA4
	movs r1, #0x1e
	ldr r2, [r4]
	lsls r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	adds r1, r5, #0
	bl ov20_021D2F50
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D3864
	movs r1, #0x79
	ldr r2, [r4]
	lsls r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	adds r1, r5, #0
	bl ov20_021D3898
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D3A54
	movs r1, #0x7a
	ldr r2, [r4]
	lsls r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	adds r1, r5, #0
	bl ov20_021D3A98
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D40E8
	movs r1, #0x7b
	ldr r2, [r4]
	lsls r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	bl ov20_021D41A8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov20_021D4728
	movs r1, #0x1f
	ldr r2, [r4]
	lsls r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	adds r1, r5, #0
	bl ov20_021D4774
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	blx FUN_020BDDF8
	adds r0, r5, #0
	bl FUN_02006CA8
	adds r0, r4, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	nop
_021D2360: .4byte 0xFFFFE0FF
_021D2364: .4byte 0x04001000
_021D2368: .4byte 0xFFCFFFEF
_021D236C: .4byte 0x00100010
	thumb_func_end ov20_021D2260

	thumb_func_start ov20_021D2370
ov20_021D2370: @ 0x021D2370
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [r0]
	movs r0, #0x66
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r5, r1, #0
	blx FUN_020A81D0
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	blx FUN_020A81D0
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r4, r0
	blx FUN_020A818C
	movs r0, #0x5d
	lsls r0, r0, #2
	adds r0, r4, r0
	blx FUN_020A818C
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r4, r0
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r1, #9
	bl FUN_0200718C
	movs r0, #0x23
	str r0, [sp]
	movs r0, #0x66
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #1
	movs r3, #0
	bl FUN_0200716C
	movs r1, #7
	movs r0, #0x23
	lsls r3, r1, #6
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	adds r3, r4, r3
	bl FUN_02007204
	movs r3, #0x1d
	lsls r3, r3, #4
	str r0, [r4, r3]
	movs r0, #0x23
	subs r3, #8
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #1
	adds r3, r4, r3
	bl FUN_02007220
	movs r1, #0x76
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r2, #0
	subs r0, r1, #4
	str r2, [r4, r0]
	adds r0, r1, #4
	str r2, [r4, r0]
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov20_021D2370

	thumb_func_start ov20_021D2414
ov20_021D2414: @ 0x021D2414
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r1, #0
	ldr r0, [r6, #0x14]
	ldr r7, [r6]
	cmp r0, #0
	beq _021D242A
	cmp r0, #1
	beq _021D244C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D242A:
	movs r0, #5
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x23
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r6, #0x14]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, r7, pc}
_021D244C:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D24E6
	movs r0, #0x1e
	ldr r1, [r6]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl ov20_021D2EF0
	movs r0, #0x79
	ldr r1, [r6]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl ov20_021D3880
	movs r0, #0x7a
	ldr r1, [r6]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl ov20_021D3A80
	movs r0, #0x7b
	ldr r1, [r6]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl ov20_021D4164
	movs r0, #0x1f
	ldr r1, [r6]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl ov20_021D4764
	movs r4, #0
	adds r5, r7, #0
_021D2494:
	movs r0, #0x1d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D24A2
	bl FUN_020181C4
_021D24A2:
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D24B0
	bl FUN_020181C4
_021D24B0:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021D2494
	ldr r0, [r7, #0x20]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r7, #0x20]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r7, #0x20]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r7, #0x20]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r7, #0x20]
	movs r1, #4
	bl FUN_02019044
	adds r0, r6, #0
	bl ov20_021D2238
_021D24E6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov20_021D2414

	thumb_func_start ov20_021D24EC
ov20_021D24EC: @ 0x021D24EC
	push {r4, lr}
	ldr r2, _021D2550 @ =0x04000304
	ldr r4, [r0]
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	movs r1, #0
	adds r2, r0, #0
	blx FUN_020BDE40
	ldr r0, _021D2554 @ =0x021D5238
	bl FUN_0201FE94
	ldr r0, _021D2558 @ =0x021D519C
	bl FUN_02018368
	movs r1, #0
	ldr r0, [r4, #0x20]
	ldr r2, _021D255C @ =0x021D51E4
	adds r3, r1, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x20]
	ldr r2, _021D2560 @ =0x021D51AC
	movs r1, #1
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x20]
	ldr r2, _021D2564 @ =0x021D521C
	movs r1, #2
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x20]
	ldr r2, _021D2568 @ =0x021D51C8
	movs r1, #3
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x20]
	ldr r2, _021D256C @ =0x021D5200
	movs r1, #4
	movs r3, #0
	bl FUN_020183C4
	pop {r4, pc}
	nop
_021D2550: .4byte 0x04000304
_021D2554: .4byte 0x021D5238
_021D2558: .4byte 0x021D519C
_021D255C: .4byte 0x021D51E4
_021D2560: .4byte 0x021D51AC
_021D2564: .4byte 0x021D521C
_021D2568: .4byte 0x021D51C8
_021D256C: .4byte 0x021D5200
	thumb_func_end ov20_021D24EC

	thumb_func_start ov20_021D2570
ov20_021D2570: @ 0x021D2570
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r1, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D2582
	cmp r0, #1
	beq _021D25A2
	b _021D25B4
_021D2582:
	movs r0, #5
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x23
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4, #0x14]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, pc}
_021D25A2:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D25BA
	ldr r0, [r4, #0x14]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, pc}
_021D25B4:
	adds r0, r4, #0
	bl ov20_021D2238
_021D25BA:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D2570

	thumb_func_start ov20_021D25C0
ov20_021D25C0: @ 0x021D25C0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x1e
	ldr r4, [r5]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3228
	ldr r0, [r5, #4]
	bl ov20_021D1FCC
	adds r1, r0, #0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3700
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D25C0

	thumb_func_start ov20_021D25EC
ov20_021D25EC: @ 0x021D25EC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x1e
	ldr r4, [r5]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D369C
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36B0
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D39D4
	ldr r0, [r4, #0x18]
	bl ov20_021D1FD4
	adds r1, r0, #0
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39EC
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D25EC

	thumb_func_start ov20_021D2630
ov20_021D2630: @ 0x021D2630
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x79
	ldr r4, [r5]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D39D4
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36D0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D369C
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2630

	thumb_func_start ov20_021D2660
ov20_021D2660: @ 0x021D2660
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _021D2672
	cmp r0, #1
	beq _021D2698
	pop {r3, r4, r5, pc}
_021D2672:
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3684
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36B0
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3EF8
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2698:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3F10
	cmp r0, #0
	beq _021D26D4
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3A2C
	ldr r0, [r4, #0x18]
	bl ov20_021D1FDC
	adds r1, r0, #0
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3E74
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D3E48
	adds r0, r5, #0
	bl ov20_021D2238
_021D26D4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D2660

	thumb_func_start ov20_021D26D8
ov20_021D26D8: @ 0x021D26D8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _021D26EE
	cmp r0, #1
	beq _021D2700
	cmp r0, #2
	beq _021D2712
	pop {r3, r4, r5, pc}
_021D26EE:
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4BA4
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2700:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D40A8
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2712:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D40DC
	cmp r0, #0
	beq _021D273E
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4C2C
	cmp r0, #0
	beq _021D273E
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4084
	adds r0, r5, #0
	bl ov20_021D2238
_021D273E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D26D8

	thumb_func_start ov20_021D2740
ov20_021D2740: @ 0x021D2740
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #3
	bhi _021D27E2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2758: @ jump table
	.2byte _021D2760 - _021D2758 - 2 @ case 0
	.2byte _021D2772 - _021D2758 - 2 @ case 1
	.2byte _021D2790 - _021D2758 - 2 @ case 2
	.2byte _021D27B0 - _021D2758 - 2 @ case 3
_021D2760:
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4BA4
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2772:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D3E48
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D40A8
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2790:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D40DC
	cmp r0, #0
	beq _021D27E2
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4084
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D27B0:
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4C2C
	cmp r0, #0
	beq _021D27E2
	ldr r0, [r4, #0x18]
	bl ov20_021D1FDC
	adds r1, r0, #0
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3E74
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D3E48
	adds r0, r5, #0
	bl ov20_021D2238
_021D27E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2740

	thumb_func_start ov20_021D27E4
ov20_021D27E4: @ 0x021D27E4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _021D27F6
	cmp r0, #1
	beq _021D281E
	pop {r3, r4, r5, pc}
_021D27F6:
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3A40
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D3E48
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3F60
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D281E:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3F84
	cmp r0, #0
	beq _021D2846
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36D0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3690
	adds r0, r5, #0
	bl ov20_021D2238
_021D2846:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D27E4

	thumb_func_start ov20_021D2848
ov20_021D2848: @ 0x021D2848
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _021D285E
	cmp r0, #1
	beq _021D2886
	cmp r0, #2
	beq _021D28A6
	pop {r3, r4, r5, pc}
_021D285E:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4294
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D3E48
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4004
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2886:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4020
	cmp r0, #0
	beq _021D28E4
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D42E4
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D28A6:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4390
	cmp r0, #0
	beq _021D28E4
	ldr r0, [r4, #0x18]
	bl ov20_021D2034
	adds r1, r0, #0
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4480
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D4440
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D4DBC
	adds r0, r5, #0
	bl ov20_021D2238
_021D28E4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D2848

	thumb_func_start ov20_021D28E8
ov20_021D28E8: @ 0x021D28E8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #4
	bhi _021D29B8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2900: @ jump table
	.2byte _021D290A - _021D2900 - 2 @ case 0
	.2byte _021D291C - _021D2900 - 2 @ case 1
	.2byte _021D2946 - _021D2900 - 2 @ case 2
	.2byte _021D2966 - _021D2900 - 2 @ case 3
	.2byte _021D2978 - _021D2900 - 2 @ case 4
_021D290A:
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4BA4
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D291C:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D4440
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D4DBC
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43B4
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2946:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43D8
	cmp r0, #0
	beq _021D29B8
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4084
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2966:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D403C
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2978:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4078
	cmp r0, #0
	beq _021D29B8
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D4C2C
	cmp r0, #0
	beq _021D29B8
	ldr r0, [r4, #0x18]
	bl ov20_021D1FDC
	adds r1, r0, #0
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3E74
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D3E48
	adds r0, r5, #0
	bl ov20_021D2238
_021D29B8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D28E8

	thumb_func_start ov20_021D29BC
ov20_021D29BC: @ 0x021D29BC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #3
	bhi _021D2A98
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D29D4: @ jump table
	.2byte _021D29DC - _021D29D4 - 2 @ case 0
	.2byte _021D2A10 - _021D29D4 - 2 @ case 1
	.2byte _021D2A3A - _021D29D4 - 2 @ case 2
	.2byte _021D2A5A - _021D29D4 - 2 @ case 3
_021D29DC:
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3A40
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D4440
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D4DBC
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43B4
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2A10:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43D8
	cmp r0, #0
	beq _021D2A98
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FD0
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D403C
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2A3A:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4078
	cmp r0, #0
	beq _021D2A98
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FE0
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2A5A:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FF8
	cmp r0, #0
	beq _021D2A98
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3228
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D369C
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D36D0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3690
	adds r0, r5, #0
	bl ov20_021D2238
_021D2A98:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D29BC

	thumb_func_start ov20_021D2A9C
ov20_021D2A9C: @ 0x021D2A9C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #3
	bhi _021D2B70
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2AB4: @ jump table
	.2byte _021D2ABC - _021D2AB4 - 2 @ case 0
	.2byte _021D2AF0 - _021D2AB4 - 2 @ case 1
	.2byte _021D2B1A - _021D2AB4 - 2 @ case 2
	.2byte _021D2B3A - _021D2AB4 - 2 @ case 3
_021D2ABC:
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3A40
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D4440
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D4DBC
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43B4
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2AF0:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D43D8
	cmp r0, #0
	beq _021D2B70
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FD0
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D403C
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2B1A:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4078
	cmp r0, #0
	beq _021D2B70
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FE0
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2B3A:
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3FF8
	cmp r0, #0
	beq _021D2B70
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3228
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D369C
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D39D4
	adds r0, r5, #0
	bl ov20_021D2238
_021D2B70:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D2A9C

	thumb_func_start ov20_021D2B74
ov20_021D2B74: @ 0x021D2B74
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5]
	ldr r0, [r4, #0x18]
	bl ov20_021D1FCC
	adds r1, r0, #0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3700
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2B74

	thumb_func_start ov20_021D2B94
ov20_021D2B94: @ 0x021D2B94
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5]
	ldr r0, [r4, #0x18]
	bl ov20_021D1FD4
	adds r1, r0, #0
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39EC
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2B94

	thumb_func_start ov20_021D2BB4
ov20_021D2BB4: @ 0x021D2BB4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5]
	ldr r0, [r4, #0x18]
	bl ov20_021D1FDC
	adds r1, r0, #0
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D3E74
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2BB4

	thumb_func_start ov20_021D2BD4
ov20_021D2BD4: @ 0x021D2BD4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5]
	ldr r0, [r4, #0x18]
	bl ov20_021D2034
	adds r1, r0, #0
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4480
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2BD4

	thumb_func_start ov20_021D2BF4
ov20_021D2BF4: @ 0x021D2BF4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _021D2C06
	cmp r0, #1
	beq _021D2C20
	pop {r3, r4, r5, pc}
_021D2C06:
	ldr r0, [r4, #0x18]
	bl ov20_021D2040
	adds r1, r0, #0
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D44BC
	ldr r0, [r5, #0x14]
	adds r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_021D2C20:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D4578
	cmp r0, #0
	beq _021D2C40
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov20_021D4DBC
	adds r0, r5, #0
	bl ov20_021D2238
_021D2C40:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D2BF4

	thumb_func_start ov20_021D2C44
ov20_021D2C44: @ 0x021D2C44
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x1e
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov20_021D3578
	adds r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D2C44

	thumb_func_start ov20_021D2C60
ov20_021D2C60: @ 0x021D2C60
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x1e
	ldr r4, [r5]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #2
	bl ov20_021D3578
	ldr r0, [r5, #4]
	bl ov20_021D208C
	adds r1, r0, #0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3790
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39E0
	cmp r0, #0
	beq _021D2C9E
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39BC
	b _021D2CA8
_021D2C9E:
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3684
_021D2CA8:
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2C60

	thumb_func_start ov20_021D2CB0
ov20_021D2CB0: @ 0x021D2CB0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x1e
	ldr r4, [r5]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #3
	bl ov20_021D3578
	ldr r0, [r5, #4]
	bl ov20_021D208C
	adds r1, r0, #0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3790
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39E0
	cmp r0, #0
	beq _021D2CEE
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39BC
	b _021D2CF8
_021D2CEE:
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3684
_021D2CF8:
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2CB0

	thumb_func_start ov20_021D2D00
ov20_021D2D00: @ 0x021D2D00
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x1e
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov20_021D3578
	adds r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D2D00

	thumb_func_start ov20_021D2D1C
ov20_021D2D1C: @ 0x021D2D1C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl ov20_021D208C
	adds r1, r0, #0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D381C
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2D1C

	thumb_func_start ov20_021D2D3C
ov20_021D2D3C: @ 0x021D2D3C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x1e
	ldr r4, [r5]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov20_021D3578
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D384C
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39E0
	cmp r0, #0
	beq _021D2D72
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov20_021D39C8
	b _021D2D7C
_021D2D72:
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov20_021D3690
_021D2D7C:
	adds r0, r5, #0
	bl ov20_021D2238
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2D3C

	thumb_func_start ov20_021D2D84
ov20_021D2D84: @ 0x021D2D84
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x1f
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0
	movs r2, #1
	bl ov20_021D4DF4
	adds r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	thumb_func_end ov20_021D2D84

	thumb_func_start ov20_021D2DA0
ov20_021D2DA0: @ 0x021D2DA0
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x1f
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #1
	adds r2, r1, #0
	bl ov20_021D4DF4
	adds r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	thumb_func_end ov20_021D2DA0

	thumb_func_start ov20_021D2DBC
ov20_021D2DBC: @ 0x021D2DBC
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x1f
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0
	adds r2, r1, #0
	bl ov20_021D4DF4
	adds r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	thumb_func_end ov20_021D2DBC

	thumb_func_start ov20_021D2DD8
ov20_021D2DD8: @ 0x021D2DD8
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x1f
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #1
	movs r2, #0
	bl ov20_021D4DF4
	adds r0, r4, #0
	bl ov20_021D2238
	pop {r4, pc}
	thumb_func_end ov20_021D2DD8

	thumb_func_start ov20_021D2DF4
ov20_021D2DF4: @ 0x021D2DF4
	movs r1, #0x1e
	lsls r1, r1, #4
	ldr r3, _021D2E00 @ =ov20_021D3574
	ldr r0, [r0, r1]
	bx r3
	nop
_021D2E00: .4byte ov20_021D3574
	thumb_func_end ov20_021D2DF4

	thumb_func_start ov20_021D2E04
ov20_021D2E04: @ 0x021D2E04
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov20_021D2E04

	thumb_func_start ov20_021D2E08
ov20_021D2E08: @ 0x021D2E08
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov20_021D2E08

	thumb_func_start ov20_021D2E0C
ov20_021D2E0C: @ 0x021D2E0C
	push {r3, r4, r5, r6}
	movs r4, #0x15
	lsls r4, r4, #4
	movs r5, #0x24
	adds r6, r0, r4
	muls r5, r2, r5
	adds r5, r6, r5
	str r5, [r1]
	adds r5, r4, #0
	adds r5, #0x48
	adds r6, r0, r5
	movs r5, #0x14
	muls r5, r2, r5
	lsls r2, r2, #2
	adds r5, r6, r5
	adds r2, r0, r2
	adds r0, r4, #0
	str r5, [r1, #8]
	adds r0, #0x70
	ldr r0, [r2, r0]
	adds r4, #0x78
	str r0, [r1, #0xc]
	ldr r0, [r2, r4]
	str r0, [r1, #0x10]
	adds r0, r1, #0
	adds r0, #0x20
	strb r3, [r0]
	movs r0, #0
	str r0, [r1, #4]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov20_021D2E0C

	thumb_func_start ov20_021D2E50
ov20_021D2E50: @ 0x021D2E50
	push {r3, r4, r5, lr}
	sub sp, #0x20
	ldr r0, [r0, #0x24]
	str r0, [sp]
	lsls r0, r2, #0xc
	str r0, [sp, #8]
	lsls r0, r3, #0xc
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x18]
	movs r0, #0x23
	str r0, [sp, #0x1c]
	blx FUN_020C3D98
	adds r4, r0, #0
	add r0, sp, #0
	bl FUN_02021B90
	adds r5, r0, #0
	adds r0, r4, #0
	blx FUN_020C3DAC
	cmp r5, #0
	beq _021D2E9C
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #1
	adds r0, r5, #0
	lsls r1, r1, #0xc
	bl FUN_02021CE4
_021D2E9C:
	adds r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D2E50

	thumb_func_start ov20_021D2EA4
ov20_021D2EA4: @ 0x021D2EA4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #0x1b
	adds r5, r0, #0
	movs r0, #0x23
	lsls r1, r1, #4
	adds r7, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	str r7, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	movs r0, #0x80
	movs r1, #0x23
	bl FUN_02023790
	str r0, [r4, #0x4c]
	ldr r2, _021D2EEC @ =0x000001B5
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x23
	bl FUN_0200B144
	str r0, [r4, #0x48]
	movs r0, #0x23
	bl FUN_020149F0
	str r0, [r4, #0x50]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2EEC: .4byte 0x000001B5
	thumb_func_end ov20_021D2EA4

	thumb_func_start ov20_021D2EF0
ov20_021D2EF0: @ 0x021D2EF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021D2EFE
	bl FUN_02014A20
_021D2EFE:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021D2F08
	bl FUN_02021BD4
_021D2F08:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _021D2F12
	bl FUN_02021BD4
_021D2F12:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021D2F1C
	bl FUN_02021BD4
_021D2F1C:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021D2F26
	bl FUN_0200B190
_021D2F26:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021D2F30
	bl FUN_020237BC
_021D2F30:
	adds r0, r4, #0
	adds r0, #0xc
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x1c
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x2c
	bl FUN_0201A8FC
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov20_021D2EF0

	thumb_func_start ov20_021D2F50
ov20_021D2F50: @ 0x021D2F50
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl ov20_021D2E04
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov20_021D30A4
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r1, #0
	bl FUN_0200710C
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r2, r6, #0
	bl FUN_020070E8
	lsrs r4, r0, #5
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #0
	lsls r0, r4, #0x10
	adds r1, r5, #0
	str r2, [sp, #0xc]
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, #0xc
	movs r3, #3
	bl FUN_0201A7E8
	movs r0, #0x15
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r3, #2
	adds r1, r5, #0
	str r3, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0x6c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, #0x1c
	movs r2, #0
	bl FUN_0201A7E8
	movs r0, #0xf
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xa2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, #0x2c
	movs r2, #0
	movs r3, #0x17
	bl FUN_0201A7E8
	adds r0, r4, #0
	adds r0, #0xc2
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	movs r0, #0x26
	adds r2, r6, #0
	adds r3, r1, #0
	bl FUN_02006E3C
	adds r0, r4, #0
	adds r0, #0xc2
	str r0, [r5, #0x60]
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x23
	movs r3, #7
	str r0, [sp, #4]
	movs r0, #0x26
	movs r1, #0x18
	movs r2, #0
	lsls r3, r3, #6
	bl FUN_02006E84
	ldr r0, [r5, #4]
	bl ov20_021D2080
	lsls r0, r0, #0x18
	adds r2, r4, #0
	lsrs r0, r0, #0x18
	adds r2, #0xcb
	str r0, [sp]
	movs r0, #0x23
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	lsrs r2, r2, #0x10
	movs r3, #0xf
	bl FUN_0200DD0C
	adds r0, r5, #0
	adds r4, #0xcb
	adds r0, #0x1c
	adds r1, r4, #0
	movs r2, #0xf
	bl FUN_0200E010
	adds r0, r5, #0
	adds r0, #0xc
	bl FUN_0201A9F4
	adds r0, r5, #0
	adds r0, #0x1c
	bl FUN_0201A9F4
	adds r0, r5, #0
	bl ov20_021D312C
	adds r0, r5, #0
	bl ov20_021D3228
	adds r0, r5, #0
	movs r1, #0
	bl ov20_021D3578
	adds r0, r5, #0
	bl ov20_021D3184
	adds r0, r6, #0
	movs r1, #0
	bl FUN_02019448
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov20_021D2F50

	thumb_func_start ov20_021D30A4
ov20_021D30A4: @ 0x021D30A4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #7
	lsls r0, r0, #6
	adds r5, r1, #0
	str r0, [sp]
	movs r0, #0x23
	movs r2, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02007130
	adds r0, r5, #0
	movs r1, #6
	add r2, sp, #8
	movs r3, #0x23
	bl FUN_020071EC
	adds r5, r0, #0
	ldr r0, [sp, #8]
	adds r1, r4, #0
	movs r2, #5
	ldr r0, [r0, #0xc]
	adds r1, #0x70
	lsls r2, r2, #6
	blx FUN_020C4B18
	adds r4, #0x70
	movs r1, #5
	adds r0, r4, #0
	lsls r1, r1, #6
	blx FUN_020C2C54
	adds r0, r5, #0
	bl FUN_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D30A4

	thumb_func_start ov20_021D30F8
ov20_021D30F8: @ 0x021D30F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #2
	bne _021D311E
	ldr r0, [r4, #4]
	bl ov20_021D1F9C
	adds r0, r0, #1
	adds r4, #0x70
	lsls r0, r0, #5
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C00B4
	pop {r4, pc}
_021D311E:
	adds r4, #0x70
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C00B4
	pop {r4, pc}
	thumb_func_end ov20_021D30F8

	thumb_func_start ov20_021D312C
ov20_021D312C: @ 0x021D312C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #0
	beq _021D3144
	cmp r0, #1
	beq _021D315A
	cmp r0, #2
	beq _021D317E
	pop {r4, pc}
_021D3144:
	adds r0, r4, #0
	movs r1, #0x68
	adds r0, #0x54
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #0x10
	adds r0, #0x56
	strh r1, [r0]
	movs r0, #1
	str r0, [r4, #0x5c]
	pop {r4, pc}
_021D315A:
	adds r0, r4, #0
	movs r1, #0x30
	adds r0, #0x54
	strh r1, [r0]
	adds r0, r4, #0
	movs r2, #0x10
	adds r0, #0x56
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #0xa0
	adds r0, #0x58
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5a
	strh r2, [r0]
	movs r0, #2
	str r0, [r4, #0x5c]
	pop {r4, pc}
_021D317E:
	movs r0, #0
	str r0, [r4, #0x5c]
	pop {r4, pc}
	thumb_func_end ov20_021D312C

	thumb_func_start ov20_021D3184
ov20_021D3184: @ 0x021D3184
	push {r3, r4, r5, lr}
	sub sp, #0x30
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021D319C
	adds r0, r4, #0
	adds r0, #0x54
	add r1, sp, #8
	bl ov20_021D34E0
	b _021D31A6
_021D319C:
	movs r1, #0x80
	add r0, sp, #8
	strh r1, [r0]
	movs r1, #0x18
	strh r1, [r0, #2]
_021D31A6:
	movs r2, #0
	ldr r0, [r4]
	add r1, sp, #0xc
	adds r3, r2, #0
	bl ov20_021D2E0C
	movs r2, #0
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	add r5, sp, #8
	movs r3, #2
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r4]
	add r1, sp, #0xc
	bl ov20_021D2E50
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	movs r1, #1
	bl ov20_021D375C
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0xc
	movs r2, #6
	movs r3, #0x18
	bl ov20_021D2E50
	movs r1, #0xd
	str r0, [r4, #0x40]
	bl FUN_02021D6C
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0xc
	movs r2, #0xfa
	movs r3, #0x18
	bl ov20_021D2E50
	str r0, [r4, #0x44]
	movs r1, #0xc
	bl FUN_02021D6C
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #2
	beq _021D3222
	ldr r0, [r4, #0x44]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02021CAC
_021D3222:
	add sp, #0x30
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D3184

	thumb_func_start ov20_021D3228
ov20_021D3228: @ 0x021D3228
	push {r4, lr}
	adds r4, r0, #0
	bl ov20_021D30F8
	adds r0, r4, #0
	adds r0, #0xc
	movs r1, #0xd
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #0
	beq _021D324E
	cmp r0, #1
	beq _021D3274
	cmp r0, #2
	beq _021D32BE
	b _021D32C6
_021D324E:
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0xc
	adds r1, #0x54
	bl ov20_021D34F4
	ldr r0, [r4, #4]
	movs r1, #0
	bl ov20_021D1FA8
	adds r1, r4, #0
	adds r2, r4, #0
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, #0xc
	adds r2, #0x54
	bl ov20_021D351C
	b _021D32C6
_021D3274:
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0xc
	adds r1, #0x54
	bl ov20_021D34F4
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0xc
	adds r1, #0x58
	bl ov20_021D34F4
	ldr r0, [r4, #4]
	movs r1, #0
	bl ov20_021D1FA8
	adds r1, r4, #0
	adds r2, r4, #0
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, #0xc
	adds r2, #0x54
	bl ov20_021D351C
	ldr r0, [r4, #4]
	movs r1, #1
	bl ov20_021D1FA8
	adds r1, r4, #0
	adds r2, r4, #0
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, #0xc
	adds r2, #0x58
	bl ov20_021D351C
	b _021D32C6
_021D32BE:
	adds r0, r4, #0
	bl ov20_021D32D0
	str r0, [r4, #0x5c]
_021D32C6:
	adds r4, #0xc
	adds r0, r4, #0
	bl FUN_0201ACCC
	pop {r4, pc}
	thumb_func_end ov20_021D3228

	thumb_func_start ov20_021D32D0
ov20_021D32D0: @ 0x021D32D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r0, #4]
	movs r1, #0x23
	bl ov20_021D1FC0
	movs r4, #0
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	adds r0, #0x64
	str r4, [sp, #0x18]
	adds r5, r4, #0
	bl ov20_021D33C8
	ldr r7, [sp, #0x10]
	adds r0, r7, #0
	str r0, [sp, #0x24]
	adds r0, #0xc
	str r0, [sp, #0x24]
	adds r0, r7, #0
	adds r6, r7, #0
	str r0, [sp, #0x20]
	adds r0, #0x64
	adds r6, #0x54
	str r0, [sp, #0x20]
_021D330A:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	bl ov20_021D3400
	cmp r0, #3
	bhi _021D33A2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D3322: @ jump table
	.2byte _021D332A - _021D3322 - 2 @ case 0
	.2byte _021D3352 - _021D3322 - 2 @ case 1
	.2byte _021D3398 - _021D3322 - 2 @ case 2
	.2byte _021D339E - _021D3322 - 2 @ case 3
_021D332A:
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D33C0 @ =0x0003040D
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	movs r1, #1
	adds r3, r5, #0
	bl FUN_0201D78C
	ldr r1, [sp, #0x1c]
	movs r0, #1
	movs r2, #0
	bl FUN_02002D7C
	adds r5, r5, r0
	b _021D33A2
_021D3352:
	adds r1, r5, #0
	adds r0, r7, #0
	adds r1, #0x32
	adds r0, #0x54
	strh r1, [r0]
	adds r1, r4, #0
	adds r0, r7, #0
	adds r1, #8
	adds r0, #0x56
	strh r1, [r0]
	ldr r0, [sp, #0x24]
	adds r1, r6, #0
	bl ov20_021D34F4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #4]
	bl ov20_021D1FA8
	adds r3, r0, #0
	ldr r0, _021D33C4 @ =0x0000FFFF
	cmp r3, r0
	beq _021D338A
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	adds r2, r6, #0
	bl ov20_021D351C
_021D338A:
	ldr r0, [sp, #0x18]
	adds r7, r7, #4
	adds r0, r0, #1
	adds r6, r6, #4
	str r0, [sp, #0x18]
	adds r5, #0x64
	b _021D33A2
_021D3398:
	adds r4, #0x10
	movs r5, #0
	b _021D33A2
_021D339E:
	movs r0, #0
	str r0, [sp, #0x14]
_021D33A2:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021D330A
	ldr r0, [sp, #0x10]
	adds r0, #0x64
	str r0, [sp, #0x10]
	bl ov20_021D33F4
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D33C0: .4byte 0x0003040D
_021D33C4: .4byte 0x0000FFFF
	thumb_func_end ov20_021D32D0

	thumb_func_start ov20_021D33C8
ov20_021D33C8: @ 0x021D33C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #4]
	movs r1, #0x23
	bl ov20_021D1FC0
	str r0, [r4]
	bl FUN_02023E2C
	str r0, [r4, #4]
	ldrh r1, [r0]
	ldr r0, _021D33F0 @ =0x0000FFFE
	cmp r1, r0
	bne _021D33EA
	movs r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021D33EA:
	movs r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
_021D33F0: .4byte 0x0000FFFE
	thumb_func_end ov20_021D33C8

	thumb_func_start ov20_021D33F4
ov20_021D33F4: @ 0x021D33F4
	ldr r3, _021D33FC @ =FUN_020237BC
	ldr r0, [r0]
	bx r3
	nop
_021D33FC: .4byte FUN_020237BC
	thumb_func_end ov20_021D33F4

	thumb_func_start ov20_021D3400
ov20_021D3400: @ 0x021D3400
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	str r1, [sp]
	mov ip, r0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _021D3490
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D341C: @ jump table
	.2byte _021D3424 - _021D341C - 2 @ case 0
	.2byte _021D347A - _021D341C - 2 @ case 1
	.2byte _021D3486 - _021D341C - 2 @ case 2
	.2byte _021D3490 - _021D341C - 2 @ case 3
_021D3424:
	cmp r0, #0
	bne _021D3460
	ldr r6, _021D34C8 @ =0x0000FFFE
	movs r3, #0xe
	movs r0, #1
	movs r1, #3
	movs r2, #2
	adds r7, r6, #1
	lsls r3, r3, #0xc
_021D3436:
	ldr r5, [r4, #4]
	ldrh r5, [r5]
	cmp r5, r3
	beq _021D3448
	cmp r5, r6
	beq _021D3450
	cmp r5, r7
	beq _021D344C
	b _021D3454
_021D3448:
	str r2, [r4, #8]
	b _021D345A
_021D344C:
	str r1, [r4, #8]
	b _021D345A
_021D3450:
	str r0, [r4, #8]
	b _021D345A
_021D3454:
	ldr r5, [r4, #4]
	adds r5, r5, #2
	str r5, [r4, #4]
_021D345A:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _021D3436
_021D3460:
	ldr r3, [r4, #4]
	mov r2, ip
	subs r3, r3, r2
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	asrs r2, r2, #1
	ldr r0, [sp]
	mov r1, ip
	adds r2, r2, #1
	bl FUN_02023D8C
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D347A:
	mov r0, ip
	bl FUN_0201D0C8
	str r0, [r4, #4]
	movs r0, #1
	b _021D3494
_021D3486:
	mov r0, ip
	adds r0, r0, #2
	str r0, [r4, #4]
	movs r0, #2
	b _021D3494
_021D3490:
	movs r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021D3494:
	ldr r1, [r4, #4]
	ldrh r2, [r1]
	movs r1, #0xe
	lsls r1, r1, #0xc
	cmp r2, r1
	beq _021D34AE
	ldr r1, _021D34C8 @ =0x0000FFFE
	cmp r2, r1
	beq _021D34BA
	adds r1, r1, #1
	cmp r2, r1
	beq _021D34B4
	b _021D34C0
_021D34AE:
	movs r1, #2
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021D34B4:
	movs r1, #3
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021D34BA:
	movs r1, #1
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021D34C0:
	movs r1, #0
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D34C8: .4byte 0x0000FFFE
	thumb_func_end ov20_021D3400

	thumb_func_start ov20_021D34CC
ov20_021D34CC: @ 0x021D34CC
	movs r2, #0
	ldrsh r2, [r0, r2]
	subs r2, #0x30
	strh r2, [r1]
	movs r2, #2
	ldrsh r0, [r0, r2]
	subs r0, #8
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D34CC

	thumb_func_start ov20_021D34E0
ov20_021D34E0: @ 0x021D34E0
	movs r2, #0
	ldrsh r2, [r0, r2]
	adds r2, #0x18
	strh r2, [r1]
	movs r2, #2
	ldrsh r0, [r0, r2]
	adds r0, #8
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov20_021D34E0

	thumb_func_start ov20_021D34F4
ov20_021D34F4: @ 0x021D34F4
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, r1, #0
	add r1, sp, #8
	bl ov20_021D34CC
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	add r3, sp, #8
	ldrh r2, [r3]
	ldrh r3, [r3, #2]
	adds r0, r4, #0
	movs r1, #0xe
	bl FUN_0201AE78
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov20_021D34F4

	thumb_func_start ov20_021D351C
ov20_021D351C: @ 0x021D351C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, _021D356C @ =0x0000FFFF
	adds r6, r3, #0
	adds r4, r1, #0
	cmp r6, r0
	beq _021D3566
	adds r0, r2, #0
	add r1, sp, #0x10
	bl ov20_021D34CC
	ldr r1, [r5, #0x4c]
	adds r0, r6, #0
	bl FUN_02014DB8
	ldr r1, [r5, #0x4c]
	movs r0, #1
	movs r2, #0
	bl FUN_02002D7C
	add r3, sp, #0x10
	movs r0, #2
	ldrsh r0, [r3, r0]
	movs r6, #0
	movs r1, #1
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3570 @ =0x0005060E
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldrsh r3, [r3, r6]
	ldr r2, [r5, #0x4c]
	adds r0, r4, #0
	bl FUN_0201D78C
_021D3566:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D356C: .4byte 0x0000FFFF
_021D3570: .4byte 0x0005060E
	thumb_func_end ov20_021D351C

	thumb_func_start ov20_021D3574
ov20_021D3574: @ 0x021D3574
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end ov20_021D3574

	thumb_func_start ov20_021D3578
ov20_021D3578: @ 0x021D3578
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x1c
	movs r1, #9
	bl FUN_0201ADA4
	cmp r5, #3
	bhi _021D3674
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D3598: @ jump table
	.2byte _021D35A0 - _021D3598 - 2 @ case 0
	.2byte _021D362A - _021D3598 - 2 @ case 1
	.2byte _021D3604 - _021D3598 - 2 @ case 2
	.2byte _021D3650 - _021D3598 - 2 @ case 3
_021D35A0:
	movs r0, #2
	movs r1, #0x3c
	movs r2, #0
	bl FUN_0200B368
	adds r5, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	movs r1, #0
	bl FUN_02023790
	movs r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl FUN_0200B7B4
	ldr r0, [r4, #4]
	bl ov20_021D1F88
	adds r1, r0, #0
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	bl FUN_0200B1B8
	ldr r2, [r4, #0x4c]
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3680 @ =0x00010209
	movs r1, #1
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x1c
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0200B3F0
	b _021D3674
_021D3604:
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	movs r1, #6
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3680 @ =0x00010209
	movs r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x4c]
	adds r0, #0x1c
	bl FUN_0201D78C
	b _021D3674
_021D362A:
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	movs r1, #7
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3680 @ =0x00010209
	movs r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x4c]
	adds r0, #0x1c
	bl FUN_0201D78C
	b _021D3674
_021D3650:
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	movs r1, #8
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3680 @ =0x00010209
	movs r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x4c]
	adds r0, #0x1c
	bl FUN_0201D78C
_021D3674:
	adds r4, #0x1c
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D3680: .4byte 0x00010209
	thumb_func_end ov20_021D3578

	thumb_func_start ov20_021D3684
ov20_021D3684: @ 0x021D3684
	ldr r3, _021D368C @ =ov20_021D375C
	movs r1, #0
	bx r3
	nop
_021D368C: .4byte ov20_021D375C
	thumb_func_end ov20_021D3684

	thumb_func_start ov20_021D3690
ov20_021D3690: @ 0x021D3690
	ldr r3, _021D3698 @ =ov20_021D375C
	movs r1, #1
	bx r3
	nop
_021D3698: .4byte ov20_021D375C
	thumb_func_end ov20_021D3690

	thumb_func_start ov20_021D369C
ov20_021D369C: @ 0x021D369C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl FUN_02021CAC
	adds r0, r4, #0
	movs r1, #1
	bl ov20_021D375C
	pop {r4, pc}
	thumb_func_end ov20_021D369C

	thumb_func_start ov20_021D36B0
ov20_021D36B0: @ 0x021D36B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #2
	bne _021D36CE
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4, #0x44]
	movs r1, #0
	bl FUN_02021CAC
_021D36CE:
	pop {r4, pc}
	thumb_func_end ov20_021D36B0

	thumb_func_start ov20_021D36D0
ov20_021D36D0: @ 0x021D36D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #2
	bne _021D36FE
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, [r4, #0x44]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, [r4, #0x40]
	movs r1, #0xd
	bl FUN_02021D6C
	ldr r0, [r4, #0x44]
	movs r1, #0xc
	bl FUN_02021D6C
_021D36FE:
	pop {r4, pc}
	thumb_func_end ov20_021D36D0

	thumb_func_start ov20_021D3700
ov20_021D3700: @ 0x021D3700
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021D3730
	adds r2, r4, #0
	lsls r0, r1, #2
	adds r2, #0x54
	adds r0, r2, r0
	add r1, sp, #0
	bl ov20_021D34E0
	add r1, sp, #0
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #2
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	b _021D3748
_021D3730:
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp, #4]
	movs r0, #6
	lsls r0, r0, #0xe
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl FUN_02021C50
_021D3748:
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl FUN_02021C50
	adds r0, r4, #0
	movs r1, #1
	bl ov20_021D375C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov20_021D3700

	thumb_func_start ov20_021D375C
ov20_021D375C: @ 0x021D375C
	push {r3, lr}
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	beq _021D377A
	cmp r1, #0
	ldr r0, [r0, #0x3c]
	beq _021D3772
	movs r1, #0
	bl FUN_02021D6C
	pop {r3, pc}
_021D3772:
	movs r1, #1
	bl FUN_02021D6C
	pop {r3, pc}
_021D377A:
	cmp r1, #0
	ldr r0, [r0, #0x3c]
	beq _021D3788
	movs r1, #0xe
	bl FUN_02021D6C
	pop {r3, pc}
_021D3788:
	movs r1, #0xf
	bl FUN_02021D6C
	pop {r3, pc}
	thumb_func_end ov20_021D375C

	thumb_func_start ov20_021D3790
ov20_021D3790: @ 0x021D3790
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x2c
	movs r1, #9
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	movs r1, #9
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3818 @ =0x00010209
	movs r3, #0xe
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x4c]
	adds r0, #0x2c
	bl FUN_0201D78C
	ldr r0, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	movs r1, #0xa
	bl FUN_0200B1B8
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3818 @ =0x00010209
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x4c]
	adds r0, #0x2c
	movs r3, #0xe
	bl FUN_0201D78C
	ldr r2, [r5, #0x60]
	adds r0, r5, #0
	lsls r2, r2, #0x10
	adds r0, #0x2c
	movs r1, #0
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_0200DC48
	adds r1, r5, #0
	ldr r0, [r5, #0x50]
	adds r1, #0x2c
	movs r2, #0
	lsls r3, r4, #4
	bl FUN_02014A58
	adds r5, #0x2c
	adds r0, r5, #0
	bl FUN_0201A954
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D3818: .4byte 0x00010209
	thumb_func_end ov20_021D3790

	thumb_func_start ov20_021D381C
ov20_021D381C: @ 0x021D381C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0
	adds r4, r1, #0
	adds r0, #0x2c
	movs r1, #9
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, [r5, #0x50]
	adds r5, #0x2c
	adds r1, r5, #0
	movs r2, #0
	lsls r3, r4, #4
	bl FUN_02014A58
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D381C

	thumb_func_start ov20_021D384C
ov20_021D384C: @ 0x021D384C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #0
	bl FUN_0200DC9C
	adds r4, #0x2c
	adds r0, r4, #0
	bl FUN_0201ACF4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D384C

	thumb_func_start ov20_021D3864
ov20_021D3864: @ 0x021D3864
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x23
	movs r1, #0x10
	adds r6, r2, #0
	bl FUN_02018144
	str r5, [r0]
	str r4, [r0, #4]
	str r6, [r0, #8]
	movs r1, #0
	str r1, [r0, #0xc]
	pop {r4, r5, r6, pc}
	thumb_func_end ov20_021D3864

	thumb_func_start ov20_021D3880
ov20_021D3880: @ 0x021D3880
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D388E
	bl FUN_02021BD4
_021D388E:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D3880

	thumb_func_start ov20_021D3898
ov20_021D3898: @ 0x021D3898
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r1, #0
	bl ov20_021D2E04
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #5
	adds r2, r4, #0
	movs r3, #3
	bl FUN_020070E8
	ldr r1, _021D3904 @ =0x021D52D4
	adds r0, r4, #0
	movs r2, #0
	bl ov20_021D390C
	ldr r1, _021D3908 @ =0x021D52DC
	adds r0, r4, #0
	movs r2, #1
	bl ov20_021D390C
	adds r0, r5, #0
	bl ov20_021D3980
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019448
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D3904: .4byte 0x021D52D4
_021D3908: .4byte 0x021D52DC
	thumb_func_end ov20_021D3898

	thumb_func_start ov20_021D390C
ov20_021D390C: @ 0x021D390C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	adds r5, r1, #0
	adds r4, r2, #0
	add r1, sp, #0x10
	adds r2, r5, #0
	bl FUN_0201A8D4
	add r0, sp, #0x10
	bl FUN_0201A9F4
	add r0, sp, #0x10
	movs r1, #0xe
	bl FUN_0201ADA4
	ldr r1, _021D3978 @ =0x000001B6
	movs r0, #0x1a
	adds r2, r4, #0
	movs r3, #0x23
	bl FUN_0200B010
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r5, #3]
	adds r2, r4, #0
	lsls r1, r1, #3
	subs r0, r1, r0
	movs r1, #0
	lsrs r3, r0, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D397C @ =0x0001020E
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add r0, sp, #0x10
	bl FUN_0201ACCC
	adds r0, r4, #0
	bl FUN_020237BC
	add r0, sp, #0x10
	bl FUN_0201A8FC
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021D3978: .4byte 0x000001B6
_021D397C: .4byte 0x0001020E
	thumb_func_end ov20_021D390C

	thumb_func_start ov20_021D3980
ov20_021D3980: @ 0x021D3980
	push {r3, r4, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	ldr r0, [r4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #3
	bl ov20_021D2E0C
	movs r0, #5
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	movs r2, #0x40
	movs r3, #0x38
	bl ov20_021D2E50
	str r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02021D6C
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D3980

	thumb_func_start ov20_021D39BC
ov20_021D39BC: @ 0x021D39BC
	ldr r3, _021D39C4 @ =FUN_02021D6C
	ldr r0, [r0, #0xc]
	movs r1, #3
	bx r3
	.align 2, 0
_021D39C4: .4byte FUN_02021D6C
	thumb_func_end ov20_021D39BC

	thumb_func_start ov20_021D39C8
ov20_021D39C8: @ 0x021D39C8
	ldr r3, _021D39D0 @ =FUN_02021D6C
	ldr r0, [r0, #0xc]
	movs r1, #2
	bx r3
	.align 2, 0
_021D39D0: .4byte FUN_02021D6C
	thumb_func_end ov20_021D39C8

	thumb_func_start ov20_021D39D4
ov20_021D39D4: @ 0x021D39D4
	ldr r3, _021D39DC @ =FUN_02021CAC
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D39DC: .4byte FUN_02021CAC
	thumb_func_end ov20_021D39D4

	thumb_func_start ov20_021D39E0
ov20_021D39E0: @ 0x021D39E0
	ldr r3, _021D39E8 @ =FUN_02021D34
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D39E8: .4byte FUN_02021D34
	thumb_func_end ov20_021D39E0

	thumb_func_start ov20_021D39EC
ov20_021D39EC: @ 0x021D39EC
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	beq _021D39FE
	cmp r1, #1
	beq _021D3A0C
_021D39FE:
	movs r0, #1
	lsls r0, r0, #0x12
	str r0, [sp]
	movs r0, #0xe
	lsls r0, r0, #0xe
	str r0, [sp, #4]
	b _021D3A18
_021D3A0C:
	movs r0, #3
	lsls r0, r0, #0x12
	str r0, [sp]
	movs r0, #0xe
	lsls r0, r0, #0xe
	str r0, [sp, #4]
_021D3A18:
	ldr r0, [r4, #0xc]
	add r1, sp, #0
	bl FUN_02021C50
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02021D6C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov20_021D39EC

	thumb_func_start ov20_021D3A2C
ov20_021D3A2C: @ 0x021D3A2C
	push {r3, lr}
	ldr r0, [r0]
	bl ov20_021D2E04
	movs r1, #3
	adds r2, r1, #0
	movs r3, #0x40
	bl FUN_02019184
	pop {r3, pc}
	thumb_func_end ov20_021D3A2C

	thumb_func_start ov20_021D3A40
ov20_021D3A40: @ 0x021D3A40
	push {r3, lr}
	ldr r0, [r0]
	bl ov20_021D2E04
	movs r1, #3
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	pop {r3, pc}
	thumb_func_end ov20_021D3A40

	thumb_func_start ov20_021D3A54
ov20_021D3A54: @ 0x021D3A54
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x23
	movs r1, #0x60
	adds r7, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	str r7, [r4, #8]
	adds r0, r5, #0
	bl ov20_021D2E04
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x18]
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov20_021D3A54

	thumb_func_start ov20_021D3A80
ov20_021D3A80: @ 0x021D3A80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021D3A8E
	bl FUN_02021BD4
_021D3A8E:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D3A80

	thumb_func_start ov20_021D3A98
ov20_021D3A98: @ 0x021D3A98
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r1, #0
	bl ov20_021D2E04
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #2
	adds r2, r4, #0
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #3
	adds r2, r4, #0
	bl FUN_020070E8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	lsrs r2, r2, #5
	bl ov20_021D3B74
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov20_021D3C78
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov20_021D3D44
	movs r2, #0
	adds r0, r4, #0
	movs r1, #1
	subs r3, r2, #4
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	movs r3, #2
	bl FUN_02019184
	adds r0, r5, #0
	bl ov20_021D3E0C
	movs r1, #2
	adds r2, r1, #0
	ldr r0, _021D3B68 @ =0x04000050
	subs r2, #0xc
	blx FUN_020BF578
	ldr r0, _021D3B6C @ =0x04000048
	movs r2, #0x3f
	ldrh r3, [r0]
	movs r1, #0x1f
	bics r3, r2
	orrs r1, r3
	movs r3, #0x20
	orrs r1, r3
	strh r1, [r0]
	ldrh r5, [r0, #2]
	movs r1, #0x1d
	bics r5, r2
	orrs r1, r5
	orrs r1, r3
	strh r1, [r0, #2]
	adds r1, r0, #0
	movs r2, #0xff
	subs r1, #8
	strh r2, [r1]
	movs r1, #0xa0
	subs r0, r0, #4
	strh r1, [r0]
	lsls r2, r3, #0x15
	ldr r1, [r2]
	ldr r0, _021D3B70 @ =0xFFFF1FFF
	ands r1, r0
	lsls r0, r3, #8
	orrs r0, r1
	str r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019448
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D3B68: .4byte 0x04000050
_021D3B6C: .4byte 0x04000048
_021D3B70: .4byte 0xFFFF1FFF
	thumb_func_end ov20_021D3A98

	thumb_func_start ov20_021D3B74
ov20_021D3B74: @ 0x021D3B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r6, r2, #0
	movs r2, #0x6d
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x23
	bl FUN_0200B144
	str r0, [sp, #0x20]
	movs r0, #9
	movs r7, #1
	str r0, [sp, #0x24]
	movs r4, #0
_021D3B96:
	cmp r4, #0
	beq _021D3BAE
	adds r0, r4, #0
	movs r1, #3
	blx FUN_020E1F6C
	cmp r1, #0
	bne _021D3BAE
	ldr r0, [sp, #0x24]
	movs r7, #1
	adds r0, r0, #3
	str r0, [sp, #0x24]
_021D3BAE:
	ldr r0, [sp, #0x14]
	adds r1, r4, #0
	ldr r0, [r0, #8]
	bl FUN_02099CA0
	cmp r0, #0
	beq _021D3BCC
	ldr r0, [sp, #0x20]
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	ldr r0, _021D3C6C @ =0x0001020F
	str r0, [sp, #0x1c]
	b _021D3BDA
_021D3BCC:
	ldr r0, [sp, #0x20]
	movs r1, #0xc
	bl FUN_0200B1EC
	adds r5, r0, #0
	ldr r0, _021D3C70 @ =0x0003040F
	str r0, [sp, #0x1c]
_021D3BDA:
	ldr r0, _021D3C74 @ =0x000003EE
	cmp r6, r0
	blo _021D3BE4
	bl FUN_02022974
_021D3BE4:
	ldr r0, [sp, #0x24]
	lsls r3, r7, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x28
	movs r2, #1
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	add r0, sp, #0x28
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x48
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	adds r2, r5, #0
	bl FUN_0201D78C
	add r0, sp, #0x28
	bl FUN_0201A9F4
	add r0, sp, #0x28
	bl FUN_0201ACCC
	adds r0, r5, #0
	bl FUN_020237BC
	add r0, sp, #0x28
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r6, #0x12
	adds r7, #0xa
	cmp r4, #0xc
	blt _021D3B96
	ldr r0, [sp, #0x20]
	bl FUN_0200B190
	adds r0, r6, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3C6C: .4byte 0x0001020F
_021D3C70: .4byte 0x0003040F
_021D3C74: .4byte 0x000003EE
	thumb_func_end ov20_021D3B74

	thumb_func_start ov20_021D3C78
ov20_021D3C78: @ 0x021D3C78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r1, #0
	movs r1, #0xce
	adds r6, r0, #0
	lsls r1, r1, #2
	adds r0, r2, #0
	str r2, [sp, #0x14]
	cmp r0, r1
	blo _021D3C90
	bl FUN_02022974
_021D3C90:
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r1, sp, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0x22
	bl FUN_0201A7E8
	movs r0, #4
	movs r1, #0x23
	bl FUN_02023790
	adds r4, r0, #0
	add r0, sp, #0x20
	movs r1, #0xf
	bl FUN_0201ADA4
	bl ov20_021D5044
	adds r7, r0, #0
	ldr r5, _021D3D38 @ =0x00000000
	beq _021D3D16
_021D3CD0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov20_021D5048
	adds r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov20_021D506C
	ldr r0, [r6, #8]
	adds r1, r5, #0
	bl FUN_02099CDC
	cmp r0, #0
	beq _021D3CF2
	ldr r1, _021D3D3C @ =0x0001020F
	b _021D3CF4
_021D3CF2:
	ldr r1, _021D3D40 @ =0x0003040F
_021D3CF4:
	ldr r0, [sp, #0x18]
	adds r2, r4, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r0, sp, #0x20
	movs r1, #0
	adds r3, r3, #3
	bl FUN_0201D78C
	adds r5, r5, #1
	cmp r5, r7
	blo _021D3CD0
_021D3D16:
	add r0, sp, #0x20
	bl FUN_0201ACCC
	add r0, sp, #0x20
	bl FUN_0201A9F4
	adds r0, r4, #0
	bl FUN_020237BC
	add r0, sp, #0x20
	bl FUN_0201A8FC
	ldr r0, [sp, #0x14]
	adds r0, #0xc8
	str r0, [sp, #0x14]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3D38: .4byte 0x00000000
_021D3D3C: .4byte 0x0001020F
_021D3D40: .4byte 0x0003040F
	thumb_func_end ov20_021D3C78

	thumb_func_start ov20_021D3D44
ov20_021D3D44: @ 0x021D3D44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r2, #0
	movs r2, #0x6d
	str r1, [sp, #0x14]
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x23
	bl FUN_0200B144
	movs r1, #0xd
	str r0, [sp, #0x20]
	bl FUN_0200B1EC
	str r0, [sp, #0x1c]
	movs r0, #0
	ldr r1, [sp, #0x1c]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x40
	subs r0, r1, r0
	lsrs r0, r0, #1
	ldr r4, _021D3E04 @ =0x021D52E4
	str r0, [sp, #0x18]
	movs r7, #0
	add r6, sp, #0x24
_021D3D7C:
	movs r0, #0x3f
	lsls r0, r0, #4
	cmp r5, r0
	blo _021D3D88
	bl FUN_02022974
_021D3D88:
	ldrh r0, [r4, #2]
	adds r1, r6, #0
	movs r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	adds r0, r6, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3E08 @ =0x0001020F
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x18]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_0201A9F4
	adds r0, r6, #0
	bl FUN_0201ACCC
	adds r0, r6, #0
	bl FUN_0201A8FC
	adds r7, r7, #1
	adds r5, #0x10
	adds r4, r4, #4
	cmp r7, #2
	blo _021D3D7C
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	ldr r0, [sp, #0x20]
	bl FUN_0200B190
	adds r0, r5, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D3E04: .4byte 0x021D52E4
_021D3E08: .4byte 0x0001020F
	thumb_func_end ov20_021D3D44

	thumb_func_start ov20_021D3E0C
ov20_021D3E0C: @ 0x021D3E0C
	push {r3, r4, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	ldr r0, [r4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #1
	bl ov20_021D2E0C
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	movs r2, #0x30
	movs r3, #0x36
	bl ov20_021D2E50
	str r0, [r4, #0x5c]
	movs r1, #4
	bl FUN_02021D6C
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D3E0C

	thumb_func_start ov20_021D3E48
ov20_021D3E48: @ 0x021D3E48
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	adds r4, r1, #0
	bl FUN_02021CAC
	cmp r4, #0
	beq _021D3E72
	ldr r0, [r5, #4]
	bl ov20_021D1F94
	cmp r0, #0
	ldr r0, [r5, #0x5c]
	bne _021D3E6C
	movs r1, #4
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D3E6C:
	movs r1, #6
	bl FUN_02021D6C
_021D3E72:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D3E48

	thumb_func_start ov20_021D3E74
ov20_021D3E74: @ 0x021D3E74
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r5, r1, #0
	bl ov20_021D1F94
	movs r1, #0
	str r1, [sp, #0x10]
	cmp r5, #0xfe
	bne _021D3E96
	movs r0, #0x84
	str r0, [sp, #8]
	movs r0, #0x96
	str r0, [sp, #0xc]
	movs r5, #0x10
	b _021D3ED6
_021D3E96:
	cmp r0, #0
	bne _021D3EBE
	adds r0, r5, #0
	movs r1, #3
	blx FUN_020E2178
	movs r0, #0x50
	muls r0, r1, r0
	adds r0, #0x30
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #3
	blx FUN_020E2178
	movs r1, #0x18
	muls r1, r0, r1
	adds r1, #0x36
	str r1, [sp, #0xc]
	movs r5, #4
	b _021D3ED6
_021D3EBE:
	adds r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov20_021D506C
	ldr r0, [sp, #4]
	movs r5, #6
	adds r0, #0x1a
	str r0, [sp, #8]
	ldr r0, [sp]
	adds r0, #0x3e
	str r0, [sp, #0xc]
_021D3ED6:
	ldr r0, [sp, #8]
	add r1, sp, #8
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	bl FUN_02021C50
	ldr r0, [r4, #0x5c]
	adds r1, r5, #0
	bl FUN_02021D6C
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D3E74

	thumb_func_start ov20_021D3EF8
ov20_021D3EF8: @ 0x021D3EF8
	push {r3, lr}
	movs r3, #0
	str r3, [r0, #0x14]
	movs r1, #0x10
	str r1, [sp]
	movs r1, #2
	adds r2, r1, #0
	adds r0, #0x1c
	subs r2, #0xc
	bl ov20_021D4FB0
	pop {r3, pc}
	thumb_func_end ov20_021D3EF8

	thumb_func_start ov20_021D3F10
ov20_021D3F10: @ 0x021D3F10
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D3F22
	cmp r0, #1
	beq _021D3F4C
	b _021D3F58
_021D3F22:
	adds r0, r4, #0
	adds r0, #0x1c
	bl ov20_021D4FF0
	cmp r0, #0
	beq _021D3F58
	movs r0, #0x18
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #1
	ldr r1, [r4, #0xc]
	adds r0, #0x3c
	adds r3, r2, #0
	bl ov20_021D4E38
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	b _021D3F58
_021D3F4C:
	adds r4, #0x3c
	adds r0, r4, #0
	bl ov20_021D4E8C
	add sp, #8
	pop {r4, pc}
_021D3F58:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D3F10

	thumb_func_start ov20_021D3F60
ov20_021D3F60: @ 0x021D3F60
	push {r3, lr}
	sub sp, #8
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #0x14]
	subs r0, #0x18
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r2, #1
	ldr r1, [r1, #0xc]
	adds r0, #0x3c
	adds r3, r2, #0
	bl ov20_021D4E38
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov20_021D3F60

	thumb_func_start ov20_021D3F84
ov20_021D3F84: @ 0x021D3F84
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D3F96
	cmp r0, #1
	beq _021D3FBE
	b _021D3FCA
_021D3F96:
	adds r0, r4, #0
	adds r0, #0x3c
	bl ov20_021D4E8C
	cmp r0, #0
	beq _021D3FCA
	movs r0, #0x10
	movs r2, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r3, r2, #0
	adds r0, #0x1c
	movs r1, #2
	subs r3, #0xa
	bl ov20_021D4FB0
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	b _021D3FCA
_021D3FBE:
	adds r4, #0x1c
	adds r0, r4, #0
	bl ov20_021D4FF0
	add sp, #4
	pop {r3, r4, pc}
_021D3FCA:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov20_021D3F84

	thumb_func_start ov20_021D3FD0
ov20_021D3FD0: @ 0x021D3FD0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	movs r1, #1
	movs r2, #3
	movs r3, #2
	bl FUN_02019184
	pop {r3, pc}
	thumb_func_end ov20_021D3FD0

	thumb_func_start ov20_021D3FE0
ov20_021D3FE0: @ 0x021D3FE0
	push {r3, lr}
	movs r2, #0
	movs r1, #0x10
	adds r3, r2, #0
	str r1, [sp]
	adds r0, #0x1c
	movs r1, #2
	subs r3, #0xa
	bl ov20_021D4FB0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov20_021D3FE0

	thumb_func_start ov20_021D3FF8
ov20_021D3FF8: @ 0x021D3FF8
	ldr r3, _021D4000 @ =ov20_021D4FF0
	adds r0, #0x1c
	bx r3
	nop
_021D4000: .4byte ov20_021D4FF0
	thumb_func_end ov20_021D3FF8

	thumb_func_start ov20_021D4004
ov20_021D4004: @ 0x021D4004
	push {r3, lr}
	sub sp, #8
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	str r1, [sp, #4]
	adds r0, #0x1c
	movs r1, #2
	movs r2, #0x3f
	movs r3, #0x7c
	bl ov20_021D4F1C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov20_021D4004

	thumb_func_start ov20_021D4020
ov20_021D4020: @ 0x021D4020
	push {r3, lr}
	adds r0, #0x1c
	bl ov20_021D4F4C
	cmp r0, #0
	beq _021D4038
	movs r0, #1
	movs r1, #0
	bl FUN_02019120
	movs r0, #1
	pop {r3, pc}
_021D4038:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov20_021D4020

	thumb_func_start ov20_021D403C
ov20_021D403C: @ 0x021D403C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021D4074 @ =0x04000050
	movs r1, #2
	movs r2, #0x3f
	movs r3, #0
	blx FUN_020BF55C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #0x7c
	str r0, [sp]
	movs r0, #0xc
	adds r4, #0x1c
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x3f
	movs r3, #0
	bl ov20_021D4F1C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021D4074: .4byte 0x04000050
	thumb_func_end ov20_021D403C

	thumb_func_start ov20_021D4078
ov20_021D4078: @ 0x021D4078
	ldr r3, _021D4080 @ =ov20_021D4F4C
	adds r0, #0x1c
	bx r3
	nop
_021D4080: .4byte ov20_021D4F4C
	thumb_func_end ov20_021D4078

	thumb_func_start ov20_021D4084
ov20_021D4084: @ 0x021D4084
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F94
	cmp r0, #0
	bne _021D4098
	movs r3, #3
	mvns r3, r3
	b _021D409A
_021D4098:
	movs r3, #0xfc
_021D409A:
	ldr r0, [r4, #0xc]
	movs r1, #1
	movs r2, #0
	bl FUN_02019184
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D4084

	thumb_func_start ov20_021D40A8
ov20_021D40A8: @ 0x021D40A8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F94
	cmp r0, #0
	bne _021D40BE
	movs r0, #0xff
	mvns r0, r0
	b _021D40C2
_021D40BE:
	movs r0, #1
	lsls r0, r0, #8
_021D40C2:
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	ldr r1, [r4, #0xc]
	adds r0, #0x3c
	movs r2, #1
	movs r3, #0
	bl ov20_021D4E38
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D40A8

	thumb_func_start ov20_021D40DC
ov20_021D40DC: @ 0x021D40DC
	ldr r3, _021D40E4 @ =ov20_021D4E8C
	adds r0, #0x3c
	bx r3
	nop
_021D40E4: .4byte ov20_021D4E8C
	thumb_func_end ov20_021D40DC

	thumb_func_start ov20_021D40E8
ov20_021D40E8: @ 0x021D40E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x23
	movs r1, #0x94
	adds r7, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	str r7, [r4, #8]
	adds r0, r5, #0
	bl ov20_021D2E04
	str r0, [r4, #0xc]
	movs r0, #0x20
	movs r1, #0x23
	bl FUN_02023790
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0xc]
	adds r1, #0x10
	movs r2, #2
	movs r3, #4
	bl FUN_0201A7E8
	movs r3, #0
	str r3, [sp]
	movs r1, #0xc
	str r1, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0xc]
	adds r1, #0x20
	movs r2, #2
	bl FUN_0201A7E8
	movs r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov20_021D40E8

	thumb_func_start ov20_021D4164
ov20_021D4164: @ 0x021D4164
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D4172
	bl FUN_02021BD4
_021D4172:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D417C
	bl FUN_02021BD4
_021D417C:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021D4186
	bl FUN_02021BD4
_021D4186:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021D4190
	bl FUN_020237BC
_021D4190:
	adds r0, r4, #0
	adds r0, #0x20
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A8FC
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov20_021D4164

	thumb_func_start ov20_021D41A8
ov20_021D41A8: @ 0x021D41A8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	bl ov20_021D2E04
	adds r4, r0, #0
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x23
	bl FUN_02019690
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019CB8
	adds r0, r5, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x10
	bl FUN_0201A9F4
	adds r0, r5, #0
	adds r0, #0x10
	bl FUN_0201ACCC
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019448
	adds r0, r5, #0
	bl ov20_021D4210
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D41A8

	thumb_func_start ov20_021D4210
ov20_021D4210: @ 0x021D4210
	push {r3, r4, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	ldr r0, [r4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #2
	bl ov20_021D2E0C
	movs r0, #3
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	movs r2, #0x48
	movs r3, #0x38
	bl ov20_021D2E50
	str r0, [r4, #0x30]
	movs r1, #8
	bl FUN_02021D6C
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	movs r2, #0xf0
	movs r3, #0x40
	bl ov20_021D2E50
	str r0, [r4, #0x34]
	movs r1, #0xb
	bl FUN_02021D6C
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	movs r2, #0xf0
	movs r3, #0x90
	bl ov20_021D2E50
	str r0, [r4, #0x38]
	movs r1, #0xa
	bl FUN_02021D6C
	ldr r0, [r4, #0x38]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D4210

	thumb_func_start ov20_021D4294
ov20_021D4294: @ 0x021D4294
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r6, #0
	bl ov20_021D4638
	ldr r0, [r6, #4]
	bl ov20_021D1FE4
	adds r7, r0, #0
	cmp r7, #0xa
	bls _021D42B4
	movs r7, #0xa
_021D42B4:
	adds r0, r6, #0
	adds r0, #0x8c
	movs r5, #0
	ldr r4, [r0]
	cmp r7, #0
	bls _021D42D8
_021D42C0:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov20_021D4658
	movs r0, #1
	tst r0, r5
	beq _021D42D2
	adds r4, #0x18
_021D42D2:
	adds r5, r5, #1
	cmp r5, r7
	blo _021D42C0
_021D42D8:
	adds r6, #0x10
	adds r0, r6, #0
	bl FUN_0201ACCC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov20_021D4294

	thumb_func_start ov20_021D42E4
ov20_021D42E4: @ 0x021D42E4
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021D437C @ =0x04000050
	movs r1, #4
	movs r2, #0x3f
	movs r3, #0
	blx FUN_020BF55C
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	ldr r1, _021D4380 @ =0x04000048
	ldr r0, _021D4384 @ =0xFFFFC0FF
	ldrh r2, [r1]
	movs r5, #0xff
	ands r2, r0
	movs r0, #0x1f
	lsls r0, r0, #8
	orrs r2, r0
	lsrs r0, r1, #0xd
	orrs r0, r2
	strh r0, [r1]
	adds r0, r4, #0
	ldrb r2, [r1, #2]
	adds r0, #0x84
	strb r2, [r0]
	adds r0, r1, #0
	subs r0, #0x48
	movs r2, #0xe
	ldr r3, [r0]
	lsls r2, r2, #0xc
	ands r2, r3
	lsrs r3, r2, #0xd
	adds r2, r4, #0
	adds r2, #0x88
	str r3, [r2]
	ldrh r3, [r1, #2]
	movs r2, #0x3f
	bics r3, r2
	movs r2, #0x1b
	orrs r3, r2
	movs r2, #0x20
	orrs r3, r2
	strh r3, [r1, #2]
	subs r3, r1, #6
	strh r5, [r3]
	ldr r3, _021D4388 @ =0x00002EB0
	subs r1, r1, #2
	strh r3, [r1]
	ldr r3, [r0]
	ldr r1, _021D438C @ =0xFFFF1FFF
	ands r3, r1
	lsls r1, r2, #9
	orrs r1, r3
	str r1, [r0]
	adds r0, r4, #0
	movs r3, #0
	adds r0, #0x80
	str r3, [r0]
	movs r0, #0x7c
	str r0, [sp]
	movs r0, #0xc
	adds r4, #0x40
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x3f
	bl ov20_021D4F1C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D437C: .4byte 0x04000050
_021D4380: .4byte 0x04000048
_021D4384: .4byte 0xFFFFC0FF
_021D4388: .4byte 0x00002EB0
_021D438C: .4byte 0xFFFF1FFF
	thumb_func_end ov20_021D42E4

	thumb_func_start ov20_021D4390
ov20_021D4390: @ 0x021D4390
	push {r3, lr}
	adds r1, r0, #0
	adds r1, #0x80
	ldr r1, [r1]
	cmp r1, #0
	bne _021D43AE
	adds r0, #0x40
	bl ov20_021D4F4C
	cmp r0, #0
	beq _021D43AA
	movs r0, #1
	pop {r3, pc}
_021D43AA:
	movs r0, #0
	pop {r3, pc}
_021D43AE:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov20_021D4390

	thumb_func_start ov20_021D43B4
ov20_021D43B4: @ 0x021D43B4
	push {r3, lr}
	sub sp, #8
	adds r1, r0, #0
	movs r2, #0
	adds r1, #0x80
	str r2, [r1]
	str r2, [sp]
	movs r1, #0xc
	str r1, [sp, #4]
	adds r0, #0x40
	movs r1, #4
	movs r2, #0x3f
	movs r3, #0x7c
	bl ov20_021D4F1C
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov20_021D43B4

	thumb_func_start ov20_021D43D8
ov20_021D43D8: @ 0x021D43D8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	bne _021D4430
	adds r0, r4, #0
	adds r0, #0x40
	bl ov20_021D4F4C
	cmp r0, #0
	beq _021D4434
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	ldr r0, _021D4438 @ =0x0400004A
	ldrh r2, [r0]
	movs r0, #0x3f
	bics r2, r0
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	lsls r1, r0, #0x1b
	lsrs r1, r1, #0x1b
	lsls r0, r0, #0x1a
	orrs r1, r2
	lsrs r0, r0, #0x1f
	beq _021D4416
	movs r0, #0x20
	orrs r1, r0
_021D4416:
	ldr r2, _021D4438 @ =0x0400004A
	ldr r0, _021D443C @ =0xFFFF1FFF
	strh r1, [r2]
	subs r2, #0x4a
	ldr r1, [r2]
	adds r4, #0x88
	ands r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0xd
	orrs r0, r1
	str r0, [r2]
	movs r0, #1
	pop {r4, pc}
_021D4430:
	movs r0, #1
	pop {r4, pc}
_021D4434:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D4438: .4byte 0x0400004A
_021D443C: .4byte 0xFFFF1FFF
	thumb_func_end ov20_021D43D8

	thumb_func_start ov20_021D4440
ov20_021D4440: @ 0x021D4440
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	adds r4, r1, #0
	bl FUN_02021CAC
	cmp r4, #0
	beq _021D446E
	ldr r0, [r5, #4]
	bl ov20_021D204C
	adds r1, r0, #0
	ldr r0, [r5, #0x34]
	bl FUN_02021CAC
	ldr r0, [r5, #4]
	bl ov20_021D2060
	adds r1, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_02021CAC
	pop {r3, r4, r5, pc}
_021D446E:
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #0x38]
	movs r1, #0
	bl FUN_02021CAC
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D4440

	thumb_func_start ov20_021D4480
ov20_021D4480: @ 0x021D4480
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r2, r1, #0
	movs r0, #1
	ands r2, r0
	movs r0, #0x70
	muls r0, r2, r0
	adds r0, #0x48
	lsls r0, r0, #0xc
	str r0, [sp]
	lsrs r1, r1, #1
	movs r0, #0x18
	muls r0, r1, r0
	adds r0, #0x38
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	bl FUN_02021C50
	ldr r0, [r4, #0x30]
	movs r1, #8
	bl FUN_02021D6C
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D4480

	thumb_func_start ov20_021D44BC
ov20_021D44BC: @ 0x021D44BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	adds r4, r1, #0
	bl ov20_021D45AC
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r6, r4, #1
	str r0, [sp, #0x10]
	adds r0, r0, r6
	str r0, [sp, #0x14]
	movs r0, #0x18
	muls r0, r4, r0
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp, #8]
	adds r1, r0, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x18]
	cmp r4, #0
	bge _021D4500
	ldr r0, [sp, #0x14]
	adds r5, r1, #0
	str r0, [sp, #0x10]
	lsls r0, r4, #2
	rsbs r0, r0, #0
	rsbs r6, r6, #0
	str r0, [sp, #0xc]
	b _021D4520
_021D4500:
	adds r0, #0x78
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x10]
	adds r0, #0xa
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	bl ov20_021D1FE4
	ldr r1, [sp, #0x10]
	adds r1, r6, r1
	cmp r1, r0
	bls _021D451C
	subs r6, r6, #1
_021D451C:
	lsls r0, r4, #2
	str r0, [sp, #0xc]
_021D4520:
	movs r4, #0
	cmp r6, #0
	ble _021D4544
_021D4526:
	ldr r1, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r1, r4
	adds r2, r5, #0
	bl ov20_021D4658
	movs r0, #1
	tst r0, r4
	beq _021D453E
	adds r5, #0x18
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_021D453E:
	adds r4, r4, #1
	cmp r4, r6
	blt _021D4526
_021D4544:
	adds r1, r7, #0
	ldr r0, [sp, #0x18]
	adds r1, #0x8c
	str r0, [r1]
	adds r1, r7, #0
	ldr r0, [sp, #0x14]
	adds r1, #0x90
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x10
	bl FUN_0201ACCC
	ldr r0, [sp, #8]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0xc]
	movs r3, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	ldr r1, [r7, #0xc]
	adds r0, #0x60
	bl ov20_021D4E38
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov20_021D44BC

	thumb_func_start ov20_021D4578
ov20_021D4578: @ 0x021D4578
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x60
	bl ov20_021D4E8C
	cmp r0, #0
	beq _021D45A6
	ldr r0, [r4, #4]
	bl ov20_021D204C
	adds r1, r0, #0
	ldr r0, [r4, #0x34]
	bl FUN_02021CAC
	ldr r0, [r4, #4]
	bl ov20_021D2060
	adds r1, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_02021CAC
	movs r0, #1
	pop {r4, pc}
_021D45A6:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D4578

	thumb_func_start ov20_021D45AC
ov20_021D45AC: @ 0x021D45AC
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	cmp r1, #0
	ble _021D45CC
	adds r0, #0x8c
	ldr r0, [r0]
	adds r0, #0x78
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0x18
	muls r0, r1, r0
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _021D45DA
_021D45CC:
	adds r0, #0x8c
	ldr r4, [r0]
	movs r0, #0x18
	muls r0, r1, r0
	adds r0, r4, r0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_021D45DA:
	cmp r3, r4
	bge _021D45FE
	movs r0, #0xd0
	str r0, [sp]
	subs r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	lsls r3, r3, #0x10
	adds r5, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r1, #0
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	add sp, #8
	pop {r3, r4, r5, pc}
_021D45FE:
	movs r0, #0xd0
	str r0, [sp]
	adds r0, #0x30
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	lsls r3, r3, #0x10
	adds r0, #0x10
	adds r2, r1, #0
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0xd0
	str r0, [sp]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	adds r5, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D45AC

	thumb_func_start ov20_021D4638
ov20_021D4638: @ 0x021D4638
	push {r3, lr}
	adds r1, r0, #0
	movs r2, #0x30
	adds r1, #0x8c
	str r2, [r1]
	adds r1, r0, #0
	movs r3, #0
	adds r1, #0x90
	str r3, [r1]
	ldr r0, [r0, #0xc]
	movs r1, #2
	movs r2, #3
	bl FUN_02019184
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov20_021D4638

	thumb_func_start ov20_021D4658
ov20_021D4658: @ 0x021D4658
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r4, r2, #0
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x3c]
	adds r7, r1, #0
	bl ov20_021D2008
	cmp r4, #0xf0
	bhi _021D4694
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4724 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	movs r3, #1
	adds r4, r7, #0
	ands r4, r3
	movs r3, #0x70
	ldr r2, [r5, #0x3c]
	adds r0, #0x10
	muls r3, r4, r3
	bl FUN_0201D78C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D4694:
	movs r0, #1
	lsls r0, r0, #8
	subs r6, r0, r4
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4724 @ =0x00010200
	adds r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x3c]
	adds r0, #0x20
	bl FUN_0201D78C
	movs r2, #0
	movs r0, #1
	adds r1, r7, #0
	ands r1, r0
	adds r7, r1, #0
	movs r0, #0x70
	muls r7, r0, r7
	movs r0, #0x60
	str r0, [sp]
	movs r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	adds r0, r5, #0
	ldr r1, [r5, #0x2c]
	adds r0, #0x10
	adds r3, r2, #0
	bl FUN_0201ADDC
	movs r1, #0x60
	lsls r2, r7, #0x10
	lsls r3, r6, #0x10
	str r1, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	movs r2, #0
	subs r0, r0, r6
	str r2, [sp, #0xc]
	lsls r0, r0, #0x10
	str r1, [sp, #0x10]
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	adds r0, r5, #0
	ldr r1, [r5, #0x2c]
	adds r0, #0x10
	lsrs r3, r3, #0x10
	bl FUN_0201ADDC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4724: .4byte 0x00010200
	thumb_func_end ov20_021D4658

	thumb_func_start ov20_021D4728
ov20_021D4728: @ 0x021D4728
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #5
	adds r5, r0, #0
	movs r0, #0x23
	lsls r1, r1, #8
	adds r7, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	str r7, [r4, #8]
	adds r0, r5, #0
	bl ov20_021D2E04
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl ov20_021D2E08
	str r0, [r4, #0x10]
	movs r1, #0
	str r1, [r4, #0x14]
	ldr r0, _021D4760 @ =0x000004FC
	str r1, [r4, #0x18]
	str r1, [r4, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D4760: .4byte 0x000004FC
	thumb_func_end ov20_021D4728

	thumb_func_start ov20_021D4764
ov20_021D4764: @ 0x021D4764
	push {r4, lr}
	adds r4, r0, #0
	bl ov20_021D4AD4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov20_021D4764

	thumb_func_start ov20_021D4774
ov20_021D4774: @ 0x021D4774
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0x40
	adds r4, r1, #0
	str r0, [sp]
	movs r0, #0x23
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #0xb
	movs r3, #4
	bl FUN_0200710C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov20_021D4874
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov20_021D48C4
	ldr r0, [r5, #4]
	bl ov20_021D1F94
	cmp r0, #0
	bne _021D4810
	movs r2, #0xb
	ldr r0, _021D486C @ =0x000001FA
	str r2, [sp]
	movs r1, #7
	str r1, [sp, #4]
	adds r0, r5, r0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	movs r2, #3
	ldr r0, [r5, #0xc]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_020198E8
	movs r2, #0xb
	movs r0, #0xa5
	lsls r0, r0, #2
	str r2, [sp]
	movs r1, #7
	str r1, [sp, #4]
	adds r0, r5, r0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	movs r1, #4
	movs r2, #3
	movs r3, #0xe
	bl FUN_020198E8
	b _021D4858
_021D4810:
	movs r2, #0xb
	adds r0, r5, #0
	str r2, [sp]
	movs r1, #7
	str r1, [sp, #4]
	adds r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	movs r2, #3
	ldr r0, [r5, #0xc]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_020198E8
	movs r2, #0xb
	ldr r0, _021D4870 @ =0x00000462
	str r2, [sp]
	movs r1, #7
	str r1, [sp, #4]
	adds r0, r5, r0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	movs r1, #4
	movs r2, #3
	movs r3, #0xe
	bl FUN_020198E8
_021D4858:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov20_021D4A24
	ldr r0, [r5, #0xc]
	movs r1, #4
	bl FUN_02019448
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_021D486C: .4byte 0x000001FA
_021D4870: .4byte 0x00000462
	thumb_func_end ov20_021D4774

	thumb_func_start ov20_021D4874
ov20_021D4874: @ 0x021D4874
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r4, _021D48C0 @ =0x021D52F4
	str r1, [sp, #4]
	movs r6, #0
	adds r5, #0x2c
_021D4882:
	movs r0, #0x23
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [sp, #4]
	movs r2, #1
	add r3, sp, #8
	bl FUN_020071D0
	adds r7, r0, #0
	beq _021D48B0
	ldr r0, [sp, #8]
	adds r1, r5, #0
	adds r0, #0xc
	movs r2, #0x9a
	blx FUN_020C4B18
	adds r0, r5, #0
	movs r1, #0x9a
	blx FUN_020C2C54
	adds r0, r7, #0
	bl FUN_020181C4
_021D48B0:
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, #0x9a
	cmp r6, #8
	blo _021D4882
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D48C0: .4byte 0x021D52F4
	thumb_func_end ov20_021D4874

	thumb_func_start ov20_021D48C4
ov20_021D48C4: @ 0x021D48C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r1, #0
	movs r0, #2
	movs r1, #0
	bl FUN_02002BB8
	ldr r1, _021D4984 @ =0x000001B5
	movs r0, #0x1a
	movs r2, #0xb
	movs r3, #0x23
	bl FUN_0200B010
	adds r6, r0, #0
	ldr r1, _021D4984 @ =0x000001B5
	movs r0, #0x1a
	movs r2, #0xc
	movs r3, #0x23
	bl FUN_0200B010
	adds r4, r0, #0
	movs r0, #0x23
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0x14
	movs r2, #1
	add r3, sp, #4
	bl FUN_020071B4
	adds r7, r0, #0
	beq _021D496C
	add r0, sp, #8
	bl FUN_0201A7A0
	ldr r0, [r5, #0xc]
	add r1, sp, #4
	str r0, [sp, #8]
	movs r0, #0xb
	strb r0, [r1, #0xb]
	movs r0, #0x39
	strb r0, [r1, #0xc]
	ldrh r2, [r1, #0xe]
	ldr r0, _021D4988 @ =0xFFFF7FFF
	movs r3, #0
	ands r0, r2
	strh r0, [r1, #0xe]
	ldr r0, [sp, #4]
	adds r2, r6, #0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x14]
	ldr r1, [r5, #0xc]
	add r0, sp, #8
	bl ov20_021D498C
	ldr r0, [sp, #4]
	adds r2, r4, #0
	ldr r1, [r0, #0x14]
	movs r0, #0x9a
	lsls r0, r0, #6
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [r5, #0xc]
	add r0, sp, #8
	movs r3, #0
	bl ov20_021D498C
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	blx FUN_020C2C54
	ldr r3, [sp, #4]
	movs r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0xc]
	ldr r3, [r3, #0x10]
	movs r1, #4
	bl FUN_0201958C
	adds r0, r7, #0
	bl FUN_020181C4
_021D496C:
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #2
	bl FUN_02002C60
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4984: .4byte 0x000001B5
_021D4988: .4byte 0xFFFF7FFF
	thumb_func_end ov20_021D48C4

	thumb_func_start ov20_021D498C
ov20_021D498C: @ 0x021D498C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	adds r0, r2, #0
	str r2, [sp, #0x14]
	adds r7, r3, #0
	bl FUN_02023C5C
	str r0, [sp, #0x1c]
	movs r0, #0x20
	movs r1, #0x23
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	movs r1, #2
	subs r0, r1, r0
	lsls r0, r0, #4
	lsrs r0, r0, #1
	adds r7, r7, r0
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bls _021D4A10
_021D49BE:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	adds r0, r6, #0
	bl FUN_02023C9C
	movs r0, #2
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x58
	bl FUN_02002EEC
	ldr r5, _021D4A1C @ =0x021D52EC
	str r0, [sp, #0x18]
	movs r4, #0
_021D49DA:
	movs r0, #0
	ldrsh r0, [r5, r0]
	ldr r3, [sp, #0x18]
	movs r1, #2
	adds r0, r7, r0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4A20 @ =0x00010203
	adds r2, r6, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	bl FUN_0201D78C
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blo _021D49DA
	ldr r0, [sp, #0x20]
	adds r7, #0x10
	adds r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	cmp r1, r0
	blo _021D49BE
_021D4A10:
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021D4A1C: .4byte 0x021D52EC
_021D4A20: .4byte 0x00010203
	thumb_func_end ov20_021D498C

	thumb_func_start ov20_021D4A24
ov20_021D4A24: @ 0x021D4A24
	push {r4, r5, lr}
	sub sp, #0x4c
	adds r5, r0, #0
	add r0, sp, #0x38
	adds r4, r1, #0
	blx FUN_020A81D0
	add r0, sp, #0x14
	blx FUN_020A818C
	movs r0, #0x23
	str r0, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #2
	movs r3, #0
	bl FUN_0200716C
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0x23
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #1
	bl FUN_0200718C
	adds r0, r5, #0
	adds r0, #0x1c
	adds r1, r4, #0
	movs r2, #0x16
	movs r3, #0x17
	bl ov20_021D4AF8
	movs r0, #0xc0
	str r0, [sp]
	movs r0, #0x38
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r3, r5, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	add r1, sp, #0x14
	add r2, sp, #0x38
	adds r3, #0x1c
	bl ov20_021D4B40
	str r0, [r5, #0x14]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, [r5, #0x14]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0xc0
	str r0, [sp]
	movs r0, #0x88
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r3, r5, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	add r1, sp, #0x14
	add r2, sp, #0x38
	adds r3, #0x1c
	bl ov20_021D4B40
	str r0, [r5, #0x18]
	movs r1, #2
	bl FUN_02021D6C
	ldr r0, [r5, #0x18]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0x4c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov20_021D4A24

	thumb_func_start ov20_021D4AD4
ov20_021D4AD4: @ 0x021D4AD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D4AE2
	bl FUN_02021BD4
_021D4AE2:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021D4AEC
	bl FUN_02021BD4
_021D4AEC:
	adds r4, #0x1c
	adds r0, r4, #0
	bl ov20_021D4B2C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D4AD4

	thumb_func_start ov20_021D4AF8
ov20_021D4AF8: @ 0x021D4AF8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x23
	adds r6, r3, #0
	str r0, [sp]
	adds r1, r2, #0
	adds r0, r4, #0
	movs r2, #1
	adds r3, r5, #4
	bl FUN_02007204
	str r0, [r5]
	movs r0, #0x23
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	adds r3, #0xc
	bl FUN_02007220
	str r0, [r5, #8]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov20_021D4AF8

	thumb_func_start ov20_021D4B2C
ov20_021D4B2C: @ 0x021D4B2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020181C4
	ldr r0, [r4, #8]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov20_021D4B2C

	thumb_func_start ov20_021D4B40
ov20_021D4B40: @ 0x021D4B40
	push {r3, r4, lr}
	sub sp, #0x44
	str r2, [sp, #0x28]
	str r1, [sp, #0x20]
	ldr r1, [r3, #4]
	ldr r2, [sp, #0x58]
	str r1, [sp, #0x2c]
	ldr r1, [r3, #0xc]
	str r1, [sp, #0x30]
	add r1, sp, #0x40
	strb r2, [r1]
	movs r1, #0
	str r1, [sp, #0x24]
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	ldr r0, [r0, #0x10]
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x50]
	str r1, [sp, #0x10]
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x54]
	adds r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0x18]
	movs r0, #0x23
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl FUN_02021B90
	adds r4, r0, #0
	beq _021D4B9E
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #1
	adds r0, r4, #0
	lsls r1, r1, #0xc
	bl FUN_02021CE4
_021D4B9E:
	adds r0, r4, #0
	add sp, #0x44
	pop {r3, r4, pc}
	thumb_func_end ov20_021D4B40

	thumb_func_start ov20_021D4BA4
ov20_021D4BA4: @ 0x021D4BA4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x23
	movs r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	beq _021D4C00
	ldr r0, [r5, #4]
	bl ov20_021D1F94
	str r5, [r4]
	movs r1, #0
	str r1, [r4, #4]
	strh r1, [r4, #8]
	movs r1, #0xe
	muls r1, r0, r1
	ldr r0, _021D4C08 @ =0x021D5304
	movs r2, #1
	ldrh r0, [r0, r1]
	strh r0, [r4, #0xa]
	ldr r0, _021D4C0C @ =0x021D5306
	ldrh r0, [r0, r1]
	strh r0, [r4, #0xc]
	ldr r0, _021D4C10 @ =0x021D5308
	ldrh r0, [r0, r1]
	strh r0, [r4, #0xe]
	ldr r0, _021D4C14 @ =0x021D530A
	ldrh r0, [r0, r1]
	strh r0, [r4, #0x10]
	ldr r0, _021D4C18 @ =0x021D530C
	ldrh r0, [r0, r1]
	strh r0, [r4, #0x12]
	ldr r0, _021D4C1C @ =0x021D530E
	ldrh r0, [r0, r1]
	strh r0, [r4, #0x14]
	ldr r0, _021D4C20 @ =0x021D5310
	ldrh r0, [r0, r1]
	adds r1, r4, #0
	strh r0, [r4, #0x16]
	ldr r0, _021D4C24 @ =ov20_021D4C40
	bl FUN_0200D9E8
	ldr r1, _021D4C28 @ =0x000004FC
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_021D4C00:
	ldr r0, _021D4C28 @ =0x000004FC
	movs r1, #0
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4C08: .4byte 0x021D5304
_021D4C0C: .4byte 0x021D5306
_021D4C10: .4byte 0x021D5308
_021D4C14: .4byte 0x021D530A
_021D4C18: .4byte 0x021D530C
_021D4C1C: .4byte 0x021D530E
_021D4C20: .4byte 0x021D5310
_021D4C24: .4byte ov20_021D4C40
_021D4C28: .4byte 0x000004FC
	thumb_func_end ov20_021D4BA4

	thumb_func_start ov20_021D4C2C
ov20_021D4C2C: @ 0x021D4C2C
	ldr r1, _021D4C3C @ =0x000004FC
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021D4C38
	movs r0, #1
	bx lr
_021D4C38:
	movs r0, #0
	bx lr
	.align 2, 0
_021D4C3C: .4byte 0x000004FC
	thumb_func_end ov20_021D4C2C

	thumb_func_start ov20_021D4C40
ov20_021D4C40: @ 0x021D4C40
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bls _021D4C50
	b _021D4DB4
_021D4C50:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D4C5C: @ jump table
	.2byte _021D4C64 - _021D4C5C - 2 @ case 0
	.2byte _021D4CEA - _021D4C5C - 2 @ case 1
	.2byte _021D4D4A - _021D4C5C - 2 @ case 2
	.2byte _021D4DA0 - _021D4C5C - 2 @ case 3
_021D4C64:
	ldr r3, [r4]
	movs r2, #0xb
	str r2, [sp]
	movs r1, #7
	str r1, [sp, #4]
	ldrh r6, [r4, #0xa]
	adds r0, r3, #0
	movs r5, #0x9a
	adds r0, #0x2c
	muls r5, r6, r5
	adds r0, r0, r5
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r2, [r4, #0xe]
	ldrh r3, [r4, #0x10]
	movs r1, #4
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	ldr r3, [r4]
	movs r2, #0xb
	adds r0, r3, #0
	str r2, [sp]
	movs r1, #7
	str r1, [sp, #4]
	ldrh r6, [r4, #0x12]
	movs r5, #0x9a
	adds r0, #0x2c
	muls r5, r6, r5
	adds r0, r0, r5
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r2, [r4, #0x14]
	ldrh r3, [r4, #0x16]
	movs r1, #4
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #4
	ldr r0, [r0, #0xc]
	bl FUN_02019448
	ldrh r0, [r4, #0xa]
	add sp, #0x1c
	adds r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021D4CEA:
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #2
	blo _021D4DB4
	ldr r3, [r4]
	movs r2, #0xb
	str r2, [sp]
	movs r1, #7
	str r1, [sp, #4]
	ldrh r6, [r4, #0xa]
	adds r0, r3, #0
	movs r5, #0x9a
	adds r0, #0x2c
	muls r5, r6, r5
	adds r0, r0, r5
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r2, [r4, #0xe]
	ldrh r3, [r4, #0x10]
	movs r1, #4
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #4
	ldr r0, [r0, #0xc]
	bl FUN_02019448
	movs r0, #0
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xa]
	add sp, #0x1c
	adds r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021D4D4A:
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #4
	blo _021D4DB4
	ldr r3, [r4]
	movs r2, #0xb
	str r2, [sp]
	movs r1, #7
	str r1, [sp, #4]
	ldrh r6, [r4, #0xa]
	adds r0, r3, #0
	movs r5, #0x9a
	adds r0, #0x2c
	muls r5, r6, r5
	adds r0, r0, r5
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r3, #0xc]
	ldrh r2, [r4, #0xe]
	ldrh r3, [r4, #0x10]
	movs r1, #4
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #4
	ldr r0, [r0, #0xc]
	bl FUN_02019448
	ldr r0, [r4, #4]
	add sp, #0x1c
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021D4DA0:
	ldr r1, [r4]
	ldr r0, _021D4DB8 @ =0x000004FC
	movs r2, #0
	str r2, [r1, r0]
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_021D4DB4:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D4DB8: .4byte 0x000004FC
	thumb_func_end ov20_021D4C40

	thumb_func_start ov20_021D4DBC
ov20_021D4DBC: @ 0x021D4DBC
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _021D4DE2
	ldr r0, [r4, #4]
	bl ov20_021D204C
	adds r1, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_02021CAC
	ldr r0, [r4, #4]
	bl ov20_021D2060
	adds r1, r0, #0
	ldr r0, [r4, #0x18]
	bl FUN_02021CAC
	pop {r4, pc}
_021D4DE2:
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl FUN_02021CAC
	pop {r4, pc}
	thumb_func_end ov20_021D4DBC

	thumb_func_start ov20_021D4DF4
ov20_021D4DF4: @ 0x021D4DF4
	push {r3, lr}
	cmp r1, #0
	beq _021D4E00
	cmp r1, #1
	beq _021D4E1C
	pop {r3, pc}
_021D4E00:
	cmp r2, #0
	beq _021D4E12
	cmp r2, #1
	bne _021D4E36
	ldr r0, [r0, #0x14]
	movs r1, #1
	bl FUN_02021D6C
	pop {r3, pc}
_021D4E12:
	ldr r0, [r0, #0x14]
	movs r1, #0
	bl FUN_02021D6C
	pop {r3, pc}
_021D4E1C:
	cmp r2, #0
	beq _021D4E2E
	cmp r2, #1
	bne _021D4E36
	ldr r0, [r0, #0x18]
	movs r1, #3
	bl FUN_02021D6C
	pop {r3, pc}
_021D4E2E:
	ldr r0, [r0, #0x18]
	movs r1, #2
	bl FUN_02021D6C
_021D4E36:
	pop {r3, pc}
	thumb_func_end ov20_021D4DF4

	thumb_func_start ov20_021D4E38
ov20_021D4E38: @ 0x021D4E38
	push {r4, lr}
	adds r4, r0, #0
	str r1, [r4]
	str r2, [r4, #4]
	cmp r3, #0
	bne _021D4E52
	adds r0, r1, #0
	adds r1, r2, #0
	bl FUN_020192EC
	str r0, [r4, #0xc]
	movs r0, #0
	b _021D4E5E
_021D4E52:
	adds r0, r1, #0
	adds r1, r2, #0
	bl FUN_020192F8
	str r0, [r4, #0xc]
	movs r0, #3
_021D4E5E:
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	adds r2, r1, r0
	ldr r1, _021D4E88 @ =0x000001FF
	lsls r0, r0, #0xc
	ands r1, r2
	str r1, [r4, #0x10]
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0xc
	str r1, [r4, #0xc]
	ldr r1, [sp, #0xc]
	blx FUN_020E1F6C
	str r0, [r4, #0x14]
	ldr r0, [sp, #0xc]
	strh r0, [r4, #0x18]
	movs r0, #0
	strh r0, [r4, #0x1a]
	pop {r4, pc}
	nop
_021D4E88: .4byte 0x000001FF
	thumb_func_end ov20_021D4E38

	thumb_func_start ov20_021D4E8C
ov20_021D4E8C: @ 0x021D4E8C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1a]
	cmp r0, #0
	beq _021D4EA0
	cmp r0, #1
	beq _021D4EB4
	cmp r0, #2
	beq _021D4ECA
	b _021D4ECE
_021D4EA0:
	ldr r0, _021D4ED4 @ =ov20_021D4ED8
	adds r1, r4, #0
	movs r2, #0
	bl ov20_021D2170
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1a]
	adds r0, r0, #1
	strh r0, [r4, #0x1a]
	b _021D4ECE
_021D4EB4:
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _021D4ECE
	ldr r0, [r4, #0x1c]
	bl FUN_0200DA58
	ldrh r0, [r4, #0x1a]
	adds r0, r0, #1
	strh r0, [r4, #0x1a]
	movs r0, #1
	pop {r4, pc}
_021D4ECA:
	movs r0, #1
	pop {r4, pc}
_021D4ECE:
	movs r0, #0
	pop {r4, pc}
	nop
_021D4ED4: .4byte ov20_021D4ED8
	thumb_func_end ov20_021D4E8C

	thumb_func_start ov20_021D4ED8
ov20_021D4ED8: @ 0x021D4ED8
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	beq _021D4F06
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	adds r3, r1, r0
	str r3, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r0, [r4]
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	asrs r3, r3, #0xc
	bl FUN_02019184
	ldrh r0, [r4, #0x18]
	subs r0, r0, #1
	strh r0, [r4, #0x18]
	pop {r4, pc}
_021D4F06:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r0, [r4]
	ldr r3, [r4, #0x10]
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	bl FUN_02019184
	pop {r4, pc}
	thumb_func_end ov20_021D4ED8

	thumb_func_start ov20_021D4F1C
ov20_021D4F1C: @ 0x021D4F1C
	push {r4, lr}
	adds r4, r0, #0
	str r1, [r4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	str r2, [r4, #4]
	str r1, [r4, #0x14]
	str r3, [r4, #8]
	subs r0, r0, r3
	blx FUN_020E1F6C
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	movs r2, #0
	str r0, [r4, #0xc]
	ldr r0, _021D4F48 @ =ov20_021D4F74
	adds r1, r4, #0
	str r2, [r4, #0x18]
	bl ov20_021D2170
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.align 2, 0
_021D4F48: .4byte ov20_021D4F74
	thumb_func_end ov20_021D4F1C

	thumb_func_start ov20_021D4F4C
ov20_021D4F4C: @ 0x021D4F4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D4F6C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021D4F70
	ldr r0, [r4, #0x1c]
	bl FUN_0200DA58
	ldr r0, [r4, #0x18]
	adds r0, r0, #1
	str r0, [r4, #0x18]
	movs r0, #1
	pop {r4, pc}
_021D4F6C:
	movs r0, #1
	pop {r4, pc}
_021D4F70:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov20_021D4F4C

	thumb_func_start ov20_021D4F74
ov20_021D4F74: @ 0x021D4F74
	push {r3, lr}
	adds r2, r1, #0
	ldr r0, [r2, #0x14]
	cmp r0, #0
	beq _021D4F90
	ldr r1, [r2, #8]
	ldr r0, [r2, #0x10]
	adds r0, r1, r0
	str r0, [r2, #8]
	asrs r3, r0, #3
	ldr r0, [r2, #0x14]
	subs r0, r0, #1
	str r0, [r2, #0x14]
	b _021D4F94
_021D4F90:
	ldr r0, [r2, #0xc]
	asrs r3, r0, #3
_021D4F94:
	cmp r3, #0x10
	ble _021D4F9A
	movs r3, #0x10
_021D4F9A:
	movs r0, #0x10
	subs r0, r0, r3
	str r0, [sp]
	ldr r0, _021D4FAC @ =0x04000050
	ldm r2, {r1, r2}
	blx FUN_020BF55C
	pop {r3, pc}
	nop
_021D4FAC: .4byte 0x04000050
	thumb_func_end ov20_021D4F74

	thumb_func_start ov20_021D4FB0
ov20_021D4FB0: @ 0x021D4FB0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _021D4FE8 @ =0x04000050
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	blx FUN_020BF578
	ldr r1, [sp, #0x18]
	str r4, [r5]
	str r1, [r5, #0x14]
	lsls r0, r6, #0xc
	str r0, [r5, #8]
	lsls r2, r7, #0xc
	str r2, [r5, #0xc]
	ldr r0, [r5, #8]
	subs r0, r2, r0
	blx FUN_020E1F6C
	str r0, [r5, #0x10]
	movs r2, #0
	ldr r0, _021D4FEC @ =ov20_021D5018
	adds r1, r5, #0
	str r2, [r5, #0x18]
	bl ov20_021D2170
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D4FE8: .4byte 0x04000050
_021D4FEC: .4byte ov20_021D5018
	thumb_func_end ov20_021D4FB0

	thumb_func_start ov20_021D4FF0
ov20_021D4FF0: @ 0x021D4FF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D5010
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021D5014
	ldr r0, [r4, #0x1c]
	bl FUN_0200DA58
	ldr r0, [r4, #0x18]
	adds r0, r0, #1
	str r0, [r4, #0x18]
	movs r0, #1
	pop {r4, pc}
_021D5010:
	movs r0, #1
	pop {r4, pc}
_021D5014:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov20_021D4FF0

	thumb_func_start ov20_021D5018
ov20_021D5018: @ 0x021D5018
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _021D5030
	ldr r2, [r1, #8]
	ldr r0, [r1, #0x10]
	adds r0, r2, r0
	str r0, [r1, #8]
	asrs r2, r0, #0xc
	ldr r0, [r1, #0x14]
	subs r0, r0, #1
	str r0, [r1, #0x14]
	b _021D5034
_021D5030:
	ldr r0, [r1, #0xc]
	asrs r2, r0, #0xc
_021D5034:
	ldr r3, _021D503C @ =FUN_020BF578
	ldr r0, _021D5040 @ =0x04000050
	ldr r1, [r1]
	bx r3
	.align 2, 0
_021D503C: .4byte FUN_020BF578
_021D5040: .4byte 0x04000050
	thumb_func_end ov20_021D5018

	thumb_func_start ov20_021D5044
ov20_021D5044: @ 0x021D5044
	movs r0, #0x1b
	bx lr
	thumb_func_end ov20_021D5044

	thumb_func_start ov20_021D5048
ov20_021D5048: @ 0x021D5048
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #0x1b
	blo _021D5056
	bl FUN_02022974
_021D5056:
	movs r1, #0xa
	ldr r2, _021D5068 @ =0x021D5320
	muls r1, r4, r1
	adds r1, r2, r1
	adds r0, r5, #0
	movs r2, #2
	bl FUN_02023D8C
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D5068: .4byte 0x021D5320
	thumb_func_end ov20_021D5048

	thumb_func_start ov20_021D506C
ov20_021D506C: @ 0x021D506C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r5, #0x1b
	blo _021D507C
	bl FUN_02022974
_021D507C:
	movs r0, #0xa
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _021D5090 @ =0x021D5322
	ldrb r0, [r0, r1]
	str r0, [r4]
	ldr r0, _021D5094 @ =0x021D5323
	ldrb r0, [r0, r1]
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D5090: .4byte 0x021D5322
_021D5094: .4byte 0x021D5323
	thumb_func_end ov20_021D506C

	thumb_func_start ov20_021D5098
ov20_021D5098: @ 0x021D5098
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0x1b
	blo _021D50A4
	bl FUN_02022974
_021D50A4:
	movs r0, #0xa
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _021D50B0 @ =0x021D5324
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_021D50B0: .4byte 0x021D5324
	thumb_func_end ov20_021D5098

	thumb_func_start ov20_021D50B4
ov20_021D50B4: @ 0x021D50B4
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0x1b
	blo _021D50C0
	bl FUN_02022974
_021D50C0:
	movs r0, #0xa
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _021D50CC @ =0x021D5325
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_021D50CC: .4byte 0x021D5325
	thumb_func_end ov20_021D50B4

	thumb_func_start ov20_021D50D0
ov20_021D50D0: @ 0x021D50D0
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0x1b
	blo _021D50DC
	bl FUN_02022974
_021D50DC:
	movs r0, #0xa
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _021D50E8 @ =0x021D5326
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_021D50E8: .4byte 0x021D5326
	thumb_func_end ov20_021D50D0

	thumb_func_start ov20_021D50EC
ov20_021D50EC: @ 0x021D50EC
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0x1b
	blo _021D50F8
	bl FUN_02022974
_021D50F8:
	movs r0, #0xa
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _021D5104 @ =0x021D5327
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_021D5104: .4byte 0x021D5327
	thumb_func_end ov20_021D50EC

	thumb_func_start ov20_021D5108
ov20_021D5108: @ 0x021D5108
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0x1b
	blo _021D5114
	bl FUN_02022974
_021D5114:
	movs r0, #0xa
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _021D5120 @ =0x021D5328
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_021D5120: .4byte 0x021D5328
	thumb_func_end ov20_021D5108

	thumb_func_start ov20_021D5124
ov20_021D5124: @ 0x021D5124
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0x1b
	blo _021D5130
	bl FUN_02022974
_021D5130:
	movs r0, #0xa
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _021D513C @ =0x021D5329
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_021D513C: .4byte 0x021D5329
	thumb_func_end ov20_021D5124
	@ 0x021D5140
