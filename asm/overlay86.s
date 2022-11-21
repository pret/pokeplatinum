	.include "macros/function.inc"


	.text

	thumb_func_start ov86_0223B140
ov86_0223B140: @ 0x0223B140
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #3
	movs r1, #0x3f
	lsls r2, r0, #0x10
	bl FUN_02017FC8
	ldr r1, _0223B298 @ =0x00001BF4
	adds r0, r5, #0
	movs r2, #0x3f
	bl FUN_0200681C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	str r0, [r4, #0xc]
	ldr r2, _0223B29C @ =0x0000015F
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x3f
	bl FUN_0200B144
	ldr r1, _0223B2A0 @ =0x00001BEC
	str r0, [r4, r1]
	movs r0, #0x7d
	lsls r0, r0, #2
	movs r1, #0x3f
	bl FUN_02023790
	ldr r1, _0223B2A4 @ =0x00001BE4
	str r0, [r4, r1]
	movs r0, #0x7d
	lsls r0, r0, #2
	movs r1, #0x3f
	bl FUN_02023790
	ldr r1, _0223B2A8 @ =0x00001BE8
	str r0, [r4, r1]
	movs r0, #0x3f
	bl FUN_0200B358
	ldr r1, _0223B2AC @ =0x00001BE0
	str r0, [r4, r1]
	movs r0, #0x93
	movs r1, #0x3f
	bl FUN_02006C24
	ldr r1, _0223B2B0 @ =0x00001BF0
	str r0, [r4, r1]
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl FUN_0207A0F8
	adds r6, r0, #0
	movs r5, #0
	cmp r6, #0
	ble _0223B1EE
	movs r7, #0x99
	lsls r7, r7, #2
_0223B1C4:
	ldr r0, [r4, #0xc]
	adds r1, r5, #0
	ldr r0, [r0, #4]
	bl FUN_0207A0FC
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223B1E8
	ldr r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r5, [r0, r7]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_0223B1E8:
	adds r5, r5, #1
	cmp r5, r6
	blt _0223B1C4
_0223B1EE:
	adds r0, r4, #0
	bl ov86_0223B74C
	adds r0, r4, #0
	bl ov86_0223B900
	adds r0, r4, #0
	bl ov86_0223BA44
	ldr r0, _0223B2B4 @ =0x00001BCC
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov86_0223C9B0
	ldr r1, _0223B2B8 @ =0x00001BC8
	movs r2, #5
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _0223B2BC @ =0xFFFFF493
	lsls r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 @ =0x00001BC8
	movs r2, #0xf
	ldr r0, [r4, r0]
	ldr r1, _0223B2C0 @ =0xFFFFF923
	lsls r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 @ =0x00001BC8
	movs r2, #0xa
	ldr r0, [r4, r0]
	ldr r1, _0223B2C4 @ =0xFFFFFDB6
	lsls r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 @ =0x00001BC8
	movs r2, #0x23
	ldr r0, [r4, r0]
	ldr r1, _0223B2C8 @ =0x0000024A
	lsls r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 @ =0x00001BC8
	movs r2, #0x1e
	ldr r0, [r4, r0]
	ldr r1, _0223B2CC @ =0x000006DD
	lsls r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 @ =0x00001BC8
	movs r2, #0xa
	ldr r0, [r4, r0]
	ldr r1, _0223B2D0 @ =0x00000B6D
	lsls r2, r2, #0x10
	bl ov86_0223CAA0
	adds r0, r4, #0
	bl ov86_0223CD94
	ldr r1, _0223B2B4 @ =0x00001BCC
	ldr r2, _0223B2D4 @ =0x04000304
	str r0, [r4, r1]
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [r4]
	ldr r0, _0223B2D8 @ =ov86_0223B6CC
	adds r1, r4, #0
	movs r2, #6
	bl ov86_0223B744
	ldr r1, _0223B2DC @ =0x00001BC4
	movs r2, #1
	str r0, [r4, r1]
	ldr r1, _0223B2E0 @ =0x00000493
	movs r0, #8
	bl FUN_02004550
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B298: .4byte 0x00001BF4
_0223B29C: .4byte 0x0000015F
_0223B2A0: .4byte 0x00001BEC
_0223B2A4: .4byte 0x00001BE4
_0223B2A8: .4byte 0x00001BE8
_0223B2AC: .4byte 0x00001BE0
_0223B2B0: .4byte 0x00001BF0
_0223B2B4: .4byte 0x00001BCC
_0223B2B8: .4byte 0x00001BC8
_0223B2BC: .4byte 0xFFFFF493
_0223B2C0: .4byte 0xFFFFF923
_0223B2C4: .4byte 0xFFFFFDB6
_0223B2C8: .4byte 0x0000024A
_0223B2CC: .4byte 0x000006DD
_0223B2D0: .4byte 0x00000B6D
_0223B2D4: .4byte 0x04000304
_0223B2D8: .4byte ov86_0223B6CC
_0223B2DC: .4byte 0x00001BC4
_0223B2E0: .4byte 0x00000493
	thumb_func_end ov86_0223B140

	thumb_func_start ov86_0223B2E4
ov86_0223B2E4: @ 0x0223B2E4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r6, r0, #0
	cmp r1, #0
	beq _0223B2F6
	cmp r1, #1
	beq _0223B362
	b _0223B36E
_0223B2F6:
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _0223B374 @ =0x00001BC4
	ldr r0, [r4, r0]
	bl FUN_0200DA58
	ldr r0, _0223B378 @ =0x00001BCC
	ldr r0, [r4, r0]
	bl ov86_0223CF44
	ldr r0, _0223B37C @ =0x00001BC8
	ldr r0, [r4, r0]
	bl ov86_0223CD34
	adds r0, r4, #0
	bl ov86_0223BD68
	adds r0, r4, #0
	bl ov86_0223BA34
	adds r0, r4, #0
	bl ov86_0223B8C4
	ldr r0, _0223B380 @ =0x00001BE0
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	ldr r0, _0223B384 @ =0x00001BE4
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _0223B388 @ =0x00001BE8
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _0223B38C @ =0x00001BEC
	ldr r0, [r4, r0]
	bl FUN_0200B190
	ldr r0, _0223B390 @ =0x00001BF0
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	adds r0, r6, #0
	bl FUN_02006830
	movs r0, #0x3f
	bl FUN_0201807C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0223B36E
_0223B362:
	bl ov86_0223CD80
	cmp r0, #0
	beq _0223B36E
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223B36E:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_0223B374: .4byte 0x00001BC4
_0223B378: .4byte 0x00001BCC
_0223B37C: .4byte 0x00001BC8
_0223B380: .4byte 0x00001BE0
_0223B384: .4byte 0x00001BE4
_0223B388: .4byte 0x00001BE8
_0223B38C: .4byte 0x00001BEC
_0223B390: .4byte 0x00001BF0
	thumb_func_end ov86_0223B2E4

	thumb_func_start ov86_0223B394
ov86_0223B394: @ 0x0223B394
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #5
	bhs _0223B3C0
	lsls r2, r1, #2
	ldr r1, _0223B3C4 @ =0x0223D3B8
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0223B3BC
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #8]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
_0223B3BC:
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223B3C0:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B3C4: .4byte 0x0223D3B8
	thumb_func_end ov86_0223B394

	thumb_func_start ov86_0223B3C8
ov86_0223B3C8: @ 0x0223B3C8
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0223B3DA
	cmp r0, #1
	beq _0223B3F8
	b _0223B406
_0223B3DA:
	movs r0, #0x10
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x3f
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B406
_0223B3F8:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B406
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_0223B406:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov86_0223B3C8

	thumb_func_start ov86_0223B40C
ov86_0223B40C: @ 0x0223B40C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0223B41E
	cmp r0, #1
	beq _0223B446
	b _0223B45C
_0223B41E:
	movs r0, #2
	str r0, [sp]
	movs r1, #0
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x3f
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	movs r0, #0
	movs r1, #0x1e
	bl FUN_0200564C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B45C
_0223B446:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B45C
	bl FUN_02005684
	cmp r0, #0
	bne _0223B45C
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_0223B45C:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov86_0223B40C

	thumb_func_start ov86_0223B464
ov86_0223B464: @ 0x0223B464
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0223B476
	subs r0, r1, #1
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
_0223B476:
	ldr r1, [r4]
	cmp r1, #6
	bhi _0223B56C
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223B488: @ jump table
	.2byte _0223B496 - _0223B488 - 2 @ case 0
	.2byte _0223B4A0 - _0223B488 - 2 @ case 1
	.2byte _0223B4C0 - _0223B488 - 2 @ case 2
	.2byte _0223B4D6 - _0223B488 - 2 @ case 3
	.2byte _0223B4F6 - _0223B488 - 2 @ case 4
	.2byte _0223B518 - _0223B488 - 2 @ case 5
	.2byte _0223B532 - _0223B488 - 2 @ case 6
_0223B496:
	ldr r0, _0223B570 @ =0x0223D560
	movs r2, #0
	str r2, [r0]
	adds r0, r1, #1
	str r0, [r4]
_0223B4A0:
	ldr r1, _0223B570 @ =0x0223D560
	adds r0, r4, #0
	ldr r1, [r1]
	movs r2, #0
	bl ov86_0223BDE0
	ldr r1, _0223B570 @ =0x0223D560
	adds r0, r4, #0
	ldr r1, [r1]
	movs r2, #1
	bl ov86_0223C104
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B56C
_0223B4C0:
	movs r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B56C
	movs r0, #0x14
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B56C
_0223B4D6:
	ldr r1, _0223B570 @ =0x0223D560
	movs r2, #1
	ldr r1, [r1]
	movs r3, #0
	bl ov86_0223C2CC
	ldr r1, _0223B570 @ =0x0223D560
	adds r0, r4, #0
	ldr r1, [r1]
	movs r2, #1
	bl ov86_0223C3E4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B56C
_0223B4F6:
	movs r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B56C
	adds r0, r4, #0
	movs r1, #1
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B56C
	movs r0, #0x1e
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B56C
_0223B518:
	movs r1, #0
	bl ov86_0223C664
	ldr r1, _0223B570 @ =0x0223D560
	adds r0, r4, #0
	ldr r1, [r1]
	movs r2, #1
	bl ov86_0223C158
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B56C
_0223B532:
	movs r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B56C
	ldr r0, _0223B570 @ =0x0223D560
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, _0223B570 @ =0x0223D560
	ldr r1, [r0]
	adds r1, r1, #1
	str r1, [r0]
	ldr r0, [r4, #4]
	cmp r1, r0
	bge _0223B568
	movs r0, #0x1e
	str r0, [r4, #8]
	movs r0, #1
	str r0, [r4]
	b _0223B56C
_0223B568:
	movs r0, #1
	pop {r4, pc}
_0223B56C:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0223B570: .4byte 0x0223D560
	thumb_func_end ov86_0223B464

	thumb_func_start ov86_0223B574
ov86_0223B574: @ 0x0223B574
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0223B58A
	subs r0, r1, #1
	str r0, [r4, #8]
	add sp, #0x10
	movs r0, #0
	pop {r4, pc}
_0223B58A:
	ldr r1, [r4]
	cmp r1, #8
	bhi _0223B674
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223B59C: @ jump table
	.2byte _0223B5AE - _0223B59C - 2 @ case 0
	.2byte _0223B5CE - _0223B59C - 2 @ case 1
	.2byte _0223B5E4 - _0223B59C - 2 @ case 2
	.2byte _0223B606 - _0223B59C - 2 @ case 3
	.2byte _0223B614 - _0223B59C - 2 @ case 4
	.2byte _0223B630 - _0223B59C - 2 @ case 5
	.2byte _0223B63E - _0223B59C - 2 @ case 6
	.2byte _0223B654 - _0223B59C - 2 @ case 7
	.2byte _0223B664 - _0223B59C - 2 @ case 8
_0223B5AE:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #0x3f
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x10]
	movs r0, #0x69
	movs r3, #3
	bl FUN_02006E60
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B674
_0223B5CE:
	movs r1, #0
	bl ov86_0223BEA0
	adds r0, r4, #0
	movs r1, #1
	bl ov86_0223C1B8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B674
_0223B5E4:
	movs r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B674
	adds r0, r4, #0
	movs r1, #1
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B674
	movs r0, #0x14
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B674
_0223B606:
	movs r1, #0
	bl ov86_0223C20C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B674
_0223B614:
	movs r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B674
	adds r0, r4, #0
	bl ov86_0223C72C
	movs r0, #0x14
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B674
_0223B630:
	movs r1, #0
	bl ov86_0223C840
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B674
_0223B63E:
	movs r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B674
	movs r0, #0x14
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B674
_0223B654:
	ldr r0, _0223B67C @ =0x00001BCC
	ldr r0, [r4, r0]
	bl ov86_0223CF5C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B674
_0223B664:
	ldr r0, _0223B680 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _0223B674
	add sp, #0x10
	movs r0, #1
	pop {r4, pc}
_0223B674:
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223B67C: .4byte 0x00001BCC
_0223B680: .4byte 0x021BF67C
	thumb_func_end ov86_0223B574

	thumb_func_start ov86_0223B684
ov86_0223B684: @ 0x0223B684
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0223B694
	cmp r1, #1
	beq _0223B6A2
	b _0223B6B0
_0223B694:
	movs r1, #0
	bl ov86_0223C26C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223B6B0
_0223B6A2:
	movs r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B6B0
	movs r0, #1
	pop {r4, pc}
_0223B6B0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov86_0223B684

	thumb_func_start ov86_0223B6B4
ov86_0223B6B4: @ 0x0223B6B4
	lsls r1, r1, #2
	adds r1, r0, r1
	ldr r0, _0223B6C8 @ =0x00001BD0
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0223B6C4
	movs r0, #1
	bx lr
_0223B6C4:
	movs r0, #0
	bx lr
	.align 2, 0
_0223B6C8: .4byte 0x00001BD0
	thumb_func_end ov86_0223B6B4

	thumb_func_start ov86_0223B6CC
ov86_0223B6CC: @ 0x0223B6CC
	push {r4, lr}
	sub sp, #8
	ldr r0, _0223B734 @ =0x04000600
	adds r4, r1, #0
	ldr r1, [r0]
	movs r0, #2
	lsls r0, r0, #0x1a
	tst r0, r1
	bne _0223B72E
	blx FUN_020BFAB8
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	ldr r0, _0223B738 @ =0x00001BC8
	ldr r0, [r4, r0]
	bl ov86_0223CD00
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #4
	str r2, [sp, #4]
	blx FUN_020B275C
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	ldr r0, _0223B73C @ =0x00001BCC
	ldr r0, [r4, r0]
	bl ov86_0223D220
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
	ldr r0, _0223B740 @ =0x04000540
	movs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x24]
	bl FUN_020219F8
	bl FUN_0200A858
_0223B72E:
	add sp, #8
	pop {r4, pc}
	nop
_0223B734: .4byte 0x04000600
_0223B738: .4byte 0x00001BC8
_0223B73C: .4byte 0x00001BCC
_0223B740: .4byte 0x04000540
	thumb_func_end ov86_0223B6CC

	thumb_func_start ov86_0223B744
ov86_0223B744: @ 0x0223B744
	ldr r3, _0223B748 @ =FUN_0200DA04
	bx r3
	.align 2, 0
_0223B748: .4byte FUN_0200DA04
	thumb_func_end ov86_0223B744

	thumb_func_start ov86_0223B74C
ov86_0223B74C: @ 0x0223B74C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x3f
	bl FUN_02018340
	str r0, [r5, #0x10]
	ldr r0, _0223B8A0 @ =0x0223D4B0
	bl FUN_0201FE94
	ldr r2, _0223B8A4 @ =0x04000304
	ldr r0, _0223B8A8 @ =0xFFFF7FFF
	ldrh r1, [r2]
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0223B8AC @ =0x0223D3A8
	bl FUN_02018368
	ldr r0, [r5, #0x10]
	ldr r2, _0223B8B0 @ =0x0223D434
	movs r1, #1
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #0x10]
	ldr r2, _0223B8B4 @ =0x0223D3FC
	movs r1, #2
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #0x10]
	ldr r2, _0223B8B8 @ =0x0223D418
	movs r1, #3
	movs r3, #0
	bl FUN_020183C4
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	ldr r0, [r5, #0x10]
	adds r3, r1, #0
	bl FUN_020196C0
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5, #0x10]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r3, #0
	adds r1, r5, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0x10]
	adds r1, #0x14
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x14
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x14
	bl FUN_0201ACCC
	adds r0, r5, #0
	adds r0, #0x14
	bl FUN_0201A9F4
	movs r0, #0x69
	movs r1, #0x3f
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x3f
	str r1, [sp, #0xc]
	movs r1, #3
	ldr r2, [r5, #0x10]
	adds r3, r1, #0
	adds r4, r0, #0
	bl FUN_020070E8
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x3f
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0x3f
	movs r2, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x3f
	str r0, [sp, #0xc]
	movs r1, #2
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0200710C
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl FUN_02019448
	ldr r0, _0223B8BC @ =0x04000040
	movs r1, #0
	strh r1, [r0]
	adds r5, r0, #0
	strh r1, [r0, #4]
	adds r5, #8
	ldrh r3, [r5]
	movs r2, #0x3f
	movs r1, #0x1b
	bics r3, r2
	orrs r1, r3
	movs r3, #0x20
	orrs r1, r3
	strh r1, [r5]
	adds r0, #0xa
	ldrh r5, [r0]
	movs r1, #0x1f
	bics r5, r2
	orrs r1, r5
	orrs r1, r3
	strh r1, [r0]
	lsls r2, r3, #0x15
	ldr r1, [r2]
	ldr r0, _0223B8C0 @ =0xFFFF1FFF
	ands r1, r0
	lsls r0, r3, #8
	orrs r0, r1
	str r0, [r2]
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0223B8A0: .4byte 0x0223D4B0
_0223B8A4: .4byte 0x04000304
_0223B8A8: .4byte 0xFFFF7FFF
_0223B8AC: .4byte 0x0223D3A8
_0223B8B0: .4byte 0x0223D434
_0223B8B4: .4byte 0x0223D3FC
_0223B8B8: .4byte 0x0223D418
_0223B8BC: .4byte 0x04000040
_0223B8C0: .4byte 0xFFFF1FFF
	thumb_func_end ov86_0223B74C

	thumb_func_start ov86_0223B8C4
ov86_0223B8C4: @ 0x0223B8C4
	push {r4, lr}
	movs r2, #1
	lsls r2, r2, #0x1a
	adds r4, r0, #0
	ldr r1, [r2]
	ldr r0, _0223B8FC @ =0xFFFF1FFF
	ands r0, r1
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A8FC
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
_0223B8FC: .4byte 0xFFFF1FFF
	thumb_func_end ov86_0223B8C4

	thumb_func_start ov86_0223B900
ov86_0223B900: @ 0x0223B900
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	blx FUN_020B28CC
	blx FUN_020BFB4C
	ldr r0, _0223B990 @ =0x04000060
	ldr r2, _0223B994 @ =0xFFFFCFFD
	ldrh r1, [r0]
	ands r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	adds r1, r2, #2
	ands r3, r1
	movs r1, #0x10
	orrs r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0223B998 @ =0x0000CFFB
	ands r1, r3
	strh r1, [r0]
	adds r1, r2, #2
	ldrh r3, [r0]
	lsrs r2, r2, #0x11
	ands r3, r1
	movs r1, #8
	orrs r1, r3
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _0223B99C @ =0x04000540
	movs r0, #2
	str r0, [r1]
	ldr r0, _0223B9A0 @ =0xBFFF0000
	str r0, [r1, #0x40]
	movs r0, #1
	adds r1, r0, #0
	blx FUN_020A5A94
	movs r0, #1
	lsls r0, r0, #0xe
	movs r1, #1
	blx FUN_020A5D88
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _0223B9A4 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #2
	orrs r1, r2
	strh r1, [r0]
	movs r1, #0
	adds r0, #0x48
	movs r2, #0x18
	adds r3, r1, #0
	str r1, [sp]
	blx FUN_020BF55C
	adds r0, r4, #0
	bl ov86_0223B9A8
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223B990: .4byte 0x04000060
_0223B994: .4byte 0xFFFFCFFD
_0223B998: .4byte 0x0000CFFB
_0223B99C: .4byte 0x04000540
_0223B9A0: .4byte 0xBFFF0000
_0223B9A4: .4byte 0x04000008
	thumb_func_end ov86_0223B900

	thumb_func_start ov86_0223B9A8
ov86_0223B9A8: @ 0x0223B9A8
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0x3f
	bl FUN_020203AC
	ldr r2, _0223BA2C @ =0x00001BAC
	ldr r3, _0223BA30 @ =0x00000FA4
	str r0, [r4, r2]
	movs r0, #0
	adds r1, r2, #4
	str r0, [r4, r1]
	adds r1, r2, #0
	adds r1, #8
	str r0, [r4, r1]
	adds r1, r2, #0
	adds r1, #0xc
	str r0, [r4, r1]
	adds r1, r2, #0
	adds r1, #0x10
	strh r0, [r4, r1]
	adds r1, r2, #0
	adds r1, #0x12
	strh r0, [r4, r1]
	adds r1, r2, #0
	adds r1, #0x14
	strh r0, [r4, r1]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, r2]
	movs r1, #5
	str r0, [sp, #8]
	adds r0, r2, #4
	adds r2, #0x10
	adds r0, r4, r0
	lsls r1, r1, #0xc
	adds r2, r4, r2
	bl FUN_020206D0
	movs r1, #0
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, _0223BA2C @ =0x00001BAC
	add r0, sp, #0xc
	ldr r1, [r4, r1]
	bl FUN_02020680
	ldr r0, _0223BA2C @ =0x00001BAC
	ldr r0, [r4, r0]
	bl FUN_020203D4
	ldr r2, _0223BA2C @ =0x00001BAC
	movs r0, #1
	movs r1, #0x7d
	ldr r2, [r4, r2]
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	add sp, #0x18
	pop {r4, pc}
	nop
_0223BA2C: .4byte 0x00001BAC
_0223BA30: .4byte 0x00000FA4
	thumb_func_end ov86_0223B9A8

	thumb_func_start ov86_0223BA34
ov86_0223BA34: @ 0x0223BA34
	ldr r1, _0223BA3C @ =0x00001BAC
	ldr r3, _0223BA40 @ =FUN_020203B8
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_0223BA3C: .4byte 0x00001BAC
_0223BA40: .4byte FUN_020203B8
	thumb_func_end ov86_0223BA34

	thumb_func_start ov86_0223BA44
ov86_0223BA44: @ 0x0223BA44
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0x1b
	movs r1, #0x3f
	bl FUN_02006C24
	adds r4, r0, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x3f
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	adds r1, r5, #0
	movs r0, #0x40
	adds r1, #0x28
	movs r2, #0x3f
	bl FUN_020095C4
	str r0, [r5, #0x24]
	movs r0, #0x3f
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x4d
	movs r2, #0
	add r3, sp, #0x18
	bl FUN_02007204
	movs r1, #0x5b
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x3f
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x4e
	movs r2, #0
	add r3, sp, #0x14
	bl FUN_02007220
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r3, r4, #0
	bl ov86_0223BAC8
	adds r0, r4, #0
	bl FUN_02006CA8
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov86_0223BA44

	thumb_func_start ov86_0223BAC8
ov86_0223BAC8: @ 0x0223BAC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xec
	adds r4, r3, #0
	movs r3, #0
	adds r6, r0, #0
	str r1, [sp, #0xc4]
	str r2, [sp, #0xc8]
	str r3, [sp, #0xbc]
	str r3, [sp, #0xcc]
	str r3, [sp, #0xd0]
	str r3, [sp, #0xd4]
	movs r1, #3
	add r0, sp, #0xd8
	strb r1, [r0]
	add r0, sp, #0x5c
	str r0, [sp, #0xb8]
	add r0, sp, #0x48
	str r0, [sp, #0xc0]
	ldr r0, [r6, #0x24]
	movs r1, #0x4c
	str r0, [sp, #0x98]
	add r0, sp, #0xb8
	str r0, [sp, #0x9c]
	movs r0, #1
	str r0, [sp, #0xb0]
	movs r0, #0x3f
	str r3, [sp, #0xa0]
	str r3, [sp, #0xa4]
	str r3, [sp, #0xa8]
	str r0, [sp, #0xb4]
	str r0, [sp]
	adds r2, r3, #0
	adds r0, r4, #0
	add r3, sp, #0x44
	bl FUN_020071B4
	str r0, [sp, #0x2c]
	adds r0, r4, #0
	movs r1, #0x4b
	add r2, sp, #0x40
	movs r3, #0x3f
	bl FUN_020071EC
	str r0, [sp, #0x28]
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r6, #4]
	cmp r0, #0
	bgt _0223BB2C
	b _0223BCAA
_0223BB2C:
	ldr r0, [sp, #0x24]
	adds r5, r6, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	movs r0, #0x32
	lsls r0, r0, #6
	str r0, [sp, #0x18]
	movs r0, #0x5d
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp, #0x14]
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x30]
_0223BB52:
	add r0, sp, #0x5c
	blx FUN_020A818C
	add r0, sp, #0x48
	blx FUN_020A81D0
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x20]
	movs r2, #1
	add r3, sp, #0x5c
	blx FUN_020A8224
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x1c]
	movs r2, #1
	add r3, sp, #0x48
	blx FUN_020A8850
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0xac]
	add r0, sp, #0x98
	bl FUN_02021B90
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r6, #0xc]
	movs r1, #0x99
	lsls r1, r1, #2
	ldr r0, [r0, #4]
	ldr r1, [r5, r1]
	bl FUN_0207A0FC
	adds r7, r0, #0
	add r0, sp, #0xdc
	adds r1, r7, #0
	movs r2, #2
	bl FUN_02075EF4
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x9f
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r7, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	movs r1, #0xa5
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r1, #0
	adds r0, r7, #0
	adds r2, r1, #0
	bl FUN_02074470
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0x9f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0xdc
	str r0, [sp, #0x10]
	add r0, sp, #0xdc
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	ldr r3, _0223BD5C @ =0x0223D450
	movs r2, #0x3f
	bl FUN_02013720
	ldr r1, [sp, #0x30]
	adds r0, r4, #0
	blx FUN_020C2C54
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x34]
	adds r0, r4, #0
	blx FUN_020C02BC
	movs r1, #0
	adds r0, r7, #0
	adds r2, r1, #0
	bl FUN_02074470
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0x9f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0xdc
	str r0, [sp, #0x10]
	add r0, sp, #0xdc
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	ldr r3, _0223BD60 @ =0x0223D460
	movs r2, #0x3f
	bl FUN_02013720
	ldr r1, [sp, #0x38]
	adds r0, r4, #0
	blx FUN_020C2C54
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x3c]
	adds r0, r4, #0
	blx FUN_020C02BC
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x3f
	str r0, [sp, #4]
	add r0, sp, #0xdc
	add r1, sp, #0xdc
	ldrh r0, [r0]
	ldrh r1, [r1, #4]
	ldr r3, [sp, #0x1c]
	movs r2, #1
	bl FUN_02006E84
	movs r2, #0x9f
	lsls r2, r2, #2
	ldr r0, _0223BD64 @ =0x00001BF0
	ldr r2, [r5, r2]
	ldr r0, [r6, r0]
	lsls r2, r2, #0x10
	ldr r1, [sp, #0x14]
	lsrs r2, r2, #0x10
	movs r3, #1
	bl FUN_020789BC
	movs r0, #0x19
	ldr r1, [sp, #0x20]
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	adds r0, #0x20
	str r0, [sp, #0x1c]
	movs r0, #0x19
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [r6, #4]
	adds r0, #0x28
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r1
	bge _0223BCAA
	b _0223BB52
_0223BCAA:
	add r0, sp, #0x5c
	blx FUN_020A818C
	add r0, sp, #0x48
	blx FUN_020A81D0
	movs r1, #0x96
	ldr r0, [sp, #0x44]
	lsls r1, r1, #8
	movs r2, #1
	add r3, sp, #0x5c
	blx FUN_020A8224
	ldr r0, [sp, #0x40]
	movs r1, #0xc0
	movs r2, #1
	add r3, sp, #0x48
	blx FUN_020A8850
	ldr r0, [r6, #0xc]
	ldr r0, [r0]
	bl FUN_02025F30
	cmp r0, #1
	bne _0223BCE0
	movs r0, #1
	b _0223BCE2
_0223BCE0:
	movs r0, #0
_0223BCE2:
	movs r1, #2
	add r2, sp, #0x80
	bl FUN_02076AAC
	movs r0, #0xab
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp]
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x94]
	ldr r3, _0223BD5C @ =0x0223D450
	movs r2, #0x3f
	bl FUN_020135F0
	movs r0, #0xab
	lsls r0, r0, #2
	movs r1, #0x32
	adds r0, r6, r0
	lsls r1, r1, #6
	blx FUN_020C2C54
	movs r0, #0xab
	lsls r0, r0, #2
	movs r1, #0x96
	movs r2, #0x32
	adds r0, r6, r0
	lsls r1, r1, #8
	lsls r2, r2, #6
	blx FUN_020C02BC
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x3f
	str r0, [sp, #4]
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x88]
	movs r2, #1
	movs r3, #0xc0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp, #0xac]
	add r0, sp, #0x98
	bl FUN_02021B90
	movs r1, #0x5a
	lsls r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [r6, r1]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [sp, #0x28]
	bl FUN_020181C4
	ldr r0, [sp, #0x2c]
	bl FUN_020181C4
	add sp, #0xec
	pop {r4, r5, r6, r7, pc}
	nop
_0223BD5C: .4byte 0x0223D450
_0223BD60: .4byte 0x0223D460
_0223BD64: .4byte 0x00001BF0
	thumb_func_end ov86_0223BAC8

	thumb_func_start ov86_0223BD68
ov86_0223BD68: @ 0x0223BD68
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	movs r4, #0
	cmp r0, #0
	ble _0223BD8A
	movs r7, #0x15
	adds r5, r6, #0
	lsls r7, r7, #4
_0223BD7A:
	ldr r0, [r5, r7]
	bl FUN_02021BD4
	ldr r0, [r6, #4]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _0223BD7A
_0223BD8A:
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_020181C4
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, [r6, #0x24]
	bl FUN_02021964
	bl FUN_0200A878
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov86_0223BD68

	thumb_func_start ov86_0223BDAC
ov86_0223BDAC: @ 0x0223BDAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #4]
	movs r2, #0
	str r2, [r0]
	ldr r0, [r1]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
	pop {r4, pc}
	thumb_func_end ov86_0223BDAC

	thumb_func_start ov86_0223BDC4
ov86_0223BDC4: @ 0x0223BDC4
	str r1, [r0]
	str r2, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end ov86_0223BDC4

	thumb_func_start ov86_0223BDCC
ov86_0223BDCC: @ 0x0223BDCC
	ldr r3, _0223BDD8 @ =FUN_0200DA3C
	adds r1, r0, #0
	ldr r0, _0223BDDC @ =ov86_0223BDAC
	movs r2, #0
	bx r3
	nop
_0223BDD8: .4byte FUN_0200DA3C
_0223BDDC: .4byte ov86_0223BDAC
	thumb_func_end ov86_0223BDCC

	thumb_func_start ov86_0223BDE0
ov86_0223BDE0: @ 0x0223BDE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x3f
	movs r1, #0x2c
	str r2, [sp]
	bl FUN_02018144
	ldr r1, _0223BE5C @ =0x00001BD0
	adds r5, r0, #0
	adds r4, r6, r1
	ldr r1, [sp]
	lsls r1, r1, #2
	str r1, [sp, #4]
	ldr r2, [sp, #4]
	adds r1, r5, #0
	adds r2, r4, r2
	bl ov86_0223BDC4
	lsls r0, r7, #2
	adds r1, r6, r0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _0223BE60 @ =0x0223D38C
	str r0, [r5, #8]
	lsls r0, r7, #0x1f
	lsrs r2, r0, #0x1c
	ldr r0, _0223BE64 @ =0x0223D388
	ldr r6, [r0, r2]
	adds r0, r5, #0
	ldr r2, [r3, r2]
	adds r0, #0x18
	adds r1, r6, #0
	movs r3, #0x1c
	bl ov86_0223D264
	movs r0, #6
	adds r1, r5, #0
	str r6, [r5, #0xc]
	lsls r0, r0, #0x10
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #8]
	adds r1, #0xc
	bl FUN_02021C50
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, _0223BE68 @ =ov86_0223BE6C
	adds r1, r5, #0
	movs r2, #0
	bl ov86_0223B744
	ldr r1, [sp, #4]
	str r0, [r4, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BE5C: .4byte 0x00001BD0
_0223BE60: .4byte 0x0223D38C
_0223BE64: .4byte 0x0223D388
_0223BE68: .4byte ov86_0223BE6C
	thumb_func_end ov86_0223BDE0

	thumb_func_start ov86_0223BE6C
ov86_0223BE6C: @ 0x0223BE6C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	bl ov86_0223D284
	str r0, [r4, #0xc]
	adds r1, r4, #0
	ldr r0, [r4, #8]
	adds r1, #0xc
	bl FUN_02021C50
	adds r0, r4, #0
	adds r0, #0x18
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223BE9E
	adds r0, r4, #0
	bl ov86_0223BDCC
	adds r0, r5, #0
	bl FUN_0200DA58
_0223BE9E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_0223BE6C

	thumb_func_start ov86_0223BEA0
ov86_0223BEA0: @ 0x0223BEA0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x3f
	movs r1, #0x2c
	bl FUN_02018144
	ldr r1, _0223BF08 @ =0x00001BD0
	adds r5, r0, #0
	adds r4, r6, r1
	lsls r7, r7, #2
	adds r1, r5, #0
	adds r2, r4, r7
	bl ov86_0223BDC4
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #0x3a
	str r0, [r5, #8]
	adds r0, r5, #0
	movs r2, #0x1a
	adds r0, #0x18
	lsls r1, r1, #0xe
	lsls r2, r2, #0xe
	movs r3, #0x1c
	bl ov86_0223D264
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [r5, #0xc]
	movs r0, #0x3a
	lsls r0, r0, #0xe
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r5, #0x14]
	adds r1, r5, #0
	ldr r0, [r5, #8]
	adds r1, #0xc
	bl FUN_02021C50
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, _0223BF0C @ =ov86_0223BF10
	adds r1, r5, #0
	movs r2, #0
	bl ov86_0223B744
	str r0, [r4, r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BF08: .4byte 0x00001BD0
_0223BF0C: .4byte ov86_0223BF10
	thumb_func_end ov86_0223BEA0

	thumb_func_start ov86_0223BF10
ov86_0223BF10: @ 0x0223BF10
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	bl ov86_0223D284
	str r0, [r4, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #8]
	adds r1, #0xc
	bl FUN_02021C50
	adds r0, r4, #0
	adds r0, #0x18
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223BF42
	adds r0, r4, #0
	bl ov86_0223BDCC
	adds r0, r5, #0
	bl FUN_0200DA58
_0223BF42:
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_0223BF10

	thumb_func_start ov86_0223BF44
ov86_0223BF44: @ 0x0223BF44
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #8
	bl ov86_0223D284
	asrs r0, r0, #0xc
	adds r2, r0, #0
	adds r2, #0x60
	cmp r0, #0
	bge _0223BF5E
	movs r0, #0
_0223BF5E:
	cmp r2, #0
	bge _0223BF64
	movs r2, #0
_0223BF64:
	cmp r0, #0xff
	ble _0223BF6C
	movs r2, #0
	adds r0, r2, #0
_0223BF6C:
	cmp r2, #0xff
	ble _0223BF72
	movs r2, #0xff
_0223BF72:
	lsls r1, r0, #8
	movs r0, #0xff
	lsls r0, r0, #8
	ands r1, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	orrs r0, r1
	ldr r1, _0223BFA4 @ =0x04000040
	strh r0, [r1]
	ldr r0, _0223BFA8 @ =0x000020A0
	strh r0, [r1, #4]
	adds r0, r4, #0
	adds r0, #8
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223BFA0
	adds r0, r4, #0
	bl ov86_0223BDCC
	adds r0, r5, #0
	bl FUN_0200DA58
_0223BFA0:
	pop {r3, r4, r5, pc}
	nop
_0223BFA4: .4byte 0x04000040
_0223BFA8: .4byte 0x000020A0
	thumb_func_end ov86_0223BF44

	thumb_func_start ov86_0223BFAC
ov86_0223BFAC: @ 0x0223BFAC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #8
	bl ov86_0223D284
	asrs r2, r0, #0xc
	ldr r0, [r4, #0x24]
	adds r3, r2, r0
	cmp r2, #0
	bge _0223BFC6
	movs r2, #0
_0223BFC6:
	cmp r3, #0
	bge _0223BFCC
	movs r3, #0
_0223BFCC:
	cmp r2, #0xbf
	ble _0223BFD4
	movs r3, #0
	adds r2, r3, #0
_0223BFD4:
	cmp r3, #0xbf
	ble _0223BFDA
	movs r3, #0xbf
_0223BFDA:
	ldr r0, [r4, #0x1c]
	ldr r6, [r4, #0x20]
	lsls r1, r0, #8
	movs r0, #0xff
	lsls r0, r0, #8
	lsls r6, r6, #0x18
	lsls r2, r2, #8
	ands r1, r0
	lsrs r6, r6, #0x18
	orrs r6, r1
	ldr r1, _0223C018 @ =0x04000040
	ands r2, r0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	strh r6, [r1]
	orrs r0, r2
	strh r0, [r1, #4]
	adds r0, r4, #0
	adds r0, #8
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C014
	adds r0, r4, #0
	bl ov86_0223BDCC
	adds r0, r5, #0
	bl FUN_0200DA58
_0223C014:
	pop {r4, r5, r6, pc}
	nop
_0223C018: .4byte 0x04000040
	thumb_func_end ov86_0223BFAC

	thumb_func_start ov86_0223C01C
ov86_0223C01C: @ 0x0223C01C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #8
	bl ov86_0223D284
	asrs r4, r0, #0xc
	adds r0, r5, #0
	adds r0, #0x1c
	bl ov86_0223D284
	asrs r2, r0, #0xc
	cmp r4, #0
	bge _0223C03C
	movs r4, #0
_0223C03C:
	cmp r2, #0
	bge _0223C042
	movs r2, #0
_0223C042:
	cmp r4, #0xff
	ble _0223C04A
	movs r2, #0
	adds r4, r2, #0
_0223C04A:
	cmp r2, #0xff
	ble _0223C050
	movs r2, #0xff
_0223C050:
	ldr r0, [r5, #0x30]
	movs r3, #0xff
	lsls r2, r2, #0x18
	ldr r1, [r5, #0x34]
	lsls r4, r4, #8
	lsls r3, r3, #8
	ands r4, r3
	lsrs r2, r2, #0x18
	lsls r0, r0, #8
	orrs r4, r2
	ldr r2, _0223C08C @ =0x04000040
	ands r3, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	strh r4, [r2]
	orrs r0, r3
	strh r0, [r2, #4]
	adds r0, r5, #0
	adds r0, #8
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C08A
	adds r0, r5, #0
	bl ov86_0223BDCC
	adds r0, r6, #0
	bl FUN_0200DA58
_0223C08A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223C08C: .4byte 0x04000040
	thumb_func_end ov86_0223C01C

	thumb_func_start ov86_0223C090
ov86_0223C090: @ 0x0223C090
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #8
	bl ov86_0223D284
	asrs r4, r0, #0xc
	adds r0, r5, #0
	adds r0, #0x1c
	bl ov86_0223D284
	asrs r2, r0, #0xc
	cmp r4, #0
	bge _0223C0B0
	movs r4, #0
_0223C0B0:
	cmp r2, #0
	bge _0223C0B6
	movs r2, #0
_0223C0B6:
	cmp r4, #0xbf
	ble _0223C0BE
	movs r2, #0
	adds r4, r2, #0
_0223C0BE:
	cmp r2, #0xbf
	ble _0223C0C4
	movs r2, #0xbf
_0223C0C4:
	ldr r0, [r5, #0x30]
	ldr r3, [r5, #0x34]
	lsls r1, r0, #8
	movs r0, #0xff
	lsls r0, r0, #8
	lsls r3, r3, #0x18
	ands r1, r0
	lsrs r3, r3, #0x18
	orrs r3, r1
	ldr r1, _0223C100 @ =0x04000040
	strh r3, [r1]
	lsls r3, r4, #8
	ands r3, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	orrs r0, r3
	strh r0, [r1, #4]
	adds r0, r5, #0
	adds r0, #8
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C0FE
	adds r0, r5, #0
	bl ov86_0223BDCC
	adds r0, r6, #0
	bl FUN_0200DA58
_0223C0FE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223C100: .4byte 0x04000040
	thumb_func_end ov86_0223C090

	thumb_func_start ov86_0223C104
ov86_0223C104: @ 0x0223C104
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r0, #0x3f
	movs r1, #0x1c
	adds r6, r2, #0
	bl FUN_02018144
	ldr r1, _0223C148 @ =0x00001BD0
	adds r5, r0, #0
	adds r4, r4, r1
	lsls r6, r6, #2
	adds r1, r5, #0
	adds r2, r4, r6
	bl ov86_0223BDC4
	lsls r0, r7, #0x1f
	lsrs r2, r0, #0x1c
	ldr r1, _0223C14C @ =0x0223D398
	adds r0, r5, #0
	ldr r3, _0223C150 @ =0x0223D39C
	ldr r1, [r1, r2]
	ldr r2, [r3, r2]
	adds r0, #8
	movs r3, #0x1c
	bl ov86_0223D264
	ldr r0, _0223C154 @ =ov86_0223BF44
	adds r1, r5, #0
	movs r2, #1
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223C148: .4byte 0x00001BD0
_0223C14C: .4byte 0x0223D398
_0223C150: .4byte 0x0223D39C
_0223C154: .4byte ov86_0223BF44
	thumb_func_end ov86_0223C104

	thumb_func_start ov86_0223C158
ov86_0223C158: @ 0x0223C158
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r0, #0x3f
	movs r1, #0x28
	adds r6, r2, #0
	bl FUN_02018144
	ldr r1, _0223C1A8 @ =0x00001BD0
	adds r5, r0, #0
	adds r4, r4, r1
	lsls r6, r6, #2
	adds r1, r5, #0
	adds r2, r4, r6
	bl ov86_0223BDC4
	adds r0, r5, #0
	movs r1, #2
	ldr r2, _0223C1AC @ =0xFFF60000
	adds r0, #8
	lsls r1, r1, #0x10
	movs r3, #0x1c
	bl ov86_0223D264
	lsls r0, r7, #0x1f
	lsrs r1, r0, #0x1d
	ldr r0, _0223C1B0 @ =0x0223D374
	movs r2, #1
	ldr r0, [r0, r1]
	adds r1, r5, #0
	str r0, [r5, #0x1c]
	adds r0, #0x60
	str r0, [r5, #0x20]
	movs r0, #0x80
	str r0, [r5, #0x24]
	ldr r0, _0223C1B4 @ =ov86_0223BFAC
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223C1A8: .4byte 0x00001BD0
_0223C1AC: .4byte 0xFFF60000
_0223C1B0: .4byte 0x0223D374
_0223C1B4: .4byte ov86_0223BFAC
	thumb_func_end ov86_0223C158

	thumb_func_start ov86_0223C1B8
ov86_0223C1B8: @ 0x0223C1B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #0x3f
	movs r1, #0x28
	bl FUN_02018144
	ldr r1, _0223C200 @ =0x00001BD0
	adds r5, r0, #0
	adds r4, r4, r1
	lsls r6, r6, #2
	adds r1, r5, #0
	adds r2, r4, r6
	bl ov86_0223BDC4
	adds r0, r5, #0
	movs r2, #6
	ldr r1, _0223C204 @ =0xFFF70000
	adds r0, #8
	lsls r2, r2, #0xe
	movs r3, #0x1c
	bl ov86_0223D264
	movs r0, #0x58
	str r0, [r5, #0x1c]
	movs r0, #0xa8
	str r0, [r5, #0x20]
	movs r0, #0x90
	str r0, [r5, #0x24]
	ldr r0, _0223C208 @ =ov86_0223BFAC
	adds r1, r5, #0
	movs r2, #1
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223C200: .4byte 0x00001BD0
_0223C204: .4byte 0xFFF70000
_0223C208: .4byte ov86_0223BFAC
	thumb_func_end ov86_0223C1B8

	thumb_func_start ov86_0223C20C
ov86_0223C20C: @ 0x0223C20C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #0x3f
	movs r1, #0x38
	bl FUN_02018144
	ldr r1, _0223C264 @ =0x00001BD0
	adds r5, r0, #0
	adds r4, r4, r1
	lsls r6, r6, #2
	adds r1, r5, #0
	adds r2, r4, r6
	bl ov86_0223BDC4
	adds r0, r5, #0
	movs r1, #0x16
	adds r0, #8
	lsls r1, r1, #0xe
	movs r2, #0
	movs r3, #0xc
	bl ov86_0223D264
	adds r0, r5, #0
	movs r1, #0x2a
	movs r2, #0xff
	adds r0, #0x1c
	lsls r1, r1, #0xe
	lsls r2, r2, #0xc
	movs r3, #0xc
	bl ov86_0223D264
	movs r0, #0x18
	str r0, [r5, #0x30]
	adds r0, #0x90
	str r0, [r5, #0x34]
	ldr r0, _0223C268 @ =ov86_0223C01C
	adds r1, r5, #0
	movs r2, #1
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r4, r5, r6, pc}
	nop
_0223C264: .4byte 0x00001BD0
_0223C268: .4byte ov86_0223C01C
	thumb_func_end ov86_0223C20C

	thumb_func_start ov86_0223C26C
ov86_0223C26C: @ 0x0223C26C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #0x3f
	movs r1, #0x38
	bl FUN_02018144
	ldr r1, _0223C2C4 @ =0x00001BD0
	adds r5, r0, #0
	adds r4, r4, r1
	lsls r6, r6, #2
	adds r1, r5, #0
	adds r2, r4, r6
	bl ov86_0223BDC4
	movs r1, #6
	adds r0, r5, #0
	lsls r1, r1, #0xe
	adds r0, #8
	lsls r2, r1, #2
	movs r3, #0x18
	bl ov86_0223D264
	adds r0, r5, #0
	movs r1, #0x2a
	movs r2, #6
	adds r0, #0x1c
	lsls r1, r1, #0xe
	lsls r2, r2, #0x10
	movs r3, #0x18
	bl ov86_0223D264
	movs r0, #0
	str r0, [r5, #0x30]
	movs r0, #0xff
	str r0, [r5, #0x34]
	ldr r0, _0223C2C8 @ =ov86_0223C090
	adds r1, r5, #0
	movs r2, #1
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r4, r5, r6, pc}
	nop
_0223C2C4: .4byte 0x00001BD0
_0223C2C8: .4byte ov86_0223C090
	thumb_func_end ov86_0223C26C

	thumb_func_start ov86_0223C2CC
ov86_0223C2CC: @ 0x0223C2CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x3f
	movs r1, #0x78
	str r2, [sp]
	str r3, [sp, #4]
	bl FUN_02018144
	ldr r1, _0223C390 @ =0x00001BD0
	adds r4, r0, #0
	adds r7, r5, r1
	ldr r1, [sp, #4]
	lsls r1, r1, #2
	str r1, [sp, #0xc]
	ldr r2, [sp, #0xc]
	adds r1, r4, #0
	adds r2, r7, r2
	bl ov86_0223BDC4
	lsls r0, r6, #2
	str r0, [sp, #8]
	adds r1, r5, r0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r1, [r1, r0]
	adds r0, #0x24
	str r1, [r4, #8]
	adds r1, r5, r0
	movs r0, #0x28
	muls r0, r6, r0
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x10
	str r1, [r4, #0xc]
	bl FUN_020088E0
	ldr r0, [sp]
	str r0, [r4, #0x6c]
	ldr r0, [sp, #8]
	adds r2, r5, r0
	movs r0, #0x9f
	lsls r0, r0, #2
	ldr r1, [r2, r0]
	adds r0, #0x18
	str r1, [r4, #0x70]
	ldr r0, [r2, r0]
	str r0, [r4, #0x74]
	ldr r0, [r4, #8]
	bl FUN_02021F98
	adds r3, r4, #0
	adds r5, r0, #0
	adds r3, #0x24
	movs r2, #4
_0223C33C:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223C33C
	ldr r0, [r5]
	adds r5, r4, #0
	str r0, [r3]
	adds r3, r4, #0
	adds r5, #0x24
	adds r3, #0x48
	movs r2, #4
_0223C352:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223C352
	ldr r0, [r5]
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #0x48
	blx FUN_020A818C
	movs r3, #0x19
	adds r0, r4, #0
	lsls r3, r3, #8
	adds r2, r6, #0
	muls r2, r3, r2
	lsrs r3, r3, #1
	adds r0, #0x48
	movs r1, #1
	adds r2, r2, r3
	blx FUN_020A81A8
	ldr r0, _0223C394 @ =ov86_0223C398
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	ldr r1, [sp, #0xc]
	str r0, [r7, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C390: .4byte 0x00001BD0
_0223C394: .4byte ov86_0223C398
	thumb_func_end ov86_0223C2CC

	thumb_func_start ov86_0223C398
ov86_0223C398: @ 0x0223C398
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _0223C3B8
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x74]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x18
	bl FUN_02005844
	movs r0, #0
	str r0, [r4, #0x6c]
_0223C3B8:
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_02008900
	adds r2, r0, #0
	bmi _0223C3D4
	movs r1, #0x24
	ldr r0, [r4, #8]
	adds r4, #0x24
	muls r1, r2, r1
	adds r1, r4, r1
	bl FUN_02021F7C
	pop {r3, r4, r5, pc}
_0223C3D4:
	adds r0, r4, #0
	bl ov86_0223BDCC
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov86_0223C398

	thumb_func_start ov86_0223C3E4
ov86_0223C3E4: @ 0x0223C3E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	movs r0, #0x3f
	movs r1, #0x38
	str r2, [sp]
	bl FUN_02018144
	ldr r1, _0223C470 @ =0x00001BD0
	adds r4, r0, #0
	adds r6, r5, r1
	ldr r1, [sp]
	lsls r1, r1, #2
	str r1, [sp, #4]
	ldr r2, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, r2
	bl ov86_0223BDC4
	str r5, [r4, #8]
	ldr r0, [r5, #0x10]
	ldr r1, _0223C474 @ =0x00001BE0
	str r0, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0x14
	str r0, [r4, #0x10]
	ldr r0, [r5, r1]
	str r0, [r4, #0x14]
	adds r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [r4, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r5, r0]
	adds r1, #0xc
	str r0, [r4, #0x1c]
	ldr r0, [r5, r1]
	str r0, [r4, #0x20]
	movs r0, #1
	tst r0, r7
	beq _0223C43C
	movs r0, #0
	b _0223C43E
_0223C43C:
	movs r0, #0x78
_0223C43E:
	lsls r1, r7, #2
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0xc]
	adds r2, r5, r1
	movs r1, #0x99
	lsls r1, r1, #2
	ldr r0, [r0, #4]
	ldr r1, [r2, r1]
	bl FUN_0207A0FC
	str r0, [r4, #0x24]
	ldr r0, [r5, #0xc]
	movs r2, #0
	ldr r0, [r0]
	adds r1, r4, #0
	str r0, [r4, #0x28]
	str r2, [r4, #0x30]
	ldr r0, _0223C478 @ =ov86_0223C58C
	str r2, [r4, #0x34]
	bl FUN_0200D9E8
	ldr r1, [sp, #4]
	str r0, [r6, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223C470: .4byte 0x00001BD0
_0223C474: .4byte 0x00001BE0
_0223C478: .4byte ov86_0223C58C
	thumb_func_end ov86_0223C3E4

	thumb_func_start ov86_0223C47C
ov86_0223C47C: @ 0x0223C47C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	adds r4, r1, #0
	bl FUN_02023C5C
	movs r6, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _0223C4D2
_0223C492:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	adds r2, r6, #0
	bl FUN_02023C9C
	movs r0, #0
	ldr r1, [r5, #0x18]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x88
	subs r0, r1, r0
	lsrs r7, r0, #1
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223C4D8 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [r5, #0x2c]
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	adds r3, r3, r7
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, r0
	blt _0223C492
_0223C4D2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223C4D8: .4byte 0x00010200
	thumb_func_end ov86_0223C47C

	thumb_func_start ov86_0223C4DC
ov86_0223C4DC: @ 0x0223C4DC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl FUN_0200B538
	ldr r0, [r4, #0x24]
	bl FUN_02075B38
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r0, [r4, #0x14]
	movs r3, #3
	bl FUN_0200B60C
	ldr r0, [r4, #0x24]
	bl FUN_02075D6C
	cmp r0, #0
	beq _0223C51C
	cmp r0, #1
	beq _0223C528
	cmp r0, #2
	b _0223C534
_0223C51C:
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x18]
	movs r1, #1
	bl FUN_0200B1B8
	b _0223C53E
_0223C528:
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x18]
	movs r1, #2
	bl FUN_0200B1B8
	b _0223C53E
_0223C534:
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x18]
	movs r1, #3
	bl FUN_0200B1B8
_0223C53E:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x18]
	bl FUN_0200C388
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov86_0223C4DC

	thumb_func_start ov86_0223C54C
ov86_0223C54C: @ 0x0223C54C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	bl ov86_0223D2A8
	adds r4, r0, #0
	beq _0223C562
	cmp r4, #1
	bne _0223C576
_0223C562:
	ldr r0, [r5, #0x24]
	movs r1, #0x99
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	ldr r0, [r5, #0x14]
	movs r1, #0
	bl FUN_0200B8C8
_0223C576:
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x18]
	adds r1, r4, #5
	bl FUN_0200B1B8
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x18]
	bl FUN_0200C388
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_0223C54C

	thumb_func_start ov86_0223C58C
ov86_0223C58C: @ 0x0223C58C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0223C59E
	subs r0, r0, #1
	str r0, [r4, #0x30]
	pop {r3, r4, r5, pc}
_0223C59E:
	ldr r0, [r4, #0x34]
	cmp r0, #3
	bhi _0223C662
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223C5B0: @ jump table
	.2byte _0223C5B8 - _0223C5B0 - 2 @ case 0
	.2byte _0223C5DC - _0223C5B0 - 2 @ case 1
	.2byte _0223C60E - _0223C5B0 - 2 @ case 2
	.2byte _0223C656 - _0223C5B0 - 2 @ case 3
_0223C5B8:
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x1c]
	movs r1, #0
	bl FUN_0200B1B8
	adds r0, r4, #0
	movs r1, #0x10
	bl ov86_0223C47C
	ldr r0, [r4, #0x10]
	bl FUN_0201ACCC
	movs r0, #0x14
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	adds r0, r0, #1
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_0223C5DC:
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x1c]
	movs r1, #0x77
	bl FUN_02074470
	adds r0, r4, #0
	movs r1, #0x30
	bl ov86_0223C47C
	adds r0, r4, #0
	bl ov86_0223C4DC
	adds r0, r4, #0
	movs r1, #0x40
	bl ov86_0223C47C
	ldr r0, [r4, #0x10]
	bl FUN_0201ACCC
	movs r0, #0x14
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	adds r0, r0, #1
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_0223C60E:
	ldr r0, [r4, #0x24]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl FUN_0200B5EC
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x18]
	movs r1, #4
	bl FUN_0200B1B8
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x18]
	bl FUN_0200C388
	adds r0, r4, #0
	movs r1, #0x60
	bl ov86_0223C47C
	adds r0, r4, #0
	bl ov86_0223C54C
	adds r0, r4, #0
	movs r1, #0x70
	bl ov86_0223C47C
	ldr r0, [r4, #0x10]
	bl FUN_0201ACCC
	ldr r0, [r4, #0x34]
	adds r0, r0, #1
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_0223C656:
	adds r0, r4, #0
	bl ov86_0223BDCC
	adds r0, r5, #0
	bl FUN_0200DA58
_0223C662:
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_0223C58C

	thumb_func_start ov86_0223C664
ov86_0223C664: @ 0x0223C664
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r0, #0x3f
	movs r1, #0x30
	bl FUN_02018144
	ldr r1, _0223C6AC @ =0x00001BD0
	adds r4, r0, #0
	adds r6, r5, r1
	lsls r7, r7, #2
	adds r1, r4, #0
	adds r2, r6, r7
	bl ov86_0223BDC4
	ldr r0, [r5, #0x10]
	adds r5, #0x14
	str r0, [r4, #0xc]
	adds r0, r4, #0
	str r5, [r4, #0x10]
	movs r2, #1
	str r2, [r4, #0x2c]
	movs r1, #0
	adds r0, #0x14
	lsls r2, r2, #0x14
	movs r3, #0x1c
	str r1, [r4, #0x28]
	bl ov86_0223D264
	ldr r0, _0223C6B0 @ =ov86_0223C6B4
	adds r1, r4, #0
	movs r2, #0
	bl ov86_0223B744
	str r0, [r6, r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223C6AC: .4byte 0x00001BD0
_0223C6B0: .4byte ov86_0223C6B4
	thumb_func_end ov86_0223C664

	thumb_func_start ov86_0223C6B4
ov86_0223C6B4: @ 0x0223C6B4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0223C6CA
	cmp r0, #1
	beq _0223C6F6
	cmp r0, #2
	beq _0223C70C
	pop {r3, r4, r5, pc}
_0223C6CA:
	adds r0, r4, #0
	adds r0, #0x14
	bl ov86_0223D284
	ldr r1, [r4, #0x2c]
	asrs r3, r0, #0xc
	lsls r1, r1, #0x18
	ldr r0, [r4, #0xc]
	lsrs r1, r1, #0x18
	movs r2, #3
	bl FUN_02019184
	adds r0, r4, #0
	adds r0, #0x14
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C728
	ldr r0, [r4, #0x28]
	adds r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0223C6F6:
	ldr r0, [r4, #0x10]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0x10]
	bl FUN_0201ACCC
	ldr r0, [r4, #0x28]
	adds r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0223C70C:
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0xc]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	bl ov86_0223BDCC
	adds r0, r5, #0
	bl FUN_0200DA58
_0223C728:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov86_0223C6B4

	thumb_func_start ov86_0223C72C
ov86_0223C72C: @ 0x0223C72C
	push {r4, lr}
	sub sp, #0x10
	ldr r2, _0223C830 @ =0x00001BEC
	adds r4, r0, #0
	ldr r0, [r4, r2]
	subs r2, #8
	ldr r2, [r4, r2]
	movs r1, #0xc
	bl FUN_0200B1B8
	ldr r1, _0223C834 @ =0x00001BE4
	movs r0, #0
	ldr r1, [r4, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #1
	lsls r1, r1, #8
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223C838 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r2, _0223C834 @ =0x00001BE4
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	adds r0, #0x14
	bl FUN_0201D78C
	ldr r0, _0223C83C @ =0x00001BE0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, r0]
	ldr r2, [r2]
	movs r1, #0
	bl FUN_0200B498
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	bl FUN_02025F24
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r1, #1
	ldr r0, _0223C83C @ =0x00001BE0
	str r1, [sp, #4]
	ldr r0, [r4, r0]
	movs r3, #5
	bl FUN_0200B60C
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	bl FUN_0202CC58
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0223C83C @ =0x00001BE0
	movs r1, #2
	ldr r0, [r4, r0]
	movs r3, #3
	bl FUN_0200B60C
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	bl FUN_0202CC5C
	movs r3, #2
	adds r2, r0, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0223C83C @ =0x00001BE0
	movs r1, #3
	ldr r0, [r4, r0]
	bl FUN_0200B60C
	ldr r2, _0223C830 @ =0x00001BEC
	movs r1, #0xd
	ldr r0, [r4, r2]
	subs r2, r2, #4
	ldr r2, [r4, r2]
	bl FUN_0200B1B8
	ldr r2, _0223C83C @ =0x00001BE0
	adds r1, r2, #4
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl FUN_0200C388
	ldr r1, _0223C834 @ =0x00001BE4
	movs r0, #0
	ldr r1, [r4, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #1
	lsls r1, r1, #8
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #0xac
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223C838 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r2, _0223C834 @ =0x00001BE4
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	adds r0, #0x14
	bl FUN_0201D78C
	adds r4, #0x14
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, pc}
	nop
_0223C830: .4byte 0x00001BEC
_0223C834: .4byte 0x00001BE4
_0223C838: .4byte 0x00010200
_0223C83C: .4byte 0x00001BE0
	thumb_func_end ov86_0223C72C

	thumb_func_start ov86_0223C840
ov86_0223C840: @ 0x0223C840
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x3f
	movs r1, #0xdc
	bl FUN_02018144
	ldr r1, _0223C904 @ =0x00001BD0
	adds r4, r0, #0
	adds r1, r5, r1
	str r1, [sp, #0xc]
	lsls r1, r6, #2
	str r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r1, r4, #0
	adds r2, r3, r2
	bl ov86_0223BDC4
	movs r0, #0x15
	lsls r0, r0, #4
	str r5, [r4, #0xc]
	adds r0, r5, r0
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x10]
	str r0, [sp, #8]
	str r0, [r4, #0x18]
	ldr r0, [r5, #4]
	str r0, [r4, #0x14]
	cmp r0, #0
	ble _0223C8C6
	ldr r0, _0223C908 @ =0x0223D4D8
	ldr r5, [sp, #8]
	str r0, [sp, #4]
	adds r7, r4, #0
	adds r6, r0, #0
_0223C88C:
	ldr r3, [sp, #4]
	adds r2, r7, #0
	ldm r3!, {r0, r1}
	adds r2, #0x94
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r1, r6, #0
	str r0, [r2]
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl FUN_02021C50
	ldr r0, [r4, #8]
	movs r1, #1
	ldr r0, [r0, r5]
	bl FUN_02021CAC
	ldr r0, [sp, #4]
	ldr r1, [r4, #0x14]
	adds r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	adds r7, #0xc
	adds r0, r0, #1
	adds r6, #0xc
	adds r5, r5, #4
	str r0, [sp, #8]
	cmp r0, r1
	blt _0223C88C
_0223C8C6:
	movs r0, #0
	adds r7, r4, #0
	ldr r6, _0223C90C @ =0x0223D3CC
	ldr r5, _0223C908 @ =0x0223D4D8
	str r0, [sp]
	adds r7, #0x1c
_0223C8D2:
	ldr r1, [r5]
	ldr r2, [r6]
	adds r0, r7, #0
	movs r3, #8
	bl ov86_0223D264
	ldr r0, [sp]
	adds r6, r6, #4
	adds r0, r0, #1
	adds r5, #0xc
	adds r7, #0x14
	str r0, [sp]
	cmp r0, #6
	blt _0223C8D2
	ldr r0, _0223C910 @ =ov86_0223C914
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r0, [r2, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223C904: .4byte 0x00001BD0
_0223C908: .4byte 0x0223D4D8
_0223C90C: .4byte 0x0223D3CC
_0223C910: .4byte ov86_0223C914
	thumb_func_end ov86_0223C840

	thumb_func_start ov86_0223C914
ov86_0223C914: @ 0x0223C914
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, [r5, #0x10]
	movs r4, #0
	str r0, [sp]
	cmp r1, #0
	ble _0223C968
	adds r0, r5, #0
	str r0, [sp, #8]
	adds r0, #0x1c
	adds r7, r5, #0
	str r0, [sp, #8]
	str r5, [sp, #4]
	adds r7, #0x94
	adds r6, r4, #0
_0223C934:
	ldr r0, [sp, #8]
	bl ov86_0223D284
	ldr r1, [sp, #4]
	adds r1, #0x94
	str r0, [r1]
	ldr r0, [r5, #0x14]
	cmp r4, r0
	bge _0223C950
	ldr r0, [r5, #8]
	adds r1, r7, #0
	ldr r0, [r0, r6]
	bl FUN_02021C50
_0223C950:
	ldr r0, [sp, #8]
	ldr r1, [r5, #0x10]
	adds r0, #0x14
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r4, r4, #1
	adds r0, #0xc
	str r0, [sp, #4]
	adds r7, #0xc
	adds r6, r6, #4
	cmp r4, r1
	blt _0223C934
_0223C968:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0223C976
	subs r0, r0, #1
	add sp, #0xc
	str r0, [r5, #0x18]
	pop {r4, r5, r6, r7, pc}
_0223C976:
	cmp r1, #6
	bge _0223C988
	movs r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_0223C988:
	ldr r0, [r5, #0x14]
	adds r2, r5, #0
	subs r1, r0, #1
	movs r0, #0x14
	adds r2, #0x1c
	muls r0, r1, r0
	adds r0, r2, r0
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C9AA
	adds r0, r5, #0
	bl ov86_0223BDCC
	ldr r0, [sp]
	bl FUN_0200DA58
_0223C9AA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov86_0223C914

	thumb_func_start ov86_0223C9B0
ov86_0223C9B0: @ 0x0223C9B0
	push {r3, r4, r5, lr}
	ldr r1, _0223C9F4 @ =0x00000844
	adds r5, r0, #0
	movs r0, #0x3f
	bl FUN_02018144
	adds r4, r0, #0
	beq _0223C9F0
	ldr r0, _0223C9F8 @ =0x0223D540
	movs r1, #1
	str r1, [r0]
	ldr r0, _0223C9FC @ =0x0223D560
	movs r1, #2
	str r1, [r0, #4]
	ldr r0, _0223CA00 @ =0x0000083C
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, _0223CA04 @ =ov86_0223CA64
	adds r1, r4, #0
	movs r2, #5
	bl ov86_0223B744
	ldr r1, _0223CA08 @ =0x00000838
	movs r2, #3
	str r0, [r4, r1]
	adds r1, #8
	str r5, [r4, r1]
	ldr r0, _0223CA0C @ =ov86_0223CA10
	adds r1, r4, #0
	bl ov86_0223B744
	pop {r3, r4, r5, pc}
_0223C9F0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C9F4: .4byte 0x00000844
_0223C9F8: .4byte 0x0223D540
_0223C9FC: .4byte 0x0223D560
_0223CA00: .4byte 0x0000083C
_0223CA04: .4byte ov86_0223CA64
_0223CA08: .4byte 0x00000838
_0223CA0C: .4byte ov86_0223CA10
	thumb_func_end ov86_0223C9B0

	thumb_func_start ov86_0223CA10
ov86_0223CA10: @ 0x0223CA10
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _0223CA54 @ =0x0223D540
	ldr r1, [r1]
	cmp r1, #0
	beq _0223CA44
	adds r1, r4, #0
	movs r2, #2
	adds r0, r4, #0
	adds r1, #0x14
	lsls r2, r2, #0xa
	blx FUN_020C11A8
	ldr r1, _0223CA58 @ =0x00007FFF
	ldr r2, _0223CA5C @ =0x00004210
	adds r0, r4, #0
	movs r3, #0
	blx FUN_020BF7DC
	movs r2, #0
	ldr r1, _0223CA5C @ =0x00004210
	adds r0, r4, #0
	adds r3, r2, #0
	blx FUN_020BF820
	pop {r4, pc}
_0223CA44:
	ldr r1, _0223CA60 @ =0x0223D560
	ldr r2, [r1, #4]
	subs r2, r2, #1
	str r2, [r1, #4]
	bl FUN_0200DA58
	pop {r4, pc}
	nop
_0223CA54: .4byte 0x0223D540
_0223CA58: .4byte 0x00007FFF
_0223CA5C: .4byte 0x00004210
_0223CA60: .4byte 0x0223D560
	thumb_func_end ov86_0223CA10

	thumb_func_start ov86_0223CA64
ov86_0223CA64: @ 0x0223CA64
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _0223CA94 @ =0x0223D540
	ldr r1, [r1]
	cmp r1, #0
	beq _0223CA86
	adds r0, r4, #0
	blx FUN_020C11C8
	ldr r1, _0223CA98 @ =0x00000814
	str r0, [r4, r1]
	adds r0, r4, #0
	ldr r1, [r4, r1]
	adds r0, #0x14
	blx FUN_020C2C54
	pop {r4, pc}
_0223CA86:
	ldr r1, _0223CA9C @ =0x0223D560
	ldr r2, [r1, #4]
	subs r2, r2, #1
	str r2, [r1, #4]
	bl FUN_0200DA58
	pop {r4, pc}
	.align 2, 0
_0223CA94: .4byte 0x0223D540
_0223CA98: .4byte 0x00000814
_0223CA9C: .4byte 0x0223D560
	thumb_func_end ov86_0223CA64

	thumb_func_start ov86_0223CAA0
ov86_0223CAA0: @ 0x0223CAA0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	bl FUN_0201CED0
	ldr r1, _0223CADC @ =0x0000083C
	adds r4, r0, #0
	ldr r3, [r4, r1]
	cmp r3, #8
	bge _0223CAD8
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov86_0223CAE4
	ldr r2, _0223CADC @ =0x0000083C
	ldr r1, [r4, r2]
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r1, r2, #0
	subs r1, #0x24
	str r0, [r3, r1]
	ldr r0, _0223CAE0 @ =0x0223D560
	ldr r1, [r0, #4]
	adds r1, r1, #1
	str r1, [r0, #4]
	ldr r0, [r4, r2]
	adds r0, r0, #1
	str r0, [r4, r2]
_0223CAD8:
	pop {r4, r5, r6, pc}
	nop
_0223CADC: .4byte 0x0000083C
_0223CAE0: .4byte 0x0223D560
	thumb_func_end ov86_0223CAA0

	thumb_func_start ov86_0223CAE4
ov86_0223CAE4: @ 0x0223CAE4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r1, _0223CB5C @ =0x00000838
	movs r0, #0x3f
	adds r7, r2, #0
	adds r4, r3, #0
	bl FUN_02018144
	adds r1, r0, #0
	beq _0223CB58
	ldr r0, _0223CB60 @ =0x00000818
	ldr r2, _0223CB64 @ =0x0223D470
	str r6, [r1]
	lsls r3, r4, #2
	ldr r3, [r2, r3]
	adds r2, r0, #0
	strh r5, [r1, r0]
	subs r2, #8
	str r3, [r1, r2]
	adds r2, r0, #0
	movs r3, #0
	subs r2, #0x14
	str r3, [r1, r2]
	adds r2, r0, #0
	subs r2, #0x10
	str r7, [r1, r2]
	ldr r2, _0223CB68 @ =0x0223D37C
	lsls r6, r4, #1
	ldrsh r6, [r2, r6]
	adds r2, r0, #0
	subs r2, #0xc
	str r6, [r1, r2]
	subs r2, r0, #4
	str r4, [r1, r2]
	adds r4, r5, #0
	subs r4, #0x50
	adds r2, r0, #2
	strh r4, [r1, r2]
	ldr r2, _0223CB6C @ =0xFFFFF000
	adds r4, r0, #4
	strh r2, [r1, r4]
	adds r4, r0, #6
	strh r3, [r1, r4]
	adds r4, r0, #0
	adds r5, #0x50
	adds r4, #8
	strh r5, [r1, r4]
	adds r4, r0, #0
	adds r4, #0xa
	strh r2, [r1, r4]
	adds r0, #0xc
	strh r3, [r1, r0]
	ldr r0, _0223CB70 @ =ov86_0223CB74
	movs r2, #4
	bl ov86_0223B744
	pop {r3, r4, r5, r6, r7, pc}
_0223CB58:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223CB5C: .4byte 0x00000838
_0223CB60: .4byte 0x00000818
_0223CB64: .4byte 0x0223D470
_0223CB68: .4byte 0x0223D37C
_0223CB6C: .4byte 0xFFFFF000
_0223CB70: .4byte ov86_0223CB74
	thumb_func_end ov86_0223CAE4

	thumb_func_start ov86_0223CB74
ov86_0223CB74: @ 0x0223CB74
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, _0223CCE4 @ =0x0223D540
	ldr r1, [r1]
	cmp r1, #0
	bne _0223CB84
	b _0223CCD2
_0223CB84:
	ldr r0, _0223CCE8 @ =0x00000808
	adds r1, r0, #4
	ldr r2, [r5, r0]
	ldr r1, [r5, r1]
	adds r1, r2, r1
	str r1, [r5, r0]
	adds r1, r0, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r0]
	cmp r1, #0
	ble _0223CBB2
	movs r1, #0xaa
	lsls r1, r1, #0xc
	cmp r2, r1
	blt _0223CBC8
	adds r1, r0, #4
	ldr r2, [r5, r1]
	movs r1, #0
	mvns r1, r1
	muls r1, r2, r1
	adds r0, r0, #4
	str r1, [r5, r0]
	b _0223CBC8
_0223CBB2:
	movs r1, #0xa
	lsls r1, r1, #0xc
	cmp r2, r1
	bgt _0223CBC8
	adds r1, r0, #4
	ldr r2, [r5, r1]
	movs r1, #0
	mvns r1, r1
	muls r1, r2, r1
	adds r0, r0, #4
	str r1, [r5, r0]
_0223CBC8:
	ldr r0, _0223CCE8 @ =0x00000808
	ldr r0, [r5, r0]
	asrs r6, r0, #0xc
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D1D4
	movs r2, #0xa
	asrs r1, r0, #0x1f
	lsls r2, r2, #0xa
	movs r3, #0
	blx FUN_020E1F1C
	ldr r3, _0223CCEC @ =0x00000818
	movs r4, #0
	ldrsh r2, [r5, r3]
	subs r3, #0x18
	adds r3, r0, r3
	adcs r1, r4
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	adds r4, r2, r1
	bl FUN_0201D15C
	movs r2, #0xa
	asrs r1, r0, #0x1f
	lsls r2, r2, #0xa
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r6, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r6, #0xc
	orrs r1, r0
	lsls r0, r2, #1
	movs r7, #9
	subs r6, r1, r0
	lsls r7, r7, #6
	adds r0, r2, #0
	subs r1, r4, r7
	adds r0, #0x26
	strh r1, [r5, r0]
	lsls r0, r6, #0x10
	adds r1, r2, #0
	asrs r0, r0, #0x10
	adds r1, #0x28
	strh r0, [r5, r1]
	adds r1, r2, #0
	adds r1, #0x2a
	strh r3, [r5, r1]
	adds r1, r2, #0
	adds r4, r4, r7
	adds r1, #0x2c
	strh r4, [r5, r1]
	adds r1, r2, #0
	adds r1, #0x2e
	strh r0, [r5, r1]
	adds r0, r2, #0
	adds r0, #0x30
	adds r2, #0x14
	strh r3, [r5, r0]
	ldr r0, [r5, r2]
	adds r1, r3, #0
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r3, [sp, #8]
	adds r2, r3, #0
	ldr r0, [r5]
	movs r3, #2
	blx FUN_020BF790
	ldr r0, [r5]
	movs r1, #1
	blx FUN_020BF8F0
	movs r1, #0x81
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	ldr r0, [r5]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	blx FUN_020BF6C0
	ldr r3, _0223CCF0 @ =0x0000081A
	ldr r0, [r5]
	adds r2, r3, #2
	ldrsh r1, [r5, r3]
	adds r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	blx FUN_020BF73C
	movs r3, #0x82
	lsls r3, r3, #4
	adds r2, r3, #2
	ldrsh r1, [r5, r3]
	adds r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r5]
	blx FUN_020BF73C
	ldr r3, _0223CCF4 @ =0x0000082C
	ldr r0, [r5]
	adds r2, r3, #2
	ldrsh r1, [r5, r3]
	adds r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	blx FUN_020BF73C
	ldr r3, _0223CCF8 @ =0x00000826
	ldr r0, [r5]
	adds r2, r3, #2
	ldrsh r1, [r5, r3]
	adds r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	blx FUN_020BF73C
	ldr r0, [r5]
	blx FUN_020BF91C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0223CCD2:
	ldr r1, _0223CCFC @ =0x0223D560
	ldr r2, [r1, #4]
	subs r2, r2, #1
	str r2, [r1, #4]
	bl FUN_0200DA58
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223CCE4: .4byte 0x0223D540
_0223CCE8: .4byte 0x00000808
_0223CCEC: .4byte 0x00000818
_0223CCF0: .4byte 0x0000081A
_0223CCF4: .4byte 0x0000082C
_0223CCF8: .4byte 0x00000826
_0223CCFC: .4byte 0x0223D560
	thumb_func_end ov86_0223CB74

	thumb_func_start ov86_0223CD00
ov86_0223CD00: @ 0x0223CD00
	push {r3, lr}
	cmp r0, #0
	beq _0223CD26
	bl FUN_0201CED0
	adds r3, r0, #0
	ldr r0, _0223CD28 @ =0x04000444
	movs r1, #0
	str r1, [r0]
	ldr r2, _0223CD2C @ =0x00000814
	adds r1, r3, #0
	ldr r2, [r3, r2]
	movs r0, #3
	adds r1, #0x14
	blx FUN_01FF85B8
	ldr r0, _0223CD30 @ =0x04000448
	movs r1, #1
	str r1, [r0]
_0223CD26:
	pop {r3, pc}
	.align 2, 0
_0223CD28: .4byte 0x04000444
_0223CD2C: .4byte 0x00000814
_0223CD30: .4byte 0x04000448
	thumb_func_end ov86_0223CD00

	thumb_func_start ov86_0223CD34
ov86_0223CD34: @ 0x0223CD34
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0223CD74 @ =0x0223D540
	movs r2, #0
	str r2, [r1]
	cmp r0, #0
	beq _0223CD70
	bl FUN_0201CED0
	adds r6, r0, #0
	ldr r0, _0223CD78 @ =0x0000083C
	movs r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	ble _0223CD6A
	ldr r7, _0223CD78 @ =0x0000083C
	adds r5, r6, #0
_0223CD54:
	ldr r0, _0223CD7C @ =0x00000818
	ldr r0, [r5, r0]
	bl FUN_0201CED0
	bl FUN_020181C4
	ldr r0, [r6, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _0223CD54
_0223CD6A:
	adds r0, r6, #0
	bl FUN_020181C4
_0223CD70:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CD74: .4byte 0x0223D540
_0223CD78: .4byte 0x0000083C
_0223CD7C: .4byte 0x00000818
	thumb_func_end ov86_0223CD34

	thumb_func_start ov86_0223CD80
ov86_0223CD80: @ 0x0223CD80
	ldr r0, _0223CD90 @ =0x0223D560
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0223CD8C
	movs r0, #1
	bx lr
_0223CD8C:
	movs r0, #0
	bx lr
	.align 2, 0
_0223CD90: .4byte 0x0223D560
	thumb_func_end ov86_0223CD80

	thumb_func_start ov86_0223CD94
ov86_0223CD94: @ 0x0223CD94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r1, _0223CF28 @ =0x00008D64
	movs r0, #0x3f
	bl FUN_02018144
	str r0, [sp, #0x28]
	bl FUN_0201D2E8
	str r0, [sp, #0x20]
	ldr r0, _0223CF2C @ =0x00003594
	bl FUN_0201D2DC
	movs r0, #0
	ldr r4, [sp, #0x28]
	str r0, [sp, #0x24]
	str r0, [sp, #0x1c]
	adds r0, r4, #0
	str r0, [sp, #0x18]
	adds r0, #0x34
	str r0, [sp, #0x18]
	adds r0, r4, #0
	str r0, [sp, #0x14]
	adds r0, #0x28
	str r0, [sp, #0x14]
	adds r0, r4, #0
	str r0, [sp, #0x10]
	adds r0, #0x2e
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
_0223CDD2:
	ldr r0, [sp, #0x1c]
	lsls r1, r0, #2
	ldr r0, _0223CF30 @ =0x0223D490
	ldr r0, [r0, r1]
	str r0, [r4, #8]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	blo _0223CDEA
	movs r0, #0
	str r0, [sp, #0x1c]
_0223CDEA:
	bl FUN_0201D2E8
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x13
	subs r1, r1, r2
	movs r0, #0x13
	rors r1, r0
	movs r0, #1
	adds r1, r2, r1
	lsls r0, r0, #0xc
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	bl FUN_0201D2E8
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x13
	subs r1, r1, r2
	movs r0, #0x13
	rors r1, r0
	movs r0, #1
	adds r1, r2, r1
	lsls r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	bl FUN_0201D2E8
	movs r1, #0x29
	lsls r1, r1, #4
	blx FUN_020E1F6C
	movs r0, #0x52
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r5, _0223CF34 @ =0x0223D3E4
	str r0, [sp]
	movs r7, #0
	adds r6, r4, #0
_0223CE40:
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #8]
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	movs r0, #2
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #4]
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	movs r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, [sp]
	adds r0, r0, r1
	strh r0, [r6, #0x14]
	movs r0, #0
	strh r0, [r4, #0x28]
	strh r0, [r4, #0x2a]
	strh r0, [r4, #0x2c]
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x17
	subs r2, r2, r1
	movs r0, #0x17
	rors r2, r0
	movs r0, #2
	adds r1, r1, r2
	lsls r0, r0, #8
	adds r0, r1, r0
	strh r0, [r4, #0x2e]
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x17
	subs r2, r2, r1
	movs r0, #0x17
	rors r2, r0
	movs r0, #2
	adds r1, r1, r2
	lsls r0, r0, #8
	adds r0, r1, r0
	strh r0, [r4, #0x30]
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x17
	subs r2, r2, r1
	movs r0, #0x17
	rors r2, r0
	movs r0, #2
	adds r1, r1, r2
	lsls r0, r0, #8
	adds r0, r1, r0
	strh r0, [r4, #0x32]
	ldr r0, [sp, #0x18]
	blx FUN_020BC474
	adds r7, r7, #1
	adds r5, r5, #6
	adds r6, r6, #6
	cmp r7, #4
	blt _0223CE40
	bl FUN_0201D2E8
	movs r1, #7
	ands r0, r1
	subs r5, r0, #1
	cmp r0, #0
	beq _0223CEDE
_0223CECC:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	blx FUN_020BD1E4
	adds r0, r5, #0
	subs r5, r5, #1
	cmp r0, #0
	bne _0223CECC
_0223CEDE:
	ldr r0, [sp, #0x18]
	adds r4, #0x70
	adds r0, #0x70
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, #0x70
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, #0x70
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r0, #0x70
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #0x30
	bge _0223CF04
	b _0223CDD2
_0223CF04:
	ldr r0, [sp, #0x20]
	bl FUN_0201D2DC
	ldr r0, [sp, #0x28]
	movs r2, #0
	str r2, [r0]
	ldr r1, _0223CF38 @ =0x00008D20
	str r2, [r0, #4]
	str r2, [r0, r1]
	ldr r0, _0223CF3C @ =0x04000440
	movs r2, #2
	str r2, [r0]
	ldr r0, _0223CF40 @ =ov86_0223CF6C
	ldr r1, [sp, #0x28]
	bl FUN_0200D9E8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223CF28: .4byte 0x00008D64
_0223CF2C: .4byte 0x00003594
_0223CF30: .4byte 0x0223D490
_0223CF34: .4byte 0x0223D3E4
_0223CF38: .4byte 0x00008D20
_0223CF3C: .4byte 0x04000440
_0223CF40: .4byte ov86_0223CF6C
	thumb_func_end ov86_0223CD94

	thumb_func_start ov86_0223CF44
ov86_0223CF44: @ 0x0223CF44
	push {r4, lr}
	adds r4, r0, #0
	beq _0223CF58
	bl FUN_0201CED0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_0223CF58:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov86_0223CF44

	thumb_func_start ov86_0223CF5C
ov86_0223CF5C: @ 0x0223CF5C
	push {r3, lr}
	cmp r0, #0
	beq _0223CF6A
	bl FUN_0201CED0
	movs r1, #1
	str r1, [r0]
_0223CF6A:
	pop {r3, pc}
	thumb_func_end ov86_0223CF5C

	thumb_func_start ov86_0223CF6C
ov86_0223CF6C: @ 0x0223CF6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	adds r7, r1, #0
	ldr r0, [r7]
	cmp r0, #0
	bne _0223CF7A
	b _0223D1F0
_0223CF7A:
	ldr r1, _0223D1F4 @ =0x00001508
	movs r2, #0x1e
	adds r0, r7, r1
	adds r1, #0x14
	adds r1, r7, r1
	lsls r2, r2, #0xa
	blx FUN_020C11A8
	movs r0, #0x3f
	str r0, [sp]
	movs r0, #0x1f
	str r0, [sp, #4]
	ldr r0, _0223D1F4 @ =0x00001508
	movs r1, #3
	movs r2, #0
	adds r0, r7, r0
	adds r3, r1, #0
	str r2, [sp, #8]
	blx FUN_020BF790
	ldr r0, _0223D1F4 @ =0x00001508
	movs r2, #0
	ldr r1, _0223D1F8 @ =0x00005294
	adds r0, r7, r0
	adds r3, r2, #0
	blx FUN_020BF7DC
	movs r0, #0
	str r0, [sp, #0x1c]
	adds r0, r7, #0
	str r0, [sp, #0x18]
	adds r0, #0x28
	str r0, [sp, #0x18]
	adds r0, r7, #0
	str r0, [sp, #0x14]
	adds r0, #0x2e
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r5, r7, #0
	str r5, [sp, #0xc]
	adds r5, #0x34
	adds r4, r7, #0
	str r0, [sp, #0x10]
	str r5, [sp, #0xc]
_0223CFD2:
	movs r0, #0x24
	ldrsh r0, [r4, r0]
	subs r0, #0x55
	strh r0, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _0223D1FC @ =0xFFFFF000
	cmp r1, r0
	bgt _0223CFEC
	movs r0, #2
	lsls r0, r0, #0xc
	adds r0, r1, r0
	strh r0, [r4, #0x24]
_0223CFEC:
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _0223D200 @ =0x0000019A
	ldr r2, [sp, #0x18]
	subs r0, r1, r0
	strh r0, [r4, #0x12]
	movs r0, #0x12
	ldrsh r0, [r4, r0]
	ldr r1, [sp, #0x14]
	strh r0, [r4, #0x18]
	movs r0, #0x24
	ldrsh r0, [r4, r0]
	strh r0, [r4, #0x1e]
	ldr r0, [sp, #0x10]
	blx FUN_020BD1E4
	ldr r0, [sp, #0xc]
	blx FUN_020BC474
	movs r0, #0x14
	ldrsh r0, [r4, r0]
	movs r2, #0x10
	movs r3, #0x12
	str r0, [sp]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [sp, #0xc]
	adds r0, r5, #0
	blx FUN_020BC4D4
	ldr r0, _0223D1F4 @ =0x00001508
	ldr r2, _0223D204 @ =0x00002D6B
	adds r0, r7, r0
	movs r1, #0
	blx FUN_020BF8C0
	ldr r2, [r4, #8]
	ldr r0, _0223D1F4 @ =0x00001508
	lsls r2, r2, #0x10
	adds r0, r7, r0
	movs r1, #1
	lsrs r2, r2, #0x10
	blx FUN_020BF8C0
	movs r1, #0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, _0223D208 @ =0x00000FFF
	strh r1, [r0, #2]
	ldr r1, _0223D20C @ =0xFFFFF001
	strh r1, [r0, #4]
	add r0, sp, #0x20
	adds r1, r0, #0
	blx FUN_020BD4FC
	add r3, sp, #0x20
	add r1, sp, #0x20
	movs r0, #4
	ldrsh r0, [r1, r0]
	movs r1, #0
	adds r2, r1, #0
	str r0, [sp]
	ldr r0, _0223D1F4 @ =0x00001508
	ldrsh r2, [r3, r2]
	adds r6, r3, #0
	movs r3, #2
	ldrsh r3, [r6, r3]
	adds r0, r7, r0
	blx FUN_020BF864
	movs r1, #0
	adds r0, r6, #0
	strh r1, [r0]
	ldr r1, _0223D20C @ =0xFFFFF001
	strh r1, [r0, #2]
	lsrs r1, r1, #0x14
	strh r1, [r0, #4]
	add r0, sp, #0x20
	adds r1, r0, #0
	blx FUN_020BD4FC
	adds r1, r6, #0
	movs r0, #4
	ldrsh r0, [r1, r0]
	adds r3, r6, #0
	movs r2, #0
	str r0, [sp]
	ldrsh r2, [r3, r2]
	movs r3, #2
	ldr r0, _0223D1F4 @ =0x00001508
	ldrsh r3, [r6, r3]
	adds r0, r7, r0
	movs r1, #1
	blx FUN_020BF864
	ldrh r0, [r4, #0x28]
	ldr r3, _0223D210 @ =0x020F983C
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _0223D210 @ =0x020F983C
	adds r2, r0, r1
	ldrsh r1, [r3, r1]
	movs r3, #2
	ldrsh r2, [r2, r3]
	add r0, sp, #0x28
	bl FUN_020BC5AC
	ldr r2, [sp, #0xc]
	add r0, sp, #0x28
	adds r1, r5, #0
	blx FUN_020BC618
	ldrh r0, [r4, #0x2a]
	ldr r3, _0223D210 @ =0x020F983C
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _0223D210 @ =0x020F983C
	adds r2, r0, r1
	ldrsh r1, [r3, r1]
	movs r3, #2
	ldrsh r2, [r2, r3]
	add r0, sp, #0x28
	bl FUN_020BC5D0
	ldr r2, [sp, #0xc]
	add r0, sp, #0x28
	adds r1, r5, #0
	blx FUN_020BC618
	ldrh r0, [r4, #0x2c]
	ldr r3, _0223D210 @ =0x020F983C
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _0223D210 @ =0x020F983C
	adds r2, r0, r1
	ldrsh r1, [r3, r1]
	movs r3, #2
	ldrsh r2, [r2, r3]
	add r0, sp, #0x28
	bl FUN_020BC5F4
	ldr r2, [sp, #0xc]
	add r0, sp, #0x28
	adds r1, r5, #0
	blx FUN_020BC618
	ldr r2, [r4, #8]
	ldr r0, _0223D1F4 @ =0x00001508
	lsls r2, r2, #0x10
	ldr r1, _0223D214 @ =0x00007FFF
	adds r0, r7, r0
	lsrs r2, r2, #0x10
	movs r3, #0
	blx FUN_020BF820
	ldr r0, _0223D1F4 @ =0x00001508
	adds r0, r7, r0
	blx FUN_020BF650
	ldr r0, _0223D1F4 @ =0x00001508
	adds r1, r5, #0
	adds r0, r7, r0
	blx FUN_020BF69C
	ldr r0, _0223D1F4 @ =0x00001508
	movs r1, #1
	adds r0, r7, r0
	blx FUN_020BF8F0
	ldr r0, _0223D1F4 @ =0x00001508
	movs r1, #0
	ldr r3, _0223D20C @ =0xFFFFF001
	adds r0, r7, r0
	adds r2, r1, #0
	blx FUN_020BF6EC
	movs r1, #0x9b
	ldr r0, _0223D1F4 @ =0x00001508
	mvns r1, r1
	adds r2, r1, #0
	adds r0, r7, r0
	subs r2, #0x31
	movs r3, #0
	blx FUN_020BF73C
	ldr r0, _0223D1F4 @ =0x00001508
	movs r2, #0xcc
	adds r0, r7, r0
	movs r1, #0x9c
	mvns r2, r2
	movs r3, #0
	blx FUN_020BF73C
	ldr r0, _0223D1F4 @ =0x00001508
	movs r1, #0x9c
	adds r0, r7, r0
	movs r2, #0xcd
	movs r3, #0
	blx FUN_020BF73C
	ldr r0, _0223D1F4 @ =0x00001508
	movs r1, #0x9b
	adds r0, r7, r0
	mvns r1, r1
	movs r2, #0xcd
	movs r3, #0
	blx FUN_020BF73C
	ldr r0, _0223D1F4 @ =0x00001508
	adds r0, r7, r0
	blx FUN_020BF91C
	ldr r0, _0223D1F4 @ =0x00001508
	movs r1, #1
	adds r0, r7, r0
	blx FUN_020BF670
	ldr r0, [sp, #0x18]
	adds r4, #0x70
	adds r0, #0x70
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r5, #0x70
	adds r0, #0x70
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, #0x70
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r0, #0x70
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0x30
	bge _0223D1C6
	b _0223CFD2
_0223D1C6:
	ldr r0, _0223D1F4 @ =0x00001508
	adds r0, r7, r0
	blx FUN_020C11C8
	ldr r1, _0223D218 @ =0x00008D1C
	str r0, [r7, r1]
	ldr r0, _0223D21C @ =0x0000151C
	ldr r1, [r7, r1]
	adds r0, r7, r0
	blx FUN_020C2C54
	ldr r0, _0223D218 @ =0x00008D1C
	ldr r1, [r7, r0]
	movs r0, #0x1e
	lsls r0, r0, #0xa
	cmp r1, r0
	blo _0223D1EC
	bl FUN_02022974
_0223D1EC:
	movs r0, #1
	str r0, [r7, #4]
_0223D1F0:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D1F4: .4byte 0x00001508
_0223D1F8: .4byte 0x00005294
_0223D1FC: .4byte 0xFFFFF000
_0223D200: .4byte 0x0000019A
_0223D204: .4byte 0x00002D6B
_0223D208: .4byte 0x00000FFF
_0223D20C: .4byte 0xFFFFF001
_0223D210: .4byte 0x020F983C
_0223D214: .4byte 0x00007FFF
_0223D218: .4byte 0x00008D1C
_0223D21C: .4byte 0x0000151C
	thumb_func_end ov86_0223CF6C

	thumb_func_start ov86_0223D220
ov86_0223D220: @ 0x0223D220
	push {r4, lr}
	cmp r0, #0
	beq _0223D250
	bl FUN_0201CED0
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0223D250
	ldr r0, _0223D254 @ =0x04000444
	movs r1, #0
	str r1, [r0]
	ldr r2, _0223D258 @ =0x00008D1C
	ldr r1, _0223D25C @ =0x0000151C
	ldr r2, [r4, r2]
	movs r0, #3
	adds r1, r4, r1
	blx FUN_01FF85B8
	ldr r0, _0223D260 @ =0x04000448
	movs r1, #1
	str r1, [r0]
	movs r0, #0
	str r0, [r4, #4]
_0223D250:
	pop {r4, pc}
	nop
_0223D254: .4byte 0x04000444
_0223D258: .4byte 0x00008D1C
_0223D25C: .4byte 0x0000151C
_0223D260: .4byte 0x04000448
	thumb_func_end ov86_0223D220

	thumb_func_start ov86_0223D264
ov86_0223D264: @ 0x0223D264
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	str r1, [r4]
	adds r5, r3, #0
	subs r0, r2, r1
	adds r1, r5, #0
	str r2, [r4, #8]
	blx FUN_020E1F6C
	str r0, [r4, #4]
	subs r0, r5, #1
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov86_0223D264

	thumb_func_start ov86_0223D284
ov86_0223D284: @ 0x0223D284
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0223D29A
	subs r1, r1, #1
	str r1, [r0, #0xc]
	ldr r2, [r0]
	ldr r1, [r0, #4]
	adds r1, r2, r1
	str r1, [r0]
	adds r0, r1, #0
	bx lr
_0223D29A:
	movs r1, #1
	str r1, [r0, #0x10]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end ov86_0223D284

	thumb_func_start ov86_0223D2A4
ov86_0223D2A4: @ 0x0223D2A4
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov86_0223D2A4

	thumb_func_start ov86_0223D2A8
ov86_0223D2A8: @ 0x0223D2A8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r6, r2, #0
	bl FUN_02073C88
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x7a
	movs r2, #0
	bl FUN_02074470
	subs r1, r0, #1
	cmp r1, #2
	bhi _0223D2CC
	movs r5, #4
	b _0223D35E
_0223D2CC:
	subs r1, r0, #4
	cmp r1, #1
	bhi _0223D2D6
	movs r5, #3
	b _0223D35E
_0223D2D6:
	cmp r0, #0xf
	bne _0223D2DE
	movs r5, #5
	b _0223D35E
_0223D2DE:
	adds r0, r4, #0
	movs r1, #0x6e
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _0223D2F0
	movs r5, #6
	b _0223D35E
_0223D2F0:
	adds r0, r6, #0
	bl FUN_02025F20
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl FUN_02074470
	cmp r7, r0
	beq _0223D30A
	movs r5, #2
	b _0223D35E
_0223D30A:
	ldr r1, _0223D36C @ =0x00001BE4
	adds r0, r6, #0
	ldr r1, [r5, r1]
	bl FUN_02025EF4
	ldr r2, _0223D370 @ =0x00001BE8
	adds r0, r4, #0
	ldr r2, [r5, r2]
	movs r1, #0x91
	bl FUN_02074470
	ldr r1, _0223D36C @ =0x00001BE4
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	bl FUN_02023BE0
	cmp r0, #0
	beq _0223D334
	movs r5, #2
	b _0223D35E
_0223D334:
	adds r0, r4, #0
	movs r1, #0x99
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x7d
	lsls r1, r1, #4
	cmp r0, r1
	blo _0223D34A
	movs r5, #6
	b _0223D35E
_0223D34A:
	adds r0, r4, #0
	movs r1, #0x93
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223D35C
	movs r5, #0
	b _0223D35E
_0223D35C:
	movs r5, #1
_0223D35E:
	ldr r1, [sp]
	adds r0, r4, #0
	bl FUN_02073CD4
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D36C: .4byte 0x00001BE4
_0223D370: .4byte 0x00001BE8
	thumb_func_end ov86_0223D2A8
	@ 0x0223D374
