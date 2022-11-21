	.include "macros/function.inc"


	.text

	thumb_func_start ov113_0225C700
ov113_0225C700: @ 0x0225C700
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
	ldr r2, _0225C9C4 @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _0225C9C8 @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _0225C9CC @ =0xFFFF1FFF
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
	movs r1, #0x76
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	ldr r1, _0225C9D0 @ =0x000019E4
	adds r0, r4, #0
	movs r2, #0x76
	bl FUN_0200681C
	ldr r2, _0225C9D0 @ =0x000019E4
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020C4CF4
	adds r0, r4, #0
	bl FUN_02006840
	str r0, [r5]
	ldr r0, [r0]
	bl FUN_0222E0C4
	str r0, [r5, #4]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0222E0C8
	ldr r1, _0225C9D4 @ =0x000019E0
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov113_0225DD14
	ldr r0, [r5]
	ldr r2, _0225C9D8 @ =0x000008D8
	ldrb r0, [r0, #4]
	ldr r1, [r5, #4]
	adds r2, r5, r2
	bl ov113_0225DD4C
	movs r1, #2
	ldr r0, _0225C9DC @ =0x000019D4
	lsls r1, r1, #0xc
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	movs r0, #0x76
	bl ov113_0225DC6C
	str r0, [r5, #0x14]
	movs r0, #0x76
	bl FUN_02002F38
	str r0, [r5, #0xc]
	movs r1, #1
	bl FUN_02003858
	movs r2, #2
	ldr r0, [r5, #0xc]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x76
	bl FUN_02002F70
	movs r1, #1
	ldr r0, [r5, #0xc]
	lsls r2, r1, #9
	movs r3, #0x76
	bl FUN_02002F70
	movs r2, #7
	ldr r0, [r5, #0xc]
	movs r1, #2
	lsls r2, r2, #6
	movs r3, #0x76
	bl FUN_02002F70
	movs r2, #2
	ldr r0, [r5, #0xc]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x76
	bl FUN_02002F70
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_02003858
	movs r0, #0x76
	bl FUN_02018340
	str r0, [r5, #8]
	movs r0, #0x40
	movs r1, #0x76
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	ldr r0, [r5, #8]
	bl ov113_0225CF58
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r0, #2
	movs r1, #0x76
	bl FUN_02002BB8
	movs r0, #0x76
	bl FUN_0200B358
	str r0, [r5, #0x2c]
	ldr r2, _0225C9E0 @ =0x0000028A
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x76
	bl FUN_0200B144
	str r0, [r5, #0x30]
	movs r0, #4
	movs r1, #0x76
	bl FUN_02012744
	str r0, [r5, #0x10]
	movs r0, #0xbb
	movs r1, #0x76
	bl FUN_02006C24
	movs r1, #0x16
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #0x46
	movs r1, #0x76
	bl FUN_02006C24
	movs r1, #0x59
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r5, #0
	bl ov113_0225D160
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r5, #0
	bl ov113_0225DAA8
	adds r0, r5, #0
	bl ov113_0225D9FC
	adds r0, r5, #0
	bl ov113_0225DBCC
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x76
	bl FUN_02023790
	adds r1, r5, #0
	adds r1, #0xc4
	str r0, [r1]
	movs r0, #0x76
	bl FUN_0200C6E4
	ldr r1, _0225C9E4 @ =0x02260954
	ldr r2, _0225C9E8 @ =0x022608E8
	movs r3, #0x20
	str r0, [r5, #0x1c]
	bl FUN_0200C73C
	ldr r1, _0225C9EC @ =0x00200010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r0, [r5, #0x1c]
	bl FUN_0200C704
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r2, #0x80
	bl FUN_0200C7C0
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldr r2, _0225C9F0 @ =0x022608FC
	bl FUN_0200CB30
	ldr r0, [r5, #0x1c]
	bl FUN_0200C738
	movs r2, #0x11
	movs r1, #0
	lsls r2, r2, #0x10
	bl FUN_0200964C
	bl FUN_02039734
	ldr r1, _0225C9D4 @ =0x000019E0
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r1, [r5, r1]
	adds r0, r5, r0
	bl ov113_0225E368
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r5, #0
	bl ov113_0225D304
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r5, #0
	bl ov113_0225D630
	adds r0, r5, #0
	bl ov113_0225D484
	adds r0, r5, #0
	bl ov113_0225D6F8
	adds r0, r5, #0
	bl ov113_0225D7CC
	movs r0, #0x76
	bl FUN_02015920
	str r0, [r5, #0x24]
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x76
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	beq _0225C94A
	movs r1, #1
	bl FUN_0222E31C
_0225C94A:
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, _0225C9F4 @ =0x021BF6DC
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
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	ldr r0, _0225C9F8 @ =ov113_0225CEF0
	ldr r2, _0225C9FC @ =0x0000EA60
	adds r1, r5, #0
	bl FUN_0200D9E8
	str r0, [r5, #0x18]
	ldr r0, _0225CA00 @ =ov113_0225CF18
	adds r1, r5, #0
	bl FUN_02017798
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0225C9C4: .4byte 0xFFFFE0FF
_0225C9C8: .4byte 0x04001000
_0225C9CC: .4byte 0xFFFF1FFF
_0225C9D0: .4byte 0x000019E4
_0225C9D4: .4byte 0x000019E0
_0225C9D8: .4byte 0x000008D8
_0225C9DC: .4byte 0x000019D4
_0225C9E0: .4byte 0x0000028A
_0225C9E4: .4byte 0x02260954
_0225C9E8: .4byte 0x022608E8
_0225C9EC: .4byte 0x00200010
_0225C9F0: .4byte 0x022608FC
_0225C9F4: .4byte 0x021BF6DC
_0225C9F8: .4byte ov113_0225CEF0
_0225C9FC: .4byte 0x0000EA60
_0225CA00: .4byte ov113_0225CF18
	thumb_func_end ov113_0225C700

	thumb_func_start ov113_0225CA04
ov113_0225CA04: @ 0x0225CA04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r3, [r4]
	adds r1, r4, #0
	ldr r2, _0225CD58 @ =0x000009BC
	movs r0, #0x65
	adds r1, #0xcc
	lsls r0, r0, #2
	ldrb r3, [r3, #4]
	ldr r1, [r1]
	ldr r2, [r4, r2]
	adds r0, r4, r0
	bl ov113_0225E3F0
	ldr r0, [r5]
	cmp r0, #0xa
	bls _0225CA30
	b _0225CD3C
_0225CA30:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225CA3C: @ jump table
	.2byte _0225CA52 - _0225CA3C - 2 @ case 0
	.2byte _0225CA70 - _0225CA3C - 2 @ case 1
	.2byte _0225CA88 - _0225CA3C - 2 @ case 2
	.2byte _0225CB56 - _0225CA3C - 2 @ case 3
	.2byte _0225CBAC - _0225CA3C - 2 @ case 4
	.2byte _0225CBEC - _0225CA3C - 2 @ case 5
	.2byte _0225CC76 - _0225CA3C - 2 @ case 6
	.2byte _0225CCCC - _0225CA3C - 2 @ case 7
	.2byte _0225CCE2 - _0225CA3C - 2 @ case 8
	.2byte _0225CD00 - _0225CA3C - 2 @ case 9
	.2byte _0225CD2C - _0225CA3C - 2 @ case 10
_0225CA52:
	movs r0, #0x5a
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov113_022607D8
	adds r0, r4, #0
	add r1, sp, #0x20
	bl ov113_0225DD24
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225CD46
_0225CA70:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _0225CA7A
	b _0225CD46
_0225CA7A:
	ldr r0, _0225CD58 @ =0x000009BC
	movs r1, #1
	str r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225CD46
_0225CA88:
	ldr r0, _0225CD5C @ =0x021BF6BC
	ldrh r1, [r0, #0x20]
	cmp r1, #0
	beq _0225CAF4
	ldrh r0, [r0, #0x1e]
	cmp r0, #0xa0
	bhs _0225CAF4
	ldr r1, _0225CD60 @ =0x00000555
	adds r0, r4, #0
	bl ov113_0225E318
	cmp r0, #1
	bne _0225CAF4
	movs r2, #0x92
	lsls r2, r2, #4
	ldrb r1, [r4, r2]
	ldr r7, _0225CD5C @ =0x021BF6BC
	movs r3, #0xc
	adds r6, r1, #0
	muls r6, r3, r6
	adds r1, r2, #0
	ldrh r0, [r7, #0x1c]
	adds r6, r4, r6
	subs r1, #0x3f
	strb r0, [r6, r1]
	ldrb r1, [r4, r2]
	ldrh r0, [r7, #0x1e]
	adds r6, r1, #0
	muls r6, r3, r6
	adds r1, r2, #0
	adds r6, r4, r6
	subs r1, #0x3e
	strb r0, [r6, r1]
	adds r1, r2, #0
	ldrb r2, [r4, r2]
	subs r1, #0x48
	adds r1, r4, r1
	muls r3, r2, r3
	movs r2, #0x5b
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	adds r0, r4, #0
	adds r1, r1, r3
	bl ov113_0225DDC0
	ldr r0, _0225CD64 @ =0x000008D8
	adds r2, r4, r0
	adds r0, #0x48
	ldrb r1, [r4, r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r0, r2, r0
	bl ov113_02260818
_0225CAF4:
	ldr r1, _0225CD64 @ =0x000008D8
	adds r0, r4, r1
	adds r1, #0x48
	ldrb r1, [r4, r1]
	bl ov113_02260748
	adds r1, r0, #0
	cmp r1, #6
	bge _0225CB14
	movs r0, #0x92
	lsls r0, r0, #4
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov113_0225E068
	b _0225CD46
_0225CB14:
	ldr r0, [r5]
	cmp r0, #2
	bne _0225CC06
	cmp r1, #0xfe
	bne _0225CC06
	ldr r0, _0225CD68 @ =0x000005E5
	bl FUN_02005748
	movs r0, #8
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	movs r2, #9
	movs r3, #1
	bl FUN_020039B0
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _0225CD6C @ =0x00000921
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, r2]
	movs r1, #2
	movs r3, #0x10
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x10
	bl FUN_020039B0
	movs r0, #3
	str r0, [r5]
	b _0225CD46
_0225CB56:
	adds r0, r4, #0
	adds r0, #0xb4
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0xb4
	movs r1, #0
	movs r2, #1
	movs r3, #0xe
	bl FUN_0200E060
	adds r2, r4, #0
	adds r2, #0xc4
	ldr r0, [r4, #0x30]
	ldr r2, [r2]
	movs r1, #2
	bl FUN_0200B1B8
	ldr r0, [r4, #4]
	bl FUN_02025E44
	bl FUN_02027AC0
	movs r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	adds r2, r4, #0
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r2, #0xc4
	ldr r2, [r2]
	adds r0, #0xb4
	movs r1, #1
	bl FUN_0201D738
	adds r1, r4, #0
	adds r1, #0xc8
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225CD46
_0225CBAC:
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0225CC06
	ldr r0, [r4, #8]
	movs r1, #0x19
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x1f
	str r0, [sp, #0x14]
	movs r0, #0xb
	str r0, [sp, #0x18]
	add r0, sp, #0xc
	strb r1, [r0, #0x10]
	movs r1, #6
	strb r1, [r0, #0x11]
	ldr r0, [r4, #0x24]
	add r1, sp, #0xc
	bl FUN_02015958
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x28
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225CD46
_0225CBEC:
	ldr r0, [r4, #0xc]
	movs r1, #0
	movs r2, #0xb0
	movs r3, #0x40
	bl FUN_02003070
	ldr r0, [r4, #0x24]
	bl FUN_020159FC
	cmp r0, #1
	beq _0225CC08
	cmp r0, #2
	beq _0225CC32
_0225CC06:
	b _0225CD46
_0225CC08:
	ldr r0, [r4, #0x24]
	bl FUN_02015A54
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x28
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb4
	bl FUN_0200E084
	movs r0, #0x5a
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0225CD58 @ =0x000009BC
	movs r1, #3
	str r1, [r4, r0]
	movs r0, #9
	str r0, [r5]
	b _0225CD46
_0225CC32:
	ldr r0, [r4, #0x24]
	bl FUN_02015A54
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x28
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb4
	bl FUN_0200E084
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	movs r2, #9
	movs r3, #1
	bl FUN_020039B0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, _0225CD6C @ =0x00000921
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, r2]
	movs r1, #2
	movs r3, #0x10
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x10
	bl FUN_020039B0
	movs r0, #2
	str r0, [r5]
	b _0225CD46
_0225CC76:
	adds r0, r4, #0
	adds r0, #0xb4
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0xb4
	movs r1, #0
	movs r2, #1
	movs r3, #0xe
	bl FUN_0200E060
	adds r2, r4, #0
	adds r2, #0xc4
	ldr r0, [r4, #0x30]
	ldr r2, [r2]
	movs r1, #3
	bl FUN_0200B1B8
	ldr r0, [r4, #4]
	bl FUN_02025E44
	bl FUN_02027AC0
	movs r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	adds r2, r4, #0
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r2, #0xc4
	ldr r2, [r2]
	adds r0, #0xb4
	movs r1, #1
	bl FUN_0201D738
	adds r1, r4, #0
	adds r1, #0xc8
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225CD46
_0225CCCC:
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0225CD46
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225CD46
_0225CCE2:
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x29
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0x5a
	bls _0225CD46
	movs r0, #9
	str r0, [r5]
	b _0225CD46
_0225CD00:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _0225CD0C
	bl FUN_0200F2C0
_0225CD0C:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x76
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225CD46
_0225CD2C:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225CD46
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225CD46
_0225CD3C:
	bl FUN_02232DC8
	add sp, #0x2c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225CD46:
	adds r0, r4, #0
	bl ov113_0225E118
	adds r0, r4, #0
	bl ov113_0225E294
	ldr r0, _0225CD58 @ =0x000009BC
	b _0225CD70
	nop
_0225CD58: .4byte 0x000009BC
_0225CD5C: .4byte 0x021BF6BC
_0225CD60: .4byte 0x00000555
_0225CD64: .4byte 0x000008D8
_0225CD68: .4byte 0x000005E5
_0225CD6C: .4byte 0x00000921
_0225CD70:
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0225CDE8
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x1e
	ble _0225CD90
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov113_0225DE98
_0225CD90:
	bl FUN_02231760
	cmp r0, #1
	beq _0225CDA4
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0222E12C
	cmp r0, #1
	bne _0225CDE8
_0225CDA4:
	ldr r0, [r5]
	cmp r0, #4
	beq _0225CDE8
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225CDBA
	ldr r0, [r4, #0x24]
	bl FUN_02015A54
_0225CDBA:
	movs r0, #0x5a
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0225CDF4 @ =0x000009BC
	movs r1, #3
	str r1, [r4, r0]
	bl FUN_02231760
	cmp r0, #1
	bne _0225CDD6
	movs r0, #9
	str r0, [r5]
	b _0225CDE8
_0225CDD6:
	ldr r0, _0225CDF8 @ =0x000005F1
	bl FUN_02005748
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0222E2A4
	movs r0, #6
	str r0, [r5]
_0225CDE8:
	adds r0, r4, #0
	bl ov113_0225E364
	movs r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225CDF4: .4byte 0x000009BC
_0225CDF8: .4byte 0x000005F1
	thumb_func_end ov113_0225CA04

	thumb_func_start ov113_0225CDFC
ov113_0225CDFC: @ 0x0225CDFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl ov113_0225D5D8
	adds r0, r4, #0
	bl ov113_0225D7A4
	ldr r0, [r4, #0x24]
	bl FUN_02015938
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov113_0225E378
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	bl FUN_020237BC
	movs r0, #2
	bl FUN_02002C60
	ldr r0, [r4, #0x10]
	bl FUN_020127BC
	ldr r0, [r4, #0x30]
	bl FUN_0200B190
	ldr r0, [r4, #0x2c]
	bl FUN_0200B3F0
	adds r0, r4, #0
	bl ov113_0225DC4C
	ldr r0, [r4, #8]
	bl ov113_0225D12C
	ldr r0, [r4, #8]
	bl FUN_020181C4
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl FUN_0200D0B0
	ldr r0, [r4, #0x1c]
	bl FUN_0200C8D4
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_02002FA0
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02002FA0
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02002FA0
	ldr r0, [r4, #0xc]
	movs r1, #3
	bl FUN_02002FA0
	ldr r0, [r4, #0xc]
	bl FUN_02002F54
	adds r0, r4, #0
	bl ov113_0225DAFC
	adds r0, r4, #0
	bl ov113_0225DA9C
	ldr r0, [r4, #0x14]
	bl ov113_0225DD0C
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02006CA8
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
	movs r0, #0x76
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov113_0225CDFC

	thumb_func_start ov113_0225CEF0
ov113_0225CEF0: @ 0x0225CEF0
	push {r4, lr}
	movs r0, #0x65
	adds r4, r1, #0
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov113_0225E4E8
	adds r0, r4, #0
	bl ov113_0225DB08
	ldr r0, [r4, #0x20]
	bl FUN_0200C7EC
	bl FUN_0200C808
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
	pop {r4, pc}
	thumb_func_end ov113_0225CEF0

	thumb_func_start ov113_0225CF18
ov113_0225CF18: @ 0x0225CF18
	push {r4, lr}
	ldr r1, _0225CF4C @ =0x000009BC
	adds r4, r0, #0
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r1, [r4, r1]
	adds r0, r4, r0
	bl ov113_0225E65C
	bl FUN_0201DCAC
	bl FUN_0200C800
	ldr r0, [r4, #0xc]
	bl FUN_02003694
	ldr r0, [r4, #8]
	bl FUN_0201C2B8
	ldr r3, _0225CF50 @ =0x027E0000
	ldr r1, _0225CF54 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_0225CF4C: .4byte 0x000009BC
_0225CF50: .4byte 0x027E0000
_0225CF54: .4byte 0x00003FF8
	thumb_func_end ov113_0225CF18

	thumb_func_start ov113_0225CF58
ov113_0225CF58: @ 0x0225CF58
	push {r3, r4, r5, lr}
	sub sp, #0xe0
	adds r4, r0, #0
	bl FUN_0201FF00
	bl FUN_0201FF68
	ldr r5, _0225D118 @ =0x02260974
	add r3, sp, #0x10
	movs r2, #5
_0225CF6C:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225CF6C
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
	ldr r5, _0225D11C @ =0x022608D8
	add r3, sp, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0225D120 @ =0x02260B14
	add r3, sp, #0x8c
	movs r2, #0xa
_0225CFCC:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225CFCC
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
	add r2, sp, #0x8c
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
	add r2, sp, #0xa8
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
	add r2, sp, #0xc4
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
	ldr r1, _0225D124 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #2
	orrs r0, r2
	strh r0, [r1]
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r5, _0225D128 @ =0x02260B68
	add r3, sp, #0x38
	movs r2, #0xa
_0225D078:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225D078
	ldr r0, [r5]
	movs r1, #5
	str r0, [r3]
	adds r0, r4, #0
	add r2, sp, #0x38
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
	adds r0, r4, #0
	movs r1, #6
	add r2, sp, #0x54
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #6
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #7
	add r2, sp, #0x70
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #7
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #7
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r0, #5
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x76
	bl FUN_02019690
	add sp, #0xe0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225D118: .4byte 0x02260974
_0225D11C: .4byte 0x022608D8
_0225D120: .4byte 0x02260B14
_0225D124: .4byte 0x04000008
_0225D128: .4byte 0x02260B68
	thumb_func_end ov113_0225CF58

	thumb_func_start ov113_0225D12C
ov113_0225D12C: @ 0x0225D12C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019044
	pop {r4, pc}
	thumb_func_end ov113_0225D12C

	thumb_func_start ov113_0225D160
ov113_0225D160: @ 0x0225D160
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r0, #7
	str r1, [sp]
	lsls r0, r0, #6
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0xbb
	movs r2, #0x13
	movs r3, #0x76
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	adds r0, r5, #0
	movs r1, #0x12
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	adds r0, r5, #0
	movs r1, #0x11
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	adds r0, r5, #0
	movs r1, #0x14
	movs r3, #3
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0xbb
	movs r2, #0x17
	movs r3, #0x76
	bl FUN_02003050
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0225D1FA
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r1, #1
	ldr r0, [r4, #0xc]
	movs r2, #0x10
	adds r3, r1, #0
	bl FUN_02003120
_0225D1FA:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	adds r0, r5, #0
	movs r1, #0x16
	movs r3, #6
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	adds r0, r5, #0
	movs r1, #0x15
	movs r3, #6
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x76
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	adds r0, r5, #0
	movs r1, #0x18
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	movs r1, #6
	bl FUN_02019FE4
	movs r1, #0x27
	lsls r1, r1, #6
	movs r2, #2
	adds r1, r4, r1
	lsls r2, r2, #0xa
	adds r5, r0, #0
	blx FUN_020C4B18
	movs r2, #2
	movs r0, #0
	adds r1, r5, #0
	lsls r2, r2, #0xa
	blx FUN_020C4AF0
	ldr r0, [r4, #4]
	bl FUN_02025E44
	bl FUN_02027B50
	adds r5, r0, #0
	bl FUN_0200DD08
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0x26
	movs r3, #0x76
	bl FUN_02003050
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x76
	str r0, [sp, #4]
	movs r1, #1
	ldr r0, [r4, #8]
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200DD0C
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0xe
	movs r2, #6
	movs r3, #0x76
	bl FUN_02003050
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0225D2DE
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0xe
	movs r2, #6
	movs r3, #0x76
	bl FUN_02003050
	b _0225D2F6
_0225D2DE:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0xbb
	movs r2, #0x19
	movs r3, #0x76
	bl FUN_02003050
_0225D2F6:
	ldr r0, [r4, #8]
	movs r1, #6
	bl FUN_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov113_0225D160

	thumb_func_start ov113_0225D304
ov113_0225D304: @ 0x0225D304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	str r6, [sp]
	movs r1, #3
	adds r5, r0, #0
	str r1, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0225D468 @ =0x00002711
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0225D46C @ =0x00002717
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #4
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0225D470 @ =0x00002712
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #5
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0225D470 @ =0x00002712
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #6
	bl FUN_0200CE54
	movs r4, #0
	adds r7, r4, #0
_0225D370:
	str r7, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0225D468 @ =0x00002711
	adds r2, r6, #0
	adds r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #0x10
	bl FUN_0200CC3C
	adds r4, r4, #1
	cmp r4, #6
	blt _0225D370
	movs r0, #0
	str r0, [sp]
	ldr r0, _0225D468 @ =0x00002711
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #0xf
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0225D468 @ =0x00002711
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #0xe
	bl FUN_0200CE54
	str r6, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0225D470 @ =0x00002712
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl FUN_0200CDC4
	ldr r1, [r5]
	ldrb r1, [r1, #4]
	cmp r1, #0
	bne _0225D3E2
	movs r3, #0
	b _0225D3E4
_0225D3E2:
	ldr r3, _0225D474 @ =0x00007FFF
_0225D3E4:
	lsls r1, r0, #4
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r1, #0x10
	str r0, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r1, #2
	ldr r0, [r5, #0xc]
	adds r2, r1, #0
	bl FUN_020038B0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0225D478 @ =0x00002718
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #2
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0225D47C @ =0x00002713
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #1
	bl FUN_0200CE24
	movs r3, #0
	ldr r0, _0225D47C @ =0x00002713
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	adds r2, r6, #0
	bl FUN_0200CE54
	movs r0, #0xbb
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0225D47C @ =0x00002713
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl FUN_0200CD7C
	ldr r1, _0225D480 @ =0x00000921
	strb r0, [r5, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D468: .4byte 0x00002711
_0225D46C: .4byte 0x00002717
_0225D470: .4byte 0x00002712
_0225D474: .4byte 0x00007FFF
_0225D478: .4byte 0x00002718
_0225D47C: .4byte 0x00002713
_0225D480: .4byte 0x00000921
	thumb_func_end ov113_0225D304

	thumb_func_start ov113_0225D484
ov113_0225D484: @ 0x0225D484
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r4, _0225D5B4 @ =0x02260A04
	adds r7, r0, #0
	add r3, sp, #0x18
	movs r2, #6
_0225D490:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225D490
	ldr r0, [r4]
	movs r6, #0
	str r0, [r3]
	movs r4, #0x10
	adds r5, r7, #0
_0225D4A2:
	add r0, sp, #0x18
	strh r4, [r0]
	movs r1, #0xb0
	strh r1, [r0, #2]
	ldr r0, [r7, #0x1c]
	ldr r1, [r7, #0x20]
	add r2, sp, #0x18
	bl FUN_0200CE6C
	ldr r1, _0225D5B8 @ =0x00000924
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_0200D364
	ldr r0, _0225D5B8 @ =0x00000924
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0200D324
	adds r6, r6, #1
	adds r4, #0x20
	adds r5, r5, #4
	cmp r6, #6
	blt _0225D4A2
	ldr r4, _0225D5BC @ =0x02260A38
	add r3, sp, #0x18
	movs r2, #6
_0225D4DC:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225D4DC
	ldr r0, [r4]
	movs r6, #0
	str r0, [r3]
	movs r4, #0x10
	adds r5, r7, #0
_0225D4EE:
	add r0, sp, #0x18
	strh r4, [r0]
	movs r1, #0xb0
	strh r1, [r0, #2]
	ldr r0, [r7, #0x1c]
	ldr r1, [r7, #0x20]
	add r2, sp, #0x18
	bl FUN_0200CE6C
	ldr r1, _0225D5C0 @ =0x0000093C
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_0200D364
	ldr r0, _0225D5C0 @ =0x0000093C
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0200D324
	adds r6, r6, #1
	adds r4, #0x20
	adds r5, r5, #4
	cmp r6, #6
	blt _0225D4EE
	ldr r4, _0225D5C4 @ =0x02260A6C
	add r3, sp, #0x18
	movs r2, #6
_0225D528:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225D528
	ldr r0, [r4]
	movs r5, #0
	str r0, [r3]
	movs r6, #0x10
	adds r4, r7, #0
_0225D53A:
	add r0, sp, #0x18
	strh r6, [r0]
	movs r1, #0xb0
	strh r1, [r0, #2]
	ldr r0, _0225D5C8 @ =0x00002711
	add r2, sp, #0x18
	adds r0, r5, r0
	str r0, [sp, #0x2c]
	ldr r0, [r7, #0x1c]
	ldr r1, [r7, #0x20]
	bl FUN_0200CE6C
	ldr r1, _0225D5CC @ =0x00000954
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl FUN_0200D324
	adds r5, r5, #1
	adds r6, #0x20
	adds r4, r4, #4
	cmp r5, #6
	blt _0225D53A
	ldr r0, [r7, #0x30]
	movs r1, #1
	bl FUN_0200B1EC
	adds r4, r0, #0
	ldr r0, _0225D5D0 @ =0x00010203
	movs r1, #0x67
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0225D5D4 @ =0x00002713
	lsls r1, r1, #6
	str r0, [sp, #8]
	movs r0, #0xe0
	str r0, [sp, #0xc]
	movs r0, #0xb0
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	adds r0, r7, #0
	adds r1, r7, r1
	adds r2, r4, #0
	movs r3, #2
	bl ov113_0225E15C
	movs r0, #0x67
	lsls r0, r0, #6
	ldr r0, [r7, r0]
	movs r1, #1
	bl FUN_020129D0
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D5B4: .4byte 0x02260A04
_0225D5B8: .4byte 0x00000924
_0225D5BC: .4byte 0x02260A38
_0225D5C0: .4byte 0x0000093C
_0225D5C4: .4byte 0x02260A6C
_0225D5C8: .4byte 0x00002711
_0225D5CC: .4byte 0x00000954
_0225D5D0: .4byte 0x00010203
_0225D5D4: .4byte 0x00002713
	thumb_func_end ov113_0225D484

	thumb_func_start ov113_0225D5D8
ov113_0225D5D8: @ 0x0225D5D8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, _0225D624 @ =0x00000924
	movs r4, #0
	adds r5, r7, #0
_0225D5E2:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _0225D5E2
	ldr r6, _0225D628 @ =0x0000093C
	movs r5, #0
	adds r4, r7, #0
_0225D5F6:
	ldr r0, [r4, r6]
	bl FUN_0200D0F4
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #6
	blt _0225D5F6
	ldr r6, _0225D62C @ =0x00000954
	movs r5, #0
	adds r4, r7, #0
_0225D60A:
	ldr r0, [r4, r6]
	bl FUN_0200D0F4
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #6
	blt _0225D60A
	movs r0, #0x67
	lsls r0, r0, #6
	adds r0, r7, r0
	bl ov113_0225E250
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225D624: .4byte 0x00000924
_0225D628: .4byte 0x0000093C
_0225D62C: .4byte 0x00000954
	thumb_func_end ov113_0225D5D8

	thumb_func_start ov113_0225D630
ov113_0225D630: @ 0x0225D630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	adds r5, r0, #0
	str r6, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0225D6E8 @ =0x00002714
	movs r1, #3
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0225D6EC @ =0x00002719
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #9
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0225D6E8 @ =0x00002714
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #8
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0225D6E8 @ =0x00002714
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #7
	bl FUN_0200CE54
	movs r4, #0
	adds r7, r4, #0
_0225D69E:
	str r7, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0225D6F0 @ =0x0000271A
	adds r2, r6, #0
	adds r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #0xd
	bl FUN_0200CC3C
	adds r4, r4, #1
	cmp r4, #8
	blt _0225D69E
	movs r0, #0
	str r0, [sp]
	ldr r0, _0225D6F4 @ =0x00002715
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #0xc
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0225D6F4 @ =0x00002715
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	movs r3, #0xb
	bl FUN_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225D6E8: .4byte 0x00002714
_0225D6EC: .4byte 0x00002719
_0225D6F0: .4byte 0x0000271A
_0225D6F4: .4byte 0x00002715
	thumb_func_end ov113_0225D630

	thumb_func_start ov113_0225D6F8
ov113_0225D6F8: @ 0x0225D6F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldr r2, _0225D790 @ =0x0226099C
	bl FUN_0200CE6C
	ldr r1, _0225D794 @ =0x0000096C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	ldr r0, [r0]
	bl FUN_0200D324
	ldr r0, _0225D794 @ =0x0000096C
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	ldr r4, _0225D798 @ =0x022609D0
	add r3, sp, #0
	movs r2, #6
_0225D724:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225D724
	ldr r0, [r4]
	movs r7, #0x97
	str r0, [r3]
	movs r4, #0
	ldr r6, _0225D79C @ =0x02260934
	lsls r7, r7, #4
	b _0225D786
_0225D73A:
	ldr r0, _0225D7A0 @ =0x0000271A
	add r2, sp, #0
	adds r0, r4, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	bl FUN_0200CE6C
	adds r3, r0, #0
	lsls r2, r4, #2
	movs r0, #0x97
	adds r1, r5, r2
	lsls r0, r0, #4
	str r3, [r1, r0]
	ldr r0, [r1, r0]
	ldrsh r1, [r6, r2]
	adds r3, r6, r2
	movs r2, #2
	ldrsh r2, [r3, r2]
	movs r3, #0x11
	lsls r3, r3, #0x10
	bl FUN_0200D500
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x97
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r0, [r0]
	bl FUN_0200D324
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r7]
	movs r1, #0
	bl FUN_0200D3F4
	adds r4, r4, #1
_0225D786:
	cmp r4, #8
	blt _0225D73A
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0225D790: .4byte 0x0226099C
_0225D794: .4byte 0x0000096C
_0225D798: .4byte 0x022609D0
_0225D79C: .4byte 0x02260934
_0225D7A0: .4byte 0x0000271A
	thumb_func_end ov113_0225D6F8

	thumb_func_start ov113_0225D7A4
ov113_0225D7A4: @ 0x0225D7A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0225D7C8 @ =0x0000096C
	ldr r0, [r5, r0]
	bl FUN_0200D0F4
	movs r6, #0x97
	movs r4, #0
	lsls r6, r6, #4
_0225D7B6:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _0225D7B6
	pop {r4, r5, r6, pc}
	nop
_0225D7C8: .4byte 0x0000096C
	thumb_func_end ov113_0225D7A4

	thumb_func_start ov113_0225D7CC
ov113_0225D7CC: @ 0x0225D7CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r6, #0xc]
	movs r1, #2
	bl FUN_02003164
	str r0, [sp, #0x28]
	ldr r0, [r6, #0xc]
	movs r1, #2
	bl FUN_0200316C
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x28]
	str r6, [sp, #0x20]
	str r6, [sp, #0x1c]
	str r0, [sp, #0x14]
_0225D7F8:
	ldr r2, _0225D918 @ =0x000008DA
	ldr r0, [sp, #0x20]
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _0225D808
	ldr r3, _0225D91C @ =0x000001ED
	cmp r0, r3
	bls _0225D862
_0225D808:
	ldr r1, _0225D920 @ =0x00000924
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r1, _0225D924 @ =0x0000093C
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r1, _0225D928 @ =0x00000954
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [sp, #0x18]
	ldr r5, _0225D92C @ =0x022608AC
	lsls r0, r0, #0x18
	movs r4, #0
	lsrs r7, r0, #0x18
_0225D836:
	adds r0, r4, #0
	adds r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldrh r2, [r5]
	ldr r0, [r6, #8]
	movs r1, #2
	adds r3, r7, #0
	bl FUN_02019CB8
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blt _0225D836
	b _0225D8D8
_0225D862:
	adds r1, r3, #0
	subs r1, #0x89
	ldr r1, [r6, r1]
	adds r4, r2, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r1, _0225D930 @ =0x000019E0
	adds r2, #0x7a
	ldr r1, [r6, r1]
	subs r3, #0x8d
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r3, [r6, r3]
	ldrb r1, [r1, r4]
	ldr r4, [sp, #0x1c]
	ldr r2, [r4, r2]
	bl ov113_0225D938
	ldr r1, _0225D934 @ =0x000008D8
	ldr r0, [sp, #0x20]
	movs r3, #0xc
	ldrh r2, [r0, r1]
	ldr r0, [sp, #0x14]
	strh r2, [r0, #0x22]
	ldr r0, [sp, #0x20]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x22]
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r0, #0x11
	lsls r1, r0, #1
	ldr r0, [sp, #0x28]
	adds r0, r0, r1
	ldr r1, [sp, #0x2c]
	adds r1, #0x21
	lsls r2, r1, #1
	ldr r1, [sp, #0x28]
	adds r1, r1, r2
	movs r2, #1
	bl FUN_0200393C
	ldr r0, [sp, #0x14]
	adds r0, #0x42
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	adds r0, #0x42
	strh r1, [r0]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _0225D8D8
	adds r0, r0, #1
	str r0, [sp, #0x24]
	movs r1, #0x92
	ldr r0, [sp, #0x2c]
	lsls r1, r1, #4
	strb r0, [r6, r1]
_0225D8D8:
	ldr r0, [sp, #0x20]
	adds r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	adds r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #6
	bge _0225D902
	b _0225D7F8
_0225D902:
	adds r0, r6, #0
	movs r1, #0
	bl ov113_0225E0D4
	ldr r0, [r6, #8]
	movs r1, #2
	bl FUN_0201C3C0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D918: .4byte 0x000008DA
_0225D91C: .4byte 0x000001ED
_0225D920: .4byte 0x00000924
_0225D924: .4byte 0x0000093C
_0225D928: .4byte 0x00000954
_0225D92C: .4byte 0x022608AC
_0225D930: .4byte 0x000019E0
_0225D934: .4byte 0x000008D8
	thumb_func_end ov113_0225D7CC

	thumb_func_start ov113_0225D938
ov113_0225D938: @ 0x0225D938
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r4, #0
	beq _0225D94C
	ldr r2, _0225D9F8 @ =0x000001ED
	cmp r4, r2
	ble _0225D952
_0225D94C:
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225D952:
	ldr r2, [sp, #0x30]
	bl ov113_02260788
	cmp r0, #1
	bne _0225D98C
	ldr r0, [sp, #0x28]
	movs r2, #1
	adds r1, r4, #3
	movs r3, #0x76
	str r2, [sp]
	bl FUN_0200723C
	add r1, sp, #0xc
	str r0, [sp, #8]
	blx FUN_020A7118
	ldr r0, [sp, #0xc]
	movs r1, #1
	ldr r0, [r0, #0x14]
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #0x14]
	adds r0, r4, #0
	str r0, [sp, #4]
	adds r0, #0x80
	str r0, [sp, #4]
	b _0225D9B6
_0225D98C:
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #0x76
	bl FUN_0200723C
	add r1, sp, #0xc
	str r0, [sp, #8]
	blx FUN_020A7118
	ldr r0, [sp, #0xc]
	movs r1, #0x80
	ldr r0, [r0, #0x14]
	blx FUN_020C2C54
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #0x14]
	str r4, [sp, #4]
	adds r4, #0x40
_0225D9B6:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _0225D9C2
	movs r5, #0x19
	lsls r5, r5, #0x16
	b _0225D9C6
_0225D9C2:
	movs r5, #0x66
	lsls r5, r5, #0x14
_0225D9C6:
	ldr r0, [r6]
	bl FUN_02021F98
	adds r6, r0, #0
	ldr r0, [sp, #0x2c]
	movs r2, #0x40
	lsls r7, r0, #2
	ldr r1, [r6, r7]
	ldr r0, [sp, #4]
	adds r1, r5, r1
	blx FUN_020C4B18
	ldr r1, [r6, r7]
	adds r5, #0x40
	adds r0, r4, #0
	adds r1, r5, r1
	movs r2, #0x40
	blx FUN_020C4B18
	ldr r0, [sp, #8]
	bl FUN_020181C4
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225D9F8: .4byte 0x000001ED
	thumb_func_end ov113_0225D938

	thumb_func_start ov113_0225D9FC
ov113_0225D9FC: @ 0x0225D9FC
	push {r3, r4, r5, lr}
	sub sp, #0x20
	ldr r3, _0225DA8C @ =0x022608BC
	adds r5, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x14
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	movs r0, #0x76
	bl FUN_020203AC
	adds r1, r5, #0
	adds r1, #0xcc
	str r0, [r1]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r1, #0x1f
	str r0, [sp, #8]
	ldr r2, _0225DA90 @ =0x022608B4
	ldr r3, _0225DA94 @ =0x00000FA4
	add r0, sp, #0x14
	lsls r1, r1, #0xe
	bl FUN_020206D0
	adds r2, r5, #0
	adds r2, #0xcc
	movs r0, #1
	movs r1, #0xe1
	ldr r2, [r2]
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_020203D4
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_02020A88
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_02020A90
	adds r1, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	ldr r2, _0225DA98 @ =0x00001555
	adds r0, r4, #0
	add r3, sp, #0x10
	bl FUN_0201E34C
	adds r0, r5, #0
	ldr r1, [sp, #0x10]
	adds r0, #0xd0
	str r1, [r0]
	ldr r0, [sp, #0xc]
	adds r5, #0xd4
	str r0, [r5]
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_0225DA8C: .4byte 0x022608BC
_0225DA90: .4byte 0x022608B4
_0225DA94: .4byte 0x00000FA4
_0225DA98: .4byte 0x00001555
	thumb_func_end ov113_0225D9FC

	thumb_func_start ov113_0225DA9C
ov113_0225DA9C: @ 0x0225DA9C
	ldr r3, _0225DAA4 @ =FUN_020203B8
	adds r0, #0xcc
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0225DAA4: .4byte FUN_020203B8
	thumb_func_end ov113_0225DA9C

	thumb_func_start ov113_0225DAA8
ov113_0225DAA8: @ 0x0225DAA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0225DAB8
	movs r2, #0x1c
	b _0225DABA
_0225DAB8:
	movs r2, #0x1b
_0225DABA:
	adds r0, r4, #0
	adds r0, #0xd8
	movs r3, #0x76
	bl FUN_020170D8
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0xe8
	adds r1, #0xd8
	bl FUN_02017258
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xe8
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r4, #0
	adds r0, #0xe8
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r4, #0xe8
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02017348
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov113_0225DAA8

	thumb_func_start ov113_0225DAFC
ov113_0225DAFC: @ 0x0225DAFC
	ldr r3, _0225DB04 @ =FUN_02017110
	adds r0, #0xd8
	bx r3
	nop
_0225DB04: .4byte FUN_02017110
	thumb_func_end ov113_0225DAFC

	thumb_func_start ov113_0225DB08
ov113_0225DB08: @ 0x0225DB08
	push {r4, lr}
	sub sp, #0x40
	adds r4, r0, #0
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
	blx FUN_020BB4C8
	bl FUN_020241B4
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_020203D4
	adds r1, r4, #0
	adds r1, #0xcc
	ldr r1, [r1]
	movs r0, #0
	bl FUN_02020854
	bl FUN_020203EC
	movs r0, #0
	ldr r2, _0225DBB8 @ =0xFFFFF000
	adds r1, r0, #0
	adds r3, r0, #0
	blx FUN_020AF51C
	ldr r1, _0225DBBC @ =0x0000739C
	movs r0, #0
	blx FUN_020AF558
	ldr r0, _0225DBC0 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF56C
	ldr r0, _0225DBC0 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF590
	add r0, sp, #0x28
	blx FUN_020AF4BC
	ldr r1, _0225DBC4 @ =0x021C5B48
	add r0, sp, #4
	blx FUN_020C4C88
	ldr r1, _0225DBC8 @ =0x021C5B0C
	movs r0, #0xa4
	ldr r2, [r1, #0x7c]
	bics r2, r0
	add r0, sp, #0x34
	str r2, [r1, #0x7c]
	blx FUN_020AF4EC
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	adds r0, r4, #0
	adds r0, #0xe8
	bl FUN_02017294
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov113_0225E4A0
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
	add sp, #0x40
	pop {r4, pc}
	nop
_0225DBB8: .4byte 0xFFFFF000
_0225DBBC: .4byte 0x0000739C
_0225DBC0: .4byte 0x00007FFF
_0225DBC4: .4byte 0x021C5B48
_0225DBC8: .4byte 0x021C5B0C
	thumb_func_end ov113_0225DB08

	thumb_func_start ov113_0225DBCC
ov113_0225DBCC: @ 0x0225DBCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r2, #1
	adds r6, r0, #0
	str r2, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x93
	str r0, [sp, #0x10]
	adds r1, r6, #0
	ldr r0, [r6, #8]
	adds r1, #0xb4
	movs r3, #2
	bl FUN_0201A7E8
	adds r0, r6, #0
	adds r0, #0xb4
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r4, r6, #0
	movs r5, #0
	ldr r7, _0225DC48 @ =0x022608C8
	adds r4, #0x34
	b _0225DC40
_0225DC06:
	lsls r3, r5, #1
	adds r0, r7, r3
	ldrb r0, [r0, #1]
	lsls r1, r5, #4
	movs r2, #5
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r3, [r7, r3]
	ldr r0, [r6, #8]
	adds r1, r4, r1
	bl FUN_0201A7E8
	lsls r0, r5, #4
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201ADA4
	adds r5, r5, #1
_0225DC40:
	cmp r5, #8
	blt _0225DC06
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225DC48: .4byte 0x022608C8
	thumb_func_end ov113_0225DBCC

	thumb_func_start ov113_0225DC4C
ov113_0225DC4C: @ 0x0225DC4C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xb4
	bl FUN_0201A8FC
	movs r4, #0
	adds r5, #0x34
_0225DC5A:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #8
	blt _0225DC5A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov113_0225DC4C

	thumb_func_start ov113_0225DC6C
ov113_0225DC6C: @ 0x0225DC6C
	push {r3, lr}
	sub sp, #8
	movs r2, #2
	ldr r1, _0225DC84 @ =ov113_0225DC88
	str r2, [sp]
	str r1, [sp, #4]
	movs r1, #0
	adds r3, r1, #0
	bl FUN_02024220
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_0225DC84: .4byte ov113_0225DC88
	thumb_func_end ov113_0225DC6C

	thumb_func_start ov113_0225DC88
ov113_0225DC88: @ 0x0225DC88
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _0225DCF4 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0225DCF8 @ =0xFFFFCFFD
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
	ldr r2, _0225DCFC @ =0x0000CFFB
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
	ldr r2, _0225DD00 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _0225DD04 @ =0xBFFF0000
	ldr r0, _0225DD08 @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0225DCF4: .4byte 0x04000008
_0225DCF8: .4byte 0xFFFFCFFD
_0225DCFC: .4byte 0x0000CFFB
_0225DD00: .4byte 0x00007FFF
_0225DD04: .4byte 0xBFFF0000
_0225DD08: .4byte 0x04000580
	thumb_func_end ov113_0225DC88

	thumb_func_start ov113_0225DD0C
ov113_0225DD0C: @ 0x0225DD0C
	ldr r3, _0225DD10 @ =FUN_020242C4
	bx r3
	.align 2, 0
_0225DD10: .4byte FUN_020242C4
	thumb_func_end ov113_0225DD0C

	thumb_func_start ov113_0225DD14
ov113_0225DD14: @ 0x0225DD14
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_022328F0
	movs r1, #0x5b
	lsls r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov113_0225DD14

	thumb_func_start ov113_0225DD24
ov113_0225DD24: @ 0x0225DD24
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	blx FUN_020C4CF4
	movs r0, #0x96
	strh r0, [r4, #2]
	movs r0, #0x1f
	strh r0, [r4]
	adds r0, #0xe2
	str r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov113_0225DD24

	thumb_func_start ov113_0225DD44
ov113_0225DD44: @ 0x0225DD44
	movs r1, #0x5a
	lsls r1, r1, #2
	adds r0, r0, r1
	bx lr
	thumb_func_end ov113_0225DD44

	thumb_func_start ov113_0225DD4C
ov113_0225DD4C: @ 0x0225DD4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r2, #0
	str r0, [sp]
	adds r4, r1, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x48
	blx FUN_020C4CF4
	adds r0, r4, #0
	bl FUN_0207A268
	str r0, [sp, #4]
	bl FUN_0207A0F8
	adds r7, r0, #0
	movs r6, #0
	cmp r7, #0
	ble _0225DDBC
_0225DD74:
	ldr r0, [sp, #4]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #0xae
	movs r2, #0
	adds r4, r0, #0
	bl FUN_02074470
	movs r1, #0
	strh r0, [r5, #2]
	adds r0, r4, #0
	adds r2, r1, #0
	bl FUN_02074470
	str r0, [r5, #4]
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	strb r0, [r5, #8]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl FUN_02074470
	adds r1, r0, #0
	ldr r0, [sp]
	bl ov113_0226072C
	strh r0, [r5]
	adds r6, r6, #1
	adds r5, #0xc
	cmp r6, r7
	blt _0225DD74
_0225DDBC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225DD4C

	thumb_func_start ov113_0225DDC0
ov113_0225DDC0: @ 0x0225DDC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r3, #0x59
	adds r4, r0, #0
	lsls r3, r3, #2
	adds r5, r1, #0
	ldr r1, [r4, r3]
	adds r6, r2, #0
	str r1, [sp]
	ldr r1, _0225DE88 @ =0x000019E0
	adds r2, r5, #0
	ldr r1, [r4, r1]
	str r1, [sp, #4]
	adds r1, r3, #0
	subs r3, r3, #4
	adds r1, #0x30
	ldr r3, [r4, r3]
	adds r1, r4, r1
	bl ov113_0225E398
	str r0, [sp, #0xc]
	cmp r0, #1
	bne _0225DE80
	adds r0, r6, #0
	bl FUN_02232B8C
	adds r6, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _0225DE7A
	ldr r3, _0225DE8C @ =0x0000099C
	lsls r1, r6, #1
	adds r0, r4, r3
	mov ip, r0
	mov r2, ip
	ldrh r0, [r5, #2]
	ldrh r2, [r2, r1]
	cmp r0, r2
	bne _0225DE1C
	adds r2, r4, r1
	adds r3, #0x10
	ldrh r7, [r5]
	ldrh r2, [r2, r3]
	cmp r7, r2
	beq _0225DE7A
_0225DE1C:
	mov r2, ip
	strh r0, [r2, r1]
	ldrh r2, [r5]
	ldr r0, _0225DE90 @ =0x000009AC
	adds r1, r4, r1
	strh r2, [r1, r0]
	subs r0, #0x3c
	movs r3, #0x59
	adds r7, r4, r0
	lsls r0, r6, #2
	str r0, [sp, #0x10]
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0225DE88 @ =0x000019E0
	subs r3, r3, #4
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	ldrh r0, [r5, #2]
	ldrb r1, [r5, #8]
	ldr r2, [r7, r2]
	ldr r3, [r4, r3]
	bl ov113_0225D938
	ldr r0, [sp, #0x10]
	movs r1, #1
	ldr r0, [r7, r0]
	bl FUN_0200D3F4
	adds r0, r6, #0
	adds r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, #0x22
	str r0, [sp]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r3, [r5]
	ldr r0, [r4, #0xc]
	movs r1, #1
	movs r2, #2
	bl FUN_020038B0
_0225DE7A:
	ldr r0, _0225DE94 @ =0x000005EB
	bl FUN_02005748
_0225DE80:
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225DE88: .4byte 0x000019E0
_0225DE8C: .4byte 0x0000099C
_0225DE90: .4byte 0x000009AC
_0225DE94: .4byte 0x000005EB
	thumb_func_end ov113_0225DDC0

	thumb_func_start ov113_0225DE98
ov113_0225DE98: @ 0x0225DE98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	bl FUN_02232B4C
	movs r7, #0
	b _0225DFD8
_0225DEAE:
	lsls r3, r7, #2
	movs r0, #0x17
	adds r1, r6, r3
	lsls r0, r0, #4
	ldr r2, [r1, r0]
	ldr r0, [sp, #0x28]
	ldr r1, [r0, r3]
	cmp r2, r1
	bne _0225DEC2
	b _0225DFC8
_0225DEC2:
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	beq _0225DF32
	str r1, [sp]
	ldr r3, [r6]
	adds r2, r6, #0
	ldr r0, [r6, #0x30]
	ldr r1, [r6, #0x2c]
	ldr r3, [r3]
	adds r2, #0x34
	bl ov113_02260620
	ldr r0, [r6, #8]
	movs r1, #6
	bl FUN_02019FE4
	str r0, [sp, #0x10]
	lsls r0, r7, #3
	ldr r1, _0225E02C @ =0x02260AD4
	str r0, [sp, #0x1c]
	adds r4, r1, r0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r0, r6, r0
	ldrh r5, [r4, #2]
	str r0, [sp, #0x20]
	b _0225DF18
_0225DEFA:
	ldrh r0, [r4, #4]
	ldr r1, _0225E02C @ =0x02260AD4
	lsls r3, r5, #5
	lsls r2, r0, #1
	ldr r0, [sp, #0x1c]
	ldrh r0, [r1, r0]
	ldr r1, [sp, #0x10]
	adds r0, r3, r0
	lsls r3, r0, #1
	ldr r0, [sp, #0x20]
	adds r1, r1, r3
	adds r0, r0, r3
	blx FUN_020C4B18
	adds r5, r5, #1
_0225DF18:
	ldrh r1, [r4, #2]
	ldrh r0, [r4, #6]
	adds r0, r1, r0
	cmp r5, r0
	blt _0225DEFA
	ldr r0, [r6, #8]
	movs r1, #6
	bl FUN_0201C3C0
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	b _0225DF98
_0225DF32:
	adds r0, r6, #0
	adds r0, #0x34
	adds r1, r7, #0
	bl ov113_02260714
	lsls r0, r7, #1
	ldr r2, _0225E030 @ =0x0000099C
	adds r3, r6, r0
	movs r1, #0
	adds r0, r2, #0
	strh r1, [r3, r2]
	adds r0, #0x10
	strh r1, [r3, r0]
	lsls r0, r7, #2
	adds r0, r6, r0
	subs r2, #0x2c
	ldr r0, [r0, r2]
	bl FUN_0200D3F4
	ldr r3, _0225E02C @ =0x02260AD4
	lsls r4, r7, #3
	adds r0, r3, r4
	ldrh r1, [r0, #2]
	movs r2, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	ldrh r1, [r0, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	ldrh r0, [r0, #6]
	movs r1, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldrh r3, [r3, r4]
	ldr r0, [r6, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	ldr r0, [r6, #8]
	movs r1, #6
	bl FUN_0201C3C0
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
_0225DF98:
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x28]
	lsls r2, r7, #2
	ldr r0, [r0, r2]
	cmp r1, r0
	bne _0225DFC8
	ldr r3, _0225E034 @ =0x02260914
	ldr r0, _0225E038 @ =0x0000096C
	ldrsh r1, [r3, r2]
	adds r3, r3, r2
	movs r2, #2
	ldrsh r2, [r3, r2]
	movs r3, #0x11
	ldr r0, [r6, r0]
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, _0225E038 @ =0x0000096C
	movs r1, #1
	ldr r0, [r6, r0]
	bl FUN_0200D3F4
_0225DFC8:
	ldr r1, [sp, #0x28]
	lsls r0, r7, #2
	ldr r2, [r1, r0]
	adds r1, r6, r0
	movs r0, #0x17
	lsls r0, r0, #4
	str r2, [r1, r0]
	adds r7, r7, #1
_0225DFD8:
	cmp r7, #8
	bge _0225DFDE
	b _0225DEAE
_0225DFDE:
	movs r0, #0
	movs r1, #0x17
	adds r7, r0, #0
	lsls r1, r1, #4
	subs r2, r0, #1
	b _0225DFF8
_0225DFEA:
	lsls r3, r7, #2
	adds r3, r6, r3
	ldr r3, [r3, r1]
	cmp r3, r2
	beq _0225DFF6
	adds r0, r0, #1
_0225DFF6:
	adds r7, r7, #1
_0225DFF8:
	cmp r7, #8
	blt _0225DFEA
	ldr r1, _0225E03C @ =0x000008D3
	strb r0, [r6, r1]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0225E012
	ldr r0, _0225E040 @ =0x000005E4
	bl FUN_02005748
	add sp, #0x2c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225E012:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _0225E024
	ldr r0, _0225E040 @ =0x000005E4
	bl FUN_02005748
	add sp, #0x2c
	movs r0, #2
	pop {r4, r5, r6, r7, pc}
_0225E024:
	movs r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0225E02C: .4byte 0x02260AD4
_0225E030: .4byte 0x0000099C
_0225E034: .4byte 0x02260914
_0225E038: .4byte 0x0000096C
_0225E03C: .4byte 0x000008D3
_0225E040: .4byte 0x000005E4
	thumb_func_end ov113_0225DE98

	thumb_func_start ov113_0225E044
ov113_0225E044: @ 0x0225E044
	push {r3, lr}
	adds r3, r0, #0
	str r1, [sp]
	adds r2, r3, #0
	ldr r0, [r3, #0x30]
	ldr r1, [r3, #0x2c]
	ldr r3, [r3]
	adds r2, #0x34
	ldr r3, [r3]
	bl ov113_02260620
	pop {r3, pc}
	thumb_func_end ov113_0225E044

	thumb_func_start ov113_0225E05C
ov113_0225E05C: @ 0x0225E05C
	ldr r3, _0225E064 @ =ov113_02260714
	adds r0, #0x34
	bx r3
	nop
_0225E064: .4byte ov113_02260714
	thumb_func_end ov113_0225E05C

	thumb_func_start ov113_0225E068
ov113_0225E068: @ 0x0225E068
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	ldr r4, _0225E0CC @ =0x02260AA0
	adds r5, r0, #0
	adds r6, r1, #0
	add r3, sp, #0
	movs r2, #6
_0225E076:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225E076
	ldr r0, [r4]
	movs r4, #0
	str r0, [r3]
	movs r0, #0x99
	adds r2, r5, #0
	lsls r0, r0, #4
_0225E08A:
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0225E0B2
	lsls r1, r6, #5
	adds r1, #0x10
	add r0, sp, #0
	strh r1, [r0]
	movs r1, #0xb0
	strh r1, [r0, #2]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	add r2, sp, #0
	bl FUN_0200CE6C
	lsls r1, r4, #2
	adds r2, r5, r1
	movs r1, #0x99
	lsls r1, r1, #4
	str r0, [r2, r1]
	b _0225E0BA
_0225E0B2:
	adds r4, r4, #1
	adds r2, r2, #4
	cmp r4, #3
	blt _0225E08A
_0225E0BA:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov113_0225E0D4
	ldr r0, _0225E0D0 @ =0x000005E5
	bl FUN_02005748
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0225E0CC: .4byte 0x02260AA0
_0225E0D0: .4byte 0x000005E5
	thumb_func_end ov113_0225E068

	thumb_func_start ov113_0225E0D4
ov113_0225E0D4: @ 0x0225E0D4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r4, r1, #0
	movs r1, #2
	bl FUN_02003164
	adds r6, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_0200316C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r0, #0x22
	adds r1, #0x22
	movs r2, #0xc
	blx FUN_020C4B18
	adds r4, #0x11
	movs r0, #0
	lsls r1, r4, #1
	str r0, [sp]
	adds r0, r6, r1
	adds r1, r5, r1
	movs r2, #1
	movs r3, #6
	bl FUN_0200393C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov113_0225E0D4

	thumb_func_start ov113_0225E118
ov113_0225E118: @ 0x0225E118
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	movs r7, #0x99
	adds r5, r0, #0
	adds r6, r4, #0
	lsls r7, r7, #4
_0225E124:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0225E150
	bl FUN_0200D3B8
	cmp r0, #0
	bne _0225E144
	movs r0, #0x99
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0200D0F4
	movs r0, #0x99
	lsls r0, r0, #4
	str r6, [r5, r0]
	b _0225E150
_0225E144:
	movs r0, #0x99
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0200D324
_0225E150:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0225E124
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov113_0225E118

	thumb_func_start ov113_0225E15C
ov113_0225E15C: @ 0x0225E15C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r4, [sp, #0x9c]
	cmp r0, #0
	beq _0225E174
	bl FUN_02022974
_0225E174:
	ldr r0, [r6, #8]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r2, sp, #0x28
	add r3, sp, #0x24
	ldr r7, [r6, #0x20]
	bl ov113_0225E264
	add r0, sp, #0x38
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x20]
	lsls r2, r2, #0x18
	add r1, sp, #0x38
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
	add r0, sp, #0x38
	str r3, [sp, #0x14]
	bl FUN_0201D7E0
	add r0, sp, #0x38
	movs r1, #1
	movs r2, #0x76
	bl FUN_02012898
	movs r1, #1
	adds r2, r1, #0
	add r3, sp, #0x2c
	bl FUN_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _0225E1E2
	ldr r1, [sp, #0x28]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r4, r4, r0
_0225E1E2:
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x48]
	add r0, sp, #0x38
	str r0, [sp, #0x4c]
	adds r0, r7, #0
	bl FUN_0200D9B0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x98]
	adds r0, r7, #0
	bl FUN_0200D04C
	movs r1, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0xa0]
	str r4, [sp, #0x60]
	subs r0, #8
	str r0, [sp, #0x64]
	movs r0, #0x33
	str r0, [sp, #0x6c]
	movs r0, #1
	str r0, [sp, #0x70]
	movs r0, #0x76
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
	subs r2, #8
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
	ldr r0, [sp, #0x28]
	strh r0, [r5, #0x10]
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225E15C

	thumb_func_start ov113_0225E250
ov113_0225E250: @ 0x0225E250
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02012870
	adds r0, r4, #4
	bl FUN_0201EE28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov113_0225E250

	thumb_func_start ov113_0225E264
ov113_0225E264: @ 0x0225E264
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
	beq _0225E28C
	adds r5, r5, #1
_0225E28C:
	str r4, [r6]
	str r5, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov113_0225E264

	thumb_func_start ov113_0225E294
ov113_0225E294: @ 0x0225E294
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0225E30C @ =0x000019D4
	adds r5, r0, #0
	adds r0, r1, #4
	ldr r2, [r5, r1]
	ldr r0, [r5, r0]
	cmp r2, r0
	bne _0225E2BE
	adds r2, #0x88
	str r2, [r5, r1]
	movs r0, #2
	ldr r2, [r5, r1]
	lsls r0, r0, #0xc
	cmp r2, r0
	ble _0225E2B4
	str r0, [r5, r1]
_0225E2B4:
	ldr r0, _0225E30C @ =0x000019D4
	ldr r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	b _0225E2DA
_0225E2BE:
	adds r0, r1, #4
	ldr r2, [r5, r0]
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r5, r0]
	subs r2, r2, r0
	adds r0, r1, #4
	str r2, [r5, r0]
	ldr r2, [r5, r1]
	ldr r0, [r5, r0]
	cmp r0, r2
	bge _0225E2DA
	adds r0, r1, #4
	str r2, [r5, r0]
_0225E2DA:
	ldr r0, _0225E310 @ =0x000019D8
	movs r6, #0
	ldr r0, [r5, r0]
	movs r4, #0x10
	asrs r1, r0, #8
	movs r0, #0x20
	subs r0, r0, r1
	adds r0, #0xb0
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
_0225E2EE:
	ldr r0, _0225E314 @ =0x00000924
	lsls r1, r4, #0x10
	movs r3, #0x11
	ldr r0, [r5, r0]
	asrs r1, r1, #0x10
	adds r2, r7, #0
	lsls r3, r3, #0x10
	bl FUN_0200D500
	adds r6, r6, #1
	adds r4, #0x20
	adds r5, r5, #4
	cmp r6, #6
	blt _0225E2EE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225E30C: .4byte 0x000019D4
_0225E310: .4byte 0x000019D8
_0225E314: .4byte 0x00000924
	thumb_func_end ov113_0225E294

	thumb_func_start ov113_0225E318
ov113_0225E318: @ 0x0225E318
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0225E360 @ =0x000019D4
	adds r4, r1, #0
	ldr r1, [r5, r0]
	cmp r1, r4
	bge _0225E32A
	movs r0, #0
	pop {r3, r4, r5, pc}
_0225E32A:
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, r1
	bge _0225E33E
	bl FUN_02022974
	ldr r0, _0225E360 @ =0x000019D4
	ldr r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
_0225E33E:
	ldr r1, _0225E360 @ =0x000019D4
	ldr r0, [r5, r1]
	subs r0, r0, r4
	str r0, [r5, r1]
	adds r0, r1, #4
	ldr r2, [r5, r0]
	ldr r0, [r5, r1]
	adds r1, #8
	subs r2, r2, r0
	asrs r0, r2, #1
	lsrs r0, r0, #0x1e
	adds r0, r2, r0
	asrs r0, r0, #2
	str r0, [r5, r1]
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0225E360: .4byte 0x000019D4
	thumb_func_end ov113_0225E318

	thumb_func_start ov113_0225E364
ov113_0225E364: @ 0x0225E364
	bx lr
	.align 2, 0
	thumb_func_end ov113_0225E364

	thumb_func_start ov113_0225E368
ov113_0225E368: @ 0x0225E368
	ldr r3, _0225E370 @ =FUN_020C4CF4
	movs r1, #0
	ldr r2, _0225E374 @ =0x00000744
	bx r3
	.align 2, 0
_0225E370: .4byte FUN_020C4CF4
_0225E374: .4byte 0x00000744
	thumb_func_end ov113_0225E368

	thumb_func_start ov113_0225E378
ov113_0225E378: @ 0x0225E378
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0225E37E:
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _0225E38C
	bl ov113_0225EB0C
_0225E38C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x80
	blt _0225E37E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov113_0225E378

	thumb_func_start ov113_0225E398
ov113_0225E398: @ 0x0225E398
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r4, _0225E3EC @ =0x0000073C
	ldrb r4, [r1, r4]
	cmp r4, #0
	beq _0225E3AA
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_0225E3AA:
	movs r4, #0
	adds r5, r1, #0
_0225E3AE:
	adds r6, r5, #0
	adds r6, #0xb4
	ldr r6, [r6]
	cmp r6, #0
	bne _0225E3DE
	ldr r6, [sp, #0x18]
	adds r5, r1, #0
	str r6, [sp]
	ldr r6, [sp, #0x1c]
	adds r5, #0xb4
	lsls r4, r4, #2
	str r6, [sp, #4]
	bl ov113_0225E6B8
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0225E3D8
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225E3D8:
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_0225E3DE:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x80
	blt _0225E3AE
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225E3EC: .4byte 0x0000073C
	thumb_func_end ov113_0225E398

	thumb_func_start ov113_0225E3F0
ov113_0225E3F0: @ 0x0225E3F0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	ldr r1, _0225E48C @ =0x0000073D
	adds r7, r0, #0
	ldrb r1, [r7, r1]
	cmp r1, #0
	beq _0225E406
	adds r1, r7, #0
	adds r1, #0xb0
	bl ov113_0225FD80
_0225E406:
	ldr r0, _0225E490 @ =0x0000073C
	ldrb r3, [r7, r0]
	cmp r3, #0
	beq _0225E426
	adds r2, r4, #0
	lsls r4, r3, #2
	ldr r3, _0225E494 @ =0x02260C0C
	adds r0, r7, #0
	ldr r3, [r3, r4]
	adds r1, r7, #0
	blx r3
	cmp r0, #1
	bne _0225E426
	ldr r0, _0225E490 @ =0x0000073C
	movs r1, #0
	strb r1, [r7, r0]
_0225E426:
	movs r4, #0
	adds r6, r7, #0
_0225E42A:
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r5, [r0]
	cmp r5, #0
	beq _0225E482
	movs r0, #9
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x18
	bne _0225E45C
	lsls r0, r0, #8
	lsrs r1, r0, #0x18
	beq _0225E45C
	movs r0, #9
	lsls r0, r0, #6
	ldr r2, [r5, r0]
	ldr r0, _0225E498 @ =0xFFFF00FF
	lsls r1, r1, #0x18
	ands r0, r2
	lsrs r1, r1, #0x10
	orrs r1, r0
	movs r0, #9
	lsls r0, r0, #6
	str r1, [r5, r0]
_0225E45C:
	movs r2, #9
	lsls r2, r2, #6
	ldr r2, [r5, r2]
	movs r3, #0xc
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	muls r3, r2, r3
	ldr r2, _0225E49C @ =0x02260CAC
	adds r0, r7, #0
	ldr r2, [r2, r3]
	adds r1, r5, #0
	blx r2
	cmp r0, #1
	bne _0225E482
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov113_0225EB20
_0225E482:
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, #0x80
	blt _0225E42A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225E48C: .4byte 0x0000073D
_0225E490: .4byte 0x0000073C
_0225E494: .4byte 0x02260C0C
_0225E498: .4byte 0xFFFF00FF
_0225E49C: .4byte 0x02260CAC
	thumb_func_end ov113_0225E3F0

	thumb_func_start ov113_0225E4A0
ov113_0225E4A0: @ 0x0225E4A0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _0225E4E4 @ =0x02260CAC
	movs r4, #0
	adds r5, r6, #0
_0225E4AA:
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r1, [r0]
	cmp r1, #0
	beq _0225E4D8
	movs r0, #9
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	movs r0, #0xc
	muls r0, r2, r0
	adds r0, r7, r0
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0225E4D0
	adds r0, r6, #0
	blx r2
	b _0225E4D8
_0225E4D0:
	adds r1, #0x1c
	adds r0, r1, #0
	bl FUN_02017294
_0225E4D8:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x80
	blt _0225E4AA
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E4E4: .4byte 0x02260CAC
	thumb_func_end ov113_0225E4A0

	thumb_func_start ov113_0225E4E8
ov113_0225E4E8: @ 0x0225E4E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	movs r6, #9
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r1, r0, #0
	adds r2, r7, #0
	adds r3, r7, #0
	lsls r6, r6, #6
_0225E4FE:
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _0225E536
	ldr r4, [r0, r6]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x18
	beq _0225E520
	movs r4, #0xad
	lsls r4, r4, #2
	str r0, [r3, r4]
	ldr r0, [sp, #0x10]
	adds r3, r3, #4
	adds r0, r0, #1
	str r0, [sp, #0x10]
	b _0225E536
_0225E520:
	ldr r4, [sp, #0xc]
	movs r5, #0x7f
	subs r4, r5, r4
	lsls r4, r4, #2
	adds r5, r7, r4
	movs r4, #0xad
	lsls r4, r4, #2
	str r0, [r5, r4]
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
_0225E536:
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #0x80
	blt _0225E4FE
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0225E5F2
_0225E548:
	ldr r0, [sp, #4]
	movs r1, #0x7f
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0xad
	lsls r0, r0, #2
	ldr r4, [r1, r0]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0225E5E6
	adds r5, r7, #0
_0225E564:
	movs r0, #0xad
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #9
	str r0, [sp]
	ldr r1, [sp]
	lsls r3, r3, #6
	adds r6, r1, #0
	ldr r3, [r6, r3]
	movs r6, #0xc
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x18
	muls r6, r3, r6
	ldr r3, _0225E650 @ =0x02260CAC
	adds r0, r7, #0
	adds r3, r3, r6
	ldr r3, [r3, #8]
	adds r2, r4, #0
	blx r3
	cmp r0, #1
	bne _0225E5D8
	movs r1, #9
	ldr r2, [sp]
	lsls r1, r1, #6
	ldr r1, [r2, r1]
	adds r0, r4, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	bl ov113_0225EEBC
	cmp r0, #1
	bne _0225E5D8
	movs r0, #9
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0225E5D8
	movs r1, #9
	lsls r1, r1, #6
	ldr r2, [r4, r1]
	ldr r0, _0225E654 @ =0x00FFFFFF
	ands r0, r2
	ldr r2, [sp]
	ldr r2, [r2, r1]
	lsrs r2, r2, #0x18
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r4, r1]
	ldr r2, [sp]
	adds r0, r7, #0
	ldr r2, [r2, r1]
	lsrs r1, r2, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	bl ov113_0225EE0C
	b _0225E5E6
_0225E5D8:
	ldr r0, [sp, #8]
	adds r5, r5, #4
	adds r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #8]
	cmp r1, r0
	blt _0225E564
_0225E5E6:
	ldr r0, [sp, #4]
	adds r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	cmp r1, r0
	blt _0225E548
_0225E5F2:
	ldr r0, _0225E658 @ =0x0000073D
	ldrb r1, [r7, r0]
	cmp r1, #0
	beq _0225E64C
	adds r0, r0, #1
	ldrb r0, [r7, r0]
	cmp r0, #1
	bne _0225E64C
	movs r5, #0
	adds r6, r7, #0
_0225E606:
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r4, [r0]
	cmp r4, #0
	beq _0225E63E
	ldr r0, _0225E658 @ =0x0000073D
	ldrb r1, [r7, r0]
	movs r0, #9
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x18
	cmp r2, r1
	beq _0225E63E
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	cmp r0, r1
	beq _0225E63E
	adds r0, r4, #0
	bl ov113_0225EEBC
	cmp r0, #0
	bne _0225E63E
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov113_0225EB20
_0225E63E:
	adds r5, r5, #1
	adds r6, r6, #4
	cmp r5, #0x80
	blt _0225E606
	adds r0, r7, #0
	bl ov113_0225EE98
_0225E64C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225E650: .4byte 0x02260CAC
_0225E654: .4byte 0x00FFFFFF
_0225E658: .4byte 0x0000073D
	thumb_func_end ov113_0225E4E8

	thumb_func_start ov113_0225E65C
ov113_0225E65C: @ 0x0225E65C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0225E6B4 @ =0x000004B4
	movs r4, #0
	str r1, [sp]
	adds r5, r6, r0
	adds r7, r4, #0
_0225E66A:
	ldr r0, [r5]
	cmp r0, #0
	beq _0225E688
	ldr r1, [r0, #4]
	blx FUN_020C2C54
	ldr r0, [r5]
	movs r1, #1
	blx FUN_020AE900
	ldr r0, [r5]
	movs r1, #1
	blx FUN_020AEA20
	str r7, [r5]
_0225E688:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x20
	blt _0225E66A
	movs r1, #0x1d
	lsls r1, r1, #6
	ldrb r0, [r6, r1]
	cmp r0, #0
	beq _0225E6B2
	ldr r0, [sp]
	cmp r0, #3
	beq _0225E6B2
	adds r1, r1, #2
	ldrsh r1, [r6, r1]
	movs r0, #0
	bl FUN_0200F44C
	movs r0, #0x1d
	movs r1, #0
	lsls r0, r0, #6
	strb r1, [r6, r0]
_0225E6B2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225E6B4: .4byte 0x000004B4
	thumb_func_end ov113_0225E65C

	thumb_func_start ov113_0225E6B8
ov113_0225E6B8: @ 0x0225E6B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #8]
	movs r1, #0x91
	adds r7, r0, #0
	movs r0, #0x76
	lsls r1, r1, #2
	adds r5, r2, #0
	str r3, [sp, #0xc]
	bl FUN_02018144
	movs r2, #0x91
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r2, #9
	lsls r2, r2, #6
	ldr r1, [r4, r2]
	ldr r0, _0225E770 @ =0x00FFFFFF
	adds r6, r5, #0
	ands r1, r0
	lsls r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, r2]
	ldm r6!, {r0, r1}
	adds r3, r4, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	subs r2, #0x53
	str r0, [r3]
	ldrh r0, [r4, #2]
	cmp r0, r2
	bls _0225E706
	bl FUN_02022974
	movs r0, #0x84
	strh r0, [r4, #2]
_0225E706:
	ldr r0, [sp, #0x34]
	str r4, [sp]
	str r0, [sp, #4]
	adds r1, r4, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x30]
	adds r1, #0xc
	bl ov113_0225E774
	cmp r0, #0
	bne _0225E724
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225E724:
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x1c
	adds r1, #0xc
	bl FUN_02017258
	add r0, sp, #0x10
	str r0, [sp]
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #0xa]
	adds r0, r7, #0
	add r3, sp, #0x14
	bl ov113_0225EB64
	adds r0, r4, #0
	movs r3, #1
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	adds r0, #0x1c
	lsls r3, r3, #0x10
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r4, #0
	adds r0, #0x1c
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #0
	bl FUN_02017348
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225E770: .4byte 0x00FFFFFF
	thumb_func_end ov113_0225E6B8

	thumb_func_start ov113_0225E774
ov113_0225E774: @ 0x0225E774
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r2, #0
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	movs r2, #0
	adds r0, r4, #0
	movs r1, #0x1d
	movs r3, #0x76
	str r2, [sp]
	bl FUN_0200723C
	str r0, [r5]
	cmp r0, #0
	bne _0225E798
	bl FUN_02022974
_0225E798:
	ldr r0, [r5]
	blx FUN_020B3C0C
	str r0, [r5, #4]
	cmp r0, #0
	beq _0225E7C4
	adds r1, r0, #0
	adds r1, #8
	beq _0225E7B8
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _0225E7B8
	ldrh r2, [r0, #0xe]
	adds r1, r1, r2
	adds r1, r1, #4
	b _0225E7BA
_0225E7B8:
	movs r1, #0
_0225E7BA:
	cmp r1, #0
	beq _0225E7C4
	ldr r1, [r1]
	adds r0, r0, r1
	b _0225E7C6
_0225E7C4:
	movs r0, #0
_0225E7C6:
	str r0, [r5, #8]
	ldr r0, [r5]
	blx FUN_020B3C1C
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0225E846
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r1, [sp]
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov113_0225E920
	ldr r0, [r5, #0xc]
	bl ov113_0225E8B0
	adds r4, r0, #0
	beq _0225E7F8
	ldr r1, [r5, #0xc]
	adds r0, r7, #0
	bl ov113_0225E854
	cmp r0, #0
	bne _0225E83E
_0225E7F8:
	cmp r4, #1
	bne _0225E822
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	add r2, sp, #4
	blx FUN_020AE9B8
	ldr r1, _0225E84C @ =0x02100DF0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	blx r1
	ldr r1, _0225E84C @ =0x02100DF0
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
	ldr r0, [r5, #0xc]
	blx FUN_020AEA70
	ldr r1, _0225E850 @ =0x02100DF8
	ldr r1, [r1]
	blx r1
_0225E822:
	ldr r0, [r5]
	cmp r0, #0
	beq _0225E82C
	bl FUN_020181C4
_0225E82C:
	movs r1, #0x10
	movs r0, #0
_0225E830:
	strb r0, [r5]
	adds r5, r5, #1
	subs r1, r1, #1
	bne _0225E830
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0225E83E:
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	bl FUN_0201CBB0
_0225E846:
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225E84C: .4byte 0x02100DF0
_0225E850: .4byte 0x02100DF8
	thumb_func_end ov113_0225E774

	thumb_func_start ov113_0225E854
ov113_0225E854: @ 0x0225E854
	push {r4, r5}
	ldr r2, _0225E880 @ =0x000004B4
	movs r4, #0
	adds r5, r0, #0
_0225E85C:
	ldr r3, [r5, r2]
	cmp r3, #0
	bne _0225E870
	lsls r2, r4, #2
	adds r2, r0, r2
	ldr r0, _0225E880 @ =0x000004B4
	str r1, [r2, r0]
	movs r0, #1
	pop {r4, r5}
	bx lr
_0225E870:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x20
	blt _0225E85C
	movs r0, #0
	pop {r4, r5}
	bx lr
	nop
_0225E880: .4byte 0x000004B4
	thumb_func_end ov113_0225E854

	thumb_func_start ov113_0225E884
ov113_0225E884: @ 0x0225E884
	push {r4, r5}
	ldr r2, _0225E8AC @ =0x000004B4
	movs r4, #0
	adds r5, r0, #0
_0225E88C:
	ldr r3, [r5, r2]
	cmp r3, r1
	bne _0225E8A0
	lsls r1, r4, #2
	adds r1, r0, r1
	ldr r0, _0225E8AC @ =0x000004B4
	movs r2, #0
	str r2, [r1, r0]
	pop {r4, r5}
	bx lr
_0225E8A0:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x20
	blt _0225E88C
	pop {r4, r5}
	bx lr
	.align 2, 0
_0225E8AC: .4byte 0x000004B4
	thumb_func_end ov113_0225E884

	thumb_func_start ov113_0225E8B0
ov113_0225E8B0: @ 0x0225E8B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	str r1, [r5, #8]
	blx FUN_020AE8C4
	adds r4, r0, #0
	adds r0, r5, #0
	blx FUN_020AEA04
	ldr r3, _0225E914 @ =0x02100DEC
	movs r1, #0
	adds r6, r0, #0
	ldr r3, [r3]
	adds r0, r4, #0
	adds r2, r1, #0
	blx r3
	adds r4, r0, #0
	bne _0225E8DA
	movs r0, #0
	pop {r4, r5, r6, pc}
_0225E8DA:
	ldr r3, _0225E918 @ =0x02100DF4
	movs r1, #2
	ldrh r2, [r5, #0x20]
	lsls r1, r1, #0xe
	ldr r3, [r3]
	ands r1, r2
	adds r0, r6, #0
	movs r2, #0
	blx r3
	adds r6, r0, #0
	bne _0225E8FC
	ldr r1, _0225E91C @ =0x02100DF0
	adds r0, r4, #0
	ldr r1, [r1]
	blx r1
	movs r0, #0
	pop {r4, r5, r6, pc}
_0225E8FC:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	blx FUN_020AE8EC
	adds r0, r5, #0
	adds r1, r6, #0
	blx FUN_020AEA18
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_0225E914: .4byte 0x02100DEC
_0225E918: .4byte 0x02100DF4
_0225E91C: .4byte 0x02100DF0
	thumb_func_end ov113_0225E8B0

	thumb_func_start ov113_0225E920
ov113_0225E920: @ 0x0225E920
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r4, r1, #0
	adds r1, r3, #0
	str r0, [sp, #4]
	adds r5, r2, #0
	ldrh r0, [r3, #2]
	ldrb r1, [r1, #8]
	ldr r2, [sp, #0x38]
	str r3, [sp, #8]
	bl ov113_02260788
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x14]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E964
	movs r2, #1
	ldr r1, [sp, #8]
	str r2, [sp]
	ldrh r1, [r1, #2]
	adds r0, r5, #0
	movs r3, #0x76
	adds r1, r1, #3
	bl FUN_0200723C
	add r1, sp, #0x20
	str r0, [sp, #0x18]
	blx FUN_020A7118
	b _0225E97C
_0225E964:
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #0x76
	bl FUN_0200723C
	add r1, sp, #0x20
	str r0, [sp, #0x18]
	blx FUN_020A7118
_0225E97C:
	ldr r1, [sp, #0x1c]
	movs r0, #0
	movs r2, #0x40
	blx FUN_020C4AF0
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r1, [r0, #0x14]
	movs r0, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_0225E992:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	bhi _0225E9FC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225E9A4: @ jump table
	.2byte _0225E9AC - _0225E9A4 - 2 @ case 0
	.2byte _0225E9BE - _0225E9A4 - 2 @ case 1
	.2byte _0225E9D4 - _0225E9A4 - 2 @ case 2
	.2byte _0225E9E8 - _0225E9A4 - 2 @ case 3
_0225E9AC:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E9B8
	ldr r1, [sp, #0xc]
	adds r1, #0x80
	b _0225E9BA
_0225E9B8:
	ldr r1, [sp, #0xc]
_0225E9BA:
	ldr r2, [sp, #0x1c]
	b _0225E9FC
_0225E9BE:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E9CA
	ldr r1, [sp, #0xc]
	adds r1, #0xa0
	b _0225E9CE
_0225E9CA:
	ldr r1, [sp, #0xc]
	adds r1, #0x20
_0225E9CE:
	ldr r0, [sp, #0x1c]
	adds r2, r0, #2
	b _0225E9FC
_0225E9D4:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E9DE
	ldr r1, [sp, #0xc]
	b _0225E9E2
_0225E9DE:
	ldr r1, [sp, #0xc]
	adds r1, #0x40
_0225E9E2:
	ldr r2, [sp, #0x1c]
	adds r2, #0x20
	b _0225E9FC
_0225E9E8:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E9F4
	ldr r1, [sp, #0xc]
	adds r1, #0x20
	b _0225E9F8
_0225E9F4:
	ldr r1, [sp, #0xc]
	adds r1, #0x60
_0225E9F8:
	ldr r2, [sp, #0x1c]
	adds r2, #0x22
_0225E9FC:
	movs r5, #0
	mov ip, r5
_0225EA00:
	movs r0, #0
	adds r7, r0, #0
_0225EA04:
	ldrb r4, [r1, r5]
	movs r3, #0xf
	tst r3, r4
	beq _0225EA16
	movs r3, #1
	ldrh r4, [r2]
	lsls r3, r0
	orrs r3, r4
	strh r3, [r2]
_0225EA16:
	ldrb r4, [r1, r5]
	movs r3, #0xf0
	tst r3, r4
	beq _0225EA2A
	ldrh r6, [r2]
	adds r4, r0, #2
	movs r3, #1
	lsls r3, r4
	orrs r3, r6
	strh r3, [r2]
_0225EA2A:
	adds r7, r7, #1
	adds r0, r0, #4
	adds r5, r5, #1
	cmp r7, #4
	blt _0225EA04
	mov r0, ip
	adds r0, r0, #1
	adds r2, r2, #4
	mov ip, r0
	cmp r0, #8
	blt _0225EA00
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0225E992
	ldr r0, [sp, #8]
	ldrh r2, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x38]
	adds r0, r0, r1
	strh r2, [r0, #2]
	ldr r0, [sp, #0x18]
	bl FUN_020181C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225E920

	thumb_func_start ov113_0225EA60
ov113_0225EA60: @ 0x0225EA60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x14]
	adds r4, r1, #0
	str r0, [sp, #8]
	movs r0, #0x76
	movs r1, #0x40
	bl FUN_02018144
	str r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	movs r2, #0x40
	adds r0, r1, r0
	ldr r1, [sp, #4]
	blx FUN_020C4B18
	ldr r2, [sp]
	ldr r1, [sp, #8]
	movs r0, #0
	adds r1, r2, r1
	movs r2, #0x40
	blx FUN_020C4AF0
	cmp r4, #3
	beq _0225EA9C
	cmp r4, #4
	beq _0225EACC
	b _0225EB02
_0225EA9C:
	ldr r3, [sp, #4]
	movs r2, #0x1e
	movs r7, #0
	movs r5, #3
_0225EAA4:
	ldr r4, [sp]
	ldr r0, [sp, #8]
	movs r1, #0
	adds r4, r4, r0
_0225EAAC:
	ldr r6, [r3]
	ldr r0, [r4]
	lsrs r6, r1
	ands r6, r5
	lsls r6, r2
	orrs r0, r6
	adds r1, r1, #2
	stm r4!, {r0}
	cmp r1, #0x20
	blt _0225EAAC
	adds r7, r7, #1
	subs r2, r2, #2
	adds r3, r3, #4
	cmp r7, #0x10
	blt _0225EAA4
	b _0225EB02
_0225EACC:
	ldr r2, [sp]
	ldr r0, [sp, #8]
	movs r3, #0
	adds r0, r2, r0
	adds r0, #0x3c
	ldr r1, [sp, #4]
	adds r7, r3, #0
	mov ip, r0
	movs r6, #3
_0225EADE:
	movs r4, #0
	mov r2, ip
_0225EAE2:
	ldr r5, [r1]
	ldr r0, [r2]
	lsrs r5, r4
	ands r5, r6
	lsls r5, r3
	orrs r0, r5
	str r0, [r2]
	adds r4, r4, #2
	subs r2, r2, #4
	cmp r4, #0x20
	blt _0225EAE2
	adds r7, r7, #1
	adds r3, r3, #2
	adds r1, r1, #4
	cmp r7, #0x10
	blt _0225EADE
_0225EB02:
	ldr r0, [sp, #4]
	bl FUN_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225EA60

	thumb_func_start ov113_0225EB0C
ov113_0225EB0C: @ 0x0225EB0C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc
	bl FUN_02017110
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov113_0225EB0C

	thumb_func_start ov113_0225EB20
ov113_0225EB20: @ 0x0225EB20
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #9
	adds r4, r1, #0
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	adds r6, r2, #0
	lsls r1, r0, #0x1c
	lsrs r1, r1, #0x1c
	beq _0225EB3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0225EB44
_0225EB3C:
	ldr r1, [r4, #0x18]
	adds r0, r5, #0
	bl ov113_0225E884
_0225EB44:
	movs r1, #9
	lsls r1, r1, #6
	ldr r1, [r4, r1]
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl ov113_0225EE78
	adds r0, r4, #0
	bl ov113_0225EB0C
	lsls r0, r6, #2
	adds r0, r5, r0
	movs r1, #0
	adds r0, #0xb4
	str r1, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov113_0225EB20

	thumb_func_start ov113_0225EB64
ov113_0225EB64: @ 0x0225EB64
	push {r4, r5, r6, r7}
	adds r0, r2, #0
	asrs r2, r1, #3
	lsrs r2, r2, #0x1c
	adds r2, r1, r2
	adds r5, r3, #0
	asrs r3, r2, #4
	ldr r4, [sp, #0x10]
	cmp r3, #0x11
	blo _0225EB7A
	movs r3, #0x10
_0225EB7A:
	ldr r2, _0225EBF4 @ =0x02260C68
	lsls r6, r3, #2
	ldr r7, [r2, r6]
	cmp r3, #0x10
	str r7, [r5]
	bhs _0225EBB0
	ldr r2, [r5]
	lsls r6, r1, #0x1c
	mov ip, r2
	lsrs r2, r1, #0x1f
	subs r6, r6, r2
	movs r1, #0x1c
	rors r6, r1
	adds r1, r2, r6
	adds r2, r3, #1
	lsls r3, r2, #2
	ldr r2, _0225EBF4 @ =0x02260C68
	ldr r2, [r2, r3]
	subs r3, r2, r7
	asrs r2, r3, #3
	lsrs r2, r2, #0x1c
	adds r2, r3, r2
	asrs r2, r2, #4
	muls r2, r1, r2
	mov r1, ip
	adds r1, r1, r2
	str r1, [r5]
_0225EBB0:
	asrs r1, r0, #3
	lsrs r1, r1, #0x1c
	adds r1, r0, r1
	asrs r6, r1, #4
	cmp r6, #0xb
	blo _0225EBBE
	movs r6, #0xa
_0225EBBE:
	ldr r5, _0225EBF8 @ =0x02260BE0
	lsls r1, r6, #2
	ldr r3, [r5, r1]
	cmp r6, #0xa
	str r3, [r4]
	bhs _0225EBEE
	lsrs r1, r0, #0x1f
	lsls r7, r0, #0x1c
	subs r7, r7, r1
	movs r0, #0x1c
	rors r7, r0
	adds r0, r1, r7
	adds r1, r6, #1
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r4]
	subs r3, r1, r3
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	asrs r1, r1, #4
	muls r1, r0, r1
	adds r0, r2, r1
	str r0, [r4]
_0225EBEE:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0225EBF4: .4byte 0x02260C68
_0225EBF8: .4byte 0x02260BE0
	thumb_func_end ov113_0225EB64

	thumb_func_start ov113_0225EBFC
ov113_0225EBFC: @ 0x0225EBFC
	push {r3, r4, r5, r6}
	ldr r2, _0225EC58 @ =0x00000534
	movs r1, #1
	ldr r5, [r0, r2]
	adds r3, r1, #0
_0225EC06:
	adds r4, r3, #0
	lsls r4, r1
	adds r2, r5, #0
	tst r2, r4
	bne _0225EC1E
	ldr r2, _0225EC58 @ =0x00000534
	ldr r3, [r0, r2]
	orrs r3, r4
	str r3, [r0, r2]
	adds r0, r1, #0
	pop {r3, r4, r5, r6}
	bx lr
_0225EC1E:
	adds r1, r1, #1
	cmp r1, #0x20
	blt _0225EC06
	movs r5, #0
	cmp r1, #0x3f
	bge _0225EC50
	ldr r2, _0225EC5C @ =0x00000538
	movs r3, #1
	ldr r6, [r0, r2]
_0225EC30:
	adds r4, r3, #0
	lsls r4, r5
	adds r2, r6, #0
	tst r2, r4
	bne _0225EC48
	ldr r2, _0225EC5C @ =0x00000538
	ldr r3, [r0, r2]
	orrs r3, r4
	str r3, [r0, r2]
	adds r0, r1, #0
	pop {r3, r4, r5, r6}
	bx lr
_0225EC48:
	adds r1, r1, #1
	adds r5, r5, #1
	cmp r1, #0x3f
	blt _0225EC30
_0225EC50:
	movs r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
	nop
_0225EC58: .4byte 0x00000534
_0225EC5C: .4byte 0x00000538
	thumb_func_end ov113_0225EBFC

	thumb_func_start ov113_0225EC60
ov113_0225EC60: @ 0x0225EC60
	push {r4, r5}
	cmp r1, #0xff
	beq _0225EC94
	cmp r1, #0x20
	bge _0225EC80
	movs r3, #1
	ldr r2, _0225EC98 @ =0x00000534
	adds r4, r3, #0
	lsls r4, r1
	subs r1, r3, #2
	ldr r5, [r0, r2]
	eors r1, r4
	ands r1, r5
	str r1, [r0, r2]
	pop {r4, r5}
	bx lr
_0225EC80:
	movs r3, #1
	ldr r2, _0225EC9C @ =0x00000538
	subs r1, #0x20
	adds r4, r3, #0
	lsls r4, r1
	subs r1, r3, #2
	ldr r5, [r0, r2]
	eors r1, r4
	ands r1, r5
	str r1, [r0, r2]
_0225EC94:
	pop {r4, r5}
	bx lr
	.align 2, 0
_0225EC98: .4byte 0x00000534
_0225EC9C: .4byte 0x00000538
	thumb_func_end ov113_0225EC60

	thumb_func_start ov113_0225ECA0
ov113_0225ECA0: @ 0x0225ECA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldrh r0, [r1, #2]
	ldrb r1, [r1, #8]
	adds r5, r2, #0
	adds r6, r3, #0
	bl ov113_022607B8
	adds r7, r0, #0
	cmp r7, #3
	blo _0225ECBC
	bl FUN_02022974
_0225ECBC:
	adds r0, r4, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_02017358
	ldr r1, _0225ED94 @ =0x02260C38
	lsls r0, r7, #4
	ldr r2, [sp, #0x14]
	ldr r1, [r1, r0]
	adds r1, r2, r1
	str r1, [r5]
	ldr r1, _0225ED98 @ =0x02260C3C
	ldr r2, [sp, #0x14]
	ldr r1, [r1, r0]
	adds r1, r2, r1
	str r1, [r5, #4]
	ldr r1, _0225ED9C @ =0x02260C40
	ldr r2, [sp, #0x10]
	ldr r1, [r1, r0]
	adds r1, r2, r1
	str r1, [r5, #8]
	ldr r1, _0225EDA0 @ =0x02260C44
	ldr r2, [sp, #0x10]
	ldr r0, [r1, r0]
	adds r0, r2, r0
	str r0, [r5, #0xc]
	cmp r6, #1
	bne _0225ED8E
	adds r0, r4, #0
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_02017374
	ldr r1, [r5, #4]
	ldr r0, [r5]
	movs r2, #0x64
	subs r4, r1, r0
	ldr r0, [sp, #8]
	movs r3, #0
	asrs r1, r0, #0x1f
	asrs r6, r4, #0x1f
	blx FUN_020E1F1C
	movs r2, #1
	lsls r2, r2, #0xc
	movs r3, #0
	blx FUN_020E1D24
	adds r2, r4, #0
	adds r3, r6, #0
	blx FUN_020E1F1C
	movs r2, #0x64
	movs r3, #0
	blx FUN_020E1D24
	subs r0, r0, r4
	sbcs r1, r6
	movs r2, #2
	movs r3, #0
	blx FUN_020E1D24
	ldr r1, [r5, #4]
	movs r2, #0x64
	adds r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5]
	movs r3, #0
	subs r0, r1, r0
	str r0, [r5]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	subs r4, r1, r0
	ldr r0, [sp, #4]
	asrs r6, r4, #0x1f
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #1
	lsls r2, r2, #0xc
	movs r3, #0
	blx FUN_020E1D24
	adds r2, r4, #0
	adds r3, r6, #0
	blx FUN_020E1F1C
	movs r2, #0x64
	movs r3, #0
	blx FUN_020E1D24
	subs r0, r0, r4
	sbcs r1, r6
	movs r2, #2
	movs r3, #0
	blx FUN_020E1D24
	ldr r1, [r5, #8]
	adds r1, r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0xc]
	subs r0, r1, r0
	str r0, [r5, #0xc]
_0225ED8E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225ED94: .4byte 0x02260C38
_0225ED98: .4byte 0x02260C3C
_0225ED9C: .4byte 0x02260C40
_0225EDA0: .4byte 0x02260C44
	thumb_func_end ov113_0225ECA0

	thumb_func_start ov113_0225EDA4
ov113_0225EDA4: @ 0x0225EDA4
	ldr r3, [r0]
	ldr r2, [r1, #4]
	cmp r3, r2
	bgt _0225EDC8
	ldr r3, [r1]
	ldr r2, [r0, #4]
	cmp r3, r2
	bgt _0225EDC8
	ldr r3, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r3, r2
	blt _0225EDC8
	ldr r1, [r1, #8]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	blt _0225EDC8
	movs r0, #1
	bx lr
_0225EDC8:
	movs r0, #0
	bx lr
	thumb_func_end ov113_0225EDA4

	thumb_func_start ov113_0225EDCC
ov113_0225EDCC: @ 0x0225EDCC
	push {r3, r4, r5, lr}
	ldr r2, _0225EE04 @ =0x0000053C
	adds r2, r0, r2
	movs r0, #0
_0225EDD4:
	ldrb r3, [r2, #1]
	cmp r3, #0
	bne _0225EDF6
	movs r4, #9
	lsls r4, r4, #6
	ldr r5, [r1, r4]
	ldr r3, _0225EE08 @ =0x00FFFFFF
	lsls r0, r0, #0x18
	ands r3, r5
	orrs r0, r3
	str r0, [r1, r4]
	movs r0, #0
	strb r0, [r2]
	ldrb r0, [r2, #1]
	adds r0, r0, #1
	strb r0, [r2, #1]
	pop {r3, r4, r5, pc}
_0225EDF6:
	adds r0, r0, #1
	adds r2, r2, #4
	cmp r0, #0x80
	blt _0225EDD4
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225EE04: .4byte 0x0000053C
_0225EE08: .4byte 0x00FFFFFF
	thumb_func_end ov113_0225EDCC

	thumb_func_start ov113_0225EE0C
ov113_0225EE0C: @ 0x0225EE0C
	push {r3, r4, r5, lr}
	adds r3, r0, #0
	adds r0, r2, #0
	cmp r1, #0xff
	bne _0225EE1A
	movs r0, #0
	pop {r3, r4, r5, pc}
_0225EE1A:
	ldr r2, _0225EE6C @ =0x0000053C
	lsls r4, r1, #2
	adds r5, r3, r2
	ldrb r1, [r5, r4]
	adds r1, r1, #1
	strb r1, [r5, r4]
	adds r1, r2, #1
	adds r5, r3, r1
	ldrb r1, [r5, r4]
	adds r1, r1, #1
	strb r1, [r5, r4]
	ldr r1, _0225EE70 @ =0x0000073C
	ldrb r5, [r3, r1]
	cmp r5, #0
	bne _0225EE66
	adds r5, r1, #1
	ldrb r5, [r3, r5]
	cmp r5, #0
	bne _0225EE66
	adds r4, r3, r4
	ldrb r2, [r4, r2]
	adds r4, r1, #3
	ldrb r4, [r3, r4]
	lsls r5, r4, #1
	ldr r4, _0225EE74 @ =0x02260BCC
	ldrsh r4, [r4, r5]
	cmp r2, r4
	blt _0225EE66
	adds r1, r1, #1
	strb r0, [r3, r1]
	adds r3, #0xb0
	adds r0, r3, #0
	movs r1, #0
	movs r2, #4
	blx FUN_020C4CF4
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225EE66:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225EE6C: .4byte 0x0000053C
_0225EE70: .4byte 0x0000073C
_0225EE74: .4byte 0x02260BCC
	thumb_func_end ov113_0225EE0C

	thumb_func_start ov113_0225EE78
ov113_0225EE78: @ 0x0225EE78
	push {r3, r4, r5, lr}
	cmp r1, #0xff
	beq _0225EE92
	ldr r2, _0225EE94 @ =0x0000053D
	lsls r4, r1, #2
	adds r5, r0, r2
	ldrb r0, [r5, r4]
	subs r0, r0, #1
	bpl _0225EE90
	bl FUN_02022974
	movs r0, #0
_0225EE90:
	strb r0, [r5, r4]
_0225EE92:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225EE94: .4byte 0x0000053D
	thumb_func_end ov113_0225EE78

	thumb_func_start ov113_0225EE98
ov113_0225EE98: @ 0x0225EE98
	push {r4, lr}
	movs r1, #0
	movs r2, #0xb0
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r1, _0225EEB8 @ =0x0000073D
	ldrb r2, [r4, r1]
	subs r0, r1, #1
	strb r2, [r4, r0]
	movs r2, #0
	strb r2, [r4, r1]
	adds r0, r1, #1
	strb r2, [r4, r0]
	pop {r4, pc}
	nop
_0225EEB8: .4byte 0x0000073D
	thumb_func_end ov113_0225EE98

	thumb_func_start ov113_0225EEBC
ov113_0225EEBC: @ 0x0225EEBC
	push {r4, lr}
	movs r2, #9
	lsls r2, r2, #6
	ldr r3, [r0, r2]
	lsls r4, r3, #0x10
	lsrs r4, r4, #0x18
	bne _0225EED6
	lsls r4, r3, #8
	lsrs r4, r4, #0x18
	bne _0225EED6
	lsls r4, r3, #0x1c
	lsrs r4, r4, #0x1c
	bne _0225EEDA
_0225EED6:
	movs r0, #0
	pop {r4, pc}
_0225EEDA:
	ldr r4, _0225EEF4 @ =0xFF00FFFF
	lsls r1, r1, #0x18
	ands r3, r4
	lsrs r1, r1, #8
	orrs r1, r3
	str r1, [r0, r2]
	adds r0, #0x94
	movs r1, #0
	subs r2, #0x94
	blx FUN_020C4CF4
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0225EEF4: .4byte 0xFF00FFFF
	thumb_func_end ov113_0225EEBC

	thumb_func_start ov113_0225EEF8
ov113_0225EEF8: @ 0x0225EEF8
	push {r3, lr}
	ldr r0, [r0, #4]
	bl FUN_02075BFC
	ldr r1, _0225EF08 @ =0x02260D30
	ldrb r0, [r1, r0]
	pop {r3, pc}
	nop
_0225EF08: .4byte 0x02260D30
	thumb_func_end ov113_0225EEF8

	thumb_func_start ov113_0225EF0C
ov113_0225EF0C: @ 0x0225EF0C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, r5, #0
	adds r2, r0, #1
	adds r0, r5, #0
	adds r0, #0x94
	str r2, [r0]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	cmp r0, #2
	bne _0225EF54
	adds r0, r5, #0
	adds r0, #0x1c
	adds r2, r4, #4
	movs r3, #0
	bl ov113_0225ECA0
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #1
	bl FUN_02017348
	movs r1, #9
	lsls r1, r1, #6
	ldr r2, [r5, r1]
	movs r0, #0xf
	bics r2, r0
	movs r0, #1
	orrs r0, r2
	str r0, [r5, r1]
_0225EF54:
	ldr r0, [r4]
	cmp r0, #0x28
	ble _0225EF70
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov113_0225EDCC
	adds r0, r5, #0
	bl ov113_0225EEF8
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov113_0225EEBC
_0225EF70:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov113_0225EF0C

	thumb_func_start ov113_0225EF74
ov113_0225EF74: @ 0x0225EF74
	movs r0, #0
	bx lr
	thumb_func_end ov113_0225EF74

	thumb_func_start ov113_0225EF78
ov113_0225EF78: @ 0x0225EF78
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r5, #0
	adds r4, #0x94
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0225EF8C
	cmp r1, #1
	beq _0225EFA4
	b _0225EFDE
_0225EF8C:
	movs r1, #0x1f
	lsls r1, r1, #8
	str r1, [r4]
	bl ov113_0225EBFC
	strb r0, [r4, #9]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [r4, #4]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
_0225EFA4:
	ldr r0, [r4, #4]
	movs r3, #1
	adds r0, #0xc0
	str r0, [r4, #4]
	ldr r0, [r4]
	lsls r3, r3, #8
	adds r1, r0, #0
	subs r1, #0xc0
	cmp r1, r3
	bge _0225EFCA
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0
	bl FUN_02017348
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0225EFE8
_0225EFCA:
	subs r0, #0xc0
	str r0, [r4]
	ldr r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x1c
	adds r2, r1, #0
	lsls r3, r3, #4
	bl FUN_0201736C
	b _0225EFE8
_0225EFDE:
	ldrb r1, [r4, #9]
	bl ov113_0225EC60
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225EFE8:
	adds r0, r5, #0
	adds r4, #0xc
	adds r0, #0x1c
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl ov113_0225ECA0
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov113_0225EF78

	thumb_func_start ov113_0225EFFC
ov113_0225EFFC: @ 0x0225EFFC
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x94
	ldrb r3, [r0, #9]
	cmp r3, #0xff
	beq _0225F036
	ldr r0, [r0]
	asrs r0, r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_020AF5B4
	movs r2, #0x3f
	ldr r0, [r4, #0x14]
	movs r1, #0
	lsls r2, r2, #0x18
	blx FUN_020B2D8C
	movs r2, #0x1f
	ldr r0, [r4, #0x14]
	movs r1, #0
	lsls r2, r2, #0x10
	blx FUN_020B2D8C
_0225F036:
	adds r4, #0x1c
	adds r0, r4, #0
	bl FUN_02017294
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov113_0225EFFC

	thumb_func_start ov113_0225F044
ov113_0225F044: @ 0x0225F044
	push {r3, lr}
	adds r1, #0xa0
	adds r2, #0x98
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F05A
	movs r0, #1
	pop {r3, pc}
_0225F05A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov113_0225F044

	thumb_func_start ov113_0225F060
ov113_0225F060: @ 0x0225F060
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	ldr r0, _0225F190 @ =0x0000016A
	adds r4, #0x94
	ldrb r0, [r4, r0]
	str r1, [sp]
	cmp r0, #0
	beq _0225F078
	cmp r0, #1
	beq _0225F0B2
	b _0225F154
_0225F078:
	adds r0, r1, #0
	adds r0, #0x1c
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	ldr r7, [sp]
	movs r6, #0
	adds r5, r4, #0
	adds r7, #0xc
_0225F08E:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02017258
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	bl FUN_02017350
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #3
	blt _0225F08E
	ldr r0, _0225F190 @ =0x0000016A
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
_0225F0B2:
	ldr r0, [sp]
	add r1, sp, #0xc
	adds r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	movs r2, #2
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	lsls r2, r2, #0xc
	ldr r3, [sp, #8]
	subs r1, r1, r2
	subs r2, r3, r2
	ldr r3, [sp, #4]
	adds r0, #0x1c
	bl FUN_02017350
	adds r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	movs r2, #2
	ldr r1, [sp, #0xc]
	lsls r2, r2, #0xc
	ldr r3, [sp, #8]
	adds r1, r1, r2
	subs r2, r3, r2
	ldr r3, [sp, #4]
	adds r0, r4, #0
	bl FUN_02017350
	adds r0, r4, #0
	adds r0, #0x78
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	movs r2, #2
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	lsls r2, r2, #0xc
	ldr r3, [sp, #8]
	subs r1, r1, r2
	adds r2, r3, r2
	ldr r3, [sp, #4]
	adds r0, #0x78
	bl FUN_02017350
	adds r0, r4, #0
	adds r0, #0xf0
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	movs r2, #2
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	lsls r2, r2, #0xc
	ldr r3, [sp, #8]
	adds r1, r1, r2
	adds r2, r3, r2
	ldr r3, [sp, #4]
	adds r0, #0xf0
	bl FUN_02017350
	movs r0, #0x5a
	lsls r0, r0, #2
	ldrh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0x1e
	bls _0225F154
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F154:
	ldr r0, [sp]
	movs r2, #0x5b
	lsls r2, r2, #2
	ldr r1, [sp]
	adds r0, #0x1c
	adds r2, r4, r2
	movs r3, #0
	bl ov113_0225ECA0
	movs r0, #0x5b
	movs r5, #0
	lsls r0, r0, #2
	adds r6, r4, r0
	adds r7, r5, #0
_0225F170:
	adds r2, r5, #1
	lsls r2, r2, #4
	ldr r1, [sp]
	adds r0, r4, #0
	adds r2, r6, r2
	adds r3, r7, #0
	bl ov113_0225ECA0
	adds r5, r5, #1
	adds r4, #0x78
	cmp r5, #3
	blt _0225F170
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225F190: .4byte 0x0000016A
	thumb_func_end ov113_0225F060

	thumb_func_start ov113_0225F194
ov113_0225F194: @ 0x0225F194
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r6, #0
	movs r4, #0
	adds r5, #0x94
_0225F19E:
	adds r0, r5, #0
	bl FUN_02017294
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #3
	blt _0225F19E
	adds r6, #0x1c
	adds r0, r6, #0
	bl FUN_02017294
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov113_0225F194

	thumb_func_start ov113_0225F1B8
ov113_0225F1B8: @ 0x0225F1B8
	push {r4, r5, r6, lr}
	movs r0, #2
	adds r6, r2, #0
	lsls r0, r0, #8
	adds r6, #0x94
	movs r4, #0
	adds r5, r1, r0
_0225F1C6:
	adds r0, r5, #0
	adds r1, r6, #4
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F1D6
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225F1D6:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _0225F1C6
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov113_0225F1B8

	thumb_func_start ov113_0225F1E4
ov113_0225F1E4: @ 0x0225F1E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0x94
	adds r4, r5, #0
	ldr r0, [r0]
	adds r4, #0x94
	cmp r0, #3
	bls _0225F1FC
	b _0225F32A
_0225F1FC:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225F208: @ jump table
	.2byte _0225F210 - _0225F208 - 2 @ case 0
	.2byte _0225F26E - _0225F208 - 2 @ case 1
	.2byte _0225F2A8 - _0225F208 - 2 @ case 2
	.2byte _0225F2BC - _0225F208 - 2 @ case 3
_0225F210:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #2
	bl FUN_02017394
	ldr r1, _0225F340 @ =0x00000AAA
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0xe
	lsls r0, r0, #0xc
	cmp r6, r0
	bhi _0225F260
	movs r1, #9
	lsls r1, r1, #6
	ldr r1, [r5, r1]
	ldr r0, [r5, #0x18]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	bl ov113_0225EA60
	ldr r1, [r5, #0x18]
	adds r0, r7, #0
	bl ov113_0225E854
	movs r1, #9
	lsls r1, r1, #6
	ldr r2, [r5, r1]
	movs r0, #0xf0
	bics r2, r0
	movs r0, #0x10
	orrs r2, r0
	lsls r0, r0, #0xa
	adds r0, r6, r0
	lsls r0, r0, #0x10
	str r2, [r5, r1]
	lsrs r6, r0, #0x10
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0225F260:
	adds r0, r5, #0
	adds r0, #0x1c
	adds r1, r6, #0
	movs r2, #2
	bl FUN_02017388
	b _0225F32A
_0225F26E:
	movs r1, #9
	lsls r1, r1, #6
	ldr r2, [r5, r1]
	movs r0, #0xf0
	bics r2, r0
	adds r0, r5, #0
	str r2, [r5, r1]
	adds r0, #0x1c
	movs r1, #2
	bl FUN_02017394
	ldr r1, _0225F340 @ =0x00000AAA
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #3
	lsls r0, r0, #0xe
	cmp r1, r0
	blo _0225F29C
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #1
	str r0, [r4]
_0225F29C:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r2, #2
	bl FUN_02017388
	b _0225F32A
_0225F2A8:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	blt _0225F32A
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0225F2BC:
	adds r0, r5, #0
	adds r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_02017358
	ldr r1, [sp, #8]
	ldr r0, _0225F344 @ =0xFFFB0000
	cmp r1, r0
	blt _0225F2EA
	movs r0, #5
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _0225F2EA
	movs r2, #3
	ldr r3, [sp, #4]
	lsls r2, r2, #0x10
	cmp r3, r2
	bgt _0225F2EA
	ldr r0, _0225F348 @ =0xFFFD0000
	cmp r3, r0
	bge _0225F2F0
_0225F2EA:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225F2F0:
	ldr r0, [r4, #8]
	cmp r0, #5
	bge _0225F30A
	lsrs r6, r2, #4
	lsrs r2, r2, #4
	adds r0, r5, #0
	subs r2, r3, r2
	ldr r3, [sp]
	adds r0, #0x1c
	adds r1, r1, r6
	bl FUN_02017350
	b _0225F31C
_0225F30A:
	lsrs r6, r2, #4
	lsrs r2, r2, #4
	adds r0, r5, #0
	adds r2, r3, r2
	ldr r3, [sp]
	adds r0, #0x1c
	adds r1, r1, r6
	bl FUN_02017350
_0225F31C:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	blt _0225F32A
	movs r0, #0
	str r0, [r4, #8]
_0225F32A:
	adds r0, r5, #0
	adds r4, #0xc
	adds r0, #0x1c
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov113_0225ECA0
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225F340: .4byte 0x00000AAA
_0225F344: .4byte 0xFFFB0000
_0225F348: .4byte 0xFFFD0000
	thumb_func_end ov113_0225F1E4

	thumb_func_start ov113_0225F34C
ov113_0225F34C: @ 0x0225F34C
	push {r3, lr}
	adds r1, #0xa0
	adds r2, #0x98
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F362
	movs r0, #1
	pop {r3, pc}
_0225F362:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov113_0225F34C

	thumb_func_start ov113_0225F368
ov113_0225F368: @ 0x0225F368
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0x94
	adds r4, r5, #0
	ldr r0, [r0]
	adds r4, #0x94
	cmp r0, #3
	bls _0225F380
	b _0225F4DA
_0225F380:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225F38C: @ jump table
	.2byte _0225F394 - _0225F38C - 2 @ case 0
	.2byte _0225F3F4 - _0225F38C - 2 @ case 1
	.2byte _0225F42E - _0225F38C - 2 @ case 2
	.2byte _0225F454 - _0225F38C - 2 @ case 3
_0225F394:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #2
	bl FUN_02017394
	ldr r1, _0225F4F0 @ =0x00000AAA
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #2
	lsls r0, r0, #0xc
	cmp r6, r0
	blo _0225F3E6
	movs r1, #9
	lsls r1, r1, #6
	ldr r1, [r5, r1]
	ldr r0, [r5, #0x18]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	bl ov113_0225EA60
	movs r0, #1
	lsls r0, r0, #0xe
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r5, #0x18]
	adds r0, r7, #0
	bl ov113_0225E854
	movs r1, #9
	lsls r1, r1, #6
	ldr r2, [r5, r1]
	movs r0, #0xf0
	bics r2, r0
	movs r0, #0x10
	orrs r0, r2
	str r0, [r5, r1]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0225F3E6:
	adds r0, r5, #0
	adds r0, #0x1c
	adds r1, r6, #0
	movs r2, #2
	bl FUN_02017388
	b _0225F4DA
_0225F3F4:
	movs r1, #9
	lsls r1, r1, #6
	ldr r2, [r5, r1]
	movs r0, #0xf0
	bics r2, r0
	adds r0, r5, #0
	str r2, [r5, r1]
	adds r0, #0x1c
	movs r1, #2
	bl FUN_02017394
	ldr r1, _0225F4F0 @ =0x00000AAA
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #1
	lsls r0, r0, #0xe
	cmp r1, r0
	bhs _0225F422
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #1
	str r0, [r4]
_0225F422:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r2, #2
	bl FUN_02017388
	b _0225F4DA
_0225F42E:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blt _0225F4DA
	adds r0, r5, #0
	adds r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_02017358
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0225F454:
	adds r0, r5, #0
	adds r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_02017358
	ldr r1, [sp, #8]
	ldr r0, _0225F4F4 @ =0xFFFB0000
	cmp r1, r0
	blt _0225F482
	movs r0, #5
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _0225F482
	movs r0, #3
	ldr r1, [sp, #4]
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _0225F482
	ldr r0, _0225F4F8 @ =0xFFFD0000
	cmp r1, r0
	bge _0225F488
_0225F482:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225F488:
	movs r0, #2
	ldr r1, [r4, #4]
	lsls r0, r0, #0xe
	adds r1, r1, r0
	movs r0, #0x5a
	lsls r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _0225F4A0
	ldr r1, [r4, #4]
	subs r0, r1, r0
	str r0, [r4, #4]
_0225F4A0:
	ldr r0, [r4, #4]
	bl FUN_0201D2B8
	adds r2, r0, #0
	movs r1, #1
	adds r0, r5, #0
	ldr r3, [sp, #8]
	lsls r1, r1, #0xc
	subs r1, r3, r1
	asrs r3, r2, #0x1f
	lsrs r6, r2, #0x11
	lsls r3, r3, #0xf
	orrs r3, r6
	movs r6, #1
	lsls r6, r6, #0xc
	lsls r2, r2, #0xf
	lsrs r6, r6, #1
	adds r0, #0x1c
	adds r6, r2, r6
	ldr r2, _0225F4FC @ =0x00000000
	ldr r7, [r4, #0xc]
	adcs r3, r2
	lsls r2, r3, #0x14
	lsrs r3, r6, #0xc
	orrs r3, r2
	adds r2, r7, r3
	ldr r3, [sp]
	bl FUN_02017350
_0225F4DA:
	adds r0, r5, #0
	adds r4, #0x10
	adds r0, #0x1c
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov113_0225ECA0
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225F4F0: .4byte 0x00000AAA
_0225F4F4: .4byte 0xFFFB0000
_0225F4F8: .4byte 0xFFFD0000
_0225F4FC: .4byte 0x00000000
	thumb_func_end ov113_0225F368

	thumb_func_start ov113_0225F500
ov113_0225F500: @ 0x0225F500
	push {r3, lr}
	adds r1, #0xa4
	adds r2, #0x98
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F516
	movs r0, #1
	pop {r3, pc}
_0225F516:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov113_0225F500

	thumb_func_start ov113_0225F51C
ov113_0225F51C: @ 0x0225F51C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	str r1, [sp]
	ldr r1, _0225F66C @ =0x0000016D
	adds r4, #0x94
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0225F534
	cmp r2, #1
	beq _0225F580
	b _0225F646
_0225F534:
	bl ov113_0225EBFC
	movs r1, #0x5b
	lsls r1, r1, #2
	strb r0, [r4, r1]
	ldr r0, [sp]
	add r1, sp, #0xc
	adds r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	ldr r7, [sp]
	movs r6, #0
	adds r5, r4, #0
	adds r7, #0xc
_0225F554:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02017258
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	bl FUN_02017350
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02017348
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #3
	blt _0225F554
	ldr r0, _0225F66C @ =0x0000016D
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
_0225F580:
	ldr r0, [sp]
	add r1, sp, #0xc
	adds r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	ldr r1, [sp, #0xc]
	ldr r0, _0225F670 @ =0xFFFB0000
	cmp r1, r0
	blt _0225F5B6
	movs r2, #5
	lsls r2, r2, #0x10
	cmp r1, r2
	bgt _0225F5B6
	movs r0, #3
	ldr r3, [sp, #8]
	lsls r0, r0, #0x10
	cmp r3, r0
	bgt _0225F5B6
	ldr r0, _0225F674 @ =0xFFFD0000
	cmp r3, r0
	blt _0225F5B6
	ldr r0, _0225F678 @ =0x0000016B
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0225F5E0
_0225F5B6:
	movs r6, #0
	adds r5, r4, #0
	adds r7, r6, #0
_0225F5BC:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02017348
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #3
	blt _0225F5BC
	ldr r0, [sp]
	movs r1, #0
	adds r0, #0x1c
	bl FUN_02017348
	ldr r0, _0225F66C @ =0x0000016D
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	b _0225F654
_0225F5E0:
	ldr r0, [sp]
	lsrs r2, r2, #5
	adds r2, r3, r2
	ldr r3, [sp, #4]
	adds r0, #0x1c
	bl FUN_02017350
	movs r0, #0x5a
	lsls r0, r0, #2
	ldrh r0, [r4, r0]
	movs r1, #3
	blx FUN_020E1F6C
	cmp r1, #0
	bne _0225F63A
	ldr r0, _0225F67C @ =0x0000016A
	movs r2, #0xa
	ldrb r1, [r4, r0]
	ldr r3, [sp, #8]
	movs r0, #0x78
	muls r0, r1, r0
	lsls r2, r2, #0xa
	adds r2, r3, r2
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	adds r0, r4, r0
	bl FUN_02017350
	ldr r0, _0225F67C @ =0x0000016A
	ldrb r1, [r4, r0]
	movs r0, #0x78
	muls r0, r1, r0
	adds r0, r4, r0
	movs r1, #1
	bl FUN_02017348
	ldr r0, _0225F67C @ =0x0000016A
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, #3
	blo _0225F63A
	movs r1, #0
	strb r1, [r4, r0]
_0225F63A:
	movs r0, #0x5a
	lsls r0, r0, #2
	ldrh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	b _0225F654
_0225F646:
	subs r1, r1, #1
	ldrb r1, [r4, r1]
	bl ov113_0225EC60
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F654:
	ldr r0, [sp]
	movs r2, #0x17
	lsls r2, r2, #4
	ldr r1, [sp]
	adds r0, #0x1c
	adds r2, r4, r2
	movs r3, #0
	bl ov113_0225ECA0
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225F66C: .4byte 0x0000016D
_0225F670: .4byte 0xFFFB0000
_0225F674: .4byte 0xFFFD0000
_0225F678: .4byte 0x0000016B
_0225F67C: .4byte 0x0000016A
	thumb_func_end ov113_0225F51C

	thumb_func_start ov113_0225F680
ov113_0225F680: @ 0x0225F680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r7, r6, #0
	movs r0, #0x5b
	adds r7, #0x94
	lsls r0, r0, #2
	ldrb r3, [r7, r0]
	cmp r3, #0xff
	beq _0225F6BC
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_020AF5B4
	movs r2, #0x3f
	ldr r0, [r6, #0x14]
	movs r1, #0
	lsls r2, r2, #0x18
	blx FUN_020B2D8C
	movs r2, #0x1f
	ldr r0, [r6, #0x14]
	movs r1, #0
	lsls r2, r2, #0x10
	blx FUN_020B2D8C
_0225F6BC:
	movs r4, #0
	adds r5, r7, #0
_0225F6C0:
	adds r0, r5, #0
	bl FUN_02017294
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #3
	blt _0225F6C0
	movs r0, #0x5b
	lsls r0, r0, #2
	ldrb r3, [r7, r0]
	cmp r3, #0xff
	beq _0225F700
	movs r0, #0x1f
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_020AF5B4
	movs r2, #0x3f
	ldr r0, [r6, #0x14]
	movs r1, #0
	lsls r2, r2, #0x18
	blx FUN_020B2D8C
	movs r2, #0x1f
	ldr r0, [r6, #0x14]
	movs r1, #0
	lsls r2, r2, #0x10
	blx FUN_020B2D8C
_0225F700:
	adds r6, #0x1c
	adds r0, r6, #0
	bl FUN_02017294
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225F680

	thumb_func_start ov113_0225F70C
ov113_0225F70C: @ 0x0225F70C
	push {r3, lr}
	movs r0, #0x81
	lsls r0, r0, #2
	adds r2, #0x98
	adds r0, r1, r0
	adds r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F724
	movs r0, #1
	pop {r3, pc}
_0225F724:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov113_0225F70C

	thumb_func_start ov113_0225F728
ov113_0225F728: @ 0x0225F728
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, r5, #0
	adds r4, #0x94
	cmp r0, #0
	beq _0225F742
	cmp r0, #1
	beq _0225F75A
	b _0225F7DC
_0225F742:
	adds r0, r5, #0
	adds r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_02017358
	ldr r0, [sp, #8]
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0225F75A:
	adds r0, r5, #0
	adds r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_02017358
	ldr r1, [sp, #8]
	ldr r0, _0225F7F4 @ =0xFFFB0000
	cmp r1, r0
	blt _0225F788
	movs r0, #5
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _0225F788
	movs r0, #3
	ldr r1, [sp, #4]
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _0225F788
	ldr r0, _0225F7F8 @ =0xFFFD0000
	cmp r1, r0
	bge _0225F78E
_0225F788:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225F78E:
	movs r0, #2
	ldr r1, [r4, #4]
	lsls r0, r0, #0xe
	adds r1, r1, r0
	movs r0, #0x5a
	lsls r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _0225F7A6
	ldr r1, [r4, #4]
	subs r0, r1, r0
	str r0, [r4, #4]
_0225F7A6:
	ldr r0, [r4, #4]
	bl FUN_0201D2B8
	adds r2, r0, #0
	asrs r6, r2, #0x1f
	movs r7, #2
	adds r0, r5, #0
	lsrs r3, r2, #0x11
	lsls r6, r6, #0xf
	orrs r6, r3
	lsls r3, r2, #0xf
	movs r2, #0
	lsls r7, r7, #0xa
	adds r0, #0x1c
	adds r3, r3, r7
	adcs r6, r2
	ldr r1, [r4, #8]
	lsls r2, r6, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r2
	adds r1, r1, r3
	ldr r3, [sp, #4]
	lsls r2, r7, #1
	subs r2, r3, r2
	ldr r3, [sp]
	bl FUN_02017350
_0225F7DC:
	adds r0, r5, #0
	adds r4, #0xc
	adds r0, #0x1c
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov113_0225ECA0
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225F7F4: .4byte 0xFFFB0000
_0225F7F8: .4byte 0xFFFD0000
	thumb_func_end ov113_0225F728

	thumb_func_start ov113_0225F7FC
ov113_0225F7FC: @ 0x0225F7FC
	push {r3, lr}
	adds r1, #0xa0
	adds r2, #0x98
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F812
	movs r0, #1
	pop {r3, pc}
_0225F812:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov113_0225F7FC

	thumb_func_start ov113_0225F818
ov113_0225F818: @ 0x0225F818
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r5, #0
	adds r4, #0x94
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0225F82C
	cmp r0, #1
	beq _0225F838
	b _0225F860
_0225F82C:
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [r4]
	ldrb r0, [r4, #6]
	adds r0, r0, #1
	strb r0, [r4, #6]
_0225F838:
	ldrh r0, [r4, #4]
	adds r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #8
	bls _0225F848
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225F848:
	movs r0, #3
	ldr r1, [r4]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r5, #0
	movs r3, #1
	adds r0, #0x1c
	adds r2, r1, #0
	lsls r3, r3, #0xc
	str r1, [r4]
	bl FUN_0201736C
_0225F860:
	adds r0, r5, #0
	adds r4, #8
	adds r0, #0x1c
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl ov113_0225ECA0
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov113_0225F818

	thumb_func_start ov113_0225F874
ov113_0225F874: @ 0x0225F874
	push {r3, lr}
	adds r1, #0x9c
	adds r2, #0x98
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F88A
	movs r0, #1
	pop {r3, pc}
_0225F88A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov113_0225F874

	thumb_func_start ov113_0225F890
ov113_0225F890: @ 0x0225F890
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r4, #0x94
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0xf7
	ldrb r1, [r1]
	cmp r1, #0
	beq _0225F8AA
	cmp r1, #1
	beq _0225F906
	b _0225F9E0
_0225F8AA:
	bl ov113_0225EBFC
	adds r1, r4, #0
	adds r1, #0xf6
	strb r0, [r1]
	ldr r0, [sp]
	add r1, sp, #0xc
	adds r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	ldr r7, [sp]
	movs r6, #0
	adds r5, r4, #0
	adds r7, #0xc
_0225F8CA:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02017258
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	bl FUN_02017350
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02017348
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #2
	blt _0225F8CA
	movs r1, #0x1f
	adds r0, r4, #0
	lsls r1, r1, #8
	adds r0, #0xf4
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf7
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xf7
	strb r1, [r0]
_0225F906:
	adds r0, r4, #0
	adds r0, #0xf4
	ldrh r0, [r0]
	movs r2, #1
	lsls r2, r2, #8
	subs r0, #0xa0
	cmp r0, r2
	bge _0225F946
	movs r6, #0
	adds r5, r4, #0
	adds r7, r6, #0
_0225F91C:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02017348
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #2
	blt _0225F91C
	ldr r0, [sp]
	movs r1, #0
	adds r0, #0x1c
	bl FUN_02017348
	adds r0, r4, #0
	adds r0, #0xf7
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xf7
	strb r1, [r0]
	b _0225F9EE
_0225F946:
	adds r0, r4, #0
	adds r0, #0xf4
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	subs r1, #0xa0
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0xf0
	ldr r3, [r1]
	lsls r1, r2, #9
	adds r2, r3, r1
	adds r1, r4, #0
	adds r1, #0xf0
	str r2, [r1]
	adds r1, r4, #0
	adds r1, #0xf0
	ldr r2, [r1]
	movs r1, #0x5a
	adds r0, r4, #0
	lsls r1, r1, #0xe
	adds r0, #0xf0
	cmp r2, r1
	blt _0225F97C
	ldr r2, [r0]
	subs r1, r2, r1
	str r1, [r0]
_0225F97C:
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r0, [r0]
	bl FUN_0201D2B8
	asrs r2, r0, #0x1f
	lsls r3, r2, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r0, #0x10
	movs r0, #2
	orrs r3, r1
	movs r1, #0
	lsls r0, r0, #0xa
	adds r2, r2, r0
	adcs r3, r1
	lsls r0, r3, #0x14
	lsrs r7, r2, #0xc
	orrs r7, r0
	ldr r0, [sp]
	add r1, sp, #0xc
	adds r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	movs r6, #0
	adds r5, r4, #0
_0225F9B2:
	movs r0, #1
	tst r0, r6
	beq _0225F9C8
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	adds r1, r1, r7
	bl FUN_02017350
	b _0225F9D6
_0225F9C8:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	subs r1, r1, r7
	bl FUN_02017350
_0225F9D6:
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #2
	blt _0225F9B2
	b _0225F9EE
_0225F9E0:
	adds r4, #0xf6
	ldrb r1, [r4]
	bl ov113_0225EC60
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F9EE:
	ldr r0, [sp]
	adds r2, r4, #0
	ldr r1, [sp]
	adds r0, #0x1c
	adds r2, #0xf8
	movs r3, #0
	bl ov113_0225ECA0
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0xf8
	adds r7, r5, #0
_0225FA06:
	adds r2, r5, #1
	lsls r2, r2, #4
	ldr r1, [sp]
	adds r0, r4, #0
	adds r2, r6, r2
	adds r3, r7, #0
	bl ov113_0225ECA0
	adds r5, r5, #1
	adds r4, #0x78
	cmp r5, #2
	blt _0225FA06
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225F890

	thumb_func_start ov113_0225FA24
ov113_0225FA24: @ 0x0225FA24
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r5, r6, #0
	adds r5, #0x94
	adds r0, r5, #0
	adds r0, #0xf6
	ldrb r3, [r0]
	cmp r3, #0xff
	beq _0225FA66
	adds r0, r5, #0
	adds r0, #0xf4
	ldrh r0, [r0]
	asrs r0, r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_020AF5B4
	movs r2, #0x3f
	ldr r0, [r6, #0x14]
	movs r1, #0
	lsls r2, r2, #0x18
	blx FUN_020B2D8C
	movs r2, #0x1f
	ldr r0, [r6, #0x14]
	movs r1, #0
	lsls r2, r2, #0x10
	blx FUN_020B2D8C
_0225FA66:
	movs r4, #0
_0225FA68:
	adds r0, r5, #0
	bl FUN_02017294
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #2
	blt _0225FA68
	adds r6, #0x1c
	adds r0, r6, #0
	bl FUN_02017294
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov113_0225FA24

	thumb_func_start ov113_0225FA84
ov113_0225FA84: @ 0x0225FA84
	push {r4, r5, r6, lr}
	movs r0, #0x63
	adds r6, r2, #0
	lsls r0, r0, #2
	adds r6, #0x94
	movs r4, #0
	adds r5, r1, r0
_0225FA92:
	adds r0, r5, #0
	adds r1, r6, #4
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225FAA2
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225FAA2:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #3
	blt _0225FA92
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov113_0225FA84

	thumb_func_start ov113_0225FAB0
ov113_0225FAB0: @ 0x0225FAB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r4, #0x94
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0xf7
	ldrb r1, [r1]
	cmp r1, #0
	beq _0225FACA
	cmp r1, #1
	beq _0225FB26
	b _0225FC00
_0225FACA:
	bl ov113_0225EBFC
	adds r1, r4, #0
	adds r1, #0xf6
	strb r0, [r1]
	ldr r0, [sp]
	add r1, sp, #0xc
	adds r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	ldr r7, [sp]
	movs r6, #0
	adds r5, r4, #0
	adds r7, #0xc
_0225FAEA:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02017258
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	bl FUN_02017350
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02017348
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #2
	blt _0225FAEA
	movs r1, #0x1f
	adds r0, r4, #0
	lsls r1, r1, #8
	adds r0, #0xf4
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf7
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xf7
	strb r1, [r0]
_0225FB26:
	adds r0, r4, #0
	adds r0, #0xf4
	ldrh r0, [r0]
	movs r2, #1
	lsls r2, r2, #8
	subs r0, #0xa0
	cmp r0, r2
	bge _0225FB66
	movs r6, #0
	adds r5, r4, #0
	adds r7, r6, #0
_0225FB3C:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02017348
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #2
	blt _0225FB3C
	ldr r0, [sp]
	movs r1, #0
	adds r0, #0x1c
	bl FUN_02017348
	adds r0, r4, #0
	adds r0, #0xf7
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xf7
	strb r1, [r0]
	b _0225FC0E
_0225FB66:
	adds r0, r4, #0
	adds r0, #0xf4
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	subs r1, #0xa0
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0xf0
	ldr r3, [r1]
	lsls r1, r2, #9
	adds r2, r3, r1
	adds r1, r4, #0
	adds r1, #0xf0
	str r2, [r1]
	adds r1, r4, #0
	adds r1, #0xf0
	ldr r2, [r1]
	movs r1, #0x5a
	adds r0, r4, #0
	lsls r1, r1, #0xe
	adds r0, #0xf0
	cmp r2, r1
	blt _0225FB9C
	ldr r2, [r0]
	subs r1, r2, r1
	str r1, [r0]
_0225FB9C:
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r0, [r0]
	bl FUN_0201D2B8
	asrs r2, r0, #0x1f
	lsls r3, r2, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r0, #0x10
	movs r0, #2
	orrs r3, r1
	movs r1, #0
	lsls r0, r0, #0xa
	adds r2, r2, r0
	adcs r3, r1
	lsls r0, r3, #0x14
	lsrs r7, r2, #0xc
	orrs r7, r0
	ldr r0, [sp]
	add r1, sp, #0xc
	adds r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_02017358
	movs r6, #0
	adds r5, r4, #0
_0225FBD2:
	movs r0, #1
	tst r0, r6
	beq _0225FBE8
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	adds r2, r2, r7
	bl FUN_02017350
	b _0225FBF6
_0225FBE8:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	subs r2, r2, r7
	bl FUN_02017350
_0225FBF6:
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #2
	blt _0225FBD2
	b _0225FC0E
_0225FC00:
	adds r4, #0xf6
	ldrb r1, [r4]
	bl ov113_0225EC60
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225FC0E:
	ldr r0, [sp]
	adds r2, r4, #0
	ldr r1, [sp]
	adds r0, #0x1c
	adds r2, #0xf8
	movs r3, #0
	bl ov113_0225ECA0
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0xf8
	adds r7, r5, #0
_0225FC26:
	adds r2, r5, #1
	lsls r2, r2, #4
	ldr r1, [sp]
	adds r0, r4, #0
	adds r2, r6, r2
	adds r3, r7, #0
	bl ov113_0225ECA0
	adds r5, r5, #1
	adds r4, #0x78
	cmp r5, #2
	blt _0225FC26
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225FAB0

	thumb_func_start ov113_0225FC44
ov113_0225FC44: @ 0x0225FC44
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r5, r6, #0
	adds r5, #0x94
	adds r0, r5, #0
	adds r0, #0xf6
	ldrb r3, [r0]
	cmp r3, #0xff
	beq _0225FC86
	adds r0, r5, #0
	adds r0, #0xf4
	ldrh r0, [r0]
	asrs r0, r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_020AF5B4
	movs r2, #0x3f
	ldr r0, [r6, #0x14]
	movs r1, #0
	lsls r2, r2, #0x18
	blx FUN_020B2D8C
	movs r2, #0x1f
	ldr r0, [r6, #0x14]
	movs r1, #0
	lsls r2, r2, #0x10
	blx FUN_020B2D8C
_0225FC86:
	movs r4, #0
_0225FC88:
	adds r0, r5, #0
	bl FUN_02017294
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #2
	blt _0225FC88
	adds r6, #0x1c
	adds r0, r6, #0
	bl FUN_02017294
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov113_0225FC44

	thumb_func_start ov113_0225FCA4
ov113_0225FCA4: @ 0x0225FCA4
	push {r4, r5, r6, lr}
	movs r0, #0x63
	adds r6, r2, #0
	lsls r0, r0, #2
	adds r6, #0x94
	movs r4, #0
	adds r5, r1, r0
_0225FCB2:
	adds r0, r5, #0
	adds r1, r6, #4
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225FCC2
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225FCC2:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #3
	blt _0225FCB2
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov113_0225FCA4

	thumb_func_start ov113_0225FCD0
ov113_0225FCD0: @ 0x0225FCD0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r1, #0
	adds r4, r6, #0
	adds r4, #0x94
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0225FCE6
	cmp r0, #1
	beq _0225FCF2
	b _0225FD4E
_0225FCE6:
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [r4]
	ldrb r0, [r4, #6]
	adds r0, r0, #1
	strb r0, [r4, #6]
_0225FCF2:
	ldrh r0, [r4, #4]
	adds r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #0x1e
	bls _0225FD04
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0225FD04:
	movs r0, #6
	ldr r1, [r4]
	lsls r0, r0, #6
	adds r2, r1, r0
	movs r1, #1
	adds r0, r6, #0
	lsls r1, r1, #0xc
	str r2, [r4]
	adds r0, #0x1c
	adds r3, r1, #0
	bl FUN_0201736C
	movs r0, #1
	ldr r1, [r4]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	lsls r1, r0, #0xc
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	rsbs r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_02017358
	ldr r2, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #8]
	ldr r3, [sp]
	adds r0, #0x1c
	adds r2, r2, r5
	bl FUN_02017350
_0225FD4E:
	adds r0, r6, #0
	adds r4, #8
	adds r0, #0x1c
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #1
	bl ov113_0225ECA0
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov113_0225FCD0

	thumb_func_start ov113_0225FD64
ov113_0225FD64: @ 0x0225FD64
	push {r3, lr}
	adds r1, #0x9c
	adds r2, #0x98
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225FD7A
	movs r0, #1
	pop {r3, pc}
_0225FD7A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov113_0225FD64

	thumb_func_start ov113_0225FD80
ov113_0225FD80: @ 0x0225FD80
	push {r4, r5}
	adds r4, r0, #0
	cmp r2, #3
	bne _0225FD8E
	movs r0, #0
	pop {r4, r5}
	bx lr
_0225FD8E:
	cmp r3, #0
	bne _0225FD98
	movs r0, #0
	mvns r0, r0
	b _0225FD9A
_0225FD98:
	movs r0, #1
_0225FD9A:
	ldrb r2, [r1]
	cmp r2, #0
	beq _0225FDA6
	cmp r2, #1
	beq _0225FDD8
	b _0225FE1A
_0225FDA6:
	movs r3, #2
	ldrsh r5, [r1, r3]
	lsls r2, r3, #8
	adds r2, r5, r2
	strh r2, [r1, #2]
	ldrsh r5, [r1, r3]
	lsls r2, r3, #0xa
	cmp r5, r2
	blt _0225FDC0
	strh r2, [r1, #2]
	ldrb r2, [r1]
	adds r2, r2, #1
	strb r2, [r1]
_0225FDC0:
	movs r2, #0x1d
	movs r3, #1
	lsls r2, r2, #6
	strb r3, [r4, r2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	asrs r1, r1, #8
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r2, #2
	strh r3, [r4, r0]
	b _0225FE24
_0225FDD8:
	movs r3, #2
	ldrsh r5, [r1, r3]
	lsls r2, r3, #8
	subs r2, r5, r2
	strh r2, [r1, #2]
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bgt _0225FE02
	movs r3, #0
	strh r3, [r1, #2]
	ldrb r2, [r1, #1]
	adds r2, r2, #1
	strb r2, [r1, #1]
	ldrb r2, [r1, #1]
	cmp r2, #2
	bhs _0225FDFC
	strb r3, [r1]
	b _0225FE02
_0225FDFC:
	ldrb r2, [r1]
	adds r2, r2, #1
	strb r2, [r1]
_0225FE02:
	movs r2, #0x1d
	movs r3, #1
	lsls r2, r2, #6
	strb r3, [r4, r2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	asrs r1, r1, #8
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r2, #2
	strh r3, [r4, r0]
	b _0225FE24
_0225FE1A:
	ldr r1, _0225FE2C @ =0x0000073E
	movs r0, #1
	strb r0, [r4, r1]
	pop {r4, r5}
	bx lr
_0225FE24:
	movs r0, #0
	pop {r4, r5}
	bx lr
	nop
_0225FE2C: .4byte 0x0000073E
	thumb_func_end ov113_0225FD80

	thumb_func_start ov113_0225FE30
ov113_0225FE30: @ 0x0225FE30
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r0, [r4, #6]
	adds r5, r2, #0
	cmp r0, #3
	bhi _0225FECE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225FE48: @ jump table
	.2byte _0225FE50 - _0225FE48 - 2 @ case 0
	.2byte _0225FE64 - _0225FE48 - 2 @ case 1
	.2byte _0225FE86 - _0225FE48 - 2 @ case 2
	.2byte _0225FEA0 - _0225FE48 - 2 @ case 3
_0225FE50:
	adds r0, r5, #0
	bl FUN_02020A90
	str r0, [r4]
	ldrb r0, [r4, #6]
	adds r0, r0, #1
	strb r0, [r4, #6]
	ldr r0, _0225FED4 @ =0x000005BE
	bl FUN_02005748
_0225FE64:
	ldr r0, _0225FED8 @ =0xFFFFE556
	adds r1, r5, #0
	bl FUN_02020A78
	movs r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	blt _0225FECE
	movs r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	adds r0, r0, #1
	strb r0, [r4, #6]
	b _0225FECE
_0225FE86:
	movs r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #4
	ble _0225FECE
	movs r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	adds r0, r0, #1
	strb r0, [r4, #6]
	b _0225FECE
_0225FEA0:
	ldr r0, _0225FEDC @ =0x00008555
	adds r1, r5, #0
	bl FUN_02020A78
	movs r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #6
	bge _0225FEC2
	adds r0, r5, #0
	bl FUN_02020A90
	ldr r1, [r4]
	cmp r0, r1
	blt _0225FECE
_0225FEC2:
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_02020A50
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225FECE:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225FED4: .4byte 0x000005BE
_0225FED8: .4byte 0xFFFFE556
_0225FEDC: .4byte 0x00008555
	thumb_func_end ov113_0225FE30

	thumb_func_start ov113_0225FEE0
ov113_0225FEE0: @ 0x0225FEE0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r5, #8
	ldrb r0, [r5, #0xc]
	adds r4, r2, #0
	cmp r0, #0
	beq _0225FEF4
	cmp r0, #1
	beq _0225FF00
	b _0225FF7E
_0225FEF4:
	ldr r0, _0225FF88 @ =0x000005BE
	bl FUN_02005748
	ldrb r0, [r5, #0xc]
	adds r0, r0, #1
	strb r0, [r5, #0xc]
_0225FF00:
	ldrb r0, [r5, #0xd]
	movs r1, #2
	lsls r1, r1, #0xc
	adds r0, r0, #1
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #0xa
	cmp r0, r1
	bge _0225FF18
	lsrs r1, r1, #1
	subs r1, r1, r0
	b _0225FF1E
_0225FF18:
	movs r1, #3
	lsls r1, r1, #0xc
	subs r1, r0, r1
_0225FF1E:
	movs r2, #1
	lsls r2, r2, #0xc
	str r1, [r5, #4]
	cmp r0, r2
	bge _0225FF2C
	str r0, [r5]
	b _0225FF50
_0225FF2C:
	lsls r1, r2, #1
	cmp r0, r1
	bge _0225FF38
	subs r0, r1, r0
	str r0, [r5]
	b _0225FF50
_0225FF38:
	movs r1, #3
	lsls r1, r1, #0xc
	cmp r0, r1
	bge _0225FF4A
	lsls r1, r2, #1
	subs r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r5]
	b _0225FF50
_0225FF4A:
	lsls r1, r2, #2
	subs r0, r0, r1
	str r0, [r5]
_0225FF50:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x10
	blo _0225FF74
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xe]
	adds r0, r0, #1
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xe]
	cmp r0, #2
	blo _0225FF74
	ldrb r0, [r5, #0xc]
	adds r0, r0, #1
	strb r0, [r5, #0xc]
_0225FF74:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02020680
	b _0225FF82
_0225FF7E:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225FF82:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225FF88: .4byte 0x000005BE
	thumb_func_end ov113_0225FEE0

	thumb_func_start ov113_0225FF8C
ov113_0225FF8C: @ 0x0225FF8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	add r0, sp, #8
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	adds r4, #0x18
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	adds r5, r2, #0
	cmp r1, #3
	bhi _0226005A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0225FFB4: @ jump table
	.2byte _0225FFBC - _0225FFB4 - 2 @ case 0
	.2byte _0225FFE6 - _0225FFB4 - 2 @ case 1
	.2byte _02260016 - _0225FFB4 - 2 @ case 2
	.2byte _0226002C - _0225FFB4 - 2 @ case 3
_0225FFBC:
	add r0, sp, #0
	adds r1, r5, #0
	bl FUN_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4, #2]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _02260060 @ =0x000005BE
	bl FUN_02005748
_0225FFE6:
	add r1, sp, #0
	ldrh r2, [r1, #0xa]
	movs r0, #1
	lsls r0, r0, #0xc
	subs r2, r2, r0
	strh r2, [r1, #0xa]
	ldr r1, [r4, #8]
	subs r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	adds r1, r5, #0
	bl FUN_02020A24
	movs r0, #2
	ldrh r1, [r4, #2]
	lsls r0, r0, #0xc
	ldr r2, [r4, #8]
	subs r0, r1, r0
	cmp r2, r0
	bgt _0226005A
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	b _0226005A
_02260016:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _0226005A
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	b _0226005A
_0226002C:
	add r2, sp, #0
	ldrh r3, [r2, #0xa]
	movs r1, #2
	lsls r1, r1, #8
	adds r3, r3, r1
	strh r3, [r2, #0xa]
	ldr r2, [r4, #8]
	adds r1, r2, r1
	str r1, [r4, #8]
	adds r1, r5, #0
	bl FUN_02020A24
	ldrh r0, [r4, #2]
	ldr r1, [r4, #8]
	cmp r1, r0
	blt _0226005A
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_020209D4
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_0226005A:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02260060: .4byte 0x000005BE
	thumb_func_end ov113_0225FF8C

	thumb_func_start ov113_02260064
ov113_02260064: @ 0x02260064
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	add r0, sp, #8
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	adds r4, #0x28
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	adds r5, r2, #0
	cmp r1, #3
	bhi _02260132
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0226008C: @ jump table
	.2byte _02260094 - _0226008C - 2 @ case 0
	.2byte _022600BE - _0226008C - 2 @ case 1
	.2byte _022600EE - _0226008C - 2 @ case 2
	.2byte _02260104 - _0226008C - 2 @ case 3
_02260094:
	add r0, sp, #0
	adds r1, r5, #0
	bl FUN_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4, #2]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _02260138 @ =0x000005BE
	bl FUN_02005748
_022600BE:
	add r1, sp, #0
	ldrh r2, [r1, #0xa]
	movs r0, #1
	lsls r0, r0, #0xc
	adds r2, r2, r0
	strh r2, [r1, #0xa]
	ldr r1, [r4, #8]
	adds r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	adds r1, r5, #0
	bl FUN_02020A24
	movs r0, #2
	ldrh r1, [r4, #2]
	lsls r0, r0, #0xc
	ldr r2, [r4, #8]
	adds r0, r1, r0
	cmp r2, r0
	blt _02260132
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260132
_022600EE:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _02260132
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260132
_02260104:
	add r2, sp, #0
	ldrh r3, [r2, #0xa]
	movs r1, #2
	lsls r1, r1, #8
	subs r3, r3, r1
	strh r3, [r2, #0xa]
	ldr r2, [r4, #8]
	subs r1, r2, r1
	str r1, [r4, #8]
	adds r1, r5, #0
	bl FUN_02020A24
	ldrh r0, [r4, #2]
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _02260132
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_020209D4
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_02260132:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02260138: .4byte 0x000005BE
	thumb_func_end ov113_02260064

	thumb_func_start ov113_0226013C
ov113_0226013C: @ 0x0226013C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	add r0, sp, #8
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	adds r4, #0x38
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	adds r5, r2, #0
	cmp r1, #3
	bhi _02260208
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02260164: @ jump table
	.2byte _0226016C - _02260164 - 2 @ case 0
	.2byte _02260196 - _02260164 - 2 @ case 1
	.2byte _022601C4 - _02260164 - 2 @ case 2
	.2byte _022601DA - _02260164 - 2 @ case 3
_0226016C:
	add r0, sp, #0
	adds r1, r5, #0
	bl FUN_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4]
	str r0, [r4, #8]
	ldr r0, _02260210 @ =0x000005BE
	bl FUN_02005748
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
_02260196:
	add r1, sp, #0
	ldrh r2, [r1, #8]
	ldr r0, _02260214 @ =0x00000AAA
	adds r2, r2, r0
	strh r2, [r1, #8]
	ldr r1, [r4, #8]
	adds r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	adds r1, r5, #0
	bl FUN_02020A24
	movs r0, #2
	ldrh r1, [r4]
	lsls r0, r0, #0xc
	ldr r2, [r4, #8]
	adds r0, r1, r0
	cmp r2, r0
	blt _02260208
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260208
_022601C4:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _02260208
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260208
_022601DA:
	add r2, sp, #0
	ldrh r3, [r2, #8]
	movs r1, #2
	lsls r1, r1, #8
	subs r3, r3, r1
	strh r3, [r2, #8]
	ldr r2, [r4, #8]
	subs r1, r2, r1
	str r1, [r4, #8]
	adds r1, r5, #0
	bl FUN_02020A24
	ldrh r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _02260208
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_020209D4
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_02260208:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02260210: .4byte 0x000005BE
_02260214: .4byte 0x00000AAA
	thumb_func_end ov113_0226013C

	thumb_func_start ov113_02260218
ov113_02260218: @ 0x02260218
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	adds r4, #0x48
	strh r0, [r1, #6]
	ldrb r0, [r4, #0xd]
	adds r5, r2, #0
	cmp r0, #0
	beq _0226023A
	cmp r0, #1
	beq _02260260
	b _022602D2
_0226023A:
	add r0, sp, #0
	adds r1, r5, #0
	bl FUN_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrb r0, [r4, #0xd]
	adds r0, r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _022602E0 @ =0x000005BE
	bl FUN_02005748
_02260260:
	movs r1, #6
	ldr r2, [r4, #8]
	lsls r1, r1, #0xe
	adds r2, r2, r1
	movs r1, #0x5a
	adds r0, r4, #0
	lsls r1, r1, #0xe
	adds r0, #8
	str r2, [r4, #8]
	cmp r2, r1
	blt _02260292
	ldr r2, [r0]
	subs r1, r2, r1
	str r1, [r0]
	ldrb r0, [r4, #0xc]
	adds r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	blo _02260292
	ldrb r0, [r4, #0xd]
	adds r0, r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0
	str r0, [r4, #8]
_02260292:
	ldr r0, [r4, #8]
	bl FUN_0201D2B8
	ldrh r2, [r4]
	add r1, sp, #0
	lsls r6, r0, #0xc
	strh r2, [r1, #8]
	ldrh r2, [r4, #2]
	add r3, sp, #8
	strh r2, [r1, #0xa]
	ldrh r2, [r4, #4]
	strh r2, [r1, #0xc]
	ldrh r2, [r4, #6]
	lsrs r4, r0, #0x14
	strh r2, [r1, #0xe]
	asrs r2, r0, #0x1f
	lsls r2, r2, #0xc
	movs r0, #2
	orrs r2, r4
	movs r4, #0
	lsls r0, r0, #0xa
	adds r6, r6, r0
	adcs r2, r4
	lsls r0, r2, #0x14
	lsrs r2, r6, #0xc
	orrs r2, r0
	strh r2, [r1, #0xa]
	adds r0, r3, #0
	adds r1, r5, #0
	bl FUN_020209B0
	b _022602D8
_022602D2:
	add sp, #0x10
	movs r0, #1
	pop {r4, r5, r6, pc}
_022602D8:
	adds r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_022602E0: .4byte 0x000005BE
	thumb_func_end ov113_02260218

	thumb_func_start ov113_022602E4
ov113_022602E4: @ 0x022602E4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r4, #0x58
	ldrb r0, [r4, #6]
	adds r5, r2, #0
	cmp r0, #3
	bhi _02260384
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022602FE: @ jump table
	.2byte _02260306 - _022602FE - 2 @ case 0
	.2byte _0226031A - _022602FE - 2 @ case 1
	.2byte _0226033C - _022602FE - 2 @ case 2
	.2byte _02260356 - _022602FE - 2 @ case 3
_02260306:
	adds r0, r5, #0
	bl FUN_02020A90
	str r0, [r4]
	ldrb r0, [r4, #6]
	adds r0, r0, #1
	strb r0, [r4, #6]
	ldr r0, _02260388 @ =0x000005BE
	bl FUN_02005748
_0226031A:
	ldr r0, _0226038C @ =0x00001AAA
	adds r1, r5, #0
	bl FUN_02020A78
	movs r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	blt _02260384
	movs r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	adds r0, r0, #1
	strb r0, [r4, #6]
	b _02260384
_0226033C:
	movs r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #4
	ble _02260384
	movs r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	adds r0, r0, #1
	strb r0, [r4, #6]
	b _02260384
_02260356:
	ldr r0, _02260390 @ =0xFFFF7AAB
	adds r1, r5, #0
	bl FUN_02020A78
	movs r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #6
	bge _02260378
	adds r0, r5, #0
	bl FUN_02020A90
	ldr r1, [r4]
	cmp r0, r1
	bgt _02260384
_02260378:
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_02020A50
	movs r0, #1
	pop {r3, r4, r5, pc}
_02260384:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02260388: .4byte 0x000005BE
_0226038C: .4byte 0x00001AAA
_02260390: .4byte 0xFFFF7AAB
	thumb_func_end ov113_022602E4

	thumb_func_start ov113_02260394
ov113_02260394: @ 0x02260394
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r1, #0
	add r1, sp, #0x18
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	adds r4, #0x60
	str r0, [r1, #8]
	ldrb r0, [r4, #0x1d]
	adds r5, r2, #0
	cmp r0, #0
	beq _022603B4
	cmp r0, #1
	beq _022603EA
	b _0226045A
_022603B4:
	add r0, sp, #0xc
	adds r1, r5, #0
	bl FUN_02020ABC
	add r3, sp, #0xc
	adds r2, r4, #0
	ldm r3!, {r0, r1}
	adds r2, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r1, r5, #0
	str r0, [r2]
	add r0, sp, #0
	bl FUN_02020AAC
	add r3, sp, #0
	ldm r3!, {r0, r1}
	adds r2, r4, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrb r0, [r4, #0x1d]
	adds r0, r0, #1
	strb r0, [r4, #0x1d]
	ldr r0, _02260468 @ =0x000005BE
	bl FUN_02005748
_022603EA:
	movs r1, #2
	ldr r2, [r4, #0x18]
	lsls r1, r1, #0x10
	adds r2, r2, r1
	movs r1, #0x5a
	adds r0, r4, #0
	lsls r1, r1, #0xe
	adds r0, #0x18
	str r2, [r4, #0x18]
	cmp r2, r1
	blt _0226041C
	ldr r2, [r0]
	subs r1, r2, r1
	str r1, [r0]
	ldrb r0, [r4, #0x1c]
	adds r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1c]
	cmp r0, #4
	blo _0226041C
	ldrb r0, [r4, #0x1d]
	adds r0, r0, #1
	strb r0, [r4, #0x1d]
	movs r0, #0
	str r0, [r4, #0x18]
_0226041C:
	ldr r0, [r4, #0x18]
	bl FUN_0201D2B8
	asrs r1, r0, #0x1f
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsls r3, r0, #0x10
	movs r0, #2
	orrs r1, r2
	movs r2, #0
	lsls r0, r0, #0xa
	adds r3, r3, r0
	adcs r1, r2
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	str r1, [sp, #0x18]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_02020ACC
	adds r4, #0xc
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_02020ADC
	add r0, sp, #0x18
	adds r1, r5, #0
	bl FUN_02020990
	b _02260460
_0226045A:
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, pc}
_02260460:
	movs r0, #0
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02260468: .4byte 0x000005BE
	thumb_func_end ov113_02260394

	thumb_func_start ov113_0226046C
ov113_0226046C: @ 0x0226046C
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r1, #0
	add r1, sp, #0x18
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	adds r4, #0x80
	str r0, [r1, #8]
	ldrb r0, [r4, #0x1d]
	adds r5, r2, #0
	cmp r0, #0
	beq _0226048C
	cmp r0, #1
	beq _022604C2
	b _02260532
_0226048C:
	add r0, sp, #0xc
	adds r1, r5, #0
	bl FUN_02020ABC
	add r3, sp, #0xc
	adds r2, r4, #0
	ldm r3!, {r0, r1}
	adds r2, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r1, r5, #0
	str r0, [r2]
	add r0, sp, #0
	bl FUN_02020AAC
	add r3, sp, #0
	ldm r3!, {r0, r1}
	adds r2, r4, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrb r0, [r4, #0x1d]
	adds r0, r0, #1
	strb r0, [r4, #0x1d]
	ldr r0, _02260540 @ =0x000005BE
	bl FUN_02005748
_022604C2:
	movs r1, #2
	ldr r2, [r4, #0x18]
	lsls r1, r1, #0x10
	adds r2, r2, r1
	movs r1, #0x5a
	adds r0, r4, #0
	lsls r1, r1, #0xe
	adds r0, #0x18
	str r2, [r4, #0x18]
	cmp r2, r1
	blt _022604F4
	ldr r2, [r0]
	subs r1, r2, r1
	str r1, [r0]
	ldrb r0, [r4, #0x1c]
	adds r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1c]
	cmp r0, #4
	blo _022604F4
	ldrb r0, [r4, #0x1d]
	adds r0, r0, #1
	strb r0, [r4, #0x1d]
	movs r0, #0
	str r0, [r4, #0x18]
_022604F4:
	ldr r0, [r4, #0x18]
	bl FUN_0201D2B8
	asrs r1, r0, #0x1f
	lsrs r2, r0, #0x11
	lsls r1, r1, #0xf
	lsls r3, r0, #0xf
	movs r0, #2
	orrs r1, r2
	movs r2, #0
	lsls r0, r0, #0xa
	adds r3, r3, r0
	adcs r1, r2
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	str r1, [sp, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_02020ACC
	adds r4, #0xc
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_02020ADC
	add r0, sp, #0x18
	adds r1, r5, #0
	bl FUN_02020990
	b _02260538
_02260532:
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, pc}
_02260538:
	movs r0, #0
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02260540: .4byte 0x000005BE
	thumb_func_end ov113_0226046C

	thumb_func_start ov113_02260544
ov113_02260544: @ 0x02260544
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	add r0, sp, #8
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	adds r4, #0xa0
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	adds r5, r2, #0
	cmp r1, #3
	bhi _02260610
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0226056C: @ jump table
	.2byte _02260574 - _0226056C - 2 @ case 0
	.2byte _0226059E - _0226056C - 2 @ case 1
	.2byte _022605CC - _0226056C - 2 @ case 2
	.2byte _022605E2 - _0226056C - 2 @ case 3
_02260574:
	add r0, sp, #0
	adds r1, r5, #0
	bl FUN_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _02260618 @ =0x000005BE
	bl FUN_02005748
_0226059E:
	add r1, sp, #0
	ldrh r2, [r1, #8]
	ldr r0, _0226061C @ =0x00000AAA
	subs r2, r2, r0
	strh r2, [r1, #8]
	ldr r1, [r4, #8]
	subs r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	adds r1, r5, #0
	bl FUN_02020A24
	movs r0, #2
	ldrh r1, [r4]
	lsls r0, r0, #0xc
	ldr r2, [r4, #8]
	subs r0, r1, r0
	cmp r2, r0
	bgt _02260610
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260610
_022605CC:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _02260610
	ldrb r0, [r4, #0xe]
	adds r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260610
_022605E2:
	add r2, sp, #0
	ldrh r3, [r2, #8]
	movs r1, #2
	lsls r1, r1, #8
	adds r3, r3, r1
	strh r3, [r2, #8]
	ldr r2, [r4, #8]
	adds r1, r2, r1
	str r1, [r4, #8]
	adds r1, r5, #0
	bl FUN_02020A24
	ldrh r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, r0
	blt _02260610
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_020209D4
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_02260610:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02260618: .4byte 0x000005BE
_0226061C: .4byte 0x00000AAA
	thumb_func_end ov113_02260544

	thumb_func_start ov113_02260620
ov113_02260620: @ 0x02260620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x14]
	adds r4, r2, #0
	str r3, [sp, #0x18]
	bl FUN_02232B8C
	adds r5, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	beq _02260706
	ldr r0, [sp, #0x40]
	bl FUN_02232B78
	movs r1, #0
	mvns r1, r1
	str r0, [sp, #0x24]
	cmp r0, r1
	beq _02260706
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	bl FUN_0222E374
	adds r7, r0, #0
	beq _02260706
	cmp r5, #8
	blo _02260664
	bl FUN_02022974
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02260664:
	movs r0, #0x76
	bl FUN_02025E6C
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x76
	bl FUN_0222E640
	adds r0, r6, #0
	movs r1, #0x76
	bl FUN_02025F04
	str r0, [sp, #0x1c]
	adds r0, r6, #0
	bl FUN_02025F30
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	movs r1, #0
	bl FUN_0200B48C
	ldr r0, [sp, #0x10]
	movs r1, #0
	bl FUN_0200B1EC
	str r0, [sp, #0x20]
	movs r0, #0x40
	movs r1, #0x76
	bl FUN_02023790
	adds r7, r0, #0
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x20]
	adds r1, r7, #0
	bl FUN_0200C388
	lsls r5, r5, #4
	adds r0, r4, r5
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	bl FUN_0222E924
	cmp r0, #1
	bne _022606D2
	ldr r0, _0226070C @ =0x00070800
	b _022606D4
_022606D2:
	ldr r0, _02260710 @ =0x00010200
_022606D4:
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, r5
	adds r2, r7, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, r5
	bl FUN_0201A954
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	ldr r0, [sp, #0x20]
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020181C4
_02260706:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226070C: .4byte 0x00070800
_02260710: .4byte 0x00010200
	thumb_func_end ov113_02260620

	thumb_func_start ov113_02260714
ov113_02260714: @ 0x02260714
	push {r3, lr}
	cmp r1, #8
	blo _02260720
	bl FUN_02022974
	pop {r3, pc}
_02260720:
	lsls r1, r1, #4
	adds r0, r0, r1
	bl FUN_0201ACF4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov113_02260714

	thumb_func_start ov113_0226072C
ov113_0226072C: @ 0x0226072C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #9
	blx FUN_020E2178
	lsls r2, r1, #2
	ldr r0, _02260744 @ =0x02260D6C
	lsls r1, r4, #1
	adds r0, r0, r2
	ldrh r0, [r1, r0]
	pop {r4, pc}
	.align 2, 0
_02260744: .4byte 0x02260D6C
	thumb_func_end ov113_0226072C

	thumb_func_start ov113_02260748
ov113_02260748: @ 0x02260748
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _02260784 @ =0x02260D4C
	adds r6, r1, #0
	movs r4, #0xff
	bl FUN_02022664
	cmp r0, #6
	bge _02260776
	cmp r6, r0
	beq _02260780
	movs r1, #0xc
	muls r1, r0, r1
	adds r1, r5, r1
	ldrh r2, [r1, #2]
	cmp r2, #0
	beq _02260780
	adds r1, r4, #0
	adds r1, #0xee
	cmp r2, r1
	bhi _02260780
	adds r4, r0, #0
	b _02260780
_02260776:
	bne _0226077C
	movs r4, #0xfe
	b _02260780
_0226077C:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_02260780:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02260784: .4byte 0x02260D4C
	thumb_func_end ov113_02260748

	thumb_func_start ov113_02260788
ov113_02260788: @ 0x02260788
	ldr r3, _022607AC @ =0x000001E7
	cmp r0, r3
	bne _02260796
	cmp r1, #0
	ble _02260796
	movs r0, #0
	bx lr
_02260796:
	ldr r1, _022607B0 @ =0x000001ED
	cmp r0, r1
	bne _022607A4
	cmp r2, #0
	bne _022607A4
	movs r0, #0
	bx lr
_022607A4:
	lsls r1, r0, #2
	ldr r0, _022607B4 @ =0x02260D90
	ldrb r0, [r0, r1]
	bx lr
	.align 2, 0
_022607AC: .4byte 0x000001E7
_022607B0: .4byte 0x000001ED
_022607B4: .4byte 0x02260D90
	thumb_func_end ov113_02260788

	thumb_func_start ov113_022607B8
ov113_022607B8: @ 0x022607B8
	ldr r2, _022607D0 @ =0x000001E7
	cmp r0, r2
	bne _022607C6
	cmp r1, #0
	ble _022607C6
	movs r0, #2
	bx lr
_022607C6:
	lsls r1, r0, #2
	ldr r0, _022607D4 @ =0x02260D91
	ldrb r0, [r0, r1]
	bx lr
	nop
_022607D0: .4byte 0x000001E7
_022607D4: .4byte 0x02260D91
	thumb_func_end ov113_022607B8

	thumb_func_start ov113_022607D8
ov113_022607D8: @ 0x022607D8
	ldr r3, _022607E4 @ =FUN_02232D60
	adds r2, r0, #0
	ldr r0, _022607E8 @ =0x02261548
	movs r1, #3
	bx r3
	nop
_022607E4: .4byte FUN_02232D60
_022607E8: .4byte 0x02261548
	thumb_func_end ov113_022607D8

	thumb_func_start ov113_022607EC
ov113_022607EC: @ 0x022607EC
	push {r3, lr}
	ldr r2, [r1, #4]
	cmp r2, r0
	bne _022607F8
	movs r0, #0
	pop {r3, pc}
_022607F8:
	ldr r1, [r1]
	cmp r1, #0
	bne _02260802
	movs r0, #0
	pop {r3, pc}
_02260802:
	bl FUN_02232B8C
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02260812
	movs r0, #1
	pop {r3, pc}
_02260812:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov113_022607EC

	thumb_func_start ov113_02260818
ov113_02260818: @ 0x02260818
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02231760
	cmp r0, #1
	bne _02260828
	movs r0, #0
	pop {r4, pc}
_02260828:
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xc
	bl FUN_02232EBC
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov113_02260818

	thumb_func_start ov113_02260838
ov113_02260838: @ 0x02260838
	push {r3, r4, r5, lr}
	adds r4, r3, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov113_0225DD44
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov113_022607EC
	cmp r0, #0
	beq _02260858
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov113_0225E044
_02260858:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov113_02260838

	thumb_func_start ov113_0226085C
ov113_0226085C: @ 0x0226085C
	push {r3, r4, r5, lr}
	adds r4, r3, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov113_0225DD44
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov113_022607EC
	cmp r0, #0
	beq _02260882
	adds r0, r5, #0
	bl FUN_02232B8C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov113_0225E05C
_02260882:
	pop {r3, r4, r5, pc}
	thumb_func_end ov113_0226085C

	thumb_func_start ov113_02260884
ov113_02260884: @ 0x02260884
	push {r4, r5, r6, lr}
	adds r6, r3, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r1, #0
	bl ov113_0225DD44
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov113_022607EC
	cmp r0, #0
	beq _022608A8
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov113_0225DDC0
_022608A8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov113_02260884
	@ 0x022608AC
