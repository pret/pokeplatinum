	.include "macros/function.inc"


	.text

	thumb_func_start ov97_0222AE60
ov97_0222AE60: @ 0x0222AE60
	movs r0, #0
	bx lr
	thumb_func_end ov97_0222AE60

	thumb_func_start ov97_0222AE64
ov97_0222AE64: @ 0x0222AE64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	adds r5, r0, #0
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	bne _0222AEDC
	movs r1, #0x55
	movs r0, #0
	adds r3, r5, #0
	lsls r1, r1, #2
_0222AE80:
	ldr r2, [r3, r1]
	cmp r2, #1
	bne _0222AED2
	lsls r1, r0, #2
	adds r3, r5, r1
	movs r1, #0x55
	adds r6, r0, #0
	movs r2, #0
	lsls r1, r1, #2
	str r2, [r3, r1]
	movs r3, #0x1c
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r1, r1, #4
	ldr r7, _0222AF10 @ =0x0223DF54
	muls r6, r3, r6
	adds r4, r7, r6
	ldr r3, [r4, #0x10]
	add r0, sp, #8
	adds r1, r5, r1
	bl ov97_02237808
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, sp, #8
	movs r3, #0x13
	bl ov97_02237858
	ldr r0, [r4, #0x14]
	add r1, sp, #8
	str r0, [sp]
	ldr r0, [r5]
	ldr r2, [r7, r6]
	ldr r3, [r4, #4]
	bl ov97_0223795C
	add sp, #0x5c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0222AED2:
	adds r0, r0, #1
	adds r3, r3, #4
	cmp r0, #1
	blt _0222AE80
	b _0222AF08
_0222AEDC:
	ldr r0, _0222AF14 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _0222AF02
	ldr r0, _0222AF18 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_0222AF02:
	add sp, #0x5c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0222AF08:
	movs r0, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0222AF10: .4byte 0x0223DF54
_0222AF14: .4byte 0x021BF67C
_0222AF18: .4byte 0x000005DC
	thumb_func_end ov97_0222AE64

	thumb_func_start ov97_0222AF1C
ov97_0222AF1C: @ 0x0222AF1C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	bl ov97_02235D2C
	movs r4, #0
	str r4, [r5, #0x24]
	cmp r0, #0
	bne _0222AF86
	bl ov97_02235DB0
	cmp r0, #4
	bhi _0222AF5E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222AF42: @ jump table
	.2byte _0222AF4C - _0222AF42 - 2 @ case 0
	.2byte _0222AF50 - _0222AF42 - 2 @ case 1
	.2byte _0222AF54 - _0222AF42 - 2 @ case 2
	.2byte _0222AF58 - _0222AF42 - 2 @ case 3
	.2byte _0222AF5C - _0222AF42 - 2 @ case 4
_0222AF4C:
	movs r4, #2
	b _0222AF5E
_0222AF50:
	movs r4, #1
	b _0222AF5E
_0222AF54:
	movs r4, #5
	b _0222AF5E
_0222AF58:
	movs r4, #4
	b _0222AF5E
_0222AF5C:
	movs r4, #3
_0222AF5E:
	adds r0, r4, #0
	bl FUN_02017B70
	ldr r0, [r5, #8]
	bl FUN_02027474
	cmp r0, #0
	beq _0222AF86
	bl ov97_02235DBC
	ldr r1, _0222AF88 @ =0x020E4C44
	ldrb r1, [r1]
	cmp r1, r0
	bne _0222AF86
	bl ov97_02235DB0
	adds r0, r0, #1
	str r0, [r5, #0x24]
	bl ov97_02238440
_0222AF86:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222AF88: .4byte 0x020E4C44
	thumb_func_end ov97_0222AF1C

	thumb_func_start ov97_0222AF8C
ov97_0222AF8C: @ 0x0222AF8C
	push {r4, lr}
	movs r1, #0x49
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	subs r0, #0xa
	cmp r0, #4
	bhi _0222B07A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222AFA8: @ jump table
	.2byte _0222AFB2 - _0222AFA8 - 2 @ case 0
	.2byte _0222AFB8 - _0222AFA8 - 2 @ case 1
	.2byte _0222B07A - _0222AFA8 - 2 @ case 2
	.2byte _0222AFEA - _0222AFA8 - 2 @ case 3
	.2byte _0222B06E - _0222AFA8 - 2 @ case 4
_0222AFB2:
	movs r0, #0xb
	str r0, [r4, r1]
	pop {r4, pc}
_0222AFB8:
	ldr r0, [r4, #4]
	bl FUN_02037D48
	movs r1, #0x78
	adds r0, r1, #0
	adds r0, #0xb0
	str r1, [r4, r0]
	movs r0, #0xd
	adds r1, #0xac
	str r0, [r4, r1]
	movs r0, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x14]
	bl FUN_0202DEC4
	cmp r0, #1
	bne _0222B07A
	ldr r1, [r4, #0x40]
	movs r0, #1
	orrs r1, r0
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x44]
	orrs r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
_0222AFEA:
	adds r1, #0xc
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0222B07A
	bl FUN_02037DA0
	ldr r1, [r4, #0x40]
	bics r0, r1
	beq _0222B050
	movs r2, #0x4b
	lsls r2, r2, #2
	ldr r3, [r4, r2]
	cmp r3, #0xf
	bne _0222B050
	adds r2, r2, #4
	ldr r2, [r4, r2]
	cmp r2, #0
	bne _0222B050
	cmp r1, r0
	beq _0222B050
	movs r2, #1
	adds r1, r0, #0
	str r2, [r4, #0x48]
	tst r1, r2
	beq _0222B020
	str r2, [r4, #0x34]
	adds r0, r2, #0
_0222B020:
	movs r1, #2
	adds r2, r0, #0
	tst r2, r1
	beq _0222B02E
	movs r0, #1
	str r0, [r4, #0x2c]
	adds r0, r1, #0
_0222B02E:
	movs r1, #4
	adds r2, r0, #0
	tst r2, r1
	beq _0222B03C
	movs r0, #1
	str r0, [r4, #0x30]
	adds r0, r1, #0
_0222B03C:
	movs r1, #3
	tst r1, r0
	beq _0222B04A
	movs r1, #0x15
	movs r2, #1
	lsls r1, r1, #4
	str r2, [r4, r1]
_0222B04A:
	ldr r1, [r4, #0x40]
	orrs r0, r1
	str r0, [r4, #0x40]
_0222B050:
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222B07A
	bl FUN_02037D84
	movs r0, #0x49
	movs r1, #0xc
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_0222B06E:
	bl FUN_02037D84
	movs r0, #0x49
	movs r1, #0xc
	lsls r0, r0, #2
	str r1, [r4, r0]
_0222B07A:
	pop {r4, pc}
	thumb_func_end ov97_0222AF8C

	thumb_func_start ov97_0222B07C
ov97_0222B07C: @ 0x0222B07C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	movs r1, #0x4b
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	subs r0, #0xf
	cmp r0, #4
	bls _0222B090
	b _0222B230
_0222B090:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222B09C: @ jump table
	.2byte _0222B0A6 - _0222B09C - 2 @ case 0
	.2byte _0222B0CE - _0222B09C - 2 @ case 1
	.2byte _0222B0FA - _0222B09C - 2 @ case 2
	.2byte _0222B1CE - _0222B09C - 2 @ case 3
	.2byte _0222B210 - _0222B09C - 2 @ case 4
_0222B0A6:
	adds r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222B0B4
	add sp, #0x60
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222B0B4:
	adds r0, r1, #4
	ldr r0, [r4, r0]
	subs r2, r0, #1
	adds r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222B0C8
	movs r0, #0x10
	str r0, [r4, r1]
_0222B0C8:
	add sp, #0x60
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222B0CE:
	movs r0, #0
	str r0, [sp]
	movs r0, #0x51
	str r0, [sp, #4]
	movs r1, #1
	ldr r0, [r4]
	adds r2, r1, #0
	movs r3, #2
	bl FUN_0200DAA4
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02019EBC
	ldr r1, _0222B238 @ =0x00006B5A
	ldr r0, _0222B23C @ =0x05000042
	strh r1, [r0]
	movs r0, #0x4b
	movs r1, #0x11
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _0222B230
_0222B0FA:
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	adds r1, #0x10
	str r0, [sp, #4]
	add r0, sp, #0xc
	adds r1, r4, r1
	movs r2, #0
	movs r3, #0xe
	bl ov97_02237808
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x40]
	mvns r0, r0
	ands r0, r1
	movs r1, #1
	adds r2, r0, #0
	tst r2, r1
	beq _0222B12E
	ldr r2, [r4, #0x38]
	tst r1, r2
	beq _0222B12A
	ldr r5, _0222B240 @ =0x0223DFB0
	b _0222B14E
_0222B12A:
	ldr r5, _0222B244 @ =0x0223DFC4
	b _0222B14E
_0222B12E:
	movs r1, #2
	adds r2, r0, #0
	tst r2, r1
	beq _0222B144
	ldr r2, [r4, #0x38]
	tst r1, r2
	beq _0222B140
	ldr r5, _0222B248 @ =0x0223DFD8
	b _0222B14E
_0222B140:
	ldr r5, _0222B24C @ =0x0223DFEC
	b _0222B14E
_0222B144:
	movs r1, #0x80
	tst r1, r0
	beq _0222B14E
	ldr r5, _0222B250 @ =0x0223E000
	movs r0, #0
_0222B14E:
	ldr r1, [r4, #0x44]
	movs r3, #0x13
	orrs r0, r1
	str r0, [r4, #0x44]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	add r0, sp, #0xc
	bl ov97_02237858
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x10]
	add r1, sp, #0xc
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [r5]
	ldr r3, [r5, #4]
	bl ov97_0223795C
	ldr r0, [sp, #0x1c]
	bl FUN_0201C29C
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	bl FUN_0201C2A0
	adds r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl FUN_0201C294
	adds r5, r0, #0
	ldr r0, [sp, #0x1c]
	bl FUN_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #1
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_02019E2C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x4d
	movs r1, #0x1e
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r1, #0x12
	subs r0, #8
	str r1, [r4, r0]
	b _0222B230
_0222B1CE:
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222B1E6
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r4, r0]
	adds r1, #8
	subs r0, r0, #1
	str r0, [r4, r1]
	b _0222B230
_0222B1E6:
	ldr r0, _0222B254 @ =0x021BF67C
	ldr r2, [r0, #0x48]
	movs r0, #3
	tst r0, r2
	beq _0222B230
	adds r1, #0x10
	adds r0, r4, r1
	bl FUN_0201A8FC
	movs r0, #0x4b
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _0222B254 @ =0x021BF67C
	adds r0, #0xc
	ldr r1, [r1, #0x48]
	str r1, [r4, r0]
	ldr r0, _0222B258 @ =0x000005DC
	bl FUN_02005748
	b _0222B230
_0222B210:
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x4b
	movs r1, #0xf
	lsls r0, r0, #2
	str r1, [r4, r0]
_0222B230:
	movs r0, #1
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B238: .4byte 0x00006B5A
_0222B23C: .4byte 0x05000042
_0222B240: .4byte 0x0223DFB0
_0222B244: .4byte 0x0223DFC4
_0222B248: .4byte 0x0223DFD8
_0222B24C: .4byte 0x0223DFEC
_0222B250: .4byte 0x0223E000
_0222B254: .4byte 0x021BF67C
_0222B258: .4byte 0x000005DC
	thumb_func_end ov97_0222B07C

	thumb_func_start ov97_0222B25C
ov97_0222B25C: @ 0x0222B25C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	subs r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, r1
	beq _0222B2E4
	subs r1, r1, r0
	asrs r0, r1, #1
	lsrs r0, r0, #0x1e
	adds r0, r1, r0
	asrs r0, r0, #2
	asrs r2, r0, #0x1f
	adds r1, r0, #0
	eors r1, r2
	subs r2, r1, r2
	movs r1, #3
	lsls r1, r1, #0xe
	cmp r2, r1
	ble _0222B292
	cmp r0, #0
	ble _0222B290
	adds r0, r1, #0
	b _0222B292
_0222B290:
	ldr r0, _0222B2E8 @ =0xFFFF4000
_0222B292:
	movs r1, #0x47
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	adds r0, r1, #4
	ldr r0, [r4, r0]
	ldr r2, [r4, r1]
	subs r2, r0, r2
	asrs r3, r2, #0x1f
	eors r2, r3
	subs r3, r2, r3
	adds r2, r1, #0
	adds r2, #0xe4
	cmp r3, r2
	bge _0222B2B4
	str r0, [r4, r1]
_0222B2B4:
	movs r3, #0x47
	lsls r3, r3, #2
	ldr r5, [r4, r3]
	ldr r0, [r4]
	asrs r3, r5, #0xb
	lsrs r3, r3, #0x14
	adds r3, r5, r3
	movs r1, #0
	movs r2, #3
	asrs r3, r3, #0xc
	bl FUN_0201C63C
	movs r3, #0x47
	lsls r3, r3, #2
	ldr r0, [r4]
	ldr r4, [r4, r3]
	movs r1, #2
	asrs r3, r4, #0xb
	lsrs r3, r3, #0x14
	adds r3, r4, r3
	movs r2, #3
	asrs r3, r3, #0xc
	bl FUN_0201C63C
_0222B2E4:
	pop {r3, r4, r5, pc}
	nop
_0222B2E8: .4byte 0xFFFF4000
	thumb_func_end ov97_0222B25C

	thumb_func_start ov97_0222B2EC
ov97_0222B2EC: @ 0x0222B2EC
	push {r3, r4, r5, lr}
	sub sp, #0x40
	ldr r5, _0222B3E8 @ =0x0223D694
	adds r4, r0, #0
	add r3, sp, #0x18
	movs r2, #5
_0222B2F8:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222B2F8
	ldr r3, _0222B3EC @ =0x0223D684
	add r2, sp, #8
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	add r0, sp, #0x18
	bl FUN_0201FE94
	add r0, sp, #8
	bl FUN_02018368
	movs r1, #0
	str r1, [sp]
	movs r3, #0xf
	ldr r0, [r4]
	movs r2, #2
	lsls r3, r3, #0xc
	bl ov97_022376FC
	ldr r1, _0222B3F0 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	movs r3, #0x51
	bics r2, r0
	movs r0, #2
	orrs r0, r2
	strh r0, [r1]
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	bl FUN_02019690
	movs r0, #2
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r1, #1
	movs r3, #0x36
	ldr r0, [r4]
	adds r2, r1, #0
	lsls r3, r3, #0xa
	bl ov97_022376FC
	ldr r1, _0222B3F4 @ =0x0400000A
	movs r0, #3
	ldrh r2, [r1]
	movs r3, #0x51
	bics r2, r0
	movs r0, #1
	orrs r2, r0
	strh r2, [r1]
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	movs r0, #0
	str r0, [sp]
	movs r1, #2
	movs r3, #0xe
	ldr r0, [r4]
	adds r2, r1, #0
	lsls r3, r3, #0xc
	bl ov97_022376FC
	ldr r1, _0222B3F8 @ =0x0400000C
	movs r0, #3
	ldrh r2, [r1]
	movs r3, #0x51
	bics r2, r0
	strh r2, [r1]
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	bl FUN_0201D710
	movs r0, #0
	movs r1, #0x20
	movs r2, #0x51
	bl FUN_02002E7C
	movs r0, #0
	adds r1, r0, #0
	movs r2, #0x51
	bl FUN_02002E7C
	movs r2, #5
	movs r1, #0
	lsls r2, r2, #0x18
	ldr r0, _0222B3FC @ =0x00006B5A
	strh r1, [r2]
	strh r0, [r2, #0x3e]
	str r1, [sp]
	movs r0, #0x51
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r2, #1
	movs r3, #2
	bl FUN_0200DAA4
	movs r0, #1
	str r0, [sp]
	movs r0, #0x51
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r1, #0
	movs r2, #0xa
	movs r3, #3
	bl FUN_0200DAA4
	ldr r1, _0222B3FC @ =0x00006B5A
	ldr r0, _0222B400 @ =0x05000042
	strh r1, [r0]
	add sp, #0x40
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222B3E8: .4byte 0x0223D694
_0222B3EC: .4byte 0x0223D684
_0222B3F0: .4byte 0x04000008
_0222B3F4: .4byte 0x0400000A
_0222B3F8: .4byte 0x0400000C
_0222B3FC: .4byte 0x00006B5A
_0222B400: .4byte 0x05000042
	thumb_func_end ov97_0222B2EC

	thumb_func_start ov97_0222B404
ov97_0222B404: @ 0x0222B404
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl ov97_02237A20
	bl ov97_02237A74
	movs r0, #0x29
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0x2b
	movs r2, #0x28
	movs r3, #0x2a
	bl ov97_02237B0C
	movs r0, #0
	movs r1, #0x5a
	str r0, [sp]
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r2, #0x80
	movs r3, #8
	bl ov97_02237D14
	movs r1, #0x5a
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #1
	movs r1, #0x5b
	str r0, [sp]
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r0, #0
	movs r2, #0x80
	movs r3, #0xb8
	bl ov97_02237D14
	movs r1, #0x5b
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov97_0222B404

	thumb_func_start ov97_0222B46C
ov97_0222B46C: @ 0x0222B46C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x51
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0x2d
	movs r2, #0
	movs r3, #0x80
	bl FUN_02006E84
	movs r0, #0xe
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0x51
	str r0, [sp, #0xc]
	ldr r2, [r4]
	movs r0, #0x74
	movs r1, #0x2c
	movs r3, #2
	bl FUN_02006E3C
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0222B46C

	thumb_func_start ov97_0222B4AC
ov97_0222B4AC: @ 0x0222B4AC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	movs r1, #2
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_02019FE4
	ldr r1, _0222B4F8 @ =0x00004380
	cmp r7, #2
	bne _0222B4C6
	adds r1, r1, #2
_0222B4C6:
	lsls r2, r6, #5
	adds r3, r4, r2
	lsls r2, r3, #1
	adds r3, r3, #1
	strh r1, [r0, r2]
	adds r2, r1, #1
	lsls r3, r3, #1
	strh r2, [r0, r3]
	adds r3, r1, #0
	adds r2, r6, #1
	lsls r2, r2, #5
	adds r4, r4, r2
	adds r3, #8
	lsls r2, r4, #1
	strh r3, [r0, r2]
	adds r2, r4, #1
	adds r1, #9
	lsls r2, r2, #1
	strh r1, [r0, r2]
	ldr r0, [r5]
	movs r1, #2
	bl FUN_02019448
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B4F8: .4byte 0x00004380
	thumb_func_end ov97_0222B4AC

	thumb_func_start ov97_0222B4FC
ov97_0222B4FC: @ 0x0222B4FC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	adds r6, r2, #0
	movs r1, #2
	bl FUN_02019FE4
	lsls r1, r6, #5
	adds r3, r4, r1
	ldr r1, _0222B538 @ =0x00004384
	lsls r2, r3, #1
	strh r1, [r0, r2]
	adds r2, r3, #1
	lsls r2, r2, #1
	strh r1, [r0, r2]
	adds r2, r6, #1
	lsls r2, r2, #5
	adds r3, r4, r2
	lsls r2, r3, #1
	strh r1, [r0, r2]
	adds r2, r3, #1
	lsls r2, r2, #1
	strh r1, [r0, r2]
	ldr r0, [r5]
	movs r1, #2
	bl FUN_02019448
	pop {r4, r5, r6, pc}
	nop
_0222B538: .4byte 0x00004384
	thumb_func_end ov97_0222B4FC

	thumb_func_start ov97_0222B53C
ov97_0222B53C: @ 0x0222B53C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r0, r2, #0
	adds r7, r3, #0
	ldr r2, [sp, #0x28]
	movs r3, #0x51
	bl FUN_0200B29C
	adds r5, r0, #0
	movs r0, #0
	movs r1, #2
	bl FUN_02002DF8
	adds r2, r0, #0
	movs r0, #0
	adds r1, r5, #0
	bl FUN_02002D7C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0201C294
	lsls r0, r0, #3
	adds r4, #0x20
	subs r3, r0, r4
	ldr r0, [sp, #0x2c]
	movs r1, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r0, r6, #0
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0222B53C

	thumb_func_start ov97_0222B590
ov97_0222B590: @ 0x0222B590
	push {r3, lr}
	sub sp, #8
	adds r2, r1, #0
	cmp r2, #0x64
	blt _0222B5A0
	movs r3, #3
	movs r1, #0
	b _0222B5AE
_0222B5A0:
	cmp r2, #0xa
	blt _0222B5AA
	movs r3, #3
	movs r1, #1
	b _0222B5AE
_0222B5AA:
	movs r3, #2
	movs r1, #1
_0222B5AE:
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0
	bl FUN_0200B60C
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_0222B590

	thumb_func_start ov97_0222B5C0
ov97_0222B5C0: @ 0x0222B5C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r4, r3, #0
	ldr r2, _0222B750 @ =0x00000226
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x51
	bl FUN_0200B144
	str r0, [sp, #0x24]
	movs r0, #0x51
	bl FUN_0200B358
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0xc]
	bl FUN_02025F30
	cmp r0, #1
	bne _0222B5F4
	ldr r0, _0222B754 @ =0x0003040F
	str r0, [sp, #0x1c]
	b _0222B5F8
_0222B5F4:
	ldr r0, _0222B758 @ =0x0007080F
	str r0, [sp, #0x1c]
_0222B5F8:
	ldr r0, [sp, #0x14]
	ldr r1, _0222B75C @ =0x0223E01C
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	movs r2, #3
	ldr r0, [r0]
	adds r3, r4, #0
	bl ov97_0223795C
	ldr r4, _0222B760 @ =0x0223DF44
	movs r6, #1
	movs r5, #0x10
_0222B618:
	cmp r6, #4
	bne _0222B624
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _0222B654
_0222B624:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	ldr r2, [r4]
	movs r3, #0x51
	bl FUN_0200B29C
	adds r7, r0, #0
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r7, #0
	ldr r0, [r0, #0x10]
	movs r3, #0x20
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
_0222B654:
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x10
	cmp r6, #5
	blo _0222B618
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x28]
	ldr r2, [r2, #0xc]
	movs r1, #0
	bl FUN_0200B498
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	bl ov97_0222B53C
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	bl FUN_0202CC58
	adds r1, r0, #0
	ldr r0, [sp, #0x28]
	bl ov97_0222B590
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	bl FUN_0202CC5C
	adds r2, r0, #0
	movs r3, #2
	ldr r0, [sp, #0x28]
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	bl FUN_0200B60C
	movs r0, #0x11
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	bl ov97_0222B53C
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	ldr r2, [sp, #0x10]
	str r3, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r2, [r2, #0x50]
	bl FUN_0200B60C
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	bl ov97_0222B53C
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _0222B712
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #8]
	bl FUN_02026E48
	adds r1, r0, #0
	ldr r0, [sp, #0x28]
	bl ov97_0222B590
	movs r0, #0x12
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	bl ov97_0222B53C
_0222B712:
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #0x18]
	ldr r2, [r2, #0x38]
	ldr r3, [r3, #0x3c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x18
	ldr r0, [r0, #0x10]
	movs r1, #0
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_0200DC48
	ldr r1, _0222B764 @ =0x0223E014
	ldr r0, [sp, #0x20]
	ldr r2, [r1, r0]
	ldr r0, [sp, #0x14]
	lsls r1, r0, #2
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	adds r0, #0xdc
	str r2, [r0]
	ldr r0, [sp, #0x28]
	bl FUN_0200B3F0
	ldr r0, [sp, #0x24]
	bl FUN_0200B190
	movs r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222B750: .4byte 0x00000226
_0222B754: .4byte 0x0003040F
_0222B758: .4byte 0x0007080F
_0222B75C: .4byte 0x0223E01C
_0222B760: .4byte 0x0223DF44
_0222B764: .4byte 0x0223E014
	thumb_func_end ov97_0222B5C0

	thumb_func_start ov97_0222B768
ov97_0222B768: @ 0x0222B768
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	ldr r2, [r4, #0x24]
	adds r6, r3, #0
	cmp r2, #0
	bne _0222B780
	add sp, #4
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0222B780:
	subs r2, r2, #1
	cmp r2, #4
	bhi _0222B7AE
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0222B792: @ jump table
	.2byte _0222B79C - _0222B792 - 2 @ case 0
	.2byte _0222B7A0 - _0222B792 - 2 @ case 1
	.2byte _0222B7A4 - _0222B792 - 2 @ case 2
	.2byte _0222B7A8 - _0222B792 - 2 @ case 3
	.2byte _0222B7AC - _0222B792 - 2 @ case 4
_0222B79C:
	movs r0, #4
	b _0222B7AE
_0222B7A0:
	movs r0, #5
	b _0222B7AE
_0222B7A4:
	movs r0, #6
	b _0222B7AE
_0222B7A8:
	movs r0, #7
	b _0222B7AE
_0222B7AC:
	movs r0, #8
_0222B7AE:
	str r0, [sp]
	ldr r0, [r4]
	movs r2, #3
	adds r3, r6, #0
	bl ov97_0223795C
	adds r0, r4, #0
	movs r1, #0x1a
	adds r2, r6, #0
	bl ov97_0222B4FC
	ldr r0, _0222B7D8 @ =0x0223E014
	lsls r1, r5, #4
	ldr r1, [r0, r1]
	lsls r0, r5, #2
	adds r0, r4, r0
	adds r0, #0xdc
	str r1, [r0]
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222B7D8: .4byte 0x0223E014
	thumb_func_end ov97_0222B768

	thumb_func_start ov97_0222B7DC
ov97_0222B7DC: @ 0x0222B7DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	adds r4, r1, #0
	adds r7, r3, #0
	str r2, [sp, #4]
	cmp r0, #0
	bne _0222B824
	ldr r0, [r5, #0x14]
	bl FUN_0202DEC4
	cmp r0, #1
	bne _0222B7FC
	movs r0, #1
	str r0, [r5, #0x34]
_0222B7FC:
	ldr r0, [r5, #4]
	bl FUN_02025CCC
	bl FUN_02025D64
	cmp r0, #1
	bne _0222B80E
	movs r0, #1
	str r0, [r5, #0x34]
_0222B80E:
	movs r0, #0x51
	bl ov97_02237520
	bl ov97_02237624
	cmp r0, #0
	beq _0222B824
	movs r0, #1
	str r0, [r5, #0x34]
	bl ov97_02238400
_0222B824:
	ldr r0, [r5, #0x34]
	cmp r0, #1
	bne _0222B834
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _0222B834
	movs r0, #0
	str r0, [r5, #0x34]
_0222B834:
	ldr r0, [r5, #0x34]
	cmp r0, #1
	bne _0222B878
	ldr r0, _0222B880 @ =0x0223E01C
	lsls r6, r4, #4
	ldr r0, [r0, r6]
	ldr r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r5]
	movs r2, #3
	adds r3, r7, #0
	bl ov97_0223795C
	adds r0, r5, #0
	movs r1, #0x1a
	adds r2, r7, #0
	bl ov97_0222B4FC
	ldr r0, _0222B884 @ =0x0223E014
	ldr r1, [r0, r6]
	lsls r0, r4, #2
	adds r0, r5, r0
	adds r0, #0xdc
	str r1, [r0]
	ldr r1, [r5, #0x38]
	movs r0, #1
	orrs r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	bl FUN_0202DED4
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222B878:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B880: .4byte 0x0223E01C
_0222B884: .4byte 0x0223E014
	thumb_func_end ov97_0222B7DC

	thumb_func_start ov97_0222B888
ov97_0222B888: @ 0x0222B888
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x2c]
	adds r4, r1, #0
	adds r7, r3, #0
	cmp r0, #1
	bne _0222B8D8
	ldr r0, [r5, #0x4c]
	cmp r0, #1
	bne _0222B8D8
	ldr r0, _0222B8DC @ =0x0223E01C
	lsls r6, r4, #4
	ldr r0, [r0, r6]
	adds r1, r2, #0
	str r0, [sp]
	ldr r0, [r5]
	movs r2, #3
	bl ov97_0223795C
	adds r0, r5, #0
	movs r1, #0x1a
	adds r2, r7, #0
	movs r3, #1
	bl ov97_0222B4AC
	lsls r3, r4, #2
	adds r1, r5, r3
	movs r0, #1
	adds r1, #0xfc
	str r0, [r1]
	ldr r1, _0222B8E0 @ =0x0223E014
	ldr r2, [r1, r6]
	adds r1, r5, r3
	adds r1, #0xdc
	str r2, [r1]
	ldr r2, [r5, #0x38]
	movs r1, #2
	orrs r1, r2
	str r1, [r5, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
_0222B8D8:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B8DC: .4byte 0x0223E01C
_0222B8E0: .4byte 0x0223E014
	thumb_func_end ov97_0222B888

	thumb_func_start ov97_0222B8E4
ov97_0222B8E4: @ 0x0222B8E4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	adds r5, r1, #0
	adds r7, r3, #0
	cmp r0, #1
	bne _0222B926
	ldr r0, _0222B92C @ =0x0223E01C
	lsls r6, r5, #4
	ldr r0, [r0, r6]
	adds r1, r2, #0
	str r0, [sp]
	ldr r0, [r4]
	movs r2, #3
	bl ov97_0223795C
	lsls r5, r5, #2
	adds r0, r4, r5
	movs r3, #1
	adds r0, #0xfc
	str r3, [r0]
	adds r0, r4, #0
	movs r1, #0x1a
	adds r2, r7, #0
	bl ov97_0222B4AC
	ldr r0, _0222B930 @ =0x0223E014
	ldr r1, [r0, r6]
	adds r0, r4, r5
	adds r0, #0xdc
	str r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222B926:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B92C: .4byte 0x0223E01C
_0222B930: .4byte 0x0223E014
	thumb_func_end ov97_0222B8E4

	thumb_func_start ov97_0222B934
ov97_0222B934: @ 0x0222B934
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, _0222B970 @ =0x0223E01C
	lsls r6, r4, #4
	ldr r0, [r0, r6]
	adds r1, r2, #0
	str r0, [sp]
	ldr r0, [r5]
	movs r2, #3
	adds r7, r3, #0
	bl ov97_0223795C
	lsls r4, r4, #2
	adds r0, r5, r4
	movs r3, #2
	adds r0, #0xfc
	str r3, [r0]
	adds r0, r5, #0
	movs r1, #0x1a
	adds r2, r7, #0
	bl ov97_0222B4AC
	ldr r0, _0222B974 @ =0x0223E014
	ldr r1, [r0, r6]
	adds r0, r5, r4
	adds r0, #0xdc
	str r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B970: .4byte 0x0223E01C
_0222B974: .4byte 0x0223E014
	thumb_func_end ov97_0222B934

	thumb_func_start ov97_0222B978
ov97_0222B978: @ 0x0222B978
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, _0222B9B4 @ =0x0223E01C
	lsls r6, r4, #4
	ldr r0, [r0, r6]
	adds r1, r2, #0
	str r0, [sp]
	ldr r0, [r5]
	movs r2, #3
	adds r7, r3, #0
	bl ov97_0223795C
	lsls r4, r4, #2
	adds r0, r5, r4
	movs r1, #0
	adds r0, #0xfc
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0x1a
	adds r2, r7, #0
	bl ov97_0222B4FC
	ldr r0, _0222B9B8 @ =0x0223E014
	ldr r1, [r0, r6]
	adds r0, r5, r4
	adds r0, #0xdc
	str r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B9B4: .4byte 0x0223E01C
_0222B9B8: .4byte 0x0223E014
	thumb_func_end ov97_0222B978

	thumb_func_start ov97_0222B9BC
ov97_0222B9BC: @ 0x0222B9BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #0x13
	str r0, [r7, #0x20]
	ldr r0, [sp, #0xc]
	ldr r4, _0222BAD0 @ =0x0223E014
	str r0, [sp, #0x10]
	adds r0, r7, #0
	str r0, [sp, #8]
	adds r0, #0x5c
	str r0, [sp, #8]
	adds r0, r7, #0
	str r0, [sp, #0x14]
	adds r0, #0x20
	movs r5, #1
	str r7, [sp, #0x18]
	str r0, [sp, #0x14]
_0222B9E4:
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r3, _0222BAD4 @ =0x00000226
	add r0, sp, #0x1c
	movs r2, #1
	bl ov97_02237808
	ldr r2, [r4, #4]
	ldr r3, [r7, #0x20]
	add r0, sp, #0x1c
	movs r1, #0x1a
	bl ov97_02237858
	ldr r0, [r4, #0xc]
	mov ip, r0
	cmp r0, #0
	beq _0222BA84
	ldr r0, [sp, #0x18]
	adds r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0
	beq _0222BA68
	ldr r0, [sp, #0x2c]
	movs r1, #3
	bl FUN_0201C2AC
	lsls r1, r5, #0x18
	ldr r0, [sp, #0x2c]
	lsrs r1, r1, #0x18
	bl FUN_0201C2B0
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x58]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x18
	ldr r0, [sp, #0x2c]
	movs r1, #0
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_0200DC48
	ldr r0, [sp, #0x18]
	adds r0, #0xfc
	ldr r3, [r0]
	cmp r3, #0
	beq _0222BA52
	adds r0, r7, #0
	movs r1, #0x1a
	adds r2, r5, #0
	bl ov97_0222B4AC
	b _0222BA5C
_0222BA52:
	adds r0, r7, #0
	movs r1, #0x1a
	adds r2, r5, #0
	bl ov97_0222B4FC
_0222BA5C:
	ldr r0, [r4, #4]
	adds r0, r0, #2
	adds r5, r5, r0
	movs r0, #1
	str r0, [sp, #0xc]
	b _0222BAA2
_0222BA68:
	ldr r1, [sp, #0x10]
	adds r0, r7, #0
	add r2, sp, #0x1c
	adds r3, r5, #0
	mov r6, ip
	blx r6
	cmp r0, #1
	bne _0222BAA2
	ldr r0, [r4, #4]
	adds r0, r0, #2
	adds r5, r5, r0
	movs r0, #1
	str r0, [sp, #0xc]
	b _0222BAA2
_0222BA84:
	ldr r0, [r4, #8]
	add r1, sp, #0x1c
	str r0, [sp]
	ldr r0, [r7]
	movs r2, #3
	adds r3, r5, #0
	bl ov97_0223795C
	ldr r0, [sp, #0x18]
	ldr r1, [r4]
	adds r0, #0xdc
	str r1, [r0]
	ldr r0, [r4, #4]
	adds r0, r0, #2
	adds r5, r5, r0
_0222BAA2:
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #4]
	ldr r2, [r0]
	movs r0, #0x1a
	muls r0, r1, r0
	adds r1, r2, r0
	ldr r0, [sp, #0x14]
	adds r4, #0x10
	str r1, [r0]
	ldr r0, [sp, #8]
	adds r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	blo _0222B9E4
	ldr r0, [sp, #0xc]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222BAD0: .4byte 0x0223E014
_0222BAD4: .4byte 0x00000226
	thumb_func_end ov97_0222B9BC

	thumb_func_start ov97_0222BAD8
ov97_0222BAD8: @ 0x0222BAD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r7, r0, #0
	adds r4, r7, #0
	str r1, [sp, #0xc]
	movs r6, #0
	adds r4, #0x5c
_0222BAE6:
	adds r0, r4, #0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222BB74
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bne _0222BB36
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xa
	movs r3, #3
	bl FUN_0200DC48
	adds r0, r4, #0
	bl FUN_0201C29C
	str r0, [sp, #0x10]
	adds r0, r4, #0
	bl FUN_0201C2A0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	bl FUN_0201C294
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r7]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	movs r1, #0
	bl FUN_02019E2C
	b _0222BB74
_0222BB36:
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #2
	bl FUN_0200DC48
	adds r0, r4, #0
	bl FUN_0201C29C
	str r0, [sp, #0x18]
	adds r0, r4, #0
	bl FUN_0201C2A0
	str r0, [sp, #0x1c]
	adds r0, r4, #0
	bl FUN_0201C294
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [r7]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	movs r1, #0
	bl FUN_02019E2C
_0222BB74:
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #8
	blo _0222BAE6
	ldr r0, [r7]
	movs r1, #0
	bl FUN_02019448
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0222BAD8

	thumb_func_start ov97_0222BB88
ov97_0222BB88: @ 0x0222BB88
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	ldr r1, [r5, #0x54]
	movs r7, #7
	adds r6, r7, #0
	adds r4, r1, #0
	movs r0, #0
	subs r6, #8
_0222BB9A:
	adds r4, r4, r2
	cmp r4, r6
	bne _0222BBA2
	adds r4, r0, #0
_0222BBA2:
	cmp r4, #8
	bne _0222BBA8
	adds r4, r7, #0
_0222BBA8:
	cmp r4, r1
	beq _0222BBBE
	lsls r3, r4, #2
	adds r3, r5, r3
	adds r3, #0xdc
	ldr r3, [r3]
	cmp r3, #0
	beq _0222BB9A
	ldr r0, _0222BBC4 @ =0x000005DC
	bl FUN_02005748
_0222BBBE:
	str r4, [r5, #0x54]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222BBC4: .4byte 0x000005DC
	thumb_func_end ov97_0222BB88

	thumb_func_start ov97_0222BBC8
ov97_0222BBC8: @ 0x0222BBC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x5c
	lsls r0, r0, #4
	adds r0, r1, r0
	bl FUN_0201C2A0
	subs r0, r0, #1
	lsls r4, r0, #3
	ldr r0, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x5c
	lsls r0, r0, #4
	adds r0, r1, r0
	bl FUN_0201C298
	adds r0, r0, #2
	lsls r3, r0, #3
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r2, [r5, r0]
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	asrs r2, r1, #0xc
	cmp r2, r4
	ble _0222BC06
	lsls r1, r4, #0xc
	str r1, [r5, r0]
_0222BC06:
	adds r2, #0xc0
	cmp r2, r4
	bgt _0222BC18
	adds r0, r4, r3
	subs r0, #0xc0
	lsls r1, r0, #0xc
	movs r0, #0x12
	lsls r0, r0, #4
	str r1, [r5, r0]
_0222BC18:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov97_0222BBC8

	thumb_func_start ov97_0222BC1C
ov97_0222BC1C: @ 0x0222BC1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0x12
	ldr r0, [sp]
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r5, [sp]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r7, r0, #0xc
	adds r0, r7, #0
	str r0, [sp, #0xc]
	adds r0, #0xc0
	ldr r6, [sp, #4]
	adds r5, #0x5c
	str r0, [sp, #0xc]
_0222BC46:
	adds r0, r5, #0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222BC72
	adds r0, r5, #0
	bl FUN_0201C2A0
	subs r0, r0, #1
	lsls r4, r0, #3
	adds r0, r5, #0
	bl FUN_0201C298
	cmp r7, r4
	ble _0222BC68
	movs r0, #1
	str r0, [sp, #8]
_0222BC68:
	ldr r0, [sp, #0xc]
	cmp r0, r4
	bgt _0222BC72
	movs r0, #1
	str r0, [sp, #4]
_0222BC72:
	adds r6, r6, #1
	adds r5, #0x10
	cmp r6, #8
	blo _0222BC46
	movs r1, #0x5a
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #8]
	bl FUN_02021CAC
	movs r1, #0x5b
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #4]
	bl FUN_02021CAC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov97_0222BC1C

	thumb_func_start ov97_0222BC9C
ov97_0222BC9C: @ 0x0222BC9C
	push {r3, r4, r5, r6, r7, lr}
	bl FUN_0200682C
	movs r1, #0x5a
	adds r7, r0, #0
	lsls r1, r1, #2
	ldr r0, [r7, r1]
	cmp r0, #0
	bne _0222BCB6
	adds r1, r1, #4
	ldr r1, [r7, r1]
	cmp r1, #0
	beq _0222BCC8
_0222BCB6:
	bl FUN_02021BD4
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_02021BD4
	bl ov97_02237DA0
_0222BCC8:
	adds r5, r7, #0
	movs r6, #0
	adds r4, r7, #0
	adds r5, #0x5c
_0222BCD0:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0222BCE2
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
_0222BCE2:
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, #0x10
	cmp r6, #8
	blo _0222BCD0
	ldr r0, [r7]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r7]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r7]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r7]
	bl FUN_020181C4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0222BC9C

	thumb_func_start ov97_0222BD14
ov97_0222BD14: @ 0x0222BD14
	movs r1, #0x17
	lsls r1, r1, #4
	ldr r2, [r0, r1]
	lsls r3, r2, #1
	ldr r2, _0222BD40 @ =0x0223DF70
	ldrh r2, [r2, r3]
	cmp r2, #0
	bne _0222BD28
	movs r2, #0
	str r2, [r0, r1]
_0222BD28:
	movs r1, #0x17
	lsls r1, r1, #4
	ldr r3, [r0, r1]
	adds r2, r3, #1
	str r2, [r0, r1]
	ldr r0, _0222BD40 @ =0x0223DF70
	lsls r1, r3, #1
	ldrh r1, [r0, r1]
	ldr r0, _0222BD44 @ =0x0500006C
	strh r1, [r0]
	bx lr
	nop
_0222BD40: .4byte 0x0223DF70
_0222BD44: .4byte 0x0500006C
	thumb_func_end ov97_0222BD14

	thumb_func_start ov97_0222BD48
ov97_0222BD48: @ 0x0222BD48
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200A858
	adds r0, r4, #0
	bl FUN_0201C2B8
	ldr r3, _0222BD68 @ =0x027E0000
	ldr r1, _0222BD6C @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_0222BD68: .4byte 0x027E0000
_0222BD6C: .4byte 0x00003FF8
	thumb_func_end ov97_0222BD48

	thumb_func_start ov97_0222BD70
ov97_0222BD70: @ 0x0222BD70
	push {r3, r4, r5, lr}
	movs r2, #1
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x51
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	movs r1, #0x5d
	adds r0, r5, #0
	lsls r1, r1, #2
	movs r2, #0x51
	bl FUN_0200681C
	movs r2, #0x5d
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x51
	bl FUN_02018340
	str r0, [r4]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	adds r0, r5, #0
	bl FUN_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl FUN_0202442C
	str r0, [r4, #0x14]
	movs r0, #0x47
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	bl FUN_02025E38
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl FUN_02027560
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl FUN_02025E5C
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl FUN_02027520
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0xc]
	bl FUN_02025F58
	str r0, [r4, #0x50]
	movs r0, #0x4b
	movs r1, #0xf
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #0x51
	bl ov97_02237694
	ldr r0, [r4, #4]
	bl FUN_020247C0
	cmp r0, #0
	bne _0222BE14
	movs r0, #0x53
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
_0222BE14:
	movs r0, #0
	bl FUN_020053CC
	movs r0, #0
	bl FUN_02004234
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0222BD70

	thumb_func_start ov97_0222BE24
ov97_0222BE24: @ 0x0222BE24
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	adds r0, r0, #1
	str r0, [r4, #0x18]
	blx FUN_020D0A04
	adds r0, r4, #0
	bl ov97_0222B07C
	cmp r0, #1
	bne _0222BE54
	adds r0, r4, #0
	bl ov97_0222AF8C
	adds r0, r4, #0
	bl ov97_0222B25C
	movs r0, #0
	pop {r4, r5, r6, pc}
_0222BE54:
	adds r0, r4, #0
	bl ov97_0222BD14
	ldr r0, [r5]
	cmp r0, #9
	bhi _0222BEBC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222BE6C: @ jump table
	.2byte _0222BE80 - _0222BE6C - 2 @ case 0
	.2byte _0222BE8C - _0222BE6C - 2 @ case 1
	.2byte _0222BEB2 - _0222BE6C - 2 @ case 2
	.2byte _0222BECC - _0222BE6C - 2 @ case 3
	.2byte _0222BEFA - _0222BE6C - 2 @ case 4
	.2byte _0222BF3A - _0222BE6C - 2 @ case 5
	.2byte _0222C030 - _0222BE6C - 2 @ case 6
	.2byte _0222C058 - _0222BE6C - 2 @ case 7
	.2byte _0222C062 - _0222BE6C - 2 @ case 8
	.2byte _0222C06A - _0222BE6C - 2 @ case 9
_0222BE80:
	adds r0, r4, #0
	bl ov97_0222B2EC
	movs r0, #1
	str r0, [r5]
	b _0222C06E
_0222BE8C:
	adds r0, r4, #0
	bl ov97_0222AE60
	cmp r0, #0
	bne _0222BE9C
	movs r0, #3
	str r0, [r5]
	b _0222C06E
_0222BE9C:
	movs r0, #1
	movs r1, #2
	adds r2, r5, #0
	movs r3, #8
	bl ov97_02237790
	movs r0, #5
	ldr r1, _0222C084 @ =0x00007D8C
	lsls r0, r0, #0x18
	strh r1, [r0]
	b _0222C06E
_0222BEB2:
	adds r0, r4, #0
	bl ov97_0222AE64
	cmp r0, #0
	beq _0222BEBE
_0222BEBC:
	b _0222C06E
_0222BEBE:
	movs r0, #0
	movs r1, #3
	adds r2, r5, #0
	movs r3, #8
	bl ov97_02237790
	b _0222C06E
_0222BECC:
	movs r0, #0x49
	movs r1, #0xc
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, #0x28
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222BEEE
	movs r0, #2
	str r0, [r4, #0x58]
	movs r0, #0
	movs r1, #7
	adds r2, r5, #0
	movs r3, #8
	bl ov97_02237790
	b _0222C06E
_0222BEEE:
	adds r0, r4, #0
	bl ov97_0222AF1C
	movs r0, #4
	str r0, [r5]
	b _0222C06E
_0222BEFA:
	adds r0, r4, #0
	bl ov97_0222B404
	adds r0, r4, #0
	bl ov97_0222B46C
	ldr r0, _0222C088 @ =ov97_0222BD48
	ldr r1, [r4]
	bl FUN_02017798
	adds r0, r4, #0
	bl ov97_0222B9BC
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl ov97_0222BAD8
	movs r0, #1
	movs r1, #5
	adds r2, r5, #0
	movs r3, #8
	bl ov97_02237790
	movs r0, #5
	ldr r1, _0222C084 @ =0x00007D8C
	lsls r0, r0, #0x18
	strh r1, [r0]
	movs r0, #0x49
	movs r1, #0xa
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _0222C06E
_0222BF3A:
	ldr r0, _0222C08C @ =0x021BF67C
	movs r1, #3
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0222BFCE
	movs r1, #1
	tst r0, r1
	ldr r0, _0222C090 @ =0x000005DC
	beq _0222BF7E
	bl FUN_02005748
	ldr r0, [r4, #0x54]
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, #0xdc
	ldr r0, [r0]
	str r0, [r4, #0x58]
	cmp r0, #5
	bne _0222BF8C
	blx FUN_020D09B8
	cmp r0, #1
	bne _0222BF8C
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0xc
	beq _0222BF76
	bl FUN_02037D84
_0222BF76:
	movs r0, #0x51
	bl FUN_0209A8E0
	b _0222BF8C
_0222BF7E:
	bl FUN_02005748
	movs r0, #0
	str r0, [r4, #0x58]
	movs r0, #1
	bl ov97_02237784
_0222BF8C:
	ldr r0, [r4, #0x58]
	cmp r0, #2
	bne _0222BFA6
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	orrs r1, r0
	str r1, [r4, #0x40]
	movs r1, #1
	adds r0, #0xb0
	str r1, [r4, r0]
	movs r0, #6
	str r0, [r5]
	b _0222BFBE
_0222BFA6:
	subs r0, r0, #6
	cmp r0, #1
	bhi _0222BFB2
	movs r0, #1
	bl ov97_02237784
_0222BFB2:
	movs r0, #0
	movs r1, #7
	adds r2, r5, #0
	movs r3, #8
	bl ov97_02237790
_0222BFBE:
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0xd
	bne _0222C06E
	movs r1, #0xe
	str r1, [r4, r0]
	b _0222C06E
_0222BFCE:
	ldr r1, [r4, #0x48]
	cmp r1, #1
	bne _0222BFE0
	adds r0, r4, #0
	bl ov97_0222B9BC
	movs r0, #0
	str r0, [r4, #0x48]
	b _0222C06E
_0222BFE0:
	movs r1, #0x40
	tst r0, r1
	beq _0222BFEE
	adds r0, r4, #0
	subs r1, #0x41
	bl ov97_0222BB88
_0222BFEE:
	ldr r0, _0222C08C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x80
	tst r0, r1
	beq _0222C000
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222BB88
_0222C000:
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl ov97_0222BAD8
	adds r0, r4, #0
	bl ov97_0222BBC8
	adds r0, r4, #0
	bl ov97_0222BC1C
	ldr r0, [r5]
	cmp r0, #5
	bne _0222C06E
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0222C06E
	movs r1, #0
	str r1, [r4, r0]
	movs r1, #1
	subs r0, #0x20
	str r1, [r4, r0]
	b _0222C06E
_0222C030:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0xf
	bne _0222C06E
	adds r0, #0xc
	ldr r1, [r4, r0]
	movs r0, #2
	tst r0, r1
	beq _0222C04A
	movs r0, #5
	str r0, [r5]
	b _0222C06E
_0222C04A:
	movs r0, #0
	movs r1, #7
	adds r2, r5, #0
	movs r3, #8
	bl ov97_02237790
	b _0222C06E
_0222C058:
	adds r0, r6, #0
	bl ov97_0222BC9C
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222C062:
	adds r0, r5, #0
	bl ov97_022377F0
	b _0222C06E
_0222C06A:
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222C06E:
	adds r0, r4, #0
	bl ov97_0222AF8C
	adds r0, r4, #0
	bl ov97_0222B25C
	bl ov97_02237CA0
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_0222C084: .4byte 0x00007D8C
_0222C088: .4byte ov97_0222BD48
_0222C08C: .4byte 0x021BF67C
_0222C090: .4byte 0x000005DC
	thumb_func_end ov97_0222BE24

	thumb_func_start ov97_0222C094
ov97_0222C094: @ 0x0222C094
	push {r3, lr}
	ldr r0, [r0, #0x58]
	cmp r0, #8
	bhi _0222C11A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222C0A8: @ jump table
	.2byte _0222C112 - _0222C0A8 - 2 @ case 0
	.2byte _0222C0BA - _0222C0A8 - 2 @ case 1
	.2byte _0222C0C4 - _0222C0A8 - 2 @ case 2
	.2byte _0222C0CE - _0222C0A8 - 2 @ case 3
	.2byte _0222C0E2 - _0222C0A8 - 2 @ case 4
	.2byte _0222C0D8 - _0222C0A8 - 2 @ case 5
	.2byte _0222C0EC - _0222C0A8 - 2 @ case 6
	.2byte _0222C0F4 - _0222C0A8 - 2 @ case 7
	.2byte _0222C104 - _0222C0A8 - 2 @ case 8
_0222C0BA:
	ldr r0, _0222C11C @ =0x00000039
	ldr r1, _0222C120 @ =0x021D0F70
	bl FUN_02000EC4
	pop {r3, pc}
_0222C0C4:
	ldr r0, _0222C11C @ =0x00000039
	ldr r1, _0222C124 @ =0x021D0F90
	bl FUN_02000EC4
	pop {r3, pc}
_0222C0CE:
	ldr r0, _0222C128 @ =0x00000061
	ldr r1, _0222C12C @ =0x0223D71C
	bl FUN_02000EC4
	pop {r3, pc}
_0222C0D8:
	ldr r0, _0222C128 @ =0x00000061
	ldr r1, _0222C130 @ =0x0223D864
	bl FUN_02000EC4
	pop {r3, pc}
_0222C0E2:
	ldr r0, _0222C128 @ =0x00000061
	ldr r1, _0222C134 @ =0x0223D6BC
	bl FUN_02000EC4
	pop {r3, pc}
_0222C0EC:
	ldr r0, _0222C138 @ =0x0223E094
	bl FUN_020243E0
	pop {r3, pc}
_0222C0F4:
	bl FUN_0200569C
	movs r0, #0
	ldr r1, _0222C13C @ =0x020F6DF0
	mvns r0, r0
	bl FUN_02000EC4
	pop {r3, pc}
_0222C104:
	bl FUN_0200569C
	ldr r0, _0222C140 @ =0x00000062
	ldr r1, _0222C144 @ =0x02249BAC
	bl FUN_02000EC4
	pop {r3, pc}
_0222C112:
	ldr r0, _0222C148 @ =0x0000004D
	ldr r1, _0222C14C @ =0x021D742C
	bl FUN_02000EC4
_0222C11A:
	pop {r3, pc}
	.align 2, 0
_0222C11C: .4byte 0x00000039
_0222C120: .4byte 0x021D0F70
_0222C124: .4byte 0x021D0F90
_0222C128: .4byte 0x00000061
_0222C12C: .4byte 0x0223D71C
_0222C130: .4byte 0x0223D864
_0222C134: .4byte 0x0223D6BC
_0222C138: .4byte 0x0223E094
_0222C13C: .4byte 0x020F6DF0
_0222C140: .4byte 0x00000062
_0222C144: .4byte 0x02249BAC
_0222C148: .4byte 0x0000004D
_0222C14C: .4byte 0x021D742C
	thumb_func_end ov97_0222C094

	thumb_func_start ov97_0222C150
ov97_0222C150: @ 0x0222C150
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	bl ov97_0222C094
	adds r0, r4, #0
	bl FUN_02006830
	movs r0, #0x51
	bl FUN_0201807C
	movs r0, #0
	bl ov97_02238400
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0222C150

	thumb_func_start ov97_0222C174
ov97_0222C174: @ 0x0222C174
	push {r3, r4}
	ldr r4, _0222C19C @ =0x0223E0B0
	ldr r1, _0222C1A0 @ =0x00000123
	movs r3, #0
_0222C17C:
	ldrh r2, [r4, #2]
	cmp r0, r2
	bne _0222C18C
	ldr r0, _0222C19C @ =0x0223E0B0
	lsls r1, r3, #2
	ldrh r0, [r0, r1]
	pop {r3, r4}
	bx lr
_0222C18C:
	adds r3, r3, #1
	adds r4, r4, #4
	cmp r3, r1
	blo _0222C17C
	movs r0, #0x3f
	pop {r3, r4}
	bx lr
	nop
_0222C19C: .4byte 0x0223E0B0
_0222C1A0: .4byte 0x00000123
	thumb_func_end ov97_0222C174

	thumb_func_start ov97_0222C1A4
ov97_0222C1A4: @ 0x0222C1A4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r1, _0222C20C @ =0x00002710
	adds r0, r4, #0
	blx FUN_020E1F6C
	adds r0, #0x30
	strh r0, [r5]
	ldr r1, _0222C20C @ =0x00002710
	adds r0, r4, #0
	blx FUN_020E1F6C
	adds r4, r1, #0
	movs r1, #0xfa
	adds r0, r4, #0
	lsls r1, r1, #2
	blx FUN_020E1F6C
	adds r0, #0x30
	movs r1, #0xfa
	strh r0, [r5, #2]
	adds r0, r4, #0
	lsls r1, r1, #2
	blx FUN_020E1F6C
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #0x64
	blx FUN_020E1F6C
	adds r0, #0x30
	strh r0, [r5, #4]
	adds r0, r4, #0
	movs r1, #0x64
	blx FUN_020E1F6C
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #0xa
	blx FUN_020E1F6C
	adds r0, #0x30
	strh r0, [r5, #6]
	adds r0, r4, #0
	movs r1, #0xa
	blx FUN_020E1F6C
	adds r4, r1, #0
	adds r4, #0x30
	strh r4, [r5, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222C20C: .4byte 0x00002710
	thumb_func_end ov97_0222C1A4

	thumb_func_start ov97_0222C210
ov97_0222C210: @ 0x0222C210
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	bl FUN_02025EF0
	ldr r5, _0222C248 @ =0x0223F180
	adds r4, r0, #0
	movs r6, #0
_0222C220:
	ldrh r0, [r4]
	bl ov97_0222C174
	strh r0, [r5]
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r6, #8
	blt _0222C220
	ldr r0, [r7, #0x10]
	bl FUN_02025F24
	adds r1, r0, #0
	ldr r0, _0222C24C @ =0x0223F190
	bl ov97_0222C1A4
	ldr r0, _0222C250 @ =0x0223F180
	movs r1, #0
	strh r1, [r0, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222C248: .4byte 0x0223F180
_0222C24C: .4byte 0x0223F190
_0222C250: .4byte 0x0223F180
	thumb_func_end ov97_0222C210

	thumb_func_start ov97_0222C254
ov97_0222C254: @ 0x0222C254
	push {r3, r4, r5, lr}
	sub sp, #0x48
	ldr r5, _0222C380 @ =0x0223D6DC
	adds r4, r0, #0
	add r3, sp, #0x20
	movs r2, #5
_0222C260:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222C260
	ldr r3, _0222C384 @ =0x0223D6CC
	add r2, sp, #0x10
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	add r0, sp, #0x20
	bl FUN_0201FE94
	add r0, sp, #0x10
	bl FUN_02018368
	movs r1, #0
	str r1, [sp]
	movs r3, #0xf
	ldr r0, [r4, #4]
	movs r2, #1
	lsls r3, r3, #0xc
	bl ov97_022376FC
	movs r0, #1
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r1, #1
	movs r3, #0x3e
	ldr r0, [r4, #4]
	adds r2, r1, #0
	lsls r3, r3, #0xa
	bl ov97_022376FC
	movs r0, #0
	str r0, [sp]
	movs r3, #0x1e
	ldr r0, [r4, #4]
	movs r1, #4
	movs r2, #1
	lsls r3, r3, #0xa
	bl ov97_022376FC
	movs r0, #1
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r3, #7
	ldr r0, [r4, #4]
	movs r1, #5
	movs r2, #1
	lsls r3, r3, #0xc
	bl ov97_022376FC
	bl FUN_0201D710
	movs r0, #0
	ldr r2, [r4]
	adds r1, r0, #0
	bl FUN_02002E7C
	movs r1, #0
	str r1, [sp]
	ldr r0, [r4]
	movs r2, #1
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	adds r3, r2, #0
	bl FUN_0200DAA4
	ldr r0, [r4, #0x14]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4]
	movs r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	movs r2, #0xa
	movs r3, #2
	bl FUN_0200DD0C
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [r4]
	movs r1, #0
	str r0, [sp, #4]
	movs r0, #0x74
	adds r3, r0, #0
	adds r2, r1, #0
	adds r3, #0x8c
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #5
	lsls r0, r0, #0xa
	movs r1, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4]
	adds r3, r1, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x74
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	ldr r0, [r4]
	movs r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x74
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r2, #0
	ldr r0, [r4, #4]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019E2C
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02019448
	adds r0, r4, #0
	bl ov97_0222C388
	add sp, #0x48
	pop {r3, r4, r5, pc}
	nop
_0222C380: .4byte 0x0223D6DC
_0222C384: .4byte 0x0223D6CC
	thumb_func_end ov97_0222C254

	thumb_func_start ov97_0222C388
ov97_0222C388: @ 0x0222C388
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [r4]
	movs r2, #4
	adds r3, r2, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0
	adds r3, #0xfc
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #5
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	ldr r0, [r4]
	movs r3, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x74
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0x74
	movs r3, #4
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r2, #0
	ldr r0, [r4, #4]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019E2C
	ldr r0, [r4, #4]
	movs r1, #4
	bl FUN_02019448
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0222C388

	thumb_func_start ov97_0222C404
ov97_0222C404: @ 0x0222C404
	push {r3, r4, lr}
	sub sp, #0x5c
	adds r4, r0, #0
	adds r0, #0x18
	bl FUN_0201A7CC
	cmp r0, #0
	bne _0222C44E
	movs r0, #1
	str r0, [sp]
	adds r1, r4, #0
	str r0, [sp, #4]
	add r0, sp, #8
	adds r1, #0x18
	movs r2, #0
	movs r3, #0xe
	bl ov97_02237808
	movs r3, #0x51
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	add r0, sp, #8
	movs r1, #0x16
	movs r2, #0x10
	bl ov97_02237858
	movs r0, #2
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, sp, #8
	movs r2, #5
	movs r3, #4
	bl ov97_0223795C
	add sp, #0x5c
	movs r0, #1
	pop {r3, r4, pc}
_0222C44E:
	ldr r0, _0222C478 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _0222C470
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #0
	bl FUN_0200DC9C
	adds r4, #0x18
	adds r0, r4, #0
	bl FUN_0201A8FC
	add sp, #0x5c
	movs r0, #0
	pop {r3, r4, pc}
_0222C470:
	movs r0, #1
	add sp, #0x5c
	pop {r3, r4, pc}
	nop
_0222C478: .4byte 0x021BF67C
	thumb_func_end ov97_0222C404

	thumb_func_start ov97_0222C47C
ov97_0222C47C: @ 0x0222C47C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xa
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r4, #0
	ldr r3, _0222C570 @ =0x000001A5
	adds r0, #0x48
	adds r1, #0x28
	movs r2, #0
	bl ov97_02237808
	movs r3, #0x51
	lsls r3, r3, #2
	adds r0, r4, #0
	ldr r3, [r4, r3]
	adds r0, #0x48
	movs r1, #0x1b
	movs r2, #4
	bl ov97_02237858
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x48
	adds r2, r1, #0
	bl ov97_02237860
	movs r0, #0x46
	str r0, [sp]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #2
	movs r3, #0x13
	bl ov97_0223795C
	adds r0, r4, #0
	adds r0, #0x48
	bl ov97_02237A18
	movs r3, #0x51
	lsls r3, r3, #2
	ldr r1, [r4, r3]
	movs r2, #0
	adds r0, r1, r0
	str r0, [r4, r3]
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x9c
	adds r1, #0x18
	adds r3, #0x61
	bl ov97_02237808
	movs r3, #0x51
	lsls r3, r3, #2
	adds r0, r4, #0
	ldr r3, [r4, r3]
	adds r0, #0x9c
	movs r1, #0x1e
	movs r2, #4
	bl ov97_02237858
	adds r0, r4, #0
	adds r0, #0x9c
	movs r1, #0
	movs r2, #1
	bl ov97_02237860
	movs r0, #0xb
	str r0, [sp]
	adds r1, r4, #0
	movs r2, #1
	ldr r0, [r4, #4]
	adds r1, #0x9c
	adds r3, r2, #0
	bl ov97_0223795C
	adds r0, r4, #0
	adds r0, #0x9c
	bl ov97_02237A18
	movs r1, #0x51
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	bl ov97_02237A20
	bl ov97_02237A74
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0xa
	movs r2, #7
	movs r3, #9
	bl ov97_02237B0C
	movs r0, #1
	str r0, [sp]
	ldr r1, _0222C574 @ =0x00003170
	movs r0, #0
	ldr r1, [r4, r1]
	movs r2, #0x80
	movs r3, #0x4c
	bl ov97_02237D14
	ldr r1, _0222C574 @ =0x00003170
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov97_0222C578
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0222C570: .4byte 0x000001A5
_0222C574: .4byte 0x00003170
	thumb_func_end ov97_0222C47C

	thumb_func_start ov97_0222C578
ov97_0222C578: @ 0x0222C578
	push {r3, r4, r5, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [r5]
	bl FUN_0200B358
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	ldr r3, _0222C684 @ =0x000001A5
	adds r0, #0xf0
	adds r1, #0x38
	movs r2, #0
	bl ov97_02237808
	movs r3, #0x51
	lsls r3, r3, #2
	adds r0, r5, #0
	ldr r3, [r5, r3]
	adds r0, #0xf0
	movs r1, #0x1a
	movs r2, #4
	bl ov97_02237858
	adds r0, r5, #0
	adds r0, #0xf0
	movs r1, #0
	movs r2, #1
	bl ov97_02237860
	movs r0, #0x41
	lsls r0, r0, #2
	str r4, [r5, r0]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0200B498
	ldr r0, [r5, #0x10]
	bl FUN_02025F24
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r1, #1
	adds r0, r4, #0
	movs r3, #5
	str r1, [sp, #4]
	bl FUN_0200B60C
	movs r0, #0x42
	str r0, [sp]
	adds r1, r5, #0
	ldr r0, [r5, #4]
	adds r1, #0xf0
	movs r2, #3
	movs r3, #0xd
	bl ov97_0223795C
	adds r1, r5, #0
	movs r0, #0
	adds r1, #0xf8
	str r0, [r1]
	movs r1, #1
	bl FUN_02002DF8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0xf0
	movs r1, #0
	bl ov97_02237868
	movs r2, #0x44
	str r2, [sp]
	adds r1, r5, #0
	subs r2, #0x45
	ldr r0, [r5, #4]
	adds r1, #0xf0
	adds r3, r2, #0
	bl ov97_0223795C
	add r0, sp, #0x10
	blx FUN_020C3FA0
	add r0, sp, #0x10
	bl ov97_022335A8
	add r1, sp, #0x1c
	add r2, sp, #0x18
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl ov97_022335EC
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #4
	bl FUN_0200B60C
	movs r0, #2
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0x18]
	adds r0, r4, #0
	movs r3, #4
	bl FUN_0200B60C
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0xfc
	str r1, [r0]
	movs r2, #0x45
	str r2, [sp]
	ldr r0, [r5, #4]
	adds r5, #0xf0
	subs r2, #0x46
	adds r1, r5, #0
	adds r3, r2, #0
	bl ov97_0223795C
	adds r0, r4, #0
	bl FUN_0200B3F0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_0222C684: .4byte 0x000001A5
	thumb_func_end ov97_0222C578

	thumb_func_start ov97_0222C688
ov97_0222C688: @ 0x0222C688
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	bl ov97_02237DA0
	adds r0, r4, #0
	adds r0, #0x18
	bl FUN_0201A7CC
	cmp r0, #1
	bne _0222C6D0
	adds r0, r4, #0
	adds r0, #0x18
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x18
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x28
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x28
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x38
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x38
	bl FUN_0201A8FC
_0222C6D0:
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r4, #4]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov97_0222C688

	thumb_func_start ov97_0222C6F8
ov97_0222C6F8: @ 0x0222C6F8
	push {r3, r4, r5, lr}
	movs r3, #2
	ldr r2, _0222C780 @ =0x000034DC
	movs r1, #0x55
	lsls r3, r3, #0x10
	adds r5, r0, #0
	bl ov97_022376C4
	adds r4, r0, #0
	movs r0, #0x55
	str r0, [r4]
	bl FUN_02018340
	str r0, [r4, #4]
	adds r0, r5, #0
	bl FUN_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #8]
	bl FUN_02025E38
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl FUN_02027560
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl FUN_02025E44
	str r0, [r4, #0x14]
	ldr r0, [r4]
	bl ov97_02237694
	ldr r0, [r4, #8]
	bl FUN_0202442C
	ldr r1, _0222C784 @ =0x00003174
	movs r2, #0x53
	str r0, [r4, r1]
	movs r0, #9
	lsls r2, r2, #2
	str r0, [r4, r2]
	adds r0, r2, #0
	movs r1, #0x28
	subs r0, #8
	str r1, [r4, r0]
	adds r1, r2, #0
	movs r0, #0
	adds r1, #8
	str r0, [r4, r1]
	adds r1, r2, #0
	adds r1, #0x10
	str r0, [r4, r1]
	adds r2, #0xc
	str r0, [r4, r2]
	movs r2, #3
	movs r1, #0x5b
	lsls r2, r2, #8
	bl FUN_02017FC8
	ldr r1, _0222C788 @ =0x00000496
	movs r0, #9
	movs r2, #1
	bl FUN_02004550
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222C780: .4byte 0x000034DC
_0222C784: .4byte 0x00003174
_0222C788: .4byte 0x00000496
	thumb_func_end ov97_0222C6F8

	thumb_func_start ov97_0222C78C
ov97_0222C78C: @ 0x0222C78C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	adds r6, r0, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0xd
	bhi _0222C7F2
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222C7AC: @ jump table
	.2byte _0222C7C8 - _0222C7AC - 2 @ case 0
	.2byte _0222C7EA - _0222C7AC - 2 @ case 1
	.2byte _0222C808 - _0222C7AC - 2 @ case 2
	.2byte _0222C85A - _0222C7AC - 2 @ case 3
	.2byte _0222C886 - _0222C7AC - 2 @ case 4
	.2byte _0222C8C2 - _0222C7AC - 2 @ case 5
	.2byte _0222C8FC - _0222C7AC - 2 @ case 6
	.2byte _0222C92C - _0222C7AC - 2 @ case 7
	.2byte _0222C92C - _0222C7AC - 2 @ case 8
	.2byte _0222C92C - _0222C7AC - 2 @ case 9
	.2byte _0222C92C - _0222C7AC - 2 @ case 10
	.2byte _0222C912 - _0222C7AC - 2 @ case 11
	.2byte _0222C91A - _0222C7AC - 2 @ case 12
	.2byte _0222C926 - _0222C7AC - 2 @ case 13
_0222C7C8:
	bl ov97_0222C254
	ldr r0, [r4, #0xc]
	bl FUN_02027520
	cmp r0, #0
	bne _0222C7E4
	movs r0, #1
	adds r1, r0, #0
	adds r2, r5, #0
	movs r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C7E4:
	movs r0, #2
	str r0, [r5]
	b _0222C92C
_0222C7EA:
	bl ov97_0222C404
	cmp r0, #0
	beq _0222C7F4
_0222C7F2:
	b _0222C92C
_0222C7F4:
	movs r0, #1
	bl ov97_02237784
	movs r0, #0
	movs r1, #0xc
	adds r2, r5, #0
	movs r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C808:
	bl ov97_0222C47C
	ldr r0, _0222C938 @ =0x00003174
	ldr r0, [r4, r0]
	bl FUN_0202DCE0
	cmp r0, #0
	bne _0222C844
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x98
	str r1, [r0]
	movs r0, #0x15
	str r0, [sp]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #2
	movs r3, #0x13
	bl ov97_0223795C
	ldr r1, _0222C93C @ =0x0000317C
	adds r2, r5, #0
	str r0, [r4, r1]
	movs r0, #1
	movs r1, #3
	movs r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C844:
	movs r0, #0x53
	movs r1, #7
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #1
	movs r1, #4
	adds r2, r5, #0
	movs r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C85A:
	ldr r0, _0222C93C @ =0x0000317C
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0222C92C
	ldr r0, _0222C940 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r1, r0
	beq _0222C92C
	bl ov97_02237784
	movs r0, #0
	movs r1, #0xc
	adds r2, r5, #0
	movs r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C886:
	bl ov97_0222CB10
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #5
	bne _0222C8AA
	movs r0, #1
	bl ov97_02237784
	movs r0, #0
	movs r1, #0xc
	adds r2, r5, #0
	movs r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C8AA:
	cmp r0, #4
	bne _0222C92C
	movs r0, #1
	bl ov97_02237784
	movs r0, #0
	movs r1, #0xc
	adds r2, r5, #0
	movs r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C8C2:
	bl ov97_0222C388
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r1, #0xc6
	lsls r1, r1, #6
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0x55
	bl ov97_02231FFC
	movs r0, #1
	movs r1, #6
	adds r2, r5, #0
	movs r3, #0xd
	bl ov97_02237790
	ldr r1, _0222C944 @ =0x000032D2
	movs r0, #4
	ldrb r2, [r4, r1]
	bics r2, r0
	strb r2, [r4, r1]
	b _0222C92C
_0222C8FC:
	ldr r0, _0222C940 @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0222C92C
	movs r0, #0
	movs r1, #0xb
	adds r2, r5, #0
	movs r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C912:
	movs r0, #0
	blx FUN_020C3EE4
	b _0222C92C
_0222C91A:
	adds r0, r6, #0
	bl ov97_0222C688
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0222C926:
	adds r0, r5, #0
	bl ov97_022377F0
_0222C92C:
	bl ov97_02237CA0
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0222C938: .4byte 0x00003174
_0222C93C: .4byte 0x0000317C
_0222C940: .4byte 0x021BF67C
_0222C944: .4byte 0x000032D2
	thumb_func_end ov97_0222C78C

	thumb_func_start ov97_0222C948
ov97_0222C948: @ 0x0222C948
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5b
	bl FUN_0201807C
	ldr r0, _0222C96C @ =0x0000004D
	ldr r1, _0222C970 @ =0x021D742C
	bl FUN_02000EC4
	adds r0, r4, #0
	bl FUN_02006830
	movs r0, #0x55
	bl FUN_0201807C
	movs r0, #1
	pop {r4, pc}
	nop
_0222C96C: .4byte 0x0000004D
_0222C970: .4byte 0x021D742C
	thumb_func_end ov97_0222C948

	thumb_func_start ov97_0222C974
ov97_0222C974: @ 0x0222C974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0xc6
	lsls r0, r0, #6
	adds r5, r6, r0
	movs r2, #0xd6
	adds r0, r5, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	ldr r2, _0222CAA0 @ =0x000001A5
	ldr r3, [r6]
	movs r0, #1
	movs r1, #0x1a
	bl FUN_0200B144
	adds r7, r0, #0
	ldr r0, [r6]
	bl FUN_0200B358
	movs r1, #0xc6
	movs r2, #7
	lsls r1, r1, #6
	strh r2, [r6, r1]
	ldr r3, [r6]
	adds r1, r7, #0
	movs r2, #0x4c
	str r0, [sp]
	bl FUN_0200B29C
	movs r1, #0x41
	lsls r1, r1, #2
	adds r4, r0, #0
	adds r1, r5, r1
	movs r2, #0x24
	bl FUN_02023DF0
	adds r0, r4, #0
	bl FUN_020237BC
	movs r0, #0xc
	bl ov97_02237E4C
	str r0, [sp, #4]
	movs r0, #0xa
	bl ov97_02237E4C
	adds r4, r0, #0
	movs r0, #0xb
	bl ov97_02237E4C
	adds r1, r4, #0
	orrs r1, r0
	ldr r0, [sp, #4]
	movs r2, #1
	orrs r1, r0
	movs r0, #0x53
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r1, r0, #4
	strh r2, [r5, r1]
	adds r1, r0, #6
	ldrb r2, [r5, r1]
	movs r1, #1
	bics r2, r1
	adds r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	movs r1, #2
	bics r2, r1
	adds r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	movs r1, #4
	orrs r2, r1
	adds r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	movs r1, #8
	orrs r2, r1
	adds r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	movs r1, #0x20
	adds r0, r0, #6
	bics r2, r1
	strb r2, [r5, r0]
	ldr r0, [sp]
	ldr r3, [r6]
	adds r1, r7, #0
	movs r2, #0x4b
	bl FUN_0200B29C
	adds r4, r0, #0
	movs r1, #0x55
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r2, #0xfa
	bl FUN_02023DF0
	adds r0, r4, #0
	bl FUN_020237BC
	movs r0, #0xd2
	lsls r0, r0, #2
	movs r1, #0
	ldr r3, _0222CAA4 @ =0x000001EA
	strb r1, [r5, r0]
	adds r2, r0, #2
	strh r3, [r5, r2]
	adds r2, r0, #4
	strh r1, [r5, r2]
	adds r2, r0, #6
	strh r1, [r5, r2]
	adds r0, #8
	strb r1, [r5, r0]
	add r0, sp, #8
	bl FUN_020138A4
	add r0, sp, #8
	blx FUN_020CC16C
	movs r1, #0xd5
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	bl FUN_0200B3F0
	adds r0, r7, #0
	bl FUN_0200B190
	ldr r0, _0222CAA8 @ =0x00003174
	adds r1, r5, #0
	ldr r0, [r6, r0]
	movs r2, #3
	bl FUN_0202DB2C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r6, #4]
	adds r1, r5, #0
	bl ov97_02238194
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CAA0: .4byte 0x000001A5
_0222CAA4: .4byte 0x000001EA
_0222CAA8: .4byte 0x00003174
	thumb_func_end ov97_0222C974

	thumb_func_start ov97_0222CAAC
ov97_0222CAAC: @ 0x0222CAAC
	movs r2, #0x16
	lsls r2, r2, #4
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov97_0222CAAC

	thumb_func_start ov97_0222CAB4
ov97_0222CAB4: @ 0x0222CAB4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x16
	lsls r1, r1, #4
	adds r4, r3, #0
	ldr r3, [r0, r1]
	subs r3, r3, #1
	str r3, [r0, r1]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0222CAD6
	bl ov97_022333BC
	movs r0, #0x17
	str r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
_0222CAD6:
	cmp r2, #0
	beq _0222CAEE
	bl ov97_02233388
	cmp r0, #0
	bne _0222CAEE
	bl ov97_022333BC
	movs r0, #0x16
	str r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
_0222CAEE:
	cmp r4, #0
	beq _0222CB06
	ldr r0, _0222CB0C @ =0x021BF67C
	ldr r0, [r0, #0x48]
	tst r0, r4
	beq _0222CB06
	bl ov97_022333BC
	movs r0, #0x1a
	str r0, [r5]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222CB06:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0222CB0C: .4byte 0x021BF67C
	thumb_func_end ov97_0222CAB4

	thumb_func_start ov97_0222CB10
ov97_0222CB10: @ 0x0222CB10
	push {r3, r4, r5, lr}
	movs r5, #0x57
	lsls r5, r5, #2
	adds r4, r0, #0
	subs r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222CB36
	bl ov97_02233230
	movs r1, #3
	subs r0, r1, r0
	bl FUN_020397B0
	bl ov97_022330DC
	movs r0, #1
	bl ov97_0223346C
_0222CB36:
	ldr r0, [r4, r5]
	cmp r0, #0x1e
	bls _0222CB3E
	b _0222D036
_0222CB3E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222CB4A: @ jump table
	.2byte _0222CB88 - _0222CB4A - 2 @ case 0
	.2byte _0222CB9E - _0222CB4A - 2 @ case 1
	.2byte _0222CBC4 - _0222CB4A - 2 @ case 2
	.2byte _0222CBE6 - _0222CB4A - 2 @ case 3
	.2byte _0222CC10 - _0222CB4A - 2 @ case 4
	.2byte _0222D036 - _0222CB4A - 2 @ case 5
	.2byte _0222D036 - _0222CB4A - 2 @ case 6
	.2byte _0222CC42 - _0222CB4A - 2 @ case 7
	.2byte _0222CCB8 - _0222CB4A - 2 @ case 8
	.2byte _0222CCD6 - _0222CB4A - 2 @ case 9
	.2byte _0222CD20 - _0222CB4A - 2 @ case 10
	.2byte _0222CD5C - _0222CB4A - 2 @ case 11
	.2byte _0222CD76 - _0222CB4A - 2 @ case 12
	.2byte _0222CDAA - _0222CB4A - 2 @ case 13
	.2byte _0222CDEC - _0222CB4A - 2 @ case 14
	.2byte _0222CE0C - _0222CB4A - 2 @ case 15
	.2byte _0222CE24 - _0222CB4A - 2 @ case 16
	.2byte _0222CE3E - _0222CB4A - 2 @ case 17
	.2byte _0222CE94 - _0222CB4A - 2 @ case 18
	.2byte _0222CF1C - _0222CB4A - 2 @ case 19
	.2byte _0222CF64 - _0222CB4A - 2 @ case 20
	.2byte _0222D036 - _0222CB4A - 2 @ case 21
	.2byte _0222CF98 - _0222CB4A - 2 @ case 22
	.2byte _0222CF9C - _0222CB4A - 2 @ case 23
	.2byte _0222D036 - _0222CB4A - 2 @ case 24
	.2byte _0222D036 - _0222CB4A - 2 @ case 25
	.2byte _0222D004 - _0222CB4A - 2 @ case 26
	.2byte _0222D036 - _0222CB4A - 2 @ case 27
	.2byte _0222CFD0 - _0222CB4A - 2 @ case 28
	.2byte _0222CC5E - _0222CB4A - 2 @ case 29
	.2byte _0222CC9C - _0222CB4A - 2 @ case 30
_0222CB88:
	adds r0, r4, #0
	bl ov97_0222C210
	bl FUN_02033478
	movs r0, #0x52
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	str r1, [r4, r5]
	b _0222D036
_0222CB9E:
	bl FUN_020334A4
	cmp r0, #0
	beq _0222CC56
	movs r1, #0x5b
	lsls r1, r1, #2
	ldr r0, _0222CEE0 @ =0x0223E0A4
	adds r1, r4, r1
	bl ov97_02232E38
	movs r0, #0x56
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	bl FUN_02039734
	movs r0, #2
	str r0, [r4, r5]
	b _0222D036
_0222CBC4:
	bl ov97_02233120
	movs r1, #0x19
	adds r0, r4, #0
	lsls r1, r1, #6
	bl ov97_0222CAAC
	adds r0, r4, #0
	adds r0, #0x28
	movs r1, #0xa
	bl FUN_0200E7FC
	ldr r1, _0222CEE4 @ =0x000034D8
	str r0, [r4, r1]
	movs r0, #3
	str r0, [r4, r5]
	b _0222D036
_0222CBE6:
	bl ov97_02233248
	cmp r0, #0
	beq _0222CC02
	subs r1, r0, #1
	movs r0, #0x59
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _0222CEE8 @ =0x00000708
	adds r0, r4, #0
	bl ov97_0222CAAC
	movs r0, #4
	str r0, [r4, r5]
_0222CC02:
	adds r0, r4, #0
	adds r1, r4, r5
	movs r2, #0
	movs r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CC10:
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov97_0223316C
	cmp r0, #0
	beq _0222CC34
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov97_022331A8
	movs r0, #7
	str r0, [r4, r5]
	movs r0, #0x16
	ldr r1, _0222CEE8 @ =0x00000708
	lsls r0, r0, #4
	str r1, [r4, r0]
_0222CC34:
	adds r0, r4, #0
	adds r1, r4, r5
	movs r2, #0
	movs r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CC42:
	adds r0, r4, #0
	adds r1, r4, r5
	movs r2, #0
	movs r3, #2
	bl ov97_0222CAB4
	bl ov97_02233388
	cmp r0, #0
	bne _0222CC58
_0222CC56:
	b _0222D036
_0222CC58:
	movs r0, #0x1d
	str r0, [r4, r5]
	b _0222D036
_0222CC5E:
	movs r0, #0x1e
	str r0, [sp]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #2
	movs r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222CEEC @ =0x00003170
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	ldr r0, _0222CEE4 @ =0x000034D8
	ldr r0, [r4, r0]
	bl FUN_0200EBA0
	ldr r0, _0222CEE4 @ =0x000034D8
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, _0222CEF0 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0x16
	ldr r1, _0222CEE8 @ =0x00000708
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x1e
	str r0, [r4, r5]
	b _0222D036
_0222CC9C:
	ldr r0, _0222CEF4 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0222CCAA
	movs r0, #8
	str r0, [r4, r5]
_0222CCAA:
	adds r0, r4, #0
	adds r1, r4, r5
	movs r2, #1
	movs r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CCB8:
	bl ov97_02233268
	movs r0, #9
	str r0, [r4, r5]
	movs r0, #0x16
	ldr r1, _0222CEE8 @ =0x00000708
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	adds r1, r4, r5
	movs r2, #1
	movs r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CCD6:
	bl ov97_022332F4
	cmp r0, #0
	beq _0222CD12
	bl ov97_0223329C
	movs r0, #0xa
	str r0, [r4, r5]
	movs r1, #0x32
	movs r0, #0x16
	lsls r1, r1, #6
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x22
	str r0, [sp]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #2
	movs r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222CEF0 @ =0x000005DC
	bl FUN_02005748
	ldr r0, _0222CEE4 @ =0x000034D8
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222CD12:
	adds r0, r4, #0
	adds r1, r4, r5
	movs r2, #1
	movs r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CD20:
	bl ov97_022332F4
	cmp r0, #0
	beq _0222CD4E
	movs r0, #0x47
	str r0, [sp]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #2
	movs r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222CEEC @ =0x00003170
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	adds r0, r4, #0
	bl ov97_0222C578
	movs r0, #0xb
	str r0, [r4, r5]
_0222CD4E:
	adds r0, r4, #0
	adds r1, r4, r5
	movs r2, #1
	movs r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CD5C:
	ldr r0, _0222CEF8 @ =0x0223E53C
	movs r1, #0x2a
	movs r2, #1
	bl ov97_022332C8
	movs r0, #0xc
	str r0, [r4, r5]
	movs r1, #0x32
	movs r0, #0x16
	lsls r1, r1, #6
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CD76:
	bl ov97_02233320
	cmp r0, #0
	beq _0222CD9C
	movs r0, #0xd
	str r0, [r4, r5]
	movs r0, #0x16
	movs r1, #0x3c
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x47
	str r0, [sp]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #2
	movs r3, #0x13
	bl ov97_0223795C
_0222CD9C:
	adds r0, r4, #0
	adds r1, r4, r5
	movs r2, #1
	movs r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CDAA:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CE1C
	movs r0, #0x48
	str r0, [sp]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #2
	movs r3, #0x13
	bl ov97_0223795C
	adds r0, r4, #0
	adds r0, #0x28
	movs r1, #0xa
	bl FUN_0200E7FC
	ldr r1, _0222CEE4 @ =0x000034D8
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov97_0222C974
	ldr r0, [r4, #8]
	bl ov97_0223846C
	movs r0, #0xe
	str r0, [r4, r5]
	b _0222D036
_0222CDEC:
	bl ov97_0223847C
	cmp r0, #1
	bne _0222CE1C
	movs r0, #0xf
	str r0, [r4, r5]
	blx FUN_020C3920
	movs r1, #0x36
	blx FUN_020E1F6C
	movs r0, #0x16
	adds r1, r1, #6
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CE0C:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222CE1E
_0222CE1C:
	b _0222D036
_0222CE1E:
	movs r0, #0x10
	str r0, [r4, r5]
	b _0222D036
_0222CE24:
	ldr r0, _0222CEF8 @ =0x0223E53C
	movs r1, #0x2a
	movs r2, #2
	bl ov97_022332C8
	movs r0, #0x11
	str r0, [r4, r5]
	movs r1, #0x4b
	movs r0, #0x16
	lsls r1, r1, #4
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CE3E:
	bl ov97_0223334C
	cmp r0, #0
	beq _0222CE5A
	bl ov97_022384F4
	movs r0, #0x12
	str r0, [r4, r5]
	movs r1, #0x32
	movs r0, #0x16
	lsls r1, r1, #4
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CE5A:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CE7A
	bl ov97_022333BC
	movs r0, #0x17
	movs r1, #0x78
	str r0, [r4, r5]
	adds r0, r1, #0
	adds r0, #0xe8
	str r1, [r4, r0]
_0222CE7A:
	bl ov97_02233388
	cmp r0, #0
	bne _0222CF2C
	bl ov97_022333BC
	movs r0, #0x16
	movs r1, #0x78
	str r0, [r4, r5]
	adds r0, r1, #0
	adds r0, #0xe8
	str r1, [r4, r0]
	b _0222D036
_0222CE94:
	bl ov97_02238528
	cmp r0, #3
	bne _0222CEAE
	bl ov97_022333BC
	movs r0, #0x16
	movs r1, #0x78
	str r0, [r4, r5]
	adds r0, r1, #0
	adds r0, #0xe8
	str r1, [r4, r0]
	b _0222CEFC
_0222CEAE:
	bl ov97_02238528
	cmp r0, #2
	beq _0222CEBC
	bl ov97_0223847C
	b _0222CEFC
_0222CEBC:
	bl ov97_02233320
	cmp r0, #0
	bne _0222CECC
	bl ov97_02233388
	cmp r0, #0
	bne _0222CEFC
_0222CECC:
	movs r0, #0x13
	str r0, [r4, r5]
	movs r0, #0x16
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r4, r0]
	bl ov97_022333BC
	b _0222D036
	nop
_0222CEE0: .4byte 0x0223E0A4
_0222CEE4: .4byte 0x000034D8
_0222CEE8: .4byte 0x00000708
_0222CEEC: .4byte 0x00003170
_0222CEF0: .4byte 0x000005DC
_0222CEF4: .4byte 0x021BF67C
_0222CEF8: .4byte 0x0223E53C
_0222CEFC:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CF1C
	bl ov97_022333BC
	movs r0, #0x17
	str r0, [r4, r5]
	movs r0, #0x16
	movs r1, #0xa
	lsls r0, r0, #4
	str r1, [r4, r0]
_0222CF1C:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222CF2E
_0222CF2C:
	b _0222D036
_0222CF2E:
	movs r0, #0x14
	str r0, [r4, r5]
	movs r0, #0x49
	str r0, [sp]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #2
	movs r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222D03C @ =0x00003170
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	ldr r0, _0222D040 @ =0x000034D8
	ldr r0, [r4, r0]
	bl FUN_0200EBA0
	ldr r0, _0222D044 @ =0x000005DC
	bl FUN_02005748
	ldr r0, _0222D040 @ =0x000034D8
	movs r1, #0
	str r1, [r4, r0]
	b _0222D036
_0222CF64:
	bl ov97_022333FC
	cmp r0, #0
	beq _0222D036
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222CF86
	bl FUN_020334CC
	bl FUN_02039794
	movs r0, #0x52
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_0222CF86:
	ldr r0, _0222D048 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0222D036
	movs r0, #0x1b
	str r0, [r4, r5]
	movs r0, #4
	pop {r3, r4, r5, pc}
_0222CF98:
	movs r0, #0x17
	str r0, [r4, r5]
_0222CF9C:
	movs r0, #0x4a
	str r0, [sp]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #2
	movs r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222D03C @ =0x00003170
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	ldr r0, _0222D040 @ =0x000034D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222CFC4
	bl FUN_0200EBA0
_0222CFC4:
	ldr r0, _0222D040 @ =0x000034D8
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #0x1c
	str r0, [r4, r5]
	b _0222D036
_0222CFD0:
	bl ov97_022333FC
	cmp r0, #0
	beq _0222D036
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222CFF2
	bl FUN_020334CC
	bl FUN_02039794
	movs r0, #0x52
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_0222CFF2:
	ldr r0, _0222D048 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0222D036
	movs r0, #0
	blx FUN_020C3EE4
	b _0222D036
_0222D004:
	bl ov97_022333FC
	cmp r0, #0
	beq _0222D036
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D036
	bl FUN_020334CC
	bl FUN_02039794
	movs r0, #0x52
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0222D040 @ =0x000034D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222D032
	bl FUN_0200EBA0
_0222D032:
	movs r0, #5
	pop {r3, r4, r5, pc}
_0222D036:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0222D03C: .4byte 0x00003170
_0222D040: .4byte 0x000034D8
_0222D044: .4byte 0x000005DC
_0222D048: .4byte 0x021BF67C
	thumb_func_end ov97_0222CB10

	thumb_func_start ov97_0222D04C
ov97_0222D04C: @ 0x0222D04C
	push {r4, lr}
	ldr r1, _0222D09C @ =0x0223F1A4
	adds r4, r0, #0
	ldr r1, [r1]
	cmp r1, #0
	bne _0222D098
	bl ov97_0222D2F8
	movs r1, #0xf5
	movs r0, #0xf
	lsls r1, r1, #2
	bl FUN_02018144
	ldr r1, _0222D09C @ =0x0223F1A4
	movs r2, #0xf5
	str r0, [r1]
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	ldr r0, _0222D09C @ =0x0223F1A4
	movs r1, #0x32
	ldr r0, [r0]
	movs r2, #0xa
	strh r1, [r0, #0x24]
	ldr r0, _0222D0A0 @ =ov97_0222D19C
	movs r1, #0
	bl FUN_0200D9E8
	ldr r1, _0222D09C @ =0x0223F1A4
	ldr r2, [r1]
	str r0, [r2, #0x1c]
	ldr r0, [r1]
	str r4, [r0]
	ldr r0, [r1]
	adds r0, r0, #4
	bl FUN_020361BC
_0222D098:
	pop {r4, pc}
	nop
_0222D09C: .4byte 0x0223F1A4
_0222D0A0: .4byte ov97_0222D19C
	thumb_func_end ov97_0222D04C

	thumb_func_start ov97_0222D0A4
ov97_0222D0A4: @ 0x0222D0A4
	ldr r2, _0222D0B0 @ =0x0223F1A4
	ldr r3, [r2]
	str r0, [r3, #0x20]
	ldr r0, [r2]
	strh r1, [r0, #0x24]
	bx lr
	.align 2, 0
_0222D0B0: .4byte 0x0223F1A4
	thumb_func_end ov97_0222D0A4

	thumb_func_start ov97_0222D0B4
ov97_0222D0B4: @ 0x0222D0B4
	push {r4, lr}
	bl FUN_0203608C
	bl FUN_02035D78
	cmp r0, #0
	beq _0222D0E2
	movs r4, #0
	ldr r1, _0222D0E4 @ =0x0223F1A4
	ldr r0, _0222D0E8 @ =0x000003C1
	adds r3, r4, #0
_0222D0CA:
	ldr r2, [r1]
	adds r2, r2, r4
	adds r4, r4, #1
	strb r3, [r2, r0]
	cmp r4, #0x10
	blt _0222D0CA
	bl FUN_02032AC0
	ldr r0, _0222D0EC @ =ov97_0222D0F0
	movs r1, #0
	bl ov97_0222D0A4
_0222D0E2:
	pop {r4, pc}
	.align 2, 0
_0222D0E4: .4byte 0x0223F1A4
_0222D0E8: .4byte 0x000003C1
_0222D0EC: .4byte ov97_0222D0F0
	thumb_func_end ov97_0222D0B4

	thumb_func_start ov97_0222D0F0
ov97_0222D0F0: @ 0x0222D0F0
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0222D124 @ =0x0223F1A4
	adds r5, r4, #0
_0222D0F8:
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _0222D11A
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02035D78
	cmp r0, #1
	bne _0222D11A
	adds r0, r4, #0
	bl FUN_02032EE8
	ldr r1, [r6]
	adds r1, r1, r5
	str r0, [r1, #0x28]
_0222D11A:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x10
	blt _0222D0F8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222D124: .4byte 0x0223F1A4
	thumb_func_end ov97_0222D0F0

	thumb_func_start ov97_0222D128
ov97_0222D128: @ 0x0222D128
	push {r3, lr}
	bl FUN_020334A4
	cmp r0, #0
	beq _0222D13A
	ldr r0, _0222D13C @ =ov97_0222D140
	movs r1, #0
	bl ov97_0222D0A4
_0222D13A:
	pop {r3, pc}
	.align 2, 0
_0222D13C: .4byte ov97_0222D140
	thumb_func_end ov97_0222D128

	thumb_func_start ov97_0222D140
ov97_0222D140: @ 0x0222D140
	bx lr
	.align 2, 0
	thumb_func_end ov97_0222D140

	thumb_func_start ov97_0222D144
ov97_0222D144: @ 0x0222D144
	push {r3, lr}
	ldr r0, _0222D15C @ =0x0223F1A4
	ldr r0, [r0]
	adds r0, #0x27
	ldrb r0, [r0]
	bl FUN_02036948
	ldr r0, _0222D160 @ =ov97_0222D164
	movs r1, #0
	bl ov97_0222D0A4
	pop {r3, pc}
	.align 2, 0
_0222D15C: .4byte 0x0223F1A4
_0222D160: .4byte ov97_0222D164
	thumb_func_end ov97_0222D144

	thumb_func_start ov97_0222D164
ov97_0222D164: @ 0x0222D164
	push {r3, lr}
	bl FUN_0203699C
	cmp r0, #0
	beq _0222D18C
	ldr r0, _0222D190 @ =0x0223F1A4
	movs r2, #0
	ldr r1, [r0]
	movs r0, #0xf
	lsls r0, r0, #6
	strb r2, [r1, r0]
	bl FUN_02032AC0
	movs r0, #0xab
	bl FUN_020364F0
	ldr r0, _0222D194 @ =ov97_0222D198
	movs r1, #0
	bl ov97_0222D0A4
_0222D18C:
	pop {r3, pc}
	nop
_0222D190: .4byte 0x0223F1A4
_0222D194: .4byte ov97_0222D198
	thumb_func_end ov97_0222D164

	thumb_func_start ov97_0222D198
ov97_0222D198: @ 0x0222D198
	bx lr
	.align 2, 0
	thumb_func_end ov97_0222D198

	thumb_func_start ov97_0222D19C
ov97_0222D19C: @ 0x0222D19C
	push {r3, lr}
	ldr r1, _0222D1C0 @ =0x0223F1A4
	ldr r2, [r1]
	cmp r2, #0
	bne _0222D1AC
	bl FUN_0200DA58
	pop {r3, pc}
_0222D1AC:
	ldr r1, [r2, #0x20]
	cmp r1, #0
	beq _0222D1BC
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, #0
	bne _0222D1BC
	blx r1
_0222D1BC:
	pop {r3, pc}
	nop
_0222D1C0: .4byte 0x0223F1A4
	thumb_func_end ov97_0222D19C

	thumb_func_start ov97_0222D1C4
ov97_0222D1C4: @ 0x0222D1C4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_02035E38
	cmp r0, #0
	bne _0222D1EA
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02036BE8
	adds r0, r5, #0
	bl ov97_0222D04C
	ldr r0, _0222D1EC @ =ov97_0222D0B4
	movs r1, #0
	bl ov97_0222D0A4
_0222D1EA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222D1EC: .4byte ov97_0222D0B4
	thumb_func_end ov97_0222D1C4

	thumb_func_start ov97_0222D1F0
ov97_0222D1F0: @ 0x0222D1F0
	adds r3, r0, #0
	adds r2, r1, #0
	adds r1, r3, #0
	ldr r3, _0222D1FC @ =FUN_02035A3C
	movs r0, #0x16
	bx r3
	.align 2, 0
_0222D1FC: .4byte FUN_02035A3C
	thumb_func_end ov97_0222D1F0

	thumb_func_start ov97_0222D200
ov97_0222D200: @ 0x0222D200
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_02035E38
	cmp r0, #0
	bne _0222D22C
	bl ov97_022301A4
	bl FUN_02006840
	ldr r0, [r0, #8]
	adds r1, r4, #0
	bl FUN_02036C1C
	adds r0, r5, #0
	bl ov97_0222D04C
	ldr r0, _0222D230 @ =ov97_0222D128
	movs r1, #0
	bl ov97_0222D0A4
_0222D22C:
	pop {r3, r4, r5, pc}
	nop
_0222D230: .4byte ov97_0222D128
	thumb_func_end ov97_0222D200

	thumb_func_start ov97_0222D234
ov97_0222D234: @ 0x0222D234
	ldr r1, _0222D244 @ =0x0223F1A4
	ldr r3, _0222D248 @ =ov97_0222D0A4
	ldr r1, [r1]
	adds r1, #0x27
	strb r0, [r1]
	ldr r0, _0222D24C @ =ov97_0222D144
	movs r1, #0
	bx r3
	.align 2, 0
_0222D244: .4byte 0x0223F1A4
_0222D248: .4byte ov97_0222D0A4
_0222D24C: .4byte ov97_0222D144
	thumb_func_end ov97_0222D234

	thumb_func_start ov97_0222D250
ov97_0222D250: @ 0x0222D250
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0222D256:
	adds r0, r4, #0
	bl FUN_02034168
	adds r1, r0, #0
	beq _0222D276
	adds r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0222D276
	adds r5, #0x8c
	adds r0, r5, #0
	movs r2, #0x50
	blx FUN_020D50B8
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0222D276:
	adds r4, r4, #1
	cmp r4, #0x10
	blt _0222D256
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov97_0222D250

	thumb_func_start ov97_0222D284
ov97_0222D284: @ 0x0222D284
	ldr r1, _0222D29C @ =0x0223F1A4
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0x27
	ldrb r1, [r1]
	cmp r1, r0
	bne _0222D29A
	movs r0, #0xf
	movs r1, #1
	lsls r0, r0, #6
	strb r1, [r2, r0]
_0222D29A:
	bx lr
	.align 2, 0
_0222D29C: .4byte 0x0223F1A4
	thumb_func_end ov97_0222D284

	thumb_func_start ov97_0222D2A0
ov97_0222D2A0: @ 0x0222D2A0
	ldr r0, _0222D2AC @ =0x0223F1A4
	ldr r1, [r0]
	movs r0, #0xf
	lsls r0, r0, #6
	ldrb r0, [r1, r0]
	bx lr
	.align 2, 0
_0222D2AC: .4byte 0x0223F1A4
	thumb_func_end ov97_0222D2A0

	thumb_func_start ov97_0222D2B0
ov97_0222D2B0: @ 0x0222D2B0
	movs r0, #0xd6
	lsls r0, r0, #2
	bx lr
	.align 2, 0
	thumb_func_end ov97_0222D2B0

	thumb_func_start ov97_0222D2B8
ov97_0222D2B8: @ 0x0222D2B8
	ldr r0, _0222D2C0 @ =0x0223F1A4
	ldr r0, [r0]
	adds r0, #0x68
	bx lr
	.align 2, 0
_0222D2C0: .4byte 0x0223F1A4
	thumb_func_end ov97_0222D2B8

	thumb_func_start ov97_0222D2C4
ov97_0222D2C4: @ 0x0222D2C4
	ldr r1, _0222D2D4 @ =0x0223F1A4
	movs r2, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, _0222D2D8 @ =0x000003C1
	strb r2, [r1, r0]
	bx lr
	nop
_0222D2D4: .4byte 0x0223F1A4
_0222D2D8: .4byte 0x000003C1
	thumb_func_end ov97_0222D2C4

	thumb_func_start ov97_0222D2DC
ov97_0222D2DC: @ 0x0222D2DC
	push {r3, lr}
	ldr r1, _0222D2F4 @ =0x0223F1A4
	movs r0, #0xf
	ldr r1, [r1]
	bl FUN_02018238
	ldr r0, _0222D2F4 @ =0x0223F1A4
	movs r1, #0
	str r1, [r0]
	bl FUN_02036978
	pop {r3, pc}
	.align 2, 0
_0222D2F4: .4byte 0x0223F1A4
	thumb_func_end ov97_0222D2DC

	thumb_func_start ov97_0222D2F8
ov97_0222D2F8: @ 0x0222D2F8
	ldr r3, _0222D304 @ =FUN_02032798
	adds r2, r0, #0
	ldr r0, _0222D308 @ =0x0223D704
	movs r1, #2
	bx r3
	nop
_0222D304: .4byte FUN_02032798
_0222D308: .4byte 0x0223D704
	thumb_func_end ov97_0222D2F8

	thumb_func_start ov97_0222D30C
ov97_0222D30C: @ 0x0222D30C
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	ldr r0, _0222D340 @ =0x000029F0
	bne _0222D32C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222D33C
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #1
	bl FUN_0200E7FC
	ldr r1, _0222D340 @ =0x000029F0
	str r0, [r4, r1]
	pop {r4, pc}
_0222D32C:
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222D336
	bl FUN_0200EBA0
_0222D336:
	ldr r0, _0222D340 @ =0x000029F0
	movs r1, #0
	str r1, [r4, r0]
_0222D33C:
	pop {r4, pc}
	nop
_0222D340: .4byte 0x000029F0
	thumb_func_end ov97_0222D30C

	thumb_func_start ov97_0222D344
ov97_0222D344: @ 0x0222D344
	ldr r3, _0222D348 @ =ov97_0222D30C
	bx r3
	.align 2, 0
_0222D348: .4byte ov97_0222D30C
	thumb_func_end ov97_0222D344

	thumb_func_start ov97_0222D34C
ov97_0222D34C: @ 0x0222D34C
	push {r3, r4, r5, r6, r7, lr}
	bl FUN_0200682C
	adds r7, r0, #0
	bl ov97_02237DA0
	ldr r0, [r7, #0x7c]
	cmp r0, #0
	beq _0222D362
	bl FUN_02013A3C
_0222D362:
	ldr r0, [r7, #0x78]
	cmp r0, #0
	beq _0222D370
	movs r1, #0
	adds r2, r1, #0
	bl FUN_02001384
_0222D370:
	adds r0, r7, #0
	adds r0, #0x18
	bl FUN_0201ACF4
	adds r0, r7, #0
	adds r0, #0x18
	bl FUN_0201A8FC
	adds r0, r7, #0
	adds r0, #0x58
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222D39C
	adds r0, r7, #0
	adds r0, #0x58
	bl FUN_0201ACF4
	adds r0, r7, #0
	adds r0, #0x58
	bl FUN_0201A8FC
_0222D39C:
	adds r5, r7, #0
	movs r6, #0
	adds r4, r7, #0
	adds r5, #0x28
_0222D3A4:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0222D3B6
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
_0222D3B6:
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, #0x10
	cmp r6, #3
	blt _0222D3A4
	ldr r0, [r7]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r7]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r7]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r7]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r7]
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0222D34C

	thumb_func_start ov97_0222D3E8
ov97_0222D3E8: @ 0x0222D3E8
	push {r3, lr}
	sub sp, #8
	bl ov97_02237A20
	bl ov97_02237A74
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0xa
	movs r2, #7
	movs r3, #9
	bl ov97_02237B0C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov97_0222D3E8

	thumb_func_start ov97_0222D40C
ov97_0222D40C: @ 0x0222D40C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	beq _0222D432
	str r1, [sp]
	ldr r1, _0222D440 @ =0x000005C4
	movs r0, #0
	ldr r1, [r4, r1]
	movs r2, #0x80
	movs r3, #0x64
	bl ov97_02237D14
	ldr r1, _0222D440 @ =0x000005C4
	add sp, #4
	str r0, [r4, r1]
	pop {r3, r4, pc}
_0222D432:
	ldr r0, _0222D440 @ =0x000005C4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0222D440: .4byte 0x000005C4
	thumb_func_end ov97_0222D40C

	thumb_func_start ov97_0222D444
ov97_0222D444: @ 0x0222D444
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0201A7CC
	cmp r0, #1
	bne _0222D45A
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200DC9C
_0222D45A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0222D444

	thumb_func_start ov97_0222D45C
ov97_0222D45C: @ 0x0222D45C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0201A7CC
	cmp r0, #1
	bne _0222D472
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200E084
_0222D472:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0222D45C

	thumb_func_start ov97_0222D474
ov97_0222D474: @ 0x0222D474
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _0222D4CC @ =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	beq _0222D492
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x18
	movs r2, #3
	bl ov97_0222DE78
_0222D492:
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	bl ov97_0222D444
	ldr r0, _0222D4CC @ =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	beq _0222D4C2
	adds r0, r4, #0
	movs r1, #0xf
	bl ov97_0222D200
	ldr r1, _0222D4D0 @ =0x00001C20
	ldr r0, _0222D4D4 @ =0x00000434
	str r1, [r4, r0]
	bl FUN_02039734
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D30C
	movs r0, #7
	pop {r3, r4, r5, pc}
_0222D4C2:
	movs r0, #0x13
	adds r4, #0x84
	str r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_0222D4CC: .4byte 0x000015D4
_0222D4D0: .4byte 0x00001C20
_0222D4D4: .4byte 0x00000434
	thumb_func_end ov97_0222D474

	thumb_func_start ov97_0222D4D8
ov97_0222D4D8: @ 0x0222D4D8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, #0x80
	ldr r1, [r0]
	cmp r1, #1
	bne _0222D4EE
	movs r0, #0x31
	pop {r3, r4, r5, pc}
_0222D4EE:
	subs r0, r1, #2
	cmp r0, #2
	bhi _0222D4F8
	movs r0, #0x31
	pop {r3, r4, r5, pc}
_0222D4F8:
	cmp r1, #5
	bne _0222D500
	movs r0, #0x31
	pop {r3, r4, r5, pc}
_0222D500:
	ldr r0, _0222D554 @ =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D510
	ldr r0, _0222D558 @ =0x00000438
	ldr r0, [r4, r0]
	bl ov97_0222D234
_0222D510:
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x18
	movs r2, #6
	bl ov97_0222DE78
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	bl ov97_0222D444
	ldr r0, _0222D554 @ =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D53E
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D40C
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D30C
_0222D53E:
	ldr r0, _0222D554 @ =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D550
	movs r0, #0xab
	bl FUN_020364F0
	movs r0, #9
	pop {r3, r4, r5, pc}
_0222D550:
	movs r0, #0x15
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222D554: .4byte 0x000015D4
_0222D558: .4byte 0x00000438
	thumb_func_end ov97_0222D4D8

	thumb_func_start ov97_0222D55C
ov97_0222D55C: @ 0x0222D55C
	push {r3, r4, r5, r6, r7, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _0222D5C0 @ =0x000015D4
	adds r5, r4, #0
	adds r6, r4, #0
	ldr r0, [r4, r0]
	adds r5, #0xdc
	adds r6, #0x8c
	cmp r0, #1
	beq _0222D57A
	cmp r0, #3
	beq _0222D5A0
	b _0222D5BA
_0222D57A:
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	bl ov97_0222D2B8
	movs r2, #0xd6
	adds r1, r0, #0
	adds r0, r5, #0
	lsls r2, r2, #2
	blx FUN_020D50B8
	adds r0, r4, #0
	adds r4, #0xdc
	adds r0, #0x8c
	adds r1, r4, #0
	movs r2, #0x56
	bl ov97_02238324
	b _0222D5BA
_0222D5A0:
	ldr r7, _0222D5C4 @ =0x000005D4
	movs r2, #0xd6
	adds r1, r4, r7
	adds r0, r5, #0
	adds r1, #0x50
	lsls r2, r2, #2
	blx FUN_020D50B8
	adds r0, r6, #0
	adds r1, r4, r7
	movs r2, #0x50
	blx FUN_020D50B8
_0222D5BA:
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222D5C0: .4byte 0x000015D4
_0222D5C4: .4byte 0x000005D4
	thumb_func_end ov97_0222D55C

	thumb_func_start ov97_0222D5C8
ov97_0222D5C8: @ 0x0222D5C8
	push {r3, lr}
	ldrh r1, [r0]
	cmp r1, #3
	bgt _0222D5E0
	cmp r1, #1
	blt _0222D610
	beq _0222D5F2
	cmp r1, #2
	beq _0222D5F2
	cmp r1, #3
	beq _0222D5E8
	b _0222D610
_0222D5E0:
	cmp r1, #0xd
	bne _0222D610
	movs r0, #1
	pop {r3, pc}
_0222D5E8:
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _0222D610
	movs r0, #1
	pop {r3, pc}
_0222D5F2:
	adds r0, #8
	movs r1, #0x98
	movs r2, #0
	bl FUN_02074470
	cmp r0, #3
	blt _0222D604
	cmp r0, #0xe
	ble _0222D60C
_0222D604:
	cmp r0, #0x40
	blt _0222D610
	cmp r0, #0x47
	bgt _0222D610
_0222D60C:
	movs r0, #1
	pop {r3, pc}
_0222D610:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov97_0222D5C8

	thumb_func_start ov97_0222D614
ov97_0222D614: @ 0x0222D614
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0222D64C @ =0x000029EC
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0222D626
	movs r1, #0
	subs r0, r0, #4
	str r1, [r4, r0]
_0222D626:
	bl ov97_0223847C
	subs r0, r0, #2
	cmp r0, #1
	bhi _0222D648
	adds r0, r4, #0
	adds r0, #0xdc
	bl ov97_0222D5C8
	cmp r0, #1
	beq _0222D642
	ldr r0, _0222D650 @ =0x0000061B
	bl FUN_02005748
_0222D642:
	ldr r0, _0222D654 @ =0x000029E8
	movs r1, #0
	str r1, [r4, r0]
_0222D648:
	pop {r4, pc}
	nop
_0222D64C: .4byte 0x000029EC
_0222D650: .4byte 0x0000061B
_0222D654: .4byte 0x000029E8
	thumb_func_end ov97_0222D614

	thumb_func_start ov97_0222D658
ov97_0222D658: @ 0x0222D658
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r5, r0, #0
	str r0, [sp]
	adds r4, #0x8c
	adds r0, r6, #0
	adds r5, #0xdc
	bl FUN_02006840
	ldr r7, [r0, #8]
	adds r0, r4, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bne _0222D684
	movs r6, #0
	b _0222D6B0
_0222D684:
	movs r1, #0x35
	adds r2, r4, #0
	movs r0, #0
	lsls r1, r1, #4
	strb r0, [r5, r1]
	adds r2, #0x4e
	ldrb r2, [r2]
	movs r6, #1
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1f
	bne _0222D69E
	subs r1, #8
	strb r0, [r5, r1]
_0222D69E:
	add r0, sp, #8
	bl FUN_020138A4
	add r0, sp, #8
	blx FUN_020CC16C
	movs r1, #0xd5
	lsls r1, r1, #2
	str r0, [r5, r1]
_0222D6B0:
	adds r0, r7, #0
	bl FUN_0202442C
	adds r4, #0x4c
	ldrh r1, [r4]
	str r0, [sp, #4]
	bl FUN_0202DE5C
	cmp r6, #0
	bne _0222D6D0
	ldr r0, [sp, #4]
	adds r1, r5, #0
	movs r2, #3
	bl FUN_0202DB2C
	b _0222D6D8
_0222D6D0:
	ldr r0, [sp, #4]
	adds r1, r5, #0
	bl FUN_0202DBAC
_0222D6D8:
	adds r0, r7, #0
	bl ov97_0223846C
	ldr r1, _0222D6F0 @ =0x000029EC
	ldr r0, [sp]
	movs r2, #0
	str r2, [r0, r1]
	ldr r2, _0222D6F4 @ =ov97_0222D614
	subs r1, r1, #4
	str r2, [r0, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222D6F0: .4byte 0x000029EC
_0222D6F4: .4byte ov97_0222D614
	thumb_func_end ov97_0222D658

	thumb_func_start ov97_0222D6F8
ov97_0222D6F8: @ 0x0222D6F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r4, r1, #0
	bl FUN_0200682C
	cmp r4, #0
	bne _0222D70C
	movs r5, #4
	b _0222D710
_0222D70C:
	movs r5, #0
	mvns r5, r5
_0222D710:
	ldr r1, [r0, #0x48]
	adds r4, r0, #0
	adds r4, #0x48
	cmp r1, #0
	bne _0222D73A
	movs r1, #0xa
	str r1, [sp]
	movs r1, #6
	str r1, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r2, #0
	movs r1, #0x6b
	str r2, [sp, #0xc]
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	ldr r0, [r0]
	adds r1, r4, #0
	movs r3, #0x17
	bl FUN_0201A7E8
_0222D73A:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	ldr r1, _0222D758 @ =0x0223E5A8
	adds r0, r6, #0
	movs r2, #2
	adds r3, r4, #0
	str r5, [sp]
	bl ov97_0222DD1C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222D758: .4byte 0x0223E5A8
	thumb_func_end ov97_0222D6F8

	thumb_func_start ov97_0222D75C
ov97_0222D75C: @ 0x0222D75C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, #0x48
	movs r1, #0
	bl ov97_0222D444
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl ov97_0222D444
	ldr r0, _0222D794 @ =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D788
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
_0222D788:
	bl FUN_02039794
	adds r0, r5, #0
	bl ov97_0222DA84
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222D794: .4byte 0x000015D4
	thumb_func_end ov97_0222D75C

	thumb_func_start ov97_0222D798
ov97_0222D798: @ 0x0222D798
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	bl FUN_0200682C
	adds r5, r0, #0
	bl ov97_02237624
	cmp r0, #0
	beq _0222D7B0
	movs r1, #2
	b _0222D7B2
_0222D7B0:
	movs r1, #1
_0222D7B2:
	ldr r0, _0222D80C @ =0x000015D4
	str r1, [r5, r0]
	adds r0, r5, #0
	adds r0, #0x38
	movs r1, #0
	bl ov97_0222D444
	adds r4, r5, #0
	ldr r0, [r5, #0x48]
	adds r4, #0x48
	cmp r0, #0
	bne _0222D7EA
	movs r0, #0xa
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #0
	movs r0, #0x6b
	str r2, [sp, #0xc]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r1, r4, #0
	movs r3, #0x17
	bl FUN_0201A7E8
_0222D7EA:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	movs r2, #2
	ldr r1, _0222D810 @ =0x0223E598
	adds r0, r6, #0
	adds r3, r4, #0
	str r2, [sp]
	bl ov97_0222DD1C
	movs r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0222D80C: .4byte 0x000015D4
_0222D810: .4byte 0x0223E598
	thumb_func_end ov97_0222D798

	thumb_func_start ov97_0222D814
ov97_0222D814: @ 0x0222D814
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _0222D87C @ =0x000015D4
	movs r1, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x38
	movs r1, #0
	bl ov97_0222D444
	adds r5, r4, #0
	ldr r0, [r4, #0x48]
	adds r5, #0x48
	cmp r0, #0
	bne _0222D85A
	movs r0, #0xa
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #0
	movs r0, #0x6b
	str r2, [sp, #0xc]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, r5, #0
	movs r3, #0x17
	bl FUN_0201A7E8
_0222D85A:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	movs r0, #0x4e
	str r0, [sp]
	ldr r1, _0222D880 @ =0x0223E568
	adds r0, r6, #0
	movs r2, #2
	adds r3, r5, #0
	bl ov97_0222DD1C
	movs r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222D87C: .4byte 0x000015D4
_0222D880: .4byte 0x0223E568
	thumb_func_end ov97_0222D814

	thumb_func_start ov97_0222D884
ov97_0222D884: @ 0x0222D884
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _0222D8EC @ =0x000015D4
	movs r1, #3
	str r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x38
	movs r1, #0
	bl ov97_0222D444
	adds r5, r4, #0
	ldr r0, [r4, #0x48]
	adds r5, #0x48
	cmp r0, #0
	bne _0222D8CA
	movs r0, #0xa
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #0
	movs r0, #0x6b
	str r2, [sp, #0xc]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, r5, #0
	movs r3, #0x17
	bl FUN_0201A7E8
_0222D8CA:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	movs r0, #0x4d
	str r0, [sp]
	ldr r1, _0222D8F0 @ =0x0223E578
	adds r0, r6, #0
	movs r2, #2
	adds r3, r5, #0
	bl ov97_0222DD1C
	movs r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222D8EC: .4byte 0x000015D4
_0222D8F0: .4byte 0x0223E578
	thumb_func_end ov97_0222D884

	thumb_func_start ov97_0222D8F4
ov97_0222D8F4: @ 0x0222D8F4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r1, [r0, #0x48]
	adds r4, #0x48
	cmp r1, #0
	bne _0222D928
	movs r1, #0xa
	str r1, [sp]
	movs r1, #6
	str r1, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r2, #0
	movs r1, #0x6b
	str r2, [sp, #0xc]
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	ldr r0, [r0]
	adds r1, r4, #0
	movs r3, #0x17
	bl FUN_0201A7E8
_0222D928:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	movs r0, #4
	str r0, [sp]
	ldr r1, _0222D948 @ =0x0223E588
	adds r0, r5, #0
	movs r2, #2
	adds r3, r4, #0
	bl ov97_0222DD1C
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0222D948: .4byte 0x0223E588
	thumb_func_end ov97_0222D8F4

	thumb_func_start ov97_0222D94C
ov97_0222D94C: @ 0x0222D94C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, #0x48
	movs r1, #0
	bl ov97_0222D444
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl ov97_0222D444
	bl FUN_02039794
	ldr r0, _0222D980 @ =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D978
	bl ov97_0222D2DC
_0222D978:
	adds r0, r5, #0
	bl ov97_0222DA84
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222D980: .4byte 0x000015D4
	thumb_func_end ov97_0222D94C

	thumb_func_start ov97_0222D984
ov97_0222D984: @ 0x0222D984
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x18
	movs r2, #3
	bl ov97_0222DE78
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	bl ov97_0222D444
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D30C
	ldr r0, _0222D9B8 @ =0x0223F1A8
	movs r1, #0x25
	str r1, [r0]
	movs r0, #0x20
	pop {r3, r4, r5, pc}
	nop
_0222D9B8: .4byte 0x0223F1A8
	thumb_func_end ov97_0222D984

	thumb_func_start ov97_0222D9BC
ov97_0222D9BC: @ 0x0222D9BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, #0x80
	ldr r0, [r0]
	subs r0, r0, #2
	cmp r0, #2
	bhi _0222D9D4
	movs r0, #0x31
	pop {r3, r4, r5, pc}
_0222D9D4:
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	bl ov97_0222D444
	adds r4, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #7
	bl ov97_0222DE78
	movs r0, #0x21
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov97_0222D9BC

	thumb_func_start ov97_0222D9F0
ov97_0222D9F0: @ 0x0222D9F0
	push {r3, lr}
	ldr r0, _0222DA14 @ =0x0223F1A8
	ldr r0, [r0]
	cmp r0, #0x28
	beq _0222DA02
	cmp r0, #0x29
	beq _0222DA02
	cmp r0, #0x30
	bne _0222DA10
_0222DA02:
	bl ov97_022389C8
	cmp r0, #0
	beq _0222DA10
	ldr r0, _0222DA14 @ =0x0223F1A8
	movs r1, #0x2b
	str r1, [r0]
_0222DA10:
	movs r0, #0x24
	pop {r3, pc}
	.align 2, 0
_0222DA14: .4byte 0x0223F1A8
	thumb_func_end ov97_0222D9F0

	thumb_func_start ov97_0222DA18
ov97_0222DA18: @ 0x0222DA18
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x18
	movs r2, #3
	bl ov97_0222DE78
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D30C
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	bl ov97_0222D444
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D30C
	movs r1, #1
	ldr r0, _0222DA5C @ =0x000015E0
	lsls r1, r1, #0xc
	str r1, [r4, r0]
	ldr r0, _0222DA60 @ =0x0000267C
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #0x1b
	pop {r3, r4, r5, pc}
	nop
_0222DA5C: .4byte 0x000015E0
_0222DA60: .4byte 0x0000267C
	thumb_func_end ov97_0222DA18

	thumb_func_start ov97_0222DA64
ov97_0222DA64: @ 0x0222DA64
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	adds r0, #0x38
	movs r1, #0
	bl ov97_0222D444
	adds r0, r4, #0
	movs r1, #0xc4
	movs r2, #0
	bl ov97_0222DDD0
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0222DA64

	thumb_func_start ov97_0222DA84
ov97_0222DA84: @ 0x0222DA84
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	bl FUN_0200682C
	adds r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_0202442C
	ldr r0, _0222DB00 @ =0x000005C8
	ldr r1, [r5, r0]
	cmp r1, #0x1e
	bne _0222DAAA
	movs r1, #1
	adds r0, r0, #4
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov97_02230224
_0222DAAA:
	adds r0, r5, #0
	adds r0, #0x28
	movs r1, #0
	bl ov97_0222D444
	adds r4, r5, #0
	ldr r0, [r5, #0x38]
	adds r4, #0x38
	cmp r0, #0
	bne _0222DADE
	movs r0, #9
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r2, #0
	movs r0, #0x49
	str r2, [sp, #0xc]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r1, r4, #0
	movs r3, #0xf
	bl FUN_0201A7E8
_0222DADE:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	movs r0, #1
	str r0, [sp]
	ldr r1, _0222DB04 @ =0x0223E5F0
	adds r0, r6, #0
	movs r2, #4
	adds r3, r4, #0
	bl ov97_0222DD1C
	movs r0, #4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222DB00: .4byte 0x000005C8
_0222DB04: .4byte 0x0223E5F0
	thumb_func_end ov97_0222DA84

	thumb_func_start ov97_0222DB08
ov97_0222DB08: @ 0x0222DB08
	push {r4, lr}
	bl FUN_0200682C
	ldr r1, _0222DB38 @ =0x000005C8
	adds r4, r0, #0
	ldr r2, [r4, r1]
	cmp r2, #0x1e
	bne _0222DB22
	movs r2, #1
	adds r1, r1, #4
	str r2, [r4, r1]
	bl ov97_02230224
_0222DB22:
	ldr r2, _0222DB3C @ =0x000015D8
	movs r0, #0
	ldr r2, [r4, r2]
	movs r1, #0x36
	movs r3, #2
	bl ov97_02237790
	movs r0, #0
	mvns r0, r0
	pop {r4, pc}
	nop
_0222DB38: .4byte 0x000005C8
_0222DB3C: .4byte 0x000015D8
	thumb_func_end ov97_0222DB08

	thumb_func_start ov97_0222DB40
ov97_0222DB40: @ 0x0222DB40
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _0222DB70 @ =0x000005C8
	ldr r1, [r4, r0]
	cmp r1, #0x1e
	bne _0222DB56
	movs r1, #1
	adds r0, r0, #4
	str r1, [r4, r0]
_0222DB56:
	movs r0, #1
	bl ov97_02237784
	ldr r2, _0222DB74 @ =0x000015D8
	movs r0, #0
	ldr r2, [r4, r2]
	movs r1, #0x35
	movs r3, #2
	bl ov97_02237790
	movs r0, #0
	mvns r0, r0
	pop {r4, pc}
	.align 2, 0
_0222DB70: .4byte 0x000005C8
_0222DB74: .4byte 0x000015D8
	thumb_func_end ov97_0222DB40

	thumb_func_start ov97_0222DB78
ov97_0222DB78: @ 0x0222DB78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r3, #0
	ldr r3, _0222DBC0 @ =0x0223D73C
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	add r2, sp, #0
	ldm r3!, {r0, r1}
	mov ip, r2
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	lsrs r1, r6, #0xb
	str r0, [r2]
	add r0, sp, #0
	strb r1, [r0, #0x12]
	lsrs r1, r5, #0xe
	strb r1, [r0, #0x13]
	lsls r1, r4, #0x18
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	mov r2, ip
	movs r3, #0
	bl FUN_020183C4
	lsls r1, r4, #0x18
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222DBC0: .4byte 0x0223D73C
	thumb_func_end ov97_0222DB78

	thumb_func_start ov97_0222DBC4
ov97_0222DBC4: @ 0x0222DBC4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, _0222DC1C @ =0x0223D72C
	add r3, sp, #0
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	movs r1, #0
	movs r2, #0xf
	adds r0, r4, #0
	lsls r2, r2, #0xc
	adds r3, r1, #0
	bl ov97_0222DB78
	movs r1, #1
	movs r2, #0x3e
	adds r0, r4, #0
	lsls r2, r2, #0xa
	lsls r3, r1, #0xf
	bl ov97_0222DB78
	movs r2, #0xe
	adds r0, r4, #0
	movs r1, #4
	lsls r2, r2, #0xa
	movs r3, #0
	bl ov97_0222DB78
	movs r2, #0x1e
	movs r3, #1
	adds r0, r4, #0
	movs r1, #5
	lsls r2, r2, #0xa
	lsls r3, r3, #0xe
	bl ov97_0222DB78
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222DC1C: .4byte 0x0223D72C
	thumb_func_end ov97_0222DBC4

	thumb_func_start ov97_0222DC20
ov97_0222DC20: @ 0x0222DC20
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x20
	movs r2, #4
	str r0, [sp]
	movs r0, #0x56
	adds r3, r2, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0
	adds r3, #0xfc
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #5
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #0x56
	str r0, [sp, #0xc]
	movs r0, #0x74
	adds r2, r4, #0
	movs r3, #5
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x56
	str r0, [sp, #0xc]
	movs r0, #0x74
	movs r1, #2
	adds r2, r4, #0
	movs r3, #5
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #8
	movs r2, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019E2C
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019448
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0222DC20

	thumb_func_start ov97_0222DC9C
ov97_0222DC9C: @ 0x0222DC9C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x56
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0
	adds r3, r0, #0
	adds r2, r1, #0
	adds r3, #0x8c
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #5
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #0x56
	str r0, [sp, #0xc]
	movs r0, #0x74
	adds r2, r4, #0
	adds r3, r1, #0
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x56
	str r0, [sp, #0xc]
	movs r0, #0x74
	movs r1, #2
	adds r2, r4, #0
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #8
	movs r2, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019E2C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019448
	adds r0, r4, #0
	bl ov97_0222DC20
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0222DC9C

	thumb_func_start ov97_0222DD1C
ov97_0222DD1C: @ 0x0222DD1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp]
	adds r5, r1, #0
	adds r7, r2, #0
	str r3, [sp, #4]
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0222DD38
	bl FUN_02013A3C
_0222DD38:
	adds r0, r7, #0
	movs r1, #0x56
	bl FUN_02013A04
	str r0, [r4, #0x7c]
	ldr r2, _0222DDC8 @ =0x000001A5
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x56
	bl FUN_0200B144
	movs r6, #0
	str r0, [r4, #0x10]
	cmp r7, #0
	ble _0222DD6A
_0222DD56:
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x10]
	ldr r2, [r5]
	ldr r3, [r5, #4]
	bl FUN_02013A4C
	adds r6, r6, #1
	adds r5, #8
	cmp r6, r7
	blt _0222DD56
_0222DD6A:
	ldr r0, [r4, #0x10]
	bl FUN_0200B190
	ldr r3, _0222DDCC @ =0x0223E5D0
	add r2, sp, #8
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r4, #0x7c]
	str r0, [sp, #8]
	add r0, sp, #8
	strh r7, [r0, #0x12]
	ldrh r1, [r0, #0x12]
	strh r1, [r0, #0x10]
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0222DDA2
	movs r1, #0
	adds r2, r1, #0
	bl FUN_02001384
_0222DDA2:
	movs r1, #0
	add r0, sp, #8
	adds r2, r1, #0
	movs r3, #0x56
	bl FUN_0200112C
	str r0, [r4, #0x78]
	movs r0, #0
	ldr r2, [sp, #0x40]
	mvns r0, r0
	cmp r2, r0
	beq _0222DDC4
	adds r4, #0x18
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov97_0222DE78
_0222DDC4:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222DDC8: .4byte 0x000001A5
_0222DDCC: .4byte 0x0223E5D0
	thumb_func_end ov97_0222DD1C

	thumb_func_start ov97_0222DDD0
ov97_0222DDD0: @ 0x0222DDD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x14]
	adds r7, r1, #0
	str r2, [sp, #0x1c]
	bl FUN_0200682C
	str r0, [sp, #0x18]
	ldr r0, [r0, #4]
	movs r5, #0
	bl FUN_0202442C
	ldr r1, _0222DE74 @ =0x0223E568
	ldr r4, [sp, #0x18]
	ldr r2, [r1, #0x50]
	ldr r1, [r1, #0x54]
	adds r4, #0x28
	adds r5, r5, #1
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	bl FUN_0202DD88
	cmp r0, #0
	beq _0222DE14
	lsls r6, r5, #3
	add r0, sp, #0x20
	adds r1, r0, r6
	ldr r0, _0222DE74 @ =0x0223E568
	adds r5, r5, #1
	ldr r3, [r0, #0x58]
	ldr r2, [r0, #0x5c]
	add r0, sp, #0x20
	str r3, [r0, r6]
	str r2, [r1, #4]
_0222DE14:
	lsls r6, r5, #3
	add r0, sp, #0x20
	adds r1, r0, r6
	ldr r0, _0222DE74 @ =0x0223E568
	ldr r3, [r0, #0x60]
	ldr r2, [r0, #0x64]
	add r0, sp, #0x20
	str r3, [r0, r6]
	str r2, [r1, #4]
	ldr r0, [r4]
	cmp r0, #0
	bne _0222DE52
	movs r0, #7
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #1
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r2, #0
	lsls r0, r7, #0x10
	str r2, [sp, #0xc]
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	adds r1, r4, #0
	ldr r0, [r0]
	movs r3, #8
	bl FUN_0201A7E8
_0222DE52:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x14]
	adds r2, r5, #1
	adds r3, r4, #0
	bl ov97_0222DD1C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DE74: .4byte 0x0223E568
	thumb_func_end ov97_0222DDD0

	thumb_func_start ov97_0222DE78
ov97_0222DE78: @ 0x0222DE78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r2, _0222DF08 @ =0x000001A5
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x56
	bl FUN_0200B144
	str r0, [r4, #0x10]
	movs r0, #0x56
	bl FUN_0200B358
	str r0, [r4, #0xc]
	movs r0, #1
	movs r1, #6
	bl FUN_02002DF8
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0201ADA4
	ldr r6, [r4, #0x14]
	cmp r6, #0
	bne _0222DEC0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r2, r7, #0
	movs r3, #0x56
	bl FUN_0200B29C
	adds r6, r0, #0
_0222DEC0:
	movs r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x68]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, _0222DF0C @ =0x0001020F
	adds r2, r6, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r5, #0
	bl FUN_0201D78C
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0222DEE6
	adds r0, r6, #0
	bl FUN_020237BC
_0222DEE6:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl FUN_0200E060
	ldr r0, [r4, #0x10]
	bl FUN_0200B190
	ldr r0, [r4, #0xc]
	bl FUN_0200B3F0
	movs r0, #0xff
	str r0, [r4, #0x68]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DF08: .4byte 0x000001A5
_0222DF0C: .4byte 0x0001020F
	thumb_func_end ov97_0222DE78

	thumb_func_start ov97_0222DF10
ov97_0222DF10: @ 0x0222DF10
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r6, r2, #0
	bl FUN_0200682C
	movs r0, #0x25
	movs r1, #0x56
	bl FUN_02023790
	adds r1, r6, #0
	movs r2, #0x24
	adds r4, r0, #0
	bl FUN_02023D8C
	movs r0, #0
	movs r1, #6
	bl FUN_02002DF8
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222DF6C @ =0x0001020F
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222DF6C: .4byte 0x0001020F
	thumb_func_end ov97_0222DF10

	thumb_func_start ov97_0222DF70
ov97_0222DF70: @ 0x0222DF70
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl FUN_0200682C
	ldr r0, [r0, #0x78]
	bl FUN_02001288
	adds r4, r0, #0
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _0222DF94
	adds r0, r0, #1
	cmp r4, r0
	beq _0222DFCA
	b _0222DFAE
_0222DF94:
	ldr r0, _0222DFCC @ =0x000005DC
	bl FUN_02005748
	cmp r6, #0
	beq _0222DFCA
	adds r0, r7, #0
	blx r6
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0222DFCA
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0222DFAE:
	ldr r0, _0222DFCC @ =0x000005DC
	bl FUN_02005748
	cmp r4, #0
	beq _0222DFCA
	ldr r0, _0222DFD0 @ =0x0223F1A8
	str r4, [r0, #0x10]
	adds r0, r7, #0
	blx r4
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0222DFCA
	str r0, [r5]
_0222DFCA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222DFCC: .4byte 0x000005DC
_0222DFD0: .4byte 0x0223F1A8
	thumb_func_end ov97_0222DF70

	thumb_func_start ov97_0222DFD4
ov97_0222DFD4: @ 0x0222DFD4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0201D710
	movs r0, #0
	adds r1, r0, #0
	movs r2, #0x56
	bl FUN_02002E7C
	movs r0, #0
	movs r1, #0x20
	movs r2, #0x56
	bl FUN_02002E7C
	ldr r0, [r4, #8]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x56
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl FUN_0200DD0C
	movs r0, #1
	str r0, [sp]
	movs r0, #0x56
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r1, #0
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DAA4
	movs r0, #5
	ldr r1, _0222E07C @ =0x00007D8C
	lsls r0, r0, #0x18
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x18
	bl FUN_0201A7CC
	cmp r0, #0
	bne _0222E058
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #0
	adds r1, r4, #0
	str r2, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x18
	movs r3, #2
	bl FUN_0201A7E8
_0222E058:
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x18
	movs r2, #0
	bl ov97_0222DE78
	adds r0, r5, #0
	movs r1, #0xc4
	movs r2, #0
	bl ov97_0222DDD0
	ldr r0, [r4]
	bl ov97_0222DC9C
	movs r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0222E07C: .4byte 0x00007D8C
	thumb_func_end ov97_0222DFD4

	thumb_func_start ov97_0222E080
ov97_0222E080: @ 0x0222E080
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r1, _0222E12C @ =0x000015E0
	adds r0, r6, #0
	adds r1, r4, r1
	bl ov97_02238EAC
	cmp r0, #4
	bhi _0222E128
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222E0A6: @ jump table
	.2byte _0222E128 - _0222E0A6 - 2 @ case 0
	.2byte _0222E0B0 - _0222E0A6 - 2 @ case 1
	.2byte _0222E0DC - _0222E0A6 - 2 @ case 2
	.2byte _0222E0DC - _0222E0A6 - 2 @ case 3
	.2byte _0222E0F0 - _0222E0A6 - 2 @ case 4
_0222E0B0:
	ldr r1, _0222E130 @ =0x00001658
	adds r0, r4, #0
	movs r2, #0xea
	adds r0, #0x8c
	adds r1, r4, r1
	lsls r2, r2, #2
	blx FUN_020D50B8
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	adds r0, r4, #0
	movs r1, #0x1b
	adds r0, #0x84
	str r1, [r0]
	movs r0, #0x13
	str r0, [r5]
	ldr r0, _0222E134 @ =0x000015DC
	movs r1, #0
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0222E0DC:
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	ldr r0, _0222E134 @ =0x000015DC
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #0x11
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0222E0F0:
	movs r0, #0x9a
	lsls r0, r0, #6
	adds r0, r4, r0
	bl FUN_0201ACF4
	movs r0, #0x9a
	lsls r0, r0, #6
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02019EBC
	ldr r0, _0222E138 @ =0x000005DC
	bl FUN_02005748
	adds r0, r6, #0
	movs r1, #0xc4
	movs r2, #0
	bl ov97_0222DDD0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #3
	str r0, [r5]
_0222E128:
	pop {r4, r5, r6, pc}
	nop
_0222E12C: .4byte 0x000015E0
_0222E130: .4byte 0x00001658
_0222E134: .4byte 0x000015DC
_0222E138: .4byte 0x000005DC
	thumb_func_end ov97_0222E080

	thumb_func_start ov97_0222E13C
ov97_0222E13C: @ 0x0222E13C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x5c
	adds r5, r0, #0
	ldr r0, _0222E1CC @ =0x0000266C
	ldr r4, [r5, r0]
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _0222E150
	movs r4, #0xb
_0222E150:
	adds r0, r5, #0
	movs r1, #0
	bl ov97_0222D30C
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r5]
	movs r1, #0
	bl FUN_02019EBC
	movs r0, #0x56
	bl FUN_0200B358
	movs r1, #2
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r2, _0222E1D0 @ =0x00002670
	movs r1, #0
	ldr r2, [r5, r2]
	movs r3, #5
	adds r6, r0, #0
	bl FUN_0200B60C
	movs r0, #0x1f
	movs r1, #0x9a
	str r0, [sp]
	movs r0, #3
	lsls r1, r1, #6
	str r0, [sp, #4]
	ldr r3, _0222E1D4 @ =0x000002B7
	add r0, sp, #8
	adds r1, r5, r1
	movs r2, #1
	bl ov97_02237808
	add r0, sp, #8
	movs r1, #0x18
	movs r2, #0x10
	movs r3, #0x64
	bl ov97_02237858
	add r0, sp, #8
	movs r1, #0
	movs r2, #1
	bl ov97_02237860
	str r6, [sp, #0x1c]
	str r4, [sp]
	movs r2, #4
	ldr r0, [r5]
	add r1, sp, #8
	adds r3, r2, #0
	bl ov97_0223795C
	adds r0, r6, #0
	bl FUN_0200B3F0
	add sp, #0x5c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222E1CC: .4byte 0x0000266C
_0222E1D0: .4byte 0x00002670
_0222E1D4: .4byte 0x000002B7
	thumb_func_end ov97_0222E13C

	thumb_func_start ov97_0222E1D8
ov97_0222E1D8: @ 0x0222E1D8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r1, r0, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #3
	bne _0222E1EE
	movs r4, #0x15
	b _0222E218
_0222E1EE:
	cmp r0, #4
	bne _0222E1F6
	movs r4, #0x19
	b _0222E218
_0222E1F6:
	cmp r0, #2
	bne _0222E1FE
	movs r4, #0x16
	b _0222E218
_0222E1FE:
	cmp r0, #1
	bne _0222E206
	movs r4, #0x1b
	b _0222E218
_0222E206:
	cmp r0, #5
	bne _0222E218
	adds r0, r5, #0
	adds r1, #0x18
	movs r2, #9
	movs r3, #0x34
	bl ov97_0222E228
	pop {r3, r4, r5, pc}
_0222E218:
	adds r0, r5, #0
	adds r1, #0x18
	adds r2, r4, #0
	movs r3, #0x33
	bl ov97_0222E228
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov97_0222E1D8

	thumb_func_start ov97_0222E228
ov97_0222E228: @ 0x0222E228
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	bl FUN_0200682C
	adds r4, r0, #0
	cmp r6, #0
	beq _0222E282
	cmp r5, #0
	beq _0222E282
	ldr r2, _0222E2A8 @ =0x000001A5
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x56
	bl FUN_0200B144
	str r0, [sp, #4]
	movs r0, #0x56
	bl FUN_0200B358
	ldr r1, [sp, #4]
	adds r2, r5, #0
	movs r3, #0x56
	str r0, [sp, #8]
	bl FUN_0200B29C
	str r0, [r4, #0x14]
	movs r0, #1
	str r0, [r4, #0x68]
	ldr r0, [sp]
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov97_0222DE78
	ldr r0, [sp, #8]
	str r7, [r4, #0x74]
	bl FUN_0200B3F0
	ldr r0, [sp, #4]
	bl FUN_0200B190
	b _0222E2A2
_0222E282:
	ldr r0, [r4, #0x6c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0222E2A2
	ldr r0, [r4, #0x14]
	bl FUN_020237BC
	movs r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x68]
	add sp, #0xc
	ldr r0, [r4, #0x74]
	pop {r4, r5, r6, r7, pc}
_0222E2A2:
	movs r0, #0x32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222E2A8: .4byte 0x000001A5
	thumb_func_end ov97_0222E228

	thumb_func_start ov97_0222E2AC
ov97_0222E2AC: @ 0x0222E2AC
	push {r3, lr}
	ldr r1, _0222E2D8 @ =0x000015D4
	ldr r0, [r0, r1]
	cmp r0, #4
	bhi _0222E2D4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222E2C2: @ jump table
	.2byte _0222E2D4 - _0222E2C2 - 2 @ case 0
	.2byte _0222E2CC - _0222E2C2 - 2 @ case 1
	.2byte _0222E2D4 - _0222E2C2 - 2 @ case 2
	.2byte _0222E2D4 - _0222E2C2 - 2 @ case 3
	.2byte _0222E2D4 - _0222E2C2 - 2 @ case 4
_0222E2CC:
	bl ov97_0222D2DC
	bl FUN_02039794
_0222E2D4:
	pop {r3, pc}
	nop
_0222E2D8: .4byte 0x000015D4
	thumb_func_end ov97_0222E2AC

	thumb_func_start ov97_0222E2DC
ov97_0222E2DC: @ 0x0222E2DC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov97_022301B0
	movs r0, #3
	movs r1, #0x56
	lsls r2, r0, #0x10
	bl FUN_02017FC8
	ldr r1, _0222E384 @ =0x000029F8
	adds r0, r5, #0
	movs r2, #0x56
	bl FUN_0200681C
	ldr r2, _0222E384 @ =0x000029F8
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x56
	bl FUN_02018340
	str r0, [r4]
	bl FUN_0201FF00
	bl FUN_0201FF68
	bl ov97_02232054
	ldr r0, [r4]
	bl ov97_0222DBC4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	ldr r1, _0222E388 @ =0x00000496
	movs r0, #0xa
	movs r2, #1
	bl FUN_02004550
	movs r0, #0x56
	bl ov97_02237520
	bl ov97_02237624
	cmp r0, #0
	beq _0222E358
	ldr r0, _0222E38C @ =0x000015D4
	movs r1, #2
	str r1, [r4, r0]
	ldr r0, _0222E390 @ =0x020E4C40
	ldrb r0, [r0]
	bl FUN_02017B70
	movs r0, #1
	bl ov97_02238400
_0222E358:
	ldr r0, _0222E394 @ =0x000005C8
	movs r1, #0x1d
	str r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl FUN_02025E44
	str r0, [r4, #8]
	movs r0, #0xff
	movs r2, #3
	str r0, [r4, #0x68]
	movs r0, #0
	movs r1, #0x5b
	lsls r2, r2, #8
	bl FUN_02017FC8
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222E384: .4byte 0x000029F8
_0222E388: .4byte 0x00000496
_0222E38C: .4byte 0x000015D4
_0222E390: .4byte 0x020E4C40
_0222E394: .4byte 0x000005C8
	thumb_func_end ov97_0222E2DC

	thumb_func_start ov97_0222E398
ov97_0222E398: @ 0x0222E398
	push {r4, r5, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	ldr r0, _0222E530 @ =0x00004E21
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r1, #0x56
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	adds r1, #0xd6
	ldr r0, [r0, r1]
	movs r1, #0x74
	movs r2, #0x27
	bl FUN_0200985C
	str r0, [r4, #0x58]
	ldr r0, _0222E530 @ =0x00004E21
	movs r1, #0x56
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0xc]
	adds r1, #0xda
	ldr r0, [r0, r1]
	movs r1, #0x74
	movs r2, #0x24
	movs r3, #0
	bl FUN_020098B8
	str r0, [r4, #0x5c]
	ldr r0, _0222E530 @ =0x00004E21
	movs r1, #0x56
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	adds r1, #0xde
	ldr r0, [r0, r1]
	movs r1, #0x74
	movs r2, #0x26
	movs r3, #1
	bl FUN_02009918
	str r0, [r4, #0x60]
	ldr r0, _0222E530 @ =0x00004E21
	movs r1, #0x56
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	adds r1, #0xe2
	ldr r0, [r0, r1]
	movs r1, #0x74
	movs r2, #0x25
	movs r3, #1
	bl FUN_02009918
	str r0, [r4, #0x64]
	ldr r0, _0222E534 @ =0x00004E22
	movs r1, #0x56
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	adds r1, #0xd6
	ldr r0, [r0, r1]
	movs r1, #0x74
	movs r2, #0x27
	movs r3, #1
	bl FUN_0200985C
	str r0, [r4, #0x70]
	ldr r0, _0222E534 @ =0x00004E22
	movs r1, #0x56
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0xc]
	adds r1, #0xda
	ldr r0, [r0, r1]
	movs r1, #0x74
	movs r2, #0x24
	movs r3, #0
	bl FUN_020098B8
	str r0, [r4, #0x74]
	ldr r0, _0222E534 @ =0x00004E22
	movs r1, #0x56
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	adds r1, #0xde
	ldr r0, [r0, r1]
	movs r1, #0x74
	movs r2, #0x26
	movs r3, #1
	bl FUN_02009918
	str r0, [r4, #0x78]
	ldr r0, _0222E534 @ =0x00004E22
	movs r1, #0x56
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	adds r1, #0xe2
	ldr r0, [r0, r1]
	movs r1, #0x74
	movs r2, #0x25
	movs r3, #1
	bl FUN_02009918
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x58]
	bl FUN_0200A328
	ldr r0, [r4, #0x70]
	bl FUN_0200A328
	ldr r0, [r4, #0x5c]
	bl FUN_0200A640
	ldr r0, [r4, #0x74]
	bl FUN_0200A640
	movs r0, #0
	movs r5, #0x4b
	ldr r2, [r4, #0xc]
	ldr r1, _0222E530 @ =0x00004E21
	mvns r0, r0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r5, r5, #2
	ldr r3, [r2, r5]
	str r3, [sp, #0x14]
	adds r3, r5, #4
	ldr r3, [r2, r3]
	str r3, [sp, #0x18]
	adds r3, r5, #0
	adds r3, #8
	ldr r3, [r2, r3]
	adds r5, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r2, r5]
	adds r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r4, #0
	adds r0, #0x10
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r2, [r4, #0xc]
	ldr r1, _0222E534 @ =0x00004E22
	movs r0, #0
	movs r5, #0x4b
	adds r4, #0x10
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r5, r5, #2
	ldr r3, [r2, r5]
	adds r4, #0x24
	str r3, [sp, #0x14]
	adds r3, r5, #4
	ldr r3, [r2, r3]
	str r3, [sp, #0x18]
	adds r3, r5, #0
	adds r3, #8
	ldr r3, [r2, r3]
	adds r5, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r2, r5]
	adds r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r4, #0
	adds r2, r1, #0
	bl FUN_020093B4
	add sp, #0x2c
	pop {r4, r5, pc}
	.align 2, 0
_0222E530: .4byte 0x00004E21
_0222E534: .4byte 0x00004E22
	thumb_func_end ov97_0222E398

	thumb_func_start ov97_0222E538
ov97_0222E538: @ 0x0222E538
	push {r4, lr}
	sub sp, #0x30
	cmp r1, #1
	beq _0222E544
	movs r3, #1
	b _0222E546
_0222E544:
	movs r3, #0
_0222E546:
	ldr r2, [r0, #0xc]
	adds r0, #0x10
	ldr r2, [r2]
	str r2, [sp]
	movs r2, #0x24
	muls r2, r3, r2
	adds r0, r0, r2
	movs r3, #1
	lsls r3, r3, #0xc
	movs r2, #0
	str r0, [sp, #4]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, sp, #0
	strh r2, [r0, #0x20]
	lsls r0, r3, #7
	str r0, [sp, #8]
	movs r0, #0xa
	lsls r2, r3, #5
	str r0, [sp, #0x24]
	movs r0, #0x56
	str r2, [sp, #0xc]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	cmp r1, #2
	bne _0222E584
	lsls r0, r3, #8
	adds r0, r2, r0
	str r0, [sp, #0xc]
_0222E584:
	add r0, sp, #0
	bl FUN_02021AA0
	adds r4, r0, #0
	beq _0222E5AC
	movs r1, #1
	bl FUN_02021CC8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02021E80
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02021D6C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02021CAC
_0222E5AC:
	adds r0, r4, #0
	add sp, #0x30
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0222E538

	thumb_func_start ov97_0222E5B4
ov97_0222E5B4: @ 0x0222E5B4
	push {r4, lr}
	movs r1, #1
	adds r4, r0, #0
	bl ov97_0222E538
	ldr r1, _0222E608 @ =0x00003014
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #2
	bl FUN_02021DCC
	ldr r0, _0222E608 @ =0x00003014
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021E50
	ldr r0, _0222E608 @ =0x00003014
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	ldr r0, _0222E608 @ =0x00003014
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021F58
	ldr r0, _0222E608 @ =0x00003014
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02021CF8
	ldr r0, _0222E608 @ =0x00003014
	ldr r0, [r4, r0]
	bl FUN_02021D28
	movs r1, #2
	lsls r1, r1, #0x12
	str r1, [r0]
	movs r1, #6
	lsls r1, r1, #0x10
	str r1, [r0, #4]
	pop {r4, pc}
	.align 2, 0
_0222E608: .4byte 0x00003014
	thumb_func_end ov97_0222E5B4

	thumb_func_start ov97_0222E60C
ov97_0222E60C: @ 0x0222E60C
	push {r4, lr}
	movs r1, #2
	adds r4, r0, #0
	bl ov97_0222E538
	ldr r1, _0222E660 @ =0x00003060
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #4
	bl FUN_02021DCC
	ldr r0, _0222E660 @ =0x00003060
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021E50
	ldr r0, _0222E660 @ =0x00003060
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	ldr r0, _0222E660 @ =0x00003060
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021F58
	ldr r0, _0222E660 @ =0x00003060
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02021CF8
	ldr r0, _0222E660 @ =0x00003060
	ldr r0, [r4, r0]
	bl FUN_02021D28
	movs r1, #2
	lsls r1, r1, #0x12
	str r1, [r0]
	lsls r1, r1, #1
	str r1, [r0, #4]
	pop {r4, pc}
	nop
_0222E660: .4byte 0x00003060
	thumb_func_end ov97_0222E60C

	thumb_func_start ov97_0222E664
ov97_0222E664: @ 0x0222E664
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0222E678 @ =0x00003014
	ldr r0, [r4, r0]
	bl FUN_02021BD4
	ldr r0, _0222E678 @ =0x00003014
	movs r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_0222E678: .4byte 0x00003014
	thumb_func_end ov97_0222E664

	thumb_func_start ov97_0222E67C
ov97_0222E67C: @ 0x0222E67C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0222E690 @ =0x00003060
	ldr r0, [r4, r0]
	bl FUN_02021BD4
	ldr r0, _0222E690 @ =0x00003060
	movs r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_0222E690: .4byte 0x00003060
	thumb_func_end ov97_0222E67C

	thumb_func_start ov97_0222E694
ov97_0222E694: @ 0x0222E694
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #2
	ldr r7, _0222E6EC @ =0x00001854
	str r0, [sp]
	movs r4, #0
	adds r5, r0, #0
	lsls r6, r6, #0xc
_0222E6A2:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _0222E6B2
	adds r1, r6, #0
	bl FUN_02021E2C
_0222E6B2:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0222E6BE
	adds r1, r6, #0
	bl FUN_02021E2C
_0222E6BE:
	adds r4, r4, #1
	adds r5, #0x4c
	cmp r4, #0x50
	blt _0222E6A2
	ldr r1, _0222E6F0 @ =0x00003014
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0222E6D8
	movs r1, #2
	lsls r1, r1, #0xc
	bl FUN_02021E2C
_0222E6D8:
	ldr r1, _0222E6F4 @ =0x00003060
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0222E6EA
	movs r1, #2
	lsls r1, r1, #0xc
	bl FUN_02021E2C
_0222E6EA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222E6EC: .4byte 0x00001854
_0222E6F0: .4byte 0x00003014
_0222E6F4: .4byte 0x00003060
	thumb_func_end ov97_0222E694

	thumb_func_start ov97_0222E6F8
ov97_0222E6F8: @ 0x0222E6F8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
	movs r7, #1
_0222E702:
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov97_0222E538
	adds r1, r5, #0
	adds r1, #0x94
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021DCC
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021E50
	adds r4, r4, #1
	adds r5, #0x4c
	cmp r4, #0x50
	blt _0222E702
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov97_0222E6F8

	thumb_func_start ov97_0222E734
ov97_0222E734: @ 0x0222E734
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
	adds r7, r4, #0
_0222E73E:
	cmp r4, #0x14
	bge _0222E76A
	adds r0, r6, #0
	movs r1, #1
	bl ov97_0222E538
	adds r1, r5, #0
	adds r1, #0x94
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021DCC
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021E50
	b _0222E770
_0222E76A:
	adds r0, r5, #0
	adds r0, #0x94
	str r7, [r0]
_0222E770:
	adds r4, r4, #1
	adds r5, #0x4c
	cmp r4, #0x50
	blt _0222E73E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov97_0222E734

	thumb_func_start ov97_0222E77C
ov97_0222E77C: @ 0x0222E77C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _0222E7B0 @ =0x00001854
	movs r4, #0
	adds r5, r6, #0
_0222E786:
	adds r0, r6, #0
	movs r1, #2
	bl ov97_0222E538
	ldr r1, _0222E7B0 @ =0x00001854
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #5
	bl FUN_02021DCC
	ldr r0, [r5, r7]
	movs r1, #0
	bl FUN_02021E50
	adds r4, r4, #1
	adds r5, #0x4c
	cmp r4, #0x50
	blt _0222E786
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E7B0: .4byte 0x00001854
	thumb_func_end ov97_0222E77C

	thumb_func_start ov97_0222E7B4
ov97_0222E7B4: @ 0x0222E7B4
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_0222E7BC:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _0222E7DA
	bl FUN_02021BD4
	adds r0, r5, #0
	adds r0, #0x94
	str r6, [r0]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_0200DA58
_0222E7DA:
	adds r4, r4, #1
	adds r5, #0x4c
	cmp r4, #0x50
	blt _0222E7BC
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_0222E7B4

	thumb_func_start ov97_0222E7E4
ov97_0222E7E4: @ 0x0222E7E4
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r7, _0222E80C @ =0x00001890
	adds r5, r0, #0
	adds r6, r4, #0
_0222E7EE:
	ldr r0, _0222E810 @ =0x00001854
	ldr r0, [r5, r0]
	bl FUN_02021BD4
	ldr r0, _0222E810 @ =0x00001854
	str r6, [r5, r0]
	ldr r0, [r5, r7]
	bl FUN_0200DA58
	adds r4, r4, #1
	adds r5, #0x4c
	cmp r4, #0x50
	blt _0222E7EE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E80C: .4byte 0x00001890
_0222E810: .4byte 0x00001854
	thumb_func_end ov97_0222E7E4

	thumb_func_start ov97_0222E814
ov97_0222E814: @ 0x0222E814
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	adds r5, r0, #0
	str r0, [sp]
	adds r0, #0x88
	ldr r3, _0222EA58 @ =0x0223D758
	movs r4, #0
	add r7, sp, #0x64
	str r0, [sp]
	add r2, sp, #0x10
	movs r6, #0xa
_0222E82A:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r6, r6, #1
	bne _0222E82A
	ldr r0, [r3]
	str r0, [r2]
_0222E836:
	movs r2, #2
	adds r0, r5, #0
	movs r1, #6
	lsls r2, r2, #0x12
	adds r0, #0x98
	str r2, [r0]
	adds r0, r5, #0
	lsls r1, r1, #0x10
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r5, #0
	lsrs r1, r2, #5
	adds r0, #0xa4
	str r1, [r0]
	movs r1, #5
	adds r0, r5, #0
	lsls r1, r1, #0xc
	adds r0, #0xa8
	str r1, [r0]
	lsrs r2, r4, #0x1f
	lsls r1, r4, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r5, #0
	adds r1, r2, r1
	adds r0, #0xb4
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xbc
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x8c
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #0xa
	blx FUN_020E1F6C
	adds r0, r0, #4
	cmp r0, #0
	ble _0222E89C
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222E8AA
_0222E89C:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222E8AA:
	blx FUN_020E1740
	adds r1, r5, #0
	adds r1, #0xa4
	str r0, [r1]
	cmp r4, #0x32
	ble _0222E8D2
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	movs r0, #0x41
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xb8
	str r1, [r0]
	b _0222E95C
_0222E8D2:
	cmp r4, #0x28
	ble _0222E8EE
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	adds r0, r4, #0
	adds r0, #0xfa
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xb8
	str r1, [r0]
	b _0222E95C
_0222E8EE:
	cmp r4, #0x1e
	ble _0222E90A
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	adds r0, r4, #0
	adds r0, #0xf0
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xb8
	str r1, [r0]
	b _0222E95C
_0222E90A:
	cmp r4, #0x19
	ble _0222E926
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	adds r0, r4, #0
	adds r0, #0xe6
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xb8
	str r1, [r0]
	b _0222E95C
_0222E926:
	cmp r4, #0x14
	ble _0222E942
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	adds r0, r4, #0
	adds r0, #0xdc
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xb8
	str r1, [r0]
	b _0222E95C
_0222E942:
	add r6, sp, #0x10
	add r3, sp, #0x64
	movs r2, #0xa
_0222E948:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222E948
	ldr r0, [r6]
	str r0, [r3]
	adds r0, r5, #0
	ldr r1, [r7]
	adds r0, #0xb8
	str r1, [r0]
_0222E95C:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r1, r0, #1
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	blx FUN_020E01B8
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _0222EA5C @ =0x66666666
	ldr r1, _0222EA60 @ =0x3FE66666
	blx FUN_020E0234
	blx FUN_020E0088
	adds r1, r5, #0
	adds r1, #0xb8
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xb8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0xf
	adds r0, #0xc0
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc0
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc8
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc0
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0xcc
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #4
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl FUN_0201D2E8
	movs r1, #0xe0
	blx FUN_020E1F6C
	adds r1, #0x10
	cmp r1, #0
	ble _0222E9F6
	bl FUN_0201D2E8
	movs r1, #0xe0
	blx FUN_020E1F6C
	adds r1, #0x10
	lsls r0, r1, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222EA10
_0222E9F6:
	bl FUN_0201D2E8
	movs r1, #0xe0
	blx FUN_020E1F6C
	adds r1, #0x10
	lsls r0, r1, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222EA10:
	blx FUN_020E1740
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	add r1, sp, #4
	bl FUN_02021C50
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, _0222EA64 @ =ov97_0222EEB8
	ldr r1, [sp]
	movs r2, #6
	bl FUN_0200D9E8
	adds r1, r5, #0
	adds r1, #0xd0
	str r0, [r1]
	ldr r0, [sp]
	adds r4, r4, #1
	adds r0, #0x4c
	adds r5, #0x4c
	adds r7, r7, #4
	str r0, [sp]
	cmp r4, #0x50
	bge _0222EA54
	b _0222E836
_0222EA54:
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222EA58: .4byte 0x0223D758
_0222EA5C: .4byte 0x66666666
_0222EA60: .4byte 0x3FE66666
_0222EA64: .4byte ov97_0222EEB8
	thumb_func_end ov97_0222E814

	thumb_func_start ov97_0222EA68
ov97_0222EA68: @ 0x0222EA68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r5, #0
	movs r4, #0
	adds r7, #0x88
_0222EA74:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EA80
	b _0222EBBC
_0222EA80:
	adds r1, r5, #0
	movs r0, #2
	adds r1, #0x98
	lsls r0, r0, #0x12
	str r0, [r1]
	adds r1, r5, #0
	movs r0, #6
	adds r1, #0x9c
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0xa4
	lsrs r0, r0, #3
	str r0, [r1]
	adds r1, r5, #0
	movs r0, #1
	adds r1, #0xa8
	lsls r0, r0, #0xc
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0xb4
	movs r0, #0xff
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0xbc
	movs r0, #0
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0x8c
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0x90
	str r0, [r1]
	cmp r4, #0x1e
	ble _0222EADA
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	adds r0, r5, #0
	adds r1, #0xf
	adds r0, #0xb8
	str r1, [r0]
	b _0222EB1C
_0222EADA:
	cmp r4, #0x14
	ble _0222EAF2
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	adds r0, r5, #0
	adds r1, #0xa
	adds r0, #0xb8
	str r1, [r0]
	b _0222EB1C
_0222EAF2:
	cmp r4, #0xa
	ble _0222EB0A
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	adds r0, r5, #0
	adds r1, #0xa
	adds r0, #0xb8
	str r1, [r0]
	b _0222EB1C
_0222EB0A:
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	adds r0, r5, #0
	adds r1, r1, #5
	adds r0, #0xb8
	str r1, [r0]
_0222EB1C:
	adds r1, r5, #0
	adds r1, #0xb8
	movs r0, #0
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc0
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc8
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc0
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0xcc
	str r1, [r0]
	bl FUN_0201D2E8
	movs r1, #0x5a
	lsls r1, r1, #2
	blx FUN_020E1F6C
	str r1, [sp]
	bl FUN_0201D2E8
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1b
	subs r1, r1, r2
	movs r0, #0x1b
	rors r1, r0
	ldr r0, [sp]
	adds r6, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, #0x40
	bl FUN_0201D250
	adds r1, r5, #0
	adds r1, #0x98
	ldr r1, [r1]
	muls r0, r6, r0
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	adds r1, r5, #0
	adds r1, #0x9c
	ldr r1, [r1]
	muls r0, r6, r0
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	add r1, sp, #4
	bl FUN_02021C50
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021DCC
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, _0222EBCC @ =ov97_0222EEB8
	adds r1, r7, #0
	movs r2, #6
	bl FUN_0200D9E8
	adds r1, r5, #0
	adds r1, #0xd0
	str r0, [r1]
_0222EBBC:
	adds r4, r4, #1
	adds r5, #0x4c
	adds r7, #0x4c
	cmp r4, #0x50
	bge _0222EBC8
	b _0222EA74
_0222EBC8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222EBCC: .4byte ov97_0222EEB8
	thumb_func_end ov97_0222EA68

	thumb_func_start ov97_0222EBD0
ov97_0222EBD0: @ 0x0222EBD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0222ED98 @ =0x00001848
	movs r4, #0
	adds r6, r5, r0
_0222EBDC:
	movs r1, #2
	ldr r0, _0222ED9C @ =0x00001858
	lsls r1, r1, #0x12
	str r1, [r5, r0]
	movs r1, #6
	lsls r1, r1, #0x12
	adds r0, r0, #4
	str r1, [r5, r0]
	movs r1, #1
	ldr r0, _0222EDA0 @ =0x00001864
	lsls r1, r1, #0xe
	str r1, [r5, r0]
	movs r1, #5
	lsls r1, r1, #0xc
	adds r0, r0, #4
	str r1, [r5, r0]
	lsrs r2, r4, #0x1f
	lsls r1, r4, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	adds r1, r0, #4
	ldr r0, _0222EDA4 @ =0x00001874
	str r1, [r5, r0]
	movs r1, #0
	adds r0, #8
	str r1, [r5, r0]
	ldr r0, _0222EDA8 @ =0x0000184C
	str r1, [r5, r0]
	bl FUN_0201D2E8
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	adds r1, r0, #2
	ldr r0, _0222EDAC @ =0x00001884
	str r1, [r5, r0]
	adds r0, r4, #0
	movs r1, #0x1e
	blx FUN_020E1F6C
	adds r0, r0, #4
	cmp r0, #0
	ble _0222EC4E
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222EC5C
_0222EC4E:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222EC5C:
	blx FUN_020E1740
	ldr r1, _0222EDA0 @ =0x00001864
	cmp r4, #0x3c
	str r0, [r5, r1]
	ble _0222EC82
	movs r0, #0x62
	movs r1, #5
	lsls r0, r0, #6
	str r1, [r5, r0]
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r0, _0222EDB0 @ =0x00001878
	adds r1, #0x46
	str r1, [r5, r0]
	b _0222ED30
_0222EC82:
	cmp r4, #0x32
	ble _0222ECA0
	movs r0, #0x62
	movs r1, #5
	lsls r0, r0, #6
	str r1, [r5, r0]
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r0, _0222EDB0 @ =0x00001878
	adds r1, #0x3c
	str r1, [r5, r0]
	b _0222ED30
_0222ECA0:
	cmp r4, #0x28
	ble _0222ECBE
	movs r0, #0x62
	movs r1, #5
	lsls r0, r0, #6
	str r1, [r5, r0]
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	ldr r0, _0222EDB0 @ =0x00001878
	adds r1, #0x32
	str r1, [r5, r0]
	b _0222ED30
_0222ECBE:
	cmp r4, #0x1e
	ble _0222ECDC
	movs r0, #0x62
	movs r1, #5
	lsls r0, r0, #6
	str r1, [r5, r0]
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r0, _0222EDB0 @ =0x00001878
	adds r1, #0x28
	str r1, [r5, r0]
	b _0222ED30
_0222ECDC:
	cmp r4, #0x14
	ble _0222ECFA
	movs r0, #0x62
	movs r1, #5
	lsls r0, r0, #6
	str r1, [r5, r0]
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r0, _0222EDB0 @ =0x00001878
	adds r1, #0x1e
	str r1, [r5, r0]
	b _0222ED30
_0222ECFA:
	cmp r4, #0xa
	ble _0222ED18
	movs r0, #0x62
	movs r1, #5
	lsls r0, r0, #6
	str r1, [r5, r0]
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	ldr r0, _0222EDB0 @ =0x00001878
	adds r1, #0x14
	str r1, [r5, r0]
	b _0222ED30
_0222ED18:
	movs r0, #0x62
	movs r1, #5
	lsls r0, r0, #6
	str r1, [r5, r0]
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	ldr r0, _0222EDB0 @ =0x00001878
	adds r1, #0xa
	str r1, [r5, r0]
_0222ED30:
	movs r0, #0x62
	lsls r0, r0, #6
	ldr r1, [r5, r0]
	adds r0, #8
	str r1, [r5, r0]
	movs r0, #0x62
	lsls r0, r0, #6
	ldr r1, [r5, r0]
	adds r0, #0xc
	str r1, [r5, r0]
	ldr r0, _0222EDB4 @ =0x00001854
	ldr r0, [r5, r0]
	bl FUN_02021D28
	adds r3, r0, #0
	add r2, sp, #0
	ldm r3!, {r0, r1}
	adds r7, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r1, r7, #0
	str r0, [r2]
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #0x12
	str r0, [sp, #4]
	ldr r0, _0222EDB4 @ =0x00001854
	ldr r0, [r5, r0]
	bl FUN_02021C50
	ldr r0, _0222EDB4 @ =0x00001854
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_02021CAC
	ldr r0, _0222EDB8 @ =ov97_0222EEB8
	adds r1, r6, #0
	movs r2, #6
	bl FUN_0200D9E8
	ldr r1, _0222EDBC @ =0x00001890
	adds r4, r4, #1
	str r0, [r5, r1]
	adds r5, #0x4c
	adds r6, #0x4c
	cmp r4, #0x50
	bge _0222ED94
	b _0222EBDC
_0222ED94:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222ED98: .4byte 0x00001848
_0222ED9C: .4byte 0x00001858
_0222EDA0: .4byte 0x00001864
_0222EDA4: .4byte 0x00001874
_0222EDA8: .4byte 0x0000184C
_0222EDAC: .4byte 0x00001884
_0222EDB0: .4byte 0x00001878
_0222EDB4: .4byte 0x00001854
_0222EDB8: .4byte ov97_0222EEB8
_0222EDBC: .4byte 0x00001890
	thumb_func_end ov97_0222EBD0

	thumb_func_start ov97_0222EDC0
ov97_0222EDC0: @ 0x0222EDC0
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
	ldr r0, _0222EEB4 @ =0x45800000
	bls _0222EE28
	adds r1, r4, #0
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222EE36
_0222EE28:
	adds r1, r4, #0
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222EE36:
	blx FUN_020E1740
	blx FUN_020BCFF0
	blx FUN_020E17B4
	ldr r1, _0222EEB4 @ =0x45800000
	blx FUN_020E1304
	ldr r1, [sp, #0x30]
	adds r4, r0, #0
	blx FUN_020E11CC
	blo _0222EE6E
	add r1, sp, #0x18
	movs r0, #0x1c
	ldrsh r0, [r1, r0]
	blx FUN_020E17B4
	adds r1, r4, #0
	blx FUN_020E1108
	bhi _0222EE6E
	movs r0, #0
	adds r1, r4, #0
	blx FUN_020E1228
	bne _0222EE74
_0222EE6E:
	add sp, #0x18
	movs r0, #0
	pop {r4, r5, r6, pc}
_0222EE74:
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
_0222EEB4: .4byte 0x45800000
	thumb_func_end ov97_0222EDC0

	thumb_func_start ov97_0222EEB8
ov97_0222EEB8: @ 0x0222EEB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r1, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ldr r0, [r5, #0xc]
	beq _0222EED6
	movs r1, #0
	bl FUN_02021E50
	ldr r0, [r5, #0x30]
	add sp, #0x24
	subs r0, r0, #1
	str r0, [r5, #0x30]
	pop {r4, r5, r6, r7, pc}
_0222EED6:
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, [r5, #0xc]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x18
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #0x18]
	blx FUN_020E17B4
	ldr r1, _0222F200 @ =0x45800000
	blx FUN_020E1304
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	blx FUN_020E17B4
	ldr r1, _0222F200 @ =0x45800000
	blx FUN_020E1304
	adds r7, r0, #0
	ldr r0, [r5, #0x1c]
	blx FUN_020E17B4
	ldr r1, _0222F200 @ =0x45800000
	blx FUN_020E1304
	adds r4, r0, #0
	ldr r0, [r5, #0x20]
	blx FUN_020E17B4
	ldr r1, _0222F200 @ =0x45800000
	blx FUN_020E1304
	blx FUN_020E1740
	add r1, sp, #0x14
	str r1, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsls r0, r0, #4
	lsls r1, r1, #4
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov97_0222EDC0
	cmp r0, #0
	beq _0222EFCA
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _0222EFCA
	ldr r0, [sp, #0x14]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _0222F200 @ =0x45800000
	bls _0222EF70
	ldr r1, [sp, #0x14]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222EF7E
_0222EF70:
	ldr r1, [sp, #0x14]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222EF7E:
	blx FUN_020E1740
	ldr r1, [sp, #0x18]
	adds r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _0222F200 @ =0x45800000
	bls _0222EFA6
	ldr r1, [sp, #0x10]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222EFB4
_0222EFA6:
	ldr r1, [sp, #0x10]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222EFB4:
	blx FUN_020E1740
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x18
	bl FUN_02021C50
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0222EFCA:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0222EFD8
	cmp r0, #1
	beq _0222F04E
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0222EFD8:
	ldr r1, [r5, #0x10]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	cmp r0, #0
	ble _0222EFF4
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222F002
_0222EFF4:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222F002:
	adds r4, r0, #0
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x1c]
	subs r0, r1, r0
	cmp r0, #0
	ble _0222F020
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222F02E
_0222F020:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222F02E:
	blx FUN_020E1740
	adds r6, r0, #0
	adds r0, r4, #0
	blx FUN_020E1740
	adds r1, r0, #0
	adds r0, r6, #0
	blx FUN_020BDA20
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x24]
	add sp, #0x24
	adds r0, r0, #1
	str r0, [r5, #0x24]
	pop {r4, r5, r6, r7, pc}
_0222F04E:
	ldr r0, [r5, #4]
	cmp r0, #0x14
	bge _0222F05A
	adds r0, r0, #1
	str r0, [r5, #4]
	b _0222F05E
_0222F05A:
	movs r0, #1
	str r0, [r5, #8]
_0222F05E:
	ldr r0, [r5, #0x28]
	adds r0, #8
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _0222F0B4
	ldr r0, [r5, #0x34]
	movs r1, #0x5a
	adds r0, #8
	lsls r1, r1, #2
	str r0, [r5, #0x34]
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	str r1, [r5, #0x34]
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x38]
	muls r0, r1, r0
	asrs r0, r0, #0xc
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x10]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F0B4:
	cmp r0, #1
	bne _0222F102
	ldr r0, [r5, #0x34]
	movs r1, #0x5a
	adds r0, #8
	lsls r1, r1, #2
	str r0, [r5, #0x34]
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	str r1, [r5, #0x34]
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x38]
	muls r0, r1, r0
	asrs r0, r0, #0xc
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x10]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F102:
	cmp r0, #2
	bne _0222F160
	ldr r0, [r5, #0x34]
	movs r1, #0x5a
	adds r0, #8
	lsls r1, r1, #2
	str r0, [r5, #0x34]
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	str r1, [r5, #0x34]
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x38]
	muls r0, r1, r0
	asrs r0, r0, #0xc
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x10]
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #0
	mvns r0, r0
	muls r0, r2, r0
	adds r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x44]
	ldr r3, [r5, #0x14]
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #0
	mvns r0, r0
	muls r0, r2, r0
	adds r0, r3, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F160:
	cmp r0, #3
	bne _0222F1BE
	ldr r0, [r5, #0x34]
	movs r1, #0x5a
	adds r0, #8
	lsls r1, r1, #2
	str r0, [r5, #0x34]
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	str r1, [r5, #0x34]
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x38]
	muls r0, r1, r0
	asrs r0, r0, #0xc
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x10]
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #0
	mvns r0, r0
	muls r0, r2, r0
	adds r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x44]
	ldr r3, [r5, #0x14]
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #0
	mvns r0, r0
	muls r0, r2, r0
	adds r0, r3, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F1BE:
	cmp r0, #4
	bne _0222F204
	ldr r1, [r5, #0x38]
	cmp r1, #0x60
	bge _0222F1CE
	ldr r0, [r5, #0x3c]
	adds r0, r1, r0
	str r0, [r5, #0x38]
_0222F1CE:
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x10]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #0x1c]
	b _0222F32C
	.align 2, 0
_0222F200: .4byte 0x45800000
_0222F204:
	cmp r0, #5
	bne _0222F256
	ldr r1, [r5, #0x38]
	cmp r1, #0x60
	bge _0222F214
	ldr r0, [r5, #0x3c]
	adds r0, r1, r0
	str r0, [r5, #0x38]
_0222F214:
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x10]
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #0
	mvns r0, r0
	muls r0, r2, r0
	adds r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x44]
	ldr r3, [r5, #0x14]
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #0
	mvns r0, r0
	muls r0, r2, r0
	adds r0, r3, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F256:
	movs r0, #0xa
	str r0, [r5, #4]
	movs r0, #2
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #0xa
	adds r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x18]
	blx FUN_020E17B4
	ldr r1, _0222F344 @ =0x45800000
	blx FUN_020E1304
	adds r4, r0, #0
	ldr r0, [sp, #0x1c]
	blx FUN_020E17B4
	ldr r1, _0222F344 @ =0x45800000
	blx FUN_020E1304
	adds r6, r0, #0
	ldr r0, [r5, #0x1c]
	blx FUN_020E17B4
	ldr r1, _0222F344 @ =0x45800000
	blx FUN_020E1304
	add r1, sp, #0x14
	str r1, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsls r0, r0, #4
	lsls r1, r1, #4
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov97_0222EDC0
	cmp r0, #0
	beq _0222F328
	ldr r0, [sp, #0x14]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _0222F344 @ =0x45800000
	bls _0222F2D0
	ldr r1, [sp, #0x14]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222F2DE
_0222F2D0:
	ldr r1, [sp, #0x14]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222F2DE:
	blx FUN_020E1740
	ldr r1, [sp, #0x18]
	adds r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _0222F344 @ =0x45800000
	bls _0222F306
	ldr r1, [sp, #0x10]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222F314
_0222F306:
	ldr r1, [sp, #0x10]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222F314:
	blx FUN_020E1740
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x18
	bl FUN_02021C50
	b _0222F32C
_0222F328:
	movs r0, #1
	str r0, [r5, #8]
_0222F32C:
	movs r1, #0x5a
	ldr r0, [r5, #0x28]
	lsls r1, r1, #2
	blx FUN_020E1F6C
	str r1, [r5, #0x28]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x18
	bl FUN_02021C50
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222F344: .4byte 0x45800000
	thumb_func_end ov97_0222EEB8

	thumb_func_start ov97_0222F348
ov97_0222F348: @ 0x0222F348
	adds r3, r0, #0
	movs r2, #8
	ldrsb r2, [r3, r2]
	ldr r3, _0222F358 @ =FUN_020BF578
	ldr r0, _0222F35C @ =0x04000050
	movs r1, #0x22
	bx r3
	nop
_0222F358: .4byte FUN_020BF578
_0222F35C: .4byte 0x04000050
	thumb_func_end ov97_0222F348

	thumb_func_start ov97_0222F360
ov97_0222F360: @ 0x0222F360
	adds r3, r0, #0
	movs r2, #8
	ldrsb r2, [r3, r2]
	ldr r3, _0222F370 @ =FUN_020BF578
	ldr r0, _0222F374 @ =0x04001050
	movs r1, #0x22
	bx r3
	nop
_0222F370: .4byte FUN_020BF578
_0222F374: .4byte 0x04001050
	thumb_func_end ov97_0222F360

	thumb_func_start ov97_0222F378
ov97_0222F378: @ 0x0222F378
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_0222F348
	adds r0, r4, #0
	bl ov97_0222F360
	pop {r4, pc}
	thumb_func_end ov97_0222F378

	thumb_func_start ov97_0222F388
ov97_0222F388: @ 0x0222F388
	push {r3, lr}
	movs r0, #1
	movs r1, #0
	bl FUN_0201975C
	movs r0, #5
	movs r1, #0
	bl FUN_0201975C
	pop {r3, pc}
	thumb_func_end ov97_0222F388

	thumb_func_start ov97_0222F39C
ov97_0222F39C: @ 0x0222F39C
	push {r4, lr}
	movs r4, #1
	cmp r1, #0
	beq _0222F3AE
	cmp r1, #1
	beq _0222F3DA
	cmp r1, #2
	beq _0222F3F4
	b _0222F408
_0222F3AE:
	movs r1, #8
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0222F3C8
	subs r1, r1, r2
	cmp r1, #0
	ble _0222F3C2
	strb r1, [r0, #8]
	movs r4, #0
	b _0222F408
_0222F3C2:
	movs r1, #0
	strb r1, [r0, #8]
	b _0222F408
_0222F3C8:
	bge _0222F408
	adds r1, r1, r2
	bpl _0222F3D4
	strb r1, [r0, #8]
	movs r4, #0
	b _0222F408
_0222F3D4:
	movs r1, #0
	strb r1, [r0, #8]
	b _0222F408
_0222F3DA:
	movs r3, #8
	ldrsb r1, [r0, r3]
	subs r2, r1, r2
	adds r1, r3, #0
	subs r1, #0x18
	cmp r2, r1
	ble _0222F3EE
	strb r2, [r0, #8]
	movs r4, #0
	b _0222F408
_0222F3EE:
	subs r3, #0x18
	strb r3, [r0, #8]
	b _0222F408
_0222F3F4:
	movs r1, #8
	ldrsb r1, [r0, r1]
	adds r1, r1, r2
	cmp r1, #0x10
	bge _0222F404
	strb r1, [r0, #8]
	movs r4, #0
	b _0222F408
_0222F404:
	movs r1, #0x10
	strb r1, [r0, #8]
_0222F408:
	bl ov97_0222F378
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov97_0222F39C

	thumb_func_start ov97_0222F410
ov97_0222F410: @ 0x0222F410
	push {r4, lr}
	movs r4, #1
	cmp r1, #0
	beq _0222F422
	cmp r1, #1
	beq _0222F44E
	cmp r1, #2
	beq _0222F468
	b _0222F47C
_0222F422:
	movs r1, #8
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0222F43C
	subs r1, r1, r2
	cmp r1, #0
	ble _0222F436
	strb r1, [r0, #8]
	movs r4, #0
	b _0222F47C
_0222F436:
	movs r1, #0
	strb r1, [r0, #8]
	b _0222F47C
_0222F43C:
	bge _0222F47C
	adds r1, r1, r2
	bpl _0222F448
	strb r1, [r0, #8]
	movs r4, #0
	b _0222F47C
_0222F448:
	movs r1, #0
	strb r1, [r0, #8]
	b _0222F47C
_0222F44E:
	movs r3, #8
	ldrsb r1, [r0, r3]
	subs r2, r1, r2
	adds r1, r3, #0
	subs r1, #0x18
	cmp r2, r1
	ble _0222F462
	strb r2, [r0, #8]
	movs r4, #0
	b _0222F47C
_0222F462:
	subs r3, #0x18
	strb r3, [r0, #8]
	b _0222F47C
_0222F468:
	movs r1, #8
	ldrsb r1, [r0, r1]
	adds r1, r1, r2
	cmp r1, #0x10
	bge _0222F478
	strb r1, [r0, #8]
	movs r4, #0
	b _0222F47C
_0222F478:
	movs r1, #0x10
	strb r1, [r0, #8]
_0222F47C:
	bl ov97_0222F348
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov97_0222F410

	thumb_func_start ov97_0222F484
ov97_0222F484: @ 0x0222F484
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	strb r1, [r4, #8]
	bl ov97_0222F378
	adds r0, r4, #0
	bl ov97_0222E398
	adds r0, r4, #0
	bl ov97_0222E6F8
	adds r0, r4, #0
	bl ov97_0222E814
	adds r0, r4, #0
	bl ov97_0222E5B4
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0222F484

	thumb_func_start ov97_0222F4BC
ov97_0222F4BC: @ 0x0222F4BC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	cmp r1, #9
	bls _0222F4C8
	b _0222F72C
_0222F4C8:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222F4D4: @ jump table
	.2byte _0222F4E8 - _0222F4D4 - 2 @ case 0
	.2byte _0222F4F4 - _0222F4D4 - 2 @ case 1
	.2byte _0222F50A - _0222F4D4 - 2 @ case 2
	.2byte _0222F56E - _0222F4D4 - 2 @ case 3
	.2byte _0222F596 - _0222F4D4 - 2 @ case 4
	.2byte _0222F5EC - _0222F4D4 - 2 @ case 5
	.2byte _0222F60A - _0222F4D4 - 2 @ case 6
	.2byte _0222F692 - _0222F4D4 - 2 @ case 7
	.2byte _0222F704 - _0222F4D4 - 2 @ case 8
	.2byte _0222F718 - _0222F4D4 - 2 @ case 9
_0222F4E8:
	adds r0, r4, #0
	bl ov97_0222F484
	movs r0, #1
	str r0, [r4]
	b _0222F740
_0222F4F4:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl ov97_0222F39C
	cmp r0, #0
	bne _0222F504
	b _0222F740
_0222F504:
	movs r0, #2
	str r0, [r4]
	b _0222F740
_0222F50A:
	movs r5, #0
	movs r6, #1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r5, #0
_0222F514:
	adds r2, r1, #0
	adds r2, #0x90
	ldr r2, [r2]
	cmp r2, #0
	beq _0222F522
	adds r5, r5, #1
	b _0222F524
_0222F522:
	adds r6, r3, #0
_0222F524:
	adds r0, r0, #1
	adds r1, #0x4c
	cmp r0, #0x50
	blt _0222F514
	cmp r5, #0x32
	ble _0222F53C
	ldr r0, _0222F748 @ =0x00003014
	movs r1, #4
	ldr r0, [r4, r0]
	bl FUN_02021DCC
	b _0222F55A
_0222F53C:
	cmp r5, #0x1e
	ble _0222F54C
	ldr r0, _0222F748 @ =0x00003014
	movs r1, #3
	ldr r0, [r4, r0]
	bl FUN_02021DCC
	b _0222F55A
_0222F54C:
	cmp r5, #7
	ble _0222F55A
	ldr r0, _0222F748 @ =0x00003014
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02021CAC
_0222F55A:
	cmp r6, #0
	bne _0222F562
	cmp r5, #0x4f
	bne _0222F618
_0222F562:
	movs r0, #3
	str r0, [r4]
	adds r0, r4, #0
	bl ov97_0222E7B4
	b _0222F740
_0222F56E:
	ldr r0, _0222F74C @ =0x000030A0
	ldr r0, [r4, r0]
	ldr r0, [r0]
	cmp r0, #2
	bne _0222F618
	adds r0, r4, #0
	bl ov97_0222E734
	adds r0, r4, #0
	bl ov97_0222EA68
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	bl ov97_0222F388
	movs r0, #4
	str r0, [r4]
	b _0222F740
_0222F596:
	movs r5, #0
	movs r6, #1
	adds r1, r5, #0
	adds r2, r4, #0
	adds r0, r5, #0
_0222F5A0:
	adds r3, r2, #0
	adds r3, #0x94
	ldr r3, [r3]
	cmp r3, #0
	beq _0222F5BA
	adds r3, r2, #0
	adds r3, #0x90
	ldr r3, [r3]
	cmp r3, #0
	beq _0222F5B8
	adds r5, r5, #1
	b _0222F5BA
_0222F5B8:
	adds r6, r0, #0
_0222F5BA:
	adds r1, r1, #1
	adds r2, #0x4c
	cmp r1, #0x50
	blt _0222F5A0
	movs r1, #2
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov97_0222F410
	cmp r6, #0
	bne _0222F5D4
	cmp r5, #0x13
	bne _0222F618
_0222F5D4:
	ldr r0, _0222F750 @ =0x0000061B
	bl FUN_02005748
	movs r0, #5
	str r0, [r4]
	adds r0, r4, #0
	bl ov97_0222E7B4
	adds r0, r4, #0
	bl ov97_0222E60C
	b _0222F740
_0222F5EC:
	movs r1, #2
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov97_0222F410
	cmp r0, #0
	beq _0222F618
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl ov97_0222F410
	movs r0, #6
	str r0, [r4]
	b _0222F740
_0222F60A:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl ov97_0222F410
	cmp r0, #0
	bne _0222F61A
_0222F618:
	b _0222F740
_0222F61A:
	ldr r0, _0222F748 @ =0x00003014
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	ldr r0, _0222F754 @ =0x00003060
	ldr r0, [r4, r0]
	bl FUN_02021D28
	movs r1, #0xe
	ldr r2, [r5, #4]
	lsls r1, r1, #0x10
	cmp r2, r1
	bge _0222F63E
	movs r1, #2
	lsls r1, r1, #0xe
	adds r1, r2, r1
	str r1, [r5, #4]
_0222F63E:
	movs r1, #3
	ldr r2, [r5, #4]
	lsls r1, r1, #0x12
	subs r2, r2, r1
	cmp r2, #0
	ble _0222F740
	ldr r2, [r0, #4]
	lsls r1, r1, #1
	cmp r2, r1
	bge _0222F672
	movs r1, #2
	lsls r1, r1, #0xe
	adds r1, r2, r1
	str r1, [r0, #4]
	ldr r0, _0222F754 @ =0x00003060
	ldr r0, [r4, r0]
	bl FUN_02021D34
	cmp r0, #0
	bne _0222F740
	ldr r0, _0222F754 @ =0x00003060
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	b _0222F740
_0222F672:
	movs r0, #7
	str r0, [r4]
	adds r0, r4, #0
	bl ov97_0222E664
	adds r0, r4, #0
	bl ov97_0222E77C
	adds r0, r4, #0
	bl ov97_0222EBD0
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	b _0222F740
_0222F692:
	movs r5, #0
	ldr r0, _0222F758 @ =0x00001850
	movs r6, #1
	adds r2, r5, #0
	adds r3, r4, #0
	adds r7, r5, #0
_0222F69E:
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _0222F6A8
	adds r5, r5, #1
	b _0222F6AA
_0222F6A8:
	adds r6, r7, #0
_0222F6AA:
	adds r2, r2, #1
	adds r3, #0x4c
	cmp r2, #0x50
	blt _0222F69E
	cmp r5, #7
	ble _0222F6C0
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl ov97_0222F39C
_0222F6C0:
	cmp r5, #0x32
	ble _0222F6D0
	ldr r0, _0222F754 @ =0x00003060
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	b _0222F6EE
_0222F6D0:
	cmp r5, #0x1e
	ble _0222F6E0
	ldr r0, _0222F754 @ =0x00003060
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02021DCC
	b _0222F6EE
_0222F6E0:
	cmp r5, #7
	ble _0222F6EE
	ldr r0, _0222F754 @ =0x00003060
	movs r1, #3
	ldr r0, [r4, r0]
	bl FUN_02021DCC
_0222F6EE:
	cmp r6, #0
	beq _0222F740
	movs r0, #8
	str r0, [r4]
	adds r0, r4, #0
	bl ov97_0222E7E4
	adds r0, r4, #0
	bl ov97_0222E67C
	b _0222F740
_0222F704:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl ov97_0222F39C
	cmp r0, #0
	beq _0222F740
	movs r0, #9
	str r0, [r4]
	b _0222F740
_0222F718:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl ov97_0222F39C
	cmp r0, #0
	beq _0222F740
	movs r0, #0xff
	str r0, [r4]
	b _0222F740
_0222F72C:
	ldr r1, _0222F74C @ =0x000030A0
	movs r2, #0
	ldr r1, [r4, r1]
	str r2, [r1]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_0222F740:
	adds r0, r4, #0
	bl ov97_0222E694
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222F748: .4byte 0x00003014
_0222F74C: .4byte 0x000030A0
_0222F750: .4byte 0x0000061B
_0222F754: .4byte 0x00003060
_0222F758: .4byte 0x00001850
	thumb_func_end ov97_0222F4BC

	thumb_func_start ov97_0222F75C
ov97_0222F75C: @ 0x0222F75C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	blx FUN_020D0A04
	ldr r0, _0222FAB0 @ =0x000005C8
	ldr r0, [r4, r0]
	cmp r0, #0x1d
	beq _0222F77C
	adds r0, r4, #0
	bl ov97_02230224
_0222F77C:
	ldr r3, [r5]
	cmp r3, #0x39
	bls _0222F786
	bl _02230164
_0222F786:
	adds r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222F792: @ jump table
	.2byte _0222F806 - _0222F792 - 2 @ case 0
	.2byte _0222F818 - _0222F792 - 2 @ case 1
	.2byte _0222F836 - _0222F792 - 2 @ case 2
	.2byte _0222F840 - _0222F792 - 2 @ case 3
	.2byte _0222F84E - _0222F792 - 2 @ case 4
	.2byte _0222F85C - _0222F792 - 2 @ case 5
	.2byte _02230164 - _0222F792 - 2 @ case 6
	.2byte _0222FAA4 - _0222F792 - 2 @ case 7
	.2byte _0222FB8C - _0222F792 - 2 @ case 8
	.2byte _0222FB98 - _0222F792 - 2 @ case 9
	.2byte _0222FC58 - _0222F792 - 2 @ case 10
	.2byte _0222FCA6 - _0222F792 - 2 @ case 11
	.2byte _0222FCC8 - _0222F792 - 2 @ case 12
	.2byte _0222FD58 - _0222F792 - 2 @ case 13
	.2byte _0222FDAE - _0222F792 - 2 @ case 14
	.2byte _0222FDDA - _0222F792 - 2 @ case 15
	.2byte _0222FE1A - _0222F792 - 2 @ case 16
	.2byte _0222FE3C - _0222F792 - 2 @ case 17
	.2byte _0222FE74 - _0222F792 - 2 @ case 18
	.2byte _0222FEB8 - _0222F792 - 2 @ case 19
	.2byte _0222FF5A - _0222F792 - 2 @ case 20
	.2byte _0222FF66 - _0222F792 - 2 @ case 21
	.2byte _0222FF6C - _0222F792 - 2 @ case 22
	.2byte _0222FFA2 - _0222F792 - 2 @ case 23
	.2byte _0222FFBC - _0222F792 - 2 @ case 24
	.2byte _02230034 - _0222F792 - 2 @ case 25
	.2byte _02230164 - _0222F792 - 2 @ case 26
	.2byte _0222F86A - _0222F792 - 2 @ case 27
	.2byte _02230164 - _0222F792 - 2 @ case 28
	.2byte _02230164 - _0222F792 - 2 @ case 29
	.2byte _02230164 - _0222F792 - 2 @ case 30
	.2byte _0222F928 - _0222F792 - 2 @ case 31
	.2byte _0222F876 - _0222F792 - 2 @ case 32
	.2byte _0222F93C - _0222F792 - 2 @ case 33
	.2byte _0222F9DE - _0222F792 - 2 @ case 34
	.2byte _0222F9BC - _0222F792 - 2 @ case 35
	.2byte _0222FA80 - _0222F792 - 2 @ case 36
	.2byte _02230164 - _0222F792 - 2 @ case 37
	.2byte _02230164 - _0222F792 - 2 @ case 38
	.2byte _02230164 - _0222F792 - 2 @ case 39
	.2byte _02230164 - _0222F792 - 2 @ case 40
	.2byte _02230164 - _0222F792 - 2 @ case 41
	.2byte _02230164 - _0222F792 - 2 @ case 42
	.2byte _02230164 - _0222F792 - 2 @ case 43
	.2byte _02230164 - _0222F792 - 2 @ case 44
	.2byte _02230164 - _0222F792 - 2 @ case 45
	.2byte _02230164 - _0222F792 - 2 @ case 46
	.2byte _02230164 - _0222F792 - 2 @ case 47
	.2byte _02230164 - _0222F792 - 2 @ case 48
	.2byte _02230050 - _0222F792 - 2 @ case 49
	.2byte _02230074 - _0222F792 - 2 @ case 50
	.2byte _02230082 - _0222F792 - 2 @ case 51
	.2byte _0223009E - _0222F792 - 2 @ case 52
	.2byte _022300B4 - _0222F792 - 2 @ case 53
	.2byte _022300C8 - _0222F792 - 2 @ case 54
	.2byte _022300DA - _0222F792 - 2 @ case 55
	.2byte _0223011C - _0222F792 - 2 @ case 56
	.2byte _0223015E - _0222F792 - 2 @ case 57
_0222F806:
	movs r0, #0x56
	bl ov97_02237694
	ldr r0, _0222FAB4 @ =0x000015D8
	str r5, [r4, r0]
	movs r0, #1
	str r0, [r5]
	bl _02230164
_0222F818:
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov97_0222DFD4
	adds r0, r4, #0
	bl ov97_0222D3E8
	movs r0, #1
	movs r1, #3
	adds r2, r5, #0
	movs r3, #2
	bl ov97_02237790
	bl _02230164
_0222F836:
	adds r0, r5, #0
	bl ov97_022377F0
	bl _02230164
_0222F840:
	ldr r2, _0222FAB8 @ =ov97_0222DB40
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov97_0222DF70
	bl _02230164
_0222F84E:
	ldr r2, _0222FABC @ =ov97_0222DA64
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov97_0222DF70
	bl _02230164
_0222F85C:
	ldr r2, _0222FAC0 @ =ov97_0222D75C
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov97_0222DF70
	bl _02230164
_0222F86A:
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov97_0222E080
	bl _02230164
_0222F876:
	adds r0, r4, #0
	bl ov97_022302F4
	ldr r0, _0222FAC4 @ =0x0223F1A8
	ldr r0, [r0]
	cmp r0, #0x2d
	bne _0222F90E
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	adds r0, r6, #0
	bl ov97_0222D55C
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x8c
	bl ov97_02232148
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _0222F8BA
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	movs r0, #0x31
	str r0, [r5]
	b _0222F90E
_0222F8BA:
	adds r0, r4, #0
	adds r0, #0x58
	bl FUN_0201A7CC
	cmp r0, #0
	bne _0222F8E8
	movs r0, #2
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #0
	movs r0, #0x71
	adds r1, r4, #0
	str r2, [sp, #0xc]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x58
	movs r3, #3
	bl FUN_0201A7E8
_0222F8E8:
	bl ov97_02238D54
	adds r1, r4, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, #0x58
	bl ov97_0222DF10
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #4
	bl ov97_0222DE78
	adds r0, r6, #0
	bl ov97_0222D8F4
	movs r0, #0x1f
	str r0, [r5]
_0222F90E:
	ldr r0, _0222FAC4 @ =0x0223F1A8
	ldr r0, [r0]
	subs r0, #0x2e
	cmp r0, #1
	bls _0222F91C
	bl _02230164
_0222F91C:
	bl ov97_022302D4
	movs r0, #0x11
	str r0, [r5]
	bl _02230164
_0222F928:
	ldr r2, _0222FAC8 @ =ov97_0222D9F0
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov97_0222DF70
	adds r0, r4, #0
	bl ov97_022302F4
	bl _02230164
_0222F93C:
	adds r0, r6, #0
	bl ov97_0222D55C
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D30C
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D40C
	adds r0, r7, #0
	bl ov97_0222D5C8
	cmp r0, #1
	bne _0222F9A8
	adds r0, r6, #0
	bl ov97_0222D658
	ldr r0, _0222FACC @ =0x000029F4
	movs r1, #1
	str r1, [r4, r0]
	adds r0, r4, #0
	subs r1, r1, #2
	bl ov97_0222D40C
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl ov97_0222D444
	ldr r1, _0222FAD0 @ =0x000030A4
	movs r0, #0x56
	bl FUN_02018144
	ldr r2, _0222FAD0 @ =0x000030A4
	movs r1, #0
	adds r6, r0, #0
	blx FUN_020D5124
	ldr r0, _0222FACC @ =0x000029F4
	adds r1, r4, r0
	ldr r0, _0222FAD4 @ =0x000030A0
	str r1, [r6, r0]
	bl ov97_02237AEC
	str r0, [r6, #0xc]
	ldr r0, _0222FAD8 @ =ov97_0222F4BC
	adds r1, r6, #0
	movs r2, #5
	bl FUN_0200D9E8
	b _0222F9B6
_0222F9A8:
	ldr r0, [r4]
	adds r1, r7, #0
	bl ov97_02238194
	adds r0, r6, #0
	bl ov97_0222D658
_0222F9B6:
	movs r0, #0x22
	str r0, [r5]
	b _02230164
_0222F9BC:
	ldr r0, _0222FACC @ =0x000029F4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FA4A
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #8
	movs r3, #0x37
	bl ov97_0222E228
	str r0, [r5]
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	b _02230164
_0222F9DE:
	bl ov97_02238528
	adds r7, r0, #0
	cmp r7, #4
	bne _0222F9EC
	bl ov97_022384F4
_0222F9EC:
	cmp r7, #2
	bne _0222FA46
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	bl ov97_0222D40C
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #0
	bl ov97_0222D45C
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02019EBC
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	adds r6, r4, #0
	adds r6, #0xdc
	adds r0, r6, #0
	bl ov97_0222D5C8
	cmp r0, #1
	bne _0222FA3A
	ldr r0, [r4]
	adds r1, r6, #0
	bl ov97_02238194
	ldr r0, _0222FACC @ =0x000029F4
	movs r1, #2
	str r1, [r4, r0]
	b _0222FA40
_0222FA3A:
	ldr r0, _0222FADC @ =0x00000624
	bl FUN_02005748
_0222FA40:
	movs r0, #0x23
	str r0, [r5]
	b _02230164
_0222FA46:
	cmp r7, #3
	beq _0222FA4C
_0222FA4A:
	b _02230164
_0222FA4C:
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	bl ov97_0222D40C
	adds r0, r4, #0
	adds r0, #0xda
	ldrb r1, [r0]
	movs r0, #4
	movs r2, #0x1a
	bics r1, r0
	adds r0, r4, #0
	adds r0, #0xda
	strb r1, [r0]
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r3, #0x37
	bl ov97_0222E228
	str r0, [r5]
	b _02230164
_0222FA80:
	adds r0, r4, #0
	bl ov97_022302F4
	ldr r0, _0222FAC4 @ =0x0223F1A8
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #0x2d
	cmp r0, #2
	bhi _0222FB74
	cmp r1, #0x2f
	bne _0222FA9A
	bl ov97_022302D4
_0222FA9A:
	adds r0, r6, #0
	bl ov97_0222D94C
	str r0, [r5]
	b _02230164
_0222FAA4:
	adds r0, r4, #0
	bl ov97_0222D250
	ldr r1, _0222FAE0 @ =0x00000438
	b _0222FAE4
	nop
_0222FAB0: .4byte 0x000005C8
_0222FAB4: .4byte 0x000015D8
_0222FAB8: .4byte ov97_0222DB40
_0222FABC: .4byte ov97_0222DA64
_0222FAC0: .4byte ov97_0222D75C
_0222FAC4: .4byte 0x0223F1A8
_0222FAC8: .4byte ov97_0222D9F0
_0222FACC: .4byte 0x000029F4
_0222FAD0: .4byte 0x000030A4
_0222FAD4: .4byte 0x000030A0
_0222FAD8: .4byte ov97_0222F4BC
_0222FADC: .4byte 0x00000624
_0222FAE0: .4byte 0x00000438
_0222FAE4:
	str r0, [r4, r1]
	movs r0, #0
	ldr r1, [r4, r1]
	mvns r0, r0
	cmp r1, r0
	beq _0222FB5C
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x8c
	bl ov97_02232148
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x58
	bl FUN_0201A7CC
	cmp r0, #0
	bne _0222FB36
	movs r0, #2
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #0
	movs r0, #0x71
	adds r1, r4, #0
	str r2, [sp, #0xc]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x58
	movs r3, #3
	bl FUN_0201A7E8
_0222FB36:
	adds r1, r4, #0
	adds r2, r4, #0
	adds r0, r6, #0
	adds r1, #0x58
	adds r2, #0x8c
	bl ov97_0222DF10
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #4
	bl ov97_0222DE78
	adds r0, r6, #0
	movs r1, #0
	bl ov97_0222D6F8
	movs r0, #8
	str r0, [r5]
_0222FB5C:
	ldr r0, _0222FE84 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	bne _0222FB76
	ldr r0, _0222FE88 @ =0x00000434
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222FB76
_0222FB74:
	b _02230164
_0222FB76:
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	bl ov97_0222D2DC
	bl FUN_02039794
	movs r0, #0x11
	str r0, [r5]
	b _02230164
_0222FB8C:
	ldr r2, _0222FE8C @ =ov97_0222D94C
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov97_0222DF70
	b _02230164
_0222FB98:
	bl FUN_0203608C
	adds r7, r0, #0
	beq _0222FBF0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02035D78
	cmp r0, #0
	beq _0222FBF0
	movs r0, #0xab
	bl FUN_02036540
	cmp r0, #1
	bne _0222FC20
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020388F4
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #7
	bl ov97_0222DE78
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D40C
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D30C
	movs r1, #0x96
	ldr r0, _0222FE88 @ =0x00000434
	lsls r1, r1, #2
	str r1, [r4, r0]
	movs r0, #0xa
	str r0, [r5]
	b _0222FC20
_0222FBF0:
	cmp r7, #0
	beq _0222FC20
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02035D78
	cmp r0, #0
	bne _0222FC20
	bl ov97_0222D2DC
	bl FUN_02039794
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	bl ov97_0222D40C
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	movs r0, #0x10
	str r0, [r5]
	b _02230164
_0222FC20:
	ldr r0, _0222FE84 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	bne _0222FC38
	ldr r0, _0222FE88 @ =0x00000434
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FD28
_0222FC38:
	bl ov97_0222D2DC
	bl FUN_02039794
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	bl ov97_0222D40C
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	movs r0, #0x11
	str r0, [r5]
	b _02230164
_0222FC58:
	bl ov97_0222D2A0
	cmp r0, #0
	beq _0222FC64
	movs r0, #0xb
	str r0, [r5]
_0222FC64:
	bl FUN_0203608C
	ldr r1, _0222FE84 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #2
	tst r1, r2
	bne _0222FC90
	ldr r1, _0222FE88 @ =0x00000434
	ldr r2, [r4, r1]
	subs r2, r2, #1
	str r2, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0222FC90
	cmp r0, #0
	beq _0222FD28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02035D78
	cmp r0, #0
	bne _0222FD28
_0222FC90:
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	bl ov97_0222D2DC
	bl FUN_02039794
	movs r0, #0x11
	str r0, [r5]
	b _02230164
_0222FCA6:
	adds r0, r6, #0
	bl ov97_0222D55C
	adds r1, r0, #0
	ldr r0, [r4]
	bl ov97_02238194
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020388F4
	adds r0, r6, #0
	bl ov97_0222D658
	movs r0, #0xc
	str r0, [r5]
	b _02230164
_0222FCC8:
	bl FUN_0203608C
	cmp r0, #0
	beq _0222FD06
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02035D78
	cmp r0, #0
	bne _0222FD06
	bl ov97_0222D2DC
	ldr r0, _0222FE90 @ =0x000029EC
	movs r1, #1
	str r1, [r4, r0]
	bl ov97_0223850C
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	bl FUN_02039794
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	bl ov97_0222D40C
	movs r0, #0xe
	str r0, [r5]
	b _02230164
_0222FD06:
	bl ov97_02238528
	cmp r0, #4
	bne _0222FD20
	movs r0, #0x93
	bl FUN_020364F0
	movs r0, #0xd
	str r0, [r5]
	ldr r0, _0222FE94 @ =0x0000043C
	movs r1, #0x78
	str r1, [r4, r0]
	b _02230164
_0222FD20:
	bl ov97_02238528
	cmp r0, #3
	beq _0222FD2A
_0222FD28:
	b _02230164
_0222FD2A:
	bl ov97_0223850C
	adds r0, r4, #0
	adds r0, #0xda
	ldrb r1, [r0]
	movs r0, #4
	bics r1, r0
	adds r0, r4, #0
	adds r0, #0xda
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #0x1a
	movs r3, #0x37
	bl ov97_0222E228
	str r0, [r5]
	b _02230164
_0222FD58:
	movs r0, #0x93
	bl FUN_02036540
	cmp r0, #1
	bne _0222FD72
	bl ov97_022384F4
	ldr r0, _0222FE94 @ =0x0000043C
	movs r1, #0xa
	str r1, [r4, r0]
	movs r0, #0xf
	str r0, [r5]
	b _02230164
_0222FD72:
	ldr r0, _0222FE94 @ =0x0000043C
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FE7C
	bl ov97_0223850C
	adds r0, r4, #0
	adds r0, #0xda
	ldrb r1, [r0]
	movs r0, #4
	bics r1, r0
	adds r0, r4, #0
	adds r0, #0xda
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #0x1a
	movs r3, #0x37
	bl ov97_0222E228
	str r0, [r5]
	b _02230164
_0222FDAE:
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl ov97_0222D444
	adds r0, r4, #0
	adds r0, #0xda
	ldrb r1, [r0]
	movs r0, #4
	movs r2, #0x1c
	bics r1, r0
	adds r0, r4, #0
	adds r0, #0xda
	strb r1, [r0]
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r3, #0x37
	bl ov97_0222E228
	str r0, [r5]
	b _02230164
_0222FDDA:
	ldr r0, _0222FE94 @ =0x0000043C
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FE7C
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	bl ov97_0222D2DC
	bl FUN_02039794
	ldr r0, _0222FE98 @ =0x00000624
	bl FUN_02005748
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	bl ov97_0222D40C
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #8
	movs r3, #0x37
	bl ov97_0222E228
	str r0, [r5]
	b _02230164
_0222FE1A:
	ldr r0, _0222FE9C @ =0x000005DC
	bl FUN_02005748
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #0x18
	bl ov97_0222DE78
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl ov97_0222D444
	movs r0, #0x12
	str r0, [r5]
	b _02230164
_0222FE3C:
	ldr r0, _0222FEA0 @ =0x000015DC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0222FE4A
	subs r1, r1, #1
	str r1, [r4, r0]
	b _02230164
_0222FE4A:
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	ldr r0, _0222FE9C @ =0x000005DC
	bl FUN_02005748
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #0x17
	bl ov97_0222DE78
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl ov97_0222D444
	movs r0, #0x12
	str r0, [r5]
	b _02230164
_0222FE74:
	ldr r0, _0222FE84 @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _0222FE7E
_0222FE7C:
	b _02230164
_0222FE7E:
	ldr r0, _0222FE9C @ =0x000005DC
	b _0222FEA4
	nop
_0222FE84: .4byte 0x021BF67C
_0222FE88: .4byte 0x00000434
_0222FE8C: .4byte ov97_0222D94C
_0222FE90: .4byte 0x000029EC
_0222FE94: .4byte 0x0000043C
_0222FE98: .4byte 0x00000624
_0222FE9C: .4byte 0x000005DC
_0222FEA0: .4byte 0x000015DC
_0222FEA4:
	bl FUN_02005748
	adds r0, r6, #0
	movs r1, #0xc4
	movs r2, #0
	bl ov97_0222DDD0
	movs r0, #3
	str r0, [r5]
	b _02230164
_0222FEB8:
	ldr r0, _02230180 @ =0x000015DC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0222FEC6
	subs r1, r1, #1
	str r1, [r4, r0]
	b _02230164
_0222FEC6:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0x1b
	beq _0222FEDC
	adds r0, r4, #0
	movs r1, #0xea
	adds r0, #0x8c
	lsls r1, r1, #2
	bl ov97_0223764C
_0222FEDC:
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x8c
	bl ov97_02232148
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _0222FF04
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	movs r0, #0x31
	str r0, [r5]
	b _02230164
_0222FF04:
	adds r0, r4, #0
	adds r0, #0x58
	bl FUN_0201A7CC
	cmp r0, #0
	bne _0222FF32
	movs r0, #2
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #0
	movs r0, #0x71
	adds r1, r4, #0
	str r2, [sp, #0xc]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x58
	movs r3, #3
	bl FUN_0201A7E8
_0222FF32:
	adds r1, r4, #0
	adds r2, r4, #0
	adds r0, r6, #0
	adds r1, #0x58
	adds r2, #0x8c
	bl ov97_0222DF10
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #4
	bl ov97_0222DE78
	adds r0, r6, #0
	movs r1, #0
	bl ov97_0222D6F8
	movs r0, #0x14
	str r0, [r5]
	b _02230164
_0222FF5A:
	ldr r2, _02230184 @ =ov97_0222D94C
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov97_0222DF70
	b _02230164
_0222FF66:
	movs r0, #0x16
	str r0, [r5]
	b _02230164
_0222FF6C:
	adds r0, r6, #0
	bl ov97_0222D55C
	adds r1, r0, #0
	ldr r0, [r4]
	bl ov97_02238194
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #7
	bl ov97_0222DE78
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D40C
	adds r0, r4, #0
	movs r1, #1
	bl ov97_0222D30C
	ldr r0, _02230188 @ =0x0000043C
	movs r1, #0x3c
	str r1, [r4, r0]
	movs r0, #0x17
	str r0, [r5]
	b _02230164
_0222FFA2:
	ldr r0, _02230188 @ =0x0000043C
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02230042
	adds r0, r6, #0
	bl ov97_0222D658
	movs r0, #0x18
	str r0, [r5]
	b _02230164
_0222FFBC:
	bl ov97_02238528
	cmp r0, #4
	bne _0222FFC8
	bl ov97_022384F4
_0222FFC8:
	bl ov97_02238528
	cmp r0, #2
	bne _02230000
	ldr r0, _02230188 @ =0x0000043C
	movs r1, #1
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0
	bl ov97_0222D30C
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	bl ov97_0222D40C
	ldr r0, _0223018C @ =0x00000624
	bl FUN_02005748
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r2, #8
	movs r3, #0x19
	bl ov97_0222E228
	str r0, [r5]
	b _02230164
_02230000:
	bl ov97_02238528
	cmp r0, #3
	bne _02230042
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	bl ov97_0222D40C
	adds r0, r4, #0
	adds r0, #0xda
	ldrb r1, [r0]
	movs r0, #4
	movs r2, #0x1a
	bics r1, r0
	adds r0, r4, #0
	adds r0, #0xda
	strb r1, [r0]
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x18
	movs r3, #0x37
	bl ov97_0222E228
	str r0, [r5]
	b _02230164
_02230034:
	ldr r0, _02230188 @ =0x0000043C
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02230044
_02230042:
	b _02230164
_02230044:
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, r0]
	movs r0, #0x37
	str r0, [r5]
	b _02230164
_02230050:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #5
	beq _02230060
	adds r0, r4, #0
	bl ov97_0222E2AC
_02230060:
	adds r0, r6, #0
	bl ov97_0222E1D8
	str r0, [r5]
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	bl ov97_0222D444
	b _02230164
_02230074:
	movs r1, #0
	adds r0, r6, #0
	adds r2, r1, #0
	bl ov97_0222E228
	str r0, [r5]
	b _02230164
_02230082:
	ldr r0, _02230190 @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02230164
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl ov97_0222D444
	adds r0, r6, #0
	bl ov97_0222DA64
	str r0, [r5]
	b _02230164
_0223009E:
	adds r0, r6, #0
	movs r1, #1
	bl ov97_0222D6F8
	movs r0, #8
	str r0, [r5]
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x80
	str r1, [r0]
	b _02230164
_022300B4:
	adds r0, r6, #0
	bl ov97_0222D34C
	movs r0, #0x11
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r4, r0]
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_022300C8:
	adds r0, r6, #0
	bl ov97_0222D34C
	movs r1, #0x11
	movs r0, #1
	lsls r1, r1, #6
	add sp, #0x14
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022300DA:
	ldr r0, _02230190 @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02230164
	ldr r0, _02230194 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0xda
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02230106
	ldr r2, _02230198 @ =0x000015D8
	movs r0, #0
	ldr r2, [r4, r2]
	movs r1, #0x38
	movs r3, #2
	bl ov97_02237790
	b _02230164
_02230106:
	movs r0, #1
	bl ov97_02237784
	ldr r2, _02230198 @ =0x000015D8
	movs r0, #0
	ldr r2, [r4, r2]
	movs r1, #0x39
	movs r3, #2
	bl ov97_02237790
	b _02230164
_0223011C:
	ldr r0, [r4]
	bl ov97_0222DC20
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	adds r1, r4, #0
	ldr r0, [r4]
	adds r1, #0xdc
	movs r2, #0x56
	bl ov97_02231FFC
	ldr r2, _02230198 @ =0x000015D8
	movs r0, #1
	ldr r2, [r4, r2]
	movs r1, #0x37
	movs r3, #2
	bl ov97_02237790
	adds r0, r4, #0
	adds r0, #0xda
	ldrb r1, [r0]
	movs r0, #4
	bics r1, r0
	adds r0, r4, #0
	adds r0, #0xda
	strb r1, [r0]
	b _02230164
_0223015E:
	movs r0, #0
	blx FUN_020C3EE4
_02230164:
	ldr r0, _0223019C @ =0x000029E8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02230170
	adds r0, r4, #0
	blx r1
_02230170:
	ldr r0, _022301A0 @ =0x000029F4
	ldr r0, [r4, r0]
	bl ov97_02237CAC
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02230180: .4byte 0x000015DC
_02230184: .4byte ov97_0222D94C
_02230188: .4byte 0x0000043C
_0223018C: .4byte 0x00000624
_02230190: .4byte 0x021BF67C
_02230194: .4byte 0x000005DC
_02230198: .4byte 0x000015D8
_0223019C: .4byte 0x000029E8
_022301A0: .4byte 0x000029F4
	thumb_func_end ov97_0222F75C

	thumb_func_start ov97_022301A4
ov97_022301A4: @ 0x022301A4
	ldr r0, _022301AC @ =0x0223F1A8
	ldr r0, [r0, #8]
	bx lr
	nop
_022301AC: .4byte 0x0223F1A8
	thumb_func_end ov97_022301A4

	thumb_func_start ov97_022301B0
ov97_022301B0: @ 0x022301B0
	ldr r1, _022301B8 @ =0x0223F1A8
	str r0, [r1, #8]
	bx lr
	nop
_022301B8: .4byte 0x0223F1A8
	thumb_func_end ov97_022301B0

	thumb_func_start ov97_022301BC
ov97_022301BC: @ 0x022301BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	movs r0, #0x11
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022301DA
	ldr r0, _02230210 @ =0x0000004D
	ldr r1, _02230214 @ =0x021D742C
	bl FUN_02000EC4
	b _022301E6
_022301DA:
	cmp r0, #1
	bne _022301E6
	ldr r0, _02230218 @ =0x00000061
	ldr r1, _0223021C @ =0x0223D7AC
	bl FUN_02000EC4
_022301E6:
	movs r0, #0x5b
	bl FUN_0201807C
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x56
	bl FUN_0201807C
	ldr r0, _02230220 @ =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _02230206
	movs r0, #0
	bl FUN_02017B70
_02230206:
	movs r0, #0
	bl ov97_02238400
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02230210: .4byte 0x0000004D
_02230214: .4byte 0x021D742C
_02230218: .4byte 0x00000061
_0223021C: .4byte 0x0223D7AC
_02230220: .4byte 0x000015D4
	thumb_func_end ov97_022301BC

	thumb_func_start ov97_02230224
ov97_02230224: @ 0x02230224
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02230278 @ =0x000005C8
	ldr r0, [r4, r0]
	cmp r0, #0x1c
	beq _0223023A
	cmp r0, #0x1d
	beq _02230276
	cmp r0, #0x1e
	beq _0223024E
	pop {r4, pc}
_0223023A:
	ldr r0, [r4, #4]
	bl FUN_02037D48
	ldr r0, _0223027C @ =0x000005CC
	movs r1, #0x78
	str r1, [r4, r0]
	movs r1, #0x1e
	subs r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
_0223024E:
	bl FUN_02037DA0
	movs r1, #1
	tst r0, r1
	beq _0223025E
	movs r0, #0x5d
	lsls r0, r0, #4
	str r1, [r4, r0]
_0223025E:
	ldr r0, _0223027C @ =0x000005CC
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02230276
	bl FUN_02037D84
	ldr r0, _02230278 @ =0x000005C8
	movs r1, #0x1d
	str r1, [r4, r0]
_02230276:
	pop {r4, pc}
	.align 2, 0
_02230278: .4byte 0x000005C8
_0223027C: .4byte 0x000005CC
	thumb_func_end ov97_02230224

	thumb_func_start ov97_02230280
ov97_02230280: @ 0x02230280
	cmp r0, #4
	bhi _022302CC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230290: @ jump table
	.2byte _0223029A - _02230290 - 2 @ case 0
	.2byte _022302A2 - _02230290 - 2 @ case 1
	.2byte _022302AA - _02230290 - 2 @ case 2
	.2byte _022302B2 - _02230290 - 2 @ case 3
	.2byte _022302C6 - _02230290 - 2 @ case 4
_0223029A:
	ldr r0, _022302D0 @ =0x0223F1A8
	movs r1, #0x28
	str r1, [r0]
	bx lr
_022302A2:
	ldr r0, _022302D0 @ =0x0223F1A8
	movs r1, #0x29
	str r1, [r0]
	bx lr
_022302AA:
	ldr r0, _022302D0 @ =0x0223F1A8
	movs r1, #0x2a
	str r1, [r0]
	bx lr
_022302B2:
	ldr r0, _022302D0 @ =0x0223F1A8
	ldr r1, [r0]
	cmp r1, #0x2a
	bne _022302C0
	movs r1, #0x2c
	str r1, [r0]
	bx lr
_022302C0:
	movs r1, #0x2f
	str r1, [r0]
	bx lr
_022302C6:
	ldr r0, _022302D0 @ =0x0223F1A8
	movs r1, #0x30
	str r1, [r0]
_022302CC:
	bx lr
	nop
_022302D0: .4byte 0x0223F1A8
	thumb_func_end ov97_02230280

	thumb_func_start ov97_022302D4
ov97_022302D4: @ 0x022302D4
	push {r3, lr}
	bl FUN_020334CC
	ldr r0, _022302F0 @ =0x0223F1A8
	ldr r0, [r0, #4]
	bl FUN_020181C4
	bl FUN_02039794
	ldr r0, _022302F0 @ =0x0223F1A8
	movs r1, #0
	str r1, [r0, #4]
	pop {r3, pc}
	nop
_022302F0: .4byte 0x0223F1A8
	thumb_func_end ov97_022302D4

	thumb_func_start ov97_022302F4
ov97_022302F4: @ 0x022302F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02230400 @ =0x0223F1A8
	ldr r0, [r0]
	cmp r0, #0x2c
	bne _0223031A
	bl ov97_022302D4
	bl ov97_02238CA0
	cmp r0, #0
	beq _02230314
	ldr r0, _02230400 @ =0x0223F1A8
	movs r1, #0x2d
	str r1, [r0]
	b _0223031A
_02230314:
	ldr r0, _02230400 @ =0x0223F1A8
	movs r1, #0x2e
	str r1, [r0]
_0223031A:
	ldr r0, _02230400 @ =0x0223F1A8
	ldr r0, [r0]
	cmp r0, #0x25
	beq _02230336
	cmp r0, #0x26
	beq _02230336
	cmp r0, #0x27
	beq _02230336
	cmp r0, #0x28
	beq _02230336
	cmp r0, #0x29
	beq _02230336
	cmp r0, #0x2b
	bne _02230342
_02230336:
	blx FUN_020CE814
	movs r1, #3
	subs r0, r1, r0
	bl FUN_020397B0
_02230342:
	ldr r1, _02230400 @ =0x0223F1A8
	ldr r0, [r1]
	subs r0, #0x25
	cmp r0, #0xb
	bhi _022303BC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230358: @ jump table
	.2byte _02230370 - _02230358 - 2 @ case 0
	.2byte _0223037C - _02230358 - 2 @ case 1
	.2byte _022303BC - _02230358 - 2 @ case 2
	.2byte _022303BC - _02230358 - 2 @ case 3
	.2byte _022303B2 - _02230358 - 2 @ case 4
	.2byte _022303BC - _02230358 - 2 @ case 5
	.2byte _022303BC - _02230358 - 2 @ case 6
	.2byte _022303BC - _02230358 - 2 @ case 7
	.2byte _022303BC - _02230358 - 2 @ case 8
	.2byte _022303BC - _02230358 - 2 @ case 9
	.2byte _022303BA - _02230358 - 2 @ case 10
	.2byte _022303BC - _02230358 - 2 @ case 11
_02230370:
	bl FUN_02033478
	ldr r0, _02230400 @ =0x0223F1A8
	movs r1, #0x26
	str r1, [r0]
	b _022303BC
_0223037C:
	bl FUN_020334A4
	cmp r0, #1
	bne _022303BC
	ldr r0, _02230400 @ =0x0223F1A8
	movs r1, #0
	str r1, [r0, #0xc]
	bl ov97_02238D4C
	adds r1, r0, #0
	movs r0, #0x56
	bl FUN_02018144
	adds r2, r0, #0
	ldr r0, _02230400 @ =0x0223F1A8
	ldr r1, _02230404 @ =ov97_02230280
	str r2, [r0, #4]
	ldr r0, _02230408 @ =0x000005D4
	adds r0, r4, r0
	bl ov97_02238A4C
	ldr r0, _02230400 @ =0x0223F1A8
	movs r1, #0x27
	str r1, [r0]
	bl FUN_02039734
	b _022303BC
_022303B2:
	ldr r0, [r1, #0xc]
	adds r0, r0, #1
	str r0, [r1, #0xc]
	b _022303BC
_022303BA:
	pop {r4, pc}
_022303BC:
	ldr r0, _0223040C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _022303FC
	ldr r0, _02230400 @ =0x0223F1A8
	ldr r0, [r0]
	subs r0, #0x28
	cmp r0, #8
	bhi _022303FC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022303DC: @ jump table
	.2byte _022303EE - _022303DC - 2 @ case 0
	.2byte _022303EE - _022303DC - 2 @ case 1
	.2byte _022303FC - _022303DC - 2 @ case 2
	.2byte _022303FC - _022303DC - 2 @ case 3
	.2byte _022303FC - _022303DC - 2 @ case 4
	.2byte _022303FC - _022303DC - 2 @ case 5
	.2byte _022303FC - _022303DC - 2 @ case 6
	.2byte _022303FC - _022303DC - 2 @ case 7
	.2byte _022303EE - _022303DC - 2 @ case 8
_022303EE:
	bl ov97_022389C8
	cmp r0, #0
	beq _022303FC
	ldr r0, _02230400 @ =0x0223F1A8
	movs r1, #0x2b
	str r1, [r0]
_022303FC:
	pop {r4, pc}
	nop
_02230400: .4byte 0x0223F1A8
_02230404: .4byte ov97_02230280
_02230408: .4byte 0x000005D4
_0223040C: .4byte 0x021BF67C
	thumb_func_end ov97_022302F4

	thumb_func_start ov97_02230410
ov97_02230410: @ 0x02230410
	push {r3, lr}
	sub sp, #8
	bl ov97_02230438
	bl ov97_02237A20
	bl ov97_02237A74
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0xf
	movs r2, #0xc
	movs r3, #0xe
	bl ov97_02237B0C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov97_02230410

	thumb_func_start ov97_02230438
ov97_02230438: @ 0x02230438
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223049C @ =0x00002DC4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230448
	bl FUN_02021BD4
_02230448:
	ldr r0, _022304A0 @ =0x00002DC8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230454
	bl FUN_02021BD4
_02230454:
	ldr r0, _022304A0 @ =0x00002DC8
	movs r1, #0
	str r1, [r4, r0]
	ldr r2, [r4, r0]
	subs r1, r0, #4
	str r2, [r4, r1]
	adds r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223046C
	bl FUN_02021BD4
_0223046C:
	ldr r0, _022304A4 @ =0x00002DD0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230478
	bl FUN_02021BD4
_02230478:
	ldr r0, _022304A8 @ =0x00002DD4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230484
	bl FUN_02021BD4
_02230484:
	ldr r1, _022304A8 @ =0x00002DD4
	movs r0, #0
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	subs r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	subs r1, #8
	str r0, [r4, r1]
	bl ov97_02237DA0
	pop {r4, pc}
	.align 2, 0
_0223049C: .4byte 0x00002DC4
_022304A0: .4byte 0x00002DC8
_022304A4: .4byte 0x00002DD0
_022304A8: .4byte 0x00002DD4
	thumb_func_end ov97_02230438

	thumb_func_start ov97_022304AC
ov97_022304AC: @ 0x022304AC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _022304F4 @ =0x00003D4C
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, r1]
	movs r1, #1
	str r1, [sp]
	ldr r1, _022304F8 @ =0x00002DC4
	movs r2, #0x48
	ldr r1, [r4, r1]
	movs r3, #0xa8
	bl ov97_02237D14
	ldr r1, _022304F8 @ =0x00002DC4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #2
	bl FUN_02021E80
	movs r0, #0
	ldr r1, _022304FC @ =0x00002DC8
	str r0, [sp]
	ldr r1, [r4, r1]
	movs r2, #0xb8
	movs r3, #0xa8
	bl ov97_02237D14
	ldr r1, _022304FC @ =0x00002DC8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #2
	bl FUN_02021E80
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022304F4: .4byte 0x00003D4C
_022304F8: .4byte 0x00002DC4
_022304FC: .4byte 0x00002DC8
	thumb_func_end ov97_022304AC

	thumb_func_start ov97_02230500
ov97_02230500: @ 0x02230500
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0201A7CC
	cmp r0, #1
	bne _02230516
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200DC9C
_02230516:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02230500

	thumb_func_start ov97_02230518
ov97_02230518: @ 0x02230518
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0201A7CC
	cmp r0, #1
	bne _0223052E
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200E084
_0223052E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02230518

	thumb_func_start ov97_02230530
ov97_02230530: @ 0x02230530
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldr r0, _022305D8 @ =0x00002BCC
	adds r4, r1, #0
	ldr r0, [r5, r0]
	adds r7, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _02230548
	bl FUN_02013A3C
_02230548:
	ldr r0, _022305DC @ =0x00002BC8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02230558
	movs r1, #0
	adds r2, r1, #0
	bl FUN_02001384
_02230558:
	adds r0, r7, #0
	movs r1, #0x57
	bl FUN_02013A04
	ldr r1, _022305D8 @ =0x00002BCC
	ldr r2, _022305E0 @ =0x000001A5
	str r0, [r5, r1]
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x57
	bl FUN_0200B144
	ldr r1, _022305E4 @ =0x00002A04
	movs r6, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _02230592
_0223057A:
	ldr r0, _022305D8 @ =0x00002BCC
	ldr r1, _022305E4 @ =0x00002A04
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl FUN_02013A4C
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r7
	blt _0223057A
_02230592:
	ldr r0, _022305E4 @ =0x00002A04
	ldr r0, [r5, r0]
	bl FUN_0200B190
	ldr r4, _022305E8 @ =0x0223E660
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
	ldr r0, _022305D8 @ =0x00002BCC
	movs r1, #0
	ldr r0, [r5, r0]
	movs r3, #0x57
	str r0, [sp, #4]
	add r0, sp, #4
	strh r7, [r0, #0x10]
	ldr r0, [sp]
	str r0, [sp, #0x10]
	adds r0, r2, #0
	ldr r2, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl FUN_0200112C
	ldr r1, _022305DC @ =0x00002BC8
	str r0, [r5, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022305D8: .4byte 0x00002BCC
_022305DC: .4byte 0x00002BC8
_022305E0: .4byte 0x000001A5
_022305E4: .4byte 0x00002A04
_022305E8: .4byte 0x0223E660
	thumb_func_end ov97_02230530

	thumb_func_start ov97_022305EC
ov97_022305EC: @ 0x022305EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _0223065C @ =0x000001A5
	adds r5, r0, #0
	adds r7, r1, #0
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x57
	bl FUN_0200B144
	adds r4, r0, #0
	movs r0, #0x57
	bl FUN_0200B358
	adds r6, r0, #0
	movs r0, #1
	movs r1, #6
	bl FUN_02002DF8
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0201ADA4
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #0x57
	bl FUN_0200B29C
	adds r7, r0, #0
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02230660 @ =0x00010200
	movs r1, #1
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r7, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A954
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B190
	adds r0, r6, #0
	bl FUN_0200B3F0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223065C: .4byte 0x000001A5
_02230660: .4byte 0x00010200
	thumb_func_end ov97_022305EC

	thumb_func_start ov97_02230664
ov97_02230664: @ 0x02230664
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x57
	movs r3, #0x1e
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0xb
	movs r2, #0
	lsls r3, r3, #4
	bl FUN_02006E84
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x57
	movs r3, #6
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0x10
	movs r2, #0
	lsls r3, r3, #6
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x57
	str r0, [sp, #0xc]
	movs r0, #0x74
	movs r1, #0x11
	adds r2, r4, #0
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x57
	str r0, [sp, #0xc]
	movs r0, #0x74
	movs r1, #0x12
	adds r2, r4, #0
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #0xc
	movs r2, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019E2C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019448
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_02230664

	thumb_func_start ov97_022306F4
ov97_022306F4: @ 0x022306F4
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	bl ov97_02230868
	ldr r0, _02230720 @ =0x00002BD0
	movs r1, #0x2e
	adds r0, r4, r0
	bl ov97_022305EC
	ldr r3, _02230724 @ =0x00002BE0
	adds r0, r4, #0
	adds r1, r4, r3
	adds r3, #0x10
	ldr r3, [r4, r3]
	movs r2, #0xa
	bl ov97_02230E04
	movs r0, #0xd
	pop {r4, pc}
	nop
_02230720: .4byte 0x00002BD0
_02230724: .4byte 0x00002BE0
	thumb_func_end ov97_022306F4

	thumb_func_start ov97_02230728
ov97_02230728: @ 0x02230728
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	bl ov97_02230868
	ldr r1, _0223076C @ =0x00002BA0
	ldr r0, [r4, r1]
	adds r1, #0x20
	ldr r1, [r4, r1]
	bl FUN_0202DDA8
	cmp r0, #1
	ldr r0, _02230770 @ =0x00002BD0
	bne _02230750
	adds r0, r4, r0
	movs r1, #0x3e
	bl ov97_022305EC
	b _02230758
_02230750:
	adds r0, r4, r0
	movs r1, #0x3d
	bl ov97_022305EC
_02230758:
	ldr r3, _02230774 @ =0x00002BE0
	adds r0, r4, #0
	adds r1, r4, r3
	adds r3, #0x10
	ldr r3, [r4, r3]
	movs r2, #9
	bl ov97_02230E04
	movs r0, #0xc
	pop {r4, pc}
	.align 2, 0
_0223076C: .4byte 0x00002BA0
_02230770: .4byte 0x00002BD0
_02230774: .4byte 0x00002BE0
	thumb_func_end ov97_02230728

	thumb_func_start ov97_02230778
ov97_02230778: @ 0x02230778
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	bl ov97_02230868
	ldr r0, _02230820 @ =0x00002BD0
	movs r1, #0x3f
	adds r0, r4, r0
	bl ov97_022305EC
	ldr r0, _02230820 @ =0x00002BD0
	movs r1, #0x13
	adds r0, r4, r0
	bl FUN_0200E7FC
	ldr r1, _02230824 @ =0x00003D50
	str r0, [r4, r1]
	ldr r1, _02230828 @ =0x00002BA0
	ldr r0, [r4, r1]
	adds r1, #0x20
	ldr r1, [r4, r1]
	bl FUN_0202DDA8
	cmp r0, #1
	ldr r1, _02230828 @ =0x00002BA0
	bne _022307BA
	ldr r0, [r4, r1]
	adds r1, #0x20
	ldr r1, [r4, r1]
	bl FUN_0202DC7C
	b _022307C4
_022307BA:
	ldr r0, [r4, r1]
	adds r1, #0x20
	ldr r1, [r4, r1]
	bl FUN_0202DCB8
_022307C4:
	ldr r0, _0223082C @ =0x00002BA4
	ldr r0, [r4, r0]
	bl FUN_020246E0
	ldr r0, _02230824 @ =0x00003D50
	ldr r0, [r4, r0]
	bl FUN_0200EBA0
	ldr r0, _02230828 @ =0x00002BA0
	ldr r0, [r4, r0]
	bl FUN_0202DD88
	cmp r0, #0
	bne _022307E4
	movs r0, #0x1a
	pop {r4, pc}
_022307E4:
	movs r1, #0xaf
	lsls r1, r1, #6
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #1
	bl ov97_02230F20
	movs r1, #0xaf
	lsls r1, r1, #6
	str r0, [r4, r1]
	adds r1, #0x10
	adds r0, r4, r1
	movs r1, #0x24
	bl ov97_022305EC
	ldr r3, _02230830 @ =0x00002BE0
	adds r0, r4, #0
	adds r1, r4, r3
	adds r3, #0x10
	ldr r3, [r4, r3]
	movs r2, #8
	bl ov97_02230E04
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov97_02230C44
	movs r0, #5
	pop {r4, pc}
	.align 2, 0
_02230820: .4byte 0x00002BD0
_02230824: .4byte 0x00003D50
_02230828: .4byte 0x00002BA0
_0223082C: .4byte 0x00002BA4
_02230830: .4byte 0x00002BE0
	thumb_func_end ov97_02230778

	thumb_func_start ov97_02230834
ov97_02230834: @ 0x02230834
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	bl ov97_02230868
	ldr r0, _02230860 @ =0x00002BD0
	movs r1, #0x24
	adds r0, r4, r0
	bl ov97_022305EC
	ldr r3, _02230864 @ =0x00002BE0
	adds r0, r4, #0
	adds r1, r4, r3
	adds r3, #0x10
	ldr r3, [r4, r3]
	movs r2, #8
	bl ov97_02230E04
	movs r0, #5
	pop {r4, pc}
	nop
_02230860: .4byte 0x00002BD0
_02230864: .4byte 0x00002BE0
	thumb_func_end ov97_02230834

	thumb_func_start ov97_02230868
ov97_02230868: @ 0x02230868
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _022308A4 @ =0x00002BCC
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	movs r1, #0
	ldr r0, _022308A4 @ =0x00002BCC
	adds r2, r1, #0
	str r1, [r4, r0]
	subs r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02001384
	ldr r0, _022308A8 @ =0x00002BC8
	movs r1, #0
	str r1, [r4, r0]
	adds r0, #0x18
	adds r0, r4, r0
	bl ov97_02230500
	ldr r0, _022308AC @ =0x00002BE0
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _022308AC @ =0x00002BE0
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
_022308A4: .4byte 0x00002BCC
_022308A8: .4byte 0x00002BC8
_022308AC: .4byte 0x00002BE0
	thumb_func_end ov97_02230868

	thumb_func_start ov97_022308B0
ov97_022308B0: @ 0x022308B0
	movs r0, #1
	bx lr
	thumb_func_end ov97_022308B0

	thumb_func_start ov97_022308B4
ov97_022308B4: @ 0x022308B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5]
	movs r0, #0x25
	adds r4, r2, #0
	bl FUN_02023790
	movs r1, #0xaf
	lsls r1, r1, #6
	ldr r2, [r5, r1]
	subs r1, #0xc
	lsls r2, r2, #2
	adds r2, r5, r2
	ldr r2, [r2, r1]
	movs r1, #0x41
	lsls r1, r1, #2
	adds r1, r2, r1
	movs r2, #0x24
	adds r6, r0, #0
	bl FUN_02023D8C
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	movs r1, #1
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_022308B4

	thumb_func_start ov97_02230904
ov97_02230904: @ 0x02230904
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #6
	adds r6, r1, #0
	ldr r1, [r4, r0]
	adds r5, r2, #0
	lsls r2, r1, #2
	adds r3, r4, r2
	adds r2, r0, #0
	subs r2, #0xc
	ldr r3, [r3, r2]
	ldr r2, _02230978 @ =0x00000152
	ldrb r2, [r3, r2]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1f
	bne _0223092C
	movs r2, #0x27
	b _02230942
_0223092C:
	subs r0, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223093C
	bl FUN_0202DDA8
	cmp r0, #1
	bne _02230940
_0223093C:
	movs r2, #0x25
	b _02230942
_02230940:
	movs r2, #0x26
_02230942:
	movs r1, #0x2a
	lsls r1, r1, #8
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	ldr r3, [r4]
	bl FUN_0200B29C
	adds r4, r0, #0
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	adds r0, r6, #0
	movs r1, #1
	adds r2, r4, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	movs r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02230978: .4byte 0x00000152
	thumb_func_end ov97_02230904

	thumb_func_start ov97_0223097C
ov97_0223097C: @ 0x0223097C
	push {r4, lr}
	sub sp, #0x18
	movs r1, #0xaf
	adds r4, r0, #0
	lsls r1, r1, #6
	ldr r2, [r4, r1]
	subs r1, #0xc
	lsls r2, r2, #2
	adds r2, r4, r2
	ldr r2, [r2, r1]
	movs r1, #0xd5
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	add r0, sp, #8
	blx FUN_020CC27C
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x2a
	lsls r0, r0, #8
	movs r2, #0x7d
	ldr r3, [sp, #8]
	lsls r2, r2, #4
	adds r2, r3, r2
	ldr r0, [r4, r0]
	movs r1, #0
	movs r3, #4
	bl FUN_0200B60C
	movs r0, #0x2a
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	ldr r2, [sp, #0xc]
	movs r1, #1
	bl FUN_0200C2E0
	movs r1, #2
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x2a
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x10]
	adds r3, r1, #0
	bl FUN_0200B60C
	movs r0, #1
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov97_0223097C

	thumb_func_start ov97_022309E4
ov97_022309E4: @ 0x022309E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	movs r0, #0xfb
	movs r1, #0x57
	adds r4, r2, #0
	bl FUN_02023790
	movs r1, #0xaf
	lsls r1, r1, #6
	ldr r2, [r5, r1]
	subs r1, #0xc
	lsls r2, r2, #2
	adds r2, r5, r2
	ldr r2, [r2, r1]
	movs r1, #0x55
	lsls r1, r1, #2
	adds r1, r2, r1
	movs r2, #0xfa
	adds r6, r0, #0
	bl FUN_02023D8C
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	movs r1, #1
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_022309E4

	thumb_func_start ov97_02230A34
ov97_02230A34: @ 0x02230A34
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r3, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #6
	adds r6, r1, #0
	ldr r1, [r3, r0]
	subs r0, #0xc
	lsls r1, r1, #2
	adds r1, r3, r1
	ldr r1, [r1, r0]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r5, r2, #0
	ldrb r2, [r1, r0]
	cmp r2, #0xff
	bne _02230A8C
	movs r1, #0x2a
	lsls r1, r1, #8
	ldr r0, [r3, r1]
	adds r1, r1, #4
	ldr r1, [r3, r1]
	movs r2, #0x33
	movs r3, #0x57
	bl FUN_0200B29C
	adds r4, r0, #0
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	adds r0, r6, #0
	movs r1, #1
	adds r2, r4, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x10
	movs r0, #0
	pop {r4, r5, r6, pc}
_02230A8C:
	cmp r2, #0
	beq _02230AAA
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x2a
	lsls r0, r0, #8
	ldr r0, [r3, r0]
	movs r3, #3
	bl FUN_0200B60C
	add sp, #0x10
	movs r0, #1
	pop {r4, r5, r6, pc}
_02230AAA:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_02230A34

	thumb_func_start ov97_02230AB0
ov97_02230AB0: @ 0x02230AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	movs r0, #0
	adds r7, r1, #0
	adds r1, r0, #1
	ldr r0, _02230B84 @ =0x0223E610
	ldr r2, _02230B84 @ =0x0223E610
	ldr r0, [r0, #0x30]
	ldr r2, [r2, #0x34]
	str r0, [sp, #0x14]
	movs r0, #0xaf
	lsls r0, r0, #6
	str r2, [sp, #0x18]
	ldr r2, [r5, r0]
	subs r0, #0xc
	lsls r2, r2, #2
	adds r2, r5, r2
	ldr r2, [r2, r0]
	movs r0, #0xd2
	lsls r0, r0, #2
	ldrb r0, [r2, r0]
	adds r4, r1, #0
	add r6, sp, #0x14
	cmp r0, #0
	beq _02230AF6
	ldr r0, _02230B84 @ =0x0223E610
	ldr r2, _02230B84 @ =0x0223E610
	ldr r0, [r0, #0x38]
	adds r4, r1, #1
	lsls r1, r1, #3
	ldr r2, [r2, #0x3c]
	adds r3, r6, r1
	str r0, [r6, r1]
	str r2, [r3, #4]
_02230AF6:
	ldr r0, _02230B84 @ =0x0223E610
	ldr r2, _02230B84 @ =0x0223E610
	ldr r0, [r0, #0x40]
	lsls r1, r4, #3
	add r6, sp, #0x14
	str r0, [r6, r1]
	ldr r2, [r2, #0x44]
	adds r3, r6, r1
	adds r0, r4, #1
	lsls r1, r0, #3
	str r2, [r3, #4]
	ldr r0, _02230B84 @ =0x0223E610
	ldr r2, _02230B84 @ =0x0223E610
	ldr r0, [r0, #0x48]
	ldr r2, [r2, #0x4c]
	str r0, [r6, r1]
	adds r3, r6, r1
	ldr r0, _02230B88 @ =0x00002B9C
	str r2, [r3, #4]
	ldr r6, [r5, r0]
	adds r0, r7, #0
	bl FUN_0201ACF4
	adds r0, r7, #0
	bl FUN_0201A8FC
	adds r1, r4, #2
	movs r0, #4
	subs r0, r0, r1
	ldr r1, [r6, #8]
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	ldr r1, [r6, #0xc]
	movs r2, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, _02230B8C @ =0x00002B98
	adds r1, r7, #0
	ldr r0, [r5, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _02230B90 @ =0x000029FC
	ldr r3, [r6, #4]
	ldr r0, [r5, r0]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	add r1, sp, #0x14
	adds r2, r4, #2
	adds r3, r7, #0
	bl ov97_02230530
	movs r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02230B84: .4byte 0x0223E610
_02230B88: .4byte 0x00002B9C
_02230B8C: .4byte 0x00002B98
_02230B90: .4byte 0x000029FC
	thumb_func_end ov97_02230AB0

	thumb_func_start ov97_02230B94
ov97_02230B94: @ 0x02230B94
	push {r3, lr}
	adds r3, r1, #0
	movs r1, #1
	str r1, [sp]
	ldr r1, _02230BA8 @ =0x0223E610
	movs r2, #2
	bl ov97_02230530
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02230BA8: .4byte 0x0223E610
	thumb_func_end ov97_02230B94

	thumb_func_start ov97_02230BAC
ov97_02230BAC: @ 0x02230BAC
	push {r3, lr}
	adds r3, r1, #0
	movs r1, #0
	str r1, [sp]
	ldr r1, _02230BC0 @ =0x0223E630
	movs r2, #2
	bl ov97_02230530
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02230BC0: .4byte 0x0223E630
	thumb_func_end ov97_02230BAC

	thumb_func_start ov97_02230BC4
ov97_02230BC4: @ 0x02230BC4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _02230BE8 @ =0x00002BD0
	adds r4, r1, #0
	adds r0, r5, r0
	movs r1, #2
	bl ov97_022305EC
	movs r0, #0
	str r0, [sp]
	ldr r1, _02230BEC @ =0x0223E620
	adds r0, r5, #0
	movs r2, #2
	adds r3, r4, #0
	bl ov97_02230530
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02230BE8: .4byte 0x00002BD0
_02230BEC: .4byte 0x0223E620
	thumb_func_end ov97_02230BC4

	thumb_func_start ov97_02230BF0
ov97_02230BF0: @ 0x02230BF0
	push {r3, lr}
	sub sp, #8
	movs r3, #1
	str r3, [sp]
	movs r1, #0x2a
	str r3, [sp, #4]
	lsls r1, r1, #8
	ldr r0, [r0, r1]
	movs r1, #0
	adds r2, r1, #0
	bl FUN_0200B60C
	movs r0, #1
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02230BF0

	thumb_func_start ov97_02230C10
ov97_02230C10: @ 0x02230C10
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x57
	str r0, [sp, #8]
	adds r6, r2, #0
	movs r0, #0
	adds r4, r3, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	cmp r4, #0
	beq _02230C38
	movs r0, #0x1b
	str r0, [r4]
_02230C38:
	movs r0, #0xb1
	lsls r0, r0, #6
	str r6, [r5, r0]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov97_02230C10

	thumb_func_start ov97_02230C44
ov97_02230C44: @ 0x02230C44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	str r2, [sp, #0x14]
	ldr r2, _02230DE8 @ =0x000001A5
	ldr r3, [r5]
	movs r0, #1
	movs r1, #0x1a
	ldr r4, _02230DEC @ =0x0223E680
	bl FUN_0200B144
	ldr r1, _02230DF0 @ =0x00002A04
	str r0, [r5, r1]
	ldr r0, [r5]
	bl FUN_0200B358
	movs r1, #0x2a
	lsls r1, r1, #8
	str r0, [r5, r1]
	ldr r1, _02230DF4 @ =0x00002BC4
	ldr r0, [sp, #0x14]
	str r0, [r5, r1]
	ldr r1, [sp, #0x14]
	adds r0, r5, #0
	bl ov97_02230F98
	movs r0, #0
	str r0, [sp, #0x30]
	ldr r0, _02230DF8 @ =0x00002A08
	adds r7, r4, #0
	str r5, [sp, #0x1c]
	adds r6, r5, r0
_02230C84:
	ldr r1, [r7]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	beq _02230CA6
	cmp r1, #2
	beq _02230CA6
	ldr r1, [sp, #0x1c]
	ldr r0, _02230DF8 @ =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02230CA6
	adds r0, r6, #0
	bl FUN_0201ACF4
	adds r0, r6, #0
	bl FUN_0201A8FC
_02230CA6:
	ldr r0, [sp, #0x1c]
	adds r7, #0x30
	adds r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	adds r6, #0x10
	adds r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #0x13
	blo _02230C84
	movs r0, #0x31
	str r0, [sp, #0x2c]
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, _02230DF8 @ =0x00002A08
	str r5, [sp, #0x24]
	str r5, [sp, #0x20]
	adds r6, r5, r0
_02230CCA:
	ldr r1, [r4]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _02230DAA
	ldr r1, [sp, #0x24]
	ldr r0, _02230DF8 @ =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02230D1A
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	ldr r0, _02230DFC @ =0x00002B48
	str r2, [r1, r0]
	ldr r0, [r4, #8]
	adds r1, r6, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	adds r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _02230E00 @ =0x000029FC
	ldr r3, [r4, #4]
	ldr r0, [r5, r0]
	lsls r3, r3, #0x18
	movs r2, #0
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
_02230D1A:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02002DF8
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x24]
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x28]
	adds r0, r5, #0
	adds r1, r6, #0
	blx r3
	cmp r0, #1
	bne _02230D96
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02230D96
	movs r0, #0x2a
	ldr r1, _02230DF0 @ =0x00002A04
	lsls r0, r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r5]
	bl FUN_0200B29C
	adds r7, r0, #0
	movs r0, #0
	ldr r3, [r4, #0x28]
	mvns r0, r0
	cmp r3, r0
	bne _02230D76
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x14]
	adds r1, r7, #0
	movs r2, #0
	lsls r3, r3, #3
	bl FUN_02002EEC
	adds r3, r0, #0
_02230D76:
	ldr r0, [r4, #0x2c]
	adds r2, r7, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x14]
	adds r0, r6, #0
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
_02230D96:
	adds r0, r6, #0
	bl FUN_0201A954
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #0x2c]
	adds r0, r0, r2
	str r0, [sp, #0x2c]
_02230DAA:
	ldr r0, [sp, #0x24]
	adds r4, #0x30
	adds r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	adds r6, #0x10
	adds r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x13
	blo _02230CCA
	ldr r0, _02230DF0 @ =0x00002A04
	ldr r0, [r5, r0]
	bl FUN_0200B190
	movs r0, #0x2a
	lsls r0, r0, #8
	ldr r0, [r5, r0]
	bl FUN_0200B3F0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02230DE2
	adds r0, r5, #0
	bl ov97_022310FC
_02230DE2:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02230DE8: .4byte 0x000001A5
_02230DEC: .4byte 0x0223E680
_02230DF0: .4byte 0x00002A04
_02230DF4: .4byte 0x00002BC4
_02230DF8: .4byte 0x00002A08
_02230DFC: .4byte 0x00002B48
_02230E00: .4byte 0x000029FC
	thumb_func_end ov97_02230C44

	thumb_func_start ov97_02230E04
ov97_02230E04: @ 0x02230E04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r3, #0
	movs r3, #0x30
	ldr r0, _02230F04 @ =0x0223E680
	muls r3, r2, r3
	adds r6, r1, #0
	adds r4, r0, r3
	ldr r0, [r6]
	cmp r0, #0
	bne _02230E4E
	ldr r0, [r4, #8]
	movs r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _02230F08 @ =0x000029FC
	ldr r3, [r4, #4]
	ldr r0, [r5, r0]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
_02230E4E:
	ldr r1, [r4, #0x1c]
	adds r0, r6, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201ADA4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02230E7C
	ldr r2, _02230F0C @ =0x000001A5
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x57
	bl FUN_0200B144
	ldr r1, _02230F10 @ =0x00002A04
	str r0, [r5, r1]
	movs r0, #0x57
	bl FUN_0200B358
	movs r1, #0x2a
	lsls r1, r1, #8
	str r0, [r5, r1]
_02230E7C:
	ldr r0, _02230F14 @ =0x00002B98
	ldr r2, _02230F18 @ =0x00010200
	str r7, [r5, r0]
	adds r0, r0, #4
	str r4, [r5, r0]
	ldr r3, [r4, #0x24]
	adds r0, r5, #0
	adds r1, r6, #0
	blx r3
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02230ED6
	movs r1, #0x2a
	lsls r1, r1, #8
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	movs r3, #0x57
	bl FUN_0200B29C
	str r0, [sp, #0x14]
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #0x14]
	adds r0, r6, #0
	bl FUN_0201D78C
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	ldr r0, _02230F10 @ =0x00002A04
	ldr r0, [r5, r0]
	bl FUN_0200B190
	movs r0, #0x2a
	lsls r0, r0, #8
	ldr r0, [r5, r0]
	bl FUN_0200B3F0
_02230ED6:
	ldr r0, _02230F1C @ =0x00002BD0
	adds r0, r5, r0
	cmp r6, r0
	bne _02230EEC
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x13
	movs r3, #0xa
	bl FUN_0200E060
	b _02230EF8
_02230EEC:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0xe
	bl FUN_0200DC48
_02230EF8:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	muls r0, r1, r0
	adds r0, r7, r0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02230F04: .4byte 0x0223E680
_02230F08: .4byte 0x000029FC
_02230F0C: .4byte 0x000001A5
_02230F10: .4byte 0x00002A04
_02230F14: .4byte 0x00002B98
_02230F18: .4byte 0x00010200
_02230F1C: .4byte 0x00002BD0
	thumb_func_end ov97_02230E04

	thumb_func_start ov97_02230F20
ov97_02230F20: @ 0x02230F20
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r4, #0
_02230F2A:
	adds r4, r4, r6
	cmp r4, #3
	bne _02230F32
	movs r4, #0
_02230F32:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _02230F3C
	movs r4, #2
_02230F3C:
	cmp r7, r4
	beq _02230F4E
	ldr r0, _02230F54 @ =0x00002BA0
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_0202DD5C
	cmp r0, #0
	beq _02230F2A
_02230F4E:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230F54: .4byte 0x00002BA0
	thumb_func_end ov97_02230F20

	thumb_func_start ov97_02230F58
ov97_02230F58: @ 0x02230F58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r2, #0
	movs r2, #1
	adds r5, r0, #0
	str r2, [sp]
	adds r6, r3, #0
	ldr r3, [r5]
	movs r0, #0x74
	bl FUN_02006FE8
	add r1, sp, #4
	adds r7, r0, #0
	blx FUN_020A7248
	ldr r0, _02230F94 @ =0x000029FC
	ldr r2, [sp, #4]
	lsls r1, r4, #0x18
	ldr r0, [r5, r0]
	lsrs r1, r1, #0x18
	adds r2, #0xc
	adds r3, r6, #0
	bl FUN_02019574
	adds r0, r7, #0
	bl FUN_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230F94: .4byte 0x000029FC
	thumb_func_end ov97_02230F58

	thumb_func_start ov97_02230F98
ov97_02230F98: @ 0x02230F98
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [r5]
	movs r2, #0
	adds r4, r1, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	ldr r0, [r5]
	ldr r2, _02231084 @ =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	movs r0, #0x74
	movs r1, #6
	bl FUN_02006E3C
	cmp r4, #0
	beq _02230FDE
	cmp r4, #1
	beq _02230FFE
	b _0223101C
_02230FDE:
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	ldr r0, [r5]
	ldr r2, _02231084 @ =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	movs r0, #0x74
	movs r1, #4
	bl FUN_02006E60
	b _0223101C
_02230FFE:
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	ldr r0, [r5]
	ldr r2, _02231084 @ =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	movs r0, #0x74
	movs r1, #5
	bl FUN_02006E60
_0223101C:
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	movs r1, #0
	str r0, [sp, #4]
	movs r0, #0x74
	adds r3, r0, #0
	adds r2, r1, #0
	adds r3, #0xec
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	ldr r0, [r5]
	ldr r2, _02231084 @ =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	movs r0, #0x74
	movs r3, #3
	bl FUN_02006E3C
	movs r2, #3
	adds r0, r5, #0
	movs r1, #2
	lsls r3, r2, #9
	bl ov97_02230F58
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	ldr r0, _02231084 @ =0x000029FC
	movs r2, #0
	ldr r0, [r5, r0]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019E2C
	ldr r0, _02231084 @ =0x000029FC
	movs r1, #3
	ldr r0, [r5, r0]
	bl FUN_02019448
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02231084: .4byte 0x000029FC
	thumb_func_end ov97_02230F98

	thumb_func_start ov97_02231088
ov97_02231088: @ 0x02231088
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl FUN_0200682C
	ldr r1, _022310F0 @ =0x00002BC8
	ldr r0, [r0, r1]
	bl FUN_02001288
	adds r4, r0, #0
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _022310AE
	adds r0, r0, #1
	cmp r4, r0
	beq _022310EC
	b _022310C8
_022310AE:
	ldr r0, _022310F4 @ =0x000005DC
	bl FUN_02005748
	cmp r6, #0
	beq _022310EC
	adds r0, r7, #0
	blx r6
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _022310EC
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022310C8:
	ldr r0, _022310F4 @ =0x000005DC
	bl FUN_02005748
	cmp r4, #0
	beq _022310EC
	cmp r4, #0x1e
	bhs _022310DA
	str r4, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022310DA:
	ldr r0, _022310F8 @ =0x0223F1BC
	str r4, [r0]
	adds r0, r7, #0
	blx r4
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _022310EC
	str r0, [r5]
_022310EC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022310F0: .4byte 0x00002BC8
_022310F4: .4byte 0x000005DC
_022310F8: .4byte 0x0223F1BC
	thumb_func_end ov97_02231088

	thumb_func_start ov97_022310FC
ov97_022310FC: @ 0x022310FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r1, _02231218 @ =0x00002DCC
	adds r6, r0, #0
	ldr r0, [r6, r1]
	cmp r0, #0
	bne _0223115C
	adds r0, r1, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _0223115C
	adds r1, #8
	ldr r0, [r6, r1]
	cmp r0, #0
	bne _0223115C
	bl ov97_02237A60
	cmp r0, #1
	bne _02231128
	adds r0, r6, #0
	bl ov97_02230438
_02231128:
	bl ov97_02237A20
	bl ov97_02237A74
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0x1a
	movs r2, #0x17
	movs r3, #0x19
	bl ov97_02237B0C
	bl FUN_02079FD0
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [r6]
	movs r2, #1
	str r0, [sp, #4]
	movs r0, #0x13
	movs r3, #0x60
	bl FUN_02006E84
_0223115C:
	movs r0, #0xb2
	movs r4, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0xc]
	adds r5, r6, #0
	movs r7, #0x64
_02231168:
	movs r0, #0xaf
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, _0223121C @ =0x00002BB4
	ldr r0, [r1, r0]
	adds r1, r0, r4
	ldr r0, _02231220 @ =0x0000034A
	ldrh r0, [r1, r0]
	str r0, [sp, #8]
	cmp r0, #0
	bne _02231192
	ldr r0, _02231218 @ =0x00002DCC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022311FC
	movs r1, #0
	bl FUN_02021CAC
	b _022311FC
_02231192:
	ldr r0, [sp, #0xc]
	ldr r1, _02231218 @ =0x00002DCC
	adds r0, #0xa
	str r0, [sp]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x10]
	movs r0, #0
	movs r3, #0x10
	bl ov97_02237D14
	ldr r1, _02231218 @ =0x00002DCC
	str r0, [r5, r1]
	movs r1, #0
	ldr r0, [sp, #8]
	adds r2, r1, #0
	bl FUN_02079D8C
	adds r1, r0, #0
	ldr r0, [r6]
	movs r2, #0
	str r0, [sp]
	movs r0, #0x13
	add r3, sp, #0x18
	bl FUN_02006F50
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	movs r1, #2
	ldr r0, [r0, #0x14]
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [sp, #0x18]
	movs r2, #2
	ldr r0, [r0, #0x14]
	lsls r1, r7, #5
	lsls r2, r2, #8
	blx FUN_020C02BC
	movs r1, #0
	ldr r0, [sp, #8]
	adds r2, r1, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, _02231218 @ =0x00002DCC
	adds r1, r1, #3
	ldr r0, [r5, r0]
	bl FUN_02021E90
	ldr r0, [sp, #0x14]
	bl FUN_020181C4
_022311FC:
	ldr r0, [sp, #0xc]
	adds r4, r4, #2
	adds r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r5, r5, #4
	adds r0, #0x19
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r7, #0x10
	cmp r0, #3
	blt _02231168
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02231218: .4byte 0x00002DCC
_0223121C: .4byte 0x00002BB4
_02231220: .4byte 0x0000034A
	thumb_func_end ov97_022310FC

	thumb_func_start ov97_02231224
ov97_02231224: @ 0x02231224
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	movs r1, #0x57
	lsls r2, r0, #0x10
	bl FUN_02017FC8
	ldr r1, _02231288 @ =0x00003D54
	adds r0, r4, #0
	movs r2, #0x57
	bl FUN_0200681C
	ldr r2, _02231288 @ =0x00003D54
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x57
	bl FUN_02018340
	ldr r1, _0223128C @ =0x000029FC
	str r0, [r4, r1]
	movs r0, #0x57
	str r0, [r4]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	movs r0, #0xaf
	movs r1, #2
	lsls r0, r0, #6
	str r1, [r4, r0]
	movs r1, #1
	adds r0, #0x7c
	str r1, [r4, r0]
	movs r0, #0x57
	bl ov97_02237694
	movs r2, #3
	movs r0, #0
	movs r1, #0x5b
	lsls r2, r2, #8
	bl FUN_02017FC8
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_02231288: .4byte 0x00003D54
_0223128C: .4byte 0x000029FC
	thumb_func_end ov97_02231224

	thumb_func_start ov97_02231290
ov97_02231290: @ 0x02231290
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_02013BA8
	movs r0, #3
	lsls r0, r0, #0xa
	ldr r0, [r4, r0]
	bl FUN_02013B68
	ldr r1, _022312B0 @ =0x04000010
	movs r2, #8
	movs r3, #1
	bl FUN_02013BB8
	pop {r4, pc}
	nop
_022312B0: .4byte 0x04000010
	thumb_func_end ov97_02231290

	thumb_func_start ov97_022312B4
ov97_022312B4: @ 0x022312B4
	push {r3, r4, r5, lr}
	ldr r4, _02231308 @ =0x00003130
	ldr r5, _0223130C @ =0x00000C14
	adds r4, r0, r4
	adds r0, r5, #0
	str r1, [r4, r5]
	subs r0, #0xc
	str r2, [r4, r0]
	adds r0, r5, #0
	subs r0, #8
	subs r5, #0x14
	str r3, [r4, r0]
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _022312E6
	movs r2, #6
	lsls r2, r2, #8
	movs r0, #0x57
	adds r1, r4, #0
	adds r2, r4, r2
	bl FUN_02013B10
	movs r1, #3
	lsls r1, r1, #0xa
	str r0, [r4, r1]
_022312E6:
	ldr r0, _02231310 @ =0x00000C04
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022312FE
	movs r2, #1
	ldr r0, _02231314 @ =ov97_02231290
	adds r1, r4, #0
	lsls r2, r2, #0xa
	bl FUN_0200DA04
	ldr r1, _02231310 @ =0x00000C04
	str r0, [r4, r1]
_022312FE:
	movs r0, #0xc1
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02231308: .4byte 0x00003130
_0223130C: .4byte 0x00000C14
_02231310: .4byte 0x00000C04
_02231314: .4byte ov97_02231290
	thumb_func_end ov97_022312B4

	thumb_func_start ov97_02231318
ov97_02231318: @ 0x02231318
	push {r4, lr}
	ldr r1, _0223134C @ =0x00003130
	adds r4, r0, r1
	movs r0, #3
	lsls r0, r0, #0xa
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223132C
	bl FUN_02013B40
_0223132C:
	ldr r0, _02231350 @ =0x00000C04
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231338
	bl FUN_0200DA58
_02231338:
	movs r0, #3
	movs r1, #0
	lsls r0, r0, #0xa
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	bl FUN_02013BA8
	pop {r4, pc}
	nop
_0223134C: .4byte 0x00003130
_02231350: .4byte 0x00000C04
	thumb_func_end ov97_02231318

	thumb_func_start ov97_02231354
ov97_02231354: @ 0x02231354
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0223145C @ =0x00003130
	movs r5, #0x15
	adds r4, r0, r1
	movs r0, #0xc1
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	lsls r5, r5, #0xe
	cmp r1, #0
	bne _0223136C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223136C:
	adds r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _022313BA
	adds r1, r0, #0
	subs r1, #8
	ldr r2, [r4, r1]
	subs r1, r0, #4
	ldr r1, [r4, r1]
	adds r2, r2, r1
	adds r1, r0, #0
	subs r1, #8
	str r2, [r4, r1]
	subs r1, r0, #4
	ldr r2, [r4, r1]
	adds r1, r2, #0
	adds r2, r2, r1
	subs r1, r0, #4
	str r2, [r4, r1]
	adds r1, r0, #0
	subs r1, #8
	ldr r2, [r4, r1]
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	asrs r2, r1, #0xc
	movs r1, #0xfa
	lsls r1, r1, #2
	cmp r2, r1
	ble _022313F4
	movs r2, #0
	adds r1, r0, #0
	str r2, [r4, r0]
	subs r1, #8
	str r2, [r4, r1]
	subs r0, r0, #4
	movs r5, #0xa8
	str r2, [r4, r0]
	b _022313F4
_022313BA:
	adds r1, r0, #0
	subs r1, #8
	ldr r2, [r4, r1]
	subs r1, r0, #4
	ldr r1, [r4, r1]
	subs r2, r2, r1
	adds r1, r0, #0
	subs r1, #8
	str r2, [r4, r1]
	subs r1, r0, #4
	ldr r2, [r4, r1]
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	asrs r2, r1, #1
	subs r1, r0, #4
	str r2, [r4, r1]
	movs r2, #1
	ldr r1, [r4, r1]
	lsls r2, r2, #0xa
	cmp r1, r2
	bge _022313F4
	movs r1, #0
	lsls r3, r2, #2
	adds r2, r0, #0
	str r1, [r4, r0]
	subs r2, #8
	str r3, [r4, r2]
	subs r0, r0, #4
	str r1, [r4, r0]
_022313F4:
	movs r0, #3
	lsls r0, r0, #0xa
	ldr r0, [r4, r0]
	bl FUN_02013B54
	adds r2, r0, #0
	movs r0, #0x54
	adds r3, r0, #0
	adds r3, #0xfc
_02231406:
	asrs r1, r5, #0xb
	lsrs r1, r1, #0x14
	adds r1, r5, r1
	asrs r1, r1, #0xc
	bpl _02231412
	movs r1, #0
_02231412:
	cmp r1, #0xa8
	ble _02231418
	movs r1, #0xa8
_02231418:
	lsls r6, r3, #1
	adds r7, r2, r6
	subs r6, r1, r0
	strh r6, [r7, #6]
	ldrh r6, [r7, #6]
	subs r1, r0, r1
	adds r3, r3, #4
	strh r6, [r7, #2]
	movs r6, #0xa8
	subs r6, r6, r0
	lsls r6, r6, #3
	adds r6, r2, r6
	strh r1, [r6, #6]
	ldrh r1, [r6, #6]
	adds r0, r0, #1
	strh r1, [r6, #2]
	ldr r1, _02231460 @ =0x00000C08
	ldr r1, [r4, r1]
	adds r5, r5, r1
	cmp r0, #0xa8
	blt _02231406
	movs r1, #6
	adds r0, r2, #0
	lsls r1, r1, #8
	blx FUN_020C2C54
	movs r0, #3
	lsls r0, r0, #0xa
	ldr r0, [r4, r0]
	bl FUN_02013B94
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223145C: .4byte 0x00003130
_02231460: .4byte 0x00000C08
	thumb_func_end ov97_02231354

	thumb_func_start ov97_02231464
ov97_02231464: @ 0x02231464
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_0223847C
	subs r0, r0, #2
	cmp r0, #1
	bhi _0223147E
	ldr r0, _02231480 @ =0x0000061B
	bl FUN_02005748
	ldr r0, _02231484 @ =0x00003D48
	movs r1, #0
	str r1, [r4, r0]
_0223147E:
	pop {r4, pc}
	.align 2, 0
_02231480: .4byte 0x0000061B
_02231484: .4byte 0x00003D48
	thumb_func_end ov97_02231464

	thumb_func_start ov97_02231488
ov97_02231488: @ 0x02231488
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #3
	blt _0223149A
	bl FUN_02022974
_0223149A:
	movs r0, #0x1f
	bl FUN_02025C48
	movs r0, #0xaf
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	subs r0, #0xc
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r2, [r1, r0]
	movs r0, #0x35
	lsls r0, r0, #4
	ldrb r1, [r2, r0]
	cmp r1, #0xff
	beq _022314BC
	adds r1, r1, #1
	strb r1, [r2, r0]
_022314BC:
	movs r0, #0xaf
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	subs r0, #0xc
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r2, [r1, r0]
	movs r0, #0xd2
	lsls r0, r0, #2
	ldrb r1, [r2, r0]
	cmp r1, #0xff
	beq _022314D8
	subs r1, r1, #1
	strb r1, [r2, r0]
_022314D8:
	movs r0, #0x1f
	bl FUN_02025C84
	ldr r0, _022314F0 @ =0x00002BA4
	ldr r0, [r4, r0]
	bl ov97_0223846C
	ldr r1, _022314F4 @ =ov97_02231464
	ldr r0, _022314F8 @ =0x00003D48
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_022314F0: .4byte 0x00002BA4
_022314F4: .4byte ov97_02231464
_022314F8: .4byte 0x00003D48
	thumb_func_end ov97_02231488

	thumb_func_start ov97_022314FC
ov97_022314FC: @ 0x022314FC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	ldr r2, _022315FC @ =0x021BF67C
	adds r6, r1, #0
	ldr r3, [r2, #0x48]
	ldr r1, _02231600 @ =0x00003D4C
	adds r5, r0, #0
	movs r2, #0x10
	ldr r0, [r5, r1]
	tst r2, r3
	beq _0223151A
	cmp r0, #1
	beq _0223151A
	movs r2, #1
	str r2, [r5, r1]
_0223151A:
	ldr r1, _022315FC @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x20
	tst r1, r2
	beq _02231530
	ldr r1, _02231600 @ =0x00003D4C
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _02231530
	movs r2, #0
	str r2, [r5, r1]
_02231530:
	ldr r1, _02231600 @ =0x00003D4C
	ldr r1, [r5, r1]
	cmp r0, r1
	beq _02231560
	cmp r1, #0
	bne _02231540
	movs r1, #1
	b _02231542
_02231540:
	movs r1, #0
_02231542:
	ldr r0, _02231604 @ =0x00002DC4
	ldr r0, [r5, r0]
	bl FUN_02021D6C
	ldr r0, _02231600 @ =0x00003D4C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02231556
	movs r1, #1
	b _02231558
_02231556:
	movs r1, #0
_02231558:
	ldr r0, _02231608 @ =0x00002DC8
	ldr r0, [r5, r0]
	bl FUN_02021D6C
_02231560:
	ldr r0, _022315FC @ =0x021BF67C
	movs r4, #0
	ldr r1, [r0, #0x48]
	movs r0, #2
	adds r2, r1, #0
	tst r2, r0
	beq _02231572
	adds r4, r0, #0
	b _022315A2
_02231572:
	movs r0, #1
	ands r1, r0
	beq _02231588
	cmp r6, #0
	beq _02231588
	ldr r2, _02231600 @ =0x00003D4C
	ldr r2, [r5, r2]
	cmp r2, #0
	bne _02231588
	adds r4, r0, #0
	b _022315A2
_02231588:
	cmp r1, #0
	beq _02231598
	ldr r0, _02231600 @ =0x00003D4C
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02231598
	movs r4, #2
	b _022315A2
_02231598:
	cmp r1, #0
	beq _022315A2
	cmp r6, #0
	bne _022315A2
	movs r4, #3
_022315A2:
	cmp r4, #1
	bne _022315DA
	ldr r0, _0223160C @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xab
	bl FUN_020364F0
	movs r3, #0xa
	ldr r1, _02231610 @ =0x00002C34
	movs r0, #1
	str r0, [r5, r1]
	movs r0, #0x15
	subs r1, #0x64
	str r0, [r7]
	adds r0, r5, #0
	adds r1, r5, r1
	movs r2, #0x11
	lsls r3, r3, #6
	bl ov97_02230E04
	ldr r0, _02231614 @ =0x00002BD0
	movs r1, #0x13
	adds r0, r5, r0
	bl FUN_0200E7FC
	ldr r1, _02231618 @ =0x00003D50
	str r0, [r5, r1]
_022315DA:
	cmp r4, #2
	bne _022315EE
	ldr r0, _0223160C @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0x13
	bl ov97_02231F1C
_022315EE:
	cmp r4, #3
	bne _022315F8
	ldr r0, _0223160C @ =0x000005DC
	bl FUN_02005748
_022315F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022315FC: .4byte 0x021BF67C
_02231600: .4byte 0x00003D4C
_02231604: .4byte 0x00002DC4
_02231608: .4byte 0x00002DC8
_0223160C: .4byte 0x000005DC
_02231610: .4byte 0x00002C34
_02231614: .4byte 0x00002BD0
_02231618: .4byte 0x00003D50
	thumb_func_end ov97_022314FC

	thumb_func_start ov97_0223161C
ov97_0223161C: @ 0x0223161C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r6, r0, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0x1d
	bls _02231632
	b _02231B88
_02231632:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223163E: @ jump table
	.2byte _0223167A - _0223163E - 2 @ case 0
	.2byte _022316E8 - _0223163E - 2 @ case 1
	.2byte _022316FA - _0223163E - 2 @ case 2
	.2byte _02231770 - _0223163E - 2 @ case 3
	.2byte _022317F0 - _0223163E - 2 @ case 4
	.2byte _02231818 - _0223163E - 2 @ case 5
	.2byte _02231838 - _0223163E - 2 @ case 6
	.2byte _0223186E - _0223163E - 2 @ case 7
	.2byte _02231892 - _0223163E - 2 @ case 8
	.2byte _022318B8 - _0223163E - 2 @ case 9
	.2byte _022318E4 - _0223163E - 2 @ case 10
	.2byte _0223191E - _0223163E - 2 @ case 11
	.2byte _02231942 - _0223163E - 2 @ case 12
	.2byte _0223194E - _0223163E - 2 @ case 13
	.2byte _0223195A - _0223163E - 2 @ case 14
	.2byte _0223196A - _0223163E - 2 @ case 15
	.2byte _02231976 - _0223163E - 2 @ case 16
	.2byte _022319B8 - _0223163E - 2 @ case 17
	.2byte _02231A10 - _0223163E - 2 @ case 18
	.2byte _02231A6E - _0223163E - 2 @ case 19
	.2byte _02231A7A - _0223163E - 2 @ case 20
	.2byte _02231AC8 - _0223163E - 2 @ case 21
	.2byte _02231AB6 - _0223163E - 2 @ case 22
	.2byte _02231AFC - _0223163E - 2 @ case 23
	.2byte _02231B10 - _0223163E - 2 @ case 24
	.2byte _02231B4A - _0223163E - 2 @ case 25
	.2byte _02231B5A - _0223163E - 2 @ case 26
	.2byte _02231B66 - _0223163E - 2 @ case 27
	.2byte _02231B78 - _0223163E - 2 @ case 28
	.2byte _02231B88 - _0223163E - 2 @ case 29
_0223167A:
	adds r0, r6, #0
	bl FUN_02006840
	ldr r1, [r0, #8]
	ldr r0, _022319D0 @ =0x00002BA4
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	bl FUN_0202442C
	ldr r1, _022319D4 @ =0x00002BA0
	str r0, [r4, r1]
	adds r0, r1, #4
	ldr r0, [r4, r0]
	bl FUN_02025E44
	ldr r1, _022319D8 @ =0x00002BA8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl FUN_02027B50
	ldr r1, _022319DC @ =0x00002BAC
	str r0, [r4, r1]
	subs r1, #0xc
	ldr r0, [r4, r1]
	movs r1, #0
	bl FUN_0202DB00
	ldr r1, _022319E0 @ =0x00002BB4
	str r0, [r4, r1]
	subs r1, #0x14
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_0202DB00
	ldr r1, _022319E4 @ =0x00002BB8
	str r0, [r4, r1]
	subs r1, #0x18
	ldr r0, [r4, r1]
	movs r1, #2
	bl FUN_0202DB00
	ldr r1, _022319E8 @ =0x00002BBC
	movs r2, #1
	str r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov97_02230F20
	movs r1, #0xaf
	lsls r1, r1, #6
	str r0, [r4, r1]
	movs r0, #1
	str r0, [r5]
	b _02231B88
_022316E8:
	bl ov97_02232054
	ldr r0, _022319EC @ =0x000029FC
	ldr r0, [r4, r0]
	bl ov97_02232074
	movs r0, #2
	str r0, [r5]
	b _02231B88
_022316FA:
	bl FUN_0201D710
	adds r0, r4, #0
	movs r1, #0
	bl ov97_02230F98
	movs r1, #0x1e
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x57
	bl FUN_02002E7C
	movs r1, #0
	str r1, [sp]
	movs r0, #0x57
	str r0, [sp, #4]
	ldr r0, _022319EC @ =0x000029FC
	movs r2, #1
	ldr r0, [r4, r0]
	movs r3, #0xd
	bl FUN_0200DAA4
	movs r0, #1
	str r0, [sp]
	movs r0, #0x57
	str r0, [sp, #4]
	ldr r0, _022319EC @ =0x000029FC
	movs r1, #0
	ldr r0, [r4, r0]
	movs r2, #0xa
	movs r3, #0xe
	bl FUN_0200DAA4
	ldr r0, _022319DC @ =0x00002BAC
	movs r1, #0
	ldr r0, [r4, r0]
	movs r2, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x57
	str r0, [sp, #4]
	ldr r0, _022319EC @ =0x000029FC
	movs r3, #0xa
	ldr r0, [r4, r0]
	bl FUN_0200DD0C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov97_02230C44
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	adds r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231770:
	movs r1, #0xaf
	lsls r1, r1, #6
	ldr r6, [r4, r1]
	ldr r1, _022319F0 @ =0x021BF67C
	movs r2, #0x40
	ldr r1, [r1, #0x48]
	adds r3, r1, #0
	tst r3, r2
	beq _0223178E
	adds r1, r6, #0
	subs r2, #0x41
	bl ov97_02230F20
	adds r6, r0, #0
	b _022317CA
_0223178E:
	movs r2, #0x80
	tst r2, r1
	beq _022317A0
	adds r1, r6, #0
	movs r2, #1
	bl ov97_02230F20
	adds r6, r0, #0
	b _022317CA
_022317A0:
	movs r0, #2
	tst r0, r1
	beq _022317BA
	ldr r0, _022319F4 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x1c
	adds r3, r5, #0
	bl ov97_02230C10
	b _022317CA
_022317BA:
	movs r0, #1
	tst r0, r1
	beq _022317CA
	ldr r0, _022319F4 @ =0x000005DC
	bl FUN_02005748
	movs r0, #4
	str r0, [r5]
_022317CA:
	movs r0, #0xaf
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, r6
	bne _022317D6
	b _02231B88
_022317D6:
	movs r0, #6
	lsls r0, r0, #8
	bl FUN_02005748
	movs r0, #0xaf
	lsls r0, r0, #6
	str r6, [r4, r0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov97_02230C44
	b _02231B88
_022317F0:
	ldr r1, _022319F8 @ =0x00002BD0
	movs r3, #0xa
	adds r1, r4, r1
	movs r2, #7
	lsls r3, r3, #6
	bl ov97_02230E04
	ldr r3, _022319FC @ =0x00002BF0
	movs r2, #8
	adds r1, r3, #0
	str r0, [r4, r3]
	subs r1, #0x10
	ldr r3, [r4, r3]
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov97_02230E04
	movs r0, #5
	str r0, [r5]
	b _02231B88
_02231818:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov97_02231088
	ldr r0, _022319F0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _022318EC
	ldr r0, _022319F4 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xb
	str r0, [r5]
	b _02231B88
_02231838:
	movs r0, #6
	lsls r0, r0, #8
	bl FUN_02005748
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, _022319F8 @ =0x00002BD0
	movs r1, #0
	adds r0, r4, r0
	bl ov97_02230518
	ldr r0, _02231A00 @ =0x00002BE0
	movs r1, #0
	adds r0, r4, r0
	bl ov97_02230500
	movs r1, #1
	adds r0, r4, #0
	lsls r2, r1, #0xc
	movs r3, #0x66
	bl ov97_022312B4
	movs r0, #7
	str r0, [r5]
	b _02231B88
_0223186E:
	bl ov97_02231354
	cmp r0, #0
	beq _022318EC
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov97_02230C44
	ldr r2, _02231A04 @ =0x00708000
	adds r0, r4, #0
	movs r1, #0
	lsrs r3, r2, #1
	bl ov97_022312B4
	movs r0, #8
	str r0, [r5]
	b _02231B88
_02231892:
	bl ov97_02231354
	ldr r0, _022319F0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r1, r0
	beq _022318EC
	lsls r0, r0, #9
	bl FUN_02005748
	movs r1, #1
	adds r0, r4, #0
	lsls r2, r1, #0xc
	movs r3, #0x66
	bl ov97_022312B4
	movs r0, #9
	str r0, [r5]
	b _02231B88
_022318B8:
	bl ov97_02231354
	cmp r0, #0
	beq _022318EC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov97_02230C44
	ldr r2, _02231A04 @ =0x00708000
	adds r0, r4, #0
	movs r1, #0
	lsrs r3, r2, #1
	bl ov97_022312B4
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0xa
	str r0, [r5]
	b _02231B88
_022318E4:
	bl ov97_02231354
	cmp r0, #0
	bne _022318EE
_022318EC:
	b _02231B88
_022318EE:
	ldr r0, _022319F8 @ =0x00002BD0
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x13
	movs r3, #0xa
	bl FUN_0200E060
	ldr r0, _02231A00 @ =0x00002BE0
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0xa
	movs r3, #0xe
	bl FUN_0200DC48
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r4, #0
	bl ov97_02231318
	movs r0, #5
	str r0, [r5]
	b _02231B88
_0223191E:
	bl ov97_02230868
	ldr r0, _022319F8 @ =0x00002BD0
	movs r1, #0
	adds r0, r4, r0
	bl ov97_02230518
	ldr r0, _022319F8 @ =0x00002BD0
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _022319F8 @ =0x00002BD0
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #3
	str r0, [r5]
	b _02231B88
_02231942:
	ldr r2, _02231A08 @ =ov97_02230834
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov97_02231088
	b _02231B88
_0223194E:
	ldr r2, _02231A08 @ =ov97_02230834
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov97_02231088
	b _02231B88
_0223195A:
	ldr r1, _02231A00 @ =0x00002BE0
	ldr r2, _02231A0C @ =0x00010200
	adds r1, r4, r1
	bl ov97_02230BC4
	movs r0, #0xd
	str r0, [r5]
	b _02231B88
_0223196A:
	movs r1, #0
	movs r2, #0x10
	adds r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231976:
	bl ov97_02230868
	ldr r0, _022319F8 @ =0x00002BD0
	movs r1, #0
	adds r0, r4, r0
	bl ov97_02230518
	ldr r0, _022319F8 @ =0x00002BD0
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _022319F8 @ =0x00002BD0
	adds r0, r4, r0
	bl FUN_0201A8FC
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl ov97_02230C44
	ldr r0, _022319EC @ =0x000029FC
	ldr r0, [r4, r0]
	bl ov97_02230664
	adds r0, r4, #0
	bl ov97_02230410
	adds r0, r4, #0
	bl ov97_022304AC
	movs r0, #0x11
	str r0, [r5]
	b _02231B88
_022319B8:
	bl ov97_02231BD8
	bl FUN_02039734
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x12
	adds r3, r5, #0
	bl ov97_02230C10
	b _02231B88
	nop
_022319D0: .4byte 0x00002BA4
_022319D4: .4byte 0x00002BA0
_022319D8: .4byte 0x00002BA8
_022319DC: .4byte 0x00002BAC
_022319E0: .4byte 0x00002BB4
_022319E4: .4byte 0x00002BB8
_022319E8: .4byte 0x00002BBC
_022319EC: .4byte 0x000029FC
_022319F0: .4byte 0x021BF67C
_022319F4: .4byte 0x000005DC
_022319F8: .4byte 0x00002BD0
_022319FC: .4byte 0x00002BF0
_02231A00: .4byte 0x00002BE0
_02231A04: .4byte 0x00708000
_02231A08: .4byte ov97_02230834
_02231A0C: .4byte 0x00010200
_02231A10:
	movs r6, #0
	adds r0, r6, #0
	bl FUN_02035D78
	cmp r0, #0
	beq _02231A62
	adds r0, r4, #0
	adds r0, #0x90
	bl FUN_02034150
	ldr r1, _02231BAC @ =0x00002B08
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov97_02231CA0
	adds r6, r0, #0
	bne _02231A52
	ldr r0, _02231BB0 @ =0x00002C30
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231A52
	ldr r0, _02231BAC @ =0x00002B08
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0201ADA4
	ldr r0, _02231BAC @ =0x00002B08
	adds r0, r4, r0
	bl FUN_0201A954
	ldr r0, _02231BB0 @ =0x00002C30
	movs r1, #0
	str r1, [r4, r0]
_02231A52:
	ldr r1, _02231BB4 @ =0x00002AF8
	adds r0, r4, #0
	adds r1, r4, r1
	adds r2, r6, #0
	bl ov97_02231E78
	ldr r0, _02231BB0 @ =0x00002C30
	str r6, [r4, r0]
_02231A62:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov97_022314FC
	b _02231B88
_02231A6E:
	movs r1, #0
	movs r2, #0x14
	adds r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231A7A:
	bl ov97_02230438
	ldr r0, _02231BB8 @ =0x00002BD0
	movs r1, #0
	adds r0, r4, r0
	bl ov97_02230518
	ldr r0, _02231BBC @ =0x00002BE0
	movs r1, #0
	adds r0, r4, r0
	bl ov97_02230500
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov97_02230C44
	movs r1, #0x1e
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x57
	bl FUN_02002E7C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	adds r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231AB6:
	bl FUN_02036780
	cmp r0, #0
	bne _02231B88
	movs r0, #0xb1
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5]
	b _02231B88
_02231AC8:
	ldr r0, _02231BC0 @ =0x00002C34
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02231B88
	ldr r1, _02231BC4 @ =0x00002DD8
	adds r0, r4, #0
	ldr r2, [r4]
	adds r0, #0x90
	adds r1, r4, r1
	bl ov97_0223829C
	ldr r0, _02231BC4 @ =0x00002DD8
	movs r1, #0xd6
	adds r0, r4, r0
	lsls r1, r1, #2
	bl ov97_0222D1F0
	adds r0, r4, #0
	bl ov97_02231488
	movs r0, #0x17
	str r0, [r5]
	b _02231B88
_02231AFC:
	bl ov97_02238528
	cmp r0, #4
	bne _02231B88
	movs r0, #0x93
	bl FUN_020364F0
	movs r0, #0x18
	str r0, [r5]
	b _02231B88
_02231B10:
	bl ov97_02231C84
	cmp r0, #0
	beq _02231B22
	movs r0, #0x93
	bl FUN_02036540
	cmp r0, #1
	bne _02231B88
_02231B22:
	bl ov97_022384F4
	ldr r1, _02231BB8 @ =0x00002BD0
	movs r3, #0xa
	adds r0, r4, #0
	adds r1, r4, r1
	movs r2, #0x12
	lsls r3, r3, #6
	bl ov97_02230E04
	ldr r0, _02231BC8 @ =0x00003D50
	ldr r0, [r4, r0]
	bl FUN_0200EBA0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x19
	bl ov97_02231F1C
	b _02231B88
_02231B4A:
	ldr r0, _02231BCC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02231B88
	movs r0, #0x13
	str r0, [r5]
	b _02231B88
_02231B5A:
	movs r1, #0
	movs r2, #0x1c
	adds r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231B66:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _02231B88
	movs r0, #0xb1
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5]
	b _02231B88
_02231B78:
	bl ov97_02230438
	adds r0, r4, #0
	bl ov97_02231318
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_02231B88:
	ldr r0, _02231BD0 @ =0x00002C44
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231B94
	bl FUN_020219F8
_02231B94:
	bl ov97_02237CA0
	ldr r0, _02231BD4 @ =0x00003D48
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02231BA4
	adds r0, r4, #0
	blx r1
_02231BA4:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02231BAC: .4byte 0x00002B08
_02231BB0: .4byte 0x00002C30
_02231BB4: .4byte 0x00002AF8
_02231BB8: .4byte 0x00002BD0
_02231BBC: .4byte 0x00002BE0
_02231BC0: .4byte 0x00002C34
_02231BC4: .4byte 0x00002DD8
_02231BC8: .4byte 0x00003D50
_02231BCC: .4byte 0x021BF67C
_02231BD0: .4byte 0x00002C44
_02231BD4: .4byte 0x00003D48
	thumb_func_end ov97_0223161C

	thumb_func_start ov97_02231BD8
ov97_02231BD8: @ 0x02231BD8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #6
	ldr r1, [r5, r0]
	movs r2, #0xd6
	lsls r1, r1, #2
	adds r1, r5, r1
	subs r0, #0xc
	ldr r4, [r1, r0]
	adds r0, r5, #0
	adds r0, #0xe0
	adds r1, r4, #0
	lsls r2, r2, #2
	blx FUN_020D50B8
	movs r1, #0x41
	adds r0, r5, #0
	lsls r1, r1, #2
	adds r0, #0x90
	adds r1, r4, r1
	movs r2, #0x50
	blx FUN_020D50B8
	ldr r0, _02231C40 @ =0x00000428
	movs r1, #0
	strb r1, [r5, r0]
	adds r0, r5, #0
	adds r0, #0xde
	ldrb r1, [r0]
	movs r0, #0x10
	movs r2, #0xf
	bics r1, r0
	adds r0, r5, #0
	adds r0, #0xde
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xde
	ldrb r1, [r0]
	movs r0, #0x20
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0xde
	strb r1, [r0]
	ldr r1, _02231C44 @ =0x00002BA4
	adds r0, r5, #4
	ldr r1, [r5, r1]
	bl ov97_0222D1C4
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02231C40: .4byte 0x00000428
_02231C44: .4byte 0x00002BA4
	thumb_func_end ov97_02231BD8

	thumb_func_start ov97_02231C48
ov97_02231C48: @ 0x02231C48
	push {r3, r4}
	ldr r3, [r0]
	ldr r1, [r0, #4]
	adds r2, r0, #0
	movs r4, #0
	cmp r1, r3
	bge _02231C5C
	adds r3, r1, #0
	movs r4, #1
	adds r2, r0, #4
_02231C5C:
	ldr r1, [r0, #8]
	cmp r1, r3
	bge _02231C6A
	adds r2, r0, #0
	adds r3, r1, #0
	movs r4, #2
	adds r2, #8
_02231C6A:
	ldr r1, [r0, #0xc]
	cmp r1, r3
	bge _02231C76
	adds r2, r0, #0
	movs r4, #3
	adds r2, #0xc
_02231C76:
	ldr r0, _02231C80 @ =0x3FFF0001
	str r0, [r2]
	adds r0, r4, #1
	pop {r3, r4}
	bx lr
	.align 2, 0
_02231C80: .4byte 0x3FFF0001
	thumb_func_end ov97_02231C48

	thumb_func_start ov97_02231C84
ov97_02231C84: @ 0x02231C84
	push {r3, r4, r5, lr}
	movs r5, #0
	movs r4, #1
_02231C8A:
	adds r0, r4, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _02231C96
	adds r5, r5, #1
_02231C96:
	adds r4, r4, #1
	cmp r4, #5
	blt _02231C8A
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02231C84

	thumb_func_start ov97_02231CA0
ov97_02231CA0: @ 0x02231CA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r5, r0, #0
	movs r6, #0
	movs r0, #1
	str r1, [sp, #0x10]
	adds r7, r6, #0
	str r0, [sp, #0x24]
	adds r4, r5, #4
_02231CB2:
	ldr r0, [sp, #0x24]
	bl FUN_02032EE8
	cmp r0, #0
	bne _02231CD4
	ldr r0, _02231E5C @ =0x00002C08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231CC6
	adds r7, r7, #1
_02231CC6:
	ldr r0, _02231E5C @ =0x00002C08
	movs r1, #0
	str r1, [r4, r0]
	ldr r1, _02231E60 @ =0x3FFF0001
	adds r0, #0x14
	str r1, [r4, r0]
	b _02231CFC
_02231CD4:
	ldr r1, _02231E5C @ =0x00002C08
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _02231CFA
	ldr r1, _02231E5C @ =0x00002C08
	adds r7, r7, #1
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r1, #0x34
	ldr r1, [r5, r1]
	adds r0, #0x34
	adds r2, r1, #1
	ldr r0, [r5, r0]
	ldr r1, _02231E64 @ =0x00002C3C
	adds r6, r6, #1
	str r2, [r5, r1]
	subs r1, #0x20
	str r0, [r4, r1]
	b _02231CFC
_02231CFA:
	adds r6, r6, #1
_02231CFC:
	ldr r0, [sp, #0x24]
	adds r4, r4, #4
	adds r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	blt _02231CB2
	cmp r7, #0
	bne _02231D12
	add sp, #0x48
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02231D12:
	ldr r1, _02231E68 @ =0x00002C20
	ldr r0, [r5, r1]
	str r0, [sp, #0x38]
	adds r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x3c]
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r5, r0]
	adds r1, #0xc
	str r0, [sp, #0x40]
	ldr r0, [r5, r1]
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x28]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x2c]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x30]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x34]
	movs r0, #0x57
	bl FUN_0200B358
	adds r4, r0, #0
	ldr r2, _02231E6C @ =0x000001A5
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x57
	bl FUN_0200B144
	str r0, [sp, #0x1c]
	movs r5, #0
	ldr r0, [sp, #0x10]
	adds r1, r5, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	str r0, [sp, #0x14]
	cmp r6, #0
	ble _02231E40
	add r0, sp, #0x28
	str r0, [sp, #0x18]
_02231D78:
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	bl FUN_02032EE8
	adds r7, r0, #0
	beq _02231E30
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	bl FUN_0200B498
	ldr r1, [sp, #0x1c]
	adds r0, r4, #0
	movs r2, #0x35
	movs r3, #0x57
	bl FUN_0200B29C
	str r0, [sp, #0x20]
	adds r0, r7, #0
	bl FUN_02025F30
	cmp r0, #0
	str r5, [sp]
	bne _02231DC2
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231E70 @ =0x00050600
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x20]
	adds r3, r1, #0
	bl FUN_0201D78C
	b _02231DDC
_02231DC2:
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0xc1
	lsls r0, r0, #0xa
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x20]
	adds r3, r1, #0
	bl FUN_0201D78C
_02231DDC:
	ldr r0, [sp, #0x20]
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_02025F20
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	lsrs r2, r2, #0x10
	movs r3, #5
	bl FUN_0200B60C
	ldr r1, [sp, #0x1c]
	adds r0, r4, #0
	movs r2, #0x36
	movs r3, #0x57
	bl FUN_0200B29C
	adds r7, r0, #0
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231E74 @ =0x000E0F00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r2, r7, #0
	movs r3, #0x50
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	adds r5, #0x18
_02231E30:
	ldr r0, [sp, #0x18]
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blt _02231D78
_02231E40:
	cmp r6, #0
	beq _02231E4A
	ldr r0, [sp, #0x10]
	bl FUN_0201A954
_02231E4A:
	ldr r0, [sp, #0x1c]
	bl FUN_0200B190
	adds r0, r4, #0
	bl FUN_0200B3F0
	adds r0, r6, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02231E5C: .4byte 0x00002C08
_02231E60: .4byte 0x3FFF0001
_02231E64: .4byte 0x00002C3C
_02231E68: .4byte 0x00002C20
_02231E6C: .4byte 0x000001A5
_02231E70: .4byte 0x00050600
_02231E74: .4byte 0x000E0F00
	thumb_func_end ov97_02231CA0

	thumb_func_start ov97_02231E78
ov97_02231E78: @ 0x02231E78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _02231F0C @ =0x00002BF4
	adds r4, r1, #0
	str r2, [r5, r0]
	ldr r2, _02231F10 @ =0x000001A5
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x57
	bl FUN_0200B144
	ldr r1, _02231F14 @ =0x00002A04
	str r0, [r5, r1]
	movs r0, #0x57
	bl FUN_0200B358
	movs r1, #0x2a
	lsls r1, r1, #8
	str r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r3, #1
	str r3, [sp]
	movs r0, #0x2a
	ldr r2, _02231F0C @ =0x00002BF4
	str r3, [sp, #4]
	lsls r0, r0, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	movs r1, #0
	bl FUN_0200B60C
	movs r1, #0x2a
	lsls r1, r1, #8
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	movs r2, #0x38
	movs r3, #0x57
	bl FUN_0200B29C
	adds r6, r0, #0
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231F18 @ =0x00010200
	movs r1, #1
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201A954
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, _02231F14 @ =0x00002A04
	ldr r0, [r5, r0]
	bl FUN_0200B190
	movs r0, #0x2a
	lsls r0, r0, #8
	ldr r0, [r5, r0]
	bl FUN_0200B3F0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02231F0C: .4byte 0x00002BF4
_02231F10: .4byte 0x000001A5
_02231F14: .4byte 0x00002A04
_02231F18: .4byte 0x00010200
	thumb_func_end ov97_02231E78

	thumb_func_start ov97_02231F1C
ov97_02231F1C: @ 0x02231F1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov97_0222D2DC
	bl FUN_02039794
	movs r0, #0xb1
	lsls r0, r0, #6
	str r6, [r5, r0]
	movs r0, #0x16
	str r0, [r4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_02231F1C

	thumb_func_start ov97_02231F38
ov97_02231F38: @ 0x02231F38
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl FUN_0200682C
	adds r7, r0, #0
	ldr r0, _02231FE4 @ =0x00002A08
	movs r6, #0
	adds r4, r7, #0
	adds r5, r7, r0
_02231F4A:
	ldr r0, _02231FE4 @ =0x00002A08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231F5E
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
_02231F5E:
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, #0x10
	cmp r6, #0x13
	blo _02231F4A
	ldr r0, _02231FE8 @ =0x00002BD0
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02231F7E
	adds r0, r7, r0
	bl FUN_0201ACF4
	ldr r0, _02231FE8 @ =0x00002BD0
	adds r0, r7, r0
	bl FUN_0201A8FC
_02231F7E:
	ldr r0, _02231FEC @ =0x00002BE0
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02231F94
	adds r0, r7, r0
	bl FUN_0201ACF4
	ldr r0, _02231FEC @ =0x00002BE0
	adds r0, r7, r0
	bl FUN_0201A8FC
_02231F94:
	ldr r0, _02231FF0 @ =0x000029FC
	movs r1, #0
	ldr r0, [r7, r0]
	bl FUN_02019044
	ldr r0, _02231FF0 @ =0x000029FC
	movs r1, #1
	ldr r0, [r7, r0]
	bl FUN_02019044
	ldr r0, _02231FF0 @ =0x000029FC
	movs r1, #2
	ldr r0, [r7, r0]
	bl FUN_02019044
	ldr r0, _02231FF0 @ =0x000029FC
	movs r1, #3
	ldr r0, [r7, r0]
	bl FUN_02019044
	ldr r0, _02231FF0 @ =0x000029FC
	ldr r0, [r7, r0]
	bl FUN_020181C4
	ldr r0, _02231FF4 @ =0x00000061
	ldr r1, _02231FF8 @ =0x0223D71C
	bl FUN_02000EC4
	movs r0, #0x5b
	bl FUN_0201807C
	ldr r0, [sp]
	bl FUN_02006830
	movs r0, #0x57
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231FE4: .4byte 0x00002A08
_02231FE8: .4byte 0x00002BD0
_02231FEC: .4byte 0x00002BE0
_02231FF0: .4byte 0x000029FC
_02231FF4: .4byte 0x00000061
_02231FF8: .4byte 0x0223D71C
	thumb_func_end ov97_02231F38

	thumb_func_start ov97_02231FFC
ov97_02231FFC: @ 0x02231FFC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	bl ov97_02232074
	ldr r1, _02232048 @ =0x00003D54
	adds r0, r5, #0
	bl FUN_02018184
	ldr r2, _02232048 @ =0x00003D54
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, _0223204C @ =0x000029FC
	movs r1, #0x1e
	str r6, [r4, r0]
	movs r0, #0
	lsls r1, r1, #4
	adds r2, r5, #0
	str r5, [r4]
	bl FUN_02002E7C
	ldr r0, _02232050 @ =0x00002BB4
	movs r2, #0
	str r7, [r4, r0]
	adds r0, #0xc
	str r2, [r4, r0]
	adds r0, r4, #0
	movs r1, #1
	bl ov97_02230C44
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232048: .4byte 0x00003D54
_0223204C: .4byte 0x000029FC
_02232050: .4byte 0x00002BB4
	thumb_func_end ov97_02231FFC

	thumb_func_start ov97_02232054
ov97_02232054: @ 0x02232054
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02232070 @ =0x0223D83C
	add r3, sp, #0
	movs r2, #5
_0223205E:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223205E
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_02232070: .4byte 0x0223D83C
	thumb_func_end ov97_02232054

	thumb_func_start ov97_02232074
ov97_02232074: @ 0x02232074
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02232134 @ =0x0223D7BC
	add r3, sp, #0x70
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _02232138 @ =0x0223D7E8
	add r3, sp, #0x54
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
	ldr r5, _0223213C @ =0x0223D820
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
	ldr r5, _02232140 @ =0x0223D804
	add r3, sp, #0x1c
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
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _02232144 @ =0x0223D7CC
	add r3, sp, #0
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_02232134: .4byte 0x0223D7BC
_02232138: .4byte 0x0223D7E8
_0223213C: .4byte 0x0223D820
_02232140: .4byte 0x0223D804
_02232144: .4byte 0x0223D7CC
	thumb_func_end ov97_02232074

	thumb_func_start ov97_02232148
ov97_02232148: @ 0x02232148
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	bl FUN_0202442C
	movs r1, #0
	ldr r4, [r5, #0x48]
	mvns r1, r1
	adds r6, r0, #0
	cmp r4, r1
	bne _0223217C
	adds r2, r5, #0
	adds r2, #0x4c
	ldrh r2, [r2]
	lsrs r1, r1, #0x10
	cmp r2, r1
	bne _0223217C
	bl FUN_0202DABC
	adds r0, r7, #0
	movs r1, #0
	bl FUN_02024760
	movs r0, #0
	blx FUN_020C3EE4
_0223217C:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	cmp r1, #0x64
	blo _02232190
	cmp r1, #0x98
	bhi _02232190
	movs r0, #0x46
	lsls r0, r0, #6
	orrs r4, r0
_02232190:
	cmp r4, #0
	bne _02232198
	movs r4, #0
	mvns r4, r4
_02232198:
	movs r0, #1
	lsls r0, r0, #0xc
	tst r0, r4
	bne _022321A4
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022321A4:
	adds r0, r5, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _022321C0
	adds r0, r6, #0
	bl FUN_0202DE2C
	cmp r0, #1
	bne _022321C0
	movs r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_022321C0:
	adds r0, r5, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _022321DC
	adds r0, r6, #0
	bl FUN_0202DD08
	cmp r0, #0
	bne _022321DC
	movs r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_022321DC:
	adds r0, r6, #0
	bl FUN_0202DCE0
	cmp r0, #0
	bne _022321EA
	movs r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_022321EA:
	adds r5, #0x4e
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _022321FA
	movs r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022321FA:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov97_02232148

	thumb_func_start ov97_02232200
ov97_02232200: @ 0x02232200
	push {r3, lr}
	movs r0, #4
	bl ov97_02233424
	bl ov97_02233AD8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02232200

	thumb_func_start ov97_02232210
ov97_02232210: @ 0x02232210
	push {r3, lr}
	bl ov97_022335A8
	str r0, [sp]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02232210

	thumb_func_start ov97_0223221C
ov97_0223221C: @ 0x0223221C
	push {r3, lr}
	bl ov97_022335C8
	add r1, sp, #0
	strh r0, [r1]
	movs r0, #0
	ldrsh r0, [r1, r0]
	pop {r3, pc}
	thumb_func_end ov97_0223221C

	thumb_func_start ov97_0223222C
ov97_0223222C: @ 0x0223222C
	push {r4, lr}
	bl ov97_02233430
	cmp r0, #0xc
	bne _0223224E
	bl ov97_02233410
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0223224A
	bl ov97_02233AD8
	movs r0, #1
	str r0, [r4, #0x1c]
_0223224A:
	movs r0, #1
	pop {r4, pc}
_0223224E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0223222C

	thumb_func_start ov97_02232254
ov97_02232254: @ 0x02232254
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233510
	movs r3, #0
	adds r1, r3, #0
_02232260:
	ldr r2, [r0]
	cmp r2, #0
	beq _02232270
	ldrh r2, [r0, #6]
	cmp r4, r2
	bne _02232270
	strb r1, [r0, #8]
	strb r1, [r0, #0xa]
_02232270:
	adds r3, r3, #1
	adds r0, #0xc
	cmp r3, #8
	blt _02232260
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_02232254

	thumb_func_start ov97_0223227C
ov97_0223227C: @ 0x0223227C
	push {r3, lr}
	bl ov97_02233510
	adds r1, r0, #0
	adds r1, #0x62
	ldrh r3, [r1]
	movs r2, #1
	adds r1, r3, #0
	tst r1, r2
	beq _022322A2
	adds r1, r0, #0
	adds r1, #0x62
	ldrh r3, [r1]
	movs r1, #1
	adds r0, #0x62
	bics r3, r1
	strh r3, [r0]
	adds r0, r2, #0
	pop {r3, pc}
_022322A2:
	movs r1, #0x40
	adds r2, r3, #0
	tst r2, r1
	beq _022322BC
	adds r1, r0, #0
	adds r1, #0x62
	ldrh r2, [r1]
	movs r1, #0x40
	adds r0, #0x62
	bics r2, r1
	strh r2, [r0]
	movs r0, #7
	pop {r3, pc}
_022322BC:
	lsls r1, r1, #6
	tst r1, r3
	beq _022322D4
	adds r1, r0, #0
	adds r1, #0x62
	ldrh r2, [r1]
	ldr r1, _022322D8 @ =0xFFFFEFFF
	adds r0, #0x62
	ands r1, r2
	strh r1, [r0]
	movs r0, #0xd
	pop {r3, pc}
_022322D4:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_022322D8: .4byte 0xFFFFEFFF
	thumb_func_end ov97_0223227C

	thumb_func_start ov97_022322DC
ov97_022322DC: @ 0x022322DC
	push {r4, lr}
	bl ov97_02233510
	adds r4, r0, #0
	movs r1, #1
	adds r0, #0x60
	strb r1, [r0]
	blx FUN_020CE7F4
	adds r1, r4, #0
	adds r1, #0x62
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r1, [r0]
	cmp r1, #0
	beq _02232306
	movs r0, #2
	lsls r0, r0, #0xe
	cmp r1, r0
	bne _0223230A
_02232306:
	movs r0, #0
	pop {r4, pc}
_0223230A:
	adds r0, r4, #0
	movs r1, #0x66
	adds r0, #0x61
	strb r1, [r0]
	movs r0, #0
	adds r4, #0x64
	strb r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov97_022322DC

	thumb_func_start ov97_0223231C
ov97_0223231C: @ 0x0223231C
	push {r4, lr}
	bl ov97_02233408
	adds r4, r0, #0
	blx FUN_020CE8A4
	strh r0, [r4, #0x18]
	blx FUN_020CEB20
	strh r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_0223231C

	thumb_func_start ov97_02232334
ov97_02232334: @ 0x02232334
	push {r4, lr}
	bl ov97_02233478
	adds r4, r0, #0
	bl ov97_022334B4
	str r0, [r4]
	bl ov97_02233408
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #4]
	blx FUN_020CE934
	strh r0, [r4, #6]
	movs r0, #0xff
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	pop {r4, pc}
	thumb_func_end ov97_02232334

	thumb_func_start ov97_02232360
ov97_02232360: @ 0x02232360
	push {r3, r4, r5, r6, r7, lr}
	bl ov97_02233478
	adds r7, r0, #0
	blx FUN_020CE7F4
	adds r3, r0, #0
	beq _022323AC
	ldrh r2, [r7, #4]
	movs r1, #0
	movs r0, #1
	mov ip, r2
	movs r4, #0x1c
_0223237A:
	lsrs r6, r2, #0x1f
	lsls r5, r2, #0x1c
	subs r5, r5, r6
	rors r5, r4
	adds r5, r6, r5
	adds r6, r0, #0
	lsls r6, r5
	adds r5, r3, #0
	tst r5, r6
	beq _022323A4
	mov r0, ip
	adds r0, r0, r1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1c
	subs r1, r1, r2
	movs r0, #0x1c
	rors r1, r0
	adds r0, r2, r1
	adds r0, r0, #1
	strh r0, [r7, #4]
	pop {r3, r4, r5, r6, r7, pc}
_022323A4:
	adds r1, r1, #1
	adds r2, r2, #1
	cmp r1, #0x10
	blt _0223237A
_022323AC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov97_02232360

	thumb_func_start ov97_022323B0
ov97_022323B0: @ 0x022323B0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #8
	bne _022323C8
	bl ov97_022337FC
	bl ov97_02232200
_022323C8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_022323B0

	thumb_func_start ov97_022323CC
ov97_022323CC: @ 0x022323CC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022323E0
	bl ov97_022337FC
_022323E0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_022323CC

	thumb_func_start ov97_022323E4
ov97_022323E4: @ 0x022323E4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0223241A
	movs r0, #2
	bl ov97_02233424
	bl ov97_02233430
	cmp r0, #0xc
	bne _02232406
	bl ov97_02233870
	movs r0, #2
	bl ov97_02233424
	pop {r3, pc}
_02232406:
	bl ov97_02233A9C
	cmp r0, #0
	bne _02232422
	bl ov97_02233870
	movs r0, #2
	bl ov97_02233424
	pop {r3, pc}
_0223241A:
	bl ov97_022337FC
	bl ov97_02233870
_02232422:
	pop {r3, pc}
	thumb_func_end ov97_022323E4

	thumb_func_start ov97_02232424
ov97_02232424: @ 0x02232424
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0223244E
	bl ov97_02233430
	cmp r0, #0xc
	bne _02232446
	blx FUN_020CDD28
	movs r0, #0xc
	bl ov97_02233424
	movs r0, #1
	bl ov97_022334F0
	pop {r3, pc}
_02232446:
	movs r0, #1
	bl ov97_02233424
	pop {r3, pc}
_0223244E:
	bl ov97_022337FC
	movs r0, #4
	bl ov97_02233424
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02232424

	thumb_func_start ov97_0223245C
ov97_0223245C: @ 0x0223245C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _022324BA
	bl ov97_02233510
	adds r4, r0, #0
	adds r0, #0x61
	ldrh r1, [r5, #0xa]
	ldrb r0, [r0]
	cmp r0, r1
	ble _02232484
	adds r0, r4, #0
	adds r0, #0x61
	strb r1, [r0]
	adds r0, r4, #0
	ldrh r1, [r5, #8]
	adds r0, #0x64
	strb r1, [r0]
_02232484:
	bl ov97_0223227C
	cmp r0, #0
	beq _0223249A
	bl ov97_02233890
	cmp r0, #0
	bne _022324C2
	bl ov97_02232200
	pop {r3, r4, r5, pc}
_0223249A:
	adds r4, #0x61
	ldrb r0, [r4]
	cmp r0, #0x66
	bhs _022324B4
	bl ov97_0223231C
	bl ov97_022338BC
	cmp r0, #0
	bne _022324C2
	bl ov97_02232200
	pop {r3, r4, r5, pc}
_022324B4:
	bl ov97_02232200
	pop {r3, r4, r5, pc}
_022324BA:
	bl ov97_022337FC
	bl ov97_02232200
_022324C2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0223245C

	thumb_func_start ov97_022324C4
ov97_022324C4: @ 0x022324C4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _022324E2
	bl ov97_0223222C
	cmp r0, #0
	bne _022324EA
	bl ov97_022338F8
	cmp r0, #0
	bne _022324EA
	bl ov97_02232200
	pop {r3, pc}
_022324E2:
	bl ov97_022337FC
	bl ov97_02232200
_022324EA:
	pop {r3, pc}
	thumb_func_end ov97_022324C4

	thumb_func_start ov97_022324EC
ov97_022324EC: @ 0x022324EC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrh r0, [r5, #8]
	bl ov97_02233800
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _02232500
	b _02232612
_02232500:
	bl ov97_02233510
	adds r4, r0, #0
	movs r0, #8
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	beq _02232516
	b _0223261A
_02232516:
	adds r0, r4, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #1
	bne _02232528
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x60
	strb r1, [r0]
_02232528:
	ldrh r0, [r5, #8]
	cmp r0, #7
	bgt _02232540
	bge _02232562
	cmp r0, #2
	bgt _0223261A
	cmp r0, #0
	blt _0223261A
	beq _02232548
	add sp, #0xc
	cmp r0, #2
	pop {r4, r5, pc}
_02232540:
	cmp r0, #9
	beq _02232608
	add sp, #0xc
	pop {r4, r5, pc}
_02232548:
	bl ov97_02233A24
	cmp r0, #0
	bne _02232558
	bl ov97_02232200
	add sp, #0xc
	pop {r4, r5, pc}
_02232558:
	movs r0, #0
	bl ov97_022334C0
	add sp, #0xc
	pop {r4, r5, pc}
_02232562:
	bl ov97_02233510
	bl ov97_0223380C
	adds r4, #0x60
	ldrb r0, [r4]
	cmp r0, #2
	bne _0223261A
	adds r4, r5, #0
	adds r4, #0x14
	bl ov97_02233560
	ldr r1, [r5, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, r0
	bne _0223261A
	bl ov97_02233570
	ldr r1, [r4]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1c
	cmp r1, r0
	bhi _0223261A
	bl ov97_02233580
	ldr r1, [r4, #4]
	lsrs r1, r1, #0x10
	cmp r1, r0
	bne _0223261A
	bl ov97_02233510
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0xa
	bl ov97_02232210
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xa
	bl ov97_0223221C
	add r1, sp, #0
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r2, [sp, #8]
	adds r3, r4, #0
	strh r0, [r1, #2]
	movs r0, #0
_022325C6:
	ldr r1, [r3]
	cmp r1, r2
	bne _022325DE
	movs r1, #0xc
	muls r1, r0, r1
	ldrh r0, [r5, #0x10]
	adds r1, r4, r1
	add sp, #0xc
	strh r0, [r1, #6]
	movs r0, #1
	strb r0, [r1, #0xa]
	pop {r4, r5, pc}
_022325DE:
	cmp r1, #0
	bne _022325FC
	movs r1, #0xc
	muls r1, r0, r1
	str r2, [r4, r1]
	add r0, sp, #0
	ldrh r0, [r0, #2]
	adds r1, r4, r1
	add sp, #0xc
	strh r0, [r1, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r1, #6]
	movs r0, #1
	strb r0, [r1, #0xa]
	pop {r4, r5, pc}
_022325FC:
	adds r0, r0, #1
	adds r3, #0xc
	cmp r0, #8
	blt _022325C6
	add sp, #0xc
	pop {r4, r5, pc}
_02232608:
	ldrh r0, [r5, #0x10]
	bl ov97_02232254
	add sp, #0xc
	pop {r4, r5, pc}
_02232612:
	bl ov97_022337FC
	bl ov97_02232200
_0223261A:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov97_022324EC

	thumb_func_start ov97_02232620
ov97_02232620: @ 0x02232620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	str r0, [sp]
	bl ov97_02233508
	adds r7, r0, #0
	adds r0, r4, #4
	bl ov97_02232210
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #4
	bl ov97_0223221C
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r6, [sp, #0xc]
	adds r1, r7, #0
	strh r0, [r2, #2]
	ldrh r3, [r2, #2]
	movs r0, #0
_0223264E:
	ldr r2, [r1]
	adds r5, r1, #0
	adds r5, #0x34
	cmp r2, r6
	bne _02232664
	ldrh r5, [r5]
	cmp r5, r3
	bne _02232664
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02232664:
	cmp r2, #0
	bne _022326B0
	movs r1, #0x38
	muls r1, r0, r1
	ldr r0, [sp, #0xc]
	adds r5, r4, #0
	str r0, [r7, r1]
	adds r0, r7, r1
	adds r5, #0x58
	adds r3, r0, #4
	movs r2, #0xc
_0223267A:
	ldrh r0, [r5]
	adds r5, r5, #2
	strh r0, [r3]
	adds r3, r3, #2
	subs r2, r2, #1
	bne _0223267A
	adds r3, r7, r1
	adds r4, #0x70
	adds r3, #0x1c
	movs r2, #0xc
_0223268E:
	ldrh r0, [r4]
	adds r4, r4, #2
	strh r0, [r3]
	adds r3, r3, #2
	subs r2, r2, #1
	bne _0223268E
	add r0, sp, #4
	ldrh r0, [r0, #2]
	adds r1, r7, r1
	strh r0, [r1, #0x34]
	ldr r0, [sp]
	adds r1, #0x36
	ldrh r0, [r0, #0x12]
	add sp, #0x10
	strb r0, [r1]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022326B0:
	adds r0, r0, #1
	adds r1, #0x38
	cmp r0, #8
	blt _0223264E
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov97_02232620

	thumb_func_start ov97_022326C0
ov97_022326C0: @ 0x022326C0
	push {r3, lr}
	bl ov97_02232360
	bl ov97_02233914
	cmp r0, #0
	bne _022326D2
	bl ov97_02232200
_022326D2:
	pop {r3, pc}
	thumb_func_end ov97_022326C0

	thumb_func_start ov97_022326D4
ov97_022326D4: @ 0x022326D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl ov97_022334B4
	adds r4, r0, #0
	bl ov97_02233508
	adds r5, r0, #0
	bl ov97_0223222C
	cmp r0, #0
	beq _022326F0
	movs r0, #1
	pop {r4, r5, r6, pc}
_022326F0:
	movs r1, #0
	adds r2, r1, #0
	adds r3, r5, #0
_022326F6:
	ldr r0, [r3]
	cmp r0, #0
	beq _02232700
	movs r1, #1
	b _02232708
_02232700:
	adds r2, r2, #1
	adds r3, #0x38
	cmp r2, #8
	blt _022326F6
_02232708:
	cmp r1, #0
	beq _02232726
	movs r0, #7
	lsls r0, r0, #6
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02232726
	bl ov97_022339D0
	cmp r0, #0
	bne _02232722
	bl ov97_02232200
_02232722:
	movs r0, #1
	pop {r4, r5, r6, pc}
_02232726:
	adds r0, r4, #0
	movs r1, #0xc0
	blx FUN_020C2C1C
	bl ov97_02233508
	bl ov97_02233808
	ldrh r0, [r6, #0x36]
	cmp r0, #8
	blo _022327B0
	bl ov97_02233554
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _022327B0
	adds r5, r4, #0
	adds r5, #0x50
	bl ov97_02233560
	ldr r1, [r4, #0x50]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, r0
	bne _022327B0
	bl ov97_02233570
	ldr r1, [r5]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1c
	cmp r1, r0
	bhi _022327B0
	bl ov97_02233580
	ldr r1, [r5, #4]
	lsrs r1, r1, #0x10
	cmp r1, r0
	bne _022327B0
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov97_02232620
	cmp r0, #0
	beq _022327A0
	bl ov97_02233508
	ldr r1, _022327B4 @ =0x000001C2
	ldrb r2, [r0, r1]
	adds r2, r2, #1
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0x1c
	bls _022327B0
	bl ov97_022339D0
	cmp r0, #0
	bne _022327B0
	bl ov97_02232200
	movs r0, #1
	pop {r4, r5, r6, pc}
_022327A0:
	bl ov97_022339D0
	cmp r0, #0
	bne _022327AC
	bl ov97_02232200
_022327AC:
	movs r0, #1
	pop {r4, r5, r6, pc}
_022327B0:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022327B4: .4byte 0x000001C2
	thumb_func_end ov97_022326D4

	thumb_func_start ov97_022327B8
ov97_022327B8: @ 0x022327B8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0223281E
	bl ov97_022334B4
	bl ov97_02233804
	movs r0, #6
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _02232826
	bl ov97_02233448
	cmp r0, #1
	bne _022327F8
	bl ov97_02233508
	ldr r2, _02232828 @ =0x000001C3
	movs r1, #0xf0
	ldrb r3, [r0, r2]
	bics r3, r1
	movs r1, #0x10
	orrs r1, r3
	strb r1, [r0, r2]
_022327F8:
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _0223280C
	cmp r0, #5
	bne _02232812
	adds r0, r4, #0
	bl ov97_022326D4
	cmp r0, #0
	bne _02232826
_0223280C:
	bl ov97_022326C0
	pop {r4, pc}
_02232812:
	ldrh r0, [r4, #2]
	bl ov97_022337FC
	bl ov97_02232200
	pop {r4, pc}
_0223281E:
	bl ov97_022337FC
	bl ov97_02232200
_02232826:
	pop {r4, pc}
	.align 2, 0
_02232828: .4byte 0x000001C3
	thumb_func_end ov97_022327B8

	thumb_func_start ov97_0223282C
ov97_0223282C: @ 0x0223282C
	push {r4, r5, r6, lr}
	sub sp, #8
	bl ov97_022334B4
	adds r4, r0, #0
	bl ov97_02233508
	adds r6, r0, #0
	bl ov97_02233408
	bl ov97_0223222C
	cmp r0, #0
	beq _0223284E
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223284E:
	adds r0, r4, #0
	movs r1, #0xc0
	blx FUN_020C2C1C
	bl ov97_02233508
	bl ov97_02233808
	ldrh r0, [r4, #0x3c]
	cmp r0, #8
	blo _022328C8
	bl ov97_02233554
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _022328C8
	adds r5, r4, #0
	adds r5, #0x50
	bl ov97_02233560
	ldr r1, [r4, #0x50]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, r0
	bne _022328C8
	bl ov97_02233570
	ldr r1, [r5]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1c
	cmp r1, r0
	bhi _022328C8
	bl ov97_02233580
	ldr r1, [r5, #4]
	lsrs r1, r1, #0x10
	cmp r1, r0
	bne _022328C8
	adds r0, r4, #4
	bl ov97_02232210
	ldr r1, _022328D0 @ =0x000001C3
	str r0, [sp]
	ldrb r1, [r6, r1]
	str r0, [sp, #4]
	lsls r1, r1, #0x1c
	lsrs r2, r1, #0x1c
	movs r1, #0x38
	muls r1, r2, r1
	ldr r1, [r6, r1]
	cmp r1, r0
	bne _022328C8
	bl ov97_022339D0
	cmp r0, #0
	bne _022328C2
	bl ov97_02232200
_022328C2:
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_022328C8:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022328D0: .4byte 0x000001C3
	thumb_func_end ov97_0223282C

	thumb_func_start ov97_022328D4
ov97_022328D4: @ 0x022328D4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232934
	bl ov97_02233508
	ldr r2, _02232940 @ =0x000001C3
	movs r1, #0xf0
	ldrb r3, [r0, r2]
	bics r3, r1
	movs r1, #0x20
	orrs r1, r3
	strb r1, [r0, r2]
	movs r0, #6
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _0223293C
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _02232916
	cmp r0, #5
	bne _02232928
	bl ov97_0223282C
	cmp r0, #0
	bne _0223293C
_02232916:
	bl ov97_02232360
	bl ov97_02233938
	cmp r0, #0
	bne _0223293C
	bl ov97_02232200
	pop {r4, pc}
_02232928:
	ldrh r0, [r4, #2]
	bl ov97_022337FC
	bl ov97_02232200
	pop {r4, pc}
_02232934:
	bl ov97_022337FC
	bl ov97_02232200
_0223293C:
	pop {r4, pc}
	nop
_02232940: .4byte 0x000001C3
	thumb_func_end ov97_022328D4

	thumb_func_start ov97_02232944
ov97_02232944: @ 0x02232944
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232988
	movs r0, #7
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _02232990
	bl ov97_02233448
	cmp r0, #1
	bne _02232990
	bl ov97_02233508
	ldr r1, _02232994 @ =0x000001C3
	ldrb r0, [r0, r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _02232990
	bl ov97_022339EC
	cmp r0, #0
	bne _02232980
	bl ov97_02232200
	pop {r3, pc}
_02232980:
	movs r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232988:
	bl ov97_022337FC
	bl ov97_02232200
_02232990:
	pop {r3, pc}
	nop
_02232994: .4byte 0x000001C3
	thumb_func_end ov97_02232944

	thumb_func_start ov97_02232998
ov97_02232998: @ 0x02232998
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232A1E
	movs r0, #9
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _02232A26
	ldrh r0, [r4, #8]
	cmp r0, #9
	bhi _02232A12
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022329C8: @ jump table
	.2byte _02232A12 - _022329C8 - 2 @ case 0
	.2byte _02232A12 - _022329C8 - 2 @ case 1
	.2byte _02232A12 - _022329C8 - 2 @ case 2
	.2byte _02232A12 - _022329C8 - 2 @ case 3
	.2byte _02232A12 - _022329C8 - 2 @ case 4
	.2byte _02232A12 - _022329C8 - 2 @ case 5
	.2byte _02232A26 - _022329C8 - 2 @ case 6
	.2byte _022329DC - _022329C8 - 2 @ case 7
	.2byte _02232A26 - _022329C8 - 2 @ case 8
	.2byte _022329FC - _022329C8 - 2 @ case 9
_022329DC:
	ldrh r0, [r4, #0xa]
	bl ov97_022334C0
	movs r0, #1
	bl ov97_022334D8
	movs r0, #0
	bl ov97_022334E4
	bl ov97_02233A24
	cmp r0, #0
	bne _02232A26
	bl ov97_02232200
	pop {r4, pc}
_022329FC:
	bl ov97_022334CC
	cmp r0, #0
	beq _02232A0A
	movs r0, #1
	bl ov97_022334E4
_02232A0A:
	movs r0, #0
	bl ov97_022334D8
	pop {r4, pc}
_02232A12:
	ldrh r0, [r4, #2]
	bl ov97_022337FC
	bl ov97_02232200
	pop {r4, pc}
_02232A1E:
	bl ov97_022337FC
	bl ov97_02232200
_02232A26:
	pop {r4, pc}
	thumb_func_end ov97_02232998

	thumb_func_start ov97_02232A28
ov97_02232A28: @ 0x02232A28
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _02232A62
	cmp r0, #2
	bne _02232A7A
	bl ov97_022322DC
	cmp r0, #0
	beq _02232A5C
	bl ov97_0223227C
	bl ov97_02233890
	cmp r0, #0
	beq _02232A5C
	bl ov97_02233510
	movs r1, #1
	adds r0, #0x60
	strb r1, [r0]
	movs r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232A5C:
	bl ov97_02232200
	pop {r3, pc}
_02232A62:
	bl ov97_02232334
	bl ov97_02233914
	cmp r0, #0
	bne _02232A74
	bl ov97_02232200
	pop {r3, pc}
_02232A74:
	movs r0, #3
	bl ov97_02233424
_02232A7A:
	pop {r3, pc}
	thumb_func_end ov97_02232A28

	thumb_func_start ov97_02232A7C
ov97_02232A7C: @ 0x02232A7C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232AB6
	ldrh r0, [r4]
	cmp r0, #0xe
	bne _02232A9A
	bl ov97_0223222C
	cmp r0, #0
	bne _02232AC6
_02232A9A:
	bl ov97_02233448
	cmp r0, #1
	beq _02232AAE
	cmp r0, #2
	bne _02232AC6
	movs r0, #0xa
	bl ov97_02233424
	pop {r4, pc}
_02232AAE:
	movs r0, #0xb
	bl ov97_02233424
	pop {r4, pc}
_02232AB6:
	cmp r0, #9
	beq _02232AC6
	cmp r0, #0xd
	beq _02232AC6
	cmp r0, #0xf
	beq _02232AC6
	bl ov97_02232200
_02232AC6:
	pop {r4, pc}
	thumb_func_end ov97_02232A7C

	thumb_func_start ov97_02232AC8
ov97_02232AC8: @ 0x02232AC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl ov97_02233538
	adds r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02232B3E
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	blx FUN_020C2C54
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	blx FUN_020C4DB0
	bl ov97_02233560
	ldr r1, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, r0
	bne _02232B3E
	bl ov97_02233570
	ldr r1, [r5]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1c
	cmp r1, r0
	bhi _02232B3E
	ldr r0, [r4, #0xc]
	bl ov97_022337A4
	ldr r0, [r5, #8]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrb r0, [r4, #0x1c]
	cmp r1, r0
	bne _02232B3E
	ldr r0, [r4, #0xc]
	bl ov97_02233810
	ldr r0, [r4, #0xc]
	bl ov97_022337D8
	cmp r0, #0
	beq _02232B3A
	ldr r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _02232B3A
	movs r0, #2
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, pc}
_02232B3A:
	movs r0, #0
	strb r0, [r4, #0x19]
_02232B3E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_02232AC8

	thumb_func_start ov97_02232B40
ov97_02232B40: @ 0x02232B40
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl ov97_02233538
	adds r4, r0, #0
	bl ov97_02233448
	cmp r0, #2
	bne _02232BC8
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	beq _02232BC8
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	blx FUN_020C2C54
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	blx FUN_020C4DB0
	bl ov97_02233560
	ldr r1, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, r0
	bne _02232BC8
	bl ov97_02233570
	ldr r1, [r5]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1c
	cmp r1, r0
	bhi _02232BC8
	ldr r0, [r4, #0xc]
	bl ov97_022337A4
	ldr r0, [r5, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfd
	bne _02232BC8
	bl ov97_02233510
	ldrh r5, [r6, #0x12]
	movs r2, #0
	adds r3, r0, #0
_02232BA2:
	ldrh r1, [r3, #6]
	cmp r5, r1
	bne _02232BC0
	movs r1, #0xc
	muls r1, r2, r1
	adds r1, r0, r1
	movs r2, #1
	strb r2, [r1, #8]
	movs r0, #3
	strb r0, [r1, #9]
	movs r0, #0xb4
	strb r0, [r4, #0x1a]
	movs r0, #0
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, pc}
_02232BC0:
	adds r2, r2, #1
	adds r3, #0xc
	cmp r2, #8
	blt _02232BA2
_02232BC8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov97_02232B40

	thumb_func_start ov97_02232BCC
ov97_02232BCC: @ 0x02232BCC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl ov97_02233538
	adds r4, r0, #0
	ldrb r0, [r4, #0x1c]
	cmp r0, #0xfd
	bne _02232BE4
	adds r0, r6, #0
	bl ov97_02232B40
	pop {r4, r5, r6, pc}
_02232BE4:
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	beq _02232BF0
	ldrb r0, [r4, #0x19]
	cmp r0, #3
	bne _02232C8C
_02232BF0:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	bne _02232C8C
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	blx FUN_020C2C54
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	blx FUN_020C4DB0
	bl ov97_02233560
	ldr r1, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, r0
	bne _02232C8C
	bl ov97_02233570
	ldr r1, [r5]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1c
	cmp r1, r0
	bhi _02232C8C
	ldr r0, [r4, #0xc]
	bl ov97_022337A4
	ldr r0, [r5, #8]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrb r0, [r4, #0x1c]
	cmp r1, r0
	bne _02232C8C
	ldr r0, [r4, #0xc]
	bl ov97_02233810
	movs r0, #0
	strb r0, [r4, #0x19]
	ldr r0, [r4, #0xc]
	bl ov97_022337D8
	cmp r0, #0
	beq _02232C7E
	ldr r0, [r5, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfd
	bne _02232C5E
	adds r0, r6, #0
	bl ov97_02232B40
	b _02232C70
_02232C5E:
	ldr r2, [r5, #0xc]
	ldr r1, [r4, #0xc]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	ldr r1, [r4, #4]
	lsrs r2, r2, #8
	blx FUN_020C4DB0
_02232C70:
	ldr r1, [r5, #8]
	ldr r0, _02232C90 @ =0xFFFF00FF
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #4
	strb r0, [r4, #0x1b]
	pop {r4, r5, r6, pc}
_02232C7E:
	ldr r1, [r5, #8]
	ldr r0, _02232C90 @ =0xFFFF00FF
	ands r1, r0
	movs r0, #1
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r5, #8]
_02232C8C:
	pop {r4, r5, r6, pc}
	nop
_02232C90: .4byte 0xFFFF00FF
	thumb_func_end ov97_02232BCC

	thumb_func_start ov97_02232C94
ov97_02232C94: @ 0x02232C94
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232D16
	ldrh r0, [r4, #4]
	cmp r0, #7
	beq _02232CDE
	cmp r0, #9
	beq _02232CEC
	cmp r0, #0x15
	bne _02232D16
	bl ov97_02233418
	cmp r0, #0xa
	beq _02232CBE
	cmp r0, #0xb
	bne _02232D16
_02232CBE:
	bl ov97_02233538
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	beq _02232CCE
	cmp r0, #2
	beq _02232CD6
	pop {r4, pc}
_02232CCE:
	adds r0, r4, #0
	bl ov97_02232AC8
	pop {r4, pc}
_02232CD6:
	adds r0, r4, #0
	bl ov97_02232BCC
	pop {r4, pc}
_02232CDE:
	movs r0, #1
	bl ov97_022334D8
	movs r0, #0
	bl ov97_022334E4
	pop {r4, pc}
_02232CEC:
	bl ov97_022334CC
	cmp r0, #0
	beq _02232CFA
	movs r0, #1
	bl ov97_022334E4
_02232CFA:
	bl ov97_02233418
	cmp r0, #0xa
	beq _02232D08
	cmp r0, #0xb
	beq _02232D10
	pop {r4, pc}
_02232D08:
	ldrh r0, [r4, #0x12]
	bl ov97_02232254
	pop {r4, pc}
_02232D10:
	movs r0, #0
	bl ov97_022334D8
_02232D16:
	pop {r4, pc}
	thumb_func_end ov97_02232C94

	thumb_func_start ov97_02232D18
ov97_02232D18: @ 0x02232D18
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232D2E
	bl ov97_0223222C
	cmp r0, #0
	bne _02232D38
	bl ov97_02232A28
	pop {r3, pc}
_02232D2E:
	bl ov97_022337FC
	movs r0, #4
	bl ov97_02233424
_02232D38:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02232D18

	thumb_func_start ov97_02232D3C
ov97_02232D3C: @ 0x02232D3C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232D54
	bl ov97_02233870
	cmp r0, #0
	beq _02232D5C
	movs r0, #2
	bl ov97_02233424
	pop {r3, pc}
_02232D54:
	bl ov97_022337FC
	bl ov97_02232200
_02232D5C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02232D3C

	thumb_func_start ov97_02232D60
ov97_02232D60: @ 0x02232D60
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232D96
	movs r0, #0
	bl ov97_022334C0
	bl ov97_02233430
	cmp r0, #0xc
	bne _02232D86
	bl ov97_02233AF8
	cmp r0, #0
	beq _02232DA0
	movs r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232D86:
	bl ov97_02233AB8
	cmp r0, #0
	beq _02232DA0
	movs r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232D96:
	bl ov97_022337FC
	movs r0, #4
	bl ov97_02233424
_02232DA0:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02232D60

	thumb_func_start ov97_02232DA4
ov97_02232DA4: @ 0x02232DA4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232DBA
	movs r0, #0xc
	bl ov97_02233424
	movs r0, #1
	bl ov97_022334F0
	pop {r3, pc}
_02232DBA:
	bl ov97_022337FC
	movs r0, #4
	bl ov97_02233424
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02232DA4

	thumb_func_start ov97_02232DC8
ov97_02232DC8: @ 0x02232DC8
	push {r3, lr}
	ldr r0, _02232DE4 @ =ov97_022323B0
	blx FUN_020CE478
	cmp r0, #0
	beq _02232DDE
	movs r0, #4
	bl ov97_02233424
	movs r0, #0
	pop {r3, pc}
_02232DDE:
	movs r0, #1
	pop {r3, pc}
	nop
_02232DE4: .4byte ov97_022323B0
	thumb_func_end ov97_02232DC8

	thumb_func_start ov97_02232DE8
ov97_02232DE8: @ 0x02232DE8
	push {r3, lr}
	bl ov97_02233418
	cmp r0, #0
	beq _02232DFA
	cmp r0, #1
	beq _02232DFA
	cmp r0, #2
	bne _02232DFE
_02232DFA:
	bl ov97_02233854
_02232DFE:
	pop {r3, pc}
	thumb_func_end ov97_02232DE8

	thumb_func_start ov97_02232E00
ov97_02232E00: @ 0x02232E00
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov97_02233408
	ldrh r0, [r0, #0x34]
	cmp r4, r0
	bhi _02232E24
	adds r0, r5, #0
	adds r1, r4, #0
	blx FUN_020C2C54
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov97_02233814
_02232E24:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov97_02232E00

	thumb_func_start ov97_02232E28
ov97_02232E28: @ 0x02232E28
	movs r0, #0x17
	lsls r0, r0, #6
	bx lr
	.align 2, 0
	thumb_func_end ov97_02232E28

	thumb_func_start ov97_02232E30
ov97_02232E30: @ 0x02232E30
	movs r0, #0x17
	lsls r0, r0, #6
	bx lr
	.align 2, 0
	thumb_func_end ov97_02232E30

	thumb_func_start ov97_02232E38
ov97_02232E38: @ 0x02232E38
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r0, #0
	bl ov97_02233408
	bl ov97_02233410
	adds r4, r0, #0
	movs r0, #0x1f
	adds r1, r7, #0
	ands r1, r0
	beq _02232E56
	movs r0, #0x20
	subs r0, r0, r1
	adds r7, r7, r0
_02232E56:
	movs r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	movs r0, #4
	strb r0, [r4, #3]
	ldr r0, _02232F5C @ =0x00400131
	str r0, [r4, #4]
	movs r0, #0xf
	strh r1, [r4, #0xc]
	lsls r0, r0, #8
	str r7, [r4, #0x34]
	adds r7, r7, r0
	str r7, [r4, #0x38]
	bl ov97_02232E28
	str r0, [r4, #0x2c]
	adds r7, r7, r0
	str r7, [r4, #0x3c]
	bl ov97_02232E30
	adds r7, r7, r0
	str r0, [r4, #0x30]
	adds r0, r7, #0
	str r7, [r4, #0x28]
	adds r0, #0xc0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x34]
	movs r1, #2
	adds r7, #0xe0
	blx FUN_020CDB18
	bl ov97_02232DC8
	str r0, [r4, #0x10]
	movs r2, #0
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x20]
	ldr r0, [r4, #0x40]
	movs r6, #0xff
	bics r0, r6
	adds r3, r0, #0
	movs r1, #0xf
	orrs r3, r1
	ldr r0, _02232F60 @ =0xFFFFF0FF
	adds r1, #0xf1
	ands r0, r3
	orrs r1, r0
	ldr r0, _02232F64 @ =0xFFFF0FFF
	ands r1, r0
	movs r0, #1
	lsls r0, r0, #0xc
	orrs r0, r1
	str r0, [r4, #0x40]
	ldr r3, [r5]
	ldr r1, [r4, #0x44]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r3, r3, #0x18
	adds r0, r4, #0
	bics r1, r6
	lsrs r3, r3, #0x18
	orrs r3, r1
	ldr r1, _02232F60 @ =0xFFFFF0FF
	str r3, [r4, #0x44]
	ands r1, r3
	ldr r3, [r5]
	adds r0, #0x44
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x1c
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x14
	orrs r3, r1
	ldr r1, _02232F64 @ =0xFFFF0FFF
	str r3, [r4, #0x44]
	ands r1, r3
	ldr r3, [r5]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x1c
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x10
	orrs r1, r3
	str r1, [r4, #0x44]
	ldr r1, [r0]
	ldr r3, [r5]
	lsls r1, r1, #0x10
	lsrs r3, r3, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	orrs r1, r3
	str r1, [r0]
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	adds r3, r4, #0
	b _02232F30
_02232F18:
	ldrh r6, [r0]
	adds r5, r3, #0
	adds r5, #0x48
	strh r6, [r5]
	adds r5, r3, #0
	ldrh r6, [r1]
	adds r5, #0x60
	adds r3, r3, #2
	strh r6, [r5]
	adds r2, r2, #1
	adds r0, r0, #2
	adds r1, r1, #2
_02232F30:
	cmp r0, #0
	beq _02232F38
	cmp r2, #0xc
	blo _02232F18
_02232F38:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	str r1, [r4, #0x78]
	str r0, [r4, #0x7c]
	bl ov97_02233548
	bl ov97_02233538
	str r7, [r0, #8]
	ldr r0, [r4, #0x2c]
	adds r7, r7, r0
	bl ov97_02233538
	str r7, [r0, #0xc]
	blx FUN_020CEB20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232F5C: .4byte 0x00400131
_02232F60: .4byte 0xFFFFF0FF
_02232F64: .4byte 0xFFFF0FFF
	thumb_func_end ov97_02232E38

	thumb_func_start ov97_02232F68
ov97_02232F68: @ 0x02232F68
	push {r3, r4, r5, lr}
	bl ov97_02233538
	adds r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02232F86
	ldrb r0, [r4, #0x1a]
	subs r0, r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _02232FBC
	movs r0, #0
	strb r0, [r4, #0x19]
_02232F86:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _02232FBC
	bl ov97_02233614
	movs r1, #0x40
	subs r5, r1, r0
	ldrb r0, [r4, #0x1c]
	adds r2, r5, #0
	movs r3, #3
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl ov97_02233674
	bl ov97_02233614
	adds r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, _02232FC0 @ =0x0000FFFF
	adds r1, r5, r1
	bl ov97_02232E00
	movs r0, #1
	strb r0, [r4, #0x19]
	movs r0, #0x3c
	strb r0, [r4, #0x1a]
_02232FBC:
	pop {r3, r4, r5, pc}
	nop
_02232FC0: .4byte 0x0000FFFF
	thumb_func_end ov97_02232F68

	thumb_func_start ov97_02232FC4
ov97_02232FC4: @ 0x02232FC4
	push {r3, r4, r5, r6, r7, lr}
	bl ov97_02233538
	adds r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0223307A
	ldrb r0, [r4, #0x1c]
	cmp r0, #0xfd
	bne _0223303C
	bl ov97_02233510
	adds r5, r0, #0
	movs r1, #0
	adds r2, r5, #0
_02232FE2:
	ldrb r0, [r2, #9]
	cmp r0, #0
	beq _02233022
	adds r6, r1, #0
	movs r0, #0xc
	muls r6, r0, r6
	adds r0, r5, r6
	ldrh r0, [r0, #6]
	movs r1, #1
	movs r2, #0
	lsls r1, r0
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0xfd
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	adds r3, r2, #0
	bl ov97_02233674
	bl ov97_02233614
	adds r1, r0, #0
	ldr r0, [r4, #8]
	adds r2, r7, #0
	bl ov97_02232E00
	adds r5, #9
	ldrb r0, [r5, r6]
	subs r0, r0, #1
	strb r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_02233022:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #8
	blt _02232FE2
	ldrb r0, [r4, #0x1a]
	subs r0, r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _0223307A
	movs r0, #2
	strb r0, [r4, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_0223303C:
	bl ov97_02233614
	bl ov97_02232E28
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	bne _0223305E
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	bne _0223305A
	movs r0, #2
	strb r0, [r4, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_0223305A:
	subs r0, r0, #1
	strb r0, [r4, #0x1b]
_0223305E:
	ldrb r0, [r4, #0x1c]
	movs r2, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl ov97_02233674
	bl ov97_02233614
	adds r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, _0223307C @ =0x0000FFFF
	bl ov97_02232E00
_0223307A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223307C: .4byte 0x0000FFFF
	thumb_func_end ov97_02232FC4

	thumb_func_start ov97_02233080
ov97_02233080: @ 0x02233080
	push {r3, lr}
	bl ov97_02233538
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	beq _02233092
	cmp r0, #2
	beq _02233098
	pop {r3, pc}
_02233092:
	bl ov97_02232F68
	pop {r3, pc}
_02233098:
	bl ov97_02232FC4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233080

	thumb_func_start ov97_022330A0
ov97_022330A0: @ 0x022330A0
	push {r4, lr}
	bl ov97_02233508
	adds r4, r0, #0
	bl ov97_02233418
	cmp r0, #6
	beq _022330B6
	cmp r0, #0xb
	beq _022330C6
	pop {r4, pc}
_022330B6:
	movs r0, #7
	lsls r0, r0, #6
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _022330CA
	subs r1, r1, #1
	strh r1, [r4, r0]
	pop {r4, pc}
_022330C6:
	bl ov97_02233080
_022330CA:
	pop {r4, pc}
	thumb_func_end ov97_022330A0

	thumb_func_start ov97_022330CC
ov97_022330CC: @ 0x022330CC
	push {r3, lr}
	bl ov97_02233418
	cmp r0, #0xa
	bne _022330DA
	bl ov97_02233080
_022330DA:
	pop {r3, pc}
	thumb_func_end ov97_022330CC

	thumb_func_start ov97_022330DC
ov97_022330DC: @ 0x022330DC
	push {r3, lr}
	bl ov97_02233418
	cmp r0, #0xc
	beq _0223311E
	bl ov97_02233430
	cmp r0, #0xc
	bne _022330FC
	bl ov97_02233418
	cmp r0, #7
	bne _0223311E
	bl ov97_02233AD8
	pop {r3, pc}
_022330FC:
	bl ov97_02233448
	cmp r0, #1
	beq _0223310A
	cmp r0, #2
	beq _02233110
	b _02233116
_0223310A:
	bl ov97_022330A0
	pop {r3, pc}
_02233110:
	bl ov97_022330CC
	pop {r3, pc}
_02233116:
	bl ov97_02233410
	bl ov97_02233418
_0223311E:
	pop {r3, pc}
	thumb_func_end ov97_022330DC

	thumb_func_start ov97_02233120
ov97_02233120: @ 0x02233120
	push {r3, lr}
	bl ov97_02233518
	movs r0, #1
	bl ov97_02233454
	bl ov97_02232DE8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233120

	thumb_func_start ov97_02233134
ov97_02233134: @ 0x02233134
	push {r4, lr}
	bl ov97_02233448
	movs r4, #0
	cmp r0, #1
	bne _02233162
	bl ov97_02233508
	ldr r1, _02233168 @ =0x000001C3
	ldrb r1, [r0, r1]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	cmp r1, #1
	bne _02233162
	adds r2, r4, #0
_02233152:
	ldr r1, [r0]
	cmp r1, #0
	beq _0223315A
	adds r4, r4, #1
_0223315A:
	adds r2, r2, #1
	adds r0, #0x38
	cmp r2, #8
	blo _02233152
_02233162:
	adds r0, r4, #0
	pop {r4, pc}
	nop
_02233168: .4byte 0x000001C3
	thumb_func_end ov97_02233134

	thumb_func_start ov97_0223316C
ov97_0223316C: @ 0x0223316C
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233448
	cmp r0, #1
	bne _0223319E
	bl ov97_02233418
	cmp r0, #7
	bne _0223319E
	bl ov97_02233508
	ldr r1, _022331A4 @ =0x000001C3
	ldrb r1, [r0, r1]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	cmp r1, #1
	bne _0223319E
	movs r1, #0x38
	muls r1, r4, r1
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0223319E
	movs r0, #1
	pop {r4, pc}
_0223319E:
	movs r0, #0
	pop {r4, pc}
	nop
_022331A4: .4byte 0x000001C3
	thumb_func_end ov97_0223316C

	thumb_func_start ov97_022331A8
ov97_022331A8: @ 0x022331A8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl ov97_02233448
	cmp r0, #1
	bne _022331F2
	bl ov97_02233418
	cmp r0, #7
	bne _022331F2
	bl ov97_02233508
	ldr r2, _022331F4 @ =0x000001C3
	ldrb r3, [r0, r2]
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x1c
	cmp r1, #1
	bne _022331F2
	movs r1, #0x38
	adds r5, r4, #0
	muls r5, r1, r5
	ldr r5, [r0, r5]
	cmp r5, #0
	beq _022331F2
	movs r5, #0xf
	lsls r4, r4, #0x18
	bics r3, r5
	lsrs r5, r4, #0x18
	movs r4, #0xf
	ands r4, r5
	orrs r3, r4
	strb r3, [r0, r2]
	movs r2, #0x78
	lsls r1, r1, #3
	strh r2, [r0, r1]
	bl ov97_02233938
_022331F2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022331F4: .4byte 0x000001C3
	thumb_func_end ov97_022331A8

	thumb_func_start ov97_022331F8
ov97_022331F8: @ 0x022331F8
	push {r4, lr}
	bl ov97_02233448
	movs r4, #0
	cmp r0, #2
	bne _0223322A
	bl ov97_02233510
	adds r1, r0, #0
	adds r1, #0x60
	ldrb r1, [r1]
	cmp r1, #2
	bne _0223322A
	adds r2, r4, #0
_02233214:
	ldr r1, [r0]
	cmp r1, #0
	beq _02233222
	ldrb r1, [r0, #0xa]
	cmp r1, #0
	beq _02233222
	adds r4, r4, #1
_02233222:
	adds r2, r2, #1
	adds r0, #0xc
	cmp r2, #8
	blo _02233214
_0223322A:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_022331F8

	thumb_func_start ov97_02233230
ov97_02233230: @ 0x02233230
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02233240
	movs r0, #0
	pop {r3, pc}
_02233240:
	blx FUN_020CE814
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233230

	thumb_func_start ov97_02233248
ov97_02233248: @ 0x02233248
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _02233258
	cmp r0, #2
	beq _0223325E
	b _02233264
_02233258:
	bl ov97_02233134
	pop {r3, pc}
_0223325E:
	bl ov97_022331F8
	pop {r3, pc}
_02233264:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov97_02233248

	thumb_func_start ov97_02233268
ov97_02233268: @ 0x02233268
	push {r3, r4, r5, lr}
	bl ov97_02233538
	adds r5, r0, #0
	bl ov97_02233590
	adds r4, r0, #0
	bl ov97_02233448
	cmp r0, #1
	bne _0223329A
	movs r0, #1
	strb r0, [r5, #0x18]
	movs r1, #0
	strb r1, [r5, #0x19]
	adds r4, #8
	str r4, [r5]
	str r4, [r5, #4]
	str r1, [r5, #0x10]
	str r1, [r5, #0x14]
	movs r0, #0x78
	strb r0, [r5, #0x1a]
	strb r1, [r5, #0x1b]
	movs r0, #0xfd
	strb r0, [r5, #0x1c]
_0223329A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02233268

	thumb_func_start ov97_0223329C
ov97_0223329C: @ 0x0223329C
	push {r4, lr}
	bl ov97_02233538
	adds r4, r0, #0
	bl ov97_02233590
	movs r1, #1
	strb r1, [r4, #0x18]
	movs r1, #0
	strb r1, [r4, #0x19]
	adds r0, #8
	str r0, [r4]
	str r0, [r4, #4]
	movs r0, #0x30
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	movs r0, #0x78
	strb r0, [r4, #0x1a]
	strb r1, [r4, #0x1b]
	movs r0, #0xfe
	strb r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov97_0223329C

	thumb_func_start ov97_022332C8
ov97_022332C8: @ 0x022332C8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl ov97_02233538
	cmp r4, #0xf0
	bgt _022332F2
	movs r1, #2
	strb r1, [r0, #0x18]
	movs r1, #3
	strb r1, [r0, #0x19]
	str r5, [r0]
	str r5, [r0, #4]
	str r6, [r0, #0x10]
	movs r2, #0
	str r2, [r0, #0x14]
	movs r1, #0x78
	strb r1, [r0, #0x1a]
	strb r2, [r0, #0x1b]
	strb r4, [r0, #0x1c]
_022332F2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_022332C8

	thumb_func_start ov97_022332F4
ov97_022332F4: @ 0x022332F4
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _02233302
	cmp r0, #2
	bne _0223331C
_02233302:
	bl ov97_02233418
	cmp r0, #0xa
	beq _0223330E
	cmp r0, #0xb
	bne _0223331C
_0223330E:
	bl ov97_02233538
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	bne _0223331C
	movs r0, #1
	pop {r3, pc}
_0223331C:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov97_022332F4

	thumb_func_start ov97_02233320
ov97_02233320: @ 0x02233320
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _0223332E
	cmp r0, #2
	bne _02233348
_0223332E:
	bl ov97_02233418
	cmp r0, #0xa
	beq _0223333A
	cmp r0, #0xb
	bne _02233348
_0223333A:
	bl ov97_02233538
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	bne _02233348
	movs r0, #1
	pop {r3, pc}
_02233348:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov97_02233320

	thumb_func_start ov97_0223334C
ov97_0223334C: @ 0x0223334C
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _0223335A
	cmp r0, #2
	bne _02233384
_0223335A:
	bl ov97_02233418
	cmp r0, #0xa
	beq _02233366
	cmp r0, #0xb
	bne _02233384
_02233366:
	bl ov97_02233538
	ldrb r1, [r0, #0x19]
	cmp r1, #0
	bne _02233384
	ldr r1, [r0, #0xc]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	bne _02233384
	ldrb r0, [r0, #0x1b]
	cmp r0, #4
	bhs _02233384
	movs r0, #1
	pop {r3, pc}
_02233384:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov97_0223334C

	thumb_func_start ov97_02233388
ov97_02233388: @ 0x02233388
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #2
	bne _022333B4
	bl ov97_02233510
	movs r2, #0
_02233398:
	ldr r1, [r0]
	cmp r1, #0
	beq _022333A8
	ldrb r1, [r0, #0xa]
	cmp r1, #0
	beq _022333A8
	movs r0, #1
	pop {r3, pc}
_022333A8:
	adds r2, r2, #1
	adds r0, #0xc
	cmp r2, #8
	blt _02233398
	movs r0, #0
	pop {r3, pc}
_022333B4:
	bl ov97_022334CC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233388

	thumb_func_start ov97_022333BC
ov97_022333BC: @ 0x022333BC
	push {r4, lr}
	movs r0, #0xc
	bl ov97_0223343C
	bl ov97_02233418
	cmp r0, #0
	beq _022333D6
	cmp r0, #1
	beq _022333D6
	cmp r0, #9
	beq _022333E2
	pop {r4, pc}
_022333D6:
	blx FUN_020CDD28
	movs r0, #1
	bl ov97_022334F0
	pop {r4, pc}
_022333E2:
	bl ov97_022334CC
	cmp r0, #0
	bne _022333F8
	bl ov97_02233410
	adds r4, r0, #0
	bl ov97_02233AD8
	movs r0, #1
	str r0, [r4, #0x1c]
_022333F8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_022333BC

	thumb_func_start ov97_022333FC
ov97_022333FC: @ 0x022333FC
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x20]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_022333FC

	thumb_func_start ov97_02233408
ov97_02233408: @ 0x02233408
	ldr r0, _0223340C @ =0x0223EA20
	bx lr
	.align 2, 0
_0223340C: .4byte 0x0223EA20
	thumb_func_end ov97_02233408

	thumb_func_start ov97_02233410
ov97_02233410: @ 0x02233410
	ldr r0, _02233414 @ =0x0223F1C0
	bx lr
	.align 2, 0
_02233414: .4byte 0x0223F1C0
	thumb_func_end ov97_02233410

	thumb_func_start ov97_02233418
ov97_02233418: @ 0x02233418
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233418

	thumb_func_start ov97_02233424
ov97_02233424: @ 0x02233424
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233410
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end ov97_02233424

	thumb_func_start ov97_02233430
ov97_02233430: @ 0x02233430
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0, #1]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233430

	thumb_func_start ov97_0223343C
ov97_0223343C: @ 0x0223343C
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233410
	strb r4, [r0, #1]
	pop {r4, pc}
	thumb_func_end ov97_0223343C

	thumb_func_start ov97_02233448
ov97_02233448: @ 0x02233448
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0, #2]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233448

	thumb_func_start ov97_02233454
ov97_02233454: @ 0x02233454
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233410
	strb r4, [r0, #2]
	pop {r4, pc}
	thumb_func_end ov97_02233454

	thumb_func_start ov97_02233460
ov97_02233460: @ 0x02233460
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0, #3]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233460

	thumb_func_start ov97_0223346C
ov97_0223346C: @ 0x0223346C
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233408
	strh r4, [r0, #0x32]
	pop {r4, pc}
	thumb_func_end ov97_0223346C

	thumb_func_start ov97_02233478
ov97_02233478: @ 0x02233478
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x24]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233478

	thumb_func_start ov97_02233484
ov97_02233484: @ 0x02233484
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x2c]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233484

	thumb_func_start ov97_02233490
ov97_02233490: @ 0x02233490
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x30]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233490

	thumb_func_start ov97_0223349C
ov97_0223349C: @ 0x0223349C
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x38]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_0223349C

	thumb_func_start ov97_022334A8
ov97_022334A8: @ 0x022334A8
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x3c]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_022334A8

	thumb_func_start ov97_022334B4
ov97_022334B4: @ 0x022334B4
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x28]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_022334B4

	thumb_func_start ov97_022334C0
ov97_022334C0: @ 0x022334C0
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233410
	strh r4, [r0, #0xc]
	pop {r4, pc}
	thumb_func_end ov97_022334C0

	thumb_func_start ov97_022334CC
ov97_022334CC: @ 0x022334CC
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_022334CC

	thumb_func_start ov97_022334D8
ov97_022334D8: @ 0x022334D8
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233410
	str r4, [r0, #0x14]
	pop {r4, pc}
	thumb_func_end ov97_022334D8

	thumb_func_start ov97_022334E4
ov97_022334E4: @ 0x022334E4
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233410
	str r4, [r0, #0x18]
	pop {r4, pc}
	thumb_func_end ov97_022334E4

	thumb_func_start ov97_022334F0
ov97_022334F0: @ 0x022334F0
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233410
	str r4, [r0, #0x20]
	pop {r4, pc}
	thumb_func_end ov97_022334F0

	thumb_func_start ov97_022334FC
ov97_022334FC: @ 0x022334FC
	push {r3, lr}
	bl ov97_02233410
	adds r0, #0x90
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_022334FC

	thumb_func_start ov97_02233508
ov97_02233508: @ 0x02233508
	ldr r3, _0223350C @ =ov97_022334FC
	bx r3
	.align 2, 0
_0223350C: .4byte ov97_022334FC
	thumb_func_end ov97_02233508

	thumb_func_start ov97_02233510
ov97_02233510: @ 0x02233510
	ldr r3, _02233514 @ =ov97_022334FC
	bx r3
	.align 2, 0
_02233514: .4byte ov97_022334FC
	thumb_func_end ov97_02233510

	thumb_func_start ov97_02233518
ov97_02233518: @ 0x02233518
	push {r4, lr}
	bl ov97_02233508
	movs r2, #0x71
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r1, #0x46
	lsls r1, r1, #2
	adds r0, r1, #0
	adds r0, #0xa8
	strh r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_02233518

	thumb_func_start ov97_02233538
ov97_02233538: @ 0x02233538
	push {r3, lr}
	bl ov97_02233410
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r0, r1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233538

	thumb_func_start ov97_02233548
ov97_02233548: @ 0x02233548
	push {r3, lr}
	bl ov97_02233538
	movs r1, #0
	strb r1, [r0, #0x18]
	pop {r3, pc}
	thumb_func_end ov97_02233548

	thumb_func_start ov97_02233554
ov97_02233554: @ 0x02233554
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #4]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233554

	thumb_func_start ov97_02233560
ov97_02233560: @ 0x02233560
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233560

	thumb_func_start ov97_02233570
ov97_02233570: @ 0x02233570
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x40]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233570

	thumb_func_start ov97_02233580
ov97_02233580: @ 0x02233580
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x44]
	lsrs r0, r0, #0x10
	pop {r3, pc}
	thumb_func_end ov97_02233580

	thumb_func_start ov97_0223358C
ov97_0223358C: @ 0x0223358C
	movs r0, #0x38
	bx lr
	thumb_func_end ov97_0223358C

	thumb_func_start ov97_02233590
ov97_02233590: @ 0x02233590
	push {r3, lr}
	bl ov97_02233410
	adds r0, #0x40
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02233590

	thumb_func_start ov97_0223359C
ov97_0223359C: @ 0x0223359C
	push {r3, lr}
	bl ov97_02233410
	adds r0, #0x78
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_0223359C

	thumb_func_start ov97_022335A8
ov97_022335A8: @ 0x022335A8
	push {r3}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	add r3, sp, #0
_022335B2:
	adds r1, r0, r2
	ldrb r1, [r1, #2]
	adds r2, r2, #1
	strb r1, [r3]
	adds r3, r3, #1
	cmp r2, #4
	blo _022335B2
	ldr r0, [sp]
	add sp, #4
	pop {r3}
	bx lr
	thumb_func_end ov97_022335A8

	thumb_func_start ov97_022335C8
ov97_022335C8: @ 0x022335C8
	push {r3}
	sub sp, #4
	movs r2, #0
	add r1, sp, #0
	strh r2, [r1]
	add r3, sp, #0
_022335D4:
	ldrb r1, [r0, r2]
	adds r2, r2, #1
	strb r1, [r3]
	adds r3, r3, #1
	cmp r2, #2
	blo _022335D4
	add r1, sp, #0
	movs r0, #0
	ldrsh r0, [r1, r0]
	add sp, #4
	pop {r3}
	bx lr
	thumb_func_end ov97_022335C8

	thumb_func_start ov97_022335EC
ov97_022335EC: @ 0x022335EC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _02233610 @ =0x00002710
	adds r6, r0, #0
	adds r4, r2, #0
	blx FUN_020E2178
	str r1, [r5]
	ldr r1, _02233610 @ =0x00002710
	adds r0, r6, #0
	blx FUN_020E2178
	ldr r1, _02233610 @ =0x00002710
	blx FUN_020E2178
	str r1, [r4]
	pop {r4, r5, r6, pc}
	nop
_02233610: .4byte 0x00002710
	thumb_func_end ov97_022335EC

	thumb_func_start ov97_02233614
ov97_02233614: @ 0x02233614
	movs r0, #0x10
	bx lr
	thumb_func_end ov97_02233614

	thumb_func_start ov97_02233618
ov97_02233618: @ 0x02233618
	push {r4, lr}
	ldr r0, _0223362C @ =0x04000006
	ldrh r4, [r0]
	blx FUN_020C3880
	adds r1, r0, r4
	movs r0, #1
	bics r1, r0
	adds r0, r1, #1
	pop {r4, pc}
	.align 2, 0
_0223362C: .4byte 0x04000006
	thumb_func_end ov97_02233618

	thumb_func_start ov97_02233630
ov97_02233630: @ 0x02233630
	push {r4, r5, r6, r7}
	adds r3, r0, #0
	movs r0, #0
	lsrs r1, r1, #2
	beq _02233666
	ldr r4, _0223366C @ =0x00269EC3
_0223363C:
	ldr r5, _02233670 @ =0x5D588B65
	ldr r6, _02233670 @ =0x5D588B65
	muls r5, r3, r5
	ldr r3, _0223366C @ =0x00269EC3
	adds r0, r0, #1
	adds r3, r5, r3
	lsrs r5, r3, #0x10
	muls r6, r3, r6
	adds r3, r6, r4
	lsls r5, r5, #0x10
	lsrs r7, r3, #0x10
	lsrs r5, r5, #0x10
	lsls r7, r7, #0x10
	ldr r6, [r2]
	lsls r5, r5, #0x10
	lsrs r7, r7, #0x10
	orrs r5, r7
	eors r5, r6
	stm r2!, {r5}
	cmp r0, r1
	blo _0223363C
_02233666:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0223366C: .4byte 0x00269EC3
_02233670: .4byte 0x5D588B65
	thumb_func_end ov97_02233630

	thumb_func_start ov97_02233674
ov97_02233674: @ 0x02233674
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	str r3, [sp]
	bl ov97_02233590
	adds r4, r0, #0
	ldr r0, [r5]
	movs r1, #0xff
	bics r0, r1
	ldr r1, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	orrs r1, r0
	ldr r0, _02233798 @ =0xFFFFF0FF
	str r1, [r5]
	ands r0, r1
	ldr r1, [r4]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1c
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x14
	orrs r1, r0
	ldr r0, _0223379C @ =0xFFFF0FFF
	str r1, [r5]
	ands r0, r1
	ldr r1, [r4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1c
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x10
	orrs r0, r1
	str r0, [r5]
	bl ov97_02233618
	ldr r1, [r5]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r2, [r4, #4]
	ldr r1, [r5, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xff
	lsls r2, r2, #0x18
	bics r1, r0
	lsrs r2, r2, #0x18
	orrs r2, r1
	ldr r1, _02233798 @ =0xFFFFF0FF
	str r2, [r5, #4]
	ands r1, r2
	ldr r2, [r4, #4]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x1c
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x14
	orrs r2, r1
	ldr r1, _0223379C @ =0xFFFF0FFF
	str r2, [r5, #4]
	ands r1, r2
	ldr r2, [r4, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x1c
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x10
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	bics r1, r0
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r1, r0
	ldr r0, _022337A0 @ =0xFFFF00FF
	ands r0, r1
	ldr r1, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_02000160
	ldr r1, [r5, #8]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #8]
	bl ov97_02233614
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x18
	ldr r1, [r5, #0xc]
	movs r2, #0xff
	bics r1, r2
	lsrs r0, r0, #0x18
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	lsls r0, r6, #8
	orrs r0, r1
	str r0, [r5, #0xc]
	cmp r6, #0
	beq _02233772
	ldr r1, [r5, #0xc]
	adds r0, r7, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, r5, r1
	adds r2, r6, #0
	blx FUN_020C4DB0
_02233772:
	adds r0, r5, #0
	bl ov97_02233810
	ldr r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _02233796
	ldr r1, [r5, #0xc]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, r6, r1
	lsrs r0, r0, #0x10
	subs r1, r1, #4
	adds r2, r5, #4
	bl ov97_02233630
_02233796:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233798: .4byte 0xFFFFF0FF
_0223379C: .4byte 0xFFFF0FFF
_022337A0: .4byte 0xFFFF00FF
	thumb_func_end ov97_02233674

	thumb_func_start ov97_022337A4
ov97_022337A4: @ 0x022337A4
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02233590
	ldr r0, [r4]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x1c
	cmp r1, #1
	bne _022337D4
	lsrs r0, r0, #0x10
	movs r1, #0xc
	adds r2, r4, #4
	bl ov97_02233630
	ldr r1, [r4, #0xc]
	adds r4, #0x10
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsrs r1, r1, #8
	adds r1, r2, r1
	subs r1, #0x10
	adds r2, r4, #0
	bl ov97_02233630
_022337D4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_022337A4

	thumb_func_start ov97_022337D8
ov97_022337D8: @ 0x022337D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0xc]
	movs r0, #0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	adds r1, r4, r1
	lsrs r2, r2, #8
	bl FUN_02000160
	ldr r1, [r4, #8]
	lsrs r1, r1, #0x10
	cmp r1, r0
	bne _022337F8
	movs r0, #1
	pop {r4, pc}
_022337F8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov97_022337D8

	thumb_func_start ov97_022337FC
ov97_022337FC: @ 0x022337FC
	bx lr
	.align 2, 0
	thumb_func_end ov97_022337FC

	thumb_func_start ov97_02233800
ov97_02233800: @ 0x02233800
	bx lr
	.align 2, 0
	thumb_func_end ov97_02233800

	thumb_func_start ov97_02233804
ov97_02233804: @ 0x02233804
	bx lr
	.align 2, 0
	thumb_func_end ov97_02233804

	thumb_func_start ov97_02233808
ov97_02233808: @ 0x02233808
	bx lr
	.align 2, 0
	thumb_func_end ov97_02233808

	thumb_func_start ov97_0223380C
ov97_0223380C: @ 0x0223380C
	bx lr
	.align 2, 0
	thumb_func_end ov97_0223380C

	thumb_func_start ov97_02233810
ov97_02233810: @ 0x02233810
	bx lr
	.align 2, 0
	thumb_func_end ov97_02233810

	thumb_func_start ov97_02233814
ov97_02233814: @ 0x02233814
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	bl ov97_02233460
	lsls r0, r0, #0x10
	lsls r3, r5, #0x10
	lsrs r0, r0, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	ldr r0, _02233850 @ =ov97_022323CC
	movs r1, #0
	adds r2, r6, #0
	lsrs r3, r3, #0x10
	blx FUN_020CF64C
	cmp r0, #2
	beq _0223384A
	bl ov97_022337FC
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0223384A:
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02233850: .4byte ov97_022323CC
	thumb_func_end ov97_02233814

	thumb_func_start ov97_02233854
ov97_02233854: @ 0x02233854
	push {r3, lr}
	ldr r0, _0223386C @ =ov97_022323E4
	blx FUN_020CEB94
	cmp r0, #2
	beq _02233868
	bl ov97_022337FC
	movs r0, #0
	pop {r3, pc}
_02233868:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_0223386C: .4byte ov97_022323E4
	thumb_func_end ov97_02233854

	thumb_func_start ov97_02233870
ov97_02233870: @ 0x02233870
	push {r3, lr}
	ldr r0, _0223388C @ =ov97_02232424
	blx FUN_020CEC08
	cmp r0, #2
	beq _02233888
	bl ov97_022337FC
	blx FUN_020C42A8
	movs r0, #0
	pop {r3, pc}
_02233888:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_0223388C: .4byte ov97_02232424
	thumb_func_end ov97_02233870

	thumb_func_start ov97_02233890
ov97_02233890: @ 0x02233890
	push {r3, lr}
	adds r3, r0, #0
	movs r0, #0x1e
	str r0, [sp]
	lsls r3, r3, #0x10
	ldr r0, _022338B8 @ =ov97_0223245C
	movs r1, #3
	movs r2, #0x11
	lsrs r3, r3, #0x10
	blx FUN_020D07C4
	cmp r0, #2
	beq _022338B2
	bl ov97_022337FC
	movs r0, #0
	pop {r3, pc}
_022338B2:
	movs r0, #1
	pop {r3, pc}
	nop
_022338B8: .4byte ov97_0223245C
	thumb_func_end ov97_02233890

	thumb_func_start ov97_022338BC
ov97_022338BC: @ 0x022338BC
	push {r3, r4, r5, lr}
	bl ov97_02233408
	adds r5, r0, #0
	bl ov97_02233590
	adds r4, r0, #0
	bl ov97_02233510
	adds r0, #0x64
	ldrb r0, [r0]
	strh r0, [r5, #0x32]
	str r4, [r5]
	bl ov97_0223358C
	strh r0, [r5, #4]
	ldr r0, _022338F4 @ =ov97_022324C4
	adds r1, r5, #0
	blx FUN_020CEDC8
	cmp r0, #2
	beq _022338F0
	bl ov97_022337FC
	movs r0, #0
	pop {r3, r4, r5, pc}
_022338F0:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022338F4: .4byte ov97_022324C4
	thumb_func_end ov97_022338BC

	thumb_func_start ov97_022338F8
ov97_022338F8: @ 0x022338F8
	push {r3, lr}
	ldr r0, _02233910 @ =ov97_022324EC
	blx FUN_020CEF50
	cmp r0, #2
	beq _0223390C
	bl ov97_022337FC
	movs r0, #0
	pop {r3, pc}
_0223390C:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02233910: .4byte ov97_022324EC
	thumb_func_end ov97_022338F8

	thumb_func_start ov97_02233914
ov97_02233914: @ 0x02233914
	push {r3, lr}
	bl ov97_02233478
	adds r1, r0, #0
	ldr r0, _02233934 @ =ov97_022327B8
	blx FUN_020CEFA0
	cmp r0, #2
	beq _0223392E
	bl ov97_022337FC
	movs r0, #0
	pop {r3, pc}
_0223392E:
	movs r0, #1
	pop {r3, pc}
	nop
_02233934: .4byte ov97_022327B8
	thumb_func_end ov97_02233914

	thumb_func_start ov97_02233938
ov97_02233938: @ 0x02233938
	push {r3, r4, r5, lr}
	bl ov97_02233478
	adds r4, r0, #0
	bl ov97_02233508
	ldr r2, _022339C8 @ =0x000001C3
	movs r3, #0x38
	ldrb r1, [r0, r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r5, r1, #0
	muls r5, r3, r5
	adds r1, r0, r5
	adds r1, #0x34
	ldrb r1, [r1]
	strb r1, [r4, #8]
	ldrb r1, [r0, r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r5, r1, #0
	muls r5, r3, r5
	adds r1, r0, r5
	adds r1, #0x35
	ldrb r1, [r1]
	strb r1, [r4, #9]
	ldrb r1, [r0, r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r5, r1, #0
	muls r5, r3, r5
	ldrb r1, [r0, r5]
	strb r1, [r4, #0xa]
	ldrb r1, [r0, r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r5, r1, #0
	muls r5, r3, r5
	adds r1, r0, r5
	ldrb r1, [r1, #1]
	strb r1, [r4, #0xb]
	ldrb r1, [r0, r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r5, r1, #0
	muls r5, r3, r5
	adds r1, r0, r5
	ldrb r1, [r1, #2]
	strb r1, [r4, #0xc]
	ldrb r1, [r0, r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r2, r1, #0
	muls r2, r3, r2
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	strb r0, [r4, #0xd]
	bl ov97_02233478
	adds r1, r0, #0
	ldr r0, _022339CC @ =ov97_022328D4
	blx FUN_020CEFA0
	cmp r0, #2
	beq _022339C2
	bl ov97_022337FC
	movs r0, #0
	pop {r3, r4, r5, pc}
_022339C2:
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_022339C8: .4byte 0x000001C3
_022339CC: .4byte ov97_022328D4
	thumb_func_end ov97_02233938

	thumb_func_start ov97_022339D0
ov97_022339D0: @ 0x022339D0
	push {r3, lr}
	ldr r0, _022339E8 @ =ov97_02232944
	blx FUN_020CF1DC
	cmp r0, #2
	beq _022339E4
	bl ov97_022337FC
	movs r0, #0
	pop {r3, pc}
_022339E4:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_022339E8: .4byte ov97_02232944
	thumb_func_end ov97_022339D0

	thumb_func_start ov97_022339EC
ov97_022339EC: @ 0x022339EC
	push {r3, r4, lr}
	sub sp, #4
	bl ov97_0223359C
	adds r4, r0, #0
	bl ov97_022334B4
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02233A20 @ =ov97_02232998
	adds r2, r4, #0
	movs r3, #1
	blx FUN_020CF21C
	cmp r0, #2
	beq _02233A18
	bl ov97_022337FC
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02233A18:
	movs r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_02233A20: .4byte ov97_02232998
	thumb_func_end ov97_022339EC

	thumb_func_start ov97_02233A24
ov97_02233A24: @ 0x02233A24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02233A94 @ =ov97_02232C94
	movs r0, #4
	movs r2, #0
	blx FUN_020CE4BC
	cmp r0, #0
	beq _02233A40
	bl ov97_022337FC
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02233A40:
	bl ov97_02233408
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	bne _02233A4E
	movs r5, #1
	b _02233A50
_02233A4E:
	movs r5, #0
_02233A50:
	bl ov97_022334A8
	adds r6, r0, #0
	bl ov97_02233490
	adds r4, r0, #0
	bl ov97_0223349C
	adds r7, r0, #0
	bl ov97_02233484
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r2, r4, #0x10
	ldr r0, _02233A98 @ =ov97_02232A7C
	adds r1, r6, #0
	lsrs r2, r2, #0x10
	adds r3, r7, #0
	blx FUN_020CF5E4
	cmp r0, #2
	beq _02233A8E
	bl ov97_022337FC
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02233A8E:
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233A94: .4byte ov97_02232C94
_02233A98: .4byte ov97_02232A7C
	thumb_func_end ov97_02233A24

	thumb_func_start ov97_02233A9C
ov97_02233A9C: @ 0x02233A9C
	push {r3, lr}
	ldr r0, _02233AB4 @ =ov97_02232D18
	blx FUN_020CEC48
	cmp r0, #2
	beq _02233AB0
	bl ov97_022337FC
	movs r0, #0
	pop {r3, pc}
_02233AB0:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02233AB4: .4byte ov97_02232D18
	thumb_func_end ov97_02233A9C

	thumb_func_start ov97_02233AB8
ov97_02233AB8: @ 0x02233AB8
	push {r3, lr}
	ldr r0, _02233AD4 @ =ov97_02232D3C
	blx FUN_020CEC88
	cmp r0, #2
	beq _02233AD0
	bl ov97_022337FC
	blx FUN_020C42A8
	movs r0, #0
	pop {r3, pc}
_02233AD0:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02233AD4: .4byte ov97_02232D3C
	thumb_func_end ov97_02233AB8

	thumb_func_start ov97_02233AD8
ov97_02233AD8: @ 0x02233AD8
	push {r3, lr}
	ldr r0, _02233AF4 @ =ov97_02232D60
	blx FUN_020CED50
	cmp r0, #2
	beq _02233AF0
	bl ov97_022337FC
	blx FUN_020C42A8
	movs r0, #0
	pop {r3, pc}
_02233AF0:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02233AF4: .4byte ov97_02232D60
	thumb_func_end ov97_02233AD8

	thumb_func_start ov97_02233AF8
ov97_02233AF8: @ 0x02233AF8
	push {r3, lr}
	ldr r0, _02233B14 @ =ov97_02232DA4
	blx FUN_020CED88
	cmp r0, #2
	beq _02233B10
	bl ov97_022337FC
	blx FUN_020C42A8
	movs r0, #0
	pop {r3, pc}
_02233B10:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02233B14: .4byte ov97_02232DA4
	thumb_func_end ov97_02233AF8

	thumb_func_start ov97_02233B18
ov97_02233B18: @ 0x02233B18
	cmp r0, #0
	bgt _02233B20
	movs r0, #1
	bx lr
_02233B20:
	cmp r0, #0xfb
	bgt _02233B28
	movs r0, #0
	bx lr
_02233B28:
	ldr r1, _02233B40 @ =0x00000115
	cmp r0, r1
	bge _02233B32
	movs r0, #1
	bx lr
_02233B32:
	adds r1, #0x86
	cmp r0, r1
	ble _02233B3C
	movs r0, #1
	bx lr
_02233B3C:
	movs r0, #0
	bx lr
	.align 2, 0
_02233B40: .4byte 0x00000115
	thumb_func_end ov97_02233B18

	thumb_func_start ov97_02233B44
ov97_02233B44: @ 0x02233B44
	push {r4, lr}
	adds r4, r0, #0
	bl ov97_02235DB0
	cmp r0, #4
	bhi _02233B84
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02233B5C: @ jump table
	.2byte _02233B66 - _02233B5C - 2 @ case 0
	.2byte _02233B6C - _02233B5C - 2 @ case 1
	.2byte _02233B72 - _02233B5C - 2 @ case 2
	.2byte _02233B78 - _02233B5C - 2 @ case 3
	.2byte _02233B7E - _02233B5C - 2 @ case 4
_02233B66:
	movs r0, #2
	str r0, [r4]
	pop {r4, pc}
_02233B6C:
	movs r0, #1
	str r0, [r4]
	pop {r4, pc}
_02233B72:
	movs r0, #5
	str r0, [r4]
	pop {r4, pc}
_02233B78:
	movs r0, #4
	str r0, [r4]
	pop {r4, pc}
_02233B7E:
	movs r0, #3
	str r0, [r4]
	pop {r4, pc}
_02233B84:
	movs r0, #0
	mvns r0, r0
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov97_02233B44

	thumb_func_start ov97_02233B8C
ov97_02233B8C: @ 0x02233B8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r1, _02233CE0 @ =0x0000E890
	adds r5, r0, #0
	adds r4, r5, r1
	ldr r1, [r4]
	cmp r1, #9
	bls _02233B9E
	b _02233CD8
_02233B9E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02233BAA: @ jump table
	.2byte _02233BBE - _02233BAA - 2 @ case 0
	.2byte _02233BDE - _02233BAA - 2 @ case 1
	.2byte _02233BF6 - _02233BAA - 2 @ case 2
	.2byte _02233C06 - _02233BAA - 2 @ case 3
	.2byte _02233C16 - _02233BAA - 2 @ case 4
	.2byte _02233C32 - _02233BAA - 2 @ case 5
	.2byte _02233C46 - _02233BAA - 2 @ case 6
	.2byte _02233C62 - _02233BAA - 2 @ case 7
	.2byte _02233C8E - _02233BAA - 2 @ case 8
	.2byte _02233CB4 - _02233BAA - 2 @ case 9
_02233BBE:
	bl ov97_02233D10
	ldr r0, [r5, #0x10]
	bl FUN_02024440
	adds r5, r0, #0
	bl ov97_0223635C
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_0202EFB8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02233CD8
_02233BDE:
	blx FUN_020C3880
	movs r2, #0x78
	movs r3, #0
	blx FUN_020E1EE0
	adds r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02233CD8
_02233BF6:
	ldr r0, [r4, #4]
	subs r0, r0, #1
	str r0, [r4, #4]
	bne _02233CD8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02233CD8
_02233C06:
	ldr r0, [r5, #0x10]
	movs r1, #2
	bl FUN_02024814
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02233CD8
_02233C16:
	ldr r0, [r5, #0x10]
	bl FUN_02024828
	cmp r0, #3
	bne _02233C26
	add sp, #0x10
	movs r0, #0xc
	pop {r3, r4, r5, pc}
_02233C26:
	cmp r0, #1
	bne _02233CD8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02233CD8
_02233C32:
	movs r0, #0
	adds r1, r0, #0
	add r2, sp, #0
	movs r3, #0x10
	blx FUN_020D1A6C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02233CD8
_02233C46:
	bl ov97_02236280
	cmp r0, #0
	bne _02233C5A
	movs r0, #1
	bl FUN_02017B8C
	add sp, #0x10
	movs r0, #0xc
	pop {r3, r4, r5, pc}
_02233C5A:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02233CD8
_02233C62:
	bl ov97_02236308
	cmp r0, #9
	beq _02233CD8
	bl ov97_02236308
	cmp r0, #0xb
	bne _02233C7A
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02233CD8
_02233C7A:
	bl ov97_022362C8
	cmp r0, #8
	bne _02233CD8
	movs r0, #1
	bl FUN_02017B8C
	add sp, #0x10
	movs r0, #0xc
	pop {r3, r4, r5, pc}
_02233C8E:
	ldr r0, [r5, #0x10]
	bl FUN_02024828
	cmp r0, #3
	bne _02233C9E
	add sp, #0x10
	movs r0, #0xc
	pop {r3, r4, r5, pc}
_02233C9E:
	cmp r0, #2
	bne _02233C8E
	bl ov97_022362C8
	movs r0, #1
	bl FUN_02017B7C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02233CD8
_02233CB4:
	bl ov97_022362C8
	cmp r0, #8
	bne _02233CC8
	movs r0, #1
	bl FUN_02017B8C
	add sp, #0x10
	movs r0, #0xc
	pop {r3, r4, r5, pc}
_02233CC8:
	cmp r0, #0
	bne _02233CD8
	movs r0, #1
	bl FUN_02017B8C
	add sp, #0x10
	movs r0, #0xb
	pop {r3, r4, r5, pc}
_02233CD8:
	movs r0, #0xa
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02233CE0: .4byte 0x0000E890
	thumb_func_end ov97_02233B8C

	thumb_func_start ov97_02233CE4
ov97_02233CE4: @ 0x02233CE4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	bl FUN_02024440
	adds r4, r0, #0
	bl ov97_0223635C
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_0202EFB8
	movs r0, #4
	bl FUN_02017DE0
	ldr r0, [r5, #0x10]
	bl FUN_020246E0
	movs r0, #4
	bl FUN_02017DF0
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02233CE4

	thumb_func_start ov97_02233D10
ov97_02233D10: @ 0x02233D10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xf4
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	bl FUN_02024440
	str r0, [sp]
	add r0, sp, #8
	bl FUN_02076B10
	adds r6, r0, #0
	movs r4, #0
	adds r5, r7, #0
_02233D2A:
	ldr r0, _02233DA8 @ =0x0000E880
	movs r1, #0x3d
	lsls r1, r1, #4
	ldr r0, [r7, r0]
	ldr r2, [r5, r1]
	movs r1, #0x96
	lsls r1, r1, #4
	adds r0, r0, #4
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #0xf3
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	movs r1, #0x50
	muls r1, r2, r1
	adds r0, r0, r1
	adds r1, r6, #0
	bl ov97_02236E90
	ldr r0, [sp]
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0202EFA4
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #6
	blt _02233D2A
	movs r5, #0
	add r0, sp, #4
	strh r5, [r0]
	adds r4, r7, #0
	subs r6, r5, #1
_02233D6C:
	movs r0, #0xf3
	lsls r0, r0, #2
	ldr r2, [r4, r0]
	adds r0, r0, #4
	ldr r1, [r4, r0]
	cmp r2, r6
	beq _02233D9A
	cmp r1, #0xe
	beq _02233D9A
	ldr r0, _02233DA8 @ =0x0000E880
	movs r3, #0x96
	ldr r0, [r7, r0]
	lsls r3, r3, #4
	muls r3, r1, r3
	adds r0, r0, #4
	movs r1, #0x50
	muls r1, r2, r1
	adds r0, r0, r3
	adds r0, r0, r1
	movs r1, #0xb
	add r2, sp, #4
	bl ov97_02236CA4
_02233D9A:
	adds r5, r5, #1
	adds r4, #0xc
	cmp r5, #6
	blt _02233D6C
	add sp, #0xf4
	pop {r4, r5, r6, r7, pc}
	nop
_02233DA8: .4byte 0x0000E880
	thumb_func_end ov97_02233D10

	thumb_func_start ov97_02233DAC
ov97_02233DAC: @ 0x02233DAC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	tst r2, r0
	beq _02233DCA
	movs r2, #0
	bl FUN_02002D7C
	ldr r1, [r4, #0x10]
	lsls r1, r1, #3
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	pop {r4, pc}
_02233DCA:
	ldr r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_02233DAC

	thumb_func_start ov97_02233DD0
ov97_02233DD0: @ 0x02233DD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r1, #0
	ldr r7, [r5, #0x44]
	adds r6, r0, #0
	adds r4, r2, #0
	cmp r7, #0
	bne _02233DE2
	movs r7, #0xff
_02233DE2:
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #0
	bne _02233E20
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #8]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r6, #0x20]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
_02233E20:
	movs r0, #2
	tst r0, r4
	bne _02233E32
	ldr r1, [r5, #0x30]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201ADA4
_02233E32:
	movs r0, #0
	ldr r1, [r5, #0x34]
	mvns r0, r0
	cmp r1, r0
	beq _02233EC2
	ldr r2, _02233F64 @ =0x000001C6
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x4e
	bl FUN_0200B144
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02233E5A
	movs r0, #0x4e
	bl FUN_0200B358
	str r0, [sp, #0x14]
_02233E5A:
	ldr r0, _02233F68 @ =0x00012608
	ldr r0, [r6, r0]
	bl FUN_020237E8
	ldr r0, _02233F68 @ =0x00012608
	ldr r1, [r5, #0x34]
	ldr r0, [r6, r0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	bl FUN_0200B1EC
	str r0, [sp, #0x20]
	ldr r1, _02233F68 @ =0x00012608
	ldr r0, [sp, #0x14]
	ldr r1, [r6, r1]
	ldr r2, [sp, #0x20]
	bl FUN_0200C388
	ldr r0, [sp, #0x20]
	bl FUN_020237BC
	ldr r1, [sp, #0x1c]
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov97_02233DAC
	adds r3, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [r5, #0x28]
	bl FUN_0201D78C
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _02233EB6
	ldr r0, [sp, #0x14]
	bl FUN_0200B3F0
_02233EB6:
	ldr r0, [sp, #0x18]
	bl FUN_0200B190
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x34]
_02233EC2:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	beq _02233EFE
	ldr r0, _02233F6C @ =0x0001260C
	movs r2, #0x40
	ldr r6, [r6, r0]
	adds r0, r6, #0
	bl FUN_02023D8C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov97_02233DAC
	adds r3, r0, #0
	ldr r0, [r5, #0x1c]
	adds r2, r6, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [r5, #0x28]
	bl FUN_0201D78C
	str r0, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x38]
_02233EFE:
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _02233F2C
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov97_02233DAC
	adds r3, r0, #0
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x3c]
	bl FUN_0201D78C
	str r0, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x3c]
_02233F2C:
	movs r0, #4
	tst r0, r4
	bne _02233F38
	ldr r0, [r5]
	bl FUN_0201A954
_02233F38:
	movs r0, #8
	tst r0, r4
	beq _02233F60
	movs r0, #0x10
	tst r0, r4
	ldr r0, [r5]
	beq _02233F54
	ldr r2, _02233F70 @ =0x000003D2
	movs r1, #0
	movs r3, #0xd
	bl FUN_0200E060
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02233F54:
	movs r2, #0x3f
	movs r1, #0
	lsls r2, r2, #4
	movs r3, #0xe
	bl FUN_0200DC48
_02233F60:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02233F64: .4byte 0x000001C6
_02233F68: .4byte 0x00012608
_02233F6C: .4byte 0x0001260C
_02233F70: .4byte 0x000003D2
	thumb_func_end ov97_02233DD0

	thumb_func_start ov97_02233F74
ov97_02233F74: @ 0x02233F74
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02233FA0 @ =0x0223D874
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201E86C
	movs r0, #0x14
	movs r1, #0x4e
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02233FA0: .4byte 0x0223D874
	thumb_func_end ov97_02233F74

	thumb_func_start ov97_02233FA4
ov97_02233FA4: @ 0x02233FA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x4e
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	adds r1, r6, #0
	movs r0, #0x50
	adds r1, #0x2c
	movs r2, #0x4e
	bl FUN_020095C4
	str r0, [r6, #0x28]
	adds r0, r6, #0
	movs r2, #1
	adds r0, #0x2c
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r7, #0x55
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_02233FEA:
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0x4e
	bl FUN_02009714
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _02233FEA
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x4e
	str r0, [sp, #8]
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #0x74
	movs r2, #0x1a
	bl FUN_0200985C
	movs r1, #0x5b
	lsls r1, r1, #2
	str r0, [r6, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x4e
	subs r1, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	movs r1, #0x74
	movs r2, #0x17
	bl FUN_020098B8
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r6, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4e
	subs r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	movs r1, #0x74
	movs r2, #0x19
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r6, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4e
	subs r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	movs r1, #0x74
	movs r2, #0x18
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r6, r1]
	subs r1, #0xc
	ldr r0, [r6, r1]
	bl FUN_0200A328
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_0200A5C8
	bl FUN_02079FD0
	adds r1, r0, #0
	movs r0, #0
	movs r2, #1
	str r0, [sp]
	movs r0, #0x4e
	adds r3, r2, #0
	str r0, [sp, #4]
	movs r0, #0x13
	adds r3, #0xff
	bl FUN_02006E84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov97_02233FA4

	thumb_func_start ov97_022340B0
ov97_022340B0: @ 0x022340B0
	push {lr}
	sub sp, #0x2c
	movs r1, #0
	str r1, [sp]
	subs r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	movs r3, #0x55
	str r1, [sp, #0x10]
	lsls r3, r3, #2
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r0, r2]
	adds r3, #0x30
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	adds r0, r0, r3
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x28]
	bl FUN_020093B4
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x2c
	pop {pc}
	thumb_func_end ov97_022340B0

	thumb_func_start ov97_022340FC
ov97_022340FC: @ 0x022340FC
	ldr r2, [r1, #0x28]
	str r2, [r0]
	movs r2, #0x61
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #4]
	movs r2, #0
	movs r1, #1
	str r2, [r0, #0x10]
	lsls r1, r1, #0xc
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	strh r2, [r0, #0x20]
	movs r1, #0x14
	str r1, [r0, #0x24]
	str r3, [r0, #0x28]
	movs r1, #0x4e
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end ov97_022340FC

	thumb_func_start ov97_02234124
ov97_02234124: @ 0x02234124
	ldr r3, _02234140 @ =0x0000E880
	ldr r0, [r0, r3]
	adds r3, r0, #4
	movs r0, #0x96
	lsls r0, r0, #4
	muls r0, r1, r0
	adds r1, r3, r0
	movs r0, #0x50
	muls r0, r2, r0
	adds r0, r1, r0
	ldr r3, _02234144 @ =ov97_02236924
	movs r1, #0xb
	movs r2, #0
	bx r3
	.align 2, 0
_02234140: .4byte 0x0000E880
_02234144: .4byte ov97_02236924
	thumb_func_end ov97_02234124

	thumb_func_start ov97_02234148
ov97_02234148: @ 0x02234148
	ldr r3, _02234164 @ =0x0000E880
	ldr r0, [r0, r3]
	adds r3, r0, #4
	movs r0, #0x96
	lsls r0, r0, #4
	muls r0, r1, r0
	adds r1, r3, r0
	movs r0, #0x50
	muls r0, r2, r0
	adds r0, r1, r0
	ldr r3, _02234168 @ =ov97_02236924
	movs r1, #0x2d
	movs r2, #0
	bx r3
	.align 2, 0
_02234164: .4byte 0x0000E880
_02234168: .4byte ov97_02236924
	thumb_func_end ov97_02234148

	thumb_func_start ov97_0223416C
ov97_0223416C: @ 0x0223416C
	ldr r3, _02234188 @ =0x0000E880
	ldr r0, [r0, r3]
	adds r3, r0, #4
	movs r0, #0x96
	lsls r0, r0, #4
	muls r0, r1, r0
	adds r1, r3, r0
	movs r0, #0x50
	muls r0, r2, r0
	adds r0, r1, r0
	movs r1, #0
	ldr r3, _0223418C @ =ov97_02236924
	adds r2, r1, #0
	bx r3
	.align 2, 0
_02234188: .4byte 0x0000E880
_0223418C: .4byte ov97_02236924
	thumb_func_end ov97_0223416C

	thumb_func_start ov97_02234190
ov97_02234190: @ 0x02234190
	push {r4, r5}
	ldr r5, [sp, #8]
	lsrs r4, r5, #0x1f
	adds r4, r5, r4
	asrs r4, r4, #1
	subs r5, r2, r4
	strb r5, [r0]
	lsrs r5, r3, #0x1f
	adds r5, r3, r5
	asrs r5, r5, #1
	subs r3, r1, r5
	strb r3, [r0, #2]
	adds r2, r2, r4
	strb r2, [r0, #1]
	adds r1, r1, r5
	strb r1, [r0, #3]
	pop {r4, r5}
	bx lr
	thumb_func_end ov97_02234190

	thumb_func_start ov97_022341B4
ov97_022341B4: @ 0x022341B4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #1
	adds r5, r0, #0
	adds r0, r3, #0
	lsls r1, r1, #0xc
	adds r7, r2, #0
	bl FUN_02018184
	adds r4, r0, #0
	beq _022341E8
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_02006AA4
	adds r0, r4, #0
	adds r1, r7, #0
	blx FUN_020A7164
	cmp r0, #0
	bne _022341E8
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022341E8:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_022341B4

	thumb_func_start ov97_022341EC
ov97_022341EC: @ 0x022341EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r6, #0
	bl FUN_02006D28
	adds r0, r4, #0
	adds r1, r5, #0
	blx FUN_020A7164
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov97_022341EC

	thumb_func_start ov97_02234208
ov97_02234208: @ 0x02234208
	push {r4, lr}
	adds r3, r1, #0
	movs r4, #0
	cmp r0, #0xc9
	beq _0223421A
	ldr r1, _02234274 @ =0x00000182
	cmp r0, r1
	beq _02234244
	b _0223426E
_0223421A:
	movs r4, #3
	lsls r0, r4, #8
	adds r2, r3, #0
	ands r0, r3
	lsrs r1, r0, #6
	lsls r0, r4, #0x18
	ands r2, r4
	ands r0, r3
	lsls r4, r4, #0x10
	ands r3, r4
	lsrs r0, r0, #0x12
	lsrs r3, r3, #0xc
	orrs r0, r3
	orrs r0, r1
	orrs r0, r2
	movs r1, #0x1c
	blx FUN_020E2178
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	b _0223426E
_02234244:
	cmp r2, #5
	bhi _02234260
	adds r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02234254: @ jump table
	.2byte _02234260 - _02234254 - 2 @ case 0
	.2byte _02234260 - _02234254 - 2 @ case 1
	.2byte _02234260 - _02234254 - 2 @ case 2
	.2byte _0223426C - _02234254 - 2 @ case 3
	.2byte _02234264 - _02234254 - 2 @ case 4
	.2byte _02234268 - _02234254 - 2 @ case 5
_02234260:
	movs r4, #0
	b _0223426E
_02234264:
	movs r4, #1
	b _0223426E
_02234268:
	movs r4, #2
	b _0223426E
_0223426C:
	movs r4, #3
_0223426E:
	adds r0, r4, #0
	pop {r4, pc}
	nop
_02234274: .4byte 0x00000182
	thumb_func_end ov97_02234208

	thumb_func_start ov97_02234278
ov97_02234278: @ 0x02234278
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r7, r3, #0
	adds r5, r1, #0
	bl ov97_02236DD0
	adds r1, r6, #0
	adds r2, r7, #0
	adds r4, r0, #0
	bl ov97_02234208
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl FUN_02079D8C
	adds r1, r0, #0
	movs r0, #0x13
	add r2, sp, #0
	movs r3, #0x4e
	bl ov97_022341B4
	adds r6, r0, #0
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0, #0x14]
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	lsls r1, r1, #4
	adds r1, #0x64
	movs r2, #2
	ldr r0, [r0, #0x14]
	lsls r1, r1, #5
	lsls r2, r2, #8
	blx FUN_020C02BC
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, #8
	bl FUN_02021E90
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02234278

	thumb_func_start ov97_022342E4
ov97_022342E4: @ 0x022342E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	ldr r1, _02234360 @ =0x0223F434
	str r2, [sp]
	ldr r2, [r1]
	movs r1, #0x83
	adds r5, r3, #0
	lsls r1, r1, #2
	muls r1, r5, r1
	adds r4, r2, r1
	ldr r1, [sp, #0x20]
	adds r6, r0, #0
	cmp r1, #0
	beq _02234358
	bl ov97_02233B18
	cmp r0, #0
	bne _02234314
	adds r0, r6, #0
	bl ov97_02236DD0
	adds r6, r0, #0
	b _02234316
_02234314:
	movs r6, #0
_02234316:
	ldr r2, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02079D8C
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r1, sp, #4
	bl ov97_022341EC
	ldr r0, [sp, #4]
	adds r1, r4, #0
	movs r2, #2
	ldr r0, [r0, #0x14]
	adds r1, #0xc
	lsls r2, r2, #8
	blx FUN_020C4C14
	lsls r0, r5, #4
	adds r0, #0x64
	lsls r0, r0, #5
	str r0, [r4]
	ldr r0, [sp, #0x20]
	ldr r1, [sp]
	str r0, [r4, #8]
	adds r0, r6, #0
	adds r2, r7, #0
	bl FUN_02079EDC
	adds r0, #8
	add sp, #8
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02234358:
	movs r0, #0
	str r0, [r4, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02234360: .4byte 0x0223F434
	thumb_func_end ov97_022342E4

	thumb_func_start ov97_02234364
ov97_02234364: @ 0x02234364
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022343A4 @ =0x0223F434
	movs r6, #2
	lsls r6, r6, #8
	adds r7, r6, #0
	ldr r5, [r0]
	movs r4, #0
	adds r7, #0xc
_02234374:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02234398
	adds r0, r5, #0
	adds r0, #0xc
	adds r1, r6, #0
	blx FUN_020C2C54
	adds r0, r5, #0
	ldr r1, [r5]
	adds r0, #0xc
	adds r2, r6, #0
	blx FUN_020C02BC
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	bl FUN_02021E90
_02234398:
	adds r4, r4, #1
	adds r5, r5, r7
	cmp r4, #0x1e
	blt _02234374
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022343A4: .4byte 0x0223F434
	thumb_func_end ov97_02234364

	thumb_func_start ov97_022343A8
ov97_022343A8: @ 0x022343A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r0, #0
	movs r0, #0x13
	movs r1, #0x4e
	bl FUN_02006C24
	movs r1, #1
	str r0, [sp, #0x10]
	movs r0, #0x4e
	lsls r1, r1, #0xc
	bl FUN_02018184
	movs r7, #0
	str r0, [sp, #0x14]
	str r7, [sp, #0xc]
	adds r5, r6, #0
_022343CA:
	ldr r0, _022344F4 @ =0x0000E880
	ldr r1, _022344F8 @ =0x0000E884
	ldr r0, [r6, r0]
	ldr r2, [r6, r1]
	movs r1, #0x96
	lsls r1, r1, #4
	muls r1, r2, r1
	adds r0, r0, #4
	adds r1, r0, r1
	ldr r0, [sp, #0xc]
	movs r2, #0
	adds r0, r1, r0
	movs r1, #5
	bl ov97_02236924
	cmp r0, #0
	beq _0223448E
	ldr r1, _022344F8 @ =0x0000E884
	adds r0, r6, #0
	ldr r1, [r6, r1]
	adds r2, r7, #0
	bl ov97_02234124
	ldr r1, _022344F8 @ =0x0000E884
	str r0, [sp, #0x1c]
	ldr r1, [r6, r1]
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov97_02234148
	ldr r1, _022344F8 @ =0x0000E884
	str r0, [sp, #0x18]
	ldr r1, [r6, r1]
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov97_0223416C
	adds r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov97_02236DD0
	ldr r2, _022344FC @ =0x021BF6DC
	adds r1, r4, #0
	ldrb r2, [r2, #6]
	bl ov97_02234208
	adds r4, r0, #0
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	bl ov97_022342E4
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, _022344F4 @ =0x0000E880
	ldr r1, _022344F8 @ =0x0000E884
	ldr r0, [r6, r0]
	ldr r2, [r6, r1]
	movs r1, #0x96
	lsls r1, r1, #4
	muls r1, r2, r1
	adds r0, r0, #4
	adds r1, r0, r1
	ldr r0, [sp, #0xc]
	movs r2, #0
	adds r0, r1, r0
	movs r1, #0xc
	bl ov97_02236924
	cmp r0, #0
	beq _02234480
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	b _022344BE
_02234480:
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	b _022344BE
_0223448E:
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	adds r3, r7, #0
	bl ov97_022342E4
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
_022344BE:
	ldr r0, [sp, #0xc]
	adds r7, r7, #1
	adds r0, #0x50
	adds r5, #0xc
	str r0, [sp, #0xc]
	cmp r7, #0x1e
	bge _022344CE
	b _022343CA
_022344CE:
	ldr r0, [sp, #0x14]
	bl FUN_020181C4
	ldr r0, [sp, #0x10]
	bl FUN_02006CA8
	ldr r1, _02234500 @ =ov97_02234364
	ldr r0, _02234504 @ =0x00012604
	str r1, [r6, r0]
	ldr r1, _022344F8 @ =0x0000E884
	adds r0, r6, #0
	ldr r1, [r6, r1]
	bl ov97_02234A2C
	adds r0, r6, #0
	bl ov97_022349E0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022344F4: .4byte 0x0000E880
_022344F8: .4byte 0x0000E884
_022344FC: .4byte 0x021BF6DC
_02234500: .4byte ov97_02234364
_02234504: .4byte 0x00012604
	thumb_func_end ov97_022343A8

	thumb_func_start ov97_02234508
ov97_02234508: @ 0x02234508
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	movs r2, #0x61
	adds r5, r0, #0
	lsls r2, r2, #2
	add r0, sp, #0x14
	adds r1, r5, #0
	adds r2, r5, r2
	movs r3, #1
	bl ov97_022340FC
	movs r0, #0x28
	str r0, [sp, #8]
	movs r0, #0x31
	movs r4, #0
	lsls r0, r0, #4
	str r4, [sp, #0xc]
	adds r7, r5, r0
_0223452C:
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	movs r6, #0x1c
	lsls r0, r0, #0xc
	str r0, [sp, #4]
_02234538:
	movs r0, #0x1c
	str r0, [sp]
	ldr r2, [sp, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #0x1c
	bl ov97_02234190
	lsls r0, r6, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	str r0, [sp, #0x20]
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02234566
	add r0, sp, #0x14
	bl FUN_02021AA0
	movs r1, #0x6a
	lsls r1, r1, #2
	str r0, [r5, r1]
_02234566:
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x6a
	lsls r0, r0, #2
	adds r1, r4, #0
	ldr r0, [r5, r0]
	adds r1, #0xa
	bl FUN_02021D6C
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021E80
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0x6a
	lsls r0, r0, #2
	adds r1, r4, #0
	ldr r0, [r5, r0]
	adds r1, #0x64
	bl FUN_02021F58
	movs r0, #6
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	movs r0, #3
	ldr r1, [sp, #0x20]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x20]
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022345D0
	add r0, sp, #0x14
	bl FUN_02021AA0
	movs r1, #0x6b
	lsls r1, r1, #2
	str r0, [r5, r1]
_022345D0:
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x28
	bl FUN_02021D6C
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021E80
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02021F58
	adds r4, r4, #1
	adds r7, r7, #4
	adds r5, #0xc
	cmp r4, #0x1e
	beq _02234634
	ldr r0, [sp, #0x10]
	adds r6, #0x28
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #6
	blt _02234538
	ldr r0, [sp, #8]
	adds r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #5
	bge _02234634
	b _0223452C
_02234634:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov97_02234508

	thumb_func_start ov97_02234638
ov97_02234638: @ 0x02234638
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r2, #0
	movs r2, #0x61
	adds r6, r0, #0
	lsls r2, r2, #2
	adds r5, r1, #0
	adds r7, r3, #0
	add r0, sp, #0
	adds r1, r6, #0
	adds r2, r6, r2
	movs r3, #1
	bl ov97_022340FC
	lsls r0, r5, #0xc
	str r0, [sp, #8]
	lsls r0, r4, #0xc
	str r0, [sp, #0xc]
	movs r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl FUN_02021AA0
	adds r4, r0, #0
	movs r1, #1
	bl FUN_02021CC8
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02021D6C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02021E80
	ldr r1, [sp, #0x48]
	adds r0, r4, #0
	bl FUN_02021CAC
	adds r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02234638

	thumb_func_start ov97_0223468C
ov97_0223468C: @ 0x0223468C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r6, r0
	movs r1, #0xe4
	movs r2, #0xb0
	movs r3, #0x32
	bl ov97_02234190
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe4
	movs r2, #0xb0
	movs r3, #6
	bl ov97_02234638
	movs r1, #0xe6
	lsls r1, r1, #2
	str r0, [r6, r1]
	subs r1, #8
	adds r0, r6, r1
	movs r1, #0xb0
	movs r3, #0x20
	adds r2, r1, #0
	str r3, [sp]
	bl ov97_02234190
	movs r0, #1
	movs r1, #0xb0
	str r0, [sp]
	adds r0, r6, #0
	adds r2, r1, #0
	movs r3, #3
	bl ov97_02234638
	movs r1, #0xea
	lsls r1, r1, #2
	str r0, [r6, r1]
	subs r1, #0x1c
	movs r3, #0x20
	adds r0, r6, r1
	movs r1, #0x18
	movs r2, #0xb0
	str r3, [sp]
	bl ov97_02234190
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x18
	movs r2, #0xb0
	movs r3, #0
	bl ov97_02234638
	movs r1, #0xee
	lsls r1, r1, #2
	str r0, [r6, r1]
	movs r7, #0
	movs r0, #0xff
	subs r1, #0x24
	strb r0, [r6, r1]
	adds r4, r7, #0
	adds r5, r6, #0
_02234712:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #9
	bl ov97_02234638
	movs r1, #0xf2
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r1, #0
	movs r0, #0xf3
	mvns r1, r1
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0xe
	adds r0, r0, #4
	str r1, [r5, r0]
	adds r7, r7, #1
	adds r4, #0x24
	adds r5, #0xc
	cmp r7, #6
	blt _02234712
	movs r0, #0x41
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0223468C

	thumb_func_start ov97_0223474C
ov97_0223474C: @ 0x0223474C
	push {r3, lr}
	ldr r3, _02234780 @ =0x0000E880
	ldr r2, [r0, r3]
	adds r3, r3, #4
	ldr r3, [r0, r3]
	movs r0, #0x96
	lsls r0, r0, #4
	adds r2, r2, #4
	muls r0, r3, r0
	adds r2, r2, r0
	movs r0, #0x50
	muls r0, r1, r0
	adds r0, r2, r0
	movs r1, #0x41
	movs r2, #0
	bl ov97_02236924
	movs r1, #0x67
	lsls r1, r1, #2
	cmp r0, r1
	bne _0223477A
	movs r0, #1
	pop {r3, pc}
_0223477A:
	movs r0, #0
	pop {r3, pc}
	nop
_02234780: .4byte 0x0000E880
	thumb_func_end ov97_0223474C

	thumb_func_start ov97_02234784
ov97_02234784: @ 0x02234784
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _022347D0 @ =0x0000E880
	movs r5, #0
	ldr r2, [r0, r3]
	adds r3, r3, #4
	ldr r3, [r0, r3]
	movs r0, #0x96
	lsls r0, r0, #4
	adds r2, r2, #4
	muls r0, r3, r0
	adds r4, r2, r0
	movs r0, #0x50
	adds r6, r1, #0
	muls r6, r0, r6
	adds r7, r5, #0
_022347A2:
	adds r1, r5, #0
	adds r0, r4, r6
	adds r1, #0xd
	adds r2, r7, #0
	bl ov97_02236924
	ldr r3, _022347D4 @ =0x0223EA98
	adds r2, r0, #0
	movs r1, #0
_022347B4:
	ldr r0, [r3]
	cmp r2, r0
	bne _022347BE
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022347BE:
	adds r1, r1, #1
	adds r3, r3, #4
	cmp r1, #8
	blo _022347B4
	adds r5, r5, #1
	cmp r5, #4
	blt _022347A2
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022347D0: .4byte 0x0000E880
_022347D4: .4byte 0x0223EA98
	thumb_func_end ov97_02234784

	thumb_func_start ov97_022347D8
ov97_022347D8: @ 0x022347D8
	push {r3, lr}
	ldr r3, _0223481C @ =0x0000E880
	ldr r2, [r0, r3]
	adds r3, r3, #4
	ldr r3, [r0, r3]
	movs r0, #0x96
	lsls r0, r0, #4
	adds r2, r2, #4
	muls r0, r3, r0
	adds r2, r2, r0
	movs r0, #0x50
	muls r0, r1, r0
	adds r0, r2, r0
	movs r1, #0xc
	movs r2, #0
	bl ov97_02236924
	ldr r1, _02234820 @ =0x0223EAA8
	ldrh r1, [r1, #0x30]
	cmp r1, #0
	beq _02234816
	ldr r2, _02234824 @ =0x0223EAD8
_02234804:
	ldrh r1, [r2]
	cmp r0, r1
	bne _0223480E
	movs r0, #1
	pop {r3, pc}
_0223480E:
	adds r2, r2, #2
	ldrh r1, [r2]
	cmp r1, #0
	bne _02234804
_02234816:
	movs r0, #0
	pop {r3, pc}
	nop
_0223481C: .4byte 0x0000E880
_02234820: .4byte 0x0223EAA8
_02234824: .4byte 0x0223EAD8
	thumb_func_end ov97_022347D8

	thumb_func_start ov97_02234828
ov97_02234828: @ 0x02234828
	push {r3, lr}
	ldr r3, _02234850 @ =0x0000E880
	ldr r2, [r0, r3]
	adds r3, r3, #4
	ldr r3, [r0, r3]
	movs r0, #0x96
	lsls r0, r0, #4
	adds r2, r2, #4
	muls r0, r3, r0
	adds r2, r2, r0
	movs r0, #0x50
	muls r0, r1, r0
	adds r0, r2, r0
	movs r1, #0xb
	movs r2, #0
	bl ov97_02236924
	bl ov97_02233B18
	pop {r3, pc}
	.align 2, 0
_02234850: .4byte 0x0000E880
	thumb_func_end ov97_02234828

	thumb_func_start ov97_02234854
ov97_02234854: @ 0x02234854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0x6a
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [sp]
	adds r6, r1, #0
	movs r0, #0xc
	muls r0, r6, r0
	ldr r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02234880
	bl FUN_02021D34
	cmp r0, #0
	bne _02234880
	add sp, #0x14
	movs r0, #3
	pop {r4, r5, r6, r7, pc}
_02234880:
	movs r5, #0
	movs r7, #0x3d
	mvns r5, r5
	movs r2, #0
	adds r3, r4, #0
	lsls r7, r7, #4
	b _022348A8
_0223488E:
	ldr r0, _022349DC @ =0x0000E884
	ldr r1, [r4, r0]
	ldr r0, [r3, r7]
	cmp r1, r0
	bne _022348A4
	movs r0, #0xf3
	lsls r0, r0, #2
	ldr r0, [r3, r0]
	cmp r6, r0
	bne _022348A4
	adds r5, r2, #0
_022348A4:
	adds r3, #0xc
	adds r2, r2, #1
_022348A8:
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	bne _022348B4
	cmp r2, #6
	blt _0223488E
_022348B4:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov97_0223474C
	cmp r0, #1
	bne _022348C6
	add sp, #0x14
	movs r0, #4
	pop {r4, r5, r6, r7, pc}
_022348C6:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov97_02234784
	cmp r0, #1
	bne _022348D8
	add sp, #0x14
	movs r0, #5
	pop {r4, r5, r6, r7, pc}
_022348D8:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov97_022347D8
	cmp r0, #1
	bne _022348EA
	add sp, #0x14
	movs r0, #6
	pop {r4, r5, r6, r7, pc}
_022348EA:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov97_02234828
	cmp r0, #1
	bne _022348FC
	add sp, #0x14
	movs r0, #7
	pop {r4, r5, r6, r7, pc}
_022348FC:
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	bne _022349A4
	movs r0, #0x41
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _02234914
	add sp, #0x14
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_02234914:
	movs r5, #0
	movs r0, #0xf3
	adds r3, r4, #0
	lsls r0, r0, #2
	subs r1, r5, #1
_0223491E:
	ldr r2, [r3, r0]
	cmp r2, r1
	bne _0223499A
	ldr r1, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r1, r0]
	bl FUN_02021D28
	adds r1, r0, #0
	movs r0, #0xc
	adds r7, r5, #0
	muls r7, r0, r7
	movs r0, #0xf2
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, [r5, r7]
	bl FUN_02021C50
	ldr r0, [r5, r7]
	bl FUN_02021D28
	adds r3, r0, #0
	add r2, sp, #8
	ldm r3!, {r0, r1}
	mov ip, r2
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r1, #2
	str r0, [r2]
	ldr r0, [sp, #8]
	lsls r1, r1, #0xe
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsrs r1, r1, #1
	subs r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r5, r7]
	mov r1, ip
	bl FUN_02021C50
	ldr r0, [r5, r7]
	movs r1, #1
	bl FUN_02021CAC
	movs r1, #0xf3
	adds r3, r4, r7
	lsls r1, r1, #2
	ldr r0, _022349DC @ =0x0000E884
	str r6, [r3, r1]
	ldr r2, [r4, r0]
	adds r0, r1, #4
	str r2, [r3, r0]
	adds r0, r1, #0
	adds r0, #0x44
	ldr r0, [r4, r0]
	adds r1, #0x44
	adds r0, r0, #1
	str r0, [r4, r1]
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223499A:
	adds r5, r5, #1
	adds r3, #0xc
	cmp r5, #6
	blt _0223491E
	b _022349D6
_022349A4:
	movs r0, #0xc
	adds r6, r5, #0
	muls r6, r0, r6
	movs r0, #0xf2
	adds r1, r4, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r2, #0
	movs r1, #0xf3
	mvns r2, r2
	adds r0, r4, r6
	lsls r1, r1, #2
	str r2, [r0, r1]
	adds r0, r1, #0
	adds r0, #0x44
	ldr r0, [r4, r0]
	adds r1, #0x44
	subs r0, r0, #1
	str r0, [r4, r1]
	add sp, #0x14
	movs r0, #2
	pop {r4, r5, r6, r7, pc}
_022349D6:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022349DC: .4byte 0x0000E884
	thumb_func_end ov97_02234854

	thumb_func_start ov97_022349E0
ov97_022349E0: @ 0x022349E0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
	subs r7, r4, #1
_022349EA:
	movs r0, #0xf3
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, r7
	beq _02234A10
	ldr r0, _02234A28 @ =0x0000E884
	ldr r1, [r6, r0]
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	bne _02234A10
	movs r0, #0xf2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	b _02234A1C
_02234A10:
	movs r0, #0xf2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
_02234A1C:
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #6
	blt _022349EA
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234A28: .4byte 0x0000E884
	thumb_func_end ov97_022349E0

	thumb_func_start ov97_02234A2C
ov97_02234A2C: @ 0x02234A2C
	push {r3, r4, r5, lr}
	sub sp, #0x60
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	add r3, sp, #0x14
	adds r1, r0, #0
	movs r2, #4
_02234A3C:
	stm r3!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02234A3C
	stm r3!, {r0, r1}
	str r0, [r3]
	ldr r0, _02234AA4 @ =0x00000478
	adds r0, r5, r0
	str r0, [sp, #0x14]
	movs r0, #6
	str r0, [sp, #0x1c]
	movs r0, #0x15
	str r0, [sp, #0x20]
	movs r0, #0xd
	str r0, [sp, #0x24]
	movs r0, #2
	str r0, [sp, #0x28]
	subs r0, r0, #3
	str r0, [sp, #0x48]
	movs r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	movs r0, #1
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldr r0, _02234AA8 @ =0x00010200
	str r0, [sp, #0x40]
	movs r0, #0xa0
	str r0, [sp, #0x34]
	bl ov97_02235DBC
	adds r3, r0, #0
	ldr r0, _02234AAC @ =0x0000E880
	movs r2, #9
	ldr r1, [r5, r0]
	ldr r0, _02234AB0 @ =0x00008344
	adds r1, r1, r0
	lsls r0, r4, #3
	adds r0, r4, r0
	adds r0, r1, r0
	add r1, sp, #0
	bl ov97_0223936C
	add r0, sp, #0
	str r0, [sp, #0x4c]
	adds r0, r5, #0
	add r1, sp, #0x14
	movs r2, #1
	bl ov97_02233DD0
	add sp, #0x60
	pop {r3, r4, r5, pc}
	.align 2, 0
_02234AA4: .4byte 0x00000478
_02234AA8: .4byte 0x00010200
_02234AAC: .4byte 0x0000E880
_02234AB0: .4byte 0x00008344
	thumb_func_end ov97_02234A2C

	thumb_func_start ov97_02234AB4
ov97_02234AB4: @ 0x02234AB4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x20]
	adds r6, r1, #0
	movs r1, #2
	bl FUN_02019FE4
	adds r4, r0, #0
	cmp r6, #0
	beq _02234AD8
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0
	bl ov97_02236924
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _02234ADA
_02234AD8:
	movs r1, #0
_02234ADA:
	movs r2, #0
	movs r0, #1
_02234ADE:
	adds r3, r1, #0
	tst r3, r0
	beq _02234AEA
	adds r6, r2, #0
	adds r6, #0x80
	b _02234AEE
_02234AEA:
	adds r6, r2, #0
	adds r6, #0x60
_02234AEE:
	adds r3, r4, #0
	adds r3, #0xd6
	lsls r1, r1, #0x17
	adds r2, r2, #1
	strh r6, [r3]
	lsrs r1, r1, #0x18
	adds r4, r4, #2
	cmp r2, #4
	blt _02234ADE
	ldr r0, [r5, #0x20]
	movs r1, #2
	bl FUN_02019448
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov97_02234AB4

	thumb_func_start ov97_02234B0C
ov97_02234B0C: @ 0x02234B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	add r3, sp, #0x2c
	adds r1, r0, #0
	movs r2, #4
_02234B1C:
	stm r3!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02234B1C
	stm r3!, {r0, r1}
	str r0, [r3]
	movs r1, #0x20
	str r1, [sp, #0x3c]
	movs r1, #1
	ldr r0, _02234CBC @ =0x00000488
	str r1, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0xbc
	str r1, [sp, #0x4c]
	ldr r1, _02234CC0 @ =0x000F0200
	adds r0, r5, r0
	str r1, [sp, #0x58]
	movs r1, #0x2c
	str r0, [sp, #0x2c]
	movs r0, #0
	str r1, [sp, #0x60]
	movs r1, #0x90
	movs r2, #4
	str r1, [sp, #0x44]
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x64]
	str r0, [sp, #0x48]
	adds r0, r5, #0
	add r1, sp, #0x2c
	str r2, [sp, #0x40]
	bl ov97_02233DD0
	movs r0, #0x2b
	str r0, [sp, #0x60]
	movs r0, #0x50
	str r0, [sp, #0x44]
	movs r0, #8
	str r0, [sp, #0x48]
	adds r0, r5, #0
	add r1, sp, #0x2c
	movs r2, #6
	bl ov97_02233DD0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov97_02234AB4
	cmp r4, #0
	bne _02234B8A
	ldr r0, [sp, #0x2c]
	bl FUN_0201A954
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
_02234B8A:
	add r2, sp, #0x1c
	adds r0, r4, #0
	movs r1, #2
	adds r2, #2
	bl ov97_02236924
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl ov97_02236924
	adds r3, r0, #0
	add r0, sp, #0x1c
	adds r0, #2
	add r1, sp, #8
	movs r2, #0xb
	bl ov97_0223936C
	add r0, sp, #8
	str r0, [sp, #0x64]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x60]
	movs r0, #8
	str r0, [sp, #0x44]
	movs r0, #0
	str r0, [sp, #0x48]
	adds r0, r5, #0
	add r1, sp, #0x2c
	movs r2, #6
	bl ov97_02233DD0
	movs r0, #0x40
	movs r1, #0x4e
	bl FUN_02023790
	movs r2, #0x67
	adds r6, r0, #0
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x4e
	bl FUN_0200B144
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0
	bl ov97_02236924
	bl ov97_02236DD0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	adds r0, r7, #0
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x60]
	movs r0, #0x10
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	adds r0, r5, #0
	add r1, sp, #0x2c
	movs r2, #6
	str r6, [sp, #0x68]
	bl ov97_02233DD0
	adds r0, r7, #0
	bl FUN_0200B190
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	bl ov97_02236924
	cmp r0, #0
	beq _02234C6E
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0207CF10
	adds r7, r0, #0
	movs r0, #0x40
	movs r1, #0x4e
	bl FUN_02023790
	lsls r1, r7, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x4e
	adds r6, r0, #0
	bl FUN_0207CFA0
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x60]
	movs r0, #0x98
	str r0, [sp, #0x44]
	movs r0, #0x10
	str r0, [sp, #0x48]
	adds r0, r5, #0
	add r1, sp, #0x2c
	movs r2, #6
	str r6, [sp, #0x68]
	bl ov97_02233DD0
	adds r0, r6, #0
	bl FUN_020237BC
_02234C6E:
	adds r0, r4, #0
	bl ov97_02236E00
	adds r6, r0, #0
	movs r0, #0xa
	movs r1, #0x4e
	bl FUN_02023790
	movs r3, #1
	adds r1, r6, #0
	movs r2, #3
	adds r4, r0, #0
	str r3, [sp]
	bl FUN_020238A0
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x60]
	movs r0, #0x64
	str r0, [sp, #0x44]
	movs r0, #8
	str r0, [sp, #0x48]
	adds r0, r5, #0
	add r1, sp, #0x2c
	movs r2, #2
	str r4, [sp, #0x68]
	bl ov97_02233DD0
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #4]
	movs r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005844
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02234CBC: .4byte 0x00000488
_02234CC0: .4byte 0x000F0200
	thumb_func_end ov97_02234B0C

	thumb_func_start ov97_02234CC4
ov97_02234CC4: @ 0x02234CC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4e
	str r0, [sp, #8]
	adds r6, r2, #0
	movs r0, #0
	adds r4, r3, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	cmp r4, #0
	beq _02234CEC
	movs r0, #0x17
	str r0, [r4]
_02234CEC:
	str r6, [r5, #0x24]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov97_02234CC4

	thumb_func_start ov97_02234CF4
ov97_02234CF4: @ 0x02234CF4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	adds r4, r3, #0
	str r0, [sp, #4]
	movs r0, #0x4e
	adds r6, r2, #0
	str r0, [sp, #8]
	ldr r3, _02234D24 @ =0x00007FFF
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
	cmp r4, #0
	beq _02234D1C
	movs r0, #0x17
	str r0, [r4]
_02234D1C:
	str r6, [r5, #0x24]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02234D24: .4byte 0x00007FFF
	thumb_func_end ov97_02234CF4

	thumb_func_start ov97_02234D28
ov97_02234D28: @ 0x02234D28
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02234DE8 @ =0x0223D884
	add r3, sp, #0x70
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _02234DEC @ =0x0223D894
	add r3, sp, #0x54
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
	ldr r5, _02234DF0 @ =0x0223D8B0
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
	ldr r5, _02234DF4 @ =0x0223D8CC
	add r3, sp, #0x1c
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
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _02234DF8 @ =0x0223D8E8
	add r3, sp, #0
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_02234DE8: .4byte 0x0223D884
_02234DEC: .4byte 0x0223D894
_02234DF0: .4byte 0x0223D8B0
_02234DF4: .4byte 0x0223D8CC
_02234DF8: .4byte 0x0223D8E8
	thumb_func_end ov97_02234D28

	thumb_func_start ov97_02234DFC
ov97_02234DFC: @ 0x02234DFC
	push {r3, r4, r5, lr}
	sub sp, #0x38
	ldr r5, _02234E74 @ =0x0223D904
	adds r4, r0, #0
	add r3, sp, #0x10
	movs r2, #5
_02234E08:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02234E08
	add r0, sp, #0x10
	bl FUN_0201FE94
	ldr r0, [r4, #0x20]
	bl ov97_02234D28
	ldr r0, _02234E78 @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	bl FUN_0201D710
	movs r1, #0x1e
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x4e
	bl FUN_02002E7C
	movs r0, #0xc0
	str r0, [sp]
	movs r0, #0x4e
	movs r2, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0x13
	adds r3, r2, #0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #5
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x4e
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x20]
	movs r0, #0x74
	movs r1, #0x16
	movs r3, #2
	bl FUN_02006E3C
	movs r0, #2
	movs r1, #0x4e
	bl FUN_02002BB8
	add sp, #0x38
	pop {r3, r4, r5, pc}
	.align 2, 0
_02234E74: .4byte 0x0223D904
_02234E78: .4byte 0x021BF6DC
	thumb_func_end ov97_02234DFC

	thumb_func_start ov97_02234E7C
ov97_02234E7C: @ 0x02234E7C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x4e
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x20]
	movs r0, #0x74
	movs r1, #0x14
	movs r3, #2
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r2, #0
	ldr r1, [r4]
	ldr r0, _02234EC8 @ =0x0223EA60
	adds r3, r2, #0
	ldrb r0, [r0, r1]
	movs r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	bl FUN_02019E2C
	ldr r0, [r4, #0x20]
	movs r1, #2
	bl FUN_02019448
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02234EC8: .4byte 0x0223EA60
	thumb_func_end ov97_02234E7C

	thumb_func_start ov97_02234ECC
ov97_02234ECC: @ 0x02234ECC
	push {r4, lr}
	sub sp, #8
	movs r1, #7
	adds r4, r0, #0
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x4e
	bl FUN_02002E7C
	movs r1, #0
	movs r2, #0x3f
	str r1, [sp]
	movs r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	lsls r2, r2, #4
	movs r3, #0xe
	bl FUN_0200DAA4
	ldr r0, [r4, #0x1c]
	ldr r2, _02234F74 @ =0x000003D2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	movs r1, #0
	movs r3, #0xd
	bl FUN_0200DD0C
	ldr r0, _02234F78 @ =0x0000042C
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x4c
	blx FUN_020D5124
	ldr r0, _02234F7C @ =0x00000498
	movs r3, #0x1b
	adds r1, r0, #0
	adds r2, r4, r0
	subs r1, #0x6c
	str r2, [r4, r1]
	adds r1, r0, #0
	movs r2, #2
	subs r1, #0x64
	str r2, [r4, r1]
	adds r1, r0, #0
	movs r2, #1
	subs r1, #0x60
	str r2, [r4, r1]
	adds r1, r0, #0
	subs r1, #0x5c
	str r3, [r4, r1]
	adds r1, r0, #0
	movs r3, #4
	subs r1, #0x58
	str r3, [r4, r1]
	adds r3, r0, #0
	movs r1, #0
	subs r3, #0x48
	str r1, [r4, r3]
	adds r3, r0, #0
	subs r3, #0x44
	str r2, [r4, r3]
	adds r3, r0, #0
	subs r3, #0x4c
	str r2, [r4, r3]
	adds r2, r0, #0
	ldr r3, _02234F80 @ =0x0001020F
	subs r2, #0x40
	str r3, [r4, r2]
	adds r2, r0, #0
	ldr r3, _02234F84 @ =0x000F020F
	subs r2, #0x3c
	str r3, [r4, r2]
	adds r2, r0, #0
	subs r2, #0x34
	str r1, [r4, r2]
	subs r0, #0x30
	str r1, [r4, r0]
	add sp, #8
	pop {r4, pc}
	nop
_02234F74: .4byte 0x000003D2
_02234F78: .4byte 0x0000042C
_02234F7C: .4byte 0x00000498
_02234F80: .4byte 0x0001020F
_02234F84: .4byte 0x000F020F
	thumb_func_end ov97_02234ECC

	thumb_func_start ov97_02234F88
ov97_02234F88: @ 0x02234F88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r6, r0, #0
	movs r7, #0x6b
	movs r5, #0
	adds r4, r6, #0
	lsls r7, r7, #2
_02234F96:
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4, r7]
	movs r1, #0
	bl FUN_02021CAC
	adds r5, r5, #1
	adds r4, #0xc
	cmp r5, #0x1e
	blt _02234F96
	movs r7, #0xf2
	movs r5, #0
	adds r4, r6, #0
	lsls r7, r7, #2
_02234FBA:
	ldr r0, [r4, r7]
	movs r1, #0
	bl FUN_02021CAC
	adds r5, r5, #1
	adds r4, #0xc
	cmp r5, #6
	blt _02234FBA
	movs r0, #0xe6
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0xee
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0xea
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r2, #0x61
	lsls r2, r2, #2
	add r0, sp, #0x1c
	adds r1, r6, #0
	adds r2, r6, r2
	movs r3, #1
	bl ov97_022340FC
	movs r0, #0x1c
	movs r7, #0
	str r0, [sp, #0x10]
	adds r4, r6, #0
	adds r5, r6, #0
_02235008:
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0xc
	str r0, [sp, #0x24]
	movs r0, #0x8e
	lsls r0, r0, #0xc
	str r0, [sp, #0x28]
	add r0, sp, #0x1c
	bl FUN_02021AA0
	ldr r1, _02235148 @ =0x00000414
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, _02235148 @ =0x00000414
	adds r1, r7, #0
	ldr r0, [r4, r0]
	adds r1, #0xa
	bl FUN_02021D6C
	ldr r0, _02235148 @ =0x00000414
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02021E80
	ldr r0, _02235148 @ =0x00000414
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02021CAC
	movs r1, #0x3d
	movs r2, #0xf3
	lsls r1, r1, #4
	lsls r2, r2, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	adds r0, r6, #0
	bl ov97_02234124
	movs r1, #0x3d
	movs r2, #0xf3
	lsls r1, r1, #4
	lsls r2, r2, #2
	str r0, [sp, #0x14]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	adds r0, r6, #0
	bl ov97_02234148
	movs r1, #0x3d
	movs r2, #0xf3
	lsls r1, r1, #4
	lsls r2, r2, #2
	str r0, [sp, #0x18]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	adds r0, r6, #0
	bl ov97_0223416C
	adds r2, r0, #0
	ldr r0, _02235148 @ =0x00000414
	str r7, [sp]
	ldr r0, [r4, r0]
	ldr r3, _0223514C @ =0x021BF6DC
	str r0, [sp, #4]
	ldrb r3, [r3, #6]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov97_02234278
	ldr r0, [sp, #0x10]
	adds r7, r7, #1
	adds r0, #0x28
	str r0, [sp, #0x10]
	adds r4, r4, #4
	adds r5, #0xc
	cmp r7, #6
	blt _02235008
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x4e
	str r0, [sp, #0xc]
	ldr r2, [r6, #0x20]
	movs r0, #0x74
	movs r1, #0x15
	movs r3, #2
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r2, #0
	ldr r1, [r6]
	ldr r0, _02235150 @ =0x0223EA60
	adds r3, r2, #0
	ldrb r0, [r0, r1]
	movs r1, #2
	str r0, [sp, #8]
	ldr r0, [r6, #0x20]
	bl FUN_02019E2C
	ldr r0, [r6, #0x20]
	movs r1, #2
	bl FUN_02019448
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r1, #7
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x4e
	bl FUN_02002E7C
	movs r1, #0
	movs r2, #0x3f
	str r1, [sp]
	movs r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	lsls r2, r2, #4
	movs r3, #0xe
	bl FUN_0200DAA4
	ldr r0, [r6, #0x1c]
	ldr r2, _02235154 @ =0x000003D2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	movs r1, #0
	movs r3, #0xd
	bl FUN_0200DD0C
	adds r0, r6, #0
	bl ov97_02234ECC
	movs r1, #0x46
	movs r0, #0xa
	lsls r1, r1, #4
	str r0, [r6, r1]
	subs r1, #0x34
	adds r0, r6, #0
	adds r1, r6, r1
	movs r2, #0x18
	bl ov97_02233DD0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02235148: .4byte 0x00000414
_0223514C: .4byte 0x021BF6DC
_02235150: .4byte 0x0223EA60
_02235154: .4byte 0x000003D2
	thumb_func_end ov97_02234F88

	thumb_func_start ov97_02235158
ov97_02235158: @ 0x02235158
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _02235174
	movs r1, #0
	bl FUN_0200E084
	adds r0, r4, #0
	bl FUN_0201ACF4
	adds r0, r4, #0
	bl FUN_0201A8FC
_02235174:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov97_02235158

	thumb_func_start ov97_02235178
ov97_02235178: @ 0x02235178
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _022351E8 @ =0x00000414
	movs r4, #0
	adds r5, r6, #0
_02235182:
	ldr r0, [r5, r7]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _02235182
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, _022351EC @ =0x00000498
	adds r0, r6, r0
	bl ov97_02235158
	movs r0, #0xe6
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0xee
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0xea
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0xf3
	movs r5, #0
	lsls r0, r0, #2
	adds r4, r6, #0
	subs r3, r5, #1
	movs r2, #0xe
	adds r1, r0, #4
_022351D2:
	str r3, [r4, r0]
	str r2, [r4, r1]
	adds r5, r5, #1
	adds r4, #0xc
	cmp r5, #6
	blt _022351D2
	movs r0, #0x41
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022351E8: .4byte 0x00000414
_022351EC: .4byte 0x00000498
	thumb_func_end ov97_02235178

	thumb_func_start ov97_022351F0
ov97_022351F0: @ 0x022351F0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r7, #0x6a
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_02235204:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223520E
	bl FUN_02021BD4
_0223520E:
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223521C
	bl FUN_02021BD4
_0223521C:
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #0x1e
	blt _02235204
	movs r7, #0xf2
	movs r5, #0
	adds r4, r6, #0
	lsls r7, r7, #2
_0223522C:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02235236
	bl FUN_02021BD4
_02235236:
	adds r5, r5, #1
	adds r4, #0xc
	cmp r5, #6
	blt _0223522C
	movs r0, #0xe6
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223524C
	bl FUN_02021BD4
_0223524C:
	movs r0, #0xee
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223525A
	bl FUN_02021BD4
_0223525A:
	movs r0, #0xea
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02235268
	bl FUN_02021BD4
_02235268:
	ldr r0, _022352FC @ =0x00000478
	adds r0, r6, r0
	bl ov97_02235158
	ldr r0, _02235300 @ =0x00000488
	adds r0, r6, r0
	bl ov97_02235158
	ldr r0, _02235304 @ =0x00000498
	adds r0, r6, r0
	bl ov97_02235158
	movs r0, #2
	bl FUN_02002C60
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	movs r7, #0x55
	movs r5, #0
	adds r4, r6, #0
	lsls r7, r7, #2
_022352A2:
	ldr r0, [r4, r7]
	bl FUN_02009754
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #6
	blt _022352A2
	ldr r0, [r6, #0x28]
	bl FUN_02021964
	movs r0, #0
	str r0, [r6, #0x28]
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	ldr r0, _02235308 @ =0x0000E88C
	ldr r0, [r6, r0]
	bl FUN_02015938
	ldr r0, _0223530C @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	ldr r0, [r6, #0x20]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r6, #0x20]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r6, #0x20]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r6, #0x20]
	movs r1, #3
	bl FUN_02019044
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022352FC: .4byte 0x00000478
_02235300: .4byte 0x00000488
_02235304: .4byte 0x00000498
_02235308: .4byte 0x0000E88C
_0223530C: .4byte 0x021BF6DC
	thumb_func_end ov97_022351F0

	thumb_func_start ov97_02235310
ov97_02235310: @ 0x02235310
	push {lr}
	sub sp, #0x14
	ldr r1, [r0, #0x20]
	movs r2, #0x19
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #2
	lsls r1, r1, #8
	str r1, [sp, #8]
	movs r1, #8
	str r1, [sp, #0xc]
	add r1, sp, #0
	strb r2, [r1, #0x10]
	movs r2, #7
	strb r2, [r1, #0x11]
	ldr r1, _02235340 @ =0x0000E88C
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl FUN_02015958
	add sp, #0x14
	pop {pc}
	nop
_02235340: .4byte 0x0000E88C
	thumb_func_end ov97_02235310

	thumb_func_start ov97_02235344
ov97_02235344: @ 0x02235344
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	bl ov97_02236378
	adds r4, r0, #0
	bl ov97_02235DBC
	adds r3, r0, #0
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #8
	bl ov97_0223936C
	movs r0, #0x4e
	bl FUN_0200B358
	adds r4, r0, #0
	movs r0, #8
	movs r1, #0x4e
	bl FUN_02023790
	add r1, sp, #8
	adds r6, r0, #0
	bl FUN_02023D28
	movs r1, #1
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0
	bl FUN_0200B48C
	adds r0, r5, #0
	bl ov97_02234ECC
	ldr r0, [r5]
	movs r2, #0x18
	lsls r1, r0, #2
	ldr r0, _022353C8 @ =0x0223EA80
	ldr r0, [r0, r1]
	movs r1, #0x46
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	adds r0, #0xc
	subs r1, #0x34
	str r4, [r5, r0]
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov97_02233DD0
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B3F0
	adds r0, r5, #0
	bl ov97_02235310
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_022353C8: .4byte 0x0223EA80
	thumb_func_end ov97_02235344

	thumb_func_start ov97_022353CC
ov97_022353CC: @ 0x022353CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _022353FC @ =0x00012604
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022353E0
	blx r0
	ldr r0, _022353FC @ =0x00012604
	movs r1, #0
	str r1, [r4, r0]
_022353E0:
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r0, [r4, #0x20]
	bl FUN_0201C2B8
	ldr r3, _02235400 @ =0x027E0000
	ldr r1, _02235404 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_022353FC: .4byte 0x00012604
_02235400: .4byte 0x027E0000
_02235404: .4byte 0x00003FF8
	thumb_func_end ov97_022353CC

	thumb_func_start ov97_02235408
ov97_02235408: @ 0x02235408
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x10]
	bl FUN_02024440
	str r0, [sp, #8]
	bl FUN_0202F0E0
	cmp r0, #0
	bne _0223545C
	ldr r0, [sp, #8]
	bl FUN_0202F088
	cmp r0, #0
	bne _0223542E
	add sp, #0xc
	movs r0, #3
	pop {r4, r5, r6, r7, pc}
_0223542E:
	ldr r0, [sp, #8]
	bl FUN_0202F0BC
	cmp r0, #0
	bne _0223543E
	add sp, #0xc
	movs r0, #4
	pop {r4, r5, r6, r7, pc}
_0223543E:
	bl ov97_0223635C
	adds r1, r0, #0
	ldr r0, [sp, #8]
	bl FUN_0202F050
	cmp r0, #0
	bne _02235450
	ldr r0, _022354B8 @ =0x0002A300
_02235450:
	ldr r1, _022354BC @ =0x00015180
	cmp r0, r1
	bge _0223545C
	add sp, #0xc
	movs r0, #2
	pop {r4, r5, r6, r7, pc}
_0223545C:
	movs r6, #0
	str r6, [sp, #4]
	adds r7, r6, #0
_02235462:
	movs r4, #0
	adds r5, r4, #0
_02235466:
	ldr r1, [sp]
	ldr r0, _022354C0 @ =0x0000E880
	movs r2, #0
	ldr r0, [r1, r0]
	movs r1, #5
	adds r0, r0, #4
	adds r0, r0, r7
	adds r0, r0, r5
	bl ov97_02236924
	cmp r0, #0
	beq _02235480
	adds r6, r6, #1
_02235480:
	adds r4, r4, #1
	adds r5, #0x50
	cmp r4, #0x1e
	blt _02235466
	movs r0, #0x96
	lsls r0, r0, #4
	adds r7, r7, r0
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xe
	blt _02235462
	cmp r6, #6
	bge _022354A2
	add sp, #0xc
	movs r0, #5
	pop {r4, r5, r6, r7, pc}
_022354A2:
	ldr r0, [sp, #8]
	bl FUN_0202F028
	cmp r0, #0
	beq _022354B2
	add sp, #0xc
	movs r0, #6
	pop {r4, r5, r6, r7, pc}
_022354B2:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022354B8: .4byte 0x0002A300
_022354BC: .4byte 0x00015180
_022354C0: .4byte 0x0000E880
	thumb_func_end ov97_02235408

	thumb_func_start ov97_022354C4
ov97_022354C4: @ 0x022354C4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _02235500
	bl ov97_02234ECC
	movs r0, #1
	bl FUN_02002B20
	ldr r0, _02235520 @ =0x0223EAB8
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	movs r1, #0x46
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r1, #0x34
	movs r2, #1
	adds r0, #0x10
	str r2, [r5, r0]
	adds r0, r5, #0
	adds r1, r5, r1
	movs r2, #0x18
	bl ov97_02233DD0
	movs r0, #0
	str r0, [r5, #4]
	b _0223551A
_02235500:
	ldr r0, _02235524 @ =0x00000474
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0223551A
	movs r0, #0
	bl FUN_02002B20
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223551A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02235520: .4byte 0x0223EAB8
_02235524: .4byte 0x00000474
	thumb_func_end ov97_022354C4

	thumb_func_start ov97_02235528
ov97_02235528: @ 0x02235528
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _02235564
	bl ov97_02234ECC
	movs r0, #1
	bl FUN_02002B20
	ldr r0, _02235588 @ =0x0223EAB8
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	movs r1, #0x46
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r1, #0x34
	movs r2, #1
	adds r0, #0x10
	str r2, [r5, r0]
	adds r0, r5, #0
	adds r1, r5, r1
	movs r2, #0x18
	bl ov97_02233DD0
	movs r0, #0
	str r0, [r5, #4]
	b _02235584
_02235564:
	ldr r0, _0223558C @ =0x00000474
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02235584
	adds r0, r5, #0
	bl ov97_02235310
	movs r0, #0
	bl FUN_02002B20
	movs r0, #1
	pop {r3, r4, r5, pc}
_02235584:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02235588: .4byte 0x0223EAB8
_0223558C: .4byte 0x00000474
	thumb_func_end ov97_02235528

	thumb_func_start ov97_02235590
ov97_02235590: @ 0x02235590
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0
	ldr r2, [r5, #8]
	mvns r1, r1
	cmp r2, r1
	beq _022355D2
	bl ov97_02234ECC
	movs r0, #1
	bl FUN_02002B20
	movs r1, #0x46
	ldr r0, [r5, #8]
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	adds r0, #0x10
	subs r1, #0x34
	str r4, [r5, r0]
	adds r0, r5, #0
	adds r1, r5, r1
	movs r2, #0x18
	bl ov97_02233DD0
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #8]
	ldr r0, _02235614 @ =0x000005DC
	bl FUN_02005748
	b _02235610
_022355D2:
	cmp r4, #0
	beq _022355F0
	ldr r0, _02235618 @ =0x00000474
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02235610
	movs r0, #0
	bl FUN_02002B20
	movs r0, #1
	pop {r3, r4, r5, pc}
_022355F0:
	ldr r0, _0223561C @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _02235600
	ldr r0, _02235620 @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02235610
_02235600:
	movs r0, #0
	bl FUN_02002B20
	ldr r0, _02235614 @ =0x000005DC
	bl FUN_02005748
	movs r0, #1
	pop {r3, r4, r5, pc}
_02235610:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02235614: .4byte 0x000005DC
_02235618: .4byte 0x00000474
_0223561C: .4byte 0x021BF6BC
_02235620: .4byte 0x021BF67C
	thumb_func_end ov97_02235590

	thumb_func_start ov97_02235624
ov97_02235624: @ 0x02235624
	push {r3, r4, r5, lr}
	movs r2, #0xe
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x4e
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	ldr r1, _022356CC @ =0x00012610
	adds r0, r5, #0
	movs r2, #0x4e
	bl FUN_0200681C
	ldr r2, _022356CC @ =0x00012610
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x4e
	bl FUN_02018340
	str r0, [r4, #0x20]
	movs r0, #0x4e
	bl FUN_02015920
	ldr r1, _022356D0 @ =0x0000E88C
	str r0, [r4, r1]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	adds r0, r5, #0
	bl FUN_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #0x10]
	bl FUN_02025E38
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl FUN_02025E44
	str r0, [r4, #0x18]
	bl FUN_02027B50
	str r0, [r4, #0x1c]
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x4e
	bl FUN_02023790
	ldr r1, _022356D4 @ =0x00012608
	str r0, [r4, r1]
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x4e
	bl FUN_02023790
	ldr r1, _022356D8 @ =0x0001260C
	movs r2, #1
	str r0, [r4, r1]
	ldr r1, _022356DC @ =0x00000496
	movs r0, #9
	bl FUN_02004550
	blx FUN_020C3808
	cmp r0, #0
	bne _022356BA
	blx FUN_020C3790
_022356BA:
	bl ov97_02238440
	ldr r0, _022356E0 @ =0x0000E89C
	adds r1, r4, r0
	ldr r0, _022356E4 @ =0x0223F434
	str r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_022356CC: .4byte 0x00012610
_022356D0: .4byte 0x0000E88C
_022356D4: .4byte 0x00012608
_022356D8: .4byte 0x0001260C
_022356DC: .4byte 0x00000496
_022356E0: .4byte 0x0000E89C
_022356E4: .4byte 0x0223F434
	thumb_func_end ov97_02235624

	thumb_func_start ov97_022356E8
ov97_022356E8: @ 0x022356E8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	blx FUN_020D0A04
	blx FUN_020D09B8
	cmp r0, #1
	beq _02235706
	ldr r0, _02235A0C @ =0x02101D24
	ldr r0, [r0]
	cmp r0, #0
	beq _0223571C
_02235706:
	ldr r0, _02235A10 @ =0x0000E890
	ldr r0, [r4, r0]
	subs r0, r0, #3
	cmp r0, #1
	bhi _02235716
	ldr r0, [r4, #0x10]
	bl FUN_02024850
_02235716:
	movs r0, #0x4e
	bl FUN_0209A8E0
_0223571C:
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r5]
	cmp r0, #0x18
	bhi _02235818
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02235734: @ jump table
	.2byte _02235766 - _02235734 - 2 @ case 0
	.2byte _022357AE - _02235734 - 2 @ case 1
	.2byte _022357F4 - _02235734 - 2 @ case 2
	.2byte _02235808 - _02235734 - 2 @ case 3
	.2byte _02235842 - _02235734 - 2 @ case 4
	.2byte _0223585A - _02235734 - 2 @ case 5
	.2byte _022358B0 - _02235734 - 2 @ case 6
	.2byte _022358C2 - _02235734 - 2 @ case 7
	.2byte _022358E0 - _02235734 - 2 @ case 8
	.2byte _022358F2 - _02235734 - 2 @ case 9
	.2byte _02235950 - _02235734 - 2 @ case 10
	.2byte _02235968 - _02235734 - 2 @ case 11
	.2byte _0223597C - _02235734 - 2 @ case 12
	.2byte _022359BC - _02235734 - 2 @ case 13
	.2byte _02235AEA - _02235734 - 2 @ case 14
	.2byte _02235B04 - _02235734 - 2 @ case 15
	.2byte _02235B20 - _02235734 - 2 @ case 16
	.2byte _02235B3A - _02235734 - 2 @ case 17
	.2byte _02235B70 - _02235734 - 2 @ case 18
	.2byte _02235B96 - _02235734 - 2 @ case 19
	.2byte _02235C00 - _02235734 - 2 @ case 20
	.2byte _02235C0C - _02235734 - 2 @ case 21
	.2byte _02235C4E - _02235734 - 2 @ case 22
	.2byte _02235C72 - _02235734 - 2 @ case 23
	.2byte _02235C80 - _02235734 - 2 @ case 24
_02235766:
	bl ov97_02235DA4
	movs r0, #0x4b
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov97_02235D2C
	ldr r1, _02235A14 @ =0x000004A8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _022357A2
	bl ov97_022360D8
	ldr r1, _02235A18 @ =0x000004AC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0223579E
	bl ov97_02236340
	ldr r1, _02235A1C @ =0x0000E880
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldrb r2, [r0]
	adds r0, r1, #4
	str r2, [r4, r0]
	b _022357A2
_0223579E:
	movs r0, #1
	str r0, [r4, #4]
_022357A2:
	adds r0, r4, #0
	bl ov97_02233B44
	movs r0, #1
	str r0, [r5]
	b _02235C8A
_022357AE:
	adds r0, r4, #0
	bl ov97_02234DFC
	bl ov97_02233F74
	adds r0, r4, #0
	bl ov97_02233FA4
	adds r0, r4, #0
	bl ov97_022340B0
	adds r0, r4, #0
	bl ov97_0223468C
	ldr r0, _02235A20 @ =ov97_022353CC
	adds r1, r4, #0
	bl FUN_02017798
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _022357EE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xb
	adds r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_022357EE:
	movs r0, #2
	str r0, [r5]
	b _02235C8A
_022357F4:
	adds r0, r4, #0
	bl ov97_02235344
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	adds r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235808:
	ldr r0, _02235A24 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_020159FC
	cmp r0, #1
	beq _0223581A
	cmp r0, #2
	beq _0223582C
_02235818:
	b _02235C8A
_0223581A:
	ldr r0, _02235A24 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	movs r0, #0x22
	str r0, [r4, #8]
	movs r0, #4
	str r0, [r5]
	b _02235C8A
_0223582C:
	ldr r0, _02235A24 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	adds r3, r5, #0
	bl ov97_02234CF4
	b _02235C8A
_02235842:
	adds r0, r4, #0
	movs r1, #1
	bl ov97_02235590
	cmp r0, #0
	beq _0223586A
	adds r0, r4, #0
	bl ov97_02235310
	movs r0, #5
	str r0, [r5]
	b _02235C8A
_0223585A:
	ldr r0, _02235A24 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_020159FC
	cmp r0, #1
	beq _0223586C
	cmp r0, #2
	beq _0223589A
_0223586A:
	b _02235C8A
_0223586C:
	ldr r0, _02235A24 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	adds r0, r4, #0
	bl ov97_02235408
	str r0, [r4, #4]
	cmp r0, #0
	beq _02235892
	subs r0, r0, #3
	cmp r0, #1
	bhi _0223588C
	movs r0, #8
	str r0, [r5]
	b _02235C8A
_0223588C:
	movs r0, #0xb
	str r0, [r5]
	b _02235C8A
_02235892:
	movs r0, #6
	str r0, [r4, #8]
	str r0, [r5]
	b _02235C8A
_0223589A:
	ldr r0, _02235A24 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	adds r3, r5, #0
	bl ov97_02234CF4
	b _02235C8A
_022358B0:
	adds r0, r4, #0
	movs r1, #1
	bl ov97_02235590
	cmp r0, #0
	beq _02235902
	movs r0, #7
	str r0, [r5]
	b _02235C8A
_022358C2:
	ldr r0, _02235A28 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _022358D2
	ldr r0, _02235A2C @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02235902
_022358D2:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	adds r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_022358E0:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl ov97_02235528
	cmp r0, #0
	beq _02235902
	movs r0, #9
	str r0, [r5]
	b _02235C8A
_022358F2:
	ldr r0, _02235A24 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_020159FC
	cmp r0, #1
	beq _02235904
	cmp r0, #2
	beq _0223593A
_02235902:
	b _02235C8A
_02235904:
	ldr r0, _02235A24 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	movs r1, #0x47
	lsls r1, r1, #4
	movs r2, #0
	adds r0, r1, #0
	str r2, [r4, r1]
	subs r1, #0x44
	movs r3, #0x28
	subs r0, #0x10
	str r3, [r4, r0]
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov97_02233DD0
	ldr r1, _02235A30 @ =0x00000498
	adds r0, r4, r1
	subs r1, #0xc6
	bl FUN_0200E7FC
	ldr r1, _02235A34 @ =0x0000E898
	str r0, [r4, r1]
	movs r0, #0xa
	str r0, [r5]
	b _02235C8A
_0223593A:
	ldr r0, _02235A24 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	adds r3, r5, #0
	bl ov97_02234CF4
	b _02235C8A
_02235950:
	adds r0, r4, #0
	bl ov97_02233CE4
	ldr r0, _02235A34 @ =0x0000E898
	ldr r0, [r4, r0]
	bl FUN_0200EBA0
	movs r0, #7
	str r0, [r4, #4]
	movs r0, #0xb
	str r0, [r5]
	b _02235C8A
_02235968:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl ov97_022354C4
	cmp r0, #0
	bne _02235976
	b _02235C8A
_02235976:
	movs r0, #0x16
	str r0, [r5]
	b _02235C8A
_0223597C:
	ldr r0, _02235A30 @ =0x00000498
	adds r0, r4, r0
	bl ov97_02235158
	adds r0, r4, #0
	bl ov97_02234E7C
	adds r0, r4, #0
	bl ov97_02234508
	adds r0, r4, #0
	bl ov97_022343A8
	ldr r0, _02235A20 @ =ov97_022353CC
	adds r1, r4, #0
	bl FUN_02017798
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r4, #0
	movs r1, #0
	bl ov97_02234B0C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xd
	adds r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_022359BC:
	movs r0, #0x31
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_02022664
	adds r6, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _02235A96
	cmp r6, #0x1e
	bge _02235A8C
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov97_02234854
	cmp r0, #1
	bne _02235A46
	ldr r2, _02235A1C @ =0x0000E880
	adds r0, r4, #0
	ldr r1, [r4, r2]
	adds r2, r2, #4
	ldr r3, [r4, r2]
	movs r2, #0x96
	lsls r2, r2, #4
	adds r1, r1, #4
	muls r2, r3, r2
	adds r2, r1, r2
	movs r1, #0x50
	muls r1, r6, r1
	adds r1, r2, r1
	bl ov97_02234B0C
	movs r0, #0x41
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _02235A96
	ldr r0, _02235A38 @ =0x0000E888
	b _02235A3C
	.align 2, 0
_02235A0C: .4byte 0x02101D24
_02235A10: .4byte 0x0000E890
_02235A14: .4byte 0x000004A8
_02235A18: .4byte 0x000004AC
_02235A1C: .4byte 0x0000E880
_02235A20: .4byte ov97_022353CC
_02235A24: .4byte 0x0000E88C
_02235A28: .4byte 0x021BF6BC
_02235A2C: .4byte 0x021BF67C
_02235A30: .4byte 0x00000498
_02235A34: .4byte 0x0000E898
_02235A38: .4byte 0x0000E888
_02235A3C:
	movs r1, #0x2d
	str r1, [r4, r0]
	movs r0, #0xf
	str r0, [r5]
	b _02235C8A
_02235A46:
	cmp r0, #2
	bne _02235A54
	adds r0, r4, #0
	movs r1, #0
	bl ov97_02234B0C
	b _02235C8A
_02235A54:
	cmp r0, #4
	bne _02235A62
	movs r0, #8
	str r0, [r4, #8]
	movs r0, #0xe
	str r0, [r5]
	b _02235C8A
_02235A62:
	cmp r0, #5
	bne _02235A70
	movs r0, #9
	str r0, [r4, #8]
	movs r0, #0xe
	str r0, [r5]
	b _02235C8A
_02235A70:
	cmp r0, #6
	bne _02235A7E
	movs r0, #0x26
	str r0, [r4, #8]
	movs r0, #0xe
	str r0, [r5]
	b _02235C8A
_02235A7E:
	cmp r0, #7
	bne _02235A96
	movs r0, #0x26
	str r0, [r4, #8]
	movs r0, #0xe
	str r0, [r5]
	b _02235C8A
_02235A8C:
	beq _02235AD6
	cmp r6, #0x1f
	beq _02235A98
	cmp r6, #0x20
	beq _02235AB6
_02235A96:
	b _02235C8A
_02235A98:
	ldr r0, _02235C98 @ =0x0000E884
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02235AA4
	movs r1, #0xd
	b _02235AA6
_02235AA4:
	subs r1, r1, #1
_02235AA6:
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov97_022343A8
	ldr r0, _02235C9C @ =0x000005DC
	bl FUN_02005748
	b _02235C8A
_02235AB6:
	ldr r0, _02235C98 @ =0x0000E884
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0xe
	bne _02235AC8
	movs r1, #0
	str r1, [r4, r0]
_02235AC8:
	adds r0, r4, #0
	bl ov97_022343A8
	ldr r0, _02235C9C @ =0x000005DC
	bl FUN_02005748
	b _02235C8A
_02235AD6:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	adds r3, r5, #0
	bl ov97_02234CF4
	ldr r0, _02235C9C @ =0x000005DC
	bl FUN_02005748
	b _02235C8A
_02235AEA:
	adds r0, r4, #0
	movs r1, #0
	bl ov97_02235590
	cmp r0, #0
	beq _02235B4A
	ldr r0, _02235CA0 @ =0x00000498
	adds r0, r4, r0
	bl ov97_02235158
	movs r0, #0xd
	str r0, [r5]
	b _02235C8A
_02235B04:
	ldr r0, _02235CA4 @ =0x0000E888
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02235B4A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	adds r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235B20:
	adds r0, r4, #0
	bl ov97_02234F88
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x11
	adds r3, r5, #0
	bl ov97_02234CC4
	adds r0, r4, #0
	bl ov97_02235310
	b _02235C8A
_02235B3A:
	ldr r0, _02235CA8 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_020159FC
	cmp r0, #1
	beq _02235B4C
	cmp r0, #2
	beq _02235B5A
_02235B4A:
	b _02235C8A
_02235B4C:
	ldr r0, _02235CA8 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	movs r0, #0x12
	str r0, [r5]
	b _02235C8A
_02235B5A:
	ldr r0, _02235CA8 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x14
	adds r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235B70:
	movs r1, #0x46
	movs r0, #0xb
	lsls r1, r1, #4
	str r0, [r4, r1]
	subs r1, #0x34
	adds r0, r4, #0
	adds r1, r4, r1
	movs r2, #0
	bl ov97_02233DD0
	adds r0, r4, #0
	bl ov97_02235310
	ldr r0, _02235C9C @ =0x000005DC
	bl FUN_02005748
	movs r0, #0x13
	str r0, [r5]
	b _02235C8A
_02235B96:
	ldr r0, _02235CA8 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_020159FC
	cmp r0, #1
	beq _02235BA8
	cmp r0, #2
	beq _02235BEA
	b _02235C8A
_02235BA8:
	ldr r0, [r4]
	movs r2, #0
	lsls r1, r0, #2
	ldr r0, _02235CAC @ =0x0223EA68
	ldr r0, [r0, r1]
	movs r1, #0x46
	lsls r1, r1, #4
	str r0, [r4, r1]
	subs r1, #0x34
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov97_02233DD0
	ldr r0, _02235CA8 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	ldr r0, _02235CB0 @ =0x0000E890
	movs r1, #0
	str r1, [r4, r0]
	ldr r1, _02235CA0 @ =0x00000498
	adds r0, r4, r1
	subs r1, #0xc6
	bl FUN_0200E7FC
	ldr r1, _02235CB4 @ =0x0000E898
	str r0, [r4, r1]
	movs r0, #0x15
	str r0, [r5]
	movs r0, #4
	bl FUN_02017DE0
	b _02235C8A
_02235BEA:
	ldr r0, _02235CA8 @ =0x0000E88C
	ldr r0, [r4, r0]
	bl FUN_02015A54
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x14
	adds r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235C00:
	adds r0, r4, #0
	bl ov97_02235178
	movs r0, #0xc
	str r0, [r5]
	b _02235C8A
_02235C0C:
	adds r0, r4, #0
	bl ov97_02233B8C
	adds r6, r0, #0
	cmp r6, #0xa
	beq _02235C8A
	ldr r0, _02235CB4 @ =0x0000E898
	ldr r0, [r4, r0]
	bl FUN_0200EBA0
	ldr r0, _02235CB8 @ =0x0000061B
	bl FUN_02005748
	cmp r6, #0xb
	bne _02235C2E
	movs r1, #0x1d
	b _02235C30
_02235C2E:
	movs r1, #0x24
_02235C30:
	movs r0, #0x46
	lsls r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _02235CBC @ =0x0000042C
	adds r0, r4, #0
	adds r1, r4, r1
	movs r2, #0
	bl ov97_02233DD0
	movs r0, #0x16
	str r0, [r5]
	movs r0, #4
	bl FUN_02017DF0
	b _02235C8A
_02235C4E:
	ldr r0, _02235CC0 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _02235C5E
	ldr r0, _02235CC4 @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02235C8A
_02235C5E:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	adds r3, r5, #0
	bl ov97_02234CF4
	ldr r0, _02235C9C @ =0x000005DC
	bl FUN_02005748
	b _02235C8A
_02235C72:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _02235C8A
	ldr r0, [r4, #0x24]
	str r0, [r5]
	b _02235C8A
_02235C80:
	adds r0, r4, #0
	bl ov97_022351F0
	movs r0, #1
	pop {r4, r5, r6, pc}
_02235C8A:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02235C94
	bl FUN_020219F8
_02235C94:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02235C98: .4byte 0x0000E884
_02235C9C: .4byte 0x000005DC
_02235CA0: .4byte 0x00000498
_02235CA4: .4byte 0x0000E888
_02235CA8: .4byte 0x0000E88C
_02235CAC: .4byte 0x0223EA68
_02235CB0: .4byte 0x0000E890
_02235CB4: .4byte 0x0000E898
_02235CB8: .4byte 0x0000061B
_02235CBC: .4byte 0x0000042C
_02235CC0: .4byte 0x021BF6BC
_02235CC4: .4byte 0x021BF67C
	thumb_func_end ov97_022356E8

	thumb_func_start ov97_02235CC8
ov97_02235CC8: @ 0x02235CC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _02235D08 @ =0x00012608
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _02235D0C @ =0x0001260C
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, [r4, #0x20]
	bl FUN_020181C4
	ldr r0, _02235D10 @ =0x0000004D
	ldr r1, _02235D14 @ =0x021D742C
	bl FUN_02000EC4
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x4e
	bl FUN_0201807C
	movs r0, #0
	bl ov97_02238400
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_02235D08: .4byte 0x00012608
_02235D0C: .4byte 0x0001260C
_02235D10: .4byte 0x0000004D
_02235D14: .4byte 0x021D742C
	thumb_func_end ov97_02235CC8

	thumb_func_start ov97_02235D18
ov97_02235D18: @ 0x02235D18
	push {r3, lr}
	movs r0, #1
	blx FUN_020D130C
	cmp r0, #0
	bne _02235D28
	movs r0, #1
	pop {r3, pc}
_02235D28:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov97_02235D18

	thumb_func_start ov97_02235D2C
ov97_02235D2C: @ 0x02235D2C
	push {r3, lr}
	ldr r1, _02235D88 @ =0x0223F438
	str r0, [r1, #8]
	ldr r0, _02235D8C @ =0x0223EBFC
	ldr r0, [r0]
	cmp r0, #0
	beq _02235D3E
	movs r0, #0xc
	pop {r3, pc}
_02235D3E:
	ldr r0, _02235D90 @ =0x0223D92C
	movs r1, #0x1e
	bl ov97_02235DC8
	cmp r0, #0
	bne _02235D86
	ldr r0, _02235D8C @ =0x0223EBFC
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02235D6E
	movs r0, #0x89
	ldr r1, _02235D94 @ =0x0223F4B8
	lsls r0, r0, #4
	str r0, [r1, #0x20]
	movs r0, #0xeb
	lsls r0, r0, #6
	str r0, [r1, #0x24]
	ldr r2, _02235D98 @ =0x00001220
	ldr r0, _02235D88 @ =0x0223F438
	str r2, [r0, #0x68]
	movs r0, #9
	str r0, [r1, #0x30]
	b _02235D78
_02235D6E:
	ldr r0, _02235D9C @ =0x08000100
	ldr r1, _02235DA0 @ =0x0223F450
	movs r2, #0xfc
	blx FUN_020D0CDC
_02235D78:
	bl ov97_02235D18
	cmp r0, #0
	bne _02235D84
	movs r0, #3
	pop {r3, pc}
_02235D84:
	movs r0, #0
_02235D86:
	pop {r3, pc}
	.align 2, 0
_02235D88: .4byte 0x0223F438
_02235D8C: .4byte 0x0223EBFC
_02235D90: .4byte 0x0223D92C
_02235D94: .4byte 0x0223F4B8
_02235D98: .4byte 0x00001220
_02235D9C: .4byte 0x08000100
_02235DA0: .4byte 0x0223F450
	thumb_func_end ov97_02235D2C

	thumb_func_start ov97_02235DA4
ov97_02235DA4: @ 0x02235DA4
	ldr r0, _02235DAC @ =0x0223EBFC
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_02235DAC: .4byte 0x0223EBFC
	thumb_func_end ov97_02235DA4

	thumb_func_start ov97_02235DB0
ov97_02235DB0: @ 0x02235DB0
	ldr r0, _02235DB8 @ =0x0223EBFC
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	bx lr
	.align 2, 0
_02235DB8: .4byte 0x0223EBFC
	thumb_func_end ov97_02235DB0

	thumb_func_start ov97_02235DBC
ov97_02235DBC: @ 0x02235DBC
	ldr r0, _02235DC4 @ =0x0223EBFC
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	bx lr
	.align 2, 0
_02235DC4: .4byte 0x0223EBFC
	thumb_func_end ov97_02235DBC

	thumb_func_start ov97_02235DC8
ov97_02235DC8: @ 0x02235DC8
	push {r3, r4, r5, lr}
	sub sp, #0xc0
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _02235E74 @ =0x0223EBFC
	movs r1, #0
	str r1, [r0]
	blx FUN_020D08C0
	cmp r0, #0
	bne _02235DE4
	add sp, #0xc0
	movs r0, #1
	pop {r3, r4, r5, pc}
_02235DE4:
	blx FUN_020D0928
	movs r2, #0
	cmp r4, #0
	ble _02235E08
	adds r3, r5, #0
_02235DF0:
	ldr r1, [r3]
	cmp r0, r1
	bne _02235E00
	lsls r0, r2, #3
	adds r1, r5, r0
	ldr r0, _02235E74 @ =0x0223EBFC
	str r1, [r0]
	b _02235E08
_02235E00:
	adds r2, r2, #1
	adds r3, #8
	cmp r2, r4
	blt _02235DF0
_02235E08:
	ldr r0, _02235E74 @ =0x0223EBFC
	ldr r0, [r0]
	cmp r0, #0
	bne _02235E16
	add sp, #0xc0
	movs r0, #2
	pop {r3, r4, r5, pc}
_02235E16:
	movs r0, #1
	blx FUN_020D0F48
	add r4, sp, #0
	movs r0, #2
	lsls r0, r0, #0x1a
	adds r1, r4, #0
	movs r2, #0xc0
	blx FUN_020D0CDC
	ldr r3, _02235E78 @ =0x0223EC04
	movs r2, #0
_02235E2E:
	adds r0, r4, r2
	ldrb r1, [r3]
	ldrb r0, [r0, #4]
	cmp r1, r0
	beq _02235E3E
	add sp, #0xc0
	movs r0, #4
	pop {r3, r4, r5, pc}
_02235E3E:
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, #0x9c
	blo _02235E2E
	movs r2, #0
	movs r1, #0xa0
_02235E4A:
	ldrb r0, [r4, r1]
	adds r1, r1, #1
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r1, #0xbc
	ble _02235E4A
	adds r2, #0x19
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	adds r4, #0xbd
	lsrs r1, r0, #0x18
	ldrb r0, [r4]
	cmp r0, r1
	beq _02235E6E
	add sp, #0xc0
	movs r0, #4
	pop {r3, r4, r5, pc}
_02235E6E:
	movs r0, #0
	add sp, #0xc0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02235E74: .4byte 0x0223EBFC
_02235E78: .4byte 0x0223EC04
	thumb_func_end ov97_02235DC8

	thumb_func_start ov97_02235E7C
ov97_02235E7C: @ 0x02235E7C
	push {r3, r4}
	movs r2, #0
	lsrs r4, r1, #2
	adds r3, r2, #0
	cmp r4, #0
	ble _02235E98
_02235E88:
	ldr r1, [r0]
	adds r0, r0, #4
	adds r2, r2, r1
	adds r1, r3, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	cmp r3, r4
	blt _02235E88
_02235E98:
	lsrs r0, r2, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r3, r4}
	bx lr
	thumb_func_end ov97_02235E7C

	thumb_func_start ov97_02235EAC
ov97_02235EAC: @ 0x02235EAC
	push {r3, lr}
	lsls r0, r0, #0x10
	movs r3, #1
	adds r2, r1, #0
	lsrs r0, r0, #0x10
	movs r1, #0
	lsls r3, r3, #0xc
	blx FUN_020D1A6C
	pop {r3, pc}
	thumb_func_end ov97_02235EAC

	thumb_func_start ov97_02235EC0
ov97_02235EC0: @ 0x02235EC0
	cmp r0, #0
	bne _02235ECE
	ldr r0, _02235EF4 @ =0x0223F4B8
	ldr r0, [r0, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
_02235ECE:
	cmp r0, #4
	bne _02235EE2
	ldr r0, _02235EF4 @ =0x0223F4B8
	ldr r1, [r0, #0x24]
	movs r0, #0xba
	lsls r0, r0, #6
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
_02235EE2:
	cmp r0, #0xd
	bne _02235EEC
	movs r0, #0x7d
	lsls r0, r0, #4
	bx lr
_02235EEC:
	movs r0, #0x3e
	lsls r0, r0, #6
	bx lr
	nop
_02235EF4: .4byte 0x0223F4B8
	thumb_func_end ov97_02235EC0

	thumb_func_start ov97_02235EF8
ov97_02235EF8: @ 0x02235EF8
	cmp r0, #0
	bne _02235F08
	ldr r0, _02235F48 @ =0x0223F438
	ldr r1, [r0, #8]
	movs r0, #1
	lsls r0, r0, #0xc
	adds r0, r1, r0
	bx lr
_02235F08:
	cmp r0, #1
	blt _02235F26
	cmp r0, #4
	bgt _02235F26
	ldr r1, _02235F48 @ =0x0223F438
	ldr r2, [r1, #8]
	movs r1, #2
	lsls r1, r1, #0xc
	adds r2, r2, r1
	subs r1, r0, #1
	movs r0, #0x3e
	lsls r0, r0, #6
	muls r0, r1, r0
	adds r0, r2, r0
	bx lr
_02235F26:
	cmp r0, #5
	blt _02235F44
	cmp r0, #0xe
	bge _02235F44
	ldr r1, _02235F48 @ =0x0223F438
	ldr r2, [r1, #8]
	movs r1, #6
	lsls r1, r1, #0xc
	adds r2, r2, r1
	subs r1, r0, #5
	movs r0, #0x3e
	lsls r0, r0, #6
	muls r0, r1, r0
	adds r0, r2, r0
	bx lr
_02235F44:
	movs r0, #0
	bx lr
	.align 2, 0
_02235F48: .4byte 0x0223F438
	thumb_func_end ov97_02235EF8

	thumb_func_start ov97_02235F4C
ov97_02235F4C: @ 0x02235F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r6, #0
	adds r5, r1, #0
	str r6, [sp, #4]
	adds r1, r2, #0
	str r6, [r1]
	ldr r1, _02235FE0 @ =0x0223F438
	adds r7, r0, #0
	str r6, [r1, #4]
	movs r1, #0xe
	str r2, [sp]
	adds r4, r6, #0
	muls r7, r1, r7
_02235F68:
	adds r0, r4, #0
	movs r1, #0xe
	blx FUN_020E1F6C
	adds r0, r1, r7
	adds r1, r5, #0
	bl ov97_02235EAC
	movs r1, #1
	adds r0, r5, #0
	lsls r1, r1, #0xc
	blx FUN_020C2C54
	ldr r0, _02235FE4 @ =0x00000FF8
	ldr r1, [r5, r0]
	ldr r0, _02235FE8 @ =0x08012025
	cmp r1, r0
	bne _02235FBA
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02235FEC @ =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov97_02235EC0
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov97_02235E7C
	ldr r1, _02235FF0 @ =0x00000FF6
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _02235FBA
	ldr r0, _02235FF4 @ =0x00000FFC
	ldr r1, [r5, r0]
	ldr r0, [sp]
	str r1, [r0]
	ldr r0, _02235FEC @ =0x00000FF4
	ldrh r1, [r5, r0]
	movs r0, #1
	lsls r0, r1
	orrs r6, r0
_02235FBA:
	adds r4, r4, #1
	cmp r4, #0xe
	blt _02235F68
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02235FD8
	ldr r0, _02235FF8 @ =0x00003FFF
	cmp r6, r0
	bne _02235FD2
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02235FD2:
	add sp, #8
	movs r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_02235FD8:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235FE0: .4byte 0x0223F438
_02235FE4: .4byte 0x00000FF8
_02235FE8: .4byte 0x08012025
_02235FEC: .4byte 0x00000FF4
_02235FF0: .4byte 0x00000FF6
_02235FF4: .4byte 0x00000FFC
_02235FF8: .4byte 0x00003FFF
	thumb_func_end ov97_02235F4C

	thumb_func_start ov97_02235FFC
ov97_02235FFC: @ 0x02235FFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r0, #0
	adds r1, r7, #0
	add r2, sp, #4
	bl ov97_02235F4C
	adds r6, r0, #0
	movs r0, #1
	adds r1, r7, #0
	add r2, sp, #0
	bl ov97_02235F4C
	cmp r6, #1
	bne _02236074
	cmp r0, #1
	bne _02236074
	movs r1, #0
	ldr r0, [sp, #4]
	mvns r1, r1
	cmp r0, r1
	bne _02236034
	ldr r3, [sp]
	cmp r3, #0
	beq _02236042
_02236034:
	cmp r0, #0
	bne _0223605A
	movs r1, #0
	ldr r3, [sp]
	mvns r1, r1
	cmp r3, r1
	bne _0223605A
_02236042:
	adds r2, r0, #1
	adds r1, r3, #1
	cmp r2, r1
	bhs _02236052
	str r3, [r4]
	movs r0, #1
	str r0, [r5]
	b _0223606E
_02236052:
	str r0, [r4]
	movs r0, #0
	str r0, [r5]
	b _0223606E
_0223605A:
	ldr r1, [sp]
	cmp r0, r1
	bhs _02236068
	str r1, [r4]
	movs r0, #1
	str r0, [r5]
	b _0223606E
_02236068:
	str r0, [r4]
	movs r0, #0
	str r0, [r5]
_0223606E:
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02236074:
	cmp r6, #1
	bne _02236098
	cmp r0, #1
	beq _02236098
	ldr r1, [sp, #4]
	cmp r0, #0xff
	str r1, [r4]
	bne _0223608E
	movs r0, #0
	str r0, [r5]
	add sp, #8
	movs r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_0223608E:
	movs r0, #0
	str r0, [r5]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02236098:
	cmp r0, #1
	bne _022360BA
	cmp r6, #1
	beq _022360BA
	ldr r0, [sp]
	cmp r6, #0xff
	str r0, [r4]
	bne _022360B2
	movs r0, #1
	str r0, [r5]
	add sp, #8
	movs r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_022360B2:
	movs r0, #1
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022360BA:
	cmp r6, #0
	bne _022360CC
	cmp r0, #0
	bne _022360CC
	movs r0, #0
	str r0, [r4]
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022360CC:
	movs r0, #0
	str r0, [r4]
	str r0, [r5]
	movs r0, #2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02235FFC

	thumb_func_start ov97_022360D8
ov97_022360D8: @ 0x022360D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0223618C @ =0x0223F438
	ldr r1, _02236190 @ =0x0223F438
	ldr r0, [r0, #8]
	ldr r2, _02236194 @ =0x0223F448
	bl ov97_02235FFC
	cmp r0, #1
	beq _02236102
	cmp r0, #0
	beq _022360FA
	cmp r0, #2
	beq _022360FE
	cmp r0, #0xff
	bne _02236102
	movs r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022360FA:
	movs r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_022360FE:
	movs r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02236102:
	ldr r7, _0223618C @ =0x0223F438
	ldr r0, [r7]
	cmp r0, #1
	bhi _02236186
	movs r6, #0
	ldr r5, [r7, #8]
	adds r4, r6, #0
_02236110:
	ldr r1, [r7]
	movs r0, #0xe
	muls r0, r1, r0
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov97_02235EAC
	ldr r0, _02236198 @ =0x00000FF8
	ldr r1, [r5, r0]
	ldr r0, _0223619C @ =0x08012025
	cmp r1, r0
	bne _02236172
	ldr r0, _022361A0 @ =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov97_02235EC0
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov97_02235E7C
	ldr r1, _022361A4 @ =0x00000FF6
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _02236172
	ldr r0, _022361A8 @ =0x00000FFC
	movs r1, #1
	ldr r0, [r5, r0]
	str r0, [r7, #0x10]
	ldr r0, _022361A0 @ =0x00000FF4
	ldrh r0, [r5, r0]
	lsls r1, r0
	orrs r6, r1
	bl ov97_02235EC0
	str r0, [sp]
	ldr r0, _022361A0 @ =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov97_02235EF8
	adds r1, r0, #0
	ldr r2, [sp]
	adds r0, r5, #0
	blx FUN_020C4B68
	ldr r0, _022361A0 @ =0x00000FF4
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02236172
	str r4, [r7, #0xc]
_02236172:
	adds r4, r4, #1
	cmp r4, #0xe
	blt _02236110
	ldr r0, _022361AC @ =0x00003FFF
	cmp r6, r0
	bne _02236182
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02236182:
	movs r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02236186:
	movs r0, #6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223618C: .4byte 0x0223F438
_02236190: .4byte 0x0223F438
_02236194: .4byte 0x0223F448
_02236198: .4byte 0x00000FF8
_0223619C: .4byte 0x08012025
_022361A0: .4byte 0x00000FF4
_022361A4: .4byte 0x00000FF6
_022361A8: .4byte 0x00000FFC
_022361AC: .4byte 0x00003FFF
	thumb_func_end ov97_022360D8

	thumb_func_start ov97_022361B0
ov97_022361B0: @ 0x022361B0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0223622C @ =0x0223F438
	movs r2, #1
	ldr r5, [r0, #8]
	str r2, [r0, #0x14]
	movs r0, #0
	adds r1, r5, #0
	lsls r2, r2, #0xc
	blx FUN_020C4B4C
	adds r0, r6, #0
	bl ov97_02235EC0
	adds r4, r0, #0
	adds r0, r6, #0
	bl ov97_02235EF8
	adds r1, r5, #0
	adds r2, r4, #0
	blx FUN_020C4B68
	ldr r0, _0223622C @ =0x0223F438
	ldr r1, [r0, #0x10]
	ldr r0, _02236230 @ =0x00000FFC
	str r1, [r5, r0]
	adds r1, r0, #0
	subs r1, #8
	strh r6, [r5, r1]
	ldr r1, _02236234 @ =0x08012025
	subs r0, r0, #4
	str r1, [r5, r0]
	adds r0, r6, #0
	bl ov97_02235EC0
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov97_02235E7C
	ldr r1, _02236238 @ =0x00000FF6
	strh r0, [r5, r1]
	ldr r0, _0223622C @ =0x0223F438
	movs r1, #0xe
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	adds r0, r0, #1
	blx FUN_020E1F6C
	ldr r0, _0223623C @ =0x0223EBFC
	ldr r3, _02236240 @ =ov97_02236244
	ldr r2, [r0, #4]
	movs r0, #0xe
	muls r0, r2, r0
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	movs r2, #4
	blx FUN_020D1AD0
	pop {r4, r5, r6, pc}
	nop
_0223622C: .4byte 0x0223F438
_02236230: .4byte 0x00000FFC
_02236234: .4byte 0x08012025
_02236238: .4byte 0x00000FF6
_0223623C: .4byte 0x0223EBFC
_02236240: .4byte ov97_02236244
	thumb_func_end ov97_022361B0

	thumb_func_start ov97_02236244
ov97_02236244: @ 0x02236244
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02236270
	ldr r1, _0223627C @ =0x0223F438
	ldr r0, [r1, #4]
	adds r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0xe
	blt _0223625E
	movs r0, #0
	str r0, [r1, #4]
	str r0, [r1, #0x14]
	bx lr
_0223625E:
	cmp r0, #0xd
	bne _0223626A
	movs r0, #2
	str r0, [r1, #0x14]
	movs r0, #0
	bx lr
_0223626A:
	movs r0, #3
	str r0, [r1, #0x14]
	b _02236276
_02236270:
	ldr r0, _0223627C @ =0x0223F438
	movs r1, #4
	str r1, [r0, #0x14]
_02236276:
	movs r0, #0
	bx lr
	nop
_0223627C: .4byte 0x0223F438
	thumb_func_end ov97_02236244

	thumb_func_start ov97_02236280
ov97_02236280: @ 0x02236280
	push {r3, lr}
	ldr r1, _022362C0 @ =0x0223F438
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _022362A6
	ldr r1, [r1]
	cmp r1, #1
	bne _02236296
	movs r2, #0
	ldr r1, _022362C4 @ =0x0223EBFC
	b _0223629A
_02236296:
	ldr r1, _022362C4 @ =0x0223EBFC
	movs r2, #1
_0223629A:
	str r2, [r1, #4]
	ldr r1, _022362C0 @ =0x0223F438
	ldr r2, [r1, #0x10]
	adds r2, r2, #1
	str r2, [r1, #0x10]
	b _022362AA
_022362A6:
	movs r0, #0
	pop {r3, pc}
_022362AA:
	ldr r1, _022362C4 @ =0x0223EBFC
	ldr r1, [r1, #4]
	cmp r1, #0
	bge _022362B6
	movs r0, #0
	pop {r3, pc}
_022362B6:
	bl ov97_022361B0
	movs r0, #1
	pop {r3, pc}
	nop
_022362C0: .4byte 0x0223F438
_022362C4: .4byte 0x0223EBFC
	thumb_func_end ov97_02236280

	thumb_func_start ov97_022362C8
ov97_022362C8: @ 0x022362C8
	push {r3, lr}
	ldr r1, _02236304 @ =0x0223F438
	ldr r0, [r1, #0x14]
	cmp r0, #4
	bhi _02236300
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022362DE: @ jump table
	.2byte _02236300 - _022362DE - 2 @ case 0
	.2byte _022362F8 - _022362DE - 2 @ case 1
	.2byte _022362E8 - _022362DE - 2 @ case 2
	.2byte _022362F2 - _022362DE - 2 @ case 3
	.2byte _022362FC - _022362DE - 2 @ case 4
_022362E8:
	ldr r0, [r1, #4]
	bl ov97_022361B0
	movs r0, #0
	pop {r3, pc}
_022362F2:
	ldr r0, [r1, #4]
	bl ov97_022361B0
_022362F8:
	movs r0, #0xa
	pop {r3, pc}
_022362FC:
	movs r0, #8
	pop {r3, pc}
_02236300:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_02236304: .4byte 0x0223F438
	thumb_func_end ov97_022362C8

	thumb_func_start ov97_02236308
ov97_02236308: @ 0x02236308
	ldr r0, _0223633C @ =0x0223F438
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bhi _02236336
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223631C: @ jump table
	.2byte _02236336 - _0223631C - 2 @ case 0
	.2byte _0223632E - _0223631C - 2 @ case 1
	.2byte _02236326 - _0223631C - 2 @ case 2
	.2byte _0223632A - _0223631C - 2 @ case 3
	.2byte _02236332 - _0223631C - 2 @ case 4
_02236326:
	movs r0, #0xb
	bx lr
_0223632A:
	movs r0, #0xa
	bx lr
_0223632E:
	movs r0, #9
	bx lr
_02236332:
	movs r0, #8
	bx lr
_02236336:
	movs r0, #0
	bx lr
	nop
_0223633C: .4byte 0x0223F438
	thumb_func_end ov97_02236308

	thumb_func_start ov97_02236340
ov97_02236340: @ 0x02236340
	ldr r0, _0223634C @ =0x0223F438
	ldr r1, [r0, #8]
	movs r0, #6
	lsls r0, r0, #0xc
	adds r0, r1, r0
	bx lr
	.align 2, 0
_0223634C: .4byte 0x0223F438
	thumb_func_end ov97_02236340

	thumb_func_start ov97_02236350
ov97_02236350: @ 0x02236350
	ldr r3, _02236358 @ =ov97_02235EF8
	movs r0, #0
	bx r3
	nop
_02236358: .4byte ov97_02235EF8
	thumb_func_end ov97_02236350

	thumb_func_start ov97_0223635C
ov97_0223635C: @ 0x0223635C
	push {r3, lr}
	bl ov97_02236350
	ldrb r2, [r0, #0xb]
	ldrb r1, [r0, #0xa]
	lsls r3, r2, #8
	ldrb r2, [r0, #0xd]
	ldrb r0, [r0, #0xc]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x10
	orrs r0, r2
	orrs r0, r3
	orrs r0, r1
	pop {r3, pc}
	thumb_func_end ov97_0223635C

	thumb_func_start ov97_02236378
ov97_02236378: @ 0x02236378
	ldr r3, _0223637C @ =ov97_02236350
	bx r3
	.align 2, 0
_0223637C: .4byte ov97_02236350
	thumb_func_end ov97_02236378

	thumb_func_start ov97_02236380
ov97_02236380: @ 0x02236380
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #0x18
	adds r5, r2, #0
	movs r6, #0
	blx FUN_020E2178
	cmp r1, #0x17
	bhi _022363D6
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022363A0: @ jump table
	.2byte _022363D0 - _022363A0 - 2 @ case 0
	.2byte _02236402 - _022363A0 - 2 @ case 1
	.2byte _02236432 - _022363A0 - 2 @ case 2
	.2byte _02236462 - _022363A0 - 2 @ case 3
	.2byte _02236492 - _022363A0 - 2 @ case 4
	.2byte _022364C2 - _022363A0 - 2 @ case 5
	.2byte _022364F2 - _022363A0 - 2 @ case 6
	.2byte _02236524 - _022363A0 - 2 @ case 7
	.2byte _02236554 - _022363A0 - 2 @ case 8
	.2byte _02236584 - _022363A0 - 2 @ case 9
	.2byte _022365B4 - _022363A0 - 2 @ case 10
	.2byte _022365E4 - _022363A0 - 2 @ case 11
	.2byte _02236614 - _022363A0 - 2 @ case 12
	.2byte _02236646 - _022363A0 - 2 @ case 13
	.2byte _02236676 - _022363A0 - 2 @ case 14
	.2byte _022366A6 - _022363A0 - 2 @ case 15
	.2byte _022366D6 - _022363A0 - 2 @ case 16
	.2byte _02236706 - _022363A0 - 2 @ case 17
	.2byte _02236736 - _022363A0 - 2 @ case 18
	.2byte _02236768 - _022363A0 - 2 @ case 19
	.2byte _02236798 - _022363A0 - 2 @ case 20
	.2byte _022367C8 - _022363A0 - 2 @ case 21
	.2byte _022367F8 - _022363A0 - 2 @ case 22
	.2byte _02236828 - _022363A0 - 2 @ case 23
_022363D0:
	adds r4, #0x20
	cmp r5, #3
	bls _022363D8
_022363D6:
	b _02236856
_022363D8:
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022363E4: @ jump table
	.2byte _022363EC - _022363E4 - 2 @ case 0
	.2byte _022363F0 - _022363E4 - 2 @ case 1
	.2byte _022363F6 - _022363E4 - 2 @ case 2
	.2byte _022363FC - _022363E4 - 2 @ case 3
_022363EC:
	adds r6, r4, #0
	b _02236856
_022363F0:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_022363F6:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_022363FC:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236402:
	adds r4, #0x20
	cmp r5, #3
	bhi _022364F8
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236414: @ jump table
	.2byte _0223641C - _02236414 - 2 @ case 0
	.2byte _02236420 - _02236414 - 2 @ case 1
	.2byte _02236426 - _02236414 - 2 @ case 2
	.2byte _0223642C - _02236414 - 2 @ case 3
_0223641C:
	adds r6, r4, #0
	b _02236856
_02236420:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236426:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_0223642C:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_02236432:
	adds r4, #0x20
	cmp r5, #3
	bhi _022364F8
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236444: @ jump table
	.2byte _0223644C - _02236444 - 2 @ case 0
	.2byte _02236450 - _02236444 - 2 @ case 1
	.2byte _02236456 - _02236444 - 2 @ case 2
	.2byte _0223645C - _02236444 - 2 @ case 3
_0223644C:
	adds r6, r4, #0
	b _02236856
_02236450:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_02236456:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_0223645C:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236462:
	adds r4, #0x20
	cmp r5, #3
	bhi _022364F8
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236474: @ jump table
	.2byte _0223647C - _02236474 - 2 @ case 0
	.2byte _02236480 - _02236474 - 2 @ case 1
	.2byte _02236486 - _02236474 - 2 @ case 2
	.2byte _0223648C - _02236474 - 2 @ case 3
_0223647C:
	adds r6, r4, #0
	b _02236856
_02236480:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236486:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_0223648C:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_02236492:
	adds r4, #0x20
	cmp r5, #3
	bhi _022364F8
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022364A4: @ jump table
	.2byte _022364AC - _022364A4 - 2 @ case 0
	.2byte _022364B0 - _022364A4 - 2 @ case 1
	.2byte _022364B6 - _022364A4 - 2 @ case 2
	.2byte _022364BC - _022364A4 - 2 @ case 3
_022364AC:
	adds r6, r4, #0
	b _02236856
_022364B0:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_022364B6:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_022364BC:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_022364C2:
	adds r4, #0x20
	cmp r5, #3
	bhi _022364F8
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022364D4: @ jump table
	.2byte _022364DC - _022364D4 - 2 @ case 0
	.2byte _022364E0 - _022364D4 - 2 @ case 1
	.2byte _022364E6 - _022364D4 - 2 @ case 2
	.2byte _022364EC - _022364D4 - 2 @ case 3
_022364DC:
	adds r6, r4, #0
	b _02236856
_022364E0:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_022364E6:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_022364EC:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_022364F2:
	adds r4, #0x20
	cmp r5, #3
	bls _022364FA
_022364F8:
	b _02236856
_022364FA:
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236506: @ jump table
	.2byte _0223650E - _02236506 - 2 @ case 0
	.2byte _02236514 - _02236506 - 2 @ case 1
	.2byte _02236518 - _02236506 - 2 @ case 2
	.2byte _0223651E - _02236506 - 2 @ case 3
_0223650E:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236514:
	adds r6, r4, #0
	b _02236856
_02236518:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_0223651E:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236524:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223661A
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236536: @ jump table
	.2byte _0223653E - _02236536 - 2 @ case 0
	.2byte _02236544 - _02236536 - 2 @ case 1
	.2byte _02236548 - _02236536 - 2 @ case 2
	.2byte _0223654E - _02236536 - 2 @ case 3
_0223653E:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236544:
	adds r6, r4, #0
	b _02236856
_02236548:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_0223654E:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_02236554:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223661A
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236566: @ jump table
	.2byte _0223656E - _02236566 - 2 @ case 0
	.2byte _02236574 - _02236566 - 2 @ case 1
	.2byte _02236578 - _02236566 - 2 @ case 2
	.2byte _0223657E - _02236566 - 2 @ case 3
_0223656E:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_02236574:
	adds r6, r4, #0
	b _02236856
_02236578:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_0223657E:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236584:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223661A
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236596: @ jump table
	.2byte _0223659E - _02236596 - 2 @ case 0
	.2byte _022365A4 - _02236596 - 2 @ case 1
	.2byte _022365A8 - _02236596 - 2 @ case 2
	.2byte _022365AE - _02236596 - 2 @ case 3
_0223659E:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_022365A4:
	adds r6, r4, #0
	b _02236856
_022365A8:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_022365AE:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_022365B4:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223661A
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022365C6: @ jump table
	.2byte _022365CE - _022365C6 - 2 @ case 0
	.2byte _022365D4 - _022365C6 - 2 @ case 1
	.2byte _022365D8 - _022365C6 - 2 @ case 2
	.2byte _022365DE - _022365C6 - 2 @ case 3
_022365CE:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_022365D4:
	adds r6, r4, #0
	b _02236856
_022365D8:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_022365DE:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_022365E4:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223661A
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022365F6: @ jump table
	.2byte _022365FE - _022365F6 - 2 @ case 0
	.2byte _02236604 - _022365F6 - 2 @ case 1
	.2byte _02236608 - _022365F6 - 2 @ case 2
	.2byte _0223660E - _022365F6 - 2 @ case 3
_022365FE:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236604:
	adds r6, r4, #0
	b _02236856
_02236608:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_0223660E:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236614:
	adds r4, #0x20
	cmp r5, #3
	bls _0223661C
_0223661A:
	b _02236856
_0223661C:
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236628: @ jump table
	.2byte _02236630 - _02236628 - 2 @ case 0
	.2byte _02236636 - _02236628 - 2 @ case 1
	.2byte _0223663C - _02236628 - 2 @ case 2
	.2byte _02236640 - _02236628 - 2 @ case 3
_02236630:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236636:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_0223663C:
	adds r6, r4, #0
	b _02236856
_02236640:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236646:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223673C
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236658: @ jump table
	.2byte _02236660 - _02236658 - 2 @ case 0
	.2byte _02236666 - _02236658 - 2 @ case 1
	.2byte _0223666C - _02236658 - 2 @ case 2
	.2byte _02236670 - _02236658 - 2 @ case 3
_02236660:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236666:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_0223666C:
	adds r6, r4, #0
	b _02236856
_02236670:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_02236676:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223673C
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236688: @ jump table
	.2byte _02236690 - _02236688 - 2 @ case 0
	.2byte _02236696 - _02236688 - 2 @ case 1
	.2byte _0223669C - _02236688 - 2 @ case 2
	.2byte _022366A0 - _02236688 - 2 @ case 3
_02236690:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_02236696:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_0223669C:
	adds r6, r4, #0
	b _02236856
_022366A0:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_022366A6:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223673C
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022366B8: @ jump table
	.2byte _022366C0 - _022366B8 - 2 @ case 0
	.2byte _022366C6 - _022366B8 - 2 @ case 1
	.2byte _022366CC - _022366B8 - 2 @ case 2
	.2byte _022366D0 - _022366B8 - 2 @ case 3
_022366C0:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_022366C6:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_022366CC:
	adds r6, r4, #0
	b _02236856
_022366D0:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_022366D6:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223673C
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022366E8: @ jump table
	.2byte _022366F0 - _022366E8 - 2 @ case 0
	.2byte _022366F6 - _022366E8 - 2 @ case 1
	.2byte _022366FC - _022366E8 - 2 @ case 2
	.2byte _02236700 - _022366E8 - 2 @ case 3
_022366F0:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_022366F6:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_022366FC:
	adds r6, r4, #0
	b _02236856
_02236700:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236706:
	adds r4, #0x20
	cmp r5, #3
	bhi _0223673C
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236718: @ jump table
	.2byte _02236720 - _02236718 - 2 @ case 0
	.2byte _02236726 - _02236718 - 2 @ case 1
	.2byte _0223672C - _02236718 - 2 @ case 2
	.2byte _02236730 - _02236718 - 2 @ case 3
_02236720:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236726:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_0223672C:
	adds r6, r4, #0
	b _02236856
_02236730:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236736:
	adds r4, #0x20
	cmp r5, #3
	bls _0223673E
_0223673C:
	b _02236856
_0223673E:
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223674A: @ jump table
	.2byte _02236752 - _0223674A - 2 @ case 0
	.2byte _02236758 - _0223674A - 2 @ case 1
	.2byte _0223675E - _0223674A - 2 @ case 2
	.2byte _02236764 - _0223674A - 2 @ case 3
_02236752:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236758:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_0223675E:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236764:
	adds r6, r4, #0
	b _02236856
_02236768:
	adds r4, #0x20
	cmp r5, #3
	bhi _02236856
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223677A: @ jump table
	.2byte _02236782 - _0223677A - 2 @ case 0
	.2byte _02236788 - _0223677A - 2 @ case 1
	.2byte _0223678E - _0223677A - 2 @ case 2
	.2byte _02236794 - _0223677A - 2 @ case 3
_02236782:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236788:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_0223678E:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_02236794:
	adds r6, r4, #0
	b _02236856
_02236798:
	adds r4, #0x20
	cmp r5, #3
	bhi _02236856
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022367AA: @ jump table
	.2byte _022367B2 - _022367AA - 2 @ case 0
	.2byte _022367B8 - _022367AA - 2 @ case 1
	.2byte _022367BE - _022367AA - 2 @ case 2
	.2byte _022367C4 - _022367AA - 2 @ case 3
_022367B2:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_022367B8:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_022367BE:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_022367C4:
	adds r6, r4, #0
	b _02236856
_022367C8:
	adds r4, #0x20
	cmp r5, #3
	bhi _02236856
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022367DA: @ jump table
	.2byte _022367E2 - _022367DA - 2 @ case 0
	.2byte _022367E8 - _022367DA - 2 @ case 1
	.2byte _022367EE - _022367DA - 2 @ case 2
	.2byte _022367F4 - _022367DA - 2 @ case 3
_022367E2:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_022367E8:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_022367EE:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_022367F4:
	adds r6, r4, #0
	b _02236856
_022367F8:
	adds r4, #0x20
	cmp r5, #3
	bhi _02236856
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223680A: @ jump table
	.2byte _02236812 - _0223680A - 2 @ case 0
	.2byte _02236818 - _0223680A - 2 @ case 1
	.2byte _0223681E - _0223680A - 2 @ case 2
	.2byte _02236824 - _0223680A - 2 @ case 3
_02236812:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_02236818:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_0223681E:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236824:
	adds r6, r4, #0
	b _02236856
_02236828:
	adds r4, #0x20
	cmp r5, #3
	bhi _02236856
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223683A: @ jump table
	.2byte _02236842 - _0223683A - 2 @ case 0
	.2byte _02236848 - _0223683A - 2 @ case 1
	.2byte _0223684E - _0223683A - 2 @ case 2
	.2byte _02236854 - _0223683A - 2 @ case 3
_02236842:
	adds r6, r4, #0
	adds r6, #0x24
	b _02236856
_02236848:
	adds r6, r4, #0
	adds r6, #0x18
	b _02236856
_0223684E:
	adds r6, r4, #0
	adds r6, #0xc
	b _02236856
_02236854:
	adds r6, r4, #0
_02236856:
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov97_02236380

	thumb_func_start ov97_0223685C
ov97_0223685C: @ 0x0223685C
	push {r3, r4}
	adds r4, r0, #0
	movs r3, #0
	adds r4, #0x20
_02236864:
	ldr r2, [r4]
	ldr r1, [r0, #4]
	adds r3, r3, #1
	eors r2, r1
	str r2, [r4]
	ldr r1, [r0]
	eors r1, r2
	stm r4!, {r1}
	cmp r3, #0xc
	blo _02236864
	pop {r3, r4}
	bx lr
	thumb_func_end ov97_0223685C

	thumb_func_start ov97_0223687C
ov97_0223687C: @ 0x0223687C
	push {r3, r4}
	adds r4, r0, #0
	movs r3, #0
	adds r4, #0x20
_02236884:
	ldr r2, [r4]
	ldr r1, [r0]
	adds r3, r3, #1
	eors r2, r1
	str r2, [r4]
	ldr r1, [r0, #4]
	eors r1, r2
	stm r4!, {r1}
	cmp r3, #0xc
	blo _02236884
	pop {r3, r4}
	bx lr
	thumb_func_end ov97_0223687C

	thumb_func_start ov97_0223689C
ov97_0223689C: @ 0x0223689C
	push {r3, r4, r5, r6, r7, lr}
	adds r1, r0, #0
	movs r4, #0
	ldr r1, [r1]
	str r0, [sp]
	adds r2, r4, #0
	bl ov97_02236380
	adds r5, r0, #0
	ldr r0, [sp]
	movs r2, #1
	adds r1, r0, #0
	ldr r1, [r1]
	bl ov97_02236380
	adds r6, r0, #0
	ldr r0, [sp]
	movs r2, #2
	adds r1, r0, #0
	ldr r1, [r1]
	bl ov97_02236380
	adds r7, r0, #0
	ldr r0, [sp]
	movs r2, #3
	adds r1, r0, #0
	ldr r1, [r1]
	bl ov97_02236380
	adds r1, r4, #0
_022368D8:
	ldrh r2, [r5]
	adds r1, r1, #1
	adds r5, r5, #2
	adds r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	cmp r1, #6
	blt _022368D8
	movs r2, #0
_022368EA:
	ldrh r1, [r6]
	adds r2, r2, #1
	adds r6, r6, #2
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r2, #6
	blt _022368EA
	movs r2, #0
_022368FC:
	ldrh r1, [r7]
	adds r2, r2, #1
	adds r7, r7, #2
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r2, #6
	blt _022368FC
	movs r2, #0
_0223690E:
	ldrh r1, [r0]
	adds r2, r2, #1
	adds r0, r0, #2
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r2, #6
	blt _0223690E
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov97_0223689C

	thumb_func_start ov97_02236924
ov97_02236924: @ 0x02236924
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r4, #0
	adds r6, r0, #0
	str r1, [sp]
	adds r7, r2, #0
	adds r5, r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #8]
	str r4, [sp, #4]
	cmp r1, #0xa
	ble _0223699A
	ldr r1, [r6]
	adds r2, r4, #0
	bl ov97_02236380
	str r0, [sp, #0xc]
	ldr r1, [r6]
	adds r0, r6, #0
	movs r2, #1
	bl ov97_02236380
	str r0, [sp, #8]
	ldr r1, [r6]
	adds r0, r6, #0
	movs r2, #2
	bl ov97_02236380
	str r0, [sp, #4]
	ldr r1, [r6]
	adds r0, r6, #0
	movs r2, #3
	bl ov97_02236380
	adds r5, r0, #0
	adds r0, r6, #0
	bl ov97_0223685C
	adds r0, r6, #0
	bl ov97_0223689C
	ldrh r1, [r6, #0x1c]
	cmp r0, r1
	beq _0223699A
	ldrb r0, [r6, #0x13]
	movs r1, #1
	bics r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #0x13]
	ldrb r1, [r6, #0x13]
	movs r0, #4
	orrs r0, r1
	strb r0, [r6, #0x13]
	movs r0, #1
	ldr r1, [r5, #4]
	lsls r0, r0, #0x1e
	orrs r0, r1
	str r0, [r5, #4]
_0223699A:
	ldr r0, [sp]
	cmp r0, #0x50
	bls _022369A2
	b _02236C90
_022369A2:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022369AE: @ jump table
	.2byte _02236A50 - _022369AE - 2 @ case 0
	.2byte _02236A54 - _022369AE - 2 @ case 1
	.2byte _02236A58 - _022369AE - 2 @ case 2
	.2byte _02236A78 - _022369AE - 2 @ case 3
	.2byte _02236A7C - _022369AE - 2 @ case 4
	.2byte _02236A84 - _022369AE - 2 @ case 5
	.2byte _02236A8C - _022369AE - 2 @ case 6
	.2byte _02236A94 - _022369AE - 2 @ case 7
	.2byte _02236AA8 - _022369AE - 2 @ case 8
	.2byte _02236AAC - _022369AE - 2 @ case 9
	.2byte _02236AB0 - _022369AE - 2 @ case 10
	.2byte _02236AB4 - _022369AE - 2 @ case 11
	.2byte _02236AC8 - _022369AE - 2 @ case 12
	.2byte _02236AE0 - _022369AE - 2 @ case 13
	.2byte _02236AE0 - _022369AE - 2 @ case 14
	.2byte _02236AE0 - _022369AE - 2 @ case 15
	.2byte _02236AE0 - _022369AE - 2 @ case 16
	.2byte _02236AEC - _022369AE - 2 @ case 17
	.2byte _02236AEC - _022369AE - 2 @ case 18
	.2byte _02236AEC - _022369AE - 2 @ case 19
	.2byte _02236AEC - _022369AE - 2 @ case 20
	.2byte _02236AD4 - _022369AE - 2 @ case 21
	.2byte _02236B1C - _022369AE - 2 @ case 22
	.2byte _02236B22 - _022369AE - 2 @ case 23
	.2byte _02236B28 - _022369AE - 2 @ case 24
	.2byte _02236ACE - _022369AE - 2 @ case 25
	.2byte _02236AF8 - _022369AE - 2 @ case 26
	.2byte _02236AFE - _022369AE - 2 @ case 27
	.2byte _02236B04 - _022369AE - 2 @ case 28
	.2byte _02236B0A - _022369AE - 2 @ case 29
	.2byte _02236B10 - _022369AE - 2 @ case 30
	.2byte _02236B16 - _022369AE - 2 @ case 31
	.2byte _02236ADA - _022369AE - 2 @ case 32
	.2byte _02236B2E - _022369AE - 2 @ case 33
	.2byte _02236B40 - _022369AE - 2 @ case 34
	.2byte _02236B48 - _022369AE - 2 @ case 35
	.2byte _02236B50 - _022369AE - 2 @ case 36
	.2byte _02236B58 - _022369AE - 2 @ case 37
	.2byte _02236B60 - _022369AE - 2 @ case 38
	.2byte _02236B6E - _022369AE - 2 @ case 39
	.2byte _02236B76 - _022369AE - 2 @ case 40
	.2byte _02236B7E - _022369AE - 2 @ case 41
	.2byte _02236B86 - _022369AE - 2 @ case 42
	.2byte _02236B8E - _022369AE - 2 @ case 43
	.2byte _02236B96 - _022369AE - 2 @ case 44
	.2byte _02236B9E - _022369AE - 2 @ case 45
	.2byte _02236BA6 - _022369AE - 2 @ case 46
	.2byte _02236B34 - _022369AE - 2 @ case 47
	.2byte _02236B3A - _022369AE - 2 @ case 48
	.2byte _02236B68 - _022369AE - 2 @ case 49
	.2byte _02236BAC - _022369AE - 2 @ case 50
	.2byte _02236BB4 - _022369AE - 2 @ case 51
	.2byte _02236BBC - _022369AE - 2 @ case 52
	.2byte _02236BC4 - _022369AE - 2 @ case 53
	.2byte _02236BCC - _022369AE - 2 @ case 54
	.2byte _02236C90 - _022369AE - 2 @ case 55
	.2byte _02236C90 - _022369AE - 2 @ case 56
	.2byte _02236C90 - _022369AE - 2 @ case 57
	.2byte _02236C90 - _022369AE - 2 @ case 58
	.2byte _02236C90 - _022369AE - 2 @ case 59
	.2byte _02236C90 - _022369AE - 2 @ case 60
	.2byte _02236C90 - _022369AE - 2 @ case 61
	.2byte _02236C90 - _022369AE - 2 @ case 62
	.2byte _02236C90 - _022369AE - 2 @ case 63
	.2byte _02236C90 - _022369AE - 2 @ case 64
	.2byte _02236C42 - _022369AE - 2 @ case 65
	.2byte _02236C60 - _022369AE - 2 @ case 66
	.2byte _02236BD4 - _022369AE - 2 @ case 67
	.2byte _02236BDC - _022369AE - 2 @ case 68
	.2byte _02236BE4 - _022369AE - 2 @ case 69
	.2byte _02236BEC - _022369AE - 2 @ case 70
	.2byte _02236BF4 - _022369AE - 2 @ case 71
	.2byte _02236BFC - _022369AE - 2 @ case 72
	.2byte _02236C04 - _022369AE - 2 @ case 73
	.2byte _02236C0C - _022369AE - 2 @ case 74
	.2byte _02236C14 - _022369AE - 2 @ case 75
	.2byte _02236C1C - _022369AE - 2 @ case 76
	.2byte _02236C24 - _022369AE - 2 @ case 77
	.2byte _02236C2C - _022369AE - 2 @ case 78
	.2byte _02236C34 - _022369AE - 2 @ case 79
	.2byte _02236C3C - _022369AE - 2 @ case 80
_02236A50:
	ldr r4, [r6]
	b _02236C90
_02236A54:
	ldr r4, [r6, #4]
	b _02236C90
_02236A58:
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	beq _02236A64
	movs r4, #0
	b _02236A72
_02236A64:
	movs r4, #0
_02236A66:
	adds r0, r6, r4
	ldrb r0, [r0, #8]
	strb r0, [r7, r4]
	adds r4, r4, #1
	cmp r4, #0xa
	blo _02236A66
_02236A72:
	movs r0, #0xff
	strb r0, [r7, r4]
	b _02236C90
_02236A78:
	ldrb r4, [r6, #0x12]
	b _02236C90
_02236A7C:
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #0x1f
	lsrs r4, r0, #0x1f
	b _02236C90
_02236A84:
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #0x1e
	lsrs r4, r0, #0x1f
	b _02236C90
_02236A8C:
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #0x1d
	lsrs r4, r0, #0x1f
	b _02236C90
_02236A94:
	movs r4, #0
_02236A96:
	adds r0, r6, r4
	ldrb r0, [r0, #0x14]
	strb r0, [r7, r4]
	adds r4, r4, #1
	cmp r4, #7
	blo _02236A96
	movs r0, #0xff
	strb r0, [r7, r4]
	b _02236C90
_02236AA8:
	ldrb r4, [r6, #0x1b]
	b _02236C90
_02236AAC:
	ldrh r4, [r6, #0x1c]
	b _02236C90
_02236AB0:
	ldrh r4, [r6, #0x1e]
	b _02236C90
_02236AB4:
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	beq _02236AC2
	movs r4, #0x67
	lsls r4, r4, #2
	b _02236C90
_02236AC2:
	ldr r0, [sp, #0xc]
	ldrh r4, [r0]
	b _02236C90
_02236AC8:
	ldr r0, [sp, #0xc]
	ldrh r4, [r0, #2]
	b _02236C90
_02236ACE:
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #4]
	b _02236C90
_02236AD4:
	ldr r0, [sp, #0xc]
	ldrb r4, [r0, #8]
	b _02236C90
_02236ADA:
	ldr r0, [sp, #0xc]
	ldrb r4, [r0, #9]
	b _02236C90
_02236AE0:
	ldr r0, [sp]
	subs r0, #0xd
	lsls r1, r0, #1
	ldr r0, [sp, #8]
	ldrh r4, [r0, r1]
	b _02236C90
_02236AEC:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	subs r1, #0x11
	adds r0, r0, r1
	ldrb r4, [r0, #8]
	b _02236C90
_02236AF8:
	ldr r0, [sp, #4]
	ldrb r4, [r0]
	b _02236C90
_02236AFE:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #1]
	b _02236C90
_02236B04:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #2]
	b _02236C90
_02236B0A:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #3]
	b _02236C90
_02236B10:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #4]
	b _02236C90
_02236B16:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #5]
	b _02236C90
_02236B1C:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #6]
	b _02236C90
_02236B22:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #7]
	b _02236C90
_02236B28:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #8]
	b _02236C90
_02236B2E:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #9]
	b _02236C90
_02236B34:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #0xa]
	b _02236C90
_02236B3A:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #0xb]
	b _02236C90
_02236B40:
	ldr r0, [r5]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _02236C90
_02236B48:
	ldr r0, [r5]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x18
	b _02236C90
_02236B50:
	ldr r0, [r5]
	lsls r0, r0, #9
	lsrs r4, r0, #0x19
	b _02236C90
_02236B58:
	ldr r0, [r5]
	lsls r0, r0, #5
	lsrs r4, r0, #0x1c
	b _02236C90
_02236B60:
	ldr r0, [r5]
	lsls r0, r0, #1
	lsrs r4, r0, #0x1c
	b _02236C90
_02236B68:
	ldr r0, [r5]
	lsrs r4, r0, #0x1f
	b _02236C90
_02236B6E:
	ldr r0, [r5, #4]
	lsls r0, r0, #0x1b
	lsrs r4, r0, #0x1b
	b _02236C90
_02236B76:
	ldr r0, [r5, #4]
	lsls r0, r0, #0x16
	lsrs r4, r0, #0x1b
	b _02236C90
_02236B7E:
	ldr r0, [r5, #4]
	lsls r0, r0, #0x11
	lsrs r4, r0, #0x1b
	b _02236C90
_02236B86:
	ldr r0, [r5, #4]
	lsls r0, r0, #0xc
	lsrs r4, r0, #0x1b
	b _02236C90
_02236B8E:
	ldr r0, [r5, #4]
	lsls r0, r0, #7
	lsrs r4, r0, #0x1b
	b _02236C90
_02236B96:
	ldr r0, [r5, #4]
	lsls r0, r0, #2
	lsrs r4, r0, #0x1b
	b _02236C90
_02236B9E:
	ldr r0, [r5, #4]
	lsls r0, r0, #1
	lsrs r4, r0, #0x1f
	b _02236C90
_02236BA6:
	ldr r0, [r5, #4]
	lsrs r4, r0, #0x1f
	b _02236C90
_02236BAC:
	ldr r0, [r5, #8]
	lsls r0, r0, #0x1d
	lsrs r4, r0, #0x1d
	b _02236C90
_02236BB4:
	ldr r0, [r5, #8]
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x1d
	b _02236C90
_02236BBC:
	ldr r0, [r5, #8]
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1d
	b _02236C90
_02236BC4:
	ldr r0, [r5, #8]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x1d
	b _02236C90
_02236BCC:
	ldr r0, [r5, #8]
	lsls r0, r0, #0x11
	lsrs r4, r0, #0x1d
	b _02236C90
_02236BD4:
	ldr r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x1f
	b _02236C90
_02236BDC:
	ldr r0, [r5, #8]
	lsls r0, r0, #0xf
	lsrs r4, r0, #0x1f
	b _02236C90
_02236BE4:
	ldr r0, [r5, #8]
	lsls r0, r0, #0xe
	lsrs r4, r0, #0x1f
	b _02236C90
_02236BEC:
	ldr r0, [r5, #8]
	lsls r0, r0, #0xd
	lsrs r4, r0, #0x1f
	b _02236C90
_02236BF4:
	ldr r0, [r5, #8]
	lsls r0, r0, #0xc
	lsrs r4, r0, #0x1f
	b _02236C90
_02236BFC:
	ldr r0, [r5, #8]
	lsls r0, r0, #0xb
	lsrs r4, r0, #0x1f
	b _02236C90
_02236C04:
	ldr r0, [r5, #8]
	lsls r0, r0, #0xa
	lsrs r4, r0, #0x1f
	b _02236C90
_02236C0C:
	ldr r0, [r5, #8]
	lsls r0, r0, #9
	lsrs r4, r0, #0x1f
	b _02236C90
_02236C14:
	ldr r0, [r5, #8]
	lsls r0, r0, #8
	lsrs r4, r0, #0x1f
	b _02236C90
_02236C1C:
	ldr r0, [r5, #8]
	lsls r0, r0, #7
	lsrs r4, r0, #0x1f
	b _02236C90
_02236C24:
	ldr r0, [r5, #8]
	lsls r0, r0, #6
	lsrs r4, r0, #0x1f
	b _02236C90
_02236C2C:
	ldr r0, [r5, #8]
	lsls r0, r0, #5
	lsrs r4, r0, #0x1f
	b _02236C90
_02236C34:
	ldr r0, [r5, #8]
	lsls r0, r0, #1
	lsrs r4, r0, #0x1c
	b _02236C90
_02236C3C:
	ldr r0, [r5, #8]
	lsrs r4, r0, #0x1f
	b _02236C90
_02236C42:
	ldr r0, [sp, #0xc]
	ldrh r4, [r0]
	cmp r4, #0
	beq _02236C90
	ldr r0, [r5, #4]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1f
	bne _02236C5A
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	beq _02236C90
_02236C5A:
	movs r4, #0x67
	lsls r4, r4, #2
	b _02236C90
_02236C60:
	ldr r4, [r5, #4]
	lsls r0, r4, #2
	lsrs r0, r0, #0x1b
	lsls r5, r0, #0x19
	lsls r0, r4, #7
	lsrs r0, r0, #0x1b
	lsls r3, r0, #0x14
	lsls r0, r4, #0xc
	lsrs r0, r0, #0x1b
	lsls r2, r0, #0xf
	lsls r0, r4, #0x11
	lsrs r0, r0, #0x1b
	lsls r1, r0, #0xa
	lsls r0, r4, #0x1b
	lsls r4, r4, #0x16
	lsrs r4, r4, #0x1b
	lsrs r0, r0, #0x1b
	lsls r4, r4, #5
	orrs r0, r4
	orrs r0, r1
	orrs r0, r2
	orrs r0, r3
	adds r4, r5, #0
	orrs r4, r0
_02236C90:
	ldr r0, [sp]
	cmp r0, #0xa
	ble _02236C9C
	adds r0, r6, #0
	bl ov97_0223687C
_02236C9C:
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov97_02236924

	thumb_func_start ov97_02236CA4
ov97_02236CA4: @ 0x02236CA4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r4, r0, #0
	adds r5, r2, #0
	movs r7, #0
	cmp r6, #0xa
	ble _02236D18
	ldr r1, [r4]
	adds r2, r7, #0
	bl ov97_02236380
	adds r7, r0, #0
	ldr r1, [r4]
	adds r0, r4, #0
	movs r2, #1
	bl ov97_02236380
	ldr r1, [r4]
	adds r0, r4, #0
	movs r2, #2
	bl ov97_02236380
	ldr r1, [r4]
	adds r0, r4, #0
	movs r2, #3
	bl ov97_02236380
	str r0, [sp]
	adds r0, r4, #0
	bl ov97_0223685C
	adds r0, r4, #0
	bl ov97_0223689C
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _02236D18
	ldrb r1, [r4, #0x13]
	movs r0, #1
	bics r1, r0
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x13]
	ldrb r1, [r4, #0x13]
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0x13]
	ldr r0, [sp]
	ldr r1, [r0, #4]
	movs r0, #1
	lsls r0, r0, #0x1e
	orrs r1, r0
	ldr r0, [sp]
	str r1, [r0, #4]
	adds r0, r4, #0
	bl ov97_0223687C
	pop {r3, r4, r5, r6, r7, pc}
_02236D18:
	cmp r6, #0xb
	bhi _02236DBC
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236D28: @ jump table
	.2byte _02236DBC - _02236D28 - 2 @ case 0
	.2byte _02236DBC - _02236D28 - 2 @ case 1
	.2byte _02236D40 - _02236D28 - 2 @ case 2
	.2byte _02236D50 - _02236D28 - 2 @ case 3
	.2byte _02236D56 - _02236D28 - 2 @ case 4
	.2byte _02236D68 - _02236D28 - 2 @ case 5
	.2byte _02236D7A - _02236D28 - 2 @ case 6
	.2byte _02236D8C - _02236D28 - 2 @ case 7
	.2byte _02236DBC - _02236D28 - 2 @ case 8
	.2byte _02236DBC - _02236D28 - 2 @ case 9
	.2byte _02236DBC - _02236D28 - 2 @ case 10
	.2byte _02236D9C - _02236D28 - 2 @ case 11
_02236D40:
	movs r2, #0
_02236D42:
	ldrb r1, [r5, r2]
	adds r0, r4, r2
	adds r2, r2, #1
	strb r1, [r0, #8]
	cmp r2, #0xa
	blt _02236D42
	b _02236DBC
_02236D50:
	ldrb r0, [r5]
	strb r0, [r4, #0x12]
	b _02236DBC
_02236D56:
	ldrb r0, [r4, #0x13]
	ldrb r2, [r5]
	movs r1, #1
	bics r0, r1
	movs r1, #1
	ands r1, r2
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236D68:
	ldrb r0, [r4, #0x13]
	movs r1, #2
	bics r0, r1
	ldrb r1, [r5]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1e
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236D7A:
	ldrb r0, [r4, #0x13]
	movs r1, #4
	bics r0, r1
	ldrb r1, [r5]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1d
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236D8C:
	movs r2, #0
_02236D8E:
	ldrb r1, [r5, r2]
	adds r0, r4, r2
	adds r2, r2, #1
	strb r1, [r0, #0x14]
	cmp r2, #7
	blt _02236D8E
	b _02236DBC
_02236D9C:
	ldrb r0, [r5, #1]
	ldrb r1, [r5]
	lsls r0, r0, #8
	adds r0, r1, r0
	strh r0, [r7]
	ldrh r0, [r7]
	ldrb r1, [r4, #0x13]
	cmp r0, #0
	beq _02236DB6
	movs r0, #2
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236DB6:
	movs r0, #2
	bics r1, r0
	strb r1, [r4, #0x13]
_02236DBC:
	cmp r6, #0xa
	ble _02236DCE
	adds r0, r4, #0
	bl ov97_0223689C
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov97_0223687C
_02236DCE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02236CA4

	thumb_func_start ov97_02236DD0
ov97_02236DD0: @ 0x02236DD0
	ldr r1, _02236DF4 @ =0x00000115
	cmp r0, r1
	blt _02236DF0
	ldr r3, _02236DF8 @ =0x0223ED5C
	movs r2, #0
_02236DDA:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02236DE8
	ldr r0, _02236DFC @ =0x0223ED5E
	lsls r1, r2, #2
	ldrh r0, [r0, r1]
	bx lr
_02236DE8:
	adds r2, r2, #1
	adds r3, r3, #4
	cmp r2, #0x90
	blo _02236DDA
_02236DF0:
	bx lr
	nop
_02236DF4: .4byte 0x00000115
_02236DF8: .4byte 0x0223ED5C
_02236DFC: .4byte 0x0223ED5E
	thumb_func_end ov97_02236DD0

	thumb_func_start ov97_02236E00
ov97_02236E00: @ 0x02236E00
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xb
	movs r2, #0
	bl ov97_02236924
	bl ov97_02236DD0
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #0
	bl ov97_02236924
	adds r1, r0, #0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02075B78
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02236E00

	thumb_func_start ov97_02236E28
ov97_02236E28: @ 0x02236E28
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0x2e
	movs r2, #0
	bl ov97_02236924
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0x19
	bl FUN_020759F0
	cmp r0, #0
	beq _02236E82
	ldr r2, _02236E8C @ =0x0223ECA0
	movs r4, #0
_02236E56:
	ldrh r1, [r2]
	cmp r5, r1
	bne _02236E66
	adds r0, r5, #0
	movs r1, #0x18
	bl FUN_020759F0
	b _02236E6E
_02236E66:
	adds r4, r4, #1
	adds r2, r2, #2
	cmp r4, #0x5e
	blo _02236E56
_02236E6E:
	cmp r4, #0x5e
	bne _02236E8A
	movs r1, #1
	tst r1, r6
	bne _02236E8A
	adds r0, r5, #0
	movs r1, #0x18
	bl FUN_020759F0
	pop {r4, r5, r6, pc}
_02236E82:
	adds r0, r5, #0
	movs r1, #0x18
	bl FUN_020759F0
_02236E8A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02236E8C: .4byte 0x0223ECA0
	thumb_func_end ov97_02236E28

	thumb_func_start ov97_02236E90
ov97_02236E90: @ 0x02236E90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r1, #0
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_02073C54
	adds r0, r4, #0
	bl FUN_02073D20
	movs r1, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r2, r1, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	bl ov97_02236DD0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #5
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	cmp r0, #0
	beq _02236EF2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0207CF10
	str r0, [sp, #8]
_02236EF2:
	adds r0, r4, #0
	movs r1, #6
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #7
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x19
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #8
	add r2, sp, #8
	bl FUN_02074C60
	movs r0, #0x46
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #9
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov97_02236E28
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xa
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xb
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xc
	add r2, sp, #4
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x1a
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xd
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x1b
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xe
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x1c
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xf
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x1d
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x10
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x11
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x1f
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x12
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x16
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x13
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x17
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x14
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x18
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x15
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x21
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x16
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x2f
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x17
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x30
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x18
	add r2, sp, #8
	bl FUN_02074C60
	movs r5, #0
	adds r7, r5, #0
_02237082:
	adds r1, r5, #0
	adds r0, r6, #0
	adds r1, #0xd
	movs r2, #0
	bl ov97_02236924
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, #0x36
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x15
	movs r2, #0
	bl ov97_02236924
	movs r1, #3
	lsls r1, r7
	str r0, [sp, #8]
	ands r0, r1
	lsrs r0, r7
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, #0x3e
	add r2, sp, #8
	bl FUN_02074C60
	adds r1, r5, #0
	adds r0, r4, #0
	adds r1, #0x42
	movs r2, #0
	bl FUN_02074570
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, #0x3a
	add r2, sp, #8
	bl FUN_02074C60
	adds r5, r5, #1
	adds r7, r7, #2
	cmp r5, #4
	blt _02237082
	adds r0, r6, #0
	movs r1, #0x27
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x46
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x28
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x47
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x29
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x48
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x2a
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x49
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x2b
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x4a
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x2c
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x4b
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x2d
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x4c
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x32
	movs r2, #0
	bl ov97_02236924
	adds r7, r0, #0
	cmp r7, #4
	bgt _022371A6
	movs r5, #0
	cmp r7, #0
	ble _022371A6
_02237190:
	movs r0, #1
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, #0x4e
	add r2, sp, #8
	bl FUN_02074C60
	adds r5, r5, #1
	cmp r5, r7
	blt _02237190
_022371A6:
	adds r0, r6, #0
	movs r1, #0x33
	movs r2, #0
	bl ov97_02236924
	adds r7, r0, #0
	cmp r7, #4
	bgt _022371D2
	movs r5, #0
	cmp r7, #0
	ble _022371D2
_022371BC:
	movs r0, #1
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, #0x52
	add r2, sp, #8
	bl FUN_02074C60
	adds r5, r5, #1
	cmp r5, r7
	blt _022371BC
_022371D2:
	adds r0, r6, #0
	movs r1, #0x34
	movs r2, #0
	bl ov97_02236924
	adds r7, r0, #0
	cmp r7, #4
	bgt _022371FE
	movs r5, #0
	cmp r7, #0
	ble _022371FE
_022371E8:
	movs r0, #1
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, #0x56
	add r2, sp, #8
	bl FUN_02074C60
	adds r5, r5, #1
	cmp r5, r7
	blt _022371E8
_022371FE:
	adds r0, r6, #0
	movs r1, #0x35
	movs r2, #0
	bl ov97_02236924
	adds r7, r0, #0
	cmp r7, #4
	bgt _0223722A
	movs r5, #0
	cmp r7, #0
	ble _0223722A
_02237214:
	movs r0, #1
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, #0x5a
	add r2, sp, #8
	bl FUN_02074C60
	adds r5, r5, #1
	cmp r5, r7
	blt _02237214
_0223722A:
	adds r0, r6, #0
	movs r1, #0x36
	movs r2, #0
	bl ov97_02236924
	adds r7, r0, #0
	cmp r7, #4
	bgt _02237256
	movs r5, #0
	cmp r7, #0
	ble _02237256
_02237240:
	movs r0, #1
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, #0x5e
	add r2, sp, #8
	bl FUN_02074C60
	adds r5, r5, #1
	cmp r5, r7
	blt _02237240
_02237256:
	adds r0, r6, #0
	movs r1, #0x43
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x62
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x44
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x63
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x45
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x64
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x46
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x65
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x47
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x66
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x48
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x67
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x49
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x68
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x4a
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x69
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x4b
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x6a
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x4c
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x6b
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x4d
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x6c
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x4e
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x6d
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x50
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x6e
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r4, #0
	bl FUN_02075D74
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x6f
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	cmp r0, #0xc9
	bne _022373D2
	movs r1, #0
	adds r0, r6, #0
	adds r2, r1, #0
	bl ov97_02236924
	adds r3, r0, #0
	movs r7, #3
	lsls r0, r7, #8
	ands r0, r3
	lsrs r1, r0, #6
	lsls r0, r7, #0x18
	ands r0, r3
	lsrs r5, r0, #0x12
	lsls r0, r7, #0x10
	ands r0, r3
	lsrs r0, r0, #0xc
	adds r2, r3, #0
	orrs r0, r5
	orrs r0, r1
	ands r2, r7
	str r3, [sp, #8]
	orrs r0, r2
	movs r1, #0x1c
	blx FUN_020E2178
	str r1, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x70
	add r2, sp, #8
	bl FUN_02074C60
_022373D2:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	ldr r1, _02237514 @ =0x00000182
	cmp r0, r1
	bne _02237422
	ldr r0, _02237518 @ =0x021BF6DC
	ldrb r0, [r0, #6]
	cmp r0, #5
	bhi _02237402
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022373F6: @ jump table
	.2byte _02237402 - _022373F6 - 2 @ case 0
	.2byte _02237402 - _022373F6 - 2 @ case 1
	.2byte _02237402 - _022373F6 - 2 @ case 2
	.2byte _02237414 - _022373F6 - 2 @ case 3
	.2byte _02237408 - _022373F6 - 2 @ case 4
	.2byte _0223740E - _022373F6 - 2 @ case 5
_02237402:
	movs r0, #0
	str r0, [sp, #8]
	b _02237418
_02237408:
	movs r0, #1
	str r0, [sp, #8]
	b _02237418
_0223740E:
	movs r0, #2
	str r0, [sp, #8]
	b _02237418
_02237414:
	movs r0, #3
	str r0, [sp, #8]
_02237418:
	adds r0, r4, #0
	movs r1, #0x70
	add r2, sp, #8
	bl FUN_02074C60
_02237422:
	adds r0, r6, #0
	movs r1, #2
	add r2, sp, #0x24
	bl ov97_02236924
	ldr r3, [sp, #4]
	add r0, sp, #0x24
	add r1, sp, #0xc
	movs r2, #0xc
	bl ov97_0223936C
	adds r0, r4, #0
	movs r1, #0x76
	add r2, sp, #0xc
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	bl ov97_02236924
	ldr r1, _0223751C @ =0x020E4C44
	ldrb r1, [r1]
	cmp r1, r0
	beq _02237462
	movs r0, #1
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x4d
	add r2, sp, #8
	bl FUN_02074C60
_02237462:
	adds r0, r6, #0
	movs r1, #0x25
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x7a
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #7
	add r2, sp, #0x24
	bl ov97_02236924
	ldr r3, [sp, #4]
	add r0, sp, #0x24
	add r1, sp, #0xc
	movs r2, #8
	bl ov97_0223936C
	adds r0, r4, #0
	movs r1, #0x90
	add r2, sp, #0xc
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x23
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x99
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x22
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x9a
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x26
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x9b
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x24
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x9c
	add r2, sp, #8
	bl FUN_02074C60
	adds r0, r6, #0
	movs r1, #0x31
	movs r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x9d
	add r2, sp, #8
	bl FUN_02074C60
	ldr r1, [sp]
	adds r0, r4, #0
	bl FUN_02073D48
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237514: .4byte 0x00000182
_02237518: .4byte 0x021BF6DC
_0223751C: .4byte 0x020E4C44
	thumb_func_end ov97_02236E90

	thumb_func_start ov97_02237520
ov97_02237520: @ 0x02237520
	ldr r1, _02237528 @ =0x0223F54C
	str r0, [r1]
	bx lr
	nop
_02237528: .4byte 0x0223F54C
	thumb_func_end ov97_02237520

	thumb_func_start ov97_0223752C
ov97_0223752C: @ 0x0223752C
	adds r1, r0, #0
	ldr r0, _02237538 @ =0x0223F54C
	ldr r3, _0223753C @ =FUN_02018144
	ldr r0, [r0]
	bx r3
	nop
_02237538: .4byte 0x0223F54C
_0223753C: .4byte FUN_02018144
	thumb_func_end ov97_0223752C

	thumb_func_start ov97_02237540
ov97_02237540: @ 0x02237540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x130
	blx FUN_020D0928
	lsrs r1, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsrs r1, r0, #0x10
	lsls r3, r0, #0x18
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r0, r0, #8
	lsrs r1, r1, #0x10
	orrs r0, r3
	orrs r0, r1
	adds r6, r2, #0
	orrs r6, r0
	ldr r0, _022375D4 @ =0x0223EF9C
	movs r4, #0
	ldr r0, [r0]
	cmp r0, #0
	bls _022375CA
	ldr r5, _022375D8 @ =0x0223EF9C
	add r7, sp, #0x80
_02237576:
	ldr r0, [r5]
	cmp r6, r0
	bne _022375C0
	movs r0, #1
	blx FUN_020D0F48
	movs r0, #0x81
	ldr r2, _022375DC @ =0x000004A8
	lsls r0, r0, #0x14
	adds r1, r7, #0
	blx FUN_020D0C5C
	ldr r0, _022375E0 @ =0x08020000
	add r1, sp, #0
	movs r2, #0x80
	blx FUN_020D0C5C
	movs r0, #0
	blx FUN_020D0F48
	ldr r0, _022375E4 @ =ov97_0223752C
	ldr r1, _022375E8 @ =FUN_020181C4
	blx ov97_0223D5C8
	ldr r1, _022375DC @ =0x000004A8
	ldr r3, _022375EC @ =0x0223DA1C
	adds r0, r7, #0
	add r2, sp, #0
	blx ov97_02239498
	cmp r0, #0
	beq _022375C0
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x130
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022375C0:
	adds r5, r5, #4
	ldr r0, [r5]
	adds r4, r4, #1
	cmp r4, r0
	blo _02237576
_022375CA:
	movs r0, #0
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x130
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022375D4: .4byte 0x0223EF9C
_022375D8: .4byte 0x0223EF9C
_022375DC: .4byte 0x000004A8
_022375E0: .4byte 0x08020000
_022375E4: .4byte ov97_0223752C
_022375E8: .4byte FUN_020181C4
_022375EC: .4byte 0x0223DA1C
	thumb_func_end ov97_02237540

	thumb_func_start ov97_022375F0
ov97_022375F0: @ 0x022375F0
	push {r3, lr}
	blx FUN_020D0FB4
	blx FUN_020D08C0
	cmp r0, #0
	bne _02237602
	movs r0, #0
	pop {r3, pc}
_02237602:
	blx FUN_020D0970
	ldr r1, _02237620 @ =0x00003130
	cmp r0, r1
	beq _02237610
	movs r0, #0
	pop {r3, pc}
_02237610:
	bl ov97_02237540
	cmp r0, #0
	beq _0223761C
	movs r0, #1
	pop {r3, pc}
_0223761C:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_02237620: .4byte 0x00003130
	thumb_func_end ov97_022375F0

	thumb_func_start ov97_02237624
ov97_02237624: @ 0x02237624
	push {r3, lr}
	bl ov97_022375F0
	cmp r0, #0
	bne _02237632
	movs r0, #0
	pop {r3, pc}
_02237632:
	movs r0, #1
	blx FUN_020D0F48
	movs r0, #0x81
	lsls r0, r0, #0x14
	add r1, sp, #0
	blx FUN_020D0E40
	movs r0, #0
	blx FUN_020D0F48
	ldr r0, [sp]
	pop {r3, pc}
	thumb_func_end ov97_02237624

	thumb_func_start ov97_0223764C
ov97_0223764C: @ 0x0223764C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov97_022375F0
	cmp r0, #0
	bne _0223765E
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223765E:
	cmp r4, #0
	bne _02237668
	bl ov97_02237624
	adds r4, r0, #0
_02237668:
	movs r0, #1
	blx FUN_020D0F48
	ldr r0, _02237690 @ =0x08100100
	adds r1, r5, #0
	adds r2, r4, #0
	blx FUN_020D0CB4
	adds r4, r0, #0
	movs r0, #0
	blx FUN_020D0F48
	blx FUN_020D0A04
	cmp r0, #0
	bne _0223768C
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223768C:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02237690: .4byte 0x08100100
	thumb_func_end ov97_0223764C

	thumb_func_start ov97_02237694
ov97_02237694: @ 0x02237694
	push {r3, r4, r5, r6}
	adds r4, r0, #0
	movs r0, #0
	ldr r6, _022376BC @ =0x0223F550
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	movs r5, #0x75
_022376A4:
	stm r6!, {r0, r1, r2, r3}
	stm r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _022376A4
	stm r6!, {r0, r1}
	ldr r0, _022376C0 @ =0x0223F550
	movs r1, #1
	str r1, [r0, #4]
	str r4, [r0, #8]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_022376BC: .4byte 0x0223F550
_022376C0: .4byte 0x0223F550
	thumb_func_end ov97_02237694

	thumb_func_start ov97_022376C4
ov97_022376C4: @ 0x022376C4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r1, #0
	movs r0, #3
	adds r2, r3, #0
	bl FUN_02017FC8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0200681C
	movs r1, #0
	adds r2, r4, #0
	adds r5, r0, #0
	blx FUN_020D5124
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_022376C4

	thumb_func_start ov97_022376FC
ov97_022376FC: @ 0x022376FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r5, _02237780 @ =0x0223DAAC
	adds r6, r3, #0
	adds r7, r0, #0
	adds r4, r1, #0
	ldm r5!, {r0, r1}
	add r3, sp, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	cmp r2, #4
	str r0, [r3]
	add r0, sp, #0
	strb r2, [r0, #0x10]
	bhi _02237756
	adds r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223772E: @ jump table
	.2byte _02237756 - _0223772E - 2 @ case 0
	.2byte _02237738 - _0223772E - 2 @ case 1
	.2byte _02237740 - _0223772E - 2 @ case 2
	.2byte _02237748 - _0223772E - 2 @ case 3
	.2byte _02237750 - _0223772E - 2 @ case 4
_02237738:
	movs r0, #2
	lsls r0, r0, #0xa
	str r0, [sp, #8]
	b _02237756
_02237740:
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	b _02237756
_02237748:
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	b _02237756
_02237750:
	movs r0, #2
	lsls r0, r0, #0xc
	str r0, [sp, #8]
_02237756:
	lsrs r1, r6, #0xb
	add r0, sp, #0
	strb r1, [r0, #0x12]
	ldr r1, [sp, #0x30]
	add r2, sp, #0
	lsrs r1, r1, #0xe
	strb r1, [r0, #0x13]
	lsls r1, r4, #0x18
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	movs r3, #0
	bl FUN_020183C4
	lsls r1, r4, #0x18
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02237780: .4byte 0x0223DAAC
	thumb_func_end ov97_022376FC

	thumb_func_start ov97_02237784
ov97_02237784: @ 0x02237784
	ldr r1, _0223778C @ =0x0223F550
	str r0, [r1, #0x10]
	bx lr
	nop
_0223778C: .4byte 0x0223F550
	thumb_func_end ov97_02237784

	thumb_func_start ov97_02237790
ov97_02237790: @ 0x02237790
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022377E4 @ =0x0223F550
	adds r5, r1, #0
	ldr r0, [r0, #0x10]
	adds r4, r2, #0
	adds r6, r3, #0
	ldr r7, _022377E8 @ =0x0223F550
	cmp r0, #0
	bne _022377C0
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	b _022377D8
_022377C0:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	ldr r3, _022377EC @ =0x00007FFF
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
_022377D8:
	cmp r4, #0
	beq _022377DE
	str r6, [r4]
_022377DE:
	str r5, [r7, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022377E4: .4byte 0x0223F550
_022377E8: .4byte 0x0223F550
_022377EC: .4byte 0x00007FFF
	thumb_func_end ov97_02237790

	thumb_func_start ov97_022377F0
ov97_022377F0: @ 0x022377F0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _02237804 @ =0x0223F550
	bl FUN_0200F2AC
	cmp r0, #0
	beq _02237802
	ldr r0, [r5, #0xc]
	str r0, [r4]
_02237802:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02237804: .4byte 0x0223F550
	thumb_func_end ov97_022377F0

	thumb_func_start ov97_02237808
ov97_02237808: @ 0x02237808
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	movs r1, #0
	movs r2, #0x54
	adds r5, r0, #0
	adds r7, r3, #0
	blx FUN_020D5124
	movs r0, #1
	str r0, [r5, #4]
	str r0, [r5, #8]
	subs r0, r0, #2
	str r0, [r5, #0x4c]
	str r4, [r5, #0x10]
	str r6, [r5, #0x30]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x34]
	str r0, [r5, #0x38]
	ldr r0, [sp, #0x1c]
	movs r2, #0
	str r0, [r5, #0x3c]
	str r2, [r5, #0x2c]
	ldr r0, _02237854 @ =0x0001020F
	str r2, [r5, #0x40]
	str r0, [r5, #0x44]
	adds r0, r5, #0
	movs r1, #0xf
	adds r0, #0x48
	strb r1, [r0]
	str r2, [r5]
	str r2, [r5, #0x24]
	str r2, [r5, #0x20]
	str r2, [r5, #0x14]
	movs r0, #0xff
	str r0, [r5, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237854: .4byte 0x0001020F
	thumb_func_end ov97_02237808

	thumb_func_start ov97_02237858
ov97_02237858: @ 0x02237858
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r3, [r0, #0x28]
	bx lr
	thumb_func_end ov97_02237858

	thumb_func_start ov97_02237860
ov97_02237860: @ 0x02237860
	str r1, [r0]
	str r2, [r0, #0x40]
	bx lr
	.align 2, 0
	thumb_func_end ov97_02237860

	thumb_func_start ov97_02237868
ov97_02237868: @ 0x02237868
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	bx lr
	.align 2, 0
	thumb_func_end ov97_02237868

	thumb_func_start ov97_02237870
ov97_02237870: @ 0x02237870
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0
	mvns r0, r0
	ldr r4, _02237958 @ =0x0223F550
	cmp r1, r0
	beq _0223794E
	ldr r0, [r5, #0x4c]
	cmp r0, r1
	beq _0223794E
	str r1, [r5, #0x4c]
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0223789A
	adds r1, r5, #0
	adds r1, #0x48
	ldrb r1, [r1]
	ldr r0, [r5, #0x10]
	bl FUN_0201ADA4
_0223789A:
	movs r0, #0
	ldr r1, [r5, #0x4c]
	mvns r0, r0
	cmp r1, r0
	beq _0223794E
	ldr r2, [r5, #0x34]
	ldr r3, [r4, #8]
	movs r0, #1
	movs r1, #0x1a
	bl FUN_0200B144
	ldr r6, [r5, #0x14]
	str r0, [sp, #0x10]
	cmp r6, #0
	bne _022378C0
	ldr r0, [r4, #8]
	bl FUN_0200B358
	adds r6, r0, #0
_022378C0:
	ldr r1, [sp, #0x10]
	ldr r2, [r5, #0x4c]
	ldr r3, [r4, #8]
	adds r0, r6, #0
	bl FUN_0200B29C
	adds r4, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _022378F4
	ldr r0, [r5, #0x24]
	adds r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x20]
	bl FUN_0201D78C
	adds r7, r0, #0
	b _02237936
_022378F4:
	ldr r0, [r5, #0x40]
	movs r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02002DF8
	adds r2, r0, #0
	ldr r0, [r5, #0x40]
	adds r1, r4, #0
	bl FUN_02002D7C
	adds r7, r0, #0
	ldr r0, [r5, #0x10]
	bl FUN_0201C294
	lsls r0, r0, #3
	subs r3, r0, r7
	ldr r0, [r5, #0x24]
	adds r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x40]
	bl FUN_0201D78C
	adds r7, r0, #0
	movs r0, #0
	str r0, [r5, #0xc]
_02237936:
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02237948
	adds r0, r6, #0
	bl FUN_0200B3F0
_02237948:
	ldr r0, [sp, #0x10]
	bl FUN_0200B190
_0223794E:
	movs r0, #0xff
	str r0, [r5, #0x50]
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02237958: .4byte 0x0223F550
	thumb_func_end ov97_02237870

	thumb_func_start ov97_0223795C
ov97_0223795C: @ 0x0223795C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r1, #0
	ldr r1, [r4, #0x10]
	adds r6, r2, #0
	ldr r2, [r1]
	adds r5, r3, #0
	cmp r2, #0
	bne _022379AE
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp]
	ldr r2, [r4, #0x18]
	lsls r3, r6, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0x1c]
	lsrs r3, r3, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	ldr r2, [r4, #0x30]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r2, [r4, #0x28]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x10]
	ldr r2, [r4, #0x2c]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl FUN_0201A7E8
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	bl ov97_02237870
	adds r5, r0, #0
	b _022379DC
_022379AE:
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _022379C0
	adds r0, r1, #0
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201C2AC
_022379C0:
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	beq _022379D2
	lsls r1, r5, #0x18
	ldr r0, [r4, #0x10]
	lsrs r1, r1, #0x18
	bl FUN_0201C2B0
_022379D2:
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	bl ov97_02237870
	adds r5, r0, #0
_022379DC:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02237A10
	ldr r0, [r4]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	bne _022379FE
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x18
	movs r1, #0
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_0200DC48
	b _02237A10
_022379FE:
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x18
	movs r1, #0
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_0200E060
_02237A10:
	adds r0, r5, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov97_0223795C

	thumb_func_start ov97_02237A18
ov97_02237A18: @ 0x02237A18
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	muls r0, r1, r0
	bx lr
	thumb_func_end ov97_02237A18

	thumb_func_start ov97_02237A20
ov97_02237A20: @ 0x02237A20
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02237A58 @ =0x0223DA9C
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, _02237A5C @ =0x0223F550
	movs r1, #0x10
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	adds r2, r1, #0
	bl FUN_0201E88C
	ldr r1, _02237A5C @ =0x0223F550
	movs r0, #0x1e
	ldr r1, [r1, #8]
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02237A58: .4byte 0x0223DA9C
_02237A5C: .4byte 0x0223F550
	thumb_func_end ov97_02237A20

	thumb_func_start ov97_02237A60
ov97_02237A60: @ 0x02237A60
	ldr r0, _02237A70 @ =0x0223F550
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _02237A6C
	movs r0, #1
	bx lr
_02237A6C:
	movs r0, #0
	bx lr
	.align 2, 0
_02237A70: .4byte 0x0223F550
	thumb_func_end ov97_02237A60

	thumb_func_start ov97_02237A74
ov97_02237A74: @ 0x02237A74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _02237ADC @ =0x0223F550
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	ldr r2, _02237AE0 @ =0x0223F550
	str r3, [sp, #0xc]
	ldr r2, [r2, #8]
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	ldr r2, _02237AE0 @ =0x0223F550
	ldr r1, _02237AE4 @ =0x0223F588
	ldr r2, [r2, #8]
	movs r0, #0x80
	bl FUN_020095C4
	ldr r1, _02237AE0 @ =0x0223F550
	movs r2, #1
	str r0, [r1, #0x34]
	ldr r0, _02237AE4 @ =0x0223F588
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r1, #3
	movs r7, #0x16
	ldr r0, _02237AE8 @ =0x0223F750
	lsls r1, r1, #0x12
	str r1, [r0, #0x10]
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #4
_02237AC4:
	ldr r2, [r6, #8]
	movs r0, #0x20
	adds r1, r4, #0
	bl FUN_02009714
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _02237AC4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02237ADC: .4byte 0x0223F550
_02237AE0: .4byte 0x0223F550
_02237AE4: .4byte 0x0223F588
_02237AE8: .4byte 0x0223F750
	thumb_func_end ov97_02237A74

	thumb_func_start ov97_02237AEC
ov97_02237AEC: @ 0x02237AEC
	push {r4, lr}
	ldr r0, _02237B04 @ =0x0223F550
	ldr r4, _02237B08 @ =0x0223F550
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _02237AFC
	bl FUN_02022974
_02237AFC:
	adds r4, #0x34
	adds r0, r4, #0
	pop {r4, pc}
	nop
_02237B04: .4byte 0x0223F550
_02237B08: .4byte 0x0223F550
	thumb_func_end ov97_02237AEC

	thumb_func_start ov97_02237B0C
ov97_02237B0C: @ 0x02237B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, [sp, #0x54]
	adds r6, r0, #0
	mov ip, r1
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	ldr r5, _02237C78 @ =0x0223F550
	cmp r4, #0
	bne _02237B24
	movs r7, #1
	b _02237B26
_02237B24:
	movs r7, #2
_02237B26:
	movs r0, #1
	str r0, [sp, #0x34]
	cmp r6, #0x10
	bne _02237B32
	movs r0, #0
	str r0, [sp, #0x34]
_02237B32:
	movs r1, #0
	mvns r1, r1
	mov r0, ip
	cmp r0, r1
	beq _02237B60
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x34]
	str r0, [sp, #8]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	mov r2, ip
	bl FUN_0200985C
	movs r1, #0x18
	muls r1, r4, r1
	adds r2, r5, r1
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r2, r1]
_02237B60:
	movs r1, #0
	ldr r0, [sp, #0x2c]
	mvns r1, r1
	cmp r0, r1
	beq _02237B92
	str r4, [sp]
	str r7, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x2c]
	str r0, [sp, #0xc]
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r6, #0
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x18
	muls r1, r4, r1
	adds r2, r5, r1
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r2, r1]
_02237B92:
	movs r1, #0
	ldr r0, [sp, #0x30]
	mvns r1, r1
	cmp r0, r1
	beq _02237BC2
	str r4, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x30]
	str r0, [sp, #8]
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x34]
	adds r1, r6, #0
	bl FUN_02009918
	movs r1, #0x18
	adds r2, r4, #0
	muls r2, r1, r2
	adds r2, r5, r2
	lsls r1, r1, #4
	str r0, [r2, r1]
_02237BC2:
	movs r0, #0
	ldr r2, [sp, #0x50]
	mvns r0, r0
	cmp r2, r0
	beq _02237BF0
	str r4, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x34]
	str r0, [sp, #8]
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_02009918
	movs r1, #0x18
	muls r1, r4, r1
	adds r2, r5, r1
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r2, r1]
_02237BF0:
	movs r0, #0x18
	adds r6, r4, #0
	muls r6, r0, r6
	movs r0, #0x5e
	adds r1, r5, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_0200A328
	movs r0, #0x5f
	adds r1, r5, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_0200A640
	movs r0, #0
	movs r2, #0x16
	str r4, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r2, r2, #4
	ldr r1, [r5, r2]
	adds r3, r4, #0
	str r1, [sp, #0x14]
	adds r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	adds r1, r2, #0
	adds r1, #8
	ldr r1, [r5, r1]
	str r1, [sp, #0x1c]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r1, [r5, r1]
	adds r2, #0x48
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	movs r0, #0x24
	adds r1, r5, r2
	muls r0, r4, r0
	adds r0, r1, r0
	adds r1, r4, #0
	adds r2, r4, #0
	bl FUN_020093B4
	cmp r4, #0
	bne _02237C62
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	b _02237C6A
_02237C62:
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
_02237C6A:
	ldr r0, _02237C7C @ =ov97_02237E58
	movs r1, #0
	bl FUN_02017798
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237C78: .4byte 0x0223F550
_02237C7C: .4byte ov97_02237E58
	thumb_func_end ov97_02237B0C

	thumb_func_start ov97_02237C80
ov97_02237C80: @ 0x02237C80
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	ldr r0, _02237C98 @ =0x0223F588
	adds r2, r4, #0
	bl FUN_0200964C
	ldr r0, _02237C9C @ =0x0223F750
	str r4, [r0, #0x10]
	pop {r4, pc}
	nop
_02237C98: .4byte 0x0223F588
_02237C9C: .4byte 0x0223F750
	thumb_func_end ov97_02237C80

	thumb_func_start ov97_02237CA0
ov97_02237CA0: @ 0x02237CA0
	ldr r3, _02237CA8 @ =ov97_02237CAC
	movs r0, #0
	bx r3
	nop
_02237CA8: .4byte ov97_02237CAC
	thumb_func_end ov97_02237CA0

	thumb_func_start ov97_02237CAC
ov97_02237CAC: @ 0x02237CAC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _02237D0C @ =0x0223F750
	ldr r4, _02237D10 @ =0x0223F550
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02237D00
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02237CFC
	subs r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02021D34
	cmp r0, #0
	bne _02237CE0
	cmp r5, #0
	bne _02237CE0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
_02237CE0:
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	movs r1, #6
	ldr r2, [r0, #4]
	lsls r1, r1, #0x12
	cmp r2, r1
	bge _02237D00
	lsrs r1, r1, #7
	adds r1, r2, r1
	str r1, [r0, #4]
	b _02237D00
_02237CFC:
	subs r1, r1, #1
	str r1, [r4, r0]
_02237D00:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _02237D0A
	bl FUN_020219F8
_02237D0A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02237D0C: .4byte 0x0223F750
_02237D10: .4byte 0x0223F550
	thumb_func_end ov97_02237CAC

	thumb_func_start ov97_02237D14
ov97_02237D14: @ 0x02237D14
	push {r3, r4, r5, lr}
	sub sp, #0x30
	adds r4, r1, #0
	ldr r1, _02237D9C @ =0x0223F550
	bne _02237D76
	ldr r4, [r1, #0x34]
	lsls r2, r2, #0xc
	str r4, [sp]
	movs r4, #0x6a
	lsls r4, r4, #2
	adds r5, r1, r4
	movs r4, #0x24
	muls r4, r0, r4
	adds r4, r5, r4
	str r4, [sp, #4]
	movs r4, #1
	lsls r4, r4, #0xc
	movs r5, #0
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	add r4, sp, #0
	strh r5, [r4, #0x20]
	str r2, [sp, #8]
	lsls r2, r3, #0xc
	str r2, [sp, #0xc]
	movs r2, #0xa
	str r2, [sp, #0x24]
	cmp r0, #0
	bne _02237D56
	movs r2, #1
	b _02237D58
_02237D56:
	movs r2, #2
_02237D58:
	ldr r0, [r1, #8]
	str r2, [sp, #0x28]
	str r0, [sp, #0x2c]
	cmp r2, #2
	bne _02237D6E
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r2, [sp, #0xc]
	ldr r0, [r1, r0]
	adds r0, r2, r0
	str r0, [sp, #0xc]
_02237D6E:
	add r0, sp, #0
	bl FUN_02021AA0
	adds r4, r0, #0
_02237D76:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02021CC8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02021E80
	ldr r1, [sp, #0x40]
	adds r0, r4, #0
	bl FUN_02021D6C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02021CAC
	adds r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, pc}
	.align 2, 0
_02237D9C: .4byte 0x0223F550
	thumb_func_end ov97_02237D14

	thumb_func_start ov97_02237DA0
ov97_02237DA0: @ 0x02237DA0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02237E40 @ =0x0223F750
	ldr r4, _02237E44 @ =0x0223F550
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02237DBE
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021BD4
	movs r0, #0x82
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_02237DBE:
	movs r1, #0x51
	ldr r0, _02237E48 @ =0x0223F584
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DCE
	bl FUN_0200A4E4
_02237DCE:
	movs r1, #0x57
	ldr r0, _02237E48 @ =0x0223F584
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DDE
	bl FUN_0200A4E4
_02237DDE:
	movs r1, #0x52
	ldr r0, _02237E48 @ =0x0223F584
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DEE
	bl FUN_0200A6DC
_02237DEE:
	movs r1, #0x16
	ldr r0, _02237E48 @ =0x0223F584
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DFE
	bl FUN_0200A6DC
_02237DFE:
	movs r4, #0
	movs r7, #0x4b
	ldr r5, _02237E48 @ =0x0223F584
	adds r6, r4, #0
	lsls r7, r7, #2
_02237E08:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009754
	str r6, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _02237E08
	ldr r0, _02237E48 @ =0x0223F584
	ldr r0, [r0]
	bl FUN_02021964
	ldr r0, _02237E48 @ =0x0223F584
	movs r1, #0
	str r1, [r0]
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02237E40: .4byte 0x0223F750
_02237E44: .4byte 0x0223F550
_02237E48: .4byte 0x0223F584
	thumb_func_end ov97_02237DA0

	thumb_func_start ov97_02237E4C
ov97_02237E4C: @ 0x02237E4C
	movs r1, #1
	subs r0, #0xa
	lsls r1, r0
	adds r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end ov97_02237E4C

	thumb_func_start ov97_02237E58
ov97_02237E58: @ 0x02237E58
	push {r4, lr}
	ldr r0, _02237E94 @ =0x022403D0
	ldr r4, _02237E98 @ =0x0223F550
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02237E72
	ldr r1, _02237E9C @ =0x00000EA4
	adds r0, r4, #0
	ldr r1, [r4, r1]
	blx r1
	ldr r0, _02237E9C @ =0x00000EA4
	movs r1, #0
	str r1, [r4, r0]
_02237E72:
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r0, [r4]
	cmp r0, #0
	beq _02237E84
	bl FUN_0201C2B8
_02237E84:
	ldr r3, _02237EA0 @ =0x027E0000
	ldr r1, _02237EA4 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02237E94: .4byte 0x022403D0
_02237E98: .4byte 0x0223F550
_02237E9C: .4byte 0x00000EA4
_02237EA0: .4byte 0x027E0000
_02237EA4: .4byte 0x00003FF8
	thumb_func_end ov97_02237E58

	thumb_func_start ov97_02237EA8
ov97_02237EA8: @ 0x02237EA8
	push {r3, r4}
	sub sp, #0x20
	ldr r4, _02237EF4 @ =0x0223DAC8
	add r3, sp, #0
	movs r2, #0x1e
_02237EB2:
	ldrb r1, [r4]
	adds r4, r4, #1
	strb r1, [r3]
	adds r3, r3, #1
	subs r2, r2, #1
	bne _02237EB2
	add r1, sp, #0
	ldrb r2, [r1]
	movs r3, #0
	subs r1, r3, #1
	cmp r2, r1
	beq _02237EEC
	add r4, sp, #0
	subs r1, r3, #1
_02237ECE:
	ldrb r2, [r4]
	cmp r0, r2
	bne _02237EE2
	add r0, sp, #0
	lsls r1, r3, #1
	adds r0, #1
	add sp, #0x20
	ldrb r0, [r0, r1]
	pop {r3, r4}
	bx lr
_02237EE2:
	adds r4, r4, #2
	ldrb r2, [r4]
	adds r3, r3, #1
	cmp r2, r1
	bne _02237ECE
_02237EEC:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4}
	bx lr
	.align 2, 0
_02237EF4: .4byte 0x0223DAC8
	thumb_func_end ov97_02237EA8

	thumb_func_start ov97_02237EF8
ov97_02237EF8: @ 0x02237EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r1, #0
	str r0, [sp, #0x20]
	adds r0, r6, #0
	adds r5, r2, #0
	adds r7, r3, #0
	ldr r4, [sp, #0x44]
	bl FUN_02075D6C
	str r0, [sp, #0x24]
	adds r0, r6, #0
	bl FUN_02075E0C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r0, r7, #0x18
	ldr r2, [sp, #0x24]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r0, #0
	lsls r1, r5, #0x10
	lsls r2, r2, #0x18
	str r0, [sp, #8]
	adds r0, r4, #0
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_02075FB4
	movs r1, #0
	adds r0, r6, #0
	adds r2, r1, #0
	bl FUN_02074470
	movs r3, #0
	str r3, [sp]
	movs r1, #0xa
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x40]
	ldr r2, _02237FB0 @ =0x0223F550
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, [r2, #8]
	bl FUN_020136A4
	movs r1, #0x32
	ldr r0, [sp, #0x40]
	lsls r1, r1, #6
	blx FUN_020C2C54
	ldr r0, [sp, #0x20]
	bl FUN_02021F98
	movs r1, #2
	blx FUN_020A81B0
	movs r2, #0x32
	adds r1, r0, #0
	lsls r2, r2, #6
	ldr r0, [sp, #0x40]
	adds r1, r1, r2
	blx FUN_020C0314
	ldr r0, [sp, #0x20]
	bl FUN_02021F9C
	movs r1, #2
	blx FUN_020A81FC
	adds r3, r0, #0
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _02237FB0 @ =0x0223F550
	movs r2, #5
	ldr r0, [r0, #8]
	adds r3, #0x60
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldrh r1, [r4, #4]
	bl FUN_02006E84
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02237FB0: .4byte 0x0223F550
	thumb_func_end ov97_02237EF8

	thumb_func_start ov97_02237FB4
ov97_02237FB4: @ 0x02237FB4
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0x21
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0x23
	movs r2, #0x20
	movs r3, #0x22
	bl ov97_02237B0C
	movs r1, #1
	movs r0, #0
	lsls r1, r1, #0x14
	bl ov97_02237C80
	movs r3, #0
	movs r1, #0x82
	str r3, [sp]
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r0, #1
	movs r2, #0x80
	bl ov97_02237D14
	movs r1, #0x82
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov97_02237FB4

	thumb_func_start ov97_02237FF4
ov97_02237FF4: @ 0x02237FF4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	adds r4, r1, #0
	adds r6, r2, #0
	str r0, [sp, #4]
	movs r0, #0x36
	movs r1, #0xa
	movs r2, #0
	movs r3, #0xb
	bl ov97_02237B0C
	movs r1, #1
	movs r0, #0
	lsls r1, r1, #0x14
	bl ov97_02237C80
	movs r0, #1
	movs r1, #0x82
	str r0, [sp]
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	movs r2, #0x80
	movs r3, #0
	bl ov97_02237D14
	movs r2, #0x82
	lsls r2, r2, #2
	adds r6, #8
	str r0, [r5, r2]
	cmp r4, #7
	bgt _0223804C
	cmp r4, #1
	blt _022380BE
	beq _02238050
	cmp r4, #2
	beq _02238086
	cmp r4, #7
	beq _022380A4
	add sp, #8
	pop {r4, r5, r6, pc}
_0223804C:
	cmp r4, #0xd
	bne _022380BE
_02238050:
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x85
	lsls r1, r1, #2
	adds r3, r0, #0
	adds r0, r5, r1
	str r0, [sp]
	ldr r0, _022380C4 @ =0x00000E94
	subs r1, #0xc
	adds r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov97_02237EF8
	add sp, #8
	pop {r4, r5, r6, pc}
_02238086:
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r5, r0
	str r0, [sp]
	ldr r0, _022380C4 @ =0x00000E94
	adds r1, r6, #0
	adds r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	subs r2, #0x1a
	movs r3, #0
	bl ov97_02237EF8
	add sp, #8
	pop {r4, r5, r6, pc}
_022380A4:
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r5, r0
	str r0, [sp]
	ldr r0, _022380C4 @ =0x00000E94
	adds r1, r6, #0
	adds r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	subs r2, #0x1a
	movs r3, #1
	bl ov97_02237EF8
_022380BE:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022380C4: .4byte 0x00000E94
	thumb_func_end ov97_02237FF4

	thumb_func_start ov97_022380C8
ov97_022380C8: @ 0x022380C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	cmp r1, #0xc
	bhi _0223810C
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022380DE: @ jump table
	.2byte _0223810C - _022380DE - 2 @ case 0
	.2byte _0223810C - _022380DE - 2 @ case 1
	.2byte _0223810C - _022380DE - 2 @ case 2
	.2byte _022380F8 - _022380DE - 2 @ case 3
	.2byte _0223810C - _022380DE - 2 @ case 4
	.2byte _0223810C - _022380DE - 2 @ case 5
	.2byte _0223810C - _022380DE - 2 @ case 6
	.2byte _0223810C - _022380DE - 2 @ case 7
	.2byte _022380FC - _022380DE - 2 @ case 8
	.2byte _02238100 - _022380DE - 2 @ case 9
	.2byte _02238106 - _022380DE - 2 @ case 10
	.2byte _0223810C - _022380DE - 2 @ case 11
	.2byte _0223810A - _022380DE - 2 @ case 12
_022380F8:
	ldr r4, [r2, #4]
	b _0223810C
_022380FC:
	ldr r4, _02238168 @ =0x000001C6
	b _0223810C
_02238100:
	movs r4, #0x71
	lsls r4, r4, #2
	b _0223810C
_02238106:
	ldr r4, _0223816C @ =0x000001C7
	b _0223810C
_0223810A:
	ldr r4, _02238170 @ =0x000001D3
_0223810C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl FUN_0207CE78
	adds r7, r0, #0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #2
	bl FUN_0207CE78
	adds r4, r0, #0
	bl FUN_0207CF40
	adds r6, r0, #0
	bl FUN_0207CF44
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x10
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov97_02237B0C
	movs r1, #1
	movs r0, #0
	lsls r1, r1, #0x14
	bl ov97_02237C80
	movs r3, #0
	movs r1, #0x82
	str r3, [sp]
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	movs r0, #1
	movs r2, #0x80
	bl ov97_02237D14
	movs r1, #0x82
	lsls r1, r1, #2
	str r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02238168: .4byte 0x000001C6
_0223816C: .4byte 0x000001C7
_02238170: .4byte 0x000001D3
	thumb_func_end ov97_022380C8

	thumb_func_start ov97_02238174
ov97_02238174: @ 0x02238174
	push {r3, lr}
	sub sp, #8
	movs r1, #0xc0
	str r1, [sp]
	ldr r0, [r0, #8]
	movs r2, #4
	adds r3, r2, #0
	str r0, [sp, #4]
	movs r0, #0x74
	movs r1, #0x1d
	adds r3, #0xfc
	bl FUN_02006E84
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02238174

	thumb_func_start ov97_02238194
ov97_02238194: @ 0x02238194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	ldrh r4, [r6]
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov97_02237EA8
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #5
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, _0223828C @ =0x0223F550
	movs r1, #0x1e
	ldr r0, [r0, #8]
	adds r2, r5, #0
	str r0, [sp, #0xc]
	movs r0, #0x74
	movs r3, #5
	bl FUN_02006E3C
	movs r2, #1
	ldr r3, _0223828C @ =0x0223F550
	str r2, [sp]
	ldr r3, [r3, #8]
	movs r0, #0x74
	movs r1, #0x1f
	bl FUN_02006FE8
	add r1, sp, #0x14
	str r0, [sp, #0x10]
	blx FUN_020A7248
	ldr r2, [sp, #0x14]
	movs r3, #6
	adds r0, r5, #0
	movs r1, #5
	adds r2, #0xc
	lsls r3, r3, #8
	bl FUN_02019574
	ldr r0, [sp, #0x10]
	bl FUN_020181C4
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	movs r2, #0
	adds r7, #8
	str r0, [sp, #4]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019E2C
	adds r0, r5, #0
	movs r1, #5
	bl FUN_0201C3C0
	ldr r1, _02238290 @ =ov97_02238174
	ldr r0, _02238294 @ =0x022403D0
	cmp r4, #0xd
	str r1, [r0, #0x24]
	ldr r0, _0223828C @ =0x0223F550
	str r5, [r0]
	bhi _0223827A
	adds r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02238232: @ jump table
	.2byte _0223827A - _02238232 - 2 @ case 0
	.2byte _02238264 - _02238232 - 2 @ case 1
	.2byte _02238264 - _02238232 - 2 @ case 2
	.2byte _02238270 - _02238232 - 2 @ case 3
	.2byte _0223824E - _02238232 - 2 @ case 4
	.2byte _0223824E - _02238232 - 2 @ case 5
	.2byte _0223824E - _02238232 - 2 @ case 6
	.2byte _0223825A - _02238232 - 2 @ case 7
	.2byte _02238270 - _02238232 - 2 @ case 8
	.2byte _02238270 - _02238232 - 2 @ case 9
	.2byte _02238270 - _02238232 - 2 @ case 10
	.2byte _0223824E - _02238232 - 2 @ case 11
	.2byte _02238270 - _02238232 - 2 @ case 12
	.2byte _02238264 - _02238232 - 2 @ case 13
_0223824E:
	ldr r0, _02238298 @ =0x0223F550
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov97_02237FB4
	b _0223827A
_0223825A:
	movs r1, #0x83
	ldr r0, _02238298 @ =0x0223F550
	movs r2, #0x78
	lsls r1, r1, #2
	str r2, [r0, r1]
_02238264:
	ldr r0, _02238298 @ =0x0223F550
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov97_02237FF4
	b _0223827A
_02238270:
	ldr r0, _02238298 @ =0x0223F550
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov97_022380C8
_0223827A:
	movs r1, #0x82
	ldr r0, _02238298 @ =0x0223F550
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223828C: .4byte 0x0223F550
_02238290: .4byte ov97_02238174
_02238294: .4byte 0x022403D0
_02238298: .4byte 0x0223F550
	thumb_func_end ov97_02238194

	thumb_func_start ov97_0223829C
ov97_0223829C: @ 0x0223829C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r1, #0
	movs r1, #2
	adds r5, r0, #0
	adds r0, r2, #0
	lsls r1, r1, #8
	str r2, [sp]
	bl FUN_02018144
	ldr r1, _0223831C @ =0x0000A001
	adds r4, r0, #0
	blx FUN_020D316C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x50
	blx FUN_020D32D4
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_020181C4
	add r0, sp, #4
	blx FUN_020C3FA0
	add r0, sp, #4
	ldrh r1, [r0, #2]
	movs r2, #0
	add r3, sp, #4
	strh r1, [r0, #6]
	ldr r1, _02238320 @ =0x0000D679
	strh r6, [r0, #2]
_022382DE:
	ldrh r0, [r3]
	adds r2, r2, #1
	eors r0, r1
	strh r0, [r3]
	ldrh r1, [r3]
	adds r3, r3, #2
	cmp r2, #4
	blt _022382DE
	movs r1, #0x41
	ldr r0, [sp]
	lsls r1, r1, #2
	bl FUN_02018144
	add r1, sp, #4
	movs r2, #8
	adds r4, r0, #0
	blx FUN_020A49A4
	adds r5, #0x50
	movs r2, #0xd6
	adds r0, r4, #0
	adds r1, r5, #0
	lsls r2, r2, #2
	adds r3, r7, #0
	blx ov97_02239420
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223831C: .4byte 0x0000A001
_02238320: .4byte 0x0000D679
	thumb_func_end ov97_0223829C

	thumb_func_start ov97_02238324
ov97_02238324: @ 0x02238324
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r1, #0
	movs r1, #2
	adds r5, r0, #0
	adds r0, r2, #0
	lsls r1, r1, #8
	str r2, [sp]
	bl FUN_02018144
	ldr r1, _022383BC @ =0x0000A001
	adds r4, r0, #0
	blx FUN_020D316C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x50
	blx FUN_020D32D4
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	bl FUN_02033F3C
	ldrb r2, [r0, #4]
	add r1, sp, #4
	movs r3, #0
	strb r2, [r1]
	ldrb r2, [r0, #5]
	strb r2, [r1, #1]
	ldrb r2, [r0, #6]
	strb r2, [r1, #2]
	ldrb r2, [r0, #7]
	strb r2, [r1, #3]
	ldrb r2, [r0, #8]
	strb r2, [r1, #4]
	ldrb r0, [r0, #9]
	strb r0, [r1, #5]
	add r0, sp, #4
	ldrh r2, [r0, #2]
	strh r2, [r0, #6]
	ldr r2, _022383C0 @ =0x0000D679
	strh r6, [r0, #2]
_0223837E:
	ldrh r0, [r1]
	adds r3, r3, #1
	eors r0, r2
	strh r0, [r1]
	ldrh r2, [r1]
	adds r1, r1, #2
	cmp r3, #4
	blt _0223837E
	movs r1, #0x41
	ldr r0, [sp]
	lsls r1, r1, #2
	bl FUN_02018144
	add r1, sp, #4
	movs r2, #8
	adds r4, r0, #0
	blx FUN_020A49A4
	adds r5, #0x50
	movs r2, #0xd6
	adds r0, r4, #0
	adds r1, r5, #0
	lsls r2, r2, #2
	adds r3, r7, #0
	blx ov97_02239420
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022383BC: .4byte 0x0000A001
_022383C0: .4byte 0x0000D679
	thumb_func_end ov97_02238324

	thumb_func_start ov97_022383C4
ov97_022383C4: @ 0x022383C4
	push {r3, lr}
	cmp r2, #0
	beq _022383CE
	cmp r2, #1
	pop {r3, pc}
_022383CE:
	ldr r0, _022383D8 @ =0x000005DC
	bl FUN_02005748
	pop {r3, pc}
	nop
_022383D8: .4byte 0x000005DC
	thumb_func_end ov97_022383C4

	thumb_func_start ov97_022383DC
ov97_022383DC: @ 0x022383DC
	push {r3, lr}
	ldr r0, _022383FC @ =0x027FFFA8
	ldrh r1, [r0]
	movs r0, #2
	lsls r0, r0, #0xe
	ands r0, r1
	asrs r0, r0, #0xf
	bne _022383F8
	blx FUN_020D08C0
	cmp r0, #0
	bne _022383F8
	blx FUN_020D12E4
_022383F8:
	pop {r3, pc}
	nop
_022383FC: .4byte 0x027FFFA8
	thumb_func_end ov97_022383DC

	thumb_func_start ov97_02238400
ov97_02238400: @ 0x02238400
	push {r3, lr}
	cmp r0, #1
	bne _02238428
	ldr r1, _02238434 @ =0x04000208
	ldrh r0, [r1]
	movs r0, #0
	strh r0, [r1]
	lsrs r0, r1, #0xd
	ldr r1, _02238438 @ =ov97_022383DC
	blx FUN_020C144C
	movs r0, #2
	lsls r0, r0, #0xc
	blx FUN_020C161C
	ldr r1, _02238434 @ =0x04000208
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	pop {r3, pc}
_02238428:
	movs r0, #2
	lsls r0, r0, #0xc
	blx FUN_020C164C
	pop {r3, pc}
	nop
_02238434: .4byte 0x04000208
_02238438: .4byte ov97_022383DC
	thumb_func_end ov97_02238400

	thumb_func_start ov97_0223843C
ov97_0223843C: @ 0x0223843C
	bx lr
	.align 2, 0
	thumb_func_end ov97_0223843C

	thumb_func_start ov97_02238440
ov97_02238440: @ 0x02238440
	push {r3, lr}
	ldr r1, _02238464 @ =0x04000208
	ldrh r0, [r1]
	movs r0, #0
	strh r0, [r1]
	lsrs r0, r1, #0xd
	ldr r1, _02238468 @ =ov97_0223843C
	blx FUN_020C144C
	movs r0, #2
	lsls r0, r0, #0xc
	blx FUN_020C161C
	ldr r1, _02238464 @ =0x04000208
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
	pop {r3, pc}
	.align 2, 0
_02238464: .4byte 0x04000208
_02238468: .4byte ov97_0223843C
	thumb_func_end ov97_02238440

	thumb_func_start ov97_0223846C
ov97_0223846C: @ 0x0223846C
	ldr r1, _02238478 @ =0x0223F550
	str r0, [r1, #0x18]
	movs r0, #0
	str r0, [r1, #0x14]
	bx lr
	nop
_02238478: .4byte 0x0223F550
	thumb_func_end ov97_0223846C

	thumb_func_start ov97_0223847C
ov97_0223847C: @ 0x0223847C
	push {r3, r4, r5, lr}
	ldr r0, _022384EC @ =0x0223F550
	ldr r4, _022384F0 @ =0x0223F550
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bhi _022384E8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02238494: @ jump table
	.2byte _0223849E - _02238494 - 2 @ case 0
	.2byte _022384B4 - _02238494 - 2 @ case 1
	.2byte _022384E8 - _02238494 - 2 @ case 2
	.2byte _022384E8 - _02238494 - 2 @ case 3
	.2byte _022384E8 - _02238494 - 2 @ case 4
_0223849E:
	movs r0, #4
	bl FUN_02017DE0
	ldr r0, [r4, #0x18]
	movs r1, #2
	bl FUN_02024814
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	b _022384E8
_022384B4:
	ldr r0, [r4, #0x18]
	bl FUN_02024828
	adds r5, r0, #0
	cmp r5, #3
	bne _022384C6
	movs r0, #3
	str r0, [r4, #0x14]
	b _022384D8
_022384C6:
	cmp r5, #2
	bne _022384D0
	movs r0, #2
	str r0, [r4, #0x14]
	b _022384D8
_022384D0:
	cmp r5, #1
	bne _022384D8
	movs r0, #4
	str r0, [r4, #0x14]
_022384D8:
	subs r0, r5, #2
	cmp r0, #1
	bhi _022384E4
	movs r0, #4
	bl FUN_02017DF0
_022384E4:
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
_022384E8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022384EC: .4byte 0x0223F550
_022384F0: .4byte 0x0223F550
	thumb_func_end ov97_0223847C

	thumb_func_start ov97_022384F4
ov97_022384F4: @ 0x022384F4
	ldr r0, _02238504 @ =0x0223F550
	ldr r1, _02238508 @ =0x0223F550
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bne _02238502
	movs r0, #1
	str r0, [r1, #0x14]
_02238502:
	bx lr
	.align 2, 0
_02238504: .4byte 0x0223F550
_02238508: .4byte 0x0223F550
	thumb_func_end ov97_022384F4

	thumb_func_start ov97_0223850C
ov97_0223850C: @ 0x0223850C
	push {r3, lr}
	ldr r0, _02238524 @ =0x0223F550
	ldr r0, [r0, #0x18]
	bl FUN_02024850
	ldr r0, _02238524 @ =0x0223F550
	movs r1, #3
	str r1, [r0, #0x14]
	movs r0, #4
	bl FUN_02017DF0
	pop {r3, pc}
	.align 2, 0
_02238524: .4byte 0x0223F550
	thumb_func_end ov97_0223850C

	thumb_func_start ov97_02238528
ov97_02238528: @ 0x02238528
	ldr r0, _02238530 @ =0x0223F550
	ldr r0, [r0, #0x14]
	bx lr
	nop
_02238530: .4byte 0x0223F550
	thumb_func_end ov97_02238528

	thumb_func_start ov97_02238534
ov97_02238534: @ 0x02238534
	push {r4, lr}
	ldr r1, _02238570 @ =0x022403F8
	adds r4, r0, #0
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02238550
	ldr r3, [r1]
	ldr r1, _02238574 @ =0x00001150
	ldr r0, _02238578 @ =0x0223F10C
	ldr r1, [r3, r1]
	lsls r3, r1, #2
	ldr r1, _0223857C @ =0x0223F0E4
	ldr r1, [r1, r3]
	blx r2
_02238550:
	ldr r3, _02238570 @ =0x022403F8
	ldr r1, _02238574 @ =0x00001150
	ldr r0, [r3]
	str r4, [r0, r1]
	ldr r2, [r3, #4]
	cmp r2, #0
	beq _0223856C
	ldr r3, [r3]
	ldr r0, _02238580 @ =0x0223F114
	ldr r1, [r3, r1]
	lsls r3, r1, #2
	ldr r1, _0223857C @ =0x0223F0E4
	ldr r1, [r1, r3]
	blx r2
_0223856C:
	pop {r4, pc}
	nop
_02238570: .4byte 0x022403F8
_02238574: .4byte 0x00001150
_02238578: .4byte 0x0223F10C
_0223857C: .4byte 0x0223F0E4
_02238580: .4byte 0x0223F114
	thumb_func_end ov97_02238534

	thumb_func_start ov97_02238584
ov97_02238584: @ 0x02238584
	ldr r1, _02238598 @ =0x022403F8
	ldr r3, [r1]
	ldr r1, _0223859C @ =0x00001150
	ldr r2, [r3, r1]
	subs r2, #9
	cmp r2, #1
	bls _02238596
	adds r1, r1, #4
	str r0, [r3, r1]
_02238596:
	bx lr
	.align 2, 0
_02238598: .4byte 0x022403F8
_0223859C: .4byte 0x00001150
	thumb_func_end ov97_02238584

	thumb_func_start ov97_022385A0
ov97_022385A0: @ 0x022385A0
	push {r4, lr}
	ldr r0, _0223860C @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _02238610 @ =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #4
	bne _022385B2
	blx FUN_020C42A8
_022385B2:
	movs r0, #2
	bl ov97_02238534
	ldr r3, _0223860C @ =0x022403F8
	ldr r0, _02238614 @ =0x0000FFFF
	ldr r2, [r3]
	ldr r1, _02238618 @ =0x00000FCC
	strh r0, [r2, r1]
	subs r2, r1, #2
	ldr r4, [r3]
	subs r1, r1, #4
	strh r0, [r4, r2]
	ldr r2, [r3]
	strh r0, [r2, r1]
	bl ov97_02238624
	cmp r0, #0
	bne _022385F0
	movs r0, #9
	bl ov97_02238534
	ldr r0, _0223860C @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _0223861C @ =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022385EC
	movs r0, #4
	blx r1
_022385EC:
	movs r0, #0
	pop {r4, pc}
_022385F0:
	ldr r1, _0223860C @ =0x022403F8
	ldr r0, _02238620 @ =0x00001158
	ldr r2, [r1]
	movs r3, #2
	strh r3, [r2, r0]
	ldr r1, [r1]
	adds r0, #0x24
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238608
	movs r0, #0
	blx r1
_02238608:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0223860C: .4byte 0x022403F8
_02238610: .4byte 0x00001150
_02238614: .4byte 0x0000FFFF
_02238618: .4byte 0x00000FCC
_0223861C: .4byte 0x0000117C
_02238620: .4byte 0x00001158
	thumb_func_end ov97_022385A0

	thumb_func_start ov97_02238624
ov97_02238624: @ 0x02238624
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022386FC @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _02238700 @ =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _02238638
	blx FUN_020C42A8
	movs r0, #0
_02238638:
	blx FUN_020CE7F4
	adds r4, r0, #0
	movs r0, #2
	lsls r0, r0, #0xe
	cmp r4, r0
	bne _02238650
	movs r0, #3
	bl ov97_02238584
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02238650:
	cmp r4, #0
	bne _0223865E
	movs r0, #0x16
	bl ov97_02238584
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223865E:
	ldr r0, _022386FC @ =0x022403F8
	ldr r2, [r0]
	ldr r0, _02238704 @ =0x00001176
	ldrh r1, [r2, r0]
	cmp r1, #0x10
	blo _022386A0
	subs r1, #0x10
	movs r5, #0
	movs r7, #0xd
	movs r6, #1
	b _02238686
_02238674:
	adds r0, r1, #1
	adds r1, r7, #0
	blx FUN_020E1F6C
	adds r0, r6, #0
	lsls r0, r1
	tst r0, r4
	bne _0223868A
	adds r5, r5, #1
_02238686:
	cmp r5, #0xd
	blt _02238674
_0223868A:
	ldr r2, _022386FC @ =0x022403F8
	adds r4, r1, #0
	ldr r3, [r2]
	ldr r0, _02238704 @ =0x00001176
	adds r4, #0x10
	strh r4, [r3, r0]
	adds r3, r1, #1
	ldr r1, [r2]
	ldr r0, _02238708 @ =0x00000FC4
	strh r3, [r1, r0]
	b _022386A4
_022386A0:
	ldr r0, _02238708 @ =0x00000FC4
	strh r1, [r2, r0]
_022386A4:
	ldr r2, _022386FC @ =0x022403F8
	ldr r0, _0223870C @ =0x00000FC6
	ldr r1, [r2]
	movs r3, #0xdc
	strh r3, [r1, r0]
	adds r1, r0, #0
	ldr r3, [r2]
	subs r1, #0xc6
	adds r1, r3, r1
	subs r0, r0, #6
	str r1, [r3, r0]
	ldr r1, [r2]
	ldr r0, _02238710 @ =0x00001158
	ldrh r0, [r1, r0]
	cmp r0, #3
	bne _022386DA
	movs r5, #0
	ldr r0, _02238714 @ =0x00001170
	ldr r1, _02238718 @ =0x00000FC8
	b _022386D6
_022386CC:
	ldr r3, [r2]
	adds r4, r3, r5
	ldrb r3, [r4, r0]
	adds r5, r5, #1
	strb r3, [r4, r1]
_022386D6:
	cmp r5, #6
	blt _022386CC
_022386DA:
	ldr r1, _022386FC @ =0x022403F8
	ldr r0, _0223871C @ =ov97_02238720
	ldr r2, [r1]
	movs r1, #0x3f
	lsls r1, r1, #6
	adds r1, r2, r1
	blx FUN_020CEFA0
	cmp r0, #2
	beq _022386F6
	bl ov97_02238584
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022386F6:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022386FC: .4byte 0x022403F8
_02238700: .4byte 0x00001150
_02238704: .4byte 0x00001176
_02238708: .4byte 0x00000FC4
_0223870C: .4byte 0x00000FC6
_02238710: .4byte 0x00001158
_02238714: .4byte 0x00001170
_02238718: .4byte 0x00000FC8
_0223871C: .4byte ov97_02238720
	thumb_func_end ov97_02238624

	thumb_func_start ov97_02238720
ov97_02238720: @ 0x02238720
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02238746
	bl ov97_02238584
	movs r0, #9
	bl ov97_02238534
	ldr r0, _02238834 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _02238838 @ =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238832
	movs r0, #4
	blx r1
	pop {r3, r4, r5, pc}
_02238746:
	ldr r0, _02238834 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _0223883C @ =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _02238772
	bl ov97_02238858
	cmp r0, #0
	bne _02238832
	movs r0, #9
	bl ov97_02238534
	ldr r0, _02238834 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _02238838 @ =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238832
	movs r0, #4
	blx r1
	pop {r3, r4, r5, pc}
_02238772:
	ldrh r0, [r4, #8]
	cmp r0, #3
	beq _02238832
	cmp r0, #4
	beq _02238814
	cmp r0, #5
	bne _02238814
	movs r0, #0xf
	lsls r0, r0, #8
	adds r0, r1, r0
	movs r1, #0xc0
	blx FUN_020C2C1C
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _0223879A
	ldr r1, [r4, #0x3c]
	ldr r0, _02238840 @ =0x00400318
	cmp r1, r0
	beq _022387AC
_0223879A:
	ldr r0, _02238834 @ =0x022403F8
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _02238814
	ldr r0, _02238844 @ =0x0223F118
	ldr r1, [r4, #0x3c]
	ldr r2, _02238840 @ =0x00400318
	blx r3
	b _02238814
_022387AC:
	ldr r1, _02238834 @ =0x022403F8
	ldrh r3, [r4, #0x12]
	ldr r2, [r1]
	ldr r0, _02238848 @ =0x0000116C
	str r3, [r2, r0]
	ldr r1, [r1]
	subs r0, #0x14
	ldrh r0, [r1, r0]
	cmp r0, #2
	bne _022387F8
	adds r0, r4, #0
	adds r0, #0x48
	bl ov97_02238AB4
	ldr r2, _02238834 @ =0x022403F8
	ldr r1, _0223884C @ =0x00001170
	movs r0, #0
_022387CE:
	adds r3, r4, r0
	ldrb r5, [r3, #0xa]
	ldr r3, [r2]
	adds r3, r3, r0
	adds r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, #6
	blt _022387CE
	ldr r1, _02238834 @ =0x022403F8
	ldr r0, _02238850 @ =0x00001176
	ldr r3, [r1]
	ldrh r2, [r3, r0]
	subs r2, #0xf
	strh r2, [r3, r0]
	ldr r1, [r1]
	adds r0, r0, #6
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022387F8
	movs r0, #1
	blx r1
_022387F8:
	adds r4, #0x48
	adds r0, r4, #0
	bl ov97_02238B34
	cmp r0, #0
	beq _02238814
	ldr r0, _02238834 @ =0x022403F8
	movs r2, #4
	ldr r1, [r0]
	ldr r0, _02238854 @ =0x00001158
	strh r2, [r1, r0]
	bl ov97_022389C8
	pop {r3, r4, r5, pc}
_02238814:
	bl ov97_02238624
	cmp r0, #0
	bne _02238832
	movs r0, #9
	bl ov97_02238534
	ldr r0, _02238834 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _02238838 @ =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238832
	movs r0, #4
	blx r1
_02238832:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238834: .4byte 0x022403F8
_02238838: .4byte 0x0000117C
_0223883C: .4byte 0x00001150
_02238840: .4byte 0x00400318
_02238844: .4byte 0x0223F118
_02238848: .4byte 0x0000116C
_0223884C: .4byte 0x00001170
_02238850: .4byte 0x00001176
_02238854: .4byte 0x00001158
	thumb_func_end ov97_02238720

	thumb_func_start ov97_02238858
ov97_02238858: @ 0x02238858
	push {r3, lr}
	ldr r0, _02238870 @ =ov97_02238874
	blx FUN_020CF1DC
	cmp r0, #2
	beq _0223886C
	bl ov97_02238584
	movs r0, #0
	pop {r3, pc}
_0223886C:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_02238870: .4byte ov97_02238874
	thumb_func_end ov97_02238858

	thumb_func_start ov97_02238874
ov97_02238874: @ 0x02238874
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02238882
	bl ov97_02238584
	pop {r3, pc}
_02238882:
	movs r0, #1
	bl ov97_02238534
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov97_02238874

	thumb_func_start ov97_0223888C
ov97_0223888C: @ 0x0223888C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0223889C
	movs r0, #0xa
	bl ov97_02238534
	pop {r3, pc}
_0223889C:
	movs r0, #0
	bl ov97_02238534
	ldr r0, _022388B4 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _022388B8 @ =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022388B2
	movs r0, #3
	blx r1
_022388B2:
	pop {r3, pc}
	.align 2, 0
_022388B4: .4byte 0x022403F8
_022388B8: .4byte 0x0000117C
	thumb_func_end ov97_0223888C

	thumb_func_start ov97_022388BC
ov97_022388BC: @ 0x022388BC
	push {r3, lr}
	ldr r0, _022388D8 @ =0x022403F8
	movs r2, #0
	ldr r1, [r0]
	ldr r0, _022388DC @ =0x00001154
	str r2, [r1, r0]
	bl ov97_02238908
	cmp r0, #0
	beq _022388D4
	movs r0, #1
	pop {r3, pc}
_022388D4:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_022388D8: .4byte 0x022403F8
_022388DC: .4byte 0x00001154
	thumb_func_end ov97_022388BC

	thumb_func_start ov97_022388E0
ov97_022388E0: @ 0x022388E0
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	bne _022388FE
	movs r0, #9
	bl ov97_02238534
	ldr r0, _02238900 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _02238904 @ =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022388FE
	movs r0, #4
	blx r1
_022388FE:
	pop {r3, pc}
	.align 2, 0
_02238900: .4byte 0x022403F8
_02238904: .4byte 0x0000117C
	thumb_func_end ov97_022388E0

	thumb_func_start ov97_02238908
ov97_02238908: @ 0x02238908
	push {r3, lr}
	movs r0, #3
	bl ov97_02238534
	ldr r0, _02238934 @ =0x022403F8
	ldr r1, _02238938 @ =ov97_0223893C
	ldr r0, [r0]
	movs r2, #2
	blx FUN_020CECC8
	cmp r0, #2
	beq _0223892E
	bl ov97_02238584
	movs r0, #0xa
	bl ov97_02238534
	movs r0, #0
	pop {r3, pc}
_0223892E:
	movs r0, #1
	pop {r3, pc}
	nop
_02238934: .4byte 0x022403F8
_02238938: .4byte ov97_0223893C
	thumb_func_end ov97_02238908

	thumb_func_start ov97_0223893C
ov97_0223893C: @ 0x0223893C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02238950
	bl ov97_02238584
	movs r0, #0xa
	bl ov97_02238534
	pop {r3, pc}
_02238950:
	ldr r0, _02238974 @ =ov97_022388E0
	blx FUN_020CE478
	cmp r0, #0
	beq _02238966
	bl ov97_02238584
	movs r0, #0xa
	bl ov97_02238534
	pop {r3, pc}
_02238966:
	movs r0, #1
	bl ov97_02238534
	bl ov97_022385A0
	pop {r3, pc}
	nop
_02238974: .4byte ov97_022388E0
	thumb_func_end ov97_0223893C

	thumb_func_start ov97_02238978
ov97_02238978: @ 0x02238978
	push {r3, lr}
	ldr r0, _022389B8 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _022389BC @ =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _0223898A
	blx FUN_020C42A8
_0223898A:
	movs r0, #3
	bl ov97_02238534
	ldr r0, _022389C0 @ =ov97_0223888C
	blx FUN_020CED88
	cmp r0, #2
	beq _022389B4
	movs r0, #9
	bl ov97_02238534
	ldr r0, _022389B8 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _022389C4 @ =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022389B0
	movs r0, #4
	blx r1
_022389B0:
	movs r0, #0
	pop {r3, pc}
_022389B4:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
_022389B8: .4byte 0x022403F8
_022389BC: .4byte 0x00001150
_022389C0: .4byte ov97_0223888C
_022389C4: .4byte 0x0000117C
	thumb_func_end ov97_02238978

	thumb_func_start ov97_022389C8
ov97_022389C8: @ 0x022389C8
	push {r3, lr}
	ldr r0, _022389E4 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _022389E8 @ =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _022389DC
	bl ov97_02238978
	pop {r3, pc}
_022389DC:
	bl ov97_022389EC
	pop {r3, pc}
	nop
_022389E4: .4byte 0x022403F8
_022389E8: .4byte 0x00001150
	thumb_func_end ov97_022389C8

	thumb_func_start ov97_022389EC
ov97_022389EC: @ 0x022389EC
	push {r3, lr}
	movs r0, #3
	bl ov97_02238534
	ldr r0, _02238A0C @ =ov97_02238A10
	blx FUN_020CED50
	cmp r0, #2
	beq _02238A06
	bl ov97_02238584
	movs r0, #0
	pop {r3, pc}
_02238A06:
	movs r0, #1
	pop {r3, pc}
	nop
_02238A0C: .4byte ov97_02238A10
	thumb_func_end ov97_022389EC

	thumb_func_start ov97_02238A10
ov97_02238A10: @ 0x02238A10
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02238A38
	movs r0, #9
	bl ov97_02238534
	ldrh r0, [r4, #2]
	bl ov97_02238584
	ldr r0, _02238A44 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _02238A48 @ =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238A42
	movs r0, #4
	blx r1
	pop {r4, pc}
_02238A38:
	movs r0, #1
	bl ov97_02238534
	bl ov97_02238978
_02238A42:
	pop {r4, pc}
	.align 2, 0
_02238A44: .4byte 0x022403F8
_02238A48: .4byte 0x0000117C
	thumb_func_end ov97_02238A10

	thumb_func_start ov97_02238A4C
ov97_02238A4C: @ 0x02238A4C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r2, #0x1f
	movs r0, #0x1f
	bics r2, r0
	ldr r4, _02238AA8 @ =0x022403F8
	ldr r3, _02238AAC @ =0x00001150
	str r2, [r4]
	movs r0, #0
	str r0, [r2, r3]
	adds r2, r3, #0
	ldr r5, [r4]
	movs r6, #1
	adds r2, #8
	strh r6, [r5, r2]
	adds r2, r3, #0
	ldr r5, [r4]
	adds r2, #0x28
	str r7, [r5, r2]
	adds r2, r3, #0
	ldr r5, [r4]
	adds r2, #0xc
	strh r0, [r5, r2]
	adds r2, r3, #0
	ldr r5, [r4]
	adds r2, #0xe
	strh r0, [r5, r2]
	adds r2, r3, #0
	ldr r5, [r4]
	adds r2, #0x2c
	str r1, [r5, r2]
	adds r2, r3, #0
	ldr r5, [r4]
	movs r1, #0x10
	adds r2, #0x26
	strh r1, [r5, r2]
	ldr r5, [r4]
	ldr r2, _02238AB0 @ =0x00001048
	subs r1, #0x11
	str r0, [r5, r2]
	ldr r0, [r4]
	adds r3, #0x1c
	str r1, [r0, r3]
	bl ov97_022388BC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02238AA8: .4byte 0x022403F8
_02238AAC: .4byte 0x00001150
_02238AB0: .4byte 0x00001048
	thumb_func_end ov97_02238A4C

	thumb_func_start ov97_02238AB4
ov97_02238AB4: @ 0x02238AB4
	push {r4, r5, r6, lr}
	ldr r3, _02238B24 @ =0x022403F8
	ldr r1, _02238B28 @ =0x00001048
	ldr r2, [r3]
	movs r4, #0
	str r4, [r2, r1]
	ldr r1, [r3]
	ldr r2, _02238B2C @ =0x00001158
	movs r4, #3
	strh r4, [r1, r2]
	ldrh r5, [r0]
	ldr r4, [r3]
	adds r1, r2, #2
	strh r5, [r4, r1]
	ldr r4, [r0, #4]
	adds r0, r2, #0
	ldr r1, [r3]
	adds r0, #8
	str r4, [r1, r0]
	ldr r4, [r3]
	adds r2, #8
	ldr r0, [r4, r2]
	movs r1, #0x68
	subs r0, r0, #1
	blx FUN_020E2178
	ldr r2, _02238B30 @ =0x0000115C
	adds r0, r0, #1
	strh r0, [r4, r2]
	ldr r4, _02238B24 @ =0x022403F8
	movs r0, #0
	ldr r3, [r4]
	adds r1, r2, #2
	strh r0, [r3, r1]
	adds r1, r2, #0
	ldr r3, [r4]
	adds r1, #8
	str r0, [r3, r1]
	ldr r1, [r4]
	ldrh r2, [r1, r2]
	cmp r2, #0
	ble _02238B20
	movs r2, #0x46
	lsls r2, r2, #6
	adds r3, r2, #0
	adds r6, r0, #0
	subs r3, #0x24
_02238B12:
	adds r1, r1, r0
	strb r6, [r1, r2]
	ldr r1, [r4]
	adds r0, r0, #1
	ldrh r5, [r1, r3]
	cmp r0, r5
	blt _02238B12
_02238B20:
	pop {r4, r5, r6, pc}
	nop
_02238B24: .4byte 0x022403F8
_02238B28: .4byte 0x00001048
_02238B2C: .4byte 0x00001158
_02238B30: .4byte 0x0000115C
	thumb_func_end ov97_02238AB4

	thumb_func_start ov97_02238B34
ov97_02238B34: @ 0x02238B34
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _02238C50 @ =0x022403F8
	ldrh r1, [r4]
	ldr r3, [r0]
	ldr r0, _02238C54 @ =0x0000115A
	ldrh r2, [r3, r0]
	cmp r2, r1
	bne _02238B50
	adds r0, r0, #6
	ldr r1, [r3, r0]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _02238B7C
_02238B50:
	ldr r0, _02238C50 @ =0x022403F8
	ldr r3, [r0]
	ldr r0, _02238C58 @ =0x00001164
	ldr r2, [r3, r0]
	adds r1, r2, #1
	str r1, [r3, r0]
	cmp r2, #0x10
	blo _02238B78
	adds r0, r4, #0
	bl ov97_02238AB4
	ldr r0, _02238C50 @ =0x022403F8
	ldr r1, [r0]
	ldr r0, _02238C5C @ =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238B7C
	movs r0, #5
	blx r1
	b _02238B7C
_02238B78:
	movs r0, #0
	pop {r3, r4, r5, pc}
_02238B7C:
	ldrh r3, [r4, #2]
	ldr r0, _02238C60 @ =0x0000FFFF
	cmp r3, r0
	bne _02238BA4
	ldr r1, _02238C50 @ =0x022403F8
	adds r4, #8
	ldr r2, [r1]
	movs r1, #0xfe
	lsls r1, r1, #4
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0x68
	blx FUN_020C4B68
	ldr r0, _02238C50 @ =0x022403F8
	movs r2, #1
	ldr r1, [r0]
	ldr r0, _02238C64 @ =0x00001048
	str r2, [r1, r0]
	b _02238C4C
_02238BA4:
	ldr r1, _02238C50 @ =0x022403F8
	ldr r0, _02238C68 @ =0x00001168
	ldr r2, [r1]
	str r3, [r2, r0]
	ldr r3, [r1]
	adds r1, r0, #0
	subs r1, #0xc
	ldrh r2, [r4, #2]
	ldrh r1, [r3, r1]
	cmp r2, r1
	blo _02238BCC
	adds r0, #0x14
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _02238BC6
	movs r0, #4
	blx r1
_02238BC6:
	movs r0, #9
	bl ov97_02238534
_02238BCC:
	ldr r0, _02238C50 @ =0x022403F8
	movs r2, #0x46
	ldr r1, [r0]
	lsls r2, r2, #6
	ldrh r3, [r4, #2]
	adds r5, r1, r2
	ldrb r1, [r5, r3]
	cmp r1, #0
	bne _02238C4C
	movs r1, #1
	strb r1, [r5, r3]
	ldr r5, [r0]
	adds r0, r2, #0
	subs r0, #0x24
	ldrh r0, [r5, r0]
	ldrh r1, [r4, #2]
	subs r0, r0, #1
	cmp r1, r0
	bne _02238C10
	adds r3, r1, #0
	adds r1, r2, #0
	subs r1, #8
	subs r2, #0x20
	movs r0, #0x68
	ldr r1, [r5, r1]
	muls r3, r0, r3
	ldr r2, [r5, r2]
	adds r4, #8
	adds r0, r4, #0
	adds r1, r1, r3
	subs r2, r2, r3
	blx FUN_020C4B68
	b _02238C24
_02238C10:
	adds r4, #8
	subs r2, #8
	adds r0, r4, #0
	ldr r4, [r5, r2]
	movs r2, #0x68
	adds r3, r1, #0
	muls r3, r2, r3
	adds r1, r4, r3
	blx FUN_020C4B68
_02238C24:
	ldr r1, _02238C50 @ =0x022403F8
	ldr r0, _02238C6C @ =0x0000115E
	ldr r3, [r1]
	ldrh r2, [r3, r0]
	adds r2, r2, #1
	strh r2, [r3, r0]
	ldr r3, [r1]
	subs r1, r0, #2
	ldrh r2, [r3, r0]
	ldrh r1, [r3, r1]
	cmp r2, r1
	bne _02238C4C
	adds r0, #0x1e
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _02238C48
	movs r0, #2
	blx r1
_02238C48:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02238C4C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238C50: .4byte 0x022403F8
_02238C54: .4byte 0x0000115A
_02238C58: .4byte 0x00001164
_02238C5C: .4byte 0x0000117C
_02238C60: .4byte 0x0000FFFF
_02238C64: .4byte 0x00001048
_02238C68: .4byte 0x00001168
_02238C6C: .4byte 0x0000115E
	thumb_func_end ov97_02238B34

	thumb_func_start ov97_02238C70
ov97_02238C70: @ 0x02238C70
	push {r3, r4}
	movs r2, #0
	adds r3, r2, #0
	lsrs r1, r1, #1
	beq _02238C98
_02238C7A:
	lsls r4, r3, #1
	ldrh r4, [r0, r4]
	adds r3, r3, #1
	lsls r3, r3, #0x10
	adds r2, r2, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r4, r2, #1
	asrs r2, r2, #0xf
	orrs r2, r4
	lsls r2, r2, #0x10
	lsrs r3, r3, #0x10
	lsrs r2, r2, #0x10
	cmp r3, r1
	blo _02238C7A
_02238C98:
	adds r0, r2, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov97_02238C70

	thumb_func_start ov97_02238CA0
ov97_02238CA0: @ 0x02238CA0
	push {r4, lr}
	sub sp, #8
	ldr r0, _02238D34 @ =0x022403F8
	add r1, sp, #0
	ldr r4, [r0]
	ldr r0, _02238D38 @ =0x00001170
	adds r3, r4, r0
	ldrh r2, [r3]
	subs r0, #0x16
	strh r2, [r1]
	ldrh r2, [r3, #2]
	strh r2, [r1, #6]
	ldrh r2, [r3, #4]
	add r3, sp, #0
	strh r2, [r1, #4]
	ldrh r0, [r4, r0]
	ldr r2, _02238D3C @ =0x00003FA2
	strh r0, [r1, #2]
	movs r1, #0
_02238CC6:
	ldrh r0, [r3]
	adds r1, r1, #1
	eors r0, r2
	strh r0, [r3]
	ldrh r2, [r3]
	adds r3, r3, #2
	cmp r1, #4
	blt _02238CC6
	ldr r0, _02238D34 @ =0x022403F8
	movs r2, #8
	ldr r1, [r0]
	ldr r0, _02238D40 @ =0x0000104C
	adds r0, r1, r0
	add r1, sp, #0
	blx FUN_020A49A4
	ldr r0, _02238D34 @ =0x022403F8
	ldr r2, _02238D44 @ =0x00001178
	ldr r3, [r0]
	ldr r0, _02238D40 @ =0x0000104C
	ldr r1, [r3, r2]
	subs r2, #0x18
	ldr r2, [r3, r2]
	adds r0, r3, r0
	adds r3, r1, #0
	blx ov97_02239420
	ldr r1, _02238D34 @ =0x022403F8
	ldr r2, _02238D40 @ =0x0000104C
	ldr r1, [r1]
	movs r0, #0
	adds r1, r1, r2
	lsrs r2, r2, #4
	blx FUN_020C4B4C
	ldr r0, _02238D34 @ =0x022403F8
	ldr r1, _02238D44 @ =0x00001178
	ldr r2, [r0]
	ldr r0, [r2, r1]
	subs r1, #0x18
	ldr r1, [r2, r1]
	bl ov97_02238C70
	ldr r1, _02238D34 @ =0x022403F8
	ldr r2, [r1]
	ldr r1, _02238D48 @ =0x0000115A
	ldrh r1, [r2, r1]
	cmp r1, r0
	bne _02238D2E
	add sp, #8
	movs r0, #1
	pop {r4, pc}
_02238D2E:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02238D34: .4byte 0x022403F8
_02238D38: .4byte 0x00001170
_02238D3C: .4byte 0x00003FA2
_02238D40: .4byte 0x0000104C
_02238D44: .4byte 0x00001178
_02238D48: .4byte 0x0000115A
	thumb_func_end ov97_02238CA0

	thumb_func_start ov97_02238D4C
ov97_02238D4C: @ 0x02238D4C
	ldr r0, _02238D50 @ =0x000016A0
	bx lr
	.align 2, 0
_02238D50: .4byte 0x000016A0
	thumb_func_end ov97_02238D4C

	thumb_func_start ov97_02238D54
ov97_02238D54: @ 0x02238D54
	ldr r0, _02238D6C @ =0x022403F8
	ldr r2, [r0]
	ldr r0, _02238D70 @ =0x00001048
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _02238D66
	subs r0, #0x68
	adds r0, r2, r0
	bx lr
_02238D66:
	movs r0, #0
	bx lr
	nop
_02238D6C: .4byte 0x022403F8
_02238D70: .4byte 0x00001048
	thumb_func_end ov97_02238D54

	thumb_func_start ov97_02238D74
ov97_02238D74: @ 0x02238D74
	push {r3, lr}
	adds r1, #0x24
	movs r0, #0x1f
	bics r1, r0
	adds r1, #0x20
	movs r0, #0x56
	bl FUN_02018144
	adds r2, r0, #0
	adds r2, #0x20
	movs r1, #0x1f
	bics r2, r1
	subs r1, r2, #4
	str r0, [r1]
	adds r0, r2, #0
	pop {r3, pc}
	thumb_func_end ov97_02238D74

	thumb_func_start ov97_02238D94
ov97_02238D94: @ 0x02238D94
	push {r3, lr}
	cmp r1, #0
	beq _02238DA2
	subs r0, r1, #4
	ldr r0, [r0]
	bl FUN_020181C4
_02238DA2:
	pop {r3, pc}
	thumb_func_end ov97_02238D94

	thumb_func_start ov97_02238DA4
ov97_02238DA4: @ 0x02238DA4
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r0, sp, #0
	add r1, sp, #4
	blx FUN_021D75F4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	rsbs r0, r0, #0
	bl FUN_021D1F3C
	ldr r2, _02238DEC @ =0x0000266C
	str r0, [r4, r2]
	ldr r0, [sp]
	rsbs r1, r0, #0
	adds r0, r2, #4
	str r1, [r4, r0]
	adds r0, r2, #0
	ldr r1, [sp, #4]
	adds r0, #8
	str r1, [r4, r0]
	subs r0, r2, #4
	movs r1, #1
	str r1, [r4, r0]
	ldr r0, _02238DF0 @ =0x02240400
	adds r2, #0x10
	str r1, [r0, #0x10]
	movs r1, #0
	adds r0, r4, #0
	str r1, [r4, r2]
	bl ov97_0222D344
	ldr r0, _02238DF4 @ =0x0000100F
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02238DEC: .4byte 0x0000266C
_02238DF0: .4byte 0x02240400
_02238DF4: .4byte 0x0000100F
	thumb_func_end ov97_02238DA4

	thumb_func_start ov97_02238DF8
ov97_02238DF8: @ 0x02238DF8
	push {lr}
	sub sp, #0x3c
	blx FUN_021D7BFC
	cmp r0, #4
	beq _02238E0C
	cmp r0, #7
	beq _02238E18
	cmp r0, #8
	b _02238E18
_02238E0C:
	add r0, sp, #0
	blx FUN_021D7EB8
	add sp, #0x3c
	movs r0, #1
	pop {pc}
_02238E18:
	movs r0, #0
	add sp, #0x3c
	pop {pc}
	.align 2, 0
	thumb_func_end ov97_02238DF8

	thumb_func_start ov97_02238E20
ov97_02238E20: @ 0x02238E20
	push {r3, r4}
	ldr r3, _02238E38 @ =0x02240400
	movs r4, #0
	str r4, [r3]
	str r4, [r3, #0xc]
	ldr r3, _02238E3C @ =0x00001650
	str r2, [r0, r3]
	ldr r0, _02238E40 @ =0x00001012
	str r0, [r1]
	pop {r3, r4}
	bx lr
	nop
_02238E38: .4byte 0x02240400
_02238E3C: .4byte 0x00001650
_02238E40: .4byte 0x00001012
	thumb_func_end ov97_02238E20

	thumb_func_start ov97_02238E44
ov97_02238E44: @ 0x02238E44
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	ldr r2, _02238E68 @ =0x02240400
	movs r5, #0
	str r5, [r2, #4]
	str r1, [r2, #8]
	ldr r1, _02238E6C @ =0x00001650
	str r3, [r0, r1]
	ldr r0, _02238E70 @ =0x00001013
	str r0, [r4]
	ldr r0, _02238E74 @ =ov97_02238E88
	blx FUN_021D87E0
	cmp r0, #0
	bne _02238E66
	ldr r0, [sp, #0x10]
	str r0, [r4]
_02238E66:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238E68: .4byte 0x02240400
_02238E6C: .4byte 0x00001650
_02238E70: .4byte 0x00001013
_02238E74: .4byte ov97_02238E88
	thumb_func_end ov97_02238E44

	thumb_func_start ov97_02238E78
ov97_02238E78: @ 0x02238E78
	ldr r0, _02238E84 @ =0x02240400
	movs r2, #1
	str r2, [r0]
	str r1, [r0, #0xc]
	bx lr
	nop
_02238E84: .4byte 0x02240400
	thumb_func_end ov97_02238E78

	thumb_func_start ov97_02238E88
ov97_02238E88: @ 0x02238E88
	ldr r0, _02238E90 @ =0x02240400
	movs r1, #1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_02238E90: .4byte 0x02240400
	thumb_func_end ov97_02238E88

	thumb_func_start ov97_02238E94
ov97_02238E94: @ 0x02238E94
	push {r3, lr}
	bl FUN_02039794
	bl FUN_02038514
	bl FUN_020995C4
	bl FUN_02099560
	bl FUN_020334CC
	pop {r3, pc}
	thumb_func_end ov97_02238E94

	thumb_func_start ov97_02238EAC
ov97_02238EAC: @ 0x02238EAC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _022391AC @ =0x0000267C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238ECC
	blx r0
	cmp r0, #1
	bne _02238ECC
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
_02238ECC:
	movs r3, #1
	ldr r0, [r5]
	lsls r3, r3, #0xc
	subs r0, r0, r3
	cmp r0, #0x13
	bls _02238EDA
	b _022392C4
_02238EDA:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02238EE6: @ jump table
	.2byte _02238F0E - _02238EE6 - 2 @ case 0
	.2byte _02238F20 - _02238EE6 - 2 @ case 1
	.2byte _02238F3C - _02238EE6 - 2 @ case 2
	.2byte _02238F64 - _02238EE6 - 2 @ case 3
	.2byte _02238FAE - _02238EE6 - 2 @ case 4
	.2byte _02238FC6 - _02238EE6 - 2 @ case 5
	.2byte _0223900C - _02238EE6 - 2 @ case 6
	.2byte _02239030 - _02238EE6 - 2 @ case 7
	.2byte _02239066 - _02238EE6 - 2 @ case 8
	.2byte _02239088 - _02238EE6 - 2 @ case 9
	.2byte _022390C4 - _02238EE6 - 2 @ case 10
	.2byte _022390EA - _02238EE6 - 2 @ case 11
	.2byte _02239160 - _02238EE6 - 2 @ case 12
	.2byte _0223917E - _02238EE6 - 2 @ case 13
	.2byte _022392C4 - _02238EE6 - 2 @ case 14
	.2byte _02239196 - _02238EE6 - 2 @ case 15
	.2byte _0223924E - _02238EE6 - 2 @ case 16
	.2byte _02239244 - _02238EE6 - 2 @ case 17
	.2byte _0223926A - _02238EE6 - 2 @ case 18
	.2byte _022392A0 - _02238EE6 - 2 @ case 19
_02238F0E:
	bl FUN_02033478
	bl FUN_02099550
	bl FUN_020995B4
	ldr r0, _022391B0 @ =0x00001001
	str r0, [r5]
	b _022392C4
_02238F20:
	bl FUN_020334A4
	cmp r0, #0
	beq _02239004
	ldr r0, _022391B4 @ =ov97_02238D74
	ldr r1, _022391B8 @ =ov97_02238D94
	blx FUN_021D776C
	ldr r0, [r4, #4]
	bl FUN_020384C0
	ldr r0, _022391BC @ =0x00001002
	str r0, [r5]
	b _022392C4
_02238F3C:
	ldr r0, _022391C0 @ =0x000015E8
	movs r1, #2
	adds r0, r4, r0
	movs r2, #1
	movs r3, #0x14
	blx FUN_021D78C8
	movs r0, #2
	blx FUN_021D792C
	blx FUN_021D797C
	bl FUN_02039734
	ldr r0, _022391C4 @ =0x00001003
	movs r1, #0
	str r0, [r5]
	ldr r0, _022391C8 @ =0x00002678
	str r1, [r4, r0]
	b _022392C4
_02238F64:
	blx FUN_021D7AE4
	blx FUN_021D7A8C
	cmp r0, #0
	beq _02238F9C
	adds r0, r4, #0
	bl ov97_02238DF8
	cmp r0, #1
	bne _02238F94
	ldr r0, _022391C8 @ =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02238F8E
	ldr r0, _022391CC @ =0x02240400
	movs r1, #3
	str r1, [r0, #8]
	ldr r0, _022391D0 @ =0x0000100D
	str r0, [r5]
	b _02238F9C
_02238F8E:
	ldr r0, _022391D4 @ =0x00001004
	str r0, [r5]
	b _02238F9C
_02238F94:
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
_02238F9C:
	ldr r0, _022391D8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _02239004
	ldr r0, _022391C8 @ =0x00002678
	movs r1, #1
	str r1, [r4, r0]
	b _022392C4
_02238FAE:
	blx FUN_021D81DC
	cmp r0, #0
	bne _02238FC0
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
	b _022392C4
_02238FC0:
	ldr r0, _022391DC @ =0x00001005
	str r0, [r5]
	b _022392C4
_02238FC6:
	blx FUN_021D82A0
	cmp r0, #3
	bne _02238FDA
	ldr r0, _022391E0 @ =0x00001006
	ldr r1, _022391E4 @ =0x021D8018
	str r0, [r5]
	ldr r0, _022391AC @ =0x0000267C
	str r1, [r4, r0]
	b _02238FFA
_02238FDA:
	cmp r0, #4
	bne _02238FEC
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
	blx FUN_021D7DB0
	b _02238FFA
_02238FEC:
	cmp r0, #5
	bne _02238FFA
	ldr r0, _022391CC @ =0x02240400
	movs r1, #3
	str r1, [r0, #8]
	ldr r0, _022391D0 @ =0x0000100D
	str r0, [r5]
_02238FFA:
	ldr r0, _022391D8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	bne _02239006
_02239004:
	b _022392C4
_02239006:
	blx FUN_021D8398
	b _022392C4
_0223900C:
	ldr r0, _022391E8 @ =ov97_02238E78
	ldr r1, _022391EC @ =0x0223F138
	ldr r2, _022391F0 @ =0x0223F140
	blx FUN_021D86C8
	cmp r0, #0
	bne _02239024
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
	b _022392C4
_02239024:
	ldr r2, _022391F4 @ =0x00001007
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov97_02238E20
	b _022392C4
_02239030:
	ldr r0, _022391C8 @ =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02239048
	adds r3, #0xc
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_02239048:
	ldr r0, _022391F8 @ =0x0223F154
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_021D882C
	cmp r0, #0
	bne _02239060
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
	b _022392C4
_02239060:
	ldr r0, _022391FC @ =0x00001008
	str r0, [r5]
	b _022392C4
_02239066:
	ldr r0, _02239200 @ =0x00001654
	adds r0, r4, r0
	blx FUN_021D8860
	cmp r0, #0
	bne _0223907C
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
	b _022392C4
_0223907C:
	ldr r2, _02239204 @ =0x00001009
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov97_02238E20
	b _022392C4
_02239088:
	ldr r0, _02239200 @ =0x00001654
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _022390A0
	adds r3, #0xd
	adds r0, r4, #0
	movs r1, #2
	adds r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_022390A0:
	ldr r0, _02239208 @ =0x02240414
	movs r1, #0
	movs r2, #0xa
	blx FUN_021D8884
	cmp r0, #0
	bne _022390B8
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
	b _022392C4
_022390B8:
	ldr r2, _0223920C @ =0x0000100A
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov97_02238E20
	b _022392C4
_022390C4:
	ldr r1, _02239210 @ =0x00001658
	ldr r0, _02239208 @ =0x02240414
	adds r1, r4, r1
	adds r2, r3, #0
	blx FUN_021D88CC
	cmp r0, #0
	bne _022390DE
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
	b _022392C4
_022390DE:
	ldr r0, _02239214 @ =0x0000100B
	movs r1, #0
	str r0, [r5]
	ldr r0, _02239218 @ =0x00002664
	str r1, [r4, r0]
	b _022392C4
_022390EA:
	ldr r0, _022391CC @ =0x02240400
	ldr r0, [r0]
	cmp r0, #0
	bne _02239138
	ldr r0, _022391D8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _0223910C
	adds r3, #0xc
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_0223910C:
	ldr r1, _0223921C @ =0x0000265C
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	blx FUN_021D891C
	cmp r0, #1
	bne _0223919E
	ldr r1, _0223921C @ =0x0000265C
	movs r0, #0x64
	ldr r2, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	muls r0, r2, r0
	blx FUN_020E2178
	ldr r1, _02239218 @ =0x00002664
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _0223919E
	str r0, [r4, r1]
	b _022392C4
_02239138:
	ldr r0, _022391C8 @ =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02239150
	adds r3, #0xd
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_02239150:
	adds r3, #0xd
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_02239160:
	blx FUN_021D8900
	cmp r0, #0
	bne _0223916E
	ldr r0, _022391D0 @ =0x0000100D
	str r0, [r5]
	b _022392C4
_0223916E:
	ldr r0, _022391AC @ =0x0000267C
	movs r1, #0
	str r1, [r4, r0]
	bl ov97_02238E94
	ldr r0, _022391CC @ =0x02240400
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
_0223917E:
	blx FUN_021D7E10
	cmp r0, #1
	bne _0223919E
	ldr r0, _022391AC @ =0x0000267C
	movs r1, #0
	str r1, [r4, r0]
	bl ov97_02238E94
	ldr r0, _022391CC @ =0x02240400
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
_02239196:
	ldr r0, _022391CC @ =0x02240400
	ldr r0, [r0, #0x10]
	cmp r0, #1
	beq _022391A0
_0223919E:
	b _022392C4
_022391A0:
	adds r0, r4, #0
	bl ov97_0222E13C
	ldr r0, _02239220 @ =0x00002674
	b _02239224
	nop
_022391AC: .4byte 0x0000267C
_022391B0: .4byte 0x00001001
_022391B4: .4byte ov97_02238D74
_022391B8: .4byte ov97_02238D94
_022391BC: .4byte 0x00001002
_022391C0: .4byte 0x000015E8
_022391C4: .4byte 0x00001003
_022391C8: .4byte 0x00002678
_022391CC: .4byte 0x02240400
_022391D0: .4byte 0x0000100D
_022391D4: .4byte 0x00001004
_022391D8: .4byte 0x021BF67C
_022391DC: .4byte 0x00001005
_022391E0: .4byte 0x00001006
_022391E4: .4byte 0x021D8018
_022391E8: .4byte ov97_02238E78
_022391EC: .4byte 0x0223F138
_022391F0: .4byte 0x0223F140
_022391F4: .4byte 0x00001007
_022391F8: .4byte 0x0223F154
_022391FC: .4byte 0x00001008
_02239200: .4byte 0x00001654
_02239204: .4byte 0x00001009
_02239208: .4byte 0x02240414
_0223920C: .4byte 0x0000100A
_02239210: .4byte 0x00001658
_02239214: .4byte 0x0000100B
_02239218: .4byte 0x00002664
_0223921C: .4byte 0x0000265C
_02239220: .4byte 0x00002674
_02239224:
	ldr r0, [r4, r0]
	subs r0, r0, #5
	cmp r0, #1
	bhi _0223923E
	ldr r3, _022392C8 @ =0x00001010
	adds r0, r4, #0
	str r3, [sp]
	movs r1, #3
	adds r2, r5, #0
	adds r3, r3, #1
	bl ov97_02238E44
	b _022392C4
_0223923E:
	ldr r0, _022392CC @ =0x00001011
	str r0, [r5]
	b _022392C4
_02239244:
	blx FUN_021D7DB0
	ldr r0, _022392C8 @ =0x00001010
	str r0, [r5]
	b _022392C4
_0223924E:
	ldr r0, _022392D0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _022392C4
	ldr r0, _022392D4 @ =0x0000267C
	movs r1, #0
	str r1, [r4, r0]
	blx FUN_021D76E8
	bl ov97_02238E94
	movs r0, #4
	pop {r3, r4, r5, pc}
_0223926A:
	ldr r0, _022392D8 @ =0x02240400
	ldr r1, [r0]
	cmp r1, #1
	bne _0223928E
	movs r1, #0
	str r1, [r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02239286
	adds r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5]
	b _022392C4
_02239286:
	ldr r0, _022392DC @ =0x00001650
	ldr r0, [r4, r0]
	str r0, [r5]
	b _022392C4
_0223928E:
	ldr r0, _022392D0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _022392C4
	ldr r0, _022392E0 @ =0x00002678
	movs r1, #1
	str r1, [r4, r0]
	b _022392C4
_022392A0:
	ldr r0, _022392D8 @ =0x02240400
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _022392B4
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, _022392DC @ =0x00001650
	ldr r0, [r4, r0]
	str r0, [r5]
	b _022392C4
_022392B4:
	ldr r0, _022392D0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _022392C4
	ldr r0, _022392E0 @ =0x00002678
	movs r1, #1
	str r1, [r4, r0]
_022392C4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022392C8: .4byte 0x00001010
_022392CC: .4byte 0x00001011
_022392D0: .4byte 0x021BF67C
_022392D4: .4byte 0x0000267C
_022392D8: .4byte 0x02240400
_022392DC: .4byte 0x00001650
_022392E0: .4byte 0x00002678
	thumb_func_end ov97_02238EAC

	thumb_func_start ov97_022392E4
ov97_022392E4: @ 0x022392E4
	cmp r0, #1
	bne _022392EC
	movs r0, #1
	b _022392EE
_022392EC:
	ldr r0, _022392F4 @ =0x000001DE
_022392EE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_022392F4: .4byte 0x000001DE
	thumb_func_end ov97_022392E4

	thumb_func_start ov97_022392F8
ov97_022392F8: @ 0x022392F8
	cmp r0, #7
	bhi _02239318
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02239308: @ jump table
	.2byte _02239318 - _02239308 - 2 @ case 0
	.2byte _02239318 - _02239308 - 2 @ case 1
	.2byte _0223931C - _02239308 - 2 @ case 2
	.2byte _02239322 - _02239308 - 2 @ case 3
	.2byte _0223931C - _02239308 - 2 @ case 4
	.2byte _02239326 - _02239308 - 2 @ case 5
	.2byte _02239318 - _02239308 - 2 @ case 6
	.2byte _0223931C - _02239308 - 2 @ case 7
_02239318:
	movs r0, #0xea
	bx lr
_0223931C:
	movs r0, #0x6d
	lsls r0, r0, #2
	bx lr
_02239322:
	ldr r0, _0223932C @ =0x000001B7
	bx lr
_02239326:
	ldr r0, _02239330 @ =0x000001B6
	bx lr
	nop
_0223932C: .4byte 0x000001B7
_02239330: .4byte 0x000001B6
	thumb_func_end ov97_022392F8

	thumb_func_start ov97_02239334
ov97_02239334: @ 0x02239334
	cmp r0, #7
	bhi _02239354
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02239344: @ jump table
	.2byte _02239354 - _02239344 - 2 @ case 0
	.2byte _02239354 - _02239344 - 2 @ case 1
	.2byte _02239358 - _02239344 - 2 @ case 2
	.2byte _0223935C - _02239344 - 2 @ case 3
	.2byte _02239358 - _02239344 - 2 @ case 4
	.2byte _02239362 - _02239344 - 2 @ case 5
	.2byte _02239354 - _02239344 - 2 @ case 6
	.2byte _02239358 - _02239344 - 2 @ case 7
_02239354:
	movs r0, #0xeb
	bx lr
_02239358:
	ldr r0, _02239368 @ =0x000001B5
	bx lr
_0223935C:
	movs r0, #0x6e
	lsls r0, r0, #2
	bx lr
_02239362:
	movs r0, #0x6d
	lsls r0, r0, #2
	bx lr
	.align 2, 0
_02239368: .4byte 0x000001B5
	thumb_func_end ov97_02239334

	thumb_func_start ov97_0223936C
ov97_0223936C: @ 0x0223936C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r3, #0
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r5, #1
	beq _02239380
	movs r2, #1
	b _02239382
_02239380:
	movs r2, #0
_02239382:
	ldr r0, [sp, #8]
	movs r6, #0
	subs r0, r0, #1
	str r0, [sp, #0xc]
	beq _0223940A
	ldr r1, _02239418 @ =0x0223DAE8
	lsls r0, r2, #1
	ldr r4, [sp, #4]
	adds r7, r1, r0
_02239394:
	ldr r0, [sp]
	ldrb r0, [r0, r6]
	cmp r0, #0xff
	beq _0223940A
	cmp r0, #0xf7
	blo _022393CE
	ldr r0, [sp, #8]
	subs r3, r0, #1
	cmp r3, #0xa
	blo _022393AA
	movs r3, #0xa
_022393AA:
	movs r1, #0
	cmp r3, #0
	ble _022393C0
	movs r0, #0x6b
	ldr r2, [sp, #4]
	lsls r0, r0, #2
_022393B6:
	adds r1, r1, #1
	strh r0, [r2]
	adds r2, r2, #2
	cmp r1, r3
	blt _022393B6
_022393C0:
	ldr r0, [sp, #4]
	ldr r2, _0223941C @ =0x0000FFFF
	lsls r1, r1, #1
	strh r2, [r0, r1]
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022393CE:
	lsls r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #1
	beq _022393E0
	cmp r0, #0xea
	beq _022393EA
	cmp r0, #0xeb
	beq _022393F4
	b _022393FE
_022393E0:
	adds r0, r5, #0
	bl ov97_022392E4
	strh r0, [r4]
	b _02239400
_022393EA:
	adds r0, r5, #0
	bl ov97_022392F8
	strh r0, [r4]
	b _02239400
_022393F4:
	adds r0, r5, #0
	bl ov97_02239334
	strh r0, [r4]
	b _02239400
_022393FE:
	strh r0, [r4]
_02239400:
	ldr r0, [sp, #0xc]
	adds r6, r6, #1
	adds r4, r4, #2
	cmp r6, r0
	blo _02239394
_0223940A:
	ldr r2, _0223941C @ =0x0000FFFF
	ldr r0, [sp, #4]
	lsls r1, r6, #1
	strh r2, [r0, r1]
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02239418: .4byte 0x0223DAE8
_0223941C: .4byte 0x0000FFFF
	thumb_func_end ov97_0223936C

	arm_func_start ov97_02239420
ov97_02239420: @ 0x02239420
	push {r4, r5, r6, r7, r8, sb, lr}
	ldrb r7, [r0]
	ldrb r6, [r0, #1]
	add r0, r0, #4
	mov lr, #0x1000000
	add r7, lr, r7, lsl #24
	lsl r6, r6, #0x18
	ldrb sb, [r0, r7, lsr #24]
	subs r2, r2, #1
	bmi _02239480
_02239448:
	add r6, r6, sb, lsl #24
	subs r2, r2, #1
	ldrb r8, [r0, r6, lsr #24]
	ldrb r5, [r1], #1
	strb r8, [r0, r7, lsr #24]
	strb sb, [r0, r6, lsr #24]
	add r4, sb, r8
	and r4, r4, #0xff
	add r7, r7, lr
	ldrb r4, [r0, r4]
	ldrb sb, [r0, r7, lsr #24]
	eor r5, r5, r4
	strb r5, [r3], #1
	bge _02239448
_02239480:
	sub r7, r7, lr
	lsr r7, r7, #0x18
	lsr r6, r6, #0x18
	strb r7, [r0, #-4]
	strb r6, [r0, #-3]
	pop {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov97_02239420

	arm_func_start ov97_02239498
ov97_02239498: @ 0x02239498
	push {r4, r5, lr}
	sub sp, sp, #0x14
	mov ip, r0
	mov r4, r1
	mov r5, r2
	mov r2, r4
	add r0, sp, #0
	mov r1, ip
	mov r4, r3
	bl FUN_020D3068
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	bl ov97_022394DC
	add sp, sp, #0x14
	pop {r4, r5, lr}
	bx lr
	arm_func_end ov97_02239498

	arm_func_start ov97_022394DC
ov97_022394DC: @ 0x022394DC
	push {r4, lr}
	sub sp, sp, #0x120
	mov r3, #0
	str r3, [sp, #0x10]
	str r3, [sp, #0x18]
	str r2, [sp]
	mov r3, #0x80
	mov r4, r0
	mov r2, r1
	ldr ip, _022395D8 @ =0x00010001
	str r3, [sp, #4]
	add r0, sp, #0x1c
	mov r1, #0x100
	str ip, [sp, #8]
	bl ov97_02239918
	mov r1, r0
	add r0, sp, #0x1c
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl ov97_02239780
	cmp r0, #0
	addeq sp, sp, #0x120
	moveq r0, #0
	popeq {r4, lr}
	bxeq lr
	add r1, sp, #0x14
	add r0, sp, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r3, r2
	bl ov97_022395DC
	cmp r0, #0
	addeq sp, sp, #0x120
	moveq r0, #0
	popeq {r4, lr}
	bxeq lr
	ldr r0, [sp, #0x18]
	cmp r0, #0x14
	addne sp, sp, #0x120
	movne r0, #0
	popne {r4, lr}
	bxne lr
	ldr r2, [sp, #0x14]
	mov r3, #0
_02239598:
	ldrb r1, [r2]
	ldrb r0, [r4]
	cmp r1, r0
	addne sp, sp, #0x120
	movne r0, #0
	popne {r4, lr}
	bxne lr
	add r3, r3, #1
	cmp r3, #0x14
	add r4, r4, #1
	add r2, r2, #1
	blt _02239598
	mov r0, #1
	add sp, sp, #0x120
	pop {r4, lr}
	bx lr
	.align 2, 0
_022395D8: .4byte 0x00010001
	arm_func_end ov97_022394DC

	arm_func_start ov97_022395DC
ov97_022395DC: @ 0x022395DC
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r4, r3
	add r0, sp, #0x10
	add r1, sp, #0x14
	mov r2, #0x30
	mov r3, #0
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r0, sp, #0x10
	add r1, sp, #0x14
	mov r2, #0x30
	mov r3, #0
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r0, sp, #0x10
	add r1, sp, #0x14
	add r3, sp, #0
	mov r2, #6
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r5, #0
	ldrne r0, [sp, #0x10]
	strne r0, [r5]
	cmp r4, #0
	ldrne r0, [sp]
	strne r0, [r4]
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r2
	str r0, [sp, #0x10]
	cmp r1, r2
	addlo sp, sp, #4
	movlo r0, #0
	poplo {r4, r5, lr}
	addlo sp, sp, #0x10
	bxlo lr
	sub ip, r1, r2
	add r0, sp, #0x10
	add r1, sp, #0x14
	add r3, sp, #0
	mov r2, #5
	str ip, [sp, #0x14]
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r2
	str r0, [sp, #0x10]
	cmp r1, r2
	addlo sp, sp, #4
	movlo r0, #0
	poplo {r4, r5, lr}
	addlo sp, sp, #0x10
	bxlo lr
	sub ip, r1, r2
	add r0, sp, #0x10
	add r1, sp, #0x14
	add r3, sp, #0
	mov r2, #4
	str ip, [sp, #0x14]
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x10]
	strne r0, [r1]
	ldr r1, [sp, #0x24]
	cmp r1, #0
	ldrne r0, [sp]
	strne r0, [r1]
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov97_022395DC

	arm_func_start ov97_02239780
ov97_02239780: @ 0x02239780
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0xa
	addlo sp, sp, #4
	movlo r0, #0
	ldmlo sp!, {lr}
	bxlo lr
	ldrb ip, [r0]
	add lr, r0, r1
	cmp ip, #1
	addne sp, sp, #4
	movne r0, #0
	ldmne sp!, {lr}
	bxne lr
	add ip, r0, #1
	mov r1, #0
_022397C0:
	ldrb r0, [ip], #1
	cmp r0, #0xff
	addne sp, sp, #4
	movne r0, #0
	ldmne sp!, {lr}
	bxne lr
	add r1, r1, #1
	cmp r1, #8
	blt _022397C0
	cmp ip, lr
	beq _02239804
_022397EC:
	ldrb r0, [ip]
	cmp r0, #0xff
	bne _02239804
	add ip, ip, #1
	cmp ip, lr
	bne _022397EC
_02239804:
	cmp ip, lr
	addeq sp, sp, #4
	moveq r0, #0
	ldmeq sp!, {lr}
	bxeq lr
	ldrb r0, [ip]
	cmp r0, #0
	movne r0, #0
	addeq r0, ip, #1
	subeq r1, lr, r0
	streq r1, [r3]
	streq r0, [r2]
	moveq r0, #1
	add sp, sp, #4
	ldm sp!, {lr}
	bx lr
	arm_func_end ov97_02239780

	arm_func_start ov97_02239844
ov97_02239844: @ 0x02239844
	push {r4, r5, r6, lr}
	ldr r5, [r0]
	mov r6, #0
	ldrb r4, [r5]
	add r5, r5, #1
	mov ip, r6
	cmp r4, r2
	ldr r2, [r1]
	movne r0, r6
	popne {r4, r5, r6, lr}
	bxne lr
	cmp r2, #1
	movlo r0, r6
	poplo {r4, r5, r6, lr}
	bxlo lr
	ldrb lr, [r5]
	sub r4, r2, #1
	ands r2, lr, #0x80
	beq _022398E0
	and r2, lr, #0x7f
	and lr, r2, #0xff
	add r2, lr, #1
	cmp r4, r2
	movlo r0, r6
	poplo {r4, r5, r6, lr}
	bxlo lr
	cmp r3, #0
	sub r6, r4, lr
	beq _022398D8
	ldrb r2, [r5, #1]
	add r5, r5, #1
	and r4, r2, #0x7f
_022398C4:
	sub r2, lr, #1
	add ip, r4, ip, lsl #7
	ands lr, r2, #0xff
	bne _022398C4
	b _022398FC
_022398D8:
	add r5, r5, lr
	b _022398FC
_022398E0:
	add r5, r5, #1
	cmp r4, #1
	mov ip, lr
	movlo r0, r6
	poplo {r4, r5, r6, lr}
	bxlo lr
	sub r6, r4, #1
_022398FC:
	str r5, [r0]
	str r6, [r1]
	cmp r3, #0
	strne ip, [r3]
	mov r0, #1
	pop {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_02239844

	arm_func_start ov97_02239918
ov97_02239918: @ 0x02239918
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x58
	movs r6, r0
	mov r5, r1
	mov r8, r2
	mov r7, r3
	beq _02239948
	cmp r8, #0
	beq _02239948
	ldr r0, [sp, #0x70]
	cmp r0, #0
	bne _02239958
_02239948:
	add sp, sp, #0x58
	mvn r0, #2
	pop {r4, r5, r6, r7, r8, lr}
	bx lr
_02239958:
	bl ov97_0223D358
	mov r4, r0
	add r0, sp, #4
	bl ov97_0223D3D8
	add r0, sp, #0x18
	bl ov97_0223D3D8
	add r0, sp, #0x2c
	bl ov97_0223D3D8
	add r0, sp, #0x40
	bl ov97_0223D3D8
	cmp r4, #0
	mvneq r5, #1
	beq _02239A34
	add r2, sp, #4
	mov r0, r8
	mov r1, r7
	bl ov97_0223D014
	cmp r0, #0
	mvneq r5, #1
	beq _02239A34
	ldr r1, [sp, #0x78]
	add r0, sp, #0x2c
	bl ov97_0223D128
	cmp r0, #0
	mvneq r5, #1
	beq _02239A34
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	add r2, sp, #0x40
	bl ov97_0223D014
	cmp r0, #0
	mvneq r5, #1
	beq _02239A34
	add r0, sp, #0x18
	add r1, sp, #4
	add r2, sp, #0x2c
	add r3, sp, #0x40
	str r4, [sp]
	bl ov97_0223B564
	cmp r0, #0
	mvneq r5, #1
	beq _02239A34
	add r0, sp, #0x18
	bl ov97_0223D534
	add r1, r0, #7
	asr r0, r1, #2
	add r0, r1, r0, lsr #29
	asr r0, r0, #3
	cmp r0, r5
	mvngt r5, #0
	bgt _02239A34
	add r0, sp, #0x18
	mov r1, r6
	bl ov97_0223CF98
	mov r5, r0
_02239A34:
	add r0, sp, #4
	bl ov97_0223D4B8
	add r0, sp, #0x18
	bl ov97_0223D4B8
	add r0, sp, #0x2c
	bl ov97_0223D4B8
	add r0, sp, #0x40
	bl ov97_0223D4B8
	cmp r4, #0
	beq _02239A64
	mov r0, r4
	bl ov97_0223D2E8
_02239A64:
	mov r0, r5
	add sp, sp, #0x58
	pop {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end ov97_02239918

	arm_func_start ov97_02239A74
ov97_02239A74: @ 0x02239A74
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x7c
	mov r4, #0
	mov r5, r3
	mov r3, r4
	str r3, [sp, #0x34]
	ldr r3, [r5]
	str r0, [sp, #4]
	mov r0, r4
	ldr r3, [r3]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	ands r0, r3, #1
	ldr r0, [sp, #0xa0]
	str r4, [sp, #8]
	str r0, [sp, #0xa0]
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #0x7c
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r1, [r7, #4]
	ldr r0, [r0]
	cmp r1, #0
	str r0, [sp, #0xc]
	beq _02239AF8
	cmp r1, #1
	bne _02239B14
	ldr r0, [r7]
	ldr r0, [r0]
	cmp r0, #0
	bne _02239B14
_02239AF8:
	ldr r0, [sp, #4]
	mov r1, #0
	bl ov97_0223D128
	add sp, sp, #0x7c
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02239B14:
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _02239B38
	cmp r1, #1
	bne _02239B54
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #0
	bne _02239B54
_02239B38:
	ldr r0, [sp, #4]
	mov r1, #1
	bl ov97_0223D128
	add sp, sp, #0x7c
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02239B54:
	cmp r1, #1
	bne _02239B88
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #1
	bne _02239B88
	ldr r0, [sp, #4]
	mov r1, r7
	bl ov97_0223D1D0
	add sp, sp, #0x7c
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02239B88:
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _02239BBC
	bl ov97_0223AC0C
	str r0, [sp, #0x18]
	cmp r0, #0
	beq _0223A218
	ldr r2, [sp, #0xa0]
	mov r1, r5
	bl ov97_0223AC40
	cmp r0, #0
	beq _0223A218
_02239BBC:
	ldr r3, [sp, #0xa0]
	add r1, sp, #0x34
	mov r4, r3
	ldr r4, [r4, #0x10c]
	mov r0, r6
	mov r2, #0
	str r4, [sp, #0x1c]
	bl ov97_0223AFD4
	cmp r0, #0
	beq _0223A218
	ldr r0, [sp, #0xa0]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0]
	ldr r0, [sp, #0x34]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	str r0, [sp, #0x10]
	add r0, r1, #0x3f
	bl FUN_020E1F6C
	ldr r1, [sp, #0x34]
	mov r4, r0
	add r0, r1, #4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	ldr r3, [r7, #4]
	ldr sl, [r0, #0x24]
	cmp r3, sl
	bne _02239C54
	ldr r1, [r7]
	sub r2, sl, #1
	ldr r0, [r5]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, r2, lsl #2]
	cmp r1, r0
	strlo r7, [sp, #0x14]
	blo _02239D0C
_02239C54:
	cmp r3, sl
	bge _02239CC8
	ldr r0, [sp, #0xa0]
	ldr r3, [r0]
	add r1, r0, #4
	add r2, r3, #1
	str r2, [r0]
	mov r0, #0x14
	mla r0, r3, r0, r1
	ldr r2, [r7, #4]
	mov r1, r0
	str r2, [r1, #4]
	mov r1, sl
	str r0, [sp, #0x14]
	bl ov97_0223D438
	ldr r0, [r7, #4]
	mov r2, #0
	cmp r0, #0
	ble _02239D0C
_02239CA0:
	ldr r1, [r7]
	ldr r0, [sp, #0x14]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0]
	str r1, [r0, r2, lsl #2]
	ldr r0, [r7, #4]
	add r2, r2, #1
	cmp r2, r0
	blt _02239CA0
	b _02239D0C
_02239CC8:
	ldr r0, [sp, #0xa0]
	mov r2, r5
	ldr r3, [r0]
	mov r1, r7
	add r5, r3, #1
	str r5, [r0]
	add r5, r0, #4
	mov r0, #0x14
	mla r0, r3, r0, r5
	ldr r3, [sp, #0xa0]
	str r0, [sp, #0x14]
	bl ov97_0223B5C0
	cmp r0, #0
	beq _0223A218
	ldr r0, [sp, #0x14]
	mov r1, sl
	bl ov97_0223D438
_02239D0C:
	ldr r0, [sp, #0xa0]
	ldr r3, [r0]
	ldr r0, [r6, #4]
	add r1, r3, #1
	mul r2, r0, r4
	ldr r0, [sp, #0xa0]
	lsl r4, r2, #1
	str r1, [r0]
	ldr r1, [r0]
	add r4, r4, #7
	add r2, r1, #1
	str r2, [r0]
	ldr r2, [sp, #0x10]
	ldr r0, [r0]
	mul r5, r2, sl
	asr r2, r4, #1
	add r2, r4, r2, lsr #30
	add r5, r5, r2, asr #2
	ldr r2, [sp, #0xa0]
	mov r6, #0x14
	add r2, r2, #4
	mla r8, r1, r6, r2
	mla r4, r3, r6, r2
	ldr r1, [sp, #0xa0]
	add r3, r0, #1
	mla r7, r0, r6, r2
	str r3, [r1]
	mov r0, r1
	ldr r0, [r0]
	mla r6, r0, r6, r2
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	cmp sl, r0
	ldrle r0, [sp, #4]
	ble _02239DB0
	ldr r0, [sp, #4]
	mov r1, sl
	bl ov97_0223D268
_02239DB0:
	cmp r0, #0
	beq _0223A218
	ldr r0, [r8, #8]
	lsl r1, sl, #2
	cmp r1, r0
	movle r0, r8
	ble _02239DD4
	mov r0, r8
	bl ov97_0223D268
_02239DD4:
	cmp r0, #0
	beq _0223A218
	ldr r1, [r7, #8]
	lsl r0, sl, #1
	str r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r7
	ble _02239E00
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl ov97_0223D268
_02239E00:
	cmp r0, #0
	beq _0223A218
	ldr r0, [r4, #8]
	cmp r5, r0
	movle r0, r4
	ble _02239E24
	mov r1, r5
	mov r0, r4
	bl ov97_0223D268
_02239E24:
	cmp r0, #0
	beq _0223A218
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r6
	ble _02239E4C
	ldr r1, [sp, #0x24]
	mov r0, r6
	bl ov97_0223D268
_02239E4C:
	cmp r0, #0
	beq _0223A218
	ldr r0, [sp, #0x18]
	ldr fp, [r8]
	ldr r8, [r7]
	ldr r6, [r6]
	ldr r1, [r4]
	ldr r7, [r0, #0x48]
	ldr r5, [r0, #0x20]
	ldr r3, [sp, #0x18]
	str r1, [sp, #0x38]
	str sl, [sp]
	ldr r1, [sp, #0x14]
	ldr r3, [r3, #0xc]
	ldr r1, [r1]
	mov r0, r6
	mov r2, sl
	bl ov97_0223BB94
	str r7, [sp]
	ldr r0, [sp, #0x38]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
	ldr r0, [sp, #0x10]
	cmp r0, #1
	ble _02239F54
	ldr r1, [sp, #0x38]
	mov r0, r6
	mov r2, sl
	mov r3, fp
	bl ov97_0223B31C
	mov r0, fp
	mov r1, r6
	mov r2, r5
	mov r3, sl
	str r7, [sp]
	bl ov97_0223B1DC
	ldr r0, [sp, #0x10]
	mov r4, #1
	cmp r0, #1
	ble _02239F54
	lsl r0, sl, #2
	str r0, [sp, #0x28]
	add sb, sp, #0x38
_02239F00:
	sub r3, r4, #1
	ldr r2, [sb, r3, lsl #2]
	ldr r1, [sp, #0x28]
	mov r0, r6
	add r1, r2, r1
	str r1, [sb, r4, lsl #2]
	str sl, [sp]
	ldr r1, [sb, r3, lsl #2]
	mov r2, sl
	mov r3, fp
	bl ov97_0223BB94
	str r7, [sp]
	ldr r0, [sb, r4, lsl #2]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _02239F00
_02239F54:
	ldr r3, [sp, #0x34]
	add r0, r3, #1
	str r0, [sp, #0x34]
	add r2, r0, #1
	ldrb r1, [r3]
	str r2, [sp, #0x34]
	ldrb sb, [r3, #1]
	cmp sb, #0xff
	bne _02239FD4
	cmp r1, #0
	bne _02239FD4
	add r0, r2, #1
	str r0, [sp, #0x34]
	ldrb r1, [r2]
	b _02239FA4
_02239F90:
	add sb, sb, #0x100
	ldr r1, [sp, #0x34]
	add r1, r1, #2
	str r1, [sp, #0x34]
	ldrb r1, [r0, #1]
_02239FA4:
	ldr r0, [sp, #0x34]
	ldrb r2, [r0]
	cmp r2, #0xff
	bne _02239FBC
	cmp r1, #0
	beq _02239F90
_02239FBC:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r0, [r0]
	add r0, r0, #1
	add sb, sb, r0
_02239FD4:
	asr r2, r1, #1
	add r0, sp, #0x38
	ldr r0, [r0, r2, lsl #2]
	mov r1, r8
	lsl r2, sl, #2
	bl FUN_020C4DB0
	cmp sb, #0
	beq _0223A1AC
	mov r0, #0xff
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
_0223A004:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223A038
	mov r3, r0
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	ldr r3, [r3]
	blx r3
	cmp r0, #0
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	bne _0223A218
_0223A038:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	ands r0, r0, #0x4000
	bne _0223A218
	cmp sb, #0
	ldr r4, [sp, #0x30]
	ble _0223A08C
_0223A054:
	mov r0, r6
	mov r1, r8
	mov r2, sl
	mov r3, fp
	bl ov97_0223B31C
	str r7, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
	add r4, r4, #1
	cmp r4, sb
	blt _0223A054
_0223A08C:
	ldr r2, [sp, #0x34]
	add r0, r2, #1
	str r0, [sp, #0x34]
	add r1, r0, #1
	ldrb r0, [r2]
	str r1, [sp, #0x34]
	ldrb sb, [r2, #1]
	cmp sb, #0xff
	bne _0223A10C
	cmp r0, #0
	bne _0223A10C
	add r0, r1, #1
	str r0, [sp, #0x34]
	ldrb r0, [r1]
	b _0223A0DC
_0223A0C8:
	add sb, sb, #0x100
	ldr r0, [sp, #0x34]
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldrb r0, [r1, #1]
_0223A0DC:
	ldr r1, [sp, #0x34]
	ldrb r2, [r1]
	cmp r2, #0xff
	bne _0223A0F4
	cmp r0, #0
	beq _0223A0C8
_0223A0F4:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r1, [r1]
	add r1, r1, #1
	add sb, sb, r1
_0223A10C:
	cmp r0, #0
	bne _0223A11C
	cmp sb, #0
	beq _0223A1AC
_0223A11C:
	cmp sb, #0
	bne _0223A12C
	cmp r0, #1
	beq _0223A168
_0223A12C:
	asr r1, r0, #1
	str sl, [sp]
	add r0, sp, #0x38
	ldr r3, [r0, r1, lsl #2]
	mov r0, r6
	mov r1, r8
	mov r2, sl
	bl ov97_0223BB94
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, sl
	str r7, [sp]
	bl ov97_0223B1DC
	b _0223A1A4
_0223A168:
	ldr r0, [sp, #0x14]
	str sl, [sp]
	ldr r3, [r0]
	mov r0, r6
	mov r1, r8
	mov r2, sl
	bl ov97_0223BB94
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
	b _0223A1F0
_0223A1A4:
	cmp sb, #0
	bne _0223A004
_0223A1AC:
	ldr r0, [sp, #0x24]
	mov r2, sl
	cmp sl, r0
	bge _0223A1D4
	mov r1, #0
_0223A1C0:
	ldr r0, [sp, #0x24]
	str r1, [r8, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r0
	blt _0223A1C0
_0223A1D4:
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0]
	mov r1, r8
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
_0223A1F0:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	ands r0, r0, #0x4000
	bne _0223A218
	ldr r0, [sp, #4]
	mov r1, r0
	str sl, [r1, #4]
	bl ov97_0223D3EC
	mov r0, #1
	str r0, [sp, #8]
_0223A218:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223A240
	ldr r3, [r0]
	mov r1, #0xff
	mvn r2, #0
	blx r3
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #8]
_0223A240:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bne _0223A25C
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0223A25C
	bl ov97_0223AB90
_0223A25C:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0xa0]
	ldr r0, [sp, #8]
	str r2, [r1]
	add sp, sp, #0x7c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_02239A74

	arm_func_start ov97_0223A278
ov97_0223A278: @ 0x0223A278
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18c
	mov sl, r0
	mov r0, #0
	str r0, [sp, #8]
	mov r5, r1
	ldr r1, [sp, #8]
	mov r0, r2
	str r2, [sp, #4]
	mov r4, r3
	str r1, [sp, #0xc]
	ldr sb, [sp, #0x1b0]
	bl ov97_0223D534
	ldr r1, [r5, #4]
	mov r8, r0
	cmp r1, #0
	beq _0223A2D4
	cmp r1, #1
	bne _0223A2F0
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	bne _0223A2F0
_0223A2D4:
	mov r0, sl
	mov r1, #0
	bl ov97_0223D128
	add sp, sp, #0x18c
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223A2F0:
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0223A318
	cmp r1, #1
	bne _0223A334
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _0223A334
_0223A318:
	mov r0, sl
	mov r1, #1
	bl ov97_0223D128
	add sp, sp, #0x18c
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223A334:
	cmp r1, #1
	bne _0223A36C
	ldr r0, [sp, #4]
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #1
	bne _0223A36C
	mov r0, sl
	mov r1, r5
	bl ov97_0223D1D0
	add sp, sp, #0x18c
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223A36C:
	add r0, sp, #0x18
	bl ov97_0223AB68
	add r0, sp, #0x18
	mov r1, r4
	mov r2, sb
	bl ov97_0223AAF0
	cmp r0, #0
	ble _0223A5B8
	add r0, sp, #0x4c
	bl ov97_0223D3D8
	ldr r2, [sb]
	add r1, sb, #4
	mov r0, #0x14
	mla r6, r2, r0, r1
	add r1, r2, #1
	str r1, [sb]
	mov r2, r4
	mov r4, #1
	add r0, sp, #0x4c
	mov r1, r5
	mov r3, sb
	str r4, [sp, #0xc]
	bl ov97_0223B5C0
	cmp r0, #0
	beq _0223A5B8
	add r1, sp, #0x4c
	add r3, sp, #0x18
	mov r0, r6
	mov r2, r1
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
	cmp r8, #0x11
	movle fp, r4
	ble _0223A414
	cmp r8, #0x100
	movge fp, #5
	bge _0223A414
	cmp r8, #0x80
	movge fp, #4
	movlt fp, #3
_0223A414:
	sub r0, fp, #1
	mov r4, #1
	lsl r7, r4, r0
	cmp r7, #1
	ble _0223A470
	add r5, sp, #0x60
_0223A42C:
	mov r0, r5
	bl ov97_0223D3D8
	sub r3, r4, #1
	mov r2, #0x14
	add r1, sp, #0x4c
	mla r1, r3, r2, r1
	mov r0, r5
	mov r2, r6
	add r3, sp, #0x18
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
	add r4, r4, #1
	cmp r4, r7
	add r5, r5, #0x14
	blt _0223A42C
_0223A470:
	mov r5, #1
	mov r0, sl
	mov r1, r5
	str r4, [sp, #0xc]
	sub r8, r8, #1
	bl ov97_0223D128
	cmp r0, #0
	beq _0223A5B8
	mov r0, r5
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
_0223A4A0:
	ldr r0, [sp, #4]
	mov r1, r8
	bl ov97_0223CE38
	cmp r0, #0
	bne _0223A4EC
	cmp r5, #0
	bne _0223A4DC
	mov r0, sl
	mov r1, sl
	mov r2, sl
	add r3, sp, #0x18
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
_0223A4DC:
	cmp r8, #0
	beq _0223A5B0
	sub r8, r8, #1
	b _0223A4A0
_0223A4EC:
	ldr r6, [sp, #0x10]
	ldr r7, [sp, #0x14]
	cmp fp, #1
	mov r4, r6
	ble _0223A530
_0223A500:
	subs r1, r8, r4
	bmi _0223A530
	ldr r0, [sp, #4]
	bl ov97_0223CE38
	cmp r0, #0
	subne r0, r4, r7
	lslne r0, r6, r0
	movne r7, r4
	add r4, r4, #1
	orrne r6, r0, #1
	cmp r4, fp
	blt _0223A500
_0223A530:
	cmp r5, #0
	add r5, r7, #1
	bne _0223A574
	cmp r5, #0
	ldr r4, [sp, #0x14]
	ble _0223A574
_0223A548:
	mov r0, sl
	mov r1, sl
	mov r2, sl
	add r3, sp, #0x18
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
	add r4, r4, #1
	cmp r4, r5
	blt _0223A548
_0223A574:
	asr r3, r6, #1
	mov r1, #0x14
	add r0, sp, #0x4c
	mla r2, r3, r1, r0
	mov r0, sl
	mov r1, sl
	add r3, sp, #0x18
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
	add r0, r7, #1
	ldr r5, [sp, #0x14]
	subs r8, r8, r0
	bpl _0223A4A0
_0223A5B0:
	mov r0, #1
	str r0, [sp, #8]
_0223A5B8:
	ldr r0, [sp, #0xc]
	ldr r1, [sb]
	cmp r0, #0
	sub r0, r1, #1
	str r0, [sb]
	mov r4, #0
	ble _0223A5F4
	add r5, sp, #0x4c
_0223A5D8:
	mov r0, r5
	bl ov97_0223D510
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x14
	blt _0223A5D8
_0223A5F4:
	add r0, sp, #0x18
	bl ov97_0223AB34
	ldr r0, [sp, #8]
	add sp, sp, #0x18c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223A278

	arm_func_start ov97_0223A60C
ov97_0223A60C: @ 0x0223A60C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	movs r8, r2
	mov sl, r0
	mov sb, r1
	mov fp, #0
	mov r5, #2
	addeq sp, sp, #4
	mvneq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	mov r0, r8
	bl ov97_0223D568
	cmp r0, #0x20
	beq _0223A660
	mov r1, #1
	cmp sl, r1, lsl r0
	addhi sp, sp, #4
	movhi r0, fp
	pophi {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxhi lr
_0223A660:
	cmp sl, r8
	rsb r2, r0, #0x20
	subhs sl, sl, r8
	cmp r2, #0
	lslne r1, sl, r2
	rsbne r0, r2, #0x20
	orrne sl, r1, sb, lsr r0
	lslne r8, r8, r2
	ldr r4, _0223A748 @ =0x0000FFFF
	lslne sb, sb, r2
	and r7, r4, r8, lsr #16
	and r6, r8, r4
_0223A690:
	lsr r0, sl, #0x10
	cmp r0, r7
	moveq r0, r4
	beq _0223A6AC
	mov r0, sl
	mov r1, r7
	bl FUN_020E2178
_0223A6AC:
	mul ip, r0, r7
	mul r3, r0, r6
	and r2, r4, sb, lsr #16
_0223A6B8:
	mov lr, #0x10000
	sub r1, sl, ip
	rsb lr, lr, #0
	ands lr, r1, lr
	bne _0223A6E4
	add r1, r2, r1, lsl #16
	cmp r3, r1
	subhi ip, ip, r7
	subhi r3, r3, r6
	subhi r0, r0, #1
	bhi _0223A6B8
_0223A6E4:
	mul r2, r0, r6
	and r1, r2, r4
	mul r3, r0, r7
	lsl r1, r1, #0x10
	cmp sb, r1
	add r2, r3, r2, lsr #16
	addlo r2, r2, #1
	cmp sl, r2
	addlo sl, sl, r8
	sub sb, sb, r1
	sublo r0, r0, #1
	sub r1, sl, r2
	subs r5, r5, #1
	beq _0223A738
	and r2, r0, r4
	lsl r1, r1, #0x10
	and r0, sb, r4
	orr sl, r1, sb, lsr #16
	lsl fp, r2, #0x10
	lsl sb, r0, #0x10
	b _0223A690
_0223A738:
	orr r0, fp, r0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0223A748: .4byte 0x0000FFFF
	arm_func_end ov97_0223A60C

	arm_func_start ov97_0223A74C
ov97_0223A74C: @ 0x0223A74C
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r8, r0
	add r0, sp, #4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mvn r4, #0
	bl ov97_0223D3D8
	add r0, sp, #4
	mov r1, #0
	bl ov97_0223D128
	add r0, sp, #4
	mov r1, r6
	bl ov97_0223CEA8
	cmp r0, #0
	beq _0223A7B0
	add r2, sp, #4
	mov r0, r8
	mov r3, r7
	mov r1, #0
	str r5, [sp]
	bl ov97_0223B5F4
	cmp r0, #0
	movne r4, r6
_0223A7B0:
	add r0, sp, #4
	bl ov97_0223D4B8
	mov r0, r4
	add sp, sp, #0x18
	pop {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end ov97_0223A74C

	arm_func_start ov97_0223A7C8
ov97_0223A7C8: @ 0x0223A7C8
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r6, [sp, #0x30]
	mov sb, r1
	ldr fp, [r6]
	movs sl, r0
	add r0, fp, #1
	str r0, [r6]
	ldr r7, [r6]
	add r4, r6, #4
	mov r0, #0x14
	mla r5, fp, r0, r4
	add ip, r7, #1
	mov r1, #0
	str r5, [sp, #4]
	mla r5, r7, r0, r4
	str ip, [r6]
	str r1, [sp]
	ldreq r1, [r6]
	mov r8, r2
	mlaeq sl, r1, r0, r4
	addeq r0, r1, #1
	streq r0, [r6]
	mov r7, r3
	cmp sb, #0
	bne _0223A848
	ldr r2, [r6]
	add r1, r6, #4
	mov r0, #0x14
	mla sb, r2, r0, r1
	add r0, r2, #1
	str r0, [r6]
_0223A848:
	mov r0, r8
	mov r1, r7
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223A888
	mov r0, sl
	mov r1, #0
	bl ov97_0223D128
	mov r0, sb
	mov r1, r8
	bl ov97_0223D1D0
	add sp, sp, #0xc
	str fp, [r6]
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223A888:
	mov r0, r8
	bl ov97_0223D534
	ldr r1, [r7, #0x28]
	mov r2, r0
	lsl r0, r1, #1
	cmp r0, r2
	movgt r2, r0
	suble r0, r2, r0
	movgt r4, #0
	addle r0, r0, r0, lsr #31
	asrle r4, r0, #1
	ldr r1, [r7, #0x2c]
	add r0, r2, r2, lsr #31
	asr r0, r0, #1
	cmp r2, r1
	str r0, [sp, #8]
	beq _0223A8E0
	mov r1, r7
	mov r3, r6
	add r0, r7, #0x14
	bl ov97_0223A74C
	str r0, [r7, #0x2c]
_0223A8E0:
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	mov r1, r8
	sub r2, r2, r4
	bl ov97_0223C4E0
	cmp r0, #0
	beq _0223AA30
	ldr r1, [sp, #4]
	mov r0, r5
	mov r3, r6
	add r2, r7, #0x14
	bl ov97_0223BCB8
	cmp r0, #0
	beq _0223AA30
	ldr r2, [sp, #8]
	mov r0, sl
	mov r1, r5
	add r2, r2, r4
	bl ov97_0223C4E0
	cmp r0, #0
	beq _0223AA30
	mov r4, #0
	mov r0, r5
	mov r1, r7
	mov r2, sl
	mov r3, r6
	str r4, [sl, #0xc]
	bl ov97_0223BCB8
	cmp r0, #0
	beq _0223AA30
	mov r0, sb
	mov r1, r8
	mov r2, r5
	bl ov97_0223BEFC
	cmp r0, #0
	beq _0223AA30
	mov r5, r4
	mov r0, sb
	mov r1, r7
	str r5, [sb, #0xc]
	bl ov97_0223CF44
	cmp r0, #0
	blt _0223A9DC
	mov r4, #1
_0223A990:
	cmp r5, #2
	add r5, r5, #1
	bgt _0223AA30
	mov r0, sb
	mov r1, sb
	mov r2, r7
	bl ov97_0223BEFC
	cmp r0, #0
	beq _0223AA30
	mov r0, sl
	mov r1, r4
	bl ov97_0223C3B8
	cmp r0, #0
	beq _0223AA30
	mov r0, sb
	mov r1, r7
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223A990
_0223A9DC:
	ldr r0, [sb, #4]
	mov r1, #1
	cmp r0, #0
	beq _0223AA08
	cmp r0, #1
	bne _0223AA04
	ldr r0, [sb]
	ldr r0, [r0]
	cmp r0, #0
	beq _0223AA08
_0223AA04:
	mov r1, #0
_0223AA08:
	cmp r1, #0
	movne r0, #0
	ldreq r0, [r8, #0xc]
	str r0, [sb, #0xc]
	mov r0, #1
	ldr r2, [r8, #0xc]
	ldr r1, [r7, #0xc]
	str r0, [sp]
	eor r0, r2, r1
	str r0, [sl, #0xc]
_0223AA30:
	ldr r0, [sp]
	str fp, [r6]
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223A7C8

	arm_func_start ov97_0223AA44
ov97_0223AA44: @ 0x0223AA44
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x20]
	mov ip, #0x14
	ldr r5, [r4]
	add lr, r4, #4
	mla r6, r5, ip, lr
	add ip, r5, #1
	mov r8, r0
	mov r7, r3
	str ip, [r4]
	cmp r2, #0
	mov r5, #0
	beq _0223AAB4
	cmp r1, r2
	bne _0223AA9C
	mov r0, r6
	mov r2, r4
	bl ov97_0223B408
	cmp r0, #0
	bne _0223AAB8
	b _0223AAD4
_0223AA9C:
	mov r0, r6
	mov r3, r4
	bl ov97_0223BCB8
	cmp r0, #0
	bne _0223AAB8
	b _0223AAD4
_0223AAB4:
	mov r6, r1
_0223AAB8:
	mov r1, r8
	mov r2, r6
	mov r3, r7
	mov r0, #0
	str r4, [sp]
	bl ov97_0223A7C8
	mov r5, #1
_0223AAD4:
	ldr r1, [r4]
	mov r0, r5
	sub r1, r1, #1
	str r1, [r4]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end ov97_0223AA44

	arm_func_start ov97_0223AAF0
ov97_0223AAF0: @ 0x0223AAF0
	push {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl ov97_0223D1D0
	add r0, r5, #0x14
	mov r1, #0
	bl ov97_0223D128
	mov r0, r4
	bl ov97_0223D534
	str r0, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x2c]
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223AAF0

	arm_func_start ov97_0223AB34
ov97_0223AB34: @ 0x0223AB34
	push {r4, lr}
	mov r4, r0
	bl ov97_0223D4B8
	add r0, r4, #0x14
	bl ov97_0223D4B8
	ldr r0, [r4, #0x30]
	ands r0, r0, #1
	popeq {r4, lr}
	bxeq lr
	mov r0, r4
	bl ov97_0223D5E4
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223AB34

	arm_func_start ov97_0223AB68
ov97_0223AB68: @ 0x0223AB68
	push {r4, lr}
	mov r4, r0
	bl ov97_0223D3D8
	add r0, r4, #0x14
	bl ov97_0223D3D8
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223AB68

	arm_func_start ov97_0223AB90
ov97_0223AB90: @ 0x0223AB90
	push {r4, lr}
	mov r4, r0
	add r0, r4, #0xc
	bl ov97_0223D4B8
	add r0, r4, #0x20
	bl ov97_0223D4B8
	add r0, r4, #0x34
	bl ov97_0223D4B8
	ldr r0, [r4, #0x4c]
	ands r0, r0, #1
	popeq {r4, lr}
	bxeq lr
	mov r0, r4
	bl ov97_0223D5E4
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223AB90

	arm_func_start ov97_0223ABD0
ov97_0223ABD0: @ 0x0223ABD0
	push {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	add r0, r4, #0xc
	str r1, [r4, #8]
	bl ov97_0223D3D8
	add r0, r4, #0x20
	bl ov97_0223D3D8
	add r0, r4, #0x34
	bl ov97_0223D3D8
	mov r0, #0
	str r0, [r4, #0x4c]
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223ABD0

	arm_func_start ov97_0223AC0C
ov97_0223AC0C: @ 0x0223AC0C
	push {r4, lr}
	mov r0, #0x50
	bl ov97_0223D62C
	movs r4, r0
	moveq r0, #0
	popeq {r4, lr}
	bxeq lr
	bl ov97_0223ABD0
	mov r1, #1
	mov r0, r4
	str r1, [r4, #0x4c]
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223AC0C

	arm_func_start ov97_0223AC40
ov97_0223AC40: @ 0x0223AC40
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, r1
	ldr r3, [r6, #4]
	mov r7, r0
	cmp r3, #0
	mov r5, r2
	addeq sp, sp, #0x14
	moveq r0, #0
	popeq {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, r7, #0x20
	add r4, r7, #0xc
	bl ov97_0223D1D0
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	popeq {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, sp, #0
	bl ov97_0223D3D8
	mov r1, #1
	mov r0, r6
	str r1, [r7]
	bl ov97_0223D534
	add r1, r0, #0x1f
	asr r0, r1, #4
	add r0, r1, r0, lsr #27
	asr r2, r0, #5
	mov r0, r4
	mov r1, #0
	str r2, [r7, #8]
	bl ov97_0223D128
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	popeq {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, r4
	mov r1, #0x20
	bl ov97_0223CEA8
	cmp r0, #0
	beq _0223ADE4
	ldr r0, [r6]
	ldr r4, [r0]
	mov r0, r4
	bl ov97_0223B148
	mov r1, r0
	add r0, sp, #0
	bl ov97_0223D128
	cmp r0, #0
	beq _0223ADE4
	add r0, sp, #0
	mov r2, #0x20
	mov r1, r0
	bl ov97_0223C5FC
	cmp r0, #0
	beq _0223ADE4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0223AD5C
	cmp r0, #1
	bne _0223AD4C
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	beq _0223AD5C
_0223AD4C:
	add r0, sp, #0
	mov r1, #1
	bl ov97_0223C258
	b _0223AD70
_0223AD5C:
	add r0, sp, #0
	mvn r1, #0
	bl ov97_0223D128
	cmp r0, #0
	beq _0223ADE4
_0223AD70:
	ldr r2, [sp, #4]
	cmp r2, #1
	ldrge r0, [sp]
	ldrge r1, [r0]
	movlt r1, #0
	cmp r2, #2
	ldrge r0, [sp]
	mov r2, r4
	ldrge r0, [r0, #4]
	movlt r0, #0
	bl ov97_0223A60C
	str r0, [r7, #0x48]
	add r0, r7, #0xc
	mov r1, #0
	bl ov97_0223D128
	ldr r1, [r7, #8]
	add r0, r7, #0xc
	lsl r1, r1, #6
	bl ov97_0223CEA8
	cmp r0, #0
	beq _0223ADE4
	add r0, r7, #0xc
	mov r1, r0
	mov r3, r5
	add r2, r7, #0x20
	bl ov97_0223B5C0
	ldr r1, [r7, #8]
	add r0, r7, #0xc
	bl ov97_0223D438
_0223ADE4:
	add r0, sp, #0
	bl ov97_0223D4B8
	mov r0, #1
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end ov97_0223AC40

	arm_func_start ov97_0223ADFC
ov97_0223ADFC: @ 0x0223ADFC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r4, r2
	mov r7, r1
	cmp r4, #6
	mov r5, r0
	movgt r4, #6
	mov r1, #1
	lsl r2, r1, r4
	ldr r0, [r7, #4]
	sub r2, r2, #1
	add r0, r4, r0, lsl #5
	ldr r3, _0223AFD0 @ =0x0223F158
	str r2, [sp]
	ldr r2, [r3, r4, lsl #2]
	mov r1, r4
	sub r0, r0, #1
	str r2, [sp, #4]
	mov r6, #0
	bl FUN_020E1F6C
	mov ip, #0
	lsl r0, r0, #1
	add r0, r0, #2
	mov r8, r6
	add r1, r5, r0
	strb r8, [r5, r0]
	strb r8, [r1, #-1]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	ldr r7, [r0]
	add lr, r0, #4
	cmp r2, #1
	sub sb, r1, #2
	ldrgt r8, [lr], #4
	mov sl, r7
	mov r0, ip
	str ip, [sp, #8]
	mov r1, #0xff
	mov fp, ip
_0223AE98:
	ldr r3, [sp]
	and r3, sl, r3
	ldr sl, [sp, #4]
	ldrb sl, [sl, r3]
	cmp sl, #0
	beq _0223AEF8
	add ip, ip, sl
	add r6, r6, sl
	cmp r6, #0x20
	blo _0223AEE0
	cmp r2, #1
	ble _0223AEF8
	sub r2, r2, #1
	mov r7, r8
	cmp r2, #1
	movle r8, fp
	ldrgt r8, [lr], #4
	sub r6, r6, #0x20
_0223AEE0:
	cmp r6, #0
	moveq sl, r7
	lsrne sl, r7, r6
	rsbne r3, r6, #0x20
	orrne sl, sl, r8, lsl r3
	b _0223AE98
_0223AEF8:
	cmp r3, #0
	beq _0223AF7C
	strb ip, [sb]
	strb r3, [sb, #-1]
	cmp ip, #0x100
	sub sb, sb, #2
	blo _0223AF34
	cmp ip, #0x100
	blo _0223AF34
_0223AF1C:
	strb r1, [sb]
	sub ip, ip, #0x100
	strb r0, [sb, #-1]
	sub sb, sb, #2
	cmp ip, #0x100
	bhs _0223AF1C
_0223AF34:
	mov ip, r4
	add r6, r6, r4
	cmp r6, #0x20
	blo _0223AF64
	cmp r2, #1
	ble _0223AF7C
	sub r2, r2, #1
	mov r7, r8
	cmp r2, #1
	ldrle r8, [sp, #8]
	sub r6, r6, #0x20
	ldrgt r8, [lr], #4
_0223AF64:
	cmp r6, #0
	moveq sl, r7
	lsrne sl, r7, r6
	rsbne r3, r6, #0x20
	orrne sl, sl, r8, lsl r3
	b _0223AE98
_0223AF7C:
	add sb, sb, #1
	mov r0, #2
	b _0223AFA0
_0223AF88:
	strb r2, [r5]
	ldrb r1, [sb, #1]
	add sb, sb, #2
	add r0, r0, #2
	strb r1, [r5, #1]
	add r5, r5, #2
_0223AFA0:
	ldrb r2, [sb]
	cmp r2, #0
	bne _0223AF88
	ldrb r1, [sb, #1]
	cmp r1, #0
	bne _0223AF88
	mov r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0223AFD0: .4byte 0x0223F158
	arm_func_end ov97_0223ADFC

	arm_func_start ov97_0223AFD4
ov97_0223AFD4: @ 0x0223AFD4
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r5, [r3], #4
	mov r2, #0x14
	mla r4, r5, r2, r3
	mov sb, r0
	ldr r0, [sb, #4]
	mov r8, r1
	cmp r0, #0
	mov r5, #0
	lsl r1, r0, #5
	addeq sp, sp, #4
	moveq r0, r5
	popeq {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	cmp r0, #1
	bne _0223B074
	cmp r0, #1
	bne _0223B038
	ldr r2, [sb]
	ldr r1, _0223B138 @ =0x00010001
	ldr r2, [r2]
	cmp r2, r1
	ldreq r5, _0223B13C @ =0x0223DEC4
	beq _0223B064
_0223B038:
	ldr r1, [sb]
	ldr r1, [r1]
	cmp r1, #0x11
	bne _0223B054
	cmp r0, #1
	ldreq r5, _0223B140 @ =0x0223DEDC
	beq _0223B064
_0223B054:
	cmp r1, #3
	bne _0223B064
	cmp r0, #1
	ldreq r5, _0223B144 @ =0x0223DED0
_0223B064:
	mov r7, #1
	mov r6, r7
	mov r1, #0x20
	b _0223B0A4
_0223B074:
	cmp r1, #0x100
	movge r7, #5
	movge r6, #0x10
	movge r1, #7
	bge _0223B0A4
	cmp r1, #0x80
	movge r6, #8
	movge r1, r6
	movge r7, #4
	movlt r7, #3
	movlt r6, #4
	movlt r1, #0xb
_0223B0A4:
	mul r1, r0, r1
	lsl r0, r1, #1
	add r1, r0, #7
	asr r0, r1, #1
	add r0, r1, r0, lsr #30
	cmp r5, #0
	asr r1, r0, #2
	bne _0223B120
	ldr r0, [r4, #8]
	cmp r1, r0
	movle r0, r4
	ble _0223B0DC
	mov r0, r4
	bl ov97_0223D268
_0223B0DC:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	ldr r5, [r4]
	mov r1, sb
	mov r2, r7
	add r0, r5, #4
	bl ov97_0223ADFC
	add r1, r0, #2
	asr r0, r1, #8
	strb r0, [r5]
	strb r1, [r5, #1]
	strb r7, [r5, #2]
	strb r6, [r5, #3]
	b _0223B124
_0223B120:
	mov r1, #8
_0223B124:
	str r5, [r8]
	add r0, r1, #2
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_0223B138: .4byte 0x00010001
_0223B13C: .4byte 0x0223DEC4
_0223B140: .4byte 0x0223DEDC
_0223B144: .4byte 0x0223DED0
	arm_func_end ov97_0223AFD4

	arm_func_start ov97_0223B148
ov97_0223B148: @ 0x0223B148
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov r1, sl
	rsb r0, sl, #0
	bl FUN_020E2178
	movs r8, r1
	mov r7, sl
	mov r5, #0
	mov r6, #1
	mvn r4, #0
	beq _0223B1B0
_0223B174:
	mov r0, r7
	mov r1, r8
	bl FUN_020E2178
	mov sb, r1
	mov r0, r7
	mov r1, r8
	bl FUN_020E2178
	mla r1, r0, r6, r5
	mov r5, r6
	mov r7, r8
	mov r6, r1
	mov r8, sb
	cmp sb, #0
	rsb r4, r4, #0
	bne _0223B174
_0223B1B0:
	cmp r4, #0
	sublt r5, sl, r5
	cmp r7, #1
	movne r1, #0
	bne _0223B1D0
	mov r0, r5
	mov r1, sl
	bl FUN_020E2178
_0223B1D0:
	mov r0, r1
	pop {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end ov97_0223B148

	arm_func_start ov97_0223B1DC
ov97_0223B1DC: @ 0x0223B1DC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r7, r3
	mov sb, r1
	mov r6, #0
	mov sl, r0
	mov r8, r2
	mov r4, r6
	cmp r7, #0
	add r5, sb, r7, lsl #2
	ldr fp, [sp, #0x30]
	ble _0223B26C
	mov r0, #1
	str r6, [sp, #4]
	str r0, [sp]
_0223B218:
	ldr r1, [sb]
	mov r0, sb
	mul r3, r1, fp
	mov r1, r8
	mov r2, r7
	bl ov97_0223CC58
	add r1, r0, r6
	ldr r0, [r5]
	cmp r1, r6
	ldrlo r6, [sp]
	add r0, r0, r1
	str r0, [r5]
	ldr r0, [r5]
	ldrhs r6, [sp, #4]
	cmp r0, r1
	add r4, r4, #1
	addlo r6, r6, #1
	cmp r4, r7
	add sb, sb, #4
	add r5, r5, #4
	blt _0223B218
_0223B26C:
	cmp r6, #0
	sub r2, r7, #1
	bne _0223B2C0
	ldr r1, [sb, r2, lsl #2]
	ldr r0, [r8, r2, lsl #2]
	cmp r1, r0
	bne _0223B2AC
	cmp r2, #0
	ble _0223B2AC
_0223B290:
	ldr r1, [sb, r2, lsl #2]
	ldr r0, [r8, r2, lsl #2]
	cmp r1, r0
	bne _0223B2AC
	sub r2, r2, #1
	cmp r2, #0
	bgt _0223B290
_0223B2AC:
	ldr r1, [sb, r2, lsl #2]
	ldr r0, [r8, r2, lsl #2]
	cmp r1, r0
	movhs r6, #1
	movlo r6, #0
_0223B2C0:
	cmp r6, #0
	beq _0223B2E8
	mov r0, sl
	mov r1, sb
	mov r2, r8
	mov r3, r7
	bl ov97_0223C700
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223B2E8:
	cmp r7, #0
	addle sp, sp, #0xc
	mov r1, #0
	pople {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
_0223B2FC:
	ldr r0, [sb, r1, lsl #2]
	str r0, [sl, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r7
	blt _0223B2FC
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223B1DC

	arm_func_start ov97_0223B31C
ov97_0223B31C: @ 0x0223B31C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov fp, r2
	lsl r6, fp, #1
	mov sl, r0
	mov r7, fp
	mov sb, r1
	sub r7, r7, #1
	sub r2, r6, #1
	mov r0, #0
	str r0, [sl, r2, lsl #2]
	ldr r0, [sl, r2, lsl #2]
	str r3, [sp]
	mov r5, sb
	str r0, [sl]
	cmp r7, #0
	add r4, sl, #4
	ble _0223B384
	add r5, r5, #4
	ldr r3, [sb]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl ov97_0223CAB8
	str r0, [r4, r7, lsl #2]
	add r4, r4, #8
_0223B384:
	sub r8, fp, #2
	cmp r8, #0
	ble _0223B3C4
_0223B390:
	mov r0, r5
	sub r7, r7, #1
	add r5, r5, #4
	ldr r3, [r0]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl ov97_0223CC58
	sub r8, r8, #1
	str r0, [r4, r7, lsl #2]
	cmp r8, #0
	add r4, r4, #8
	bgt _0223B390
_0223B3C4:
	mov r0, sl
	mov r1, sl
	mov r2, sl
	mov r3, r6
	bl ov97_0223C814
	ldr r0, [sp]
	mov r1, sb
	mov r2, fp
	bl ov97_0223C964
	ldr r2, [sp]
	mov r0, sl
	mov r1, sl
	mov r3, r6
	bl ov97_0223C814
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223B31C

	arm_func_start ov97_0223B408
ov97_0223B408: @ 0x0223B408
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x64
	ldr r5, [r2]
	mov sb, r0
	mov r8, r1
	cmp r8, sb
	add r3, r2, #4
	mov r2, #0x14
	movne r7, sb
	addeq r0, r5, #1
	mla r4, r5, r2, r3
	mlaeq r7, r0, r2, r3
	ldr r5, [r8, #4]
	cmp r5, #0
	movle r0, #0
	strle r0, [sb, #4]
	addle sp, sp, #0x64
	movle r0, #1
	pople {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r0, [r7, #8]
	lsl r6, r5, #1
	cmp r6, r0
	movle r0, r7
	ble _0223B478
	mov r0, r7
	mov r1, r6
	bl ov97_0223D268
_0223B478:
	cmp r0, #0
	addeq sp, sp, #0x64
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	str r6, [r7, #4]
	mov r0, #0
	str r0, [r7, #0xc]
	cmp r5, #4
	bne _0223B4B8
	ldr r0, [r7]
	ldr r1, [r8]
	add r3, sp, #0
	mov r2, #4
	bl ov97_0223B31C
	b _0223B51C
_0223B4B8:
	cmp r5, #8
	bne _0223B4D8
	ldr r0, [r7]
	ldr r1, [r8]
	add r3, sp, #0x20
	mov r2, #8
	bl ov97_0223B31C
	b _0223B51C
_0223B4D8:
	ldr r0, [r4, #8]
	cmp r6, r0
	movle r0, r4
	ble _0223B4F4
	mov r0, r4
	mov r1, r6
	bl ov97_0223D268
_0223B4F4:
	cmp r0, #0
	addeq sp, sp, #0x64
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	ldr r0, [r7]
	ldr r1, [r8]
	ldr r3, [r4]
	mov r2, r5
	bl ov97_0223B31C
_0223B51C:
	cmp r6, #0
	ble _0223B540
	ldr r1, [r7]
	sub r0, r6, #1
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #4]
	subeq r0, r0, #1
	streq r0, [r7, #4]
_0223B540:
	cmp r7, sb
	beq _0223B554
	mov r0, sb
	mov r1, r7
	bl ov97_0223D1D0
_0223B554:
	mov r0, #1
	add sp, sp, #0x64
	pop {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end ov97_0223B408

	arm_func_start ov97_0223B564
ov97_0223B564: @ 0x0223B564
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [r3, #4]
	cmp ip, #0
	ble _0223B5A8
	ldr ip, [r3]
	ldr ip, [ip]
	ands ip, ip, #1
	beq _0223B5A8
	ldr lr, [sp, #0x10]
	mov ip, #0
	str lr, [sp]
	str ip, [sp, #4]
	bl ov97_02239A74
	add sp, sp, #0xc
	ldm sp!, {lr}
	bx lr
_0223B5A8:
	ldr ip, [sp, #0x10]
	str ip, [sp]
	bl ov97_0223A278
	add sp, sp, #0xc
	ldm sp!, {lr}
	bx lr
	arm_func_end ov97_0223B564

	arm_func_start ov97_0223B5C0
ov97_0223B5C0: @ 0x0223B5C0
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #0
	bl ov97_0223B5F4
	add sp, sp, #4
	ldm sp!, {lr}
	bx lr
	arm_func_end ov97_0223B5C0

	arm_func_start ov97_0223B5F4
ov97_0223B5F4: @ 0x0223B5F4
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	mov r6, r3
	ldr r3, [r6, #4]
	mov r8, r0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r3, #0
	ldr r4, [sp, #0x70]
	beq _0223B634
	cmp r3, #1
	bne _0223B644
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #0
	bne _0223B644
_0223B634:
	add sp, sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223B644:
	ldr r0, [sp, #4]
	mov r1, r6
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223B6A4
	ldr r0, [sp]
	cmp r0, #0
	beq _0223B680
	ldr r1, [sp, #4]
	bl ov97_0223D1D0
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
_0223B680:
	cmp r8, #0
	beq _0223B694
	mov r0, r8
	mov r1, #0
	bl ov97_0223D128
_0223B694:
	add sp, sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223B6A4:
	ldr r3, [r4]
	add r0, r4, #4
	mov r2, #0x14
	mla r1, r3, r2, r0
	mov r3, #0
	str r3, [r1, #0xc]
	ldr r5, [r4]
	str r1, [sp, #0x14]
	add r4, r5, #1
	mla r1, r4, r2, r0
	add r3, r5, #2
	str r1, [sp, #0x18]
	mla r1, r3, r2, r0
	cmp r8, #0
	str r1, [sp, #0x1c]
	addeq r1, r5, #3
	mlaeq r8, r1, r2, r0
	mov r0, r6
	bl ov97_0223D534
	lsr r1, r0, #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	rsb r0, r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #8]
	mov r1, r6
	bl ov97_0223C5FC
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #4]
	ldr r3, [sp, #0x1c]
	mov r4, #0
	add r2, r2, #0x20
	str r4, [r3, #0xc]
	bl ov97_0223C5FC
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r0, [sp, #0x18]
	mov r1, r4
	str r1, [r0, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	ldr r4, [r0, #4]
	add r0, sp, #0x38
	sub r1, r4, r1
	str r1, [sp, #0x10]
	bl ov97_0223D3D8
	ldr r0, [sp, #0x18]
	ldr r2, [r0]
	ldr r0, [sp, #0x28]
	sub r1, r0, #1
	ldr r0, [sp, #0x10]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x18]
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	add r0, r2, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x1c]
	moveq r5, #0
	ldr r2, [r0]
	ldr r0, [r2, r1, lsl #2]
	str r0, [sp, #0x24]
	ldrne r0, [sp, #0x28]
	subne r0, r0, #2
	ldrne r5, [r2, r0, lsl #2]
	ldr r0, [sp, #0x18]
	ldr r2, [r8, #8]
	ldr r1, [r0]
	sub r0, r4, #1
	add r7, r1, r0, lsl #2
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	cmp r1, r2
	movle r0, r8
	ble _0223B81C
	mov r0, r8
	bl ov97_0223D268
_0223B81C:
	cmp r0, #0
	beq _0223BB80
	ldr r0, [sp, #4]
	ldr r1, [r6, #0xc]
	ldr r3, [r0, #0xc]
	ldr r0, [sp, #0x10]
	sub r2, r0, #1
	eor r0, r3, r1
	str r0, [r8, #0xc]
	ldr r0, [sp, #0x10]
	str r0, [r8, #4]
	ldr r0, [sp, #0x28]
	ldr r3, [r8]
	add r1, r0, #1
	add r0, r3, r2, lsl #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #8]
	cmp r1, r0
	ldrle r0, [sp, #0x14]
	ble _0223B878
	ldr r0, [sp, #0x14]
	bl ov97_0223D268
_0223B878:
	cmp r0, #0
	beq _0223BB80
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x38
	bl ov97_0223CF44
	cmp r0, #0
	blt _0223B8CC
	add r0, sp, #0x38
	ldr r2, [sp, #0x1c]
	mov r1, r0
	bl ov97_0223BEFC
	cmp r0, #0
	beq _0223BB80
	ldr r0, [sp, #0x20]
	mov r2, #1
	str r2, [r0]
	ldr r0, [r8, #4]
	ldr r1, [r8]
	sub r0, r0, #1
	str r2, [r1, r0, lsl #2]
	b _0223B8D8
_0223B8CC:
	ldr r0, [r8, #4]
	sub r0, r0, #1
	str r0, [r8, #4]
_0223B8D8:
	ldr r0, [sp, #0x10]
	sub r1, r0, #1
	ldr r0, [sp, #0x20]
	cmp r1, #0
	sub r0, r0, #4
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0xc]
	ble _0223BB28
	ldr r8, _0223BB90 @ =0x0000FFFF
	cmp r1, #0
	and r0, r5, r8
	str r0, [sp, #0x2c]
	and r0, r8, r5, lsr #16
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	and r4, r0, r8
	ble _0223BB28
	and sb, r8, r0, lsr #16
	mvn r0, #0
	str r0, [sp, #0x34]
_0223B92C:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	sub r1, r1, #4
	add r0, r0, #1
	str r0, [sp, #0x3c]
	str r1, [sp, #0x38]
	ldr fp, [r7]
	ldr r0, [sp, #0x24]
	ldr r5, [r7, #-4]
	cmp fp, r0
	ldreq r6, [sp, #0x34]
	beq _0223B970
	ldr r2, [sp, #0x24]
	mov r0, fp
	mov r1, r5
	bl ov97_0223A60C
	mov r6, r0
_0223B970:
	ldr r0, [sp, #0x2c]
	and r2, r6, r8
	mul ip, r0, r2
	ldr r0, [sp, #0x30]
	and lr, r8, r6, lsr #16
	ldr r1, [sp, #0x30]
	mul r0, r2, r0
	mul r3, r1, lr
	ldr r1, [sp, #0x2c]
	mul sl, sb, lr
	mla r1, lr, r1, r0
	cmp r1, r0
	addlo r3, r3, #0x10000
	and r0, r8, r1, lsr #16
	add r3, r3, r0
	and r0, r1, r8
	add ip, ip, r0, lsl #16
	cmp ip, r0, lsl #16
	mul r0, r2, sb
	mul r1, r4, r2
	mla r2, lr, r4, r0
	addlo r3, r3, #1
	cmp r2, r0
	addlo sl, sl, #0x10000
	and r0, r8, r2, lsr #16
	add sl, sl, r0
	and r0, r2, r8
	add r1, r1, r0, lsl #16
	cmp r1, r0, lsl #16
	addlo sl, sl, #1
	sub r1, r5, r1
	cmp r1, r5
	addhi sl, sl, #1
	subs r0, fp, sl
	bne _0223BA20
	cmp r3, r1
	blo _0223BA20
	cmp r3, r1
	bne _0223BA18
	ldr r0, [r7, #-8]
	cmp ip, r0
	bls _0223BA20
_0223BA18:
	sub r6, r6, #1
	b _0223B970
_0223BA20:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [sp, #0x28]
	mov r3, r6
	bl ov97_0223CAB8
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x28]
	ldr r3, [r1]
	ldr r1, [sp, #0x28]
	str r0, [r3, r2, lsl #2]
	add r1, r1, #1
	cmp r1, #0
	ble _0223BA80
	ldr r0, [sp, #0x14]
	ldr r2, [r0]
_0223BA64:
	sub r0, r1, #1
	ldr r0, [r2, r0, lsl #2]
	cmp r0, #0
	bne _0223BA80
	sub r1, r1, #1
	cmp r1, #0
	bgt _0223BA64
_0223BA80:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x14]
	str r1, [r0, #4]
	add r0, sp, #0x38
	mov r1, r0
	ldr r5, [sp, #0x3c]
	bl ov97_0223BDB8
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x3c]
	add r0, r1, r0
	sub r1, r0, r5
	ldr r0, [sp, #0x18]
	str r1, [r0, #4]
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0223BAF8
	add r0, sp, #0x38
	ldr r2, [sp, #0x1c]
	mov r1, r0
	sub r6, r6, #1
	ldr r5, [sp, #0x3c]
	bl ov97_0223C17C
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x3c]
	sub r0, r0, r5
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	str r1, [r0, #4]
_0223BAF8:
	ldr r0, [sp, #0x20]
	sub r7, r7, #4
	str r6, [r0], #-4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r1, r0, #1
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0223B92C
_0223BB28:
	ldr r0, [sp, #0x18]
	bl ov97_0223D3EC
	ldr r0, [sp]
	cmp r0, #0
	beq _0223BB70
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r1, [sp, #0x18]
	add r2, r2, #0x20
	ldr r4, [r3, #0xc]
	bl ov97_0223C4E0
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r0, [sp]
	str r4, [r0, #0xc]
_0223BB70:
	add sp, sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223BB80:
	mov r0, #0
	add sp, sp, #0x4c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0223BB90: .4byte 0x0000FFFF
	arm_func_end ov97_0223B5F4

	arm_func_start ov97_0223BB94
ov97_0223BB94: @ 0x0223BB94
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r5, [sp, #0x20]
	mov r7, r2
	mov sb, r0
	mov r8, r1
	mov r6, r3
	cmp r7, r5
	bge _0223BBD0
	mov r1, r7
	mov r0, r8
	mov r7, r5
	mov r8, r6
	mov r5, r1
	mov r6, r0
_0223BBD0:
	ldr r3, [r6]
	mov r0, sb
	mov r1, r8
	mov r2, r7
	add r4, sb, r7, lsl #2
	bl ov97_0223CAB8
	str r0, [sb, r7, lsl #2]
_0223BBEC:
	sub r0, r5, #1
	cmp r0, #0
	addle sp, sp, #4
	pople {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #4]
	mov r1, r8
	mov r2, r7
	add r0, sb, #4
	bl ov97_0223CC58
	sub r1, r5, #2
	cmp r1, #0
	addle sp, sp, #4
	str r0, [r4, #4]
	pople {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #8]
	mov r1, r8
	mov r2, r7
	add r0, sb, #8
	bl ov97_0223CC58
	sub r1, r5, #3
	cmp r1, #0
	addle sp, sp, #4
	str r0, [r4, #8]
	pople {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #0xc]
	mov r1, r8
	mov r2, r7
	add r0, sb, #0xc
	bl ov97_0223CC58
	sub r5, r5, #4
	cmp r5, #0
	addle sp, sp, #4
	str r0, [r4, #0xc]
	pople {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #0x10]
	mov r1, r8
	mov r2, r7
	add r0, sb, #0x10
	bl ov97_0223CC58
	str r0, [r4, #0x10]
	add r4, r4, #0x10
	add sb, sb, #0x10
	add r6, r6, #0x10
	b _0223BBEC
	arm_func_end ov97_0223BB94

	arm_func_start ov97_0223BCAC
ov97_0223BCAC: @ 0x0223BCAC
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end ov97_0223BCAC

	arm_func_start ov97_0223BCB8
ov97_0223BCB8: @ 0x0223BCB8
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sb, r1
	ldr r6, [sb, #4]
	mov r8, r2
	mov sl, r0
	cmp r6, #0
	ldr r5, [r8, #4]
	beq _0223BCE4
	cmp r5, #0
	bne _0223BD00
_0223BCE4:
	mov r0, sl
	mov r1, #0
	bl ov97_0223D128
	add sp, sp, #4
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223BD00:
	ldr r1, [sb, #0xc]
	ldr r0, [r8, #0xc]
	cmp sl, sb
	add r7, r6, r5
	eor fp, r1, r0
	beq _0223BD20
	cmp sl, r8
	bne _0223BD38
_0223BD20:
	ldr r0, [r3]
	add r2, r3, #4
	add r1, r0, #1
	mov r0, #0x14
	mla r4, r1, r0, r2
	b _0223BD3C
_0223BD38:
	mov r4, sl
_0223BD3C:
	ldr r0, [r4, #8]
	cmp r7, r0
	movle r0, r4
	ble _0223BD58
	mov r0, r4
	mov r1, r7
	bl ov97_0223D268
_0223BD58:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	str r7, [r4, #4]
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [sb]
	ldr r3, [r8]
	mov r2, r6
	bl ov97_0223BB94
	mov r0, r4
	str fp, [sl, #0xc]
	bl ov97_0223D3EC
	cmp sl, r4
	beq _0223BDA8
	mov r0, sl
	mov r1, r4
	bl ov97_0223D1D0
_0223BDA8:
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223BCB8

	arm_func_start ov97_0223BDB8
ov97_0223BDB8: @ 0x0223BDB8
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r1
	ldr r1, [r6, #0xc]
	mov r3, #0
	mov r7, r0
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	beq _0223BE00
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r0, r6
	moveq r3, #1
	movne r6, r5
	movne r5, r0
	moveq r4, r3
	b _0223BE0C
_0223BE00:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r3, #1
_0223BE0C:
	cmp r3, #0
	beq _0223BE40
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov97_0223C060
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #4
	strne r4, [r7, #0xc]
	movne r0, #1
	pop {r4, r5, r6, r7, lr}
	bx lr
_0223BE40:
	ldr r0, [r5, #4]
	ldr r1, [r6, #4]
	cmp r1, r0
	movle r1, r0
	ldr r0, [r7, #8]
	cmp r1, r0
	movle r0, r7
	ble _0223BE68
	mov r0, r7
	bl ov97_0223D268
_0223BE68:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, r6
	mov r1, r5
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223BEC0
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl ov97_0223BEFC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, #1
	str r0, [r7, #0xc]
	b _0223BEEC
_0223BEC0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov97_0223BEFC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, #0
	str r0, [r7, #0xc]
_0223BEEC:
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end ov97_0223BDB8

	arm_func_start ov97_0223BEFC
ov97_0223BEFC: @ 0x0223BEFC
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r1
	mov r7, r2
	ldr r5, [r7, #4]
	ldr r6, [r8, #4]
	mov r4, r0
	cmp r6, r5
	movlt r0, #0
	poplt {r4, r5, r6, r7, r8, sb, sl, lr}
	bxlt lr
	ldr r1, [r4, #8]
	cmp r6, r1
	ble _0223BF38
	mov r1, r6
	bl ov97_0223D268
_0223BF38:
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	mov r3, #0
	mov r0, r3
	cmp r5, #0
	ldr r2, [r8]
	ldr sb, [r7]
	ldr r1, [r4]
	ble _0223BFB8
	mov ip, r3
	mov r7, r3
	mov lr, #1
_0223BF70:
	cmp r3, #0
	ldr sl, [r2], #4
	ldr r8, [sb], #4
	beq _0223BF98
	cmp sl, r8
	movls r3, lr
	sub r8, sl, r8
	movhi r3, ip
	sub sl, r8, #1
	b _0223BFA8
_0223BF98:
	cmp sl, r8
	movlo r3, lr
	movhs r3, r7
	sub sl, sl, r8
_0223BFA8:
	add r0, r0, #1
	cmp r0, r5
	str sl, [r1], #4
	blt _0223BF70
_0223BFB8:
	cmp r3, #0
	beq _0223BFE8
	cmp r0, r6
	bge _0223BFE8
_0223BFC8:
	ldr r5, [r2], #4
	add r0, r0, #1
	sub r3, r5, #1
	cmp r5, r3
	str r3, [r1], #4
	bhi _0223BFE8
	cmp r0, r6
	blt _0223BFC8
_0223BFE8:
	cmp r1, r2
	beq _0223C048
_0223BFF0:
	cmp r0, r6
	bge _0223C048
	ldr r5, [r2]
	add r3, r0, #1
	str r5, [r1]
	cmp r3, r6
	bge _0223C048
	ldr r5, [r2, #4]
	add r3, r0, #2
	str r5, [r1, #4]
	cmp r3, r6
	bge _0223C048
	ldr r5, [r2, #8]
	add r3, r0, #3
	str r5, [r1, #8]
	cmp r3, r6
	ldrlt r3, [r2, #0xc]
	add r0, r0, #4
	strlt r3, [r1, #0xc]
	addlt r2, r2, #0x10
	addlt r1, r1, #0x10
	blt _0223BFF0
_0223C048:
	mov r0, r4
	str r6, [r4, #4]
	bl ov97_0223D3EC
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end ov97_0223BEFC

	arm_func_start ov97_0223C060
ov97_0223C060: @ 0x0223C060
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r8, r2
	ldr r2, [r4, #4]
	ldr r1, [r8, #4]
	mov sb, r0
	cmp r2, r1
	movlt r0, r4
	movlt r4, r8
	movlt r8, r0
	ldr r6, [r4, #4]
	ldr r0, [sb, #8]
	add r1, r6, #1
	cmp r1, r0
	ldr r7, [r8, #4]
	movle r0, sb
	ble _0223C0B0
	mov r0, sb
	bl ov97_0223D268
_0223C0B0:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	str r6, [sb, #4]
	ldr r5, [r4]
	ldr r4, [sb]
	ldr r2, [r8]
	mov r0, r4
	mov r1, r5
	mov r3, r7
	bl ov97_0223C814
	cmp r0, #0
	add r4, r4, r7, lsl #2
	add r5, r5, r7, lsl #2
	beq _0223C148
	cmp r7, r6
	bge _0223C128
_0223C0FC:
	ldr r2, [r5], #4
	mov r3, r4
	add r1, r2, #1
	str r1, [r4], #4
	ldr r1, [r3]
	add r7, r7, #1
	cmp r1, r2
	movhs r0, #0
	bhs _0223C128
	cmp r7, r6
	blt _0223C0FC
_0223C128:
	cmp r7, r6
	blt _0223C148
	cmp r0, #0
	movne r0, #1
	strne r0, [r4], #4
	ldrne r0, [sb, #4]
	addne r0, r0, #1
	strne r0, [sb, #4]
_0223C148:
	cmp r4, r5
	beq _0223C16C
	cmp r7, r6
	bge _0223C16C
_0223C158:
	ldr r0, [r5], #4
	add r7, r7, #1
	cmp r7, r6
	str r0, [r4], #4
	blt _0223C158
_0223C16C:
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end ov97_0223C060

	arm_func_start ov97_0223C17C
ov97_0223C17C: @ 0x0223C17C
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	ldr r2, [r5, #0xc]
	ldr r1, [r4, #0xc]
	mov r6, r0
	eors r0, r2, r1
	beq _0223C220
	cmp r2, #0
	movne r0, r5
	movne r5, r4
	movne r4, r0
	mov r0, r5
	mov r1, r4
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223C1EC
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl ov97_0223BEFC
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, lr}
	bxeq lr
	mov r0, #1
	str r0, [r6, #0xc]
	b _0223C214
_0223C1EC:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov97_0223BEFC
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, lr}
	bxeq lr
	mov r0, #0
	str r0, [r6, #0xc]
_0223C214:
	mov r0, #1
	pop {r4, r5, r6, lr}
	bx lr
_0223C220:
	cmp r2, #0
	movne r0, #1
	strne r0, [r6, #0xc]
	moveq r0, #0
	streq r0, [r6, #0xc]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov97_0223C060
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	pop {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_0223C17C

	arm_func_start ov97_0223C258
ov97_0223C258: @ 0x0223C258
	push {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #4
	moveq r0, #1
	popeq {r4, r5, lr}
	bxeq lr
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _0223C2A4
	mov r2, #0
	str r2, [r5, #0xc]
	bl ov97_0223C3B8
	mov r1, #1
	add sp, sp, #4
	str r1, [r5, #0xc]
	pop {r4, r5, lr}
	bx lr
_0223C2A4:
	ldr r1, [r5, #4]
	cmp r1, #1
	bgt _0223C348
	cmp r1, #0
	bne _0223C300
	ldr r1, [r5, #8]
	cmp r1, #1
	bge _0223C2CC
	mov r1, #1
	bl ov97_0223D268
_0223C2CC:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, lr}
	bxeq lr
	ldr r1, [r5]
	mov r0, #1
	str r4, [r1]
	str r0, [r5, #0xc]
	add sp, sp, #4
	str r0, [r5, #4]
	pop {r4, r5, lr}
	bx lr
_0223C300:
	ldr r2, [r5]
	ldr r1, [r2]
	cmp r1, r4
	moveq r0, #0
	streq r0, [r5, #4]
	beq _0223C338
	cmp r1, r4
	subhi r0, r1, r4
	strhi r0, [r2]
	movls r0, #1
	strls r0, [r5, #0xc]
	ldrls r0, [r5]
	subls r1, r4, r1
	strls r1, [r0]
_0223C338:
	add sp, sp, #4
	mov r0, #1
	pop {r4, r5, lr}
	bx lr
_0223C348:
	mov r0, #0
	mov r1, #1
_0223C350:
	ldr ip, [r5]
	lsl r3, r0, #2
	ldr r2, [ip, r0, lsl #2]
	cmp r2, r4
	ldrhs r1, [ip, r3]
	subhs r1, r1, r4
	strhs r1, [ip, r3]
	bhs _0223C388
	ldr r2, [ip, r3]
	add r0, r0, #1
	sub r2, r2, r4
	mov r4, r1
	str r2, [ip, r3]
	b _0223C350
_0223C388:
	ldr r1, [r5]
	ldr r1, [r1, r3]
	cmp r1, #0
	bne _0223C3A8
	ldr r1, [r5, #4]
	sub r1, r1, #1
	cmp r0, r1
	streq r1, [r5, #4]
_0223C3A8:
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223C258

	arm_func_start ov97_0223C3B8
ov97_0223C3B8: @ 0x0223C3B8
	push {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #4
	moveq r0, #1
	popeq {r4, r5, lr}
	bxeq lr
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _0223C460
	ldr r2, [r5, #4]
	cmp r2, #1
	ble _0223C410
	mov r2, #0
	str r2, [r5, #0xc]
	bl ov97_0223C258
	mov r1, #1
	add sp, sp, #4
	str r1, [r5, #0xc]
	pop {r4, r5, lr}
	bx lr
_0223C410:
	ldr r2, [r5]
	ldr r1, [r2]
	cmp r1, r4
	subhi r0, r1, r4
	strhi r0, [r2]
	bhi _0223C450
	cmp r1, r4
	movhs r0, #0
	strhs r0, [r5, #0xc]
	strhs r0, [r5, #4]
	bhs _0223C450
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5]
	sub r1, r4, r1
	str r1, [r0]
_0223C450:
	add sp, sp, #4
	mov r0, #1
	pop {r4, r5, lr}
	bx lr
_0223C460:
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r1, r1, #1
	cmp r1, r2
	ble _0223C478
	bl ov97_0223D268
_0223C478:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, lr}
	bxeq lr
	ldr r1, [r5]
	ldr r0, [r5, #4]
	mov r3, #0
	str r3, [r1, r0, lsl #2]
	mov r0, #1
_0223C4A0:
	ldr r2, [r5]
	ldr r1, [r2, r3, lsl #2]
	add r1, r4, r1
	cmp r4, r1
	str r1, [r2, r3, lsl #2]
	movhi r4, r0
	addhi r3, r3, #1
	bhi _0223C4A0
	ldr r0, [r5, #4]
	cmp r3, r0
	addge r0, r0, #1
	strge r0, [r5, #4]
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223C3B8

	arm_func_start ov97_0223C4E0
ov97_0223C4E0: @ 0x0223C4E0
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	asr r1, r2, #4
	lsr r3, r2, #0x1f
	add r1, r2, r1, lsr #27
	rsb r2, r3, r2, lsl #27
	add r4, r3, r2, ror #27
	ldr r2, [r7, #4]
	asr r6, r1, #5
	mov r8, r0
	cmp r6, r2
	rsb r5, r4, #0x20
	ble _0223C528
	mov r1, #0
	bl ov97_0223D128
	mov r0, #1
	pop {r4, r5, r6, r7, r8, lr}
	bx lr
_0223C528:
	cmp r8, r7
	beq _0223C560
	sub r1, r2, r6
	ldr r2, [r8, #8]
	add r1, r1, #2
	cmp r1, r2
	ble _0223C548
	bl ov97_0223D268
_0223C548:
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r7, #0xc]
	str r0, [r8, #0xc]
_0223C560:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r0, r6, lsl #2
	ldr r0, [r8]
	sub r7, r1, r6
	mov r6, r2
	str r7, [r8, #4]
	cmp r4, #0
	bne _0223C5A8
	add r2, r7, #1
	cmp r2, #0
	ble _0223C5E8
_0223C590:
	ldr r1, [r6], #4
	sub r2, r2, #1
	cmp r2, #0
	str r1, [r0], #4
	bgt _0223C590
	b _0223C5E8
_0223C5A8:
	cmp r7, #1
	add r6, r2, #4
	ldr r3, [r2]
	mov r2, #1
	ble _0223C5D8
_0223C5BC:
	lsr r1, r3, r4
	ldr r3, [r6], #4
	add r2, r2, #1
	orr r1, r1, r3, lsl r5
	cmp r2, r7
	str r1, [r0], #4
	blt _0223C5BC
_0223C5D8:
	lsr r1, r3, r4
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
_0223C5E8:
	mov r0, r8
	bl ov97_0223D3EC
	mov r0, #1
	pop {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end ov97_0223C4E0

	arm_func_start ov97_0223C5FC
ov97_0223C5FC: @ 0x0223C5FC
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r1
	mov r7, r2
	asr r1, r7, #4
	mov r5, r0
	add r2, r7, r1, lsr #27
	ldr r1, [r4, #4]
	ldr r3, [r5, #8]
	add r1, r1, r2, asr #5
	add r1, r1, #1
	cmp r1, r3
	asr r6, r2, #5
	ble _0223C634
	bl ov97_0223D268
_0223C634:
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r0, [r4, #0xc]
	lsr r1, r7, #0x1f
	str r0, [r5, #0xc]
	ldr r3, [r4, #4]
	rsb r0, r1, r7, lsl #27
	adds ip, r1, r0, ror #27
	ldr r2, [r4]
	ldr r0, [r5]
	add r1, r3, r6
	mov r3, #0
	str r3, [r0, r1, lsl #2]
	rsb r3, ip, #0x20
	bne _0223C69C
	ldr r1, [r4, #4]
	subs r7, r1, #1
	bmi _0223C6D0
_0223C684:
	ldr r3, [r2, r7, lsl #2]
	add r1, r6, r7
	str r3, [r0, r1, lsl #2]
	subs r7, r7, #1
	bpl _0223C684
	b _0223C6D0
_0223C69C:
	ldr r1, [r4, #4]
	subs r1, r1, #1
	bmi _0223C6D0
_0223C6A8:
	add sb, r6, r1
	add r8, sb, #1
	ldr sl, [r2, r1, lsl #2]
	ldr lr, [r0, r8, lsl #2]
	lsl r7, sl, ip
	orr lr, lr, sl, lsr r3
	str lr, [r0, r8, lsl #2]
	str r7, [r0, sb, lsl #2]
	subs r1, r1, #1
	bpl _0223C6A8
_0223C6D0:
	lsl r2, r6, #2
	mov r1, #0
	bl FUN_020C4CF4
	ldr r1, [r4, #4]
	mov r0, r5
	add r1, r1, r6
	add r1, r1, #1
	str r1, [r5, #4]
	bl ov97_0223D3EC
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end ov97_0223C5FC

	arm_func_start ov97_0223C700
ov97_0223C700: @ 0x0223C700
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	cmp r3, #0
	movle r0, #0
	pople {r4, r5, r6, r7, r8, sb, sl, lr}
	bxle lr
	mov r6, #0
	mov r4, r6
	mov lr, r6
	mov ip, r6
	mov r7, r6
	mov r5, #1
_0223C72C:
	ldr sl, [r1]
	ldr sb, [r2]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0]
	cmp sl, sb
	beq _0223C754
	cmp sl, sb
	movlo r6, r5
	movhs r6, r4
_0223C754:
	sub r8, r3, #1
	cmp r8, #0
	ble _0223C808
	ldr sl, [r1, #4]
	ldr sb, [r2, #4]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0, #4]
	cmp sl, sb
	beq _0223C788
	cmp sl, sb
	movlo r6, r5
	movhs r6, lr
_0223C788:
	sub r8, r3, #2
	cmp r8, #0
	ble _0223C808
	ldr sl, [r1, #8]
	ldr sb, [r2, #8]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0, #8]
	cmp sl, sb
	beq _0223C7BC
	cmp sl, sb
	movlo r6, r5
	movhs r6, ip
_0223C7BC:
	sub r8, r3, #3
	cmp r8, #0
	ble _0223C808
	ldr sl, [r1, #0xc]
	ldr sb, [r2, #0xc]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0, #0xc]
	cmp sl, sb
	beq _0223C7F0
	cmp sl, sb
	movlo r6, r5
	movhs r6, r7
_0223C7F0:
	sub r3, r3, #4
	cmp r3, #0
	addgt r1, r1, #0x10
	addgt r2, r2, #0x10
	addgt r0, r0, #0x10
	bgt _0223C72C
_0223C808:
	mov r0, r6
	pop {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end ov97_0223C700

	arm_func_start ov97_0223C814
ov97_0223C814: @ 0x0223C814
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	cmp r3, #0
	addle sp, sp, #0xc
	movle r0, #0
	pople {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	mov ip, #0
	mov r7, ip
	mov r6, ip
	mov r5, ip
	mov r4, ip
	mov lr, ip
	mov fp, ip
	str ip, [sp]
	str ip, [sp, #4]
	mov r8, #1
_0223C858:
	ldr sb, [r1]
	add sl, sb, ip
	ldr sb, [r2]
	cmp sl, ip
	movlo ip, r8
	add sb, sl, sb
	movhs ip, r7
	cmp sb, sl
	movlo sl, r8
	movhs sl, r6
	str sb, [r0]
	sub sb, r3, #1
	add ip, ip, sl
	cmp sb, #0
	ble _0223C954
	ldr sb, [r1, #4]
	ldr sl, [r2, #4]
	add sb, sb, ip
	cmp sb, ip
	movlo ip, r8
	add sl, sb, sl
	movhs ip, r5
	cmp sl, sb
	movlo sb, r8
	movhs sb, r4
	add ip, ip, sb
	sub sb, r3, #2
	str sl, [r0, #4]
	cmp sb, #0
	ble _0223C954
	ldr sb, [r1, #8]
	ldr sl, [r2, #8]
	add sb, sb, ip
	cmp sb, ip
	movlo ip, r8
	add sl, sb, sl
	movhs ip, lr
	cmp sl, sb
	movlo sb, r8
	movhs sb, fp
	add ip, ip, sb
	sub sb, r3, #3
	str sl, [r0, #8]
	cmp sb, #0
	ble _0223C954
	ldr sb, [r1, #0xc]
	ldr sl, [r2, #0xc]
	add sb, sb, ip
	cmp sb, ip
	movlo ip, r8
	add sl, sb, sl
	ldrhs ip, [sp]
	cmp sl, sb
	movlo sb, r8
	ldrhs sb, [sp, #4]
	sub r3, r3, #4
	cmp r3, #0
	str sl, [r0, #0xc]
	add ip, ip, sb
	addgt r1, r1, #0x10
	addgt r2, r2, #0x10
	addgt r0, r0, #0x10
	bgt _0223C858
_0223C954:
	mov r0, ip
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223C814

	arm_func_start ov97_0223C964
ov97_0223C964: @ 0x0223C964
	push {r4, r5, r6, r7, r8, lr}
	cmp r2, #0
	pople {r4, r5, r6, r7, r8, lr}
	bxle lr
	mov r3, #0x8000
	ldr lr, _0223CAB4 @ =0x0000FFFF
	rsb ip, r3, #0
_0223C980:
	ldr r5, [r1]
	mov r3, #0x8000
	and r4, r5, lr
	and r7, lr, r5, lsr #16
	mul r6, r4, r7
	mul r5, r4, r4
	and r4, r6, lr
	add r8, r5, r4, lsl #17
	rsb r3, r3, #0
	mul r5, r7, r7
	and r3, r6, r3
	add r3, r5, r3, lsr #15
	cmp r8, r4, lsl #17
	addlo r3, r3, #1
	str r8, [r0]
	str r3, [r0, #4]
	subs r3, r2, #1
	popeq {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r4, [r1, #4]
	and r7, lr, r4, lsr #16
	and r3, r4, lr
	mul r6, r3, r7
	mul r4, r3, r3
	and r3, r6, lr
	add r8, r4, r3, lsl #17
	mul r5, r7, r7
	and r4, r6, ip
	cmp r8, r3, lsl #17
	add r3, r5, r4, lsr #15
	addlo r3, r3, #1
	str r8, [r0, #8]
	str r3, [r0, #0xc]
	subs r3, r2, #2
	popeq {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r5, [r1, #8]
	mov r3, #0x8000
	and r4, r5, lr
	and r7, lr, r5, lsr #16
	mul r6, r4, r7
	mul r5, r4, r4
	and r4, r6, lr
	add r8, r5, r4, lsl #17
	rsb r3, r3, #0
	mul r5, r7, r7
	and r3, r6, r3
	add r3, r5, r3, lsr #15
	cmp r8, r4, lsl #17
	addlo r3, r3, #1
	str r8, [r0, #0x10]
	str r3, [r0, #0x14]
	subs r3, r2, #3
	popeq {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r5, [r1, #0xc]
	mov r3, #0x8000
	and r4, r5, lr
	and r7, lr, r5, lsr #16
	mul r6, r4, r7
	mul r5, r4, r4
	and r4, r6, lr
	add r8, r5, r4, lsl #17
	rsb r3, r3, #0
	mul r5, r7, r7
	and r3, r6, r3
	add r3, r5, r3, lsr #15
	cmp r8, r4, lsl #17
	addlo r3, r3, #1
	str r8, [r0, #0x18]
	subs r2, r2, #4
	str r3, [r0, #0x1c]
	addne r1, r1, #0x10
	addne r0, r0, #0x20
	bne _0223C980
	pop {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_0223CAB4: .4byte 0x0000FFFF
	arm_func_end ov97_0223C964

	arm_func_start ov97_0223CAB8
ov97_0223CAB8: @ 0x0223CAB8
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov r4, #0
	addle sp, sp, #4
	movle r0, r4
	pople {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r5, _0223CC54 @ =0x0000FFFF
	and lr, r3, r5
	and ip, r5, r3, lsr #16
_0223CAE4:
	ldr r3, [r1]
	and r7, r5, r3, lsr #16
	mul r6, lr, r7
	and r3, r3, r5
	mla sb, ip, r3, r6
	mul r8, r3, lr
	mul r3, r7, ip
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	add r6, r8, r4
	addlo r3, r3, #1
	cmp r6, r4
	addlo r3, r3, #1
	str r6, [r0]
	mov r4, r3
	subs r6, r2, #1
	beq _0223CC44
	ldr r4, [r1, #4]
	and r7, r5, r4, lsr #16
	mul r6, lr, r7
	and r4, r4, r5
	mla sb, ip, r4, r6
	mul r8, r4, lr
	mul r4, r7, ip
	cmp sb, r6
	and r6, sb, r5
	addlo r4, r4, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r4, r4, r7
	add r6, r8, r3
	addlo r4, r4, #1
	cmp r6, r3
	addlo r4, r4, #1
	str r6, [r0, #4]
	subs r3, r2, #2
	beq _0223CC44
	ldr r3, [r1, #8]
	and r7, r5, r3, lsr #16
	mul r6, lr, r7
	and r3, r3, r5
	mla sb, ip, r3, r6
	mul r8, r3, lr
	mul r3, r7, ip
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	add r6, r8, r4
	addlo r3, r3, #1
	cmp r6, r4
	addlo r3, r3, #1
	str r6, [r0, #8]
	mov r4, r3
	subs r6, r2, #3
	beq _0223CC44
	ldr r4, [r1, #0xc]
	and r7, r5, r4, lsr #16
	mul r6, lr, r7
	and r4, r4, r5
	mla sb, ip, r4, r6
	mul r8, r4, lr
	mul r4, r7, ip
	cmp sb, r6
	and r6, sb, r5
	addlo r4, r4, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r4, r4, r7
	add r6, r8, r3
	addlo r4, r4, #1
	cmp r6, r3
	addlo r4, r4, #1
	subs r2, r2, #4
	str r6, [r0, #0xc]
	addne r1, r1, #0x10
	addne r0, r0, #0x10
	bne _0223CAE4
_0223CC44:
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_0223CC54: .4byte 0x0000FFFF
	arm_func_end ov97_0223CAB8

	arm_func_start ov97_0223CC58
ov97_0223CC58: @ 0x0223CC58
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov ip, #0
	addle sp, sp, #4
	movle r0, ip
	pople {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r5, _0223CE34 @ =0x0000FFFF
	and r4, r3, r5
	and lr, r5, r3, lsr #16
_0223CC84:
	ldr r3, [r1]
	and r7, r5, r3, lsr #16
	mul r6, r4, r7
	and r3, r3, r5
	mla sb, lr, r3, r6
	mul r8, r3, r4
	mul r3, r7, lr
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	ldr r6, [r0]
	addlo r3, r3, #1
	add r7, r8, ip
	cmp r7, ip
	add r7, r7, r6
	addlo r3, r3, #1
	cmp r7, r6
	addlo r3, r3, #1
	mov ip, r3
	str r7, [r0]
	subs r6, r2, #1
	beq _0223CE24
	ldr ip, [r1, #4]
	and r7, r5, ip, lsr #16
	mul r6, r4, r7
	and ip, ip, r5
	mla sb, lr, ip, r6
	mul r8, ip, r4
	mul ip, r7, lr
	cmp sb, r6
	and r6, sb, r5
	addlo ip, ip, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add ip, ip, r7
	add r6, r8, r3
	addlo ip, ip, #1
	cmp r6, r3
	ldr r3, [r0, #4]
	addlo ip, ip, #1
	add r6, r6, r3
	cmp r6, r3
	addlo ip, ip, #1
	str r6, [r0, #4]
	subs r3, r2, #2
	beq _0223CE24
	ldr r3, [r1, #8]
	and r7, r5, r3, lsr #16
	mul r6, r4, r7
	and r3, r3, r5
	mla sb, lr, r3, r6
	mul r8, r3, r4
	mul r3, r7, lr
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	ldr r6, [r0, #8]
	addlo r3, r3, #1
	add r7, r8, ip
	cmp r7, ip
	add r7, r7, r6
	addlo r3, r3, #1
	cmp r7, r6
	addlo r3, r3, #1
	mov ip, r3
	str r7, [r0, #8]
	subs r6, r2, #3
	beq _0223CE24
	ldr ip, [r1, #0xc]
	and r7, r5, ip, lsr #16
	mul r6, r4, r7
	and ip, ip, r5
	mla sb, lr, ip, r6
	mul r8, ip, r4
	mul ip, r7, lr
	cmp sb, r6
	and r6, sb, r5
	addlo ip, ip, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add ip, ip, r7
	add r6, r8, r3
	addlo ip, ip, #1
	cmp r6, r3
	ldr r3, [r0, #0xc]
	addlo ip, ip, #1
	add r6, r6, r3
	cmp r6, r3
	addlo ip, ip, #1
	subs r2, r2, #4
	str r6, [r0, #0xc]
	addne r1, r1, #0x10
	addne r0, r0, #0x10
	bne _0223CC84
_0223CE24:
	mov r0, ip
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_0223CE34: .4byte 0x0000FFFF
	arm_func_end ov97_0223CC58

	arm_func_start ov97_0223CE38
ov97_0223CE38: @ 0x0223CE38
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0
	addlt sp, sp, #4
	movlt r0, #0
	ldmlt sp!, {lr}
	bxlt lr
	asr r2, r1, #4
	add r2, r1, r2, lsr #27
	lsr r3, r1, #0x1f
	ldr ip, [r0, #4]
	asr lr, r2, #5
	cmp ip, lr
	rsb r1, r3, r1, lsl #27
	addle sp, sp, #4
	add r2, r3, r1, ror #27
	movle r0, #0
	ldmle sp!, {lr}
	bxle lr
	ldr r1, [r0]
	mov r0, #1
	lsl r2, r0, r2
	ldr r1, [r1, lr, lsl #2]
	ands r1, r2, r1
	moveq r0, #0
	add sp, sp, #4
	ldm sp!, {lr}
	bx lr
	arm_func_end ov97_0223CE38

	arm_func_start ov97_0223CEA8
ov97_0223CEA8: @ 0x0223CEA8
	push {r4, r5, r6, lr}
	mov r6, r0
	asr r2, r1, #4
	add r2, r1, r2, lsr #27
	lsr r3, r1, #0x1f
	rsb r1, r3, r1, lsl #27
	ldr r4, [r6, #4]
	asr r5, r2, #5
	cmp r4, r5
	add r4, r3, r1, ror #27
	bgt _0223CF28
	ldr r2, [r6, #8]
	add r1, r5, #1
	cmp r1, r2
	ble _0223CEE8
	bl ov97_0223D268
_0223CEE8:
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, lr}
	bxeq lr
	ldr r3, [r6, #4]
	add r2, r5, #1
	cmp r3, r2
	bge _0223CF20
	mov r1, #0
_0223CF0C:
	ldr r0, [r6]
	str r1, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r2
	blt _0223CF0C
_0223CF20:
	add r0, r5, #1
	str r0, [r6, #4]
_0223CF28:
	ldr r2, [r6]
	mov r0, #1
	ldr r1, [r2, r5, lsl #2]
	orr r1, r1, r0, lsl r4
	str r1, [r2, r5, lsl #2]
	pop {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_0223CEA8

	arm_func_start ov97_0223CF44
ov97_0223CF44: @ 0x0223CF44
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	subs r2, r3, r2
	movne r0, r2
	bxne lr
	subs r2, r3, #1
	ldr ip, [r0]
	ldr r3, [r1]
	bmi _0223CF90
_0223CF68:
	ldr r1, [ip, r2, lsl #2]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	beq _0223CF88
	cmp r1, r0
	movhi r0, #1
	mvnls r0, #0
	bx lr
_0223CF88:
	subs r2, r2, #1
	bpl _0223CF68
_0223CF90:
	mov r0, #0
	bx lr
	arm_func_end ov97_0223CF44

	arm_func_start ov97_0223CF98
ov97_0223CF98: @ 0x0223CF98
	push {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl ov97_0223D534
	add r1, r0, #7
	asr r0, r1, #2
	add r0, r1, r0, lsr #29
	asr r0, r0, #3
	cmp r0, #0
	addle sp, sp, #4
	sub ip, r0, #1
	pople {r4, r5, lr}
	bxle lr
_0223CFD0:
	lsr r3, ip, #0x1f
	asr r1, ip, #1
	rsb r2, r3, ip, lsl #30
	add r1, ip, r1, lsr #30
	add r2, r3, r2, ror #30
	ldr r3, [r5]
	asr r1, r1, #2
	ldr r3, [r3, r1, lsl #2]
	lsl r1, r2, #3
	lsr r1, r3, r1
	cmp ip, #0
	strb r1, [r4], #1
	sub ip, ip, #1
	bgt _0223CFD0
	add sp, sp, #4
	pop {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223CF98

	arm_func_start ov97_0223D014
ov97_0223D014: @ 0x0223D014
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r5, r2
	mov r7, r0
	mov r6, r1
	bne _0223D034
	bl ov97_0223D38C
	mov r5, r0
_0223D034:
	cmp r5, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, r6, r7, lr}
	bxeq lr
	cmp r6, #0
	mov r4, #0
	addeq sp, sp, #4
	moveq r0, r5
	streq r4, [r5, #4]
	popeq {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, r6, #2
	lsl r2, r0, #3
	add r1, r2, #0x1f
	asr r0, r1, #4
	add r0, r1, r0, lsr #27
	ldr r1, [r5, #8]
	asr r0, r0, #5
	cmp r0, r1
	movle r0, r5
	ble _0223D0A4
	asr r0, r2, #4
	add r0, r2, r0, lsr #27
	asr r1, r0, #5
	mov r0, r5
	add r1, r1, #1
	bl ov97_0223D268
_0223D0A4:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, r6, r7, lr}
	bxeq lr
	sub r0, r6, #1
	lsr r1, r0, #2
	add ip, r1, #1
	cmp r6, #0
	str ip, [r5, #4]
	and r3, r0, #3
	sub r6, r6, #1
	beq _0223D110
	mov r1, #0
	mov r0, #3
_0223D0E0:
	ldrb r2, [r7], #1
	cmp r3, #0
	sub r3, r3, #1
	orr r4, r2, r4, lsl #8
	ldreq r2, [r5]
	subeq ip, ip, #1
	streq r4, [r2, ip, lsl #2]
	moveq r4, r1
	moveq r3, r0
	cmp r6, #0
	sub r6, r6, #1
	bne _0223D0E0
_0223D110:
	mov r0, r5
	bl ov97_0223D3EC
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end ov97_0223D014

	arm_func_start ov97_0223D128
ov97_0223D128: @ 0x0223D128
	push {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r2, [r4, #8]
	mov r5, r1
	cmp r2, #1
	bge _0223D14C
	mov r1, #2
	bl ov97_0223D268
_0223D14C:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, lr}
	bxeq lr
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #4]
	ldr r0, [r4]
	str r5, [r0]
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #4]
	mov r0, #1
	add sp, sp, #4
	pop {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223D128

	arm_func_start ov97_0223D198
ov97_0223D198: @ 0x0223D198
	push {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0223D1BC
	ldr r2, [r4, #8]
	mov r1, #0
	lsl r2, r2, #2
	bl FUN_020C4CF4
_0223D1BC:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223D198

	arm_func_start ov97_0223D1D0
ov97_0223D1D0: @ 0x0223D1D0
	push {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	cmp r5, r4
	addeq sp, sp, #4
	popeq {r4, r5, lr}
	bxeq lr
	ldr r1, [r4, #4]
	ldr r2, [r5, #8]
	cmp r1, r2
	ble _0223D204
	bl ov97_0223D268
_0223D204:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r4, r5, lr}
	bxeq lr
	ldr r2, [r4, #4]
	ldr r0, [r4]
	ldr r1, [r5]
	lsl r2, r2, #2
	bl FUN_020C4DB0
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0223D250
	ldr r1, [r5]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
_0223D250:
	ldr r1, [r4, #0xc]
	mov r0, r5
	str r1, [r5, #0xc]
	add sp, sp, #4
	pop {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223D1D0

	arm_func_start ov97_0223D268
ov97_0223D268: @ 0x0223D268
	push {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r4, r0
	ble _0223D2DC
	ldr r0, [r5, #0x10]
	ands r0, r0, #2
	movne r0, #0
	popne {r4, r5, r6, lr}
	bxne lr
	add r0, r4, #1
	lsl r0, r0, #2
	bl ov97_0223D62C
	movs r6, r0
	moveq r0, #0
	popeq {r4, r5, r6, lr}
	bxeq lr
	ldr r0, [r5]
	cmp r0, #0
	beq _0223D2D4
	ldr r2, [r5, #4]
	mov r1, r6
	lsl r2, r2, #2
	bl FUN_020C4DB0
	ldr r0, [r5]
	bl ov97_0223D5E4
_0223D2D4:
	str r6, [r5]
	str r4, [r5, #8]
_0223D2DC:
	mov r0, r5
	pop {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_0223D268

	arm_func_start ov97_0223D2E8
ov97_0223D2E8: @ 0x0223D2E8
	push {r4, r5, r6, lr}
	mov r6, r0
	add r4, r6, #4
	mov r5, #0
_0223D2F8:
	mov r0, r4
	bl ov97_0223D510
	add r5, r5, #1
	cmp r5, #0xc
	add r4, r4, #0x14
	blt _0223D2F8
	ldr r0, [r6, #0x108]
	ands r0, r0, #1
	popeq {r4, r5, r6, lr}
	bxeq lr
	mov r0, r6
	bl ov97_0223D5E4
	pop {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_0223D2E8

	arm_func_start ov97_0223D330
ov97_0223D330: @ 0x0223D330
	push {r4, lr}
	mov r1, #0
	mov r2, #0x110
	mov r4, r0
	bl FUN_020C4CF4
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0x108]
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223D330

	arm_func_start ov97_0223D358
ov97_0223D358: @ 0x0223D358
	push {r4, lr}
	mov r0, #0x110
	bl ov97_0223D62C
	movs r4, r0
	moveq r0, #0
	popeq {r4, lr}
	bxeq lr
	bl ov97_0223D330
	mov r1, #1
	mov r0, r4
	str r1, [r4, #0x108]
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223D358

	arm_func_start ov97_0223D38C
ov97_0223D38C: @ 0x0223D38C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0x14
	bl ov97_0223D62C
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeq sp!, {lr}
	bxeq lr
	mov r1, #1
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0]
	add sp, sp, #4
	ldm sp!, {lr}
	bx lr
	arm_func_end ov97_0223D38C

	arm_func_start ov97_0223D3D8
ov97_0223D3D8: @ 0x0223D3D8
	ldr ip, _0223D3E8 @ =FUN_020C4CF4
	mov r1, #0
	mov r2, #0x14
	bx ip
	.align 2, 0
_0223D3E8: .4byte FUN_020C4CF4
	arm_func_end ov97_0223D3D8

	arm_func_start ov97_0223D3EC
ov97_0223D3EC: @ 0x0223D3EC
	ldr r3, [r0, #4]
	cmp r3, #0
	bxle lr
	ldr r2, [r0]
	sub r1, r3, #1
	cmp r3, #0
	add r3, r2, r1, lsl #2
	bxle lr
	add r2, r0, #4
_0223D410:
	ldr r1, [r3], #-4
	cmp r1, #0
	bxne lr
	ldr r1, [r2]
	sub r1, r1, #1
	str r1, [r2]
	ldr r1, [r0, #4]
	cmp r1, #0
	bgt _0223D410
	bx lr
	arm_func_end ov97_0223D3EC

	arm_func_start ov97_0223D438
ov97_0223D438: @ 0x0223D438
	push {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #4]
	mov r4, r1
	cmp r2, r4
	addge sp, sp, #4
	popge {r4, r5, lr}
	bxge lr
	ldr r2, [r5, #8]
	cmp r4, r2
	ble _0223D46C
	bl ov97_0223D268
_0223D46C:
	ldr r0, [r5]
	cmp r0, #0
	addeq sp, sp, #4
	popeq {r4, r5, lr}
	bxeq lr
	ldr r2, [r5, #4]
	cmp r2, r4
	addge sp, sp, #4
	popge {r4, r5, lr}
	bxge lr
	mov r1, #0
_0223D498:
	ldr r0, [r5]
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r4
	blt _0223D498
	add sp, sp, #4
	pop {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223D438

	arm_func_start ov97_0223D4B8
ov97_0223D4B8: @ 0x0223D4B8
	push {r4, lr}
	movs r4, r0
	popeq {r4, lr}
	bxeq lr
	ldr r0, [r4]
	cmp r0, #0
	beq _0223D4E4
	ldr r1, [r4, #0x10]
	ands r1, r1, #2
	bne _0223D4E4
	bl ov97_0223D5E4
_0223D4E4:
	ldr r0, [r4, #0x10]
	orr r0, r0, #0x8000
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	ands r0, r0, #1
	popeq {r4, lr}
	bxeq lr
	mov r0, r4
	bl ov97_0223D5E4
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223D4B8

	arm_func_start ov97_0223D510
ov97_0223D510: @ 0x0223D510
	push {r4, lr}
	movs r4, r0
	popeq {r4, lr}
	bxeq lr
	bl ov97_0223D198
	mov r0, r4
	bl ov97_0223D4B8
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223D510

	arm_func_start ov97_0223D534
ov97_0223D534: @ 0x0223D534
	push {r4, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	popeq {r4, lr}
	bxeq lr
	ldr r0, [r0]
	sub r4, r1, #1
	ldr r0, [r0, r4, lsl #2]
	bl ov97_0223D568
	add r0, r0, r4, lsl #5
	pop {r4, lr}
	bx lr
	arm_func_end ov97_0223D534

	arm_func_start ov97_0223D568
ov97_0223D568: @ 0x0223D568
	mov r1, #0x10000
	rsb r1, r1, #0
	ands r1, r0, r1
	beq _0223D588
	ands r1, r0, #0xff000000
	movne r2, #0x18
	moveq r2, #0x10
	b _0223D594
_0223D588:
	ands r1, r0, #0xff00
	movne r2, #8
	moveq r2, #0
_0223D594:
	lsr r1, r0, r2
	ands r0, r1, #0xf0
	ldreq r0, _0223D5C4 @ =0x0223DEE8
	ldrsbeq r0, [r0, r1]
	addeq r0, r0, r2
	bxeq lr
	ldr r0, _0223D5C4 @ =0x0223DEE8
	lsr r1, r1, #4
	ldrsb r0, [r0, r1]
	add r0, r0, r2
	add r0, r0, #4
	bx lr
	.align 2, 0
_0223D5C4: .4byte 0x0223DEE8
	arm_func_end ov97_0223D568

	arm_func_start ov97_0223D5C8
ov97_0223D5C8: @ 0x0223D5C8
	ldr r3, _0223D5DC @ =0x02240AF4
	ldr r2, _0223D5E0 @ =0x02240AF8
	str r0, [r3]
	str r1, [r2]
	bx lr
	.align 2, 0
_0223D5DC: .4byte 0x02240AF4
_0223D5E0: .4byte 0x02240AF8
	arm_func_end ov97_0223D5C8

	arm_func_start ov97_0223D5E4
ov97_0223D5E4: @ 0x0223D5E4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0223D628 @ =0x02240AF8
	mov r2, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _0223D610
	blx r1
	add sp, sp, #4
	ldm sp!, {lr}
	bx lr
_0223D610:
	mov r0, #0
	mvn r1, #0
	bl FUN_020C331C
	add sp, sp, #4
	ldm sp!, {lr}
	bx lr
	.align 2, 0
_0223D628: .4byte 0x02240AF8
	arm_func_end ov97_0223D5E4

	arm_func_start ov97_0223D62C
ov97_0223D62C: @ 0x0223D62C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0223D670 @ =0x02240AF4
	mov r2, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _0223D658
	blx r1
	add sp, sp, #4
	ldm sp!, {lr}
	bx lr
_0223D658:
	mov r0, #0
	mvn r1, #0
	bl FUN_020C3214
	add sp, sp, #4
	ldm sp!, {lr}
	bx lr
	.align 2, 0
_0223D670: .4byte 0x02240AF4
	arm_func_end ov97_0223D62C
	@ 0x0223D674
