	.include "macros/function.inc"


	.text

	thumb_func_start ov79_021D0D80
ov79_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02006840
	movs r2, #2
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x2d
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #2
	adds r0, r4, #0
	lsls r1, r1, #8
	movs r2, #0x2d
	bl FUN_0200681C
	movs r2, #2
	movs r1, #0
	lsls r2, r2, #8
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x2d
	str r0, [r4]
	str r5, [r4, #0x20]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x1b]
	ldr r0, _021D0DC0 @ =0x0000FFFF
	strh r0, [r4, #0x14]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D0DC0: .4byte 0x0000FFFF
	thumb_func_end ov79_021D0D80

	thumb_func_start ov79_021D0DC4
ov79_021D0DC4: @ 0x021D0DC4
	push {r3, lr}
	bl FUN_0200682C
	bl ov79_021D0E1C
	cmp r0, #0
	beq _021D0DD6
	movs r0, #1
	pop {r3, pc}
_021D0DD6:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov79_021D0DC4

	thumb_func_start ov79_021D0DDC
ov79_021D0DDC: @ 0x021D0DDC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldrb r1, [r4, #0x1a]
	ldr r0, [r4, #0x20]
	strb r1, [r0, #1]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	strb r1, [r0, #2]
	ldrb r1, [r4, #0x1b]
	ldr r0, [r4, #0x20]
	strb r1, [r0, #3]
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	ldr r0, [r4, #0x20]
	strh r1, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r0]
	ldr r0, [r4, #0x20]
	strh r1, [r0, #6]
	adds r0, r5, #0
	bl FUN_02006830
	ldr r0, [r4]
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov79_021D0DDC

	thumb_func_start ov79_021D0E1C
ov79_021D0E1C: @ 0x021D0E1C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #6
	bls _021D0E2A
	b _021D0F5E
_021D0E2A:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0E36: @ jump table
	.2byte _021D0E44 - _021D0E36 - 2 @ case 0
	.2byte _021D0E94 - _021D0E36 - 2 @ case 1
	.2byte _021D0EBC - _021D0E36 - 2 @ case 2
	.2byte _021D0ECE - _021D0E36 - 2 @ case 3
	.2byte _021D0F04 - _021D0E36 - 2 @ case 4
	.2byte _021D0F16 - _021D0E36 - 2 @ case 5
	.2byte _021D0F24 - _021D0E36 - 2 @ case 6
_021D0E44:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D0F70 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D0F74 @ =0x04001000
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
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	b _021D0F64
_021D0E94:
	bl ov79_021D122C
	cmp r0, #0
	bne _021D0EA2
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D0EA2:
	movs r0, #0
	str r0, [r4, #0xc]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r2, [r4]
	adds r3, r0, #0
	str r2, [sp, #8]
	adds r2, r1, #0
	bl FUN_0200F174
	b _021D0F64
_021D0EBC:
	bl ov79_021D21F8
	bl FUN_0200F2AC
	cmp r0, #0
	bne _021D0F64
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D0ECE:
	bl ov79_021D21F8
	ldrh r1, [r4, #0x18]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _021D0F78 @ =0x021D394C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _021D0EE8
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D0EE8:
	movs r0, #0
	str r0, [r4, #0xc]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r1, [r4]
	adds r2, r0, #0
	str r1, [sp, #8]
	adds r1, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	b _021D0F64
_021D0F04:
	bl ov79_021D21F8
	bl FUN_0200F2AC
	cmp r0, #0
	bne _021D0F64
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D0F16:
	bl ov79_021D12A0
	cmp r0, #0
	bne _021D0F64
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_021D0F24:
	bl FUN_0201E530
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
	ldr r0, _021D0F70 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D0F74 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	b _021D0F64
_021D0F5E:
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_021D0F64:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021D0F70: .4byte 0xFFFFE0FF
_021D0F74: .4byte 0x04001000
_021D0F78: .4byte 0x021D394C
	thumb_func_end ov79_021D0E1C

	thumb_func_start ov79_021D0F7C
ov79_021D0F7C: @ 0x021D0F7C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D0F8E
	bl FUN_0200C800
_021D0F8E:
	bl FUN_0201DCAC
	ldr r0, [r4, #0x24]
	bl FUN_0201C2B8
	ldr r3, _021D0FA8 @ =0x027E0000
	ldr r1, _021D0FAC @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D0FA8: .4byte 0x027E0000
_021D0FAC: .4byte 0x00003FF8
	thumb_func_end ov79_021D0F7C

	thumb_func_start ov79_021D0FB0
ov79_021D0FB0: @ 0x021D0FB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D0FE8 @ =0x021D3964
	bl FUN_02022664
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021D0FE4
	ldr r0, _021D0FE8 @ =0x021D3964
	bl FUN_02022644
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021D0FE0
	ldrh r0, [r4, #0x14]
	cmp r0, #1
	bne _021D0FE0
	ldrb r1, [r4, #0x1b]
	adds r0, r4, #0
	movs r2, #2
	bl ov79_021D1B24
_021D0FE0:
	movs r0, #0
	mvns r0, r0
_021D0FE4:
	pop {r4, pc}
	nop
_021D0FE8: .4byte 0x021D3964
	thumb_func_end ov79_021D0FB0

	thumb_func_start ov79_021D0FEC
ov79_021D0FEC: @ 0x021D0FEC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r1, [r1]
	movs r4, #0
	mvns r4, r4
	cmp r1, #0
	bne _021D1002
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D1002:
	bl ov79_021D0FB0
	adds r1, r0, #0
	ldr r0, _021D1098 @ =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _021D1024
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	bne _021D1036
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	bl FUN_02001288
	adds r4, r0, #0
	b _021D1036
_021D1024:
	cmp r1, #0
	blt _021D1032
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl ov79_021D1C44
_021D1032:
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D1036:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _021D1042
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D1042:
	ldr r0, _021D1098 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _021D105E
	ldr r0, _021D109C @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xff
	strb r0, [r5, #0x1a]
	movs r0, #0
	str r0, [r5, #0x10]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D105E:
	movs r0, #1
	tst r0, r1
	beq _021D1092
	ldr r0, _021D109C @ =0x000005DC
	bl FUN_02005748
	cmp r4, #0xff
	beq _021D107C
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _021D107C
	adds r0, r0, #1
	cmp r4, r0
	bne _021D1088
_021D107C:
	movs r0, #0xff
	strb r0, [r5, #0x1a]
	movs r0, #0
	str r0, [r5, #0x10]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D1088:
	strb r4, [r5, #0x1a]
	movs r0, #1
	strh r0, [r5, #0x18]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D1092:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1098: .4byte 0x021BF67C
_021D109C: .4byte 0x000005DC
	thumb_func_end ov79_021D0FEC

	thumb_func_start ov79_021D10A0
ov79_021D10A0: @ 0x021D10A0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl ov79_021D2214
	adds r0, r4, #0
	bl ov79_021D1ED8
	movs r0, #2
	strh r0, [r4, #0x18]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D10A0

	thumb_func_start ov79_021D10B8
ov79_021D10B8: @ 0x021D10B8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl FUN_02001288
	adds r4, r0, #0
	ldr r0, _021D1144 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _021D10EA
	ldr r0, _021D1148 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	bl ov79_021D1F60
	adds r0, r5, #0
	movs r1, #0
	bl ov79_021D2214
	movs r0, #0
	strh r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
_021D10EA:
	movs r0, #1
	tst r0, r1
	beq _021D113E
	ldr r0, _021D1148 @ =0x000005DC
	bl FUN_02005748
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	bhi _021D110E
	bhs _021D112C
	cmp r4, #1
	bhi _021D112C
	cmp r4, #0
	beq _021D1114
	cmp r4, #1
	beq _021D111A
	b _021D112C
_021D110E:
	adds r0, r0, #1
	cmp r4, r0
	b _021D112C
_021D1114:
	movs r0, #1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_021D111A:
	adds r0, r5, #0
	bl ov79_021D1F60
	adds r0, r5, #0
	bl ov79_021D1FBC
	movs r0, #3
	strh r0, [r5, #0x18]
	b _021D113E
_021D112C:
	adds r0, r5, #0
	bl ov79_021D1F60
	adds r0, r5, #0
	movs r1, #0
	bl ov79_021D2214
	movs r0, #0
	strh r0, [r5, #0x18]
_021D113E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1144: .4byte 0x021BF67C
_021D1148: .4byte 0x000005DC
	thumb_func_end ov79_021D10B8

	thumb_func_start ov79_021D114C
ov79_021D114C: @ 0x021D114C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x1f]
	bl FUN_0201D724
	cmp r0, #0
	beq _021D115E
	movs r0, #0
	pop {r4, pc}
_021D115E:
	adds r0, r4, #0
	bl ov79_021D2054
	movs r0, #4
	strh r0, [r4, #0x18]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D114C

	thumb_func_start ov79_021D116C
ov79_021D116C: @ 0x021D116C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r1, [r4]
	bl FUN_02002114
	cmp r0, #0
	beq _021D1188
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _021D119C
	b _021D11B6
_021D1188:
	ldr r0, _021D11BC @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov79_021D2008
	movs r0, #5
	strh r0, [r4, #0x18]
	movs r0, #0
	pop {r4, pc}
_021D119C:
	ldr r0, _021D11BC @ =0x000005DC
	bl FUN_02005748
	movs r0, #0x42
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #1
	strh r0, [r4, #0x18]
	movs r0, #0
	pop {r4, pc}
_021D11B6:
	movs r0, #0
	pop {r4, pc}
	nop
_021D11BC: .4byte 0x000005DC
	thumb_func_end ov79_021D116C

	thumb_func_start ov79_021D11C0
ov79_021D11C0: @ 0x021D11C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x1f]
	bl FUN_0201D724
	cmp r0, #0
	beq _021D11D2
	movs r0, #0
	pop {r4, pc}
_021D11D2:
	ldr r0, _021D1228 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	bne _021D11E0
	movs r0, #0
	pop {r4, pc}
_021D11E0:
	movs r0, #0x42
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl FUN_0200E084
	movs r0, #0x42
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldrb r0, [r4, #0x1a]
	ldr r3, [r4, #0x20]
	lsls r2, r0, #3
	adds r3, #0x20
	ldrb r1, [r3, r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r3, r2]
	ldr r0, [r4, #0x20]
	movs r1, #1
	strb r1, [r0, #2]
	adds r0, r4, #0
	movs r1, #0
	bl ov79_021D1AB8
	adds r0, r4, #0
	bl ov79_021D196C
	adds r0, r4, #0
	movs r1, #0
	bl ov79_021D2214
	movs r0, #0
	strh r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
_021D1228: .4byte 0x021BF67C
	thumb_func_end ov79_021D11C0

	thumb_func_start ov79_021D122C
ov79_021D122C: @ 0x021D122C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #5
	bhi _021D1290
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D1242: @ jump table
	.2byte _021D124E - _021D1242 - 2 @ case 0
	.2byte _021D1254 - _021D1242 - 2 @ case 1
	.2byte _021D125A - _021D1242 - 2 @ case 2
	.2byte _021D1266 - _021D1242 - 2 @ case 3
	.2byte _021D126C - _021D1242 - 2 @ case 4
	.2byte _021D1272 - _021D1242 - 2 @ case 5
_021D124E:
	bl ov79_021D132C
	b _021D1290
_021D1254:
	bl ov79_021D13C4
	b _021D1290
_021D125A:
	bl ov79_021D1568
	adds r0, r4, #0
	bl ov79_021D14A4
	b _021D1290
_021D1266:
	bl ov79_021D20F4
	b _021D1290
_021D126C:
	bl ov79_021D167C
	b _021D1290
_021D1272:
	bl ov79_021D196C
	ldrb r1, [r4, #0x1b]
	adds r0, r4, #0
	movs r2, #4
	bl ov79_021D1B24
	ldr r0, _021D129C @ =ov79_021D0F7C
	adds r1, r4, #0
	bl FUN_02017798
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	pop {r4, pc}
_021D1290:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	nop
_021D129C: .4byte ov79_021D0F7C
	thumb_func_end ov79_021D122C

	thumb_func_start ov79_021D12A0
ov79_021D12A0: @ 0x021D12A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #5
	bhi _021D1302
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D12B6: @ jump table
	.2byte _021D12C2 - _021D12B6 - 2 @ case 0
	.2byte _021D12DA - _021D12B6 - 2 @ case 1
	.2byte _021D12E6 - _021D12B6 - 2 @ case 2
	.2byte _021D12F2 - _021D12B6 - 2 @ case 3
	.2byte _021D12F8 - _021D12B6 - 2 @ case 4
	.2byte _021D12FE - _021D12B6 - 2 @ case 5
_021D12C2:
	adds r1, r4, #0
	adds r1, #0xd0
	ldr r1, [r1]
	cmp r1, #0
	beq _021D12D0
	bl ov79_021D1F60
_021D12D0:
	adds r0, r4, #0
	movs r1, #1
	bl ov79_021D1AB8
	b _021D1302
_021D12DA:
	bl ov79_021D17E8
	adds r0, r4, #0
	bl ov79_021D21CC
	b _021D1302
_021D12E6:
	bl ov79_021D1548
	adds r0, r4, #0
	bl ov79_021D1618
	b _021D1302
_021D12F2:
	bl ov79_021D14A0
	b _021D1302
_021D12F8:
	bl ov79_021D13A4
	b _021D1302
_021D12FE:
	movs r0, #1
	pop {r4, pc}
_021D1302:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D12A0

	thumb_func_start ov79_021D130C
ov79_021D130C: @ 0x021D130C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1328 @ =0x021D3980
	add r3, sp, #0
	movs r2, #5
_021D1316:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1316
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D1328: .4byte 0x021D3980
	thumb_func_end ov79_021D130C

	thumb_func_start ov79_021D132C
ov79_021D132C: @ 0x021D132C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	adds r5, r0, #0
	bl ov79_021D130C
	ldr r0, [r5]
	bl FUN_02018340
	add r3, sp, #0
	ldr r4, _021D139C @ =0x021D3910
	str r0, [r5, #0x24]
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r4, _021D13A0 @ =0x021D3A10
	add r3, sp, #0x10
	movs r2, #0x15
_021D1358:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1358
	movs r4, #0
	adds r7, r4, #0
	add r6, sp, #0x10
_021D1366:
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x24]
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	movs r3, #0
	bl FUN_020183C4
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x24]
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	lsls r0, r4, #0x18
	ldr r3, [r5]
	lsrs r0, r0, #0x18
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	adds r7, r7, #1
	adds r4, r4, #1
	adds r6, #0x1c
	cmp r7, #6
	blt _021D1366
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D139C: .4byte 0x021D3910
_021D13A0: .4byte 0x021D3A10
	thumb_func_end ov79_021D132C

	thumb_func_start ov79_021D13A4
ov79_021D13A4: @ 0x021D13A4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D13AA:
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x24]
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	cmp r4, #6
	blt _021D13AA
	ldr r0, [r5, #0x24]
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov79_021D13A4

	thumb_func_start ov79_021D13C4
ov79_021D13C4: @ 0x021D13C4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x53
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x53
	bl FUN_0208C210
	movs r0, #3
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x53
	bl FUN_0208C210
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #6
	lsls r0, r0, #6
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x53
	bl FUN_0208C210
	movs r1, #0
	str r1, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #6
	lsls r0, r0, #6
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x53
	bl FUN_0208C210
	movs r0, #0xa
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x53
	bl FUN_0208C210
	movs r0, #0xb
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x53
	bl FUN_0208C210
	adds r0, r4, #0
	bl FUN_02006CA8
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_0201C3C0
	ldr r0, [r5, #0x24]
	movs r1, #5
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov79_021D13C4

	thumb_func_start ov79_021D14A0
ov79_021D14A0: @ 0x021D14A0
	bx lr
	.align 2, 0
	thumb_func_end ov79_021D14A0

	thumb_func_start ov79_021D14A4
ov79_021D14A4: @ 0x021D14A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [r6]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	movs r2, #0x1f
	movs r3, #0xf
	bl FUN_0200DAA4
	ldr r0, [r6, #0x20]
	ldr r0, [r0, #0x18]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r6]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200DD0C
	movs r1, #0x1a
	ldr r2, [r6]
	movs r0, #0
	lsls r1, r1, #4
	bl FUN_02002E7C
	movs r1, #6
	ldr r2, [r6]
	movs r0, #0
	lsls r1, r1, #6
	bl FUN_02002E98
	movs r1, #0x1a
	ldr r2, [r6]
	movs r0, #4
	lsls r1, r1, #4
	bl FUN_02002E7C
	adds r5, r6, #0
	ldr r4, _021D1544 @ =0x021D39A8
	movs r7, #0
	adds r5, #0xe8
_021D1508:
	ldrb r0, [r4, #2]
	adds r1, r5, #0
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	ldrb r0, [r4, #4]
	str r0, [sp, #8]
	ldrb r0, [r4, #5]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #6]
	str r0, [sp, #0x10]
	ldrb r2, [r4]
	ldrb r3, [r4, #1]
	ldr r0, [r6, #0x24]
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r7, r7, #1
	adds r4, #8
	adds r5, #0x10
	cmp r7, #0xd
	blt _021D1508
	adds r0, r6, #0
	bl ov79_021D2078
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1544: .4byte 0x021D39A8
	thumb_func_end ov79_021D14A4

	thumb_func_start ov79_021D1548
ov79_021D1548: @ 0x021D1548
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	adds r5, #0xe8
_021D1550:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #0xd
	blt _021D1550
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov79_021D1548

	thumb_func_start ov79_021D1568
ov79_021D1568: @ 0x021D1568
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #2
	bl FUN_02002BB8
	ldr r2, _021D1614 @ =0x000001CF
	ldr r3, [r5]
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	str r0, [r5, #0x2c]
	ldr r0, [r5]
	bl FUN_020158A8
	str r0, [r5, #0x28]
	ldr r2, [r5]
	movs r0, #2
	movs r1, #0x40
	bl FUN_0200B368
	str r0, [r5, #0x30]
	ldr r1, [r5]
	movs r0, #0x40
	bl FUN_02023790
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x2c]
	movs r1, #6
	bl FUN_0200B1EC
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x2c]
	movs r1, #0x16
	bl FUN_0200B1EC
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x2c]
	movs r1, #4
	bl FUN_0200B1EC
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x2c]
	movs r1, #7
	bl FUN_0200B1EC
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x2c]
	movs r1, #8
	bl FUN_0200B1EC
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x2c]
	movs r1, #0
	bl FUN_0200B1EC
	str r0, [r5, #0x4c]
	movs r4, #0
	adds r6, r5, #0
_021D15E0:
	adds r1, r4, #0
	ldr r0, [r5, #0x2c]
	adds r1, #0xb
	bl FUN_0200B1EC
	str r0, [r6, #0x50]
	cmp r4, #5
	bge _021D1604
	adds r1, r4, #0
	ldr r0, [r5, #0x2c]
	adds r1, #0x11
	bl FUN_0200B1EC
	str r0, [r6, #0x68]
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, #6
	blt _021D15E0
_021D1604:
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0x18]
	bl FUN_02027AC0
	adds r5, #0x7c
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_021D1614: .4byte 0x000001CF
	thumb_func_end ov79_021D1568

	thumb_func_start ov79_021D1618
ov79_021D1618: @ 0x021D1618
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_021D1620:
	ldr r0, [r5, #0x50]
	bl FUN_020237BC
	cmp r4, #5
	bge _021D1638
	ldr r0, [r5, #0x68]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _021D1620
_021D1638:
	ldr r0, [r6, #0x4c]
	bl FUN_020237BC
	ldr r0, [r6, #0x48]
	bl FUN_020237BC
	ldr r0, [r6, #0x44]
	bl FUN_020237BC
	ldr r0, [r6, #0x40]
	bl FUN_020237BC
	ldr r0, [r6, #0x3c]
	bl FUN_020237BC
	ldr r0, [r6, #0x38]
	bl FUN_020237BC
	ldr r0, [r6, #0x34]
	bl FUN_020237BC
	ldr r0, [r6, #0x30]
	bl FUN_0200B3F0
	ldr r0, [r6, #0x28]
	bl FUN_020158F4
	ldr r0, [r6, #0x2c]
	bl FUN_0200B190
	movs r0, #2
	bl FUN_02002C60
	pop {r4, r5, r6, pc}
	thumb_func_end ov79_021D1618

	thumb_func_start ov79_021D167C
ov79_021D167C: @ 0x021D167C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r6, _021D17D4 @ =0x021D3AB8
	movs r7, #0
	adds r4, r5, #0
_021D1688:
	movs r0, #0x6e
	movs r1, #0x6f
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200CA08
	movs r1, #7
	lsls r1, r1, #6
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
	adds r7, r7, #1
	adds r6, #0x28
	adds r4, r4, #4
	cmp r7, #3
	blt _021D1688
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CC8
	movs r0, #0x71
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	ldr r6, _021D17D8 @ =0x021D3920
	movs r7, #0
	adds r4, r5, #0
_021D16DE:
	movs r0, #0x6e
	movs r1, #0x6f
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021D17DC @ =0x021D3B30
	bl FUN_0200CA08
	movs r1, #0x73
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r7, #3
	bl FUN_02021D6C
	movs r0, #0x73
	movs r1, #0
	movs r2, #2
	lsls r0, r0, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, r0]
	bl FUN_0200D494
	adds r7, r7, #1
	adds r4, r4, #4
	adds r6, r6, #4
	cmp r7, #5
	blt _021D16DE
	movs r7, #0
	ldr r6, _021D17E0 @ =0x021D3934
	adds r4, r5, #0
	str r7, [sp, #0x10]
_021D1730:
	movs r0, #0x6e
	movs r1, #0x6f
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021D17E4 @ =0x021D3B58
	bl FUN_0200CA08
	movs r1, #0x1e
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x10]
	bl FUN_02021D6C
	movs r0, #0x1e
	lsls r0, r0, #4
	movs r1, #2
	ldr r0, [r4, r0]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	adds r1, r7, #2
	bl FUN_02021E90
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CC8
	movs r0, #0x1e
	movs r1, #0
	movs r2, #2
	lsls r0, r0, #4
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, r0]
	bl FUN_0200D494
	ldr r0, [sp, #0x10]
	adds r7, r7, #1
	adds r0, r0, #3
	adds r4, r4, #4
	adds r6, r6, #4
	str r0, [sp, #0x10]
	cmp r7, #6
	blt _021D1730
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x7e
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0xe7
	movs r3, #0x4c
	bl FUN_0209916C
	movs r1, #0x7f
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	ldr r0, [r0, #4]
	bl FUN_0200D3F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D17D4: .4byte 0x021D3AB8
_021D17D8: .4byte 0x021D3920
_021D17DC: .4byte 0x021D3B30
_021D17E0: .4byte 0x021D3934
_021D17E4: .4byte 0x021D3B58
	thumb_func_end ov79_021D167C

	thumb_func_start ov79_021D17E8
ov79_021D17E8: @ 0x021D17E8
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x7e
	adds r5, r0, #0
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	bl FUN_02099370
	movs r7, #0x1e
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #4
_021D1802:
	ldr r0, [r4, r7]
	bl FUN_0200C7E4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #6
	blt _021D1802
	movs r7, #0x73
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_021D1818:
	ldr r0, [r4, r7]
	bl FUN_0200C7E4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #5
	blt _021D1818
	movs r6, #7
	movs r4, #0
	lsls r6, r6, #6
_021D182C:
	ldr r0, [r5, r6]
	bl FUN_0200C7E4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D182C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov79_021D17E8

	thumb_func_start ov79_021D183C
ov79_021D183C: @ 0x021D183C
	ldrb r2, [r0, #4]
	movs r1, #0x20
	bics r2, r1
	strb r2, [r0, #4]
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r1, [r0, #6]
	strb r1, [r0, #7]
	bx lr
	.align 2, 0
	thumb_func_end ov79_021D183C

	thumb_func_start ov79_021D1850
ov79_021D1850: @ 0x021D1850
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r3, #0
	beq _021D186E
	movs r0, #0x42
	lsls r0, r0, #2
	movs r1, #1
	adds r0, r5, r0
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200E060
_021D186E:
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, #0xe8
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0xff
	adds r3, r2, #0
	bl FUN_0201AE78
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r3, #0
	str r3, [sp]
	ldr r0, _021D18B0 @ =0x0001020F
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x42
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	strb r0, [r5, #0x1f]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D18B0: .4byte 0x0001020F
	thumb_func_end ov79_021D1850

	thumb_func_start ov79_021D18B4
ov79_021D18B4: @ 0x021D18B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r5, r1, #0
	movs r0, #0xff
	strb r0, [r5, #0x1e]
	ldrb r0, [r5, #0x1e]
	strb r0, [r5, #0x1d]
	ldrb r2, [r5, #0x1b]
	cmp r2, #5
	bne _021D18D2
	movs r7, #0x1f
	b _021D18E8
_021D18D2:
	movs r7, #1
	ldr r1, [sp, #4]
	cmp r2, #0
	ble _021D18E8
_021D18DA:
	lsls r0, r7, #0x19
	lsrs r7, r0, #0x18
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blt _021D18DA
_021D18E8:
	ldr r0, [sp]
	movs r6, #0
	ldrb r0, [r0]
	cmp r0, #0
	ble _021D195E
	ldr r0, [sp]
	str r0, [sp, #8]
	adds r0, #0x1c
	str r0, [sp, #8]
_021D18FA:
	ldr r0, [sp, #8]
	lsls r1, r6, #3
	adds r4, r0, r1
	adds r0, r4, #0
	bl ov79_021D183C
	ldrb r0, [r4, #4]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x1f
	beq _021D1950
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	bne _021D1950
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	tst r1, r7
	beq _021D1950
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #4]
	ldrb r0, [r5, #0x1d]
	cmp r0, #0xff
	ldrb r0, [r4, #5]
	bne _021D1932
	strb r0, [r5, #0x1d]
	b _021D193E
_021D1932:
	ldrb r1, [r5, #0x1e]
	lsls r2, r1, #3
	ldr r1, [sp]
	adds r1, r1, r2
	adds r1, #0x23
	strb r0, [r1]
_021D193E:
	ldrb r0, [r5, #0x1e]
	strb r0, [r4, #6]
	ldrb r0, [r4, #5]
	strb r0, [r5, #0x1e]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_021D1950:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp]
	ldrb r0, [r0]
	cmp r6, r0
	blt _021D18FA
_021D195E:
	ldr r0, [sp, #4]
	adds r0, r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov79_021D18B4

	thumb_func_start ov79_021D196C
ov79_021D196C: @ 0x021D196C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x20]
	adds r1, r5, #0
	bl ov79_021D18B4
	strb r0, [r5, #0x1c]
	ldrb r0, [r5, #0x1c]
	ldr r1, [r5]
	bl FUN_02013A04
	adds r1, r5, #0
	adds r1, #0xcc
	str r0, [r1]
	ldrb r4, [r5, #0x1e]
	cmp r4, #0xff
	beq _021D19E6
	movs r7, #0
_021D1992:
	ldr r1, [r5, #0x20]
	lsls r0, r4, #3
	adds r1, #0x1c
	adds r6, r1, r0
	ldrb r4, [r6, #6]
	ldrb r1, [r6, #2]
	ldr r0, [r5, #0x28]
	bl FUN_02015918
	adds r2, r0, #0
	str r7, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	adds r1, r7, #0
	adds r3, r7, #0
	bl FUN_0200B48C
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldrb r2, [r6, #1]
	ldr r0, [r5, #0x30]
	movs r1, #1
	movs r3, #2
	bl FUN_0200B60C
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x3c]
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0xcc
	ldrb r2, [r6, #5]
	ldr r0, [r0]
	ldr r1, [r5, #0x34]
	bl FUN_02013A6C
	cmp r4, #0xff
	bne _021D1992
_021D19E6:
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	ldr r1, [r5, #0x38]
	movs r2, #0xff
	bl FUN_02013A6C
	adds r1, r5, #0
	ldr r0, _021D1AB4 @ =0x021D3BB0
	adds r1, #0x84
	movs r2, #0x20
	blx FUN_020C4DB0
	ldr r0, [r5, #0x20]
	ldrh r1, [r0, #6]
	adds r0, r5, #0
	adds r0, #0x82
	strh r1, [r0]
	ldr r0, [r5, #0x20]
	ldrh r1, [r0, #4]
	adds r0, r5, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021D1A64
	adds r0, r5, #0
	adds r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	bne _021D1A48
	adds r0, r5, #0
	adds r0, #0x82
	ldrh r1, [r0]
	cmp r1, #0
	beq _021D1A5E
	ldrb r0, [r5, #0x1c]
	subs r0, r0, #1
	cmp r1, r0
	blt _021D1A5E
	adds r0, r5, #0
	adds r0, #0x82
	ldrh r0, [r0]
	subs r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x82
	strh r1, [r0]
	b _021D1A5E
_021D1A48:
	adds r1, r0, #6
	ldrb r0, [r5, #0x1c]
	cmp r1, r0
	blt _021D1A5E
	adds r0, r5, #0
	adds r0, #0x80
	ldrh r0, [r0]
	subs r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x80
	strh r1, [r0]
_021D1A5E:
	ldr r0, [r5, #0x20]
	movs r1, #0
	strb r1, [r0, #2]
_021D1A64:
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0xe8
	adds r0, #0x90
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa0
	str r5, [r0]
	adds r0, r5, #0
	adds r2, r5, #0
	ldrb r1, [r5, #0x1c]
	adds r0, #0x94
	adds r2, #0x82
	strh r1, [r0]
	movs r0, #0
	strh r0, [r5, #0x16]
	adds r1, r5, #0
	adds r1, #0x80
	ldr r3, [r5]
	adds r0, r5, #0
	lsls r3, r3, #0x18
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r0, #0x84
	lsrs r3, r3, #0x18
	bl FUN_0200112C
	adds r1, r5, #0
	adds r1, #0xc4
	str r0, [r1]
	movs r0, #1
	strh r0, [r5, #0x16]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1AB4: .4byte 0x021D3BB0
	thumb_func_end ov79_021D196C

	thumb_func_start ov79_021D1AB8
ov79_021D1AB8: @ 0x021D1AB8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0xb0
	str r0, [sp]
	movs r0, #0x60
	adds r4, r1, #0
	movs r1, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xe8
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	cmp r4, #0
	beq _021D1AE2
	adds r0, r5, #0
	adds r0, #0xe8
	bl FUN_0201ACF4
_021D1AE2:
	adds r0, r5, #0
	adds r0, #0xc4
	adds r1, r5, #0
	adds r2, r5, #0
	ldr r0, [r0]
	adds r1, #0x80
	adds r2, #0x82
	bl FUN_02001384
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_02013A3C
	adds r0, r5, #0
	adds r0, #0x80
	ldrh r1, [r0]
	ldr r0, [r5, #0x20]
	strh r1, [r0, #4]
	adds r0, r5, #0
	adds r0, #0x82
	ldrh r1, [r0]
	ldr r0, [r5, #0x20]
	strh r1, [r0, #6]
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xc4
	str r1, [r0]
	adds r5, #0xcc
	str r1, [r5]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov79_021D1AB8

	thumb_func_start ov79_021D1B24
ov79_021D1B24: @ 0x021D1B24
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #4
	bls _021D1B30
	b _021D1C36
_021D1B30:
	adds r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D1B3C: @ jump table
	.2byte _021D1B46 - _021D1B3C - 2 @ case 0
	.2byte _021D1B76 - _021D1B3C - 2 @ case 1
	.2byte _021D1BA6 - _021D1B3C - 2 @ case 2
	.2byte _021D1BD4 - _021D1B3C - 2 @ case 3
	.2byte _021D1C02 - _021D1B3C - 2 @ case 4
_021D1B46:
	movs r0, #0x1e
	lsls r0, r0, #4
	adds r6, r4, r0
	lsls r7, r5, #2
	lsls r1, r5, #1
	ldr r0, [r6, r7]
	adds r1, r5, r1
	bl FUN_02021D6C
	ldr r0, [r6, r7]
	movs r1, #0
	bl FUN_02021CC8
	adds r1, r4, #0
	adds r0, r5, #7
	adds r1, #0xe8
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl FUN_0201C04C
	b _021D1C36
_021D1B76:
	movs r0, #0x1e
	lsls r0, r0, #4
	adds r6, r4, r0
	lsls r7, r5, #2
	ldr r0, [r6, r7]
	bl FUN_02021DE0
	ldr r0, [r6, r7]
	movs r1, #1
	bl FUN_02021CC8
	adds r1, r4, #0
	adds r0, r5, #7
	adds r1, #0xe8
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #0
	movs r2, #4
	adds r3, r1, #0
	bl FUN_0201C04C
	movs r0, #1
	strh r0, [r4, #0x14]
	b _021D1C36
_021D1BA6:
	lsls r0, r5, #2
	adds r1, r4, r0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	lsls r1, r5, #1
	adds r1, r5, r1
	adds r1, r1, #1
	bl FUN_02021D6C
	adds r1, r4, #0
	adds r0, r5, #7
	adds r1, #0xe8
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl FUN_0201C04C
	movs r0, #0
	strh r0, [r4, #0x14]
	b _021D1C36
_021D1BD4:
	lsls r0, r5, #2
	adds r1, r4, r0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	lsls r1, r5, #1
	adds r1, r5, r1
	adds r1, r1, #2
	bl FUN_02021D6C
	adds r1, r4, #0
	adds r0, r5, #7
	adds r1, #0xe8
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #0
	movs r2, #2
	adds r3, r1, #0
	bl FUN_0201C04C
	movs r0, #1
	strh r0, [r4, #0x14]
	b _021D1C36
_021D1C02:
	movs r0, #0x1e
	lsls r0, r0, #4
	lsls r1, r5, #1
	adds r1, r5, r1
	adds r6, r4, r0
	lsls r7, r5, #2
	ldr r0, [r6, r7]
	adds r1, r1, #1
	bl FUN_02021D6C
	ldr r0, [r6, r7]
	movs r1, #1
	bl FUN_02021CC8
	adds r1, r4, #0
	adds r0, r5, #7
	adds r1, #0xe8
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #0
	movs r2, #2
	adds r3, r1, #0
	bl FUN_0201C04C
	movs r0, #0
	strh r0, [r4, #0x14]
_021D1C36:
	adds r0, r5, #7
	adds r4, #0xe8
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201A954
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov79_021D1B24

	thumb_func_start ov79_021D1C44
ov79_021D1C44: @ 0x021D1C44
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _021D1D14 @ =0x000005E4
	adds r5, r1, #0
	bl FUN_02005748
	ldrh r1, [r4, #0x14]
	ldr r0, _021D1D18 @ =0x0000FFFF
	cmp r1, r0
	beq _021D1C76
	ldrb r1, [r4, #0x1b]
	cmp r5, r1
	bne _021D1C6E
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov79_021D1B24
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D1C6E:
	adds r0, r4, #0
	movs r2, #0
	bl ov79_021D1B24
_021D1C76:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov79_021D1B24
	adds r0, r4, #0
	movs r1, #0
	strb r5, [r4, #0x1b]
	bl ov79_021D1AB8
	adds r0, r4, #0
	movs r2, #0
	adds r0, #0x82
	strh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r4, #0x20]
	strh r2, [r0, #6]
	ldr r1, [r4, #0x20]
	ldrh r0, [r1, #6]
	strh r0, [r1, #4]
	adds r0, r4, #0
	bl ov79_021D196C
	movs r1, #0xa0
	str r1, [sp]
	movs r0, #0x18
	adds r1, #0xa8
	str r0, [sp, #4]
	adds r0, r4, r1
	movs r1, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	ldrb r1, [r4, #0x1b]
	cmp r1, #5
	bne _021D1CD8
	movs r0, #0x52
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A954
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D1CD8:
	lsls r1, r1, #2
	adds r1, r4, r1
	movs r0, #0
	ldr r1, [r1, #0x68]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r2, #0xa0
	subs r3, r2, r0
	movs r0, #3
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D1D1C @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r2, #0xa8
	str r1, [sp, #0xc]
	adds r0, r4, r2
	ldrb r2, [r4, #0x1b]
	lsls r2, r2, #2
	adds r2, r4, r2
	lsrs r4, r3, #0x1f
	adds r4, r3, r4
	ldr r2, [r2, #0x68]
	asrs r3, r4, #1
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D1D14: .4byte 0x000005E4
_021D1D18: .4byte 0x0000FFFF
_021D1D1C: .4byte 0x00010200
	thumb_func_end ov79_021D1C44

	thumb_func_start ov79_021D1D20
ov79_021D1D20: @ 0x021D1D20
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r6, _021D1D84 @ =0x00000001
	bne _021D1D4A
	movs r4, #0
	movs r6, #0x73
	adds r7, r4, #0
	lsls r6, r6, #2
_021D1D32:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	blo _021D1D32
	pop {r3, r4, r5, r6, r7, pc}
_021D1D4A:
	movs r4, #0
_021D1D4C:
	ldrb r0, [r7, #4]
	tst r0, r6
	beq _021D1D64
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_02021CAC
	b _021D1D74
_021D1D64:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
_021D1D74:
	lsls r0, r6, #0x19
	lsrs r6, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	blo _021D1D4C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1D84: .4byte 0x00000001
	thumb_func_end ov79_021D1D20

	thumb_func_start ov79_021D1D88
ov79_021D1D88: @ 0x021D1D88
	ldr r3, _021D1D90 @ =FUN_02001504
	movs r1, #0x13
	bx r3
	nop
_021D1D90: .4byte FUN_02001504
	thumb_func_end ov79_021D1D88

	thumb_func_start ov79_021D1D94
ov79_021D1D94: @ 0x021D1D94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	movs r1, #0x13
	adds r7, r0, #0
	adds r6, r2, #0
	bl FUN_02001504
	adds r4, r0, #0
	cmp r6, #0
	bne _021D1DB0
	ldr r0, _021D1ED0 @ =0x000005DC
	bl FUN_02005748
_021D1DB0:
	add r1, sp, #0x10
	adds r0, r7, #0
	adds r1, #2
	add r2, sp, #0x10
	bl FUN_020014DC
	add r2, sp, #0x10
	ldrh r2, [r2]
	movs r0, #7
	lsls r0, r0, #6
	lsls r2, r2, #4
	adds r2, #0x28
	lsls r2, r2, #0x10
	ldr r0, [r4, r0]
	movs r1, #0x69
	asrs r2, r2, #0x10
	bl FUN_0200D494
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _021D1DEA
	movs r0, #0x71
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	b _021D1DF6
_021D1DEA:
	movs r0, #0x71
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
_021D1DF6:
	add r0, sp, #0x10
	ldrh r1, [r0, #2]
	ldrb r0, [r4, #0x1c]
	subs r0, r0, #6
	cmp r1, r0
	bge _021D1E10
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
	b _021D1E1C
_021D1E10:
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
_021D1E1C:
	movs r0, #0x50
	str r0, [sp]
	movs r1, #0
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xf8
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	cmp r5, #0xff
	bne _021D1E58
	adds r0, r4, #0
	movs r1, #0
	bl ov79_021D1D20
	adds r0, r4, #0
	adds r0, #0xf8
	bl FUN_0201A954
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	ldr r0, [r0, #4]
	bl FUN_0200D3F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D1E58:
	ldr r1, [r4, #0x20]
	lsls r5, r5, #3
	adds r1, #0x1c
	adds r0, r4, #0
	adds r1, r1, r5
	bl ov79_021D1D20
	ldr r0, [r4, #0x34]
	bl FUN_020237E8
	ldr r0, [r4, #0x20]
	adds r0, r0, r5
	ldrb r2, [r0, #0x1f]
	cmp r2, #0x63
	bls _021D1E78
	movs r2, #0x63
_021D1E78:
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	movs r3, #2
	bl FUN_0200B60C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	bl FUN_0200C388
	movs r1, #0
	str r1, [sp]
	ldr r0, _021D1ED4 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x34]
	adds r0, #0xf8
	movs r3, #8
	bl FUN_0201D78C
	ldr r2, [r4, #0x20]
	movs r1, #0x7e
	lsls r1, r1, #2
	adds r2, r2, r5
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldrb r2, [r2, #0x1e]
	ldr r1, [r4, r1]
	bl FUN_0209933C
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	ldr r0, [r0, #4]
	bl FUN_0200D3F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1ED0: .4byte 0x000005DC
_021D1ED4: .4byte 0x00010200
	thumb_func_end ov79_021D1D94

	thumb_func_start ov79_021D1ED8
ov79_021D1ED8: @ 0x021D1ED8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #3
	bl FUN_02013A04
	adds r1, r5, #0
	adds r1, #0xd0
	str r0, [r1]
	movs r4, #0
_021D1EEC:
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldr r1, [r5, #0x2c]
	adds r2, r4, #1
	adds r3, r4, #0
	bl FUN_02013A4C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	blo _021D1EEC
	adds r1, r5, #0
	ldr r0, _021D1F5C @ =0x021D3B90
	adds r1, #0xa4
	movs r2, #0x20
	blx FUN_020C4DB0
	movs r0, #0x46
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r0, r5, r0
	adds r1, #0xb0
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0xd0
	ldr r2, [r1]
	adds r1, r5, #0
	adds r1, #0xa4
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0xc0
	str r5, [r1]
	adds r1, r5, #0
	movs r2, #3
	adds r1, #0xb4
	strh r2, [r1]
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xf
	bl FUN_0200DC48
	ldr r3, [r5]
	adds r0, r5, #0
	movs r1, #0
	lsls r3, r3, #0x18
	adds r0, #0xa4
	adds r2, r1, #0
	lsrs r3, r3, #0x18
	bl FUN_0200112C
	adds r5, #0xc8
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_021D1F5C: .4byte 0x021D3B90
	thumb_func_end ov79_021D1ED8

	thumb_func_start ov79_021D1F60
ov79_021D1F60: @ 0x021D1F60
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x46
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0x46
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0xc8
	add r2, sp, #0
	ldr r0, [r0]
	add r1, sp, #0
	adds r2, #2
	bl FUN_02001384
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_02013A3C
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xc8
	str r1, [r0]
	adds r4, #0xd0
	str r1, [r4]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov79_021D1F60

	thumb_func_start ov79_021D1FA8
ov79_021D1FA8: @ 0x021D1FA8
	push {r3, lr}
	cmp r2, #0
	bne _021D1FB4
	ldr r0, _021D1FB8 @ =0x000005DC
	bl FUN_02005748
_021D1FB4:
	pop {r3, pc}
	nop
_021D1FB8: .4byte 0x000005DC
	thumb_func_end ov79_021D1FA8

	thumb_func_start ov79_021D1FBC
ov79_021D1FBC: @ 0x021D1FBC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	bl FUN_020237E8
	ldrb r1, [r4, #0x1a]
	ldr r2, [r4, #0x20]
	ldr r0, [r4, #0x28]
	lsls r1, r1, #3
	adds r1, r2, r1
	ldrb r1, [r1, #0x1e]
	bl FUN_02015918
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_0200B48C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x44]
	bl FUN_0200C388
	adds r0, r4, #0
	ldr r1, [r4, #0x34]
	adds r4, #0x7c
	ldrb r2, [r4]
	movs r3, #1
	bl ov79_021D1850
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov79_021D1FBC

	thumb_func_start ov79_021D2008
ov79_021D2008: @ 0x021D2008
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	bl FUN_020237E8
	ldrb r1, [r4, #0x1a]
	ldr r2, [r4, #0x20]
	ldr r0, [r4, #0x28]
	lsls r1, r1, #3
	adds r1, r2, r1
	ldrb r1, [r1, #0x1e]
	bl FUN_02015918
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_0200B48C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x48]
	bl FUN_0200C388
	adds r0, r4, #0
	ldr r1, [r4, #0x34]
	adds r4, #0x7c
	ldrb r2, [r4]
	movs r3, #0
	bl ov79_021D1850
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov79_021D2008

	thumb_func_start ov79_021D2054
ov79_021D2054: @ 0x021D2054
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, _021D2074 @ =0x021D3B88
	str r0, [sp]
	ldr r0, [r4, #0x24]
	movs r2, #0x1f
	movs r3, #0xf
	bl FUN_02002100
	adds r4, #0xd4
	str r0, [r4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D2074: .4byte 0x021D3B88
	thumb_func_end ov79_021D2054

	thumb_func_start ov79_021D2078
ov79_021D2078: @ 0x021D2078
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp]
	ldr r0, _021D20E8 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r2, [r5, #0x4c]
	adds r0, r5, r0
	movs r3, #4
	bl FUN_0201D78C
	adds r0, r5, #0
	str r0, [sp, #0x10]
	adds r0, #0xe8
	ldr r4, _021D20EC @ =0x021D3B80
	movs r6, #0
	str r0, [sp, #0x10]
_021D20A4:
	ldr r1, [r5, #0x50]
	movs r0, #2
	movs r2, #0
	bl FUN_02002D7C
	movs r1, #0x40
	subs r3, r1, r0
	ldrb r0, [r4]
	lsrs r7, r3, #0x1f
	adds r7, r3, r7
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _021D20F0 @ =0x00020301
	asrs r3, r7, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #7
	lsls r1, r0, #4
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x50]
	adds r0, r0, r1
	movs r1, #2
	bl FUN_0201D78C
	adds r6, r6, #1
	adds r5, r5, #4
	adds r4, r4, #1
	cmp r6, #6
	blt _021D20A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D20E8: .4byte 0x00010200
_021D20EC: .4byte 0x021D3B80
_021D20F0: .4byte 0x00020301
	thumb_func_end ov79_021D2078

	thumb_func_start ov79_021D20F4
ov79_021D20F4: @ 0x021D20F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	adds r4, r0, #0
	ldr r1, [r4]
	movs r0, #0x20
	bl FUN_0201DBEC
	ldr r0, [r4]
	bl FUN_0200C6E4
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl FUN_0200C704
	movs r7, #0x6f
	lsls r7, r7, #2
	add r2, sp, #0x34
	ldr r3, _021D21C0 @ =0x021D3C00
	str r0, [r4, r7]
	ldm r3!, {r0, r1}
	adds r6, r2, #0
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	ldr r5, _021D21C4 @ =0x021D3BD0
	stm r2!, {r0, r1}
	add r3, sp, #0x20
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r6, #0
	str r0, [r3]
	subs r0, r7, #4
	ldr r0, [r4, r0]
	movs r3, #0x20
	bl FUN_0200C73C
	subs r1, r7, #4
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	movs r2, #0xe
	bl FUN_0200C7C0
	ldr r0, [r4]
	bl FUN_0200A93C
	ldr r0, [r4]
	bl FUN_0200A944
	ldr r5, _021D21C8 @ =0x021D3BE4
	add r3, sp, #4
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	subs r1, r7, #4
	str r0, [r3]
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0200C8F0
	movs r1, #1
	movs r0, #0
	str r0, [sp]
	ldr r0, [r4]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02098FFC
	adds r1, r7, #0
	adds r1, #0x3c
	str r0, [r4, r1]
	bl FUN_02035E38
	cmp r0, #0
	beq _021D21AC
	bl FUN_02039734
_021D21AC:
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D21C0: .4byte 0x021D3C00
_021D21C4: .4byte 0x021D3BD0
_021D21C8: .4byte 0x021D3BE4
	thumb_func_end ov79_021D20F4

	thumb_func_start ov79_021D21CC
ov79_021D21CC: @ 0x021D21CC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0209903C
	movs r1, #0x6e
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0200C8B0
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200C8D4
	bl FUN_0201DC3C
	pop {r4, pc}
	thumb_func_end ov79_021D21CC

	thumb_func_start ov79_021D21F8
ov79_021D21F8: @ 0x021D21F8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200C7EC
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02099160
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov79_021D21F8

	thumb_func_start ov79_021D2214
ov79_021D2214: @ 0x021D2214
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	bne _021D2242
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021E90
	movs r0, #0x71
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	pop {r4, pc}
_021D2242:
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	movs r1, #9
	bl FUN_02021E90
	movs r0, #0x71
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CC8
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CC8
	pop {r4, pc}
	thumb_func_end ov79_021D2214

	thumb_func_start ov79_021D2268
ov79_021D2268: @ 0x021D2268
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	add r1, sp, #0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	adds r4, r2, #0
	str r0, [r1, #8]
	adds r7, r3, #0
	ldr r0, [r4]
	adds r1, r7, #0
	blx FUN_020BCFD0
	str r0, [r5]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	blx FUN_020BCFD0
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	adds r1, r7, #0
	blx FUN_020BCFD0
	add r2, sp, #0
	str r0, [r5, #8]
	ldm r2!, {r0, r1}
	stm r6!, {r0, r1}
	ldr r0, [r2]
	str r0, [r6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov79_021D2268

	thumb_func_start ov79_021D22AC
ov79_021D22AC: @ 0x021D22AC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02006840
	movs r2, #1
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x2e
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0x6f
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0x2e
	bl FUN_0200681C
	movs r2, #0x6f
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x2e
	str r0, [r4]
	str r5, [r4, #0x10]
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov79_021D22AC

	thumb_func_start ov79_021D22E4
ov79_021D22E4: @ 0x021D22E4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #2
	blt _021D2308
	cmp r0, #5
	bgt _021D2308
	adds r0, r4, #0
	adds r0, #0x40
	bl ov79_021D3820
	ldr r0, [r4, #0x5c]
	bl FUN_02099160
_021D2308:
	ldr r0, [r5]
	cmp r0, #7
	bls _021D2310
	b _021D2442
_021D2310:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D231C: @ jump table
	.2byte _021D232C - _021D231C - 2 @ case 0
	.2byte _021D2372 - _021D231C - 2 @ case 1
	.2byte _021D238C - _021D231C - 2 @ case 2
	.2byte _021D23B6 - _021D231C - 2 @ case 3
	.2byte _021D23C4 - _021D231C - 2 @ case 4
	.2byte _021D23EE - _021D231C - 2 @ case 5
	.2byte _021D23FC - _021D231C - 2 @ case 6
	.2byte _021D240C - _021D231C - 2 @ case 7
_021D232C:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D2454 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D2458 @ =0x04001000
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
	b _021D2448
_021D2372:
	adds r0, r4, #0
	bl ov79_021D247C
	cmp r0, #0
	bne _021D2382
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D2382:
	ldr r0, _021D245C @ =ov79_021D252C
	adds r1, r4, #0
	bl FUN_02017798
	b _021D2448
_021D238C:
	ldr r1, [r4, #4]
	adds r0, r1, #1
	str r0, [r4, #4]
	cmp r1, #4
	bge _021D239C
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D239C:
	movs r0, #0
	str r0, [r4, #4]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r2, [r4]
	adds r3, r0, #0
	str r2, [sp, #8]
	adds r2, r1, #0
	bl FUN_0200F174
	b _021D2448
_021D23B6:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _021D2448
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D23C4:
	adds r0, r4, #0
	bl ov79_021D2928
	cmp r0, #0
	bne _021D23D4
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D23D4:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	b _021D2448
_021D23EE:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _021D2448
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D23FC:
	adds r0, r4, #0
	bl ov79_021D24D4
	cmp r0, #0
	bne _021D2448
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D240C:
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
	ldr r0, _021D2454 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D2458 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	b _021D2448
_021D2442:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D2448:
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021D2454: .4byte 0xFFFFE0FF
_021D2458: .4byte 0x04001000
_021D245C: .4byte ov79_021D252C
	thumb_func_end ov79_021D22E4

	thumb_func_start ov79_021D2460
ov79_021D2460: @ 0x021D2460
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006830
	ldr r0, [r4]
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov79_021D2460

	thumb_func_start ov79_021D247C
ov79_021D247C: @ 0x021D247C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021D2490
	cmp r1, #1
	beq _021D249C
	cmp r1, #2
	beq _021D24A8
	b _021D24C8
_021D2490:
	bl ov79_021D257C
	adds r0, r4, #0
	bl ov79_021D2634
	b _021D24C8
_021D249C:
	bl ov79_021D2768
	adds r0, r4, #0
	bl ov79_021D270C
	b _021D24C8
_021D24A8:
	bl ov79_021D27D8
	adds r0, r4, #0
	adds r1, r4, #0
	ldr r2, [r4]
	adds r0, #0x40
	adds r1, #0x30
	bl ov79_021D3768
	adds r0, r4, #0
	bl ov79_021D2864
	movs r0, #0
	str r0, [r4, #4]
	movs r0, #1
	pop {r4, pc}
_021D24C8:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov79_021D247C

	thumb_func_start ov79_021D24D4
ov79_021D24D4: @ 0x021D24D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #3
	bhi _021D2520
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D24EA: @ jump table
	.2byte _021D24F2 - _021D24EA - 2 @ case 0
	.2byte _021D2506 - _021D24EA - 2 @ case 1
	.2byte _021D2512 - _021D24EA - 2 @ case 2
	.2byte _021D2518 - _021D24EA - 2 @ case 3
_021D24F2:
	bl ov79_021D2908
	adds r0, r4, #0
	adds r0, #0x40
	bl ov79_021D385C
	adds r0, r4, #0
	bl ov79_021D2858
	b _021D2520
_021D2506:
	bl ov79_021D2754
	adds r0, r4, #0
	bl ov79_021D27AC
	b _021D2520
_021D2512:
	bl ov79_021D260C
	b _021D2520
_021D2518:
	movs r0, #0
	str r0, [r4, #4]
	movs r0, #1
	pop {r4, pc}
_021D2520:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov79_021D24D4

	thumb_func_start ov79_021D252C
ov79_021D252C: @ 0x021D252C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	bl FUN_0201C2B8
	ldr r0, [r4, #0x44]
	bl FUN_02008A94
	bl FUN_0200C800
	bl FUN_0201DCAC
	ldr r3, _021D2554 @ =0x027E0000
	ldr r1, _021D2558 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D2554: .4byte 0x027E0000
_021D2558: .4byte 0x00003FF8
	thumb_func_end ov79_021D252C

	thumb_func_start ov79_021D255C
ov79_021D255C: @ 0x021D255C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D2578 @ =0x021D3C70
	add r3, sp, #0
	movs r2, #5
_021D2566:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D2566
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D2578: .4byte 0x021D3C70
	thumb_func_end ov79_021D255C

	thumb_func_start ov79_021D257C
ov79_021D257C: @ 0x021D257C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	adds r5, r0, #0
	bl ov79_021D255C
	ldr r0, [r5]
	bl FUN_02018340
	add r3, sp, #8
	ldr r4, _021D2600 @ =0x021D3C2C
	str r0, [r5, #0x68]
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r4, _021D2604 @ =0x021D3C98
	add r3, sp, #0x18
	movs r2, #0xa
_021D25A8:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D25A8
	ldr r1, _021D2608 @ =0x021D3C20
	ldr r0, [r4]
	ldrb r2, [r1]
	str r0, [r3]
	add r0, sp, #4
	strb r2, [r0]
	ldrb r2, [r1, #1]
	ldrb r1, [r1, #2]
	add r4, sp, #4
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	movs r0, #0
	str r0, [sp]
	add r6, sp, #0x18
_021D25CC:
	ldrb r7, [r4]
	ldr r0, [r5, #0x68]
	adds r2, r6, #0
	adds r1, r7, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #0x68]
	adds r1, r7, #0
	bl FUN_02019EBC
	ldr r3, [r5]
	adds r0, r7, #0
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r0, [sp]
	adds r4, r4, #1
	adds r0, r0, #1
	adds r6, #0x1c
	str r0, [sp]
	cmp r0, #3
	blt _021D25CC
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D2600: .4byte 0x021D3C2C
_021D2604: .4byte 0x021D3C98
_021D2608: .4byte 0x021D3C20
	thumb_func_end ov79_021D257C

	thumb_func_start ov79_021D260C
ov79_021D260C: @ 0x021D260C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #1
_021D2612:
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x68]
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	cmp r4, #3
	blt _021D2612
	ldr r0, [r5, #0x68]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r5, #0x68]
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov79_021D260C

	thumb_func_start ov79_021D2634
ov79_021D2634: @ 0x021D2634
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x57
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x57
	bl FUN_0208C210
	movs r0, #3
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x57
	bl FUN_0208C210
	movs r1, #0
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x20
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x57
	bl FUN_0208C210
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xa0
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x57
	bl FUN_0208C210
	movs r0, #4
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x57
	bl FUN_0208C210
	movs r0, #5
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5]
	adds r2, r4, #0
	movs r3, #0x57
	bl FUN_0208C210
	adds r0, r4, #0
	bl FUN_02006CA8
	ldr r0, [r5, #0x68]
	movs r1, #2
	bl FUN_0201C3C0
	ldr r0, [r5, #0x68]
	movs r1, #4
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov79_021D2634

	thumb_func_start ov79_021D270C
ov79_021D270C: @ 0x021D270C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #0x68]
	ldr r2, _021D2750 @ =0x021D3C24
	adds r1, #0x6c
	bl FUN_0201A8D4
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0x10]
	movs r1, #1
	ldrb r0, [r0, #0xb]
	adds r2, r1, #0
	movs r3, #0xe
	str r0, [sp]
	ldr r0, [r4]
	str r0, [sp, #4]
	ldr r0, [r4, #0x68]
	bl FUN_0200DD0C
	movs r1, #0x1e
	ldr r2, [r4]
	movs r0, #0
	lsls r1, r1, #4
	bl FUN_02002E98
	add sp, #8
	pop {r4, pc}
	nop
_021D2750: .4byte 0x021D3C24
	thumb_func_end ov79_021D270C

	thumb_func_start ov79_021D2754
ov79_021D2754: @ 0x021D2754
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x6c
	bl FUN_0201ACF4
	adds r4, #0x6c
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	thumb_func_end ov79_021D2754

	thumb_func_start ov79_021D2768
ov79_021D2768: @ 0x021D2768
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _021D27A8 @ =0x000001CE
	ldr r3, [r6]
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	str r0, [r6, #0x18]
	ldr r2, [r6]
	movs r0, #1
	movs r1, #0x40
	bl FUN_0200B368
	str r0, [r6, #0x1c]
	ldr r1, [r6]
	movs r0, #0x40
	bl FUN_02023790
	str r0, [r6, #0x20]
	movs r4, #0
	adds r5, r6, #0
_021D2794:
	ldr r0, [r6, #0x18]
	adds r1, r4, #0
	bl FUN_0200B1EC
	str r0, [r5, #0x24]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D2794
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D27A8: .4byte 0x000001CE
	thumb_func_end ov79_021D2768

	thumb_func_start ov79_021D27AC
ov79_021D27AC: @ 0x021D27AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_021D27B4:
	ldr r0, [r5, #0x24]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D27B4
	ldr r0, [r6, #0x20]
	bl FUN_020237BC
	ldr r0, [r6, #0x1c]
	bl FUN_0200B3F0
	ldr r0, [r6, #0x18]
	bl FUN_0200B190
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov79_021D27AC

	thumb_func_start ov79_021D27D8
ov79_021D27D8: @ 0x021D27D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r1, #5
	ldr r0, [r0]
	movs r2, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	bl FUN_02074470
	strh r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	bl FUN_02075D6C
	adds r1, r4, #0
	adds r1, #0x37
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	bl FUN_02075BCC
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x70
	ldr r0, [r0]
	movs r2, #0
	bl FUN_02074470
	adds r1, r0, #0
	ldrh r0, [r4, #0x34]
	movs r2, #0x1c
	bl FUN_020759CC
	movs r1, #1
	eors r1, r0
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r4]
	movs r0, #0xc
	bl FUN_02023790
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x3c]
	ldr r0, [r0]
	movs r1, #0x77
	bl FUN_02074470
	adds r1, r4, #0
	ldr r0, [r4, #0x10]
	adds r1, #0x36
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	bl FUN_02098EAC
	adds r4, #0x39
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov79_021D27D8

	thumb_func_start ov79_021D2858
ov79_021D2858: @ 0x021D2858
	ldr r3, _021D2860 @ =FUN_020237BC
	ldr r0, [r0, #0x3c]
	bx r3
	nop
_021D2860: .4byte FUN_020237BC
	thumb_func_end ov79_021D2858

	thumb_func_start ov79_021D2864
ov79_021D2864: @ 0x021D2864
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	adds r4, r0, #0
	ldr r1, [r4]
	movs r0, #0x20
	bl FUN_0201DBEC
	ldr r0, [r4]
	bl FUN_0200C6E4
	add r2, sp, #0x24
	ldr r5, _021D2900 @ =0x021D3C50
	str r0, [r4, #0x7c]
	ldm r5!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	ldr r6, _021D2904 @ =0x021D3C3C
	stm r2!, {r0, r1}
	add r5, sp, #0x10
	ldm r6!, {r0, r1}
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldr r0, [r6]
	adds r1, r3, #0
	str r0, [r5]
	ldr r0, [r4, #0x7c]
	movs r3, #0x20
	bl FUN_0200C73C
	ldr r0, [r4]
	bl FUN_0200A93C
	movs r0, #0
	str r0, [sp]
	movs r1, #2
	ldr r0, [r4]
	adds r2, r1, #0
	movs r3, #1
	bl FUN_02098FFC
	str r0, [r4, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x5c]
	ldrh r1, [r1, #8]
	movs r2, #0x64
	movs r3, #0x5a
	bl FUN_0209916C
	str r0, [r4, #0x60]
	ldr r0, [r0, #4]
	movs r1, #0
	bl FUN_0200D3F4
	bl FUN_02035E38
	cmp r0, #0
	beq _021D28F4
	bl FUN_02039734
_021D28F4:
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D2900: .4byte 0x021D3C50
_021D2904: .4byte 0x021D3C3C
	thumb_func_end ov79_021D2864

	thumb_func_start ov79_021D2908
ov79_021D2908: @ 0x021D2908
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x60]
	bl FUN_02099370
	ldr r0, [r4, #0x5c]
	bl FUN_0209903C
	ldr r0, [r4, #0x7c]
	bl FUN_0200C8D4
	bl FUN_0201DC3C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov79_021D2908

	thumb_func_start ov79_021D2928
ov79_021D2928: @ 0x021D2928
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #8
	bhi _021D29A8
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D293E: @ jump table
	.2byte _021D2950 - _021D293E - 2 @ case 0
	.2byte _021D295C - _021D293E - 2 @ case 1
	.2byte _021D2968 - _021D293E - 2 @ case 2
	.2byte _021D2974 - _021D293E - 2 @ case 3
	.2byte _021D2980 - _021D293E - 2 @ case 4
	.2byte _021D298C - _021D293E - 2 @ case 5
	.2byte _021D2998 - _021D293E - 2 @ case 6
	.2byte _021D29A0 - _021D293E - 2 @ case 7
	.2byte _021D29A8 - _021D293E - 2 @ case 8
_021D2950:
	adds r1, r4, #0
	adds r1, #0x80
	bl ov79_021D2A04
	str r0, [r4, #4]
	b _021D29B0
_021D295C:
	adds r1, r4, #0
	adds r1, #0x80
	bl ov79_021D2AE0
	str r0, [r4, #4]
	b _021D29B0
_021D2968:
	adds r1, r4, #0
	adds r1, #0x80
	bl ov79_021D2AF0
	str r0, [r4, #4]
	b _021D29B0
_021D2974:
	adds r1, r4, #0
	adds r1, #0x80
	bl ov79_021D2B3C
	str r0, [r4, #4]
	b _021D29B0
_021D2980:
	adds r1, r4, #0
	adds r1, #0x80
	bl ov79_021D2B54
	str r0, [r4, #4]
	b _021D29B0
_021D298C:
	adds r1, r4, #0
	adds r1, #0x80
	bl ov79_021D2B84
	str r0, [r4, #4]
	b _021D29B0
_021D2998:
	bl ov79_021D2B94
	str r0, [r4, #4]
	b _021D29B0
_021D29A0:
	bl ov79_021D2C08
	str r0, [r4, #4]
	b _021D29B0
_021D29A8:
	movs r0, #0
	str r0, [r4, #4]
	movs r0, #1
	pop {r4, pc}
_021D29B0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D2928

	thumb_func_start ov79_021D29B4
ov79_021D29B4: @ 0x021D29B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	adds r3, r5, #0
	adds r0, r1, #0
	movs r2, #0x1c
	adds r3, #0xcc
	muls r0, r2, r0
	adds r4, r3, r0
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020C4CF4
	str r5, [r4, #0x14]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x18]
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov79_021D29B4

	thumb_func_start ov79_021D29E4
ov79_021D29E4: @ 0x021D29E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	bl FUN_0200DA58
	ldr r1, [r4, #0x14]
	movs r2, #0x1c
	ldr r0, [r1, #4]
	subs r0, r0, #1
	str r0, [r1, #4]
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020C4CF4
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D29E4

	thumb_func_start ov79_021D2A04
ov79_021D2A04: @ 0x021D2A04
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r1, #0
	movs r2, #0x4f
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	ldr r0, [r5, #0x60]
	movs r2, #0x18
	ldr r0, [r0, #4]
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc4
	str r1, [r0]
	ldr r1, [r5, #0x58]
	adds r0, r4, #0
	adds r0, #0xc8
	str r1, [r0]
	adds r5, #0x39
	ldrb r0, [r5]
	movs r1, #2
	lsls r1, r1, #0x12
	str r0, [r4, #8]
	str r2, [r4]
	movs r0, #0xe
	str r1, [r4, #0xc]
	lsls r0, r0, #0x10
	str r0, [r4, #0x10]
	str r1, [r4, #0x18]
	lsls r0, r2, #0xe
	str r0, [r4, #0x1c]
	lsrs r0, r1, #7
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	lsrs r0, r1, #8
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	adds r1, r4, #0
	str r2, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x60]
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r1, #0xc
	bl FUN_02021C50
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0xc
	adds r1, #0x18
	add r2, sp, #0xc
	blx FUN_020BD1B0
	adds r1, r4, #0
	movs r3, #6
	add r0, sp, #0
	adds r1, #0x48
	add r2, sp, #0xc
	lsls r3, r3, #0xe
	bl ov79_021D2268
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021CF8
	adds r0, r4, #0
	adds r0, #0xc4
	adds r1, r4, #0
	ldr r0, [r0]
	adds r1, #0x30
	bl FUN_02021C70
	ldr r2, _021D2AD0 @ =ov79_021D2C50
	adds r0, r4, #0
	movs r1, #0
	bl ov79_021D29B4
	ldr r2, _021D2AD4 @ =ov79_021D2D7C
	adds r0, r4, #0
	movs r1, #1
	bl ov79_021D29B4
	ldr r2, _021D2AD8 @ =ov79_021D2F4C
	adds r0, r4, #0
	movs r1, #2
	bl ov79_021D29B4
	ldr r2, _021D2ADC @ =ov79_021D3094
	adds r0, r4, #0
	movs r1, #3
	bl ov79_021D29B4
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D2AD0: .4byte ov79_021D2C50
_021D2AD4: .4byte ov79_021D2D7C
_021D2AD8: .4byte ov79_021D2F4C
_021D2ADC: .4byte ov79_021D3094
	thumb_func_end ov79_021D2A04

	thumb_func_start ov79_021D2AE0
ov79_021D2AE0: @ 0x021D2AE0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _021D2AEA
	movs r0, #1
	bx lr
_021D2AEA:
	movs r0, #2
	bx lr
	.align 2, 0
	thumb_func_end ov79_021D2AE0

	thumb_func_start ov79_021D2AF0
ov79_021D2AF0: @ 0x021D2AF0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	adds r1, r4, #0
	adds r1, #0x39
	ldrb r1, [r1]
	cmp r1, #1
	ldr r1, [r4]
	bne _021D2B22
	lsls r0, r0, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r1, [r4, #0x34]
	movs r0, #0xb
	movs r2, #0
	movs r3, #0x7f
	bl FUN_020059D0
	b _021D2B36
_021D2B22:
	lsls r0, r0, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r0, #0
	ldrh r1, [r4, #0x34]
	adds r2, r0, #0
	movs r3, #0x7f
	bl FUN_020059D0
_021D2B36:
	movs r0, #3
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov79_021D2AF0

	thumb_func_start ov79_021D2B3C
ov79_021D2B3C: @ 0x021D2B3C
	push {r3, lr}
	bl FUN_0200598C
	cmp r0, #0
	beq _021D2B4A
	movs r0, #3
	pop {r3, pc}
_021D2B4A:
	movs r0, #0
	bl FUN_0200592C
	movs r0, #4
	pop {r3, pc}
	thumb_func_end ov79_021D2B3C

	thumb_func_start ov79_021D2B54
ov79_021D2B54: @ 0x021D2B54
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	movs r2, #0x5c
	blx FUN_020C4CF4
	ldr r2, _021D2B7C @ =ov79_021D3290
	adds r0, r4, #0
	movs r1, #0
	bl ov79_021D29B4
	ldr r2, _021D2B80 @ =ov79_021D33DC
	adds r0, r4, #0
	movs r1, #1
	bl ov79_021D29B4
	movs r0, #5
	pop {r4, pc}
	.align 2, 0
_021D2B7C: .4byte ov79_021D3290
_021D2B80: .4byte ov79_021D33DC
	thumb_func_end ov79_021D2B54

	thumb_func_start ov79_021D2B84
ov79_021D2B84: @ 0x021D2B84
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _021D2B8E
	movs r0, #5
	bx lr
_021D2B8E:
	movs r0, #6
	bx lr
	.align 2, 0
	thumb_func_end ov79_021D2B84

	thumb_func_start ov79_021D2B94
ov79_021D2B94: @ 0x021D2B94
	push {r4, lr}
	sub sp, #0x10
	movs r1, #1
	adds r4, r0, #0
	adds r0, #0x6c
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200E060
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #0xff
	bl FUN_0201ADA4
	ldr r0, [r4, #0x20]
	bl FUN_020237E8
	movs r0, #1
	str r0, [sp]
	movs r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x3c]
	movs r1, #0
	bl FUN_0200B48C
	adds r2, r4, #0
	adds r2, #0x39
	ldrb r2, [r2]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	lsls r2, r2, #2
	adds r2, r4, r2
	ldr r2, [r2, #0x24]
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x10]
	movs r1, #1
	ldrb r0, [r0, #0xa]
	str r0, [sp, #4]
	ldr r0, _021D2C04 @ =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x20]
	adds r0, #0x6c
	bl FUN_0201D78C
	strh r0, [r4, #0xc]
	movs r0, #0
	strh r0, [r4, #0xe]
	movs r0, #7
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D2C04: .4byte 0x0001020F
	thumb_func_end ov79_021D2B94

	thumb_func_start ov79_021D2C08
ov79_021D2C08: @ 0x021D2C08
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _021D2C1E
	movs r0, #7
	pop {r4, pc}
_021D2C1E:
	ldr r0, _021D2C4C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	bne _021D2C36
	ldrh r1, [r4, #0xe]
	adds r0, r1, #1
	strh r0, [r4, #0xe]
	cmp r1, #0x5a
	bhs _021D2C36
	movs r0, #7
	pop {r4, pc}
_021D2C36:
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #1
	bl FUN_0200E084
	adds r4, #0x6c
	adds r0, r4, #0
	bl FUN_0201ACF4
	movs r0, #8
	pop {r4, pc}
	.align 2, 0
_021D2C4C: .4byte 0x021BF67C
	thumb_func_end ov79_021D2C08

	thumb_func_start ov79_021D2C50
ov79_021D2C50: @ 0x021D2C50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	ldr r4, [r6, #0x14]
	adds r7, r0, #0
	movs r0, #0x18
	adds r5, r4, #0
	str r0, [r6, #4]
	movs r0, #1
	adds r5, #0xc
	lsls r0, r0, #0xc
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	lsrs r0, r0, #1
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x24
	adds r1, #0x30
	add r2, sp, #0xc
	blx FUN_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D2C96
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D2CA4
_021D2C96:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D2CA4:
	blx FUN_020E1740
	adds r1, r5, #0
	adds r3, r0, #0
	add r0, sp, #0
	adds r1, #0x3c
	add r2, sp, #0xc
	bl ov79_021D2268
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021CAC
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021CF8
	adds r4, #0xc4
	adds r5, #0x24
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_02021C70
	ldr r1, _021D2CE8 @ =ov79_021D2CEC
	adds r0, r7, #0
	bl FUN_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2CE8: .4byte ov79_021D2CEC
	thumb_func_end ov79_021D2C50

	thumb_func_start ov79_021D2CEC
ov79_021D2CEC: @ 0x021D2CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r6, [r5, #0x14]
	add r1, sp, #0
	movs r0, #0
	str r0, [r1]
	adds r4, r6, #0
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r4, #0xc
	ldr r0, [r4, #0x3c]
	ldr r2, [r5, #0xc]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	adds r3, r1, #0
	movs r7, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r3, r7
	ldr r1, [r4, #0x24]
	lsls r2, r3, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r2
	subs r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x40]
	ldr r2, [r5, #0xc]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r3, #2
	ldr r2, [r4, #0x28]
	adds r4, r7, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r4
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	subs r0, r2, r1
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	add r1, sp, #0
	bl FUN_02021C70
	movs r0, #1
	ldr r1, [r5, #0xc]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	subs r0, r0, #1
	str r0, [r5, #4]
	bne _021D2D78
	adds r6, #0xc4
	ldr r0, [r6]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r0, r5, #0
	bl ov79_021D29E4
_021D2D78:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov79_021D2CEC

	thumb_func_start ov79_021D2D7C
ov79_021D2D7C: @ 0x021D2D7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r1, #0
	ldr r6, [r5, #0x14]
	adds r7, r0, #0
	add r3, sp, #0xc
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	str r0, [r3, #8]
	movs r2, #0x18
	movs r1, #2
	adds r4, r6, #0
	movs r0, #0xe
	str r2, [r5, #4]
	lsls r1, r1, #0x12
	adds r4, #0xc
	str r1, [r6, #0xc]
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	str r1, [r4, #0xc]
	lsls r0, r2, #0xe
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, r4, #0
	adds r2, r3, #0
	blx FUN_020BD1B0
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021D2DCE
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D2DDC
_021D2DCE:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D2DDC:
	blx FUN_020E1740
	adds r1, r4, #0
	adds r3, r0, #0
	add r0, sp, #0
	adds r1, #0x18
	add r2, sp, #0xc
	bl ov79_021D2268
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021D2E06
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D2E14
_021D2E06:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D2E14:
	blx FUN_020E1740
	adds r1, r0, #0
	movs r0, #0x2d
	lsls r0, r0, #0xe
	blx FUN_020BCFD0
	str r0, [r4, #0x48]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021D2E3C
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D2E4A
_021D2E3C:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D2E4A:
	blx FUN_020E1740
	adds r1, r0, #0
	movs r0, #1
	lsls r0, r0, #0xc
	blx FUN_020BCFD0
	adds r6, #0xc4
	str r0, [r4, #0x4c]
	ldr r0, [r6]
	adds r1, r4, #0
	bl FUN_02021C50
	ldr r1, _021D2E70 @ =ov79_021D2E74
	adds r0, r7, #0
	bl FUN_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2E70: .4byte ov79_021D2E74
	thumb_func_end ov79_021D2D7C

	thumb_func_start ov79_021D2E74
ov79_021D2E74: @ 0x021D2E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r6, [r5, #0x14]
	ldr r2, [r5, #0xc]
	adds r4, r6, #0
	adds r4, #0xc
	ldr r0, [r4, #0x18]
	asrs r3, r2, #0x1f
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	adds r3, r1, #0
	movs r7, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r3, r7
	ldr r1, [r6, #0xc]
	lsls r2, r3, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r2
	adds r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldr r2, [r5, #0xc]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	adds r3, r1, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r3, r7
	ldr r1, [r4, #4]
	lsls r2, r3, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r2
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x48]
	ldr r2, [r5, #0xc]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	adds r3, r7, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	lsls r0, r1, #4
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r2, _021D2F48 @ =0xFFFC0000
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x12
	blx FUN_020E1F1C
	adds r3, r7, #0
	movs r7, #2
	adds r2, r1, #0
	lsls r7, r7, #0xa
	adds r0, r0, r7
	adcs r2, r3
	lsls r2, r2, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r2
	asrs r4, r0, #0x1f
	lsrs r2, r0, #0x14
	lsls r4, r4, #0xc
	orrs r4, r2
	lsls r0, r0, #0xc
	adds r2, r0, r7
	adcs r4, r3
	ldr r1, [sp, #4]
	lsls r0, r4, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r0
	adds r0, r1, r2
	adds r6, #0xc4
	str r0, [sp, #4]
	ldr r0, [r6]
	add r1, sp, #0
	bl FUN_02021C50
	ldr r1, [r5, #0xc]
	lsls r0, r7, #1
	adds r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	subs r0, r0, #1
	str r0, [r5, #4]
	bne _021D2F44
	adds r0, r5, #0
	bl ov79_021D29E4
_021D2F44:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D2F48: .4byte 0xFFFC0000
	thumb_func_end ov79_021D2E74

	thumb_func_start ov79_021D2F4C
ov79_021D2F4C: @ 0x021D2F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	ldr r4, [r6, #0x14]
	adds r7, r0, #0
	adds r5, r4, #0
	movs r1, #0x18
	movs r0, #1
	adds r5, #0x68
	str r1, [r6, #4]
	lsls r0, r0, #0xc
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	lsls r0, r1, #8
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x30
	adds r1, #0x24
	add r2, sp, #0xc
	blx FUN_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D2F92
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D2FA0
_021D2F92:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D2FA0:
	blx FUN_020E1740
	adds r5, #0x3c
	adds r3, r0, #0
	add r0, sp, #0
	adds r1, r5, #0
	add r2, sp, #0xc
	bl ov79_021D2268
	adds r0, r4, #0
	adds r0, #0xc8
	movs r1, #0xc
	adds r2, r1, #0
	ldr r0, [r0]
	adds r2, #0xf4
	bl FUN_02007DEC
	adds r4, #0xc8
	movs r1, #0xd
	adds r2, r1, #0
	ldr r0, [r4]
	adds r2, #0xf3
	bl FUN_02007DEC
	ldr r1, _021D2FDC @ =ov79_021D2FE0
	adds r0, r7, #0
	bl FUN_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2FDC: .4byte ov79_021D2FE0
	thumb_func_end ov79_021D2F4C

	thumb_func_start ov79_021D2FE0
ov79_021D2FE0: @ 0x021D2FE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	ldr r6, [r5, #0x14]
	ldr r0, [r5, #0xc]
	adds r4, r6, #0
	adds r4, #0x68
	str r0, [sp, #4]
	asrs r7, r0, #0x1f
	ldr r0, [r4, #0x40]
	ldr r2, [sp, #4]
	asrs r1, r0, #0x1f
	adds r3, r7, #0
	blx FUN_020E1F1C
	movs r3, #2
	adds r2, r0, #0
	lsls r3, r3, #0xa
	adds r3, r2, r3
	ldr r2, _021D3090 @ =0x00000000
	ldr r0, [r4, #0x28]
	adcs r1, r2
	lsrs r2, r3, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	adds r0, r0, r2
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #4]
	asrs r1, r0, #0x1f
	adds r3, r7, #0
	blx FUN_020E1F1C
	movs r2, #2
	adds r3, r0, #0
	adds r0, r6, #0
	adds r7, r1, #0
	adds r0, #0xc8
	lsls r2, r2, #0xa
	movs r1, #0xc
	adds r3, r3, r2
	ldr r2, _021D3090 @ =0x00000000
	ldr r4, [r4, #0x24]
	adcs r7, r2
	lsls r2, r7, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r2
	adds r2, r4, r3
	ldr r0, [r0]
	asrs r2, r2, #4
	bl FUN_02007DEC
	adds r0, r6, #0
	adds r0, #0xc8
	ldr r2, [sp]
	ldr r0, [r0]
	movs r1, #0xd
	asrs r2, r2, #4
	bl FUN_02007DEC
	movs r0, #1
	ldr r1, [r5, #0xc]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	subs r0, r0, #1
	str r0, [r5, #4]
	bne _021D308A
	adds r0, r6, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0x80
	bl FUN_02007DEC
	adds r6, #0xc8
	ldr r0, [r6]
	movs r1, #1
	movs r2, #0x60
	bl FUN_02007DEC
	adds r0, r5, #0
	bl ov79_021D29E4
_021D308A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3090: .4byte 0x00000000
	thumb_func_end ov79_021D2FE0

	thumb_func_start ov79_021D3094
ov79_021D3094: @ 0x021D3094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	ldr r4, [r6, #0x14]
	adds r7, r0, #0
	movs r0, #0x18
	movs r1, #2
	adds r5, r4, #0
	str r0, [r6, #4]
	lsls r1, r1, #0x12
	adds r5, #0x68
	str r1, [r4, #0x68]
	lsls r0, r0, #0xe
	str r0, [r5, #4]
	movs r0, #7
	str r1, [r5, #0xc]
	lsls r0, r0, #0x10
	str r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0xc
	adds r1, r5, #0
	add r2, sp, #0xc
	blx FUN_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D30DC
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D30EA
_021D30DC:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D30EA:
	blx FUN_020E1740
	adds r1, r5, #0
	adds r3, r0, #0
	add r0, sp, #0
	adds r1, #0x18
	add r2, sp, #0xc
	bl ov79_021D2268
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r2, [r5]
	ldr r0, [r0]
	movs r1, #0
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	adds r4, #0xc8
	ldr r2, [r5, #4]
	ldr r0, [r4]
	movs r1, #1
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	ldr r1, _021D3128 @ =ov79_021D312C
	adds r0, r7, #0
	bl FUN_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3128: .4byte ov79_021D312C
	thumb_func_end ov79_021D3094

	thumb_func_start ov79_021D312C
ov79_021D312C: @ 0x021D312C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	ldr r5, [r6, #0x14]
	ldr r7, [r6, #0xc]
	adds r4, r5, #0
	str r0, [sp]
	asrs r0, r7, #0x1f
	str r0, [sp, #8]
	adds r4, #0x68
	ldr r0, [r4, #0x1c]
	ldr r3, [sp, #8]
	asrs r1, r0, #0x1f
	adds r2, r7, #0
	blx FUN_020E1F1C
	movs r3, #2
	adds r2, r0, #0
	lsls r3, r3, #0xa
	adds r3, r2, r3
	ldr r2, _021D3260 @ =0x00000000
	ldr r0, [r4, #4]
	adcs r1, r2
	lsrs r2, r3, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	adds r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r3, [sp, #8]
	asrs r1, r0, #0x1f
	adds r2, r7, #0
	blx FUN_020E1F1C
	mov ip, r0
	ldr r2, [r5, #0x68]
	adds r7, r1, #0
	str r2, [sp, #0xc]
	movs r2, #2
	adds r0, r5, #0
	adds r0, #0xc8
	movs r1, #0
	mov r3, ip
	lsls r2, r2, #0xa
	adds r2, r3, r2
	adcs r7, r1
	lsls r3, r7, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r3
	ldr r3, [sp, #0xc]
	ldr r0, [r0]
	adds r2, r3, r2
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r2, [sp, #4]
	ldr r0, [r0]
	movs r1, #1
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	subs r0, r0, #4
	adds r1, r0, #0
	muls r1, r0, r1
	movs r0, #0x10
	subs r0, r0, r1
	rsbs r0, r0, #0
	cmp r0, #0
	ble _021D31D2
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D31E0
_021D31D2:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D31E0:
	blx FUN_020E1740
	ldr r2, _021D3264 @ =0x00001666
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	adds r3, r1, #0
	movs r1, #4
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0xc8
	lsls r2, r1, #9
	adds r7, r7, r2
	ldr r2, _021D3260 @ =0x00000000
	ldr r0, [r0]
	adcs r3, r2
	lsls r2, r3, #0x14
	lsrs r3, r7, #0xc
	orrs r3, r2
	asrs r2, r3, #0xc
	bl FUN_02007DEC
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	cmp r0, #8
	bls _021D322E
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x50
	strh r1, [r0]
_021D322E:
	movs r0, #1
	ldr r1, [r6, #0xc]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r6, #0xc]
	ldr r1, [r6, #4]
	subs r0, r1, #1
	str r0, [r6, #4]
	cmp r1, #0
	bne _021D325C
	adds r5, #0xc8
	ldr r0, [r5]
	movs r1, #4
	movs r2, #0
	bl FUN_02007DEC
	movs r0, #0
	adds r4, #0x50
	strh r0, [r4]
	ldr r0, [sp]
	ldr r1, _021D3268 @ =ov79_021D326C
	bl FUN_0201CECC
_021D325C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3260: .4byte 0x00000000
_021D3264: .4byte 0x00001666
_021D3268: .4byte ov79_021D326C
	thumb_func_end ov79_021D312C

	thumb_func_start ov79_021D326C
ov79_021D326C: @ 0x021D326C
	push {r3, lr}
	ldr r3, [r1, #0x14]
	adds r3, #0x68
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r2, [r0]
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r3, #0x50
	adds r0, r0, #1
	strh r0, [r3]
	cmp r2, #4
	blo _021D328E
	adds r0, r1, #0
	bl ov79_021D29E4
_021D328E:
	pop {r3, pc}
	thumb_func_end ov79_021D326C

	thumb_func_start ov79_021D3290
ov79_021D3290: @ 0x021D3290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	ldr r4, [r6, #0x14]
	adds r7, r0, #0
	adds r5, r4, #0
	movs r1, #8
	movs r0, #6
	adds r5, #0x68
	str r1, [r6, #4]
	lsls r0, r0, #0xa
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	lsls r0, r1, #9
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x30
	adds r1, #0x24
	add r2, sp, #0xc
	blx FUN_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D32D6
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D32E4
_021D32D6:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D32E4:
	blx FUN_020E1740
	adds r5, #0x3c
	adds r3, r0, #0
	add r0, sp, #0
	adds r1, r5, #0
	add r2, sp, #0xc
	bl ov79_021D2268
	adds r0, r4, #0
	adds r0, #0xc8
	movs r1, #0xc
	ldr r0, [r0]
	lsls r2, r1, #5
	bl FUN_02007DEC
	adds r4, #0xc8
	movs r2, #6
	ldr r0, [r4]
	movs r1, #0xd
	lsls r2, r2, #6
	bl FUN_02007DEC
	ldr r1, _021D3320 @ =ov79_021D3324
	adds r0, r7, #0
	bl FUN_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3320: .4byte ov79_021D3324
	thumb_func_end ov79_021D3290

	thumb_func_start ov79_021D3324
ov79_021D3324: @ 0x021D3324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	ldr r6, [r5, #0x14]
	ldr r0, [r5, #0xc]
	adds r4, r6, #0
	adds r4, #0x68
	str r0, [sp, #4]
	asrs r7, r0, #0x1f
	ldr r0, [r4, #0x40]
	ldr r2, [sp, #4]
	asrs r1, r0, #0x1f
	adds r3, r7, #0
	blx FUN_020E1F1C
	movs r3, #2
	adds r2, r0, #0
	lsls r3, r3, #0xa
	adds r3, r2, r3
	ldr r2, _021D33D8 @ =0x00000000
	ldr r0, [r4, #0x28]
	adcs r1, r2
	lsrs r2, r3, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	adds r0, r0, r2
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #4]
	asrs r1, r0, #0x1f
	adds r3, r7, #0
	blx FUN_020E1F1C
	movs r2, #2
	adds r3, r0, #0
	adds r0, r6, #0
	adds r7, r1, #0
	adds r0, #0xc8
	lsls r2, r2, #0xa
	movs r1, #0xc
	adds r3, r3, r2
	ldr r2, _021D33D8 @ =0x00000000
	ldr r4, [r4, #0x24]
	adcs r7, r2
	lsls r2, r7, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r2
	adds r2, r4, r3
	ldr r0, [r0]
	asrs r2, r2, #4
	bl FUN_02007DEC
	adds r0, r6, #0
	adds r0, #0xc8
	ldr r2, [sp]
	ldr r0, [r0]
	movs r1, #0xd
	asrs r2, r2, #4
	bl FUN_02007DEC
	movs r0, #1
	ldr r1, [r5, #0xc]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	subs r0, r0, #1
	str r0, [r5, #4]
	bne _021D33D2
	adds r0, r6, #0
	adds r0, #0xc8
	movs r1, #0xc
	adds r2, r1, #0
	ldr r0, [r0]
	adds r2, #0xf4
	bl FUN_02007DEC
	adds r6, #0xc8
	movs r1, #0xd
	adds r2, r1, #0
	ldr r0, [r6]
	adds r2, #0xf3
	bl FUN_02007DEC
	adds r0, r5, #0
	bl ov79_021D29E4
_021D33D2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D33D8: .4byte 0x00000000
	thumb_func_end ov79_021D3324

	thumb_func_start ov79_021D33DC
ov79_021D33DC: @ 0x021D33DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	ldr r4, [r6, #0x14]
	adds r7, r0, #0
	movs r0, #8
	adds r5, r4, #0
	str r0, [r6, #4]
	lsls r1, r0, #0x10
	movs r0, #7
	adds r5, #0x68
	str r1, [r4, #0x68]
	lsls r0, r0, #0x10
	str r0, [r5, #4]
	movs r0, #6
	str r1, [r5, #0xc]
	lsls r0, r0, #0x10
	str r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0xc
	adds r1, r5, #0
	add r2, sp, #0xc
	blx FUN_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D3424
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D3432
_021D3424:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D3432:
	blx FUN_020E1740
	adds r1, r5, #0
	adds r3, r0, #0
	add r0, sp, #0
	adds r1, #0x18
	add r2, sp, #0xc
	bl ov79_021D2268
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D345C
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D346A
_021D345C:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D346A:
	blx FUN_020E1740
	adds r1, r0, #0
	movs r0, #0x2d
	lsls r0, r0, #0xe
	blx FUN_020BCFD0
	str r0, [r5, #0x48]
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r2, [r5]
	ldr r0, [r0]
	movs r1, #0
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	adds r4, #0xc8
	ldr r2, [r5, #4]
	ldr r0, [r4]
	movs r1, #1
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	ldr r1, _021D34A4 @ =ov79_021D34A8
	adds r0, r7, #0
	bl FUN_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D34A4: .4byte ov79_021D34A8
	thumb_func_end ov79_021D33DC

	thumb_func_start ov79_021D34A8
ov79_021D34A8: @ 0x021D34A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	ldr r5, [r6, #0x14]
	ldr r7, [r6, #0xc]
	adds r4, r5, #0
	str r0, [sp]
	asrs r0, r7, #0x1f
	str r0, [sp, #8]
	adds r4, #0x68
	ldr r0, [r4, #0x1c]
	ldr r3, [sp, #8]
	asrs r1, r0, #0x1f
	adds r2, r7, #0
	blx FUN_020E1F1C
	movs r3, #2
	adds r2, r0, #0
	lsls r3, r3, #0xa
	adds r3, r2, r3
	ldr r2, _021D35A4 @ =0x00000000
	ldr r0, [r4, #4]
	adcs r1, r2
	lsrs r2, r3, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	adds r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r3, [sp, #8]
	asrs r1, r0, #0x1f
	adds r2, r7, #0
	blx FUN_020E1F1C
	mov ip, r0
	ldr r2, [r5, #0x68]
	adds r7, r1, #0
	str r2, [sp, #0xc]
	movs r2, #2
	adds r0, r5, #0
	adds r0, #0xc8
	movs r1, #0
	mov r3, ip
	lsls r2, r2, #0xa
	adds r2, r3, r2
	adcs r7, r1
	lsls r3, r7, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r3
	ldr r3, [sp, #0xc]
	ldr r0, [r0]
	adds r2, r3, r2
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r2, [sp, #4]
	ldr r0, [r0]
	movs r1, #1
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	ldr r0, [r4, #0x48]
	ldr r2, [r6, #0xc]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	lsls r0, r1, #4
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r2, _021D35A8 @ =0xFFFFA000
	asrs r1, r0, #0x1f
	asrs r3, r2, #0xf
	blx FUN_020E1F1C
	adds r4, r1, #0
	movs r1, #4
	adds r3, r0, #0
	adds r0, r5, #0
	adds r0, #0xc8
	movs r7, #0
	lsls r2, r1, #9
	adds r2, r3, r2
	adcs r4, r7
	lsls r3, r4, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r3
	ldr r0, [r0]
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	adds r2, r6, #0
	adds r2, #0xc
	movs r0, #1
	ldr r1, [r2]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r2]
	ldr r0, [r6, #4]
	subs r0, r0, #1
	str r0, [r6, #4]
	bne _021D359E
	adds r5, #0xc8
	ldr r0, [r5]
	movs r1, #4
	adds r2, r7, #0
	bl FUN_02007DEC
	ldr r0, [sp]
	ldr r1, _021D35AC @ =ov79_021D35B0
	bl FUN_0201CECC
_021D359E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D35A4: .4byte 0x00000000
_021D35A8: .4byte 0xFFFFA000
_021D35AC: .4byte ov79_021D35B0
	thumb_func_end ov79_021D34A8

	thumb_func_start ov79_021D35B0
ov79_021D35B0: @ 0x021D35B0
	push {r3, lr}
	ldr r3, [r1, #4]
	adds r2, r3, #1
	str r2, [r1, #4]
	cmp r3, #4
	blt _021D35E0
	ldr r2, [r1, #0x14]
	ldr r2, [r2, #8]
	cmp r2, #0
	beq _021D35CA
	cmp r2, #1
	beq _021D35D2
	b _021D35DA
_021D35CA:
	ldr r1, _021D35E4 @ =ov79_021D35EC
	bl FUN_0201CECC
	pop {r3, pc}
_021D35D2:
	ldr r1, _021D35E8 @ =ov79_021D36CC
	bl FUN_0201CECC
	pop {r3, pc}
_021D35DA:
	adds r0, r1, #0
	bl ov79_021D29E4
_021D35E0:
	pop {r3, pc}
	nop
_021D35E4: .4byte ov79_021D35EC
_021D35E8: .4byte ov79_021D36CC
	thumb_func_end ov79_021D35B0

	thumb_func_start ov79_021D35EC
ov79_021D35EC: @ 0x021D35EC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0
	adds r0, #0x68
	movs r2, #0x5c
	blx FUN_020C4CF4
	movs r0, #3
	str r0, [r4, #4]
	ldr r1, _021D360C @ =ov79_021D3610
	adds r0, r5, #0
	bl FUN_0201CECC
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D360C: .4byte ov79_021D3610
	thumb_func_end ov79_021D35EC

	thumb_func_start ov79_021D3610
ov79_021D3610: @ 0x021D3610
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r7, [r5, #0x14]
	adds r4, r7, #0
	adds r4, #0x68
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	subs r0, r0, #4
	adds r1, r0, #0
	muls r1, r0, r1
	movs r0, #0x10
	subs r0, r0, r1
	rsbs r0, r0, #0
	cmp r0, #0
	ble _021D3642
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D3650
_021D3642:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D3650:
	blx FUN_020E1740
	ldr r2, _021D36C4 @ =0x00001666
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	adds r6, r1, #0
	movs r1, #4
	adds r3, r0, #0
	adds r0, r7, #0
	adds r0, #0xc8
	lsls r2, r1, #9
	adds r3, r3, r2
	ldr r2, _021D36C8 @ =0x00000000
	ldr r0, [r0]
	adcs r6, r2
	lsls r2, r6, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r2
	asrs r2, r3, #0xc
	bl FUN_02007DEC
	adds r1, r4, #0
	movs r0, #0
	adds r1, #0x52
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r1, [r1]
	adds r2, r1, #1
	adds r1, r4, #0
	adds r1, #0x50
	strh r2, [r1]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r1, [r1]
	cmp r1, #8
	bls _021D36A8
	adds r4, #0x50
	strh r0, [r4]
	ldr r0, [r5, #4]
	subs r0, r0, #1
	str r0, [r5, #4]
_021D36A8:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021D36C0
	adds r7, #0xc8
	ldr r0, [r7]
	movs r1, #4
	movs r2, #0
	bl FUN_02007DEC
	adds r0, r5, #0
	bl ov79_021D29E4
_021D36C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D36C4: .4byte 0x00001666
_021D36C8: .4byte 0x00000000
	thumb_func_end ov79_021D3610

	thumb_func_start ov79_021D36CC
ov79_021D36CC: @ 0x021D36CC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0
	adds r0, #0x68
	movs r2, #0x5c
	blx FUN_020C4CF4
	movs r0, #0x20
	str r0, [r4, #4]
	ldr r1, _021D36EC @ =ov79_021D36F0
	adds r0, r5, #0
	bl FUN_0201CECC
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D36EC: .4byte ov79_021D36F0
	thumb_func_end ov79_021D36CC

	thumb_func_start ov79_021D36F0
ov79_021D36F0: @ 0x021D36F0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r6, [r5, #0x14]
	adds r4, r6, #0
	adds r4, #0x68
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	bl FUN_0201D250
	asrs r1, r0, #0x1f
	lsrs r2, r0, #0x13
	lsls r1, r1, #0xd
	orrs r1, r2
	movs r2, #2
	lsls r3, r0, #0xd
	movs r0, #0
	lsls r2, r2, #0xa
	adds r2, r3, r2
	adcs r1, r0
	lsls r1, r1, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r1
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r3, [r1]
	ldr r1, _021D3764 @ =0x00000167
	cmp r3, r1
	bls _021D372C
	b _021D3734
_021D372C:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #0x5a
_021D3734:
	adds r4, #0x50
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #3
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	ldr r0, [r5, #4]
	subs r0, r0, #1
	str r0, [r5, #4]
	bne _021D3760
	adds r6, #0xc8
	ldr r0, [r6]
	movs r1, #3
	movs r2, #0
	bl FUN_02007DEC
	adds r0, r5, #0
	bl ov79_021D29E4
_021D3760:
	pop {r4, r5, r6, pc}
	nop
_021D3764: .4byte 0x00000167
	thumb_func_end ov79_021D36F0

	thumb_func_start ov79_021D3768
ov79_021D3768: @ 0x021D3768
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r4, r2, #0
	movs r1, #0
	movs r2, #0x1c
	adds r5, r0, #0
	blx FUN_020C4CF4
	blx FUN_020B28CC
	blx FUN_020BF9AC
	blx FUN_020BFB4C
	ldr r0, _021D3804 @ =0x04000060
	ldr r1, _021D3808 @ =0xFFFFCFFD
	ldrh r2, [r0]
	ldr r3, _021D380C @ =0x0000CFFB
	ands r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	ands r2, r3
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r6, [r0]
	adds r1, r1, #2
	subs r3, #0x1c
	ands r6, r2
	movs r2, #8
	orrs r2, r6
	strh r2, [r0]
	ldrh r2, [r0]
	ands r2, r1
	movs r1, #0x10
	orrs r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ands r1, r3
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r0, #0
	ldr r2, _021D3810 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _021D3814 @ =0x04000540
	movs r0, #2
	str r0, [r1]
	ldr r0, _021D3818 @ =0xBFFF0000
	str r0, [r1, #0x40]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov79_021D3870
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov79_021D38D0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r1, _021D381C @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	orrs r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3804: .4byte 0x04000060
_021D3808: .4byte 0xFFFFCFFD
_021D380C: .4byte 0x0000CFFB
_021D3810: .4byte 0x00007FFF
_021D3814: .4byte 0x04000540
_021D3818: .4byte 0xBFFF0000
_021D381C: .4byte 0x04000008
	thumb_func_end ov79_021D3768

	thumb_func_start ov79_021D3820
ov79_021D3820: @ 0x021D3820
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	bl FUN_020203EC
	ldr r2, _021D3854 @ =0x04000440
	movs r3, #0
	adds r1, r2, #0
	str r3, [r2]
	adds r1, #0x14
	str r3, [r1]
	movs r0, #2
	str r0, [r2]
	str r3, [r1]
	blx FUN_020AF480
	blx FUN_020A73C0
	ldr r0, [r4, #4]
	bl FUN_02007768
	ldr r0, _021D3858 @ =0x04000540
	movs r1, #1
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_021D3854: .4byte 0x04000440
_021D3858: .4byte 0x04000540
	thumb_func_end ov79_021D3820

	thumb_func_start ov79_021D385C
ov79_021D385C: @ 0x021D385C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020203B8
	ldr r0, [r4, #4]
	bl FUN_02007B6C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov79_021D385C

	thumb_func_start ov79_021D3870
ov79_021D3870: @ 0x021D3870
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, _021D38C8 @ =0x021D3CEC
	adds r4, r0, #0
	adds r2, r1, #0
	ldm r5!, {r0, r1}
	add r3, sp, #0x10
	stm r3!, {r0, r1}
	ldr r0, [r5]
	add r1, sp, #8
	str r0, [r3]
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	adds r0, r2, #0
	bl FUN_020203AC
	str r0, [r4]
	movs r1, #1
	str r1, [sp]
	ldr r0, [r4]
	ldr r3, _021D38CC @ =0x000005C1
	str r0, [sp, #4]
	add r0, sp, #0x10
	lsls r1, r1, #0x10
	add r2, sp, #8
	bl FUN_02020738
	movs r1, #0x19
	ldr r2, [r4]
	movs r0, #0
	lsls r1, r1, #0xe
	bl FUN_020206BC
	ldr r0, [r4]
	bl FUN_020206B0
	ldr r0, [r4]
	bl FUN_020203D4
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_021D38C8: .4byte 0x021D3CEC
_021D38CC: .4byte 0x000005C1
	thumb_func_end ov79_021D3870

	thumb_func_start ov79_021D38D0
ov79_021D38D0: @ 0x021D38D0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r0, r2, #0
	adds r4, r1, #0
	bl FUN_0200762C
	str r0, [r5, #4]
	ldr r1, [r4]
	add r0, sp, #0x10
	movs r2, #2
	bl FUN_02075EF4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r1, sp, #0x10
	movs r2, #0x80
	movs r3, #0x60
	bl FUN_02007C34
	ldrb r2, [r4, #8]
	movs r1, #0x23
	adds r6, r0, #0
	bl FUN_02007DEC
	str r6, [r5, #0x18]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov79_021D38D0
	@ 0x021D3910
