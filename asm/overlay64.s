	.include "macros/function.inc"


	.text

	thumb_func_start ov64_0222DCE0
ov64_0222DCE0: @ 0x0222DCE0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0222DDA0 @ =0x0000003F
	movs r1, #2
	bl FUN_02006590
	movs r2, #7
	movs r0, #3
	movs r1, #0x34
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	ldr r1, _0222DDA4 @ =0x000004D8
	adds r0, r5, #0
	movs r2, #0x34
	bl FUN_0200681C
	ldr r2, _0222DDA4 @ =0x000004D8
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	adds r0, r5, #0
	bl FUN_02006840
	adds r1, r0, #0
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r4, r0
	movs r2, #0x34
	bl ov64_0222E040
	movs r1, #2
	lsls r1, r1, #8
	adds r0, r4, #4
	adds r1, r4, r1
	movs r2, #0x34
	bl ov64_0222E1A4
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x3c
	adds r1, r4, r1
	adds r2, r4, #4
	movs r3, #0x34
	bl ov64_0222EA68
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x78
	adds r1, r4, r1
	adds r2, r4, #4
	movs r3, #0x34
	bl ov64_0222F09C
	movs r0, #0xe2
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	movs r3, #0x34
	bl ov64_02230444
	movs r0, #0xe5
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	movs r3, #0x34
	bl ov64_02230620
	movs r0, #0xef
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	movs r3, #0x34
	bl ov64_022308DC
	ldr r0, _0222DDA8 @ =ov64_0222DF3C
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222DDA0: .4byte 0x0000003F
_0222DDA4: .4byte 0x000004D8
_0222DDA8: .4byte ov64_0222DF3C
	thumb_func_end ov64_0222DCE0

	thumb_func_start ov64_0222DDAC
ov64_0222DDAC: @ 0x0222DDAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0222DDC4
	cmp r0, #1
	beq _0222DE7C
	b _0222DE8E
_0222DDC4:
	ldr r0, [r4]
	cmp r0, #5
	bhi _0222DE5E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222DDD6: @ jump table
	.2byte _0222DDE2 - _0222DDD6 - 2 @ case 0
	.2byte _0222DDF8 - _0222DDD6 - 2 @ case 1
	.2byte _0222DE0E - _0222DDD6 - 2 @ case 2
	.2byte _0222DE2A - _0222DDD6 - 2 @ case 3
	.2byte _0222DE40 - _0222DDD6 - 2 @ case 4
	.2byte _0222DE58 - _0222DDD6 - 2 @ case 5
_0222DDE2:
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x3c
	adds r1, r4, r1
	adds r2, r4, #4
	movs r3, #0x34
	bl ov64_0222EA70
	adds r6, r0, #0
	b _0222DE5E
_0222DDF8:
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x78
	adds r1, r4, r1
	adds r2, r4, #4
	movs r3, #0x34
	bl ov64_0222F0C4
	adds r6, r0, #0
	b _0222DE5E
_0222DE0E:
	movs r0, #0x34
	str r0, [sp]
	movs r0, #0xe2
	movs r2, #2
	lsls r0, r0, #2
	lsls r2, r2, #8
	adds r0, r4, r0
	adds r1, r4, #0
	adds r2, r4, r2
	adds r3, r4, #4
	bl ov64_0223044C
	adds r6, r0, #0
	b _0222DE5E
_0222DE2A:
	movs r0, #0xe5
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_02230628
	adds r6, r0, #0
	b _0222DE5E
_0222DE40:
	movs r0, #0xef
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	movs r3, #0x34
	bl ov64_02230904
	adds r6, r0, #0
	b _0222DE5E
_0222DE58:
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0222DE5E:
	cmp r6, #1
	bne _0222DE8E
	ldr r0, _0222DE9C @ =0x00000205
	ldrb r1, [r4, r0]
	str r1, [r4]
	adds r1, r0, #1
	ldrb r1, [r4, r1]
	subs r0, r0, #1
	strb r1, [r4, r0]
	ldr r0, _0222DEA0 @ =0x000004D4
	movs r1, #4
	str r1, [r4, r0]
	movs r0, #1
	str r0, [r5]
	b _0222DE8E
_0222DE7C:
	ldr r0, _0222DEA0 @ =0x000004D4
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bgt _0222DE8E
	movs r0, #0
	str r0, [r5]
_0222DE8E:
	adds r0, r4, #4
	bl ov64_0222E21C
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0222DE9C: .4byte 0x00000205
_0222DEA0: .4byte 0x000004D4
	thumb_func_end ov64_0222DDAC

	thumb_func_start ov64_0222DEA4
ov64_0222DEA4: @ 0x0222DEA4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x3c
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_0222EC8C
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x78
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_0222F40C
	movs r0, #0xe2
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_022305CC
	movs r0, #0xe5
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_02230678
	movs r0, #0xef
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_02230A50
	adds r0, r4, #4
	bl ov64_0222E23C
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov64_0222E060
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x34
	bl FUN_0201807C
	ldr r0, _0222DF38 @ =0x0000003F
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222DF38: .4byte 0x0000003F
	thumb_func_end ov64_0222DEA4

	thumb_func_start ov64_0222DF3C
ov64_0222DF3C: @ 0x0222DF3C
	ldr r3, _0222DF44 @ =ov64_0222E228
	adds r0, r0, #4
	bx r3
	nop
_0222DF44: .4byte ov64_0222E228
	thumb_func_end ov64_0222DF3C

	thumb_func_start ov64_0222DF48
ov64_0222DF48: @ 0x0222DF48
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #2
	adds r5, r0, #0
	lsls r1, r1, #8
	adds r0, r5, #4
	adds r1, r5, r1
	adds r2, r4, #0
	bl ov64_0222E1A4
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0x3c
	adds r1, r5, r1
	adds r2, r5, #4
	adds r3, r4, #0
	bl ov64_0222EC94
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0x78
	adds r1, r5, r1
	adds r2, r5, #4
	adds r3, r4, #0
	bl ov64_0222F414
	movs r0, #0xe2
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r5, #4
	adds r3, r4, #0
	bl ov64_022305D4
	movs r0, #0xe5
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r5, #4
	adds r3, r4, #0
	bl ov64_02230680
	movs r0, #0xef
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r5, #4
	adds r3, r4, #0
	bl ov64_02230B1C
	ldr r0, _0222DFCC @ =ov64_0222DF3C
	adds r1, r5, #0
	bl FUN_02017798
	bl FUN_020177A4
	pop {r3, r4, r5, pc}
	nop
_0222DFCC: .4byte ov64_0222DF3C
	thumb_func_end ov64_0222DF48

	thumb_func_start ov64_0222DFD0
ov64_0222DFD0: @ 0x0222DFD0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x3c
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_0222EE00
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x78
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_0222F5F4
	movs r0, #0xe2
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_022305D8
	movs r0, #0xe5
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_02230804
	movs r0, #0xef
	movs r1, #2
	lsls r0, r0, #2
	lsls r1, r1, #8
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #4
	bl ov64_02230BA0
	adds r0, r4, #4
	bl ov64_0222E23C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov64_0222DFD0

	thumb_func_start ov64_0222E040
ov64_0222E040: @ 0x0222E040
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	str r1, [r5]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [r5, #0x2c]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [r5, #0x30]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov64_0222E040

	thumb_func_start ov64_0222E060
ov64_0222E060: @ 0x0222E060
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl FUN_020237BC
	ldr r0, [r4, #0x30]
	bl FUN_020237BC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov64_0222E060

	thumb_func_start ov64_0222E074
ov64_0222E074: @ 0x0222E074
	strb r1, [r0, #5]
	strb r2, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end ov64_0222E074

	thumb_func_start ov64_0222E07C
ov64_0222E07C: @ 0x0222E07C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #0
	beq _0222E08C
	ldr r0, [r5, #0x2c]
	bl FUN_02023810
_0222E08C:
	cmp r4, #0
	beq _0222E098
	ldr r0, [r5, #0x30]
	adds r1, r4, #0
	bl FUN_02023810
_0222E098:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov64_0222E07C

	thumb_func_start ov64_0222E09C
ov64_0222E09C: @ 0x0222E09C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [r0]
	adds r6, r1, #0
	str r2, [sp, #4]
	bl FUN_0202B370
	adds r5, r0, #0
	bl FUN_0202AD28
	blx FUN_020A471C
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r4, #0
_0222E0BC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0202AF78
	cmp r0, #0
	bne _0222E148
	adds r0, r6, #0
	add r1, sp, #0x1c
	bl FUN_02023B38
	adds r7, r0, #0
	ldr r0, [sp, #0x1c]
	adds r6, r1, #0
	cmp r0, #1
	bne _0222E142
	ldr r0, [sp, #0xc]
	eors r1, r0
	ldr r0, [sp, #0x10]
	eors r0, r7
	orrs r0, r1
	beq _0222E142
	adds r0, r5, #0
	bl FUN_0202AD28
	adds r1, r7, #0
	adds r2, r6, #0
	blx FUN_020A4118
	cmp r0, #0
	bne _0222E0FE
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222E0FE:
	ldr r0, [sp]
	adds r1, r7, #0
	ldr r0, [r0]
	adds r2, r6, #0
	add r3, sp, #0x18
	bl FUN_02039140
	cmp r0, #0
	bne _0222E116
	add sp, #0x20
	movs r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0222E116:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0202AED8
	adds r1, r7, #0
	adds r2, r6, #0
	blx FUN_020A474C
	ldr r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0202AF0C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #2
	bl FUN_0202AE2C
	add sp, #0x20
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222E142:
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222E148:
	adds r4, r4, #1
	cmp r4, #0x20
	blt _0222E0BC
	bl FUN_02022974
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov64_0222E09C

	thumb_func_start ov64_0222E158
ov64_0222E158: @ 0x0222E158
	str r1, [r0, #0x34]
	movs r1, #1
	str r1, [r0, #0x38]
	bx lr
	thumb_func_end ov64_0222E158

	thumb_func_start ov64_0222E160
ov64_0222E160: @ 0x0222E160
	strb r1, [r0, #7]
	bx lr
	thumb_func_end ov64_0222E160

	thumb_func_start ov64_0222E164
ov64_0222E164: @ 0x0222E164
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #8
	movs r1, #0
	movs r2, #0x24
	blx FUN_020D5124
	ldr r0, [r6]
	bl FUN_0202B370
	movs r5, #0
	adds r4, r6, #0
	adds r7, r0, #0
	str r5, [r6, #8]
	adds r4, #8
_0222E182:
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_0202AF78
	cmp r0, #1
	bne _0222E19A
	ldr r0, [r6, #8]
	adds r0, r6, r0
	strb r5, [r0, #0xc]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0222E19A:
	adds r5, r5, #1
	cmp r5, #0x20
	blt _0222E182
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_0222E164

	thumb_func_start ov64_0222E1A4
ov64_0222E1A4: @ 0x0222E1A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0222E218 @ =0x021BF6DC
	movs r1, #0
	adds r4, r2, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #0x59
	adds r1, r4, #0
	bl FUN_02006C24
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	bl ov64_0222E270
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_0222E290
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_0222E3D8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_0222E5D8
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov64_0222E620
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_0222E9A4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_0222E6D8
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	pop {r4, r5, r6, pc}
	nop
_0222E218: .4byte 0x021BF6DC
	thumb_func_end ov64_0222E1A4

	thumb_func_start ov64_0222E21C
ov64_0222E21C: @ 0x0222E21C
	ldr r3, _0222E224 @ =FUN_020219F8
	ldr r0, [r0, #4]
	bx r3
	nop
_0222E224: .4byte FUN_020219F8
	thumb_func_end ov64_0222E21C

	thumb_func_start ov64_0222E228
ov64_0222E228: @ 0x0222E228
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov64_0222E228

	thumb_func_start ov64_0222E23C
ov64_0222E23C: @ 0x0222E23C
	push {r4, lr}
	adds r4, r0, #0
	bl ov64_0222EA0C
	adds r0, r4, #0
	bl ov64_0222E71C
	adds r0, r4, #0
	bl ov64_0222E6B4
	adds r0, r4, #0
	bl ov64_0222E604
	adds r0, r4, #0
	bl ov64_0222E570
	adds r0, r4, #0
	bl ov64_0222E3AC
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov64_0222E23C

	thumb_func_start ov64_0222E270
ov64_0222E270: @ 0x0222E270
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0222E28C @ =0x0223228C
	add r3, sp, #0
	movs r2, #5
_0222E27A:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222E27A
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0222E28C: .4byte 0x0223228C
	thumb_func_end ov64_0222E270

	thumb_func_start ov64_0222E290
ov64_0222E290: @ 0x0222E290
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r7, r1, #0
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_02018340
	add r3, sp, #0x14
	ldr r4, _0222E3A0 @ =0x0223220C
	str r0, [r5]
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	movs r0, #0
	ldr r6, _0222E3A4 @ =0x02232390
	ldr r4, _0222E3A8 @ =0x02232258
	str r0, [sp, #0x10]
_0222E2BC:
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4]
	movs r1, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	adds r3, r7, #0
	bl FUN_02019690
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	ldr r0, [sp, #0x10]
	adds r6, #0x1c
	adds r0, r0, #1
	adds r4, r4, #4
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _0222E2BC
	movs r0, #0xe0
	str r0, [sp]
	str r7, [sp, #4]
	movs r1, #0
	adds r0, #0xb0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02007130
	movs r0, #0xa0
	str r0, [sp]
	movs r1, #0
	str r7, [sp, #4]
	adds r0, #0xf0
	ldr r0, [r5, r0]
	movs r2, #4
	adds r3, r1, #0
	bl FUN_02007130
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0x19
	str r7, [sp, #0xc]
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #0x12
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r7, [sp, #0xc]
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #0x12
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r7, [sp, #0xc]
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #0xd
	movs r3, #4
	bl FUN_020070E8
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0x19
	str r7, [sp, #0xc]
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #0xc
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r7, [sp, #0xc]
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #0xe
	movs r3, #4
	bl FUN_0200710C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222E3A0: .4byte 0x0223220C
_0222E3A4: .4byte 0x02232390
_0222E3A8: .4byte 0x02232258
	thumb_func_end ov64_0222E290

	thumb_func_start ov64_0222E3AC
ov64_0222E3AC: @ 0x0222E3AC
	push {r4, r5, r6, lr}
	ldr r5, _0222E3D4 @ =0x02232258
	adds r6, r0, #0
	movs r4, #0
_0222E3B4:
	ldr r1, [r5]
	ldr r0, [r6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _0222E3B4
	ldr r0, [r6]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222E3D4: .4byte 0x02232258
	thumb_func_end ov64_0222E3AC

	thumb_func_start ov64_0222E3D8
ov64_0222E3D8: @ 0x0222E3D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r1, #0
	adds r5, r0, #0
	blx FUN_020A7944
	movs r0, #0x10
	adds r1, r7, #0
	bl FUN_0201DBEC
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x1e
	str r3, [sp, #0xc]
	adds r2, r0, #0
	str r7, [sp, #0x10]
	bl FUN_0200A784
	ldr r4, _0222E564 @ =0x022321EC
	add r3, sp, #0x2c
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r1, _0222E568 @ =0x00200010
	adds r0, r2, #0
	adds r2, r1, #0
	str r7, [sp, #0x38]
	bl FUN_0201E88C
	movs r0, #0x40
	adds r1, r7, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	adds r1, r5, #0
	movs r0, #0x40
	adds r1, #0x50
	adds r2, r7, #0
	bl FUN_020095C4
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r3, r5, #0
	ldr r1, _0222E56C @ =0x02232460
	adds r0, #8
	movs r2, #1
	adds r3, #0x50
	bl FUN_0200A8B0
	movs r6, #0
	adds r4, r5, #0
_0222E44E:
	movs r0, #0x40
	adds r1, r6, #0
	adds r2, r7, #0
	bl FUN_02009714
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0222E44E
	movs r0, #0x64
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, #0x18
	ldr r1, [r5, r1]
	movs r2, #0xf
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x75
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r2, #0x64
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	subs r1, #0x58
	ldr r0, [r5, r1]
	lsls r1, r2, #2
	movs r2, #0
	ldr r1, [r5, r1]
	adds r3, r2, #0
	bl FUN_02009B04
	movs r1, #0x76
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r2, #0x64
	str r2, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r7, [sp, #8]
	subs r1, #0x58
	ldr r0, [r5, r1]
	lsls r1, r2, #2
	ldr r1, [r5, r1]
	movs r2, #0x10
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x77
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r2, #0x64
	str r2, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r7, [sp, #8]
	subs r1, #0x58
	ldr r0, [r5, r1]
	lsls r1, r2, #2
	ldr r1, [r5, r1]
	movs r2, #0x11
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x1e
	lsls r1, r1, #4
	str r0, [r5, r1]
	subs r1, #0xc
	ldr r0, [r5, r1]
	bl FUN_0200A3DC
	cmp r0, #0
	bne _0222E4F8
	bl FUN_02022974
_0222E4F8:
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A640
	cmp r0, #0
	bne _0222E50A
	bl FUN_02022974
_0222E50A:
	movs r0, #0x75
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	movs r1, #0x64
	adds r0, r1, #0
	movs r3, #0x5e
	str r1, [sp]
	subs r0, #0x65
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r3, r3, #2
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r5, r2]
	adds r3, #0x38
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, r3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_020093B4
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0222E564: .4byte 0x022321EC
_0222E568: .4byte 0x00200010
_0222E56C: .4byte 0x02232460
	thumb_func_end ov64_0222E3D8

	thumb_func_start ov64_0222E570
ov64_0222E570: @ 0x0222E570
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x75
	lsls r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	bl FUN_0200A4E4
	movs r1, #0x76
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_0200A6DC
	movs r7, #0x5e
	lsls r7, r7, #2
	adds r6, r7, #0
	ldr r5, [sp]
	movs r4, #0
	adds r6, #0x5c
_0222E596:
	ldr r0, [r5, r7]
	ldr r1, [r5, r6]
	bl FUN_02009D68
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0222E596
	movs r6, #0x5e
	ldr r4, [sp]
	movs r5, #0
	lsls r6, r6, #2
_0222E5AE:
	ldr r0, [r4, r6]
	bl FUN_02009754
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #4
	blt _0222E5AE
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl FUN_02021964
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0200A878
	bl FUN_0201DC3C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_0222E570

	thumb_func_start ov64_0222E5D8
ov64_0222E5D8: @ 0x0222E5D8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0200B358
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r2, _0222E600 @ =0x000002A3
	movs r0, #0
	movs r1, #0x1a
	adds r3, r4, #0
	bl FUN_0200B144
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	nop
_0222E600: .4byte 0x000002A3
	thumb_func_end ov64_0222E5D8

	thumb_func_start ov64_0222E604
ov64_0222E604: @ 0x0222E604
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov64_0222E604

	thumb_func_start ov64_0222E620
ov64_0222E620: @ 0x0222E620
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r1]
	adds r4, r2, #0
	bl FUN_02025E44
	bl FUN_02027B50
	adds r6, r0, #0
	movs r0, #0
	movs r1, #0xe0
	adds r2, r4, #0
	bl FUN_02002E98
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5]
	movs r1, #1
	movs r2, #0xa
	movs r3, #8
	bl FUN_0200DD0C
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	movs r1, #1
	ldr r0, [r5]
	adds r2, r1, #0
	movs r3, #9
	bl FUN_0200DAA4
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #0x28
	movs r1, #0x65
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	movs r2, #1
	ldr r0, [r5]
	adds r1, r5, r1
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	movs r1, #0x69
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	movs r1, #0x6a
	lsls r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov64_0222E620

	thumb_func_start ov64_0222E6B4
ov64_0222E6B4: @ 0x0222E6B4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x69
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	thumb_func_end ov64_0222E6B4

	thumb_func_start ov64_0222E6D8
ov64_0222E6D8: @ 0x0222E6D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #8]
	movs r1, #0x7d
	lsls r1, r1, #2
	ldr r4, _0222E718 @ =0x022321A0
	str r0, [sp, #4]
	movs r7, #0
	adds r6, r0, r1
	adds r5, r0, #0
_0222E6EC:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp]
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldrb r1, [r4]
	movs r2, #0
	adds r3, r6, #0
	bl FUN_020071D0
	movs r1, #0x7b
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r7, r7, #1
	adds r6, r6, #4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r7, #2
	blt _0222E6EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222E718: .4byte 0x022321A0
	thumb_func_end ov64_0222E6D8

	thumb_func_start ov64_0222E71C
ov64_0222E71C: @ 0x0222E71C
	push {r4, r5, r6, lr}
	movs r6, #0x7b
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_0222E726:
	ldr r0, [r5, r6]
	bl FUN_020181C4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0222E726
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov64_0222E71C

	thumb_func_start ov64_0222E738
ov64_0222E738: @ 0x0222E738
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #1
	bne _0222E760
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0222E760:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r2, #0x63
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x1c
	ldr r2, [r5, r2]
	adds r1, r4, #0
	bl FUN_0200B1B8
	movs r2, #0x62
	lsls r2, r2, #2
	adds r1, r2, #0
	ldr r0, [r5, r2]
	adds r1, #0x1c
	adds r2, #0x20
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r0, #4
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0222E7C4 @ =0x000F0200
	movs r2, #0x65
	str r0, [sp, #8]
	movs r3, #0
	lsls r2, r2, #2
	adds r0, r5, r2
	str r3, [sp, #0xc]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #1
	bl FUN_0201D78C
	movs r1, #0x6b
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0x18
	adds r0, r5, r1
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0222E7C4: .4byte 0x000F0200
	thumb_func_end ov64_0222E738

	thumb_func_start ov64_0222E7C8
ov64_0222E7C8: @ 0x0222E7C8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #1
	bne _0222E7EC
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0222E7EC:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201AD10
	pop {r4, pc}
	thumb_func_end ov64_0222E7C8

	thumb_func_start ov64_0222E7F8
ov64_0222E7F8: @ 0x0222E7F8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r2, _0222E878 @ =0x05F5E100
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	blx FUN_020E1ED4
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r1, #1
	movs r0, #0x62
	str r1, [sp, #4]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #4
	bl FUN_0200B60C
	ldr r2, _0222E87C @ =0x00002710
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	blx FUN_020E1ED4
	ldr r2, _0222E87C @ =0x00002710
	movs r3, #0
	blx FUN_020E1EE0
	movs r1, #2
	adds r2, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #4
	bl FUN_0200B60C
	ldr r2, _0222E87C @ =0x00002710
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	blx FUN_020E1EE0
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	movs r3, #4
	bl FUN_0200B60C
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0222E878: .4byte 0x05F5E100
_0222E87C: .4byte 0x00002710
	thumb_func_end ov64_0222E7F8

	thumb_func_start ov64_0222E880
ov64_0222E880: @ 0x0222E880
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	adds r0, r1, #0
	adds r6, r2, #0
	bl FUN_0202B370
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_02025E6C
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_0202AEF0
	adds r1, r0, #0
	adds r0, r5, #0
	bl FUN_02025EC0
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	adds r2, r5, #0
	bl FUN_0200B498
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_0222E880

	thumb_func_start ov64_0222E8C0
ov64_0222E8C0: @ 0x0222E8C0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r3, #0
	adds r7, r2, #0
	bl FUN_02025E6C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0202B370
	adds r1, r7, #0
	bl FUN_0202AF34
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02025EC0
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0200B498
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_0222E8C0

	thumb_func_start ov64_0222E8FC
ov64_0222E8FC: @ 0x0222E8FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r2, #0
	adds r0, r1, #0
	bl FUN_0202B370
	adds r1, r4, #0
	movs r2, #6
	adds r7, r0, #0
	movs r6, #1
	bl FUN_0202AD2C
	adds r2, r0, #0
	bne _0222E91C
	movs r6, #0
_0222E91C:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x62
	lsls r0, r0, #2
	movs r1, #2
	ldr r0, [r5, r0]
	adds r3, r1, #0
	bl FUN_0200B60C
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #4
	bl FUN_0202AD2C
	movs r1, #0
	adds r2, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #4
	bl FUN_0200B60C
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #5
	bl FUN_0202AD2C
	adds r2, r0, #0
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0200C2E0
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov64_0222E8FC

	thumb_func_start ov64_0222E970
ov64_0222E970: @ 0x0222E970
	push {r3, lr}
	sub sp, #8
	adds r2, r1, #0
	movs r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #0x62
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #0
	movs r3, #4
	bl FUN_0200B60C
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov64_0222E970

	thumb_func_start ov64_0222E990
ov64_0222E990: @ 0x0222E990
	adds r2, r1, #0
	movs r1, #0x62
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0222E9A0 @ =FUN_0200C0B0
	movs r1, #0
	bx r3
	nop
_0222E9A0: .4byte FUN_0200C0B0
	thumb_func_end ov64_0222E990

	thumb_func_start ov64_0222E9A4
ov64_0222E9A4: @ 0x0222E9A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	movs r1, #0x1b
	ldr r4, _0222EA08 @ =0x022324A8
	lsls r1, r1, #4
	str r0, [sp]
	adds r5, r0, #0
	adds r0, r0, r1
	movs r6, #0
	adds r7, r4, #0
	str r0, [sp, #8]
_0222E9BC:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	str r0, [r4]
	ldr r0, [sp, #8]
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	str r0, [r4, #0x2c]
	adds r0, r7, #0
	bl FUN_02021AA0
	movs r1, #0x79
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_02021D6C
	adds r6, r6, #1
	adds r4, #0x30
	adds r7, #0x30
	adds r5, r5, #4
	cmp r6, #2
	blt _0222E9BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222EA08: .4byte 0x022324A8
	thumb_func_end ov64_0222E9A4

	thumb_func_start ov64_0222EA0C
ov64_0222EA0C: @ 0x0222EA0C
	push {r4, r5, r6, lr}
	movs r6, #0x79
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_0222EA16:
	ldr r0, [r5, r6]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0222EA16
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov64_0222EA0C

	thumb_func_start ov64_0222EA28
ov64_0222EA28: @ 0x0222EA28
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0x79
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	lsls r7, r7, #2
_0222EA34:
	ldr r0, [r5, r7]
	adds r1, r6, #0
	bl FUN_02021CAC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0222EA34
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_0222EA28

	thumb_func_start ov64_0222EA48
ov64_0222EA48: @ 0x0222EA48
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0x79
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	lsls r7, r7, #2
_0222EA54:
	ldr r0, [r5, r7]
	adds r1, r6, #0
	bl FUN_02021CC8
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0222EA54
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_0222EA48

	thumb_func_start ov64_0222EA68
ov64_0222EA68: @ 0x0222EA68
	push {r3, lr}
	bl ov64_0222EC94
	pop {r3, pc}
	thumb_func_end ov64_0222EA68

	thumb_func_start ov64_0222EA70
ov64_0222EA70: @ 0x0222EA70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r6, r3, #0
	ldrb r3, [r4, #4]
	adds r5, r0, #0
	adds r7, r2, #0
	cmp r3, #0xa
	bhi _0222EB56
	adds r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_0222EA8E: @ jump table
	.2byte _0222EAA4 - _0222EA8E - 2 @ case 0
	.2byte _0222EAC4 - _0222EA8E - 2 @ case 1
	.2byte _0222EAD2 - _0222EA8E - 2 @ case 2
	.2byte _0222EADC - _0222EA8E - 2 @ case 3
	.2byte _0222EB30 - _0222EA8E - 2 @ case 4
	.2byte _0222EB4E - _0222EA8E - 2 @ case 5
	.2byte _0222EB5E - _0222EA8E - 2 @ case 6
	.2byte _0222EB7E - _0222EA8E - 2 @ case 7
	.2byte _0222EBEE - _0222EA8E - 2 @ case 8
	.2byte _0222EC0C - _0222EA8E - 2 @ case 9
	.2byte _0222EC5E - _0222EA8E - 2 @ case 10
_0222EAA4:
	bl ov64_0222EE20
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x11
	adds r2, r1, #0
	adds r3, r0, #0
	str r6, [sp, #8]
	bl FUN_0200F174
	movs r0, #1
	strb r0, [r4, #4]
	b _0222EC7A
_0222EAC4:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0222EB56
	movs r0, #3
	strb r0, [r4, #4]
	b _0222EC7A
_0222EAD2:
	bl ov64_0222EE20
	movs r0, #3
	strb r0, [r4, #4]
	b _0222EC7A
_0222EADC:
	bl ov64_0222EE84
	str r0, [sp, #0x10]
	cmp r0, #1
	bne _0222EB56
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_0222F068
	cmp r0, #1
	bne _0222EB18
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_0222EF4C
	ldr r0, [r5]
	cmp r0, #3
	beq _0222EB04
	cmp r0, #1
	bne _0222EB0A
_0222EB04:
	movs r0, #4
	strb r0, [r4, #4]
	b _0222EC7A
_0222EB0A:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov64_0222EF64
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0222EB18:
	ldr r0, [r5]
	cmp r0, #1
	bne _0222EB56
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0x35
	adds r3, r6, #0
	bl ov64_0222EFBC
	movs r0, #0xa
	strb r0, [r4, #4]
	b _0222EC7A
_0222EB30:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x10
	str r6, [sp, #8]
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0222EC7A
_0222EB4E:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _0222EB58
_0222EB56:
	b _0222EC7A
_0222EB58:
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0222EB5E:
	bl ov64_0222EE20
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x11
	adds r2, r1, #0
	adds r3, r0, #0
	str r6, [sp, #8]
	bl FUN_0200F174
	movs r0, #7
	strb r0, [r4, #4]
	b _0222EC7A
_0222EB7E:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0222EC7A
	adds r0, r6, #0
	bl FUN_02025E6C
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	bl FUN_02023E2C
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	bl FUN_02025EC0
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ldr r2, [sp, #0xc]
	movs r1, #0
	bl FUN_0200B498
	ldr r0, [sp, #0xc]
	bl FUN_020181C4
	ldr r0, [r4, #0x30]
	add r1, sp, #0x10
	bl FUN_02023B38
	adds r3, r0, #0
	ldr r0, [sp, #0x10]
	adds r2, r1, #0
	cmp r0, #0
	beq _0222EBDC
	adds r0, r7, #0
	adds r1, r3, #0
	bl ov64_0222E7F8
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0x31
	adds r3, r6, #0
	bl ov64_0222EFBC
	movs r0, #8
	strb r0, [r4, #4]
	b _0222EC7A
_0222EBDC:
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0x32
	adds r3, r6, #0
	bl ov64_0222EFBC
	movs r0, #0xa
	strb r0, [r4, #4]
	b _0222EC7A
_0222EBEE:
	bl ov64_0222F038
	cmp r0, #0
	beq _0222EC7A
	str r6, [sp]
	ldr r0, [r7]
	ldr r1, _0222EC80 @ =0x022321CA
	movs r2, #1
	movs r3, #9
	bl FUN_02002100
	str r0, [r5, #0x2c]
	movs r0, #9
	strb r0, [r4, #4]
	b _0222EC7A
_0222EC0C:
	ldr r0, [r5, #0x2c]
	adds r1, r6, #0
	bl FUN_02002114
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0222EC24
	adds r1, r1, #1
	cmp r0, r1
	beq _0222EC7A
	b _0222EC30
_0222EC24:
	adds r0, r5, #0
	bl ov64_0222F050
	movs r0, #3
	strb r0, [r4, #4]
	b _0222EC7A
_0222EC30:
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	adds r0, r4, #0
	bl ov64_0222E09C
	adds r2, r0, #0
	bne _0222EC4A
	adds r0, r5, #0
	bl ov64_0222F050
	movs r0, #3
	strb r0, [r4, #4]
	b _0222EC7A
_0222EC4A:
	ldr r3, _0222EC84 @ =0x022321A4
	adds r0, r5, #0
	ldrb r2, [r3, r2]
	adds r1, r7, #0
	adds r3, r6, #0
	bl ov64_0222EFBC
	movs r0, #0xa
	strb r0, [r4, #4]
	b _0222EC7A
_0222EC5E:
	bl ov64_0222F038
	cmp r0, #0
	beq _0222EC7A
	ldr r0, _0222EC88 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0222EC7A
	adds r0, r5, #0
	bl ov64_0222F050
	movs r0, #3
	strb r0, [r4, #4]
_0222EC7A:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222EC80: .4byte 0x022321CA
_0222EC84: .4byte 0x022321A4
_0222EC88: .4byte 0x021BF67C
	thumb_func_end ov64_0222EA70

	thumb_func_start ov64_0222EC8C
ov64_0222EC8C: @ 0x0222EC8C
	ldr r3, _0222EC90 @ =ov64_0222EE00
	bx r3
	.align 2, 0
_0222EC90: .4byte ov64_0222EE00
	thumb_func_end ov64_0222EC8C

	thumb_func_start ov64_0222EC94
ov64_0222EC94: @ 0x0222EC94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x14]
	adds r0, r0, #4
	adds r5, r1, #0
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl FUN_0201A7A0
	movs r0, #4
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	movs r2, #3
	ldr r0, [r0]
	adds r1, r1, #4
	adds r3, r2, #0
	bl FUN_0201A7E8
	ldr r0, [sp, #0x14]
	adds r0, #0x1c
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #0x70
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r0, [r0]
	adds r1, #0x1c
	movs r2, #1
	movs r3, #2
	bl FUN_0201A7E8
	ldr r0, [sp, #0x14]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	movs r1, #0
	adds r0, #0x1c
	bl FUN_0201ADA4
	ldr r1, [sp, #0x1c]
	movs r0, #0x80
	bl FUN_02023790
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x38]
	ldr r0, [r5]
	bl FUN_02025E44
	bl FUN_02027AC0
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x34]
	ldr r1, [sp, #0x1c]
	movs r0, #0x80
	bl FUN_02023790
	adds r4, r0, #0
	ldr r1, [sp, #0x1c]
	movs r0, #0x80
	bl FUN_02023790
	str r0, [sp, #0x24]
	ldr r0, [r5]
	bl FUN_02025E38
	adds r2, r0, #0
	movs r1, #0x62
	ldr r0, [sp, #0x18]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_0200B498
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, _0222EDF0 @ =0x02232424
	ldr r7, _0222EDF4 @ =0x022321FC
	ldr r5, _0222EDF8 @ =0x0223241C
	str r0, [sp, #0x2c]
_0222ED5A:
	movs r0, #0x63
	ldr r1, [sp, #0x18]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	ldrb r1, [r1]
	bl FUN_0200B1B8
	movs r0, #0x62
	ldr r1, [sp, #0x18]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, [sp, #0x24]
	adds r1, r4, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	movs r3, #0xd0
	bl FUN_02002EEC
	mov ip, r0
	ldr r0, [r7]
	mov r6, ip
	str r0, [sp, #0x28]
	ldrb r0, [r5]
	ldr r3, [sp, #0x28]
	movs r1, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EDFC @ =0x00010200
	adds r2, r4, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	adds r3, r3, r6
	adds r0, r0, #4
	bl FUN_0201D78C
	ldr r0, [sp, #0x2c]
	adds r7, r7, #4
	adds r0, r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	adds r5, r5, #1
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	blt _0222ED5A
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x24]
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	movs r1, #0x19
	str r0, [sp]
	ldr r3, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	movs r1, #1
	movs r2, #0
	adds r3, #0x18
	bl FUN_020071D0
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x14]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222EDF0: .4byte 0x02232424
_0222EDF4: .4byte 0x022321FC
_0222EDF8: .4byte 0x0223241C
_0222EDFC: .4byte 0x00010200
	thumb_func_end ov64_0222EC94

	thumb_func_start ov64_0222EE00
ov64_0222EE00: @ 0x0222EE00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_020237BC
	adds r0, r4, #4
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x1c
	bl FUN_0201A8FC
	ldr r0, [r4, #0x14]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov64_0222EE00

	thumb_func_start ov64_0222EE20
ov64_0222EE20: @ 0x0222EE20
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov64_0222E738
	adds r0, r5, #4
	bl FUN_0201A9A4
	ldr r2, [r5, #0x18]
	movs r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	movs r1, #2
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl FUN_020198C0
	movs r2, #0
	ldr r0, [r4]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_0201C63C
	ldr r0, [r4]
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_0201C63C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_0222EF08
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov64_0222EE20

	thumb_func_start ov64_0222EE84
ov64_0222EE84: @ 0x0222EE84
	push {r4, r5, r6, lr}
	ldr r6, _0222EEFC @ =0x021BF67C
	adds r5, r0, #0
	ldr r1, [r6, #0x48]
	adds r4, r2, #0
	movs r0, #1
	adds r3, r1, #0
	movs r2, #0
	tst r3, r0
	beq _0222EEA2
	ldr r0, _0222EF00 @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222EEA2:
	movs r3, #2
	tst r1, r3
	beq _0222EEB6
	ldr r0, _0222EF00 @ =0x000005DD
	bl FUN_02005748
	movs r0, #3
	str r0, [r5]
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222EEB6:
	ldr r1, [r6, #0x4c]
	movs r3, #0x40
	tst r3, r1
	beq _0222EECC
	ldr r1, [r5]
	cmp r1, #0
	beq _0222EEDE
	subs r1, r1, #1
	str r1, [r5]
	adds r2, r0, #0
	b _0222EEDE
_0222EECC:
	movs r3, #0x80
	tst r1, r3
	beq _0222EEDE
	ldr r1, [r5]
	cmp r1, #3
	bhs _0222EEDE
	adds r1, r1, #1
	str r1, [r5]
	adds r2, r0, #0
_0222EEDE:
	cmp r2, #1
	bne _0222EEF8
	ldr r0, _0222EF04 @ =0x000005E5
	bl FUN_02005748
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_0222EF08
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
_0222EEF8:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222EEFC: .4byte 0x021BF67C
_0222EF00: .4byte 0x000005DD
_0222EF04: .4byte 0x000005E5
	thumb_func_end ov64_0222EE84

	thumb_func_start ov64_0222EF08
ov64_0222EF08: @ 0x0222EF08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0222EF48 @ =0x022321C2
	adds r6, r0, #0
	adds r7, r1, #0
	movs r4, #0
_0222EF14:
	ldr r0, [r6]
	cmp r0, r4
	bne _0222EF1E
	movs r1, #1
	b _0222EF20
_0222EF1E:
	movs r1, #0
_0222EF20:
	movs r0, #0x1c
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r2, [r5]
	ldrb r3, [r5, #1]
	ldr r0, [r7]
	movs r1, #2
	bl FUN_02019E2C
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blt _0222EF14
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0222EF48: .4byte 0x022321C2
	thumb_func_end ov64_0222EF08

	thumb_func_start ov64_0222EF4C
ov64_0222EF4C: @ 0x0222EF4C
	adds r2, r0, #0
	adds r0, r1, #0
	ldr r2, [r2]
	ldr r1, _0222EF5C @ =0x02232420
	ldr r3, _0222EF60 @ =ov64_0222E074
	ldrb r1, [r1, r2]
	movs r2, #0
	bx r3
	.align 2, 0
_0222EF5C: .4byte 0x02232420
_0222EF60: .4byte ov64_0222E074
	thumb_func_end ov64_0222EF4C

	thumb_func_start ov64_0222EF64
ov64_0222EF64: @ 0x0222EF64
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov64_0222E7C8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019CB8
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019CB8
	ldr r0, [r4]
	movs r1, #3
	bl FUN_0201C3C0
	adds r0, r5, #4
	bl FUN_0201AD10
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov64_0222EF64

	thumb_func_start ov64_0222EFBC
ov64_0222EFBC: @ 0x0222EFBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x80
	adds r1, r3, #0
	adds r7, r2, #0
	bl FUN_02023790
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x38]
	adds r2, r6, #0
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x34]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, _0222F034 @ =0x00010200
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x38]
	adds r0, #0x1c
	bl FUN_0201D78C
	str r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #1
	movs r2, #0xa
	movs r3, #8
	bl FUN_0200E060
	adds r5, #0x1c
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F034: .4byte 0x00010200
	thumb_func_end ov64_0222EFBC

	thumb_func_start ov64_0222F038
ov64_0222F038: @ 0x0222F038
	push {r3, lr}
	ldr r0, [r0, #0x30]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0222F04C
	movs r0, #1
	pop {r3, pc}
_0222F04C:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov64_0222F038

	thumb_func_start ov64_0222F050
ov64_0222F050: @ 0x0222F050
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x1c
	movs r1, #1
	bl FUN_0200E084
	adds r4, #0x1c
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov64_0222F050

	thumb_func_start ov64_0222F068
ov64_0222F068: @ 0x0222F068
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	cmp r0, #1
	bne _0222F092
	ldr r0, [r1]
	bl FUN_0202B370
	adds r5, r0, #0
	movs r4, #0
_0222F07A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0202AF78
	cmp r0, #0
	bne _0222F08A
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222F08A:
	adds r4, r4, #1
	cmp r4, #0x20
	blt _0222F07A
	b _0222F096
_0222F092:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222F096:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov64_0222F068

	thumb_func_start ov64_0222F09C
ov64_0222F09C: @ 0x0222F09C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_02025E44
	bl FUN_02027AC0
	adds r1, r5, #0
	adds r1, #0xe0
	str r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov64_0222F414
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov64_0222F09C

	thumb_func_start ov64_0222F0C4
ov64_0222F0C4: @ 0x0222F0C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r1, #0
	ldrb r5, [r4, #4]
	adds r6, r0, #0
	adds r7, r3, #0
	str r2, [sp, #0xc]
	cmp r5, #0x17
	bhi _0222F1B6
	adds r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_0222F0E2: @ jump table
	.2byte _0222F112 - _0222F0E2 - 2 @ case 0
	.2byte _0222F11C - _0222F0E2 - 2 @ case 1
	.2byte _0222F134 - _0222F0E2 - 2 @ case 2
	.2byte _0222F1A4 - _0222F0E2 - 2 @ case 3
	.2byte _0222F1AE - _0222F0E2 - 2 @ case 4
	.2byte _0222F1BE - _0222F0E2 - 2 @ case 5
	.2byte _0222F1DC - _0222F0E2 - 2 @ case 6
	.2byte _0222F1E4 - _0222F0E2 - 2 @ case 7
	.2byte _0222F1F2 - _0222F0E2 - 2 @ case 8
	.2byte _0222F216 - _0222F0E2 - 2 @ case 9
	.2byte _0222F23A - _0222F0E2 - 2 @ case 10
	.2byte _0222F274 - _0222F0E2 - 2 @ case 11
	.2byte _0222F296 - _0222F0E2 - 2 @ case 12
	.2byte _0222F2AC - _0222F0E2 - 2 @ case 13
	.2byte _0222F2D4 - _0222F0E2 - 2 @ case 14
	.2byte _0222F2E2 - _0222F0E2 - 2 @ case 15
	.2byte _0222F2EC - _0222F0E2 - 2 @ case 16
	.2byte _0222F2FC - _0222F0E2 - 2 @ case 17
	.2byte _0222F338 - _0222F0E2 - 2 @ case 18
	.2byte _0222F342 - _0222F0E2 - 2 @ case 19
	.2byte _0222F3A2 - _0222F0E2 - 2 @ case 20
	.2byte _0222F3AC - _0222F0E2 - 2 @ case 21
	.2byte _0222F3C8 - _0222F0E2 - 2 @ case 22
	.2byte _0222F3EC - _0222F0E2 - 2 @ case 23
_0222F112:
	movs r0, #0
	strh r0, [r6]
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r0, [r6, #6]
_0222F11C:
	adds r0, r4, #0
	bl ov64_0222E164
	ldr r2, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl ov64_0222F668
	movs r0, #2
	strb r0, [r4, #4]
	b _0222F400
_0222F134:
	bl ov64_0222F798
	cmp r0, #4
	bhi _0222F1B6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222F148: @ jump table
	.2byte _0222F400 - _0222F148 - 2 @ case 0
	.2byte _0222F152 - _0222F148 - 2 @ case 1
	.2byte _0222F174 - _0222F148 - 2 @ case 2
	.2byte _0222F198 - _0222F148 - 2 @ case 3
	.2byte _0222F19E - _0222F148 - 2 @ case 4
_0222F152:
	movs r0, #0
	ldrsh r1, [r6, r0]
	strh r1, [r6, #2]
	ldrsh r1, [r6, r0]
	subs r1, r1, #1
	strh r1, [r6]
	ldrsh r0, [r6, r0]
	cmp r0, #0
	bge _0222F168
	adds r0, r0, #4
	strh r0, [r6]
_0222F168:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	bl ov64_0222FE5C
	b _0222F400
_0222F174:
	movs r0, #0
	ldrsh r1, [r6, r0]
	strh r1, [r6, #2]
	ldrsh r0, [r6, r0]
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	strh r0, [r6]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #3
	bl ov64_0222FE5C
	b _0222F400
_0222F198:
	movs r0, #0x17
	strb r0, [r4, #4]
	b _0222F400
_0222F19E:
	movs r0, #5
	strb r0, [r4, #4]
	b _0222F400
_0222F1A4:
	bl ov64_0222F8F8
	movs r0, #4
	strb r0, [r4, #4]
	b _0222F400
_0222F1AE:
	bl ov64_0222F948
	cmp r0, #1
	beq _0222F1B8
_0222F1B6:
	b _0222F400
_0222F1B8:
	movs r0, #2
	strb r0, [r4, #4]
	b _0222F400
_0222F1BE:
	bl ov64_0222FF38
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E160
	ldr r2, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl ov64_0222FA70
	movs r0, #6
	strb r0, [r4, #4]
	b _0222F400
_0222F1DC:
	bl ov64_0222FB24
	strb r0, [r4, #4]
	b _0222F400
_0222F1E4:
	movs r0, #0x41
	movs r1, #4
	lsls r0, r0, #2
	str r1, [r6, r0]
	movs r0, #8
	strb r0, [r4, #4]
	b _0222F400
_0222F1F2:
	movs r3, #0x41
	lsls r3, r3, #2
	ldr r5, [r6, r3]
	subs r5, r5, #1
	str r5, [r6, r3]
	ldr r3, [r6, r3]
	cmp r3, #0
	bgt _0222F2F4
	bl ov64_0222F6E8
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl ov64_0222E074
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F216:
	movs r1, #7
	ldrsb r2, [r4, r1]
	asrs r0, r2, #2
	lsrs r0, r0, #0x1d
	adds r0, r2, r0
	asrs r0, r0, #3
	strh r0, [r6]
	ldrsb r0, [r4, r1]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1d
	subs r1, r1, r2
	movs r0, #0x1d
	rors r1, r0
	adds r0, r2, r1
	strh r0, [r6, #4]
	movs r0, #1
	strb r0, [r4, #4]
	b _0222F400
_0222F23A:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x10
	adds r2, r1, #0
	adds r3, r0, #0
	str r7, [sp, #8]
	bl FUN_0200F174
	adds r0, r6, #0
	bl ov64_0222FF38
	adds r5, r0, #0
	ldr r0, [r4]
	bl FUN_0202B370
	adds r1, r4, r5
	ldrb r1, [r1, #0xc]
	bl FUN_0202AEF0
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E158
	movs r0, #0xb
	strb r0, [r4, #4]
	b _0222F400
_0222F274:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0222F2F4
	ldr r2, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov64_0222F6E8
	adds r0, r4, #0
	movs r1, #2
	movs r2, #4
	bl ov64_0222E074
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F296:
	bl ov64_0222FF38
	adds r5, r0, #0
	ldr r0, [r4]
	bl FUN_0202B370
	adds r1, r4, r5
	ldrb r1, [r1, #0xc]
	ldr r2, [r4, #0x2c]
	bl FUN_0202AF0C
_0222F2AC:
	ldr r2, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl ov64_0222F668
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x11
	adds r2, r1, #0
	adds r3, r0, #0
	str r7, [sp, #8]
	bl FUN_0200F174
	movs r0, #0xe
	strb r0, [r4, #4]
	b _0222F400
_0222F2D4:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0222F2F4
	movs r0, #2
	strb r0, [r4, #4]
	b _0222F400
_0222F2E2:
	bl ov64_0222FC1C
	movs r0, #0x10
	strb r0, [r4, #4]
	b _0222F400
_0222F2EC:
	bl ov64_0222FC48
	cmp r0, #1
	beq _0222F2F6
_0222F2F4:
	b _0222F400
_0222F2F6:
	movs r0, #0x11
	strb r0, [r4, #4]
	b _0222F400
_0222F2FC:
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r6, r0]
	adds r1, r7, #0
	bl FUN_02002114
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0222F318
	adds r1, r1, #1
	cmp r0, r1
	beq _0222F400
	b _0222F32C
_0222F318:
	adds r0, r6, #0
	bl ov64_0222FF18
	ldr r0, [sp, #0xc]
	movs r1, #1
	bl ov64_0222EA28
	movs r0, #2
	strb r0, [r4, #4]
	b _0222F400
_0222F32C:
	adds r0, r6, #0
	bl ov64_0222FF18
	movs r0, #0x12
	strb r0, [r4, #4]
	b _0222F400
_0222F338:
	bl ov64_0222FF5C
	movs r0, #0x13
	strb r0, [r4, #4]
	b _0222F400
_0222F342:
	bl ov64_02230008
	cmp r0, #1
	bne _0222F400
	ldr r0, [r4]
	bl FUN_0202B370
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl ov64_0222FF38
	str r0, [sp, #0x14]
	adds r5, r4, #0
	ldr r1, [sp, #0x14]
	adds r5, #0xc
	ldrb r1, [r5, r1]
	ldr r0, [sp, #0x10]
	bl FUN_0202AFD4
	ldr r0, [r4]
	bl FUN_0203068C
	ldr r1, [sp, #0x14]
	ldrb r1, [r5, r1]
	bl FUN_02030788
	adds r0, r4, #0
	bl ov64_0222E164
	movs r0, #4
	ldrsh r0, [r6, r0]
	movs r3, #0
	ldr r2, [sp, #0xc]
	str r0, [sp]
	str r3, [sp, #4]
	str r7, [sp, #8]
	ldrsh r3, [r6, r3]
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov64_0222FC80
	ldr r0, [sp, #0xc]
	movs r1, #1
	bl ov64_0222EA28
	movs r0, #0x14
	strb r0, [r4, #4]
	b _0222F400
_0222F3A2:
	bl ov64_02230044
	movs r0, #2
	strb r0, [r4, #4]
	b _0222F400
_0222F3AC:
	bl ov64_0222FBA4
	cmp r0, #1
	bne _0222F3BA
	movs r0, #0x16
	strb r0, [r4, #4]
	b _0222F400
_0222F3BA:
	ldr r0, [sp, #0xc]
	movs r1, #1
	bl ov64_0222EA28
	movs r0, #2
	strb r0, [r4, #4]
	b _0222F400
_0222F3C8:
	bl ov64_0222FEFC
	cmp r0, #0
	beq _0222F400
	ldr r0, _0222F408 @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0222F400
	ldr r0, [sp, #0xc]
	movs r1, #1
	bl ov64_0222EA28
	movs r0, #2
	strb r0, [r4, #4]
	adds r0, r6, #0
	bl ov64_0222FF18
	b _0222F400
_0222F3EC:
	bl ov64_0222F6E8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl ov64_0222E074
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F400:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F408: .4byte 0x021BF67C
	thumb_func_end ov64_0222F0C4

	thumb_func_start ov64_0222F40C
ov64_0222F40C: @ 0x0222F40C
	ldr r3, _0222F410 @ =ov64_0222F5F4
	bx r3
	.align 2, 0
_0222F410: .4byte ov64_0222F5F4
	thumb_func_end ov64_0222F40C

	thumb_func_start ov64_0222F414
ov64_0222F414: @ 0x0222F414
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	ldr r4, _0222F5E0 @ =0x022322B4
	adds r7, r2, #0
	str r3, [sp, #0x18]
	str r0, [sp, #0x14]
	add r3, sp, #0x28
	movs r2, #6
_0222F424:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222F424
	ldr r4, [sp, #0x14]
	movs r0, #0
	ldr r5, _0222F5E4 @ =0x022321BC
	ldr r6, _0222F5E8 @ =0x0223221C
	str r0, [sp, #0x24]
	adds r4, #8
_0222F438:
	ldr r0, [sp, #0x18]
	adds r1, r7, #0
	str r0, [sp]
	ldrh r3, [r5]
	adds r0, r4, #0
	adds r2, r6, #0
	bl ov64_02230074
	ldr r0, [sp, #0x24]
	adds r5, r5, #2
	adds r0, r0, #1
	adds r6, r6, #6
	adds r4, #0x38
	str r0, [sp, #0x24]
	cmp r0, #3
	blt _0222F438
	ldr r0, [r7, #4]
	ldr r3, [sp, #0x18]
	movs r1, #0
	movs r2, #0x10
	bl FUN_0222AE60
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	adds r1, #0xb4
	str r0, [r1]
	ldr r0, [sp, #0x14]
	movs r1, #1
	adds r0, #0xb4
	ldr r0, [r0]
	movs r2, #2
	bl FUN_0222B02C
	ldr r0, [sp, #0x14]
	adds r0, #0xb8
	bl FUN_0201A7A0
	movs r0, #0x15
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #0x70
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r7]
	adds r1, #0xb8
	movs r2, #1
	movs r3, #0xd
	bl FUN_0201A7E8
	ldr r0, [sp, #0x14]
	movs r1, #0
	adds r0, #0xb8
	bl FUN_0201ADA4
	ldr r1, [sp, #0x18]
	movs r0, #0x80
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	movs r1, #7
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	movs r3, #0x40
	bl FUN_02002EEC
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222F5EC @ =0x00010200
	adds r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	adds r0, #0xb8
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	adds r0, #0xe4
	bl FUN_0201A7A0
	movs r0, #9
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #0x88
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r7]
	adds r1, #0xe4
	movs r2, #1
	movs r3, #0x10
	bl FUN_0201A7E8
	ldr r0, [sp, #0x14]
	movs r1, #0
	adds r0, #0xe4
	bl FUN_0201ADA4
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r0, _0222F5F0 @ =0x022322E4
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x20]
_0222F530:
	ldr r1, [sp, #0x18]
	movs r0, #4
	bl FUN_02013A04
	adds r1, r6, #0
	adds r1, #0xf4
	ldr r5, [sp, #0x20]
	str r0, [r1]
	movs r4, #0
_0222F542:
	adds r0, r6, #0
	movs r1, #0x63
	adds r0, #0xf4
	lsls r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r7, r1]
	ldr r2, [r5]
	ldr r3, [r5, #4]
	bl FUN_02013A4C
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #4
	blt _0222F542
	ldr r0, [sp, #0x20]
	adds r6, r6, #4
	adds r0, #0x20
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #2
	blt _0222F530
	ldr r0, [sp, #0x14]
	adds r0, #0xc8
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	adds r0, #0xf9
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r7]
	adds r1, #0xc8
	movs r2, #1
	movs r3, #2
	bl FUN_0201A7E8
	ldr r0, [sp, #0x14]
	movs r1, #0xf
	adds r0, #0xc8
	bl FUN_0201ADA4
	ldr r1, [sp, #0x18]
	movs r0, #0x80
	bl FUN_02023790
	ldr r1, [sp, #0x14]
	adds r1, #0xd8
	str r0, [r1]
	ldr r0, [r7, #4]
	str r0, [sp, #0x28]
	movs r0, #0x1b
	lsls r0, r0, #4
	adds r0, r7, r0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x54]
	add r0, sp, #0x28
	bl FUN_02021AA0
	movs r2, #0x42
	ldr r1, [sp, #0x14]
	lsls r2, r2, #2
	str r0, [r1, r2]
	adds r0, r1, #0
	ldr r0, [r0, r2]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F5E0: .4byte 0x022322B4
_0222F5E4: .4byte 0x022321BC
_0222F5E8: .4byte 0x0223221C
_0222F5EC: .4byte 0x00010200
_0222F5F0: .4byte 0x022322E4
	thumb_func_end ov64_0222F414

	thumb_func_start ov64_0222F5F4
ov64_0222F5F4: @ 0x0222F5F4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x42
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r7, r2, #0
	bl FUN_02021BD4
	adds r0, r5, #0
	adds r0, #0xc8
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r0, #0xd8
	ldr r0, [r0]
	bl FUN_020237BC
	movs r6, #0
	adds r4, r5, #0
_0222F61A:
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl FUN_02013A3C
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #2
	blt _0222F61A
	adds r0, r5, #0
	adds r0, #0xe4
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r0, #0xb8
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_0222B078
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_0222AF14
	movs r4, #0
	adds r5, #8
_0222F654:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov64_022300D8
	adds r4, r4, #1
	adds r5, #0x38
	cmp r4, #3
	blt _0222F654
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_0222F5F4

	thumb_func_start ov64_0222F668
ov64_0222F668: @ 0x0222F668
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r2, #0
	adds r5, r0, #0
	adds r7, r1, #0
	adds r0, r4, #0
	movs r1, #5
	adds r6, r3, #0
	bl ov64_0222E738
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xa
	str r1, [sp]
	movs r1, #4
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #6
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldrh r2, [r0]
	movs r3, #0x14
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r2, #0xb
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl FUN_020198E8
	adds r0, r5, #0
	adds r0, #0xb8
	bl FUN_0201A9A4
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0201C3C0
	adds r0, r4, #0
	movs r1, #1
	bl ov64_0222EA28
	movs r0, #4
	ldrsh r0, [r5, r0]
	movs r3, #0
	adds r1, r7, #0
	str r0, [sp]
	str r3, [sp, #4]
	str r6, [sp, #8]
	ldrsh r3, [r5, r3]
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov64_0222FC80
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_0222F668

	thumb_func_start ov64_0222F6E8
ov64_0222F6E8: @ 0x0222F6E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov64_0222E7C8
	adds r0, r5, #0
	adds r0, #0xb8
	bl FUN_0201AD10
	movs r7, #0x7b
	movs r6, #0
	adds r5, #8
	lsls r7, r7, #2
_0222F706:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, r7
	bl ov64_02230240
	adds r6, r6, #1
	adds r5, #0x38
	cmp r6, #3
	blt _0222F706
	adds r0, r4, #0
	movs r1, #0
	bl ov64_0222EA28
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xa
	str r1, [sp]
	movs r1, #4
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r2, #8
	str r2, [sp, #0x10]
	ldrh r2, [r0]
	movs r3, #0x14
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r2, #0xb
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl FUN_020198E8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #9
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0x10
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldrh r2, [r0]
	adds r3, r1, #0
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r2, #0x16
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov64_0222F6E8

	thumb_func_start ov64_0222F798
ov64_0222F798: @ 0x0222F798
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0222F8EC @ =0x021BF67C
	adds r6, r2, #0
	ldr r2, [r0, #0x48]
	movs r3, #1
	tst r3, r2
	beq _0222F7DA
	movs r0, #4
	ldrsh r3, [r5, r0]
	cmp r3, #8
	bne _0222F7BE
	ldr r0, _0222F8F0 @ =0x000005DD
	bl FUN_02005748
	add sp, #8
	movs r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0222F7BE:
	movs r0, #0
	ldr r2, [r1, #8]
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	adds r1, r3, r1
	cmp r2, r1
	bhi _0222F7CE
	b _0222F8E8
_0222F7CE:
	ldr r0, _0222F8F0 @ =0x000005DD
	bl FUN_02005748
	add sp, #8
	movs r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0222F7DA:
	movs r3, #2
	adds r1, r2, #0
	tst r1, r3
	beq _0222F7EE
	ldr r0, _0222F8F0 @ =0x000005DD
	bl FUN_02005748
	add sp, #8
	movs r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0222F7EE:
	movs r1, #4
	ldrsh r1, [r5, r1]
	movs r4, #0
	str r4, [sp]
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	ldr r0, [r0, #0x4c]
	movs r2, #0x40
	tst r2, r0
	beq _0222F834
	cmp r1, #8
	bne _0222F81A
	movs r0, #6
	ldrsh r0, [r5, r0]
	movs r4, #1
	adds r1, r4, #0
	strh r0, [r5, #4]
	adds r0, r6, #0
	bl ov64_0222EA28
	b _0222F8B4
_0222F81A:
	cmp r1, #4
	bge _0222F82A
	cmp r1, #0
	ble _0222F8B4
	subs r0, r1, #1
	strh r0, [r5, #4]
	movs r4, #1
	b _0222F8B4
_0222F82A:
	ble _0222F8B4
	subs r0, r1, #1
	strh r0, [r5, #4]
	movs r4, #1
	b _0222F8B4
_0222F834:
	movs r2, #0x80
	tst r2, r0
	beq _0222F86E
	cmp r1, #3
	beq _0222F842
	cmp r1, #7
	bne _0222F852
_0222F842:
	movs r0, #8
	strh r0, [r5, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r4, #1
	bl ov64_0222EA28
	b _0222F8B4
_0222F852:
	cmp r1, #4
	bge _0222F862
	cmp r1, #3
	bge _0222F8B4
	adds r0, r1, #1
	strh r0, [r5, #4]
	movs r4, #1
	b _0222F8B4
_0222F862:
	cmp r1, #7
	bge _0222F8B4
	adds r0, r1, #1
	strh r0, [r5, #4]
	movs r4, #1
	b _0222F8B4
_0222F86E:
	movs r2, #0x20
	tst r2, r0
	beq _0222F892
	cmp r1, #8
	beq _0222F8B4
	cmp r1, #4
	bge _0222F88A
	adds r0, r1, #4
	movs r4, #1
	strh r0, [r5, #4]
	adds r0, r4, #0
	str r0, [sp]
	adds r7, r3, #0
	b _0222F8B4
_0222F88A:
	subs r0, r1, #4
	strh r0, [r5, #4]
	movs r4, #1
	b _0222F8B4
_0222F892:
	movs r2, #0x10
	tst r0, r2
	beq _0222F8B4
	cmp r1, #8
	beq _0222F8B4
	cmp r1, #4
	bge _0222F8A8
	adds r0, r1, #4
	strh r0, [r5, #4]
	movs r4, #1
	b _0222F8B4
_0222F8A8:
	subs r0, r1, #4
	movs r4, #1
	strh r0, [r5, #4]
	adds r0, r4, #0
	str r0, [sp]
	movs r7, #3
_0222F8B4:
	ldr r0, [sp]
	cmp r0, #1
	bne _0222F8CA
	cmp r7, #2
	bne _0222F8C4
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F8C4:
	add sp, #8
	movs r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0222F8CA:
	cmp r4, #1
	bne _0222F8E6
	ldr r0, _0222F8F4 @ =0x000005E5
	bl FUN_02005748
	movs r2, #4
	adds r0, r5, #0
	ldrsh r2, [r5, r2]
	adds r0, #8
	adds r1, r6, #0
	bl ov64_02230130
	ldr r0, [sp, #4]
	strh r0, [r5, #6]
_0222F8E6:
	movs r0, #0
_0222F8E8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222F8EC: .4byte 0x021BF67C
_0222F8F0: .4byte 0x000005DD
_0222F8F4: .4byte 0x000005E5
	thumb_func_end ov64_0222F798

	thumb_func_start ov64_0222F8F8
ov64_0222F8F8: @ 0x0222F8F8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0xb2
	ldrh r0, [r0]
	adds r4, r2, #0
	cmp r0, #2
	bne _0222F90C
	movs r2, #2
	b _0222F90E
_0222F90C:
	movs r2, #1
_0222F90E:
	movs r0, #4
	ldrsh r0, [r5, r0]
	str r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	ldrsh r3, [r5, r3]
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov64_0222FC80
	adds r5, #8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xa
	bl ov64_02230130
	adds r0, r4, #0
	movs r1, #0
	bl ov64_0222EA48
	ldr r0, _0222F944 @ =0x000005E1
	bl FUN_02005748
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0222F944: .4byte 0x000005E1
	thumb_func_end ov64_0222F8F8

	thumb_func_start ov64_0222F948
ov64_0222F948: @ 0x0222F948
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	movs r0, #0xb0
	ldrsh r0, [r5, r0]
	str r1, [sp, #0xc]
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r0, #0xc
	blt _0222F9D8
	movs r2, #0
	ldr r0, [r4]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_0201C63C
	movs r2, #0
	ldr r0, [r4]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_0201C63C
	ldr r3, _0222FA68 @ =0x02232460
	add r2, sp, #0x10
	adds r7, r2, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	adds r0, r4, #0
	adds r0, #8
	adds r1, r7, #0
	bl FUN_020230E0
	adds r0, r5, #0
	adds r0, #0xb2
	ldrh r0, [r0]
	cmp r0, #2
	bne _0222F99A
	movs r2, #2
	b _0222F99C
_0222F99A:
	movs r2, #1
_0222F99C:
	movs r0, #0x38
	adds r1, r5, #0
	muls r0, r2, r0
	movs r2, #0x7b
	adds r1, #8
	lsls r2, r2, #2
	adds r0, r1, r0
	adds r1, r4, #0
	adds r2, r4, r2
	bl ov64_02230240
	movs r0, #4
	ldrsh r0, [r5, r0]
	movs r3, #0
	ldr r1, [sp, #0xc]
	str r0, [sp]
	str r3, [sp, #4]
	str r6, [sp, #8]
	ldrsh r3, [r5, r3]
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov64_0222FC80
	adds r0, r4, #0
	movs r1, #1
	bl ov64_0222EA48
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F9D8:
	lsls r0, r0, #8
	movs r1, #0xc
	blx FUN_020E1F6C
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0xb2
	ldrh r0, [r0]
	cmp r0, #2
	bne _0222F9EE
	rsbs r6, r6, #0
_0222F9EE:
	ldr r0, [r4]
	movs r1, #2
	movs r2, #0
	adds r3, r6, #0
	bl FUN_0201C63C
	ldr r0, [r4]
	movs r1, #3
	movs r2, #0
	adds r3, r6, #0
	bl FUN_0201C63C
	ldr r3, _0222FA68 @ =0x02232460
	add r2, sp, #0x10
	adds r7, r2, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r1, [sp, #0x10]
	lsls r0, r6, #0xc
	adds r0, r1, r0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #8
	adds r1, r7, #0
	bl FUN_020230E0
	movs r0, #0xb0
	ldrsh r6, [r5, r0]
	movs r1, #3
	adds r0, r6, #0
	blx FUN_020E1F6C
	cmp r1, #0
	beq _0222FA56
	adds r0, r6, #0
	movs r1, #3
	blx FUN_020E1F6C
	lsls r1, r0, #2
	ldr r0, _0222FA6C @ =0x02232440
	ldr r6, [r0, r1]
	cmp r6, #0
	beq _0222FA56
	movs r2, #0
	movs r3, #2
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	adds r0, r5, #0
	adds r1, r4, #0
	blx r6
_0222FA56:
	movs r0, #0xb0
	ldrsh r0, [r5, r0]
	adds r5, #0xb0
	adds r0, r0, #1
	strh r0, [r5]
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222FA68: .4byte 0x02232460
_0222FA6C: .4byte 0x02232440
	thumb_func_end ov64_0222F948

	thumb_func_start ov64_0222FA70
ov64_0222FA70: @ 0x0222FA70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	str r2, [sp]
	adds r6, r3, #0
	bl FUN_0202B370
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov64_0222FF38
	str r0, [sp, #8]
	adds r7, r5, #0
	ldr r1, [sp, #8]
	adds r7, #0xc
	ldrb r1, [r7, r1]
	ldr r0, [sp, #4]
	movs r2, #8
	bl FUN_0202AD2C
	ldr r3, _0222FB20 @ =0x0223226C
	mov ip, r0
	add r2, sp, #0xc
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	mov r0, ip
	cmp r0, #2
	bne _0222FAC2
	adds r0, r4, #0
	adds r0, #0xf8
	ldr r0, [r0]
	str r0, [sp, #0xc]
	b _0222FACA
_0222FAC2:
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	str r0, [sp, #0xc]
_0222FACA:
	adds r0, r4, #0
	adds r0, #0xe4
	movs r1, #0
	lsls r3, r6, #0x18
	str r0, [sp, #0x18]
	add r0, sp, #0xc
	adds r2, r1, #0
	lsrs r3, r3, #0x18
	bl FUN_0200112C
	adds r1, r4, #0
	adds r1, #0xfc
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0xe4
	adds r2, r1, #0
	movs r3, #9
	bl FUN_0200DC48
	adds r0, r4, #0
	adds r0, #0xe4
	bl FUN_0201A9A4
	ldr r2, [sp, #8]
	ldr r0, [sp]
	ldrb r2, [r7, r2]
	ldr r1, [r5]
	adds r3, r6, #0
	bl ov64_0222E880
	ldr r1, [sp]
	adds r0, r4, #0
	movs r2, #0xc
	adds r3, r6, #0
	bl ov64_0222FE70
	ldr r0, [sp]
	movs r1, #0
	bl ov64_0222EA28
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222FB20: .4byte 0x0223226C
	thumb_func_end ov64_0222FA70

	thumb_func_start ov64_0222FB24
ov64_0222FB24: @ 0x0222FB24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	bl ov64_0222FEFC
	cmp r0, #0
	bne _0222FB36
	movs r0, #6
	pop {r4, r5, r6, pc}
_0222FB36:
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	bl FUN_02001288
	adds r4, r0, #0
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _0222FB54
	adds r0, r0, #1
	cmp r4, r0
	bne _0222FB66
	movs r0, #6
	pop {r4, r5, r6, pc}
_0222FB54:
	ldr r0, _0222FBA0 @ =0x000005DC
	bl FUN_02005748
	adds r0, r6, #0
	movs r1, #1
	bl ov64_0222EA28
	movs r4, #2
	b _0222FB6C
_0222FB66:
	ldr r0, _0222FBA0 @ =0x000005DC
	bl FUN_02005748
_0222FB6C:
	adds r0, r5, #0
	bl ov64_0222FF18
	adds r0, r5, #0
	adds r0, #0xe4
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r5, #0
	adds r0, #0xe4
	bl FUN_0201AD10
	adds r5, #0xfc
	movs r1, #0
	ldr r0, [r5]
	adds r2, r1, #0
	bl FUN_02001384
	cmp r4, #2
	bne _0222FB9C
	adds r0, r6, #0
	movs r1, #1
	bl ov64_0222EA28
_0222FB9C:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222FBA0: .4byte 0x000005DC
	thumb_func_end ov64_0222FB24

	thumb_func_start ov64_0222FBA4
ov64_0222FBA4: @ 0x0222FBA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r1, #0
	str r0, [sp]
	ldr r0, [r5]
	adds r4, r2, #0
	str r3, [sp, #4]
	bl FUN_0202B370
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov64_0222FF38
	adds r6, r5, #0
	adds r7, r0, #0
	adds r6, #0xc
	ldrb r1, [r6, r7]
	ldr r0, [sp, #0x10]
	bl FUN_0202AED8
	blx FUN_020A4670
	str r1, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	movs r2, #0
	eors r0, r2
	ldr r2, [sp, #0x14]
	movs r1, #0
	eors r1, r2
	orrs r0, r1
	beq _0222FC12
	ldr r0, _0222FC18 @ =0x000005DD
	bl FUN_02005748
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	bl ov64_0222E7F8
	ldrb r2, [r6, r7]
	ldr r1, [r5]
	ldr r3, [sp, #4]
	adds r0, r4, #0
	bl ov64_0222E880
	ldr r0, [sp]
	ldr r3, [sp, #4]
	adds r1, r4, #0
	movs r2, #0x37
	bl ov64_0222FE70
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222FC12:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222FC18: .4byte 0x000005DD
	thumb_func_end ov64_0222FBA4

	thumb_func_start ov64_0222FC1C
ov64_0222FC1C: @ 0x0222FC1C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov64_0222FF38
	adds r2, r0, #0
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	ldr r1, [r5]
	adds r0, r4, #0
	adds r3, r6, #0
	bl ov64_0222E880
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0x34
	adds r3, r6, #0
	bl ov64_0222FE70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov64_0222FC1C

	thumb_func_start ov64_0222FC48
ov64_0222FC48: @ 0x0222FC48
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov64_0222FEFC
	cmp r0, #0
	bne _0222FC60
	add sp, #4
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0222FC60:
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, _0222FC7C @ =0x022321CA
	movs r2, #1
	movs r3, #9
	bl FUN_02002100
	movs r1, #1
	lsls r1, r1, #8
	str r0, [r5, r1]
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0222FC7C: .4byte 0x022321CA
	thumb_func_end ov64_0222FC48

	thumb_func_start ov64_0222FC80
ov64_0222FC80: @ 0x0222FC80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x34]
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r1, #0
	bne _0222FCA0
	ldr r1, [sp, #0x30]
	strh r7, [r5]
	strh r1, [r5, #4]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov64_0222FCF0
_0222FCA0:
	ldr r1, [sp, #0x34]
	adds r4, r5, #0
	movs r0, #0x38
	muls r0, r1, r0
	movs r2, #0x7b
	lsls r2, r2, #2
	adds r4, #8
	str r0, [sp, #0x14]
	adds r0, r4, r0
	adds r1, r6, #0
	adds r2, r6, r2
	bl ov64_022300E4
	movs r0, #0x7b
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	adds r5, #0xb4
	adds r0, #8
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r3, [r5]
	adds r0, r4, r0
	adds r2, r6, #0
	bl ov64_022301B4
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x30]
	adds r0, r4, r0
	adds r1, r6, #0
	bl ov64_02230130
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_0222FC80

	thumb_func_start ov64_0222FCF0
ov64_0222FCF0: @ 0x0222FCF0
	push {r4, r5, lr}
	sub sp, #0x1c
	movs r0, #0x7e
	adds r5, r1, #0
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #9
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0
	adds r4, r2, #0
	str r1, [sp, #0xc]
	movs r2, #4
	str r2, [sp, #0x10]
	ldrh r2, [r0]
	adds r3, r1, #0
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r2, #0x16
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #1
	str r3, [sp]
	adds r1, r0, #0
	str r3, [sp, #4]
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #3
	str r1, [sp, #0xc]
	ldr r1, _0222FD78 @ =0x02232428
	lsls r2, r4, #1
	ldrb r1, [r1, r4]
	adds r2, #0x17
	lsls r2, r2, #0x18
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsrs r2, r2, #0x18
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	ldr r0, [r5]
	movs r1, #0
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0222FD78: .4byte 0x02232428
	thumb_func_end ov64_0222FCF0

	thumb_func_start ov64_0222FD7C
ov64_0222FD7C: @ 0x0222FD7C
	push {r4, r5, lr}
	sub sp, #0x1c
	movs r0, #0x7e
	adds r4, r1, #0
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r5, #1
	str r5, [sp]
	adds r1, r0, #0
	str r5, [sp, #4]
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #4
	str r1, [sp, #0xc]
	ldr r1, _0222FDCC @ =0x02232428
	lsls r2, r3, #1
	ldrb r1, [r1, r3]
	adds r2, #0x17
	lsls r2, r2, #0x18
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsrs r2, r2, #0x18
	adds r3, r5, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_0222FDCC: .4byte 0x02232428
	thumb_func_end ov64_0222FD7C

	thumb_func_start ov64_0222FDD0
ov64_0222FDD0: @ 0x0222FDD0
	push {r4, r5, lr}
	sub sp, #0x1c
	movs r0, #0x7e
	adds r5, r1, #0
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #9
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0
	adds r4, r2, #0
	str r1, [sp, #0xc]
	movs r2, #4
	str r2, [sp, #0x10]
	ldrh r2, [r0]
	adds r3, r1, #0
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r2, #0x16
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #1
	str r3, [sp]
	adds r1, r0, #0
	str r3, [sp, #4]
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #3
	str r1, [sp, #0xc]
	ldr r1, _0222FE58 @ =0x02232428
	lsls r2, r4, #1
	ldrb r1, [r1, r4]
	adds r2, #0x17
	lsls r2, r2, #0x18
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsrs r2, r2, #0x18
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	ldr r0, [r5]
	movs r1, #0
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0222FE58: .4byte 0x02232428
	thumb_func_end ov64_0222FDD0

	thumb_func_start ov64_0222FE5C
ov64_0222FE5C: @ 0x0222FE5C
	movs r3, #3
	strb r3, [r1, #4]
	adds r1, r0, #0
	adds r1, #0xb2
	strh r2, [r1]
	movs r1, #0
	adds r0, #0xb0
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov64_0222FE5C

	thumb_func_start ov64_0222FE70
ov64_0222FE70: @ 0x0222FE70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	adds r0, #0xc8
	movs r1, #0xf
	adds r7, r2, #0
	bl FUN_0201ADA4
	movs r0, #0x80
	adds r1, r6, #0
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r0, #0x62
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xd8
	ldr r0, [r4, r0]
	ldr r1, [r1]
	adds r2, r6, #0
	bl FUN_0200C388
	movs r3, #0
	adds r0, r5, #0
	adds r2, r5, #0
	str r3, [sp]
	adds r0, #0xe0
	ldr r0, [r0]
	adds r2, #0xd8
	str r0, [sp, #4]
	ldr r0, _0222FEF8 @ =0x00010200
	movs r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r2]
	adds r0, #0xc8
	bl FUN_0201D78C
	adds r1, r5, #0
	adds r1, #0xdc
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc8
	movs r1, #1
	movs r2, #0xa
	movs r3, #8
	bl FUN_0200E060
	adds r5, #0xc8
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222FEF8: .4byte 0x00010200
	thumb_func_end ov64_0222FE70

	thumb_func_start ov64_0222FEFC
ov64_0222FEFC: @ 0x0222FEFC
	push {r3, lr}
	adds r0, #0xdc
	ldr r0, [r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0222FF12
	movs r0, #1
	pop {r3, pc}
_0222FF12:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov64_0222FEFC

	thumb_func_start ov64_0222FF18
ov64_0222FF18: @ 0x0222FF18
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc8
	movs r1, #1
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0xc8
	bl FUN_0201AD10
	adds r4, #0xb8
	adds r0, r4, #0
	bl FUN_0201A9A4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov64_0222FF18

	thumb_func_start ov64_0222FF38
ov64_0222FF38: @ 0x0222FF38
	movs r1, #0
	ldrsh r1, [r0, r1]
	lsls r2, r1, #3
	movs r1, #4
	ldrsh r0, [r0, r1]
	adds r0, r2, r0
	bx lr
	.align 2, 0
	thumb_func_end ov64_0222FF38

	thumb_func_start ov64_0222FF48
ov64_0222FF48: @ 0x0222FF48
	push {r3, lr}
	cmp r2, #0
	bne _0222FF54
	ldr r0, _0222FF58 @ =0x000005DC
	bl FUN_02005748
_0222FF54:
	pop {r3, pc}
	nop
_0222FF58: .4byte 0x000005DC
	thumb_func_end ov64_0222FF48

	thumb_func_start ov64_0222FF5C
ov64_0222FF5C: @ 0x0222FF5C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0x42
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0x42
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_02021D6C
	movs r0, #0x43
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #4
	ldrsh r2, [r4, r0]
	movs r1, #0xc
	adds r0, r2, #0
	muls r0, r1, r0
	ldr r2, _0222FFF4 @ =0x02232324
	adds r1, #0xfc
	ldrsh r2, [r2, r0]
	lsls r3, r2, #3
	ldr r2, _0222FFF8 @ =0x02232326
	str r3, [sp]
	ldrsh r0, [r2, r0]
	lsls r2, r0, #3
	adds r2, #0xfc
	lsls r0, r3, #0xc
	str r0, [sp]
	str r2, [sp, #4]
	lsls r0, r2, #0xc
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, sp, #0
	bl FUN_02021C50
	ldr r1, _0222FFFC @ =0x0400004A
	ldr r0, _02230000 @ =0xFFFFC0FF
	ldrh r2, [r1]
	ands r2, r0
	movs r0, #7
	lsls r0, r0, #8
	orrs r2, r0
	strh r2, [r1]
	ldrh r3, [r1]
	movs r2, #0x3f
	subs r0, #0xd7
	bics r3, r2
	movs r2, #0x1f
	orrs r3, r2
	movs r2, #0x20
	orrs r3, r2
	strh r3, [r1]
	lsls r4, r2, #0x15
	ldr r3, [r4]
	ldr r1, _02230004 @ =0xFFFF1FFF
	ands r3, r1
	lsls r1, r2, #0xa
	orrs r1, r3
	str r1, [r4]
	bl FUN_02005748
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0222FFF4: .4byte 0x02232324
_0222FFF8: .4byte 0x02232326
_0222FFFC: .4byte 0x0400004A
_02230000: .4byte 0xFFFFC0FF
_02230004: .4byte 0xFFFF1FFF
	thumb_func_end ov64_0222FF5C

	thumb_func_start ov64_02230008
ov64_02230008: @ 0x02230008
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x42
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021FD0
	cmp r0, #0
	bne _0223001E
	movs r0, #1
	pop {r4, pc}
_0223001E:
	movs r0, #0x42
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021E74
	movs r1, #0x43
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	subs r2, r0, r2
	cmp r2, #2
	blo _0223003C
	str r0, [r4, r1]
	ldr r0, _02230040 @ =0x00000629
	bl FUN_02005748
_0223003C:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02230040: .4byte 0x00000629
	thumb_func_end ov64_02230008

	thumb_func_start ov64_02230044
ov64_02230044: @ 0x02230044
	push {r4, lr}
	movs r2, #1
	lsls r2, r2, #0x1a
	adds r4, r0, #0
	ldr r1, [r2]
	ldr r0, _02230070 @ =0xFFFF1FFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x42
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x42
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CC8
	pop {r4, pc}
	nop
_02230070: .4byte 0xFFFF1FFF
	thumb_func_end ov64_02230044

	thumb_func_start ov64_02230074
ov64_02230074: @ 0x02230074
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	adds r6, r1, #0
	adds r7, r3, #0
	strh r0, [r5]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #8
	bl FUN_0201A7A0
	movs r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0223009E
	rsbs r1, r1, #0
_0223009E:
	movs r0, #0
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _022300A8
	rsbs r3, r3, #0
_022300A8:
	adds r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #0x11
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	adds r3, r3, #4
	str r0, [sp, #0x10]
	adds r5, #8
	lsls r3, r3, #0x18
	ldr r0, [r6]
	adds r1, r5, #0
	movs r2, #3
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov64_02230074

	thumb_func_start ov64_022300D8
ov64_022300D8: @ 0x022300D8
	ldr r3, _022300E0 @ =FUN_0201A8FC
	adds r0, #8
	bx r3
	nop
_022300E0: .4byte FUN_0201A8FC
	thumb_func_end ov64_022300D8

	thumb_func_start ov64_022300E4
ov64_022300E4: @ 0x022300E4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	movs r1, #2
	ldrsh r5, [r0, r1]
	cmp r5, #0
	bge _022300F4
	rsbs r5, r5, #0
_022300F4:
	movs r1, #0
	ldrsh r3, [r0, r1]
	cmp r3, #0
	bge _022300FE
	rsbs r3, r3, #0
_022300FE:
	lsls r0, r5, #0x18
	ldr r2, [r2, #8]
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r2]
	lsls r3, r3, #0x18
	movs r1, #2
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl FUN_020198C0
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov64_022300E4

	thumb_func_start ov64_02230130
ov64_02230130: @ 0x02230130
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r5, _022301B0 @ =0x02232324
	adds r7, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r4, #0
_0223013E:
	ldr r0, [sp, #0x10]
	cmp r0, r4
	bne _02230148
	movs r0, #6
	b _0223014A
_02230148:
	movs r0, #0
_0223014A:
	movs r1, #2
	ldrsh r3, [r7, r1]
	cmp r3, #0
	bge _02230154
	rsbs r3, r3, #0
_02230154:
	movs r1, #0
	ldrsh r2, [r7, r1]
	cmp r2, #0
	bge _0223015E
	rsbs r2, r2, #0
_0223015E:
	ldrb r1, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r1, [sp]
	ldrb r1, [r5, #5]
	movs r6, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldrsh r6, [r5, r6]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #8]
	adds r2, r6, r2
	movs r6, #2
	ldrsh r6, [r5, r6]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	adds r3, r6, r3
	lsls r3, r3, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #9
	blt _0223013E
	ldr r0, [sp, #0xc]
	movs r1, #2
	ldr r0, [r0]
	bl FUN_0201C3C0
	ldr r0, [sp, #0xc]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022301B0: .4byte 0x02232324
	thumb_func_end ov64_02230130

	thumb_func_start ov64_022301B4
ov64_022301B4: @ 0x022301B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	ldr r0, [sp, #0x30]
	adds r7, r2, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r3, [sp, #0x10]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x3c]
	ldr r0, [r1]
	bl FUN_0202B370
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r0, #8
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov64_022302CC
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r4, #0
	adds r5, r1, r0
_022301F0:
	ldr r0, [sp, #0x34]
	ldr r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r4
	cmp r1, r0
	bls _02230218
	ldr r0, [sp, #0x14]
	str r4, [sp]
	str r0, [sp, #4]
	ldrb r0, [r5, #4]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	adds r2, r7, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	bl ov64_022302EC
	b _02230224
_02230218:
	ldr r2, [sp, #0x30]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl ov64_022303CC
_02230224:
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #8
	blt _022301F0
	ldr r0, [r7]
	movs r1, #2
	bl FUN_0201C3C0
	adds r6, #8
	adds r0, r6, #0
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov64_022301B4

	thumb_func_start ov64_02230240
ov64_02230240: @ 0x02230240
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov64_022302CC
	adds r0, r5, #0
	adds r0, #8
	bl FUN_0201AD10
	movs r0, #2
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _0223025E
	rsbs r1, r1, #0
_0223025E:
	movs r0, #0
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _02230268
	rsbs r3, r3, #0
_02230268:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #4]
	lsls r3, r3, #0x18
	movs r2, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #5]
	movs r1, #2
	lsrs r3, r3, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4]
	bl FUN_02019CB8
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
	movs r0, #2
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _02230298
	rsbs r1, r1, #0
_02230298:
	movs r0, #0
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _022302A2
	rsbs r3, r3, #0
_022302A2:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #4]
	lsls r3, r3, #0x18
	movs r2, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #5]
	movs r1, #3
	lsrs r3, r3, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4]
	bl FUN_02019CB8
	ldr r0, [r4]
	movs r1, #3
	bl FUN_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov64_02230240

	thumb_func_start ov64_022302CC
ov64_022302CC: @ 0x022302CC
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_022302D4:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _022302E0
	bl FUN_0222B210
	str r6, [r5, #0x18]
_022302E0:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _022302D4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov64_022302CC

	thumb_func_start ov64_022302EC
ov64_022302EC: @ 0x022302EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r0, [sp, #0x48]
	adds r6, r2, #0
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	movs r2, #7
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x40]
	bl FUN_0202AD2C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	movs r2, #8
	bl FUN_0202AD2C
	adds r7, r0, #0
	cmp r7, #2
	bne _02230328
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r3, r4, #0
	bl ov64_022303CC
	b _0223036C
_02230328:
	movs r0, #0xc
	adds r6, r4, #0
	muls r6, r0, r6
	ldr r2, _022303C0 @ =0x02232324
	movs r1, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r2, r6]
	adds r0, #0xfa
	adds r1, r1, r2
	lsls r2, r1, #3
	adds r2, #8
	add r1, sp, #0x20
	strh r2, [r1]
	movs r2, #2
	ldrsh r3, [r5, r2]
	ldr r2, _022303C4 @ =0x02232326
	ldrsh r2, [r2, r6]
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r2, r0
	strh r0, [r1, #2]
	movs r0, #8
	strh r0, [r1, #4]
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x4c]
	add r1, sp, #0x20
	bl FUN_0222B0C0
	lsls r1, r4, #2
	adds r1, r5, r1
	str r0, [r1, #0x18]
_0223036C:
	ldr r1, [sp, #0x4c]
	movs r0, #0x80
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	bl FUN_0202AEF0
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_02023D28
	adds r3, r4, #0
	movs r0, #0xc
	muls r3, r0, r3
	ldr r0, _022303C4 @ =0x02232326
	ldr r4, _022303C0 @ =0x02232324
	ldrsh r0, [r0, r3]
	ldrsh r3, [r4, r3]
	lsls r1, r7, #2
	lsls r0, r0, #3
	subs r0, #0x18
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022303C8 @ =0x022321E0
	adds r5, #8
	ldr r0, [r0, r1]
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	lsls r3, r3, #3
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022303C0: .4byte 0x02232324
_022303C4: .4byte 0x02232326
_022303C8: .4byte 0x022321E0
	thumb_func_end ov64_022302EC

	thumb_func_start ov64_022303CC
ov64_022303CC: @ 0x022303CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	adds r1, r3, #0
	movs r3, #2
	ldrsh r5, [r0, r3]
	cmp r5, #0
	bge _022303DE
	rsbs r5, r5, #0
_022303DE:
	movs r3, #0
	ldrsh r6, [r0, r3]
	cmp r6, #0
	bge _022303E8
	rsbs r6, r6, #0
_022303E8:
	ldr r0, [r2, #0xc]
	adds r3, r1, #0
	movs r1, #3
	str r1, [sp]
	movs r1, #4
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0xc
	str r1, [sp, #0xc]
	muls r3, r2, r3
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	ldr r2, _0223043C @ =0x02232324
	ldrsh r2, [r2, r3]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	adds r2, r2, r6
	ldr r6, _02230440 @ =0x02232326
	ldrh r0, [r0, #2]
	ldrsh r3, [r6, r3]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	adds r3, r3, r5
	str r0, [sp, #0x18]
	lsls r3, r3, #0x18
	ldr r0, [r4]
	movs r1, #2
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223043C: .4byte 0x02232324
_02230440: .4byte 0x02232326
	thumb_func_end ov64_022303CC

	thumb_func_start ov64_02230444
ov64_02230444: @ 0x02230444
	push {r3, lr}
	bl ov64_022305D4
	pop {r3, pc}
	thumb_func_end ov64_02230444

	thumb_func_start ov64_0223044C
ov64_0223044C: @ 0x0223044C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r2, #0
	adds r7, r1, #0
	ldrb r1, [r5, #4]
	adds r4, r0, #0
	ldr r6, [sp, #0x30]
	cmp r1, #6
	bls _02230460
	b _022305BE
_02230460:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223046C: @ jump table
	.2byte _0223047A - _0223046C - 2 @ case 0
	.2byte _022304C2 - _0223046C - 2 @ case 1
	.2byte _022304FC - _0223046C - 2 @ case 2
	.2byte _0223052A - _0223046C - 2 @ case 3
	.2byte _02230544 - _0223046C - 2 @ case 4
	.2byte _02230566 - _0223046C - 2 @ case 5
	.2byte _022305AA - _0223046C - 2 @ case 6
_0223047A:
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov64_022305DC
	str r0, [r4, #4]
	movs r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5]
	bl FUN_02025E44
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0xc
	add r2, sp, #8
	bl FUN_02089400
	str r0, [r4, #8]
	adds r0, r7, #0
	bl ov64_0222DFD0
	ldr r0, _022305C4 @ =0x020F2DAC
	ldr r1, [r4, #4]
	adds r2, r6, #0
	bl FUN_020067E8
	str r0, [r4]
	movs r0, #1
	strb r0, [r5, #4]
	b _022305BE
_022304C2:
	ldr r0, [r4]
	bl FUN_02006844
	cmp r0, #0
	beq _022305BE
	ldr r0, [r4]
	bl FUN_02006814
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022304EC
	ldr r0, _022305C8 @ =0x020F2DBC
	ldr r1, [r4, #8]
	adds r2, r6, #0
	bl FUN_020067E8
	str r0, [r4]
	movs r0, #2
	strb r0, [r5, #4]
	b _022305BE
_022304EC:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov64_0222E074
	movs r0, #3
	strb r0, [r5, #4]
	b _022305BE
_022304FC:
	ldr r0, [r4]
	bl FUN_02006844
	cmp r0, #0
	beq _022305BE
	ldr r0, [r4]
	bl FUN_02006814
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r1, [r1, #0x18]
	ldr r2, [r2, #0x1c]
	adds r0, r5, #0
	bl ov64_0222E07C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #6
	bl ov64_0222E074
	movs r0, #3
	strb r0, [r5, #4]
	b _022305BE
_0223052A:
	ldr r0, [r4, #4]
	bl FUN_0208716C
	ldr r0, [r4, #8]
	bl FUN_02089438
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov64_0222DF48
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02230544:
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov64_022305DC
	str r0, [r4, #4]
	adds r0, r7, #0
	bl ov64_0222DFD0
	ldr r0, _022305C4 @ =0x020F2DAC
	ldr r1, [r4, #4]
	adds r2, r6, #0
	bl FUN_020067E8
	str r0, [r4]
	movs r0, #5
	strb r0, [r5, #4]
	b _022305BE
_02230566:
	ldr r0, [r4]
	bl FUN_02006844
	cmp r0, #0
	beq _022305BE
	ldr r0, [r4]
	bl FUN_02006814
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223059A
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xc
	bl ov64_0222E074
	ldr r1, [r4, #4]
	adds r0, r5, #0
	ldr r1, [r1, #0x18]
	movs r2, #0
	bl ov64_0222E07C
	movs r0, #6
	strb r0, [r5, #4]
	b _022305BE
_0223059A:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xd
	bl ov64_0222E074
	movs r0, #6
	strb r0, [r5, #4]
	b _022305BE
_022305AA:
	ldr r0, [r4, #4]
	bl FUN_0208716C
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov64_0222DF48
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022305BE:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022305C4: .4byte 0x020F2DAC
_022305C8: .4byte 0x020F2DBC
	thumb_func_end ov64_0223044C

	thumb_func_start ov64_022305CC
ov64_022305CC: @ 0x022305CC
	ldr r3, _022305D0 @ =ov64_022305D8
	bx r3
	.align 2, 0
_022305D0: .4byte ov64_022305D8
	thumb_func_end ov64_022305CC

	thumb_func_start ov64_022305D4
ov64_022305D4: @ 0x022305D4
	bx lr
	.align 2, 0
	thumb_func_end ov64_022305D4

	thumb_func_start ov64_022305D8
ov64_022305D8: @ 0x022305D8
	bx lr
	.align 2, 0
	thumb_func_end ov64_022305D8

	thumb_func_start ov64_022305DC
ov64_022305DC: @ 0x022305DC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5]
	adds r4, r2, #0
	bl FUN_02025E44
	movs r1, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	adds r3, r1, #0
	bl FUN_0208712C
	adds r4, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #1
	bne _0223061C
	ldr r0, [r5, #0x34]
	ldrh r0, [r0]
	bl FUN_0201E17C
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _02230614
	ldr r1, [r5, #0x34]
	bl FUN_02023D28
	b _02230618
_02230614:
	bl FUN_020237E8
_02230618:
	movs r0, #0
	str r0, [r5, #0x38]
_0223061C:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov64_022305DC

	thumb_func_start ov64_02230620
ov64_02230620: @ 0x02230620
	push {r3, lr}
	bl ov64_02230680
	pop {r3, pc}
	thumb_func_end ov64_02230620

	thumb_func_start ov64_02230628
ov64_02230628: @ 0x02230628
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldrb r3, [r4, #4]
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r3, #0
	beq _0223063C
	cmp r3, #1
	beq _02230646
	b _0223066C
_0223063C:
	bl ov64_0223081C
	movs r0, #1
	strb r0, [r4, #4]
	b _0223066C
_02230646:
	ldr r0, _02230670 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _0223066C
	ldr r0, _02230674 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl ov64_0222E074
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov64_0223087C
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223066C:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02230670: .4byte 0x021BF67C
_02230674: .4byte 0x000005DD
	thumb_func_end ov64_02230628

	thumb_func_start ov64_02230678
ov64_02230678: @ 0x02230678
	ldr r3, _0223067C @ =ov64_02230804
	bx r3
	.align 2, 0
_0223067C: .4byte ov64_02230804
	thumb_func_end ov64_02230678

	thumb_func_start ov64_02230680
ov64_02230680: @ 0x02230680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	str r1, [sp, #0x14]
	adds r4, r2, #0
	adds r7, r3, #0
	bl FUN_0201A7A0
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, r5, #0
	movs r2, #3
	movs r3, #5
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x10
	bl FUN_0201A7A0
	movs r0, #8
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #0xb9
	str r0, [sp, #0x10]
	adds r1, r5, #0
	ldr r0, [r4]
	adds r1, #0x10
	movs r2, #3
	movs r3, #9
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x80
	adds r1, r7, #0
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #0x80
	adds r1, r7, #0
	bl FUN_02023790
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	bl FUN_0202B370
	bl FUN_0202AD28
	blx FUN_020A471C
	str r1, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	movs r2, #0
	eors r0, r2
	ldr r2, [sp, #0x24]
	movs r1, #0
	eors r1, r2
	orrs r0, r1
	beq _022307A6
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x2f
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0xb8
	subs r0, r1, r0
	movs r1, #0
	lsrs r3, r0, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02230800 @ =0x00010200
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	adds r0, r4, #0
	bl ov64_0222E7F8
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x20]
	movs r1, #0x33
	bl FUN_0200B1B8
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x20]
	adds r1, r6, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	movs r3, #0x78
	bl FUN_02002EEC
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02230800 @ =0x00010200
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x10
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	b _022307DA
_022307A6:
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x30
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0xb8
	subs r0, r1, r0
	movs r1, #0
	lsrs r3, r0, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02230800 @ =0x00010200
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
_022307DA:
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x20]
	bl FUN_020237BC
	movs r0, #0x19
	adds r3, r5, #0
	str r7, [sp]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0xb
	movs r2, #0
	adds r3, #0x24
	bl FUN_020071D0
	str r0, [r5, #0x20]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02230800: .4byte 0x00010200
	thumb_func_end ov64_02230680

	thumb_func_start ov64_02230804
ov64_02230804: @ 0x02230804
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A8FC
	ldr r0, [r4, #0x20]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov64_02230804

	thumb_func_start ov64_0223081C
ov64_0223081C: @ 0x0223081C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r1]
	adds r4, r2, #0
	bl FUN_02025E38
	adds r2, r0, #0
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200B498
	adds r0, r4, #0
	movs r1, #0x2e
	bl ov64_0222E738
	ldr r2, [r5, #0x24]
	movs r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	movs r1, #2
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl FUN_020198C0
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r5, #0x10
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov64_0223081C

	thumb_func_start ov64_0223087C
ov64_0223087C: @ 0x0223087C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov64_0222E7C8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019CB8
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
	adds r0, r5, #0
	bl FUN_0201AD10
	adds r5, #0x10
	adds r0, r5, #0
	bl FUN_0201AD10
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019CB8
	ldr r0, [r4]
	movs r1, #3
	bl FUN_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov64_0223087C

	thumb_func_start ov64_022308DC
ov64_022308DC: @ 0x022308DC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_020507E4
	movs r1, #2
	movs r2, #0x35
	bl FUN_0206AF3C
	str r0, [r5, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov64_02230B1C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov64_022308DC

	thumb_func_start ov64_02230904
ov64_02230904: @ 0x02230904
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldrb r5, [r6, #4]
	adds r4, r0, #0
	adds r7, r2, #0
	str r3, [sp]
	cmp r5, #6
	bls _02230916
	b _02230A3E
_02230916:
	adds r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_02230922: @ jump table
	.2byte _02230930 - _02230922 - 2 @ case 0
	.2byte _02230936 - _02230922 - 2 @ case 1
	.2byte _02230948 - _02230922 - 2 @ case 2
	.2byte _022309C4 - _02230922 - 2 @ case 3
	.2byte _022309DA - _02230922 - 2 @ case 4
	.2byte _022309E8 - _02230922 - 2 @ case 5
	.2byte _02230A2A - _02230922 - 2 @ case 6
_02230930:
	movs r0, #0
	strh r0, [r4, #0xe]
	strh r0, [r4]
_02230936:
	ldr r3, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov64_02230BD8
	movs r0, #2
	strb r0, [r6, #4]
	b _02230A3E
_02230948:
	ldr r2, _02230A44 @ =0x021BF67C
	movs r1, #3
	ldr r3, [r2, #0x48]
	tst r1, r3
	beq _0223095E
	ldr r0, _02230A48 @ =0x000005DD
	bl FUN_02005748
	movs r0, #6
	strb r0, [r6, #4]
	b _022309B4
_0223095E:
	ldr r3, [r2, #0x4c]
	movs r1, #0x20
	adds r5, r3, #0
	tst r5, r1
	beq _02230978
	subs r1, #0x21
	bl ov64_02232138
	movs r0, #3
	strb r0, [r6, #4]
	movs r0, #2
	str r0, [r4, #8]
	b _022309B4
_02230978:
	movs r1, #0x10
	tst r1, r3
	beq _0223098C
	movs r1, #1
	bl ov64_02232138
	movs r0, #3
	strb r0, [r6, #4]
	str r0, [r4, #8]
	b _022309B4
_0223098C:
	ldr r1, [r2, #0x44]
	movs r0, #0x40
	tst r0, r1
	beq _022309A2
	movs r0, #5
	strb r0, [r6, #4]
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #4
	strh r0, [r4, #0xc]
	b _022309B4
_022309A2:
	movs r0, #0x80
	tst r0, r1
	beq _022309B4
	movs r0, #5
	strb r0, [r6, #4]
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #4
	strh r0, [r4, #0xc]
_022309B4:
	ldr r0, _02230A44 @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #0xc0
	tst r0, r1
	bne _02230A3E
	movs r0, #0
	strh r0, [r4, #0xe]
	b _02230A3E
_022309C4:
	bl ov64_02230A58
	ldr r3, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov64_02230A9C
	movs r0, #4
	strb r0, [r6, #4]
	b _02230A3E
_022309DA:
	bl ov64_02230A9C
	cmp r0, #1
	bne _02230A3E
	movs r0, #2
	strb r0, [r6, #4]
	b _02230A3E
_022309E8:
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _022309FA
	ldrh r0, [r4, #0xc]
	subs r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _02230A3E
_022309FA:
	ldr r1, [r4, #8]
	adds r0, r6, #0
	bl ov64_02230EA8
	cmp r0, #0
	beq _02230A24
	ldr r0, _02230A4C @ =0x000005E5
	bl FUN_02005748
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov64_02230C1C
	adds r0, r6, #0
	movs r1, #4
	movs r2, #1
	bl ov64_0222E074
	movs r0, #1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02230A24:
	movs r0, #2
	strb r0, [r6, #4]
	b _02230A3E
_02230A2A:
	adds r1, r7, #0
	bl ov64_02230C1C
	adds r0, r6, #0
	movs r1, #1
	movs r2, #9
	bl ov64_0222E074
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02230A3E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230A44: .4byte 0x021BF67C
_02230A48: .4byte 0x000005DD
_02230A4C: .4byte 0x000005E5
	thumb_func_end ov64_02230904

	thumb_func_start ov64_02230A50
ov64_02230A50: @ 0x02230A50
	ldr r3, _02230A54 @ =ov64_02230BA0
	bx r3
	.align 2, 0
_02230A54: .4byte ov64_02230BA0
	thumb_func_end ov64_02230A50

	thumb_func_start ov64_02230A58
ov64_02230A58: @ 0x02230A58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	adds r5, r0, #0
	adds r4, r2, #0
	movs r1, #0
	str r1, [r5, #4]
	adds r0, r4, #0
	adds r6, r3, #0
	bl ov64_0222EA48
	ldr r0, [r5, #8]
	cmp r0, #2
	bne _02230A78
	movs r3, #2
	b _02230A7A
_02230A78:
	movs r3, #1
_02230A7A:
	movs r0, #0
	ldrsh r0, [r5, r0]
	adds r1, r7, #0
	adds r2, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	str r6, [sp, #4]
	bl ov64_02230C50
	ldr r0, _02230A98 @ =0x000005E1
	bl FUN_02005748
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230A98: .4byte 0x000005E1
	thumb_func_end ov64_02230A58

	thumb_func_start ov64_02230A9C
ov64_02230A9C: @ 0x02230A9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r7, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r0, #4
	ble _02230AE6
	movs r2, #0
	ldr r0, [r4]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_0201C63C
	movs r2, #0
	ldr r0, [r4]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_0201C63C
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r1, r7, #0
	adds r2, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	str r6, [sp, #4]
	bl ov64_02230C50
	adds r0, r4, #0
	movs r1, #1
	bl ov64_0222EA48
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02230AE6:
	lsls r1, r0, #8
	asrs r0, r1, #1
	lsrs r0, r0, #0x1e
	adds r0, r1, r0
	asrs r6, r0, #2
	ldr r0, [r5, #8]
	cmp r0, #2
	bne _02230AF8
	rsbs r6, r6, #0
_02230AF8:
	ldr r0, [r4]
	movs r1, #2
	movs r2, #0
	adds r3, r6, #0
	bl FUN_0201C63C
	ldr r0, [r4]
	movs r1, #3
	movs r2, #0
	adds r3, r6, #0
	bl FUN_0201C63C
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov64_02230A9C

	thumb_func_start ov64_02230B1C
ov64_02230B1C: @ 0x02230B1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	str r2, [sp, #8]
	adds r1, r2, #0
	adds r0, #0xe0
	adds r2, r3, #0
	str r3, [sp, #0xc]
	bl ov64_02230F24
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, _02230B90 @ =0x022321D4
	adds r7, #0x14
	str r0, [sp, #0x14]
	ldr r0, _02230B94 @ =0x0223221C
	str r0, [sp, #0x10]
_02230B3E:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r3, [r3]
	adds r0, r7, #0
	bl ov64_02230F78
	ldr r4, _02230B98 @ =0x02232470
	ldr r5, _02230B9C @ =0x02232434
	movs r6, #0
_02230B56:
	ldr r0, [r4]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r2, r6, #0
	str r0, [sp, #4]
	ldrb r3, [r5]
	adds r0, r7, #0
	bl ov64_02230F9C
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #1
	cmp r6, #7
	blt _02230B56
	ldr r0, [sp, #0x14]
	adds r7, #0x44
	adds r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, r0, #6
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _02230B3E
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02230B90: .4byte 0x022321D4
_02230B94: .4byte 0x0223221C
_02230B98: .4byte 0x02232470
_02230B9C: .4byte 0x02232434
	thumb_func_end ov64_02230B1C

	thumb_func_start ov64_02230BA0
ov64_02230BA0: @ 0x02230BA0
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #0
	adds r5, r0, #0
	str r0, [sp]
	adds r5, #0x14
	adds r7, r6, #0
_02230BAC:
	adds r4, r7, #0
_02230BAE:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_02231058
	adds r4, r4, #1
	cmp r4, #7
	blt _02230BAE
	adds r0, r5, #0
	bl ov64_02230F98
	adds r6, r6, #1
	adds r5, #0x44
	cmp r6, #3
	blt _02230BAC
	ldr r0, [sp]
	adds r0, #0xe0
	str r0, [sp]
	bl ov64_02230F60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_02230BA0

	thumb_func_start ov64_02230BD8
ov64_02230BD8: @ 0x02230BD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r6, r2, #0
	movs r2, #7
	ldrsb r2, [r4, r2]
	adds r5, r0, #0
	ldr r1, [r4]
	adds r2, r4, r2
	ldrb r2, [r2, #0xc]
	adds r0, r6, #0
	adds r7, r3, #0
	bl ov64_0222E880
	adds r0, r6, #0
	movs r1, #0xd
	bl ov64_0222E738
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r1, r4, #0
	adds r2, r6, #0
	str r0, [sp]
	adds r0, r5, #0
	str r7, [sp, #4]
	bl ov64_02230C50
	adds r0, r6, #0
	movs r1, #1
	bl ov64_0222EA28
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_02230BD8

	thumb_func_start ov64_02230C1C
ov64_02230C1C: @ 0x02230C1C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r0, #0
	adds r0, r6, #0
	movs r1, #0
	bl ov64_0222EA28
	adds r5, r7, #0
	movs r4, #0
	adds r5, #0x14
_02230C30:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov64_02231144
	adds r4, r4, #1
	adds r5, #0x44
	cmp r4, #3
	blt _02230C30
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov64_02230D50
	adds r0, r6, #0
	bl ov64_0222E7C8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov64_02230C1C

	thumb_func_start ov64_02230C50
ov64_02230C50: @ 0x02230C50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bne _02230C6A
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	adds r1, r4, #0
	strh r2, [r5]
	bl ov64_02230C8C
_02230C6A:
	adds r0, r5, #0
	adds r0, #0xe0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	adds r5, #0x14
	str r0, [sp, #4]
	movs r0, #0x44
	muls r0, r6, r0
	ldr r3, [sp, #0x20]
	adds r0, r5, r0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov64_022310D4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_02230C50

	thumb_func_start ov64_02230C8C
ov64_02230C8C: @ 0x02230C8C
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r0, [r0, #0x10]
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r0, #1
	bne _02230CD4
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #9
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0x10
	str r1, [sp, #0xc]
	movs r1, #4
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	movs r2, #0x16
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #0
	adds r3, r1, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	b _02230D0C
_02230CD4:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #9
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0x10
	str r1, [sp, #0xc]
	movs r1, #7
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	movs r2, #0x16
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #0
	adds r3, r1, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
_02230D0C:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #1
	str r3, [sp]
	adds r1, r0, #0
	str r3, [sp, #4]
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #5
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldrh r2, [r0]
	adds r4, #0x17
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	ldr r0, [r5]
	movs r1, #0
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov64_02230C8C

	thumb_func_start ov64_02230D50
ov64_02230D50: @ 0x02230D50
	push {r3, r4, lr}
	sub sp, #0x1c
	movs r0, #0x7e
	adds r4, r1, #0
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #9
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0x10
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldrh r2, [r0]
	adds r3, r1, #0
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r2, #0x16
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov64_02230D50

	thumb_func_start ov64_02230D98
ov64_02230D98: @ 0x02230D98
	push {r4, r5, lr}
	sub sp, #0x1c
	movs r0, #0x7e
	adds r4, r1, #0
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r5, #1
	str r5, [sp]
	adds r1, r0, #0
	str r5, [sp, #4]
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #5
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrh r1, [r0]
	adds r3, #0x17
	lsls r2, r3, #0x18
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #0
	lsrs r2, r2, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	adds r3, r5, #0
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov64_02230D98

	thumb_func_start ov64_02230DE4
ov64_02230DE4: @ 0x02230DE4
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r0, [r0, #0x10]
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r0, #1
	bne _02230E2C
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #9
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0x10
	str r1, [sp, #0xc]
	movs r1, #4
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	movs r2, #0x16
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #0
	adds r3, r1, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	b _02230E64
_02230E2C:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #9
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0x10
	str r1, [sp, #0xc]
	movs r1, #7
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	movs r2, #0x16
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #0
	adds r3, r1, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
_02230E64:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #1
	str r3, [sp]
	adds r1, r0, #0
	str r3, [sp, #4]
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #5
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldrh r2, [r0]
	adds r4, #0x17
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	ldr r0, [r5]
	movs r1, #0
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov64_02230DE4

	thumb_func_start ov64_02230EA8
ov64_02230EA8: @ 0x02230EA8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r7, r1, #0
	bl FUN_0202B370
	adds r6, r0, #0
	movs r0, #7
	ldrsb r4, [r5, r0]
	cmp r7, #0
	bne _02230EEE
	ldr r1, [r5, #8]
	movs r7, #0
	subs r0, r1, #1
	beq _02230F1E
_02230EC6:
	subs r4, r4, #1
	bpl _02230ECC
	adds r4, r4, r1
_02230ECC:
	adds r1, r5, r4
	ldrb r1, [r1, #0xc]
	adds r0, r6, #0
	movs r2, #8
	bl FUN_0202AD2C
	cmp r0, #2
	beq _02230EE2
	strb r4, [r5, #7]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02230EE2:
	ldr r1, [r5, #8]
	adds r7, r7, #1
	subs r0, r1, #1
	cmp r7, r0
	blo _02230EC6
	b _02230F1E
_02230EEE:
	ldr r1, [r5, #8]
	movs r7, #0
	subs r0, r1, #1
	beq _02230F1E
_02230EF6:
	adds r0, r4, #1
	blx FUN_020E2178
	adds r4, r1, #0
	adds r1, r5, r4
	ldrb r1, [r1, #0xc]
	adds r0, r6, #0
	movs r2, #8
	bl FUN_0202AD2C
	cmp r0, #2
	beq _02230F14
	strb r4, [r5, #7]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02230F14:
	ldr r1, [r5, #8]
	adds r7, r7, #1
	subs r0, r1, #1
	cmp r7, r0
	blo _02230EF6
_02230F1E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_02230EA8

	thumb_func_start ov64_02230F24
ov64_02230F24: @ 0x02230F24
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r5, #0
	ldr r4, _02230F5C @ =0x0223242C
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r7, #0
	adds r6, #0x1c
_02230F36:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp]
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldrb r1, [r4]
	movs r2, #0
	adds r3, r6, #0
	bl FUN_020071D0
	adds r7, r7, #1
	stm r5!, {r0}
	adds r6, r6, #4
	adds r4, r4, #1
	cmp r7, #7
	blt _02230F36
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02230F5C: .4byte 0x0223242C
	thumb_func_end ov64_02230F24

	thumb_func_start ov64_02230F60
ov64_02230F60: @ 0x02230F60
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02230F66:
	ldr r0, [r5]
	bl FUN_020181C4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #7
	blt _02230F66
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov64_02230F60

	thumb_func_start ov64_02230F78
ov64_02230F78: @ 0x02230F78
	ldrh r1, [r2]
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
	ldrh r1, [r2, #4]
	movs r2, #0
	strh r1, [r0, #4]
	str r3, [r0, #8]
	adds r1, r2, #0
_02230F8A:
	str r1, [r0, #0xc]
	str r1, [r0, #0x28]
	adds r2, r2, #1
	adds r0, r0, #4
	cmp r2, #7
	blt _02230F8A
	bx lr
	thumb_func_end ov64_02230F78

	thumb_func_start ov64_02230F98
ov64_02230F98: @ 0x02230F98
	bx lr
	.align 2, 0
	thumb_func_end ov64_02230F98

	thumb_func_start ov64_02230F9C
ov64_02230F9C: @ 0x02230F9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x18]
	adds r1, r3, #0
	str r0, [sp, #0x14]
	lsls r1, r1, #0x18
	ldr r0, [sp, #0x44]
	lsrs r1, r1, #0x18
	str r3, [sp, #0x1c]
	lsls r4, r2, #2
	bl FUN_0201A778
	ldr r1, [sp, #0x14]
	adds r7, r1, r4
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r7, #0x28]
	adds r0, r1, #0
	ldr r0, [r0, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bls _02231052
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x40]
_02230FD6:
	ldr r0, [r7, #0xc]
	adds r0, r0, r4
	bl FUN_0201A7A0
	ldr r1, [sp, #0x14]
	movs r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _02230FEA
	rsbs r0, r0, #0
_02230FEA:
	ldr r2, [sp, #0x14]
	movs r1, #0
	ldrsh r6, [r2, r1]
	cmp r6, #0
	bge _02230FF6
	rsbs r6, r6, #0
_02230FF6:
	ldrb r1, [r5, #1]
	movs r2, #3
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	ldrb r3, [r5]
	ldr r0, [sp, #0x18]
	ldr r1, [r7, #0xc]
	adds r3, r3, r6
	lsls r3, r3, #0x18
	ldr r0, [r0]
	adds r1, r1, r4
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r0, [r7, #0xc]
	movs r1, #0
	adds r0, r0, r4
	bl FUN_0201ADA4
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	adds r4, #0x10
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #0x20]
	adds r5, r5, #4
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	adds r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x24]
	cmp r1, r0
	blo _02230FD6
_02231052:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov64_02230F9C

	thumb_func_start ov64_02231058
ov64_02231058: @ 0x02231058
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r4, r1, #2
	adds r0, r5, r4
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0223107C
	adds r6, r5, #0
	adds r6, #0x28
	ldr r1, [r6, r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201A928
	movs r1, #0
	adds r0, r5, r4
	str r1, [r0, #0xc]
	str r1, [r6, r4]
_0223107C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov64_02231058

	thumb_func_start ov64_02231080
ov64_02231080: @ 0x02231080
	push {r4, r5, r6, lr}
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [r5, #0x28]
	movs r6, #0
	cmp r0, #0
	bls _022310A2
	adds r4, r6, #0
_02231090:
	ldr r0, [r5, #0xc]
	adds r0, r0, r4
	bl FUN_0201A9A4
	ldr r0, [r5, #0x28]
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, r0
	blo _02231090
_022310A2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov64_02231080

	thumb_func_start ov64_022310A4
ov64_022310A4: @ 0x022310A4
	push {r3, r4, r5, r6, r7, lr}
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [r5, #0x28]
	movs r6, #0
	cmp r0, #0
	bls _022310D2
	adds r4, r6, #0
	adds r7, r6, #0
_022310B6:
	ldr r0, [r5, #0xc]
	adds r0, r0, r4
	bl FUN_0201AD10
	ldr r0, [r5, #0xc]
	adds r1, r7, #0
	adds r0, r0, r4
	bl FUN_0201ADA4
	ldr r0, [r5, #0x28]
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, r0
	blo _022310B6
_022310D2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov64_022310A4

	thumb_func_start ov64_022310D4
ov64_022310D4: @ 0x022310D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r2, #0
	adds r7, r1, #0
	adds r1, r4, #0
	adds r5, r0, #0
	adds r6, r3, #0
	bl ov64_02231144
	movs r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _022310F0
	rsbs r0, r0, #0
_022310F0:
	movs r1, #0
	ldrsh r3, [r5, r1]
	cmp r3, #0
	bge _022310FA
	rsbs r3, r3, #0
_022310FA:
	ldr r1, [sp, #0x20]
	lsls r6, r6, #2
	adds r1, r1, r6
	ldr r2, [r1, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r2]
	lsls r3, r3, #0x18
	movs r1, #2
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl FUN_020198C0
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0201C3C0
	adds r2, r4, #0
	ldr r4, _02231140 @ =0x0223248C
	ldr r3, [sp, #0x24]
	ldr r4, [r4, r6]
	adds r0, r5, #0
	adds r1, r7, #0
	blx r4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02231140: .4byte 0x0223248C
	thumb_func_end ov64_022310D4

	thumb_func_start ov64_02231144
ov64_02231144: @ 0x02231144
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_0223114C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov64_022310A4
	adds r4, r4, #1
	cmp r4, #7
	blt _0223114C
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov64_02232038
	pop {r4, r5, r6, pc}
	thumb_func_end ov64_02231144

	thumb_func_start ov64_02231164
ov64_02231164: @ 0x02231164
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	adds r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	str r3, [sp, #0x24]
	adds r4, r2, #0
	bl FUN_0202B370
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x24]
	movs r0, #0x80
	bl FUN_02023790
	adds r7, r0, #0
	ldr r1, [sp, #0x24]
	movs r0, #0x80
	bl FUN_02023790
	adds r6, r0, #0
	movs r1, #0
	str r4, [sp]
	movs r0, #0xe
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	adds r2, r1, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r1, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r1, [r5]
	ldr r3, [sp, #0x24]
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	adds r0, r4, #0
	bl ov64_0222E8C0
	movs r1, #0
	str r4, [sp]
	movs r0, #0x3d
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	adds r2, r1, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	bl ov64_022320B8
	movs r1, #0
	str r4, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x1c
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	adds r2, r1, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x1c]
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	movs r2, #1
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r1, [sp, #0x1c]
	bl ov64_022320B8
	movs r1, #7
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x2c]
	movs r2, #1
	adds r1, r5, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0202AD2C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x40
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	movs r1, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #1
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x11
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	movs r2, #1
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r1, [sp, #0x1c]
	bl ov64_022320B8
	movs r1, #7
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x2c]
	movs r2, #2
	adds r1, r5, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0202AD2C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x40
	str r0, [sp, #8]
	movs r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	movs r1, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #1
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x13
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	movs r2, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r1, [sp, #0x1c]
	bl ov64_022320B8
	movs r1, #7
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x2c]
	movs r2, #3
	adds r1, r5, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0202AD2C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	movs r2, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	movs r1, #0
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	ldr r1, [sp, #0x24]
	adds r0, r5, #0
	bl ov64_0223217C
	cmp r0, #0
	beq _02231390
	str r4, [sp]
	movs r0, #0x15
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	movs r2, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r1, [sp, #0x1c]
	bl ov64_022320B8
	movs r1, #7
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x2c]
	movs r2, #9
	adds r1, r5, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0202AD2C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x16
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	movs r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, _0223151C @ =0x00010200
	movs r2, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	movs r1, #0
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
_02231390:
	str r4, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	ldr r0, _02231520 @ =0x000F0200
	movs r2, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r1, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r1, [r5]
	adds r0, r4, #0
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl ov64_0222E8FC
	cmp r0, #0
	beq _022313EC
	str r4, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	ldr r0, _02231520 @ =0x000F0200
	movs r1, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #3
	adds r3, r5, #0
	bl ov64_022320B8
_022313EC:
	movs r1, #7
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x2c]
	movs r2, #8
	adds r1, r5, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0202AD2C
	movs r2, #7
	ldrsb r1, [r5, r2]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	adds r1, r5, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0202AD2C
	adds r1, r0, #0
	ldr r0, [sp, #0x30]
	movs r2, #1
	bl FUN_0205CA14
	movs r1, #2
	add r2, sp, #0x38
	bl FUN_02076AAC
	movs r1, #0x32
	ldr r0, [sp, #0x24]
	lsls r1, r1, #6
	bl FUN_02018144
	movs r3, #0
	str r0, [sp, #0x34]
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x24]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x4c]
	bl FUN_020133D4
	movs r1, #0x50
	str r1, [sp]
	movs r2, #0
	str r1, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x34]
	ldr r0, [r0, #0xc]
	adds r3, r2, #0
	adds r0, #0x40
	bl FUN_0201ADDC
	ldr r0, [sp, #0x34]
	bl FUN_020181C4
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	movs r3, #5
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x40]
	movs r2, #0
	lsls r3, r3, #6
	bl FUN_02006E84
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _0223148A
	ldr r0, _02231524 @ =0x00050600
	str r0, [sp, #0x28]
	b _0223149A
_0223148A:
	cmp r0, #1
	bne _02231496
	movs r0, #0xc1
	lsls r0, r0, #0xa
	str r0, [sp, #0x28]
	b _0223149A
_02231496:
	ldr r0, _0223151C @ =0x00010200
	str r0, [sp, #0x28]
_0223149A:
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r1, [r5]
	ldr r3, [sp, #0x24]
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	adds r0, r4, #0
	bl ov64_0222E880
	str r4, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x58
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	movs r1, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #4
	adds r3, r5, #0
	bl ov64_022320B8
	ldr r0, [sp, #0x20]
	movs r1, #0
	bl ov64_02231080
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0xc]
	adds r0, #0x40
	bl FUN_0201C29C
	adds r5, r0, #0
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0xc]
	adds r0, #0x40
	bl FUN_0201C2A0
	adds r3, r0, #0
	movs r0, #0xb
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	lsls r2, r5, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r4]
	movs r1, #3
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223151C: .4byte 0x00010200
_02231520: .4byte 0x000F0200
_02231524: .4byte 0x00050600
	thumb_func_end ov64_02231164

	thumb_func_start ov64_02231528
ov64_02231528: @ 0x02231528
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	adds r6, r3, #0
	adds r4, r2, #0
	bl FUN_0203068C
	str r0, [sp, #0x24]
	movs r0, #0x80
	adds r1, r6, #0
	bl FUN_02023790
	adds r7, r0, #0
	movs r0, #0x80
	adds r1, r6, #0
	bl FUN_02023790
	adds r6, r0, #0
	str r4, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r0, _02231660 @ =0x00010200
	movs r1, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x64
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	cmp r0, #0
	bne _0223158A
	movs r0, #0x1e
	b _0223158C
_0223158A:
	movs r0, #0x1f
_0223158C:
	str r4, [sp]
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, _02231660 @ =0x00010200
	movs r1, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x71
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x26
	str r0, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	movs r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, _02231660 @ =0x00010200
	movs r1, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x1c]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x38
	str r0, [sp, #0xc]
	ldr r0, _02231660 @ =0x00010200
	movs r1, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x70
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x26
	str r0, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	movs r0, #0x38
	str r0, [sp, #0xc]
	ldr r0, _02231660 @ =0x00010200
	movs r1, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	str r1, [sp, #0x1c]
	bl ov64_022320B8
	ldr r0, [sp, #0x20]
	movs r1, #2
	bl ov64_02231080
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231660: .4byte 0x00010200
	thumb_func_end ov64_02231528

	thumb_func_start ov64_02231664
ov64_02231664: @ 0x02231664
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	adds r6, r3, #0
	adds r4, r2, #0
	bl FUN_0203068C
	str r0, [sp, #0x24]
	movs r0, #0x80
	adds r1, r6, #0
	bl FUN_02023790
	adds r7, r0, #0
	movs r0, #0x80
	adds r1, r6, #0
	bl FUN_02023790
	adds r6, r0, #0
	str r4, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, _022319FC @ =0x00010200
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x1c]
	movs r1, #3
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x21
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	ldr r0, _022319FC @ =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x23
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #1
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x66
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	cmp r0, #0
	bne _0223170C
	movs r0, #0x1e
	b _0223170E
_0223170C:
	movs r0, #0x1f
_0223170E:
	str r4, [sp]
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	ldr r0, _022319FC @ =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r1, #3
	movs r2, #2
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x73
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x26
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #2
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x75
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r2, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x1c]
	movs r1, #3
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r2, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r1, #3
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x72
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x26
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #2
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x74
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r2, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x1c]
	movs r1, #3
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x22
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	ldr r0, _022319FC @ =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	movs r1, #3
	ldr r0, [sp, #0x20]
	adds r2, r1, #0
	adds r3, r5, #0
	bl ov64_022320B8
	movs r1, #3
	str r4, [sp]
	movs r0, #0x23
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	adds r2, r1, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x68
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	cmp r0, #0
	bne _022318A6
	movs r0, #0x1e
	b _022318A8
_022318A6:
	movs r0, #0x1f
_022318A8:
	str r4, [sp]
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	ldr r0, _022319FC @ =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r1, #3
	movs r2, #4
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x77
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x26
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #4
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x79
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #4
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r2, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r1, #3
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x76
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x26
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #4
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x78
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022319FC @ =0x00010200
	movs r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #4
	adds r3, r5, #0
	bl ov64_022320B8
	ldr r0, [sp, #0x20]
	movs r1, #3
	bl ov64_02231080
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022319FC: .4byte 0x00010200
	thumb_func_end ov64_02231664

	thumb_func_start ov64_02231A00
ov64_02231A00: @ 0x02231A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	adds r6, r3, #0
	adds r4, r2, #0
	bl FUN_0203068C
	str r0, [sp, #0x24]
	movs r0, #0x80
	adds r1, r6, #0
	bl FUN_02023790
	adds r7, r0, #0
	movs r0, #0x80
	adds r1, r6, #0
	bl FUN_02023790
	adds r6, r0, #0
	str r4, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, _02231BDC @ =0x00010200
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x1c]
	movs r1, #4
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x24
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, _02231BDC @ =0x00010200
	movs r1, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x6c
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	cmp r0, #0
	bne _02231A86
	movs r0, #0x1e
	b _02231A88
_02231A86:
	movs r0, #0x1f
_02231A88:
	str r4, [sp]
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _02231BDC @ =0x00010200
	movs r1, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x87
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x29
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _02231BDC @ =0x00010200
	movs r1, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x88
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x28
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _02231BDC @ =0x00010200
	movs r1, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _02231BDC @ =0x00010200
	movs r1, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x86
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x29
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _02231BDC @ =0x00010200
	movs r1, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x8a
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x28
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	movs r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _02231BDC @ =0x00010200
	movs r1, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	ldr r0, [sp, #0x20]
	movs r1, #4
	bl ov64_02231080
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231BDC: .4byte 0x00010200
	thumb_func_end ov64_02231A00

	thumb_func_start ov64_02231BE0
ov64_02231BE0: @ 0x02231BE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	str r3, [sp, #0x24]
	adds r4, r2, #0
	bl FUN_0203068C
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	movs r0, #0x80
	bl FUN_02023790
	adds r7, r0, #0
	ldr r1, [sp, #0x24]
	movs r0, #0x80
	bl FUN_02023790
	adds r6, r0, #0
	str r4, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, _02231D54 @ =0x00010200
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	movs r1, #5
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x28]
	movs r1, #0x7c
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	ldr r1, [sp, #0x24]
	bl FUN_0200B32C
	str r0, [sp, #0x2c]
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231D54 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x20]
	ldr r2, [sp, #0x2c]
	adds r3, r1, #0
	bl FUN_0201D78C
	ldr r0, [sp, #0x2c]
	bl FUN_020237BC
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x28]
	movs r1, #0x6a
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	cmp r0, #0
	bne _02231C7A
	movs r0, #0x1e
	b _02231C7C
_02231C7A:
	movs r0, #0x1f
_02231C7C:
	str r4, [sp]
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _02231D54 @ =0x00010200
	movs r1, #5
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x28]
	movs r1, #0x7b
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x26
	str r0, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _02231D54 @ =0x00010200
	movs r1, #5
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _02231D54 @ =0x00010200
	movs r1, #5
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x28]
	movs r1, #0x7a
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x26
	str r0, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	movs r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _02231D54 @ =0x00010200
	movs r1, #5
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	ldr r0, [sp, #0x20]
	movs r1, #5
	bl ov64_02231080
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231D54: .4byte 0x00010200
	thumb_func_end ov64_02231BE0

	thumb_func_start ov64_02231D58
ov64_02231D58: @ 0x02231D58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	adds r6, r3, #0
	adds r4, r2, #0
	bl FUN_0203068C
	str r0, [sp, #0x24]
	movs r0, #0x80
	adds r1, r6, #0
	bl FUN_02023790
	adds r7, r0, #0
	movs r0, #0x80
	adds r1, r6, #0
	bl FUN_02023790
	adds r6, r0, #0
	str r4, [sp]
	movs r0, #0x1d
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, _02231E90 @ =0x00010200
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	movs r1, #6
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x6e
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	cmp r0, #0
	bne _02231DB8
	movs r0, #0x1e
	b _02231DBA
_02231DB8:
	movs r0, #0x1f
_02231DBA:
	str r4, [sp]
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _02231E90 @ =0x00010200
	movs r1, #6
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x8f
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x2a
	str r0, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _02231E90 @ =0x00010200
	movs r1, #6
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _02231E90 @ =0x00010200
	movs r1, #6
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r2, #7
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x8e
	adds r2, r5, r2
	ldrb r2, [r2, #0xc]
	bl FUN_02030698
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x2a
	str r0, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _02231E90 @ =0x00010200
	movs r1, #6
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	ldr r0, [sp, #0x20]
	movs r1, #6
	bl ov64_02231080
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02231E90: .4byte 0x00010200
	thumb_func_end ov64_02231D58

	thumb_func_start ov64_02231E94
ov64_02231E94: @ 0x02231E94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	adds r4, r2, #0
	adds r7, r3, #0
	bl FUN_0203068C
	ldr r0, [r5]
	bl FUN_0202B370
	str r0, [sp, #0x24]
	movs r0, #0x80
	adds r1, r7, #0
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #0x80
	adds r1, r7, #0
	bl FUN_02023790
	adds r7, r0, #0
	str r4, [sp]
	movs r0, #0x2b
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, _02232034 @ =0x00010200
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	movs r1, #1
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	adds r0, r4, #0
	movs r1, #0
	bl ov64_0222E990
	str r4, [sp]
	movs r0, #0x2c
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _02232034 @ =0x00010200
	movs r1, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r1, #7
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x24]
	movs r2, #0xa
	adds r1, r5, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0202AD2C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x2d
	str r0, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _02232034 @ =0x00010200
	movs r1, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	adds r0, r4, #0
	movs r1, #1
	bl ov64_0222E990
	str r4, [sp]
	movs r0, #0x2c
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _02232034 @ =0x00010200
	movs r1, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r1, #7
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x24]
	movs r2, #0xb
	adds r1, r5, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0202AD2C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x2d
	str r0, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _02232034 @ =0x00010200
	movs r1, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	adds r0, r4, #0
	movs r1, #2
	bl ov64_0222E990
	str r4, [sp]
	movs r0, #0x2c
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _02232034 @ =0x00010200
	movs r1, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov64_022320B8
	movs r1, #7
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x24]
	movs r2, #0xc
	adds r1, r5, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0202AD2C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov64_0222E970
	str r4, [sp]
	movs r0, #0x2d
	str r0, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	movs r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _02232034 @ =0x00010200
	movs r1, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	movs r2, #0
	adds r3, r5, #0
	bl ov64_022320B8
	ldr r0, [sp, #0x20]
	movs r1, #1
	bl ov64_02231080
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232034: .4byte 0x00010200
	thumb_func_end ov64_02231E94

	thumb_func_start ov64_02232038
ov64_02232038: @ 0x02232038
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0223204A
	rsbs r1, r1, #0
_0223204A:
	movs r0, #0
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _02232054
	rsbs r3, r3, #0
_02232054:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	lsls r3, r3, #0x18
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5]
	movs r1, #2
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	ldr r0, [r5]
	movs r1, #2
	bl FUN_0201C3C0
	movs r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _02232084
	rsbs r1, r1, #0
_02232084:
	movs r0, #0
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _0223208E
	rsbs r3, r3, #0
_0223208E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	lsls r3, r3, #0x18
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5]
	movs r1, #3
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	ldr r0, [r5]
	movs r1, #3
	bl FUN_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov64_02232038

	thumb_func_start ov64_022320B8
ov64_022320B8: @ 0x022320B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	movs r0, #0x63
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r6, [sp, #0x30]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x48]
	ldr r5, [sp, #0x38]
	ldr r4, [sp, #0x44]
	bl FUN_0200B1B8
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x48]
	adds r1, r4, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	beq _022320F0
	cmp r0, #2
	beq _02232102
	b _0223210E
_022320F0:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r0, r0, #1
	subs r5, r5, r0
	b _0223210E
_02232102:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	subs r5, r5, r0
_0223210E:
	ldr r0, [sp, #0x3c]
	movs r1, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	adds r3, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #0x14]
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r2, r4, #0
	bl FUN_0201D78C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov64_022320B8

	thumb_func_start ov64_02232138
ov64_02232138: @ 0x02232138
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _02232146
	movs r2, #7
	b _02232148
_02232146:
	movs r2, #2
_02232148:
	cmp r1, #0
	ble _02232160
	movs r0, #0
	ldrsh r3, [r4, r0]
	strh r3, [r4, #2]
	ldrsh r0, [r4, r0]
	adds r0, r0, r1
	adds r1, r2, #0
	blx FUN_020E1F6C
	strh r1, [r4]
	pop {r4, pc}
_02232160:
	bge _02232178
	movs r0, #0
	ldrsh r3, [r4, r0]
	strh r3, [r4, #2]
	ldrsh r3, [r4, r0]
	adds r1, r3, r1
	strh r1, [r4]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _02232178
	adds r0, r0, r2
	strh r0, [r4]
_02232178:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov64_02232138

	thumb_func_start ov64_0223217C
ov64_0223217C: @ 0x0223217C
	push {r4, lr}
	ldr r0, [r0]
	adds r4, r1, #0
	bl FUN_0207D990
	ldr r1, _0223219C @ =0x000001C1
	adds r2, r4, #0
	bl FUN_0207D730
	cmp r0, #0
	beq _02232196
	movs r0, #1
	pop {r4, pc}
_02232196:
	movs r0, #0
	pop {r4, pc}
	nop
_0223219C: .4byte 0x000001C1
	thumb_func_end ov64_0223217C
	@ 0x022321A0
