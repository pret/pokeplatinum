	.include "macros/function.inc"


	.text

	thumb_func_start ov75_021D0D80
ov75_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	movs r2, #2
	movs r0, #3
	movs r1, #0x29
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	adds r0, r5, #0
	movs r1, #0xbc
	movs r2, #0x29
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0xbc
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x29
	str r0, [r4]
	adds r0, r5, #0
	bl FUN_02006840
	str r0, [r4, #0x1c]
	ldrh r0, [r0]
	ldr r1, _021D0DF4 @ =0x0000FFFF
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x11]
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0, #3]
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	strb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	ldr r0, [r4, #0x1c]
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #4]
	bl FUN_02027AC0
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #4]
	bl FUN_02027B50
	strh r0, [r4, #0xa]
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D0DF4: .4byte 0x0000FFFF
	thumb_func_end ov75_021D0D80

	thumb_func_start ov75_021D0DF8
ov75_021D0DF8: @ 0x021D0DF8
	push {r3, lr}
	bl FUN_0200682C
	bl ov75_021D1184
	cmp r0, #0
	beq _021D0E0A
	movs r0, #1
	pop {r3, pc}
_021D0E0A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov75_021D0DF8

	thumb_func_start ov75_021D0E10
ov75_021D0E10: @ 0x021D0E10
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	adds r5, r0, #0
	movs r0, #0
	bl FUN_02002AC8
	ldr r5, [r5]
	adds r0, r4, #0
	bl FUN_02006830
	adds r0, r5, #0
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov75_021D0E10

	thumb_func_start ov75_021D0E34
ov75_021D0E34: @ 0x021D0E34
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r6, r0, #0
	adds r5, r4, #0
_021D0E3C:
	ldr r0, [r6, #0x1c]
	adds r0, #0x1a
	adds r0, r0, r5
	bl FUN_02014BBC
	cmp r0, #0
	beq _021D0E4E
	movs r0, #0
	pop {r4, r5, r6, pc}
_021D0E4E:
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #3
	blt _021D0E3C
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov75_021D0E34

	thumb_func_start ov75_021D0E5C
ov75_021D0E5C: @ 0x021D0E5C
	push {r3, lr}
	ldr r0, _021D0E78 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D0E72
	ldr r0, _021D0E7C @ =0x000005E3
	bl FUN_02005748
	movs r0, #1
	pop {r3, pc}
_021D0E72:
	movs r0, #0
	pop {r3, pc}
	nop
_021D0E78: .4byte 0x021BF67C
_021D0E7C: .4byte 0x000005E3
	thumb_func_end ov75_021D0E5C

	thumb_func_start ov75_021D0E80
ov75_021D0E80: @ 0x021D0E80
	push {r3, r4, r5, lr}
	ldr r1, _021D0F90 @ =0x021BF67C
	adds r4, r0, #0
	ldr r2, [r1, #0x48]
	movs r1, #1
	adds r5, r2, #0
	movs r3, #0
	tst r5, r1
	beq _021D0EF8
	ldrb r1, [r4, #0x11]
	cmp r1, #3
	bne _021D0EDE
	ldrb r1, [r4, #0x12]
	cmp r1, #0
	bne _021D0EC2
	bl ov75_021D0E34
	cmp r0, #0
	beq _021D0EB4
	ldr r0, _021D0F94 @ =0x000005DD
	bl FUN_02005748
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D0EB4:
	ldr r0, [r4, #0x1c]
	movs r1, #3
	strh r1, [r0]
	ldr r0, _021D0F98 @ =0x000005E3
	bl FUN_02005748
	b _021D0ED0
_021D0EC2:
	ldr r0, _021D0F94 @ =0x000005DD
	bl FUN_02005748
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D0ED0:
	ldr r0, [r4, #0x1c]
	movs r1, #0
	strb r1, [r0, #3]
	ldr r1, [r4, #0x1c]
	ldrb r0, [r1, #3]
	strb r0, [r1, #2]
	b _021D0EF4
_021D0EDE:
	ldr r0, [r4, #0x1c]
	strb r1, [r0, #2]
	ldr r1, [r4, #0x1c]
	ldrb r0, [r1, #2]
	strh r0, [r1]
	ldrb r1, [r4, #0x12]
	ldr r0, [r4, #0x1c]
	strb r1, [r0, #3]
	ldr r0, _021D0F94 @ =0x000005DD
	bl FUN_02005748
_021D0EF4:
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D0EF8:
	movs r0, #2
	tst r0, r2
	beq _021D0F0C
	ldr r0, _021D0F94 @ =0x000005DD
	bl FUN_02005748
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D0F0C:
	movs r0, #8
	tst r0, r2
	beq _021D0F1C
	movs r0, #3
	strb r0, [r4, #0x11]
	strb r3, [r4, #0x12]
	adds r3, r1, #0
	b _021D0F6E
_021D0F1C:
	movs r0, #0x80
	tst r0, r2
	beq _021D0F38
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	lsrs r3, r0, #0x1f
	lsls r2, r0, #0x1e
	subs r2, r2, r3
	movs r0, #0x1e
	rors r2, r0
	adds r0, r3, r2
	strb r0, [r4, #0x11]
	adds r3, r1, #0
	b _021D0F6E
_021D0F38:
	movs r0, #0x40
	tst r0, r2
	beq _021D0F54
	ldrb r0, [r4, #0x11]
	adds r0, r0, #3
	lsrs r3, r0, #0x1f
	lsls r2, r0, #0x1e
	subs r2, r2, r3
	movs r0, #0x1e
	rors r2, r0
	adds r0, r3, r2
	strb r0, [r4, #0x11]
	adds r3, r1, #0
	b _021D0F6E
_021D0F54:
	movs r0, #0x30
	tst r0, r2
	beq _021D0F6A
	ldrb r0, [r4, #0x11]
	cmp r0, #3
	bne _021D0F6E
	ldrb r0, [r4, #0x12]
	adds r3, r1, #0
	eors r0, r1
	strb r0, [r4, #0x12]
	b _021D0F6E
_021D0F6A:
	adds r0, r3, #0
	pop {r3, r4, r5, pc}
_021D0F6E:
	cmp r3, #0
	bne _021D0F76
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D0F76:
	ldr r0, _021D0F9C @ =0x000005DC
	bl FUN_02005748
	ldrb r1, [r4, #0x11]
	cmp r1, #3
	bne _021D0F8A
	ldrb r0, [r4, #0x12]
	adds r0, r1, r0
	strb r0, [r4, #0x16]
	b _021D0F8C
_021D0F8A:
	strb r1, [r4, #0x16]
_021D0F8C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D0F90: .4byte 0x021BF67C
_021D0F94: .4byte 0x000005DD
_021D0F98: .4byte 0x000005E3
_021D0F9C: .4byte 0x000005DC
	thumb_func_end ov75_021D0E80

	thumb_func_start ov75_021D0FA0
ov75_021D0FA0: @ 0x021D0FA0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _021D0FB2
	cmp r0, #1
	beq _021D0FFE
	b _021D102C
_021D0FB2:
	adds r0, r5, #0
	adds r0, #0x94
	movs r1, #1
	movs r2, #0xa
	movs r3, #6
	bl FUN_0200E060
	adds r0, r5, #0
	adds r0, #0x94
	movs r1, #0xff
	bl FUN_0201ADA4
	ldr r1, [r5]
	movs r0, #0x4c
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [r5, #0x20]
	movs r1, #2
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	ldr r0, _021D1038 @ =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x94
	movs r1, #1
	adds r2, r4, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	b _021D102C
_021D0FFE:
	ldr r0, _021D103C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	bne _021D100E
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D100E:
	adds r0, r5, #0
	adds r0, #0x94
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, #0
	adds r0, #0x94
	bl FUN_0201ACF4
	movs r0, #0
	strh r0, [r5, #8]
	ldrb r1, [r5, #0xd]
	add sp, #0x10
	strb r1, [r5, #0xc]
	pop {r3, r4, r5, pc}
_021D102C:
	ldrh r0, [r5, #8]
	adds r0, r0, #1
	strh r0, [r5, #8]
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1038: .4byte 0x0001020F
_021D103C: .4byte 0x021BF67C
	thumb_func_end ov75_021D0FA0

	thumb_func_start ov75_021D1040
ov75_021D1040: @ 0x021D1040
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, _021D1060 @ =0x021D1CFC
	str r0, [sp]
	ldr r0, [r4, #0x18]
	movs r2, #1
	movs r3, #5
	bl FUN_02002100
	adds r4, #0xa4
	str r0, [r4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D1060: .4byte 0x021D1CFC
	thumb_func_end ov75_021D1040

	thumb_func_start ov75_021D1064
ov75_021D1064: @ 0x021D1064
	push {r3, lr}
	adds r1, r0, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_02002114
	cmp r0, #0
	beq _021D1080
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _021D1084
	b _021D1088
_021D1080:
	movs r0, #1
	pop {r3, pc}
_021D1084:
	movs r0, #0
	pop {r3, pc}
_021D1088:
	adds r0, r1, #1
	pop {r3, pc}
	thumb_func_end ov75_021D1064

	thumb_func_start ov75_021D108C
ov75_021D108C: @ 0x021D108C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	cmp r1, #0
	beq _021D10A2
	cmp r1, #1
	beq _021D1114
	cmp r1, #2
	beq _021D112C
	b _021D116A
_021D10A2:
	movs r1, #1
	adds r0, #0x94
	movs r2, #0xa
	movs r3, #6
	strb r1, [r5, #0x13]
	bl FUN_0200E060
	adds r0, r5, #0
	adds r0, #0x94
	movs r1, #0xff
	bl FUN_0201ADA4
	ldr r1, [r5]
	movs r0, #0x4c
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [r5, #0x20]
	movs r1, #3
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	ldrb r0, [r5, #0x10]
	movs r1, #1
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, _021D1178 @ =0x0001020F
	str r0, [sp, #8]
	adds r0, r5, #0
	str r3, [sp, #0xc]
	adds r0, #0x94
	bl FUN_0201D78C
	strb r0, [r5, #0xf]
	adds r0, r4, #0
	bl FUN_020237BC
	movs r1, #0
	ldr r0, _021D117C @ =0x00007FFF
	str r1, [sp]
	str r0, [sp, #4]
	ldrb r2, [r5, #0x17]
	ldr r0, [r5, #0x30]
	movs r3, #1
	adds r2, #0x22
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl FUN_020039B0
	ldrb r0, [r5, #0x16]
	strb r0, [r5, #0x17]
	movs r0, #0
	strb r0, [r5, #0x15]
	strb r0, [r5, #0x14]
	b _021D116A
_021D1114:
	ldrb r0, [r5, #0xf]
	bl FUN_0201D724
	cmp r0, #0
	beq _021D1124
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D1124:
	adds r0, r5, #0
	bl ov75_021D1040
	b _021D116A
_021D112C:
	bl ov75_021D1064
	adds r4, r0, #0
	bpl _021D113A
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D113A:
	adds r0, r5, #0
	adds r0, #0x94
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, #0
	adds r0, #0x94
	bl FUN_0201ACF4
	movs r0, #0
	strh r0, [r5, #8]
	cmp r4, #0
	beq _021D1160
	ldr r1, _021D1180 @ =0x0000FFFF
	ldr r0, [r5, #0x1c]
	add sp, #0x10
	strh r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D1160:
	ldrb r1, [r5, #0xd]
	add sp, #0x10
	strb r1, [r5, #0xc]
	strb r0, [r5, #0x13]
	pop {r3, r4, r5, pc}
_021D116A:
	ldrh r0, [r5, #8]
	adds r0, r0, #1
	strh r0, [r5, #8]
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D1178: .4byte 0x0001020F
_021D117C: .4byte 0x00007FFF
_021D1180: .4byte 0x0000FFFF
	thumb_func_end ov75_021D108C

	thumb_func_start ov75_021D1184
ov75_021D1184: @ 0x021D1184
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #5
	bls _021D1192
	b _021D12F6
_021D1192:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D119E: @ jump table
	.2byte _021D11AA - _021D119E - 2 @ case 0
	.2byte _021D11F0 - _021D119E - 2 @ case 1
	.2byte _021D123A - _021D119E - 2 @ case 2
	.2byte _021D1256 - _021D119E - 2 @ case 3
	.2byte _021D1290 - _021D119E - 2 @ case 4
	.2byte _021D12E2 - _021D119E - 2 @ case 5
_021D11AA:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D1304 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D1308 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	movs r0, #0
	bl FUN_0200F32C
	movs r0, #1
	bl FUN_0200F32C
	b _021D12F6
_021D11F0:
	bl ov75_021D13E8
	cmp r0, #0
	bne _021D11FE
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D11FE:
	ldr r0, _021D130C @ =ov75_021D131C
	adds r1, r4, #0
	bl FUN_02017798
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0
	bl FUN_0200F338
	movs r1, #4
	ldr r0, _021D1310 @ =0x04000050
	movs r2, #8
	movs r3, #0x1c
	str r1, [sp]
	blx FUN_020BF55C
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #5
	ldr r0, [r4, #0x30]
	ldr r2, _021D1314 @ =0x0000FFFF
	subs r3, r1, #6
	bl FUN_02003178
	b _021D12F6
_021D123A:
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _021D1246
	bl FUN_0200C7EC
_021D1246:
	ldr r0, [r4, #0x30]
	bl FUN_0200384C
	cmp r0, #0
	beq _021D12F6
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D1256:
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _021D1262
	bl FUN_0200C7EC
_021D1262:
	ldrb r1, [r4, #0xc]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _021D1318 @ =0x021D1D14
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _021D1278
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D1278:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r1, #5
	ldr r0, [r4, #0x30]
	ldr r2, _021D1314 @ =0x0000FFFF
	subs r3, r1, #6
	bl FUN_02003178
	b _021D12F6
_021D1290:
	ldr r0, [r4, #0x30]
	bl FUN_0200384C
	cmp r0, #0
	beq _021D12AC
	adds r4, #0xac
	ldr r0, [r4]
	cmp r0, #0
	beq _021D12A6
	bl FUN_0200C7EC
_021D12A6:
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D12AC:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D1304 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D1308 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	b _021D12F6
_021D12E2:
	bl ov75_021D1434
	cmp r0, #0
	beq _021D12F0
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_021D12F0:
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D12F6:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D1304: .4byte 0xFFFFE0FF
_021D1308: .4byte 0x04001000
_021D130C: .4byte ov75_021D131C
_021D1310: .4byte 0x04000050
_021D1314: .4byte 0x0000FFFF
_021D1318: .4byte 0x021D1D14
	thumb_func_end ov75_021D1184

	thumb_func_start ov75_021D131C
ov75_021D131C: @ 0x021D131C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D132A
	bl FUN_02003694
_021D132A:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021D1338
	bl FUN_0200C800
_021D1338:
	blx FUN_020A635C
	ldr r0, [r4, #0x18]
	bl FUN_0201C2B8
	ldr r3, _021D1350 @ =0x027E0000
	ldr r1, _021D1354 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_021D1350: .4byte 0x027E0000
_021D1354: .4byte 0x00003FF8
	thumb_func_end ov75_021D131C

	thumb_func_start ov75_021D1358
ov75_021D1358: @ 0x021D1358
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	ldr r2, [r4, #0x30]
	cmp r2, #0
	bne _021D136C
	bl FUN_0200DA58
	add sp, #8
	pop {r4, pc}
_021D136C:
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _021D13E0
	ldrb r3, [r4, #0x17]
	ldrb r0, [r4, #0x16]
	cmp r3, r0
	beq _021D139A
	movs r1, #0
	ldr r0, _021D13E4 @ =0x00007FFF
	str r1, [sp]
	str r0, [sp, #4]
	adds r3, #0x22
	adds r0, r2, #0
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	movs r3, #1
	bl FUN_020039B0
	ldrb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	movs r0, #0
	strb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
_021D139A:
	ldrb r0, [r4, #0x14]
	movs r1, #0
	movs r3, #1
	str r0, [sp]
	ldr r0, _021D13E4 @ =0x00007FFF
	str r0, [sp, #4]
	ldrb r2, [r4, #0x16]
	ldr r0, [r4, #0x30]
	adds r2, #0x22
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl FUN_020039B0
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	cmp r0, #0
	beq _021D13D0
	subs r0, r1, #1
	strb r0, [r4, #0x14]
	cmp r1, #1
	bne _021D13E0
	ldrb r1, [r4, #0x15]
	movs r0, #1
	add sp, #8
	eors r0, r1
	strb r0, [r4, #0x15]
	pop {r4, pc}
_021D13D0:
	adds r0, r1, #1
	strb r0, [r4, #0x14]
	cmp r1, #0xc
	bne _021D13E0
	ldrb r1, [r4, #0x15]
	movs r0, #1
	eors r0, r1
	strb r0, [r4, #0x15]
_021D13E0:
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021D13E4: .4byte 0x00007FFF
	thumb_func_end ov75_021D1358

	thumb_func_start ov75_021D13E8
ov75_021D13E8: @ 0x021D13E8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #8]
	cmp r1, #3
	bhi _021D142A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D13FE: @ jump table
	.2byte _021D1406 - _021D13FE - 2 @ case 0
	.2byte _021D140C - _021D13FE - 2 @ case 1
	.2byte _021D1412 - _021D13FE - 2 @ case 2
	.2byte _021D141E - _021D13FE - 2 @ case 3
_021D1406:
	bl ov75_021D1480
	b _021D142A
_021D140C:
	bl ov75_021D1598
	b _021D142A
_021D1412:
	bl ov75_021D18A8
	adds r0, r4, #0
	bl ov75_021D19C8
	b _021D142A
_021D141E:
	bl ov75_021D1ADC
	movs r0, #0
	strh r0, [r4, #8]
	movs r0, #1
	pop {r4, pc}
_021D142A:
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov75_021D13E8

	thumb_func_start ov75_021D1434
ov75_021D1434: @ 0x021D1434
	push {r4, lr}
	adds r4, r0, #0
	bl ov75_021D1CB8
	adds r0, r4, #0
	adds r0, #0x24
	beq _021D1448
	ldr r0, [r4, #0x20]
	bl FUN_0200B190
_021D1448:
	adds r0, r4, #0
	bl ov75_021D19A8
	adds r0, r4, #0
	bl ov75_021D1868
	adds r0, r4, #0
	bl ov75_021D1564
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_021D1434

	thumb_func_start ov75_021D1460
ov75_021D1460: @ 0x021D1460
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D147C @ =0x021D1D70
	add r3, sp, #0
	movs r2, #5
_021D146A:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D146A
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D147C: .4byte 0x021D1D70
	thumb_func_end ov75_021D1460

	thumb_func_start ov75_021D1480
ov75_021D1480: @ 0x021D1480
	push {r4, r5, lr}
	sub sp, #0x9c
	adds r4, r0, #0
	bl ov75_021D1460
	ldr r0, [r4]
	bl FUN_02018340
	add r3, sp, #0
	ldr r5, _021D155C @ =0x021D1D04
	str r0, [r4, #0x18]
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D1560 @ =0x021D1D98
	add r3, sp, #0x10
	movs r2, #0x11
_021D14AC:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D14AC
	ldr r0, [r5]
	movs r1, #0
	str r0, [r3]
	ldr r0, [r4, #0x18]
	add r2, sp, #0x10
	adds r3, r1, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #1
	add r2, sp, #0x2c
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #2
	add r2, sp, #0x48
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #3
	add r2, sp, #0x64
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #4
	add r2, sp, #0x80
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl FUN_02019EBC
	ldr r0, [r4, #0x18]
	movs r1, #1
	bl FUN_02019EBC
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x18]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x18]
	movs r1, #4
	bl FUN_02019EBC
	movs r0, #0
	ldr r3, [r4]
	movs r1, #0x20
	adds r2, r0, #0
	bl FUN_02019690
	ldr r3, [r4]
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r3, [r4]
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r3, [r4]
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r3, [r4]
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	.align 2, 0
_021D155C: .4byte 0x021D1D04
_021D1560: .4byte 0x021D1D98
	thumb_func_end ov75_021D1480

	thumb_func_start ov75_021D1564
ov75_021D1564: @ 0x021D1564
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov75_021D1564

	thumb_func_start ov75_021D1598
ov75_021D1598: @ 0x021D1598
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r1, [r5]
	ldrb r7, [r0, #0xf]
	adds r0, r7, #0
	str r0, [sp, #0x20]
	adds r0, #0x18
	str r0, [sp, #0x20]
	movs r0, #0x4f
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	adds r4, r0, #0
	ldr r0, [r5]
	movs r2, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	movs r3, #5
	bl FUN_0200DAA4
	ldrh r0, [r5, #0xa]
	movs r1, #0
	movs r2, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5]
	movs r3, #6
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	bl FUN_0200DD0C
	adds r0, r7, #0
	str r0, [sp, #0x1c]
	adds r0, #0xc
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	adds r0, r4, #0
	bl FUN_02006D84
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_02018184
	adds r6, r0, #0
	ldr r1, [sp, #0x1c]
	adds r0, r4, #0
	adds r2, r6, #0
	bl FUN_02006D28
	adds r0, r6, #0
	add r1, sp, #0x28
	blx FUN_020A7118
	ldr r3, [sp, #0x28]
	movs r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0x18]
	ldr r3, [r3, #0x10]
	movs r1, #1
	bl FUN_0201958C
	ldr r3, [sp, #0x28]
	movs r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0x18]
	ldr r3, [r3, #0x10]
	movs r1, #4
	bl FUN_0201958C
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02006D84
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_02018184
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_02006D28
	adds r0, r6, #0
	add r1, sp, #0x24
	blx FUN_020A71B0
	ldr r2, [sp, #0x24]
	movs r0, #4
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	movs r3, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl FUN_0201972C
	ldr r0, [r5]
	bl FUN_02002F38
	str r0, [r5, #0x30]
	ldr r3, [r5]
	movs r1, #0
	movs r2, #0xe0
	bl FUN_02002F70
	ldr r0, [r5, #0x30]
	ldr r3, [r5]
	movs r1, #2
	movs r2, #0x60
	bl FUN_02002F70
	movs r0, #0x60
	str r0, [sp]
	ldr r1, [sp, #0x24]
	movs r2, #0
	ldr r0, [r5, #0x30]
	ldr r1, [r1, #0xc]
	adds r3, r2, #0
	bl FUN_02002FBC
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _021D16B4
	movs r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x24]
	ldr r0, [r5, #0x30]
	ldr r1, [r1, #0xc]
	movs r2, #0
	adds r1, #0x60
	movs r3, #0x10
	bl FUN_02002FBC
_021D16B4:
	movs r0, #2
	str r0, [sp]
	movs r0, #0x60
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, [r5, #0x30]
	ldr r3, [r5]
	movs r1, #0x13
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x30
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	ldr r3, [r5]
	movs r1, #0xe
	movs r2, #6
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x40
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	ldr r3, [r5]
	movs r1, #0xe
	movs r2, #7
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	ldr r3, [r5]
	movs r1, #0x26
	movs r2, #0x18
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x60
	str r0, [sp, #8]
	ldrh r2, [r5, #0xa]
	ldr r0, [r5, #0x30]
	ldr r3, [r5]
	movs r1, #0x26
	adds r2, #0x19
	bl FUN_02003050
	movs r0, #0x10
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0x30]
	adds r2, r1, #0
	movs r3, #0x70
	bl FUN_020039B0
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r0, [r5, #0x30]
	movs r1, #2
	movs r3, #0x30
	bl FUN_020039B0
	ldr r0, [r5, #0x30]
	movs r1, #1
	bl FUN_02003858
	ldr r0, [r5, #0x30]
	bl FUN_02003694
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r1, [sp, #0x20]
	adds r0, r4, #0
	bl FUN_02006D84
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_02018144
	str r0, [r5, #0x34]
	ldr r1, [sp, #0x20]
	ldr r2, [r5, #0x34]
	adds r0, r4, #0
	bl FUN_02006D28
	adds r1, r5, #0
	ldr r0, [r5, #0x34]
	adds r1, #0x3c
	blx FUN_020A7248
	adds r0, r4, #0
	movs r1, #0x24
	bl FUN_02006D84
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_02018144
	str r0, [r5, #0x38]
	ldr r2, [r5, #0x38]
	adds r0, r4, #0
	movs r1, #0x24
	bl FUN_02006D28
	adds r1, r5, #0
	ldr r0, [r5, #0x38]
	adds r1, #0x40
	blx FUN_020A7248
	adds r0, r4, #0
	bl FUN_02006CA8
	movs r3, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	ldr r2, _021D1860 @ =0x00002001
	movs r1, #4
	bl FUN_02019CB8
	movs r2, #0
	ldr r0, [r5, #0x3c]
	movs r1, #0x20
	str r1, [sp]
	movs r1, #0x18
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	adds r3, r2, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x18]
	bl FUN_020198E8
	ldr r0, [r5, #0x18]
	movs r1, #3
	bl FUN_0201C3C0
	ldr r0, [r5, #0x18]
	movs r1, #4
	bl FUN_0201C3C0
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _021D185A
	ldr r0, [r5, #0x40]
	movs r1, #0x20
	str r1, [sp]
	movs r1, #0x18
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	movs r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	adds r3, r2, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #2
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x18]
	bl FUN_020198E8
	ldr r0, [r5, #0x18]
	movs r1, #2
	bl FUN_0201C3C0
	movs r2, #0
	strb r2, [r5, #0x14]
	ldr r0, _021D1864 @ =ov75_021D1358
	adds r1, r5, #0
	strb r2, [r5, #0x15]
	bl FUN_0200D9E8
_021D185A:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021D1860: .4byte 0x00002001
_021D1864: .4byte ov75_021D1358
	thumb_func_end ov75_021D1598

	thumb_func_start ov75_021D1868
ov75_021D1868: @ 0x021D1868
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_020181C4
	ldr r0, [r4, #0x34]
	bl FUN_020181C4
	ldr r0, [r4, #0x30]
	movs r1, #2
	bl FUN_02002FA0
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_02002FA0
	ldr r0, [r4, #0x30]
	bl FUN_02002F54
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r0, _021D18A4 @ =0x04000050
	adds r2, r1, #0
	movs r3, #0x1f
	str r1, [sp]
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021D18A4: .4byte 0x04000050
	thumb_func_end ov75_021D1868

	thumb_func_start ov75_021D18A8
ov75_021D18A8: @ 0x021D18A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	movs r3, #3
	adds r5, r0, #0
	str r3, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #1
	adds r1, r5, #0
	ldr r0, _021D1990 @ =0x00000397
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	adds r1, #0x44
	bl FUN_0201A7E8
	movs r0, #8
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #1
	adds r1, r5, #0
	ldr r0, _021D1994 @ =0x0000032F
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	adds r1, #0x54
	movs r3, #3
	bl FUN_0201A7E8
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #1
	adds r1, r5, #0
	ldr r0, _021D1998 @ =0x000002C7
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	adds r1, #0x64
	movs r3, #3
	bl FUN_0201A7E8
	movs r0, #0x14
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r2, #1
	adds r1, r5, #0
	ldr r0, _021D199C @ =0x000002B7
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	adds r1, #0x74
	movs r3, #0x15
	bl FUN_0201A7E8
	movs r0, #0x14
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r2, #1
	adds r1, r5, #0
	ldr r0, _021D19A0 @ =0x000002A7
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	adds r1, #0x84
	movs r3, #3
	bl FUN_0201A7E8
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _021D19A4 @ =0x00000297
	adds r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	adds r1, #0x94
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	movs r4, #0
	adds r5, #0x44
	adds r6, r4, #0
_021D1972:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0201ADA4
	cmp r4, #5
	bge _021D1984
	adds r0, r5, #0
	bl FUN_0201A954
_021D1984:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #6
	blt _021D1972
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D1990: .4byte 0x00000397
_021D1994: .4byte 0x0000032F
_021D1998: .4byte 0x000002C7
_021D199C: .4byte 0x000002B7
_021D19A0: .4byte 0x000002A7
_021D19A4: .4byte 0x00000297
	thumb_func_end ov75_021D18A8

	thumb_func_start ov75_021D19A8
ov75_021D19A8: @ 0x021D19A8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	adds r5, #0x44
_021D19B0:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #6
	blt _021D19B0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov75_021D19A8

	thumb_func_start ov75_021D19C8
ov75_021D19C8: @ 0x021D19C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	movs r7, #0
	adds r6, r4, #0
	adds r5, r7, #0
	adds r6, #0x44
_021D19D6:
	ldr r0, [r4, #0x1c]
	adds r0, #0x1a
	adds r0, r0, r5
	bl FUN_02014BBC
	cmp r0, #0
	beq _021D1A18
	ldr r0, [r4, #0x1c]
	ldr r1, [r4]
	adds r0, #0x1a
	adds r0, r0, r5
	bl FUN_02014B34
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021D1AD4 @ =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #0
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0201A954
_021D1A18:
	adds r7, r7, #1
	adds r5, #8
	adds r6, #0x10
	cmp r7, #3
	blt _021D19D6
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _021D1AAC
	ldr r2, _021D1AD8 @ =0x00000199
	ldr r3, [r4]
	movs r0, #1
	movs r1, #0x1a
	bl FUN_0200B144
	str r0, [r4, #0x20]
	ldr r1, [r4]
	movs r0, #0x10
	bl FUN_02023790
	adds r5, r0, #0
	adds r0, r4, #0
	str r0, [sp, #0x18]
	adds r0, #0x44
	movs r6, #0
	str r0, [sp, #0x18]
_021D1A4A:
	adds r0, r5, #0
	bl FUN_020237E8
	ldr r0, [r4, #0x20]
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_0200B1B8
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0
	bl FUN_02002D7C
	movs r1, #0x40
	subs r7, r1, r0
	adds r0, r6, #3
	lsls r0, r0, #4
	str r0, [sp, #0x14]
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _021D1AD4 @ =0x00010200
	lsrs r3, r7, #0x1f
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r3, r7, r3
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r0, r0, r1
	movs r1, #1
	asrs r3, r3, #1
	bl FUN_0201D78C
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	bl FUN_0201A954
	adds r6, r6, #1
	cmp r6, #2
	blt _021D1A4A
	adds r0, r5, #0
	bl FUN_020237BC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021D1AAC:
	movs r0, #2
	str r0, [sp]
	movs r3, #0
	ldr r0, _021D1AD4 @ =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	adds r0, r4, #0
	ldr r2, [r2, #0x10]
	adds r0, #0x74
	movs r1, #1
	bl FUN_0201D78C
	adds r4, #0x74
	adds r0, r4, #0
	bl FUN_0201A954
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1AD4: .4byte 0x00010200
_021D1AD8: .4byte 0x00000199
	thumb_func_end ov75_021D19C8

	thumb_func_start ov75_021D1ADC
ov75_021D1ADC: @ 0x021D1ADC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	adds r5, r0, #0
	bl FUN_020397E4
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _021D1AEE
	b _021D1CA4
_021D1AEE:
	ldr r1, [r5]
	movs r0, #0x20
	bl FUN_0201DBEC
	ldr r0, [r5]
	bl FUN_0200C6E4
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl FUN_0200C704
	adds r1, r5, #0
	adds r1, #0xac
	add r2, sp, #0x40
	ldr r4, _021D1CA8 @ =0x021D1D50
	str r0, [r1]
	ldm r4!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r4!, {r0, r1}
	ldr r6, _021D1CAC @ =0x021D1D24
	stm r2!, {r0, r1}
	add r4, sp, #0x2c
	ldm r6!, {r0, r1}
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldr r0, [r6]
	ldr r6, _021D1CB0 @ =0x021D1D38
	str r0, [r4]
	add r4, sp, #0x14
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	adds r0, r5, #0
	adds r0, #0xa8
	adds r1, r3, #0
	ldr r0, [r0]
	movs r3, #0x20
	bl FUN_0200C73C
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xa8
	adds r1, #0xac
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #3
	bl FUN_0200C7C0
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xa8
	adds r1, #0xac
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0x14
	bl FUN_0200CB30
	ldr r0, [r5]
	bl FUN_0200A93C
	bl FUN_02079FD0
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xa8
	adds r1, #0xac
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x13
	bl FUN_0200CC9C
	bl FUN_02079FD4
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xa8
	adds r1, #0xac
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x13
	bl FUN_0200CE0C
	bl FUN_02079FE0
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xa8
	adds r1, #0xac
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x13
	bl FUN_0200CE3C
	movs r6, #0
	adds r4, r6, #0
	str r6, [sp, #0x10]
	adds r7, r5, #0
_021D1BEC:
	ldr r0, [r5, #0x1c]
	adds r3, r0, r4
	ldrh r1, [r3, #0x14]
	ldr r0, _021D1CB4 @ =0x0000FFFF
	cmp r1, r0
	beq _021D1CA4
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldrh r3, [r3, #0x14]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xa8
	adds r1, #0xac
	lsls r3, r3, #0x14
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x13
	lsrs r3, r3, #0x14
	bl FUN_0200D828
	add r0, sp, #0x60
	movs r1, #0
	movs r2, #0x34
	blx FUN_020C4CF4
	ldr r0, [sp, #0x10]
	movs r1, #0x80
	subs r1, r1, r0
	add r0, sp, #0x60
	strh r1, [r0]
	movs r1, #0xa0
	strh r1, [r0, #2]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r0, #2
	str r0, [sp, #0x8c]
	ldr r0, [r5, #0x1c]
	add r2, sp, #0x60
	adds r0, r0, r4
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x6c]
	adds r0, r1, #0
	str r0, [sp, #0x90]
	movs r0, #1
	str r0, [sp, #0x70]
	adds r0, r1, #0
	str r0, [sp, #0x78]
	str r0, [sp, #0x7c]
	str r0, [sp, #0x80]
	subs r0, r1, #1
	str r0, [sp, #0x84]
	subs r0, r1, #1
	str r0, [sp, #0x88]
	adds r0, r5, #0
	adds r1, r5, #0
	str r6, [sp, #0x74]
	adds r0, #0xa8
	adds r1, #0xac
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0200CE6C
	adds r1, r7, #0
	adds r1, #0xb0
	str r0, [r1]
	ldr r0, [r5, #0x1c]
	adds r0, r0, r4
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	cmp r0, #7
	bne _021D1C94
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
_021D1C94:
	ldr r0, [sp, #0x10]
	adds r6, r6, #1
	adds r0, #0x28
	adds r4, r4, #2
	adds r7, r7, #4
	str r0, [sp, #0x10]
	cmp r6, #3
	blt _021D1BEC
_021D1CA4:
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1CA8: .4byte 0x021D1D50
_021D1CAC: .4byte 0x021D1D24
_021D1CB0: .4byte 0x021D1D38
_021D1CB4: .4byte 0x0000FFFF
	thumb_func_end ov75_021D1ADC

	thumb_func_start ov75_021D1CB8
ov75_021D1CB8: @ 0x021D1CB8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _021D1CF8
	movs r4, #0
	adds r5, r6, #0
_021D1CC6:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021D1CD4
	bl FUN_0200D0F4
_021D1CD4:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D1CC6
	adds r0, r6, #0
	adds r1, r6, #0
	adds r0, #0xa8
	adds r1, #0xac
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0200D0B0
	adds r6, #0xa8
	ldr r0, [r6]
	bl FUN_0200C8D4
	bl FUN_0201DC3C
_021D1CF8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov75_021D1CB8
	@ 0x021D1CFC
