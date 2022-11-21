	.include "macros/function.inc"


	.text

	thumb_func_start ov71_0223B140
ov71_0223B140: @ 0x0223B140
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
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
	ldr r0, _0223B35C @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _0223B360 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	movs r2, #0xa
	movs r0, #3
	movs r1, #0x19
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	movs r0, #0x33
	movs r1, #0x19
	bl FUN_02006C24
	str r0, [sp, #0xc]
	ldr r1, _0223B364 @ =0x00003320
	adds r0, r5, #0
	movs r2, #0x19
	bl FUN_0200681C
	ldr r2, _0223B364 @ =0x00003320
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	adds r0, r5, #0
	bl FUN_02006840
	adds r1, r4, #0
	adds r1, #0xb4
	str r0, [r1]
	movs r0, #0x19
	bl FUN_02018340
	str r0, [r4]
	adds r0, r4, #0
	bl ov71_0223B620
	bl ov71_0223B688
	ldr r0, [r4]
	bl ov71_0223B858
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	bl ov71_0223B968
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r1, #0
	movs r0, #0x38
	adds r2, r1, #0
	bl FUN_02004550
	ldr r0, _0223B368 @ =0x000032F0
	adds r0, r4, r0
	bl ov71_0223D324
	ldr r0, _0223B36C @ =0x00000695
	bl FUN_02005748
	ldr r0, _0223B370 @ =0x000030E4
	ldr r1, [sp, #0xc]
	adds r0, r4, r0
	bl ov71_0223CF0C
	movs r0, #0
	adds r1, r0, #0
	add r2, sp, #0x10
	adds r5, r0, #0
	movs r6, #1
_0223B206:
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r3, [r3]
	adds r3, r3, r1
	ldr r3, [r3, #0x48]
	lsls r3, r3, #0x1f
	asrs r3, r3, #0x1f
	beq _0223B21A
	strb r6, [r2]
	b _0223B21C
_0223B21A:
	strb r5, [r2]
_0223B21C:
	adds r0, r0, #1
	adds r1, r1, #4
	adds r2, r2, #1
	cmp r0, #8
	blt _0223B206
	ldr r0, _0223B370 @ =0x000030E4
	add r1, sp, #0x10
	adds r0, r4, r0
	bl ov71_0223D070
	ldr r0, [r4]
	adds r1, r4, #4
	bl ov71_0223C69C
	movs r5, #0
	movs r6, #1
_0223B23C:
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	asrs r0, r5
	tst r0, r6
	beq _0223B252
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov71_0223C128
_0223B252:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	blo _0223B23C
	ldr r0, [r4]
	movs r1, #3
	bl FUN_02019448
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r1, [r1]
	adds r0, r4, #4
	bl ov71_0223C6F0
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	beq _0223B28C
	ldr r2, _0223B374 @ =0x0000330C
	adds r0, r4, #0
	ldr r2, [r4, r2]
	adds r0, #0x54
	movs r1, #1
	bl ov71_0223CECC
_0223B28C:
	movs r1, #0xc3
	movs r5, #0
	lsls r1, r1, #6
	str r5, [r4, r1]
	ldr r0, _0223B378 @ =0x00003318
	subs r2, r5, #1
	strb r5, [r4, r0]
	adds r1, #0x14
	str r2, [r4, r1]
	adds r1, r0, #0
	subs r1, #0x2c
	str r5, [r4, r1]
	adds r0, r0, #5
	ldr r7, _0223B370 @ =0x000030E4
	strb r5, [r4, r0]
_0223B2AA:
	ldr r0, _0223B37C @ =0x00003310
	adds r2, r4, r5
	movs r1, #0
	strb r1, [r2, r0]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r1, #0x48
	ldr r0, [r1, r0]
	lsls r1, r0, #0x1f
	asrs r1, r1, #0x1f
	beq _0223B316
	asrs r0, r0, #1
	bl ov71_0223C40C
	adds r6, r0, #0
	cmp r6, #4
	bhi _0223B2EE
	bne _0223B2DE
	adds r0, r4, r7
	adds r1, r5, #0
	movs r2, #0
	bl ov71_0223D298
	b _0223B2EE
_0223B2DE:
	movs r2, #3
	subs r2, r2, r6
	lsls r2, r2, #0x18
	adds r0, r4, r7
	adds r1, r5, #0
	lsrs r2, r2, #0x18
	bl ov71_0223D298
_0223B2EE:
	cmp r6, #3
	bne _0223B302
	lsls r0, r5, #2
	adds r1, r4, r0
	ldr r0, _0223B380 @ =0x00003260
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_02021CAC
	b _0223B316
_0223B302:
	cmp r6, #4
	bne _0223B316
	lsls r0, r5, #2
	adds r1, r4, r0
	movs r0, #0xca
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_02021CAC
_0223B316:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	blo _0223B2AA
	bl ov71_0223C288
	ldr r0, _0223B384 @ =ov71_0223C18C
	movs r1, #0
	bl FUN_02017798
	bl FUN_020397E4
	movs r0, #1
	movs r1, #0x2a
	bl FUN_0200544C
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x19
	movs r1, #3
	str r0, [sp, #8]
	movs r0, #2
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldr r0, [sp, #0xc]
	bl FUN_02006CA8
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B35C: .4byte 0xFFFFE0FF
_0223B360: .4byte 0x04001000
_0223B364: .4byte 0x00003320
_0223B368: .4byte 0x000032F0
_0223B36C: .4byte 0x00000695
_0223B370: .4byte 0x000030E4
_0223B374: .4byte 0x0000330C
_0223B378: .4byte 0x00003318
_0223B37C: .4byte 0x00003310
_0223B380: .4byte 0x00003260
_0223B384: .4byte ov71_0223C18C
	thumb_func_end ov71_0223B140

	thumb_func_start ov71_0223B388
ov71_0223B388: @ 0x0223B388
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #4
	bhi _0223B3B8
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223B3A6: @ jump table
	.2byte _0223B3B0 - _0223B3A6 - 2 @ case 0
	.2byte _0223B3C0 - _0223B3A6 - 2 @ case 1
	.2byte _0223B4DE - _0223B3A6 - 2 @ case 2
	.2byte _0223B4EC - _0223B3A6 - 2 @ case 3
	.2byte _0223B4FA - _0223B3A6 - 2 @ case 4
_0223B3B0:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _0223B3BA
_0223B3B8:
	b _0223B580
_0223B3BA:
	movs r0, #1
	str r0, [r5]
	b _0223B580
_0223B3C0:
	bl ov71_0223BEF8
	adds r6, r0, #0
	cmp r6, #1
	bne _0223B43E
	ldr r0, _0223B594 @ =0x000030D4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223B412
	ldr r2, _0223B598 @ =0x000032EC
	movs r1, #1
	adds r0, r2, #0
	str r1, [r4, r2]
	adds r0, #0x31
	subs r2, #0x4c
	strb r1, [r4, r0]
	ldr r0, [r4, r2]
	bl FUN_02021CAC
	ldr r0, _0223B59C @ =0x000032A0
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02021CC8
	ldr r0, _0223B59C @ =0x000032A0
	movs r1, #0xa
	ldr r0, [r4, r0]
	bl FUN_02021D6C
	ldr r0, _0223B5A0 @ =0x0000331A
	movs r2, #0
	strb r2, [r4, r0]
	adds r1, r0, #2
	strb r2, [r4, r1]
	adds r0, r0, #1
	strb r2, [r4, r0]
	ldr r0, _0223B5A4 @ =0x000030D8
	str r2, [r4, r0]
	movs r0, #4
	str r0, [r5]
	b _0223B4CA
_0223B412:
	subs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r1, #0x48
	ldr r0, [r1, r0]
	lsls r1, r0, #0x1f
	asrs r1, r1, #0x1f
	beq _0223B4CA
	asrs r0, r0, #1
	bl ov71_0223C40C
	adds r2, r0, #0
	ldr r0, _0223B5A8 @ =0x000032F0
	adds r1, r5, #0
	adds r0, r4, r0
	bl ov71_0223D338
	b _0223B4CA
_0223B43E:
	cmp r6, #2
	ldr r1, _0223B598 @ =0x000032EC
	bne _0223B464
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0223B45C
	ldr r0, _0223B594 @ =0x000030D4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223B45C
	movs r0, #0
	str r0, [r4, r1]
	movs r0, #2
	adds r1, #0x31
	strb r0, [r4, r1]
_0223B45C:
	adds r0, r4, #0
	bl ov71_0223BFBC
	b _0223B4CA
_0223B464:
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0223B47E
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0223B47E
	movs r0, #0
	str r0, [r4, r1]
	movs r0, #2
	adds r1, #0x31
	strb r0, [r4, r1]
_0223B47E:
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	beq _0223B496
	movs r0, #0x33
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov71_0223C44C
_0223B496:
	cmp r6, #3
	bne _0223B4A6
	ldr r0, _0223B5A0 @ =0x0000331A
	movs r1, #0
	strb r1, [r4, r0]
	movs r0, #3
	str r0, [r5]
	b _0223B4CA
_0223B4A6:
	cmp r6, #4
	bne _0223B4CA
	ldr r0, _0223B5AC @ =0x000005DC
	bl FUN_02005748
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x19
	str r1, [sp, #8]
	movs r1, #4
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	movs r0, #2
	str r0, [r5]
_0223B4CA:
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r1, [r1]
	adds r0, r4, #0
	ldrb r1, [r1, #4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	bl ov71_0223C5A4
	b _0223B580
_0223B4DE:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B580
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0223B4EC:
	bl ov71_0223BC20
	cmp r0, #0
	beq _0223B580
	movs r0, #1
	str r0, [r5]
	b _0223B580
_0223B4FA:
	ldr r1, _0223B5B0 @ =0x0000331D
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0223B55E
	bl ov71_0223BEF8
	cmp r0, #1
	bne _0223B52C
	ldr r0, _0223B594 @ =0x000030D4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223B55E
	ldr r1, _0223B598 @ =0x000032EC
	movs r2, #1
	adds r0, r1, #0
	str r2, [r4, r1]
	adds r0, #0x31
	strb r2, [r4, r0]
	adds r0, r1, #0
	movs r2, #0
	adds r0, #0x30
	strb r2, [r4, r0]
	adds r1, #0x2f
	strb r2, [r4, r1]
	b _0223B55E
_0223B52C:
	cmp r0, #2
	bne _0223B54C
	ldr r1, _0223B598 @ =0x000032EC
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0223B55E
	ldr r0, _0223B594 @ =0x000030D4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223B55E
	movs r0, #0
	str r0, [r4, r1]
	movs r0, #2
	adds r1, #0x31
	strb r0, [r4, r1]
	b _0223B55E
_0223B54C:
	ldr r0, _0223B598 @ =0x000032EC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223B55E
	movs r1, #0
	str r1, [r4, r0]
	movs r1, #2
	adds r0, #0x31
	strb r1, [r4, r0]
_0223B55E:
	ldr r0, _0223B5A4 @ =0x000030D8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223B570
	adds r0, r4, #0
	bl ov71_0223BDF8
	ldr r1, _0223B5A4 @ =0x000030D8
	str r0, [r4, r1]
_0223B570:
	ldr r0, _0223B5A4 @ =0x000030D8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223B580
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #1
	str r0, [r5]
_0223B580:
	adds r0, r4, #0
	bl ov71_0223C2F4
	ldr r0, _0223B5B4 @ =0x000030E4
	ldr r0, [r4, r0]
	bl FUN_020219F8
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223B594: .4byte 0x000030D4
_0223B598: .4byte 0x000032EC
_0223B59C: .4byte 0x000032A0
_0223B5A0: .4byte 0x0000331A
_0223B5A4: .4byte 0x000030D8
_0223B5A8: .4byte 0x000032F0
_0223B5AC: .4byte 0x000005DC
_0223B5B0: .4byte 0x0000331D
_0223B5B4: .4byte 0x000030E4
	thumb_func_end ov71_0223B388

	thumb_func_start ov71_0223B5B8
ov71_0223B5B8: @ 0x0223B5B8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl ov71_0223C288
	adds r0, r4, #0
	bl ov71_0223B668
	ldr r0, _0223B614 @ =0x000030E4
	adds r0, r4, r0
	bl ov71_0223D238
	ldr r0, _0223B618 @ =0x000030B8
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, _0223B61C @ =0x000032F8
	ldr r0, [r4, r0]
	bl FUN_020181C4
	adds r0, r4, #4
	bl ov71_0223C6D4
	ldr r0, [r4]
	bl ov71_0223BBDC
	bl FUN_0201E530
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x19
	bl FUN_0201807C
	movs r0, #1
	movs r1, #0x7f
	bl FUN_0200544C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B614: .4byte 0x000030E4
_0223B618: .4byte 0x000030B8
_0223B61C: .4byte 0x000032F8
	thumb_func_end ov71_0223B5B8

	thumb_func_start ov71_0223B620
ov71_0223B620: @ 0x0223B620
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #4
	movs r1, #0x19
	bl FUN_02023790
	ldr r1, _0223B660 @ =0x00003308
	str r0, [r5, r1]
	movs r0, #5
	movs r1, #0x19
	bl FUN_02023790
	ldr r1, _0223B664 @ =0x0000330C
	movs r2, #0x9a
	str r0, [r5, r1]
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x19
	bl FUN_0200B144
	ldr r2, _0223B664 @ =0x0000330C
	adds r4, r0, #0
	ldr r2, [r5, r2]
	movs r1, #0xb
	bl FUN_0200B1B8
	adds r0, r4, #0
	bl FUN_0200B190
	pop {r3, r4, r5, pc}
	nop
_0223B660: .4byte 0x00003308
_0223B664: .4byte 0x0000330C
	thumb_func_end ov71_0223B620

	thumb_func_start ov71_0223B668
ov71_0223B668: @ 0x0223B668
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223B680 @ =0x00003308
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _0223B684 @ =0x0000330C
	ldr r0, [r4, r0]
	bl FUN_020237BC
	pop {r4, pc}
	nop
_0223B680: .4byte 0x00003308
_0223B684: .4byte 0x0000330C
	thumb_func_end ov71_0223B668

	thumb_func_start ov71_0223B688
ov71_0223B688: @ 0x0223B688
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223B6A4 @ =0x0223D57C
	add r3, sp, #0
	movs r2, #5
_0223B692:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223B692
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0223B6A4: .4byte 0x0223D57C
	thumb_func_end ov71_0223B688

	thumb_func_start ov71_0223B6A8
ov71_0223B6A8: @ 0x0223B6A8
	push {r3, r4, r5, lr}
	cmp r1, #0
	beq _0223B72A
	cmp r0, #5
	bhi _0223B738
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B6BE: @ jump table
	.2byte _0223B6CA - _0223B6BE - 2 @ case 0
	.2byte _0223B6DA - _0223B6BE - 2 @ case 1
	.2byte _0223B6EA - _0223B6BE - 2 @ case 2
	.2byte _0223B6FA - _0223B6BE - 2 @ case 3
	.2byte _0223B70A - _0223B6BE - 2 @ case 4
	.2byte _0223B71A - _0223B6BE - 2 @ case 5
_0223B6CA:
	adds r0, r2, #0
	movs r1, #0
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B738
_0223B6DA:
	adds r0, r2, #0
	movs r1, #1
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B738
_0223B6EA:
	adds r0, r2, #0
	movs r1, #2
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B738
_0223B6FA:
	adds r0, r2, #0
	movs r1, #3
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B738
_0223B70A:
	adds r0, r2, #0
	movs r1, #4
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B738
_0223B71A:
	adds r0, r2, #0
	movs r1, #5
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B738
_0223B72A:
	adds r0, r2, #0
	movs r1, #6
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
_0223B738:
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0x20
	ldr r5, [r0, #0xc]
	movs r2, #0x60
	adds r0, r5, #0
	adds r0, #0x20
	blx FUN_020C0108
	movs r1, #0x1e
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r2, #0x20
	blx FUN_020C0108
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov71_0223B6A8

	thumb_func_start ov71_0223B768
ov71_0223B768: @ 0x0223B768
	push {r3, r4, lr}
	sub sp, #4
	cmp r0, #0xc
	bhi _0223B7E6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B77C: @ jump table
	.2byte _0223B7E6 - _0223B77C - 2 @ case 0
	.2byte _0223B7E6 - _0223B77C - 2 @ case 1
	.2byte _0223B7E6 - _0223B77C - 2 @ case 2
	.2byte _0223B7E6 - _0223B77C - 2 @ case 3
	.2byte _0223B7E6 - _0223B77C - 2 @ case 4
	.2byte _0223B7E6 - _0223B77C - 2 @ case 5
	.2byte _0223B7E6 - _0223B77C - 2 @ case 6
	.2byte _0223B7C6 - _0223B77C - 2 @ case 7
	.2byte _0223B7D6 - _0223B77C - 2 @ case 8
	.2byte _0223B7E6 - _0223B77C - 2 @ case 9
	.2byte _0223B796 - _0223B77C - 2 @ case 10
	.2byte _0223B7A6 - _0223B77C - 2 @ case 11
	.2byte _0223B7B6 - _0223B77C - 2 @ case 12
_0223B796:
	adds r0, r1, #0
	movs r1, #7
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B7F4
_0223B7A6:
	adds r0, r1, #0
	movs r1, #8
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B7F4
_0223B7B6:
	adds r0, r1, #0
	movs r1, #0xa
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B7F4
_0223B7C6:
	adds r0, r1, #0
	movs r1, #0xb
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B7F4
_0223B7D6:
	adds r0, r1, #0
	movs r1, #0xc
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
	b _0223B7F4
_0223B7E6:
	adds r0, r1, #0
	movs r1, #9
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r4, r0, #0
_0223B7F4:
	ldr r0, [sp]
	movs r1, #0x20
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0x20
	blx FUN_020C00B4
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0x20
	blx FUN_020C0108
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov71_0223B768

	thumb_func_start ov71_0223B820
ov71_0223B820: @ 0x0223B820
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #0x30
	add r2, sp, #0
	movs r3, #0x19
	bl FUN_020071EC
	adds r6, r0, #0
	ldr r0, [sp]
	lsls r4, r4, #5
	ldr r5, [r0, #0xc]
	movs r1, #0x20
	adds r0, r5, r4
	blx FUN_020C2C54
	adds r0, r5, r4
	movs r1, #0x80
	movs r2, #0x20
	blx FUN_020C0108
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov71_0223B820

	thumb_func_start ov71_0223B858
ov71_0223B858: @ 0x0223B858
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r2, _0223B948 @ =0x04000304
	adds r4, r0, #0
	ldrh r1, [r2]
	ldr r0, _0223B94C @ =0xFFFF7FFF
	ldr r5, _0223B950 @ =0x0223D4E0
	ands r0, r1
	strh r0, [r2]
	add r3, sp, #0x8c
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0223B954 @ =0x0223D4F0
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
	movs r3, #2
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019EBC
	ldr r5, _0223B958 @ =0x0223D50C
	add r3, sp, #0x54
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #5
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019EBC
	ldr r5, _0223B95C @ =0x0223D544
	add r3, sp, #0x38
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
	movs r3, #1
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019EBC
	ldr r5, _0223B960 @ =0x0223D560
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
	ldr r5, _0223B964 @ =0x0223D528
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
	movs r3, #1
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	add sp, #0x9c
	pop {r4, r5, pc}
	.align 2, 0
_0223B948: .4byte 0x04000304
_0223B94C: .4byte 0xFFFF7FFF
_0223B950: .4byte 0x0223D4E0
_0223B954: .4byte 0x0223D4F0
_0223B958: .4byte 0x0223D50C
_0223B95C: .4byte 0x0223D544
_0223B960: .4byte 0x0223D560
_0223B964: .4byte 0x0223D528
	thumb_func_end ov71_0223B858

	thumb_func_start ov71_0223B968
ov71_0223B968: @ 0x0223B968
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	add r2, sp, #0x14
	movs r3, #0x19
	bl FUN_020071EC
	adds r6, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [sp, #0x14]
	movs r2, #2
	ldr r0, [r0, #0xc]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020C0108
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	adds r2, r4, #0
	ldrb r0, [r1, #3]
	ldrb r1, [r1, #4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	bl ov71_0223B6A8
	adds r0, r4, #0
	movs r1, #0xd
	add r2, sp, #0x10
	movs r3, #0x19
	bl FUN_020071EC
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	movs r1, #2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [sp, #0x10]
	movs r2, #2
	ldr r0, [r0, #0xc]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020C00B4
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r1, r4, #0
	ldrb r0, [r0]
	bl ov71_0223B768
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldrb r1, [r0, #5]
	cmp r1, #0xff
	bne _0223BA9A
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0223BA04
	cmp r0, #0xb
	bne _0223BA0C
_0223BA04:
	movs r1, #0x20
	movs r7, #0x2a
	movs r6, #0x1a
	b _0223BA14
_0223BA0C:
	movs r7, #0x28
	adds r6, r7, #0
	movs r1, #0x1f
	subs r6, #0x29
_0223BA14:
	movs r2, #0
	adds r0, r4, #0
	movs r3, #0x19
	str r2, [sp]
	bl FUN_0200723C
	ldr r1, _0223BBCC @ =0x000030B8
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0223BA2E
	bl FUN_02022974
_0223BA2E:
	ldr r1, _0223BBCC @ =0x000030B8
	ldr r0, [r5, r1]
	adds r1, r1, #4
	adds r1, r5, r1
	blx FUN_020A7164
	cmp r0, #0
	bne _0223BA42
	bl FUN_02022974
_0223BA42:
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _0223BA5E
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #4
	movs r3, #0x80
	bl FUN_02007130
_0223BA5E:
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldr r3, _0223BBD0 @ =0x000032FC
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bne _0223BA84
	movs r0, #0x19
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	adds r3, r5, r3
	bl FUN_020071D0
	ldr r1, _0223BBD4 @ =0x000032F8
	str r0, [r5, r1]
	b _0223BAF2
_0223BA84:
	movs r0, #0x19
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #1
	movs r2, #0
	adds r3, r5, r3
	bl FUN_020071D0
	ldr r1, _0223BBD4 @ =0x000032F8
	str r0, [r5, r1]
	b _0223BAF2
_0223BA9A:
	lsls r3, r1, #2
	ldr r1, _0223BBD8 @ =0x0223D604
	movs r2, #0
	ldr r1, [r1, r3]
	adds r0, r4, #0
	movs r3, #0x19
	str r2, [sp]
	bl FUN_0200723C
	ldr r1, _0223BBCC @ =0x000030B8
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0223BABA
	bl FUN_02022974
_0223BABA:
	ldr r1, _0223BBCC @ =0x000030B8
	ldr r0, [r5, r1]
	adds r1, r1, #4
	adds r1, r5, r1
	blx FUN_020A7164
	cmp r0, #0
	bne _0223BACE
	bl FUN_02022974
_0223BACE:
	ldr r3, _0223BBD0 @ =0x000032FC
	movs r0, #0x19
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #0
	adds r3, r5, r3
	bl FUN_020071D0
	ldr r1, _0223BBD4 @ =0x000032F8
	str r0, [r5, r1]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r1, r4, #0
	ldrb r0, [r0, #5]
	bl ov71_0223B820
_0223BAF2:
	adds r0, r5, #0
	bl ov71_0223C390
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r3, #6
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0x23
	movs r3, #6
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0x1c
	movs r3, #5
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0x25
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0x1d
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0x26
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0x1e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0x27
	movs r3, #3
	bl FUN_0200710C
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r5, #0xb8
	adds r0, #0x68
	adds r1, r5, #0
	bl ov71_0223C4DC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BBCC: .4byte 0x000030B8
_0223BBD0: .4byte 0x000032FC
_0223BBD4: .4byte 0x000032F8
_0223BBD8: .4byte 0x0223D604
	thumb_func_end ov71_0223B968

	thumb_func_start ov71_0223BBDC
ov71_0223BBDC: @ 0x0223BBDC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x13
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov71_0223BBDC

	thumb_func_start ov71_0223BC20
ov71_0223BC20: @ 0x0223BC20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r2, _0223BDDC @ =0x0000331A
	adds r4, r0, #0
	ldrb r0, [r4, r2]
	movs r5, #0
	cmp r0, #3
	bls _0223BC32
	b _0223BD92
_0223BC32:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223BC3E: @ jump table
	.2byte _0223BC46 - _0223BC3E - 2 @ case 0
	.2byte _0223BC74 - _0223BC3E - 2 @ case 1
	.2byte _0223BCB0 - _0223BC3E - 2 @ case 2
	.2byte _0223BD4C - _0223BC3E - 2 @ case 3
_0223BC46:
	movs r0, #8
	subs r2, #0x36
	str r0, [r4, r2]
	ldr r1, _0223BDE0 @ =0x000030C8
	lsls r2, r0, #9
	str r2, [r4, r1]
	adds r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	adds r0, #0x80
	str r0, [r4, r1]
	adds r0, r1, #4
	ldr r2, [r4, r0]
	adds r2, #0x80
	str r2, [r4, r0]
	ldr r0, _0223BDE4 @ =0x00000696
	bl FUN_02005748
	ldr r0, _0223BDDC @ =0x0000331A
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	b _0223BD92
_0223BC74:
	adds r0, r2, #0
	subs r0, #0x36
	ldr r3, [r4, r0]
	ldr r1, _0223BDE0 @ =0x000030C8
	movs r0, #0xc
	movs r7, #2
	subs r0, r0, r3
	adds r3, r7, #0
	ldr r6, [r4, r1]
	lsls r3, r0
	subs r0, r6, r3
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bgt _0223BC9C
	movs r0, #0x24
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	adds r0, r0, #1
	strb r0, [r4, r2]
_0223BC9C:
	ldr r0, _0223BDE8 @ =0x000032E4
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #1
	bgt _0223BD92
	movs r1, #1
	str r1, [r4, r0]
	b _0223BD92
_0223BCB0:
	movs r0, #0xc3
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _0223BD06
	movs r1, #1
	str r1, [r4, r0]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r4]
	movs r0, #0x33
	movs r1, #0x24
	movs r3, #6
	bl FUN_02006E60
	adds r0, r4, #4
	adds r1, r5, #0
	movs r2, #6
	bl ov71_0223CD44
	adds r0, r4, #0
	bl ov71_0223C3E8
	ldr r0, [r4]
	movs r1, #7
	bl FUN_02019EBC
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r1, [r1]
	adds r0, r4, #4
	bl ov71_0223CA28
	adds r2, r4, #0
	ldr r0, [r4]
	movs r1, #7
	adds r2, #0xb8
	bl ov71_0223C530
	b _0223BD42
_0223BD06:
	str r5, [r4, r0]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	movs r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r4]
	movs r0, #0x33
	movs r1, #0x23
	movs r3, #6
	bl FUN_02006E60
	adds r0, r4, #4
	movs r1, #7
	movs r2, #0xa
	bl ov71_0223CD44
	ldr r0, [r4]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	bl ov71_0223C390
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r1, [r1]
	adds r0, r4, #4
	bl ov71_0223C6F0
_0223BD42:
	ldr r0, _0223BDDC @ =0x0000331A
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	b _0223BD92
_0223BD4C:
	adds r0, r2, #0
	subs r0, #0x36
	ldr r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r2, #0
	subs r0, #0x36
	str r1, [r4, r0]
	adds r0, r2, #0
	subs r0, #0x36
	ldr r0, [r4, r0]
	cmp r0, #8
	ble _0223BD6A
	movs r0, #8
	subs r2, #0x36
	str r0, [r4, r2]
_0223BD6A:
	ldr r2, _0223BDE8 @ =0x000032E4
	ldr r3, _0223BDE0 @ =0x000030C8
	ldr r6, [r4, r2]
	movs r2, #0xc
	movs r0, #2
	subs r2, r2, r6
	adds r6, r0, #0
	ldr r1, [r4, r3]
	lsls r6, r2
	adds r1, r1, r6
	str r1, [r4, r3]
	ldr r2, [r4, r3]
	lsls r1, r0, #0xb
	cmp r2, r1
	blt _0223BD92
	str r1, [r4, r3]
	str r1, [r4, r3]
	adds r0, r3, #4
	str r1, [r4, r0]
	movs r5, #1
_0223BD92:
	ldr r0, _0223BDE0 @ =0x000030C8
	ldr r0, [r4, r0]
	blx FUN_020BCFE0
	adds r6, r0, #0
	ldr r0, _0223BDEC @ =0x000030CC
	ldr r0, [r4, r0]
	blx FUN_020BCFE0
	movs r1, #0
	str r6, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	blx FUN_020C3E14
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223BDF0 @ =0x04001020
	add r1, sp, #0x10
	movs r2, #0x80
	movs r3, #0x60
	blx FUN_020BF4AC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223BDF4 @ =0x04001030
	add r1, sp, #0x10
	movs r2, #0x80
	movs r3, #0x60
	blx FUN_020BF4AC
	adds r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BDDC: .4byte 0x0000331A
_0223BDE0: .4byte 0x000030C8
_0223BDE4: .4byte 0x00000696
_0223BDE8: .4byte 0x000032E4
_0223BDEC: .4byte 0x000030CC
_0223BDF0: .4byte 0x04001020
_0223BDF4: .4byte 0x04001030
	thumb_func_end ov71_0223BC20

	thumb_func_start ov71_0223BDF8
ov71_0223BDF8: @ 0x0223BDF8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, _0223BEE4 @ =0x0000331A
	ldrb r1, [r4, r0]
	cmp r1, #3
	bhi _0223BEAE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223BE12: @ jump table
	.2byte _0223BE1A - _0223BE12 - 2 @ case 0
	.2byte _0223BE42 - _0223BE12 - 2 @ case 1
	.2byte _0223BE70 - _0223BE12 - 2 @ case 2
	.2byte _0223BEA8 - _0223BE12 - 2 @ case 3
_0223BE1A:
	movs r2, #0
	subs r1, r0, #1
	strb r2, [r4, r1]
	subs r1, r0, #2
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0223BE34
	movs r2, #1
	ldr r1, _0223BEE8 @ =0x000030D0
	lsls r2, r2, #0xc
	str r2, [r4, r1]
	movs r1, #1
	b _0223BE36
_0223BE34:
	movs r1, #2
_0223BE36:
	strb r1, [r4, r0]
	ldr r0, _0223BEEC @ =0x00003318
	ldrb r0, [r4, r0]
	bl ov71_0223C594
	b _0223BEAE
_0223BE42:
	subs r1, r0, #1
	ldrb r2, [r4, r1]
	adds r1, r2, #0
	adds r3, r1, #1
	subs r1, r0, #1
	strb r3, [r4, r1]
	ldr r3, _0223BEE8 @ =0x000030D0
	lsls r5, r2, #2
	ldr r2, _0223BEF0 @ =0x0223D5CC
	ldr r1, [r4, r3]
	ldr r2, [r2, r5]
	subs r1, r1, r2
	str r1, [r4, r3]
	subs r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0xe
	bne _0223BEAE
	movs r2, #1
	subs r1, r0, #2
	strb r2, [r4, r1]
	movs r1, #3
	strb r1, [r4, r0]
	b _0223BEAE
_0223BE70:
	subs r1, r0, #1
	ldrb r2, [r4, r1]
	ldr r5, _0223BEE8 @ =0x000030D0
	adds r1, r2, #0
	adds r3, r1, #1
	subs r1, r0, #1
	strb r3, [r4, r1]
	movs r3, #0xd
	subs r2, r3, r2
	lsls r3, r2, #2
	ldr r2, _0223BEF0 @ =0x0223D5CC
	ldr r1, [r4, r5]
	ldr r2, [r2, r3]
	adds r1, r1, r2
	str r1, [r4, r5]
	subs r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0xe
	bne _0223BEAE
	movs r2, #0
	subs r1, r0, #2
	strb r2, [r4, r1]
	movs r1, #1
	lsls r1, r1, #0xc
	str r1, [r4, r5]
	movs r1, #3
	strb r1, [r4, r0]
	b _0223BEAE
_0223BEA8:
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223BEAE:
	movs r0, #1
	lsls r0, r0, #0xc
	blx FUN_020BCFE0
	adds r5, r0, #0
	ldr r0, _0223BEE8 @ =0x000030D0
	ldr r0, [r4, r0]
	blx FUN_020BCFE0
	movs r1, #0
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	blx FUN_020C3E14
	movs r3, #0
	str r3, [sp]
	ldr r0, _0223BEF4 @ =0x04000030
	add r1, sp, #8
	movs r2, #0x80
	str r3, [sp, #4]
	blx FUN_020BF4AC
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223BEE4: .4byte 0x0000331A
_0223BEE8: .4byte 0x000030D0
_0223BEEC: .4byte 0x00003318
_0223BEF0: .4byte 0x0223D5CC
_0223BEF4: .4byte 0x04000030
	thumb_func_end ov71_0223BDF8

	thumb_func_start ov71_0223BEF8
ov71_0223BEF8: @ 0x0223BEF8
	push {r4, r5, r6, lr}
	movs r6, #0
	adds r5, r0, #0
	ldr r0, _0223BFA8 @ =0x000030D4
	subs r1, r6, #1
	str r1, [r5, r0]
	ldr r1, _0223BFAC @ =0x021BF6BC
	adds r4, r6, #0
	ldrh r1, [r1, #0x20]
	cmp r1, #0
	beq _0223BF14
	movs r1, #1
	subs r0, #0x10
	str r1, [r5, r0]
_0223BF14:
	adds r1, r5, #0
	adds r1, #0xb4
	ldr r1, [r1]
	ldr r2, _0223BFB0 @ =0x0223D4D0
	ldrb r1, [r1, #4]
	ldr r0, [r5]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	ldr r1, _0223BFB4 @ =0x00003318
	adds r2, r2, r3
	ldrb r1, [r5, r1]
	lsls r1, r1, #2
	ldr r1, [r1, r2]
	bl ov71_0223C60C
	ldr r1, _0223BFA8 @ =0x000030D4
	str r0, [r5, r1]
	movs r0, #0
	ldr r2, [r5, r1]
	mvns r0, r0
	cmp r2, r0
	beq _0223BF48
	movs r6, #1
	adds r4, r6, #0
	b _0223BF88
_0223BF48:
	ldr r0, _0223BFAC @ =0x021BF6BC
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	beq _0223BF82
	adds r1, r5, #0
	adds r1, #0xb4
	ldr r1, [r1]
	ldr r2, _0223BFB0 @ =0x0223D4D0
	ldrb r1, [r1, #4]
	ldr r0, [r5]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	ldr r1, _0223BFB4 @ =0x00003318
	adds r2, r2, r3
	ldrb r1, [r5, r1]
	lsls r1, r1, #2
	ldr r1, [r1, r2]
	bl ov71_0223C654
	ldr r1, _0223BFA8 @ =0x000030D4
	str r0, [r5, r1]
	subs r1, #0x10
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0223BF88
	movs r6, #1
	movs r4, #2
	b _0223BF88
_0223BF82:
	movs r0, #0
	subs r1, #0x10
	str r0, [r5, r1]
_0223BF88:
	cmp r6, #0
	bne _0223BFA2
	ldr r0, _0223BFB8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0223BF9A
	movs r4, #3
	b _0223BFA2
_0223BF9A:
	movs r0, #2
	tst r0, r1
	beq _0223BFA2
	movs r4, #4
_0223BFA2:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0223BFA8: .4byte 0x000030D4
_0223BFAC: .4byte 0x021BF6BC
_0223BFB0: .4byte 0x0223D4D0
_0223BFB4: .4byte 0x00003318
_0223BFB8: .4byte 0x021BF67C
	thumb_func_end ov71_0223BEF8

	thumb_func_start ov71_0223BFBC
ov71_0223BFBC: @ 0x0223BFBC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0223C0BC @ =0x021BF6BC
	ldr r6, _0223C0C0 @ =0x0000FFFF
	ldrh r3, [r0, #0x1c]
	movs r4, #0
	cmp r3, r6
	beq _0223C0AC
	ldrh r0, [r0, #0x1e]
	cmp r0, r6
	beq _0223C0AC
	ldr r1, _0223C0C4 @ =0x000030DC
	ldr r2, [r5, r1]
	cmp r2, r6
	beq _0223C0AC
	adds r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, r6
	beq _0223C0AC
	subs r1, #8
	ldr r1, [r5, r1]
	subs r0, r4, #1
	cmp r1, r0
	beq _0223C0AC
	cmp r1, #0
	beq _0223C0AC
	adds r0, r5, #0
	adds r0, #0xb4
	subs r1, r1, #1
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0x48]
	lsls r0, r0, #0x1f
	asrs r0, r0, #0x1f
	beq _0223C0AC
	cmp r2, r3
	ble _0223C00E
	subs r2, r2, r3
	subs r1, r4, #1
	b _0223C012
_0223C00E:
	subs r2, r3, r2
	movs r1, #1
_0223C012:
	ldr r0, _0223C0C8 @ =0x00003302
	cmp r2, #3
	strb r1, [r5, r0]
	blt _0223C058
	cmp r2, #0x28
	bgt _0223C058
	ldr r0, _0223C0BC @ =0x021BF6BC
	ldrh r1, [r0, #0x1e]
	ldr r0, _0223C0CC @ =0x000030E0
	ldr r0, [r5, r0]
	cmp r0, r1
	ble _0223C032
	subs r2, r0, r1
	movs r1, #0
	mvns r1, r1
	b _0223C036
_0223C032:
	subs r2, r1, r0
	movs r1, #1
_0223C036:
	ldr r0, _0223C0D0 @ =0x00003303
	cmp r2, #0x28
	strb r1, [r5, r0]
	bgt _0223C04C
	movs r0, #0x33
	lsls r0, r0, #8
	adds r0, r5, r0
	movs r4, #1
	bl ov71_0223C45C
	b _0223C098
_0223C04C:
	movs r0, #0x33
	lsls r0, r0, #8
	adds r0, r5, r0
	bl ov71_0223C444
	b _0223C098
_0223C058:
	cmp r2, #0x28
	bgt _0223C098
	ldr r0, _0223C0BC @ =0x021BF6BC
	ldrh r1, [r0, #0x1e]
	ldr r0, _0223C0CC @ =0x000030E0
	ldr r0, [r5, r0]
	cmp r0, r1
	ble _0223C070
	subs r2, r0, r1
	movs r1, #0
	mvns r1, r1
	b _0223C074
_0223C070:
	subs r2, r1, r0
	movs r1, #1
_0223C074:
	ldr r0, _0223C0D0 @ =0x00003303
	cmp r2, #3
	strb r1, [r5, r0]
	blt _0223C08E
	cmp r2, #0x28
	bgt _0223C08E
	movs r0, #0x33
	lsls r0, r0, #8
	adds r0, r5, r0
	movs r4, #1
	bl ov71_0223C45C
	b _0223C098
_0223C08E:
	movs r0, #0x33
	lsls r0, r0, #8
	adds r0, r5, r0
	bl ov71_0223C444
_0223C098:
	cmp r4, #0
	beq _0223C0AC
	ldr r1, _0223C0D4 @ =0x000030D4
	adds r0, r5, #0
	ldr r1, [r5, r1]
	subs r1, r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov71_0223C1AC
_0223C0AC:
	ldr r1, _0223C0BC @ =0x021BF6BC
	ldr r0, _0223C0C4 @ =0x000030DC
	ldrh r2, [r1, #0x1c]
	str r2, [r5, r0]
	ldrh r1, [r1, #0x1e]
	adds r0, r0, #4
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223C0BC: .4byte 0x021BF6BC
_0223C0C0: .4byte 0x0000FFFF
_0223C0C4: .4byte 0x000030DC
_0223C0C8: .4byte 0x00003302
_0223C0CC: .4byte 0x000030E0
_0223C0D0: .4byte 0x00003303
_0223C0D4: .4byte 0x000030D4
	thumb_func_end ov71_0223BFBC

	thumb_func_start ov71_0223C0D8
ov71_0223C0D8: @ 0x0223C0D8
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r4, r1, #0
	ldr r0, [r0]
	movs r1, #2
	bl FUN_02019FE4
	adds r7, r0, #0
	lsls r0, r4, #2
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r2, #0
	lsrs r3, r0, #0x10
_0223C0F2:
	lsls r0, r2, #5
	adds r4, r3, r0
	adds r0, r2, #0
	adds r0, #0x13
	lsls r0, r0, #6
	movs r1, #0
	adds r5, r7, r0
_0223C100:
	lsls r6, r1, #1
	adds r0, r1, r4
	adds r6, r5, r6
	strh r0, [r6, #0x1c]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	blo _0223C100
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	blo _0223C0F2
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	bl FUN_02019448
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov71_0223C0D8

	thumb_func_start ov71_0223C128
ov71_0223C128: @ 0x0223C128
	push {r3, r4, r5, r6, r7, lr}
	lsrs r5, r1, #0x1f
	lsls r4, r1, #0x1e
	subs r4, r4, r5
	movs r2, #0x1e
	rors r4, r2
	adds r2, r5, r4
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r1, r1, #0x16
	movs r2, #7
	adds r5, r4, #0
	lsrs r1, r1, #0x18
	muls r5, r2, r5
	movs r6, #3
	adds r4, r6, r5
	lsls r4, r4, #0x18
	movs r3, #4
	muls r2, r1, r2
	adds r1, r3, r2
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, [r0]
	adds r1, r6, #0
	lsrs r4, r4, #0x18
	bl FUN_02019FE4
	movs r2, #0
	adds r3, r0, r4
	adds r0, r2, #0
_0223C164:
	adds r6, r2, r5
	lsls r4, r2, #4
	lsls r6, r6, #5
	adds r1, r0, #0
	adds r4, #0xba
	adds r6, r3, r6
_0223C170:
	adds r7, r1, r4
	strb r7, [r6, r1]
	adds r1, r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #5
	blo _0223C170
	adds r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	cmp r2, #5
	blo _0223C164
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov71_0223C128

	thumb_func_start ov71_0223C18C
ov71_0223C18C: @ 0x0223C18C
	push {r3, lr}
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r3, _0223C1A4 @ =0x027E0000
	ldr r1, _0223C1A8 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.align 2, 0
_0223C1A4: .4byte 0x027E0000
_0223C1A8: .4byte 0x00003FF8
	thumb_func_end ov71_0223C18C

	thumb_func_start ov71_0223C1AC
ov71_0223C1AC: @ 0x0223C1AC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0xb4
	adds r4, r1, #0
	ldr r0, [r0]
	lsls r6, r4, #2
	adds r0, r0, r6
	ldr r0, [r0, #0x48]
	asrs r0, r0, #1
	adds r1, r0, #1
	str r1, [sp]
	cmp r1, #0xc8
	bge _0223C278
	bl ov71_0223C40C
	adds r7, r0, #0
	ldr r0, _0223C27C @ =0x00003310
	ldr r2, _0223C280 @ =0x0223D4B0
	adds r1, r5, r0
	ldrb r0, [r1, r4]
	ldrb r2, [r2, r7]
	adds r0, r0, #1
	strb r0, [r1, r4]
	ldrb r0, [r1, r4]
	cmp r0, r2
	blo _0223C278
	movs r0, #0
	strb r0, [r1, r4]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r2, [r0]
	movs r1, #1
	adds r2, #0x48
	ldr r0, [r2, r6]
	ands r1, r0
	asrs r0, r0, #1
	adds r0, r0, #1
	lsls r0, r0, #1
	orrs r0, r1
	str r0, [r2, r6]
	ldr r0, [sp]
	bl ov71_0223C40C
	adds r6, r0, #0
	cmp r7, r6
	bls _0223C20C
	bl FUN_02022974
_0223C20C:
	cmp r7, r6
	bhs _0223C278
	cmp r6, #4
	bhi _0223C236
	cmp r6, #4
	ldr r0, _0223C284 @ =0x000030E4
	bne _0223C226
	adds r0, r5, r0
	adds r1, r4, #0
	movs r2, #0
	bl ov71_0223D298
	b _0223C236
_0223C226:
	movs r2, #3
	subs r2, r2, r6
	lsls r2, r2, #0x18
	adds r0, r5, r0
	adds r1, r4, #0
	lsrs r2, r2, #0x18
	bl ov71_0223D298
_0223C236:
	cmp r6, #3
	bne _0223C24E
	adds r4, #8
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0xc9
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_0223C24E:
	cmp r6, #4
	bne _0223C278
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0xc9
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r4, #0x10
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0xc9
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_02021CAC
_0223C278:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C27C: .4byte 0x00003310
_0223C280: .4byte 0x0223D4B0
_0223C284: .4byte 0x000030E4
	thumb_func_end ov71_0223C1AC

	thumb_func_start ov71_0223C288
ov71_0223C288: @ 0x0223C288
	push {r4, lr}
	sub sp, #0x18
	movs r0, #1
	lsls r0, r0, #0xc
	blx FUN_020BCFE0
	adds r4, r0, #0
	movs r0, #1
	lsls r0, r0, #0xc
	blx FUN_020BCFE0
	movs r1, #0
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	blx FUN_020C3E14
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C2E8 @ =0x04001020
	add r1, sp, #8
	movs r2, #0x80
	movs r3, #0x60
	blx FUN_020BF4AC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C2EC @ =0x04001030
	add r1, sp, #8
	movs r2, #0x80
	movs r3, #0x60
	blx FUN_020BF4AC
	blx FUN_020C3E14
	movs r3, #0
	str r3, [sp]
	ldr r0, _0223C2F0 @ =0x04000030
	add r1, sp, #8
	movs r2, #0x80
	str r3, [sp, #4]
	blx FUN_020BF4AC
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_0223C2E8: .4byte 0x04001020
_0223C2EC: .4byte 0x04001030
_0223C2F0: .4byte 0x04000030
	thumb_func_end ov71_0223C288

	thumb_func_start ov71_0223C2F4
ov71_0223C2F4: @ 0x0223C2F4
	push {r4, lr}
	ldr r1, _0223C32C @ =0x0000331D
	adds r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _0223C314
	ldr r1, _0223C330 @ =0x0223D4B8
	ldr r1, [r1, #0x10]
	bl ov71_0223C334
	cmp r0, #0
	beq _0223C32A
	ldr r0, _0223C32C @ =0x0000331D
	movs r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
_0223C314:
	cmp r1, #2
	bne _0223C32A
	ldr r1, _0223C330 @ =0x0223D4B8
	ldr r1, [r1, #0x14]
	bl ov71_0223C334
	cmp r0, #0
	beq _0223C32A
	ldr r0, _0223C32C @ =0x0000331D
	movs r1, #0
	strb r1, [r4, r0]
_0223C32A:
	pop {r4, pc}
	.align 2, 0
_0223C32C: .4byte 0x0000331D
_0223C330: .4byte 0x0223D4B8
	thumb_func_end ov71_0223C2F4

	thumb_func_start ov71_0223C334
ov71_0223C334: @ 0x0223C334
	push {r4, lr}
	ldr r2, _0223C388 @ =0x0000331C
	adds r4, r0, #0
	ldrb r0, [r4, r2]
	lsls r0, r0, #1
	ldrb r3, [r1, r0]
	cmp r3, #0
	bne _0223C350
	movs r1, #0
	subs r0, r2, #1
	strb r1, [r4, r0]
	strb r1, [r4, r2]
	movs r0, #1
	pop {r4, pc}
_0223C350:
	subs r0, r2, #1
	ldrb r0, [r4, r0]
	cmp r0, r3
	blo _0223C364
	movs r3, #0
	subs r0, r2, #1
	strb r3, [r4, r0]
	ldrb r0, [r4, r2]
	adds r0, r0, #1
	strb r0, [r4, r2]
_0223C364:
	ldr r0, _0223C388 @ =0x0000331C
	ldrb r2, [r4, r0]
	subs r0, r0, #1
	ldrb r0, [r4, r0]
	lsls r2, r2, #1
	adds r2, r2, #1
	ldrb r1, [r1, r2]
	cmp r0, #0
	bne _0223C37C
	adds r0, r4, #0
	bl ov71_0223C0D8
_0223C37C:
	ldr r0, _0223C38C @ =0x0000331B
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0223C388: .4byte 0x0000331C
_0223C38C: .4byte 0x0000331B
	thumb_func_end ov71_0223C334

	thumb_func_start ov71_0223C390
ov71_0223C390: @ 0x0223C390
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0223C3E0 @ =0x000032FC
	movs r1, #7
	ldr r0, [r5, r0]
	ldr r4, [r0, #8]
	ldr r0, _0223C3E4 @ =0x000030BC
	ldr r3, [r5, r0]
	movs r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5]
	ldr r3, [r3, #0x10]
	bl FUN_0201958C
	ldr r0, [r5]
	movs r1, #7
	bl FUN_02019FE4
	cmp r0, #0
	beq _0223C3CA
	ldr r2, _0223C3E0 @ =0x000032FC
	ldr r0, [r5]
	ldr r2, [r5, r2]
	movs r1, #7
	adds r2, #0xc
	adds r3, r4, #0
	bl FUN_02019574
_0223C3CA:
	movs r0, #0
	str r0, [sp]
	ldr r2, _0223C3E0 @ =0x000032FC
	ldr r0, [r5]
	ldr r2, [r5, r2]
	movs r1, #7
	adds r2, #0xc
	adds r3, r4, #0
	bl FUN_02019460
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C3E0: .4byte 0x000032FC
_0223C3E4: .4byte 0x000030BC
	thumb_func_end ov71_0223C390

	thumb_func_start ov71_0223C3E8
ov71_0223C3E8: @ 0x0223C3E8
	push {r3, lr}
	sub sp, #0x10
	movs r1, #6
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #9
	str r1, [sp, #8]
	movs r1, #0x10
	str r1, [sp, #0xc]
	ldr r0, [r0]
	movs r1, #7
	movs r2, #0
	movs r3, #0x14
	bl FUN_02019CB8
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov71_0223C3E8

	thumb_func_start ov71_0223C40C
ov71_0223C40C: @ 0x0223C40C
	push {r3, lr}
	cmp r0, #0
	blt _0223C41A
	cmp r0, #0x64
	bge _0223C41A
	movs r0, #0
	pop {r3, pc}
_0223C41A:
	cmp r0, #0x8c
	bge _0223C422
	movs r0, #1
	pop {r3, pc}
_0223C422:
	cmp r0, #0xaa
	bge _0223C42A
	movs r0, #2
	pop {r3, pc}
_0223C42A:
	cmp r0, #0xbe
	bge _0223C432
	movs r0, #3
	pop {r3, pc}
_0223C432:
	cmp r0, #0xc8
	bge _0223C43A
	movs r0, #4
	pop {r3, pc}
_0223C43A:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov71_0223C40C

	thumb_func_start ov71_0223C444
ov71_0223C444: @ 0x0223C444
	movs r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov71_0223C444

	thumb_func_start ov71_0223C44C
ov71_0223C44C: @ 0x0223C44C
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end ov71_0223C44C

	thumb_func_start ov71_0223C45C
ov71_0223C45C: @ 0x0223C45C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0223C4D4 @ =0x0223D4B8
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0223C482
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0223C482
	ldr r0, _0223C4D8 @ =0x00000692
	bl FUN_02005748
_0223C482:
	movs r0, #0
	ldrsb r1, [r4, r0]
	movs r0, #2
	ldrsb r0, [r4, r0]
	muls r0, r1, r0
	bmi _0223C49A
	movs r0, #1
	ldrsb r1, [r4, r0]
	movs r0, #3
	ldrsb r0, [r4, r0]
	muls r0, r1, r0
	bpl _0223C4BC
_0223C49A:
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	strb r0, [r4, #4]
	ldrb r0, [r4, #4]
	lsls r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
_0223C4BC:
	movs r0, #2
	ldrsb r0, [r4, r0]
	strb r0, [r4]
	movs r0, #3
	ldrsb r0, [r4, r0]
	strb r0, [r4, #1]
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add sp, #8
	pop {r4, pc}
	nop
_0223C4D4: .4byte 0x0223D4B8
_0223C4D8: .4byte 0x00000692
	thumb_func_end ov71_0223C45C

	thumb_func_start ov71_0223C4DC
ov71_0223C4DC: @ 0x0223C4DC
	push {r4, r5, r6, r7}
	movs r2, #3
	movs r4, #0
	lsls r2, r2, #0xc
_0223C4E4:
	asrs r3, r4, #2
	lsrs r3, r3, #0x1d
	adds r3, r4, r3
	asrs r3, r3, #3
	lsrs r6, r3, #0x1f
	lsls r5, r3, #0x1d
	subs r5, r5, r6
	movs r3, #0x1d
	rors r5, r3
	adds r3, r6, r5
	asrs r5, r4, #5
	lsrs r5, r5, #0x1a
	lsls r3, r3, #0x18
	adds r5, r4, r5
	lsrs r3, r3, #0x18
	asrs r5, r5, #6
	lsls r5, r5, #3
	adds r3, r0, r3
	ldrb r3, [r5, r3]
	lsrs r7, r4, #0x1f
	lsls r6, r4, #0x1d
	subs r6, r6, r7
	movs r5, #0x1d
	rors r6, r5
	adds r5, r7, r6
	lsls r5, r5, #0x18
	adds r6, r3, #0
	lsrs r5, r5, #0x18
	asrs r6, r5
	movs r3, #1
	ands r3, r6
	strb r3, [r1, r4]
	adds r4, r4, #1
	cmp r4, r2
	blt _0223C4E4
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov71_0223C4DC

	thumb_func_start ov71_0223C530
ov71_0223C530: @ 0x0223C530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	movs r1, #1
	str r1, [sp]
	lsls r1, r7, #0x18
	movs r3, #3
	str r0, [sp, #4]
	lsrs r1, r1, #0x18
	lsls r3, r3, #0xc
	bl FUN_0201958C
	lsls r1, r7, #0x18
	ldr r0, [sp, #4]
	lsrs r1, r1, #0x18
	bl FUN_02019FE4
	movs r4, #0
	adds r1, r0, #0
	adds r3, r4, #0
	adds r0, r4, #0
_0223C55A:
	adds r5, r3, #0
	adds r5, #0xe
	lsls r5, r5, #6
	adds r2, r0, #0
	adds r5, r1, r5
_0223C564:
	lsls r6, r2, #1
	adds r4, r4, #1
	adds r2, r2, #1
	lsls r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r4, r4, #0x10
	adds r6, r5, r6
	lsrs r2, r2, #0x18
	strh r4, [r6, #8]
	cmp r2, #0x18
	blo _0223C564
	adds r2, r3, #1
	lsls r2, r2, #0x18
	lsrs r3, r2, #0x18
	cmp r3, #8
	blo _0223C55A
	lsls r1, r7, #0x18
	ldr r0, [sp, #4]
	lsrs r1, r1, #0x18
	bl FUN_02019448
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov71_0223C530

	thumb_func_start ov71_0223C594
ov71_0223C594: @ 0x0223C594
	ldr r3, _0223C59C @ =FUN_02005748
	ldr r0, _0223C5A0 @ =0x00000699
	bx r3
	nop
_0223C59C: .4byte FUN_02005748
_0223C5A0: .4byte 0x00000699
	thumb_func_end ov71_0223C594

	thumb_func_start ov71_0223C5A4
ov71_0223C5A4: @ 0x0223C5A4
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _0223C600
	movs r0, #0xc3
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C5F0
	ldr r2, _0223C604 @ =0x0000331E
	ldrb r0, [r4, r2]
	cmp r0, #0xf
	bne _0223C5DE
	adds r1, r4, #0
	adds r1, #0xb4
	subs r2, #0x16
	ldr r1, [r1]
	ldr r2, [r4, r2]
	adds r0, r4, #4
	bl ov71_0223CDE8
	ldr r2, _0223C608 @ =0x0000330C
	adds r0, r4, #0
	ldr r2, [r4, r2]
	adds r0, #0x54
	movs r1, #1
	bl ov71_0223CECC
	b _0223C5F0
_0223C5DE:
	cmp r0, #0
	bne _0223C5F0
	subs r2, #0x12
	adds r0, r4, #0
	ldr r2, [r4, r2]
	adds r0, #0x54
	movs r1, #0
	bl ov71_0223CECC
_0223C5F0:
	ldr r0, _0223C604 @ =0x0000331E
	movs r1, #0x1e
	ldrb r0, [r4, r0]
	adds r0, r0, #1
	blx FUN_020E1F6C
	ldr r0, _0223C604 @ =0x0000331E
	strb r1, [r4, r0]
_0223C600:
	pop {r4, pc}
	nop
_0223C604: .4byte 0x0000331E
_0223C608: .4byte 0x0000330C
	thumb_func_end ov71_0223C5A4

	thumb_func_start ov71_0223C60C
ov71_0223C60C: @ 0x0223C60C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, r1, #0
	bl FUN_02022664
	movs r1, #0
	adds r4, r0, #0
	mvns r1, r1
	cmp r4, r1
	beq _0223C64A
	cmp r4, #0
	beq _0223C64C
	movs r1, #0x40
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223C650 @ =0x021BF6BC
	adds r0, r5, #0
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	movs r1, #2
	bl FUN_0201C784
	cmp r0, #0
	bne _0223C64A
	movs r0, #0
	add sp, #8
	mvns r0, r0
	pop {r3, r4, r5, pc}
_0223C64A:
	adds r0, r4, #0
_0223C64C:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C650: .4byte 0x021BF6BC
	thumb_func_end ov71_0223C60C

	thumb_func_start ov71_0223C654
ov71_0223C654: @ 0x0223C654
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, r1, #0
	bl FUN_02022644
	movs r1, #0
	adds r4, r0, #0
	mvns r1, r1
	cmp r4, r1
	beq _0223C692
	cmp r4, #0
	beq _0223C694
	movs r1, #0x40
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223C698 @ =0x021BF6BC
	adds r0, r5, #0
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	movs r1, #2
	bl FUN_0201C784
	cmp r0, #0
	bne _0223C692
	movs r0, #0
	add sp, #8
	mvns r0, r0
	pop {r3, r4, r5, pc}
_0223C692:
	adds r0, r4, #0
_0223C694:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C698: .4byte 0x021BF6BC
	thumb_func_end ov71_0223C654

	thumb_func_start ov71_0223C69C
ov71_0223C69C: @ 0x0223C69C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0223C6D0 @ =0x0223D670
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_0223C6A6:
	lsls r1, r4, #4
	lsls r2, r4, #3
	adds r0, r5, #0
	adds r1, r6, r1
	adds r2, r7, r2
	bl FUN_0201A8D4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	blo _0223C6A6
	movs r2, #0
	adds r0, r5, #0
	movs r1, #7
	movs r3, #1
	str r2, [sp]
	bl FUN_020196C0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C6D0: .4byte 0x0223D670
	thumb_func_end ov71_0223C69C

	thumb_func_start ov71_0223C6D4
ov71_0223C6D4: @ 0x0223C6D4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0223C6DA:
	lsls r0, r4, #4
	adds r0, r5, r0
	bl FUN_0201A8FC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xb
	blo _0223C6DA
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov71_0223C6D4

	thumb_func_start ov71_0223C6F0
ov71_0223C6F0: @ 0x0223C6F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	movs r1, #0x88
	str r1, [sp]
	movs r1, #0x10
	str r1, [sp, #4]
	movs r1, #0
	adds r2, r1, #0
	adds r3, r1, #0
	adds r7, r0, #0
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0x88
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x10
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0x88
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x20
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0x88
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x30
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0x88
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x40
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0xe0
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x50
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0xe0
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x60
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r2, #0x9a
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x19
	bl FUN_0200B144
	str r0, [sp, #0x14]
	movs r0, #0x20
	movs r1, #0x19
	bl FUN_02023790
	adds r5, r0, #0
	movs r4, #0
_0223C7AA:
	cmp r4, #3
	bne _0223C7B8
	bne _0223C7E2
	ldrb r0, [r6, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	beq _0223C7E2
_0223C7B8:
	ldr r1, _0223CA20 @ =0x0223D644
	lsls r2, r4, #2
	ldr r1, [r1, r2]
	ldr r0, [sp, #0x14]
	adds r2, r5, #0
	bl FUN_0200B1B8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223CA24 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r0, r4, #4
	adds r0, r7, r0
	adds r2, r5, #0
	adds r3, r1, #0
	bl FUN_0201D78C
_0223C7E2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	blo _0223C7AA
	movs r0, #0x20
	movs r1, #0x19
	bl FUN_02023790
	str r0, [sp, #0x10]
	movs r0, #6
	movs r1, #0x20
	movs r2, #0x19
	bl FUN_0200B368
	movs r2, #0
	str r5, [sp]
	adds r4, r0, #0
	ldrh r0, [r6, #0x28]
	movs r1, #0x88
	adds r3, r2, #0
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r7, #0
	bl ov71_0223CD64
	adds r1, r6, #0
	adds r0, r5, #0
	adds r1, #8
	bl FUN_02023D28
	adds r0, r7, #0
	movs r2, #0
	adds r0, #0x10
	movs r1, #0x88
	adds r3, r2, #0
	str r5, [sp]
	bl ov71_0223CDB0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, [r6, #0x1c]
	adds r0, r4, #0
	movs r1, #5
	movs r3, #6
	bl FUN_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	movs r1, #0xe
	bl FUN_0200B1B8
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x88
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CA24 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r7, #0
	str r1, [sp, #0xc]
	adds r0, #0x20
	adds r2, r5, #0
	bl FUN_0201D78C
	ldrb r0, [r6, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	beq _0223C8D6
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, [r6, #0x20]
	adds r0, r4, #0
	movs r1, #5
	movs r3, #3
	bl FUN_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	movs r1, #0x15
	bl FUN_0200B1B8
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x88
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CA24 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r0, #0x30
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
_0223C8D6:
	str r5, [sp]
	ldr r0, [r6, #0x24]
	movs r2, #0
	str r0, [sp, #4]
	movs r0, #9
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r0, #0x40
	movs r1, #0x88
	adds r3, r2, #0
	bl ov71_0223CD64
	ldrb r0, [r6, #4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	beq _0223C934
	ldr r0, [r6, #0x18]
	bl FUN_0202CC58
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #3
	bl FUN_0200B60C
	ldr r0, [r6, #0x18]
	bl FUN_0202CC5C
	movs r3, #2
	adds r2, r0, #0
	str r3, [sp]
	movs r1, #1
	adds r0, r4, #0
	str r1, [sp, #4]
	bl FUN_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	movs r1, #0x10
	bl FUN_0200B1B8
	b _0223C964
_0223C934:
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r2, [r6, #0x2a]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #3
	bl FUN_0200B60C
	movs r3, #2
	adds r2, r6, #0
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r2, #0x2e
	ldrb r2, [r2]
	adds r0, r4, #0
	bl FUN_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	movs r1, #0xf
	bl FUN_0200B1B8
_0223C964:
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe0
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CA24 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r0, #0x50
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r1, #2
	adds r2, r6, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r2, #0x2f
	ldrb r2, [r2]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0200B60C
	adds r2, r6, #0
	adds r2, #0x30
	ldrb r2, [r2]
	adds r0, r4, #0
	movs r1, #3
	bl FUN_0200C2E0
	movs r3, #2
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r6, #0x31
	ldrb r2, [r6]
	adds r0, r4, #0
	movs r1, #4
	bl FUN_0200B60C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	movs r1, #0x11
	bl FUN_0200B1B8
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe0
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CA24 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r7, #0x60
	adds r0, r7, #0
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B3F0
	adds r0, r5, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	bl FUN_0200B190
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CA20: .4byte 0x0223D644
_0223CA24: .4byte 0x00010200
	thumb_func_end ov71_0223C6F0

	thumb_func_start ov71_0223CA28
ov71_0223CA28: @ 0x0223CA28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0xe0
	str r0, [sp]
	movs r0, #0x20
	str r1, [sp, #0x10]
	movs r1, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x70
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0xe0
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x80
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0xe0
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x90
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #0xe0
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xa0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r2, #0x9a
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x19
	bl FUN_0200B144
	adds r7, r0, #0
	movs r0, #0x20
	movs r1, #0x19
	bl FUN_02023790
	adds r5, r0, #0
	movs r4, #7
_0223CAA4:
	ldr r1, _0223CD3C @ =0x0223D644
	lsls r2, r4, #2
	ldr r1, [r1, r2]
	adds r0, r7, #0
	adds r2, r5, #0
	bl FUN_0200B1B8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223CD40 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r0, r4, #4
	adds r0, r6, r0
	adds r2, r5, #0
	adds r3, r1, #0
	bl FUN_0201D78C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	blo _0223CAA4
	movs r0, #0x20
	movs r1, #0x19
	bl FUN_02023790
	str r0, [sp, #0x14]
	movs r0, #6
	movs r1, #0x20
	movs r2, #0x19
	bl FUN_0200B368
	ldr r1, [sp, #0x10]
	adds r4, r0, #0
	adds r1, #0x33
	ldrb r1, [r1]
	cmp r1, #0
	beq _0223CB6E
	movs r1, #2
	str r1, [sp]
	movs r2, #1
	str r2, [sp, #4]
	ldr r2, [sp, #0x10]
	adds r3, r1, #0
	adds r2, #0x32
	ldrb r2, [r2]
	bl FUN_0200B60C
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	adds r2, #0x33
	ldrb r2, [r2]
	movs r1, #3
	bl FUN_0200C2E0
	movs r3, #2
	ldr r2, [sp, #0x10]
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r2, #0x34
	ldrb r2, [r2]
	adds r0, r4, #0
	movs r1, #4
	bl FUN_0200B60C
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	ldrh r2, [r2, #0x2c]
	movs r1, #0
	movs r3, #3
	bl FUN_0200B60C
	movs r3, #2
	ldr r2, [sp, #0x10]
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r2, #0x35
	ldrb r2, [r2]
	adds r0, r4, #0
	bl FUN_0200B60C
	ldr r2, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0x11
	bl FUN_0200B1B8
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200C388
	b _0223CBA6
_0223CB6E:
	ldr r2, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0xc
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0200B48C
	adds r0, r7, #0
	movs r1, #0x14
	adds r2, r5, #0
	bl FUN_0200B1B8
_0223CBA6:
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe0
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0x70
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r2, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0xf
	bl FUN_0200B1B8
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe0
	subs r3, r1, r0
	movs r0, #0x10
	str r0, [sp]
	movs r1, #0
	ldr r0, _0223CD40 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0x70
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	ldr r2, [r2, #0x38]
	movs r1, #5
	movs r3, #6
	bl FUN_0200B60C
	ldr r2, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0x16
	bl FUN_0200B1B8
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe0
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0x80
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r7, #0
	movs r1, #0x12
	adds r2, r5, #0
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0x90
	adds r2, r5, #0
	movs r3, #0x70
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r2, #0
	ldr r0, [sp, #0x10]
	str r5, [sp]
	ldr r0, [r0, #0x40]
	movs r1, #0xe0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r0, #0x90
	adds r3, r2, #0
	bl ov71_0223CD64
	adds r0, r7, #0
	movs r1, #0x13
	adds r2, r5, #0
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0x90
	adds r2, r5, #0
	movs r3, #0xb0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	str r5, [sp]
	ldr r0, [r0, #0x3c]
	movs r1, #0xe0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r0, #0x90
	movs r2, #0x40
	movs r3, #0
	bl ov71_0223CD64
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	ldr r2, [r2, #0x44]
	movs r1, #5
	movs r3, #6
	bl FUN_0200B60C
	ldr r2, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0x16
	bl FUN_0200B1B8
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe0
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CD40 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r6, #0xa0
	adds r0, r6, #0
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B3F0
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B190
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223CD3C: .4byte 0x0223D644
_0223CD40: .4byte 0x00010200
	thumb_func_end ov71_0223CA28

	thumb_func_start ov71_0223CD44
ov71_0223CD44: @ 0x0223CD44
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	cmp r4, r6
	bhi _0223CD62
_0223CD50:
	lsls r0, r4, #4
	adds r0, r5, r0
	bl FUN_0201ACF4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	bls _0223CD50
_0223CD62:
	pop {r4, r5, r6, pc}
	thumb_func_end ov71_0223CD44

	thumb_func_start ov71_0223CD64
ov71_0223CD64: @ 0x0223CD64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	movs r0, #1
	adds r4, r2, #0
	str r0, [sp]
	add r2, sp, #0x18
	adds r5, r1, #0
	adds r6, r3, #0
	ldrb r2, [r2, #0x18]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x34]
	bl FUN_020238A0
	movs r0, #0
	ldr r1, [sp, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	adds r3, r3, r4
	str r6, [sp]
	movs r1, #0
	ldr r0, _0223CDAC @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x28]
	adds r0, r7, #0
	subs r3, r5, r3
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CDAC: .4byte 0x00010200
	thumb_func_end ov71_0223CD64

	thumb_func_start ov71_0223CDB0
ov71_0223CDB0: @ 0x0223CDB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	adds r5, r1, #0
	movs r0, #0
	adds r4, r2, #0
	ldr r1, [sp, #0x28]
	adds r6, r3, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	adds r3, r3, r4
	str r6, [sp]
	movs r1, #0
	ldr r0, _0223CDE4 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x28]
	adds r0, r7, #0
	subs r3, r5, r3
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223CDE4: .4byte 0x00010200
	thumb_func_end ov71_0223CDB0

	thumb_func_start ov71_0223CDE8
ov71_0223CDE8: @ 0x0223CDE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r1, #0
	adds r7, r0, #0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _0223CDFA
	bl FUN_02022974
_0223CDFA:
	ldr r0, [r5, #0x18]
	bl FUN_0202CC58
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	adds r0, #0x50
	movs r2, #0xb8
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r2, #0x9a
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x19
	bl FUN_0200B144
	str r0, [sp, #0x10]
	movs r0, #0x20
	movs r1, #0x19
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #0x20
	movs r1, #0x19
	bl FUN_02023790
	str r0, [sp, #0x14]
	movs r0, #2
	movs r1, #0x20
	movs r2, #0x19
	bl FUN_0200B368
	adds r6, r0, #0
	ldr r0, [r5, #0x18]
	bl FUN_0202CC58
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r3, #3
	bl FUN_0200B60C
	ldr r0, [r5, #0x18]
	bl FUN_0202CC5C
	movs r3, #2
	adds r2, r0, #0
	str r3, [sp]
	movs r1, #1
	adds r0, r6, #0
	str r1, [sp, #4]
	bl FUN_0200B60C
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	movs r1, #0x10
	bl FUN_0200B1B8
	ldr r2, [sp, #0x14]
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe0
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	ldr r0, _0223CEC8 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r7, #0x50
	adds r0, r7, #0
	adds r2, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	bl FUN_0200B190
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B3F0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223CEC8: .4byte 0x00010200
	thumb_func_end ov71_0223CDE8

	thumb_func_start ov71_0223CECC
ov71_0223CECC: @ 0x0223CECC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	cmp r1, #0
	beq _0223CEEC
	movs r1, #0
	str r1, [sp]
	ldr r3, _0223CF08 @ =0x00010200
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0xcd
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, pc}
_0223CEEC:
	movs r1, #5
	str r1, [sp]
	movs r1, #0x10
	str r1, [sp, #4]
	movs r1, #0
	movs r2, #0xcd
	adds r3, r1, #0
	bl FUN_0201AE78
	adds r0, r4, #0
	bl FUN_0201A954
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223CF08: .4byte 0x00010200
	thumb_func_end ov71_0223CECC

	thumb_func_start ov71_0223CF0C
ov71_0223CF0C: @ 0x0223CF0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r0, #0
	str r1, [sp, #0x14]
	bl ov71_0223D2F4
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x19
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r0, #0x19
	adds r1, r7, #4
	adds r2, r0, #0
	bl FUN_020095C4
	ldr r4, _0223D068 @ =0x0223D6C8
	str r0, [r7]
	movs r6, #0
	adds r5, r7, #0
_0223CF46:
	ldrb r0, [r4]
	adds r1, r6, #0
	movs r2, #0x19
	bl FUN_02009714
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r6, r6, #1
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r6, #4
	blt _0223CF46
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x19
	str r0, [sp, #8]
	adds r0, r1, #0
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x14]
	movs r2, #0x21
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r7, r1]
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #9
	str r0, [sp, #8]
	movs r0, #0x19
	subs r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r7, r1]
	ldr r1, [sp, #0x14]
	movs r2, #0xe
	movs r3, #0
	bl FUN_02009B04
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r7, r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x19
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r7, r1]
	ldr r1, [sp, #0x14]
	movs r2, #0x2c
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r7, r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x19
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r7, r1]
	ldr r1, [sp, #0x14]
	movs r2, #0x2e
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r7, r1]
	subs r1, #0xc
	ldr r0, [r7, r1]
	bl FUN_0200A328
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r7, r0]
	bl FUN_0200A5C8
	ldr r3, _0223D06C @ =0x0223D6DC
	add r2, sp, #0x20
	str r2, [sp, #0x18]
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r0, #0x1e
	lsls r0, r0, #4
	adds r0, r7, r0
	movs r4, #0
	str r0, [sp, #0x1c]
_0223D012:
	ldr r1, [sp, #0x18]
	lsls r6, r4, #2
	ldr r0, [sp, #0x14]
	ldr r1, [r1, r6]
	movs r2, #0x19
	adds r5, r7, r6
	bl FUN_02006CB8
	movs r1, #7
	lsls r1, r1, #6
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223D04C
	ldr r1, [sp, #0x1c]
	adds r1, r1, r6
	blx FUN_020A71B0
	cmp r0, #0
	bne _0223D050
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_020181C4
	bl FUN_02022974
	b _0223D050
_0223D04C:
	bl FUN_02022974
_0223D050:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #8
	blo _0223D012
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D068: .4byte 0x0223D6C8
_0223D06C: .4byte 0x0223D6DC
	thumb_func_end ov71_0223CF0C

	thumb_func_start ov71_0223D070
ov71_0223D070: @ 0x0223D070
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	adds r7, r1, #0
	movs r1, #1
	str r0, [sp, #0x2c]
	str r1, [sp]
	subs r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r3, [sp, #0x2c]
	str r1, [sp, #0x10]
	ldr r3, [r3, r0]
	adds r4, r0, #4
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x2c]
	ldr r3, [r3, r4]
	adds r4, r0, #0
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x2c]
	adds r4, #8
	ldr r3, [r3, r4]
	adds r0, #0xc
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x2c]
	ldr r0, [r3, r0]
	adds r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x64
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r0, [sp, #0x2c]
	movs r4, #0
	ldr r0, [r0]
	ldr r6, _0223D230 @ =0x0223D73C
	str r0, [sp, #0x34]
	add r0, sp, #0x64
	str r0, [sp, #0x38]
	movs r0, #1
	lsls r0, r0, #0xc
	str r4, [sp, #0x3c]
	str r4, [sp, #0x40]
	str r4, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	add r0, sp, #0x34
	strh r4, [r0, #0x20]
	movs r0, #2
	str r0, [sp, #0x58]
	movs r0, #1
	str r0, [sp, #0x5c]
	movs r0, #0x19
	ldr r5, [sp, #0x2c]
	str r0, [sp, #0x60]
_0223D0EA:
	ldr r0, [r6]
	lsls r0, r0, #0xc
	str r0, [sp, #0x3c]
	ldr r0, [r6, #4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl FUN_02021AA0
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CC8
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02021D6C
	ldrb r0, [r7, r4]
	cmp r0, #0
	bne _0223D12A
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
_0223D12A:
	adds r4, r4, #1
	adds r6, #8
	adds r5, r5, #4
	cmp r4, #8
	blt _0223D0EA
	movs r0, #8
	ldr r4, _0223D234 @ =0x0223D6FC
	ldr r5, [sp, #0x2c]
	str r0, [sp, #0x30]
	movs r6, #0
	movs r7, #1
_0223D140:
	ldr r0, [r4]
	str r7, [sp, #0x58]
	lsls r0, r0, #0xc
	str r0, [sp, #0x3c]
	ldr r0, [r4, #4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl FUN_02021AA0
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #8
	bl FUN_02021D6C
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r4, #8
	adds r5, r5, #4
	cmp r6, #8
	blt _0223D140
	ldr r0, [sp, #0x30]
	ldr r4, _0223D234 @ =0x0223D6FC
	adds r0, #8
	str r0, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x30]
	movs r6, #0
	lsls r1, r0, #2
	ldr r0, [sp, #0x2c]
	movs r7, #1
	adds r5, r0, r1
_0223D1A0:
	ldr r0, [r4]
	str r7, [sp, #0x58]
	lsls r0, r0, #0xc
	str r0, [sp, #0x3c]
	ldr r0, [r4, #4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl FUN_02021AA0
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #9
	bl FUN_02021D6C
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r4, #8
	adds r5, r5, #4
	cmp r6, #8
	blt _0223D1A0
	movs r1, #0
	add r0, sp, #0x84
	strb r1, [r0]
	movs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #0x3c]
	movs r0, #0x22
	lsls r0, r0, #0xe
	str r0, [sp, #0x40]
	str r1, [sp, #0x58]
	movs r1, #0x57
	ldr r0, [sp, #0x2c]
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r0, [sp, #0x30]
	adds r0, #8
	str r0, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x16
	add r0, sp, #0x34
	bl FUN_02021AA0
	str r0, [r4, r5]
	ldr r0, [r4, r5]
	movs r1, #0
	bl FUN_02021CC8
	ldr r0, [r4, r5]
	movs r1, #0xa
	bl FUN_02021D6C
	ldr r0, [r4, r5]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D230: .4byte 0x0223D73C
_0223D234: .4byte 0x0223D6FC
	thumb_func_end ov71_0223D070

	thumb_func_start ov71_0223D238
ov71_0223D238: @ 0x0223D238
	push {r4, r5, r6, lr}
	movs r6, #7
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #6
_0223D242:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_020181C4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #8
	blo _0223D242
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A4E4
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_0200A6DC
	movs r6, #0x4b
	movs r4, #0
	lsls r6, r6, #2
_0223D270:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_02009754
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _0223D270
	ldr r0, [r5]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r4, r5, r6, pc}
	thumb_func_end ov71_0223D238

	thumb_func_start ov71_0223D298
ov71_0223D298: @ 0x0223D298
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #8
	blo _0223D2AA
	bl FUN_02022974
_0223D2AA:
	cmp r6, #3
	bls _0223D2B2
	bl FUN_02022974
_0223D2B2:
	lsls r7, r4, #2
	movs r0, #0x57
	adds r1, r5, r7
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02021F9C
	movs r1, #1
	blx FUN_020A81FC
	str r0, [sp]
	lsls r0, r4, #5
	str r0, [sp, #4]
	movs r0, #0x1e
	adds r1, r5, r7
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	lsls r5, r6, #5
	ldr r4, [r0, #0xc]
	movs r1, #0x20
	adds r0, r4, r5
	blx FUN_020C2C54
	ldr r2, [sp]
	ldr r1, [sp, #4]
	adds r0, r4, r5
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C0160
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov71_0223D298

	thumb_func_start ov71_0223D2F4
ov71_0223D2F4: @ 0x0223D2F4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223D320 @ =0x0223D6CC
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201E86C
	movs r0, #2
	movs r1, #0x19
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223D320: .4byte 0x0223D6CC
	thumb_func_end ov71_0223D2F4

	thumb_func_start ov71_0223D324
ov71_0223D324: @ 0x0223D324
	movs r2, #0
	movs r1, #0xff
_0223D328:
	strb r2, [r0]
	strb r1, [r0, #1]
	adds r2, r2, #1
	adds r0, r0, #2
	cmp r2, #4
	blt _0223D328
	bx lr
	.align 2, 0
	thumb_func_end ov71_0223D324

	thumb_func_start ov71_0223D338
ov71_0223D338: @ 0x0223D338
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov71_0223D370
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov71_0223D3A0
	cmp r0, #1
	beq _0223D36C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov71_0223D3D8
	cmp r0, #1
	beq _0223D36C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov71_0223D410
	cmp r0, #1
_0223D36C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov71_0223D338

	thumb_func_start ov71_0223D370
ov71_0223D370: @ 0x0223D370
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	adds r5, r7, #0
	movs r6, #0xff
_0223D37A:
	ldrb r0, [r5, #1]
	cmp r0, #0xff
	beq _0223D38E
	ldrb r0, [r5]
	adds r0, r0, #3
	bl FUN_02004B04
	cmp r0, #0
	bne _0223D38E
	strb r6, [r5, #1]
_0223D38E:
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blt _0223D37A
	adds r0, r7, #0
	bl ov71_0223D454
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov71_0223D370

	thumb_func_start ov71_0223D3A0
ov71_0223D3A0: @ 0x0223D3A0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	adds r1, r6, #0
_0223D3AA:
	ldrb r0, [r1, #1]
	cmp r5, r0
	bne _0223D3CA
	lsls r7, r4, #1
	ldrb r0, [r6, r7]
	adds r1, r5, #0
	bl ov71_0223D470
	ldrb r2, [r6, r7]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r3, r5, #0
	bl ov71_0223D42C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223D3CA:
	adds r4, r4, #1
	adds r1, r1, #2
	cmp r4, #4
	blt _0223D3AA
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov71_0223D3A0

	thumb_func_start ov71_0223D3D8
ov71_0223D3D8: @ 0x0223D3D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r4, #0
	adds r1, r5, #0
_0223D3E2:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _0223D402
	lsls r6, r4, #1
	ldrb r0, [r5, r6]
	adds r1, r7, #0
	bl ov71_0223D470
	ldrb r2, [r5, r6]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl ov71_0223D42C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223D402:
	adds r4, r4, #1
	adds r1, r1, #2
	cmp r4, #4
	blt _0223D3E2
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov71_0223D3D8

	thumb_func_start ov71_0223D410
ov71_0223D410: @ 0x0223D410
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #6]
	adds r4, r1, #0
	bl ov71_0223D470
	ldrb r2, [r5, #6]
	adds r0, r5, #0
	movs r1, #3
	adds r3, r4, #0
	bl ov71_0223D42C
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov71_0223D410

	thumb_func_start ov71_0223D42C
ov71_0223D42C: @ 0x0223D42C
	push {r4, r5}
	cmp r1, #0
	ble _0223D44A
	lsls r4, r1, #1
	adds r4, r0, r4
_0223D436:
	subs r5, r4, #2
	ldrb r5, [r5]
	subs r1, r1, #1
	strb r5, [r4]
	subs r5, r4, #1
	ldrb r5, [r5]
	strb r5, [r4, #1]
	subs r4, r4, #2
	cmp r1, #0
	bgt _0223D436
_0223D44A:
	strb r2, [r0]
	strb r3, [r0, #1]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov71_0223D42C

	thumb_func_start ov71_0223D454
ov71_0223D454: @ 0x0223D454
	movs r3, #0
	movs r1, #0xff
_0223D458:
	ldrb r2, [r0]
	cmp r2, #0xff
	bne _0223D464
	ldrb r2, [r0, #2]
	strb r2, [r0]
	strb r1, [r0, #2]
_0223D464:
	adds r3, r3, #1
	adds r0, r0, #2
	cmp r3, #4
	blt _0223D458
	bx lr
	.align 2, 0
	thumb_func_end ov71_0223D454

	thumb_func_start ov71_0223D470
ov71_0223D470: @ 0x0223D470
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	adds r0, r5, #3
	adds r4, r1, #0
	ldr r2, _0223D49C @ =0x00000694
	adds r1, r0, #0
	bl FUN_02004AE8
	ldr r2, _0223D4A0 @ =0x0223D77C
	lsls r3, r4, #1
	ldrh r2, [r2, r3]
	movs r3, #4
	subs r4, r3, r6
	movs r3, #0x98
	muls r3, r4, r3
	ldr r1, _0223D4A4 @ =0x0000FFFF
	adds r0, r5, #3
	subs r2, r2, r3
	bl FUN_02004F68
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223D49C: .4byte 0x00000694
_0223D4A0: .4byte 0x0223D77C
_0223D4A4: .4byte 0x0000FFFF
	thumb_func_end ov71_0223D470
	@ 0x0223D4A8
