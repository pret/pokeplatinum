	.include "macros/function.inc"


	.text

	thumb_func_start ov100_021D0D80
ov100_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x6f
	lsls r2, r0, #0x12
	bl FUN_02017FC8
	adds r0, r5, #0
	movs r1, #0xd4
	movs r2, #0x6f
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0xd4
	adds r4, r0, #0
	blx FUN_020D5124
	adds r0, r5, #0
	bl FUN_02006840
	adds r1, r4, #0
	adds r1, #0xd0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xc
	bl ov100_021D1034
	movs r0, #0xc
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x6f
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, _021D0EA4 @ =ov100_021D13B4
	adds r1, r4, #0
	bl FUN_02017798
	adds r0, r4, #0
	movs r1, #0x1f
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5d
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5e
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xcd
	strb r1, [r0]
	movs r0, #1
	bl FUN_02005454
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	adds r5, r4, #0
	ldr r0, [r0, #4]
	adds r5, #0x3c
	bl FUN_02027B50
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	movs r3, #2
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0xff
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A954
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x6f
	str r0, [sp, #4]
	movs r2, #0x7d
	ldr r0, [r4, #0x18]
	movs r1, #1
	lsls r2, r2, #2
	movs r3, #0xf
	bl FUN_0200DD0C
	adds r0, r6, #0
	bl FUN_0200DD08
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xf0
	str r0, [sp, #8]
	ldr r0, [r4, #0x1c]
	movs r1, #0x26
	movs r3, #0x6f
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r4, #0x1c]
	movs r1, #0xe
	movs r2, #7
	movs r3, #0x6f
	bl FUN_02003050
	movs r2, #0x7d
	adds r0, r5, #0
	movs r1, #0
	lsls r2, r2, #2
	movs r3, #0xf
	bl FUN_0200E060
	adds r4, #0xc
	adds r0, r4, #0
	bl ov100_021D4788
	movs r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D0EA4: .4byte ov100_021D13B4
	thumb_func_end ov100_021D0D80

	thumb_func_start ov100_021D0EA8
ov100_021D0EA8: @ 0x021D0EA8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #3
	bhi _021D0F2A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0EC4: @ jump table
	.2byte _021D0ECC - _021D0EC4 - 2 @ case 0
	.2byte _021D0EE2 - _021D0EC4 - 2 @ case 1
	.2byte _021D0EFC - _021D0EC4 - 2 @ case 2
	.2byte _021D0F26 - _021D0EC4 - 2 @ case 3
_021D0ECC:
	ldr r2, [r4, #4]
	movs r1, #0xc
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D0F38 @ =0x021D5130
	ldr r1, [r1, r3]
	blx r1
	str r0, [r4, #8]
	movs r0, #1
	str r0, [r5]
	b _021D0F2E
_021D0EE2:
	ldr r2, [r4, #4]
	movs r1, #0xc
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D0F3C @ =0x021D5134
	ldr r0, [r4, #8]
	ldr r1, [r1, r3]
	blx r1
	cmp r0, #0
	bne _021D0F2E
	movs r0, #2
	str r0, [r5]
	b _021D0F2E
_021D0EFC:
	ldr r2, [r4, #4]
	movs r1, #0xc
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D0F40 @ =0x021D5138
	ldr r0, [r4, #8]
	ldr r1, [r1, r3]
	blx r1
	cmp r0, #0
	bne _021D0F2E
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #3
	beq _021D0F20
	movs r0, #0
	str r0, [r5]
	b _021D0F2E
_021D0F20:
	movs r0, #3
	str r0, [r5]
	b _021D0F2E
_021D0F26:
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D0F2A:
	bl FUN_02022974
_021D0F2E:
	ldr r0, [r4, #0x14]
	bl FUN_0200C7EC
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D0F38: .4byte 0x021D5130
_021D0F3C: .4byte 0x021D5134
_021D0F40: .4byte 0x021D5138
	thumb_func_end ov100_021D0EA8

	thumb_func_start ov100_021D0F44
ov100_021D0F44: @ 0x021D0F44
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	adds r5, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	adds r0, r5, #0
	adds r0, #0x3c
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, #0
	adds r0, #0x3c
	bl FUN_0201ACF4
	adds r0, r5, #0
	adds r0, #0x3c
	bl FUN_0201A8FC
	adds r5, #0xc
	adds r0, r5, #0
	bl ov100_021D111C
	ldr r0, _021D0F9C @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	adds r0, r4, #0
	bl FUN_02006830
	movs r0, #0x6f
	bl FUN_0201807C
	movs r0, #0
	bl FUN_02005454
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D0F9C: .4byte 0x021BF6DC
	thumb_func_end ov100_021D0F44

	thumb_func_start ov100_021D0FA0
ov100_021D0FA0: @ 0x021D0FA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	adds r4, r0, #0
	movs r0, #0x6f
	bl FUN_0200C6E4
	add r2, sp, #0x2c
	ldr r5, _021D1028 @ =0x021D5110
	str r0, [r4, #4]
	ldm r5!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	ldr r6, _021D102C @ =0x021D50E4
	stm r2!, {r0, r1}
	add r5, sp, #0x18
	ldm r6!, {r0, r1}
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldr r0, [r6]
	adds r1, r3, #0
	str r0, [r5]
	ldr r0, [r4, #4]
	movs r3, #0x20
	bl FUN_0200C73C
	cmp r0, #0
	bne _021D0FE8
	bl FUN_02022974
_021D0FE8:
	ldr r3, _021D1030 @ =0x021D50F8
	add r2, sp, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r4, #4]
	bl FUN_0200C704
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	movs r2, #0x80
	bl FUN_0200C7C0
	cmp r0, #0
	bne _021D1012
	bl FUN_02022974
_021D1012:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, sp, #0
	bl FUN_0200CB30
	cmp r0, #0
	bne _021D1024
	bl FUN_02022974
_021D1024:
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D1028: .4byte 0x021D5110
_021D102C: .4byte 0x021D50E4
_021D1030: .4byte 0x021D50F8
	thumb_func_end ov100_021D0FA0

	thumb_func_start ov100_021D1034
ov100_021D1034: @ 0x021D1034
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D110C @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D1110 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #0xac
	movs r1, #0x6f
	bl FUN_02006C24
	str r0, [r4]
	movs r0, #0x6f
	bl FUN_02018340
	str r0, [r4, #0xc]
	movs r0, #0x6f
	bl FUN_02002F38
	str r0, [r4, #0x10]
	movs r0, #4
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r0, #0x6f
	movs r2, #1
	adds r3, r1, #0
	bl FUN_02024220
	str r0, [r4, #0x14]
	movs r0, #0x6f
	bl FUN_020203AC
	str r0, [r4, #0x18]
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xea
	movs r3, #0x6f
	bl FUN_0200B144
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02003858
	movs r2, #2
	ldr r0, [r4, #0x10]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x6f
	bl FUN_02002F70
	movs r1, #1
	ldr r0, [r4, #0x10]
	lsls r2, r1, #9
	movs r3, #0x6f
	bl FUN_02002F70
	movs r1, #2
	ldr r0, [r4, #0x10]
	lsls r2, r1, #8
	movs r3, #0x6f
	bl FUN_02002F70
	movs r2, #2
	ldr r0, [r4, #0x10]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x6f
	bl FUN_02002F70
	ldr r0, [r4, #0xc]
	bl ov100_021D1208
	adds r0, r4, #0
	bl ov100_021D0FA0
	ldr r2, _021D1114 @ =0x04000060
	ldr r0, _021D1118 @ =0xFFFFCFFF
	ldrh r1, [r2]
	adds r4, #0x1c
	ands r1, r0
	movs r0, #8
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	movs r1, #0x6f
	movs r2, #0x20
	bl FUN_020182CC
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021D110C: .4byte 0xFFFFE0FF
_021D1110: .4byte 0x04001000
_021D1114: .4byte 0x04000060
_021D1118: .4byte 0xFFFFCFFF
	thumb_func_end ov100_021D1034

	thumb_func_start ov100_021D111C
ov100_021D111C: @ 0x021D111C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #7
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	bl FUN_020181C4
	ldr r0, [r4, #0x10]
	movs r1, #0
	bl FUN_02002FA0
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02002FA0
	ldr r0, [r4, #0x10]
	movs r1, #2
	bl FUN_02002FA0
	ldr r0, [r4, #0x10]
	movs r1, #3
	bl FUN_02002FA0
	ldr r0, [r4, #0x10]
	bl FUN_02002F54
	ldr r0, [r4]
	bl FUN_02006CA8
	ldr r0, [r4, #0x14]
	bl FUN_020242C4
	ldr r0, [r4, #0x18]
	bl FUN_020203B8
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl FUN_0200D0B0
	ldr r0, [r4, #4]
	bl FUN_0200C8D4
	ldr r0, [r4, #0x2c]
	bl FUN_0200B190
	ldr r2, _021D1200 @ =0x04000060
	ldr r0, _021D1204 @ =0x0000CFF7
	ldrh r1, [r2]
	ands r0, r1
	strh r0, [r2]
	pop {r4, pc}
	nop
_021D1200: .4byte 0x04000060
_021D1204: .4byte 0x0000CFF7
	thumb_func_end ov100_021D111C

	thumb_func_start ov100_021D1208
ov100_021D1208: @ 0x021D1208
	push {r3, r4, r5, lr}
	sub sp, #0xe0
	adds r4, r0, #0
	bl FUN_0201FF00
	ldr r5, _021D13A4 @ =0x021D50D4
	add r3, sp, #0x60
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D13A8 @ =0x021D5154
	add r3, sp, #0x38
	movs r2, #5
_021D122C:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D122C
	add r0, sp, #0x38
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
	ldr r5, _021D13AC @ =0x021D51B4
	add r3, sp, #0x70
	movs r2, #0xe
_021D1278:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1278
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x6f
	bl FUN_02019690
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x6f
	bl FUN_02019690
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x6f
	bl FUN_02019690
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x6f
	bl FUN_02019690
	movs r1, #0
	adds r0, r4, #0
	add r2, sp, #0x70
	adds r3, r1, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #1
	add r2, sp, #0x8c
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #2
	add r2, sp, #0xa8
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	add r2, sp, #0xc4
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	ldr r5, _021D13B0 @ =0x021D517C
	add r3, sp, #0
	movs r2, #7
_021D1306:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1306
	adds r0, r4, #0
	movs r1, #4
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #5
	add r2, sp, #0x1c
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x6f
	bl FUN_02019690
	movs r0, #5
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x6f
	bl FUN_02019690
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0xe0
	pop {r3, r4, r5, pc}
	nop
_021D13A4: .4byte 0x021D50D4
_021D13A8: .4byte 0x021D5154
_021D13AC: .4byte 0x021D51B4
_021D13B0: .4byte 0x021D517C
	thumb_func_end ov100_021D1208

	thumb_func_start ov100_021D13B4
ov100_021D13B4: @ 0x021D13B4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200C800
	ldr r0, [r4, #0x1c]
	bl FUN_02003694
	ldr r0, [r4, #0x18]
	bl FUN_0201C2B8
	ldr r3, _021D13DC @ =0x027E0000
	ldr r1, _021D13E0 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D13DC: .4byte 0x027E0000
_021D13E0: .4byte 0x00003FF8
	thumb_func_end ov100_021D13B4

	thumb_func_start ov100_021D13E4
ov100_021D13E4: @ 0x021D13E4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r1, _021D1494 @ =0x000007D8
	adds r5, r0, #0
	movs r0, #0x6f
	bl FUN_02018144
	ldr r2, _021D1494 @ =0x000007D8
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	adds r1, r5, #0
	movs r0, #0x7d
	adds r1, #0xc
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r5, #0xd0
	ldr r1, [r5]
	adds r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov100_021D1808
	adds r0, r4, #0
	bl ov100_021D1A54
	adds r0, r4, #0
	adds r0, #0xc
	movs r1, #0x6f
	bl ov100_021D4E3C
	movs r0, #2
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	ldr r0, _021D1498 @ =0x04001014
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsrs r0, r0, #0xe
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	adds r0, r4, #0
	ldr r3, _021D149C @ =0x000002AA
	adds r0, #0xc
	movs r2, #0xbf
	bl ov100_021D4E70
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x18]
	adds r1, #0x44
	bl ov100_021D1758
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r2, [r4, r0]
	movs r0, #0x19
	ldr r1, [r2, #0x48]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r2, #0x48]
	ldr r0, _021D14A0 @ =0x04001050
	movs r1, #0
	strh r1, [r0]
	movs r0, #8
	str r0, [sp]
	ldr r0, _021D14A4 @ =0x04000050
	movs r1, #4
	movs r2, #0x32
	movs r3, #7
	blx FUN_020BF55C
	movs r0, #1
	bl ov100_021D4DC8
	movs r0, #0
	movs r1, #0xa
	bl FUN_0200564C
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D1494: .4byte 0x000007D8
_021D1498: .4byte 0x04001014
_021D149C: .4byte 0x000002AA
_021D14A0: .4byte 0x04001050
_021D14A4: .4byte 0x04000050
	thumb_func_end ov100_021D13E4

	thumb_func_start ov100_021D14A8
ov100_021D14A8: @ 0x021D14A8
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #6
	bhi _021D14F2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D14C0: @ jump table
	.2byte _021D14CE - _021D14C0 - 2 @ case 0
	.2byte _021D14EA - _021D14C0 - 2 @ case 1
	.2byte _021D150E - _021D14C0 - 2 @ case 2
	.2byte _021D154C - _021D14C0 - 2 @ case 3
	.2byte _021D15B0 - _021D14C0 - 2 @ case 4
	.2byte _021D1614 - _021D14C0 - 2 @ case 5
	.2byte _021D163C - _021D14C0 - 2 @ case 6
_021D14CE:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x6f
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D14EA:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _021D14F4
_021D14F2:
	b _021D1686
_021D14F4:
	ldr r1, _021D16A0 @ =0x00000429
	movs r0, #0x12
	movs r2, #0
	bl FUN_02004550
	movs r1, #0
	movs r0, #0x3f
	adds r2, r1, #0
	bl FUN_02004550
	movs r0, #2
	str r0, [r4]
	b _021D1686
_021D150E:
	movs r0, #0x1b
	lsls r0, r0, #4
	adds r2, r4, r0
	ldr r1, [r4, #8]
	subs r0, #0x28
	muls r0, r1, r0
	adds r0, r2, r0
	movs r1, #1
	bl FUN_02017348
	ldr r1, [r4, #8]
	movs r2, #0x62
	lsls r2, r2, #2
	adds r3, r1, #0
	muls r3, r2, r3
	movs r0, #1
	adds r3, r4, r3
	lsls r1, r2, #1
	str r0, [r3, r1]
	ldr r1, [r4, #8]
	muls r2, r1, r2
	movs r1, #0xc7
	adds r2, r4, r2
	lsls r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #4]
	b _021D1686
_021D154C:
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	lsls r1, r0, #1
	ldr r0, _021D16A4 @ =0x021D523E
	ldrh r0, [r0, r1]
	cmp r2, r0
	bne _021D1560
	ldr r0, _021D16A8 @ =0x000005C7
	bl FUN_02005748
_021D1560:
	ldr r1, [r4, #8]
	ldr r0, _021D16AC @ =0x021D522C
	lsls r2, r1, #1
	ldrh r0, [r0, r2]
	ldr r3, [r4, #4]
	cmp r3, r0
	bne _021D1588
	lsls r2, r1, #2
	ldr r1, _021D16B0 @ =0x021D524C
	movs r0, #0x6f
	ldr r1, [r1, r2]
	str r0, [sp]
	movs r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r0, #0
	movs r3, #0x64
	str r0, [sp, #4]
	bl FUN_020059D0
_021D1588:
	ldr r0, [r4, #4]
	adds r2, r0, #1
	str r2, [r4, #4]
	ldr r0, [r4, #8]
	lsls r1, r0, #1
	ldr r0, _021D16B4 @ =0x021D5226
	ldrh r0, [r0, r1]
	cmp r2, r0
	blt _021D1686
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	adds r0, #0x53
	strb r1, [r0]
	str r1, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D1686
_021D15B0:
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r3, [r4, r0]
	movs r1, #0x53
	ldrsb r2, [r3, r1]
	adds r3, #0x53
	adds r2, r2, #1
	strb r2, [r3]
	ldr r0, [r4, r0]
	ldrsb r2, [r0, r1]
	cmp r2, #0x10
	beq _021D15D2
	ldr r0, _021D16B8 @ =0x04000050
	movs r1, #0x31
	blx FUN_020BF578
	b _021D1686
_021D15D2:
	ldr r1, [r4, #8]
	movs r0, #0x44
	muls r0, r1, r0
	movs r2, #1
	adds r0, r4, r0
	str r2, [r0, #0x54]
	movs r0, #0x1b
	lsls r0, r0, #4
	adds r2, r4, r0
	ldr r1, [r4, #8]
	subs r0, #0x28
	muls r0, r1, r0
	adds r0, r2, r0
	movs r1, #0
	bl FUN_02017348
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #3
	blt _021D1686
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	adds r0, #0x53
	strb r1, [r0]
	movs r0, #6
	str r0, [r4]
	b _021D1686
_021D1614:
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r3, [r4, r0]
	movs r1, #0x53
	ldrsb r2, [r3, r1]
	adds r3, #0x53
	subs r2, r2, #1
	strb r2, [r3]
	ldr r0, [r4, r0]
	ldrsb r2, [r0, r1]
	cmp r2, #0
	ble _021D1636
	ldr r0, _021D16B8 @ =0x04000050
	movs r1, #0x31
	blx FUN_020BF578
	b _021D1686
_021D1636:
	movs r0, #2
	str r0, [r4]
	b _021D1686
_021D163C:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x78
	blt _021D1686
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r3, [r4, r0]
	movs r1, #0x53
	ldrsb r2, [r3, r1]
	adds r3, #0x53
	adds r2, r2, #1
	strb r2, [r3]
	ldr r0, [r4, r0]
	ldrsb r2, [r0, r1]
	cmp r2, #0x10
	beq _021D1668
	ldr r0, _021D16BC @ =0x04001050
	movs r1, #0x33
	blx FUN_020BF578
	b _021D1686
_021D1668:
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x6f
	str r0, [sp, #8]
	movs r0, #0
	ldr r3, _021D16C0 @ =0x00007FFF
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
	movs r0, #0
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, pc}
_021D1686:
	adds r0, r4, #0
	bl ov100_021D17B4
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, #8]
	bl ov100_021D4C94
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D16A0: .4byte 0x00000429
_021D16A4: .4byte 0x021D523E
_021D16A8: .4byte 0x000005C7
_021D16AC: .4byte 0x021D522C
_021D16B0: .4byte 0x021D524C
_021D16B4: .4byte 0x021D5226
_021D16B8: .4byte 0x04000050
_021D16BC: .4byte 0x04001050
_021D16C0: .4byte 0x00007FFF
	thumb_func_end ov100_021D14A8

	thumb_func_start ov100_021D16C4
ov100_021D16C4: @ 0x021D16C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021D16D4
	cmp r1, #1
	beq _021D16E8
	b _021D1746
_021D16D4:
	adds r0, #0xc
	bl ov100_021D4E58
	adds r0, r4, #0
	bl ov100_021D1A24
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D174E
_021D16E8:
	movs r1, #0x7d
	lsls r1, r1, #4
	movs r0, #0x1b
	ldr r1, [r4, r1]
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	movs r1, #0x7d
	lsls r1, r1, #4
	movs r0, #0xce
	ldr r1, [r4, r1]
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	movs r1, #0x7d
	lsls r1, r1, #4
	movs r0, #0x13
	ldr r1, [r4, r1]
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	movs r1, #0x7d
	lsls r1, r1, #4
	ldr r0, _021D1754 @ =0x00000648
	ldr r1, [r4, r1]
	adds r0, r4, r0
	adds r1, #0x1c
	movs r2, #0
	bl ov100_021D4AA4
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D174E
_021D1746:
	bl FUN_020181C4
	movs r0, #0
	pop {r4, pc}
_021D174E:
	movs r0, #1
	pop {r4, pc}
	nop
_021D1754: .4byte 0x00000648
	thumb_func_end ov100_021D16C4

	thumb_func_start ov100_021D1758
ov100_021D1758: @ 0x021D1758
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _021D17A8 @ =0x021D5224
	adds r4, r0, #0
	ldrh r5, [r3, #0x20]
	add r0, sp, #0xc
	add r2, sp, #0xc
	strh r5, [r0]
	ldrh r5, [r3, #0x22]
	strh r5, [r0, #2]
	ldrh r5, [r3, #0x24]
	ldrh r3, [r3, #0x26]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r1, #0x32
	ldr r3, _021D17AC @ =0x00000A66
	lsls r1, r1, #0xe
	str r4, [sp, #8]
	bl FUN_020206D0
	movs r0, #0
	adds r1, r4, #0
	bl FUN_02020854
	adds r0, r4, #0
	bl FUN_020203D4
	movs r1, #2
	ldr r0, _021D17B0 @ =0x0000019A
	lsls r1, r1, #0x16
	adds r2, r4, #0
	bl FUN_020206BC
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021D17A8: .4byte 0x021D5224
_021D17AC: .4byte 0x00000A66
_021D17B0: .4byte 0x0000019A
	thumb_func_end ov100_021D1758

	thumb_func_start ov100_021D17B4
ov100_021D17B4: @ 0x021D17B4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	bl FUN_020203EC
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov100_021D47A0
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov100_021D4844
	movs r0, #0x1b
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0xce
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0x13
	lsls r0, r0, #6
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D1804 @ =0x00000648
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0
	movs r1, #1
	bl FUN_020241BC
	pop {r4, pc}
	.align 2, 0
_021D1804: .4byte 0x00000648
	thumb_func_end ov100_021D17B4

	thumb_func_start ov100_021D1808
ov100_021D1808: @ 0x021D1808
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	movs r3, #5
	ldr r0, [r1, #4]
	ldr r7, [r1, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0x10]
	ldr r4, [r1]
	ldr r6, [r1, #8]
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6f
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x46
	adds r2, r7, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6f
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x48
	adds r2, r7, #0
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6f
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x49
	adds r2, r7, #0
	movs r3, #4
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	movs r1, #0xac
	movs r2, #0x47
	movs r3, #0x6f
	bl FUN_02003050
	ldr r0, _021D1A18 @ =0x021D5224
	add r1, sp, #0x20
	ldrh r2, [r0]
	add r0, sp, #0x20
	strh r2, [r0]
	movs r0, #2
	str r0, [sp]
	movs r2, #0
	ldr r0, [sp, #0x18]
	adds r3, r2, #0
	bl FUN_02002FBC
	str r4, [sp]
	movs r0, #0x32
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #3
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D1A1C @ =0x0000C350
	ldr r2, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r3, r6, #0
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D1A1C @ =0x0000C350
	adds r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	adds r2, r4, #0
	movs r3, #0x30
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D1A1C @ =0x0000C350
	adds r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	adds r2, r4, #0
	movs r3, #0x2f
	bl FUN_0200CE54
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _021D1A1C @ =0x0000C350
	adds r1, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r4, #0
	movs r3, #0x31
	bl FUN_0200CC3C
	movs r2, #0x7d
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	ldr r0, _021D1A20 @ =0x00000648
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x3c
	bl ov100_021D4AC8
	movs r2, #0x7d
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x3b
	bl ov100_021D4AC8
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r3, [r5, r0]
	movs r1, #0x1b
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	lsls r1, r1, #4
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x39
	bl ov100_021D4B4C
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r3, [r5, r0]
	movs r1, #0x1b
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	lsls r1, r1, #4
	ldr r3, [r3]
	movs r0, #1
	adds r1, r5, r1
	movs r2, #0x3a
	bl ov100_021D4B4C
	movs r2, #0x7d
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x2d
	bl ov100_021D4AC8
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r3, [r5, r0]
	movs r1, #0xce
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	lsls r1, r1, #2
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x2b
	bl ov100_021D4B4C
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r3, [r5, r0]
	movs r1, #0xce
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	lsls r1, r1, #2
	ldr r3, [r3]
	movs r0, #1
	adds r1, r5, r1
	movs r2, #0x2c
	bl ov100_021D4B4C
	movs r2, #0x7d
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	movs r0, #0x13
	lsls r0, r0, #6
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x11
	bl ov100_021D4AC8
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r3, [r5, r0]
	movs r1, #0x13
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	lsls r1, r1, #6
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0xf
	bl ov100_021D4B4C
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r3, [r5, r0]
	movs r1, #0x13
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	lsls r1, r1, #6
	ldr r3, [r3]
	movs r0, #1
	adds r1, r5, r1
	movs r2, #0x10
	bl ov100_021D4B4C
	movs r0, #0x1b
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #1
	bl FUN_02017348
	movs r0, #0xce
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017348
	movs r0, #0x13
	lsls r0, r0, #6
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017348
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1A18: .4byte 0x021D5224
_021D1A1C: .4byte 0x0000C350
_021D1A20: .4byte 0x00000648
	thumb_func_end ov100_021D1808

	thumb_func_start ov100_021D1A24
ov100_021D1A24: @ 0x021D1A24
	push {r4, r5, r6, lr}
	movs r6, #0x49
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_021D1A2E:
	ldr r0, [r5, #0x58]
	bl FUN_0200DA58
	ldr r0, [r5, r6]
	bl FUN_0200DA58
	ldr r0, [r5, #0x18]
	bl FUN_0200D0F4
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, #0x44
	cmp r4, #3
	blt _021D1A2E
	pop {r4, r5, r6, pc}
	thumb_func_end ov100_021D1A24

	thumb_func_start ov100_021D1A54
ov100_021D1A54: @ 0x021D1A54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	adds r5, r0, #0
	movs r0, #0x7d
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	movs r6, #0
	ldr r0, [r1, #4]
	adds r7, r5, #0
	str r0, [sp, #0x14]
	ldr r0, [r1, #8]
	adds r4, r5, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	strh r6, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r6, [r0, #0x1c]
	strh r6, [r0, #0x1e]
	movs r0, #2
	str r0, [sp, #0x40]
	str r0, [sp, #0x5c]
	subs r0, r0, #3
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	ldr r0, _021D1C30 @ =0x0000C350
	str r6, [sp, #0x38]
	str r6, [sp, #0x3c]
	str r6, [sp, #0x60]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r6, [sp]
	adds r7, #0xe4
_021D1A98:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x30
	bl FUN_0200CE6C
	adds r1, r4, #0
	adds r1, #0xe4
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r0, [r0]
	bl FUN_0200D330
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_0200D430
	adds r0, r4, #0
	adds r0, #0xe4
	movs r1, #0
	ldr r0, [r0]
	adds r2, r1, #0
	bl FUN_0200D4C4
	adds r1, r4, #0
	adds r1, #0xf0
	movs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xec
	adds r1, r4, #0
	str r6, [r0]
	adds r1, #0xf8
	movs r0, #0x32
	strh r0, [r1]
	ldr r1, [sp]
	adds r0, #0xce
	str r1, [r4, r0]
	movs r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x42
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r1, #1
	adds r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x11
	lsls r0, r0, #4
	str r1, [r4, r0]
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	movs r0, #0x45
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r1, #0
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021D1C34 @ =ov100_021D4438
	ldr r2, _021D1C38 @ =0x00000FFF
	adds r1, r7, #0
	bl FUN_0200D9E8
	movs r1, #0x49
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	adds r6, r6, #1
	adds r0, #0x78
	adds r4, #0x44
	adds r7, #0x44
	str r0, [sp]
	cmp r6, #3
	blt _021D1A98
	ldr r1, _021D1C3C @ =0x021D5224
	add r3, sp, #0x24
	ldrh r2, [r1, #0x14]
	add r0, sp, #0x18
	movs r4, #0
	strh r2, [r0, #6]
	ldrh r2, [r1, #0x16]
	add r6, sp, #0x1c
	str r3, [sp, #0xc]
	strh r2, [r0, #8]
	ldrh r2, [r1, #0x18]
	adds r6, #2
	add r7, sp, #0x18
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #0xe]
	str r4, [sp, #8]
	strh r2, [r0]
	ldrh r2, [r1, #0x10]
	strh r2, [r0, #2]
	ldrh r1, [r1, #0x12]
	ldr r2, _021D1C40 @ =0x021D5258
	strh r1, [r0, #4]
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	adds r0, r5, #0
	str r0, [sp, #4]
	adds r0, #0x18
	str r0, [sp, #4]
_021D1B84:
	cmp r4, #1
	bne _021D1B8E
	movs r0, #0
	str r0, [sp, #0x5c]
	b _021D1B92
_021D1B8E:
	movs r0, #2
	str r0, [sp, #0x5c]
_021D1B92:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x30
	bl FUN_0200CE6C
	str r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	bl FUN_0200D330
	ldr r0, [r5, #0x18]
	movs r1, #2
	bl FUN_0200D6A4
	ldr r1, [sp, #0xc]
	ldr r0, [r5, #0x18]
	ldr r1, [r1]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldr r0, [r5, #0x18]
	adds r1, r4, #0
	bl FUN_0200D430
	movs r1, #0
	movs r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r5, #0x18]
	bl FUN_0200D4C4
	movs r0, #0
	str r0, [r5, #0x24]
	str r4, [r5, #0x20]
	movs r0, #0x32
	strh r0, [r5, #0x2c]
	ldr r0, [sp, #8]
	str r0, [r5, #0x34]
	str r0, [r5, #0x38]
	movs r0, #0
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x40]
	str r0, [r5, #0x44]
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	str r1, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x4c]
	movs r2, #1
	ldr r0, _021D1C34 @ =ov100_021D4438
	ldr r1, [sp, #4]
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	str r0, [r5, #0x58]
	ldr r0, [sp, #0xc]
	adds r4, r4, #1
	adds r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r5, #0x44
	adds r0, #0x78
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r7, r7, #2
	adds r0, #0x44
	adds r6, r6, #2
	str r0, [sp, #4]
	cmp r4, #3
	blt _021D1B84
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1C30: .4byte 0x0000C350
_021D1C34: .4byte ov100_021D4438
_021D1C38: .4byte 0x00000FFF
_021D1C3C: .4byte 0x021D5224
_021D1C40: .4byte 0x021D5258
	thumb_func_end ov100_021D1A54

	thumb_func_start ov100_021D1C44
ov100_021D1C44: @ 0x021D1C44
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _021D1C8C @ =0x021D5290
	adds r4, r0, #0
	ldrh r5, [r3]
	add r0, sp, #0xc
	add r2, sp, #0xc
	strh r5, [r0]
	ldrh r5, [r3, #2]
	strh r5, [r0, #2]
	ldrh r5, [r3, #4]
	ldrh r3, [r3, #6]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r1, #0
	ldr r1, _021D1C90 @ =0x0013C805
	ldr r3, _021D1C94 @ =0x00000C01
	str r4, [sp, #8]
	bl FUN_020206D0
	adds r0, r4, #0
	bl FUN_020203D4
	movs r0, #0xa
	movs r1, #0x3f
	lsls r0, r0, #0xc
	lsls r1, r1, #0x10
	adds r2, r4, #0
	bl FUN_020206BC
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021D1C8C: .4byte 0x021D5290
_021D1C90: .4byte 0x0013C805
_021D1C94: .4byte 0x00000C01
	thumb_func_end ov100_021D1C44

	thumb_func_start ov100_021D1C98
ov100_021D1C98: @ 0x021D1C98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, _021D2038 @ =0x00001EC8
	movs r3, #5
	ldr r1, [r5, r0]
	ldr r0, [r1, #0xc]
	ldr r4, [r1]
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0x10]
	ldr r7, [r1, #4]
	ldr r6, [r1, #8]
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6f
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	adds r0, r4, #0
	movs r1, #0x12
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6f
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	adds r0, r4, #0
	movs r1, #0x14
	movs r3, #5
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	movs r1, #0xac
	movs r2, #0x13
	movs r3, #0x6f
	bl FUN_02003050
	movs r1, #0
	str r1, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x18]
	movs r1, #0xac
	movs r2, #0x13
	movs r3, #0x6f
	bl FUN_02003050
	str r4, [sp]
	movs r0, #0x32
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #3
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D203C @ =0x0000C350
	adds r2, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r3, r6, #0
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D203C @ =0x0000C350
	adds r1, r6, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #0x30
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D203C @ =0x0000C350
	adds r1, r6, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #0x2f
	bl FUN_0200CE54
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _021D203C @ =0x0000C350
	adds r1, r6, #0
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #0x31
	bl FUN_0200CC3C
	ldr r2, _021D2038 @ =0x00001EC8
	movs r0, #0x1b
	ldr r2, [r5, r2]
	lsls r0, r0, #4
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x2e
	bl ov100_021D4AC8
	ldr r0, _021D2040 @ =0x000018A8
	movs r7, #0x62
	movs r6, #0
	adds r4, r5, r0
	lsls r7, r7, #2
_021D1D8A:
	ldr r2, _021D2038 @ =0x00001EC8
	adds r0, r4, #0
	ldr r2, [r5, r2]
	movs r1, #0x41
	ldr r2, [r2]
	bl ov100_021D4AC8
	ldr r1, _021D2044 @ =0x00001333
	movs r2, #1
	adds r0, r4, #0
	lsls r2, r2, #0xc
	adds r3, r1, #0
	bl FUN_0201736C
	adds r6, r6, #1
	adds r4, r4, r7
	cmp r6, #4
	blt _021D1D8A
	ldr r2, _021D2038 @ =0x00001EC8
	movs r0, #0x13
	ldr r2, [r5, r2]
	lsls r0, r0, #6
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x18
	bl ov100_021D4AC8
	ldr r0, _021D2038 @ =0x00001EC8
	movs r1, #0x13
	ldr r3, [r5, r0]
	lsls r1, r1, #6
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x16
	bl ov100_021D4B4C
	ldr r0, _021D2038 @ =0x00001EC8
	movs r1, #0x13
	ldr r3, [r5, r0]
	lsls r1, r1, #6
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	adds r1, r5, r1
	movs r2, #0x17
	bl ov100_021D4B4C
	ldr r2, _021D2038 @ =0x00001EC8
	ldr r0, _021D2048 @ =0x00000648
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x35
	bl ov100_021D4AC8
	ldr r0, _021D2038 @ =0x00001EC8
	ldr r1, _021D2048 @ =0x00000648
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x33
	bl ov100_021D4B4C
	ldr r0, _021D2038 @ =0x00001EC8
	ldr r1, _021D2048 @ =0x00000648
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	movs r2, #0x34
	bl ov100_021D4B4C
	ldr r2, _021D2038 @ =0x00001EC8
	movs r0, #0xce
	ldr r2, [r5, r2]
	lsls r0, r0, #2
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x37
	bl ov100_021D4AC8
	ldr r0, _021D2038 @ =0x00001EC8
	movs r1, #0xce
	ldr r3, [r5, r0]
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x36
	bl ov100_021D4B4C
	ldr r0, _021D2038 @ =0x00001EC8
	movs r1, #0xce
	ldr r3, [r5, r0]
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	adds r1, r5, r1
	movs r2, #0x38
	bl ov100_021D4B4C
	ldr r2, _021D2038 @ =0x00001EC8
	movs r0, #0x7d
	ldr r2, [r5, r2]
	lsls r0, r0, #4
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x42
	bl ov100_021D4AC8
	movs r0, #0x7d
	ldr r1, _021D204C @ =0xFFFCE000
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r2, #0
	adds r3, r1, #0
	bl FUN_02017350
	ldr r0, _021D2038 @ =0x00001EC8
	movs r1, #0x7d
	ldr r3, [r5, r0]
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x43
	bl ov100_021D4B4C
	movs r1, #0x93
	lsls r1, r1, #4
	movs r2, #1
	str r2, [r5, r1]
	adds r0, r1, #4
	str r2, [r5, r0]
	adds r0, r1, #0
	lsls r2, r2, #0xb
	subs r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D2038 @ =0x00001EC8
	adds r1, #0x28
	ldr r2, [r5, r2]
	adds r0, r5, r1
	ldr r2, [r2]
	movs r1, #0x44
	bl ov100_021D4AC8
	ldr r0, _021D2050 @ =0x00000958
	movs r1, #0x32
	ldr r3, _021D204C @ =0xFFFCE000
	adds r0, r5, r0
	lsls r1, r1, #0xc
	movs r2, #0
	bl FUN_02017350
	ldr r0, _021D2038 @ =0x00001EC8
	ldr r1, _021D2050 @ =0x00000958
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x45
	bl ov100_021D4B4C
	ldr r1, _021D2054 @ =0x00000AB8
	movs r2, #1
	str r2, [r5, r1]
	adds r0, r1, #4
	str r2, [r5, r0]
	adds r0, r1, #0
	lsls r2, r2, #0xb
	subs r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D2038 @ =0x00001EC8
	adds r1, #0x28
	ldr r2, [r5, r2]
	adds r0, r5, r1
	ldr r2, [r2]
	movs r1, #0x1a
	bl ov100_021D4AC8
	movs r0, #0xae
	lsls r0, r0, #4
	movs r1, #0
	ldr r2, _021D2058 @ =0xFFFA6000
	adds r0, r5, r0
	adds r3, r1, #0
	bl FUN_02017350
	movs r0, #0xae
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017348
	ldr r0, _021D2038 @ =0x00001EC8
	movs r1, #0xae
	ldr r3, [r5, r0]
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x19
	bl ov100_021D4B4C
	ldr r0, _021D2038 @ =0x00001EC8
	movs r1, #0xae
	ldr r3, [r5, r0]
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	adds r1, r5, r1
	movs r2, #0x1b
	bl ov100_021D4B4C
	ldr r0, _021D205C @ =0x00000C48
	movs r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2038 @ =0x00001EC8
	adds r0, #0x20
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x1d
	bl ov100_021D4AC8
	ldr r0, _021D2060 @ =0x00000C68
	movs r1, #0
	adds r0, r5, r0
	bl FUN_02017348
	ldr r0, _021D2038 @ =0x00001EC8
	ldr r1, _021D2060 @ =0x00000C68
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x1c
	bl ov100_021D4B4C
	ldr r0, _021D2038 @ =0x00001EC8
	ldr r1, _021D2060 @ =0x00000C68
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	movs r2, #0x1e
	bl ov100_021D4B4C
	movs r0, #0xdd
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r5, r0]
	ldr r2, _021D2038 @ =0x00001EC8
	adds r0, #0x20
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x20
	bl ov100_021D4AC8
	movs r0, #0xdf
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017348
	ldr r0, _021D2038 @ =0x00001EC8
	movs r1, #0xdf
	ldr r3, [r5, r0]
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x1f
	bl ov100_021D4B4C
	ldr r0, _021D2038 @ =0x00001EC8
	movs r1, #0xdf
	ldr r3, [r5, r0]
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	adds r1, r5, r1
	movs r2, #0x21
	bl ov100_021D4B4C
	ldr r0, _021D2064 @ =0x00000F58
	movs r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2038 @ =0x00001EC8
	adds r0, #0x20
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x23
	bl ov100_021D4AC8
	ldr r0, _021D2068 @ =0x00000F78
	b _021D206C
	nop
_021D2038: .4byte 0x00001EC8
_021D203C: .4byte 0x0000C350
_021D2040: .4byte 0x000018A8
_021D2044: .4byte 0x00001333
_021D2048: .4byte 0x00000648
_021D204C: .4byte 0xFFFCE000
_021D2050: .4byte 0x00000958
_021D2054: .4byte 0x00000AB8
_021D2058: .4byte 0xFFFA6000
_021D205C: .4byte 0x00000C48
_021D2060: .4byte 0x00000C68
_021D2064: .4byte 0x00000F58
_021D2068: .4byte 0x00000F78
_021D206C:
	movs r1, #0
	adds r0, r5, r0
	bl FUN_02017348
	ldr r0, _021D2224 @ =0x00001EC8
	ldr r1, _021D2228 @ =0x00000F78
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x22
	bl ov100_021D4B4C
	ldr r0, _021D2224 @ =0x00001EC8
	ldr r1, _021D2228 @ =0x00000F78
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	movs r2, #0x24
	bl ov100_021D4B4C
	ldr r0, _021D222C @ =0x000010E0
	movs r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2224 @ =0x00001EC8
	adds r0, #0x20
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x26
	bl ov100_021D4AC8
	movs r0, #0x11
	lsls r0, r0, #8
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017348
	ldr r0, _021D2224 @ =0x00001EC8
	movs r1, #0x11
	ldr r3, [r5, r0]
	lsls r1, r1, #8
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x25
	bl ov100_021D4B4C
	ldr r0, _021D2224 @ =0x00001EC8
	movs r1, #0x11
	ldr r3, [r5, r0]
	lsls r1, r1, #8
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	adds r1, r5, r1
	movs r2, #0x27
	bl ov100_021D4B4C
	ldr r0, _021D2230 @ =0x00001268
	movs r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2224 @ =0x00001EC8
	adds r0, #0x20
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x29
	bl ov100_021D4AC8
	ldr r0, _021D2234 @ =0x00001288
	movs r1, #0
	adds r0, r5, r0
	bl FUN_02017348
	ldr r0, _021D2224 @ =0x00001EC8
	ldr r1, _021D2234 @ =0x00001288
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x28
	bl ov100_021D4B4C
	ldr r2, _021D2224 @ =0x00001EC8
	ldr r0, _021D2238 @ =0x00001410
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x2a
	bl ov100_021D4AC8
	ldr r0, _021D2238 @ =0x00001410
	movs r1, #0
	adds r0, r5, r0
	bl FUN_02017348
	ldr r0, _021D223C @ =0x00001ECC
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	bl FUN_02025F30
	cmp r0, #1
	ldr r0, _021D2240 @ =0x00001598
	ldr r2, _021D2224 @ =0x00001EC8
	beq _021D2184
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x3d
	bl ov100_021D4AC8
	ldr r0, _021D2224 @ =0x00001EC8
	ldr r1, _021D2240 @ =0x00001598
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x3e
	bl ov100_021D4B4C
	b _021D21A8
_021D2184:
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x3f
	bl ov100_021D4AC8
	ldr r0, _021D2224 @ =0x00001EC8
	ldr r1, _021D2240 @ =0x00001598
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x40
	bl ov100_021D4B4C
_021D21A8:
	ldr r0, _021D2240 @ =0x00001598
	movs r1, #1
	movs r3, #0x23
	adds r0, r5, r0
	lsls r1, r1, #0xc
	movs r2, #0
	lsls r3, r3, #0xe
	bl FUN_02017350
	movs r0, #1
	ldr r1, _021D2244 @ =0x000016FC
	lsls r2, r0, #0xa
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r0, #0x10
	str r2, [r5, r0]
	adds r0, r1, #0
	movs r2, #2
	subs r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D2224 @ =0x00001EC8
	adds r1, #0x24
	ldr r2, [r5, r2]
	adds r0, r5, r1
	ldr r2, [r2]
	movs r1, #0xd
	bl ov100_021D4AC8
	ldr r0, _021D2248 @ =0x00001720
	movs r1, #1
	movs r3, #0xf
	adds r0, r5, r0
	lsls r1, r1, #0xc
	movs r2, #0
	lsls r3, r3, #0xe
	bl FUN_02017350
	ldr r0, _021D2224 @ =0x00001EC8
	ldr r1, _021D2248 @ =0x00001720
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0xe
	bl ov100_021D4B4C
	movs r0, #1
	ldr r1, _021D224C @ =0x00001884
	lsls r2, r0, #0xa
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r0, #0x10
	str r2, [r5, r0]
	movs r0, #2
	subs r1, #0xc
	str r0, [r5, r1]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2224: .4byte 0x00001EC8
_021D2228: .4byte 0x00000F78
_021D222C: .4byte 0x000010E0
_021D2230: .4byte 0x00001268
_021D2234: .4byte 0x00001288
_021D2238: .4byte 0x00001410
_021D223C: .4byte 0x00001ECC
_021D2240: .4byte 0x00001598
_021D2244: .4byte 0x000016FC
_021D2248: .4byte 0x00001720
_021D224C: .4byte 0x00001884
	thumb_func_end ov100_021D1C98

	thumb_func_start ov100_021D2250
ov100_021D2250: @ 0x021D2250
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r5, r0, #0
	ldr r0, _021D2318 @ =0x00001EC8
	movs r4, #0
	ldr r1, [r5, r0]
	adds r7, r5, #0
	ldr r0, [r1, #4]
	movs r6, #0x10
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	str r4, [sp]
	str r0, [sp, #4]
	add r0, sp, #0xc
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	movs r0, #2
	str r0, [sp, #0x1c]
	subs r0, r0, #3
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, _021D231C @ =0x0000C350
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x38]
	str r4, [sp, #0x3c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	adds r7, #0x14
_021D2292:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0xc
	bl FUN_0200CE6C
	str r0, [r5, #0x14]
	bl FUN_0200D330
	ldr r0, [r5, #0x14]
	movs r1, #2
	bl FUN_0200D6A4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	ldr r0, [r5, #0x14]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldr r0, [r5, #0x14]
	adds r1, r4, #0
	bl FUN_0200D430
	lsls r1, r6, #0x10
	ldr r0, [r5, #0x14]
	asrs r1, r1, #0x10
	movs r2, #0x40
	bl FUN_0200D4C4
	movs r0, #1
	str r0, [r5, #0x20]
	str r4, [r5, #0x1c]
	movs r0, #0x32
	strh r0, [r5, #0x28]
	ldr r0, [sp]
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	str r4, [r5, #0x38]
	movs r0, #1
	str r0, [r5, #0x3c]
	str r0, [r5, #0x40]
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	str r1, [r5, #0x44]
	movs r0, #0
	str r0, [r5, #0x48]
	movs r2, #1
	ldr r0, _021D2320 @ =ov100_021D4414
	adds r1, r7, #0
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	str r0, [r5, #0x54]
	ldr r0, [sp]
	adds r4, r4, #1
	adds r0, #0x78
	adds r5, #0x44
	adds r6, #0x40
	adds r7, #0x44
	str r0, [sp]
	cmp r4, #3
	blt _021D2292
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2318: .4byte 0x00001EC8
_021D231C: .4byte 0x0000C350
_021D2320: .4byte ov100_021D4414
	thumb_func_end ov100_021D2250

	thumb_func_start ov100_021D2324
ov100_021D2324: @ 0x021D2324
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D232A:
	ldr r0, [r5, #0x54]
	bl FUN_0200DA58
	ldr r0, [r5, #0x14]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, #0x44
	cmp r4, #3
	blt _021D232A
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D2324

	thumb_func_start ov100_021D2340
ov100_021D2340: @ 0x021D2340
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r1, _021D2404 @ =0x00001ED0
	adds r5, r0, #0
	movs r0, #0x6f
	bl FUN_02018144
	ldr r2, _021D2404 @ =0x00001ED0
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	adds r1, r5, #0
	ldr r0, _021D2408 @ =0x00001EC8
	adds r1, #0xc
	str r1, [r4, r0]
	adds r1, r5, #0
	adds r1, #0xd0
	ldr r1, [r1]
	adds r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov100_021D1C98
	adds r0, r4, #0
	bl ov100_021D2250
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0x6f
	bl ov100_021D4E3C
	movs r0, #1
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	ldr r0, _021D240C @ =0x04001014
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsrs r0, r0, #0xe
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	adds r0, r4, #0
	ldr r3, _021D2410 @ =0x000002AA
	adds r0, #8
	movs r2, #0xbf
	bl ov100_021D4E70
	movs r0, #8
	str r0, [sp]
	ldr r0, _021D2414 @ =0x04000050
	movs r1, #4
	movs r2, #0x32
	movs r3, #7
	blx FUN_020BF55C
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _021D2418 @ =0x04001050
	movs r1, #3
	movs r2, #0x12
	movs r3, #7
	blx FUN_020BF55C
	ldr r2, _021D241C @ =0x04000060
	ldr r0, _021D2420 @ =0xFFFFCFFF
	ldrh r1, [r2]
	ands r1, r0
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _021D2424 @ =0x021D5298
	blx FUN_020BFD2C
	ldr r0, _021D2408 @ =0x00001EC8
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x18]
	adds r1, #0x44
	bl ov100_021D1C44
	ldr r0, _021D2408 @ =0x00001EC8
	movs r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x48]
	movs r0, #1
	bl ov100_021D4DC8
	adds r0, r5, #0
	movs r1, #0x10
	bl ov100_021D4DD8
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D2404: .4byte 0x00001ED0
_021D2408: .4byte 0x00001EC8
_021D240C: .4byte 0x04001014
_021D2410: .4byte 0x000002AA
_021D2414: .4byte 0x04000050
_021D2418: .4byte 0x04001050
_021D241C: .4byte 0x04000060
_021D2420: .4byte 0xFFFFCFFF
_021D2424: .4byte 0x021D5298
	thumb_func_end ov100_021D2340

	thumb_func_start ov100_021D2428
ov100_021D2428: @ 0x021D2428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0x15
	bls _021D2436
	b _021D2BA4
_021D2436:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2442: @ jump table
	.2byte _021D246E - _021D2442 - 2 @ case 0
	.2byte _021D24B2 - _021D2442 - 2 @ case 1
	.2byte _021D24C2 - _021D2442 - 2 @ case 2
	.2byte _021D2504 - _021D2442 - 2 @ case 3
	.2byte _021D252A - _021D2442 - 2 @ case 4
	.2byte _021D254C - _021D2442 - 2 @ case 5
	.2byte _021D2590 - _021D2442 - 2 @ case 6
	.2byte _021D25CC - _021D2442 - 2 @ case 7
	.2byte _021D2604 - _021D2442 - 2 @ case 8
	.2byte _021D26A8 - _021D2442 - 2 @ case 9
	.2byte _021D270E - _021D2442 - 2 @ case 10
	.2byte _021D272A - _021D2442 - 2 @ case 11
	.2byte _021D2750 - _021D2442 - 2 @ case 12
	.2byte _021D2826 - _021D2442 - 2 @ case 13
	.2byte _021D2846 - _021D2442 - 2 @ case 14
	.2byte _021D2892 - _021D2442 - 2 @ case 15
	.2byte _021D2948 - _021D2442 - 2 @ case 16
	.2byte _021D29AC - _021D2442 - 2 @ case 17
	.2byte _021D29FA - _021D2442 - 2 @ case 18
	.2byte _021D2A48 - _021D2442 - 2 @ case 19
	.2byte _021D2AEA - _021D2442 - 2 @ case 20
	.2byte _021D2B06 - _021D2442 - 2 @ case 21
_021D246E:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x6f
	str r0, [sp, #8]
	ldr r3, _021D27AC @ =0x00007FFF
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r2, _021D27B0 @ =0x00001EC8
	movs r1, #0
	ldr r0, [r4, r2]
	adds r0, #0x53
	strb r1, [r0]
	ldr r3, [r4, r2]
	movs r2, #0x53
	ldrsb r2, [r3, r2]
	ldr r0, _021D27B4 @ =0x04000050
	movs r1, #0x31
	blx FUN_020BF578
	ldr r2, _021D27B0 @ =0x00001EC8
	ldr r0, _021D27B8 @ =0x04001050
	ldr r3, [r4, r2]
	movs r2, #0x53
	ldrsb r2, [r3, r2]
	movs r1, #0x33
	blx FUN_020BF578
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D24B2:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D2512
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D24C2:
	ldr r1, _021D27B0 @ =0x00001EC8
	movs r2, #0x14
	ldr r0, [r4, r1]
	movs r3, #0x3c
	str r2, [r0, #0x64]
	ldr r2, [r4, r1]
	movs r0, #0
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	ldr r2, [r4, r1]
	str r0, [r2, #0x78]
	ldr r2, [r4, r1]
	adds r0, r2, #0
	adds r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	adds r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2504:
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	adds r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	bne _021D2514
_021D2512:
	b _021D2BB6
_021D2514:
	ldr r1, _021D27B0 @ =0x00001EC8
	movs r2, #0x14
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D252A:
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D2616
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D254C:
	ldr r1, _021D27B0 @ =0x00001EC8
	movs r0, #0
	ldr r2, [r4, r1]
	movs r3, #0x3c
	str r0, [r2, #0x64]
	ldr r2, [r4, r1]
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	movs r2, #0x46
	ldr r0, [r4, r1]
	lsls r2, r2, #0xc
	str r2, [r0, #0x78]
	ldr r2, [r4, r1]
	adds r0, r2, #0
	adds r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	adds r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2590:
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	adds r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	beq _021D2616
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xa
	blt _021D2616
	ldr r1, _021D27B0 @ =0x00001EC8
	movs r2, #0x15
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, _021D27BC @ =0x00001720
	ldr r1, _021D27C0 @ =0x021D54D0
	adds r0, r4, r0
	bl ov100_021D44C0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #4]
	b _021D2BB6
_021D25CC:
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D2616
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r1, _021D27B0 @ =0x00001EC8
	movs r2, #0x16
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	movs r0, #0
	movs r1, #0xa
	bl FUN_0200564C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2604:
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _021D2618
_021D2616:
	b _021D2BB6
_021D2618:
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xf
	bne _021D2648
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x1f
_021D2630:
	ldr r3, [r1, #0x20]
	adds r0, r0, #1
	lsrs r5, r3, #0x1f
	lsls r3, r3, #0x1f
	subs r3, r3, r5
	rors r3, r2
	adds r3, r5, r3
	adds r3, r3, #2
	str r3, [r1, #0x20]
	adds r1, #0x44
	cmp r0, #3
	blt _021D2630
_021D2648:
	ldr r6, [r4, #4]
	cmp r6, #0x1e
	blt _021D271C
	ldr r2, _021D27B0 @ =0x00001EC8
	movs r3, #0x53
	ldr r0, [r4, r2]
	ldrsb r1, [r0, r3]
	subs r3, #0x59
	cmp r1, r3
	ble _021D2692
	lsrs r5, r6, #0x1f
	lsls r3, r6, #0x1f
	subs r3, r3, r5
	movs r2, #0x1f
	rors r3, r2
	adds r2, r5, r3
	beq _021D2670
	subs r1, r1, #1
	adds r0, #0x53
	strb r1, [r0]
_021D2670:
	ldr r2, _021D27B0 @ =0x00001EC8
	ldr r0, _021D27B4 @ =0x04000050
	ldr r3, [r4, r2]
	movs r2, #0x53
	ldrsb r2, [r3, r2]
	movs r1, #0x31
	blx FUN_020BF578
	ldr r2, _021D27B0 @ =0x00001EC8
	ldr r0, _021D27B8 @ =0x04001050
	ldr r3, [r4, r2]
	movs r2, #0x53
	ldrsb r2, [r3, r2]
	movs r1, #0x33
	blx FUN_020BF578
	b _021D2BB6
_021D2692:
	adds r1, r2, #4
	ldr r1, [r4, r1]
	movs r2, #0x17
	bl ov100_021D46C8
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D26A8:
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D271C
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, _021D27BC @ =0x00001720
	ldr r1, _021D27C4 @ =0x021D54E8
	adds r0, r4, r0
	bl ov100_021D44C0
	ldr r1, _021D27B0 @ =0x00001EC8
	movs r0, #0
	ldr r2, [r4, r1]
	movs r3, #0x5a
	str r0, [r2, #0x64]
	ldr r2, [r4, r1]
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	ldr r2, _021D27C8 @ =0xFFFB0000
	ldr r0, [r4, r1]
	str r2, [r0, #0x78]
	ldr r2, [r4, r1]
	adds r0, r2, #0
	adds r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	adds r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D270E:
	ldr r0, _021D27B0 @ =0x00001EC8
	ldr r0, [r4, r0]
	adds r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	bne _021D271E
_021D271C:
	b _021D2BB6
_021D271E:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #4]
	b _021D2BB6
_021D272A:
	ldr r0, _021D27CC @ =0x000013E8
	movs r1, #1
	str r1, [r4, r0]
	ldr r0, _021D27D0 @ =0x00001288
	adds r0, r4, r0
	bl FUN_02017348
	ldr r0, _021D27D4 @ =0x000004BE
	bl FUN_0200549C
	movs r1, #0
	movs r0, #0x3f
	adds r2, r1, #0
	bl FUN_02004550
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2750:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	bne _021D2764
	ldr r0, _021D27BC @ =0x00001720
	ldr r1, _021D27D8 @ =0x021D54B8
	adds r0, r4, r0
	bl ov100_021D44C0
_021D2764:
	ldr r0, [r4, #4]
	cmp r0, #0xf
	beq _021D2782
	cmp r0, #0x2d
	beq _021D2782
	cmp r0, #0x4b
	beq _021D2782
	cmp r0, #0x5f
	beq _021D2782
	cmp r0, #0x73
	beq _021D2782
	cmp r0, #0x82
	beq _021D2782
	cmp r0, #0x91
	bne _021D27EA
_021D2782:
	ldr r0, _021D27DC @ =0x000005C5
	bl FUN_02005748
	ldr r5, [r4, #4]
	movs r1, #0x1e
	adds r0, r5, #0
	blx FUN_020E1F6C
	adds r2, r0, #0
	lsls r3, r2, #5
	lsrs r2, r5, #0x1f
	lsls r6, r5, #0x1b
	subs r6, r6, r2
	movs r5, #0x1b
	rors r6, r5
	adds r5, r2, r6
	movs r2, #0xa
	muls r2, r5, r2
	ldr r0, _021D27DC @ =0x000005C5
	ldr r1, _021D27E0 @ =0x0000FFFF
	b _021D27E4
	.align 2, 0
_021D27AC: .4byte 0x00007FFF
_021D27B0: .4byte 0x00001EC8
_021D27B4: .4byte 0x04000050
_021D27B8: .4byte 0x04001050
_021D27BC: .4byte 0x00001720
_021D27C0: .4byte 0x021D54D0
_021D27C4: .4byte 0x021D54E8
_021D27C8: .4byte 0xFFFB0000
_021D27CC: .4byte 0x000013E8
_021D27D0: .4byte 0x00001288
_021D27D4: .4byte 0x000004BE
_021D27D8: .4byte 0x021D54B8
_021D27DC: .4byte 0x000005C5
_021D27E0: .4byte 0x0000FFFF
_021D27E4:
	adds r2, r3, r2
	bl FUN_02004F7C
_021D27EA:
	ldr r0, _021D2B2C @ =0x000013E8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D2850
	ldr r0, _021D2B30 @ =0x00001288
	movs r1, #0
	adds r0, r4, r0
	bl FUN_02017348
	ldr r0, _021D2B34 @ =0x00001410
	movs r1, #1
	adds r0, r4, r0
	bl FUN_02017348
	movs r0, #0xae
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #1
	bl FUN_02017348
	movs r0, #0x31
	movs r1, #1
	lsls r0, r0, #6
	str r1, [r4, r0]
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2826:
	ldr r1, _021D2B38 @ =0x00000B38
	ldr r0, _021D2B3C @ =0xFFFCE000
	ldr r2, [r4, r1]
	cmp r2, r0
	bge _021D283A
	movs r0, #2
	lsls r0, r0, #0xa
	adds r0, r2, r0
	str r0, [r4, r1]
	b _021D2BB6
_021D283A:
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2846:
	movs r3, #0x31
	lsls r3, r3, #6
	ldr r0, [r4, r3]
	cmp r0, #0
	beq _021D2852
_021D2850:
	b _021D2BB6
_021D2852:
	ldr r0, _021D2B38 @ =0x00000B38
	adds r1, r3, #0
	ldr r2, [r4, r0]
	adds r1, #0x80
	str r2, [r4, r1]
	ldr r2, _021D2B40 @ =0x00000DC8
	movs r1, #1
	str r1, [r4, r2]
	adds r2, r2, #4
	str r1, [r4, r2]
	lsrs r2, r3, #1
	str r1, [r4, r2]
	ldr r2, _021D2B44 @ =0x0000062C
	subs r0, #0x58
	str r1, [r4, r2]
	ldr r2, _021D2B48 @ =0x00000498
	adds r0, r4, r0
	str r1, [r4, r2]
	adds r2, #8
	str r1, [r4, r2]
	movs r1, #0
	bl FUN_02017348
	ldr r0, _021D2B4C @ =0x00000C68
	movs r1, #1
	adds r0, r4, r0
	bl FUN_02017348
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2892:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #1
	bne _021D28A2
	ldr r0, _021D2B50 @ =0x000005C6
	bl FUN_02005748
_021D28A2:
	ldr r0, [r4, #4]
	cmp r0, #0x14
	bne _021D28B2
	ldr r0, _021D2B54 @ =0x00001720
	ldr r1, _021D2B58 @ =0x021D54A0
	adds r0, r4, r0
	bl ov100_021D44C0
_021D28B2:
	ldr r0, [r4, #4]
	cmp r0, #0x28
	bne _021D28CC
	movs r0, #0x6f
	str r0, [sp]
	movs r0, #0
	adds r2, r0, #0
	ldr r1, _021D2B5C @ =0x000001E3
	subs r2, #0x50
	movs r3, #0x28
	str r0, [sp, #4]
	bl FUN_020059D0
_021D28CC:
	ldr r0, [r4, #4]
	cmp r0, #0x41
	bne _021D28E6
	movs r0, #0x6f
	movs r1, #0x79
	str r0, [sp]
	movs r0, #0
	lsls r1, r1, #2
	movs r2, #0x50
	movs r3, #0x28
	str r0, [sp, #4]
	bl FUN_020059D0
_021D28E6:
	ldr r0, [r4, #4]
	ldr r1, _021D2B60 @ =0x0000082C
	cmp r0, #0x28
	bge _021D28F6
	movs r0, #1
	ldr r2, [r4, r1]
	lsls r0, r0, #0xa
	b _021D28FC
_021D28F6:
	adds r0, r1, #0
	ldr r2, [r4, r1]
	subs r0, #0x2c
_021D28FC:
	subs r0, r2, r0
	str r0, [r4, r1]
	ldr r0, [r4, #4]
	ldr r1, _021D2B64 @ =0x000009B4
	cmp r0, #0x41
	bge _021D290E
	ldr r2, [r4, r1]
	movs r0, #1
	b _021D2912
_021D290E:
	ldr r2, [r4, r1]
	movs r0, #2
_021D2912:
	lsls r0, r0, #0xa
	subs r0, r2, r0
	str r0, [r4, r1]
	movs r1, #0x33
	lsls r1, r1, #6
	ldr r2, [r4, r1]
	cmp r2, #0
	bge _021D292C
	movs r0, #2
	lsls r0, r0, #0xa
	adds r0, r2, r0
	str r0, [r4, r1]
	b _021D2BB6
_021D292C:
	movs r0, #0
	str r0, [r4, r1]
	ldr r1, _021D2B68 @ =0x00001EC8
	str r0, [r4, #4]
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	movs r2, #0x18
	bl ov100_021D46C8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2948:
	ldr r0, _021D2B68 @ =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _021D295C
	b _021D2BB6
_021D295C:
	ldr r0, _021D2B68 @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, _021D2B6C @ =0x000007A8
	movs r3, #1
	str r3, [r4, r0]
	movs r1, #0
	adds r2, r0, #4
	str r1, [r4, r2]
	adds r2, r0, #0
	adds r2, #0xc
	str r3, [r4, r2]
	lsls r0, r0, #1
	str r3, [r4, r0]
	ldr r0, _021D2B4C @ =0x00000C68
	adds r0, r4, r0
	bl FUN_02017348
	movs r0, #0xdf
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #1
	bl FUN_02017348
	movs r0, #0x6f
	str r0, [sp]
	movs r2, #0
	ldr r1, _021D2B70 @ =0x000001E7
	movs r0, #2
	movs r3, #0x7f
	str r2, [sp, #4]
	bl FUN_020059D0
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D29AC:
	movs r0, #0xf5
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D2A80
	ldr r1, _021D2B68 @ =0x00001EC8
	movs r2, #0x19
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, _021D2B74 @ =0x000010D8
	movs r1, #1
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021D2B6C @ =0x000007A8
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, _021D2B78 @ =0x00000648
	adds r0, r4, r0
	bl FUN_02017348
	movs r0, #0xdf
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	bl FUN_02017348
	ldr r0, _021D2B7C @ =0x00000F78
	movs r1, #1
	adds r0, r4, r0
	bl FUN_02017348
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D29FA:
	ldr r0, _021D2B68 @ =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D2A80
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D2A1A
	ldr r0, _021D2B68 @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
_021D2A1A:
	ldr r0, _021D2B80 @ =0x000004BF
	bl FUN_0200549C
	ldr r0, _021D2B84 @ =0x00001260
	movs r1, #1
	str r1, [r4, r0]
	ldr r0, _021D2B7C @ =0x00000F78
	movs r1, #0
	adds r0, r4, r0
	bl FUN_02017348
	movs r0, #0x11
	lsls r0, r0, #8
	adds r0, r4, r0
	movs r1, #1
	bl FUN_02017348
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2A48:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xee
	bne _021D2A64
	movs r0, #0x6f
	str r0, [sp]
	movs r2, #0
	ldr r1, _021D2B70 @ =0x000001E7
	movs r0, #2
	movs r3, #0x7f
	str r2, [sp, #4]
	bl FUN_020059D0
_021D2A64:
	ldr r0, [r4, #4]
	cmp r0, #0xaa
	bne _021D2A78
	ldr r1, _021D2B68 @ =0x00001EC8
	movs r2, #0x1a
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
_021D2A78:
	ldr r0, _021D2B84 @ =0x00001260
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2A82
_021D2A80:
	b _021D2BB6
_021D2A82:
	ldr r0, _021D2B68 @ =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _021D2AA2
	ldr r0, _021D2B68 @ =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_021D2AA2:
	ldr r2, _021D2B68 @ =0x00001EC8
	movs r1, #0xf
	ldr r0, [r4, r2]
	mvns r1, r1
	adds r0, #0x53
	strb r1, [r0]
	ldr r3, [r4, r2]
	movs r2, #0x53
	ldrsb r2, [r3, r2]
	ldr r0, _021D2B88 @ =0x04000050
	movs r1, #0x31
	blx FUN_020BF578
	ldr r2, _021D2B68 @ =0x00001EC8
	ldr r0, _021D2B8C @ =0x04001050
	ldr r3, [r4, r2]
	movs r2, #0x53
	ldrsb r2, [r3, r2]
	movs r1, #0x33
	blx FUN_020BF578
	bl FUN_020041FC
	movs r1, #0
	bl FUN_020055D0
	ldr r0, _021D2B68 @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #4]
	b _021D2BB6
_021D2AEA:
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x6f
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D2B06:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D2BB6
	ldr r2, _021D2B68 @ =0x00001EC8
	movs r1, #0
	ldr r0, [r4, r2]
	adds r0, #0x53
	strb r1, [r0]
	ldr r3, [r4, r2]
	movs r2, #0x53
	ldrsb r2, [r3, r2]
	ldr r0, _021D2B88 @ =0x04000050
	movs r1, #0x31
	blx FUN_020BF578
	ldr r2, _021D2B68 @ =0x00001EC8
	ldr r0, _021D2B8C @ =0x04001050
	b _021D2B90
	.align 2, 0
_021D2B2C: .4byte 0x000013E8
_021D2B30: .4byte 0x00001288
_021D2B34: .4byte 0x00001410
_021D2B38: .4byte 0x00000B38
_021D2B3C: .4byte 0xFFFCE000
_021D2B40: .4byte 0x00000DC8
_021D2B44: .4byte 0x0000062C
_021D2B48: .4byte 0x00000498
_021D2B4C: .4byte 0x00000C68
_021D2B50: .4byte 0x000005C6
_021D2B54: .4byte 0x00001720
_021D2B58: .4byte 0x021D54A0
_021D2B5C: .4byte 0x000001E3
_021D2B60: .4byte 0x0000082C
_021D2B64: .4byte 0x000009B4
_021D2B68: .4byte 0x00001EC8
_021D2B6C: .4byte 0x000007A8
_021D2B70: .4byte 0x000001E7
_021D2B74: .4byte 0x000010D8
_021D2B78: .4byte 0x00000648
_021D2B7C: .4byte 0x00000F78
_021D2B80: .4byte 0x000004BF
_021D2B84: .4byte 0x00001260
_021D2B88: .4byte 0x04000050
_021D2B8C: .4byte 0x04001050
_021D2B90:
	ldr r3, [r4, r2]
	movs r2, #0x53
	ldrsb r2, [r3, r2]
	movs r1, #0x33
	blx FUN_020BF578
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2BB6
_021D2BA4:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	blt _021D2BB6
	movs r0, #0
	add sp, #0x18
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021D2BB6:
	ldr r0, _021D2C68 @ =0x00000824
	ldr r7, _021D2C6C @ =0x00001A84
	adds r3, r4, r0
	ldr r0, _021D2C70 @ =0x000018FC
	ldr r6, _021D2C74 @ =0x00001C0C
	str r0, [sp, #0x14]
	adds r2, r4, r0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021D2C78 @ =0x000009AC
	adds r2, r4, r7
	adds r3, r4, r0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021D2C7C @ =0x000015EC
	adds r2, r4, r6
	adds r3, r4, r0
	ldm r3!, {r0, r1}
	str r2, [sp, #0xc]
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021D2C80 @ =0x00001D94
	str r0, [r2]
	ldr r0, _021D2C84 @ =0x00001774
	adds r5, r4, r0
	adds r0, r4, r3
	str r0, [sp, #0x10]
	mov ip, r0
	ldr r2, [sp, #0x10]
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r1, [r5]
	adds r0, r2, #0
	str r1, [r0]
	ldr r0, [sp, #0x14]
	movs r1, #2
	adds r0, #8
	ldr r0, [r4, r0]
	lsls r1, r1, #0xc
	str r2, [sp, #0x10]
	subs r2, r0, r1
	ldr r0, [sp, #0x14]
	adds r0, #8
	str r0, [sp, #0x14]
	str r2, [r4, r0]
	adds r0, r7, #0
	adds r0, #8
	ldr r0, [r4, r0]
	adds r7, #8
	subs r0, r0, r1
	str r0, [r4, r7]
	adds r0, r6, #0
	adds r0, #8
	ldr r0, [r4, r0]
	adds r6, #8
	subs r0, r0, r1
	str r0, [r4, r6]
	adds r0, r3, #0
	adds r0, #8
	ldr r0, [r4, r0]
	adds r3, #8
	subs r0, r0, r1
	str r0, [r4, r3]
	ldr r0, [sp, #0xc]
	ldr r2, [r0]
	lsrs r0, r1, #1
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	str r2, [r0]
	mov r0, ip
	ldr r2, [r0]
	lsrs r0, r1, #1
	subs r1, r2, r0
	mov r0, ip
	str r1, [r0]
	adds r0, r4, #0
	bl ov100_021D2E0C
	ldr r0, _021D2C88 @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4BF0
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2C68: .4byte 0x00000824
_021D2C6C: .4byte 0x00001A84
_021D2C70: .4byte 0x000018FC
_021D2C74: .4byte 0x00001C0C
_021D2C78: .4byte 0x000009AC
_021D2C7C: .4byte 0x000015EC
_021D2C80: .4byte 0x00001D94
_021D2C84: .4byte 0x00001774
_021D2C88: .4byte 0x00001EC8
	thumb_func_end ov100_021D2428

	thumb_func_start ov100_021D2C8C
ov100_021D2C8C: @ 0x021D2C8C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _021D2C9C
	cmp r1, #1
	beq _021D2CB0
	b _021D2DD6
_021D2C9C:
	bl ov100_021D2324
	adds r0, r5, #0
	adds r0, #8
	bl ov100_021D4E58
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D2DDE
_021D2CB0:
	ldr r1, _021D2DE4 @ =0x00001EC8
	movs r0, #0x1b
	ldr r1, [r5, r1]
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #0
	bl ov100_021D4AA4
	ldr r0, _021D2DE8 @ =0x000018A8
	movs r7, #0x62
	movs r6, #0
	adds r4, r5, r0
	lsls r7, r7, #2
_021D2CCC:
	ldr r1, _021D2DE4 @ =0x00001EC8
	adds r0, r4, #0
	ldr r1, [r5, r1]
	movs r2, #0
	adds r1, #0x1c
	bl ov100_021D4AA4
	adds r6, r6, #1
	adds r4, r4, r7
	cmp r6, #4
	blt _021D2CCC
	ldr r1, _021D2DE4 @ =0x00001EC8
	movs r0, #0x13
	ldr r1, [r5, r1]
	lsls r0, r0, #6
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	ldr r0, _021D2DEC @ =0x00000648
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	movs r0, #0xce
	ldr r1, [r5, r1]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	movs r0, #0x7d
	ldr r1, [r5, r1]
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	ldr r0, _021D2DF0 @ =0x00000958
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	movs r0, #0xae
	ldr r1, [r5, r1]
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	ldr r0, _021D2DF4 @ =0x00000C68
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	movs r0, #0xdf
	ldr r1, [r5, r1]
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	ldr r0, _021D2DF8 @ =0x00000F78
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	movs r0, #0x11
	ldr r1, [r5, r1]
	lsls r0, r0, #8
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	ldr r0, _021D2DFC @ =0x00001288
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	ldr r0, _021D2E00 @ =0x00001410
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #0
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	ldr r0, _021D2E04 @ =0x00001598
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 @ =0x00001EC8
	ldr r0, _021D2E08 @ =0x00001720
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #1
	bl ov100_021D4AA4
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D2DDE
_021D2DD6:
	bl FUN_020181C4
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2DDE:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2DE4: .4byte 0x00001EC8
_021D2DE8: .4byte 0x000018A8
_021D2DEC: .4byte 0x00000648
_021D2DF0: .4byte 0x00000958
_021D2DF4: .4byte 0x00000C68
_021D2DF8: .4byte 0x00000F78
_021D2DFC: .4byte 0x00001288
_021D2E00: .4byte 0x00001410
_021D2E04: .4byte 0x00001598
_021D2E08: .4byte 0x00001720
	thumb_func_end ov100_021D2C8C

	thumb_func_start ov100_021D2E0C
ov100_021D2E0C: @ 0x021D2E0C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	bl FUN_020203EC
	ldr r0, _021D2EDC @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D47A0
	ldr r0, _021D2EDC @ =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4844
	movs r0, #0x1b
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0x13
	lsls r0, r0, #6
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EE0 @ =0x00000648
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0xce
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EE4 @ =0x00001288
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EE8 @ =0x00001410
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0xae
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EEC @ =0x00000C68
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0xdf
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EF0 @ =0x00000F78
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0x11
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0x7d
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EF4 @ =0x00000958
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EF8 @ =0x00001598
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EFC @ =0x00001720
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2F00 @ =0x000018A8
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2F04 @ =0x00001A30
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2F08 @ =0x00001BB8
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0x75
	lsls r0, r0, #6
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0
	movs r1, #1
	bl FUN_020241BC
	pop {r4, pc}
	nop
_021D2EDC: .4byte 0x00001EC8
_021D2EE0: .4byte 0x00000648
_021D2EE4: .4byte 0x00001288
_021D2EE8: .4byte 0x00001410
_021D2EEC: .4byte 0x00000C68
_021D2EF0: .4byte 0x00000F78
_021D2EF4: .4byte 0x00000958
_021D2EF8: .4byte 0x00001598
_021D2EFC: .4byte 0x00001720
_021D2F00: .4byte 0x000018A8
_021D2F04: .4byte 0x00001A30
_021D2F08: .4byte 0x00001BB8
	thumb_func_end ov100_021D2E0C

	thumb_func_start ov100_021D2F0C
ov100_021D2F0C: @ 0x021D2F0C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x6f
	adds r4, r1, #0
	str r0, [sp, #0xc]
	movs r0, #0xc
	movs r1, #0xa
	adds r2, r5, #0
	movs r3, #4
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x6f
	str r0, [sp, #0xc]
	movs r0, #0xc
	movs r1, #0xb
	adds r2, r5, #0
	movs r3, #4
	bl FUN_02006E60
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0xc
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x6f
	bl FUN_02003050
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D2F0C

	thumb_func_start ov100_021D2F64
ov100_021D2F64: @ 0x021D2F64
	push {r4, lr}
	sub sp, #8
	ldr r2, _021D3064 @ =0x00001D28
	adds r4, r0, #0
	ldr r2, [r4, r2]
	movs r0, #0x25
	lsls r0, r0, #6
	ldr r2, [r2]
	adds r0, r4, r0
	movs r1, #0x54
	bl ov100_021D4AC8
	ldr r0, _021D3064 @ =0x00001D28
	movs r1, #0x25
	ldr r3, [r4, r0]
	lsls r1, r1, #6
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r4, r1
	movs r2, #0x52
	bl ov100_021D4B4C
	ldr r0, _021D3064 @ =0x00001D28
	movs r1, #0x25
	ldr r3, [r4, r0]
	lsls r1, r1, #6
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	adds r1, r4, r1
	movs r2, #0x53
	bl ov100_021D4B4C
	movs r0, #0x25
	lsls r0, r0, #6
	ldr r1, _021D3068 @ =0xFFFD0000
	ldr r2, _021D306C @ =0xFFFFB000
	ldr r3, _021D3070 @ =0xFFFBA000
	adds r0, r4, r0
	bl FUN_02017350
	movs r1, #0xaa
	movs r0, #0
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r3, _021D3064 @ =0x00001D28
	movs r0, #0x25
	ldr r3, [r4, r3]
	lsls r0, r0, #6
	adds r1, #0x28
	ldr r3, [r3]
	adds r0, r4, r0
	adds r1, r4, r1
	movs r2, #0x54
	bl ov100_021D4B10
	ldr r0, _021D3064 @ =0x00001D28
	ldr r2, _021D3074 @ =0x00000AC8
	ldr r1, [r4, r0]
	adds r2, r4, r2
	ldr r0, [r1]
	adds r1, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	movs r1, #0x25
	lsls r1, r1, #6
	movs r0, #0
	adds r1, r4, r1
	movs r3, #0x52
	bl ov100_021D4BA0
	ldr r0, _021D3064 @ =0x00001D28
	ldr r2, _021D3074 @ =0x00000AC8
	ldr r1, [r4, r0]
	adds r2, r4, r2
	ldr r0, [r1]
	adds r1, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	movs r1, #0x25
	lsls r1, r1, #6
	movs r0, #1
	adds r1, r4, r1
	movs r3, #0x53
	bl ov100_021D4BA0
	ldr r0, _021D3074 @ =0x00000AC8
	movs r1, #3
	ldr r2, _021D306C @ =0xFFFFB000
	ldr r3, _021D3070 @ =0xFFFBA000
	adds r0, r4, r0
	lsls r1, r1, #0x10
	bl FUN_02017350
	ldr r1, _021D3078 @ =0x00000C28
	movs r0, #0
	str r0, [r4, r1]
	movs r0, #0xa9
	ldr r2, _021D307C @ =0x0000019A
	lsls r0, r0, #4
	str r2, [r4, r0]
	subs r1, #0x10
	str r2, [r4, r1]
	ldr r1, [r4, r0]
	movs r0, #0x25
	lsls r0, r0, #6
	movs r2, #1
	adds r0, r4, r0
	lsls r2, r2, #0xc
	adds r3, r1, #0
	bl FUN_0201736C
	ldr r0, _021D3080 @ =0x00000C18
	movs r2, #1
	ldr r1, [r4, r0]
	ldr r0, _021D3074 @ =0x00000AC8
	lsls r2, r2, #0xc
	adds r0, r4, r0
	adds r3, r1, #0
	bl FUN_0201736C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021D3064: .4byte 0x00001D28
_021D3068: .4byte 0xFFFD0000
_021D306C: .4byte 0xFFFFB000
_021D3070: .4byte 0xFFFBA000
_021D3074: .4byte 0x00000AC8
_021D3078: .4byte 0x00000C28
_021D307C: .4byte 0x0000019A
_021D3080: .4byte 0x00000C18
	thumb_func_end ov100_021D2F64

	thumb_func_start ov100_021D3084
ov100_021D3084: @ 0x021D3084
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021D33B8 @ =0x00001D28
	adds r5, r0, #0
	ldr r2, [r5, r2]
	movs r1, #0x2e
	ldr r2, [r2]
	adds r0, #0x10
	bl ov100_021D4AC8
	ldr r2, _021D33B8 @ =0x00001D28
	movs r0, #0x32
	ldr r2, [r5, r2]
	lsls r0, r0, #4
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x18
	bl ov100_021D4AC8
	ldr r0, _021D33B8 @ =0x00001D28
	movs r1, #0x32
	ldr r3, [r5, r0]
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x16
	bl ov100_021D4B4C
	ldr r0, _021D33B8 @ =0x00001D28
	movs r1, #0x32
	ldr r3, [r5, r0]
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	adds r1, r5, r1
	movs r2, #0x17
	bl ov100_021D4B4C
	ldr r2, _021D33B8 @ =0x00001D28
	ldr r0, _021D33BC @ =0x000010E8
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x4f
	bl ov100_021D4AC8
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33BC @ =0x000010E8
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x4d
	bl ov100_021D4B4C
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33BC @ =0x000010E8
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	movs r2, #0x4e
	bl ov100_021D4B4C
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33BC @ =0x000010E8
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #2
	movs r2, #0x50
	bl ov100_021D4B4C
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33BC @ =0x000010E8
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #3
	movs r2, #0x51
	bl ov100_021D4B4C
	ldr r0, _021D33BC @ =0x000010E8
	ldr r1, _021D33C0 @ =0xFFFD0000
	ldr r2, _021D33C4 @ =0xFFFF6000
	ldr r3, _021D33C8 @ =0xFFFBA000
	adds r0, r5, r0
	bl FUN_02017350
	ldr r1, _021D33CC @ =0x00001248
	movs r2, #0
	adds r0, r1, #0
	str r2, [r5, r1]
	adds r0, #0x10
	str r2, [r5, r0]
	ldr r2, _021D33B8 @ =0x00001D28
	adds r1, #0x28
	ldr r2, [r5, r2]
	adds r0, r5, r1
	ldr r2, [r2]
	movs r1, #0x4f
	bl ov100_021D4AC8
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33D0 @ =0x00001270
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x4d
	bl ov100_021D4B4C
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33D0 @ =0x00001270
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #1
	movs r2, #0x4e
	bl ov100_021D4B4C
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33D0 @ =0x00001270
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #2
	movs r2, #0x50
	bl ov100_021D4B4C
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33D0 @ =0x00001270
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #3
	movs r2, #0x51
	bl ov100_021D4B4C
	ldr r0, _021D33D0 @ =0x00001270
	movs r1, #3
	ldr r2, _021D33C4 @ =0xFFFF6000
	ldr r3, _021D33C8 @ =0xFFFBA000
	adds r0, r5, r0
	lsls r1, r1, #0x10
	bl FUN_02017350
	movs r7, #0x62
	ldr r0, _021D33D4 @ =0x000013D0
	movs r6, #0
	str r6, [r5, r0]
	adds r0, #0x10
	str r6, [r5, r0]
	ldr r0, _021D33D8 @ =0x00001708
	lsls r7, r7, #2
	adds r4, r5, r0
_021D31F8:
	ldr r2, _021D33B8 @ =0x00001D28
	adds r0, r4, #0
	ldr r2, [r5, r2]
	movs r1, #0x41
	ldr r2, [r2]
	bl ov100_021D4AC8
	ldr r1, _021D33DC @ =0x00001333
	movs r2, #1
	adds r0, r4, #0
	lsls r2, r2, #0xc
	adds r3, r1, #0
	bl FUN_0201736C
	adds r6, r6, #1
	adds r4, r4, r7
	cmp r6, #4
	blt _021D31F8
	ldr r2, _021D33B8 @ =0x00001D28
	movs r0, #0x63
	ldr r2, [r5, r2]
	lsls r0, r0, #4
	ldr r2, [r2]
	adds r0, r5, r0
	movs r1, #0x42
	bl ov100_021D4AC8
	movs r0, #0x63
	ldr r1, _021D33E0 @ =0xFFFCE000
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r2, #0
	adds r3, r1, #0
	bl FUN_02017350
	ldr r0, _021D33B8 @ =0x00001D28
	movs r1, #0x63
	ldr r3, [r5, r0]
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0x43
	bl ov100_021D4B4C
	movs r1, #0x79
	lsls r1, r1, #4
	movs r2, #1
	str r2, [r5, r1]
	adds r0, r1, #4
	str r2, [r5, r0]
	adds r0, r1, #0
	adds r0, #0x70
	subs r1, #0xc
	str r0, [r5, r1]
	movs r0, #0x63
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017348
	ldr r0, _021D33D8 @ =0x00001708
	movs r1, #0
	adds r0, r5, r0
	bl FUN_02017348
	ldr r2, _021D33B8 @ =0x00001D28
	ldr r0, _021D33E4 @ =0x000007B8
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x44
	bl ov100_021D4AC8
	ldr r0, _021D33E4 @ =0x000007B8
	movs r1, #0x32
	ldr r3, _021D33E0 @ =0xFFFCE000
	adds r0, r5, r0
	lsls r1, r1, #0xc
	movs r2, #0
	bl FUN_02017350
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33E4 @ =0x000007B8
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x45
	bl ov100_021D4B4C
	ldr r1, _021D33E8 @ =0x00000918
	movs r2, #1
	str r2, [r5, r1]
	adds r0, r1, #4
	str r2, [r5, r0]
	lsls r0, r2, #0xb
	subs r1, #0xc
	str r0, [r5, r1]
	ldr r0, _021D33E4 @ =0x000007B8
	movs r1, #0
	adds r0, r5, r0
	bl FUN_02017348
	ldr r0, _021D33EC @ =0x00001890
	movs r1, #0
	adds r0, r5, r0
	bl FUN_02017348
	ldr r0, _021D33F0 @ =0x00001D2C
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	bl FUN_02025F30
	cmp r0, #1
	ldr r0, _021D33F4 @ =0x000013F8
	ldr r2, _021D33B8 @ =0x00001D28
	beq _021D3316
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x3d
	bl ov100_021D4AC8
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33F4 @ =0x000013F8
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x3e
	bl ov100_021D4B4C
	b _021D333A
_021D3316:
	ldr r2, [r5, r2]
	adds r0, r5, r0
	ldr r2, [r2]
	movs r1, #0x3f
	bl ov100_021D4AC8
	ldr r0, _021D33B8 @ =0x00001D28
	ldr r1, _021D33F4 @ =0x000013F8
	ldr r3, [r5, r0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	movs r2, #0x40
	bl ov100_021D4B4C
_021D333A:
	ldr r0, _021D33F4 @ =0x000013F8
	movs r1, #1
	movs r3, #0x23
	adds r0, r5, r0
	lsls r1, r1, #0xc
	movs r2, #0
	lsls r3, r3, #0xe
	bl FUN_02017350
	movs r0, #1
	ldr r1, _021D33F8 @ =0x0000155C
	lsls r2, r0, #0xa
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r0, #0x10
	str r2, [r5, r0]
	adds r0, r1, #0
	movs r2, #2
	subs r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D33B8 @ =0x00001D28
	adds r1, #0x24
	ldr r2, [r5, r2]
	adds r0, r5, r1
	ldr r2, [r2]
	movs r1, #0xd
	bl ov100_021D4AC8
	movs r0, #0x56
	lsls r0, r0, #6
	movs r1, #1
	movs r3, #0xf
	adds r0, r5, r0
	lsls r1, r1, #0xc
	movs r2, #0
	lsls r3, r3, #0xe
	bl FUN_02017350
	ldr r0, _021D33B8 @ =0x00001D28
	movs r1, #0x56
	ldr r3, [r5, r0]
	lsls r1, r1, #6
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r3, [r3]
	movs r0, #0
	adds r1, r5, r1
	movs r2, #0xe
	bl ov100_021D4B4C
	movs r0, #1
	ldr r1, _021D33FC @ =0x000016E4
	lsls r2, r0, #0xa
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r0, #0x10
	str r2, [r5, r0]
	movs r0, #2
	subs r1, #0xc
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D33B8: .4byte 0x00001D28
_021D33BC: .4byte 0x000010E8
_021D33C0: .4byte 0xFFFD0000
_021D33C4: .4byte 0xFFFF6000
_021D33C8: .4byte 0xFFFBA000
_021D33CC: .4byte 0x00001248
_021D33D0: .4byte 0x00001270
_021D33D4: .4byte 0x000013D0
_021D33D8: .4byte 0x00001708
_021D33DC: .4byte 0x00001333
_021D33E0: .4byte 0xFFFCE000
_021D33E4: .4byte 0x000007B8
_021D33E8: .4byte 0x00000918
_021D33EC: .4byte 0x00001890
_021D33F0: .4byte 0x00001D2C
_021D33F4: .4byte 0x000013F8
_021D33F8: .4byte 0x0000155C
_021D33FC: .4byte 0x000016E4
	thumb_func_end ov100_021D3084

	thumb_func_start ov100_021D3400
ov100_021D3400: @ 0x021D3400
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021D34AC @ =0x00001D28
	adds r5, r0, #0
	ldr r1, [r5, r1]
	adds r0, #0x10
	adds r1, #0x1c
	movs r2, #0
	bl ov100_021D4AA4
	ldr r0, _021D34B0 @ =0x00001708
	movs r7, #0x62
	movs r6, #0
	adds r4, r5, r0
	lsls r7, r7, #2
_021D341C:
	ldr r1, _021D34AC @ =0x00001D28
	adds r0, r4, #0
	ldr r1, [r5, r1]
	movs r2, #0
	adds r1, #0x1c
	bl ov100_021D4AA4
	adds r6, r6, #1
	adds r4, r4, r7
	cmp r6, #4
	blt _021D341C
	ldr r1, _021D34AC @ =0x00001D28
	movs r0, #0x32
	ldr r1, [r5, r1]
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D34AC @ =0x00001D28
	movs r0, #0x63
	ldr r1, [r5, r1]
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D34AC @ =0x00001D28
	ldr r0, _021D34B4 @ =0x000007B8
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D34AC @ =0x00001D28
	movs r0, #0x25
	ldr r1, [r5, r1]
	lsls r0, r0, #6
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D34AC @ =0x00001D28
	ldr r0, _021D34B8 @ =0x00000AC8
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D34AC @ =0x00001D28
	ldr r0, _021D34BC @ =0x000013F8
	ldr r1, [r5, r1]
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D34AC @ =0x00001D28
	movs r0, #0x56
	ldr r1, [r5, r1]
	lsls r0, r0, #6
	adds r0, r5, r0
	adds r1, #0x1c
	movs r2, #1
	bl ov100_021D4AA4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D34AC: .4byte 0x00001D28
_021D34B0: .4byte 0x00001708
_021D34B4: .4byte 0x000007B8
_021D34B8: .4byte 0x00000AC8
_021D34BC: .4byte 0x000013F8
	thumb_func_end ov100_021D3400

	thumb_func_start ov100_021D34C0
ov100_021D34C0: @ 0x021D34C0
	push {r4, lr}
	ldr r1, _021D34F0 @ =0x00001D28
	adds r4, r0, #0
	ldr r0, _021D34F4 @ =0x000010E8
	ldr r1, [r4, r1]
	adds r0, r4, r0
	adds r1, #0x1c
	movs r2, #4
	bl ov100_021D4AA4
	ldr r1, _021D34F0 @ =0x00001D28
	ldr r0, _021D34F8 @ =0x00001270
	ldr r1, [r4, r1]
	adds r0, r4, r0
	adds r1, #0x1c
	movs r2, #4
	bl ov100_021D4AA4
	ldr r0, _021D34FC @ =0x0000125C
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, _021D3500 @ =0x000013E4
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D34F0: .4byte 0x00001D28
_021D34F4: .4byte 0x000010E8
_021D34F8: .4byte 0x00001270
_021D34FC: .4byte 0x0000125C
_021D3500: .4byte 0x000013E4
	thumb_func_end ov100_021D34C0

	thumb_func_start ov100_021D3504
ov100_021D3504: @ 0x021D3504
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _021D354C @ =0x021D52A8
	adds r4, r0, #0
	ldrh r5, [r3]
	add r0, sp, #0xc
	add r2, sp, #0xc
	strh r5, [r0]
	ldrh r5, [r3, #2]
	strh r5, [r0, #2]
	ldrh r5, [r3, #4]
	ldrh r3, [r3, #6]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r1, #0
	ldr r1, _021D3550 @ =0x0013C805
	ldr r3, _021D3554 @ =0x00000C01
	str r4, [sp, #8]
	bl FUN_020206D0
	adds r0, r4, #0
	bl FUN_020203D4
	movs r0, #0xa
	movs r1, #0x3f
	lsls r0, r0, #0xc
	lsls r1, r1, #0x10
	adds r2, r4, #0
	bl FUN_020206BC
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021D354C: .4byte 0x021D52A8
_021D3550: .4byte 0x0013C805
_021D3554: .4byte 0x00000C01
	thumb_func_end ov100_021D3504

	thumb_func_start ov100_021D3558
ov100_021D3558: @ 0x021D3558
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	bl FUN_020203EC
	ldr r0, _021D35F8 @ =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D47A0
	ldr r0, _021D35F8 @ =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4844
	adds r0, r4, #0
	adds r0, #0x10
	bl ov100_021D49B4
	movs r0, #0x32
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0x63
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D35FC @ =0x000007B8
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3600 @ =0x000010E8
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3604 @ =0x00001270
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0x25
	lsls r0, r0, #6
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3608 @ =0x00000AC8
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D360C @ =0x000013F8
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0x56
	lsls r0, r0, #6
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3610 @ =0x00001708
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3614 @ =0x00001890
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3618 @ =0x00001A18
	adds r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D361C @ =0x00001BA0
	adds r0, r4, r0
	bl ov100_021D49B4
	movs r0, #0
	movs r1, #1
	bl FUN_020241BC
	pop {r4, pc}
	nop
_021D35F8: .4byte 0x00001D28
_021D35FC: .4byte 0x000007B8
_021D3600: .4byte 0x000010E8
_021D3604: .4byte 0x00001270
_021D3608: .4byte 0x00000AC8
_021D360C: .4byte 0x000013F8
_021D3610: .4byte 0x00001708
_021D3614: .4byte 0x00001890
_021D3618: .4byte 0x00001A18
_021D361C: .4byte 0x00001BA0
	thumb_func_end ov100_021D3558

	thumb_func_start ov100_021D3620
ov100_021D3620: @ 0x021D3620
	push {r3, r4, r5, lr}
	ldr r1, _021D36B0 @ =0x00001D60
	adds r5, r0, #0
	movs r0, #0x6f
	bl FUN_02018144
	ldr r2, _021D36B0 @ =0x00001D60
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	adds r1, r5, #0
	ldr r0, _021D36B4 @ =0x00001D28
	adds r1, #0xc
	str r1, [r4, r0]
	adds r5, #0xd0
	ldr r1, [r5]
	adds r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov100_021D3084
	ldr r0, _021D36B4 @ =0x00001D28
	ldr r1, [r4, r0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl ov100_021D2F0C
	movs r0, #8
	str r0, [sp]
	ldr r0, _021D36B8 @ =0x04000050
	movs r1, #4
	movs r2, #0x32
	movs r3, #7
	blx FUN_020BF55C
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _021D36BC @ =0x04001050
	movs r1, #3
	movs r2, #0x12
	movs r3, #7
	blx FUN_020BF55C
	ldr r2, _021D36C0 @ =0x04000060
	ldr r0, _021D36C4 @ =0xFFFFCFFF
	ldrh r1, [r2]
	ands r1, r0
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _021D36C8 @ =0x021D52B0
	blx FUN_020BFD2C
	ldr r0, _021D36B4 @ =0x00001D28
	movs r2, #0x22
	ldr r1, [r4, r0]
	lsls r2, r2, #0xc
	str r2, [r1, #0x4c]
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x18]
	adds r1, #0x44
	bl ov100_021D3504
	movs r1, #0
	movs r0, #0x3f
	adds r2, r1, #0
	bl FUN_02004550
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D36B0: .4byte 0x00001D60
_021D36B4: .4byte 0x00001D28
_021D36B8: .4byte 0x04000050
_021D36BC: .4byte 0x04001050
_021D36C0: .4byte 0x04000060
_021D36C4: .4byte 0xFFFFCFFF
_021D36C8: .4byte 0x021D52B0
	thumb_func_end ov100_021D3620

	thumb_func_start ov100_021D36CC
ov100_021D36CC: @ 0x021D36CC
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021D36DC
	cmp r1, #1
	beq _021D377E
	b _021D379C
_021D36DC:
	ldr r0, [r4, #0x10]
	movs r1, #2
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	cmp r0, #0
	ldr r0, [r4]
	beq _021D3728
	cmp r0, #4
	beq _021D36F2
	cmp r0, #6
	bne _021D36FC
_021D36F2:
	movs r1, #2
	ldr r0, [r4, #0x10]
	lsls r1, r1, #0xc
	str r1, [r0, #0x18]
	b _021D3760
_021D36FC:
	cmp r0, #5
	bne _021D3708
	ldr r0, [r4, #0x10]
	lsls r1, r1, #0xd
	str r1, [r0, #0x18]
	b _021D3760
_021D3708:
	cmp r0, #0xff
	bne _021D3716
	movs r1, #6
	ldr r0, [r4, #0x10]
	lsls r1, r1, #0xc
	str r1, [r0, #0x18]
	b _021D3760
_021D3716:
	cmp r0, #7
	bne _021D3760
	ldr r0, [r4, #0x10]
	lsls r1, r1, #0xc
	str r1, [r0, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #4
	str r1, [r0, #8]
	b _021D3760
_021D3728:
	cmp r0, #4
	beq _021D3730
	cmp r0, #6
	bne _021D3738
_021D3730:
	ldr r1, _021D37A4 @ =0xFFFFE000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	b _021D3760
_021D3738:
	cmp r0, #5
	bne _021D3744
	ldr r1, _021D37A8 @ =0xFFFFC000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	b _021D3760
_021D3744:
	cmp r0, #0xff
	bne _021D3750
	ldr r1, _021D37AC @ =0xFFFFA000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	b _021D3760
_021D3750:
	cmp r0, #7
	bne _021D3760
	ldr r1, _021D37A4 @ =0xFFFFE000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #4
	str r1, [r0, #8]
_021D3760:
	ldr r1, [r4, #8]
	movs r0, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	movs r1, #0
	str r1, [r0, #0x1c]
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x20]
	ldr r0, [r4, #0x10]
	bl ov100_021D4890
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D377E:
	ldr r0, [r4, #0x10]
	bl ov100_021D4920
	cmp r0, #0
	beq _021D37A0
	ldr r0, [r4]
	cmp r0, #8
	ldr r0, [r4, #4]
	bne _021D3796
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_021D3796:
	subs r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_021D379C:
	bl FUN_0200DA58
_021D37A0:
	pop {r4, pc}
	nop
_021D37A4: .4byte 0xFFFFE000
_021D37A8: .4byte 0xFFFFC000
_021D37AC: .4byte 0xFFFFA000
	thumb_func_end ov100_021D36CC

	thumb_func_start ov100_021D37B0
ov100_021D37B0: @ 0x021D37B0
	push {r4, lr}
	ldr r2, _021D37EC @ =0x00001D28
	adds r1, r0, #0
	ldr r3, [r1, r2]
	movs r0, #0
	str r0, [r3, #0x64]
	ldr r3, [r1, r2]
	str r0, [r3, #0x68]
	ldr r3, [r1, r2]
	str r0, [r3, #0x6c]
	ldr r4, [r1, r2]
	adds r3, r4, #0
	adds r3, #0x44
	str r3, [r4, #0x5c]
	ldr r4, [r1, r2]
	adds r3, r4, #0
	adds r3, #0x58
	adds r4, #0xbc
	str r3, [r4]
	ldr r3, [r1, r2]
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r1, r2]
	movs r2, #1
	ldr r0, _021D37F0 @ =ov100_021D36CC
	adds r1, #0xac
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	pop {r4, pc}
	.align 2, 0
_021D37EC: .4byte 0x00001D28
_021D37F0: .4byte ov100_021D36CC
	thumb_func_end ov100_021D37B0

	thumb_func_start ov100_021D37F4
ov100_021D37F4: @ 0x021D37F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r6, _021D3984 @ =0x021D52C0
	add r3, sp, #8
	adds r2, r0, #0
	adds r5, r1, #0
	ldm r6!, {r0, r1}
	adds r4, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r5]
	cmp r0, #0
	beq _021D381E
	cmp r0, #1
	beq _021D38C4
	b _021D3978
_021D381E:
	ldr r0, [r5, #4]
	movs r1, #0
	lsls r6, r0, #2
	ldr r0, [r4, r6]
	blx FUN_020E1108
	ldr r0, _021D3988 @ =0x45800000
	bls _021D3840
	ldr r1, [r4, r6]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D384E
_021D3840:
	ldr r1, [r4, r6]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D384E:
	blx FUN_020E1740
	movs r2, #1
	adds r1, r0, #0
	lsls r2, r2, #0xc
	ldr r0, [r5, #0x10]
	adds r3, r2, #0
	bl FUN_0201736C
	ldr r0, [r5, #4]
	add r6, sp, #8
	lsls r4, r0, #2
	ldr r0, [r6, r4]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _021D3988 @ =0x45800000
	bls _021D3884
	ldr r1, [r6, r4]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D3892
_021D3884:
	ldr r1, [r6, r4]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D3892:
	blx FUN_020E1740
	movs r2, #1
	adds r1, r0, #0
	lsls r2, r2, #0xc
	ldr r0, [r5, #0x14]
	adds r3, r2, #0
	bl FUN_0201736C
	ldr r0, [r5, #4]
	movs r1, #1
	adds r0, r0, #1
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	bl FUN_02017348
	ldr r0, [r5, #0x14]
	movs r1, #1
	bl FUN_02017348
	ldr r0, [r5]
	add sp, #0x24
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, pc}
_021D38C4:
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #7
	blo _021D38F0
	movs r0, #0x6f
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, [r5, #8]
	movs r2, #0xc
	lsls r1, r1, #0x10
	ldrsh r2, [r5, r2]
	lsrs r1, r1, #0x10
	movs r3, #0x50
	bl FUN_020059D0
	ldr r0, [r5]
	add sp, #0x24
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, pc}
_021D38F0:
	lsls r6, r0, #2
	ldr r0, [r4, r6]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _021D3988 @ =0x45800000
	bls _021D3910
	ldr r1, [r4, r6]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D391E
_021D3910:
	ldr r1, [r4, r6]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D391E:
	blx FUN_020E1740
	movs r2, #1
	adds r1, r0, #0
	lsls r2, r2, #0xc
	ldr r0, [r5, #0x10]
	adds r3, r2, #0
	bl FUN_0201736C
	ldr r0, [r5, #4]
	add r6, sp, #8
	lsls r4, r0, #2
	ldr r0, [r6, r4]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _021D3988 @ =0x45800000
	bls _021D3954
	ldr r1, [r6, r4]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D3962
_021D3954:
	ldr r1, [r6, r4]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D3962:
	blx FUN_020E1740
	movs r2, #1
	adds r1, r0, #0
	lsls r2, r2, #0xc
	ldr r0, [r5, #0x14]
	adds r3, r2, #0
	bl FUN_0201736C
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_021D3978:
	adds r0, r2, #0
	bl FUN_0200DA58
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021D3984: .4byte 0x021D52C0
_021D3988: .4byte 0x45800000
	thumb_func_end ov100_021D37F4

	thumb_func_start ov100_021D398C
ov100_021D398C: @ 0x021D398C
	push {r4, r5, r6, lr}
	ldr r3, _021D39D8 @ =0x00001D30
	adds r6, r1, #0
	adds r4, r0, r3
	movs r3, #0x18
	muls r6, r3, r6
	movs r3, #0
	adds r5, r4, r6
	str r3, [r4, r6]
	str r3, [r5, #4]
	str r2, [r5, #8]
	movs r2, #0x62
	movs r4, #0x63
	lsls r2, r2, #2
	lsls r4, r4, #4
	muls r2, r1, r2
	adds r4, r0, r4
	adds r4, r4, r2
	str r4, [r5, #0x10]
	ldr r4, _021D39DC @ =0x00001708
	adds r0, r0, r4
	adds r0, r0, r2
	str r0, [r5, #0x14]
	cmp r1, #0
	bne _021D39C4
	subs r3, #0x50
	strh r3, [r5, #0xc]
	b _021D39C8
_021D39C4:
	movs r0, #0x50
	strh r0, [r5, #0xc]
_021D39C8:
	movs r2, #1
	ldr r0, _021D39E0 @ =ov100_021D37F4
	adds r1, r5, #0
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_021D39D8: .4byte 0x00001D30
_021D39DC: .4byte 0x00001708
_021D39E0: .4byte ov100_021D37F4
	thumb_func_end ov100_021D398C

	thumb_func_start ov100_021D39E4
ov100_021D39E4: @ 0x021D39E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0x11
	bls _021D39F2
	b _021D3EEC
_021D39F2:
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D39FE: @ jump table
	.2byte _021D3A22 - _021D39FE - 2 @ case 0
	.2byte _021D3A30 - _021D39FE - 2 @ case 1
	.2byte _021D3A70 - _021D39FE - 2 @ case 2
	.2byte _021D3A98 - _021D39FE - 2 @ case 3
	.2byte _021D3AC6 - _021D39FE - 2 @ case 4
	.2byte _021D3B14 - _021D39FE - 2 @ case 5
	.2byte _021D3B3C - _021D39FE - 2 @ case 6
	.2byte _021D3C28 - _021D39FE - 2 @ case 7
	.2byte _021D3C58 - _021D39FE - 2 @ case 8
	.2byte _021D3C70 - _021D39FE - 2 @ case 9
	.2byte _021D3CCC - _021D39FE - 2 @ case 10
	.2byte _021D3D20 - _021D39FE - 2 @ case 11
	.2byte _021D3D8E - _021D39FE - 2 @ case 12
	.2byte _021D3DD2 - _021D39FE - 2 @ case 13
	.2byte _021D3E2A - _021D39FE - 2 @ case 14
	.2byte _021D3E5A - _021D39FE - 2 @ case 15
	.2byte _021D3ECA - _021D39FE - 2 @ case 16
	.2byte _021D3EE2 - _021D39FE - 2 @ case 17
_021D3A22:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D3B1E
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D3A30:
	ldr r1, _021D3D40 @ =0x00001D28
	movs r0, #0
	ldr r2, [r4, r1]
	movs r3, #0x3c
	str r0, [r2, #0x64]
	ldr r2, [r4, r1]
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	ldr r2, _021D3D44 @ =0xFFFD2000
	ldr r0, [r4, r1]
	str r2, [r0, #0x78]
	ldr r2, [r4, r1]
	adds r0, r2, #0
	adds r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	adds r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D3A70:
	ldr r0, _021D3D40 @ =0x00001D28
	ldr r0, [r4, r0]
	adds r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	beq _021D3B1E
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	ldr r1, _021D3D40 @ =0x00001D28
	adds r0, r0, #1
	str r0, [r4]
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	movs r2, #0xe
	bl ov100_021D46C8
	b _021D3EEC
_021D3A98:
	ldr r0, _021D3D40 @ =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D3B1E
	ldr r0, _021D3D40 @ =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r1, _021D3D40 @ =0x00001D28
	movs r2, #0x10
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D3AC6:
	ldr r0, _021D3D40 @ =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D3B1E
	ldr r5, _021D3D48 @ =0x021D52DC
	add r3, sp, #0x18
	movs r2, #5
_021D3ADE:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D3ADE
	ldr r0, [r5]
	str r0, [r3]
	add r0, sp, #0x18
	bl ov100_021D4EBC
	ldr r1, _021D3D40 @ =0x00001D28
	ldr r1, [r4, r1]
	str r0, [r1, #0x54]
	adds r0, r4, #0
	bl ov100_021D37B0
	ldr r0, _021D3D40 @ =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, _021D3D4C @ =0x00001248
	movs r1, #1
	str r1, [r4, r0]
	adds r0, #0x10
	str r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D3B14:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	bge _021D3B20
_021D3B1E:
	b _021D3EEC
_021D3B20:
	ldr r0, _021D3D40 @ =0x00001D28
	movs r1, #4
	ldr r0, [r4, r0]
	adds r0, #0xac
	str r1, [r0]
	ldr r0, _021D3D50 @ =0x000013D0
	movs r1, #1
	str r1, [r4, r0]
	adds r0, #0x10
	str r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3EEC
_021D3B3C:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x50
	bne _021D3B50
	movs r1, #0x45
	ldr r0, _021D3D54 @ =0x000006D2
	mvns r1, r1
	bl FUN_02005728
_021D3B50:
	ldr r0, [r4, #4]
	cmp r0, #0x87
	bne _021D3B5E
	ldr r0, _021D3D54 @ =0x000006D2
	movs r1, #0x46
	bl FUN_02005728
_021D3B5E:
	ldr r2, [r4, #4]
	ldr r1, _021D3D58 @ =0x00000136
	cmp r2, r1
	beq _021D3B74
	adds r0, r1, #0
	adds r0, #0x41
	cmp r2, r0
	beq _021D3B74
	adds r1, #0x7a
	cmp r2, r1
	bne _021D3B7A
_021D3B74:
	ldr r0, _021D3D5C @ =0x000006D4
	bl FUN_02005748
_021D3B7A:
	movs r1, #0x47
	ldr r2, [r4, #4]
	lsls r1, r1, #2
	cmp r2, r1
	beq _021D3B92
	adds r0, r1, #0
	adds r0, #0x36
	cmp r2, r0
	beq _021D3B92
	adds r1, #0x7a
	cmp r2, r1
	bne _021D3B98
_021D3B92:
	ldr r0, _021D3D60 @ =0x000006D5
	bl FUN_02005748
_021D3B98:
	ldr r0, [r4, #4]
	cmp r0, #0xa5
	bne _021D3BA8
	movs r1, #0x45
	ldr r0, _021D3D64 @ =0x000006D3
	mvns r1, r1
	bl FUN_02005728
_021D3BA8:
	ldr r0, [r4, #4]
	cmp r0, #0xdc
	bne _021D3BB6
	ldr r0, _021D3D64 @ =0x000006D3
	movs r1, #0x46
	bl FUN_02005728
_021D3BB6:
	ldr r1, [r4, #4]
	ldr r0, _021D3D68 @ =0x000001D6
	cmp r1, r0
	bne _021D3BC8
	movs r1, #0x45
	ldr r0, _021D3D6C @ =0x000006D6
	mvns r1, r1
	bl FUN_02005728
_021D3BC8:
	movs r0, #0x82
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	cmp r1, r0
	bne _021D3BDA
	ldr r0, _021D3D6C @ =0x000006D6
	movs r1, #0x46
	bl FUN_02005728
_021D3BDA:
	ldr r0, [r4, #4]
	cmp r0, #0x78
	bne _021D3BEA
	ldr r0, _021D3D40 @ =0x00001D28
	movs r1, #5
	ldr r0, [r4, r0]
	adds r0, #0xac
	str r1, [r0]
_021D3BEA:
	ldr r0, [r4, #4]
	cmp r0, #0xd2
	bne _021D3BFA
	ldr r0, _021D3D40 @ =0x00001D28
	movs r1, #0xff
	ldr r0, [r4, r0]
	adds r0, #0xac
	str r1, [r0]
_021D3BFA:
	ldr r0, _021D3D4C @ =0x00001248
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D3C62
	ldr r0, _021D3D40 @ =0x00001D28
	movs r1, #6
	ldr r0, [r4, r0]
	ldr r2, _021D3D70 @ =0x000001E3
	adds r0, #0xac
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl ov100_021D398C
	movs r1, #0x45
	ldr r0, _021D3D74 @ =0x000006D7
	mvns r1, r1
	bl FUN_02005728
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3EEC
_021D3C28:
	ldr r1, _021D3D50 @ =0x000013D0
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021D3C62
	ldr r1, _021D3D40 @ =0x00001D28
	movs r2, #7
	ldr r1, [r4, r1]
	adds r1, #0xac
	str r2, [r1]
	movs r2, #0x79
	movs r1, #1
	lsls r2, r2, #2
	bl ov100_021D398C
	ldr r0, _021D3D74 @ =0x000006D7
	movs r1, #0x46
	bl FUN_02005728
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #4]
	b _021D3EEC
_021D3C58:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	bge _021D3C64
_021D3C62:
	b _021D3EEC
_021D3C64:
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3EEC
_021D3C70:
	ldr r3, _021D3D40 @ =0x00001D28
	movs r1, #8
	ldr r0, [r4, r3]
	adds r0, #0xac
	str r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, [r4, r3]
	cmp r0, #0
	bne _021D3CA4
	movs r2, #0x53
	ldrsb r0, [r1, r2]
	cmp r0, #8
	bge _021D3C9E
	adds r0, r0, #1
	adds r1, #0x53
	strb r0, [r1]
	ldr r3, [r4, r3]
	ldr r0, _021D3D78 @ =0x04000050
	ldrsb r2, [r3, r2]
	movs r1, #0x31
	blx FUN_020BF578
	b _021D3EEC
_021D3C9E:
	movs r0, #1
	str r0, [r4, #8]
	b _021D3EEC
_021D3CA4:
	movs r2, #0x53
	ldrsb r0, [r1, r2]
	cmp r0, #0
	ble _021D3CC0
	subs r0, r0, #2
	adds r1, #0x53
	strb r0, [r1]
	ldr r3, [r4, r3]
	ldr r0, _021D3D78 @ =0x04000050
	ldrsb r2, [r3, r2]
	movs r1, #0x31
	blx FUN_020BF578
	b _021D3EEC
_021D3CC0:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #8]
	b _021D3EEC
_021D3CCC:
	ldr r0, [r4, #8]
	ldr r2, _021D3D40 @ =0x00001D28
	cmp r0, #0
	bne _021D3CF8
	ldr r1, [r4, r2]
	movs r3, #0x53
	ldrsb r0, [r1, r3]
	cmp r0, #0xc
	bge _021D3CF2
	adds r0, r0, #1
	adds r1, #0x53
	strb r0, [r1]
	ldr r2, [r4, r2]
	ldr r0, _021D3D78 @ =0x04000050
	ldrsb r2, [r2, r3]
	movs r1, #0x31
	blx FUN_020BF578
	b _021D3EEC
_021D3CF2:
	movs r0, #1
	str r0, [r4, #8]
	b _021D3EEC
_021D3CF8:
	ldr r5, [r4, r2]
	movs r3, #0x53
	ldrsb r0, [r5, r3]
	cmp r0, #0
	ble _021D3D16
	subs r0, r0, #2
	adds r5, #0x53
	strb r0, [r5]
	ldr r2, [r4, r2]
	ldr r0, _021D3D78 @ =0x04000050
	ldrsb r2, [r2, r3]
	movs r1, #0x31
	blx FUN_020BF578
	b _021D3EEC
_021D3D16:
	adds r0, r1, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #8]
	b _021D3EEC
_021D3D20:
	ldr r2, _021D3D40 @ =0x00001D28
	movs r3, #0x53
	ldr r5, [r4, r2]
	ldrsb r1, [r5, r3]
	cmp r1, #0x10
	bge _021D3D7C
	adds r0, r1, #2
	adds r5, #0x53
	strb r0, [r5]
	ldr r2, [r4, r2]
	ldr r0, _021D3D78 @ =0x04000050
	ldrsb r2, [r2, r3]
	movs r1, #0x31
	blx FUN_020BF578
	b _021D3EEC
	.align 2, 0
_021D3D40: .4byte 0x00001D28
_021D3D44: .4byte 0xFFFD2000
_021D3D48: .4byte 0x021D52DC
_021D3D4C: .4byte 0x00001248
_021D3D50: .4byte 0x000013D0
_021D3D54: .4byte 0x000006D2
_021D3D58: .4byte 0x00000136
_021D3D5C: .4byte 0x000006D4
_021D3D60: .4byte 0x000006D5
_021D3D64: .4byte 0x000006D3
_021D3D68: .4byte 0x000001D6
_021D3D6C: .4byte 0x000006D6
_021D3D70: .4byte 0x000001E3
_021D3D74: .4byte 0x000006D7
_021D3D78: .4byte 0x04000050
_021D3D7C:
	bl ov100_021D34C0
	adds r0, r4, #0
	bl ov100_021D2F64
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3EEC
_021D3D8E:
	ldr r2, _021D3F98 @ =0x00001D28
	movs r3, #0x53
	ldr r1, [r4, r2]
	ldrsb r0, [r1, r3]
	cmp r0, #0
	beq _021D3DAE
	subs r0, r0, #1
	adds r1, #0x53
	strb r0, [r1]
	ldr r2, [r4, r2]
	ldr r0, _021D3F9C @ =0x04000050
	ldrsb r2, [r2, r3]
	movs r1, #0x31
	blx FUN_020BF578
	b _021D3EEC
_021D3DAE:
	movs r1, #0xaa
	lsls r1, r1, #4
	movs r2, #1
	str r2, [r4, r1]
	adds r0, r1, #4
	str r2, [r4, r0]
	adds r1, #0xc
	str r2, [r4, r1]
	ldr r1, _021D3FA0 @ =0x00000C28
	str r2, [r4, r1]
	adds r0, r1, #4
	str r2, [r4, r0]
	adds r1, #0xc
	str r2, [r4, r1]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3EEC
_021D3DD2:
	movs r1, #0xa9
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	ldr r2, _021D3FA4 @ =0x00000CCD
	cmp r0, r2
	bge _021D3E14
	adds r0, #0x52
	str r0, [r4, r1]
	adds r0, r2, #0
	subs r0, #0xb5
	ldr r0, [r4, r0]
	subs r2, #0xb5
	adds r0, #0x52
	str r0, [r4, r2]
	ldr r1, [r4, r1]
	movs r0, #0x25
	lsls r0, r0, #6
	movs r2, #1
	adds r0, r4, r0
	lsls r2, r2, #0xc
	adds r3, r1, #0
	bl FUN_0201736C
	ldr r0, _021D3FA8 @ =0x00000C18
	movs r2, #1
	ldr r1, [r4, r0]
	ldr r0, _021D3FAC @ =0x00000AC8
	lsls r2, r2, #0xc
	adds r0, r4, r0
	adds r3, r1, #0
	bl FUN_0201736C
	b _021D3EEC
_021D3E14:
	ldr r1, _021D3F98 @ =0x00001D28
	movs r2, #0x12
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3EEC
_021D3E2A:
	ldr r0, _021D3F98 @ =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D3EEC
	ldr r0, _021D3F98 @ =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r1, _021D3F98 @ =0x00001D28
	movs r2, #0x13
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3EEC
_021D3E5A:
	ldr r0, _021D3F98 @ =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D3EEC
	movs r1, #0xa9
	lsls r1, r1, #4
	ldr r2, [r4, r1]
	ldr r0, _021D3FB0 @ =0x0000019A
	cmp r2, r0
	ble _021D3EAA
	ldr r0, _021D3FA8 @ =0x00000C18
	subs r2, #0x52
	str r2, [r4, r1]
	ldr r2, [r4, r0]
	subs r2, #0x52
	str r2, [r4, r0]
	ldr r1, [r4, r1]
	movs r0, #0x25
	lsls r0, r0, #6
	movs r2, #1
	adds r0, r4, r0
	lsls r2, r2, #0xc
	adds r3, r1, #0
	bl FUN_0201736C
	ldr r0, _021D3FA8 @ =0x00000C18
	movs r2, #1
	ldr r1, [r4, r0]
	ldr r0, _021D3FAC @ =0x00000AC8
	lsls r2, r2, #0xc
	adds r0, r4, r0
	adds r3, r1, #0
	bl FUN_0201736C
	b _021D3EEC
_021D3EAA:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x6f
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3EEC
_021D3ECA:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D3EEC
	ldr r0, _021D3F98 @ =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3EEC
_021D3EE2:
	movs r0, #0
	str r0, [r4]
	add sp, #0x44
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021D3EEC:
	ldr r0, _021D3FB4 @ =0x00000684
	ldr r7, _021D3FB8 @ =0x000018E4
	adds r3, r4, r0
	ldr r0, _021D3FBC @ =0x0000175C
	ldr r6, _021D3FC0 @ =0x00001A6C
	str r0, [sp, #0x14]
	adds r2, r4, r0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021D3FC4 @ =0x0000080C
	adds r2, r4, r7
	adds r3, r4, r0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021D3FC8 @ =0x0000144C
	adds r2, r4, r6
	adds r3, r4, r0
	ldm r3!, {r0, r1}
	str r2, [sp, #0xc]
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021D3FCC @ =0x00001BF4
	str r0, [r2]
	ldr r0, _021D3FD0 @ =0x000015D4
	adds r5, r4, r0
	adds r0, r4, r3
	str r0, [sp, #0x10]
	mov ip, r0
	ldr r2, [sp, #0x10]
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r1, [r5]
	adds r0, r2, #0
	str r1, [r0]
	ldr r0, [sp, #0x14]
	movs r1, #2
	adds r0, #8
	ldr r0, [r4, r0]
	lsls r1, r1, #0xc
	str r2, [sp, #0x10]
	subs r2, r0, r1
	ldr r0, [sp, #0x14]
	adds r0, #8
	str r0, [sp, #0x14]
	str r2, [r4, r0]
	adds r0, r7, #0
	adds r0, #8
	ldr r0, [r4, r0]
	adds r7, #8
	subs r0, r0, r1
	str r0, [r4, r7]
	adds r0, r6, #0
	adds r0, #8
	ldr r0, [r4, r0]
	adds r6, #8
	subs r0, r0, r1
	str r0, [r4, r6]
	adds r0, r3, #0
	adds r0, #8
	ldr r0, [r4, r0]
	adds r3, #8
	subs r0, r0, r1
	str r0, [r4, r3]
	ldr r0, [sp, #0xc]
	ldr r2, [r0]
	lsrs r0, r1, #1
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	str r2, [r0]
	mov r0, ip
	ldr r2, [r0]
	lsrs r0, r1, #1
	subs r1, r2, r0
	mov r0, ip
	str r1, [r0]
	adds r0, r4, #0
	bl ov100_021D3558
	movs r0, #1
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021D3F98: .4byte 0x00001D28
_021D3F9C: .4byte 0x04000050
_021D3FA0: .4byte 0x00000C28
_021D3FA4: .4byte 0x00000CCD
_021D3FA8: .4byte 0x00000C18
_021D3FAC: .4byte 0x00000AC8
_021D3FB0: .4byte 0x0000019A
_021D3FB4: .4byte 0x00000684
_021D3FB8: .4byte 0x000018E4
_021D3FBC: .4byte 0x0000175C
_021D3FC0: .4byte 0x00001A6C
_021D3FC4: .4byte 0x0000080C
_021D3FC8: .4byte 0x0000144C
_021D3FCC: .4byte 0x00001BF4
_021D3FD0: .4byte 0x000015D4
	thumb_func_end ov100_021D39E4

	thumb_func_start ov100_021D3FD4
ov100_021D3FD4: @ 0x021D3FD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	bne _021D3FFA
	bl ov100_021D3400
	ldr r0, _021D4008 @ =0x00001D28
	movs r1, #1
	ldr r0, [r4, r0]
	movs r2, #0
	adds r0, #0x54
	adds r3, r1, #0
	bl ov100_021D4F0C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D4002
_021D3FFA:
	bl FUN_020181C4
	movs r0, #0
	pop {r4, pc}
_021D4002:
	movs r0, #1
	pop {r4, pc}
	nop
_021D4008: .4byte 0x00001D28
	thumb_func_end ov100_021D3FD4

	thumb_func_start ov100_021D400C
ov100_021D400C: @ 0x021D400C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r1, #0
	movs r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	str r1, [sp]
	str r1, [sp, #4]
	blx FUN_020E17B4
	adds r1, r4, #0
	blx FUN_020E1A9C
	str r0, [sp, #8]
	adds r0, r5, #0
	blx FUN_020E17B4
	adds r1, r6, #0
	blx FUN_020E1A9C
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	adds r1, r0, #0
	blx FUN_020E18B0
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	adds r1, r0, #0
	blx FUN_020E18B0
	adds r1, r0, #0
	adds r0, r4, #0
	blx FUN_020E0B00
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020E1108
	ldr r0, _021D4100 @ =0x45800000
	bls _021D4074
	adds r1, r4, #0
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D4082
_021D4074:
	adds r1, r4, #0
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D4082:
	blx FUN_020E1740
	blx FUN_020BCFF0
	blx FUN_020E17B4
	ldr r1, _021D4100 @ =0x45800000
	blx FUN_020E1304
	ldr r1, [sp, #0x30]
	adds r4, r0, #0
	blx FUN_020E11CC
	blo _021D40BA
	add r1, sp, #0x18
	movs r0, #0x1c
	ldrsh r0, [r1, r0]
	blx FUN_020E17B4
	adds r1, r4, #0
	blx FUN_020E1108
	bhi _021D40BA
	movs r0, #0
	adds r1, r4, #0
	blx FUN_020E1228
	bne _021D40C0
_021D40BA:
	add sp, #0x18
	movs r0, #0
	pop {r4, r5, r6, pc}
_021D40C0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x30]
	blx FUN_020E18B0
	adds r1, r4, #0
	blx FUN_020E1304
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x30]
	blx FUN_020E18B0
	adds r1, r4, #0
	blx FUN_020E1304
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	blx FUN_020E0B00
	ldr r1, [sp, #0x28]
	str r0, [r1]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	blx FUN_020E0B00
	ldr r1, [sp, #0x2c]
	str r0, [r1]
	movs r0, #1
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021D4100: .4byte 0x45800000
	thumb_func_end ov100_021D400C

	thumb_func_start ov100_021D4104
ov100_021D4104: @ 0x021D4104
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r2, [sp, #0x10]
	adds r5, r0, #0
	adds r4, r3, #0
	movs r3, #3
	adds r6, r1, #0
	ldr r0, [r5]
	add r1, sp, #0x24
	add r2, sp, #0x20
	lsls r3, r3, #0x12
	bl FUN_0200D67C
	ldr r0, [sp, #0x24]
	blx FUN_020E17B4
	ldr r1, _021D41F8 @ =0x45800000
	blx FUN_020E1304
	adds r7, r0, #0
	ldr r0, [sp, #0x20]
	blx FUN_020E17B4
	ldr r1, _021D41F8 @ =0x45800000
	blx FUN_020E1304
	adds r3, r0, #0
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r4, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov100_021D400C
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _021D41F0
	ldr r0, [sp, #0x1c]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _021D41F8 @ =0x45800000
	bls _021D417A
	ldr r1, [sp, #0x1c]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D4188
_021D417A:
	ldr r1, [sp, #0x1c]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D4188:
	blx FUN_020E1740
	adds r4, r0, #0
	ldr r0, [sp, #0x18]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _021D41F8 @ =0x45800000
	bls _021D41AC
	ldr r1, [sp, #0x18]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D41BA
_021D41AC:
	ldr r1, [sp, #0x18]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D41BA:
	blx FUN_020E1740
	adds r6, r0, #0
	ldr r0, [r5, #0x20]
	movs r1, #0x5a
	adds r0, #8
	lsls r1, r1, #2
	str r0, [r5, #0x20]
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	str r1, [r5, #0x20]
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	adds r7, r0, #0
	ldr r0, [r5, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	adds r2, r0, #0
	ldr r0, [r5]
	adds r1, r4, r7
	adds r2, r6, r2
	bl FUN_0200D5E8
_021D41F0:
	ldr r0, [sp, #0x14]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D41F8: .4byte 0x45800000
	thumb_func_end ov100_021D4104

	thumb_func_start ov100_021D41FC
ov100_021D41FC: @ 0x021D41FC
	push {r3, lr}
	movs r1, #0x20
	str r1, [sp]
	ldr r3, _021D4210 @ =0x40A00000
	movs r1, #0x80
	movs r2, #0x28
	bl ov100_021D4104
	pop {r3, pc}
	nop
_021D4210: .4byte 0x40A00000
	thumb_func_end ov100_021D41FC

	thumb_func_start ov100_021D4214
ov100_021D4214: @ 0x021D4214
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	movs r1, #0x5a
	adds r0, #8
	lsls r1, r1, #2
	str r0, [r5, #0x1c]
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	str r1, [r5, #0x1c]
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	lsls r6, r0, #6
	ldr r0, [r5, #0x1c]
	movs r7, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r7, r7, #0x12
	bl FUN_0201D264
	movs r3, #0x18
	adds r1, r0, #0
	muls r1, r3, r1
	lsls r0, r3, #0xd
	adds r4, r1, r0
	ldr r0, [r5]
	adds r1, r6, r7
	adds r2, r4, #0
	lsls r3, r3, #0xf
	bl FUN_0200D650
	asrs r0, r4, #0xb
	lsrs r0, r0, #0x14
	adds r0, r4, r0
	asrs r0, r0, #0xc
	strh r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov100_021D4214

	thumb_func_start ov100_021D4264
ov100_021D4264: @ 0x021D4264
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	adds r4, r1, #0
	movs r1, #0x5a
	adds r0, #8
	lsls r1, r1, #2
	adds r7, r2, #0
	str r3, [sp]
	str r0, [r5, #0x1c]
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r1, [r5, #0x1c]
	bl FUN_0201D250
	ldr r1, [sp]
	lsls r4, r4, #0xc
	adds r6, r1, #0
	muls r6, r0, r6
	ldr r0, [r5, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [sp, #0x18]
	lsls r3, r7, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r2, r3, r2
	movs r3, #3
	ldr r0, [r5]
	adds r1, r4, r6
	lsls r3, r3, #0x12
	bl FUN_0200D650
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D4264

	thumb_func_start ov100_021D42B0
ov100_021D42B0: @ 0x021D42B0
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #0x30]
	ldr r2, _021D430C @ =0x021D550E
	lsls r3, r1, #2
	movs r1, #0xa
	str r1, [sp]
	ldr r1, _021D4310 @ =0x021D550C
	ldrsh r2, [r2, r3]
	ldrsh r1, [r1, r3]
	ldr r3, _021D4314 @ =0x40400000
	bl ov100_021D4104
	cmp r0, #0
	bne _021D42EE
	ldr r0, [r4, #0x30]
	movs r1, #0xa
	adds r0, r0, #1
	str r0, [r4, #0x30]
	blx FUN_020E2178
	str r1, [r4, #0x30]
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E2178
	str r1, [r4, #0x30]
	movs r0, #3
	str r0, [r4, #0xc]
_021D42EE:
	movs r3, #3
	ldr r0, [r4]
	add r1, sp, #8
	add r2, sp, #4
	lsls r3, r3, #0x12
	bl FUN_0200D67C
	ldr r1, [sp, #4]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	strh r0, [r4, #0x14]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021D430C: .4byte 0x021D550E
_021D4310: .4byte 0x021D550C
_021D4314: .4byte 0x40400000
	thumb_func_end ov100_021D42B0

	thumb_func_start ov100_021D4318
ov100_021D4318: @ 0x021D4318
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	movs r1, #0x5a
	adds r0, #8
	lsls r1, r1, #2
	str r0, [r4, #0x20]
	blx FUN_020E1F6C
	str r1, [r4, #0x20]
	cmp r1, #0xc
	bge _021D4360
	ldr r0, [r4, #0x24]
	movs r1, #3
	adds r0, r0, #1
	str r0, [r4, #0x24]
	blx FUN_020E1F6C
	str r1, [r4, #0x24]
	bl FUN_0201D2E8
	ldr r1, [r4, #0x24]
	blx FUN_020E1F6C
	adds r0, r1, #1
	str r0, [r4, #0x28]
	bl FUN_0201D2E8
	ldr r1, [r4, #0x24]
	blx FUN_020E1F6C
	adds r0, r1, #1
	str r0, [r4, #0x2c]
	movs r0, #2
	str r0, [r4, #0xc]
_021D4360:
	movs r3, #3
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #0
	lsls r3, r3, #0x12
	bl FUN_0200D67C
	ldr r0, [r4, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r2, [r4, #0x28]
	ldr r3, [sp, #4]
	lsls r1, r2, #1
	adds r1, r2, r1
	muls r0, r1, r0
	adds r0, r3, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r2, [r4, #0x2c]
	ldr r3, [sp]
	lsls r1, r2, #1
	adds r1, r2, r1
	muls r0, r1, r0
	adds r2, r3, r0
	str r2, [sp]
	movs r3, #3
	ldr r0, [r4]
	ldr r1, [sp, #4]
	lsls r3, r3, #0x12
	bl FUN_0200D650
	ldr r1, [sp]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	strh r0, [r4, #0x14]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov100_021D4318

	thumb_func_start ov100_021D43BC
ov100_021D43BC: @ 0x021D43BC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x14
	ldrsh r0, [r4, r0]
	blx FUN_020E17B4
	ldr r1, _021D4404 @ =0x42C80000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, _021D4408 @ =0x3F4CCCCD
	blx FUN_020E1A9C
	ldr r1, _021D440C @ =0x3E4CCCCD
	adds r5, r0, #0
	blx FUN_020E1164
	bhi _021D43E2
	ldr r5, _021D440C @ =0x3E4CCCCD
_021D43E2:
	ldr r1, _021D4410 @ =0x3F19999A
	adds r0, r5, #0
	blx FUN_020E10AC
	blo _021D43EE
	ldr r5, _021D4410 @ =0x3F19999A
_021D43EE:
	ldr r0, [r4]
	adds r1, r5, #0
	adds r2, r5, #0
	bl FUN_0200D6E8
	movs r1, #0x14
	ldrsh r1, [r4, r1]
	ldr r0, [r4]
	bl FUN_0200D474
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4404: .4byte 0x42C80000
_021D4408: .4byte 0x3F4CCCCD
_021D440C: .4byte 0x3E4CCCCD
_021D4410: .4byte 0x3F19999A
	thumb_func_end ov100_021D43BC

	thumb_func_start ov100_021D4414
ov100_021D4414: @ 0x021D4414
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _021D4434 @ =0x021D5334
	ldr r1, [r1, r2]
	blx r1
	adds r0, r4, #0
	bl ov100_021D43BC
	ldr r0, [r4]
	bl FUN_0200D33C
	pop {r4, pc}
	nop
_021D4434: .4byte 0x021D5334
	thumb_func_end ov100_021D4414

	thumb_func_start ov100_021D4438
ov100_021D4438: @ 0x021D4438
	push {r4, lr}
	sub sp, #0x10
	adds r4, r1, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D4456
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x24
	movs r3, #0x20
	bl ov100_021D4264
	b _021D44AA
_021D4456:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D44AA
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _021D44AA
	add r1, sp, #4
	adds r1, #2
	add r2, sp, #4
	bl FUN_0200D550
	movs r0, #1
	str r0, [sp]
	add r3, sp, #4
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r3, _021D44B4 @ =0x40400000
	adds r0, r4, #0
	bl ov100_021D4104
	ldr r0, [r4]
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_0200D788
	ldr r0, [sp, #0xc]
	ldr r1, _021D44B8 @ =0x3DCCCCCD
	blx FUN_020E1108
	bls _021D44A0
	ldr r0, [sp, #0xc]
	ldr r1, _021D44BC @ =0x3B03126F
	blx FUN_020E1A9C
	str r0, [sp, #0xc]
_021D44A0:
	ldr r1, [sp, #0xc]
	ldr r0, [r4]
	adds r2, r1, #0
	bl FUN_0200D6E8
_021D44AA:
	ldr r0, [r4]
	bl FUN_0200D33C
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D44B4: .4byte 0x40400000
_021D44B8: .4byte 0x3DCCCCCD
_021D44BC: .4byte 0x3B03126F
	thumb_func_end ov100_021D4438

	thumb_func_start ov100_021D44C0
ov100_021D44C0: @ 0x021D44C0
	push {r4, r5}
	movs r2, #0x16
	movs r3, #1
	lsls r2, r2, #4
	str r3, [r0, r2]
	adds r3, r2, #0
	adds r3, #0x24
	str r1, [r0, r3]
	adds r3, r2, #0
	movs r4, #0
	adds r3, #0x20
	str r4, [r0, r3]
	adds r3, r2, #0
	adds r3, #0x20
	ldr r3, [r0, r3]
	movs r4, #0xc
	adds r5, r3, #0
	muls r5, r4, r5
	adds r3, r1, r5
	ldr r5, [r3, #4]
	adds r3, r2, #0
	adds r3, #0x18
	str r5, [r0, r3]
	lsls r3, r4, #5
	ldr r3, [r0, r3]
	adds r5, r3, #0
	muls r5, r4, r5
	adds r3, r1, r5
	ldr r5, [r3, #4]
	adds r3, r2, #0
	adds r3, #0x1c
	str r5, [r0, r3]
	lsls r3, r4, #5
	ldr r3, [r0, r3]
	subs r2, #8
	muls r4, r3, r4
	ldr r1, [r1, r4]
	str r1, [r0, r2]
	pop {r4, r5}
	bx lr
	thumb_func_end ov100_021D44C0

	thumb_func_start ov100_021D4510
ov100_021D4510: @ 0x021D4510
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x88
	bl FUN_02017248
	asrs r1, r0, #0xc
	movs r5, #0x55
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x1e
	subs r2, r2, r3
	movs r1, #0x1e
	rors r2, r1
	lsls r5, r5, #2
	adds r2, r3, r2
	ldr r3, [r4, r5]
	ldr r7, _021D45A0 @ =0x021D5344
	adds r3, r0, r3
	asrs r0, r3, #0xc
	lsrs r6, r0, #0x1f
	lsls r0, r0, #0x1e
	subs r0, r0, r6
	rors r0, r1
	adds r1, r6, r0
	adds r0, r5, #4
	ldr r0, [r4, r0]
	subs r6, r0, #1
	movs r0, #0x14
	muls r0, r6, r0
	adds r6, r5, #0
	adds r6, #8
	ldr r6, [r4, r6]
	adds r0, r7, r0
	lsls r6, r6, #2
	ldr r0, [r6, r0]
	cmp r0, #0xff
	beq _021D459E
	cmp r1, r2
	beq _021D4594
	adds r1, r5, #0
	adds r1, #8
	ldr r1, [r4, r1]
	adds r5, #8
	adds r1, r1, #1
	str r1, [r4, r5]
	lsls r1, r0, #2
	cmp r1, #0
	ble _021D4580
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D458E
_021D4580:
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D458E:
	blx FUN_020E1740
	adds r3, r0, #0
_021D4594:
	adds r4, #0x88
	adds r0, r4, #0
	adds r1, r3, #0
	bl FUN_02017240
_021D459E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D45A0: .4byte 0x021D5344
	thumb_func_end ov100_021D4510

	thumb_func_start ov100_021D45A4
ov100_021D45A4: @ 0x021D45A4
	push {r3, r4, r5, r6}
	movs r2, #0x61
	lsls r2, r2, #2
	adds r1, r2, #0
	subs r1, #0xc
	ldr r3, [r0, r1]
	ldr r4, [r0, r2]
	cmp r3, #0xff
	beq _021D45BE
	subs r1, r2, #4
	ldr r6, [r0, r1]
	cmp r6, #0xff
	bne _021D45C0
_021D45BE:
	b _021D46C2
_021D45C0:
	movs r1, #0xc
	adds r5, r6, #0
	muls r5, r1, r5
	ldr r6, [r4, r5]
	cmp r6, #0
	bne _021D45EA
	movs r1, #0
	subs r2, #0x24
	str r1, [r0, r2]
	movs r2, #0xff
	adds r1, r2, #0
	adds r1, #0x81
	str r2, [r0, r1]
	adds r1, r2, #0
	adds r1, #0x79
	str r2, [r0, r1]
	adds r1, r2, #0
	adds r1, #0x7d
	str r2, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
_021D45EA:
	adds r6, r2, #0
	subs r6, #0x28
	ldr r6, [r0, r6]
	cmp r6, #4
	blt _021D4674
	adds r3, r2, #0
	subs r3, #0xc
	ldr r3, [r0, r3]
	subs r5, r3, #1
	adds r3, r2, #0
	subs r3, #0xc
	str r5, [r0, r3]
	adds r5, r2, #0
	movs r3, #0
	subs r5, #0x28
	str r3, [r0, r5]
	adds r5, r2, #0
	subs r5, #0xc
	ldr r5, [r0, r5]
	cmp r5, #0
	bne _021D46C2
	lsls r5, r1, #5
	ldr r5, [r0, r5]
	adds r6, r5, #1
	lsls r5, r1, #5
	str r6, [r0, r5]
	ldr r5, [r0, r5]
	adds r6, r5, #0
	muls r6, r1, r6
	adds r5, r2, #0
	ldr r6, [r4, r6]
	subs r5, #0x2c
	str r6, [r0, r5]
	lsls r5, r1, #5
	ldr r5, [r0, r5]
	adds r6, r5, #0
	muls r6, r1, r6
	adds r5, r4, r6
	ldr r6, [r5, #4]
	adds r5, r2, #0
	subs r5, #0xc
	str r6, [r0, r5]
	lsls r5, r1, #5
	ldr r5, [r0, r5]
	muls r1, r5, r1
	adds r1, r4, r1
	ldr r4, [r1, #4]
	adds r1, r2, #0
	subs r1, #8
	str r4, [r0, r1]
	adds r1, r2, #0
	subs r1, #0x2c
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _021D46C2
	subs r2, #0x24
	str r3, [r0, r2]
	movs r2, #0xff
	adds r1, r2, #0
	adds r1, #0x81
	str r2, [r0, r1]
	adds r1, r2, #0
	adds r1, #0x79
	str r2, [r0, r1]
	adds r1, r2, #0
	adds r1, #0x7d
	str r2, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
_021D4674:
	cmp r6, #0
	bne _021D4680
	subs r2, #8
	ldr r1, [r0, r2]
	cmp r3, r1
	beq _021D46C2
_021D4680:
	movs r1, #0x56
	lsls r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #9
	bhi _021D46C2
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D4696: @ jump table
	.2byte _021D46C2 - _021D4696 - 2 @ case 0
	.2byte _021D46AA - _021D4696 - 2 @ case 1
	.2byte _021D46AA - _021D4696 - 2 @ case 2
	.2byte _021D46B8 - _021D4696 - 2 @ case 3
	.2byte _021D46B8 - _021D4696 - 2 @ case 4
	.2byte _021D46C2 - _021D4696 - 2 @ case 5
	.2byte _021D46C2 - _021D4696 - 2 @ case 6
	.2byte _021D46C2 - _021D4696 - 2 @ case 7
	.2byte _021D46C2 - _021D4696 - 2 @ case 8
	.2byte _021D46AA - _021D4696 - 2 @ case 9
_021D46AA:
	adds r1, r4, r5
	ldr r2, [r0, #0x5c]
	ldr r1, [r1, #8]
	subs r1, r2, r1
	str r1, [r0, #0x5c]
	pop {r3, r4, r5, r6}
	bx lr
_021D46B8:
	adds r1, r4, r5
	ldr r2, [r0, #0x54]
	ldr r1, [r1, #8]
	adds r1, r2, r1
	str r1, [r0, #0x54]
_021D46C2:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov100_021D45A4

	thumb_func_start ov100_021D46C8
ov100_021D46C8: @ 0x021D46C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _021D4784 @ =0x000001FF
	movs r1, #0x6f
	adds r7, r2, #0
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [r5, #0x2c]
	adds r1, r7, #0
	bl FUN_0200B1EC
	str r0, [sp, #0xc]
	cmp r7, #0x16
	bne _021D4726
	ldr r0, [r4, #8]
	movs r1, #0x6f
	bl FUN_02025F04
	adds r7, r0, #0
	movs r0, #0x6f
	bl FUN_0200B358
	movs r1, #1
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #0
	str r0, [sp, #0x10]
	adds r2, r7, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	adds r1, r6, #0
	bl FUN_0200C388
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x10]
	bl FUN_0200B3F0
	b _021D472E
_021D4726:
	ldr r1, [sp, #0xc]
	adds r0, r6, #0
	bl FUN_02023810
_021D472E:
	ldr r0, [r4, #4]
	bl FUN_02027AC0
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x30
	movs r1, #0xff
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	adds r0, r5, #0
	str r4, [sp, #4]
	adds r0, #0x30
	movs r1, #1
	adds r2, r6, #0
	str r3, [sp, #8]
	bl FUN_0201D738
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x30
	bl FUN_0201A954
	adds r0, r5, #0
	movs r2, #0x7d
	adds r0, #0x30
	movs r1, #0
	lsls r2, r2, #2
	movs r3, #0xf
	bl FUN_0200E060
	ldr r0, [sp, #0xc]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	str r4, [r5, #0x40]
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D4784: .4byte 0x000001FF
	thumb_func_end ov100_021D46C8

	thumb_func_start ov100_021D4788
ov100_021D4788: @ 0x021D4788
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	movs r1, #1
	bl FUN_0200E084
	adds r4, #0x30
	adds r0, r4, #0
	bl FUN_0201ACF4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov100_021D4788

	thumb_func_start ov100_021D47A0
ov100_021D47A0: @ 0x021D47A0
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _021D4828 @ =0x021D546C
	add r2, sp, #0xc
	ldm r3!, {r0, r1}
	adds r4, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021D482C @ =0x021D5460
	str r0, [r2]
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r1, r4, #0
	str r0, [r2]
	adds r0, r4, #0
	blx FUN_020BD3E4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	movs r0, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r3, r3, #0x10
	blx FUN_020AF51C
	ldr r1, _021D4830 @ =0x00007FFF
	movs r0, #0
	blx FUN_020AF558
	add r0, sp, #0
	adds r1, r0, #0
	blx FUN_020BD3E4
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	movs r0, #1
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r3, r3, #0x10
	blx FUN_020AF51C
	ldr r1, _021D4834 @ =0x000066F7
	movs r0, #1
	blx FUN_020AF558
	ldr r0, _021D4838 @ =0x00004210
	ldr r1, _021D483C @ =0x000039CE
	movs r2, #0
	blx FUN_020AF56C
	ldr r0, _021D4840 @ =0x00005294
	ldr r1, _021D4838 @ =0x00004210
	movs r2, #0
	blx FUN_020AF590
	add sp, #0x18
	pop {r4, pc}
	nop
_021D4828: .4byte 0x021D546C
_021D482C: .4byte 0x021D5460
_021D4830: .4byte 0x00007FFF
_021D4834: .4byte 0x000066F7
_021D4838: .4byte 0x00004210
_021D483C: .4byte 0x000039CE
_021D4840: .4byte 0x00005294
	thumb_func_end ov100_021D47A0

	thumb_func_start ov100_021D4844
ov100_021D4844: @ 0x021D4844
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	ldr r1, [r4, #0x18]
	add r0, sp, #0
	bl FUN_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r0, #8]
	ldrh r1, [r0, #2]
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #6]
	strh r1, [r0, #0xe]
	ldr r1, [r4, #0x18]
	add r0, sp, #0x10
	bl FUN_02020ABC
	add r5, sp, #0x10
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r1, [r4, #0x18]
	adds r0, r2, #0
	bl FUN_02020ADC
	ldr r1, [r4, #0x18]
	add r0, sp, #8
	bl FUN_020209D4
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov100_021D4844

	thumb_func_start ov100_021D4890
ov100_021D4890: @ 0x021D4890
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #8]
	str r0, [r4, #0x24]
	ldr r1, [r4, #0xc]
	movs r0, #0xb6
	muls r0, r1, r0
	ldr r1, [r4, #8]
	blx FUN_020E1F6C
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	movs r0, #0xb6
	muls r0, r1, r0
	ldr r1, [r4, #8]
	blx FUN_020E1F6C
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	movs r0, #0xb6
	muls r0, r1, r0
	ldr r1, [r4, #8]
	blx FUN_020E1F6C
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #8]
	blx FUN_020E1F6C
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #8]
	blx FUN_020E1F6C
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #8]
	blx FUN_020E1F6C
	str r0, [r4, #0x44]
	ldr r1, [r4]
	add r0, sp, #0
	bl FUN_02020A94
	add r2, sp, #0
	ldr r0, [r4, #0xc]
	ldrh r5, [r2]
	adds r3, r0, #0
	movs r1, #0xb6
	muls r3, r1, r3
	adds r0, r4, #0
	adds r3, r5, r3
	adds r0, #0x4c
	strh r3, [r0]
	ldr r0, [r4, #0x10]
	ldrh r5, [r2, #2]
	adds r3, r0, #0
	muls r3, r1, r3
	adds r0, r4, #0
	adds r3, r5, r3
	adds r0, #0x4e
	strh r3, [r0]
	ldr r0, [r4, #0x14]
	ldrh r2, [r2, #4]
	muls r1, r0, r1
	adds r4, #0x50
	adds r0, r2, r1
	strh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov100_021D4890

	thumb_func_start ov100_021D4920
ov100_021D4920: @ 0x021D4920
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, [r5]
	add r0, sp, #0
	movs r4, #0
	bl FUN_02020A94
	add r1, sp, #0
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021D494E
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D494E:
	subs r0, r0, #1
	str r0, [r5, #0x24]
	bne _021D4970
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	movs r4, #1
	strh r0, [r1, #8]
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	b _021D49A6
_021D4970:
	ldrh r2, [r1, #8]
	ldr r0, [r5, #0x28]
	adds r0, r2, r0
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	ldr r0, [r5, #0x2c]
	adds r0, r2, r0
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	ldr r0, [r5, #0x30]
	adds r0, r2, r0
	strh r0, [r1, #0xc]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x3c]
	ldr r1, [r2]
	adds r0, r1, r0
	str r0, [r2]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x40]
	ldr r1, [r2, #4]
	adds r0, r1, r0
	str r0, [r2, #4]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x44]
	ldr r1, [r2, #8]
	adds r0, r1, r0
	str r0, [r2, #8]
_021D49A6:
	ldr r1, [r5]
	add r0, sp, #8
	bl FUN_020209D4
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D4920

	thumb_func_start ov100_021D49B4
ov100_021D49B4: @ 0x021D49B4
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x5d
	adds r5, r0, #0
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _021D4A82
	adds r2, r1, #0
	subs r2, #0x14
	ldr r2, [r5, r2]
	cmp r2, #0
	beq _021D4A66
	adds r2, r1, #0
	subs r2, #0x10
	ldr r2, [r5, r2]
	movs r7, #0
	cmp r2, #0
	beq _021D49FA
	adds r2, r1, #0
	subs r2, #0x1c
	ldr r2, [r5, r2]
	cmp r2, #0
	bne _021D49EE
	subs r1, #0x20
	ldr r1, [r5, r1]
	adds r0, #0x88
	bl FUN_020171CC
	b _021D4A2E
_021D49EE:
	bl ov100_021D45A4
	adds r0, r5, #0
	bl ov100_021D4510
	b _021D4A2E
_021D49FA:
	subs r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D4A20
	adds r4, r5, #0
	adds r6, r7, #0
	adds r4, #0x88
_021D4A08:
	movs r1, #0x55
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	adds r0, r4, #0
	bl FUN_02017204
	adds r6, r6, #1
	adds r7, r0, #0
	adds r4, #0x14
	cmp r6, #4
	blt _021D4A08
	b _021D4A2E
_021D4A20:
	subs r1, #0x20
	adds r0, r5, #0
	ldr r1, [r5, r1]
	adds r0, #0x88
	bl FUN_02017204
	adds r7, r0, #0
_021D4A2E:
	movs r1, #0x5a
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D4A44
	subs r1, #0x14
	adds r0, r5, #0
	ldr r1, [r5, r1]
	adds r0, #0x9c
	bl FUN_020171CC
_021D4A44:
	movs r1, #0x5b
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D4A5A
	subs r1, #0x18
	adds r0, r5, #0
	ldr r1, [r5, r1]
	adds r0, #0x9c
	bl FUN_02017204
_021D4A5A:
	cmp r7, #1
	bne _021D4A66
	movs r0, #0x16
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_021D4A66:
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	adds r0, r5, #0
	bl FUN_02017294
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
_021D4A82:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D49B4

	thumb_func_start ov100_021D4A84
ov100_021D4A84: @ 0x021D4A84
	ldr r3, _021D4A8C @ =FUN_02017110
	adds r0, #0x78
	bx r3
	nop
_021D4A8C: .4byte FUN_02017110
	thumb_func_end ov100_021D4A84

	thumb_func_start ov100_021D4A90
ov100_021D4A90: @ 0x021D4A90
	movs r3, #0x14
	adds r1, #0x88
	muls r3, r0, r3
	adds r0, r1, r3
	ldr r3, _021D4AA0 @ =FUN_020171A0
	adds r1, r2, #0
	bx r3
	nop
_021D4AA0: .4byte FUN_020171A0
	thumb_func_end ov100_021D4A90

	thumb_func_start ov100_021D4AA4
ov100_021D4AA4: @ 0x021D4AA4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	bl ov100_021D4A84
	movs r4, #0
	cmp r5, #0
	ble _021D4AC6
_021D4AB6:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov100_021D4A90
	adds r4, r4, #1
	cmp r4, r5
	blt _021D4AB6
_021D4AC6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D4AA4

	thumb_func_start ov100_021D4AC8
ov100_021D4AC8: @ 0x021D4AC8
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r0, #0
	adds r1, r2, #0
	adds r2, r3, #0
	adds r0, #0x78
	movs r3, #0x6f
	bl FUN_020170D8
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x78
	bl FUN_02017258
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02017348
	movs r0, #0x5d
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov100_021D4AC8

	thumb_func_start ov100_021D4B10
ov100_021D4B10: @ 0x021D4B10
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	adds r2, #0x78
	adds r0, r4, #0
	adds r1, r2, #0
	bl FUN_02017258
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02017348
	movs r0, #0x5d
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov100_021D4B10

	thumb_func_start ov100_021D4B4C
ov100_021D4B4C: @ 0x021D4B4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r6, r0, #0
	movs r0, #0x6f
	adds r4, r5, #0
	movs r1, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x20]
	adds r7, r2, #0
	muls r6, r1, r6
	adds r1, r5, #0
	adds r2, r3, #0
	adds r4, #0x88
	str r0, [sp, #4]
	adds r0, r4, r6
	adds r1, #0x78
	adds r3, r7, #0
	bl FUN_02017164
	adds r0, r4, r6
	movs r1, #0
	bl FUN_02017240
	adds r0, r5, #0
	adds r1, r4, r6
	bl FUN_0201727C
	movs r1, #1
	movs r0, #0x55
	lsls r1, r1, #0xc
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0xff
	adds r0, r1, #0
	adds r0, #0x81
	str r1, [r5, r0]
	adds r0, r1, #0
	adds r0, #0x79
	str r1, [r5, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D4B4C

	thumb_func_start ov100_021D4BA0
ov100_021D4BA0: @ 0x021D4BA0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r2, #0
	adds r4, r0, #0
	movs r0, #0x6f
	adds r5, r6, #0
	movs r2, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	muls r4, r2, r4
	adds r5, #0x88
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	adds r0, r5, r4
	adds r1, #0x78
	bl FUN_02017164
	adds r0, r5, r4
	movs r1, #0
	bl FUN_02017240
	adds r0, r6, #0
	adds r1, r5, r4
	bl FUN_0201727C
	movs r1, #1
	movs r0, #0x55
	lsls r1, r1, #0xc
	lsls r0, r0, #2
	str r1, [r6, r0]
	movs r1, #0xff
	adds r0, r1, #0
	adds r0, #0x81
	str r1, [r6, r0]
	adds r0, r1, #0
	adds r0, #0x79
	str r1, [r6, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov100_021D4BA0

	thumb_func_start ov100_021D4BF0
ov100_021D4BF0: @ 0x021D4BF0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D4C2A
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0x1f
	bhs _021D4C18
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xc1
	strb r1, [r0]
	b _021D4C54
_021D4C18:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r1, [r0]
	movs r0, #1
	eors r1, r0
	adds r0, r4, #0
	adds r0, #0xc0
	strb r1, [r0]
	b _021D4C54
_021D4C2A:
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D4C44
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xc1
	strb r1, [r0]
	b _021D4C54
_021D4C44:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r1, [r0]
	movs r0, #1
	eors r1, r0
	adds r0, r4, #0
	adds r0, #0xc0
	strb r1, [r0]
_021D4C54:
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	movs r1, #1
	movs r2, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021D4C90 @ =0x0000CCCC
	movs r3, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	bl FUN_020039B0
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	movs r1, #1
	movs r2, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021D4C90 @ =0x0000CCCC
	movs r3, #6
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	bl FUN_020039B0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021D4C90: .4byte 0x0000CCCC
	thumb_func_end ov100_021D4BF0

	thumb_func_start ov100_021D4C94
ov100_021D4C94: @ 0x021D4C94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r3, _021D4DBC @ =0x021D5448
	adds r5, r0, #0
	ldrb r0, [r3]
	add r2, sp, #8
	adds r4, r1, #0
	strb r0, [r2, #6]
	ldrb r0, [r3, #1]
	ldr r6, _021D4DC0 @ =0x021D5478
	add r7, sp, #0x20
	strb r0, [r2, #7]
	ldrb r0, [r3, #2]
	cmp r4, #3
	strb r0, [r2, #8]
	ldm r6!, {r0, r1}
	stm r7!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r7!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r7!, {r0, r1}
	ldrb r0, [r3, #3]
	strb r0, [r2]
	ldrb r0, [r3, #4]
	strb r0, [r2, #1]
	ldrb r0, [r3, #5]
	strb r0, [r2, #2]
	ldrb r0, [r3, #6]
	strb r0, [r2, #3]
	ldrb r0, [r3, #7]
	strb r0, [r2, #4]
	ldrb r0, [r3, #8]
	ldr r3, _021D4DC4 @ =0x021D5454
	strb r0, [r2, #5]
	ldm r3!, {r0, r1}
	add r2, sp, #0x14
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	blo _021D4CE6
	movs r4, #2
_021D4CE6:
	adds r0, r5, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #2
	bne _021D4D1E
	adds r0, r5, #0
	adds r0, #0xc2
	ldrb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #1
	cmp r1, r0
	bge _021D4D0E
	adds r0, r5, #0
	adds r0, #0xc2
	ldrb r0, [r0]
	adds r5, #0xc2
	add sp, #0x38
	adds r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D4D0E:
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xc0
	strb r1, [r0]
	adds r5, #0xc2
	add sp, #0x38
	strb r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D4D1E:
	cmp r0, #0
	bne _021D4D52
	adds r0, r5, #0
	adds r0, #0xc1
	ldrb r2, [r0]
	lsls r1, r4, #3
	add r0, sp, #0x24
	ldr r0, [r0, r1]
	cmp r2, r0
	bge _021D4D42
	adds r0, r5, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xc1
	strb r1, [r0]
	b _021D4D80
_021D4D42:
	adds r0, r5, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xc0
	strb r1, [r0]
	b _021D4D80
_021D4D52:
	adds r0, r5, #0
	adds r0, #0xc1
	ldrb r2, [r0]
	lsls r1, r4, #3
	add r0, sp, #0x20
	ldr r0, [r0, r1]
	cmp r2, r0
	ble _021D4D72
	adds r0, r5, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	subs r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xc1
	strb r1, [r0]
	b _021D4D80
_021D4D72:
	adds r0, r5, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xc0
	strb r1, [r0]
_021D4D80:
	adds r0, r5, #0
	add r1, sp, #0xc
	adds r0, #0xc1
	adds r1, #2
	ldrb r0, [r0]
	ldrb r1, [r1, r4]
	lsls r6, r4, #1
	blx FUN_020E1F6C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r3, sp, #8
	lsls r1, r4, #2
	add r0, sp, #0x14
	ldr r0, [r0, r1]
	add r2, sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r3, #1
	ldrb r2, [r2, r6]
	ldrb r3, [r3, r6]
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl FUN_020039B0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4DBC: .4byte 0x021D5448
_021D4DC0: .4byte 0x021D5478
_021D4DC4: .4byte 0x021D5454
	thumb_func_end ov100_021D4C94

	thumb_func_start ov100_021D4DC8
ov100_021D4DC8: @ 0x021D4DC8
	ldr r1, _021D4DD0 @ =0x021BF6DC
	ldr r3, _021D4DD4 @ =FUN_0201FFE8
	strb r0, [r1, #5]
	bx r3
	.align 2, 0
_021D4DD0: .4byte 0x021BF6DC
_021D4DD4: .4byte FUN_0201FFE8
	thumb_func_end ov100_021D4DC8

	thumb_func_start ov100_021D4DD8
ov100_021D4DD8: @ 0x021D4DD8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5f
	strb r1, [r0]
	movs r2, #0x5f
	ldrsb r2, [r4, r2]
	ldr r0, _021D4DFC @ =0x04000050
	movs r1, #0x31
	blx FUN_020BF578
	movs r2, #0x5f
	ldrsb r2, [r4, r2]
	ldr r0, _021D4E00 @ =0x04001050
	movs r1, #0x33
	blx FUN_020BF578
	pop {r4, pc}
	nop
_021D4DFC: .4byte 0x04000050
_021D4E00: .4byte 0x04001050
	thumb_func_end ov100_021D4DD8

	thumb_func_start ov100_021D4E04
ov100_021D4E04: @ 0x021D4E04
	ldr r3, _021D4E10 @ =FUN_0200DA04
	movs r2, #1
	adds r1, r0, #0
	ldr r0, _021D4E14 @ =ov100_021D4E18
	lsls r2, r2, #0xa
	bx r3
	.align 2, 0
_021D4E10: .4byte FUN_0200DA04
_021D4E14: .4byte ov100_021D4E18
	thumb_func_end ov100_021D4E04

	thumb_func_start ov100_021D4E18
ov100_021D4E18: @ 0x021D4E18
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #2
	blo _021D4E2C
	ldr r0, [r4]
	bl FUN_02013DA4
	movs r0, #0
	str r0, [r4, #8]
_021D4E2C:
	ldr r0, [r4]
	bl FUN_02013DDC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov100_021D4E18

	thumb_func_start ov100_021D4E3C
ov100_021D4E3C: @ 0x021D4E3C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_02013BE0
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ov100_021D4E04
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov100_021D4E3C

	thumb_func_start ov100_021D4E58
ov100_021D4E58: @ 0x021D4E58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0200DA58
	ldr r0, [r4]
	bl FUN_02013D38
	ldr r0, [r4]
	bl FUN_02013D74
	pop {r4, pc}
	thumb_func_end ov100_021D4E58

	thumb_func_start ov100_021D4E70
ov100_021D4E70: @ 0x021D4E70
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x34]
	add r5, sp, #0x10
	cmp r4, #0
	bne _021D4E9C
	ldr r4, [sp, #0x20]
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
_021D4E9C:
	ldr r4, [sp, #0x20]
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
	bl FUN_02013CA4
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov100_021D4E70

	thumb_func_start ov100_021D4EBC
ov100_021D4EBC: @ 0x021D4EBC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _021D4F04 @ =ov100_021D4F9C
	ldr r3, [r5, #0x28]
	movs r1, #0x38
	movs r2, #5
	bl FUN_0200679C
	adds r6, r0, #0
	bl FUN_0201CED0
	adds r4, r0, #0
	adds r2, r4, #4
	movs r3, #5
_021D4ED8:
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	subs r3, r3, #1
	bne _021D4ED8
	ldr r0, [r5]
	str r0, [r2]
	str r6, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x30]
	blx FUN_020BF00C
	str r0, [r4]
	adds r0, r4, #4
	bl ov100_021D503C
	ldr r0, _021D4F08 @ =ov100_021D4FDC
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200DA3C
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D4F04: .4byte ov100_021D4F9C
_021D4F08: .4byte ov100_021D4FDC
	thumb_func_end ov100_021D4EBC

	thumb_func_start ov100_021D4F0C
ov100_021D4F0C: @ 0x021D4F0C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	blx FUN_020BDE40
	ldr r0, [r4]
	ldr r0, [r0]
	blx FUN_020BEA30
	ldr r0, [r4]
	ldr r0, [r0, #4]
	cmp r0, #0xa
	bgt _021D4F3C
	bge _021D4F60
	cmp r0, #6
	bgt _021D4F7C
	cmp r0, #2
	blt _021D4F7C
	beq _021D4F42
	cmp r0, #6
	beq _021D4F52
	b _021D4F7C
_021D4F3C:
	cmp r0, #0xe
	beq _021D4F6E
	b _021D4F7C
_021D4F42:
	movs r1, #0x1a
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x16
	lsls r2, r2, #0x10
	blx FUN_020C4BB8
	b _021D4F82
_021D4F52:
	movs r2, #2
	ldr r1, _021D4F90 @ =0x06820000
	movs r0, #0
	lsls r2, r2, #0x10
	blx FUN_020C4BB8
	b _021D4F82
_021D4F60:
	movs r2, #2
	ldr r1, _021D4F94 @ =0x06840000
	movs r0, #0
	lsls r2, r2, #0x10
	blx FUN_020C4BB8
	b _021D4F82
_021D4F6E:
	movs r2, #2
	ldr r1, _021D4F98 @ =0x06860000
	movs r0, #0
	lsls r2, r2, #0x10
	blx FUN_020C4BB8
	b _021D4F82
_021D4F7C:
	movs r0, #0
	blx FUN_020BEA30
_021D4F82:
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl FUN_020067D0
	movs r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_021D4F90: .4byte 0x06820000
_021D4F94: .4byte 0x06840000
_021D4F98: .4byte 0x06860000
	thumb_func_end ov100_021D4F0C

	thumb_func_start ov100_021D4F9C
ov100_021D4F9C: @ 0x021D4F9C
	push {r4, r5, r6, r7}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021D4FD4
	ldr r6, [r1, #0x20]
	ldr r5, [r1, #0x10]
	ldr r4, [r1, #0x1c]
	ldr r3, [r1, #0x18]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	lsls r5, r5, #0x14
	lsls r7, r1, #8
	lsls r1, r3, #0x18
	lsls r3, r2, #0x1d
	movs r2, #2
	lsls r2, r2, #0x1e
	orrs r3, r2
	lsls r2, r4, #0x19
	orrs r2, r3
	orrs r1, r2
	lsls r6, r6, #0x10
	orrs r1, r5
	orrs r1, r6
	orrs r1, r7
	orrs r1, r0
	ldr r0, _021D4FD8 @ =0x04000064
	str r1, [r0]
_021D4FD4:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_021D4FD8: .4byte 0x04000064
	thumb_func_end ov100_021D4F9C

	thumb_func_start ov100_021D4FDC
ov100_021D4FDC: @ 0x021D4FDC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bgt _021D4FFA
	bge _021D5010
	cmp r0, #6
	bgt _021D5020
	cmp r0, #2
	blt _021D5020
	beq _021D5000
	cmp r0, #6
	beq _021D5008
	b _021D5020
_021D4FFA:
	cmp r0, #0xe
	beq _021D5018
	b _021D5020
_021D5000:
	movs r0, #1
	blx FUN_020BEA30
	b _021D5026
_021D5008:
	movs r0, #2
	blx FUN_020BEA30
	b _021D5026
_021D5010:
	movs r0, #4
	blx FUN_020BEA30
	b _021D5026
_021D5018:
	movs r0, #8
	blx FUN_020BEA30
	b _021D5026
_021D5020:
	movs r0, #0
	blx FUN_020BEA30
_021D5026:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	blx FUN_020BDE40
	movs r0, #1
	str r0, [r4, #0x30]
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D4FDC

	thumb_func_start ov100_021D503C
ov100_021D503C: @ 0x021D503C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0xa
	bgt _021D5058
	bge _021D507C
	cmp r0, #6
	bgt _021D5096
	cmp r0, #2
	blt _021D5096
	beq _021D505E
	cmp r0, #6
	beq _021D506E
	b _021D5096
_021D5058:
	cmp r0, #0xe
	beq _021D508A
	b _021D5096
_021D505E:
	movs r1, #0x1a
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x16
	lsls r2, r2, #0x10
	blx FUN_020C4BB8
	b _021D5096
_021D506E:
	movs r2, #2
	ldr r1, _021D50C4 @ =0x06820000
	movs r0, #0
	lsls r2, r2, #0x10
	blx FUN_020C4BB8
	b _021D5096
_021D507C:
	movs r2, #2
	ldr r1, _021D50C8 @ =0x06840000
	movs r0, #0
	lsls r2, r2, #0x10
	blx FUN_020C4BB8
	b _021D5096
_021D508A:
	movs r2, #2
	ldr r1, _021D50CC @ =0x06860000
	movs r0, #0
	lsls r2, r2, #0x10
	blx FUN_020C4BB8
_021D5096:
	ldr r5, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x18]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0xc]
	movs r4, #2
	lsls r2, r1, #0x10
	lsls r1, r0, #0x14
	lsls r5, r5, #0x1d
	lsls r4, r4, #0x1e
	orrs r4, r5
	lsls r3, r3, #0x19
	lsls r0, r6, #0x18
	orrs r3, r4
	orrs r0, r3
	orrs r0, r1
	adds r1, r2, #0
	orrs r1, r0
	movs r0, #0x10
	orrs r1, r0
	ldr r0, _021D50D0 @ =0x04000064
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D50C4: .4byte 0x06820000
_021D50C8: .4byte 0x06840000
_021D50CC: .4byte 0x06860000
_021D50D0: .4byte 0x04000064
	thumb_func_end ov100_021D503C
	@ 0x021D50D4
