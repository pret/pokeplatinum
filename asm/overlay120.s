
	thumb_func_start ov120_021D0D80
ov120_021D0D80: @ 0x021D0D80
	push {r4, lr}
	movs r2, #1
	adds r4, r0, #0
	movs r0, #3
	movs r1, #0x78
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x78
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0x28
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x78
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x24]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov120_021D0D80

	thumb_func_start ov120_021D0DB0
ov120_021D0DB0: @ 0x021D0DB0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	movs r6, #0
	cmp r1, #5
	bls _021D0DC6
	b _021D0EEA
_021D0DC6:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0DD2: @ jump table
	.2byte _021D0DDE - _021D0DD2 - 2 @ case 0
	.2byte _021D0E44 - _021D0DD2 - 2 @ case 1
	.2byte _021D0E58 - _021D0DD2 - 2 @ case 2
	.2byte _021D0E82 - _021D0DD2 - 2 @ case 3
	.2byte _021D0E98 - _021D0DD2 - 2 @ case 4
	.2byte _021D0EC8 - _021D0DD2 - 2 @ case 5
_021D0DDE:
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
	ldr r0, _021D0EF0 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D0EF4 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	adds r0, r4, #0
	bl ov120_021D0F24
	adds r0, r4, #0
	bl ov120_021D114C
	ldr r0, _021D0EF8 @ =ov120_021D0F18
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_0201FFD0
	adds r0, r6, #0
	str r0, [r4, #0x24]
	movs r0, #1
	str r0, [r5]
	b _021D0EEA
_021D0E44:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D0E50
	subs r0, r0, #1
	str r0, [r4, #0x24]
	b _021D0EEA
_021D0E50:
	str r6, [r4, #0x24]
	movs r0, #2
	str r0, [r5]
	b _021D0EEA
_021D0E58:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D0E64
	subs r0, r0, #1
	str r0, [r4, #0x24]
	b _021D0EEA
_021D0E64:
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
	b _021D0EEA
_021D0E82:
	bl ov120_021D1178
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0EEA
	movs r0, #0xf0
	str r0, [r4, #0x24]
	movs r0, #4
	str r0, [r5]
	b _021D0EEA
_021D0E98:
	bl ov120_021D1178
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D0EA8
	subs r0, r0, #1
	str r0, [r4, #0x24]
	b _021D0EEA
_021D0EA8:
	adds r0, r6, #0
	str r0, [r4, #0x24]
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
	movs r0, #5
	str r0, [r5]
	b _021D0EEA
_021D0EC8:
	bl ov120_021D1178
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0EEA
	adds r0, r4, #0
	bl ov120_021D116C
	adds r0, r4, #0
	bl ov120_021D10D4
	adds r0, r6, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r6, #1
_021D0EEA:
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D0EF0: .4byte 0xFFFFE0FF
_021D0EF4: .4byte 0x04001000
_021D0EF8: .4byte ov120_021D0F18
	thumb_func_end ov120_021D0DB0

	thumb_func_start ov120_021D0EFC
ov120_021D0EFC: @ 0x021D0EFC
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
	thumb_func_end ov120_021D0EFC

	thumb_func_start ov120_021D0F18
ov120_021D0F18: @ 0x021D0F18
	ldr r3, _021D0F20 @ =FUN_0201C2B8
	ldr r0, [r0, #4]
	bx r3
	nop
_021D0F20: .4byte FUN_0201C2B8
	thumb_func_end ov120_021D0F18

	thumb_func_start ov120_021D0F24
ov120_021D0F24: @ 0x021D0F24
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _021D10B8 @ =0x021D1210
	adds r4, r0, #0
	add r3, sp, #0x90
	movs r2, #5
_021D0F30:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D0F30
	add r0, sp, #0x90
	bl FUN_0201FE94
	ldr r0, [r4]
	bl FUN_02018340
	add r3, sp, #0x80
	ldr r5, _021D10BC @ =0x021D1190
	str r0, [r4, #4]
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D10C0 @ =0x021D11BC
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
	ldr r5, _021D10C4 @ =0x021D11F4
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
	ldr r5, _021D10C8 @ =0x021D11D8
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
	ldr r5, _021D10CC @ =0x021D11A0
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
	movs r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0xc1
	movs r3, #3
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0xc1
	movs r3, #3
	bl FUN_02006E60
	movs r2, #0
	str r2, [sp]
	ldr r0, [r4]
	movs r1, #3
	str r0, [sp, #4]
	movs r0, #0xc1
	adds r3, r2, #0
	bl FUN_02006E84
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
	ldr r0, _021D10D0 @ =0x04000050
	movs r1, #2
	movs r3, #4
	str r2, [sp]
	blx FUN_020BF55C
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D10B8: .4byte 0x021D1210
_021D10BC: .4byte 0x021D1190
_021D10C0: .4byte 0x021D11BC
_021D10C4: .4byte 0x021D11F4
_021D10C8: .4byte 0x021D11D8
_021D10CC: .4byte 0x021D11A0
_021D10D0: .4byte 0x04000050
	thumb_func_end ov120_021D0F24

	thumb_func_start ov120_021D10D4
ov120_021D10D4: @ 0x021D10D4
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
	ldr r0, _021D1148 @ =0x04000050
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
_021D1148: .4byte 0x04000050
	thumb_func_end ov120_021D10D4

	thumb_func_start ov120_021D114C
ov120_021D114C: @ 0x021D114C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _021D1168 @ =0x0000025F
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
_021D1168: .4byte 0x0000025F
	thumb_func_end ov120_021D114C

	thumb_func_start ov120_021D116C
ov120_021D116C: @ 0x021D116C
	ldr r3, _021D1174 @ =FUN_0200B190
	ldr r0, [r0, #8]
	bx r3
	nop
_021D1174: .4byte FUN_0200B190
	thumb_func_end ov120_021D116C

	thumb_func_start ov120_021D1178
ov120_021D1178: @ 0x021D1178
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
	thumb_func_end ov120_021D1178
	@ 0x021D1190
