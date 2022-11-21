	.include "macros/function.inc"


	.text

	thumb_func_start ov73_021D0D80
ov73_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	movs r2, #1
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x52
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0x52
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0xc0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x52
	str r0, [r4]
	adds r0, r5, #0
	bl FUN_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl FUN_02025E44
	movs r1, #0
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r0, [r4, #8]
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0x52
	movs r3, #7
	bl FUN_0208712C
	str r0, [r4, #0x70]
	ldr r0, [r4, #8]
	movs r1, #3
	str r0, [sp]
	movs r0, #0x52
	movs r2, #0
	movs r3, #7
	bl FUN_0208712C
	str r0, [r4, #0x74]
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x88
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x89
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x8a
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	str r1, [r0]
	movs r0, #0x52
	movs r1, #0x20
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xb8
	str r0, [r1]
	movs r0, #0x52
	movs r1, #0x20
	bl FUN_02018144
	adds r4, #0xbc
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021D0D80

	thumb_func_start ov73_021D0E20
ov73_021D0E20: @ 0x021D0E20
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	movs r6, #0
	cmp r1, #5
	bls _021D0E36
	b _021D0F68
_021D0E36:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0E42: @ jump table
	.2byte _021D0E4E - _021D0E42 - 2 @ case 0
	.2byte _021D0EB6 - _021D0E42 - 2 @ case 1
	.2byte _021D0EFE - _021D0E42 - 2 @ case 2
	.2byte _021D0F24 - _021D0E42 - 2 @ case 3
	.2byte _021D0F4C - _021D0E42 - 2 @ case 4
	.2byte _021D0F66 - _021D0E42 - 2 @ case 5
_021D0E4E:
	adds r0, r6, #0
	adds r1, r6, #0
	bl FUN_0200F344
	movs r0, #1
	adds r1, r6, #0
	bl FUN_0200F344
	adds r0, r6, #0
	adds r1, r0, #0
	bl FUN_02017798
	adds r0, r6, #0
	adds r1, r0, #0
	bl FUN_020177BC
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
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	adds r0, r4, #0
	bl ov73_021D1058
	adds r0, r4, #0
	bl ov73_021D12C4
	adds r0, r4, #0
	bl ov73_021D1318
	ldr r0, _021D0F78 @ =ov73_021D0FF0
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_0201FFD0
	movs r0, #1
	str r0, [r5]
	b _021D0F68
_021D0EB6:
	bl ov73_021D2318
	cmp r0, #1
	bne _021D0EDA
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #2
	str r0, [r5]
_021D0EDA:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D0F68
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
	movs r0, #3
	str r0, [r5]
	b _021D0F68
_021D0EFE:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0F68
	adds r0, r4, #0
	bl ov73_021D1300
	adds r0, r4, #0
	bl ov73_021D1238
	adds r0, r4, #0
	bl ov73_021D1328
	adds r0, r6, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r6, #1
	b _021D0F68
_021D0F24:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0F68
	adds r0, r4, #0
	bl ov73_021D1300
	adds r0, r4, #0
	bl ov73_021D1238
	adds r0, r4, #0
	bl ov73_021D1328
	adds r0, r6, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #4
	str r0, [r5]
	b _021D0F68
_021D0F4C:
	ldr r0, [r4, #0x14]
	bl FUN_02006844
	cmp r0, #1
	bne _021D0F68
	ldr r0, [r4, #0x14]
	bl FUN_02006814
	adds r0, r6, #0
	str r0, [r4, #0x14]
	movs r0, #5
	str r0, [r5]
	b _021D0F68
_021D0F66:
	str r6, [r5]
_021D0F68:
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D0F70: .4byte 0xFFFFE0FF
_021D0F74: .4byte 0x04001000
_021D0F78: .4byte ov73_021D0FF0
	thumb_func_end ov73_021D0E20

	thumb_func_start ov73_021D0F7C
ov73_021D0F7C: @ 0x021D0F7C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, #0xb8
	ldr r0, [r0]
	ldr r5, [r4]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	bl FUN_02025E38
	ldr r1, [r4, #0x70]
	ldr r1, [r1, #0x18]
	bl FUN_02025EE0
	ldr r0, [r4, #4]
	bl FUN_02025E38
	ldr r1, [r4, #0x70]
	ldr r1, [r1, #4]
	bl FUN_02025F2C
	ldr r0, [r4, #4]
	bl FUN_0202783C
	ldr r1, [r4, #0x74]
	ldr r1, [r1, #0x18]
	bl FUN_0202787C
	ldr r0, [r4, #0x70]
	bl FUN_0208716C
	ldr r0, [r4, #0x74]
	bl FUN_0208716C
	adds r0, r6, #0
	bl FUN_02006830
	adds r0, r5, #0
	bl FUN_0201807C
	ldr r0, _021D0FE8 @ =0x00000039
	ldr r1, _021D0FEC @ =0x021D0F80
	bl FUN_02000EC4
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D0FE8: .4byte 0x00000039
_021D0FEC: .4byte 0x021D0F80
	thumb_func_end ov73_021D0F7C

	thumb_func_start ov73_021D0FF0
ov73_021D0FF0: @ 0x021D0FF0
	ldr r3, _021D0FF8 @ =FUN_0201C2B8
	ldr r0, [r0, #0x18]
	bx r3
	nop
_021D0FF8: .4byte FUN_0201C2B8
	thumb_func_end ov73_021D0FF0

	thumb_func_start ov73_021D0FFC
ov73_021D0FFC: @ 0x021D0FFC
	push {r3, r4}
	ldr r2, _021D1054 @ =0x021BF6BC
	movs r0, #0
	ldrh r1, [r2, #0x20]
	cmp r1, #0
	beq _021D1050
	ldrh r3, [r2, #0x1c]
	movs r1, #1
	lsls r1, r1, #8
	cmp r3, r1
	bhs _021D1050
	ldrh r2, [r2, #0x1e]
	cmp r2, #0xc0
	bhs _021D1050
	cmp r3, #0x80
	bhs _021D1024
	movs r1, #0x80
	subs r1, r1, r3
	lsls r1, r1, #0x10
	b _021D1028
_021D1024:
	subs r3, #0x80
	lsls r1, r3, #0x10
_021D1028:
	lsrs r3, r1, #0x10
	cmp r2, #0x64
	bhs _021D1036
	movs r1, #0x64
	subs r1, r1, r2
	lsls r1, r1, #0x10
	b _021D103A
_021D1036:
	subs r2, #0x64
	lsls r1, r2, #0x10
_021D103A:
	lsrs r4, r1, #0x10
	adds r2, r3, #0
	adds r1, r4, #0
	muls r2, r3, r2
	muls r1, r4, r1
	adds r2, r2, r1
	movs r1, #1
	lsls r1, r1, #8
	cmp r2, r1
	bgt _021D1050
	movs r0, #1
_021D1050:
	pop {r3, r4}
	bx lr
	.align 2, 0
_021D1054: .4byte 0x021BF6BC
	thumb_func_end ov73_021D0FFC

	thumb_func_start ov73_021D1058
ov73_021D1058: @ 0x021D1058
	push {r3, r4, r5, lr}
	sub sp, #0x78
	ldr r5, _021D1220 @ =0x021D392C
	adds r4, r0, #0
	add r3, sp, #0x50
	movs r2, #5
_021D1064:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1064
	add r0, sp, #0x50
	bl FUN_0201FE94
	ldr r0, [r4]
	bl FUN_02018340
	add r3, sp, #0x40
	ldr r5, _021D1224 @ =0x021D3810
	str r0, [r4, #0x18]
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D1228 @ =0x021D38D4
	add r3, sp, #0x24
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
	movs r0, #0xf
	strb r0, [r2, #0x12]
	movs r0, #6
	strb r0, [r2, #0x13]
	ldr r0, [r4, #0x18]
	adds r3, r1, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl FUN_02019EBC
	movs r0, #0xe
	add r2, sp, #0x24
	strb r0, [r2, #0x12]
	movs r0, #5
	strb r0, [r2, #0x13]
	ldr r0, [r4, #0x18]
	movs r1, #1
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #1
	bl FUN_02019EBC
	movs r0, #0xd
	add r2, sp, #0x24
	strb r0, [r2, #0x12]
	movs r0, #4
	strb r0, [r2, #0x13]
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_02019EBC
	movs r0, #0xc
	add r2, sp, #0x24
	strb r0, [r2, #0x12]
	movs r1, #3
	strb r1, [r2, #0x13]
	ldr r0, [r4, #0x18]
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #3
	bl FUN_02019EBC
	movs r1, #0
	str r1, [sp]
	ldr r0, [r4]
	ldr r2, _021D122C @ =0x000003E2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	movs r3, #4
	bl FUN_0200DD0C
	movs r1, #0
	str r1, [sp]
	ldr r0, [r4]
	ldr r2, _021D1230 @ =0x000003D9
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	movs r3, #3
	bl FUN_0200DAA4
	ldr r2, [r4]
	movs r0, #0
	movs r1, #0xa0
	bl FUN_02002E7C
	ldr r2, [r4]
	movs r0, #0
	movs r1, #0xc0
	bl FUN_02002E98
	ldr r5, _021D1234 @ =0x021D38F0
	add r3, sp, #8
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #0xf
	str r0, [r3]
	add r0, sp, #8
	strb r1, [r0, #0x12]
	movs r1, #6
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x18]
	movs r1, #4
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #4
	bl FUN_02019EBC
	movs r1, #0xe
	add r0, sp, #8
	strb r1, [r0, #0x12]
	movs r1, #5
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x18]
	add r2, sp, #8
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #5
	bl FUN_02019EBC
	movs r1, #0xd
	add r0, sp, #8
	strb r1, [r0, #0x12]
	movs r1, #4
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x18]
	movs r1, #6
	add r2, sp, #8
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
	movs r1, #6
	bl FUN_02019EBC
	movs r1, #0xc
	add r0, sp, #8
	strb r1, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x18]
	movs r1, #7
	add r2, sp, #8
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0x18]
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
	adds r0, r4, #0
	bl ov73_021D1930
	movs r0, #0
	str r0, [r4, #0x78]
	add sp, #0x78
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1220: .4byte 0x021D392C
_021D1224: .4byte 0x021D3810
_021D1228: .4byte 0x021D38D4
_021D122C: .4byte 0x000003E2
_021D1230: .4byte 0x000003D9
_021D1234: .4byte 0x021D38F0
	thumb_func_end ov73_021D1058

	thumb_func_start ov73_021D1238
ov73_021D1238: @ 0x021D1238
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
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	movs r1, #7
	bl FUN_02019044
	ldr r0, [r4, #0x18]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov73_021D1238

	thumb_func_start ov73_021D12C4
ov73_021D12C4: @ 0x021D12C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _021D12FC @ =0x00000185
	ldr r3, [r4]
	movs r0, #1
	movs r1, #0x1a
	bl FUN_0200B144
	str r0, [r4, #0x4c]
	bl FUN_0201D710
	movs r0, #0
	ldr r3, [r4]
	adds r1, r0, #0
	movs r2, #6
	bl FUN_0201567C
	str r0, [r4, #0x60]
	ldr r0, [r4]
	bl FUN_0200B358
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x2c]
	pop {r4, pc}
	nop
_021D12FC: .4byte 0x00000185
	thumb_func_end ov73_021D12C4

	thumb_func_start ov73_021D1300
ov73_021D1300: @ 0x021D1300
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	bl FUN_0200B3F0
	ldr r0, [r4, #0x60]
	bl FUN_02015760
	ldr r0, [r4, #0x4c]
	bl FUN_0200B190
	pop {r4, pc}
	thumb_func_end ov73_021D1300

	thumb_func_start ov73_021D1318
ov73_021D1318: @ 0x021D1318
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02015920
	str r0, [r4, #0x68]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021D1318

	thumb_func_start ov73_021D1328
ov73_021D1328: @ 0x021D1328
	ldr r3, _021D1330 @ =FUN_02015938
	ldr r0, [r0, #0x68]
	bx r3
	nop
_021D1330: .4byte FUN_02015938
	thumb_func_end ov73_021D1328

	thumb_func_start ov73_021D1334
ov73_021D1334: @ 0x021D1334
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r3, r0, #0
	adds r6, r2, #0
	movs r5, #0
	cmp r4, #6
	bhi _021D135E
	adds r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D1350: @ jump table
	.2byte _021D135E - _021D1350 - 2 @ case 0
	.2byte _021D1364 - _021D1350 - 2 @ case 1
	.2byte _021D136A - _021D1350 - 2 @ case 2
	.2byte _021D135E - _021D1350 - 2 @ case 3
	.2byte _021D1370 - _021D1350 - 2 @ case 4
	.2byte _021D1376 - _021D1350 - 2 @ case 5
	.2byte _021D137C - _021D1350 - 2 @ case 6
_021D135E:
	movs r1, #1
	movs r0, #0
	b _021D1380
_021D1364:
	movs r1, #2
	adds r0, r5, #0
	b _021D1380
_021D136A:
	movs r1, #4
	adds r0, r5, #0
	b _021D1380
_021D1370:
	movs r1, #1
	adds r0, r1, #0
	b _021D1380
_021D1376:
	movs r1, #2
	movs r0, #1
	b _021D1380
_021D137C:
	movs r1, #4
	movs r0, #1
_021D1380:
	ldr r2, [r3, #0x78]
	cmp r2, #3
	bls _021D1388
	b _021D14AA
_021D1388:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D1394: @ jump table
	.2byte _021D139C - _021D1394 - 2 @ case 0
	.2byte _021D13F8 - _021D1394 - 2 @ case 1
	.2byte _021D1448 - _021D1394 - 2 @ case 2
	.2byte _021D149C - _021D1394 - 2 @ case 3
_021D139C:
	cmp r6, #0
	bne _021D13E6
	movs r2, #0
	str r2, [r3, #0x7c]
	adds r2, r3, #0
	movs r6, #0x10
	adds r2, #0x80
	str r6, [r2]
	movs r2, #1
	str r2, [r3, #0x78]
	cmp r0, #0
	bne _021D13C8
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B0 @ =0x04000050
	ldr r3, [r3, #0x7c]
	blx FUN_020BF55C
	b _021D13DA
_021D13C8:
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B4 @ =0x04001050
	ldr r3, [r3, #0x7c]
	blx FUN_020BF55C
_021D13DA:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl FUN_02019120
	b _021D14AA
_021D13E6:
	movs r0, #0x10
	str r0, [r3, #0x7c]
	adds r0, r3, #0
	movs r1, #0
	adds r0, #0x80
	str r1, [r0]
	movs r0, #2
	str r0, [r3, #0x78]
	b _021D14AA
_021D13F8:
	adds r2, r3, #0
	adds r2, #0x80
	ldr r2, [r2]
	cmp r2, #0
	beq _021D1442
	ldr r2, [r3, #0x7c]
	adds r2, r2, #1
	str r2, [r3, #0x7c]
	adds r2, r3, #0
	adds r2, #0x80
	ldr r2, [r2]
	subs r4, r2, #1
	adds r2, r3, #0
	adds r2, #0x80
	str r4, [r2]
	cmp r0, #0
	bne _021D142E
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B0 @ =0x04000050
	ldr r3, [r3, #0x7c]
	blx FUN_020BF55C
	b _021D14AA
_021D142E:
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B4 @ =0x04001050
	ldr r3, [r3, #0x7c]
	blx FUN_020BF55C
	b _021D14AA
_021D1442:
	movs r0, #3
	str r0, [r3, #0x78]
	b _021D14AA
_021D1448:
	ldr r2, [r3, #0x7c]
	cmp r2, #0
	beq _021D148C
	subs r2, r2, #1
	str r2, [r3, #0x7c]
	adds r2, r3, #0
	adds r2, #0x80
	ldr r2, [r2]
	adds r4, r2, #1
	adds r2, r3, #0
	adds r2, #0x80
	str r4, [r2]
	cmp r0, #0
	bne _021D1478
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B0 @ =0x04000050
	ldr r3, [r3, #0x7c]
	blx FUN_020BF55C
	b _021D14AA
_021D1478:
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r2, #0xe
	str r0, [sp]
	ldr r0, _021D14B4 @ =0x04001050
	ldr r3, [r3, #0x7c]
	blx FUN_020BF55C
	b _021D14AA
_021D148C:
	movs r0, #3
	str r0, [r3, #0x78]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl FUN_02019120
	b _021D14AA
_021D149C:
	ldr r0, _021D14B0 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _021D14B4 @ =0x04001050
	movs r5, #1
	strh r1, [r0]
	str r1, [r3, #0x78]
_021D14AA:
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D14B0: .4byte 0x04000050
_021D14B4: .4byte 0x04001050
	thumb_func_end ov73_021D1334

	thumb_func_start ov73_021D14B8
ov73_021D14B8: @ 0x021D14B8
	adds r2, r0, #0
	adds r2, #0x90
	ldr r2, [r2]
	cmp r2, r1
	bge _021D14D2
	adds r1, r0, #0
	adds r1, #0x90
	ldr r1, [r1]
	adds r0, #0x90
	adds r1, r1, #1
	str r1, [r0]
	movs r0, #0
	bx lr
_021D14D2:
	movs r1, #0
	adds r0, #0x90
	str r1, [r0]
	movs r0, #1
	bx lr
	thumb_func_end ov73_021D14B8

	thumb_func_start ov73_021D14DC
ov73_021D14DC: @ 0x021D14DC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	lsls r0, r2, #0x18
	adds r4, r1, #0
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsls r1, r4, #0x18
	movs r2, #0
	ldr r0, [r5, #0x18]
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019E2C
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x18]
	lsrs r1, r1, #0x18
	bl FUN_02019448
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021D14DC

	thumb_func_start ov73_021D1510
ov73_021D1510: @ 0x021D1510
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	adds r7, r1, #0
	movs r4, #0
	cmp r0, #0
	beq _021D152A
	cmp r0, #1
	beq _021D15E8
	cmp r0, #2
	beq _021D1602
	b _021D1620
_021D152A:
	adds r1, r5, #0
	ldr r0, [r5, #0x18]
	ldr r2, _021D1628 @ =0x021D37EC
	adds r1, #0x1c
	bl FUN_0201A8D4
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r4, #0
	adds r0, #0x1c
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	adds r0, r5, #0
	ldr r2, _021D162C @ =0x000003E2
	adds r0, #0x1c
	adds r1, r4, #0
	movs r3, #4
	bl FUN_0200E060
	movs r0, #1
	bl FUN_02002AC8
	adds r0, r4, #0
	bl FUN_02002AE4
	movs r0, #1
	ldr r1, [r5]
	lsls r0, r0, #0xa
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #1
	ldr r1, [r5]
	lsls r0, r0, #0xa
	bl FUN_02023790
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x4c]
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x84
	ldr r0, [r5, #0x64]
	ldr r2, [r2, #0x18]
	ldr r3, [r3]
	adds r1, r4, #0
	bl FUN_0200B48C
	movs r1, #1
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #0x74]
	ldr r0, [r5, #0x64]
	ldr r2, [r2, #0x18]
	adds r3, r4, #0
	bl FUN_0200B48C
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x5c]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [r5, #8]
	bl FUN_02027AC0
	adds r3, r4, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x5c]
	adds r0, #0x1c
	movs r1, #1
	bl FUN_0201D738
	str r0, [r5, #0x58]
	movs r0, #1
	str r0, [r5, #0x50]
	b _021D1620
_021D15E8:
	ldr r0, [r5, #0x58]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D1620
	ldr r0, [r5, #0x5c]
	bl FUN_020237BC
	movs r0, #2
	str r0, [r5, #0x50]
	b _021D1620
_021D1602:
	cmp r2, #0
	bne _021D1612
	ldr r0, _021D1630 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	ands r0, r1
	cmp r0, #1
	bne _021D1620
_021D1612:
	adds r0, r5, #0
	adds r0, #0x1c
	bl FUN_0201A8FC
	movs r0, #0
	str r0, [r5, #0x50]
	movs r4, #1
_021D1620:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D1628: .4byte 0x021D37EC
_021D162C: .4byte 0x000003E2
_021D1630: .4byte 0x021BF67C
	thumb_func_end ov73_021D1510

	thumb_func_start ov73_021D1634
ov73_021D1634: @ 0x021D1634
	push {r3, lr}
	cmp r2, #0
	bne _021D1640
	ldr r0, _021D1644 @ =0x000005DC
	bl FUN_02005748
_021D1640:
	pop {r3, pc}
	nop
_021D1644: .4byte 0x000005DC
	thumb_func_end ov73_021D1634

	thumb_func_start ov73_021D1648
ov73_021D1648: @ 0x021D1648
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	adds r4, r2, #0
	cmp r0, #0
	beq _021D1660
	cmp r0, #1
	beq _021D170A
	b _021D1754
_021D1660:
	cmp r1, #0
	beq _021D166C
	cmp r1, #1
	beq _021D1674
	cmp r1, #2
	beq _021D167C
_021D166C:
	ldr r2, _021D175C @ =0x021D37C4
	ldr r4, _021D1760 @ =0x021D3840
	movs r7, #2
	b _021D1682
_021D1674:
	ldr r2, _021D1764 @ =0x021D37DC
	ldr r4, _021D1768 @ =0x021D38A4
	movs r7, #3
	b _021D1682
_021D167C:
	ldr r2, _021D176C @ =0x021D37CC
	ldr r4, _021D1770 @ =0x021D3954
	movs r7, #5
_021D1682:
	adds r1, r5, #0
	ldr r0, [r5, #0x18]
	adds r1, #0x30
	bl FUN_0201A8D4
	ldr r1, [r5]
	adds r0, r7, #0
	bl FUN_02013A04
	movs r6, #0
	str r0, [r5, #0x44]
	cmp r7, #0
	ble _021D16B0
_021D169C:
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl FUN_02013A4C
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r7
	blt _021D169C
_021D16B0:
	ldr r4, _021D1774 @ =0x021D390C
	add r3, sp, #4
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5, #0x44]
	str r0, [sp, #4]
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	add r0, sp, #4
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldr r0, _021D1778 @ =ov73_021D1634
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x30
	str r0, [sp, #0x10]
	ldr r3, [r5]
	adds r0, r2, #0
	lsls r3, r3, #0x18
	adds r2, r1, #0
	lsrs r3, r3, #0x18
	bl FUN_0200112C
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x10]
	ldr r2, _021D177C @ =0x000003D9
	movs r1, #1
	movs r3, #3
	bl FUN_0200DC48
	adds r0, r5, #0
	adds r0, #0x30
	bl FUN_0201A954
	movs r0, #1
	str r0, [r5, #0x2c]
	b _021D1754
_021D170A:
	ldr r0, [r5, #0x40]
	bl FUN_02001288
	movs r1, #0
	mvns r1, r1
	str r0, [r5, #0x48]
	cmp r0, r1
	beq _021D1754
	subs r1, r1, #1
	cmp r0, r1
	bne _021D1724
	cmp r4, #1
	beq _021D1754
_021D1724:
	adds r0, r5, #0
	adds r0, #0x30
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r5, #0
	adds r0, #0x30
	bl FUN_0201A8FC
	movs r1, #0
	ldr r0, [r5, #0x40]
	adds r2, r1, #0
	bl FUN_02001384
	ldr r0, [r5, #0x44]
	bl FUN_02013A3C
	ldr r0, _021D1780 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0
	str r0, [r5, #0x2c]
	movs r0, #1
	str r0, [sp]
_021D1754:
	ldr r0, [sp]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021D175C: .4byte 0x021D37C4
_021D1760: .4byte 0x021D3840
_021D1764: .4byte 0x021D37DC
_021D1768: .4byte 0x021D38A4
_021D176C: .4byte 0x021D37CC
_021D1770: .4byte 0x021D3954
_021D1774: .4byte 0x021D390C
_021D1778: .4byte ov73_021D1634
_021D177C: .4byte 0x000003D9
_021D1780: .4byte 0x000005DC
	thumb_func_end ov73_021D1648

	thumb_func_start ov73_021D1784
ov73_021D1784: @ 0x021D1784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x54]
	adds r5, r2, #0
	adds r6, r3, #0
	movs r7, #0
	cmp r1, #5
	bls _021D179A
	b _021D1914
_021D179A:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D17A6: @ jump table
	.2byte _021D17B2 - _021D17A6 - 2 @ case 0
	.2byte _021D18B0 - _021D17A6 - 2 @ case 1
	.2byte _021D18BC - _021D17A6 - 2 @ case 2
	.2byte _021D18CE - _021D17A6 - 2 @ case 3
	.2byte _021D18EE - _021D17A6 - 2 @ case 4
	.2byte _021D1900 - _021D17A6 - 2 @ case 5
_021D17B2:
	adds r0, r7, #0
	adds r1, r7, #0
	bl FUN_02019120
	movs r0, #1
	ldr r1, [r4]
	lsls r0, r0, #0xa
	bl FUN_02023790
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x4c]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x5c]
	bl FUN_0200B1B8
	cmp r5, #1
	add r0, sp, #0x14
	bne _021D1834
	ldr r1, _021D191C @ =0x021D37C4
	ldrh r2, [r1, #0x10]
	strh r2, [r0]
	ldrh r2, [r1, #0x12]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x14]
	ldrh r1, [r1, #0x16]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #0x5c]
	bl FUN_02023C5C
	movs r1, #0xc
	subs r2, r1, r0
	add r1, sp, #0x14
	strb r2, [r1, #2]
	lsls r0, r0, #1
	strb r0, [r1, #4]
	adds r1, r4, #0
	ldr r0, [r4, #0x18]
	adds r1, #0x1c
	add r2, sp, #0x14
	bl FUN_0201A8D4
	adds r1, r7, #0
	movs r0, #0xc0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x1c
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	adds r1, r7, #0
	str r1, [sp]
	ldr r0, _021D1920 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x5c]
	adds r0, #0x1c
	adds r3, r1, #0
	bl FUN_0201D78C
	b _021D18A4
_021D1834:
	ldr r1, _021D191C @ =0x021D37C4
	cmp r5, #2
	ldrh r2, [r1, #0x20]
	strh r2, [r0]
	ldrh r2, [r1, #0x22]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	bne _021D1866
	ldr r0, [r4, #0x5c]
	bl FUN_02023C5C
	ldr r2, [sp, #0x30]
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	adds r1, r6, r1
	subs r2, r1, r0
	add r1, sp, #0x14
	strb r2, [r1, #2]
	lsls r0, r0, #1
	strb r0, [r1, #4]
	b _021D186C
_021D1866:
	ldr r1, [sp, #0x30]
	strb r6, [r0, #2]
	strb r1, [r0, #4]
_021D186C:
	adds r1, r4, #0
	ldr r0, [r4, #0x18]
	adds r1, #0x1c
	add r2, sp, #0x14
	bl FUN_0201A8D4
	movs r1, #0
	movs r0, #0xc0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x1c
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #0
	str r1, [sp]
	ldr r0, _021D1924 @ =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x5c]
	adds r0, #0x1c
	adds r3, r1, #0
	bl FUN_0201D78C
_021D18A4:
	ldr r0, [r4, #0x5c]
	bl FUN_020237BC
	movs r0, #1
	str r0, [r4, #0x54]
	b _021D1914
_021D18B0:
	adds r0, #0x1c
	bl FUN_0201A954
	movs r0, #2
	str r0, [r4, #0x54]
	b _021D1914
_021D18BC:
	adds r1, r7, #0
	adds r2, r7, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D1914
	movs r0, #3
	str r0, [r4, #0x54]
	b _021D1914
_021D18CE:
	ldr r0, _021D1928 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	ands r0, r1
	cmp r0, #1
	beq _021D18E2
	movs r0, #2
	ands r0, r1
	cmp r0, #2
	bne _021D1914
_021D18E2:
	ldr r0, _021D192C @ =0x000005DC
	bl FUN_02005748
	movs r0, #4
	str r0, [r4, #0x54]
	b _021D1914
_021D18EE:
	adds r1, r7, #0
	movs r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D1914
	movs r0, #5
	str r0, [r4, #0x54]
	b _021D1914
_021D1900:
	adds r0, #0x1c
	bl FUN_0201A8FC
	ldr r0, [r4, #0x18]
	adds r1, r7, #0
	bl FUN_02019EBC
	adds r0, r7, #0
	str r0, [r4, #0x54]
	movs r7, #1
_021D1914:
	adds r0, r7, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D191C: .4byte 0x021D37C4
_021D1920: .4byte 0x00010200
_021D1924: .4byte 0x000F0200
_021D1928: .4byte 0x021BF67C
_021D192C: .4byte 0x000005DC
	thumb_func_end ov73_021D1784

	thumb_func_start ov73_021D1930
ov73_021D1930: @ 0x021D1930
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	adds r5, r0, #0
	str r1, [sp, #8]
	ldr r0, [r5]
	movs r3, #3
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x18]
	movs r0, #0x7d
	bl FUN_02006E3C
	movs r0, #0
	ldr r3, [r5]
	movs r1, #0x20
	adds r2, r0, #0
	bl FUN_02019690
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	movs r1, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x18]
	movs r0, #0x7d
	movs r3, #7
	bl FUN_02006E3C
	ldr r0, _021D19D8 @ =0x020E4C40
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _021D197E
	movs r1, #3
	movs r4, #0x1b
	b _021D198C
_021D197E:
	cmp r0, #0xa
	bne _021D1988
	movs r1, #1
	movs r4, #0x19
	b _021D198C
_021D1988:
	movs r1, #2
	movs r4, #0x1a
_021D198C:
	movs r0, #0x60
	str r0, [sp]
	ldr r0, [r5]
	movs r2, #0
	str r0, [sp, #4]
	movs r0, #0x7d
	adds r3, r2, #0
	bl FUN_02006E84
	movs r0, #0xa0
	str r0, [sp]
	ldr r0, [r5]
	adds r1, r4, #0
	str r0, [sp, #4]
	movs r0, #0x7d
	movs r2, #4
	movs r3, #0
	bl FUN_02006E84
	adds r0, r5, #0
	bl ov73_021D19DC
	adds r0, r5, #0
	bl ov73_021D1A20
	adds r0, r5, #0
	bl ov73_021D1B14
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D19D8: .4byte 0x020E4C40
	thumb_func_end ov73_021D1930

	thumb_func_start ov73_021D19DC
ov73_021D19DC: @ 0x021D19DC
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r5, _021D1A1C @ =0x021D3850
	adds r3, r0, #0
	ldm r5!, {r0, r1}
	add r4, sp, #0x10
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	adds r0, r3, #0
	adds r0, #0x88
	ldrb r1, [r0]
	cmp r1, #5
	bhs _021D1A18
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r3]
	lsls r1, r1, #2
	str r0, [sp, #0xc]
	ldr r1, [r2, r1]
	ldr r2, [r3, #0x18]
	movs r0, #0x7d
	movs r3, #3
	bl FUN_02006E60
_021D1A18:
	add sp, #0x24
	pop {r4, r5, pc}
	.align 2, 0
_021D1A1C: .4byte 0x021D3850
	thumb_func_end ov73_021D19DC

	thumb_func_start ov73_021D1A20
ov73_021D1A20: @ 0x021D1A20
	push {r3, r4, r5, lr}
	sub sp, #0x68
	ldr r5, _021D1B10 @ =0x021D397C
	adds r4, r0, #0
	add r3, sp, #0x10
	movs r2, #0xb
_021D1A2C:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1A2C
	adds r0, r4, #0
	adds r0, #0x89
	ldrb r1, [r0]
	cmp r1, #0
	beq _021D1A9E
	cmp r1, #0xc
	bhs _021D1A9E
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	lsls r2, r1, #3
	str r0, [sp, #0xc]
	add r1, sp, #0x10
	ldr r1, [r1, r2]
	ldr r2, [r4, #0x18]
	movs r0, #0x7d
	movs r3, #1
	bl FUN_02006E3C
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [r4]
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r1, #0x89
	ldrb r1, [r1]
	movs r0, #0x7d
	movs r3, #0xe0
	lsls r2, r1, #3
	add r1, sp, #0x14
	ldr r1, [r1, r2]
	movs r2, #0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0x17
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	movs r0, #0x7d
	movs r3, #1
	bl FUN_02006E60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #7
	bl ov73_021D14DC
_021D1A9E:
	adds r0, r4, #0
	adds r0, #0x8a
	ldrb r1, [r0]
	cmp r1, #0
	beq _021D1B0A
	cmp r1, #0xc
	bhs _021D1B0A
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	lsls r2, r1, #3
	str r0, [sp, #0xc]
	add r1, sp, #0x10
	ldr r1, [r1, r2]
	ldr r2, [r4, #0x18]
	movs r0, #0x7d
	movs r3, #2
	bl FUN_02006E3C
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [r4]
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r1, #0x8a
	ldrb r1, [r1]
	movs r0, #0x7d
	adds r3, r0, #0
	lsls r2, r1, #3
	add r1, sp, #0x14
	ldr r1, [r1, r2]
	movs r2, #0
	adds r3, #0x83
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0x17
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	movs r0, #0x7d
	movs r3, #2
	bl FUN_02006E60
	adds r0, r4, #0
	movs r1, #2
	movs r2, #8
	bl ov73_021D14DC
_021D1B0A:
	add sp, #0x68
	pop {r3, r4, r5, pc}
	nop
_021D1B10: .4byte 0x021D397C
	thumb_func_end ov73_021D1A20

	thumb_func_start ov73_021D1B14
ov73_021D1B14: @ 0x021D1B14
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r5, _021D1B7C @ =0x021D3878
	adds r4, r0, #0
	ldm r5!, {r0, r1}
	add r3, sp, #0x10
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	cmp r1, #5
	bhs _021D1B76
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	lsls r1, r1, #2
	str r0, [sp, #0xc]
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x18]
	movs r0, #0x7d
	movs r3, #7
	bl FUN_02006E60
	adds r0, r4, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D1B68
	adds r0, r4, #0
	movs r1, #7
	movs r2, #3
	bl ov73_021D14DC
	add sp, #0x24
	pop {r4, r5, pc}
_021D1B68:
	cmp r0, #2
	bne _021D1B76
	adds r0, r4, #0
	movs r1, #7
	movs r2, #2
	bl ov73_021D14DC
_021D1B76:
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D1B7C: .4byte 0x021D3878
	thumb_func_end ov73_021D1B14

	thumb_func_start ov73_021D1B80
ov73_021D1B80: @ 0x021D1B80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	adds r5, r0, #0
	ldr r1, _021D1CD4 @ =0x000001AB
	str r2, [sp, #8]
	add r0, sp, #0x10
	movs r3, #2
	bl FUN_02075FB4
	ldr r0, [r5]
	movs r1, #0xc8
	bl FUN_02018144
	adds r7, r0, #0
	ldr r2, _021D1CD8 @ =0x021D39D4
	movs r1, #0
	adds r3, r7, #0
_021D1BA8:
	ldrb r0, [r2]
	adds r1, r1, #1
	adds r2, r2, #1
	adds r0, r0, #1
	strh r0, [r3]
	adds r3, r3, #2
	cmp r1, #0x64
	blt _021D1BA8
	add r1, sp, #0x10
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, [r5]
	bl FUN_0201363C
	add r1, sp, #0x10
	adds r6, r0, #0
	ldrh r0, [r1]
	ldrh r1, [r1, #4]
	ldr r2, [r5]
	bl FUN_02013660
	adds r1, r5, #0
	adds r1, #0xb8
	ldr r1, [r1]
	movs r2, #0x20
	adds r4, r0, #0
	blx FUN_020C4B68
	ldr r0, _021D1CDC @ =0x00006A3C
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	movs r2, #1
	movs r3, #0x10
	bl FUN_020039F8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r0, #9
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	movs r1, #2
	adds r2, r7, #0
	movs r3, #0xb
	bl FUN_020198C0
	adds r0, r5, #0
	movs r1, #2
	movs r2, #8
	bl ov73_021D14DC
	ldr r3, [r5]
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	movs r0, #1
	str r0, [sp]
	movs r3, #0x32
	ldr r0, [r5, #0x18]
	movs r1, #2
	adds r2, r6, #0
	lsls r3, r3, #6
	bl FUN_0201958C
	movs r2, #0x20
	adds r3, r2, #0
	movs r0, #2
	adds r1, r4, #0
	adds r3, #0xe0
	bl FUN_0201972C
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r0, #7
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	movs r1, #5
	adds r2, r7, #0
	movs r3, #0xb
	bl FUN_020198C0
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0xa
	bl ov73_021D14DC
	ldr r3, [r5]
	movs r0, #5
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	movs r0, #1
	str r0, [sp]
	movs r3, #0x32
	ldr r0, [r5, #0x18]
	movs r1, #5
	adds r2, r6, #0
	lsls r3, r3, #6
	bl FUN_0201958C
	movs r0, #5
	adds r1, r4, #0
	movs r2, #0x20
	lsls r3, r0, #6
	bl FUN_0201972C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r7, #0
	bl FUN_020181C4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1CD4: .4byte 0x000001AB
_021D1CD8: .4byte 0x021D39D4
_021D1CDC: .4byte 0x00006A3C
	thumb_func_end ov73_021D1B80

	thumb_func_start ov73_021D1CE0
ov73_021D1CE0: @ 0x021D1CE0
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0x28
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	movs r0, #0x7d
	movs r3, #6
	bl FUN_02006E60
	adds r0, r4, #0
	movs r1, #6
	movs r2, #9
	bl ov73_021D14DC
	movs r0, #0x60
	str r0, [sp]
	ldr r0, [r4]
	movs r1, #0x29
	str r0, [sp, #4]
	movs r0, #0x7d
	movs r2, #4
	movs r3, #0xe0
	bl FUN_02006E84
	ldr r3, [r4]
	movs r0, #6
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	movs r1, #0x20
	str r1, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r3, #6
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	movs r0, #0x7d
	bl FUN_02006E3C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov73_021D1CE0

	thumb_func_start ov73_021D1D44
ov73_021D1D44: @ 0x021D1D44
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	cmp r2, #0
	bne _021D1D80
	ldr r0, [r5, #0x18]
	bl FUN_020192EC
	cmp r0, #0
	beq _021D1D7C
	cmp r0, #0
	ldr r0, [r5, #0x18]
	ble _021D1D6E
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r2, #2
	movs r3, #4
	bl FUN_02019184
	b _021D1DC6
_021D1D6E:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	movs r3, #4
	bl FUN_02019184
	b _021D1DC6
_021D1D7C:
	movs r6, #1
	b _021D1DC6
_021D1D80:
	cmp r2, #1
	bne _021D1DA6
	ldr r0, [r5, #0x18]
	bl FUN_020192EC
	adds r1, r6, #0
	subs r1, #0x30
	cmp r0, r1
	beq _021D1DA2
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x18]
	lsrs r1, r1, #0x18
	movs r2, #2
	movs r3, #4
	bl FUN_02019184
	b _021D1DC6
_021D1DA2:
	movs r6, #1
	b _021D1DC6
_021D1DA6:
	cmp r2, #2
	bne _021D1DC6
	ldr r0, [r5, #0x18]
	bl FUN_020192EC
	cmp r0, #0
	beq _021D1DC4
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x18]
	lsrs r1, r1, #0x18
	movs r2, #1
	movs r3, #4
	bl FUN_02019184
	b _021D1DC6
_021D1DC4:
	movs r6, #1
_021D1DC6:
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov73_021D1D44

	thumb_func_start ov73_021D1DCC
ov73_021D1DCC: @ 0x021D1DCC
	adds r1, r0, #0
	movs r2, #0
	adds r1, #0x8c
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x8d
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x8e
	strb r2, [r1]
	adds r0, #0x8f
	strb r2, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov73_021D1DCC

	thumb_func_start ov73_021D1DE8
ov73_021D1DE8: @ 0x021D1DE8
	push {r3, r4, r5, lr}
	sub sp, #0x30
	adds r4, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021D1E72
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D1E0A
	adds r0, r4, #0
	adds r0, #0x8d
	ldrb r0, [r0]
	subs r1, r0, #1
	b _021D1E2A
_021D1E0A:
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x8c
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x8c
	strb r1, [r0]
	movs r1, #4
_021D1E2A:
	adds r0, r4, #0
	adds r0, #0x8d
	strb r1, [r0]
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _021D1EF0 @ =0x04000050
	movs r1, #4
	movs r2, #8
	movs r3, #6
	blx FUN_020BF55C
	ldr r5, _021D1EF4 @ =0x021D3800
	add r3, sp, #0x20
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	adds r1, r4, #0
	str r0, [sp, #0xc]
	adds r1, #0x8c
	ldrb r1, [r1]
	movs r0, #0x7d
	movs r3, #1
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x18]
	bl FUN_02006E3C
	add sp, #0x30
	pop {r3, r4, r5, pc}
_021D1E72:
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D1E86
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	subs r1, r0, #1
	b _021D1EA6
_021D1E86:
	adds r0, r4, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x8e
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x8e
	strb r1, [r0]
	movs r1, #4
_021D1EA6:
	adds r0, r4, #0
	adds r0, #0x8f
	strb r1, [r0]
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _021D1EF0 @ =0x04000050
	movs r1, #2
	movs r2, #8
	movs r3, #6
	blx FUN_020BF55C
	ldr r5, _021D1EF8 @ =0x021D3830
	add r3, sp, #0x10
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	adds r1, r4, #0
	str r0, [sp, #0xc]
	adds r1, #0x8e
	ldrb r1, [r1]
	movs r0, #0x7d
	movs r3, #2
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x18]
	bl FUN_02006E3C
	add sp, #0x30
	pop {r3, r4, r5, pc}
	nop
_021D1EF0: .4byte 0x04000050
_021D1EF4: .4byte 0x021D3800
_021D1EF8: .4byte 0x021D3830
	thumb_func_end ov73_021D1DE8

	thumb_func_start ov73_021D1EFC
ov73_021D1EFC: @ 0x021D1EFC
	ldr r0, _021D1F04 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_021D1F04: .4byte 0x04000050
	thumb_func_end ov73_021D1EFC

	thumb_func_start ov73_021D1F08
ov73_021D1F08: @ 0x021D1F08
	adds r1, r0, #0
	movs r2, #0
	adds r1, #0x94
	str r2, [r1]
	adds r0, #0x98
	str r2, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov73_021D1F08

	thumb_func_start ov73_021D1F18
ov73_021D1F18: @ 0x021D1F18
	push {r4, r5, r6, lr}
	sub sp, #0x40
	adds r3, r0, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r4, #0
	cmp r0, #0
	beq _021D1F32
	adds r0, r3, #0
	adds r0, #0x98
	ldr r0, [r0]
	subs r1, r0, #1
	b _021D1F42
_021D1F32:
	adds r0, r3, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r3, #0
	adds r0, #0x94
	str r1, [r0]
	movs r1, #8
_021D1F42:
	adds r0, r3, #0
	adds r0, #0x98
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021D1F58
	ldr r6, _021D1F98 @ =0x021D38BC
	add r5, sp, #0x28
	b _021D1F5C
_021D1F58:
	ldr r6, _021D1F9C @ =0x021D388C
	add r5, sp, #0x10
_021D1F5C:
	adds r2, r5, #0
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	adds r0, r3, #0
	adds r0, #0x94
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0xff
	bne _021D1F7C
	movs r4, #1
	b _021D1F92
_021D1F7C:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r3]
	str r0, [sp, #0xc]
	ldr r2, [r3, #0x18]
	movs r0, #0x7d
	movs r3, #1
	bl FUN_02006E3C
_021D1F92:
	adds r0, r4, #0
	add sp, #0x40
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D1F98: .4byte 0x021D38BC
_021D1F9C: .4byte 0x021D388C
	thumb_func_end ov73_021D1F18

	thumb_func_start ov73_021D1FA0
ov73_021D1FA0: @ 0x021D1FA0
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021D2004
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xb4
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	movs r1, #3
	blx FUN_020E1F6C
	adds r3, r0, #0
	ldr r0, _021D2008 @ =0x00006A3C
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xb8
	adds r1, #0xbc
	lsls r3, r3, #0x18
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #1
	lsrs r3, r3, #0x18
	bl FUN_020039F8
	adds r1, r4, #0
	adds r1, #0xbc
	movs r2, #0x20
	adds r3, r2, #0
	ldr r1, [r1]
	movs r0, #2
	adds r3, #0xe0
	bl FUN_0201972C
	adds r4, #0xbc
	movs r0, #5
	ldr r1, [r4]
	movs r2, #0x20
	lsls r3, r0, #6
	bl FUN_0201972C
_021D2004:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021D2008: .4byte 0x00006A3C
	thumb_func_end ov73_021D1FA0

	thumb_func_start ov73_021D200C
ov73_021D200C: @ 0x021D200C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	movs r7, #0
	cmp r0, #6
	bls _021D201C
	b _021D22FC
_021D201C:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2028: @ jump table
	.2byte _021D2036 - _021D2028 - 2 @ case 0
	.2byte _021D2084 - _021D2028 - 2 @ case 1
	.2byte _021D2104 - _021D2028 - 2 @ case 2
	.2byte _021D2142 - _021D2028 - 2 @ case 3
	.2byte _021D21E0 - _021D2028 - 2 @ case 4
	.2byte _021D2274 - _021D2028 - 2 @ case 5
	.2byte _021D22F2 - _021D2028 - 2 @ case 6
_021D2036:
	ldr r0, [r4, #0x18]
	movs r1, #2
	adds r2, r7, #0
	adds r3, r7, #0
	bl FUN_02019184
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x18]
	movs r1, #2
	subs r3, #0x6b
	bl FUN_02019184
	movs r0, #2
	adds r1, r7, #0
	bl FUN_02019060
	movs r0, #5
	movs r1, #1
	bl FUN_02019120
	adds r1, r4, #0
	adds r0, r7, #0
	adds r1, #0xa8
	str r0, [r1]
	adds r1, r4, #0
	movs r2, #8
	adds r1, #0xac
	str r2, [r1]
	adds r1, r4, #0
	adds r1, #0xb0
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0x30
	adds r0, #0xb4
	str r1, [r0]
	movs r0, #1
	str r0, [r5]
	b _021D22FC
_021D2084:
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_020192EC
	ldr r0, [r4, #0x18]
	movs r1, #5
	bl FUN_020192F8
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r3, [r1]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r2, [r1]
	lsls r1, r2, #3
	adds r1, r2, r1
	adds r2, r3, #0
	muls r2, r1, r2
	lsls r1, r3, #3
	adds r1, r3, r1
	muls r1, r3, r1
	lsrs r3, r1, #0x1f
	adds r3, r1, r3
	asrs r1, r3, #1
	subs r6, r2, r1
	cmp r0, #0x58
	bge _021D20EE
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r2, #1
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xb0
	str r1, [r0]
	movs r1, #2
	ldr r0, [r4, #0x18]
	adds r3, r1, #0
	bl FUN_02019184
	ldr r0, [r4, #0x18]
	movs r1, #5
	movs r2, #1
	movs r3, #2
	bl FUN_02019184
	ldr r0, [r4, #0x18]
	movs r1, #5
	movs r2, #3
	adds r3, r6, #0
	bl FUN_02019184
	b _021D22FC
_021D20EE:
	movs r0, #5
	adds r1, r7, #0
	bl FUN_02019120
	adds r0, r4, #0
	adds r1, r7, #0
	adds r0, #0xb0
	str r1, [r0]
	movs r0, #2
	str r0, [r5]
	b _021D22FC
_021D2104:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021D211E
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xb0
	str r1, [r0]
	b _021D22FC
_021D211E:
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	adds r1, r4, #0
	adds r0, r7, #0
	adds r1, #0xa8
	str r0, [r1]
	adds r1, r4, #0
	movs r2, #9
	adds r1, #0xac
	str r2, [r1]
	adds r1, r4, #0
	adds r1, #0xb0
	str r0, [r1]
	movs r0, #3
	str r0, [r5]
	b _021D22FC
_021D2142:
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_020192EC
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_020192F8
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r2, [r0]
	lsls r0, r2, #3
	adds r0, r2, r0
	lsls r2, r1, #3
	adds r2, r1, r2
	muls r0, r1, r0
	muls r2, r1, r2
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	subs r0, #0x68
	asrs r1, r1, #1
	subs r6, r0, r1
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	ble _021D21AA
	cmp r6, #0
	bgt _021D21AA
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r2, #3
	adds r3, r7, #0
	bl FUN_02019184
	adds r1, r4, #0
	adds r0, r7, #0
	adds r1, #0xa8
	str r0, [r1]
	adds r1, r4, #0
	movs r2, #3
	adds r1, #0xac
	str r2, [r1]
	adds r1, r4, #0
	adds r1, #0xb0
	str r0, [r1]
	movs r0, #4
	str r0, [r5]
	b _021D22FC
_021D21AA:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r2, #1
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xb0
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa8
	str r6, [r0]
	ldr r0, [r4, #0x18]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	asrs r6, r6, #1
	cmp r6, #0x90
	ble _021D21D2
	movs r6, #0x90
_021D21D2:
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r2, #3
	adds r3, r6, #0
	bl FUN_02019184
	b _021D22FC
_021D21E0:
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_020192EC
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_020192F8
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r6, [r0]
	movs r1, #3
	lsls r0, r6, #3
	adds r0, r6, r0
	muls r0, r6, r0
	blx FUN_020E1F6C
	adds r1, r4, #0
	adds r1, #0xac
	ldr r2, [r1]
	lsls r1, r2, #3
	adds r1, r2, r1
	muls r1, r6, r1
	subs r6, r1, r0
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	ble _021D2246
	cmp r6, #0
	bgt _021D2246
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r2, #3
	adds r3, r7, #0
	bl FUN_02019184
	adds r1, r4, #0
	adds r0, r7, #0
	adds r1, #0xa8
	str r0, [r1]
	adds r1, r4, #0
	movs r2, #3
	adds r1, #0xac
	str r2, [r1]
	adds r1, r4, #0
	adds r1, #0xb0
	str r0, [r1]
	movs r0, #5
	str r0, [r5]
	b _021D22FC
_021D2246:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xb0
	str r1, [r0]
	movs r1, #2
	ldr r0, [r4, #0x18]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019184
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r2, #3
	adds r3, r6, #0
	bl FUN_02019184
	adds r0, r4, #0
	adds r0, #0xa8
	str r6, [r0]
	b _021D22FC
_021D2274:
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_020192EC
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_020192F8
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r6, [r0]
	movs r1, #3
	lsls r0, r6, #3
	adds r0, r6, r0
	muls r0, r6, r0
	blx FUN_020E1F6C
	adds r1, r4, #0
	adds r1, #0xac
	ldr r2, [r1]
	lsls r1, r2, #3
	adds r1, r2, r1
	muls r1, r6, r1
	subs r6, r1, r0
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	ble _021D22C4
	cmp r6, #0
	bgt _021D22C4
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r2, #3
	adds r3, r7, #0
	bl FUN_02019184
	movs r0, #6
	str r0, [r5]
	b _021D22FC
_021D22C4:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	movs r2, #1
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xb0
	str r1, [r0]
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r3, #4
	bl FUN_02019184
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r2, #3
	adds r3, r6, #0
	bl FUN_02019184
	adds r0, r4, #0
	adds r0, #0xa8
	str r6, [r0]
	b _021D22FC
_021D22F2:
	ldr r0, _021D2308 @ =0x000001AB
	adds r1, r7, #0
	bl FUN_02005844
	movs r7, #1
_021D22FC:
	adds r0, r4, #0
	bl ov73_021D1FA0
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2308: .4byte 0x000001AB
	thumb_func_end ov73_021D200C

	thumb_func_start ov73_021D230C
ov73_021D230C: @ 0x021D230C
	ldr r3, _021D2314 @ =FUN_02019060
	movs r0, #2
	movs r1, #1
	bx r3
	.align 2, 0
_021D2314: .4byte FUN_02019060
	thumb_func_end ov73_021D230C

	thumb_func_start ov73_021D2318
ov73_021D2318: @ 0x021D2318
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r4, r0, #0
	ldr r1, [r4, #0xc]
	movs r5, #0
	cmp r1, #0x6d
	bls _021D232A
	bl _021D3240
_021D232A:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D2336: @ jump table
	.2byte _021D2412 - _021D2336 - 2 @ case 0
	.2byte _021D2452 - _021D2336 - 2 @ case 1
	.2byte _021D246E - _021D2336 - 2 @ case 2
	.2byte _021D248A - _021D2336 - 2 @ case 3
	.2byte _021D24D6 - _021D2336 - 2 @ case 4
	.2byte _021D24E6 - _021D2336 - 2 @ case 5
	.2byte _021D24FA - _021D2336 - 2 @ case 6
	.2byte _021D250E - _021D2336 - 2 @ case 7
	.2byte _021D2558 - _021D2336 - 2 @ case 8
	.2byte _021D2578 - _021D2336 - 2 @ case 9
	.2byte _021D2598 - _021D2336 - 2 @ case 10
	.2byte _021D25D0 - _021D2336 - 2 @ case 11
	.2byte _021D25E0 - _021D2336 - 2 @ case 12
	.2byte _021D25FA - _021D2336 - 2 @ case 13
	.2byte _021D260E - _021D2336 - 2 @ case 14
	.2byte _021D2628 - _021D2336 - 2 @ case 15
	.2byte _021D263C - _021D2336 - 2 @ case 16
	.2byte _021D2656 - _021D2336 - 2 @ case 17
	.2byte _021D266A - _021D2336 - 2 @ case 18
	.2byte _021D2690 - _021D2336 - 2 @ case 19
	.2byte _021D26A0 - _021D2336 - 2 @ case 20
	.2byte _021D26B4 - _021D2336 - 2 @ case 21
	.2byte _021D26F0 - _021D2336 - 2 @ case 22
	.2byte _021D2714 - _021D2336 - 2 @ case 23
	.2byte _021D2744 - _021D2336 - 2 @ case 24
	.2byte _021D2776 - _021D2336 - 2 @ case 25
	.2byte _021D278E - _021D2336 - 2 @ case 26
	.2byte _021D27D0 - _021D2336 - 2 @ case 27
	.2byte _021D27E4 - _021D2336 - 2 @ case 28
	.2byte _021D282E - _021D2336 - 2 @ case 29
	.2byte _021D283E - _021D2336 - 2 @ case 30
	.2byte _021D2852 - _021D2336 - 2 @ case 31
	.2byte _021D288A - _021D2336 - 2 @ case 32
	.2byte _021D289A - _021D2336 - 2 @ case 33
	.2byte _021D28B8 - _021D2336 - 2 @ case 34
	.2byte _021D28D0 - _021D2336 - 2 @ case 35
	.2byte _021D28EA - _021D2336 - 2 @ case 36
	.2byte _021D2904 - _021D2336 - 2 @ case 37
	.2byte _021D291E - _021D2336 - 2 @ case 38
	.2byte _021D2938 - _021D2336 - 2 @ case 39
	.2byte _021D2958 - _021D2336 - 2 @ case 40
	.2byte _021D2978 - _021D2336 - 2 @ case 41
	.2byte _021D298C - _021D2336 - 2 @ case 42
	.2byte _021D29A0 - _021D2336 - 2 @ case 43
	.2byte _021D29C0 - _021D2336 - 2 @ case 44
	.2byte _021D2A06 - _021D2336 - 2 @ case 45
	.2byte _021D2A16 - _021D2336 - 2 @ case 46
	.2byte _021D2A2A - _021D2336 - 2 @ case 47
	.2byte _021D2A5A - _021D2336 - 2 @ case 48
	.2byte _021D2AC6 - _021D2336 - 2 @ case 49
	.2byte _021D2ADA - _021D2336 - 2 @ case 50
	.2byte _021D2AFE - _021D2336 - 2 @ case 51
	.2byte _021D2B36 - _021D2336 - 2 @ case 52
	.2byte _021D2B70 - _021D2336 - 2 @ case 53
	.2byte _021D2B8A - _021D2336 - 2 @ case 54
	.2byte _021D2BDC - _021D2336 - 2 @ case 55
	.2byte _021D2C00 - _021D2336 - 2 @ case 56
	.2byte _021D2C12 - _021D2336 - 2 @ case 57
	.2byte _021D2C22 - _021D2336 - 2 @ case 58
	.2byte _021D2C3C - _021D2336 - 2 @ case 59
	.2byte _021D2C54 - _021D2336 - 2 @ case 60
	.2byte _021D2C64 - _021D2336 - 2 @ case 61
	.2byte _021D2C76 - _021D2336 - 2 @ case 62
	.2byte _021D2C88 - _021D2336 - 2 @ case 63
	.2byte _021D2CC2 - _021D2336 - 2 @ case 64
	.2byte _021D2CD4 - _021D2336 - 2 @ case 65
	.2byte _021D2CE6 - _021D2336 - 2 @ case 66
	.2byte _021D2D02 - _021D2336 - 2 @ case 67
	.2byte _021D2D7A - _021D2336 - 2 @ case 68
	.2byte _021D2D8C - _021D2336 - 2 @ case 69
	.2byte _021D2DA4 - _021D2336 - 2 @ case 70
	.2byte _021D2DB6 - _021D2336 - 2 @ case 71
	.2byte _021D2DCE - _021D2336 - 2 @ case 72
	.2byte _021D2DEE - _021D2336 - 2 @ case 73
	.2byte _021D2E20 - _021D2336 - 2 @ case 74
	.2byte _021D2E40 - _021D2336 - 2 @ case 75
	.2byte _021D2E52 - _021D2336 - 2 @ case 76
	.2byte _021D2E6C - _021D2336 - 2 @ case 77
	.2byte _021D2ED4 - _021D2336 - 2 @ case 78
	.2byte _021D2EE2 - _021D2336 - 2 @ case 79
	.2byte _021D2F02 - _021D2336 - 2 @ case 80
	.2byte _021D2F44 - _021D2336 - 2 @ case 81
	.2byte _021D2F64 - _021D2336 - 2 @ case 82
	.2byte _021D2F7C - _021D2336 - 2 @ case 83
	.2byte _021D2F8E - _021D2336 - 2 @ case 84
	.2byte _021D2FA0 - _021D2336 - 2 @ case 85
	.2byte _021D2FB2 - _021D2336 - 2 @ case 86
	.2byte _021D2FCA - _021D2336 - 2 @ case 87
	.2byte _021D2FDC - _021D2336 - 2 @ case 88
	.2byte _021D2FEE - _021D2336 - 2 @ case 89
	.2byte _021D3000 - _021D2336 - 2 @ case 90
	.2byte _021D3068 - _021D2336 - 2 @ case 91
	.2byte _021D307A - _021D2336 - 2 @ case 92
	.2byte _021D308C - _021D2336 - 2 @ case 93
	.2byte _021D30D4 - _021D2336 - 2 @ case 94
	.2byte _021D30E2 - _021D2336 - 2 @ case 95
	.2byte _021D30F4 - _021D2336 - 2 @ case 96
	.2byte _021D312E - _021D2336 - 2 @ case 97
	.2byte _021D3142 - _021D2336 - 2 @ case 98
	.2byte _021D315A - _021D2336 - 2 @ case 99
	.2byte _021D316C - _021D2336 - 2 @ case 100
	.2byte _021D317C - _021D2336 - 2 @ case 101
	.2byte _021D3196 - _021D2336 - 2 @ case 102
	.2byte _021D31B0 - _021D2336 - 2 @ case 103
	.2byte _021D31C0 - _021D2336 - 2 @ case 104
	.2byte _021D31F6 - _021D2336 - 2 @ case 105
	.2byte _021D320E - _021D2336 - 2 @ case 106
	.2byte _021D321E - _021D2336 - 2 @ case 107
	.2byte _021D322C - _021D2336 - 2 @ case 108
	.2byte _021D323E - _021D2336 - 2 @ case 109
_021D2412:
	ldr r1, _021D2738 @ =0x00000405
	movs r0, #2
	movs r2, #1
	bl FUN_02004550
	ldr r0, _021D2738 @ =0x00000405
	adds r1, r5, #0
	bl FUN_020055D0
	adds r0, r5, #0
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
	adds r0, r5, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	str r0, [r4, #0xc]
	bl _021D3240
_021D2452:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D251A
	adds r0, r4, #0
	movs r1, #0x28
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D251A
	movs r0, #2
	str r0, [r4, #0xc]
	bl _021D3240
_021D246E:
	adds r1, r5, #0
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D251A
	movs r0, #3
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	bl _021D3240
_021D248A:
	ldr r0, _021D2738 @ =0x00000405
	bl FUN_0200549C
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x89
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x8a
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D1A20
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r1, #1
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	adds r3, r5, #0
	bl FUN_0200F174
	movs r0, #4
	str r0, [r4, #0xc]
	bl _021D3240
_021D24D6:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D251A
	movs r0, #5
	str r0, [r4, #0xc]
	bl _021D3240
_021D24E6:
	movs r1, #1
	adds r2, r1, #0
	bl ov73_021D1510
	cmp r0, #1
	bne _021D251A
	movs r0, #6
	str r0, [r4, #0xc]
	bl _021D3240
_021D24FA:
	movs r1, #1
	adds r2, r1, #0
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D251A
	movs r0, #7
	str r0, [r4, #0xc]
	bl _021D3240
_021D250E:
	movs r1, #1
	adds r2, r1, #0
	bl ov73_021D1648
	cmp r0, #1
	beq _021D251E
_021D251A:
	bl _021D3240
_021D251E:
	ldr r0, [r4, #0x48]
	cmp r0, #1
	beq _021D2530
	cmp r0, #2
	beq _021D253C
	cmp r0, #3
	beq _021D2550
	bl _021D3240
_021D2530:
	movs r0, #0xa
	str r0, [r4, #0x10]
	movs r0, #8
	str r0, [r4, #0xc]
	bl _021D3240
_021D253C:
	movs r0, #0x1f
	str r0, [r4, #0x10]
	movs r0, #8
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	bl _021D3240
_021D2550:
	movs r0, #0x29
	str r0, [r4, #0xc]
	bl _021D3240
_021D2558:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r3, r5, #0
	bl FUN_0200F174
	movs r0, #9
	str r0, [r4, #0xc]
	bl _021D3240
_021D2578:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D267C
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	movs r0, #1
	adds r1, r5, #0
	bl FUN_02019120
	ldr r0, [r4, #0x10]
	str r0, [r4, #0xc]
	bl _021D3240
_021D2598:
	adds r1, r4, #0
	movs r2, #1
	adds r1, #0x88
	strb r2, [r1]
	bl ov73_021D19DC
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D1B14
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0xb
	str r0, [r4, #0xc]
	bl _021D3240
_021D25D0:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D267C
	movs r0, #0xc
	str r0, [r4, #0xc]
	bl _021D3240
_021D25E0:
	movs r1, #0x12
	str r1, [sp]
	movs r1, #2
	adds r2, r5, #0
	movs r3, #3
	bl ov73_021D1784
	cmp r0, #1
	bne _021D267C
	movs r0, #0xd
	str r0, [r4, #0xc]
	bl _021D3240
_021D25FA:
	adds r1, r4, #0
	movs r2, #2
	adds r1, #0x88
	strb r2, [r1]
	bl ov73_021D19DC
	movs r0, #0xe
	str r0, [r4, #0xc]
	bl _021D3240
_021D260E:
	movs r1, #0xc
	str r1, [sp]
	movs r1, #3
	adds r2, r5, #0
	movs r3, #7
	bl ov73_021D1784
	cmp r0, #1
	bne _021D267C
	movs r0, #0xf
	str r0, [r4, #0xc]
	bl _021D3240
_021D2628:
	adds r1, r4, #0
	movs r2, #3
	adds r1, #0x88
	strb r2, [r1]
	bl ov73_021D19DC
	movs r0, #0x10
	str r0, [r4, #0xc]
	bl _021D3240
_021D263C:
	movs r1, #0xc
	str r1, [sp]
	movs r1, #4
	movs r2, #2
	adds r3, r1, #0
	bl ov73_021D1784
	cmp r0, #1
	bne _021D267C
	movs r0, #0x11
	str r0, [r4, #0xc]
	bl _021D3240
_021D2656:
	movs r1, #6
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D267C
	movs r0, #0x12
	str r0, [r4, #0xc]
	bl _021D3240
_021D266A:
	movs r1, #0xa
	str r1, [sp]
	movs r1, #5
	movs r2, #2
	movs r3, #4
	bl ov73_021D1784
	cmp r0, #1
	beq _021D2680
_021D267C:
	bl _021D3240
_021D2680:
	movs r0, #0x13
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	bl _021D3240
_021D2690:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019120
	movs r0, #0x14
	str r0, [r4, #0xc]
	bl _021D3240
_021D26A0:
	movs r1, #7
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D279A
	movs r0, #0x15
	str r0, [r4, #0xc]
	bl _021D3240
_021D26B4:
	ldr r6, _021D273C @ =0x021D3864
	add r3, sp, #0x1c
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x68]
	bl FUN_02015958
	movs r0, #6
	movs r1, #1
	bl FUN_02019120
	adds r0, r4, #0
	movs r1, #3
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D1B14
	movs r0, #0x16
	str r0, [r4, #0xc]
	bl _021D3240
_021D26F0:
	ldr r0, _021D2740 @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _021D2700
	movs r0, #0x1b
	str r0, [r4, #0xc]
	bl _021D3240
_021D2700:
	ldr r0, [r4, #0x68]
	bl FUN_020159C0
	subs r0, r0, #3
	cmp r0, #1
	bhi _021D279A
	movs r0, #0x17
	str r0, [r4, #0xc]
	bl _021D3240
_021D2714:
	ldr r0, [r4, #0x68]
	bl FUN_020159C0
	cmp r0, #1
	beq _021D2726
	cmp r0, #2
	beq _021D272E
	bl _021D3240
_021D2726:
	movs r0, #0x18
	str r0, [r4, #0xc]
	bl _021D3240
_021D272E:
	movs r0, #0x1a
	str r0, [r4, #0xc]
	bl _021D3240
	mov r8, r8
	.align 2, 0
_021D2738: .4byte 0x00000405
_021D273C: .4byte 0x021D3864
_021D2740: .4byte 0x021BF67C
_021D2744:
	movs r1, #6
	movs r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D279A
	ldr r0, [r4, #0x68]
	bl FUN_02015A54
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0x19
	str r0, [r4, #0xc]
	bl _021D3240
_021D2776:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D279A
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	movs r0, #0x1c
	str r0, [r4, #0xc]
	bl _021D3240
_021D278E:
	movs r1, #6
	movs r2, #1
	bl ov73_021D1334
	cmp r0, #1
	beq _021D279E
_021D279A:
	bl _021D3240
_021D279E:
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	ldr r0, [r4, #0x68]
	bl FUN_02015A54
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x88
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D19DC
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D1B14
	movs r0, #0xc
	str r0, [r4, #0xc]
	bl _021D3240
_021D27D0:
	movs r1, #8
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D28AC
	movs r0, #0x16
	str r0, [r4, #0xc]
	bl _021D3240
_021D27E4:
	adds r1, r4, #0
	adds r1, #0x88
	strb r5, [r1]
	bl ov73_021D19DC
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D1B14
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	adds r2, r5, #0
	ldr r0, [r4, #0x18]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019184
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0x1d
	str r0, [r4, #0xc]
	bl _021D3240
_021D282E:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D28AC
	movs r0, #0x1e
	str r0, [r4, #0xc]
	bl _021D3240
_021D283E:
	movs r1, #9
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D28AC
	movs r0, #6
	str r0, [r4, #0xc]
	bl _021D3240
_021D2852:
	adds r1, r4, #0
	movs r2, #4
	adds r1, #0x88
	strb r2, [r1]
	bl ov73_021D19DC
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D1B14
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0x20
	str r0, [r4, #0xc]
	bl _021D3240
_021D288A:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D28AC
	movs r0, #0x21
	str r0, [r4, #0xc]
	bl _021D3240
_021D289A:
	movs r1, #6
	str r1, [sp]
	movs r1, #0xa
	movs r2, #1
	movs r3, #9
	bl ov73_021D1784
	cmp r0, #1
	beq _021D28B0
_021D28AC:
	bl _021D3240
_021D28B0:
	movs r0, #0x22
	str r0, [r4, #0xc]
	bl _021D3240
_021D28B8:
	movs r3, #8
	movs r1, #0xb
	movs r2, #1
	str r3, [sp]
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	movs r0, #0x23
	str r0, [r4, #0xc]
	bl _021D3240
_021D28D0:
	movs r1, #6
	str r1, [sp]
	movs r1, #0xc
	movs r2, #1
	movs r3, #9
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	movs r0, #0x24
	str r0, [r4, #0xc]
	bl _021D3240
_021D28EA:
	movs r1, #0xe
	str r1, [sp]
	movs r1, #0xd
	movs r2, #1
	movs r3, #5
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	movs r0, #0x25
	str r0, [r4, #0xc]
	bl _021D3240
_021D2904:
	movs r1, #4
	str r1, [sp]
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xa
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	movs r0, #0x26
	str r0, [r4, #0xc]
	bl _021D3240
_021D291E:
	movs r1, #0xc
	str r1, [sp]
	movs r1, #0xf
	movs r2, #1
	movs r3, #6
	bl ov73_021D1784
	cmp r0, #1
	bne _021D29C8
	movs r0, #0x27
	str r0, [r4, #0xc]
	bl _021D3240
_021D2938:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r3, r5, #0
	bl FUN_0200F174
	movs r0, #0x28
	str r0, [r4, #0xc]
	bl _021D3240
_021D2958:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D29C8
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019120
	movs r0, #0x1c
	str r0, [r4, #0xc]
	bl _021D3240
_021D2978:
	movs r1, #1
	movs r2, #2
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D29C8
	movs r0, #0x2a
	str r0, [r4, #0xc]
	bl _021D3240
_021D298C:
	movs r1, #0x10
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D29C8
	movs r0, #0x2b
	str r0, [r4, #0xc]
	bl _021D3240
_021D29A0:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r1, r5, #0
	str r0, [sp, #8]
	movs r0, #4
	adds r2, r5, #0
	adds r3, r5, #0
	bl FUN_0200F174
	movs r0, #0x2c
	str r0, [r4, #0xc]
	bl _021D3240
_021D29C0:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _021D29CC
_021D29C8:
	bl _021D3240
_021D29CC:
	adds r0, r4, #0
	bl ov73_021D1CE0
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D1B14
	movs r0, #6
	movs r1, #1
	bl FUN_02019120
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	str r0, [sp, #8]
	movs r0, #4
	adds r3, r5, #0
	bl FUN_0200F174
	movs r0, #0x2d
	str r0, [r4, #0xc]
	bl _021D3240
_021D2A06:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D2AD2
	movs r0, #0x2e
	str r0, [r4, #0xc]
	bl _021D3240
_021D2A16:
	movs r1, #0x11
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2AD2
	movs r0, #0x2f
	str r0, [r4, #0xc]
	bl _021D3240
_021D2A2A:
	bl ov73_021D0FFC
	cmp r0, #1
	bne _021D2A4C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x98
	str r1, [r0]
	ldr r0, [r4, #0x18]
	bl FUN_02019EBC
	movs r0, #0x30
	str r0, [r4, #0xc]
	b _021D3240
_021D2A4C:
	ldr r0, _021D2D54 @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _021D2AD2
	movs r0, #0x31
	str r0, [r4, #0xc]
	b _021D3240
_021D2A5A:
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _021D2A70
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	adds r4, #0x98
	subs r0, r0, #1
	str r0, [r4]
	b _021D3240
_021D2A70:
	ldr r6, _021D2D58 @ =0x021D37F4
	add r3, sp, #0x10
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, [r2, r0]
	ldr r0, _021D2D5C @ =0x0000FFFF
	cmp r1, r0
	bne _021D2A9A
	ldr r0, _021D2D60 @ =0x00000706
	bl FUN_02005748
	movs r0, #0x32
	str r0, [r4, #0xc]
	b _021D3240
_021D2A9A:
	movs r0, #0x20
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4]
	movs r3, #6
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x18]
	movs r0, #0x7d
	bl FUN_02006E3C
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	movs r0, #4
	adds r4, #0x98
	str r0, [r4]
	b _021D3240
_021D2AC6:
	movs r1, #0x12
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	beq _021D2AD4
_021D2AD2:
	b _021D3240
_021D2AD4:
	movs r0, #0x2f
	str r0, [r4, #0xc]
	b _021D3240
_021D2ADA:
	movs r0, #1
	movs r1, #0x10
	adds r2, r5, #0
	movs r3, #0xb
	str r0, [sp]
	bl FUN_0200AAE0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	movs r1, #0x10
	adds r2, r5, #0
	movs r3, #0xd
	bl FUN_0200AAE0
	movs r0, #0x33
	str r0, [r4, #0xc]
	b _021D3240
_021D2AFE:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x10
	movs r3, #0xb
	str r0, [sp]
	bl FUN_0200AAE0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x10
	movs r3, #0xd
	bl FUN_0200AAE0
	movs r0, #0x34
	str r0, [r4, #0xc]
	b _021D3240
_021D2B36:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	movs r1, #0x10
	adds r2, r5, #0
	movs r3, #0xb
	bl FUN_0200AAE0
	movs r0, #2
	str r0, [sp]
	movs r0, #4
	movs r1, #0x10
	adds r2, r5, #0
	movs r3, #0xd
	bl FUN_0200AAE0
	movs r0, #0x35
	str r0, [r4, #0xc]
	b _021D3240
_021D2B70:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D2BEE
	movs r0, #0x36
	str r0, [r4, #0xc]
	b _021D3240
_021D2B8A:
	bl ov73_021D1B80
	movs r0, #6
	adds r1, r5, #0
	bl FUN_02019120
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x94
	str r1, [r0]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x94
	bl ov73_021D200C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D1B14
	movs r0, #1
	str r0, [sp]
	movs r0, #0x10
	adds r1, r5, #0
	adds r2, r0, #0
	movs r3, #0xb
	bl FUN_0200AAE0
	movs r0, #2
	str r0, [sp]
	movs r0, #0x10
	adds r1, r5, #0
	adds r2, r0, #0
	movs r3, #0xd
	bl FUN_0200AAE0
	movs r0, #0x37
	str r0, [r4, #0xc]
	b _021D3240
_021D2BDC:
	adds r1, r4, #0
	adds r1, #0x94
	bl ov73_021D200C
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	beq _021D2BF0
_021D2BEE:
	b _021D3240
_021D2BF0:
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D2CF2
	movs r0, #0x38
	str r0, [r4, #0xc]
	b _021D3240
_021D2C00:
	adds r1, r4, #0
	adds r1, #0x94
	bl ov73_021D200C
	cmp r0, #1
	bne _021D2CF2
	movs r0, #0x39
	str r0, [r4, #0xc]
	b _021D3240
_021D2C12:
	movs r1, #0x28
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D2CF2
	movs r0, #0x3a
	str r0, [r4, #0xc]
	b _021D3240
_021D2C22:
	movs r1, #0x13
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2CF2
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	movs r0, #0x3b
	str r0, [r4, #0xc]
	b _021D3240
_021D2C3C:
	movs r1, #2
	movs r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2CF2
	adds r0, r4, #0
	bl ov73_021D230C
	movs r0, #0x3c
	str r0, [r4, #0xc]
	b _021D3240
_021D2C54:
	movs r1, #0x1e
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D2CF2
	movs r0, #0x3d
	str r0, [r4, #0xc]
	b _021D3240
_021D2C64:
	movs r1, #0x14
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2CF2
	movs r0, #0x3e
	str r0, [r4, #0xc]
	b _021D3240
_021D2C76:
	movs r1, #1
	adds r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2CF2
	movs r0, #0x3f
	str r0, [r4, #0xc]
	b _021D3240
_021D2C88:
	bl ov73_021D1DCC
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x89
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #6
	adds r0, #0x8a
	strb r1, [r0]
	adds r0, r4, #0
	bl ov73_021D1A20
	adds r2, r5, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x18]
	movs r1, #1
	subs r3, #0x30
	bl FUN_02019184
	ldr r0, [r4, #0x18]
	movs r1, #2
	adds r2, r5, #0
	movs r3, #0x30
	bl FUN_02019184
	movs r0, #0x40
	str r0, [r4, #0xc]
	b _021D3240
_021D2CC2:
	movs r1, #1
	adds r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2CF2
	movs r0, #0x41
	str r0, [r4, #0xc]
	b _021D3240
_021D2CD4:
	movs r1, #2
	adds r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2CF2
	movs r0, #0x42
	str r0, [r4, #0xc]
	b _021D3240
_021D2CE6:
	movs r1, #0x15
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	beq _021D2CF4
_021D2CF2:
	b _021D3240
_021D2CF4:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x84
	str r1, [r0]
	movs r0, #0x43
	str r0, [r4, #0xc]
	b _021D3240
_021D2D02:
	ldr r0, _021D2D54 @ =0x021BF67C
	movs r1, #1
	ldr r0, [r0, #0x48]
	ands r1, r0
	cmp r1, #1
	bne _021D2D34
	movs r0, #6
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	movs r1, #0xa
	adds r0, #0x80
	str r1, [r0]
	movs r0, #2
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021D2D2E
	movs r0, #0x44
	str r0, [r4, #0xc]
	b _021D3240
_021D2D2E:
	movs r0, #0x46
	str r0, [r4, #0xc]
	b _021D3240
_021D2D34:
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0x20
	beq _021D2D44
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0x10
	bne _021D2D72
_021D2D44:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021D2D64
	movs r1, #1
	b _021D2D66
	nop
_021D2D54: .4byte 0x021BF67C
_021D2D58: .4byte 0x021D37F4
_021D2D5C: .4byte 0x0000FFFF
_021D2D60: .4byte 0x00000706
_021D2D64:
	movs r1, #0
_021D2D66:
	adds r0, r4, #0
	adds r0, #0x84
	str r1, [r0]
	ldr r0, _021D303C @ =0x000005DC
	bl FUN_02005748
_021D2D72:
	adds r0, r4, #0
	bl ov73_021D1DE8
	b _021D3240
_021D2D7A:
	movs r1, #2
	movs r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2E0A
	movs r0, #0x45
	str r0, [r4, #0xc]
	b _021D3240
_021D2D8C:
	movs r1, #1
	adds r2, r5, #0
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D2E0A
	adds r0, r4, #0
	bl ov73_021D1EFC
	movs r0, #0x48
	str r0, [r4, #0xc]
	b _021D3240
_021D2DA4:
	movs r1, #1
	adds r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2E0A
	movs r0, #0x47
	str r0, [r4, #0xc]
	b _021D3240
_021D2DB6:
	movs r1, #2
	adds r2, r5, #0
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D2E0A
	adds r0, r4, #0
	bl ov73_021D1EFC
	movs r0, #0x48
	str r0, [r4, #0xc]
	b _021D3240
_021D2DCE:
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021D2DDA
	movs r1, #0x16
	b _021D2DDC
_021D2DDA:
	movs r1, #0x17
_021D2DDC:
	adds r0, r4, #0
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2E0A
	movs r0, #0x49
	str r0, [r4, #0xc]
	b _021D3240
_021D2DEE:
	adds r1, r5, #0
	adds r2, r5, #0
	bl ov73_021D1648
	cmp r0, #1
	bne _021D2E0A
	ldr r1, [r4, #0x48]
	subs r0, r5, #2
	cmp r1, r0
	beq _021D2E12
	cmp r1, #1
	beq _021D2E0C
	cmp r1, #2
	beq _021D2E12
_021D2E0A:
	b _021D3240
_021D2E0C:
	movs r0, #0x4b
	str r0, [r4, #0xc]
	b _021D3240
_021D2E12:
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl FUN_02019EBC
	movs r0, #0x4a
	str r0, [r4, #0xc]
	b _021D3240
_021D2E20:
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021D2E2C
	movs r1, #1
	b _021D2E2E
_021D2E2C:
	movs r1, #2
_021D2E2E:
	adds r0, r4, #0
	movs r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D2F26
	movs r0, #0x3f
	str r0, [r4, #0xc]
	b _021D3240
_021D2E40:
	movs r1, #0x18
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2F26
	movs r0, #0x4c
	str r0, [r4, #0xc]
	b _021D3240
_021D2E52:
	adds r0, #0x84
	ldr r1, [r0]
	ldr r0, [r4, #0x70]
	str r1, [r0, #4]
	ldr r0, _021D3040 @ =0x020F2DAC
	ldr r1, [r4, #0x70]
	ldr r2, [r4]
	bl FUN_020067E8
	str r0, [r4, #0x14]
	movs r0, #0x4d
	str r0, [r4, #0xc]
	b _021D3240
_021D2E6C:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019120
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021D2EA4
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	adds r2, r5, #0
	ldr r0, [r4, #0x18]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019184
	b _021D2EB8
_021D2EA4:
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	adds r2, r5, #0
	ldr r0, [r4, #0x18]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
_021D2EB8:
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	str r0, [sp, #8]
	movs r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0x4e
	str r0, [r4, #0xc]
	b _021D3240
_021D2ED4:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D2F26
	movs r0, #0x4f
	str r0, [r4, #0xc]
	b _021D3240
_021D2EE2:
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021D2EEE
	movs r1, #0x19
	b _021D2EF0
_021D2EEE:
	movs r1, #0x1a
_021D2EF0:
	adds r0, r4, #0
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D2F26
	movs r0, #0x50
	str r0, [r4, #0xc]
	b _021D3240
_021D2F02:
	adds r1, r5, #0
	adds r2, r5, #0
	bl ov73_021D1648
	cmp r0, #1
	bne _021D2F26
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	ldr r1, [r4, #0x48]
	subs r0, r5, #2
	cmp r1, r0
	beq _021D2F32
	cmp r1, #1
	beq _021D2F28
	cmp r1, #2
	beq _021D2F32
_021D2F26:
	b _021D3240
_021D2F28:
	movs r0, #0x52
	str r0, [r4, #0x10]
	movs r0, #0x51
	str r0, [r4, #0xc]
	b _021D3240
_021D2F32:
	ldr r0, [r4, #0x70]
	ldr r0, [r0, #0x18]
	bl FUN_020237E8
	movs r0, #0x3f
	str r0, [r4, #0x10]
	movs r0, #0x51
	str r0, [r4, #0xc]
	b _021D3240
_021D2F44:
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021D2F50
	movs r1, #1
	b _021D2F52
_021D2F50:
	movs r1, #2
_021D2F52:
	adds r0, r4, #0
	movs r2, #1
	bl ov73_021D1334
	cmp r0, #1
	bne _021D300C
	ldr r0, [r4, #0x10]
	str r0, [r4, #0xc]
	b _021D3240
_021D2F64:
	adds r1, r4, #0
	movs r2, #1
	adds r1, #0x89
	strb r2, [r1]
	adds r1, r4, #0
	adds r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
	movs r0, #0x53
	str r0, [r4, #0xc]
	b _021D3240
_021D2F7C:
	movs r1, #1
	adds r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D300C
	movs r0, #0x54
	str r0, [r4, #0xc]
	b _021D3240
_021D2F8E:
	movs r1, #0x1b
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D300C
	movs r0, #0x55
	str r0, [r4, #0xc]
	b _021D3240
_021D2FA0:
	movs r1, #1
	adds r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D300C
	movs r0, #0x56
	str r0, [r4, #0xc]
	b _021D3240
_021D2FB2:
	adds r1, r4, #0
	movs r2, #0xa
	adds r1, #0x89
	strb r2, [r1]
	adds r1, r4, #0
	adds r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
	movs r0, #0x57
	str r0, [r4, #0xc]
	b _021D3240
_021D2FCA:
	movs r1, #1
	adds r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D300C
	movs r0, #0x58
	str r0, [r4, #0xc]
	b _021D3240
_021D2FDC:
	movs r1, #0x1c
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D300C
	movs r0, #0x59
	str r0, [r4, #0xc]
	b _021D3240
_021D2FEE:
	movs r1, #1
	adds r2, r1, #0
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D300C
	movs r0, #0x5a
	str r0, [r4, #0xc]
	b _021D3240
_021D3000:
	movs r1, #2
	movs r2, #1
	bl ov73_021D1648
	cmp r0, #1
	beq _021D300E
_021D300C:
	b _021D3240
_021D300E:
	ldr r1, [r4, #0x48]
	cmp r1, #5
	bhi _021D3110
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D3020: @ jump table
	.2byte _021D3240 - _021D3020 - 2 @ case 0
	.2byte _021D302C - _021D3020 - 2 @ case 1
	.2byte _021D3032 - _021D3020 - 2 @ case 2
	.2byte _021D3032 - _021D3020 - 2 @ case 3
	.2byte _021D3032 - _021D3020 - 2 @ case 4
	.2byte _021D3032 - _021D3020 - 2 @ case 5
_021D302C:
	movs r0, #0x5c
	str r0, [r4, #0xc]
	b _021D3240
_021D3032:
	subs r1, r1, #1
	lsls r2, r1, #3
	ldr r1, _021D3044 @ =0x021D3954
	b _021D3048
	nop
_021D303C: .4byte 0x000005DC
_021D3040: .4byte 0x020F2DAC
_021D3044: .4byte 0x021D3954
_021D3048:
	ldr r0, [r4, #0x4c]
	ldr r1, [r1, r2]
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r0, [r4, #0x74]
	adds r1, r6, #0
	ldr r0, [r0, #0x18]
	bl FUN_02023810
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x5b
	str r0, [r4, #0xc]
	b _021D3240
_021D3068:
	movs r1, #1
	movs r2, #2
	bl ov73_021D1D44
	cmp r0, #1
	bne _021D3110
	movs r0, #0x5f
	str r0, [r4, #0xc]
	b _021D3240
_021D307A:
	ldr r0, _021D3248 @ =0x020F2DAC
	ldr r1, [r4, #0x74]
	ldr r2, [r4]
	bl FUN_020067E8
	str r0, [r4, #0x14]
	movs r0, #0x5d
	str r0, [r4, #0xc]
	b _021D3240
_021D308C:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019120
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	adds r2, r5, #0
	ldr r0, [r4, #0x18]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019184
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0x5e
	str r0, [r4, #0xc]
	b _021D3240
_021D30D4:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D3110
	movs r0, #0x5f
	str r0, [r4, #0xc]
	b _021D3240
_021D30E2:
	movs r1, #0x1d
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D3110
	movs r0, #0x60
	str r0, [r4, #0xc]
	b _021D3240
_021D30F4:
	adds r1, r5, #0
	adds r2, r5, #0
	bl ov73_021D1648
	cmp r0, #1
	bne _021D3110
	ldr r1, [r4, #0x48]
	subs r0, r5, #2
	cmp r1, r0
	beq _021D3120
	cmp r1, #1
	beq _021D3112
	cmp r1, #2
	beq _021D3120
_021D3110:
	b _021D3240
_021D3112:
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	movs r0, #0x61
	str r0, [r4, #0xc]
	b _021D3240
_021D3120:
	ldr r0, [r4, #0x74]
	ldr r0, [r0, #0x18]
	bl FUN_020237E8
	movs r0, #0x58
	str r0, [r4, #0xc]
	b _021D3240
_021D312E:
	movs r1, #1
	adds r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	beq _021D313C
	b _021D3240
_021D313C:
	movs r0, #0x62
	str r0, [r4, #0xc]
	b _021D3240
_021D3142:
	adds r1, r4, #0
	movs r2, #1
	adds r1, #0x89
	strb r2, [r1]
	adds r1, r4, #0
	adds r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
	movs r0, #0x63
	str r0, [r4, #0xc]
	b _021D3240
_021D315A:
	movs r1, #1
	adds r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D3240
	movs r0, #0x64
	str r0, [r4, #0xc]
	b _021D3240
_021D316C:
	movs r1, #0x1e
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D3240
	movs r0, #0x65
	str r0, [r4, #0xc]
	b _021D3240
_021D317C:
	movs r1, #0x1e
	movs r2, #1
	bl ov73_021D1510
	cmp r0, #1
	bne _021D3240
	adds r0, r5, #0
	movs r1, #0x32
	bl FUN_0200564C
	movs r0, #0x66
	str r0, [r4, #0xc]
	b _021D3240
_021D3196:
	movs r1, #1
	adds r2, r1, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D3240
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	bl FUN_02019EBC
	movs r0, #0x67
	str r0, [r4, #0xc]
	b _021D3240
_021D31B0:
	movs r1, #0x1e
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D3240
	movs r0, #0x68
	str r0, [r4, #0xc]
	b _021D3240
_021D31C0:
	adds r1, r4, #0
	adds r1, #0x84
	ldr r1, [r1]
	cmp r1, #0
	bne _021D31DE
	adds r1, r4, #0
	movs r2, #2
	adds r1, #0x89
	strb r2, [r1]
	adds r1, r4, #0
	adds r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
	b _021D31F0
_021D31DE:
	adds r1, r4, #0
	movs r2, #6
	adds r1, #0x89
	strb r2, [r1]
	adds r1, r4, #0
	adds r1, #0x8a
	strb r5, [r1]
	bl ov73_021D1A20
_021D31F0:
	movs r0, #0x69
	str r0, [r4, #0xc]
	b _021D3240
_021D31F6:
	movs r1, #1
	adds r2, r5, #0
	bl ov73_021D1334
	cmp r0, #1
	bne _021D3240
	adds r0, r4, #0
	bl ov73_021D1F08
	movs r0, #0x6a
	str r0, [r4, #0xc]
	b _021D3240
_021D320E:
	movs r1, #0x1e
	bl ov73_021D14B8
	cmp r0, #1
	bne _021D3240
	movs r0, #0x6b
	str r0, [r4, #0xc]
	b _021D3240
_021D321E:
	bl ov73_021D1F18
	cmp r0, #1
	bne _021D3240
	movs r0, #0x6c
	str r0, [r4, #0xc]
	b _021D3240
_021D322C:
	ldr r0, _021D324C @ =0x021D3820
	ldr r2, [r4]
	adds r1, r5, #0
	bl FUN_020067E8
	str r0, [r4, #0x14]
	movs r0, #0x6d
	str r0, [r4, #0xc]
	b _021D3240
_021D323E:
	movs r5, #1
_021D3240:
	adds r0, r5, #0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_021D3248: .4byte 0x020F2DAC
_021D324C: .4byte 0x021D3820
	thumb_func_end ov73_021D2318

	thumb_func_start ov73_021D3250
ov73_021D3250: @ 0x021D3250
	push {r4, lr}
	movs r2, #1
	adds r4, r0, #0
	movs r0, #3
	movs r1, #0x53
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x53
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0x28
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x53
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x24]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov73_021D3250

	thumb_func_start ov73_021D3280
ov73_021D3280: @ 0x021D3280
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	movs r6, #0
	cmp r1, #5
	bls _021D3296
	b _021D33EA
_021D3296:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D32A2: @ jump table
	.2byte _021D32AE - _021D32A2 - 2 @ case 0
	.2byte _021D3334 - _021D32A2 - 2 @ case 1
	.2byte _021D335A - _021D32A2 - 2 @ case 2
	.2byte _021D3384 - _021D32A2 - 2 @ case 3
	.2byte _021D3396 - _021D32A2 - 2 @ case 4
	.2byte _021D33C8 - _021D32A2 - 2 @ case 5
_021D32AE:
	adds r0, r6, #0
	adds r1, r6, #0
	bl FUN_0200F344
	movs r0, #1
	adds r1, r6, #0
	bl FUN_0200F344
	adds r0, r6, #0
	adds r1, r0, #0
	bl FUN_02017798
	adds r0, r6, #0
	adds r1, r0, #0
	bl FUN_020177BC
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D33F0 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D33F4 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	adds r0, r4, #0
	bl ov73_021D342C
	adds r0, r4, #0
	bl ov73_021D366C
	ldr r0, _021D33F8 @ =ov73_021D3420
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_0201FFD0
	bl FUN_020241F0
	adds r1, r6, #0
	adds r7, r0, #0
	str r1, [sp]
	ldr r2, _021D33FC @ =0x0000FFFC
	adds r1, r7, #0
	movs r3, #7
	bl FUN_020039F8
	movs r2, #2
	adds r0, r7, #0
	adds r1, r6, #0
	lsls r2, r2, #8
	blx FUN_020C00B4
	movs r0, #0x3c
	str r0, [r4, #0x24]
	movs r0, #1
	str r0, [r5]
	b _021D33EA
_021D3334:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D3340
	subs r0, r0, #1
	str r0, [r4, #0x24]
	b _021D33EA
_021D3340:
	ldr r0, _021D3400 @ =0x00000406
	bl FUN_02004224
	ldr r1, _021D3400 @ =0x00000406
	movs r0, #4
	movs r2, #1
	bl FUN_02004550
	movs r0, #0x5a
	str r0, [r4, #0x24]
	movs r0, #2
	str r0, [r5]
	b _021D33EA
_021D335A:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D3366
	subs r0, r0, #1
	str r0, [r4, #0x24]
	b _021D33EA
_021D3366:
	str r6, [r4, #0x24]
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r3, r6, #0
	bl FUN_0200F174
	movs r0, #3
	str r0, [r5]
	b _021D33EA
_021D3384:
	bl ov73_021D37AC
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D33EA
	movs r0, #4
	str r0, [r5]
	b _021D33EA
_021D3396:
	bl ov73_021D37AC
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x28
	movs r3, #0x30
	bl ov73_021D3698
	cmp r0, #1
	bne _021D33EA
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #5
	str r0, [r5]
	b _021D33EA
_021D33C8:
	bl ov73_021D37AC
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D33EA
	adds r0, r4, #0
	bl ov73_021D368C
	adds r0, r4, #0
	bl ov73_021D35F4
	adds r0, r6, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r6, #1
_021D33EA:
	adds r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D33F0: .4byte 0xFFFFE0FF
_021D33F4: .4byte 0x04001000
_021D33F8: .4byte ov73_021D3420
_021D33FC: .4byte 0x0000FFFC
_021D3400: .4byte 0x00000406
	thumb_func_end ov73_021D3280

	thumb_func_start ov73_021D3404
ov73_021D3404: @ 0x021D3404
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	ldr r4, [r0]
	adds r0, r5, #0
	bl FUN_02006830
	adds r0, r4, #0
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021D3404

	thumb_func_start ov73_021D3420
ov73_021D3420: @ 0x021D3420
	ldr r3, _021D3428 @ =FUN_0201C2B8
	ldr r0, [r0, #4]
	bx r3
	nop
_021D3428: .4byte FUN_0201C2B8
	thumb_func_end ov73_021D3420

	thumb_func_start ov73_021D342C
ov73_021D342C: @ 0x021D342C
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _021D35D8 @ =0x021D3AC0
	adds r4, r0, #0
	add r3, sp, #0x90
	movs r2, #5
_021D3438:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D3438
	add r0, sp, #0x90
	bl FUN_0201FE94
	ldr r0, [r4]
	bl FUN_02018340
	add r3, sp, #0x80
	ldr r5, _021D35DC @ =0x021D3A40
	str r0, [r4, #4]
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D35E0 @ =0x021D3A6C
	add r3, sp, #0x64
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
	ldr r0, [r4, #4]
	movs r3, #0
	bl FUN_020183C4
	ldr r3, [r4]
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _021D35E4 @ =0x021D3A88
	add r3, sp, #0x48
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
	ldr r0, [r4, #4]
	adds r3, r1, #0
	bl FUN_020183C4
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4]
	movs r1, #1
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x88
	bl FUN_02006E3C
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4]
	movs r1, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x88
	bl FUN_02006E60
	ldr r5, _021D35E8 @ =0x021D3A50
	add r3, sp, #0x2c
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
	ldr r0, [r4, #4]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x88
	movs r3, #1
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #5
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x88
	movs r3, #1
	bl FUN_02006E60
	ldr r5, _021D35EC @ =0x021D3AA4
	add r3, sp, #0x10
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #3
	str r0, [r3]
	ldr r0, [r4, #4]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x88
	movs r3, #3
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #7
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x88
	movs r3, #3
	bl FUN_02006E60
	movs r2, #0
	str r2, [sp]
	ldr r0, [r4]
	movs r1, #6
	str r0, [sp, #4]
	movs r0, #0x88
	adds r3, r2, #0
	bl FUN_02006E84
	movs r3, #0x40
	movs r0, #7
	str r3, [sp]
	lsls r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r1, #9
	str r0, [sp, #8]
	movs r0, #0x88
	movs r2, #0
	bl FUN_02006E9C
	ldr r2, [r4]
	movs r0, #0
	movs r1, #0x20
	bl FUN_02002E7C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	movs r2, #0xc
	ldr r0, _021D35F0 @ =0x04000050
	movs r1, #2
	movs r3, #4
	str r2, [sp]
	blx FUN_020BF55C
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D35D8: .4byte 0x021D3AC0
_021D35DC: .4byte 0x021D3A40
_021D35E0: .4byte 0x021D3A6C
_021D35E4: .4byte 0x021D3A88
_021D35E8: .4byte 0x021D3A50
_021D35EC: .4byte 0x021D3AA4
_021D35F0: .4byte 0x04000050
	thumb_func_end ov73_021D342C

	thumb_func_start ov73_021D35F4
ov73_021D35F4: @ 0x021D35F4
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
	ldr r0, _021D3668 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #4]
	bl FUN_020181C4
	pop {r4, pc}
	nop
_021D3668: .4byte 0x04000050
	thumb_func_end ov73_021D35F4

	thumb_func_start ov73_021D366C
ov73_021D366C: @ 0x021D366C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _021D3688 @ =0x0000025F
	ldr r3, [r4]
	movs r0, #1
	movs r1, #0x1a
	bl FUN_0200B144
	str r0, [r4, #8]
	bl FUN_0201D710
	movs r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
_021D3688: .4byte 0x0000025F
	thumb_func_end ov73_021D366C

	thumb_func_start ov73_021D368C
ov73_021D368C: @ 0x021D368C
	ldr r3, _021D3694 @ =FUN_0200B190
	ldr r0, [r0, #8]
	bx r3
	nop
_021D3694: .4byte FUN_0200B190
	thumb_func_end ov73_021D368C

	thumb_func_start ov73_021D3698
ov73_021D3698: @ 0x021D3698
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	adds r7, r1, #0
	movs r6, #0
	cmp r0, #3
	bhi _021D3798
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D36B4: @ jump table
	.2byte _021D36BC - _021D36B4 - 2 @ case 0
	.2byte _021D3756 - _021D36B4 - 2 @ case 1
	.2byte _021D3768 - _021D36B4 - 2 @ case 2
	.2byte _021D3782 - _021D36B4 - 2 @ case 3
_021D36BC:
	movs r0, #2
	adds r1, r6, #0
	bl FUN_02019120
	movs r0, #1
	ldr r1, [r4]
	lsls r0, r0, #0xa
	bl FUN_02023790
	adds r5, r0, #0
	ldr r0, [r4, #8]
	adds r1, r7, #0
	adds r2, r5, #0
	bl FUN_0200B1B8
	adds r1, r4, #0
	ldr r0, [r4, #4]
	ldr r2, _021D37A0 @ =0x021D3A38
	adds r1, #0x10
	bl FUN_0201A8D4
	adds r1, r6, #0
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0xc0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x10
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #1
	lsls r1, r1, #8
	subs r0, r1, r0
	lsrs r7, r0, #1
	adds r0, r5, #0
	bl FUN_02023C5C
	lsls r1, r0, #4
	movs r0, #0xc0
	subs r0, r0, r1
	lsrs r0, r0, #1
	str r0, [sp]
	adds r1, r6, #0
	ldr r0, _021D37A4 @ =0x000F0200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x10
	adds r2, r5, #0
	adds r3, r7, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A954
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	movs r0, #0xf0
	str r0, [r4, #0x24]
	movs r0, #1
	str r0, [r4, #0xc]
	b _021D3798
_021D3756:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D3762
	subs r0, r0, #1
	str r0, [r4, #0x24]
	b _021D3798
_021D3762:
	movs r0, #2
	str r0, [r4, #0xc]
	b _021D3798
_021D3768:
	ldr r0, _021D37A8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	ands r0, r1
	cmp r0, #1
	beq _021D377C
	movs r0, #2
	ands r0, r1
	cmp r0, #2
	bne _021D3798
_021D377C:
	movs r0, #3
	str r0, [r4, #0xc]
	b _021D3798
_021D3782:
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A8FC
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02019EBC
	adds r0, r6, #0
	str r0, [r4, #0xc]
	movs r6, #1
_021D3798:
	adds r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D37A0: .4byte 0x021D3A38
_021D37A4: .4byte 0x000F0200
_021D37A8: .4byte 0x021BF67C
	thumb_func_end ov73_021D3698

	thumb_func_start ov73_021D37AC
ov73_021D37AC: @ 0x021D37AC
	push {r3, lr}
	ldr r1, [r0, #0x20]
	movs r2, #3
	adds r3, r1, #4
	str r3, [r0, #0x20]
	ldr r0, [r0, #4]
	movs r1, #1
	asrs r3, r3, #4
	bl FUN_02019184
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov73_021D37AC
	@ 0x021D37C4
