
	thumb_func_start ov111_021D0D80
ov111_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	bl ov111_021D1D30
	movs r2, #0x12
	movs r0, #3
	movs r1, #0x73
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	ldr r1, _021D0E2C @ =0x00009A04
	adds r0, r5, #0
	movs r2, #0x73
	bl FUN_0200681C
	ldr r2, _021D0E2C @ =0x00009A04
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x73
	bl FUN_02018340
	str r0, [r4, #0x58]
	adds r0, r5, #0
	str r5, [r4]
	bl FUN_02006840
	adds r5, r0, #0
	movs r1, #0x5a
	adds r2, r5, #0
	ldr r0, [r5]
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldrb r0, [r5, #4]
	adds r2, #0x14
	strb r0, [r4, #9]
	movs r0, #0xdd
	lsls r0, r0, #2
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	bl FUN_02025E44
	movs r1, #0x59
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r1, r5, #0
	movs r0, #0xde
	adds r1, #8
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r5, #0xe
	adds r0, r0, #4
	str r5, [r4, r0]
	adds r0, r4, #0
	bl ov111_021D27BC
	movs r1, #0
	movs r3, #0xde
	lsls r3, r3, #2
	adds r2, r1, #0
	adds r0, r1, #0
	adds r5, r3, #4
_021D0E00:
	ldr r6, [r4, r3]
	adds r1, r1, #1
	strh r0, [r6, r2]
	ldr r6, [r4, r5]
	strh r0, [r6, r2]
	adds r2, r2, #2
	cmp r1, #3
	blt _021D0E00
	ldr r1, _021D0E30 @ =0x000003A5
	strb r0, [r4, r1]
	adds r0, r4, #0
	bl ov111_021D1D68
	movs r1, #0
	movs r0, #0x44
	adds r2, r1, #0
	str r1, [r7]
	bl FUN_02004550
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D0E2C: .4byte 0x00009A04
_021D0E30: .4byte 0x000003A5
	thumb_func_end ov111_021D0D80

	thumb_func_start ov111_021D0E34
ov111_021D0E34: @ 0x021D0E34
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #7
	bhi _021D0F32
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0E50: @ jump table
	.2byte _021D0E60 - _021D0E50 - 2 @ case 0
	.2byte _021D0E74 - _021D0E50 - 2 @ case 1
	.2byte _021D0E88 - _021D0E50 - 2 @ case 2
	.2byte _021D0E9C - _021D0E50 - 2 @ case 3
	.2byte _021D0ED8 - _021D0E50 - 2 @ case 4
	.2byte _021D0EEC - _021D0E50 - 2 @ case 5
	.2byte _021D0F12 - _021D0E50 - 2 @ case 6
	.2byte _021D0F26 - _021D0E50 - 2 @ case 7
_021D0E60:
	bl ov111_021D0F7C
	cmp r0, #1
	bne _021D0F32
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov111_021D26E4
	b _021D0F32
_021D0E74:
	bl ov111_021D0FC8
	cmp r0, #1
	bne _021D0F32
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov111_021D26E4
	b _021D0F32
_021D0E88:
	bl ov111_021D10B8
	cmp r0, #1
	bne _021D0F32
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov111_021D26E4
	b _021D0F32
_021D0E9C:
	bl ov111_021D116C
	cmp r0, #1
	bne _021D0F32
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	blo _021D0ECC
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl ov111_021D1BEC
	adds r0, r4, #0
	bl ov111_021D1AF4
	adds r0, r4, #0
	bl ov111_021D1B44
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov111_021D26E4
	b _021D0F32
_021D0ECC:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov111_021D26E4
	b _021D0F32
_021D0ED8:
	bl ov111_021D1284
	cmp r0, #1
	bne _021D0F32
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	bl ov111_021D26E4
	b _021D0F32
_021D0EEC:
	bl ov111_021D1508
	cmp r0, #1
	bne _021D0F32
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	blo _021D0F06
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #7
	bl ov111_021D26E4
	b _021D0F32
_021D0F06:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	bl ov111_021D26E4
	b _021D0F32
_021D0F12:
	bl ov111_021D1980
	cmp r0, #1
	bne _021D0F32
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov111_021D26E4
	b _021D0F32
_021D0F26:
	bl ov111_021D1A88
	cmp r0, #1
	bne _021D0F32
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D0F32:
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020219F8
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D0E34

	thumb_func_start ov111_021D0F40
ov111_021D0F40: @ 0x021D0F40
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl FUN_0201E530
	movs r0, #0xdd
	lsls r0, r0, #2
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, r0]
	strh r1, [r0]
	bl FUN_0201DC3C
	adds r0, r4, #0
	bl ov111_021D1C0C
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x73
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov111_021D0F40

	thumb_func_start ov111_021D0F7C
ov111_021D0F7C: @ 0x021D0F7C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D0F8E
	cmp r0, #1
	beq _021D0FAE
	b _021D0FC0
_021D0F8E:
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _021D0FC0
_021D0FAE:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0FC0
	movs r0, #0
	strb r0, [r4, #0xe]
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_021D0FC0:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov111_021D0F7C

	thumb_func_start ov111_021D0FC8
ov111_021D0FC8: @ 0x021D0FC8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _021D0FDC
	cmp r0, #1
	beq _021D104C
	cmp r0, #2
	beq _021D109E
	b _021D10A6
_021D0FDC:
	movs r0, #0xff
	mvns r0, r0
	ldr r4, _021D10AC @ =0x021D362C
	strh r0, [r6, #0x10]
	movs r7, #0
	adds r5, r6, #0
_021D0FE8:
	movs r1, #0x10
	movs r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r4, r2]
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r1, r2
	movs r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r5, r0]
	bl ov111_021D3474
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r7, #0
	ldr r0, [r5, r0]
	adds r1, #0x14
	bl ov111_021D3468
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r7, #4
	blt _021D0FE8
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	movs r0, #0x53
	lsls r0, r0, #2
	adds r0, r6, r0
	bl ov111_021D35C0
	adds r0, r6, #0
	bl ov111_021D24D4
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #3
	strh r0, [r6, #0x12]
	ldr r0, _021D10B0 @ =0x0000054F
	bl FUN_02005748
	movs r0, #1
	strb r0, [r6, #8]
	b _021D10A6
_021D104C:
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	adds r0, #0x20
	strh r0, [r6, #0x10]
	movs r0, #0x12
	ldrsh r0, [r6, r0]
	lsls r2, r0, #2
	movs r0, #0xcb
	adds r3, r6, r2
	lsls r0, r0, #2
	ldr r0, [r3, r0]
	ldrsh r3, [r6, r1]
	ldr r1, _021D10AC @ =0x021D362C
	ldrsh r1, [r1, r2]
	adds r1, r3, r1
	ldr r3, _021D10B4 @ =0x021D362E
	ldrsh r2, [r3, r2]
	bl ov111_021D3474
	movs r0, #0x10
	ldrsh r0, [r6, r0]
	cmp r0, #0
	blt _021D10A6
	movs r0, #0x12
	ldrsh r0, [r6, r0]
	cmp r0, #0
	bne _021D1088
	movs r0, #2
	strb r0, [r6, #8]
	b _021D10A6
_021D1088:
	ldr r0, _021D10B0 @ =0x0000054F
	bl FUN_02005748
	movs r0, #0x12
	ldrsh r0, [r6, r0]
	subs r0, r0, #1
	strh r0, [r6, #0x12]
	movs r0, #0xff
	mvns r0, r0
	strh r0, [r6, #0x10]
	b _021D10A6
_021D109E:
	movs r0, #0
	strh r0, [r6, #0x10]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D10A6:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D10AC: .4byte 0x021D362C
_021D10B0: .4byte 0x0000054F
_021D10B4: .4byte 0x021D362E
	thumb_func_end ov111_021D0FC8

	thumb_func_start ov111_021D10B8
ov111_021D10B8: @ 0x021D10B8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _021D10CE
	cmp r0, #1
	beq _021D10E0
	cmp r0, #2
	beq _021D1158
	b _021D115E
_021D10CE:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	movs r0, #1
	strb r0, [r5, #8]
	b _021D115E
_021D10E0:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bne _021D10FC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0xd
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov111_021D345C
	b _021D1100
_021D10FC:
	subs r0, r0, #1
	strb r0, [r5, #0xf]
_021D1100:
	ldr r0, _021D1164 @ =0x021D364C
	bl FUN_02022644
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D115E
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0xd
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov111_021D345C
	ldr r0, _021D1168 @ =0x000005E4
	bl FUN_02005748
	ldrb r0, [r5, #0xe]
	add r1, sp, #0
	adds r0, r5, r0
	strb r4, [r0, #0x15]
	ldrb r0, [r5, #0xe]
	adds r0, r0, #1
	strb r0, [r5, #0xe]
	add r0, sp, #4
	bl FUN_020227A4
	movs r0, #0x53
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	strb r0, [r5, #8]
	b _021D115E
_021D1158:
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D115E:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1164: .4byte 0x021D364C
_021D1168: .4byte 0x000005E4
	thumb_func_end ov111_021D10B8

	thumb_func_start ov111_021D116C
ov111_021D116C: @ 0x021D116C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	subs r1, r1, #1
	adds r1, r4, r1
	ldrb r7, [r1, #0x15]
	ldrb r1, [r4, #8]
	cmp r1, #3
	bhi _021D1278
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D118C: @ jump table
	.2byte _021D1194 - _021D118C - 2 @ case 0
	.2byte _021D11C0 - _021D118C - 2 @ case 1
	.2byte _021D121C - _021D118C - 2 @ case 2
	.2byte _021D126E - _021D118C - 2 @ case 3
_021D1194:
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	movs r1, #0
	movs r2, #0xea
	strh r1, [r4, #0x10]
	lsls r2, r2, #2
	ldrb r3, [r4, r2]
	movs r0, #0xfe
	bics r3, r0
	lsls r0, r7, #2
	strb r3, [r4, r2]
	adds r0, r4, r0
	subs r2, #0x7c
	ldr r0, [r0, r2]
	bl ov111_021D3468
	movs r0, #1
	strb r0, [r4, #8]
	b _021D1278
_021D11C0:
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	bl ov111_021D2868
	movs r0, #1
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	adds r1, r4, #0
	adds r2, r2, r0
	str r2, [r4, #0x20]
	ldr r2, [r4, #0x24]
	adds r1, #0x1c
	adds r0, r2, r0
	str r0, [r4, #0x24]
	movs r0, #0x10
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r7, #2
	adds r2, r4, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	bl ov111_021D34F4
	movs r0, #6
	ldr r1, [r4, #0x1c]
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _021D1278
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, _021D1280 @ =0x0000054F
	bl FUN_02005748
	movs r0, #2
	strb r0, [r4, #8]
	b _021D1278
_021D121C:
	movs r0, #0x10
	ldrsh r0, [r4, r0]
	movs r6, #0
	adds r5, r4, #0
	adds r0, #0x10
	strh r0, [r4, #0x10]
_021D1228:
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #4
	add r2, sp, #0
	bl ov111_021D349C
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	ldr r0, [r5, r0]
	ldr r2, [sp]
	adds r1, #0x10
	bl ov111_021D3474
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #4
	blt _021D1228
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	adds r0, #0xf0
	cmp r1, r0
	blt _021D1278
	lsls r0, r7, #2
	adds r1, r4, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov111_021D34E0
	movs r0, #3
	strb r0, [r4, #8]
	b _021D1278
_021D126E:
	movs r0, #0
	strh r0, [r4, #0x10]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1278:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1280: .4byte 0x0000054F
	thumb_func_end ov111_021D116C

	thumb_func_start ov111_021D1284
ov111_021D1284: @ 0x021D1284
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #3
	bls _021D1290
	b _021D14EE
_021D1290:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D129C: @ jump table
	.2byte _021D12A4 - _021D129C - 2 @ case 0
	.2byte _021D1362 - _021D129C - 2 @ case 1
	.2byte _021D1450 - _021D129C - 2 @ case 2
	.2byte _021D14E4 - _021D129C - 2 @ case 3
_021D12A4:
	bl ov111_021D2EB4
	movs r1, #0
	movs r3, #0xe5
	str r1, [sp]
	lsls r3, r3, #2
	ldr r2, [r4, r3]
	subs r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x58]
	ldr r3, [r3, #0x10]
	bl FUN_0201958C
	ldr r0, [r4, #0x58]
	movs r1, #0
	bl FUN_02019448
	movs r0, #1
	lsls r0, r0, #8
	strh r0, [r4, #0x12]
	movs r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	movs r1, #6
	movs r2, #0
	bl FUN_02019184
	movs r3, #0x12
	movs r1, #0
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	adds r2, r1, #0
	bl FUN_02019184
	movs r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	movs r1, #1
	movs r2, #0
	bl FUN_02019184
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0xff
	mvns r0, r0
	strh r0, [r4, #0x10]
	ldrb r1, [r4, #0xe]
	movs r0, #0
	movs r2, #0x96
	adds r1, r4, r1
	strb r0, [r1, #0x19]
	ldr r1, _021D14F4 @ =0x00000402
	adds r5, r0, #0
	lsls r2, r2, #8
_021D1324:
	adds r3, r4, r0
	adds r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, r2
	blt _021D1324
	ldr r0, _021D14F8 @ =0x000003A9
	strb r5, [r4, r0]
	adds r0, r4, #0
	bl ov111_021D27BC
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r1, r4, r1
	ldrb r1, [r1, #0x19]
	bl ov111_021D27AC
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r1, r4, r1
	ldrb r1, [r1, #0x19]
	bl ov111_021D27D4
	adds r0, r4, #0
	bl ov111_021D2940
	adds r0, r4, #0
	bl ov111_021D295C
	movs r0, #1
	strb r0, [r4, #8]
	b _021D14EE
_021D1362:
	movs r7, #0
	movs r6, #0x1a
	adds r5, r4, #0
_021D1368:
	movs r1, #0x10
	movs r0, #0xbe
	ldrsh r1, [r4, r1]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, #0x3c
	adds r2, r6, #0
	bl ov111_021D3474
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov111_021D345C
	adds r7, r7, #1
	adds r6, #0x2a
	adds r5, r5, #4
	cmp r7, #4
	blt _021D1368
	movs r7, #0xd1
	movs r6, #0
	adds r5, r4, #0
	lsls r7, r7, #2
_021D1398:
	ldr r0, [r5, r7]
	movs r1, #1
	bl ov111_021D3500
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #3
	blt _021D1398
	ldr r0, _021D14FC @ =0x000003A5
	movs r7, #0
	strb r7, [r4, r0]
	adds r1, r0, #3
	ldrb r2, [r4, r1]
	movs r1, #1
	ldr r6, _021D1500 @ =0x021D3770
	bics r2, r1
	adds r1, r0, #3
	strb r2, [r4, r1]
	movs r2, #0xb1
	adds r1, r0, #5
	strb r2, [r4, r1]
	adds r1, r0, #6
	movs r2, #0xb2
	strb r2, [r4, r1]
	movs r1, #0xb3
	adds r0, r0, #7
	strb r1, [r4, r0]
	adds r5, r4, #0
_021D13D0:
	movs r1, #0x10
	movs r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r6, r2]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r2
	movs r2, #2
	ldrsh r2, [r6, r2]
	ldr r0, [r5, r0]
	bl ov111_021D3474
	movs r0, #0xc2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov111_021D345C
	movs r1, #0x36
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r2, r4, r7
	lsls r1, r1, #4
	ldrb r1, [r2, r1]
	ldr r0, [r5, r0]
	bl ov111_021D34C4
	adds r7, r7, #1
	adds r6, r6, #4
	adds r5, r5, #4
	cmp r7, #9
	blt _021D13D0
	movs r0, #0x18
	str r0, [sp]
	ldrb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r4, r2
	ldrb r2, [r2, #0x15]
	movs r3, #0x20
	adds r2, r2, #4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl ov111_021D28E8
	movs r0, #0x18
	str r0, [sp]
	ldrb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #6
	adds r2, r4, r2
	ldrb r2, [r2, #0x15]
	movs r3, #0x20
	adds r2, r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl ov111_021D28E8
	ldr r0, _021D1504 @ =0x0000054F
	bl FUN_02005748
	movs r0, #2
	strb r0, [r4, #8]
	b _021D14EE
_021D1450:
	movs r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	movs r1, #6
	movs r2, #0
	bl FUN_02019184
	movs r3, #0x12
	movs r1, #0
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	adds r2, r1, #0
	bl FUN_02019184
	movs r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x58]
	movs r1, #1
	movs r2, #0
	bl FUN_02019184
	movs r0, #0x12
	ldrsh r0, [r4, r0]
	subs r0, #0x10
	strh r0, [r4, #0x12]
	movs r0, #0x10
	ldrsh r0, [r4, r0]
	cmp r0, #0
	blt _021D1490
	movs r0, #3
	strb r0, [r4, #8]
	b _021D14DA
_021D1490:
	movs r7, #0
	movs r6, #0x1a
	adds r5, r4, #0
_021D1496:
	movs r1, #0x10
	movs r0, #0xbe
	ldrsh r1, [r4, r1]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, #0x3c
	adds r2, r6, #0
	bl ov111_021D3474
	adds r7, r7, #1
	adds r6, #0x2a
	adds r5, r5, #4
	cmp r7, #4
	blt _021D1496
	ldr r5, _021D1500 @ =0x021D3770
	movs r7, #0
	adds r6, r4, #0
_021D14B8:
	movs r1, #0x10
	movs r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r5, r2]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r2
	movs r2, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r6, r0]
	bl ov111_021D3474
	adds r7, r7, #1
	adds r5, r5, #4
	adds r6, r6, #4
	cmp r7, #9
	blt _021D14B8
_021D14DA:
	movs r0, #0x10
	ldrsh r0, [r4, r0]
	adds r0, #0x10
	strh r0, [r4, #0x10]
	b _021D14EE
_021D14E4:
	movs r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D14EE:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D14F4: .4byte 0x00000402
_021D14F8: .4byte 0x000003A9
_021D14FC: .4byte 0x000003A5
_021D1500: .4byte 0x021D3770
_021D1504: .4byte 0x0000054F
	thumb_func_end ov111_021D1284

	thumb_func_start ov111_021D1508
ov111_021D1508: @ 0x021D1508
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0xb
	bls _021D1514
	b _021D197C
_021D1514:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D1520: @ jump table
	.2byte _021D1538 - _021D1520 - 2 @ case 0
	.2byte _021D15C6 - _021D1520 - 2 @ case 1
	.2byte _021D15DC - _021D1520 - 2 @ case 2
	.2byte _021D160C - _021D1520 - 2 @ case 3
	.2byte _021D17C2 - _021D1520 - 2 @ case 4
	.2byte _021D17DE - _021D1520 - 2 @ case 5
	.2byte _021D17F2 - _021D1520 - 2 @ case 6
	.2byte _021D1842 - _021D1520 - 2 @ case 7
	.2byte _021D186C - _021D1520 - 2 @ case 8
	.2byte _021D189C - _021D1520 - 2 @ case 9
	.2byte _021D1906 - _021D1520 - 2 @ case 10
	.2byte _021D1970 - _021D1520 - 2 @ case 11
_021D1538:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bne _021D156A
	movs r0, #0x4b
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201ACF4
	adds r0, r4, #0
	bl ov111_021D263C
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x58
	movs r2, #0xa0
	bl ov111_021D3474
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D34C4
	b _021D157A
_021D156A:
	movs r0, #0x4f
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201ACF4
	adds r0, r4, #0
	bl ov111_021D2604
_021D157A:
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	movs r0, #0xd
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov111_021D345C
	adds r0, r4, #0
	bl ov111_021D2518
	movs r5, #0
_021D1592:
	lsls r1, r5, #0x18
	adds r0, r4, #0
	lsrs r1, r1, #0x18
	bl ov111_021D2674
	adds r5, r5, #1
	cmp r5, #4
	blt _021D1592
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov111_021D345C
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D350C
	ldr r0, _021D187C @ =0x00000551
	bl FUN_02005748
	movs r0, #1
	strb r0, [r4, #8]
	b _021D197C
_021D15C6:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	strb r0, [r4, #8]
	b _021D197C
_021D15DC:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D1606
	movs r0, #0xd
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D345C
	adds r0, r4, #0
	adds r0, #0xfc
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0xfc
	bl FUN_0201A9A4
	movs r0, #3
	strb r0, [r4, #8]
	b _021D197C
_021D1606:
	subs r0, r0, #1
	strb r0, [r4, #0xf]
	b _021D197C
_021D160C:
	movs r0, #0xf
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r1, #4
	movs r2, #2
	bl FUN_0201E564
	ldr r0, _021D1880 @ =0x021D3794
	bl FUN_02022644
	adds r5, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	beq _021D1718
	adds r0, r4, #0
	bl ov111_021D2918
	cmp r0, #3
	bhs _021D163E
	movs r0, #0xe7
	movs r2, #1
	adds r1, r4, r5
	lsls r0, r0, #2
	strb r2, [r1, r0]
_021D163E:
	movs r0, #0xe7
	adds r1, r4, r5
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _021D1672
	adds r0, r4, #0
	bl ov111_021D29D8
	lsls r1, r5, #0x18
	adds r0, r4, #0
	lsrs r1, r1, #0x18
	bl ov111_021D2A68
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov111_021D297C
	ldr r0, _021D1884 @ =0x0000054E
	bl FUN_020057D4
	cmp r0, #0
	bne _021D1672
	ldr r0, _021D1884 @ =0x0000054E
	bl FUN_02005748
_021D1672:
	adds r0, r4, #0
	bl ov111_021D2BBC
	cmp r0, #1
	bne _021D16EA
	ldr r0, _021D1884 @ =0x0000054E
	movs r1, #0
	bl FUN_020057A4
	movs r0, #0xd
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov111_021D345C
	ldr r1, _021D1888 @ =0x000003A7
	ldrb r0, [r4, r1]
	lsls r0, r0, #1
	adds r2, r4, r0
	adds r0, r1, #0
	subs r0, #0x3d
	ldrh r3, [r2, r0]
	adds r0, r1, #0
	subs r0, #0x2f
	ldr r2, [r4, r0]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	strh r3, [r2, r0]
	ldrb r0, [r4, r1]
	lsls r0, r0, #1
	adds r2, r4, r0
	adds r0, r1, #0
	subs r0, #0x3d
	ldrh r0, [r2, r0]
	cmp r0, #0x5c
	bne _021D16BE
	movs r2, #1
	b _021D16C0
_021D16BE:
	movs r2, #3
_021D16C0:
	ldrb r0, [r4, #0xe]
	subs r1, #0x2b
	ldr r1, [r4, r1]
	lsls r0, r0, #1
	strh r2, [r1, r0]
	adds r0, r4, #0
	bl ov111_021D2D14
	cmp r0, #1
	bne _021D16D8
	movs r0, #0x1e
	b _021D16DA
_021D16D8:
	movs r0, #0
_021D16DA:
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl ov111_021D255C
	movs r0, #4
	strb r0, [r4, #8]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D16EA:
	ldr r0, _021D188C @ =0x000003A9
	ldrb r0, [r4, r0]
	cmp r0, #3
	blo _021D1720
	ldr r0, _021D1884 @ =0x0000054E
	movs r1, #0
	bl FUN_020057A4
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0xd
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov111_021D345C
	adds r0, r4, #0
	bl ov111_021D25BC
	movs r0, #7
	strb r0, [r4, #8]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D1718:
	ldr r0, _021D1884 @ =0x0000054E
	movs r1, #0
	bl FUN_020057A4
_021D1720:
	movs r0, #0xea
	lsls r0, r0, #2
	ldrb r0, [r4, r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _021D1734
	adds r0, r4, #0
	bl ov111_021D2B20
_021D1734:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bne _021D177E
	ldr r0, _021D1890 @ =0x021D3610
	bl FUN_02022664
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _021D1800
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov111_021D350C
	adds r0, r4, #0
	bl ov111_021D2494
	ldr r0, _021D1894 @ =0x000005E4
	bl FUN_02005748
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D34C4
	adds r0, r4, #0
	bl ov111_021D1F70
	adds r0, r4, #0
	bl ov111_021D1F84
	movs r0, #0xa
	strb r0, [r4, #8]
	b _021D197C
_021D177E:
	ldr r0, _021D1898 @ =0x021D3618
	bl FUN_02022664
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _021D1800
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov111_021D350C
	adds r0, r4, #0
	bl ov111_021D2494
	ldr r0, _021D1894 @ =0x000005E4
	bl FUN_02005748
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov111_021D34C4
	adds r0, r4, #0
	bl ov111_021D1F70
	adds r0, r4, #0
	bl ov111_021D1F84
	movs r0, #9
	strb r0, [r4, #8]
	b _021D197C
_021D17C2:
	ldrb r1, [r4, #0xf]
	cmp r1, #0
	bne _021D17D8
	movs r1, #0
	bl ov111_021D2D60
	cmp r0, #0
	bne _021D1800
	movs r0, #5
	strb r0, [r4, #8]
	b _021D197C
_021D17D8:
	subs r0, r1, #1
	strb r0, [r4, #0xf]
	b _021D197C
_021D17DE:
	movs r1, #1
	bl ov111_021D2D60
	cmp r0, #0
	bne _021D1800
	movs r0, #0
	strb r0, [r4, #0xf]
	movs r0, #6
	strb r0, [r4, #8]
	b _021D197C
_021D17F2:
	movs r0, #0xd7
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov111_021D353C
	cmp r0, #1
	bne _021D1802
_021D1800:
	b _021D197C
_021D1802:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D183C
	movs r7, #0x35
	movs r6, #0
	adds r5, r4, #0
	lsls r7, r7, #4
_021D1810:
	ldr r0, [r5, r7]
	movs r1, #0
	bl ov111_021D345C
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #3
	blt _021D1810
	movs r0, #0xd7
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D345C
	adds r0, r4, #0
	bl ov111_021D2E20
	adds r0, r4, #0
	bl ov111_021D2E28
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D183C:
	subs r0, r0, #1
	strb r0, [r4, #0xf]
	b _021D197C
_021D1842:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D1866
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	bl ov111_021D2E20
	adds r0, r4, #0
	bl ov111_021D2E28
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	movs r0, #8
	strb r0, [r4, #8]
	b _021D197C
_021D1866:
	subs r0, r0, #1
	strb r0, [r4, #0xf]
	b _021D197C
_021D186C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D1876
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1876:
	subs r0, r0, #1
	strb r0, [r4, #0xf]
	b _021D197C
	.align 2, 0
_021D187C: .4byte 0x00000551
_021D1880: .4byte 0x021D3794
_021D1884: .4byte 0x0000054E
_021D1888: .4byte 0x000003A7
_021D188C: .4byte 0x000003A9
_021D1890: .4byte 0x021D3610
_021D1894: .4byte 0x000005E4
_021D1898: .4byte 0x021D3618
_021D189C:
	movs r0, #0xe6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020159C0
	cmp r0, #1
	bne _021D18D8
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D350C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x5c
	bl FUN_0201ACF4
	adds r0, r4, #0
	bl ov111_021D2E20
	adds r0, r4, #0
	bl ov111_021D1FB4
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D18D8:
	cmp r0, #2
	bne _021D197C
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D350C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x5c
	bl FUN_0201ACF4
	adds r0, r4, #0
	bl ov111_021D1FB4
	movs r0, #0xb
	strb r0, [r4, #8]
	b _021D197C
_021D1906:
	movs r0, #0xe6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020159C0
	cmp r0, #1
	bne _021D1942
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D350C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x5c
	bl FUN_0201ACF4
	adds r0, r4, #0
	bl ov111_021D2E18
	adds r0, r4, #0
	bl ov111_021D1FB4
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1942:
	cmp r0, #2
	bne _021D197C
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D350C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x5c
	bl FUN_0201ACF4
	adds r0, r4, #0
	bl ov111_021D1FB4
	movs r0, #0xb
	strb r0, [r4, #8]
	b _021D197C
_021D1970:
	bl FUN_0202278C
	cmp r0, #0
	bne _021D197C
	movs r0, #3
	strb r0, [r4, #8]
_021D197C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D1508

	thumb_func_start ov111_021D1980
ov111_021D1980: @ 0x021D1980
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _021D1994
	cmp r0, #1
	beq _021D19C2
	cmp r0, #2
	beq _021D1A70
	b _021D1A7A
_021D1994:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov111_021D345C
	movs r0, #0
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	ldr r0, _021D1A80 @ =0x0000054F
	bl FUN_02005748
	movs r0, #1
	strb r0, [r5, #8]
	b _021D1A7A
_021D19C2:
	movs r3, #0x12
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x58]
	movs r1, #6
	movs r2, #0
	bl FUN_02019184
	movs r3, #0x12
	movs r1, #0
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x58]
	adds r2, r1, #0
	bl FUN_02019184
	movs r3, #0x12
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x58]
	movs r1, #1
	movs r2, #0
	bl FUN_02019184
	movs r0, #0x12
	ldrsh r0, [r5, r0]
	subs r0, #0x10
	strh r0, [r5, #0x12]
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	adds r0, #0xf0
	cmp r1, r0
	blt _021D1A04
	movs r0, #2
	strb r0, [r5, #8]
	b _021D1A66
_021D1A04:
	movs r7, #0
	movs r6, #0x1a
	adds r4, r5, #0
_021D1A0A:
	movs r1, #0x10
	movs r0, #0xbe
	ldrsh r1, [r5, r1]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, #0x3c
	adds r2, r6, #0
	bl ov111_021D3474
	adds r7, r7, #1
	adds r6, #0x2a
	adds r4, r4, #4
	cmp r7, #4
	blt _021D1A0A
	movs r7, #0xd1
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_021D1A2E:
	ldr r0, [r4, r7]
	movs r1, #0
	bl ov111_021D345C
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _021D1A2E
	ldr r4, _021D1A84 @ =0x021D3770
	movs r7, #0
	adds r6, r5, #0
_021D1A44:
	movs r1, #0x10
	movs r2, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r4, r2]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r1, r1, r2
	movs r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r6, r0]
	bl ov111_021D3474
	adds r7, r7, #1
	adds r4, r4, #4
	adds r6, r6, #4
	cmp r7, #9
	blt _021D1A44
_021D1A66:
	movs r0, #0x10
	ldrsh r0, [r5, r0]
	adds r0, #0x10
	strh r0, [r5, #0x10]
	b _021D1A7A
_021D1A70:
	movs r0, #0
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1A7A:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1A80: .4byte 0x0000054F
_021D1A84: .4byte 0x021D3770
	thumb_func_end ov111_021D1980

	thumb_func_start ov111_021D1A88
ov111_021D1A88: @ 0x021D1A88
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D1A9E
	cmp r0, #1
	beq _021D1AAA
	cmp r0, #2
	beq _021D1AE0
	b _021D1AEE
_021D1A9E:
	movs r0, #0xa
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _021D1AEE
_021D1AAA:
	ldrb r0, [r4, #0xd]
	subs r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _021D1AEE
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	bl FUN_0200E084
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _021D1AEE
_021D1AE0:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D1AEE
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_021D1AEE:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov111_021D1A88

	thumb_func_start ov111_021D1AF4
ov111_021D1AF4: @ 0x021D1AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r4, _021D1B40 @ =0x021D3770
	movs r6, #0
	adds r7, r5, r0
_021D1B04:
	ldrh r0, [r4, #2]
	movs r1, #3
	movs r2, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	ldrh r3, [r4]
	adds r0, r7, #0
	bl ov111_021D33F4
	movs r1, #0xd1
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov111_021D345C
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #3
	blt _021D1B04
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1B40: .4byte 0x021D3770
	thumb_func_end ov111_021D1AF4

	thumb_func_start ov111_021D1B44
ov111_021D1B44: @ 0x021D1B44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r4, _021D1B8C @ =0x021D3620
	movs r6, #0
	adds r7, r5, r0
_021D1B54:
	ldrh r0, [r4, #2]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r3, [r4]
	adds r0, r7, #0
	bl ov111_021D33F4
	movs r1, #0x35
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov111_021D345C
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #3
	blt _021D1B54
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1B8C: .4byte 0x021D3620
	thumb_func_end ov111_021D1B44

	thumb_func_start ov111_021D1B90
ov111_021D1B90: @ 0x021D1B90
	push {r4, lr}
	sub sp, #0x10
	movs r1, #0xa0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	adds r1, #0xcc
	str r0, [sp, #0xc]
	adds r0, r4, r1
	movs r1, #3
	movs r3, #0x44
	bl ov111_021D33F4
	movs r1, #0xcf
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	bl ov111_021D345C
	movs r3, #0x44
	str r3, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5b
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	movs r1, #3
	adds r0, r4, r0
	adds r2, r1, #0
	bl ov111_021D33F4
	movs r1, #0xd
	lsls r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	bl ov111_021D345C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D1B90

	thumb_func_start ov111_021D1BEC
ov111_021D1BEC: @ 0x021D1BEC
	push {r4, r5, r6, lr}
	movs r6, #0xcb
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_021D1BF6:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021D1C00
	bl ov111_021D3448
_021D1C00:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D1BF6
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov111_021D1BEC

	thumb_func_start ov111_021D1C0C
ov111_021D1C0C: @ 0x021D1C0C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #0xbe
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_021D1C18:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021D1C22
	bl ov111_021D3448
_021D1C22:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D1C18
	movs r7, #0xc2
	movs r5, #0
	adds r4, r6, #0
	lsls r7, r7, #2
_021D1C32:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021D1C3C
	bl ov111_021D3448
_021D1C3C:
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #9
	blt _021D1C32
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D1C52
	bl ov111_021D3448
_021D1C52:
	movs r0, #0xd
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D1C60
	bl ov111_021D3448
_021D1C60:
	movs r7, #0xd1
	movs r5, #0
	adds r4, r6, #0
	lsls r7, r7, #2
_021D1C68:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021D1C72
	bl ov111_021D3448
_021D1C72:
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #3
	blt _021D1C68
	movs r7, #0x35
	movs r5, #0
	adds r4, r6, #0
	lsls r7, r7, #4
_021D1C82:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021D1C8C
	bl ov111_021D3448
_021D1C8C:
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #3
	blt _021D1C82
	movs r0, #0xd7
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D1CA2
	bl ov111_021D3448
_021D1CA2:
	movs r0, #2
	bl FUN_02002C60
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #2
	bl FUN_02002FA0
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #0
	bl FUN_02002FA0
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02002F54
	movs r0, #0x57
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r6, r0]
	adds r0, #0x10
	adds r0, r6, r0
	bl ov111_021D3320
	ldr r0, [r6, #0x34]
	bl FUN_02015760
	ldr r0, [r6, #0x38]
	bl FUN_0200B190
	ldr r0, [r6, #0x3c]
	bl FUN_0200B3F0
	ldr r0, [r6, #0x40]
	bl FUN_020237BC
	ldr r0, [r6, #0x44]
	bl FUN_020237BC
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_0200C560
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_020181C4
	movs r0, #0xe5
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_020181C4
	adds r0, r6, #0
	adds r0, #0x5c
	bl ov111_021D3578
	ldr r0, [r6, #0x58]
	bl ov111_021D2044
	movs r0, #0xe
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	bl FUN_02006CA8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D1C0C

	thumb_func_start ov111_021D1D30
ov111_021D1D30: @ 0x021D1D30
	push {r3, lr}
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020177BC
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D1D60 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D1D64 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_021D1D60: .4byte 0xFFFFE0FF
_021D1D64: .4byte 0x04001000
	thumb_func_end ov111_021D1D30

	thumb_func_start ov111_021D1D68
ov111_021D1D68: @ 0x021D1D68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0xb8
	movs r1, #0x73
	bl FUN_02006C24
	movs r1, #0xe
	lsls r1, r1, #6
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov111_021D1FC4
	adds r0, r5, #0
	bl ov111_021D2034
	movs r2, #0x87
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x73
	bl FUN_0200B144
	str r0, [r5, #0x38]
	movs r0, #0x73
	bl FUN_0200B358
	str r0, [r5, #0x3c]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x73
	bl FUN_02023790
	str r0, [r5, #0x40]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x73
	bl FUN_02023790
	movs r1, #0x1a
	str r0, [r5, #0x44]
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x73
	bl FUN_02002E7C
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x73
	bl FUN_02002E7C
	movs r1, #6
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x73
	bl FUN_02002E98
	movs r1, #6
	movs r0, #4
	lsls r1, r1, #6
	movs r2, #0x73
	bl FUN_02002E98
	movs r0, #2
	movs r1, #0x73
	bl FUN_02002BB8
	movs r0, #0xf
	movs r1, #0xe
	movs r2, #0
	movs r3, #0x73
	bl FUN_0200C440
	movs r1, #0x16
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r1, r5, #0
	ldr r0, [r5, #0x58]
	adds r1, #0x5c
	bl ov111_021D3548
	movs r0, #0
	movs r1, #1
	movs r2, #0xc
	movs r3, #0x73
	bl FUN_0201567C
	str r0, [r5, #0x34]
	adds r0, r5, #0
	bl ov111_021D2E4C
	adds r0, r5, #0
	bl ov111_021D2E8C
	adds r0, r5, #0
	bl ov111_021D2EB4
	bl FUN_0201FFD0
	movs r7, #0
	movs r6, #0x1a
	adds r4, r5, #0
_021D1E36:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	adds r2, r7, #0
	movs r3, #0x3c
	bl ov111_021D33F4
	movs r1, #0xbe
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D345C
	adds r7, r7, #1
	adds r6, #0x2a
	adds r4, r4, #4
	cmp r7, #4
	blt _021D1E36
	ldr r4, _021D1F5C @ =0x021D3770
	movs r7, #0
	adds r6, r5, #0
_021D1E76:
	ldrh r0, [r4, #2]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	movs r0, #0x5b
	lsls r0, r0, #2
	ldrh r3, [r4]
	adds r0, r5, r0
	bl ov111_021D33F4
	movs r1, #0xc2
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r0, r1, #0
	ldr r0, [r6, r0]
	movs r1, #0
	bl ov111_021D345C
	adds r7, r7, #1
	adds r4, r4, #4
	adds r6, r6, #4
	cmp r7, #9
	blt _021D1E76
	adds r0, r5, #0
	bl ov111_021D1B90
	ldr r4, _021D1F60 @ =0x021D362C
	movs r7, #0
	adds r6, r5, #0
_021D1EBC:
	ldrh r0, [r4, #2]
	movs r1, #2
	adds r2, r7, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #0x5b
	lsls r0, r0, #2
	ldrh r3, [r4]
	adds r0, r5, r0
	bl ov111_021D33F4
	movs r1, #0xcb
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r0, r1, #0
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r1, #1
	lsls r1, r1, #8
	subs r1, r2, r1
	movs r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r6, r0]
	bl ov111_021D3474
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r7, #0
	ldr r0, [r6, r0]
	adds r1, #0x14
	bl ov111_021D3468
	adds r7, r7, #1
	adds r4, r4, #4
	adds r6, r6, #4
	cmp r7, #4
	blt _021D1EBC
	movs r0, #0x38
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #4
	movs r3, #0x26
	bl ov111_021D33F4
	movs r1, #0xd7
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	bl ov111_021D345C
	ldr r2, _021D1F64 @ =0x04000304
	ldr r0, _021D1F68 @ =0xFFFF7FFF
	ldrh r1, [r2]
	ands r0, r1
	strh r0, [r2]
	bl FUN_0201E3D8
	movs r0, #1
	bl FUN_0201E450
	ldr r0, _021D1F6C @ =ov111_021D2090
	adds r1, r5, #0
	bl FUN_02017798
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1F5C: .4byte 0x021D3770
_021D1F60: .4byte 0x021D362C
_021D1F64: .4byte 0x04000304
_021D1F68: .4byte 0xFFFF7FFF
_021D1F6C: .4byte ov111_021D2090
	thumb_func_end ov111_021D1D68

	thumb_func_start ov111_021D1F70
ov111_021D1F70: @ 0x021D1F70
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x73
	bl FUN_02015920
	movs r1, #0xe6
	lsls r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov111_021D1F70

	thumb_func_start ov111_021D1F84
ov111_021D1F84: @ 0x021D1F84
	push {lr}
	sub sp, #0x14
	ldr r1, [r0, #0x58]
	movs r3, #0xe
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	lsls r3, r3, #6
	movs r1, #0xa
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	movs r2, #0x18
	add r1, sp, #0
	strb r2, [r1, #0x10]
	movs r2, #8
	strb r2, [r1, #0x11]
	adds r3, #0x18
	ldr r0, [r0, r3]
	add r1, sp, #0
	bl FUN_02015958
	add sp, #0x14
	pop {pc}
	.align 2, 0
	thumb_func_end ov111_021D1F84

	thumb_func_start ov111_021D1FB4
ov111_021D1FB4: @ 0x021D1FB4
	movs r1, #0xe6
	lsls r1, r1, #2
	ldr r3, _021D1FC0 @ =FUN_02015938
	ldr r0, [r0, r1]
	bx r3
	nop
_021D1FC0: .4byte FUN_02015938
	thumb_func_end ov111_021D1FB4

	thumb_func_start ov111_021D1FC4
ov111_021D1FC4: @ 0x021D1FC4
	push {r4, lr}
	adds r4, r0, #0
	bl ov111_021D20CC
	ldr r0, [r4, #0x58]
	bl ov111_021D20EC
	movs r0, #0x73
	bl FUN_02002F38
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #2
	lsls r2, r1, #8
	movs r3, #0x73
	bl FUN_02002F70
	movs r2, #0x57
	lsls r2, r2, #2
	ldr r0, [r4, r2]
	movs r1, #0
	adds r2, #0xa4
	movs r3, #0x73
	bl FUN_02002F70
	adds r0, r4, #0
	movs r1, #7
	bl ov111_021D2248
	bl ov111_021D22D0
	adds r0, r4, #0
	movs r1, #6
	bl ov111_021D228C
	adds r0, r4, #0
	movs r1, #1
	bl ov111_021D233C
	bl ov111_021D2304
	adds r0, r4, #0
	movs r1, #0
	bl ov111_021D2380
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	pop {r4, pc}
	thumb_func_end ov111_021D1FC4

	thumb_func_start ov111_021D2034
ov111_021D2034: @ 0x021D2034
	movs r1, #0x5b
	lsls r1, r1, #2
	ldr r3, _021D2040 @ =ov111_021D2F80
	adds r0, r0, r1
	bx r3
	nop
_021D2040: .4byte ov111_021D2F80
	thumb_func_end ov111_021D2034

	thumb_func_start ov111_021D2044
ov111_021D2044: @ 0x021D2044
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov111_021D2044

	thumb_func_start ov111_021D2090
ov111_021D2090: @ 0x021D2090
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D20C2
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D20A8
	bl FUN_02003694
_021D20A8:
	ldr r0, [r4, #0x58]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r3, _021D20C4 @ =0x027E0000
	ldr r1, _021D20C8 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
_021D20C2:
	pop {r4, pc}
	.align 2, 0
_021D20C4: .4byte 0x027E0000
_021D20C8: .4byte 0x00003FF8
	thumb_func_end ov111_021D2090

	thumb_func_start ov111_021D20CC
ov111_021D20CC: @ 0x021D20CC
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D20E8 @ =0x021D37BC
	add r3, sp, #0
	movs r2, #5
_021D20D6:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D20D6
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D20E8: .4byte 0x021D37BC
	thumb_func_end ov111_021D20CC

	thumb_func_start ov111_021D20EC
ov111_021D20EC: @ 0x021D20EC
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _021D222C @ =0x021D363C
	add r3, sp, #0xa8
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D2230 @ =0x021D36B4
	add r3, sp, #0x8c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #4
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x73
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	ldr r5, _021D2234 @ =0x021D36EC
	add r3, sp, #0x70
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #7
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019EBC
	ldr r5, _021D2238 @ =0x021D3660
	add r3, sp, #0x54
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #6
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019EBC
	ldr r5, _021D223C @ =0x021D367C
	add r3, sp, #0x38
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _021D2240 @ =0x021D3698
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #0
	str r0, [r3]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r5, _021D2244 @ =0x021D36D0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #2
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x73
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	nop
_021D222C: .4byte 0x021D363C
_021D2230: .4byte 0x021D36B4
_021D2234: .4byte 0x021D36EC
_021D2238: .4byte 0x021D3660
_021D223C: .4byte 0x021D367C
_021D2240: .4byte 0x021D3698
_021D2244: .4byte 0x021D36D0
	thumb_func_end ov111_021D20EC

	thumb_func_start ov111_021D2248
ov111_021D2248: @ 0x021D2248
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	adds r4, r1, #0
	movs r0, #0xe
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	movs r1, #0x23
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	movs r0, #0xe
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	movs r1, #0x25
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D2248

	thumb_func_start ov111_021D228C
ov111_021D228C: @ 0x021D228C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	adds r4, r1, #0
	movs r0, #0xe
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	movs r1, #0x26
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	movs r0, #0xe
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	movs r1, #0x28
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D228C

	thumb_func_start ov111_021D22D0
ov111_021D22D0: @ 0x021D22D0
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0xb8
	movs r1, #0x22
	add r2, sp, #0
	movs r3, #0x73
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0xa0
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0xa0
	blx FUN_020C0108
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov111_021D22D0

	thumb_func_start ov111_021D2304
ov111_021D2304: @ 0x021D2304
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0xb8
	movs r1, #0
	add r2, sp, #0
	movs r3, #0x73
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0x12
	ldr r0, [r0, #0xc]
	lsls r1, r1, #4
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r2, #5
	ldr r0, [r0, #0xc]
	movs r1, #0
	lsls r2, r2, #6
	blx FUN_020C00B4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov111_021D2304

	thumb_func_start ov111_021D233C
ov111_021D233C: @ 0x021D233C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	adds r4, r1, #0
	movs r0, #0xe
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	movs r1, #4
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	movs r0, #0xe
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	movs r1, #6
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D233C

	thumb_func_start ov111_021D2380
ov111_021D2380: @ 0x021D2380
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	adds r4, r1, #0
	movs r0, #0xe
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	movs r1, #7
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	movs r0, #0xe
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x58]
	movs r1, #9
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D2380

	thumb_func_start ov111_021D23C4
ov111_021D23C4: @ 0x021D23C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	adds r5, r0, #0
	adds r0, r4, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x44]
	adds r1, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	bl FUN_0200C388
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsls r0, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r0, r0, #8
	lsrs r2, r2, #0x10
	orrs r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x40]
	adds r0, r4, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D23C4

	thumb_func_start ov111_021D2424
ov111_021D2424: @ 0x021D2424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	adds r5, r0, #0
	adds r0, r4, #0
	adds r7, r2, #0
	adds r6, r3, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x44]
	adds r1, r7, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	bl FUN_0200C388
	add r0, sp, #0x3c
	ldrb r0, [r0]
	ldr r1, [r5, #0x40]
	movs r2, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r0, r0, #1
	subs r3, r6, r0
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsls r0, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r0, r0, #8
	lsrs r2, r2, #0x10
	orrs r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x40]
	adds r0, r4, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D2424

	thumb_func_start ov111_021D2494
ov111_021D2494: @ 0x021D2494
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #0x58]
	adds r1, #0x5c
	bl ov111_021D3594
	movs r3, #1
	str r3, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x5c
	movs r2, #6
	bl ov111_021D23C4
	adds r4, #0x5c
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D2494

	thumb_func_start ov111_021D24D4
ov111_021D24D4: @ 0x021D24D4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r2, [r5, #0xe]
	movs r1, #0
	adds r2, r2, #1
	bl ov111_021D26CC
	movs r3, #1
	movs r1, #0x53
	lsls r1, r1, #2
	str r3, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r5, r1
	movs r2, #0xc
	str r3, [sp, #0x14]
	bl ov111_021D23C4
	adds r4, r0, #0
	movs r0, #0x53
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D24D4

	thumb_func_start ov111_021D2518
ov111_021D2518: @ 0x021D2518
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldrb r2, [r4, #0xe]
	movs r1, #0
	adds r2, r2, #1
	bl ov111_021D26CC
	movs r0, #5
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0xfc
	movs r2, #9
	movs r3, #0x30
	bl ov111_021D2424
	adds r4, #0xfc
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov111_021D2518

	thumb_func_start ov111_021D255C
ov111_021D255C: @ 0x021D255C
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0x35
	adds r5, r0, #0
	movs r4, #0
	lsls r7, r7, #4
_021D2566:
	ldr r1, _021D25B8 @ =0x000003AA
	adds r2, r5, r4
	ldrb r1, [r2, r1]
	lsls r0, r4, #2
	adds r6, r5, r0
	adds r2, r5, r1
	movs r1, #0x36
	movs r0, #0x35
	lsls r1, r1, #4
	lsls r0, r0, #4
	ldrb r1, [r2, r1]
	ldr r0, [r6, r0]
	bl ov111_021D34C4
	ldr r0, [r6, r7]
	movs r1, #1
	bl ov111_021D345C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	blo _021D2566
	movs r0, #0xd7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov111_021D345C
	movs r0, #0xd7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov111_021D350C
	movs r0, #0x55
	lsls r0, r0, #4
	bl FUN_02005748
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D25B8: .4byte 0x000003AA
	thumb_func_end ov111_021D255C

	thumb_func_start ov111_021D25BC
ov111_021D25BC: @ 0x021D25BC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _021D2600 @ =0x000005F3
	bl FUN_02005748
	movs r0, #5
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r1, #0x47
	lsls r1, r1, #2
	adds r0, r5, #0
	adds r1, r5, r1
	movs r2, #0xb
	movs r3, #0x30
	bl ov111_021D2424
	adds r4, r0, #0
	movs r0, #0x47
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D2600: .4byte 0x000005F3
	thumb_func_end ov111_021D25BC

	thumb_func_start ov111_021D2604
ov111_021D2604: @ 0x021D2604
	push {r3, r4, r5, lr}
	sub sp, #0x18
	movs r2, #1
	str r2, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	movs r1, #0x4b
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r2, #4
	movs r3, #0x30
	bl ov111_021D2424
	adds r4, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D2604

	thumb_func_start ov111_021D263C
ov111_021D263C: @ 0x021D263C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	movs r2, #1
	str r2, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	movs r1, #0x4f
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r2, #5
	movs r3, #0x18
	bl ov111_021D2424
	adds r4, r0, #0
	movs r0, #0x4f
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D263C

	thumb_func_start ov111_021D2674
ov111_021D2674: @ 0x021D2674
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r1, #0
	adds r6, r0, #0
	lsls r2, r7, #1
	adds r3, r6, r2
	ldr r2, _021D26C4 @ =0x0000036A
	ldr r0, [r6, #0x3c]
	ldrh r2, [r3, r2]
	movs r1, #0
	bl FUN_0200B70C
	adds r0, r7, #2
	lsls r4, r0, #4
	ldr r0, _021D26C8 @ =0x021D3814
	adds r5, r6, #0
	ldrb r0, [r0, r7]
	movs r1, #0
	movs r2, #1
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r5, #0x5c
	str r1, [sp, #0x14]
	adds r0, r6, #0
	adds r1, r5, r4
	movs r3, #0x2c
	bl ov111_021D2424
	adds r6, r0, #0
	adds r0, r5, r4
	bl FUN_0201A9A4
	adds r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D26C4: .4byte 0x0000036A
_021D26C8: .4byte 0x021D3814
	thumb_func_end ov111_021D2674

	thumb_func_start ov111_021D26CC
ov111_021D26CC: @ 0x021D26CC
	push {r3, lr}
	sub sp, #8
	movs r3, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldr r0, [r0, #0x3c]
	bl FUN_0200B60C
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov111_021D26CC

	thumb_func_start ov111_021D26E4
ov111_021D26E4: @ 0x021D26E4
	movs r3, #0
	strb r3, [r0, #8]
	str r2, [r1]
	bx lr
	thumb_func_end ov111_021D26E4

	thumb_func_start ov111_021D26EC
ov111_021D26EC: @ 0x021D26EC
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0x36
	adds r5, r0, #0
	movs r4, #0
	movs r6, #4
	lsls r7, r7, #4
_021D26F8:
	bl FUN_0201D2E8
	movs r1, #9
	blx FUN_020E1F6C
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, r0
	ldrb r0, [r1, r7]
	cmp r0, #0xb0
	bne _021D26F8
	movs r0, #0x36
	lsls r0, r0, #4
	adds r4, r4, #1
	strb r6, [r1, r0]
	cmp r4, #2
	blt _021D26F8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D26EC

	thumb_func_start ov111_021D271C
ov111_021D271C: @ 0x021D271C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl FUN_0201D2E8
	movs r7, #0
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, r7, #0
_021D2738:
	bl FUN_0201D2E8
	movs r1, #9
	blx FUN_020E1F6C
	movs r0, #0x36
	adds r2, r5, r1
	lsls r0, r0, #4
	ldrb r1, [r2, r0]
	cmp r1, #0xb0
	bne _021D276C
	movs r7, #0
	strb r6, [r2, r0]
	cmp r4, #2
	beq _021D275E
	cmp r4, #4
	beq _021D275E
	cmp r4, #6
	bne _021D27A4
_021D275E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bne _021D27A4
	movs r6, #0
	b _021D27A4
_021D276C:
	adds r7, r7, #1
	cmp r7, #0x1e
	blt _021D2738
	movs r7, #0
	adds r3, r7, #0
_021D2776:
	adds r2, r5, r3
	ldrb r1, [r2, r0]
	cmp r1, #0xb0
	bne _021D279E
	movs r0, #0x36
	lsls r0, r0, #4
	strb r6, [r2, r0]
	cmp r4, #2
	beq _021D2790
	cmp r4, #4
	beq _021D2790
	cmp r4, #6
	bne _021D27A4
_021D2790:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bne _021D27A4
	movs r6, #0
	b _021D27A4
_021D279E:
	adds r3, r3, #1
	cmp r3, #9
	blt _021D2776
_021D27A4:
	adds r4, r4, #1
	cmp r4, #9
	blt _021D2738
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D271C

	thumb_func_start ov111_021D27AC
ov111_021D27AC: @ 0x021D27AC
	push {r4, lr}
	adds r4, r0, #0
	bl ov111_021D26EC
	adds r0, r4, #0
	bl ov111_021D271C
	pop {r4, pc}
	thumb_func_end ov111_021D27AC

	thumb_func_start ov111_021D27BC
ov111_021D27BC: @ 0x021D27BC
	push {r3, r4}
	movs r1, #0x36
	movs r4, #0
	movs r3, #0xb0
	lsls r1, r1, #4
_021D27C6:
	adds r2, r0, r4
	adds r4, r4, #1
	strb r3, [r2, r1]
	cmp r4, #9
	blt _021D27C6
	pop {r3, r4}
	bx lr
	thumb_func_end ov111_021D27BC

	thumb_func_start ov111_021D27D4
ov111_021D27D4: @ 0x021D27D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	movs r1, #0
	add r2, sp, #8
	movs r0, #0xff
_021D27E0:
	adds r1, r1, #1
	strh r0, [r2]
	adds r2, r2, #2
	cmp r1, #4
	blt _021D27E0
	bl FUN_0201D2E8
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	add r4, sp, #8
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r5, #0
	adds r6, r4, #0
	movs r7, #0x17
_021D2808:
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _021D2818
	ldr r1, [sp]
	ldr r0, _021D2860 @ =0x0000036A
	movs r2, #0x5c
	strh r2, [r1, r0]
	b _021D284E
_021D2818:
	bl FUN_0201D2E8
	adds r1, r7, #0
	blx FUN_020E2178
	strh r1, [r4]
	movs r1, #0
	cmp r5, #0
	ble _021D283C
	ldrh r3, [r4]
	adds r2, r6, #0
_021D282E:
	ldrh r0, [r2]
	cmp r0, r3
	beq _021D283C
	adds r1, r1, #1
	adds r2, r2, #2
	cmp r1, r5
	blt _021D282E
_021D283C:
	cmp r1, r5
	bne _021D2818
	ldrh r0, [r4]
	lsls r1, r0, #1
	ldr r0, _021D2864 @ =0x021D37E4
	ldrh r2, [r0, r1]
	ldr r1, [sp]
	ldr r0, _021D2860 @ =0x0000036A
	strh r2, [r1, r0]
_021D284E:
	ldr r0, [sp]
	adds r5, r5, #1
	adds r0, r0, #2
	adds r4, r4, #2
	str r0, [sp]
	cmp r5, #4
	blt _021D2808
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2860: .4byte 0x0000036A
_021D2864: .4byte 0x021D37E4
	thumb_func_end ov111_021D27D4

	thumb_func_start ov111_021D2868
ov111_021D2868: @ 0x021D2868
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0xea
	lsls r0, r0, #2
	adds r4, r1, #0
	ldrb r1, [r5, r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x19
	cmp r1, #8
	blo _021D2884
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2884:
	subs r0, #0x7c
	adds r0, r5, r0
	str r0, [sp]
	ldr r1, [sp]
	lsls r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov111_021D349C
	movs r0, #0xea
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	lsls r2, r4, #3
	ldr r4, _021D28E0 @ =0x021D3818
	lsls r1, r0, #0x18
	lsrs r6, r1, #0x19
	ldrsb r7, [r4, r6]
	movs r4, #0xfe
	bics r0, r4
	adds r4, r6, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _021D28E4 @ =0x021D3708
	lsls r4, r4, #0x19
	adds r1, r1, r2
	lsrs r4, r4, #0x18
	ldr r2, [sp, #8]
	orrs r4, r0
	movs r0, #0xea
	ldr r3, [sp, #0xc]
	lsls r0, r0, #2
	strb r4, [r5, r0]
	ldrsb r1, [r6, r1]
	ldr r4, [sp]
	ldr r0, [sp, #4]
	adds r1, r3, r1
	ldr r0, [r4, r0]
	adds r2, r2, r7
	bl ov111_021D3474
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D28E0: .4byte 0x021D3818
_021D28E4: .4byte 0x021D3708
	thumb_func_end ov111_021D2868

	thumb_func_start ov111_021D28E8
ov111_021D28E8: @ 0x021D28E8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	str r3, [sp]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	adds r4, r1, #0
	lsls r1, r4, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	ldr r0, [r5, #0x58]
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019E2C
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x58]
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov111_021D28E8

	thumb_func_start ov111_021D2918
ov111_021D2918: @ 0x021D2918
	push {r3, r4}
	movs r4, #0
	movs r2, #0xe7
	adds r3, r4, #0
	lsls r2, r2, #2
_021D2922:
	adds r1, r0, r3
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _021D2930
	adds r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
_021D2930:
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #9
	blo _021D2922
	adds r0, r4, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov111_021D2918

	thumb_func_start ov111_021D2940
ov111_021D2940: @ 0x021D2940
	push {r3, r4}
	movs r4, #0
	movs r1, #0xe7
	adds r3, r4, #0
	lsls r1, r1, #2
_021D294A:
	adds r2, r0, r4
	strb r3, [r2, r1]
	adds r2, r4, #1
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #9
	blo _021D294A
	pop {r3, r4}
	bx lr
	thumb_func_end ov111_021D2940

	thumb_func_start ov111_021D295C
ov111_021D295C: @ 0x021D295C
	push {r3, r4}
	movs r4, #0
	ldr r1, _021D2978 @ =0x000003AD
	adds r3, r4, #0
_021D2964:
	adds r2, r0, r4
	strb r3, [r2, r1]
	adds r2, r4, #1
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #9
	blo _021D2964
	pop {r3, r4}
	bx lr
	nop
_021D2978: .4byte 0x000003AD
	thumb_func_end ov111_021D295C

	thumb_func_start ov111_021D297C
ov111_021D297C: @ 0x021D297C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0xf
	lsls r0, r0, #6
	ldrh r0, [r7, r0]
	movs r6, #0
	cmp r0, #0
	ble _021D29CC
	ldr r2, _021D29D0 @ =0x021D3728
	lsls r0, r1, #2
	adds r5, r2, r0
	ldrb r0, [r5, #2]
	adds r4, r7, #0
	str r0, [sp]
_021D2998:
	ldr r0, _021D29D4 @ =0x000003C2
	ldrh r1, [r4, r0]
	adds r0, r0, #2
	ldrh r2, [r4, r0]
	ldr r0, [sp]
	cmp r0, r1
	bgt _021D29BE
	ldrb r0, [r5, #3]
	cmp r1, r0
	bgt _021D29BE
	ldrb r0, [r5]
	cmp r0, r2
	bgt _021D29BE
	ldrb r0, [r5, #1]
	cmp r2, r0
	bgt _021D29BE
	adds r0, r7, #0
	bl ov111_021D2ECC
_021D29BE:
	movs r0, #0xf
	lsls r0, r0, #6
	ldrh r0, [r7, r0]
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r0
	blt _021D2998
_021D29CC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D29D0: .4byte 0x021D3728
_021D29D4: .4byte 0x000003C2
	thumb_func_end ov111_021D297C

	thumb_func_start ov111_021D29D8
ov111_021D29D8: @ 0x021D29D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xf
	lsls r0, r0, #6
	ldrh r0, [r5, r0]
	movs r6, #0
	cmp r0, #0
	ble _021D2A10
	movs r7, #0xf
	adds r4, r5, #0
	lsls r7, r7, #6
_021D29EE:
	ldr r1, _021D2A14 @ =0x000003C2
	movs r2, #0xf1
	lsls r2, r2, #2
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	adds r0, r5, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	bl ov111_021D2A18
	ldrh r0, [r5, r7]
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r0
	blt _021D29EE
_021D2A10:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2A14: .4byte 0x000003C2
	thumb_func_end ov111_021D29D8

	thumb_func_start ov111_021D2A18
ov111_021D2A18: @ 0x021D2A18
	push {r3, r4, r5, r6, r7, lr}
	adds r3, r1, #0
	movs r7, #2
	mvns r7, r7
	adds r0, r0, r3
	ldr r6, _021D2A64 @ =0x00000402
	str r2, [sp]
	mov lr, r0
	movs r5, #1
	mov ip, r7
_021D2A2C:
	ldr r1, [sp]
	movs r2, #0xf0
	adds r1, r1, r7
	adds r4, r1, #0
	muls r4, r2, r4
	mov r2, lr
	adds r2, r2, r4
	mov r0, ip
	subs r4, r2, #3
_021D2A3E:
	adds r2, r3, r0
	cmp r2, #0
	ble _021D2A52
	cmp r2, #0xf0
	bge _021D2A52
	cmp r1, #0
	ble _021D2A52
	cmp r1, #0xa0
	bge _021D2A52
	strb r5, [r4, r6]
_021D2A52:
	adds r0, r0, #1
	adds r4, r4, #1
	cmp r0, #3
	blt _021D2A3E
	adds r7, r7, #1
	cmp r7, #3
	blt _021D2A2C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2A64: .4byte 0x00000402
	thumb_func_end ov111_021D2A18

	thumb_func_start ov111_021D2A68
ov111_021D2A68: @ 0x021D2A68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r4, #0
	lsls r1, r0, #2
	ldr r0, _021D2B08 @ =0x021D374C
	ldrsh r7, [r0, r1]
	ldr r0, _021D2B0C @ =0x021D374E
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	adds r0, #0x14
	ldr r1, [sp, #8]
	mov ip, r0
	cmp r1, r0
	bge _021D2AC2
	ldr r0, [sp, #8]
	adds r2, r7, #0
	adds r6, r0, #0
	movs r1, #0xf0
	ldr r0, _021D2B10 @ =0x00000402
	muls r6, r1, r6
	adds r2, #0x19
_021D2A98:
	adds r3, r7, #0
	cmp r7, r2
	bge _021D2AB4
	ldr r1, [sp]
	adds r1, r1, r6
	adds r5, r1, r7
_021D2AA4:
	ldrb r1, [r5, r0]
	cmp r1, #1
	bne _021D2AAC
	adds r4, r4, #1
_021D2AAC:
	adds r3, r3, #1
	adds r5, r5, #1
	cmp r3, r2
	blt _021D2AA4
_021D2AB4:
	ldr r1, [sp, #8]
	adds r6, #0xf0
	adds r3, r1, #1
	mov r1, ip
	str r3, [sp, #8]
	cmp r3, r1
	blt _021D2A98
_021D2AC2:
	movs r0, #0x5f
	lsls r0, r0, #2
	cmp r4, r0
	blt _021D2B00
	ldr r1, _021D2B14 @ =0x000003AD
	ldr r0, [sp]
	adds r4, r0, r1
	ldr r0, [sp, #4]
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D2AF6
	ldr r0, _021D2B18 @ =0x000005E2
	bl FUN_02005748
	ldr r0, _021D2B1C @ =0x000003A9
	ldr r1, [sp]
	ldrb r2, [r1, r0]
	adds r3, r1, r2
	ldr r1, [sp, #4]
	adds r2, r0, #1
	strb r1, [r3, r2]
	ldr r1, [sp]
	ldrb r1, [r1, r0]
	adds r2, r1, #1
	ldr r1, [sp]
	strb r2, [r1, r0]
_021D2AF6:
	ldr r1, [sp, #4]
	movs r0, #1
	add sp, #0xc
	strb r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_021D2B00:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D2B08: .4byte 0x021D374C
_021D2B0C: .4byte 0x021D374E
_021D2B10: .4byte 0x00000402
_021D2B14: .4byte 0x000003AD
_021D2B18: .4byte 0x000005E2
_021D2B1C: .4byte 0x000003A9
	thumb_func_end ov111_021D2A68

	thumb_func_start ov111_021D2B20
ov111_021D2B20: @ 0x021D2B20
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021D2BA8 @ =0x000003A6
	adds r6, r0, #0
	ldrb r0, [r6, r2]
	adds r0, r0, #1
	strb r0, [r6, r2]
	ldrb r0, [r6, r2]
	cmp r0, #1
	blo _021D2BA4
	movs r0, #0
	strb r0, [r6, r2]
	subs r1, r2, #1
	ldrb r1, [r6, r1]
	adds r3, r1, #1
	subs r1, r2, #1
	strb r3, [r6, r1]
	ldrb r1, [r6, r1]
	cmp r1, #8
	blo _021D2B4A
	subs r1, r2, #1
	strb r0, [r6, r1]
_021D2B4A:
	ldr r0, _021D2BAC @ =0x000003A9
	ldrb r0, [r6, r0]
	cmp r0, #2
	bne _021D2B96
	ldr r7, _021D2BB0 @ =0x021D3770
	movs r4, #0
	adds r5, r6, #0
_021D2B58:
	movs r0, #0xd1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	bl ov111_021D3500
	movs r0, #0xd1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov111_021D345C
	ldr r0, _021D2BB4 @ =0x000003AA
	adds r1, r6, r4
	ldrb r0, [r1, r0]
	movs r2, #2
	lsls r1, r0, #2
	adds r3, r7, r1
	movs r0, #0xd1
	ldrsh r1, [r7, r1]
	ldrsh r2, [r3, r2]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	subs r1, #0x24
	subs r2, #0xa
	bl ov111_021D3474
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021D2B58
_021D2B96:
	ldr r1, _021D2BB8 @ =0x000003A5
	movs r0, #0x5b
	ldrb r1, [r6, r1]
	lsls r0, r0, #2
	adds r0, r6, r0
	bl ov111_021D33B0
_021D2BA4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2BA8: .4byte 0x000003A6
_021D2BAC: .4byte 0x000003A9
_021D2BB0: .4byte 0x021D3770
_021D2BB4: .4byte 0x000003AA
_021D2BB8: .4byte 0x000003A5
	thumb_func_end ov111_021D2B20

	thumb_func_start ov111_021D2BBC
ov111_021D2BBC: @ 0x021D2BBC
	push {r4, r5}
	ldr r1, _021D2D08 @ =0x000003A9
	movs r3, #0
	ldrb r2, [r0, r1]
	cmp r2, #1
	bhi _021D2BCE
	adds r0, r3, #0
	pop {r4, r5}
	bx lr
_021D2BCE:
	adds r2, r1, #2
	ldrb r2, [r0, r2]
	adds r4, r0, r2
	adds r2, r1, #0
	subs r2, #0x49
	ldrb r2, [r4, r2]
	adds r4, r1, #1
	ldrb r4, [r0, r4]
	adds r5, r0, r4
	adds r4, r1, #0
	subs r4, #0x49
	ldrb r4, [r5, r4]
	cmp r4, r2
	bne _021D2BFC
	subs r2, r1, #1
	ldrb r4, [r0, r2]
	movs r2, #1
	subs r1, r1, #1
	bics r4, r2
	movs r2, #1
	orrs r2, r4
	strb r2, [r0, r1]
	b _021D2C26
_021D2BFC:
	cmp r4, #4
	bne _021D2C12
	subs r2, r1, #1
	ldrb r4, [r0, r2]
	movs r2, #1
	subs r1, r1, #1
	bics r4, r2
	movs r2, #1
	orrs r2, r4
	strb r2, [r0, r1]
	b _021D2C26
_021D2C12:
	cmp r2, #4
	bne _021D2C26
	subs r2, r1, #1
	ldrb r4, [r0, r2]
	movs r2, #1
	subs r1, r1, #1
	bics r4, r2
	movs r2, #1
	orrs r2, r4
	strb r2, [r0, r1]
_021D2C26:
	ldr r1, _021D2D08 @ =0x000003A9
	ldrb r2, [r0, r1]
	cmp r2, #2
	bhi _021D2C34
	movs r0, #0
	pop {r4, r5}
	bx lr
_021D2C34:
	adds r2, r1, #2
	ldrb r2, [r0, r2]
	adds r4, r0, r2
	adds r2, r1, #0
	subs r2, #0x49
	ldrb r4, [r4, r2]
	adds r2, r1, #1
	ldrb r2, [r0, r2]
	adds r5, r0, r2
	adds r2, r1, #0
	subs r2, #0x49
	ldrb r2, [r5, r2]
	cmp r2, r4
	bne _021D2C60
	adds r5, r1, #3
	ldrb r5, [r0, r5]
	subs r1, #0x49
	adds r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r2, r1
	bne _021D2C60
	movs r3, #1
_021D2C60:
	cmp r2, #4
	bne _021D2C6A
	cmp r4, #4
	bne _021D2C6A
	movs r3, #1
_021D2C6A:
	cmp r2, #4
	bne _021D2C80
	movs r1, #0xeb
	lsls r1, r1, #2
	ldrb r5, [r0, r1]
	subs r1, #0x4c
	adds r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r1, #4
	bne _021D2C80
	movs r3, #1
_021D2C80:
	cmp r4, #4
	bne _021D2C96
	movs r1, #0xeb
	lsls r1, r1, #2
	ldrb r5, [r0, r1]
	subs r1, #0x4c
	adds r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r1, #4
	bne _021D2C96
	movs r3, #1
_021D2C96:
	cmp r2, #4
	bne _021D2CAC
	movs r1, #0xeb
	lsls r1, r1, #2
	ldrb r5, [r0, r1]
	subs r1, #0x4c
	adds r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r4, r1
	bne _021D2CAC
	movs r3, #1
_021D2CAC:
	cmp r4, #4
	bne _021D2CC2
	movs r1, #0xeb
	lsls r1, r1, #2
	ldrb r5, [r0, r1]
	subs r1, #0x4c
	adds r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r2, r1
	bne _021D2CC2
	movs r3, #1
_021D2CC2:
	movs r1, #0xeb
	lsls r1, r1, #2
	ldrb r5, [r0, r1]
	subs r1, #0x4c
	adds r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r1, #4
	bne _021D2CD8
	cmp r2, r4
	bne _021D2CD8
	movs r3, #1
_021D2CD8:
	cmp r3, #1
	bne _021D2D02
	ldr r1, _021D2D0C @ =0x000003AA
	movs r4, #0
	adds r2, r1, #0
	subs r2, #0x4a
_021D2CE4:
	adds r3, r0, r4
	ldrb r3, [r3, r1]
	adds r3, r0, r3
	ldrb r3, [r3, r2]
	cmp r3, #4
	beq _021D2CF6
	ldr r1, _021D2D10 @ =0x000003A7
	strb r3, [r0, r1]
	b _021D2CFC
_021D2CF6:
	adds r4, r4, #1
	cmp r4, #3
	blt _021D2CE4
_021D2CFC:
	movs r0, #1
	pop {r4, r5}
	bx lr
_021D2D02:
	movs r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
_021D2D08: .4byte 0x000003A9
_021D2D0C: .4byte 0x000003AA
_021D2D10: .4byte 0x000003A7
	thumb_func_end ov111_021D2BBC

	thumb_func_start ov111_021D2D14
ov111_021D2D14: @ 0x021D2D14
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0
	movs r7, #0x36
	adds r4, r0, #0
	adds r5, r6, #0
	lsls r7, r7, #4
_021D2D22:
	ldr r1, _021D2D58 @ =0x000003AA
	adds r2, r6, r4
	ldrb r1, [r2, r1]
	adds r1, r6, r1
	ldrb r1, [r1, r7]
	cmp r1, #4
	bne _021D2D3E
	movs r0, #0x35
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov111_021D3530
	movs r0, #1
_021D2D3E:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D2D22
	movs r1, #0
	strb r1, [r6, #0x14]
	ldrb r2, [r6, #0x14]
	lsls r1, r2, #4
	orrs r2, r1
	ldr r1, _021D2D5C @ =0x0400004D
	strb r2, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2D58: .4byte 0x000003AA
_021D2D5C: .4byte 0x0400004D
	thumb_func_end ov111_021D2D14

	thumb_func_start ov111_021D2D60
ov111_021D2D60: @ 0x021D2D60
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021D2E08 @ =0x000003AA
	adds r5, r0, #0
	adds r3, r2, #0
	movs r0, #0
	subs r3, #0x4a
_021D2D6C:
	adds r4, r5, r0
	ldrb r4, [r4, r2]
	adds r4, r5, r4
	ldrb r4, [r4, r3]
	cmp r4, #4
	beq _021D2D7E
	adds r0, r0, #1
	cmp r0, #3
	blt _021D2D6C
_021D2D7E:
	cmp r0, #3
	bne _021D2D86
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2D86:
	cmp r1, #0
	ldrb r0, [r5, #0x14]
	bne _021D2DD2
	cmp r0, #0
	bne _021D2D96
	ldr r0, _021D2E0C @ =0x00000552
	bl FUN_02005748
_021D2D96:
	ldrb r0, [r5, #0x14]
	cmp r0, #4
	bhs _021D2DA2
	adds r0, r0, #1
	strb r0, [r5, #0x14]
	b _021D2DF8
_021D2DA2:
	movs r7, #0x36
	movs r4, #0
	adds r6, r5, #0
	lsls r7, r7, #4
_021D2DAA:
	ldr r0, _021D2E08 @ =0x000003AA
	adds r1, r5, r4
	ldrb r0, [r1, r0]
	adds r0, r5, r0
	ldrb r0, [r0, r7]
	cmp r0, #4
	bne _021D2DC6
	ldr r1, _021D2E10 @ =0x000003A7
	movs r0, #0x35
	lsls r0, r0, #4
	ldrb r1, [r5, r1]
	ldr r0, [r6, r0]
	bl ov111_021D34C4
_021D2DC6:
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, #3
	blt _021D2DAA
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2DD2:
	cmp r0, #0
	beq _021D2DDC
	subs r0, r0, #1
	strb r0, [r5, #0x14]
	b _021D2DF8
_021D2DDC:
	movs r4, #0
	movs r6, #0x35
	adds r7, r4, #0
	lsls r6, r6, #4
_021D2DE4:
	ldr r0, [r5, r6]
	adds r1, r7, #0
	bl ov111_021D3530
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D2DE4
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2DF8:
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #4
	orrs r1, r0
	ldr r0, _021D2E14 @ =0x0400004D
	strb r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2E08: .4byte 0x000003AA
_021D2E0C: .4byte 0x00000552
_021D2E10: .4byte 0x000003A7
_021D2E14: .4byte 0x0400004D
	thumb_func_end ov111_021D2D60

	thumb_func_start ov111_021D2E18
ov111_021D2E18: @ 0x021D2E18
	ldrb r1, [r0, #0xe]
	adds r1, r1, #1
	strb r1, [r0, #0xe]
	bx lr
	thumb_func_end ov111_021D2E18

	thumb_func_start ov111_021D2E20
ov111_021D2E20: @ 0x021D2E20
	ldrb r1, [r0, #0xe]
	adds r1, r1, #1
	strb r1, [r0, #0xe]
	bx lr
	thumb_func_end ov111_021D2E20

	thumb_func_start ov111_021D2E28
ov111_021D2E28: @ 0x021D2E28
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov111_021D345C
	adds r0, r4, #0
	adds r0, #0xfc
	movs r1, #0
	bl FUN_0201ADA4
	adds r4, #0xfc
	adds r0, r4, #0
	bl FUN_0201A9A4
	pop {r4, pc}
	thumb_func_end ov111_021D2E28

	thumb_func_start ov111_021D2E4C
ov111_021D2E4C: @ 0x021D2E4C
	push {r3, r4, lr}
	sub sp, #4
	movs r3, #0x39
	adds r4, r0, #0
	movs r0, #0x73
	lsls r3, r3, #4
	str r0, [sp]
	movs r0, #0xb8
	movs r1, #7
	movs r2, #0
	adds r3, r4, r3
	bl FUN_02006F50
	movs r1, #0xe3
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #4
	ldr r3, [r4, r0]
	movs r1, #0
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, #0x58]
	ldr r3, [r3, #0x10]
	bl FUN_0201958C
	ldr r0, [r4, #0x58]
	movs r1, #0
	bl FUN_02019448
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov111_021D2E4C

	thumb_func_start ov111_021D2E8C
ov111_021D2E8C: @ 0x021D2E8C
	push {r4, lr}
	movs r1, #0x39
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	movs r0, #0x73
	ldr r1, [r1, #0x10]
	bl FUN_02018144
	movs r1, #0xe5
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D2EB0
	bne _021D2EB0
	bl FUN_02022974
_021D2EB0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov111_021D2E8C

	thumb_func_start ov111_021D2EB4
ov111_021D2EB4: @ 0x021D2EB4
	movs r1, #0x39
	lsls r1, r1, #4
	ldr r2, [r0, r1]
	adds r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, [r2, #0x14]
	ldr r3, _021D2EC8 @ =FUN_020D50B8
	ldr r2, [r2, #0x10]
	bx r3
	nop
_021D2EC8: .4byte FUN_020D50B8
	thumb_func_end ov111_021D2EB4

	thumb_func_start ov111_021D2ECC
ov111_021D2ECC: @ 0x021D2ECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #2
	mvns r0, r0
	adds r7, r1, #0
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
_021D2EDE:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r4, [sp, #0xc]
	adds r5, r1, r0
_021D2EE6:
	adds r1, r7, r4
	cmp r1, #0
	ble _021D2F04
	movs r0, #1
	lsls r0, r0, #8
	cmp r1, r0
	bge _021D2F04
	cmp r5, #0
	ble _021D2F04
	cmp r5, #0xc0
	bge _021D2F04
	adds r0, r6, #0
	adds r2, r5, #0
	bl ov111_021D2F38
_021D2F04:
	adds r4, r4, #1
	cmp r4, #3
	blt _021D2EE6
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	blt _021D2EDE
	movs r1, #0
	movs r3, #0xe5
	str r1, [sp]
	lsls r3, r3, #2
	ldr r2, [r6, r3]
	subs r3, r3, #4
	ldr r3, [r6, r3]
	ldr r0, [r6, #0x58]
	ldr r3, [r3, #0x10]
	bl FUN_0201958C
	ldr r0, [r6, #0x58]
	movs r1, #0
	bl FUN_02019448
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov111_021D2ECC

	thumb_func_start ov111_021D2F38
ov111_021D2F38: @ 0x021D2F38
	push {r3, r4, r5, r6}
	movs r3, #1
	movs r4, #0xff
	tst r3, r1
	bne _021D2F46
	movs r3, #0xf
	b _021D2F48
_021D2F46:
	movs r3, #0xf0
_021D2F48:
	eors r3, r4
	lsls r3, r3, #0x18
	lsrs r4, r1, #3
	movs r6, #7
	lsrs r5, r2, #3
	ands r1, r6
	lsrs r3, r3, #0x18
	lsls r4, r4, #5
	lsls r5, r5, #0xa
	lsrs r1, r1, #1
	cmp r2, #8
	bhs _021D2F64
	lsls r2, r2, #2
	b _021D2F68
_021D2F64:
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1b
_021D2F68:
	movs r6, #0xe5
	lsls r6, r6, #2
	adds r4, r5, r4
	adds r1, r1, r4
	ldr r0, [r0, r6]
	adds r2, r2, r1
	ldrb r1, [r0, r2]
	ands r1, r3
	strb r1, [r0, r2]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov111_021D2F38

	thumb_func_start ov111_021D2F80
ov111_021D2F80: @ 0x021D2F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x20
	movs r1, #0x73
	bl FUN_0201DBEC
	bl ov111_021D3378
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x73
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r0, #0x28
	adds r1, r5, #4
	movs r2, #0x73
	bl FUN_020095C4
	movs r2, #2
	str r0, [r5]
	adds r0, r5, #4
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	ldr r4, _021D3048 @ =0x021D3820
	movs r7, #0
	adds r6, r5, #0
_021D2FCC:
	ldrb r0, [r4]
	adds r1, r7, #0
	movs r2, #0x73
	bl FUN_02009714
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r7, r7, #1
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r7, #4
	blt _021D2FCC
	adds r0, r5, #0
	movs r1, #1
	bl ov111_021D304C
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov111_021D30D8
	adds r0, r5, #0
	movs r1, #1
	bl ov111_021D3168
	adds r0, r5, #0
	movs r1, #1
	bl ov111_021D31F4
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	movs r3, #2
	bl ov111_021D30D8
	movs r7, #0x4f
	lsls r7, r7, #2
	movs r4, #0
	adds r6, r7, #4
_021D301E:
	ldr r0, [r5, r7]
	bl FUN_0200A328
	ldr r0, [r5, r6]
	bl FUN_0200A5C8
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #5
	blt _021D301E
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D3048: .4byte 0x021D3820
	thumb_func_end ov111_021D2F80

	thumb_func_start ov111_021D304C
ov111_021D304C: @ 0x021D304C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xb9
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0xc
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	adds r0, #0xbd
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0xd
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x16
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xc1
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0xb
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x59
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #2
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xc5
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0xa
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x5a
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D304C

	thumb_func_start ov111_021D30D8
ov111_021D30D8: @ 0x021D30D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r2, #0
	adds r7, r3, #0
	str r6, [sp]
	adds r5, r0, #0
	str r7, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xb9
	lsls r4, r1, #4
	ldr r0, [r5, r0]
	movs r1, #0xb8
	movs r2, #0x20
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x4f
	adds r2, r5, r4
	lsls r1, r1, #2
	str r0, [r2, r1]
	str r6, [sp]
	str r7, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	adds r0, #0xbd
	ldr r0, [r5, r0]
	movs r1, #0xb8
	movs r2, #0x21
	movs r3, #0
	bl FUN_020098B8
	movs r1, #5
	adds r2, r5, r4
	lsls r1, r1, #6
	str r0, [r2, r1]
	str r6, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xc1
	ldr r0, [r5, r0]
	movs r1, #0xb8
	movs r2, #0x1f
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x51
	adds r2, r5, r4
	lsls r1, r1, #2
	str r0, [r2, r1]
	str r6, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xc5
	ldr r0, [r5, r0]
	movs r1, #0xb8
	movs r2, #0x1e
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x52
	adds r2, r5, r4
	lsls r1, r1, #2
	str r0, [r2, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D30D8

	thumb_func_start ov111_021D3168
ov111_021D3168: @ 0x021D3168
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #3
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xb9
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0x10
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x5b
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #3
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	adds r0, #0xbd
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0x11
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #3
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xc1
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0xf
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xc5
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0xe
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D3168

	thumb_func_start ov111_021D31F4
ov111_021D31F4: @ 0x021D31F4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xb9
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0x14
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x73
	str r0, [sp, #0xc]
	adds r0, #0xbd
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0x15
	movs r3, #0
	bl FUN_020098B8
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r4, r1]
	movs r0, #4
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xc1
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0x13
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #4
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x73
	str r0, [sp, #8]
	adds r0, #0xc5
	ldr r0, [r4, r0]
	movs r1, #0xb8
	movs r2, #0x12
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D31F4

	thumb_func_start ov111_021D3280
ov111_021D3280: @ 0x021D3280
	push {r3, r4, r5, lr}
	sub sp, #0x80
	adds r4, r0, #0
	movs r0, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	adds r5, r2, #0
	str r0, [sp, #8]
	movs r2, #0
	movs r0, #0x4b
	str r2, [sp, #0xc]
	lsls r0, r0, #2
	str r3, [sp, #0x10]
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	adds r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	adds r3, r0, #0
	adds r3, #8
	ldr r3, [r4, r3]
	adds r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r0, [r4]
	movs r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	ldr r0, [sp, #0x90]
	str r0, [sp, #0x50]
	movs r0, #0x73
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _021D32F6
	movs r0, #1
	str r0, [sp, #0x54]
	b _021D32FA
_021D32F6:
	movs r0, #2
	str r0, [sp, #0x54]
_021D32FA:
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #0
	adds r4, r0, #0
	bl FUN_02021CC8
	movs r1, #1
	adds r0, r4, #0
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_02021D6C
	adds r0, r4, #0
	add sp, #0x80
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D3280

	thumb_func_start ov111_021D3320
ov111_021D3320: @ 0x021D3320
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #5
	adds r5, r0, #0
	movs r4, #0
	lsls r7, r7, #6
_021D332A:
	lsls r0, r4, #4
	adds r6, r5, r0
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	ldr r0, [r6, r7]
	bl FUN_0200A6DC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	blo _021D332A
	movs r6, #0x4b
	movs r4, #0
	lsls r6, r6, #2
_021D334E:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_02009754
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _021D334E
	ldr r0, [r5]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov111_021D3320

	thumb_func_start ov111_021D3378
ov111_021D3378: @ 0x021D3378
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D33A8 @ =0x021D3824
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r1, _021D33AC @ =0x00200010
	adds r0, r2, #0
	adds r2, r1, #0
	bl FUN_0201E88C
	movs r0, #0xe
	movs r1, #0x73
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D33A8: .4byte 0x021D3824
_021D33AC: .4byte 0x00200010
	thumb_func_end ov111_021D3378

	thumb_func_start ov111_021D33B0
ov111_021D33B0: @ 0x021D33B0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #8
	blt _021D33C0
	bl FUN_02022974
_021D33C0:
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #3
	bl FUN_02009DC8
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x73
	str r0, [sp, #4]
	ldr r3, _021D33F0 @ =0x021D3940
	adds r0, #0xbd
	ldrb r3, [r3, r4]
	ldr r0, [r5, r0]
	adds r1, r6, #0
	movs r2, #0xb8
	bl FUN_020099D4
	adds r0, r6, #0
	bl FUN_0200A6B8
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D33F0: .4byte 0x021D3940
	thumb_func_end ov111_021D33B0

	thumb_func_start ov111_021D33F4
ov111_021D33F4: @ 0x021D33F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x73
	movs r1, #0x10
	adds r7, r2, #0
	str r3, [sp, #8]
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x10
	movs r0, #0
_021D3410:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D3410
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	adds r1, r6, #0
	adds r2, r7, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	bl ov111_021D3280
	add r2, sp, #0x10
	str r0, [r4, #0xc]
	ldrb r0, [r2, #0x14]
	strb r0, [r4, #2]
	ldrh r2, [r2, #0x10]
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl ov111_021D3474
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov111_021D33F4

	thumb_func_start ov111_021D3448
ov111_021D3448: @ 0x021D3448
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02021BD4
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov111_021D3448

	thumb_func_start ov111_021D345C
ov111_021D345C: @ 0x021D345C
	ldr r3, _021D3464 @ =FUN_02021CAC
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3464: .4byte FUN_02021CAC
	thumb_func_end ov111_021D345C

	thumb_func_start ov111_021D3468
ov111_021D3468: @ 0x021D3468
	ldr r3, _021D3470 @ =FUN_02021F58
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3470: .4byte FUN_02021F58
	thumb_func_end ov111_021D3468

	thumb_func_start ov111_021D3474
ov111_021D3474: @ 0x021D3474
	push {lr}
	sub sp, #0xc
	lsls r2, r2, #0xc
	lsls r1, r1, #0xc
	str r2, [sp, #4]
	str r1, [sp]
	ldrb r1, [r0, #2]
	cmp r1, #1
	bne _021D348E
	movs r1, #2
	lsls r1, r1, #0x14
	adds r1, r2, r1
	str r1, [sp, #4]
_021D348E:
	ldr r0, [r0, #0xc]
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov111_021D3474

	thumb_func_start ov111_021D349C
ov111_021D349C: @ 0x021D349C
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_02021D28
	ldr r2, [r0]
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	asrs r1, r1, #0xc
	str r1, [r5]
	ldr r1, [r0, #4]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov111_021D349C

	thumb_func_start ov111_021D34C4
ov111_021D34C4: @ 0x021D34C4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [r5, #0xc]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r5, #0xc]
	adds r1, r4, #0
	bl FUN_02021DCC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov111_021D34C4

	thumb_func_start ov111_021D34E0
ov111_021D34E0: @ 0x021D34E0
	ldr r3, _021D34EC @ =FUN_02021C80
	ldr r0, [r0, #0xc]
	ldr r1, _021D34F0 @ =0x021D3834
	movs r2, #1
	bx r3
	nop
_021D34EC: .4byte FUN_02021C80
_021D34F0: .4byte 0x021D3834
	thumb_func_end ov111_021D34E0

	thumb_func_start ov111_021D34F4
ov111_021D34F4: @ 0x021D34F4
	ldr r3, _021D34FC @ =FUN_02021C80
	ldr r0, [r0, #0xc]
	movs r2, #2
	bx r3
	.align 2, 0
_021D34FC: .4byte FUN_02021C80
	thumb_func_end ov111_021D34F4

	thumb_func_start ov111_021D3500
ov111_021D3500: @ 0x021D3500
	ldr r3, _021D3508 @ =FUN_02021EC4
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3508: .4byte FUN_02021EC4
	thumb_func_end ov111_021D3500

	thumb_func_start ov111_021D350C
ov111_021D350C: @ 0x021D350C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02021CC8
	movs r1, #1
	ldr r0, [r4, #0xc]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r4, #0xc]
	bl FUN_02021E24
	adds r1, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02021D6C
	pop {r4, pc}
	thumb_func_end ov111_021D350C

	thumb_func_start ov111_021D3530
ov111_021D3530: @ 0x021D3530
	ldr r3, _021D3538 @ =FUN_02021FA0
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3538: .4byte FUN_02021FA0
	thumb_func_end ov111_021D3530

	thumb_func_start ov111_021D353C
ov111_021D353C: @ 0x021D353C
	ldr r3, _021D3544 @ =FUN_02021FD0
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3544: .4byte FUN_02021FD0
	thumb_func_end ov111_021D353C

	thumb_func_start ov111_021D3548
ov111_021D3548: @ 0x021D3548
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	movs r4, #0
_021D3550:
	ldr r2, _021D3574 @ =0x021D38B8
	lsls r6, r4, #4
	lsls r3, r4, #3
	adds r0, r7, #0
	adds r1, r5, r6
	adds r2, r2, r3
	bl FUN_0201A8D4
	adds r0, r5, r6
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x10
	blo _021D3550
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3574: .4byte 0x021D38B8
	thumb_func_end ov111_021D3548

	thumb_func_start ov111_021D3578
ov111_021D3578: @ 0x021D3578
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D357E:
	lsls r0, r4, #4
	adds r0, r5, r0
	bl FUN_0201A8FC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x10
	blo _021D357E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov111_021D3578

	thumb_func_start ov111_021D3594
ov111_021D3594: @ 0x021D3594
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #0
	str r1, [sp]
	movs r1, #0x73
	str r1, [sp, #4]
	ldr r2, _021D35BC @ =0x000003F7
	movs r1, #2
	movs r3, #0xb
	bl FUN_0200DAA4
	ldr r2, _021D35BC @ =0x000003F7
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DC48
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021D35BC: .4byte 0x000003F7
	thumb_func_end ov111_021D3594

	thumb_func_start ov111_021D35C0
ov111_021D35C0: @ 0x021D35C0
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r0, #0
	bl FUN_0201C290
	adds r1, r0, #0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x73
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _021D35FC @ =0x000003D9
	movs r3, #0xa
	bl FUN_0200DD0C
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r2, _021D35FC @ =0x000003D9
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xa
	bl FUN_0200E060
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D35FC: .4byte 0x000003D9
	thumb_func_end ov111_021D35C0
	@ 0x021D3600
