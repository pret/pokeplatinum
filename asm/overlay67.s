
	thumb_func_start ov67_0225C700
ov67_0225C700: @ 0x0225C700
	push {r4, r5, lr}
	sub sp, #0x1c
	movs r2, #2
	adds r4, r0, #0
	movs r0, #3
	movs r1, #0x70
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #1
	adds r0, r4, #0
	lsls r1, r1, #0xa
	movs r2, #0x70
	bl FUN_0200681C
	movs r2, #1
	movs r1, #0
	lsls r2, r2, #0xa
	adds r5, r0, #0
	blx FUN_020D5124
	adds r0, r4, #0
	bl FUN_02006840
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, _0225C810 @ =0x00000497
	str r0, [r5]
	movs r0, #0xb
	movs r2, #0
	bl FUN_02004550
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r5, #0
	movs r1, #0x70
	bl ov67_0225CE30
	movs r0, #2
	str r0, [sp]
	movs r0, #0x13
	str r0, [sp, #4]
	movs r0, #0x1b
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r5]
	ldr r3, _0225C814 @ =0x000002A2
	str r0, [sp, #0x14]
	movs r0, #0x70
	str r0, [sp, #0x18]
	adds r0, r5, #0
	ldr r1, [r5, #0xc]
	adds r0, #0x40
	movs r2, #1
	bl ov67_0225D188
	movs r0, #2
	str r0, [sp]
	movs r0, #0x13
	str r0, [sp, #4]
	movs r0, #0x1b
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r5]
	ldr r3, _0225C818 @ =0x000002B7
	str r0, [sp, #0x14]
	movs r0, #0x70
	str r0, [sp, #0x18]
	adds r0, r5, #0
	ldr r1, [r5, #0xc]
	adds r0, #0x70
	movs r2, #1
	bl ov67_0225D188
	movs r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x17
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	ldr r0, [r5]
	ldr r3, _0225C818 @ =0x000002B7
	str r0, [sp, #0x14]
	movs r0, #0x70
	str r0, [sp, #0x18]
	adds r0, r5, #0
	ldr r1, [r5, #0xc]
	adds r0, #0xa0
	movs r2, #0
	bl ov67_0225D188
	movs r0, #5
	str r0, [sp]
	movs r2, #1
	movs r3, #0x87
	str r2, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	lsls r3, r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r5]
	adds r3, #0x86
	str r0, [sp, #0x14]
	movs r0, #0x70
	str r0, [sp, #0x18]
	adds r0, r5, #0
	ldr r1, [r5, #0xc]
	adds r0, #0x10
	bl ov67_0225D188
	adds r0, r5, #0
	adds r0, #0x10
	movs r1, #0x15
	bl ov67_0225D37C
	ldr r0, _0225C81C @ =ov67_0225CE28
	adds r1, r5, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0225C810: .4byte 0x00000497
_0225C814: .4byte 0x000002A2
_0225C818: .4byte 0x000002B7
_0225C81C: .4byte ov67_0225CE28
	thumb_func_end ov67_0225C700

	thumb_func_start ov67_0225C820
ov67_0225C820: @ 0x0225C820
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	bl FUN_0200682C
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_02006840
	adds r6, r0, #0
	ldr r0, [r4]
	cmp r0, #0xf
	bls _0225C83E
	b _0225CB06
_0225C83E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225C84A: @ jump table
	.2byte _0225C86A - _0225C84A - 2 @ case 0
	.2byte _0225C888 - _0225C84A - 2 @ case 1
	.2byte _0225C898 - _0225C84A - 2 @ case 2
	.2byte _0225C8CA - _0225C84A - 2 @ case 3
	.2byte _0225C8F8 - _0225C84A - 2 @ case 4
	.2byte _0225C920 - _0225C84A - 2 @ case 5
	.2byte _0225C954 - _0225C84A - 2 @ case 6
	.2byte _0225CAD8 - _0225C84A - 2 @ case 7
	.2byte _0225CAF8 - _0225C84A - 2 @ case 8
	.2byte _0225C9A2 - _0225C84A - 2 @ case 9
	.2byte _0225C9FE - _0225C84A - 2 @ case 10
	.2byte _0225CA32 - _0225C84A - 2 @ case 11
	.2byte _0225CA60 - _0225C84A - 2 @ case 12
	.2byte _0225CA88 - _0225C84A - 2 @ case 13
	.2byte _0225CA96 - _0225C84A - 2 @ case 14
	.2byte _0225CABA - _0225C84A - 2 @ case 15
_0225C86A:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	ldr r3, _0225CB10 @ =0x0000FFFF
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225C888:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225C8E2
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225C898:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0225C8C4
	adds r0, r5, #0
	adds r0, #0x70
	movs r1, #0x11
	bl ov67_0225D210
	movs r0, #0x70
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r1, _0225CB14 @ =0x0225D3EC
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_02002100
	adds r5, #0xd0
	str r0, [r5]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225C8C4:
	movs r0, #4
	str r0, [r4]
	b _0225CB0A
_0225C8CA:
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0x70
	bl FUN_02002114
	cmp r0, #0
	beq _0225C8E4
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0225C8EA
_0225C8E2:
	b _0225CB0A
_0225C8E4:
	movs r0, #4
	str r0, [r4]
	b _0225CB0A
_0225C8EA:
	adds r5, #0x40
	adds r0, r5, #0
	bl ov67_0225D294
	movs r0, #7
	str r0, [r4]
	b _0225CB0A
_0225C8F8:
	ldr r0, [r6, #4]
	bl FUN_0222E3BC
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_0203878C
	adds r0, r5, #0
	adds r0, #0x70
	movs r1, #0x17
	bl ov67_0225D210
	adds r5, #0x70
	adds r0, r5, #0
	bl ov67_0225D2EC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225C920:
	bl FUN_020383E8
	cmp r0, #0
	bne _0225C930
	bl FUN_0203881C
	cmp r0, #0
	beq _0225C93C
_0225C930:
	adds r5, #0x70
	adds r0, r5, #0
	bl ov67_0225D310
	movs r0, #9
	str r0, [r4]
_0225C93C:
	bl FUN_02038804
	cmp r0, #1
	beq _0225C946
	b _0225CB0A
_0225C946:
	ldr r0, [r6, #4]
	bl FUN_0222F16C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225C954:
	bl FUN_020383E8
	cmp r0, #0
	bne _0225C964
	bl FUN_0203881C
	cmp r0, #0
	beq _0225C970
_0225C964:
	adds r0, r5, #0
	adds r0, #0x70
	bl ov67_0225D310
	movs r0, #9
	str r0, [r4]
_0225C970:
	bl FUN_02038294
	cmp r0, #0
	beq _0225CA76
	adds r0, r5, #0
	adds r0, #0x70
	bl ov67_0225D310
	ldr r0, [r5]
	bl FUN_0202CD88
	movs r1, #0x2c
	bl FUN_0202CFEC
	bl FUN_020138EC
	ldr r2, [r6, #0xc]
	str r0, [r2]
	str r1, [r2, #4]
	movs r0, #1
	str r0, [r6, #0x10]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225C9A2:
	bl FUN_020383E8
	cmp r0, #0
	beq _0225C9BE
	bl FUN_020382F8
	adds r7, r0, #0
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl FUN_022316F4
	str r0, [sp, #0xc]
	ldr r7, [r7]
	b _0225C9CC
_0225C9BE:
	bl FUN_022326DC
	bl FUN_0223270C
	adds r7, r0, #0
	movs r0, #0x20
	str r0, [sp, #0xc]
_0225C9CC:
	ldr r0, [r6, #4]
	bl FUN_0222F198
	adds r0, r5, #0
	adds r0, #0x40
	bl ov67_0225D294
	adds r0, r5, #0
	adds r0, #0x70
	bl ov67_0225D294
	adds r0, r5, #0
	adds r0, #0xa0
	adds r1, r7, #0
	bl ov67_0225D3D0
	adds r5, #0xa0
	ldr r1, [sp, #0xc]
	adds r0, r5, #0
	bl ov67_0225D210
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225C9FE:
	ldr r0, _0225CB18 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0225CA76
	bl FUN_020383E8
	cmp r0, #0
	beq _0225CA2C
	bl FUN_020382F8
	adds r1, r0, #0
	ldm r1, {r0, r1}
	bl FUN_02231718
	cmp r0, #0
	bne _0225CA26
	movs r0, #0xb
	str r0, [r4]
	b _0225CB0A
_0225CA26:
	movs r0, #0xe
	str r0, [r4]
	b _0225CB0A
_0225CA2C:
	movs r0, #0xb
	str r0, [r4]
	b _0225CB0A
_0225CA32:
	adds r0, r5, #0
	adds r0, #0xa0
	bl ov67_0225D294
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0x58
	bl ov67_0225D210
	movs r0, #0x70
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r1, _0225CB14 @ =0x0225D3EC
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_02002100
	adds r5, #0xd0
	str r0, [r5]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225CA60:
	adds r5, #0xd0
	ldr r0, [r5]
	movs r1, #0x70
	bl FUN_02002114
	cmp r0, #0
	beq _0225CA78
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0225CA82
_0225CA76:
	b _0225CB0A
_0225CA78:
	bl FUN_020387E8
	movs r0, #0xd
	str r0, [r4]
	b _0225CB0A
_0225CA82:
	movs r0, #0xe
	str r0, [r4]
	b _0225CB0A
_0225CA88:
	bl FUN_02036780
	cmp r0, #0
	bne _0225CB0A
	movs r0, #4
	str r0, [r4]
	b _0225CB0A
_0225CA96:
	adds r0, r5, #0
	adds r0, #0x40
	bl ov67_0225D294
	adds r0, r5, #0
	adds r0, #0x70
	bl ov67_0225D294
	adds r5, #0xa0
	adds r0, r5, #0
	bl ov67_0225D294
	bl FUN_020387E8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225CABA:
	bl FUN_02036780
	cmp r0, #0
	bne _0225CB0A
	adds r0, r5, #0
	adds r0, #0x40
	bl ov67_0225D294
	adds r5, #0x70
	adds r0, r5, #0
	bl ov67_0225D294
	movs r0, #7
	str r0, [r4]
	b _0225CB0A
_0225CAD8:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CB0A
_0225CAF8:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225CB0A
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225CB06:
	bl FUN_02022974
_0225CB0A:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225CB10: .4byte 0x0000FFFF
_0225CB14: .4byte 0x0225D3EC
_0225CB18: .4byte 0x021BF67C
	thumb_func_end ov67_0225C820

	thumb_func_start ov67_0225CB1C
ov67_0225CB1C: @ 0x0225CB1C
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	beq _0225CB4C
	bl FUN_0200DA58
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xd4
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xd8
	str r1, [r0]
_0225CB4C:
	adds r0, r4, #0
	adds r0, #0x40
	bl ov67_0225D330
	adds r0, r4, #0
	adds r0, #0x70
	bl ov67_0225D330
	adds r0, r4, #0
	adds r0, #0xa0
	bl ov67_0225D330
	adds r0, r4, #0
	adds r0, #0x10
	bl ov67_0225D330
	adds r0, r4, #0
	bl ov67_0225D154
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xd8
	str r1, [r0]
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0x70
	bl FUN_0201807C
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov67_0225CB1C

	thumb_func_start ov67_0225CB8C
ov67_0225CB8C: @ 0x0225CB8C
	push {r4, r5, lr}
	sub sp, #0x1c
	movs r2, #2
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x70
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #1
	adds r0, r5, #0
	lsls r1, r1, #0xa
	movs r2, #0x70
	bl FUN_0200681C
	movs r2, #1
	movs r1, #0
	lsls r2, r2, #0xa
	adds r4, r0, #0
	blx FUN_020D5124
	adds r0, r5, #0
	bl FUN_02006840
	ldr r0, [r0]
	movs r1, #0x70
	str r0, [r4]
	adds r0, r4, #0
	bl ov67_0225CE30
	movs r0, #2
	str r0, [sp]
	movs r0, #0x13
	str r0, [sp, #4]
	movs r0, #0x1b
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r3, _0225CC64 @ =0x000002B7
	str r0, [sp, #0x14]
	movs r0, #0x70
	str r0, [sp, #0x18]
	adds r0, r4, #0
	ldr r1, [r4, #0xc]
	adds r0, #0x40
	movs r2, #1
	bl ov67_0225D188
	movs r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x17
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r3, _0225CC64 @ =0x000002B7
	str r0, [sp, #0x14]
	movs r0, #0x70
	str r0, [sp, #0x18]
	adds r0, r4, #0
	ldr r1, [r4, #0xc]
	adds r0, #0xa0
	movs r2, #0
	bl ov67_0225D188
	movs r0, #5
	str r0, [sp]
	movs r2, #1
	movs r3, #0x87
	str r2, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	lsls r3, r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r4]
	adds r3, #0x86
	str r0, [sp, #0x14]
	movs r0, #0x70
	str r0, [sp, #0x18]
	adds r0, r4, #0
	ldr r1, [r4, #0xc]
	adds r0, #0x10
	bl ov67_0225D188
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #0x15
	bl ov67_0225D37C
	bl FUN_02039734
	ldr r0, _0225CC68 @ =ov67_0225CE28
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_0225CC64: .4byte 0x000002B7
_0225CC68: .4byte ov67_0225CE28
	thumb_func_end ov67_0225CB8C

	thumb_func_start ov67_0225CC6C
ov67_0225CC6C: @ 0x0225CC6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r1, #0
	bl FUN_0200682C
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_02006840
	adds r6, r0, #0
	ldr r0, [r4]
	cmp r0, #0xa
	bls _0225CC8A
	b _0225CDB6
_0225CC8A:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225CC96: @ jump table
	.2byte _0225CCAC - _0225CC96 - 2 @ case 0
	.2byte _0225CCCA - _0225CC96 - 2 @ case 1
	.2byte _0225CCD8 - _0225CC96 - 2 @ case 2
	.2byte _0225CD0E - _0225CC96 - 2 @ case 3
	.2byte _0225CD1E - _0225CC96 - 2 @ case 4
	.2byte _0225CD38 - _0225CC96 - 2 @ case 5
	.2byte _0225CD42 - _0225CC96 - 2 @ case 6
	.2byte _0225CD5E - _0225CC96 - 2 @ case 7
	.2byte _0225CD72 - _0225CC96 - 2 @ case 8
	.2byte _0225CD80 - _0225CC96 - 2 @ case 9
	.2byte _0225CDA0 - _0225CC96 - 2 @ case 10
_0225CCAC:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	ldr r3, _0225CDBC @ =0x0000FFFF
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CDB6
_0225CCCA:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225CDB6
	movs r0, #2
	str r0, [r4]
	b _0225CDB6
_0225CCD8:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0x1a
	bl ov67_0225D210
	bl FUN_020383E8
	cmp r0, #0
	bne _0225CCF2
	bl FUN_0203881C
	cmp r0, #0
	beq _0225CD00
_0225CCF2:
	movs r0, #5
	adds r5, #0x40
	str r0, [r4]
	adds r0, r5, #0
	bl ov67_0225D2EC
	b _0225CDB6
_0225CD00:
	movs r0, #3
	adds r5, #0x40
	str r0, [r4]
	adds r0, r5, #0
	bl ov67_0225D2EC
	b _0225CDB6
_0225CD0E:
	bl FUN_02232C8C
	movs r0, #0xe1
	lsls r0, r0, #2
	str r0, [r5, #8]
	movs r0, #4
	str r0, [r4]
	b _0225CDB6
_0225CD1E:
	ldr r0, [r5, #8]
	subs r0, r0, #1
	str r0, [r5, #8]
	bl FUN_02232CB8
	cmp r0, #0
	bne _0225CD32
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0225CDB6
_0225CD32:
	movs r0, #5
	str r0, [r4]
	b _0225CDB6
_0225CD38:
	bl FUN_020387E8
	movs r0, #6
	str r0, [r4]
	b _0225CDB6
_0225CD42:
	bl FUN_02036780
	cmp r0, #0
	bne _0225CDB6
	adds r5, #0x70
	adds r0, r5, #0
	bl ov67_0225D310
	ldr r0, [r6, #4]
	bl FUN_0222F198
	movs r0, #7
	str r0, [r4]
	b _0225CDB6
_0225CD5E:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0x1b
	bl ov67_0225D210
	movs r0, #0x5a
	str r0, [r5, #8]
	movs r0, #8
	str r0, [r4]
	b _0225CDB6
_0225CD72:
	ldr r0, [r5, #8]
	subs r0, r0, #1
	str r0, [r5, #8]
	bne _0225CDB6
	movs r0, #9
	str r0, [r4]
	b _0225CDB6
_0225CD80:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225CDB6
_0225CDA0:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225CDB6
	adds r5, #0x40
	adds r0, r5, #0
	bl ov67_0225D310
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0225CDB6:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0225CDBC: .4byte 0x0000FFFF
	thumb_func_end ov67_0225CC6C

	thumb_func_start ov67_0225CDC0
ov67_0225CDC0: @ 0x0225CDC0
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	beq _0225CDF0
	bl FUN_0200DA58
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xd4
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xd8
	str r1, [r0]
_0225CDF0:
	adds r0, r4, #0
	adds r0, #0x40
	bl ov67_0225D330
	adds r0, r4, #0
	adds r0, #0xa0
	bl ov67_0225D330
	adds r0, r4, #0
	adds r0, #0x10
	bl ov67_0225D330
	adds r0, r4, #0
	bl ov67_0225D154
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xd8
	str r1, [r0]
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0x70
	bl FUN_0201807C
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov67_0225CDC0

	thumb_func_start ov67_0225CE28
ov67_0225CE28: @ 0x0225CE28
	ldr r3, _0225CE2C @ =ov67_0225D17C
	bx r3
	.align 2, 0
_0225CE2C: .4byte ov67_0225D17C
	thumb_func_end ov67_0225CE28

	thumb_func_start ov67_0225CE30
ov67_0225CE30: @ 0x0225CE30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	adds r6, r1, #0
	ldr r0, _0225D0A4 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0225D0A8 @ =0x04001050
	strh r1, [r0]
	ldr r0, _0225D0AC @ =0x0225D410
	bl FUN_0201FE94
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	ldr r0, _0225D0B0 @ =0x0225D400
	bl FUN_02018368
	adds r0, r6, #0
	bl FUN_02018340
	ldr r1, [sp, #0x10]
	ldr r4, _0225D0B4 @ =0x0225D438
	ldr r5, _0225D0B8 @ =0x0225D3F4
	str r0, [r1, #0xc]
	movs r7, #0
_0225CE66:
	ldr r0, [sp, #0x10]
	ldr r1, [r5]
	ldr r0, [r0, #0xc]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r4, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5]
	movs r1, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	adds r3, r6, #0
	bl FUN_02019690
	ldr r0, [sp, #0x10]
	ldr r1, [r5]
	ldr r0, [r0, #0xc]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	adds r7, r7, #1
	adds r4, #0x1c
	adds r5, r5, #4
	cmp r7, #3
	blt _0225CE66
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	bl FUN_02025E44
	bl FUN_02027B50
	lsls r0, r0, #0x18
	movs r1, #6
	lsrs r4, r0, #0x18
	movs r0, #0
	lsls r1, r1, #6
	adds r2, r6, #0
	bl FUN_02002E7C
	movs r1, #0x16
	movs r0, #0
	lsls r1, r1, #4
	adds r2, r6, #0
	bl FUN_02002E98
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	str r6, [sp, #4]
	ldr r0, [r0, #0xc]
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_0200DAA4
	str r4, [sp]
	movs r1, #1
	ldr r0, [sp, #0x10]
	str r6, [sp, #4]
	ldr r0, [r0, #0xc]
	adds r2, r1, #0
	movs r3, #0xd
	bl FUN_0200DD0C
	movs r0, #0x16
	lsls r0, r0, #4
	str r0, [sp]
	movs r2, #0
	movs r0, #0x5c
	movs r1, #3
	adds r3, r2, #0
	str r6, [sp, #4]
	bl FUN_02006E84
	movs r0, #0x16
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #0x5c
	movs r1, #3
	movs r2, #4
	movs r3, #0
	str r6, [sp, #4]
	bl FUN_02006E84
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [sp, #0x10]
	str r6, [sp, #0xc]
	ldr r2, [r2, #0xc]
	movs r0, #0x5c
	movs r1, #2
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	str r6, [sp, #0xc]
	ldr r2, [r2, #0xc]
	movs r0, #0x5c
	movs r1, #0xa
	movs r3, #4
	bl FUN_02006E3C
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [sp, #0x10]
	str r6, [sp, #0xc]
	ldr r2, [r2, #0xc]
	movs r0, #0x5c
	movs r1, #5
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	str r6, [sp, #0xc]
	ldr r2, [r2, #0xc]
	movs r0, #0x5c
	movs r1, #0xb
	movs r3, #4
	bl FUN_02006E60
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x5c
	adds r1, r6, #0
	bl FUN_02006C24
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	movs r2, #0xcb
	adds r0, #0xd4
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	ldr r0, [sp, #0x2c]
	movs r1, #4
	add r2, sp, #0x38
	adds r3, r6, #0
	bl FUN_020071EC
	adds r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	adds r1, #0xdc
	movs r2, #0x80
	blx FUN_020C4B18
	ldr r0, [sp, #0x38]
	movs r2, #0x57
	ldr r1, [sp, #0x10]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020C4B18
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	movs r1, #0x57
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, #0xdc
	str r0, [sp, #0x14]
_0225CFDE:
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	lsls r1, r0, #5
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x30]
_0225CFF0:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _0225CFFA
	bl FUN_02022974
_0225CFFA:
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
_0225D012:
	adds r0, r6, #0
	adds r0, #0xdc
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
	blt _0225D012
	ldr r0, [sp, #0x18]
	adds r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _0225D05E
	movs r0, #3
	ldr r1, [sp, #0x20]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0225CFF0
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x1c]
	b _0225CFF0
_0225D05E:
	ldr r0, [sp, #0x14]
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _0225CFDE
	movs r1, #0x57
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x2a
	lsls r1, r1, #4
	blx FUN_020C2C54
	ldr r0, [sp, #0x10]
	movs r1, #1
	adds r0, #0xd8
	str r1, [r0]
	ldr r1, [sp, #0x10]
	ldr r0, _0225D0BC @ =ov67_0225D0C0
	adds r1, #0xd4
	movs r2, #0x14
	bl FUN_0200DA04
	ldr r1, [sp, #0x10]
	adds r1, #0xd4
	str r0, [r1]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x10]
	bl FUN_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225D0A4: .4byte 0x04000050
_0225D0A8: .4byte 0x04001050
_0225D0AC: .4byte 0x0225D410
_0225D0B0: .4byte 0x0225D400
_0225D0B4: .4byte 0x0225D438
_0225D0B8: .4byte 0x0225D3F4
_0225D0BC: .4byte ov67_0225D0C0
	thumb_func_end ov67_0225CE30

	thumb_func_start ov67_0225D0C0
ov67_0225D0C0: @ 0x0225D0C0
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225D148
	ldr r0, _0225D14C @ =0x0000032B
	movs r1, #1
	ldrb r2, [r4, r0]
	eors r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _0225D148
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
	ldr r0, _0225D150 @ =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _0225D12C
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	adds r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _0225D148
	movs r2, #0x13
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	movs r1, #1
	eors r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_0225D12C:
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	subs r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0225D148
	movs r2, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eors r1, r2
	strb r1, [r4, r0]
_0225D148:
	pop {r4, pc}
	nop
_0225D14C: .4byte 0x0000032B
_0225D150: .4byte 0x0000032A
	thumb_func_end ov67_0225D0C0

	thumb_func_start ov67_0225D154
ov67_0225D154: @ 0x0225D154
	push {r4, r5, r6, lr}
	ldr r5, _0225D178 @ =0x0225D3F4
	adds r6, r0, #0
	movs r4, #0
_0225D15C:
	ldr r1, [r5]
	ldr r0, [r6, #0xc]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0225D15C
	ldr r0, [r6, #0xc]
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225D178: .4byte 0x0225D3F4
	thumb_func_end ov67_0225D154

	thumb_func_start ov67_0225D17C
ov67_0225D17C: @ 0x0225D17C
	ldr r3, _0225D184 @ =FUN_0201C2B8
	ldr r0, [r0, #0xc]
	bx r3
	nop
_0225D184: .4byte FUN_0201C2B8
	thumb_func_end ov67_0225D17C

	thumb_func_start ov67_0225D188
ov67_0225D188: @ 0x0225D188
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [sp, #0x48]
	adds r5, r0, #0
	str r3, [sp, #0x14]
	adds r0, r4, #0
	adds r7, r1, #0
	adds r6, r2, #0
	bl FUN_0200B358
	str r0, [r5]
	ldr r2, [sp, #0x14]
	movs r0, #0
	movs r1, #0x1a
	adds r3, r4, #0
	bl FUN_0200B144
	str r0, [r5, #4]
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [r5, #0x18]
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x44]
	str r6, [r5, #0x20]
	bl FUN_02025E44
	bl FUN_02027AC0
	str r0, [r5, #0x28]
	movs r0, #0
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x38]
	adds r5, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	lsls r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	adds r1, r5, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r7, #0
	movs r2, #1
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov67_0225D188

	thumb_func_start ov67_0225D210
ov67_0225D210: @ 0x0225D210
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #0x2c]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225D230
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225D230:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x1c]
	adds r1, r4, #0
	bl FUN_0200B1B8
	ldr r0, [r5]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x18]
	adds r0, #8
	movs r1, #1
	bl FUN_0201D738
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0225D27A
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_0200DC48
	b _0225D288
_0225D27A:
	adds r0, r5, #0
	movs r1, #1
	adds r0, #8
	adds r2, r1, #0
	movs r3, #0xd
	bl FUN_0200E060
_0225D288:
	adds r5, #8
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov67_0225D210

	thumb_func_start ov67_0225D294
ov67_0225D294: @ 0x0225D294
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225D2B0
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225D2B0:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _0225D2CA
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl FUN_0200DC9C
	adds r4, #8
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
_0225D2CA:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0225D2D6
	adds r0, r4, #0
	bl ov67_0225D310
_0225D2D6:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl FUN_0200E084
	adds r4, #8
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov67_0225D294

	thumb_func_start ov67_0225D2EC
ov67_0225D2EC: @ 0x0225D2EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0225D30C
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0225D300
	bl FUN_02022974
_0225D300:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl FUN_0200E7FC
	str r0, [r4, #0x24]
_0225D30C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov67_0225D2EC

	thumb_func_start ov67_0225D310
ov67_0225D310: @ 0x0225D310
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0225D32E
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0225D324
	bl FUN_02022974
_0225D324:
	ldr r0, [r4, #0x24]
	bl FUN_0200EBA0
	movs r0, #0
	str r0, [r4, #0x24]
_0225D32E:
	pop {r4, pc}
	thumb_func_end ov67_0225D310

	thumb_func_start ov67_0225D330
ov67_0225D330: @ 0x0225D330
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225D34C
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225D34C:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0225D358
	adds r0, r4, #0
	bl ov67_0225D310
_0225D358:
	adds r0, r4, #0
	adds r0, #8
	bl FUN_0201A8FC
	ldr r0, [r4, #0x1c]
	bl FUN_020237BC
	ldr r0, [r4, #0x18]
	bl FUN_020237BC
	ldr r0, [r4, #4]
	bl FUN_0200B190
	ldr r0, [r4]
	bl FUN_0200B3F0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov67_0225D330

	thumb_func_start ov67_0225D37C
ov67_0225D37C: @ 0x0225D37C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #8
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x1c]
	adds r1, r5, #0
	bl FUN_0200B1B8
	ldr r0, [r4]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl FUN_0200C388
	movs r0, #0
	ldr r1, [r4, #0x18]
	adds r2, r0, #0
	movs r3, #0xb0
	bl FUN_02002EEC
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	ldr r0, _0225D3CC @ =0x000F0E00
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r4, #0x18]
	adds r0, #8
	movs r1, #1
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225D3CC: .4byte 0x000F0E00
	thumb_func_end ov67_0225D37C

	thumb_func_start ov67_0225D3D0
ov67_0225D3D0: @ 0x0225D3D0
	push {r3, lr}
	sub sp, #8
	adds r2, r1, #0
	movs r1, #2
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r0, [r0]
	movs r1, #0
	movs r3, #5
	bl FUN_0200B60C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov67_0225D3D0
	@ 0x0225D3EC
