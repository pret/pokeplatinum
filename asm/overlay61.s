
	thumb_func_start ov61_0222AE60
ov61_0222AE60: @ 0x0222AE60
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r4, #0
	bl FUN_0202A75C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x5c
	bl FUN_0202486C
	adds r4, #0x5c
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov61_0222AE60

	thumb_func_start ov61_0222AE80
ov61_0222AE80: @ 0x0222AE80
	ldr r3, _0222AE84 @ =FUN_0202A824
	bx r3
	.align 2, 0
_0222AE84: .4byte FUN_0202A824
	thumb_func_end ov61_0222AE80

	thumb_func_start ov61_0222AE88
ov61_0222AE88: @ 0x0222AE88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r2, #0
	movs r2, #0x67
	adds r5, r1, #0
	adds r7, r3, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	ldr r1, [sp, #0x28]
	movs r0, #0x3c
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_02079AF4
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x14
	bl FUN_02023DF0
	adds r0, r4, #0
	bl FUN_020237BC
	movs r4, #0
	str r7, [sp, #0xc]
	str r7, [sp, #8]
_0222AECA:
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #5
	bl FUN_02079C08
	ldr r1, [sp, #0xc]
	adds r2, r4, #0
	strh r0, [r1, #0x28]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl FUN_02079C08
	ldr r1, [sp, #8]
	adds r2, r4, #0
	str r0, [r1, #0x64]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #7
	bl FUN_02079C08
	ldr r1, [sp, #8]
	adds r2, r4, #0
	adds r1, #0xdc
	str r0, [r1]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0xae
	bl FUN_02079C08
	ldr r1, _0222AF80 @ =0x000001EE
	cmp r0, r1
	bne _0222AF30
	adds r0, r1, #0
	subs r0, #0x9a
	ldr r1, [r7, r0]
	movs r0, #1
	lsls r0, r4
	orrs r1, r0
	movs r0, #0x55
	lsls r0, r0, #2
	str r1, [r7, r0]
_0222AF30:
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0x70
	bl FUN_02079C08
	movs r1, #0x56
	adds r2, r7, r4
	lsls r1, r1, #2
	strb r0, [r2, r1]
	ldr r0, [sp, #0xc]
	adds r4, r4, #1
	adds r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r0, r0, #4
	str r0, [sp, #8]
	cmp r4, #0x1e
	blt _0222AECA
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_02079AA8
	ldr r2, _0222AF84 @ =0x00000176
	movs r1, #0
	strb r0, [r7, r2]
	adds r0, r2, #1
	strb r1, [r7, r0]
	ldr r0, [sp, #4]
	adds r1, r7, #0
	adds r2, #0x22
	bl FUN_0202486C
	movs r1, #0x66
	lsls r1, r1, #2
	strh r0, [r7, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222AF80: .4byte 0x000001EE
_0222AF84: .4byte 0x00000176
	thumb_func_end ov61_0222AE88

	thumb_func_start ov61_0222AF88
ov61_0222AF88: @ 0x0222AF88
	push {r4, lr}
	ldr r3, _0222AFA0 @ =0x00000177
	adds r4, r1, #0
	strb r2, [r4, r3]
	adds r3, #0x21
	adds r2, r3, #0
	bl FUN_0202486C
	movs r1, #0x66
	lsls r1, r1, #2
	strh r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_0222AFA0: .4byte 0x00000177
	thumb_func_end ov61_0222AF88

	thumb_func_start ov61_0222AFA4
ov61_0222AFA4: @ 0x0222AFA4
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r5, r1, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x80
	blx FUN_020C4CF4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x80
	blx FUN_020C4DB0
	pop {r3, r4, r5, pc}
	thumb_func_end ov61_0222AFA4

	thumb_func_start ov61_0222AFC0
ov61_0222AFC0: @ 0x0222AFC0
	ldr r3, _0222AFC8 @ =FUN_020C4DB0
	movs r2, #0x80
	bx r3
	nop
_0222AFC8: .4byte FUN_020C4DB0
	thumb_func_end ov61_0222AFC0

	thumb_func_start ov61_0222AFCC
ov61_0222AFCC: @ 0x0222AFCC
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r5, r1, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	blx FUN_020C4CF4
	ldrb r0, [r5, #0x19]
	movs r1, #1
	strb r0, [r4]
	ldrb r0, [r5, #0x1a]
	strb r0, [r4, #1]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #2]
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #3]
	ldrh r0, [r5, #0x1c]
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	bics r0, r1
	ldrb r1, [r5, #0x1b]
	lsls r1, r1, #0x1f
	lsrs r2, r1, #0x1f
	movs r1, #1
	ands r1, r2
	orrs r0, r1
	strb r0, [r4, #6]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov61_0222AFCC

	thumb_func_start ov61_0222B008
ov61_0222B008: @ 0x0222B008
	push {r4, r5, r6, lr}
	ldr r2, _0222B0E4 @ =0x00000414
	adds r4, r1, #0
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x51
	adds r3, r4, #0
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r4, #8]
	adds r0, #0xc
	str r1, [r5]
	adds r3, #0xc
	adds r2, r5, r0
	movs r6, #5
_0222B02C:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r6, r6, #1
	bne _0222B02C
	ldr r0, [r3]
	movs r1, #0x53
	str r0, [r2]
	ldr r0, [r4, #0x3c]
	lsls r1, r1, #2
	str r0, [r5, #8]
	ldr r0, [r4, #0x38]
	ldr r2, _0222B0E8 @ =0x000059DC
	str r0, [r5, #4]
	movs r0, #0
	mvns r0, r0
	str r0, [r5, r1]
	movs r1, #0xfa
	lsls r1, r1, #2
	str r2, [r5, r1]
	adds r1, r1, #4
	str r2, [r5, r1]
	blx ov61_0222DE8C
	adds r1, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02018144
	movs r1, #0xed
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	mvns r0, r0
	blx ov61_0222DE8C
	adds r2, r0, #0
	movs r0, #0xed
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	blx FUN_020C4CF4
	ldr r2, _0222B0EC @ =0x000002B7
	ldr r3, [r4, #4]
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	movs r1, #0xfd
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	bl FUN_0200B358
	movs r1, #0xfe
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #1
	ldr r1, [r4, #4]
	lsls r0, r0, #8
	bl FUN_02023790
	movs r1, #0xff
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	bl ov61_0222BBF0
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4]
	str r0, [r5, #0xc]
	movs r0, #0xc
	strb r0, [r5, #0x10]
	movs r0, #2
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	adds r0, #0xc
	blx ov61_0222DCDC
	cmp r0, #1
	beq _0222B0D4
	bl FUN_02022974
_0222B0D4:
	movs r1, #0xf1
	movs r0, #1
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0xc
	str r0, [r5, r1]
	pop {r4, r5, r6, pc}
	nop
_0222B0E4: .4byte 0x00000414
_0222B0E8: .4byte 0x000059DC
_0222B0EC: .4byte 0x000002B7
	thumb_func_end ov61_0222B008

	thumb_func_start ov61_0222B0F0
ov61_0222B0F0: @ 0x0222B0F0
	push {r4, lr}
	adds r4, r0, #0
	blx ov61_0222DCFC
	movs r0, #0xf1
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, #0x38
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0xfe
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	movs r0, #0xfd
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0xed
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	bl ov61_0222BC40
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov61_0222B0F0

	thumb_func_start ov61_0222B138
ov61_0222B138: @ 0x0222B138
	push {r4, lr}
	adds r4, r0, #0
	blx ov61_0222DCFC
	movs r0, #0xf1
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov61_0222B138

	thumb_func_start ov61_0222B14C
ov61_0222B14C: @ 0x0222B14C
	push {r4, lr}
	adds r4, r0, #0
	blx FUN_021D76E8
	blx FUN_021D7DB0
	bl FUN_0203848C
	movs r0, #0xf2
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov61_0222B14C

	thumb_func_start ov61_0222B168
ov61_0222B168: @ 0x0222B168
	push {r4, lr}
	movs r1, #0x3e
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	rsbs r0, r0, #0
	bl FUN_021D1F3C
	movs r2, #0x3e
	lsls r2, r2, #4
	ldr r2, [r4, r2]
	adds r1, r0, #0
	adds r0, r4, #0
	rsbs r2, r2, #0
	bl ov61_0222BB60
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov61_0222B168

	thumb_func_start ov61_0222B190
ov61_0222B190: @ 0x0222B190
	push {r3, lr}
	ldr r1, _0222B1B0 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #1
	tst r1, r2
	bne _0222B1A2
	movs r1, #2
	tst r1, r2
	beq _0222B1AC
_0222B1A2:
	movs r1, #0
	bl ov61_0222BB54
	movs r0, #1
	pop {r3, pc}
_0222B1AC:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_0222B1B0: .4byte 0x021BF67C
	thumb_func_end ov61_0222B190

	thumb_func_start ov61_0222B1B4
ov61_0222B1B4: @ 0x0222B1B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B1C8
	movs r0, #0
	pop {r4, r5, r6, pc}
_0222B1C8:
	movs r2, #0x19
	lsls r2, r2, #4
	ldr r0, [r5]
	adds r1, r4, #0
	adds r2, r5, r2
	bl ov61_0222AFA4
	movs r2, #0x21
	lsls r2, r2, #4
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r5, r2
	bl ov61_0222AE60
	ldr r0, _0222B1F4 @ =0x00000411
	movs r1, #0x3c
	strb r1, [r5, r0]
	ldr r1, _0222B1F8 @ =0x00004E20
	subs r0, #0x29
	str r1, [r5, r0]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222B1F4: .4byte 0x00000411
_0222B1F8: .4byte 0x00004E20
	thumb_func_end ov61_0222B1B4

	thumb_func_start ov61_0222B1FC
ov61_0222B1FC: @ 0x0222B1FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B20E
	movs r0, #0
	pop {r3, r4, r5, pc}
_0222B20E:
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r4, [r5, r0]
	ldr r1, _0222B220 @ =0x00004E21
	adds r0, #0x3c
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222B220: .4byte 0x00004E21
	thumb_func_end ov61_0222B1FC

	thumb_func_start ov61_0222B224
ov61_0222B224: @ 0x0222B224
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B23A
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222B23A:
	movs r0, #0xeb
	lsls r0, r0, #2
	strb r4, [r5, r0]
	movs r2, #0x19
	lsls r2, r2, #4
	ldr r1, [sp, #0x18]
	adds r0, r0, #1
	strb r1, [r5, r0]
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r5, r2
	bl ov61_0222AFA4
	movs r3, #0x51
	lsls r3, r3, #2
	ldr r0, [r5, r3]
	adds r3, #0xcc
	str r0, [sp]
	ldr r0, [r5]
	ldr r2, [sp, #0x18]
	adds r1, r7, #0
	adds r3, r5, r3
	bl ov61_0222AE88
	movs r1, #0x21
	lsls r1, r1, #4
	ldr r0, [r5]
	adds r1, r5, r1
	adds r2, r4, #0
	bl ov61_0222AF88
	ldr r0, _0222B288 @ =0x00000411
	movs r1, #0x3c
	strb r1, [r5, r0]
	ldr r1, _0222B28C @ =0x00005208
	subs r0, #0x29
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B288: .4byte 0x00000411
_0222B28C: .4byte 0x00005208
	thumb_func_end ov61_0222B224

	thumb_func_start ov61_0222B290
ov61_0222B290: @ 0x0222B290
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B2A2
	movs r0, #0
	pop {r3, r4, r5, pc}
_0222B2A2:
	movs r0, #0xeb
	lsls r0, r0, #2
	strb r4, [r5, r0]
	ldr r1, _0222B2B4 @ =0x00005209
	adds r0, #0x3c
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222B2B4: .4byte 0x00005209
	thumb_func_end ov61_0222B290

	thumb_func_start ov61_0222B2B8
ov61_0222B2B8: @ 0x0222B2B8
	push {r4, lr}
	adds r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B2C8
	movs r0, #0
	pop {r4, pc}
_0222B2C8:
	movs r0, #0xfa
	ldr r1, _0222B2D4 @ =0x000055F0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0222B2D4: .4byte 0x000055F0
	thumb_func_end ov61_0222B2B8

	thumb_func_start ov61_0222B2D8
ov61_0222B2D8: @ 0x0222B2D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B2EC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222B2EC:
	ldr r0, [r5]
	bl FUN_02025E5C
	movs r1, #0x66
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r2, #4
	blx FUN_020C4DB0
	movs r2, #0x19
	lsls r2, r2, #4
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r5, r2
	bl ov61_0222AFCC
	movs r0, #0x67
	lsls r0, r0, #2
	movs r6, #0
	adds r7, r5, #0
	adds r1, r0, #4
_0222B316:
	ldr r3, [r4]
	ldr r2, [r4, #4]
	adds r6, r6, #1
	str r3, [r7, r0]
	str r2, [r7, r1]
	adds r4, #8
	adds r7, #8
	cmp r6, #3
	blt _0222B316
	movs r0, #0xfa
	ldr r1, _0222B334 @ =0x000055F1
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B334: .4byte 0x000055F1
	thumb_func_end ov61_0222B2D8

	thumb_func_start ov61_0222B338
ov61_0222B338: @ 0x0222B338
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B34A
	movs r0, #0
	pop {r3, r4, r5, pc}
_0222B34A:
	bl FUN_0202F1D4
	subs r1, r0, #4
	ldr r0, _0222B388 @ =0x00001D4C
	cmp r1, r0
	beq _0222B35A
	bl FUN_02022974
_0222B35A:
	bl FUN_0202F27C
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5]
	bl FUN_02248624
	bl FUN_0202FDE8
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x80
	blx FUN_020C4DB0
	ldr r0, _0222B38C @ =0x00000411
	movs r1, #0x3c
	strb r1, [r5, r0]
	ldr r1, _0222B390 @ =0x000059D8
	subs r0, #0x29
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222B388: .4byte 0x00001D4C
_0222B38C: .4byte 0x00000411
_0222B390: .4byte 0x000059D8
	thumb_func_end ov61_0222B338

	thumb_func_start ov61_0222B394
ov61_0222B394: @ 0x0222B394
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B3AA
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222B3AA:
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	movs r1, #0x19
	lsls r1, r1, #4
	strh r4, [r5, r1]
	adds r0, r1, #2
	strb r6, [r5, r0]
	adds r0, r1, #3
	strb r7, [r5, r0]
	add r0, sp, #8
	ldrb r2, [r0, #0x10]
	adds r0, r1, #4
	strb r2, [r5, r0]
	adds r0, r1, #0
	subs r0, #0x50
	adds r1, #8
	str r0, [r5, r1]
	movs r0, #0x3f
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	ldr r1, _0222B3E8 @ =0x000059D9
	subs r0, #8
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B3E8: .4byte 0x000059D9
	thumb_func_end ov61_0222B394

	thumb_func_start ov61_0222B3EC
ov61_0222B3EC: @ 0x0222B3EC
	push {r4, lr}
	adds r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B3FC
	movs r0, #0
	pop {r4, pc}
_0222B3FC:
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	movs r0, #0x19
	ldr r1, _0222B444 @ =0x0000FFFF
	lsls r0, r0, #4
	strh r1, [r4, r0]
	movs r1, #0xfe
	adds r0, r1, #0
	adds r0, #0x94
	strb r1, [r4, r0]
	movs r1, #0xff
	adds r0, r1, #0
	adds r0, #0x94
	strb r1, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x95
	strb r1, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x41
	adds r1, #0x99
	str r0, [r4, r1]
	movs r0, #0x3f
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _0222B448 @ =0x000059D9
	subs r0, #8
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	nop
_0222B444: .4byte 0x0000FFFF
_0222B448: .4byte 0x000059D9
	thumb_func_end ov61_0222B3EC

	thumb_func_start ov61_0222B44C
ov61_0222B44C: @ 0x0222B44C
	push {r4, lr}
	adds r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B45C
	movs r0, #0
	pop {r4, pc}
_0222B45C:
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	movs r0, #0x19
	ldr r1, _0222B4A0 @ =0x0000FFFF
	lsls r0, r0, #4
	strh r1, [r4, r0]
	movs r1, #0xff
	adds r0, r1, #0
	adds r0, #0x93
	strb r1, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x94
	strb r1, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x95
	strb r1, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x41
	adds r1, #0x99
	str r0, [r4, r1]
	movs r0, #0x3f
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _0222B4A4 @ =0x000059D9
	subs r0, #8
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0222B4A0: .4byte 0x0000FFFF
_0222B4A4: .4byte 0x000059D9
	thumb_func_end ov61_0222B44C

	thumb_func_start ov61_0222B4A8
ov61_0222B4A8: @ 0x0222B4A8
	push {r4, lr}
	adds r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B4B8
	movs r0, #0
	pop {r4, pc}
_0222B4B8:
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	movs r2, #4
	blx FUN_020C4CF4
	movs r1, #5
	lsls r1, r1, #6
	adds r0, r1, #0
	adds r0, #0x50
	str r1, [r4, r0]
	movs r1, #0x3f
	movs r0, #1
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _0222B4E0 @ =0x000059D9
	subs r1, #8
	str r2, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_0222B4E0: .4byte 0x000059D9
	thumb_func_end ov61_0222B4A8

	thumb_func_start ov61_0222B4E4
ov61_0222B4E4: @ 0x0222B4E4
	push {r4, lr}
	adds r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B4F4
	movs r0, #0
	pop {r4, pc}
_0222B4F4:
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	movs r2, #4
	blx FUN_020C4CF4
	movs r1, #5
	lsls r1, r1, #6
	adds r0, r1, #0
	adds r0, #0x50
	str r1, [r4, r0]
	movs r0, #0x3f
	movs r1, #2
	lsls r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _0222B520 @ =0x000059D9
	subs r0, #8
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	nop
_0222B520: .4byte 0x000059D9
	thumb_func_end ov61_0222B4E4

	thumb_func_start ov61_0222B524
ov61_0222B524: @ 0x0222B524
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B538
	movs r0, #0
	pop {r4, r5, r6, pc}
_0222B538:
	movs r1, #0xeb
	lsls r1, r1, #2
	str r4, [r5, r1]
	adds r0, r1, #4
	str r6, [r5, r0]
	ldr r0, _0222B54C @ =0x000059DA
	adds r1, #0x3c
	str r0, [r5, r1]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222B54C: .4byte 0x000059DA
	thumb_func_end ov61_0222B524

	thumb_func_start ov61_0222B550
ov61_0222B550: @ 0x0222B550
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B564
	movs r0, #0
	pop {r4, r5, r6, pc}
_0222B564:
	movs r1, #0xeb
	lsls r1, r1, #2
	str r4, [r5, r1]
	adds r0, r1, #4
	str r6, [r5, r0]
	ldr r0, _0222B578 @ =0x000059DB
	adds r1, #0x3c
	str r0, [r5, r1]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222B578: .4byte 0x000059DB
	thumb_func_end ov61_0222B550

	thumb_func_start ov61_0222B57C
ov61_0222B57C: @ 0x0222B57C
	push {r4, lr}
	movs r1, #0xf1
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _0222B63A
	adds r0, r1, #0
	adds r0, #0x24
	ldr r2, [r4, r0]
	ldr r0, _0222B6CC @ =0x000059DC
	cmp r2, r0
	beq _0222B5E8
	adds r0, r1, #0
	adds r0, #0x4d
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0222B5AE
	adds r0, r1, #0
	adds r0, #0x4d
	ldrb r0, [r4, r0]
	adds r1, #0x4d
	subs r0, r0, #1
	strb r0, [r4, r1]
	b _0222B5E8
_0222B5AE:
	blx ov61_0222DD08
	cmp r0, #9
	bhi _0222B5E8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222B5C2: @ jump table
	.2byte _0222B5E8 - _0222B5C2 - 2 @ case 0
	.2byte _0222B5D6 - _0222B5C2 - 2 @ case 1
	.2byte _0222B5E8 - _0222B5C2 - 2 @ case 2
	.2byte _0222B5E8 - _0222B5C2 - 2 @ case 3
	.2byte _0222B5E8 - _0222B5C2 - 2 @ case 4
	.2byte _0222B5E8 - _0222B5C2 - 2 @ case 5
	.2byte _0222B5E8 - _0222B5C2 - 2 @ case 6
	.2byte _0222B5D6 - _0222B5C2 - 2 @ case 7
	.2byte _0222B5D6 - _0222B5C2 - 2 @ case 8
	.2byte _0222B5D6 - _0222B5C2 - 2 @ case 9
_0222B5D6:
	adds r0, r4, #0
	bl ov61_0222B6D8
	cmp r0, #1
	bne _0222B5E8
	movs r0, #0xfa
	ldr r1, _0222B6CC @ =0x000059DC
	lsls r0, r0, #2
	str r1, [r4, r0]
_0222B5E8:
	adds r0, r4, #0
	bl ov61_0222B860
	ldr r1, _0222B6D0 @ =0x0000040C
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0222B63A
	subs r1, #0xc
	adds r0, r4, #0
	adds r1, r4, r1
	blx r2
	cmp r0, #1
	bne _0222B63A
	ldr r0, _0222B6D0 @ =0x0000040C
	movs r1, #0
	str r1, [r4, r0]
	subs r0, #0xc
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _0222B624
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	adds r1, #0x2c
	adds r1, r4, r1
	blx r2
	movs r0, #1
	movs r1, #0
	lsls r0, r0, #0xa
	str r1, [r4, r0]
_0222B624:
	movs r0, #1
	lsls r0, r0, #0xa
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	movs r0, #0xfb
	ldr r1, _0222B6CC @ =0x000059DC
	lsls r0, r0, #2
	str r1, [r4, r0]
_0222B63A:
	movs r3, #0xef
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	lsls r1, r0, #2
	ldr r0, _0222B6D4 @ =0x0222E480
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _0222B6C6
	adds r1, r3, #0
	adds r3, r3, #4
	ldr r3, [r4, r3]
	adds r1, #0x10
	lsls r3, r3, #2
	ldr r2, [r2, r3]
	adds r0, r4, #0
	adds r1, r4, r1
	blx r2
	cmp r0, #0
	beq _0222B6C6
	cmp r0, #1
	beq _0222B66A
	cmp r0, #2
	beq _0222B6B0
	b _0222B6C6
_0222B66A:
	movs r0, #0xf3
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	movs r0, #0xf
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	movs r2, #0xc
	adds r1, r1, #1
	str r1, [r4, r0]
	adds r0, #0xc
	adds r0, r4, r0
	movs r1, #0
	blx FUN_020C4CF4
	movs r1, #0xef
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	lsls r2, r0, #2
	ldr r0, _0222B6D4 @ =0x0222E480
	ldr r2, [r0, r2]
	adds r0, r1, #4
	ldr r0, [r4, r0]
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _0222B6C6
	movs r2, #0
	adds r0, r1, #4
	str r2, [r4, r0]
	str r2, [r4, r1]
	b _0222B6C6
_0222B6B0:
	movs r0, #0xf3
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	movs r0, #0xf
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r4, r0]
_0222B6C6:
	movs r0, #1
	pop {r4, pc}
	nop
_0222B6CC: .4byte 0x000059DC
_0222B6D0: .4byte 0x0000040C
_0222B6D4: .4byte 0x0222E480
	thumb_func_end ov61_0222B57C

	thumb_func_start ov61_0222B6D8
ov61_0222B6D8: @ 0x0222B6D8
	push {r3, r4, r5, lr}
	movs r3, #0xfa
	adds r5, r0, #0
	lsls r3, r3, #2
	ldr r1, [r5, r3]
	ldr r2, _0222B850 @ =0x000055F0
	movs r4, #0
	cmp r1, r2
	bgt _0222B710
	bge _0222B78A
	ldr r0, _0222B854 @ =0x00005208
	cmp r1, r0
	bgt _0222B708
	bge _0222B760
	ldr r2, _0222B858 @ =0x00004E21
	cmp r1, r2
	bgt _0222B706
	subs r0, r2, #1
	cmp r1, r0
	blt _0222B706
	beq _0222B73C
	cmp r1, r2
	beq _0222B74E
_0222B706:
	b _0222B838
_0222B708:
	adds r0, r0, #1
	cmp r1, r0
	beq _0222B778
	b _0222B838
_0222B710:
	ldr r0, _0222B85C @ =0x000059D8
	cmp r1, r0
	bgt _0222B720
	bge _0222B7A8
	adds r0, r2, #1
	cmp r1, r0
	beq _0222B796
	b _0222B838
_0222B720:
	adds r2, r0, #3
	cmp r1, r2
	bgt _0222B73A
	adds r2, r0, #1
	cmp r1, r2
	blt _0222B73A
	beq _0222B7BA
	adds r2, r0, #2
	cmp r1, r2
	beq _0222B804
	adds r0, r0, #3
	cmp r1, r0
	beq _0222B820
_0222B73A:
	b _0222B838
_0222B73C:
	movs r0, #0x19
	subs r3, #0x34
	lsls r0, r0, #4
	ldr r1, [r5, r3]
	adds r0, r5, r0
	blx ov61_0222DD30
	adds r4, r0, #0
	b _0222B83C
_0222B74E:
	adds r0, r3, #0
	subs r0, #0x3c
	subs r3, #0x34
	ldrh r0, [r5, r0]
	ldr r1, [r5, r3]
	blx ov61_0222DD8C
	adds r4, r0, #0
	b _0222B83C
_0222B760:
	adds r0, r3, #0
	subs r0, #0x3c
	movs r1, #0x19
	subs r3, #0x34
	lsls r1, r1, #4
	ldrb r0, [r5, r0]
	ldr r2, [r5, r3]
	adds r1, r5, r1
	blx ov61_0222DDCC
	adds r4, r0, #0
	b _0222B83C
_0222B778:
	adds r0, r3, #0
	subs r0, #0x3c
	subs r3, #0x34
	ldrb r0, [r5, r0]
	ldr r1, [r5, r3]
	blx ov61_0222DE34
	adds r4, r0, #0
	b _0222B83C
_0222B78A:
	subs r3, #0x34
	ldr r0, [r5, r3]
	blx ov61_0222DE98
	adds r4, r0, #0
	b _0222B83C
_0222B796:
	movs r0, #0x19
	subs r3, #0x34
	lsls r0, r0, #4
	ldr r1, [r5, r3]
	adds r0, r5, r0
	blx ov61_0222DEB8
	adds r4, r0, #0
	b _0222B83C
_0222B7A8:
	movs r0, #0x19
	lsls r0, r0, #4
	subs r3, #0x34
	ldr r0, [r5, r0]
	ldr r1, [r5, r3]
	blx ov61_0222DF08
	adds r4, r0, #0
	b _0222B83C
_0222B7BA:
	adds r0, r3, #0
	adds r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222B7CE
	cmp r0, #1
	beq _0222B7E0
	cmp r0, #2
	beq _0222B7F2
	b _0222B83C
_0222B7CE:
	movs r0, #0x19
	subs r3, #0x34
	lsls r0, r0, #4
	ldr r1, [r5, r3]
	adds r0, r5, r0
	blx ov61_0222DF60
	adds r4, r0, #0
	b _0222B83C
_0222B7E0:
	movs r0, #0x19
	subs r3, #0x34
	lsls r0, r0, #4
	ldr r1, [r5, r3]
	adds r0, r5, r0
	blx ov61_0222DFA8
	adds r4, r0, #0
	b _0222B83C
_0222B7F2:
	movs r0, #0x19
	subs r3, #0x34
	lsls r0, r0, #4
	ldr r1, [r5, r3]
	adds r0, r5, r0
	blx ov61_0222E000
	adds r4, r0, #0
	b _0222B83C
_0222B804:
	adds r0, r3, #0
	adds r1, r3, #0
	subs r0, #0x3c
	subs r1, #0x38
	subs r3, #0x34
	movs r2, #5
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r5, r3]
	lsls r2, r2, #6
	blx ov61_0222E058
	adds r4, r0, #0
	b _0222B83C
_0222B820:
	adds r0, r3, #0
	adds r1, r3, #0
	subs r0, #0x3c
	subs r1, #0x38
	subs r3, #0x34
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r3]
	blx ov61_0222E08C
	adds r4, r0, #0
	b _0222B83C
_0222B838:
	bl FUN_02022974
_0222B83C:
	cmp r4, #1
	bne _0222B84A
	movs r0, #0xfa
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
_0222B84A:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222B850: .4byte 0x000055F0
_0222B854: .4byte 0x00005208
_0222B858: .4byte 0x00004E21
_0222B85C: .4byte 0x000059D8
	thumb_func_end ov61_0222B6D8

	thumb_func_start ov61_0222B860
ov61_0222B860: @ 0x0222B860
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xfb
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0222B910 @ =0x000059DC
	cmp r1, r0
	bne _0222B874
	movs r0, #1
	pop {r4, pc}
_0222B874:
	blx ov61_0222DD08
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #4
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	cmp r2, r0
	beq _0222B90A
	cmp r2, #9
	bhi _0222B900
	adds r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222B898: @ jump table
	.2byte _0222B900 - _0222B898 - 2 @ case 0
	.2byte _0222B900 - _0222B898 - 2 @ case 1
	.2byte _0222B900 - _0222B898 - 2 @ case 2
	.2byte _0222B900 - _0222B898 - 2 @ case 3
	.2byte _0222B900 - _0222B898 - 2 @ case 4
	.2byte _0222B900 - _0222B898 - 2 @ case 5
	.2byte _0222B900 - _0222B898 - 2 @ case 6
	.2byte _0222B8AC - _0222B898 - 2 @ case 7
	.2byte _0222B8D0 - _0222B898 - 2 @ case 8
	.2byte _0222B8DE - _0222B898 - 2 @ case 9
_0222B8AC:
	adds r0, r1, #0
	movs r3, #1
	adds r0, #0x38
	str r3, [r4, r0]
	adds r0, r1, #0
	movs r2, #0
	adds r0, #0x3c
	str r2, [r4, r0]
	adds r0, r1, #0
	movs r2, #7
	adds r0, #0x40
	str r2, [r4, r0]
	adds r1, #0x34
	str r3, [r4, r1]
	ldr r1, _0222B914 @ =ov61_0222B95C
	ldr r0, _0222B918 @ =0x0000040C
	str r1, [r4, r0]
	b _0222B900
_0222B8D0:
	ldr r1, _0222B91C @ =ov61_0222B920
	ldr r0, _0222B918 @ =0x0000040C
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov61_0222B960
	b _0222B900
_0222B8DE:
	adds r0, r1, #0
	movs r2, #0
	adds r0, #0x38
	str r2, [r4, r0]
	adds r1, #0x3c
	str r2, [r4, r1]
	blx ov61_0222DD24
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #1
	subs r1, #0xc
	str r0, [r4, r1]
	ldr r1, _0222B914 @ =ov61_0222B95C
	ldr r0, _0222B918 @ =0x0000040C
	str r1, [r4, r0]
_0222B900:
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
_0222B90A:
	movs r0, #1
	pop {r4, pc}
	nop
_0222B910: .4byte 0x000059DC
_0222B914: .4byte ov61_0222B95C
_0222B918: .4byte 0x0000040C
_0222B91C: .4byte ov61_0222B920
	thumb_func_end ov61_0222B860

	thumb_func_start ov61_0222B920
ov61_0222B920: @ 0x0222B920
	movs r0, #1
	bx lr
	thumb_func_end ov61_0222B920

	thumb_func_start ov61_0222B924
ov61_0222B924: @ 0x0222B924
	movs r0, #1
	bx lr
	thumb_func_end ov61_0222B924

	thumb_func_start ov61_0222B928
ov61_0222B928: @ 0x0222B928
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	blx ov61_0222DE80
	adds r2, r0, #0
	adds r0, r4, #6
	str r0, [sp]
	ldr r1, [r2, #4]
	ldr r0, [r5]
	ldr r2, [r2, #8]
	adds r3, r4, #4
	bl FUN_02248658
	subs r0, r0, #2
	cmp r0, #1
	bhi _0222B94E
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222B94E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov61_0222B928

	thumb_func_start ov61_0222B954
ov61_0222B954: @ 0x0222B954
	movs r0, #1
	bx lr
	thumb_func_end ov61_0222B954

	thumb_func_start ov61_0222B958
ov61_0222B958: @ 0x0222B958
	movs r0, #1
	bx lr
	thumb_func_end ov61_0222B958

	thumb_func_start ov61_0222B95C
ov61_0222B95C: @ 0x0222B95C
	movs r0, #1
	bx lr
	thumb_func_end ov61_0222B95C

	thumb_func_start ov61_0222B960
ov61_0222B960: @ 0x0222B960
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #1
	blx ov61_0222DE80
	adds r4, r0, #0
	blx ov61_0222DE74
	movs r0, #0xfb
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	ldrh r0, [r4]
	cmp r1, r0
	beq _0222B980
	bl FUN_02022974
_0222B980:
	movs r0, #1
	movs r1, #0
	lsls r0, r0, #0xa
	str r1, [r5, r0]
	ldrh r1, [r4]
	ldr r0, _0222BB18 @ =0x00005209
	cmp r1, r0
	bgt _0222B9B2
	bge _0222BA38
	ldr r2, _0222BB1C @ =0x00004E21
	cmp r1, r2
	bgt _0222B9AA
	subs r0, r2, #1
	cmp r1, r0
	blt _0222B9A6
	beq _0222B9E8
	cmp r1, r2
	beq _0222BA04
	b _0222BAEA
_0222B9A6:
	cmp r1, #0
	b _0222BAEA
_0222B9AA:
	subs r0, r0, #1
	cmp r1, r0
	beq _0222BA1C
	b _0222BAEA
_0222B9B2:
	ldr r0, _0222BB20 @ =0x000055F1
	cmp r1, r0
	bgt _0222B9C2
	bge _0222BA68
	subs r0, r0, #1
	cmp r1, r0
	beq _0222BA50
	b _0222BAEA
_0222B9C2:
	ldr r0, _0222BB24 @ =0x000059D8
	cmp r1, r0
	bgt _0222B9CC
	beq _0222BA80
	b _0222BAEA
_0222B9CC:
	adds r2, r0, #3
	cmp r1, r2
	bgt _0222B9E6
	adds r2, r0, #1
	cmp r1, r2
	blt _0222B9E6
	beq _0222BAA4
	adds r2, r0, #2
	cmp r1, r2
	beq _0222BABC
	adds r0, r0, #3
	cmp r1, r0
	beq _0222BAD4
_0222B9E6:
	b _0222BAEA
_0222B9E8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BC4C
	adds r6, r0, #0
	ldr r0, _0222BB28 @ =0x00000154
	ldr r1, [r5, r0]
	ldr r0, _0222BB2C @ =0x00000400
	str r1, [r5, r0]
	bne _0222BAEA
	ldr r1, _0222BB30 @ =ov61_0222B954
	adds r0, #0xc
	str r1, [r5, r0]
	b _0222BAEA
_0222BA04:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BC70
	adds r6, r0, #0
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	movs r0, #1
	lsls r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BA1C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BCD0
	adds r6, r0, #0
	ldr r0, _0222BB34 @ =0x0000015C
	ldr r1, [r5, r0]
	ldr r0, _0222BB2C @ =0x00000400
	str r1, [r5, r0]
	bne _0222BAEA
	ldr r1, _0222BB38 @ =ov61_0222B958
	adds r0, #0xc
	str r1, [r5, r0]
	b _0222BAEA
_0222BA38:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BCF8
	adds r6, r0, #0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	movs r0, #1
	lsls r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BA50:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BD64
	adds r6, r0, #0
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	movs r0, #1
	lsls r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BA68:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BD88
	adds r6, r0, #0
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	movs r0, #1
	lsls r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BA80:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BDC8
	adds r6, r0, #0
	ldr r0, _0222BB3C @ =0x0000016C
	ldr r1, [r5, r0]
	ldr r0, _0222BB2C @ =0x00000400
	str r1, [r5, r0]
	bne _0222BA9C
	ldr r1, _0222BB40 @ =ov61_0222B924
	adds r0, #0xc
	str r1, [r5, r0]
	b _0222BAEA
_0222BA9C:
	ldr r1, _0222BB44 @ =ov61_0222B928
	adds r0, #0xc
	str r1, [r5, r0]
	b _0222BAEA
_0222BAA4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BE00
	adds r6, r0, #0
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	movs r0, #1
	lsls r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BABC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BEB8
	adds r6, r0, #0
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	movs r0, #1
	lsls r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BAD4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222BF24
	adds r6, r0, #0
	movs r0, #0x5e
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	movs r0, #1
	lsls r0, r0, #0xa
	str r1, [r5, r0]
_0222BAEA:
	cmp r6, #0
	bne _0222BB0A
	movs r0, #6
	movs r1, #2
	lsls r0, r0, #6
	str r1, [r5, r0]
	ldrh r2, [r4]
	adds r1, r0, #4
	str r2, [r5, r1]
	adds r1, r0, #0
	ldrh r2, [r4, #2]
	adds r1, #8
	subs r0, r0, #4
	str r2, [r5, r1]
	movs r1, #1
	b _0222BB10
_0222BB0A:
	movs r0, #0x5f
	movs r1, #0
	lsls r0, r0, #2
_0222BB10:
	str r1, [r5, r0]
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0222BB18: .4byte 0x00005209
_0222BB1C: .4byte 0x00004E21
_0222BB20: .4byte 0x000055F1
_0222BB24: .4byte 0x000059D8
_0222BB28: .4byte 0x00000154
_0222BB2C: .4byte 0x00000400
_0222BB30: .4byte ov61_0222B954
_0222BB34: .4byte 0x0000015C
_0222BB38: .4byte ov61_0222B958
_0222BB3C: .4byte 0x0000016C
_0222BB40: .4byte ov61_0222B924
_0222BB44: .4byte ov61_0222B928
	thumb_func_end ov61_0222B960

	thumb_func_start ov61_0222BB48
ov61_0222BB48: @ 0x0222BB48
	movs r2, #0x5f
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, [r0]
	bx lr
	thumb_func_end ov61_0222BB48

	thumb_func_start ov61_0222BB54
ov61_0222BB54: @ 0x0222BB54
	push {r3, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	ldr r2, [r2, #4]
	blx r2
	pop {r3, pc}
	thumb_func_end ov61_0222BB54

	thumb_func_start ov61_0222BB60
ov61_0222BB60: @ 0x0222BB60
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	adds r5, r1, #0
	mvns r0, r0
	cmp r5, r0
	bne _0222BB72
	movs r5, #0xb
_0222BB72:
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xfe
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	movs r3, #5
	bl FUN_0200B60C
	movs r0, #0xfd
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r5, #0
	bl FUN_0200B1EC
	movs r1, #0xfe
	adds r5, r0, #0
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	adds r2, r5, #0
	bl FUN_0200C388
	adds r0, r5, #0
	bl FUN_020237BC
	movs r1, #0xff
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov61_0222BB54
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov61_0222BB60

	thumb_func_start ov61_0222BBBC
ov61_0222BBBC: @ 0x0222BBBC
	push {r4, lr}
	adds r4, r0, #0
	bl ov61_0222BBE8
	cmp r0, #0
	bne _0222BBE0
	movs r0, #0xfa
	lsls r0, r0, #2
	ldr r2, [r4, r0]
	ldr r1, _0222BBE4 @ =0x000059DC
	cmp r2, r1
	bne _0222BBE0
	adds r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, r1
	bne _0222BBE0
	movs r0, #1
	pop {r4, pc}
_0222BBE0:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0222BBE4: .4byte 0x000059DC
	thumb_func_end ov61_0222BBBC

	thumb_func_start ov61_0222BBE8
ov61_0222BBE8: @ 0x0222BBE8
	movs r1, #0xef
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov61_0222BBE8

	thumb_func_start ov61_0222BBF0
ov61_0222BBF0: @ 0x0222BBF0
	push {r4, r5, r6, lr}
	movs r1, #2
	lsls r1, r1, #0xc
	bl FUN_02018144
	adds r5, r0, #0
	movs r6, #2
	lsls r6, r6, #0xc
	movs r0, #0
	adds r1, r5, #0
	adds r2, r5, r6
	movs r3, #1
	blx FUN_020C33B4
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	blx FUN_020C304C
	adds r2, r5, r6
	adds r4, #0x1f
	movs r0, #0x1f
	bics r4, r0
	adds r2, #0x1f
	bics r2, r0
	movs r0, #0
	adds r1, r4, #0
	blx FUN_020C3470
	adds r1, r0, #0
	ldr r0, _0222BC3C @ =0x0222E760
	str r1, [r0]
	movs r0, #0
	blx FUN_020C3384
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_0222BC3C: .4byte 0x0222E760
	thumb_func_end ov61_0222BBF0

	thumb_func_start ov61_0222BC40
ov61_0222BC40: @ 0x0222BC40
	ldr r3, _0222BC48 @ =FUN_020C345C
	movs r0, #0
	bx r3
	nop
_0222BC48: .4byte FUN_020C345C
	thumb_func_end ov61_0222BC40

	thumb_func_start ov61_0222BC4C
ov61_0222BC4C: @ 0x0222BC4C
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #5
	bhi _0222BC6E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222BC60: @ jump table
	.2byte _0222BC6C - _0222BC60 - 2 @ case 0
	.2byte _0222BC6E - _0222BC60 - 2 @ case 1
	.2byte _0222BC6E - _0222BC60 - 2 @ case 2
	.2byte _0222BC6E - _0222BC60 - 2 @ case 3
	.2byte _0222BC6E - _0222BC60 - 2 @ case 4
	.2byte _0222BC6E - _0222BC60 - 2 @ case 5
_0222BC6C:
	movs r0, #1
_0222BC6E:
	bx lr
	thumb_func_end ov61_0222BC4C

	thumb_func_start ov61_0222BC70
ov61_0222BC70: @ 0x0222BC70
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #3
	bhi _0222BC8E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222BC84: @ jump table
	.2byte _0222BC8C - _0222BC84 - 2 @ case 0
	.2byte _0222BC8E - _0222BC84 - 2 @ case 1
	.2byte _0222BC8E - _0222BC84 - 2 @ case 2
	.2byte _0222BC8E - _0222BC84 - 2 @ case 3
_0222BC8C:
	movs r0, #1
_0222BC8E:
	bx lr
	thumb_func_end ov61_0222BC70

	thumb_func_start ov61_0222BC90
ov61_0222BC90: @ 0x0222BC90
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	blx ov61_0222DE80
	adds r1, r0, #4
	ldr r0, [r0, #4]
	cmp r0, r4
	ble _0222BCA4
	adds r0, r4, #0
_0222BCA4:
	adds r3, r1, #4
	movs r2, #0
	cmp r0, #0
	ble _0222BCBC
	adds r6, r5, #0
_0222BCAE:
	adds r1, r3, #0
	adds r1, #0xc
	adds r2, r2, #1
	stm r6!, {r1}
	adds r3, #0xec
	cmp r2, r0
	blt _0222BCAE
_0222BCBC:
	cmp r2, r4
	bge _0222BCCE
	lsls r1, r2, #2
	adds r3, r5, r1
	movs r1, #0
_0222BCC6:
	adds r2, r2, #1
	stm r3!, {r1}
	cmp r2, r4
	blt _0222BCC6
_0222BCCE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov61_0222BC90

	thumb_func_start ov61_0222BCD0
ov61_0222BCD0: @ 0x0222BCD0
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #6
	bhi _0222BCF4
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222BCE4: @ jump table
	.2byte _0222BCF2 - _0222BCE4 - 2 @ case 0
	.2byte _0222BCF4 - _0222BCE4 - 2 @ case 1
	.2byte _0222BCF4 - _0222BCE4 - 2 @ case 2
	.2byte _0222BCF4 - _0222BCE4 - 2 @ case 3
	.2byte _0222BCF4 - _0222BCE4 - 2 @ case 4
	.2byte _0222BCF4 - _0222BCE4 - 2 @ case 5
	.2byte _0222BCF4 - _0222BCE4 - 2 @ case 6
_0222BCF2:
	movs r0, #1
_0222BCF4:
	bx lr
	.align 2, 0
	thumb_func_end ov61_0222BCD0

	thumb_func_start ov61_0222BCF8
ov61_0222BCF8: @ 0x0222BCF8
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #3
	bhi _0222BD16
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222BD0C: @ jump table
	.2byte _0222BD14 - _0222BD0C - 2 @ case 0
	.2byte _0222BD16 - _0222BD0C - 2 @ case 1
	.2byte _0222BD16 - _0222BD0C - 2 @ case 2
	.2byte _0222BD16 - _0222BD0C - 2 @ case 3
_0222BD14:
	movs r0, #1
_0222BD16:
	bx lr
	thumb_func_end ov61_0222BCF8

	thumb_func_start ov61_0222BD18
ov61_0222BD18: @ 0x0222BD18
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	blx ov61_0222DE80
	ldr r4, [r0, #4]
	adds r7, r0, #4
	cmp r4, r5
	ble _0222BD30
	adds r4, r5, #0
	bl FUN_02022974
_0222BD30:
	adds r3, r7, #4
	movs r2, #0
	cmp r4, #0
	ble _0222BD4C
	movs r0, #0x8b
	adds r7, r6, #0
	lsls r0, r0, #2
_0222BD3E:
	adds r1, r3, #0
	adds r1, #0x10
	adds r2, r2, #1
	stm r7!, {r1}
	adds r3, r3, r0
	cmp r2, r4
	blt _0222BD3E
_0222BD4C:
	cmp r2, r5
	bge _0222BD5E
	lsls r0, r2, #2
	adds r1, r6, r0
	movs r0, #0
_0222BD56:
	adds r2, r2, #1
	stm r1!, {r0}
	cmp r2, r5
	blt _0222BD56
_0222BD5E:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov61_0222BD18

	thumb_func_start ov61_0222BD64
ov61_0222BD64: @ 0x0222BD64
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #0
	beq _0222BD74
	cmp r1, #1
	beq _0222BD76
	cmp r1, #2
	bx lr
_0222BD74:
	movs r0, #1
_0222BD76:
	bx lr
	thumb_func_end ov61_0222BD64

	thumb_func_start ov61_0222BD78
ov61_0222BD78: @ 0x0222BD78
	push {r4, lr}
	adds r4, r1, #0
	blx ov61_0222DE80
	adds r0, r0, #4
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov61_0222BD78

	thumb_func_start ov61_0222BD88
ov61_0222BD88: @ 0x0222BD88
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #5
	bhi _0222BDAA
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222BD9C: @ jump table
	.2byte _0222BDA8 - _0222BD9C - 2 @ case 0
	.2byte _0222BDAA - _0222BD9C - 2 @ case 1
	.2byte _0222BDAA - _0222BD9C - 2 @ case 2
	.2byte _0222BDAA - _0222BD9C - 2 @ case 3
	.2byte _0222BDAA - _0222BD9C - 2 @ case 4
	.2byte _0222BDAA - _0222BD9C - 2 @ case 5
_0222BDA8:
	movs r0, #1
_0222BDAA:
	bx lr
	thumb_func_end ov61_0222BD88

	thumb_func_start ov61_0222BDAC
ov61_0222BDAC: @ 0x0222BDAC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	blx ov61_0222DE80
	adds r1, r0, #4
	ldr r0, _0222BDC4 @ =0x00000558
	str r1, [r5]
	adds r0, r1, r0
	str r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_0222BDC4: .4byte 0x00000558
	thumb_func_end ov61_0222BDAC

	thumb_func_start ov61_0222BDC8
ov61_0222BDC8: @ 0x0222BDC8
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #7
	bhi _0222BDEE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222BDDC: @ jump table
	.2byte _0222BDEC - _0222BDDC - 2 @ case 0
	.2byte _0222BDEE - _0222BDDC - 2 @ case 1
	.2byte _0222BDEE - _0222BDDC - 2 @ case 2
	.2byte _0222BDEE - _0222BDDC - 2 @ case 3
	.2byte _0222BDEE - _0222BDDC - 2 @ case 4
	.2byte _0222BDEE - _0222BDDC - 2 @ case 5
	.2byte _0222BDEE - _0222BDDC - 2 @ case 6
	.2byte _0222BDEE - _0222BDDC - 2 @ case 7
_0222BDEC:
	movs r0, #1
_0222BDEE:
	bx lr
	thumb_func_end ov61_0222BDC8

	thumb_func_start ov61_0222BDF0
ov61_0222BDF0: @ 0x0222BDF0
	push {r3, lr}
	blx ov61_0222DE80
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	adds r0, r2, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov61_0222BDF0

	thumb_func_start ov61_0222BE00
ov61_0222BE00: @ 0x0222BE00
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #3
	bhi _0222BE1E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222BE14: @ jump table
	.2byte _0222BE1C - _0222BE14 - 2 @ case 0
	.2byte _0222BE1E - _0222BE14 - 2 @ case 1
	.2byte _0222BE1E - _0222BE14 - 2 @ case 2
	.2byte _0222BE1E - _0222BE14 - 2 @ case 3
_0222BE1C:
	movs r0, #1
_0222BE1E:
	bx lr
	thumb_func_end ov61_0222BE00

	thumb_func_start ov61_0222BE20
ov61_0222BE20: @ 0x0222BE20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	blx ov61_0222DE80
	ldr r1, [r0, #4]
	adds r4, r0, #4
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	ble _0222BE40
	str r0, [sp, #0xc]
	bl FUN_02022974
_0222BE40:
	ldr r0, [sp, #0xc]
	adds r5, r4, #4
	movs r6, #0
	cmp r0, #0
	ble _0222BE9A
	ldr r4, [sp, #4]
_0222BE4C:
	adds r2, r5, #0
	adds r2, #0xc
	adds r3, r2, #0
	str r2, [r4]
	adds r3, #0xd8
	ldr r3, [r3]
	ldr r0, [r5, #8]
	mov ip, r3
	adds r3, r2, #0
	adds r3, #0xdc
	ldr r3, [r3]
	adds r7, r0, #0
	eors r7, r3
	ldr r1, [r5, #4]
	mov r3, ip
	eors r3, r1
	orrs r3, r7
	beq _0222BE8E
	adds r3, r2, #0
	adds r3, #0xd8
	str r1, [r3]
	adds r2, #0xdc
	str r0, [r2]
	ldr r0, [sp]
	ldr r1, [r4]
	ldr r0, [r0]
	adds r1, #0x80
	movs r2, #0x58
	bl FUN_0202486C
	ldr r1, [r4]
	adds r1, #0xe0
	strh r0, [r1]
_0222BE8E:
	ldr r0, [sp, #0xc]
	adds r6, r6, #1
	adds r5, #0xf0
	adds r4, r4, #4
	cmp r6, r0
	blt _0222BE4C
_0222BE9A:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _0222BEB2
	ldr r0, [sp, #4]
	lsls r1, r6, #2
	adds r2, r0, r1
	movs r1, #0
_0222BEA8:
	ldr r0, [sp, #8]
	adds r6, r6, #1
	stm r2!, {r1}
	cmp r6, r0
	blt _0222BEA8
_0222BEB2:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov61_0222BE20

	thumb_func_start ov61_0222BEB8
ov61_0222BEB8: @ 0x0222BEB8
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #3
	bhi _0222BED6
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222BECC: @ jump table
	.2byte _0222BED4 - _0222BECC - 2 @ case 0
	.2byte _0222BED6 - _0222BECC - 2 @ case 1
	.2byte _0222BED6 - _0222BECC - 2 @ case 2
	.2byte _0222BED6 - _0222BECC - 2 @ case 3
_0222BED4:
	movs r0, #1
_0222BED6:
	bx lr
	thumb_func_end ov61_0222BEB8

	thumb_func_start ov61_0222BED8
ov61_0222BED8: @ 0x0222BED8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	blx ov61_0222DE80
	adds r4, r0, #0
	adds r0, r4, #4
	adds r0, #0xc
	str r0, [r5]
	adds r0, r4, #4
	adds r0, #0xe4
	ldr r1, [r0]
	adds r0, r4, #4
	adds r0, #0xe8
	ldr r3, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r0, [r0]
	eors r1, r3
	eors r0, r2
	orrs r0, r1
	beq _0222BF20
	adds r0, r4, #4
	adds r0, #0xe4
	str r3, [r0]
	adds r0, r4, #4
	adds r0, #0xe8
	str r2, [r0]
	ldr r1, [r5]
	ldr r0, [r6]
	adds r1, #0x80
	movs r2, #0x58
	bl FUN_0202486C
	ldr r1, [r5]
	adds r1, #0xe0
	strh r0, [r1]
_0222BF20:
	ldr r0, [r4, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov61_0222BED8

	thumb_func_start ov61_0222BF24
ov61_0222BF24: @ 0x0222BF24
	ldrh r1, [r1, #2]
	movs r0, #0
	cmp r1, #3
	bhi _0222BF42
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222BF38: @ jump table
	.2byte _0222BF40 - _0222BF38 - 2 @ case 0
	.2byte _0222BF42 - _0222BF38 - 2 @ case 1
	.2byte _0222BF42 - _0222BF38 - 2 @ case 2
	.2byte _0222BF42 - _0222BF38 - 2 @ case 3
_0222BF40:
	movs r0, #1
_0222BF42:
	bx lr
	thumb_func_end ov61_0222BF24

	thumb_func_start ov61_0222BF44
ov61_0222BF44: @ 0x0222BF44
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r1, #1
	lsls r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _0222C0D8 @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0222C0DC @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _0222C0E0 @ =0xFFFF1FFF
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
	movs r2, #5
	movs r0, #3
	movs r1, #0x75
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0x3d
	adds r0, r4, #0
	lsls r1, r1, #4
	movs r2, #0x75
	bl FUN_0200681C
	movs r2, #0x3d
	movs r1, #0
	lsls r2, r2, #4
	adds r5, r0, #0
	blx FUN_020C4CF4
	adds r0, r4, #0
	bl FUN_02006840
	str r0, [r5]
	movs r0, #0x75
	bl FUN_02018340
	str r0, [r5, #4]
	movs r0, #0x40
	movs r1, #0x75
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	ldr r0, [r5, #4]
	bl ov61_0222C224
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r0, #0xb
	movs r1, #0x40
	movs r2, #0x75
	bl FUN_0200B368
	str r0, [r5, #0x20]
	ldr r2, _0222C0E4 @ =0x0000029F
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x75
	bl FUN_0200B144
	str r0, [r5, #0x24]
	ldr r2, _0222C0E8 @ =0x000002A2
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x75
	bl FUN_0200B144
	str r0, [r5, #0x28]
	ldr r2, _0222C0EC @ =0x000002B7
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x75
	bl FUN_0200B144
	str r0, [r5, #0x2c]
	movs r0, #0xb4
	movs r1, #0x75
	bl FUN_02023790
	str r0, [r5, #0x34]
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x75
	bl FUN_02023790
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x24]
	movs r1, #0x1f
	bl FUN_0200B1EC
	str r0, [r5, #0x38]
	adds r0, r5, #0
	bl ov61_0222C3B0
	adds r0, r5, #0
	bl ov61_0222C664
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x75
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, _0222C0F0 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	ldr r0, _0222C0F4 @ =ov61_0222C1FC
	adds r1, r5, #0
	bl FUN_02017798
	ldr r1, [r5]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0222C0BA
	bl FUN_02039734
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #8
	bl ov61_0222C920
	b _0222C0CC
_0222C0BA:
	ldr r0, [r1]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0222C0C8
	movs r0, #1
	str r0, [r5, #8]
	b _0222C0CC
_0222C0C8:
	movs r0, #0
	str r0, [r5, #8]
_0222C0CC:
	ldr r0, [r5]
	movs r1, #0
	str r1, [r0, #0x7c]
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0222C0D8: .4byte 0xFFFFE0FF
_0222C0DC: .4byte 0x04001000
_0222C0E0: .4byte 0xFFFF1FFF
_0222C0E4: .4byte 0x0000029F
_0222C0E8: .4byte 0x000002A2
_0222C0EC: .4byte 0x000002B7
_0222C0F0: .4byte 0x021BF6DC
_0222C0F4: .4byte ov61_0222C1FC
	thumb_func_end ov61_0222BF44

	thumb_func_start ov61_0222C0F8
ov61_0222C0F8: @ 0x0222C0F8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0
	beq _0222C112
	cmp r1, #1
	beq _0222C120
	cmp r1, #2
	beq _0222C14C
	b _0222C158
_0222C112:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0222C158
	movs r0, #1
	str r0, [r5]
	b _0222C158
_0222C120:
	ldr r6, [r4, #8]
	ldr r1, _0222C15C @ =0x0222E600
	lsls r2, r6, #2
	ldr r1, [r1, r2]
	blx r1
	ldr r1, [r4, #8]
	cmp r6, r1
	beq _0222C142
	adds r1, r4, #0
	movs r2, #0
	adds r1, #0x90
	str r2, [r1]
	adds r1, r4, #0
	adds r1, #0x98
	str r2, [r1]
	adds r4, #0x94
	str r2, [r4]
_0222C142:
	cmp r0, #1
	bne _0222C158
	movs r0, #2
	str r0, [r5]
	b _0222C158
_0222C14C:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0222C158
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222C158:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222C15C: .4byte 0x0222E600
	thumb_func_end ov61_0222C0F8

	thumb_func_start ov61_0222C160
ov61_0222C160: @ 0x0222C160
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, #0xa4
	ldr r0, [r0]
	cmp r0, #0
	beq _0222C184
	bl FUN_0200DA58
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xa4
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa8
	str r1, [r0]
_0222C184:
	ldr r0, [r4, #0x2c]
	bl FUN_0200B190
	ldr r0, [r4, #0x28]
	bl FUN_0200B190
	ldr r0, [r4, #0x24]
	bl FUN_0200B190
	ldr r0, [r4, #0x20]
	bl FUN_0200B3F0
	ldr r0, [r4, #0x38]
	bl FUN_020237BC
	ldr r0, [r4, #0x3c]
	bl FUN_020237BC
	ldr r0, [r4, #0x34]
	bl FUN_020237BC
	adds r0, r4, #0
	bl ov61_0222C70C
	ldr r0, [r4, #4]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	bl ov61_0222C38C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201DC3C
	bl FUN_0201E530
	movs r0, #0
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	bl FUN_02039794
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x75
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov61_0222C160

	thumb_func_start ov61_0222C1FC
ov61_0222C1FC: @ 0x0222C1FC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r0, [r4, #4]
	bl FUN_0201C2B8
	ldr r3, _0222C21C @ =0x027E0000
	ldr r1, _0222C220 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_0222C21C: .4byte 0x027E0000
_0222C220: .4byte 0x00003FF8
	thumb_func_end ov61_0222C1FC

	thumb_func_start ov61_0222C224
ov61_0222C224: @ 0x0222C224
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	adds r4, r0, #0
	bl FUN_0201FF00
	bl FUN_0201FF68
	ldr r5, _0222C37C @ =0x0222E4B8
	add r3, sp, #0x80
	movs r2, #5
_0222C238:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222C238
	add r0, sp, #0x80
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
	ldr r5, _0222C380 @ =0x0222E4A8
	add r3, sp, #0x70
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0222C384 @ =0x0222E4E0
	add r3, sp, #0x38
	movs r2, #7
_0222C298:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222C298
	movs r1, #0
	adds r0, r4, #0
	add r2, sp, #0x38
	adds r3, r1, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019184
	movs r1, #0
	adds r0, r4, #0
	movs r2, #3
	adds r3, r1, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #1
	add r2, sp, #0x54
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	ldr r5, _0222C388 @ =0x0222E518
	add r3, sp, #0
	movs r2, #7
_0222C2FE:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222C2FE
	adds r0, r4, #0
	movs r1, #4
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #4
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #5
	add r2, sp, #0x1c
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #5
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x75
	bl FUN_02019690
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x75
	bl FUN_02019690
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	nop
_0222C37C: .4byte 0x0222E4B8
_0222C380: .4byte 0x0222E4A8
_0222C384: .4byte 0x0222E4E0
_0222C388: .4byte 0x0222E518
	thumb_func_end ov61_0222C224

	thumb_func_start ov61_0222C38C
ov61_0222C38C: @ 0x0222C38C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
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
	pop {r4, pc}
	thumb_func_end ov61_0222C38C

	thumb_func_start ov61_0222C3B0
ov61_0222C3B0: @ 0x0222C3B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	ldr r4, [r0, #4]
	movs r0, #0x5c
	movs r1, #0x75
	bl FUN_02006C24
	movs r2, #0
	str r2, [sp]
	movs r1, #0x75
	str r1, [sp, #4]
	movs r1, #3
	adds r3, r2, #0
	str r0, [sp, #0x2c]
	bl FUN_02007130
	movs r3, #0
	str r3, [sp]
	movs r0, #0x75
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	movs r1, #3
	movs r2, #4
	bl FUN_02007130
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x75
	bl FUN_02002E98
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x75
	bl FUN_02002E98
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_02025E44
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x75
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200DD0C
	movs r1, #0
	str r1, [sp]
	movs r0, #0x75
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DAA4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x75
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #2
	adds r2, r4, #0
	movs r3, #1
	bl FUN_020070E8
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x75
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #5
	adds r2, r4, #0
	movs r3, #1
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x75
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #0xa
	adds r2, r4, #0
	movs r3, #5
	bl FUN_020070E8
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x75
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #0xb
	adds r2, r4, #0
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	ldr r0, [sp, #0x10]
	movs r2, #0xcb
	adds r0, #0xa4
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	ldr r0, [sp, #0x2c]
	movs r1, #4
	add r2, sp, #0x38
	movs r3, #0x75
	bl FUN_020071EC
	adds r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	adds r1, #0xac
	movs r2, #0x80
	blx FUN_020C4B18
	ldr r0, [sp, #0x38]
	movs r2, #0x4b
	ldr r1, [sp, #0x10]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020C4B18
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	movs r1, #0x4b
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, #0xac
	str r0, [sp, #0x14]
_0222C506:
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	lsls r1, r0, #5
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x30]
_0222C518:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _0222C522
	bl FUN_02022974
_0222C522:
	ldr r0, [sp, #0x30]
	movs r7, #1
	adds r6, r0, #2
	ldr r0, [sp, #0x18]
	adds r4, r0, #2
	ldr r0, [sp, #0x14]
	adds r5, r0, #2
	ldr r0, [sp, #0x20]
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
_0222C53A:
	adds r0, r6, #0
	adds r0, #0xac
	ldrh r0, [r0]
	ldr r3, [sp, #0x34]
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	bl FUN_0200393C
	adds r7, r7, #1
	adds r6, r6, #2
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r7, #0x10
	blt _0222C53A
	ldr r0, [sp, #0x18]
	adds r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _0222C586
	movs r0, #3
	ldr r1, [sp, #0x20]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0222C518
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x1c]
	b _0222C518
_0222C586:
	ldr r0, [sp, #0x14]
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _0222C506
	movs r1, #0x4b
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x2a
	lsls r1, r1, #4
	blx FUN_020C2C54
	ldr r0, [sp, #0x10]
	movs r1, #1
	adds r0, #0xa8
	str r1, [r0]
	ldr r1, [sp, #0x10]
	ldr r0, _0222C5CC @ =ov61_0222C5D0
	adds r1, #0xa4
	movs r2, #0x14
	bl FUN_0200DA04
	ldr r1, [sp, #0x10]
	adds r1, #0xa4
	str r0, [r1]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x10]
	bl FUN_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222C5CC: .4byte ov61_0222C5D0
	thumb_func_end ov61_0222C3B0

	thumb_func_start ov61_0222C5D0
ov61_0222C5D0: @ 0x0222C5D0
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0222C658
	ldr r0, _0222C65C @ =0x0000032B
	movs r1, #1
	ldrb r2, [r4, r0]
	eors r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _0222C658
	subs r0, r0, #3
	ldrsh r0, [r4, r0]
	adds r1, r4, #0
	adds r1, #0x88
	lsls r0, r0, #5
	adds r0, r1, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C00B4
	movs r0, #0xca
	lsls r0, r0, #2
	ldrsh r0, [r4, r0]
	adds r1, r4, #0
	adds r1, #0x88
	lsls r0, r0, #5
	adds r0, r1, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C0108
	ldr r0, _0222C660 @ =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _0222C63C
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	adds r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _0222C658
	movs r2, #0x13
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	movs r1, #1
	eors r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_0222C63C:
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	subs r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0222C658
	movs r2, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eors r1, r2
	strb r1, [r4, r0]
_0222C658:
	pop {r4, pc}
	nop
_0222C65C: .4byte 0x0000032B
_0222C660: .4byte 0x0000032A
	thumb_func_end ov61_0222C5D0

	thumb_func_start ov61_0222C664
ov61_0222C664: @ 0x0222C664
	push {r3, r4, lr}
	sub sp, #0x14
	movs r3, #4
	adds r4, r0, #0
	str r3, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x64
	movs r2, #0
	bl FUN_0201A7E8
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #1
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x81
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x54
	movs r2, #0
	movs r3, #4
	bl FUN_0201A7E8
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	bl FUN_0201ADA4
	movs r3, #1
	ldr r0, _0222C708 @ =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	ldr r1, [r4, #0x38]
	adds r0, #0x54
	movs r2, #0
	bl ov61_0222C760
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x44
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	adds r4, #0x44
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0222C708: .4byte 0x000F0E00
	thumb_func_end ov61_0222C664

	thumb_func_start ov61_0222C70C
ov61_0222C70C: @ 0x0222C70C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x44
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x54
	bl FUN_0201A8FC
	adds r4, #0x64
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	thumb_func_end ov61_0222C70C

	thumb_func_start ov61_0222C728
ov61_0222C728: @ 0x0222C728
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	beq _0222C736
	cmp r3, #2
	beq _0222C74C
	b _0222C75A
_0222C736:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r2, r0, #1
	b _0222C75A
_0222C74C:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r2, r1, r0
_0222C75A:
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov61_0222C728

	thumb_func_start ov61_0222C760
ov61_0222C760: @ 0x0222C760
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r3, [sp, #0x24]
	adds r5, r0, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r6, r1, #0
	bl ov61_0222C728
	adds r3, r0, #0
	str r4, [sp]
	movs r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov61_0222C760

	thumb_func_start ov61_0222C794
ov61_0222C794: @ 0x0222C794
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	adds r6, r1, #0
	lsls r0, r0, #8
	movs r1, #0x75
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [r5, #0x2c]
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x3c]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DC48
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x3c]
	adds r0, #0x64
	movs r1, #1
	bl FUN_0201D738
	movs r0, #0xff
	str r0, [r5, #0x40]
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov61_0222C794

	thumb_func_start ov61_0222C7F8
ov61_0222C7F8: @ 0x0222C7F8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	mvns r0, r0
	cmp r4, r0
	bne _0222C80A
	movs r4, #0xb
_0222C80A:
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	movs r1, #0
	movs r3, #5
	bl FUN_0200B60C
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov61_0222C794
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov61_0222C7F8

	thumb_func_start ov61_0222C834
ov61_0222C834: @ 0x0222C834
	push {r3, lr}
	cmp r0, #0xff
	beq _0222C846
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0222C84A
_0222C846:
	movs r0, #0
	pop {r3, pc}
_0222C84A:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov61_0222C834

	thumb_func_start ov61_0222C850
ov61_0222C850: @ 0x0222C850
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _0222C86A
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #1
	bl FUN_0200E7FC
	adds r4, #0x88
	str r0, [r4]
_0222C86A:
	pop {r4, pc}
	thumb_func_end ov61_0222C850

	thumb_func_start ov61_0222C86C
ov61_0222C86C: @ 0x0222C86C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _0222C882
	bl FUN_0200EBA0
	movs r0, #0
	adds r4, #0x88
	str r0, [r4]
_0222C882:
	pop {r4, pc}
	thumb_func_end ov61_0222C86C

	thumb_func_start ov61_0222C884
ov61_0222C884: @ 0x0222C884
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _0222C8B4 @ =0x0222E4A0
	add r4, sp, #4
	ldrh r6, [r5]
	add r3, sp, #4
	strh r6, [r4]
	ldrh r6, [r5, #2]
	strh r6, [r4, #2]
	ldrh r6, [r5, #4]
	ldrh r5, [r5, #6]
	strh r6, [r4, #4]
	strh r5, [r4, #6]
	strb r1, [r4, #2]
	strh r2, [r4, #6]
	movs r1, #0x75
	str r1, [sp]
	adds r1, r3, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_02002100
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222C8B4: .4byte 0x0222E4A0
	thumb_func_end ov61_0222C884

	thumb_func_start ov61_0222C8B8
ov61_0222C8B8: @ 0x0222C8B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x34]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200E060
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x34]
	adds r0, #0x44
	movs r1, #1
	bl FUN_0201D738
	str r0, [r5, #0x40]
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x8c
	str r1, [r0]
	cmp r4, #0xff
	beq _0222C918
	cmp r4, #0
	bne _0222C91C
_0222C918:
	movs r0, #0xff
	str r0, [r5, #0x40]
_0222C91C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov61_0222C8B8

	thumb_func_start ov61_0222C920
ov61_0222C920: @ 0x0222C920
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov61_0222C920

	thumb_func_start ov61_0222C928
ov61_0222C928: @ 0x0222C928
	push {r3, lr}
	bl FUN_021D1F3C
	cmp r0, #0xb
	bhi _0222C95A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222C93E: @ jump table
	.2byte _0222C95A - _0222C93E - 2 @ case 0
	.2byte _0222C956 - _0222C93E - 2 @ case 1
	.2byte _0222C95A - _0222C93E - 2 @ case 2
	.2byte _0222C95A - _0222C93E - 2 @ case 3
	.2byte _0222C956 - _0222C93E - 2 @ case 4
	.2byte _0222C956 - _0222C93E - 2 @ case 5
	.2byte _0222C956 - _0222C93E - 2 @ case 6
	.2byte _0222C956 - _0222C93E - 2 @ case 7
	.2byte _0222C956 - _0222C93E - 2 @ case 8
	.2byte _0222C956 - _0222C93E - 2 @ case 9
	.2byte _0222C956 - _0222C93E - 2 @ case 10
	.2byte _0222C956 - _0222C93E - 2 @ case 11
_0222C956:
	movs r0, #1
	pop {r3, pc}
_0222C95A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov61_0222C928

	thumb_func_start ov61_0222C960
ov61_0222C960: @ 0x0222C960
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #1
	bne _0222C976
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0222C976:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #4
	bhi _0222CA14
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222C98C: @ jump table
	.2byte _0222C996 - _0222C98C - 2 @ case 0
	.2byte _0222C9A4 - _0222C98C - 2 @ case 1
	.2byte _0222C9C2 - _0222C98C - 2 @ case 2
	.2byte _0222C9E2 - _0222C98C - 2 @ case 3
	.2byte _0222CA10 - _0222C98C - 2 @ case 4
_0222C996:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CA14
_0222C9A4:
	ldr r0, _0222CA1C @ =0x00000F0F
	movs r2, #0x11
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	adds r0, r4, #0
	movs r3, #1
	bl ov61_0222C8B8
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CA14
_0222C9C2:
	movs r2, #0x8d
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	bl ov61_0222C884
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CA14
_0222C9E2:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #0x75
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0222CA14
	subs r1, r1, #1
	cmp r0, r1
	bne _0222CA02
	movs r0, #8
	str r0, [r4, #8]
	b _0222CA14
_0222CA02:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CA14
_0222CA10:
	movs r0, #1
	str r0, [r4, #8]
_0222CA14:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0222CA1C: .4byte 0x00000F0F
	thumb_func_end ov61_0222C960

	thumb_func_start ov61_0222CA20
ov61_0222CA20: @ 0x0222CA20
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _0222CA38
	cmp r0, #1
	beq _0222CA6A
	cmp r0, #2
	beq _0222CA82
	b _0222CA9E
_0222CA38:
	ldr r0, [r4]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_02038438
	bl FUN_02039734
	ldr r0, _0222CAA4 @ =0x00000F0F
	movs r2, #1
	str r0, [sp]
	ldr r1, [r4, #0x28]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov61_0222C8B8
	adds r0, r4, #0
	bl ov61_0222C850
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CA9E
_0222CA6A:
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #0
	bne _0222CA9E
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CA9E
_0222CA82:
	ldr r0, [r4]
	movs r1, #2
	adds r0, #0x14
	movs r2, #1
	movs r3, #0x14
	blx FUN_021D78C8
	movs r0, #2
	blx FUN_021D792C
	blx FUN_021D797C
	movs r0, #2
	str r0, [r4, #8]
_0222CA9E:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0222CAA4: .4byte 0x00000F0F
	thumb_func_end ov61_0222CA20

	thumb_func_start ov61_0222CAA8
ov61_0222CAA8: @ 0x0222CAA8
	push {r4, lr}
	sub sp, #0x48
	adds r4, r0, #0
	blx FUN_021D7AE4
	blx FUN_021D7A8C
	cmp r0, #0
	beq _0222CB26
	blx FUN_021D7BFC
	cmp r0, #8
	bhi _0222CB06
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222CACE: @ jump table
	.2byte _0222CB06 - _0222CACE - 2 @ case 0
	.2byte _0222CB06 - _0222CACE - 2 @ case 1
	.2byte _0222CB06 - _0222CACE - 2 @ case 2
	.2byte _0222CB06 - _0222CACE - 2 @ case 3
	.2byte _0222CB1C - _0222CACE - 2 @ case 4
	.2byte _0222CB06 - _0222CACE - 2 @ case 5
	.2byte _0222CB06 - _0222CACE - 2 @ case 6
	.2byte _0222CAE0 - _0222CACE - 2 @ case 7
	.2byte _0222CB06 - _0222CACE - 2 @ case 8
_0222CAE0:
	add r0, sp, #8
	add r1, sp, #4
	blx FUN_021D75F4
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	str r0, [r4, #0x18]
	ldr r0, [sp, #4]
	str r0, [r4, #0x1c]
	blx FUN_021D76E8
	blx FUN_021D7DB0
	adds r0, r4, #0
	bl ov61_0222C86C
	movs r0, #6
	str r0, [r4, #8]
	b _0222CB26
_0222CB06:
	add r0, sp, #0
	blx FUN_021D75D4
	adds r0, r4, #0
	bl ov61_0222C86C
	movs r0, #0xa
	str r0, [r4, #8]
	subs r0, #0xc
	str r0, [r4, #0x10]
	b _0222CB26
_0222CB1C:
	add r0, sp, #0xc
	blx FUN_021D7EB8
	movs r0, #3
	str r0, [r4, #8]
_0222CB26:
	movs r0, #0
	add sp, #0x48
	pop {r4, pc}
	thumb_func_end ov61_0222CAA8

	thumb_func_start ov61_0222CB2C
ov61_0222CB2C: @ 0x0222CB2C
	push {r4, lr}
	adds r4, r0, #0
	blx FUN_021D81DC
	movs r0, #4
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov61_0222CB2C

	thumb_func_start ov61_0222CB3C
ov61_0222CB3C: @ 0x0222CB3C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	blx FUN_021D82A0
	cmp r0, #5
	bhi _0222CBE0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222CB56: @ jump table
	.2byte _0222CB68 - _0222CB56 - 2 @ case 0
	.2byte _0222CBE0 - _0222CB56 - 2 @ case 1
	.2byte _0222CBE0 - _0222CB56 - 2 @ case 2
	.2byte _0222CB62 - _0222CB56 - 2 @ case 3
	.2byte _0222CB68 - _0222CB56 - 2 @ case 4
	.2byte _0222CB68 - _0222CB56 - 2 @ case 5
_0222CB62:
	movs r0, #5
	str r0, [r4, #8]
	b _0222CBE0
_0222CB68:
	adds r0, r4, #0
	bl ov61_0222C86C
	add r0, sp, #4
	add r1, sp, #0
	blx FUN_021D75F4
	str r0, [r4, #0x14]
	ldr r0, [sp, #4]
	str r0, [r4, #0x18]
	ldr r0, [sp]
	str r0, [r4, #0x1c]
	blx FUN_021D76E8
	blx FUN_021D7DB0
	movs r0, #6
	str r0, [r4, #8]
	ldr r1, [sp]
	cmp r1, #7
	bhi _0222CBCE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222CB9E: @ jump table
	.2byte _0222CBCE - _0222CB9E - 2 @ case 0
	.2byte _0222CBAE - _0222CB9E - 2 @ case 1
	.2byte _0222CBAE - _0222CB9E - 2 @ case 2
	.2byte _0222CBC0 - _0222CB9E - 2 @ case 3
	.2byte _0222CBB2 - _0222CB9E - 2 @ case 4
	.2byte _0222CBCA - _0222CB9E - 2 @ case 5
	.2byte _0222CBBC - _0222CB9E - 2 @ case 6
	.2byte _0222CBCA - _0222CB9E - 2 @ case 7
_0222CBAE:
	str r0, [r4, #8]
	b _0222CBCE
_0222CBB2:
	blx FUN_021E55B0
	movs r0, #6
	str r0, [r4, #8]
	b _0222CBCE
_0222CBBC:
	str r0, [r4, #8]
	b _0222CBCE
_0222CBC0:
	blx FUN_021D8E8C
	movs r0, #6
	str r0, [r4, #8]
	b _0222CBCE
_0222CBCA:
	bl FUN_02038A0C
_0222CBCE:
	ldr r1, [sp, #4]
	ldr r0, _0222CBE8 @ =0xFFFFB1E0
	cmp r1, r0
	bge _0222CBE0
	ldr r0, _0222CBEC @ =0xFFFF8AD1
	cmp r1, r0
	blt _0222CBE0
	movs r0, #6
	str r0, [r4, #8]
_0222CBE0:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0222CBE8: .4byte 0xFFFFB1E0
_0222CBEC: .4byte 0xFFFF8AD1
	thumb_func_end ov61_0222CB3C

	thumb_func_start ov61_0222CBF0
ov61_0222CBF0: @ 0x0222CBF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_0202B370
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_02025CCC
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0202AD28
	adds r0, r4, #0
	bl FUN_02025D74
	cmp r0, #0
	bne _0222CC2A
	adds r0, r6, #0
	bl FUN_02039058
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02025D78
_0222CC2A:
	adds r0, r4, #0
	bl FUN_02025D74
	movs r0, #9
	str r0, [r5, #8]
	ldr r0, [r5]
	movs r1, #1
	str r1, [r0, #0x7c]
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov61_0222CBF0

	thumb_func_start ov61_0222CC40
ov61_0222CC40: @ 0x0222CC40
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	rsbs r0, r0, #0
	bl FUN_021D1F3C
	ldr r2, [r4, #0x18]
	adds r1, r0, #0
	adds r0, r4, #0
	rsbs r2, r2, #0
	bl ov61_0222C7F8
	movs r0, #7
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov61_0222CC40

	thumb_func_start ov61_0222CC64
ov61_0222CC64: @ 0x0222CC64
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0222CCA8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _0222CC78
	movs r0, #2
	tst r0, r1
	beq _0222CCA2
_0222CC78:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x90
	str r1, [r0]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	rsbs r0, r0, #0
	bl ov61_0222C928
	cmp r0, #1
	bne _0222CC9E
	movs r0, #0
	str r0, [r4, #8]
	b _0222CCA2
_0222CC9E:
	movs r0, #8
	str r0, [r4, #8]
_0222CCA2:
	movs r0, #0
	pop {r4, pc}
	nop
_0222CCA8: .4byte 0x021BF67C
	thumb_func_end ov61_0222CC64

	thumb_func_start ov61_0222CCAC
ov61_0222CCAC: @ 0x0222CCAC
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #9
	beq _0222CCBC
	bl FUN_0203848C
_0222CCBC:
	bl FUN_02039794
	adds r0, r4, #0
	bl ov61_0222C86C
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x75
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov61_0222CCAC

	thumb_func_start ov61_0222CCE8
ov61_0222CCE8: @ 0x0222CCE8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r2, #0
	adds r0, #0xf
	cmp r0, #0x11
	bhi _0222CD36
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222CD04: @ jump table
	.2byte _0222CD34 - _0222CD04 - 2 @ case 0
	.2byte _0222CD30 - _0222CD04 - 2 @ case 1
	.2byte _0222CD36 - _0222CD04 - 2 @ case 2
	.2byte _0222CD34 - _0222CD04 - 2 @ case 3
	.2byte _0222CD36 - _0222CD04 - 2 @ case 4
	.2byte _0222CD36 - _0222CD04 - 2 @ case 5
	.2byte _0222CD36 - _0222CD04 - 2 @ case 6
	.2byte _0222CD36 - _0222CD04 - 2 @ case 7
	.2byte _0222CD36 - _0222CD04 - 2 @ case 8
	.2byte _0222CD36 - _0222CD04 - 2 @ case 9
	.2byte _0222CD34 - _0222CD04 - 2 @ case 10
	.2byte _0222CD36 - _0222CD04 - 2 @ case 11
	.2byte _0222CD34 - _0222CD04 - 2 @ case 12
	.2byte _0222CD30 - _0222CD04 - 2 @ case 13
	.2byte _0222CD2C - _0222CD04 - 2 @ case 14
	.2byte _0222CD36 - _0222CD04 - 2 @ case 15
	.2byte _0222CD28 - _0222CD04 - 2 @ case 16
	.2byte _0222CD2C - _0222CD04 - 2 @ case 17
_0222CD28:
	movs r2, #0x90
	b _0222CD36
_0222CD2C:
	movs r2, #0x91
	b _0222CD36
_0222CD30:
	movs r2, #0x96
	b _0222CD36
_0222CD34:
	movs r2, #0x95
_0222CD36:
	ldr r0, _0222CD54 @ =0x00000F0F
	movs r3, #1
	str r0, [sp]
	ldr r1, [r4, #0x24]
	adds r0, r4, #0
	bl ov61_0222C8B8
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0xb
	bl ov61_0222C920
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0222CD54: .4byte 0x00000F0F
	thumb_func_end ov61_0222CCE8

	thumb_func_start ov61_0222CD58
ov61_0222CD58: @ 0x0222CD58
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x90
	ldr r1, [r1]
	cmp r1, #3
	bhi _0222CDEC
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222CD74: @ jump table
	.2byte _0222CD7C - _0222CD74 - 2 @ case 0
	.2byte _0222CD98 - _0222CD74 - 2 @ case 1
	.2byte _0222CDB8 - _0222CD74 - 2 @ case 2
	.2byte _0222CDD4 - _0222CD74 - 2 @ case 3
_0222CD7C:
	ldr r1, _0222CE10 @ =0x00000F0F
	movs r2, #0xb2
	str r1, [sp]
	ldr r1, [r4, #0x24]
	movs r3, #1
	bl ov61_0222C8B8
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CE08
_0222CD98:
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #0
	bne _0222CE08
	bl FUN_0203848C
	blx FUN_021D7DB0
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CE08
_0222CDB8:
	ldr r1, _0222CE10 @ =0x00000F0F
	movs r2, #0xb3
	str r1, [sp]
	ldr r1, [r4, #0x24]
	movs r3, #1
	bl ov61_0222C8B8
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CE08
_0222CDD4:
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #0
	bne _0222CE08
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CE08
_0222CDEC:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _0222CE08
	movs r0, #8
	str r0, [r4, #8]
_0222CE08:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0222CE10: .4byte 0x00000F0F
	thumb_func_end ov61_0222CD58

	thumb_func_start ov61_0222CE14
ov61_0222CE14: @ 0x0222CE14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #0
	bne _0222CE26
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_0222CE26:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov61_0222CE14

	thumb_func_start ov61_0222CE2C
ov61_0222CE2C: @ 0x0222CE2C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #1
	bne _0222CE42
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0222CE42:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #3
	bhi _0222CED2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222CE58: @ jump table
	.2byte _0222CE60 - _0222CE58 - 2 @ case 0
	.2byte _0222CE7E - _0222CE58 - 2 @ case 1
	.2byte _0222CE94 - _0222CE58 - 2 @ case 2
	.2byte _0222CEB6 - _0222CE58 - 2 @ case 3
_0222CE60:
	ldr r0, _0222CED8 @ =0x00000F0F
	movs r2, #0x1a
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	adds r0, r4, #0
	movs r3, #1
	bl ov61_0222C8B8
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CED2
_0222CE7E:
	blx FUN_021D7DB0
	bl FUN_0203848C
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CED2
_0222CE94:
	bl FUN_02039794
	ldr r0, _0222CED8 @ =0x00000F0F
	movs r2, #0x1b
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	adds r0, r4, #0
	movs r3, #1
	bl ov61_0222C8B8
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
	b _0222CED2
_0222CEB6:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _0222CED2
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_0222CED2:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0222CED8: .4byte 0x00000F0F
	thumb_func_end ov61_0222CE2C

	arm_func_start ov61_0222CEDC
ov61_0222CEDC: @ 0x0222CEDC
	push {r3, lr}
	bl ov61_0222CFD4
	mov r0, #0
	ldr lr, _0222CF38 @ =0x0222E764
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov ip, #9
_0222CEFC:
	stm lr!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222CEFC
	stm lr!, {r0, r1, r2, r3}
	stm lr, {r0, r1}
	ldr r1, _0222CF38 @ =0x0222E764
	mov r2, #0
	str r2, [r1, #0x138]
	ldr r0, _0222CF3C @ =0x0222E964
	strb r2, [r1, #0x140]
	strh r2, [r0, #0x40]
	bl ov61_0222D508
	bl ov61_0222D53C
	pop {r3, pc}
	.align 2, 0
_0222CF38: .4byte 0x0222E764
_0222CF3C: .4byte 0x0222E964
	arm_func_end ov61_0222CEDC

	arm_func_start ov61_0222CF40
ov61_0222CF40: @ 0x0222CF40
	push {r4, r5, r6, lr}
	movs r5, r2
	mov r6, r0
	mov r4, r1
	beq _0222CF80
	ldr lr, _0222CFC8 @ =0x0222E764
	mov ip, #0x13
_0222CF5C:
	ldm r5!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222CF5C
	ldm r5, {r0, r1}
	stm lr, {r0, r1}
	ldr r0, _0222CFC8 @ =0x0222E764
	mov r1, #0
	str r1, [r0, #0x138]
_0222CF80:
	bl ov61_0222D510
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	bl ov61_0222D4F0
	ldr r0, _0222CFCC @ =0x0222E8A4
	mov r1, r6
	bl FUN_020D8B7C
	ldr r1, _0222CFD0 @ =0x0222E964
	mov r2, #0
	ldr r0, _0222CFC8 @ =0x0222E764
	strh r4, [r1, #0x40]
	str r2, [r0, #0x258]
	sub r1, r2, #1
	str r1, [r0, #0x26c]
	bl ov61_0222CFD4
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222CFC8: .4byte 0x0222E764
_0222CFCC: .4byte 0x0222E8A4
_0222CFD0: .4byte 0x0222E964
	arm_func_end ov61_0222CF40

	arm_func_start ov61_0222CFD4
ov61_0222CFD4: @ 0x0222CFD4
	push {r3, lr}
	bl ov61_0222D770
	ldr r0, _0222D03C @ =0x0222E764
	ldr r0, [r0, #0x258]
	cmp r0, #0
	beq _0222CFFC
	bl ov61_0222D4AC
	ldr r0, _0222D03C @ =0x0222E764
	mov r1, #0
	str r1, [r0, #0x258]
_0222CFFC:
	ldr r0, _0222D03C @ =0x0222E764
	mov r1, #0xf
	str r1, [r0, #0x244]
	mov r1, #0x1e
	str r1, [r0, #0x248]
	str r1, [r0, #0x24c]
	mov r2, #0
	str r2, [r0, #0x254]
	str r2, [r0, #0x25c]
	str r2, [r0, #0x260]
	str r2, [r0, #0x264]
	str r2, [r0, #0x268]
	mov r1, #1
	str r1, [r0, #0x13c]
	str r2, [r0, #0x250]
	pop {r3, pc}
	.align 2, 0
_0222D03C: .4byte 0x0222E764
	arm_func_end ov61_0222CFD4

	arm_func_start ov61_0222D040
ov61_0222D040: @ 0x0222D040
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, #0
	ldr r4, _0222D1F8 @ =0x0222E764
	mov fp, #9
	mov sl, #7
	mov r6, #1
	mov r7, r5
_0222D05C:
	ldr r0, [r4, #0x13c]
	mov r8, r7
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0222D1B4
_0222D070: @ jump table
	b _0222D098 @ case 0
	b _0222D098 @ case 1
	b _0222D0A0 @ case 2
	b _0222D0D4 @ case 3
	b _0222D108 @ case 4
	b _0222D13C @ case 5
	b _0222D184 @ case 6
	b _0222D098 @ case 7
	b _0222D098 @ case 8
	b _0222D098 @ case 9
_0222D098:
	mov r8, r6
	b _0222D1B4
_0222D0A0:
	bl ov61_0222DB98
	cmp r0, #0
	bne _0222D0C4
	ldr r0, [r4, #0x250]
	mov r8, #1
	cmp r0, #0xd
	moveq sb, sl
	movne sb, fp
	b _0222D0C8
_0222D0C4:
	mov sb, #3
_0222D0C8:
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
	b _0222D1B4
_0222D0D4:
	bl ov61_0222D6A0
	cmp r0, #0
	bne _0222D0F8
	ldr r0, [r4, #0x250]
	mov r8, #1
	cmp r0, #0xd
	moveq sb, #7
	movne sb, #9
	b _0222D0FC
_0222D0F8:
	mov sb, #4
_0222D0FC:
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
	b _0222D1B4
_0222D108:
	bl ov61_0222D7B0
	cmp r0, #0
	bne _0222D12C
	ldr r0, [r4, #0x250]
	mov r8, #1
	cmp r0, #0xd
	moveq sb, #7
	movne sb, #9
	b _0222D130
_0222D12C:
	mov sb, #5
_0222D130:
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
	b _0222D1B4
_0222D13C:
	bl ov61_0222D8F8
	cmp r0, #0
	bne _0222D160
	ldr r0, [r4, #0x250]
	mov r8, #1
	cmp r0, #0xd
	moveq sb, #7
	movne sb, #9
	b _0222D164
_0222D160:
	mov sb, #6
_0222D164:
	ldr r0, [r4, #0x258]
	cmp r0, #0
	beq _0222D178
	bl ov61_0222D4AC
	str r5, [r4, #0x258]
_0222D178:
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
	b _0222D1B4
_0222D184:
	bl ov61_0222DA0C
	cmp r0, #0
	bne _0222D1A4
	ldr r0, [r4, #0x250]
	cmp r0, #0xd
	moveq sb, #7
	movne sb, #9
	b _0222D1A8
_0222D1A4:
	mov sb, #8
_0222D1A8:
	mov r8, #1
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
_0222D1B4:
	cmp r8, #0
	bne _0222D1F0
	ldr r0, [r4, #0x268]
	cmp r0, #1
	bne _0222D1E0
	ldr r0, _0222D1F8 @ =0x0222E764
	mov r1, #7
	str r1, [r0, #0x13c]
	mov r1, #0xd
	str r1, [r0, #0x250]
	b _0222D1F0
_0222D1E0:
	bl ov61_0222D4DC
	mov r0, #1
	bl ov61_0222DB8C
	b _0222D05C
_0222D1F0:
	bl ov61_0222D4DC
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222D1F8: .4byte 0x0222E764
	arm_func_end ov61_0222D040

	arm_func_start ov61_0222D1FC
ov61_0222D1FC: @ 0x0222D1FC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov61_0222D4C8
	ldr r0, _0222D3E4 @ =0x0222E764
	ldr r0, [r0, #0x13c]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0222D274
_0222D228: @ jump table
	b _0222D250 @ case 0
	b _0222D274 @ case 1
	b _0222D250 @ case 2
	b _0222D250 @ case 3
	b _0222D250 @ case 4
	b _0222D250 @ case 5
	b _0222D250 @ case 6
	b _0222D270 @ case 7
	b _0222D270 @ case 8
	b _0222D270 @ case 9
_0222D250:
	bl ov61_0222D4DC
	ldr r0, _0222D3E4 @ =0x0222E764
	mov r1, #9
	str r1, [r0, #0x13c]
	mov r1, #1
	str r1, [r0, #0x250]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222D270:
	bl ov61_0222CFD4
_0222D274:
	bl ov61_0222D4DC
	mov r0, r7
	bl ov61_0222E2A8
	ldr r2, _0222D3E4 @ =0x0222E764
	mvn r1, #0
	str r0, [r2, #0x25c]
	cmp r0, r1
	bne _0222D2AC
	mov r0, #9
	str r0, [r2, #0x13c]
	mov r0, #2
	str r0, [r2, #0x250]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222D2AC:
	cmp r4, r1
	str r5, [r2, #0x260]
	addne r0, r4, #0x140
	strne r0, [sp]
	bne _0222D2F4
	mov r0, r7
	bl ov61_0222E168
	mvn r1, #0
	str r0, [sp]
	cmp r0, r1
	bne _0222D2F4
	ldr r0, _0222D3E4 @ =0x0222E764
	mov r1, #9
	str r1, [r0, #0x13c]
	mov r1, #2
	str r1, [r0, #0x250]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222D2F4:
	ldr r0, [sp]
	bl ov61_0222D498
	ldr ip, _0222D3E4 @ =0x0222E764
	cmp r0, #0
	str r0, [ip, #0x258]
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp]
	add r3, sp, #0
	str r1, [ip, #0x254]
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	mov r4, #0x13
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldr lr, [ip, #0x258]
	strh r7, [lr, #4]
	add r5, lr, #8
_0222D34C:
	ldm ip!, {r0, r1, r2, r3}
	stm r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0222D34C
	ldm ip, {r0, r1}
	stm r5, {r0, r1}
	mov r0, #0
	strh r0, [lr, #6]
	ldr r2, [sp]
	mov r1, r6
	add r0, lr, #0x140
	sub r2, r2, #0x140
	bl FUN_020D50B8
	ldr r0, _0222D3E4 @ =0x0222E764
	ldr r2, [r0, #0x258]
	ldr r1, [r0, #0x254]
	add r0, r2, #4
	sub r1, r1, #4
	add r2, r2, #4
	bl ov61_0222E0B8
	ldr r0, _0222D3E4 @ =0x0222E764
	mov r1, #2
	str r1, [r0, #0x13c]
	bl ov61_0222D4C8
	bl ov61_0222D54C
	cmp r0, #0
	bne _0222D3D8
	ldr r0, _0222D3E4 @ =0x0222E764
	mov r1, #9
	str r1, [r0, #0x13c]
	mov r1, #6
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222D3D8:
	bl ov61_0222D4DC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222D3E4: .4byte 0x0222E764
	arm_func_end ov61_0222D1FC

	arm_func_start ov61_0222D3E8
ov61_0222D3E8: @ 0x0222D3E8
	ldr r0, _0222D3F4 @ =0x0222E764
	ldr r0, [r0, #0x13c]
	bx lr
	.align 2, 0
_0222D3F4: .4byte 0x0222E764
	arm_func_end ov61_0222D3E8

	arm_func_start ov61_0222D3F8
ov61_0222D3F8: @ 0x0222D3F8
	push {r3, lr}
	bl ov61_0222D4C8
	bl ov61_0222D3E8
	cmp r0, #8
	beq _0222D418
	bl ov61_0222D4DC
	mov r0, #0
	pop {r3, pc}
_0222D418:
	bl ov61_0222D4DC
	ldr r0, _0222D42C @ =0x0222E764
	ldr r0, [r0, #0x260]
	add r0, r0, #4
	pop {r3, pc}
	.align 2, 0
_0222D42C: .4byte 0x0222E764
	arm_func_end ov61_0222D3F8

	arm_func_start ov61_0222D430
ov61_0222D430: @ 0x0222D430
	push {r3, lr}
	bl ov61_0222D4C8
	bl ov61_0222D3E8
	cmp r0, #8
	beq _0222D450
	bl ov61_0222D4DC
	mvn r0, #0
	pop {r3, pc}
_0222D450:
	bl ov61_0222D4DC
	ldr r0, _0222D460 @ =0x0222E764
	ldr r0, [r0, #0x25c]
	pop {r3, pc}
	.align 2, 0
_0222D460: .4byte 0x0222E764
	arm_func_end ov61_0222D430

	arm_func_start ov61_0222D464
ov61_0222D464: @ 0x0222D464
	push {r3, lr}
	bl ov61_0222D4C8
	bl ov61_0222D3E8
	cmp r0, #9
	beq _0222D484
	bl ov61_0222D4DC
	mov r0, #0
	pop {r3, pc}
_0222D484:
	bl ov61_0222D4DC
	ldr r0, _0222D494 @ =0x0222E764
	ldr r0, [r0, #0x250]
	pop {r3, pc}
	.align 2, 0
_0222D494: .4byte 0x0222E764
	arm_func_end ov61_0222D464

	arm_func_start ov61_0222D498
ov61_0222D498: @ 0x0222D498
	ldr ip, _0222D4A8 @ =FUN_021D7780
	mov r1, r0
	mov r0, #0
	bx ip
	.align 2, 0
_0222D4A8: .4byte FUN_021D7780
	arm_func_end ov61_0222D498

	arm_func_start ov61_0222D4AC
ov61_0222D4AC: @ 0x0222D4AC
	push {r3, lr}
	movs r1, r0
	popeq {r3, pc}
	mov r0, #0
	mov r2, r0
	bl FUN_021D77C4
	pop {r3, pc}
	arm_func_end ov61_0222D4AC

	arm_func_start ov61_0222D4C8
ov61_0222D4C8: @ 0x0222D4C8
	ldr ip, _0222D4D4 @ =FUN_020C29D8
	ldr r0, _0222D4D8 @ =0x0222EA98
	bx ip
	.align 2, 0
_0222D4D4: .4byte FUN_020C29D8
_0222D4D8: .4byte 0x0222EA98
	arm_func_end ov61_0222D4C8

	arm_func_start ov61_0222D4DC
ov61_0222D4DC: @ 0x0222D4DC
	ldr ip, _0222D4E8 @ =FUN_020C2A5C
	ldr r0, _0222D4EC @ =0x0222EA98
	bx ip
	.align 2, 0
_0222D4E8: .4byte FUN_020C2A5C
_0222D4EC: .4byte 0x0222EA98
	arm_func_end ov61_0222D4DC

	arm_func_start ov61_0222D4F0
ov61_0222D4F0: @ 0x0222D4F0
	push {r3, lr}
	ldr r0, _0222D504 @ =0x0222EA98
	bl FUN_020C29C0
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_0222D504: .4byte 0x0222EA98
	arm_func_end ov61_0222D4F0

	arm_func_start ov61_0222D508
ov61_0222D508: @ 0x0222D508
	mov r0, #1
	bx lr
	arm_func_end ov61_0222D508

	arm_func_start ov61_0222D510
ov61_0222D510: @ 0x0222D510
	push {r3, lr}
	bl FUN_020C3808
	cmp r0, #0
	bne _0222D524
	bl FUN_020C3790
_0222D524:
	ldr r0, _0222D538 @ =0x0222E764
	mov r1, #0x10
	str r1, [r0, #0x270]
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_0222D538: .4byte 0x0222E764
	arm_func_end ov61_0222D510

	arm_func_start ov61_0222D53C
ov61_0222D53C: @ 0x0222D53C
	bx lr
	arm_func_end ov61_0222D53C

	arm_func_start ov61_0222D540
ov61_0222D540: @ 0x0222D540
	ldr ip, _0222D548 @ =ov61_0222D040
	bx ip
	.align 2, 0
_0222D548: .4byte ov61_0222D040
	arm_func_end ov61_0222D540

	arm_func_start ov61_0222D54C
ov61_0222D54C: @ 0x0222D54C
	push {r3, lr}
	sub sp, sp, #8
	mov r1, #0x800
	ldr r0, _0222D590 @ =0x0222E764
	str r1, [sp]
	ldr ip, [r0, #0x270]
	ldr r0, _0222D594 @ =0x0222E9D8
	ldr r1, _0222D598 @ =ov61_0222D540
	ldr r3, _0222D59C @ =0x0222F2B0
	mov r2, #0
	str ip, [sp, #4]
	bl FUN_020C1F34
	ldr r0, _0222D594 @ =0x0222E9D8
	bl FUN_020C22D0
	mov r0, #1
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_0222D590: .4byte 0x0222E764
_0222D594: .4byte 0x0222E9D8
_0222D598: .4byte ov61_0222D540
_0222D59C: .4byte 0x0222F2B0
	arm_func_end ov61_0222D54C

	arm_func_start ov61_0222D5A0
ov61_0222D5A0: @ 0x0222D5A0
	ldrsb ip, [r0]
	mov r2, #0
	mov r3, r2
	cmp ip, #0
	beq _0222D61C
	mov r1, r2
_0222D5B8:
	cmp ip, #0x30
	blt _0222D5DC
	cmp ip, #0x39
	bgt _0222D5DC
	add r2, r2, #1
	cmp r2, #4
	blt _0222D610
	mov r0, #0
	bx lr
_0222D5DC:
	cmp ip, #0x2e
	bne _0222D608
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	add r3, r3, #1
	mov r2, r1
	cmp r3, #4
	blt _0222D610
	mov r0, r1
	bx lr
_0222D608:
	mov r0, #0
	bx lr
_0222D610:
	ldrsb ip, [r0, #1]!
	cmp ip, #0
	bne _0222D5B8
_0222D61C:
	cmp r3, #3
	bne _0222D630
	cmp r2, #0
	movne r0, #1
	bxne lr
_0222D630:
	mov r0, #0
	bx lr
	arm_func_end ov61_0222D5A0

	arm_func_start ov61_0222D638
ov61_0222D638: @ 0x0222D638
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov61_0222D5A0
	cmp r0, #0
	bne _0222D68C
	mov r0, r5
	bl FUN_0220854C
	cmp r0, #0
	beq _0222D684
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [sp]
	bl FUN_022089F4
	mov r1, r0
	mov r0, r4
	bl FUN_020D8B7C
	b _0222D698
_0222D684:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222D68C:
	mov r0, r4
	mov r1, r5
	bl FUN_020D8B7C
_0222D698:
	mov r0, #1
	pop {r3, r4, r5, pc}
	arm_func_end ov61_0222D638

	arm_func_start ov61_0222D6A0
ov61_0222D6A0: @ 0x0222D6A0
	push {r3, lr}
	sub sp, sp, #0x10
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl FUN_02208324
	ldr r2, _0222D768 @ =0x0222E764
	mvn r1, #0
	str r0, [r2, #0x26c]
	cmp r0, r1
	bne _0222D6E0
	mov r0, #3
	str r0, [r2, #0x250]
	add sp, sp, #0x10
	mov r0, #0
	pop {r3, pc}
_0222D6E0:
	mov r1, #3
	mov r2, #0
	bl FUN_022087CC
	ldr r1, _0222D768 @ =0x0222E764
	orr r2, r0, #4
	ldr r0, [r1, #0x26c]
	mov r1, #4
	bl FUN_022087CC
	cmp r0, #0
	bge _0222D720
	ldr r0, _0222D768 @ =0x0222E764
	mov r1, #4
	str r1, [r0, #0x250]
	add sp, sp, #0x10
	mov r0, #0
	pop {r3, pc}
_0222D720:
	ldr r0, _0222D76C @ =0x0222E8A4
	add r1, sp, #0
	bl ov61_0222D638
	cmp r0, #0
	bne _0222D74C
	ldr r0, _0222D768 @ =0x0222E764
	mov r1, #5
	str r1, [r0, #0x250]
	add sp, sp, #0x10
	mov r0, #0
	pop {r3, pc}
_0222D74C:
	add r0, sp, #0
	bl FUN_021EAF1C
	ldr r1, _0222D768 @ =0x0222E764
	str r0, [r1, #0x264]
	mov r0, #1
	add sp, sp, #0x10
	pop {r3, pc}
	.align 2, 0
_0222D768: .4byte 0x0222E764
_0222D76C: .4byte 0x0222E8A4
	arm_func_end ov61_0222D6A0

	arm_func_start ov61_0222D770
ov61_0222D770: @ 0x0222D770
	push {r3, lr}
	ldr r0, _0222D7AC @ =0x0222E764
	mvn r1, #0
	ldr r0, [r0, #0x26c]
	cmp r0, r1
	popeq {r3, pc}
	mov r1, #2
	bl FUN_02208534
	ldr r0, _0222D7AC @ =0x0222E764
	ldr r0, [r0, #0x26c]
	bl FUN_02208540
	ldr r0, _0222D7AC @ =0x0222E764
	mvn r1, #0
	str r1, [r0, #0x26c]
	pop {r3, pc}
	.align 2, 0
_0222D7AC: .4byte 0x0222E764
	arm_func_end ov61_0222D770

	arm_func_start ov61_0222D7B0
ov61_0222D7B0: @ 0x0222D7B0
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r2, #8
	mov r1, #2
	ldr r0, _0222D8EC @ =0x0222E964
	strb r2, [sp]
	strb r1, [sp, #1]
	ldrh r1, [r0, #0x40]
	ldr r0, _0222D8F0 @ =0x0222E764
	asr r2, r1, #8
	lsl r1, r1, #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	strh r1, [sp, #2]
	ldr r0, [r0, #0x264]
	str r0, [sp, #4]
	bl FUN_020C3880
	ldr r2, _0222D8F4 @ =0x0007FD88
	mov r3, #0
	bl FUN_020E1ED4
	ldr r5, _0222D8F4 @ =0x0007FD88
	ldr sb, _0222D8F0 @ =0x0222E764
	mov r7, r0
	mov r4, #0
	mov sl, #1
	add r6, sp, #0
	mvn r8, #0x19
_0222D820:
	ldr r0, [sb, #0x26c]
	mov r1, r6
	bl FUN_0220837C
	cmp r0, #0
	bge _0222D8E0
	cmp r0, r8
	bne _0222D880
	ldr r0, [sb, #0x244]
	cmp r0, #0
	beq _0222D8A4
	bl FUN_020C3880
	mov r2, r5
	mov r3, r4
	bl FUN_020E1ED4
	ldr r1, [sb, #0x244]
	subs r0, r0, r7
	cmp r0, r1
	blt _0222D8A4
	ldr r0, _0222D8F0 @ =0x0222E764
	mov r1, #0xa
	str r1, [r0, #0x250]
	add sp, sp, #8
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_0222D880:
	mvn r1, #0x1d
	cmp r0, r1
	beq _0222D8E0
	ldr r0, _0222D8F0 @ =0x0222E764
	mov r1, #7
	str r1, [r0, #0x250]
	add sp, sp, #8
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_0222D8A4:
	bl ov61_0222D4C8
	ldr r0, [sb, #0x268]
	cmp r0, #1
	bne _0222D8D0
	ldr r0, _0222D8F0 @ =0x0222E764
	mov r1, #0xd
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	add sp, sp, #8
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_0222D8D0:
	bl ov61_0222D4DC
	mov r0, sl
	bl ov61_0222DB8C
	b _0222D820
_0222D8E0:
	mov r0, #1
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0222D8EC: .4byte 0x0222E964
_0222D8F0: .4byte 0x0222E764
_0222D8F4: .4byte 0x0007FD88
	arm_func_end ov61_0222D7B0

	arm_func_start ov61_0222D8F8
ov61_0222D8F8: @ 0x0222D8F8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, #0
	bl FUN_020C3880
	ldr r2, _0222DA04 @ =0x0007FD88
	mov r3, sb
	bl FUN_020E1ED4
	ldr r7, _0222DA04 @ =0x0007FD88
	ldr r5, _0222DA08 @ =0x0222E764
	mov sl, r0
	mov r8, sb
	mov r6, sb
	mov fp, #1
	mvn r4, #5
_0222D92C:
	ldr r0, [r5, #0x254]
	ldr r1, [r5, #0x258]
	sub r2, r0, sb
	cmp r2, r0
	movgt r2, r0
	ldr r0, [r5, #0x26c]
	mov r3, r8
	add r1, r1, sb
	bl FUN_0220848C
	cmp r0, r4
	beq _0222D984
	cmp r0, #0
	bge _0222D974
	ldr r0, _0222DA08 @ =0x0222E764
	mov r1, #0xb
	str r1, [r0, #0x250]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222D974:
	ldr r1, [r5, #0x254]
	add sb, sb, r0
	cmp sb, r1
	beq _0222D9FC
_0222D984:
	ldr r0, [r5, #0x248]
	cmp r0, #0
	beq _0222D9C4
	bl FUN_020C3880
	mov r2, r7
	mov r3, r6
	bl FUN_020E1ED4
	ldr r1, [r5, #0x248]
	subs r0, r0, sl
	cmp r0, r1
	blt _0222D9C4
	ldr r0, _0222DA08 @ =0x0222E764
	mov r1, #0xb
	str r1, [r0, #0x250]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222D9C4:
	bl ov61_0222D4C8
	ldr r0, [r5, #0x268]
	cmp r0, #1
	bne _0222D9EC
	ldr r0, _0222DA08 @ =0x0222E764
	mov r1, #0xd
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222D9EC:
	bl ov61_0222D4DC
	mov r0, fp
	bl ov61_0222DB8C
	b _0222D92C
_0222D9FC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222DA04: .4byte 0x0007FD88
_0222DA08: .4byte 0x0222E764
	arm_func_end ov61_0222D8F8

	arm_func_start ov61_0222DA0C
ov61_0222DA0C: @ 0x0222DA0C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, #0
	sub r0, sl, #1
	str r0, [sp]
	bl FUN_020C3880
	ldr r2, _0222DB84 @ =0x0007FD88
	mov r3, sl
	bl FUN_020E1ED4
	mvn r4, #0
	ldr fp, _0222DB84 @ =0x0007FD88
	ldr r6, _0222DB88 @ =0x0222E764
	mov sb, r0
	sub r5, r4, #5
	add r7, sp, #0
	mov r8, sl
_0222DA48:
	ldr r1, [r6, #0x260]
	ldr r2, [r6, #0x25c]
	ldr r0, [r6, #0x26c]
	mov r3, r8
	add r1, r1, sl
	sub r2, r2, sl
	bl FUN_022083D8
	cmp r0, r5
	beq _0222DB04
	cmp r0, #0
	bgt _0222DA88
	ldr r0, _0222DB88 @ =0x0222E764
	mov r1, #9
	str r1, [r0, #0x250]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222DA88:
	add sl, sl, r0
	cmp sl, #4
	blo _0222DAC4
	ldr r0, [sp]
	cmp r0, r4
	bne _0222DAC4
	ldr r2, [r6, #0x260]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	strb r1, [r7]
	strb r0, [r7, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	strb r1, [r7, #2]
	strb r0, [r7, #3]
_0222DAC4:
	ldr r0, [sp]
	cmp sl, r0
	bne _0222DB04
	cmp r0, r4
	beq _0222DB04
	ldr r0, _0222DB88 @ =0x0222E764
	sub r1, sl, #4
	ldr r2, [r0, #0x260]
	add r0, r2, #4
	add r2, r2, #4
	bl ov61_0222E110
	ldr r1, [sp]
	ldr r0, _0222DB88 @ =0x0222E764
	sub r1, r1, #4
	str r1, [r0, #0x25c]
	b _0222DB7C
_0222DB04:
	ldr r0, [r6, #0x24c]
	cmp r0, #0
	beq _0222DB44
	bl FUN_020C3880
	mov r2, fp
	mov r3, #0
	bl FUN_020E1ED4
	ldr r1, [r6, #0x24c]
	subs r0, r0, sb
	cmp r0, r1
	blt _0222DB44
	ldr r0, _0222DB88 @ =0x0222E764
	mov r1, #0xc
	str r1, [r0, #0x250]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222DB44:
	bl ov61_0222D4C8
	ldr r0, [r6, #0x268]
	cmp r0, #1
	bne _0222DB6C
	ldr r0, _0222DB88 @ =0x0222E764
	mov r1, #0xd
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222DB6C:
	bl ov61_0222D4DC
	mov r0, #1
	bl ov61_0222DB8C
	b _0222DA48
_0222DB7C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0222DB84: .4byte 0x0007FD88
_0222DB88: .4byte 0x0222E764
	arm_func_end ov61_0222DA0C

	arm_func_start ov61_0222DB8C
ov61_0222DB8C: @ 0x0222DB8C
	ldr ip, _0222DB94 @ =FUN_020C24A4
	bx ip
	.align 2, 0
_0222DB94: .4byte FUN_020C24A4
	arm_func_end ov61_0222DB8C

	arm_func_start ov61_0222DB98
ov61_0222DB98: @ 0x0222DB98
	push {r4, r5, lr}
	sub sp, sp, #0x17c
	ldr r0, _0222DCD0 @ =0x0222E764
	ldr r0, [r0, #0x138]
	cmp r0, #1
	addeq sp, sp, #0x17c
	moveq r0, #1
	popeq {r4, r5, pc}
	ldr r0, _0222DCD4 @ =0x0222E638
	add r1, sp, #8
	bl FUN_021D8144
	cmp r0, #0
	bne _0222DBE4
	ldr r0, _0222DCD0 @ =0x0222E764
	mov r1, #0xe
	str r1, [r0, #0x250]
	add sp, sp, #0x17c
	mov r0, #0
	pop {r4, r5, pc}
_0222DBE4:
	ldr r4, _0222DCD0 @ =0x0222E764
	mov r5, #1
_0222DBEC:
	bl FUN_021D81B8
	cmp r0, #3
	bne _0222DC40
	ldr r4, _0222DCD8 @ =0x0222E76A
	add r3, sp, #0x4d
	mov r2, #0x96
_0222DC04:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [r4]
	strb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	bne _0222DC04
	ldrb r2, [r3]
	ldr r1, _0222DCD0 @ =0x0222E764
	mov r0, #1
	strb r2, [r4]
	str r0, [r1, #0x138]
	add sp, sp, #0x17c
	pop {r4, r5, pc}
_0222DC40:
	cmp r0, #4
	bne _0222DC6C
	add r0, sp, #0
	add r1, sp, #4
	bl FUN_021D75F4
	ldr r0, _0222DCD0 @ =0x0222E764
	mov r1, #0xe
	str r1, [r0, #0x250]
	add sp, sp, #0x17c
	mov r0, #0
	pop {r4, r5, pc}
_0222DC6C:
	cmp r0, #5
	bne _0222DC8C
	ldr r0, _0222DCD0 @ =0x0222E764
	mov r1, #0xe
	str r1, [r0, #0x250]
	add sp, sp, #0x17c
	mov r0, #0
	pop {r4, r5, pc}
_0222DC8C:
	bl ov61_0222D4C8
	ldr r0, [r4, #0x268]
	cmp r0, #1
	bne _0222DCB8
	ldr r0, _0222DCD0 @ =0x0222E764
	mov r1, #0xd
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	add sp, sp, #0x17c
	mov r0, #0
	pop {r4, r5, pc}
_0222DCB8:
	bl ov61_0222D4DC
	mov r0, r5
	bl ov61_0222DB8C
	b _0222DBEC
_0222DCC8:
	.byte 0x5F, 0xDF, 0x8D, 0xE2, 0x30, 0x80, 0xBD, 0xE8
_0222DCD0: .4byte 0x0222E764
_0222DCD4: .4byte 0x0222E638
_0222DCD8: .4byte 0x0222E76A
	arm_func_end ov61_0222DB98

	arm_func_start ov61_0222DCDC
ov61_0222DCDC: @ 0x0222DCDC
	ldr ip, _0222DCF0 @ =ov61_0222CF40
	mov r2, r0
	ldr r0, _0222DCF4 @ =0x0222E63C
	ldr r1, _0222DCF8 @ =0x00003070
	bx ip
	.align 2, 0
_0222DCF0: .4byte ov61_0222CF40
_0222DCF4: .4byte 0x0222E63C
_0222DCF8: .4byte 0x00003070
	arm_func_end ov61_0222DCDC

	arm_func_start ov61_0222DCFC
ov61_0222DCFC: @ 0x0222DCFC
	ldr ip, _0222DD04 @ =ov61_0222CEDC
	bx ip
	.align 2, 0
_0222DD04: .4byte ov61_0222CEDC
	arm_func_end ov61_0222DCFC

	arm_func_start ov61_0222DD08
ov61_0222DD08: @ 0x0222DD08
	push {r4, lr}
	bl ov61_0222D4C8
	bl ov61_0222D3E8
	mov r4, r0
	bl ov61_0222D4DC
	mov r0, r4
	pop {r4, pc}
	arm_func_end ov61_0222DD08

	arm_func_start ov61_0222DD24
ov61_0222DD24: @ 0x0222DD24
	ldr ip, _0222DD2C @ =ov61_0222D464
	bx ip
	.align 2, 0
_0222DD2C: .4byte ov61_0222D464
	arm_func_end ov61_0222DD24

	arm_func_start ov61_0222DD30
ov61_0222DD30: @ 0x0222DD30
	push {r4, r5, r6, lr}
	sub sp, sp, #0xe0
	mov r6, r0
	add lr, sp, #0
	mov r5, r1
	mov r4, r6
	mov ip, #0xe
_0222DD4C:
	ldm r4!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222DD4C
	ldr r1, _0222DD84 @ =0x0222E658
	mov r0, r6
	bl ov61_0222E478
	ldr r0, _0222DD88 @ =0x00004E20
	add r1, sp, #0
	mov r2, r5
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0xe0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222DD84: .4byte 0x0222E658
_0222DD88: .4byte 0x00004E20
	arm_func_end ov61_0222DD30

	arm_func_start ov61_0222DD8C
ov61_0222DD8C: @ 0x0222DD8C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov lr, #0
	asr ip, r0, #0x1f
	str r0, [sp, #4]
	mov r2, r1
	ldr r0, _0222DDC8 @ =0x00004E21
	add r1, sp, #0
	sub r3, lr, #1
	strh lr, [sp]
	strh lr, [sp, #2]
	str ip, [sp, #8]
	bl ov61_0222D1FC
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_0222DDC8: .4byte 0x00004E21
	arm_func_end ov61_0222DD8C

	arm_func_start ov61_0222DDCC
ov61_0222DDCC: @ 0x0222DDCC
	push {r4, r5, r6, lr}
	sub sp, sp, #0x220
	mov r6, r1
	add lr, sp, #4
	mov r5, r2
	mov r4, r6
	str r0, [sp]
	mov ip, #0x21
_0222DDEC:
	ldm r4!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222DDEC
	ldm r4, {r0, r1, r2}
	stm lr, {r0, r1, r2}
	ldr r1, _0222DE2C @ =0x0222E658
	mov r0, r6
	bl ov61_0222E478
	ldr r0, _0222DE30 @ =0x00005208
	add r1, sp, #0
	mov r2, r5
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0x220
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222DE2C: .4byte 0x0222E658
_0222DE30: .4byte 0x00005208
	arm_func_end ov61_0222DDCC

	arm_func_start ov61_0222DE34
ov61_0222DE34: @ 0x0222DE34
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov lr, #0
	asr ip, r0, #0x1f
	str r0, [sp, #4]
	mov r2, r1
	ldr r0, _0222DE70 @ =0x00005209
	add r1, sp, #0
	sub r3, lr, #1
	strh lr, [sp]
	strh lr, [sp, #2]
	str ip, [sp, #8]
	bl ov61_0222D1FC
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_0222DE70: .4byte 0x00005209
	arm_func_end ov61_0222DE34

	arm_func_start ov61_0222DE74
ov61_0222DE74: @ 0x0222DE74
	ldr ip, _0222DE7C @ =ov61_0222D430
	bx ip
	.align 2, 0
_0222DE7C: .4byte ov61_0222D430
	arm_func_end ov61_0222DE74

	arm_func_start ov61_0222DE80
ov61_0222DE80: @ 0x0222DE80
	ldr ip, _0222DE88 @ =ov61_0222D3F8
	bx ip
	.align 2, 0
_0222DE88: .4byte ov61_0222D3F8
	arm_func_end ov61_0222DE80

	arm_func_start ov61_0222DE8C
ov61_0222DE8C: @ 0x0222DE8C
	ldr ip, _0222DE94 @ =ov61_0222E2A8
	bx ip
	.align 2, 0
_0222DE94: .4byte ov61_0222E2A8
	arm_func_end ov61_0222DE8C

	arm_func_start ov61_0222DE98
ov61_0222DE98: @ 0x0222DE98
	ldr ip, _0222DEB0 @ =ov61_0222D1FC
	mov r1, #0
	mov r2, r0
	ldr r0, _0222DEB4 @ =0x000055F0
	sub r3, r1, #1
	bx ip
	.align 2, 0
_0222DEB0: .4byte ov61_0222D1FC
_0222DEB4: .4byte 0x000055F0
	arm_func_end ov61_0222DE98

	arm_func_start ov61_0222DEB8
ov61_0222DEB8: @ 0x0222DEB8
	push {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r4, r1
	add lr, sp, #0
	ldm r5!, {r0, r1, r2, r3}
	mov ip, lr
	stm lr!, {r0, r1, r2, r3}
	ldm r5!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	ldr r0, [r5]
	mov r1, ip
	str r0, [lr]
	ldr r0, _0222DF04 @ =0x000055F1
	mov r2, r4
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0x24
	pop {r4, r5, pc}
	.align 2, 0
_0222DF04: .4byte 0x000055F1
	arm_func_end ov61_0222DEB8

	arm_func_start ov61_0222DF08
ov61_0222DF08: @ 0x0222DF08
	push {r4, r5, lr}
	sub sp, sp, #0x14c
	sub sp, sp, #0x1c00
	add lr, sp, #0
	mov r5, r0
	mov r4, r1
	mov ip, #0x1d4
_0222DF24:
	ldm r5!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222DF24
	ldm r5, {r0, r1, r2}
	stm lr, {r0, r1, r2}
	ldr r0, _0222DF5C @ =0x000059D8
	add r1, sp, #0
	mov r2, r4
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0x14c
	add sp, sp, #0x1c00
	pop {r4, r5, pc}
	.align 2, 0
_0222DF5C: .4byte 0x000059D8
	arm_func_end ov61_0222DF08

	arm_func_start ov61_0222DF60
ov61_0222DF60: @ 0x0222DF60
	push {r3, r4, lr}
	sub sp, sp, #0x1c
	mov lr, #0
	add ip, sp, #4
	strh lr, [sp]
	mov r4, r1
	ldm r0, {r0, r1, r2, r3}
	stm ip, {r0, r1, r2, r3}
	ldr r0, _0222DFA4 @ =0x000059D9
	add r1, sp, #0
	mov r2, r4
	sub r3, lr, #1
	strh lr, [sp]
	strh lr, [sp, #2]
	bl ov61_0222D1FC
	add sp, sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_0222DFA4: .4byte 0x000059D9
	arm_func_end ov61_0222DF60

	arm_func_start ov61_0222DFA8
ov61_0222DFA8: @ 0x0222DFA8
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	mov r2, r1
	add r1, sp, #0
	mov ip, #0
	mov r3, #1
	str ip, [r1]
	strh r3, [sp]
	str ip, [r1, #4]
	str ip, [r1, #8]
	str ip, [r1, #0xc]
	str ip, [r1, #0x10]
	str ip, [r1, #0x14]
	str ip, [r1, #0x18]
	ldr ip, [r0]
	ldr r0, _0222DFFC @ =0x000059D9
	sub r3, r3, #2
	str ip, [sp, #0xc]
	bl ov61_0222D1FC
	add sp, sp, #0x1c
	ldm sp!, {pc}
	.align 2, 0
_0222DFFC: .4byte 0x000059D9
	arm_func_end ov61_0222DFA8

	arm_func_start ov61_0222E000
ov61_0222E000: @ 0x0222E000
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	mov r2, r1
	add r1, sp, #0
	mov ip, #0
	mov r3, #2
	str ip, [r1]
	strh r3, [sp]
	str ip, [r1, #4]
	str ip, [r1, #8]
	str ip, [r1, #0xc]
	str ip, [r1, #0x10]
	str ip, [r1, #0x14]
	str ip, [r1, #0x18]
	ldr ip, [r0]
	ldr r0, _0222E054 @ =0x000059D9
	sub r3, r3, #3
	str ip, [sp, #0xc]
	bl ov61_0222D1FC
	add sp, sp, #0x1c
	ldm sp!, {pc}
	.align 2, 0
_0222E054: .4byte 0x000059D9
	arm_func_end ov61_0222E000

	arm_func_start ov61_0222E058
ov61_0222E058: @ 0x0222E058
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r2, r3
	ldr r0, _0222E088 @ =0x000059DA
	add r1, sp, #0
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_0222E088: .4byte 0x000059DA
	arm_func_end ov61_0222E058

	arm_func_start ov61_0222E08C
ov61_0222E08C: @ 0x0222E08C
	push {r3, lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0222E0B4 @ =0x000059DB
	add r1, sp, #0
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_0222E0B4: .4byte 0x000059DB
	arm_func_end ov61_0222E08C

	arm_func_start ov61_0222E0B8
ov61_0222E0B8: @ 0x0222E0B8
	push {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	pople {r3, r4, r5, pc}
	ldr lr, _0222E10C @ =0x0222E65C
	mov ip, r5
_0222E0D0:
	cmp r5, #0
	moveq r4, ip
	beq _0222E0F0
	ldrb r4, [r0]
	add r3, r5, r1
	add r3, r4, r3
	and r3, r3, #0xff
	ldrb r4, [lr, r3]
_0222E0F0:
	ldrb r3, [r0, r5]
	add r5, r5, #1
	cmp r5, r1
	eor r3, r4, r3
	strb r3, [r2], #1
	blt _0222E0D0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222E10C: .4byte 0x0222E65C
	arm_func_end ov61_0222E0B8

	arm_func_start ov61_0222E110
ov61_0222E110: @ 0x0222E110
	push {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	pople {r3, r4, r5, pc}
	ldr lr, _0222E164 @ =0x0222E65C
	mov ip, r5
_0222E128:
	cmp r5, #0
	moveq r4, ip
	beq _0222E148
	ldrb r4, [r0]
	add r3, r5, r1
	add r3, r4, r3
	and r3, r3, #0xff
	ldrb r4, [lr, r3]
_0222E148:
	ldrb r3, [r2, r5]
	eor r3, r3, r4
	strb r3, [r2, r5]
	add r5, r5, #1
	cmp r5, r1
	blt _0222E128
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222E164: .4byte 0x0222E65C
	arm_func_end ov61_0222E110

	arm_func_start ov61_0222E168
ov61_0222E168: @ 0x0222E168
	ldr r2, _0222E294 @ =0x00005209
	cmp r0, r2
	bgt _0222E1C0
	bge _0222E24C
	sub r1, r2, #0x3e8
	cmp r0, r1
	bgt _0222E1B0
	ldr r1, _0222E298 @ =0x00004E20
	cmp r0, r1
	blt _0222E1A4
	beq _0222E234
	add r1, r1, #1
	cmp r0, r1
	beq _0222E23C
	b _0222E284
_0222E1A4:
	cmp r0, #0
	beq _0222E22C
	b _0222E284
_0222E1B0:
	sub r1, r2, #1
	cmp r0, r1
	beq _0222E244
	b _0222E284
_0222E1C0:
	add r1, r2, #0x3e8
	cmp r0, r1
	bgt _0222E1E0
	bge _0222E25C
	ldr r1, _0222E29C @ =0x000055F0
	cmp r0, r1
	beq _0222E254
	b _0222E284
_0222E1E0:
	ldr r2, _0222E2A0 @ =0x000059D8
	cmp r0, r2
	bgt _0222E1F4
	beq _0222E264
	b _0222E284
_0222E1F4:
	add r1, r2, #3
	cmp r0, r1
	bgt _0222E284
	add r1, r2, #1
	cmp r0, r1
	blt _0222E284
	beq _0222E26C
	add r1, r2, #2
	cmp r0, r1
	beq _0222E274
	add r1, r2, #3
	cmp r0, r1
	beq _0222E27C
	b _0222E284
_0222E22C:
	mov r0, #0x400
	b _0222E28C
_0222E234:
	mov r0, #0xe0
	b _0222E28C
_0222E23C:
	mov r0, #0xc
	b _0222E28C
_0222E244:
	mov r0, #0x220
	b _0222E28C
_0222E24C:
	mov r0, #0xc
	b _0222E28C
_0222E254:
	mov r0, #0
	b _0222E28C
_0222E25C:
	mov r0, #0x24
	b _0222E28C
_0222E264:
	ldr r0, _0222E2A4 @ =0x00001D4C
	b _0222E28C
_0222E26C:
	mov r0, #0x1c
	b _0222E28C
_0222E274:
	mov r0, #0xc
	b _0222E28C
_0222E27C:
	mov r0, #8
	b _0222E28C
_0222E284:
	mvn r0, #0
	bx lr
_0222E28C:
	add r0, r0, #0x140
	bx lr
	.align 2, 0
_0222E294: .4byte 0x00005209
_0222E298: .4byte 0x00004E20
_0222E29C: .4byte 0x000055F0
_0222E2A0: .4byte 0x000059D8
_0222E2A4: .4byte 0x00001D4C
	arm_func_end ov61_0222E168

	arm_func_start ov61_0222E2A8
ov61_0222E2A8: @ 0x0222E2A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	ldr r6, _0222E458 @ =0x0222E580
	add lr, sp, #0
	mov ip, r0
	mov r5, lr
	ldm r6!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	ldm r6!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	ldr r4, _0222E45C @ =0x00005209
	ldm r6, {r0, r1, r2, r3}
	stm lr, {r0, r1, r2, r3}
	cmp ip, r4
	bgt _0222E340
	bge _0222E408
	ldr r1, _0222E460 @ =0x00004E20
	cmp ip, r1
	bgt _0222E31C
	bge _0222E3F0
	cmp ip, #0
	bgt _0222E440
	mvn r6, #0
	cmp ip, r6
	blt _0222E440
	beq _0222E3AC
	cmp ip, #0
	beq _0222E3E8
	b _0222E440
_0222E31C:
	add r0, r1, #1
	cmp ip, r0
	bgt _0222E330
	beq _0222E3F8
	b _0222E440
_0222E330:
	add r0, r1, #0x3e8
	cmp ip, r0
	beq _0222E400
	b _0222E440
_0222E340:
	add r0, r4, #0x3e8
	cmp ip, r0
	bgt _0222E360
	bge _0222E418
	ldr r0, _0222E464 @ =0x000055F0
	cmp ip, r0
	beq _0222E410
	b _0222E440
_0222E360:
	ldr r1, _0222E468 @ =0x000059D8
	cmp ip, r1
	bgt _0222E374
	beq _0222E420
	b _0222E440
_0222E374:
	add r0, r1, #3
	cmp ip, r0
	bgt _0222E440
	add r0, r1, #1
	cmp ip, r0
	blt _0222E440
	beq _0222E428
	add r0, r1, #2
	cmp ip, r0
	beq _0222E430
	add r0, r1, #3
	cmp ip, r0
	beq _0222E438
	b _0222E440
_0222E3AC:
	mov r7, #0
	mov r4, r6
_0222E3B4:
	ldr r0, [r5, r7, lsl #2]
	cmp r0, r4
	beq _0222E3D4
	bl ov61_0222E2A8
	cmp r0, r6
	movgt r6, r0
	add r7, r7, #1
	b _0222E3B4
_0222E3D4:
	mvn r0, #0
	cmp r6, r0
	bne _0222E44C
	add sp, sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0222E3E8:
	mov r6, #0x400
	b _0222E44C
_0222E3F0:
	mov r6, #8
	b _0222E44C
_0222E3F8:
	ldr r6, _0222E46C @ =0x0000093C
	b _0222E44C
_0222E400:
	mov r6, #8
	b _0222E44C
_0222E408:
	ldr r6, _0222E470 @ =0x00002B74
	b _0222E44C
_0222E410:
	mov r6, #4
	b _0222E44C
_0222E418:
	mov r6, #0x630
	b _0222E44C
_0222E420:
	mov r6, #8
	b _0222E44C
_0222E428:
	ldr r6, _0222E474 @ =0x00001C24
	b _0222E44C
_0222E430:
	sub r6, r1, #0x3c80
	b _0222E44C
_0222E438:
	mov r6, #0
	b _0222E44C
_0222E440:
	add sp, sp, #0x30
	mvn r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222E44C:
	add r0, r6, #8
	add sp, sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222E458: .4byte 0x0222E580
_0222E45C: .4byte 0x00005209
_0222E460: .4byte 0x00004E20
_0222E464: .4byte 0x000055F0
_0222E468: .4byte 0x000059D8
_0222E46C: .4byte 0x0000093C
_0222E470: .4byte 0x00002B74
_0222E474: .4byte 0x00001C24
	arm_func_end ov61_0222E2A8

	arm_func_start ov61_0222E478
ov61_0222E478: @ 0x0222E478
	bx lr
	arm_func_end ov61_0222E478
	@ 0x0222E47C
