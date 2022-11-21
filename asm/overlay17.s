
	thumb_func_start ov17_0223B140
ov17_0223B140: @ 0x0223B140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r1, #1
	lsls r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _0223B404 @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0223B408 @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _0223B40C @ =0xFFFF1FFF
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
	movs r2, #7
	movs r0, #3
	movs r1, #0x15
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	ldr r1, _0223B410 @ =0x00001658
	adds r0, r5, #0
	movs r2, #0x15
	bl FUN_0200681C
	ldr r2, _0223B410 @ =0x00001658
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x15
	bl ov17_0223F140
	str r0, [r4, #8]
	adds r0, r5, #0
	bl FUN_02006840
	movs r1, #0x5b
	str r0, [r4]
	lsls r1, r1, #2
	str r4, [r0, r1]
	ldr r2, [r4]
	movs r3, #2
	adds r0, r1, #4
	strb r3, [r2, r0]
	ldr r0, [r4]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl ov17_0223B8C4
	movs r0, #0x15
	bl FUN_02002F38
	str r0, [r4, #0x5c]
	movs r1, #1
	bl FUN_02003858
	movs r2, #2
	ldr r0, [r4, #0x5c]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x15
	bl FUN_02002F70
	movs r1, #1
	ldr r0, [r4, #0x5c]
	lsls r2, r1, #9
	movs r3, #0x15
	bl FUN_02002F70
	movs r2, #7
	ldr r0, [r4, #0x5c]
	movs r1, #2
	lsls r2, r2, #6
	movs r3, #0x15
	bl FUN_02002F70
	movs r2, #2
	ldr r0, [r4, #0x5c]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x15
	bl FUN_02002F70
	movs r0, #0x15
	bl FUN_02018340
	str r0, [r4, #0x30]
	movs r0, #0x40
	movs r1, #0x15
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	movs r2, #0x23
	adds r1, r4, #0
	lsls r2, r2, #4
	ldr r0, [r4]
	adds r1, #0xc
	adds r2, r4, r2
	bl ov17_0223F88C
	ldr r1, _0223B414 @ =0x0000081C
	str r0, [r4, r1]
	ldr r0, [r4, #0x30]
	bl ov17_0223B728
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r0, #2
	movs r1, #0x15
	bl FUN_02002BB8
	movs r0, #0x15
	bl FUN_0200C6E4
	ldr r1, _0223B418 @ =0x02252DC8
	ldr r2, _0223B41C @ =0x02252D9C
	movs r3, #0x20
	str r0, [r4, #0x24]
	bl FUN_0200C73C
	ldr r1, _0223B420 @ =0x00100010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r0, [r4, #0x24]
	bl FUN_0200C704
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	movs r2, #0x80
	bl FUN_0200C7C0
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	ldr r2, _0223B424 @ =0x02252DB0
	bl FUN_0200CB30
	ldr r0, [r4, #0x24]
	bl FUN_0200C738
	movs r2, #0x11
	movs r1, #0
	lsls r2, r2, #0x10
	bl FUN_0200964C
	movs r0, #0x15
	bl FUN_0200762C
	str r0, [r4, #0x10]
	bl ov17_0223B884
	movs r0, #0x15
	bl FUN_0221FCDC
	movs r1, #1
	str r0, [r4, #0x2c]
	bl FUN_0221FDC0
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xcc
	movs r3, #0x15
	bl FUN_0200B144
	str r0, [r4, #0x44]
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xcd
	movs r3, #0x15
	bl FUN_0200B144
	str r0, [r4, #0x48]
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xd2
	movs r3, #0x15
	bl FUN_0200B144
	str r0, [r4, #0x4c]
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xd3
	movs r3, #0x15
	bl FUN_0200B144
	str r0, [r4, #0x50]
	movs r0, #8
	movs r1, #0x15
	bl FUN_02012744
	str r0, [r4, #0x60]
	movs r0, #0x15
	bl FUN_0200B358
	str r0, [r4, #0x54]
	movs r0, #0x1e
	lsls r0, r0, #4
	movs r1, #0x15
	bl FUN_02023790
	str r0, [r4, #0x58]
	movs r0, #0x2d
	movs r1, #0x15
	bl FUN_02006C24
	adds r5, r0, #0
	movs r0, #0x2e
	movs r1, #0x15
	bl FUN_02006C24
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov17_0223BBA8
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov17_0223BCE0
	adds r0, r4, #0
	bl ov17_0223B858
	adds r0, r4, #0
	bl ov17_02241428
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov17_0223B8F8
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov17_0223BA10
	adds r0, r5, #0
	bl FUN_02006CA8
	adds r0, r6, #0
	bl FUN_02006CA8
	ldr r7, _0223B428 @ =0x00000123
	movs r6, #0
	add r5, sp, #0xc
_0223B364:
	ldr r1, [r4]
	movs r2, #0
	ldrb r0, [r1, r7]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r6, #0
	adds r1, #0x36
	bl FUN_02074470
	strh r0, [r5]
	adds r6, r6, #1
	adds r5, r5, #2
	cmp r6, #4
	blt _0223B364
	ldr r0, _0223B414 @ =0x0000081C
	add r1, sp, #0xc
	ldr r0, [r4, r0]
	bl ov17_02240A80
	ldr r0, _0223B414 @ =0x0000081C
	movs r1, #0
	ldr r0, [r4, r0]
	movs r2, #1
	adds r3, r1, #0
	bl ov17_0223F9C4
	adds r0, r4, #0
	adds r0, #0xc
	bl ov17_022415E4
	bl FUN_02039734
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x15
	str r1, [sp, #8]
	movs r1, #0x1f
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldr r0, _0223B42C @ =ov17_0223B6F0
	ldr r2, _0223B430 @ =0x0000EA60
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #4]
	ldr r0, _0223B434 @ =0x00000824
	movs r1, #1
	strb r1, [r4, r0]
	bl FUN_0201FFD0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r1, _0223B438 @ =0x0000046F
	movs r0, #6
	movs r2, #1
	bl FUN_02004550
	ldr r1, [r4]
	ldr r0, _0223B43C @ =0x00000171
	ldrb r0, [r1, r0]
	bl FUN_020959F4
	ldr r0, _0223B440 @ =ov17_0223B6BC
	adds r1, r4, #0
	bl FUN_02017798
	movs r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223B404: .4byte 0xFFFFE0FF
_0223B408: .4byte 0x04001000
_0223B40C: .4byte 0xFFFF1FFF
_0223B410: .4byte 0x00001658
_0223B414: .4byte 0x0000081C
_0223B418: .4byte 0x02252DC8
_0223B41C: .4byte 0x02252D9C
_0223B420: .4byte 0x00100010
_0223B424: .4byte 0x02252DB0
_0223B428: .4byte 0x00000123
_0223B42C: .4byte ov17_0223B6F0
_0223B430: .4byte 0x0000EA60
_0223B434: .4byte 0x00000824
_0223B438: .4byte 0x0000046F
_0223B43C: .4byte 0x00000171
_0223B440: .4byte ov17_0223B6BC
	thumb_func_end ov17_0223B140

	thumb_func_start ov17_0223B444
ov17_0223B444: @ 0x0223B444
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02094E98
	ldr r0, [r5]
	cmp r0, #0
	beq _0223B466
	cmp r0, #1
	beq _0223B474
	cmp r0, #2
	beq _0223B54E
	b _0223B564
_0223B466:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0223B564
	movs r0, #1
	str r0, [r5]
	b _0223B564
_0223B474:
	ldr r0, [r4]
	bl FUN_02094EDC
	cmp r0, #1
	bne _0223B4EE
	ldr r2, _0223B56C @ =0x00000822
	ldr r1, _0223B570 @ =0x00001648
	ldrh r2, [r4, r2]
	adds r0, r4, #0
	adds r1, r4, r1
	lsls r3, r2, #2
	ldr r2, _0223B574 @ =0x02252E10
	ldr r2, [r2, r3]
	blx r2
	subs r1, r0, #1
	cmp r1, #1
	bhi _0223B4B8
	cmp r0, #1
	bne _0223B4A2
	ldr r0, _0223B56C @ =0x00000822
	ldrh r1, [r4, r0]
	adds r1, r1, #1
	b _0223B4A8
_0223B4A2:
	ldr r0, _0223B578 @ =0x0000164A
	ldrh r1, [r4, r0]
	ldr r0, _0223B56C @ =0x00000822
_0223B4A8:
	strh r1, [r4, r0]
	ldr r0, _0223B570 @ =0x00001648
	movs r1, #0
	adds r0, r4, r0
	movs r2, #8
	blx FUN_020C4CF4
	b _0223B4EE
_0223B4B8:
	cmp r0, #3
	bne _0223B4EE
	ldr r0, _0223B57C @ =0x00001650
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223B4EE
	movs r1, #2
	subs r0, #8
	str r1, [r5]
	adds r0, r4, r0
	movs r1, #0
	movs r2, #8
	blx FUN_020C4CF4
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x15
	movs r1, #0x20
	str r0, [sp, #8]
	movs r0, #2
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	b _0223B564
_0223B4EE:
	movs r0, #0xc3
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov17_0224F35C
	movs r0, #0xc3
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov17_0224F3D8
	ldr r0, _0223B57C @ =0x00001650
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223B564
	movs r0, #0xc3
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov17_0224F3D0
	cmp r0, #0
	bne _0223B564
	ldr r0, [r4]
	bl FUN_02094EDC
	cmp r0, #0
	bne _0223B564
	movs r0, #2
	str r0, [r5]
	ldr r0, _0223B570 @ =0x00001648
	movs r1, #0
	adds r0, r4, r0
	movs r2, #8
	blx FUN_020C4CF4
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x15
	movs r1, #0x20
	str r0, [sp, #8]
	movs r0, #2
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	b _0223B564
_0223B54E:
	ldr r0, _0223B57C @ =0x00001650
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223B564
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0223B564
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_0223B564:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223B56C: .4byte 0x00000822
_0223B570: .4byte 0x00001648
_0223B574: .4byte 0x02252E10
_0223B578: .4byte 0x0000164A
_0223B57C: .4byte 0x00001650
	thumb_func_end ov17_0223B444

	thumb_func_start ov17_0223B580
ov17_0223B580: @ 0x0223B580
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl FUN_020141E4
	ldr r0, [r4, #0x2c]
	bl FUN_0221FDF4
	adds r0, r4, #0
	bl ov17_0223B9A4
	adds r0, r4, #0
	bl ov17_0223BAD0
	adds r0, r4, #0
	bl ov17_0223BCDC
	adds r0, r4, #0
	bl ov17_0223BCE4
	adds r0, r4, #0
	adds r0, #0x34
	bl FUN_0201A8FC
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x30]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x30]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x30]
	bl ov17_0223F864
	ldr r0, _0223B6AC @ =0x0000081C
	ldr r0, [r4, r0]
	bl ov17_0223F960
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	bl FUN_0200D0B0
	ldr r0, [r4, #0x24]
	bl FUN_0200C8D4
	bl FUN_0201DC3C
	adds r0, r4, #0
	adds r0, #0xc
	bl ov17_022416E4
	ldr r0, [r4, #0x10]
	bl FUN_02007B6C
	movs r0, #2
	bl FUN_02002C60
	ldr r0, [r4, #0x60]
	bl FUN_020127BC
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl FUN_02002FA0
	ldr r0, [r4, #0x5c]
	movs r1, #1
	bl FUN_02002FA0
	ldr r0, [r4, #0x5c]
	movs r1, #2
	bl FUN_02002FA0
	ldr r0, [r4, #0x5c]
	movs r1, #3
	bl FUN_02002FA0
	ldr r0, [r4, #0x5c]
	bl FUN_02002F54
	ldr r0, [r4, #0x58]
	bl FUN_020237BC
	ldr r0, [r4, #0x54]
	bl FUN_0200B3F0
	ldr r0, [r4, #0x44]
	bl FUN_0200B190
	ldr r0, [r4, #0x48]
	bl FUN_0200B190
	ldr r0, [r4, #0x4c]
	bl FUN_0200B190
	ldr r0, [r4, #0x50]
	bl FUN_0200B190
	ldr r0, [r4, #0x30]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	bl FUN_0200DA58
	ldr r0, [r4, #8]
	bl ov17_0223F1E0
	bl FUN_0201E530
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #0x15
	bl FUN_0201807C
	bl FUN_02095A24
	bl FUN_02039794
	ldr r0, _0223B6B0 @ =0x0000000B
	bl FUN_02006514
	ldr r0, _0223B6B4 @ =0x0000000C
	bl FUN_02006514
	ldr r0, _0223B6B8 @ =0x00000016
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B6AC: .4byte 0x0000081C
_0223B6B0: .4byte 0x0000000B
_0223B6B4: .4byte 0x0000000C
_0223B6B8: .4byte 0x00000016
	thumb_func_end ov17_0223B580

	thumb_func_start ov17_0223B6BC
ov17_0223B6BC: @ 0x0223B6BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_02008A94
	bl FUN_0201DCAC
	bl FUN_0200C800
	ldr r0, [r4, #0x5c]
	bl FUN_02003694
	ldr r0, [r4, #0x30]
	bl FUN_0201C2B8
	ldr r3, _0223B6E8 @ =0x027E0000
	ldr r1, _0223B6EC @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_0223B6E8: .4byte 0x027E0000
_0223B6EC: .4byte 0x00003FF8
	thumb_func_end ov17_0223B6BC

	thumb_func_start ov17_0223B6F0
ov17_0223B6F0: @ 0x0223B6F0
	push {r4, lr}
	ldr r0, _0223B720 @ =0x00000824
	adds r4, r1, #0
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223B716
	ldr r0, [r4, #0x10]
	bl FUN_02007768
	bl FUN_0221F8F0
	ldr r0, [r4, #0x28]
	bl FUN_0200C7EC
	bl FUN_0200C808
	ldr r0, _0223B724 @ =0x04000540
	movs r1, #1
	str r1, [r0]
_0223B716:
	ldr r1, [r4, #0x30]
	movs r0, #0x15
	bl FUN_02038A1C
	pop {r4, pc}
	.align 2, 0
_0223B720: .4byte 0x00000824
_0223B724: .4byte 0x04000540
	thumb_func_end ov17_0223B6F0

	thumb_func_start ov17_0223B728
ov17_0223B728: @ 0x0223B728
	push {r4, r5, lr}
	sub sp, #0x8c
	adds r4, r0, #0
	bl FUN_0201FF00
	ldr r5, _0223B848 @ =0x02252DE8
	add r3, sp, #0x10
	movs r2, #5
_0223B738:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223B738
	add r0, sp, #0x10
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
	ldr r5, _0223B84C @ =0x02252D8C
	add r3, sp, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0223B850 @ =0x02252E50
	add r3, sp, #0x38
	movs r2, #0xa
_0223B798:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223B798
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
	add r2, sp, #0x38
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
	adds r0, r4, #0
	movs r1, #2
	add r2, sp, #0x54
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #3
	add r2, sp, #0x70
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r1, _0223B854 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #2
	orrs r0, r2
	strh r0, [r1]
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	bl ov17_0223F80C
	add sp, #0x8c
	pop {r4, r5, pc}
	.align 2, 0
_0223B848: .4byte 0x02252DE8
_0223B84C: .4byte 0x02252D8C
_0223B850: .4byte 0x02252E50
_0223B854: .4byte 0x04000008
	thumb_func_end ov17_0223B728

	thumb_func_start ov17_0223B858
ov17_0223B858: @ 0x0223B858
	push {lr}
	sub sp, #0x14
	adds r1, r0, #0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #3
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x30]
	adds r1, #0x34
	movs r2, #1
	movs r3, #0xb
	bl FUN_0201A7E8
	add sp, #0x14
	pop {pc}
	thumb_func_end ov17_0223B858

	thumb_func_start ov17_0223B884
ov17_0223B884: @ 0x0223B884
	push {r3, r4, r5, lr}
	ldr r3, _0223B8BC @ =0x02100DEC
	movs r0, #2
	movs r1, #0
	ldr r3, [r3]
	lsls r0, r0, #0xe
	adds r2, r1, #0
	blx r3
	ldr r3, _0223B8C0 @ =0x02100DF4
	movs r1, #0
	adds r4, r0, #0
	ldr r3, [r3]
	movs r0, #0x80
	adds r2, r1, #0
	blx r3
	adds r5, r0, #0
	cmp r4, #0
	bne _0223B8AC
	bl FUN_02022974
_0223B8AC:
	cmp r5, #0
	bne _0223B8B4
	bl FUN_02022974
_0223B8B4:
	bl FUN_02014000
	pop {r3, r4, r5, pc}
	nop
_0223B8BC: .4byte 0x02100DEC
_0223B8C0: .4byte 0x02100DF4
	thumb_func_end ov17_0223B884

	thumb_func_start ov17_0223B8C4
ov17_0223B8C4: @ 0x0223B8C4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _0223B8D2
	bl FUN_02022974
_0223B8D2:
	ldr r1, _0223B8F4 @ =0x00000172
	movs r0, #0
	adds r2, r1, #0
	adds r2, #0xbf
_0223B8DA:
	ldr r3, [r4]
	adds r3, r3, r0
	ldrb r5, [r3, r1]
	adds r3, r4, r0
	adds r0, r0, #1
	strb r5, [r3, r2]
	cmp r0, #4
	blt _0223B8DA
	adds r0, r4, #0
	bl ov17_02243C28
	pop {r3, r4, r5, pc}
	nop
_0223B8F4: .4byte 0x00000172
	thumb_func_end ov17_0223B8C4

	thumb_func_start ov17_0223B8F8
ov17_0223B8F8: @ 0x0223B8F8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r5, r0, #0
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223B998 @ =0x000080E9
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl FUN_0200CDC4
	str r4, [sp]
	movs r0, #9
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223B99C @ =0x000080ED
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl FUN_0200CDC4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	adds r2, r4, #0
	bl ov17_02243040
	adds r0, r5, #0
	bl ov17_02242FA4
	adds r0, r5, #0
	ldr r1, [r5]
	adds r0, #0xc
	adds r2, r4, #0
	bl ov17_02241928
	adds r0, r5, #0
	ldr r2, [r5]
	ldr r1, _0223B9A0 @ =0x0000011E
	adds r0, #0xc
	ldrb r1, [r2, r1]
	adds r2, r4, #0
	bl ov17_02241D94
	ldr r0, [r5, #0x5c]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	adds r3, r4, #0
	bl ov17_022419AC
	adds r0, r5, #0
	adds r0, #0xc
	bl ov17_02241A24
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	adds r2, r4, #0
	bl ov17_02241E58
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	adds r2, r4, #0
	bl ov17_02242154
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B998: .4byte 0x000080E9
_0223B99C: .4byte 0x000080ED
_0223B9A0: .4byte 0x0000011E
	thumb_func_end ov17_0223B8F8

	thumb_func_start ov17_0223B9A4
ov17_0223B9A4: @ 0x0223B9A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc
	bl ov17_02241E24
	adds r0, r4, #0
	adds r0, #0xc
	bl ov17_0224197C
	adds r0, r4, #0
	bl ov17_02242FC0
	adds r0, r4, #0
	adds r0, #0xc
	bl ov17_022430F8
	ldr r0, [r4, #0x28]
	bl ov17_0224308C
	ldr r0, [r4, #0x28]
	ldr r1, _0223BA08 @ =0x000080E9
	bl FUN_0200D080
	ldr r0, [r4, #0x28]
	ldr r1, _0223BA0C @ =0x000080ED
	bl FUN_0200D080
	adds r0, r4, #0
	adds r0, #0xc
	bl ov17_02241A64
	ldr r0, [r4, #0x28]
	bl ov17_02241A00
	ldr r0, [r4, #0x28]
	bl ov17_02241EA4
	adds r0, r4, #0
	adds r0, #0xc
	bl ov17_02241EF0
	ldr r0, [r4, #0x28]
	bl ov17_022421E0
	adds r4, #0xc
	adds r0, r4, #0
	bl ov17_02242248
	pop {r4, pc}
	nop
_0223BA08: .4byte 0x000080E9
_0223BA0C: .4byte 0x000080ED
	thumb_func_end ov17_0223B9A4

	thumb_func_start ov17_0223BA10
ov17_0223BA10: @ 0x0223BA10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r5, r0, #0
	str r4, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #3
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223BABC @ =0x000080EF
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl FUN_0200CDC4
	str r4, [sp]
	movs r0, #9
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223BAC0 @ =0x000080F0
	movs r1, #3
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl FUN_0200CDC4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	adds r2, r4, #0
	bl ov17_0224131C
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	adds r2, r4, #0
	bl ov17_02241270
	ldr r2, _0223BAC4 @ =0x000080F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	adds r3, r2, #0
	bl ov17_0224F0F0
	ldr r7, _0223BAC8 @ =0x000080F6
	ldr r6, _0223BACC @ =0x00000123
	movs r4, #0
_0223BA80:
	ldr r1, [r5]
	movs r2, #0
	ldrb r0, [r1, r6]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0x36
	bl FUN_02074470
	cmp r0, #0
	beq _0223BAA0
	movs r1, #0xb
	bl FUN_020790C4
	adds r3, r0, #0
	b _0223BAA2
_0223BAA0:
	movs r3, #0
_0223BAA2:
	adds r0, r4, r7
	str r0, [sp]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r2, #2
	bl ov17_0224F0BC
	adds r4, r4, #1
	cmp r4, #4
	blt _0223BA80
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BABC: .4byte 0x000080EF
_0223BAC0: .4byte 0x000080F0
_0223BAC4: .4byte 0x000080F4
_0223BAC8: .4byte 0x000080F6
_0223BACC: .4byte 0x00000123
	thumb_func_end ov17_0223BA10

	thumb_func_start ov17_0223BAD0
ov17_0223BAD0: @ 0x0223BAD0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x28]
	ldr r1, _0223BB08 @ =0x000080EF
	bl FUN_0200D080
	ldr r0, [r5, #0x28]
	bl ov17_022413B4
	ldr r0, [r5, #0x28]
	bl ov17_022412F0
	ldr r1, _0223BB0C @ =0x000080F4
	ldr r0, [r5, #0x28]
	adds r2, r1, #0
	bl ov17_0224F140
	ldr r6, _0223BB10 @ =0x000080F6
	movs r4, #0
_0223BAF6:
	ldr r0, [r5, #0x28]
	adds r1, r4, r6
	bl ov17_0224F138
	adds r4, r4, #1
	cmp r4, #4
	blt _0223BAF6
	pop {r4, r5, r6, pc}
	nop
_0223BB08: .4byte 0x000080EF
_0223BB0C: .4byte 0x000080F4
_0223BB10: .4byte 0x000080F6
	thumb_func_end ov17_0223BAD0

	thumb_func_start ov17_0223BB14
ov17_0223BB14: @ 0x0223BB14
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #0
	bne _0223BB7E
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xe
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	movs r0, #0x2d
	movs r1, #3
	movs r3, #2
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	movs r0, #0x2d
	movs r1, #5
	movs r3, #2
	bl FUN_02006E60
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	adds r0, r5, #0
	bl ov17_02241428
	cmp r4, #1
	bne _0223BBA2
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0223BB7E:
	movs r0, #2
	lsls r1, r0, #0xd
	movs r2, #0
	movs r3, #0x15
	bl FUN_02019690
	ldr r0, [r5, #0x30]
	movs r1, #2
	bl FUN_02019EBC
	movs r0, #1
	movs r1, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #1
	bl FUN_02019060
_0223BBA2:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_0223BB14

	thumb_func_start ov17_0223BBA8
ov17_0223BBA8: @ 0x0223BBA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r4, r1, #0
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #2
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #4
	bl FUN_0200710C
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov17_0223BB14
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #0x2d
	movs r2, #0x1e
	movs r3, #0x15
	bl FUN_02003050
	movs r0, #0x15
	movs r1, #0x20
	bl FUN_02018144
	adds r7, r0, #0
	movs r0, #0x15
	movs r1, #0x20
	bl FUN_02018144
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x5c]
	movs r1, #0
	bl FUN_02003164
	adds r4, r0, #0
	ldr r0, [r5, #0x5c]
	movs r1, #0
	bl FUN_0200316C
	str r0, [sp, #0x14]
	ldr r0, _0223BCD4 @ =0x022536B4
	adds r1, r7, #0
	ldrb r0, [r0]
	movs r2, #0x20
	lsls r6, r0, #5
	adds r0, r4, r6
	blx FUN_020C4B18
	ldr r1, [r5]
	ldr r0, _0223BCD8 @ =0x00000123
	movs r2, #0x20
	ldrb r1, [r1, r0]
	ldr r0, _0223BCD4 @ =0x022536B4
	ldrb r0, [r0, r1]
	ldr r1, [sp, #0x10]
	lsls r0, r0, #5
	adds r0, r4, r0
	blx FUN_020C4B18
	ldr r2, [r5]
	ldr r1, _0223BCD8 @ =0x00000123
	adds r0, r7, #0
	ldrb r2, [r2, r1]
	ldr r1, _0223BCD4 @ =0x022536B4
	ldrb r1, [r1, r2]
	movs r2, #0x20
	lsls r1, r1, #5
	adds r1, r4, r1
	blx FUN_020C4B18
	ldr r0, [sp, #0x10]
	adds r1, r4, r6
	movs r2, #0x20
	blx FUN_020C4B18
	ldr r2, [r5]
	ldr r1, _0223BCD8 @ =0x00000123
	adds r0, r7, #0
	ldrb r2, [r2, r1]
	ldr r1, _0223BCD4 @ =0x022536B4
	ldrb r1, [r1, r2]
	lsls r2, r1, #5
	ldr r1, [sp, #0x14]
	adds r1, r1, r2
	movs r2, #0x20
	blx FUN_020C4B18
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r1, r1, r6
	movs r2, #0x20
	blx FUN_020C4B18
	adds r0, r7, #0
	bl FUN_020181C4
	ldr r0, [sp, #0x10]
	bl FUN_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BCD4: .4byte 0x022536B4
_0223BCD8: .4byte 0x00000123
	thumb_func_end ov17_0223BBA8

	thumb_func_start ov17_0223BCDC
ov17_0223BCDC: @ 0x0223BCDC
	bx lr
	.align 2, 0
	thumb_func_end ov17_0223BCDC

	thumb_func_start ov17_0223BCE0
ov17_0223BCE0: @ 0x0223BCE0
	bx lr
	.align 2, 0
	thumb_func_end ov17_0223BCE0

	thumb_func_start ov17_0223BCE4
ov17_0223BCE4: @ 0x0223BCE4
	bx lr
	.align 2, 0
	thumb_func_end ov17_0223BCE4

	thumb_func_start ov17_0223BCE8
ov17_0223BCE8: @ 0x0223BCE8
	push {r4, lr}
	adds r4, r1, #0
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223BD2A
	ldr r1, [r2]
	ldr r0, _0223BD50 @ =0x00000177
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0223BD0A
	ldr r0, [r4, #4]
	cmp r0, #0x78
	bge _0223BD0A
	adds r0, r0, #1
	str r0, [r4, #4]
	b _0223BD4A
_0223BD0A:
	movs r0, #0xc3
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r1, r2, #0
	movs r2, #2
	movs r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BD4A
	movs r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223BD4A
_0223BD2A:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r2]
	ldr r4, _0223BD54 @ =0x00000127
	adds r0, r2, r0
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BD4A
	movs r0, #1
	pop {r4, pc}
_0223BD4A:
	movs r0, #0
	pop {r4, pc}
	nop
_0223BD50: .4byte 0x00000177
_0223BD54: .4byte 0x00000127
	thumb_func_end ov17_0223BCE8

	thumb_func_start ov17_0223BD58
ov17_0223BD58: @ 0x0223BD58
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl FUN_0209590C
	cmp r0, #0
	bne _0223BD6C
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223BD6C:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223BD9E
	ldr r3, _0223BDC4 @ =0x0000040C
	movs r1, #0
	strb r1, [r5, r3]
	adds r0, r3, #2
	strb r1, [r5, r0]
	adds r0, r3, #3
	strb r1, [r5, r0]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r3, #0xe4
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0x14
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BDBE
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223BDBE
_0223BD9E:
	ldr r4, _0223BDC8 @ =0x00000127
	ldr r3, [r5]
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	adds r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BDBE
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223BDBE:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223BDC4: .4byte 0x0000040C
_0223BDC8: .4byte 0x00000127
	thumb_func_end ov17_0223BD58

	thumb_func_start ov17_0223BDCC
ov17_0223BDCC: @ 0x0223BDCC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223BE20
	ldr r0, [r5]
	bl FUN_0209590C
	cmp r0, #1
	bne _0223BDEA
	ldr r0, _0223BE44 @ =0x0000040C
	movs r1, #0x2d
	strb r1, [r5, r0]
	b _0223BDF8
_0223BDEA:
	ldr r1, [r5]
	ldr r0, _0223BE48 @ =0x0000011F
	ldrb r0, [r1, r0]
	bl ov17_02243944
	ldr r1, _0223BE44 @ =0x0000040C
	strb r0, [r5, r1]
_0223BDF8:
	ldr r3, _0223BE4C @ =0x0000040E
	movs r1, #0
	strb r1, [r5, r3]
	adds r0, r3, #1
	strb r1, [r5, r0]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r3, #0xe6
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0x14
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BE40
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223BE40
_0223BE20:
	ldr r4, _0223BE50 @ =0x00000127
	ldr r3, [r5]
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	adds r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BE40
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223BE40:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223BE44: .4byte 0x0000040C
_0223BE48: .4byte 0x0000011F
_0223BE4C: .4byte 0x0000040E
_0223BE50: .4byte 0x00000127
	thumb_func_end ov17_0223BDCC

	thumb_func_start ov17_0223BE54
ov17_0223BE54: @ 0x0223BE54
	movs r0, #1
	bx lr
	thumb_func_end ov17_0223BE54

	thumb_func_start ov17_0223BE58
ov17_0223BE58: @ 0x0223BE58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	ldrh r1, [r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _0223BE70
	cmp r1, #1
	beq _0223BE90
	cmp r1, #2
	beq _0223BEB8
	b _0223BEF8
_0223BE70:
	movs r0, #0xc3
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BF08
	ldr r0, [sp]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	b _0223BF08
_0223BE90:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _0223BF10 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BF08
	ldr r0, [sp]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	b _0223BF08
_0223BEB8:
	add r1, sp, #4
	bl ov17_02246ECC
	ldr r1, [r4]
	ldr r0, _0223BF10 @ =0x00000127
	ldrb r0, [r1, r0]
	cmp r0, #4
	bge _0223BEEC
	lsls r2, r0, #1
	add r3, sp, #4
	adds r1, r3, r2
	ldr r7, _0223BF14 @ =0x0000023E
	adds r2, r4, r2
	adds r3, r3, r0
_0223BED4:
	ldrh r6, [r1]
	ldr r5, _0223BF18 @ =0x00000236
	adds r1, r1, #2
	strh r6, [r2, r5]
	ldrb r6, [r3, #8]
	adds r5, r4, r0
	adds r0, r0, #1
	strb r6, [r5, r7]
	adds r2, r2, #2
	adds r3, r3, #1
	cmp r0, #4
	blt _0223BED4
_0223BEEC:
	ldr r0, [sp]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	b _0223BF08
_0223BEF8:
	movs r1, #0xce
	lsls r1, r1, #2
	adds r1, r4, r1
	bl ov17_02245F44
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223BF08:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BF10: .4byte 0x00000127
_0223BF14: .4byte 0x0000023E
_0223BF18: .4byte 0x00000236
	thumb_func_end ov17_0223BE58

	thumb_func_start ov17_0223BF1C
ov17_0223BF1C: @ 0x0223BF1C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0223BF9C @ =0x00000235
	adds r4, r0, #0
	ldrb r0, [r4, r2]
	adds r1, r4, r0
	subs r0, r2, #4
	ldrb r0, [r1, r0]
	adds r1, r2, #0
	adds r1, #0xf3
	strb r0, [r4, r1]
	str r0, [sp]
	adds r0, r2, #0
	ldrb r1, [r4, r2]
	adds r0, #0xf4
	strb r1, [r4, r0]
	ldr r0, [sp]
	adds r1, r4, r0
	adds r0, r2, #0
	adds r0, #9
	ldrb r3, [r1, r0]
	adds r0, r2, #0
	adds r0, #0xf5
	strb r3, [r4, r0]
	adds r3, r2, #0
	movs r0, #0
	adds r3, #0xf6
	strb r0, [r4, r3]
	ldrb r2, [r4, r2]
	cmp r2, #0
	ble _0223BF7C
	ldr r7, _0223BFA0 @ =0x0000023E
	movs r5, #1
	adds r3, r7, #0
_0223BF5E:
	ldr r2, _0223BFA4 @ =0x00000231
	adds r6, r4, r0
	ldrb r2, [r6, r2]
	adds r2, r4, r2
	ldrb r6, [r2, r7]
	ldrb r2, [r1, r3]
	cmp r6, r2
	bne _0223BF72
	ldr r2, _0223BFA8 @ =0x0000032B
	strb r5, [r4, r2]
_0223BF72:
	ldr r2, _0223BF9C @ =0x00000235
	adds r0, r0, #1
	ldrb r2, [r4, r2]
	cmp r0, r2
	blt _0223BF5E
_0223BF7C:
	movs r1, #1
	lsls r1, r1, #0xa
	ldr r2, [sp]
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov17_02243120
	ldr r1, _0223BFAC @ =0x00000406
	ldr r2, [sp]
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov17_02243120
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BF9C: .4byte 0x00000235
_0223BFA0: .4byte 0x0000023E
_0223BFA4: .4byte 0x00000231
_0223BFA8: .4byte 0x0000032B
_0223BFAC: .4byte 0x00000406
	thumb_func_end ov17_0223BF1C

	thumb_func_start ov17_0223BFB0
ov17_0223BFB0: @ 0x0223BFB0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223BFDC
	movs r0, #0xc3
	movs r3, #0xca
	lsls r0, r0, #4
	lsls r3, r3, #2
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #4
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223BFFC
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223BFFC
_0223BFDC:
	ldr r4, _0223C000 @ =0x00000127
	ldr r3, [r5]
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	adds r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223BFFC
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223BFFC:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C000: .4byte 0x00000127
	thumb_func_end ov17_0223BFB0

	thumb_func_start ov17_0223C004
ov17_0223C004: @ 0x0223C004
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0
	bne _0223C034
	ldr r3, _0223C060 @ =0x0000040C
	movs r0, #0
	strb r0, [r4, r3]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r3, #0xe4
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #6
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C05A
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223C05A
_0223C034:
	ldr r5, _0223C064 @ =0x00000127
	ldr r3, [r4]
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	adds r0, r4, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C05A
	ldr r0, _0223C060 @ =0x0000040C
	movs r1, #0
	strb r1, [r4, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223C05A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223C060: .4byte 0x0000040C
_0223C064: .4byte 0x00000127
	thumb_func_end ov17_0223C004

	thumb_func_start ov17_0223C068
ov17_0223C068: @ 0x0223C068
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0
	beq _0223C07A
	cmp r0, #1
	beq _0223C0AA
	b _0223C0CA
_0223C07A:
	ldr r0, _0223C0F8 @ =0x0000040C
	movs r1, #4
	strb r1, [r4, r0]
	adds r1, r0, #0
	subs r1, #0xe1
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _0223C08E
	movs r1, #5
	b _0223C090
_0223C08E:
	movs r1, #0
_0223C090:
	movs r2, #0xce
	adds r0, r0, #1
	strb r1, [r4, r0]
	lsls r2, r2, #2
	adds r1, r4, r2
	subs r2, #0x10
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	bl ov17_022460DC
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
_0223C0AA:
	movs r0, #0xc3
	movs r3, #0xca
	lsls r0, r0, #4
	lsls r3, r3, #2
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #7
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C0F4
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223C0F4
_0223C0CA:
	ldr r5, _0223C0FC @ =0x00000127
	ldr r3, [r4]
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	adds r0, r4, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C0F4
	ldr r0, _0223C0F8 @ =0x0000040C
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r0, #1
	strb r1, [r4, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223C0F4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C0F8: .4byte 0x0000040C
_0223C0FC: .4byte 0x00000127
	thumb_func_end ov17_0223C068

	thumb_func_start ov17_0223C100
ov17_0223C100: @ 0x0223C100
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrh r1, [r4]
	adds r5, r0, #0
	cmp r1, #0xc
	bls _0223C10E
	b _0223C2BE
_0223C10E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223C11A: @ jump table
	.2byte _0223C134 - _0223C11A - 2 @ case 0
	.2byte _0223C14A - _0223C11A - 2 @ case 1
	.2byte _0223C15E - _0223C11A - 2 @ case 2
	.2byte _0223C17E - _0223C11A - 2 @ case 3
	.2byte _0223C1A4 - _0223C11A - 2 @ case 4
	.2byte _0223C1BE - _0223C11A - 2 @ case 5
	.2byte _0223C1DE - _0223C11A - 2 @ case 6
	.2byte _0223C202 - _0223C11A - 2 @ case 7
	.2byte _0223C21C - _0223C11A - 2 @ case 8
	.2byte _0223C23C - _0223C11A - 2 @ case 9
	.2byte _0223C260 - _0223C11A - 2 @ case 10
	.2byte _0223C27A - _0223C11A - 2 @ case 11
	.2byte _0223C29A - _0223C11A - 2 @ case 12
_0223C134:
	movs r2, #0xce
	lsls r2, r2, #2
	adds r1, r5, r2
	subs r2, #0x10
	ldrb r2, [r5, r2]
	bl ov17_02245FB4
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C14A:
	movs r2, #0xce
	lsls r2, r2, #2
	adds r1, r5, r2
	subs r2, #0x10
	ldrb r2, [r5, r2]
	bl ov17_02246138
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_0223C15E:
	movs r0, #0xc3
	movs r3, #0xca
	lsls r0, r0, #4
	lsls r3, r3, #2
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0xa
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C19A
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C17E:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _0223C2D8 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	beq _0223C19C
_0223C19A:
	b _0223C2D2
_0223C19C:
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C1A4:
	movs r3, #0xce
	lsls r3, r3, #2
	adds r2, r3, #0
	adds r1, r5, r3
	subs r2, #0x10
	subs r3, #0xf
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_02246160
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_0223C1BE:
	movs r0, #0xc3
	movs r3, #0xca
	lsls r0, r0, #4
	lsls r3, r3, #2
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0xb
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C1DE:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _0223C2D8 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C202:
	movs r3, #0xce
	lsls r3, r3, #2
	adds r2, r3, #0
	adds r1, r5, r3
	subs r2, #0x10
	subs r3, #0xf
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_02246228
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_0223C21C:
	movs r0, #0xc3
	movs r3, #0xca
	lsls r0, r0, #4
	lsls r3, r3, #2
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0xc
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C23C:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _0223C2D8 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C260:
	movs r3, #0xce
	lsls r3, r3, #2
	adds r2, r3, #0
	subs r2, #0x10
	ldrb r2, [r5, r2]
	adds r1, r5, r3
	adds r3, #0xc8
	adds r3, r5, r3
	bl ov17_022463C4
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_0223C27A:
	movs r0, #0xc3
	movs r3, #0xca
	lsls r0, r0, #4
	lsls r3, r3, #2
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0xd
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C29A:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _0223C2D8 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C2D2
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C2D2
_0223C2BE:
	movs r2, #0xce
	lsls r2, r2, #2
	adds r1, r5, r2
	subs r2, #0x10
	ldrb r2, [r5, r2]
	adds r0, r5, #0
	bl ov17_02246018
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223C2D2:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223C2D8: .4byte 0x00000127
	thumb_func_end ov17_0223C100

	thumb_func_start ov17_0223C2DC
ov17_0223C2DC: @ 0x0223C2DC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223C308
	movs r0, #0xc3
	movs r3, #0xca
	lsls r0, r0, #4
	lsls r3, r3, #2
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #5
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C328
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C328
_0223C308:
	ldr r4, _0223C32C @ =0x00000127
	ldr r3, [r5]
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	adds r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C328
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223C328:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C32C: .4byte 0x00000127
	thumb_func_end ov17_0223C2DC

	thumb_func_start ov17_0223C330
ov17_0223C330: @ 0x0223C330
	ldr r2, _0223C34C @ =0x00000235
	ldrb r3, [r0, r2]
	adds r3, r3, #1
	strb r3, [r0, r2]
	ldrb r0, [r0, r2]
	cmp r0, #4
	blo _0223C342
	movs r0, #1
	bx lr
_0223C342:
	movs r0, #5
	strh r0, [r1, #2]
	movs r0, #2
	bx lr
	nop
_0223C34C: .4byte 0x00000235
	thumb_func_end ov17_0223C330

	thumb_func_start ov17_0223C350
ov17_0223C350: @ 0x0223C350
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r7, r1, #0
	ldrh r1, [r7]
	str r0, [sp]
	cmp r1, #0x18
	bls _0223C360
	b _0223C804
_0223C360:
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223C36C: @ jump table
	.2byte _0223C39E - _0223C36C - 2 @ case 0
	.2byte _0223C3A4 - _0223C36C - 2 @ case 1
	.2byte _0223C3C2 - _0223C36C - 2 @ case 2
	.2byte _0223C3F0 - _0223C36C - 2 @ case 3
	.2byte _0223C414 - _0223C36C - 2 @ case 4
	.2byte _0223C43C - _0223C36C - 2 @ case 5
	.2byte _0223C458 - _0223C36C - 2 @ case 6
	.2byte _0223C480 - _0223C36C - 2 @ case 7
	.2byte _0223C5D6 - _0223C36C - 2 @ case 8
	.2byte _0223C5DE - _0223C36C - 2 @ case 9
	.2byte _0223C604 - _0223C36C - 2 @ case 10
	.2byte _0223C636 - _0223C36C - 2 @ case 11
	.2byte _0223C64E - _0223C36C - 2 @ case 12
	.2byte _0223C65A - _0223C36C - 2 @ case 13
	.2byte _0223C678 - _0223C36C - 2 @ case 14
	.2byte _0223C6A6 - _0223C36C - 2 @ case 15
	.2byte _0223C6E8 - _0223C36C - 2 @ case 16
	.2byte _0223C71C - _0223C36C - 2 @ case 17
	.2byte _0223C734 - _0223C36C - 2 @ case 18
	.2byte _0223C740 - _0223C36C - 2 @ case 19
	.2byte _0223C752 - _0223C36C - 2 @ case 20
	.2byte _0223C770 - _0223C36C - 2 @ case 21
	.2byte _0223C79E - _0223C36C - 2 @ case 22
	.2byte _0223C7C2 - _0223C36C - 2 @ case 23
	.2byte _0223C7E8 - _0223C36C - 2 @ case 24
_0223C39E:
	adds r0, r1, #1
	strh r0, [r7]
	b _0223C80A
_0223C3A4:
	ldr r1, [r7, #4]
	ldr r0, [sp]
	ldr r2, _0223C6CC @ =0x00000231
	adds r0, r0, r1
	ldrb r3, [r0, r2]
	adds r1, r2, #0
	ldr r0, [sp]
	adds r1, #0xf7
	strb r3, [r0, r1]
	ldr r1, [r7, #4]
	adds r2, #0xf8
	strb r1, [r0, r2]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
_0223C3C2:
	movs r3, #0xce
	ldr r0, [sp]
	lsls r3, r3, #2
	adds r4, r3, #0
	adds r1, r0, #0
	adds r1, r1, r3
	subs r4, #0x10
	adds r2, r0, #0
	ldrb r2, [r2, r4]
	subs r3, #0xf
	adds r4, r0, #0
	ldrb r3, [r4, r3]
	bl ov17_022462A4
	cmp r0, #1
	bne _0223C3EA
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C3EA:
	movs r0, #5
	strh r0, [r7]
	b _0223C80A
_0223C3F0:
	movs r1, #0xc3
	ldr r0, [sp]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [sp]
	movs r4, #0xca
	lsls r4, r4, #2
	adds r3, r1, #0
	movs r2, #0xe
	adds r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C432
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C414:
	ldr r0, [sp]
	movs r1, #0xc3
	ldr r4, _0223C6D0 @ =0x00000127
	ldr r3, [r0]
	lsls r1, r1, #4
	adds r0, r0, r1
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	beq _0223C434
_0223C432:
	b _0223C80A
_0223C434:
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C43C:
	ldr r0, [r7, #4]
	adds r0, r0, #1
	str r0, [r7, #4]
	cmp r0, #4
	blt _0223C452
	movs r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C452:
	movs r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C458:
	movs r6, #0xce
	lsls r6, r6, #2
	adds r5, r6, #0
	movs r4, #0
	adds r5, #0xc8
_0223C462:
	ldr r0, [sp]
	adds r2, r4, #0
	adds r1, r0, #0
	adds r3, r0, #0
	adds r1, r1, r6
	adds r3, r3, r5
	bl ov17_02246518
	adds r4, r4, #1
	cmp r4, #4
	blt _0223C462
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C480:
	movs r5, #0
	add r2, sp, #0x40
	add r3, sp, #0x34
	add r6, sp, #4
	movs r0, #4
_0223C48A:
	movs r1, #0
	str r1, [r2]
	str r5, [r3]
	adds r4, r6, #0
_0223C492:
	adds r1, r1, #1
	stm r4!, {r0}
	cmp r1, #4
	blt _0223C492
	adds r5, r5, #1
	adds r2, r2, #4
	adds r3, r3, #4
	adds r6, #0x10
	cmp r5, #3
	blt _0223C48A
	movs r3, #0
	add r6, sp, #0x40
_0223C4AA:
	ldr r0, [sp]
	adds r1, r0, r3
	ldr r0, _0223C6CC @ =0x00000231
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	adds r2, r0, r1
	ldr r0, _0223C6D4 @ =0x0000023E
	ldrb r0, [r2, r0]
	lsls r0, r0, #2
	ldr r4, [r6, r0]
	adds r4, r4, #1
	str r4, [r6, r0]
	ldr r0, _0223C6D4 @ =0x0000023E
	movs r4, #0
	ldrb r0, [r2, r0]
	lsls r2, r0, #4
	add r0, sp, #4
	adds r5, r0, r2
	adds r2, r5, #0
_0223C4D0:
	ldr r0, [r2]
	cmp r0, #4
	bne _0223C4DC
	lsls r0, r4, #2
	str r1, [r5, r0]
	b _0223C4E4
_0223C4DC:
	adds r4, r4, #1
	adds r2, r2, #4
	cmp r4, #4
	blt _0223C4D0
_0223C4E4:
	adds r3, r3, #1
	cmp r3, #4
	blt _0223C4AA
	movs r6, #0
_0223C4EC:
	movs r2, #2
	cmp r6, #2
	bge _0223C518
	add r0, sp, #0x48
	add r1, sp, #0x3c
_0223C4F6:
	subs r3, r0, #4
	ldr r5, [r0]
	ldr r4, [r3]
	cmp r4, r5
	bge _0223C50E
	str r4, [r0]
	str r5, [r3]
	subs r3, r1, #4
	ldr r5, [r1]
	ldr r4, [r3]
	str r4, [r1]
	str r5, [r3]
_0223C50E:
	subs r2, r2, #1
	subs r0, r0, #4
	subs r1, r1, #4
	cmp r2, r6
	bgt _0223C4F6
_0223C518:
	adds r6, r6, #1
	cmp r6, #2
	blt _0223C4EC
	ldr r0, [r7, #4]
	movs r2, #0x41
	lsls r0, r0, #2
	add r1, sp, #0x34
	ldr r3, [r1, r0]
	ldr r0, [sp]
	lsls r2, r2, #4
	strb r3, [r0, r2]
	movs r3, #0
	ldr r6, _0223C6D8 @ =0x00000411
	adds r2, r3, #0
	add r5, sp, #4
_0223C536:
	ldr r0, [r7, #4]
	ldr r4, [sp]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r4, r4, r3
	lsls r0, r0, #4
	adds r0, r5, r0
	ldr r0, [r2, r0]
	adds r3, r3, #1
	adds r2, r2, #4
	strb r0, [r4, r6]
	cmp r3, #4
	blt _0223C536
	ldr r0, [r7, #4]
	lsls r1, r0, #2
	add r0, sp, #0x40
	ldr r0, [r0, r1]
	cmp r0, #4
	bhi _0223C59A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223C568: @ jump table
	.2byte _0223C59A - _0223C568 - 2 @ case 0
	.2byte _0223C572 - _0223C568 - 2 @ case 1
	.2byte _0223C57C - _0223C568 - 2 @ case 2
	.2byte _0223C586 - _0223C568 - 2 @ case 3
	.2byte _0223C590 - _0223C568 - 2 @ case 4
_0223C572:
	ldr r1, _0223C6DC @ =0x0000040C
	ldr r0, [sp]
	movs r2, #0xa
	strb r2, [r0, r1]
	b _0223C5A4
_0223C57C:
	ldr r1, _0223C6DC @ =0x0000040C
	ldr r0, [sp]
	movs r2, #7
	strb r2, [r0, r1]
	b _0223C5A4
_0223C586:
	ldr r1, _0223C6DC @ =0x0000040C
	ldr r0, [sp]
	movs r2, #8
	strb r2, [r0, r1]
	b _0223C5A4
_0223C590:
	ldr r1, _0223C6DC @ =0x0000040C
	ldr r0, [sp]
	movs r2, #9
	strb r2, [r0, r1]
	b _0223C5A4
_0223C59A:
	movs r0, #0xc
	strh r0, [r7]
	add sp, #0x4c
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0223C5A4:
	ldr r2, _0223C6E0 @ =0x0000040D
	ldr r0, [sp]
	movs r1, #0
	adds r3, r2, #0
	strb r1, [r0, r2]
	subs r3, #0xd
	adds r1, r0, #0
	adds r1, r1, r3
	subs r2, #0xe5
	adds r3, r0, #0
	ldrb r2, [r3, r2]
	bl ov17_02243120
	ldr r0, [sp]
	ldr r3, _0223C6E4 @ =0x00000406
	adds r1, r0, #0
	adds r1, r1, r3
	subs r3, #0xde
	adds r2, r0, #0
	ldrb r2, [r2, r3]
	bl ov17_02243120
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
_0223C5D6:
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C5DE:
	movs r1, #0xc3
	ldr r0, [sp]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [sp]
	movs r4, #0xca
	lsls r4, r4, #2
	adds r3, r1, #0
	movs r2, #0x10
	adds r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	beq _0223C5FC
	b _0223C80A
_0223C5FC:
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C604:
	ldr r0, [sp]
	movs r1, #0xc3
	ldr r4, _0223C6D0 @ =0x00000127
	ldr r3, [r0]
	lsls r1, r1, #4
	adds r0, r0, r1
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C706
	ldr r1, _0223C6DC @ =0x0000040C
	ldr r0, [sp]
	movs r2, #0
	strb r2, [r0, r1]
	adds r1, r1, #1
	strb r2, [r0, r1]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C636:
	ldr r0, [r7, #4]
	adds r0, r0, #1
	str r0, [r7, #4]
	cmp r0, #3
	bge _0223C646
	movs r0, #7
	strh r0, [r7]
	b _0223C80A
_0223C646:
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C64E:
	movs r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C65A:
	ldr r1, [r7, #4]
	ldr r0, [sp]
	ldr r2, _0223C6CC @ =0x00000231
	adds r0, r0, r1
	ldrb r3, [r0, r2]
	adds r1, r2, #0
	ldr r0, [sp]
	adds r1, #0xf7
	strb r3, [r0, r1]
	ldr r1, [r7, #4]
	adds r2, #0xf8
	strb r1, [r0, r2]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
_0223C678:
	movs r3, #0xce
	ldr r0, [sp]
	lsls r3, r3, #2
	adds r4, r3, #0
	adds r1, r0, #0
	adds r1, r1, r3
	subs r4, #0x10
	adds r2, r0, #0
	ldrb r2, [r2, r4]
	subs r3, #0xf
	adds r4, r0, #0
	ldrb r3, [r4, r3]
	bl ov17_02246304
	cmp r0, #0
	bne _0223C69E
	movs r0, #0x11
	strh r0, [r7]
	b _0223C80A
_0223C69E:
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C6A6:
	movs r1, #0xc3
	ldr r0, [sp]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [sp]
	movs r4, #0xca
	lsls r4, r4, #2
	adds r3, r1, #0
	movs r2, #0x11
	adds r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C706
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
	nop
_0223C6CC: .4byte 0x00000231
_0223C6D0: .4byte 0x00000127
_0223C6D4: .4byte 0x0000023E
_0223C6D8: .4byte 0x00000411
_0223C6DC: .4byte 0x0000040C
_0223C6E0: .4byte 0x0000040D
_0223C6E4: .4byte 0x00000406
_0223C6E8:
	ldr r0, [sp]
	movs r1, #0xc3
	ldr r4, _0223C810 @ =0x00000127
	ldr r3, [r0]
	lsls r1, r1, #4
	adds r0, r0, r1
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	beq _0223C708
_0223C706:
	b _0223C80A
_0223C708:
	ldr r1, _0223C814 @ =0x0000040C
	ldr r0, [sp]
	movs r2, #0
	strb r2, [r0, r1]
	adds r1, r1, #1
	strb r2, [r0, r1]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C71C:
	ldr r0, [r7, #4]
	adds r0, r0, #1
	str r0, [r7, #4]
	cmp r0, #4
	bge _0223C72C
	movs r0, #0xd
	strh r0, [r7]
	b _0223C80A
_0223C72C:
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C734:
	movs r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C740:
	movs r1, #0xce
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r0, r0, r1
	bl ov17_022460C8
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
_0223C752:
	ldr r1, [r7, #4]
	ldr r0, [sp]
	ldr r2, _0223C818 @ =0x00000231
	adds r0, r0, r1
	ldrb r3, [r0, r2]
	adds r1, r2, #0
	ldr r0, [sp]
	adds r1, #0xf7
	strb r3, [r0, r1]
	ldr r1, [r7, #4]
	adds r2, #0xf8
	strb r1, [r0, r2]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
_0223C770:
	movs r3, #0xce
	ldr r0, [sp]
	lsls r3, r3, #2
	adds r4, r3, #0
	adds r1, r0, #0
	adds r1, r1, r3
	subs r4, #0x10
	adds r2, r0, #0
	ldrb r2, [r2, r4]
	subs r3, #0xf
	adds r4, r0, #0
	ldrb r3, [r4, r3]
	bl ov17_02246364
	cmp r0, #1
	bne _0223C798
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C798:
	movs r0, #0x18
	strh r0, [r7]
	b _0223C80A
_0223C79E:
	movs r1, #0xc3
	ldr r0, [sp]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [sp]
	movs r4, #0xca
	lsls r4, r4, #2
	adds r3, r1, #0
	movs r2, #0xf
	adds r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C80A
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C7C2:
	ldr r0, [sp]
	movs r1, #0xc3
	ldr r4, _0223C810 @ =0x00000127
	ldr r3, [r0]
	lsls r1, r1, #4
	adds r0, r0, r1
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C80A
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C7E8:
	ldr r0, [r7, #4]
	adds r0, r0, #1
	str r0, [r7, #4]
	cmp r0, #4
	blt _0223C7FE
	movs r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0223C80A
_0223C7FE:
	movs r0, #0x14
	strh r0, [r7]
	b _0223C80A
_0223C804:
	add sp, #0x4c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223C80A:
	movs r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223C810: .4byte 0x00000127
_0223C814: .4byte 0x0000040C
_0223C818: .4byte 0x00000231
	thumb_func_end ov17_0223C350

	thumb_func_start ov17_0223C81C
ov17_0223C81C: @ 0x0223C81C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223C832
	cmp r0, #1
	beq _0223C838
	cmp r0, #2
	beq _0223C858
	b _0223C87C
_0223C832:
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C880
_0223C838:
	movs r0, #0xc3
	movs r3, #0xca
	lsls r0, r0, #4
	lsls r3, r3, #2
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0x12
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C880
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C880
_0223C858:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _0223C884 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223C880
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223C880
_0223C87C:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223C880:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C884: .4byte 0x00000127
	thumb_func_end ov17_0223C81C

	thumb_func_start ov17_0223C888
ov17_0223C888: @ 0x0223C888
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrh r1, [r5]
	adds r4, r0, #0
	cmp r1, #6
	bls _0223C896
	b _0223C9FA
_0223C896:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223C8A2: @ jump table
	.2byte _0223C8B0 - _0223C8A2 - 2 @ case 0
	.2byte _0223C8D0 - _0223C8A2 - 2 @ case 1
	.2byte _0223C8F6 - _0223C8A2 - 2 @ case 2
	.2byte _0223C956 - _0223C8A2 - 2 @ case 3
	.2byte _0223C97A - _0223C8A2 - 2 @ case 4
	.2byte _0223C9B6 - _0223C8A2 - 2 @ case 5
	.2byte _0223C9D6 - _0223C8A2 - 2 @ case 6
_0223C8B0:
	movs r0, #0xc3
	movs r3, #0xca
	lsls r0, r0, #4
	lsls r3, r3, #2
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #0x15
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223C8EC
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C8D0:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _0223CA20 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	beq _0223C8EE
_0223C8EC:
	b _0223CA1A
_0223C8EE:
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C8F6:
	movs r2, #0x36
	movs r1, #0
	lsls r2, r2, #4
	adds r0, r1, #0
	adds r2, r4, r2
_0223C900:
	ldr r3, [r2]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1e
	beq _0223C90A
	adds r1, r1, #1
_0223C90A:
	adds r0, r0, #1
	adds r2, #0x2c
	cmp r0, #4
	blt _0223C900
	movs r0, #0x23
	lsls r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #3
	bhs _0223C928
	cmp r1, #4
	bge _0223C928
	ldr r0, _0223CA24 @ =0x0000040C
	movs r1, #0x2a
	strb r1, [r4, r0]
	b _0223C92E
_0223C928:
	ldr r0, _0223CA24 @ =0x0000040C
	movs r1, #0
	strb r1, [r4, r0]
_0223C92E:
	ldr r3, _0223CA28 @ =0x0000040E
	movs r1, #0
	strb r1, [r4, r3]
	adds r0, r3, #1
	strb r1, [r4, r0]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r3, #0xe6
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #0x14
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223CA1A
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C956:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _0223CA20 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223CA1A
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C97A:
	movs r1, #0xce
	lsls r1, r1, #2
	adds r1, r4, r1
	bl ov17_02246044
	movs r0, #0x23
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov17_02243B0C
	ldr r0, _0223CA2C @ =0x00000236
	movs r6, #0
	adds r1, r0, #0
	adds r3, r4, #0
	adds r1, #0x20
_0223C998:
	ldrh r2, [r3, r0]
	adds r6, r6, #1
	strh r2, [r3, r1]
	adds r3, r3, #2
	cmp r6, #4
	blt _0223C998
	movs r0, #0x23
	lsls r0, r0, #4
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C9B6:
	movs r0, #0xc3
	movs r3, #0x23
	lsls r0, r0, #4
	lsls r3, r3, #4
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #0x13
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223CA1A
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C9D6:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _0223CA20 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223CA1A
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223CA1A
_0223C9FA:
	movs r0, #0x23
	lsls r0, r0, #4
	ldrb r1, [r4, r0]
	cmp r1, #4
	blo _0223CA0C
	movs r0, #0xf
	strh r0, [r5, #2]
	movs r0, #2
	pop {r4, r5, r6, pc}
_0223CA0C:
	movs r1, #0
	adds r0, r0, #5
	strb r1, [r4, r0]
	movs r0, #3
	strh r0, [r5, #2]
	movs r0, #2
	pop {r4, r5, r6, pc}
_0223CA1A:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_0223CA20: .4byte 0x00000127
_0223CA24: .4byte 0x0000040C
_0223CA28: .4byte 0x0000040E
_0223CA2C: .4byte 0x00000236
	thumb_func_end ov17_0223C888

	thumb_func_start ov17_0223CA30
ov17_0223CA30: @ 0x0223CA30
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #3
	bhi _0223CADC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223CA48: @ jump table
	.2byte _0223CA50 - _0223CA48 - 2 @ case 0
	.2byte _0223CA72 - _0223CA48 - 2 @ case 1
	.2byte _0223CA9C - _0223CA48 - 2 @ case 2
	.2byte _0223CAC0 - _0223CA48 - 2 @ case 3
_0223CA50:
	movs r1, #0
	ldr r7, _0223CB0C @ =0x0000012E
	adds r2, r3, #0
	adds r5, r1, #0
_0223CA58:
	ldr r0, _0223CB10 @ =0x00000242
	ldr r6, [r3]
	ldrsh r0, [r2, r0]
	adds r6, r6, r5
	adds r1, r1, #1
	strh r0, [r6, r7]
	adds r2, r2, #2
	adds r5, #0xc
	cmp r1, #4
	blt _0223CA58
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_0223CA72:
	ldr r5, _0223CB14 @ =0x0000040C
	movs r0, #0x2b
	strb r0, [r3, r5]
	adds r0, r5, #1
	movs r1, #0
	strb r1, [r3, r0]
	movs r0, #0xc3
	lsls r0, r0, #4
	subs r5, #0xe4
	adds r0, r3, r0
	adds r1, r3, #0
	movs r2, #3
	adds r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223CB06
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223CB06
_0223CA9C:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r5, [r3]
	adds r0, r3, r0
	ldr r3, _0223CB18 @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r5, r3]
	subs r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223CB06
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223CB06
_0223CAC0:
	movs r0, #0xc3
	lsls r0, r0, #4
	adds r0, r3, r0
	adds r1, r3, #0
	movs r2, #1
	movs r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223CB06
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223CB06
_0223CADC:
	movs r0, #0xc3
	lsls r0, r0, #4
	ldr r4, [r3]
	adds r0, r3, r0
	ldr r3, _0223CB18 @ =0x00000127
	adds r1, r3, #0
	adds r1, #0x50
	ldrb r2, [r4, r3]
	ldrb r1, [r4, r1]
	subs r1, r2, r1
	subs r2, r3, #4
	subs r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	subs r1, r1, #1
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223CB06
	movs r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0223CB06:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CB0C: .4byte 0x0000012E
_0223CB10: .4byte 0x00000242
_0223CB14: .4byte 0x0000040C
_0223CB18: .4byte 0x00000127
	thumb_func_end ov17_0223CA30

	thumb_func_start ov17_0223CB1C
ov17_0223CB1C: @ 0x0223CB1C
	push {r3, r4, r5, r6, lr}
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
	ldr r2, _0223CD9C @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0223CDA0 @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _0223CDA4 @ =0xFFFF1FFF
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
	movs r2, #7
	movs r0, #3
	movs r1, #0x16
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	ldr r1, _0223CDA8 @ =0x00000F68
	adds r0, r4, #0
	movs r2, #0x16
	bl FUN_0200681C
	ldr r2, _0223CDA8 @ =0x00000F68
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x16
	bl ov17_0223F140
	str r0, [r5, #8]
	adds r0, r4, #0
	bl FUN_02006840
	movs r1, #0x5b
	str r0, [r5]
	lsls r1, r1, #2
	str r5, [r0, r1]
	ldr r2, [r5]
	movs r3, #0
	adds r0, r1, #4
	strb r3, [r2, r0]
	ldr r0, [r5]
	str r0, [r5, #0xc]
	adds r0, r5, #0
	bl ov17_0223D390
	movs r0, #0x16
	bl FUN_02002F38
	str r0, [r5, #0x50]
	movs r1, #1
	bl FUN_02003858
	movs r2, #2
	ldr r0, [r5, #0x50]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x16
	bl FUN_02002F70
	movs r1, #1
	ldr r0, [r5, #0x50]
	lsls r2, r1, #9
	movs r3, #0x16
	bl FUN_02002F70
	movs r2, #7
	ldr r0, [r5, #0x50]
	movs r1, #2
	lsls r2, r2, #6
	movs r3, #0x16
	bl FUN_02002F70
	movs r2, #2
	ldr r0, [r5, #0x50]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x16
	bl FUN_02002F70
	movs r0, #0x16
	bl FUN_02018340
	str r0, [r5, #0x30]
	movs r0, #0x40
	movs r1, #0x16
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	ldr r0, [r5, #0x30]
	bl ov17_0223D1B8
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r0, #2
	movs r1, #0x16
	bl FUN_02002BB8
	movs r0, #0x16
	bl FUN_0200C6E4
	ldr r1, _0223CDAC @ =0x02252EFC
	ldr r2, _0223CDB0 @ =0x02252EB4
	movs r3, #0x20
	str r0, [r5, #0x28]
	bl FUN_0200C73C
	ldr r1, _0223CDB4 @ =0x00100010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r0, [r5, #0x28]
	bl FUN_0200C704
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	movs r2, #0x80
	bl FUN_0200C7C0
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _0223CDB8 @ =0x02252EC8
	bl FUN_0200CB30
	ldr r0, [r5, #0x28]
	bl FUN_0200C738
	movs r2, #1
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r0, #0x16
	bl FUN_0200762C
	str r0, [r5, #0x10]
	bl ov17_0223D350
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xd1
	movs r3, #0x16
	bl FUN_0200B144
	str r0, [r5, #0x44]
	movs r0, #0x16
	bl FUN_0200B358
	str r0, [r5, #0x48]
	movs r0, #5
	lsls r0, r0, #6
	movs r1, #0x16
	bl FUN_02023790
	str r0, [r5, #0x4c]
	movs r0, #0x2d
	movs r1, #0x16
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #0x2e
	movs r1, #0x16
	bl FUN_02006C24
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_0223D4A8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_0223D5B0
	adds r0, r5, #0
	bl ov17_0223D324
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov17_0223D3B8
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov17_0223D468
	adds r0, r4, #0
	bl FUN_02006CA8
	adds r0, r6, #0
	bl FUN_02006CA8
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, [r5, #0x50]
	ldr r3, _0223CDBC @ =0x00007FFF
	adds r2, r1, #0
	bl FUN_020038B0
	movs r1, #1
	adds r0, r1, #0
	str r1, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r5, #0x50]
	ldr r3, _0223CDBC @ =0x00007FFF
	movs r2, #0
	bl FUN_020038B0
	movs r2, #0
	str r2, [sp]
	movs r0, #0xe0
	str r0, [sp, #4]
	ldr r0, [r5, #0x50]
	ldr r3, _0223CDBC @ =0x00007FFF
	movs r1, #2
	bl FUN_020038B0
	movs r2, #0
	movs r0, #1
	str r2, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0x50]
	ldr r3, _0223CDBC @ =0x00007FFF
	movs r1, #3
	bl FUN_020038B0
	bl FUN_02039734
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x16
	str r1, [sp, #8]
	movs r1, #0x1b
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldr r0, _0223CDC0 @ =ov17_0223D164
	ldr r2, _0223CDC4 @ =0x0000EA60
	adds r1, r5, #0
	bl FUN_0200D9E8
	str r0, [r5, #4]
	ldr r0, _0223CDC8 @ =0x000004F8
	movs r1, #1
	strb r1, [r5, r0]
	bl FUN_0201FFD0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0
	bl FUN_02004234
	ldr r1, _0223CDCC @ =0x0000046F
	movs r0, #6
	movs r2, #1
	bl FUN_02004550
	ldr r1, [r5]
	ldr r0, _0223CDD0 @ =0x00000171
	ldrb r0, [r1, r0]
	bl FUN_020959F4
	ldr r0, _0223CDD4 @ =ov17_0223D0C8
	adds r1, r5, #0
	bl FUN_02017798
	ldr r0, _0223CDD8 @ =0x00000605
	bl FUN_02005748
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223CD9C: .4byte 0xFFFFE0FF
_0223CDA0: .4byte 0x04001000
_0223CDA4: .4byte 0xFFFF1FFF
_0223CDA8: .4byte 0x00000F68
_0223CDAC: .4byte 0x02252EFC
_0223CDB0: .4byte 0x02252EB4
_0223CDB4: .4byte 0x00100010
_0223CDB8: .4byte 0x02252EC8
_0223CDBC: .4byte 0x00007FFF
_0223CDC0: .4byte ov17_0223D164
_0223CDC4: .4byte 0x0000EA60
_0223CDC8: .4byte 0x000004F8
_0223CDCC: .4byte 0x0000046F
_0223CDD0: .4byte 0x00000171
_0223CDD4: .4byte ov17_0223D0C8
_0223CDD8: .4byte 0x00000605
	thumb_func_end ov17_0223CB1C

	thumb_func_start ov17_0223CDDC
ov17_0223CDDC: @ 0x0223CDDC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02094E98
	ldr r0, [r5]
	cmp r0, #0
	beq _0223CE00
	cmp r0, #1
	beq _0223CE76
	cmp r0, #2
	bne _0223CDFE
	b _0223CF4A
_0223CDFE:
	b _0223CF60
_0223CE00:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _0223CE0A
	b _0223CF60
_0223CE0A:
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0223CF68 @ =0x00007FFF
	ldr r2, _0223CF6C @ =0x0000FFFF
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	movs r1, #1
	movs r3, #6
	bl FUN_02003178
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0223CF68 @ =0x00007FFF
	ldr r2, _0223CF6C @ =0x0000FFFF
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	movs r1, #2
	movs r3, #6
	bl FUN_02003178
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	ldr r2, _0223CF68 @ =0x00007FFF
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x50]
	movs r1, #4
	lsrs r2, r2, #1
	movs r3, #6
	bl FUN_02003178
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0223CF68 @ =0x00007FFF
	ldr r2, _0223CF6C @ =0x0000FFFF
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	movs r1, #8
	movs r3, #6
	bl FUN_02003178
	ldr r0, _0223CF70 @ =0x000006E5
	bl FUN_02005748
	movs r0, #1
	str r0, [r5]
	b _0223CF60
_0223CE76:
	ldr r0, [r4]
	bl FUN_02094EDC
	cmp r0, #1
	bne _0223CEF0
	ldr r2, _0223CF74 @ =0x000004F6
	ldr r1, _0223CF78 @ =0x00000F14
	ldrh r2, [r4, r2]
	adds r0, r4, #0
	adds r1, r4, r1
	lsls r3, r2, #2
	ldr r2, _0223CF7C @ =0x02252F44
	ldr r2, [r2, r3]
	blx r2
	subs r1, r0, #1
	cmp r1, #1
	bhi _0223CEBA
	cmp r0, #1
	bne _0223CEA4
	ldr r0, _0223CF74 @ =0x000004F6
	ldrh r1, [r4, r0]
	adds r1, r1, #1
	b _0223CEAA
_0223CEA4:
	ldr r0, _0223CF80 @ =0x00000F16
	ldrh r1, [r4, r0]
	ldr r0, _0223CF74 @ =0x000004F6
_0223CEAA:
	strh r1, [r4, r0]
	ldr r0, _0223CF78 @ =0x00000F14
	movs r1, #0
	adds r0, r4, r0
	movs r2, #8
	blx FUN_020C4CF4
	b _0223CEF0
_0223CEBA:
	cmp r0, #3
	bne _0223CEF0
	ldr r0, _0223CF84 @ =0x00000F1C
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223CEF0
	movs r1, #2
	subs r0, #8
	str r1, [r5]
	adds r0, r4, r0
	movs r1, #0
	movs r2, #8
	blx FUN_020C4CF4
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #0x10
	movs r2, #0x24
	movs r3, #0
	bl FUN_0200F174
	b _0223CF60
_0223CEF0:
	ldr r0, _0223CF88 @ =0x000004FC
	adds r0, r4, r0
	bl ov17_0224F35C
	ldr r0, _0223CF88 @ =0x000004FC
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov17_0224F3D8
	ldr r0, _0223CF84 @ =0x00000F1C
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223CF60
	ldr r0, _0223CF88 @ =0x000004FC
	adds r0, r4, r0
	bl ov17_0224F3D0
	cmp r0, #0
	bne _0223CF60
	ldr r0, [r4]
	bl FUN_02094EDC
	cmp r0, #0
	bne _0223CF60
	movs r0, #2
	str r0, [r5]
	ldr r0, _0223CF78 @ =0x00000F14
	movs r1, #0
	adds r0, r4, r0
	movs r2, #8
	blx FUN_020C4CF4
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #0x10
	movs r2, #0x24
	movs r3, #0
	bl FUN_0200F174
	b _0223CF60
_0223CF4A:
	ldr r0, _0223CF84 @ =0x00000F1C
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223CF60
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0223CF60
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_0223CF60:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223CF68: .4byte 0x00007FFF
_0223CF6C: .4byte 0x0000FFFF
_0223CF70: .4byte 0x000006E5
_0223CF74: .4byte 0x000004F6
_0223CF78: .4byte 0x00000F14
_0223CF7C: .4byte 0x02252F44
_0223CF80: .4byte 0x00000F16
_0223CF84: .4byte 0x00000F1C
_0223CF88: .4byte 0x000004FC
	thumb_func_end ov17_0223CDDC

	thumb_func_start ov17_0223CF8C
ov17_0223CF8C: @ 0x0223CF8C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl FUN_0200682C
	adds r4, r0, #0
	bl FUN_020141E4
	adds r0, r4, #0
	bl ov17_0223D434
	adds r0, r4, #0
	bl ov17_0223D498
	adds r0, r4, #0
	bl ov17_0223D5AC
	adds r0, r4, #0
	bl ov17_0223D608
	adds r0, r4, #0
	adds r0, #0x34
	bl FUN_0201A8FC
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x30]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x30]
	movs r1, #3
	bl FUN_02019044
	movs r0, #4
	movs r1, #0
	bl FUN_02019120
	ldr r0, [r4, #0x30]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl FUN_0200D0B0
	ldr r0, [r4, #0x28]
	bl FUN_0200C8D4
	bl FUN_0201DC3C
	movs r7, #0xf2
	movs r6, #0
	adds r5, r4, #0
	lsls r7, r7, #4
_0223D00C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223D016
	bl FUN_0225B020
_0223D016:
	adds r6, r6, #1
	adds r5, #0x10
	cmp r6, #4
	blt _0223D00C
	adds r0, r4, #0
	adds r0, #0xc
	bl ov17_02247734
	adds r0, r4, #0
	bl ov17_02247918
	ldr r0, [r4, #0x10]
	bl FUN_02007B6C
	movs r0, #2
	bl FUN_02002C60
	ldr r0, [r4, #0x50]
	movs r1, #0
	bl FUN_02002FA0
	ldr r0, [r4, #0x50]
	movs r1, #1
	bl FUN_02002FA0
	ldr r0, [r4, #0x50]
	movs r1, #2
	bl FUN_02002FA0
	ldr r0, [r4, #0x50]
	movs r1, #3
	bl FUN_02002FA0
	ldr r0, [r4, #0x50]
	bl FUN_02002F54
	ldr r0, [r4, #0x48]
	bl FUN_0200B3F0
	ldr r0, [r4, #0x4c]
	bl FUN_020237BC
	ldr r0, [r4, #0x44]
	bl FUN_0200B190
	ldr r0, [r4, #0x30]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	bl FUN_0200DA58
	ldr r0, [r4, #8]
	bl ov17_0223F1E0
	bl FUN_0201E530
	ldr r0, [sp]
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #0x16
	bl FUN_0201807C
	bl FUN_02095A24
	bl FUN_02039794
	ldr r0, _0223D0BC @ =0x0000000B
	bl FUN_02006514
	ldr r0, _0223D0C0 @ =0x0000000C
	bl FUN_02006514
	ldr r0, _0223D0C4 @ =0x00000016
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D0BC: .4byte 0x0000000B
_0223D0C0: .4byte 0x0000000C
_0223D0C4: .4byte 0x00000016
	thumb_func_end ov17_0223CF8C

	thumb_func_start ov17_0223D0C8
ov17_0223D0C8: @ 0x0223D0C8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0223D154 @ =0x00000F63
	subs r1, r0, #2
	ldrb r3, [r6, r1]
	subs r1, r0, #3
	ldrb r1, [r6, r1]
	subs r5, r0, #1
	ldrb r5, [r6, r5]
	lsls r2, r1, #8
	movs r1, #0xff
	lsls r1, r1, #8
	ands r2, r1
	orrs r2, r5
	ldrb r4, [r6, r0]
	ldr r5, _0223D158 @ =0x04000040
	strh r2, [r5]
	lsls r2, r3, #8
	ands r2, r1
	orrs r2, r4
	strh r2, [r5, #4]
	adds r2, r0, #4
	ldrb r4, [r6, r2]
	adds r2, r0, #2
	ldrb r3, [r6, r2]
	adds r2, r0, #1
	ldrb r2, [r6, r2]
	adds r0, r0, #3
	ldrb r0, [r6, r0]
	lsls r2, r2, #8
	ands r2, r1
	orrs r0, r2
	strh r0, [r5, #2]
	lsls r0, r3, #8
	ands r0, r1
	orrs r0, r4
	strh r0, [r5, #6]
	ldr r0, [r6, #0x10]
	bl FUN_02008A94
	movs r7, #0xf2
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #4
_0223D120:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223D12A
	bl FUN_0225B06C
_0223D12A:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _0223D120
	bl FUN_0201DCAC
	bl FUN_0200C800
	ldr r0, [r6, #0x50]
	bl FUN_02003694
	ldr r0, [r6, #0x30]
	bl FUN_0201C2B8
	ldr r3, _0223D15C @ =0x027E0000
	ldr r1, _0223D160 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D154: .4byte 0x00000F63
_0223D158: .4byte 0x04000040
_0223D15C: .4byte 0x027E0000
_0223D160: .4byte 0x00003FF8
	thumb_func_end ov17_0223D0C8

	thumb_func_start ov17_0223D164
ov17_0223D164: @ 0x0223D164
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0223D1B0 @ =0x000004F8
	adds r6, r1, #0
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _0223D1A4
	ldr r0, [r6, #0x10]
	bl FUN_02007768
	movs r7, #0xf2
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #4
_0223D17E:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223D188
	bl FUN_0225AFF8
_0223D188:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _0223D17E
	bl FUN_0221F8F0
	ldr r0, [r6, #0x2c]
	bl FUN_0200C7EC
	bl FUN_0200C808
	ldr r0, _0223D1B4 @ =0x04000540
	movs r1, #1
	str r1, [r0]
_0223D1A4:
	ldr r1, [r6, #0x30]
	movs r0, #0x16
	bl FUN_02038A1C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D1B0: .4byte 0x000004F8
_0223D1B4: .4byte 0x04000540
	thumb_func_end ov17_0223D164

	thumb_func_start ov17_0223D1B8
ov17_0223D1B8: @ 0x0223D1B8
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	adds r4, r0, #0
	bl FUN_0201FF00
	ldr r5, _0223D310 @ =0x02252F1C
	add r3, sp, #0x2c
	movs r2, #5
_0223D1C8:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223D1C8
	add r0, sp, #0x2c
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
	ldr r5, _0223D314 @ =0x02252EA4
	add r3, sp, #0x1c
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0223D318 @ =0x02252F70
	add r3, sp, #0x54
	movs r2, #0xa
_0223D228:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223D228
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
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
	adds r0, r4, #0
	movs r1, #2
	add r2, sp, #0x70
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #3
	add r2, sp, #0x8c
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r1, _0223D31C @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	orrs r2, r0
	strh r2, [r1]
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r5, _0223D320 @ =0x02252EE0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #4
	str r0, [r3]
	adds r0, r4, #0
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
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223D310: .4byte 0x02252F1C
_0223D314: .4byte 0x02252EA4
_0223D318: .4byte 0x02252F70
_0223D31C: .4byte 0x04000008
_0223D320: .4byte 0x02252EE0
	thumb_func_end ov17_0223D1B8

	thumb_func_start ov17_0223D324
ov17_0223D324: @ 0x0223D324
	push {lr}
	sub sp, #0x14
	adds r1, r0, #0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x30]
	adds r1, #0x34
	movs r2, #1
	movs r3, #2
	bl FUN_0201A7E8
	add sp, #0x14
	pop {pc}
	.align 2, 0
	thumb_func_end ov17_0223D324

	thumb_func_start ov17_0223D350
ov17_0223D350: @ 0x0223D350
	push {r3, r4, r5, lr}
	ldr r3, _0223D388 @ =0x02100DEC
	movs r0, #2
	movs r1, #0
	ldr r3, [r3]
	lsls r0, r0, #0xe
	adds r2, r1, #0
	blx r3
	ldr r3, _0223D38C @ =0x02100DF4
	movs r1, #0
	adds r4, r0, #0
	ldr r3, [r3]
	movs r0, #0x80
	adds r2, r1, #0
	blx r3
	adds r5, r0, #0
	cmp r4, #0
	bne _0223D378
	bl FUN_02022974
_0223D378:
	cmp r5, #0
	bne _0223D380
	bl FUN_02022974
_0223D380:
	bl FUN_02014000
	pop {r3, r4, r5, pc}
	nop
_0223D388: .4byte 0x02100DEC
_0223D38C: .4byte 0x02100DF4
	thumb_func_end ov17_0223D350

	thumb_func_start ov17_0223D390
ov17_0223D390: @ 0x0223D390
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _0223D39E
	bl FUN_02022974
_0223D39E:
	movs r3, #0
	movs r0, #3
_0223D3A2:
	adds r1, r4, r3
	subs r2, r0, r3
	adds r1, #0xd4
	adds r3, r3, #1
	strb r2, [r1]
	cmp r3, #4
	blt _0223D3A2
	adds r0, r4, #0
	bl ov17_02247A48
	pop {r4, pc}
	thumb_func_end ov17_0223D390

	thumb_func_start ov17_0223D3B8
ov17_0223D3B8: @ 0x0223D3B8
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	adds r5, r0, #0
	str r4, [sp]
	movs r0, #7
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223D42C @ =0x000080E9
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl FUN_0200CDC4
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	adds r2, r4, #0
	bl ov17_0224774C
	movs r0, #0
	mvns r0, r0
	ldr r3, _0223D42C @ =0x000080E9
	str r0, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x50]
	bl ov17_0223F560
	ldr r3, _0223D42C @ =0x000080E9
	movs r0, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #0xc8
	str r0, [sp, #0x10]
	movs r0, #3
	str r0, [sp, #0x14]
	ldr r0, _0223D430 @ =0x0000C350
	str r0, [sp, #0x18]
	adds r0, r5, #0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	adds r0, #0xb4
	bl ov17_0223F630
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0223D42C: .4byte 0x000080E9
_0223D430: .4byte 0x0000C350
	thumb_func_end ov17_0223D3B8

	thumb_func_start ov17_0223D434
ov17_0223D434: @ 0x0223D434
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl ov17_02247798
	adds r0, r4, #0
	adds r0, #0xb4
	bl ov17_0223F6C4
	ldr r1, _0223D464 @ =0x000080E9
	movs r2, #0
	str r1, [sp]
	ldr r0, [r4, #0x2c]
	mvns r2, r2
	adds r3, r1, #0
	bl ov17_0223F5E8
	ldr r0, [r4, #0x2c]
	ldr r1, _0223D464 @ =0x000080E9
	bl FUN_0200D080
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223D464: .4byte 0x000080E9
	thumb_func_end ov17_0223D434

	thumb_func_start ov17_0223D468
ov17_0223D468: @ 0x0223D468
	push {r3, lr}
	sub sp, #0x18
	adds r3, r0, #0
	movs r0, #0x2e
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223D494 @ =0x000080EA
	movs r1, #3
	str r0, [sp, #0x14]
	ldr r0, [r3, #0x50]
	ldr r2, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	bl FUN_0200CD7C
	add sp, #0x18
	pop {r3, pc}
	.align 2, 0
_0223D494: .4byte 0x000080EA
	thumb_func_end ov17_0223D468

	thumb_func_start ov17_0223D498
ov17_0223D498: @ 0x0223D498
	ldr r3, _0223D4A0 @ =FUN_0200D080
	ldr r0, [r0, #0x2c]
	ldr r1, _0223D4A4 @ =0x000080EA
	bx r3
	.align 2, 0
_0223D4A0: .4byte FUN_0200D080
_0223D4A4: .4byte 0x000080EA
	thumb_func_end ov17_0223D498

	thumb_func_start ov17_0223D4A8
ov17_0223D4A8: @ 0x0223D4A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x16
	str r0, [sp, #0xc]
	adds r4, r1, #0
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #0x17
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #0x16
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r3, #3
	bl FUN_0200710C
	ldr r0, [r5, #0x30]
	movs r1, #1
	bl FUN_02019EBC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	movs r1, #0x2d
	movs r2, #0x23
	movs r3, #0x16
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	movs r1, #0x2d
	movs r2, #0x24
	movs r3, #0x16
	bl FUN_02003050
	ldr r1, [r5]
	ldr r0, _0223D5A8 @ =0x00001988
	ldr r0, [r1, r0]
	bl FUN_02027B50
	adds r6, r0, #0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x16
	str r0, [sp, #4]
	movs r1, #1
	ldr r0, [r5, #0x30]
	adds r2, r1, #0
	movs r3, #0xf
	bl FUN_0200DD0C
	adds r0, r6, #0
	bl FUN_0200DD08
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	movs r1, #0x26
	movs r3, #0x16
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #0x18
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #0x15
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xc0
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	movs r1, #0x2d
	movs r2, #0x25
	movs r3, #0x16
	bl FUN_02003050
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223D5A8: .4byte 0x00001988
	thumb_func_end ov17_0223D4A8

	thumb_func_start ov17_0223D5AC
ov17_0223D5AC: @ 0x0223D5AC
	bx lr
	.align 2, 0
	thumb_func_end ov17_0223D5AC

	thumb_func_start ov17_0223D5B0
ov17_0223D5B0: @ 0x0223D5B0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x16
	str r0, [sp, #0xc]
	adds r4, r1, #0
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #0x13
	movs r3, #4
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #0x14
	movs r3, #4
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x50]
	movs r1, #0x2d
	movs r2, #0x22
	movs r3, #0x16
	bl FUN_02003050
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_0223D5B0

	thumb_func_start ov17_0223D608
ov17_0223D608: @ 0x0223D608
	bx lr
	.align 2, 0
	thumb_func_end ov17_0223D608

	thumb_func_start ov17_0223D60C
ov17_0223D60C: @ 0x0223D60C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223D638
	ldr r0, [r5, #0x50]
	bl FUN_0200384C
	cmp r0, #0
	bne _0223D63C
	ldr r0, [r5]
	movs r1, #0x16
	bl ov17_0223F334
	ldr r0, [r5]
	bl ov17_0223F374
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223D63C
_0223D638:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223D63C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0223D60C

	thumb_func_start ov17_0223D640
ov17_0223D640: @ 0x0223D640
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #0
	bne _0223D68C
	ldr r0, [r4]
	bl FUN_0209590C
	cmp r0, #1
	bne _0223D65A
	movs r1, #2
	b _0223D65C
_0223D65A:
	movs r1, #1
_0223D65C:
	adds r0, r4, #0
	adds r0, #0xe9
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xea
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xeb
	strb r1, [r0]
	ldr r0, _0223D6B0 @ =0x000004FC
	adds r1, r4, #0
	adds r0, r4, r0
	adds r4, #0xe2
	movs r2, #0xd
	adds r3, r4, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D6AA
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223D6AA
_0223D68C:
	ldr r0, _0223D6B0 @ =0x000004FC
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _0223D6B4 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D6AA
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223D6AA:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223D6B0: .4byte 0x000004FC
_0223D6B4: .4byte 0x00000127
	thumb_func_end ov17_0223D640

	thumb_func_start ov17_0223D6B8
ov17_0223D6B8: @ 0x0223D6B8
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223D6F0
	adds r0, r3, #0
	adds r0, #0xd8
	ldrb r0, [r0]
	movs r2, #0
	adds r0, r3, r0
	adds r0, #0xd4
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe2
	strb r1, [r0]
	ldr r0, _0223D714 @ =0x000004FC
	adds r1, r3, #0
	adds r0, r3, r0
	adds r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D70E
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223D70E
_0223D6F0:
	ldr r0, _0223D714 @ =0x000004FC
	ldr r4, [r3]
	adds r0, r3, r0
	ldr r3, _0223D718 @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r4, r3]
	subs r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D70E
	movs r0, #1
	pop {r4, pc}
_0223D70E:
	movs r0, #0
	pop {r4, pc}
	nop
_0223D714: .4byte 0x000004FC
_0223D718: .4byte 0x00000127
	thumb_func_end ov17_0223D6B8

	thumb_func_start ov17_0223D71C
ov17_0223D71C: @ 0x0223D71C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223D762
	adds r1, r3, #0
	movs r0, #0
	adds r1, #0xec
	strb r0, [r1]
	adds r2, r0, #0
	adds r1, r3, #0
	subs r2, #0x10
	adds r1, #0xed
	strb r2, [r1]
	adds r1, r3, #0
	movs r2, #0x10
	adds r1, #0xee
	strb r2, [r1]
	adds r1, r3, #0
	adds r1, #0xf0
	strh r0, [r1]
	ldr r0, _0223D784 @ =0x000004FC
	adds r1, r3, #0
	adds r0, r3, r0
	movs r2, #0xe
	adds r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D780
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223D780
_0223D762:
	ldr r0, _0223D784 @ =0x000004FC
	ldr r4, [r3]
	adds r0, r3, r0
	ldr r3, _0223D788 @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r4, r3]
	subs r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D780
	movs r0, #1
	pop {r4, pc}
_0223D780:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0223D784: .4byte 0x000004FC
_0223D788: .4byte 0x00000127
	thumb_func_end ov17_0223D71C

	thumb_func_start ov17_0223D78C
ov17_0223D78C: @ 0x0223D78C
	push {r4, lr}
	adds r4, r1, #0
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223D7D4 @ =0x000004FC
	bne _0223D7B2
	adds r0, r2, r0
	adds r1, r2, #0
	movs r2, #0xf
	movs r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D7CE
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223D7CE
_0223D7B2:
	ldr r3, [r2]
	ldr r4, _0223D7D8 @ =0x00000127
	adds r0, r2, r0
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D7CE
	movs r0, #1
	pop {r4, pc}
_0223D7CE:
	movs r0, #0
	pop {r4, pc}
	nop
_0223D7D4: .4byte 0x000004FC
_0223D7D8: .4byte 0x00000127
	thumb_func_end ov17_0223D78C

	thumb_func_start ov17_0223D7DC
ov17_0223D7DC: @ 0x0223D7DC
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223D824 @ =0x000004FC
	bne _0223D802
	adds r0, r3, r0
	adds r1, r3, #0
	movs r2, #2
	adds r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D81E
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223D81E
_0223D802:
	ldr r4, [r3]
	adds r0, r3, r0
	ldr r3, _0223D828 @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r4, r3]
	subs r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D81E
	movs r0, #1
	pop {r4, pc}
_0223D81E:
	movs r0, #0
	pop {r4, pc}
	nop
_0223D824: .4byte 0x000004FC
_0223D828: .4byte 0x00000127
	thumb_func_end ov17_0223D7DC

	thumb_func_start ov17_0223D82C
ov17_0223D82C: @ 0x0223D82C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223D83E
	cmp r0, #1
	beq _0223D898
	b _0223D8B2
_0223D83E:
	adds r0, r3, #0
	adds r0, #0xd8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223D852
	cmp r0, #1
	beq _0223D85C
	cmp r0, #2
	beq _0223D866
	b _0223D870
_0223D852:
	adds r0, r3, #0
	movs r1, #3
	adds r0, #0xe9
	strb r1, [r0]
	b _0223D878
_0223D85C:
	adds r0, r3, #0
	movs r1, #4
	adds r0, #0xe9
	strb r1, [r0]
	b _0223D878
_0223D866:
	adds r0, r3, #0
	movs r1, #5
	adds r0, #0xe9
	strb r1, [r0]
	b _0223D878
_0223D870:
	adds r0, r3, #0
	movs r1, #6
	adds r0, #0xe9
	strb r1, [r0]
_0223D878:
	adds r0, r3, #0
	movs r1, #0
	adds r0, #0xea
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xeb
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe5
	strb r1, [r0]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_0223D898:
	ldr r0, _0223D8D4 @ =0x000004FC
	adds r1, r3, #0
	adds r0, r3, r0
	movs r2, #0xd
	adds r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D8D0
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223D8D0
_0223D8B2:
	ldr r0, _0223D8D4 @ =0x000004FC
	ldr r4, [r3]
	adds r0, r3, r0
	ldr r3, _0223D8D8 @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r4, r3]
	subs r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D8D0
	movs r0, #1
	pop {r4, pc}
_0223D8D0:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0223D8D4: .4byte 0x000004FC
_0223D8D8: .4byte 0x00000127
	thumb_func_end ov17_0223D82C

	thumb_func_start ov17_0223D8DC
ov17_0223D8DC: @ 0x0223D8DC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223D8F2
	cmp r0, #1
	beq _0223D91C
	cmp r0, #2
	beq _0223D938
	b _0223D95A
_0223D8F2:
	adds r1, r5, #0
	adds r1, #0xe2
	ldrb r1, [r1]
	ldr r0, [r5]
	bl FUN_02095928
	adds r1, r5, #0
	adds r1, #0xe3
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xe2
	ldrb r1, [r1]
	ldr r0, [r5]
	bl FUN_0209598C
	adds r1, r5, #0
	adds r1, #0xe4
	strb r0, [r1]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_0223D91C:
	ldr r0, _0223D964 @ =0x000004FC
	adds r1, r5, #0
	adds r0, r5, r0
	adds r5, #0xe2
	movs r2, #6
	adds r3, r5, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223D95E
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223D95E
_0223D938:
	ldr r0, _0223D964 @ =0x000004FC
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _0223D968 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223D95E
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223D95E
_0223D95A:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223D95E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223D964: .4byte 0x000004FC
_0223D968: .4byte 0x00000127
	thumb_func_end ov17_0223D8DC

	thumb_func_start ov17_0223D96C
ov17_0223D96C: @ 0x0223D96C
	ldrh r2, [r1]
	cmp r2, #0
	bne _0223D986
	adds r2, r0, #0
	adds r2, #0xd8
	ldrb r2, [r2]
	adds r0, #0xd8
	adds r2, r2, #1
	strb r2, [r0]
	ldrh r0, [r1]
	adds r0, r0, #1
	strh r0, [r1]
	b _0223D998
_0223D986:
	adds r0, #0xd8
	ldrb r0, [r0]
	cmp r0, #4
	blo _0223D992
	movs r0, #1
	bx lr
_0223D992:
	movs r0, #2
	strh r0, [r1, #2]
	bx lr
_0223D998:
	movs r0, #0
	bx lr
	thumb_func_end ov17_0223D96C

	thumb_func_start ov17_0223D99C
ov17_0223D99C: @ 0x0223D99C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #3
	bhi _0223DA44
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223D9B4: @ jump table
	.2byte _0223D9BC - _0223D9B4 - 2 @ case 0
	.2byte _0223D9DE - _0223D9B4 - 2 @ case 1
	.2byte _0223DA00 - _0223D9B4 - 2 @ case 2
	.2byte _0223DA2A - _0223D9B4 - 2 @ case 3
_0223D9BC:
	adds r0, r3, #0
	ldr r1, _0223DA68 @ =0x000006E5
	adds r0, #0xf2
	strh r1, [r0]
	ldr r0, _0223DA6C @ =0x000004FC
	adds r1, r3, #0
	adds r0, r3, r0
	movs r2, #0x10
	adds r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223DA62
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223DA62
_0223D9DE:
	ldr r0, _0223DA6C @ =0x000004FC
	ldr r5, [r3]
	adds r0, r3, r0
	ldr r3, _0223DA70 @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r5, r3]
	subs r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223DA62
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223DA62
_0223DA00:
	ldr r1, [r3]
	ldr r0, _0223DA74 @ =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _0223DA0E
	movs r1, #7
	b _0223DA10
_0223DA0E:
	movs r1, #0
_0223DA10:
	adds r0, r3, #0
	adds r0, #0xe9
	strb r1, [r0]
	adds r0, r3, #0
	movs r1, #0
	adds r0, #0xea
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xeb
	strb r1, [r0]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_0223DA2A:
	ldr r0, _0223DA6C @ =0x000004FC
	adds r1, r3, #0
	adds r0, r3, r0
	movs r2, #0xd
	adds r3, #0xe2
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223DA62
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223DA62
_0223DA44:
	ldr r0, _0223DA6C @ =0x000004FC
	ldr r4, [r3]
	adds r0, r3, r0
	ldr r3, _0223DA70 @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r4, r3]
	subs r3, #0xb
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223DA62
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223DA62:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223DA68: .4byte 0x000006E5
_0223DA6C: .4byte 0x000004FC
_0223DA70: .4byte 0x00000127
_0223DA74: .4byte 0x00000121
	thumb_func_end ov17_0223D99C

	thumb_func_start ov17_0223DA78
ov17_0223DA78: @ 0x0223DA78
	push {r4, lr}
	adds r4, r1, #0
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223DAC8 @ =0x000004FC
	bne _0223DA9E
	adds r0, r2, r0
	adds r1, r2, #0
	movs r2, #1
	movs r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223DAC4
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223DAC4
_0223DA9E:
	ldr r4, _0223DACC @ =0x00000127
	ldr r3, [r2]
	adds r1, r4, #0
	adds r1, #0x50
	adds r0, r2, r0
	ldrb r2, [r3, r4]
	ldrb r1, [r3, r1]
	subs r1, r2, r1
	subs r2, r4, #4
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	subs r1, r1, #1
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223DAC4
	movs r0, #3
	pop {r4, pc}
_0223DAC4:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0223DAC8: .4byte 0x000004FC
_0223DACC: .4byte 0x00000127
	thumb_func_end ov17_0223DA78

	thumb_func_start ov17_0223DAD0
ov17_0223DAD0: @ 0x0223DAD0
	push {r3, r4, r5, r6, lr}
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
	ldr r2, _0223DD8C @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0223DD90 @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _0223DD94 @ =0xFFFF1FFF
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
	movs r2, #0xa
	movs r0, #3
	movs r1, #0x17
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	ldr r1, _0223DD98 @ =0x00001C10
	adds r0, r4, #0
	movs r2, #0x17
	bl FUN_0200681C
	ldr r2, _0223DD98 @ =0x00001C10
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x17
	bl ov17_0223F140
	str r0, [r5, #0x10]
	adds r0, r4, #0
	bl FUN_02006840
	movs r1, #0x5b
	str r0, [r5]
	lsls r1, r1, #2
	str r5, [r0, r1]
	ldr r2, [r5]
	movs r3, #1
	adds r0, r1, #4
	strb r3, [r2, r0]
	ldr r0, [r5]
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl ov17_0223E458
	movs r0, #0x17
	bl FUN_02002F38
	adds r1, r5, #0
	adds r1, #0xa4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02003858
	adds r0, r5, #0
	adds r0, #0xa4
	movs r2, #2
	ldr r0, [r0]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x17
	bl FUN_02002F70
	adds r0, r5, #0
	adds r0, #0xa4
	movs r1, #1
	ldr r0, [r0]
	lsls r2, r1, #9
	movs r3, #0x17
	bl FUN_02002F70
	adds r0, r5, #0
	adds r0, #0xa4
	movs r2, #7
	ldr r0, [r0]
	movs r1, #2
	lsls r2, r2, #6
	movs r3, #0x17
	bl FUN_02002F70
	adds r0, r5, #0
	adds r0, #0xa4
	movs r2, #2
	ldr r0, [r0]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x17
	bl FUN_02002F70
	movs r1, #2
	movs r0, #0x17
	lsls r1, r1, #8
	bl FUN_02018144
	ldr r1, _0223DD9C @ =0x00001128
	str r0, [r5, r1]
	adds r0, r5, #0
	movs r1, #1
	bl ov17_0224CDB4
	movs r0, #0x17
	bl FUN_02018340
	str r0, [r5, #0x74]
	movs r0, #0x40
	movs r1, #0x17
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	adds r1, r5, #0
	ldr r0, [r5]
	adds r1, #0x14
	bl ov17_02249380
	ldr r1, _0223DDA0 @ =0x0000114C
	str r0, [r5, r1]
	ldr r0, [r5, #0x74]
	bl ov17_0223E250
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r0, #2
	movs r1, #0x17
	bl FUN_02002BB8
	movs r0, #0x17
	bl FUN_0200C6E4
	ldr r1, _0223DDA4 @ =0x02253008
	ldr r2, _0223DDA8 @ =0x02252FDC
	movs r3, #0x20
	str r0, [r5, #0x6c]
	bl FUN_0200C73C
	ldr r1, _0223DDAC @ =0x00100010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r0, [r5, #0x6c]
	bl FUN_0200C704
	str r0, [r5, #0x70]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	movs r2, #0x80
	bl FUN_0200C7C0
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0223DDB0 @ =0x02252FF0
	bl FUN_0200CB30
	ldr r0, [r5, #0x6c]
	bl FUN_0200C738
	movs r2, #1
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r0, #0x17
	bl FUN_0200762C
	str r0, [r5, #0x58]
	bl ov17_0223E450
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xce
	movs r3, #0x17
	bl FUN_0200B144
	adds r1, r5, #0
	adds r1, #0x98
	str r0, [r1]
	movs r0, #0x17
	bl FUN_0200B358
	adds r1, r5, #0
	adds r1, #0x9c
	str r0, [r1]
	movs r0, #5
	lsls r0, r0, #6
	movs r1, #0x17
	bl FUN_02023790
	adds r1, r5, #0
	adds r1, #0xa0
	str r0, [r1]
	movs r0, #9
	movs r1, #0x17
	bl FUN_02012744
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	movs r0, #0x2d
	movs r1, #0x17
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #0x2e
	movs r1, #0x17
	bl FUN_02006C24
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_0223E67C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_0223E770
	adds r0, r5, #0
	bl ov17_0223E380
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov17_0223E4B0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov17_0223E60C
	ldr r0, _0223DDA0 @ =0x0000114C
	movs r1, #0
	ldr r0, [r5, r0]
	movs r2, #1
	adds r3, r1, #0
	bl ov17_02249640
	adds r0, r4, #0
	bl FUN_02006CA8
	adds r0, r6, #0
	bl FUN_02006CA8
	adds r0, r5, #0
	bl ov17_0224A134
	adds r0, r5, #0
	adds r0, #0x14
	bl ov17_0224B0CC
	adds r0, r5, #0
	bl ov17_0223E778
	adds r0, r5, #0
	bl ov17_0224AA38
	adds r0, r5, #0
	bl ov17_0224B59C
	bl FUN_02039734
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x17
	str r1, [sp, #8]
	movs r1, #0x11
	movs r2, #0x25
	movs r3, #0
	bl FUN_0200F174
	ldr r0, _0223DDB4 @ =ov17_0223E1FC
	ldr r2, _0223DDB8 @ =0x00013880
	adds r1, r5, #0
	bl FUN_0200D9E8
	str r0, [r5, #4]
	ldr r0, _0223DDBC @ =0x00001170
	movs r1, #1
	strb r1, [r5, r0]
	bl FUN_0201FFD0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r1, _0223DDC0 @ =0x0000046F
	movs r0, #6
	movs r2, #1
	bl FUN_02004550
	ldr r1, [r5]
	ldr r0, _0223DDC4 @ =0x00000171
	ldrb r0, [r1, r0]
	bl FUN_020959F4
	movs r1, #0x39
	adds r2, r1, #0
	ldr r0, _0223DDC8 @ =0x04000050
	subs r2, #0x3f
	blx FUN_020BF578
	ldr r0, _0223DDCC @ =0x000006E5
	bl FUN_02005748
	ldr r0, _0223DDD0 @ =ov17_0223E09C
	adds r1, r5, #0
	bl FUN_02017798
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223DD8C: .4byte 0xFFFFE0FF
_0223DD90: .4byte 0x04001000
_0223DD94: .4byte 0xFFFF1FFF
_0223DD98: .4byte 0x00001C10
_0223DD9C: .4byte 0x00001128
_0223DDA0: .4byte 0x0000114C
_0223DDA4: .4byte 0x02253008
_0223DDA8: .4byte 0x02252FDC
_0223DDAC: .4byte 0x00100010
_0223DDB0: .4byte 0x02252FF0
_0223DDB4: .4byte ov17_0223E1FC
_0223DDB8: .4byte 0x00013880
_0223DDBC: .4byte 0x00001170
_0223DDC0: .4byte 0x0000046F
_0223DDC4: .4byte 0x00000171
_0223DDC8: .4byte 0x04000050
_0223DDCC: .4byte 0x000006E5
_0223DDD0: .4byte ov17_0223E09C
	thumb_func_end ov17_0223DAD0

	thumb_func_start ov17_0223DDD4
ov17_0223DDD4: @ 0x0223DDD4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02094E98
	ldr r0, [r5]
	cmp r0, #0
	beq _0223DDF6
	cmp r0, #1
	beq _0223DE04
	cmp r0, #2
	beq _0223DED8
	b _0223DEEE
_0223DDF6:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0223DEEE
	movs r0, #1
	str r0, [r5]
	b _0223DEEE
_0223DE04:
	ldr r0, [r4]
	bl FUN_02094EDC
	cmp r0, #1
	bne _0223DE7E
	ldr r2, _0223DEF4 @ =0x0000116E
	ldr r1, _0223DEF8 @ =0x00001C04
	ldrh r2, [r4, r2]
	adds r0, r4, #0
	adds r1, r4, r1
	lsls r3, r2, #2
	ldr r2, _0223DEFC @ =0x02253050
	ldr r2, [r2, r3]
	blx r2
	subs r1, r0, #1
	cmp r1, #1
	bhi _0223DE48
	cmp r0, #1
	bne _0223DE32
	ldr r0, _0223DEF4 @ =0x0000116E
	ldrh r1, [r4, r0]
	adds r1, r1, #1
	b _0223DE38
_0223DE32:
	ldr r0, _0223DF00 @ =0x00001C06
	ldrh r1, [r4, r0]
	ldr r0, _0223DEF4 @ =0x0000116E
_0223DE38:
	strh r1, [r4, r0]
	ldr r0, _0223DEF8 @ =0x00001C04
	movs r1, #0
	adds r0, r4, r0
	movs r2, #8
	blx FUN_020C4CF4
	b _0223DE7E
_0223DE48:
	cmp r0, #3
	bne _0223DE7E
	ldr r0, _0223DF04 @ =0x00001C0C
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223DE7E
	movs r1, #2
	subs r0, #8
	str r1, [r5]
	adds r0, r4, r0
	movs r1, #0
	movs r2, #8
	blx FUN_020C4CF4
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x17
	movs r1, #0x1e
	str r0, [sp, #8]
	movs r0, #2
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	b _0223DEEE
_0223DE7E:
	ldr r0, _0223DF08 @ =0x00001174
	adds r0, r4, r0
	bl ov17_0224F35C
	ldr r0, _0223DF08 @ =0x00001174
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov17_0224F3D8
	ldr r0, _0223DF04 @ =0x00001C0C
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223DEEE
	ldr r0, _0223DF08 @ =0x00001174
	adds r0, r4, r0
	bl ov17_0224F3D0
	cmp r0, #0
	bne _0223DEEE
	ldr r0, [r4]
	bl FUN_02094EDC
	cmp r0, #0
	bne _0223DEEE
	movs r0, #2
	str r0, [r5]
	ldr r0, _0223DEF8 @ =0x00001C04
	movs r1, #0
	adds r0, r4, r0
	movs r2, #8
	blx FUN_020C4CF4
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x17
	movs r1, #0x1e
	str r0, [sp, #8]
	movs r0, #2
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	b _0223DEEE
_0223DED8:
	ldr r0, _0223DF04 @ =0x00001C0C
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223DEEE
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0223DEEE
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_0223DEEE:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0223DEF4: .4byte 0x0000116E
_0223DEF8: .4byte 0x00001C04
_0223DEFC: .4byte 0x02253050
_0223DF00: .4byte 0x00001C06
_0223DF04: .4byte 0x00001C0C
_0223DF08: .4byte 0x00001174
	thumb_func_end ov17_0223DDD4

	thumb_func_start ov17_0223DF0C
ov17_0223DF0C: @ 0x0223DF0C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02014710
	cmp r0, #0
	beq _0223DF24
	bl FUN_02022974
_0223DF24:
	adds r0, r4, #0
	bl ov17_0223E7E0
	bl FUN_020141E4
	adds r0, r4, #0
	adds r0, #0x14
	bl ov17_0224A95C
	adds r0, r4, #0
	bl ov17_0224AA58
	adds r0, r4, #0
	bl ov17_0224B5B8
	adds r0, r4, #0
	bl ov17_0224BD00
	adds r0, r4, #0
	bl ov17_0223E588
	adds r0, r4, #0
	bl ov17_0223E678
	adds r0, r4, #0
	bl ov17_0223E76C
	adds r0, r4, #0
	bl ov17_0223E774
	adds r5, r4, #0
	movs r6, #0
	adds r5, #0x78
_0223DF66:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r6, r6, #1
	adds r5, #0x10
	cmp r6, #2
	blt _0223DF66
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0x74]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x74]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x74]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x74]
	bl ov17_02249358
	ldr r0, _0223E088 @ =0x0000114C
	ldr r0, [r4, r0]
	bl ov17_022493A4
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x70]
	bl FUN_0200D0B0
	ldr r0, [r4, #0x6c]
	bl FUN_0200C8D4
	bl FUN_0201DC3C
	adds r0, r4, #0
	adds r0, #0x14
	bl ov17_0224A1EC
	ldr r0, [r4, #0x58]
	bl FUN_02007B6C
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl FUN_020127BC
	movs r0, #2
	bl FUN_02002C60
	ldr r0, _0223E08C @ =0x00001128
	ldr r0, [r4, r0]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #2
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #3
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_02002F54
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r0, [r0]
	bl FUN_020237BC
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_0200B3F0
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_0200B190
	ldr r0, [r4, #0x74]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	bl FUN_0200DA58
	ldr r0, [r4, #0x10]
	bl ov17_0223F1E0
	bl FUN_0201E530
	adds r0, r7, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #0x17
	bl FUN_0201807C
	bl FUN_02095A24
	bl FUN_02039794
	ldr r0, _0223E090 @ =0x0000000B
	bl FUN_02006514
	ldr r0, _0223E094 @ =0x0000000C
	bl FUN_02006514
	ldr r0, _0223E098 @ =0x00000016
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E088: .4byte 0x0000114C
_0223E08C: .4byte 0x00001128
_0223E090: .4byte 0x0000000B
_0223E094: .4byte 0x0000000C
_0223E098: .4byte 0x00000016
	thumb_func_end ov17_0223DF0C

	thumb_func_start ov17_0223E09C
ov17_0223E09C: @ 0x0223E09C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0223E170 @ =0x00001150
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0223E12C
	adds r1, r0, #4
	adds r3, r4, r1
	ldr r2, [r4, r1]
	movs r5, #0
	ldr r1, [r3, #4]
	adds r2, r2, #1
	adcs r1, r5
	adds r0, r0, #4
	str r2, [r4, r0]
	movs r0, #7
	str r1, [r3, #4]
	bl FUN_020051C4
	ldr r1, _0223E174 @ =0x00000B14
	ldr r1, [r4, r1]
	muls r0, r1, r0
	ldr r1, _0223E178 @ =0x00001388
	adds r0, r0, r1
	lsls r1, r1, #1
	blx FUN_020E2178
	ldr r7, _0223E17C @ =0x00001168
	adds r5, r0, #1
	adds r1, r7, #0
	str r0, [r4, r7]
	subs r1, #0x14
	ldr r2, [r4, r1]
	adds r1, r7, #0
	subs r1, #0x10
	adds r0, r5, #0
	ldr r6, [r4, r1]
	movs r3, #0
	adds r1, r3, #0
	eors r1, r6
	eors r0, r2
	orrs r0, r1
	beq _0223E128
	subs r0, r7, #4
	ldr r0, [r4, r0]
	cmp r0, #0x12
	bhi _0223E10C
	mov ip, r3
	mov r0, ip
	subs r1, r5, r2
	sbcs r0, r6
	movs r6, #0
	movs r2, #1
	subs r1, r2, r1
	sbcs r6, r0
	bhs _0223E11C
_0223E10C:
	ldr r1, _0223E180 @ =0x00001154
	str r5, [r4, r1]
	adds r0, r1, #4
	str r3, [r4, r0]
	movs r0, #0
	adds r1, #0x10
	str r0, [r4, r1]
	b _0223E12C
_0223E11C:
	subs r0, r7, #4
	ldr r0, [r4, r0]
	adds r1, r0, #1
	subs r0, r7, #4
	str r1, [r4, r0]
	b _0223E12C
_0223E128:
	subs r0, r7, #4
	str r3, [r4, r0]
_0223E12C:
	ldr r0, [r4, #0x58]
	bl FUN_02008A94
	movs r6, #0
	adds r5, r4, #0
_0223E136:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0223E140
	bl FUN_0225B06C
_0223E140:
	adds r6, r6, #1
	adds r5, #0x10
	cmp r6, #4
	blt _0223E136
	bl FUN_0201DCAC
	bl FUN_0200C800
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_02003694
	ldr r0, [r4, #0x74]
	bl FUN_0201C2B8
	ldr r3, _0223E184 @ =0x027E0000
	ldr r1, _0223E188 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E170: .4byte 0x00001150
_0223E174: .4byte 0x00000B14
_0223E178: .4byte 0x00001388
_0223E17C: .4byte 0x00001168
_0223E180: .4byte 0x00001154
_0223E184: .4byte 0x027E0000
_0223E188: .4byte 0x00003FF8
	thumb_func_end ov17_0223E09C

	thumb_func_start ov17_0223E18C
ov17_0223E18C: @ 0x0223E18C
	push {r3, r4, r5, lr}
	ldr r1, _0223E1F8 @ =0x00001128
	adds r5, r0, r1
	ldrb r1, [r5, #0x11]
	cmp r1, #0
	beq _0223E1F4
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200316C
	adds r4, r0, #0
	movs r2, #2
	ldr r0, [r5]
	adds r1, r4, #0
	lsls r2, r2, #8
	blx FUN_020C4B18
	ldrb r0, [r5, #0x10]
	cmp r0, #1
	bne _0223E1F4
	ldrh r0, [r5, #0xe]
	adds r1, r4, #0
	str r0, [sp]
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #6]
	ldr r0, [r5]
	asrs r3, r3, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020039F8
	ldrh r3, [r5, #0xa]
	ldrh r1, [r5, #8]
	cmp r1, r3
	bne _0223E1DA
	movs r0, #0
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_0223E1DA:
	movs r0, #0xc
	ldrsh r2, [r5, r0]
	adds r0, r1, r2
	cmp r2, #0
	ble _0223E1E8
	cmp r0, r3
	bge _0223E1F0
_0223E1E8:
	cmp r2, #0
	bge _0223E1F2
	cmp r0, r3
	bgt _0223E1F2
_0223E1F0:
	adds r0, r3, #0
_0223E1F2:
	strh r0, [r5, #8]
_0223E1F4:
	pop {r3, r4, r5, pc}
	nop
_0223E1F8: .4byte 0x00001128
	thumb_func_end ov17_0223E18C

	thumb_func_start ov17_0223E1FC
ov17_0223E1FC: @ 0x0223E1FC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r0, r6, #0
	bl ov17_0223E18C
	ldr r0, _0223E248 @ =0x00001170
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _0223E23E
	ldr r0, [r6, #0x58]
	bl FUN_02007768
	movs r4, #0
	adds r5, r6, #0
_0223E218:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0223E222
	bl FUN_0225AFF8
_0223E222:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _0223E218
	bl FUN_0221F8F0
	ldr r0, [r6, #0x70]
	bl FUN_0200C7EC
	bl FUN_0200C808
	ldr r0, _0223E24C @ =0x04000540
	movs r1, #1
	str r1, [r0]
_0223E23E:
	ldr r1, [r6, #0x74]
	movs r0, #0x17
	bl FUN_02038A1C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223E248: .4byte 0x00001170
_0223E24C: .4byte 0x04000540
	thumb_func_end ov17_0223E1FC

	thumb_func_start ov17_0223E250
ov17_0223E250: @ 0x0223E250
	push {r4, r5, lr}
	sub sp, #0x8c
	adds r4, r0, #0
	bl FUN_0201FF00
	ldr r5, _0223E370 @ =0x02253028
	add r3, sp, #0x10
	movs r2, #5
_0223E260:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223E260
	add r0, sp, #0x10
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
	ldr r5, _0223E374 @ =0x02252FCC
	add r3, sp, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0223E378 @ =0x022530D8
	add r3, sp, #0x38
	movs r2, #0xa
_0223E2C0:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223E2C0
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
	add r2, sp, #0x38
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
	adds r0, r4, #0
	movs r1, #2
	add r2, sp, #0x54
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #3
	add r2, sp, #0x70
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r1, _0223E37C @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #2
	orrs r0, r2
	strh r0, [r1]
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	bl ov17_02249300
	add sp, #0x8c
	pop {r4, r5, pc}
	.align 2, 0
_0223E370: .4byte 0x02253028
_0223E374: .4byte 0x02252FCC
_0223E378: .4byte 0x022530D8
_0223E37C: .4byte 0x04000008
	thumb_func_end ov17_0223E250

	thumb_func_start ov17_0223E380
ov17_0223E380: @ 0x0223E380
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x74]
	adds r1, #0x78
	movs r2, #1
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0xb
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r3, #2
	str r3, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x74]
	adds r4, #0x88
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov17_0223E380

	thumb_func_start ov17_0223E3CC
ov17_0223E3CC: @ 0x0223E3CC
	push {r4, r5, r6, r7}
	ldr r5, [r0]
	ldr r3, _0223E440 @ =0x00000171
	ldrb r4, [r5, r3]
	cmp r4, #1
	bne _0223E3E8
	adds r3, r3, #6
	ldrb r3, [r5, r3]
	cmp r3, #0
	beq _0223E3E8
	ldr r3, _0223E444 @ =0x00001C0E
	movs r4, #1
	strb r4, [r0, r3]
	b _0223E3EE
_0223E3E8:
	ldr r3, _0223E444 @ =0x00001C0E
	movs r4, #0
	strb r4, [r0, r3]
_0223E3EE:
	ldr r3, _0223E444 @ =0x00001C0E
	ldrb r3, [r0, r3]
	cmp r3, #1
	bne _0223E402
	movs r0, #1
	str r0, [r1]
	movs r1, #0
	str r1, [r2]
	pop {r4, r5, r6, r7}
	bx lr
_0223E402:
	movs r3, #0x12
	ldr r6, [r0]
	lsls r3, r3, #4
	ldrb r4, [r6, r3]
	movs r3, #0x28
	adds r7, r3, #0
	adds r5, r4, #0
	adds r7, #0xf7
	ldrb r6, [r6, r7]
	ldr r4, _0223E448 @ =0x0225312C
	muls r5, r3, r5
	lsls r6, r6, #3
	adds r4, r4, r5
	ldr r4, [r6, r4]
	str r4, [r1]
	ldr r1, [r0]
	adds r0, r3, #0
	adds r0, #0xf8
	ldrb r0, [r1, r0]
	ldr r4, _0223E44C @ =0x02253130
	adds r5, r0, #0
	muls r5, r3, r5
	adds r3, #0xf7
	ldrb r0, [r1, r3]
	lsls r1, r0, #3
	adds r0, r4, r5
	ldr r0, [r1, r0]
	str r0, [r2]
	movs r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0223E440: .4byte 0x00000171
_0223E444: .4byte 0x00001C0E
_0223E448: .4byte 0x0225312C
_0223E44C: .4byte 0x02253130
	thumb_func_end ov17_0223E3CC

	thumb_func_start ov17_0223E450
ov17_0223E450: @ 0x0223E450
	ldr r3, _0223E454 @ =FUN_02014000
	bx r3
	.align 2, 0
_0223E454: .4byte FUN_02014000
	thumb_func_end ov17_0223E450

	thumb_func_start ov17_0223E458
ov17_0223E458: @ 0x0223E458
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	bne _0223E466
	bl FUN_02022974
_0223E466:
	ldr r4, _0223E4AC @ =0x00000AEC
	movs r1, #0
	movs r2, #3
	adds r6, r4, #5
_0223E46E:
	subs r3, r2, r1
	lsls r3, r3, #0x18
	adds r0, r5, r1
	lsrs r3, r3, #0x18
	strb r3, [r0, r4]
	adds r1, r1, #1
	strb r3, [r0, r6]
	cmp r1, #4
	blt _0223E46E
	adds r0, r5, #0
	bl ov17_0224CFB8
	movs r4, #0
	movs r7, #0xad
	adds r6, r4, #0
	lsls r7, r7, #4
_0223E48E:
	ldr r0, [r5]
	movs r1, #5
	ldr r0, [r0, r6]
	movs r2, #0
	bl FUN_02074470
	bl ov17_0224CFA8
	adds r1, r5, r4
	adds r4, r4, #1
	adds r6, r6, #4
	strb r0, [r1, r7]
	cmp r4, #4
	blt _0223E48E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223E4AC: .4byte 0x00000AEC
	thumb_func_end ov17_0223E458

	thumb_func_start ov17_0223E4B0
ov17_0223E4B0: @ 0x0223E4B0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r5, r0, #0
	str r4, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223E584 @ =0x000080E9
	movs r1, #2
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r2, [r5, #0x6c]
	ldr r3, [r5, #0x70]
	bl FUN_0200CDC4
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	bl ov17_0224A20C
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	adds r2, r4, #0
	bl ov17_0224A390
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	adds r2, r4, #0
	bl ov17_0224A5A8
	adds r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	adds r0, #0x14
	bl ov17_0224A61C
	adds r0, r5, #0
	adds r0, #0x14
	bl ov17_0224A674
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	adds r2, r4, #0
	bl ov17_0224A984
	adds r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	adds r0, #0x14
	bl ov17_0224A9F8
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	adds r2, r4, #0
	bl ov17_0224C310
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	adds r0, r5, #0
	bl ov17_0224C384
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	adds r2, r4, #0
	bl ov17_0224AA94
	adds r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	adds r0, #0x14
	bl ov17_0224AB08
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	adds r2, r4, #0
	bl ov17_0224AC80
	adds r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	adds r0, #0x14
	bl ov17_0224ACF4
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	adds r2, r4, #0
	bl ov17_0224ACFC
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	adds r2, r4, #0
	bl ov17_0224AFA8
	adds r0, r5, #0
	bl ov17_0224B01C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_0223E584: .4byte 0x000080E9
	thumb_func_end ov17_0223E4B0

	thumb_func_start ov17_0223E588
ov17_0223E588: @ 0x0223E588
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	bl ov17_0224A210
	ldr r0, [r4, #0x70]
	bl ov17_0224A428
	adds r0, r4, #0
	adds r0, #0x14
	bl ov17_0224A580
	ldr r0, [r4, #0x70]
	bl ov17_0224A5F8
	adds r0, r4, #0
	adds r0, #0x14
	bl ov17_0224A650
	adds r0, r4, #0
	adds r0, #0x14
	bl ov17_0224A7B8
	ldr r0, [r4, #0x70]
	bl ov17_0224A9D4
	adds r0, r4, #0
	adds r0, #0x14
	bl ov17_0224AA1C
	adds r0, r4, #0
	bl ov17_0224C3E4
	ldr r0, [r4, #0x70]
	bl ov17_0224C360
	ldr r0, [r4, #0x70]
	bl ov17_0224AAE4
	adds r0, r4, #0
	adds r0, #0x14
	bl ov17_0224ABB0
	ldr r0, [r4, #0x70]
	bl ov17_0224ACD0
	adds r0, r4, #0
	adds r0, #0x14
	bl ov17_0224ACF8
	ldr r0, [r4, #0x70]
	bl ov17_0224AD4C
	ldr r0, [r4, #0x70]
	bl ov17_0224AFF8
	adds r0, r4, #0
	bl ov17_0224B058
	ldr r0, [r4, #0x70]
	ldr r1, _0223E608 @ =0x000080E9
	bl FUN_0200D080
	pop {r4, pc}
	.align 2, 0
_0223E608: .4byte 0x000080E9
	thumb_func_end ov17_0223E588

	thumb_func_start ov17_0223E60C
ov17_0223E60C: @ 0x0223E60C
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0x2e
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223E66C @ =0x000080EA
	movs r1, #3
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r2, [r4, #0x6c]
	ldr r3, [r4, #0x70]
	bl FUN_0200CD7C
	movs r0, #0x2e
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223E670 @ =0x000080EB
	movs r1, #3
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r2, [r4, #0x6c]
	ldr r3, [r4, #0x70]
	bl FUN_0200CD7C
	ldr r0, _0223E674 @ =0x0000114C
	ldr r0, [r4, r0]
	bl ov17_022493C4
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_0223E66C: .4byte 0x000080EA
_0223E670: .4byte 0x000080EB
_0223E674: .4byte 0x0000114C
	thumb_func_end ov17_0223E60C

	thumb_func_start ov17_0223E678
ov17_0223E678: @ 0x0223E678
	bx lr
	.align 2, 0
	thumb_func_end ov17_0223E678

	thumb_func_start ov17_0223E67C
ov17_0223E67C: @ 0x0223E67C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x17
	str r0, [sp, #0xc]
	adds r5, r1, #0
	ldr r2, [r4, #0x74]
	adds r0, r5, #0
	movs r1, #0xd
	movs r3, #3
	bl FUN_020070E8
	adds r0, r4, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov17_0223E3CC
	ldr r0, [sp, #0x10]
	movs r1, #0
	bl ov17_0223F0BC
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x17
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x74]
	adds r0, r5, #0
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0x2d
	movs r2, #0x20
	movs r3, #0x17
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0x2d
	movs r2, #0x24
	movs r3, #0x17
	bl FUN_02003050
	ldr r1, [r4]
	ldr r0, _0223E764 @ =0x00001988
	ldr r0, [r1, r0]
	bl FUN_02027B50
	adds r5, r0, #0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r1, #1
	ldr r0, [r4, #0x74]
	adds r2, r1, #0
	movs r3, #0xf
	bl FUN_0200DD0C
	adds r0, r5, #0
	bl FUN_0200DD08
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0x26
	movs r3, #0x17
	bl FUN_02003050
	adds r0, r4, #0
	bl ov17_0224C848
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02003164
	ldr r1, _0223E768 @ =0x00001128
	movs r2, #2
	ldr r1, [r4, r1]
	lsls r2, r2, #8
	blx FUN_020C4B18
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E764: .4byte 0x00001988
_0223E768: .4byte 0x00001128
	thumb_func_end ov17_0223E67C

	thumb_func_start ov17_0223E76C
ov17_0223E76C: @ 0x0223E76C
	bx lr
	.align 2, 0
	thumb_func_end ov17_0223E76C

	thumb_func_start ov17_0223E770
ov17_0223E770: @ 0x0223E770
	bx lr
	.align 2, 0
	thumb_func_end ov17_0223E770

	thumb_func_start ov17_0223E774
ov17_0223E774: @ 0x0223E774
	bx lr
	.align 2, 0
	thumb_func_end ov17_0223E774

	thumb_func_start ov17_0223E778
ov17_0223E778: @ 0x0223E778
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223E788
	bl FUN_02022974
_0223E788:
	movs r1, #0x12
	movs r0, #0x17
	lsls r1, r1, #0xa
	bl FUN_02018144
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r3, #0x12
	ldr r0, _0223E7D8 @ =ov17_0223E800
	ldr r1, _0223E7DC @ =ov17_0223E81C
	lsls r3, r3, #0xa
	bl FUN_02014014
	str r0, [r4, #0xc]
	bl FUN_02014784
	adds r2, r0, #0
	movs r0, #1
	movs r1, #0xe1
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	movs r0, #0x3d
	movs r1, #3
	movs r2, #0x17
	bl FUN_020144C4
	adds r1, r0, #0
	ldr r0, [r4, #0xc]
	movs r2, #0xa
	movs r3, #1
	bl FUN_020144CC
	add sp, #8
	pop {r4, pc}
	nop
_0223E7D8: .4byte ov17_0223E800
_0223E7DC: .4byte ov17_0223E81C
	thumb_func_end ov17_0223E778

	thumb_func_start ov17_0223E7E0
ov17_0223E7E0: @ 0x0223E7E0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02014730
	adds r5, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0201411C
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_0223E7E0

	thumb_func_start ov17_0223E800
ov17_0223E800: @ 0x0223E800
	push {r4, lr}
	ldr r3, _0223E818 @ =0x02100DEC
	movs r2, #0
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bl FUN_020145B4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_0223E818: .4byte 0x02100DEC
	thumb_func_end ov17_0223E800

	thumb_func_start ov17_0223E81C
ov17_0223E81C: @ 0x0223E81C
	push {r4, lr}
	ldr r3, _0223E834 @ =0x02100DF4
	movs r2, #0
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bl FUN_020145F4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_0223E834: .4byte 0x02100DF4
	thumb_func_end ov17_0223E81C

	thumb_func_start ov17_0223E838
ov17_0223E838: @ 0x0223E838
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223E87A
	ldr r1, [r5]
	ldr r0, _0223E89C @ =0x00000177
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0223E85A
	ldr r0, [r4, #4]
	cmp r0, #0x78
	bge _0223E85A
	adds r0, r0, #1
	str r0, [r4, #4]
	b _0223E898
_0223E85A:
	ldr r0, _0223E8A0 @ =0x00001174
	ldr r3, _0223E8A4 @ =0x00000AEC
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0xa
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223E898
	movs r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223E898
_0223E87A:
	ldr r4, _0223E8A8 @ =0x00000127
	ldr r3, [r5]
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	ldr r0, _0223E8A0 @ =0x00001174
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	adds r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223E898
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223E898:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E89C: .4byte 0x00000177
_0223E8A0: .4byte 0x00001174
_0223E8A4: .4byte 0x00000AEC
_0223E8A8: .4byte 0x00000127
	thumb_func_end ov17_0223E838

	thumb_func_start ov17_0223E8AC
ov17_0223E8AC: @ 0x0223E8AC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223E8BE
	cmp r0, #1
	beq _0223E912
	b _0223E934
_0223E8BE:
	ldr r0, _0223E93C @ =0x00000B53
	movs r2, #0
	strb r2, [r5, r0]
	adds r1, r0, #1
	strb r2, [r5, r1]
	ldr r2, [r5]
	ldr r1, _0223E940 @ =0x00000123
	subs r0, r0, #7
	ldrb r2, [r2, r1]
	strb r2, [r5, r0]
	ldr r2, [r5]
	subs r0, r1, #3
	ldrb r0, [r2, r0]
	bl ov17_0224C57C
	movs r1, #0xb5
	lsls r1, r1, #4
	strb r0, [r5, r1]
	ldr r0, [r5]
	bl FUN_0209590C
	cmp r0, #1
	bne _0223E8F0
	movs r1, #2
	b _0223E8F2
_0223E8F0:
	movs r1, #1
_0223E8F2:
	ldr r0, _0223E944 @ =0x00000B52
	ldr r3, _0223E948 @ =0x00000B1C
	strb r1, [r5, r0]
	ldr r0, _0223E94C @ =0x00001174
	adds r1, r5, #0
	adds r0, r5, r0
	movs r2, #9
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223E938
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223E938
_0223E912:
	ldr r0, _0223E94C @ =0x00001174
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _0223E950 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223E938
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223E938
_0223E934:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223E938:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E93C: .4byte 0x00000B53
_0223E940: .4byte 0x00000123
_0223E944: .4byte 0x00000B52
_0223E948: .4byte 0x00000B1C
_0223E94C: .4byte 0x00001174
_0223E950: .4byte 0x00000127
	thumb_func_end ov17_0223E8AC

	thumb_func_start ov17_0223E954
ov17_0223E954: @ 0x0223E954
	push {r4, lr}
	adds r4, r1, #0
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223E99C @ =0x00001174
	bne _0223E97A
	adds r0, r2, r0
	adds r1, r2, #0
	movs r2, #3
	movs r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223E996
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223E996
_0223E97A:
	ldr r3, [r2]
	ldr r4, _0223E9A0 @ =0x00000127
	adds r0, r2, r0
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223E996
	movs r0, #1
	pop {r4, pc}
_0223E996:
	movs r0, #0
	pop {r4, pc}
	nop
_0223E99C: .4byte 0x00001174
_0223E9A0: .4byte 0x00000127
	thumb_func_end ov17_0223E954

	thumb_func_start ov17_0223E9A4
ov17_0223E9A4: @ 0x0223E9A4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r1, #0
	ldrh r1, [r5]
	adds r4, r0, #0
	cmp r1, #4
	bls _0223E9B4
	b _0223EB66
_0223E9B4:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223E9C0: @ jump table
	.2byte _0223E9CA - _0223E9C0 - 2 @ case 0
	.2byte _0223EAEA - _0223E9C0 - 2 @ case 1
	.2byte _0223EB06 - _0223E9C0 - 2 @ case 2
	.2byte _0223EB28 - _0223E9C0 - 2 @ case 3
	.2byte _0223EB44 - _0223E9C0 - 2 @ case 4
_0223E9CA:
	add r1, sp, #4
	add r2, sp, #0
	bl ov17_0223E3CC
	ldr r0, [sp, #4]
	ldr r3, _0223EB74 @ =0x02253084
	adds r2, r0, #0
	movs r1, #0xc
	muls r2, r1, r2
	ldr r0, _0223EB78 @ =0x00000ACC
	adds r2, r3, r2
	str r2, [r4, r0]
	ldr r2, [sp, #4]
	ldr r0, _0223EB7C @ =0x0112A880
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _0223EB80 @ =0x02253086
	ldrh r1, [r1, r3]
	blx FUN_020E1F6C
	ldr r1, _0223EB84 @ =0x00000B04
	str r0, [r4, r1]
	ldr r0, [sp]
	movs r1, #1
	bl ov17_0223F0BC
	ldr r1, _0223EB84 @ =0x00000B04
	movs r3, #0
	ldr r1, [r4, r1]
	ldr r2, _0223EB88 @ =0x00001388
	muls r0, r1, r0
	mov ip, r3
	mov r1, ip
	adds r0, r0, r2
	adcs r1, r3
	lsls r2, r2, #1
	blx FUN_020E1ED4
	ldr r1, _0223EB8C @ =0x00000B08
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	movs r0, #0xc
	adds r3, r2, #0
	ldr r2, _0223EB80 @ =0x02253086
	muls r3, r0, r3
	ldrh r3, [r2, r3]
	adds r2, r1, #0
	adds r2, #0x10
	strh r3, [r4, r2]
	subs r2, r1, #4
	ldr r6, [sp, #4]
	ldr r3, [r4, r2]
	adds r2, r6, #0
	ldr r6, _0223EB90 @ =0x0225308A
	muls r2, r0, r2
	ldrb r2, [r6, r2]
	adds r6, r3, #0
	muls r6, r2, r6
	adds r2, r1, #4
	str r6, [r4, r2]
	ldr r3, [sp, #4]
	subs r2, r1, #4
	adds r6, r3, #0
	muls r6, r0, r6
	ldr r0, _0223EB94 @ =0x0225308B
	ldr r2, [r4, r2]
	ldrb r0, [r0, r6]
	adds r3, r2, #0
	muls r3, r0, r3
	adds r0, r1, #0
	adds r0, #8
	str r3, [r4, r0]
	subs r0, r1, #4
	ldr r0, [r4, r0]
	movs r1, #0x30
	blx FUN_020E2178
	ldr r1, _0223EB98 @ =0x00000B14
	movs r2, #0xc
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	adds r3, r0, #0
	ldr r0, _0223EB9C @ =0x02253089
	muls r3, r2, r3
	ldrb r3, [r0, r3]
	adds r0, r1, #6
	strb r3, [r4, r0]
	ldr r0, [sp, #4]
	muls r2, r0, r2
	ldr r0, _0223EB74 @ =0x02253084
	ldrh r2, [r0, r2]
	adds r0, r1, #0
	subs r0, #0x14
	str r2, [r4, r0]
	ldr r2, [sp]
	adds r0, r1, #7
	strb r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0x48
	ldr r0, [r4, r0]
	adds r2, r1, #0
	ldrh r3, [r0]
	adds r2, #0x2c
	strh r3, [r4, r2]
	adds r2, r1, #0
	ldrh r3, [r0, #2]
	adds r2, #0x2e
	strh r3, [r4, r2]
	adds r2, r1, #0
	ldrh r3, [r0, #4]
	adds r2, #0x30
	strh r3, [r4, r2]
	adds r2, r1, #0
	ldrh r3, [r0, #6]
	adds r2, #0x32
	strh r3, [r4, r2]
	adds r2, r1, #0
	ldrh r3, [r0, #8]
	adds r2, #0x34
	strh r3, [r4, r2]
	ldrh r2, [r0, #0xa]
	adds r0, r1, #0
	adds r0, #0x36
	strh r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0x10
	ldr r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x10
	str r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x14
	str r2, [r4, r0]
	adds r0, r1, #4
	ldrh r0, [r4, r0]
	adds r1, #0x18
	strh r0, [r4, r1]
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EAEA:
	ldr r0, _0223EBA0 @ =0x00001174
	ldr r3, _0223EBA4 @ =0x00000AEC
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #0xa
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EB6C
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EB06:
	ldr r0, _0223EBA0 @ =0x00001174
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _0223EBA8 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EB6C
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EB28:
	ldr r0, _0223EBA0 @ =0x00001174
	ldr r3, _0223EBAC @ =0x00000B1C
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #0xb
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EB6C
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EB44:
	ldr r0, _0223EBA0 @ =0x00001174
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _0223EBA8 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EB6C
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _0223EB6C
_0223EB66:
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223EB6C:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223EB74: .4byte 0x02253084
_0223EB78: .4byte 0x00000ACC
_0223EB7C: .4byte 0x0112A880
_0223EB80: .4byte 0x02253086
_0223EB84: .4byte 0x00000B04
_0223EB88: .4byte 0x00001388
_0223EB8C: .4byte 0x00000B08
_0223EB90: .4byte 0x0225308A
_0223EB94: .4byte 0x0225308B
_0223EB98: .4byte 0x00000B14
_0223EB9C: .4byte 0x02253089
_0223EBA0: .4byte 0x00001174
_0223EBA4: .4byte 0x00000AEC
_0223EBA8: .4byte 0x00000127
_0223EBAC: .4byte 0x00000B1C
	thumb_func_end ov17_0223E9A4

	thumb_func_start ov17_0223EBB0
ov17_0223EBB0: @ 0x0223EBB0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r1]
	str r1, [sp]
	cmp r0, #0
	bne _0223EC0E
	movs r1, #0xaf
	lsls r1, r1, #4
	ldrb r0, [r5, r1]
	movs r4, #0
	adds r2, r5, r0
	subs r0, r1, #4
	ldrb r0, [r2, r0]
	adds r1, #0x2c
	strb r0, [r5, r1]
	ldr r0, _0223EC18 @ =0x00000AF1
	adds r1, r0, #0
	adds r1, #0x2d
_0223EBD4:
	adds r3, r5, r4
	ldrb r2, [r3, r0]
	adds r4, r4, #1
	cmp r4, #4
	strb r2, [r3, r1]
	blt _0223EBD4
	ldr r1, [r5]
	ldr r0, _0223EC1C @ =0x00000127
	ldrb r6, [r1, r0]
	cmp r6, #4
	bge _0223EC02
	lsls r0, r6, #2
	movs r7, #0xb3
	adds r4, r5, r0
	lsls r7, r7, #4
_0223EBF2:
	ldr r0, [r5]
	bl FUN_02094E98
	str r0, [r4, r7]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0223EBF2
_0223EC02:
	ldr r0, [sp]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	b _0223EC12
_0223EC0E:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223EC12:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223EC18: .4byte 0x00000AF1
_0223EC1C: .4byte 0x00000127
	thumb_func_end ov17_0223EBB0

	thumb_func_start ov17_0223EC20
ov17_0223EC20: @ 0x0223EC20
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223EC68 @ =0x00001174
	bne _0223EC48
	ldr r3, _0223EC6C @ =0x00000B1C
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #7
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EC64
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223EC64
_0223EC48:
	ldr r4, _0223EC70 @ =0x00000127
	ldr r3, [r5]
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	adds r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EC64
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223EC64:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223EC68: .4byte 0x00001174
_0223EC6C: .4byte 0x00000B1C
_0223EC70: .4byte 0x00000127
	thumb_func_end ov17_0223EC20

	thumb_func_start ov17_0223EC74
ov17_0223EC74: @ 0x0223EC74
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223ECBC @ =0x00001174
	bne _0223EC9C
	ldr r3, _0223ECC0 @ =0x00000B1C
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #5
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223ECB8
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223ECB8
_0223EC9C:
	ldr r4, _0223ECC4 @ =0x00000127
	ldr r3, [r5]
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	adds r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223ECB8
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223ECB8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223ECBC: .4byte 0x00001174
_0223ECC0: .4byte 0x00000B1C
_0223ECC4: .4byte 0x00000127
	thumb_func_end ov17_0223EC74

	thumb_func_start ov17_0223ECC8
ov17_0223ECC8: @ 0x0223ECC8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	ldr r0, _0223ED10 @ =0x00001174
	bne _0223ECF0
	ldr r3, _0223ED14 @ =0x00000B1C
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #8
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223ED0C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223ED0C
_0223ECF0:
	ldr r4, _0223ED18 @ =0x00000127
	ldr r3, [r5]
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	adds r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223ED0C
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223ED0C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223ED10: .4byte 0x00001174
_0223ED14: .4byte 0x00000B1C
_0223ED18: .4byte 0x00000127
	thumb_func_end ov17_0223ECC8

	thumb_func_start ov17_0223ED1C
ov17_0223ED1C: @ 0x0223ED1C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _0223ED72
	movs r1, #0xaf
	lsls r1, r1, #4
	ldrb r0, [r5, r1]
	cmp r0, #3
	blo _0223ED36
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223ED36:
	adds r0, r1, #2
	ldrb r0, [r5, r0]
	adds r1, #0x5c
	strb r0, [r5, r1]
	movs r0, #0x12
	ldr r1, [r5]
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	bl ov17_0224C57C
	movs r3, #0xb5
	lsls r3, r3, #4
	strb r0, [r5, r3]
	adds r0, r3, #2
	movs r1, #0
	strb r1, [r5, r0]
	ldr r0, _0223ED94 @ =0x00001174
	subs r3, #0x34
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #6
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223ED90
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223ED90
_0223ED72:
	ldr r4, _0223ED98 @ =0x00000127
	ldr r3, [r5]
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	ldr r0, _0223ED94 @ =0x00001174
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	adds r0, r5, r0
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223ED90
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223ED90:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223ED94: .4byte 0x00001174
_0223ED98: .4byte 0x00000127
	thumb_func_end ov17_0223ED1C

	thumb_func_start ov17_0223ED9C
ov17_0223ED9C: @ 0x0223ED9C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223EDB2
	cmp r0, #1
	beq _0223EDDC
	cmp r0, #2
	beq _0223EDF8
	b _0223EE1A
_0223EDB2:
	ldr r0, _0223EE40 @ =0x00000AF1
	ldr r1, _0223EE40 @ =0x00000AF1
	ldrb r7, [r3, r0]
	movs r6, #0
	adds r0, r0, #1
_0223EDBC:
	adds r5, r3, r6
	ldrb r2, [r5, r0]
	adds r6, r6, #1
	cmp r6, #3
	strb r2, [r5, r1]
	blt _0223EDBC
	ldr r0, _0223EE44 @ =0x00000AF4
	strb r7, [r3, r0]
	subs r1, r0, #4
	ldrb r1, [r3, r1]
	subs r0, r0, #4
	adds r1, r1, #1
	strb r1, [r3, r0]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_0223EDDC:
	ldr r0, _0223EE48 @ =0x00001174
	ldr r5, _0223EE4C @ =0x00000AEC
	adds r0, r3, r0
	adds r1, r3, #0
	movs r2, #0xa
	adds r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EE3C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223EE3C
_0223EDF8:
	ldr r0, _0223EE48 @ =0x00001174
	ldr r5, [r3]
	adds r0, r3, r0
	ldr r3, _0223EE50 @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r5, r3]
	subs r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EE3C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223EE3C
_0223EE1A:
	movs r1, #0xaf
	lsls r1, r1, #4
	ldrb r0, [r3, r1]
	cmp r0, #4
	bhs _0223EE38
	adds r0, r1, #0
	adds r0, #0x2d
	ldrb r0, [r3, r0]
	adds r1, #0x2d
	adds r0, r0, #1
	strb r0, [r3, r1]
	movs r0, #4
	strh r0, [r4, #2]
	movs r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0223EE38:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223EE3C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223EE40: .4byte 0x00000AF1
_0223EE44: .4byte 0x00000AF4
_0223EE48: .4byte 0x00001174
_0223EE4C: .4byte 0x00000AEC
_0223EE50: .4byte 0x00000127
	thumb_func_end ov17_0223ED9C

	thumb_func_start ov17_0223EE54
ov17_0223EE54: @ 0x0223EE54
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223EE66
	cmp r0, #1
	beq _0223EE82
	b _0223EEA4
_0223EE66:
	ldr r0, _0223EEAC @ =0x00001174
	ldr r3, _0223EEB0 @ =0x00000B1C
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0xc
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223EEA8
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223EEA8
_0223EE82:
	ldr r0, _0223EEAC @ =0x00001174
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _0223EEB4 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223EEA8
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223EEA8
_0223EEA4:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223EEA8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223EEAC: .4byte 0x00001174
_0223EEB0: .4byte 0x00000B1C
_0223EEB4: .4byte 0x00000127
	thumb_func_end ov17_0223EE54

	thumb_func_start ov17_0223EEB8
ov17_0223EEB8: @ 0x0223EEB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp]
	ldrh r0, [r1]
	str r1, [sp, #4]
	cmp r0, #0
	beq _0223EED2
	cmp r0, #1
	beq _0223EFC8
	cmp r0, #2
	bne _0223EED0
	b _0223EFEC
_0223EED0:
	b _0223F014
_0223EED2:
	movs r1, #0
	movs r6, #0x4b
	ldr r2, [sp]
	ldr r5, _0223F020 @ =0x00000AF6
	adds r3, r1, #0
	lsls r6, r6, #2
_0223EEDE:
	ldr r4, [sp]
	ldrsh r0, [r2, r5]
	ldr r4, [r4]
	adds r1, r1, #1
	adds r4, r4, r3
	strh r0, [r4, r6]
	adds r2, r2, #2
	adds r3, #0xc
	cmp r1, #4
	blt _0223EEDE
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0]
	add r2, sp, #0x1c
	bl ov17_02251930
	ldr r0, [sp]
	movs r1, #1
	ldr r0, [r0]
	add r2, sp, #0x14
	bl ov17_02251930
	movs r6, #0
	add r2, sp, #0x14
	add r3, sp, #0x1c
	add r4, sp, #0xc
	add r5, sp, #8
	adds r7, r6, #0
_0223EF16:
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldrsh r0, [r2, r7]
	strb r6, [r5]
	adds r6, r6, #1
	adds r0, r1, r0
	strh r0, [r4]
	adds r2, r2, #2
	adds r3, r3, #2
	adds r4, r4, #2
	adds r5, r5, #1
	cmp r6, #4
	blt _0223EF16
	movs r6, #0
	subs r7, r6, #2
_0223EF34:
	movs r3, #3
	cmp r6, #3
	bge _0223EF66
	add r4, sp, #0x10
	add r5, sp, #8
	adds r4, #2
	adds r5, #3
_0223EF42:
	movs r0, #0
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r7]
	cmp r1, r0
	bge _0223EF5C
	strh r1, [r4]
	subs r1, r4, #2
	strh r0, [r1]
	subs r0, r5, #1
	ldrb r2, [r5]
	ldrb r1, [r0]
	strb r1, [r5]
	strb r2, [r0]
_0223EF5C:
	subs r3, r3, #1
	subs r4, r4, #2
	subs r5, r5, #1
	cmp r3, r6
	bgt _0223EF42
_0223EF66:
	adds r6, r6, #1
	cmp r6, #3
	blt _0223EF34
	ldr r1, _0223F024 @ =0x00000172
	movs r4, #0
	add r3, sp, #8
_0223EF72:
	ldr r0, [sp]
	ldrb r2, [r3]
	ldr r0, [r0]
	adds r3, r3, #1
	adds r0, r0, r4
	adds r4, r4, #1
	strb r2, [r0, r1]
	cmp r4, #4
	blt _0223EF72
	ldr r2, _0223F028 @ =0x00000B53
	ldr r1, [sp]
	movs r0, #0
	strb r0, [r1, r2]
	adds r3, r2, #1
	strb r0, [r1, r3]
	ldr r1, [r1]
	ldr r4, _0223F024 @ =0x00000172
	subs r3, r2, #7
	ldrb r5, [r1, r4]
	ldr r1, [sp]
	subs r4, #0x51
	strb r5, [r1, r3]
	ldr r1, [r1]
	ldrb r1, [r1, r4]
	cmp r1, #0
	beq _0223EFAE
	cmp r1, #1
	beq _0223EFAE
	cmp r1, #2
	bne _0223EFB8
_0223EFAE:
	ldr r1, _0223F02C @ =0x00000B52
	ldr r0, [sp]
	movs r2, #6
	strb r2, [r0, r1]
	b _0223EFBE
_0223EFB8:
	ldr r1, [sp]
	subs r2, r2, #1
	strb r0, [r1, r2]
_0223EFBE:
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
_0223EFC8:
	ldr r1, _0223F030 @ =0x00001174
	ldr r0, [sp]
	ldr r4, _0223F034 @ =0x00000B1C
	adds r0, r0, r1
	ldr r1, [sp]
	movs r2, #9
	adds r3, r1, #0
	adds r3, r3, r4
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223F01A
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
	b _0223F01A
_0223EFEC:
	ldr r0, [sp]
	ldr r4, _0223F038 @ =0x00000127
	ldr r3, [r0]
	ldr r1, _0223F030 @ =0x00001174
	subs r2, r4, #4
	adds r0, r0, r1
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223F01A
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
	b _0223F01A
_0223F014:
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223F01A:
	movs r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223F020: .4byte 0x00000AF6
_0223F024: .4byte 0x00000172
_0223F028: .4byte 0x00000B53
_0223F02C: .4byte 0x00000B52
_0223F030: .4byte 0x00001174
_0223F034: .4byte 0x00000B1C
_0223F038: .4byte 0x00000127
	thumb_func_end ov17_0223EEB8

	thumb_func_start ov17_0223F03C
ov17_0223F03C: @ 0x0223F03C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223F04E
	cmp r0, #1
	beq _0223F052
	b _0223F082
_0223F04E:
	adds r0, r0, #1
	strh r0, [r4]
_0223F052:
	ldr r3, _0223F0B0 @ =0x00000172
	movs r0, #0
	add r1, sp, #0
_0223F058:
	ldr r5, [r2]
	adds r5, r5, r0
	ldrb r5, [r5, r3]
	adds r0, r0, #1
	strb r5, [r1]
	adds r1, r1, #1
	cmp r0, #4
	blt _0223F058
	ldr r0, _0223F0B4 @ =0x00001174
	adds r1, r2, #0
	adds r0, r2, r0
	movs r2, #4
	add r3, sp, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _0223F0AA
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0223F0AA
_0223F082:
	ldr r4, _0223F0B8 @ =0x00000127
	ldr r0, _0223F0B4 @ =0x00001174
	adds r1, r4, #0
	ldr r3, [r2]
	adds r1, #0x50
	adds r0, r2, r0
	ldrb r2, [r3, r4]
	ldrb r1, [r3, r1]
	subs r1, r2, r1
	subs r2, r4, #4
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	subs r1, r1, #1
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0223F0AA
	movs r0, #3
	pop {r3, r4, r5, pc}
_0223F0AA:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223F0B0: .4byte 0x00000172
_0223F0B4: .4byte 0x00001174
_0223F0B8: .4byte 0x00000127
	thumb_func_end ov17_0223F03C

	thumb_func_start ov17_0223F0BC
ov17_0223F0BC: @ 0x0223F0BC
	push {r3, lr}
	cmp r1, #4
	bhi _0223F104
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223F0CE: @ jump table
	.2byte _0223F0FC - _0223F0CE - 2 @ case 0
	.2byte _0223F0EA - _0223F0CE - 2 @ case 1
	.2byte _0223F0E2 - _0223F0CE - 2 @ case 2
	.2byte _0223F0D8 - _0223F0CE - 2 @ case 3
	.2byte _0223F0F2 - _0223F0CE - 2 @ case 4
_0223F0D8:
	lsls r1, r0, #2
	ldr r0, _0223F10C @ =0x02252FC7
	ldrb r0, [r0, r1]
	lsls r0, r0, #3
	pop {r3, pc}
_0223F0E2:
	lsls r1, r0, #2
	ldr r0, _0223F10C @ =0x02252FC7
	ldrb r0, [r0, r1]
	pop {r3, pc}
_0223F0EA:
	lsls r1, r0, #2
	ldr r0, _0223F110 @ =0x02252FC6
	ldrb r0, [r0, r1]
	pop {r3, pc}
_0223F0F2:
	lsls r1, r0, #2
	ldr r0, _0223F110 @ =0x02252FC6
	ldrb r0, [r0, r1]
	lsls r0, r0, #1
	pop {r3, pc}
_0223F0FC:
	lsls r1, r0, #2
	ldr r0, _0223F114 @ =0x02252FC4
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0223F104:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_0223F10C: .4byte 0x02252FC7
_0223F110: .4byte 0x02252FC6
_0223F114: .4byte 0x02252FC4
	thumb_func_end ov17_0223F0BC

	thumb_func_start ov17_0223F118
ov17_0223F118: @ 0x0223F118
	push {r3, lr}
	ldr r0, _0223F134 @ =0x0000000B
	movs r1, #2
	bl FUN_02006590
	ldr r0, _0223F138 @ =0x0000000C
	movs r1, #2
	bl FUN_02006590
	ldr r0, _0223F13C @ =0x00000016
	movs r1, #2
	bl FUN_02006590
	pop {r3, pc}
	.align 2, 0
_0223F134: .4byte 0x0000000B
_0223F138: .4byte 0x0000000C
_0223F13C: .4byte 0x00000016
	thumb_func_end ov17_0223F118

	thumb_func_start ov17_0223F140
ov17_0223F140: @ 0x0223F140
	push {r3, lr}
	sub sp, #8
	movs r2, #2
	ldr r1, _0223F158 @ =ov17_0223F15C
	str r2, [sp]
	str r1, [sp, #4]
	movs r1, #0
	adds r3, r1, #0
	bl FUN_02024220
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_0223F158: .4byte ov17_0223F15C
	thumb_func_end ov17_0223F140

	thumb_func_start ov17_0223F15C
ov17_0223F15C: @ 0x0223F15C
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _0223F1C8 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0223F1CC @ =0xFFFFCFFD
	ands r2, r1
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r3, [r0]
	adds r1, r1, #2
	ands r3, r2
	movs r2, #0x10
	orrs r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0223F1D0 @ =0x0000CFFB
	ands r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	subs r2, #0x1c
	ands r3, r1
	movs r1, #8
	orrs r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	ands r1, r2
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r0, #0
	ldr r2, _0223F1D4 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _0223F1D8 @ =0xBFFF0000
	ldr r0, _0223F1DC @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0223F1C8: .4byte 0x04000008
_0223F1CC: .4byte 0xFFFFCFFD
_0223F1D0: .4byte 0x0000CFFB
_0223F1D4: .4byte 0x00007FFF
_0223F1D8: .4byte 0xBFFF0000
_0223F1DC: .4byte 0x04000580
	thumb_func_end ov17_0223F15C

	thumb_func_start ov17_0223F1E0
ov17_0223F1E0: @ 0x0223F1E0
	ldr r3, _0223F1E4 @ =FUN_020242C4
	bx r3
	.align 2, 0
_0223F1E4: .4byte FUN_020242C4
	thumb_func_end ov17_0223F1E0

	thumb_func_start ov17_0223F1E8
ov17_0223F1E8: @ 0x0223F1E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x8c]
	movs r2, #0
	str r3, [sp, #0x24]
	ldr r5, [sp, #0x88]
	ldr r4, [sp, #0xa0]
	bl FUN_02002D7C
	adds r7, r0, #0
	asrs r1, r7, #2
	lsrs r1, r1, #0x1d
	adds r1, r7, r1
	asrs r6, r1, #3
	movs r1, #8
	blx FUN_020BD140
	cmp r0, #0
	beq _0223F218
	adds r6, r6, #1
_0223F218:
	add r0, sp, #0x34
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r2, r6, #0x18
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x34
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_0201A870
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x90]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x8c]
	add r0, sp, #0x34
	str r3, [sp, #0x14]
	bl FUN_0201D7E0
	ldr r2, [sp, #0x18]
	add r0, sp, #0x34
	movs r1, #1
	bl FUN_02012898
	movs r1, #1
	adds r2, r1, #0
	add r3, sp, #0x28
	bl FUN_0201ED94
	ldr r0, [sp, #0xa8]
	cmp r0, #1
	bne _0223F270
	lsrs r0, r7, #0x1f
	adds r0, r7, r0
	asrs r0, r0, #1
	subs r4, r4, r0
_0223F270:
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x44]
	add r0, sp, #0x34
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x20]
	bl FUN_0200D9B0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x9c]
	bl FUN_0200D04C
	str r0, [sp, #0x50]
	movs r0, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x2c]
	str r4, [sp, #0x5c]
	str r0, [sp, #0x58]
	ldr r0, [sp, #0xa4]
	subs r0, #8
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0x64]
	ldr r0, [sp, #0xb0]
	str r0, [sp, #0x68]
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x70]
	add r0, sp, #0x44
	bl FUN_020127E8
	ldr r1, [sp, #0x98]
	adds r6, r0, #0
	cmp r1, #0
	beq _0223F2BC
	bl FUN_02012A90
_0223F2BC:
	ldr r2, [sp, #0xa4]
	adds r0, r6, #0
	adds r1, r4, #0
	subs r2, #8
	bl FUN_020128C4
	add r0, sp, #0x34
	bl FUN_0201A8FC
	str r6, [r5]
	add r3, sp, #0x28
	ldm r3!, {r0, r1}
	adds r2, r5, #4
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	strh r7, [r5, #0x10]
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0223F1E8

	thumb_func_start ov17_0223F2E4
ov17_0223F2E4: @ 0x0223F2E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02012870
	adds r0, r4, #4
	bl FUN_0201EE28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_0223F2E4

	thumb_func_start ov17_0223F2F8
ov17_0223F2F8: @ 0x0223F2F8
	cmp r3, #1
	bne _0223F302
	ldrh r3, [r0, #0x10]
	lsrs r3, r3, #1
	subs r1, r1, r3
_0223F302:
	ldr r3, _0223F30C @ =FUN_020128C4
	ldr r0, [r0]
	subs r2, #8
	bx r3
	nop
_0223F30C: .4byte FUN_020128C4
	thumb_func_end ov17_0223F2F8

	thumb_func_start ov17_0223F310
ov17_0223F310: @ 0x0223F310
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r0, #1
	movs r1, #0x1a
	movs r2, #0xcf
	bl FUN_0200B144
	adds r5, r0, #0
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0200B190
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0223F310

	thumb_func_start ov17_0223F334
ov17_0223F334: @ 0x0223F334
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r1, _0223F36C @ =0x00000122
	ldrb r1, [r5, r1]
	bl ov17_02252A9C
	adds r7, r0, #0
	movs r6, #0
	adds r4, r5, #0
_0223F348:
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	adds r1, r7, #0
	bl ov17_02252A70
	ldr r1, _0223F370 @ =0x0000012A
	adds r6, r6, #1
	strh r0, [r4, r1]
	adds r5, r5, #4
	adds r4, #0xc
	cmp r6, #4
	blt _0223F348
	adds r0, r7, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F36C: .4byte 0x00000122
_0223F370: .4byte 0x0000012A
	thumb_func_end ov17_0223F334

	thumb_func_start ov17_0223F374
ov17_0223F374: @ 0x0223F374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r4, [sp]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	str r0, [sp, #4]
_0223F384:
	ldr r0, [r4]
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	movs r6, #0x64
	adds r5, r0, #0
	adds r0, r6, #0
	ldr r1, [sp]
	adds r0, #0xbb
	ldrb r0, [r1, r0]
	cmp r0, #4
	bls _0223F3A0
	b _0223F512
_0223F3A0:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223F3AC: @ jump table
	.2byte _0223F3B6 - _0223F3AC - 2 @ case 0
	.2byte _0223F3FC - _0223F3AC - 2 @ case 1
	.2byte _0223F442 - _0223F3AC - 2 @ case 2
	.2byte _0223F488 - _0223F3AC - 2 @ case 3
	.2byte _0223F4CE - _0223F3AC - 2 @ case 4
_0223F3B6:
	ldr r0, [r4]
	movs r1, #0x13
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #0x17
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0x14
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0xa0
	cmp r5, r0
	beq _0223F3F4
	adds r0, r6, #0
	adds r0, #0xa1
	cmp r5, r0
	beq _0223F3F8
	adds r0, r6, #0
	adds r0, #0xa4
	cmp r5, r0
	beq _0223F3F8
	b _0223F51A
_0223F3F4:
	movs r6, #0x6e
	b _0223F51A
_0223F3F8:
	movs r6, #0x69
	b _0223F51A
_0223F3FC:
	ldr r0, [r4]
	movs r1, #0x14
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #0x13
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0x15
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0xa0
	cmp r5, r0
	beq _0223F43E
	adds r0, r6, #0
	adds r0, #0xa1
	cmp r5, r0
	beq _0223F43A
	adds r0, r6, #0
	adds r0, #0xa2
	cmp r5, r0
	beq _0223F43E
	b _0223F51A
_0223F43A:
	movs r6, #0x6e
	b _0223F51A
_0223F43E:
	movs r6, #0x69
	b _0223F51A
_0223F442:
	ldr r0, [r4]
	movs r1, #0x15
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #0x14
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0x16
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0xa1
	cmp r5, r0
	beq _0223F484
	adds r0, r6, #0
	adds r0, #0xa2
	cmp r5, r0
	beq _0223F480
	adds r0, r6, #0
	adds r0, #0xa3
	cmp r5, r0
	beq _0223F484
	b _0223F51A
_0223F480:
	movs r6, #0x6e
	b _0223F51A
_0223F484:
	movs r6, #0x69
	b _0223F51A
_0223F488:
	ldr r0, [r4]
	movs r1, #0x16
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #0x15
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0x17
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0xa2
	cmp r5, r0
	beq _0223F4CA
	adds r0, r6, #0
	adds r0, #0xa3
	cmp r5, r0
	beq _0223F4C6
	adds r0, r6, #0
	adds r0, #0xa4
	cmp r5, r0
	beq _0223F4CA
	b _0223F51A
_0223F4C6:
	movs r6, #0x6e
	b _0223F51A
_0223F4CA:
	movs r6, #0x69
	b _0223F51A
_0223F4CE:
	ldr r0, [r4]
	movs r1, #0x17
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #0x16
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0x13
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0xa0
	cmp r5, r0
	beq _0223F50E
	adds r0, r6, #0
	adds r0, #0xa3
	cmp r5, r0
	beq _0223F50E
	adds r0, r6, #0
	adds r0, #0xa4
	cmp r5, r0
	bne _0223F51A
	movs r6, #0x6e
	b _0223F51A
_0223F50E:
	movs r6, #0x69
	b _0223F51A
_0223F512:
	bl FUN_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223F51A:
	ldr r0, [r4]
	movs r1, #0x18
	movs r2, #0
	bl FUN_02074470
	ldr r1, [sp, #8]
	adds r1, r1, r7
	adds r1, r0, r1
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	ldr r0, [sp, #0xc]
	adds r1, r0, r1
	adds r0, r1, #0
	muls r0, r6, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	movs r1, #0x4a
	ldr r2, [sp, #4]
	lsls r1, r1, #2
	strh r0, [r2, r1]
	adds r0, r2, #0
	adds r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r4, r4, #4
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	bge _0223F55A
	b _0223F384
_0223F55A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0223F374

	thumb_func_start ov17_0223F560
ov17_0223F560: @ 0x0223F560
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r6, r2, #0
	movs r2, #0
	mvns r2, r2
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r3, r2
	beq _0223F582
	movs r2, #1
	str r2, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r2, #0x2e
	movs r3, #0x49
	bl FUN_0200CBDC
_0223F582:
	movs r1, #0
	ldr r0, [sp, #0x28]
	mvns r1, r1
	cmp r0, r1
	beq _0223F5AC
	movs r1, #0x2e
	str r1, [sp]
	movs r1, #7
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r1, #2
	adds r2, r5, #0
	adds r3, r4, #0
	bl FUN_0200CD7C
_0223F5AC:
	movs r0, #0
	ldr r1, [sp, #0x2c]
	mvns r0, r0
	cmp r1, r0
	beq _0223F5C8
	movs r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x2e
	movs r3, #0x4a
	bl FUN_0200CE0C
_0223F5C8:
	movs r0, #0
	ldr r1, [sp, #0x30]
	mvns r0, r0
	cmp r1, r0
	beq _0223F5E4
	movs r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x2e
	movs r3, #0x4b
	bl FUN_0200CE3C
_0223F5E4:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0223F560

	thumb_func_start ov17_0223F5E8
ov17_0223F5E8: @ 0x0223F5E8
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	movs r2, #0
	mvns r2, r2
	adds r5, r0, #0
	adds r6, r3, #0
	cmp r1, r2
	beq _0223F5FC
	bl FUN_0200D070
_0223F5FC:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _0223F60C
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200D080
_0223F60C:
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _0223F61C
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0200D090
_0223F61C:
	movs r0, #0
	ldr r1, [sp, #0x10]
	mvns r0, r0
	cmp r1, r0
	beq _0223F62C
	adds r0, r5, #0
	bl FUN_0200D0A0
_0223F62C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_0223F5E8

	thumb_func_start ov17_0223F630
ov17_0223F630: @ 0x0223F630
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r5, _0223F6B8 @ =0x022531FC
	str r2, [sp, #4]
	str r0, [sp]
	adds r7, r1, #0
	add r4, sp, #8
	movs r2, #6
_0223F640:
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	subs r2, r2, #1
	bne _0223F640
	ldr r0, [r5]
	ldr r5, _0223F6BC @ =0x022531CC
	str r0, [r4]
	ldr r0, [sp, #0x50]
	ldr r4, [sp]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x54]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x58]
	movs r6, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x34]
_0223F66C:
	ldr r1, [sp, #4]
	adds r0, r7, #0
	add r2, sp, #8
	bl FUN_0200CE6C
	str r0, [r4]
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl FUN_0200D4C4
	ldrb r1, [r5, #6]
	ldr r0, [r4]
	bl FUN_0200D364
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0200D6A4
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0200D324
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #8
	cmp r6, #6
	blt _0223F66C
	ldr r0, _0223F6C0 @ =ov17_0223F6E8
	ldr r1, [sp]
	ldr r2, [sp, #0x68]
	bl FUN_0200D9E8
	ldr r1, [sp]
	str r0, [r1, #0x18]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223F6B8: .4byte 0x022531FC
_0223F6BC: .4byte 0x022531CC
_0223F6C0: .4byte ov17_0223F6E8
	thumb_func_end ov17_0223F630

	thumb_func_start ov17_0223F6C4
ov17_0223F6C4: @ 0x0223F6C4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_0223F6CC:
	ldr r0, [r5]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _0223F6CC
	ldr r0, [r6, #0x18]
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r6, #0x18]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_0223F6C4

	thumb_func_start ov17_0223F6E8
ov17_0223F6E8: @ 0x0223F6E8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0223F708 @ =0x022531CC
	adds r5, r1, #0
	movs r6, #0
	movs r7, #4
_0223F6F2:
	ldrsh r1, [r4, r7]
	ldr r0, [r5]
	bl FUN_0200D7C0
	adds r6, r6, #1
	adds r4, #8
	adds r5, r5, #4
	cmp r6, #6
	blt _0223F6F2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F708: .4byte 0x022531CC
	thumb_func_end ov17_0223F6E8

	thumb_func_start ov17_0223F70C
ov17_0223F70C: @ 0x0223F70C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x14
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	str r5, [r4, #4]
	str r6, [r4, #0xc]
	ldr r0, [sp, #0x18]
	strb r7, [r4, #0x10]
	strb r0, [r4, #0x12]
	ldr r0, _0223F740 @ =ov17_0223F774
	ldr r2, [sp, #0x1c]
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F740: .4byte ov17_0223F774
	thumb_func_end ov17_0223F70C

	thumb_func_start ov17_0223F744
ov17_0223F744: @ 0x0223F744
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _0223F752
	bl FUN_02022974
_0223F752:
	ldr r0, [r4]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov17_0223F744

	thumb_func_start ov17_0223F760
ov17_0223F760: @ 0x0223F760
	push {r3, lr}
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _0223F770
	movs r0, #1
	pop {r3, pc}
_0223F770:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov17_0223F760

	thumb_func_start ov17_0223F774
ov17_0223F774: @ 0x0223F774
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #1
	adds r4, r1, #0
	bl FUN_0200AC1C
	cmp r0, #0
	beq _0223F7DA
	ldr r0, [r4, #8]
	adds r2, r0, #1
	str r2, [r4, #8]
	ldrb r0, [r4, #0x11]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	cmp r2, r0
	ble _0223F7DA
	movs r0, #1
	str r0, [sp]
	movs r0, #6
	movs r1, #0
	movs r2, #4
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldr r0, _0223F7E0 @ =0x000005F8
	bl FUN_02005748
	movs r0, #0
	str r0, [r4, #8]
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r1, [r4, #0x11]
	ldrb r0, [r4, #0x10]
	cmp r1, r0
	blo _0223F7DA
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _0223F7CE
	adds r0, r4, #0
	bl ov17_0223F744
	add sp, #4
	pop {r3, r4, pc}
_0223F7CE:
	cmp r0, #0xff
	beq _0223F7D6
	subs r0, r0, #1
	strb r0, [r4, #0x12]
_0223F7D6:
	movs r0, #0
	strb r0, [r4, #0x11]
_0223F7DA:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223F7E0: .4byte 0x000005F8
	thumb_func_end ov17_0223F774

	thumb_func_start ov17_0223F7E4
ov17_0223F7E4: @ 0x0223F7E4
	push {r4, lr}
	movs r1, #0x32
	movs r0, #0x15
	lsls r1, r1, #4
	bl FUN_02018144
	movs r2, #0x32
	movs r1, #0
	lsls r2, r2, #4
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r1, #0
	movs r0, #0x2e
	mvns r1, r1
	lsls r0, r0, #4
	strb r1, [r4, r0]
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_0223F7E4

	thumb_func_start ov17_0223F80C
ov17_0223F80C: @ 0x0223F80C
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r6, _0223F860 @ =0x02253448
	adds r5, r0, #0
	adds r7, r4, #0
_0223F816:
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_020183C4
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #0
	bl FUN_02019EE0
	adds r1, r4, #4
	lsls r1, r1, #0x18
	movs r2, #0
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019184
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r4, r4, #1
	adds r6, #0x1c
	cmp r4, #4
	blo _0223F816
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F860: .4byte 0x02253448
	thumb_func_end ov17_0223F80C

	thumb_func_start ov17_0223F864
ov17_0223F864: @ 0x0223F864
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_0223F86C:
	adds r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r6, #0
	bl FUN_02019120
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	cmp r4, #4
	blo _0223F86C
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0223F864

	thumb_func_start ov17_0223F88C
ov17_0223F88C: @ 0x0223F88C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl ov17_0223F7E4
	adds r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	str r7, [r4, #8]
	movs r0, #0xc
	movs r1, #0x15
	bl FUN_02012744
	str r0, [r4, #0x3c]
	movs r0, #0x2d
	movs r1, #0x15
	bl FUN_02006C24
	movs r7, #2
	str r0, [sp, #0xc]
	movs r5, #0
	lsls r7, r7, #0xa
	b _0223F8FA
_0223F8BE:
	movs r0, #0x15
	adds r1, r7, #0
	bl FUN_02018144
	lsls r1, r5, #2
	adds r1, r4, r1
	str r0, [r1, #0x20]
	movs r0, #0x15
	str r0, [sp]
	ldr r1, _0223F958 @ =0x02253250
	lsls r2, r5, #1
	ldrh r1, [r1, r2]
	ldr r0, [sp, #0xc]
	movs r2, #1
	add r3, sp, #0x10
	bl FUN_020071D0
	adds r6, r0, #0
	lsls r0, r5, #2
	adds r0, r4, r0
	ldr r1, [r0, #0x20]
	ldr r0, [sp, #0x10]
	adds r2, r7, #0
	adds r0, #0xc
	blx FUN_020C4B68
	adds r0, r6, #0
	bl FUN_020181C4
	adds r5, r5, #1
_0223F8FA:
	cmp r5, #5
	blt _0223F8BE
	ldr r0, [r4, #4]
	movs r7, #2
	ldr r6, [r0, #0x50]
	movs r5, #0
	lsls r7, r7, #8
	b _0223F948
_0223F90A:
	movs r0, #0x15
	adds r1, r7, #0
	bl FUN_02018144
	lsls r1, r5, #2
	adds r1, r4, r1
	str r0, [r1, #0x34]
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _0223F95C @ =0x02253238
	lsls r3, r5, #1
	ldrh r2, [r2, r3]
	adds r0, r6, #0
	movs r1, #0x2d
	movs r3, #0x15
	bl FUN_02003050
	adds r0, r6, #0
	movs r1, #1
	bl FUN_02003164
	lsls r1, r5, #2
	adds r1, r4, r1
	ldr r1, [r1, #0x34]
	adds r2, r7, #0
	blx FUN_020C4B18
	adds r5, r5, #1
_0223F948:
	cmp r5, #2
	blt _0223F90A
	ldr r0, [sp, #0xc]
	bl FUN_02006CA8
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223F958: .4byte 0x02253250
_0223F95C: .4byte 0x02253238
	thumb_func_end ov17_0223F88C

	thumb_func_start ov17_0223F960
ov17_0223F960: @ 0x0223F960
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	bl ov17_022404B0
	ldr r0, [r6, #0x3c]
	bl FUN_020127BC
	ldr r3, _0223F9C0 @ =0x000080F8
	str r3, [sp]
	ldr r0, [r6, #4]
	adds r1, r3, #5
	ldr r0, [r0, #0x1c]
	subs r2, r3, #7
	bl ov17_02252B20
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl ov17_02252BCC
	movs r4, #0
	adds r5, r6, #0
_0223F98E:
	ldr r0, [r5, #0x20]
	bl FUN_020181C4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _0223F98E
	movs r5, #0
	adds r4, r6, #0
_0223F9A0:
	ldr r0, [r4, #0x34]
	bl FUN_020181C4
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #2
	blt _0223F9A0
	adds r0, r6, #0
	bl ov17_022409F4
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223F9C0: .4byte 0x000080F8
	thumb_func_end ov17_0223F960

	thumb_func_start ov17_0223F9C4
ov17_0223F9C4: @ 0x0223F9C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	str r3, [r7, #0xc]
	ldr r0, [r7, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	movs r0, #0x2e
	lsls r0, r0, #4
	ldrsb r2, [r7, r0]
	movs r0, #0
	mvns r0, r0
	cmp r2, r0
	bne _0223F9EE
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x10]
	b _0223F9F8
_0223F9EE:
	movs r0, #0x30
	ldr r1, _0223FAE8 @ =0x02253558
	muls r0, r2, r0
	adds r0, r1, r0
	str r0, [sp, #0x10]
_0223F9F8:
	ldr r0, [sp, #4]
	movs r1, #0x30
	ldr r2, _0223FAE8 @ =0x02253558
	muls r1, r0, r1
	adds r0, r2, r1
	str r0, [sp, #0x14]
	movs r4, #0
	adds r5, r0, #0
_0223FA08:
	ldrh r1, [r5, #0xc]
	adds r0, r4, #4
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019060
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blt _0223FA08
	movs r0, #2
	lsls r0, r0, #8
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r0, [r7, #4]
	ldrh r1, [r1, #2]
	ldr r0, [r0, #0x50]
	movs r2, #1
	lsls r1, r1, #2
	adds r1, r7, r1
	ldr r1, [r1, #0x34]
	movs r3, #0
	bl FUN_02002FBC
	ldr r6, [sp, #0x14]
	ldr r4, [sp, #0x10]
	movs r5, #0
_0223FA42:
	ldrh r2, [r6, #4]
	ldr r0, _0223FAEC @ =0x0000FFFF
	cmp r2, r0
	beq _0223FA78
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _0223FA56
	ldrh r0, [r4, #4]
	cmp r2, r0
	beq _0223FA78
_0223FA56:
	lsls r2, r2, #2
	adds r1, r5, #4
	adds r2, r7, r2
	lsls r1, r1, #0x18
	movs r3, #2
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #0x20]
	lsrs r1, r1, #0x18
	lsls r3, r3, #0xa
	bl FUN_02019574
	adds r1, r5, #4
	lsls r1, r1, #0x18
	ldr r0, [sp, #0xc]
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
_0223FA78:
	adds r5, r5, #1
	adds r6, r6, #2
	adds r4, r4, #2
	cmp r5, #4
	blt _0223FA42
	movs r1, #0x2e
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	strb r0, [r7, r1]
	adds r0, r7, #0
	bl ov17_022404B0
	ldr r0, [sp, #0x14]
	ldr r3, [r0, #0x28]
	cmp r3, #0
	beq _0223FAA0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r7, #0
	blx r3
_0223FAA0:
	ldr r0, [sp, #0x14]
	ldrh r1, [r0]
	ldr r0, _0223FAEC @ =0x0000FFFF
	cmp r1, r0
	beq _0223FADA
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _0223FAB8
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0223FADA
_0223FAB8:
	movs r3, #0xb7
	movs r0, #0x15
	lsls r3, r3, #2
	str r0, [sp]
	movs r0, #0x2d
	movs r2, #1
	adds r3, r7, r3
	bl FUN_02006F50
	movs r1, #0xb6
	lsls r1, r1, #2
	str r0, [r7, r1]
	ldr r0, _0223FAF0 @ =ov17_022411E4
	adds r1, r7, #0
	movs r2, #0xa
	bl FUN_0200DA3C
_0223FADA:
	ldr r0, _0223FAF4 @ =ov17_02241220
	adds r1, r7, #0
	movs r2, #0xa
	bl FUN_0200DA3C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223FAE8: .4byte 0x02253558
_0223FAEC: .4byte 0x0000FFFF
_0223FAF0: .4byte ov17_022411E4
_0223FAF4: .4byte ov17_02241220
	thumb_func_end ov17_0223F9C4

	thumb_func_start ov17_0223FAF8
ov17_0223FAF8: @ 0x0223FAF8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x2e
	lsls r0, r0, #4
	ldrsb r1, [r5, r0]
	movs r6, #0
	subs r0, r6, #1
	cmp r1, r0
	bne _0223FB0E
	bl FUN_02022974
_0223FB0E:
	movs r0, #0x2e
	lsls r0, r0, #4
	ldrsb r1, [r5, r0]
	ldr r3, _0223FBBC @ =0x02253558
	movs r0, #0x30
	adds r2, r1, #0
	muls r2, r0, r2
	adds r4, r3, r2
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0223FB28
	subs r0, #0x31
	pop {r3, r4, r5, r6, r7, pc}
_0223FB28:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0223FB32
	bl FUN_02022974
_0223FB32:
	ldr r0, [r4, #0x14]
	bl FUN_02022664
	adds r7, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r7, r0
	bne _0223FB4C
	adds r0, r5, #0
	bl ov17_02240C90
	adds r7, r0, #0
	adds r6, r6, #1
_0223FB4C:
	movs r0, #0
	mvns r0, r0
	str r0, [sp]
	cmp r7, r0
	bne _0223FB5A
	movs r2, #0xff
	b _0223FB66
_0223FB5A:
	ldr r1, [r4, #0x18]
	lsls r0, r7, #2
	ldr r0, [r1, r0]
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldrb r2, [r0, r7]
_0223FB66:
	ldr r3, [r4, #0x2c]
	cmp r3, #0
	beq _0223FBB6
	ldr r1, [sp]
	adds r0, r5, #0
	blx r3
	movs r1, #0
	mvns r1, r1
	str r0, [sp]
	cmp r0, r1
	beq _0223FBB6
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _0223FB88
	adds r0, r5, #0
	adds r1, r7, #0
	blx r2
_0223FB88:
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	movs r2, #4
	blx FUN_020C4CF4
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov17_02252C9C
	cmp r6, #0
	ble _0223FBAE
	movs r0, #0xc7
	movs r1, #1
	lsls r0, r0, #2
	strb r1, [r5, r0]
	b _0223FBB6
_0223FBAE:
	movs r0, #0xc7
	movs r1, #0
	lsls r0, r0, #2
	strb r1, [r5, r0]
_0223FBB6:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FBBC: .4byte 0x02253558
	thumb_func_end ov17_0223FAF8

	thumb_func_start ov17_0223FBC0
ov17_0223FBC0: @ 0x0223FBC0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _0223FBD0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223FBD0
	movs r0, #1
	bx lr
_0223FBD0:
	movs r0, #0
	bx lr
	thumb_func_end ov17_0223FBC0

	thumb_func_start ov17_0223FBD4
ov17_0223FBD4: @ 0x0223FBD4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5, #4]
	movs r2, #0x12
	lsls r2, r2, #4
	ldr r3, [r0]
	adds r1, r2, #1
	ldrb r0, [r3, r2]
	ldrb r1, [r3, r1]
	ldr r3, [r5]
	adds r2, #0x51
	ldrb r2, [r3, r2]
	bl FUN_02095848
	adds r4, r0, #0
	ldr r0, [r5, #4]
	ldr r1, _0223FCA0 @ =0x0000011F
	ldr r2, [r0]
	ldrb r0, [r2, r1]
	adds r1, r1, #2
	ldrb r1, [r2, r1]
	bl FUN_020958C4
	adds r6, r0, #0
	ldr r0, [r5, #4]
	adds r1, r4, #0
	ldr r0, [r0, #0x38]
	bl FUN_0200B1EC
	adds r4, r0, #0
	ldr r0, [r5, #4]
	adds r1, r6, #0
	ldr r0, [r0, #0x38]
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r0, _0223FCA4 @ =0x00010200
	adds r1, r5, #0
	str r0, [sp]
	movs r3, #0
	ldr r0, _0223FCA8 @ =0x000080F0
	str r3, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x80
	str r0, [sp, #0xc]
	movs r0, #0x7f
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, #0x40
	adds r2, r4, #0
	str r3, [sp, #0x18]
	bl ov17_02240138
	ldr r0, _0223FCA4 @ =0x00010200
	adds r1, r5, #0
	str r0, [sp]
	movs r3, #0
	ldr r0, _0223FCA8 @ =0x000080F0
	str r3, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x80
	str r0, [sp, #0xc]
	movs r0, #0x9f
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, #0x54
	adds r2, r6, #0
	str r3, [sp, #0x18]
	bl ov17_02240138
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r2, [r5, #4]
	movs r0, #1
	str r0, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r2]
	adds r1, #0xff
	ldrb r0, [r0, r1]
	movs r1, #0x2d
	movs r3, #0x15
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x50]
	movs r2, #0x26
	bl FUN_02002FEC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_0223FCA0: .4byte 0x0000011F
_0223FCA4: .4byte 0x00010200
_0223FCA8: .4byte 0x000080F0
	thumb_func_end ov17_0223FBD4

	thumb_func_start ov17_0223FCAC
ov17_0223FCAC: @ 0x0223FCAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r6, r0, #0
	movs r0, #0x69
	lsls r0, r0, #2
	adds r5, r6, r0
	ldr r0, _0223FF18 @ =0x000002E1
	movs r1, #0xff
	strb r1, [r6, r0]
	adds r0, r5, #0
	str r0, [sp, #0x24]
	adds r0, #0x50
	str r0, [sp, #0x24]
	adds r0, r5, #0
	adds r7, r6, #0
	str r0, [sp, #0x28]
	adds r0, #0xa0
	movs r4, #0
	adds r7, #0x40
	str r0, [sp, #0x28]
	b _0223FDF8
_0223FCD6:
	ldr r0, [r6, #4]
	ldr r1, _0223FF1C @ =0x00000123
	ldr r0, [r0]
	movs r2, #0
	ldrb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x36
	bl FUN_02074470
	lsls r1, r4, #1
	add r2, sp, #0x3c
	strh r0, [r2, r1]
	adds r0, r2, #0
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0223FD04
	movs r0, #0x4b
	adds r2, r5, r4
	lsls r0, r0, #2
	ldrb r2, [r2, r0]
	b _0223FD06
_0223FD04:
	movs r2, #0
_0223FD06:
	add r0, sp, #0x34
	strh r2, [r0, r1]
	ldr r0, _0223FF20 @ =0x00010708
	ldr r1, _0223FF24 @ =0x02253278
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FF28 @ =0x000080F0
	movs r2, #0
	str r0, [sp, #8]
	lsls r0, r4, #2
	ldrh r1, [r1, r0]
	movs r3, #2
	str r1, [sp, #0xc]
	ldr r1, _0223FF24 @ =0x02253278
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	adds r1, r4, #0
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x14
	muls r1, r0, r1
	adds r0, r5, r1
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r1, r7, r1
	bl ov17_02240138
	ldr r0, _0223FF2C @ =0x00010200
	ldr r1, _0223FF30 @ =0x02253314
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FF28 @ =0x000080F0
	adds r2, r4, #4
	str r0, [sp, #8]
	lsls r0, r4, #3
	ldrh r1, [r1, r0]
	str r1, [sp, #0xc]
	ldr r1, _0223FF30 @ =0x02253314
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	adds r1, r4, #0
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x14
	muls r1, r0, r1
	ldr r0, [sp, #0x24]
	adds r0, r0, r1
	movs r1, #0x14
	muls r1, r2, r1
	movs r2, #0
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r1, r7, r1
	adds r3, r2, #0
	bl ov17_02240138
	ldr r0, _0223FF2C @ =0x00010200
	adds r2, r4, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FF28 @ =0x000080F0
	lsls r1, r4, #3
	str r0, [sp, #8]
	ldr r0, _0223FF30 @ =0x02253314
	adds r2, #8
	adds r1, r0, r1
	ldrh r0, [r1, #4]
	str r0, [sp, #0xc]
	ldrh r0, [r1, #6]
	adds r1, r4, #0
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x14
	muls r1, r0, r1
	ldr r0, [sp, #0x28]
	adds r0, r0, r1
	movs r1, #0x14
	muls r1, r2, r1
	movs r2, #0
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r1, r7, r1
	adds r3, r2, #0
	bl ov17_02240138
	lsls r1, r4, #1
	add r0, sp, #0x3c
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _0223FDF6
	movs r0, #0x14
	muls r0, r4, r0
	adds r0, r6, r0
	ldr r0, [r0, #0x40]
	movs r1, #0
	bl FUN_020129D0
	adds r1, r4, #4
	movs r0, #0x14
	muls r0, r1, r0
	adds r0, r6, r0
	ldr r0, [r0, #0x40]
	movs r1, #0
	bl FUN_020129D0
	adds r1, r4, #0
	adds r1, #8
	movs r0, #0x14
	muls r0, r1, r0
	adds r0, r6, r0
	ldr r0, [r0, #0x40]
	movs r1, #0
	bl FUN_020129D0
_0223FDF6:
	adds r4, r4, #1
_0223FDF8:
	cmp r4, #4
	bge _0223FDFE
	b _0223FCD6
_0223FDFE:
	movs r4, #0
	add r7, sp, #0x3c
	b _0223FE2C
_0223FE04:
	lsls r0, r4, #1
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _0223FE1E
	movs r0, #0x13
	adds r1, r5, r4
	lsls r0, r0, #4
	ldrb r1, [r1, r0]
	adds r0, r6, #0
	adds r2, r4, #0
	bl ov17_02240424
	b _0223FE2A
_0223FE1E:
	movs r1, #0
	adds r0, r6, #0
	mvns r1, r1
	adds r2, r4, #0
	bl ov17_02240424
_0223FE2A:
	adds r4, r4, #1
_0223FE2C:
	cmp r4, #4
	blt _0223FE04
	movs r4, #0
	movs r7, #0x20
	add r5, sp, #0x3c
	b _0223FE7E
_0223FE38:
	lsls r0, r4, #1
	ldrh r2, [r5, r0]
	cmp r2, #0
	beq _0223FE7C
	ldr r1, [r6, #4]
	ldr r0, [r6, #8]
	ldr r3, [r1]
	ldr r1, _0223FF1C @ =0x00000123
	ldrb r1, [r3, r1]
	bl ov17_02243A98
	cmp r0, #0
	bne _0223FE7C
	str r7, [sp]
	ldr r0, [r6, #4]
	movs r1, #1
	adds r3, r4, #4
	lsls r3, r3, #0x14
	ldr r2, [r6, #0x38]
	lsls r1, r1, #8
	adds r1, r2, r1
	ldr r0, [r0, #0x50]
	movs r2, #1
	lsrs r3, r3, #0x10
	bl FUN_02002FBC
	ldr r0, _0223FF18 @ =0x000002E1
	ldrb r0, [r6, r0]
	cmp r0, #0xff
	beq _0223FE78
	bl FUN_02022974
_0223FE78:
	ldr r0, _0223FF18 @ =0x000002E1
	strb r4, [r6, r0]
_0223FE7C:
	adds r4, r4, #1
_0223FE7E:
	cmp r4, #4
	blt _0223FE38
	adds r0, r6, #0
	add r1, sp, #0x3c
	bl ov17_022402E8
	movs r4, #0
	b _0223FF0E
_0223FE8E:
	lsls r1, r4, #1
	add r0, sp, #0x3c
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0223FF0C
	add r0, sp, #0x34
	ldrh r0, [r0, r1]
	bl FUN_02095734
	str r0, [sp, #0x20]
	cmp r0, #0
	bge _0223FEA8
	rsbs r0, r0, #0
_0223FEA8:
	movs r1, #0xa
	blx FUN_020E1F6C
	str r0, [sp, #0x1c]
	cmp r0, #6
	ble _0223FEB8
	bl FUN_02022974
_0223FEB8:
	movs r0, #0x18
	muls r0, r4, r0
	adds r7, r6, r0
	lsls r0, r4, #3
	ldr r1, _0223FF34 @ =0x02253334
	str r0, [sp, #0x2c]
	adds r0, r1, r0
	movs r5, #0
	str r0, [sp, #0x30]
	b _0223FF06
_0223FECC:
	lsls r0, r5, #2
	adds r1, r7, r0
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223FEDE
	bl FUN_02022974
_0223FEDE:
	ldr r0, [sp, #0x20]
	ldr r3, _0223FF34 @ =0x02253334
	str r0, [sp]
	ldr r2, [sp, #0x2c]
	ldr r1, [r6, #4]
	ldr r3, [r3, r2]
	lsls r2, r5, #3
	adds r2, r3, r2
	ldr r3, [sp, #0x30]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	ldr r3, [r3, #4]
	bl ov17_0224136C
	lsls r1, r5, #2
	adds r2, r7, r1
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r2, r1]
	adds r5, r5, #1
_0223FF06:
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	blt _0223FECC
_0223FF0C:
	adds r4, r4, #1
_0223FF0E:
	cmp r4, #4
	blt _0223FE8E
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0223FF18: .4byte 0x000002E1
_0223FF1C: .4byte 0x00000123
_0223FF20: .4byte 0x00010708
_0223FF24: .4byte 0x02253278
_0223FF28: .4byte 0x000080F0
_0223FF2C: .4byte 0x00010200
_0223FF30: .4byte 0x02253314
_0223FF34: .4byte 0x02253334
	thumb_func_end ov17_0223FCAC

	thumb_func_start ov17_0223FF38
ov17_0223FF38: @ 0x0223FF38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0x69
	lsls r0, r0, #2
	adds r6, r5, r0
	adds r7, r5, #0
	movs r4, #0
	adds r6, #0xf0
	adds r7, #0x40
	b _0223FF86
_0223FF4E:
	ldr r0, _0223FFE4 @ =0x0001090A
	ldr r1, _0223FFE8 @ =0x0225325C
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0223FFEC @ =0x000080F0
	movs r2, #0
	str r0, [sp, #8]
	lsls r0, r4, #2
	ldrh r1, [r1, r0]
	movs r3, #2
	str r1, [sp, #0xc]
	ldr r1, _0223FFE8 @ =0x0225325C
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	adds r1, r4, #0
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	movs r0, #0x14
	muls r1, r0, r1
	adds r0, r6, r1
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r7, r1
	bl ov17_02240138
	adds r4, r4, #1
_0223FF86:
	cmp r4, #3
	blt _0223FF4E
	ldr r0, [r5, #4]
	movs r1, #0x35
	ldr r0, [r0, #0x38]
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r0, _0223FFE4 @ =0x0001090A
	ldr r1, _0223FFEC @ =0x000080F0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x80
	str r1, [sp, #0xc]
	movs r1, #0xa4
	str r1, [sp, #0x10]
	movs r1, #1
	str r1, [sp, #0x14]
	adds r2, r5, #0
	movs r1, #0x14
	str r0, [sp, #0x18]
	adds r2, #0x40
	muls r1, r4, r1
	adds r1, r2, r1
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #2
	bl ov17_02240138
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r2, [r5, #4]
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r3, [r2]
	ldr r2, _0223FFF0 @ =0x0000011E
	ldrb r2, [r3, r2]
	bl ov17_022412C0
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223FFE4: .4byte 0x0001090A
_0223FFE8: .4byte 0x0225325C
_0223FFEC: .4byte 0x000080F0
_0223FFF0: .4byte 0x0000011E
	thumb_func_end ov17_0223FF38

	thumb_func_start ov17_0223FFF4
ov17_0223FFF4: @ 0x0223FFF4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r5, #1
	str r2, [sp]
	cmp r0, #4
	bhi _02240018
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224000E: @ jump table
	.2byte _02240018 - _0224000E - 2 @ case 0
	.2byte _0224001E - _0224000E - 2 @ case 1
	.2byte _0224001E - _0224000E - 2 @ case 2
	.2byte _0224001E - _0224000E - 2 @ case 3
	.2byte _0224001E - _0224000E - 2 @ case 4
_02240018:
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0224001E:
	ldr r0, [r4, #4]
	movs r2, #0
	ldr r1, [r0]
	ldr r0, _02240080 @ =0x00000123
	ldrb r0, [r1, r0]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r5, #0
	adds r1, #0x36
	bl FUN_02074470
	cmp r0, #0
	beq _02240040
	ldr r0, _02240084 @ =0x000002E1
	ldrb r0, [r4, r0]
	cmp r0, r5
	bne _02240046
_02240040:
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02240046:
	movs r0, #6
	ldr r1, _02240088 @ =0x022532E4
	muls r0, r5, r0
	adds r7, r1, r0
	ldr r1, _0224008C @ =0x02253388
	lsls r0, r5, #4
	adds r6, r1, r0
	ldr r1, [sp]
	adds r0, r4, #0
	bl ov17_02240930
	ldr r0, _02240090 @ =ov17_02240658
	adds r1, r4, #0
	bl ov17_022404CC
	movs r1, #0xbd
	lsls r1, r1, #2
	str r7, [r4, r1]
	adds r0, r1, #4
	str r6, [r4, r0]
	adds r0, r1, #0
	movs r2, #2
	adds r0, #0xc
	strb r2, [r4, r0]
	adds r1, #8
	str r5, [r4, r1]
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240080: .4byte 0x00000123
_02240084: .4byte 0x000002E1
_02240088: .4byte 0x022532E4
_0224008C: .4byte 0x02253388
_02240090: .4byte ov17_02240658
	thumb_func_end ov17_0223FFF4

	thumb_func_start ov17_02240094
ov17_02240094: @ 0x02240094
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r5, #1
	cmp r0, #4
	bhi _022400B6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022400AC: @ jump table
	.2byte _022400B6 - _022400AC - 2 @ case 0
	.2byte _022400BA - _022400AC - 2 @ case 1
	.2byte _022400BE - _022400AC - 2 @ case 2
	.2byte _022400C2 - _022400AC - 2 @ case 3
	.2byte _022400C6 - _022400AC - 2 @ case 4
_022400B6:
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022400BA:
	movs r6, #0
	b _022400C8
_022400BE:
	movs r6, #1
	b _022400C8
_022400C2:
	movs r6, #2
	b _022400C8
_022400C6:
	movs r6, #3
_022400C8:
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r0, _02240128 @ =0x0000011E
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _022400D8
	movs r7, #1
	b _022400DA
_022400D8:
	movs r7, #0
_022400DA:
	adds r0, r4, #0
	adds r1, r2, #0
	bl ov17_02240930
	ldr r0, _0224012C @ =ov17_0224051C
	adds r1, r4, #0
	bl ov17_022404CC
	movs r0, #6
	ldr r1, _02240130 @ =0x022532FC
	muls r0, r5, r0
	adds r0, r1, r0
	movs r1, #0xbd
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _02240134 @ =0x022533C8
	lsls r0, r5, #4
	adds r2, r2, r0
	adds r0, r1, #4
	str r2, [r4, r0]
	movs r2, #3
	lsls r0, r2, #8
	strb r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #8
	str r5, [r4, r0]
	adds r0, r1, #0
	adds r0, #0xd
	strb r6, [r4, r0]
	cmp r7, #1
	bne _02240122
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	subs r1, #0xc
	str r0, [r4, r1]
_02240122:
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240128: .4byte 0x0000011E
_0224012C: .4byte ov17_0224051C
_02240130: .4byte 0x022532FC
_02240134: .4byte 0x022533C8
	thumb_func_end ov17_02240094

	thumb_func_start ov17_02240138
ov17_02240138: @ 0x02240138
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	adds r5, r1, #0
	adds r7, r0, #0
	ldr r0, [r5]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x9c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _02240152
	bl FUN_02022974
_02240152:
	ldr r1, [r7, #4]
	cmp r4, #0
	ldr r0, [r1, #0x24]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0x1c]
	str r0, [sp, #0x20]
	bne _0224016E
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov17_02240C60
	b _02240176
_0224016E:
	ldrh r0, [r4, #0x12]
	str r0, [sp, #0x2c]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #0x28]
_02240176:
	cmp r4, #0
	bne _022401B4
	add r0, sp, #0x3c
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x24]
	lsls r2, r2, #0x18
	add r1, sp, #0x3c
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_0201A870
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x3c
	str r3, [sp, #0x14]
	bl FUN_0201D7E0
	b _022401C0
_022401B4:
	adds r3, r4, #0
	add r2, sp, #0x3c
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
_022401C0:
	add r0, sp, #0x3c
	movs r1, #2
	movs r2, #0x15
	bl FUN_02012898
	movs r1, #1
	movs r2, #2
	add r3, sp, #0x30
	bl FUN_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _022401E4
	ldr r1, [sp, #0x2c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r6, r6, r0
_022401E4:
	ldr r0, [r7, #0x3c]
	str r0, [sp, #0x4c]
	add r0, sp, #0x3c
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x20]
	bl FUN_0200D9B0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x98]
	bl FUN_0200D04C
	str r0, [sp, #0x58]
	movs r0, #0
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x6c]
	movs r0, #0x64
	str r1, [sp, #0x60]
	movs r1, #0x42
	str r0, [sp, #0x70]
	movs r0, #2
	str r0, [sp, #0x74]
	movs r0, #0x15
	str r0, [sp, #0x78]
	ldr r2, [sp, #0xa0]
	lsls r1, r1, #2
	adds r1, r2, r1
	add r0, sp, #0x4c
	str r6, [sp, #0x64]
	str r1, [sp, #0x68]
	bl FUN_020127E8
	ldr r1, [sp, #0x94]
	adds r7, r0, #0
	bl FUN_02012AC0
	movs r2, #0x42
	ldr r3, [sp, #0xa0]
	lsls r2, r2, #2
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r3, r2
	bl FUN_020128C4
	cmp r4, #0
	bne _02240248
	add r0, sp, #0x3c
	bl FUN_0201A8FC
_02240248:
	str r7, [r5]
	add r3, sp, #0x30
	ldm r3!, {r0, r1}
	adds r2, r5, #4
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #0x2c]
	strh r0, [r5, #0x10]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02240138

	thumb_func_start ov17_02240260
ov17_02240260: @ 0x02240260
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0x44
	adds r7, r6, #0
_0224026C:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0224027E
	bl FUN_02012870
	adds r0, r4, #0
	bl FUN_0201EE28
	str r7, [r5, #0x40]
_0224027E:
	adds r6, r6, #1
	adds r5, #0x14
	adds r4, #0x14
	cmp r6, #0xc
	blt _0224026C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02240260

	thumb_func_start ov17_0224028C
ov17_0224028C: @ 0x0224028C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022402A6
	bl ov17_02241314
	movs r0, #5
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r4, r0]
_022402A6:
	pop {r4, pc}
	thumb_func_end ov17_0224028C

	thumb_func_start ov17_022402A8
ov17_022402A8: @ 0x022402A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	movs r0, #0
	movs r7, #0x51
	str r0, [sp, #4]
	adds r6, r0, #0
	lsls r7, r7, #2
_022402B8:
	ldr r5, [sp]
	movs r4, #0
_022402BC:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022402CC
	bl ov17_022413AC
	movs r0, #0x51
	lsls r0, r0, #2
	str r6, [r5, r0]
_022402CC:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _022402BC
	ldr r0, [sp]
	adds r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _022402B8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022402A8

	thumb_func_start ov17_022402E8
ov17_022402E8: @ 0x022402E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #4]
	ldr r4, _0224037C @ =0x02253354
	ldr r0, [r1, #0x18]
	add r3, sp, #8
	str r0, [sp, #4]
	ldr r0, [r1, #0x1c]
	movs r2, #6
	str r0, [sp]
_02240300:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02240300
	ldr r0, [r4]
	movs r4, #0
	str r0, [r3]
	add r6, sp, #8
	b _02240374
_02240312:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02240324
	bl FUN_02022974
_02240324:
	lsls r0, r4, #1
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02240372
	movs r0, #0xb5
	adds r1, r5, r4
	lsls r0, r0, #2
	ldrb r2, [r1, r0]
	ldr r0, _02240380 @ =0x000080F6
	ldr r1, _02240384 @ =0x02253298
	adds r0, r4, r0
	str r0, [sp, #0x1c]
	lsls r0, r4, #2
	ldrh r1, [r1, r0]
	add r3, sp, #8
	strh r1, [r6]
	ldr r1, _02240384 @ =0x02253298
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	ldr r1, [sp]
	strh r0, [r6, #2]
	ldr r0, [sp, #4]
	bl ov17_0224F154
	lsls r1, r4, #2
	movs r2, #0x13
	movs r3, #0x11
	adds r1, r5, r1
	lsls r2, r2, #4
	str r0, [r1, r2]
	adds r0, r2, #0
	ldr r0, [r1, r0]
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	lsls r3, r3, #0x10
	bl FUN_0200D500
_02240372:
	adds r4, r4, #1
_02240374:
	cmp r4, #4
	blt _02240312
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224037C: .4byte 0x02253354
_02240380: .4byte 0x000080F6
_02240384: .4byte 0x02253298
	thumb_func_end ov17_022402E8

	thumb_func_start ov17_02240388
ov17_02240388: @ 0x02240388
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	movs r7, #0x13
	adds r5, r0, #0
	adds r6, r4, #0
	lsls r7, r7, #4
_02240394:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022403A4
	bl ov17_0224F184
	movs r0, #0x13
	lsls r0, r0, #4
	str r6, [r5, r0]
_022403A4:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02240394
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02240388

	thumb_func_start ov17_022403B0
ov17_022403B0: @ 0x022403B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r6, r1, #0
	ldr r0, [r0, #0x24]
	adds r7, r3, #0
	movs r1, #4
	adds r4, r2, #0
	str r0, [sp, #4]
	bl FUN_02019FE4
	mov ip, r0
	lsls r0, r7, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x20]
	ldr r7, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #1
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #4]
	cmp r7, r0
	bgt _02240416
	lsls r6, r7, #5
_022403E2:
	lsls r2, r6, #1
	mov r0, ip
	adds r5, r0, r2
	ldr r0, [sp]
	ldr r3, [r4, #0xc]
	adds r2, r0, r2
	ldr r0, [r4, #8]
	cmp r0, r3
	bgt _0224040C
	lsls r3, r0, #1
	adds r2, r2, r3
	adds r3, r5, r3
_022403FA:
	ldrh r5, [r2]
	adds r0, r0, #1
	adds r2, r2, #2
	adds r5, r1, r5
	strh r5, [r3]
	ldr r5, [r4, #0xc]
	adds r3, r3, #2
	cmp r0, r5
	ble _022403FA
_0224040C:
	ldr r0, [r4, #4]
	adds r7, r7, #1
	adds r6, #0x20
	cmp r7, r0
	ble _022403E2
_02240416:
	ldr r0, [sp, #4]
	movs r1, #4
	bl FUN_0201C3C0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_022403B0

	thumb_func_start ov17_02240424
ov17_02240424: @ 0x02240424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, _0224049C @ =0x022532BC
	adds r5, r2, #0
	adds r4, r0, #0
	adds r3, r1, #0
	add r2, sp, #4
	ldm r6!, {r0, r1}
	adds r7, r2, #0
	stm r2!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r6]
	str r0, [r2]
	movs r0, #0
	mvns r0, r0
	cmp r3, r0
	beq _02240464
	movs r0, #0x20
	str r0, [sp]
	lsls r1, r3, #2
	ldr r0, [r4, #4]
	adds r3, r5, #4
	lsls r3, r3, #0x14
	ldr r0, [r0, #0x50]
	ldr r1, [r7, r1]
	movs r2, #1
	lsrs r3, r3, #0x10
	bl FUN_02002FBC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02240464:
	ldr r2, _022404A0 @ =0x02253248
	lsls r1, r5, #1
	movs r0, #0
	adds r1, r2, r1
	str r0, [sp]
	ldr r3, _022404A4 @ =0x02253408
	lsls r2, r5, #4
	adds r2, r3, r2
	adds r0, r4, #0
	movs r3, #2
	bl ov17_022403B0
	movs r2, #0x20
	str r2, [sp]
	ldr r0, [r4, #4]
	adds r3, r5, #4
	lsls r3, r3, #0x14
	ldr r1, [r4, #0x38]
	adds r2, #0xe0
	adds r1, r1, r2
	ldr r0, [r0, #0x50]
	movs r2, #1
	lsrs r3, r3, #0x10
	bl FUN_02002FBC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224049C: .4byte 0x022532BC
_022404A0: .4byte 0x02253248
_022404A4: .4byte 0x02253408
	thumb_func_end ov17_02240424

	thumb_func_start ov17_022404A8
ov17_022404A8: @ 0x022404A8
	ldr r3, _022404AC @ =ov17_022404B0
	bx r3
	.align 2, 0
_022404AC: .4byte ov17_022404B0
	thumb_func_end ov17_022404A8

	thumb_func_start ov17_022404B0
ov17_022404B0: @ 0x022404B0
	push {r4, lr}
	adds r4, r0, #0
	bl ov17_0224028C
	adds r0, r4, #0
	bl ov17_022402A8
	adds r0, r4, #0
	bl ov17_02240388
	adds r0, r4, #0
	bl ov17_02240260
	pop {r4, pc}
	thumb_func_end ov17_022404B0

	thumb_func_start ov17_022404CC
ov17_022404CC: @ 0x022404CC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022404DC
	bl FUN_02022974
_022404DC:
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C4CF4
	ldr r2, _022404F8 @ =0x00000514
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022404F8: .4byte 0x00000514
	thumb_func_end ov17_022404CC

	thumb_func_start ov17_022404FC
ov17_022404FC: @ 0x022404FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224051A
	bl FUN_0200DA58
	movs r0, #0xb9
	lsls r0, r0, #2
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x20
	str r1, [r4, #0x10]
	blx FUN_020C4CF4
_0224051A:
	pop {r4, pc}
	thumb_func_end ov17_022404FC

	thumb_func_start ov17_0224051C
ov17_0224051C: @ 0x0224051C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r3, #0xb9
	adds r5, r1, #0
	lsls r3, r3, #2
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _02240536
	cmp r0, #1
	beq _022405A8
	cmp r0, #2
	beq _022405C4
	b _02240634
_02240536:
	movs r0, #2
	str r0, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	adds r3, #0x1c
	adds r1, #0x10
	adds r2, #0x14
	ldrb r3, [r5, r3]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	adds r0, r5, #0
	bl ov17_022403B0
	ldr r0, _02240654 @ =0x00000301
	add r2, sp, #4
	ldrb r1, [r5, r0]
	movs r0, #0x14
	muls r0, r1, r0
	adds r0, r5, r0
	ldr r0, [r0, #0x40]
	add r1, sp, #8
	bl FUN_020129A4
	ldr r0, _02240654 @ =0x00000301
	ldr r2, [sp, #4]
	ldrb r1, [r5, r0]
	movs r0, #0x14
	subs r2, r2, #2
	muls r0, r1, r0
	adds r0, r5, r0
	ldr r0, [r0, #0x40]
	ldr r1, [sp, #8]
	bl FUN_020128C4
	movs r7, #0xba
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_02240582:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02240592
	movs r1, #0
	ldr r0, [r0]
	subs r2, r1, #2
	bl FUN_0200D5AC
_02240592:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _02240582
	movs r0, #0xb9
	lsls r0, r0, #2
	ldrsh r1, [r5, r0]
	add sp, #0xc
	adds r1, r1, #1
	strh r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_022405A8:
	adds r0, r3, #2
	ldrsh r0, [r5, r0]
	adds r1, r0, #1
	adds r0, r3, #2
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02240650
	movs r1, #0
	adds r0, r3, #2
	strh r1, [r5, r0]
	ldrsh r0, [r5, r3]
	adds r0, r0, #1
	strh r0, [r5, r3]
_022405C4:
	movs r0, #1
	movs r3, #0xbd
	str r0, [sp]
	lsls r3, r3, #2
	adds r2, r3, #4
	ldr r1, [r5, r3]
	adds r3, #0xc
	ldrb r3, [r5, r3]
	ldr r2, [r5, r2]
	adds r0, r5, #0
	bl ov17_022403B0
	ldr r0, _02240654 @ =0x00000301
	add r2, sp, #4
	ldrb r1, [r5, r0]
	movs r0, #0x14
	muls r0, r1, r0
	adds r0, r5, r0
	ldr r0, [r0, #0x40]
	add r1, sp, #8
	bl FUN_020129A4
	ldr r0, _02240654 @ =0x00000301
	ldr r2, [sp, #4]
	ldrb r1, [r5, r0]
	movs r0, #0x14
	adds r2, r2, #1
	muls r0, r1, r0
	adds r0, r5, r0
	ldr r0, [r0, #0x40]
	ldr r1, [sp, #8]
	bl FUN_020128C4
	movs r7, #0xba
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_0224060E:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224061E
	ldr r0, [r0]
	movs r1, #0
	movs r2, #1
	bl FUN_0200D5AC
_0224061E:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _0224060E
	movs r0, #0xb9
	lsls r0, r0, #2
	ldrsh r1, [r5, r0]
	add sp, #0xc
	adds r1, r1, #1
	strh r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_02240634:
	adds r0, r3, #2
	ldrsh r0, [r5, r0]
	adds r1, r0, #1
	adds r0, r3, #2
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02240650
	adds r0, r5, #0
	bl ov17_022404A8
	adds r0, r5, #0
	bl ov17_022404FC
_02240650:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02240654: .4byte 0x00000301
	thumb_func_end ov17_0224051C

	thumb_func_start ov17_02240658
ov17_02240658: @ 0x02240658
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r7, _022408DC @ =0x00000123
	adds r4, r1, #0
	movs r6, #0
	add r5, sp, #0x20
_02240664:
	ldr r0, [r4, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrb r1, [r0, r7]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x36
	bl FUN_02074470
	strh r0, [r5]
	adds r6, r6, #1
	adds r5, r5, #2
	cmp r6, #4
	blt _02240664
	movs r0, #0xbf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _022406E8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02240698: @ jump table
	.2byte _022406A0 - _02240698 - 2 @ case 0
	.2byte _022406B2 - _02240698 - 2 @ case 1
	.2byte _022406C4 - _02240698 - 2 @ case 2
	.2byte _022406D6 - _02240698 - 2 @ case 3
_022406A0:
	movs r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0]
	movs r5, #0
	movs r6, #4
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406B2:
	movs r0, #9
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0, #2]
	movs r5, #1
	movs r6, #5
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406C4:
	movs r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	movs r5, #2
	movs r6, #6
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406D6:
	movs r0, #0xb
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrh r0, [r0, #6]
	movs r5, #3
	movs r6, #7
	str r0, [sp, #8]
	str r5, [sp, #4]
	b _022406F0
_022406E8:
	movs r5, #0
	adds r6, r5, #0
	str r5, [sp, #0xc]
	str r5, [sp, #8]
_022406F0:
	movs r3, #0xb9
	lsls r3, r3, #2
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _02240704
	cmp r0, #1
	beq _022407D2
	cmp r0, #2
	beq _022407EE
	b _022408BA
_02240704:
	movs r0, #2
	str r0, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	adds r3, #0x1c
	adds r1, #0x10
	adds r2, #0x14
	ldrb r3, [r4, r3]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	adds r0, r4, #0
	bl ov17_022403B0
	adds r7, r4, #0
	movs r0, #0x14
	muls r0, r5, r0
	adds r7, #0x40
	str r0, [sp, #0x10]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl FUN_020129A4
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	subs r2, r2, #2
	bl FUN_020128C4
	adds r7, r4, #0
	movs r0, #0x14
	muls r0, r6, r0
	adds r7, #0x40
	str r0, [sp, #0x14]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl FUN_020129A4
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	subs r2, r2, #2
	bl FUN_020128C4
	ldr r0, [sp, #0xc]
	adds r6, r4, #0
	movs r1, #0x14
	adds r7, r0, #0
	muls r7, r1, r7
	adds r6, #0x40
	ldr r0, [r6, r7]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl FUN_020129A4
	ldr r2, [sp, #0x28]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x2c]
	subs r2, r2, #2
	bl FUN_020128C4
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022407C4
	lsls r0, r5, #2
	adds r1, r4, r0
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0
	ldr r0, [r0]
	subs r2, r1, #2
	bl FUN_0200D5AC
	movs r7, #0x51
	ldr r0, [sp, #4]
	movs r1, #0x18
	muls r1, r0, r1
	movs r6, #0
	adds r5, r4, r1
	lsls r7, r7, #2
_022407AC:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022407BC
	movs r1, #0
	ldr r0, [r0]
	subs r2, r1, #2
	bl FUN_0200D5AC
_022407BC:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #6
	blt _022407AC
_022407C4:
	movs r0, #0xb9
	lsls r0, r0, #2
	ldrsh r1, [r4, r0]
	add sp, #0x30
	adds r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022407D2:
	adds r0, r3, #2
	ldrsh r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _022408D6
	movs r1, #0
	adds r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r3]
	adds r0, r0, #1
	strh r0, [r4, r3]
_022407EE:
	movs r0, #1
	movs r3, #0xbd
	str r0, [sp]
	lsls r3, r3, #2
	adds r2, r3, #4
	ldr r1, [r4, r3]
	adds r3, #0xc
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	adds r0, r4, #0
	bl ov17_022403B0
	adds r7, r4, #0
	movs r0, #0x14
	muls r0, r5, r0
	adds r7, #0x40
	str r0, [sp, #0x18]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl FUN_020129A4
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	adds r2, r2, #1
	bl FUN_020128C4
	adds r7, r4, #0
	movs r0, #0x14
	muls r0, r6, r0
	adds r7, #0x40
	str r0, [sp, #0x1c]
	ldr r0, [r7, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl FUN_020129A4
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x28]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x2c]
	adds r2, r2, #1
	bl FUN_020128C4
	ldr r0, [sp, #0xc]
	adds r6, r4, #0
	movs r1, #0x14
	adds r7, r0, #0
	muls r7, r1, r7
	adds r6, #0x40
	ldr r0, [r6, r7]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl FUN_020129A4
	ldr r2, [sp, #0x28]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x2c]
	adds r2, r2, #1
	bl FUN_020128C4
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022408AC
	lsls r0, r5, #2
	adds r1, r4, r0
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0
	ldr r0, [r0]
	movs r2, #1
	bl FUN_0200D5AC
	movs r7, #0x51
	ldr r0, [sp, #4]
	movs r1, #0x18
	muls r1, r0, r1
	movs r6, #0
	adds r5, r4, r1
	lsls r7, r7, #2
_02240894:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _022408A4
	ldr r0, [r0]
	movs r1, #0
	movs r2, #1
	bl FUN_0200D5AC
_022408A4:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #6
	blt _02240894
_022408AC:
	movs r0, #0xb9
	lsls r0, r0, #2
	ldrsh r1, [r4, r0]
	add sp, #0x30
	adds r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022408BA:
	adds r0, r3, #2
	ldrsh r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _022408D6
	adds r0, r4, #0
	bl ov17_022404A8
	adds r0, r4, #0
	bl ov17_022404FC
_022408D6:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022408DC: .4byte 0x00000123
	thumb_func_end ov17_02240658

	thumb_func_start ov17_022408E0
ov17_022408E0: @ 0x022408E0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _022408F0
	bl FUN_02022974
_022408F0:
	movs r0, #0xc1
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	ldr r2, _0224090C @ =0x00000528
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224090C: .4byte 0x00000528
	thumb_func_end ov17_022408E0

	thumb_func_start ov17_02240910
ov17_02240910: @ 0x02240910
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0224092E
	bl FUN_0200DA58
	movs r0, #0xc1
	lsls r0, r0, #2
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0xc
	str r1, [r4, #0x14]
	blx FUN_020C4CF4
_0224092E:
	pop {r4, pc}
	thumb_func_end ov17_02240910

	thumb_func_start ov17_02240930
ov17_02240930: @ 0x02240930
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #0xff
	beq _02240946
	ldr r0, _02240948 @ =ov17_02240950
	adds r1, r5, #0
	bl ov17_022408E0
	ldr r0, _0224094C @ =0x0000030D
	strb r4, [r5, r0]
_02240946:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02240948: .4byte ov17_02240950
_0224094C: .4byte 0x0000030D
	thumb_func_end ov17_02240930

	thumb_func_start ov17_02240950
ov17_02240950: @ 0x02240950
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r0, #0xc1
	adds r5, r1, #0
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r5, #4]
	movs r4, #0
	ldr r3, [r0, #0x50]
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _02240970
	cmp r0, #1
	beq _0224098C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02240970:
	movs r0, #0xa
	lsls r0, r0, #8
	strh r0, [r2, #4]
	ldr r0, _022409EC @ =0xFFFFFB00
	strh r0, [r2, #6]
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #6
	ldrsh r0, [r2, r0]
	subs r0, r1, r0
	strh r0, [r2, #4]
	ldrb r0, [r2, #8]
	adds r0, r0, #1
	strb r0, [r2, #8]
_0224098C:
	movs r7, #4
	movs r6, #6
	ldrsh r1, [r2, r7]
	ldrsh r0, [r2, r6]
	adds r0, r1, r0
	strh r0, [r2, #4]
	ldrsh r6, [r2, r6]
	cmp r6, #0
	blt _022409AC
	ldrsh r1, [r2, r7]
	lsls r0, r7, #0xa
	cmp r1, r0
	blt _022409AC
	strh r0, [r2, #4]
	movs r4, #1
	b _022409BE
_022409AC:
	cmp r6, #0
	bge _022409BE
	movs r0, #4
	ldrsh r0, [r2, r0]
	cmp r0, #0
	bgt _022409BE
	movs r0, #0
	strh r0, [r2, #4]
	movs r4, #1
_022409BE:
	movs r0, #4
	ldrsh r0, [r2, r0]
	movs r1, #1
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _022409F0 @ =0x00007FFF
	str r0, [sp, #4]
	ldrb r2, [r2, #9]
	adds r0, r3, #0
	movs r3, #0x10
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x10
	bl FUN_020039B0
	cmp r4, #1
	bne _022409E8
	adds r0, r5, #0
	bl ov17_02240910
_022409E8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022409EC: .4byte 0xFFFFFB00
_022409F0: .4byte 0x00007FFF
	thumb_func_end ov17_02240950

	thumb_func_start ov17_022409F4
ov17_022409F4: @ 0x022409F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r1, #0x69
	adds r5, r0, #0
	movs r0, #0
	lsls r1, r1, #2
	str r0, [sp, #4]
	adds r0, r5, r1
	str r0, [sp]
	adds r0, r1, #0
	adds r0, #0x50
	adds r1, #0xa0
	adds r4, r5, #0
	adds r7, r5, r0
	adds r6, r5, r1
_02240A12:
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240A22
	ldr r0, [sp]
	bl FUN_0201A8FC
_02240A22:
	movs r0, #2
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240A32
	adds r0, r7, #0
	bl FUN_0201A8FC
_02240A32:
	movs r0, #0x25
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240A42
	adds r0, r6, #0
	bl FUN_0201A8FC
_02240A42:
	ldr r0, [sp]
	adds r4, #0x14
	adds r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r7, #0x14
	adds r0, r0, #1
	adds r6, #0x14
	str r0, [sp, #4]
	cmp r0, #4
	blt _02240A12
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r7, r0, #0
	movs r6, #0
	adds r4, r5, r0
	adds r7, #0xc
_02240A64:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02240A70
	adds r0, r4, #0
	bl FUN_0201A8FC
_02240A70:
	adds r6, r6, #1
	adds r5, #0x14
	adds r4, #0x14
	cmp r6, #3
	blt _02240A64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_022409F4

	thumb_func_start ov17_02240A80
ov17_02240A80: @ 0x02240A80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r0, #0
	movs r0, #0x69
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r0, #0
	str r0, [sp, #0x20]
	adds r0, r6, #0
	str r0, [sp, #0x18]
	adds r0, #0x50
	str r0, [sp, #0x18]
	adds r0, r6, #0
	str r0, [sp, #0x14]
	adds r0, #0xa0
	adds r7, r1, #0
	str r6, [sp, #0x1c]
	str r0, [sp, #0x14]
_02240AA4:
	ldrh r0, [r7]
	cmp r0, #0
	beq _02240ACA
	ldr r1, [sp, #0x20]
	adds r4, r6, r1
	movs r1, #0xa
	bl FUN_020790C4
	movs r1, #0x4b
	lsls r1, r1, #2
	strb r0, [r4, r1]
	ldrh r0, [r7]
	movs r1, #0xb
	bl FUN_020790C4
	movs r1, #0x13
	lsls r1, r1, #4
	strb r0, [r4, r1]
	b _02240ADA
_02240ACA:
	ldr r0, [sp, #0x20]
	movs r1, #0
	adds r4, r6, r0
	movs r0, #0x4b
	lsls r0, r0, #2
	strb r1, [r4, r0]
	adds r0, r0, #4
	strb r1, [r4, r0]
_02240ADA:
	ldrh r0, [r7]
	movs r1, #0x15
	bl FUN_0200B2EC
	str r0, [sp, #0x24]
	ldr r0, _02240BE4 @ =0x00010708
	ldr r1, [sp, #0x24]
	str r0, [sp]
	ldr r3, [sp, #0x1c]
	adds r0, r5, #0
	movs r2, #2
	bl ov17_02240BF4
	ldr r0, [sp, #0x24]
	bl FUN_020237BC
	movs r0, #0x4b
	lsls r0, r0, #2
	ldrb r0, [r4, r0]
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl FUN_02095750
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x34]
	ldr r0, [r0, #0x40]
	bl FUN_0200B1EC
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x30]
	ldr r0, [r0, #0x40]
	bl FUN_0200B1EC
	adds r4, r0, #0
	ldr r0, _02240BE8 @ =0x00010200
	ldr r1, [sp, #0x28]
	str r0, [sp]
	ldr r3, [sp, #0x18]
	adds r0, r5, #0
	movs r2, #0
	bl ov17_02240BF4
	ldr r0, _02240BE8 @ =0x00010200
	ldr r3, [sp, #0x14]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov17_02240BF4
	ldr r0, [sp, #0x28]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	adds r7, r7, #2
	adds r0, #0x14
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	blt _02240AA4
	movs r7, #0
	adds r4, r7, #0
	adds r6, #0xf0
_02240B70:
	ldr r0, [r5, #4]
	movs r1, #0x15
	ldr r0, [r0]
	adds r0, r0, r4
	adds r0, #0xd0
	ldrh r0, [r0]
	bl ov17_0223F310
	str r0, [sp, #0x2c]
	ldr r0, _02240BEC @ =0x0001090A
	ldr r1, [sp, #0x2c]
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	adds r3, r6, #0
	bl ov17_02240BF4
	ldr r0, [sp, #0x2c]
	bl FUN_020237BC
	adds r7, r7, #1
	adds r4, #8
	adds r6, #0x14
	cmp r7, #3
	blt _02240B70
	ldr r3, _02240BF0 @ =0x000080F1
	ldr r2, [r5, #4]
	adds r0, r3, #7
	str r3, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x50]
	adds r3, #0xc
	bl ov17_02252AB0
	ldr r3, _02240BF0 @ =0x000080F1
	ldr r1, [r5, #4]
	adds r0, r3, #7
	str r3, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	movs r2, #0x15
	adds r3, #0xc
	bl ov17_02252B48
	movs r1, #0xc5
	lsls r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02240BE4: .4byte 0x00010708
_02240BE8: .4byte 0x00010200
_02240BEC: .4byte 0x0001090A
_02240BF0: .4byte 0x000080F1
	thumb_func_end ov17_02240A80

	thumb_func_start ov17_02240BF4
ov17_02240BF4: @ 0x02240BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r7, r2, #0
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, r3, #0
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #0x1c
	add r3, sp, #0x18
	bl ov17_02240C60
	ldr r0, [sp, #0x1c]
	strh r0, [r4, #0x12]
	ldr r0, [sp, #0x18]
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02240C20
	adds r0, r4, #0
	bl FUN_0201A8FC
_02240C20:
	adds r0, r4, #0
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x18]
	ldr r0, [r0, #0x24]
	lsls r2, r2, #0x18
	adds r1, r4, #0
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_0201A870
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	adds r1, r7, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r0, r4, #0
	adds r2, r6, #0
	str r3, [sp, #0x14]
	bl FUN_0201D7E0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02240BF4

	thumb_func_start ov17_02240C60
ov17_02240C60: @ 0x02240C60
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0
	adds r7, r3, #0
	bl FUN_02002D7C
	adds r4, r0, #0
	asrs r1, r4, #2
	lsrs r1, r1, #0x1d
	adds r1, r4, r1
	asrs r5, r1, #3
	movs r1, #8
	blx FUN_020BD140
	cmp r0, #0
	beq _02240C88
	adds r5, r5, #1
_02240C88:
	str r4, [r6]
	str r5, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02240C60

	thumb_func_start ov17_02240C90
ov17_02240C90: @ 0x02240C90
	push {r4, r5, r6, lr}
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r2, r6, #0
	adds r5, r0, #0
	subs r2, #0x38
	ldrsb r2, [r5, r2]
	ldr r1, _02240CF4 @ =0x02253558
	movs r3, #0x30
	adds r4, r2, #0
	muls r4, r3, r4
	adds r4, r1, r4
	ldr r2, [r4, #0x20]
	cmp r2, #0
	bne _02240CB4
	subs r3, #0x31
	adds r0, r3, #0
	pop {r4, r5, r6, pc}
_02240CB4:
	ldrb r1, [r5, r6]
	cmp r1, #0
	bne _02240CEE
	adds r0, r6, #4
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _02240CCC
	ldr r1, _02240CF8 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	ldr r1, _02240CFC @ =0x00000CF3
	tst r1, r2
	beq _02240CE8
_02240CCC:
	cmp r0, #0
	bne _02240CD6
	ldr r0, _02240D00 @ =0x000005DC
	bl FUN_02005748
_02240CD6:
	movs r1, #1
	movs r0, #0xc7
	strb r1, [r5, r6]
	movs r2, #0
	lsls r0, r0, #2
	strb r2, [r5, r0]
	ldr r2, [r4, #0x20]
	adds r0, r5, #0
	blx r2
_02240CE8:
	movs r0, #0
	mvns r0, r0
	pop {r4, r5, r6, pc}
_02240CEE:
	movs r1, #0
	blx r2
	pop {r4, r5, r6, pc}
	.align 2, 0
_02240CF4: .4byte 0x02253558
_02240CF8: .4byte 0x021BF67C
_02240CFC: .4byte 0x00000CF3
_02240D00: .4byte 0x000005DC
	thumb_func_end ov17_02240C90

	thumb_func_start ov17_02240D04
ov17_02240D04: @ 0x02240D04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #8]
	movs r1, #0x31
	adds r5, r0, #0
	lsls r1, r1, #4
	adds r0, r5, r1
	str r0, [sp, #0xc]
	adds r0, r1, #0
	subs r1, #0x30
	adds r0, #8
	adds r6, r5, r0
	ldrsb r1, [r5, r1]
	movs r0, #0x30
	ldr r2, _02240E5C @ =0x02253558
	muls r0, r1, r0
	adds r7, r2, r0
	movs r4, #0
	b _02240D48
_02240D2A:
	ldr r0, [r5, #4]
	ldr r1, _02240E60 @ =0x00000123
	ldr r0, [r0]
	movs r2, #0
	ldrb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x36
	bl FUN_02074470
	lsls r2, r4, #1
	add r1, sp, #0x10
	strh r0, [r1, r2]
	adds r4, r4, #1
_02240D48:
	cmp r4, #4
	blt _02240D2A
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _02240DC6
	ldr r0, [sp, #0xc]
	movs r1, #0
	ldrsb r0, [r0, r1]
	movs r4, #1
	strb r0, [r6, #2]
	ldr r0, [sp, #0xc]
	ldrsb r0, [r0, r4]
	strb r0, [r6, #1]
	ldrsb r0, [r6, r4]
	lsls r3, r0, #1
	movs r0, #2
	ldrsb r2, [r6, r0]
	ldr r0, _02240E64 @ =0x0225323C
	adds r0, r0, r3
	ldrb r3, [r2, r0]
	add r0, sp, #0x10
	lsls r2, r3, #1
	ldrh r0, [r0, r2]
	cmp r0, #0
	bne _02240D92
	ldr r0, [sp, #0xc]
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r6, #2]
	strb r1, [r6, #1]
	ldrsb r0, [r6, r4]
	lsls r2, r0, #1
	movs r0, #2
	ldrsb r1, [r6, r0]
	ldr r0, _02240E64 @ =0x0225323C
	adds r0, r0, r2
	ldrb r3, [r1, r0]
_02240D92:
	ldr r0, [r7, #0x14]
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	subs r0, #8
	str r0, [sp]
	movs r0, #0x11
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	movs r0, #0xc5
	adds r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, #8
	subs r2, #8
	adds r3, #8
	bl ov17_02252C78
	movs r0, #0
	add sp, #0x1c
	mvns r0, r0
	pop {r4, r5, r6, r7, pc}
_02240DC6:
	ldr r0, _02240E64 @ =0x0225323C
	add r1, sp, #0x18
	movs r2, #4
	blx FUN_020C4DB0
	movs r1, #2
	adds r0, r6, #0
	adds r2, r1, #0
	add r3, sp, #0x18
	bl ov17_02241004
	cmp r0, #0x20
	bhi _02240DF6
	bhs _02240E02
	cmp r0, #2
	bhi _02240DF0
	cmp r0, #1
	blo _02240E54
	beq _02240E40
	cmp r0, #2
	b _02240E54
_02240DF0:
	cmp r0, #0x10
	beq _02240E02
	b _02240E54
_02240DF6:
	cmp r0, #0x40
	bhi _02240DFE
	beq _02240E02
	b _02240E54
_02240DFE:
	cmp r0, #0x80
	bne _02240E54
_02240E02:
	movs r0, #1
	ldrsb r0, [r6, r0]
	ldr r2, _02240E64 @ =0x0225323C
	lsls r3, r0, #1
	movs r0, #2
	ldrsb r1, [r6, r0]
	adds r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r7, #0x14]
	lsls r3, r1, #2
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	subs r0, #8
	str r0, [sp]
	movs r0, #0x11
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	movs r0, #0xc5
	adds r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, #8
	subs r2, #8
	adds r3, #8
	bl ov17_02252C78
	b _02240E54
_02240E40:
	movs r0, #1
	ldrsb r0, [r6, r0]
	ldr r2, _02240E64 @ =0x0225323C
	add sp, #0x1c
	lsls r3, r0, #1
	movs r0, #2
	ldrsb r1, [r6, r0]
	adds r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, r7, pc}
_02240E54:
	movs r0, #0
	mvns r0, r0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02240E5C: .4byte 0x02253558
_02240E60: .4byte 0x00000123
_02240E64: .4byte 0x0225323C
	thumb_func_end ov17_02240D04

	thumb_func_start ov17_02240E68
ov17_02240E68: @ 0x02240E68
	push {r4, r5, r6, r7}
	movs r2, #0x31
	lsls r2, r2, #4
	movs r4, #0
	adds r2, r0, r2
	ldr r7, _02240EA0 @ =0x0225323C
	adds r0, r4, #0
	b _02240E96
_02240E78:
	lsls r5, r4, #1
	adds r3, r0, #0
	adds r6, r7, r5
	b _02240E90
_02240E80:
	ldrb r5, [r3, r6]
	cmp r1, r5
	bne _02240E8E
	strb r3, [r2]
	strb r4, [r2, #1]
	pop {r4, r5, r6, r7}
	bx lr
_02240E8E:
	adds r3, r3, #1
_02240E90:
	cmp r3, #2
	blt _02240E80
	adds r4, r4, #1
_02240E96:
	cmp r4, #2
	blt _02240E78
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02240EA0: .4byte 0x0225323C
	thumb_func_end ov17_02240E68

	thumb_func_start ov17_02240EA4
ov17_02240EA4: @ 0x02240EA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r7, #0x31
	lsls r7, r7, #4
	adds r3, r7, #0
	adds r6, r0, #0
	subs r3, #0x30
	adds r0, r7, #0
	ldrsb r5, [r6, r3]
	adds r0, #8
	adds r4, r6, r0
	movs r3, #0x30
	adds r2, r1, #0
	ldr r0, _02240FBC @ =0x02253558
	muls r3, r5, r3
	adds r1, r6, r7
	adds r5, r0, r3
	cmp r2, #1
	bne _02240F18
	movs r0, #2
	ldrsb r2, [r1, r0]
	strb r2, [r4, #2]
	movs r2, #3
	ldrsb r1, [r1, r2]
	strb r1, [r4, #1]
	movs r1, #1
	ldrsb r2, [r4, r1]
	ldrsb r3, [r4, r0]
	lsls r1, r2, #1
	adds r2, r2, r1
	ldr r1, _02240FC0 @ =0x02253240
	adds r0, r1, r2
	ldrb r1, [r3, r0]
	ldr r0, [r5, #0x14]
	lsls r3, r1, #2
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	subs r0, #8
	str r0, [sp]
	movs r0, #0x11
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	adds r0, r7, #4
	adds r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	adds r1, #8
	subs r2, #8
	adds r3, #8
	bl ov17_02252C78
	movs r0, #0
	add sp, #0x10
	mvns r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02240F18:
	ldr r0, _02240FC0 @ =0x02253240
	add r1, sp, #8
	movs r2, #6
	blx FUN_020C4DB0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	add r3, sp, #8
	bl ov17_02241004
	cmp r0, #0x20
	bhi _02240F4A
	bhs _02240F56
	cmp r0, #2
	bhi _02240F44
	cmp r0, #1
	blo _02240FB2
	beq _02240F96
	cmp r0, #2
	beq _02240FAC
	b _02240FB2
_02240F44:
	cmp r0, #0x10
	beq _02240F56
	b _02240FB2
_02240F4A:
	cmp r0, #0x40
	bhi _02240F52
	beq _02240F56
	b _02240FB2
_02240F52:
	cmp r0, #0x80
	bne _02240FB2
_02240F56:
	movs r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _02240FC0 @ =0x02253240
	lsls r0, r1, #1
	adds r3, r1, r0
	movs r0, #2
	ldrsb r1, [r4, r0]
	adds r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r5, #0x14]
	lsls r3, r1, #2
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	subs r0, #8
	str r0, [sp]
	movs r0, #0x11
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	movs r0, #0xc5
	adds r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r1, #8
	subs r2, #8
	adds r3, #8
	bl ov17_02252C78
	b _02240FB2
_02240F96:
	movs r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _02240FC0 @ =0x02253240
	add sp, #0x10
	lsls r0, r1, #1
	adds r3, r1, r0
	movs r0, #2
	ldrsb r1, [r4, r0]
	adds r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02240FAC:
	add sp, #0x10
	movs r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02240FB2:
	movs r0, #0
	mvns r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240FBC: .4byte 0x02253558
_02240FC0: .4byte 0x02253240
	thumb_func_end ov17_02240EA4

	thumb_func_start ov17_02240FC4
ov17_02240FC4: @ 0x02240FC4
	push {r4, r5, r6, r7}
	cmp r1, #3
	beq _02240FFC
	movs r2, #0x31
	lsls r2, r2, #4
	adds r3, r0, r2
	movs r5, #0
	ldr r0, _02241000 @ =0x02253240
	adds r2, r5, #0
	b _02240FF8
_02240FD8:
	lsls r6, r5, #1
	adds r6, r5, r6
	adds r4, r2, #0
	adds r7, r0, r6
	b _02240FF2
_02240FE2:
	ldrb r6, [r4, r7]
	cmp r1, r6
	bne _02240FF0
	strb r4, [r3, #2]
	strb r5, [r3, #3]
	pop {r4, r5, r6, r7}
	bx lr
_02240FF0:
	adds r4, r4, #1
_02240FF2:
	cmp r4, #3
	blt _02240FE2
	adds r5, r5, #1
_02240FF8:
	cmp r5, #2
	blt _02240FD8
_02240FFC:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02241000: .4byte 0x02253240
	thumb_func_end ov17_02240FC4

	thumb_func_start ov17_02241004
ov17_02241004: @ 0x02241004
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #2
	adds r4, r1, #0
	ldrsb r1, [r0, r7]
	movs r5, #1
	adds r6, r2, #0
	str r1, [sp]
	ldrsb r1, [r0, r5]
	adds r2, r3, #0
	movs r3, #0x40
	mov ip, r1
	ldr r1, _022411DC @ =0x021BF67C
	ldr r1, [r1, #0x48]
	tst r3, r1
	beq _02241072
	mov r1, ip
	subs r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, #0
	bge _02241032
	movs r1, #0
	strb r1, [r0, #1]
_02241032:
	cmp r2, #0
	beq _0224106E
	movs r3, #1
	movs r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	muls r3, r4, r3
	adds r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0224106E
	adds r1, r0, #1
	movs r7, #0
	movs r6, #1
_0224104E:
	ldrsb r3, [r1, r7]
	subs r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _02241060
	mov r1, ip
	strb r1, [r0, #1]
	b _0224106E
_02241060:
	movs r5, #2
	ldrsb r5, [r0, r5]
	muls r3, r4, r3
	adds r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _0224104E
_0224106E:
	movs r5, #0x40
	b _02241186
_02241072:
	movs r3, #0x80
	tst r3, r1
	beq _022410C8
	mov r1, ip
	adds r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, r6
	blt _02241088
	subs r1, r6, #1
	strb r1, [r0, #1]
_02241088:
	cmp r2, #0
	beq _022410C4
	movs r3, #1
	movs r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	muls r3, r4, r3
	adds r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _022410C4
	adds r1, r0, #1
	movs r7, #1
_022410A2:
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r7]
	cmp r3, r6
	blt _022410B6
	mov r1, ip
	strb r1, [r0, #1]
	b _022410C4
_022410B6:
	movs r5, #2
	ldrsb r5, [r0, r5]
	muls r3, r4, r3
	adds r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _022410A2
_022410C4:
	movs r5, #0x80
	b _02241186
_022410C8:
	movs r3, #0x20
	tst r3, r1
	beq _0224111E
	ldr r1, [sp]
	subs r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, #0
	bge _022410DE
	movs r1, #0
	strb r1, [r0, #2]
_022410DE:
	cmp r2, #0
	beq _0224111A
	movs r3, #1
	movs r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	muls r3, r4, r3
	adds r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0224111A
	adds r5, r0, #2
	movs r7, #0
	movs r6, #2
_022410FA:
	ldrsb r1, [r5, r7]
	subs r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _0224110C
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _0224111A
_0224110C:
	movs r1, #1
	ldrsb r1, [r0, r1]
	adds r3, r2, r3
	muls r1, r4, r1
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _022410FA
_0224111A:
	movs r5, #0x20
	b _02241186
_0224111E:
	movs r3, #0x10
	tst r3, r1
	beq _02241174
	ldr r1, [sp]
	adds r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, r4
	blt _02241134
	subs r1, r4, #1
	strb r1, [r0, #2]
_02241134:
	cmp r2, #0
	beq _02241170
	movs r3, #1
	movs r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	muls r3, r4, r3
	adds r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _02241170
	adds r5, r0, #2
	movs r7, #0
	movs r6, #2
_02241150:
	ldrsb r1, [r5, r7]
	adds r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, r4
	blt _02241162
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _02241170
_02241162:
	movs r1, #1
	ldrsb r1, [r0, r1]
	adds r3, r2, r3
	muls r1, r4, r1
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _02241150
_02241170:
	movs r5, #0x10
	b _02241186
_02241174:
	adds r3, r1, #0
	tst r3, r5
	bne _02241186
	tst r1, r7
	beq _02241182
	adds r5, r7, #0
	b _02241186
_02241182:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241186:
	cmp r2, #0
	beq _022411B0
	mov r1, ip
	adds r3, r4, #0
	muls r3, r1, r3
	ldr r1, [sp]
	adds r1, r1, r3
	movs r3, #2
	ldrsb r6, [r0, r3]
	movs r3, #1
	ldrsb r3, [r0, r3]
	ldrb r1, [r2, r1]
	muls r3, r4, r3
	adds r3, r6, r3
	ldrb r2, [r2, r3]
	cmp r1, r2
	bne _022411B0
	ldr r1, [sp]
	strb r1, [r0, #2]
	mov r1, ip
	strb r1, [r0, #1]
_022411B0:
	movs r1, #2
	ldrsb r2, [r0, r1]
	ldr r1, [sp]
	cmp r2, r1
	bne _022411C4
	movs r1, #1
	ldrsb r1, [r0, r1]
	mov r0, ip
	cmp r1, r0
	beq _022411CC
_022411C4:
	ldr r0, _022411E0 @ =0x000005DC
	bl FUN_02005748
	b _022411D6
_022411CC:
	movs r0, #0xf0
	tst r0, r5
	beq _022411D6
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022411D6:
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022411DC: .4byte 0x021BF67C
_022411E0: .4byte 0x000005DC
	thumb_func_end ov17_02241004

	thumb_func_start ov17_022411E4
ov17_022411E4: @ 0x022411E4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	movs r2, #0xb7
	adds r4, r1, #0
	str r0, [sp]
	lsls r2, r2, #2
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	movs r3, #6
	ldr r0, [r0, #0x24]
	ldr r2, [r2, #0x14]
	movs r1, #4
	lsls r3, r3, #0xc
	bl FUN_0201958C
	movs r0, #0xb6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0xb6
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_022411E4

	thumb_func_start ov17_02241220
ov17_02241220: @ 0x02241220
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	movs r0, #0x2e
	lsls r0, r0, #4
	ldrsb r1, [r1, r0]
	movs r0, #0x30
	movs r4, #0
	ldr r2, _02241268 @ =0x02253558
	muls r0, r1, r0
	ldr r6, _0224126C @ =0x0000FFFF
	adds r5, r2, r0
	adds r7, r4, #0
_02241238:
	ldrh r0, [r5, #4]
	cmp r0, r6
	bne _0224124C
	adds r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl FUN_02019120
	b _02241258
_0224124C:
	adds r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl FUN_02019120
_02241258:
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blt _02241238
	ldr r0, [sp]
	bl FUN_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02241268: .4byte 0x02253558
_0224126C: .4byte 0x0000FFFF
	thumb_func_end ov17_02241220

	thumb_func_start ov17_02241270
ov17_02241270: @ 0x02241270
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	movs r3, #2
	str r3, [sp, #4]
	ldr r3, _022412B8 @ =0x000080FB
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x2a
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _022412BC @ =0x000080F6
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x2b
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _022412BC @ =0x000080F6
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x2c
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022412B8: .4byte 0x000080FB
_022412BC: .4byte 0x000080F6
	thumb_func_end ov17_02241270

	thumb_func_start ov17_022412C0
ov17_022412C0: @ 0x022412C0
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	ldr r2, _022412EC @ =0x0225364C
	bl FUN_0200CE6C
	movs r1, #0x58
	muls r1, r5, r1
	adds r1, #0x28
	lsls r1, r1, #0x10
	movs r3, #0x11
	adds r4, r0, #0
	asrs r1, r1, #0x10
	movs r2, #0x60
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, [r4]
	bl FUN_0200D324
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_022412EC: .4byte 0x0225364C
	thumb_func_end ov17_022412C0

	thumb_func_start ov17_022412F0
ov17_022412F0: @ 0x022412F0
	push {r4, lr}
	ldr r1, _0224130C @ =0x000080FB
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _02241310 @ =0x000080F6
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _02241310 @ =0x000080F6
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_0224130C: .4byte 0x000080FB
_02241310: .4byte 0x000080F6
	thumb_func_end ov17_022412F0

	thumb_func_start ov17_02241314
ov17_02241314: @ 0x02241314
	ldr r3, _02241318 @ =FUN_0200D0F4
	bx r3
	.align 2, 0
_02241318: .4byte FUN_0200D0F4
	thumb_func_end ov17_02241314

	thumb_func_start ov17_0224131C
ov17_0224131C: @ 0x0224131C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	movs r3, #2
	str r3, [sp, #4]
	ldr r3, _02241364 @ =0x000080FA
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x2d
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _02241368 @ =0x000080F5
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x2e
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _02241368 @ =0x000080F5
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x2f
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02241364: .4byte 0x000080FA
_02241368: .4byte 0x000080F5
	thumb_func_end ov17_0224131C

	thumb_func_start ov17_0224136C
ov17_0224136C: @ 0x0224136C
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	ldr r2, [sp, #0x10]
	adds r6, r3, #0
	cmp r2, #0
	blt _02241380
	ldr r2, _022413A4 @ =0x02253618
	bl FUN_0200CE6C
	b _02241386
_02241380:
	ldr r2, _022413A8 @ =0x02253680
	bl FUN_0200CE6C
_02241386:
	adds r4, r0, #0
	lsls r1, r5, #0x10
	lsls r2, r6, #0x10
	movs r3, #0x11
	adds r0, r4, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, [r4]
	bl FUN_0200D324
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022413A4: .4byte 0x02253618
_022413A8: .4byte 0x02253680
	thumb_func_end ov17_0224136C

	thumb_func_start ov17_022413AC
ov17_022413AC: @ 0x022413AC
	ldr r3, _022413B0 @ =FUN_0200D0F4
	bx r3
	.align 2, 0
_022413B0: .4byte FUN_0200D0F4
	thumb_func_end ov17_022413AC

	thumb_func_start ov17_022413B4
ov17_022413B4: @ 0x022413B4
	push {r4, lr}
	ldr r1, _022413D0 @ =0x000080FA
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _022413D4 @ =0x000080F5
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _022413D4 @ =0x000080F5
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_022413D0: .4byte 0x000080FA
_022413D4: .4byte 0x000080F5
	thumb_func_end ov17_022413B4

	thumb_func_start ov17_022413D8
ov17_022413D8: @ 0x022413D8
	ldr r0, _022413E0 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_022413E0: .4byte 0x04000050
	thumb_func_end ov17_022413D8

	thumb_func_start ov17_022413E4
ov17_022413E4: @ 0x022413E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0x30]
	adds r5, r1, #0
	movs r1, #2
	adds r4, r2, #0
	bl FUN_02019FE4
	movs r1, #0xc0
	muls r1, r5, r1
	lsls r1, r1, #1
	movs r2, #0
	ldr r6, _02241424 @ =0x00000FFF
	adds r0, r0, r1
	adds r3, r2, #0
	lsls r4, r4, #0xc
_02241402:
	lsls r5, r3, #1
	movs r1, #0
	adds r5, r0, r5
_02241408:
	ldrh r7, [r5]
	adds r1, r1, #1
	ands r7, r6
	orrs r7, r4
	strh r7, [r5]
	adds r5, r5, #2
	cmp r1, #0xa
	blt _02241408
	adds r2, r2, #1
	adds r3, #0x20
	cmp r2, #6
	blt _02241402
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241424: .4byte 0x00000FFF
	thumb_func_end ov17_022413E4

	thumb_func_start ov17_02241428
ov17_02241428: @ 0x02241428
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _02241454 @ =0x022536B4
	ldr r7, _02241458 @ =0x00000231
	b _02241444
_02241434:
	adds r2, r5, r4
	ldrb r2, [r2, r7]
	adds r0, r5, #0
	adds r1, r4, #0
	ldrb r2, [r6, r2]
	bl ov17_022413E4
	adds r4, r4, #1
_02241444:
	cmp r4, #4
	blt _02241434
	ldr r0, [r5, #0x30]
	movs r1, #2
	bl FUN_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241454: .4byte 0x022536B4
_02241458: .4byte 0x00000231
	thumb_func_end ov17_02241428

	thumb_func_start ov17_0224145C
ov17_0224145C: @ 0x0224145C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x15
	movs r1, #0xc
	bl FUN_02018144
	movs r1, #0
	movs r2, #0xc
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r5, #0x5c]
	ldr r2, _0224148C @ =0x00009CA4
	str r0, [r4]
	ldr r0, _02241490 @ =ov17_022414C0
	adds r1, r4, #0
	strb r6, [r4, #0xa]
	bl FUN_0200D9E8
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0224148C: .4byte 0x00009CA4
_02241490: .4byte ov17_022414C0
	thumb_func_end ov17_0224145C

	thumb_func_start ov17_02241494
ov17_02241494: @ 0x02241494
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _022414A2
	bl FUN_02022974
_022414A2:
	ldr r0, [r4, #4]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov17_02241494

	thumb_func_start ov17_022414B0
ov17_022414B0: @ 0x022414B0
	movs r1, #1
	strb r1, [r0, #0xb]
	movs r1, #0xa
	lsls r1, r1, #8
	strh r1, [r0, #8]
	bx lr
	thumb_func_end ov17_022414B0

	thumb_func_start ov17_022414BC
ov17_022414BC: @ 0x022414BC
	ldrb r0, [r0, #0xb]
	bx lr
	thumb_func_end ov17_022414BC

	thumb_func_start ov17_022414C0
ov17_022414C0: @ 0x022414C0
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _02241516
	movs r0, #8
	ldrsh r0, [r4, r0]
	ldr r2, _0224151C @ =0x022536B4
	movs r1, #0
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _02241520 @ =0x00007FFF
	str r0, [sp, #4]
	ldrb r3, [r4, #0xa]
	ldr r0, [r4]
	ldrb r2, [r2, r3]
	movs r3, #4
	lsls r2, r2, #4
	adds r2, r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl FUN_020039B0
	movs r1, #8
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bne _02241504
	movs r0, #0
	add sp, #8
	strb r0, [r4, #0xb]
	pop {r4, pc}
_02241504:
	movs r0, #0xa
	lsls r0, r0, #6
	subs r0, r2, r0
	strh r0, [r4, #8]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _02241516
	movs r0, #0
	strh r0, [r4, #8]
_02241516:
	add sp, #8
	pop {r4, pc}
	nop
_0224151C: .4byte 0x022536B4
_02241520: .4byte 0x00007FFF
	thumb_func_end ov17_022414C0

	thumb_func_start ov17_02241524
ov17_02241524: @ 0x02241524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	str r0, [sp, #0x18]
	adds r0, #8
	str r0, [sp, #0x18]
	adds r6, r1, #0
	lsls r0, r6, #2
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r1, r0]
	bl FUN_02007DC8
	lsls r0, r6, #4
	adds r0, r5, r0
	ldr r0, [r0, #0x58]
	cmp r0, #0
	bne _0224154C
	bl FUN_02022974
_0224154C:
	adds r2, r5, #0
	adds r2, #0x58
	lsls r1, r6, #4
	adds r0, r2, r1
	str r0, [sp, #0x14]
	ldr r0, [r2, r1]
	movs r2, #0x32
	movs r1, #0
	lsls r2, r2, #6
	blx FUN_020C4CF4
	ldr r1, [sp, #0x14]
	lsls r0, r6, #5
	str r1, [sp]
	movs r1, #0x15
	str r1, [sp, #4]
	movs r1, #0xd8
	subs r1, r1, r0
	str r1, [sp, #8]
	movs r1, #0x70
	subs r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, _022415E0 @ =0xFFFFFE00
	adds r7, r5, #0
	str r0, [sp, #0x10]
	ldr r2, [r5]
	lsls r4, r6, #2
	ldr r0, [r5, #4]
	ldr r2, [r2, r4]
	adds r7, #8
	adds r1, r6, #0
	movs r3, #0
	bl FUN_02095484
	str r0, [r7, r4]
	ldr r0, [r7, r4]
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	ldr r0, [r7, r4]
	movs r1, #0x25
	movs r2, #1
	bl FUN_02007DEC
	ldr r0, [r5]
	movs r1, #5
	ldr r0, [r0, r4]
	movs r2, #0
	bl FUN_02074470
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x70
	ldr r0, [r0, r4]
	movs r2, #0
	bl FUN_02074470
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_022384F0
	cmp r0, #1
	bne _022415DA
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	movs r2, #1
	ldr r0, [r1, r0]
	movs r1, #0x23
	bl FUN_02007DEC
_022415DA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022415E0: .4byte 0xFFFFFE00
	thumb_func_end ov17_02241524

	thumb_func_start ov17_022415E4
ov17_022415E4: @ 0x022415E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x1c]
	adds r7, r0, #0
	adds r0, r6, #0
	str r0, [sp, #0x14]
	adds r0, #0x58
	ldr r4, [sp, #0x1c]
	str r6, [sp, #0x18]
	str r0, [sp, #0x14]
	adds r5, r6, #0
_022415FE:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0224160A
	bl FUN_02022974
_0224160A:
	movs r1, #0x32
	movs r0, #0x15
	lsls r1, r1, #6
	bl FUN_02018144
	ldr r1, [sp, #0x18]
	movs r3, #0
	str r0, [r1, #0x58]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	movs r0, #0x15
	str r0, [sp, #4]
	movs r0, #0xd8
	subs r0, r0, r7
	str r0, [sp, #8]
	movs r0, #0x70
	subs r0, r0, r7
	str r0, [sp, #0xc]
	ldr r0, _022416E0 @ =0xFFFFFE00
	str r0, [sp, #0x10]
	ldr r2, [r6]
	ldr r0, [r6, #4]
	ldr r2, [r2, r4]
	bl FUN_02095484
	str r0, [r5, #8]
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	ldr r0, [r5, #8]
	movs r1, #0x25
	movs r2, #1
	bl FUN_02007DEC
	ldr r0, [r6]
	movs r1, #5
	ldr r0, [r0, r4]
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x20]
	ldr r0, [r6]
	movs r1, #0x70
	ldr r0, [r0, r4]
	movs r2, #0
	bl FUN_02074470
	adds r1, r0, #0
	ldr r0, [sp, #0x20]
	bl FUN_022384F0
	cmp r0, #1
	bne _02241682
	ldr r0, [r5, #8]
	movs r1, #0x23
	movs r2, #1
	bl FUN_02007DEC
_02241682:
	ldr r0, [sp, #0x18]
	adds r7, #0x20
	adds r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r4, r4, #4
	adds r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	blt _022415FE
	adds r0, r6, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _022416AC
	bl FUN_02022974
_022416AC:
	movs r1, #0x32
	movs r0, #0x15
	lsls r1, r1, #6
	bl FUN_02018144
	adds r1, r6, #0
	adds r1, #0x98
	str r0, [r1]
	adds r0, r6, #0
	movs r2, #0x32
	ldr r1, [r6, #0x60]
	adds r0, #0xa0
	str r1, [r0]
	adds r0, r6, #0
	ldr r1, [r6, #0x5c]
	adds r0, #0x9c
	str r1, [r0]
	adds r6, #0x98
	ldr r1, [r6]
	movs r0, #0
	lsls r2, r2, #6
	blx FUN_020C4B4C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022416E0: .4byte 0xFFFFFE00
	thumb_func_end ov17_022415E4

	thumb_func_start ov17_022416E4
ov17_022416E4: @ 0x022416E4
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #0
	str r0, [sp]
	adds r4, r0, #0
	adds r5, r0, #0
	adds r7, r6, #0
_022416F0:
	ldr r0, [r4, #8]
	bl FUN_02007DC8
	ldr r0, [r5, #0x58]
	bl FUN_020181C4
	str r7, [r5, #0x58]
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x10
	cmp r6, #4
	blt _022416F0
	ldr r0, [sp]
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_020181C4
	ldr r0, [sp]
	movs r1, #0
	adds r0, #0x98
	str r0, [sp]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_022416E4

	thumb_func_start ov17_02241720
ov17_02241720: @ 0x02241720
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r5, [sp, #0x70]
	adds r6, r1, #0
	str r0, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r4, [sp, #0x74]
	cmp r5, #0
	beq _02241738
	cmp r5, #1
	beq _02241746
	b _02241754
_02241738:
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #0x1e
	movs r3, #0x1f
	movs r7, #1
	str r0, [sp, #0x20]
	b _02241760
_02241746:
	movs r0, #0x26
	str r0, [sp, #0x24]
	movs r0, #0x24
	movs r3, #0x25
	movs r7, #3
	str r0, [sp, #0x20]
	b _02241760
_02241754:
	movs r0, #0x23
	str r0, [sp, #0x24]
	movs r0, #0x21
	movs r3, #0x22
	movs r7, #2
	str r0, [sp, #0x20]
_02241760:
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02241808 @ =0x000080E9
	ldr r1, [sp, #0x1c]
	adds r0, r5, r0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r4, #0
	bl FUN_0200CC3C
	str r4, [sp]
	str r7, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0224180C @ =0x000080EA
	ldr r3, [sp, #0x1c]
	adds r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	movs r1, #2
	adds r2, r6, #0
	bl FUN_0200CDC4
	movs r0, #1
	str r0, [sp]
	ldr r0, _02241808 @ =0x000080E9
	ldr r1, [sp, #0x1c]
	adds r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x24]
	adds r0, r6, #0
	adds r2, r4, #0
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _02241808 @ =0x000080E9
	ldr r1, [sp, #0x1c]
	adds r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r0, r6, #0
	adds r2, r4, #0
	bl FUN_0200CE54
	ldr r4, _02241810 @ =0x022538BC
	add r3, sp, #0x28
	movs r2, #6
_022417C8:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _022417C8
	ldr r0, [r4]
	add r2, sp, #0x28
	str r0, [r3]
	ldr r0, _02241808 @ =0x000080E9
	adds r1, r5, r0
	adds r0, r0, #1
	adds r0, r5, r0
	str r0, [sp, #0x40]
	str r1, [sp, #0x3c]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	lsls r1, r5, #5
	adds r1, #0x60
	add r0, sp, #0x28
	strh r1, [r0]
	movs r1, #0x28
	strh r1, [r0, #2]
	ldr r1, [sp, #0x1c]
	adds r0, r6, #0
	bl FUN_0200CE6C
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200D324
	adds r0, r4, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02241808: .4byte 0x000080E9
_0224180C: .4byte 0x000080EA
_02241810: .4byte 0x022538BC
	thumb_func_end ov17_02241720

	thumb_func_start ov17_02241814
ov17_02241814: @ 0x02241814
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl FUN_0200D0F4
	ldr r1, _0224184C @ =0x000080E9
	adds r0, r5, #0
	adds r1, r4, r1
	bl FUN_0200D070
	ldr r1, _02241850 @ =0x000080EA
	adds r0, r5, #0
	adds r1, r4, r1
	bl FUN_0200D080
	ldr r1, _0224184C @ =0x000080E9
	adds r0, r5, #0
	adds r1, r4, r1
	bl FUN_0200D090
	ldr r1, _0224184C @ =0x000080E9
	adds r0, r5, #0
	adds r1, r4, r1
	bl FUN_0200D0A0
	pop {r3, r4, r5, pc}
	nop
_0224184C: .4byte 0x000080E9
_02241850: .4byte 0x000080EA
	thumb_func_end ov17_02241814

	thumb_func_start ov17_02241854
ov17_02241854: @ 0x02241854
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022418A0 @ =0x000080EC
	adds r6, r3, #0
	adds r4, r2, #0
	adds r5, r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #0x27
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _022418A0 @ =0x000080EC
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x28
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _022418A0 @ =0x000080EC
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x29
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022418A0: .4byte 0x000080EC
	thumb_func_end ov17_02241854

	thumb_func_start ov17_022418A4
ov17_022418A4: @ 0x022418A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r4, _022418F8 @ =0x022536F0
	adds r6, r2, #0
	adds r3, r0, #0
	adds r7, r1, #0
	ldm r4!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r4]
	ldr r5, _022418FC @ =0x02253820
	str r0, [r2]
	add r4, sp, #0xc
	movs r2, #6
_022418C0:
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	subs r2, r2, #1
	bne _022418C0
	ldr r0, [r5]
	lsls r1, r6, #5
	str r0, [r4]
	adds r1, #0x60
	add r0, sp, #0
	strh r1, [r0, #0xc]
	movs r1, #0x20
	strh r1, [r0, #0xe]
	lsls r1, r6, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	adds r1, r7, #0
	str r0, [sp, #0x18]
	adds r0, r3, #0
	add r2, sp, #0xc
	bl FUN_0200CE6C
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200D324
	adds r0, r4, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022418F8: .4byte 0x022536F0
_022418FC: .4byte 0x02253820
	thumb_func_end ov17_022418A4

	thumb_func_start ov17_02241900
ov17_02241900: @ 0x02241900
	ldr r3, _02241904 @ =FUN_0200D0F4
	bx r3
	.align 2, 0
_02241904: .4byte FUN_0200D0F4
	thumb_func_end ov17_02241900

	thumb_func_start ov17_02241908
ov17_02241908: @ 0x02241908
	push {r4, lr}
	ldr r1, _02241924 @ =0x000080EC
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _02241924 @ =0x000080EC
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _02241924 @ =0x000080EC
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_02241924: .4byte 0x000080EC
	thumb_func_end ov17_02241908

	thumb_func_start ov17_02241928
ov17_02241928: @ 0x02241928
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	str r2, [sp, #8]
	adds r6, r1, #0
	ldr r0, [r7, #0x50]
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x1c]
	ldr r3, [sp, #8]
	bl ov17_02241854
	movs r4, #0
	adds r5, r7, #0
	adds r6, #0xd0
_02241944:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	adds r2, r4, #0
	bl ov17_022418A4
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	ldr r0, [sp, #8]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [r7, #0x50]
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x1c]
	adds r3, r6, #0
	bl ov17_02241720
	adds r1, r5, #0
	adds r1, #0xa8
	adds r4, r4, #1
	str r0, [r1]
	adds r5, r5, #4
	adds r6, #8
	cmp r4, #3
	blt _02241944
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02241928

	thumb_func_start ov17_0224197C
ov17_0224197C: @ 0x0224197C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_02241984:
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r0, [r6, #0x1c]
	ldr r1, [r1]
	adds r2, r4, #0
	bl ov17_02241814
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl ov17_02241900
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _02241984
	ldr r0, [r6, #0x1c]
	bl ov17_02241908
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224197C

	thumb_func_start ov17_022419AC
ov17_022419AC: @ 0x022419AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022419F8 @ =0x000080F5
	adds r6, r3, #0
	adds r4, r2, #0
	adds r5, r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #0xe
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _022419FC @ =0x000080F3
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0xd
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _022419FC @ =0x000080F3
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0xc
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022419F8: .4byte 0x000080F5
_022419FC: .4byte 0x000080F3
	thumb_func_end ov17_022419AC

	thumb_func_start ov17_02241A00
ov17_02241A00: @ 0x02241A00
	push {r4, lr}
	ldr r1, _02241A1C @ =0x000080F5
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _02241A20 @ =0x000080F3
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _02241A20 @ =0x000080F3
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_02241A1C: .4byte 0x000080F5
_02241A20: .4byte 0x000080F3
	thumb_func_end ov17_02241A00

	thumb_func_start ov17_02241A24
ov17_02241A24: @ 0x02241A24
	push {r4, r5, lr}
	sub sp, #0x34
	ldr r4, _02241A60 @ =0x022537B8
	adds r5, r0, #0
	add r3, sp, #0
	movs r2, #6
_02241A30:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02241A30
	ldr r0, [r4]
	add r2, sp, #0
	str r0, [r3]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	bl FUN_0200CE6C
	adds r4, r0, #0
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r4]
	bl FUN_0200D324
	movs r0, #0x5f
	lsls r0, r0, #2
	str r4, [r5, r0]
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02241A60: .4byte 0x022537B8
	thumb_func_end ov17_02241A24

	thumb_func_start ov17_02241A64
ov17_02241A64: @ 0x02241A64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02241A76
	bl FUN_02022974
_02241A76:
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	movs r0, #0x5f
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_02241A64

	thumb_func_start ov17_02241A8C
ov17_02241A8C: @ 0x02241A8C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	bne _02241AA2
	bl FUN_02022974
_02241AA2:
	ldr r1, _02241B08 @ =0x022536E4
	lsls r2, r6, #2
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r3, _02241B0C @ =0x022536E6
	ldrsh r1, [r1, r2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	bl FUN_0200D4C4
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r5, #0
	bl FUN_0200D364
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D3F4
	cmp r5, #3
	bhi _02241B04
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02241ADE: @ jump table
	.2byte _02241AE6 - _02241ADE - 2 @ case 0
	.2byte _02241AEE - _02241ADE - 2 @ case 1
	.2byte _02241AF6 - _02241ADE - 2 @ case 2
	.2byte _02241AFE - _02241ADE - 2 @ case 3
_02241AE6:
	ldr r0, _02241B10 @ =0x000006E1
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_02241AEE:
	ldr r0, _02241B14 @ =0x000006DF
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_02241AF6:
	ldr r0, _02241B18 @ =0x000005DD
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_02241AFE:
	ldr r0, _02241B18 @ =0x000005DD
	bl FUN_02005748
_02241B04:
	pop {r4, r5, r6, pc}
	nop
_02241B08: .4byte 0x022536E4
_02241B0C: .4byte 0x022536E6
_02241B10: .4byte 0x000006E1
_02241B14: .4byte 0x000006DF
_02241B18: .4byte 0x000005DD
	thumb_func_end ov17_02241A8C

	thumb_func_start ov17_02241B1C
ov17_02241B1C: @ 0x02241B1C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02241B2E
	bl FUN_02022974
_02241B2E:
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D3F4
	pop {r4, pc}
	thumb_func_end ov17_02241B1C

	thumb_func_start ov17_02241B3C
ov17_02241B3C: @ 0x02241B3C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r1, [sp]
	movs r0, #0x15
	movs r1, #0x28
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x28
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r0, #0
	strb r0, [r7]
	str r7, [r4, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	ldr r0, [sp]
	str r5, [r4]
	strb r0, [r4, #8]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r1, #0xc
	adds r2, #0xe
	bl FUN_0200D550
	cmp r6, #6
	bhi _02241B96
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02241B88: @ jump table
	.2byte _02241B96 - _02241B88 - 2 @ case 0
	.2byte _02241BAC - _02241B88 - 2 @ case 1
	.2byte _02241BB8 - _02241B88 - 2 @ case 2
	.2byte _02241BC8 - _02241B88 - 2 @ case 3
	.2byte _02241BD8 - _02241B88 - 2 @ case 4
	.2byte _02241BE8 - _02241B88 - 2 @ case 5
	.2byte _02241BF8 - _02241B88 - 2 @ case 6
_02241B96:
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r0, _02241C0C @ =0xFFFFFE00
	ldr r2, _02241C10 @ =0x00009C40
	strh r0, [r4, #0x24]
	strh r0, [r4, #0x26]
	ldr r0, _02241C14 @ =ov17_02241CF0
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BAC:
	ldr r0, _02241C18 @ =ov17_02241C2C
	ldr r2, _02241C10 @ =0x00009C40
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BB8:
	ldr r0, _02241C1C @ =0xFFFFFD00
	ldr r2, _02241C10 @ =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 @ =ov17_02241CF0
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BC8:
	ldr r0, _02241C20 @ =0xFFFFFC00
	ldr r2, _02241C10 @ =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 @ =ov17_02241CF0
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BD8:
	ldr r0, _02241C24 @ =0xFFFFFB80
	ldr r2, _02241C10 @ =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 @ =ov17_02241CF0
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BE8:
	ldr r0, _02241C28 @ =0xFFFFFD80
	ldr r2, _02241C10 @ =0x00009C40
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 @ =ov17_02241CF0
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02241BF8:
	movs r0, #0xff
	mvns r0, r0
	strh r0, [r4, #0x24]
	ldr r0, _02241C14 @ =ov17_02241CF0
	ldr r2, _02241C10 @ =0x00009C40
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241C0C: .4byte 0xFFFFFE00
_02241C10: .4byte 0x00009C40
_02241C14: .4byte ov17_02241CF0
_02241C18: .4byte ov17_02241C2C
_02241C1C: .4byte 0xFFFFFD00
_02241C20: .4byte 0xFFFFFC00
_02241C24: .4byte 0xFFFFFB80
_02241C28: .4byte 0xFFFFFD80
	thumb_func_end ov17_02241B3C

	thumb_func_start ov17_02241C2C
ov17_02241C2C: @ 0x02241C2C
	push {r4, lr}
	adds r2, r1, #0
	adds r4, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _02241C42
	cmp r0, #1
	beq _02241C58
	cmp r0, #2
	beq _02241C98
	b _02241CB2
_02241C42:
	movs r0, #0xc
	ldrsh r0, [r2, r0]
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	movs r0, #0xe
	ldrsh r0, [r2, r0]
	lsls r0, r0, #8
	str r0, [r2, #0x14]
	ldrb r0, [r2, #0xa]
	adds r0, r0, #1
	strb r0, [r2, #0xa]
_02241C58:
	ldrb r0, [r2, #0x18]
	movs r1, #1
	tst r0, r1
	beq _02241C6C
	movs r0, #0xc
	ldrsh r0, [r2, r0]
	lsls r3, r0, #8
	lsls r0, r1, #9
	adds r0, r3, r0
	b _02241C76
_02241C6C:
	movs r0, #0xc
	ldrsh r0, [r2, r0]
	lsls r3, r0, #8
	lsls r0, r1, #9
	subs r0, r3, r0
_02241C76:
	str r0, [r2, #0x10]
	ldrb r0, [r2, #0x18]
	adds r0, r0, #1
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0x18]
	cmp r0, #4
	bls _02241CC6
	movs r0, #0xc
	ldrsh r0, [r2, r0]
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	movs r0, #0
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0xa]
	adds r0, r0, #1
	strb r0, [r2, #0xa]
	b _02241CC6
_02241C98:
	movs r0, #9
	ldrsb r1, [r2, r0]
	adds r1, r1, #1
	strb r1, [r2, #9]
	ldrsb r0, [r2, r0]
	cmp r0, #0xf
	ble _02241CC6
	movs r0, #0
	strb r0, [r2, #9]
	ldrb r0, [r2, #0xa]
	adds r0, r0, #1
	strb r0, [r2, #0xa]
	b _02241CC6
_02241CB2:
	ldr r0, [r2, #4]
	movs r1, #1
	strb r1, [r0]
	adds r0, r2, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
	pop {r4, pc}
_02241CC6:
	ldrb r0, [r2, #8]
	ldr r1, [r2]
	ldr r3, [r2, #0x10]
	lsls r0, r0, #2
	adds r0, r1, r0
	asrs r1, r3, #7
	lsrs r1, r1, #0x18
	adds r1, r3, r1
	ldr r3, [r2, #0x14]
	adds r0, #0xb4
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	lsls r1, r1, #8
	lsls r2, r2, #8
	ldr r0, [r0]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	pop {r4, pc}
	thumb_func_end ov17_02241C2C

	thumb_func_start ov17_02241CF0
ov17_02241CF0: @ 0x02241CF0
	push {r4, lr}
	adds r2, r1, #0
	adds r4, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _02241D02
	cmp r0, #1
	beq _02241D18
	b _02241D80
_02241D02:
	movs r0, #0xc
	ldrsh r0, [r2, r0]
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	movs r0, #0xe
	ldrsh r0, [r2, r0]
	lsls r0, r0, #8
	str r0, [r2, #0x14]
	ldrb r0, [r2, #0xa]
	adds r0, r0, #1
	strb r0, [r2, #0xa]
_02241D18:
	movs r0, #0x24
	ldrsh r1, [r2, r0]
	ldr r3, [r2, #0x14]
	adds r1, r3, r1
	str r1, [r2, #0x14]
	ldrsh r0, [r2, r0]
	adds r0, #0x80
	strh r0, [r2, #0x24]
	movs r0, #0xe
	ldrsh r0, [r2, r0]
	lsls r1, r0, #8
	ldr r0, [r2, #0x14]
	cmp r0, r1
	blt _02241D56
	str r1, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _02241D50
	movs r0, #0x26
	ldrsh r0, [r2, r0]
	strh r0, [r2, #0x24]
	ldrb r0, [r2, #0x18]
	subs r0, r0, #1
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0xa]
	subs r0, r0, #1
	strb r0, [r2, #0xa]
	b _02241D56
_02241D50:
	ldrb r0, [r2, #0xa]
	adds r0, r0, #1
	strb r0, [r2, #0xa]
_02241D56:
	ldrb r0, [r2, #8]
	ldr r1, [r2]
	ldr r3, [r2, #0x10]
	lsls r0, r0, #2
	adds r0, r1, r0
	asrs r1, r3, #7
	lsrs r1, r1, #0x18
	adds r1, r3, r1
	ldr r3, [r2, #0x14]
	adds r0, #0xb4
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	lsls r1, r1, #8
	lsls r2, r2, #8
	ldr r0, [r0]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	pop {r4, pc}
_02241D80:
	ldr r0, [r2, #4]
	movs r1, #1
	strb r1, [r0]
	adds r0, r2, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
	pop {r4, pc}
	thumb_func_end ov17_02241CF0

	thumb_func_start ov17_02241D94
ov17_02241D94: @ 0x02241D94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0xc0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r0, #0
	beq _02241DAA
	bl FUN_02022974
_02241DAA:
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02241E1C @ =0x000080ED
	adds r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	movs r3, #0x14
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _02241E1C @ =0x000080ED
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	movs r3, #0x13
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _02241E1C @ =0x000080ED
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	movs r3, #0x12
	bl FUN_0200CE54
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, _02241E20 @ =0x02253854
	bl FUN_0200CE6C
	adds r1, r5, #0
	adds r1, #0xc0
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc0
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0200D324
	lsls r1, r6, #5
	adds r5, #0xc0
	adds r1, #0x60
	lsls r1, r1, #0x10
	ldr r0, [r5]
	asrs r1, r1, #0x10
	movs r2, #0x38
	bl FUN_0200D4C4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02241E1C: .4byte 0x000080ED
_02241E20: .4byte 0x02253854
	thumb_func_end ov17_02241D94

	thumb_func_start ov17_02241E24
ov17_02241E24: @ 0x02241E24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _02241E54 @ =0x000080ED
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _02241E54 @ =0x000080ED
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _02241E54 @ =0x000080ED
	bl FUN_0200D0A0
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	bl FUN_0200D0F4
	movs r0, #0
	adds r4, #0xc0
	str r0, [r4]
	pop {r4, pc}
	nop
_02241E54: .4byte 0x000080ED
	thumb_func_end ov17_02241E24

	thumb_func_start ov17_02241E58
ov17_02241E58: @ 0x02241E58
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _02241EA0 @ =0x000080EE
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x11
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _02241EA0 @ =0x000080EE
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x10
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _02241EA0 @ =0x000080EE
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0xf
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02241EA0: .4byte 0x000080EE
	thumb_func_end ov17_02241E58

	thumb_func_start ov17_02241EA4
ov17_02241EA4: @ 0x02241EA4
	push {r4, lr}
	ldr r1, _02241EC0 @ =0x000080EE
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _02241EC0 @ =0x000080EE
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _02241EC0 @ =0x000080EE
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_02241EC0: .4byte 0x000080EE
	thumb_func_end ov17_02241EA4

	thumb_func_start ov17_02241EC4
ov17_02241EC4: @ 0x02241EC4
	push {r4, r5, r6, lr}
	movs r2, #0x18
	movs r4, #0
	muls r2, r1, r2
	adds r5, r0, r2
	adds r6, r4, #0
_02241ED0:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _02241EE4
	bl FUN_0200D0F4
	adds r0, r5, #0
	adds r0, #0xc4
	str r6, [r0]
_02241EE4:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _02241ED0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_02241EC4

	thumb_func_start ov17_02241EF0
ov17_02241EF0: @ 0x02241EF0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02241EF6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_02241EC4
	adds r4, r4, #1
	cmp r4, #4
	blt _02241EF6
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_02241EF0

	thumb_func_start ov17_02241F08
ov17_02241F08: @ 0x02241F08
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	ldr r2, _02241F30 @ =0x02253888
	adds r4, r3, #0
	bl FUN_0200CE6C
	adds r6, r0, #0
	ldr r0, [r6]
	bl FUN_0200D324
	lsls r1, r5, #0x10
	lsls r2, r4, #0x10
	adds r0, r6, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02241F30: .4byte 0x02253888
	thumb_func_end ov17_02241F08

	thumb_func_start ov17_02241F34
ov17_02241F34: @ 0x02241F34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	adds r7, r1, #0
	adds r0, r3, #0
	movs r1, #0xa
	str r2, [sp, #4]
	blx FUN_020E1F6C
	str r0, [sp, #8]
	cmp r0, #0x18
	ble _02241F50
	movs r0, #0x18
	str r0, [sp, #8]
_02241F50:
	movs r0, #0x18
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, [sp]
	ldr r4, [sp, #8]
	movs r6, #0
	adds r5, r0, r1
	b _02241F7A
_02241F60:
	lsls r0, r4, #2
	adds r0, r5, r0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _02241F78
	bl FUN_0200D0F4
	lsls r0, r4, #2
	adds r0, r5, r0
	adds r0, #0xc4
	str r6, [r0]
_02241F78:
	adds r4, r4, #1
_02241F7A:
	cmp r4, #6
	blt _02241F60
	ldr r0, [sp, #8]
	adds r1, r7, #0
	subs r4, r0, #1
	movs r0, #0x18
	muls r1, r0, r1
	ldr r0, [sp]
	adds r7, r0, r1
	ldr r0, [sp, #4]
	ldr r1, _0224203C @ =0x0225370C
	lsls r0, r0, #2
	str r0, [sp, #0xc]
	adds r0, r1, r0
	str r0, [sp, #0x10]
	b _0224201C
_02241F9A:
	adds r0, r4, #0
	movs r1, #6
	blx FUN_020E1F6C
	adds r5, r1, #0
	adds r0, r4, #0
	movs r1, #6
	blx FUN_020E1F6C
	str r0, [sp, #0x14]
	lsls r0, r5, #2
	adds r0, r7, r0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	bne _02241FF8
	ldr r3, _0224203C @ =0x0225370C
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldrsh r3, [r3, r2]
	lsls r2, r5, #3
	ldr r1, [sp]
	adds r2, r3, r2
	ldr r6, [sp, #0x10]
	movs r3, #2
	ldrsh r3, [r6, r3]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	bl ov17_02241F08
	lsls r2, r5, #2
	adds r1, r7, r2
	adds r1, #0xc4
	str r0, [r1]
	adds r0, r7, r2
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	bl FUN_0200D364
	lsls r0, r5, #2
	adds r0, r7, r0
	adds r0, #0xc4
	ldr r0, [r0]
	bl ov17_02242048
	b _0224201A
_02241FF8:
	bl FUN_0200D37C
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bhs _0224201A
	lsls r0, r5, #2
	adds r0, r7, r0
	adds r0, #0xc4
	ldr r0, [r0]
	bl FUN_0200D364
	lsls r0, r5, #2
	adds r0, r7, r0
	adds r0, #0xc4
	ldr r0, [r0]
	bl ov17_02242048
_0224201A:
	subs r4, r4, #1
_0224201C:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bgt _02241F9A
	ldr r0, _02242040 @ =0x000006E1
	bl FUN_02005748
	ldr r2, [sp, #8]
	ldr r0, _02242040 @ =0x000006E1
	subs r2, r2, #1
	ldr r1, _02242044 @ =0x0000FFFF
	lsls r2, r2, #6
	bl FUN_02004F7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224203C: .4byte 0x0225370C
_02242040: .4byte 0x000006E1
_02242044: .4byte 0x0000FFFF
	thumb_func_end ov17_02241F34

	thumb_func_start ov17_02242048
ov17_02242048: @ 0x02242048
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x15
	movs r1, #0x10
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x10
	adds r4, r0, #0
	blx FUN_020C4CF4
	adds r0, r5, #0
	movs r1, #0
	str r5, [r4]
	bl FUN_0200D3F4
	ldr r0, _02242074 @ =ov17_0224207C
	ldr r2, _02242078 @ =0x00009C40
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, pc}
	.align 2, 0
_02242074: .4byte ov17_0224207C
_02242078: .4byte 0x00009C40
	thumb_func_end ov17_02242048

	thumb_func_start ov17_0224207C
ov17_0224207C: @ 0x0224207C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _02242092
	cmp r0, #1
	beq _022420AE
	cmp r0, #2
	beq _022420E8
	b _02242136
_02242092:
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0200D6A4
	ldr r0, _0224214C @ =0x3DCCCCCD
	movs r1, #1
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4]
	bl FUN_0200D3F4
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_022420AE:
	ldr r0, [r4, #4]
	ldr r1, _02242150 @ =0x3E99999A
	blx FUN_020E0B00
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _02242150 @ =0x3E99999A
	blx FUN_020E0B00
	str r0, [r4, #8]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl FUN_0200D6E8
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D7C0
	movs r1, #0xff
	ldr r0, [r4, #4]
	lsls r1, r1, #0x16
	blx FUN_020E10AC
	blo _0224214A
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022420E8:
	ldr r0, [r4, #4]
	ldr r1, _02242150 @ =0x3E99999A
	blx FUN_020E1A9C
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _02242150 @ =0x3E99999A
	blx FUN_020E1A9C
	str r0, [r4, #8]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl FUN_0200D6E8
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D7C0
	movs r1, #0xfe
	ldr r0, [r4, #4]
	lsls r1, r1, #0x16
	blx FUN_020E1164
	bhi _0224214A
	movs r1, #0xfe
	lsls r1, r1, #0x16
	ldr r0, [r4]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D79C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242136:
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D6A4
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_0224214A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224214C: .4byte 0x3DCCCCCD
_02242150: .4byte 0x3E99999A
	thumb_func_end ov17_0224207C

	thumb_func_start ov17_02242154
ov17_02242154: @ 0x02242154
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _022421D8 @ =0x000080F0
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x1a
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _022421D8 @ =0x000080F0
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x19
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _022421D8 @ =0x000080F0
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x18
	bl FUN_0200CE54
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022421DC @ =0x000080EF
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x1d
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _022421DC @ =0x000080EF
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x1c
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _022421DC @ =0x000080EF
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x1b
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022421D8: .4byte 0x000080F0
_022421DC: .4byte 0x000080EF
	thumb_func_end ov17_02242154

	thumb_func_start ov17_022421E0
ov17_022421E0: @ 0x022421E0
	push {r4, lr}
	ldr r1, _02242214 @ =0x000080F0
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _02242214 @ =0x000080F0
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _02242214 @ =0x000080F0
	adds r0, r4, #0
	bl FUN_0200D0A0
	ldr r1, _02242218 @ =0x000080EF
	adds r0, r4, #0
	bl FUN_0200D070
	ldr r1, _02242218 @ =0x000080EF
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _02242218 @ =0x000080EF
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_02242214: .4byte 0x000080F0
_02242218: .4byte 0x000080EF
	thumb_func_end ov17_022421E0

	thumb_func_start ov17_0224221C
ov17_0224221C: @ 0x0224221C
	push {r3, r4, r5, r6, r7, lr}
	movs r2, #0x14
	movs r4, #0
	muls r2, r1, r2
	movs r7, #0x49
	adds r5, r0, r2
	adds r6, r4, #0
	lsls r7, r7, #2
_0224222C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224223C
	bl FUN_0200D0F4
	movs r0, #0x49
	lsls r0, r0, #2
	str r6, [r5, r0]
_0224223C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _0224222C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0224221C

	thumb_func_start ov17_02242248
ov17_02242248: @ 0x02242248
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0224224E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_0224221C
	adds r4, r4, #1
	cmp r4, #3
	blt _0224224E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_02242248

	thumb_func_start ov17_02242260
ov17_02242260: @ 0x02242260
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	ldr r2, _02242288 @ =0x022537EC
	adds r4, r3, #0
	bl FUN_0200CE6C
	adds r6, r0, #0
	ldr r0, [r6]
	bl FUN_0200D324
	lsls r1, r5, #0x10
	lsls r2, r4, #0x10
	adds r0, r6, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02242288: .4byte 0x022537EC
	thumb_func_end ov17_02242260

	thumb_func_start ov17_0224228C
ov17_0224228C: @ 0x0224228C
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	ldr r2, _022422B4 @ =0x0225371C
	adds r4, r3, #0
	bl FUN_0200CE6C
	adds r6, r0, #0
	ldr r0, [r6]
	bl FUN_0200D324
	lsls r1, r5, #0x10
	lsls r2, r4, #0x10
	adds r0, r6, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_022422B4: .4byte 0x0225371C
	thumb_func_end ov17_0224228C

	thumb_func_start ov17_022422B8
ov17_022422B8: @ 0x022422B8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #5
	bls _022422CA
	b _02242458
_022422CA:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022422D6: @ jump table
	.2byte _022422E2 - _022422D6 - 2 @ case 0
	.2byte _02242328 - _022422D6 - 2 @ case 1
	.2byte _02242368 - _022422D6 - 2 @ case 2
	.2byte _02242398 - _022422D6 - 2 @ case 3
	.2byte _022423D6 - _022422D6 - 2 @ case 4
	.2byte _02242428 - _022422D6 - 2 @ case 5
_022422E2:
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0200D6A4
	movs r0, #2
	ldr r1, [r4, #0x10]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r4, #0x20]
	movs r0, #0x12
	ldr r1, [r4, #0x14]
	lsls r0, r0, #0xa
	adds r0, r1, r0
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x10]
	subs r0, r1, r0
	movs r1, #0xa
	blx FUN_020E1F6C
	strh r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x14]
	subs r0, r1, r0
	movs r1, #0xa
	blx FUN_020E1F6C
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x2e
	strb r1, [r0]
_02242328:
	movs r1, #0x28
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x10]
	adds r0, r2, r0
	str r0, [r4, #0x10]
	movs r0, #0x2a
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x14]
	adds r0, r2, r0
	str r0, [r4, #0x14]
	ldrsh r2, [r4, r1]
	cmp r2, #0
	ble _0224234A
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bge _02242358
_0224234A:
	cmp r2, #0
	bge _02242356
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	ble _02242358
_02242356:
	b _0224247C
_02242358:
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242368:
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x2f
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #3
	bls _0224247C
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x2f
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242398:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #8
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x10]
	subs r0, r1, r0
	movs r1, #6
	blx FUN_020E1F6C
	strh r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x14]
	subs r0, r1, r0
	movs r1, #6
	blx FUN_020E1F6C
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x2e
	strb r1, [r0]
_022423D6:
	movs r1, #0x28
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x10]
	adds r0, r2, r0
	str r0, [r4, #0x10]
	movs r0, #0x2a
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x14]
	adds r0, r2, r0
	str r0, [r4, #0x14]
	ldrsh r2, [r4, r1]
	cmp r2, #0
	ble _022423F8
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bge _02242404
_022423F8:
	cmp r2, #0
	bge _0224247C
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bgt _0224247C
_02242404:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242428:
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x2f
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #2
	bls _0224247C
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x2f
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x2e
	strb r1, [r0]
	b _0224247C
_02242458:
	ldr r0, [r4, #4]
	bl FUN_0200D0F4
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #0x6e
	lsls r0, r0, #4
	bl FUN_02005748
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
_0224247C:
	movs r1, #2
	ldr r0, [r4, #4]
	lsls r1, r1, #0xc
	bl FUN_0200D7C0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	asrs r1, r2, #7
	lsrs r1, r1, #0x18
	adds r1, r2, r1
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	lsls r1, r1, #8
	lsls r2, r2, #8
	ldr r0, [r4, #4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_022422B8

	thumb_func_start ov17_022424A8
ov17_022424A8: @ 0x022424A8
	push {r4, r5, r6, lr}
	movs r2, #0x14
	muls r2, r1, r2
	movs r6, #0x49
	movs r4, #0
	adds r5, r0, r2
	lsls r6, r6, #2
_022424B6:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _022424C8
	bl FUN_0200D408
	cmp r0, #0
	bne _022424C8
	movs r0, #0
	pop {r4, r5, r6, pc}
_022424C8:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _022424B6
	movs r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_022424A8

	thumb_func_start ov17_022424D4
ov17_022424D4: @ 0x022424D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r2, #0
	str r0, [sp, #0x1c]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0xa
	blx FUN_020E1F6C
	str r0, [sp, #4]
	cmp r0, #5
	ble _022424F0
	bl FUN_02022974
_022424F0:
	ldr r0, [sp]
	movs r1, #0x14
	lsls r7, r0, #2
	ldr r0, _0224261C @ =0x022536D8
	movs r5, #0
	adds r0, r0, r7
	str r0, [sp, #0xc]
	ldr r0, [sp]
	muls r1, r0, r1
	ldr r0, [sp, #0x1c]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, _02242620 @ =0x022536E4
	adds r0, r0, r7
	str r0, [sp, #0x10]
	ldr r0, [sp]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	b _022425E4
_0224251E:
	ldr r0, [sp, #8]
	lsls r2, r5, #2
	adds r1, r0, r2
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022425E2
	ldr r3, _0224261C @ =0x022536D8
	ldr r0, [sp, #0x1c]
	ldrsh r3, [r3, r7]
	adds r2, r5, r2
	ldr r4, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	adds r2, r3, r2
	movs r3, #2
	ldrsh r3, [r4, r3]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	bl ov17_02242260
	ldr r1, [sp, #8]
	lsls r2, r5, #2
	adds r2, r1, r2
	movs r1, #0x49
	lsls r1, r1, #2
	str r0, [r2, r1]
	adds r0, r1, #0
	ldr r0, [r2, r0]
	movs r1, #0
	bl FUN_0200D3F4
	movs r0, #0x15
	movs r1, #0x34
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x34
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp, #0x1c]
	lsls r1, r5, #2
	str r0, [r4]
	ldr r0, [sp, #8]
	ldr r2, _02242620 @ =0x022536E4
	adds r1, r0, r1
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r6, [sp, #0x10]
	str r0, [r4, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	movs r3, #2
	ldrsh r2, [r2, r7]
	ldrsh r3, [r6, r3]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	bl ov17_0224228C
	str r0, [r4, #4]
	ldr r0, _02242620 @ =0x022536E4
	ldr r1, [sp, #0x10]
	ldrsh r0, [r0, r7]
	ldr r2, _02242624 @ =0x00009C40
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	movs r0, #2
	ldrsh r0, [r1, r0]
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, _0224261C @ =0x022536D8
	ldrsh r1, [r0, r7]
	lsls r0, r5, #2
	adds r0, r5, r0
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	ldr r1, [sp, #0xc]
	movs r0, #2
	ldrsh r1, [r1, r0]
	adds r0, r4, #0
	adds r0, #0x2d
	strb r1, [r0]
	adds r1, r4, #0
	ldr r0, [sp, #0x14]
	adds r1, #0x30
	strb r0, [r1]
	adds r1, r4, #0
	ldr r0, [sp, #0x18]
	adds r1, #0x31
	strb r0, [r1]
	ldr r0, _02242628 @ =ov17_022422B8
	adds r1, r4, #0
	bl FUN_0200D9E8
_022425E2:
	adds r5, r5, #1
_022425E4:
	ldr r0, [sp, #4]
	cmp r5, r0
	blt _0224251E
	ldr r0, [sp]
	movs r1, #0x14
	muls r1, r0, r1
	ldr r0, [sp, #0x1c]
	movs r7, #0x49
	lsls r7, r7, #2
	adds r4, r0, r1
	adds r6, r7, #0
	b _02242614
_022425FC:
	lsls r0, r5, #2
	adds r0, r4, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _02242612
	bl FUN_0200D0F4
	lsls r0, r5, #2
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1, r7]
_02242612:
	adds r5, r5, #1
_02242614:
	cmp r5, #5
	blt _022425FC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224261C: .4byte 0x022536D8
_02242620: .4byte 0x022536E4
_02242624: .4byte 0x00009C40
_02242628: .4byte ov17_022422B8
	thumb_func_end ov17_022424D4

	thumb_func_start ov17_0224262C
ov17_0224262C: @ 0x0224262C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r1, #0
	str r0, [sp]
	cmp r2, #1
	bne _0224263C
	movs r6, #1
	b _0224263E
_0224263C:
	movs r6, #0
_0224263E:
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	str r0, [sp, #8]
	str r0, [sp, #4]
_02242648:
	ldr r5, [sp]
	movs r4, #0
_0224264C:
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _02242668
	adds r1, r7, #0
	bl FUN_0200D810
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_0200D3F4
_02242668:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _0224264C
	movs r1, #0x5b
	ldr r0, [sp, #8]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02242690
	adds r1, r7, #0
	bl FUN_0200D810
	movs r1, #0x5b
	ldr r0, [sp, #8]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r1, r6, #0
	bl FUN_0200D3F4
_02242690:
	movs r1, #0x63
	ldr r0, [sp, #4]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r1, r7, #0
	bl FUN_02012AF0
	movs r1, #0x77
	ldr r0, [sp, #4]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r1, r7, #0
	bl FUN_02012AF0
	movs r1, #0x63
	ldr r0, [sp, #4]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r1, r6, #0
	bl FUN_020129D0
	movs r1, #0x77
	ldr r0, [sp, #4]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r1, r6, #0
	bl FUN_020129D0
	ldr r0, [sp]
	adds r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _02242648
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224262C

	thumb_func_start ov17_022426E8
ov17_022426E8: @ 0x022426E8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0
	strb r0, [r7]
	movs r0, #0x15
	movs r1, #0x10
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	str r5, [r4]
	movs r2, #0xfa
	strb r6, [r4, #0xd]
	ldr r0, _0224271C @ =ov17_02242720
	adds r1, r4, #0
	lsls r2, r2, #2
	str r7, [r4, #4]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224271C: .4byte ov17_02242720
	thumb_func_end ov17_022426E8

	thumb_func_start ov17_02242720
ov17_02242720: @ 0x02242720
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bls _0224272E
	b _02242864
_0224272E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224273A: @ jump table
	.2byte _02242742 - _0224273A - 2 @ case 0
	.2byte _0224279E - _0224273A - 2 @ case 1
	.2byte _022427D2 - _0224273A - 2 @ case 2
	.2byte _02242826 - _0224273A - 2 @ case 3
_02242742:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0224276A
	movs r0, #1
	lsls r0, r0, #0xc
	strh r0, [r4, #8]
	movs r1, #0
	strh r1, [r4, #0xa]
	ldr r0, _0224287C @ =0x04000050
	str r1, [sp]
	movs r2, #0xe
	movs r3, #0x10
	blx FUN_020BF55C
	movs r1, #1
	ldr r0, [r4]
	adds r2, r1, #0
	bl ov17_0224262C
	b _0224278C
_0224276A:
	movs r3, #0
	movs r0, #1
	strh r3, [r4, #8]
	lsls r0, r0, #0xc
	strh r0, [r4, #0xa]
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _0224287C @ =0x04000050
	movs r1, #4
	movs r2, #0xe
	blx FUN_020BF55C
	ldr r0, [r4]
	movs r1, #0
	movs r2, #1
	bl ov17_0223BB14
_0224278C:
	ldr r0, _02242880 @ =ov17_02242884
	adds r1, r4, #0
	movs r2, #0xa
	bl FUN_0200DA3C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224279E:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	bne _022427BE
	movs r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022427BE
	movs r1, #0
	ldr r0, [r4]
	adds r2, r1, #0
	bl ov17_0224262C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022427BE:
	cmp r1, #1
	bne _0224287A
	movs r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224287A
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022427D2:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _022427F2
	movs r0, #1
	lsls r0, r0, #0xc
	strh r0, [r4, #8]
	movs r0, #0
	strh r0, [r4, #0xa]
	str r0, [sp]
	ldr r0, _0224287C @ =0x04000050
	movs r1, #4
	movs r2, #0xe
	movs r3, #0x10
	blx FUN_020BF55C
	b _02242814
_022427F2:
	movs r1, #0
	movs r0, #1
	strh r1, [r4, #8]
	lsls r0, r0, #0xc
	strh r0, [r4, #0xa]
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _0224287C @ =0x04000050
	movs r2, #0xe
	adds r3, r1, #0
	blx FUN_020BF55C
	movs r1, #1
	ldr r0, [r4]
	adds r2, r1, #0
	bl ov17_0224262C
_02242814:
	ldr r0, _02242880 @ =ov17_02242884
	adds r1, r4, #0
	movs r2, #0xa
	bl FUN_0200DA3C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242826:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	bne _02242846
	movs r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02242846
	movs r1, #1
	ldr r0, [r4]
	adds r2, r1, #0
	bl ov17_0223BB14
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242846:
	cmp r1, #1
	bne _0224287A
	movs r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224287A
	ldr r0, [r4]
	movs r1, #0
	movs r2, #1
	bl ov17_0224262C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02242864:
	bl ov17_022413D8
	ldr r0, [r4, #4]
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_0224287A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224287C: .4byte 0x04000050
_02242880: .4byte ov17_02242884
	thumb_func_end ov17_02242720

	thumb_func_start ov17_02242884
ov17_02242884: @ 0x02242884
	push {r3, r4, r5, lr}
	ldrb r3, [r1, #0xd]
	movs r2, #0
	cmp r3, #0
	bne _022428BC
	movs r4, #8
	ldrsh r5, [r1, r4]
	lsls r3, r4, #8
	subs r3, r5, r3
	strh r3, [r1, #8]
	movs r3, #0xa
	ldrsh r5, [r1, r3]
	lsls r3, r4, #8
	adds r3, r5, r3
	strh r3, [r1, #0xa]
	ldrsh r3, [r1, r4]
	cmp r3, #0
	bgt _022428AC
	strh r2, [r1, #8]
	adds r2, r2, #1
_022428AC:
	movs r3, #0xa
	ldrsh r4, [r1, r3]
	movs r3, #1
	lsls r3, r3, #0xc
	cmp r4, r3
	blt _022428E8
	strh r3, [r1, #0xa]
	b _022428E8
_022428BC:
	movs r4, #8
	ldrsh r5, [r1, r4]
	lsls r3, r4, #8
	adds r3, r5, r3
	strh r3, [r1, #8]
	movs r3, #0xa
	ldrsh r5, [r1, r3]
	lsls r3, r4, #8
	subs r3, r5, r3
	strh r3, [r1, #0xa]
	ldrsh r5, [r1, r4]
	lsls r3, r4, #9
	cmp r5, r3
	blt _022428DC
	strh r3, [r1, #8]
	adds r2, r2, #1
_022428DC:
	movs r3, #0xa
	ldrsh r3, [r1, r3]
	cmp r3, #0
	bgt _022428E8
	movs r3, #0
	strh r3, [r1, #0xa]
_022428E8:
	movs r3, #8
	ldrsh r3, [r1, r3]
	asrs r4, r3, #8
	movs r3, #0xa
	ldrsh r3, [r1, r3]
	movs r1, #0xff
	bics r3, r1
	orrs r3, r4
	ldr r1, _02242908 @ =0x04000052
	cmp r2, #0
	strh r3, [r1]
	ble _02242904
	bl FUN_0200DA58
_02242904:
	pop {r3, r4, r5, pc}
	nop
_02242908: .4byte 0x04000052
	thumb_func_end ov17_02242884

	thumb_func_start ov17_0224290C
ov17_0224290C: @ 0x0224290C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	adds r4, r0, #0
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r7, #2
	blt _02242924
	cmp r5, #0
	bne _02242924
	bl FUN_02022974
_02242924:
	cmp r7, #0x1c
	bls _0224292A
	b _02242D9E
_0224292A:
	adds r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02242936: @ jump table
	.2byte _02242DA2 - _02242936 - 2 @ case 0
	.2byte _02242970 - _02242936 - 2 @ case 1
	.2byte _0224298E - _02242936 - 2 @ case 2
	.2byte _022429A8 - _02242936 - 2 @ case 3
	.2byte _022429C2 - _02242936 - 2 @ case 4
	.2byte _022429D0 - _02242936 - 2 @ case 5
	.2byte _022429E4 - _02242936 - 2 @ case 6
	.2byte _022429FC - _02242936 - 2 @ case 7
	.2byte _02242A2C - _02242936 - 2 @ case 8
	.2byte _02242A50 - _02242936 - 2 @ case 9
	.2byte _02242A7C - _02242936 - 2 @ case 10
	.2byte _02242AAA - _02242936 - 2 @ case 11
	.2byte _02242ADA - _02242936 - 2 @ case 12
	.2byte _02242AFE - _02242936 - 2 @ case 13
	.2byte _02242B2A - _02242936 - 2 @ case 14
	.2byte _02242B5A - _02242936 - 2 @ case 15
	.2byte _02242B7E - _02242936 - 2 @ case 16
	.2byte _02242BA2 - _02242936 - 2 @ case 17
	.2byte _02242BC2 - _02242936 - 2 @ case 18
	.2byte _02242BE6 - _02242936 - 2 @ case 19
	.2byte _02242C10 - _02242936 - 2 @ case 20
	.2byte _02242C3A - _02242936 - 2 @ case 21
	.2byte _02242C58 - _02242936 - 2 @ case 22
	.2byte _02242C82 - _02242936 - 2 @ case 23
	.2byte _02242CB0 - _02242936 - 2 @ case 24
	.2byte _02242CDE - _02242936 - 2 @ case 25
	.2byte _02242D00 - _02242936 - 2 @ case 26
	.2byte _02242D2A - _02242936 - 2 @ case 27
	.2byte _02242D62 - _02242936 - 2 @ case 28
_02242970:
	movs r0, #0xca
	lsls r0, r0, #2
	ldrb r0, [r4, r0]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224298E:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429A8:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429C2:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429D0:
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl FUN_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429E4:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsls r2, r2, #3
	adds r2, r3, r2
	adds r2, #0xd0
	ldrh r2, [r2]
	movs r1, #0
	bl FUN_0200BB74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022429FC:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242A2C:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242A50:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	movs r0, #0
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	adds r3, r1, #0
	bl FUN_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242A7C:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsls r2, r2, #3
	adds r2, r3, r2
	adds r2, #0xd0
	ldrh r2, [r2]
	movs r1, #1
	bl FUN_0200BB74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242AAA:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242ADA:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242AFE:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	movs r0, #0
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	adds r3, r1, #0
	bl FUN_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242B2A:
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242B5A:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B630
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242B7E:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B630
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242BA2:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B630
	movs r0, #0
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	adds r3, r1, #0
	bl FUN_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242BC2:
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B630
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242BE6:
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl FUN_0200B60C
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C10:
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl FUN_0200B60C
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C3A:
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl FUN_0200B60C
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C58:
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	bl FUN_0200B60C
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242C82:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsls r2, r2, #3
	adds r2, r3, r2
	adds r2, #0xd0
	ldrh r2, [r2]
	movs r1, #0
	bl FUN_0200BB74
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242CB0:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsls r2, r2, #3
	adds r2, r3, r2
	adds r2, #0xd0
	ldrh r2, [r2]
	movs r1, #0
	bl FUN_0200BB74
	ldrb r0, [r5, #1]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242CDE:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsls r2, r2, #3
	adds r2, r3, r2
	adds r2, #0xd0
	ldrh r2, [r2]
	movs r1, #0
	bl FUN_0200BB74
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl FUN_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D00:
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsls r2, r2, #3
	adds r2, r3, r2
	adds r2, #0xd0
	ldrh r2, [r2]
	movs r1, #0
	bl FUN_0200BB74
	movs r0, #0
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r2, [r5, #4]
	ldr r0, [r4, #0x54]
	adds r3, r1, #0
	bl FUN_0200B60C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D2A:
	ldrb r0, [r5]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200B5CC
	ldrb r2, [r5, #5]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsls r2, r2, #3
	adds r2, r3, r2
	adds r2, #0xd0
	ldrh r2, [r2]
	movs r1, #1
	bl FUN_0200BB74
	ldrh r2, [r5, #2]
	ldr r0, [r4, #0x54]
	movs r1, #2
	bl FUN_0200B630
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D62:
	ldrb r2, [r6]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x54]
	lsls r2, r2, #3
	adds r2, r3, r2
	adds r2, #0xd0
	ldrh r2, [r2]
	movs r1, #0
	bl FUN_0200BB74
	movs r5, #0
_02242D78:
	adds r0, r6, r5
	ldrb r0, [r0, #1]
	cmp r0, #4
	beq _02242DA2
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r4, #0x54]
	adds r1, r5, #1
	bl FUN_0200B5CC
	adds r5, r5, #1
	cmp r5, #4
	blt _02242D78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02242D9E:
	bl FUN_02022974
_02242DA2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0224290C

	thumb_func_start ov17_02242DA8
ov17_02242DA8: @ 0x02242DA8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x34
	movs r1, #0xff
	bl FUN_0201ADA4
	adds r4, #0x34
	adds r0, r4, #0
	bl FUN_0201A954
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_02242DA8

	thumb_func_start ov17_02242DC0
ov17_02242DC0: @ 0x02242DC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [sp, #0x30]
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp, #0xc]
	cmp r0, #1
	bne _02242DD6
	movs r4, #0
	b _02242DEE
_02242DD6:
	ldr r1, [r5]
	ldr r0, _02242E54 @ =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02242DEC
	ldr r0, _02242E58 @ =0x00001988
	ldr r0, [r1, r0]
	bl FUN_02027AC0
	adds r4, r0, #0
	b _02242DEE
_02242DEC:
	movs r4, #1
_02242DEE:
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	adds r0, r5, #0
	bl ov17_0224290C
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0xff
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x58]
	adds r0, #0x34
	movs r1, #1
	bl FUN_0201D738
	movs r1, #0x8b
	lsls r1, r1, #2
	strb r0, [r5, r1]
	cmp r4, #0
	bne _02242E42
	movs r0, #0xff
	strb r0, [r5, r1]
	adds r0, r5, #0
	adds r0, #0x34
	bl FUN_0201A954
_02242E42:
	ldr r0, [r5, #0x30]
	movs r1, #1
	bl FUN_020192EC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02242E54: .4byte 0x00000171
_02242E58: .4byte 0x00001988
	thumb_func_end ov17_02242DC0

	thumb_func_start ov17_02242E5C
ov17_02242E5C: @ 0x02242E5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r7, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r5, #0x2f
	blo _02242E70
	bl FUN_02022974
_02242E70:
	ldr r0, _02242E90 @ =0x022538F3
	lsls r3, r5, #2
	ldrb r0, [r0, r3]
	str r4, [sp]
	ldr r2, _02242E94 @ =0x022538F0
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r4, _02242E98 @ =0x022538F2
	ldrh r2, [r2, r3]
	ldrb r3, [r4, r3]
	ldr r1, [r7, #0x44]
	adds r0, r7, #0
	bl ov17_02242DC0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02242E90: .4byte 0x022538F3
_02242E94: .4byte 0x022538F0
_02242E98: .4byte 0x022538F2
	thumb_func_end ov17_02242E5C

	thumb_func_start ov17_02242E9C
ov17_02242E9C: @ 0x02242E9C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r5, r3, #0
	adds r0, r1, #0
	adds r1, r2, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_02095790
	ldr r0, [sp, #0x20]
	str r5, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, [r4, #0x50]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	adds r0, r4, #0
	bl ov17_02242DC0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_02242E9C

	thumb_func_start ov17_02242ECC
ov17_02242ECC: @ 0x02242ECC
	push {r3, lr}
	movs r1, #0x8b
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _02242EDC
	movs r0, #0
	pop {r3, pc}
_02242EDC:
	bl FUN_0201D724
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02242ECC

	thumb_func_start ov17_02242EE4
ov17_02242EE4: @ 0x02242EE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0xc
	movs r1, #0x15
	bl FUN_02023790
	str r0, [sp, #0x30]
	lsls r0, r4, #2
	ldr r1, [r5, #0xc]
	str r0, [sp, #0x2c]
	ldr r0, [r1, r0]
	ldr r2, [sp, #0x30]
	movs r1, #0x77
	bl FUN_02074470
	ldr r1, [r5]
	ldr r0, _02242F94 @ =0x00000123
	ldrb r0, [r1, r0]
	cmp r4, r0
	bne _02242F14
	ldr r6, _02242F98 @ =0x00010200
	b _02242F16
_02242F14:
	ldr r6, _02242F9C @ =0x00050600
_02242F16:
	movs r0, #0x14
	adds r7, r4, #0
	muls r7, r0, r7
	movs r0, #0x77
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, r0, r7
	str r0, [sp]
	ldr r0, [sp, #0x30]
	movs r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _02242FA0 @ =0x000080ED
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	movs r0, #0xf
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x60]
	movs r0, #0x15
	bl ov17_0223F1E8
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, r0, r7
	str r0, [sp]
	ldr r1, [r5]
	ldr r0, [sp, #0x2c]
	adds r0, r1, r0
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _02242FA0 @ =0x000080ED
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	movs r0, #0xf
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x60]
	movs r0, #0x15
	bl ov17_0223F1E8
	ldr r0, [sp, #0x30]
	bl FUN_020237BC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02242F94: .4byte 0x00000123
_02242F98: .4byte 0x00010200
_02242F9C: .4byte 0x00050600
_02242FA0: .4byte 0x000080ED
	thumb_func_end ov17_02242EE4

	thumb_func_start ov17_02242FA4
ov17_02242FA4: @ 0x02242FA4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02242FAA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_02242EE4
	adds r4, r4, #1
	cmp r4, #4
	blt _02242FAA
	adds r0, r5, #0
	bl ov17_02242FE8
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02242FA4

	thumb_func_start ov17_02242FC0
ov17_02242FC0: @ 0x02242FC0
	push {r4, r5, r6, lr}
	movs r1, #0x77
	lsls r1, r1, #2
	adds r4, r0, r1
	subs r1, #0x50
	movs r6, #0
	adds r5, r0, r1
_02242FCE:
	adds r0, r4, #0
	bl ov17_0223F2E4
	adds r0, r5, #0
	bl ov17_0223F2E4
	adds r6, r6, #1
	adds r4, #0x14
	adds r5, #0x14
	cmp r6, #4
	blt _02242FCE
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_02242FC0

	thumb_func_start ov17_02242FE8
ov17_02242FE8: @ 0x02242FE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r1, #0x77
	lsls r1, r1, #2
	str r0, [sp]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp]
	subs r1, #0x50
	adds r0, r0, r1
	movs r4, #0
	movs r6, #0xc
	movs r5, #0x1c
	str r0, [sp, #8]
_02243004:
	ldr r0, [sp]
	adds r2, r6, #0
	adds r1, r0, r4
	ldr r0, _0224303C @ =0x00000231
	movs r3, #0
	ldrb r1, [r1, r0]
	movs r0, #0x14
	adds r7, r1, #0
	muls r7, r0, r7
	ldr r0, [sp, #4]
	movs r1, #1
	adds r0, r0, r7
	bl ov17_0223F2F8
	ldr r0, [sp, #8]
	movs r1, #1
	adds r0, r0, r7
	adds r2, r5, #0
	movs r3, #0
	bl ov17_0223F2F8
	adds r4, r4, #1
	adds r6, #0x30
	adds r5, #0x30
	cmp r4, #4
	blt _02243004
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224303C: .4byte 0x00000231
	thumb_func_end ov17_02242FE8

	thumb_func_start ov17_02243040
ov17_02243040: @ 0x02243040
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _02243088 @ =0x000080F1
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x17
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _02243088 @ =0x000080F1
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x16
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _02243088 @ =0x000080F1
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x15
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02243088: .4byte 0x000080F1
	thumb_func_end ov17_02243040

	thumb_func_start ov17_0224308C
ov17_0224308C: @ 0x0224308C
	push {r4, lr}
	ldr r1, _022430A8 @ =0x000080F1
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _022430A8 @ =0x000080F1
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _022430A8 @ =0x000080F1
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_022430A8: .4byte 0x000080F1
	thumb_func_end ov17_0224308C

	thumb_func_start ov17_022430AC
ov17_022430AC: @ 0x022430AC
	push {r3, r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r0, #0x16
	adds r6, r1, #0
	lsls r0, r0, #4
	lsls r5, r6, #2
	adds r4, r3, r0
	ldr r0, [r4, r5]
	adds r7, r2, #0
	cmp r0, #0
	bne _022430CE
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x1c]
	ldr r2, _022430F4 @ =0x02253750
	bl FUN_0200CE6C
	str r0, [r4, r5]
_022430CE:
	ldr r0, [r4, r5]
	adds r1, r7, #0
	bl FUN_0200D364
	movs r2, #0x30
	muls r2, r6, r2
	adds r2, #0x2a
	lsls r2, r2, #0x10
	ldr r0, [r4, r5]
	movs r1, #0x40
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	ldr r0, [r4, r5]
	ldr r0, [r0]
	bl FUN_0200D324
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022430F4: .4byte 0x02253750
	thumb_func_end ov17_022430AC

	thumb_func_start ov17_022430F8
ov17_022430F8: @ 0x022430F8
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	movs r7, #0x16
	adds r5, r0, #0
	adds r6, r4, #0
	lsls r7, r7, #4
_02243104:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02243114
	bl FUN_0200D0F4
	movs r0, #0x16
	lsls r0, r0, #4
	str r6, [r5, r0]
_02243114:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02243104
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_022430F8

	thumb_func_start ov17_02243120
ov17_02243120: @ 0x02243120
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #6
	blx FUN_020C4CF4
	lsls r0, r6, #1
	adds r1, r5, r0
	ldr r0, _02243148 @ =0x00000236
	strb r6, [r4]
	ldrh r1, [r1, r0]
	adds r0, #8
	strh r1, [r4, #2]
	adds r1, r5, r6
	ldrb r0, [r1, r0]
	strb r0, [r4, #5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_02243148: .4byte 0x00000236
	thumb_func_end ov17_02243120

	thumb_func_start ov17_0224314C
ov17_0224314C: @ 0x0224314C
	strb r0, [r2]
	cmp r1, #0
	bgt _02243156
	movs r0, #0x1f
	bx lr
_02243156:
	cmp r1, #0x14
	bgt _0224315E
	movs r0, #0x20
	bx lr
_0224315E:
	cmp r1, #0x32
	bgt _02243166
	movs r0, #0x21
	bx lr
_02243166:
	cmp r1, #0x5a
	bgt _0224316E
	movs r0, #0x22
	bx lr
_0224316E:
	movs r0, #0x23
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224314C

	thumb_func_start ov17_02243174
ov17_02243174: @ 0x02243174
	push {r4, lr}
	movs r1, #0x32
	blx FUN_020E1F6C
	cmp r0, #4
	blo _02243182
	movs r0, #3
_02243182:
	lsls r1, r0, #2
	ldr r0, _0224319C @ =0x022536FC
	ldr r4, [r0, r1]
	cmp r4, #0
	bge _02243190
	bl FUN_02022974
_02243190:
	cmp r4, #0x7f
	ble _02243198
	bl FUN_02022974
_02243198:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0224319C: .4byte 0x022536FC
	thumb_func_end ov17_02243174

	thumb_func_start ov17_022431A0
ov17_022431A0: @ 0x022431A0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x1c]
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x15
	movs r1, #0x14
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x14
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp, #0x1c]
	str r5, [r4]
	str r0, [r4, #0x10]
	strb r7, [r4, #0xd]
	ldr r0, [sp]
	strb r6, [r4, #0xb]
	str r0, [r4, #4]
	ldr r0, [sp, #0x18]
	ldr r2, _022431E0 @ =0x00000BB8
	strb r0, [r4, #0xe]
	ldr r0, _022431E4 @ =ov17_022431E8
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022431E0: .4byte 0x00000BB8
_022431E4: .4byte ov17_022431E8
	thumb_func_end ov17_022431A0

	thumb_func_start ov17_022431E8
ov17_022431E8: @ 0x022431E8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02243200
	cmp r0, #1
	beq _02243222
	cmp r0, #2
	beq _02243252
	b _022432C8
_02243200:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0224320E
	subs r0, r0, #1
	add sp, #0x10
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, pc}
_0224320E:
	ldr r0, _02243314 @ =0x000006E5
	bl FUN_02005748
	ldr r0, _02243314 @ =0x000006E5
	ldr r1, [r4, #4]
	bl FUN_02004AD4
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
_02243222:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0224322C
	movs r1, #0
	b _0224322E
_0224322C:
	movs r1, #2
_0224322E:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x15
	str r0, [sp, #0xc]
	ldr r2, [r4]
	movs r0, #0x2d
	ldr r2, [r2, #0x30]
	movs r3, #3
	bl FUN_02006E60
	ldrb r0, [r4, #8]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02243252:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bls _0224328A
	movs r0, #0
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #9]
	movs r0, #1
	eors r0, r1
	strb r0, [r4, #9]
	ldrb r0, [r4, #8]
	subs r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0224328A
	ldrb r0, [r4, #0xa]
	adds r0, r0, #1
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bls _0224328A
	movs r0, #0xff
	add sp, #0x10
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224328A:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _02243310
	ldrb r0, [r4, #0xb]
	movs r1, #0x32
	lsls r0, r0, #4
	blx FUN_020E1F6C
	movs r1, #0xf
	ldrsb r2, [r4, r1]
	cmp r2, r0
	bge _02243310
	adds r2, r2, #2
	strb r2, [r4, #0xf]
	ldrsb r1, [r4, r1]
	cmp r1, r0
	ble _022432AE
	strb r0, [r4, #0xf]
_022432AE:
	ldrb r0, [r4, #0xf]
	movs r1, #0
	movs r2, #1
	str r0, [sp]
	ldr r0, _02243318 @ =0x0000237E
	movs r3, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r0, [r0, #0x5c]
	bl FUN_020039B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022432C8:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _022432FE
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	cmp r1, #0
	beq _022432FE
	subs r1, r1, #2
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _022432E4
	movs r0, #0
	strb r0, [r4, #0xf]
_022432E4:
	ldrb r0, [r4, #0xf]
	movs r1, #0
	movs r2, #1
	str r0, [sp]
	ldr r0, _02243318 @ =0x0000237E
	movs r3, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r0, [r0, #0x5c]
	bl FUN_020039B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022432FE:
	ldr r0, [r4, #0x10]
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02243310:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02243314: .4byte 0x000006E5
_02243318: .4byte 0x0000237E
	thumb_func_end ov17_022431E8

	thumb_func_start ov17_0224331C
ov17_0224331C: @ 0x0224331C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r3, #0
	ldr r3, [sp, #0x38]
	add r6, sp, #0x1c
	str r3, [sp, #0x38]
	movs r3, #0
	str r3, [sp, #8]
	strb r3, [r5]
	movs r3, #0x30
	muls r3, r2, r3
	ldr r2, [sp, #8]
	str r3, [sp, #0x10]
	adds r3, #0x18
	str r2, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x18
	muls r2, r1, r2
	adds r7, r0, r2
	adds r0, r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r3, [sp, #0x10]
	str r0, [sp, #0x18]
_0224334C:
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	bne _02243358
	b _022434B8
_02243358:
	ldrb r1, [r5]
	cmp r1, #0
	bne _02243422
	add r1, sp, #0x20
	adds r1, #2
	add r2, sp, #0x20
	bl FUN_0200D550
	movs r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, [sp, #0x10]
	subs r1, r1, r0
	bpl _02243374
	rsbs r1, r1, #0
_02243374:
	movs r0, #6
	ldrsh r0, [r6, r0]
	subs r0, #0x28
	bpl _0224337E
	rsbs r0, r0, #0
_0224337E:
	bl FUN_0208C0A4
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r0, #6
	ldrsh r0, [r6, r0]
	subs r0, #0x28
	blx FUN_020E17B4
	str r0, [sp, #0x14]
	movs r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, [sp, #0x10]
	subs r0, r1, r0
	blx FUN_020E17B4
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _022434CC @ =0x45800000
	bls _022433C0
	ldr r1, [sp, #0x14]
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	str r0, [sp]
	b _022433D0
_022433C0:
	ldr r1, [sp, #0x14]
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	str r0, [sp]
_022433D0:
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020E1108
	ldr r0, _022434CC @ =0x45800000
	bls _022433EE
	adds r1, r4, #0
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _022433FC
_022433EE:
	adds r1, r4, #0
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_022433FC:
	blx FUN_020E1740
	adds r4, r0, #0
	ldr r0, [sp]
	blx FUN_020E1740
	adds r1, r0, #0
	adds r0, r4, #0
	blx FUN_020BDA20
	ldr r1, _022434D0 @ =0x00008CA0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _022434D4 @ =0x0000FFFF
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_02243422:
	movs r0, #0x15
	movs r1, #0x28
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x28
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp, #0x38]
	adds r1, r4, #0
	str r0, [r4, #4]
	adds r0, r7, #0
	adds r0, #0xd0
	ldr r0, [r0]
	adds r1, #0x21
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	add r2, sp, #0x1c
	str r0, [r4, #0x10]
	ldr r0, [sp, #4]
	strh r0, [r4, #0x1e]
	movs r0, #2
	lsls r0, r0, #0xa
	str r0, [r4, #0x14]
	movs r0, #0x28
	strb r0, [r1]
	adds r1, r4, #0
	ldr r0, [sp, #0x18]
	adds r1, #0x22
	strb r0, [r1]
	str r5, [r4, #0xc]
	movs r0, #6
	ldrsh r1, [r6, r0]
	adds r0, r4, #0
	adds r0, #0x23
	strb r1, [r0]
	movs r0, #4
	ldrsh r1, [r6, r0]
	adds r0, r4, #0
	adds r0, #0x24
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xd0
	add r1, sp, #0x1c
	ldr r0, [r0]
	adds r1, #2
	bl FUN_0200D550
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #2
	ldrsh r0, [r6, r0]
	subs r0, r1, r0
	bpl _02243492
	rsbs r0, r0, #0
_02243492:
	ldrb r2, [r5]
	lsls r0, r0, #8
	lsls r1, r2, #1
	adds r1, r2, r1
	blx FUN_020E1F6C
	strh r0, [r4, #0x1c]
	movs r0, #2
	ldrsh r0, [r6, r0]
	ldr r2, _022434D8 @ =0x00009C40
	adds r1, r4, #0
	lsls r0, r0, #8
	str r0, [r4, #0x18]
	ldr r0, _022434DC @ =ov17_022434E0
	bl FUN_0200D9E8
	ldrb r0, [r5]
	adds r0, r0, #1
	strb r0, [r5]
_022434B8:
	ldr r0, [sp, #0xc]
	adds r7, r7, #4
	adds r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #6
	bge _022434C6
	b _0224334C
_022434C6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022434CC: .4byte 0x45800000
_022434D0: .4byte 0x00008CA0
_022434D4: .4byte 0x0000FFFF
_022434D8: .4byte 0x00009C40
_022434DC: .4byte ov17_022434E0
	thumb_func_end ov17_0224331C

	thumb_func_start ov17_022434E0
ov17_022434E0: @ 0x022434E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _022434F8
	cmp r0, #1
	beq _02243542
	b _02243624
_022434F8:
	ldrh r0, [r5, #0x1c]
	ldr r1, [r5, #0x18]
	subs r1, r1, r0
	adds r0, r5, #0
	str r1, [r5, #0x18]
	adds r0, #0x23
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0224351C
	str r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
_0224351C:
	add r1, sp, #0xc
	ldr r0, [r5, #8]
	adds r1, #2
	add r2, sp, #0xc
	bl FUN_0200D550
	ldr r0, [r5, #0x18]
	add r3, sp, #0xc
	asrs r0, r0, #8
	strh r0, [r3, #2]
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, #8]
	bl FUN_0200D4C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02243542:
	ldrh r2, [r5, #0x1e]
	ldr r1, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r2, r1
	strh r1, [r5, #0x1e]
	ldrh r2, [r5, #0x1e]
	ldr r1, _02243650 @ =0x00008CA0
	adds r0, #0x1e
	cmp r2, r1
	blo _0224355C
	ldrh r2, [r0]
	subs r1, r2, r1
	strh r1, [r0]
_0224355C:
	movs r0, #3
	ldr r1, [r5, #0x10]
	lsls r0, r0, #8
	cmp r1, r0
	bls _0224356A
	subs r0, r1, r0
	b _0224356C
_0224356A:
	movs r0, #0
_0224356C:
	str r0, [r5, #0x10]
	movs r0, #2
	ldr r1, [r5, #0x10]
	lsls r0, r0, #8
	cmp r1, r0
	bhi _02243586
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
_02243586:
	ldr r0, [r5, #0x10]
	movs r1, #0x64
	lsrs r4, r0, #8
	ldrh r0, [r5, #0x1e]
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D1D4
	str r0, [sp]
	lsls r6, r4, #0xc
	ldrh r0, [r5, #0x1e]
	movs r1, #0x64
	asrs r7, r6, #0x1f
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r2, r6, #0
	asrs r1, r0, #0x1f
	adds r3, r7, #0
	blx FUN_020E1F1C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r4, r1, #0
	asrs r1, r0, #0x1f
	adds r2, r6, #0
	adds r3, r7, #0
	blx FUN_020E1F1C
	movs r3, #2
	adds r2, r1, #0
	adds r1, r5, #0
	adds r7, r0, #0
	adds r1, #0x21
	ldr r6, [sp, #8]
	lsls r3, r3, #0xa
	adds r6, r6, r3
	ldr r3, _02243654 @ =0x00000000
	ldrb r1, [r1]
	adcs r4, r3
	lsls r3, r4, #0x14
	lsrs r4, r6, #0xc
	orrs r4, r3
	asrs r3, r4, #0xb
	lsrs r3, r3, #0x14
	adds r3, r4, r3
	asrs r3, r3, #0xc
	adds r1, r1, r3
	movs r4, #2
	ldr r0, [r5, #8]
	lsls r1, r1, #0x10
	adds r5, #0x22
	lsls r4, r4, #0xa
	asrs r1, r1, #0x10
	ldrb r3, [r5]
	adds r5, r7, r4
	ldr r4, _02243654 @ =0x00000000
	adcs r2, r4
	lsls r2, r2, #0x14
	lsrs r4, r5, #0xc
	orrs r4, r2
	asrs r2, r4, #0xb
	lsrs r2, r2, #0x14
	adds r2, r4, r2
	asrs r2, r2, #0xc
	adds r2, r3, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02243624:
	ldr r0, [r5, #8]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, _02243658 @ =0x000005E1
	bl FUN_02005748
	ldr r0, [r5, #4]
	bl ov17_022414B0
	ldr r1, [r5, #0xc]
	ldrb r0, [r1]
	subs r0, r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02243650: .4byte 0x00008CA0
_02243654: .4byte 0x00000000
_02243658: .4byte 0x000005E1
	thumb_func_end ov17_022434E0

	thumb_func_start ov17_0224365C
ov17_0224365C: @ 0x0224365C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x15
	movs r1, #0xc
	bl FUN_02018144
	movs r1, #0
	movs r2, #0xc
	adds r4, r0, #0
	blx FUN_020C4CF4
	str r5, [r4]
	ldr r0, _02243688 @ =ov17_022436A4
	ldr r2, _0224368C @ =0x00009C40
	adds r1, r4, #0
	strb r6, [r4, #8]
	bl FUN_0200D9E8
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02243688: .4byte ov17_022436A4
_0224368C: .4byte 0x00009C40
	thumb_func_end ov17_0224365C

	thumb_func_start ov17_02243690
ov17_02243690: @ 0x02243690
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_02243690

	thumb_func_start ov17_022436A4
ov17_022436A4: @ 0x022436A4
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	movs r7, #0x13
	adds r6, r1, #0
	adds r5, r4, #0
	lsls r7, r7, #4
_022436B0:
	ldrb r2, [r6, #8]
	movs r1, #0x14
	ldr r0, [r6]
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _022436C6
	bl FUN_0200D330
_022436C6:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _022436B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022436A4

	thumb_func_start ov17_022436D0
ov17_022436D0: @ 0x022436D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	movs r0, #0x30
	muls r0, r2, r0
	adds r0, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x14
	adds r2, r3, #0
	muls r2, r1, r2
	ldr r1, [sp]
	ldr r5, [sp, #0x20]
	movs r7, #0
	strb r7, [r5]
	adds r6, r1, r2
	str r0, [sp, #4]
_022436F2:
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0224373C
	movs r0, #0x15
	movs r1, #0x28
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x28
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	ldr r2, _02243748 @ =0x00009C40
	str r0, [r4]
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	str r0, [r4, #4]
	str r5, [r4, #8]
	movs r0, #0x28
	strb r0, [r4, #0xf]
	ldr r0, [sp, #4]
	strb r0, [r4, #0x10]
	ldrb r1, [r5]
	movs r0, #0xc
	muls r0, r1, r0
	strh r0, [r4, #0x24]
	ldr r0, _0224374C @ =ov17_02243750
	adds r1, r4, #0
	bl FUN_0200D9E8
	ldrb r0, [r5]
	adds r0, r0, #1
	strb r0, [r5]
_0224373C:
	adds r7, r7, #1
	adds r6, r6, #4
	cmp r7, #5
	blt _022436F2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02243748: .4byte 0x00009C40
_0224374C: .4byte ov17_02243750
	thumb_func_end ov17_022436D0

	thumb_func_start ov17_02243750
ov17_02243750: @ 0x02243750
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r0, #0
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0224376A
	cmp r0, #1
	beq _022437AA
	cmp r0, #2
	bne _02243768
	b _022438D2
_02243768:
	b _0224390A
_0224376A:
	movs r0, #0x24
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0224377A
	subs r0, r0, #1
	add sp, #8
	strh r0, [r5, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
_0224377A:
	add r1, sp, #4
	ldr r0, [r5, #4]
	adds r1, #2
	add r2, sp, #4
	bl FUN_0200D550
	add r2, sp, #4
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r0, #6
	strh r0, [r2]
	movs r0, #2
	ldrsh r0, [r2, r0]
	lsls r0, r0, #8
	str r0, [r5, #0x1c]
	ldrsh r0, [r2, r1]
	lsls r0, r0, #8
	str r0, [r5, #0x20]
	ldr r0, _02243930 @ =0x000007F9
	bl FUN_02005748
	ldrb r0, [r5, #0xe]
	adds r0, r0, #1
	strb r0, [r5, #0xe]
_022437AA:
	ldrh r2, [r5, #0xc]
	movs r1, #2
	lsls r1, r1, #0xa
	adds r1, r2, r1
	strh r1, [r5, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r1, _02243934 @ =0x00008CA0
	adds r0, r5, #0
	adds r0, #0xc
	cmp r2, r1
	blo _022437C6
	ldrh r2, [r0]
	subs r1, r2, r1
	strh r1, [r0]
_022437C6:
	ldrh r0, [r5, #0xc]
	movs r1, #0x64
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	adds r4, r0, #0
	ldrh r0, [r5, #0xc]
	movs r1, #0x64
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D1D4
	adds r6, r0, #0
	ldr r0, [r5, #0x20]
	movs r2, #3
	adds r0, #0x80
	str r0, [r5, #0x20]
	asrs r1, r4, #0x1f
	adds r0, r4, #0
	lsls r2, r2, #0xe
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #6
	str r0, [sp]
	adds r4, r1, #0
	asrs r1, r6, #0x1f
	adds r0, r6, #0
	lsls r2, r2, #0xc
	movs r3, #0
	blx FUN_020E1F1C
	adds r2, r1, #0
	ldr r1, [r5, #0x1c]
	movs r6, #2
	adds r7, r0, #0
	ldr r3, [sp]
	lsls r6, r6, #0xa
	asrs r1, r1, #8
	adds r6, r3, r6
	ldr r3, _02243938 @ =0x00000000
	ldr r0, [r5, #4]
	adcs r4, r3
	lsls r3, r4, #0x14
	lsrs r4, r6, #0xc
	orrs r4, r3
	asrs r3, r4, #0xb
	lsrs r3, r3, #0x14
	adds r3, r4, r3
	asrs r3, r3, #0xc
	adds r1, r1, r3
	ldr r3, [r5, #0x20]
	movs r4, #2
	lsls r1, r1, #0x10
	ldr r6, _02243938 @ =0x00000000
	lsls r4, r4, #0xa
	asrs r1, r1, #0x10
	asrs r3, r3, #8
	adds r4, r7, r4
	adcs r2, r6
	lsls r6, r2, #0x14
	lsrs r2, r4, #0xc
	orrs r2, r6
	asrs r4, r2, #0xb
	lsrs r4, r4, #0x14
	adds r4, r2, r4
	asrs r2, r4, #0xc
	adds r2, r3, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	adds r1, r1, #1
	strh r1, [r5, #0x24]
	ldrsh r0, [r5, r0]
	cmp r0, #0x50
	ble _0224392C
	movs r0, #0
	strh r0, [r5, #0x24]
	add r1, sp, #4
	ldr r0, [r5, #4]
	adds r1, #2
	add r2, sp, #4
	bl FUN_0200D550
	add r2, sp, #4
	movs r0, #2
	ldrsh r0, [r2, r0]
	lsls r1, r0, #8
	str r1, [r5, #0x1c]
	movs r1, #0
	ldrsh r6, [r2, r1]
	lsls r1, r6, #8
	str r1, [r5, #0x20]
	ldrb r1, [r5, #0xf]
	subs r0, r0, r1
	bpl _02243898
	rsbs r0, r0, #0
_02243898:
	ldrb r1, [r5, #0x10]
	lsls r0, r0, #8
	subs r4, r6, r1
	bpl _022438A2
	rsbs r4, r4, #0
_022438A2:
	movs r1, #3
	lsls r1, r1, #8
	str r1, [r5, #0x14]
	blx FUN_020E1F6C
	adds r1, r0, #0
	lsls r0, r4, #8
	blx FUN_020E1F6C
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0x10]
	cmp r0, r6
	bge _022438C2
	ldr r0, [r5, #0x18]
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
_022438C2:
	ldr r0, _0224393C @ =0x000006EA
	bl FUN_02005748
	ldrb r0, [r5, #0xe]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r5, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022438D2:
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	subs r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x18]
	adds r0, r1, r0
	str r0, [r5, #0x20]
	ldrb r0, [r5, #0xf]
	lsls r1, r0, #8
	ldr r0, [r5, #0x1c]
	cmp r0, r1
	bgt _022438F4
	str r1, [r5, #0x1c]
	ldrb r0, [r5, #0xe]
	adds r0, r0, #1
	strb r0, [r5, #0xe]
_022438F4:
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	lsls r1, r1, #8
	lsls r2, r2, #8
	ldr r0, [r5, #4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224390A:
	ldr r0, [r5, #4]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, _02243940 @ =0x000005E1
	bl FUN_02005748
	ldr r1, [r5, #8]
	ldrb r0, [r1]
	subs r0, r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_0224392C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02243930: .4byte 0x000007F9
_02243934: .4byte 0x00008CA0
_02243938: .4byte 0x00000000
_0224393C: .4byte 0x000006EA
_02243940: .4byte 0x000005E1
	thumb_func_end ov17_02243750

	thumb_func_start ov17_02243944
ov17_02243944: @ 0x02243944
	push {r4}
	sub sp, #0xc
	ldr r3, _0224396C @ =0x022536B8
	add r2, sp, #0
	ldrh r4, [r3, #0x14]
	add r1, sp, #0
	lsls r0, r0, #1
	strh r4, [r2]
	ldrh r4, [r3, #0x16]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0x18]
	strh r4, [r2, #4]
	ldrh r4, [r3, #0x1a]
	ldrh r3, [r3, #0x1c]
	strh r4, [r2, #6]
	strh r3, [r2, #8]
	ldrh r0, [r1, r0]
	add sp, #0xc
	pop {r4}
	bx lr
	.align 2, 0
_0224396C: .4byte 0x022536B8
	thumb_func_end ov17_02243944

	thumb_func_start ov17_02243970
ov17_02243970: @ 0x02243970
	push {r4}
	sub sp, #0xc
	ldr r3, _02243998 @ =0x022536B8
	add r2, sp, #0
	ldrh r4, [r3, #0xa]
	add r1, sp, #0
	lsls r0, r0, #1
	strh r4, [r2]
	ldrh r4, [r3, #0xc]
	strh r4, [r2, #2]
	ldrh r4, [r3, #0xe]
	strh r4, [r2, #4]
	ldrh r4, [r3, #0x10]
	ldrh r3, [r3, #0x12]
	strh r4, [r2, #6]
	strh r3, [r2, #8]
	ldrh r0, [r1, r0]
	add sp, #0xc
	pop {r4}
	bx lr
	.align 2, 0
_02243998: .4byte 0x022536B8
	thumb_func_end ov17_02243970

	thumb_func_start ov17_0224399C
ov17_0224399C: @ 0x0224399C
	push {r4}
	sub sp, #0xc
	ldr r3, _022439C4 @ =0x022536B8
	add r2, sp, #0
	ldrh r4, [r3]
	add r1, sp, #0
	lsls r0, r0, #1
	strh r4, [r2]
	ldrh r4, [r3, #2]
	strh r4, [r2, #2]
	ldrh r4, [r3, #4]
	strh r4, [r2, #4]
	ldrh r4, [r3, #6]
	ldrh r3, [r3, #8]
	strh r4, [r2, #6]
	strh r3, [r2, #8]
	ldrh r0, [r1, r0]
	add sp, #0xc
	pop {r4}
	bx lr
	.align 2, 0
_022439C4: .4byte 0x022536B8
	thumb_func_end ov17_0224399C

	thumb_func_start ov17_022439C8
ov17_022439C8: @ 0x022439C8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r3, #0
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	strh r5, [r4, #4]
	cmp r5, #0x8f
	bgt _022439FE
	bge _02243A36
	cmp r5, #0x4c
	bgt _022439F0
	bge _02243A36
	cmp r5, #0xd
	beq _02243A36
	pop {r3, r4, r5, r6, r7, pc}
_022439F0:
	cmp r5, #0x77
	bgt _022439F8
	beq _02243A74
	pop {r3, r4, r5, r6, r7, pc}
_022439F8:
	cmp r5, #0x82
	beq _02243A36
	pop {r3, r4, r5, r6, r7, pc}
_022439FE:
	ldr r1, _02243A90 @ =0x0000010B
	cmp r5, r1
	bgt _02243A1E
	bge _02243A7A
	cmp r5, #0xae
	bgt _02243A0E
	beq _02243A48
	pop {r3, r4, r5, r6, r7, pc}
_02243A0E:
	cmp r5, #0xda
	bgt _02243A8E
	cmp r5, #0xd8
	blt _02243A8E
	beq _02243A3C
	cmp r5, #0xda
	beq _02243A42
	pop {r3, r4, r5, r6, r7, pc}
_02243A1E:
	adds r0, r1, #0
	adds r0, #0xd
	cmp r5, r0
	bgt _02243A2E
	adds r1, #0xd
	cmp r5, r1
	beq _02243A80
	pop {r3, r4, r5, r6, r7, pc}
_02243A2E:
	adds r1, #0xc8
	cmp r5, r1
	beq _02243A86
	pop {r3, r4, r5, r6, r7, pc}
_02243A36:
	movs r0, #1
	strb r0, [r4, #6]
	pop {r3, r4, r5, r6, r7, pc}
_02243A3C:
	movs r0, #0xff
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02243A42:
	movs r0, #0
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02243A48:
	lsls r5, r7, #2
	ldr r0, [r6, r5]
	movs r1, #0xb1
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	ldr r0, [r6, r5]
	movs r1, #0xb2
	movs r2, #0
	bl FUN_02074470
	cmp r7, #7
	beq _02243A68
	cmp r0, #7
	bne _02243A6E
_02243A68:
	movs r0, #1
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02243A6E:
	movs r0, #0
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02243A74:
	movs r0, #1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02243A7A:
	movs r0, #0xa1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02243A80:
	movs r0, #1
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_02243A86:
	movs r0, #1
	strb r0, [r4, #6]
	ldr r0, _02243A94 @ =0x200400C0
	str r0, [r4]
_02243A8E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02243A90: .4byte 0x0000010B
_02243A94: .4byte 0x200400C0
	thumb_func_end ov17_022439C8

	thumb_func_start ov17_02243A98
ov17_02243A98: @ 0x02243A98
	cmp r2, #0
	bne _02243AA0
	movs r0, #0
	bx lr
_02243AA0:
	lsls r3, r1, #1
	adds r3, r0, r3
	ldrh r3, [r3, #0x26]
	cmp r2, r3
	bne _02243ABE
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, #0xe0
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	beq _02243ABE
	movs r0, #0
	bx lr
_02243ABE:
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov17_02243A98

	thumb_func_start ov17_02243AC4
ov17_02243AC4: @ 0x02243AC4
	push {r3, r4}
	adds r1, r0, r1
	ldrb r4, [r1, #0xe]
	movs r3, #0
	adds r2, r3, #0
_02243ACE:
	adds r1, r0, r2
	ldrb r1, [r1, #0xe]
	cmp r1, r4
	bne _02243AD8
	adds r3, r3, #1
_02243AD8:
	adds r2, r2, #1
	cmp r2, #4
	blt _02243ACE
	subs r0, r3, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_02243AC4

	thumb_func_start ov17_02243AE4
ov17_02243AE4: @ 0x02243AE4
	ldr r1, _02243AEC @ =0x022539AC
	ldrb r0, [r1, r0]
	bx lr
	nop
_02243AEC: .4byte 0x022539AC
	thumb_func_end ov17_02243AE4

	thumb_func_start ov17_02243AF0
ov17_02243AF0: @ 0x02243AF0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #0xb
	bl FUN_020790C4
	lsls r1, r4, #2
	adds r2, r4, r1
	ldr r1, _02243B08 @ =0x022539C8
	adds r1, r1, r2
	ldrsb r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_02243B08: .4byte 0x022539C8
	thumb_func_end ov17_02243AF0

	thumb_func_start ov17_02243B0C
ov17_02243B0C: @ 0x02243B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r3, #0
	mov lr, r0
	add r2, sp, #8
	add r1, sp, #4
	adds r7, r3, #0
	add r0, sp, #0
	movs r6, #0x1a
	b _02243B46
_02243B20:
	lsls r4, r3, #1
	mov r5, lr
	adds r5, r5, r4
	ldrsh r5, [r5, r6]
	strb r3, [r1, r3]
	strh r5, [r2, r4]
	adds r4, r7, #0
	b _02243B40
_02243B30:
	mov r5, lr
	adds r5, r5, r4
	ldrb r5, [r5, #1]
	cmp r3, r5
	bne _02243B3E
	strb r4, [r0, r3]
	b _02243B44
_02243B3E:
	adds r4, r4, #1
_02243B40:
	cmp r4, #4
	blt _02243B30
_02243B44:
	adds r3, r3, #1
_02243B46:
	cmp r3, #4
	blt _02243B20
	movs r3, #0
	ldr r6, _02243C1C @ =0x022539B8
	add r1, sp, #8
	ldr r0, _02243C20 @ =0x022539B0
	ldr r2, _02243C24 @ =0x022539C0
	movs r7, #0x2c
	b _02243BA8
_02243B58:
	adds r5, r3, #0
	muls r5, r7, r5
	mov r4, lr
	adds r4, r4, r5
	ldr r4, [r4, #0x58]
	lsls r5, r4, #0x1a
	lsrs r5, r5, #0x1e
	cmp r5, #3
	bhi _02243BA6
	adds r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_02243B76: @ jump table
	.2byte _02243BA6 - _02243B76 - 2 @ case 0
	.2byte _02243B7E - _02243B76 - 2 @ case 1
	.2byte _02243B8C - _02243B76 - 2 @ case 2
	.2byte _02243B9A - _02243B76 - 2 @ case 3
_02243B7E:
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x1e
	lsls r4, r4, #1
	ldrsh r5, [r2, r4]
	lsls r4, r3, #1
	strh r5, [r1, r4]
	b _02243BA6
_02243B8C:
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x1e
	lsls r4, r4, #1
	ldrsh r5, [r0, r4]
	lsls r4, r3, #1
	strh r5, [r1, r4]
	b _02243BA6
_02243B9A:
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x1e
	lsls r4, r4, #1
	ldrsh r5, [r6, r4]
	lsls r4, r3, #1
	strh r5, [r1, r4]
_02243BA6:
	adds r3, r3, #1
_02243BA8:
	cmp r3, #4
	blt _02243B58
	movs r3, #0
	b _02243BFE
_02243BB0:
	movs r4, #3
	add r2, sp, #8
	add r7, sp, #0
	b _02243BF8
_02243BB8:
	subs r1, r4, #1
	lsls r0, r1, #1
	lsls r5, r4, #1
	ldrsh r0, [r2, r0]
	ldrsh r5, [r2, r5]
	cmp r0, r5
	bgt _02243BD2
	cmp r0, r5
	bne _02243BF6
	ldrb r1, [r7, r1]
	ldrb r0, [r7, r4]
	cmp r1, r0
	bhs _02243BF6
_02243BD2:
	subs r0, r4, #1
	lsls r1, r4, #1
	lsls r5, r0, #1
	mov ip, r5
	ldrsh r6, [r2, r1]
	ldrsh r5, [r2, r5]
	strh r5, [r2, r1]
	mov r1, ip
	strh r6, [r2, r1]
	add r1, sp, #4
	ldrb r6, [r1, r4]
	ldrb r5, [r1, r0]
	strb r5, [r1, r4]
	strb r6, [r1, r0]
	ldrb r5, [r7, r4]
	ldrb r1, [r7, r0]
	strb r1, [r7, r4]
	strb r5, [r7, r0]
_02243BF6:
	subs r4, r4, #1
_02243BF8:
	cmp r4, r3
	bgt _02243BB8
	adds r3, r3, #1
_02243BFE:
	cmp r3, #3
	blt _02243BB0
	movs r3, #0
	add r2, sp, #4
	b _02243C12
_02243C08:
	ldrb r1, [r2, r3]
	mov r0, lr
	adds r0, r0, r3
	strb r1, [r0, #1]
	adds r3, r3, #1
_02243C12:
	cmp r3, #4
	blt _02243C08
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243C1C: .4byte 0x022539B8
_02243C20: .4byte 0x022539B0
_02243C24: .4byte 0x022539C0
	thumb_func_end ov17_02243B0C

	thumb_func_start ov17_02243C28
ov17_02243C28: @ 0x02243C28
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02243C60 @ =0x022539E4
	add r3, sp, #0
	str r1, [sp]
	movs r1, #0x16
	strh r1, [r3, #4]
	ldr r1, [r0]
	ldr r2, _02243C64 @ =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	subs r1, r2, #7
	ldr r4, [r0]
	adds r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	movs r1, #0xc3
	lsls r1, r1, #4
	adds r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02243C60: .4byte 0x022539E4
_02243C64: .4byte 0x00000123
	thumb_func_end ov17_02243C28

	thumb_func_start ov17_02243C68
ov17_02243C68: @ 0x02243C68
	push {r3, lr}
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	movs r3, #0
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243C68

	thumb_func_start ov17_02243C80
ov17_02243C80: @ 0x02243C80
	push {r3, lr}
	movs r0, #0xc3
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r2, #0
	movs r2, #0
	adds r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	thumb_func_end ov17_02243C80

	thumb_func_start ov17_02243C94
ov17_02243C94: @ 0x02243C94
	bx lr
	.align 2, 0
	thumb_func_end ov17_02243C94

	thumb_func_start ov17_02243C98
ov17_02243C98: @ 0x02243C98
	push {r3, lr}
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	movs r3, #0
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243C98

	thumb_func_start ov17_02243CB0
ov17_02243CB0: @ 0x02243CB0
	push {r3, r4, r5, lr}
	ldr r0, _02243CD8 @ =0x00001650
	adds r5, r1, #0
	movs r1, #1
	strb r1, [r5, r0]
	ldr r0, [r5]
	adds r4, r2, #0
	bl FUN_02094EDC
	cmp r0, #0
	bne _02243CD6
	movs r0, #0xc3
	lsls r0, r0, #4
	movs r2, #0
	adds r0, r5, r0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov17_0224F26C
_02243CD6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02243CD8: .4byte 0x00001650
	thumb_func_end ov17_02243CB0

	thumb_func_start ov17_02243CDC
ov17_02243CDC: @ 0x02243CDC
	push {r3, lr}
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	movs r3, #0
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243CDC

	thumb_func_start ov17_02243CF4
ov17_02243CF4: @ 0x02243CF4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r0, #0x15
	movs r1, #0x10
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	str r6, [r4]
	ldrh r0, [r5]
	ldr r2, _02243D2C @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02243D30 @ =ov17_02243D34
	bl FUN_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_02243D2C: .4byte 0x00007530
_02243D30: .4byte ov17_02243D34
	thumb_func_end ov17_02243CF4

	thumb_func_start ov17_02243D34
ov17_02243D34: @ 0x02243D34
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	ldrb r1, [r4, #0xf]
	adds r5, r0, #0
	cmp r1, #0
	beq _02243D4C
	cmp r1, #1
	beq _02243D6A
	cmp r1, #2
	beq _02243D84
	b _02243D92
_02243D4C:
	movs r1, #0
	adds r0, r4, #0
	str r1, [sp]
	adds r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	movs r3, #0x46
	bl ov17_022431A0
	ldrb r0, [r4, #0xf]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_02243D6A:
	ldrh r0, [r4, #0xc]
	adds r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	cmp r0, #0x1e
	bls _02243DB0
	movs r0, #0
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_02243D84:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _02243DB0
	adds r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_02243D92:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02243DB0:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02243D34

	thumb_func_start ov17_02243DB4
ov17_02243DB4: @ 0x02243DB4
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243DB4

	thumb_func_start ov17_02243DCC
ov17_02243DCC: @ 0x02243DCC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r0, #0x15
	movs r1, #0x1c
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02243E24 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	adds r0, r6, #0
	adds r0, #0xe4
	ldrb r0, [r0]
	strb r0, [r4, #0x18]
	adds r0, r6, #0
	adds r0, #0xd8
	ldrh r0, [r0]
	strh r0, [r4, #0x12]
	adds r0, r6, #0
	adds r0, #0xda
	ldrh r0, [r0]
	adds r6, #0xdc
	strh r0, [r4, #0x14]
	ldrh r0, [r6]
	strh r0, [r4, #0x16]
	ldr r0, _02243E28 @ =ov17_02243E2C
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243E24: .4byte 0x00007530
_02243E28: .4byte ov17_02243E2C
	thumb_func_end ov17_02243DCC

	thumb_func_start ov17_02243E2C
ov17_02243E2C: @ 0x02243E2C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bhi _02243ED2
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02243E46: @ jump table
	.2byte _02243E50 - _02243E46 - 2 @ case 0
	.2byte _02243E72 - _02243E46 - 2 @ case 1
	.2byte _02243E8C - _02243E46 - 2 @ case 2
	.2byte _02243EA6 - _02243E46 - 2 @ case 3
	.2byte _02243EC4 - _02243E46 - 2 @ case 4
_02243E50:
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	beq _02243E62
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0x12
	movs r3, #0
	bl ov17_02242E5C
_02243E62:
	ldr r0, _02243EF4 @ =0x000006F9
	bl FUN_02005748
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243E72:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _02243E82
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02243EF0
_02243E82:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243E8C:
	ldrh r0, [r4, #0xe]
	adds r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xe]
	cmp r0, #0x1e
	bls _02243EF0
	movs r0, #0
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243EA6:
	movs r1, #0
	adds r0, r4, #0
	str r1, [sp]
	adds r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	movs r3, #0x46
	bl ov17_022431A0
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243EC4:
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _02243EF0
	adds r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02243ED2:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02243EF0:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_02243EF4: .4byte 0x000006F9
	thumb_func_end ov17_02243E2C

	thumb_func_start ov17_02243EF8
ov17_02243EF8: @ 0x02243EF8
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02243EF8

	thumb_func_start ov17_02243F10
ov17_02243F10: @ 0x02243F10
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r0, #0x15
	movs r1, #0x1c
	adds r5, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r6, [r4]
	ldrh r0, [r5]
	adds r2, r4, #0
	movs r1, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	adds r2, #0x16
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r7]
	strb r0, [r4, #0x15]
	adds r0, r6, #0
	bl ov17_022426E8
	ldr r0, _02243F60 @ =ov17_02243F68
	ldr r2, _02243F64 @ =0x00007530
	adds r1, r4, #0
	bl FUN_0200D9E8
	adds r0, r6, #0
	bl ov17_02242DA8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243F60: .4byte ov17_02243F68
_02243F64: .4byte 0x00007530
	thumb_func_end ov17_02243F10

	thumb_func_start ov17_02243F68
ov17_02243F68: @ 0x02243F68
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_020765AC
	adds r5, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bls _02243F88
	b _02244092
_02243F88:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02243F94: @ jump table
	.2byte _02243F9C - _02243F94 - 2 @ case 0
	.2byte _02243FB8 - _02243F94 - 2 @ case 1
	.2byte _0224401A - _02243F94 - 2 @ case 2
	.2byte _02244034 - _02243F94 - 2 @ case 3
_02243F9C:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x18]
	ldrsh r0, [r4, r0]
	cmp r0, #0xa
	bgt _02243FAC
	b _022440B6
_02243FAC:
	movs r0, #0
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x14]
	adds r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_02243FB8:
	ldrb r0, [r4, #0x15]
	movs r1, #0
	lsls r5, r0, #2
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, r5]
	bl FUN_020765AC
	adds r6, r0, #0
	ldr r0, [r4]
	movs r1, #0x25
	adds r0, r0, r5
	ldr r0, [r0, #0x14]
	movs r2, #0
	bl FUN_02007DEC
	ldr r0, [r4]
	movs r1, #6
	adds r0, r0, r5
	ldr r0, [r0, #0x14]
	movs r2, #0
	bl FUN_02007DEC
	ldr r0, [r4]
	movs r2, #1
	adds r0, r0, r5
	ldr r0, [r0, #0x14]
	movs r1, #0
	lsls r2, r2, #8
	bl FUN_02007DEC
	ldr r0, [r4]
	adds r6, #0xac
	adds r0, r0, r5
	ldr r0, [r0, #0x14]
	movs r1, #1
	adds r2, r6, #0
	bl FUN_02007DEC
	movs r0, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	movs r0, #0x2b
	lsls r0, r0, #0xa
	str r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	adds r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224401A:
	ldr r0, [r4]
	ldrb r2, [r4, #0x15]
	ldr r1, [r0]
	ldr r0, _022440B8 @ =0x00000123
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _0224402E
	ldr r0, _022440BC @ =0x000006F8
	bl FUN_02005748
_0224402E:
	ldrb r0, [r4, #0x14]
	adds r0, r0, #1
	strb r0, [r4, #0x14]
_02244034:
	ldr r1, [r4, #0xc]
	ldr r0, _022440C0 @ =0x000005B6
	subs r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, _022440C4 @ =0x00000892
	subs r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	cmp r0, #0xd8
	ble _02244054
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, #0x70
	bgt _02244066
_02244054:
	movs r0, #0x36
	lsls r0, r0, #0xa
	str r0, [r4, #0xc]
	movs r0, #7
	lsls r0, r0, #0xc
	str r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	adds r0, r0, #1
	strb r0, [r4, #0x14]
_02244066:
	ldrb r0, [r4, #0x15]
	ldr r2, [r4, #0xc]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldrb r0, [r4, #0x15]
	ldr r2, [r4, #0x10]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	asrs r2, r2, #8
	ldr r0, [r0, #0x14]
	movs r1, #1
	adds r2, r2, r5
	bl FUN_02007DEC
	pop {r4, r5, r6, pc}
_02244092:
	ldrb r0, [r4, #0x16]
	cmp r0, #1
	bne _022440B6
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r6, #0
	bl FUN_0200DA58
_022440B6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_022440B8: .4byte 0x00000123
_022440BC: .4byte 0x000006F8
_022440C0: .4byte 0x000005B6
_022440C4: .4byte 0x00000892
	thumb_func_end ov17_02243F68

	thumb_func_start ov17_022440C8
ov17_022440C8: @ 0x022440C8
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_022440C8

	thumb_func_start ov17_022440E0
ov17_022440E0: @ 0x022440E0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r0, #0x15
	movs r1, #0x1c
	adds r5, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r6, [r4]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r7]
	strb r0, [r4, #0x15]
	ldr r1, [r6, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_020765AC
	movs r0, #0x36
	lsls r0, r0, #0xa
	str r0, [r4, #0xc]
	movs r0, #7
	lsls r0, r0, #0xc
	str r0, [r4, #0x10]
	ldr r0, _02244134 @ =ov17_0224413C
	ldr r2, _02244138 @ =0x00007530
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02244134: .4byte ov17_0224413C
_02244138: .4byte 0x00007530
	thumb_func_end ov17_022440E0

	thumb_func_start ov17_0224413C
ov17_0224413C: @ 0x0224413C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	ldrb r0, [r5, #0x15]
	movs r1, #0
	lsls r4, r0, #2
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, r4]
	bl FUN_020765AC
	adds r6, r0, #0
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _02244160
	cmp r0, #1
	beq _022441D2
	b _022441FA
_02244160:
	ldr r1, [r5, #0xc]
	ldr r0, _0224421C @ =0x000005B6
	adds r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, _02244220 @ =0x00000892
	adds r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #8
	movs r0, #1
	lsls r0, r0, #8
	cmp r1, r0
	bge _02244184
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	cmp r0, #0xac
	blt _022441A6
_02244184:
	ldr r0, [r5]
	movs r1, #0x25
	adds r0, r0, r4
	ldr r0, [r0, #0x14]
	movs r2, #1
	bl FUN_02007DEC
	ldr r0, [r5]
	movs r1, #6
	adds r0, r0, r4
	ldr r0, [r0, #0x14]
	movs r2, #1
	bl FUN_02007DEC
	ldrb r0, [r5, #0x14]
	adds r0, r0, #1
	strb r0, [r5, #0x14]
_022441A6:
	ldrb r0, [r5, #0x15]
	ldr r2, [r5, #0xc]
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldrb r0, [r5, #0x15]
	ldr r2, [r5, #0x10]
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	asrs r2, r2, #8
	ldr r0, [r0, #0x14]
	movs r1, #1
	adds r2, r2, r6
	bl FUN_02007DEC
	pop {r3, r4, r5, r6, r7, pc}
_022441D2:
	ldrb r1, [r5, #0x15]
	ldr r0, [r5]
	ldr r2, _02244224 @ =0x00001652
	adds r3, r0, r1
	ldrb r2, [r3, r2]
	cmp r2, #1
	bne _022441F2
	adds r0, #0xc
	bl ov17_02241524
	ldrb r0, [r5, #0x15]
	ldr r1, [r5]
	movs r2, #0
	adds r1, r1, r0
	ldr r0, _02244224 @ =0x00001652
	strb r2, [r1, r0]
_022441F2:
	ldrb r0, [r5, #0x14]
	adds r0, r0, #1
	strb r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_022441FA:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r7, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224421C: .4byte 0x000005B6
_02244220: .4byte 0x00000892
_02244224: .4byte 0x00001652
	thumb_func_end ov17_0224413C

	thumb_func_start ov17_02244228
ov17_02244228: @ 0x02244228
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244228

	thumb_func_start ov17_02244240
ov17_02244240: @ 0x02244240
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r0, #0x15
	movs r1, #0x1c
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r6]
	ldr r2, _022442A4 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #2]
	strb r0, [r4, #0xe]
	adds r0, r5, #0
	adds r0, #0xe4
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0xd8
	ldrh r0, [r0]
	strh r0, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0xda
	ldrh r0, [r0]
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x10]
	ldr r0, _022442A8 @ =ov17_022442AC
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022442A4: .4byte 0x00007530
_022442A8: .4byte ov17_022442AC
	thumb_func_end ov17_02244240

	thumb_func_start ov17_022442AC
ov17_022442AC: @ 0x022442AC
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bhi _022443BA
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022442C6: @ jump table
	.2byte _022442D8 - _022442C6 - 2 @ case 0
	.2byte _02244314 - _022442C6 - 2 @ case 1
	.2byte _02244322 - _022442C6 - 2 @ case 2
	.2byte _0224432A - _022442C6 - 2 @ case 3
	.2byte _0224434E - _022442C6 - 2 @ case 4
	.2byte _02244362 - _022442C6 - 2 @ case 5
	.2byte _0224436A - _022442C6 - 2 @ case 6
	.2byte _0224438E - _022442C6 - 2 @ case 7
	.2byte _0224439C - _022442C6 - 2 @ case 8
_022442D8:
	ldrb r0, [r4, #0xd]
	ldr r1, [r4]
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _022443DC @ =0x00000242
	ldrsh r0, [r1, r0]
	bl ov17_02243174
	adds r3, r0, #0
	cmp r3, #0
	ble _02244302
	movs r1, #0
	adds r0, r4, #0
	str r1, [sp]
	adds r0, #0x12
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	bl ov17_022431A0
	b _0224430A
_02244302:
	movs r0, #2
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224430A:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244314:
	ldrb r1, [r4, #0x12]
	cmp r1, #1
	bne _022443D8
	adds r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244322:
	adds r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224432A:
	ldrb r1, [r4, #0x1a]
	cmp r1, #0
	beq _02244346
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0x14
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244346:
	movs r0, #5
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224434E:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022443D8
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244362:
	adds r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224436A:
	ldr r0, [r4]
	ldrb r1, [r4, #0xe]
	ldrb r2, [r4, #0x10]
	adds r0, #0xc
	bl ov17_02241A8C
	adds r3, r4, #0
	ldrb r1, [r4, #0xe]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4]
	adds r3, #0xf
	bl ov17_02241B3C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224438E:
	ldrb r1, [r4, #0xf]
	cmp r1, #1
	bne _022443D8
	adds r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224439C:
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	cmp r0, #5
	bls _022443D8
	ldr r0, [r4]
	adds r0, #0xc
	bl ov17_02241B1C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022443BA:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_022443D8:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022443DC: .4byte 0x00000242
	thumb_func_end ov17_022442AC

	thumb_func_start ov17_022443E0
ov17_022443E0: @ 0x022443E0
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_022443E0

	thumb_func_start ov17_022443F8
ov17_022443F8: @ 0x022443F8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r1, #0x49
	movs r0, #0x15
	lsls r1, r1, #2
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r2, #0x49
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r6]
	adds r3, r4, #0
	adds r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r1, [r5]
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	adds r1, r5, r2
	ldrh r1, [r1, #0x10]
	strh r1, [r4, #0xe]
	adds r1, r5, #0
	adds r1, #0xe4
	ldrb r2, [r1]
	adds r1, r0, #0
	adds r1, #0xe2
	strb r2, [r4, r1]
	adds r1, r5, #0
	adds r1, #0xd8
	ldrh r2, [r1]
	adds r1, r0, #0
	adds r1, #0xdc
	strh r2, [r4, r1]
	adds r1, r5, #0
	adds r1, #0xda
	ldrh r2, [r1]
	adds r1, r0, #0
	adds r1, #0xde
	strh r2, [r4, r1]
	adds r1, r5, #0
	adds r1, #0xdc
	ldrh r2, [r1]
	adds r1, r0, #0
	adds r1, #0xe0
	strh r2, [r4, r1]
	adds r1, r5, #0
	adds r1, #0xe5
	ldrb r2, [r1]
	adds r1, r0, #0
	adds r1, #0xea
	strb r2, [r4, r1]
	adds r1, r5, #0
	adds r1, #0xde
	ldrh r2, [r1]
	adds r1, r0, #0
	adds r1, #0xe4
	strh r2, [r4, r1]
	adds r1, r5, #0
	adds r1, #0xe0
	ldrh r2, [r1]
	adds r1, r0, #0
	adds r1, #0xe6
	strh r2, [r4, r1]
	adds r1, r5, #0
	adds r1, #0xe2
	ldrh r1, [r1]
	adds r0, #0xe8
	movs r2, #0x1e
	strh r1, [r4, r0]
_0224449E:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224449E
	ldr r0, [r5]
	adds r1, r4, #0
	str r0, [r3]
	ldr r0, _022444B8 @ =ov17_022444BC
	movs r2, #5
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022444B8: .4byte ov17_022444BC
	thumb_func_end ov17_022443F8

	thumb_func_start ov17_022444BC
ov17_022444BC: @ 0x022444BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x118
	adds r4, r1, #0
	ldrb r1, [r4, #0xd]
	adds r6, r0, #0
	adds r2, r4, #0
	movs r5, #0x2c
	adds r0, r1, #0
	adds r2, #0x24
	muls r0, r5, r0
	adds r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xe
	bls _022444DA
	b _0224492A
_022444DA:
	adds r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022444E6: @ jump table
	.2byte _02244504 - _022444E6 - 2 @ case 0
	.2byte _0224452C - _022444E6 - 2 @ case 1
	.2byte _02244540 - _022444E6 - 2 @ case 2
	.2byte _02244548 - _022444E6 - 2 @ case 3
	.2byte _0224456E - _022444E6 - 2 @ case 4
	.2byte _02244582 - _022444E6 - 2 @ case 5
	.2byte _0224458A - _022444E6 - 2 @ case 6
	.2byte _022445B2 - _022444E6 - 2 @ case 7
	.2byte _022445C8 - _022444E6 - 2 @ case 8
	.2byte _022445D0 - _022444E6 - 2 @ case 9
	.2byte _022445E4 - _022444E6 - 2 @ case 10
	.2byte _02244890 - _022444E6 - 2 @ case 11
	.2byte _022448E6 - _022444E6 - 2 @ case 12
	.2byte _02244906 - _022444E6 - 2 @ case 13
	.2byte _0224491C - _022444E6 - 2 @ case 14
_02244504:
	adds r0, r5, #0
	adds r0, #0xe2
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02244524
	adds r5, #0xdc
	ldr r0, [r4]
	adds r2, r4, r5
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244524:
	movs r0, #2
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224452C:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022445BC
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244540:
	adds r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244548:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02244566
	movs r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4]
	adds r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244566:
	movs r0, #5
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224456E:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022445BC
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244582:
	adds r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224458A:
	adds r0, r5, #0
	adds r0, #0xea
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _022445AA
	adds r5, #0xdc
	ldr r0, [r4]
	adds r2, r4, r5
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445AA:
	movs r0, #8
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445B2:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	beq _022445BE
_022445BC:
	b _02244948
_022445BE:
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445C8:
	adds r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022445D0:
	ldr r0, [r4]
	ldrh r2, [r4, #0xe]
	adds r5, #0xec
	ldr r0, [r0]
	adds r3, r4, r5
	bl ov17_022439C8
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_022445E4:
	ldrb r0, [r4, #0xd]
	adds r5, r0, #1
	cmp r5, #4
	blt _022445EE
	movs r5, #0
_022445EE:
	add r0, sp, #0xc0
	movs r1, #0
	movs r2, #0x58
	blx FUN_020C4CF4
	add r0, sp, #0x30
	movs r1, #0
	movs r2, #0x90
	blx FUN_020C4CF4
	ldr r0, [r4]
	movs r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #5
	bl FUN_02074470
	adds r7, r0, #0
	ldr r0, [r4]
	movs r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0x6f
	bl FUN_02074470
	str r0, [sp, #0x28]
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02075E0C
	str r0, [sp, #0x20]
	ldr r0, [r4]
	movs r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0x70
	bl FUN_02074470
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	adds r2, r1, #0
	bl FUN_02074470
	str r0, [sp, #8]
	ldr r0, [r4]
	lsls r5, r5, #2
	ldr r0, [r0, #0xc]
	movs r1, #5
	ldr r0, [r0, r5]
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x18]
	ldr r0, [r4]
	movs r1, #0x6f
	ldr r0, [r0, #0xc]
	movs r2, #0
	ldr r0, [r0, r5]
	bl FUN_02074470
	str r0, [sp, #0x14]
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, r5]
	bl FUN_02075E0C
	str r0, [sp, #0x10]
	ldr r0, [r4]
	movs r1, #0x70
	ldr r0, [r0, #0xc]
	movs r2, #0
	ldr r0, [r0, r5]
	bl FUN_02074470
	str r0, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #0xc]
	adds r2, r1, #0
	ldr r0, [r0, r5]
	bl FUN_02074470
	movs r3, #0x47
	movs r1, #0
	add r2, sp, #0xc0
	strb r1, [r2]
	strb r1, [r2, #1]
	lsls r3, r3, #2
	str r0, [sp, #4]
	ldrh r0, [r4, r3]
	movs r5, #0xa
	strh r0, [r2, #2]
	movs r0, #1
	str r0, [sp, #0xc4]
	strh r5, [r2, #8]
	adds r5, r3, #3
	ldrb r5, [r4, r5]
	adds r3, r3, #4
	strh r5, [r2, #0xa]
	ldrb r3, [r4, r3]
	strh r3, [r2, #0xc]
	str r1, [sp, #0xd0]
	strh r1, [r2, #0x14]
	strh r0, [r2, #0x16]
	movs r0, #9
	str r0, [sp, #0x114]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
_022446E2:
	adds r1, r1, #1
	strh r0, [r2, #0x18]
	adds r2, r2, #2
	cmp r1, #4
	blt _022446E2
	ldr r0, [sp, #0x18]
	add r1, sp, #0xc0
	strh r0, [r1, #0x1a]
	ldr r0, [r4]
	lsls r3, r7, #0x10
	ldr r0, [r0, #0x30]
	lsrs r3, r3, #0x10
	str r0, [sp, #0x34]
	ldr r0, [r4]
	str r3, [sp, #0x2c]
	ldr r0, [r0, #0x5c]
	ldr r3, [sp, #0x28]
	str r0, [sp, #0x38]
	ldrb r0, [r4, #0xd]
	lsls r3, r3, #0x18
	ldr r1, [r4]
	lsrs r3, r3, #0x18
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x20]
	adds r1, #0x64
	lsls r0, r0, #4
	adds r0, r1, r0
	lsls r3, r3, #0x18
	str r0, [sp, #0x3c]
	ldr r0, [r4]
	lsrs r3, r3, #0x18
	mov ip, r3
	ldr r3, [sp, #0x1c]
	adds r0, #0xa4
	str r0, [sp, #0x40]
	add r0, sp, #0x30
	lsls r3, r3, #0x18
	movs r6, #0
	adds r1, r0, #0
	adds r2, r0, #0
	lsrs r7, r3, #0x18
_02244734:
	movs r3, #0xff
	strb r3, [r0, #0x1c]
	ldr r3, [sp, #0x2c]
	adds r5, r0, #0
	strh r3, [r1, #0x34]
	ldr r3, [sp, #0x24]
	adds r5, #0x3c
	strb r3, [r5]
	adds r5, r0, #0
	adds r5, #0x40
	mov r3, ip
	strb r3, [r5]
	adds r3, r0, #0
	adds r3, #0x44
	strb r7, [r3]
	ldr r3, [sp, #8]
	adds r6, r6, #1
	str r3, [r2, #0x48]
	movs r3, #0
	str r3, [r2, #0x58]
	adds r0, r0, #1
	adds r1, r1, #2
	adds r2, r2, #4
	cmp r6, #4
	blt _02244734
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	add r2, sp, #0x30
	str r0, [sp, #0x88]
	adds r0, r3, #0
	strb r0, [r2, #0x1c]
	movs r0, #1
	ldr r1, [sp, #0x18]
	strb r0, [r2, #0x1d]
	strh r1, [r2, #0x36]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x50
	strb r1, [r2, #0x1d]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x70
	strb r1, [r2, #1]
	ldr r1, [sp, #0xc]
	strb r1, [r2, #5]
	ldr r1, [sp, #4]
	str r1, [sp, #0x7c]
	ldrb r1, [r4, #0xd]
	ldr r2, [r4]
	lsls r1, r1, #2
	adds r1, r2, r1
	ldr r1, [r1, #0x14]
	str r1, [sp, #0x50]
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _022447A4
	adds r0, r3, #0
_022447A4:
	lsls r5, r0, #2
	ldr r0, [r4]
	movs r2, #0x57
	adds r0, r0, r5
	ldr r0, [r0, #0x14]
	movs r1, #8
	str r1, [sp, #0x98]
	movs r1, #0x2d
	str r1, [sp, #0x9c]
	movs r1, #1
	str r1, [sp, #0xa0]
	movs r1, #0x1e
	str r0, [sp, #0x54]
	movs r0, #0
	str r1, [sp, #0xa4]
	movs r1, #2
	str r0, [sp, #0x60]
	str r0, [sp, #0xac]
	movs r0, #3
	str r1, [sp, #0xa8]
	str r0, [sp, #0xb0]
	ldr r0, [r4]
	lsls r2, r2, #2
	ldr r0, [r0, #0x24]
	add r3, sp, #0x30
	str r0, [sp, #0x30]
	ldr r0, [r4]
	ldr r1, [r0]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, r2]
	subs r2, #0x40
	str r0, [sp, #0xb4]
	ldr r0, [r4]
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0x2c]
	add r1, sp, #0xc0
	bl FUN_0221FE30
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_020765AC
	adds r6, r0, #0
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0224494C @ =0xDFFBFF3F
	cmp r1, r0
	beq _02244824
	ldrb r0, [r4, #0xd]
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #6
	bl FUN_02007DEC
_02244824:
	ldrb r0, [r4, #0xd]
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #0x25
	bl FUN_02007DEC
	ldrb r0, [r4, #0xd]
	ldr r1, [r4]
	movs r2, #0xd8
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #0
	bl FUN_02007DEC
	ldrb r0, [r4, #0xd]
	adds r6, #0x70
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #1
	adds r2, r6, #0
	bl FUN_02007DEC
	ldr r0, [r4]
	movs r1, #0x25
	adds r0, r0, r5
	ldr r0, [r0, #0x14]
	movs r2, #1
	bl FUN_02007DEC
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, r5
	ldr r0, [r0, #0x14]
	movs r2, #0x50
	bl FUN_02007DEC
	ldr r0, [r4]
	movs r1, #1
	adds r0, r0, r5
	ldr r0, [r0, #0x14]
	movs r2, #0x2a
	bl FUN_02007DEC
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244890:
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl FUN_0222016C
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl FUN_02220188
	cmp r0, #0
	bne _02244948
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl FUN_02220198
	adds r1, r5, #0
	adds r1, #0xf2
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _022448DC
	subs r0, r0, #1
	strb r0, [r4, r1]
	adds r0, r1, #1
	ldrb r0, [r4, r0]
	adds r2, r0, #1
	adds r0, r1, #1
	strb r2, [r4, r0]
	subs r0, r1, #6
	ldr r2, [r4, r0]
	ldr r0, _02244950 @ =0x200400C0
	cmp r2, r0
	bne _022448D4
	ldr r2, _0224494C @ =0xDFFBFF3F
	subs r0, r1, #6
	str r2, [r4, r0]
_022448D4:
	movs r0, #0xa
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022448DC:
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022448E6:
	adds r5, #0xf0
	ldrh r0, [r4, r5]
	cmp r0, #0x90
	beq _022448F2
	cmp r0, #0xa4
	bne _022448FC
_022448F2:
	ldr r0, [r4]
	movs r2, #1
	adds r1, r0, r1
	ldr r0, _02244954 @ =0x00001652
	strb r2, [r1, r0]
_022448FC:
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244906:
	adds r2, r4, #0
	ldr r0, [r4]
	movs r1, #1
	adds r2, #0x10
	bl ov17_022426E8
	ldrb r0, [r4, #0xc]
	add sp, #0x118
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224491C:
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _02244948
	adds r0, r0, #1
	add sp, #0x118
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224492A:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r6, #0
	bl FUN_0200DA58
_02244948:
	add sp, #0x118
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224494C: .4byte 0xDFFBFF3F
_02244950: .4byte 0x200400C0
_02244954: .4byte 0x00001652
	thumb_func_end ov17_022444BC

	thumb_func_start ov17_02244958
ov17_02244958: @ 0x02244958
	push {r3, lr}
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	movs r3, #0
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244958

	thumb_func_start ov17_02244970
ov17_02244970: @ 0x02244970
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r0, #0x15
	movs r1, #0x14
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	str r6, [r4]
	ldrh r0, [r5]
	movs r2, #0x64
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r1, [r6, #0xc]
	ldr r0, _022449B0 @ =0x00000123
	ldrb r0, [r1, r0]
	adds r1, r4, #0
	strb r0, [r4, #0xd]
	ldr r0, _022449B4 @ =ov17_022449B8
	bl FUN_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_022449B0: .4byte 0x00000123
_022449B4: .4byte ov17_022449B8
	thumb_func_end ov17_02244970

	thumb_func_start ov17_022449B8
ov17_022449B8: @ 0x022449B8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xa
	bls _022449C8
	b _02244B56
_022449C8:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022449D4: @ jump table
	.2byte _022449EA - _022449D4 - 2 @ case 0
	.2byte _02244A04 - _022449D4 - 2 @ case 1
	.2byte _02244A62 - _022449D4 - 2 @ case 2
	.2byte _02244A72 - _022449D4 - 2 @ case 3
	.2byte _02244AAC - _022449D4 - 2 @ case 4
	.2byte _02244AC0 - _022449D4 - 2 @ case 5
	.2byte _02244AC6 - _022449D4 - 2 @ case 6
	.2byte _02244AFA - _022449D4 - 2 @ case 7
	.2byte _02244B0A - _022449D4 - 2 @ case 8
	.2byte _02244B2E - _022449D4 - 2 @ case 9
	.2byte _02244B50 - _022449D4 - 2 @ case 10
_022449EA:
	ldr r1, [r4]
	ldr r0, _02244BA0 @ =0x0000081C
	movs r2, #0
	ldr r0, [r1, r0]
	movs r1, #1
	adds r3, r2, #0
	bl ov17_0223F9C4
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244A04:
	ldr r1, [r4]
	ldr r0, _02244BA0 @ =0x0000081C
	movs r2, #0
	ldr r0, [r1, r0]
	movs r1, #2
	adds r3, r2, #0
	bl ov17_0223F9C4
	movs r0, #0x23
	ldr r1, [r4]
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	adds r2, r0, #1
	cmp r2, #4
	bne _02244A26
	movs r1, #3
	b _02244A28
_02244A26:
	movs r1, #2
_02244A28:
	add r0, sp, #0
	strb r2, [r0, #0xa]
	add r2, sp, #4
	ldr r0, [r4]
	adds r2, #2
	movs r3, #0
	bl ov17_02242E5C
	movs r0, #0x23
	ldr r1, [r4]
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	adds r0, r0, #1
	cmp r0, #4
	bne _02244A58
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _02244A58
	ldr r0, _02244BA4 @ =0x000006F6
	bl FUN_02005748
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
_02244A58:
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244A62:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02244A86
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244A72:
	ldr r1, [r4]
	ldr r0, _02244BA0 @ =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FAF8
	adds r1, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	bne _02244A88
_02244A86:
	b _02244B9C
_02244A88:
	ldr r0, [r4]
	adds r1, #0x36
	ldr r2, [r0, #0xc]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x10]
	ldr r0, _02244BA8 @ =0x000005DD
	bl FUN_02005748
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244AAC:
	ldr r1, [r4]
	ldr r0, _02244BA0 @ =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FBC0
	cmp r0, #0
	beq _02244B9C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244AC0:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244AC6:
	ldr r1, [r4]
	ldr r0, _02244BA0 @ =0x0000081C
	movs r2, #0
	ldr r0, [r1, r0]
	movs r1, #3
	adds r3, r2, #0
	bl ov17_0223F9C4
	movs r0, #0x23
	ldr r1, [r4]
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	add r2, sp, #0
	movs r3, #0
	adds r1, r0, #1
	add r0, sp, #0
	strb r1, [r0, #4]
	ldr r0, [r4]
	movs r1, #1
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244AFA:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02244B9C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244B0A:
	ldr r1, [r4]
	ldr r0, _02244BA0 @ =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FAF8
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02244B9C
	strh r0, [r4, #0x12]
	ldr r0, _02244BA8 @ =0x000005DD
	bl FUN_02005748
	ldrb r0, [r4, #0xc]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244B2E:
	ldr r1, [r4]
	ldr r0, _02244BA0 @ =0x0000081C
	ldr r0, [r1, r0]
	bl ov17_0223FBC0
	cmp r0, #0
	beq _02244B9C
	ldrh r0, [r4, #0x12]
	cmp r0, #3
	bne _02244B4A
	movs r0, #1
	add sp, #0xc
	strb r0, [r4, #0xc]
	pop {r4, r5, pc}
_02244B4A:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244B50:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244B56:
	ldr r0, [r4]
	ldr r1, _02244BAC @ =0x00000171
	ldr r2, [r0]
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _02244B6C
	movs r2, #0
	movs r1, #0x2e
	adds r3, r2, #0
	bl ov17_02242E5C
_02244B6C:
	movs r0, #0xc3
	adds r2, r4, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r2, #0x10
	movs r3, #4
	bl ov17_0224F26C
	ldr r1, [r4]
	ldr r0, _02244BA0 @ =0x0000081C
	ldr r0, [r1, r0]
	movs r1, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov17_0223F9C4
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02244B9C:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02244BA0: .4byte 0x0000081C
_02244BA4: .4byte 0x000006F6
_02244BA8: .4byte 0x000005DD
_02244BAC: .4byte 0x00000171
	thumb_func_end ov17_022449B8

	thumb_func_start ov17_02244BB0
ov17_02244BB0: @ 0x02244BB0
	push {r4, r5}
	ldr r0, [sp, #8]
	lsls r2, r0, #2
	ldr r5, [r3, r2]
	lsls r2, r0, #1
	ldrh r4, [r5]
	adds r3, r1, r2
	ldr r2, _02244BD0 @ =0x00000236
	adds r0, r1, r0
	strh r4, [r3, r2]
	ldrh r3, [r5, #2]
	adds r2, #8
	strb r3, [r0, r2]
	pop {r4, r5}
	bx lr
	nop
_02244BD0: .4byte 0x00000236
	thumb_func_end ov17_02244BB0

	thumb_func_start ov17_02244BD4
ov17_02244BD4: @ 0x02244BD4
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244BD4

	thumb_func_start ov17_02244BEC
ov17_02244BEC: @ 0x02244BEC
	bx lr
	.align 2, 0
	thumb_func_end ov17_02244BEC

	thumb_func_start ov17_02244BF0
ov17_02244BF0: @ 0x02244BF0
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244BF0

	thumb_func_start ov17_02244C08
ov17_02244C08: @ 0x02244C08
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x15
	adds r7, r1, #0
	adds r1, r0, #0
	adds r1, #0xff
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r2, #0x45
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r6]
	adds r3, r4, #0
	adds r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	movs r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02244C46:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02244C46
	ldr r0, [r5]
	ldr r2, _02244C60 @ =0x00007530
	str r0, [r3]
	ldr r0, _02244C64 @ =ov17_02244C68
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244C60: .4byte 0x00007530
_02244C64: .4byte ov17_02244C68
	thumb_func_end ov17_02244C08

	thumb_func_start ov17_02244C68
ov17_02244C68: @ 0x02244C68
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #0xd]
	adds r5, r0, #0
	adds r3, r4, #0
	adds r2, r1, #0
	movs r0, #0x2c
	ldrb r1, [r4, #0xc]
	adds r3, #0x24
	muls r2, r0, r2
	adds r2, r3, r2
	cmp r1, #4
	bhi _02244D00
	adds r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_02244C8E: @ jump table
	.2byte _02244C98 - _02244C8E - 2 @ case 0
	.2byte _02244CA8 - _02244C8E - 2 @ case 1
	.2byte _02244CAE - _02244C8E - 2 @ case 2
	.2byte _02244CE6 - _02244C8E - 2 @ case 3
	.2byte _02244D00 - _02244C8E - 2 @ case 4
_02244C98:
	movs r0, #0x1a
	ldrsh r1, [r2, r0]
	adds r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CA8:
	adds r0, r1, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CAE:
	adds r0, #0xdc
	movs r3, #0x18
	ldrsh r1, [r4, r0]
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _02244CE0
	adds r0, r3, #0
	adds r0, #0xf0
	ldrsh r1, [r4, r0]
	adds r0, r3, #0
	adds r0, #0xf0
	adds r1, #0xa
	strh r1, [r4, r0]
	adds r3, #0xf0
	ldr r0, [r4]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r3]
	adds r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CE0:
	movs r0, #4
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244CE6:
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02244D1E
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	subs r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02244D00:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02244D1E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02244C68

	thumb_func_start ov17_02244D20
ov17_02244D20: @ 0x02244D20
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244D20

	thumb_func_start ov17_02244D38
ov17_02244D38: @ 0x02244D38
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x15
	adds r7, r1, #0
	adds r1, r0, #0
	adds r1, #0xff
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r2, #0x45
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r6]
	adds r3, r4, #0
	adds r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	movs r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02244D76:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02244D76
	ldr r0, [r5]
	ldr r2, _02244D90 @ =0x00007530
	str r0, [r3]
	ldr r0, _02244D94 @ =ov17_02244D98
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244D90: .4byte 0x00007530
_02244D94: .4byte ov17_02244D98
	thumb_func_end ov17_02244D38

	thumb_func_start ov17_02244D98
ov17_02244D98: @ 0x02244D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	ldrb r1, [r4, #0xd]
	str r0, [sp, #4]
	adds r2, r4, #0
	movs r0, #0x2c
	adds r2, #0x24
	muls r0, r1, r0
	adds r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0x10
	bls _02244DB4
	b _02244F8C
_02244DB4:
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02244DC0: @ jump table
	.2byte _02244DE2 - _02244DC0 - 2 @ case 0
	.2byte _02244DF4 - _02244DC0 - 2 @ case 1
	.2byte _02244E1A - _02244DC0 - 2 @ case 2
	.2byte _02244E2E - _02244DC0 - 2 @ case 3
	.2byte _02244E32 - _02244DC0 - 2 @ case 4
	.2byte _02244E38 - _02244DC0 - 2 @ case 5
	.2byte _02244E6A - _02244DC0 - 2 @ case 6
	.2byte _02244E88 - _02244DC0 - 2 @ case 7
	.2byte _02244E8C - _02244DC0 - 2 @ case 8
	.2byte _02244EB8 - _02244DC0 - 2 @ case 9
	.2byte _02244F0A - _02244DC0 - 2 @ case 10
	.2byte _02244F26 - _02244DC0 - 2 @ case 11
	.2byte _02244F2A - _02244DC0 - 2 @ case 12
	.2byte _02244F30 - _02244DC0 - 2 @ case 13
	.2byte _02244F80 - _02244DC0 - 2 @ case 14
	.2byte _02244F86 - _02244DC0 - 2 @ case 15
	.2byte _02244F8C - _02244DC0 - 2 @ case 16
_02244DE2:
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	adds r0, #0xee
	add sp, #8
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244DF4:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02244E12
	movs r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4]
	adds r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E12:
	movs r0, #3
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E1A:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02244E78
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E2E:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244E32:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244E38:
	movs r5, #0x42
	lsls r5, r5, #2
	movs r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _02244E62
	adds r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	adds r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E62:
	movs r0, #7
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E6A:
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bgt _02244E7A
_02244E78:
	b _02244FAA
_02244E7A:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	subs r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244E88:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244E8C:
	ldr r0, [r3, #0x28]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02244EB0
	ldrb r0, [r3, #3]
	add sp, #8
	adds r1, r4, r0
	movs r0, #0xe4
	ldrsb r1, [r1, r0]
	adds r0, #0x26
	strh r1, [r4, r0]
	movs r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244EB0:
	movs r0, #0xb
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244EB8:
	movs r0, #0x10
	ldrsb r0, [r4, r0]
	movs r6, #0
	adds r5, r6, #0
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	movs r7, #0xe7
_02244EC6:
	movs r2, #0x10
	ldrsb r3, [r4, r2]
	adds r1, r4, r5
	movs r0, #0xe4
	movs r2, #0xa
	ldrsb r0, [r1, r0]
	muls r2, r3, r2
	subs r2, r0, r2
	ldrsb r0, [r1, r7]
	cmp r0, r2
	bgt _02244EEE
	ldr r0, [r4]
	adds r1, r5, #0
	adds r0, #0xc
	adds r6, r6, #1
	bl ov17_022424D4
	ldr r0, _02244FB0 @ =0x000006DF
	bl FUN_02005748
_02244EEE:
	adds r5, r5, #1
	cmp r5, #3
	blt _02244EC6
	cmp r6, #0
	ble _02244F02
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244F02:
	movs r0, #0xb
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244F0A:
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02244FAA
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	subs r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02244F26:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244F2A:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244F30:
	adds r6, r4, #0
	movs r5, #0
	adds r6, #0x4c
_02244F36:
	ldr r2, [r4]
	ldr r0, _02244FB4 @ =0x00000231
	adds r1, r2, r5
	ldrb r1, [r1, r0]
	movs r0, #0x2c
	adds r7, r1, #0
	muls r7, r0, r7
	ldr r0, [r6, r7]
	lsls r1, r0, #0x1a
	lsls r3, r0, #0x16
	lsrs r1, r1, #0x1e
	lsrs r3, r3, #0x1e
	cmp r1, r3
	bne _02244F5E
	lsls r1, r0, #0x18
	lsls r0, r0, #0x14
	lsrs r1, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _02244F74
_02244F5E:
	adds r2, #0xc
	adds r0, r2, #0
	ldr r2, [r6, r7]
	adds r1, r5, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1e
	bl ov17_022430AC
	ldr r0, _02244FB8 @ =0x000006E2
	bl FUN_02005748
_02244F74:
	adds r5, r5, #1
	cmp r5, #4
	blt _02244F36
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244F80:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244F86:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02244F8C:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [sp, #4]
	bl FUN_0200DA58
_02244FAA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244FB0: .4byte 0x000006DF
_02244FB4: .4byte 0x00000231
_02244FB8: .4byte 0x000006E2
	thumb_func_end ov17_02244D98

	thumb_func_start ov17_02244FBC
ov17_02244FBC: @ 0x02244FBC
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02244FBC

	thumb_func_start ov17_02244FD4
ov17_02244FD4: @ 0x02244FD4
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x15
	adds r7, r1, #0
	adds r1, r0, #0
	adds r1, #0xff
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r2, #0x45
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r6]
	adds r3, r4, #0
	adds r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	movs r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02245012:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02245012
	ldr r0, [r5]
	ldr r2, _0224502C @ =0x00007530
	str r0, [r3]
	ldr r0, _02245030 @ =ov17_02245034
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224502C: .4byte 0x00007530
_02245030: .4byte ov17_02245034
	thumb_func_end ov17_02244FD4

	thumb_func_start ov17_02245034
ov17_02245034: @ 0x02245034
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #0xd]
	adds r5, r0, #0
	adds r2, r4, #0
	movs r0, #0x2c
	adds r2, #0x24
	muls r0, r1, r0
	adds r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bhi _02245104
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02245058: @ jump table
	.2byte _0224506A - _02245058 - 2 @ case 0
	.2byte _0224507A - _02245058 - 2 @ case 1
	.2byte _0224509C - _02245058 - 2 @ case 2
	.2byte _022450AE - _02245058 - 2 @ case 3
	.2byte _022450B2 - _02245058 - 2 @ case 4
	.2byte _022450B8 - _02245058 - 2 @ case 5
	.2byte _022450E6 - _02245058 - 2 @ case 6
	.2byte _02245100 - _02245058 - 2 @ case 7
	.2byte _02245104 - _02245058 - 2 @ case 8
_0224506A:
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	adds r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224507A:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02245096
	movs r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4]
	adds r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245096:
	movs r0, #3
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224509C:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245122
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022450AE:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_022450B2:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_022450B8:
	movs r5, #0x42
	lsls r5, r5, #2
	movs r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _022450E0
	adds r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	adds r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022450E0:
	movs r0, #7
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022450E6:
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245122
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	subs r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245100:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245104:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02245122:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02245034

	thumb_func_start ov17_02245124
ov17_02245124: @ 0x02245124
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245124

	thumb_func_start ov17_0224513C
ov17_0224513C: @ 0x0224513C
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x15
	adds r7, r1, #0
	adds r1, r0, #0
	adds r1, #0xff
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r2, #0x45
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r6]
	adds r3, r4, #0
	adds r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	movs r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_0224517A:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224517A
	ldr r0, [r5]
	ldr r2, _02245194 @ =0x00007530
	str r0, [r3]
	ldr r0, _02245198 @ =ov17_0224519C
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245194: .4byte 0x00007530
_02245198: .4byte ov17_0224519C
	thumb_func_end ov17_0224513C

	thumb_func_start ov17_0224519C
ov17_0224519C: @ 0x0224519C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	ldrb r1, [r4, #0xd]
	adds r6, r0, #0
	adds r3, r4, #0
	adds r2, r1, #0
	movs r0, #0x2c
	ldrb r1, [r4, #0xc]
	adds r3, #0x24
	muls r2, r0, r2
	adds r5, r3, r2
	cmp r1, #0x19
	bls _022451BA
	b _022454DC
_022451BA:
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022451C6: @ jump table
	.2byte _022451FA - _022451C6 - 2 @ case 0
	.2byte _02245210 - _022451C6 - 2 @ case 1
	.2byte _02245254 - _022451C6 - 2 @ case 2
	.2byte _02245264 - _022451C6 - 2 @ case 3
	.2byte _02245268 - _022451C6 - 2 @ case 4
	.2byte _02245290 - _022451C6 - 2 @ case 5
	.2byte _022452A4 - _022451C6 - 2 @ case 6
	.2byte _022452A8 - _022451C6 - 2 @ case 7
	.2byte _022452DC - _022451C6 - 2 @ case 8
	.2byte _022452FA - _022451C6 - 2 @ case 9
	.2byte _022452FE - _022451C6 - 2 @ case 10
	.2byte _02245304 - _022451C6 - 2 @ case 11
	.2byte _02245370 - _022451C6 - 2 @ case 12
	.2byte _02245388 - _022451C6 - 2 @ case 13
	.2byte _022453A2 - _022451C6 - 2 @ case 14
	.2byte _022453C2 - _022451C6 - 2 @ case 15
	.2byte _022453EA - _022451C6 - 2 @ case 16
	.2byte _02245400 - _022451C6 - 2 @ case 17
	.2byte _02245404 - _022451C6 - 2 @ case 18
	.2byte _02245430 - _022451C6 - 2 @ case 19
	.2byte _0224543E - _022451C6 - 2 @ case 20
	.2byte _02245442 - _022451C6 - 2 @ case 21
	.2byte _02245454 - _022451C6 - 2 @ case 22
	.2byte _02245498 - _022451C6 - 2 @ case 23
	.2byte _022454B4 - _022451C6 - 2 @ case 24
	.2byte _022454DC - _022451C6 - 2 @ case 25
_022451FA:
	ldrb r0, [r5, #3]
	add sp, #8
	adds r1, r4, r0
	movs r0, #0xe4
	ldrsb r1, [r1, r0]
	adds r0, #0x26
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245210:
	ldrb r1, [r5, #3]
	movs r0, #0xe7
	adds r3, r4, r1
	ldrsb r2, [r3, r0]
	movs r0, #0xe4
	ldrsb r0, [r3, r0]
	cmp r2, r0
	ble _0224524C
	cmp r2, #0x32
	blt _02245228
	movs r6, #3
	b _0224522A
_02245228:
	movs r6, #2
_0224522A:
	ldr r0, [r4]
	adds r2, r6, #0
	adds r0, #0xc
	bl ov17_02241A8C
	ldr r3, _02245504 @ =0x0000010E
	ldrb r1, [r5, #3]
	ldr r0, [r4]
	adds r2, r6, #0
	adds r3, r4, r3
	bl ov17_02241B3C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_0224524C:
	movs r0, #3
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245254:
	adds r0, #0xe2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _022452EA
	adds r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245264:
	adds r0, r1, #1
	strb r0, [r4, #0xc]
_02245268:
	adds r0, r4, #0
	adds r0, #0xf8
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245288
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0xec
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245288:
	movs r0, #6
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245290:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _022452EA
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022452A4:
	adds r0, r1, #1
	strb r0, [r4, #0xc]
_022452A8:
	ldrb r0, [r5, #3]
	adds r2, r4, r0
	movs r0, #0xe7
	ldrsb r1, [r2, r0]
	movs r0, #0xe4
	ldrsb r0, [r2, r0]
	cmp r1, r0
	ble _022452CE
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x11
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r2, #0
	movs r3, #0x46
	bl ov17_022431A0
	b _022452D2
_022452CE:
	movs r0, #1
	strb r0, [r4, #0x11]
_022452D2:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022452DC:
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #8
	bgt _022452EC
_022452EA:
	b _02245500
_022452EC:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022452FA:
	adds r0, r1, #1
	strb r0, [r4, #0xc]
_022452FE:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245304:
	ldrb r0, [r5, #3]
	adds r3, r4, r0
	movs r0, #0xe7
	ldrsb r1, [r3, r0]
	adds r0, #0x23
	ldrsh r0, [r4, r0]
	cmp r0, r1
	beq _02245368
	movs r2, #0xe4
	ldrsb r0, [r3, r2]
	subs r0, r1, r0
	cmp r0, #0
	ble _0224533C
	adds r0, r2, #0
	adds r0, #0x26
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0x26
	adds r1, #0xa
	strh r1, [r4, r0]
	adds r2, #0x26
	ldr r0, [r4]
	ldrb r1, [r5, #3]
	ldrsh r2, [r4, r2]
	adds r0, #0xc
	bl ov17_022424D4
	b _0224535E
_0224533C:
	adds r0, r2, #0
	adds r0, #0x26
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0x26
	subs r1, #0xa
	strh r1, [r4, r0]
	adds r2, #0x26
	ldr r0, [r4]
	ldrb r1, [r5, #3]
	ldrsh r2, [r4, r2]
	adds r0, #0xc
	bl ov17_022424D4
	ldr r0, _02245508 @ =0x000006DF
	bl FUN_02005748
_0224535E:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245368:
	movs r0, #0xe
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245370:
	ldr r0, [r4]
	ldrb r1, [r5, #3]
	adds r0, #0xc
	bl ov17_022424A8
	cmp r0, #1
	bne _022453F4
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245388:
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _022453F4
	movs r0, #0
	strb r0, [r4, #0xf]
	movs r0, #0xb
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453A2:
	adds r0, #0xde
	ldrsh r0, [r4, r0]
	cmp r0, #0x32
	blt _022453B8
	ldrb r1, [r5, #3]
	ldr r0, [r4]
	bl ov17_0224365C
	movs r1, #0x11
	lsls r1, r1, #4
	str r0, [r4, r1]
_022453B8:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453C2:
	adds r0, r4, #0
	adds r0, #0xf9
	ldrb r1, [r0]
	cmp r1, #0
	beq _022453E2
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0xf2
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453E2:
	movs r0, #0x11
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022453EA:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	beq _022453F6
_022453F4:
	b _02245500
_022453F6:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245400:
	adds r0, r1, #1
	strb r0, [r4, #0xc]
_02245404:
	ldr r0, _0224550C @ =0x0000010A
	ldrsh r0, [r4, r0]
	cmp r0, #0x32
	blt _02245428
	adds r0, r4, #0
	adds r0, #0x12
	str r0, [sp]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrb r3, [r5, #3]
	ldr r0, [r4]
	bl ov17_022436D0
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245428:
	movs r0, #0x14
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245430:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _02245500
	adds r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_0224543E:
	adds r0, r1, #1
	strb r0, [r4, #0xc]
_02245442:
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	adds r0, #0xee
	add sp, #8
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245454:
	adds r0, #0xdc
	movs r3, #0x18
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r3]
	cmp r1, r0
	bge _02245488
	adds r0, r3, #0
	adds r0, #0xf0
	ldrsh r1, [r4, r0]
	adds r0, r3, #0
	adds r0, #0xf0
	adds r1, #0xa
	strh r1, [r4, r0]
	adds r3, #0xf0
	ldr r0, [r4]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r3]
	adds r0, #0xc
	bl ov17_02241F34
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245488:
	ldr r0, [r4]
	adds r0, #0xc
	bl ov17_02241B1C
	movs r0, #0x18
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02245498:
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245500
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	add sp, #8
	subs r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022454B4:
	adds r1, r0, #0
	adds r1, #0xde
	ldrsh r1, [r4, r1]
	cmp r1, #0x32
	blt _022454D2
	adds r0, #0xe4
	ldr r0, [r4, r0]
	bl ov17_02243690
	ldr r0, [r4]
	ldrb r1, [r5, #3]
	adds r0, #0xc
	movs r2, #0
	bl ov17_022424D4
_022454D2:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_022454DC:
	ldrb r0, [r4, #0x11]
	cmp r0, #1
	bne _02245500
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r6, #0
	bl FUN_0200DA58
_02245500:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02245504: .4byte 0x0000010E
_02245508: .4byte 0x000006DF
_0224550C: .4byte 0x0000010A
	thumb_func_end ov17_0224519C

	thumb_func_start ov17_02245510
ov17_02245510: @ 0x02245510
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245510

	thumb_func_start ov17_02245528
ov17_02245528: @ 0x02245528
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x15
	adds r7, r1, #0
	adds r1, r0, #0
	adds r1, #0xff
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r2, #0x45
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r6]
	adds r3, r4, #0
	adds r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	movs r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_02245566:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02245566
	ldr r0, [r5]
	ldr r2, _02245580 @ =0x00007530
	str r0, [r3]
	ldr r0, _02245584 @ =ov17_02245588
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245580: .4byte 0x00007530
_02245584: .4byte ov17_02245588
	thumb_func_end ov17_02245528

	thumb_func_start ov17_02245588
ov17_02245588: @ 0x02245588
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #0xd]
	adds r5, r0, #0
	adds r2, r4, #0
	movs r0, #0x2c
	adds r2, #0x24
	muls r0, r1, r0
	adds r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bhi _02245658
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022455AC: @ jump table
	.2byte _022455BE - _022455AC - 2 @ case 0
	.2byte _022455CE - _022455AC - 2 @ case 1
	.2byte _022455F0 - _022455AC - 2 @ case 2
	.2byte _02245602 - _022455AC - 2 @ case 3
	.2byte _02245606 - _022455AC - 2 @ case 4
	.2byte _0224560C - _022455AC - 2 @ case 5
	.2byte _0224563A - _022455AC - 2 @ case 6
	.2byte _02245654 - _022455AC - 2 @ case 7
	.2byte _02245658 - _022455AC - 2 @ case 8
_022455BE:
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	adds r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022455CE:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _022455EA
	movs r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4]
	adds r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022455EA:
	movs r0, #3
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_022455F0:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245676
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245602:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245606:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_0224560C:
	movs r5, #0x42
	lsls r5, r5, #2
	movs r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _0224562E
	adds r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	adds r0, #0xc
	bl ov17_02241F34
	b _02245632
_0224562E:
	movs r0, #7
	strb r0, [r4, #0xc]
_02245632:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224563A:
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245676
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	subs r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245654:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245658:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02245676:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02245588

	thumb_func_start ov17_02245678
ov17_02245678: @ 0x02245678
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245678

	thumb_func_start ov17_02245690
ov17_02245690: @ 0x02245690
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x15
	adds r7, r1, #0
	adds r1, r0, #0
	adds r1, #0xf7
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	movs r2, #0x43
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	adds r3, r4, #0
	adds r3, #0x10
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	movs r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
_022456C6:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _022456C6
	ldr r0, [r6]
	ldr r2, _022456E0 @ =0x00007530
	str r0, [r3]
	ldr r0, _022456E4 @ =ov17_022456E8
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022456E0: .4byte 0x00007530
_022456E4: .4byte ov17_022456E8
	thumb_func_end ov17_02245690

	thumb_func_start ov17_022456E8
ov17_022456E8: @ 0x022456E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _02245944 @ =0x00000106
	adds r4, r1, #0
	ldrb r0, [r4, r0]
	movs r7, #0
	adds r0, r4, r0
	adds r0, #0xf9
	ldrb r1, [r0]
	cmp r1, #4
	beq _02245724
	adds r2, r4, #0
	movs r0, #0x2c
	adds r2, #0x20
	muls r0, r1, r0
	adds r5, r2, r0
	ldr r3, [r4]
	ldr r6, _02245948 @ =0x00000231
	adds r2, r7, #0
_02245710:
	ldrb r0, [r3, r6]
	cmp r1, r0
	bne _0224571A
	adds r7, r2, #0
	b _02245726
_0224571A:
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, #4
	blt _02245710
	b _02245726
_02245724:
	adds r5, r7, #0
_02245726:
	ldrb r0, [r4, #0xc]
	cmp r0, #0x11
	bls _0224572E
	b _02245922
_0224572E:
	adds r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0224573A: @ jump table
	.2byte _0224575E - _0224573A - 2 @ case 0
	.2byte _0224576C - _0224573A - 2 @ case 1
	.2byte _022457C0 - _0224573A - 2 @ case 2
	.2byte _022457D0 - _0224573A - 2 @ case 3
	.2byte _022457D4 - _0224573A - 2 @ case 4
	.2byte _022457FC - _0224573A - 2 @ case 5
	.2byte _02245812 - _0224573A - 2 @ case 6
	.2byte _02245816 - _0224573A - 2 @ case 7
	.2byte _02245840 - _0224573A - 2 @ case 8
	.2byte _02245854 - _0224573A - 2 @ case 9
	.2byte _02245858 - _0224573A - 2 @ case 10
	.2byte _02245880 - _0224573A - 2 @ case 11
	.2byte _02245894 - _0224573A - 2 @ case 12
	.2byte _02245898 - _0224573A - 2 @ case 13
	.2byte _022458AA - _0224573A - 2 @ case 14
	.2byte _022458DC - _0224573A - 2 @ case 15
	.2byte _022458F8 - _0224573A - 2 @ case 16
	.2byte _02245922 - _0224573A - 2 @ case 17
_0224575E:
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	adds r0, #0xea
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_0224576C:
	ldrb r0, [r5, #9]
	cmp r0, #0
	bne _0224577E
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r6, #4
	bl FUN_02005748
	b _022457A8
_0224577E:
	cmp r0, #1
	bne _0224578C
	ldr r0, _0224594C @ =0x000006EF
	movs r6, #5
	bl FUN_02005748
	b _022457A8
_0224578C:
	cmp r0, #2
	bne _0224579A
	ldr r0, _02245950 @ =0x000006EE
	movs r6, #6
	bl FUN_02005748
	b _022457A8
_0224579A:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _02245954 @ =0x000006DF
	bl FUN_02005748
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022457A8:
	ldr r3, _02245958 @ =0x00000107
	ldrb r1, [r5, #3]
	ldr r0, [r4]
	adds r2, r6, #0
	adds r3, r4, r3
	bl ov17_02241B3C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457C0:
	ldr r1, _02245958 @ =0x00000107
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _02245806
	adds r0, r0, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457D0:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_022457D4:
	ldrb r1, [r5, #0x12]
	cmp r1, #0
	beq _022457F4
	movs r0, #0
	str r0, [sp]
	ldrb r2, [r5, #0x13]
	adds r5, #0xc
	ldr r0, [r4]
	adds r3, r5, #0
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457F4:
	movs r0, #6
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022457FC:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	beq _02245808
_02245806:
	b _02245940
_02245808:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245812:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245816:
	adds r0, r4, #0
	adds r0, #0xf4
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245838
	adds r2, r4, #0
	adds r3, r4, #0
	ldr r0, [r4]
	adds r2, #0xe8
	adds r3, #0xf8
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245838:
	movs r0, #9
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245840:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245940
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245854:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245858:
	adds r0, r4, #0
	adds r0, #0xf5
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245878
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0xee
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245878:
	movs r0, #0xc
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245880:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245940
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245894:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245898:
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	adds r0, #0xea
	add sp, #8
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458AA:
	movs r3, #0x41
	lsls r3, r3, #2
	movs r2, #0x18
	ldrsh r0, [r4, r3]
	ldrsh r2, [r5, r2]
	cmp r0, r2
	bge _022458CA
	adds r0, #0xa
	strh r0, [r4, r3]
	ldr r0, [r4]
	ldrsh r3, [r4, r3]
	adds r0, #0xc
	adds r2, r7, #0
	bl ov17_02241F34
	b _022458D2
_022458CA:
	movs r0, #0x10
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458D2:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458DC:
	movs r0, #0xd
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xd]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245940
	movs r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	add sp, #8
	subs r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022458F8:
	ldr r0, _02245944 @ =0x00000106
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #4
	bhs _02245918
	adds r0, r4, r0
	adds r0, #0xf9
	ldrb r0, [r0]
	cmp r0, #4
	beq _02245918
	movs r0, #0xd
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245918:
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02245922:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [sp, #4]
	bl FUN_0200DA58
_02245940:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02245944: .4byte 0x00000106
_02245948: .4byte 0x00000231
_0224594C: .4byte 0x000006EF
_02245950: .4byte 0x000006EE
_02245954: .4byte 0x000006DF
_02245958: .4byte 0x00000107
	thumb_func_end ov17_022456E8

	thumb_func_start ov17_0224595C
ov17_0224595C: @ 0x0224595C
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_0224595C

	thumb_func_start ov17_02245974
ov17_02245974: @ 0x02245974
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x15
	adds r7, r1, #0
	adds r1, r0, #0
	adds r1, #0xff
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r2, #0x45
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r6]
	adds r3, r4, #0
	adds r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	movs r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
_022459B2:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _022459B2
	ldr r0, [r5]
	ldr r2, _022459CC @ =0x00007530
	str r0, [r3]
	ldr r0, _022459D0 @ =ov17_022459D4
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022459CC: .4byte 0x00007530
_022459D0: .4byte ov17_022459D4
	thumb_func_end ov17_02245974

	thumb_func_start ov17_022459D4
ov17_022459D4: @ 0x022459D4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #0xd]
	adds r5, r0, #0
	adds r2, r4, #0
	movs r0, #0x2c
	adds r2, #0x24
	muls r0, r1, r0
	adds r3, r2, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xe
	bls _022459EE
	b _02245B26
_022459EE:
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022459FA: @ jump table
	.2byte _02245A18 - _022459FA - 2 @ case 0
	.2byte _02245A28 - _022459FA - 2 @ case 1
	.2byte _02245A4A - _022459FA - 2 @ case 2
	.2byte _02245A5C - _022459FA - 2 @ case 3
	.2byte _02245A60 - _022459FA - 2 @ case 4
	.2byte _02245A84 - _022459FA - 2 @ case 5
	.2byte _02245A96 - _022459FA - 2 @ case 6
	.2byte _02245A9A - _022459FA - 2 @ case 7
	.2byte _02245ABE - _022459FA - 2 @ case 8
	.2byte _02245AD0 - _022459FA - 2 @ case 9
	.2byte _02245AD4 - _022459FA - 2 @ case 10
	.2byte _02245ADA - _022459FA - 2 @ case 11
	.2byte _02245B08 - _022459FA - 2 @ case 12
	.2byte _02245B22 - _022459FA - 2 @ case 13
	.2byte _02245B26 - _022459FA - 2 @ case 14
_02245A18:
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	adds r0, #0xee
	strh r1, [r4, r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A28:
	ldrb r1, [r3, #0x12]
	cmp r1, #0
	beq _02245A44
	movs r0, #0
	str r0, [sp]
	ldrb r2, [r3, #0x13]
	ldr r0, [r4]
	adds r3, #0xc
	bl ov17_02242E9C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A44:
	movs r0, #3
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A4A:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245B44
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A5C:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245A60:
	adds r0, r4, #0
	adds r0, #0xf8
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245A7E
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0xec
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A7E:
	movs r0, #6
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A84:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245B44
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245A96:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245A9A:
	adds r0, r4, #0
	adds r0, #0xf9
	ldrb r1, [r0]
	cmp r1, #0
	beq _02245AB8
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0xf2
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245AB8:
	movs r0, #9
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245ABE:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245B44
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245AD0:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245AD4:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245ADA:
	movs r5, #0x42
	lsls r5, r5, #2
	movs r0, #0x18
	ldrsh r1, [r4, r5]
	ldrsh r0, [r3, r0]
	cmp r1, r0
	bge _02245AFC
	adds r1, #0xa
	strh r1, [r4, r5]
	ldr r0, [r4]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrsh r3, [r4, r5]
	adds r0, #0xc
	bl ov17_02241F34
	b _02245B00
_02245AFC:
	movs r0, #0xd
	strb r0, [r4, #0xc]
_02245B00:
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245B08:
	movs r0, #0xf
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #0xf]
	ldrsb r0, [r4, r0]
	cmp r0, #2
	ble _02245B44
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	subs r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245B22:
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02245B26:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02245B44:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_022459D4

	thumb_func_start ov17_02245B48
ov17_02245B48: @ 0x02245B48
	push {r3, lr}
	movs r0, #0xf4
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245B48

	thumb_func_start ov17_02245B60
ov17_02245B60: @ 0x02245B60
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x15
	adds r7, r1, #0
	adds r1, r0, #0
	adds r1, #0xff
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	movs r2, #0x45
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	adds r3, r4, #0
	adds r3, #0x14
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	movs r2, #0x1e
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r1, [r7, #0xc]
	ldr r0, _02245BBC @ =0x00000123
	ldrb r0, [r1, r0]
	strb r0, [r4, #0xd]
	ldrb r0, [r6, #1]
	strb r0, [r4, #0xe]
_02245BA2:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02245BA2
	ldr r0, [r6]
	ldr r2, _02245BC0 @ =0x00007530
	str r0, [r3]
	ldr r0, _02245BC4 @ =ov17_02245BC8
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245BBC: .4byte 0x00000123
_02245BC0: .4byte 0x00007530
_02245BC4: .4byte ov17_02245BC8
	thumb_func_end ov17_02245B60

	thumb_func_start ov17_02245BC8
ov17_02245BC8: @ 0x02245BC8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0xd]
	adds r2, r4, #0
	movs r1, #0x2c
	adds r2, #0x24
	muls r1, r0, r1
	adds r2, r2, r1
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	beq _02245BEC
	cmp r1, #1
	beq _02245C0C
	cmp r1, #2
	beq _02245C20
	b _02245C28
_02245BEC:
	movs r1, #0x18
	ldrsh r1, [r2, r1]
	add r2, sp, #0
	bl ov17_0224314C
	adds r1, r0, #0
	ldr r0, [r4]
	add r2, sp, #0
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245C0C:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245C46
	ldrb r0, [r4, #0xc]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245C20:
	adds r0, r1, #1
	add sp, #8
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02245C28:
	movs r0, #0xc3
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02245C46:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_02245BC8

	thumb_func_start ov17_02245C4C
ov17_02245C4C: @ 0x02245C4C
	push {r3, lr}
	movs r1, #0xf4
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02245C4C

	thumb_func_start ov17_02245C60
ov17_02245C60: @ 0x02245C60
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x15
	movs r1, #0x28
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x28
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02245C9C @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02245CA0 @ =ov17_02245CA4
	str r6, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245C9C: .4byte 0x00007530
_02245CA0: .4byte ov17_02245CA4
	thumb_func_end ov17_02245C60

	thumb_func_start ov17_02245CA4
ov17_02245CA4: @ 0x02245CA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	bhi _02245D7A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02245CC2: @ jump table
	.2byte _02245CCA - _02245CC2 - 2 @ case 0
	.2byte _02245CEE - _02245CC2 - 2 @ case 1
	.2byte _02245D30 - _02245CC2 - 2 @ case 2
	.2byte _02245D7A - _02245CC2 - 2 @ case 3
_02245CCA:
	movs r1, #0
	adds r0, r4, #0
	str r1, [sp]
	adds r0, #0x27
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	movs r3, #0x46
	bl ov17_022431A0
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r4, #0x20
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02245CEE:
	adds r7, r4, #0
	movs r5, #0
	adds r6, r4, #0
	adds r7, #0x23
_02245CF6:
	ldr r0, [r4]
	ldr r1, _02245DA0 @ =0x00000231
	adds r2, r0, r5
	ldrb r1, [r2, r1]
	bl ov17_0224145C
	str r0, [r6, #0x10]
	ldr r1, [r4]
	adds r3, r7, r5
	str r0, [sp]
	adds r0, r1, #0
	adds r2, r1, r5
	ldr r1, _02245DA0 @ =0x00000231
	ldrb r1, [r2, r1]
	adds r2, r5, #0
	bl ov17_0224331C
	adds r5, r5, #1
	adds r6, r6, #4
	cmp r5, #4
	blt _02245CF6
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r4, #0x20
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02245D30:
	movs r7, #0
	adds r6, r7, #0
	adds r5, r4, #0
_02245D36:
	adds r0, r4, r6
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _02245D4C
	ldr r0, [r5, #0x10]
	bl ov17_022414BC
	cmp r0, #0
	bne _02245D4C
	adds r7, r7, #1
_02245D4C:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #4
	blt _02245D36
	cmp r7, #4
	bne _02245D9C
	movs r6, #0
	adds r5, r4, #0
_02245D5C:
	ldr r0, [r5, #0x10]
	bl ov17_02241494
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #4
	blt _02245D5C
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r4, #0x20
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02245D7A:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #1
	bne _02245D9C
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02245D9C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02245DA0: .4byte 0x00000231
	thumb_func_end ov17_02245CA4

	thumb_func_start ov17_02245DA4
ov17_02245DA4: @ 0x02245DA4
	push {r3, lr}
	movs r0, #0xf8
	str r0, [sp]
	movs r0, #0xc3
	lsls r0, r0, #4
	lsls r2, r2, #0x10
	adds r0, r1, r0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	thumb_func_end ov17_02245DA4

	thumb_func_start ov17_02245DBC
ov17_02245DBC: @ 0x02245DBC
	push {r4, r5, r6, lr}
	movs r0, #0x23
	adds r5, r1, #0
	lsls r0, r0, #4
	adds r4, r2, #0
	adds r6, r5, r0
	movs r2, #0x1f
_02245DCA:
	ldm r3!, {r0, r1}
	stm r6!, {r0, r1}
	subs r2, r2, #1
	bne _02245DCA
	adds r0, r5, #0
	adds r0, #0xc
	bl ov17_02241EF0
	adds r0, r5, #0
	adds r0, #0xc
	bl ov17_022430F8
	adds r0, r5, #0
	bl ov17_02242FE8
	adds r0, r5, #0
	bl ov17_02241428
	movs r0, #0xc3
	lsls r0, r0, #4
	movs r2, #0
	adds r0, r5, r0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov17_0224F26C
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02245DBC

	thumb_func_start ov17_02245E00
ov17_02245E00: @ 0x02245E00
	push {r3, lr}
	movs r1, #0xf4
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02245E00

	thumb_func_start ov17_02245E14
ov17_02245E14: @ 0x02245E14
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x15
	movs r1, #0x20
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x20
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	ldr r2, _02245E84 @ =0x00007530
	str r0, [r4]
	ldrh r0, [r6]
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	adds r0, r5, #0
	adds r0, #0xd8
	ldrh r0, [r0]
	strh r0, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0xda
	ldrh r0, [r0]
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0xe4
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0xe7
	ldrb r0, [r0]
	adds r5, #0xe6
	strb r0, [r4, #0x1c]
	ldrb r0, [r5]
	strb r0, [r4, #0x1b]
	ldr r0, _02245E88 @ =ov17_02245E8C
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02245E84: .4byte 0x00007530
_02245E88: .4byte ov17_02245E8C
	thumb_func_end ov17_02245E14

	thumb_func_start ov17_02245E8C
ov17_02245E8C: @ 0x02245E8C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02245EA2
	cmp r0, #1
	beq _02245EC2
	cmp r0, #2
	beq _02245ED4
	b _02245EF8
_02245EA2:
	ldrb r1, [r4, #0x1a]
	cmp r1, #0
	beq _02245EBC
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0x14
	movs r3, #0
	bl ov17_02242E5C
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EBC:
	movs r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EC2:
	ldr r0, [r4]
	bl ov17_02242ECC
	cmp r0, #0
	bne _02245F10
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245ED4:
	ldrb r0, [r4, #0x12]
	adds r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _02245EE8
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EE8:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x1b]
	cmp r1, r0
	blo _02245F10
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02245EF8:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02245F10:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_02245E8C

	thumb_func_start ov17_02245F14
ov17_02245F14: @ 0x02245F14
	strb r1, [r0, #0x12]
	ldr r1, _02245F40 @ =0x00007530
	strb r2, [r0, #0x13]
	cmp r3, r1
	beq _02245F20
	strb r3, [r0, #0xc]
_02245F20:
	ldr r2, [sp]
	ldr r1, _02245F40 @ =0x00007530
	cmp r2, r1
	beq _02245F2A
	strb r2, [r0, #0xd]
_02245F2A:
	ldr r2, [sp, #4]
	ldr r1, _02245F40 @ =0x00007530
	cmp r2, r1
	beq _02245F34
	strh r2, [r0, #0xe]
_02245F34:
	ldr r2, [sp, #8]
	ldr r1, _02245F40 @ =0x00007530
	cmp r2, r1
	beq _02245F3E
	strb r2, [r0, #0x10]
_02245F3E:
	bx lr
	.align 2, 0
_02245F40: .4byte 0x00007530
	thumb_func_end ov17_02245F14

	thumb_func_start ov17_02245F44
ov17_02245F44: @ 0x02245F44
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x26
	adds r5, r1, #0
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r3, r5, #0
	movs r2, #0x19
_02245F54:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02245F54
	adds r0, r5, #0
	bl ov17_02246540
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xb0
	blx FUN_020C4CF4
	movs r4, #0
	adds r7, r6, #0
_02245F70:
	adds r1, r5, #0
	adds r0, r6, #0
	adds r1, #0xc
	adds r2, r4, #0
	bl ov17_02243120
	ldr r0, _02245FAC @ =0x0000023E
	adds r1, r6, r4
	ldrb r0, [r1, r0]
	movs r1, #0xa
	strb r0, [r5, #3]
	ldr r0, _02245FB0 @ =0x00000236
	ldrh r0, [r7, r0]
	strh r0, [r5]
	bl FUN_020790C4
	strb r0, [r5, #2]
	movs r0, #0x23
	lsls r0, r0, #4
	adds r0, r6, r0
	adds r1, r4, #0
	bl ov17_02243AC4
	strb r0, [r5, #9]
	adds r4, r4, #1
	adds r5, #0x2c
	adds r7, r7, #2
	cmp r4, #4
	blt _02245F70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02245FAC: .4byte 0x0000023E
_02245FB0: .4byte 0x00000236
	thumb_func_end ov17_02245F44

	thumb_func_start ov17_02245FB4
ov17_02245FB4: @ 0x02245FB4
	push {r4, r5, r6, r7}
	adds r3, r1, #0
	ldr r5, _0224600C @ =0xFFFFFCFF
	ldr r6, _02246010 @ =0xFFFFF3FF
	adds r4, r0, #0
	movs r1, #0
	adds r2, r3, #0
_02245FC2:
	ldr r7, [r2, #0x28]
	adds r1, r1, #1
	adds r0, r7, #0
	lsls r7, r7, #0x1a
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0x1e
	ands r0, r5
	lsrs r7, r7, #0x16
	orrs r7, r0
	adds r0, r7, #0
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0x1e
	ands r0, r6
	lsrs r7, r7, #0x14
	orrs r0, r7
	str r0, [r2, #0x28]
	adds r2, #0x2c
	cmp r1, #4
	blt _02245FC2
	ldr r1, _02246014 @ =0x00000252
	movs r0, #0
	adds r5, r1, #0
_02245FF0:
	adds r7, r4, r0
	ldrsb r6, [r7, r1]
	adds r2, r3, r0
	adds r2, #0xc0
	strb r6, [r2]
	adds r2, r3, r0
	ldrsb r6, [r7, r5]
	adds r2, #0xc3
	adds r0, r0, #1
	strb r6, [r2]
	cmp r0, #3
	blt _02245FF0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0224600C: .4byte 0xFFFFFCFF
_02246010: .4byte 0xFFFFF3FF
_02246014: .4byte 0x00000252
	thumb_func_end ov17_02245FB4

	thumb_func_start ov17_02246018
ov17_02246018: @ 0x02246018
	push {r4, r5, r6, r7}
	movs r5, #0
	ldr r2, _02246040 @ =0x00000252
	adds r3, r5, #0
_02246020:
	adds r7, r1, r5
	movs r6, #0xc3
	ldrsb r7, [r7, r6]
	ldr r6, _02246040 @ =0x00000252
	adds r4, r0, r5
	strb r7, [r4, r6]
	ldrsb r6, [r4, r2]
	cmp r6, #0x32
	blt _02246036
	ldr r6, _02246040 @ =0x00000252
	strb r3, [r4, r6]
_02246036:
	adds r5, r5, #1
	cmp r5, #3
	blt _02246020
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02246040: .4byte 0x00000252
	thumb_func_end ov17_02246018

	thumb_func_start ov17_02246044
ov17_02246044: @ 0x02246044
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0224608C @ =0x00000242
	mov ip, r1
	adds r5, r7, #0
	mov lr, r0
	movs r1, #0
	mov r2, ip
	adds r3, r0, #0
	movs r6, #0x18
	adds r5, #8
_02246058:
	ldr r0, _0224608C @ =0x00000242
	movs r4, #0x18
	ldrsh r0, [r3, r0]
	ldrsh r4, [r2, r4]
	adds r1, r1, #1
	adds r0, r0, r4
	strh r0, [r3, r7]
	ldrsh r0, [r2, r6]
	adds r2, #0x2c
	strh r0, [r3, r5]
	adds r3, r3, #2
	cmp r1, #4
	blt _02246058
	movs r1, #0x26
	lsls r1, r1, #4
	mov r0, lr
	adds r4, r0, r1
	movs r3, #0x19
_0224607C:
	mov r2, ip
	ldm r2!, {r0, r1}
	mov ip, r2
	stm r4!, {r0, r1}
	subs r3, r3, #1
	bne _0224607C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224608C: .4byte 0x00000242
	thumb_func_end ov17_02246044

	thumb_func_start ov17_02246090
ov17_02246090: @ 0x02246090
	push {r3, r4}
	movs r2, #0x2c
	muls r2, r1, r2
	adds r2, r0, r2
	movs r1, #0x18
	ldrsh r1, [r2, r1]
	movs r4, #0
	strh r1, [r2, #0x1a]
	strh r4, [r2, #0x1e]
	strh r4, [r2, #0x20]
	movs r1, #0xc3
_022460A6:
	adds r3, r0, r4
	ldrsb r2, [r3, r1]
	adds r3, #0xc0
	adds r4, r4, #1
	strb r2, [r3]
	cmp r4, #3
	blt _022460A6
	movs r2, #0
	adds r1, r2, #0
_022460B8:
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x12]
	adds r2, r2, #1
	adds r0, #0x2c
	cmp r2, #4
	blt _022460B8
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_02246090

	thumb_func_start ov17_022460C8
ov17_022460C8: @ 0x022460C8
	movs r3, #0
	movs r1, #0x18
_022460CC:
	ldrsh r2, [r0, r1]
	adds r3, r3, #1
	strh r2, [r0, #0x1c]
	adds r0, #0x2c
	cmp r3, #4
	blt _022460CC
	bx lr
	.align 2, 0
	thumb_func_end ov17_022460C8

	thumb_func_start ov17_022460DC
ov17_022460DC: @ 0x022460DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r7, r2, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov17_02246090
	movs r0, #0x2c
	adds r4, r7, #0
	muls r4, r0, r4
	adds r6, r5, #2
	ldrb r0, [r6, r4]
	ldr r1, _0224612C @ =0x02253AFD
	lsls r2, r0, #3
	ldrb r1, [r1, r2]
	cmp r1, #0
	bne _02246126
	movs r1, #4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_02095790
	ldr r1, [sp, #0x10]
	ldr r0, _02246130 @ =0x0000FFFF
	cmp r1, r0
	beq _02246126
	ldr r0, _02246134 @ =0x00007530
	movs r2, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r1, [r6, r4]
	adds r0, r5, r4
	adds r3, r7, #0
	bl ov17_02245F14
_02246126:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224612C: .4byte 0x02253AFD
_02246130: .4byte 0x0000FFFF
_02246134: .4byte 0x00007530
	thumb_func_end ov17_022460DC

	thumb_func_start ov17_02246138
ov17_02246138: @ 0x02246138
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov17_02246090
	adds r4, r6, #0
	movs r0, #0x2c
	muls r4, r0, r4
	adds r0, r5, r4
	ldrb r0, [r0, #2]
	adds r6, r5, #4
	bl FUN_02095734
	strb r0, [r6, r4]
	ldrb r1, [r6, r4]
	adds r0, r5, r4
	strh r1, [r0, #0x18]
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02246138

	thumb_func_start ov17_02246160
ov17_02246160: @ 0x02246160
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r1, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	adds r0, r7, #0
	adds r1, r2, #0
	str r3, [sp, #0xc]
	bl ov17_02246090
	ldr r0, [sp, #8]
	movs r1, #0x2c
	adds r4, r0, #0
	muls r4, r1, r4
	adds r0, r7, r4
	ldrb r0, [r0, #2]
	lsls r6, r0, #3
	ldr r0, _0224621C @ =0x02253AFC
	ldrb r0, [r0, r6]
	cmp r0, #3
	bne _022461B6
	ldr r0, [sp, #0xc]
	ldr r5, _02246220 @ =0x02253AF8
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	ldr r5, [r5, r6]
	adds r1, r7, #0
	adds r3, r2, #0
	blx r5
	adds r2, r7, #0
	movs r0, #1
	adds r3, r7, r4
	strb r0, [r3, #0x14]
	movs r0, #0x1e
	adds r2, #0x18
	movs r5, #0x20
	ldrsh r0, [r3, r0]
	ldrsh r3, [r3, r5]
	ldrsh r1, [r2, r4]
	adds r0, r0, r3
	adds r0, r1, r0
	strh r0, [r2, r4]
_022461B6:
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	blt _02246218
_022461C0:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r1, r1, r0
	ldr r0, _02246224 @ =0x00000231
	ldrb r5, [r1, r0]
	movs r0, #0x2c
	muls r0, r5, r0
	adds r4, r7, r0
	ldrb r0, [r4, #2]
	lsls r1, r0, #3
	ldr r0, _02246220 @ =0x02253AF8
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _0224620C
	adds r0, r7, #0
	adds r1, r5, #0
	bl ov17_02246090
	ldr r0, [sp, #0xc]
	adds r3, r5, #0
	str r0, [sp]
	ldrb r5, [r4, #2]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	lsls r6, r5, #3
	ldr r5, _02246220 @ =0x02253AF8
	adds r1, r7, #0
	ldr r5, [r5, r6]
	blx r5
	movs r0, #1
	strb r0, [r4, #0x14]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x1e
	ldrsh r0, [r4, r0]
	adds r0, r1, r0
	strh r0, [r4, #0x18]
_0224620C:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r1
	ble _022461C0
_02246218:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224621C: .4byte 0x02253AFC
_02246220: .4byte 0x02253AF8
_02246224: .4byte 0x00000231
	thumb_func_end ov17_02246160

	thumb_func_start ov17_02246228
ov17_02246228: @ 0x02246228
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov17_02246090
	adds r7, r5, #0
	lsls r0, r6, #2
	adds r7, #0xb0
	str r0, [sp, #0xc]
	ldr r0, [r7, r0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq _0224627E
	movs r0, #0x2c
	adds r4, r6, #0
	muls r4, r0, r4
	adds r1, r5, r4
	movs r0, #0x18
	ldrsh r0, [r1, r0]
	adds r1, r5, #0
	adds r1, #0x1e
	ldrsh r2, [r1, r4]
	adds r2, r2, r0
	strh r2, [r1, r4]
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r1, _022462A0 @ =0x00007530
	movs r2, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r0, r5, r4
	ldr r1, [r7, r1]
	adds r3, r6, #0
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	bl ov17_02245F14
_0224627E:
	movs r0, #0x2c
	adds r2, r6, #0
	adds r1, r5, #0
	muls r2, r0, r2
	adds r1, #0x18
	adds r5, r5, r2
	movs r3, #0x1e
	ldrsh r4, [r5, r3]
	movs r3, #0x20
	ldrsh r3, [r5, r3]
	ldrsh r0, [r1, r2]
	adds r3, r4, r3
	adds r0, r0, r3
	strh r0, [r1, r2]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022462A0: .4byte 0x00007530
	thumb_func_end ov17_02246228

	thumb_func_start ov17_022462A4
ov17_022462A4: @ 0x022462A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r2, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	str r3, [sp, #8]
	bl ov17_02246090
	movs r0, #0x2c
	adds r4, r6, #0
	muls r4, r0, r4
	adds r0, r5, r4
	ldrb r0, [r0, #2]
	lsls r7, r0, #3
	ldr r0, _022462FC @ =0x02253AFC
	ldrb r0, [r0, r7]
	cmp r0, #4
	bne _022462F4
	ldr r0, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	ldr r6, _02246300 @ =0x02253AF8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r6, [r6, r7]
	adds r1, r5, #0
	blx r6
	adds r3, r5, r4
	movs r0, #1
	strb r0, [r3, #0x14]
	adds r5, #0x18
	movs r1, #0x1e
	ldrsh r2, [r5, r4]
	ldrsh r1, [r3, r1]
	add sp, #0xc
	adds r1, r2, r1
	strh r1, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_022462F4:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022462FC: .4byte 0x02253AFC
_02246300: .4byte 0x02253AF8
	thumb_func_end ov17_022462A4

	thumb_func_start ov17_02246304
ov17_02246304: @ 0x02246304
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r2, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	str r3, [sp, #8]
	bl ov17_02246090
	movs r0, #0x2c
	adds r4, r6, #0
	muls r4, r0, r4
	adds r0, r5, r4
	ldrb r0, [r0, #2]
	lsls r7, r0, #3
	ldr r0, _0224635C @ =0x02253AFC
	ldrb r0, [r0, r7]
	cmp r0, #5
	bne _02246354
	ldr r0, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	ldr r6, _02246360 @ =0x02253AF8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r6, [r6, r7]
	adds r1, r5, #0
	blx r6
	adds r3, r5, r4
	movs r0, #1
	strb r0, [r3, #0x14]
	adds r5, #0x18
	movs r1, #0x1e
	ldrsh r2, [r5, r4]
	ldrsh r1, [r3, r1]
	add sp, #0xc
	adds r1, r2, r1
	strh r1, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_02246354:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224635C: .4byte 0x02253AFC
_02246360: .4byte 0x02253AF8
	thumb_func_end ov17_02246304

	thumb_func_start ov17_02246364
ov17_02246364: @ 0x02246364
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r2, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	str r3, [sp, #8]
	bl ov17_02246090
	movs r0, #0x2c
	adds r4, r6, #0
	muls r4, r0, r4
	adds r0, r5, r4
	ldrb r0, [r0, #2]
	lsls r7, r0, #3
	ldr r0, _022463BC @ =0x02253AFC
	ldrb r0, [r0, r7]
	cmp r0, #6
	bne _022463B4
	ldr r0, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	ldr r6, _022463C0 @ =0x02253AF8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r6, [r6, r7]
	adds r1, r5, #0
	blx r6
	adds r3, r5, r4
	movs r0, #1
	strb r0, [r3, #0x14]
	adds r5, #0x18
	movs r1, #0x1e
	ldrsh r2, [r5, r4]
	ldrsh r1, [r3, r1]
	add sp, #0xc
	adds r1, r2, r1
	strh r1, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_022463B4:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022463BC: .4byte 0x02253AFC
_022463C0: .4byte 0x02253AF8
	thumb_func_end ov17_02246364

	thumb_func_start ov17_022463C4
ov17_022463C4: @ 0x022463C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	str r2, [sp, #4]
	adds r7, r3, #0
	bl ov17_02246090
	movs r0, #0
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xd]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	movs r6, #0x2c
	adds r1, r1, r0
	ldr r0, _02246510 @ =0x0000023E
	ldrb r5, [r1, r0]
	ldr r0, [sp]
	ldr r3, [r0]
	ldr r0, [sp, #4]
	adds r2, r5, #0
	adds r1, r0, #0
	muls r1, r6, r1
	adds r0, r4, r1
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r0, #0xf3
	str r1, [sp, #0x10]
	adds r6, #0xf2
	ldrb r0, [r3, r0]
	ldrh r1, [r4, r1]
	ldrb r3, [r3, r6]
	bl ov17_02243AF0
	adds r6, r0, #0
	cmp r6, #0
	ble _02246432
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x28]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bne _02246432
	adds r0, r4, #0
	adds r0, #0xc3
	ldrsb r1, [r0, r5]
	adds r1, r1, r6
	strb r1, [r0, r5]
	ldrsb r1, [r0, r5]
	cmp r1, #0x32
	blt _0224645E
	movs r1, #0x32
	strb r1, [r0, r5]
	b _0224645E
_02246432:
	cmp r6, #0
	bge _0224645C
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x28]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bne _0224645C
	adds r0, r4, #0
	adds r0, #0xc3
	adds r1, r0, r5
	ldrsb r0, [r0, r5]
	cmp r0, #0
	ble _0224645C
	adds r0, r0, r6
	movs r2, #0
	strb r0, [r1]
	ldrsb r0, [r1, r2]
	cmp r0, #0
	bgt _0224645E
	strb r2, [r1]
	b _0224645E
_0224645C:
	movs r6, #0
_0224645E:
	adds r1, r4, #0
	adds r1, #0xc3
	adds r0, r1, r5
	str r0, [sp, #8]
	ldrsb r0, [r1, r5]
	cmp r0, #0x32
	blt _0224648A
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, _02246514 @ =0x0000011E
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _02246482
	ldr r0, [sp, #0x10]
	movs r1, #0x50
	adds r0, r4, r0
	strb r1, [r0, #8]
	b _0224648A
_02246482:
	ldr r0, [sp, #0x10]
	movs r1, #0x32
	adds r0, r4, r0
	strb r1, [r0, #8]
_0224648A:
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	adds r0, #8
	adds r5, r0, r1
	ldrsb r0, [r0, r1]
	movs r1, #0xa
	blx FUN_020E1F6C
	strb r0, [r7, #0xa]
	cmp r6, #0
	ble _022464E4
	ldr r0, [sp, #0xc]
	movs r1, #0xb
	ldrh r0, [r0]
	bl FUN_020790C4
	bl ov17_02243970
	strb r0, [r7, #0xc]
	ldr r0, [sp, #8]
	movs r1, #0
	ldrsb r0, [r0, r1]
	movs r1, #0xa
	blx FUN_020E1F6C
	cmp r0, #5
	bhi _022464F6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022464CC: @ jump table
	.2byte _022464F6 - _022464CC - 2 @ case 0
	.2byte _022464F6 - _022464CC - 2 @ case 1
	.2byte _022464F6 - _022464CC - 2 @ case 2
	.2byte _022464F6 - _022464CC - 2 @ case 3
	.2byte _022464D8 - _022464CC - 2 @ case 4
	.2byte _022464DE - _022464CC - 2 @ case 5
_022464D8:
	movs r0, #0x19
	strb r0, [r7, #0xd]
	b _022464F6
_022464DE:
	movs r0, #0x1a
	strb r0, [r7, #0xd]
	b _022464F6
_022464E4:
	bge _022464F6
	ldr r0, [sp, #0xc]
	movs r1, #0xb
	ldrh r0, [r0]
	bl FUN_020790C4
	bl ov17_0224399C
	strb r0, [r7, #0xc]
_022464F6:
	ldr r0, [sp, #4]
	movs r1, #0x2c
	adds r2, r0, #0
	movs r0, #0
	adds r4, #0x18
	muls r2, r1, r2
	ldrsh r1, [r4, r2]
	ldrsb r0, [r5, r0]
	adds r0, r1, r0
	strh r0, [r4, r2]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02246510: .4byte 0x0000023E
_02246514: .4byte 0x0000011E
	thumb_func_end ov17_022463C4

	thumb_func_start ov17_02246518
ov17_02246518: @ 0x02246518
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov17_02246090
	movs r0, #0x2c
	adds r4, r6, #0
	muls r4, r0, r4
	adds r0, r5, r4
	ldrb r0, [r0, #9]
	bl ov17_02243AE4
	adds r5, #0x18
	ldrsh r1, [r5, r4]
	adds r0, r1, r0
	strh r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_02246518

	thumb_func_start ov17_02246540
ov17_02246540: @ 0x02246540
	push {r3, r4, r5, r6}
	adds r3, r0, #0
	ldr r4, _02246570 @ =0xFFFF0000
	ldr r5, _02246574 @ =0xFF00FFFF
	movs r2, #0
	adds r3, #0xb0
_0224654C:
	ldr r1, [r3]
	adds r2, r2, #1
	ands r1, r4
	str r1, [r3]
	ldr r6, [r0, #0x28]
	ands r1, r5
	lsls r6, r6, #0xc
	lsrs r6, r6, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #8
	orrs r1, r6
	adds r0, #0x2c
	stm r3!, {r1}
	cmp r2, #4
	blt _0224654C
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02246570: .4byte 0xFFFF0000
_02246574: .4byte 0xFF00FFFF
	thumb_func_end ov17_02246540

	thumb_func_start ov17_02246578
ov17_02246578: @ 0x02246578
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r0, #4
	str r3, [sp, #0xc]
	mov ip, r0
	adds r7, r1, #0
	movs r0, #0
	add r2, sp, #0x10
	movs r3, #0xff
_0224658A:
	ldr r4, [r1, #0x28]
	lsls r5, r4, #0x1a
	lsrs r5, r5, #0x1e
	bne _02246596
	strb r3, [r2]
	b _022465AA
_02246596:
	cmp r5, #1
	bne _022465A2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x1e
	bne _022465A2
	mov ip, r0
_022465A2:
	ldr r4, [r1, #0x28]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x1e
	strb r4, [r2]
_022465AA:
	adds r0, r0, #1
	adds r1, #0x2c
	adds r2, r2, #1
	cmp r0, #4
	blt _0224658A
	ldr r0, [sp, #0xc]
	movs r1, #0xff
	add r6, sp, #0x10
	strb r1, [r6, r0]
	movs r4, #0
_022465BE:
	movs r1, #0
	adds r2, r6, #0
	adds r3, r7, #0
_022465C4:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _022465E0
	cmp r4, r0
	bne _022465E0
	ldr r5, [r3, #0x28]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x1e
	cmp r0, r5
	bne _022465E0
	ldrb r0, [r6, r1]
	adds r0, r0, #1
	strb r0, [r6, r1]
	b _022465EA
_022465E0:
	adds r1, r1, #1
	adds r2, r2, #1
	adds r3, #0x2c
	cmp r1, #4
	blt _022465C4
_022465EA:
	cmp r1, #4
	beq _022465F4
	adds r4, r4, #1
	cmp r4, #4
	blt _022465BE
_022465F4:
	movs r3, #0
	add r1, sp, #0x10
	adds r2, r7, #0
	movs r4, #0xc0
_022465FC:
	ldrb r5, [r1]
	cmp r5, #0xff
	beq _0224660E
	ldr r0, [r2, #0x28]
	lsls r5, r5, #0x1e
	bics r0, r4
	lsrs r5, r5, #0x18
	orrs r0, r5
	str r0, [r2, #0x28]
_0224660E:
	adds r3, r3, #1
	adds r1, r1, #1
	adds r2, #0x2c
	cmp r3, #4
	blt _022465FC
	ldr r0, [sp, #0xc]
	movs r1, #0x2c
	muls r1, r0, r1
	adds r0, r7, r1
	ldr r2, [r0, #0x28]
	movs r1, #0x30
	bics r2, r1
	movs r1, #0x10
	orrs r2, r1
	movs r1, #0xc0
	bics r2, r1
	mov r1, ip
	str r2, [r0, #0x28]
	cmp r1, #4
	beq _0224664C
	mov r1, ip
	str r1, [sp]
	ldr r1, _02246664 @ =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	movs r2, #1
	bl ov17_02245F14
	b _0224665E
_0224664C:
	ldr r1, _02246664 @ =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
_0224665E:
	movs r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02246664: .4byte 0x00007530
	thumb_func_end ov17_02246578

	thumb_func_start ov17_02246668
ov17_02246668: @ 0x02246668
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r0, #4
	str r3, [sp, #0xc]
	mov ip, r0
	adds r7, r1, #0
	movs r0, #0
	add r2, sp, #0x10
	movs r3, #0xff
_0224667A:
	ldr r4, [r1, #0x28]
	lsls r5, r4, #0x1a
	lsrs r5, r5, #0x1e
	bne _02246686
	strb r3, [r2]
	b _0224669C
_02246686:
	cmp r5, #2
	bne _02246694
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x1e
	cmp r4, #3
	bne _02246694
	mov ip, r0
_02246694:
	ldr r4, [r1, #0x28]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x1e
	strb r4, [r2]
_0224669C:
	adds r0, r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, #0x2c
	adds r2, r2, #1
	cmp r0, #4
	blt _0224667A
	ldr r0, [sp, #0xc]
	movs r1, #0xff
	add r6, sp, #0x10
	strb r1, [r6, r0]
	movs r4, #3
_022466B4:
	movs r1, #0
	adds r2, r6, #0
	adds r3, r7, #0
_022466BA:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _022466D6
	cmp r4, r0
	bne _022466D6
	ldr r5, [r3, #0x28]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x1e
	cmp r0, r5
	bne _022466D6
	ldrb r0, [r6, r1]
	subs r0, r0, #1
	strb r0, [r6, r1]
	b _022466E4
_022466D6:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	adds r2, r2, #1
	adds r3, #0x2c
	cmp r1, #4
	blt _022466BA
_022466E4:
	cmp r1, #4
	beq _022466F6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bgt _022466B4
_022466F6:
	movs r3, #0
	add r1, sp, #0x10
	adds r2, r7, #0
	movs r4, #0xc0
_022466FE:
	ldrb r5, [r1]
	cmp r5, #0xff
	beq _02246710
	ldr r0, [r2, #0x28]
	lsls r5, r5, #0x1e
	bics r0, r4
	lsrs r5, r5, #0x18
	orrs r0, r5
	str r0, [r2, #0x28]
_02246710:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	adds r1, r1, #1
	adds r2, #0x2c
	cmp r3, #4
	blt _022466FE
	ldr r0, [sp, #0xc]
	movs r1, #0x2c
	muls r1, r0, r1
	adds r0, r7, r1
	ldr r2, [r0, #0x28]
	movs r1, #0x30
	bics r2, r1
	movs r1, #0x20
	orrs r2, r1
	movs r1, #0xc0
	bics r2, r1
	movs r1, #0xc0
	orrs r1, r2
	str r1, [r0, #0x28]
	mov r1, ip
	cmp r1, #4
	bne _02246754
	ldr r1, _02246770 @ =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	b _02246768
_02246754:
	mov r1, ip
	str r1, [sp]
	ldr r1, _02246770 @ =0x00007530
	ldr r3, [sp, #0xc]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	movs r2, #1
	bl ov17_02245F14
_02246768:
	movs r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02246770: .4byte 0x00007530
	thumb_func_end ov17_02246668

	thumb_func_start ov17_02246774
ov17_02246774: @ 0x02246774
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r2, r4, #0
	movs r0, #0x2c
	adds r7, r3, #0
	muls r3, r0, r3
	adds r2, #9
	adds r1, #0x1e
	ldrb r6, [r2, r3]
	movs r5, #0x14
	ldrsh r0, [r1, r3]
	muls r5, r6, r5
	adds r0, r0, r5
	strh r0, [r1, r3]
	ldrb r0, [r2, r3]
	cmp r0, #0
	beq _022467A2
	cmp r0, #1
	beq _022467A6
	cmp r0, #2
	beq _022467AA
	b _022467AE
_022467A2:
	movs r2, #0
	b _022467B0
_022467A6:
	movs r2, #1
	b _022467B0
_022467AA:
	movs r2, #2
	b _022467B0
_022467AE:
	movs r2, #3
_022467B0:
	ldr r0, _022467C8 @ =0x00007530
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, r3
	ldrb r1, [r0, #2]
	adds r3, r7, #0
	bl ov17_02245F14
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022467C8: .4byte 0x00007530
	thumb_func_end ov17_02246774

	thumb_func_start ov17_022467CC
ov17_022467CC: @ 0x022467CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #0xc]
	ldr r3, [r0]
	ldr r0, [sp, #0xc]
	movs r6, #0x2c
	adds r4, r0, #0
	adds r0, r6, #0
	muls r4, r6, r4
	adds r5, r1, #0
	adds r7, r5, r4
	adds r0, #0xf3
	adds r6, #0xf2
	ldrb r0, [r3, r0]
	ldrh r1, [r5, r4]
	ldrb r2, [r7, #3]
	ldrb r3, [r3, r6]
	bl ov17_02243AF0
	cmp r0, #0
	ble _02246824
	ldr r0, [r7, #0x28]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bne _02246824
	adds r1, r5, #0
	adds r1, #0x1e
	ldrsh r0, [r1, r4]
	ldr r2, _0224682C @ =0x00007530
	ldr r3, [sp, #0xc]
	adds r0, #0x14
	strh r0, [r1, r4]
	str r2, [sp]
	ldrh r1, [r5, r4]
	adds r0, r7, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02246824:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224682C: .4byte 0x00007530
	thumb_func_end ov17_022467CC

	thumb_func_start ov17_02246830
ov17_02246830: @ 0x02246830
	movs r0, #1
	bx lr
	thumb_func_end ov17_02246830

	thumb_func_start ov17_02246834
ov17_02246834: @ 0x02246834
	push {r3, r4, lr}
	sub sp, #0xc
	movs r0, #0x2c
	adds r4, r3, #0
	muls r4, r0, r4
	adds r0, r1, r4
	ldrb r2, [r0, #9]
	cmp r2, #0
	bne _02246860
	adds r1, #0x1e
	ldrsh r2, [r1, r4]
	adds r2, #0x1e
	strh r2, [r1, r4]
	ldr r1, _02246878 @ =0x00007530
	movs r2, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	b _02246870
_02246860:
	ldr r1, _02246878 @ =0x00007530
	movs r2, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
_02246870:
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02246878: .4byte 0x00007530
	thumb_func_end ov17_02246834

	thumb_func_start ov17_0224687C
ov17_0224687C: @ 0x0224687C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r4, r3, #1
	adds r2, r1, #0
	adds r4, r0, r4
	ldr r0, _022468C8 @ =0x00000256
	movs r1, #0x2c
	adds r7, r3, #0
	muls r7, r1, r7
	ldrh r1, [r2, r7]
	ldrh r0, [r4, r0]
	cmp r1, r0
	beq _022468C2
	adds r6, r2, #0
	adds r6, #0xb0
	lsls r5, r3, #2
	lsls r1, r1, #0x10
	ldr r4, [r6, r5]
	ldr r0, _022468CC @ =0xFFFF0000
	lsrs r1, r1, #0x10
	ands r0, r4
	orrs r0, r1
	str r0, [r6, r5]
	ldr r0, _022468D0 @ =0x00007530
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r2, r7
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_022468C2:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022468C8: .4byte 0x00000256
_022468CC: .4byte 0xFFFF0000
_022468D0: .4byte 0x00007530
	thumb_func_end ov17_0224687C

	thumb_func_start ov17_022468D4
ov17_022468D4: @ 0x022468D4
	push {r4, r5, lr}
	sub sp, #0xc
	movs r0, #0x2c
	adds r4, r3, #0
	adds r5, r1, #0
	muls r4, r0, r4
	adds r0, r5, r4
	ldrb r0, [r0, #3]
	adds r2, r5, #0
	adds r2, #0x1e
	adds r1, r5, r0
	movs r0, #0xc0
	ldrsb r0, [r1, r0]
	ldrsh r1, [r2, r4]
	adds r1, r1, r0
	strh r1, [r2, r4]
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r3, _02246914 @ =0x00007530
	movs r2, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02246914: .4byte 0x00007530
	thumb_func_end ov17_022468D4

	thumb_func_start ov17_02246918
ov17_02246918: @ 0x02246918
	push {r3, r4, lr}
	sub sp, #0xc
	movs r0, #0x2c
	adds r4, r3, #0
	muls r4, r0, r4
	adds r0, r1, r4
	ldrb r2, [r0, #9]
	cmp r2, #3
	bne _02246944
	adds r1, #0x1e
	ldrsh r2, [r1, r4]
	adds r2, #0x96
	strh r2, [r1, r4]
	ldr r1, _0224695C @ =0x00007530
	movs r2, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	b _02246954
_02246944:
	ldr r1, _0224695C @ =0x00007530
	movs r2, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r0, #2]
	bl ov17_02245F14
_02246954:
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0224695C: .4byte 0x00007530
	thumb_func_end ov17_02246918

	thumb_func_start ov17_02246960
ov17_02246960: @ 0x02246960
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r0, #0x2c
	adds r7, r3, #0
	adds r4, r1, #0
	muls r7, r0, r7
	adds r1, r4, r7
	ldr r0, [r1, #0x28]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224697E
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0224697E:
	movs r3, #0
	movs r0, #0xc3
_02246982:
	adds r2, r4, r3
	ldrsb r2, [r2, r0]
	cmp r2, #0
	bne _02246990
	adds r3, r3, #1
	cmp r3, #3
	blt _02246982
_02246990:
	cmp r3, #3
	bne _0224699A
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0224699A:
	ldr r2, [r1, #0x28]
	movs r0, #8
	orrs r0, r2
	movs r3, #0xc3
	str r0, [r1, #0x28]
	movs r2, #0
	adds r5, r3, #0
_022469A8:
	adds r0, r4, r2
	ldrsb r6, [r0, r5]
	cmp r6, #0
	ble _022469B8
	ldrsb r6, [r0, r3]
	adds r0, #0xc3
	subs r6, #0xa
	strb r6, [r0]
_022469B8:
	adds r2, r2, #1
	cmp r2, #3
	blt _022469A8
	ldr r3, _022469D8 @ =0x00007530
	adds r0, r1, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	adds r1, r4, r7
	ldrb r1, [r1, #2]
	movs r2, #0
	bl ov17_02245F14
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022469D8: .4byte 0x00007530
	thumb_func_end ov17_02246960

	thumb_func_start ov17_022469DC
ov17_022469DC: @ 0x022469DC
	movs r0, #0x2c
	muls r0, r3, r0
	adds r2, r1, r0
	ldr r1, [r2, #0x28]
	ldr r0, _022469F8 @ =0xFFF00FFF
	ands r1, r0
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xc
	orrs r0, r1
	str r0, [r2, #0x28]
	movs r0, #1
	bx lr
	nop
_022469F8: .4byte 0xFFF00FFF
	thumb_func_end ov17_022469DC

	thumb_func_start ov17_022469FC
ov17_022469FC: @ 0x022469FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r2, r1, #0
	ldr r1, [sp, #0x20]
	adds r4, r0, #0
	mov ip, r3
	cmp r1, #4
	bge _02246A28
	ldr r7, _02246A48 @ =0x00000231
	movs r6, #0x2c
	movs r3, #2
_02246A12:
	adds r0, r4, r1
	ldrb r0, [r0, r7]
	adds r1, r1, #1
	adds r5, r0, #0
	muls r5, r6, r5
	adds r0, r2, r5
	ldr r5, [r0, #0x28]
	orrs r5, r3
	str r5, [r0, #0x28]
	cmp r1, #4
	blt _02246A12
_02246A28:
	ldr r3, _02246A4C @ =0x00007530
	movs r1, #0x2c
	mov r0, ip
	str r3, [sp]
	muls r1, r0, r1
	str r3, [sp, #4]
	adds r0, r2, r1
	str r3, [sp, #8]
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02246A48: .4byte 0x00000231
_02246A4C: .4byte 0x00007530
	thumb_func_end ov17_022469FC

	thumb_func_start ov17_02246A50
ov17_02246A50: @ 0x02246A50
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bne _02246A62
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_02246A62:
	subs r1, r1, #1
	adds r1, r0, r1
	ldr r0, _02246AA8 @ =0x00000231
	ldrb r4, [r1, r0]
	movs r0, #0x2c
	adds r1, r4, #0
	muls r1, r0, r1
	adds r2, r5, r1
	movs r1, #8
	ldrsb r2, [r2, r1]
	cmp r2, #0
	bne _02246A80
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_02246A80:
	adds r1, r3, #0
	muls r1, r0, r1
	adds r0, r5, #0
	adds r0, #0x1e
	ldrsh r6, [r0, r1]
	adds r2, r6, r2
	strh r2, [r0, r1]
	ldr r0, _02246AAC @ =0x00007530
	str r4, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, r1
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02246AA8: .4byte 0x00000231
_02246AAC: .4byte 0x00007530
	thumb_func_end ov17_02246A50

	thumb_func_start ov17_02246AB0
ov17_02246AB0: @ 0x02246AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r3, #0
	add r0, sp, #0x18
	add r1, sp, #0x14
_02246AC0:
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r0]
	strb r2, [r1]
	adds r2, r3, #1
	lsls r2, r2, #0x18
	asrs r3, r2, #0x18
	adds r0, r0, #1
	adds r1, r1, #1
	cmp r3, #4
	blt _02246AC0
	movs r4, #0
	add r7, sp, #0x18
	add r6, sp, #0x14
_02246ADC:
	ldr r0, [r5]
	bl FUN_02094E98
	movs r1, #4
	subs r1, r1, r4
	blx FUN_020E1F6C
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	movs r1, #0
	adds r3, r6, #0
_02246AF2:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _02246B0A
	cmp r2, #0
	bne _02246B04
	movs r0, #0xff
	strb r4, [r7, r1]
	strb r0, [r6, r1]
	b _02246B16
_02246B04:
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_02246B0A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	adds r3, r3, #1
	cmp r1, #4
	blt _02246AF2
_02246B16:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #4
	blt _02246ADC
	ldr r1, [sp, #0xc]
	movs r3, #0
	add r2, sp, #0x18
	movs r4, #0x30
	movs r7, #0x30
	movs r5, #0xc0
_02246B2C:
	ldr r0, [r1, #0x28]
	bics r0, r4
	orrs r0, r7
	str r0, [r1, #0x28]
	ldrb r6, [r2]
	bics r0, r5
	adds r2, r2, #1
	lsls r6, r6, #0x1e
	lsrs r6, r6, #0x18
	orrs r0, r6
	str r0, [r1, #0x28]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	adds r1, #0x2c
	cmp r3, #4
	blt _02246B2C
	ldr r3, _02246B70 @ =0x00007530
	ldr r0, [sp, #0x10]
	movs r1, #0x2c
	muls r1, r0, r1
	str r3, [sp]
	ldr r0, [sp, #0xc]
	str r3, [sp, #4]
	str r3, [sp, #8]
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02246B70: .4byte 0x00007530
	thumb_func_end ov17_02246AB0

	thumb_func_start ov17_02246B74
ov17_02246B74: @ 0x02246B74
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x18]
	adds r5, r1, #0
	cmp r0, #3
	bne _02246BB6
	adds r4, r3, #0
	movs r0, #0x2c
	adds r3, r5, #0
	adds r2, r5, #0
	muls r4, r0, r4
	adds r3, #0x18
	adds r2, #0x1e
	ldrsh r1, [r2, r4]
	ldrsh r0, [r3, r4]
	adds r0, r1, r0
	strh r0, [r2, r4]
	ldrsh r0, [r3, r4]
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r3, _02246BBC @ =0x00007530
	movs r2, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_02246BB6:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02246BBC: .4byte 0x00007530
	thumb_func_end ov17_02246B74

	thumb_func_start ov17_02246BC0
ov17_02246BC0: @ 0x02246BC0
	push {r4, r5, lr}
	sub sp, #0xc
	movs r0, #0x2c
	adds r4, r3, #0
	adds r5, r1, #0
	muls r4, r0, r4
	adds r0, r5, r4
	ldrb r0, [r0, #3]
	adds r1, r5, r0
	movs r0, #0xc0
	ldrsb r0, [r1, r0]
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r1, _02246C08 @ =0x02253AF0
	adds r2, r5, #0
	adds r2, #0x1e
	ldrb r0, [r1, r0]
	ldrsh r1, [r2, r4]
	adds r1, r1, r0
	strh r1, [r2, r4]
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r3, _02246C0C @ =0x00007530
	movs r2, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02246C08: .4byte 0x02253AF0
_02246C0C: .4byte 0x00007530
	thumb_func_end ov17_02246BC0

	thumb_func_start ov17_02246C10
ov17_02246C10: @ 0x02246C10
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02246C42
	adds r4, r3, #0
	movs r0, #0x2c
	adds r2, r1, #0
	muls r4, r0, r4
	adds r2, #0x1e
	ldrsh r0, [r2, r4]
	ldr r3, _02246C48 @ =0x00007530
	adds r0, #0x14
	strh r0, [r2, r4]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	adds r0, r1, r4
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02246C42:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02246C48: .4byte 0x00007530
	thumb_func_end ov17_02246C10

	thumb_func_start ov17_02246C4C
ov17_02246C4C: @ 0x02246C4C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [sp, #0x18]
	cmp r0, #3
	bne _02246C7E
	adds r4, r3, #0
	movs r0, #0x2c
	adds r2, r1, #0
	muls r4, r0, r4
	adds r2, #0x1e
	ldrsh r0, [r2, r4]
	ldr r3, _02246C84 @ =0x00007530
	adds r0, #0x14
	strh r0, [r2, r4]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	adds r0, r1, r4
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02246C7E:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02246C84: .4byte 0x00007530
	thumb_func_end ov17_02246C4C

	thumb_func_start ov17_02246C88
ov17_02246C88: @ 0x02246C88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r2, r1, #0
	ldr r1, [sp, #0x20]
	adds r4, r0, #0
	mov ip, r3
	cmp r1, #4
	bge _02246CB4
	ldr r7, _02246CD4 @ =0x00000231
	movs r6, #0x2c
	movs r3, #4
_02246C9E:
	adds r0, r4, r1
	ldrb r0, [r0, r7]
	adds r1, r1, #1
	adds r5, r0, #0
	muls r5, r6, r5
	adds r0, r2, r5
	ldr r5, [r0, #0x28]
	orrs r5, r3
	str r5, [r0, #0x28]
	cmp r1, #4
	blt _02246C9E
_02246CB4:
	ldr r3, _02246CD8 @ =0x00007530
	movs r1, #0x2c
	mov r0, ip
	str r3, [sp]
	muls r1, r0, r1
	str r3, [sp, #4]
	adds r0, r2, r1
	str r3, [sp, #8]
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02246CD4: .4byte 0x00000231
_02246CD8: .4byte 0x00007530
	thumb_func_end ov17_02246C88

	thumb_func_start ov17_02246CDC
ov17_02246CDC: @ 0x02246CDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldr r0, [sp, #0x38]
	adds r4, r1, #0
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _02246CF2
	add sp, #0x24
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_02246CF2:
	subs r0, r0, #1
	adds r1, r5, r0
	ldr r0, _02246D98 @ =0x00000231
	movs r3, #0x2c
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	adds r0, r1, #0
	muls r0, r3, r0
	adds r7, r4, r0
	str r0, [sp, #0x20]
	ldr r0, [r7, #0x28]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bne _02246D24
	ldr r0, [sp, #0x18]
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r4, r1
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x28]
	str r1, [sp, #0x10]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	beq _02246D2A
_02246D24:
	add sp, #0x24
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_02246D2A:
	ldr r0, [r5]
	adds r1, r3, #0
	mov ip, r0
	adds r1, #0xf3
	ldrb r0, [r0, r1]
	adds r3, #0xf2
	mov r6, ip
	ldrh r1, [r7]
	ldrb r2, [r7, #3]
	ldrb r3, [r6, r3]
	bl ov17_02243AF0
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	adds r2, r4, r2
	ldr r5, [r5]
	ldr r3, _02246D9C @ =0x0000011F
	str r0, [sp, #0x1c]
	ldrb r0, [r5, r3]
	subs r3, r3, #1
	ldrh r1, [r1]
	ldrb r2, [r2, #3]
	ldrb r3, [r5, r3]
	bl ov17_02243AF0
	cmp r0, #0
	ble _02246D92
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _02246D92
	adds r2, r4, #0
	ldr r0, [sp, #0x20]
	adds r2, #0x1e
	ldrsh r1, [r2, r0]
	ldr r3, [sp, #0xc]
	adds r1, #0x1e
	strh r1, [r2, r0]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	str r0, [sp]
	ldr r0, _02246DA0 @ =0x00007530
	adds r1, r4, r1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r1, [r1, #2]
	adds r0, r7, #0
	movs r2, #0
	bl ov17_02245F14
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02246D92:
	movs r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02246D98: .4byte 0x00000231
_02246D9C: .4byte 0x0000011F
_02246DA0: .4byte 0x00007530
	thumb_func_end ov17_02246CDC

	thumb_func_start ov17_02246DA4
ov17_02246DA4: @ 0x02246DA4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r0, r1, #0
	movs r1, #0x2c
	muls r1, r3, r1
	adds r4, r0, r1
	movs r1, #0x1e
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x18]
	ldr r5, _02246E00 @ =0x02253AEC
	ldrb r5, [r5, r1]
	adds r2, r2, r5
	strh r2, [r4, #0x1e]
	cmp r1, #3
	bhi _02246DE2
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02246DCE: @ jump table
	.2byte _02246DD6 - _02246DCE - 2 @ case 0
	.2byte _02246DDA - _02246DCE - 2 @ case 1
	.2byte _02246DDE - _02246DCE - 2 @ case 2
	.2byte _02246DE2 - _02246DCE - 2 @ case 3
_02246DD6:
	movs r2, #0
	b _02246DE4
_02246DDA:
	movs r2, #1
	b _02246DE4
_02246DDE:
	movs r2, #2
	b _02246DE4
_02246DE2:
	movs r2, #3
_02246DE4:
	ldr r1, _02246E04 @ =0x00007530
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x2c
	muls r1, r3, r1
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02246E00: .4byte 0x02253AEC
_02246E04: .4byte 0x00007530
	thumb_func_end ov17_02246DA4

	thumb_func_start ov17_02246E08
ov17_02246E08: @ 0x02246E08
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne _02246E18
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_02246E18:
	subs r2, r2, #1
	adds r2, r0, r2
	ldr r0, _02246E60 @ =0x00000231
	ldrb r2, [r2, r0]
	movs r0, #0x2c
	muls r0, r2, r0
	adds r2, r1, r0
	movs r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0x32
	bge _02246E32
	cmp r0, #0x50
	blt _02246E5A
_02246E32:
	adds r2, r1, #0
	movs r0, #0x2c
	adds r4, r3, #0
	muls r4, r0, r4
	adds r2, #0x1e
	ldrsh r0, [r2, r4]
	adds r0, #0x1e
	strh r0, [r2, r4]
	ldr r0, _02246E64 @ =0x00007530
	movs r2, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r1, r4
	ldrb r1, [r0, #2]
	bl ov17_02245F14
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02246E5A:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02246E60: .4byte 0x00000231
_02246E64: .4byte 0x00007530
	thumb_func_end ov17_02246E08

	thumb_func_start ov17_02246E68
ov17_02246E68: @ 0x02246E68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r0, #0x2c
	muls r0, r3, r0
	str r1, [sp, #0xc]
	movs r2, #0
	adds r4, r1, #0
	mov ip, r0
	adds r5, r1, r0
	movs r7, #0x1a
	movs r6, #0x1c
_02246E7E:
	cmp r2, r3
	beq _02246E8A
	ldrsh r1, [r4, r7]
	ldrsh r0, [r5, r6]
	cmp r1, r0
	blt _02246E92
_02246E8A:
	adds r2, r2, #1
	adds r4, #0x2c
	cmp r2, #4
	blt _02246E7E
_02246E92:
	cmp r2, #4
	beq _02246E9C
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246E9C:
	ldr r2, [sp, #0xc]
	mov r0, ip
	adds r2, #0x1e
	ldrsh r1, [r2, r0]
	mov r0, ip
	adds r1, #0x1e
	strh r1, [r2, r0]
	ldr r0, _02246EC8 @ =0x00007530
	ldr r1, [sp, #0xc]
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, ip
	adds r0, r1, r0
	ldrb r1, [r0, #2]
	movs r2, #0
	bl ov17_02245F14
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246EC8: .4byte 0x00007530
	thumb_func_end ov17_02246E68

	thumb_func_start ov17_02246ECC
ov17_02246ECC: @ 0x02246ECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	str r1, [sp, #4]
	movs r0, #0x15
	movs r1, #0x32
	bl FUN_02018144
	adds r7, r0, #0
	ldr r1, [r6]
	ldr r0, _02246F20 @ =0x00000127
	ldrb r4, [r1, r0]
	cmp r4, #4
	bge _02246F16
	ldr r0, [sp, #4]
	lsls r1, r4, #1
	adds r5, r0, r1
	adds r0, #8
	str r0, [sp, #4]
_02246EF2:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov17_02246F24
	ldr r0, [sp, #4]
	adds r1, r7, #0
	adds r0, r0, r4
	str r0, [sp]
	adds r0, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl ov17_02246F9C
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blt _02246EF2
_02246F16:
	adds r0, r7, #0
	bl FUN_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02246F20: .4byte 0x00000127
	thumb_func_end ov17_02246ECC

	thumb_func_start ov17_02246F24
ov17_02246F24: @ 0x02246F24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r2, #0
	str r1, [sp]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x32
	blx FUN_020C4CF4
	lsls r0, r7, #2
	ldr r5, [sp]
	movs r4, #0
	str r0, [sp, #4]
_02246F40:
	ldr r1, [r6]
	ldr r0, [sp, #4]
	movs r2, #0
	ldr r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x36
	bl FUN_02074470
	strh r0, [r5]
	movs r0, #0x23
	lsls r0, r0, #4
	ldrh r2, [r5]
	adds r0, r6, r0
	adds r1, r7, #0
	bl ov17_02243A98
	cmp r0, #1
	bne _02246F7A
	ldrh r0, [r5]
	movs r1, #0xa
	bl FUN_020790C4
	strb r0, [r5, #0xa]
	ldrh r0, [r5]
	movs r1, #0xb
	bl FUN_020790C4
	strb r0, [r5, #0xb]
	b _02246F7E
_02246F7A:
	movs r0, #0
	strh r0, [r5]
_02246F7E:
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #4
	blt _02246F40
	ldr r0, [r6]
	adds r1, r0, r7
	movs r0, #0x43
	lsls r0, r0, #2
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	adds r0, #0x30
	str r0, [sp]
	strb r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02246F24

	thumb_func_start ov17_02246F9C
ov17_02246F9C: @ 0x02246F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	str r1, [sp, #8]
	str r0, [sp, #0x58]
	movs r1, #0x23
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	movs r0, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x20]
_02246FBA:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	adds r0, r1, r0
	ldrb r1, [r0, #1]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _02246FD2
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	blt _02246FBA
_02246FD2:
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, _02247264 @ =0x02253C30
	str r0, [sp, #0x18]
_02246FDA:
	ldr r0, [sp, #0x20]
	adds r1, r0, #1
	ldr r0, [sp, #0x18]
	ldrb r0, [r0]
	cmp r1, r0
	bne _022470CC
	movs r1, #0
	add r2, sp, #0x3c
	adds r2, #2
	adds r0, r1, #0
_02246FEE:
	adds r1, r1, #1
	strb r0, [r2]
	adds r2, r2, #1
	cmp r1, #3
	blt _02246FEE
	ldr r0, [sp, #4]
	add r3, sp, #0x3c
	ldr r1, [r0]
	ldr r0, _02247268 @ =0x0000011F
	ldr r4, [sp, #0x18]
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldrb r4, [r4, #1]
	ldr r0, [sp, #0x1c]
	adds r3, #2
	lsls r5, r4, #2
	ldr r4, _0224726C @ =0x02253BBC
	ldr r4, [r4, r5]
	blx r4
	cmp r0, #1
	bne _022470CC
	ldr r0, [sp, #0x18]
	movs r1, #3
	ldrsb r0, [r0, r1]
	cmp r0, #0
	beq _02247030
	cmp r0, #2
	beq _02247044
	cmp r0, #3
	beq _02247044
	b _0224705A
_02247030:
	movs r2, #0
	add r1, sp, #0x3c
	adds r1, #2
	adds r0, r2, #0
_02247038:
	adds r2, r2, #1
	strb r0, [r1]
	adds r1, r1, #1
	cmp r2, #3
	blt _02247038
	b _0224705A
_02247044:
	add r2, sp, #0x3c
	movs r3, #0
	adds r2, #2
	movs r0, #1
_0224704C:
	ldrb r1, [r2]
	adds r3, r3, #1
	eors r1, r0
	strb r1, [r2]
	adds r2, r2, #1
	cmp r3, #3
	blt _0224704C
_0224705A:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	adds r1, r0, r1
	movs r0, #0x43
	lsls r0, r0, #2
	ldrb r2, [r1, r0]
	ldr r0, [sp, #0x18]
	lsls r1, r2, #1
	adds r0, r0, r1
	movs r1, #4
	ldrsh r4, [r0, r1]
	cmp r2, #0
	beq _0224707C
	ldr r0, [sp, #0x18]
	ldrsh r0, [r0, r1]
	adds r4, r4, r0
_0224707C:
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #2]
	cmp r0, #0xf0
	beq _0224708A
	cmp r0, #0xf1
	beq _022470CE
	b _0224710E
_0224708A:
	ldr r0, [sp, #8]
	movs r7, #0
	movs r5, #4
_02247090:
	ldr r1, [sp, #4]
	ldr r2, [r1]
	ldr r1, _02247268 @ =0x0000011F
	ldrb r2, [r2, r1]
	ldrb r1, [r0, #0xb]
	cmp r2, r1
	bne _022470C4
	movs r1, #2
	ldrsh r1, [r0, r1]
	movs r3, #0
	adds r2, r0, #0
	adds r1, r1, r4
	strh r1, [r0, #2]
	add r1, sp, #0x3c
	adds r1, #2
_022470AE:
	ldrb r6, [r1]
	cmp r6, #1
	bne _022470BA
	ldrsh r6, [r2, r5]
	adds r6, r6, r4
	strh r6, [r2, #4]
_022470BA:
	adds r3, r3, #1
	adds r1, r1, #1
	adds r2, r2, #2
	cmp r3, #3
	blt _022470AE
_022470C4:
	adds r7, r7, #1
	adds r0, #0xc
	cmp r7, #4
	blt _02247090
_022470CC:
	b _0224714C
_022470CE:
	ldr r5, [sp, #8]
	movs r7, #0
	movs r6, #4
_022470D4:
	ldrb r0, [r5, #0xa]
	bl FUN_02095734
	cmp r0, #0x14
	blt _02247104
	movs r0, #2
	ldrsh r0, [r5, r0]
	movs r2, #0
	adds r1, r5, #0
	adds r0, r0, r4
	strh r0, [r5, #2]
	add r0, sp, #0x3c
	adds r0, #2
_022470EE:
	ldrb r3, [r0]
	cmp r3, #1
	bne _022470FA
	ldrsh r3, [r1, r6]
	adds r3, r3, r4
	strh r3, [r1, #4]
_022470FA:
	adds r2, r2, #1
	adds r0, r0, #1
	adds r1, r1, #2
	cmp r2, #3
	blt _022470EE
_02247104:
	adds r7, r7, #1
	adds r5, #0xc
	cmp r7, #4
	blt _022470D4
	b _0224714C
_0224710E:
	ldr r0, [sp, #8]
	movs r7, #0
	movs r5, #4
_02247114:
	ldr r1, [sp, #0x18]
	ldrb r2, [r1, #2]
	ldrb r1, [r0, #0xa]
	cmp r2, r1
	bne _02247144
	movs r1, #2
	ldrsh r1, [r0, r1]
	movs r3, #0
	adds r2, r0, #0
	adds r1, r1, r4
	strh r1, [r0, #2]
	add r1, sp, #0x3c
	adds r1, #2
_0224712E:
	ldrb r6, [r1]
	cmp r6, #1
	bne _0224713A
	ldrsh r6, [r2, r5]
	adds r6, r6, r4
	strh r6, [r2, #4]
_0224713A:
	adds r3, r3, #1
	adds r1, r1, #1
	adds r2, r2, #2
	cmp r3, #3
	blt _0224712E
_02247144:
	adds r7, r7, #1
	adds r0, #0xc
	cmp r7, #4
	blt _02247114
_0224714C:
	ldr r0, [sp, #0x18]
	adds r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0xa5
	bge _0224715E
	b _02246FDA
_0224715E:
	add r4, sp, #0x34
	movs r5, #0
	adds r4, #2
_02247164:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl FUN_02094E98
	strh r0, [r4]
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r5, #4
	blt _02247164
	movs r5, #0
	add r4, sp, #0x30
_0224717A:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl FUN_02094E98
	strh r0, [r4]
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r5, #3
	blt _0224717A
	ldr r0, [sp, #8]
	movs r7, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _022471A2
	ldr r1, [sp, #8]
_02247198:
	adds r1, #0xc
	ldrh r0, [r1]
	adds r7, r7, #1
	cmp r0, #0
	beq _02247198
_022471A2:
	movs r2, #0xc
	adds r1, r7, #0
	ldr r0, [sp, #8]
	muls r1, r2, r1
	adds r1, r0, r1
	movs r0, #2
	adds r4, r7, #1
	ldrsh r1, [r1, r0]
	cmp r4, #4
	bge _022471F6
	ldr r0, [sp, #8]
	muls r2, r4, r2
	adds r2, r0, r2
	add r0, sp, #0x34
	lsls r3, r4, #1
	adds r0, #2
	adds r3, r0, r3
_022471C4:
	ldrh r0, [r2]
	cmp r0, #0
	beq _022471EC
	movs r0, #2
	ldrsh r0, [r2, r0]
	cmp r0, r1
	bgt _022471E8
	cmp r0, r1
	bne _022471EC
	ldrh r5, [r3]
	lsls r6, r7, #1
	str r5, [sp, #0x28]
	add r5, sp, #0x34
	adds r5, #2
	ldrh r6, [r5, r6]
	ldr r5, [sp, #0x28]
	cmp r5, r6
	bls _022471EC
_022471E8:
	adds r7, r4, #0
	adds r1, r0, #0
_022471EC:
	adds r4, r4, #1
	adds r2, #0xc
	adds r3, r3, #2
	cmp r4, #4
	blt _022471C4
_022471F6:
	ldr r0, [sp, #4]
	ldr r5, [r0]
	ldr r0, _02247270 @ =0x00000171
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0224728A
	movs r0, #0xc
	adds r6, r7, #0
	muls r6, r0, r6
	ldr r0, [sp, #8]
	movs r2, #0
	adds r4, r0, r6
	adds r3, r2, #0
	movs r0, #4
_02247212:
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _0224721A
	adds r2, r2, #1
_0224721A:
	adds r3, r3, #1
	adds r4, r4, #2
	cmp r3, #3
	blt _02247212
	cmp r2, #3
	bne _0224728A
	ldr r1, _02247274 @ =0x02253BB8
	add r0, sp, #0x2c
	ldrb r2, [r1]
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	adds r0, r5, #0
	bl FUN_02094E98
	ldr r1, [sp, #4]
	movs r2, #0x12
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsls r2, r2, #4
	ldrb r4, [r1, r2]
	add r3, sp, #0x2c
	lsrs r0, r0, #0x18
	ldrb r3, [r3, r4]
	cmp r0, r3
	bge _0224728A
	adds r2, r2, #3
	ldrb r2, [r1, r2]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	adds r2, r1, r2
	ldr r1, _02247278 @ =0x0000023E
	b _0224727C
	.align 2, 0
_02247264: .4byte 0x02253C30
_02247268: .4byte 0x0000011F
_0224726C: .4byte 0x02253BBC
_02247270: .4byte 0x00000171
_02247274: .4byte 0x02253BB8
_02247278: .4byte 0x0000023E
_0224727C:
	adds r0, r0, #4
	ldrb r1, [r2, r1]
	adds r0, r0, r6
	lsls r2, r1, #1
	ldrsh r1, [r0, r2]
	subs r1, #0x64
	strh r1, [r0, r2]
_0224728A:
	movs r0, #0
	str r0, [sp, #0x24]
	movs r0, #0xc
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, [sp, #8]
	add r3, sp, #0x30
	adds r0, r0, r1
	movs r1, #4
	ldrsh r5, [r0, r1]
	mov ip, r0
	movs r4, #1
	adds r2, r0, #2
	adds r3, #2
_022472A6:
	movs r0, #4
	ldrsh r6, [r2, r0]
	cmp r6, r5
	bgt _022472C0
	cmp r6, r5
	bne _022472C4
	ldr r0, [sp, #0x24]
	ldrh r7, [r3]
	lsls r1, r0, #1
	add r0, sp, #0x30
	ldrh r0, [r0, r1]
	cmp r7, r0
	bls _022472C4
_022472C0:
	str r4, [sp, #0x24]
	adds r5, r6, #0
_022472C4:
	adds r4, r4, #1
	adds r2, r2, #2
	adds r3, r3, #2
	cmp r4, #3
	blt _022472A6
	mov r0, ip
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	strh r1, [r0]
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x24]
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	cmp r0, #0
	bne _022472E8
	bl FUN_02022974
_022472E8:
	ldr r0, [sp, #0x58]
	ldrb r0, [r0]
	cmp r0, #3
	blo _022472F4
	bl FUN_02022974
_022472F4:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_02246F9C

	thumb_func_start ov17_022472F8
ov17_022472F8: @ 0x022472F8
	ldrb r0, [r0]
	cmp r0, #4
	bne _02247302
	movs r0, #1
	bx lr
_02247302:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov17_022472F8

	thumb_func_start ov17_02247308
ov17_02247308: @ 0x02247308
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, #0xe0
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq _0224731A
	movs r0, #1
	bx lr
_0224731A:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov17_02247308

	thumb_func_start ov17_02247320
ov17_02247320: @ 0x02247320
	movs r1, #0
_02247322:
	ldrb r0, [r2, #0xa]
	cmp r0, #5
	bne _0224732C
	movs r0, #1
	bx lr
_0224732C:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _02247322
	movs r0, #0
	bx lr
	thumb_func_end ov17_02247320

	thumb_func_start ov17_02247338
ov17_02247338: @ 0x02247338
	movs r1, #0
_0224733A:
	ldrb r0, [r2, #0xa]
	cmp r0, #9
	bne _02247344
	movs r0, #1
	bx lr
_02247344:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _0224733A
	movs r0, #0
	bx lr
	thumb_func_end ov17_02247338

	thumb_func_start ov17_02247350
ov17_02247350: @ 0x02247350
	movs r1, #0
_02247352:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xc
	bne _0224735C
	movs r0, #1
	bx lr
_0224735C:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _02247352
	movs r0, #0
	bx lr
	thumb_func_end ov17_02247350

	thumb_func_start ov17_02247368
ov17_02247368: @ 0x02247368
	movs r1, #0
_0224736A:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xf
	bne _02247374
	movs r0, #1
	bx lr
_02247374:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _0224736A
	movs r0, #0
	bx lr
	thumb_func_end ov17_02247368

	thumb_func_start ov17_02247380
ov17_02247380: @ 0x02247380
	movs r1, #0
_02247382:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x11
	bne _0224738C
	movs r0, #1
	bx lr
_0224738C:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _02247382
	movs r0, #0
	bx lr
	thumb_func_end ov17_02247380

	thumb_func_start ov17_02247398
ov17_02247398: @ 0x02247398
	movs r1, #0
_0224739A:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x12
	bne _022473A4
	movs r0, #1
	bx lr
_022473A4:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _0224739A
	movs r0, #0
	bx lr
	thumb_func_end ov17_02247398

	thumb_func_start ov17_022473B0
ov17_022473B0: @ 0x022473B0
	movs r1, #0
_022473B2:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x13
	bne _022473BC
	movs r0, #1
	bx lr
_022473BC:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _022473B2
	movs r0, #0
	bx lr
	thumb_func_end ov17_022473B0

	thumb_func_start ov17_022473C8
ov17_022473C8: @ 0x022473C8
	movs r1, #0
_022473CA:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x14
	bne _022473D4
	movs r0, #1
	bx lr
_022473D4:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _022473CA
	movs r0, #0
	bx lr
	thumb_func_end ov17_022473C8

	thumb_func_start ov17_022473E0
ov17_022473E0: @ 0x022473E0
	movs r1, #0
_022473E2:
	ldrb r0, [r2, #0xa]
	cmp r0, #0x15
	bne _022473EC
	movs r0, #1
	bx lr
_022473EC:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _022473E2
	movs r0, #0
	bx lr
	thumb_func_end ov17_022473E0

	thumb_func_start ov17_022473F8
ov17_022473F8: @ 0x022473F8
	push {r3, r4}
	lsls r1, r1, #1
	adds r2, r0, r1
	movs r1, #0x12
	ldrsh r3, [r2, r1]
	movs r4, #0
_02247404:
	ldrsh r2, [r0, r1]
	cmp r3, r2
	bgt _02247412
	adds r4, r4, #1
	adds r0, r0, #2
	cmp r4, #4
	blt _02247404
_02247412:
	cmp r4, #4
	bne _0224741C
	movs r0, #1
	pop {r3, r4}
	bx lr
_0224741C:
	movs r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov17_022473F8

	thumb_func_start ov17_02247424
ov17_02247424: @ 0x02247424
	push {r3, r4}
	ldrb r2, [r0]
	cmp r2, #4
	bne _0224744E
	lsls r1, r1, #1
	adds r2, r0, r1
	movs r1, #0x12
	ldrsh r3, [r2, r1]
	movs r4, #0
_02247436:
	ldrsh r2, [r0, r1]
	cmp r3, r2
	bgt _02247444
	adds r4, r4, #1
	adds r0, r0, #2
	cmp r4, #4
	blt _02247436
_02247444:
	cmp r4, #4
	bne _0224744E
	movs r0, #1
	pop {r3, r4}
	bx lr
_0224744E:
	movs r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_02247424

	thumb_func_start ov17_02247454
ov17_02247454: @ 0x02247454
	ldr r3, [sp]
	movs r1, #0
_02247458:
	ldrb r0, [r2, #0xa]
	cmp r0, #4
	bne _02247468
	ldrb r0, [r2, #0xb]
	cmp r3, r0
	bne _02247468
	movs r0, #1
	bx lr
_02247468:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _02247458
	movs r0, #0
	bx lr
	thumb_func_end ov17_02247454

	thumb_func_start ov17_02247474
ov17_02247474: @ 0x02247474
	ldr r3, [sp]
	movs r1, #0
_02247478:
	ldrb r0, [r2, #0xb]
	cmp r3, r0
	bne _02247482
	movs r0, #1
	bx lr
_02247482:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _02247478
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov17_02247474

	thumb_func_start ov17_02247490
ov17_02247490: @ 0x02247490
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x10]
	movs r4, #0
_02247496:
	ldrb r1, [r2, #0xb]
	cmp r5, r1
	beq _022474A4
	adds r4, r4, #1
	adds r2, #0xc
	cmp r4, #4
	blt _02247496
_022474A4:
	cmp r4, #4
	bne _022474AE
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022474AE:
	movs r5, #0
	adds r6, r5, #0
	movs r2, #1
	movs r1, #0x22
_022474B6:
	adds r4, r0, r6
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _022474C2
	strb r2, [r3, r6]
	adds r5, r5, #1
_022474C2:
	adds r6, r6, #1
	cmp r6, #3
	blt _022474B6
	cmp r5, #0
	ble _022474D2
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022474D2:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247490

	thumb_func_start ov17_022474D8
ov17_022474D8: @ 0x022474D8
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x10]
	movs r4, #0
_022474DE:
	ldrb r1, [r2, #0xb]
	cmp r5, r1
	beq _022474EC
	adds r4, r4, #1
	adds r2, #0xc
	cmp r4, #4
	blt _022474DE
_022474EC:
	cmp r4, #4
	bne _022474F6
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022474F6:
	movs r5, #0
	adds r6, r5, #0
	movs r2, #1
	movs r1, #0x22
_022474FE:
	adds r4, r0, r6
	ldrsb r4, [r4, r1]
	cmp r4, #0x1e
	bne _0224750A
	adds r5, r5, #1
	strb r2, [r3, r6]
_0224750A:
	adds r6, r6, #1
	cmp r6, #3
	blt _022474FE
	cmp r5, #0
	ble _0224751A
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0224751A:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_022474D8

	thumb_func_start ov17_02247520
ov17_02247520: @ 0x02247520
	movs r1, #0
_02247522:
	ldrb r0, [r2, #0xa]
	cmp r0, #8
	bne _0224752C
	movs r0, #1
	bx lr
_0224752C:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _02247522
	movs r0, #0
	bx lr
	thumb_func_end ov17_02247520

	thumb_func_start ov17_02247538
ov17_02247538: @ 0x02247538
	movs r1, #0
_0224753A:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xd
	bne _02247544
	movs r0, #1
	bx lr
_02247544:
	adds r1, r1, #1
	adds r2, #0xc
	cmp r1, #4
	blt _0224753A
	movs r0, #0
	bx lr
	thumb_func_end ov17_02247538

	thumb_func_start ov17_02247550
ov17_02247550: @ 0x02247550
	push {r3, r4, r5, r6}
	movs r6, #0
	adds r5, r6, #0
	movs r2, #1
	movs r1, #0x22
_0224755A:
	adds r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _02247566
	adds r6, r6, #1
	strb r2, [r3, r5]
_02247566:
	adds r5, r5, #1
	cmp r5, #3
	blt _0224755A
	cmp r6, #0
	ble _02247576
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02247576:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247550

	thumb_func_start ov17_0224757C
ov17_0224757C: @ 0x0224757C
	push {r3, r4, r5, r6}
	movs r6, #0
	adds r5, r6, #0
	movs r2, #1
	movs r1, #0x22
_02247586:
	adds r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x1e
	bne _02247592
	adds r6, r6, #1
	strb r2, [r3, r5]
_02247592:
	adds r5, r5, #1
	cmp r5, #3
	blt _02247586
	cmp r6, #0
	ble _022475A2
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022475A2:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_0224757C

	thumb_func_start ov17_022475A8
ov17_022475A8: @ 0x022475A8
	push {r3, r4, r5, r6}
	movs r6, #0
	adds r5, r6, #0
	movs r2, #1
	movs r1, #0x22
_022475B2:
	adds r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0xa
	bgt _022475BE
	adds r6, r6, #1
	strb r2, [r3, r5]
_022475BE:
	adds r5, r5, #1
	cmp r5, #3
	blt _022475B2
	cmp r6, #0
	ble _022475CE
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022475CE:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_022475A8

	thumb_func_start ov17_022475D4
ov17_022475D4: @ 0x022475D4
	push {r3, r4}
	movs r4, #0
	movs r1, #0x22
_022475DA:
	adds r2, r0, r4
	ldrsb r2, [r2, r1]
	cmp r2, #0x14
	bge _022475E8
	movs r0, #0
	pop {r3, r4}
	bx lr
_022475E8:
	adds r4, r4, #1
	cmp r4, #3
	blt _022475DA
	movs r1, #0
	movs r0, #1
_022475F2:
	strb r0, [r3, r1]
	adds r1, r1, #1
	cmp r1, #3
	blt _022475F2
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov17_022475D4

	thumb_func_start ov17_02247600
ov17_02247600: @ 0x02247600
	push {r3, r4}
	movs r4, #0
	movs r1, #0x22
_02247606:
	adds r2, r0, r4
	ldrsb r2, [r2, r1]
	cmp r2, #0x14
	ble _02247614
	movs r0, #0
	pop {r3, r4}
	bx lr
_02247614:
	adds r4, r4, #1
	cmp r4, #3
	blt _02247606
	movs r1, #0
	movs r0, #1
_0224761E:
	strb r0, [r3, r1]
	adds r1, r1, #1
	cmp r1, #3
	blt _0224761E
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov17_02247600

	thumb_func_start ov17_0224762C
ov17_0224762C: @ 0x0224762C
	push {r3, r4, r5, r6}
	movs r6, #0
	adds r5, r6, #0
	movs r2, #1
	movs r1, #0x22
_02247636:
	adds r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x14
	bgt _02247642
	strb r2, [r3, r5]
	adds r6, r6, #1
_02247642:
	adds r5, r5, #1
	cmp r5, #3
	blt _02247636
	cmp r6, #1
	bne _02247652
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02247652:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_0224762C

	thumb_func_start ov17_02247658
ov17_02247658: @ 0x02247658
	push {r3, r4, r5, r6}
	movs r6, #0
	adds r5, r6, #0
	movs r2, #1
	movs r1, #0x22
_02247662:
	adds r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _0224766E
	strb r2, [r3, r5]
	adds r6, r6, #1
_0224766E:
	adds r5, r5, #1
	cmp r5, #3
	blt _02247662
	cmp r6, #2
	bne _0224767E
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0224767E:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247658

	thumb_func_start ov17_02247684
ov17_02247684: @ 0x02247684
	push {r3, r4, r5, r6}
	movs r6, #0
	adds r5, r6, #0
	movs r2, #1
	movs r1, #0x22
_0224768E:
	adds r4, r0, r5
	ldrsb r4, [r4, r1]
	cmp r4, #0
	bne _0224769A
	strb r2, [r3, r5]
	adds r6, r6, #1
_0224769A:
	adds r5, r5, #1
	cmp r5, #3
	blt _0224768E
	cmp r6, #1
	bne _022476AA
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022476AA:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_02247684

	thumb_func_start ov17_022476B0
ov17_022476B0: @ 0x022476B0
	push {r3, r4, r5, r6}
	ldr r5, [sp, #0x10]
	movs r4, #0
_022476B6:
	ldrb r1, [r2, #0xb]
	cmp r5, r1
	beq _022476C4
	adds r4, r4, #1
	adds r2, #0xc
	cmp r4, #4
	blt _022476B6
_022476C4:
	cmp r4, #4
	bne _022476CE
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022476CE:
	movs r5, #0
	adds r6, r5, #0
	movs r2, #1
	movs r1, #0x22
_022476D6:
	adds r4, r0, r6
	ldrsb r4, [r4, r1]
	cmp r4, #0x28
	bne _022476E2
	strb r2, [r3, r6]
	adds r5, r5, #1
_022476E2:
	adds r6, r6, #1
	cmp r6, #3
	blt _022476D6
	cmp r5, #0
	ble _022476F2
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_022476F2:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov17_022476B0

	thumb_func_start ov17_022476F8
ov17_022476F8: @ 0x022476F8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02247718
	lsls r0, r4, #4
	adds r0, r5, r0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02247732
	bl FUN_02022974
	pop {r3, r4, r5, r6, r7, pc}
_02247718:
	bl FUN_02007DC8
	adds r6, r5, #0
	adds r6, #0x48
	lsls r7, r4, #4
	ldr r0, [r6, r7]
	bl FUN_020181C4
	lsls r0, r4, #2
	movs r1, #0
	adds r0, r5, r0
	str r1, [r0, #8]
	str r1, [r6, r7]
_02247732:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022476F8

	thumb_func_start ov17_02247734
ov17_02247734: @ 0x02247734
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0224773A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_022476F8
	adds r4, r4, #1
	cmp r4, #4
	blt _0224773A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_02247734

	thumb_func_start ov17_0224774C
ov17_0224774C: @ 0x0224774C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	movs r3, #2
	str r3, [sp, #4]
	ldr r3, _02247794 @ =0x000080EA
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x43
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _02247794 @ =0x000080EA
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x44
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _02247794 @ =0x000080EA
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x45
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02247794: .4byte 0x000080EA
	thumb_func_end ov17_0224774C

	thumb_func_start ov17_02247798
ov17_02247798: @ 0x02247798
	push {r4, lr}
	ldr r1, _022477B4 @ =0x000080EA
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _022477B4 @ =0x000080EA
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _022477B4 @ =0x000080EA
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_022477B4: .4byte 0x000080EA
	thumb_func_end ov17_02247798

	thumb_func_start ov17_022477B8
ov17_022477B8: @ 0x022477B8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x16
	movs r1, #0x18
	adds r7, r2, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x18
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _0224782C @ =0x022543F8
	bl FUN_0200CE6C
	lsls r1, r6, #0x10
	lsls r2, r7, #0x10
	movs r3, #1
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	str r0, [r4, #4]
	bl FUN_0200D500
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _022477FC
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0200D364
_022477FC:
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl FUN_0200D324
	lsls r0, r6, #8
	str r0, [r4, #8]
	lsls r0, r7, #8
	str r0, [r4, #0xc]
	ldr r0, _02247830 @ =0x000004F9
	ldr r2, _02247834 @ =0x0000C350
	adds r1, r5, r0
	str r1, [r4]
	ldrb r0, [r1]
	adds r0, r0, #1
	strb r0, [r1]
	ldr r0, _02247838 @ =ov17_02247840
	adds r1, r4, #0
	bl FUN_0200D9E8
	ldr r0, _0224783C @ =0x000006E1
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224782C: .4byte 0x022543F8
_02247830: .4byte 0x000004F9
_02247834: .4byte 0x0000C350
_02247838: .4byte ov17_02247840
_0224783C: .4byte 0x000006E1
	thumb_func_end ov17_022477B8

	thumb_func_start ov17_02247840
ov17_02247840: @ 0x02247840
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _022478AE
	ldr r0, [r4, #0x10]
	bl FUN_0201D2B8
	lsls r1, r0, #3
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r5, r0, #0xc
	movs r0, #6
	movs r3, #1
	ldr r1, [r4, #0x10]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	lsls r3, r3, #8
	subs r2, r0, r3
	str r2, [r4, #0xc]
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	asrs r6, r1, #7
	lsrs r6, r6, #0x18
	adds r6, r1, r6
	asrs r1, r6, #8
	adds r1, r1, r5
	asrs r5, r2, #7
	lsrs r5, r5, #0x18
	adds r5, r2, r5
	lsls r1, r1, #0x10
	lsls r2, r5, #8
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0xc
	bl FUN_0200D500
	ldrh r0, [r4, #0x16]
	adds r0, r0, #1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x16]
	cmp r0, #0x3c
	bhs _022478A6
	ldr r1, [r4, #0xc]
	ldr r0, _022478CC @ =0xFFFFE000
	cmp r1, r0
	bgt _022478C8
_022478A6:
	ldrb r0, [r4, #0x14]
	adds r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_022478AE:
	ldr r0, [r4, #4]
	bl FUN_0200D0F4
	ldr r1, [r4]
	ldrb r0, [r1]
	subs r0, r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_022478C8:
	pop {r4, r5, r6, pc}
	nop
_022478CC: .4byte 0xFFFFE000
	thumb_func_end ov17_02247840

	thumb_func_start ov17_022478D0
ov17_022478D0: @ 0x022478D0
	push {r3, r4, r5, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [r5, #0x24]
	adds r4, r1, #0
	cmp r0, #0
	beq _022478E2
	bl FUN_02022974
_022478E2:
	movs r1, #0x30
	ldr r2, [r5]
	muls r1, r4, r1
	adds r1, r2, r1
	ldrh r1, [r1, #0x1a]
	add r0, sp, #0x10
	bl FUN_0207697C
	ldr r0, _02247914 @ =0xFFFFFDC0
	movs r2, #5
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	add r1, sp, #0x10
	lsls r2, r2, #6
	movs r3, #0x20
	bl FUN_02007C34
	str r0, [r5, #0x24]
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.align 2, 0
_02247914: .4byte 0xFFFFFDC0
	thumb_func_end ov17_022478D0

	thumb_func_start ov17_02247918
ov17_02247918: @ 0x02247918
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0224792A
	bl FUN_02007DC8
	movs r0, #0
	str r0, [r4, #0x24]
_0224792A:
	pop {r4, pc}
	thumb_func_end ov17_02247918

	thumb_func_start ov17_0224792C
ov17_0224792C: @ 0x0224792C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #0
	beq _02247942
	cmp r6, #0
	bne _02247942
	bl FUN_02022974
_02247942:
	cmp r4, #0
	beq _0224798C
	cmp r4, #1
	bne _02247988
	ldrb r4, [r6]
	ldr r3, [r5]
	movs r0, #1
	lsls r2, r4, #2
	str r0, [sp]
	movs r0, #2
	adds r2, r3, r2
	adds r4, r3, r4
	movs r3, #0x42
	str r0, [sp, #4]
	lsls r3, r3, #2
	adds r2, #0xe8
	ldrb r3, [r4, r3]
	ldr r0, [r5, #0x48]
	ldr r2, [r2]
	movs r1, #0
	bl FUN_0200B48C
	ldrb r0, [r6]
	ldr r1, [r5, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [r5, #0x48]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_02247988:
	bl FUN_02022974
_0224798C:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224792C

	thumb_func_start ov17_02247990
ov17_02247990: @ 0x02247990
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [r5]
	ldr r0, _02247A00 @ =0x00000171
	adds r7, r2, #0
	ldrb r0, [r1, r0]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _022479B2
	ldr r0, _02247A04 @ =0x00001988
	ldr r0, [r1, r0]
	bl FUN_02027AC0
	adds r4, r0, #0
	b _022479B4
_022479B2:
	movs r4, #1
_022479B4:
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	adds r0, r5, #0
	bl ov17_0224792C
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0xff
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x4c]
	adds r0, #0x34
	movs r1, #1
	bl FUN_0201D738
	adds r5, #0xd0
	strb r0, [r5]
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247A00: .4byte 0x00000171
_02247A04: .4byte 0x00001988
	thumb_func_end ov17_02247990

	thumb_func_start ov17_02247A08
ov17_02247A08: @ 0x02247A08
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	adds r6, r0, #0
	adds r4, r2, #0
	cmp r5, #0xf
	blo _02247A1A
	bl FUN_02022974
_02247A1A:
	str r4, [sp]
	ldr r2, _02247A34 @ =0x0225442C
	lsls r3, r5, #2
	ldr r4, _02247A38 @ =0x0225442E
	ldrh r2, [r2, r3]
	ldrb r3, [r4, r3]
	ldr r1, [r6, #0x44]
	adds r0, r6, #0
	bl ov17_02247990
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02247A34: .4byte 0x0225442C
_02247A38: .4byte 0x0225442E
	thumb_func_end ov17_02247A08

	thumb_func_start ov17_02247A3C
ov17_02247A3C: @ 0x02247A3C
	ldr r3, _02247A44 @ =FUN_0201D724
	adds r0, #0xd0
	ldrb r0, [r0]
	bx r3
	.align 2, 0
_02247A44: .4byte FUN_0201D724
	thumb_func_end ov17_02247A3C

	thumb_func_start ov17_02247A48
ov17_02247A48: @ 0x02247A48
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02247A7C @ =0x02254488
	add r3, sp, #0
	str r1, [sp]
	movs r1, #0x11
	strh r1, [r3, #4]
	ldr r1, [r0]
	ldr r2, _02247A80 @ =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	subs r1, r2, #7
	ldr r4, [r0]
	adds r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	ldr r1, _02247A84 @ =0x000004FC
	adds r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02247A7C: .4byte 0x02254488
_02247A80: .4byte 0x00000123
_02247A84: .4byte 0x000004FC
	thumb_func_end ov17_02247A48

	thumb_func_start ov17_02247A88
ov17_02247A88: @ 0x02247A88
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02247A88

	thumb_func_start ov17_02247A9C
ov17_02247A9C: @ 0x02247A9C
	push {r3, lr}
	adds r1, r2, #0
	movs r2, #0
	adds r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02247A9C

	thumb_func_start ov17_02247AAC
ov17_02247AAC: @ 0x02247AAC
	bx lr
	.align 2, 0
	thumb_func_end ov17_02247AAC

	thumb_func_start ov17_02247AB0
ov17_02247AB0: @ 0x02247AB0
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02247AB0

	thumb_func_start ov17_02247AC4
ov17_02247AC4: @ 0x02247AC4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	ldr r0, _02247AE8 @ =0x00000F1C
	movs r2, #1
	strb r2, [r1, r0]
	ldr r0, [r1]
	bl FUN_02094EDC
	cmp r0, #0
	bne _02247AE6
	movs r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov17_0224F26C
_02247AE6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02247AE8: .4byte 0x00000F1C
	thumb_func_end ov17_02247AC4

	thumb_func_start ov17_02247AEC
ov17_02247AEC: @ 0x02247AEC
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02247AEC

	thumb_func_start ov17_02247B00
ov17_02247B00: @ 0x02247B00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	adds r6, r1, #0
	movs r0, #0x16
	movs r1, #0x1c
	adds r5, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r6, [r4]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	movs r5, #0
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0xc]
	ldrb r0, [r7]
	strb r0, [r4, #0x11]
	b _02247B60
_02247B3C:
	ldr r1, [r4]
	lsls r0, r5, #4
	adds r1, r1, r0
	movs r0, #0xf2
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02247B5E
	bl FUN_0225B020
	ldr r1, [r4]
	lsls r0, r5, #4
	adds r2, r1, r0
	movs r0, #0xf2
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r2, r0]
_02247B5E:
	adds r5, r5, #1
_02247B60:
	cmp r5, #4
	blt _02247B3C
	ldrb r0, [r7]
	ldr r1, [r6, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #2
	bl FUN_020765B8
	add r0, sp, #0x14
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	movs r0, #0x16
	str r0, [sp, #0x20]
	movs r1, #0x80
	movs r0, #0x68
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldrb r2, [r7]
	lsls r2, r2, #4
	adds r3, r6, r2
	ldr r2, _02247C44 @ =0x00000F24
	str r1, [r3, r2]
	ldrb r1, [r7]
	lsls r1, r1, #4
	adds r3, r6, r1
	adds r1, r2, #4
	str r0, [r3, r1]
	ldrb r1, [r7]
	ldr r2, [r6]
	add r0, sp, #0x14
	lsls r1, r1, #2
	adds r1, r2, r1
	adds r1, #0xf8
	ldr r1, [r1]
	bl FUN_0225AFD4
	ldrb r1, [r7]
	lsls r1, r1, #4
	adds r2, r6, r1
	movs r1, #0xf2
	lsls r1, r1, #4
	str r0, [r2, r1]
	ldrb r0, [r7]
	lsls r0, r0, #4
	adds r0, r6, r0
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_0225B074
	ldr r0, _02247C48 @ =0x04000048
	movs r2, #0x3f
	ldrh r1, [r0]
	movs r3, #0x1f
	bics r1, r2
	adds r5, r1, #0
	orrs r5, r3
	movs r1, #0x20
	orrs r1, r5
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #2]
	movs r1, #1
	adds r2, r1, #0
	adds r0, #8
	subs r2, #0x11
	blx FUN_020BF578
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02247C4C @ =0xFFFF1FFF
	movs r3, #0xff
	ands r1, r0
	lsrs r0, r2, #0xd
	orrs r0, r1
	movs r1, #0xf6
	str r0, [r2]
	lsls r1, r1, #4
	movs r0, #0
	strb r0, [r6, r1]
	adds r2, r1, #1
	strb r0, [r6, r2]
	adds r2, r1, #2
	strb r3, [r6, r2]
	ldr r2, _02247C50 @ =0x02254468
	adds r1, r1, #3
	ldrsb r2, [r2, r0]
	movs r3, #2
	adds r2, r2, #4
	lsls r2, r2, #3
	strb r2, [r6, r1]
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r6, #0x30]
	movs r0, #0x2d
	movs r1, #0x15
	bl FUN_02006E60
	ldr r0, _02247C54 @ =ov17_02247C5C
	ldr r2, _02247C58 @ =0x00007530
	adds r1, r4, #0
	bl FUN_0200D9E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02247C44: .4byte 0x00000F24
_02247C48: .4byte 0x04000048
_02247C4C: .4byte 0xFFFF1FFF
_02247C50: .4byte 0x02254468
_02247C54: .4byte ov17_02247C5C
_02247C58: .4byte 0x00007530
	thumb_func_end ov17_02247B00

	thumb_func_start ov17_02247C5C
ov17_02247C5C: @ 0x02247C5C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #4
	bhi _02247D3E
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02247C74: @ jump table
	.2byte _02247C7E - _02247C74 - 2 @ case 0
	.2byte _02247C84 - _02247C74 - 2 @ case 1
	.2byte _02247CDE - _02247C74 - 2 @ case 2
	.2byte _02247CE4 - _02247C74 - 2 @ case 3
	.2byte _02247D24 - _02247C74 - 2 @ case 4
_02247C7E:
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247C84:
	ldr r1, _02247D58 @ =0x04000048
	movs r0, #0x3f
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #0x1e
	orrs r2, r0
	movs r0, #0x20
	orrs r0, r2
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #2
	bl FUN_020765B8
	adds r3, r0, #0
	ldrb r0, [r4, #0x11]
	movs r2, #0xf2
	lsls r2, r2, #4
	lsls r1, r0, #4
	ldr r0, [r4]
	adds r5, r0, r1
	adds r1, r2, #4
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl FUN_0225B158
	ldrb r0, [r4, #0x11]
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	movs r0, #0xf2
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_0225B074
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247CDE:
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247CE4:
	ldr r1, _02247D58 @ =0x04000048
	movs r0, #0x3f
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #0x1f
	orrs r2, r0
	movs r0, #0x20
	orrs r0, r2
	strh r0, [r1]
	movs r1, #0
	str r1, [sp]
	ldr r0, [r4]
	ldr r2, _02247D5C @ =0x00001FFF
	ldr r0, [r0, #0x50]
	adds r3, r1, #0
	bl FUN_02003A2C
	movs r3, #0
	str r3, [sp]
	ldr r0, [r4]
	ldr r2, _02247D60 @ =0x00003FFF
	ldr r0, [r0, #0x50]
	movs r1, #2
	bl FUN_02003A2C
	ldr r0, _02247D64 @ =0x000006EC
	bl FUN_02005748
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247D24:
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0xa
	ble _02247D56
	movs r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247D3E:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02247D56:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02247D58: .4byte 0x04000048
_02247D5C: .4byte 0x00001FFF
_02247D60: .4byte 0x00003FFF
_02247D64: .4byte 0x000006EC
	thumb_func_end ov17_02247C5C

	thumb_func_start ov17_02247D68
ov17_02247D68: @ 0x02247D68
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02247D68

	thumb_func_start ov17_02247D7C
ov17_02247D7C: @ 0x02247D7C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x1c
	adds r5, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02247DC0 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02247DC4 @ =ov17_02247DC8
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247DC0: .4byte 0x00007530
_02247DC4: .4byte ov17_02247DC8
	thumb_func_end ov17_02247D7C

	thumb_func_start ov17_02247DC8
ov17_02247DC8: @ 0x02247DC8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02247DDA
	cmp r0, #1
	beq _02247E0A
	b _02247E5E
_02247DDA:
	ldrb r0, [r4, #0x11]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #0
	bl FUN_020080C0
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x11]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #1
	bl FUN_020080C0
	lsls r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02247E0A:
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #2
	bl FUN_020765B8
	movs r0, #1
	ldr r1, [r4, #0x18]
	lsls r0, r0, #8
	adds r2, r1, r0
	lsls r1, r0, #6
	str r2, [r4, #0x18]
	cmp r2, r1
	blt _02247E34
	lsls r0, r0, #6
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_02247E34:
	ldrb r0, [r4, #0x11]
	ldr r2, [r4, #0x14]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldrb r0, [r4, #0x11]
	ldr r2, [r4, #0x18]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	movs r1, #1
	asrs r2, r2, #8
	bl FUN_02007DEC
	pop {r3, r4, r5, pc}
_02247E5E:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02247DC8

	thumb_func_start ov17_02247E78
ov17_02247E78: @ 0x02247E78
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02247E78

	thumb_func_start ov17_02247E8C
ov17_02247E8C: @ 0x02247E8C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x1c
	adds r5, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02247ED4 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0x12]
	movs r0, #0
	strb r0, [r4, #0x1a]
	ldr r0, _02247ED8 @ =ov17_02247F8C
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247ED4: .4byte 0x00007530
_02247ED8: .4byte ov17_02247F8C
	thumb_func_end ov17_02247E8C

	thumb_func_start ov17_02247EDC
ov17_02247EDC: @ 0x02247EDC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x1c
	adds r5, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02247F24 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x12]
	movs r0, #1
	strb r0, [r4, #0x1a]
	ldr r0, _02247F28 @ =ov17_02247F8C
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247F24: .4byte 0x00007530
_02247F28: .4byte ov17_02247F8C
	thumb_func_end ov17_02247EDC

	thumb_func_start ov17_02247F2C
ov17_02247F2C: @ 0x02247F2C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x16
	movs r1, #0x1c
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x1c
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	ldr r2, _02247F84 @ =0x00007530
	str r0, [r4]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r1, [r6, #1]
	ldrb r0, [r6, #2]
	adds r0, r1, r0
	strb r0, [r4, #0x12]
	ldrb r0, [r6, #1]
	adds r1, r4, #0
	strb r0, [r4, #0x14]
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x15]
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #1
	strb r0, [r4, #0x1b]
	ldr r0, _02247F88 @ =ov17_02247F8C
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247F84: .4byte 0x00007530
_02247F88: .4byte ov17_02247F8C
	thumb_func_end ov17_02247F2C

	thumb_func_start ov17_02247F8C
ov17_02247F8C: @ 0x02247F8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r0, #0
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _02247FA6
	cmp r0, #1
	beq _02247FB6
	cmp r0, #2
	bne _02247FA4
	b _022480FE
_02247FA4:
	b _02248118
_02247FA6:
	ldr r0, _02248134 @ =0x000006E5
	bl FUN_02005748
	movs r0, #0xf
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x10]
	adds r0, r0, #1
	strb r0, [r5, #0x10]
_02247FB6:
	ldrb r1, [r5, #0x13]
	ldrb r0, [r5, #0x12]
	cmp r1, r0
	blo _02247FD2
	movs r0, #0
	strb r0, [r5, #0x11]
	ldr r0, _02248134 @ =0x000006E5
	bl FUN_02005748
	ldrb r0, [r5, #0x10]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02247FD2:
	ldrb r0, [r5, #0x1b]
	cmp r0, #1
	bne _02247FE2
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	blo _02247FE2
	movs r0, #1
	strb r0, [r5, #0x1a]
_02247FE2:
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _02247FF0
	subs r0, r0, #1
	add sp, #8
	strb r0, [r5, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_02247FF0:
	movs r0, #3
	strb r0, [r5, #0x11]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_02094E98
	movs r1, #0x60
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_02094E98
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1a
	subs r1, r1, r2
	movs r0, #0x1a
	rors r1, r0
	adds r0, r2, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_02094E98
	movs r1, #1
	tst r0, r1
	beq _02248034
	ldr r0, [sp, #4]
	adds r0, #0x80
	b _0224803A
_02248034:
	ldr r0, [sp, #4]
	movs r1, #0x80
	subs r0, r1, r0
_0224803A:
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_02094E98
	movs r1, #1
	tst r0, r1
	beq _02248052
	adds r0, r7, #0
	adds r0, #0x60
	b _02248056
_02248052:
	movs r0, #0x60
	subs r0, r0, r7
_02248056:
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _022480C6
	movs r0, #0x16
	ldrsh r0, [r5, r0]
	cmp r0, #0x80
	bge _0224806C
	cmp r6, #0x80
	blt _02248074
_0224806C:
	cmp r0, #0x80
	ble _022480C6
	cmp r6, #0x80
	ble _022480C6
_02248074:
	movs r0, #0x18
	ldrsh r0, [r5, r0]
	cmp r0, #0x60
	bge _02248080
	cmp r4, #0x60
	blt _02248088
_02248080:
	cmp r0, #0x60
	ble _022480C6
	cmp r4, #0x60
	ble _022480C6
_02248088:
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_02094E98
	movs r1, #1
	tst r0, r1
	beq _022480B2
	cmp r6, #0x80
	bge _022480A6
	ldr r0, [sp, #4]
	adds r0, #0x80
	str r0, [sp, #4]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	b _022480C6
_022480A6:
	ldr r0, [sp, #4]
	movs r1, #0x80
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	b _022480C6
_022480B2:
	cmp r4, #0x60
	bge _022480BE
	adds r7, #0x60
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	b _022480C6
_022480BE:
	movs r0, #0x60
	subs r0, r0, r7
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
_022480C6:
	ldrb r1, [r5, #0x13]
	movs r0, #1
	tst r0, r1
	ldrb r0, [r5, #0x1a]
	beq _022480E2
	str r0, [sp]
	movs r3, #0x2d
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r4, #0
	lsls r3, r3, #0xe
	bl ov17_022477B8
	b _022480F0
_022480E2:
	str r0, [sp]
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov17_022477B8
_022480F0:
	strh r6, [r5, #0x16]
	strh r4, [r5, #0x18]
	ldrb r0, [r5, #0x13]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r5, #0x13]
	pop {r3, r4, r5, r6, r7, pc}
_022480FE:
	ldrb r0, [r5, #0x11]
	adds r0, r0, #1
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1e
	bls _02248130
	movs r0, #0
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x10]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02248118:
	movs r2, #0
	ldr r0, [r5, #0xc]
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_02248130:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02248134: .4byte 0x000006E5
	thumb_func_end ov17_02247F8C

	thumb_func_start ov17_02248138
ov17_02248138: @ 0x02248138
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02248138

	thumb_func_start ov17_0224814C
ov17_0224814C: @ 0x0224814C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x1c
	adds r5, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02248190 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02248194 @ =ov17_02248198
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248190: .4byte 0x00007530
_02248194: .4byte ov17_02248198
	thumb_func_end ov17_0224814C

	thumb_func_start ov17_02248198
ov17_02248198: @ 0x02248198
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #2
	bl FUN_020765B8
	adds r3, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _022481BC
	cmp r0, #1
	beq _022481E4
	b _02248218
_022481BC:
	ldrb r0, [r4, #0x11]
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _02248254 @ =0x00000F24
	ldr r1, [r1, r0]
	adds r0, r0, #4
	lsls r1, r1, #8
	str r1, [r4, #0x14]
	ldrb r1, [r4, #0x11]
	ldr r2, [r4]
	lsls r1, r1, #4
	adds r1, r2, r1
	ldr r0, [r1, r0]
	lsls r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022481E4:
	movs r0, #3
	ldr r1, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0x4b
	lsls r0, r0, #0xa
	str r1, [r4, #0x14]
	cmp r1, r0
	blt _022481FC
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_022481FC:
	ldrb r0, [r4, #0x11]
	ldr r2, [r4, #0x18]
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	movs r0, #0xf2
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [r4, #0x14]
	asrs r2, r2, #8
	asrs r1, r1, #8
	bl FUN_0225B158
	pop {r3, r4, r5, pc}
_02248218:
	ldrb r0, [r4, #0x11]
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	movs r0, #0xf2
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl FUN_0225B020
	ldrb r0, [r4, #0x11]
	movs r2, #0
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r1, r1, r0
	movs r0, #0xf2
	lsls r0, r0, #4
	str r2, [r1, r0]
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	nop
_02248254: .4byte 0x00000F24
	thumb_func_end ov17_02248198

	thumb_func_start ov17_02248258
ov17_02248258: @ 0x02248258
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02248258

	thumb_func_start ov17_0224826C
ov17_0224826C: @ 0x0224826C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x18
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x18
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _022482A8 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _022482AC @ =ov17_022482B0
	str r6, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022482A8: .4byte 0x00007530
_022482AC: .4byte ov17_022482B0
	thumb_func_end ov17_0224826C

	thumb_func_start ov17_022482B0
ov17_022482B0: @ 0x022482B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _022482C0
	b _022483E6
_022482C0:
	ldr r0, [sp]
	movs r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _022482D4
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_022482D4:
	ldr r0, [sp]
	movs r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _022482E8
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_022482E8:
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0]
	movs r1, #2
	ldr r0, [r0, #0x30]
	bl FUN_02019FE4
	mov ip, r0
	movs r0, #0
	str r0, [sp, #8]
	b _02248360
_02248300:
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _02248404 @ =0x02254468
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	adds r0, r1, r0
	bmi _0224835A
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	ldr r0, [sp]
	movs r5, #0
	ldrb r0, [r0, #0x12]
	movs r7, #0x3f
	str r5, [sp, #4]
	lsls r1, r0, #1
	ldr r0, _02248408 @ =0x02254470
	lsls r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsls r0, r0, #5
	adds r6, r1, r0
	b _02248354
_02248330:
	movs r4, #0
	b _02248348
_02248334:
	adds r0, r5, r4
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	adds r0, r6, r4
	adds r4, r4, #1
	orrs r0, r1
	strh r0, [r3, r2]
_02248348:
	cmp r4, #8
	blt _02248334
	ldr r0, [sp, #4]
	adds r5, #8
	adds r0, r0, #1
	str r0, [sp, #4]
_02248354:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _02248330
_0224835A:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_02248360:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _02248300
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _022483A2
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _022483A2
	ldr r0, _02248404 @ =0x02254468
	subs r1, r1, #1
	ldrsb r0, [r0, r1]
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	movs r0, #0
	movs r1, #0x3f
	str r0, [sp, #4]
	lsls r1, r1, #0xa
	b _0224839C
_0224838C:
	ldr r0, [sp, #4]
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
_0224839C:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0224838C
_022483A2:
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl FUN_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	adds r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _02248400
	ldr r1, [sp]
	movs r0, #0
	movs r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	adds r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	adds r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _02248400
	adds r0, r1, #0
	ldrb r0, [r0, #0x10]
	adds r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022483E6:
	adds r0, r1, #0
	movs r2, #0
	ldr r0, [r0, #0xc]
	adds r1, r1, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_02248400:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02248404: .4byte 0x02254468
_02248408: .4byte 0x02254470
	thumb_func_end ov17_022482B0

	thumb_func_start ov17_0224840C
ov17_0224840C: @ 0x0224840C
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224840C

	thumb_func_start ov17_02248420
ov17_02248420: @ 0x02248420
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x18
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x18
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _0224845C @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02248460 @ =ov17_02248464
	str r6, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224845C: .4byte 0x00007530
_02248460: .4byte ov17_02248464
	thumb_func_end ov17_02248420

	thumb_func_start ov17_02248464
ov17_02248464: @ 0x02248464
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _02248474
	b _022485C2
_02248474:
	ldr r0, [sp]
	movs r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02248488
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_02248488:
	ldr r0, [sp]
	movs r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224849C
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_0224849C:
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0]
	movs r1, #2
	ldr r0, [r0, #0x30]
	bl FUN_02019FE4
	mov ip, r0
	movs r0, #0
	str r0, [sp, #8]
	b _0224851C
_022484B4:
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	movs r0, #4
	subs r1, r0, r1
	ldr r0, _022485E0 @ =0x02254468
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	adds r0, r1, r0
	bmi _02248516
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	ldr r0, [sp]
	movs r5, #0
	ldrb r1, [r0, #0x12]
	movs r0, #0xb
	movs r7, #0x3f
	subs r0, r0, r1
	lsls r1, r0, #1
	ldr r0, _022485E4 @ =0x02254470
	str r5, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsls r7, r7, #0xa
	lsls r0, r0, #5
	adds r6, r1, r0
	b _02248510
_022484EC:
	movs r4, #0
	b _02248504
_022484F0:
	adds r0, r5, r4
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	adds r0, r6, r4
	adds r4, r4, #1
	orrs r0, r1
	strh r0, [r3, r2]
_02248504:
	cmp r4, #8
	blt _022484F0
	ldr r0, [sp, #4]
	adds r5, #8
	adds r0, r0, #1
	str r0, [sp, #4]
_02248510:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _022484EC
_02248516:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_0224851C:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _022484B4
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0224857E
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0224857E
	movs r0, #5
	subs r1, r0, r1
	ldr r0, _022485E0 @ =0x02254468
	movs r7, #0x3f
	ldrsb r0, [r0, r1]
	lsls r7, r7, #0xa
	movs r6, #0x1d
	adds r0, r0, #3
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	movs r0, #0
	movs r1, #2
	str r0, [sp, #4]
	lsls r1, r1, #8
	b _02248578
_02248552:
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	lsls r4, r0, #1
	ldrh r0, [r3, r4]
	lsls r5, r5, #0x1d
	ands r0, r7
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	ldrh r2, [r3, r4]
	lsrs r0, r0, #0x1f
	subs r5, r5, r0
	rors r5, r6
	adds r0, r0, r5
	adds r0, r0, r1
	orrs r0, r2
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
_02248578:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _02248552
_0224857E:
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl FUN_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	adds r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _022485DC
	ldr r1, [sp]
	movs r0, #0
	movs r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	adds r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	adds r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _022485DC
	adds r0, r1, #0
	ldrb r0, [r0, #0x10]
	adds r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022485C2:
	adds r0, r1, #0
	movs r2, #0
	ldr r0, [r0, #0xc]
	adds r1, r1, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_022485DC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022485E0: .4byte 0x02254468
_022485E4: .4byte 0x02254470
	thumb_func_end ov17_02248464

	thumb_func_start ov17_022485E8
ov17_022485E8: @ 0x022485E8
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_022485E8

	thumb_func_start ov17_022485FC
ov17_022485FC: @ 0x022485FC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x1c
	adds r5, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02248640 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02248644 @ =ov17_02248648
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248640: .4byte 0x00007530
_02248644: .4byte ov17_02248648
	thumb_func_end ov17_022485FC

	thumb_func_start ov17_02248648
ov17_02248648: @ 0x02248648
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224865A
	cmp r0, #1
	beq _02248684
	b _022486C8
_0224865A:
	ldrb r1, [r4, #0x11]
	ldr r0, [r4]
	bl ov17_022478D0
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #0x24]
	bl FUN_020080C0
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x24]
	bl FUN_020080C0
	lsls r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_02248684:
	movs r0, #1
	ldr r1, [r4, #0x14]
	lsls r0, r0, #0xa
	subs r1, r1, r0
	movs r0, #0xe6
	lsls r0, r0, #8
	str r1, [r4, #0x14]
	cmp r1, r0
	bgt _0224869E
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_0224869E:
	ldr r3, [r4, #0x14]
	ldr r0, [r4]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	ldr r0, [r0, #0x24]
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldr r3, [r4, #0x18]
	ldr r0, [r4]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	ldr r0, [r0, #0x24]
	movs r1, #1
	asrs r2, r2, #8
	bl FUN_02007DEC
	pop {r3, r4, r5, pc}
_022486C8:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_02248648

	thumb_func_start ov17_022486E4
ov17_022486E4: @ 0x022486E4
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_022486E4

	thumb_func_start ov17_022486F8
ov17_022486F8: @ 0x022486F8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x1c
	adds r5, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _0224873C @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldr r0, _02248740 @ =ov17_02248744
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224873C: .4byte 0x00007530
_02248740: .4byte ov17_02248744
	thumb_func_end ov17_022486F8

	thumb_func_start ov17_02248744
ov17_02248744: @ 0x02248744
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02248756
	cmp r0, #1
	beq _02248784
	b _022487C8
_02248756:
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _02248762
	bl FUN_02022974
_02248762:
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #0x24]
	bl FUN_020080C0
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x24]
	bl FUN_020080C0
	lsls r0, r0, #8
	str r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_02248784:
	movs r0, #1
	ldr r1, [r4, #0x14]
	lsls r0, r0, #0xa
	adds r1, r1, r0
	movs r0, #5
	lsls r0, r0, #0xe
	str r1, [r4, #0x14]
	cmp r1, r0
	blt _0224879E
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_0224879E:
	ldr r3, [r4, #0x14]
	ldr r0, [r4]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	ldr r0, [r0, #0x24]
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldr r3, [r4, #0x18]
	ldr r0, [r4]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	ldr r0, [r0, #0x24]
	movs r1, #1
	asrs r2, r2, #8
	bl FUN_02007DEC
	pop {r3, r4, r5, pc}
_022487C8:
	ldr r0, [r4]
	bl ov17_02247918
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02248744

	thumb_func_start ov17_022487E8
ov17_022487E8: @ 0x022487E8
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_022487E8

	thumb_func_start ov17_022487FC
ov17_022487FC: @ 0x022487FC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r6, r1, #0
	movs r0, #0x16
	movs r1, #0x58
	adds r5, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x58
	blx FUN_020C4CF4
	str r6, [r4]
	ldrh r0, [r5]
	ldr r2, _02248858 @ =0x00007530
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r0, [r4, #0xc]
	ldrb r0, [r7]
	strb r0, [r4, #0x11]
	str r6, [r4, #0x2c]
	str r6, [r4, #0x38]
	adds r0, r4, #0
	ldrb r1, [r7]
	adds r0, #0x46
	strb r1, [r0]
	str r6, [r4, #0x48]
	ldrb r0, [r7]
	ldr r1, [r6, #0xc]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r4, #0
	str r0, [r4, #0x24]
	ldr r0, _0224885C @ =ov17_02248860
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248858: .4byte 0x00007530
_0224885C: .4byte ov17_02248860
	thumb_func_end ov17_022487FC

	thumb_func_start ov17_02248860
ov17_02248860: @ 0x02248860
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r4, r0, #0
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _02248878
	cmp r0, #1
	beq _02248902
	cmp r0, #2
	beq _0224892C
	b _0224895A
_02248878:
	ldr r0, _02248978 @ =ov17_02248A24
	ldr r2, _0224897C @ =0x0000753A
	adds r1, #0x2c
	bl FUN_0200D9E8
	adds r1, r5, #0
	ldr r0, _02248980 @ =ov17_02248BE0
	ldr r2, _0224897C @ =0x0000753A
	adds r1, #0x48
	bl FUN_0200D9E8
	ldr r0, [r5, #0x38]
	ldr r1, [r0, #0xc]
	adds r0, r5, #0
	adds r0, #0x46
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #2
	bl FUN_020765B8
	adds r4, r0, #0
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	movs r0, #0x16
	str r0, [sp, #0xc]
	movs r0, #0x80
	adds r4, #0x40
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [r5, #0x38]
	add r0, sp, #0
	ldr r2, [r1]
	adds r1, r5, #0
	adds r1, #0x46
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r2, r1
	adds r1, #0xf8
	ldr r1, [r1]
	bl FUN_0225AFD4
	adds r1, r5, #0
	adds r1, #0x46
	ldrb r1, [r1]
	ldr r2, [r5, #0x38]
	lsls r1, r1, #4
	adds r2, r2, r1
	movs r1, #0xf2
	lsls r1, r1, #4
	str r0, [r2, r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrb r0, [r0]
	ldr r2, [r5, #0x38]
	lsls r0, r0, #4
	adds r0, r2, r0
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_0225B074
	ldrb r0, [r5, #0x10]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_02248902:
	adds r0, r5, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	ldr r0, _02248984 @ =ov17_022489C8
	ldr r2, _0224897C @ =0x0000753A
	adds r1, #0x14
	bl FUN_0200D9E8
	adds r1, r5, #0
	ldr r0, _02248988 @ =ov17_02248AA4
	ldr r2, _0224897C @ =0x0000753A
	adds r1, #0x38
	bl FUN_0200D9E8
	ldrb r0, [r5, #0x10]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_0224892C:
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	adds r0, r5, #0
	adds r0, #0x55
	ldrb r0, [r0]
	cmp r0, #1
	bne _02248972
	ldr r0, _0224898C @ =0x000006E5
	bl FUN_02005748
	ldrb r0, [r5, #0x10]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_0224895A:
	movs r2, #0
	ldr r0, [r5, #0xc]
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_02248972:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02248978: .4byte ov17_02248A24
_0224897C: .4byte 0x0000753A
_02248980: .4byte ov17_02248BE0
_02248984: .4byte ov17_022489C8
_02248988: .4byte ov17_02248AA4
_0224898C: .4byte 0x000006E5
	thumb_func_end ov17_02248860

	thumb_func_start ov17_02248990
ov17_02248990: @ 0x02248990
	push {r3}
	sub sp, #0xc
	add r2, sp, #0
	movs r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	ldr r1, [r0, #0x20]
	ldr r2, [sp]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	adds r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #4]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	adds r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #8]
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	adds r1, r2, r1
	str r1, [r0, #0x30]
	add sp, #0xc
	pop {r3}
	bx lr
	thumb_func_end ov17_02248990

	thumb_func_start ov17_022489C8
ov17_022489C8: @ 0x022489C8
	push {r4, lr}
	adds r4, r1, #0
	ldrb r2, [r4, #0x14]
	cmp r2, #0
	beq _022489D8
	cmp r2, #1
	beq _022489FC
	b _02248A14
_022489D8:
	movs r0, #0
	str r0, [r4]
	ldr r0, [r4, #0x10]
	str r0, [r4, #8]
	movs r0, #0x16
	bl FUN_02236004
	str r0, [r4, #0xc]
	bl FUN_02236320
	ldr r0, [r4, #0xc]
	ldr r1, _02248A20 @ =ov17_02248990
	bl FUN_02236384
	ldrb r0, [r4, #0x14]
	adds r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, pc}
_022489FC:
	ldr r0, [r4, #0xc]
	bl FUN_022363C4
	cmp r0, #0
	bne _02248A1C
	ldr r0, [r4, #0xc]
	bl FUN_02236428
	ldrb r0, [r4, #0x14]
	adds r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, pc}
_02248A14:
	movs r1, #1
	strb r1, [r4, #0x15]
	bl FUN_0200DA58
_02248A1C:
	pop {r4, pc}
	nop
_02248A20: .4byte ov17_02248990
	thumb_func_end ov17_022489C8

	thumb_func_start ov17_02248A24
ov17_02248A24: @ 0x02248A24
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02248A3C
	cmp r0, #1
	beq _02248A56
	cmp r0, #2
	beq _02248A86
	b _02248A90
_02248A3C:
	ldrb r0, [r4, #0xa]
	adds r0, r0, #1
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	blo _02248AA0
	movs r0, #0
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #8]
	add sp, #0x28
	adds r0, r0, #1
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02248A56:
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x16
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #0
	bl FUN_02237728
	str r0, [r4, #4]
	ldrb r0, [r4, #8]
	add sp, #0x28
	adds r0, r0, #1
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02248A86:
	ldr r0, [r4, #4]
	bl FUN_022377F8
	cmp r0, #1
	beq _02248AA0
_02248A90:
	ldr r0, [r4, #4]
	bl FUN_0223783C
	movs r0, #1
	strb r0, [r4, #9]
	adds r0, r5, #0
	bl FUN_0200DA58
_02248AA0:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02248A24

	thumb_func_start ov17_02248AA4
ov17_02248AA4: @ 0x02248AA4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #2
	bl FUN_020765B8
	adds r6, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _02248ACA
	cmp r0, #1
	beq _02248B1A
	b _02248BCC
_02248ACA:
	movs r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	ldrb r0, [r4, #0xe]
	movs r3, #0xf2
	ldr r2, [r4]
	lsls r0, r0, #4
	adds r0, r2, r0
	lsls r3, r3, #4
	ldr r0, [r0, r3]
	adds r2, r1, #0
	adds r3, #0xe0
	bl FUN_0225B0EC
	ldrb r1, [r4, #0xe]
	ldr r2, [r4]
	movs r0, #0x80
	lsls r1, r1, #4
	adds r2, r2, r1
	ldr r1, _02248BDC @ =0x00000F24
	str r0, [r2, r1]
	ldrb r2, [r4, #0xe]
	ldr r3, [r4]
	movs r0, #0x68
	lsls r2, r2, #4
	adds r3, r3, r2
	adds r2, r1, #4
	str r0, [r3, r2]
	ldrb r0, [r4, #0xe]
	ldr r2, [r4]
	lsls r0, r0, #4
	adds r2, r2, r0
	subs r0, r1, #4
	ldr r0, [r2, r0]
	movs r1, #1
	bl FUN_0225B074
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02248B1A:
	movs r0, #2
	ldr r1, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #4]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r2, [r4, #4]
	lsls r1, r0, #3
	cmp r2, r1
	blt _02248B38
	lsls r0, r0, #3
	str r0, [r4, #4]
	str r0, [r4, #8]
_02248B38:
	ldrb r0, [r4, #0xe]
	movs r3, #0xf2
	ldr r1, [r4]
	lsls r0, r0, #4
	adds r0, r1, r0
	lsls r3, r3, #4
	ldr r0, [r0, r3]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	adds r3, #0xe0
	bl FUN_0225B0EC
	ldrb r0, [r4, #0xe]
	movs r2, #0xf2
	lsls r2, r2, #4
	lsls r1, r0, #4
	ldr r0, [r4]
	adds r3, r0, r1
	adds r1, r2, #4
	ldr r0, [r3, r2]
	adds r2, #8
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	adds r3, r6, #0
	bl FUN_0225B158
	movs r0, #1
	ldr r1, [r4, #4]
	lsls r0, r0, #0xc
	cmp r1, r0
	blt _02248BD6
	ldr r0, [r4]
	movs r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #5
	bl FUN_02074470
	adds r5, r0, #0
	ldr r0, [r4]
	movs r2, #0
	ldr r1, [r0, #0xc]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0x70
	bl FUN_02074470
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r2, #0x7f
	str r2, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x16
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldrb r6, [r4, #0xe]
	ldr r0, [r0]
	adds r2, #0xdd
	lsls r6, r6, #2
	adds r0, r0, r6
	ldr r0, [r0, r2]
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	bl FUN_02077D3C
	ldrb r0, [r4, #0xc]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
_02248BCC:
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r5, #0
	bl FUN_0200DA58
_02248BD6:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02248BDC: .4byte 0x00000F24
	thumb_func_end ov17_02248AA4

	thumb_func_start ov17_02248BE0
ov17_02248BE0: @ 0x02248BE0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _02248BEE
	b _02248D16
_02248BEE:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248BFA: @ jump table
	.2byte _02248C04 - _02248BFA - 2 @ case 0
	.2byte _02248C2A - _02248BFA - 2 @ case 1
	.2byte _02248C4C - _02248BFA - 2 @ case 2
	.2byte _02248CBA - _02248BFA - 2 @ case 3
	.2byte _02248CD2 - _02248BFA - 2 @ case 4
_02248C04:
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _02248C10
	bl FUN_02022974
_02248C10:
	ldrb r0, [r4, #0xf]
	adds r0, r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	bhi _02248C1E
	b _02248D26
_02248C1E:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02248C2A:
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #0x24]
	bl FUN_020080C0
	lsls r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x24]
	bl FUN_020080C0
	lsls r0, r0, #8
	str r0, [r4, #8]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02248C4C:
	ldrb r1, [r4, #0xe]
	movs r0, #1
	tst r0, r1
	ldr r0, [r4]
	beq _02248C7E
	ldr r3, [r4, #4]
	ldr r0, [r0, #0x24]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldr r3, [r4, #8]
	ldr r0, [r4]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	ldr r0, [r0, #0x24]
	movs r1, #1
	asrs r2, r2, #8
	bl FUN_02007DEC
	b _02248CA6
_02248C7E:
	ldr r3, [r4, #4]
	ldr r0, [r0, #0x24]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldr r3, [r4, #8]
	ldr r0, [r4]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	asrs r2, r2, #8
	ldr r0, [r0, #0x24]
	movs r1, #1
	subs r2, r2, #3
	bl FUN_02007DEC
_02248CA6:
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	blo _02248D26
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02248CBA:
	ldrb r0, [r4, #0xf]
	adds r0, r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	cmp r0, #7
	blo _02248D26
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_02248CD2:
	movs r0, #1
	ldr r1, [r4, #4]
	lsls r0, r0, #0xa
	adds r1, r1, r0
	movs r0, #5
	lsls r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _02248CEC
	str r0, [r4, #4]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
_02248CEC:
	ldr r3, [r4, #4]
	ldr r0, [r4]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	ldr r0, [r0, #0x24]
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldr r3, [r4, #8]
	ldr r0, [r4]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	ldr r0, [r0, #0x24]
	movs r1, #1
	asrs r2, r2, #8
	bl FUN_02007DEC
	pop {r3, r4, r5, pc}
_02248D16:
	ldr r0, [r4]
	bl ov17_02247918
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r5, #0
	bl FUN_0200DA58
_02248D26:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02248BE0

	thumb_func_start ov17_02248D28
ov17_02248D28: @ 0x02248D28
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02248D28

	thumb_func_start ov17_02248D3C
ov17_02248D3C: @ 0x02248D3C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x16
	movs r1, #0x1c
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x1c
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	ldr r2, _02248D9C @ =0x00007530
	str r0, [r4]
	ldrh r0, [r6]
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x13]
	ldrb r0, [r5, #4]
	strb r0, [r4, #0x14]
	ldrb r0, [r5, #5]
	strb r0, [r4, #0x15]
	ldrb r0, [r5, #6]
	strb r0, [r4, #0x16]
	ldrb r0, [r5, #7]
	strb r0, [r4, #0x17]
	ldrb r0, [r5, #9]
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #8]
	strb r0, [r4, #0x18]
	ldr r0, _02248DA0 @ =ov17_02248DA4
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248D9C: .4byte 0x00007530
_02248DA0: .4byte ov17_02248DA4
	thumb_func_end ov17_02248D3C

	thumb_func_start ov17_02248DA4
ov17_02248DA4: @ 0x02248DA4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02248DBA
	cmp r0, #1
	beq _02248DF2
	cmp r0, #2
	beq _02248E04
	b _02248E3C
_02248DBA:
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _02248DEC
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0x34
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200E060
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x30]
	bl FUN_0201C3C0
	adds r2, r4, #0
	ldrb r1, [r4, #0x17]
	ldr r0, [r4]
	adds r2, #0x13
	bl ov17_02247A08
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248DEC:
	movs r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248DF2:
	ldr r0, [r4]
	bl ov17_02247A3C
	cmp r0, #0
	bne _02248E54
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248E04:
	ldrb r0, [r4, #0x12]
	adds r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02248E18
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248E18:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x18]
	cmp r1, r0
	blo _02248E54
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0x34
	bl FUN_0200E084
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x30]
	bl FUN_0201C3C0
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248E3C:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02248E54:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_02248DA4

	thumb_func_start ov17_02248E58
ov17_02248E58: @ 0x02248E58
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02248E58

	thumb_func_start ov17_02248E6C
ov17_02248E6C: @ 0x02248E6C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x16
	movs r1, #0x18
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x18
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	ldr r2, _02248EBC @ =0x00007530
	str r0, [r4]
	ldrh r0, [r5]
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	movs r0, #0xa
	ldrsb r0, [r6, r0]
	strb r0, [r4, #0x11]
	movs r0, #0xb
	ldrsb r0, [r6, r0]
	strb r0, [r4, #0x12]
	movs r0, #0xc
	ldrsb r0, [r6, r0]
	strb r0, [r4, #0x13]
	ldr r0, _02248EC0 @ =ov17_02248EC4
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02248EBC: .4byte 0x00007530
_02248EC0: .4byte ov17_02248EC4
	thumb_func_end ov17_02248E6C

	thumb_func_start ov17_02248EC4
ov17_02248EC4: @ 0x02248EC4
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02248ED8
	cmp r0, #1
	beq _02248F50
	b _02248F8C
_02248ED8:
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r0, _02248FA8 @ =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02248F32
	ldr r0, _02248FAC @ =0x04000048
	ldr r1, _02248FB0 @ =0xFFFFC0FF
	ldrh r2, [r0]
	ands r2, r1
	movs r1, #0x1f
	lsls r1, r1, #8
	orrs r1, r2
	strh r1, [r0]
	ldrh r2, [r0, #2]
	movs r1, #0x3f
	bics r2, r1
	movs r1, #0x1f
	orrs r2, r1
	movs r1, #0x20
	orrs r2, r1
	strh r2, [r0, #2]
	lsls r3, r1, #0x15
	ldr r2, [r3]
	ldr r0, _02248FB4 @ =0xFFFF1FFF
	ands r2, r0
	lsls r0, r1, #9
	orrs r0, r2
	str r0, [r3]
	ldr r1, [r4]
	ldr r0, _02248FB8 @ =0x00000F64
	movs r2, #0xf0
	strb r2, [r1, r0]
	ldr r2, [r4]
	movs r3, #0
	adds r1, r0, #1
	strb r3, [r2, r1]
	adds r1, r0, #2
	ldr r2, [r4]
	movs r3, #0xff
	strb r3, [r2, r1]
	ldr r1, [r4]
	movs r2, #0x10
	adds r0, r0, #3
	strb r2, [r1, r0]
_02248F32:
	movs r0, #1
	str r0, [sp]
	movs r1, #0x12
	movs r2, #0x11
	ldrb r0, [r4, #0x13]
	ldrsb r1, [r4, r1]
	ldrsb r2, [r4, r2]
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldrb r0, [r4, #0x10]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248F50:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _02248FA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xd0
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	ldr r0, [r0, #0x50]
	adds r3, r1, #0
	bl FUN_020038B0
	movs r2, #0
	str r2, [sp]
	movs r0, #0xe0
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r1, #2
	ldr r0, [r0, #0x50]
	adds r3, r2, #0
	bl FUN_020038B0
	ldrb r0, [r4, #0x10]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02248F8C:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02248FA4:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_02248FA8: .4byte 0x00000171
_02248FAC: .4byte 0x04000048
_02248FB0: .4byte 0xFFFFC0FF
_02248FB4: .4byte 0xFFFF1FFF
_02248FB8: .4byte 0x00000F64
	thumb_func_end ov17_02248EC4

	thumb_func_start ov17_02248FBC
ov17_02248FBC: @ 0x02248FBC
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02248FBC

	thumb_func_start ov17_02248FD0
ov17_02248FD0: @ 0x02248FD0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x1c
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _0224900C @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02249010 @ =ov17_02249014
	str r6, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224900C: .4byte 0x00007530
_02249010: .4byte ov17_02249014
	thumb_func_end ov17_02248FD0

	thumb_func_start ov17_02249014
ov17_02249014: @ 0x02249014
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r1, #0x18]
	str r1, [sp]
	adds r1, r0, #1
	ldr r0, [sp]
	cmp r1, #0x1e
	str r1, [r0, #0x18]
	bne _02249030
	movs r1, #0x1e
	strb r1, [r0, #0x13]
	movs r1, #1
	strb r1, [r0, #0x15]
_02249030:
	ldr r0, [sp]
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r0, _02249228 @ =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224906A
	ldr r0, [sp]
	ldr r0, [r0, #0x18]
	cmp r0, #0x1e
	bge _0224906A
	ldr r0, _0224922C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _02249058
	ldr r0, _02249230 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0224906A
_02249058:
	ldr r0, [sp]
	movs r1, #0x1e
	str r1, [r0, #0x18]
	ldr r1, [sp]
	movs r0, #0
	strb r0, [r1, #0x13]
	movs r2, #1
	strb r2, [r1, #0x15]
	b _02249078
_0224906A:
	ldr r0, [sp]
	ldr r0, [r0, #0x18]
	cmp r0, #0x1e
	ble _02249076
	movs r0, #0
	b _02249078
_02249076:
	movs r0, #1
_02249078:
	ldr r1, [sp]
	ldrb r1, [r1, #0x10]
	cmp r1, #0
	beq _02249082
	b _022491FA
_02249082:
	ldr r1, [sp]
	movs r2, #0x14
	ldrsb r1, [r1, r2]
	cmp r1, #0
	ble _02249096
	ldr r0, [sp]
	subs r1, r1, #1
	strb r1, [r0, #0x14]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02249096:
	ldr r1, [sp]
	movs r2, #0x13
	ldrsb r1, [r1, r2]
	cmp r1, #0
	ble _022490AA
	ldr r0, [sp]
	subs r1, r1, #1
	strb r1, [r0, #0x13]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022490AA:
	ldr r1, [sp]
	strb r0, [r1, #0x13]
	adds r0, r1, #0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022490C2
	ldr r0, _02249234 @ =0x000006ED
	bl FUN_02005748
	ldr r0, [sp]
	movs r1, #0
	strb r1, [r0, #0x15]
_022490C2:
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl FUN_02019FE4
	mov ip, r0
	movs r0, #0
	str r0, [sp, #8]
	b _02249136
_022490D6:
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _02249238 @ =0x02254468
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	adds r0, r1, r0
	bmi _02249130
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	ldr r0, [sp]
	movs r5, #0
	ldrb r0, [r0, #0x12]
	movs r7, #0x3f
	str r5, [sp, #4]
	lsls r1, r0, #1
	ldr r0, _0224923C @ =0x02254470
	lsls r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsls r0, r0, #5
	adds r6, r1, r0
	b _0224912A
_02249106:
	movs r4, #0
	b _0224911E
_0224910A:
	adds r0, r5, r4
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	adds r0, r6, r4
	adds r4, r4, #1
	orrs r0, r1
	strh r0, [r3, r2]
_0224911E:
	cmp r4, #8
	blt _0224910A
	ldr r0, [sp, #4]
	adds r5, #8
	adds r0, r0, #1
	str r0, [sp, #4]
_0224912A:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _02249106
_02249130:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_02249136:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _022490D6
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _02249178
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _02249178
	ldr r0, _02249238 @ =0x02254468
	subs r1, r1, #1
	ldrsb r0, [r0, r1]
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	movs r0, #0
	movs r1, #0x3f
	str r0, [sp, #4]
	lsls r1, r1, #0xa
	b _02249172
_02249162:
	ldr r0, [sp, #4]
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
_02249172:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _02249162
_02249178:
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl FUN_0201C3C0
	ldr r0, [sp]
	movs r1, #0xc
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #5
	blx FUN_020E2178
	ldr r1, [sp]
	movs r2, #0x11
	ldrsb r2, [r1, r2]
	ldr r1, _02249238 @ =0x02254468
	ldrsb r1, [r1, r2]
	adds r1, r1, #4
	lsls r1, r1, #3
	subs r2, r1, r0
	ldr r0, [sp]
	ldr r1, _02249240 @ =0x00000F63
	ldr r0, [r0]
	strb r2, [r0, r1]
	ldr r0, [sp]
	ldr r0, [r0]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _022491C2
	ldr r2, _02249244 @ =0x04000050
	movs r0, #0
	strh r0, [r2]
	subs r2, #0x50
	ldr r1, [r2]
	ldr r0, _02249248 @ =0xFFFF1FFF
	ands r0, r1
	str r0, [r2]
_022491C2:
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	adds r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _02249224
	ldr r1, [sp]
	movs r0, #0
	movs r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	adds r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	adds r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _02249224
	adds r0, r1, #0
	ldrb r0, [r0, #0x10]
	adds r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022491FA:
	ldr r3, _02249244 @ =0x04000050
	movs r2, #0
	strh r2, [r3]
	subs r3, #0x50
	ldr r1, [r3]
	ldr r0, _02249248 @ =0xFFFF1FFF
	ands r0, r1
	str r0, [r3]
	ldr r0, [sp]
	ldr r1, [sp]
	ldr r0, [r0, #0xc]
	adds r1, r1, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_02249224:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02249228: .4byte 0x00000171
_0224922C: .4byte 0x021BF67C
_02249230: .4byte 0x021BF6BC
_02249234: .4byte 0x000006ED
_02249238: .4byte 0x02254468
_0224923C: .4byte 0x02254470
_02249240: .4byte 0x00000F63
_02249244: .4byte 0x04000050
_02249248: .4byte 0xFFFF1FFF
	thumb_func_end ov17_02249014

	thumb_func_start ov17_0224924C
ov17_0224924C: @ 0x0224924C
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224924C

	thumb_func_start ov17_02249260
ov17_02249260: @ 0x02249260
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x16
	movs r1, #0x14
	adds r5, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrh r0, [r0, #0x10]
	bl FUN_02005748
	ldr r0, _022492A4 @ =ov17_022492AC
	ldr r2, _022492A8 @ =0x00007530
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022492A4: .4byte ov17_022492AC
_022492A8: .4byte 0x00007530
	thumb_func_end ov17_02249260

	thumb_func_start ov17_022492AC
ov17_022492AC: @ 0x022492AC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r1, [r4]
	ldr r0, _022492D8 @ =0x000004F9
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022492D4
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_022492D4:
	pop {r3, r4, r5, pc}
	nop
_022492D8: .4byte 0x000004F9
	thumb_func_end ov17_022492AC

	thumb_func_start ov17_022492DC
ov17_022492DC: @ 0x022492DC
	push {r4, lr}
	movs r0, #0x17
	movs r1, #0xf4
	bl FUN_02018144
	movs r1, #0
	movs r2, #0xf4
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	adds r0, #0x96
	strb r1, [r0]
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_022492DC

	thumb_func_start ov17_02249300
ov17_02249300: @ 0x02249300
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r6, _02249354 @ =0x022545C0
	adds r5, r0, #0
	adds r7, r4, #0
_0224930A:
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_020183C4
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #0
	bl FUN_02019EE0
	adds r1, r4, #4
	lsls r1, r1, #0x18
	movs r2, #0
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019184
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r4, r4, #1
	adds r6, #0x1c
	cmp r4, #4
	blo _0224930A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249354: .4byte 0x022545C0
	thumb_func_end ov17_02249300

	thumb_func_start ov17_02249358
ov17_02249358: @ 0x02249358
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_02249360:
	adds r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r6, #0
	bl FUN_02019120
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	cmp r4, #4
	blo _02249360
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02249358

	thumb_func_start ov17_02249380
ov17_02249380: @ 0x02249380
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov17_022492DC
	adds r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	movs r0, #6
	movs r1, #0x17
	bl FUN_02012744
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl ov17_022493DC
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02249380

	thumb_func_start ov17_022493A4
ov17_022493A4: @ 0x022493A4
	push {r4, lr}
	adds r4, r0, #0
	bl ov17_022495F8
	adds r0, r4, #0
	movs r1, #1
	bl ov17_02249D3C
	ldr r0, [r4, #0x18]
	bl FUN_020127BC
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_022493A4

	thumb_func_start ov17_022493C4
ov17_022493C4: @ 0x022493C4
	push {r4, lr}
	adds r4, r0, #0
	bl ov17_02249828
	adds r0, r4, #0
	bl ov17_022498F4
	adds r0, r4, #0
	movs r1, #0
	bl ov17_02249CFC
	pop {r4, pc}
	thumb_func_end ov17_022493C4

	thumb_func_start ov17_022493DC
ov17_022493DC: @ 0x022493DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #6
	adds r4, r0, #0
	movs r0, #0x17
	lsls r1, r1, #0xc
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xd0
	str r0, [r1]
	movs r1, #6
	movs r0, #0x17
	lsls r1, r1, #0xc
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xd4
	str r0, [r1]
	movs r1, #0x1b
	movs r0, #0x17
	lsls r1, r1, #8
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xd8
	str r0, [r1]
	movs r1, #2
	movs r0, #0x17
	lsls r1, r1, #0xa
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xdc
	str r0, [r1]
	movs r1, #2
	movs r0, #0x17
	lsls r1, r1, #0xa
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xe0
	str r0, [r1]
	movs r1, #2
	movs r0, #0x17
	lsls r1, r1, #0xa
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xe4
	str r0, [r1]
	movs r1, #2
	movs r0, #0x17
	lsls r1, r1, #0xa
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xe8
	str r0, [r1]
	movs r1, #2
	movs r0, #0x17
	lsls r1, r1, #8
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xec
	str r0, [r1]
	movs r1, #2
	movs r0, #0x17
	lsls r1, r1, #8
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xf0
	str r0, [r1]
	movs r0, #0x17
	str r0, [sp]
	movs r0, #0x2d
	movs r1, #9
	movs r2, #1
	add r3, sp, #0xc
	bl FUN_02006F50
	adds r5, r0, #0
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	adds r1, #0xd0
	movs r2, #6
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r2, r2, #0xc
	blx FUN_020C4B68
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0x17
	str r0, [sp]
	movs r0, #0x2d
	movs r1, #0x12
	movs r2, #1
	add r3, sp, #0xc
	bl FUN_02006F50
	adds r5, r0, #0
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	adds r1, #0xd4
	movs r2, #6
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r2, r2, #0xc
	blx FUN_020C4B68
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0x17
	str r0, [sp]
	movs r0, #0x2d
	movs r1, #0x10
	movs r2, #1
	add r3, sp, #0xc
	bl FUN_02006F50
	adds r5, r0, #0
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	adds r1, #0xd8
	movs r2, #0x1b
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r2, r2, #8
	blx FUN_020C4B68
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0x17
	str r0, [sp]
	movs r0, #0x2d
	movs r1, #7
	movs r2, #1
	add r3, sp, #8
	bl FUN_02006F6C
	adds r1, r4, #0
	adds r5, r0, #0
	ldr r0, [sp, #8]
	adds r1, #0xdc
	movs r2, #2
	ldr r1, [r1]
	adds r0, #0xc
	lsls r2, r2, #0xa
	blx FUN_020C4B68
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0x17
	str r0, [sp]
	movs r0, #0x2d
	movs r1, #8
	movs r2, #1
	add r3, sp, #8
	bl FUN_02006F6C
	adds r1, r4, #0
	adds r5, r0, #0
	ldr r0, [sp, #8]
	adds r1, #0xe0
	movs r2, #2
	ldr r1, [r1]
	adds r0, #0xc
	lsls r2, r2, #0xa
	blx FUN_020C4B68
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0x17
	str r0, [sp]
	movs r0, #0x2d
	movs r1, #0x11
	movs r2, #1
	add r3, sp, #8
	bl FUN_02006F6C
	adds r1, r4, #0
	adds r5, r0, #0
	ldr r0, [sp, #8]
	adds r1, #0xe4
	movs r2, #2
	ldr r1, [r1]
	adds r0, #0xc
	lsls r2, r2, #0xa
	blx FUN_020C4B68
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0x17
	str r0, [sp]
	movs r0, #0x2d
	movs r1, #0x1c
	movs r2, #1
	add r3, sp, #8
	bl FUN_02006F6C
	adds r1, r4, #0
	adds r5, r0, #0
	ldr r0, [sp, #8]
	adds r1, #0xe8
	movs r2, #2
	ldr r1, [r1]
	adds r0, #0xc
	lsls r2, r2, #0xa
	blx FUN_020C4B68
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xec
	ldr r0, [r0]
	movs r3, #2
	str r0, [sp, #4]
	movs r0, #0x2d
	movs r1, #0x1f
	movs r2, #0x17
	lsls r3, r3, #8
	bl FUN_020030E4
	ldr r0, [r4, #4]
	movs r2, #0x17
	ldr r1, [r0]
	ldr r0, _022495F4 @ =0x0000011F
	movs r3, #0x20
	ldrb r0, [r1, r0]
	movs r1, #0x26
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xec
	ldr r0, [r0]
	adds r0, #0x40
	str r0, [sp, #4]
	movs r0, #0x2d
	bl FUN_020030E4
	movs r0, #0
	movs r3, #2
	adds r4, #0xf0
	str r0, [sp]
	ldr r0, [r4]
	movs r1, #0x21
	str r0, [sp, #4]
	movs r0, #0x2d
	movs r2, #0x17
	lsls r3, r3, #8
	bl FUN_020030E4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022495F4: .4byte 0x0000011F
	thumb_func_end ov17_022493DC

	thumb_func_start ov17_022495F8
ov17_022495F8: @ 0x022495F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
_02249600:
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_020181C4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _02249600
	movs r6, #0
	adds r4, r5, #0
_02249616:
	adds r0, r4, #0
	adds r0, #0xdc
	ldr r0, [r0]
	bl FUN_020181C4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _02249616
	movs r4, #0
_0224962A:
	adds r0, r5, #0
	adds r0, #0xec
	ldr r0, [r0]
	bl FUN_020181C4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0224962A
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_022495F8

	thumb_func_start ov17_02249640
ov17_02249640: @ 0x02249640
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	str r3, [r7, #8]
	ldr r0, [r7, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x60]
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	movs r0, #0x96
	ldrsb r2, [r7, r0]
	subs r0, #0x97
	cmp r2, r0
	bne _02249664
	movs r0, #1
	str r0, [sp, #8]
	movs r6, #0
	b _0224966C
_02249664:
	movs r0, #0x24
	ldr r1, _02249750 @ =0x02254578
	muls r0, r2, r0
	adds r6, r1, r0
_0224966C:
	ldr r0, [sp, #4]
	movs r1, #0x24
	ldr r2, _02249750 @ =0x02254578
	muls r1, r0, r1
	adds r0, r2, r1
	str r0, [sp, #0x10]
	movs r4, #0
	adds r5, r0, #0
_0224967C:
	ldrh r1, [r5, #0xc]
	adds r0, r4, #4
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019060
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blt _0224967C
	ldr r0, [sp, #0x10]
	movs r2, #8
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x94
	strh r1, [r0]
	ldr r0, _02249754 @ =ov17_0224A088
	adds r1, r7, #0
	bl FUN_0200DA3C
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #2]
	ldr r0, _02249758 @ =0x0000FFFF
	cmp r1, r0
	beq _022496DA
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _022496BE
	ldrh r0, [r6, #2]
	cmp r1, r0
	beq _022496DA
_022496BE:
	movs r0, #2
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [r7, #4]
	lsls r1, r1, #2
	adds r1, r7, r1
	adds r0, #0x90
	adds r1, #0xec
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #1
	movs r3, #0
	bl FUN_02002FBC
_022496DA:
	ldr r4, [sp, #0x10]
	movs r5, #0
_022496DE:
	ldrh r2, [r4, #4]
	ldr r0, _02249758 @ =0x0000FFFF
	cmp r2, r0
	beq _02249716
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _022496F2
	ldrh r0, [r6, #4]
	cmp r2, r0
	beq _02249716
_022496F2:
	lsls r2, r2, #2
	adds r2, r7, r2
	adds r1, r5, #4
	adds r2, #0xdc
	lsls r1, r1, #0x18
	movs r3, #2
	ldr r0, [sp, #0xc]
	ldr r2, [r2]
	lsrs r1, r1, #0x18
	lsls r3, r3, #0xa
	bl FUN_02019574
	adds r1, r5, #4
	lsls r1, r1, #0x18
	ldr r0, [sp, #0xc]
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
_02249716:
	adds r5, r5, #1
	adds r4, r4, #2
	adds r6, r6, #2
	cmp r5, #4
	blt _022496DE
	adds r1, r7, #0
	ldr r0, [sp, #4]
	adds r1, #0x96
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0
	bl ov17_02249D3C
	ldr r0, [sp, #0x10]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _02249740
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r7, #0
	blx r3
_02249740:
	ldr r0, _0224975C @ =ov17_0224A038
	adds r1, r7, #0
	movs r2, #0xa
	bl FUN_0200DA3C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02249750: .4byte 0x02254578
_02249754: .4byte ov17_0224A088
_02249758: .4byte 0x0000FFFF
_0224975C: .4byte ov17_0224A038
	thumb_func_end ov17_02249640

	thumb_func_start ov17_02249760
ov17_02249760: @ 0x02249760
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x96
	ldrsb r1, [r5, r0]
	subs r0, #0x97
	cmp r1, r0
	bne _02249772
	bl FUN_02022974
_02249772:
	movs r0, #0x96
	ldrsb r1, [r5, r0]
	ldr r3, _022497F8 @ =0x02254578
	movs r0, #0x24
	adds r2, r1, #0
	muls r2, r0, r2
	adds r4, r3, r2
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0224978A
	subs r0, #0x25
	pop {r4, r5, r6, pc}
_0224978A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02249794
	bl FUN_02022974
_02249794:
	ldr r0, [r4, #0x14]
	bl FUN_02022664
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _022497D8
	ldr r2, [r4, #0x18]
	ldr r1, _022497FC @ =0x02254554
	cmp r2, r1
	bne _022497D8
	ldr r1, _02249800 @ =0x021BF67C
	movs r2, #0x11
	ldr r1, [r1, #0x48]
	adds r3, r1, #0
	tst r3, r2
	beq _022497BA
	movs r0, #3
	b _022497D8
_022497BA:
	movs r3, #0x82
	adds r6, r1, #0
	tst r6, r3
	beq _022497C6
	movs r0, #1
	b _022497D8
_022497C6:
	lsls r2, r2, #6
	tst r2, r1
	beq _022497D0
	movs r0, #0
	b _022497D8
_022497D0:
	lsls r2, r3, #4
	tst r1, r2
	beq _022497D8
	movs r0, #2
_022497D8:
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _022497E6
	ldr r1, [r4, #0x18]
	lsls r0, r0, #2
	ldr r1, [r1, r0]
_022497E6:
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _022497F2
	adds r0, r5, #0
	blx r2
	adds r1, r0, #0
_022497F2:
	adds r0, r1, #0
	pop {r4, r5, r6, pc}
	nop
_022497F8: .4byte 0x02254578
_022497FC: .4byte 0x02254554
_02249800: .4byte 0x021BF67C
	thumb_func_end ov17_02249760

	thumb_func_start ov17_02249804
ov17_02249804: @ 0x02249804
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0224980E
	movs r0, #1
	bx lr
_0224980E:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov17_02249804

	thumb_func_start ov17_02249814
ov17_02249814: @ 0x02249814
	movs r1, #0x96
	ldrsb r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov17_02249814

	thumb_func_start ov17_0224981C
ov17_0224981C: @ 0x0224981C
	ldr r3, _02249824 @ =ov17_02249CFC
	movs r1, #1
	bx r3
	nop
_02249824: .4byte ov17_02249CFC
	thumb_func_end ov17_0224981C

	thumb_func_start ov17_02249828
ov17_02249828: @ 0x02249828
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0x1a
	movs r2, #0xcc
	movs r3, #0x17
	bl FUN_0200B144
	adds r4, r0, #0
	ldr r0, [r5, #4]
	movs r2, #0x12
	lsls r2, r2, #4
	ldr r3, [r0]
	adds r1, r2, #1
	ldrb r0, [r3, r2]
	ldrb r1, [r3, r1]
	ldr r3, [r5]
	adds r2, #0x51
	ldrb r2, [r3, r2]
	bl FUN_02095848
	adds r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, _022498DC @ =0x0000011F
	ldr r2, [r0]
	ldrb r0, [r2, r1]
	adds r1, r1, #2
	ldrb r1, [r2, r1]
	bl FUN_020958C4
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_0200B1EC
	adds r7, r0, #0
	ldr r0, _022498E0 @ =0x00010200
	adds r1, r5, #0
	str r0, [sp]
	movs r3, #0
	ldr r0, _022498E4 @ =0x000080EB
	str r3, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x80
	str r0, [sp, #0xc]
	movs r0, #0x7f
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, #0x1c
	adds r2, r6, #0
	bl ov17_02249BC4
	ldr r0, _022498E0 @ =0x00010200
	movs r3, #0
	str r0, [sp]
	ldr r0, _022498E4 @ =0x000080EB
	str r3, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x80
	str r0, [sp, #0xc]
	movs r0, #0x9f
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r5, #0x30
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov17_02249BC4
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B190
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022498DC: .4byte 0x0000011F
_022498E0: .4byte 0x00010200
_022498E4: .4byte 0x000080EB
	thumb_func_end ov17_02249828

	thumb_func_start ov17_022498E8
ov17_022498E8: @ 0x022498E8
	ldr r3, _022498F0 @ =ov17_02249CFC
	movs r1, #1
	bx r3
	nop
_022498F0: .4byte ov17_02249CFC
	thumb_func_end ov17_022498E8

	thumb_func_start ov17_022498F4
ov17_022498F4: @ 0x022498F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r2, [r0, #4]
	str r0, [sp, #0x18]
	adds r0, r2, #0
	adds r0, #0x84
	ldr r5, [r0]
	ldr r1, [r2]
	ldr r0, _022499FC @ =0x00000123
	ldrb r0, [r1, r0]
	adds r1, r2, r0
	ldr r0, _02249A00 @ =0x00000ABC
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0224991C
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0200B1EC
	b _02249924
_0224991C:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0200B1EC
_02249924:
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #2
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #3
	bl FUN_0200B1EC
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #4
	bl FUN_0200B1EC
	adds r5, r0, #0
	ldr r0, _02249A04 @ =0x0001010B
	adds r2, r4, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 @ =0x000080EB
	movs r3, #2
	str r0, [sp, #8]
	movs r0, #0x80
	str r0, [sp, #0xc]
	movs r0, #0x18
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #0x44
	bl ov17_02249BC4
	ldr r0, _02249A04 @ =0x0001010B
	adds r2, r6, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 @ =0x000080EB
	movs r3, #2
	str r0, [sp, #8]
	movs r0, #0x80
	str r0, [sp, #0xc]
	movs r0, #0x78
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #0x58
	bl ov17_02249BC4
	ldr r0, _02249A04 @ =0x0001010B
	adds r2, r7, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 @ =0x000080EB
	movs r3, #2
	str r0, [sp, #8]
	movs r0, #0x30
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #0x6c
	bl ov17_02249BC4
	ldr r0, _02249A04 @ =0x0001010B
	adds r2, r5, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _02249A08 @ =0x000080EB
	movs r3, #2
	str r0, [sp, #8]
	movs r0, #0xd0
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #0x80
	str r1, [sp, #0x18]
	bl ov17_02249BC4
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_020237BC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022499FC: .4byte 0x00000123
_02249A00: .4byte 0x00000ABC
_02249A04: .4byte 0x0001010B
_02249A08: .4byte 0x000080EB
	thumb_func_end ov17_022498F4

	thumb_func_start ov17_02249A0C
ov17_02249A0C: @ 0x02249A0C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r4, r0, #0
	adds r0, r6, #1
	cmp r0, #4
	bhi _02249A2E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02249A24: @ jump table
	.2byte _02249A2E - _02249A24 - 2 @ case 0
	.2byte _02249A32 - _02249A24 - 2 @ case 1
	.2byte _02249A36 - _02249A24 - 2 @ case 2
	.2byte _02249A3A - _02249A24 - 2 @ case 3
	.2byte _02249A3E - _02249A24 - 2 @ case 4
_02249A2E:
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_02249A32:
	movs r5, #2
	b _02249A40
_02249A36:
	movs r5, #3
	b _02249A40
_02249A3A:
	movs r5, #4
	b _02249A40
_02249A3E:
	movs r5, #5
_02249A40:
	ldr r0, _02249A9C @ =ov17_02249DA0
	adds r1, r4, #0
	bl ov17_02249D50
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0xb8
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xbc
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc0
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #0x12
	adds r0, #0xca
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #0x2d
	adds r0, #0xc8
	strh r1, [r0]
	movs r0, #0xc
	ldr r1, _02249AA0 @ =0x02254630
	muls r0, r6, r0
	adds r2, r1, r0
	adds r1, r4, #0
	adds r1, #0xa0
	str r2, [r1]
	ldr r1, _02249AA4 @ =0x02254660
	adds r2, r1, r0
	adds r1, r4, #0
	adds r1, #0xa4
	str r2, [r1]
	ldr r1, _02249AA8 @ =0x02254690
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xa8
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc4
	str r6, [r0]
	adds r4, #0xcc
	strb r5, [r4]
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02249A9C: .4byte ov17_02249DA0
_02249AA0: .4byte 0x02254630
_02249AA4: .4byte 0x02254660
_02249AA8: .4byte 0x02254690
	thumb_func_end ov17_02249A0C

	thumb_func_start ov17_02249AAC
ov17_02249AAC: @ 0x02249AAC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x17
	movs r1, #0x20
	adds r5, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x20
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	beq _02249AD8
	lsls r0, r5, #2
	adds r0, r6, r0
	adds r0, #0xd0
	ldr r0, [r0]
	str r0, [r4, #0xc]
_02249AD8:
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #5
	strh r0, [r4, #0x1c]
	ldr r0, [sp, #0x18]
	ldrh r1, [r0]
	strh r1, [r4, #0x10]
	ldrh r1, [r0, #2]
	strh r1, [r4, #0x12]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0x14]
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x16]
	ldrh r1, [r0, #8]
	strh r1, [r4, #0x18]
	ldrh r0, [r0, #0xa]
	strh r0, [r4, #0x1a]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02019F28
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02249AAC

	thumb_func_start ov17_02249B08
ov17_02249B08: @ 0x02249B08
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl ov17_02249AAC
	adds r4, r0, #0
	ldr r0, _02249B2C @ =ov17_0224A0C8
	adds r1, r4, #0
	movs r2, #0x14
	bl FUN_0200DA3C
	str r0, [r4]
	adds r0, r4, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02249B2C: .4byte ov17_0224A0C8
	thumb_func_end ov17_02249B08

	thumb_func_start ov17_02249B30
ov17_02249B30: @ 0x02249B30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _02249B4E
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02249B44
	bl FUN_020181C4
_02249B44:
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r4, pc}
_02249B4E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_02249B30

	thumb_func_start ov17_02249B54
ov17_02249B54: @ 0x02249B54
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0x16]
	ldrh r0, [r5, #0x1c]
	movs r6, #0
	muls r0, r1, r0
	str r0, [sp]
	ldrh r0, [r5, #0x12]
	lsls r7, r0, #0xa
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	ble _02249BC0
	adds r4, r6, #0
_02249B6E:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _02249B9C
	ldrh r0, [r5, #0x14]
	ldrh r3, [r5, #0x1c]
	lsls r1, r0, #5
	adds r0, r3, #0
	ldr r3, [sp]
	muls r0, r6, r0
	adds r0, r3, r0
	adds r0, r1, r0
	ldrh r1, [r5, #0x10]
	adds r0, r2, r0
	ldr r3, [r5, #4]
	lsls r2, r1, #5
	adds r1, r7, r4
	adds r1, r2, r1
	ldrh r2, [r5, #0x18]
	adds r1, r3, r1
	lsls r2, r2, #5
	blx FUN_020C4B18
	b _02249BB2
_02249B9C:
	ldrh r1, [r5, #0x10]
	ldr r3, [r5, #4]
	movs r0, #0
	lsls r2, r1, #5
	adds r1, r7, r4
	adds r1, r2, r1
	ldrh r2, [r5, #0x18]
	adds r1, r3, r1
	lsls r2, r2, #5
	blx FUN_020C4AF0
_02249BB2:
	movs r0, #1
	lsls r0, r0, #0xa
	adds r4, r4, r0
	ldrh r0, [r5, #0x1a]
	adds r6, r6, #1
	cmp r6, r0
	blt _02249B6E
_02249BC0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02249B54

	thumb_func_start ov17_02249BC4
ov17_02249BC4: @ 0x02249BC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	adds r5, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r5]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x9c]
	cmp r0, #0
	beq _02249BDC
	bl FUN_02022974
_02249BDC:
	ldr r0, [sp, #0x18]
	movs r2, #0
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x60]
	str r0, [sp, #0x28]
	ldr r0, [r1, #0x5c]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	bl FUN_02002D7C
	adds r7, r0, #0
	asrs r1, r7, #2
	lsrs r1, r1, #0x1d
	adds r1, r7, r1
	asrs r6, r1, #3
	movs r1, #8
	blx FUN_020BD140
	cmp r0, #0
	beq _02249C08
	adds r6, r6, #1
_02249C08:
	add r0, sp, #0x38
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r2, r6, #0x18
	ldr r0, [sp, #0x28]
	add r1, sp, #0x38
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_0201A870
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x20]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	add r0, sp, #0x38
	str r3, [sp, #0x14]
	bl FUN_0201D7E0
	add r0, sp, #0x38
	movs r1, #2
	movs r2, #0x17
	bl FUN_02012898
	movs r1, #1
	movs r2, #2
	add r3, sp, #0x2c
	bl FUN_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _02249C60
	lsrs r0, r7, #0x1f
	adds r0, r7, r0
	asrs r0, r0, #1
	subs r4, r4, r0
_02249C60:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x48]
	add r0, sp, #0x38
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x24]
	bl FUN_0200D9B0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x98]
	bl FUN_0200D04C
	movs r1, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xa0]
	str r4, [sp, #0x60]
	adds r0, #0xf8
	str r0, [sp, #0x64]
	movs r0, #0x64
	str r0, [sp, #0x6c]
	movs r0, #2
	str r0, [sp, #0x70]
	movs r0, #0x17
	str r0, [sp, #0x74]
	add r0, sp, #0x48
	str r1, [sp, #0x68]
	bl FUN_020127E8
	ldr r1, [sp, #0x94]
	adds r6, r0, #0
	bl FUN_02012AC0
	ldr r2, [sp, #0xa0]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, #0xf8
	bl FUN_020128C4
	add r0, sp, #0x38
	bl FUN_0201A8FC
	str r6, [r5]
	add r3, sp, #0x2c
	ldm r3!, {r0, r1}
	adds r2, r5, #4
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	strh r7, [r5, #0x10]
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02249BC4

	thumb_func_start ov17_02249CD0
ov17_02249CD0: @ 0x02249CD0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0x20
	adds r7, r6, #0
_02249CDC:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02249CEE
	bl FUN_02012870
	adds r0, r4, #0
	bl FUN_0201EE28
	str r7, [r5, #0x1c]
_02249CEE:
	adds r6, r6, #1
	adds r5, #0x14
	adds r4, #0x14
	cmp r6, #6
	blt _02249CDC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02249CD0

	thumb_func_start ov17_02249CFC
ov17_02249CFC: @ 0x02249CFC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	cmp r7, #1
	bne _02249D18
	movs r1, #0x96
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _02249D12
	movs r4, #0
	movs r6, #1
	b _02249D1C
_02249D12:
	movs r4, #2
	movs r6, #5
	b _02249D1C
_02249D18:
	movs r4, #0
	movs r6, #5
_02249D1C:
	cmp r4, r6
	bgt _02249D3A
	movs r1, #0x14
	muls r1, r4, r1
	adds r5, r0, r1
_02249D26:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02249D32
	adds r1, r7, #0
	bl FUN_020129D0
_02249D32:
	adds r4, r4, #1
	adds r5, #0x14
	cmp r4, r6
	ble _02249D26
_02249D3A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02249CFC

	thumb_func_start ov17_02249D3C
ov17_02249D3C: @ 0x02249D3C
	push {r3, lr}
	cmp r1, #1
	bne _02249D48
	bl ov17_02249CD0
	pop {r3, pc}
_02249D48:
	movs r1, #0
	bl ov17_02249CFC
	pop {r3, pc}
	thumb_func_end ov17_02249D3C

	thumb_func_start ov17_02249D50
ov17_02249D50: @ 0x02249D50
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249D60
	bl FUN_02022974
_02249D60:
	adds r0, r4, #0
	adds r0, #0x98
	movs r1, #0
	movs r2, #0x38
	blx FUN_020C4CF4
	ldr r2, _02249D7C @ =0x00000514
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02249D7C: .4byte 0x00000514
	thumb_func_end ov17_02249D50

	thumb_func_start ov17_02249D80
ov17_02249D80: @ 0x02249D80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249D9C
	bl FUN_0200DA58
	movs r1, #0
	str r1, [r4, #0xc]
	adds r4, #0x98
	adds r0, r4, #0
	movs r2, #0x38
	blx FUN_020C4CF4
_02249D9C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_02249D80

	thumb_func_start ov17_02249DA0
ov17_02249DA0: @ 0x02249DA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bls _02249DB0
	b _0224A02C
_02249DB0:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02249DBC: @ jump table
	.2byte _02249DCE - _02249DBC - 2 @ case 0
	.2byte _02249E56 - _02249DBC - 2 @ case 1
	.2byte _02249E70 - _02249DBC - 2 @ case 2
	.2byte _02249E96 - _02249DBC - 2 @ case 3
	.2byte _02249F20 - _02249DBC - 2 @ case 4
	.2byte _02249F3C - _02249DBC - 2 @ case 5
	.2byte _02249F62 - _02249DBC - 2 @ case 6
	.2byte _02249FEC - _02249DBC - 2 @ case 7
	.2byte _0224A006 - _02249DBC - 2 @ case 8
_02249DCE:
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r0, [r0]
	adds r2, r4, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xca
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r2, #0xc8
	str r0, [sp, #4]
	adds r3, #0xb8
	ldrh r2, [r2]
	ldr r3, [r3]
	adds r0, r4, #0
	movs r1, #4
	bl ov17_02249B08
	adds r1, r4, #0
	adds r1, #0x9c
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r0, #0x14
	add r2, sp, #8
	muls r0, r1, r0
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	add r1, sp, #0xc
	bl FUN_020129A4
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r0, #0x14
	ldr r2, [sp, #8]
	muls r0, r1, r0
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	adds r2, #0x10
	bl FUN_020128C4
	movs r6, #0
	adds r5, r4, #0
	adds r7, r6, #0
_02249E2C:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _02249E40
	ldr r0, [r0]
	adds r1, r7, #0
	movs r2, #0x10
	bl FUN_0200D5AC
_02249E40:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #3
	blt _02249E2C
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	adds r4, #0x98
	add sp, #0x10
	adds r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249E56:
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl ov17_02249B30
	cmp r0, #0
	beq _02249F2E
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x98
	strh r1, [r0]
_02249E70:
	movs r1, #0x9a
	ldrsh r0, [r4, r1]
	adds r2, r0, #1
	adds r0, r4, #0
	adds r0, #0x9a
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #2
	ble _02249F2E
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x9a
	strh r1, [r0]
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x98
	strh r1, [r0]
_02249E96:
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	adds r2, r4, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xca
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r2, #0xc8
	str r0, [sp, #4]
	adds r3, #0xbc
	ldrh r2, [r2]
	ldr r3, [r3]
	adds r0, r4, #0
	movs r1, #4
	bl ov17_02249B08
	adds r1, r4, #0
	adds r1, #0x9c
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r0, #0x14
	add r2, sp, #8
	muls r0, r1, r0
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	add r1, sp, #0xc
	bl FUN_020129A4
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r0, #0x14
	ldr r2, [sp, #8]
	muls r0, r1, r0
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	subs r2, r2, #4
	bl FUN_020128C4
	movs r6, #0
	adds r5, r4, #0
	adds r7, r6, #0
_02249EF4:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _02249F0A
	movs r2, #3
	ldr r0, [r0]
	adds r1, r7, #0
	mvns r2, r2
	bl FUN_0200D5AC
_02249F0A:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #3
	blt _02249EF4
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	adds r4, #0x98
	add sp, #0x10
	adds r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249F20:
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl ov17_02249B30
	cmp r0, #0
	bne _02249F30
_02249F2E:
	b _0224A032
_02249F30:
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x98
	strh r1, [r0]
_02249F3C:
	movs r1, #0x9a
	ldrsh r0, [r4, r1]
	adds r2, r0, #1
	adds r0, r4, #0
	adds r0, #0x9a
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #2
	ble _0224A032
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x9a
	strh r1, [r0]
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x98
	strh r1, [r0]
_02249F62:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r2, r4, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xca
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r2, #0xc8
	str r0, [sp, #4]
	adds r3, #0xc0
	ldrh r2, [r2]
	ldr r3, [r3]
	adds r0, r4, #0
	movs r1, #4
	bl ov17_02249B08
	adds r1, r4, #0
	adds r1, #0x9c
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r0, #0x14
	add r2, sp, #8
	muls r0, r1, r0
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	add r1, sp, #0xc
	bl FUN_020129A4
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r0, #0x14
	ldr r2, [sp, #8]
	muls r0, r1, r0
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	subs r2, #0xc
	bl FUN_020128C4
	movs r6, #0
	adds r5, r4, #0
	adds r7, r6, #0
_02249FC0:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _02249FD6
	movs r2, #0xb
	ldr r0, [r0]
	adds r1, r7, #0
	mvns r2, r2
	bl FUN_0200D5AC
_02249FD6:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #3
	blt _02249FC0
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	adds r4, #0x98
	add sp, #0x10
	adds r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249FEC:
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl ov17_02249B30
	cmp r0, #0
	beq _0224A032
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x98
	strh r1, [r0]
_0224A006:
	movs r1, #0x9a
	ldrsh r0, [r4, r1]
	adds r2, r0, #1
	adds r0, r4, #0
	adds r0, #0x9a
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #2
	ble _0224A032
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x9a
	strh r1, [r0]
	movs r0, #0x98
	ldrsh r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x98
	strh r1, [r0]
_0224A02C:
	adds r0, r4, #0
	bl ov17_02249D80
_0224A032:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_02249DA0

	thumb_func_start ov17_0224A038
ov17_0224A038: @ 0x0224A038
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	movs r0, #0x96
	ldrsb r1, [r1, r0]
	movs r0, #0x24
	movs r4, #0
	ldr r2, _0224A080 @ =0x02254578
	muls r0, r1, r0
	ldr r6, _0224A084 @ =0x0000FFFF
	adds r5, r2, r0
	adds r7, r4, #0
_0224A04E:
	ldrh r0, [r5, #4]
	cmp r0, r6
	bne _0224A062
	adds r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl FUN_02019120
	b _0224A06E
_0224A062:
	adds r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl FUN_02019120
_0224A06E:
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blt _0224A04E
	ldr r0, [sp]
	bl FUN_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A080: .4byte 0x02254578
_0224A084: .4byte 0x0000FFFF
	thumb_func_end ov17_0224A038

	thumb_func_start ov17_0224A088
ov17_0224A088: @ 0x0224A088
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r2, [r0]
	ldr r0, _0224A0C4 @ =0x0000FFFF
	cmp r2, r0
	beq _0224A0BA
	movs r0, #0
	lsls r2, r2, #2
	str r0, [sp]
	ldr r0, [r4, #4]
	adds r2, r4, r2
	adds r2, #0xd0
	movs r3, #6
	ldr r0, [r0, #0x60]
	ldr r2, [r2]
	movs r1, #4
	lsls r3, r3, #0xc
	bl FUN_0201958C
	ldr r0, _0224A0C4 @ =0x0000FFFF
	adds r4, #0x94
	strh r0, [r4]
_0224A0BA:
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	nop
_0224A0C4: .4byte 0x0000FFFF
	thumb_func_end ov17_0224A088

	thumb_func_start ov17_0224A0C8
ov17_0224A0C8: @ 0x0224A0C8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov17_02249B54
	movs r0, #0
	str r0, [r4]
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224A0C8

	thumb_func_start ov17_0224A0E0
ov17_0224A0E0: @ 0x0224A0E0
	push {r3, lr}
	sub sp, #8
	str r2, [sp]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	movs r1, #1
	adds r0, #0x90
	ldr r0, [r0]
	movs r2, #0
	movs r3, #0x40
	bl FUN_020039B0
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov17_0224A0E0

	thumb_func_start ov17_0224A0FC
ov17_0224A0FC: @ 0x0224A0FC
	movs r1, #6
	muls r1, r0, r1
	ldr r0, _0224A108 @ =0x022546F4
	ldrsh r0, [r0, r1]
	bx lr
	nop
_0224A108: .4byte 0x022546F4
	thumb_func_end ov17_0224A0FC

	thumb_func_start ov17_0224A10C
ov17_0224A10C: @ 0x0224A10C
	movs r1, #6
	muls r1, r0, r1
	ldr r0, _0224A11C @ =0x022546F4
	adds r1, r0, r1
	movs r0, #2
	ldrsh r0, [r1, r0]
	bx lr
	nop
_0224A11C: .4byte 0x022546F4
	thumb_func_end ov17_0224A10C

	thumb_func_start ov17_0224A120
ov17_0224A120: @ 0x0224A120
	movs r1, #6
	muls r1, r0, r1
	ldr r0, _0224A130 @ =0x022546F4
	adds r1, r0, r1
	movs r0, #4
	ldrsh r0, [r1, r0]
	bx lr
	nop
_0224A130: .4byte 0x022546F4
	thumb_func_end ov17_0224A120

	thumb_func_start ov17_0224A134
ov17_0224A134: @ 0x0224A134
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r4, #0
	b _0224A150
_0224A13E:
	lsls r0, r4, #4
	adds r0, r5, r0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _0224A14E
	bl FUN_02022974
_0224A14E:
	adds r4, r4, #1
_0224A150:
	cmp r4, #4
	blt _0224A13E
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	movs r0, #0x17
	str r0, [sp, #0xc]
	movs r4, #0
	ldr r7, _0224A1E4 @ =0x022546F4
	b _0224A1DC
_0224A168:
	ldr r0, _0224A1E8 @ =0x00000AF1
	adds r1, r5, r4
	ldrb r6, [r1, r0]
	ldr r1, [r5]
	lsls r0, r6, #2
	ldr r0, [r1, r0]
	movs r1, #2
	bl FUN_020765B8
	adds r2, r0, #0
	movs r0, #6
	muls r0, r4, r0
	ldrsh r1, [r7, r0]
	adds r0, r7, r0
	movs r3, #2
	ldrsh r3, [r0, r3]
	str r1, [sp, #4]
	adds r2, r2, r3
	str r2, [sp, #8]
	lsls r2, r6, #4
	adds r2, r5, r2
	str r1, [r2, #0x1c]
	ldr r1, [sp, #8]
	str r1, [r2, #0x20]
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r1, r6, #2
	str r0, [r2, #0x24]
	ldr r2, [r5]
	add r0, sp, #0
	adds r1, r2, r1
	adds r1, #0xf8
	ldr r1, [r1]
	bl FUN_0225AFD4
	lsls r1, r6, #4
	adds r2, r5, r1
	str r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	bl FUN_0225B100
	cmp r4, #0
	ble _0224A1DA
	lsls r0, r6, #4
	adds r0, r5, r0
	ldr r0, [r0, #0x18]
	movs r1, #0
	bl FUN_0225B07C
	lsls r0, r6, #4
	adds r0, r5, r0
	movs r1, #0x63
	ldr r0, [r0, #0x18]
	mvns r1, r1
	bl FUN_0225B1AC
_0224A1DA:
	adds r4, r4, #1
_0224A1DC:
	cmp r4, #4
	blt _0224A168
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224A1E4: .4byte 0x022546F4
_0224A1E8: .4byte 0x00000AF1
	thumb_func_end ov17_0224A134

	thumb_func_start ov17_0224A1EC
ov17_0224A1EC: @ 0x0224A1EC
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_0224A1F4:
	ldr r0, [r5, #4]
	bl FUN_0225B020
	adds r0, r5, #0
	adds r0, #0x98
	adds r4, r4, #1
	adds r5, #0x10
	str r6, [r0]
	cmp r4, #4
	blt _0224A1F4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_0224A1EC

	thumb_func_start ov17_0224A20C
ov17_0224A20C: @ 0x0224A20C
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224A20C

	thumb_func_start ov17_0224A210
ov17_0224A210: @ 0x0224A210
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224A210

	thumb_func_start ov17_0224A214
ov17_0224A214: @ 0x0224A214
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	adds r6, r1, #0
	str r2, [sp, #4]
	adds r0, r2, #0
	movs r1, #2
	bl ov17_0223F0BC
	adds r5, r0, #0
	ldr r0, [sp, #4]
	movs r1, #3
	bl ov17_0223F0BC
	movs r1, #0x20
	subs r2, r1, r5
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	asrs r7, r1, #1
	cmp r6, r0
	ble _0224A240
	adds r6, r0, #0
_0224A240:
	asrs r0, r6, #2
	lsrs r0, r0, #0x1d
	adds r0, r6, r0
	asrs r4, r0, #3
	lsrs r2, r6, #0x1f
	lsls r1, r6, #0x1d
	subs r1, r1, r2
	movs r0, #0x1d
	rors r1, r0
	adds r0, r2, r1
	str r0, [sp, #8]
	ldr r0, [sp]
	movs r1, #3
	ldr r0, [r0, #0x60]
	bl FUN_02019FE4
	movs r1, #0x26
	lsls r1, r1, #4
	adds r1, r7, r1
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224A306
	movs r1, #0
	ldr r0, _0224A34C @ =0x00002014
	movs r7, #0x1d
	b _0224A29C
_0224A278:
	lsrs r6, r1, #0x1f
	lsls r3, r1, #0x1d
	subs r3, r3, r6
	rors r3, r7
	adds r3, r6, r3
	bne _0224A28A
	lsls r3, r1, #1
	strh r0, [r2, r3]
	b _0224A29A
_0224A28A:
	movs r3, #1
	tst r3, r1
	beq _0224A294
	ldr r6, _0224A350 @ =0x00002034
	b _0224A296
_0224A294:
	ldr r6, _0224A354 @ =0x00002054
_0224A296:
	lsls r3, r1, #1
	strh r6, [r2, r3]
_0224A29A:
	adds r1, r1, #1
_0224A29C:
	cmp r1, r4
	blt _0224A278
	cmp r1, r5
	bge _0224A2D4
	lsrs r4, r1, #0x1f
	lsls r3, r1, #0x1d
	subs r3, r3, r4
	movs r0, #0x1d
	rors r3, r0
	adds r0, r4, r3
	bne _0224A2BE
	ldr r3, _0224A358 @ =0x0000200C
	ldr r0, [sp, #8]
	adds r3, r0, r3
	lsls r0, r1, #1
	strh r3, [r2, r0]
	b _0224A2D2
_0224A2BE:
	movs r0, #1
	tst r0, r1
	beq _0224A2C8
	ldr r3, _0224A35C @ =0x0000202C
	b _0224A2CA
_0224A2C8:
	ldr r3, _0224A360 @ =0x0000204C
_0224A2CA:
	ldr r0, [sp, #8]
	adds r3, r0, r3
	lsls r0, r1, #1
	strh r3, [r2, r0]
_0224A2D2:
	adds r1, r1, #1
_0224A2D4:
	ldr r0, _0224A358 @ =0x0000200C
	movs r3, #0x1d
	movs r7, #1
	b _0224A300
_0224A2DC:
	lsrs r6, r1, #0x1f
	lsls r4, r1, #0x1d
	subs r4, r4, r6
	rors r4, r3
	adds r4, r6, r4
	bne _0224A2EE
	lsls r4, r1, #1
	strh r0, [r2, r4]
	b _0224A2FE
_0224A2EE:
	adds r4, r1, #0
	tst r4, r7
	beq _0224A2F8
	ldr r6, _0224A35C @ =0x0000202C
	b _0224A2FA
_0224A2F8:
	ldr r6, _0224A360 @ =0x0000204C
_0224A2FA:
	lsls r4, r1, #1
	strh r6, [r2, r4]
_0224A2FE:
	adds r1, r1, #1
_0224A300:
	cmp r1, r5
	blt _0224A2DC
	b _0224A33C
_0224A306:
	movs r1, #0
	ldr r0, _0224A364 @ =0x02254898
	b _0224A316
_0224A30C:
	lsls r3, r1, #1
	ldrh r6, [r0, r3]
	adds r1, r1, #1
	adds r6, #8
	strh r6, [r2, r3]
_0224A316:
	cmp r1, r4
	blt _0224A30C
	cmp r1, r5
	bge _0224A32C
	ldr r0, _0224A364 @ =0x02254898
	lsls r4, r1, #1
	ldrh r3, [r0, r4]
	ldr r0, [sp, #8]
	adds r1, r1, #1
	adds r0, r0, r3
	strh r0, [r2, r4]
_0224A32C:
	ldr r3, _0224A364 @ =0x02254898
	b _0224A338
_0224A330:
	lsls r4, r1, #1
	ldrh r0, [r3, r4]
	adds r1, r1, #1
	strh r0, [r2, r4]
_0224A338:
	cmp r1, r5
	blt _0224A330
_0224A33C:
	ldr r0, [sp]
	movs r1, #3
	ldr r0, [r0, #0x60]
	bl FUN_0201C3C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224A34C: .4byte 0x00002014
_0224A350: .4byte 0x00002034
_0224A354: .4byte 0x00002054
_0224A358: .4byte 0x0000200C
_0224A35C: .4byte 0x0000202C
_0224A360: .4byte 0x0000204C
_0224A364: .4byte 0x02254898
	thumb_func_end ov17_0224A214

	thumb_func_start ov17_0224A368
ov17_0224A368: @ 0x0224A368
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r3, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r0, r7, #0
	movs r1, #3
	bl ov17_0223F0BC
	muls r0, r4, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov17_0224A214
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0224A368

	thumb_func_start ov17_0224A390
ov17_0224A390: @ 0x0224A390
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224A418 @ =0x000080EB
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x3a
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224A41C @ =0x000080EC
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x3b
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224A420 @ =0x000080ED
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x3c
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224A424 @ =0x000080EE
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x3d
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224A418 @ =0x000080EB
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x3e
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224A418 @ =0x000080EB
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x3f
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0224A418: .4byte 0x000080EB
_0224A41C: .4byte 0x000080EC
_0224A420: .4byte 0x000080ED
_0224A424: .4byte 0x000080EE
	thumb_func_end ov17_0224A390

	thumb_func_start ov17_0224A428
ov17_0224A428: @ 0x0224A428
	push {r4, lr}
	ldr r1, _0224A45C @ =0x000080EB
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _0224A460 @ =0x000080EC
	adds r0, r4, #0
	bl FUN_0200D070
	ldr r1, _0224A464 @ =0x000080ED
	adds r0, r4, #0
	bl FUN_0200D070
	ldr r1, _0224A468 @ =0x000080EE
	adds r0, r4, #0
	bl FUN_0200D070
	ldr r1, _0224A45C @ =0x000080EB
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _0224A45C @ =0x000080EB
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_0224A45C: .4byte 0x000080EB
_0224A460: .4byte 0x000080EC
_0224A464: .4byte 0x000080ED
_0224A468: .4byte 0x000080EE
	thumb_func_end ov17_0224A428

	thumb_func_start ov17_0224A46C
ov17_0224A46C: @ 0x0224A46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _0224A56C @ =0x02254760
	adds r7, r2, #0
	adds r6, r3, #0
	adds r5, r0, #0
	mov ip, r1
	add r3, sp, #0
	movs r2, #6
_0224A47E:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224A47E
	ldr r0, [r4]
	cmp r6, #2
	str r0, [r3]
	bne _0224A496
	ldr r0, [sp, #8]
	adds r0, #0xa
	str r0, [sp, #8]
	b _0224A4C6
_0224A496:
	ldr r0, [sp, #0x54]
	cmp r0, #3
	bhi _0224A4C6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224A4A8: @ jump table
	.2byte _0224A4C6 - _0224A4A8 - 2 @ case 0
	.2byte _0224A4B0 - _0224A4A8 - 2 @ case 1
	.2byte _0224A4B8 - _0224A4A8 - 2 @ case 2
	.2byte _0224A4C0 - _0224A4A8 - 2 @ case 3
_0224A4B0:
	ldr r0, [sp, #8]
	adds r0, r0, #3
	str r0, [sp, #8]
	b _0224A4C6
_0224A4B8:
	ldr r0, [sp, #8]
	adds r0, r0, #2
	str r0, [sp, #8]
	b _0224A4C6
_0224A4C0:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_0224A4C6:
	ldr r0, [sp, #0x48]
	cmp r0, #4
	bhi _0224A500
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224A4D8: @ jump table
	.2byte _0224A500 - _0224A4D8 - 2 @ case 0
	.2byte _0224A4F6 - _0224A4D8 - 2 @ case 1
	.2byte _0224A500 - _0224A4D8 - 2 @ case 2
	.2byte _0224A4E2 - _0224A4D8 - 2 @ case 3
	.2byte _0224A4EC - _0224A4D8 - 2 @ case 4
_0224A4E2:
	ldr r0, _0224A570 @ =0x000080EC
	str r0, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0xc]
	b _0224A508
_0224A4EC:
	ldr r0, _0224A574 @ =0x000080EE
	str r0, [sp, #0x14]
	movs r0, #6
	str r0, [sp, #0xc]
	b _0224A508
_0224A4F6:
	ldr r0, _0224A578 @ =0x000080ED
	str r0, [sp, #0x14]
	movs r0, #7
	str r0, [sp, #0xc]
	b _0224A508
_0224A500:
	ldr r0, _0224A57C @ =0x000080EB
	str r0, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0xc]
_0224A508:
	mov r0, ip
	adds r1, r7, #0
	add r2, sp, #0
	bl FUN_0200CE6C
	adds r4, r0, #0
	adds r1, r6, #0
	bl FUN_0200D364
	ldr r0, [r4]
	bl FUN_0200D324
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	movs r3, #1
	adds r0, r4, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	bl FUN_0200D500
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0200D390
	movs r0, #0
	adds r2, r5, #0
_0224A542:
	adds r1, r2, #0
	adds r1, #0xd8
	ldr r1, [r1]
	cmp r1, #0
	bne _0224A558
	lsls r1, r0, #2
	adds r1, r5, r1
	adds r1, #0xd8
	add sp, #0x34
	str r4, [r1]
	pop {r4, r5, r6, r7, pc}
_0224A558:
	adds r0, r0, #1
	adds r2, r2, #4
	cmp r0, #0x44
	blt _0224A542
	bl FUN_02022974
	movs r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0224A56C: .4byte 0x02254760
_0224A570: .4byte 0x000080EC
_0224A574: .4byte 0x000080EE
_0224A578: .4byte 0x000080ED
_0224A57C: .4byte 0x000080EB
	thumb_func_end ov17_0224A46C

	thumb_func_start ov17_0224A580
ov17_0224A580: @ 0x0224A580
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_0224A588:
	adds r0, r5, #0
	adds r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _0224A59C
	bl FUN_0200D0F4
	adds r0, r5, #0
	adds r0, #0xd8
	str r6, [r0]
_0224A59C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x44
	blt _0224A588
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_0224A580

	thumb_func_start ov17_0224A5A8
ov17_0224A5A8: @ 0x0224A5A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224A5F0 @ =0x000080EF
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x37
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224A5F4 @ =0x000080EC
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x38
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224A5F4 @ =0x000080EC
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x39
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A5F0: .4byte 0x000080EF
_0224A5F4: .4byte 0x000080EC
	thumb_func_end ov17_0224A5A8

	thumb_func_start ov17_0224A5F8
ov17_0224A5F8: @ 0x0224A5F8
	push {r4, lr}
	ldr r1, _0224A614 @ =0x000080EF
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _0224A618 @ =0x000080EC
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _0224A618 @ =0x000080EC
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_0224A614: .4byte 0x000080EF
_0224A618: .4byte 0x000080EC
	thumb_func_end ov17_0224A5F8

	thumb_func_start ov17_0224A61C
ov17_0224A61C: @ 0x0224A61C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r4, #0
_0224A626:
	ldr r2, _0224A648 @ =0x02254794
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0200CE6C
	ldr r1, _0224A64C @ =0x000009F8
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0224A626
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224A648: .4byte 0x02254794
_0224A64C: .4byte 0x000009F8
	thumb_func_end ov17_0224A61C

	thumb_func_start ov17_0224A650
ov17_0224A650: @ 0x0224A650
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r7, _0224A670 @ =0x000009F8
	adds r5, r0, #0
	adds r6, r4, #0
_0224A65A:
	ldr r0, _0224A670 @ =0x000009F8
	ldr r0, [r5, r0]
	bl FUN_0200D0F4
	str r6, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0224A65A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A670: .4byte 0x000009F8
	thumb_func_end ov17_0224A650

	thumb_func_start ov17_0224A674
ov17_0224A674: @ 0x0224A674
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r5, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #5
	bl FUN_0200B1EC
	str r0, [sp, #0x38]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #6
	bl FUN_0200B1EC
	str r0, [sp, #0x34]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #7
	bl FUN_0200B1EC
	str r0, [sp, #0x30]
	movs r0, #0
	ldr r1, _0224A7A8 @ =0x00000A04
	str r0, [sp, #0x3c]
	adds r0, r5, r1
	str r0, [sp, #0x2c]
	adds r0, r1, #0
	adds r0, #0x3c
	adds r1, #0x78
	adds r4, r5, #0
	adds r7, r5, r0
	adds r6, r5, r1
_0224A6B8:
	ldr r0, [sp, #0x2c]
	adds r3, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x38]
	adds r3, #0x94
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _0224A7AC @ =0x000B0C00
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0224A7B0 @ =0x000080E9
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	movs r0, #0xc
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x5c]
	ldr r3, [r3]
	movs r0, #0x17
	bl ov17_0223F1E8
	ldr r0, _0224A7A8 @ =0x00000A04
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_020129D0
	adds r3, r5, #0
	ldr r0, [sp, #0x34]
	str r7, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _0224A7AC @ =0x000B0C00
	adds r3, #0x94
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0224A7B0 @ =0x000080E9
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	movs r0, #0xc
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x5c]
	ldr r3, [r3]
	movs r0, #0x17
	bl ov17_0223F1E8
	movs r0, #0x29
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_020129D0
	adds r3, r5, #0
	ldr r0, [sp, #0x30]
	str r6, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _0224A7AC @ =0x000B0C00
	adds r3, #0x94
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0224A7B0 @ =0x000080E9
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	movs r0, #0xc
	str r0, [sp, #0x28]
	ldr r1, [r5, #0x60]
	ldr r2, [r5, #0x5c]
	ldr r3, [r3]
	movs r0, #0x17
	bl ov17_0223F1E8
	ldr r0, _0224A7B4 @ =0x00000A7C
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_020129D0
	ldr r0, [sp, #0x2c]
	adds r4, #0x14
	adds r0, #0x14
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	adds r7, #0x14
	adds r0, r0, #1
	adds r6, #0x14
	str r0, [sp, #0x3c]
	cmp r0, #3
	blt _0224A6B8
	ldr r0, [sp, #0x38]
	bl FUN_020237BC
	ldr r0, [sp, #0x34]
	bl FUN_020237BC
	ldr r0, [sp, #0x30]
	bl FUN_020237BC
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224A7A8: .4byte 0x00000A04
_0224A7AC: .4byte 0x000B0C00
_0224A7B0: .4byte 0x000080E9
_0224A7B4: .4byte 0x00000A7C
	thumb_func_end ov17_0224A674

	thumb_func_start ov17_0224A7B8
ov17_0224A7B8: @ 0x0224A7B8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224A7DC @ =0x00000A04
	movs r7, #0
	adds r6, r0, r1
_0224A7C0:
	movs r4, #0
	adds r5, r6, #0
_0224A7C4:
	adds r0, r5, #0
	bl ov17_0223F2E4
	adds r4, r4, #1
	adds r5, #0x14
	cmp r4, #3
	blt _0224A7C4
	adds r7, r7, #1
	adds r6, #0x3c
	cmp r7, #3
	blt _0224A7C0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224A7DC: .4byte 0x00000A04
	thumb_func_end ov17_0224A7B8

	thumb_func_start ov17_0224A7E0
ov17_0224A7E0: @ 0x0224A7E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	str r3, [sp]
	cmp r4, #0
	bne _0224A7F2
	str r4, [sp, #4]
	b _0224A7F6
_0224A7F2:
	subs r0, r4, #1
	str r0, [sp, #4]
_0224A7F6:
	ldr r0, _0224A8BC @ =0x000009BC
	movs r1, #0x14
	adds r2, r5, r0
	ldr r0, [sp, #4]
	muls r1, r0, r1
	adds r6, r2, r1
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0224A80C
	bl FUN_0200DA58
_0224A80C:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	ldr r1, _0224A8C0 @ =0x022546CC
	lsls r2, r4, #2
	ldrsh r0, [r1, r2]
	adds r1, r1, r2
	str r0, [sp, #0xc]
	movs r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0224A8C4 @ =0x000009F8
	ldr r0, [r1, r0]
	ldr r1, [sp]
	str r0, [r6]
	bl FUN_0200D364
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	movs r3, #1
	ldr r0, [r6]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	bl FUN_0200D500
	ldr r0, [r6]
	ldr r0, [r0]
	bl FUN_0200D324
	ldr r0, [r6]
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, [sp, #4]
	movs r1, #0x14
	adds r7, r0, #0
	movs r4, #0
	muls r7, r1, r7
	b _0224A87E
_0224A86A:
	movs r0, #0x3c
	muls r0, r4, r0
	adds r0, r5, r0
	adds r1, r0, r7
	ldr r0, _0224A8C8 @ =0x00000A04
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_020129D0
	adds r4, r4, #1
_0224A87E:
	cmp r4, #3
	blt _0224A86A
	ldr r0, _0224A8C8 @ =0x00000A04
	movs r1, #0x3c
	adds r2, r5, r0
	ldr r0, [sp]
	movs r3, #1
	muls r1, r0, r1
	adds r2, r2, r1
	ldr r0, [sp, #4]
	movs r1, #0x14
	muls r1, r0, r1
	adds r0, r2, r1
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	str r0, [r6, #4]
	bl ov17_0223F2F8
	ldr r0, [r6, #4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_020129D0
	ldr r0, _0224A8CC @ =ov17_0224A8D4
	ldr r2, _0224A8D0 @ =0x00009D08
	adds r1, r6, #0
	bl FUN_0200D9E8
	str r0, [r6, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224A8BC: .4byte 0x000009BC
_0224A8C0: .4byte 0x022546CC
_0224A8C4: .4byte 0x000009F8
_0224A8C8: .4byte 0x00000A04
_0224A8CC: .4byte ov17_0224A8D4
_0224A8D0: .4byte 0x00009D08
	thumb_func_end ov17_0224A7E0

	thumb_func_start ov17_0224A8D4
ov17_0224A8D4: @ 0x0224A8D4
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224A8E8
	cmp r0, #1
	beq _0224A926
	b _0224A93A
_0224A8E8:
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0]
	add r2, sp, #0
	bl FUN_020129A4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r0, #4
	str r2, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl FUN_020128C4
	movs r1, #0
	ldr r0, [r4]
	subs r2, r1, #4
	bl FUN_0200D5DC
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #4
	ble _0224A956
	movs r0, #0
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224A926:
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0xe
	ble _0224A956
	ldrb r0, [r4, #0x10]
	add sp, #8
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224A93A:
	ldr r0, [r4, #4]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_020129D0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D3F4
	movs r0, #0
	str r0, [r4, #8]
	adds r0, r5, #0
	bl FUN_0200DA58
_0224A956:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_0224A8D4

	thumb_func_start ov17_0224A95C
ov17_0224A95C: @ 0x0224A95C
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r7, _0224A980 @ =0x000009C4
	adds r5, r0, #0
	adds r6, r4, #0
_0224A966:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224A974
	bl FUN_0200DA58
	ldr r0, _0224A980 @ =0x000009C4
	str r6, [r5, r0]
_0224A974:
	adds r4, r4, #1
	adds r5, #0x14
	cmp r4, #3
	blt _0224A966
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A980: .4byte 0x000009C4
	thumb_func_end ov17_0224A95C

	thumb_func_start ov17_0224A984
ov17_0224A984: @ 0x0224A984
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224A9CC @ =0x000080F0
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x40
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224A9D0 @ =0x000080ED
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x41
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224A9D0 @ =0x000080ED
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x42
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A9CC: .4byte 0x000080F0
_0224A9D0: .4byte 0x000080ED
	thumb_func_end ov17_0224A984

	thumb_func_start ov17_0224A9D4
ov17_0224A9D4: @ 0x0224A9D4
	push {r4, lr}
	ldr r1, _0224A9F0 @ =0x000080F0
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _0224A9F4 @ =0x000080ED
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _0224A9F4 @ =0x000080ED
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_0224A9F0: .4byte 0x000080F0
_0224A9F4: .4byte 0x000080ED
	thumb_func_end ov17_0224A9D4

	thumb_func_start ov17_0224A9F8
ov17_0224A9F8: @ 0x0224A9F8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r2, _0224AA18 @ =0x022547C8
	bl FUN_0200CE6C
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200D324
	movs r0, #0x7a
	lsls r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0224AA18: .4byte 0x022547C8
	thumb_func_end ov17_0224A9F8

	thumb_func_start ov17_0224AA1C
ov17_0224AA1C: @ 0x0224AA1C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224AA36
	bl FUN_0200D0F4
	movs r0, #0x7a
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_0224AA36:
	pop {r4, pc}
	thumb_func_end ov17_0224AA1C

	thumb_func_start ov17_0224AA38
ov17_0224AA38: @ 0x0224AA38
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0224AA50 @ =ov17_0224AA68
	ldr r2, _0224AA54 @ =0x00009CAE
	adds r1, r4, #0
	bl FUN_0200D9E8
	movs r1, #2
	lsls r1, r1, #8
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0224AA50: .4byte ov17_0224AA68
_0224AA54: .4byte 0x00009CAE
	thumb_func_end ov17_0224AA38

	thumb_func_start ov17_0224AA58
ov17_0224AA58: @ 0x0224AA58
	movs r1, #2
	lsls r1, r1, #8
	ldr r3, _0224AA64 @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_0224AA64: .4byte FUN_0200DA58
	thumb_func_end ov17_0224AA58

	thumb_func_start ov17_0224AA68
ov17_0224AA68: @ 0x0224AA68
	push {r3, lr}
	ldr r2, [r1]
	ldr r0, _0224AA90 @ =0x00000123
	movs r3, #1
	ldrb r2, [r2, r0]
	adds r0, #0xd9
	ldr r0, [r1, r0]
	lsls r2, r2, #4
	adds r2, r1, r2
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	lsls r1, r1, #0x10
	subs r2, #0x28
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	bl FUN_0200D500
	pop {r3, pc}
	.align 2, 0
_0224AA90: .4byte 0x00000123
	thumb_func_end ov17_0224AA68

	thumb_func_start ov17_0224AA94
ov17_0224AA94: @ 0x0224AA94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224AADC @ =0x000080F2
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x5a
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224AAE0 @ =0x000080EF
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x59
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224AAE0 @ =0x000080EF
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x58
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AADC: .4byte 0x000080F2
_0224AAE0: .4byte 0x000080EF
	thumb_func_end ov17_0224AA94

	thumb_func_start ov17_0224AAE4
ov17_0224AAE4: @ 0x0224AAE4
	push {r4, lr}
	ldr r1, _0224AB00 @ =0x000080F2
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _0224AB04 @ =0x000080EF
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _0224AB04 @ =0x000080EF
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_0224AB00: .4byte 0x000080F2
_0224AB04: .4byte 0x000080EF
	thumb_func_end ov17_0224AAE4

	thumb_func_start ov17_0224AB08
ov17_0224AB08: @ 0x0224AB08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	movs r0, #0
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	ldr r4, [sp]
	movs r1, #2
	adds r0, r4, #0
	lsls r1, r1, #8
	ldr r6, [sp, #0xc]
	str r2, [sp, #8]
	adds r7, r0, #4
	adds r5, r0, r1
_0224AB24:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, _0224ABA0 @ =0x02254830
	bl FUN_0200CE6C
	movs r1, #0x81
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl FUN_0200D324
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D6A4
	ldr r1, [sp, #0xc]
	ldr r0, _0224ABA4 @ =0x00000213
	strb r1, [r4, r0]
	subs r0, r0, #7
	str r7, [r4, r0]
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	ldr r0, [r0, r6]
	bl FUN_020765B8
	movs r1, #0x85
	lsls r1, r1, #2
	strb r0, [r4, r1]
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov17_0224AC78
	ldr r0, _0224ABA8 @ =ov17_0224ABFC
	ldr r2, _0224ABAC @ =0x0000A08C
	adds r1, r5, #0
	bl FUN_0200D9E8
	movs r1, #2
	lsls r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	adds r4, #0x18
	adds r0, r0, #1
	adds r7, #0x10
	adds r6, r6, #4
	adds r5, #0x18
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _0224AB24
	ldr r0, [sp]
	movs r1, #0
	bl ov17_0224ABDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ABA0: .4byte 0x02254830
_0224ABA4: .4byte 0x00000213
_0224ABA8: .4byte ov17_0224ABFC
_0224ABAC: .4byte 0x0000A08C
	thumb_func_end ov17_0224AB08

	thumb_func_start ov17_0224ABB0
ov17_0224ABB0: @ 0x0224ABB0
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	movs r7, #0x81
	adds r5, r0, #0
	adds r6, r4, #0
	lsls r7, r7, #2
_0224ABBC:
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D0F4
	movs r0, #2
	lsls r0, r0, #8
	ldr r0, [r5, r0]
	bl FUN_0200DA58
	str r6, [r5, r7]
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, #4
	blt _0224ABBC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224ABB0

	thumb_func_start ov17_0224ABDC
ov17_0224ABDC: @ 0x0224ABDC
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0x81
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	lsls r7, r7, #2
_0224ABE8:
	ldr r0, [r5, r7]
	adds r1, r6, #0
	bl FUN_0200D3F4
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, #4
	blt _0224ABE8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0224ABDC

	thumb_func_start ov17_0224ABFC
ov17_0224ABFC: @ 0x0224ABFC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0xc]
	ldr r6, [r0, #4]
	ldr r4, [r0, #8]
	ldr r0, [r0, #0xc]
	bl ov17_0224B06C
	movs r1, #0x14
	ldrsb r2, [r5, r1]
	movs r1, #0x28
	subs r2, r1, r2
	adds r1, r2, #0
	muls r1, r0, r1
	asrs r2, r1, #7
	lsrs r2, r2, #0x18
	adds r2, r1, r2
	asrs r1, r2, #8
	adds r4, r4, r1
	movs r1, #0x64
	muls r1, r0, r1
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	blx FUN_020E17B4
	ldr r1, _0224AC74 @ =0x42C80000
	blx FUN_020E1304
	adds r7, r0, #0
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _0224AC56
	add r1, sp, #0
	movs r3, #1
	ldr r0, [r5, #4]
	adds r1, #2
	add r2, sp, #0
	lsls r3, r3, #0x14
	bl FUN_0200D5A0
	add r1, sp, #0
	movs r0, #0
	ldrsh r4, [r1, r0]
_0224AC56:
	lsls r1, r6, #0x10
	lsls r2, r4, #0x10
	movs r3, #1
	ldr r0, [r5, #4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	bl FUN_0200D500
	ldr r0, [r5, #4]
	adds r1, r7, #0
	adds r2, r7, #0
	bl FUN_0200D6E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224AC74: .4byte 0x42C80000
	thumb_func_end ov17_0224ABFC

	thumb_func_start ov17_0224AC78
ov17_0224AC78: @ 0x0224AC78
	strb r1, [r0, #0x11]
	strb r2, [r0, #0x12]
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224AC78

	thumb_func_start ov17_0224AC80
ov17_0224AC80: @ 0x0224AC80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224ACC8 @ =0x000080F3
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x5d
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224ACCC @ =0x000080F0
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x5c
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224ACCC @ =0x000080F0
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x5b
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224ACC8: .4byte 0x000080F3
_0224ACCC: .4byte 0x000080F0
	thumb_func_end ov17_0224AC80

	thumb_func_start ov17_0224ACD0
ov17_0224ACD0: @ 0x0224ACD0
	push {r4, lr}
	ldr r1, _0224ACEC @ =0x000080F3
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _0224ACF0 @ =0x000080F0
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _0224ACF0 @ =0x000080F0
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_0224ACEC: .4byte 0x000080F3
_0224ACF0: .4byte 0x000080F0
	thumb_func_end ov17_0224ACD0

	thumb_func_start ov17_0224ACF4
ov17_0224ACF4: @ 0x0224ACF4
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224ACF4

	thumb_func_start ov17_0224ACF8
ov17_0224ACF8: @ 0x0224ACF8
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224ACF8

	thumb_func_start ov17_0224ACFC
ov17_0224ACFC: @ 0x0224ACFC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224AD44 @ =0x000080F4
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x60
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224AD48 @ =0x000080F1
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x5f
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224AD48 @ =0x000080F1
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x5e
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AD44: .4byte 0x000080F4
_0224AD48: .4byte 0x000080F1
	thumb_func_end ov17_0224ACFC

	thumb_func_start ov17_0224AD4C
ov17_0224AD4C: @ 0x0224AD4C
	push {r4, lr}
	ldr r1, _0224AD68 @ =0x000080F4
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _0224AD6C @ =0x000080F1
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _0224AD6C @ =0x000080F1
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_0224AD68: .4byte 0x000080F4
_0224AD6C: .4byte 0x000080F1
	thumb_func_end ov17_0224AD4C

	thumb_func_start ov17_0224AD70
ov17_0224AD70: @ 0x0224AD70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0xad
	lsls r0, r0, #2
	adds r7, r1, #0
	adds r1, r5, r0
	subs r0, #0xf4
	muls r0, r7, r0
	adds r4, r1, r0
	str r2, [sp]
	movs r1, #0
_0224AD88:
	ldr r0, [r4]
	cmp r0, #0
	beq _0224AD96
	adds r1, r1, #1
	adds r4, #0x1c
	cmp r1, #0x10
	blt _0224AD88
_0224AD96:
	cmp r1, #0x10
	bne _0224ADA0
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224ADA0:
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0224AE6C @ =0x02254864
	bl FUN_0200CE6C
	adds r6, r0, #0
	bne _0224ADB4
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224ADB4:
	lsls r1, r7, #4
	adds r2, r5, r1
	ldr r1, [r2, #0x1c]
	ldr r7, [r2, #0x20]
	str r1, [sp, #4]
	ldr r1, [sp]
	bl FUN_0200D364
	ldr r1, [sp, #4]
	lsls r2, r7, #0x10
	lsls r1, r1, #0x10
	movs r3, #1
	adds r0, r6, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	bl FUN_0200D500
	ldr r0, [r6]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, [r6]
	bl FUN_0200D324
	ldr r0, [r5]
	bl FUN_02094E98
	ldr r2, _0224AE70 @ =0x04000280
	movs r1, #0
	strh r1, [r2]
	str r0, [r2, #0x10]
	movs r0, #5
	lsls r0, r0, #8
	adds r2, #0x18
	str r0, [r2]
	str r1, [r2, #4]
	adds r0, r4, #0
	movs r2, #0x1c
	blx FUN_020C4CF4
	ldr r0, [sp, #4]
	str r6, [r4, #4]
	lsls r0, r0, #8
	str r0, [r4, #8]
	lsls r0, r7, #8
	ldr r2, _0224AE70 @ =0x04000280
	str r0, [r4, #0xc]
	lsrs r0, r2, #0xb
_0224AE16:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224AE16
	ldr r0, _0224AE74 @ =0x040002A8
	ldr r1, [r0]
	movs r0, #1
	str r1, [r4, #0x10]
	tst r0, r1
	beq _0224AE2C
	rsbs r0, r1, #0
	str r0, [r4, #0x10]
_0224AE2C:
	ldr r0, [r5]
	bl FUN_02094E98
	ldr r2, _0224AE78 @ =0x04000290
	movs r1, #0xf
	str r0, [r2]
	lsls r1, r1, #8
	adds r2, #8
	movs r0, #0
	str r1, [r2]
	str r0, [r2, #4]
	ldr r2, _0224AE70 @ =0x04000280
	lsrs r0, r2, #0xb
_0224AE46:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224AE46
	ldr r0, _0224AE74 @ =0x040002A8
	ldr r2, _0224AE7C @ =0x00009C40
	ldr r1, [r0]
	lsrs r0, r0, #0x10
	adds r0, r1, r0
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	ldr r0, _0224AE80 @ =ov17_0224AE84
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4]
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224AE6C: .4byte 0x02254864
_0224AE70: .4byte 0x04000280
_0224AE74: .4byte 0x040002A8
_0224AE78: .4byte 0x04000290
_0224AE7C: .4byte 0x00009C40
_0224AE80: .4byte ov17_0224AE84
	thumb_func_end ov17_0224AD70

	thumb_func_start ov17_0224AE84
ov17_0224AE84: @ 0x0224AE84
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	adds r0, r1, r0
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	adds r0, r1, r0
	str r0, [r4, #0xc]
	movs r0, #2
	ldr r1, [r4, #0x14]
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r4, #0x14]
	ldrh r0, [r4, #0x18]
	adds r0, r0, #1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	cmp r0, #0xa
	bhi _0224AECA
	movs r0, #0x11
	ldr r1, [r4, #8]
	lsls r0, r0, #0xc
	cmp r1, r0
	bgt _0224AECA
	ldr r0, _0224AF30 @ =0xFFFEF000
	cmp r1, r0
	blt _0224AECA
	movs r0, #0xd
	ldr r2, [r4, #0xc]
	lsls r0, r0, #0xc
	cmp r2, r0
	ble _0224AEDE
_0224AECA:
	ldr r0, [r4, #4]
	bl FUN_0200D0F4
	adds r0, r5, #0
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0224AEDE:
	ldr r0, _0224AF34 @ =0x04000280
	movs r3, #0
	strh r3, [r0]
	str r1, [r0, #0x10]
	adds r1, r0, #0
	lsrs r2, r0, #0x12
	adds r1, #0x18
	str r2, [r1]
	str r3, [r1, #4]
	lsrs r1, r0, #0xb
_0224AEF2:
	ldrh r2, [r0]
	tst r2, r1
	bne _0224AEF2
	ldr r3, _0224AF38 @ =0x040002A0
	ldr r2, [r4, #0xc]
	adds r0, r3, #0
	ldr r1, [r3]
	subs r0, #0x10
	str r2, [r0]
	lsrs r2, r3, #0x12
	subs r3, #8
	movs r0, #0
	str r2, [r3]
	str r0, [r3, #4]
	ldr r3, _0224AF34 @ =0x04000280
	lsrs r0, r3, #0xb
_0224AF12:
	ldrh r2, [r3]
	tst r2, r0
	bne _0224AF12
	ldr r2, _0224AF38 @ =0x040002A0
	lsls r1, r1, #0x10
	ldr r2, [r2]
	movs r3, #1
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	bl FUN_0200D500
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224AF30: .4byte 0xFFFEF000
_0224AF34: .4byte 0x04000280
_0224AF38: .4byte 0x040002A0
	thumb_func_end ov17_0224AE84

	thumb_func_start ov17_0224AF3C
ov17_0224AF3C: @ 0x0224AF3C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	cmp r2, #2
	beq _0224AF98
	adds r0, r1, #0
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _0224AF9C @ =0x00000AF6
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _0224AF98
	ldr r1, _0224AFA0 @ =0x04000280
	movs r6, #0
	strh r6, [r1]
	str r0, [r1, #0x10]
	movs r0, #2
	adds r1, #0x18
	str r0, [r1]
	str r6, [r1, #4]
	cmp r3, #0
	beq _0224AF6A
	movs r6, #1
_0224AF6A:
	ldr r2, _0224AFA0 @ =0x04000280
	lsrs r0, r2, #0xb
_0224AF6E:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224AF6E
	ldr r0, _0224AFA4 @ =0x040002A0
	ldr r5, [r0]
	cmp r5, #0x10
	ble _0224AF7E
	movs r5, #0x10
_0224AF7E:
	movs r4, #0
	cmp r5, #0
	ble _0224AF98
_0224AF84:
	ldr r1, [sp]
	adds r0, r7, #0
	adds r2, r6, #0
	bl ov17_0224AD70
	cmp r0, #0
	beq _0224AF98
	adds r4, r4, #1
	cmp r4, r5
	blt _0224AF84
_0224AF98:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224AF9C: .4byte 0x00000AF6
_0224AFA0: .4byte 0x04000280
_0224AFA4: .4byte 0x040002A0
	thumb_func_end ov17_0224AF3C

	thumb_func_start ov17_0224AFA8
ov17_0224AFA8: @ 0x0224AFA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224AFF0 @ =0x000080F5
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x63
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224AFF4 @ =0x000080F2
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x62
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224AFF4 @ =0x000080F2
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x61
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AFF0: .4byte 0x000080F5
_0224AFF4: .4byte 0x000080F2
	thumb_func_end ov17_0224AFA8

	thumb_func_start ov17_0224AFF8
ov17_0224AFF8: @ 0x0224AFF8
	push {r4, lr}
	ldr r1, _0224B014 @ =0x000080F5
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _0224B018 @ =0x000080F2
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _0224B018 @ =0x000080F2
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_0224B014: .4byte 0x000080F5
_0224B018: .4byte 0x000080F2
	thumb_func_end ov17_0224AFF8

	thumb_func_start ov17_0224B01C
ov17_0224B01C: @ 0x0224B01C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0224B050 @ =0x0225472C
	bl FUN_0200CE6C
	movs r1, #0
	movs r3, #1
	adds r4, r0, #0
	mvns r1, r1
	movs r2, #0xb0
	lsls r3, r3, #0x14
	bl FUN_0200D500
	ldr r0, [r4]
	bl FUN_0200D324
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, _0224B054 @ =0x000009B8
	str r4, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224B050: .4byte 0x0225472C
_0224B054: .4byte 0x000009B8
	thumb_func_end ov17_0224B01C

	thumb_func_start ov17_0224B058
ov17_0224B058: @ 0x0224B058
	ldr r1, _0224B060 @ =0x000009B8
	ldr r3, _0224B064 @ =FUN_0200D0F4
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_0224B060: .4byte 0x000009B8
_0224B064: .4byte FUN_0200D0F4
	thumb_func_end ov17_0224B058

	thumb_func_start ov17_0224B068
ov17_0224B068: @ 0x0224B068
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224B068

	thumb_func_start ov17_0224B06C
ov17_0224B06C: @ 0x0224B06C
	ldr r1, _0224B098 @ =0xFFFFFD80
	cmp r0, r1
	bne _0224B076
	movs r0, #0xc0
	bx lr
_0224B076:
	adds r1, #0x80
	cmp r0, r1
	bne _0224B082
	movs r0, #1
	lsls r0, r0, #8
	bx lr
_0224B082:
	movs r1, #0xa
	lsls r1, r1, #6
	adds r0, r0, r1
	lsls r1, r0, #6
	asrs r0, r1, #6
	lsrs r0, r0, #0x19
	adds r0, r1, r0
	asrs r0, r0, #7
	adds r0, #0xc0
	bx lr
	nop
_0224B098: .4byte 0xFFFFFD80
	thumb_func_end ov17_0224B06C

	thumb_func_start ov17_0224B09C
ov17_0224B09C: @ 0x0224B09C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #0xc]
	bl ov17_0224B06C
	movs r1, #1
	lsls r1, r1, #8
	cmp r0, r1
	bne _0224B0B2
	lsls r1, r1, #4
	b _0224B0BC
_0224B0B2:
	lsls r1, r0, #0xc
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
_0224B0BC:
	movs r3, #1
	ldr r0, [r4]
	adds r2, r1, #0
	lsls r3, r3, #0xc
	bl FUN_0225B0EC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_0224B09C

	thumb_func_start ov17_0224B0CC
ov17_0224B0CC: @ 0x0224B0CC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #4
_0224B0D4:
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl ov17_0224B09C
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, r5, #4
	cmp r6, #4
	blt _0224B0D4
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224B0CC

	thumb_func_start ov17_0224B0E8
ov17_0224B0E8: @ 0x0224B0E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, _0224B200 @ =0x00000B1B
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	str r2, [sp, #0x10]
	movs r1, #3
	bl ov17_0223F0BC
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #2]
	cmp r0, r4
	bne _0224B10C
	movs r0, #0
	str r0, [sp, #0x14]
	b _0224B110
_0224B10C:
	movs r0, #1
	str r0, [sp, #0x14]
_0224B110:
	ldr r0, _0224B200 @ =0x00000B1B
	movs r1, #4
	ldrb r0, [r5, r0]
	bl ov17_0223F0BC
	adds r1, r0, #0
	movs r0, #1
	lsls r0, r0, #8
	blx FUN_020E1F6C
	ldr r1, [sp, #0x10]
	movs r4, #0
	ldrb r1, [r1, #6]
	muls r0, r1, r0
	movs r1, #1
	lsls r1, r1, #8
	subs r2, r1, r6
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	adds r6, r0, r1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x18]
	ldrb r1, [r0, #7]
	ldr r0, _0224B204 @ =0x022549BC
	ldrb r7, [r0, r1]
	b _0224B18A
_0224B146:
	lsls r0, r4, #2
	adds r0, r5, r0
	adds r0, #0xec
	ldr r0, [r0]
	cmp r0, #0
	beq _0224B188
	add r1, sp, #0x1c
	movs r3, #1
	adds r1, #2
	add r2, sp, #0x1c
	lsls r3, r3, #0x14
	bl FUN_0200D5A0
	add r1, sp, #0x1c
	movs r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, r6
	bne _0224B188
	movs r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, r7
	bne _0224B188
	lsls r0, r4, #2
	adds r0, r5, r0
	adds r0, #0xec
	ldr r0, [r0]
	bl FUN_0200D37C
	cmp r0, #2
	beq _0224B188
	add sp, #0x20
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224B188:
	adds r4, r4, #1
_0224B18A:
	cmp r4, #0x44
	blt _0224B146
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldrb r0, [r0, #3]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x10]
	str r7, [sp, #8]
	ldrb r0, [r0, #7]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	adds r0, #0x14
	bl ov17_0224A46C
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0224B1F8
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0224B1F8
	movs r2, #0x80
	adds r1, r2, #0
	ldr r3, [r5]
	adds r1, #0xa3
	ldrb r1, [r3, r1]
	ldr r3, _0224B208 @ =0x00000AF1
	ldr r0, [sp, #0x18]
	adds r1, r5, r1
	ldrb r4, [r1, r3]
	ldr r1, _0224B204 @ =0x022549BC
	subs r0, r2, r0
	ldrb r4, [r1, r4]
	ldr r1, [sp, #0x10]
	adds r0, r6, r0
	ldrb r1, [r1, #3]
	adds r2, #0xa3
	str r1, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5]
	ldrb r0, [r0, r2]
	adds r0, r5, r0
	ldrb r0, [r0, r3]
	movs r3, #2
	str r0, [sp, #0xc]
	adds r0, r5, #0
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	adds r0, #0x14
	bl ov17_0224A46C
_0224B1F8:
	movs r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B200: .4byte 0x00000B1B
_0224B204: .4byte 0x022549BC
_0224B208: .4byte 0x00000AF1
	thumb_func_end ov17_0224B0E8

	thumb_func_start ov17_0224B20C
ov17_0224B20C: @ 0x0224B20C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	ldrb r1, [r4, #5]
	adds r5, r0, #0
	ldrb r0, [r4, #2]
	cmp r1, #3
	bhi _0224B240
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224B228: @ jump table
	.2byte _0224B230 - _0224B228 - 2 @ case 0
	.2byte _0224B234 - _0224B228 - 2 @ case 1
	.2byte _0224B238 - _0224B228 - 2 @ case 2
	.2byte _0224B23C - _0224B228 - 2 @ case 3
_0224B230:
	movs r2, #2
	b _0224B242
_0224B234:
	movs r2, #2
	b _0224B242
_0224B238:
	movs r2, #1
	b _0224B242
_0224B23C:
	movs r2, #1
	b _0224B242
_0224B240:
	movs r2, #0
_0224B242:
	ldr r1, _0224B4D8 @ =0x00000AF6
	lsls r0, r0, #1
	adds r1, r5, r1
	adds r3, r1, r0
	str r3, [sp, #8]
	ldrsh r3, [r1, r0]
	adds r2, r3, r2
	strh r2, [r1, r0]
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0224B2A2
	ldr r0, _0224B4DC @ =0x00001BBC
	movs r2, #0
	adds r3, r5, r0
	adds r6, r5, #0
	subs r7, r0, #2
_0224B262:
	ldrb r0, [r3]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bne _0224B290
	movs r0, #0xa
	muls r0, r2, r0
	ldrh r1, [r4]
	ldr r2, _0224B4E0 @ =0x00001BB4
	adds r0, r5, r0
	strh r1, [r0, r2]
	ldrh r3, [r4, #2]
	adds r1, r2, #2
	strh r3, [r0, r1]
	ldrh r3, [r4, #4]
	adds r1, r2, #4
	strh r3, [r0, r1]
	adds r1, r2, #6
	ldrh r3, [r4, #6]
	adds r2, #8
	strh r3, [r0, r1]
	ldrh r1, [r4, #8]
	strh r1, [r0, r2]
	b _0224B2A2
_0224B290:
	ldrb r1, [r4, #6]
	ldrb r0, [r6, r7]
	cmp r1, r0
	beq _0224B2A2
	adds r2, r2, #1
	adds r3, #0xa
	adds r6, #0xa
	cmp r2, #8
	blt _0224B262
_0224B2A2:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0224B2C0
	ldr r0, _0224B4E4 @ =0x00000AD5
	ldrb r2, [r4, #2]
	adds r3, r5, r0
	adds r0, r0, #4
	ldrb r1, [r3, r2]
	adds r1, r1, #1
	strb r1, [r3, r2]
	ldrb r1, [r4, #2]
	adds r2, r5, r0
	ldrb r0, [r2, r1]
	adds r0, r0, #1
	b _0224B2D0
_0224B2C0:
	ldrb r1, [r4, #2]
	movs r0, #0
	adds r2, r5, r1
	ldr r1, _0224B4E4 @ =0x00000AD5
	strb r0, [r2, r1]
	ldrb r2, [r4, #2]
	adds r1, r1, #4
	adds r2, r5, r2
_0224B2D0:
	strb r0, [r2, r1]
	ldrb r0, [r4, #4]
	cmp r0, #2
	beq _0224B2E6
	ldr r0, _0224B4E8 @ =0x00000AE4
	ldrb r1, [r4, #2]
	adds r2, r5, r0
	ldrb r0, [r2, r1]
	adds r0, r0, #1
	strb r0, [r2, r1]
	b _0224B2FC
_0224B2E6:
	ldr r0, _0224B4EC @ =0x00000ADD
	ldrb r2, [r4, #2]
	adds r3, r5, r0
	adds r0, r0, #7
	ldrb r1, [r3, r2]
	adds r1, r1, #1
	strb r1, [r3, r2]
	ldrb r1, [r4, #2]
	movs r2, #0
	adds r1, r5, r1
	strb r2, [r1, r0]
_0224B2FC:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0224B32E
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0224B312
	cmp r0, #1
	beq _0224B31C
	cmp r0, #2
	beq _0224B326
	b _0224B32E
_0224B312:
	ldr r0, _0224B4F0 @ =0x00000AE1
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	b _0224B32E
_0224B31C:
	ldr r0, _0224B4F4 @ =0x00000AE2
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	b _0224B32E
_0224B326:
	ldr r0, _0224B4F8 @ =0x00000AE3
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
_0224B32E:
	ldrb r0, [r4, #2]
	str r0, [sp]
	ldrb r0, [r4, #7]
	str r0, [sp, #4]
	adds r0, r5, #0
	ldrb r3, [r4, #4]
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x70]
	adds r0, #0x14
	bl ov17_0224A7E0
	ldr r2, [r5]
	ldr r1, _0224B4FC @ =0x00000123
	adds r0, r5, #0
	ldrb r1, [r2, r1]
	adds r2, r4, #0
	bl ov17_0224B0E8
	ldrb r0, [r4, #8]
	movs r1, #0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	str r0, [sp]
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #7]
	ldrb r3, [r4, #3]
	adds r0, r5, #0
	bl ov17_0224B528
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #7]
	adds r0, r5, #0
	bl ov17_0224AF3C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_0224C89C
	ldr r1, [r5]
	ldr r0, _0224B4FC @ =0x00000123
	ldrb r2, [r4, #2]
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _0224B3AE
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0224B3A0
	ldrb r1, [r4, #6]
	adds r0, r5, #0
	movs r2, #1
	bl ov17_0224CB00
	b _0224B3AE
_0224B3A0:
	cmp r0, #1
	bne _0224B3AE
	ldrb r1, [r4, #6]
	adds r0, r5, #0
	movs r2, #0
	bl ov17_0224CB00
_0224B3AE:
	ldrb r1, [r4, #7]
	cmp r1, #0
	bne _0224B3EC
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224B3EC
	ldrb r1, [r4, #2]
	ldr r0, _0224B500 @ =0x00000B1A
	adds r2, r5, r1
	adds r1, r0, #0
	subs r1, #0x41
	ldrb r3, [r5, r0]
	ldrb r1, [r2, r1]
	cmp r3, r1
	bne _0224B3DA
	adds r0, r5, #0
	movs r1, #1
	bl ov17_0224CB80
	b _0224B432
_0224B3DA:
	subs r0, #0x3d
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0224B432
	adds r0, r5, #0
	movs r1, #0
	bl ov17_0224CB80
	b _0224B432
_0224B3EC:
	cmp r1, #0
	beq _0224B432
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224B432
	ldr r3, _0224B4F0 @ =0x00000AE1
	adds r0, r3, #2
	ldrb r1, [r5, r0]
	adds r0, r3, #0
	ldrb r2, [r5, r3]
	adds r0, #0x39
	adds r3, r3, #1
	ldrb r6, [r5, r0]
	ldrb r3, [r5, r3]
	lsls r0, r6, #1
	adds r3, r2, r3
	adds r0, r6, r0
	adds r3, r1, r3
	cmp r0, r3
	bne _0224B432
	cmp r2, r0
	bne _0224B426
	adds r0, r5, #0
	movs r1, #1
	bl ov17_0224CB80
	b _0224B432
_0224B426:
	cmp r1, #0
	bne _0224B432
	adds r0, r5, #0
	movs r1, #0
	bl ov17_0224CB80
_0224B432:
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224B444
	ldr r0, _0224B504 @ =0x000006F5
	bl FUN_02005748
	b _0224B44A
_0224B444:
	ldr r0, _0224B508 @ =0x000006F4
	bl FUN_02005748
_0224B44A:
	ldr r0, _0224B50C @ =0x00000AE8
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224B466
	beq _0224B4D2
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0224B466
	ldr r1, [r5]
	ldr r0, _0224B4FC @ =0x00000123
	ldrb r2, [r4, #2]
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _0224B4D2
_0224B466:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0224B478
	cmp r0, #1
	beq _0224B4AE
	cmp r0, #2
	beq _0224B4B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B478:
	ldrb r0, [r4, #2]
	adds r1, r5, r0
	ldr r0, _0224B510 @ =0x00000AD9
	ldrb r1, [r1, r0]
	adds r0, #0x41
	ldrb r0, [r5, r0]
	cmp r0, r1
	bne _0224B494
	movs r0, #0x6f
	lsls r0, r0, #4
	bl FUN_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B494:
	subs r0, r0, #1
	cmp r0, r1
	bne _0224B4A4
	ldr r0, _0224B514 @ =0x000006EF
	bl FUN_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4A4:
	ldr r0, _0224B518 @ =0x000006EE
	bl FUN_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4AE:
	ldr r0, _0224B51C @ =0x000006F1
	bl FUN_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4B8:
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224B4CC
	ldr r0, _0224B520 @ =0x000006F2
	bl FUN_02005748
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224B4CC:
	ldr r0, _0224B524 @ =0x000005F6
	bl FUN_02005748
_0224B4D2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224B4D8: .4byte 0x00000AF6
_0224B4DC: .4byte 0x00001BBC
_0224B4E0: .4byte 0x00001BB4
_0224B4E4: .4byte 0x00000AD5
_0224B4E8: .4byte 0x00000AE4
_0224B4EC: .4byte 0x00000ADD
_0224B4F0: .4byte 0x00000AE1
_0224B4F4: .4byte 0x00000AE2
_0224B4F8: .4byte 0x00000AE3
_0224B4FC: .4byte 0x00000123
_0224B500: .4byte 0x00000B1A
_0224B504: .4byte 0x000006F5
_0224B508: .4byte 0x000006F4
_0224B50C: .4byte 0x00000AE8
_0224B510: .4byte 0x00000AD9
_0224B514: .4byte 0x000006EF
_0224B518: .4byte 0x000006EE
_0224B51C: .4byte 0x000006F1
_0224B520: .4byte 0x000006F2
_0224B524: .4byte 0x000005F6
	thumb_func_end ov17_0224B20C

	thumb_func_start ov17_0224B528
ov17_0224B528: @ 0x0224B528
	push {r4, r5, r6, lr}
	ldr r4, _0224B598 @ =0x00000F58
	adds r5, r0, r4
	movs r0, #0x4c
	adds r4, r1, #0
	muls r4, r0, r4
	adds r1, r5, r4
	adds r4, r1, #0
	adds r4, #0x20
	ldrb r4, [r4]
	subs r0, #0x4d
	adds r6, r4, #0
	cmp r4, #0x20
	bge _0224B554
_0224B544:
	ldrb r5, [r1, r6]
	cmp r5, #0
	bne _0224B54E
	adds r0, r6, #0
	b _0224B554
_0224B54E:
	adds r6, r6, #1
	cmp r6, #0x20
	blt _0224B544
_0224B554:
	movs r5, #0
	mvns r5, r5
	cmp r0, r5
	bne _0224B572
	movs r6, #0
	cmp r4, #0
	ble _0224B572
_0224B562:
	ldrb r5, [r1, r6]
	cmp r5, #0
	bne _0224B56C
	adds r0, r6, #0
	b _0224B572
_0224B56C:
	adds r6, r6, #1
	cmp r6, r4
	blt _0224B562
_0224B572:
	movs r4, #0
	mvns r4, r4
	cmp r0, r4
	bne _0224B580
	bl FUN_02022974
	pop {r4, r5, r6, pc}
_0224B580:
	strb r3, [r1, r0]
	adds r0, r1, #0
	adds r0, #0x21
	strb r2, [r0]
	adds r0, r1, #0
	ldr r2, [sp, #0x10]
	adds r0, #0x22
	strb r2, [r0]
	ldr r0, [sp, #0x14]
	adds r1, #0x23
	strb r0, [r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224B598: .4byte 0x00000F58
	thumb_func_end ov17_0224B528

	thumb_func_start ov17_0224B59C
ov17_0224B59C: @ 0x0224B59C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0224B5B0 @ =ov17_0224B5F0
	ldr r2, _0224B5B4 @ =0x00009862
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #8]
	pop {r4, pc}
	nop
_0224B5B0: .4byte ov17_0224B5F0
_0224B5B4: .4byte 0x00009862
	thumb_func_end ov17_0224B59C

	thumb_func_start ov17_0224B5B8
ov17_0224B5B8: @ 0x0224B5B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov17_0224B5B8

	thumb_func_start ov17_0224B5C8
ov17_0224B5C8: @ 0x0224B5C8
	ldr r1, _0224B5EC @ =0x00000F58
	movs r2, #0
	adds r1, r0, r1
_0224B5CE:
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224B5DE
	movs r0, #0
	bx lr
_0224B5DE:
	adds r2, r2, #1
	adds r1, #0x4c
	cmp r2, #4
	blt _0224B5CE
	movs r0, #1
	bx lr
	nop
_0224B5EC: .4byte 0x00000F58
	thumb_func_end ov17_0224B5C8

	thumb_func_start ov17_0224B5F0
ov17_0224B5F0: @ 0x0224B5F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r1, _0224B7B0 @ =0x00000F58
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	adds r4, r0, r1
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r5, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r7, #0x18
_0224B60E:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	movs r6, #0
	ldrb r0, [r4, r0]
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _0224B620
	b _0224B792
_0224B620:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	movs r2, #4
	bl ov17_0224BD28
	ldr r1, [sp, #0x10]
	ldr r0, _0224B7B4 @ =0x00000B04
	ldr r0, [r1, r0]
	ldr r1, _0224B7B8 @ =0x00002710
	blx FUN_020E2178
	ldr r1, [sp, #0x1c]
	cmp r1, #4
	bls _0224B63E
	b _0224B74A
_0224B63E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224B64A: @ jump table
	.2byte _0224B74A - _0224B64A - 2 @ case 0
	.2byte _0224B654 - _0224B64A - 2 @ case 1
	.2byte _0224B6C0 - _0224B64A - 2 @ case 2
	.2byte _0224B6EE - _0224B64A - 2 @ case 3
	.2byte _0224B71C - _0224B64A - 2 @ case 4
_0224B654:
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x18]
	adds r2, r2, r1
	movs r1, #0xad
	lsls r1, r1, #4
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _0224B692
	adds r1, r4, #0
	adds r1, #0x22
	ldrb r1, [r1]
	adds r3, r4, #0
	subs r0, r0, #1
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x23
	ldrb r1, [r1]
	adds r3, #0x21
	adds r2, r7, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x14]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	adds r0, #0x24
	bl ov17_0224B7BC
	adds r6, r0, #0
	b _0224B74E
_0224B692:
	adds r1, r4, #0
	adds r1, #0x22
	ldrb r1, [r1]
	adds r3, r4, #0
	subs r0, r0, #1
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x23
	ldrb r1, [r1]
	adds r3, #0x21
	adds r2, r7, #0
	str r1, [sp, #4]
	adds r1, r6, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	adds r0, #0x24
	bl ov17_0224B8D0
	adds r6, r0, #0
	b _0224B74E
_0224B6C0:
	adds r1, r4, #0
	adds r1, #0x22
	ldrb r1, [r1]
	adds r3, r4, #0
	subs r0, r0, #1
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x23
	ldrb r1, [r1]
	adds r3, #0x21
	adds r2, r7, #0
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	adds r0, #0x24
	bl ov17_0224B8D0
	adds r6, r0, #0
	b _0224B74E
_0224B6EE:
	adds r1, r4, #0
	adds r1, #0x22
	ldrb r1, [r1]
	adds r3, r4, #0
	subs r0, r0, #1
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x23
	ldrb r1, [r1]
	adds r3, #0x21
	adds r2, r7, #0
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	adds r0, #0x24
	bl ov17_0224BA50
	adds r6, r0, #0
	b _0224B74E
_0224B71C:
	adds r1, r4, #0
	adds r1, #0x22
	ldrb r1, [r1]
	adds r3, r4, #0
	subs r0, r0, #1
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x23
	ldrb r1, [r1]
	adds r3, #0x21
	adds r2, r7, #0
	str r1, [sp, #4]
	adds r1, r6, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldrb r3, [r3]
	ldr r1, [r5, #0x5c]
	adds r0, #0x24
	bl ov17_0224BA50
	adds r6, r0, #0
	b _0224B74E
_0224B74A:
	bl FUN_02022974
_0224B74E:
	cmp r6, #1
	bne _0224B792
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #0
	strb r0, [r4, r1]
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x20
	blo _0224B77C
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
_0224B77C:
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #0
	movs r2, #0x28
	blx FUN_020C4CF4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	movs r2, #3
	bl ov17_0224BD28
_0224B792:
	ldr r0, [sp, #0x14]
	adds r4, #0x4c
	adds r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r7, #0x10
	adds r0, r0, #1
	adds r5, r5, #4
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _0224B7AA
	b _0224B60E
_0224B7AA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B7B0: .4byte 0x00000F58
_0224B7B4: .4byte 0x00000B04
_0224B7B8: .4byte 0x00002710
	thumb_func_end ov17_0224B5F0

	thumb_func_start ov17_0224B7BC
ov17_0224B7BC: @ 0x0224B7BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #0x10]
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r0, #0
	beq _0224B7D6
	cmp r0, #1
	beq _0224B824
	b _0224B858
_0224B7D6:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #8
	str r0, [r5]
	ldr r0, [r4, #8]
	lsrs r1, r1, #1
	lsls r0, r0, #8
	str r0, [r5, #4]
	ldr r0, [r5]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	movs r0, #5
	lsls r0, r0, #8
	blx FUN_020E2178
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _0224B80E
	ldr r1, _0224B8C8 @ =0xFFFFF600
	strh r1, [r5, #0x14]
	movs r1, #0xc8
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0x64
	blx FUN_020E1F6C
	b _0224B812
_0224B80E:
	ldr r1, _0224B8CC @ =0xFFFFFB00
	strh r1, [r5, #0x14]
_0224B812:
	strh r0, [r5, #0x16]
	ldr r0, [sp, #0x28]
	movs r1, #1
	movs r2, #0
	bl ov17_0224AC78
	ldrb r0, [r5, #0x10]
	adds r0, r0, #1
	strb r0, [r5, #0x10]
_0224B824:
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	ldr r2, [r5, #0xc]
	adds r1, r2, r1
	str r1, [r5, #0xc]
	ldrsh r1, [r5, r0]
	movs r0, #0x16
	ldrsh r0, [r5, r0]
	adds r0, r1, r0
	strh r0, [r5, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r0, r1
	blt _0224B85E
	str r1, [r5, #0xc]
	movs r1, #1
	ldr r0, [sp, #0x28]
	adds r2, r1, #0
	bl ov17_0224AC78
	movs r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5, #0x10]
	adds r0, r0, #1
	strb r0, [r5, #0x10]
	b _0224B85E
_0224B858:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B85E:
	cmp r6, #0
	bne _0224B866
	movs r6, #0x64
	b _0224B868
_0224B866:
	movs r6, #0x28
_0224B868:
	ldr r0, [sp, #0x24]
	lsls r1, r0, #9
	movs r0, #0x19
	lsls r0, r0, #0xa
	cmp r1, r0
	ble _0224B876
	adds r1, r0, #0
_0224B876:
	asrs r0, r1, #8
	adds r6, r6, r0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	str r0, [sp]
	subs r1, r1, r0
	ldr r7, [r5, #4]
	ldr r0, [r5, #0xc]
	subs r5, r0, r7
	adds r0, r1, #0
	muls r0, r6, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	str r0, [sp, #8]
	adds r0, r5, #0
	muls r0, r6, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r2, [sp]
	ldr r1, [sp, #8]
	adds r2, r2, r1
	asrs r1, r2, #7
	lsrs r1, r1, #0x18
	adds r1, r2, r1
	asrs r1, r1, #8
	str r1, [r4, #4]
	adds r1, r7, r0
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r2, r0, #8
	str r2, [r4, #8]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl FUN_0225B100
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224B8C8: .4byte 0xFFFFF600
_0224B8CC: .4byte 0xFFFFFB00
	thumb_func_end ov17_0224B7BC

	thumb_func_start ov17_0224B8D0
ov17_0224B8D0: @ 0x0224B8D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0x10]
	adds r6, r2, #0
	str r3, [sp]
	ldr r5, [sp, #0x30]
	cmp r0, #0
	beq _0224B8F0
	cmp r0, #1
	beq _0224B948
	cmp r0, #2
	beq _0224B99A
	b _0224B9DE
_0224B8F0:
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x34]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [r6, #8]
	lsls r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r4]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r4, #0xc]
	movs r0, #0x1e
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E2178
	adds r7, r0, #0
	movs r0, #1
	lsls r0, r0, #0xc
	adds r1, r7, #0
	blx FUN_020E1F6C
	ldr r1, [sp, #0x34]
	str r0, [r4, #0x14]
	movs r0, #1
	lsls r0, r0, #0xc
	subs r1, r1, r7
	blx FUN_020E1F6C
	str r0, [r4, #0x18]
	cmp r5, #0
	bne _0224B942
	ldr r1, [r4, #0x14]
	movs r0, #0
	mvns r0, r0
	adds r2, r1, #0
	muls r2, r0, r2
	str r2, [r4, #0x14]
	ldr r1, [r4, #0x18]
	muls r0, r1, r0
	str r0, [r4, #0x18]
_0224B942:
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_0224B948:
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _0224B964
	ldr r1, [r4, #0x14]
	movs r0, #0xc8
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r1, [r4, #0xc]
	adds r0, r1, r0
	str r0, [r4, #0xc]
	movs r0, #0x20
	b _0224B96E
_0224B964:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	adds r0, r1, r0
	str r0, [r4, #0xc]
	movs r0, #0x10
_0224B96E:
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r7, [r4, #4]
	ldr r0, [r4, #0xc]
	subs r0, r0, r7
	blx FUN_020D4070
	ldr r1, [sp, #8]
	cmp r0, r1
	blt _0224B9E4
	cmp r5, #1
	bne _0224B98C
	adds r0, r1, #0
	adds r0, r7, r0
	b _0224B990
_0224B98C:
	adds r0, r1, #0
	subs r0, r7, r0
_0224B990:
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	b _0224B9E4
_0224B99A:
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _0224B9B0
	ldr r1, [r4, #0x18]
	movs r0, #0xc8
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r1, [r4, #0xc]
	b _0224B9B4
_0224B9B0:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
_0224B9B4:
	subs r0, r1, r0
	str r0, [r4, #0xc]
	cmp r5, #1
	bne _0224B9C4
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	ble _0224B9D0
_0224B9C4:
	cmp r5, #0
	bne _0224B9E4
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	blt _0224B9E4
_0224B9D0:
	str r1, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	movs r0, #1
	str r0, [sp, #0xc]
	b _0224B9E4
_0224B9DE:
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B9E4:
	ldr r0, [sp]
	cmp r0, #0
	bne _0224B9EE
	movs r5, #0x64
	b _0224B9F0
_0224B9EE:
	movs r5, #0x28
_0224B9F0:
	ldr r0, [sp, #0x2c]
	lsls r1, r0, #9
	movs r0, #0x19
	lsls r0, r0, #0xa
	cmp r1, r0
	ble _0224B9FE
	adds r1, r0, #0
_0224B9FE:
	asrs r0, r1, #8
	adds r5, r5, r0
	ldr r0, [r4]
	ldr r1, [r4, #8]
	str r0, [sp, #4]
	subs r1, r1, r0
	ldr r7, [r4, #4]
	ldr r0, [r4, #0xc]
	subs r4, r0, r7
	adds r0, r1, #0
	muls r0, r5, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	str r0, [sp, #0x10]
	adds r0, r4, #0
	muls r0, r5, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x10]
	adds r2, r2, r1
	asrs r1, r2, #7
	lsrs r1, r1, #0x18
	adds r1, r2, r1
	asrs r1, r1, #8
	str r1, [r6, #4]
	adds r1, r7, r0
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r2, r0, #8
	str r2, [r6, #8]
	ldr r0, [r6]
	ldr r1, [r6, #4]
	bl FUN_0225B100
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224B8D0

	thumb_func_start ov17_0224BA50
ov17_0224BA50: @ 0x0224BA50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldrb r0, [r5, #0x10]
	adds r4, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x38]
	cmp r0, #0
	beq _0224BA70
	cmp r0, #1
	beq _0224BAF0
	cmp r0, #2
	beq _0224BB62
	b _0224BBC4
_0224BA70:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x3c]
	lsls r0, r0, #8
	str r0, [r5]
	ldr r0, [r4, #8]
	lsls r0, r0, #8
	str r0, [r5, #4]
	ldr r0, [r5]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	movs r0, #0x1e
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E2178
	ldr r1, [sp, #0x3c]
	str r0, [sp, #0x14]
	subs r7, r1, r0
	ldr r0, _0224BC44 @ =0x00038E00
	ldr r1, [sp, #0x14]
	blx FUN_020E1F6C
	str r0, [r5, #0x18]
	ldr r0, _0224BC48 @ =0xFFFC7200
	adds r1, r7, #0
	blx FUN_020E1F6C
	str r0, [r5, #0x1c]
	movs r0, #1
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xc
	blx FUN_020E1F6C
	str r0, [r5, #0x20]
	movs r0, #1
	lsls r0, r0, #0xc
	adds r1, r7, #0
	blx FUN_020E1F6C
	rsbs r0, r0, #0
	str r0, [r5, #0x24]
	cmp r6, #1
	bne _0224BAEA
	ldr r1, [r5, #0x18]
	movs r0, #0
	mvns r0, r0
	adds r2, r1, #0
	muls r2, r0, r2
	str r2, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	adds r2, r1, #0
	muls r2, r0, r2
	str r2, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	adds r2, r1, #0
	muls r2, r0, r2
	str r2, [r5, #0x20]
	ldr r1, [r5, #0x24]
	muls r0, r1, r0
	str r0, [r5, #0x24]
_0224BAEA:
	ldrb r0, [r5, #0x10]
	adds r0, r0, #1
	strb r0, [r5, #0x10]
_0224BAF0:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0224BB1C
	ldr r1, [r5, #0x20]
	movs r0, #0xc8
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r1, [r5, #8]
	adds r0, r1, r0
	str r0, [r5, #8]
	movs r0, #0x20
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x18]
	movs r0, #0xc8
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r1, [r5, #0x14]
	b _0224BB2C
_0224BB1C:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x20]
	adds r0, r1, r0
	str r0, [r5, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
_0224BB2C:
	adds r0, r1, r0
	str r0, [r5, #0x14]
	ldr r0, [sp, #0xc]
	ldr r7, [r5]
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	subs r0, r0, r7
	blx FUN_020D4070
	ldr r1, [sp, #8]
	cmp r0, r1
	blt _0224BBCA
	cmp r6, #1
	bne _0224BB50
	adds r0, r1, #0
	subs r0, r7, r0
	b _0224BB54
_0224BB50:
	adds r0, r1, #0
	adds r0, r7, r0
_0224BB54:
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	adds r0, r0, #1
	strb r0, [r5, #0x10]
	b _0224BBCA
_0224BB62:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0224BB8A
	ldr r1, [r5, #0x24]
	movs r0, #0xc8
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r1, [r5, #8]
	adds r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r5, #0x1c]
	movs r0, #0xc8
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r1, [r5, #0x14]
	b _0224BB96
_0224BB8A:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x24]
	adds r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x1c]
_0224BB96:
	adds r0, r1, r0
	str r0, [r5, #0x14]
	cmp r6, #1
	bne _0224BBA6
	ldr r1, [r5]
	ldr r0, [r5, #8]
	cmp r0, r1
	bge _0224BBB2
_0224BBA6:
	cmp r6, #0
	bne _0224BBCA
	ldr r1, [r5]
	ldr r0, [r5, #8]
	cmp r0, r1
	bgt _0224BBCA
_0224BBB2:
	str r1, [r5, #8]
	movs r0, #0
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0x10]
	adds r0, r0, #1
	strb r0, [r5, #0x10]
	movs r0, #1
	str r0, [sp, #0x10]
	b _0224BBCA
_0224BBC4:
	add sp, #0x1c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0224BBCA:
	ldr r1, [r5, #0x14]
	ldr r0, [r4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	bl FUN_0225B0E4
	ldr r0, [sp]
	cmp r0, #0
	bne _0224BBE0
	movs r6, #0x64
	b _0224BBE2
_0224BBE0:
	movs r6, #0x28
_0224BBE2:
	ldr r0, [sp, #0x34]
	lsls r1, r0, #9
	movs r0, #0x19
	lsls r0, r0, #0xa
	cmp r1, r0
	ble _0224BBF0
	adds r1, r0, #0
_0224BBF0:
	asrs r0, r1, #8
	adds r6, r6, r0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	str r0, [sp, #4]
	subs r1, r1, r0
	ldr r7, [r5, #4]
	ldr r0, [r5, #0xc]
	subs r5, r0, r7
	adds r0, r1, #0
	muls r0, r6, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	str r0, [sp, #0x18]
	adds r0, r5, #0
	muls r0, r6, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x18]
	adds r2, r2, r1
	asrs r1, r2, #7
	lsrs r1, r1, #0x18
	adds r1, r2, r1
	asrs r1, r1, #8
	str r1, [r4, #4]
	adds r1, r7, r0
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r2, r0, #8
	str r2, [r4, #8]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl FUN_0225B100
	ldr r0, [sp, #0x10]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224BC44: .4byte 0x00038E00
_0224BC48: .4byte 0xFFFC7200
	thumb_func_end ov17_0224BA50

	thumb_func_start ov17_0224BC4C
ov17_0224BC4C: @ 0x0224BC4C
	ldr r1, _0224BC64 @ =0x00001BBC
	movs r2, #0
	adds r3, r0, r1
	movs r0, #4
_0224BC54:
	ldrb r1, [r3]
	adds r2, r2, #1
	bics r1, r0
	strb r1, [r3]
	adds r3, #0xa
	cmp r2, #8
	blt _0224BC54
	bx lr
	.align 2, 0
_0224BC64: .4byte 0x00001BBC
	thumb_func_end ov17_0224BC4C

	thumb_func_start ov17_0224BC68
ov17_0224BC68: @ 0x0224BC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0224BCEC @ =0x0000108C
	adds r6, r1, #0
	adds r7, r5, r0
	movs r0, #0x28
	muls r0, r6, r0
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	str r2, [sp]
	cmp r0, #0
	beq _0224BC86
	bl FUN_02022974
_0224BC86:
	ldr r0, _0224BCF0 @ =0x00001088
	movs r2, #0x28
	adds r4, r6, #0
	adds r0, r5, r0
	muls r4, r2, r4
	str r0, [sp, #8]
	adds r0, r0, r4
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, [sp, #8]
	adds r1, r5, r4
	str r5, [r0, r4]
	ldr r0, _0224BCF4 @ =0x000010A2
	ldr r2, [sp]
	strb r6, [r1, r0]
	subs r3, r0, #1
	strb r2, [r1, r3]
	lsls r2, r6, #2
	adds r2, r5, r2
	ldr r3, [r2, #0x5c]
	adds r2, r0, #0
	subs r2, #0x12
	str r3, [r1, r2]
	adds r2, r5, #0
	adds r2, #0x18
	lsls r3, r6, #4
	adds r3, r2, r3
	adds r2, r0, #0
	adds r0, #0xa
	subs r2, #0xe
	str r3, [r1, r2]
	adds r0, r5, r0
	ldrb r2, [r0, r4]
	movs r1, #4
	orrs r1, r2
	strb r1, [r0, r4]
	ldrb r2, [r0, r4]
	movs r1, #8
	orrs r1, r2
	strb r1, [r0, r4]
	ldr r1, [sp, #8]
	ldr r0, _0224BCF8 @ =ov17_0224BE50
	ldr r2, _0224BCFC @ =0x00009858
	adds r1, r1, r4
	bl FUN_0200D9E8
	ldr r1, [sp, #4]
	str r0, [r7, r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224BCEC: .4byte 0x0000108C
_0224BCF0: .4byte 0x00001088
_0224BCF4: .4byte 0x000010A2
_0224BCF8: .4byte ov17_0224BE50
_0224BCFC: .4byte 0x00009858
	thumb_func_end ov17_0224BC68

	thumb_func_start ov17_0224BD00
ov17_0224BD00: @ 0x0224BD00
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r7, _0224BD24 @ =0x0000108C
	adds r5, r0, #0
	adds r6, r4, #0
_0224BD0A:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224BD18
	bl FUN_0200DA58
	ldr r0, _0224BD24 @ =0x0000108C
	str r6, [r5, r0]
_0224BD18:
	adds r4, r4, #1
	adds r5, #0x28
	cmp r4, #4
	blt _0224BD0A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BD24: .4byte 0x0000108C
	thumb_func_end ov17_0224BD00

	thumb_func_start ov17_0224BD28
ov17_0224BD28: @ 0x0224BD28
	push {r3, r4, r5, lr}
	movs r3, #0x28
	muls r3, r1, r3
	ldr r1, _0224BDEC @ =0x0000108C
	adds r4, r0, r3
	ldr r5, [r4, r1]
	cmp r5, #0
	beq _0224BDE8
	cmp r2, #5
	bhi _0224BDE4
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0224BD48: @ jump table
	.2byte _0224BD54 - _0224BD48 - 2 @ case 0
	.2byte _0224BD6A - _0224BD48 - 2 @ case 1
	.2byte _0224BD78 - _0224BD48 - 2 @ case 2
	.2byte _0224BD86 - _0224BD48 - 2 @ case 3
	.2byte _0224BDA4 - _0224BD48 - 2 @ case 4
	.2byte _0224BDD2 - _0224BD48 - 2 @ case 5
_0224BD54:
	adds r1, #0x20
	adds r2, r0, r1
	ldrb r1, [r2, r3]
	movs r0, #0x20
	bics r1, r0
	strb r1, [r2, r3]
	ldrb r1, [r2, r3]
	movs r0, #0x10
	bics r1, r0
	strb r1, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BD6A:
	adds r1, #0x20
	adds r2, r0, r1
	ldrb r1, [r2, r3]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BD78:
	adds r1, #0x20
	adds r2, r0, r1
	ldrb r1, [r2, r3]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BD86:
	adds r1, #0x20
	adds r0, r0, r1
	ldrb r2, [r0, r3]
	movs r1, #2
	bics r2, r1
	strb r2, [r0, r3]
	ldrb r2, [r0, r3]
	movs r1, #1
	bics r2, r1
	strb r2, [r0, r3]
	ldrb r2, [r0, r3]
	movs r1, #4
	orrs r1, r2
	strb r1, [r0, r3]
	pop {r3, r4, r5, pc}
_0224BDA4:
	adds r2, r1, #0
	adds r2, #0x20
	ldrb r2, [r4, r2]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bne _0224BDE8
	adds r2, r1, #0
	adds r2, #0x20
	adds r5, r0, r2
	ldrb r2, [r5, r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r5, r3]
	ldrb r0, [r5, r3]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bne _0224BDE8
	adds r0, r1, #0
	adds r0, #0x10
	ldr r0, [r4, r0]
	adds r1, #0x1c
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0224BDD2:
	adds r1, #0x20
	adds r2, r0, r1
	ldrb r1, [r2, r3]
	movs r0, #1
	bics r1, r0
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, r3]
	pop {r3, r4, r5, pc}
_0224BDE4:
	bl FUN_02022974
_0224BDE8:
	pop {r3, r4, r5, pc}
	nop
_0224BDEC: .4byte 0x0000108C
	thumb_func_end ov17_0224BD28

	thumb_func_start ov17_0224BDF0
ov17_0224BDF0: @ 0x0224BDF0
	movs r2, #0x28
	muls r2, r1, r2
	ldr r1, _0224BE20 @ =0x0000108C
	adds r2, r0, r2
	ldr r0, [r2, r1]
	cmp r0, #0
	bne _0224BE02
	movs r0, #1
	bx lr
_0224BE02:
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r2, r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	cmp r0, #1
	beq _0224BE18
	adds r1, #0x15
	ldrb r0, [r2, r1]
	cmp r0, #0
	bne _0224BE1C
_0224BE18:
	movs r0, #1
	bx lr
_0224BE1C:
	movs r0, #0
	bx lr
	.align 2, 0
_0224BE20: .4byte 0x0000108C
	thumb_func_end ov17_0224BDF0

	thumb_func_start ov17_0224BE24
ov17_0224BE24: @ 0x0224BE24
	movs r2, #0x28
	muls r2, r1, r2
	adds r2, r0, r2
	ldr r0, _0224BE4C @ =0x0000108C
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0224BE36
	movs r0, #1
	bx lr
_0224BE36:
	adds r0, #0x20
	ldrb r0, [r2, r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224BE46
	movs r0, #1
	bx lr
_0224BE46:
	movs r0, #0
	bx lr
	nop
_0224BE4C: .4byte 0x0000108C
	thumb_func_end ov17_0224BE24

	thumb_func_start ov17_0224BE50
ov17_0224BE50: @ 0x0224BE50
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov17_0224BE64
	adds r0, r4, #0
	bl ov17_0224BF58
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_0224BE50

	thumb_func_start ov17_0224BE64
ov17_0224BE64: @ 0x0224BE64
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	cmp r0, #1
	beq _0224BF40
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _0224BF40
	ldr r5, [r4]
	ldr r1, _0224BF44 @ =0x00001154
	ldr r2, _0224BF48 @ =0x00002710
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	movs r3, #0
	blx FUN_020E1F1C
	ldr r2, _0224BF4C @ =0x00000B04
	movs r3, #0
	ldr r7, [r5, r2]
	adds r2, r7, #0
	blx FUN_020E1EE0
	adds r5, r0, #0
	adds r6, r1, #0
	lsrs r7, r7, #1
	lsrs r0, r5, #0x13
	lsls r1, r6, #0xd
	orrs r1, r0
	lsls r0, r5, #0xd
	adds r2, r7, #0
	movs r3, #0
	blx FUN_020E1ED4
	adds r2, r1, #0
	movs r1, #1
	subs r3, r5, r7
	ldr r3, _0224BF50 @ =0x00000000
	sbcs r6, r3
	blo _0224BEC0
	lsls r3, r1, #0xe
	movs r1, #0
	subs r0, r3, r0
_0224BEC0:
	adds r2, r4, #0
	adds r2, #0x24
	ldrb r2, [r2]
	ldr r3, _0224BF54 @ =0xFFFD8000
	movs r5, #0x40
	adds r0, r0, r3
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1f
	bics r0, r5
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	lsls r5, r5, #0x1f
	lsrs r5, r5, #0x19
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0x24
	strb r5, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224BF2A
	ldr r0, [r4, #0x10]
	cmp r0, r3
	beq _0224BF06
	cmp r2, #0
	bne _0224BF2A
	cmp r1, #1
	bne _0224BF2A
_0224BF06:
	ldr r0, _0224BF54 @ =0xFFFD8000
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	movs r0, #0x10
	bics r1, r0
	adds r0, r4, #0
	adds r0, #0x24
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	movs r0, #0x20
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x24
	strb r1, [r0]
_0224BF2A:
	ldr r1, [r4, #0x10]
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	ldr r0, [r4, #0xc]
	str r1, [r0, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl ov17_0224B09C
_0224BF40:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BF44: .4byte 0x00001154
_0224BF48: .4byte 0x00002710
_0224BF4C: .4byte 0x00000B04
_0224BF50: .4byte 0x00000000
_0224BF54: .4byte 0xFFFD8000
	thumb_func_end ov17_0224BE64

	thumb_func_start ov17_0224BF58
ov17_0224BF58: @ 0x0224BF58
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, [r4]
	ldr r1, _0224C0B0 @ =0x00001154
	movs r3, #0
	ldr r0, [r2, r1]
	adds r1, r1, #4
	ldr r1, [r2, r1]
	ldr r2, _0224C0B4 @ =0x00002710
	ldr r6, [r4, #0x14]
	blx FUN_020E1F1C
	ldr r3, [r4]
	ldr r2, _0224C0B8 @ =0x00000B04
	ldr r2, [r3, r2]
	movs r3, #0
	lsls r2, r2, #1
	blx FUN_020E1EE0
	movs r2, #0x5a
	lsls r2, r2, #2
	movs r3, #0
	blx FUN_020E1F1C
	ldr r3, [r4]
	ldr r2, _0224C0B8 @ =0x00000B04
	ldr r2, [r3, r2]
	movs r3, #0
	lsls r2, r2, #1
	blx FUN_020E1ED4
	lsls r5, r0, #8
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	lsls r1, r1, #8
	str r5, [r4, #0x14]
	adds r0, #0x24
	ldrb r0, [r0]
	orrs r1, r2
	lsls r2, r0, #0x1e
	lsrs r2, r2, #0x1f
	bne _0224C0AC
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224BFC6
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	movs r2, #8
	adds r6, r5, #0
	bics r0, r2
	adds r2, r4, #0
	adds r2, #0x24
	strb r0, [r2]
_0224BFC6:
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224C026
	movs r0, #0
	subs r2, r5, r6
	mov ip, r1
	mov r2, ip
	sbcs r2, r0
	bhs _0224BFE4
	adds r7, r6, r5
	b _0224BFE6
_0224BFE4:
	adds r7, r5, #0
_0224BFE6:
	ldr r3, [r4, #0x20]
	movs r0, #0
	adds r2, r0, #0
	adds r0, r3, #0
	eors r2, r1
	eors r0, r5
	orrs r0, r2
	beq _0224C016
	cmp r6, r3
	bhi _0224BFFE
	cmp r3, r7
	bls _0224C016
_0224BFFE:
	ldr r2, [r4, #0x20]
	movs r0, #0
	subs r2, r5, r2
	mov ip, r1
	mov r2, ip
	sbcs r2, r0
	blo _0224C0AC
	subs r2, r5, r6
	mov ip, r1
	mov r2, ip
	sbcs r2, r0
	bhs _0224C0AC
_0224C016:
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r2, [r0]
	movs r0, #4
	bics r2, r0
	adds r0, r4, #0
	adds r0, #0x24
	strb r2, [r0]
_0224C026:
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224C06C
	movs r2, #0
	movs r0, #0
	eors r2, r1
	eors r0, r5
	orrs r0, r2
	beq _0224C048
	movs r2, #0
	subs r0, r5, r6
	sbcs r1, r2
	bhs _0224C06C
_0224C048:
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r2, [r1]
	movs r1, #1
	movs r0, #0
	bics r2, r1
	adds r1, r4, #0
	adds r1, #0x24
	strb r2, [r1]
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r2, [r1]
	movs r1, #2
	orrs r2, r1
	adds r1, r4, #0
	adds r1, #0x24
	strb r2, [r1]
	str r0, [r4, #0x20]
_0224C06C:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0224C074
	b _0224C074
_0224C074:
	ldr r0, [r4, #0x14]
	movs r5, #3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	bl FUN_0201D1D4
	adds r1, r5, #0
	muls r1, r0, r1
	ldrb r2, [r4, #0x19]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	movs r1, #6
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _0224C0BC @ =0x022546F4
	asrs r0, r0, #0xc
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	subs r1, r0, r5
	ldr r0, [r4, #0xc]
	str r1, [r0, #4]
	ldr r2, [r4, #0xc]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl FUN_0225B100
_0224C0AC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C0B0: .4byte 0x00001154
_0224C0B4: .4byte 0x00002710
_0224C0B8: .4byte 0x00000B04
_0224C0BC: .4byte 0x022546F4
	thumb_func_end ov17_0224BF58

	thumb_func_start ov17_0224C0C0
ov17_0224C0C0: @ 0x0224C0C0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r4, r0, #0
	adds r5, r2, #0
	cmp r6, #0
	beq _0224C0D6
	cmp r5, #0
	bne _0224C0D6
	bl FUN_02022974
_0224C0D6:
	cmp r6, #6
	bls _0224C0DC
	b _0224C23C
_0224C0DC:
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224C0E8: @ jump table
	.2byte _0224C240 - _0224C0E8 - 2 @ case 0
	.2byte _0224C0F6 - _0224C0E8 - 2 @ case 1
	.2byte _0224C112 - _0224C0E8 - 2 @ case 2
	.2byte _0224C136 - _0224C0E8 - 2 @ case 3
	.2byte _0224C14C - _0224C0E8 - 2 @ case 4
	.2byte _0224C190 - _0224C0E8 - 2 @ case 5
	.2byte _0224C1C2 - _0224C0E8 - 2 @ case 6
_0224C0F6:
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r4, #0x9c
	adds r2, r0, #0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C112:
	movs r2, #0x12
	lsls r2, r2, #4
	ldr r3, [r4]
	adds r1, r2, #1
	ldrb r0, [r3, r2]
	adds r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl FUN_02095848
	adds r4, #0x9c
	adds r2, r0, #0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200BBA8
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C136:
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	str r3, [sp, #4]
	adds r4, #0x9c
	ldrb r2, [r5, #4]
	ldr r0, [r4]
	bl FUN_0200B60C
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C14C:
	ldrb r6, [r5]
	ldr r3, [r4]
	movs r0, #1
	lsls r2, r6, #2
	str r0, [sp]
	movs r0, #2
	adds r2, r3, r2
	adds r6, r3, r6
	movs r3, #0x42
	str r0, [sp, #4]
	adds r0, r4, #0
	lsls r3, r3, #2
	adds r0, #0x9c
	adds r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0]
	ldr r2, [r2]
	movs r1, #0
	bl FUN_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r4, #0x9c
	adds r2, r0, #0
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C190:
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200B5CC
	movs r0, #0
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	adds r4, #0x9c
	ldrb r2, [r5, #4]
	ldr r0, [r4]
	adds r3, r1, #0
	bl FUN_0200B60C
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C1C2:
	movs r2, #0x12
	lsls r2, r2, #4
	ldr r3, [r4]
	adds r1, r2, #1
	ldrb r0, [r3, r2]
	adds r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl FUN_02095848
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200BBA8
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r2, [r5, #4]
	ldr r0, [r0]
	adds r3, r1, #0
	bl FUN_0200B60C
	ldrb r6, [r5]
	ldr r3, [r4]
	movs r0, #1
	lsls r2, r6, #2
	str r0, [sp]
	movs r1, #2
	adds r2, r3, r2
	adds r6, r3, r6
	movs r3, #0x42
	adds r0, r4, #0
	str r1, [sp, #4]
	lsls r3, r3, #2
	adds r0, #0x9c
	adds r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0]
	ldr r2, [r2]
	bl FUN_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x14]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r4, #0x9c
	adds r2, r0, #0
	ldr r0, [r4]
	movs r1, #3
	bl FUN_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224C23C:
	bl FUN_02022974
_0224C240:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224C0C0

	thumb_func_start ov17_0224C244
ov17_0224C244: @ 0x0224C244
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [r5]
	ldr r0, _0224C2C0 @ =0x00000171
	adds r7, r2, #0
	ldrb r0, [r1, r0]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _0224C266
	ldr r0, _0224C2C4 @ =0x00001988
	ldr r0, [r1, r0]
	bl FUN_02027AC0
	adds r4, r0, #0
	b _0224C268
_0224C266:
	movs r4, #1
_0224C268:
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	adds r0, r5, #0
	bl ov17_0224C0C0
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x9c
	adds r1, #0xa0
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #0xff
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r0, r5, #0
	str r3, [sp, #8]
	adds r2, #0xa0
	ldr r2, [r2]
	adds r0, #0x78
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _0224C2C8 @ =0x00000AD4
	strb r0, [r5, r1]
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C2C0: .4byte 0x00000171
_0224C2C4: .4byte 0x00001988
_0224C2C8: .4byte 0x00000AD4
	thumb_func_end ov17_0224C244

	thumb_func_start ov17_0224C2CC
ov17_0224C2CC: @ 0x0224C2CC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #8
	blo _0224C2DE
	bl FUN_02022974
_0224C2DE:
	lsls r3, r4, #2
	ldr r2, _0224C2F8 @ =0x0225470C
	adds r0, r5, #0
	ldr r4, _0224C2FC @ =0x0225470E
	ldrh r2, [r2, r3]
	str r6, [sp]
	adds r5, #0x98
	ldrb r3, [r4, r3]
	ldr r1, [r5]
	bl ov17_0224C244
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0224C2F8: .4byte 0x0225470C
_0224C2FC: .4byte 0x0225470E
	thumb_func_end ov17_0224C2CC

	thumb_func_start ov17_0224C300
ov17_0224C300: @ 0x0224C300
	ldr r1, _0224C308 @ =0x00000AD4
	ldr r3, _0224C30C @ =FUN_0201D724
	ldrb r0, [r0, r1]
	bx r3
	.align 2, 0
_0224C308: .4byte 0x00000AD4
_0224C30C: .4byte FUN_0201D724
	thumb_func_end ov17_0224C300

	thumb_func_start ov17_0224C310
ov17_0224C310: @ 0x0224C310
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r3, _0224C358 @ =0x000080F1
	adds r5, r0, #0
	str r3, [sp, #8]
	movs r3, #0x4c
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224C35C @ =0x000080EE
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x4d
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0224C35C @ =0x000080EE
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0x4e
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224C358: .4byte 0x000080F1
_0224C35C: .4byte 0x000080EE
	thumb_func_end ov17_0224C310

	thumb_func_start ov17_0224C360
ov17_0224C360: @ 0x0224C360
	push {r4, lr}
	ldr r1, _0224C37C @ =0x000080F1
	adds r4, r0, #0
	bl FUN_0200D070
	ldr r1, _0224C380 @ =0x000080EE
	adds r0, r4, #0
	bl FUN_0200D090
	ldr r1, _0224C380 @ =0x000080EE
	adds r0, r4, #0
	bl FUN_0200D0A0
	pop {r4, pc}
	.align 2, 0
_0224C37C: .4byte 0x000080F1
_0224C380: .4byte 0x000080EE
	thumb_func_end ov17_0224C360

	thumb_func_start ov17_0224C384
ov17_0224C384: @ 0x0224C384
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224C396
	bl FUN_02022974
_0224C396:
	movs r0, #0x17
	movs r1, #0x10
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x10
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x21
	lsls r0, r0, #4
	str r4, [r5, r0]
	str r5, [r4, #8]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _0224C3D8 @ =0x022547FC
	bl FUN_0200CE6C
	str r0, [r4, #4]
	ldr r0, [r0]
	bl FUN_0200D324
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, _0224C3DC @ =ov17_0224C414
	ldr r2, _0224C3E0 @ =0x00009C4F
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224C3D8: .4byte 0x022547FC
_0224C3DC: .4byte ov17_0224C414
_0224C3E0: .4byte 0x00009C4F
	thumb_func_end ov17_0224C384

	thumb_func_start ov17_0224C3E4
ov17_0224C3E4: @ 0x0224C3E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl FUN_0200DA58
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl FUN_0200D0F4
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x21
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov17_0224C3E4

	thumb_func_start ov17_0224C414
ov17_0224C414: @ 0x0224C414
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _0224C422
	cmp r0, #1
	beq _0224C426
	cmp r0, #2
	b _0224C426
_0224C422:
	adds r0, r0, #1
	strb r0, [r1, #0xc]
_0224C426:
	ldr r0, [r1, #4]
	ldr r3, _0224C430 @ =FUN_0200D324
	ldr r0, [r0]
	bx r3
	nop
_0224C430: .4byte FUN_0200D324
	thumb_func_end ov17_0224C414

	thumb_func_start ov17_0224C434
ov17_0224C434: @ 0x0224C434
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r3, #0
	movs r1, #3
	adds r7, r2, #0
	bl ov17_0223F0BC
	adds r6, r0, #0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r1, r7, #0
	blx FUN_020E2178
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #8
	subs r4, r3, r6
	lsrs r2, r4, #0x1f
	adds r2, r4, r2
	subs r1, r1, #1
	asrs r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	asrs r1, r1, #0x10
	movs r2, #0xb0
	lsls r3, r3, #0xc
	bl FUN_0200D500
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_0200D3F4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0224C434

	thumb_func_start ov17_0224C47C
ov17_0224C47C: @ 0x0224C47C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0
	movs r3, #1
	ldr r0, [r5, #4]
	mvns r1, r1
	movs r2, #0xb0
	lsls r3, r3, #0x14
	bl FUN_0200D500
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_0200D3F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224C47C

	thumb_func_start ov17_0224C49C
ov17_0224C49C: @ 0x0224C49C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r3, #0
	adds r5, r0, #0
	adds r6, r1, #0
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #3
	bl ov17_0223F0BC
	adds r4, r0, #0
	adds r0, r6, #0
	ldr r1, [sp]
	muls r0, r4, r0
	blx FUN_020E2178
	adds r6, r0, #0
	cmp r7, #0
	bne _0224C4D6
	adds r0, r7, #0
	movs r1, #1
	bl ov17_0223F0BC
	adds r1, r0, #0
	ldr r0, _0224C53C @ =0x00002710
	muls r0, r4, r0
	blx FUN_020E1F6C
	adds r7, r0, #0
	b _0224C4E4
_0224C4D6:
	ldr r0, _0224C53C @ =0x00002710
	adds r1, r4, #0
	muls r1, r0, r1
	asrs r0, r1, #2
	lsrs r0, r0, #0x1d
	adds r0, r1, r0
	asrs r7, r0, #3
_0224C4E4:
	ldr r0, _0224C53C @ =0x00002710
	adds r1, r7, #0
	muls r0, r6, r0
	blx FUN_020E2178
	movs r0, #0xb4
	muls r0, r1, r0
	adds r1, r7, #0
	blx FUN_020E2178
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	movs r1, #0xa
	adds r2, r0, #0
	muls r2, r1, r2
	adds r1, #0xf6
	asrs r0, r2, #0xb
	subs r3, r1, r4
	lsrs r0, r0, #0x14
	lsrs r1, r3, #0x1f
	adds r1, r3, r1
	adds r0, r2, r0
	asrs r2, r0, #0xc
	movs r0, #0x90
	subs r2, r0, r2
	asrs r1, r1, #1
	adds r1, r6, r1
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	movs r3, #1
	ldr r0, [r5, #4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x14
	bl FUN_0200D500
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_0200D3F4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C53C: .4byte 0x00002710
	thumb_func_end ov17_0224C49C

	thumb_func_start ov17_0224C540
ov17_0224C540: @ 0x0224C540
	ldr r3, _0224C548 @ =FUN_0200D3F4
	ldr r0, [r0, #4]
	movs r1, #0
	bx r3
	.align 2, 0
_0224C548: .4byte FUN_0200D3F4
	thumb_func_end ov17_0224C540

	thumb_func_start ov17_0224C54C
ov17_0224C54C: @ 0x0224C54C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	movs r1, #3
	bl ov17_0223F0BC
	adds r4, r0, #0
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_0200D3F4
	movs r3, #1
	lsls r3, r3, #8
	subs r2, r3, r4
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	lsls r1, r1, #0xf
	ldr r0, [r5, #4]
	asrs r1, r1, #0x10
	movs r2, #0x90
	lsls r3, r3, #0xc
	bl FUN_0200D500
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224C54C

	thumb_func_start ov17_0224C57C
ov17_0224C57C: @ 0x0224C57C
	push {r3, r4}
	ldr r2, _0224C59C @ =0x022546C0
	add r1, sp, #0
	ldrb r3, [r2]
	add r4, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #1]
	strb r3, [r1, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	ldrb r0, [r4, r0]
	pop {r3, r4}
	bx lr
	nop
_0224C59C: .4byte 0x022546C0
	thumb_func_end ov17_0224C57C

	thumb_func_start ov17_0224C5A0
ov17_0224C5A0: @ 0x0224C5A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	adds r7, r2, #0
	cmp r4, #8
	blo _0224C5B2
	bl FUN_02022974
_0224C5B2:
	ldr r0, _0224C634 @ =0x00001C0D
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0224C62E
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x88
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200E060
	ldr r0, [r5, #0x74]
	movs r1, #1
	bl FUN_0201C3C0
	adds r0, r5, #0
	adds r0, #0x98
	ldr r1, _0224C638 @ =0x0225470C
	lsls r4, r4, #2
	ldrh r1, [r1, r4]
	ldr r0, [r0]
	bl FUN_0200B1EC
	ldr r1, _0224C63C @ =0x0225470E
	adds r6, r0, #0
	ldrb r1, [r1, r4]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov17_0224C0C0
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x9c
	adds r1, #0xa0
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0x88
	movs r1, #0xff
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r0, r5, #0
	str r3, [sp, #8]
	adds r2, #0xa0
	ldr r2, [r2]
	adds r0, #0x88
	movs r1, #1
	bl FUN_0201D738
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, _0224C634 @ =0x00001C0D
	movs r1, #1
	strb r1, [r5, r0]
_0224C62E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224C634: .4byte 0x00001C0D
_0224C638: .4byte 0x0225470C
_0224C63C: .4byte 0x0225470E
	thumb_func_end ov17_0224C5A0

	thumb_func_start ov17_0224C640
ov17_0224C640: @ 0x0224C640
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x88
	movs r1, #1
	bl FUN_0200E084
	ldr r0, [r4, #0x74]
	movs r1, #1
	bl FUN_0201C3C0
	ldr r0, _0224C65C @ =0x00001C0D
	movs r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_0224C65C: .4byte 0x00001C0D
	thumb_func_end ov17_0224C640

	thumb_func_start ov17_0224C660
ov17_0224C660: @ 0x0224C660
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0224C69C @ =0x00000B08
	ldrb r1, [r1, #4]
	ldr r3, [r5, r0]
	adds r6, r2, #0
	muls r1, r3, r1
	muls r6, r1, r6
	adds r1, r0, #4
	adds r0, #8
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	movs r4, #0
	adds r0, r1, r0
	muls r0, r2, r0
	adds r0, r1, r0
	ldr r1, _0224C6A0 @ =0x00002710
	blx FUN_020E2178
	adds r1, r4, #0
	adds r3, r6, r0
	ldr r0, _0224C6A4 @ =0x00001154
	adcs r4, r1
	ldr r2, [r5, r0]
	adds r0, r0, #4
	ldr r1, [r5, r0]
	subs r0, r3, r2
	sbcs r4, r1
	adds r1, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224C69C: .4byte 0x00000B08
_0224C6A0: .4byte 0x00002710
_0224C6A4: .4byte 0x00001154
	thumb_func_end ov17_0224C660

	thumb_func_start ov17_0224C6A8
ov17_0224C6A8: @ 0x0224C6A8
	ldr r3, _0224C6AC @ =ov17_0224C660
	bx r3
	.align 2, 0
_0224C6AC: .4byte ov17_0224C660
	thumb_func_end ov17_0224C6A8

	thumb_func_start ov17_0224C6B0
ov17_0224C6B0: @ 0x0224C6B0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r0, #0
	strb r0, [r7]
	movs r0, #0x17
	movs r1, #0x2c
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x2c
	adds r4, r0, #0
	blx FUN_020C4CF4
	adds r1, r6, #0
	adds r1, #0x18
	lsls r0, r5, #4
	str r6, [r4]
	adds r0, r1, r0
	str r0, [r4, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0x18
	muls r0, r5, r0
	adds r0, r1, r0
	str r0, [r4, #8]
	movs r0, #0xad
	str r7, [r4, #0xc]
	adds r1, r6, r5
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	ldr r2, _0224C70C @ =0x00009C40
	cmp r0, #1
	bne _0224C702
	ldr r0, _0224C710 @ =ov17_0224C718
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_0224C702:
	ldr r0, _0224C714 @ =ov17_0224C7B8
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224C70C: .4byte 0x00009C40
_0224C710: .4byte ov17_0224C718
_0224C714: .4byte ov17_0224C7B8
	thumb_func_end ov17_0224C6B0

	thumb_func_start ov17_0224C718
ov17_0224C718: @ 0x0224C718
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C72A
	cmp r0, #1
	beq _0224C74A
	b _0224C79A
_0224C72A:
	ldr r0, [r4, #8]
	movs r1, #1
	movs r2, #0
	bl ov17_0224AC78
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	str r0, [r4, #0x18]
	movs r0, #5
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_0224C74A:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	subs r0, r1, r0
	str r0, [r4, #0x18]
	movs r0, #2
	ldr r1, [r4, #0x14]
	lsls r0, r0, #8
	subs r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r0, r1
	blt _0224C77E
	str r1, [r4, #0x18]
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	cmp r0, #1
	bls _0224C77A
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	b _0224C77E
_0224C77A:
	movs r0, #0
	strb r0, [r4, #0x10]
_0224C77E:
	ldr r1, [r4, #0x18]
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r2, [r4, #4]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl FUN_0225B100
	pop {r3, r4, r5, pc}
_0224C79A:
	ldr r0, [r4, #0xc]
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4, #8]
	adds r2, r1, #0
	bl ov17_0224AC78
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_0224C718

	thumb_func_start ov17_0224C7B8
ov17_0224C7B8: @ 0x0224C7B8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C7CA
	cmp r0, #1
	beq _0224C7DA
	b _0224C834
_0224C7CA:
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	lsls r0, r0, #8
	str r0, [r4, #0x28]
	str r0, [r4, #0x24]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_0224C7DA:
	ldr r0, [r4, #0x20]
	bl FUN_0201D2B8
	lsls r1, r0, #2
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	movs r1, #0x32
	ldr r2, [r4, #0x20]
	lsls r1, r1, #0xc
	adds r1, r2, r1
	str r1, [r4, #0x20]
	asrs r2, r1, #0xc
	movs r1, #0x5a
	lsls r1, r1, #2
	asrs r0, r0, #0xc
	cmp r2, r1
	blt _0224C816
	ldrb r1, [r4, #0x11]
	adds r1, r1, #1
	strb r1, [r4, #0x11]
	ldrb r1, [r4, #0x11]
	cmp r1, #5
	bls _0224C816
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x24]
	ldrb r1, [r4, #0x10]
	movs r0, #0
	adds r1, r1, #1
	strb r1, [r4, #0x10]
_0224C816:
	ldr r2, [r4, #0x24]
	asrs r1, r2, #7
	lsrs r1, r1, #0x18
	adds r1, r2, r1
	asrs r1, r1, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	str r1, [r0, #4]
	ldr r2, [r4, #4]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl FUN_0225B100
	pop {r3, r4, r5, pc}
_0224C834:
	ldr r0, [r4, #0xc]
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224C7B8

	thumb_func_start ov17_0224C848
ov17_0224C848: @ 0x0224C848
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224C848

	thumb_func_start ov17_0224C84C
ov17_0224C84C: @ 0x0224C84C
	push {r3, lr}
	ldr r0, _0224C860 @ =0x04000050
	movs r3, #0
	movs r1, #1
	movs r2, #0x3e
	str r3, [sp]
	blx FUN_020BF55C
	pop {r3, pc}
	nop
_0224C860: .4byte 0x04000050
	thumb_func_end ov17_0224C84C

	thumb_func_start ov17_0224C864
ov17_0224C864: @ 0x0224C864
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xa4
	adds r5, r1, #0
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02003164
	ldr r3, _0224C890 @ =0x022546DC
	lsls r5, r5, #2
	ldrh r1, [r3, r5]
	adds r3, r3, r5
	ldr r2, _0224C894 @ =0x00001FE3
	str r1, [sp]
	ldrh r3, [r3, #2]
	ldr r1, _0224C898 @ =0x00001128
	lsls r3, r3, #0x18
	ldr r1, [r4, r1]
	lsrs r3, r3, #0x18
	bl FUN_020039F8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224C890: .4byte 0x022546DC
_0224C894: .4byte 0x00001FE3
_0224C898: .4byte 0x00001128
	thumb_func_end ov17_0224C864

	thumb_func_start ov17_0224C89C
ov17_0224C89C: @ 0x0224C89C
	push {r3, lr}
	ldrb r2, [r1, #7]
	cmp r2, #0
	bne _0224C8E4
	ldrb r2, [r1, #4]
	cmp r2, #0
	beq _0224C8B2
	cmp r2, #1
	beq _0224C8B2
	cmp r2, #2
	b _0224C8DE
_0224C8B2:
	ldrb r2, [r1, #3]
	cmp r2, #4
	bhi _0224C8E0
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0224C8C4: @ jump table
	.2byte _0224C8E0 - _0224C8C4 - 2 @ case 0
	.2byte _0224C8CE - _0224C8C4 - 2 @ case 1
	.2byte _0224C8D2 - _0224C8C4 - 2 @ case 2
	.2byte _0224C8D6 - _0224C8C4 - 2 @ case 3
	.2byte _0224C8DA - _0224C8C4 - 2 @ case 4
_0224C8CE:
	movs r1, #1
	b _0224C8E0
_0224C8D2:
	movs r1, #2
	b _0224C8E0
_0224C8D6:
	movs r1, #3
	b _0224C8E0
_0224C8DA:
	movs r1, #4
	b _0224C8E0
_0224C8DE:
	movs r1, #5
_0224C8E0:
	bl ov17_0224C864
_0224C8E4:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224C89C

	thumb_func_start ov17_0224C8E8
ov17_0224C8E8: @ 0x0224C8E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	ldr r1, _0224C97C @ =0x00000B04
	str r0, [sp]
	ldr r0, [r0, r1]
	ldr r5, _0224C980 @ =0x04000280
	lsrs r0, r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, _0224C984 @ =0x00001BBC
	adds r6, r0, #0
	adds r7, r0, r1
	lsrs r4, r5, #0xb
_0224C908:
	ldrb r0, [r7]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224C968
	ldr r1, [sp]
	ldr r0, _0224C988 @ =0x00000B1B
	ldrb r0, [r1, r0]
	movs r1, #4
	bl ov17_0223F0BC
	ldr r1, _0224C98C @ =0x00001BBA
	lsrs r2, r0, #0x1f
	adds r2, r0, r2
	ldrb r1, [r6, r1]
	asrs r0, r2, #1
	adds r0, r1, r0
	ldr r1, [sp, #8]
	muls r0, r1, r0
	movs r1, #0
	strh r1, [r5]
	ldr r1, _0224C990 @ =0x04000290
	str r0, [r1]
	ldr r1, _0224C994 @ =0x00002710
	ldr r0, _0224C998 @ =0x04000298
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
_0224C940:
	ldrh r0, [r5]
	tst r0, r4
	bne _0224C940
	ldr r0, _0224C99C @ =0x040002A0
	ldr r1, [r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _0224C968
	ldr r0, [sp]
	ldr r2, _0224C9A0 @ =0x00001BB4
	adds r1, r0, #0
	adds r3, r1, r2
	ldr r1, [sp, #0xc]
	movs r2, #0xa
	muls r2, r1, r2
	adds r1, r3, r2
	bl ov17_0224C89C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224C968:
	ldr r0, [sp, #0xc]
	adds r7, #0xa
	adds r0, r0, #1
	adds r6, #0xa
	str r0, [sp, #0xc]
	cmp r0, #8
	blt _0224C908
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C97C: .4byte 0x00000B04
_0224C980: .4byte 0x04000280
_0224C984: .4byte 0x00001BBC
_0224C988: .4byte 0x00000B1B
_0224C98C: .4byte 0x00001BBA
_0224C990: .4byte 0x04000290
_0224C994: .4byte 0x00002710
_0224C998: .4byte 0x04000298
_0224C99C: .4byte 0x040002A0
_0224C9A0: .4byte 0x00001BB4
	thumb_func_end ov17_0224C8E8

	thumb_func_start ov17_0224C9A4
ov17_0224C9A4: @ 0x0224C9A4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224C9B6
	bl FUN_02022974
_0224C9B6:
	movs r0, #0x81
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, _0224C9CC @ =ov17_0224CA28
	ldr r2, _0224C9D0 @ =0x00009C40
	adds r1, r5, #0
	str r4, [r5]
	bl FUN_0200D9E8
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224C9CC: .4byte ov17_0224CA28
_0224C9D0: .4byte 0x00009C40
	thumb_func_end ov17_0224C9A4

	thumb_func_start ov17_0224C9D4
ov17_0224C9D4: @ 0x0224C9D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224C9EE
	bl FUN_0200DA58
	movs r0, #0x82
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_0224C9EE:
	pop {r4, pc}
	thumb_func_end ov17_0224C9D4

	thumb_func_start ov17_0224C9F0
ov17_0224C9F0: @ 0x0224C9F0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0224CA04
	bl FUN_02022974
_0224CA04:
	cmp r5, #0
	bne _0224CA0C
	movs r0, #0x40
	b _0224CA0E
_0224CA0C:
	movs r0, #0x30
_0224CA0E:
	strb r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0xa
	lsls r0, r0, #8
	strh r0, [r4, #8]
	ldr r0, _0224CA24 @ =0x000006F8
	bl FUN_02005748
	pop {r3, r4, r5, pc}
	nop
_0224CA24: .4byte 0x000006F8
	thumb_func_end ov17_0224C9F0

	thumb_func_start ov17_0224CA28
ov17_0224CA28: @ 0x0224CA28
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0224CA82
	ldr r0, [r4]
	movs r1, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_02003164
	ldrb r1, [r4, #0xa]
	lsls r3, r1, #1
	ldr r1, _0224CA88 @ =0x00007FFF
	adds r0, r0, r3
	str r1, [sp]
	ldr r2, [r4]
	ldr r1, _0224CA8C @ =0x00001128
	ldr r1, [r2, r1]
	movs r2, #0x10
	adds r1, r1, r3
	ldrh r3, [r4, #8]
	asrs r3, r3, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0200393C
	ldrh r1, [r4, #8]
	cmp r1, #0
	bne _0224CA6E
	movs r0, #0
	add sp, #4
	strb r0, [r4, #0xb]
	pop {r3, r4, pc}
_0224CA6E:
	movs r0, #1
	lsls r0, r0, #8
	cmp r1, r0
	bls _0224CA7E
	subs r0, r1, r0
	add sp, #4
	strh r0, [r4, #8]
	pop {r3, r4, pc}
_0224CA7E:
	movs r0, #0
	strh r0, [r4, #8]
_0224CA82:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224CA88: .4byte 0x00007FFF
_0224CA8C: .4byte 0x00001128
	thumb_func_end ov17_0224CA28

	thumb_func_start ov17_0224CA90
ov17_0224CA90: @ 0x0224CA90
	push {r3, r4, r5, lr}
	ldr r5, _0224CAB8 @ =0x0000113C
	adds r4, r0, #0
	str r2, [r4, r5]
	adds r0, r5, #4
	str r3, [r4, r0]
	adds r0, r5, #0
	ldr r2, [sp, #0x10]
	adds r0, #8
	str r2, [r4, r0]
	ldr r0, [sp, #0x14]
	adds r5, #0xc
	str r0, [r4, r5]
	ldr r0, [r4, #0xc]
	ldr r2, _0224CABC @ =ov17_0224CAC0
	adds r3, r4, #0
	bl FUN_020146F4
	pop {r3, r4, r5, pc}
	nop
_0224CAB8: .4byte 0x0000113C
_0224CABC: .4byte ov17_0224CAC0
	thumb_func_end ov17_0224CA90

	thumb_func_start ov17_0224CAC0
ov17_0224CAC0: @ 0x0224CAC0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02014764
	ldr r1, _0224CAFC @ =0x0000113C
	adds r1, r0, r1
	ldr r0, [r4, #0x20]
	ldr r2, [r1]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r2, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r2, [r1, #4]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r0, r2, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r2, [r1, #8]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	adds r0, r2, r0
	str r0, [r4, #0x30]
	ldr r1, [r1, #0xc]
	adds r0, r4, #0
	bl FUN_020147B0
	pop {r4, pc}
	nop
_0224CAFC: .4byte 0x0000113C
	thumb_func_end ov17_0224CAC0

	thumb_func_start ov17_0224CB00
ov17_0224CB00: @ 0x0224CB00
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _0224CB70 @ =0x00000B1B
	adds r5, r0, #0
	ldrb r3, [r5, r3]
	lsls r1, r1, #2
	lsls r4, r3, #2
	ldr r3, _0224CB74 @ =0x022546C4
	cmp r2, #0
	ldr r3, [r3, r4]
	ldr r4, [r3, r1]
	ldr r1, _0224CB78 @ =0xFFFFEB80
	ldr r3, _0224CB7C @ =0xFFFFBADC
	bne _0224CB46
	str r1, [sp]
	movs r1, #1
	lsls r1, r1, #0xc
	str r1, [sp, #4]
	movs r1, #0
	adds r2, r4, #0
	bl ov17_0224CA90
	ldr r0, _0224CB78 @ =0xFFFFEB80
	ldr r3, _0224CB7C @ =0xFFFFBADC
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl ov17_0224CA90
	add sp, #8
	pop {r3, r4, r5, pc}
_0224CB46:
	str r1, [sp]
	movs r1, #1
	lsls r1, r1, #0xc
	str r1, [sp, #4]
	movs r1, #2
	adds r2, r4, #0
	bl ov17_0224CA90
	ldr r0, _0224CB78 @ =0xFFFFEB80
	ldr r3, _0224CB7C @ =0xFFFFBADC
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #3
	adds r2, r4, #0
	bl ov17_0224CA90
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224CB70: .4byte 0x00000B1B
_0224CB74: .4byte 0x022546C4
_0224CB78: .4byte 0xFFFFEB80
_0224CB7C: .4byte 0xFFFFBADC
	thumb_func_end ov17_0224CB00

	thumb_func_start ov17_0224CB80
ov17_0224CB80: @ 0x0224CB80
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r1, #0
	ldr r1, _0224CD34 @ =0xFFFFEB80
	ldr r3, _0224CD38 @ =0xFFFFE764
	bne _0224CC0E
	str r1, [sp]
	movs r1, #1
	lsls r1, r1, #0xc
	str r1, [sp, #4]
	ldr r2, _0224CD3C @ =0xFFFFCD38
	movs r1, #5
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD3C @ =0xFFFFCD38
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #6
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD3C @ =0xFFFFCD38
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #7
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD40 @ =0x00005014
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #5
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD40 @ =0x00005014
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #6
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD40 @ =0x00005014
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #7
	bl ov17_0224CA90
	b _0224CCE4
_0224CC0E:
	str r1, [sp]
	movs r1, #1
	lsls r1, r1, #0xc
	str r1, [sp, #4]
	ldr r2, _0224CD44 @ =0xFFFFBD98
	movs r1, #8
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD44 @ =0xFFFFBD98
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #9
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD44 @ =0xFFFFBD98
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #0xa
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD44 @ =0xFFFFBD98
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #0xb
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD44 @ =0xFFFFBD98
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #0xc
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD48 @ =0x00004074
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #8
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD48 @ =0x00004074
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #9
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD48 @ =0x00004074
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #0xa
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD48 @ =0x00004074
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #0xb
	bl ov17_0224CA90
	ldr r0, _0224CD34 @ =0xFFFFEB80
	ldr r2, _0224CD48 @ =0x00004074
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r3, _0224CD38 @ =0xFFFFE764
	adds r0, r4, #0
	movs r1, #0xc
	bl ov17_0224CA90
_0224CCE4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0224CD4C @ =0x00007FFF
	ldr r1, _0224CD50 @ =0x00001FE3
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #8
	movs r3, #0x10
	bl ov17_0224CD84
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _0224CD4C @ =0x00007FFF
	adds r0, r4, #0
	str r2, [sp, #8]
	adds r0, #0xa4
	movs r1, #4
	ldr r0, [r0]
	lsrs r2, r2, #1
	subs r3, r1, #5
	bl FUN_02003178
	ldr r0, _0224CD54 @ =0x04000050
	movs r1, #0x3f
	movs r2, #0x10
	blx FUN_020BF578
	movs r2, #0xfa
	ldr r0, _0224CD58 @ =ov17_0224CD60
	adds r1, r4, #0
	lsls r2, r2, #2
	bl FUN_0200D9E8
	ldr r0, _0224CD5C @ =0x000006E5
	bl FUN_02005748
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_0224CD34: .4byte 0xFFFFEB80
_0224CD38: .4byte 0xFFFFE764
_0224CD3C: .4byte 0xFFFFCD38
_0224CD40: .4byte 0x00005014
_0224CD44: .4byte 0xFFFFBD98
_0224CD48: .4byte 0x00004074
_0224CD4C: .4byte 0x00007FFF
_0224CD50: .4byte 0x00001FE3
_0224CD54: .4byte 0x04000050
_0224CD58: .4byte ov17_0224CD60
_0224CD5C: .4byte 0x000006E5
	thumb_func_end ov17_0224CB80

	thumb_func_start ov17_0224CD60
ov17_0224CD60: @ 0x0224CD60
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r3, #0
	ldr r0, _0224CD80 @ =0x04000050
	movs r1, #1
	movs r2, #0x3e
	str r3, [sp]
	blx FUN_020BF55C
	adds r0, r4, #0
	bl FUN_0200DA58
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224CD80: .4byte 0x04000050
	thumb_func_end ov17_0224CD60

	thumb_func_start ov17_0224CD84
ov17_0224CD84: @ 0x0224CD84
	push {r3, r4, r5, lr}
	ldr r4, _0224CDB0 @ =0x00001128
	ldr r5, [sp, #0x10]
	adds r4, r0, r4
	lsls r0, r3, #8
	strh r0, [r4, #8]
	lsls r0, r5, #8
	strh r0, [r4, #0xa]
	add r0, sp, #0
	ldrh r0, [r0, #0x14]
	strh r0, [r4, #0xe]
	subs r0, r5, r3
	strh r1, [r4, #6]
	lsls r0, r0, #8
	adds r1, r2, #0
	blx FUN_020E2178
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	nop
_0224CDB0: .4byte 0x00001128
	thumb_func_end ov17_0224CD84

	thumb_func_start ov17_0224CDB4
ov17_0224CDB4: @ 0x0224CDB4
	ldr r2, _0224CDBC @ =0x00001139
	strb r1, [r0, r2]
	bx lr
	nop
_0224CDBC: .4byte 0x00001139
	thumb_func_end ov17_0224CDB4

	thumb_func_start ov17_0224CDC0
ov17_0224CDC0: @ 0x0224CDC0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r1, [sp]
	cmp r2, #0
	bne _0224CDD0
	ldr r7, _0224CDFC @ =0x00007FFF
	ldr r6, _0224CE00 @ =0x0000254A
	b _0224CDD4
_0224CDD0:
	ldr r7, _0224CE00 @ =0x0000254A
	ldr r6, _0224CDFC @ =0x00007FFF
_0224CDD4:
	movs r4, #0
_0224CDD6:
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x18]
	bne _0224CDE6
	adds r1, r7, #0
	bl FUN_0225B198
	b _0224CDEC
_0224CDE6:
	adds r1, r6, #0
	bl FUN_0225B198
_0224CDEC:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _0224CDD6
	ldr r0, _0224CE04 @ =0x000006EC
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224CDFC: .4byte 0x00007FFF
_0224CE00: .4byte 0x0000254A
_0224CE04: .4byte 0x000006EC
	thumb_func_end ov17_0224CDC0

	thumb_func_start ov17_0224CE08
ov17_0224CE08: @ 0x0224CE08
	push {r4, r5, r6, lr}
	ldr r6, _0224CE24 @ =0x00007FFF
	adds r5, r0, #0
	movs r4, #0
_0224CE10:
	ldr r0, [r5, #0x18]
	adds r1, r6, #0
	bl FUN_0225B198
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _0224CE10
	pop {r4, r5, r6, pc}
	nop
_0224CE24: .4byte 0x00007FFF
	thumb_func_end ov17_0224CE08

	thumb_func_start ov17_0224CE28
ov17_0224CE28: @ 0x0224CE28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	movs r4, #0
	add r5, sp, #0x18
	add r3, sp, #0x14
	ldr r2, _0224CED4 @ =0x00000AF6
	b _0224CE46
_0224CE38:
	ldr r1, [sp, #0xc]
	lsls r0, r4, #1
	adds r1, r1, r0
	ldrsh r1, [r1, r2]
	strb r4, [r3, r4]
	adds r4, r4, #1
	strh r1, [r5, r0]
_0224CE46:
	cmp r4, #4
	blt _0224CE38
	movs r4, #0
	add r7, sp, #0x18
	b _0224CE7A
_0224CE50:
	movs r6, #3
	b _0224CE74
_0224CE54:
	subs r3, r6, #1
	lsls r5, r3, #1
	lsls r1, r6, #1
	ldrsh r2, [r7, r5]
	ldrsh r0, [r7, r1]
	cmp r2, r0
	bge _0224CE72
	strh r2, [r7, r1]
	strh r0, [r7, r5]
	add r0, sp, #0x14
	add r1, sp, #0x14
	ldrb r0, [r0, r6]
	ldrb r2, [r1, r3]
	strb r2, [r1, r6]
	strb r0, [r1, r3]
_0224CE72:
	subs r6, r6, #1
_0224CE74:
	cmp r6, r4
	bgt _0224CE54
	adds r4, r4, #1
_0224CE7A:
	cmp r4, #3
	blt _0224CE50
	ldr r3, _0224CED8 @ =0x022549C0
	add r0, sp, #0x10
	ldrb r1, [r3]
	movs r4, #1
	add r2, sp, #0x10
	strb r1, [r0]
	add r1, sp, #0x18
	b _0224CEA6
_0224CE8E:
	ldrb r0, [r3, r4]
	subs r6, r4, #1
	lsls r5, r6, #1
	strb r0, [r2, r4]
	lsls r0, r4, #1
	ldrsh r0, [r1, r0]
	ldrsh r5, [r1, r5]
	cmp r0, r5
	bne _0224CEA4
	ldrb r0, [r2, r6]
	strb r0, [r2, r4]
_0224CEA4:
	adds r4, r4, #1
_0224CEA6:
	cmp r4, #4
	blt _0224CE8E
	movs r4, #0
	add r5, sp, #0x10
	movs r6, #0x1e
	adds r7, r4, #0
	b _0224CECC
_0224CEB4:
	ldrb r0, [r5, r4]
	add r1, sp, #0x14
	ldrb r1, [r1, r4]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _0224CEDC @ =0x00007FFF
	ldr r3, _0224CEE0 @ =0x0000254A
	str r7, [sp, #8]
	bl ov17_0224CEE4
	adds r4, r4, #1
_0224CECC:
	cmp r4, #4
	blt _0224CEB4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224CED4: .4byte 0x00000AF6
_0224CED8: .4byte 0x022549C0
_0224CEDC: .4byte 0x00007FFF
_0224CEE0: .4byte 0x0000254A
	thumb_func_end ov17_0224CE28

	thumb_func_start ov17_0224CEE4
ov17_0224CEE4: @ 0x0224CEE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x17
	movs r1, #0x14
	adds r6, r2, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x28]
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x14
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	ldr r1, [sp, #0x24]
	lsls r0, r0, #4
	adds r0, r7, r0
	ldr r0, [r0, #0x18]
	str r0, [r4]
	strh r6, [r4, #8]
	ldr r0, [sp, #4]
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x10]
	lsls r0, r0, #8
	blx FUN_020E1F6C
	strh r0, [r4, #0xc]
	str r5, [r4, #4]
	cmp r5, #0
	beq _0224CF2C
	movs r0, #0
	strb r0, [r5]
_0224CF2C:
	ldr r0, [r4]
	adds r1, r6, #0
	bl FUN_0225B198
	ldr r0, _0224CF44 @ =ov17_0224CF4C
	ldr r2, _0224CF48 @ =0x00009C40
	adds r1, r4, #0
	bl FUN_0200D9E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CF44: .4byte ov17_0224CF4C
_0224CF48: .4byte 0x00009C40
	thumb_func_end ov17_0224CEE4

	thumb_func_start ov17_0224CF4C
ov17_0224CF4C: @ 0x0224CF4C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r6, r0, #0
	ldrh r1, [r5, #0xe]
	ldrh r0, [r5, #0xc]
	adds r0, r1, r0
	strh r0, [r5, #0xe]
	ldrh r0, [r5, #0xe]
	asrs r4, r0, #8
	ldrb r0, [r5, #0x10]
	cmp r4, r0
	ble _0224CF68
	adds r4, r0, #0
_0224CF68:
	ldrh r0, [r5, #0xa]
	lsls r3, r4, #0x18
	add r1, sp, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #8
	movs r2, #1
	lsrs r3, r3, #0x18
	bl FUN_0200393C
	add r1, sp, #4
	ldrh r1, [r1]
	ldr r0, [r5]
	bl FUN_0225B198
	ldrb r0, [r5, #0x10]
	cmp r4, r0
	blt _0224CFA2
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _0224CF96
	movs r0, #1
	strb r0, [r1]
_0224CF96:
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r6, #0
	bl FUN_0200DA58
_0224CFA2:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_0224CF4C

	thumb_func_start ov17_0224CFA8
ov17_0224CFA8: @ 0x0224CFA8
	cmp r0, #0x32
	beq _0224CFB0
	cmp r0, #0x33
	bne _0224CFB4
_0224CFB0:
	movs r0, #0
	bx lr
_0224CFB4:
	movs r0, #1
	bx lr
	thumb_func_end ov17_0224CFA8

	thumb_func_start ov17_0224CFB8
ov17_0224CFB8: @ 0x0224CFB8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _0224CFEC @ =0x022549E4
	add r3, sp, #0
	str r1, [sp]
	movs r1, #0xd
	strh r1, [r3, #4]
	ldr r1, [r0]
	ldr r2, _0224CFF0 @ =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	subs r1, r2, #7
	ldr r4, [r0]
	adds r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	ldr r1, _0224CFF4 @ =0x00001174
	adds r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_0224CFEC: .4byte 0x022549E4
_0224CFF0: .4byte 0x00000123
_0224CFF4: .4byte 0x00001174
	thumb_func_end ov17_0224CFB8

	thumb_func_start ov17_0224CFF8
ov17_0224CFF8: @ 0x0224CFF8
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224CFF8

	thumb_func_start ov17_0224D00C
ov17_0224D00C: @ 0x0224D00C
	push {r3, lr}
	adds r1, r2, #0
	movs r2, #0
	adds r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224D00C

	thumb_func_start ov17_0224D01C
ov17_0224D01C: @ 0x0224D01C
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224D01C

	thumb_func_start ov17_0224D020
ov17_0224D020: @ 0x0224D020
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224D020

	thumb_func_start ov17_0224D034
ov17_0224D034: @ 0x0224D034
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x17
	movs r1, #0x18
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x18
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _0224D070 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0224D074 @ =ov17_0224D078
	str r6, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D070: .4byte 0x00007530
_0224D074: .4byte ov17_0224D078
	thumb_func_end ov17_0224D034

	thumb_func_start ov17_0224D078
ov17_0224D078: @ 0x0224D078
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _0224D088
	b _0224D1AE
_0224D088:
	ldr r0, [sp]
	movs r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D09C
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_0224D09C:
	ldr r0, [sp]
	movs r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D0B0
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_0224D0B0:
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0]
	movs r1, #2
	ldr r0, [r0, #0x74]
	bl FUN_02019FE4
	mov ip, r0
	movs r0, #0
	str r0, [sp, #8]
	b _0224D128
_0224D0C8:
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _0224D1CC @ =0x022549C4
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	adds r0, r1, r0
	bmi _0224D122
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	ldr r0, [sp]
	movs r5, #0
	ldrb r0, [r0, #0x12]
	movs r7, #0x3f
	str r5, [sp, #4]
	lsls r1, r0, #1
	ldr r0, _0224D1D0 @ =0x022549CC
	lsls r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsls r0, r0, #5
	adds r6, r1, r0
	b _0224D11C
_0224D0F8:
	movs r4, #0
	b _0224D110
_0224D0FC:
	adds r0, r5, r4
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	adds r0, r6, r4
	adds r4, r4, #1
	orrs r0, r1
	strh r0, [r3, r2]
_0224D110:
	cmp r4, #8
	blt _0224D0FC
	ldr r0, [sp, #4]
	adds r5, #8
	adds r0, r0, #1
	str r0, [sp, #4]
_0224D11C:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _0224D0F8
_0224D122:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_0224D128:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _0224D0C8
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0224D16A
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0224D16A
	ldr r0, _0224D1CC @ =0x022549C4
	subs r1, r1, #1
	ldrsb r0, [r0, r1]
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	movs r0, #0
	movs r1, #0x3f
	str r0, [sp, #4]
	lsls r1, r1, #0xa
	b _0224D164
_0224D154:
	ldr r0, [sp, #4]
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
_0224D164:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0224D154
_0224D16A:
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #0x74]
	bl FUN_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	adds r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _0224D1C8
	ldr r1, [sp]
	movs r0, #0
	movs r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	adds r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	adds r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _0224D1C8
	adds r0, r1, #0
	ldrb r0, [r0, #0x10]
	adds r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_0224D1AE:
	adds r0, r1, #0
	movs r2, #0
	ldr r0, [r0, #0xc]
	adds r1, r1, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_0224D1C8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224D1CC: .4byte 0x022549C4
_0224D1D0: .4byte 0x022549CC
	thumb_func_end ov17_0224D078

	thumb_func_start ov17_0224D1D4
ov17_0224D1D4: @ 0x0224D1D4
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224D1D4

	thumb_func_start ov17_0224D1E8
ov17_0224D1E8: @ 0x0224D1E8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r0, #0x17
	movs r1, #0x18
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x18
	blx FUN_020C4CF4
	str r6, [r4]
	ldrh r0, [r5]
	ldr r2, _0224D230 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0224D234 @ =ov17_0224D240
	str r7, [r4, #0xc]
	bl FUN_0200D9E8
	ldr r0, _0224D238 @ =0x00001150
	movs r1, #0
	strb r1, [r6, r0]
	ldr r0, _0224D23C @ =0x0000046F
	bl FUN_0200549C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D230: .4byte 0x00007530
_0224D234: .4byte ov17_0224D240
_0224D238: .4byte 0x00001150
_0224D23C: .4byte 0x0000046F
	thumb_func_end ov17_0224D1E8

	thumb_func_start ov17_0224D240
ov17_0224D240: @ 0x0224D240
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _0224D250
	b _0224D39E
_0224D250:
	ldr r0, [sp]
	movs r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D264
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_0224D264:
	ldr r0, [sp]
	movs r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D278
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_0224D278:
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0]
	movs r1, #2
	ldr r0, [r0, #0x74]
	bl FUN_02019FE4
	mov ip, r0
	movs r0, #0
	str r0, [sp, #8]
	b _0224D2F8
_0224D290:
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	movs r0, #4
	subs r1, r0, r1
	ldr r0, _0224D3BC @ =0x022549C4
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	adds r0, r1, r0
	bmi _0224D2F2
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	ldr r0, [sp]
	movs r5, #0
	ldrb r1, [r0, #0x12]
	movs r0, #0xb
	movs r7, #0x3f
	subs r0, r0, r1
	lsls r1, r0, #1
	ldr r0, _0224D3C0 @ =0x022549CC
	str r5, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsls r7, r7, #0xa
	lsls r0, r0, #5
	adds r6, r1, r0
	b _0224D2EC
_0224D2C8:
	movs r4, #0
	b _0224D2E0
_0224D2CC:
	adds r0, r5, r4
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	adds r0, r6, r4
	adds r4, r4, #1
	orrs r0, r1
	strh r0, [r3, r2]
_0224D2E0:
	cmp r4, #8
	blt _0224D2CC
	ldr r0, [sp, #4]
	adds r5, #8
	adds r0, r0, #1
	str r0, [sp, #4]
_0224D2EC:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _0224D2C8
_0224D2F2:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_0224D2F8:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _0224D290
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0224D35A
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0224D35A
	movs r0, #5
	subs r1, r0, r1
	ldr r0, _0224D3BC @ =0x022549C4
	movs r7, #0x3f
	ldrsb r0, [r0, r1]
	lsls r7, r7, #0xa
	movs r6, #0x1d
	adds r0, r0, #3
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	movs r0, #0
	movs r1, #2
	str r0, [sp, #4]
	lsls r1, r1, #8
	b _0224D354
_0224D32E:
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	lsls r4, r0, #1
	ldrh r0, [r3, r4]
	lsls r5, r5, #0x1d
	ands r0, r7
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	ldrh r2, [r3, r4]
	lsrs r0, r0, #0x1f
	subs r5, r5, r0
	rors r5, r6
	adds r0, r0, r5
	adds r0, r0, r1
	orrs r0, r2
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
_0224D354:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0224D32E
_0224D35A:
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #0x74]
	bl FUN_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	adds r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _0224D3B8
	ldr r1, [sp]
	movs r0, #0
	movs r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	adds r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	adds r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _0224D3B8
	adds r0, r1, #0
	ldrb r0, [r0, #0x10]
	adds r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_0224D39E:
	adds r0, r1, #0
	movs r2, #0
	ldr r0, [r0, #0xc]
	adds r1, r1, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_0224D3B8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224D3BC: .4byte 0x022549C4
_0224D3C0: .4byte 0x022549CC
	thumb_func_end ov17_0224D240

	thumb_func_start ov17_0224D3C4
ov17_0224D3C4: @ 0x0224D3C4
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224D3C4

	thumb_func_start ov17_0224D3D8
ov17_0224D3D8: @ 0x0224D3D8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x17
	movs r1, #0x14
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _0224D414 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0224D418 @ =ov17_0224D41C
	str r6, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D414: .4byte 0x00007530
_0224D418: .4byte ov17_0224D41C
	thumb_func_end ov17_0224D3D8

	thumb_func_start ov17_0224D41C
ov17_0224D41C: @ 0x0224D41C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #5
	bhi _0224D4C0
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224D434: @ jump table
	.2byte _0224D440 - _0224D434 - 2 @ case 0
	.2byte _0224D450 - _0224D434 - 2 @ case 1
	.2byte _0224D460 - _0224D434 - 2 @ case 2
	.2byte _0224D482 - _0224D434 - 2 @ case 3
	.2byte _0224D49C - _0224D434 - 2 @ case 4
	.2byte _0224D4B4 - _0224D434 - 2 @ case 5
_0224D440:
	ldr r0, _0224D4DC @ =0x0000046F
	movs r1, #0x1e
	bl FUN_020055D0
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D450:
	bl FUN_02005684
	cmp r0, #0
	bne _0224D4D8
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D460:
	ldr r0, _0224D4E0 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	bl ov17_0224C84C
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0x14
	bl ov17_0224ABDC
	ldr r0, _0224D4E4 @ =0x000006EC
	bl FUN_02005748
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D482:
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0224D4D8
	movs r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D49C:
	ldr r0, [r4]
	ldr r1, _0224D4E8 @ =0x00000123
	ldr r2, [r0]
	ldrb r1, [r2, r1]
	adds r2, r4, #0
	adds r2, #0x11
	bl ov17_0224C6B0
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D4B4:
	ldrb r1, [r4, #0x11]
	cmp r1, #1
	bne _0224D4D8
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D4C0:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_0224D4D8:
	pop {r3, r4, r5, pc}
	nop
_0224D4DC: .4byte 0x0000046F
_0224D4E0: .4byte 0x04000050
_0224D4E4: .4byte 0x000006EC
_0224D4E8: .4byte 0x00000123
	thumb_func_end ov17_0224D41C

	thumb_func_start ov17_0224D4EC
ov17_0224D4EC: @ 0x0224D4EC
	push {r3, lr}
	movs r1, #4
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224D4EC

	thumb_func_start ov17_0224D500
ov17_0224D500: @ 0x0224D500
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r2, r3, #0
	ldr r0, _0224D53C @ =0x00001C0C
	movs r1, #1
	strb r1, [r5, r0]
	ldr r3, _0224D540 @ =0x00000172
	movs r1, #0
_0224D514:
	ldr r6, [r5]
	ldrb r0, [r2, r1]
	adds r6, r6, r1
	adds r1, r1, #1
	strb r0, [r6, r3]
	cmp r1, #4
	blt _0224D514
	ldr r0, [r5]
	bl FUN_02094EDC
	cmp r0, #0
	bne _0224D538
	movs r2, #0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r3, r2, #0
	bl ov17_0224F26C
_0224D538:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D53C: .4byte 0x00001C0C
_0224D540: .4byte 0x00000172
	thumb_func_end ov17_0224D500

	thumb_func_start ov17_0224D544
ov17_0224D544: @ 0x0224D544
	push {r3, lr}
	movs r1, #0x3c
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224D544

	thumb_func_start ov17_0224D558
ov17_0224D558: @ 0x0224D558
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r1, #0
	movs r1, #0x57
	adds r7, r0, #0
	movs r0, #0x17
	lsls r1, r1, #2
	adds r5, r2, #0
	str r3, [sp, #4]
	bl FUN_02018144
	movs r2, #0x57
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	str r6, [r4]
	ldrh r0, [r5]
	adds r3, r4, #0
	adds r3, #0x18
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	movs r2, #7
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	ldr r5, [sp, #4]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224D596:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224D596
	ldr r0, [r5]
	ldr r2, _0224D654 @ =0x00007530
	str r0, [r3]
	ldr r0, _0224D658 @ =ov17_0224D710
	adds r1, r4, #0
	str r6, [r4, #0x54]
	bl FUN_0200D9E8
	movs r7, #0
	adds r5, r4, #0
_0224D5B2:
	ldr r1, [r6]
	ldr r0, _0224D65C @ =0x00000127
	ldrb r0, [r1, r0]
	cmp r7, r0
	bge _0224D5C6
	adds r0, r6, #0
	movs r1, #0
	bl ov17_0224D668
	b _0224D5CE
_0224D5C6:
	adds r0, r6, #0
	movs r1, #1
	bl ov17_0224D668
_0224D5CE:
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r7, r7, #1
	adds r5, r5, #4
	cmp r7, #4
	blt _0224D5B2
	ldr r1, [r4]
	ldr r2, _0224D660 @ =0x00000123
	ldr r3, [r1]
	movs r0, #0
	ldrb r3, [r3, r2]
_0224D5E6:
	adds r2, r4, r0
	ldrb r2, [r2, #0x1a]
	cmp r3, r2
	bne _0224D5F4
	ldr r2, _0224D664 @ =0x00000AE8
	strb r0, [r1, r2]
	b _0224D5FA
_0224D5F4:
	adds r0, r0, #1
	cmp r0, #4
	blt _0224D5E6
_0224D5FA:
	adds r0, r6, #0
	bl ov17_0224DF54
	ldr r1, [r6]
	ldr r0, _0224D65C @ =0x00000127
	ldrb r5, [r1, r0]
	cmp r5, #4
	bge _0224D650
	ldr r0, [sp, #4]
	lsls r1, r5, #2
	adds r7, r0, r1
	adds r1, r4, #0
	movs r0, #0x3c
	adds r1, #0x5c
	muls r0, r5, r0
	adds r0, r1, r0
	str r0, [sp, #8]
_0224D61C:
	movs r2, #0
_0224D61E:
	adds r0, r4, r2
	ldrb r0, [r0, #0x1a]
	cmp r5, r0
	beq _0224D62C
	adds r2, r2, #1
	cmp r2, #4
	blt _0224D61E
_0224D62C:
	ldr r0, [r6]
	adds r1, r0, r5
	movs r0, #0x43
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	adds r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [r7, #0x14]
	bl ov17_0224E930
	ldr r0, [sp, #8]
	adds r5, r5, #1
	adds r0, #0x3c
	adds r7, r7, #4
	str r0, [sp, #8]
	cmp r5, #4
	blt _0224D61C
_0224D650:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224D654: .4byte 0x00007530
_0224D658: .4byte ov17_0224D710
_0224D65C: .4byte 0x00000127
_0224D660: .4byte 0x00000123
_0224D664: .4byte 0x00000AE8
	thumb_func_end ov17_0224D558

	thumb_func_start ov17_0224D668
ov17_0224D668: @ 0x0224D668
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x17
	movs r1, #0x14
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x14
	adds r4, r0, #0
	blx FUN_020C4CF4
	str r5, [r4, #4]
	ldr r0, _0224D694 @ =ov17_0224D6CC
	ldr r2, _0224D698 @ =0x00007594
	adds r1, r4, #0
	strb r6, [r4, #0x12]
	bl FUN_0200D9E8
	str r0, [r4]
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224D694: .4byte ov17_0224D6CC
_0224D698: .4byte 0x00007594
	thumb_func_end ov17_0224D668

	thumb_func_start ov17_0224D69C
ov17_0224D69C: @ 0x0224D69C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_0224D69C

	thumb_func_start ov17_0224D6B0
ov17_0224D6B0: @ 0x0224D6B0
	ldrh r2, [r1]
	strh r2, [r0, #8]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #4]
	strh r2, [r0, #0xc]
	ldrh r2, [r1, #6]
	strh r2, [r0, #0xe]
	ldrh r1, [r1, #8]
	strh r1, [r0, #0x10]
	movs r1, #1
	strb r1, [r0, #0x13]
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224D6B0

	thumb_func_start ov17_0224D6CC
ov17_0224D6CC: @ 0x0224D6CC
	push {r4, lr}
	adds r4, r1, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _0224D708
	ldr r0, [r4, #4]
	ldr r1, _0224D70C @ =0x00000171
	ldr r2, [r0]
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0224D6E8
	ldrb r1, [r4, #0x12]
	cmp r1, #1
	bne _0224D6F6
_0224D6E8:
	adds r1, r4, #0
	adds r1, #8
	bl ov17_0224B20C
	movs r0, #0
	strb r0, [r4, #0x13]
	pop {r4, pc}
_0224D6F6:
	adds r1, r4, #0
	movs r0, #0x19
	adds r1, #8
	bl FUN_020360D0
	cmp r0, #1
	bne _0224D708
	movs r0, #0
	strb r0, [r4, #0x13]
_0224D708:
	pop {r4, pc}
	nop
_0224D70C: .4byte 0x00000171
	thumb_func_end ov17_0224D6CC

	thumb_func_start ov17_0224D710
ov17_0224D710: @ 0x0224D710
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r4, r1, #0
	ldr r3, [r4]
	str r0, [sp, #0x1c]
	ldr r1, [r3]
	ldr r0, _0224DA50 @ =0x00000123
	ldrb r1, [r1, r0]
	ldrb r0, [r4, #0x18]
	cmp r1, r0
	beq _0224D72A
	movs r7, #1
	b _0224D72C
_0224D72A:
	movs r7, #0
_0224D72C:
	ldr r0, _0224DA54 @ =0x00001154
	ldr r2, [r4, #0x24]
	ldr r1, [r3, r0]
	adds r0, #8
	ldr r0, [r3, r0]
	subs r0, r1, r0
	lsrs r1, r2, #1
	str r0, [sp, #0x24]
	cmp r0, r1
	blo _0224D746
	movs r0, #1
	str r0, [sp, #0x20]
	b _0224D74A
_0224D746:
	movs r0, #0
	str r0, [sp, #0x20]
_0224D74A:
	ldrb r0, [r4, #0x10]
	cmp r0, #3
	bls _0224D752
	b _0224DBD0
_0224D752:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224D75E: @ jump table
	.2byte _0224D766 - _0224D75E - 2 @ case 0
	.2byte _0224D7E0 - _0224D75E - 2 @ case 1
	.2byte _0224D84C - _0224D75E - 2 @ case 2
	.2byte _0224DB4E - _0224D75E - 2 @ case 3
_0224D766:
	adds r3, #0x14
	adds r0, r3, #0
	movs r1, #0
	bl ov17_0224B068
	ldr r0, [r4]
	bl ov17_0224BC4C
	adds r3, r4, #0
	ldrb r2, [r4, #0x18]
	movs r1, #0x3c
	adds r3, #0x5c
	muls r1, r2, r1
	adds r1, r3, r1
	ldr r0, [r4]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x20]
	bl ov17_0224E990
	movs r0, #0x21
	ldr r2, [r4]
	ldr r1, _0224DA58 @ =0x00000B1B
	lsls r0, r0, #4
	ldrb r1, [r2, r1]
	ldr r0, [r2, r0]
	bl ov17_0224C54C
	ldr r1, [r4]
	ldr r0, _0224DA5C @ =0x000009B4
	adds r0, r1, r0
	movs r1, #1
	bl ov17_0224C47C
	ldr r0, [r4]
	movs r1, #0
	bl ov17_0224C864
	ldr r0, [r4]
	bl ov17_0224C9A4
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	add r0, sp, #0x30
	cmp r7, #0
	strb r1, [r0, #4]
	ldr r0, [r4]
	add r2, sp, #0x30
	bne _0224D7D0
	movs r1, #4
	bl ov17_0224C5A0
	b _0224D7D6
_0224D7D0:
	movs r1, #5
	bl ov17_0224C5A0
_0224D7D6:
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224D7E0:
	ldrb r2, [r4, #0x19]
	adds r1, r4, #0
	adds r0, r3, #0
	adds r1, #0x3c
	bl ov17_0224C6A8
	movs r3, #0
	movs r2, #0
	subs r0, r2, r0
	sbcs r3, r1
	bge _0224D7F8
	b _0224DBFE
_0224D7F8:
	ldr r0, [r4]
	bl ov17_0224C640
	ldr r5, [r4]
	adds r1, r4, #0
	ldrb r2, [r4, #0x19]
	adds r0, r5, #0
	adds r1, #0x3c
	bl ov17_0224C6A8
	ldr r2, _0224DA54 @ =0x00001154
	adds r6, r0, #0
	adds r0, r1, #0
	adds r1, r2, #4
	ldr r3, [r5, r2]
	ldr r1, [r5, r1]
	adds r3, r3, r6
	adcs r1, r0
	adds r0, r2, #0
	adds r0, #8
	adds r2, #0xc
	str r3, [r5, r0]
	str r1, [r5, r2]
	cmp r7, #0
	bne _0224D838
	ldr r0, [r4]
	adds r1, r7, #0
	bl ov17_0224C9F0
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	strb r0, [r4, #0x11]
_0224D838:
	ldrb r1, [r4, #0x18]
	ldr r0, [r4]
	movs r2, #0
	bl ov17_0224CDC0
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224D84C:
	ldr r5, _0224DA58 @ =0x00000B1B
	adds r0, r3, #0
	ldrb r3, [r3, r5]
	ldr r1, [sp, #0x24]
	adds r0, #0x14
	bl ov17_0224A368
	movs r0, #0x21
	ldr r3, [r4]
	ldr r1, _0224DA54 @ =0x00001154
	lsls r0, r0, #4
	ldr r2, [r3, r1]
	adds r1, #8
	ldr r1, [r3, r1]
	ldr r0, [r3, r0]
	subs r1, r2, r1
	ldrb r3, [r3, r5]
	ldr r2, [r4, #0x24]
	bl ov17_0224C49C
	ldr r3, [r4]
	ldr r1, _0224DA54 @ =0x00001154
	ldr r0, _0224DA5C @ =0x000009B4
	ldr r2, [r3, r1]
	adds r1, #8
	ldr r1, [r3, r1]
	adds r0, r3, r0
	subs r1, r2, r1
	ldrb r3, [r3, r5]
	ldr r2, [r4, #0x24]
	bl ov17_0224C434
	ldr r5, [r4, #0x24]
	ldr r0, [sp, #0x24]
	cmp r0, r5
	blo _0224D954
	ldrb r0, [r4, #0x16]
	ldr r1, _0224DA54 @ =0x00001154
	adds r0, r0, #1
	strb r0, [r4, #0x16]
	ldr r5, [r4]
	adds r0, r5, r1
	ldm r0!, {r2, r3}
	adds r1, #8
	adds r0, r5, r1
	stm r0!, {r2, r3}
	movs r0, #0
	strb r0, [r4, #0x11]
	strb r0, [r4, #0x12]
	ldr r0, [r4]
	bl ov17_0224DF54
	movs r0, #0
	strb r0, [r4, #0x17]
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r0, _0224DA60 @ =0x00000127
	ldrb r6, [r1, r0]
	cmp r6, #4
	bge _0224D8DC
	adds r1, r4, #0
	movs r0, #0x3c
	adds r1, #0x5c
	muls r0, r6, r0
	adds r5, r1, r0
_0224D8CE:
	adds r0, r5, #0
	bl ov17_0224E958
	adds r6, r6, #1
	adds r5, #0x3c
	cmp r6, #4
	blt _0224D8CE
_0224D8DC:
	ldr r0, [r4]
	adds r0, #0x14
	bl ov17_0224A580
	ldr r0, [r4]
	bl ov17_0224BC4C
	adds r3, r4, #0
	ldrb r2, [r4, #0x18]
	movs r1, #0x3c
	adds r3, #0x5c
	muls r1, r2, r1
	adds r1, r3, r1
	ldr r0, [r4]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x20]
	bl ov17_0224E990
	ldr r0, [r4]
	movs r1, #0
	bl ov17_0224C864
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r1, [r4, #0x16]
	ldrb r0, [r0]
	cmp r1, r0
	ldr r0, [r4]
	blo _0224D92E
	bl ov17_0224CE08
	ldr r0, [r4]
	movs r1, #2
	adds r0, #0x14
	bl ov17_0224B068
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224D92E:
	ldrb r1, [r4, #0x18]
	movs r2, #0
	bl ov17_0224CDC0
	cmp r7, #0
	bne _0224D940
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _0224D942
_0224D940:
	b _0224DBFE
_0224D942:
	ldr r0, [r4]
	adds r1, r7, #0
	bl ov17_0224C9F0
	ldrb r0, [r4, #0x11]
	add sp, #0x48
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_0224D954:
	ldr r1, [r4]
	ldr r0, _0224DA64 @ =0x00000AE8
	ldrb r6, [r1, r0]
	ldr r0, [sp, #0x24]
	lsrs r1, r5, #1
	cmp r0, r1
	blo _0224D966
	movs r0, #1
	b _0224D968
_0224D966:
	movs r0, #0
_0224D968:
	cmp r7, #0
	bne _0224DA0A
	cmp r0, #0
	bne _0224D9A0
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r4, #0x17]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0224D9A0
	ldr r0, [r4, #0x20]
	ldr r1, _0224DA68 @ =0x00002710
	lsrs r0, r0, #2
	blx FUN_020E2178
	lsrs r1, r5, #1
	subs r1, r1, r0
	ldr r0, [sp, #0x24]
	cmp r0, r1
	bhs _0224D9A0
	adds r0, r4, #0
	movs r2, #0
	adds r0, #0x54
	add r1, sp, #0x38
	adds r3, r2, #0
	bl ov17_0224DC1C
	b _0224D9AE
_0224D9A0:
	adds r0, r4, #0
	movs r2, #1
	adds r0, #0x54
	add r1, sp, #0x38
	adds r3, r2, #0
	bl ov17_0224DC1C
_0224D9AE:
	movs r0, #0
	ldr r1, [sp, #0x38]
	mvns r0, r0
	cmp r1, r0
	bne _0224D9BA
	b _0224DAD4
_0224D9BA:
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0x44
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r2, [r4, #0x17]
	str r2, [sp, #0x10]
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r2, [r2]
	str r2, [sp, #0x14]
	ldr r2, _0224DA58 @ =0x00000B1B
	ldrb r2, [r0, r2]
	str r2, [sp, #0x18]
	ldr r2, [r0]
	ldr r0, _0224DA50 @ =0x00000123
	ldr r3, [r4, #0x20]
	ldrb r0, [r2, r0]
	ldr r2, [sp, #0x24]
	bl ov17_0224DE54
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r0, _0224DA50 @ =0x00000123
	ldrb r1, [r1, r0]
	adds r0, #0x29
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x3c
	bl ov17_0224D6B0
	ldrb r0, [r4, #0x17]
	adds r0, r0, #1
	strb r0, [r4, #0x17]
	b _0224DAD4
_0224DA0A:
	cmp r0, #1
	bne _0224DA6C
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r4, #0x17]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0224DA6C
	ldr r0, [r4, #0x20]
	ldr r1, _0224DA68 @ =0x00002710
	lsrs r0, r0, #2
	blx FUN_020E2178
	subs r1, r5, r0
	ldr r0, [sp, #0x24]
	cmp r0, r1
	bhs _0224DA6C
	adds r0, r4, #0
	movs r2, #0
	adds r0, #0x54
	add r1, sp, #0x38
	adds r3, r2, #0
	bl ov17_0224DC1C
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0224DA7A
	ldr r0, [r4]
	adds r1, r7, #0
	bl ov17_0224C9F0
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	b _0224DA7A
	.align 2, 0
_0224DA50: .4byte 0x00000123
_0224DA54: .4byte 0x00001154
_0224DA58: .4byte 0x00000B1B
_0224DA5C: .4byte 0x000009B4
_0224DA60: .4byte 0x00000127
_0224DA64: .4byte 0x00000AE8
_0224DA68: .4byte 0x00002710
_0224DA6C:
	adds r0, r4, #0
	movs r2, #1
	adds r0, #0x54
	add r1, sp, #0x38
	adds r3, r2, #0
	bl ov17_0224DC1C
_0224DA7A:
	movs r0, #0
	ldr r1, [sp, #0x38]
	mvns r0, r0
	cmp r1, r0
	beq _0224DAD4
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0x44
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	ldr r2, _0224DC04 @ =0x00001BB4
	adds r2, r0, r2
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r2, [r4, #0x17]
	str r2, [sp, #0x10]
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r2, [r2]
	str r2, [sp, #0x14]
	ldr r2, _0224DC08 @ =0x00000B1B
	ldrb r2, [r0, r2]
	str r2, [sp, #0x18]
	ldr r2, [r0]
	ldr r0, _0224DC0C @ =0x00000123
	ldr r3, [r4, #0x20]
	ldrb r0, [r2, r0]
	ldr r2, [sp, #0x24]
	bl ov17_0224DE54
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r0, _0224DC0C @ =0x00000123
	ldrb r1, [r1, r0]
	adds r0, #0x29
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x3c
	bl ov17_0224D6B0
	ldrb r0, [r4, #0x17]
	adds r0, r0, #1
	strb r0, [r4, #0x17]
_0224DAD4:
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r0, _0224DC10 @ =0x00000127
	ldrb r7, [r1, r0]
	cmp r7, #4
	bge _0224DB20
	lsls r0, r7, #2
	adds r5, r4, r0
	adds r1, r4, #0
	movs r0, #0x3c
	adds r1, #0x5c
	muls r0, r7, r0
	adds r6, r1, r0
	adds r0, r4, #0
	str r0, [sp, #0x2c]
	adds r0, #0x3c
	str r0, [sp, #0x2c]
_0224DAF6:
	ldr r0, [r4, #0x24]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	ldr r0, [r4, #0x20]
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	ldr r1, [r4]
	bl ov17_0224ED8C
	adds r7, r7, #1
	adds r5, r5, #4
	adds r6, #0x3c
	cmp r7, #4
	blt _0224DAF6
_0224DB20:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0224DB3C
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _0224DB3C
	ldrb r1, [r4, #0x18]
	ldr r0, [r4]
	movs r2, #1
	bl ov17_0224CDC0
	ldrb r0, [r4, #0x12]
	adds r0, r0, #1
	strb r0, [r4, #0x12]
_0224DB3C:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0224DBFE
	ldr r0, [r4]
	ldr r1, [sp, #0x24]
	bl ov17_0224C8E8
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_0224DB4E:
	adds r0, r4, #0
	adds r0, #0x54
	add r1, sp, #0x38
	movs r2, #1
	movs r3, #0
	bl ov17_0224DC1C
	cmp r0, #1
	bne _0224DBFE
	ldr r0, [r4]
	adds r0, #0x14
	bl ov17_0224A580
	ldr r5, [r4]
	ldr r3, _0224DC08 @ =0x00000B1B
	adds r0, r5, #0
	ldrb r3, [r5, r3]
	ldr r2, [r4, #0x24]
	adds r0, #0x14
	movs r1, #0
	bl ov17_0224A368
	movs r0, #0x21
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl ov17_0224C540
	ldr r1, [r4]
	ldr r0, _0224DC14 @ =0x000009B4
	adds r0, r1, r0
	movs r1, #0
	bl ov17_0224C47C
	ldr r0, [r4]
	movs r1, #2
	adds r0, #0x14
	bl ov17_0224B068
	ldr r0, [r4]
	movs r1, #0
	bl ov17_0224C864
	ldr r0, [r4]
	bl ov17_0224C9D4
	ldr r1, [r4]
	ldr r0, _0224DC18 @ =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249814
	cmp r0, #0
	beq _0224DBC6
	ldr r1, [r4]
	ldr r0, _0224DC18 @ =0x0000114C
	movs r2, #6
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov17_0224A0E0
_0224DBC6:
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224DBD0:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	movs r7, #0x53
	movs r6, #0
	adds r5, r4, #0
	lsls r7, r7, #2
_0224DBE4:
	ldr r0, [r5, r7]
	bl ov17_0224D69C
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #4
	blt _0224DBE4
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [sp, #0x1c]
	bl FUN_0200DA58
_0224DBFE:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DC04: .4byte 0x00001BB4
_0224DC08: .4byte 0x00000B1B
_0224DC0C: .4byte 0x00000123
_0224DC10: .4byte 0x00000127
_0224DC14: .4byte 0x000009B4
_0224DC18: .4byte 0x0000114C
	thumb_func_end ov17_0224D710

	thumb_func_start ov17_0224DC1C
ov17_0224DC1C: @ 0x0224DC1C
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r7, r1, #0
	subs r0, r4, #1
	adds r6, r2, #0
	str r3, [sp]
	str r0, [r7]
	cmp r6, #0
	bne _0224DC4E
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224DC4E
	subs r0, r0, #1
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _0224DC4E
	ldr r1, [r5]
	ldr r0, _0224DD1C @ =0x0000114C
	adds r2, r4, #0
	ldr r0, [r1, r0]
	adds r1, r4, #0
	bl ov17_0224A0E0
_0224DC4E:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0224DC5E
	cmp r0, #1
	beq _0224DC84
	cmp r0, #2
	beq _0224DCC6
	b _0224DCEC
_0224DC5E:
	cmp r6, #0
	bne _0224DC80
	ldr r0, [sp]
	cmp r0, #0
	bne _0224DC80
	movs r1, #0
	strb r1, [r5, #5]
	ldr r2, [r5]
	ldr r0, _0224DD1C @ =0x0000114C
	ldr r0, [r2, r0]
	adds r2, r1, #0
	bl ov17_0224A0E0
	ldrb r0, [r5, #4]
	adds r0, r0, #1
	strb r0, [r5, #4]
	b _0224DCEC
_0224DC80:
	movs r4, #1
	b _0224DCEC
_0224DC84:
	cmp r6, #1
	beq _0224DC8E
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224DC92
_0224DC8E:
	movs r4, #1
	b _0224DCEC
_0224DC92:
	ldr r1, [r5]
	ldr r0, _0224DD1C @ =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249760
	movs r1, #0
	mvns r1, r1
	str r0, [r7]
	cmp r0, r1
	beq _0224DCC2
	ldr r1, [r5]
	ldr r0, _0224DD20 @ =0x00000B04
	ldr r0, [r1, r0]
	ldr r1, _0224DD24 @ =0x00002710
	blx FUN_020E2178
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	subs r0, r0, #2
	strb r0, [r5, #5]
	ldrb r0, [r5, #4]
	adds r0, r0, #1
	strb r0, [r5, #4]
	b _0224DCEC
_0224DCC2:
	movs r4, #1
	b _0224DCEC
_0224DCC6:
	ldr r1, [r5]
	ldr r0, _0224DD1C @ =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249804
	cmp r0, #1
	bne _0224DCEC
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224DCE8
	ldr r1, [r5]
	ldr r0, _0224DD1C @ =0x0000114C
	movs r2, #6
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov17_0224A0E0
_0224DCE8:
	movs r0, #1
	strb r0, [r5, #4]
_0224DCEC:
	ldr r0, [sp]
	cmp r0, #1
	bne _0224DD16
	cmp r4, #1
	bne _0224DD16
	ldr r1, [r5]
	ldr r0, _0224DD1C @ =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249814
	cmp r0, #0
	beq _0224DD16
	ldr r1, [r5]
	ldr r0, _0224DD1C @ =0x0000114C
	movs r2, #6
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov17_0224A0E0
	movs r0, #0
	strb r0, [r5, #4]
_0224DD16:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DD1C: .4byte 0x0000114C
_0224DD20: .4byte 0x00000B04
_0224DD24: .4byte 0x00002710
	thumb_func_end ov17_0224DC1C

	thumb_func_start ov17_0224DD28
ov17_0224DD28: @ 0x0224DD28
	push {r3, lr}
	cmp r0, #3
	bhi _0224DD52
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224DD3A: @ jump table
	.2byte _0224DD42 - _0224DD3A - 2 @ case 0
	.2byte _0224DD46 - _0224DD3A - 2 @ case 1
	.2byte _0224DD4A - _0224DD3A - 2 @ case 2
	.2byte _0224DD4E - _0224DD3A - 2 @ case 3
_0224DD42:
	movs r0, #1
	pop {r3, pc}
_0224DD46:
	movs r0, #2
	pop {r3, pc}
_0224DD4A:
	movs r0, #3
	pop {r3, pc}
_0224DD4E:
	movs r0, #4
	pop {r3, pc}
_0224DD52:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224DD28

	thumb_func_start ov17_0224DD5C
ov17_0224DD5C: @ 0x0224DD5C
	push {r3, lr}
	cmp r0, #4
	bhi _0224DD88
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224DD6E: @ jump table
	.2byte _0224DD88 - _0224DD6E - 2 @ case 0
	.2byte _0224DD78 - _0224DD6E - 2 @ case 1
	.2byte _0224DD7C - _0224DD6E - 2 @ case 2
	.2byte _0224DD80 - _0224DD6E - 2 @ case 3
	.2byte _0224DD84 - _0224DD6E - 2 @ case 4
_0224DD78:
	movs r0, #0
	pop {r3, pc}
_0224DD7C:
	movs r0, #1
	pop {r3, pc}
_0224DD80:
	movs r0, #2
	pop {r3, pc}
_0224DD84:
	movs r0, #3
	pop {r3, pc}
_0224DD88:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov17_0224DD5C

	thumb_func_start ov17_0224DD90
ov17_0224DD90: @ 0x0224DD90
	push {r3, r4}
	ldrb r4, [r1]
	cmp r0, r4
	bgt _0224DDA2
	movs r0, #0
	strb r0, [r2]
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDA2:
	ldrb r4, [r1, #1]
	cmp r0, r4
	bgt _0224DDB4
	movs r0, #0
	strb r0, [r2]
	movs r0, #1
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDB4:
	ldrb r4, [r1, #2]
	cmp r0, r4
	bgt _0224DDC6
	movs r0, #1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDC6:
	ldrb r1, [r1, #3]
	cmp r0, r1
	bgt _0224DDD8
	movs r0, #1
	strb r0, [r2]
	movs r0, #3
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDD8:
	movs r0, #2
	strb r0, [r2]
	movs r0, #4
	strb r0, [r3]
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_0224DD90

	thumb_func_start ov17_0224DDE4
ov17_0224DDE4: @ 0x0224DDE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r2, #0
	adds r6, r0, #0
	movs r0, #0
	ldr r2, _0224DE4C @ =0x00002710
	str r3, [sp]
	muls r6, r2, r6
	lsrs r1, r1, #1
	adds r5, r0, #0
	adds r4, r0, #0
	cmp r6, #0
	bls _0224DE0A
	bls _0224DE08
_0224DE00:
	adds r4, r4, r1
	adds r5, r5, #1
	cmp r4, r6
	blo _0224DE00
_0224DE08:
	subs r0, r4, r1
_0224DE0A:
	ldr r1, _0224DE50 @ =0x00001388
	adds r0, r0, r1
	lsls r1, r1, #1
	blx FUN_020E2178
	ldr r1, _0224DE50 @ =0x00001388
	str r0, [sp, #4]
	adds r0, r4, r1
	lsls r1, r1, #1
	blx FUN_020E2178
	adds r4, r0, #0
	ldr r1, _0224DE4C @ =0x00002710
	adds r0, r6, #0
	blx FUN_020E2178
	ldr r1, [sp, #4]
	subs r1, r0, r1
	bpl _0224DE32
	rsbs r1, r1, #0
_0224DE32:
	subs r0, r0, r4
	bpl _0224DE38
	rsbs r0, r0, #0
_0224DE38:
	cmp r1, r0
	bhi _0224DE40
	subs r5, r5, #1
	b _0224DE42
_0224DE40:
	adds r1, r0, #0
_0224DE42:
	ldr r0, [sp]
	str r1, [r7]
	str r5, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224DE4C: .4byte 0x00002710
_0224DE50: .4byte 0x00001388
	thumb_func_end ov17_0224DDE4

	thumb_func_start ov17_0224DE54
ov17_0224DE54: @ 0x0224DE54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	adds r0, r1, #0
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	movs r7, #0
	bl ov17_0224DD28
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl ov17_0224DDE4
	cmp r6, #0
	beq _0224DEB6
	ldr r0, [sp, #0x48]
	movs r1, #4
	bl ov17_0223F0BC
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r0, r1, #1
	ldr r2, [sp, #0x14]
	adds r4, r7, #0
	subs r0, r2, r0
	adds r1, r6, #0
	adds r2, r6, #0
_0224DE94:
	ldrb r3, [r1, #8]
	lsls r3, r3, #0x1d
	lsrs r3, r3, #0x1f
	cmp r3, #1
	bne _0224DEA4
	ldrb r3, [r2, #6]
	cmp r0, r3
	beq _0224DEAE
_0224DEA4:
	adds r4, r4, #1
	adds r1, #0xa
	adds r2, #0xa
	cmp r4, #8
	blo _0224DE94
_0224DEAE:
	cmp r4, #8
	bne _0224DEB6
	movs r0, #0xff
	str r0, [sp, #0x18]
_0224DEB6:
	add r2, sp, #0x10
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x30]
	adds r2, #1
	add r3, sp, #0x10
	bl ov17_0224DD90
	cmp r6, #0
	beq _0224DEF6
	cmp r4, #8
	beq _0224DEF6
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0224DED8
	cmp r0, #1
	bne _0224DEF6
_0224DED8:
	movs r0, #0xa
	muls r0, r4, r0
	adds r0, r6, r0
	ldrb r1, [r0, #3]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _0224DEF6
	movs r0, #0xff
	str r0, [sp, #0x18]
	movs r1, #4
	add r0, sp, #0x10
	strb r1, [r0]
	movs r1, #2
	strb r1, [r0, #1]
	movs r7, #1
_0224DEF6:
	ldr r0, [sp]
	strb r0, [r5, #2]
	ldr r0, [sp, #4]
	strh r0, [r5]
	ldr r0, [sp, #0xc]
	strb r0, [r5, #3]
	add r0, sp, #0x10
	ldrb r1, [r0, #1]
	strb r1, [r5, #4]
	ldrb r0, [r0]
	ldr r1, [sp, #0x40]
	strb r0, [r5, #5]
	ldr r0, [sp, #0x14]
	strb r0, [r5, #6]
	ldr r0, [sp, #0x3c]
	strb r0, [r5, #7]
	ldr r0, [sp, #0x44]
	subs r0, r0, #1
	cmp r1, r0
	blt _0224DF22
	movs r1, #1
	b _0224DF24
_0224DF22:
	movs r1, #0
_0224DF24:
	ldrb r2, [r5, #8]
	movs r0, #1
	bics r2, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	movs r0, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #8]
	ldrb r1, [r5, #8]
	movs r0, #2
	bics r1, r0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1e
	orrs r0, r1
	strb r0, [r5, #8]
	ldrb r1, [r5, #8]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224DE54

	thumb_func_start ov17_0224DF54
ov17_0224DF54: @ 0x0224DF54
	push {r4, r5}
	ldr r1, _0224DF7C @ =0x00000AD9
	movs r5, #0
	adds r3, r5, #0
	adds r2, r1, #4
_0224DF5E:
	adds r4, r0, r5
	strb r3, [r4, r1]
	adds r5, r5, #1
	strb r3, [r4, r2]
	cmp r5, #4
	blt _0224DF5E
	ldr r1, _0224DF80 @ =0x00000AE1
	strb r3, [r0, r1]
	adds r2, r1, #1
	strb r3, [r0, r2]
	adds r1, r1, #2
	strb r3, [r0, r1]
	pop {r4, r5}
	bx lr
	nop
_0224DF7C: .4byte 0x00000AD9
_0224DF80: .4byte 0x00000AE1
	thumb_func_end ov17_0224DF54

	thumb_func_start ov17_0224DF84
ov17_0224DF84: @ 0x0224DF84
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224DF84

	thumb_func_start ov17_0224DF88
ov17_0224DF88: @ 0x0224DF88
	push {r3, lr}
	movs r1, #0x3c
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224DF88

	thumb_func_start ov17_0224DF9C
ov17_0224DF9C: @ 0x0224DF9C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x17
	str r1, [sp]
	adds r1, r0, #0
	adds r1, #0xed
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	movs r2, #0x41
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	adds r3, r4, #0
	str r0, [r4]
	ldrh r0, [r5]
	adds r3, #0xc8
	movs r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224DFD8:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224DFD8
	ldr r0, [r6]
	ldr r2, _0224DFF0 @ =0x00007530
	str r0, [r3]
	ldr r0, _0224DFF4 @ =ov17_0224DFF8
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224DFF0: .4byte 0x00007530
_0224DFF4: .4byte ov17_0224DFF8
	thumb_func_end ov17_0224DF9C

	thumb_func_start ov17_0224DFF8
ov17_0224DFF8: @ 0x0224DFF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #5
	bls _0224E008
	b _0224E1B8
_0224E008:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224E014: @ jump table
	.2byte _0224E020 - _0224E014 - 2 @ case 0
	.2byte _0224E070 - _0224E014 - 2 @ case 1
	.2byte _0224E09E - _0224E014 - 2 @ case 2
	.2byte _0224E152 - _0224E014 - 2 @ case 3
	.2byte _0224E174 - _0224E014 - 2 @ case 4
	.2byte _0224E198 - _0224E014 - 2 @ case 5
_0224E020:
	ldr r0, [r4]
	movs r1, #0
	bl ov17_0224CDB4
	movs r1, #0
	str r1, [sp]
	movs r0, #6
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r2, _0224E1D4 @ =0x00001FE3
	subs r3, r1, #3
	bl FUN_02003178
	adds r6, r4, #0
	movs r5, #0
	movs r7, #0x10
	adds r6, #0x11
_0224E04A:
	str r7, [sp]
	movs r0, #4
	str r0, [sp, #4]
	adds r0, r6, r5
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r2, _0224E1D8 @ =0x00007FFF
	ldr r3, _0224E1DC @ =0x0000254A
	adds r1, r5, #0
	bl ov17_0224CEE4
	adds r5, r5, #1
	cmp r5, #4
	blt _0224E04A
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E070:
	ldr r0, [r4]
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	bne _0224E092
	movs r1, #0
_0224E080:
	adds r0, r4, r1
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _0224E08E
	adds r1, r1, #1
	cmp r1, #4
	blt _0224E080
_0224E08E:
	cmp r1, #4
	beq _0224E094
_0224E092:
	b _0224E1D0
_0224E094:
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E09E:
	adds r0, r4, #0
	str r0, [sp, #0xc]
	adds r0, #0x18
	movs r6, #0
	str r0, [sp, #0xc]
_0224E0A8:
	adds r0, r4, r6
	adds r0, #0xca
	ldrb r1, [r0]
	movs r2, #0x2c
	adds r7, r1, #0
	muls r7, r2, r7
	ldr r2, [r4]
	lsls r0, r1, #2
	ldr r2, [r2, #0x14]
	adds r5, r4, r7
	ldr r2, [r2, r0]
	str r2, [r5, #0x18]
	ldr r2, [r4]
	adds r0, r2, r0
	ldr r0, [r0, #0x5c]
	str r0, [r5, #0x1c]
	ldr r2, [r4]
	lsls r0, r1, #4
	adds r2, #0x18
	adds r0, r2, r0
	str r0, [r5, #0x20]
	movs r0, #0xb1
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, _0224E1E0 @ =0x00002710
	blx FUN_020E2178
	movs r1, #0x28
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0x64
	blx FUN_020E2178
	strh r0, [r5, #0x26]
	adds r0, r5, #0
	adds r0, #0x24
	strb r6, [r0]
	cmp r6, #0
	bne _0224E0FE
	adds r5, #0x25
	movs r0, #3
	b _0224E102
_0224E0FE:
	subs r0, r6, #1
	adds r5, #0x25
_0224E102:
	ldr r1, [sp, #0xc]
	strb r0, [r5]
	ldr r0, _0224E1E4 @ =ov17_0224E1F4
	ldr r2, _0224E1E8 @ =0x00009CA4
	adds r1, r1, r7
	bl FUN_0200D9E8
	adds r6, r6, #1
	cmp r6, #4
	blt _0224E0A8
	adds r0, r4, #0
	adds r0, #0xf1
	ldrb r1, [r0]
	add r0, sp, #0x10
	strb r1, [r0, #4]
	ldr r0, [r4]
	adds r1, r4, #0
	adds r1, #0xcb
	ldrb r3, [r1]
	ldr r2, [r0]
	ldr r1, _0224E1EC @ =0x00000123
	ldrb r1, [r2, r1]
	cmp r3, r1
	add r2, sp, #0x10
	bne _0224E13C
	movs r1, #4
	bl ov17_0224C5A0
	b _0224E142
_0224E13C:
	movs r1, #5
	bl ov17_0224C5A0
_0224E142:
	ldr r0, _0224E1F0 @ =0x000006F7
	bl FUN_02005748
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E152:
	movs r2, #0
_0224E154:
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224E166
	adds r2, r2, #1
	adds r1, #0x2c
	cmp r2, #4
	blt _0224E154
_0224E166:
	cmp r2, #4
	bne _0224E1D0
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E174:
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r2, _0224E1D4 @ =0x00001FE3
	subs r3, r1, #3
	bl FUN_02003178
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E198:
	ldr r0, [r4]
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	bne _0224E1D0
	ldr r0, [r4]
	movs r1, #1
	bl ov17_0224CDB4
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E1B8:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_0224E1D0:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E1D4: .4byte 0x00001FE3
_0224E1D8: .4byte 0x00007FFF
_0224E1DC: .4byte 0x0000254A
_0224E1E0: .4byte 0x00002710
_0224E1E4: .4byte ov17_0224E1F4
_0224E1E8: .4byte 0x00009CA4
_0224E1EC: .4byte 0x00000123
_0224E1F0: .4byte 0x000006F7
	thumb_func_end ov17_0224DFF8

	thumb_func_start ov17_0224E1F4
ov17_0224E1F4: @ 0x0224E1F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	cmp r1, #0
	beq _0224E208
	cmp r1, #1
	beq _0224E2C4
	b _0224E426
_0224E208:
	ldr r0, [r5, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0xc]
	lsls r0, r0, #8
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0xc]
	bl ov17_0224A0FC
	lsls r4, r0, #8
	ldrb r0, [r5, #0xc]
	bl ov17_0224A10C
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldrb r0, [r5, #0xc]
	bl ov17_0224A120
	lsls r0, r0, #8
	str r0, [sp, #4]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0224E246
	cmp r0, #3
	bne _0224E278
_0224E246:
	cmp r0, #0
	bne _0224E24E
	ldr r0, _0224E434 @ =0xFFFFB000
	b _0224E252
_0224E24E:
	movs r0, #0x59
	lsls r0, r0, #0xa
_0224E252:
	ldrh r1, [r5, #0xe]
	subs r0, r0, r4
	lsrs r1, r1, #1
	blx FUN_020E1F6C
	str r0, [r5, #0x1c]
	ldrh r1, [r5, #0xe]
	movs r0, #0
	lsrs r1, r1, #1
	blx FUN_020E1F6C
	str r0, [r5, #0x20]
	ldrh r1, [r5, #0xe]
	movs r0, #0
	lsrs r1, r1, #1
	blx FUN_020E1F6C
	str r0, [r5, #0x24]
	b _0224E2B4
_0224E278:
	bl ov17_0224A0FC
	lsls r6, r0, #8
	ldrb r0, [r5, #0xd]
	bl ov17_0224A10C
	lsls r0, r0, #8
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A120
	lsls r7, r0, #8
	ldrh r1, [r5, #0xe]
	subs r0, r6, r4
	blx FUN_020E1F6C
	str r0, [r5, #0x1c]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	subs r0, r1, r0
	ldrh r1, [r5, #0xe]
	blx FUN_020E1F6C
	str r0, [r5, #0x20]
	ldr r0, [sp, #4]
	ldrh r1, [r5, #0xe]
	subs r0, r7, r0
	blx FUN_020E1F6C
	str r0, [r5, #0x24]
_0224E2B4:
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r5, #0x2a
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0224E2C4:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x1c]
	adds r0, r1, r0
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x20]
	adds r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x24]
	adds r0, r1, r0
	str r0, [r5, #0x18]
	ldrh r0, [r5, #0x28]
	adds r0, r0, #1
	strh r0, [r5, #0x28]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0224E2EC
	cmp r0, #3
	bne _0224E38E
_0224E2EC:
	ldrh r1, [r5, #0xe]
	ldrh r2, [r5, #0x28]
	lsrs r1, r1, #1
	cmp r2, r1
	bne _0224E3A4
	cmp r0, #0
	bne _0224E314
	ldr r0, _0224E438 @ =0xFFFF9C00
	movs r1, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl FUN_0225B07C
	ldr r0, [r5, #8]
	movs r1, #0x64
	ldr r0, [r0]
	bl FUN_0225B1AC
	b _0224E334
_0224E314:
	bl ov17_0224A0FC
	adds r0, #0x50
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_0225B07C
	ldr r0, [r5, #8]
	movs r1, #0x63
	ldr r0, [r0]
	mvns r1, r1
	bl FUN_0225B1AC
_0224E334:
	ldr r0, [r5]
	movs r1, #2
	bl FUN_020765B8
	adds r4, r0, #0
	ldrb r0, [r5, #0xd]
	bl ov17_0224A10C
	adds r0, r4, r0
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A120
	lsls r0, r0, #8
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A0FC
	ldrh r2, [r5, #0xe]
	ldrh r1, [r5, #0x28]
	lsls r0, r0, #8
	ldr r7, [r5, #0x14]
	subs r1, r2, r1
	subs r4, r1, #1
	ldr r1, [r5, #0x10]
	ldr r6, [r5, #0x18]
	subs r0, r0, r1
	adds r1, r4, #0
	blx FUN_020E1F6C
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	adds r1, r4, #0
	subs r0, r7, r0
	blx FUN_020E1F6C
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x18]
	adds r1, r4, #0
	subs r0, r6, r0
	blx FUN_020E1F6C
	str r0, [r5, #0x24]
	b _0224E3A4
_0224E38E:
	bl ov17_0224A0FC
	ldr r1, [r5, #0x10]
	lsls r0, r0, #8
	cmp r1, r0
	bge _0224E3A4
	ldrb r0, [r5, #0xd]
	bl ov17_0224A0FC
	lsls r0, r0, #8
	str r0, [r5, #0x10]
_0224E3A4:
	ldrh r1, [r5, #0x28]
	ldrh r0, [r5, #0xe]
	cmp r1, r0
	blo _0224E3E4
	ldr r0, [r5]
	movs r1, #2
	bl FUN_020765B8
	adds r4, r0, #0
	ldrb r0, [r5, #0xd]
	bl ov17_0224A0FC
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A10C
	adds r0, r4, r0
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A120
	lsls r0, r0, #8
	str r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x2a
	strb r1, [r0]
_0224E3E4:
	ldr r1, [r5, #0x10]
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	ldr r0, [r5, #8]
	str r1, [r0, #4]
	ldr r1, [r5, #0x14]
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	ldr r0, [r5, #8]
	str r1, [r0, #8]
	ldr r1, [r5, #0x18]
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	ldr r0, [r5, #8]
	str r1, [r0, #0xc]
	ldr r2, [r5, #8]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl FUN_0225B100
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	bl ov17_0224B09C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224E426:
	movs r1, #1
	adds r5, #0x2b
	strb r1, [r5]
	bl FUN_0200DA58
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224E434: .4byte 0xFFFFB000
_0224E438: .4byte 0xFFFF9C00
	thumb_func_end ov17_0224E1F4

	thumb_func_start ov17_0224E43C
ov17_0224E43C: @ 0x0224E43C
	push {r3, lr}
	movs r1, #0x3c
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224E43C

	thumb_func_start ov17_0224E450
ov17_0224E450: @ 0x0224E450
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x17
	movs r1, #0x50
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x50
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	adds r3, r4, #0
	str r0, [r4]
	ldrh r0, [r5]
	adds r3, #0x10
	movs r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224E488:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224E488
	ldr r0, [r6]
	ldr r2, _0224E4A0 @ =0x00007530
	str r0, [r3]
	ldr r0, _0224E4A4 @ =ov17_0224E4A8
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E4A0: .4byte 0x00007530
_0224E4A4: .4byte ov17_0224E4A8
	thumb_func_end ov17_0224E450

	thumb_func_start ov17_0224E4A8
ov17_0224E4A8: @ 0x0224E4A8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224E4F8
	movs r4, #0
_0224E4BA:
	adds r1, r5, r4
	ldrb r1, [r1, #0x12]
	ldr r0, [r5]
	adds r2, r4, #0
	bl ov17_0224BC68
	adds r4, r4, #1
	cmp r4, #4
	blt _0224E4BA
	ldr r1, [r5]
	ldr r0, _0224E514 @ =0x0000114C
	movs r3, #0
	ldr r0, [r1, r0]
	movs r1, #1
	adds r2, r1, #0
	bl ov17_02249640
	ldr r1, [r5]
	ldr r0, _0224E514 @ =0x0000114C
	movs r2, #6
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov17_0224A0E0
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	adds r5, #0x4c
	adds r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_0224E4F8:
	movs r2, #0
	ldr r0, [r5, #0xc]
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	nop
_0224E514: .4byte 0x0000114C
	thumb_func_end ov17_0224E4A8

	thumb_func_start ov17_0224E518
ov17_0224E518: @ 0x0224E518
	push {r3, lr}
	movs r1, #0x3c
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224E518

	thumb_func_start ov17_0224E52C
ov17_0224E52C: @ 0x0224E52C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x17
	movs r1, #0x50
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x50
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	adds r3, r4, #0
	str r0, [r4]
	ldrh r0, [r5]
	adds r3, #0x10
	movs r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224E564:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224E564
	ldr r0, [r6]
	ldr r2, _0224E57C @ =0x00007530
	str r0, [r3]
	ldr r0, _0224E580 @ =ov17_0224E584
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E57C: .4byte 0x00007530
_0224E580: .4byte ov17_0224E584
	thumb_func_end ov17_0224E52C

	thumb_func_start ov17_0224E584
ov17_0224E584: @ 0x0224E584
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224E59A
	cmp r0, #1
	beq _0224E5D2
	b _0224E60A
_0224E59A:
	ldr r0, [r5]
	bl ov17_0224B5C8
	cmp r0, #0
	beq _0224E640
	movs r4, #0
	movs r6, #2
	movs r7, #5
_0224E5AA:
	ldr r0, [r5]
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov17_0224BD28
	ldr r0, [r5]
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov17_0224BD28
	adds r4, r4, #1
	cmp r4, #4
	blt _0224E5AA
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	adds r5, #0x4c
	adds r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224E5D2:
	movs r6, #0
	adds r4, r6, #0
_0224E5D6:
	ldr r0, [r5]
	adds r1, r4, #0
	bl ov17_0224BDF0
	cmp r0, #1
	bne _0224E5E4
	adds r6, r6, #1
_0224E5E4:
	ldr r0, [r5]
	adds r1, r4, #0
	bl ov17_0224BE24
	adds r4, r4, #1
	cmp r4, #4
	blt _0224E5D6
	cmp r6, #4
	blt _0224E640
	ldr r0, [r5]
	bl ov17_0224BD00
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	adds r5, #0x4c
	adds r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224E60A:
	ldr r1, [r5]
	ldr r0, _0224E644 @ =0x0000114C
	movs r2, #1
	ldr r0, [r1, r0]
	movs r1, #0
	adds r3, r1, #0
	bl ov17_02249640
	ldr r1, [r5]
	ldr r0, _0224E644 @ =0x0000114C
	ldr r0, [r1, r0]
	movs r1, #0
	adds r2, r1, #0
	bl ov17_0224A0E0
	movs r2, #0
	ldr r0, [r5, #0xc]
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_0224E640:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E644: .4byte 0x0000114C
	thumb_func_end ov17_0224E584

	thumb_func_start ov17_0224E648
ov17_0224E648: @ 0x0224E648
	push {r3, lr}
	movs r1, #0x3c
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224E648

	thumb_func_start ov17_0224E65C
ov17_0224E65C: @ 0x0224E65C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x17
	movs r1, #0x20
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x20
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	ldr r2, _0224E6C0 @ =0x00007530
	str r0, [r4]
	ldrh r0, [r6]
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #0x30]
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x34]
	strh r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	adds r5, #0x37
	strb r0, [r4, #0x1c]
	ldrb r0, [r5]
	strb r0, [r4, #0x1b]
	ldr r0, _0224E6C4 @ =ov17_0224E6C8
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E6C0: .4byte 0x00007530
_0224E6C4: .4byte ov17_0224E6C8
	thumb_func_end ov17_0224E65C

	thumb_func_start ov17_0224E6C8
ov17_0224E6C8: @ 0x0224E6C8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224E6DE
	cmp r0, #1
	beq _0224E716
	cmp r0, #2
	beq _0224E728
	b _0224E760
_0224E6DE:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _0224E710
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0x78
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200E060
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x74]
	bl FUN_0201C3C0
	adds r2, r4, #0
	ldrb r1, [r4, #0x1a]
	ldr r0, [r4]
	adds r2, #0x14
	bl ov17_0224C2CC
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E710:
	movs r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E716:
	ldr r0, [r4]
	bl ov17_0224C300
	cmp r0, #0
	bne _0224E778
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E728:
	ldrb r0, [r4, #0x12]
	adds r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _0224E73C
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E73C:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x1b]
	cmp r1, r0
	blo _0224E778
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0x78
	bl FUN_0200E084
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x74]
	bl FUN_0201C3C0
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E760:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_0224E778:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_0224E6C8

	thumb_func_start ov17_0224E77C
ov17_0224E77C: @ 0x0224E77C
	push {r3, lr}
	movs r1, #0x30
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224E77C

	thumb_func_start ov17_0224E790
ov17_0224E790: @ 0x0224E790
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0224E7B0 @ =0x00000AEC
	movs r5, #6
	adds r6, r1, r0
_0224E79A:
	ldm r3!, {r0, r1}
	stm r6!, {r0, r1}
	subs r5, r5, #1
	bne _0224E79A
	adds r1, r2, #0
	movs r2, #0
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov17_0224F26C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224E7B0: .4byte 0x00000AEC
	thumb_func_end ov17_0224E790

	thumb_func_start ov17_0224E7B4
ov17_0224E7B4: @ 0x0224E7B4
	push {r3, lr}
	movs r1, #0x3c
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224E7B4

	thumb_func_start ov17_0224E7C8
ov17_0224E7C8: @ 0x0224E7C8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r3, #0
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl FUN_0200569C
	ldrh r0, [r4, #0x24]
	bl FUN_0200549C
	ldr r0, _0224E7FC @ =0x00001150
	movs r1, #1
	strb r1, [r5, r0]
	adds r1, r0, #4
	adds r0, #0xc
	adds r1, r5, r1
	ldm r1!, {r2, r3}
	adds r0, r5, r0
	stm r0!, {r2, r3}
	movs r2, #0
	adds r0, r6, #0
	adds r1, r7, #0
	adds r3, r2, #0
	bl ov17_0224F26C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E7FC: .4byte 0x00001150
	thumb_func_end ov17_0224E7C8

	thumb_func_start ov17_0224E800
ov17_0224E800: @ 0x0224E800
	push {r3, lr}
	movs r1, #0x3c
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0224E800

	thumb_func_start ov17_0224E814
ov17_0224E814: @ 0x0224E814
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x17
	movs r1, #0x54
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x54
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	adds r3, r4, #0
	str r0, [r4]
	ldrh r0, [r5]
	adds r3, #0x10
	movs r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224E84C:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224E84C
	ldr r0, [r6]
	ldr r2, _0224E864 @ =0x00007530
	str r0, [r3]
	ldr r0, _0224E868 @ =ov17_0224E86C
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E864: .4byte 0x00007530
_0224E868: .4byte ov17_0224E86C
	thumb_func_end ov17_0224E814

	thumb_func_start ov17_0224E86C
ov17_0224E86C: @ 0x0224E86C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0224E90A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224E888: @ jump table
	.2byte _0224E892 - _0224E888 - 2 @ case 0
	.2byte _0224E8A8 - _0224E888 - 2 @ case 1
	.2byte _0224E8C0 - _0224E888 - 2 @ case 2
	.2byte _0224E8D4 - _0224E888 - 2 @ case 3
	.2byte _0224E8F0 - _0224E888 - 2 @ case 4
_0224E892:
	ldr r1, [r4]
	ldr r0, _0224E924 @ =0x00001150
	movs r2, #0
	strb r2, [r1, r0]
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	adds r4, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8A8:
	ldrh r0, [r4, #0x34]
	bl FUN_02005690
	cmp r0, #0
	bne _0224E922
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	adds r4, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8C0:
	ldr r0, [r4]
	bl ov17_0224CE28
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	adds r4, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8D4:
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	cmp r0, #0x3c
	bls _0224E922
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	adds r4, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8F0:
	ldr r0, _0224E928 @ =0x0000046F
	bl FUN_0200549C
	ldr r0, _0224E92C @ =0x000006E5
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	adds r4, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E90A:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_0224E922:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224E924: .4byte 0x00001150
_0224E928: .4byte 0x0000046F
_0224E92C: .4byte 0x000006E5
	thumb_func_end ov17_0224E86C

	thumb_func_start ov17_0224E930
ov17_0224E930: @ 0x0224E930
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	movs r1, #0
	movs r2, #0x3c
	adds r7, r3, #0
	blx FUN_020C4CF4
	adds r0, r5, #0
	adds r0, #0x37
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r6, [r0]
	str r7, [r5, #0x30]
	ldr r0, [sp, #0x18]
	adds r5, #0x39
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224E930

	thumb_func_start ov17_0224E958
ov17_0224E958: @ 0x0224E958
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x30]
	movs r2, #0x3c
	str r1, [sp]
	adds r1, r5, #0
	adds r1, #0x37
	ldrb r7, [r1]
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r6, [r1]
	adds r1, r5, #0
	adds r1, #0x39
	ldrb r4, [r1]
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	str r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0x37
	strb r7, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r6, [r0]
	adds r5, #0x39
	strb r4, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224E958

	thumb_func_start ov17_0224E990
ov17_0224E990: @ 0x0224E990
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	ldr r0, _0224EBCC @ =0x00000B1B
	adds r4, r1, #0
	ldrb r0, [r7, r0]
	movs r1, #4
	str r3, [sp]
	bl ov17_0223F0BC
	str r0, [sp, #8]
	ldr r0, _0224EBCC @ =0x00000B1B
	ldrb r0, [r7, r0]
	cmp r0, #0
	bne _0224E9C0
	ldr r0, [sp]
	ldr r1, _0224EBD0 @ =0x00001388
	lsrs r0, r0, #2
	adds r0, r0, r1
	lsls r1, r1, #1
	blx FUN_020E2178
	str r0, [sp, #0xc]
	b _0224E9D4
_0224E9C0:
	ldr r0, [sp]
	movs r1, #6
	blx FUN_020E2178
	ldr r1, _0224EBD0 @ =0x00001388
	adds r0, r0, r1
	lsls r1, r1, #1
	blx FUN_020E2178
	str r0, [sp, #0xc]
_0224E9D4:
	movs r0, #0x12
	ldr r1, [r7]
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224E9E4
	cmp r0, #1
	bne _0224E9FA
_0224E9E4:
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [sp, #0x14]
	b _0224EA0E
_0224E9FA:
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r0, r1, #1
	str r0, [sp, #0x14]
	ldr r0, [sp]
	lsrs r0, r0, #1
	str r0, [sp]
_0224EA0E:
	ldr r2, [sp, #8]
	movs r5, #0
	lsrs r3, r2, #0x1f
	adds r3, r2, r3
	adds r1, r5, #0
	add r0, sp, #0x2c
	asrs r2, r3, #1
	b _0224EA22
_0224EA1E:
	strb r1, [r0, r5]
	adds r5, r5, #1
_0224EA22:
	cmp r5, r2
	blt _0224EA1E
	ldr r0, [sp, #0x14]
	movs r6, #0
	subs r0, r0, #1
	str r0, [sp, #0x1c]
	adds r0, r4, #0
	str r0, [sp, #0x18]
	adds r0, #0x30
	str r0, [sp, #0x18]
_0224EA36:
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x18]
	bl FUN_02094EA0
	ldr r1, [sp, #0x14]
	blx FUN_020E1F6C
	adds r5, r1, #0
	beq _0224EA36
	add r0, sp, #0x2c
	ldrb r0, [r0, r5]
	cmp r0, #0
	bne _0224EA36
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0224EA90
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bne _0224EA66
	subs r1, r5, #1
	add r0, sp, #0x2c
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224EA36
_0224EA66:
	subs r1, r5, #1
	add r0, sp, #0x2c
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224EA36
	adds r1, r5, #1
	add r0, sp, #0x2c
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224EA36
	movs r0, #1
	tst r0, r5
	beq _0224EA90
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x18]
	bl FUN_02094EA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	blt _0224EA36
_0224EA90:
	movs r1, #1
	add r0, sp, #0x2c
	strb r1, [r0, r5]
	ldr r0, _0224EBD4 @ =0x00000B1A
	adds r6, r6, #1
	ldrb r0, [r7, r0]
	cmp r6, r0
	blt _0224EA36
	ldr r0, [sp, #8]
	movs r6, #0
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r0, r1, #1
	adds r5, r6, #0
	str r0, [sp, #0x20]
	b _0224EAD0
_0224EAB0:
	add r0, sp, #0x2c
	ldrb r0, [r0, r5]
	cmp r0, #1
	bne _0224EACE
	ldr r0, [sp]
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _0224EBD0 @ =0x00001388
	adds r0, r1, r0
	ldr r1, _0224EBD8 @ =0x00002710
	blx FUN_020E2178
	lsls r1, r6, #2
	str r0, [r4, r1]
	adds r6, r6, #1
_0224EACE:
	adds r5, r5, #1
_0224EAD0:
	ldr r0, [sp, #0x20]
	cmp r5, r0
	blt _0224EAB0
	movs r0, #0x12
	ldr r1, [r7]
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0x39
	ldrb r1, [r1]
	bl ov17_0224EBE0
	adds r6, r0, #0
	adds r0, r4, #0
	str r0, [sp, #0x24]
	adds r0, #0x30
	str r0, [sp, #0x24]
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	adds r0, r0, #1
	movs r5, #0
	str r0, [sp, #0x28]
	b _0224EB3A
_0224EB00:
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x24]
	bl FUN_02094EA0
	adds r1, r6, #2
	blx FUN_020E1F6C
	lsls r0, r5, #2
	ldr r0, [r4, r0]
	adds r1, r0, r1
	ldr r0, [sp, #0x28]
	subs r3, r1, r0
	bpl _0224EB1C
	movs r3, #0
_0224EB1C:
	lsls r0, r5, #2
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	subs r2, r3, r1
	cmp r2, r0
	blo _0224EB2C
	adds r0, r0, r1
	subs r3, r0, #1
_0224EB2C:
	lsls r0, r5, #2
	adds r1, r4, r5
	str r3, [r4, r0]
	adds r1, #0x28
	movs r0, #1
	strb r0, [r1]
	adds r5, r5, #1
_0224EB3A:
	ldr r0, _0224EBD4 @ =0x00000B1A
	ldrb r0, [r7, r0]
	cmp r5, r0
	blt _0224EB00
	movs r0, #0x12
	ldr r1, [r7]
	lsls r0, r0, #4
	ldrb r1, [r1, r0]
	ldr r0, _0224EBDC @ =0x02254A84
	ldrb r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x30
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	bl FUN_02094EA0
	adds r6, r4, #0
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r4, #0
	adds r1, r2, r1
	adds r0, #0x20
	strb r1, [r0]
	movs r5, #1
	adds r6, #0x30
	b _0224EBBE
_0224EB74:
	ldr r0, _0224EBD4 @ =0x00000B1A
	ldrb r0, [r7, r0]
	subs r0, r0, #1
	cmp r5, r0
	bge _0224EBA2
	ldr r0, [r4, #0x30]
	adds r1, r6, #0
	bl FUN_02094EA0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r0, [sp, #4]
	cmp r0, r1
	ble _0224EBA2
	subs r0, r5, #1
	adds r0, r4, r0
	adds r0, #0x20
	ldrb r1, [r0]
	adds r0, r4, r5
	adds r0, #0x20
	strb r1, [r0]
	b _0224EBBC
_0224EBA2:
	ldr r0, [r4, #0x30]
	adds r1, r6, #0
	bl FUN_02094EA0
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x1e
	subs r2, r2, r1
	movs r0, #0x1e
	rors r2, r0
	adds r0, r4, r5
	adds r1, r1, r2
	adds r0, #0x20
	strb r1, [r0]
_0224EBBC:
	adds r5, r5, #1
_0224EBBE:
	ldr r0, _0224EBD4 @ =0x00000B1A
	ldrb r0, [r7, r0]
	cmp r5, r0
	blt _0224EB74
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0224EBCC: .4byte 0x00000B1B
_0224EBD0: .4byte 0x00001388
_0224EBD4: .4byte 0x00000B1A
_0224EBD8: .4byte 0x00002710
_0224EBDC: .4byte 0x02254A84
	thumb_func_end ov17_0224E990

	thumb_func_start ov17_0224EBE0
ov17_0224EBE0: @ 0x0224EBE0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #4
	blo _0224EBEE
	bl FUN_02022974
_0224EBEE:
	ldr r0, _0224EC20 @ =0x02254A80
	cmp r4, #3
	ldrsb r0, [r0, r5]
	bhi _0224EC16
	adds r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224EC02: @ jump table
	.2byte _0224EC0A - _0224EC02 - 2 @ case 0
	.2byte _0224EC1C - _0224EC02 - 2 @ case 1
	.2byte _0224EC0E - _0224EC02 - 2 @ case 2
	.2byte _0224EC16 - _0224EC02 - 2 @ case 3
_0224EC0A:
	lsls r0, r0, #1
	pop {r3, r4, r5, pc}
_0224EC0E:
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r0, r1, #1
	pop {r3, r4, r5, pc}
_0224EC16:
	movs r1, #3
	blx FUN_020E1F6C
_0224EC1C:
	pop {r3, r4, r5, pc}
	nop
_0224EC20: .4byte 0x02254A80
	thumb_func_end ov17_0224EBE0

	thumb_func_start ov17_0224EC24
ov17_0224EC24: @ 0x0224EC24
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	str r2, [sp]
	ldr r4, [sp, #0x18]
	cmp r0, #4
	blo _0224EC3A
	bl FUN_02022974
_0224EC3A:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _0224EC5A
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0224EC52
	movs r1, #1
	adds r0, r6, #0
	ands r0, r1
	ands r1, r4
	cmp r0, r1
_0224EC52:
	subs r0, r6, r4
	cmp r0, #4
	subs r0, r6, r4
	cmp r0, #8
_0224EC5A:
	ldr r1, _0224ECC0 @ =0x02254A80
	ldr r0, [sp]
	cmp r7, #3
	ldrsb r0, [r1, r0]
	bhi _0224EC9E
	adds r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224EC70: @ jump table
	.2byte _0224EC78 - _0224EC70 - 2 @ case 0
	.2byte _0224EC7C - _0224EC70 - 2 @ case 1
	.2byte _0224EC80 - _0224EC70 - 2 @ case 2
	.2byte _0224EC9E - _0224EC70 - 2 @ case 3
_0224EC78:
	lsls r0, r0, #1
	b _0224ECB6
_0224EC7C:
	lsls r0, r0, #1
	b _0224ECB6
_0224EC80:
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _0224EC94
	cmp r5, #2
	beq _0224EC8E
	cmp r5, #3
	bne _0224EC94
_0224EC8E:
	lsls r1, r0, #1
	adds r0, r0, r1
	b _0224ECB6
_0224EC94:
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	adds r0, r0, r1
	b _0224ECB6
_0224EC9E:
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _0224ECB6
	cmp r5, #2
	beq _0224ECAC
	cmp r5, #3
	bne _0224ECB6
_0224ECAC:
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	lsls r0, r0, #1
	adds r0, r1, r0
_0224ECB6:
	cmp r0, #0
	bge _0224ECBC
	movs r0, #0
_0224ECBC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ECC0: .4byte 0x02254A80
	thumb_func_end ov17_0224EC24

	thumb_func_start ov17_0224ECC4
ov17_0224ECC4: @ 0x0224ECC4
	push {r3, r4, r5, r6}
	adds r6, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r5, r3, #0
	movs r4, #0
	ldr r2, [sp, #0x14]
	cmp r1, #3
	bhi _0224ED08
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224ECE2: @ jump table
	.2byte _0224ECEA - _0224ECE2 - 2 @ case 0
	.2byte _0224ECF2 - _0224ECE2 - 2 @ case 1
	.2byte _0224ECFA - _0224ECE2 - 2 @ case 2
	.2byte _0224ED02 - _0224ECE2 - 2 @ case 3
_0224ECEA:
	cmp r2, #1
	bne _0224ED08
	adds r4, r4, #3
	b _0224ED08
_0224ECF2:
	cmp r2, #2
	bne _0224ED08
	adds r4, r4, #3
	b _0224ED08
_0224ECFA:
	cmp r2, #4
	bne _0224ED08
	adds r4, r4, #3
	b _0224ED08
_0224ED02:
	cmp r2, #3
	bne _0224ED08
	adds r4, r4, #3
_0224ED08:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0224ED14
	cmp r2, r1
	beq _0224ED14
	adds r4, #8
_0224ED14:
	movs r1, #0
	ldr r3, [sp, #0x10]
	mvns r1, r1
	cmp r3, r1
	beq _0224ED36
	movs r1, #1
	adds r2, r5, #0
	ands r2, r1
	ands r1, r3
	cmp r2, r1
	beq _0224ED2C
	adds r4, r4, #2
_0224ED2C:
	ldr r1, [sp, #0x10]
	subs r1, r5, r1
	cmp r1, #8
	blt _0224ED36
	adds r4, r4, #5
_0224ED36:
	cmp r6, #3
	bhi _0224ED70
	adds r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224ED46: @ jump table
	.2byte _0224ED4E - _0224ED46 - 2 @ case 0
	.2byte _0224ED52 - _0224ED46 - 2 @ case 1
	.2byte _0224ED56 - _0224ED46 - 2 @ case 2
	.2byte _0224ED70 - _0224ED46 - 2 @ case 3
_0224ED4E:
	lsls r4, r4, #1
	b _0224ED84
_0224ED52:
	lsls r4, r4, #1
	b _0224ED84
_0224ED56:
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _0224ED66
	subs r0, r0, #2
	cmp r0, #1
	bhi _0224ED66
	lsls r4, r4, #1
	b _0224ED84
_0224ED66:
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	adds r4, r4, r0
	b _0224ED84
_0224ED70:
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _0224ED84
	subs r0, r0, #2
	cmp r0, #1
	bhi _0224ED84
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	adds r4, r4, r0
_0224ED84:
	adds r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224ECC4

	thumb_func_start ov17_0224ED8C
ov17_0224ED8C: @ 0x0224ED8C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r2, #0
	adds r4, #0x38
	ldrb r4, [r4]
	cmp r4, #0
	bne _0224EDBA
	cmp r0, #0
	bne _0224EDBA
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x18]
	bl ov17_0224EDE0
	add sp, #0xc
	pop {r3, r4, pc}
_0224EDBA:
	cmp r4, #0
	beq _0224EDDA
	cmp r0, #1
	bne _0224EDDA
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x18]
	bl ov17_0224EE90
_0224EDDA:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov17_0224ED8C

	thumb_func_start ov17_0224EDE0
ov17_0224EDE0: @ 0x0224EDE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r1, #0
	adds r7, r0, #0
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r3, [r0]
	cmp r3, #0
	bne _0224EE82
	ldr r0, [sp, #0x44]
	adds r1, #0x36
	ldrb r0, [r0, #5]
	ldrb r1, [r1]
	cmp r1, r0
	bhs _0224EE82
	movs r5, #0x34
	ldrsh r5, [r4, r5]
	cmp r5, #0
	ble _0224EE0E
	subs r0, r5, #1
	add sp, #0x28
	strh r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0224EE0E:
	movs r5, #0
_0224EE10:
	adds r6, r4, r5
	adds r6, #0x28
	ldrb r6, [r6]
	cmp r6, #1
	beq _0224EE20
	adds r5, r5, #1
	cmp r5, #8
	blt _0224EE10
_0224EE20:
	cmp r5, #8
	bge _0224EE82
	lsls r6, r5, #2
	ldr r6, [r4, r6]
	cmp r6, r2
	bhi _0224EE82
	ldr r6, [sp, #0x44]
	adds r6, #8
	str r6, [sp]
	add r6, sp, #0x1c
	str r6, [sp, #4]
	movs r6, #0
	str r6, [sp, #8]
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, _0224EE88 @ =0x00000B1B
	adds r1, r4, r5
	ldrb r0, [r7, r0]
	adds r1, #0x20
	ldr r3, [sp, #0x40]
	str r0, [sp, #0x18]
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	ldrb r1, [r1]
	bl ov17_0224DE54
	ldr r0, [sp, #0x48]
	add r1, sp, #0x1c
	bl ov17_0224D6B0
	adds r0, r4, r5
	adds r1, r6, #0
	adds r0, #0x28
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x36
	strb r1, [r0]
	ldr r0, [sp, #0x40]
	ldr r1, _0224EE8C @ =0x00002710
	blx FUN_020E2178
	subs r0, r0, #2
	strh r0, [r4, #0x34]
_0224EE82:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224EE88: .4byte 0x00000B1B
_0224EE8C: .4byte 0x00002710
	thumb_func_end ov17_0224EDE0

	thumb_func_start ov17_0224EE90
ov17_0224EE90: @ 0x0224EE90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r6, r0, #0
	ldr r0, [sp, #0x64]
	adds r5, r1, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x60]
	str r2, [sp, #0x1c]
	lsrs r0, r0, #1
	str r0, [sp, #0x38]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224EECC
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	ldr r0, [sp, #0x64]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bhs _0224EECC
	movs r0, #0xa
	muls r0, r1, r0
	ldr r2, _0224F068 @ =0x00001BBC
	adds r4, r6, r0
	ldrb r2, [r4, r2]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1f
	bne _0224EECE
_0224EECC:
	b _0224F062
_0224EECE:
	movs r7, #0x34
	ldrsh r2, [r5, r7]
	cmp r2, #0
	ble _0224EEDE
	subs r0, r2, #1
	add sp, #0x48
	strh r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0224EEDE:
	ldr r2, _0224F068 @ =0x00001BBC
	subs r2, #8
	adds r2, r6, r2
	adds r4, r2, r0
	ldr r0, [sp, #0x1c]
	lsrs r2, r3, #1
	subs r0, r0, r2
	str r0, [sp, #0x34]
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224EEF6
	b _0224EFF8
_0224EEF6:
	cmp r1, #0
	bne _0224EF02
	movs r0, #0
	subs r7, #0x35
	str r0, [sp, #0x20]
	b _0224EF18
_0224EF02:
	subs r1, r1, #1
	movs r0, #0xa
	muls r0, r1, r0
	ldr r1, _0224F068 @ =0x00001BBC
	adds r0, r6, r0
	subs r1, r1, #2
	ldrb r7, [r0, r1]
	ldr r1, _0224F068 @ =0x00001BBC
	subs r1, r1, #5
	ldrb r0, [r0, r1]
	str r0, [sp, #0x20]
_0224EF18:
	ldr r1, [r6]
	ldr r0, _0224F06C @ =0x00000B1B
	str r7, [sp]
	ldrb r0, [r6, r0]
	movs r2, #0x12
	lsls r2, r2, #4
	str r0, [sp, #4]
	ldr r0, _0224F070 @ =0x00001C0E
	ldrb r0, [r6, r0]
	str r0, [sp, #8]
	ldrb r0, [r1, r2]
	subs r2, r2, #1
	ldrb r1, [r1, r2]
	adds r2, r5, #0
	adds r2, #0x39
	ldrb r2, [r2]
	ldrb r3, [r4, #6]
	bl ov17_0224EC24
	ldr r1, [r6]
	str r0, [sp, #0x2c]
	str r7, [sp]
	ldrb r0, [r4, #3]
	movs r2, #0x12
	lsls r2, r2, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, _0224F070 @ =0x00001C0E
	ldrb r0, [r6, r0]
	str r0, [sp, #0xc]
	ldrb r0, [r1, r2]
	subs r2, r2, #1
	ldrb r1, [r1, r2]
	adds r2, r5, #0
	adds r2, #0x39
	ldrb r2, [r2]
	ldrb r3, [r4, #6]
	bl ov17_0224ECC4
	str r0, [sp, #0x28]
	ldrb r1, [r4, #6]
	ldr r0, [sp, #0x38]
	muls r0, r1, r0
	ldr r1, _0224F074 @ =0x00001388
	adds r0, r0, r1
	lsls r1, r1, #1
	blx FUN_020E2178
	adds r7, r0, #0
	adds r1, r5, #0
	ldr r0, [r5, #0x30]
	adds r1, #0x30
	bl FUN_02094EA0
	ldr r1, [sp, #0x2c]
	adds r1, r1, #2
	blx FUN_020E1F6C
	ldr r0, [sp, #0x2c]
	lsrs r2, r0, #0x1f
	adds r2, r0, r2
	asrs r0, r2, #1
	adds r0, r0, #1
	subs r0, r1, r0
	adds r0, r0, r7
	str r0, [sp, #0x30]
	bpl _0224EFA4
	movs r0, #0
	str r0, [sp, #0x30]
_0224EFA4:
	adds r1, r5, #0
	ldr r0, [r5, #0x30]
	adds r1, #0x30
	bl FUN_02094EA0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	adds r0, r2, r0
	cmp r1, r0
	bge _0224EFE4
	adds r7, r5, #0
	adds r7, #0x30
_0224EFC2:
	ldr r0, [r5, #0x30]
	adds r1, r7, #0
	bl FUN_02094EA0
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x1e
	subs r2, r2, r1
	movs r0, #0x1e
	rors r2, r0
	adds r0, r1, r2
	str r0, [sp, #0x24]
	bl ov17_0224DD28
	ldrb r1, [r4, #3]
	cmp r1, r0
	beq _0224EFC2
	b _0224EFEC
_0224EFE4:
	ldrb r0, [r4, #3]
	bl ov17_0224DD5C
	str r0, [sp, #0x24]
_0224EFEC:
	ldr r0, [sp, #0x30]
	str r0, [r5]
	ldr r0, [sp, #0x24]
	strb r0, [r5, #4]
	movs r0, #1
	strb r0, [r5, #5]
_0224EFF8:
	ldr r1, [r5]
	ldr r0, [sp, #0x34]
	cmp r1, r0
	bhi _0224F062
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x1c]
	adds r0, #8
	str r0, [sp]
	add r0, sp, #0x3c
	str r0, [sp, #4]
	ldr r0, _0224F078 @ =0x00001BB4
	ldr r3, [sp, #0x60]
	adds r0, r6, r0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x64]
	ldrb r0, [r0, #5]
	str r0, [sp, #0x14]
	ldr r0, _0224F06C @ =0x00000B1B
	ldrb r0, [r6, r0]
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	ldrb r1, [r5, #4]
	bl ov17_0224DE54
	ldr r0, [sp, #0x68]
	add r1, sp, #0x3c
	bl ov17_0224D6B0
	movs r0, #0
	strb r0, [r5, #5]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x36
	strb r1, [r0]
	ldr r0, [sp, #0x60]
	ldr r1, _0224F07C @ =0x00002710
	blx FUN_020E2178
	subs r0, r0, #2
	strh r0, [r5, #0x34]
_0224F062:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F068: .4byte 0x00001BBC
_0224F06C: .4byte 0x00000B1B
_0224F070: .4byte 0x00001C0E
_0224F074: .4byte 0x00001388
_0224F078: .4byte 0x00001BB4
_0224F07C: .4byte 0x00002710
	thumb_func_end ov17_0224EE90

	thumb_func_start ov17_0224F080
ov17_0224F080: @ 0x0224F080
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #5
	blo _0224F08C
	bl FUN_02022974
_0224F08C:
	ldr r0, _0224F094 @ =0x02254A90
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_0224F094: .4byte 0x02254A90
	thumb_func_end ov17_0224F080

	thumb_func_start ov17_0224F098
ov17_0224F098: @ 0x0224F098
	movs r0, #0x31
	bx lr
	thumb_func_end ov17_0224F098

	thumb_func_start ov17_0224F09C
ov17_0224F09C: @ 0x0224F09C
	movs r0, #0x32
	bx lr
	thumb_func_end ov17_0224F09C

	thumb_func_start ov17_0224F0A0
ov17_0224F0A0: @ 0x0224F0A0
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #5
	blo _0224F0AC
	bl FUN_02022974
_0224F0AC:
	ldr r0, _0224F0B4 @ =0x02254A88
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_0224F0B4: .4byte 0x02254A88
	thumb_func_end ov17_0224F0A0

	thumb_func_start ov17_0224F0B8
ov17_0224F0B8: @ 0x0224F0B8
	movs r0, #0x2e
	bx lr
	thumb_func_end ov17_0224F0B8

	thumb_func_start ov17_0224F0BC
ov17_0224F0BC: @ 0x0224F0BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r3, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl ov17_0224F0B8
	str r0, [sp, #0xc]
	adds r0, r7, #0
	bl ov17_0224F080
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0200CBDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0224F0BC

	thumb_func_start ov17_0224F0F0
ov17_0224F0F0: @ 0x0224F0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov17_0224F0B8
	str r0, [sp, #8]
	bl ov17_0224F098
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	str r6, [sp, #4]
	bl FUN_0200CE0C
	bl ov17_0224F0B8
	adds r6, r0, #0
	bl ov17_0224F09C
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	str r7, [sp, #4]
	bl FUN_0200CE3C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224F0F0

	thumb_func_start ov17_0224F138
ov17_0224F138: @ 0x0224F138
	ldr r3, _0224F13C @ =FUN_0200D070
	bx r3
	.align 2, 0
_0224F13C: .4byte FUN_0200D070
	thumb_func_end ov17_0224F138

	thumb_func_start ov17_0224F140
ov17_0224F140: @ 0x0224F140
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	bl FUN_0200D090
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200D0A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224F140

	thumb_func_start ov17_0224F154
ov17_0224F154: @ 0x0224F154
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r6, r3, #0
	adds r4, r0, #0
	adds r7, r1, #0
	add r5, sp, #0
	movs r3, #6
_0224F162:
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	subs r3, r3, #1
	bne _0224F162
	ldr r0, [r6]
	str r0, [r5]
	adds r0, r2, #0
	bl ov17_0224F0A0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r7, #0
	add r2, sp, #0
	bl FUN_0200CE6C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224F154

	thumb_func_start ov17_0224F184
ov17_0224F184: @ 0x0224F184
	ldr r3, _0224F188 @ =FUN_0200D0F4
	bx r3
	.align 2, 0
_0224F188: .4byte FUN_0200D0F4
	thumb_func_end ov17_0224F184

	thumb_func_start ov17_0224F18C
ov17_0224F18C: @ 0x0224F18C
	push {r3, r4, r5, lr}
	ldr r2, _0224F1B0 @ =0x00000A18
	adds r4, r1, #0
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r4]
	str r0, [r5]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	ldrb r0, [r4, #6]
	strb r0, [r5, #6]
	ldrb r0, [r4, #7]
	strb r0, [r5, #7]
	ldrb r0, [r4, #8]
	strb r0, [r5, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224F1B0: .4byte 0x00000A18
	thumb_func_end ov17_0224F18C

	thumb_func_start ov17_0224F1B4
ov17_0224F1B4: @ 0x0224F1B4
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0xc]
	movs r4, #0
	movs r2, #1
_0224F1BC:
	adds r3, r2, #0
	lsls r3, r4
	adds r1, r5, #0
	tst r1, r3
	bne _0224F1D0
	ldr r1, [r0, #0xc]
	orrs r1, r3
	str r1, [r0, #0xc]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0224F1D0:
	adds r4, r4, #1
	cmp r4, #0x20
	blt _0224F1BC
	bl FUN_02022974
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_0224F1B4

	thumb_func_start ov17_0224F1E0
ov17_0224F1E0: @ 0x0224F1E0
	push {r3, r4}
	movs r2, #1
	adds r3, r2, #0
	lsls r3, r1
	subs r1, r2, #2
	ldr r4, [r0, #0xc]
	eors r1, r3
	ands r1, r4
	str r1, [r0, #0xc]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224F1E0

	thumb_func_start ov17_0224F1F8
ov17_0224F1F8: @ 0x0224F1F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x28]
	adds r5, r0, #0
	movs r0, #2
	str r4, [sp, #4]
	adds r4, #8
	lsls r0, r0, #8
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	cmp r4, r0
	bls _0224F216
	bl FUN_02022974
_0224F216:
	adds r0, r5, #0
	movs r2, #2
	adds r0, #0x10
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020C4CF4
	add r0, sp, #8
	strb r6, [r0, #4]
	strh r7, [r0, #2]
	adds r0, r5, #0
	bl ov17_0224F1B4
	add r1, sp, #8
	strb r0, [r1, #5]
	movs r0, #0
	strb r0, [r1, #6]
	strh r4, [r1]
	adds r1, r5, #0
	add r0, sp, #8
	adds r1, #0x10
	movs r2, #8
	blx FUN_020C4B68
	adds r1, r5, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	adds r1, #0x18
	blx FUN_020C4DB0
	ldr r0, _0224F268 @ =0x00000A15
	movs r1, #0
	strb r1, [r5, r0]
	movs r1, #1
	subs r0, r0, #5
	strb r1, [r5, r0]
	add r0, sp, #8
	ldrb r0, [r0, #5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F268: .4byte 0x00000A15
	thumb_func_end ov17_0224F1F8

	thumb_func_start ov17_0224F26C
ov17_0224F26C: @ 0x0224F26C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r3, #0
	movs r0, #2
	adds r7, #8
	lsls r0, r0, #8
	adds r4, r1, #0
	adds r6, r2, #0
	str r3, [sp]
	cmp r7, r0
	bls _0224F288
	bl FUN_02022974
_0224F288:
	adds r0, r5, #0
	movs r2, #2
	adds r0, #0x10
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020C4CF4
	ldrh r2, [r4]
	add r1, sp, #4
	add r0, sp, #4
	strh r2, [r1]
	ldrh r2, [r4, #2]
	strh r2, [r1, #2]
	ldrh r2, [r4, #4]
	strh r2, [r1, #4]
	ldrh r2, [r4, #6]
	strh r2, [r1, #6]
	movs r2, #0xfe
	strb r2, [r1, #4]
	movs r2, #1
	strb r2, [r1, #6]
	strh r7, [r1]
	adds r1, r5, #0
	adds r1, #0x10
	movs r2, #8
	blx FUN_020C4B68
	cmp r6, #0
	beq _0224F2CE
	adds r1, r5, #0
	ldr r2, [sp]
	adds r0, r6, #0
	adds r1, #0x18
	blx FUN_020C4DB0
_0224F2CE:
	movs r0, #0xa1
	movs r1, #1
	lsls r0, r0, #4
	strb r1, [r5, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0224F26C

	thumb_func_start ov17_0224F2DC
ov17_0224F2DC: @ 0x0224F2DC
	push {r4, r5}
	lsls r5, r1, #9
	movs r1, #0x21
	lsls r1, r1, #4
	adds r4, r0, r1
	adds r1, #8
	adds r4, r4, r5
	adds r0, r0, r1
	str r4, [r2]
	adds r0, r0, r5
	str r0, [r3]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224F2DC

	thumb_func_start ov17_0224F2F8
ov17_0224F2F8: @ 0x0224F2F8
	movs r1, #0xa1
	lsls r1, r1, #4
	ldrb r0, [r0, r1]
	cmp r0, #1
	bne _0224F306
	movs r0, #0
	bx lr
_0224F306:
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224F2F8

	thumb_func_start ov17_0224F30C
ov17_0224F30C: @ 0x0224F30C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	bl ov17_0224F2F8
	cmp r0, #0
	bne _0224F322
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224F322:
	ldrh r0, [r5, #4]
	cmp r4, r0
	blt _0224F32C
	bl FUN_02022974
_0224F32C:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r6, #0xc
	ldr r5, [r5]
	muls r6, r4, r6
	adds r2, r4, #0
	ldr r4, [r5, r6]
	adds r3, r7, #0
	blx r4
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov17_0224F30C

	thumb_func_start ov17_0224F344
ov17_0224F344: @ 0x0224F344
	cmp r0, r2
	beq _0224F354
	cmp r2, #0xff
	beq _0224F354
	cmp r2, #0xfe
	bne _0224F358
	cmp r1, r0
	bne _0224F358
_0224F354:
	movs r0, #1
	bx lr
_0224F358:
	movs r0, #0
	bx lr
	thumb_func_end ov17_0224F344

	thumb_func_start ov17_0224F35C
ov17_0224F35C: @ 0x0224F35C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa1
	lsls r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224F36E
	movs r0, #0
	pop {r4, pc}
_0224F36E:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0224F3AC
	ldrb r1, [r4, #6]
	movs r2, #0x21
	lsls r2, r2, #4
	adds r0, r4, #0
	adds r3, r4, r2
	lsls r1, r1, #9
	adds r0, #0x10
	adds r1, r3, r1
	subs r2, #0x10
	blx FUN_020C4DB0
	ldrb r0, [r4, #6]
	movs r2, #1
	adds r1, r4, r0
	ldr r0, _0224F3CC @ =0x00000A11
	strb r2, [r1, r0]
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #0
	lsls r2, r2, #9
	blx FUN_020C4CF4
	movs r0, #0xa1
	movs r1, #0
	lsls r0, r0, #4
	strb r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_0224F3AC:
	ldrh r2, [r4, #0x10]
	adds r1, r4, #0
	movs r0, #0x18
	adds r1, #0x10
	bl FUN_0203597C
	cmp r0, #1
	bne _0224F3C8
	movs r0, #0xa1
	movs r1, #0
	lsls r0, r0, #4
	strb r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_0224F3C8:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0224F3CC: .4byte 0x00000A11
	thumb_func_end ov17_0224F35C

	thumb_func_start ov17_0224F3D0
ov17_0224F3D0: @ 0x0224F3D0
	movs r1, #0xa1
	lsls r1, r1, #4
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov17_0224F3D0

	thumb_func_start ov17_0224F3D8
ov17_0224F3D8: @ 0x0224F3D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	adds r4, r1, #0
	add r0, sp, #0x18
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	ldr r0, _0224F4B0 @ =0x00000A11
	movs r6, #0
_0224F3EE:
	adds r1, r7, r6
	ldrb r1, [r1, r0]
	cmp r1, #1
	bne _0224F4A2
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov17_0224F2DC
	ldr r2, [sp, #0x14]
	ldrb r0, [r7, #6]
	ldrb r1, [r7, #8]
	ldrb r2, [r2, #4]
	bl ov17_0224F344
	cmp r0, #1
	bne _0224F484
	ldr r2, [sp, #0x14]
	ldrh r1, [r7, #4]
	ldrh r0, [r2, #2]
	str r0, [sp, #8]
	cmp r0, r1
	bhs _0224F484
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0224F43E
	adds r1, r4, #0
	ldr r4, [r7]
	ldr r5, [sp, #8]
	str r4, [sp, #4]
	movs r4, #0xc
	muls r4, r5, r4
	ldr r5, [sp, #4]
	ldr r3, [sp, #0x10]
	adds r4, r5, r4
	ldr r4, [r4, #4]
	adds r0, r7, #0
	blx r4
	b _0224F484
_0224F43E:
	ldr r1, [sp, #8]
	movs r3, #0xc
	ldr r0, [r7]
	muls r3, r1, r3
	adds r0, r0, r3
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0224F472
	ldr r1, [sp, #0x10]
	lsls r0, r6, #2
	add r3, sp, #0x18
	str r1, [r3, r0]
	str r6, [sp]
	adds r1, r4, #0
	ldr r4, [r7]
	movs r5, #0xc
	mov ip, r4
	ldrh r4, [r2, #2]
	adds r0, r7, #0
	muls r5, r4, r5
	str r5, [sp, #0xc]
	ldr r4, [sp, #0xc]
	mov r5, ip
	adds r4, r5, r4
	ldr r4, [r4, #8]
	blx r4
_0224F472:
	ldr r1, [sp, #0x14]
	adds r0, r7, #0
	ldrb r1, [r1, #5]
	bl ov17_0224F1E0
	ldr r0, _0224F4B4 @ =0x00000A15
	ldrb r1, [r7, r0]
	adds r1, r1, #1
	strb r1, [r7, r0]
_0224F484:
	ldr r0, _0224F4B0 @ =0x00000A11
	movs r1, #0
	adds r2, r7, r6
	strb r1, [r2, r0]
	movs r2, #0x21
	lsls r2, r2, #4
	adds r3, r7, r2
	lsls r0, r6, #9
	adds r0, r3, r0
	subs r2, #0x10
	blx FUN_020C4CF4
	add sp, #0x28
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224F4A2:
	adds r6, r6, #1
	cmp r6, #4
	blt _0224F3EE
	movs r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F4B0: .4byte 0x00000A11
_0224F4B4: .4byte 0x00000A15
	thumb_func_end ov17_0224F3D8

	thumb_func_start ov17_0224F4B8
ov17_0224F4B8: @ 0x0224F4B8
	cmp r2, r3
	beq _0224F4C0
	movs r0, #1
	bx lr
_0224F4C0:
	ldr r2, _0224F4D0 @ =0x00000A15
	ldrb r0, [r0, r2]
	cmp r0, r1
	blt _0224F4CC
	movs r0, #1
	bx lr
_0224F4CC:
	movs r0, #0
	bx lr
	.align 2, 0
_0224F4D0: .4byte 0x00000A15
	thumb_func_end ov17_0224F4B8

	thumb_func_start ov17_0224F4D4
ov17_0224F4D4: @ 0x0224F4D4
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
	ldr r2, _0224F718 @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0224F71C @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _0224F720 @ =0xFFFF1FFF
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
	movs r2, #7
	movs r0, #3
	movs r1, #0x18
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0x4a
	adds r0, r4, #0
	lsls r1, r1, #6
	movs r2, #0x18
	bl FUN_0200681C
	movs r2, #0x4a
	movs r1, #0
	lsls r2, r2, #6
	adds r5, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x18
	bl ov17_0223F140
	str r0, [r5, #0xc]
	adds r0, r4, #0
	bl FUN_02006840
	movs r1, #0x5b
	str r0, [r5]
	lsls r1, r1, #2
	str r5, [r0, r1]
	ldr r2, [r5]
	movs r3, #3
	adds r0, r1, #4
	strb r3, [r2, r0]
	ldr r0, [r5]
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl ov17_0224FE1C
	ldr r0, _0224F724 @ =0x0000127F
	movs r1, #0
	strb r1, [r5, r0]
	movs r0, #0x18
	bl FUN_02002F38
	adds r1, r5, #0
	adds r1, #0xd0
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02003858
	adds r0, r5, #0
	adds r0, #0xd0
	movs r2, #2
	ldr r0, [r0]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x18
	bl FUN_02002F70
	adds r0, r5, #0
	adds r0, #0xd0
	movs r1, #1
	ldr r0, [r0]
	lsls r2, r1, #9
	movs r3, #0x18
	bl FUN_02002F70
	adds r0, r5, #0
	adds r0, #0xd0
	movs r2, #7
	ldr r0, [r0]
	movs r1, #2
	lsls r2, r2, #6
	movs r3, #0x18
	bl FUN_02002F70
	adds r0, r5, #0
	adds r0, #0xd0
	movs r2, #2
	ldr r0, [r0]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x18
	bl FUN_02002F70
	movs r0, #0x18
	bl FUN_02018340
	str r0, [r5, #0x30]
	movs r0, #0x40
	movs r1, #0x18
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	ldr r0, [r5, #0x30]
	bl ov17_0224FB34
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r0, #2
	movs r1, #0x18
	bl FUN_02002BB8
	movs r0, #0x18
	bl FUN_0200C6E4
	ldr r1, _0224F728 @ =0x02254B0C
	ldr r2, _0224F72C @ =0x02254AC4
	movs r3, #0x20
	str r0, [r5, #0x28]
	bl FUN_0200C73C
	ldr r1, _0224F730 @ =0x00100010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r0, [r5, #0x28]
	bl FUN_0200C704
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	movs r2, #0x80
	bl FUN_0200C7C0
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _0224F734 @ =0x02254AD8
	bl FUN_0200CB30
	movs r0, #0x18
	bl FUN_0200762C
	str r0, [r5, #0x14]
	bl ov17_0224FDDC
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xda
	movs r3, #0x18
	bl FUN_0200B144
	adds r1, r5, #0
	adds r1, #0xc4
	str r0, [r1]
	movs r0, #0x18
	bl FUN_0200B358
	adds r1, r5, #0
	adds r1, #0xc8
	str r0, [r1]
	movs r0, #5
	lsls r0, r0, #6
	movs r1, #0x18
	bl FUN_02023790
	adds r1, r5, #0
	adds r1, #0xcc
	str r0, [r1]
	movs r0, #0xa
	movs r1, #0x18
	bl FUN_02012744
	adds r1, r5, #0
	adds r1, #0xd4
	str r0, [r1]
	adds r0, r5, #0
	bl ov17_0224FE60
	adds r0, r5, #0
	bl ov17_0224FE70
	adds r0, r5, #0
	bl ov17_0224FCA0
	adds r0, r5, #0
	bl ov17_0224FE48
	adds r0, r5, #0
	bl ov17_0224FE58
	adds r0, r5, #0
	bl ov17_02250744
	bl FUN_02039734
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x18
	str r1, [sp, #8]
	movs r1, #0x21
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldr r0, _0224F738 @ =ov17_0224FAFC
	ldr r2, _0224F73C @ =0x00013880
	adds r1, r5, #0
	bl FUN_0200D9E8
	str r0, [r5, #4]
	movs r0, #0x85
	movs r1, #1
	lsls r0, r0, #4
	strb r1, [r5, r0]
	bl FUN_0201FFD0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r1, _0224F740 @ =0x0000046F
	movs r0, #6
	movs r2, #1
	bl FUN_02004550
	ldr r1, [r5]
	ldr r0, _0224F744 @ =0x00000171
	ldrb r0, [r1, r0]
	bl FUN_020959F4
	ldr r0, _0224F748 @ =ov17_0224FA24
	adds r1, r5, #0
	bl FUN_02017798
	ldr r0, _0224F74C @ =ov17_0224FAE4
	adds r1, r5, #0
	movs r2, #0xa
	bl FUN_0200DA04
	str r0, [r5, #8]
	ldr r0, _0224F750 @ =0x000006E5
	bl FUN_02005748
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0224F718: .4byte 0xFFFFE0FF
_0224F71C: .4byte 0x04001000
_0224F720: .4byte 0xFFFF1FFF
_0224F724: .4byte 0x0000127F
_0224F728: .4byte 0x02254B0C
_0224F72C: .4byte 0x02254AC4
_0224F730: .4byte 0x00100010
_0224F734: .4byte 0x02254AD8
_0224F738: .4byte ov17_0224FAFC
_0224F73C: .4byte 0x00013880
_0224F740: .4byte 0x0000046F
_0224F744: .4byte 0x00000171
_0224F748: .4byte ov17_0224FA24
_0224F74C: .4byte ov17_0224FAE4
_0224F750: .4byte 0x000006E5
	thumb_func_end ov17_0224F4D4

	thumb_func_start ov17_0224F754
ov17_0224F754: @ 0x0224F754
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02094E98
	ldr r0, [r5]
	cmp r0, #0
	beq _0224F776
	cmp r0, #1
	beq _0224F7A8
	cmp r0, #2
	beq _0224F830
	b _0224F83E
_0224F776:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0224F83E
	ldr r0, _0224F844 @ =ov17_0224FAAC
	adds r1, r4, #0
	bl FUN_020177BC
	movs r0, #0xff
	str r0, [sp]
	ldr r0, _0224F848 @ =0x0000D6D8
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r1, #0xd0
	ldr r1, [r1]
	ldr r2, _0224F84C @ =0x02254AB4
	movs r0, #0x18
	movs r3, #8
	bl ov17_0223F70C
	ldr r1, _0224F850 @ =0x00000848
	str r0, [r4, r1]
	movs r0, #1
	str r0, [r5]
	b _0224F83E
_0224F7A8:
	ldr r0, [r4]
	bl FUN_02094EDC
	cmp r0, #1
	bne _0224F804
	ldr r2, _0224F854 @ =0x0000084E
	ldr r1, _0224F858 @ =0x00001274
	ldrh r2, [r4, r2]
	adds r0, r4, #0
	adds r1, r4, r1
	lsls r3, r2, #2
	ldr r2, _0224F85C @ =0x02254B54
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	beq _0224F7CC
	cmp r0, #2
	bne _0224F7EE
_0224F7CC:
	cmp r0, #1
	bne _0224F7D8
	ldr r0, _0224F854 @ =0x0000084E
	ldrh r1, [r4, r0]
	adds r1, r1, #1
	b _0224F7DE
_0224F7D8:
	ldr r0, _0224F860 @ =0x00001276
	ldrh r1, [r4, r0]
	ldr r0, _0224F854 @ =0x0000084E
_0224F7DE:
	strh r1, [r4, r0]
	ldr r0, _0224F858 @ =0x00001274
	movs r1, #0
	adds r0, r4, r0
	movs r2, #8
	blx FUN_020C4CF4
	b _0224F804
_0224F7EE:
	cmp r0, #3
	bne _0224F804
	movs r0, #2
	str r0, [r5]
	ldr r0, _0224F858 @ =0x00001274
	movs r1, #0
	adds r0, r4, r0
	movs r2, #8
	blx FUN_020C4CF4
	b _0224F83E
_0224F804:
	ldr r0, _0224F864 @ =0x0000085C
	adds r0, r4, r0
	bl ov17_0224F35C
	ldr r0, _0224F864 @ =0x0000085C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov17_0224F3D8
	ldr r0, _0224F868 @ =0x0000127C
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0224F83E
	movs r1, #2
	subs r0, #8
	str r1, [r5]
	adds r0, r4, r0
	movs r1, #0
	movs r2, #8
	blx FUN_020C4CF4
	b _0224F83E
_0224F830:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0224F83E
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, pc}
_0224F83E:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224F844: .4byte ov17_0224FAAC
_0224F848: .4byte 0x0000D6D8
_0224F84C: .4byte 0x02254AB4
_0224F850: .4byte 0x00000848
_0224F854: .4byte 0x0000084E
_0224F858: .4byte 0x00001274
_0224F85C: .4byte 0x02254B54
_0224F860: .4byte 0x00001276
_0224F864: .4byte 0x0000085C
_0224F868: .4byte 0x0000127C
	thumb_func_end ov17_0224F754

	thumb_func_start ov17_0224F86C
ov17_0224F86C: @ 0x0224F86C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl FUN_020141E4
	adds r0, r4, #0
	bl ov17_0224FE50
	adds r0, r4, #0
	bl ov17_0224FE5C
	adds r0, r4, #0
	bl ov17_0224FE68
	adds r0, r4, #0
	bl ov17_0224FEC8
	adds r5, r4, #0
	movs r6, #0
	adds r5, #0x34
_0224F898:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r6, r6, #1
	adds r5, #0x10
	cmp r6, #9
	blt _0224F898
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x30]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x30]
	movs r1, #3
	bl FUN_02019044
	movs r0, #4
	movs r1, #0
	bl FUN_02019120
	ldr r0, [r4, #0x30]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl FUN_0200D0B0
	ldr r0, [r4, #0x28]
	bl FUN_0200C8D4
	bl FUN_0201DC3C
	adds r0, r4, #0
	adds r0, #0x10
	bl ov17_022507C4
	ldr r0, [r4, #0x14]
	bl FUN_02007B6C
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	bl FUN_020127BC
	movs r0, #2
	bl FUN_02002C60
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #2
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #3
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_02002F54
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_020237BC
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl FUN_0200B3F0
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	bl FUN_0200B190
	ldr r0, [r4, #0x30]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	bl FUN_0200DA58
	ldr r0, [r4, #8]
	bl FUN_0200DA58
	ldr r0, [r4, #0xc]
	bl ov17_0223F1E0
	bl FUN_0201E530
	adds r0, r7, #0
	bl FUN_02006830
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0224FA00 @ =0xFFFF1FFF
	ands r1, r0
	str r1, [r2]
	ldr r2, _0224FA04 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #0x18
	bl FUN_0201807C
	bl FUN_02095A24
	movs r1, #5
	movs r2, #2
	ldr r0, _0224FA08 @ =0x00007FFF
	lsls r1, r1, #0x18
	lsls r2, r2, #8
	blx FUN_020C4AF0
	movs r2, #2
	ldr r0, _0224FA08 @ =0x00007FFF
	ldr r1, _0224FA0C @ =0x05000200
	lsls r2, r2, #8
	blx FUN_020C4AF0
	movs r2, #2
	ldr r0, _0224FA08 @ =0x00007FFF
	ldr r1, _0224FA10 @ =0x05000400
	lsls r2, r2, #8
	blx FUN_020C4AF0
	movs r2, #2
	ldr r0, _0224FA08 @ =0x00007FFF
	ldr r1, _0224FA14 @ =0x05000600
	lsls r2, r2, #8
	blx FUN_020C4AF0
	bl FUN_02039794
	ldr r0, _0224FA18 @ =0x0000000B
	bl FUN_02006514
	ldr r0, _0224FA1C @ =0x0000000C
	bl FUN_02006514
	ldr r0, _0224FA20 @ =0x00000016
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224FA00: .4byte 0xFFFF1FFF
_0224FA04: .4byte 0x04001000
_0224FA08: .4byte 0x00007FFF
_0224FA0C: .4byte 0x05000200
_0224FA10: .4byte 0x05000400
_0224FA14: .4byte 0x05000600
_0224FA18: .4byte 0x0000000B
_0224FA1C: .4byte 0x0000000C
_0224FA20: .4byte 0x00000016
	thumb_func_end ov17_0224F86C

	thumb_func_start ov17_0224FA24
ov17_0224FA24: @ 0x0224FA24
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0224FA9C @ =0x00000854
	subs r1, r0, #2
	ldrb r3, [r4, r1]
	subs r1, r0, #3
	ldrb r1, [r4, r1]
	subs r6, r0, #1
	ldrb r6, [r4, r6]
	lsls r2, r1, #8
	movs r1, #0xff
	lsls r1, r1, #8
	ands r2, r1
	orrs r2, r6
	ldrb r5, [r4, r0]
	ldr r6, _0224FAA0 @ =0x04000040
	strh r2, [r6]
	lsls r2, r3, #8
	ands r2, r1
	orrs r2, r5
	strh r2, [r6, #4]
	adds r2, r0, #4
	ldrb r5, [r4, r2]
	adds r2, r0, #2
	ldrb r3, [r4, r2]
	adds r2, r0, #1
	ldrb r2, [r4, r2]
	adds r0, r0, #3
	ldrb r0, [r4, r0]
	lsls r2, r2, #8
	ands r2, r1
	orrs r0, r2
	strh r0, [r6, #2]
	lsls r0, r3, #8
	ands r0, r1
	orrs r0, r5
	strh r0, [r6, #6]
	ldr r0, [r4, #0x14]
	bl FUN_02008A94
	bl FUN_0201DCAC
	bl FUN_0200C800
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_02003694
	ldr r0, [r4, #0x30]
	bl FUN_0201C2B8
	ldr r3, _0224FAA4 @ =0x027E0000
	ldr r1, _0224FAA8 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, r5, r6, pc}
	nop
_0224FA9C: .4byte 0x00000854
_0224FAA0: .4byte 0x04000040
_0224FAA4: .4byte 0x027E0000
_0224FAA8: .4byte 0x00003FF8
	thumb_func_end ov17_0224FA24

	thumb_func_start ov17_0224FAAC
ov17_0224FAAC: @ 0x0224FAAC
	push {r3, lr}
	ldr r1, _0224FADC @ =0x0000127F
	ldrb r0, [r0, r1]
	cmp r0, #1
	bne _0224FAD8
	ldr r0, _0224FAE0 @ =0x04000006
	ldrh r0, [r0]
	cmp r0, #0x90
	blt _0224FACC
	cmp r0, #0x98
	bgt _0224FACC
	movs r0, #1
	movs r1, #0
	bl FUN_02019060
	pop {r3, pc}
_0224FACC:
	cmp r0, #0x90
	bge _0224FAD8
	movs r0, #1
	movs r1, #2
	bl FUN_02019060
_0224FAD8:
	pop {r3, pc}
	nop
_0224FADC: .4byte 0x0000127F
_0224FAE0: .4byte 0x04000006
	thumb_func_end ov17_0224FAAC

	thumb_func_start ov17_0224FAE4
ov17_0224FAE4: @ 0x0224FAE4
	push {r3, lr}
	ldr r0, _0224FAF8 @ =0x0000127F
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0224FAF6
	movs r0, #1
	movs r1, #2
	bl FUN_02019060
_0224FAF6:
	pop {r3, pc}
	.align 2, 0
_0224FAF8: .4byte 0x0000127F
	thumb_func_end ov17_0224FAE4

	thumb_func_start ov17_0224FAFC
ov17_0224FAFC: @ 0x0224FAFC
	push {r4, lr}
	movs r0, #0x85
	adds r4, r1, #0
	lsls r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0224FB24
	ldr r0, [r4, #0x14]
	bl FUN_02007768
	bl FUN_0221F8F0
	ldr r0, [r4, #0x2c]
	bl FUN_0200C7EC
	bl FUN_0200C808
	ldr r0, _0224FB30 @ =0x04000540
	movs r1, #1
	str r1, [r0]
_0224FB24:
	ldr r1, [r4, #0x30]
	movs r0, #0x18
	bl FUN_02038A1C
	pop {r4, pc}
	nop
_0224FB30: .4byte 0x04000540
	thumb_func_end ov17_0224FAFC

	thumb_func_start ov17_0224FB34
ov17_0224FB34: @ 0x0224FB34
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	adds r4, r0, #0
	bl FUN_0201FF00
	ldr r5, _0224FC8C @ =0x02254B2C
	add r3, sp, #0x2c
	movs r2, #5
_0224FB44:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224FB44
	add r0, sp, #0x2c
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
	ldr r5, _0224FC90 @ =0x02254AA4
	add r3, sp, #0x1c
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0224FC94 @ =0x02254B80
	add r3, sp, #0x54
	movs r2, #0xa
_0224FBA4:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224FBA4
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
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
	adds r0, r4, #0
	movs r1, #2
	add r2, sp, #0x70
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #3
	add r2, sp, #0x8c
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r1, _0224FC98 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	orrs r2, r0
	strh r2, [r1]
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r5, _0224FC9C @ =0x02254AF0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #4
	str r0, [r3]
	adds r0, r4, #0
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
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224FC8C: .4byte 0x02254B2C
_0224FC90: .4byte 0x02254AA4
_0224FC94: .4byte 0x02254B80
_0224FC98: .4byte 0x04000008
_0224FC9C: .4byte 0x02254AF0
	thumb_func_end ov17_0224FB34

	thumb_func_start ov17_0224FCA0
ov17_0224FCA0: @ 0x0224FCA0
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x30]
	adds r1, #0x34
	movs r2, #1
	movs r3, #2
	bl FUN_0201A7E8
	movs r2, #1
	adds r1, r4, #0
	str r2, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x8b
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	adds r1, #0x44
	movs r3, #6
	bl FUN_0201A7E8
	movs r0, #5
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0xa3
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x30]
	adds r1, #0x54
	movs r2, #1
	movs r3, #6
	bl FUN_0201A7E8
	movs r0, #9
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0xbb
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x30]
	adds r1, #0x64
	movs r2, #1
	movs r3, #6
	bl FUN_0201A7E8
	movs r1, #0xd
	str r1, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0xd3
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x30]
	adds r1, #0x74
	movs r2, #1
	movs r3, #6
	bl FUN_0201A7E8
	movs r2, #1
	adds r1, r4, #0
	str r2, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0xeb
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	adds r1, #0x84
	movs r3, #0x10
	bl FUN_0201A7E8
	movs r0, #5
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	adds r0, #0xf6
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x30]
	adds r1, #0x94
	movs r2, #1
	movs r3, #0x10
	bl FUN_0201A7E8
	movs r0, #9
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224FDD4 @ =0x0000011B
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	adds r1, #0xa4
	movs r2, #1
	movs r3, #0x10
	bl FUN_0201A7E8
	movs r1, #0xd
	str r1, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	ldr r0, _0224FDD8 @ =0x00000133
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	adds r4, #0xb4
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x10
	bl FUN_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_0224FDD4: .4byte 0x0000011B
_0224FDD8: .4byte 0x00000133
	thumb_func_end ov17_0224FCA0

	thumb_func_start ov17_0224FDDC
ov17_0224FDDC: @ 0x0224FDDC
	push {r3, r4, r5, lr}
	ldr r3, _0224FE14 @ =0x02100DEC
	movs r0, #2
	movs r1, #0
	ldr r3, [r3]
	lsls r0, r0, #0xe
	adds r2, r1, #0
	blx r3
	ldr r3, _0224FE18 @ =0x02100DF4
	movs r1, #0
	adds r4, r0, #0
	ldr r3, [r3]
	movs r0, #0x80
	adds r2, r1, #0
	blx r3
	adds r5, r0, #0
	cmp r4, #0
	bne _0224FE04
	bl FUN_02022974
_0224FE04:
	cmp r5, #0
	bne _0224FE0C
	bl FUN_02022974
_0224FE0C:
	bl FUN_02014000
	pop {r3, r4, r5, pc}
	nop
_0224FE14: .4byte 0x02100DEC
_0224FE18: .4byte 0x02100DF4
	thumb_func_end ov17_0224FDDC

	thumb_func_start ov17_0224FE1C
ov17_0224FE1C: @ 0x0224FE1C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _0224FE2A
	bl FUN_02022974
_0224FE2A:
	movs r1, #0xf3
	movs r5, #0
	movs r0, #3
	lsls r1, r1, #2
_0224FE32:
	subs r3, r0, r5
	adds r2, r4, r5
	adds r5, r5, #1
	strb r3, [r2, r1]
	cmp r5, #4
	blt _0224FE32
	adds r0, r4, #0
	bl ov17_02251D6C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_0224FE1C

	thumb_func_start ov17_0224FE48
ov17_0224FE48: @ 0x0224FE48
	ldr r3, _0224FE4C @ =ov17_02250A88
	bx r3
	.align 2, 0
_0224FE4C: .4byte ov17_02250A88
	thumb_func_end ov17_0224FE48

	thumb_func_start ov17_0224FE50
ov17_0224FE50: @ 0x0224FE50
	ldr r3, _0224FE54 @ =ov17_02250D8C
	bx r3
	.align 2, 0
_0224FE54: .4byte ov17_02250D8C
	thumb_func_end ov17_0224FE50

	thumb_func_start ov17_0224FE58
ov17_0224FE58: @ 0x0224FE58
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224FE58

	thumb_func_start ov17_0224FE5C
ov17_0224FE5C: @ 0x0224FE5C
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224FE5C

	thumb_func_start ov17_0224FE60
ov17_0224FE60: @ 0x0224FE60
	ldr r3, _0224FE64 @ =ov17_022509AC
	bx r3
	.align 2, 0
_0224FE64: .4byte ov17_022509AC
	thumb_func_end ov17_0224FE60

	thumb_func_start ov17_0224FE68
ov17_0224FE68: @ 0x0224FE68
	ldr r3, _0224FE6C @ =ov17_02250D24
	bx r3
	.align 2, 0
_0224FE6C: .4byte ov17_02250D24
	thumb_func_end ov17_0224FE68

	thumb_func_start ov17_0224FE70
ov17_0224FE70: @ 0x0224FE70
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	movs r0, #0x2d
	movs r1, #0x13
	movs r3, #4
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x30]
	movs r0, #0x2d
	movs r1, #0x14
	movs r3, #4
	bl FUN_02006E60
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r4, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0x2d
	movs r2, #0x22
	movs r3, #0x18
	bl FUN_02003050
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_0224FE70

	thumb_func_start ov17_0224FEC8
ov17_0224FEC8: @ 0x0224FEC8
	bx lr
	.align 2, 0
	thumb_func_end ov17_0224FEC8

	thumb_func_start ov17_0224FECC
ov17_0224FECC: @ 0x0224FECC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldrh r1, [r7]
	adds r4, r0, #0
	cmp r1, #0
	beq _0224FEE2
	cmp r1, #1
	beq _0224FF70
	cmp r1, #2
	beq _0224FFA8
	b _0224FFCA
_0224FEE2:
	bl ov17_02251A1C
	movs r0, #0x13
	ldr r2, [r4]
	movs r5, #0
	lsls r0, r0, #4
_0224FEEE:
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _0224FEFC
	adds r5, r5, #1
	adds r2, #0xc
	cmp r5, #4
	blt _0224FEEE
_0224FEFC:
	cmp r5, #4
	bne _0224FF04
	bl FUN_02022974
_0224FF04:
	ldr r0, _0224FFD4 @ =0x00000438
	ldr r1, _0224FFD8 @ =0x00000439
	strb r5, [r4, r0]
	movs r5, #0
	subs r0, #0x67
_0224FF0E:
	adds r3, r4, r5
	ldrb r2, [r3, r0]
	adds r5, r5, #1
	cmp r5, #4
	strb r2, [r3, r1]
	blt _0224FF0E
	movs r3, #0
	adds r1, r3, #0
	adds r2, r4, #0
_0224FF20:
	ldr r0, [r4]
	movs r5, #0x4a
	adds r0, r0, r1
	lsls r5, r5, #2
	ldrh r6, [r0, r5]
	movs r5, #0xe7
	lsls r5, r5, #2
	strh r6, [r2, r5]
	ldr r5, _0224FFDC @ =0x0000012A
	adds r3, r3, #1
	ldrh r6, [r0, r5]
	ldr r5, _0224FFE0 @ =0x0000039E
	adds r1, #0xc
	strh r6, [r2, r5]
	movs r5, #0x4b
	lsls r5, r5, #2
	ldrh r6, [r0, r5]
	movs r5, #0x3a
	lsls r5, r5, #4
	strh r6, [r2, r5]
	ldr r5, _0224FFE4 @ =0x0000012E
	ldrh r6, [r0, r5]
	ldr r5, _0224FFE8 @ =0x000003A2
	strh r6, [r2, r5]
	movs r5, #0x13
	lsls r5, r5, #4
	ldrh r6, [r0, r5]
	movs r5, #0xe9
	lsls r5, r5, #2
	strh r6, [r2, r5]
	ldr r5, _0224FFEC @ =0x00000132
	ldrh r5, [r0, r5]
	ldr r0, _0224FFF0 @ =0x000003A6
	strh r5, [r2, r0]
	adds r2, #0xc
	cmp r3, #4
	blt _0224FF20
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
_0224FF70:
	ldr r1, [r4]
	ldr r0, _0224FFF4 @ =0x00000177
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224FF86
	ldr r0, [r7, #4]
	cmp r0, #0x78
	bge _0224FF86
	adds r0, r0, #1
	str r0, [r7, #4]
	b _0224FFCE
_0224FF86:
	ldr r0, _0224FFF8 @ =0x0000085C
	movs r3, #0xe7
	lsls r3, r3, #2
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #1
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _0224FFCE
	movs r0, #0
	str r0, [r7, #4]
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0224FFCE
_0224FFA8:
	ldr r0, _0224FFF8 @ =0x0000085C
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _0224FFFC @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0224FFCE
	ldrh r0, [r7]
	adds r0, r0, #1
	strh r0, [r7]
	b _0224FFCE
_0224FFCA:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224FFCE:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224FFD4: .4byte 0x00000438
_0224FFD8: .4byte 0x00000439
_0224FFDC: .4byte 0x0000012A
_0224FFE0: .4byte 0x0000039E
_0224FFE4: .4byte 0x0000012E
_0224FFE8: .4byte 0x000003A2
_0224FFEC: .4byte 0x00000132
_0224FFF0: .4byte 0x000003A6
_0224FFF4: .4byte 0x00000177
_0224FFF8: .4byte 0x0000085C
_0224FFFC: .4byte 0x00000127
	thumb_func_end ov17_0224FECC

	thumb_func_start ov17_02250000
ov17_02250000: @ 0x02250000
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02250012
	cmp r0, #1
	beq _0225004C
	b _0225006E
_02250012:
	ldr r3, _02250078 @ =0x00000445
	movs r1, #0
	strb r1, [r5, r3]
	adds r0, r3, #2
	strb r1, [r5, r0]
	adds r0, r3, #1
	strb r1, [r5, r0]
	adds r0, r3, #0
	subs r0, #0x79
	ldrb r1, [r5, r0]
	subs r0, r3, #7
	movs r2, #5
	strb r1, [r5, r0]
	subs r0, r3, #1
	movs r1, #1
	strb r1, [r5, r0]
	ldr r0, _0225007C @ =0x0000085C
	subs r3, #0xf
	adds r0, r5, r0
	adds r1, r5, #0
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250072
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250072
_0225004C:
	ldr r0, _0225007C @ =0x0000085C
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _02250080 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250072
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250072
_0225006E:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02250072:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02250078: .4byte 0x00000445
_0225007C: .4byte 0x0000085C
_02250080: .4byte 0x00000127
	thumb_func_end ov17_02250000

	thumb_func_start ov17_02250084
ov17_02250084: @ 0x02250084
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02250096
	cmp r0, #1
	beq _022500B4
	b _022500D6
_02250096:
	ldr r0, _022500E0 @ =0x0000085C
	movs r3, #0xe7
	lsls r3, r3, #2
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #6
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _022500DA
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _022500DA
_022500B4:
	ldr r0, _022500E0 @ =0x0000085C
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _022500E4 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _022500DA
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _022500DA
_022500D6:
	movs r0, #1
	pop {r3, r4, r5, pc}
_022500DA:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022500E0: .4byte 0x0000085C
_022500E4: .4byte 0x00000127
	thumb_func_end ov17_02250084

	thumb_func_start ov17_022500E8
ov17_022500E8: @ 0x022500E8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _022500FE
	cmp r0, #1
	beq _02250130
	cmp r0, #2
	beq _02250152
	b _02250164
_022500FE:
	ldr r3, _0225016C @ =0x00000445
	movs r0, #0
	strb r0, [r5, r3]
	movs r1, #1
	adds r0, r3, #2
	strb r1, [r5, r0]
	adds r0, r3, #1
	strb r1, [r5, r0]
	subs r0, r3, #1
	movs r1, #6
	strb r1, [r5, r0]
	ldr r0, _02250170 @ =0x0000085C
	subs r3, #0xf
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #5
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250168
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250168
_02250130:
	ldr r0, _02250170 @ =0x0000085C
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _02250174 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250168
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250168
_02250152:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	ble _02250168
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250168
_02250164:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02250168:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225016C: .4byte 0x00000445
_02250170: .4byte 0x0000085C
_02250174: .4byte 0x00000127
	thumb_func_end ov17_022500E8

	thumb_func_start ov17_02250178
ov17_02250178: @ 0x02250178
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #4
	bhi _02250268
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02250190: @ jump table
	.2byte _0225019A - _02250190 - 2 @ case 0
	.2byte _022501F0 - _02250190 - 2 @ case 1
	.2byte _02250212 - _02250190 - 2 @ case 2
	.2byte _02250234 - _02250190 - 2 @ case 3
	.2byte _02250256 - _02250190 - 2 @ case 4
_0225019A:
	ldr r1, [r3]
	ldr r0, _02250270 @ =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #4
	bhi _022501BA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022501B0: @ jump table
	.2byte _022501BE - _022501B0 - 2 @ case 0
	.2byte _022501BE - _022501B0 - 2 @ case 1
	.2byte _022501BE - _022501B0 - 2 @ case 2
	.2byte _022501BE - _022501B0 - 2 @ case 3
	.2byte _022501BE - _022501B0 - 2 @ case 4
_022501BA:
	movs r0, #1
	pop {r3, r4, r5, pc}
_022501BE:
	ldr r5, _02250274 @ =0x00000445
	movs r0, #0
	strb r0, [r3, r5]
	movs r1, #1
	adds r0, r5, #2
	strb r1, [r3, r0]
	adds r0, r5, #1
	strb r1, [r3, r0]
	subs r0, r5, #1
	movs r1, #2
	strb r1, [r3, r0]
	ldr r0, _02250278 @ =0x0000085C
	subs r5, #0xf
	adds r0, r3, r0
	adds r1, r3, #0
	movs r2, #5
	adds r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0225026C
_022501F0:
	ldr r0, _02250278 @ =0x0000085C
	ldr r5, [r3]
	adds r0, r3, r0
	ldr r3, _0225027C @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r5, r3]
	subs r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250212:
	ldr r5, _02250280 @ =0x0000043D
	movs r0, #0
	strb r0, [r3, r5]
	ldr r0, _02250278 @ =0x0000085C
	subs r5, r5, #7
	adds r0, r3, r0
	adds r1, r3, #0
	movs r2, #9
	adds r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250234:
	ldr r0, _02250278 @ =0x0000085C
	ldr r5, [r3]
	adds r0, r3, r0
	ldr r3, _0225027C @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r5, r3]
	subs r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0225026C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250256:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	ble _0225026C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0225026C
_02250268:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225026C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02250270: .4byte 0x00000121
_02250274: .4byte 0x00000445
_02250278: .4byte 0x0000085C
_0225027C: .4byte 0x00000127
_02250280: .4byte 0x0000043D
	thumb_func_end ov17_02250178

	thumb_func_start ov17_02250284
ov17_02250284: @ 0x02250284
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #4
	bhi _02250390
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225029C: @ jump table
	.2byte _022502A6 - _0225029C - 2 @ case 0
	.2byte _02250318 - _0225029C - 2 @ case 1
	.2byte _0225033A - _0225029C - 2 @ case 2
	.2byte _0225035C - _0225029C - 2 @ case 3
	.2byte _0225037E - _0225029C - 2 @ case 4
_022502A6:
	ldr r1, [r4]
	ldr r0, _02250398 @ =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #6
	bhi _022502CA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022502BC: @ jump table
	.2byte _022502CA - _022502BC - 2 @ case 0
	.2byte _022502CE - _022502BC - 2 @ case 1
	.2byte _022502CE - _022502BC - 2 @ case 2
	.2byte _022502CA - _022502BC - 2 @ case 3
	.2byte _022502CA - _022502BC - 2 @ case 4
	.2byte _022502CE - _022502BC - 2 @ case 5
	.2byte _022502CE - _022502BC - 2 @ case 6
_022502CA:
	movs r0, #1
	pop {r3, r4, r5, pc}
_022502CE:
	ldr r1, _0225039C @ =0x00000445
	movs r0, #0
	strb r0, [r4, r1]
	movs r2, #1
	adds r0, r1, #2
	strb r2, [r4, r0]
	adds r0, r1, #1
	strb r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0x79
	ldrb r2, [r4, r0]
	subs r0, r1, #7
	subs r1, #0x79
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	bl FUN_020958FC
	ldr r3, _022503A0 @ =0x00000442
	adds r0, r0, #1
	strb r0, [r4, r3]
	adds r0, r3, #2
	movs r1, #3
	strb r1, [r4, r0]
	ldr r0, _022503A4 @ =0x0000085C
	subs r3, #0xc
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #5
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _02250394
_02250318:
	ldr r0, _022503A4 @ =0x0000085C
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _022503A8 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _02250394
_0225033A:
	ldr r3, _022503AC @ =0x0000043D
	movs r0, #1
	strb r0, [r4, r3]
	ldr r0, _022503A4 @ =0x0000085C
	subs r3, r3, #7
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #9
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _02250394
_0225035C:
	ldr r0, _022503A4 @ =0x0000085C
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _022503A8 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250394
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _02250394
_0225037E:
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0x5a
	ble _02250394
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _02250394
_02250390:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02250394:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02250398: .4byte 0x00000121
_0225039C: .4byte 0x00000445
_022503A0: .4byte 0x00000442
_022503A4: .4byte 0x0000085C
_022503A8: .4byte 0x00000127
_022503AC: .4byte 0x0000043D
	thumb_func_end ov17_02250284

	thumb_func_start ov17_022503B0
ov17_022503B0: @ 0x022503B0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #4
	bls _022503BE
	b _022504C2
_022503BE:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022503CA: @ jump table
	.2byte _022503D4 - _022503CA - 2 @ case 0
	.2byte _0225044A - _022503CA - 2 @ case 1
	.2byte _0225046C - _022503CA - 2 @ case 2
	.2byte _0225048E - _022503CA - 2 @ case 3
	.2byte _022504B0 - _022503CA - 2 @ case 4
_022503D4:
	ldr r1, [r4]
	ldr r0, _022504CC @ =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #8
	bhi _022503FC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022503EA: @ jump table
	.2byte _02250400 - _022503EA - 2 @ case 0
	.2byte _022503FC - _022503EA - 2 @ case 1
	.2byte _02250400 - _022503EA - 2 @ case 2
	.2byte _022503FC - _022503EA - 2 @ case 3
	.2byte _022503FC - _022503EA - 2 @ case 4
	.2byte _022503FC - _022503EA - 2 @ case 5
	.2byte _022503FC - _022503EA - 2 @ case 6
	.2byte _02250400 - _022503EA - 2 @ case 7
	.2byte _02250400 - _022503EA - 2 @ case 8
_022503FC:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02250400:
	ldr r1, _022504D0 @ =0x00000445
	movs r0, #0
	strb r0, [r4, r1]
	movs r2, #1
	adds r0, r1, #2
	strb r2, [r4, r0]
	adds r0, r1, #1
	strb r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0x79
	ldrb r2, [r4, r0]
	subs r0, r1, #7
	subs r1, #0x79
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	bl FUN_020958FC
	ldr r3, _022504D4 @ =0x00000442
	adds r0, r0, #1
	strb r0, [r4, r3]
	adds r0, r3, #2
	movs r1, #4
	strb r1, [r4, r0]
	ldr r0, _022504D8 @ =0x0000085C
	subs r3, #0xc
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #5
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _022504C6
_0225044A:
	ldr r0, _022504D8 @ =0x0000085C
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _022504DC @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _022504C6
_0225046C:
	ldr r3, _022504E0 @ =0x0000043D
	movs r0, #2
	strb r0, [r4, r3]
	ldr r0, _022504D8 @ =0x0000085C
	subs r3, r3, #7
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #9
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _022504C6
_0225048E:
	ldr r0, _022504D8 @ =0x0000085C
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _022504DC @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _022504C6
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _022504C6
_022504B0:
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0xf
	ble _022504C6
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _022504C6
_022504C2:
	movs r0, #1
	pop {r3, r4, r5, pc}
_022504C6:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022504CC: .4byte 0x00000121
_022504D0: .4byte 0x00000445
_022504D4: .4byte 0x00000442
_022504D8: .4byte 0x0000085C
_022504DC: .4byte 0x00000127
_022504E0: .4byte 0x0000043D
	thumb_func_end ov17_022503B0

	thumb_func_start ov17_022504E4
ov17_022504E4: @ 0x022504E4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _022504F6
	cmp r0, #1
	beq _02250512
	b _02250534
_022504F6:
	ldr r0, _0225053C @ =0x0000085C
	ldr r3, _02250540 @ =0x00000436
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #7
	adds r3, r5, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250538
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250538
_02250512:
	ldr r0, _0225053C @ =0x0000085C
	ldr r3, [r5]
	adds r0, r5, r0
	ldr r5, _02250544 @ =0x00000127
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250538
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250538
_02250534:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02250538:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225053C: .4byte 0x0000085C
_02250540: .4byte 0x00000436
_02250544: .4byte 0x00000127
	thumb_func_end ov17_022504E4

	thumb_func_start ov17_02250548
ov17_02250548: @ 0x02250548
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #3
	bhi _02250610
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02250560: @ jump table
	.2byte _02250568 - _02250560 - 2 @ case 0
	.2byte _022505B0 - _02250560 - 2 @ case 1
	.2byte _022505D2 - _02250560 - 2 @ case 2
	.2byte _022505EE - _02250560 - 2 @ case 3
_02250568:
	ldr r1, _02250618 @ =0x00000445
	movs r0, #0
	strb r0, [r4, r1]
	movs r2, #1
	adds r0, r1, #2
	strb r2, [r4, r0]
	adds r0, r1, #1
	strb r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0xd
	ldrb r2, [r4, r0]
	subs r0, r1, #7
	subs r1, #0xd
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	bl FUN_020958FC
	ldr r3, _0225061C @ =0x00000442
	adds r0, r0, #1
	strb r0, [r4, r3]
	adds r0, r3, #2
	movs r2, #5
	strb r2, [r4, r0]
	ldr r0, _02250620 @ =0x0000085C
	subs r3, #0xc
	adds r0, r4, r0
	adds r1, r4, #0
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _02250614
_022505B0:
	ldr r0, _02250620 @ =0x0000085C
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _02250624 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _02250614
_022505D2:
	ldr r0, _02250620 @ =0x0000085C
	ldr r3, _02250628 @ =0x00000436
	adds r0, r4, r0
	adds r1, r4, #0
	movs r2, #8
	adds r3, r4, r3
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _02250614
_022505EE:
	ldr r0, _02250620 @ =0x0000085C
	ldr r3, [r4]
	adds r0, r4, r0
	ldr r4, _02250624 @ =0x00000127
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250614
	ldrh r0, [r5]
	adds r0, r0, #1
	strh r0, [r5]
	b _02250614
_02250610:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02250614:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02250618: .4byte 0x00000445
_0225061C: .4byte 0x00000442
_02250620: .4byte 0x0000085C
_02250624: .4byte 0x00000127
_02250628: .4byte 0x00000436
	thumb_func_end ov17_02250548

	thumb_func_start ov17_0225062C
ov17_0225062C: @ 0x0225062C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225063E
	cmp r0, #1
	beq _02250676
	b _02250698
_0225063E:
	ldr r5, _022506A0 @ =0x00000445
	movs r0, #0
	strb r0, [r3, r5]
	adds r1, r5, #2
	strb r0, [r3, r1]
	adds r1, r5, #1
	strb r0, [r3, r1]
	adds r1, r5, #0
	subs r1, #0x79
	ldrb r2, [r3, r1]
	subs r1, r5, #7
	strb r2, [r3, r1]
	subs r1, r5, #1
	strb r0, [r3, r1]
	ldr r0, _022506A4 @ =0x0000085C
	subs r5, #0xf
	adds r0, r3, r0
	adds r1, r3, #0
	movs r2, #5
	adds r3, r3, r5
	bl ov17_0224F30C
	cmp r0, #1
	bne _0225069C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0225069C
_02250676:
	ldr r0, _022506A4 @ =0x0000085C
	ldr r5, [r3]
	adds r0, r3, r0
	ldr r3, _022506A8 @ =0x00000127
	subs r2, r3, #4
	ldrb r1, [r5, r3]
	subs r3, #0xb
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _0225069C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0225069C
_02250698:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225069C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022506A0: .4byte 0x00000445
_022506A4: .4byte 0x0000085C
_022506A8: .4byte 0x00000127
	thumb_func_end ov17_0225062C

	thumb_func_start ov17_022506AC
ov17_022506AC: @ 0x022506AC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _022506C2
	cmp r0, #1
	beq _022506DC
	cmp r0, #2
	beq _022506FE
	b _02250718
_022506C2:
	ldr r0, _0225073C @ =0x0000085C
	adds r1, r2, #0
	adds r0, r2, r0
	movs r2, #0xa
	movs r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250736
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250736
_022506DC:
	ldr r0, _0225073C @ =0x0000085C
	ldr r3, [r2]
	ldr r5, _02250740 @ =0x00000127
	adds r0, r2, r0
	subs r2, r5, #4
	ldrb r1, [r3, r5]
	subs r5, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r5]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250736
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250736
_022506FE:
	ldr r0, _0225073C @ =0x0000085C
	adds r1, r2, #0
	adds r0, r2, r0
	movs r2, #4
	movs r3, #0
	bl ov17_0224F30C
	cmp r0, #1
	bne _02250736
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02250736
_02250718:
	ldr r0, _0225073C @ =0x0000085C
	ldr r3, [r2]
	ldr r4, _02250740 @ =0x00000127
	adds r0, r2, r0
	subs r2, r4, #4
	ldrb r1, [r3, r4]
	subs r4, #0xb
	ldrb r2, [r3, r2]
	ldrb r3, [r3, r4]
	bl ov17_0224F4B8
	cmp r0, #1
	bne _02250736
	movs r0, #3
	pop {r3, r4, r5, pc}
_02250736:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225073C: .4byte 0x0000085C
_02250740: .4byte 0x00000127
	thumb_func_end ov17_022506AC

	thumb_func_start ov17_02250744
ov17_02250744: @ 0x02250744
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r5, #0
	movs r4, #0
	adds r7, #0xd8
	b _022507B6
_02250752:
	movs r0, #0xf3
	adds r1, r5, r4
	lsls r0, r0, #2
	ldrb r6, [r1, r0]
	lsls r0, r6, #4
	adds r0, r5, r0
	adds r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _0225076A
	bl FUN_02022974
_0225076A:
	movs r1, #0x32
	movs r0, #0x18
	lsls r1, r1, #6
	bl FUN_02018144
	lsls r2, r6, #4
	adds r1, r5, r2
	adds r1, #0xd8
	str r0, [r1]
	adds r0, r7, r2
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #6
	ldr r1, _022507C0 @ =0x02254BF4
	muls r0, r4, r0
	ldrsh r1, [r1, r0]
	lsls r2, r6, #2
	str r1, [sp, #8]
	ldr r1, _022507C0 @ =0x02254BF4
	adds r0, r1, r0
	movs r1, #2
	ldrsh r1, [r0, r1]
	str r1, [sp, #0xc]
	movs r1, #4
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #0x14]
	ldr r2, [r3, r2]
	movs r3, #2
	bl FUN_02095484
	lsls r1, r6, #2
	adds r1, r5, r1
	str r0, [r1, #0x18]
	adds r4, r4, #1
_022507B6:
	cmp r4, #4
	blt _02250752
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022507C0: .4byte 0x02254BF4
	thumb_func_end ov17_02250744

	thumb_func_start ov17_022507C4
ov17_022507C4: @ 0x022507C4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r7, r6, #0
_022507CE:
	ldr r0, [r5, #8]
	bl FUN_02007DC8
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0xc8
	adds r6, r6, #1
	str r7, [r0]
	adds r5, r5, #4
	adds r4, #0x10
	cmp r6, #4
	blt _022507CE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022507C4

	thumb_func_start ov17_022507F0
ov17_022507F0: @ 0x022507F0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r4, r0, #0
	adds r5, r2, #0
	cmp r6, #0
	beq _02250806
	cmp r5, #0
	bne _02250806
	bl FUN_02022974
_02250806:
	cmp r6, #3
	bhi _022508DC
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02250816: @ jump table
	.2byte _022508E0 - _02250816 - 2 @ case 0
	.2byte _0225081E - _02250816 - 2 @ case 1
	.2byte _02250842 - _02250816 - 2 @ case 2
	.2byte _02250886 - _02250816 - 2 @ case 3
_0225081E:
	movs r2, #0x12
	lsls r2, r2, #4
	ldr r3, [r4]
	adds r1, r2, #1
	ldrb r0, [r3, r2]
	adds r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl FUN_02095848
	adds r4, #0xc8
	adds r2, r0, #0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200BBA8
	add sp, #8
	pop {r4, r5, r6, pc}
_02250842:
	ldrb r6, [r5]
	ldr r3, [r4]
	movs r0, #1
	lsls r2, r6, #2
	str r0, [sp]
	movs r0, #2
	adds r2, r3, r2
	adds r6, r3, r6
	movs r3, #0x42
	str r0, [sp, #4]
	adds r0, r4, #0
	lsls r3, r3, #2
	adds r0, #0xc8
	adds r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0]
	ldr r2, [r2]
	movs r1, #0
	bl FUN_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x10]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r4, #0xc8
	adds r2, r0, #0
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_02250886:
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	str r3, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r2, [r5, #4]
	ldr r0, [r0]
	bl FUN_0200B60C
	ldrb r6, [r5]
	ldr r3, [r4]
	movs r1, #1
	lsls r2, r6, #2
	adds r2, r3, r2
	adds r6, r3, r6
	movs r3, #0x42
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r4, #0
	lsls r3, r3, #2
	adds r0, #0xc8
	adds r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0]
	ldr r2, [r2]
	bl FUN_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x10]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_02076B10
	adds r4, #0xc8
	adds r2, r0, #0
	ldr r0, [r4]
	movs r1, #2
	bl FUN_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_022508DC:
	bl FUN_02022974
_022508E0:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_022507F0

	thumb_func_start ov17_022508E4
ov17_022508E4: @ 0x022508E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [r5]
	ldr r0, _02250960 @ =0x00000171
	adds r7, r2, #0
	ldrb r0, [r1, r0]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _02250906
	ldr r0, _02250964 @ =0x00001988
	ldr r0, [r1, r0]
	bl FUN_02027AC0
	adds r4, r0, #0
	b _02250908
_02250906:
	movs r4, #1
_02250908:
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	adds r0, r5, #0
	bl ov17_022507F0
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xc8
	adds r1, #0xcc
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0xff
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r0, r5, #0
	str r3, [sp, #8]
	adds r2, #0xcc
	ldr r2, [r2]
	adds r0, #0x34
	movs r1, #1
	bl FUN_0201D738
	movs r1, #0xe6
	lsls r1, r1, #2
	strb r0, [r5, r1]
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02250960: .4byte 0x00000171
_02250964: .4byte 0x00001988
	thumb_func_end ov17_022508E4

	thumb_func_start ov17_02250968
ov17_02250968: @ 0x02250968
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #7
	blo _0225097A
	bl FUN_02022974
_0225097A:
	lsls r3, r4, #2
	ldr r2, _02250994 @ =0x02254C0C
	adds r0, r5, #0
	ldr r4, _02250998 @ =0x02254C0E
	ldrh r2, [r2, r3]
	str r6, [sp]
	adds r5, #0xc4
	ldrb r3, [r4, r3]
	ldr r1, [r5]
	bl ov17_022508E4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02250994: .4byte 0x02254C0C
_02250998: .4byte 0x02254C0E
	thumb_func_end ov17_02250968

	thumb_func_start ov17_0225099C
ov17_0225099C: @ 0x0225099C
	movs r1, #0xe6
	lsls r1, r1, #2
	ldr r3, _022509A8 @ =FUN_0201D724
	ldrb r0, [r0, r1]
	bx r3
	nop
_022509A8: .4byte FUN_0201D724
	thumb_func_end ov17_0225099C

	thumb_func_start ov17_022509AC
ov17_022509AC: @ 0x022509AC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x2d
	movs r1, #0x18
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x18
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x30]
	movs r1, #0x17
	movs r3, #3
	adds r4, r0, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #0x16
	movs r3, #3
	bl FUN_0200710C
	ldr r0, [r5, #0x30]
	movs r1, #1
	bl FUN_02019EBC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0x2d
	movs r2, #0x23
	movs r3, #0x18
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0x2d
	movs r2, #0x24
	movs r3, #0x18
	bl FUN_02003050
	ldr r1, [r5]
	ldr r0, _02250A80 @ =0x00001988
	ldr r0, [r1, r0]
	bl FUN_02027B50
	adds r6, r0, #0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r1, #1
	ldr r0, [r5, #0x30]
	adds r2, r1, #0
	movs r3, #0xf
	bl FUN_0200DD0C
	adds r0, r6, #0
	bl FUN_0200DD08
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0x26
	movs r3, #0x18
	bl FUN_02003050
	ldr r0, [r5, #0x30]
	movs r1, #2
	bl FUN_02019EBC
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02250A80: .4byte 0x00001988
	thumb_func_end ov17_022509AC

	thumb_func_start ov17_02250A84
ov17_02250A84: @ 0x02250A84
	bx lr
	.align 2, 0
	thumb_func_end ov17_02250A84

	thumb_func_start ov17_02250A88
ov17_02250A88: @ 0x02250A88
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r0, _02250AD0 @ =0x000080EA
	adds r2, r4, #0
	str r0, [sp]
	subs r3, r0, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	adds r2, #0xd0
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r2, [r2]
	bl ov17_0223F560
	ldr r0, _02250AD0 @ =0x000080EA
	movs r1, #0xc8
	str r0, [sp]
	subs r3, r0, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r0, #3
	str r0, [sp, #0x14]
	ldr r0, _02250AD4 @ =0x0000C350
	adds r1, #0x50
	str r0, [sp, #0x18]
	adds r0, r4, r1
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov17_0223F630
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_02250AD0: .4byte 0x000080EA
_02250AD4: .4byte 0x0000C350
	thumb_func_end ov17_02250A88

	thumb_func_start ov17_02250AD8
ov17_02250AD8: @ 0x02250AD8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x46
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov17_0223F6C4
	ldr r1, _02250AFC @ =0x000080E9
	str r1, [sp]
	ldr r0, [r4, #0x2c]
	adds r2, r1, #1
	adds r3, r1, #0
	bl ov17_0223F5E8
	add sp, #4
	pop {r3, r4, pc}
	nop
_02250AFC: .4byte 0x000080E9
	thumb_func_end ov17_02250AD8

	thumb_func_start ov17_02250B00
ov17_02250B00: @ 0x02250B00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r0, #0
	movs r0, #0x2d
	movs r1, #0x18
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x18
	str r1, [sp, #0xc]
	ldr r2, [r6, #0x30]
	movs r1, #0x1b
	movs r3, #3
	str r0, [sp, #0x14]
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r6, #0x30]
	movs r1, #0x19
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r6, #0x30]
	movs r1, #0x1a
	movs r3, #2
	bl FUN_0200710C
	ldr r0, [r6, #0x30]
	movs r1, #1
	bl FUN_02019EBC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0x2d
	movs r2, #0x27
	movs r3, #0x18
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0x2d
	movs r2, #0x24
	movs r3, #0x18
	bl FUN_02003050
	ldr r1, [r6]
	ldr r0, _02250CDC @ =0x00001988
	ldr r0, [r1, r0]
	bl FUN_02027B50
	adds r4, r0, #0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r1, #1
	ldr r0, [r6, #0x30]
	adds r2, r1, #0
	movs r3, #0xf
	bl FUN_0200DD0C
	adds r0, r4, #0
	bl FUN_0200DD08
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0x26
	movs r3, #0x18
	bl FUN_02003050
	movs r0, #0xc
	movs r1, #0x18
	bl FUN_02023790
	adds r4, r6, #0
	adds r7, r0, #0
	movs r5, #0
	adds r4, #0x34
_02250BEC:
	movs r0, #0xf3
	adds r1, r6, r5
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	ldr r1, [r6, #0x10]
	adds r2, r7, #0
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r1, r0]
	movs r1, #0x77
	bl FUN_02074470
	adds r0, r5, #1
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #5
	lsls r0, r0, #4
	str r0, [sp, #0x1c]
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #3
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _02250CE0 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r7, #0
	adds r0, r4, r0
	adds r3, r1, #0
	bl FUN_0201D78C
	movs r0, #3
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _02250CE0 @ =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [r6]
	ldr r0, [sp, #0x1c]
	adds r2, r3, r2
	adds r2, #0xe8
	movs r1, #0
	ldr r2, [r2]
	adds r0, r4, r0
	adds r3, r1, #0
	bl FUN_0201D78C
	adds r5, r5, #1
	cmp r5, #4
	blt _02250BEC
	adds r0, r7, #0
	bl FUN_020237BC
	movs r3, #1
	lsls r3, r3, #0x1a
	adds r2, r3, #0
	ldr r1, [r3]
	ldr r0, _02250CE4 @ =0xFFFF1FFF
	adds r2, #0x48
	ands r1, r0
	movs r0, #6
	lsls r0, r0, #0xc
	orrs r0, r1
	str r0, [r3]
	ldrh r1, [r2]
	movs r0, #0x3f
	movs r4, #0x1f
	bics r1, r0
	adds r5, r1, #0
	orrs r5, r4
	movs r1, #0x20
	orrs r5, r1
	strh r5, [r2]
	ldrh r6, [r2]
	ldr r5, _02250CE8 @ =0xFFFFC0FF
	lsls r4, r4, #8
	ands r5, r6
	orrs r5, r4
	lsls r4, r1, #8
	orrs r4, r5
	strh r4, [r2]
	adds r2, r3, #0
	adds r2, #0x4a
	ldrh r4, [r2]
	bics r4, r0
	movs r0, #0x1b
	orrs r0, r4
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #0
	movs r2, #0xff
	adds r0, #0x40
	strh r2, [r0]
	adds r0, r3, #0
	movs r1, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x42
	strh r2, [r0]
	adds r3, #0x46
	ldr r0, [sp, #0x14]
	strh r1, [r3]
	bl FUN_02006CA8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02250CDC: .4byte 0x00001988
_02250CE0: .4byte 0x00010200
_02250CE4: .4byte 0xFFFF1FFF
_02250CE8: .4byte 0xFFFFC0FF
	thumb_func_end ov17_02250B00

	thumb_func_start ov17_02250CEC
ov17_02250CEC: @ 0x02250CEC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r3, #0
	movs r0, #1
	str r3, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #1
	movs r2, #2
	bl FUN_020038B0
	movs r3, #0
	movs r0, #1
	str r3, [sp]
	lsls r0, r0, #8
	adds r4, #0xd0
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r1, #3
	movs r2, #2
	bl FUN_020038B0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov17_02250CEC

	thumb_func_start ov17_02250D24
ov17_02250D24: @ 0x02250D24
	bx lr
	.align 2, 0
	thumb_func_end ov17_02250D24

	thumb_func_start ov17_02250D28
ov17_02250D28: @ 0x02250D28
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0x2e
	movs r1, #0x18
	bl FUN_02006C24
	adds r4, r0, #0
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02250D88 @ =0x000080E9
	movs r1, #2
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl FUN_0200CDC4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_02250F68
	adds r0, r5, #0
	bl ov17_02250DB0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_0225122C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov17_02251344
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02250D88: .4byte 0x000080E9
	thumb_func_end ov17_02250D28

	thumb_func_start ov17_02250D8C
ov17_02250D8C: @ 0x02250D8C
	push {r4, lr}
	adds r4, r0, #0
	bl ov17_02250EFC
	adds r0, r4, #0
	bl ov17_022512E0
	adds r0, r4, #0
	bl ov17_02251544
	adds r0, r4, #0
	bl ov17_02250FBC
	adds r0, r4, #0
	bl ov17_022513C0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_02250D8C

	thumb_func_start ov17_02250DB0
ov17_02250DB0: @ 0x02250DB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	adds r5, r0, #0
	movs r0, #0x13
	movs r1, #0x18
	bl FUN_02006C24
	str r0, [sp, #0x18]
	bl FUN_02079FD0
	ldr r1, [sp, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02250EE4 @ =0x000080EB
	movs r1, #2
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl FUN_0200CDC4
	bl FUN_02079FDC
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02250EE8 @ =0x000080EA
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl FUN_0200CE24
	bl FUN_02079FE8
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02250EE8 @ =0x000080EA
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl FUN_0200CE54
	ldr r4, _02250EEC @ =0x02254C5C
	add r3, sp, #0x1c
	movs r2, #6
_02250E20:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02250E20
	ldr r0, [r4]
	movs r7, #0
	str r0, [r3]
	adds r6, r7, #0
	adds r4, r5, #0
_02250E32:
	ldr r0, [r5]
	ldr r0, [r0, r6]
	bl FUN_02079D80
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02250EE8 @ =0x000080EA
	movs r2, #0x13
	adds r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl FUN_0200D888
	ldr r0, _02250EE8 @ =0x000080EA
	add r2, sp, #0x1c
	adds r0, r7, r0
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl FUN_0200CE6C
	movs r1, #0x4e
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D364
	ldr r0, [r5]
	ldr r0, [r0, r6]
	bl FUN_02079FC4
	adds r1, r0, #0
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl FUN_02021F24
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D330
	adds r7, r7, #1
	adds r6, r6, #4
	adds r4, r4, #4
	cmp r7, #4
	blt _02250E32
	ldr r4, _02250EF0 @ =0x02254BD4
	movs r6, #0
	movs r7, #2
_02250EA4:
	movs r0, #0xf3
	adds r1, r5, r6
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	ldrsh r2, [r4, r7]
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	ldrsh r1, [r4, r1]
	bl FUN_0200D4C4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _02250EA4
	ldr r0, _02250EF4 @ =ov17_02250F4C
	ldr r2, _02250EF8 @ =0x0000C738
	adds r1, r5, #0
	bl FUN_0200D9E8
	movs r1, #0x4d
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x18]
	bl FUN_02006CA8
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02250EE4: .4byte 0x000080EB
_02250EE8: .4byte 0x000080EA
_02250EEC: .4byte 0x02254C5C
_02250EF0: .4byte 0x02254BD4
_02250EF4: .4byte ov17_02250F4C
_02250EF8: .4byte 0x0000C738
	thumb_func_end ov17_02250DB0

	thumb_func_start ov17_02250EFC
ov17_02250EFC: @ 0x02250EFC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x2c]
	ldr r1, _02250F44 @ =0x000080EA
	bl FUN_0200D090
	ldr r0, [r6, #0x2c]
	ldr r1, _02250F44 @ =0x000080EA
	bl FUN_0200D0A0
	ldr r0, [r6, #0x2c]
	ldr r1, _02250F48 @ =0x000080EB
	bl FUN_0200D080
	movs r7, #0x4e
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_02250F20:
	ldr r1, _02250F44 @ =0x000080EA
	ldr r0, [r6, #0x2c]
	adds r1, r4, r1
	bl FUN_0200D070
	ldr r0, [r5, r7]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02250F20
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02250F44: .4byte 0x000080EA
_02250F48: .4byte 0x000080EB
	thumb_func_end ov17_02250EFC

	thumb_func_start ov17_02250F4C
ov17_02250F4C: @ 0x02250F4C
	push {r4, r5, r6, lr}
	movs r6, #0x4e
	adds r5, r1, #0
	movs r4, #0
	lsls r6, r6, #2
_02250F56:
	ldr r0, [r5, r6]
	bl FUN_0200D330
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02250F56
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_02250F4C

	thumb_func_start ov17_02250F68
ov17_02250F68: @ 0x02250F68
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02250FB4 @ =0x000080EF
	adds r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	adds r2, r4, #0
	movs r3, #0x66
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _02250FB8 @ =0x000080EC
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	movs r3, #0x65
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _02250FB8 @ =0x000080EC
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	movs r3, #0x64
	bl FUN_0200CE54
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02250FB4: .4byte 0x000080EF
_02250FB8: .4byte 0x000080EC
	thumb_func_end ov17_02250F68

	thumb_func_start ov17_02250FBC
ov17_02250FBC: @ 0x02250FBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, _02250FDC @ =0x000080EF
	bl FUN_0200D070
	ldr r0, [r4, #0x2c]
	ldr r1, _02250FE0 @ =0x000080EC
	bl FUN_0200D090
	ldr r0, [r4, #0x2c]
	ldr r1, _02250FE0 @ =0x000080EC
	bl FUN_0200D0A0
	pop {r4, pc}
	nop
_02250FDC: .4byte 0x000080EF
_02250FE0: .4byte 0x000080EC
	thumb_func_end ov17_02250FBC

	thumb_func_start ov17_02250FE4
ov17_02250FE4: @ 0x02250FE4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x18
	movs r1, #8
	bl FUN_02018144
	movs r1, #0
	movs r2, #8
	adds r6, r0, #0
	blx FUN_020C4CF4
	str r5, [r6]
	movs r4, #0
_02250FFE:
	adds r0, r5, #0
	bl ov17_02251070
	adds r4, r4, #1
	cmp r4, #8
	blt _02250FFE
	ldr r0, _02251018 @ =ov17_0225102C
	ldr r2, _0225101C @ =0x0000C35A
	adds r1, r6, #0
	bl FUN_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_02251018: .4byte ov17_0225102C
_0225101C: .4byte 0x0000C35A
	thumb_func_end ov17_02250FE4

	thumb_func_start ov17_02251020
ov17_02251020: @ 0x02251020
	ldr r1, _02251028 @ =0x0000127D
	movs r2, #1
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_02251028: .4byte 0x0000127D
	thumb_func_end ov17_02251020

	thumb_func_start ov17_0225102C
ov17_0225102C: @ 0x0225102C
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r1]
	ldr r0, _0225106C @ =0x0000127D
	ldrb r2, [r3, r0]
	cmp r2, #1
	bne _02251048
	adds r0, r1, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
	pop {r4, pc}
_02251048:
	adds r0, r0, #1
	ldrb r0, [r3, r0]
	cmp r0, #0x30
	bhs _02251068
	movs r0, #4
	ldrsh r2, [r1, r0]
	adds r2, r2, #1
	strh r2, [r1, #4]
	ldrsh r0, [r1, r0]
	cmp r0, #4
	ble _02251068
	movs r0, #0
	strh r0, [r1, #4]
	ldr r0, [r1]
	bl ov17_02251070
_02251068:
	pop {r4, pc}
	nop
_0225106C: .4byte 0x0000127D
	thumb_func_end ov17_0225102C

	thumb_func_start ov17_02251070
ov17_02251070: @ 0x02251070
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x18
	movs r1, #0x20
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C4CF4
	str r5, [r4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _02251130 @ =0x02254C28
	bl FUN_0200CE6C
	str r0, [r4, #4]
	ldr r0, [r5]
	bl FUN_02094E98
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [r5]
	adds r6, #0x14
	bl FUN_02094E98
	movs r1, #0x30
	blx FUN_020E1F6C
	adds r2, r1, #0
	lsls r0, r6, #8
	lsls r1, r6, #0x10
	subs r2, #0x10
	str r0, [r4, #8]
	lsls r0, r2, #8
	str r0, [r4, #0xc]
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	ldr r0, [r5]
	bl FUN_02094E98
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x17
	subs r1, r1, r2
	movs r0, #0x17
	rors r1, r0
	adds r0, r2, r1
	adds r0, #0x60
	str r0, [r4, #0x14]
	ldr r0, [r5]
	bl FUN_02094E98
	movs r1, #3
	lsls r1, r1, #8
	blx FUN_020E1F6C
	movs r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r4, #0x18]
	ldr r0, [r5]
	bl FUN_02094E98
	movs r1, #0x18
	blx FUN_020E1F6C
	adds r1, #0x10
	strh r1, [r4, #0x12]
	ldr r0, [r5]
	bl FUN_02094E98
	movs r1, #9
	blx FUN_020E1F6C
	ldr r0, [r4, #4]
	bl FUN_0200D364
	ldr r0, [r4, #4]
	bl FUN_0200D330
	ldr r0, _02251134 @ =ov17_02251140
	ldr r2, _02251138 @ =0x0000C35B
	adds r1, r4, #0
	bl FUN_0200D9E8
	ldr r0, _0225113C @ =0x0000127E
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_02251130: .4byte 0x02254C28
_02251134: .4byte ov17_02251140
_02251138: .4byte 0x0000C35B
_0225113C: .4byte 0x0000127E
	thumb_func_end ov17_02251070

	thumb_func_start ov17_02251140
ov17_02251140: @ 0x02251140
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	ldr r1, _02251224 @ =0x0000127D
	ldrb r1, [r0, r1]
	cmp r1, #1
	beq _02251174
	ldr r2, [r4, #0xc]
	asrs r1, r2, #7
	lsrs r1, r1, #0x18
	adds r1, r2, r1
	asrs r1, r1, #8
	cmp r1, #0xd0
	bgt _02251174
	movs r2, #0x10
	ldrsh r1, [r4, r2]
	ldr r3, [r4, #8]
	subs r2, #0x20
	adds r3, r3, r1
	asrs r1, r3, #7
	lsrs r1, r1, #0x18
	adds r1, r3, r1
	asrs r1, r1, #8
	cmp r1, r2
	bge _02251190
_02251174:
	ldr r1, _02251228 @ =0x0000127E
	ldrb r2, [r0, r1]
	subs r2, r2, #1
	strb r2, [r0, r1]
	ldr r0, [r4, #4]
	bl FUN_0200D0F4
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
_02251190:
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	adds r0, r4, #0
	adds r2, r2, r1
	movs r1, #0x5a
	lsls r1, r1, #0xa
	adds r0, #0x1c
	str r2, [r4, #0x1c]
	cmp r2, r1
	blt _022511AA
	ldr r2, [r0]
	subs r1, r2, r1
	str r1, [r0]
_022511AA:
	movs r0, #0x12
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x1c]
	lsls r5, r0, #0xc
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	asrs r1, r0, #0x1f
	asrs r3, r5, #0x1f
	adds r2, r5, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	strh r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	subs r0, r1, r0
	str r0, [r4, #8]
	movs r0, #0xa
	ldr r1, [r4, #0xc]
	lsls r0, r0, #6
	adds r2, r1, r0
	str r2, [r4, #0xc]
	ldr r3, [r4, #8]
	ldr r0, [r4, #4]
	asrs r1, r3, #7
	lsrs r1, r1, #0x18
	adds r1, r3, r1
	asrs r3, r1, #8
	movs r1, #0x10
	ldrsh r1, [r4, r1]
	adds r1, r3, r1
	asrs r3, r2, #7
	lsrs r3, r3, #0x18
	adds r3, r2, r3
	lsls r1, r1, #0x10
	lsls r2, r3, #8
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	ldr r0, [r4, #4]
	bl FUN_0200D330
	pop {r3, r4, r5, pc}
	nop
_02251224: .4byte 0x0000127D
_02251228: .4byte 0x0000127E
	thumb_func_end ov17_02251140

	thumb_func_start ov17_0225122C
ov17_0225122C: @ 0x0225122C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022512D0 @ =0x000080EE
	adds r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	adds r2, r4, #0
	movs r3, #0x54
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _022512D4 @ =0x000080EB
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	movs r3, #0x53
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _022512D4 @ =0x000080EB
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	movs r3, #0x52
	bl FUN_0200CE54
	movs r7, #0x52
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_0225127A:
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _022512D8 @ =0x02254C90
	bl FUN_0200CE6C
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	bl FUN_0200D330
	ldr r0, [r4, r7]
	movs r1, #0
	bl FUN_0200D3F4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0225127A
	ldr r4, _022512DC @ =0x02254BE4
	movs r6, #0
	movs r7, #2
_022512A8:
	movs r0, #0xf3
	adds r1, r5, r6
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	ldrsh r2, [r4, r7]
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	ldrsh r1, [r4, r1]
	bl FUN_0200D4C4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _022512A8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022512D0: .4byte 0x000080EE
_022512D4: .4byte 0x000080EB
_022512D8: .4byte 0x02254C90
_022512DC: .4byte 0x02254BE4
	thumb_func_end ov17_0225122C

	thumb_func_start ov17_022512E0
ov17_022512E0: @ 0x022512E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r1, _02251314 @ =0x000080EE
	bl FUN_0200D070
	ldr r0, [r5, #0x2c]
	ldr r1, _02251318 @ =0x000080EB
	bl FUN_0200D090
	ldr r0, [r5, #0x2c]
	ldr r1, _02251318 @ =0x000080EB
	bl FUN_0200D0A0
	movs r6, #0x52
	movs r4, #0
	lsls r6, r6, #2
_02251302:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02251302
	pop {r4, r5, r6, pc}
	nop
_02251314: .4byte 0x000080EE
_02251318: .4byte 0x000080EB
	thumb_func_end ov17_022512E0

	thumb_func_start ov17_0225131C
ov17_0225131C: @ 0x0225131C
	push {r3, r4, r5, lr}
	movs r3, #0x52
	lsls r3, r3, #2
	lsls r4, r1, #2
	adds r5, r0, r3
	ldr r0, [r5, r4]
	adds r1, r2, #0
	bl FUN_0200D364
	ldr r0, [r5, r4]
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, _02251340 @ =0x000005DD
	bl FUN_02005748
	pop {r3, r4, r5, pc}
	nop
_02251340: .4byte 0x000005DD
	thumb_func_end ov17_0225131C

	thumb_func_start ov17_02251344
ov17_02251344: @ 0x02251344
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r5, r0, #0
	str r4, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022513B4 @ =0x000080EC
	movs r1, #2
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl FUN_0200CDC4
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022513B8 @ =0x000080F0
	adds r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	movs r3, #0x57
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _022513BC @ =0x000080ED
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	movs r3, #0x56
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _022513BC @ =0x000080ED
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	movs r3, #0x55
	bl FUN_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022513B4: .4byte 0x000080EC
_022513B8: .4byte 0x000080F0
_022513BC: .4byte 0x000080ED
	thumb_func_end ov17_02251344

	thumb_func_start ov17_022513C0
ov17_022513C0: @ 0x022513C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, _022513E8 @ =0x000080EC
	bl FUN_0200D080
	ldr r0, [r4, #0x2c]
	ldr r1, _022513EC @ =0x000080F0
	bl FUN_0200D070
	ldr r0, [r4, #0x2c]
	ldr r1, _022513F0 @ =0x000080ED
	bl FUN_0200D090
	ldr r0, [r4, #0x2c]
	ldr r1, _022513F0 @ =0x000080ED
	bl FUN_0200D0A0
	pop {r4, pc}
	nop
_022513E8: .4byte 0x000080EC
_022513EC: .4byte 0x000080F0
_022513F0: .4byte 0x000080ED
	thumb_func_end ov17_022513C0

	thumb_func_start ov17_022513F4
ov17_022513F4: @ 0x022513F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	str r3, [sp]
	cmp r2, #0
	beq _0225140A
	cmp r2, #1
	beq _0225141E
	cmp r2, #2
	beq _02251438
	b _02251458
_0225140A:
	movs r0, #1
	str r0, [sp, #0x14]
	movs r0, #0x56
	lsls r0, r0, #2
	adds r2, r7, r0
	movs r0, #0x30
	muls r0, r1, r0
	movs r6, #0
	adds r4, r2, r0
	b _02251460
_0225141E:
	lsls r0, r1, #1
	adds r2, r7, r0
	ldr r0, _0225153C @ =0x0000041E
	ldrsh r6, [r2, r0]
	movs r0, #0x11
	str r0, [sp, #0x14]
	movs r0, #0x86
	lsls r0, r0, #2
	adds r2, r7, r0
	movs r0, #0x30
	muls r0, r1, r0
	adds r4, r2, r0
	b _02251460
_02251438:
	lsls r0, r1, #1
	adds r3, r7, r0
	ldr r0, _0225153C @ =0x0000041E
	ldrsh r2, [r3, r0]
	adds r0, #8
	ldrsh r0, [r3, r0]
	adds r6, r2, r0
	movs r0, #0x21
	str r0, [sp, #0x14]
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r2, r7, r0
	movs r0, #0x30
	muls r0, r1, r0
	adds r4, r2, r0
	b _02251460
_02251458:
	bl FUN_02022974
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02251460:
	ldr r0, [sp, #0x30]
	adds r6, #0x30
	lsls r0, r0, #5
	str r0, [sp, #0x10]
	adds r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp]
	asrs r0, r0, #3
	lsrs r1, r0, #0x1c
	ldr r0, [sp]
	adds r1, r0, r1
	asrs r0, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [sp]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1c
	subs r1, r1, r2
	movs r0, #0x1c
	rors r1, r0
	adds r0, r2, r1
	beq _02251490
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
_02251490:
	ldr r0, [sp, #0xc]
	cmp r0, #0xc
	ble _0225149A
	bl FUN_02022974
_0225149A:
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _022514C6
	adds r5, r4, #0
_022514A6:
	ldr r0, [r5]
	cmp r0, #0
	bne _022514B8
	ldr r0, [r7, #0x28]
	ldr r1, [r7, #0x2c]
	ldr r2, _02251540 @ =0x02254CC4
	bl FUN_0200CE6C
	str r0, [r5]
_022514B8:
	ldr r0, [sp, #8]
	adds r5, r5, #4
	adds r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _022514A6
_022514C6:
	ldr r0, [sp]
	movs r7, #0
	cmp r0, #0x10
	blt _022514EE
	ldr r0, [sp, #0x14]
	adds r5, r4, #0
	str r0, [sp, #4]
	adds r0, #0xf
	str r0, [sp, #4]
_022514D8:
	ldr r0, [r5]
	ldr r1, [sp, #4]
	bl FUN_0200D364
	ldr r0, [sp]
	adds r5, r5, #4
	subs r0, #0x10
	adds r7, r7, #1
	str r0, [sp]
	cmp r0, #0x10
	bge _022514D8
_022514EE:
	ldr r0, [sp]
	cmp r0, #0
	ble _0225150A
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bge _0225150A
	ldr r2, [sp, #0x14]
	ldr r1, [sp]
	lsls r0, r7, #2
	adds r1, r2, r1
	ldr r0, [r4, r0]
	subs r1, r1, #1
	bl FUN_0200D364
_0225150A:
	ldr r0, [sp, #0xc]
	movs r5, #0
	cmp r0, #0
	ble _02251536
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
_02251518:
	lsls r1, r6, #0x10
	ldr r0, [r4]
	asrs r1, r1, #0x10
	adds r2, r7, #0
	bl FUN_0200D4C4
	ldr r0, [r4]
	bl FUN_0200D330
	ldr r0, [sp, #0xc]
	adds r5, r5, #1
	adds r6, #0x10
	adds r4, r4, #4
	cmp r5, r0
	blt _02251518
_02251536:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225153C: .4byte 0x0000041E
_02251540: .4byte 0x02254CC4
	thumb_func_end ov17_022513F4

	thumb_func_start ov17_02251544
ov17_02251544: @ 0x02251544
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r7, #0x86
	lsls r7, r7, #2
	str r0, [sp]
	movs r0, #0
	adds r6, r7, #0
	str r0, [sp, #4]
	subs r6, #0xc0
_02251556:
	ldr r5, [sp]
	movs r4, #0
_0225155A:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _02251564
	bl FUN_0200D0F4
_02251564:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0225156E
	bl FUN_0200D0F4
_0225156E:
	movs r0, #0xb6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225157C
	bl FUN_0200D0F4
_0225157C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xc
	blt _0225155A
	ldr r0, [sp]
	adds r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02251556
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02251544

	thumb_func_start ov17_02251598
ov17_02251598: @ 0x02251598
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0
	strb r0, [r7]
	movs r0, #0x18
	movs r1, #0x14
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	str r5, [r4]
	str r7, [r4, #4]
	cmp r6, #0
	ldr r2, _022515E8 @ =0x0000A028
	bne _022515D2
	movs r0, #6
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, _022515EC @ =ov17_022515F4
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_022515D2:
	movs r0, #3
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #9
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, _022515F0 @ =ov17_02251688
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022515E8: .4byte 0x0000A028
_022515EC: .4byte ov17_022515F4
_022515F0: .4byte ov17_02251688
	thumb_func_end ov17_02251598

	thumb_func_start ov17_022515F4
ov17_022515F4: @ 0x022515F4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _0225166E
	movs r0, #1
	ldr r2, [r1, #8]
	lsls r0, r0, #0xa
	subs r2, r2, r0
	str r2, [r1, #8]
	ldr r2, [r1, #0xc]
	adds r0, r2, r0
	str r0, [r1, #0xc]
	movs r0, #3
	ldr r2, [r1, #8]
	lsls r0, r0, #0xc
	cmp r2, r0
	bgt _02251626
	str r0, [r1, #8]
	movs r0, #9
	lsls r0, r0, #0xc
	str r0, [r1, #0xc]
	ldrb r0, [r1, #0x10]
	adds r0, r0, #1
	strb r0, [r1, #0x10]
_02251626:
	ldr r3, [r1]
	ldr r2, _02251684 @ =0x00000851
	movs r0, #0
	strb r0, [r3, r2]
	ldr r3, [r1, #8]
	ldr r4, [r1]
	asrs r5, r3, #8
	adds r3, r2, #1
	strb r5, [r4, r3]
	ldr r4, [r1]
	movs r5, #0xff
	adds r3, r2, #2
	strb r5, [r4, r3]
	ldr r3, [r1, #0xc]
	ldr r4, [r1]
	asrs r5, r3, #8
	adds r3, r2, #3
	strb r5, [r4, r3]
	ldr r4, [r1]
	movs r5, #1
	adds r3, r2, #4
	strb r5, [r4, r3]
	ldr r3, [r1, #8]
	ldr r4, [r1]
	asrs r5, r3, #8
	adds r3, r2, #5
	strb r5, [r4, r3]
	ldr r4, [r1]
	adds r3, r2, #6
	strb r0, [r4, r3]
	ldr r0, [r1, #0xc]
	ldr r1, [r1]
	asrs r3, r0, #8
	adds r0, r2, #7
	strb r3, [r1, r0]
	pop {r3, r4, r5, pc}
_0225166E:
	ldr r0, [r1, #4]
	movs r2, #1
	strb r2, [r0]
	adds r0, r1, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	nop
_02251684: .4byte 0x00000851
	thumb_func_end ov17_022515F4

	thumb_func_start ov17_02251688
ov17_02251688: @ 0x02251688
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _022516FE
	movs r0, #1
	ldr r2, [r1, #8]
	lsls r0, r0, #0xa
	adds r2, r2, r0
	str r2, [r1, #8]
	ldr r2, [r1, #0xc]
	subs r0, r2, r0
	str r0, [r1, #0xc]
	movs r0, #6
	ldr r2, [r1, #8]
	lsls r0, r0, #0xc
	cmp r2, r0
	blt _022516B6
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	ldrb r0, [r1, #0x10]
	adds r0, r0, #1
	strb r0, [r1, #0x10]
_022516B6:
	ldr r3, [r1]
	ldr r2, _02251714 @ =0x00000851
	movs r0, #0
	strb r0, [r3, r2]
	ldr r3, [r1, #8]
	ldr r4, [r1]
	asrs r5, r3, #8
	adds r3, r2, #1
	strb r5, [r4, r3]
	ldr r4, [r1]
	movs r5, #0xff
	adds r3, r2, #2
	strb r5, [r4, r3]
	ldr r3, [r1, #0xc]
	ldr r4, [r1]
	asrs r5, r3, #8
	adds r3, r2, #3
	strb r5, [r4, r3]
	ldr r4, [r1]
	movs r5, #1
	adds r3, r2, #4
	strb r5, [r4, r3]
	ldr r3, [r1, #8]
	ldr r4, [r1]
	asrs r5, r3, #8
	adds r3, r2, #5
	strb r5, [r4, r3]
	ldr r4, [r1]
	adds r3, r2, #6
	strb r0, [r4, r3]
	ldr r0, [r1, #0xc]
	ldr r1, [r1]
	asrs r3, r0, #8
	adds r0, r2, #7
	strb r3, [r1, r0]
	pop {r3, r4, r5, pc}
_022516FE:
	ldr r0, [r1, #4]
	movs r2, #1
	strb r2, [r0]
	adds r0, r1, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	nop
_02251714: .4byte 0x00000851
	thumb_func_end ov17_02251688

	thumb_func_start ov17_02251718
ov17_02251718: @ 0x02251718
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0
	adds r0, r3, #0
	strb r1, [r0]
	movs r0, #0x18
	movs r1, #0x14
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x14
	adds r4, r0, #0
	blx FUN_020C4CF4
	lsls r0, r6, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x18]
	cmp r7, #0
	str r0, [r4]
	ldr r0, [sp]
	ldr r2, _02251778 @ =0x0000C350
	str r0, [r4, #4]
	bne _02251762
	movs r0, #0x4a
	lsls r0, r0, #0xa
	str r0, [r4, #8]
	movs r0, #6
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, _0225177C @ =ov17_02251784
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02251762:
	movs r0, #2
	lsls r0, r0, #0xe
	str r0, [r4, #8]
	movs r0, #6
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, _02251780 @ =ov17_022517F0
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02251778: .4byte 0x0000C350
_0225177C: .4byte ov17_02251784
_02251780: .4byte ov17_022517F0
	thumb_func_end ov17_02251718

	thumb_func_start ov17_02251784
ov17_02251784: @ 0x02251784
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02251796
	cmp r0, #1
	beq _022517A6
	b _022517DA
_02251796:
	ldr r0, [r4]
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_022517A6:
	movs r0, #2
	ldr r1, [r4, #8]
	lsls r0, r0, #0xa
	subs r2, r1, r0
	lsls r1, r0, #4
	str r2, [r4, #8]
	cmp r2, r1
	bgt _022517C0
	lsls r0, r0, #4
	str r0, [r4, #8]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_022517C0:
	ldr r2, [r4, #8]
	ldr r0, [r4]
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldr r2, [r4, #0xc]
	ldr r0, [r4]
	movs r1, #1
	asrs r2, r2, #8
	bl FUN_02007DEC
	pop {r3, r4, r5, pc}
_022517DA:
	ldr r0, [r4, #4]
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov17_02251784

	thumb_func_start ov17_022517F0
ov17_022517F0: @ 0x022517F0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02251802
	cmp r0, #1
	beq _02251806
	b _0225183C
_02251802:
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_02251806:
	movs r0, #2
	ldr r1, [r4, #8]
	lsls r0, r0, #0xa
	subs r1, r1, r0
	ldr r0, _0225185C @ =0xFFFFD800
	str r1, [r4, #8]
	cmp r1, r0
	bgt _0225181C
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_0225181C:
	ldr r3, [r4, #8]
	ldr r0, [r4]
	asrs r2, r3, #7
	lsrs r2, r2, #0x18
	adds r2, r3, r2
	movs r1, #0
	asrs r2, r2, #8
	bl FUN_02007DEC
	ldr r2, [r4, #0xc]
	ldr r0, [r4]
	movs r1, #1
	asrs r2, r2, #8
	bl FUN_02007DEC
	pop {r3, r4, r5, pc}
_0225183C:
	ldr r0, [r4]
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	ldr r0, [r4, #4]
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	nop
_0225185C: .4byte 0xFFFFD800
	thumb_func_end ov17_022517F0

	thumb_func_start ov17_02251860
ov17_02251860: @ 0x02251860
	ldr r2, _022518FC @ =0x00000121
	ldrb r0, [r0, r2]
	cmp r0, #8
	bhi _022518F6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02251874: @ jump table
	.2byte _02251886 - _02251874 - 2 @ case 0
	.2byte _0225189E - _02251874 - 2 @ case 1
	.2byte _022518B4 - _02251874 - 2 @ case 2
	.2byte _022518D2 - _02251874 - 2 @ case 3
	.2byte _022518D2 - _02251874 - 2 @ case 4
	.2byte _022518DE - _02251874 - 2 @ case 5
	.2byte _022518DE - _02251874 - 2 @ case 6
	.2byte _022518EA - _02251874 - 2 @ case 7
	.2byte _022518EA - _02251874 - 2 @ case 8
_02251886:
	cmp r1, #0
	beq _02251890
	cmp r1, #2
	beq _02251894
	b _0225189A
_02251890:
	ldr r0, _02251900 @ =0x00001770
	bx lr
_02251894:
	movs r0, #0xfa
	lsls r0, r0, #4
	bx lr
_0225189A:
	movs r0, #0
	bx lr
_0225189E:
	cmp r1, #0
	beq _022518A8
	cmp r1, #1
	beq _022518AC
	b _022518B0
_022518A8:
	ldr r0, _02251904 @ =0x00001B58
	bx lr
_022518AC:
	ldr r0, _02251908 @ =0x00000BB8
	bx lr
_022518B0:
	movs r0, #0
	bx lr
_022518B4:
	cmp r1, #0
	beq _022518C2
	cmp r1, #1
	beq _022518C6
	cmp r1, #2
	beq _022518CA
	b _022518CE
_022518C2:
	ldr r0, _0225190C @ =0x00000D05
	bx lr
_022518C6:
	ldr r0, _0225190C @ =0x00000D05
	bx lr
_022518CA:
	ldr r0, _0225190C @ =0x00000D05
	bx lr
_022518CE:
	movs r0, #0
	bx lr
_022518D2:
	cmp r1, #0
	bne _022518DA
	ldr r0, _02251910 @ =0x00002710
	bx lr
_022518DA:
	movs r0, #0
	bx lr
_022518DE:
	cmp r1, #1
	bne _022518E6
	ldr r0, _02251910 @ =0x00002710
	bx lr
_022518E6:
	movs r0, #0
	bx lr
_022518EA:
	cmp r1, #2
	bne _022518F2
	ldr r0, _02251910 @ =0x00002710
	bx lr
_022518F2:
	movs r0, #0
	bx lr
_022518F6:
	movs r0, #0
	bx lr
	nop
_022518FC: .4byte 0x00000121
_02251900: .4byte 0x00001770
_02251904: .4byte 0x00001B58
_02251908: .4byte 0x00000BB8
_0225190C: .4byte 0x00000D05
_02251910: .4byte 0x00002710
	thumb_func_end ov17_02251860

	thumb_func_start ov17_02251914
ov17_02251914: @ 0x02251914
	push {r3, lr}
	bl ov17_02251860
	movs r1, #0xc0
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r1, _0225192C @ =0x00001388
	adds r0, r2, r1
	lsls r1, r1, #1
	blx FUN_020E1F6C
	pop {r3, pc}
	.align 2, 0
_0225192C: .4byte 0x00001388
	thumb_func_end ov17_02251914

	thumb_func_start ov17_02251930
ov17_02251930: @ 0x02251930
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp]
	movs r0, #0
	ldr r7, [sp]
	adds r5, r1, #0
	adds r6, r2, #0
	str r0, [sp, #8]
	add r4, sp, #0x24
_02251942:
	cmp r5, #0
	beq _02251950
	cmp r5, #1
	beq _0225196A
	cmp r5, #2
	beq _02251974
	b _0225197C
_02251950:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl FUN_02095928
	str r0, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl FUN_0209598C
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	str r0, [r4]
	b _02251984
_0225196A:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldrsh r0, [r7, r0]
	str r0, [r4]
	b _02251984
_02251974:
	ldr r0, _02251A18 @ =0x0000012E
	ldrsh r0, [r7, r0]
	str r0, [r4]
	b _02251984
_0225197C:
	bl FUN_02022974
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_02251984:
	ldr r0, [sp, #8]
	adds r4, r4, #4
	adds r0, r0, #1
	adds r7, #0xc
	str r0, [sp, #8]
	cmp r0, #4
	blt _02251942
	movs r4, #0
	movs r3, #1
	add r2, sp, #0x28
	add r7, sp, #0x24
_0225199A:
	lsls r0, r4, #2
	ldr r1, [r7, r0]
	ldr r0, [r2]
	cmp r1, r0
	bge _022519A6
	adds r4, r3, #0
_022519A6:
	adds r3, r3, #1
	adds r2, r2, #4
	cmp r3, #4
	blt _0225199A
	ldr r0, [sp]
	adds r1, r5, #0
	bl ov17_02251860
	lsls r2, r4, #2
	add r1, sp, #0x24
	ldr r1, [r1, r2]
	blx FUN_020E1F6C
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #4]
	add r7, sp, #0x24
	add r4, sp, #0x14
_022519CA:
	ldr r0, [r7]
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	str r0, [r4]
	adds r0, #0x32
	movs r1, #0x64
	blx FUN_020E1F6C
	stm r4!, {r0}
	ldr r0, [sp, #4]
	adds r7, r7, #4
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _022519CA
	movs r2, #0
	add r1, sp, #0x14
_022519EC:
	cmp r5, #0
	beq _022519FA
	cmp r5, #1
	beq _02251A00
	cmp r5, #2
	beq _02251A06
	b _02251A0A
_022519FA:
	ldr r0, [r1]
	strh r0, [r6]
	b _02251A0A
_02251A00:
	ldr r0, [r1]
	strh r0, [r6]
	b _02251A0A
_02251A06:
	ldr r0, [r1]
	strh r0, [r6]
_02251A0A:
	adds r2, r2, #1
	adds r1, r1, #4
	adds r6, r6, #2
	cmp r2, #4
	blt _022519EC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02251A18: .4byte 0x0000012E
	thumb_func_end ov17_02251930

	thumb_func_start ov17_02251A1C
ov17_02251A1C: @ 0x02251A1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	ldr r0, [r0]
	ldr r1, _02251D3C @ =0x00000121
	ldrb r1, [r0, r1]
	cmp r1, #8
	bhi _02251ADC
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02251A38: @ jump table
	.2byte _02251A4A - _02251A38 - 2 @ case 0
	.2byte _02251A68 - _02251A38 - 2 @ case 1
	.2byte _02251A86 - _02251A38 - 2 @ case 2
	.2byte _02251AB4 - _02251A38 - 2 @ case 3
	.2byte _02251AB4 - _02251A38 - 2 @ case 4
	.2byte _02251AC2 - _02251A38 - 2 @ case 5
	.2byte _02251AC2 - _02251A38 - 2 @ case 6
	.2byte _02251AD0 - _02251A38 - 2 @ case 7
	.2byte _02251AD0 - _02251A38 - 2 @ case 8
_02251A4A:
	ldr r3, _02251D40 @ =0x000003D6
	ldr r2, [sp]
	movs r1, #0
	adds r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D44 @ =0x000003E6
	ldr r2, [sp]
	ldr r0, [r0]
	movs r1, #2
	adds r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251A68:
	ldr r3, _02251D40 @ =0x000003D6
	ldr r2, [sp]
	movs r1, #0
	adds r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D48 @ =0x000003DE
	ldr r2, [sp]
	ldr r0, [r0]
	movs r1, #1
	adds r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251A86:
	ldr r3, _02251D40 @ =0x000003D6
	ldr r2, [sp]
	movs r1, #0
	adds r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D48 @ =0x000003DE
	ldr r2, [sp]
	ldr r0, [r0]
	movs r1, #1
	adds r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D44 @ =0x000003E6
	ldr r2, [sp]
	ldr r0, [r0]
	movs r1, #2
	adds r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251AB4:
	ldr r3, _02251D40 @ =0x000003D6
	ldr r2, [sp]
	movs r1, #0
	adds r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251AC2:
	ldr r3, _02251D48 @ =0x000003DE
	ldr r2, [sp]
	movs r1, #1
	adds r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251AD0:
	ldr r3, _02251D44 @ =0x000003E6
	ldr r2, [sp]
	movs r1, #2
	adds r2, r2, r3
	bl ov17_02251930
_02251ADC:
	ldr r7, _02251D40 @ =0x000003D6
	ldr r6, [sp]
	adds r0, r7, #0
	adds r1, r7, #0
	movs r5, #0
	adds r0, #8
	adds r1, #0x18
_02251AEA:
	ldr r2, _02251D44 @ =0x000003E6
	ldrsh r3, [r6, r7]
	ldrsh r4, [r6, r2]
	ldrsh r2, [r6, r0]
	adds r5, r5, #1
	adds r2, r3, r2
	adds r2, r4, r2
	strh r2, [r6, r1]
	adds r6, r6, #2
	cmp r5, #4
	blt _02251AEA
	ldr r1, [sp]
	ldr r4, _02251D40 @ =0x000003D6
	movs r0, #0
	movs r2, #1
	adds r1, r1, #2
	adds r5, r4, #0
_02251B0C:
	ldr r3, [sp]
	lsls r6, r0, #1
	adds r3, r3, r6
	ldrsh r6, [r3, r4]
	ldrsh r3, [r1, r5]
	cmp r6, r3
	bge _02251B1C
	adds r0, r2, #0
_02251B1C:
	adds r2, r2, #1
	adds r1, r1, #2
	cmp r2, #4
	blt _02251B0C
	lsls r1, r0, #1
	ldr r0, [sp]
	ldr r4, [sp]
	adds r1, r0, r1
	ldr r0, _02251D40 @ =0x000003D6
	movs r5, #0
	adds r7, r0, #0
	ldrsh r6, [r1, r0]
	adds r7, #0x20
_02251B36:
	ldr r0, _02251D40 @ =0x000003D6
	ldrsh r1, [r4, r0]
	movs r0, #0x64
	muls r0, r1, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	strh r0, [r4, r7]
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r5, #4
	blt _02251B36
	ldr r0, [sp]
	ldr r4, _02251D48 @ =0x000003DE
	movs r2, #0
	movs r1, #1
	adds r0, r0, #2
	adds r5, r4, #0
_02251B5A:
	ldr r3, [sp]
	lsls r6, r2, #1
	adds r3, r3, r6
	ldrsh r6, [r3, r4]
	ldrsh r3, [r0, r5]
	cmp r6, r3
	bge _02251B6A
	adds r2, r1, #0
_02251B6A:
	adds r1, r1, #1
	adds r0, r0, #2
	cmp r1, #4
	blt _02251B5A
	ldr r0, [sp]
	lsls r1, r2, #1
	adds r1, r0, r1
	ldr r0, _02251D48 @ =0x000003DE
	ldr r4, [sp]
	adds r7, r0, #0
	ldrsh r6, [r1, r0]
	movs r5, #0
	adds r7, #0x20
_02251B84:
	ldr r0, _02251D48 @ =0x000003DE
	ldrsh r1, [r4, r0]
	movs r0, #0x64
	muls r0, r1, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	strh r0, [r4, r7]
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r5, #4
	blt _02251B84
	ldr r0, [sp]
	ldr r4, _02251D44 @ =0x000003E6
	movs r2, #0
	movs r1, #1
	adds r0, r0, #2
	adds r5, r4, #0
_02251BA8:
	ldr r3, [sp]
	lsls r6, r2, #1
	adds r3, r3, r6
	ldrsh r6, [r3, r4]
	ldrsh r3, [r0, r5]
	cmp r6, r3
	bge _02251BB8
	adds r2, r1, #0
_02251BB8:
	adds r1, r1, #1
	adds r0, r0, #2
	cmp r1, #4
	blt _02251BA8
	ldr r0, [sp]
	lsls r1, r2, #1
	adds r1, r0, r1
	ldr r0, _02251D44 @ =0x000003E6
	ldr r4, [sp]
	adds r7, r0, #0
	ldrsh r6, [r1, r0]
	movs r5, #0
	adds r7, #0x20
_02251BD2:
	ldr r0, _02251D44 @ =0x000003E6
	ldrsh r1, [r4, r0]
	movs r0, #0x64
	muls r0, r1, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	strh r0, [r4, r7]
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r5, #4
	blt _02251BD2
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0]
	bl ov17_02251914
	ldr r4, [sp]
	ldr r7, _02251D4C @ =0x0000041E
	adds r6, r0, #0
	movs r5, #0
_02251BFC:
	ldr r0, _02251D50 @ =0x000003F6
	movs r1, #0x64
	ldrsh r0, [r4, r0]
	muls r0, r6, r0
	blx FUN_020E1F6C
	strh r0, [r4, r7]
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r5, #4
	blt _02251BFC
	ldr r0, [sp]
	movs r1, #1
	ldr r0, [r0]
	bl ov17_02251914
	ldr r4, [sp]
	ldr r7, _02251D54 @ =0x00000426
	adds r6, r0, #0
	movs r5, #0
_02251C24:
	ldr r0, _02251D58 @ =0x000003FE
	movs r1, #0x64
	ldrsh r0, [r4, r0]
	muls r0, r6, r0
	blx FUN_020E1F6C
	strh r0, [r4, r7]
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r5, #4
	blt _02251C24
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	bl ov17_02251914
	ldr r4, [sp]
	ldr r7, _02251D5C @ =0x0000042E
	adds r6, r0, #0
	movs r5, #0
_02251C4C:
	ldr r0, _02251D60 @ =0x00000406
	movs r1, #0x64
	ldrsh r0, [r4, r0]
	muls r0, r6, r0
	blx FUN_020E1F6C
	strh r0, [r4, r7]
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r5, #4
	blt _02251C4C
	ldr r7, _02251D4C @ =0x0000041E
	ldr r5, [sp]
	adds r0, r7, #0
	adds r1, r7, #0
	movs r6, #0
	adds r0, #8
	subs r1, #8
_02251C70:
	ldr r2, _02251D5C @ =0x0000042E
	ldrsh r3, [r5, r7]
	ldrsh r4, [r5, r2]
	ldrsh r2, [r5, r0]
	adds r6, r6, #1
	adds r2, r3, r2
	adds r2, r4, r2
	strh r2, [r5, r1]
	adds r5, r5, #2
	cmp r6, #4
	blt _02251C70
	ldr r0, [sp]
	movs r7, #0
	add r6, sp, #0x18
	str r0, [sp, #4]
	add r4, sp, #8
	add r5, sp, #0x28
_02251C92:
	stm r6!, {r7}
	ldr r1, [sp, #4]
	ldr r0, _02251D64 @ =0x00000416
	ldrsh r0, [r1, r0]
	stm r4!, {r0}
	ldr r0, [sp]
	ldr r0, [r0]
	bl FUN_02094E98
	stm r5!, {r0}
	ldr r0, [sp, #4]
	adds r7, r7, #1
	adds r0, r0, #2
	str r0, [sp, #4]
	cmp r7, #4
	blt _02251C92
	movs r0, #0
	mov ip, r0
_02251CB6:
	mov r0, ip
	movs r7, #3
	cmp r0, #3
	bge _02251D04
	add r2, sp, #0x14
	add r3, sp, #0x34
	add r4, sp, #0x24
_02251CC4:
	subs r0, r2, #4
	ldr r5, [r2]
	ldr r6, [r0]
	cmp r6, r5
	blt _02251CDC
	cmp r6, r5
	bne _02251CF6
	subs r0, r3, #4
	ldr r1, [r0]
	ldr r0, [r3]
	cmp r1, r0
	bge _02251CF6
_02251CDC:
	str r6, [r2]
	subs r0, r2, #4
	str r5, [r0]
	subs r0, r4, #4
	ldr r5, [r4]
	ldr r1, [r0]
	str r1, [r4]
	str r5, [r0]
	subs r0, r3, #4
	ldr r5, [r3]
	ldr r1, [r0]
	str r1, [r3]
	str r5, [r0]
_02251CF6:
	subs r7, r7, #1
	mov r0, ip
	subs r2, r2, #4
	subs r3, r3, #4
	subs r4, r4, #4
	cmp r7, r0
	bgt _02251CC4
_02251D04:
	mov r0, ip
	adds r0, r0, #1
	mov ip, r0
	cmp r0, #3
	blt _02251CB6
	movs r1, #0x13
	ldr r7, _02251D68 @ =0x000003D1
	movs r6, #0
	add r5, sp, #0x18
	movs r0, #0xc
	lsls r1, r1, #4
_02251D1A:
	ldr r3, [sp]
	ldr r2, [r5]
	adds r3, r3, r6
	strb r2, [r3, r7]
	ldr r2, [sp]
	ldr r4, [r2]
	ldr r2, [r5]
	adds r5, r5, #4
	adds r3, r2, #0
	muls r3, r0, r3
	adds r2, r4, r3
	strb r6, [r2, r1]
	adds r6, r6, #1
	cmp r6, #4
	blt _02251D1A
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02251D3C: .4byte 0x00000121
_02251D40: .4byte 0x000003D6
_02251D44: .4byte 0x000003E6
_02251D48: .4byte 0x000003DE
_02251D4C: .4byte 0x0000041E
_02251D50: .4byte 0x000003F6
_02251D54: .4byte 0x00000426
_02251D58: .4byte 0x000003FE
_02251D5C: .4byte 0x0000042E
_02251D60: .4byte 0x00000406
_02251D64: .4byte 0x00000416
_02251D68: .4byte 0x000003D1
	thumb_func_end ov17_02251A1C

	thumb_func_start ov17_02251D6C
ov17_02251D6C: @ 0x02251D6C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02251DA0 @ =0x02254D18
	add r3, sp, #0
	str r1, [sp]
	movs r1, #0xb
	strh r1, [r3, #4]
	ldr r1, [r0]
	ldr r2, _02251DA4 @ =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	subs r1, r2, #7
	ldr r4, [r0]
	adds r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	ldr r1, _02251DA8 @ =0x0000085C
	adds r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02251DA0: .4byte 0x02254D18
_02251DA4: .4byte 0x00000123
_02251DA8: .4byte 0x0000085C
	thumb_func_end ov17_02251D6C

	thumb_func_start ov17_02251DAC
ov17_02251DAC: @ 0x02251DAC
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02251DAC

	thumb_func_start ov17_02251DC0
ov17_02251DC0: @ 0x02251DC0
	push {r3, lr}
	adds r1, r2, #0
	movs r2, #0
	adds r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02251DC0

	thumb_func_start ov17_02251DD0
ov17_02251DD0: @ 0x02251DD0
	bx lr
	.align 2, 0
	thumb_func_end ov17_02251DD0

	thumb_func_start ov17_02251DD4
ov17_02251DD4: @ 0x02251DD4
	push {r3, lr}
	movs r1, #0x9a
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02251DD4

	thumb_func_start ov17_02251DE8
ov17_02251DE8: @ 0x02251DE8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #0xe7
	lsls r1, r1, #2
	str r0, [sp]
	mov ip, r2
	adds r0, r3, #0
	adds r4, r6, r1
	movs r2, #0x4d
_02251DFA:
	ldrh r1, [r0]
	adds r0, r0, #2
	strh r1, [r4]
	adds r4, r4, #2
	subs r2, r2, #1
	bne _02251DFA
	movs r1, #0
	ldr r7, _02251E50 @ =0x00000132
	adds r2, r1, #0
_02251E0C:
	ldr r0, [r6]
	movs r4, #0x4a
	adds r0, r0, r2
	ldrh r5, [r3]
	lsls r4, r4, #2
	adds r1, r1, #1
	strh r5, [r0, r4]
	ldrh r5, [r3, #2]
	adds r4, r4, #2
	adds r2, #0xc
	strh r5, [r0, r4]
	movs r4, #0x4b
	ldrh r5, [r3, #4]
	lsls r4, r4, #2
	strh r5, [r0, r4]
	ldrh r5, [r3, #6]
	adds r4, r4, #2
	strh r5, [r0, r4]
	movs r4, #0x13
	ldrh r5, [r3, #8]
	lsls r4, r4, #4
	strh r5, [r0, r4]
	ldrh r4, [r3, #0xa]
	adds r3, #0xc
	cmp r1, #4
	strh r4, [r0, r7]
	blt _02251E0C
	movs r2, #0
	ldr r0, [sp]
	mov r1, ip
	adds r3, r2, #0
	bl ov17_0224F26C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02251E50: .4byte 0x00000132
	thumb_func_end ov17_02251DE8

	thumb_func_start ov17_02251E54
ov17_02251E54: @ 0x02251E54
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02251E54

	thumb_func_start ov17_02251E68
ov17_02251E68: @ 0x02251E68
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x18
	adds r7, r1, #0
	adds r1, r0, #0
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x18
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02251EA4 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _02251EA8 @ =ov17_02251EAC
	str r6, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02251EA4: .4byte 0x00007530
_02251EA8: .4byte ov17_02251EAC
	thumb_func_end ov17_02251E68

	thumb_func_start ov17_02251EAC
ov17_02251EAC: @ 0x02251EAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _02251EBC
	b _02251FE2
_02251EBC:
	ldr r0, [sp]
	movs r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02251ED0
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_02251ED0:
	ldr r0, [sp]
	movs r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02251EE4
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_02251EE4:
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0]
	movs r1, #2
	ldr r0, [r0, #0x30]
	bl FUN_02019FE4
	mov ip, r0
	movs r0, #0
	str r0, [sp, #8]
	b _02251F5C
_02251EFC:
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _02252000 @ =0x02254CF8
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	adds r0, r1, r0
	bmi _02251F56
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	ldr r0, [sp]
	movs r5, #0
	ldrb r0, [r0, #0x12]
	movs r7, #0x3f
	str r5, [sp, #4]
	lsls r1, r0, #1
	ldr r0, _02252004 @ =0x02254D00
	lsls r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsls r0, r0, #5
	adds r6, r1, r0
	b _02251F50
_02251F2C:
	movs r4, #0
	b _02251F44
_02251F30:
	adds r0, r5, r4
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	adds r0, r6, r4
	adds r4, r4, #1
	orrs r0, r1
	strh r0, [r3, r2]
_02251F44:
	cmp r4, #8
	blt _02251F30
	ldr r0, [sp, #4]
	adds r5, #8
	adds r0, r0, #1
	str r0, [sp, #4]
_02251F50:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _02251F2C
_02251F56:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_02251F5C:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _02251EFC
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _02251F9E
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _02251F9E
	ldr r0, _02252000 @ =0x02254CF8
	subs r1, r1, #1
	ldrsb r0, [r0, r1]
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	movs r0, #0
	movs r1, #0x3f
	str r0, [sp, #4]
	lsls r1, r1, #0xa
	b _02251F98
_02251F88:
	ldr r0, [sp, #4]
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
_02251F98:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _02251F88
_02251F9E:
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl FUN_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	adds r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _02251FFC
	ldr r1, [sp]
	movs r0, #0
	movs r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	adds r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	adds r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _02251FFC
	adds r0, r1, #0
	ldrb r0, [r0, #0x10]
	adds r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_02251FE2:
	adds r0, r1, #0
	movs r2, #0
	ldr r0, [r0, #0xc]
	adds r1, r1, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_02251FFC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02252000: .4byte 0x02254CF8
_02252004: .4byte 0x02254D00
	thumb_func_end ov17_02251EAC

	thumb_func_start ov17_02252008
ov17_02252008: @ 0x02252008
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02252008

	thumb_func_start ov17_0225201C
ov17_0225201C: @ 0x0225201C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x18
	adds r7, r1, #0
	adds r1, r0, #0
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x18
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02252058 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0225205C @ =ov17_02252060
	str r6, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252058: .4byte 0x00007530
_0225205C: .4byte ov17_02252060
	thumb_func_end ov17_0225201C

	thumb_func_start ov17_02252060
ov17_02252060: @ 0x02252060
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _02252070
	b _022521BE
_02252070:
	ldr r0, [sp]
	movs r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02252084
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_02252084:
	ldr r0, [sp]
	movs r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _02252098
	subs r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_02252098:
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0]
	movs r1, #2
	ldr r0, [r0, #0x30]
	bl FUN_02019FE4
	mov ip, r0
	movs r0, #0
	str r0, [sp, #8]
	b _02252118
_022520B0:
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	movs r0, #4
	subs r1, r0, r1
	ldr r0, _022521DC @ =0x02254CF8
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	adds r0, r1, r0
	bmi _02252112
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	ldr r0, [sp]
	movs r5, #0
	ldrb r1, [r0, #0x12]
	movs r0, #0xb
	movs r7, #0x3f
	subs r0, r0, r1
	lsls r1, r0, #1
	ldr r0, _022521E0 @ =0x02254D00
	str r5, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsls r7, r7, #0xa
	lsls r0, r0, #5
	adds r6, r1, r0
	b _0225210C
_022520E8:
	movs r4, #0
	b _02252100
_022520EC:
	adds r0, r5, r4
	lsls r2, r0, #1
	ldrh r0, [r3, r2]
	ands r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	adds r0, r6, r4
	adds r4, r4, #1
	orrs r0, r1
	strh r0, [r3, r2]
_02252100:
	cmp r4, #8
	blt _022520EC
	ldr r0, [sp, #4]
	adds r5, #8
	adds r0, r0, #1
	str r0, [sp, #4]
_0225210C:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _022520E8
_02252112:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_02252118:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _022520B0
	ldr r0, [sp]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0225217A
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0225217A
	movs r0, #5
	subs r1, r0, r1
	ldr r0, _022521DC @ =0x02254CF8
	movs r7, #0x3f
	ldrsb r0, [r0, r1]
	lsls r7, r7, #0xa
	movs r6, #0x1d
	adds r0, r0, #3
	lsls r1, r0, #6
	mov r0, ip
	adds r3, r0, r1
	movs r0, #0
	movs r1, #2
	str r0, [sp, #4]
	lsls r1, r1, #8
	b _02252174
_0225214E:
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	lsls r4, r0, #1
	ldrh r0, [r3, r4]
	lsls r5, r5, #0x1d
	ands r0, r7
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	ldrh r2, [r3, r4]
	lsrs r0, r0, #0x1f
	subs r5, r5, r0
	rors r5, r6
	adds r0, r0, r5
	adds r0, r0, r1
	orrs r0, r2
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
_02252174:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0225214E
_0225217A:
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl FUN_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	adds r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _022521D8
	ldr r1, [sp]
	movs r0, #0
	movs r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	adds r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	adds r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _022521D8
	adds r0, r1, #0
	ldrb r0, [r0, #0x10]
	adds r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_022521BE:
	adds r0, r1, #0
	movs r2, #0
	ldr r0, [r0, #0xc]
	adds r1, r1, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
_022521D8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022521DC: .4byte 0x02254CF8
_022521E0: .4byte 0x02254D00
	thumb_func_end ov17_02252060

	thumb_func_start ov17_022521E4
ov17_022521E4: @ 0x022521E4
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_022521E4

	thumb_func_start ov17_022521F8
ov17_022521F8: @ 0x022521F8
	push {r4, lr}
	ldr r3, _0225220C @ =0x0000127C
	movs r4, #1
	strb r4, [r1, r3]
	adds r1, r2, #0
	movs r2, #0
	adds r3, r2, #0
	bl ov17_0224F26C
	pop {r4, pc}
	.align 2, 0
_0225220C: .4byte 0x0000127C
	thumb_func_end ov17_022521F8

	thumb_func_start ov17_02252210
ov17_02252210: @ 0x02252210
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02252210

	thumb_func_start ov17_02252224
ov17_02252224: @ 0x02252224
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0x18
	movs r1, #0x20
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x20
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	ldr r2, _02252284 @ =0x00007530
	str r0, [r4]
	ldrh r0, [r6]
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x18]
	ldrb r0, [r5, #0xe]
	strb r0, [r4, #0x1a]
	ldrb r0, [r5, #0x11]
	strb r0, [r4, #0x1d]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x1c]
	ldrb r0, [r5, #0xf]
	strb r0, [r4, #0x1b]
	ldr r0, _02252288 @ =ov17_0225228C
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252284: .4byte 0x00007530
_02252288: .4byte ov17_0225228C
	thumb_func_end ov17_02252224

	thumb_func_start ov17_0225228C
ov17_0225228C: @ 0x0225228C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _022522A2
	cmp r0, #1
	beq _022522E0
	cmp r0, #2
	beq _022522F2
	b _0225232A
_022522A2:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _022522DA
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	bne _022522C6
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0x34
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200E060
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x30]
	bl FUN_0201C3C0
_022522C6:
	ldrb r1, [r4, #0x1a]
	adds r2, r4, #0
	ldr r0, [r4]
	adds r2, #0x14
	bl ov17_02250968
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022522DA:
	movs r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022522E0:
	ldr r0, [r4]
	bl ov17_0225099C
	cmp r0, #0
	bne _02252342
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022522F2:
	ldrb r0, [r4, #0x12]
	adds r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _02252306
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02252306:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x1b]
	cmp r1, r0
	blo _02252342
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0x34
	bl FUN_0200E084
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x30]
	bl FUN_0201C3C0
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0225232A:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02252342:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0225228C

	thumb_func_start ov17_02252344
ov17_02252344: @ 0x02252344
	push {r3, lr}
	movs r1, #0x9a
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02252344

	thumb_func_start ov17_02252358
ov17_02252358: @ 0x02252358
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0xe7
	adds r6, r1, #0
	lsls r0, r0, #2
	adds r5, r2, #0
	adds r2, r6, r0
	movs r1, #0x4d
_02252368:
	ldrh r0, [r3]
	adds r3, r3, #2
	strh r0, [r2]
	adds r2, r2, #2
	subs r1, r1, #1
	bne _02252368
	movs r0, #0x18
	movs r1, #0x14
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	str r6, [r4]
	ldrh r0, [r5]
	movs r2, #0xfa
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	lsls r2, r2, #2
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _022523A8 @ =ov17_022523AC
	str r7, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022523A8: .4byte ov17_022523AC
	thumb_func_end ov17_02252358

	thumb_func_start ov17_022523AC
ov17_022523AC: @ 0x022523AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #6
	bls _022523BC
	b _022524E6
_022523BC:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022523C8: @ jump table
	.2byte _022523D6 - _022523C8 - 2 @ case 0
	.2byte _022523EA - _022523C8 - 2 @ case 1
	.2byte _022523FE - _022523C8 - 2 @ case 2
	.2byte _02252428 - _022523C8 - 2 @ case 3
	.2byte _0225243A - _022523C8 - 2 @ case 4
	.2byte _022524A6 - _022523C8 - 2 @ case 5
	.2byte _022524CE - _022523C8 - 2 @ case 6
_022523D6:
	ldr r1, [r4]
	ldr r0, _02252504 @ =0x00000848
	ldr r0, [r1, r0]
	bl ov17_0223F744
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022523EA:
	bl ov17_0223F760
	cmp r0, #1
	beq _022523F4
	b _022524FE
_022523F4:
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022523FE:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, _02252508 @ =0x0000046F
	movs r1, #0x1e
	bl FUN_020055D0
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_02252428:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022524FE
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_0225243A:
	ldr r0, [r4]
	bl ov17_02250A84
	ldr r0, [r4]
	bl ov17_02250AD8
	ldr r0, [r4]
	bl ov17_02250B00
	ldr r0, [r4]
	bl ov17_02250D28
	ldr r0, [r4]
	bl ov17_02250CEC
	ldr r0, [r4]
	movs r1, #0
	adds r0, #0x34
	movs r2, #1
	movs r3, #0xe
	bl FUN_0200E060
	ldr r0, [r4]
	movs r1, #0xff
	adds r0, #0x34
	bl FUN_0201ADA4
	ldr r0, [r4]
	adds r0, #0x34
	bl FUN_0201A954
	movs r6, #0
	adds r5, r6, #0
	movs r7, #6
_0225247E:
	ldr r0, [r4]
	adds r1, r7, #0
	adds r0, r0, r5
	ldr r0, [r0, #0x18]
	movs r2, #1
	bl FUN_02007DEC
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #4
	blt _0225247E
	ldr r1, [r4]
	ldr r0, _0225250C @ =0x0000127F
	movs r2, #1
	strb r2, [r1, r0]
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022524A6:
	bl FUN_02005684
	cmp r0, #0
	bne _022524FE
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022524CE:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022524FE
	ldr r0, _02252510 @ =0x0000049D
	bl FUN_0200549C
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_022524E6:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_022524FE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02252504: .4byte 0x00000848
_02252508: .4byte 0x0000046F
_0225250C: .4byte 0x0000127F
_02252510: .4byte 0x0000049D
	thumb_func_end ov17_022523AC

	thumb_func_start ov17_02252514
ov17_02252514: @ 0x02252514
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02252514

	thumb_func_start ov17_02252528
ov17_02252528: @ 0x02252528
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x18
	str r1, [sp]
	adds r1, r0, #0
	adds r6, r2, #0
	adds r5, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x18
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [sp]
	movs r2, #0
	str r0, [r4]
	ldrh r0, [r6]
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0225255C:
	adds r0, r5, r2
	ldrb r1, [r0, #3]
	adds r0, r4, r2
	adds r2, r2, #1
	strb r1, [r0, #0x11]
	cmp r2, #4
	blt _0225255C
	ldr r0, _02252578 @ =ov17_02252580
	ldr r2, _0225257C @ =0x00007530
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252578: .4byte ov17_02252580
_0225257C: .4byte 0x00007530
	thumb_func_end ov17_02252528

	thumb_func_start ov17_02252580
ov17_02252580: @ 0x02252580
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #4
	bhi _022525F2
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02252598: @ jump table
	.2byte _022525A2 - _02252598 - 2 @ case 0
	.2byte _022525A8 - _02252598 - 2 @ case 1
	.2byte _022525C6 - _02252598 - 2 @ case 2
	.2byte _022525E0 - _02252598 - 2 @ case 3
	.2byte _022525F2 - _02252598 - 2 @ case 4
_022525A2:
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525A8:
	ldrb r1, [r4, #0x15]
	movs r0, #3
	subs r2, r0, r1
	adds r1, r4, r2
	ldrb r1, [r1, #0x11]
	ldr r0, [r4]
	bl ov17_0225131C
	ldrb r0, [r4, #0x15]
	adds r0, r0, #1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525C6:
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x16]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0225260A
	movs r0, #0
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525E0:
	ldrb r1, [r4, #0x15]
	cmp r1, #4
	bhs _022525EC
	movs r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525EC:
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022525F2:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_0225260A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_02252580

	thumb_func_start ov17_0225260C
ov17_0225260C: @ 0x0225260C
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_0225260C

	thumb_func_start ov17_02252620
ov17_02252620: @ 0x02252620
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x18
	adds r7, r1, #0
	adds r1, r0, #0
	adds r5, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x18
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _02252664 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x11]
	ldr r0, _02252668 @ =ov17_0225266C
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252664: .4byte 0x00007530
_02252668: .4byte ov17_0225266C
	thumb_func_end ov17_02252620

	thumb_func_start ov17_0225266C
ov17_0225266C: @ 0x0225266C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #6
	bhi _02252774
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02252686: @ jump table
	.2byte _02252694 - _02252686 - 2 @ case 0
	.2byte _022526BC - _02252686 - 2 @ case 1
	.2byte _022526CA - _02252686 - 2 @ case 2
	.2byte _022526E2 - _02252686 - 2 @ case 3
	.2byte _022526F0 - _02252686 - 2 @ case 4
	.2byte _02252746 - _02252686 - 2 @ case 5
	.2byte _02252758 - _02252686 - 2 @ case 6
_02252694:
	ldr r0, [r4]
	bl ov17_02250FE4
	adds r2, r4, #0
	ldr r0, [r4]
	movs r1, #0
	adds r2, #0x12
	bl ov17_02251598
	ldr r0, _02252790 @ =0x0000049E
	bl FUN_0200549C
	ldr r0, _02252794 @ =0x000006E5
	bl FUN_02005748
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526BC:
	ldrb r1, [r4, #0x12]
	cmp r1, #1
	bne _0225278C
	adds r0, r0, #1
	add sp, #0x10
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526CA:
	ldrb r1, [r4, #0x11]
	adds r3, r4, #0
	ldr r0, [r4]
	movs r2, #0
	adds r3, #0x13
	bl ov17_02251718
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526E2:
	ldrb r1, [r4, #0x13]
	cmp r1, #1
	bne _0225278C
	adds r0, r0, #1
	add sp, #0x10
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_022526F0:
	ldr r0, [r4]
	movs r2, #0
	ldr r1, [r0, #0x10]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #5
	bl FUN_02074470
	adds r5, r0, #0
	ldr r0, [r4]
	movs r2, #0
	ldr r1, [r0, #0x10]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0x70
	bl FUN_02074470
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r2, #0x7f
	str r2, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldrb r6, [r4, #0x11]
	ldr r0, [r0]
	adds r2, #0xdd
	lsls r6, r6, #2
	adds r0, r0, r6
	ldr r0, [r0, r2]
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	bl FUN_02077D3C
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02252746:
	bl FUN_0200598C
	cmp r0, #0
	bne _0225278C
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02252758:
	movs r0, #0x14
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x14]
	ldrsh r0, [r4, r0]
	cmp r0, #0x3c
	ble _0225278C
	movs r0, #0
	strh r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	add sp, #0x10
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_02252774:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_0225278C:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02252790: .4byte 0x0000049E
_02252794: .4byte 0x000006E5
	thumb_func_end ov17_0225266C

	thumb_func_start ov17_02252798
ov17_02252798: @ 0x02252798
	push {r3, lr}
	movs r1, #0x12
	lsls r2, r2, #0x10
	str r1, [sp]
	movs r1, #0xff
	lsrs r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02252798

	thumb_func_start ov17_022527AC
ov17_022527AC: @ 0x022527AC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r5, r1, #0
	movs r0, #0x18
	movs r1, #0x24
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x24
	blx FUN_020C4CF4
	str r5, [r4]
	ldrh r0, [r6]
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	str r0, [r4, #0xc]
	ldrb r0, [r7, #7]
	strb r0, [r4, #0x11]
	ldrb r0, [r7, #7]
	cmp r0, #0
	beq _022527F2
	cmp r0, #1
	beq _02252808
	cmp r0, #2
	beq _0225281E
	b _02252834
_022527F2:
	ldr r0, _02252844 @ =0x0000041E
	movs r2, #0
	adds r3, r4, #0
_022527F8:
	ldrsh r1, [r5, r0]
	adds r2, r2, #1
	adds r5, r5, #2
	strh r1, [r3, #0x14]
	adds r3, r3, #2
	cmp r2, #4
	blt _022527F8
	b _02252838
_02252808:
	ldr r0, _02252848 @ =0x00000426
	movs r3, #0
	adds r2, r4, #0
_0225280E:
	ldrsh r1, [r5, r0]
	adds r3, r3, #1
	adds r5, r5, #2
	strh r1, [r2, #0x14]
	adds r2, r2, #2
	cmp r3, #4
	blt _0225280E
	b _02252838
_0225281E:
	ldr r0, _0225284C @ =0x0000042E
	movs r3, #0
	adds r2, r4, #0
_02252824:
	ldrsh r1, [r5, r0]
	adds r3, r3, #1
	adds r5, r5, #2
	strh r1, [r2, #0x14]
	adds r2, r2, #2
	cmp r3, #4
	blt _02252824
	b _02252838
_02252834:
	bl FUN_02022974
_02252838:
	ldr r0, _02252850 @ =ov17_02252858
	ldr r2, _02252854 @ =0x00007530
	adds r1, r4, #0
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02252844: .4byte 0x0000041E
_02252848: .4byte 0x00000426
_0225284C: .4byte 0x0000042E
_02252850: .4byte ov17_02252858
_02252854: .4byte 0x00007530
	thumb_func_end ov17_022527AC

	thumb_func_start ov17_02252858
ov17_02252858: @ 0x02252858
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #5
	bhi _02252948
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02252870: @ jump table
	.2byte _0225287C - _02252870 - 2 @ case 0
	.2byte _0225288A - _02252870 - 2 @ case 1
	.2byte _022528A4 - _02252870 - 2 @ case 2
	.2byte _022528C6 - _02252870 - 2 @ case 3
	.2byte _0225291C - _02252870 - 2 @ case 4
	.2byte _02252948 - _02252870 - 2 @ case 5
_0225287C:
	ldr r0, _02252964 @ =0x000006FA
	bl FUN_02005748
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0225288A:
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0x2d
	ble _02252960
	movs r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_022528A4:
	movs r2, #0
	adds r3, r4, #0
	movs r0, #0x14
_022528AA:
	ldrsh r1, [r3, r0]
	cmp r1, #0
	ble _022528B8
	ldr r0, _02252968 @ =0x000006FB
	bl FUN_02005748
	b _022528C0
_022528B8:
	adds r2, r2, #1
	adds r3, r3, #2
	cmp r2, #4
	blt _022528AA
_022528C0:
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
_022528C6:
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #1
	blt _02252960
	movs r6, #0
	strh r6, [r4, #0x12]
	adds r5, r6, #0
	movs r7, #0x14
_022528DC:
	ldr r0, [r4]
	movs r2, #0x1c
	adds r1, r0, r5
	movs r0, #0xf3
	lsls r0, r0, #2
	ldrb r1, [r1, r0]
	lsls r0, r1, #1
	adds r0, r4, r0
	ldrsh r2, [r0, r2]
	adds r2, r2, #1
	strh r2, [r0, #0x1c]
	movs r2, #0x1c
	ldrsh r3, [r0, r2]
	ldrsh r0, [r0, r7]
	cmp r3, r0
	bgt _02252908
	str r5, [sp]
	ldrb r2, [r4, #0x11]
	ldr r0, [r4]
	bl ov17_022513F4
	b _0225290A
_02252908:
	adds r6, r6, #1
_0225290A:
	adds r5, r5, #1
	cmp r5, #4
	blt _022528DC
	cmp r6, #4
	blt _02252960
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0225291C:
	movs r3, #0
	adds r2, r4, #0
	movs r0, #0x14
_02252922:
	ldrsh r1, [r2, r0]
	cmp r1, #0
	ble _02252930
	ldr r0, _0225296C @ =0x000006F9
	bl FUN_02005748
	b _02252938
_02252930:
	adds r3, r3, #1
	adds r2, r2, #2
	cmp r3, #4
	blt _02252922
_02252938:
	ldr r0, _02252964 @ =0x000006FA
	movs r1, #0
	bl FUN_020057A4
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02252948:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02252960:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252964: .4byte 0x000006FA
_02252968: .4byte 0x000006FB
_0225296C: .4byte 0x000006F9
	thumb_func_end ov17_02252858

	thumb_func_start ov17_02252970
ov17_02252970: @ 0x02252970
	push {r3, lr}
	lsls r2, r2, #0x10
	movs r3, #0
	movs r1, #0xff
	lsrs r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02252970

	thumb_func_start ov17_02252984
ov17_02252984: @ 0x02252984
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x18
	movs r1, #0x14
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	str r7, [r4]
	ldrh r0, [r5]
	ldr r2, _022529C0 @ =0x00007530
	adds r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _022529C4 @ =ov17_022529C8
	str r6, [r4, #0xc]
	bl FUN_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022529C0: .4byte 0x00007530
_022529C4: .4byte ov17_022529C8
	thumb_func_end ov17_02252984

	thumb_func_start ov17_022529C8
ov17_022529C8: @ 0x022529C8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _022529DE
	cmp r0, #1
	beq _022529FE
	cmp r0, #2
	beq _02252A2E
	b _02252A48
_022529DE:
	movs r0, #3
	str r0, [sp]
	movs r0, #0x5a
	movs r1, #0x10
	movs r2, #0
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldr r0, _02252A64 @ =0x0000049E
	movs r1, #0x5a
	bl FUN_020055D0
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022529FE:
	movs r0, #3
	bl FUN_0200AC1C
	cmp r0, #1
	bne _02252A60
	bl FUN_02005684
	cmp r0, #0
	bne _02252A60
	ldr r0, [r4]
	bl ov17_02251020
	ldr r0, _02252A68 @ =0x0400006C
	movs r1, #0x10
	blx FUN_020BDEC4
	ldr r0, _02252A6C @ =0x0400106C
	movs r1, #0x10
	blx FUN_020BDEC4
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02252A2E:
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0x3c
	ble _02252A60
	movs r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02252A48:
	movs r2, #0
	ldr r0, [r4, #0xc]
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov17_0224F26C
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_02252A60:
	pop {r3, r4, r5, pc}
	nop
_02252A64: .4byte 0x0000049E
_02252A68: .4byte 0x0400006C
_02252A6C: .4byte 0x0400106C
	thumb_func_end ov17_022529C8

	thumb_func_start ov17_02252A70
ov17_02252A70: @ 0x02252A70
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #0
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r6, #0
_02252A7A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0202A488
	cmp r0, #1
	bne _02252A92
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0202A580
	ldrb r0, [r7, r0]
	adds r6, r6, r0
_02252A92:
	adds r4, r4, #1
	cmp r4, #0x14
	blt _02252A7A
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02252A70

	thumb_func_start ov17_02252A9C
ov17_02252A9C: @ 0x02252A9C
	push {r3, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r0, #0x5a
	adds r1, r1, #3
	str r2, [sp]
	bl FUN_02006FE8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov17_02252A9C

	thumb_func_start ov17_02252AB0
ov17_02252AB0: @ 0x02252AB0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0x1b
	str r0, [sp]
	movs r0, #0x50
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	adds r4, r1, #0
	adds r6, r3, #0
	str r0, [sp, #0x14]
	adds r0, r2, #0
	movs r1, #3
	adds r2, r5, #0
	adds r3, r4, #0
	bl FUN_0200CD7C
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x1b
	movs r3, #0xfa
	str r6, [sp, #8]
	bl FUN_0200CBDC
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x1b
	movs r3, #0xfb
	bl FUN_0200CE0C
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x30]
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x1b
	movs r3, #0xfc
	bl FUN_0200CE3C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02252AB0

	thumb_func_start ov17_02252B20
ov17_02252B20: @ 0x02252B20
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0200D070
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200D080
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0200D090
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl FUN_0200D0A0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_02252B20

	thumb_func_start ov17_02252B48
ov17_02252B48: @ 0x02252B48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r3, #0
	mov ip, r2
	ldr r3, _02252BC0 @ =0x02254D9C
	adds r6, r0, #0
	adds r7, r1, #0
	add r2, sp, #4
	movs r4, #6
_02252B5A:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r4, r4, #1
	bne _02252B5A
	ldr r0, [r3]
	movs r1, #0x18
	str r0, [r2]
	ldr r0, [sp, #0x50]
	str r5, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x30]
	mov r0, ip
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x18
	str r0, [sp]
	blx FUN_020C4CF4
	ldr r5, [sp]
	movs r4, #0
_02252B92:
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #4
	bl FUN_0200CE6C
	movs r1, #0
	stm r5!, {r0}
	bl FUN_0200D3F4
	adds r4, r4, #1
	cmp r4, #5
	blt _02252B92
	ldr r0, _02252BC4 @ =ov17_02252CB8
	ldr r1, [sp]
	ldr r2, _02252BC8 @ =0x00009C40
	bl FUN_0200D9E8
	ldr r1, [sp]
	str r0, [r1, #0x14]
	adds r0, r1, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252BC0: .4byte 0x02254D9C
_02252BC4: .4byte ov17_02252CB8
_02252BC8: .4byte 0x00009C40
	thumb_func_end ov17_02252B48

	thumb_func_start ov17_02252BCC
ov17_02252BCC: @ 0x02252BCC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_02252BD4:
	ldr r0, [r5]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _02252BD4
	ldr r0, [r6, #0x14]
	bl FUN_0200DA58
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02252BCC

	thumb_func_start ov17_02252BF0
ov17_02252BF0: @ 0x02252BF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r4, [sp, #0x24]
	adds r6, r3, #0
	ldr r0, [r5]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl FUN_0200D500
	ldr r2, [sp, #0x10]
	lsls r1, r6, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r5, #4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl FUN_0200D500
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r5, #8]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl FUN_0200D500
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r5, #0xc]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl FUN_0200D500
	ldr r0, [r5]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_0200D364
	ldr r0, [r5, #8]
	movs r1, #2
	bl FUN_0200D364
	ldr r0, [r5, #0xc]
	movs r1, #3
	bl FUN_0200D364
	movs r4, #0
	movs r6, #1
_02252C66:
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_0200D3F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02252C66
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_02252BF0

	thumb_func_start ov17_02252C78
ov17_02252C78: @ 0x02252C78
	push {r4, lr}
	sub sp, #0x18
	adds r4, r2, #0
	str r3, [sp]
	ldr r2, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x14]
	adds r2, r3, #0
	adds r3, r4, #0
	bl ov17_02252BF0
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov17_02252C78

	thumb_func_start ov17_02252C9C
ov17_02252C9C: @ 0x02252C9C
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_02252CA4:
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_0200D3F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _02252CA4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_02252C9C

	thumb_func_start ov17_02252CB8
ov17_02252CB8: @ 0x02252CB8
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r0, [r6]
	bl FUN_0200D408
	cmp r0, #0
	beq _02252CE8
	movs r4, #0
	adds r5, r6, #0
_02252CCA:
	ldr r0, [r5]
	bl FUN_0200D330
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02252CCA
	ldr r0, [r6, #0x10]
	bl FUN_0200D408
	cmp r0, #1
	bne _02252CE8
	ldr r0, [r6, #0x10]
	bl FUN_0200D330
_02252CE8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov17_02252CB8

	thumb_func_start ov17_02252CEC
ov17_02252CEC: @ 0x02252CEC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x17
	lsls r0, r0, #4
	adds r6, r1, #0
	ldrb r1, [r3, r0]
	str r2, [sp]
	cmp r1, #0
	bne _02252D08
	subs r0, r0, #4
	ldr r1, [r3, r0]
	ldr r0, _02252D6C @ =0x000004FC
	adds r4, r1, r0
	b _02252D3A
_02252D08:
	cmp r1, #1
	bne _02252D16
	subs r0, r0, #4
	ldr r1, [r3, r0]
	ldr r0, _02252D70 @ =0x00001174
	adds r4, r1, r0
	b _02252D3A
_02252D16:
	cmp r1, #2
	bne _02252D26
	subs r0, r0, #4
	ldr r1, [r3, r0]
	movs r0, #0xc3
	lsls r0, r0, #4
	adds r4, r1, r0
	b _02252D3A
_02252D26:
	cmp r1, #3
	bne _02252D34
	subs r0, r0, #4
	ldr r1, [r3, r0]
	ldr r0, _02252D74 @ =0x0000085C
	adds r4, r1, r0
	b _02252D3A
_02252D34:
	bl FUN_02022974
	pop {r3, r4, r5, r6, r7, pc}
_02252D3A:
	movs r0, #2
	lsls r0, r0, #8
	cmp r6, r0
	ble _02252D46
	bl FUN_02022974
_02252D46:
	ldr r0, _02252D78 @ =0x00000A11
	adds r7, r4, r0
	ldrb r0, [r7, r5]
	cmp r0, #0
	beq _02252D54
	bl FUN_02022974
_02252D54:
	movs r1, #0x21
	lsls r1, r1, #4
	adds r2, r4, r1
	lsls r1, r5, #9
	adds r1, r2, r1
	ldr r0, [sp]
	adds r2, r6, #0
	blx FUN_020C4DB0
	movs r0, #1
	strb r0, [r7, r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02252D6C: .4byte 0x000004FC
_02252D70: .4byte 0x00001174
_02252D74: .4byte 0x0000085C
_02252D78: .4byte 0x00000A11
	thumb_func_end ov17_02252CEC

	thumb_func_start ov17_02252D7C
ov17_02252D7C: @ 0x02252D7C
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r0, [r3, r0]
	ldr r3, _02252D88 @ =ov17_0224B20C
	adds r1, r2, #0
	bx r3
	.align 2, 0
_02252D88: .4byte ov17_0224B20C
	thumb_func_end ov17_02252D7C
	@ 0x02252D8C
