	.include "macros/function.inc"


	.text

	thumb_func_start ov78_021D0D80
ov78_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r2, #1
	adds r4, r0, #0
	movs r0, #3
	movs r1, #0x2f
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	ldr r1, _021D0EE4 @ =0x000006B4
	adds r0, r4, #0
	movs r2, #0x2f
	bl FUN_0200681C
	adds r5, r0, #0
	bne _021D0DA4
	bl FUN_02022974
_021D0DA4:
	ldr r2, _021D0EE4 @ =0x000006B4
	adds r0, r5, #0
	movs r1, #0
	blx FUN_020D5124
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0x2f
	movs r2, #0x20
	bl FUN_020182CC
	adds r0, r4, #0
	bl FUN_02006840
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02027B50
	ldr r1, _021D0EE8 @ =0x000006A8
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	bl FUN_02027AC0
	ldr r1, _021D0EEC @ =0x000006AC
	str r0, [r5, r1]
	movs r0, #8
	movs r1, #0x2f
	bl FUN_0201DBEC
	ldr r0, _021D0EF0 @ =ov78_021D1058
	adds r1, r5, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	cmp r0, #1
	beq _021D0DFE
	bl FUN_02022974
_021D0DFE:
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov78_021D10C4
	movs r0, #0x2f
	bl FUN_02018340
	adds r1, r5, #0
	adds r1, #0x94
	str r0, [r1]
	movs r1, #1
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0
	str r1, [sp]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	bl FUN_02018368
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0x2f
	bl ov78_021D1224
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov78_021D1308
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov78_021D20A4
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov78_021D27CC
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov78_021D13B8
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov78_021D14E8
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov78_021D1528
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov78_021D1834
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov78_021D1B20
	adds r0, r5, #0
	bl ov78_021D1BA0
	adds r0, r5, #0
	bl ov78_021D1C28
	movs r1, #6
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r1, r5, r1
	movs r2, #0x2f
	bl ov78_021D2204
	movs r1, #6
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r1, r5, r1
	movs r2, #0x2f
	bl ov78_021D22D4
	movs r0, #6
	lsls r0, r0, #8
	adds r0, r5, r0
	bl ov78_021D23B8
	movs r0, #0x65
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0x2f
	bl ov78_021D2448
	movs r1, #0
	movs r0, #0x3c
	adds r2, r1, #0
	bl FUN_02004550
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D0EE4: .4byte 0x000006B4
_021D0EE8: .4byte 0x000006A8
_021D0EEC: .4byte 0x000006AC
_021D0EF0: .4byte ov78_021D1058
	thumb_func_end ov78_021D0D80

	thumb_func_start ov78_021D0EF4
ov78_021D0EF4: @ 0x021D0EF4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	bl FUN_0200682C
	ldr r2, _021D0FA4 @ =0x000008C3
	add r1, sp, #0
	strh r2, [r1]
	ldr r1, [r4]
	adds r6, r0, #0
	cmp r1, #4
	bhi _021D0F96
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0F18: @ jump table
	.2byte _021D0F22 - _021D0F18 - 2 @ case 0
	.2byte _021D0F38 - _021D0F18 - 2 @ case 1
	.2byte _021D0F54 - _021D0F18 - 2 @ case 2
	.2byte _021D0F70 - _021D0F18 - 2 @ case 3
	.2byte _021D0F7C - _021D0F18 - 2 @ case 4
_021D0F22:
	bl ov78_021D107C
	add r0, sp, #0
	movs r1, #0
	movs r2, #2
	blx FUN_020C00B4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F96
_021D0F38:
	bl ov78_021D10BC
	cmp r0, #0
	beq _021D0F96
	movs r0, #0
	bl FUN_0200F32C
	movs r0, #1
	bl FUN_0200F32C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F96
_021D0F54:
	movs r1, #0x2f
	bl ov78_021D1978
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0x2f
	bl ov78_021D19D4
	cmp r5, #1
	bne _021D0F96
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F96
_021D0F70:
	bl ov78_021D109C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F96
_021D0F7C:
	bl ov78_021D10BC
	cmp r0, #0
	beq _021D0F96
	movs r0, #0
	bl FUN_0200F32C
	movs r0, #1
	bl FUN_0200F32C
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D0F96:
	adds r0, r6, #0
	bl ov78_021D1AAC
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D0FA4: .4byte 0x000008C3
	thumb_func_end ov78_021D0EF4

	thumb_func_start ov78_021D0FA8
ov78_021D0FA8: @ 0x021D0FA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	adds r6, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	ldr r0, [r4, #0x54]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl ov78_021D291C
	str r0, [r6]
	bl FUN_0201E530
	cmp r0, #1
	beq _021D0FDA
	bl FUN_02022974
_021D0FDA:
	movs r0, #0x65
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov78_021D24E4
	movs r0, #6
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov78_021D2350
	movs r1, #6
	lsls r1, r1, #8
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov78_021D2290
	movs r0, #6
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov78_021D241C
	adds r0, r4, #0
	bl ov78_021D1B90
	adds r0, r4, #0
	bl ov78_021D1908
	adds r0, r4, #0
	bl ov78_021D1594
	adds r0, r4, #0
	bl ov78_021D14BC
	adds r0, r4, #0
	bl ov78_021D1518
	adds r0, r4, #0
	bl ov78_021D13A0
	adds r0, r4, #0
	bl ov78_021D2884
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl ov78_021D12EC
	adds r4, #0x94
	ldr r0, [r4]
	bl FUN_020181C4
	bl ov78_021D10DC
	bl FUN_0201DC3C
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x2f
	bl FUN_0201807C
	movs r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D0FA8

	thumb_func_start ov78_021D1058
ov78_021D1058: @ 0x021D1058
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200A858
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_0201C2B8
	movs r0, #2
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	bl FUN_02008A94
	bl FUN_0201DCAC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov78_021D1058

	thumb_func_start ov78_021D107C
ov78_021D107C: @ 0x021D107C
	push {lr}
	sub sp, #0xc
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x2f
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov78_021D107C

	thumb_func_start ov78_021D109C
ov78_021D109C: @ 0x021D109C
	push {lr}
	sub sp, #0xc
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x2f
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	add sp, #0xc
	pop {pc}
	thumb_func_end ov78_021D109C

	thumb_func_start ov78_021D10BC
ov78_021D10BC: @ 0x021D10BC
	ldr r3, _021D10C0 @ =FUN_0200F2AC
	bx r3
	.align 2, 0
_021D10C0: .4byte FUN_0200F2AC
	thumb_func_end ov78_021D10BC

	thumb_func_start ov78_021D10C4
ov78_021D10C4: @ 0x021D10C4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	bl ov78_021D10F0
	adds r0, r4, #0
	bl ov78_021D1110
	adds r0, r5, #0
	bl ov78_021D1168
	pop {r3, r4, r5, pc}
	thumb_func_end ov78_021D10C4

	thumb_func_start ov78_021D10DC
ov78_021D10DC: @ 0x021D10DC
	push {r3, lr}
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl ov78_021D1218
	pop {r3, pc}
	thumb_func_end ov78_021D10DC

	thumb_func_start ov78_021D10F0
ov78_021D10F0: @ 0x021D10F0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D110C @ =0x021D29C0
	add r3, sp, #0
	movs r2, #5
_021D10FA:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D10FA
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D110C: .4byte 0x021D29C0
	thumb_func_end ov78_021D10F0

	thumb_func_start ov78_021D1110
ov78_021D1110: @ 0x021D1110
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r0, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	adds r2, r0, #0
	str r4, [sp, #0x10]
	bl FUN_0200A784
	ldr r5, _021D1160 @ =0x021D294C
	add r3, sp, #0x14
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	ldr r1, _021D1164 @ =0x00200010
	movs r2, #0x10
	str r4, [sp, #0x20]
	bl FUN_0201E88C
	movs r0, #0x20
	adds r1, r4, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D1160: .4byte 0x021D294C
_021D1164: .4byte 0x00200010
	thumb_func_end ov78_021D1110

	thumb_func_start ov78_021D1168
ov78_021D1168: @ 0x021D1168
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	blx FUN_020B28CC
	blx FUN_020BFB4C
	ldr r0, _021D11F4 @ =0x04000060
	ldr r1, _021D11F8 @ =0xFFFFCFFD
	ldrh r2, [r0]
	ands r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	adds r2, r1, #2
	ands r3, r2
	movs r2, #0x10
	orrs r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _021D11FC @ =0x0000CFFB
	ands r2, r3
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r3, [r0]
	adds r1, r1, #2
	ands r3, r2
	movs r2, #8
	orrs r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	adds r3, r4, #0
	ands r2, r1
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	ldr r1, _021D1200 @ =0x00001084
	ldr r0, _021D1204 @ =0x0000063C
	movs r2, #0
_021D11B4:
	adds r2, r2, #1
	strh r1, [r3, r0]
	adds r3, r3, #2
	cmp r2, #8
	blt _021D11B4
	ldr r0, _021D1204 @ =0x0000063C
	adds r0, r4, r0
	blx FUN_020BFD2C
	movs r1, #0
	ldr r0, _021D1208 @ =0x000043FF
	ldr r2, _021D120C @ =0x00007FFF
	movs r3, #0x3f
	str r1, [sp]
	blx FUN_020BFD58
	ldr r1, _021D1210 @ =0x04000540
	movs r0, #2
	str r0, [r1]
	ldr r0, _021D1214 @ =0xBFFF0000
	str r0, [r1, #0x40]
	movs r0, #1
	adds r1, r0, #0
	blx FUN_020A5A94
	movs r0, #1
	lsls r0, r0, #0xe
	movs r1, #1
	blx FUN_020A5D88
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021D11F4: .4byte 0x04000060
_021D11F8: .4byte 0xFFFFCFFD
_021D11FC: .4byte 0x0000CFFB
_021D1200: .4byte 0x00001084
_021D1204: .4byte 0x0000063C
_021D1208: .4byte 0x000043FF
_021D120C: .4byte 0x00007FFF
_021D1210: .4byte 0x04000540
_021D1214: .4byte 0xBFFF0000
	thumb_func_end ov78_021D1168

	thumb_func_start ov78_021D1218
ov78_021D1218: @ 0x021D1218
	push {r3, lr}
	blx FUN_020A5B1C
	blx FUN_020A5F50
	pop {r3, pc}
	thumb_func_end ov78_021D1218

	thumb_func_start ov78_021D1224
ov78_021D1224: @ 0x021D1224
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	adds r4, r1, #0
	ldr r1, _021D12DC @ =0x04000008
	adds r5, r0, #0
	ldrh r2, [r1]
	movs r0, #3
	movs r7, #1
	bics r2, r0
	adds r0, r2, #0
	orrs r0, r7
	add r3, sp, #0x38
	ldr r6, _021D12E0 @ =0x021D2988
	strh r0, [r1]
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r7, #0
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r7, #0
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02019EBC
	ldr r6, _021D12E4 @ =0x021D296C
	add r3, sp, #0x1c
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #2
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r6, _021D12E8 @ =0x021D29A4
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #3
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #3
	bl FUN_02019EBC
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D12DC: .4byte 0x04000008
_021D12E0: .4byte 0x021D2988
_021D12E4: .4byte 0x021D296C
_021D12E8: .4byte 0x021D29A4
	thumb_func_end ov78_021D1224

	thumb_func_start ov78_021D12EC
ov78_021D12EC: @ 0x021D12EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019044
	pop {r4, pc}
	thumb_func_end ov78_021D12EC

	thumb_func_start ov78_021D1308
ov78_021D1308: @ 0x021D1308
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0201A778
	adds r1, r5, #0
	adds r1, #0x98
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r3, #4
	adds r1, r5, #0
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	adds r0, r5, #0
	adds r0, #0x94
	adds r1, #0x98
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #1
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, _021D139C @ =0x000006A8
	movs r1, #1
	ldr r0, [r5, r0]
	lsls r2, r1, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	str r4, [sp, #4]
	adds r0, #0x94
	ldr r0, [r0]
	movs r3, #0
	bl FUN_0200DD0C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x52
	movs r1, #0x10
	movs r2, #0
	movs r3, #0x40
	str r4, [sp, #4]
	bl FUN_02006E84
	adds r5, #0x98
	movs r1, #0
	movs r2, #2
	ldr r0, [r5]
	lsls r2, r2, #8
	adds r3, r1, #0
	bl FUN_0200E060
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021D139C: .4byte 0x000006A8
	thumb_func_end ov78_021D1308

	thumb_func_start ov78_021D13A0
ov78_021D13A0: @ 0x021D13A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_0201A8FC
	adds r4, #0x98
	ldr r0, [r4]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov78_021D13A0

	thumb_func_start ov78_021D13B8
ov78_021D13B8: @ 0x021D13B8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	bl FUN_0200762C
	movs r1, #2
	lsls r1, r1, #8
	str r0, [r5, r1]
	ldr r3, _021D1458 @ =0x02100DEC
	lsls r0, r1, #6
	movs r1, #0
	ldr r3, [r3]
	adds r2, r1, #0
	blx r3
	ldr r3, _021D145C @ =0x02100DF4
	adds r4, r0, #0
	ldr r3, [r3]
	movs r0, #0x80
	movs r1, #0
	movs r2, #1
	blx r3
	ldr r2, _021D1460 @ =0x7FFF0000
	adds r6, r0, #0
	movs r0, #2
	lsls r0, r0, #8
	ands r2, r4
	lsls r1, r4, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r5, r0]
	lsrs r1, r1, #0xd
	lsls r2, r2, #4
	bl FUN_02008A78
	ldr r2, _021D1464 @ =0xFFFF0000
	movs r0, #2
	lsls r0, r0, #8
	ands r2, r6
	lsls r1, r6, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r5, r0]
	lsrs r1, r1, #0xd
	lsls r2, r2, #3
	bl FUN_02008A84
	movs r2, #0x81
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r1, r5, #0
	subs r2, #0x81
	bl ov78_021D1468
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r1, r5, #0
	subs r2, #0x82
	bl ov78_021D1468
	movs r2, #0x83
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r1, r5, #0
	subs r2, #0x83
	bl ov78_021D1468
	movs r6, #0x81
	movs r4, #0
	movs r7, #6
	lsls r6, r6, #2
_021D1442:
	ldr r0, [r5, r6]
	adds r1, r7, #0
	movs r2, #1
	bl FUN_02007DEC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D1442
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1458: .4byte 0x02100DEC
_021D145C: .4byte 0x02100DF4
_021D1460: .4byte 0x7FFF0000
_021D1464: .4byte 0xFFFF0000
	thumb_func_end ov78_021D13B8

	thumb_func_start ov78_021D1468
ov78_021D1468: @ 0x021D1468
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r6, r2, #0
	adds r5, r0, #0
	lsls r0, r6, #0x10
	adds r4, r1, #0
	lsrs r0, r0, #0x10
	movs r1, #0
	bl FUN_02075DAC
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r1, r6, #0x10
	lsls r2, r2, #0x18
	str r0, [sp, #8]
	add r0, sp, #0x10
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_02075FB4
	ldr r0, _021D14B8 @ =0x000003FF
	add r1, sp, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #2
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r2, #0x80
	movs r3, #0x60
	bl FUN_02007C34
	str r0, [r5]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D14B8: .4byte 0x000003FF
	thumb_func_end ov78_021D1468

	thumb_func_start ov78_021D14BC
ov78_021D14BC: @ 0x021D14BC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0x81
	movs r4, #0
	adds r5, r7, #0
	lsls r6, r6, #2
_021D14C8:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021D14D2
	bl FUN_02007DC8
_021D14D2:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D14C8
	movs r0, #2
	lsls r0, r0, #8
	ldr r0, [r7, r0]
	bl FUN_02007B6C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov78_021D14BC

	thumb_func_start ov78_021D14E8
ov78_021D14E8: @ 0x021D14E8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _021D1510 @ =0x021D295C
	add r3, sp, #0
	adds r4, r0, #0
	adds r6, r1, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	str r6, [sp, #0xc]
	bl FUN_02015064
	ldr r1, _021D1514 @ =0x0000064C
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D1510: .4byte 0x021D295C
_021D1514: .4byte 0x0000064C
	thumb_func_end ov78_021D14E8

	thumb_func_start ov78_021D1518
ov78_021D1518: @ 0x021D1518
	ldr r1, _021D1520 @ =0x0000064C
	ldr r3, _021D1524 @ =FUN_020150A8
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021D1520: .4byte 0x0000064C
_021D1524: .4byte FUN_020150A8
	thumb_func_end ov78_021D1518

	thumb_func_start ov78_021D1528
ov78_021D1528: @ 0x021D1528
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	movs r0, #2
	adds r1, #0xbc
	adds r2, r4, #0
	bl FUN_020095C4
	movs r1, #0x79
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl FUN_02009714
	movs r1, #0x7a
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #2
	movs r1, #1
	adds r2, r4, #0
	bl FUN_02009714
	movs r1, #0x7b
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #2
	adds r1, r0, #0
	adds r2, r4, #0
	bl FUN_02009714
	movs r1, #0x1f
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #2
	movs r1, #3
	adds r2, r4, #0
	bl FUN_02009714
	movs r1, #0x7d
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov78_021D1528

	thumb_func_start ov78_021D1594
ov78_021D1594: @ 0x021D1594
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021964
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02009754
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02009754
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02009754
	movs r0, #0x7d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02009754
	pop {r4, pc}
	thumb_func_end ov78_021D1594

	thumb_func_start ov78_021D15CC
ov78_021D15CC: @ 0x021D15CC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r0, #0
	adds r4, r3, #0
	movs r1, #0
	movs r2, #0x98
	blx FUN_020D5124
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov78_021D1630
	ldr r3, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov78_021D1694
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov78_021D17B4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov78_021D15CC

	thumb_func_start ov78_021D1604
ov78_021D1604: @ 0x021D1604
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	movs r1, #0
	movs r2, #0x98
	blx FUN_020D5124
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov78_021D1630
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov78_021D17B4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov78_021D1604

	thumb_func_start ov78_021D1630
ov78_021D1630: @ 0x021D1630
	push {r3, r4, lr}
	sub sp, #4
	adds r3, r2, #0
	movs r2, #0
	adds r4, r0, #0
	str r2, [sp]
	movs r0, #0x52
	bl FUN_02006FE8
	str r0, [r4, #0x54]
	blx FUN_020B3C0C
	str r0, [r4, #0x58]
	cmp r0, #0
	beq _021D166E
	adds r2, r0, #0
	adds r2, #8
	beq _021D1662
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021D1662
	ldrh r1, [r0, #0xe]
	adds r1, r2, r1
	adds r1, r1, #4
	b _021D1664
_021D1662:
	movs r1, #0
_021D1664:
	cmp r1, #0
	beq _021D166E
	ldr r1, [r1]
	adds r0, r0, r1
	b _021D1670
_021D166E:
	movs r0, #0
_021D1670:
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x54]
	blx FUN_020B3C1C
	str r0, [r4, #0x60]
	bl FUN_0201CBCC
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x60]
	bl FUN_0201CBB0
	ldr r1, [r4, #0x5c]
	adds r0, r4, #0
	blx FUN_020AE608
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov78_021D1630

	thumb_func_start ov78_021D1694
ov78_021D1694: @ 0x021D1694
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	movs r2, #0
	adds r4, r0, #0
	adds r5, r3, #0
	str r2, [sp]
	movs r0, #0x52
	adds r3, r6, #0
	bl FUN_02006FE8
	str r0, [r4, #0x64]
	movs r1, #0
	blx FUN_020B3C5C
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x68]
	ldr r2, [r4, #0x5c]
	adds r0, r5, #0
	blx FUN_020B2CB4
	str r0, [r4, #0x6c]
	ldr r1, [r4, #0x68]
	ldr r2, [r4, #0x5c]
	ldr r3, [r4, #0x60]
	blx FUN_020AE4F0
	ldr r1, [r4, #0x6c]
	adds r0, r4, #0
	blx FUN_020AE77C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov78_021D1694

	thumb_func_start ov78_021D16D8
ov78_021D16D8: @ 0x021D16D8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	adds r4, r1, #0
	cmp r0, #0
	beq _021D16E8
	bl FUN_020181C4
_021D16E8:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _021D16FC
	ldr r1, [r5, #0x6c]
	adds r0, r4, #0
	blx FUN_020B2CD8
	ldr r0, [r5, #0x64]
	bl FUN_020181C4
_021D16FC:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x98
	blx FUN_020D5124
	pop {r3, r4, r5, pc}
	thumb_func_end ov78_021D16D8

	thumb_func_start ov78_021D1708
ov78_021D1708: @ 0x021D1708
	push {r4, lr}
	sub sp, #0x48
	adds r4, r0, #0
	add r0, sp, #0x24
	blx FUN_020BB4C8
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r0, [r0]
	ldr r3, _021D17A0 @ =0x020F983C
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5AC
	add r1, sp, #0x24
	add r0, sp, #0
	adds r2, r1, #0
	blx FUN_020BB8EC
	adds r0, r4, #0
	adds r0, #0x92
	ldrh r0, [r0]
	ldr r3, _021D17A0 @ =0x020F983C
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5C8
	add r1, sp, #0x24
	add r0, sp, #0
	adds r2, r1, #0
	blx FUN_020BB8EC
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r0, [r0]
	ldr r3, _021D17A0 @ =0x020F983C
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5E4
	add r1, sp, #0x24
	add r0, sp, #0
	adds r2, r1, #0
	blx FUN_020BB8EC
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021D179C
	adds r1, r4, #0
	adds r0, r4, #0
	adds r4, #0x84
	adds r1, #0x78
	add r2, sp, #0x24
	adds r3, r4, #0
	bl FUN_0201CA74
_021D179C:
	add sp, #0x48
	pop {r4, pc}
	.align 2, 0
_021D17A0: .4byte 0x020F983C
	thumb_func_end ov78_021D1708

	thumb_func_start ov78_021D17A4
ov78_021D17A4: @ 0x021D17A4
	str r1, [r0, #0x74]
	bx lr
	thumb_func_end ov78_021D17A4

	thumb_func_start ov78_021D17A8
ov78_021D17A8: @ 0x021D17A8
	str r1, [r0, #0x78]
	str r2, [r0, #0x7c]
	adds r0, #0x80
	str r3, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov78_021D17A8

	thumb_func_start ov78_021D17B4
ov78_021D17B4: @ 0x021D17B4
	push {r3, r4}
	adds r4, r0, #0
	adds r4, #0x84
	str r1, [r4]
	adds r1, r0, #0
	adds r1, #0x88
	str r2, [r1]
	adds r0, #0x8c
	str r3, [r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov78_021D17B4

	thumb_func_start ov78_021D17CC
ov78_021D17CC: @ 0x021D17CC
	push {r3, r4}
	adds r4, r0, #0
	adds r4, #0x90
	strh r1, [r4]
	adds r1, r0, #0
	adds r1, #0x92
	strh r2, [r1]
	adds r0, #0x94
	strh r3, [r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov78_021D17CC

	thumb_func_start ov78_021D17E4
ov78_021D17E4: @ 0x021D17E4
	ldr r1, [r0, #0x6c]
	ldr r2, [r0, #0x70]
	ldr r1, [r1, #8]
	ldrh r1, [r1, #4]
	lsls r3, r1, #0xc
	movs r1, #1
	lsls r1, r1, #0xc
	adds r1, r2, r1
	cmp r1, r3
	bge _021D17FE
	str r1, [r0, #0x70]
	movs r2, #0
	b _021D1802
_021D17FE:
	str r3, [r0, #0x70]
	movs r2, #1
_021D1802:
	ldr r1, [r0, #0x70]
	ldr r0, [r0, #0x6c]
	str r1, [r0]
	adds r0, r2, #0
	bx lr
	thumb_func_end ov78_021D17E4

	thumb_func_start ov78_021D180C
ov78_021D180C: @ 0x021D180C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	ldr r1, [r4, #0x70]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	ldr r1, [r4, #0x6c]
	ldr r1, [r1, #8]
	ldrh r1, [r1, #4]
	lsls r1, r1, #0xc
	blx FUN_020E1F6C
	str r1, [r4, #0x70]
	ldr r0, [r4, #0x6c]
	str r1, [r0]
	pop {r4, pc}
	thumb_func_end ov78_021D180C

	thumb_func_start ov78_021D182C
ov78_021D182C: @ 0x021D182C
	str r1, [r0, #0x70]
	ldr r0, [r0, #0x6c]
	str r1, [r0]
	bx lr
	thumb_func_end ov78_021D182C

	thumb_func_start ov78_021D1834
ov78_021D1834: @ 0x021D1834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x25
	adds r7, r1, #0
	lsls r0, r0, #4
	adds r1, r6, r0
	adds r0, #0x10
	str r1, [sp]
	adds r0, r6, r0
	movs r1, #1
	movs r2, #0
	adds r3, r7, #0
	bl ov78_021D15CC
	movs r0, #0x26
	lsls r0, r0, #4
	adds r0, r6, r0
	movs r1, #1
	bl ov78_021D17A4
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r6, r0
	movs r1, #8
	adds r2, r7, #0
	bl ov78_021D1604
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r6, r0
	movs r1, #0
	bl ov78_021D17A4
	movs r0, #0x26
	lsls r0, r0, #4
	adds r1, r6, r0
	lsrs r0, r0, #1
	adds r5, r1, r0
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r6, r0
	movs r4, #2
	str r0, [sp, #4]
_021D188C:
	subs r0, r4, #2
	lsls r2, r0, #1
	ldr r0, [sp, #4]
	adds r1, r2, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r2, #2
	adds r3, r7, #0
	bl ov78_021D15CC
	adds r0, r5, #0
	movs r1, #0
	bl ov78_021D17A4
	adds r4, r4, #1
	adds r5, #0x98
	cmp r4, #4
	ble _021D188C
	ldr r0, _021D18FC @ =0x00000558
	movs r1, #9
	adds r0, r6, r0
	adds r2, r7, #0
	bl ov78_021D1604
	ldr r0, _021D18FC @ =0x00000558
	movs r1, #1
	adds r0, r6, r0
	bl ov78_021D17A4
	ldr r0, _021D18FC @ =0x00000558
	movs r3, #0xa
	ldr r2, _021D1900 @ =0xFFFE4000
	adds r0, r6, r0
	movs r1, #0
	lsls r3, r3, #0xe
	bl ov78_021D17A8
	ldr r0, _021D18FC @ =0x00000558
	movs r1, #0xe
	lsls r1, r1, #0xa
	movs r2, #1
	adds r0, r6, r0
	lsls r2, r2, #0xc
	adds r3, r1, #0
	bl ov78_021D17B4
	ldr r0, _021D18FC @ =0x00000558
	movs r1, #0
	ldr r2, _021D1904 @ =0x00007FFF
	adds r0, r6, r0
	adds r3, r1, #0
	bl ov78_021D17CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D18FC: .4byte 0x00000558
_021D1900: .4byte 0xFFFE4000
_021D1904: .4byte 0x00007FFF
	thumb_func_end ov78_021D1834

	thumb_func_start ov78_021D1908
ov78_021D1908: @ 0x021D1908
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x26
	lsls r0, r0, #4
	adds r7, r0, #0
	movs r4, #0
	adds r5, r6, r0
	subs r7, #0x10
_021D1918:
	adds r0, r5, #0
	adds r1, r6, r7
	bl ov78_021D16D8
	adds r4, r4, #1
	adds r5, #0x98
	cmp r4, #6
	blt _021D1918
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov78_021D1908

	thumb_func_start ov78_021D192C
ov78_021D192C: @ 0x021D192C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	ldr r2, _021D1970 @ =0xFFFFF000
	adds r1, r0, #0
	adds r3, r0, #0
	blx FUN_020AF51C
	ldr r1, _021D1974 @ =0x00007FFF
	movs r0, #0
	blx FUN_020AF558
	ldr r0, _021D1974 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF56C
	ldr r0, _021D1974 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF590
	movs r0, #0x26
	lsls r0, r0, #4
	movs r4, #0
	adds r5, r5, r0
_021D1960:
	adds r0, r5, #0
	bl ov78_021D1708
	adds r4, r4, #1
	adds r5, #0x98
	cmp r4, #6
	blt _021D1960
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1970: .4byte 0xFFFFF000
_021D1974: .4byte 0x00007FFF
	thumb_func_end ov78_021D192C

	thumb_func_start ov78_021D1978
ov78_021D1978: @ 0x021D1978
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #1
	bne _021D1986
	movs r0, #0
	pop {r4, pc}
_021D1986:
	bl ov78_021D1CA4
	cmp r0, #5
	bhi _021D19C8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D199A: @ jump table
	.2byte _021D19C8 - _021D199A - 2 @ case 0
	.2byte _021D19C8 - _021D199A - 2 @ case 1
	.2byte _021D19C8 - _021D199A - 2 @ case 2
	.2byte _021D19A6 - _021D199A - 2 @ case 3
	.2byte _021D19C8 - _021D199A - 2 @ case 4
	.2byte _021D19C4 - _021D199A - 2 @ case 5
_021D19A6:
	adds r0, r4, #0
	bl ov78_021D1C58
	ldr r0, _021D19CC @ =0x021BF67C
	movs r1, #1
	ldr r0, [r0, #0x48]
	tst r0, r1
	beq _021D19C8
	adds r0, r4, #0
	bl ov78_021D1C98
	ldr r0, _021D19D0 @ =0x000005DC
	bl FUN_02005748
	b _021D19C8
_021D19C4:
	movs r0, #1
	pop {r4, pc}
_021D19C8:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D19CC: .4byte 0x021BF67C
_021D19D0: .4byte 0x000005DC
	thumb_func_end ov78_021D1978

	thumb_func_start ov78_021D19D4
ov78_021D19D4: @ 0x021D19D4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl ov78_021D1CA4
	cmp r0, #5
	bhi _021D1A9E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D19EE: @ jump table
	.2byte _021D19FA - _021D19EE - 2 @ case 0
	.2byte _021D1A1A - _021D19EE - 2 @ case 1
	.2byte _021D1A32 - _021D19EE - 2 @ case 2
	.2byte _021D1A84 - _021D19EE - 2 @ case 3
	.2byte _021D1A8E - _021D19EE - 2 @ case 4
	.2byte _021D1A98 - _021D19EE - 2 @ case 5
_021D19FA:
	movs r1, #1
	str r1, [r4, #8]
	movs r0, #0x24
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl ov78_021D1C98
	movs r0, #6
	str r0, [sp]
	ldr r0, _021D1AA0 @ =0x04000050
	movs r1, #8
	movs r2, #0x15
	movs r3, #0xa
	blx FUN_020BF55C
	pop {r3, r4, r5, pc}
_021D1A1A:
	ldr r0, [r4, #0xc]
	subs r0, r0, #1
	str r0, [r4, #0xc]
	bpl _021D1A9E
	adds r0, r4, #0
	movs r1, #1
	bl ov78_021D1C98
	ldr r0, _021D1AA4 @ =0x000006CA
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D1A32:
	movs r0, #0x26
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov78_021D17E4
	cmp r0, #0
	beq _021D1A9E
	movs r0, #0x26
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	bl ov78_021D17A4
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl ov78_021D17A4
	movs r0, #0x39
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #1
	bl ov78_021D17A4
	ldr r0, _021D1AA8 @ =0x00000428
	movs r1, #1
	adds r0, r4, r0
	bl ov78_021D17A4
	movs r0, #0x13
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r1, #1
	bl ov78_021D17A4
	adds r0, r4, #0
	movs r1, #1
	bl ov78_021D1C98
	pop {r3, r4, r5, pc}
_021D1A84:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov78_021D1CA8
	pop {r3, r4, r5, pc}
_021D1A8E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov78_021D1E44
	pop {r3, r4, r5, pc}
_021D1A98:
	ldr r0, _021D1AA0 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
_021D1A9E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1AA0: .4byte 0x04000050
_021D1AA4: .4byte 0x000006CA
_021D1AA8: .4byte 0x00000428
	thumb_func_end ov78_021D19D4

	thumb_func_start ov78_021D1AAC
ov78_021D1AAC: @ 0x021D1AAC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl FUN_020241B4
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	blx FUN_020B2628
	blx FUN_020A73C0
	movs r0, #2
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	bl FUN_02007768
	ldr r0, _021D1B1C @ =0x0000064C
	ldr r0, [r4, r0]
	bl FUN_020150EC
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #4
	str r2, [sp, #4]
	blx FUN_020B275C
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	bl FUN_020203EC
	adds r0, r4, #0
	bl ov78_021D192C
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020219F8
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021D1B1C: .4byte 0x0000064C
	thumb_func_end ov78_021D1AAC

	thumb_func_start ov78_021D1B20
ov78_021D1B20: @ 0x021D1B20
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_020203AC
	movs r1, #0x5f
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	adds r1, r1, #4
	adds r1, r4, r1
	bl ov78_021D1B3C
	pop {r4, pc}
	thumb_func_end ov78_021D1B20

	thumb_func_start ov78_021D1B3C
ov78_021D1B3C: @ 0x021D1B3C
	push {r4, lr}
	sub sp, #0x20
	movs r3, #0
	str r3, [r1]
	str r3, [r1, #4]
	adds r4, r0, #0
	ldr r2, _021D1B88 @ =0x0000EAAB
	str r3, [r1, #8]
	add r0, sp, #0xc
	strh r2, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r1, #0x4b
	ldr r3, _021D1B8C @ =0x00000FA4
	lsls r1, r1, #0xe
	add r2, sp, #0xc
	str r4, [sp, #8]
	bl FUN_020206D0
	movs r1, #0
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #0x18]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	add r0, sp, #0x14
	adds r1, r4, #0
	bl FUN_02020680
	adds r0, r4, #0
	bl FUN_020203D4
	add sp, #0x20
	pop {r4, pc}
	.align 2, 0
_021D1B88: .4byte 0x0000EAAB
_021D1B8C: .4byte 0x00000FA4
	thumb_func_end ov78_021D1B3C

	thumb_func_start ov78_021D1B90
ov78_021D1B90: @ 0x021D1B90
	movs r1, #0x5f
	lsls r1, r1, #4
	ldr r3, _021D1B9C @ =FUN_020203B8
	ldr r0, [r0, r1]
	bx r3
	nop
_021D1B9C: .4byte FUN_020203B8
	thumb_func_end ov78_021D1B90

	thumb_func_start ov78_021D1BA0
ov78_021D1BA0: @ 0x021D1BA0
	push {r4, r5, r6, r7}
	movs r5, #0
	adds r4, r5, #0
	adds r6, r0, #0
	subs r3, r5, #4
	adds r1, r5, #0
	subs r4, #0x2c
	movs r2, #0x20
_021D1BB0:
	cmp r5, #0
	beq _021D1BBE
	cmp r5, #1
	beq _021D1BC6
	cmp r5, #2
	beq _021D1BD0
	b _021D1BDA
_021D1BBE:
	str r4, [r6, #0x58]
	str r3, [r6, #0x5c]
	str r2, [r6, #0x60]
	b _021D1BDA
_021D1BC6:
	str r1, [r6, #0x58]
	str r3, [r6, #0x5c]
	movs r7, #0x3e
	str r7, [r6, #0x60]
	b _021D1BDA
_021D1BD0:
	movs r7, #0x26
	str r7, [r6, #0x58]
	str r3, [r6, #0x5c]
	movs r7, #0x1a
	str r7, [r6, #0x60]
_021D1BDA:
	adds r5, r5, #1
	adds r6, #0xc
	cmp r5, #3
	blt _021D1BB0
	movs r5, #0
	movs r2, #0x82
	movs r1, #0x52
	movs r4, #0x4e
	movs r3, #0x37
_021D1BEC:
	cmp r5, #0
	beq _021D1BFA
	cmp r5, #1
	beq _021D1C04
	cmp r5, #2
	beq _021D1C0E
	b _021D1C1A
_021D1BFA:
	adds r6, r0, #0
	str r4, [r0, #0x7c]
	adds r6, #0x80
	str r3, [r6]
	b _021D1C1A
_021D1C04:
	adds r6, r0, #0
	str r2, [r0, #0x7c]
	adds r6, #0x80
	str r1, [r6]
	b _021D1C1A
_021D1C0E:
	movs r6, #0xac
	adds r7, r0, #0
	str r6, [r0, #0x7c]
	adds r7, #0x80
	movs r6, #0x32
	str r6, [r7]
_021D1C1A:
	adds r5, r5, #1
	adds r0, #8
	cmp r5, #3
	blt _021D1BEC
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov78_021D1BA0

	thumb_func_start ov78_021D1C28
ov78_021D1C28: @ 0x021D1C28
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x26
	lsls r0, r0, #4
	movs r4, #0
	adds r6, r5, r0
	movs r7, #0x98
_021D1C36:
	adds r0, r4, #2
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r6, r1
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	ldr r3, [r5, #0x60]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	lsls r3, r3, #0xc
	bl ov78_021D17A8
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #3
	blt _021D1C36
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov78_021D1C28

	thumb_func_start ov78_021D1C58
ov78_021D1C58: @ 0x021D1C58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D1C90 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x20
	tst r0, r1
	beq _021D1C74
	ldr r0, [r4, #0x54]
	subs r0, r0, #1
	bmi _021D1C74
	str r0, [r4, #0x54]
	ldr r0, _021D1C94 @ =0x000005DC
	bl FUN_02005748
_021D1C74:
	ldr r0, _021D1C90 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x10
	tst r0, r1
	beq _021D1C8E
	ldr r0, [r4, #0x54]
	adds r0, r0, #1
	cmp r0, #3
	bge _021D1C8E
	str r0, [r4, #0x54]
	ldr r0, _021D1C94 @ =0x000005DC
	bl FUN_02005748
_021D1C8E:
	pop {r4, pc}
	.align 2, 0
_021D1C90: .4byte 0x021BF67C
_021D1C94: .4byte 0x000005DC
	thumb_func_end ov78_021D1C58

	thumb_func_start ov78_021D1C98
ov78_021D1C98: @ 0x021D1C98
	ldr r2, [r0]
	adds r1, r2, r1
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov78_021D1C98

	thumb_func_start ov78_021D1CA4
ov78_021D1CA4: @ 0x021D1CA4
	ldr r0, [r0]
	bx lr
	thumb_func_end ov78_021D1CA4

	thumb_func_start ov78_021D1CA8
ov78_021D1CA8: @ 0x021D1CA8
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r2, [r4, #4]
	cmp r2, #8
	bls _021D1CB6
	b _021D1DE4
_021D1CB6:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D1CC2: @ jump table
	.2byte _021D1CD4 - _021D1CC2 - 2 @ case 0
	.2byte _021D1CF6 - _021D1CC2 - 2 @ case 1
	.2byte _021D1D0E - _021D1CC2 - 2 @ case 2
	.2byte _021D1D24 - _021D1CC2 - 2 @ case 3
	.2byte _021D1D54 - _021D1CC2 - 2 @ case 4
	.2byte _021D1D72 - _021D1CC2 - 2 @ case 5
	.2byte _021D1DA2 - _021D1CC2 - 2 @ case 6
	.2byte _021D1DC0 - _021D1CC2 - 2 @ case 7
	.2byte _021D1DDA - _021D1CC2 - 2 @ case 8
_021D1CD4:
	movs r2, #0x5f
	lsls r2, r2, #4
	ldr r1, [r4, r2]
	adds r2, r2, #4
	adds r0, #0x10
	adds r2, r4, r2
	bl ov78_021D213C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4, #4]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1CF6:
	adds r0, #0x10
	bl ov78_021D2200
	cmp r0, #0
	beq _021D1DE4
	movs r0, #6
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1D0E:
	ldr r1, [r4, #0xc]
	subs r1, r1, #1
	str r1, [r4, #0xc]
	bpl _021D1DE4
	bl ov78_021D1E28
	ldr r0, [r4, #4]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1D24:
	ldr r0, _021D1DE8 @ =0x0001020F
	movs r2, #0x5a
	str r0, [sp]
	ldr r0, _021D1DEC @ =0x000006AC
	lsls r2, r2, #2
	ldr r0, [r4, r0]
	movs r3, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xac
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	bl ov78_021D201C
	movs r1, #0x6b
	lsls r1, r1, #4
	strb r0, [r4, r1]
	ldr r0, [r4, #4]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1D54:
	movs r0, #0x6b
	lsls r0, r0, #4
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _021D1DE4
	adds r0, r4, #0
	bl ov78_021D2090
	ldr r0, [r4, #4]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1D72:
	ldr r0, _021D1DE8 @ =0x0001020F
	movs r2, #0x5a
	str r0, [sp]
	ldr r0, _021D1DEC @ =0x000006AC
	lsls r2, r2, #2
	ldr r0, [r4, r0]
	movs r3, #7
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xac
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	bl ov78_021D201C
	movs r1, #0x6b
	lsls r1, r1, #4
	strb r0, [r4, r1]
	ldr r0, [r4, #4]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1DA2:
	movs r0, #0x6b
	lsls r0, r0, #4
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _021D1DE4
	adds r0, r4, #0
	bl ov78_021D2090
	ldr r0, [r4, #4]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1DC0:
	movs r0, #6
	lsls r0, r0, #8
	adds r0, r4, r0
	movs r1, #1
	bl ov78_021D2430
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021D1DDA:
	bl ov78_021D1DF0
	adds r0, r4, #0
	bl ov78_021D1E28
_021D1DE4:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021D1DE8: .4byte 0x0001020F
_021D1DEC: .4byte 0x000006AC
	thumb_func_end ov78_021D1CA8

	thumb_func_start ov78_021D1DF0
ov78_021D1DF0: @ 0x021D1DF0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x26
	lsls r0, r0, #4
	movs r5, #0
	adds r4, r6, r0
	movs r7, #0x98
_021D1DFE:
	ldr r0, [r6, #0x54]
	cmp r0, r5
	bne _021D1E12
	adds r0, r5, #2
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r4, r1
	bl ov78_021D180C
	b _021D1E20
_021D1E12:
	adds r1, r5, #2
	movs r0, #0x98
	muls r0, r1, r0
	adds r0, r4, r0
	movs r1, #0
	bl ov78_021D182C
_021D1E20:
	adds r5, r5, #1
	cmp r5, #3
	blt _021D1DFE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov78_021D1DF0

	thumb_func_start ov78_021D1E28
ov78_021D1E28: @ 0x021D1E28
	adds r2, r0, #0
	ldr r0, [r2, #0x54]
	ldr r3, _021D1E40 @ =ov78_021D243C
	lsls r1, r0, #3
	movs r0, #6
	lsls r0, r0, #8
	adds r0, r2, r0
	adds r2, r2, r1
	ldr r1, [r2, #0x7c]
	adds r2, #0x80
	ldr r2, [r2]
	bx r3
	.align 2, 0
_021D1E40: .4byte ov78_021D243C
	thumb_func_end ov78_021D1E28

	thumb_func_start ov78_021D1E44
ov78_021D1E44: @ 0x021D1E44
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, [r4, #4]
	adds r5, r1, #0
	cmp r2, #4
	bls _021D1E54
	b _021D1FA6
_021D1E54:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D1E60: @ jump table
	.2byte _021D1E6A - _021D1E60 - 2 @ case 0
	.2byte _021D1E96 - _021D1E60 - 2 @ case 1
	.2byte _021D1EDA - _021D1E60 - 2 @ case 2
	.2byte _021D1F1A - _021D1E60 - 2 @ case 3
	.2byte _021D1F52 - _021D1E60 - 2 @ case 4
_021D1E6A:
	movs r0, #6
	lsls r0, r0, #8
	adds r0, r4, r0
	movs r1, #0
	bl ov78_021D2430
	adds r0, r4, #0
	bl ov78_021D1E28
	adds r0, r4, #0
	bl ov78_021D2904
	adds r0, r4, #0
	bl ov78_021D2618
	ldr r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_021D1E96:
	movs r0, #0x65
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #1
	bl ov78_021D2508
	ldr r0, [r4, #0x54]
	movs r2, #0
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #6
	bl FUN_02007DEC
	adds r0, r4, #0
	bl ov78_021D26A4
	cmp r0, #0
	beq _021D1FA6
	ldr r0, [r4, #0x54]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl ov78_021D291C
	movs r1, #0
	bl FUN_02005844
	ldr r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D1EDA:
	ldr r0, _021D1FAC @ =0x0001020F
	movs r2, #0xff
	str r0, [sp]
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r3, [r4, #0x54]
	ldr r0, [r0]
	adds r2, #0x69
	adds r3, r3, #1
	bl ov78_021D1FB4
	adds r0, r4, #0
	adds r1, r4, #0
	str r5, [sp]
	adds r0, #0x94
	ldr r0, [r0]
	ldr r2, _021D1FB0 @ =0x0000029E
	adds r1, #0xb0
	movs r3, #1
	bl FUN_02002100
	adds r1, r4, #0
	adds r1, #0xb8
	str r0, [r1]
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D1F1A:
	adds r0, #0xb8
	ldr r0, [r0]
	bl FUN_02002114
	cmp r0, #0
	beq _021D1F36
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _021D1F42
	adds r1, r1, #1
	add sp, #8
	cmp r0, r1
	pop {r3, r4, r5, pc}
_021D1F36:
	adds r0, r4, #0
	movs r1, #1
	bl ov78_021D1C98
	add sp, #8
	pop {r3, r4, r5, pc}
_021D1F42:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl ov78_021D2688
	add sp, #8
	pop {r3, r4, r5, pc}
_021D1F52:
	bl ov78_021D26A4
	cmp r0, #0
	beq _021D1FA6
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	bl ov78_021D1C98
	movs r0, #7
	str r0, [r4, #4]
	movs r0, #0x65
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	bl ov78_021D2508
	ldr r0, [r4, #0x54]
	movs r2, #1
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #6
	bl FUN_02007DEC
	ldr r0, _021D1FAC @ =0x0001020F
	movs r2, #0xff
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #4]
	adds r0, #0x98
	ldr r0, [r0]
	adds r1, r5, #0
	adds r2, #0x69
	movs r3, #7
	bl ov78_021D1FB4
	movs r1, #0x6b
	lsls r1, r1, #4
	strb r0, [r4, r1]
_021D1FA6:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D1FAC: .4byte 0x0001020F
_021D1FB0: .4byte 0x0000029E
	thumb_func_end ov78_021D1E44

	thumb_func_start ov78_021D1FB4
ov78_021D1FB4: @ 0x021D1FB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r3, #0
	movs r0, #0
	movs r1, #0x1a
	adds r3, r4, #0
	bl FUN_0200B144
	adds r4, r0, #0
	bne _021D1FD0
	bl FUN_02022974
_021D1FD0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r3, #0
	ldr r0, [sp, #0x2c]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	movs r1, #1
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	movs r1, #0
	movs r2, #2
	adds r7, r0, #0
	adds r0, r5, #0
	lsls r2, r2, #8
	adds r3, r1, #0
	bl FUN_0200E060
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B190
	adds r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov78_021D1FB4

	thumb_func_start ov78_021D201C
ov78_021D201C: @ 0x021D201C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x30]
	adds r5, r0, #0
	ldr r0, [r4]
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _021D2034
	bl FUN_02022974
_021D2034:
	movs r0, #0
	movs r1, #0x1a
	adds r2, r7, #0
	adds r3, r6, #0
	bl FUN_0200B144
	adds r6, r0, #0
	bne _021D2048
	bl FUN_02022974
_021D2048:
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl FUN_0200B1EC
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r3, #0
	ldr r0, [sp, #0x2c]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	movs r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4]
	adds r0, r5, #0
	bl FUN_0201D78C
	movs r1, #0
	movs r2, #2
	adds r4, r0, #0
	adds r0, r5, #0
	lsls r2, r2, #8
	adds r3, r1, #0
	bl FUN_0200E060
	adds r0, r6, #0
	bl FUN_0200B190
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov78_021D201C

	thumb_func_start ov78_021D2090
ov78_021D2090: @ 0x021D2090
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_020237BC
	movs r0, #0
	adds r4, #0xac
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov78_021D2090

	thumb_func_start ov78_021D20A4
ov78_021D20A4: @ 0x021D20A4
	push {r4, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r4, r1, #0
	movs r1, #1
	adds r2, #0xb0
	strb r1, [r2]
	adds r2, r0, #0
	movs r3, #0x17
	adds r2, #0xb1
	strb r3, [r2]
	adds r2, r0, #0
	movs r3, #0xc
	adds r2, #0xb2
	strb r3, [r2]
	adds r2, r0, #0
	movs r3, #5
	adds r2, #0xb3
	strb r3, [r2]
	adds r2, r0, #0
	movs r3, #4
	adds r2, #0xb4
	strb r3, [r2]
	adds r2, r0, #0
	movs r3, #3
	adds r2, #0xb5
	strb r3, [r2]
	adds r2, r0, #0
	movs r3, #0xa7
	adds r2, #0xb6
	strh r3, [r2]
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	adds r0, #0x94
	ldr r0, [r0]
	ldr r2, _021D2104 @ =0x0000029E
	adds r3, r1, #0
	bl FUN_0200DAA4
	movs r0, #0
	movs r1, #0x60
	adds r2, r4, #0
	bl FUN_02002E7C
	add sp, #8
	pop {r4, pc}
	nop
_021D2104: .4byte 0x0000029E
	thumb_func_end ov78_021D20A4

	thumb_func_start ov78_021D2108
ov78_021D2108: @ 0x021D2108
	str r1, [r0]
	str r1, [r0, #4]
	subs r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end ov78_021D2108

	thumb_func_start ov78_021D2114
ov78_021D2114: @ 0x021D2114
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r5, #0xc]
	cmp r1, r3
	blt _021D2122
	movs r4, #1
	b _021D2124
_021D2122:
	movs r4, #0
_021D2124:
	ldr r2, [r5, #8]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r1, r3, #0
	blx FUN_020E1F6C
	ldr r1, [r5, #4]
	adds r0, r0, r1
	str r0, [r5]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov78_021D2114

	thumb_func_start ov78_021D213C
ov78_021D213C: @ 0x021D213C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r0, #0
	beq _021D214E
	bl FUN_02022974
_021D214E:
	ldr r1, _021D2190 @ =0xFFFFEAAB
	ldr r2, _021D2194 @ =0xFFFFDC72
	adds r0, r5, #0
	movs r3, #6
	bl ov78_021D2108
	adds r0, r5, #0
	movs r1, #0x4b
	movs r2, #0x32
	adds r0, #0x10
	lsls r1, r1, #0xe
	lsls r2, r2, #0xe
	movs r3, #6
	bl ov78_021D2108
	adds r0, r5, #0
	movs r2, #9
	adds r0, #0x20
	movs r1, #0
	lsls r2, r2, #0xe
	movs r3, #6
	bl ov78_021D2108
	movs r2, #0
	str r2, [r5, #0x3c]
	str r4, [r5, #0x30]
	str r6, [r5, #0x34]
	ldr r0, _021D2198 @ =ov78_021D219C
	adds r1, r5, #0
	str r2, [r5, #0x38]
	bl FUN_0200D9E8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D2190: .4byte 0xFFFFEAAB
_021D2194: .4byte 0xFFFFDC72
_021D2198: .4byte ov78_021D219C
	thumb_func_end ov78_021D213C

	thumb_func_start ov78_021D219C
ov78_021D219C: @ 0x021D219C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r1, #0
	ldr r1, [r5, #0x38]
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov78_021D2114
	adds r4, r0, #0
	adds r0, r5, #0
	ldr r1, [r5, #0x38]
	adds r0, #0x10
	bl ov78_021D2114
	adds r0, r5, #0
	ldr r1, [r5, #0x38]
	adds r0, #0x20
	bl ov78_021D2114
	ldr r1, [r5]
	add r0, sp, #0
	strh r1, [r0]
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r1, [r5, #0x30]
	add r0, sp, #0
	bl FUN_020209D4
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x30]
	bl FUN_02020A50
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x34]
	str r1, [r0, #8]
	ldr r0, [r5, #0x38]
	adds r0, r0, #1
	str r0, [r5, #0x38]
	cmp r4, #1
	bne _021D21FC
	adds r0, r6, #0
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r5, #0x40]
	movs r0, #1
	str r0, [r5, #0x3c]
_021D21FC:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D219C

	thumb_func_start ov78_021D2200
ov78_021D2200: @ 0x021D2200
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end ov78_021D2200

	thumb_func_start ov78_021D2204
ov78_021D2204: @ 0x021D2204
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r2, #0
	movs r2, #0xa
	adds r5, r0, #0
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x7a
	adds r4, r1, #0
	str r6, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x52
	movs r3, #0
	bl FUN_0200985C
	str r0, [r4, #4]
	bl FUN_0200A3DC
	ldr r0, [r4, #4]
	bl FUN_02009D4C
	movs r2, #0xb
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x7b
	str r6, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x52
	movs r3, #0
	bl FUN_020098B8
	str r0, [r4, #8]
	bl FUN_0200A640
	ldr r0, [r4, #8]
	bl FUN_02009D4C
	movs r2, #0xc
	str r2, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x1f
	str r6, [sp, #8]
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x52
	movs r3, #0
	bl FUN_02009918
	str r0, [r4, #0xc]
	movs r2, #0xd
	str r2, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x7d
	str r6, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x52
	movs r3, #0
	bl FUN_02009918
	str r0, [r4, #0x10]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D2204

	thumb_func_start ov78_021D2290
ov78_021D2290: @ 0x021D2290
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0200A4E4
	ldr r0, [r4, #8]
	bl FUN_0200A6DC
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #4]
	bl FUN_02009D68
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #8]
	bl FUN_02009D68
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0xc]
	bl FUN_02009D68
	movs r0, #0x7d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x10]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov78_021D2290

	thumb_func_start ov78_021D22D4
ov78_021D22D4: @ 0x021D22D4
	push {r4, r5, r6, lr}
	sub sp, #0x70
	adds r5, r0, #0
	movs r0, #0xd
	str r0, [sp]
	subs r0, #0xe
	str r0, [sp, #4]
	adds r6, r2, #0
	str r0, [sp, #8]
	movs r0, #0
	movs r2, #0x7a
	adds r4, r1, #0
	str r0, [sp, #0xc]
	movs r1, #1
	lsls r2, r2, #2
	str r1, [sp, #0x10]
	ldr r1, [r5, r2]
	movs r3, #0xc
	str r1, [sp, #0x14]
	adds r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	adds r1, r2, #0
	adds r1, #8
	ldr r1, [r5, r1]
	adds r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	movs r2, #0xb
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	movs r1, #0xa
	bl FUN_020093B4
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x20
	str r0, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x44]
	movs r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl FUN_02021B90
	movs r1, #0
	str r0, [r4]
	bl FUN_02021CAC
	movs r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	add sp, #0x70
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D22D4

	thumb_func_start ov78_021D2350
ov78_021D2350: @ 0x021D2350
	ldr r3, _021D2358 @ =FUN_02021BD4
	ldr r0, [r0]
	bx r3
	nop
_021D2358: .4byte FUN_02021BD4
	thumb_func_end ov78_021D2350

	thumb_func_start ov78_021D235C
ov78_021D235C: @ 0x021D235C
	movs r3, #0
	str r3, [r0]
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end ov78_021D235C

	thumb_func_start ov78_021D2368
ov78_021D2368: @ 0x021D2368
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D23B0 @ =0x0000FFFF
	muls r0, r1, r0
	ldr r1, [r4, #8]
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _021D23B4 @ =0x020F983C
	ldr r2, [r4, #4]
	ldrsh r0, [r0, r1]
	asrs r3, r2, #0x1f
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #8]
	adds r0, r0, #1
	blx FUN_020E1F6C
	str r1, [r4, #0xc]
	pop {r4, pc}
	nop
_021D23B0: .4byte 0x0000FFFF
_021D23B4: .4byte 0x020F983C
	thumb_func_end ov78_021D2368

	thumb_func_start ov78_021D23B8
ov78_021D23B8: @ 0x021D23B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D23C6
	bl FUN_02022974
_021D23C6:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x2c
	lsls r1, r1, #0xe
	movs r2, #0x20
	bl ov78_021D235C
	ldr r0, _021D23E4 @ =ov78_021D23E8
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x28]
	pop {r4, pc}
	nop
_021D23E4: .4byte ov78_021D23E8
	thumb_func_end ov78_021D23B8

	thumb_func_start ov78_021D23E8
ov78_021D23E8: @ 0x021D23E8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x2c
	bl ov78_021D2368
	adds r5, r4, #0
	adds r5, #0x1c
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r1, r2, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov78_021D23E8

	thumb_func_start ov78_021D241C
ov78_021D241C: @ 0x021D241C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D242E
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x28]
_021D242E:
	pop {r4, pc}
	thumb_func_end ov78_021D241C

	thumb_func_start ov78_021D2430
ov78_021D2430: @ 0x021D2430
	ldr r3, _021D2438 @ =FUN_02021CAC
	ldr r0, [r0]
	bx r3
	nop
_021D2438: .4byte FUN_02021CAC
	thumb_func_end ov78_021D2430

	thumb_func_start ov78_021D243C
ov78_021D243C: @ 0x021D243C
	lsls r1, r1, #0xc
	str r1, [r0, #0x1c]
	lsls r1, r2, #0xc
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end ov78_021D243C

	thumb_func_start ov78_021D2448
ov78_021D2448: @ 0x021D2448
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r5, r0, #0
	adds r3, r5, #0
	adds r6, r2, #0
	adds r4, r1, #0
	movs r0, #0x52
	movs r1, #0xe
	movs r2, #0
	adds r3, #0x14
	str r6, [sp]
	bl FUN_02006F50
	adds r2, r5, #0
	str r0, [r5, #0xc]
	movs r0, #0x52
	movs r1, #0xf
	adds r2, #0x18
	adds r3, r6, #0
	bl FUN_02006F88
	str r0, [r5, #0x10]
	ldr r0, _021D24DC @ =0x0000064C
	ldr r0, [r4, r0]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #8]
	add r0, sp, #4
	bl FUN_02015128
	str r0, [r5]
	ldr r0, _021D24DC @ =0x0000064C
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x30]
	movs r0, #1
	str r0, [sp, #0x34]
	add r0, sp, #0x2c
	bl FUN_020151A4
	str r0, [r5, #4]
	ldr r0, _021D24DC @ =0x0000064C
	movs r2, #0
	ldr r0, [r4, r0]
	movs r1, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [r5]
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	str r0, [sp, #0x14]
	add r0, sp, #4
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	strh r2, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r1, _021D24E0 @ =0x000003FE
	str r1, [sp, #0x24]
	strh r2, [r0, #0x24]
	add r0, sp, #0xc
	bl FUN_02015214
	str r0, [r5, #8]
	movs r1, #0
	bl FUN_02015240
	movs r1, #0x40
	ldr r0, [r5, #8]
	adds r2, r1, #0
	bl FUN_02015268
	add sp, #0x38
	pop {r4, r5, r6, pc}
	nop
_021D24DC: .4byte 0x0000064C
_021D24E0: .4byte 0x000003FE
	thumb_func_end ov78_021D2448

	thumb_func_start ov78_021D24E4
ov78_021D24E4: @ 0x021D24E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_02015238
	ldr r0, [r4]
	bl FUN_02015164
	ldr r0, [r4, #4]
	bl FUN_020151D4
	ldr r0, [r4, #0xc]
	bl FUN_020181C4
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov78_021D24E4

	thumb_func_start ov78_021D2508
ov78_021D2508: @ 0x021D2508
	ldr r3, _021D2510 @ =FUN_02015240
	ldr r0, [r0, #8]
	bx r3
	nop
_021D2510: .4byte FUN_02015240
	thumb_func_end ov78_021D2508

	thumb_func_start ov78_021D2514
ov78_021D2514: @ 0x021D2514
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _021D2528
	bl FUN_02022974
_021D2528:
	ldr r4, [sp, #0x24]
	adds r0, r5, #0
	adds r0, #0x1c
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov78_021D2108
	adds r0, r5, #0
	ldr r1, [sp]
	ldr r2, [sp, #0x18]
	adds r0, #0x2c
	adds r3, r4, #0
	bl ov78_021D2108
	adds r0, r5, #0
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	adds r0, #0x3c
	adds r3, r4, #0
	bl ov78_021D2108
	movs r2, #0
	str r2, [r5, #0x4c]
	movs r0, #1
	str r0, [r5, #0x50]
	ldr r0, _021D2568 @ =ov78_021D25A0
	adds r1, r5, #0
	bl FUN_0200D9E8
	str r0, [r5, #0x54]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2568: .4byte ov78_021D25A0
	thumb_func_end ov78_021D2514

	thumb_func_start ov78_021D256C
ov78_021D256C: @ 0x021D256C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _021D257A
	bl FUN_02022974
_021D257A:
	movs r0, #1
	mvns r0, r0
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x4c]
	cmp r0, r1
	blt _021D258E
	ldr r0, [r4, #0x50]
	adds r0, r1, r0
	str r0, [r4, #0x4c]
_021D258E:
	ldr r0, _021D259C @ =ov78_021D25A0
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x54]
	pop {r4, pc}
	.align 2, 0
_021D259C: .4byte ov78_021D25A0
	thumb_func_end ov78_021D256C

	thumb_func_start ov78_021D25A0
ov78_021D25A0: @ 0x021D25A0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	ldr r1, [r5, #0x4c]
	adds r0, #0x1c
	bl ov78_021D2114
	adds r4, r0, #0
	adds r0, r5, #0
	ldr r1, [r5, #0x4c]
	adds r0, #0x2c
	bl ov78_021D2114
	adds r0, r5, #0
	ldr r1, [r5, #0x4c]
	adds r0, #0x3c
	bl ov78_021D2114
	movs r2, #1
	ldr r1, [r5, #0x1c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	ldr r3, [r5, #0x2c]
	lsls r1, r1, #4
	subs r2, r3, r2
	lsls r2, r2, #4
	ldr r0, [r5, #8]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_02015254
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #8]
	adds r2, r1, #0
	bl FUN_02015270
	cmp r4, #1
	beq _021D25F4
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bge _021D25FE
_021D25F4:
	adds r0, r6, #0
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r5, #0x54]
_021D25FE:
	ldr r1, [r5, #0x4c]
	ldr r0, [r5, #0x50]
	adds r0, r1, r0
	str r0, [r5, #0x4c]
	pop {r4, r5, r6, pc}
	thumb_func_end ov78_021D25A0

	thumb_func_start ov78_021D2608
ov78_021D2608: @ 0x021D2608
	ldr r0, [r0, #0x54]
	cmp r0, #0
	bne _021D2612
	movs r0, #1
	bx lr
_021D2612:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov78_021D2608

	thumb_func_start ov78_021D2618
ov78_021D2618: @ 0x021D2618
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	movs r2, #1
	lsls r0, r0, #3
	adds r1, r5, r0
	ldr r0, [r1, #0x7c]
	adds r1, #0x80
	lsls r6, r0, #0xc
	ldr r0, [r1]
	ldr r1, _021D2684 @ =0x00000666
	adds r0, #0x30
	lsls r4, r0, #0xc
	movs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	lsls r2, r2, #0xc
	str r2, [sp, #8]
	movs r0, #6
	subs r1, #0x16
	str r0, [sp, #0xc]
	adds r0, r5, r1
	adds r1, r6, #0
	lsls r2, r2, #7
	adds r3, r4, #0
	bl ov78_021D2514
	movs r0, #6
	movs r3, #1
	movs r1, #0x21
	str r4, [sp]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021D2684 @ =0x00000666
	lsls r3, r3, #0xc
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #6
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x54]
	lsls r1, r1, #4
	lsls r2, r2, #2
	adds r0, r5, r1
	adds r2, r5, r2
	subs r1, #0xc
	ldr r1, [r2, r1]
	adds r2, r6, #0
	lsls r3, r3, #7
	bl ov78_021D26B4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D2684: .4byte 0x00000666
	thumb_func_end ov78_021D2618

	thumb_func_start ov78_021D2688
ov78_021D2688: @ 0x021D2688
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x65
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov78_021D256C
	movs r0, #0x21
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov78_021D270C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov78_021D2688

	thumb_func_start ov78_021D26A4
ov78_021D26A4: @ 0x021D26A4
	movs r1, #0x65
	lsls r1, r1, #4
	ldr r3, _021D26B0 @ =ov78_021D2608
	adds r0, r0, r1
	bx r3
	nop
_021D26B0: .4byte ov78_021D2608
	thumb_func_end ov78_021D26A4

	thumb_func_start ov78_021D26B4
ov78_021D26B4: @ 0x021D26B4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x3c]
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _021D26C8
	bl FUN_02022974
_021D26C8:
	ldr r4, [sp, #0x28]
	ldr r2, [sp]
	adds r0, r5, #4
	adds r1, r7, #0
	adds r3, r4, #0
	bl ov78_021D2108
	adds r0, r5, #0
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	adds r0, #0x14
	adds r3, r4, #0
	bl ov78_021D2108
	adds r0, r5, #0
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	adds r0, #0x24
	adds r3, r4, #0
	bl ov78_021D2108
	str r6, [r5]
	movs r2, #0
	str r2, [r5, #0x34]
	movs r0, #1
	str r0, [r5, #0x38]
	ldr r0, _021D2708 @ =ov78_021D2740
	adds r1, r5, #0
	bl FUN_0200D9E8
	str r0, [r5, #0x3c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2708: .4byte ov78_021D2740
	thumb_func_end ov78_021D26B4

	thumb_func_start ov78_021D270C
ov78_021D270C: @ 0x021D270C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021D271A
	bl FUN_02022974
_021D271A:
	movs r0, #1
	mvns r0, r0
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x34]
	cmp r0, r1
	blt _021D272E
	ldr r0, [r4, #0x38]
	adds r0, r1, r0
	str r0, [r4, #0x34]
_021D272E:
	ldr r0, _021D273C @ =ov78_021D2740
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x3c]
	pop {r4, pc}
	.align 2, 0
_021D273C: .4byte ov78_021D2740
	thumb_func_end ov78_021D270C

	thumb_func_start ov78_021D2740
ov78_021D2740: @ 0x021D2740
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r1, [r5, #0x34]
	adds r7, r0, #0
	adds r0, r5, #4
	bl ov78_021D2114
	adds r6, r0, #0
	adds r0, r5, #0
	ldr r1, [r5, #0x34]
	adds r0, #0x14
	bl ov78_021D2114
	adds r0, r5, #0
	ldr r1, [r5, #0x34]
	adds r0, #0x24
	bl ov78_021D2114
	ldr r2, [r5, #0x24]
	asrs r0, r2, #0x1f
	lsrs r1, r2, #0xc
	lsls r0, r0, #0x14
	lsls r3, r2, #0x14
	movs r2, #2
	orrs r0, r1
	movs r1, #0
	lsls r2, r2, #0xa
	adds r2, r3, r2
	adcs r0, r1
	lsls r0, r0, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r0
	asrs r4, r2, #0xc
	ldr r2, [r5, #4]
	ldr r0, [r5]
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	ldr r2, [r5, #0x14]
	ldr r0, [r5]
	movs r1, #1
	asrs r2, r2, #0xc
	bl FUN_02007DEC
	ldr r0, [r5]
	movs r1, #0xc
	adds r2, r4, #0
	bl FUN_02007DEC
	ldr r0, [r5]
	movs r1, #0xd
	adds r2, r4, #0
	bl FUN_02007DEC
	cmp r6, #1
	beq _021D27B6
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bge _021D27C0
_021D27B6:
	adds r0, r7, #0
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r5, #0x3c]
_021D27C0:
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x38]
	adds r0, r1, r0
	str r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov78_021D2740

	thumb_func_start ov78_021D27CC
ov78_021D27CC: @ 0x021D27CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x14]
	movs r0, #0x20
	str r0, [sp]
	adds r0, r1, #0
	str r1, [sp, #0x18]
	str r0, [sp, #4]
	movs r0, #0x52
	movs r1, #0x11
	movs r2, #0
	movs r3, #0xa0
	bl FUN_02006E84
	ldr r5, [sp, #0x14]
	movs r4, #0
	movs r6, #1
_021D27EE:
	ldr r0, [sp, #0x18]
	movs r1, #1
	bl FUN_0201A778
	adds r1, r5, #0
	adds r1, #0x9c
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_0201A7A0
	cmp r4, #0
	beq _021D2814
	cmp r4, #1
	beq _021D281C
	cmp r4, #2
	beq _021D2824
	b _021D282A
_021D2814:
	movs r0, #0xc
	str r0, [sp, #0x1c]
	movs r7, #4
	b _021D282A
_021D281C:
	movs r0, #4
	str r0, [sp, #0x1c]
	movs r7, #0xe
	b _021D282A
_021D2824:
	movs r0, #0x14
	str r0, [sp, #0x1c]
	movs r7, #0xd
_021D282A:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r1, r5, #0
	ldr r3, [sp, #0x1c]
	adds r0, #0x94
	adds r1, #0x9c
	lsls r3, r3, #0x18
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #3
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r0, _021D2880 @ =0x0001020A
	movs r2, #0x5a
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	lsls r2, r2, #2
	adds r3, r4, #4
	bl ov78_021D28A8
	adds r4, r4, #1
	adds r5, r5, #4
	adds r6, #0x40
	cmp r4, #3
	blt _021D27EE
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2880: .4byte 0x0001020A
	thumb_func_end ov78_021D27CC

	thumb_func_start ov78_021D2884
ov78_021D2884: @ 0x021D2884
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D288A:
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_020181C4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D288A
	pop {r3, r4, r5, pc}
	thumb_func_end ov78_021D2884

	thumb_func_start ov78_021D28A8
ov78_021D28A8: @ 0x021D28A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r3, #0
	movs r0, #0
	movs r1, #0x1a
	adds r3, r4, #0
	bl FUN_0200B144
	adds r4, r0, #0
	bne _021D28C4
	bl FUN_02022974
_021D28C4:
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0200B1EC
	ldr r1, [sp, #0x20]
	adds r6, r0, #0
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r3, #1
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B190
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov78_021D28A8

	thumb_func_start ov78_021D2904
ov78_021D2904: @ 0x021D2904
	adds r1, r0, #0
	adds r1, #0xa8
	ldr r1, [r1]
	ldr r3, _021D2918 @ =FUN_0201ACF4
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, #0x9c
	ldr r0, [r0]
	bx r3
	nop
_021D2918: .4byte FUN_0201ACF4
	thumb_func_end ov78_021D2904

	thumb_func_start ov78_021D291C
ov78_021D291C: @ 0x021D291C
	push {r3, lr}
	cmp r0, #0
	beq _021D292C
	cmp r0, #1
	beq _021D2930
	cmp r0, #2
	beq _021D2934
	b _021D2938
_021D292C:
	ldr r0, _021D2940 @ =0x00000183
	pop {r3, pc}
_021D2930:
	ldr r0, _021D2944 @ =0x00000186
	pop {r3, pc}
_021D2934:
	ldr r0, _021D2948 @ =0x00000189
	pop {r3, pc}
_021D2938:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_021D2940: .4byte 0x00000183
_021D2944: .4byte 0x00000186
_021D2948: .4byte 0x00000189
	thumb_func_end ov78_021D291C
	@ 0x021D294C
