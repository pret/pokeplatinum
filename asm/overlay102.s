
	thumb_func_start ov102_021D0D80
ov102_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	movs r2, #2
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x54
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	adds r0, r5, #0
	movs r1, #0x44
	movs r2, #0x54
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0x44
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x54
	str r0, [r4]
	adds r0, r5, #0
	bl FUN_02006840
	ldr r1, [r0]
	str r1, [r4, #8]
	ldr r0, [r0, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl FUN_02025E38
	str r0, [r4, #0xc]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
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
	ldr r0, _021D0E20 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D0E24 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	adds r0, r4, #0
	bl ov102_021D0F8C
	adds r0, r4, #0
	bl ov102_021D1174
	ldr r0, _021D0E28 @ =ov102_021D0F80
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_0201FFD0
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D0E20: .4byte 0xFFFFE0FF
_021D0E24: .4byte 0x04001000
_021D0E28: .4byte ov102_021D0F80
	thumb_func_end ov102_021D0D80

	thumb_func_start ov102_021D0E2C
ov102_021D0E2C: @ 0x021D0E2C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	movs r6, #0
	cmp r1, #5
	bhi _021D0F40
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0E4C: @ jump table
	.2byte _021D0E58 - _021D0E4C - 2 @ case 0
	.2byte _021D0EB4 - _021D0E4C - 2 @ case 1
	.2byte _021D0EC6 - _021D0E4C - 2 @ case 2
	.2byte _021D0ED8 - _021D0E4C - 2 @ case 3
	.2byte _021D0EFC - _021D0E4C - 2 @ case 4
	.2byte _021D0F36 - _021D0E4C - 2 @ case 5
_021D0E58:
	bl ov102_021D1224
	adds r0, r4, #0
	bl ov102_021D1274
	adds r0, r4, #0
	bl ov102_021D1420
	adds r0, r6, #0
	movs r1, #1
	bl FUN_02019120
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	movs r0, #4
	movs r1, #1
	bl FUN_02019120
	movs r0, #5
	movs r1, #1
	bl FUN_02019120
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	str r0, [r5]
	b _021D0F40
_021D0EB4:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0F40
	adds r0, r6, #0
	str r0, [r4, #0x40]
	movs r0, #2
	str r0, [r5]
	b _021D0F40
_021D0EC6:
	ldr r0, [r4, #0x40]
	cmp r0, #0x3c
	bge _021D0ED2
	adds r0, r0, #1
	str r0, [r4, #0x40]
	b _021D0F40
_021D0ED2:
	movs r0, #3
	str r0, [r5]
	b _021D0F40
_021D0ED8:
	movs r2, #0x3c
	ldrsh r3, [r4, r2]
	adds r1, r2, #0
	subs r1, #0xfc
	cmp r3, r1
	ble _021D0EEE
	subs r1, r3, #4
	strh r1, [r4, #0x3c]
	bl ov102_021D1230
	b _021D0F40
_021D0EEE:
	subs r2, #0xfc
	strh r2, [r4, #0x3c]
	bl ov102_021D1230
	movs r0, #4
	str r0, [r5]
	b _021D0F40
_021D0EFC:
	ldr r0, _021D0F48 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	ands r0, r1
	cmp r0, #1
	beq _021D0F18
	movs r0, #2
	ands r0, r1
	cmp r0, #2
	beq _021D0F18
	ldr r0, _021D0F4C @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _021D0F40
_021D0F18:
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
	movs r0, #5
	str r0, [r5]
	b _021D0F40
_021D0F36:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0F40
	movs r6, #1
_021D0F40:
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D0F48: .4byte 0x021BF67C
_021D0F4C: .4byte 0x021BF6BC
	thumb_func_end ov102_021D0E2C

	thumb_func_start ov102_021D0F50
ov102_021D0F50: @ 0x021D0F50
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r6, r0, #0
	ldr r4, [r6]
	bl ov102_021D1204
	adds r0, r6, #0
	bl ov102_021D10F8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	adds r0, r5, #0
	bl FUN_02006830
	adds r0, r4, #0
	bl FUN_0201807C
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov102_021D0F50

	thumb_func_start ov102_021D0F80
ov102_021D0F80: @ 0x021D0F80
	ldr r3, _021D0F88 @ =FUN_0201C2B8
	ldr r0, [r0, #0x10]
	bx r3
	nop
_021D0F88: .4byte FUN_0201C2B8
	thumb_func_end ov102_021D0F80

	thumb_func_start ov102_021D0F8C
ov102_021D0F8C: @ 0x021D0F8C
	push {r4, r5, lr}
	sub sp, #0x54
	ldr r5, _021D10EC @ =0x021D155C
	adds r4, r0, #0
	add r3, sp, #0x2c
	movs r2, #5
_021D0F98:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D0F98
	add r0, sp, #0x2c
	bl FUN_0201FE94
	ldr r0, [r4]
	bl FUN_02018340
	add r3, sp, #0x1c
	ldr r5, _021D10F0 @ =0x021D1530
	str r0, [r4, #0x10]
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D10F4 @ =0x021D1540
	add r3, sp, #0
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
	add r0, sp, #0
	strb r1, [r0, #0x12]
	movs r3, #4
	strb r3, [r0, #0x13]
	lsls r3, r3, #0xa
	str r3, [sp, #8]
	movs r3, #2
	strb r3, [r0, #0x10]
	ldr r0, [r4, #0x10]
	adds r3, r1, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x10]
	movs r1, #0
	bl FUN_02019EBC
	movs r2, #2
	add r0, sp, #0
	strb r2, [r0, #0x12]
	strb r2, [r0, #0x13]
	lsls r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	movs r1, #1
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02019EBC
	movs r1, #4
	add r0, sp, #0
	strb r1, [r0, #0x12]
	movs r2, #1
	strb r2, [r0, #0x13]
	lsls r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	movs r1, #3
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x10]
	movs r1, #3
	bl FUN_02019EBC
	movs r1, #4
	movs r3, #0
	add r0, sp, #0
	strb r3, [r0, #0x12]
	strb r1, [r0, #0x13]
	lsls r2, r1, #0xa
	str r2, [sp, #8]
	movs r2, #2
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	add r2, sp, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x10]
	movs r1, #4
	bl FUN_02019EBC
	movs r2, #2
	add r0, sp, #0
	strb r2, [r0, #0x12]
	strb r2, [r0, #0x13]
	lsls r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	movs r1, #5
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x10]
	movs r1, #5
	bl FUN_02019EBC
	movs r1, #4
	add r0, sp, #0
	strb r1, [r0, #0x12]
	movs r2, #1
	strb r2, [r0, #0x13]
	lsls r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	movs r1, #7
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x10]
	movs r1, #7
	bl FUN_02019EBC
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #1
	movs r1, #0
	bl FUN_02019120
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	movs r0, #3
	movs r1, #0
	bl FUN_02019120
	movs r0, #4
	movs r1, #0
	bl FUN_02019120
	movs r0, #5
	movs r1, #0
	bl FUN_02019120
	movs r0, #6
	movs r1, #0
	bl FUN_02019120
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	add sp, #0x54
	pop {r4, r5, pc}
	.align 2, 0
_021D10EC: .4byte 0x021D155C
_021D10F0: .4byte 0x021D1530
_021D10F4: .4byte 0x021D1540
	thumb_func_end ov102_021D0F8C

	thumb_func_start ov102_021D10F8
ov102_021D10F8: @ 0x021D10F8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #1
	movs r1, #0
	bl FUN_02019120
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	movs r0, #3
	movs r1, #0
	bl FUN_02019120
	movs r0, #4
	movs r1, #0
	bl FUN_02019120
	movs r0, #5
	movs r1, #0
	bl FUN_02019120
	movs r0, #6
	movs r1, #0
	bl FUN_02019120
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	ldr r0, [r4, #0x10]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	movs r1, #7
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov102_021D10F8

	thumb_func_start ov102_021D1174
ov102_021D1174: @ 0x021D1174
	push {r4, lr}
	sub sp, #0x10
	ldr r1, _021D1200 @ =0x021D1528
	adds r4, r0, #0
	ldrh r2, [r1]
	add r0, sp, #8
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	bl FUN_0201D710
	movs r0, #1
	ldr r3, [r4]
	movs r1, #0x1a
	adds r2, r0, #0
	bl FUN_0200B144
	str r0, [r4, #0x34]
	ldr r0, [r4]
	bl FUN_0200B358
	str r0, [r4, #0x38]
	movs r1, #0
	add r0, sp, #8
	strb r1, [r0]
	adds r1, r4, #0
	ldr r0, [r4, #0x10]
	adds r1, #0x14
	add r2, sp, #8
	bl FUN_0201A8D4
	movs r1, #0
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0xc0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #4
	add r0, sp, #8
	strb r1, [r0]
	adds r1, r4, #0
	ldr r0, [r4, #0x10]
	adds r1, #0x24
	add r2, sp, #8
	bl FUN_0201A8D4
	movs r1, #0
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0xc0
	adds r4, #0x24
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D1200: .4byte 0x021D1528
	thumb_func_end ov102_021D1174

	thumb_func_start ov102_021D1204
ov102_021D1204: @ 0x021D1204
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x24
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A8FC
	ldr r0, [r4, #0x38]
	bl FUN_0200B3F0
	ldr r0, [r4, #0x34]
	bl FUN_0200B190
	pop {r4, pc}
	thumb_func_end ov102_021D1204

	thumb_func_start ov102_021D1224
ov102_021D1224: @ 0x021D1224
	ldr r3, _021D122C @ =ov102_021D1230
	movs r1, #0
	strh r1, [r0, #0x3c]
	bx r3
	.align 2, 0
_021D122C: .4byte ov102_021D1230
	thumb_func_end ov102_021D1224

	thumb_func_start ov102_021D1230
ov102_021D1230: @ 0x021D1230
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	movs r1, #1
	movs r2, #3
	bl FUN_02019184
	movs r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	movs r1, #5
	movs r2, #3
	adds r3, #0xc0
	bl FUN_02019184
	movs r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	movs r1, #0
	movs r2, #3
	bl FUN_02019184
	movs r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	movs r1, #4
	movs r2, #3
	adds r3, #0xc0
	bl FUN_02019184
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov102_021D1230

	thumb_func_start ov102_021D1274
ov102_021D1274: @ 0x021D1274
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021D1294
	movs r0, #2
	str r0, [sp, #0x18]
	movs r0, #6
	str r0, [sp, #0x14]
	movs r0, #8
	movs r7, #0xa
	str r0, [sp, #0x10]
	movs r6, #0
	movs r4, #4
	b _021D12A6
_021D1294:
	movs r0, #3
	str r0, [sp, #0x18]
	movs r0, #7
	str r0, [sp, #0x14]
	movs r0, #9
	movs r7, #0xb
	str r0, [sp, #0x10]
	movs r6, #1
	movs r4, #5
_021D12A6:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	adds r1, r7, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x84
	movs r3, #3
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x84
	movs r3, #3
	bl FUN_02006E3C
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	movs r2, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	movs r0, #0x84
	adds r3, r2, #0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	adds r1, r7, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x84
	movs r3, #7
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x84
	movs r3, #7
	bl FUN_02006E3C
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	movs r0, #0x84
	movs r2, #4
	movs r3, #0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x84
	movs r3, #1
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r2, #0
	ldr r0, [r5, #0x10]
	adds r3, r2, #0
	bl FUN_02019E2C
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl FUN_02019448
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	adds r1, r6, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x84
	movs r3, #1
	bl FUN_02006E3C
	movs r3, #0x20
	str r3, [sp]
	ldr r0, [r5]
	adds r1, r4, #0
	str r0, [sp, #4]
	movs r0, #0x84
	movs r2, #0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x84
	movs r3, #5
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019E2C
	ldr r0, [r5, #0x10]
	movs r1, #5
	bl FUN_02019448
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	adds r1, r6, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x84
	movs r3, #5
	bl FUN_02006E3C
	movs r3, #0x20
	str r3, [sp]
	ldr r0, [r5]
	adds r1, r4, #0
	str r0, [sp, #4]
	movs r0, #0x84
	movs r2, #4
	bl FUN_02006E84
	movs r0, #0
	ldr r3, [r5]
	movs r1, #0x20
	adds r2, r0, #0
	bl FUN_02019690
	ldr r3, [r5]
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r2, [r5]
	movs r0, #0
	movs r1, #0x40
	bl FUN_02002E7C
	ldr r2, [r5]
	movs r0, #4
	movs r1, #0x40
	bl FUN_02002E7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov102_021D1274

	thumb_func_start ov102_021D1420
ov102_021D1420: @ 0x021D1420
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #2
	ldr r1, [r5]
	lsls r0, r0, #8
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #2
	ldr r1, [r5]
	lsls r0, r0, #8
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [r5, #0x34]
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0xc]
	movs r1, #0
	bl FUN_0200B498
	ldr r0, [r5, #0x38]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0200C388
	movs r0, #0x20
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D1524 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x14
	adds r2, r4, #0
	movs r3, #0x30
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #0x20
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D1524 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x24
	adds r2, r4, #0
	movs r3, #0x30
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021D14A0
	movs r1, #1
	b _021D14A2
_021D14A0:
	movs r1, #2
_021D14A2:
	ldr r0, [r5, #0x34]
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r3, #0x40
	str r3, [sp]
	movs r1, #0
	ldr r0, _021D1524 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x14
	adds r2, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r3, #0x40
	str r3, [sp]
	movs r1, #0
	ldr r0, _021D1524 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	adds r0, #0x24
	adds r2, r4, #0
	bl FUN_0201D78C
	ldr r0, [r5, #0x34]
	movs r1, #3
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r0, #0x90
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D1524 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x14
	adds r2, r4, #0
	movs r3, #0x8a
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #0x90
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D1524 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r5, #0x24
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0x8a
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D1524: .4byte 0x00010200
	thumb_func_end ov102_021D1420
	@ 0x021D1528
