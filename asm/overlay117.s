
	thumb_func_start ov117_02260440
ov117_02260440: @ 0x02260440
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02006840
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x6e
	lsls r2, r0, #0x11
	bl FUN_02017FC8
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0x6e
	bl FUN_0200681C
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x40
	blx FUN_020C4CF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov117_022605D8
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02260440

	thumb_func_start ov117_02260474
ov117_02260474: @ 0x02260474
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	bl FUN_0200682C
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_02006840
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov117_02260630
	cmp r0, #1
	bne _02260496
	movs r0, #1
	pop {r4, r5, r6, pc}
_02260496:
	ldr r0, [r4]
	cmp r0, #8
	bls _0226049E
	b _022605B0
_0226049E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022604AA: @ jump table
	.2byte _022604BC - _022604AA - 2 @ case 0
	.2byte _022604D8 - _022604AA - 2 @ case 1
	.2byte _022604F4 - _022604AA - 2 @ case 2
	.2byte _02260510 - _022604AA - 2 @ case 3
	.2byte _0226052C - _022604AA - 2 @ case 4
	.2byte _02260554 - _022604AA - 2 @ case 5
	.2byte _0226057A - _022604AA - 2 @ case 6
	.2byte _02260590 - _022604AA - 2 @ case 7
	.2byte _022605B0 - _022604AA - 2 @ case 8
_022604BC:
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x31
	strb r1, [r0]
	ldr r0, _022605B8 @ =0x02266908
	adds r1, r5, #0
	movs r2, #0x6e
	bl FUN_020067E8
	str r0, [r5, #0x28]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022605B4
_022604D8:
	ldr r0, [r5, #0x28]
	bl FUN_02006844
	cmp r0, #1
	bne _022605B4
	ldr r0, [r5, #0x28]
	bl FUN_02006814
	movs r0, #0
	str r0, [r5, #0x28]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022605B4
_022604F4:
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x31
	strb r1, [r0]
	ldr r0, _022605BC @ =0x022668F8
	adds r1, r5, #0
	movs r2, #0x6e
	bl FUN_020067E8
	str r0, [r5, #0x28]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022605B4
_02260510:
	ldr r0, [r5, #0x28]
	bl FUN_02006844
	cmp r0, #1
	bne _022605B4
	ldr r0, [r5, #0x28]
	bl FUN_02006814
	movs r0, #0
	str r0, [r5, #0x28]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022605B4
_0226052C:
	adds r6, #0x38
	ldrb r0, [r6]
	cmp r0, #0
	beq _02260538
	bl FUN_021D1F18
_02260538:
	adds r0, r5, #0
	movs r1, #2
	adds r0, #0x31
	strb r1, [r0]
	ldr r0, _022605B8 @ =0x02266908
	adds r1, r5, #0
	movs r2, #0x6e
	bl FUN_020067E8
	str r0, [r5, #0x28]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022605B4
_02260554:
	ldr r0, [r5, #0x28]
	bl FUN_02006844
	cmp r0, #1
	bne _022605B4
	ldr r0, [r5, #0x28]
	bl FUN_02006814
	movs r1, #0
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #1
	bne _02260572
	str r1, [r4]
	b _022605B4
_02260572:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022605B4
_0226057A:
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	movs r0, #0xde
	bl FUN_020364F0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022605B4
_02260590:
	movs r0, #0xde
	bl FUN_02036540
	cmp r0, #1
	beq _022605A8
	bl FUN_02035E18
	adds r5, r0, #0
	bl FUN_02032E64
	cmp r5, r0
	bge _022605B4
_022605A8:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _022605B4
_022605B0:
	movs r0, #1
	pop {r4, r5, r6, pc}
_022605B4:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022605B8: .4byte 0x02266908
_022605BC: .4byte 0x022668F8
	thumb_func_end ov117_02260474

	thumb_func_start ov117_022605C0
ov117_022605C0: @ 0x022605C0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	adds r0, r4, #0
	bl FUN_02006830
	movs r0, #0x6e
	bl FUN_0201807C
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov117_022605C0

	thumb_func_start ov117_022605D8
ov117_022605D8: @ 0x022605D8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	bl FUN_0203608C
	movs r5, #0
	adds r4, r5, #0
_022605E6:
	adds r0, r4, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _022605FA
	adds r0, r6, r5
	adds r0, #0x2c
	strb r4, [r0]
	adds r5, r5, #1
	b _02260602
_022605FA:
	adds r1, r6, r4
	adds r1, #0x2c
	movs r0, #0xff
	strb r0, [r1]
_02260602:
	adds r4, r4, #1
	cmp r4, #4
	blt _022605E6
	adds r0, r6, #0
	adds r0, #0x30
	strb r5, [r0]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r7, [sp]
	adds r1, r7, #0
	adds r1, #0x39
	ldr r2, [r7, #0x34]
	adds r7, #0x38
	ldrb r1, [r1]
	ldrb r3, [r7]
	adds r0, r6, #0
	bl FUN_0225C700
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_022605D8

	thumb_func_start ov117_02260630
ov117_02260630: @ 0x02260630
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	cmp r1, #0
	bne _0226064E
	bl FUN_0225CA54
	cmp r0, #1
	bne _0226064E
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x3d
	strb r1, [r0]
_0226064E:
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #1
	bne _02260662
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _02260662
	movs r0, #1
	pop {r4, pc}
_02260662:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02260630

	thumb_func_start ov117_02260668
ov117_02260668: @ 0x02260668
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r1, [r0]
	ldr r2, _02260954 @ =0xFFFFE0FF
	ands r1, r2
	str r1, [r0]
	ldr r1, _02260958 @ =0x04001000
	ldr r3, [r1]
	ands r2, r3
	str r2, [r1]
	ldr r3, [r0]
	ldr r2, _0226095C @ =0xFFFF1FFF
	ands r3, r2
	str r3, [r0]
	ldr r3, [r1]
	adds r0, #0x50
	ands r2, r3
	str r2, [r1]
	movs r3, #0x10
	movs r1, #1
	movs r2, #0x3f
	str r3, [sp]
	blx FUN_020BF55C
	movs r0, #3
	str r0, [sp]
	ldr r0, _02260960 @ =0x04001050
	movs r1, #8
	movs r2, #0x1f
	movs r3, #0xd
	blx FUN_020BF55C
	ldr r1, _02260964 @ =0x00003850
	adds r0, r4, #0
	movs r2, #0x6e
	bl FUN_0200681C
	ldr r2, _02260964 @ =0x00003850
	adds r5, r0, #0
	movs r1, #0
	blx FUN_020C4CF4
	adds r0, r5, #0
	adds r0, #0xa8
	movs r1, #0x6e
	movs r2, #0x20
	bl FUN_020182CC
	movs r0, #0x6e
	bl ov117_02260E14
	adds r1, r5, #0
	adds r1, #0x98
	str r0, [r1]
	adds r0, r4, #0
	bl FUN_02006840
	str r0, [r5]
	adds r0, r5, #0
	bl ov117_022665FC
	movs r0, #0x6e
	bl FUN_02002F38
	adds r1, r5, #0
	adds r1, #0x8c
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02003858
	adds r0, r5, #0
	adds r0, #0x8c
	movs r2, #2
	ldr r0, [r0]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x6e
	bl FUN_02002F70
	adds r0, r5, #0
	adds r0, #0x8c
	movs r1, #1
	ldr r0, [r0]
	lsls r2, r1, #9
	movs r3, #0x6e
	bl FUN_02002F70
	adds r0, r5, #0
	adds r0, #0x8c
	movs r2, #7
	ldr r0, [r0]
	movs r1, #2
	lsls r2, r2, #6
	movs r3, #0x6e
	bl FUN_02002F70
	adds r0, r5, #0
	adds r0, #0x8c
	movs r2, #2
	ldr r0, [r0]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x6e
	bl FUN_02002F70
	movs r0, #0x6e
	bl FUN_02018340
	str r0, [r5, #0x2c]
	movs r0, #0x40
	movs r1, #0x6e
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	ldr r0, [r5, #0x2c]
	bl ov117_022610D8
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	adds r0, r5, #0
	bl ov117_02260EC0
	movs r0, #0x6e
	bl FUN_0200C6E4
	ldr r1, _02260968 @ =0x022669A8
	ldr r2, _0226096C @ =0x0226697C
	movs r3, #0x20
	str r0, [r5, #0x24]
	bl FUN_0200C73C
	ldr r1, _02260970 @ =0x00100010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r0, [r5, #0x24]
	bl FUN_0200C704
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r2, #0xe0
	bl FUN_0200C7C0
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _02260974 @ =0x02266990
	bl FUN_0200CB30
	ldr r0, [r5, #0x24]
	bl FUN_0200C738
	movs r2, #0x16
	movs r1, #0
	lsls r2, r2, #0x10
	bl FUN_0200964C
	adds r0, r5, #0
	bl ov117_02261574
	movs r0, #0
	movs r1, #0x1a
	movs r2, #9
	movs r3, #0x6e
	bl FUN_0200B144
	adds r1, r5, #0
	adds r1, #0x80
	str r0, [r1]
	movs r0, #0x6e
	bl FUN_0200B358
	adds r1, r5, #0
	adds r1, #0x84
	str r0, [r1]
	movs r0, #5
	lsls r0, r0, #6
	movs r1, #0x6e
	bl FUN_02023790
	adds r1, r5, #0
	adds r1, #0x88
	str r0, [r1]
	movs r0, #0x13
	movs r1, #0x6e
	bl FUN_02012744
	adds r1, r5, #0
	adds r1, #0x90
	str r0, [r1]
	ldr r1, _02260978 @ =0x00001468
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov117_02265210
	movs r0, #0xad
	movs r1, #0x6e
	bl FUN_02006C24
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov117_02261A2C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov117_02261AC8
	adds r0, r5, #0
	bl ov117_02261280
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov117_0226168C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov117_02261940
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov117_02261C2C
	adds r0, r4, #0
	bl FUN_02006CA8
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0xe
	movs r2, #6
	movs r3, #0x6e
	bl FUN_02003050
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0xe
	movs r2, #6
	movs r3, #0x6e
	bl FUN_02003050
	adds r0, r5, #0
	bl ov117_022613EC
	adds r0, r5, #0
	movs r1, #0
	bl ov117_022614AC
	adds r0, r5, #0
	bl ov117_02261368
	bl FUN_02039734
	adds r0, r5, #0
	bl ov117_022626B0
	adds r1, r5, #0
	adds r1, #0xd4
	str r0, [r1]
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x6e
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #0x1b
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, _0226097C @ =ov117_02260F7C
	ldr r2, _02260980 @ =0x0000EA60
	adds r1, r5, #0
	bl FUN_0200D9E8
	adds r1, r5, #0
	adds r1, #0x94
	str r0, [r1]
	ldr r0, _02260984 @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	bl FUN_0201FFD0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #1
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002B20
	ldr r0, [r5, #0x28]
	bl FUN_0200D9B0
	movs r1, #0x6e
	bl FUN_0225CAD4
	str r0, [r5, #0x1c]
	bl FUN_0225CB74
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x8c
	lsls r2, r2, #0x14
	ldr r0, [r0]
	movs r1, #2
	lsrs r2, r2, #0x10
	movs r3, #0x60
	bl FUN_02003070
	ldr r0, _02260988 @ =ov117_02260DA0
	adds r1, r5, #0
	bl FUN_02017798
	ldr r0, [r5]
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0226094C
	movs r0, #0x6e
	bl FUN_021D1E74
_0226094C:
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02260954: .4byte 0xFFFFE0FF
_02260958: .4byte 0x04001000
_0226095C: .4byte 0xFFFF1FFF
_02260960: .4byte 0x04001050
_02260964: .4byte 0x00003850
_02260968: .4byte 0x022669A8
_0226096C: .4byte 0x0226697C
_02260970: .4byte 0x00100010
_02260974: .4byte 0x02266990
_02260978: .4byte 0x00001468
_0226097C: .4byte ov117_02260F7C
_02260980: .4byte 0x0000EA60
_02260984: .4byte 0x021BF6DC
_02260988: .4byte ov117_02260DA0
	thumb_func_end ov117_02260668

	thumb_func_start ov117_0226098C
ov117_0226098C: @ 0x0226098C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x3d
	ldrb r2, [r2]
	cmp r2, #1
	bne _022609F6
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _022609B2
	cmp r0, #1
	b _022609E0
_022609B2:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022609BE
	bl FUN_0200F2C0
_022609BE:
	movs r0, #0
	bl FUN_0200F370
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02260BE0 @ =0xFFFF1FFF
	ands r0, r1
	str r0, [r2]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r1, #0x3e
	adds r0, r0, #1
	strb r0, [r1]
	b _022609F0
_022609E0:
	adds r0, r1, #0
	bl FUN_0225CA98
	cmp r0, #1
	bne _022609F0
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_022609F0:
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_022609F6:
	ldr r2, [r5]
	cmp r2, #6
	bhi _02260A60
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_02260A08: @ jump table
	.2byte _02260A16 - _02260A08 - 2 @ case 0
	.2byte _02260A26 - _02260A08 - 2 @ case 1
	.2byte _02260A34 - _02260A08 - 2 @ case 2
	.2byte _02260A46 - _02260A08 - 2 @ case 3
	.2byte _02260A56 - _02260A08 - 2 @ case 4
	.2byte _02260A6E - _02260A08 - 2 @ case 5
	.2byte _02260BBA - _02260A08 - 2 @ case 6
_02260A16:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02260A60
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02260BC8
_02260A26:
	movs r0, #0xd3
	bl FUN_020364F0
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02260BC8
_02260A34:
	movs r0, #0xd3
	bl FUN_02036540
	cmp r0, #1
	bne _02260A60
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02260BC8
_02260A46:
	bl ov117_022666A4
	cmp r0, #1
	bne _02260A60
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02260BC8
_02260A56:
	adds r1, #0x30
	ldrb r1, [r1]
	ldr r2, [r4, #8]
	cmp r2, r1
	bhs _02260A62
_02260A60:
	b _02260BC8
_02260A62:
	bl ov117_0226200C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02260BC8
_02260A6E:
	movs r1, #0xbf
	lsls r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _02260A9A
	bl ov117_02266150
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x6e
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #0x1a
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
_02260A9A:
	adds r0, r4, #0
	bl ov117_02262664
	ldr r0, [r4, #0x20]
	cmp r0, #7
	bhi _02260B78
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02260AB2: @ jump table
	.2byte _02260B78 - _02260AB2 - 2 @ case 0
	.2byte _02260AC2 - _02260AB2 - 2 @ case 1
	.2byte _02260B0E - _02260AB2 - 2 @ case 2
	.2byte _02260B28 - _02260AB2 - 2 @ case 3
	.2byte _02260B34 - _02260AB2 - 2 @ case 4
	.2byte _02260B78 - _02260AB2 - 2 @ case 5
	.2byte _02260B5E - _02260AB2 - 2 @ case 6
	.2byte _02260B6A - _02260AB2 - 2 @ case 7
_02260AC2:
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _02260BE0 @ =0xFFFF1FFF
	adds r3, r0, #0
	ands r2, r1
	lsrs r1, r0, #0xc
	orrs r1, r2
	str r1, [r0]
	adds r1, r0, #0
	ldr r2, _02260BE4 @ =0x0000044C
	adds r1, #0x42
	strh r2, [r1]
	adds r1, r0, #0
	ldr r2, _02260BE8 @ =0x0000A8B8
	adds r1, #0x46
	strh r2, [r1]
	adds r3, #0x48
	ldrh r2, [r3]
	ldr r1, _02260BEC @ =0xFFFFC0FF
	ands r2, r1
	lsrs r1, r0, #0xe
	orrs r1, r2
	strh r1, [r3]
	adds r0, #0x4a
	ldrh r2, [r0]
	movs r1, #0x3f
	bics r2, r1
	movs r1, #0x1f
	orrs r2, r1
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	adds r0, r4, #0
	bl ov117_02266210
	movs r0, #2
	str r0, [r4, #0x20]
_02260B0E:
	ldr r1, _02260BF0 @ =0x0000174C
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov117_02266274
	cmp r0, #1
	bne _02260B78
	ldr r0, _02260BF4 @ =0x00001768
	movs r1, #1
	str r1, [r4, r0]
	movs r0, #0
	str r0, [r4, #0x20]
	b _02260B78
_02260B28:
	ldr r0, [r4, #0x1c]
	bl FUN_0225CB8C
	movs r0, #4
	str r0, [r4, #0x20]
	b _02260B78
_02260B34:
	ldr r0, [r4, #0x1c]
	bl FUN_0225CBE0
	cmp r0, #1
	bne _02260B78
	ldr r0, _02260BF8 @ =0x00002FB8
	movs r1, #1
	str r1, [r4, r0]
	ldr r0, _02260BFC @ =0x00001559
	movs r1, #0
	strb r1, [r4, r0]
	movs r0, #5
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl ov117_022613B8
	adds r0, r4, #0
	movs r1, #1
	bl ov117_022614AC
	b _02260B78
_02260B5E:
	ldr r0, [r4, #0x1c]
	bl FUN_0225CBB0
	movs r0, #7
	str r0, [r4, #0x20]
	b _02260B78
_02260B6A:
	ldr r0, [r4, #0x1c]
	bl FUN_0225CBE0
	cmp r0, #1
	bne _02260B78
	movs r0, #8
	str r0, [r4, #0x20]
_02260B78:
	adds r0, r4, #0
	bl ov117_022623B0
	adds r0, r4, #0
	bl ov117_02262270
	ldr r0, _02260C00 @ =0x00002FBC
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _02260BC8
	adds r0, r4, #0
	bl ov117_02262200
	cmp r0, #1
	bne _02260B9C
	ldr r0, _02260C04 @ =0x00002FC4
	movs r1, #0xd
	str r1, [r4, r0]
_02260B9C:
	ldr r1, _02260BF8 @ =0x00002FB8
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02260BC8
	subs r0, r1, #4
	ldr r2, [r4, r0]
	ldr r0, _02260C08 @ =0x00000516
	cmp r2, r0
	bhi _02260BC8
	subs r0, r1, #4
	ldr r0, [r4, r0]
	adds r2, r0, #1
	subs r0, r1, #4
	str r2, [r4, r0]
	b _02260BC8
_02260BBA:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02260BC8
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_02260BC8:
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl ov117_022626AC
	ldr r0, _02260C0C @ =0x0000384C
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02260BE0: .4byte 0xFFFF1FFF
_02260BE4: .4byte 0x0000044C
_02260BE8: .4byte 0x0000A8B8
_02260BEC: .4byte 0xFFFFC0FF
_02260BF0: .4byte 0x0000174C
_02260BF4: .4byte 0x00001768
_02260BF8: .4byte 0x00002FB8
_02260BFC: .4byte 0x00001559
_02260C00: .4byte 0x00002FBC
_02260C04: .4byte 0x00002FC4
_02260C08: .4byte 0x00000516
_02260C0C: .4byte 0x0000384C
	thumb_func_end ov117_0226098C

	thumb_func_start ov117_02260C10
ov117_02260C10: @ 0x02260C10
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _02260D94 @ =0x00002FD0
	ldr r1, [r4, r0]
	ldr r0, [r4]
	str r1, [r0, #0x24]
	ldr r0, [r4, #0x1c]
	bl FUN_0225CB38
	adds r0, r4, #0
	bl ov117_022641E4
	adds r0, r4, #0
	bl ov117_02264508
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	adds r0, r4, #0
	bl ov117_022615E0
	adds r0, r4, #0
	bl ov117_022618E8
	adds r0, r4, #0
	bl ov117_022619F8
	adds r0, r4, #0
	bl ov117_02261AC4
	adds r0, r4, #0
	bl ov117_02261C28
	adds r0, r4, #0
	bl ov117_02261DD0
	adds r1, r4, #0
	adds r1, #0xd4
	ldr r1, [r1]
	adds r0, r4, #0
	bl ov117_02262760
	adds r5, r4, #0
	movs r6, #0
	adds r5, #0x30
_02260C72:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r6, r6, #1
	adds r5, #0x10
	cmp r6, #5
	blt _02260C72
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0x2c]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x2c]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x2c]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x2c]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #0x2c]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r4, #0x2c]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r4, #0x2c]
	movs r1, #7
	bl FUN_02019044
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl FUN_020127BC
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	bl FUN_0200D0B0
	ldr r0, [r4, #0x24]
	bl FUN_0200C8D4
	bl FUN_0201DC3C
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #2
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #3
	bl FUN_02002FA0
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	bl FUN_02002F54
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020237BC
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl FUN_0200B3F0
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	bl FUN_0200B190
	ldr r0, [r4, #0x2c]
	bl FUN_020181C4
	adds r0, r4, #0
	bl ov117_02260F64
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_0200DA58
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02260D98 @ =0xFFFF1FFF
	ands r1, r0
	str r1, [r2]
	ldr r2, _02260D9C @ =0x04001000
	adds r4, #0x98
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	ldr r0, [r4]
	bl ov117_02260EB8
	bl FUN_0201E530
	adds r0, r7, #0
	bl FUN_02006830
	movs r0, #0
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	bl FUN_02039794
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260D94: .4byte 0x00002FD0
_02260D98: .4byte 0xFFFF1FFF
_02260D9C: .4byte 0x04001000
	thumb_func_end ov117_02260C10

	thumb_func_start ov117_02260DA0
ov117_02260DA0: @ 0x02260DA0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xd4
	ldr r1, [r1]
	bl ov117_02262950
	bl FUN_0201DCAC
	bl FUN_0200C800
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	bl FUN_02003694
	ldr r0, _02260E04 @ =0x00001454
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _02260DD8
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	ldr r0, _02260E04 @ =0x00001454
	movs r1, #0
	strb r1, [r4, r0]
	b _02260DEE
_02260DD8:
	adds r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _02260DEE
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	ldr r0, _02260E08 @ =0x00001455
	movs r1, #0
	strb r1, [r4, r0]
_02260DEE:
	ldr r0, [r4, #0x2c]
	bl FUN_0201C2B8
	ldr r3, _02260E0C @ =0x027E0000
	ldr r1, _02260E10 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02260E04: .4byte 0x00001454
_02260E08: .4byte 0x00001455
_02260E0C: .4byte 0x027E0000
_02260E10: .4byte 0x00003FF8
	thumb_func_end ov117_02260DA0

	thumb_func_start ov117_02260E14
ov117_02260E14: @ 0x02260E14
	push {r3, lr}
	sub sp, #8
	movs r1, #2
	str r1, [sp]
	ldr r1, _02260E30 @ =ov117_02260E34
	movs r2, #1
	str r1, [sp, #4]
	movs r1, #0
	adds r3, r1, #0
	bl FUN_02024220
	add sp, #8
	pop {r3, pc}
	nop
_02260E30: .4byte ov117_02260E34
	thumb_func_end ov117_02260E14

	thumb_func_start ov117_02260E34
ov117_02260E34: @ 0x02260E34
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _02260EA0 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02260EA4 @ =0xFFFFCFFD
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
	ldr r2, _02260EA8 @ =0x0000CFFB
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
	ldr r2, _02260EAC @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _02260EB0 @ =0xBFFF0000
	ldr r0, _02260EB4 @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02260EA0: .4byte 0x04000008
_02260EA4: .4byte 0xFFFFCFFD
_02260EA8: .4byte 0x0000CFFB
_02260EAC: .4byte 0x00007FFF
_02260EB0: .4byte 0xBFFF0000
_02260EB4: .4byte 0x04000580
	thumb_func_end ov117_02260E34

	thumb_func_start ov117_02260EB8
ov117_02260EB8: @ 0x02260EB8
	ldr r3, _02260EBC @ =FUN_020242C4
	bx r3
	.align 2, 0
_02260EBC: .4byte FUN_020242C4
	thumb_func_end ov117_02260EB8

	thumb_func_start ov117_02260EC0
ov117_02260EC0: @ 0x02260EC0
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _02260F58 @ =0x02266938
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	movs r0, #0x6e
	bl FUN_020203AC
	adds r1, r4, #0
	adds r1, #0x9c
	str r0, [r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	movs r1, #0x7b
	str r0, [sp, #8]
	ldr r2, _02260F5C @ =0x02266918
	ldr r3, _02260F60 @ =0x00000FA4
	add r0, sp, #0xc
	lsls r1, r1, #0xc
	bl FUN_020206D0
	adds r2, r4, #0
	adds r2, #0x9c
	movs r0, #1
	movs r1, #0xe1
	ldr r2, [r2]
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_020203D4
	movs r0, #0x6e
	bl FUN_020203AC
	adds r1, r4, #0
	adds r1, #0xa0
	str r0, [r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r0, [r0]
	movs r1, #5
	str r0, [sp, #8]
	ldr r2, _02260F5C @ =0x02266918
	ldr r3, _02260F60 @ =0x00000FA4
	add r0, sp, #0xc
	lsls r1, r1, #0x10
	bl FUN_020206D0
	adds r4, #0xa0
	movs r0, #1
	movs r1, #0xe1
	ldr r2, [r4]
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	add sp, #0x18
	pop {r4, pc}
	nop
_02260F58: .4byte 0x02266938
_02260F5C: .4byte 0x02266918
_02260F60: .4byte 0x00000FA4
	thumb_func_end ov117_02260EC0

	thumb_func_start ov117_02260F64
ov117_02260F64: @ 0x02260F64
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_020203B8
	adds r4, #0xa0
	ldr r0, [r4]
	bl FUN_020203B8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02260F64

	thumb_func_start ov117_02260F7C
ov117_02260F7C: @ 0x02260F7C
	push {r4, lr}
	sub sp, #0x40
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	movs r0, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r0, sp, #4
	adds r4, r1, #0
	blx FUN_020BB4C8
	ldr r1, _022610B0 @ =0x000015A8
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov117_02265F34
	ldr r1, _022610B4 @ =0x00001468
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov117_02265254
	ldr r1, _022610B8 @ =0x00001560
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov117_02265C1C
	adds r0, r4, #0
	bl ov117_02263EF8
	ldr r2, _022610BC @ =0x00001428
	ldr r1, [r4, #0x2c]
	adds r0, r4, #0
	adds r2, r4, r2
	bl ov117_02263D80
	adds r0, r4, #0
	bl ov117_02264560
	adds r0, r4, #0
	bl ov117_02261F3C
	adds r0, r4, #0
	bl ov117_02264930
	bl FUN_020241B4
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_020203D4
	adds r1, r4, #0
	adds r1, #0x9c
	ldr r1, [r1]
	movs r0, #1
	bl FUN_02020854
	bl FUN_020203EC
	movs r0, #0
	ldr r2, _022610C0 @ =0xFFFFF000
	adds r1, r0, #0
	adds r3, r0, #0
	blx FUN_020AF51C
	ldr r1, _022610C4 @ =0x0000739C
	movs r0, #0
	blx FUN_020AF558
	ldr r0, _022610C8 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF56C
	ldr r0, _022610C8 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF590
	add r0, sp, #0x28
	blx FUN_020AF4BC
	ldr r1, _022610CC @ =0x021C5B48
	add r0, sp, #4
	blx FUN_020C4C88
	ldr r1, _022610D0 @ =0x021C5B0C
	movs r0, #0xa4
	ldr r2, [r1, #0x7c]
	bics r2, r0
	add r0, sp, #0x34
	str r2, [r1, #0x7c]
	blx FUN_020AF4EC
	blx FUN_020AF480
	adds r1, r4, #0
	adds r1, #0xd4
	ldr r1, [r1]
	adds r0, r4, #0
	bl ov117_02262798
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	ldr r0, _022610D4 @ =0x000013B0
	adds r0, r4, r0
	bl FUN_02017294
	adds r0, r4, #0
	adds r0, #0xe8
	bl FUN_02017294
	adds r0, r4, #0
	bl ov117_02261FA4
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
	bl FUN_020241B4
	bl FUN_0201469C
	cmp r0, #0
	ble _0226108C
	bl FUN_020241B4
_0226108C:
	bl FUN_020146C0
	ldr r0, [r4, #0x28]
	bl FUN_0200C7EC
	bl FUN_0200C808
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
	ldr r1, [r4, #0x2c]
	movs r0, #0x6e
	bl FUN_02038A1C
	add sp, #0x40
	pop {r4, pc}
	nop
_022610B0: .4byte 0x000015A8
_022610B4: .4byte 0x00001468
_022610B8: .4byte 0x00001560
_022610BC: .4byte 0x00001428
_022610C0: .4byte 0xFFFFF000
_022610C4: .4byte 0x0000739C
_022610C8: .4byte 0x00007FFF
_022610CC: .4byte 0x021C5B48
_022610D0: .4byte 0x021C5B0C
_022610D4: .4byte 0x000013B0
	thumb_func_end ov117_02260F7C

	thumb_func_start ov117_022610D8
ov117_022610D8: @ 0x022610D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	adds r5, r0, #0
	bl FUN_0201FF00
	ldr r4, _0226126C @ =0x022669C8
	add r3, sp, #0x10
	movs r2, #5
_022610E8:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _022610E8
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
	ldr r4, _02261270 @ =0x02266944
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r4, _02261274 @ =0x02266A40
	add r3, sp, #0x38
	movs r2, #0xa
_02261148:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02261148
	ldr r0, [r4]
	movs r1, #1
	str r0, [r3]
	adds r0, r5, #0
	add r2, sp, #0x38
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #2
	add r2, sp, #0x54
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r5, #0
	movs r1, #3
	add r2, sp, #0x70
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r5, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	adds r0, r5, #0
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r1, _02261278 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #2
	orrs r0, r2
	strh r0, [r1]
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r4, #0
	ldr r6, _0226127C @ =0x02266A94
	adds r7, r4, #0
_022611F4:
	cmp r4, #3
	bge _0226120A
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_020183C4
	b _0226121A
_0226120A:
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	movs r3, #1
	bl FUN_020183C4
_0226121A:
	adds r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x6e
	bl FUN_02019690
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
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
	blo _022611F4
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0226126C: .4byte 0x022669C8
_02261270: .4byte 0x02266944
_02261274: .4byte 0x02266A40
_02261278: .4byte 0x04000008
_0226127C: .4byte 0x02266A94
	thumb_func_end ov117_022610D8

	thumb_func_start ov117_02261280
ov117_02261280: @ 0x02261280
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #3
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x2c]
	adds r1, #0x30
	movs r2, #1
	movs r3, #0xb
	bl FUN_0201A7E8
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	movs r0, #0xc5
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x2c]
	adds r1, #0x40
	movs r2, #4
	movs r3, #0x12
	bl FUN_0201A7E8
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	movs r0, #0xca
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x2c]
	adds r1, #0x50
	movs r2, #4
	movs r3, #0x15
	bl FUN_0201A7E8
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	movs r0, #0xcf
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #0x2c]
	adds r1, #0x60
	movs r2, #4
	movs r3, #1
	bl FUN_0201A7E8
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	movs r2, #4
	adds r1, r4, #0
	str r2, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	ldr r0, _02261364 @ =0x00000359
	adds r1, #0x70
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x2c]
	movs r3, #2
	bl FUN_0201A7E8
	adds r4, #0x70
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02261364: .4byte 0x00000359
	thumb_func_end ov117_02261280

	thumb_func_start ov117_02261368
ov117_02261368: @ 0x02261368
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r2, #0x35
	adds r5, r0, #0
	adds r0, #0x70
	movs r1, #1
	lsls r2, r2, #4
	movs r3, #6
	bl FUN_0200DC48
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #3
	bl FUN_0200B1EC
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	ldr r0, _022613B4 @ =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x70
	adds r2, r4, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r5, #0x70
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_022613B4: .4byte 0x0001020F
	thumb_func_end ov117_02261368

	thumb_func_start ov117_022613B8
ov117_022613B8: @ 0x022613B8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x12
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _022613E8 @ =0x000003FF
	movs r1, #4
	movs r3, #1
	bl FUN_02019CB8
	ldr r0, [r4, #0x2c]
	movs r1, #4
	bl FUN_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	nop
_022613E8: .4byte 0x000003FF
	thumb_func_end ov117_022613B8

	thumb_func_start ov117_022613EC
ov117_022613EC: @ 0x022613EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	bl FUN_0203608C
	str r0, [sp, #0x10]
	adds r0, r5, #0
	str r0, [sp, #0x18]
	adds r0, #0x30
	movs r4, #0
	str r0, [sp, #0x18]
	b _02261490
_02261404:
	ldr r0, [r5]
	ldr r2, [sp, #0x10]
	adds r1, r0, r4
	adds r1, #0x2c
	ldrb r1, [r1]
	cmp r2, r1
	beq _0226148E
	bl FUN_0225C7CC
	movs r1, #0x6e
	bl FUN_02025F04
	ldr r1, [r5]
	adds r6, r0, #0
	adds r1, r1, r4
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r0, r5, #0
	bl ov117_022622C4
	str r0, [sp, #0x14]
	ldr r0, [r5]
	adds r1, r0, r4
	adds r1, #0x2c
	ldrb r1, [r1]
	bl FUN_0225C7A4
	cmp r0, #1
	bne _02261442
	ldr r7, _022614A0 @ =0x0007080F
	b _02261444
_02261442:
	ldr r7, _022614A4 @ =0x0001020F
_02261444:
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r2, r1, #1
	movs r1, #0x28
	subs r3, r1, r2
	movs r1, #1
	tst r0, r1
	beq _02261460
	subs r3, r3, #1
_02261460:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r1, r0, #2
	ldr r0, _022614A8 @ =0x02266968
	adds r1, r0, r1
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, r1]
	lsls r1, r0, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	movs r1, #0
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020181C4
_0226148E:
	adds r4, r4, #1
_02261490:
	ldr r0, [r5]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r4, r0
	blt _02261404
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022614A0: .4byte 0x0007080F
_022614A4: .4byte 0x0001020F
_022614A8: .4byte 0x02266968
	thumb_func_end ov117_022613EC

	thumb_func_start ov117_022614AC
ov117_022614AC: @ 0x022614AC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	cmp r1, #1
	bne _02261504
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 @ =0x000003FF
	movs r3, #0
	bl FUN_02019CB8
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r3, #0x11
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 @ =0x000003FF
	bl FUN_02019CB8
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 @ =0x000003FF
	movs r3, #0x14
	bl FUN_02019CB8
	b _02261562
_02261504:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _02261514
	cmp r0, #3
	beq _0226154A
	b _02261562
_02261514:
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 @ =0x000003FF
	movs r3, #0
	bl FUN_02019CB8
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 @ =0x000003FF
	movs r3, #0x14
	bl FUN_02019CB8
	b _02261562
_0226154A:
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	movs r3, #0x11
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 @ =0x000003FF
	bl FUN_02019CB8
_02261562:
	ldr r0, [r4, #0x2c]
	movs r1, #4
	bl FUN_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	nop
_02261570: .4byte 0x000003FF
	thumb_func_end ov117_022614AC

	thumb_func_start ov117_02261574
ov117_02261574: @ 0x02261574
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl FUN_02014000
	movs r1, #0x12
	movs r0, #0x6e
	lsls r1, r1, #0xa
	bl FUN_02018144
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x6e
	str r0, [sp, #4]
	movs r3, #0x12
	ldr r0, _022615D8 @ =ov117_02261644
	ldr r1, _022615DC @ =ov117_02261668
	lsls r3, r3, #0xa
	bl FUN_02014014
	adds r1, r4, #0
	adds r1, #0xa4
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_02014784
	adds r2, r0, #0
	movs r0, #1
	movs r1, #0xe1
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	movs r0, #0xbe
	movs r1, #0
	movs r2, #0x6e
	bl FUN_020144C4
	adds r4, #0xa4
	adds r1, r0, #0
	ldr r0, [r4]
	movs r2, #0xa
	movs r3, #1
	bl FUN_020144CC
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_022615D8: .4byte ov117_02261644
_022615DC: .4byte ov117_02261668
	thumb_func_end ov117_02261574

	thumb_func_start ov117_022615E0
ov117_022615E0: @ 0x022615E0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_02014730
	adds r4, #0xa4
	adds r5, r0, #0
	ldr r0, [r4]
	bl FUN_0201411C
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_022615E0

	thumb_func_start ov117_02261600
ov117_02261600: @ 0x02261600
	push {r3, lr}
	adds r3, r0, #0
	cmp r1, #0
	beq _02261612
	cmp r1, #1
	beq _02261620
	cmp r1, #2
	beq _0226162E
	b _0226163C
_02261612:
	adds r0, #0xa4
	movs r1, #0
	ldr r0, [r0]
	adds r2, r1, #0
	bl FUN_020146F4
	pop {r3, pc}
_02261620:
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #1
	movs r2, #0
	bl FUN_020146F4
	pop {r3, pc}
_0226162E:
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #2
	movs r2, #0
	bl FUN_020146F4
	pop {r3, pc}
_0226163C:
	bl FUN_02022974
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov117_02261600

	thumb_func_start ov117_02261644
ov117_02261644: @ 0x02261644
	push {r4, lr}
	ldr r3, _02261664 @ =0x02100DEC
	movs r2, #0
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bne _02261656
	bl FUN_02022974
_02261656:
	adds r0, r4, #0
	bl FUN_020145B4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_02261664: .4byte 0x02100DEC
	thumb_func_end ov117_02261644

	thumb_func_start ov117_02261668
ov117_02261668: @ 0x02261668
	push {r4, lr}
	ldr r3, _02261688 @ =0x02100DF4
	movs r2, #1
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bne _0226167A
	bl FUN_02022974
_0226167A:
	adds r0, r4, #0
	bl FUN_020145F4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_02261688: .4byte 0x02100DF4
	thumb_func_end ov117_02261668

	thumb_func_start ov117_0226168C
ov117_0226168C: @ 0x0226168C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r5, r0, #0
	str r1, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022618C4 @ =0x00002713
	str r1, [sp, #0x2c]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	movs r1, #2
	bl FUN_0200CDC4
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #2
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x1e
	subs r0, r1, r0
	lsrs r0, r0, #1
	adds r4, r0, #6
	adds r2, r5, #0
	ldr r3, _022618C8 @ =0x0000169C
	str r6, [sp]
	movs r0, #0
	ldr r1, _022618CC @ =0x000E0F00
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, _022618C4 @ =0x00002713
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r1, r4, #0
	adds r1, #0x24
	str r1, [sp, #0x14]
	movs r1, #0xa8
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x20]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r0, #2
	str r0, [sp, #0x28]
	adds r2, #0x90
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r2]
	adds r3, r5, r3
	bl ov117_02265DB8
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200B1EC
	str r0, [sp, #0x30]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #1
	bl FUN_0200B1EC
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x34]
	ldr r0, _022618D0 @ =0x000015AC
	adds r7, r5, r0
	adds r0, #0x14
	adds r6, r5, r0
_02261740:
	ldr r0, [sp, #0x30]
	adds r2, r5, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _022618CC @ =0x000E0F00
	adds r2, #0x90
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022618C4 @ =0x00002713
	adds r3, r7, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r0, #0xa8
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x1c]
	movs r0, #3
	str r0, [sp, #0x20]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r0, #0xa
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r2]
	bl ov117_02265DB8
	ldr r0, [sp, #0x38]
	adds r2, r5, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _022618CC @ =0x000E0F00
	adds r2, #0x90
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022618C4 @ =0x00002713
	adds r3, r6, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r0, #0xa8
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x1c]
	movs r0, #3
	str r0, [sp, #0x20]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r0, #0xa
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r2]
	bl ov117_02265DB8
	ldr r0, [sp, #0x34]
	adds r4, r4, #6
	adds r0, r0, #1
	adds r7, #0x28
	adds r6, #0x28
	str r0, [sp, #0x34]
	cmp r0, #6
	blt _02261740
	ldr r0, [sp, #0x30]
	bl FUN_020237BC
	ldr r0, [sp, #0x38]
	bl FUN_020237BC
	ldr r0, _022618D4 @ =0x000015A8
	adds r0, r5, r0
	bl ov117_02265EC8
	adds r0, r5, #0
	bl ov117_02266150
	ldr r0, [sp, #0x2c]
	movs r1, #2
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022618D8 @ =0x00002714
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _022618DC @ =0x00002712
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r3, #0x18
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022618DC @ =0x00002712
	ldr r2, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r3, #0x1a
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _022618DC @ =0x00002712
	ldr r2, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r3, #0x19
	bl FUN_0200CE54
	adds r0, r5, #0
	bl ov117_02266130
	ldr r1, _022618D4 @ =0x000015A8
	str r0, [r5, r1]
	movs r0, #0xab
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022618DC @ =0x00002712
	movs r1, #2
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl FUN_0200CD7C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _022618E0 @ =0x00002711
	movs r2, #0xab
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r3, #0x15
	bl FUN_0200CBDC
	movs r0, #0
	str r0, [sp]
	ldr r0, _022618E0 @ =0x00002711
	movs r2, #0xab
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r3, #0x16
	bl FUN_0200CE0C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022618E0 @ =0x00002711
	movs r2, #0xab
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r3, #0x17
	bl FUN_0200CE3C
	adds r0, r5, #0
	bl ov117_02266244
	ldr r1, _022618E4 @ =0x0000174C
	str r0, [r5, r1]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_022618C4: .4byte 0x00002713
_022618C8: .4byte 0x0000169C
_022618CC: .4byte 0x000E0F00
_022618D0: .4byte 0x000015AC
_022618D4: .4byte 0x000015A8
_022618D8: .4byte 0x00002714
_022618DC: .4byte 0x00002712
_022618E0: .4byte 0x00002711
_022618E4: .4byte 0x0000174C
	thumb_func_end ov117_0226168C

	thumb_func_start ov117_022618E8
ov117_022618E8: @ 0x022618E8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _02261930 @ =0x000015AC
	movs r6, #0
	adds r4, r7, r0
	adds r0, #0x14
	adds r5, r7, r0
_022618F6:
	adds r0, r4, #0
	bl ov117_02265EB0
	adds r0, r5, #0
	bl ov117_02265EB0
	adds r6, r6, #1
	adds r4, #0x28
	adds r5, #0x28
	cmp r6, #6
	blt _022618F6
	ldr r0, _02261934 @ =0x0000169C
	adds r0, r7, r0
	bl ov117_02265EB0
	adds r0, r7, #0
	bl ov117_02266210
	ldr r1, _02261938 @ =0x000015A8
	adds r0, r7, #0
	ldr r1, [r7, r1]
	bl ov117_02266238
	ldr r1, _0226193C @ =0x0000174C
	adds r0, r7, #0
	ldr r1, [r7, r1]
	bl ov117_02266268
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02261930: .4byte 0x000015AC
_02261934: .4byte 0x0000169C
_02261938: .4byte 0x000015A8
_0226193C: .4byte 0x0000174C
	thumb_func_end ov117_022618E8

	thumb_func_start ov117_02261940
ov117_02261940: @ 0x02261940
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r5, r0, #0
	str r4, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022619E4 @ =0x00002716
	movs r1, #3
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _022619E8 @ =0x00002714
	adds r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r3, #0x14
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022619E8 @ =0x00002714
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r3, #0x16
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _022619E8 @ =0x00002714
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	movs r3, #0x15
	bl FUN_0200CE54
	adds r0, r5, #0
	bl ov117_022648E0
	ldr r1, _022619EC @ =0x00001458
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov117_02264FB0
	ldr r1, _022619F0 @ =0x00001468
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov117_02265064
	ldr r1, _022619F4 @ =0x00001560
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov117_02265ABC
	adds r0, r5, #0
	bl ov117_02264BF8
	adds r0, r5, #0
	bl ov117_02264D1C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022619E4: .4byte 0x00002716
_022619E8: .4byte 0x00002714
_022619EC: .4byte 0x00001458
_022619F0: .4byte 0x00001468
_022619F4: .4byte 0x00001560
	thumb_func_end ov117_02261940

	thumb_func_start ov117_022619F8
ov117_022619F8: @ 0x022619F8
	push {r4, lr}
	adds r4, r0, #0
	bl ov117_02264914
	ldr r1, _02261A20 @ =0x00001458
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov117_0226504C
	ldr r1, _02261A24 @ =0x00001468
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov117_022651E0
	ldr r1, _02261A28 @ =0x00001560
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov117_02265B3C
	pop {r4, pc}
	.align 2, 0
_02261A20: .4byte 0x00001458
_02261A24: .4byte 0x00001468
_02261A28: .4byte 0x00001560
	thumb_func_end ov117_022619F8

	thumb_func_start ov117_02261A2C
ov117_02261A2C: @ 0x02261A2C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x8c
	adds r4, r1, #0
	ldr r0, [r0]
	movs r1, #0xad
	movs r2, #4
	movs r3, #0x6e
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #2
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	movs r1, #3
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0200710C
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #1
	movs r3, #2
	bl FUN_0200710C
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	adds r5, #0x8c
	str r0, [sp, #4]
	ldr r0, [r5]
	movs r2, #2
	adds r3, r1, #0
	bl FUN_020038B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_02261A2C

	thumb_func_start ov117_02261AC4
ov117_02261AC4: @ 0x02261AC4
	bx lr
	.align 2, 0
	thumb_func_end ov117_02261AC4

	thumb_func_start ov117_02261AC8
ov117_02261AC8: @ 0x02261AC8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa0
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x8c
	adds r4, r1, #0
	ldr r0, [r0]
	movs r1, #0xad
	movs r2, #5
	movs r3, #0x6e
	bl FUN_02003050
	movs r0, #1
	str r0, [sp]
	movs r0, #5
	lsls r0, r0, #6
	str r0, [sp, #4]
	movs r0, #0x60
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0xad
	movs r2, #6
	movs r3, #0x6e
	bl FUN_02002FEC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #0xd
	movs r3, #6
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #0xe
	movs r3, #6
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #0x12
	movs r3, #5
	bl FUN_020070E8
	ldr r0, [r5]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _02261B64
	cmp r0, #3
	beq _02261B7E
	b _02261B98
_02261B64:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #0xf
	movs r3, #5
	bl FUN_0200710C
	b _02261BB0
_02261B7E:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #5
	bl FUN_0200710C
	b _02261BB0
_02261B98:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #0x11
	movs r3, #5
	bl FUN_0200710C
_02261BB0:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #0x12
	movs r3, #4
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	adds r0, r4, #0
	movs r1, #0x13
	movs r3, #4
	bl FUN_0200710C
	adds r0, r5, #0
	bl ov117_02264AF0
	adds r0, r5, #0
	bl ov117_02264AB0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x6e
	str r0, [sp, #4]
	movs r2, #0x35
	ldr r0, [r5, #0x2c]
	movs r1, #4
	lsls r2, r2, #4
	movs r3, #6
	bl FUN_0200DAA4
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #1
	movs r2, #0x60
	movs r3, #0x20
	bl FUN_02003070
	movs r3, #0
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r5, #0x8c
	ldr r0, [r5]
	movs r2, #2
	bl FUN_020038B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02261AC8

	thumb_func_start ov117_02261C28
ov117_02261C28: @ 0x02261C28
	bx lr
	.align 2, 0
	thumb_func_end ov117_02261C28

	thumb_func_start ov117_02261C2C
ov117_02261C2C: @ 0x02261C2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	adds r0, #0xd8
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r7, #0
	bl FUN_0203608C
	adds r1, r0, #0
	ldr r0, [sp, #8]
	bl ov117_0226235C
	adds r4, r0, #0
	movs r1, #0x14
	muls r4, r1, r4
	ldr r2, _02261DB4 @ =0x022669F0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	movs r3, #0x6e
	bl FUN_020170D8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	adds r0, #0x10
	bl FUN_02017258
	ldr r0, [sp, #0x10]
	adds r1, r7, #0
	ldr r2, _02261DB8 @ =0xFFFE7000
	adds r0, #0x10
	adds r3, r1, #0
	bl FUN_02017350
	ldr r0, [sp, #0x10]
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, #0x10
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	ldr r0, [sp, #0x10]
	movs r1, #1
	adds r0, #0x10
	bl FUN_02017348
	ldr r2, _02261DBC @ =0x022669F4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	adds r0, #0x88
	movs r3, #0x6e
	bl FUN_020170D8
	ldr r2, _02261DC0 @ =0x022669F8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	adds r0, #0x98
	movs r3, #0x6e
	bl FUN_020170D8
	ldr r2, _02261DC4 @ =0x022669FC
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	adds r0, #0xa8
	movs r3, #0x6e
	bl FUN_020170D8
	ldr r2, _02261DC8 @ =0x02266A00
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	adds r0, #0xb8
	movs r3, #0x6e
	bl FUN_020170D8
	adds r0, r7, #0
	str r0, [sp, #0x1c]
	movs r1, #0x51
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x24]
	adds r0, #0xa8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	adds r0, #0x88
	str r0, [sp, #0x20]
_02261CEC:
	movs r0, #0
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x10]
	str r0, [sp, #0x18]
_02261CF6:
	cmp r7, #0
	bne _02261D18
	movs r0, #0x6e
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x18]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, #0x23
	bl FUN_02017164
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r7, [r6, r0]
	b _02261D24
_02261D18:
	ldr r3, [sp, #0x24]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl FUN_02017190
_02261D24:
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02017240
	ldr r0, [sp, #0x18]
	adds r4, #0x10
	adds r0, r0, #1
	adds r5, #0x90
	adds r6, #0x90
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _02261CF6
	movs r0, #9
	ldr r1, [sp, #0x14]
	lsls r0, r0, #6
	adds r0, r1, r0
	str r0, [sp, #0x14]
	movs r0, #9
	ldr r1, [sp, #0x10]
	lsls r0, r0, #6
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	blt _02261CEC
	ldr r1, [sp, #8]
	ldr r0, _02261DCC @ =0x000013A0
	movs r2, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0xc]
	movs r3, #0x6e
	bl FUN_020170D8
	ldr r1, [sp, #8]
	ldr r0, _02261DCC @ =0x000013A0
	adds r2, r1, #0
	adds r0, r1, r0
	ldr r1, _02261DCC @ =0x000013A0
	adds r0, #0x10
	adds r1, r2, r1
	bl FUN_02017258
	ldr r1, [sp, #8]
	ldr r0, _02261DCC @ =0x000013A0
	ldr r2, _02261DB8 @ =0xFFFE7000
	adds r0, r1, r0
	movs r1, #0
	adds r0, #0x10
	adds r3, r1, #0
	bl FUN_02017350
	ldr r1, [sp, #8]
	ldr r0, _02261DCC @ =0x000013A0
	adds r0, r1, r0
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, #0x10
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	ldr r1, [sp, #8]
	ldr r0, _02261DCC @ =0x000013A0
	adds r0, r1, r0
	adds r0, #0x10
	movs r1, #1
	bl FUN_02017348
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02261DB4: .4byte 0x022669F0
_02261DB8: .4byte 0xFFFE7000
_02261DBC: .4byte 0x022669F4
_02261DC0: .4byte 0x022669F8
_02261DC4: .4byte 0x022669FC
_02261DC8: .4byte 0x02266A00
_02261DCC: .4byte 0x000013A0
	thumb_func_end ov117_02261C2C

	thumb_func_start ov117_02261DD0
ov117_02261DD0: @ 0x02261DD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r6, #0xd8
	str r0, [sp]
	adds r0, r6, #0
	bl FUN_02017110
	adds r5, r6, #0
	movs r4, #0
	adds r5, #0x88
_02261DE6:
	adds r0, r5, #0
	bl FUN_02017110
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _02261DE6
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x51
	lsls r0, r0, #2
	adds r7, r6, r0
	ldr r6, [sp]
	adds r6, #0xa8
_02261E02:
	movs r4, #0
	adds r5, r7, #0
_02261E06:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_020171A0
	adds r4, r4, #1
	adds r5, #0x90
	cmp r4, #4
	blt _02261E06
	movs r0, #9
	lsls r0, r0, #6
	adds r7, r7, r0
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	blt _02261E02
	ldr r1, _02261E34 @ =0x000013A0
	ldr r0, [sp]
	adds r0, r0, r1
	bl FUN_02017110
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02261E34: .4byte 0x000013A0
	thumb_func_end ov117_02261DD0

	thumb_func_start ov117_02261E38
ov117_02261E38: @ 0x02261E38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #4
	adds r5, #0xd8
	cmp r1, r0
	ble _02261E4C
	movs r2, #3
	b _02261E5E
_02261E4C:
	cmp r1, #2
	ble _02261E54
	movs r2, #2
	b _02261E5E
_02261E54:
	cmp r1, #1
	ble _02261E5C
	movs r2, #1
	b _02261E5E
_02261E5C:
	movs r2, #0
_02261E5E:
	adds r0, r5, #0
	str r0, [sp, #4]
	adds r0, #0x88
	movs r1, #0x90
	str r0, [sp, #4]
	lsls r0, r2, #4
	muls r1, r2, r1
	movs r3, #9
	mov ip, r0
	movs r0, #0
	adds r1, r5, r1
	lsls r3, r3, #6
_02261E76:
	adds r4, r1, #0
	adds r4, #0xc8
	ldr r4, [r4]
	cmp r4, #0
	bne _02261EF2
	adds r4, r2, #0
	movs r1, #0x90
	muls r4, r1, r4
	lsls r1, r0, #3
	adds r0, r0, r1
	lsls r7, r0, #6
	adds r0, r5, #0
	adds r0, #0xcc
	adds r6, r0, r7
	ldr r1, [sp, #4]
	mov r2, ip
	adds r0, r6, r4
	adds r1, r1, r2
	bl FUN_02017258
	movs r1, #0
	ldr r2, _02261F00 @ =0xFFFE7000
	adds r0, r6, r4
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r6, r4
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r6, r4
	movs r1, #1
	bl FUN_02017348
	movs r0, #0x51
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, r0, r7
	str r0, [sp]
	adds r0, r0, r4
	movs r1, #0
	bl FUN_02017240
	ldr r1, [sp]
	adds r0, r6, r4
	adds r1, r1, r4
	bl FUN_0201727C
	adds r0, r5, r7
	adds r0, r0, r4
	movs r1, #1
	adds r0, #0xc8
	str r1, [r0]
	ldr r0, _02261F04 @ =0x00000579
	bl FUN_02005748
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02261EF2:
	adds r0, r0, #1
	adds r1, r1, r3
	cmp r0, #8
	blt _02261E76
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02261F00: .4byte 0xFFFE7000
_02261F04: .4byte 0x00000579
	thumb_func_end ov117_02261E38

	thumb_func_start ov117_02261F08
ov117_02261F08: @ 0x02261F08
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r0, r1, #3
	adds r0, r1, r0
	adds r4, #0xd8
	lsls r6, r0, #6
	adds r0, r4, #0
	adds r0, #0xcc
	movs r3, #0x90
	adds r5, r2, #0
	muls r5, r3, r5
	adds r3, #0xb4
	adds r1, r4, r3
	adds r0, r0, r6
	adds r1, r1, r6
	adds r0, r0, r5
	adds r1, r1, r5
	bl FUN_02017288
	adds r0, r4, r6
	adds r0, r0, r5
	movs r1, #0
	adds r0, #0xc8
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov117_02261F08

	thumb_func_start ov117_02261F3C
ov117_02261F3C: @ 0x02261F3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r1, #0x51
	str r0, [sp]
	str r0, [sp, #8]
	adds r0, #0xd8
	lsls r1, r1, #2
	str r0, [sp, #8]
	adds r0, r0, r1
	movs r7, #0
	str r0, [sp, #4]
_02261F52:
	ldr r4, [sp, #8]
	ldr r5, [sp, #4]
	movs r6, #0
_02261F58:
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	cmp r0, #1
	bne _02261F7A
	movs r1, #1
	adds r0, r5, #0
	lsls r1, r1, #0xc
	bl FUN_02017204
	cmp r0, #1
	bne _02261F7A
	ldr r0, [sp]
	adds r1, r7, #0
	adds r2, r6, #0
	bl ov117_02261F08
_02261F7A:
	adds r6, r6, #1
	adds r4, #0x90
	adds r5, #0x90
	cmp r6, #4
	blt _02261F58
	movs r0, #9
	ldr r1, [sp, #8]
	lsls r0, r0, #6
	adds r0, r1, r0
	str r0, [sp, #8]
	movs r0, #9
	ldr r1, [sp, #4]
	lsls r0, r0, #6
	adds r0, r1, r0
	adds r7, r7, #1
	str r0, [sp, #4]
	cmp r7, #8
	blt _02261F52
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov117_02261F3C

	thumb_func_start ov117_02261FA4
ov117_02261FA4: @ 0x02261FA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	adds r0, #0xd8
	str r0, [sp]
	ldr r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r7, #0xcc
_02261FB6:
	ldr r4, [sp]
	movs r6, #0
	adds r5, r7, #0
_02261FBC:
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	cmp r0, #1
	bne _02261FCC
	adds r0, r5, #0
	bl FUN_02017294
_02261FCC:
	adds r6, r6, #1
	adds r4, #0x90
	adds r5, #0x90
	cmp r6, #4
	blt _02261FBC
	movs r0, #9
	ldr r1, [sp]
	lsls r0, r0, #6
	adds r0, r1, r0
	str r0, [sp]
	movs r0, #9
	lsls r0, r0, #6
	adds r7, r7, r0
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	blt _02261FB6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_02261FA4

	thumb_func_start ov117_02261FF4
ov117_02261FF4: @ 0x02261FF4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0203608C
	ldr r1, [r4, #4]
	cmp r1, r0
	bne _02262006
	movs r0, #1
	pop {r4, pc}
_02262006:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02261FF4

	thumb_func_start ov117_0226200C
ov117_0226200C: @ 0x0226200C
	push {r4, r5, r6, r7}
	ldr r5, [r0]
	ldr r3, [r0, #0xc]
	adds r4, r5, #0
	adds r4, #0x30
	ldrb r6, [r4]
	adds r1, r5, #0
	adds r1, #0x2c
	movs r2, #1
	ldrb r1, [r1]
	cmp r6, #1
	ble _0226203C
	adds r4, r0, #4
_02262026:
	ldr r7, [r4, #0xc]
	cmp r3, r7
	bhs _02262034
	adds r1, r5, r2
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r3, r7, #0
_02262034:
	adds r2, r2, #1
	adds r4, r4, #4
	cmp r2, r6
	blt _02262026
_0226203C:
	str r1, [r0, #4]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov117_0226200C

	thumb_func_start ov117_02262044
ov117_02262044: @ 0x02262044
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	str r1, [sp]
	adds r5, r2, #0
	bl ov117_022620E0
	cmp r0, #1
	beq _02262096
	ldr r0, _02262098 @ =0x00002F04
	movs r1, #0x3c
	adds r6, r4, r0
	ldr r0, [sp]
	lsls r7, r0, #2
	ldr r0, [r6, r7]
	blx FUN_020E1F6C
	adds r0, r1, #0
	ldr r1, _0226209C @ =0x00001C1C
	movs r3, #0x4b
	ldr r2, [sp]
	lsls r3, r3, #4
	adds r1, r4, r1
	muls r3, r2, r3
	adds r2, r1, r3
	movs r1, #0x14
	muls r1, r0, r1
	ldr r0, [r6, r7]
	adds r4, r2, r1
	adds r0, r0, #1
	str r0, [r6, r7]
	ldr r0, [r2, r1]
	cmp r0, #0
	beq _0226208A
	bl FUN_02022974
_0226208A:
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
_02262096:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02262098: .4byte 0x00002F04
_0226209C: .4byte 0x00001C1C
	thumb_func_end ov117_02262044

	thumb_func_start ov117_022620A0
ov117_022620A0: @ 0x022620A0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _022620D8 @ =0x00002F14
	lsls r4, r7, #2
	adds r5, r6, r0
	ldr r0, [r5, r4]
	movs r1, #0x3c
	blx FUN_020E1F6C
	ldr r0, _022620DC @ =0x00001C1C
	adds r2, r6, r0
	movs r0, #0x4b
	lsls r0, r0, #4
	muls r0, r7, r0
	adds r0, r2, r0
	movs r2, #0x14
	muls r2, r1, r2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _022620D4
	ldr r1, [r5, r4]
	adds r0, r0, r2
	adds r1, r1, #1
	str r1, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_022620D4:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022620D8: .4byte 0x00002F14
_022620DC: .4byte 0x00001C1C
	thumb_func_end ov117_022620A0

	thumb_func_start ov117_022620E0
ov117_022620E0: @ 0x022620E0
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #7
	bhi _02262128
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022620F8: @ jump table
	.2byte _02262128 - _022620F8 - 2 @ case 0
	.2byte _02262128 - _022620F8 - 2 @ case 1
	.2byte _02262108 - _022620F8 - 2 @ case 2
	.2byte _02262108 - _022620F8 - 2 @ case 3
	.2byte _02262108 - _022620F8 - 2 @ case 4
	.2byte _02262108 - _022620F8 - 2 @ case 5
	.2byte _02262108 - _022620F8 - 2 @ case 6
	.2byte _02262108 - _022620F8 - 2 @ case 7
_02262108:
	ldr r0, _0226212C @ =0x00002EF0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02262114
	bl FUN_02022974
_02262114:
	ldr r0, _0226212C @ =0x00002EF0
	adds r2, r5, r0
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	movs r0, #1
	pop {r3, r4, r5, pc}
_02262128:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0226212C: .4byte 0x00002EF0
	thumb_func_end ov117_022620E0

	thumb_func_start ov117_02262130
ov117_02262130: @ 0x02262130
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov117_0226217C
	cmp r0, #1
	beq _02262170
	ldr r0, _02262174 @ =0x00002F24
	movs r1, #0x3c
	ldr r0, [r5, r0]
	blx FUN_020E1F6C
	ldr r0, _02262178 @ =0x0000176C
	adds r2, r5, r0
	movs r0, #0x14
	muls r0, r1, r0
	ldr r1, _02262174 @ =0x00002F24
	adds r6, r2, r0
	ldr r3, [r5, r1]
	adds r3, r3, #1
	str r3, [r5, r1]
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02262164
	bl FUN_02022974
_02262164:
	ldm r4!, {r0, r1}
	stm r6!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r6!, {r0, r1}
	ldr r0, [r4]
	str r0, [r6]
_02262170:
	pop {r4, r5, r6, pc}
	nop
_02262174: .4byte 0x00002F24
_02262178: .4byte 0x0000176C
	thumb_func_end ov117_02262130

	thumb_func_start ov117_0226217C
ov117_0226217C: @ 0x0226217C
	push {r4, lr}
	adds r2, r1, #0
	ldr r1, [r2]
	cmp r1, #7
	bhi _022621CC
	adds r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_02262192: @ jump table
	.2byte _022621CC - _02262192 - 2 @ case 0
	.2byte _022621CC - _02262192 - 2 @ case 1
	.2byte _022621A2 - _02262192 - 2 @ case 2
	.2byte _022621A2 - _02262192 - 2 @ case 3
	.2byte _022621A2 - _02262192 - 2 @ case 4
	.2byte _022621A2 - _02262192 - 2 @ case 5
	.2byte _022621A2 - _02262192 - 2 @ case 6
	.2byte _022621A2 - _02262192 - 2 @ case 7
_022621A2:
	ldr r3, _022621D0 @ =0x00002EDC
	ldr r4, [r0, r3]
	cmp r4, #0
	bne _022621BC
	adds r3, r0, r3
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	movs r0, #1
	pop {r4, pc}
_022621BC:
	cmp r1, r4
	bne _022621C4
	movs r0, #1
	pop {r4, pc}
_022621C4:
	bl FUN_02022974
	movs r0, #0
	pop {r4, pc}
_022621CC:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_022621D0: .4byte 0x00002EDC
	thumb_func_end ov117_0226217C

	thumb_func_start ov117_022621D4
ov117_022621D4: @ 0x022621D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _022621F8 @ =0x00002F28
	movs r1, #0x3c
	ldr r0, [r4, r0]
	blx FUN_020E1F6C
	ldr r0, _022621FC @ =0x0000176C
	adds r2, r1, #0
	adds r3, r4, r0
	movs r0, #0x14
	muls r2, r0, r2
	ldr r1, [r3, r2]
	adds r0, r3, r2
	cmp r1, #0
	bne _022621F6
	movs r0, #0
_022621F6:
	pop {r4, pc}
	.align 2, 0
_022621F8: .4byte 0x00002F28
_022621FC: .4byte 0x0000176C
	thumb_func_end ov117_022621D4

	thumb_func_start ov117_02262200
ov117_02262200: @ 0x02262200
	push {r3, r4, r5, lr}
	ldr r2, _02262264 @ =0x00002FC4
	adds r5, r0, #0
	ldr r1, [r5, r2]
	cmp r1, #0
	ble _02262214
	subs r0, r1, #1
	str r0, [r5, r2]
	movs r0, #0
	pop {r3, r4, r5, pc}
_02262214:
	adds r1, r2, #0
	subs r1, #0xe8
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _02262238
	subs r2, #0xe8
	adds r1, r5, r2
	bl ov117_02266624
	cmp r0, #1
	bne _02262234
	ldr r0, _02262268 @ =0x00002EDC
	movs r1, #0
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_02262234:
	movs r0, #0
	pop {r3, r4, r5, pc}
_02262238:
	bl ov117_022621D4
	adds r4, r0, #0
	bne _02262244
	movs r0, #0
	pop {r3, r4, r5, pc}
_02262244:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov117_02266624
	cmp r0, #1
	bne _02262260
	movs r0, #0
	str r0, [r4]
	ldr r0, _0226226C @ =0x00002F28
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_02262260:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02262264: .4byte 0x00002FC4
_02262268: .4byte 0x00002EDC
_0226226C: .4byte 0x00002F28
	thumb_func_end ov117_02262200

	thumb_func_start ov117_02262270
ov117_02262270: @ 0x02262270
	push {r3, r4, r5, lr}
	ldr r1, _022622B4 @ =0x00002EF0
	adds r5, r0, #0
	adds r1, r5, r1
	bl ov117_022666C0
	cmp r0, #1
	beq _022622B2
	ldr r0, [r5]
	movs r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _022622B2
_0226228C:
	ldr r1, [r5]
	adds r0, r5, #0
	adds r1, r1, r4
	adds r1, #0x2c
	ldrb r1, [r1]
	bl ov117_022620A0
	adds r1, r0, #0
	beq _022622A6
	adds r0, r5, #0
	bl ov117_022666C0
	b _0226228C
_022622A6:
	ldr r0, [r5]
	adds r4, r4, #1
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r4, r0
	blt _0226228C
_022622B2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022622B4: .4byte 0x00002EF0
	thumb_func_end ov117_02262270

	thumb_func_start ov117_022622B8
ov117_022622B8: @ 0x022622B8
	ldr r1, _022622C0 @ =0x00002FC8
	ldr r0, [r0, r1]
	bx lr
	nop
_022622C0: .4byte 0x00002FC8
	thumb_func_end ov117_022622B8

	thumb_func_start ov117_022622C4
ov117_022622C4: @ 0x022622C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	bl FUN_0203608C
	movs r6, #0xff
	adds r4, r6, #0
	movs r1, #0
	b _022622F6
_022622D8:
	ldr r2, [r5]
	adds r2, r2, r1
	adds r2, #0x2c
	ldrb r2, [r2]
	cmp r0, r2
	bne _022622E6
	adds r4, r1, #0
_022622E6:
	ldr r2, [r5]
	adds r2, r2, r1
	adds r2, #0x2c
	ldrb r2, [r2]
	cmp r7, r2
	bne _022622F4
	adds r6, r1, #0
_022622F4:
	adds r1, r1, #1
_022622F6:
	ldr r2, [r5]
	adds r2, #0x30
	ldrb r2, [r2]
	cmp r1, r2
	blt _022622D8
	movs r0, #0
	cmp r6, #0xff
	beq _0226230C
	cmp r4, #0xff
	beq _0226230C
	movs r0, #1
_0226230C:
	cmp r0, #0
	bne _02262314
	bl FUN_02022974
_02262314:
	movs r1, #0
	ldr r0, _02262358 @ =0x02266954
	b _02262340
_0226231A:
	ldr r2, [r5]
	adds r2, #0x30
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r0, r2
	ldrb r2, [r1, r2]
	cmp r4, r2
	bne _0226232C
	str r1, [sp]
_0226232C:
	ldr r2, [r5]
	adds r2, #0x30
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r0, r2
	ldrb r2, [r1, r2]
	cmp r6, r2
	bne _0226233E
	str r1, [sp, #4]
_0226233E:
	adds r1, r1, #1
_02262340:
	ldr r2, [r5]
	adds r2, #0x30
	ldrb r2, [r2]
	cmp r1, r2
	blt _0226231A
	ldr r1, [sp, #4]
	ldr r0, [sp]
	subs r0, r1, r0
	bpl _02262354
	adds r0, r0, r2
_02262354:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02262358: .4byte 0x02266954
	thumb_func_end ov117_022622C4

	thumb_func_start ov117_0226235C
ov117_0226235C: @ 0x0226235C
	push {r4, lr}
	ldr r3, [r0]
	movs r2, #0
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r4, [r0]
	cmp r4, #0
	ble _02262382
_0226236C:
	adds r0, r3, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r1, r0
	bne _0226237A
	adds r0, r2, #0
	pop {r4, pc}
_0226237A:
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, r4
	blt _0226236C
_02262382:
	bl FUN_02022974
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_0226235C

	thumb_func_start ov117_0226238C
ov117_0226238C: @ 0x0226238C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _022623AC @ =0x00002FD4
	adds r4, r1, #0
	ldr r0, [r5, r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _022623A0
	bl FUN_02022974
_022623A0:
	ldr r0, _022623AC @ =0x00002FD4
	str r4, [r5, r0]
	adds r0, r0, #4
	str r6, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_022623AC: .4byte 0x00002FD4
	thumb_func_end ov117_0226238C

	thumb_func_start ov117_022623B0
ov117_022623B0: @ 0x022623B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02262438 @ =0x00002FD4
	movs r1, #0
	ldr r2, [r4, r0]
	cmp r2, #6
	bhi _02262408
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022623CA: @ jump table
	.2byte _02262408 - _022623CA - 2 @ case 0
	.2byte _022623D8 - _022623CA - 2 @ case 1
	.2byte _022623DC - _022623CA - 2 @ case 2
	.2byte _022623E0 - _022623CA - 2 @ case 3
	.2byte _022623E4 - _022623CA - 2 @ case 4
	.2byte _022623F0 - _022623CA - 2 @ case 5
	.2byte _022623FC - _022623CA - 2 @ case 6
_022623D8:
	movs r1, #1
	b _0226240C
_022623DC:
	movs r1, #1
	b _0226240C
_022623E0:
	movs r1, #1
	b _0226240C
_022623E4:
	subs r0, #8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0226240C
	movs r1, #1
	b _0226240C
_022623F0:
	ldr r0, _0226243C @ =0x0000339C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0226240C
	movs r1, #1
	b _0226240C
_022623FC:
	ldr r0, _02262440 @ =0x00001768
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0226240C
	movs r1, #1
	b _0226240C
_02262408:
	movs r0, #0
	pop {r4, pc}
_0226240C:
	cmp r1, #1
	bne _02262434
	ldr r0, _02262444 @ =0x00002FD8
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_020364F0
	adds r0, r4, #0
	bl ov117_02261FF4
	cmp r0, #1
	bne _0226242A
	movs r1, #7
	b _0226242C
_0226242A:
	movs r1, #0
_0226242C:
	ldr r0, _02262438 @ =0x00002FD4
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_02262434:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02262438: .4byte 0x00002FD4
_0226243C: .4byte 0x0000339C
_02262440: .4byte 0x00001768
_02262444: .4byte 0x00002FD8
	thumb_func_end ov117_022623B0

	thumb_func_start ov117_02262448
ov117_02262448: @ 0x02262448
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02262480 @ =0x00002FD4
	ldr r2, [r4, r0]
	cmp r2, #7
	beq _02262458
	movs r0, #0
	pop {r4, pc}
_02262458:
	adds r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, r1
	beq _02262464
	movs r0, #0
	pop {r4, pc}
_02262464:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02036540
	cmp r0, #1
	bne _0226247A
	ldr r0, _02262480 @ =0x00002FD4
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_0226247A:
	movs r0, #0
	pop {r4, pc}
	nop
_02262480: .4byte 0x00002FD4
	thumb_func_end ov117_02262448

	thumb_func_start ov117_02262484
ov117_02262484: @ 0x02262484
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #5
	bhi _02262516
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0226249A: @ jump table
	.2byte _022624A6 - _0226249A - 2 @ case 0
	.2byte _022624B6 - _0226249A - 2 @ case 1
	.2byte _022624CE - _0226249A - 2 @ case 2
	.2byte _022624DC - _0226249A - 2 @ case 3
	.2byte _022624F4 - _0226249A - 2 @ case 4
	.2byte _02262502 - _0226249A - 2 @ case 5
_022624A6:
	ldrb r2, [r4, #0x18]
	movs r1, #1
	bl ov117_0226687C
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624B6:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _02262516
	ldrb r0, [r4, #0x18]
	adds r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624CE:
	ldrb r1, [r4, #0x18]
	bl ov117_022668B8
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624DC:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _02262516
	ldrb r0, [r4, #0x18]
	adds r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624F4:
	ldrb r1, [r4, #0x18]
	bl ov117_022667F4
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_02262502:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _02262516
	ldrb r0, [r4, #0x18]
	adds r0, r0, #1
	strb r0, [r4, #0x18]
	movs r0, #1
	pop {r4, pc}
_02262516:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02262484

	thumb_func_start ov117_0226251C
ov117_0226251C: @ 0x0226251C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r1, _022625E8 @ =0x00002FB4
	ldr r0, _022625EC @ =0x00000516
	ldr r2, [r5, r1]
	cmp r2, r0
	bls _0226254C
	adds r0, r1, #0
	adds r0, #0x20
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0226254C
	adds r0, r1, #0
	subs r0, #0xd8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0226254C
	subs r1, #0xc4
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0226254C
	movs r0, #1
	pop {r3, r4, r5, pc}
_0226254C:
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhi _022625E4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226255E: @ jump table
	.2byte _02262566 - _0226255E - 2 @ case 0
	.2byte _02262584 - _0226255E - 2 @ case 1
	.2byte _0226259E - _0226255E - 2 @ case 2
	.2byte _022625CE - _0226255E - 2 @ case 3
_02262566:
	ldr r0, _022625F0 @ =0x00002FC8
	ldr r0, [r5, r0]
	bl ov117_02263CF4
	ldr r1, _022625F0 @ =0x00002FC8
	adds r2, r0, #0
	ldrb r3, [r4, #0x18]
	ldr r1, [r5, r1]
	adds r0, r5, #0
	bl ov117_02266784
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _022625E4
_02262584:
	ldrb r1, [r4, #0x18]
	adds r0, r5, #0
	bl ov117_02262448
	cmp r0, #1
	bne _022625E4
	ldrb r0, [r4, #0x18]
	adds r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _022625E4
_0226259E:
	ldr r0, _022625F4 @ =0x00001434
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _022625E4
	subs r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, r1
	blt _022625E4
	ldr r0, _022625F0 @ =0x00002FC8
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov117_022622B8
	adds r1, r0, #0
	ldrb r2, [r4, #0x18]
	adds r0, r5, #0
	bl ov117_02266730
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _022625E4
_022625CE:
	ldrb r1, [r4, #0x18]
	adds r0, r5, #0
	bl ov117_02262448
	cmp r0, #1
	bne _022625E4
	ldrb r0, [r4, #0x18]
	adds r0, r0, #1
	strb r0, [r4, #0x18]
	movs r0, #0
	str r0, [r4, #0xc]
_022625E4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022625E8: .4byte 0x00002FB4
_022625EC: .4byte 0x00000516
_022625F0: .4byte 0x00002FC8
_022625F4: .4byte 0x00001434
	thumb_func_end ov117_0226251C

	thumb_func_start ov117_022625F8
ov117_022625F8: @ 0x022625F8
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #3
	bhi _0226265E
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0226260E: @ jump table
	.2byte _02262616 - _0226260E - 2 @ case 0
	.2byte _02262624 - _0226260E - 2 @ case 1
	.2byte _0226263C - _0226260E - 2 @ case 2
	.2byte _02262648 - _0226260E - 2 @ case 3
_02262616:
	ldrb r1, [r4, #0x18]
	bl ov117_02266834
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _0226265E
_02262624:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _0226265E
	ldrb r0, [r4, #0x18]
	adds r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _0226265E
_0226263C:
	ldr r0, [r0, #0x20]
	cmp r0, #8
	bne _0226265E
	adds r0, r1, #1
	str r0, [r4, #0xc]
	b _0226265E
_02262648:
	ldr r1, [r4, #0x14]
	adds r1, r1, #1
	str r1, [r4, #0x14]
	cmp r1, #0x5a
	blt _0226265E
	bl ov117_02266648
	cmp r0, #1
	bne _0226265E
	movs r0, #1
	pop {r4, pc}
_0226265E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_022625F8

	thumb_func_start ov117_02262664
ov117_02262664: @ 0x02262664
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov117_02261FF4
	cmp r0, #0
	bne _02262674
	movs r0, #0
	pop {r3, r4, r5, pc}
_02262674:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r2, [r0]
	adds r4, r5, #0
	adds r4, #0xb8
	cmp r2, #3
	blo _02262686
	movs r0, #1
	pop {r3, r4, r5, pc}
_02262686:
	lsls r3, r2, #2
	ldr r2, _022626A8 @ =0x02266920
	adds r0, r5, #0
	ldr r2, [r2, r3]
	adds r1, r4, #0
	blx r2
	cmp r0, #1
	bne _022626A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
_022626A4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022626A8: .4byte 0x02266920
	thumb_func_end ov117_02262664

	thumb_func_start ov117_022626AC
ov117_022626AC: @ 0x022626AC
	bx lr
	.align 2, 0
	thumb_func_end ov117_022626AC

	thumb_func_start ov117_022626B0
ov117_022626B0: @ 0x022626B0
	push {r3, r4, r5, lr}
	movs r1, #0x9e
	adds r5, r0, #0
	movs r0, #0x6e
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x9e
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r5]
	ldr r1, [r0, #0x34]
	movs r0, #0x27
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov117_02262B98
	adds r0, r4, #0
	blx ov117_02262E0C
	adds r0, r4, #0
	blx ov117_02262E5C
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	cmp r0, #1
	beq _02262706
	cmp r0, #2
	bne _0226271A
	movs r1, #1
	movs r0, #0x26
	lsls r1, r1, #0x12
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r1, #0x1a
	lsls r1, r1, #0xe
	adds r0, r0, #4
	str r1, [r4, r0]
	b _02262728
_02262706:
	movs r1, #9
	movs r0, #0x26
	lsls r1, r1, #0x10
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r1, #7
	lsls r1, r1, #0x10
	adds r0, r0, #4
	str r1, [r4, r0]
	b _02262728
_0226271A:
	movs r1, #6
	movs r0, #0x26
	lsls r1, r1, #0x10
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
_02262728:
	movs r0, #0x87
	movs r1, #0x80
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r1, #0x28
	adds r0, r0, #4
	str r1, [r4, r0]
	adds r0, r5, #0
	blx ov117_022638D8
	adds r0, r5, #0
	blx ov117_02263A00
	movs r1, #0x8d
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	adds r0, r4, #0
	blx ov117_02263A6C
	movs r1, #2
	movs r0, #0x92
	lsls r1, r1, #0xc
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_022626B0

	thumb_func_start ov117_02262760
ov117_02262760: @ 0x02262760
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x8d
	adds r4, r1, #0
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	blx ov117_02263AE4
	adds r0, r5, #0
	blx ov117_022639BC
	ldr r0, [r4]
	bl FUN_020181C4
	movs r0, #0x93
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x25
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02262760

	thumb_func_start ov117_02262798
ov117_02262798: @ 0x02262798
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	movs r1, #0x91
	adds r5, r0, #0
	movs r0, #0
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0x20]
	cmp r0, #2
	bne _022627D8
	ldr r0, _02262938 @ =0x00001758
	adds r2, r1, #0
	ldr r3, [r5, r0]
	subs r2, #0x38
	str r3, [r4, r2]
	adds r2, r0, #4
	ldr r3, [r5, r2]
	adds r2, r1, #0
	subs r2, #0x34
	str r3, [r4, r2]
	adds r2, r0, #0
	adds r2, #8
	ldr r3, [r5, r2]
	adds r2, r1, #0
	subs r2, #0x30
	str r3, [r4, r2]
	adds r0, #0xc
	ldr r0, [r5, r0]
	subs r1, #0x2c
	str r0, [r4, r1]
	b _02262820
_022627D8:
	ldr r0, _0226293C @ =0x00002FB8
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _022627E8
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02262800
_022627E8:
	movs r1, #0x83
	lsls r1, r1, #2
	movs r2, #0
	str r2, [r4, r1]
	adds r0, r1, #4
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #8
	str r2, [r4, r0]
	adds r1, #0xc
	str r2, [r4, r1]
	b _02262820
_02262800:
	ldr r2, _02262940 @ =0x021BF6BC
	adds r0, r1, #0
	ldrh r3, [r2, #0x1c]
	subs r0, #0x38
	str r3, [r4, r0]
	adds r0, r1, #0
	ldrh r3, [r2, #0x1e]
	subs r0, #0x34
	str r3, [r4, r0]
	adds r0, r1, #0
	ldrh r3, [r2, #0x22]
	subs r0, #0x30
	subs r1, #0x2c
	str r3, [r4, r0]
	ldrh r0, [r2, #0x20]
	str r0, [r4, r1]
_02262820:
	adds r0, r4, #0
	blx ov117_02263270
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02262846
	adds r0, r4, #0
	bl ov117_02262A38
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02262846
	bne _02262846
	movs r0, #0x9d
	movs r1, #0
	lsls r0, r0, #2
	strb r1, [r4, r0]
_02262846:
	adds r0, r4, #0
	blx ov117_0226334C
	adds r0, r4, #0
	bl ov117_02262A70
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	blx ov117_02263A6C
	movs r0, #0x9a
	lsls r0, r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _0226287C
	adds r1, #8
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0x1e
	ble _02262876
	movs r1, #0x1e
	strh r1, [r4, r0]
_02262876:
	adds r0, r4, #0
	bl ov117_02262CFC
_0226287C:
	ldr r0, _02262944 @ =0x00002FBC
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02262934
	subs r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02262934
	movs r2, #0x91
	lsls r2, r2, #2
	ldr r1, [r4, r2]
	cmp r1, #0
	ble _02262934
	adds r0, r2, #0
	adds r0, #0x18
	ldr r0, [r4, r0]
	adds r2, #0xdc
	movs r7, #0
	cmp r0, r2
	bge _022628C4
	adds r0, r4, #0
	bl ov117_02262CB8
	cmp r0, #1
	bne _022628D4
	movs r0, #0x9a
	movs r1, #8
	lsls r0, r0, #2
	strh r1, [r4, r0]
	adds r1, r7, #0
	adds r0, #0xd
	strb r1, [r4, r0]
	ldr r0, _02262948 @ =0x00000576
	bl FUN_02005748
	b _022628D4
_022628C4:
	adds r0, r4, #0
	bl ov117_02262CE8
	movs r0, #0x9a
	adds r1, r7, #0
	lsls r0, r0, #2
	strh r1, [r4, r0]
	movs r7, #1
_022628D4:
	movs r1, #0x91
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov117_0226296C
	adds r6, r0, #0
	cmp r7, #1
	bne _022628F2
	movs r0, #0x19
	muls r0, r6, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	adds r6, r6, r0
_022628F2:
	ldr r1, _0226294C @ =0x00002FC8
	adds r0, r5, #0
	ldr r1, [r5, r1]
	adds r2, r6, #0
	add r3, sp, #0
	bl ov117_02264E14
	adds r0, r5, #0
	add r1, sp, #0
	bl ov117_02264E3C
	adds r0, r5, #0
	add r1, sp, #0
	bl ov117_02263DC4
	movs r1, #0x91
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov117_02262998
	movs r2, #0x91
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl ov117_022629E0
	movs r0, #0x91
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_02262934:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02262938: .4byte 0x00001758
_0226293C: .4byte 0x00002FB8
_02262940: .4byte 0x021BF6BC
_02262944: .4byte 0x00002FBC
_02262948: .4byte 0x00000576
_0226294C: .4byte 0x00002FC8
	thumb_func_end ov117_02262798

	thumb_func_start ov117_02262950
ov117_02262950: @ 0x02262950
	push {r3, lr}
	ldr r0, _02262968 @ =0x00000276
	ldrb r2, [r1, r0]
	cmp r2, #1
	bne _02262964
	movs r2, #0
	strb r2, [r1, r0]
	adds r0, r1, #0
	bl ov117_02262C3C
_02262964:
	pop {r3, pc}
	nop
_02262968: .4byte 0x00000276
	thumb_func_end ov117_02262950

	thumb_func_start ov117_0226296C
ov117_0226296C: @ 0x0226296C
	cmp r1, #0x62
	blt _02262976
	movs r2, #0x4b
	lsls r2, r2, #4
	b _0226297A
_02262976:
	movs r2, #0xa
	muls r2, r1, r2
_0226297A:
	movs r1, #0x27
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _02262990 @ =FUN_020E1F6C
	lsls r1, r0, #2
	ldr r0, _02262994 @ =0x02266FD8
	ldr r0, [r0, r1]
	movs r1, #0x64
	muls r0, r2, r0
	bx r3
	nop
_02262990: .4byte FUN_020E1F6C
_02262994: .4byte 0x02266FD8
	thumb_func_end ov117_0226296C

	thumb_func_start ov117_02262998
ov117_02262998: @ 0x02262998
	movs r2, #0x91
	lsls r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0x62
	blt _022629B2
	adds r1, r2, #4
	ldr r3, [r0, r1]
	movs r1, #1
	lsls r1, r1, #0xc
	adds r3, r3, r1
	adds r1, r2, #4
	str r3, [r0, r1]
	b _022629CC
_022629B2:
	blt _022629C4
	adds r1, r2, #4
	ldr r3, [r0, r1]
	movs r1, #1
	lsls r1, r1, #0xc
	adds r3, r3, r1
	adds r1, r2, #4
	str r3, [r0, r1]
	b _022629CC
_022629C4:
	movs r3, #2
	lsls r3, r3, #0xc
	adds r1, r2, #4
	str r3, [r0, r1]
_022629CC:
	movs r1, #0x92
	lsls r1, r1, #2
	movs r2, #0x11
	ldr r3, [r0, r1]
	lsls r2, r2, #0xc
	cmp r3, r2
	ble _022629DC
	str r2, [r0, r1]
_022629DC:
	bx lr
	.align 2, 0
	thumb_func_end ov117_02262998

	thumb_func_start ov117_022629E0
ov117_022629E0: @ 0x022629E0
	push {r3, lr}
	cmp r3, #1
	bne _022629FE
	movs r2, #0x91
	lsls r2, r2, #2
	ldr r2, [r1, r2]
	cmp r2, #0x62
	blt _022629FE
	movs r1, #0
	bl ov117_02261600
	ldr r0, _02262A30 @ =0x0000057A
	bl FUN_02005748
	pop {r3, pc}
_022629FE:
	movs r2, #0x91
	lsls r2, r2, #2
	ldr r2, [r1, r2]
	cmp r2, #0x62
	bge _02262A2E
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x10]
	cmp r1, r2
	bge _02262A1E
	movs r1, #2
	bl ov117_02261600
	ldr r0, _02262A34 @ =0x00000578
	bl FUN_02005748
	pop {r3, pc}
_02262A1E:
	cmp r1, r2
	ble _02262A2E
	movs r1, #1
	bl ov117_02261600
	ldr r0, _02262A34 @ =0x00000578
	bl FUN_02005748
_02262A2E:
	pop {r3, pc}
	.align 2, 0
_02262A30: .4byte 0x0000057A
_02262A34: .4byte 0x00000578
	thumb_func_end ov117_022629E0

	thumb_func_start ov117_02262A38
ov117_02262A38: @ 0x02262A38
	push {r4, lr}
	movs r1, #0x8e
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _02262A6C
	movs r2, #0
	str r2, [r4, r1]
	subs r2, r2, #1
	adds r1, r1, #4
	str r2, [r4, r1]
	blx ov117_022638AC
	movs r1, #9
	lsls r1, r1, #6
	ldr r2, [r4, r1]
	subs r2, r2, r0
	adds r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x19
	bge _02262A6C
	movs r2, #0
	adds r0, r1, #4
	str r2, [r4, r0]
_02262A6C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02262A38

	thumb_func_start ov117_02262A70
ov117_02262A70: @ 0x02262A70
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r0, _02262B80 @ =0x2D8B6127
	add r1, sp, #0x1c
	str r0, [sp, #0x1c]
	movs r0, #0x32
	movs r2, #1
	blx FUN_020B275C
	ldr r0, _02262B84 @ =0x00007FFF
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	movs r0, #0x33
	movs r2, #1
	blx FUN_020B275C
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	movs r0, #0
	str r0, [sp, #0x2c]
	movs r0, #0x13
	lsls r0, r0, #0xc
	str r0, [sp, #0x30]
	ldr r0, _02262B88 @ =0xFFFFB000
	add r1, sp, #0x2c
	str r0, [sp, #0x34]
	movs r0, #0x1c
	movs r2, #3
	blx FUN_020B275C
	movs r0, #0x99
	lsls r0, r0, #2
	ldr r4, [r5, r0]
	adds r0, r0, #6
	ldrsh r0, [r5, r0]
	movs r1, #0x64
	muls r0, r4, r0
	blx FUN_020E1F6C
	movs r1, #0x26
	lsls r1, r1, #4
	adds r6, r4, r0
	adds r0, r1, #0
	ldr r4, [r5, r1]
	adds r0, #8
	adds r1, #0xc
	ldrsh r2, [r5, r0]
	ldrsh r0, [r5, r1]
	movs r1, #0x64
	adds r0, r2, r0
	muls r0, r4, r0
	blx FUN_020E1F6C
	adds r0, r4, r0
	str r0, [sp, #0x20]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #0x28]
	movs r0, #0x1b
	add r1, sp, #0x20
	movs r2, #3
	str r6, [sp, #0x24]
	blx FUN_020B275C
	movs r0, #3
	str r0, [sp, #0x14]
	movs r0, #0x10
	add r1, sp, #0x14
	movs r2, #1
	blx FUN_020B275C
	movs r1, #0
	movs r0, #0x15
	adds r2, r1, #0
	blx FUN_020B275C
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #0x10
	add r1, sp, #0x10
	movs r2, #1
	blx FUN_020B275C
	movs r0, #1
	adds r1, r0, #0
	bl ov117_02262D4C
	blx ov117_02262D98
	ldr r1, [r5, #4]
	movs r2, #1
	ldr r0, [r1, #0x2c]
	lsls r4, r0, #0x10
	ldr r0, [r1, #8]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _02262B8C @ =0x1FFFFFFF
	ands r1, r0
	ldr r0, _02262B90 @ =0x72400000
	orrs r0, r1
	str r0, [sp, #0xc]
	movs r0, #0x2a
	add r1, sp, #0xc
	blx FUN_020B275C
	lsrs r0, r4, #0x11
	str r0, [sp, #8]
	movs r0, #0x2b
	add r1, sp, #8
	movs r2, #1
	blx FUN_020B275C
	ldr r0, _02262B94 @ =0x001F00C1
	add r1, sp, #4
	str r0, [sp, #4]
	movs r0, #0x29
	movs r2, #1
	blx FUN_020B275C
	adds r0, r5, #0
	blx ov117_02262EAC
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
	blx FUN_020B2628
	add sp, #0x38
	pop {r4, r5, r6, pc}
	.align 2, 0
_02262B80: .4byte 0x2D8B6127
_02262B84: .4byte 0x00007FFF
_02262B88: .4byte 0xFFFFB000
_02262B8C: .4byte 0x1FFFFFFF
_02262B90: .4byte 0x72400000
_02262B94: .4byte 0x001F00C1
	thumb_func_end ov117_02262A70

	thumb_func_start ov117_02262B98
ov117_02262B98: @ 0x02262B98
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xad
	movs r1, #0x1d
	movs r2, #0x6e
	bl FUN_02006AC0
	str r0, [r5]
	blx FUN_020B3C1C
	str r0, [r5, #4]
	bl FUN_0201CBCC
	ldr r6, [r5, #4]
	ldrh r0, [r6, #0x30]
	ldr r7, [r6, #0x38]
	lsls r4, r0, #3
	ldr r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	str r0, [sp]
	movs r0, #0x93
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02262BD0
	bl FUN_02022974
_02262BD0:
	movs r0, #0x6e
	adds r1, r4, #0
	bl FUN_02018144
	movs r1, #0x93
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x6e
	adds r1, r4, #0
	bl FUN_02018144
	movs r1, #0x25
	lsls r1, r1, #4
	str r0, [r5, r1]
	subs r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r6, r7
	adds r2, r4, #0
	blx FUN_020C4DB0
	movs r1, #0x25
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r6, r7
	adds r2, r4, #0
	blx FUN_020C4DB0
	movs r0, #0x25
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	blx FUN_020C2C54
	movs r1, #0x96
	ldr r0, [sp]
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r0, r1, #4
	str r4, [r5, r0]
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _02262C2A
	bl FUN_02022974
_02262C2A:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	ldr r1, [r2, #0x14]
	adds r1, r2, r1
	subs r1, r1, r0
	bl FUN_020182F0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov117_02262B98

	thumb_func_start ov117_02262C3C
ov117_02262C3C: @ 0x02262C3C
	push {r4, lr}
	adds r4, r0, #0
	blx FUN_020C0F1C
	movs r2, #0x25
	lsls r2, r2, #4
	adds r1, r2, #0
	ldr r0, [r4, r2]
	adds r1, #8
	adds r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	blx FUN_020C0F50
	blx FUN_020C0FBC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02262C3C

	thumb_func_start ov117_02262C60
ov117_02262C60: @ 0x02262C60
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r0, r1, #1
	adds r0, r1, r0
	movs r1, #0x32
	lsls r0, r0, #0xa
	lsls r1, r1, #4
	blx FUN_020E1F6C
	adds r0, #0x80
	asrs r3, r0, #8
	cmp r3, #0x10
	ble _02262C7E
	movs r3, #0x10
_02262C7E:
	movs r2, #0x93
	movs r0, #0x1f
	lsls r2, r2, #2
	str r0, [sp]
	adds r1, r2, #4
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r2, [r4, r2]
	lsls r3, r3, #0x18
	lsls r2, r2, #0xf
	ldr r1, [r4, r1]
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_0200393C
	movs r1, #0x25
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	blx FUN_020C2C54
	ldr r0, _02262CB4 @ =0x00000276
	movs r1, #1
	strb r1, [r4, r0]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02262CB4: .4byte 0x00000276
	thumb_func_end ov117_02262C60

	thumb_func_start ov117_02262CB8
ov117_02262CB8: @ 0x02262CB8
	push {r4, lr}
	movs r2, #0x97
	lsls r2, r2, #2
	ldr r3, [r0, r2]
	movs r4, #0
	adds r1, r3, r1
	str r1, [r0, r2]
	adds r1, r2, #0
	ldr r3, [r0, r2]
	adds r1, #0xc4
	cmp r3, r1
	blt _02262CD8
	adds r1, r2, #0
	adds r1, #0xc4
	str r1, [r0, r2]
	movs r4, #1
_02262CD8:
	movs r1, #0x97
	lsls r1, r1, #2
	ldr r1, [r0, r1]
	bl ov117_02262C60
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02262CB8

	thumb_func_start ov117_02262CE8
ov117_02262CE8: @ 0x02262CE8
	movs r1, #0x97
	ldr r3, _02262CF8 @ =ov117_02262C60
	movs r2, #0
	lsls r1, r1, #2
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	bx r3
	nop
_02262CF8: .4byte ov117_02262C60
	thumb_func_end ov117_02262CE8

	thumb_func_start ov117_02262CFC
ov117_02262CFC: @ 0x02262CFC
	push {r4, lr}
	movs r2, #0x9a
	adds r4, r0, #0
	lsls r2, r2, #2
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _02262D44
	adds r1, r2, #0
	adds r1, #0xd
	ldrb r1, [r4, r1]
	adds r3, r1, #1
	adds r1, r2, #0
	adds r1, #0xd
	strb r3, [r4, r1]
	adds r1, r2, #0
	adds r1, #0xd
	ldrb r1, [r4, r1]
	cmp r1, #4
	bne _02262D32
	subs r2, #0xc
	ldr r2, [r4, r2]
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	bl ov117_02262C60
	pop {r4, pc}
_02262D32:
	cmp r1, #8
	bne _02262D44
	subs r2, #0xc
	ldr r1, [r4, r2]
	bl ov117_02262C60
	ldr r0, _02262D48 @ =0x00000275
	movs r1, #0
	strb r1, [r4, r0]
_02262D44:
	pop {r4, pc}
	nop
_02262D48: .4byte 0x00000275
	thumb_func_end ov117_02262CFC

	thumb_func_start ov117_02262D4C
ov117_02262D4C: @ 0x02262D4C
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	cmp r0, #0
	beq _02262D5A
	movs r0, #1
	b _02262D5C
_02262D5A:
	movs r0, #0
_02262D5C:
	lsls r1, r0, #0xf
	ldr r0, _02262D90 @ =0x21085EF7
	movs r2, #1
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0x30
	add r1, sp, #4
	blx FUN_020B275C
	cmp r4, #0
	beq _02262D76
	movs r0, #1
	b _02262D78
_02262D76:
	movs r0, #0
_02262D78:
	lsls r1, r0, #0xf
	ldr r0, _02262D94 @ =0x00007FFF
	movs r2, #1
	orrs r0, r1
	str r0, [sp]
	movs r0, #0x31
	add r1, sp, #0
	blx FUN_020B275C
	add sp, #8
	pop {r4, pc}
	nop
_02262D90: .4byte 0x21085EF7
_02262D94: .4byte 0x00007FFF
	thumb_func_end ov117_02262D4C

	arm_func_start ov117_02262D98
ov117_02262D98: @ 0x02262D98
	push {r4, r5, r6, lr}
	sub sp, sp, #0x80
	add r3, sp, #0
	mov r6, #0
_02262DA8:
	lsl r0, r6, #1
	add r5, r0, #1
	smull r1, r0, r5, r5
	umull ip, r2, r5, r1
	mla r2, r5, r0, r2
	asr r4, r5, #0x1f
	umull lr, r0, r5, ip
	mla r2, r4, r1, r2
	mla r0, r5, r2, r0
	mla r0, r4, ip, r0
	lsr r1, lr, #0x18
	orr r1, r1, r0, lsl #8
	add r0, r6, #1
	strb r1, [r3, r6]
	and r6, r0, #0xff
	cmp r6, #0x7f
	blo _02262DA8
	mov ip, #0xff
	add r1, sp, #0
	mov r0, #0x34
	mov r2, #0x20
	strb ip, [r3, #0x7f]
	bl FUN_020B275C
	add sp, sp, #0x80
	pop {r4, r5, r6, pc}
	arm_func_end ov117_02262D98

	arm_func_start ov117_02262E0C
ov117_02262E0C: @ 0x02262E0C
	push {r4, lr}
	mov lr, #0
	mov r4, lr
	mov ip, lr
	mov r1, #0x80000
_02262E20:
	add r3, r0, lr, lsl #5
	str ip, [r3, #0xc]
	str r4, [r3, #0x10]
	str ip, [r3, #0x14]
	sub r2, r4, #0x10000
	str r2, [r3, #0x18]
	str r1, [r3, #0x1c]
	str r4, [r3, #0x20]
	str r1, [r3, #0x24]
	add lr, lr, #1
	str r2, [r3, #0x28]
	cmp lr, #8
	sub r4, r4, #0x10000
	blt _02262E20
	pop {r4, pc}
	arm_func_end ov117_02262E0C

	arm_func_start ov117_02262E5C
ov117_02262E5C: @ 0x02262E5C
	push {r4, lr}
	mov lr, #0
	mov r4, lr
	mov ip, lr
	mov r1, #0x80000
_02262E70:
	add r3, r0, lr, lsl #5
	str ip, [r3, #0x10c]
	str r4, [r3, #0x110]
	str ip, [r3, #0x114]
	add r2, r4, #0x10000
	str r2, [r3, #0x118]
	str r1, [r3, #0x11c]
	str r4, [r3, #0x120]
	str r1, [r3, #0x124]
	add lr, lr, #1
	mov r4, r2
	str r2, [r3, #0x128]
	cmp lr, #8
	blt _02262E70
	pop {r4, pc}
	arm_func_end ov117_02262E5C

	arm_func_start ov117_02262EAC
ov117_02262EAC: @ 0x02262EAC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	mov sb, #0
	ldr r6, _02263164 @ =0x1FF00000
	mov sl, r0
	mov r4, sb
	add r8, sp, #2
	add r7, sp, #0
	mov fp, sb
	mov r5, sb
_02262ED4:
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #0x40
	add r1, sp, #0x44
	mov r2, #1
	bl FUN_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x10c]
	ldr r1, [r1, #0x110]
	lsl r0, r0, #8
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x40]
	mov r0, #0x22
	add r1, sp, #0x40
	mov r2, #1
	bl FUN_020B275C
	mov r0, #0x21
	add r1, sp, #0x3c
	mov r2, #1
	str r6, [sp, #0x3c]
	bl FUN_020B275C
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #0x34
	orr r2, r3, r2, lsl #16
	str r2, [sp, #0x34]
	mov r2, #2
	str r5, [sp, #0x38]
	bl FUN_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x114]
	ldr r1, [r1, #0x118]
	lsl r0, r0, #8
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x30]
	mov r0, #0x22
	add r1, sp, #0x30
	mov r2, #1
	bl FUN_020B275C
	mov r0, #0x21
	add r1, sp, #0x2c
	mov r2, #1
	str r6, [sp, #0x2c]
	bl FUN_020B275C
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #0x24
	orr r2, r3, r2, lsl #16
	str r2, [sp, #0x24]
	mov r2, #2
	str r4, [sp, #0x28]
	bl FUN_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x124]
	ldr r1, [r1, #0x128]
	lsl r0, r0, #8
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x20]
	mov r0, #0x22
	add r1, sp, #0x20
	mov r2, #1
	bl FUN_020B275C
	mov r0, #0x21
	add r1, sp, #0x1c
	mov r2, #1
	str r6, [sp, #0x1c]
	bl FUN_020B275C
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #0x14
	orr r2, r3, r2, lsl #16
	str r2, [sp, #0x14]
	mov r2, #2
	str fp, [sp, #0x18]
	bl FUN_020B275C
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	mov r2, r8
	mov r3, r7
	bl ov117_02263168
	add r1, sl, sb, lsl #5
	ldr r0, [r1, #0x11c]
	ldr r1, [r1, #0x120]
	lsl r0, r0, #8
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x10]
	mov r0, #0x22
	add r1, sp, #0x10
	mov r2, #1
	bl FUN_020B275C
	mov r0, #0x21
	add r1, sp, #0xc
	mov r2, #1
	str r6, [sp, #0xc]
	bl FUN_020B275C
	mov r0, #0
	str r0, [sp, #8]
	ldrh r3, [sp, #2]
	ldrh r2, [sp]
	mov r0, #0x23
	add r1, sp, #4
	orr r2, r3, r2, lsl #16
	str r2, [sp, #4]
	mov r2, #2
	bl FUN_020B275C
	mov r1, #0
	mov r0, #0x41
	mov r2, r1
	bl FUN_020B275C
	add sb, sb, #1
	cmp sb, #8
	blt _02262ED4
	add sp, sp, #0x48
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02263164: .4byte 0x1FF00000
	arm_func_end ov117_02262EAC

	arm_func_start ov117_02263168
ov117_02263168: @ 0x02263168
	push {r3, r4, r5, r6, r7, lr}
	asr r4, r0, #0x1f
	mov r5, r1
	lsl r1, r4, #0xc
	mov r7, r2
	mov r6, r3
	orr r1, r1, r0, lsr #20
	lsl r0, r0, #0xc
	mov r2, #0x80000
	mov r3, #0
	bl FUN_020E1D24
	asr r1, r5, #0x1f
	lsl r1, r1, #0xc
	mov r4, r0
	orr r1, r1, r5, lsr #20
	lsl r0, r5, #0xc
	mov r2, #0x80000
	mov r3, #0
	bl FUN_020E1D24
	mov r5, r0
	ldr r0, _0226326C @ =0x00007FFF
	cmp r4, r0
	ble _022631C8
	blx FUN_02022974
_022631C8:
	mov r0, #0x8000
	rsb r0, r0, #0
	cmp r4, r0
	bge _022631DC
	blx FUN_02022974
_022631DC:
	ldr r0, _0226326C @ =0x00007FFF
	cmp r5, r0
	ble _022631EC
	blx FUN_02022974
_022631EC:
	mov r0, #0x8000
	rsb r0, r0, #0
	cmp r5, r0
	bge _02263200
	blx FUN_02022974
_02263200:
	ldr r0, _0226326C @ =0x00007FFF
	sub r1, r4, #0x800
	cmp r1, r0
	ble _02263214
	blx FUN_02022974
_02263214:
	mov r0, #0x8000
	sub r1, r4, #0x800
	rsb r0, r0, #0
	cmp r1, r0
	bge _0226322C
	blx FUN_02022974
_0226322C:
	ldr r0, _0226326C @ =0x00007FFF
	add r1, r5, #0x800
	cmp r1, r0
	ble _02263240
	blx FUN_02022974
_02263240:
	mov r0, #0x8000
	add r1, r5, #0x800
	rsb r0, r0, #0
	cmp r1, r0
	bge _02263258
	blx FUN_02022974
_02263258:
	sub r0, r4, #0x800
	strh r0, [r7]
	add r0, r5, #0x800
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226326C: .4byte 0x00007FFF
	arm_func_end ov117_02263168

	arm_func_start ov117_02263270
ov117_02263270: @ 0x02263270
	push {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x238]
	cmp r1, #1
	ldrne r1, [r4, #0x218]
	cmpne r1, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldr r2, [r4, #0x270]
	ldr r3, _0226333C @ =0x02266B07
	ldr r1, _02263340 @ =0x02266B05
	ldrb lr, [r3, r2, lsl #2]
	ldr r5, [r4, #0x230]
	ldrb r3, [r1, r2, lsl #2]
	ldr ip, [r4, #0x20c]
	add r1, lr, r5, asr #12
	cmp ip, r3
	blt _022632E4
	ldr r3, _02263344 @ =0x02266B06
	ldrb r3, [r3, r2, lsl #2]
	cmp ip, r3
	bgt _022632E4
	ldr ip, [r4, #0x210]
	cmp ip, r1
	blt _022632E4
	ldr r3, _02263348 @ =0x02266B08
	ldrb r2, [r3, r2, lsl #2]
	cmp ip, r2
	ble _022632EC
_022632E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022632EC:
	mov r2, #1
	str r2, [r4, #0x238]
	ldr r2, [r4, #0x20c]
	str r2, [r4, #0x224]
	ldr r2, [r4, #0x210]
	str r2, [r4, #0x228]
	ldr r2, [r4, #0x210]
	sub r1, r2, r1
	str r1, [r4, #0x22c]
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x10]
	sub r1, r1, r2
	add r1, r1, r1, lsr #31
	add r1, r2, r1, asr #1
	rsb r1, r1, #0
	str r1, [r4, #0x230]
	bl ov117_022638AC
	str r0, [r4, #0x240]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0226333C: .4byte 0x02266B07
_02263340: .4byte 0x02266B05
_02263344: .4byte 0x02266B06
_02263348: .4byte 0x02266B08
	arm_func_end ov117_02263270

	arm_func_start ov117_0226334C
ov117_0226334C: @ 0x0226334C
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x238]
	mov r4, #0
	cmp r0, #1
	bne _022633E8
	ldr r2, [r5, #0x23c]
	ldr r1, [r5, #0x210]
	cmp r1, r2
	movlt r0, r4
	strblt r4, [r5, #0x274]
	poplt {r3, r4, r5, pc}
	strbeq r4, [r5, #0x274]
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	sub r0, r4, #1
	cmp r2, r0
	beq _022633BC
	cmp r1, r2
	ble _022633BC
	ldr r0, _02263440 @ =0x00000577
	blx FUN_020057D4
	cmp r0, #0
	bne _022633BC
	ldr r0, _02263440 @ =0x00000577
	blx FUN_02005748
	mov r0, #1
	strb r0, [r5, #0x274]
_022633BC:
	ldr r1, [r5, #0x270]
	ldr r0, _02263444 @ =0x02266B07
	ldr ip, [r5, #0x210]
	ldr r3, [r5, #0x22c]
	ldr r2, [r5, #0x230]
	ldrb r0, [r0, r1, lsl #2]
	sub r1, ip, r3
	str ip, [r5, #0x23c]
	add r0, r2, r0, lsl #12
	rsb r2, r0, r1, lsl #12
	b _022633F4
_022633E8:
	ldr r0, [r5, #0x248]
	mov r4, #1
	rsb r2, r0, #0
_022633F4:
	mov r0, r5
	mov r1, r4
	bl ov117_02263448
	cmp r0, #0
	beq _0226341C
	cmp r0, #1
	cmpne r0, #2
	bne _0226341C
	mov r0, r5
	blx ov117_02262A38
_0226341C:
	ldr r2, [r5, #0x20]
	ldr r1, [r5, #0x10]
	mov r0, #1
	sub r1, r1, r2
	add r1, r1, r1, lsr #31
	add r1, r2, r1, asr #1
	rsb r1, r1, #0
	str r1, [r5, #0x230]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02263440: .4byte 0x00000577
_02263444: .4byte 0x02266B07
	arm_func_end ov117_0226334C

	arm_func_start ov117_02263448
ov117_02263448: @ 0x02263448
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r5, [r4, #0x10]
	ldr r3, [r4, #0x20]
	rsb r6, r5, #0
	rsb r7, r3, #0
	sub r3, r6, r7
	add r3, r3, r3, lsr #31
	mov r5, r2
	mov r2, #0
	mov sb, r1
	add r8, r7, r3, asr #1
	str r2, [sp, #8]
	bl ov117_022637AC
	cmp r0, #0
	beq _022634A0
	cmp r0, #1
	beq _022634B4
	cmp r0, #2
	beq _022634E0
	b _02263508
_022634A0:
	add r1, r6, r5
	add r0, r7, r5
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	b _02263508
_022634B4:
	add r0, sp, #0x10
	str r0, [sp]
	add sl, sp, #0xc
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	str sl, [sp, #4]
	bl ov117_022637E4
	str r0, [sp, #8]
	b _02263508
_022634E0:
	add r0, sp, #0xc
	str r0, [sp]
	add sl, sp, #0x10
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	str sl, [sp, #4]
	bl ov117_022637E4
	str r0, [sp, #8]
_02263508:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	sub r0, r2, r1
	add r0, r0, r0, lsr #31
	add r5, r1, r0, asr #1
	cmp r8, r5
	cmpeq r6, r2
	cmpeq r7, r1
	addeq sp, sp, #0x14
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r5, #0
	movlt r5, #0
	cmp r2, #0
	movlt r0, #0
	strlt r0, [sp, #0x10]
	cmp r1, #0
	movlt r0, #0
	strlt r0, [sp, #0xc]
	cmp r5, #0x64000
	movgt r0, #1
	strgt r0, [sp, #8]
	ldr r0, [sp, #0x10]
	movgt r5, #0x64000
	cmp r0, #0x64000
	ble _02263580
	mov r0, #0x64000
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #8]
_02263580:
	ldr r0, [sp, #0xc]
	cmp r0, #0x64000
	ble _0226359C
	mov r0, #0x64000
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #8]
_0226359C:
	mov r0, r4
	mov r1, sb
	bl ov117_022637AC
	cmp r0, #0
	beq _022635C0
	cmp r0, #1
	beq _02263600
	cmp r0, #2
	beq _022635E0
_022635C0:
	ldr r0, [sp, #0xc]
	mov r1, #0x40000
	sub r0, r0, r5
	bl FUN_020BDA20
	add r1, r0, #0x8000
	lsl r1, r1, #0x10
	lsr fp, r1, #0x10
	b _02263624
_022635E0:
	ldr r0, [sp, #0xc]
	mov r1, #0x40000
	sub r0, r0, r5
	bl FUN_020BDA20
	add r1, r0, #0x8000
	lsl r1, r1, #0x10
	lsr fp, r1, #0x10
	b _02263624
_02263600:
	ldr r0, [sp, #0x10]
	mov r1, #0x40000
	sub r0, r0, r5
	rsb r1, r1, #0
	bl FUN_020BDA20
	mov fp, r0
	add r0, fp, #0x8000
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
_02263624:
	asr r1, fp, #4
	lsl r7, r1, #1
	add r2, r7, #1
	ldr r1, _022637A4 @ =0x020F983C
	lsl r2, r2, #1
	ldrsh r3, [r1, r2]
	asr r2, r0, #4
	lsl r6, r2, #1
	lsl r2, r3, #6
	add r2, r2, #0x40000
	str r2, [r4, #0xc]
	lsl r2, r7, #1
	ldrsh r7, [r1, r2]
	add r2, r6, #1
	lsl r2, r2, #1
	add r7, r5, r7, lsl #6
	rsb r7, r7, #0
	str r7, [r4, #0x10]
	ldrsh r7, [r1, r2]
	ldr r2, _022637A8 @ =0x92492493
	rsb r3, r5, #0x70000
	lsl r7, r7, #6
	add r7, r7, #0x40000
	lsl r6, r6, #1
	str r7, [r4, #0x1c]
	ldrsh r6, [r1, r6]
	smull r1, lr, r2, r3
	add r1, r5, r6, lsl #6
	rsb r6, r1, #0
	add lr, r3, lr
	lsr r1, r3, #0x1f
	str r6, [r4, #0x20]
	cmp r0, #0x8000
	add lr, r1, lr, asr #2
	smullls r1, r6, r2, r0
	addls r6, r0, r6
	lsrls r1, r0, #0x1f
	bls _022636D0
	rsb r1, r0, #0x10000
	rsb r3, r1, #0
	smull r1, r6, r2, r3
	add r6, r3, r6
	lsr r1, r3, #0x1f
_022636D0:
	add r6, r1, r6, asr #2
	ldr r3, _022637A4 @ =0x020F983C
	mov r7, r6
	mov r8, lr
	mov ip, #1
_022636E4:
	sub r1, fp, r7
	asr r1, r1, #4
	lsl r1, r1, #1
	add r2, r3, r1, lsl #1
	ldrsh sb, [r2, #2]
	sub r2, r0, r7
	lsl r1, r1, #1
	lsl sb, sb, #6
	add sl, sb, #0x40000
	asr r2, r2, #4
	lsl sb, r2, #1
	add r2, r4, ip, lsl #5
	str sl, [r2, #0xc]
	ldrsh r1, [r3, r1]
	lsl sl, sb, #1
	add sb, r3, sb, lsl #1
	add r1, r5, r1, lsl #6
	add r1, r8, r1
	rsb r1, r1, #0
	str r1, [r2, #0x10]
	ldrsh r1, [sb, #2]
	add r7, r7, r6
	add ip, ip, #1
	lsl r1, r1, #6
	add r1, r1, #0x40000
	str r1, [r2, #0x1c]
	ldrsh r1, [r3, sl]
	cmp ip, #7
	add r1, r5, r1, lsl #6
	add r1, r8, r1
	rsb r1, r1, #0
	str r1, [r2, #0x20]
	ldr r1, [r2, #0xc]
	add r8, r8, lr
	str r1, [r2, #-0xc]
	ldr r1, [r2, #0x10]
	str r1, [r2, #-8]
	ldr r1, [r2, #0x1c]
	str r1, [r2, #4]
	ldr r1, [r2, #0x20]
	str r1, [r2, #8]
	blt _022636E4
	ldr r0, [sp, #8]
	cmp r0, #1
	moveq r0, #2
	movne r0, #0
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022637A4: .4byte 0x020F983C
_022637A8: .4byte 0x92492493
	arm_func_end ov117_02263448

	arm_func_start ov117_022637AC
ov117_022637AC: @ 0x022637AC
	cmp r1, #1
	moveq r0, #0
	bxeq lr
	ldr r2, [r0, #0x21c]
	ldr r1, [r0, #0x224]
	sub r0, r2, #0x10
	cmp r1, r0
	movlt r0, #1
	bxlt lr
	add r0, r2, #0x10
	cmp r1, r0
	movgt r0, #2
	movle r0, #0
	bx lr
	arm_func_end ov117_022637AC

	arm_func_start ov117_022637E4
ov117_022637E4: @ 0x022637E4
	push {r4, lr}
	ldr lr, [sp, #8]
	add r4, r2, r1
	mov r0, #0
	cmp r4, #0x64000
	subgt r0, r4, #0x64000
	subgt r1, r1, r0
	movgt r0, #1
	ldr ip, [sp, #0xc]
	str r2, [lr]
	str r3, [ip]
	add r4, r2, r1
	str r4, [lr]
	cmp r3, r2
	strgt r3, [ip]
	popgt {r4, pc}
	mov r2, #0x19
	mul r2, r1, r2
	ldr lr, _02263848 @ =0x51EB851F
	lsr r1, r2, #0x1f
	smull r2, r4, lr, r2
	add r4, r1, r4, asr #5
	sub r1, r3, r4
	str r1, [ip]
	pop {r4, pc}
	.align 2, 0
_02263848: .4byte 0x51EB851F
	arm_func_end ov117_022637E4

	arm_func_start ov117_0226384C
ov117_0226384C: @ 0x0226384C
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0x20]
	ldr r1, [r0, #0x10]
	ldr r4, [r0, #0x1c]
	sub r1, r1, r5
	add r1, r1, r1, lsr #31
	ldr lr, [r0, #0xc]
	ldr ip, [r0, #0xe4]
	ldr r3, [r0, #0xd4]
	ldr r2, [r0, #0xd8]
	add r0, r5, r1, asr #1
	sub r0, r2, r0
	sub r2, r4, lr
	sub r1, ip, r3
	add r1, r2, r1
	rsb r0, r0, #0
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	adc r0, r0, #0
	lsr r1, r1, #0xc
	orr r1, r1, r0, lsl #20
	add r0, r1, r1, lsr #31
	asr r0, r0, #1
	pop {r3, r4, r5, pc}
	arm_func_end ov117_0226384C

	arm_func_start ov117_022638AC
ov117_022638AC: @ 0x022638AC
	push {r3, lr}
	bl ov117_0226384C
	mov r2, #0x64
	umull r3, r1, r0, r2
	asr r0, r0, #0x1f
	mla r1, r0, r2, r1
	mov r0, r3
	mov r3, #0
	mov r2, #0x3200000
	bl FUN_020E1D24
	pop {r3, pc}
	arm_func_end ov117_022638AC

	arm_func_start ov117_022638D8
ov117_022638D8: @ 0x022638D8
	push {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r0, #0xad
	mov r1, #0x6e
	blx FUN_02006C24
	mov r4, r0
	str r4, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	ldr r0, _022639B4 @ =0x00002715
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x8c]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	mov r1, #2
	blx FUN_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r0, _022639B8 @ =0x00002713
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r2, r4
	mov r3, #0x37
	blx FUN_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022639B8 @ =0x00002713
	mov r2, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x39
	blx FUN_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022639B8 @ =0x00002713
	mov r2, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x38
	blx FUN_0200CE54
	mov r0, r4
	blx FUN_02006CA8
	add sp, sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_022639B4: .4byte 0x00002715
_022639B8: .4byte 0x00002713
	arm_func_end ov117_022638D8

	arm_func_start ov117_022639BC
ov117_022639BC: @ 0x022639BC
	push {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	ldr r1, _022639F8 @ =0x00002713
	blx FUN_0200D070
	ldr r0, [r4, #0x28]
	ldr r1, _022639F8 @ =0x00002713
	blx FUN_0200D090
	ldr r0, [r4, #0x28]
	ldr r1, _022639F8 @ =0x00002713
	blx FUN_0200D0A0
	ldr r0, [r4, #0x28]
	ldr r1, _022639FC @ =0x00002715
	blx FUN_0200D080
	pop {r4, pc}
	.align 2, 0
_022639F8: .4byte 0x00002713
_022639FC: .4byte 0x00002715
	arm_func_end ov117_022639BC

	arm_func_start ov117_02263A00
ov117_02263A00: @ 0x02263A00
	push {r4, r5, lr}
	sub sp, sp, #0x34
	ldr lr, _02263A68 @ =0x02266B38
	mov r5, r0
	ldm lr!, {r0, r1, r2, r3}
	add ip, sp, #0
	mov r4, ip
	stm ip!, {r0, r1, r2, r3}
	ldm lr!, {r0, r1, r2, r3}
	stm ip!, {r0, r1, r2, r3}
	ldm lr!, {r0, r1, r2, r3}
	stm ip!, {r0, r1, r2, r3}
	ldr r0, [lr]
	mov r2, r4
	str r0, [ip]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	blx FUN_0200CE6C
	mov r4, r0
	mov r1, #0
	blx FUN_0200D3F4
	ldr r0, [r4]
	blx FUN_0200D324
	mov r0, r4
	add sp, sp, #0x34
	pop {r4, r5, pc}
	.align 2, 0
_02263A68: .4byte 0x02266B38
	arm_func_end ov117_02263A00

	arm_func_start ov117_02263A6C
ov117_02263A6C: @ 0x02263A6C
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0x238]
	mov r5, r1
	cmp r2, #0
	moveq r4, #0
	beq _02263A94
	mov r1, #0
	bl ov117_022637AC
	add r4, r0, #1
_02263A94:
	ldr r1, [r6, #0x270]
	ldr r0, _02263AE0 @ =0x02266B07
	ldr r3, [r6, #0x21c]
	ldrb r0, [r0, r1, lsl #2]
	ldr r2, [r6, #0x230]
	lsl r1, r3, #0x10
	add r0, r0, r2, asr #12
	lsl r2, r0, #0x10
	mov r0, r5
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #0x160000
	blx FUN_0200D500
	mov r0, r5
	mov r1, r4
	blx FUN_0200D364
	ldr r0, [r5]
	blx FUN_0200D324
	pop {r4, r5, r6, pc}
	.align 2, 0
_02263AE0: .4byte 0x02266B07
	arm_func_end ov117_02263A6C

	arm_func_start ov117_02263AE4
ov117_02263AE4: @ 0x02263AE4
	ldr ip, _02263AEC @ =FUN_0200D0F4
	bx ip
	.align 2, 0
_02263AEC: .4byte FUN_0200D0F4
	arm_func_end ov117_02263AE4

	thumb_func_start ov117_02263AF0
ov117_02263AF0: @ 0x02263AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	str r1, [sp, #0x10]
	movs r0, #0xad
	movs r1, #0x6e
	adds r5, r2, #0
	adds r4, r3, #0
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x6e
	str r1, [sp, #0xc]
	ldr r1, _02263B7C @ =0x02266BEC
	lsls r6, r5, #3
	ldrh r1, [r1, r6]
	adds r2, r7, #0
	movs r3, #7
	str r0, [sp, #0x14]
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	ldr r1, _02263B80 @ =0x02266BEE
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6e
	str r0, [sp, #0xc]
	ldrh r1, [r1, r6]
	ldr r0, [sp, #0x14]
	adds r2, r7, #0
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [sp, #0x14]
	bl FUN_02006CA8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x30
	blx FUN_020C4CF4
	ldr r0, [sp, #0x10]
	movs r1, #0xc
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _02263B84 @ =0x02266ED4
	lsls r1, r5, #2
	adds r0, r0, r2
	ldr r0, [r1, r0]
	movs r1, #1
	str r0, [r4, #0xc]
	str r5, [r4, #4]
	adds r0, r4, #0
	str r1, [r4]
	adds r0, #0x2c
	strb r1, [r0]
	ldr r2, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r4, #0
	bl ov117_02263BA4
	ldr r0, _02263B88 @ =0x000005EB
	bl FUN_02005748
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02263B7C: .4byte 0x02266BEC
_02263B80: .4byte 0x02266BEE
_02263B84: .4byte 0x02266ED4
_02263B88: .4byte 0x000005EB
	thumb_func_end ov117_02263AF0

	thumb_func_start ov117_02263B8C
ov117_02263B8C: @ 0x02263B8C
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #7
	bl FUN_02019EBC
	movs r0, #0
	str r0, [r4]
	movs r0, #1
	adds r4, #0x2d
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02263B8C

	thumb_func_start ov117_02263BA4
ov117_02263BA4: @ 0x02263BA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	cmp r0, #0
	beq _02263C86
	add r0, sp, #0xc
	str r0, [sp]
	adds r0, r2, #0
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r3, sp, #0x10
	bl ov117_02263C8C
	movs r0, #1
	ldr r1, [sp, #0x10]
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _02263BD0
	movs r7, #0
	b _02263BF0
_02263BD0:
	bge _02263BE2
	lsls r1, r1, #7
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r1, r0, #0xc
	movs r0, #0x80
	subs r7, r0, r1
	b _02263BF0
_02263BE2:
	subs r0, r1, r0
	lsls r1, r0, #7
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	rsbs r7, r0, #0
_02263BF0:
	movs r0, #1
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _02263BFE
	movs r6, #0
	b _02263C1E
_02263BFE:
	bge _02263C10
	lsls r1, r1, #7
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r1, r0, #0xc
	movs r0, #0x80
	subs r6, r0, r1
	b _02263C1E
_02263C10:
	subs r0, r1, r0
	lsls r1, r0, #7
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	rsbs r6, r0, #0
_02263C1E:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02263C28
	movs r4, #0
	b _02263C44
_02263C28:
	bl FUN_0201D2E8
	movs r1, #7
	ands r0, r1
	adds r4, r0, #1
	ldr r1, [r5, #0x28]
	movs r0, #1
	tst r0, r1
	beq _02263C3C
	rsbs r4, r4, #0
_02263C3C:
	ldr r1, [r5, #0x28]
	movs r0, #1
	eors r0, r1
	str r0, [r5, #0x28]
_02263C44:
	ldr r0, [sp, #0x10]
	blx FUN_020BCFE0
	adds r5, r0, #0
	ldr r0, [sp, #0xc]
	blx FUN_020BCFE0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	movs r1, #7
	movs r2, #3
	adds r3, r5, #0
	bl FUN_0201C6A8
	ldr r0, [sp, #4]
	ldr r3, [sp, #8]
	movs r1, #7
	movs r2, #6
	bl FUN_0201C6A8
	ldr r0, [sp, #4]
	movs r1, #7
	movs r2, #0
	subs r3, r4, r7
	bl FUN_0201C63C
	movs r3, #0x27
	ldr r0, [sp, #4]
	movs r1, #7
	movs r2, #3
	subs r3, r3, r6
	bl FUN_0201C63C
_02263C86:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov117_02263BA4

	thumb_func_start ov117_02263C8C
ov117_02263C8C: @ 0x02263C8C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r3, #0
	ldr r0, _02263CE8 @ =0x02266BF0
	lsls r3, r1, #3
	ldr r0, [r0, r3]
	adds r6, r5, #0
	muls r0, r2, r0
	movs r2, #0xc
	muls r6, r2, r6
	ldr r3, _02263CEC @ =0x02266ED4
	lsls r2, r1, #2
	adds r1, r3, r6
	ldr r1, [r2, r1]
	blx FUN_020E1F6C
	movs r1, #3
	lsls r1, r1, #8
	adds r2, r0, r1
	ldr r1, [sp, #0x10]
	str r2, [r4]
	str r2, [r1]
	movs r1, #1
	lsls r1, r1, #0xc
	cmp r2, r1
	ble _02263CE6
	movs r1, #0xd
	lsls r1, r1, #8
	subs r0, r0, r1
	ldr r2, _02263CF0 @ =0x0000119A
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	movs r3, #2
	movs r5, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r5
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	ldr r2, [r4]
	orrs r1, r0
	adds r0, r2, r1
	str r0, [r4]
_02263CE6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02263CE8: .4byte 0x02266BF0
_02263CEC: .4byte 0x02266ED4
_02263CF0: .4byte 0x0000119A
	thumb_func_end ov117_02263C8C

	thumb_func_start ov117_02263CF4
ov117_02263CF4: @ 0x02263CF4
	cmp r0, #0xa
	blt _02263CFC
	movs r0, #2
	bx lr
_02263CFC:
	cmp r0, #5
	blt _02263D04
	movs r0, #1
	bx lr
_02263D04:
	movs r0, #0
	bx lr
	thumb_func_end ov117_02263CF4

	thumb_func_start ov117_02263D08
ov117_02263D08: @ 0x02263D08
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x10]
	adds r6, r2, #0
	adds r0, r0, r6
	adds r7, r3, #0
	str r0, [r4, #0x10]
	movs r1, #6
	blx FUN_020E1F6C
	str r0, [r4, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov117_022622C4
	adds r1, r4, #0
	adds r1, #0x18
	lsls r0, r0, #2
	ldr r2, [r1, r0]
	adds r2, r2, r6
	str r2, [r1, r0]
	bl FUN_0203608C
	cmp r7, r0
	bne _02263D4E
	ldr r1, _02263D54 @ =0x00003848
	ldr r0, [r5, r1]
	adds r0, r0, r6
	str r0, [r5, r1]
	ldr r0, _02263D58 @ =0x000015A8
	ldr r1, [r5, r1]
	adds r0, r5, r0
	bl ov117_02265F98
_02263D4E:
	ldr r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02263D54: .4byte 0x00003848
_02263D58: .4byte 0x000015A8
	thumb_func_end ov117_02263D08

	thumb_func_start ov117_02263D5C
ov117_02263D5C: @ 0x02263D5C
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _02263D66
	movs r0, #0
	bx lr
_02263D66:
	ldr r2, [r0, #0x14]
	cmp r1, r2
	bge _02263D6E
	adds r2, r1, #0
_02263D6E:
	ldr r1, [r0, #0x10]
	subs r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r0, #8]
	adds r1, r1, r2
	str r1, [r0, #8]
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov117_02263D5C

	thumb_func_start ov117_02263D80
ov117_02263D80: @ 0x02263D80
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _02263DA8 @ =0x00002FCC
	adds r6, r1, #0
	ldr r0, [r5, r0]
	adds r4, r2, #0
	cmp r0, #0
	beq _02263DA4
	adds r0, r4, #0
	bl ov117_02263D5C
	ldr r2, [r5]
	adds r0, r6, #0
	adds r2, #0x30
	ldrb r2, [r2]
	adds r1, r4, #0
	bl ov117_02263BA4
_02263DA4:
	pop {r4, r5, r6, pc}
	nop
_02263DA8: .4byte 0x00002FCC
	thumb_func_end ov117_02263D80

	thumb_func_start ov117_02263DAC
ov117_02263DAC: @ 0x02263DAC
	ldr r1, _02263DBC @ =0x00001428
	ldr r3, _02263DC0 @ =FUN_020E1F6C
	adds r2, r0, r1
	ldr r1, [r2, #8]
	movs r0, #0x64
	muls r0, r1, r0
	ldr r1, [r2, #0xc]
	bx r3
	.align 2, 0
_02263DBC: .4byte 0x00001428
_02263DC0: .4byte FUN_020E1F6C
	thumb_func_end ov117_02263DAC

	thumb_func_start ov117_02263DC4
ov117_02263DC4: @ 0x02263DC4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _02263E14 @ =0x00002FDC
	adds r4, r1, #0
	movs r3, #0
	adds r2, r5, #0
_02263DD2:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02263E00
	ldr r2, _02263E14 @ =0x00002FDC
	movs r6, #0x18
	adds r2, r5, r2
	muls r6, r3, r6
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r2, r6
	bl ov117_02263E1C
	str r0, [sp]
	ldr r1, _02263E18 @ =0x00001560
	ldrb r2, [r4, #1]
	ldrb r3, [r4]
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov117_02265B58
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_02263E00:
	adds r3, r3, #1
	adds r2, #0x18
	cmp r3, #0x28
	blt _02263DD2
	bl FUN_02022974
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02263E14: .4byte 0x00002FDC
_02263E18: .4byte 0x00001560
	thumb_func_end ov117_02263DC4

	thumb_func_start ov117_02263E1C
ov117_02263E1C: @ 0x02263E1C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r2, #0
	adds r7, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	cmp r0, #0
	beq _02263E2E
	bl FUN_02022974
_02263E2E:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	blx FUN_020C4CF4
	ldrb r1, [r5]
	adds r0, r7, #0
	bl ov117_022622C4
	ldr r1, [r7]
	ldr r3, _02263EF4 @ =0x02266F10
	adds r1, #0x30
	ldrb r2, [r1]
	movs r1, #0x28
	muls r1, r2, r1
	movs r2, #0xa
	muls r2, r0, r2
	ldrb r0, [r5]
	adds r1, r3, r1
	adds r6, r1, r2
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	adds r1, r6, #0
	strh r0, [r4, #6]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	str r6, [r4, #0x14]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
	adds r0, r7, #0
	bl ov117_0226417C
	str r0, [r4, #0x10]
	bl FUN_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _02263E8E
	ldr r1, [r5, #4]
	adds r0, r7, #0
	bl ov117_02261E38
	movs r0, #0x19
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	movs r1, #0
	bl FUN_0200D3F4
_02263E8E:
	movs r0, #1
	str r0, [r4]
	add r1, sp, #0
	movs r3, #0x16
	ldr r0, [r4, #0x10]
	adds r1, #2
	add r2, sp, #0
	lsls r3, r3, #0x10
	movs r5, #0
	bl FUN_0200D5A0
	ldrb r0, [r6, #7]
	cmp r0, #3
	bhi _02263EE8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02263EB6: @ jump table
	.2byte _02263EBE - _02263EB6 - 2 @ case 0
	.2byte _02263ECA - _02263EB6 - 2 @ case 1
	.2byte _02263ED4 - _02263EB6 - 2 @ case 2
	.2byte _02263EDE - _02263EB6 - 2 @ case 3
_02263EBE:
	add r1, sp, #0
	adds r0, r5, #0
	ldrsh r1, [r1, r0]
	movs r0, #0x1c
	subs r5, r0, r1
	b _02263EE8
_02263ECA:
	add r1, sp, #0
	movs r0, #2
	ldrsh r5, [r1, r0]
	subs r5, #0xcc
	b _02263EE8
_02263ED4:
	add r1, sp, #0
	adds r0, r5, #0
	ldrsh r5, [r1, r0]
	subs r5, #0xa4
	b _02263EE8
_02263EDE:
	add r1, sp, #0
	movs r0, #2
	ldrsh r1, [r1, r0]
	movs r0, #0x34
	subs r5, r0, r1
_02263EE8:
	movs r1, #5
	lsls r0, r5, #0xc
	lsls r1, r1, #0xc
	blx FUN_020E1F6C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02263EF4: .4byte 0x02266F10
	thumb_func_end ov117_02263E1C

	thumb_func_start ov117_02263EF8
ov117_02263EF8: @ 0x02263EF8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02263F70 @ =0x00002FDC
	movs r6, #0
	adds r4, r5, r0
	adds r7, r6, #0
_02263F04:
	ldr r0, [r4]
	cmp r0, #1
	bne _02263F64
	movs r0, #0xc
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02263F2C
	movs r0, #0xc
	ldrsh r0, [r4, r0]
	subs r0, r0, #1
	strh r0, [r4, #0xc]
	movs r0, #0xc
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02263F64
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_0200D3F4
	b _02263F64
_02263F2C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov117_02263F80
	cmp r0, #1
	bne _02263F64
	ldr r0, _02263F74 @ =0x00002FCC
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02263F5C
	ldr r0, _02263F78 @ =0x00002FBC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02263F5C
	ldrb r0, [r4, #0xe]
	ldr r1, _02263F7C @ =0x00001428
	movs r3, #4
	str r0, [sp]
	ldrsh r3, [r4, r3]
	ldr r2, [r4, #8]
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov117_02263D08
_02263F5C:
	ldr r0, [r4, #0x10]
	bl FUN_0200D0F4
	str r7, [r4]
_02263F64:
	adds r6, r6, #1
	adds r4, #0x18
	cmp r6, #0x28
	blt _02263F04
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02263F70: .4byte 0x00002FDC
_02263F74: .4byte 0x00002FCC
_02263F78: .4byte 0x00002FBC
_02263F7C: .4byte 0x00001428
	thumb_func_end ov117_02263EF8

	thumb_func_start ov117_02263F80
ov117_02263F80: @ 0x02263F80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	str r0, [sp]
	add r1, sp, #4
	movs r3, #0x16
	ldr r0, [r4, #0x10]
	adds r1, #2
	add r2, sp, #4
	lsls r3, r3, #0x10
	movs r7, #0
	bl FUN_0200D5A0
	ldr r0, [r4, #0x14]
	ldrb r0, [r0, #7]
	cmp r0, #3
	bhi _02264088
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02263FAE: @ jump table
	.2byte _02263FB6 - _02263FAE - 2 @ case 0
	.2byte _02263FEC - _02263FAE - 2 @ case 1
	.2byte _02264020 - _02263FAE - 2 @ case 2
	.2byte _02264052 - _02263FAE - 2 @ case 3
_02263FB6:
	add r0, sp, #4
	adds r1, r7, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x1c
	subs r6, r0, r2
	movs r2, #5
	ldr r0, [r4, #0x10]
	lsls r2, r2, #0xc
	bl FUN_0200D5E8
	add r1, sp, #8
	movs r3, #0x16
	ldr r0, [r4, #0x10]
	adds r1, #2
	add r2, sp, #8
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r1, sp, #4
	movs r0, #4
	ldrsh r1, [r1, r0]
	movs r0, #0x1c
	subs r5, r0, r1
	cmp r1, #0x4a
	ble _02264088
	movs r7, #1
	b _02264088
_02263FEC:
	add r1, sp, #4
	movs r0, #2
	ldrsh r6, [r1, r0]
	ldr r0, [r4, #0x10]
	ldr r1, _02264170 @ =0xFFFFB000
	adds r2, r7, #0
	subs r6, #0xcc
	bl FUN_0200D5E8
	add r1, sp, #8
	movs r3, #0x16
	ldr r0, [r4, #0x10]
	adds r1, #2
	add r2, sp, #8
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r1, sp, #4
	movs r0, #6
	ldrsh r0, [r1, r0]
	adds r5, r0, #0
	subs r5, #0xcc
	cmp r0, #0x98
	bge _02264088
	movs r7, #1
	b _02264088
_02264020:
	add r0, sp, #4
	adds r1, r7, #0
	ldrsh r6, [r0, r1]
	ldr r0, [r4, #0x10]
	ldr r2, _02264170 @ =0xFFFFB000
	subs r6, #0xa4
	bl FUN_0200D5E8
	add r1, sp, #8
	movs r3, #0x16
	ldr r0, [r4, #0x10]
	adds r1, #2
	add r2, sp, #8
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r1, sp, #4
	movs r0, #4
	ldrsh r0, [r1, r0]
	adds r5, r0, #0
	subs r5, #0xa4
	cmp r0, #0x72
	bge _02264088
	movs r7, #1
	b _02264088
_02264052:
	add r1, sp, #4
	movs r0, #2
	ldrsh r1, [r1, r0]
	movs r0, #0x34
	adds r2, r7, #0
	subs r6, r0, r1
	movs r1, #5
	ldr r0, [r4, #0x10]
	lsls r1, r1, #0xc
	bl FUN_0200D5E8
	add r1, sp, #8
	movs r3, #0x16
	ldr r0, [r4, #0x10]
	adds r1, #2
	add r2, sp, #8
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r1, sp, #4
	movs r0, #6
	ldrsh r1, [r1, r0]
	movs r0, #0x34
	subs r5, r0, r1
	cmp r1, #0x68
	ble _02264088
	movs r7, #1
_02264088:
	cmp r5, #0
	blt _022640B8
	cmp r5, #0xe
	bge _022640F0
	lsls r0, r5, #0xc
	movs r1, #0xe
	blx FUN_020E1F6C
	movs r1, #1
	lsls r1, r1, #0xa
	cmp r0, r1
	bge _022640A2
	adds r0, r1, #0
_022640A2:
	blx FUN_020E17B4
	ldr r1, _02264174 @ =0x45800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, [r4, #0x10]
	adds r2, r1, #0
	bl FUN_0200D6E8
	b _022640F0
_022640B8:
	movs r0, #0xd
	mvns r0, r0
	cmp r5, r0
	ble _022640F0
	ldrb r0, [r4, #0xe]
	rsbs r1, r5, #0
	lsls r2, r0, #2
	ldr r0, _02264178 @ =0x02266BA4
	ldr r0, [r0, r2]
	muls r0, r1, r0
	movs r1, #0xe
	blx FUN_020E1F6C
	movs r1, #1
	lsls r1, r1, #0xa
	cmp r0, r1
	bge _022640DC
	adds r0, r1, #0
_022640DC:
	blx FUN_020E17B4
	ldr r1, _02264174 @ =0x45800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, [r4, #0x10]
	adds r2, r1, #0
	bl FUN_0200D6E8
_022640F0:
	bl FUN_0203608C
	movs r1, #4
	ldrsh r1, [r4, r1]
	cmp r1, r0
	bne _02264160
	cmp r6, #0
	blt _02264160
	cmp r5, #0
	bgt _02264160
	ldr r0, [sp]
	add r1, sp, #0xc
	bl ov117_022653F4
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	beq _0226411E
	cmp r0, #2
	beq _02264126
	cmp r0, #3
	beq _02264132
	b _0226413A
_0226411E:
	ldr r0, [r4, #8]
	lsls r0, r0, #1
	str r0, [r4, #8]
	b _0226413A
_02264126:
	ldr r1, [r4, #8]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r4, #8]
	b _0226413A
_02264132:
	ldr r1, [r4, #8]
	lsls r0, r1, #1
	adds r0, r1, r0
	str r0, [r4, #8]
_0226413A:
	ldrb r1, [r4, #0xe]
	ldr r0, [sp]
	bl ov117_02264EB8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _02264150
	ldr r0, [sp, #0xc]
	movs r1, #3
	bl ov117_02265428
_02264150:
	ldr r0, [sp]
	bl ov117_02264E84
	adds r1, r0, #0
	beq _02264160
	ldr r0, [sp]
	bl ov117_022666E8
_02264160:
	cmp r7, #1
	bne _0226416A
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226416A:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02264170: .4byte 0xFFFFB000
_02264174: .4byte 0x45800000
_02264178: .4byte 0x02266BA4
	thumb_func_end ov117_02263F80

	thumb_func_start ov117_0226417C
ov117_0226417C: @ 0x0226417C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	ldr r6, _022641E0 @ =0x02266CCC
	adds r2, r0, #0
	adds r5, r1, #0
	add r4, sp, #0
	movs r3, #6
_0226418A:
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	subs r3, r3, #1
	bne _0226418A
	ldr r0, [r6]
	add r1, sp, #0
	str r0, [r4]
	movs r0, #0
	ldrsh r0, [r5, r0]
	strh r0, [r1]
	movs r0, #2
	ldrsh r0, [r5, r0]
	strh r0, [r1, #2]
	ldrb r0, [r5, #6]
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x24]
	ldr r1, [r2, #0x28]
	add r2, sp, #0
	bl FUN_0200CE6C
	movs r1, #0
	movs r2, #2
	movs r3, #0x16
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	lsls r3, r3, #0x10
	adds r4, r0, #0
	bl FUN_0200D500
	ldrh r1, [r5, #4]
	adds r0, r4, #0
	bl FUN_0200D364
	adds r0, r4, #0
	movs r1, #2
	bl FUN_0200D6A4
	ldr r0, [r4]
	bl FUN_0200D324
	adds r0, r4, #0
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022641E0: .4byte 0x02266CCC
	thumb_func_end ov117_0226417C

	thumb_func_start ov117_022641E4
ov117_022641E4: @ 0x022641E4
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r7, _0226420C @ =0x00002FDC
	adds r5, r0, #0
	adds r6, r4, #0
_022641EE:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _02264200
	ldr r0, _02264210 @ =0x00002FEC
	ldr r0, [r5, r0]
	bl FUN_0200D0F4
	ldr r0, _0226420C @ =0x00002FDC
	str r6, [r5, r0]
_02264200:
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, #0x28
	blt _022641EE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226420C: .4byte 0x00002FDC
_02264210: .4byte 0x00002FEC
	thumb_func_end ov117_022641E4

	thumb_func_start ov117_02264214
ov117_02264214: @ 0x02264214
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	ldr r5, _022644F8 @ =0x02266D00
	str r2, [sp, #4]
	adds r7, r0, #0
	str r1, [sp]
	movs r4, #0
	add r3, sp, #0x34
	movs r2, #6
_02264226:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02264226
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0xc]
	b _0226434C
_02264244:
	ldr r2, [r7]
	ldr r1, [sp, #0xc]
	adds r0, r7, #0
	adds r1, r2, r1
	adds r1, #0x2c
	ldrb r1, [r1]
	bl ov117_022622C4
	adds r5, r0, #0
	ldr r0, [sp, #4]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r1, [r0, #0x18]
	movs r0, #0x24
	muls r0, r1, r0
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	adds r1, r2, r1
	blx FUN_020E1F6C
	ldr r1, [sp, #0xc]
	lsls r5, r5, #1
	lsls r2, r1, #2
	add r1, sp, #0x24
	str r0, [r1, r2]
	ldr r0, [r7]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r3, r0, #3
	ldr r0, _022644FC @ =0x02266C7C
	adds r0, r0, r3
	ldrh r0, [r5, r0]
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	adds r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [r1, r2]
	str r0, [sp, #0x20]
	b _0226433E
_02264296:
	movs r0, #0x18
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x34
	adds r5, r0, r1
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	bl FUN_0200CE6C
	adds r6, r0, #0
	beq _02264346
	movs r3, #0x16
	movs r1, #0x80
	movs r2, #0x60
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl FUN_0200D364
	ldr r0, [r6]
	bl FUN_0200D324
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x13
	subs r2, r2, r1
	movs r0, #0x13
	rors r2, r0
	movs r0, #2
	adds r1, r1, r2
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r5, #4]
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x12
	subs r2, r2, r1
	movs r0, #0x12
	rors r2, r0
	movs r0, #2
	adds r1, r1, r2
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r5, #8]
	bl FUN_0201D2E8
	movs r1, #0x5a
	lsls r1, r1, #2
	blx FUN_020E1F6C
	lsls r0, r1, #0xc
	str r0, [r5, #0xc]
	bl FUN_0201D2E8
	movs r1, #5
	lsls r1, r1, #0xe
	blx FUN_020E1F6C
	movs r0, #0xa
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r5, #0x10]
	bl FUN_0201D2E8
	movs r1, #0xf
	blx FUN_020E1F6C
	adds r1, #0x14
	strh r1, [r5, #0x14]
	adds r1, r4, #0
	movs r0, #0x18
	muls r1, r0, r1
	ldr r0, [sp]
	adds r4, r4, #1
	adds r0, r0, r1
	str r6, [r0, #4]
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_0226433E:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	blt _02264296
_02264346:
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
_0226434C:
	ldr r0, [r7]
	adds r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0226435A
	b _02264244
_0226435A:
	movs r0, #0xe
	str r0, [sp, #0x3c]
	movs r0, #0
	movs r1, #0xd9
	str r0, [sp, #0xc]
	str r0, [sp, #0x40]
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r6, r0, r1
	b _02264422
_0226436E:
	ldr r1, [sp, #0xc]
	movs r0, #0x18
	muls r0, r1, r0
	adds r4, r6, r0
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #0x34
	bl FUN_0200CE6C
	adds r5, r0, #0
	beq _02264428
	movs r3, #0x16
	movs r1, #0x80
	movs r2, #0x60
	lsls r3, r3, #0x10
	bl FUN_0200D500
	bl FUN_0201D2E8
	movs r1, #3
	blx FUN_020E1F6C
	adds r0, r5, #0
	adds r1, #0x1c
	bl FUN_0200D364
	ldr r0, [r5]
	bl FUN_0200D324
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x13
	subs r2, r2, r1
	movs r0, #0x13
	rors r2, r0
	movs r0, #2
	adds r1, r1, r2
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r4, #4]
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x12
	subs r2, r2, r1
	movs r0, #0x12
	rors r2, r0
	movs r0, #2
	adds r1, r1, r2
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r4, #8]
	bl FUN_0201D2E8
	movs r1, #0x5a
	lsls r1, r1, #2
	blx FUN_020E1F6C
	lsls r0, r1, #0xc
	str r0, [r4, #0xc]
	bl FUN_0201D2E8
	movs r1, #5
	lsls r1, r1, #0xe
	blx FUN_020E1F6C
	movs r0, #1
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x10]
	bl FUN_0201D2E8
	movs r1, #0xf
	blx FUN_020E1F6C
	adds r1, #0x14
	strh r1, [r4, #0x14]
	ldr r1, [sp, #0xc]
	movs r0, #0x18
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp]
	adds r1, r0, r2
	movs r0, #0xd9
	lsls r0, r0, #2
	str r5, [r1, r0]
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
_02264422:
	ldr r0, [sp, #0xc]
	cmp r0, #8
	blt _0226436E
_02264428:
	movs r0, #0xd
	str r0, [sp, #0x3c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	lsls r1, r0, #1
	ldr r0, _02264500 @ =0x02266B6C
	ldrh r0, [r0, r1]
	ldr r1, _02264504 @ =0x00000424
	str r0, [sp, #0x40]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	adds r6, r0, r1
	b _022644EC
_02264444:
	ldr r1, [sp, #0xc]
	movs r0, #0x18
	muls r0, r1, r0
	adds r4, r6, r0
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #0x34
	bl FUN_0200CE6C
	adds r5, r0, #0
	beq _022644F2
	movs r3, #0x16
	movs r1, #0x80
	movs r2, #0x60
	lsls r3, r3, #0x10
	bl FUN_0200D500
	adds r0, r5, #0
	movs r1, #0xb
	bl FUN_0200D364
	ldr r0, [r5]
	bl FUN_0200D324
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x13
	subs r2, r2, r1
	movs r0, #0x13
	rors r2, r0
	movs r0, #2
	adds r1, r1, r2
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r4, #4]
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x12
	subs r2, r2, r1
	movs r0, #0x12
	rors r2, r0
	movs r0, #2
	adds r1, r1, r2
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r4, #8]
	bl FUN_0201D2E8
	movs r1, #0x5a
	lsls r1, r1, #2
	blx FUN_020E1F6C
	lsls r0, r1, #0xc
	str r0, [r4, #0xc]
	bl FUN_0201D2E8
	movs r1, #5
	lsls r1, r1, #0xe
	blx FUN_020E1F6C
	movs r0, #1
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x10]
	bl FUN_0201D2E8
	movs r1, #0xf
	blx FUN_020E1F6C
	adds r1, #0x14
	strh r1, [r4, #0x14]
	ldr r1, [sp, #0xc]
	movs r0, #0x18
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp]
	adds r1, r0, r2
	ldr r0, _02264504 @ =0x00000424
	str r5, [r1, r0]
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
_022644EC:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	blt _02264444
_022644F2:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022644F8: .4byte 0x02266D00
_022644FC: .4byte 0x02266C7C
_02264500: .4byte 0x02266B6C
_02264504: .4byte 0x00000424
	thumb_func_end ov117_02264214

	thumb_func_start ov117_02264508
ov117_02264508: @ 0x02264508
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0226455C @ =0x000033A0
	movs r4, #0
	adds r5, r6, r0
_02264512:
	ldr r0, [r5]
	cmp r0, #0
	beq _0226451C
	bl FUN_0200D0F4
_0226451C:
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, #0x24
	blt _02264512
	movs r0, #0x37
	lsls r0, r0, #8
	movs r5, #0
	adds r4, r6, r0
_0226452C:
	ldr r0, [r4]
	cmp r0, #0
	beq _02264536
	bl FUN_0200D0F4
_02264536:
	adds r5, r5, #1
	adds r4, #0x18
	cmp r5, #8
	blt _0226452C
	movs r0, #0xdf
	lsls r0, r0, #6
	movs r4, #0
	adds r5, r6, r0
_02264546:
	ldr r0, [r5]
	cmp r0, #0
	beq _02264550
	bl FUN_0200D0F4
_02264550:
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, #3
	blt _02264546
	pop {r4, r5, r6, pc}
	nop
_0226455C: .4byte 0x000033A0
	thumb_func_end ov117_02264508

	thumb_func_start ov117_02264560
ov117_02264560: @ 0x02264560
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r1, _022647FC @ =0x0000339C
	movs r4, #0
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [r0]
	cmp r0, #0
	bne _02264578
	add sp, #0x34
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_02264578:
	ldr r0, [sp, #0x18]
	str r4, [sp, #0x14]
	adds r5, r0, #4
_0226457E:
	ldr r0, [r5]
	cmp r0, #0
	beq _0226463A
	movs r1, #0x14
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _02264596
	bl FUN_0200D0F4
	movs r0, #0
	str r0, [r5]
	b _0226463A
_02264596:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	adds r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	movs r0, #0xa
	lsls r0, r0, #0x10
	str r1, [r5, #4]
	cmp r1, r0
	blt _022645B0
	str r0, [r5, #4]
_022645B0:
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #4]
	bl FUN_0201D2B8
	adds r7, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	bl FUN_0201D2C4
	str r0, [sp, #0x1c]
	asrs r1, r7, #0x1f
	adds r0, r7, #0
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	adds r6, r1, #0
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r1, #0
	movs r3, #2
	adds r7, r0, #0
	ldr r1, [sp, #0x28]
	lsls r3, r3, #0xa
	adds r3, r1, r3
	ldr r1, _02264800 @ =0x00000000
	ldr r0, [r5]
	adcs r6, r1
	lsls r1, r6, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r1
	asrs r1, r3, #0xb
	lsrs r1, r1, #0x14
	adds r1, r3, r1
	asrs r1, r1, #0xc
	adds r1, #0x80
	movs r3, #2
	lsls r1, r1, #0x10
	ldr r6, _02264800 @ =0x00000000
	lsls r3, r3, #0xa
	asrs r1, r1, #0x10
	adds r3, r7, r3
	adcs r2, r6
	lsls r2, r2, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r2
	rsbs r3, r3, #0
	asrs r2, r3, #0xb
	lsrs r2, r2, #0x14
	adds r2, r3, r2
	asrs r2, r2, #0xc
	adds r2, #0x60
	lsls r2, r2, #0x10
	movs r3, #0x16
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	movs r0, #0x14
	ldrsh r0, [r5, r0]
	adds r4, r4, #1
	subs r0, r0, #1
	strh r0, [r5, #0x14]
_0226463A:
	ldr r0, [sp, #0x14]
	adds r5, #0x18
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x24
	blt _0226457E
	movs r0, #0
	str r0, [sp]
	movs r1, #0xd9
	ldr r0, [sp, #0x18]
	lsls r1, r1, #2
	adds r5, r0, r1
_02264652:
	ldr r0, [r5]
	cmp r0, #0
	beq _0226470E
	movs r1, #0x14
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _0226466A
	bl FUN_0200D0F4
	movs r0, #0
	str r0, [r5]
	b _0226470E
_0226466A:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	adds r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	movs r0, #0xa
	lsls r0, r0, #0x10
	str r1, [r5, #4]
	cmp r1, r0
	blt _02264684
	str r0, [r5, #4]
_02264684:
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #4]
	bl FUN_0201D2B8
	adds r7, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	bl FUN_0201D2C4
	str r0, [sp, #0x20]
	asrs r1, r7, #0x1f
	adds r0, r7, #0
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r6, r1, #0
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r1, #0
	movs r3, #2
	adds r7, r0, #0
	ldr r1, [sp, #0x2c]
	lsls r3, r3, #0xa
	adds r3, r1, r3
	ldr r1, _02264800 @ =0x00000000
	ldr r0, [r5]
	adcs r6, r1
	lsls r1, r6, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r1
	asrs r1, r3, #0xb
	lsrs r1, r1, #0x14
	adds r1, r3, r1
	asrs r1, r1, #0xc
	adds r1, #0x80
	movs r3, #2
	lsls r1, r1, #0x10
	ldr r6, _02264800 @ =0x00000000
	lsls r3, r3, #0xa
	asrs r1, r1, #0x10
	adds r3, r7, r3
	adcs r2, r6
	lsls r2, r2, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r2
	rsbs r3, r3, #0
	asrs r2, r3, #0xb
	lsrs r2, r2, #0x14
	adds r2, r3, r2
	asrs r2, r2, #0xc
	adds r2, #0x60
	lsls r2, r2, #0x10
	movs r3, #0x16
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	movs r0, #0x14
	ldrsh r0, [r5, r0]
	adds r4, r4, #1
	subs r0, r0, #1
	strh r0, [r5, #0x14]
_0226470E:
	ldr r0, [sp]
	adds r5, #0x18
	adds r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _02264652
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _02264804 @ =0x00000424
	ldr r0, [sp, #0x18]
	adds r5, r0, r1
_02264724:
	ldr r0, [r5]
	cmp r0, #0
	beq _022647E0
	movs r1, #0x14
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _0226473C
	bl FUN_0200D0F4
	movs r0, #0
	str r0, [r5]
	b _022647E0
_0226473C:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	adds r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	movs r0, #0xa
	lsls r0, r0, #0x10
	str r1, [r5, #4]
	cmp r1, r0
	blt _02264756
	str r0, [r5, #4]
_02264756:
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #4]
	bl FUN_0201D2B8
	adds r7, r0, #0
	ldr r0, [r5, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	bl FUN_0201D2C4
	str r0, [sp, #0x24]
	asrs r1, r7, #0x1f
	adds r0, r7, #0
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	str r0, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x24]
	adds r6, r1, #0
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r1, #0
	movs r3, #2
	adds r7, r0, #0
	ldr r1, [sp, #0x30]
	lsls r3, r3, #0xa
	adds r3, r1, r3
	ldr r1, _02264800 @ =0x00000000
	ldr r0, [r5]
	adcs r6, r1
	lsls r1, r6, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r1
	asrs r1, r3, #0xb
	lsrs r1, r1, #0x14
	adds r1, r3, r1
	asrs r1, r1, #0xc
	adds r1, #0x80
	movs r3, #2
	lsls r1, r1, #0x10
	ldr r6, _02264800 @ =0x00000000
	lsls r3, r3, #0xa
	asrs r1, r1, #0x10
	adds r3, r7, r3
	adcs r2, r6
	lsls r2, r2, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r2
	rsbs r3, r3, #0
	asrs r2, r3, #0xb
	lsrs r2, r2, #0x14
	adds r2, r3, r2
	asrs r2, r2, #0xc
	adds r2, #0x60
	lsls r2, r2, #0x10
	movs r3, #0x16
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	movs r0, #0x14
	ldrsh r0, [r5, r0]
	adds r4, r4, #1
	subs r0, r0, #1
	strh r0, [r5, #0x14]
_022647E0:
	ldr r0, [sp, #4]
	adds r5, #0x18
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #3
	blt _02264724
	cmp r4, #0
	bne _022647F6
	ldr r0, [sp, #0x18]
	movs r1, #0
	str r1, [r0]
_022647F6:
	movs r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022647FC: .4byte 0x0000339C
_02264800: .4byte 0x00000000
_02264804: .4byte 0x00000424
	thumb_func_end ov117_02264560

	thumb_func_start ov117_02264808
ov117_02264808: @ 0x02264808
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _02264870 @ =0x0000339C
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #1
	bne _0226481A
	movs r0, #0
	pop {r3, r4, r5, pc}
_0226481A:
	movs r2, #0x47
	adds r0, r4, #0
	movs r1, #0
	lsls r2, r2, #4
	blx FUN_020C4CF4
	ldr r1, _02264870 @ =0x0000339C
	ldr r2, _02264874 @ =0x00001428
	adds r0, r5, #0
	adds r1, r5, r1
	adds r2, r5, r2
	bl ov117_02264214
	ldr r1, _02264874 @ =0x00001428
	ldr r0, [r5, #0x2c]
	adds r1, r5, r1
	bl ov117_02263B8C
	adds r0, r5, #0
	bl ov117_02264A84
	movs r2, #0
	ldr r0, _02264878 @ =0x00002FCC
	adds r1, r2, #0
	str r2, [r5, r0]
	ldr r0, _0226487C @ =0x00001430
	str r2, [r5, r0]
	adds r0, #8
	str r2, [r5, r0]
	movs r0, #0x51
	lsls r0, r0, #6
_02264858:
	adds r2, r2, #1
	str r1, [r5, r0]
	adds r5, r5, #4
	cmp r2, #4
	blt _02264858
	ldr r0, _02264880 @ =0x0000057C
	bl FUN_02005748
	movs r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_02264870: .4byte 0x0000339C
_02264874: .4byte 0x00001428
_02264878: .4byte 0x00002FCC
_0226487C: .4byte 0x00001430
_02264880: .4byte 0x0000057C
	thumb_func_end ov117_02264808

	thumb_func_start ov117_02264884
ov117_02264884: @ 0x02264884
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, _022648DC @ =0x02266D34
	adds r4, r2, #0
	adds r3, r0, #0
	adds r7, r1, #0
	add r5, sp, #0
	movs r2, #6
_02264894:
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	subs r2, r2, #1
	bne _02264894
	ldr r0, [r6]
	add r2, sp, #0
	str r0, [r5]
	ldr r0, [r3, #0x24]
	ldr r1, [r3, #0x28]
	bl FUN_0200CE6C
	movs r3, #0x16
	lsls r2, r4, #4
	movs r1, #0x48
	subs r1, r1, r2
	lsls r1, r1, #0x10
	adds r5, r0, #0
	asrs r1, r1, #0x10
	movs r2, #0x20
	lsls r3, r3, #0x10
	bl FUN_0200D500
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_0200D364
	ldr r0, [r5]
	bl FUN_0200D324
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0200D390
	adds r0, r5, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022648DC: .4byte 0x02266D34
	thumb_func_end ov117_02264884

	thumb_func_start ov117_022648E0
ov117_022648E0: @ 0x022648E0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _02264910 @ =0x0000380C
	movs r4, #0
	adds r5, r7, r0
	adds r6, r4, #0
_022648EC:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r4, #0
	bl ov117_02264958
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_0200D34C
	movs r0, #1
	lsls r0, r0, #0xe
	adds r4, r4, #1
	adds r5, #0xc
	adds r6, r6, r0
	cmp r4, #5
	blt _022648EC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02264910: .4byte 0x0000380C
	thumb_func_end ov117_022648E0

	thumb_func_start ov117_02264914
ov117_02264914: @ 0x02264914
	push {r4, r5, r6, lr}
	ldr r6, _0226492C @ =0x0000380C
	adds r5, r0, #0
	movs r4, #0
_0226491C:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #5
	blt _0226491C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0226492C: .4byte 0x0000380C
	thumb_func_end ov117_02264914

	thumb_func_start ov117_02264930
ov117_02264930: @ 0x02264930
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _02264954 @ =0x0000380C
	movs r4, #0
	adds r5, r6, r0
_0226493A:
	adds r0, r5, #0
	bl ov117_0226498C
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov117_022649D8
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #5
	blt _0226493A
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_02264954: .4byte 0x0000380C
	thumb_func_end ov117_02264930

	thumb_func_start ov117_02264958
ov117_02264958: @ 0x02264958
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	adds r0, r6, #0
	bl ov117_02264A70
	strb r0, [r5, #4]
	movs r0, #1
	strb r0, [r5, #5]
	ldrb r1, [r5, #4]
	adds r0, r7, #0
	adds r2, r4, #0
	bl ov117_02264884
	str r0, [r5]
	strb r4, [r5, #6]
	strh r6, [r5, #8]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_02264958

	thumb_func_start ov117_0226498C
ov117_0226498C: @ 0x0226498C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #6]
	movs r3, #0x16
	add r2, sp, #0
	lsls r1, r0, #4
	movs r0, #0x48
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	add r1, sp, #0
	ldr r0, [r5]
	adds r1, #2
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r1, sp, #0
	movs r0, #2
	ldrsh r2, [r1, r0]
	cmp r4, r2
	ble _022649D6
	adds r2, r2, #2
	strh r2, [r1, #2]
	ldrsh r0, [r1, r0]
	cmp r0, r4
	ble _022649C2
	strh r4, [r1, #2]
_022649C2:
	add r3, sp, #0
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	movs r3, #0x16
	ldr r0, [r5]
	lsls r3, r3, #0x10
	bl FUN_0200D500
_022649D6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_0226498C

	thumb_func_start ov117_022649D8
ov117_022649D8: @ 0x022649D8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #6]
	adds r5, r0, #0
	cmp r1, #0
	bne _02264A66
	ldrb r1, [r4, #5]
	cmp r1, #1
	beq _02264A44
	cmp r1, #3
	bne _02264A66
	ldr r0, [r4]
	bl FUN_0200D3B8
	cmp r0, #0
	bne _02264A66
	movs r0, #8
	ldrsh r1, [r4, r0]
	adds r1, r1, #5
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	bl ov117_02264A70
	strb r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #5]
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	bl FUN_0200D364
	movs r1, #7
	movs r3, #0x16
	ldr r0, [r4]
	mvns r1, r1
	movs r2, #0x20
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, _02264A68 @ =0x0000380C
	movs r2, #0
	adds r3, r5, r0
	movs r1, #4
_02264A2C:
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _02264A36
	strb r1, [r3, #6]
	b _02264A3A
_02264A36:
	subs r0, r0, #1
	strb r0, [r3, #6]
_02264A3A:
	adds r2, r2, #1
	adds r3, #0xc
	cmp r2, #5
	blt _02264A2C
	pop {r3, r4, r5, pc}
_02264A44:
	bl ov117_02263DAC
	ldrb r1, [r4, #5]
	cmp r1, #1
	bne _02264A66
	cmp r0, #0x4b
	ble _02264A66
	movs r0, #2
	strb r0, [r4, #5]
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	adds r1, r1, #3
	bl FUN_0200D364
	ldr r0, _02264A6C @ =0x0000057E
	bl FUN_02005748
_02264A66:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02264A68: .4byte 0x0000380C
_02264A6C: .4byte 0x0000057E
	thumb_func_end ov117_022649D8

	thumb_func_start ov117_02264A70
ov117_02264A70: @ 0x02264A70
	cmp r0, #0xa
	blt _02264A78
	movs r0, #2
	bx lr
_02264A78:
	cmp r0, #5
	blt _02264A80
	movs r0, #1
	bx lr
_02264A80:
	movs r0, #0
	bx lr
	thumb_func_end ov117_02264A70

	thumb_func_start ov117_02264A84
ov117_02264A84: @ 0x02264A84
	push {r3, lr}
	ldr r1, _02264AAC @ =0x0000380C
	movs r2, #0
	adds r1, r0, r1
_02264A8C:
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _02264AA0
	movs r0, #3
	strb r0, [r1, #5]
	ldr r0, [r1]
	movs r1, #6
	bl FUN_0200D364
	pop {r3, pc}
_02264AA0:
	adds r2, r2, #1
	adds r1, #0xc
	cmp r2, #5
	blt _02264A8C
	pop {r3, pc}
	nop
_02264AAC: .4byte 0x0000380C
	thumb_func_end ov117_02264A84

	thumb_func_start ov117_02264AB0
ov117_02264AB0: @ 0x02264AB0
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #3
	bne _02264AEC
	movs r0, #0xc
	str r0, [sp]
	movs r1, #4
	str r1, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	movs r3, #0xd
	bl FUN_02019E2C
	movs r0, #0xc
	str r0, [sp]
	movs r1, #4
	str r1, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	movs r2, #0x14
	movs r3, #0xd
	bl FUN_02019E2C
_02264AEC:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov117_02264AB0

	thumb_func_start ov117_02264AF0
ov117_02264AF0: @ 0x02264AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r6]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _02264B50
	ldr r0, _02264BF0 @ =0x02266B72
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp]
_02264B0C:
	ldr r0, [sp, #4]
	ldr r5, [sp]
	ldrh r7, [r0]
	movs r4, #0
_02264B14:
	adds r0, r6, #0
	adds r0, #0x8c
	adds r3, r7, r4
	movs r1, #1
	lsls r3, r3, #0x10
	ldr r0, [r0]
	adds r2, r1, #0
	lsrs r3, r3, #0x10
	bl FUN_02003910
	strh r0, [r5]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #3
	blt _02264B14
	ldr r0, [sp, #4]
	adds r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r6]
	adds r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _02264B0C
_02264B50:
	bl FUN_0203608C
	ldr r3, [r6]
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x30
	ldrb r4, [r1]
	cmp r4, #0
	ble _02264B74
_02264B62:
	adds r1, r3, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02264B74
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, r4
	blt _02264B62
_02264B74:
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02003164
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #1
	bl FUN_0200316C
	ldr r1, [r6]
	adds r7, r0, #0
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r5, [r0]
	movs r4, #0
	cmp r5, #0
	ble _02264BEA
_02264B9E:
	adds r1, r1, r4
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r0, r6, #0
	bl ov117_022622C4
	lsls r1, r0, #1
	ldr r0, _02264BF4 @ =0x02266CA4
	lsls r2, r5, #3
	adds r0, r0, r2
	ldrh r2, [r1, r0]
	movs r1, #6
	adds r3, r4, #0
	muls r3, r1, r3
	add r1, sp, #0x10
	adds r1, r1, r3
	lsls r3, r2, #1
	ldr r2, [sp, #8]
	movs r0, #0
	adds r2, r2, r3
	adds r3, r7, r3
_02264BC8:
	ldrh r5, [r1]
	adds r0, r0, #1
	strh r5, [r2]
	ldrh r5, [r1]
	adds r1, r1, #2
	adds r2, r2, #2
	strh r5, [r3]
	adds r3, r3, #2
	cmp r0, #3
	blt _02264BC8
	ldr r1, [r6]
	adds r4, r4, #1
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r5, [r0]
	cmp r4, r5
	blt _02264B9E
_02264BEA:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264BF0: .4byte 0x02266B72
_02264BF4: .4byte 0x02266CA4
	thumb_func_end ov117_02264AF0

	thumb_func_start ov117_02264BF8
ov117_02264BF8: @ 0x02264BF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	ldr r1, _02264D10 @ =0x00002716
	movs r2, #2
	bl FUN_0200D05C
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r7]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _02264C6E
	ldr r0, _02264D14 @ =0x02266B8A
	str r0, [sp, #8]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	lsls r0, r0, #4
	str r0, [sp]
_02264C26:
	ldr r0, [sp, #8]
	ldr r5, [sp, #4]
	ldrh r1, [r0]
	ldr r0, [sp]
	movs r6, #0
	adds r4, r1, r0
_02264C32:
	adds r0, r7, #0
	adds r0, #0x8c
	lsls r3, r4, #0x10
	ldr r0, [r0]
	movs r1, #3
	movs r2, #1
	lsrs r3, r3, #0x10
	bl FUN_02003910
	strh r0, [r5]
	adds r6, r6, #1
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r6, #0x10
	blt _02264C32
	ldr r0, [sp, #8]
	adds r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [r7]
	adds r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, r1
	blt _02264C26
_02264C6E:
	bl FUN_0203608C
	ldr r3, [r7]
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x30
	ldrb r4, [r1]
	cmp r4, #0
	ble _02264C92
_02264C80:
	adds r1, r3, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02264C92
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, r4
	blt _02264C80
_02264C92:
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #3
	bl FUN_02003164
	str r0, [sp, #0x14]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #3
	bl FUN_0200316C
	ldr r1, [r7]
	str r0, [sp, #0x10]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r5, [r0]
	movs r4, #0
	cmp r5, #0
	ble _02264D0C
	ldr r0, [sp, #0xc]
	lsls r6, r0, #4
_02264CC0:
	adds r1, r1, r4
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r0, r7, #0
	bl ov117_022622C4
	lsls r1, r0, #1
	ldr r0, _02264D18 @ =0x02266C04
	lsls r2, r5, #3
	adds r0, r0, r2
	ldrh r0, [r1, r0]
	lsls r3, r4, #5
	add r1, sp, #0x1c
	adds r2, r6, r0
	adds r1, r1, r3
	lsls r5, r2, #1
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	movs r0, #0
	adds r2, r2, r5
	adds r3, r3, r5
_02264CEA:
	ldrh r5, [r1]
	adds r0, r0, #1
	strh r5, [r2]
	ldrh r5, [r1]
	adds r1, r1, #2
	adds r2, r2, #2
	strh r5, [r3]
	adds r3, r3, #2
	cmp r0, #0x10
	blt _02264CEA
	ldr r1, [r7]
	adds r4, r4, #1
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r5, [r0]
	cmp r4, r5
	blt _02264CC0
_02264D0C:
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02264D10: .4byte 0x00002716
_02264D14: .4byte 0x02266B8A
_02264D18: .4byte 0x02266C04
	thumb_func_end ov117_02264BF8

	thumb_func_start ov117_02264D1C
ov117_02264D1C: @ 0x02264D1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5, #0x28]
	ldr r1, _02264E08 @ =0x00002716
	movs r2, #2
	bl FUN_0200D05C
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _02264D76
	ldr r0, [sp, #4]
	ldr r7, _02264E0C @ =0x02266B82
	lsls r0, r0, #4
	add r4, sp, #0x14
	str r0, [sp]
_02264D46:
	ldrh r6, [r7]
	ldr r3, [sp]
	adds r0, r5, #0
	adds r0, #0x8c
	adds r3, r6, r3
	lsls r3, r3, #0x10
	ldr r0, [r0]
	movs r1, #3
	movs r2, #1
	lsrs r3, r3, #0x10
	bl FUN_02003910
	strh r0, [r4]
	ldr r0, [sp, #0x10]
	adds r7, r7, #2
	adds r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r4, r4, #2
	adds r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _02264D46
_02264D76:
	bl FUN_0203608C
	ldr r3, [r5]
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x30
	ldrb r4, [r1]
	cmp r4, #0
	ble _02264D9A
_02264D88:
	adds r1, r3, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02264D9A
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, r4
	blt _02264D88
_02264D9A:
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #3
	bl FUN_02003164
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #3
	bl FUN_0200316C
	ldr r1, [r5]
	str r0, [sp, #8]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r6, [r0]
	movs r4, #0
	cmp r6, #0
	ble _02264E02
	ldr r0, [sp, #4]
	lsls r7, r0, #4
_02264DC8:
	adds r1, r1, r4
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r0, r5, #0
	bl ov117_022622C4
	lsls r1, r0, #1
	ldr r0, _02264E10 @ =0x02266C54
	lsls r2, r6, #3
	adds r0, r0, r2
	ldrh r0, [r1, r0]
	lsls r1, r4, #1
	add r2, sp, #0x14
	ldrh r3, [r2, r1]
	adds r0, r7, r0
	ldr r2, [sp, #0xc]
	lsls r0, r0, #1
	strh r3, [r2, r0]
	add r2, sp, #0x14
	ldrh r2, [r2, r1]
	ldr r1, [sp, #8]
	adds r4, r4, #1
	strh r2, [r1, r0]
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r6, [r0]
	cmp r4, r6
	blt _02264DC8
_02264E02:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02264E08: .4byte 0x00002716
_02264E0C: .4byte 0x02266B82
_02264E10: .4byte 0x02266C54
	thumb_func_end ov117_02264D1C

	thumb_func_start ov117_02264E14
ov117_02264E14: @ 0x02264E14
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	bl FUN_0203608C
	strb r0, [r4]
	strh r5, [r4, #2]
	str r6, [r4, #4]
	str r6, [r4, #8]
	movs r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov117_02264E14

	thumb_func_start ov117_02264E3C
ov117_02264E3C: @ 0x02264E3C
	push {r4, r5}
	ldr r2, _02264E80 @ =0x00002FB0
	adds r4, r0, #0
	subs r0, r2, #4
	adds r3, r1, #0
	ldr r1, [r4, r2]
	ldr r0, [r4, r0]
	subs r0, r1, r0
	cmp r0, #8
	blt _02264E56
	movs r0, #0
	pop {r4, r5}
	bx lr
_02264E56:
	lsrs r5, r1, #0x1f
	lsls r1, r1, #0x1d
	subs r1, r1, r5
	movs r0, #0x1d
	rors r1, r0
	adds r0, r5, r1
	lsls r0, r0, #4
	adds r1, r4, r0
	adds r0, r2, #0
	subs r0, #0x84
	adds r5, r1, r0
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	ldr r0, [r4, r2]
	adds r0, r0, #1
	str r0, [r4, r2]
	movs r0, #1
	pop {r4, r5}
	bx lr
	.align 2, 0
_02264E80: .4byte 0x00002FB0
	thumb_func_end ov117_02264E3C

	thumb_func_start ov117_02264E84
ov117_02264E84: @ 0x02264E84
	push {r3, r4}
	ldr r1, _02264EB4 @ =0x00002FAC
	adds r2, r1, #4
	ldr r4, [r0, r1]
	ldr r2, [r0, r2]
	cmp r4, r2
	blt _02264E98
	movs r0, #0
	pop {r3, r4}
	bx lr
_02264E98:
	adds r2, r4, #1
	str r2, [r0, r1]
	subs r1, #0x80
	adds r3, r0, r1
	lsrs r2, r4, #0x1f
	lsls r1, r4, #0x1d
	subs r1, r1, r2
	movs r0, #0x1d
	rors r1, r0
	adds r0, r2, r1
	lsls r0, r0, #4
	adds r0, r3, r0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02264EB4: .4byte 0x00002FAC
	thumb_func_end ov117_02264E84

	thumb_func_start ov117_02264EB8
ov117_02264EB8: @ 0x02264EB8
	push {r3, r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _02264FA4 @ =0x00002FB0
	adds r7, r1, #0
	ldr r5, [r2, r0]
	subs r0, r0, #4
	ldr r0, [r2, r0]
	movs r4, #0
	cmp r0, r5
	beq _02264ED0
	cmp r7, #0
	bne _02264ED4
_02264ED0:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264ED4:
	lsrs r3, r0, #0x1f
	lsls r1, r0, #0x1d
	subs r1, r1, r3
	movs r0, #0x1d
	rors r1, r0
	adds r1, r3, r1
	lsrs r3, r5, #0x1f
	lsls r5, r5, #0x1d
	subs r5, r5, r3
	rors r5, r0
	adds r0, r3, r5
	cmp r1, r0
	bge _02264F12
	cmp r1, r0
	bge _02264F5A
	lsls r3, r1, #4
	adds r6, r2, r3
	ldr r3, _02264FA8 @ =0x00002F38
_02264EF8:
	ldrb r5, [r6, r3]
	cmp r5, #0
	bne _02264F08
	ldr r0, _02264FAC @ =0x00002F2C
	adds r2, r2, r0
	lsls r0, r1, #4
	adds r4, r2, r0
	b _02264F5A
_02264F08:
	adds r1, r1, #1
	adds r6, #0x10
	cmp r1, r0
	blt _02264EF8
	b _02264F5A
_02264F12:
	cmp r1, #8
	bge _02264F34
	lsls r3, r1, #4
	adds r6, r2, r3
	ldr r3, _02264FA8 @ =0x00002F38
_02264F1C:
	ldrb r5, [r6, r3]
	cmp r5, #0
	bne _02264F2C
	ldr r3, _02264FAC @ =0x00002F2C
	lsls r1, r1, #4
	adds r3, r2, r3
	adds r4, r3, r1
	b _02264F34
_02264F2C:
	adds r1, r1, #1
	adds r6, #0x10
	cmp r1, #8
	blt _02264F1C
_02264F34:
	cmp r4, #0
	bne _02264F5A
	movs r6, #0
	cmp r0, #0
	ble _02264F5A
	ldr r1, _02264FA8 @ =0x00002F38
	adds r5, r2, #0
_02264F42:
	ldrb r3, [r5, r1]
	cmp r3, #0
	bne _02264F52
	ldr r0, _02264FAC @ =0x00002F2C
	adds r1, r2, r0
	lsls r0, r6, #4
	adds r4, r1, r0
	b _02264F5A
_02264F52:
	adds r6, r6, #1
	adds r5, #0x10
	cmp r6, r0
	blt _02264F42
_02264F5A:
	cmp r4, #0
	bne _02264F66
	bl FUN_02022974
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264F66:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02264F70
	bl FUN_02022974
_02264F70:
	movs r0, #1
	strb r7, [r4, #1]
	strb r0, [r4, #0xc]
	cmp r7, #1
	beq _02264F84
	cmp r7, #2
	beq _02264F8C
	cmp r7, #3
	beq _02264F98
	b _02264FA0
_02264F84:
	ldr r0, [r4, #4]
	lsls r0, r0, #1
	str r0, [r4, #8]
	b _02264FA0
_02264F8C:
	ldr r1, [r4, #4]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r4, #8]
	b _02264FA0
_02264F98:
	ldr r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r1, r0
	str r0, [r4, #8]
_02264FA0:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02264FA4: .4byte 0x00002FB0
_02264FA8: .4byte 0x00002F38
_02264FAC: .4byte 0x00002F2C
	thumb_func_end ov117_02264EB8

	thumb_func_start ov117_02264FB0
ov117_02264FB0: @ 0x02264FB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, _02265044 @ =0x02266D68
	adds r7, r0, #0
	str r1, [sp]
	add r3, sp, #4
	movs r2, #6
_02264FBE:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02264FBE
	ldr r0, [r4]
	ldr r4, [sp]
	ldr r5, _02265048 @ =0x02266BB4
	str r0, [r3]
	movs r6, #0
_02264FD0:
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	add r2, sp, #4
	bl FUN_0200CE6C
	movs r3, #0x16
	str r0, [r4]
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	lsls r3, r3, #0x10
	bl FUN_0200D500
	lsrs r1, r6, #0x1f
	adds r1, r6, r1
	asrs r1, r1, #1
	ldr r0, [r4]
	adds r1, #0x1f
	bl FUN_0200D364
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0200D324
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #4
	blt _02264FD0
	ldr r0, [r7]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _0226501E
	cmp r0, #3
	beq _02265036
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_0226501E:
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #8]
	bl FUN_0200D3F4
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	bl FUN_0200D3F4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_02265036:
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #4]
	bl FUN_0200D3F4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02265044: .4byte 0x02266D68
_02265048: .4byte 0x02266BB4
	thumb_func_end ov117_02264FB0

	thumb_func_start ov117_0226504C
ov117_0226504C: @ 0x0226504C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r4, #0
_02265052:
	ldr r0, [r5]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02265052
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_0226504C

	thumb_func_start ov117_02265064
ov117_02265064: @ 0x02265064
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r4, _022651CC @ =0x02266D9C
	adds r5, r0, #0
	str r1, [sp]
	add r3, sp, #0xc
	movs r2, #6
_02265072:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02265072
	ldr r0, [r4]
	ldr r4, [sp]
	str r0, [r3]
	movs r0, #0
	ldr r7, _022651D0 @ =0x02266B7A
	str r0, [sp, #8]
_02265086:
	ldr r0, [sp]
	adds r0, #0xe4
	ldr r1, [r0]
	ldr r0, [r4, #0xc]
	adds r0, r1, r0
	bl FUN_0201D2B8
	asrs r1, r0, #0x1f
	movs r2, #0x4c
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	lsls r2, r2, #0xa
	adds r2, r0, r2
	ldr r0, _022651D4 @ =0x00000000
	adcs r1, r0
	lsls r0, r1, #0x14
	lsrs r6, r2, #0xc
	orrs r6, r0
	ldr r0, [sp]
	adds r6, #0x80
	adds r0, #0xe4
	ldr r1, [r0]
	ldr r0, [r4, #0xc]
	adds r0, r1, r0
	bl FUN_0201D2C4
	asrs r1, r0, #0x1f
	movs r2, #0x44
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	lsls r2, r2, #0xa
	adds r0, r0, r2
	ldr r2, _022651D4 @ =0x00000000
	adcs r1, r2
	lsrs r2, r0, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	movs r0, #0x62
	subs r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, sp, #0xc
	bl FUN_0200CE6C
	ldr r2, [sp, #4]
	lsls r1, r6, #0x10
	subs r2, #0x18
	lsls r2, r2, #0x10
	movs r3, #0x16
	str r0, [r4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldrh r1, [r7, #2]
	ldr r0, [r4]
	bl FUN_0200D364
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0200D324
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _022651D8 @ =0x02266DD0
	bl FUN_0200CE6C
	movs r1, #0
	movs r3, #0x16
	adds r2, r1, #0
	lsls r3, r3, #0x10
	str r0, [r4, #4]
	bl FUN_0200D500
	ldr r0, [r4, #4]
	movs r1, #0x21
	bl FUN_0200D364
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl FUN_0200D324
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _022651DC @ =0x02266E04
	bl FUN_0200CE6C
	ldr r2, [sp, #4]
	lsls r1, r6, #0x10
	lsls r2, r2, #0x10
	movs r3, #0x16
	str r0, [r4, #8]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_0200D810
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_0200D6A4
	movs r1, #0xfe
	lsls r1, r1, #0x16
	ldr r0, [r4, #8]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldr r1, [sp, #8]
	ldr r0, [r4, #8]
	adds r1, #0x22
	bl FUN_0200D364
	ldr r0, [r4, #8]
	ldr r0, [r0]
	bl FUN_0200D324
	ldr r0, [r4, #8]
	movs r1, #0
	bl FUN_0200D3F4
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x30
	bl ov117_02266344
	ldr r0, [sp, #8]
	adds r4, #0x4c
	adds r0, r0, #1
	adds r7, r7, #2
	str r0, [sp, #8]
	cmp r0, #3
	bge _022651B4
	b _02265086
_022651B4:
	ldr r0, [sp]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_0200D3F4
	ldr r0, [sp]
	movs r1, #1
	ldr r0, [r0, #8]
	bl FUN_0200D3F4
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022651CC: .4byte 0x02266D9C
_022651D0: .4byte 0x02266B7A
_022651D4: .4byte 0x00000000
_022651D8: .4byte 0x02266DD0
_022651DC: .4byte 0x02266E04
	thumb_func_end ov117_02265064

	thumb_func_start ov117_022651E0
ov117_022651E0: @ 0x022651E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
_022651E8:
	ldr r0, [r5]
	bl FUN_0200D0F4
	ldr r0, [r5, #4]
	bl FUN_0200D0F4
	ldr r0, [r5, #8]
	bl FUN_0200D0F4
	adds r1, r5, #0
	adds r0, r6, #0
	adds r1, #0x30
	bl ov117_02266384
	adds r4, r4, #1
	adds r5, #0x4c
	cmp r4, #3
	blt _022651E8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov117_022651E0

	thumb_func_start ov117_02265210
ov117_02265210: @ 0x02265210
	push {r4, lr}
	adds r4, r1, #0
	adds r1, #0xf4
	ldrb r1, [r1]
	movs r0, #0x1e
	lsls r0, r0, #0xc
	lsls r2, r1, #2
	ldr r1, _02265250 @ =0x02266BC4
	ldrb r1, [r1, r2]
	blx FUN_020E1F6C
	adds r1, r4, #0
	adds r1, #0xe8
	str r0, [r1]
	movs r1, #0
	adds r2, r1, #0
	adds r3, r4, #0
_02265232:
	lsls r0, r2, #0xc
	str r0, [r3, #0xc]
	adds r1, r1, #1
	strb r1, [r3, #0x14]
	adds r2, #0x5a
	adds r3, #0x4c
	cmp r1, #3
	blt _02265232
	movs r0, #2
	strb r0, [r4, #0x10]
	movs r0, #1
	adds r4, #0xf1
	strb r0, [r4]
	pop {r4, pc}
	nop
_02265250: .4byte 0x02266BC4
	thumb_func_end ov117_02265210

	thumb_func_start ov117_02265254
ov117_02265254: @ 0x02265254
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	adds r0, r4, #0
	adds r0, #0xf1
	ldrb r0, [r0]
	movs r5, #0
	cmp r0, #1
	bne _02265268
	b _022653E8
_02265268:
	adds r0, r4, #0
	adds r0, #0xec
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xec
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	bne _022652F4
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xe4
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf3
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xf3
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0xf4
	ldrb r1, [r1]
	adds r0, r4, #0
	adds r0, #0xf3
	lsls r2, r1, #2
	ldr r1, _022653EC @ =0x02266BC4
	ldrb r0, [r0]
	ldrb r1, [r1, r2]
	cmp r0, r1
	blo _02265356
	adds r0, r4, #0
	adds r0, #0xf3
	strb r5, [r0]
	adds r0, r4, #0
	adds r0, #0xf0
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xf0
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf0
	ldrb r1, [r0]
	movs r0, #0x1e
	lsls r0, r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0xe4
	str r2, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	ldrb r0, [r0]
	lsls r1, r0, #2
	ldr r0, _022653F0 @ =0x02266BC5
	ldrb r1, [r0, r1]
	adds r0, r4, #0
	adds r0, #0xf2
	strb r1, [r0]
	b _02265356
_022652F4:
	adds r0, r4, #0
	adds r0, #0xf2
	ldrb r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xf2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	bne _02265356
	adds r0, r4, #0
	adds r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0xc
	blo _02265356
	adds r0, r4, #0
	adds r0, #0xf0
	strb r5, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xf4
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	ldrb r0, [r0]
	cmp r0, #5
	blo _0226533C
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0xf4
	strb r1, [r0]
_0226533C:
	adds r1, r4, #0
	adds r1, #0xf4
	ldrb r1, [r1]
	movs r0, #0x1e
	lsls r0, r0, #0xc
	lsls r2, r1, #2
	ldr r1, _022653EC @ =0x02266BC4
	ldrb r1, [r1, r2]
	blx FUN_020E1F6C
	adds r1, r4, #0
	adds r1, #0xe8
	str r0, [r1]
_02265356:
	adds r0, r4, #0
	adds r0, #0xf4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02265392
	ldr r1, _022653EC @ =0x02266BC4
	movs r0, #0
	movs r7, #0xc
_02265366:
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	adds r0, r0, #1
	adds r1, r1, #4
	adds r2, r3, r2
	adds r3, r2, #0
	muls r3, r7, r3
	adds r5, r5, r3
	cmp r0, #2
	blt _02265366
	adds r0, r4, #0
	adds r0, #0xec
	ldr r0, [r0]
	subs r5, #0xf
	cmp r5, r0
	bne _022653C6
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #1
	bl ov117_02265428
	b _022653C6
_02265392:
	cmp r0, #2
	bne _022653C6
	ldr r0, _022653EC @ =0x02266BC4
	movs r1, #0
	movs r7, #0xc
_0226539C:
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	adds r1, r1, #1
	adds r0, r0, #4
	adds r2, r3, r2
	adds r3, r2, #0
	muls r3, r7, r3
	adds r5, r5, r3
	cmp r1, #3
	blt _0226539C
	adds r0, r4, #0
	adds r0, #0xec
	ldr r0, [r0]
	subs r5, #0xf
	cmp r5, r0
	bne _022653C6
	adds r0, r4, #0
	adds r0, #0x98
	movs r1, #1
	bl ov117_02265428
_022653C6:
	movs r7, #0
	adds r5, r4, #0
_022653CA:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov117_02265438
	adds r2, r5, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, #0x30
	bl ov117_02266440
	adds r7, r7, #1
	adds r5, #0x4c
	cmp r7, #3
	blt _022653CA
_022653E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022653EC: .4byte 0x02266BC4
_022653F0: .4byte 0x02266BC5
	thumb_func_end ov117_02265254

	thumb_func_start ov117_022653F4
ov117_022653F4: @ 0x022653F4
	push {r3, r4}
	ldr r2, _02265424 @ =0x00001468
	movs r3, #0
	adds r2, r0, r2
	adds r4, r2, #0
_022653FE:
	ldrb r0, [r4, #0x15]
	cmp r0, #1
	bne _02265412
	movs r0, #0x4c
	muls r0, r3, r0
	adds r0, r2, r0
	str r0, [r1]
	ldrb r0, [r0, #0x14]
	pop {r3, r4}
	bx lr
_02265412:
	adds r3, r3, #1
	adds r4, #0x4c
	cmp r3, #3
	blt _022653FE
	movs r0, #0
	str r0, [r1]
	pop {r3, r4}
	bx lr
	nop
_02265424: .4byte 0x00001468
	thumb_func_end ov117_022653F4

	thumb_func_start ov117_02265428
ov117_02265428: @ 0x02265428
	strb r1, [r0, #0x10]
	movs r1, #0
	strb r1, [r0, #0x11]
	strb r1, [r0, #0x12]
	str r1, [r0, #0x18]
	strb r1, [r0, #0x15]
	bx lr
	.align 2, 0
	thumb_func_end ov117_02265428

	thumb_func_start ov117_02265438
ov117_02265438: @ 0x02265438
	push {r4, lr}
	ldrb r3, [r2, #0x10]
	lsls r4, r3, #2
	ldr r3, _02265448 @ =0x02266B94
	ldr r3, [r3, r4]
	blx r3
	pop {r4, pc}
	nop
_02265448: .4byte 0x02266B94
	thumb_func_end ov117_02265438

	thumb_func_start ov117_0226544C
ov117_0226544C: @ 0x0226544C
	movs r0, #0
	strb r0, [r2, #0x15]
	movs r0, #1
	bx lr
	thumb_func_end ov117_0226544C

	thumb_func_start ov117_02265454
ov117_02265454: @ 0x02265454
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	movs r0, #0x1c
	ldrsh r0, [r5, r0]
	add r1, sp, #0
	strh r0, [r1, #2]
	movs r0, #0x1e
	ldrsh r0, [r5, r0]
	strh r0, [r1]
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _02265474
	cmp r0, #1
	beq _022654A8
	b _02265632
_02265474:
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_0200D3F4
	add r1, sp, #0
	movs r3, #0x16
	ldr r0, [r5]
	adds r1, #2
	add r2, sp, #0
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r1, sp, #0
	movs r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r5, #0x1c]
	movs r0, #0
	ldrsh r0, [r1, r0]
	strh r0, [r5, #0x1e]
	ldrb r0, [r5, #0x11]
	adds r0, r0, #1
	strb r0, [r5, #0x11]
_022654A8:
	movs r1, #0x5a
	ldr r2, [r5, #0xc]
	lsls r1, r1, #0xc
	cmp r2, r1
	bgt _022654BA
	bge _022654EC
	cmp r2, #0
	beq _022654CC
	b _02265554
_022654BA:
	lsls r0, r1, #1
	cmp r2, r0
	bgt _022654C4
	beq _02265514
	b _02265554
_022654C4:
	ldr r0, _0226563C @ =0x0010E000
	cmp r2, r0
	beq _02265534
	b _02265554
_022654CC:
	movs r0, #0x1e
	ldrsh r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	adds r0, #0x20
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	movs r1, #0xf
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	subs r1, #0x20
	add r0, sp, #0
	strh r1, [r0]
	b _02265558
_022654EC:
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	movs r0, #0x12
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	ldrb r1, [r5, #0x12]
	asrs r0, r0, #0x10
	muls r0, r1, r0
	movs r1, #0xf
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x12
	lsls r0, r0, #4
	adds r1, r1, r0
	add r0, sp, #0
	strh r1, [r0, #2]
	b _02265558
_02265514:
	movs r0, #0x1e
	ldrsh r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	subs r0, #0xe4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	movs r1, #0xf
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r1, #0xe4
	add r0, sp, #0
	strh r1, [r0]
	b _02265558
_02265534:
	movs r0, #0x1c
	ldrsh r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	adds r0, #0x20
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	movs r1, #0xf
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	subs r1, #0x20
	add r0, sp, #0
	strh r1, [r0, #2]
	b _02265558
_02265554:
	bl FUN_02022974
_02265558:
	ldrb r1, [r5, #0x12]
	cmp r1, #0xf
	blo _022655A0
	movs r1, #0x1c
	movs r2, #0x1e
	movs r3, #0x16
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r5]
	lsls r3, r3, #0x10
	bl FUN_0200D500
	movs r2, #0x1e
	ldrsh r2, [r5, r2]
	movs r1, #0x1c
	movs r3, #0x16
	adds r2, #0x18
	lsls r2, r2, #0x10
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #8]
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	adds r0, r5, #0
	movs r1, #2
	bl ov117_02265428
	adds r1, r5, #0
	adds r5, #0x30
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov117_0226639C
	movs r0, #1
	pop {r3, r4, r5, pc}
_022655A0:
	movs r0, #0xb4
	muls r0, r1, r0
	lsls r0, r0, #0xc
	movs r1, #0xf
	blx FUN_020E1F6C
	bl FUN_0201D2B8
	movs r2, #6
	asrs r1, r0, #0x1f
	lsls r2, r2, #0xe
	movs r3, #0
	blx FUN_020E1F1C
	movs r3, #2
	movs r2, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r2
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	rsbs r1, r1, #0
	asrs r0, r1, #0xb
	add r3, sp, #0
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r4, r0, #0xc
	ldrsh r2, [r3, r2]
	movs r1, #2
	ldrsh r1, [r3, r1]
	adds r2, r2, r4
	lsls r2, r2, #0x10
	movs r3, #0x16
	ldr r0, [r5]
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	add r3, sp, #0
	movs r2, #0
	ldrsh r2, [r3, r2]
	movs r1, #2
	ldrsh r1, [r3, r1]
	adds r2, #0x18
	lsls r2, r2, #0x10
	movs r3, #0x16
	ldr r0, [r5, #8]
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	rsbs r0, r4, #0
	movs r1, #3
	blx FUN_020E1F6C
	lsls r0, r0, #0xc
	movs r1, #0x18
	blx FUN_020E1F6C
	movs r1, #1
	lsls r1, r1, #0xc
	subs r0, r1, r0
	blx FUN_020E17B4
	ldr r1, _02265640 @ =0x45800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, [r5, #8]
	adds r2, r1, #0
	bl FUN_0200D6E8
_02265632:
	ldrb r0, [r5, #0x12]
	adds r0, r0, #1
	strb r0, [r5, #0x12]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0226563C: .4byte 0x0010E000
_02265640: .4byte 0x45800000
	thumb_func_end ov117_02265454

	thumb_func_start ov117_02265644
ov117_02265644: @ 0x02265644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xf3
	ldrb r0, [r0]
	adds r4, r2, #0
	cmp r0, #0
	beq _02265674
	adds r1, #0xf4
	ldrb r1, [r1]
	movs r0, #0xb
	lsls r0, r0, #0xe
	lsls r2, r1, #2
	ldr r1, _022657BC @ =0x02266BC4
	ldrb r1, [r1, r2]
	blx FUN_020E1F6C
	adds r1, r0, #0
	ldr r0, [r4]
	bl FUN_0200D34C
	b _0226567C
_02265674:
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D3CC
_0226567C:
	adds r0, r5, #0
	adds r0, #0xf3
	ldrb r1, [r0]
	movs r0, #0xb4
	muls r0, r1, r0
	adds r1, r5, #0
	adds r1, #0xf4
	ldrb r1, [r1]
	lsls r0, r0, #0xc
	lsls r2, r1, #2
	ldr r1, _022657BC @ =0x02266BC4
	ldrb r1, [r1, r2]
	blx FUN_020E1F6C
	bl FUN_0201D2B8
	movs r2, #3
	asrs r1, r0, #0x1f
	lsls r2, r2, #0xe
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	rsbs r1, r1, #0
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r7, r0, #0xc
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r1, [r0]
	ldr r0, [r4, #0xc]
	adds r0, r1, r0
	bl FUN_0201D2B8
	asrs r1, r0, #0x1f
	movs r2, #0x4c
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r6, r2, #0xc
	orrs r6, r0
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r1, [r0]
	ldr r0, [r4, #0xc]
	adds r6, #0x80
	adds r0, r1, r0
	bl FUN_0201D2C4
	asrs r1, r0, #0x1f
	movs r2, #0x44
	movs r3, #0
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	lsrs r2, r0, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	movs r0, #0x62
	subs r0, r0, r2
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	lsls r1, r6, #0x10
	subs r2, #0x18
	adds r2, r2, r7
	lsls r2, r2, #0x10
	movs r3, #0x16
	ldr r0, [r4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r2, [sp, #4]
	lsls r1, r6, #0x10
	lsls r2, r2, #0x10
	movs r3, #0x16
	ldr r0, [r4, #8]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	rsbs r0, r7, #0
	movs r1, #3
	blx FUN_020E1F6C
	lsls r0, r0, #0xc
	movs r1, #0xc
	blx FUN_020E1F6C
	movs r1, #1
	lsls r1, r1, #0xc
	subs r0, r1, r0
	blx FUN_020E17B4
	ldr r1, _022657C0 @ =0x45800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, [r4, #8]
	adds r2, r1, #0
	bl FUN_0200D6E8
	adds r1, r5, #0
	adds r1, #0xf4
	ldrb r1, [r1]
	adds r0, r5, #0
	adds r0, #0xf3
	lsls r2, r1, #2
	ldr r1, _022657BC @ =0x02266BC4
	ldrb r0, [r0]
	ldrb r1, [r1, r2]
	subs r1, r1, #1
	cmp r0, r1
	bne _02265796
	adds r2, r4, #0
	ldr r0, [sp]
	adds r1, r4, #0
	adds r2, #0x30
	bl ov117_0226639C
_02265796:
	adds r5, #0xe4
	ldr r1, [r5]
	ldr r0, [r4, #0xc]
	adds r0, r1, r0
	movs r1, #0x5a
	asrs r0, r0, #0xc
	lsls r1, r1, #2
	blx FUN_020E1F6C
	cmp r1, #0xb4
	bne _022657B0
	movs r0, #1
	b _022657B2
_022657B0:
	movs r0, #0
_022657B2:
	strb r0, [r4, #0x15]
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022657BC: .4byte 0x02266BC4
_022657C0: .4byte 0x45800000
	thumb_func_end ov117_02265644

	thumb_func_start ov117_022657C4
ov117_022657C4: @ 0x022657C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r2, #0
	ldrb r0, [r4, #0x11]
	adds r5, r1, #0
	cmp r0, #3
	bls _022657D4
	b _02265AA2
_022657D4:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022657E0: @ jump table
	.2byte _022657E8 - _022657E0 - 2 @ case 0
	.2byte _0226585A - _022657E0 - 2 @ case 1
	.2byte _022658AE - _022657E0 - 2 @ case 2
	.2byte _022659CA - _022657E0 - 2 @ case 3
_022657E8:
	ldr r0, _02265AA8 @ =0x0000057B
	bl FUN_02005748
	add r1, sp, #8
	movs r3, #0x16
	ldr r0, [r4]
	adds r1, #2
	add r2, sp, #8
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r3, sp, #4
	movs r2, #4
	ldrsh r2, [r3, r2]
	movs r1, #6
	ldrsh r1, [r3, r1]
	subs r2, #0x20
	lsls r2, r2, #0x10
	movs r3, #0x16
	ldr r0, [r4, #4]
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, [r4, #4]
	movs r1, #0x21
	bl FUN_0200D364
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0200D3F4
	ldrb r1, [r4, #0x14]
	ldr r0, [r4]
	lsls r2, r1, #1
	ldr r1, _02265AAC @ =0x02266B7A
	ldrh r1, [r1, r2]
	adds r1, r1, #2
	bl FUN_0200D364
	adds r0, r5, #0
	adds r0, #0xf4
	ldrb r0, [r0]
	ldr r1, _02265AB0 @ =0x02266BC6
	adds r5, #0xf4
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	strb r0, [r4, #0x12]
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	lsrs r0, r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	b _02265AA2
_0226585A:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x13]
	cmp r1, r0
	bne _02265884
	ldrb r1, [r4, #0x14]
	ldr r0, [r4]
	lsls r2, r1, #1
	ldr r1, _02265AAC @ =0x02266B7A
	ldrh r1, [r1, r2]
	adds r1, r1, #1
	bl FUN_0200D364
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_0200D3F4
	movs r1, #1
	ldr r0, [r4, #4]
	lsls r1, r1, #0xe
	bl FUN_0200D34C
_02265884:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _022658A8
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_0200D3F4
	ldrb r1, [r4, #0x14]
	ldr r0, [r4]
	lsls r2, r1, #1
	ldr r1, _02265AAC @ =0x02266B7A
	ldrh r1, [r1, r2]
	bl FUN_0200D364
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	b _02265AA2
_022658A8:
	subs r0, r0, #1
	strb r0, [r4, #0x12]
	b _02265AA2
_022658AE:
	adds r0, r5, #0
	adds r0, #0xf2
	ldrb r0, [r0]
	movs r2, #0
	cmp r0, #0
	bne _022658E0
	adds r0, r5, #0
	adds r0, #0xf4
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0xf3
	lsls r1, r0, #2
	ldr r0, _02265AB4 @ =0x02266BC4
	ldrb r3, [r3]
	ldrb r0, [r0, r1]
	adds r5, #0xf0
	subs r3, r0, r3
	adds r3, r2, r3
	ldr r2, _02265AB8 @ =0x02266BC5
	ldrb r1, [r2, r1]
	adds r1, r3, r1
	adds r6, r1, r0
	ldrb r0, [r5]
	adds r5, r0, #2
	b _0226590C
_022658E0:
	adds r1, r2, r0
	adds r0, r5, #0
	adds r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0xc
	blo _022658FE
	adds r5, #0xf4
	ldrb r0, [r5]
	movs r5, #1
	adds r0, r0, #1
	lsls r2, r0, #2
	ldr r0, _02265AB4 @ =0x02266BC4
	ldrb r0, [r0, r2]
	adds r6, r1, r0
	b _0226590C
_022658FE:
	adds r5, #0xf4
	ldrb r2, [r5]
	adds r5, r0, #1
	lsls r3, r2, #2
	ldr r2, _02265AB4 @ =0x02266BC4
	ldrb r2, [r2, r3]
	adds r6, r1, r2
_0226590C:
	movs r1, #0x1e
	ldr r0, [r4, #0xc]
	lsls r1, r1, #0xc
	blx FUN_020E1F6C
	adds r0, r5, r0
	movs r1, #0xc
	blx FUN_020E1F6C
	adds r5, r1, #0
	movs r0, #0x1e
	lsls r0, r0, #0xc
	adds r7, r5, #0
	muls r7, r0, r7
	adds r0, r7, #0
	bl FUN_0201D2B8
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_0201D2C4
	str r0, [sp]
	add r1, sp, #4
	movs r3, #0x16
	ldr r0, [r4]
	adds r1, #2
	add r2, sp, #4
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r1, sp, #4
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r2, #0x4c
	adds r0, #0x18
	strh r0, [r1]
	movs r0, #2
	ldrsh r7, [r1, r0]
	asrs r1, r5, #0x1f
	adds r0, r5, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	adds r1, #0x80
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r7
	lsls r0, r0, #0xc
	adds r1, r6, #0
	blx FUN_020E1F6C
	str r0, [r4, #0x20]
	add r0, sp, #4
	movs r3, #0
	ldrsh r5, [r0, r3]
	ldr r0, [sp]
	movs r2, #0x44
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	lsrs r2, r0, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	movs r0, #0x62
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r5
	lsls r0, r0, #0xc
	adds r1, r6, #0
	blx FUN_020E1F6C
	str r0, [r4, #0x24]
	lsls r0, r7, #0xc
	str r0, [r4, #0x28]
	lsls r0, r5, #0xc
	str r0, [r4, #0x2c]
	strb r6, [r4, #0x12]
	str r6, [r4, #0x18]
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	strb r0, [r4, #0x11]
_022659CA:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x20]
	adds r0, r1, r0
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	adds r0, r1, r0
	str r0, [r4, #0x2c]
	ldrb r1, [r4, #0x12]
	movs r0, #0xb4
	muls r0, r1, r0
	ldr r1, [r4, #0x18]
	lsls r0, r0, #0xc
	blx FUN_020E1F6C
	bl FUN_0201D2B8
	movs r2, #3
	asrs r1, r0, #0x1f
	lsls r2, r2, #0xe
	movs r3, #0
	blx FUN_020E1F1C
	adds r5, r0, #0
	ldr r2, [r4, #0x28]
	adds r6, r1, #0
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	ldr r2, [r4, #0x2c]
	lsls r1, r1, #4
	asrs r3, r2, #0xb
	lsrs r3, r3, #0x14
	adds r3, r2, r3
	movs r2, #2
	asrs r3, r3, #0xc
	movs r7, #0
	lsls r2, r2, #0xa
	asrs r1, r1, #0x10
	subs r3, #0x18
	adds r2, r5, r2
	adcs r6, r7
	lsls r5, r6, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r5
	rsbs r5, r2, #0
	asrs r2, r5, #0xb
	lsrs r2, r2, #0x14
	adds r2, r5, r2
	asrs r2, r2, #0xc
	adds r2, r3, r2
	lsls r2, r2, #0x10
	movs r3, #0x16
	ldr r0, [r4]
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	movs r0, #0xb
	ldr r1, [r4, #0x18]
	lsls r0, r0, #0xe
	blx FUN_020E1F6C
	adds r1, r0, #0
	ldr r0, [r4]
	bl FUN_0200D34C
	ldr r2, [r4, #0x28]
	ldr r3, [r4, #0x2c]
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	asrs r2, r3, #0xb
	lsrs r2, r2, #0x14
	adds r2, r3, r2
	lsls r1, r1, #4
	lsls r2, r2, #4
	movs r3, #0x16
	ldr r0, [r4, #8]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldrb r0, [r4, #0x12]
	subs r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _02265AA2
	ldrb r1, [r4, #0x14]
	ldr r0, [r4]
	lsls r2, r1, #1
	ldr r1, _02265AAC @ =0x02266B7A
	ldrh r1, [r1, r2]
	bl FUN_0200D364
	ldr r0, [r4]
	adds r1, r7, #0
	bl FUN_0200D3CC
	adds r0, r4, #0
	movs r1, #2
	bl ov117_02265428
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02265AA2:
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02265AA8: .4byte 0x0000057B
_02265AAC: .4byte 0x02266B7A
_02265AB0: .4byte 0x02266BC6
_02265AB4: .4byte 0x02266BC4
_02265AB8: .4byte 0x02266BC5
	thumb_func_end ov117_022657C4

	thumb_func_start ov117_02265ABC
ov117_02265ABC: @ 0x02265ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, _02265B34 @ =0x02266D9C
	adds r5, r0, #0
	adds r4, r1, #0
	add r3, sp, #0
	movs r2, #6
_02265ACA:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02265ACA
	ldr r0, [r6]
	movs r7, #0x16
	str r0, [r3]
	movs r6, #0
	lsls r7, r7, #0x10
_02265ADC:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, sp, #0
	bl FUN_0200CE6C
	movs r1, #0
	str r0, [r4]
	adds r2, r1, #0
	adds r3, r7, #0
	bl FUN_0200D500
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _02265B38 @ =0x02266DD0
	bl FUN_0200CE6C
	movs r1, #0
	str r0, [r4, #4]
	adds r2, r1, #0
	adds r3, r7, #0
	bl FUN_0200D500
	ldr r0, [r4, #4]
	movs r1, #0x21
	bl FUN_0200D364
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl FUN_0200D324
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_0200D3F4
	adds r6, r6, #1
	adds r4, #0x18
	cmp r6, #3
	blt _02265ADC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02265B34: .4byte 0x02266D9C
_02265B38: .4byte 0x02266DD0
	thumb_func_end ov117_02265ABC

	thumb_func_start ov117_02265B3C
ov117_02265B3C: @ 0x02265B3C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r4, #0
_02265B42:
	ldr r0, [r5]
	bl FUN_0200D0F4
	ldr r0, [r5, #4]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, #3
	blt _02265B42
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02265B3C

	thumb_func_start ov117_02265B58
ov117_02265B58: @ 0x02265B58
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	str r3, [sp]
	ldr r4, _02265C04 @ =0x00000000
	beq _02265C02
	bl FUN_0203608C
	ldr r1, [sp]
	cmp r1, r0
	beq _02265C02
	adds r0, r4, #0
	adds r2, r7, #0
_02265B74:
	ldrb r1, [r2, #0x15]
	cmp r1, #0
	bne _02265B82
	movs r1, #0x18
	muls r1, r0, r1
	adds r4, r7, r1
	b _02265B8A
_02265B82:
	adds r0, r0, #1
	adds r2, #0x18
	cmp r0, #3
	blt _02265B74
_02265B8A:
	cmp r4, #0
	beq _02265C02
	ldr r1, [sp]
	adds r0, r6, #0
	bl ov117_022622C4
	ldr r1, [r6]
	ldr r2, _02265C08 @ =0x02266C2C
	adds r1, #0x30
	ldrb r1, [r1]
	adds r7, r0, #0
	ldr r0, [r4]
	lsls r3, r1, #3
	lsls r1, r7, #1
	adds r2, r2, r3
	ldrh r1, [r1, r2]
	bl FUN_0200D41C
	ldr r1, _02265C0C @ =0x02266B7A
	lsls r2, r5, #1
	ldrh r1, [r1, r2]
	ldr r0, [r4]
	bl FUN_0200D364
	ldr r0, [r6]
	movs r3, #0x16
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r3, r3, #0x10
	lsls r1, r0, #2
	ldr r0, _02265C10 @ =0x02266BD8
	adds r0, r0, r1
	ldrb r0, [r7, r0]
	ldr r1, _02265C14 @ =0x02266BB4
	lsls r2, r0, #2
	ldr r0, _02265C18 @ =0x02266BB6
	ldrsh r1, [r1, r2]
	ldrsh r0, [r0, r2]
	movs r2, #0x10
	subs r0, #0x18
	strh r0, [r4, #0x10]
	ldrsh r2, [r4, r2]
	ldr r0, [r4]
	subs r2, #0x60
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D500
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0200D324
	ldr r0, [sp, #0x18]
	strb r5, [r4, #0x12]
	subs r0, #0xc
	strh r0, [r4, #0x16]
	movs r0, #0
	strb r0, [r4, #0x13]
	movs r0, #1
	strb r0, [r4, #0x15]
_02265C02:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02265C04: .4byte 0x00000000
_02265C08: .4byte 0x02266C2C
_02265C0C: .4byte 0x02266B7A
_02265C10: .4byte 0x02266BD8
_02265C14: .4byte 0x02266BB4
_02265C18: .4byte 0x02266BB6
	thumb_func_end ov117_02265B58

	thumb_func_start ov117_02265C1C
ov117_02265C1C: @ 0x02265C1C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r4, #0
	adds r5, r6, #0
_02265C24:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bne _02265C32
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov117_02265C3C
_02265C32:
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, #3
	blt _02265C24
	pop {r4, r5, r6, pc}
	thumb_func_end ov117_02265C1C

	thumb_func_start ov117_02265C3C
ov117_02265C3C: @ 0x02265C3C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #4
	bls _02265C4A
	b _02265D88
_02265C4A:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02265C56: @ jump table
	.2byte _02265C60 - _02265C56 - 2 @ case 0
	.2byte _02265C88 - _02265C56 - 2 @ case 1
	.2byte _02265CC4 - _02265C56 - 2 @ case 2
	.2byte _02265D20 - _02265C56 - 2 @ case 3
	.2byte _02265D5A - _02265C56 - 2 @ case 4
_02265C60:
	add r1, sp, #0
	movs r3, #0x16
	ldr r0, [r4]
	adds r1, #2
	add r2, sp, #0
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r1, sp, #0
	movs r0, #2
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x13]
	adds r0, r0, #1
	strb r0, [r4, #0x13]
_02265C88:
	movs r0, #0x16
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02265C96
	subs r0, r0, #1
	strh r0, [r4, #0x16]
	b _02265D88
_02265C96:
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #2
	ldr r1, [r4, #0xc]
	lsls r0, r0, #0xe
	adds r2, r1, r0
	str r2, [r4, #0xc]
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	asrs r0, r2, #0xb
	lsrs r0, r0, #0x14
	adds r0, r2, r0
	asrs r0, r0, #0xc
	cmp r0, r1
	blt _02265D88
	lsls r0, r1, #0xc
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x13]
	adds r0, r0, #1
	strb r0, [r4, #0x13]
	b _02265D88
_02265CC4:
	add r1, sp, #0
	movs r3, #0x16
	ldr r0, [r4]
	adds r1, #2
	add r2, sp, #0
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r3, sp, #0
	movs r2, #0
	ldrsh r2, [r3, r2]
	movs r1, #2
	ldrsh r1, [r3, r1]
	subs r2, #0x20
	lsls r2, r2, #0x10
	movs r3, #0x16
	ldr r0, [r4, #4]
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, [r4, #4]
	movs r1, #0x21
	bl FUN_0200D364
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, _02265DB0 @ =0x0000057B
	bl FUN_02005748
	ldrb r1, [r4, #0x12]
	ldr r0, [r4]
	lsls r2, r1, #1
	ldr r1, _02265DB4 @ =0x02266B7A
	ldrh r1, [r1, r2]
	adds r1, r1, #2
	bl FUN_0200D364
	movs r0, #8
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x13]
	adds r0, r0, #1
	strb r0, [r4, #0x13]
	b _02265D88
_02265D20:
	ldrb r0, [r4, #0x14]
	subs r0, r0, #1
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bne _02265D36
	movs r1, #1
	ldr r0, [r4, #4]
	lsls r1, r1, #0xe
	bl FUN_0200D34C
_02265D36:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _02265D88
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_0200D3F4
	ldrb r1, [r4, #0x12]
	ldr r0, [r4]
	lsls r2, r1, #1
	ldr r1, _02265DB4 @ =0x02266B7A
	ldrh r1, [r1, r2]
	bl FUN_0200D364
	ldrb r0, [r4, #0x13]
	adds r0, r0, #1
	strb r0, [r4, #0x13]
	b _02265D88
_02265D5A:
	movs r0, #2
	ldr r1, [r4, #0xc]
	lsls r0, r0, #0xe
	subs r1, r1, r0
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	str r1, [r4, #0xc]
	asrs r1, r0, #0xc
	movs r0, #0x10
	ldrsh r0, [r4, r0]
	subs r0, #0x60
	cmp r1, r0
	bgt _02265D88
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D3F4
	movs r0, #0
	strb r0, [r4, #0x13]
	add sp, #4
	strb r0, [r4, #0x15]
	pop {r3, r4, pc}
_02265D88:
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	asrs r2, r3, #0xb
	lsrs r2, r2, #0x14
	adds r2, r3, r2
	lsls r1, r1, #4
	lsls r2, r2, #4
	movs r3, #0x16
	ldr r0, [r4]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	movs r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02265DB0: .4byte 0x0000057B
_02265DB4: .4byte 0x02266B7A
	thumb_func_end ov117_02265C3C

	thumb_func_start ov117_02265DB8
ov117_02265DB8: @ 0x02265DB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x88]
	movs r2, #0
	adds r5, r3, #0
	ldr r4, [sp, #0x9c]
	bl FUN_02002EB4
	adds r7, r0, #0
	asrs r1, r7, #2
	lsrs r1, r1, #0x1d
	adds r1, r7, r1
	asrs r6, r1, #3
	movs r1, #8
	blx FUN_020BD140
	cmp r0, #0
	beq _02265DE6
	adds r6, r6, #1
_02265DE6:
	add r0, sp, #0x30
	bl FUN_0201A7A0
	movs r0, #0
	ldr r3, [sp, #0xb0]
	str r0, [sp]
	str r0, [sp, #4]
	lsls r2, r6, #0x18
	lsls r3, r3, #0x18
	ldr r0, [sp, #0x18]
	add r1, sp, #0x30
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A870
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x8c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x88]
	add r0, sp, #0x30
	str r3, [sp, #0x14]
	bl FUN_0201D7E0
	add r0, sp, #0x30
	movs r1, #1
	movs r2, #0x6e
	bl FUN_02012898
	movs r1, #1
	adds r2, r1, #0
	add r3, sp, #0x24
	bl FUN_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _02265E42
	lsrs r0, r7, #0x1f
	adds r0, r7, r0
	asrs r0, r0, #1
	subs r4, r4, r0
_02265E42:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x40]
	add r0, sp, #0x30
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x1c]
	bl FUN_0200D9B0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x98]
	bl FUN_0200D04C
	str r0, [sp, #0x4c]
	movs r0, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x28]
	str r4, [sp, #0x58]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0xa0]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xa8]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0x64]
	movs r0, #1
	str r0, [sp, #0x68]
	movs r0, #0x6e
	str r0, [sp, #0x6c]
	add r0, sp, #0x40
	bl FUN_020127E8
	ldr r1, [sp, #0x94]
	adds r6, r0, #0
	cmp r1, #0
	beq _02265E8C
	bl FUN_02012A90
_02265E8C:
	ldr r2, [sp, #0xa0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_020128C4
	add r0, sp, #0x30
	bl FUN_0201A8FC
	str r6, [r5]
	add r3, sp, #0x24
	ldm r3!, {r0, r1}
	adds r2, r5, #4
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	strh r7, [r5, #0x10]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_02265DB8

	thumb_func_start ov117_02265EB0
ov117_02265EB0: @ 0x02265EB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02012870
	adds r0, r4, #4
	bl FUN_0201EE28
	movs r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02265EB0

	thumb_func_start ov117_02265EC8
ov117_02265EC8: @ 0x02265EC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	movs r7, #0
	adds r5, r0, #0
_02265ED2:
	ldr r0, [sp]
	adds r1, r0, r7
	movs r0, #6
	lsls r0, r0, #6
	ldrb r1, [r1, r0]
	cmp r1, #0x40
	bge _02265EEA
	movs r0, #0x40
	subs r6, r0, r1
	adds r4, r6, #0
	subs r4, #0x50
	b _02265F04
_02265EEA:
	cmp r1, #0x80
	bge _02265EFA
	movs r0, #0xa0
	subs r4, r0, r1
	subs r4, #0x10
	adds r6, r4, #0
	subs r6, #0x50
	b _02265F04
_02265EFA:
	subs r1, #0xa0
	movs r0, #0x40
	subs r6, r0, r1
	adds r4, r6, #0
	subs r4, #0x50
_02265F04:
	ldr r0, [r5, #4]
	add r1, sp, #8
	add r2, sp, #4
	bl FUN_020129A4
	movs r2, #0xa8
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	subs r2, r2, r6
	bl FUN_020128C4
	movs r2, #0xa8
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #8]
	subs r2, r2, r4
	bl FUN_020128C4
	adds r7, r7, #1
	adds r5, #0x28
	cmp r7, #6
	blt _02265ED2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov117_02265EC8

	thumb_func_start ov117_02265F34
ov117_02265F34: @ 0x02265F34
	push {r3, r4, r5, lr}
	ldr r0, _02265F94 @ =0x0000019E
	adds r4, r1, #0
	ldrsb r1, [r4, r0]
	cmp r1, #0
	ble _02265F46
	subs r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02265F46:
	adds r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02265F54
	cmp r0, #1
	beq _02265F70
	pop {r3, r4, r5, pc}
_02265F54:
	adds r0, r4, #0
	bl ov117_02266008
	cmp r0, #1
	bne _02265F66
	adds r0, r4, #0
	bl ov117_02265FD4
	pop {r3, r4, r5, pc}
_02265F66:
	movs r0, #0x1a
	lsls r0, r0, #4
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
_02265F70:
	adds r0, r4, #0
	bl ov117_02266030
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov117_02265EC8
	cmp r5, #1
	bne _02265F92
	ldr r0, _02265F94 @ =0x0000019E
	movs r1, #0xf
	strb r1, [r4, r0]
	adds r1, r0, #2
	ldrb r1, [r4, r1]
	adds r0, r0, #2
	subs r1, r1, #1
	strb r1, [r4, r0]
_02265F92:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02265F94: .4byte 0x0000019E
	thumb_func_end ov117_02265F34

	thumb_func_start ov117_02265F98
ov117_02265F98: @ 0x02265F98
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _02265FD0 @ =0x000186A0
	adds r7, r0, #0
	adds r6, r1, #0
	movs r4, #0
_02265FA2:
	adds r0, r6, #0
	adds r1, r5, #0
	blx FUN_020E1F6C
	adds r3, r0, #0
	movs r0, #0x63
	lsls r2, r3, #4
	adds r1, r7, r4
	lsls r0, r0, #2
	strb r2, [r1, r0]
	adds r0, r3, #0
	muls r0, r5, r0
	subs r6, r6, r0
	adds r0, r5, #0
	movs r1, #0xa
	blx FUN_020E1F6C
	adds r4, r4, #1
	adds r5, r0, #0
	cmp r4, #6
	blt _02265FA2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265FD0: .4byte 0x000186A0
	thumb_func_end ov117_02265F98

	thumb_func_start ov117_02265FD4
ov117_02265FD4: @ 0x02265FD4
	push {r4, r5, r6, r7}
	movs r1, #0x66
	movs r5, #0
	lsls r1, r1, #2
	adds r3, r5, #0
	subs r2, r1, #6
_02265FE0:
	movs r6, #0x63
	adds r4, r0, r5
	lsls r6, r6, #2
	ldrb r7, [r4, r6]
	subs r6, r6, #6
	strb r7, [r4, r6]
	movs r6, #5
	subs r6, r6, r5
	lsls r6, r6, #1
	strb r6, [r4, r1]
	adds r5, r5, #1
	strb r3, [r4, r2]
	cmp r5, #6
	blt _02265FE0
	ldr r1, _02266004 @ =0x0000019F
	strb r3, [r0, r1]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02266004: .4byte 0x0000019F
	thumb_func_end ov117_02265FD4

	thumb_func_start ov117_02266008
ov117_02266008: @ 0x02266008
	push {r4, r5}
	movs r1, #6
	lsls r1, r1, #6
	movs r5, #0
	adds r2, r1, #6
_02266012:
	adds r3, r0, r5
	ldrb r4, [r3, r1]
	ldrb r3, [r3, r2]
	cmp r4, r3
	beq _02266022
	movs r0, #0
	pop {r4, r5}
	bx lr
_02266022:
	adds r5, r5, #1
	cmp r5, #6
	blt _02266012
	movs r0, #1
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov117_02266008

	thumb_func_start ov117_02266030
ov117_02266030: @ 0x02266030
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _02266124 @ =0x0000019F
	movs r7, #5
	ldrb r0, [r6, r0]
	cmp r0, #6
	bls _02266042
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266042:
	movs r4, #0
	str r4, [sp]
_02266046:
	ldr r0, [sp]
	adds r5, r6, r7
	mov ip, r0
	movs r0, #0x66
	lsls r0, r0, #2
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226606A
	movs r0, #0x66
	lsls r0, r0, #2
	ldrsb r0, [r5, r0]
	subs r1, r0, #1
	movs r0, #0x66
	lsls r0, r0, #2
	strb r1, [r5, r0]
	movs r0, #0
	str r0, [sp]
	b _02266116
_0226606A:
	ldr r0, _02266128 @ =0x00000192
	ldrb r0, [r5, r0]
	cmp r0, #1
	bls _02266086
	movs r0, #6
	ldr r1, _0226612C @ =0x00000186
	lsls r0, r0, #6
	ldrb r0, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r0, r1
	bne _02266086
	movs r0, #1
	str r0, [sp]
	b _02266116
_02266086:
	movs r0, #0
	movs r1, #6
	str r0, [sp]
	movs r0, #6
	lsls r1, r1, #6
	lsls r0, r0, #6
	ldrb r2, [r5, r1]
	ldrb r0, [r5, r0]
	adds r2, #0x17
	strb r2, [r5, r1]
	adds r1, r1, #6
	ldrb r3, [r5, r1]
	adds r1, r3, #0
	adds r1, #0xa0
	cmp r0, r3
	bgt _022660B0
	movs r2, #6
	lsls r2, r2, #6
	ldrb r2, [r5, r2]
	cmp r2, r3
	bhs _022660BE
_022660B0:
	cmp r0, r1
	bgt _02266104
	movs r0, #6
	lsls r0, r0, #6
	ldrb r0, [r5, r0]
	cmp r0, r1
	blt _02266104
_022660BE:
	ldr r0, _02266128 @ =0x00000192
	ldrb r0, [r5, r0]
	cmp r0, #1
	bhs _022660D2
	ldr r0, _02266128 @ =0x00000192
	ldrb r0, [r5, r0]
	adds r1, r0, #1
	ldr r0, _02266128 @ =0x00000192
	strb r1, [r5, r0]
	b _02266104
_022660D2:
	cmp r7, #5
	beq _022660DC
	mov r0, ip
	cmp r0, #1
	bne _02266104
_022660DC:
	ldr r0, _02266128 @ =0x00000192
	ldrb r0, [r5, r0]
	adds r1, r0, #1
	ldr r0, _02266128 @ =0x00000192
	strb r1, [r5, r0]
	subs r0, #0xc
	ldrb r1, [r5, r0]
	movs r0, #6
	lsls r0, r0, #6
	strb r1, [r5, r0]
	adds r0, #0x1f
	ldrb r0, [r6, r0]
	adds r1, r0, #1
	ldr r0, _02266124 @ =0x0000019F
	strb r1, [r6, r0]
	ldrb r0, [r6, r0]
	cmp r0, #6
	blo _02266104
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266104:
	movs r0, #6
	lsls r0, r0, #6
	ldrb r0, [r5, r0]
	movs r1, #0xa0
	blx FUN_020E1F6C
	movs r0, #6
	lsls r0, r0, #6
	strb r1, [r5, r0]
_02266116:
	adds r4, r4, #1
	subs r7, r7, #1
	cmp r4, #6
	blt _02266046
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266124: .4byte 0x0000019F
_02266128: .4byte 0x00000192
_0226612C: .4byte 0x00000186
	thumb_func_end ov117_02266030

	thumb_func_start ov117_02266130
ov117_02266130: @ 0x02266130
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	ldr r2, _0226614C @ =0x02266E6C
	bl FUN_0200CE6C
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200D324
	adds r0, r4, #0
	pop {r4, pc}
	nop
_0226614C: .4byte 0x02266E6C
	thumb_func_end ov117_02266130

	thumb_func_start ov117_02266150
ov117_02266150: @ 0x02266150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r0, #0
	ldr r0, _022661FC @ =0x00003848
	adds r6, r7, #0
	ldr r0, [r7, r0]
	adds r4, r7, #0
	str r0, [sp, #0x2c]
	movs r0, #5
	str r0, [sp, #0x30]
	ldr r0, _02266200 @ =0x000016B0
	adds r6, #0x64
	adds r5, r7, r0
	adds r4, #0xc8
	adds r5, #0x64
_0226616E:
	ldr r0, _02266200 @ =0x000016B0
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0226617A
	bl FUN_02022974
_0226617A:
	ldr r0, [sp, #0x2c]
	movs r1, #0xa
	blx FUN_020E2178
	adds r0, r7, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r1, r1, #4
	bl FUN_0200B1EC
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	movs r1, #0xa
	blx FUN_020E2178
	str r0, [sp, #0x2c]
	ldr r0, _02266204 @ =0x000015AC
	add r1, sp, #0x3c
	ldr r0, [r4, r0]
	add r2, sp, #0x38
	bl FUN_020129A4
	ldr r0, [sp, #0x34]
	adds r2, r7, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _02266208 @ =0x000E0F00
	adds r2, #0x90
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0226620C @ =0x00002713
	adds r3, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x14]
	movs r0, #0xa8
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x20]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r0, #2
	str r0, [sp, #0x28]
	ldr r0, [r7, #0x2c]
	ldr r1, [r7, #0x28]
	ldr r2, [r2]
	bl ov117_02265DB8
	ldr r0, [sp, #0x34]
	bl FUN_020237BC
	ldr r0, [sp, #0x30]
	subs r6, #0x14
	subs r4, #0x28
	subs r5, #0x14
	subs r0, r0, #1
	str r0, [sp, #0x30]
	bpl _0226616E
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022661FC: .4byte 0x00003848
_02266200: .4byte 0x000016B0
_02266204: .4byte 0x000015AC
_02266208: .4byte 0x000E0F00
_0226620C: .4byte 0x00002713
	thumb_func_end ov117_02266150

	thumb_func_start ov117_02266210
ov117_02266210: @ 0x02266210
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02266234 @ =0x000016B0
	movs r6, #0
	adds r4, r5, r0
	adds r7, r0, #0
_0226621C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02266228
	adds r0, r4, #0
	bl ov117_02265EB0
_02266228:
	adds r6, r6, #1
	adds r5, #0x14
	adds r4, #0x14
	cmp r6, #6
	blt _0226621C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02266234: .4byte 0x000016B0
	thumb_func_end ov117_02266210

	thumb_func_start ov117_02266238
ov117_02266238: @ 0x02266238
	ldr r3, _02266240 @ =FUN_0200D0F4
	adds r0, r1, #0
	bx r3
	nop
_02266240: .4byte FUN_0200D0F4
	thumb_func_end ov117_02266238

	thumb_func_start ov117_02266244
ov117_02266244: @ 0x02266244
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	ldr r2, _02266264 @ =0x02266EA0
	bl FUN_0200CE6C
	adds r4, r0, #0
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r4]
	bl FUN_0200D324
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02266264: .4byte 0x02266EA0
	thumb_func_end ov117_02266244

	thumb_func_start ov117_02266268
ov117_02266268: @ 0x02266268
	ldr r3, _02266270 @ =FUN_0200D0F4
	adds r0, r1, #0
	bx r3
	nop
_02266270: .4byte FUN_0200D0F4
	thumb_func_end ov117_02266268

	thumb_func_start ov117_02266274
ov117_02266274: @ 0x02266274
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #4
	ldrsh r1, [r4, r0]
	cmp r1, #0xa
	bhi _0226633E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0226628C: @ jump table
	.2byte _022662A2 - _0226628C - 2 @ case 0
	.2byte _022662C2 - _0226628C - 2 @ case 1
	.2byte _022662EA - _0226628C - 2 @ case 2
	.2byte _0226630C - _0226628C - 2 @ case 3
	.2byte _0226631E - _0226628C - 2 @ case 4
	.2byte _022662A2 - _0226628C - 2 @ case 5
	.2byte _022662C2 - _0226628C - 2 @ case 6
	.2byte _022662EA - _0226628C - 2 @ case 7
	.2byte _0226630C - _0226628C - 2 @ case 8
	.2byte _0226631E - _0226628C - 2 @ case 9
	.2byte _0226633A - _0226628C - 2 @ case 10
_022662A2:
	movs r3, #0x16
	ldr r0, [r4]
	movs r1, #0x80
	movs r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #4
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_022662C2:
	movs r1, #6
	ldrsh r2, [r4, r1]
	adds r2, r2, #1
	strh r2, [r4, #6]
	ldrsh r1, [r4, r1]
	cmp r1, #0xf
	ble _0226633E
	movs r1, #0
	strh r1, [r4, #6]
	movs r1, #1
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	movs r1, #0x80
	str r1, [r4, #0xc]
	movs r1, #0x20
	str r1, [r4, #0x10]
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_022662EA:
	movs r1, #0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r2, #6
	adds r0, r0, #6
	str r0, [r4, #0x10]
	ldr r0, [r4]
	bl FUN_0200D5DC
	ldr r0, [r4, #0x10]
	cmp r0, #0x60
	ble _0226633E
	movs r0, #4
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_0226630C:
	movs r1, #0
	str r1, [r4, #0x14]
	ldr r0, [r4]
	bl FUN_0200D3F4
	movs r0, #4
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #4]
_0226631E:
	movs r0, #6
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0226633E
	movs r0, #0
	strh r0, [r4, #6]
	movs r0, #4
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #4]
	b _0226633E
_0226633A:
	movs r0, #1
	pop {r4, pc}
_0226633E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_02266274

	thumb_func_start ov117_02266344
ov117_02266344: @ 0x02266344
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	movs r6, #0
_0226634C:
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x28]
	ldr r2, _02266380 @ =0x02266E38
	bl FUN_0200CE6C
	adds r4, r0, #0
	movs r1, #0x1b
	bl FUN_0200D364
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0200D810
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r4]
	bl FUN_0200D324
	adds r6, r6, #1
	stm r5!, {r4}
	cmp r6, #2
	blt _0226634C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266380: .4byte 0x02266E38
	thumb_func_end ov117_02266344

	thumb_func_start ov117_02266384
ov117_02266384: @ 0x02266384
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r4, #0
_0226638A:
	ldr r0, [r5]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0226638A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_02266384

	thumb_func_start ov117_0226639C
ov117_0226639C: @ 0x0226639C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, [r1]
	add r1, sp, #4
	movs r3, #0x16
	str r2, [sp]
	adds r1, #2
	add r2, sp, #4
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	ldr r5, [sp]
	movs r4, #0
	add r6, sp, #4
	movs r7, #1
_022663BA:
	movs r2, #0
	ldrsh r2, [r6, r2]
	movs r1, #2
	movs r3, #0x16
	adds r2, #0x1c
	lsls r2, r2, #0x10
	ldrsh r1, [r6, r1]
	ldr r0, [r5]
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, [r5]
	movs r1, #0x1b
	bl FUN_0200D364
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0200D810
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0200D3F4
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x14
	subs r2, r2, r1
	movs r0, #0x14
	rors r2, r0
	movs r0, #1
	adds r1, r1, r2
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r5, #8]
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x16
	subs r2, r2, r1
	movs r0, #0x16
	rors r2, r0
	movs r0, #1
	adds r1, r1, r2
	lsls r0, r0, #0xa
	adds r0, r1, r0
	str r0, [r5, #0x10]
	adds r0, r4, #0
	tst r0, r7
	beq _0226642A
	movs r0, #0
	ldr r1, [r5, #8]
	mvns r0, r0
	muls r0, r1, r0
	str r0, [r5, #8]
_0226642A:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _022663BA
	ldr r0, [sp]
	movs r1, #0
	strb r1, [r0, #0x19]
	movs r1, #1
	strb r1, [r0, #0x18]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_0226639C

	thumb_func_start ov117_02266440
ov117_02266440: @ 0x02266440
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	beq _02266494
	cmp r0, #1
	bne _02266494
	movs r4, #0
	adds r5, r6, #0
_02266452:
	ldr r2, [r5, #0x10]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	rsbs r2, r2, #0
	bl FUN_0200D5E8
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0200D324
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _02266452
	ldrb r0, [r6, #0x19]
	adds r0, r0, #1
	strb r0, [r6, #0x19]
	ldrb r0, [r6, #0x19]
	cmp r0, #8
	bls _02266494
	movs r5, #0
	adds r4, r6, #0
	adds r7, r5, #0
_02266480:
	ldr r0, [r4]
	adds r1, r7, #0
	bl FUN_0200D3F4
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #2
	blt _02266480
	movs r0, #0
	strb r0, [r6, #0x18]
_02266494:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov117_02266440

	thumb_func_start ov117_02266498
ov117_02266498: @ 0x02266498
	push {r3, r4, r5, lr}
	movs r1, #0xc
	movs r2, #0x6e
	adds r5, r0, #0
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0xc
	adds r4, r0, #0
	blx FUN_020C4CF4
	adds r0, r5, #0
	bl FUN_02006840
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_02266498

	thumb_func_start ov117_022664BC
ov117_022664BC: @ 0x022664BC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	cmp r1, #1
	bne _02266542
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r1, [r1]
	cmp r1, #0
	beq _022664E4
	cmp r1, #1
	beq _02266506
	cmp r1, #2
	b _0226651E
_022664E4:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022664F0
	bl FUN_0200F2C0
_022664F0:
	movs r0, #0
	bl FUN_0200F370
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r1, #0x3e
	adds r0, r0, #1
	strb r0, [r1]
	b _0226653E
_02266506:
	bl FUN_0225CA98
	cmp r0, #1
	bne _0226653E
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r1, #0x3e
	adds r0, r0, #1
	strb r0, [r1]
	b _0226653E
_0226651E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0226652C
	bl FUN_0225C838
	movs r0, #0
	str r0, [r4, #4]
_0226652C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0226653A
	bl FUN_0225C904
	movs r0, #0
	str r0, [r4, #8]
_0226653A:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0226653E:
	movs r0, #0
	pop {r3, r4, r5, pc}
_02266542:
	ldr r1, [r5]
	cmp r1, #5
	bhi _022665E0
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02266554: @ jump table
	.2byte _02266560 - _02266554 - 2 @ case 0
	.2byte _02266574 - _02266554 - 2 @ case 1
	.2byte _02266584 - _02266554 - 2 @ case 2
	.2byte _022665A8 - _02266554 - 2 @ case 3
	.2byte _022665BC - _02266554 - 2 @ case 4
	.2byte _022665E0 - _02266554 - 2 @ case 5
_02266560:
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0226656E
	movs r0, #1
	str r0, [r5]
	b _022665E4
_0226656E:
	movs r0, #3
	str r0, [r5]
	b _022665E4
_02266574:
	movs r1, #0x6e
	bl FUN_0225C82C
	str r0, [r4, #4]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022665E4
_02266584:
	ldr r0, [r4, #4]
	bl FUN_0225C8BC
	cmp r0, #1
	bne _022665E4
	ldr r0, [r4, #4]
	bl FUN_0225C8CC
	ldr r1, [r4]
	str r0, [r1, #0x34]
	ldr r0, [r4, #4]
	bl FUN_0225C838
	movs r0, #0
	str r0, [r4, #4]
	movs r0, #5
	str r0, [r5]
	b _022665E4
_022665A8:
	adds r1, r0, #0
	adds r1, #0x10
	movs r2, #0x6e
	bl FUN_0225C8F8
	str r0, [r4, #8]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022665E4
_022665BC:
	ldr r0, [r4, #8]
	bl FUN_0225C9A0
	cmp r0, #1
	bne _022665E4
	ldr r0, [r4, #8]
	bl FUN_0225C9A4
	ldr r1, [r4]
	str r0, [r1, #0x38]
	ldr r0, [r4, #8]
	bl FUN_0225C904
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #5
	str r0, [r5]
	b _022665E4
_022665E0:
	movs r0, #1
	pop {r3, r4, r5, pc}
_022665E4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_022664BC

	thumb_func_start ov117_022665E8
ov117_022665E8: @ 0x022665E8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	adds r0, r4, #0
	bl FUN_02006830
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov117_022665E8

	thumb_func_start ov117_022665FC
ov117_022665FC: @ 0x022665FC
	ldr r3, _02266608 @ =FUN_02032798
	adds r2, r0, #0
	ldr r0, _0226660C @ =0x02266FE4
	movs r1, #4
	bx r3
	nop
_02266608: .4byte FUN_02032798
_0226660C: .4byte 0x02266FE4
	thumb_func_end ov117_022665FC

	thumb_func_start ov117_02266610
ov117_02266610: @ 0x02266610
	movs r0, #0x14
	bx lr
	thumb_func_end ov117_02266610

	thumb_func_start ov117_02266614
ov117_02266614: @ 0x02266614
	movs r0, #4
	bx lr
	thumb_func_end ov117_02266614

	thumb_func_start ov117_02266618
ov117_02266618: @ 0x02266618
	adds r1, r0, #0
	adds r0, r3, #0
	ldr r3, _02266620 @ =ov117_02262044
	bx r3
	.align 2, 0
_02266620: .4byte ov117_02262044
	thumb_func_end ov117_02266618

	thumb_func_start ov117_02266624
ov117_02266624: @ 0x02266624
	push {r3, lr}
	movs r0, #0x18
	movs r2, #0x14
	bl FUN_020359DC
	cmp r0, #1
	bne _02266636
	movs r0, #1
	pop {r3, pc}
_02266636:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov117_02266624

	thumb_func_start ov117_0226663C
ov117_0226663C: @ 0x0226663C
	movs r0, #0xbf
	movs r1, #1
	lsls r0, r0, #6
	str r1, [r3, r0]
	bx lr
	.align 2, 0
	thumb_func_end ov117_0226663C

	thumb_func_start ov117_02266648
ov117_02266648: @ 0x02266648
	push {r3, lr}
	movs r1, #0
	movs r0, #0x19
	adds r2, r1, #0
	bl FUN_020359DC
	cmp r0, #1
	bne _0226665C
	movs r0, #1
	pop {r3, pc}
_0226665C:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov117_02266648

	thumb_func_start ov117_02266660
ov117_02266660: @ 0x02266660
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	ldr r3, [r4]
	ldr r1, [r2]
	adds r5, r3, #0
	adds r5, #0x30
	ldrb r5, [r5]
	movs r2, #0
	cmp r5, #0
	ble _0226668E
_02266674:
	adds r6, r3, #0
	adds r6, #0x2c
	ldrb r6, [r6]
	cmp r0, r6
	bne _02266686
	lsls r0, r2, #2
	adds r0, r4, r0
	str r1, [r0, #0xc]
	b _0226668E
_02266686:
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, r5
	blt _02266674
_0226668E:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r2, r0
	blt _0226669C
	bl FUN_02022974
_0226669C:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov117_02266660

	thumb_func_start ov117_022666A4
ov117_022666A4: @ 0x022666A4
	push {r3, lr}
	movs r0, #0x64
	str r0, [sp]
	movs r0, #0x17
	add r1, sp, #0
	movs r2, #4
	bl FUN_020359DC
	cmp r0, #1
	bne _022666BC
	movs r0, #1
	pop {r3, pc}
_022666BC:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov117_022666A4

	thumb_func_start ov117_022666C0
ov117_022666C0: @ 0x022666C0
	push {r4, lr}
	adds r4, r1, #0
	ldr r2, [r4]
	lsls r3, r2, #2
	ldr r2, _022666E4 @ =0x02267014
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _022666E0
	blx r2
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	movs r0, #1
	pop {r4, pc}
_022666E0:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_022666E4: .4byte 0x02267014
	thumb_func_end ov117_022666C0

	thumb_func_start ov117_022666E8
ov117_022666E8: @ 0x022666E8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	movs r0, #1
	str r0, [sp]
	add r2, sp, #4
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	adds r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov117_022666E8

	thumb_func_start ov117_02266714
ov117_02266714: @ 0x02266714
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	bl FUN_0203608C
	ldrb r1, [r4, #4]
	cmp r1, r0
	beq _0226672C
	adds r0, r5, #0
	adds r1, r4, #4
	bl ov117_02263DC4
_0226672C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_02266714

	thumb_func_start ov117_02266730
ov117_02266730: @ 0x02266730
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	movs r0, #2
	str r0, [sp]
	add r0, sp, #0
	strh r5, [r0, #4]
	movs r1, #5
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	adds r0, r6, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov117_02266730

	thumb_func_start ov117_02266760
ov117_02266760: @ 0x02266760
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, _02266780 @ =0x00002FD0
	adds r5, r0, #0
	ldr r2, [r5, r1]
	adds r2, r2, #1
	str r2, [r5, r1]
	bl ov117_02264808
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #7]
	adds r0, r5, #0
	bl ov117_0226238C
	pop {r3, r4, r5, pc}
	nop
_02266780: .4byte 0x00002FD0
	thumb_func_end ov117_02266760

	thumb_func_start ov117_02266784
ov117_02266784: @ 0x02266784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x14
	adds r6, r3, #0
	blx FUN_020C4CF4
	movs r0, #3
	str r0, [sp]
	add r0, sp, #0
	strh r5, [r0, #4]
	strb r4, [r0, #6]
	movs r1, #4
	strb r1, [r0, #7]
	strb r6, [r0, #8]
	adds r0, r7, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov117_02266784

	thumb_func_start ov117_022667B8
ov117_022667B8: @ 0x022667B8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrh r1, [r4, #4]
	adds r5, r0, #0
	ldr r0, _022667E8 @ =0x00002FC8
	ldr r3, _022667EC @ =0x00001428
	str r1, [r5, r0]
	ldr r1, [r5]
	ldrb r2, [r4, #6]
	adds r1, #0x30
	ldrb r1, [r1]
	ldr r0, [r5, #0x2c]
	adds r3, r5, r3
	bl ov117_02263AF0
	ldr r0, _022667F0 @ =0x00002FCC
	movs r1, #1
	str r1, [r5, r0]
	ldrb r1, [r4, #7]
	ldrb r2, [r4, #8]
	adds r0, r5, #0
	bl ov117_0226238C
	pop {r3, r4, r5, pc}
	.align 2, 0
_022667E8: .4byte 0x00002FC8
_022667EC: .4byte 0x00001428
_022667F0: .4byte 0x00002FCC
	thumb_func_end ov117_022667B8

	thumb_func_start ov117_022667F4
ov117_022667F4: @ 0x022667F4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	movs r0, #4
	str r0, [sp]
	movs r1, #2
	add r0, sp, #0
	strb r1, [r0, #4]
	strb r4, [r0, #5]
	adds r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_022667F4

	thumb_func_start ov117_02266820
ov117_02266820: @ 0x02266820
	adds r2, r1, #0
	movs r1, #3
	str r1, [r0, #0x20]
	ldrb r1, [r2, #4]
	ldr r3, _02266830 @ =ov117_0226238C
	ldrb r2, [r2, #5]
	bx r3
	nop
_02266830: .4byte ov117_0226238C
	thumb_func_end ov117_02266820

	thumb_func_start ov117_02266834
ov117_02266834: @ 0x02266834
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	movs r0, #5
	str r0, [sp]
	movs r1, #3
	add r0, sp, #0
	strb r1, [r0, #4]
	strb r4, [r0, #5]
	adds r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_02266834

	thumb_func_start ov117_02266860
ov117_02266860: @ 0x02266860
	adds r3, r1, #0
	ldr r1, _02266874 @ =0x00002FBC
	movs r2, #1
	str r2, [r0, r1]
	movs r1, #6
	str r1, [r0, #0x20]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	ldr r3, _02266878 @ =ov117_0226238C
	bx r3
	.align 2, 0
_02266874: .4byte 0x00002FBC
_02266878: .4byte ov117_0226238C
	thumb_func_end ov117_02266860

	thumb_func_start ov117_0226687C
ov117_0226687C: @ 0x0226687C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	movs r0, #6
	str r0, [sp]
	add r0, sp, #0
	strb r5, [r0, #4]
	strb r4, [r0, #5]
	adds r0, r6, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov117_0226687C

	thumb_func_start ov117_022668A8
ov117_022668A8: @ 0x022668A8
	ldr r3, _022668B4 @ =ov117_0226238C
	adds r2, r1, #0
	ldrb r1, [r2, #4]
	ldrb r2, [r2, #5]
	bx r3
	nop
_022668B4: .4byte ov117_0226238C
	thumb_func_end ov117_022668A8

	thumb_func_start ov117_022668B8
ov117_022668B8: @ 0x022668B8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020C4CF4
	movs r0, #7
	str r0, [sp]
	movs r1, #6
	add r0, sp, #0
	strb r1, [r0, #4]
	strb r4, [r0, #5]
	adds r0, r5, #0
	add r1, sp, #0
	bl ov117_02262130
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov117_022668B8

	thumb_func_start ov117_022668E4
ov117_022668E4: @ 0x022668E4
	adds r2, r1, #0
	movs r1, #1
	str r1, [r0, #0x20]
	ldrb r1, [r2, #4]
	ldr r3, _022668F4 @ =ov117_0226238C
	ldrb r2, [r2, #5]
	bx r3
	nop
_022668F4: .4byte ov117_0226238C
	thumb_func_end ov117_022668E4
	@ 0x022668F8
