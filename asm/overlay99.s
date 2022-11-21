
	thumb_func_start ov99_021D0D80
ov99_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _021D0FD8 @ =0xFFFFE0FF
	ands r2, r1
	str r2, [r0]
	ldr r2, _021D0FDC @ =0x04001000
	ldr r3, [r2]
	ands r1, r3
	str r1, [r2]
	ldr r3, [r0]
	ldr r1, _021D0FE0 @ =0xFFFF1FFF
	ands r3, r1
	str r3, [r0]
	ldr r3, [r2]
	adds r0, #0x50
	ands r1, r3
	str r1, [r2]
	movs r1, #0
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #3
	movs r1, #0x4b
	lsls r2, r2, #7
	bl FUN_02017FC8
	ldr r1, _021D0FE4 @ =0x0000111C
	adds r0, r5, #0
	movs r2, #0x4b
	bl FUN_0200681C
	ldr r2, _021D0FE4 @ =0x0000111C
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020C4CF4
	adds r0, r5, #0
	bl FUN_02006840
	str r0, [r4]
	movs r0, #0x4b
	bl ov99_021D19AC
	str r0, [r4, #0x10]
	movs r0, #0x4b
	bl FUN_02002F38
	movs r2, #2
	str r0, [r4, #0xc]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x4b
	bl FUN_02002F70
	movs r1, #1
	ldr r0, [r4, #0xc]
	lsls r2, r1, #9
	movs r3, #0x4b
	bl FUN_02002F70
	movs r2, #7
	ldr r0, [r4, #0xc]
	movs r1, #2
	lsls r2, r2, #6
	movs r3, #0x4b
	bl FUN_02002F70
	movs r2, #2
	ldr r0, [r4, #0xc]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x4b
	bl FUN_02002F70
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02003858
	movs r0, #0x4b
	bl FUN_02018340
	str r0, [r4, #8]
	movs r0, #0x40
	movs r1, #0x4b
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	ldr r0, [r4, #8]
	bl ov99_021D1380
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r2, #0x89
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x4b
	bl FUN_0200B144
	str r0, [r4, #0x20]
	movs r0, #0x7f
	movs r1, #0x4b
	bl FUN_02006C24
	ldr r1, _021D0FE8 @ =0x000010F8
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov99_021D1918
	movs r0, #0x4b
	bl FUN_0200C6E4
	ldr r1, _021D0FEC @ =0x021D4760
	ldr r2, _021D0FF0 @ =0x021D4718
	movs r3, #0x20
	str r0, [r4, #0x18]
	bl FUN_0200C73C
	ldr r1, _021D0FF4 @ =0x00200010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r0, [r4, #0x18]
	bl FUN_0200C704
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	movs r2, #0x80
	bl FUN_0200C7C0
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, _021D0FF8 @ =0x021D472C
	bl FUN_0200CB30
	ldr r0, [r4, #0x18]
	bl FUN_0200C738
	movs r2, #0x11
	movs r1, #0
	lsls r2, r2, #0x10
	bl FUN_0200964C
	adds r0, r4, #0
	bl ov99_021D16E4
	ldr r0, [r4, #0x20]
	movs r1, #0xef
	str r0, [sp]
	ldr r0, [r4, #8]
	mvns r1, r1
	movs r2, #1
	movs r3, #0xf
	bl ov99_021D3E78
	ldr r1, _021D0FFC @ =0x00001108
	movs r2, #5
	str r0, [r4, r1]
	ldr r0, [r4, #0x20]
	ldr r1, _021D1000 @ =0xFFFFFE40
	str r0, [sp]
	ldr r0, [r4, #8]
	movs r3, #0xf
	bl ov99_021D3E78
	ldr r1, _021D1004 @ =0x0000110C
	ldr r2, _021D1008 @ =0x0000A8C0
	str r0, [r4, r1]
	ldr r0, _021D100C @ =0x04000040
	movs r1, #0xff
	strh r1, [r0]
	adds r6, r0, #0
	strh r2, [r0, #4]
	adds r6, #8
	ldrh r3, [r6]
	movs r2, #0x3f
	movs r7, #0x1d
	bics r3, r2
	orrs r3, r7
	movs r5, #0x20
	orrs r3, r5
	strh r3, [r6]
	adds r0, #0xa
	ldrh r6, [r0]
	movs r3, #0x1f
	bics r6, r2
	orrs r6, r3
	orrs r6, r5
	strh r6, [r0]
	ldr r0, _021D1010 @ =0x04001040
	strh r1, [r0]
	movs r1, #0x18
	strh r1, [r0, #4]
	adds r1, r0, #0
	adds r1, #8
	ldrh r6, [r1]
	bics r6, r2
	orrs r6, r7
	orrs r6, r5
	strh r6, [r1]
	adds r6, r0, #0
	adds r6, #0xa
	ldrh r1, [r6]
	bics r1, r2
	orrs r1, r3
	orrs r1, r5
	lsls r3, r0, #0x14
	strh r1, [r6]
	ldr r1, [r3]
	ldr r2, _021D0FE0 @ =0xFFFF1FFF
	adds r5, r1, #0
	ands r5, r2
	lsrs r1, r0, #0xd
	orrs r1, r5
	str r1, [r3]
	adds r3, r0, #0
	subs r3, #0x40
	ldr r1, [r3]
	lsrs r0, r0, #0xd
	ands r1, r2
	orrs r0, r1
	str r0, [r3]
	ldr r0, _021D1014 @ =0x021BF6DC
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
	ldr r0, _021D1018 @ =ov99_021D1244
	ldr r2, _021D101C @ =0x0000EA60
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x14]
	ldr r0, _021D1020 @ =ov99_021D1350
	adds r1, r4, #0
	bl FUN_02017798
	ldr r1, _021D1024 @ =0x000004A2
	movs r0, #0xe
	movs r2, #1
	bl FUN_02004550
	adds r0, r7, #0
	subs r0, #0x2d
	movs r1, #0x3d
	movs r2, #3
	bl FUN_0200AB4C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F44C
	movs r0, #1
	movs r1, #0
	bl FUN_0200F44C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #5
	movs r1, #1
	bl FUN_02019120
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D0FD8: .4byte 0xFFFFE0FF
_021D0FDC: .4byte 0x04001000
_021D0FE0: .4byte 0xFFFF1FFF
_021D0FE4: .4byte 0x0000111C
_021D0FE8: .4byte 0x000010F8
_021D0FEC: .4byte 0x021D4760
_021D0FF0: .4byte 0x021D4718
_021D0FF4: .4byte 0x00200010
_021D0FF8: .4byte 0x021D472C
_021D0FFC: .4byte 0x00001108
_021D1000: .4byte 0xFFFFFE40
_021D1004: .4byte 0x0000110C
_021D1008: .4byte 0x0000A8C0
_021D100C: .4byte 0x04000040
_021D1010: .4byte 0x04001040
_021D1014: .4byte 0x021BF6DC
_021D1018: .4byte ov99_021D1244
_021D101C: .4byte 0x0000EA60
_021D1020: .4byte ov99_021D1350
_021D1024: .4byte 0x000004A2
	thumb_func_end ov99_021D0D80

	thumb_func_start ov99_021D1028
ov99_021D1028: @ 0x021D1028
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, _021D1188 @ =0x00001108
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1050
	movs r1, #1
	bl ov99_021D3F6C
	ldr r0, _021D118C @ =0x0000110C
	movs r1, #1
	ldr r0, [r4, r0]
	bl ov99_021D3F6C
	ldr r1, _021D1190 @ =0x00001110
	str r0, [r4, r1]
_021D1050:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021D1094
	ldr r0, _021D1194 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #8
	tst r0, r1
	beq _021D1094
	movs r0, #0x11
	lsls r0, r0, #8
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _021D1094
	adds r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #6
	bhs _021D1094
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4b
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0x11
	movs r1, #1
	lsls r0, r0, #8
	strb r1, [r4, r0]
_021D1094:
	movs r0, #0x11
	lsls r0, r0, #8
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D1104
	cmp r0, #1
	bne _021D1104
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D1104
	ldr r1, _021D1198 @ =0x00001102
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _021D10C2
	subs r1, r1, #1
	ldrb r1, [r4, r1]
	adds r0, r4, #0
	bl ov99_021D1CFC
	ldr r0, _021D1198 @ =0x00001102
	movs r1, #0
	strb r1, [r4, r0]
_021D10C2:
	movs r0, #3
	bl FUN_0200AC1C
	cmp r0, #0
	bne _021D10D2
	movs r0, #3
	bl FUN_0200ABB0
_021D10D2:
	adds r0, r4, #0
	bl ov99_021D12F0
	ldr r0, _021D119C @ =0x00001101
	movs r1, #6
	strb r1, [r4, r0]
	movs r0, #0
	bl FUN_0201FF48
	movs r0, #0
	bl FUN_0201FFB0
	ldr r0, _021D11A0 @ =0x00000FA4
	movs r2, #0x4f
	adds r0, r4, r0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	movs r0, #0x11
	movs r1, #2
	lsls r0, r0, #8
	strb r1, [r4, r0]
	movs r0, #0
	str r0, [r5]
_021D1104:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D1114
	cmp r0, #1
	beq _021D113A
	cmp r0, #2
	beq _021D1174
	b _021D117A
_021D1114:
	movs r0, #0x11
	lsls r0, r0, #8
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D1122
	cmp r0, #2
	bne _021D117A
_021D1122:
	ldr r1, _021D119C @ =0x00001101
	adds r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov99_021D1CC8
	ldr r0, _021D1198 @ =0x00001102
	movs r1, #1
	strb r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D117A
_021D113A:
	ldr r1, _021D119C @ =0x00001101
	adds r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov99_021D1D30
	cmp r0, #1
	bne _021D117A
	ldr r1, _021D119C @ =0x00001101
	adds r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov99_021D1CFC
	ldr r1, _021D1198 @ =0x00001102
	movs r0, #0
	strb r0, [r4, r1]
	subs r2, r1, #1
	ldrb r2, [r4, r2]
	adds r3, r2, #1
	subs r2, r1, #1
	strb r3, [r4, r2]
	subs r1, r1, #1
	ldrb r1, [r4, r1]
	cmp r1, #7
	bhs _021D116E
	str r0, [r5]
	b _021D117A
_021D116E:
	movs r0, #2
	str r0, [r5]
	b _021D117A
_021D1174:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D117A:
	ldr r0, _021D11A4 @ =0x000010FC
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021D1188: .4byte 0x00001108
_021D118C: .4byte 0x0000110C
_021D1190: .4byte 0x00001110
_021D1194: .4byte 0x021BF67C
_021D1198: .4byte 0x00001102
_021D119C: .4byte 0x00001101
_021D11A0: .4byte 0x00000FA4
_021D11A4: .4byte 0x000010FC
	thumb_func_end ov99_021D1028

	thumb_func_start ov99_021D11A8
ov99_021D11A8: @ 0x021D11A8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_0200DA58
	ldr r0, _021D123C @ =0x00001108
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D11C8
	adds r0, r4, #0
	bl ov99_021D1270
	b _021D11CE
_021D11C8:
	adds r0, r4, #0
	bl ov99_021D1314
_021D11CE:
	ldr r0, [r4, #0x20]
	bl FUN_0200B190
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	bl FUN_0200D0B0
	ldr r0, [r4, #0x18]
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
	bl ov99_021D19A0
	ldr r0, _021D1240 @ =0x000010F8
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201DC3C
	bl FUN_0201E530
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x4b
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D123C: .4byte 0x00001108
_021D1240: .4byte 0x000010F8
	thumb_func_end ov99_021D11A8

	thumb_func_start ov99_021D1244
ov99_021D1244: @ 0x021D1244
	push {r4, lr}
	ldr r0, _021D126C @ =0x00001103
	adds r4, r1, #0
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _021D125E
	adds r0, r4, #0
	bl ov99_021D1720
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
_021D125E:
	ldr r0, [r4, #0x1c]
	bl FUN_0200C7EC
	bl FUN_0200C808
	pop {r4, pc}
	nop
_021D126C: .4byte 0x00001103
	thumb_func_end ov99_021D1244

	thumb_func_start ov99_021D1270
ov99_021D1270: @ 0x021D1270
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D12E8 @ =0x00001108
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D1280
	bl FUN_02022974
_021D1280:
	ldr r0, _021D12EC @ =0x0000110C
	ldr r0, [r4, r0]
	bl ov99_021D3F38
	ldr r0, _021D12E8 @ =0x00001108
	ldr r0, [r4, r0]
	bl ov99_021D3F38
	ldr r0, _021D12EC @ =0x0000110C
	movs r1, #0
	str r1, [r4, r0]
	subs r0, r0, #4
	str r1, [r4, r0]
	movs r0, #1
	bl FUN_02019120
	movs r0, #5
	movs r1, #0
	bl FUN_02019120
	ldr r0, [r4, #8]
	movs r1, #7
	bl FUN_02019044
	ldr r0, [r4, #8]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r4, #8]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r4, #8]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #8]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #8]
	bl FUN_020181C4
	ldr r0, [r4, #0x10]
	bl ov99_021D1A4C
	pop {r4, pc}
	nop
_021D12E8: .4byte 0x00001108
_021D12EC: .4byte 0x0000110C
	thumb_func_end ov99_021D1270

	thumb_func_start ov99_021D12F0
ov99_021D12F0: @ 0x021D12F0
	push {r4, lr}
	ldr r1, _021D1310 @ =0x00001108
	adds r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021D130C
	bl ov99_021D1270
	movs r0, #0x4b
	bl FUN_02018340
	str r0, [r4, #8]
	bl ov99_021D1580
_021D130C:
	pop {r4, pc}
	nop
_021D1310: .4byte 0x00001108
	thumb_func_end ov99_021D12F0

	thumb_func_start ov99_021D1314
ov99_021D1314: @ 0x021D1314
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D134C @ =0x00001108
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1324
	bl FUN_02022974
_021D1324:
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #8]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #8]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #8]
	movs r1, #7
	bl FUN_02019044
	ldr r0, [r4, #8]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
_021D134C: .4byte 0x00001108
	thumb_func_end ov99_021D1314

	thumb_func_start ov99_021D1350
ov99_021D1350: @ 0x021D1350
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200C800
	ldr r0, [r4, #0xc]
	bl FUN_02003694
	ldr r0, [r4, #8]
	bl FUN_0201C2B8
	ldr r3, _021D1378 @ =0x027E0000
	ldr r1, _021D137C @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D1378: .4byte 0x027E0000
_021D137C: .4byte 0x00003FF8
	thumb_func_end ov99_021D1350

	thumb_func_start ov99_021D1380
ov99_021D1380: @ 0x021D1380
	push {r3, r4, r5, lr}
	sub sp, #0xe0
	adds r4, r0, #0
	bl FUN_0201FF00
	bl FUN_0201FF68
	ldr r5, _021D156C @ =0x021D47A8
	add r3, sp, #0x10
	movs r2, #5
_021D1394:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1394
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
	ldr r5, _021D1570 @ =0x021D4708
	add r3, sp, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D1574 @ =0x021D4824
	add r3, sp, #0x8c
	movs r2, #0xa
_021D13F4:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D13F4
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
	movs r3, #2
	bl FUN_020183C4
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
	ldr r1, _021D1578 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	orrs r2, r0
	strh r2, [r1]
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r5, _021D157C @ =0x021D4878
	add r3, sp, #0x38
	movs r2, #0xa
_021D1496:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1496
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
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x4b
	bl FUN_02019690
	movs r0, #5
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x4b
	bl FUN_02019690
	movs r0, #6
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x4b
	bl FUN_02019690
	movs r0, #7
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x4b
	bl FUN_02019690
	movs r0, #3
	movs r1, #0
	bl FUN_02019120
	movs r0, #6
	movs r1, #0
	bl FUN_02019120
	add sp, #0xe0
	pop {r3, r4, r5, pc}
	nop
_021D156C: .4byte 0x021D47A8
_021D1570: .4byte 0x021D4708
_021D1574: .4byte 0x021D4824
_021D1578: .4byte 0x04000008
_021D157C: .4byte 0x021D4878
	thumb_func_end ov99_021D1380

	thumb_func_start ov99_021D1580
ov99_021D1580: @ 0x021D1580
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	adds r4, r0, #0
	bl FUN_0201FF00
	bl FUN_0201FF68
	ldr r5, _021D16D4 @ =0x021D4780
	add r3, sp, #0x2c
	movs r2, #5
_021D1594:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1594
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
	ldr r5, _021D16D8 @ =0x021D46F8
	add r3, sp, #0x1c
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D16DC @ =0x021D47D0
	add r3, sp, #0x54
	movs r2, #0xa
_021D15F4:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D15F4
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
	movs r1, #2
	adds r0, r4, #0
	add r2, sp, #0x70
	adds r3, r1, #0
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
	movs r3, #2
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
	ldr r5, _021D16E0 @ =0x021D4744
	add r3, sp, #0
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
	movs r0, #7
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x4b
	bl FUN_02019690
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D16D4: .4byte 0x021D4780
_021D16D8: .4byte 0x021D46F8
_021D16DC: .4byte 0x021D47D0
_021D16E0: .4byte 0x021D4744
	thumb_func_end ov99_021D1580

	thumb_func_start ov99_021D16E4
ov99_021D16E4: @ 0x021D16E4
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xf0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0x7f
	movs r2, #0x55
	movs r3, #0x4b
	bl FUN_02003050
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xf0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0x7f
	movs r2, #0x55
	movs r3, #0x4b
	bl FUN_02003050
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov99_021D16E4

	thumb_func_start ov99_021D1720
ov99_021D1720: @ 0x021D1720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r6, r0, #0
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
	ldr r0, [r6, #0x28]
	bl FUN_020203D4
	ldr r1, [r6, #0x28]
	movs r0, #0
	bl FUN_02020854
	bl FUN_020203EC
	ldr r0, _021D18B8 @ =0x00001101
	ldrb r0, [r6, r0]
	cmp r0, #0
	beq _021D1766
	cmp r0, #2
	beq _021D17A4
	cmp r0, #4
	beq _021D17E2
	b _021D1820
_021D1766:
	ldr r1, _021D18BC @ =0x00000769
	ldr r2, _021D18C0 @ =0xFFFFF1F0
	ldr r3, _021D18C4 @ =0xFFFFFE2E
	movs r0, #0
	blx FUN_020AF51C
	movs r0, #2
	movs r1, #0
	adds r2, r1, #0
	lsls r3, r0, #0xb
	blx FUN_020AF51C
	ldr r1, _021D18C8 @ =0x0000199C
	movs r0, #0
	blx FUN_020AF558
	movs r0, #2
	movs r1, #0
	blx FUN_020AF558
	ldr r0, _021D18CC @ =0x00003DEF
	ldr r1, _021D18D0 @ =0x0000318B
	movs r2, #0
	blx FUN_020AF56C
	ldr r0, _021D18D4 @ =0x00004631
	ldr r1, _021D18D8 @ =0x00001D08
	movs r2, #0
	blx FUN_020AF590
	b _021D1848
_021D17A4:
	ldr r1, _021D18DC @ =0xFFFFF805
	ldr r2, _021D18E0 @ =0xFFFFF224
	movs r0, #0
	movs r3, #0x6e
	blx FUN_020AF51C
	movs r0, #2
	movs r1, #0
	adds r2, r1, #0
	lsls r3, r0, #0xb
	blx FUN_020AF51C
	ldr r1, _021D18E4 @ =0x000052D6
	movs r0, #0
	blx FUN_020AF558
	movs r0, #2
	movs r1, #0
	blx FUN_020AF558
	ldr r0, _021D18CC @ =0x00003DEF
	ldr r1, _021D18E8 @ =0x00002D69
	movs r2, #0
	blx FUN_020AF56C
	ldr r0, _021D18EC @ =0x00004210
	ldr r1, _021D18F0 @ =0x000039CE
	movs r2, #0
	blx FUN_020AF590
	b _021D1848
_021D17E2:
	ldr r1, _021D18BC @ =0x00000769
	ldr r2, _021D18C0 @ =0xFFFFF1F0
	ldr r3, _021D18C4 @ =0xFFFFFE2E
	movs r0, #0
	blx FUN_020AF51C
	movs r0, #2
	movs r1, #0
	adds r2, r1, #0
	lsls r3, r0, #0xb
	blx FUN_020AF51C
	ldr r1, _021D18F4 @ =0x0000416B
	movs r0, #0
	blx FUN_020AF558
	movs r0, #2
	movs r1, #0
	blx FUN_020AF558
	ldr r0, _021D18F8 @ =0x000041CE
	ldr r1, _021D18FC @ =0x0000294A
	movs r2, #0
	blx FUN_020AF56C
	ldr r0, _021D18F8 @ =0x000041CE
	ldr r1, _021D1900 @ =0x00002D08
	movs r2, #0
	blx FUN_020AF590
	b _021D1848
_021D1820:
	movs r0, #0
	ldr r2, _021D1904 @ =0xFFFFF000
	adds r1, r0, #0
	adds r3, r0, #0
	blx FUN_020AF51C
	ldr r1, _021D1908 @ =0x0000739C
	movs r0, #0
	blx FUN_020AF558
	ldr r0, _021D190C @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF56C
	ldr r0, _021D190C @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF590
_021D1848:
	movs r1, #0
	ldr r2, _021D1904 @ =0xFFFFF000
	movs r0, #3
	adds r3, r1, #0
	blx FUN_020AF51C
	ldr r1, _021D1908 @ =0x0000739C
	movs r0, #3
	blx FUN_020AF558
	add r0, sp, #0x28
	blx FUN_020AF4BC
	ldr r1, _021D1910 @ =0x021C5B48
	add r0, sp, #4
	blx FUN_020C4C88
	ldr r1, _021D1914 @ =0x021C5B0C
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
	movs r7, #0
	adds r6, #0x6c
_021D1888:
	movs r4, #0
	adds r5, r6, #0
_021D188C:
	adds r0, r5, #0
	bl FUN_02017294
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #0x10
	blt _021D188C
	movs r0, #0x1e
	lsls r0, r0, #6
	adds r7, r7, #1
	adds r6, r6, r0
	cmp r7, #2
	blt _021D1888
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D18B8: .4byte 0x00001101
_021D18BC: .4byte 0x00000769
_021D18C0: .4byte 0xFFFFF1F0
_021D18C4: .4byte 0xFFFFFE2E
_021D18C8: .4byte 0x0000199C
_021D18CC: .4byte 0x00003DEF
_021D18D0: .4byte 0x0000318B
_021D18D4: .4byte 0x00004631
_021D18D8: .4byte 0x00001D08
_021D18DC: .4byte 0xFFFFF805
_021D18E0: .4byte 0xFFFFF224
_021D18E4: .4byte 0x000052D6
_021D18E8: .4byte 0x00002D69
_021D18EC: .4byte 0x00004210
_021D18F0: .4byte 0x000039CE
_021D18F4: .4byte 0x0000416B
_021D18F8: .4byte 0x000041CE
_021D18FC: .4byte 0x0000294A
_021D1900: .4byte 0x00002D08
_021D1904: .4byte 0xFFFFF000
_021D1908: .4byte 0x0000739C
_021D190C: .4byte 0x00007FFF
_021D1910: .4byte 0x021C5B48
_021D1914: .4byte 0x021C5B0C
	thumb_func_end ov99_021D1720

	thumb_func_start ov99_021D1918
ov99_021D1918: @ 0x021D1918
	push {r4, lr}
	sub sp, #0x30
	ldr r3, _021D198C @ =0x021D46E0
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x24
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021D1990 @ =0x021D46D4
	str r0, [r2]
	ldm r3!, {r0, r1}
	add r2, sp, #0x18
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021D1994 @ =0x021D46EC
	str r0, [r2]
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	movs r0, #0x4b
	bl FUN_020203AC
	str r0, [r4, #0x28]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	movs r1, #0x1f
	str r0, [sp, #8]
	ldr r2, _021D1998 @ =0x021D46CC
	ldr r3, _021D199C @ =0x00000FA4
	add r0, sp, #0x24
	lsls r1, r1, #0xe
	bl FUN_020206D0
	ldr r1, [r4, #0x28]
	add r0, sp, #0x18
	bl FUN_02020ADC
	ldr r1, [r4, #0x28]
	add r0, sp, #0xc
	bl FUN_02020ACC
	movs r0, #1
	movs r1, #0xe1
	ldr r2, [r4, #0x28]
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	ldr r0, [r4, #0x28]
	bl FUN_020203D4
	add sp, #0x30
	pop {r4, pc}
	nop
_021D198C: .4byte 0x021D46E0
_021D1990: .4byte 0x021D46D4
_021D1994: .4byte 0x021D46EC
_021D1998: .4byte 0x021D46CC
_021D199C: .4byte 0x00000FA4
	thumb_func_end ov99_021D1918

	thumb_func_start ov99_021D19A0
ov99_021D19A0: @ 0x021D19A0
	ldr r3, _021D19A8 @ =FUN_020203B8
	ldr r0, [r0, #0x28]
	bx r3
	nop
_021D19A8: .4byte FUN_020203B8
	thumb_func_end ov99_021D19A0

	thumb_func_start ov99_021D19AC
ov99_021D19AC: @ 0x021D19AC
	push {r3, lr}
	sub sp, #8
	movs r2, #1
	ldr r1, _021D19C4 @ =ov99_021D19C8
	str r2, [sp]
	str r1, [sp, #4]
	movs r1, #0
	adds r3, r1, #0
	bl FUN_02024220
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_021D19C4: .4byte ov99_021D19C8
	thumb_func_end ov99_021D19AC

	thumb_func_start ov99_021D19C8
ov99_021D19C8: @ 0x021D19C8
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _021D1A34 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _021D1A38 @ =0xFFFFCFFD
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
	ldr r2, _021D1A3C @ =0x0000CFFB
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
	ldr r2, _021D1A40 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _021D1A44 @ =0xBFFF0000
	ldr r0, _021D1A48 @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_021D1A34: .4byte 0x04000008
_021D1A38: .4byte 0xFFFFCFFD
_021D1A3C: .4byte 0x0000CFFB
_021D1A40: .4byte 0x00007FFF
_021D1A44: .4byte 0xBFFF0000
_021D1A48: .4byte 0x04000580
	thumb_func_end ov99_021D19C8

	thumb_func_start ov99_021D1A4C
ov99_021D1A4C: @ 0x021D1A4C
	ldr r3, _021D1A50 @ =FUN_020242C4
	bx r3
	.align 2, 0
_021D1A50: .4byte FUN_020242C4
	thumb_func_end ov99_021D1A4C

	thumb_func_start ov99_021D1A54
ov99_021D1A54: @ 0x021D1A54
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	ldr r0, _021D1B84 @ =0x000010F8
	bne _021D1AD0
	ldr r0, [r5, r0]
	movs r1, #2
	str r0, [sp]
	movs r0, #0x1f
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021D1B88 @ =0x00002711
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl FUN_0200CDC4
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _021D1B88 @ =0x00002711
	ldr r2, _021D1B84 @ =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	movs r3, #0x1c
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D1B88 @ =0x00002711
	ldr r2, _021D1B84 @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	movs r3, #0x1d
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D1B88 @ =0x00002711
	ldr r2, _021D1B84 @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	movs r3, #0x1e
	bl FUN_0200CE54
	b _021D1B3A
_021D1AD0:
	ldr r0, [r5, r0]
	movs r1, #2
	str r0, [sp]
	movs r0, #0x24
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021D1B88 @ =0x00002711
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl FUN_0200CDC4
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _021D1B88 @ =0x00002711
	ldr r2, _021D1B84 @ =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	movs r3, #0x21
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D1B88 @ =0x00002711
	ldr r2, _021D1B84 @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	movs r3, #0x22
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D1B88 @ =0x00002711
	ldr r2, _021D1B84 @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	movs r3, #0x23
	bl FUN_0200CE54
_021D1B3A:
	ldr r0, _021D1B8C @ =0x00001101
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021D1B4E
	cmp r0, #2
	beq _021D1B7E
	cmp r0, #4
	beq _021D1B68
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D1B4E:
	movs r0, #4
	str r0, [sp]
	ldr r0, _021D1B90 @ =0x0000199C
	lsls r2, r4, #0x14
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	movs r1, #2
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_020039B0
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D1B68:
	movs r0, #4
	str r0, [sp]
	ldr r0, _021D1B94 @ =0x0000416B
	lsls r2, r4, #0x14
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	movs r1, #2
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_020039B0
_021D1B7E:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D1B84: .4byte 0x000010F8
_021D1B88: .4byte 0x00002711
_021D1B8C: .4byte 0x00001101
_021D1B90: .4byte 0x0000199C
_021D1B94: .4byte 0x0000416B
	thumb_func_end ov99_021D1A54

	thumb_func_start ov99_021D1B98
ov99_021D1B98: @ 0x021D1B98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1BC0 @ =0x00002711
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1BC0 @ =0x00002711
	bl FUN_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1BC0 @ =0x00002711
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1BC0 @ =0x00002711
	bl FUN_0200D0A0
	pop {r4, pc}
	nop
_021D1BC0: .4byte 0x00002711
	thumb_func_end ov99_021D1B98

	thumb_func_start ov99_021D1BC4
ov99_021D1BC4: @ 0x021D1BC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r4, _021D1C90 @ =0x021D4900
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	add r3, sp, #8
	movs r2, #6
_021D1BD4:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1BD4
	ldr r0, [r4]
	movs r1, #0
	str r0, [r3]
	ldr r0, _021D1C94 @ =0x00001114
	movs r2, #8
	adds r0, r5, r0
	blx FUN_020C4CF4
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, sp, #8
	bl FUN_0200CE6C
	adds r4, r0, #0
	movs r1, #1
	bl FUN_0200D390
	ldr r0, [r4]
	bl FUN_0200D324
	str r4, [r6]
	movs r0, #0x3c
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, sp, #8
	bl FUN_0200CE6C
	adds r4, r0, #0
	movs r1, #2
	bl FUN_0200D364
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0200D390
	ldr r0, [r4]
	bl FUN_0200D324
	ldr r0, _021D1C98 @ =0x000010F4
	str r4, [r7]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D1C38
	bl FUN_02022974
_021D1C38:
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	bne _021D1C44
	movs r4, #0x1b
	b _021D1C46
_021D1C44:
	movs r4, #0x20
_021D1C46:
	movs r0, #0x4b
	adds r1, r0, #0
	adds r1, #0xb5
	bl FUN_02018144
	ldr r1, _021D1C98 @ =0x000010F4
	movs r2, #0
	str r0, [r5, r1]
	movs r0, #0x4b
	str r0, [sp]
	adds r0, r1, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	add r3, sp, #4
	bl FUN_020071B4
	adds r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, _021D1C98 @ =0x000010F4
	movs r2, #1
	ldr r0, [r0, #0x14]
	ldr r1, [r5, r1]
	lsls r2, r2, #8
	blx FUN_020C4B68
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, _021D1C98 @ =0x000010F4
	movs r1, #1
	ldr r0, [r5, r0]
	lsls r1, r1, #8
	blx FUN_020C2C54
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021D1C90: .4byte 0x021D4900
_021D1C94: .4byte 0x00001114
_021D1C98: .4byte 0x000010F4
	thumb_func_end ov99_021D1BC4

	thumb_func_start ov99_021D1C9C
ov99_021D1C9C: @ 0x021D1C9C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	adds r0, r1, #0
	bl FUN_0200D0F4
	adds r0, r5, #0
	bl FUN_0200D0F4
	ldr r0, _021D1CC4 @ =0x000010F4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1CC0
	bl FUN_020181C4
	ldr r0, _021D1CC4 @ =0x000010F4
	movs r1, #0
	str r1, [r4, r0]
_021D1CC0:
	pop {r3, r4, r5, pc}
	nop
_021D1CC4: .4byte 0x000010F4
	thumb_func_end ov99_021D1C9C

	thumb_func_start ov99_021D1CC8
ov99_021D1CC8: @ 0x021D1CC8
	push {r3, r4, r5, lr}
	movs r2, #0x34
	ldr r3, _021D1CF8 @ =0x021D4A04
	muls r2, r1, r2
	ldr r1, [r3, r2]
	adds r4, r3, r2
	adds r5, r0, #0
	blx r1
	ldr r1, [r4, #4]
	adds r0, r5, #0
	blx r1
	ldr r1, [r4, #8]
	adds r0, r5, #0
	blx r1
	ldr r1, [r4, #0xc]
	adds r0, r5, #0
	blx r1
	ldr r1, [r4, #0x10]
	adds r0, r5, #0
	blx r1
	ldr r1, [r4, #0x14]
	adds r0, r5, #0
	blx r1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1CF8: .4byte 0x021D4A04
	thumb_func_end ov99_021D1CC8

	thumb_func_start ov99_021D1CFC
ov99_021D1CFC: @ 0x021D1CFC
	push {r3, r4, r5, lr}
	movs r2, #0x34
	ldr r3, _021D1D2C @ =0x021D4A04
	muls r2, r1, r2
	adds r4, r3, r2
	ldr r1, [r4, #0x18]
	adds r5, r0, #0
	blx r1
	ldr r1, [r4, #0x1c]
	adds r0, r5, #0
	blx r1
	ldr r1, [r4, #0x20]
	adds r0, r5, #0
	blx r1
	ldr r1, [r4, #0x24]
	adds r0, r5, #0
	blx r1
	ldr r1, [r4, #0x28]
	adds r0, r5, #0
	blx r1
	ldr r1, [r4, #0x2c]
	adds r0, r5, #0
	blx r1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1D2C: .4byte 0x021D4A04
	thumb_func_end ov99_021D1CFC

	thumb_func_start ov99_021D1D30
ov99_021D1D30: @ 0x021D1D30
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r2, #0x34
	adds r3, r4, #0
	muls r3, r2, r3
	ldr r2, _021D1D60 @ =0x021D4A34
	ldr r1, _021D1D64 @ =0x00000FA4
	adds r5, r0, #0
	ldr r2, [r2, r3]
	adds r1, r5, r1
	blx r2
	adds r4, r0, #0
	cmp r4, #1
	bne _021D1D5A
	ldr r0, _021D1D64 @ =0x00000FA4
	movs r2, #0x4f
	adds r0, r5, r0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
_021D1D5A:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1D60: .4byte 0x021D4A34
_021D1D64: .4byte 0x00000FA4
	thumb_func_end ov99_021D1D30

	thumb_func_start ov99_021D1D68
ov99_021D1D68: @ 0x021D1D68
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, [r5, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	movs r1, #0x7f
	movs r2, #0x12
	movs r3, #0x4b
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D1E68 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #9
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D1E68 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #3
	movs r3, #2
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	movs r1, #0x7f
	movs r2, #0x15
	movs r3, #0x4b
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D1E68 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #0xc
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D1E68 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #6
	movs r3, #7
	bl FUN_0200710C
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
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	movs r1, #2
	bl FUN_0201C3C0
	ldr r0, [r5, #8]
	movs r1, #7
	bl FUN_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D1E68: .4byte 0x000010F8
	thumb_func_end ov99_021D1D68

	thumb_func_start ov99_021D1E6C
ov99_021D1E6C: @ 0x021D1E6C
	push {r3, lr}
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	pop {r3, pc}
	thumb_func_end ov99_021D1E6C

	thumb_func_start ov99_021D1E90
ov99_021D1E90: @ 0x021D1E90
	ldr r3, _021D1E94 @ =ov99_021D1A54
	bx r3
	.align 2, 0
_021D1E94: .4byte ov99_021D1A54
	thumb_func_end ov99_021D1E90

	thumb_func_start ov99_021D1E98
ov99_021D1E98: @ 0x021D1E98
	ldr r3, _021D1E9C @ =ov99_021D1B98
	bx r3
	.align 2, 0
_021D1E9C: .4byte ov99_021D1B98
	thumb_func_end ov99_021D1E98

	thumb_func_start ov99_021D1EA0
ov99_021D1EA0: @ 0x021D1EA0
	ldr r2, _021D1EAC @ =0x000010E0
	ldr r3, _021D1EB0 @ =ov99_021D1BC4
	adds r1, r0, r2
	adds r2, r2, #4
	adds r2, r0, r2
	bx r3
	.align 2, 0
_021D1EAC: .4byte 0x000010E0
_021D1EB0: .4byte ov99_021D1BC4
	thumb_func_end ov99_021D1EA0

	thumb_func_start ov99_021D1EB4
ov99_021D1EB4: @ 0x021D1EB4
	ldr r2, _021D1EC0 @ =0x000010E0
	ldr r3, _021D1EC4 @ =ov99_021D1C9C
	ldr r1, [r0, r2]
	adds r2, r2, #4
	ldr r2, [r0, r2]
	bx r3
	.align 2, 0
_021D1EC0: .4byte 0x000010E0
_021D1EC4: .4byte ov99_021D1C9C
	thumb_func_end ov99_021D1EB4

	thumb_func_start ov99_021D1EC8
ov99_021D1EC8: @ 0x021D1EC8
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, _021D1F3C @ =0x000010F8
	movs r1, #3
	ldr r0, [r4, r0]
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D1F40 @ =0x00002713
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl FUN_0200CDC4
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _021D1F40 @ =0x00002713
	ldr r2, _021D1F3C @ =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D1F40 @ =0x00002713
	ldr r2, _021D1F3C @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	movs r3, #1
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D1F40 @ =0x00002713
	ldr r2, _021D1F3C @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	movs r3, #2
	bl FUN_0200CE54
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_021D1F3C: .4byte 0x000010F8
_021D1F40: .4byte 0x00002713
	thumb_func_end ov99_021D1EC8

	thumb_func_start ov99_021D1F44
ov99_021D1F44: @ 0x021D1F44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1F6C @ =0x00002713
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1F6C @ =0x00002713
	bl FUN_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1F6C @ =0x00002713
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1F6C @ =0x00002713
	bl FUN_0200D0A0
	pop {r4, pc}
	nop
_021D1F6C: .4byte 0x00002713
	thumb_func_end ov99_021D1F44

	thumb_func_start ov99_021D1F70
ov99_021D1F70: @ 0x021D1F70
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	ldr r7, _021D1FB0 @ =0x000010E0
	movs r4, #2
	adds r5, #8
_021D1F7C:
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	ldr r2, _021D1FB4 @ =0x021D499C
	bl FUN_0200CE6C
	ldr r1, _021D1FB0 @ =0x000010E0
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #2
	bl FUN_0200D6A4
	ldr r0, _021D1FB0 @ =0x000010E0
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_0200D390
	ldr r0, [r5, r7]
	ldr r0, [r0]
	bl FUN_0200D324
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	ble _021D1F7C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1FB0: .4byte 0x000010E0
_021D1FB4: .4byte 0x021D499C
	thumb_func_end ov99_021D1F70

	thumb_func_start ov99_021D1FB8
ov99_021D1FB8: @ 0x021D1FB8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _021D1FD4 @ =0x000010E0
	movs r4, #2
	adds r5, #8
_021D1FC2:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	ble _021D1FC2
	pop {r4, r5, r6, pc}
	nop
_021D1FD4: .4byte 0x000010E0
	thumb_func_end ov99_021D1FB8

	thumb_func_start ov99_021D1FD8
ov99_021D1FD8: @ 0x021D1FD8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021D20E8 @ =0x000010F8
	adds r6, r0, #0
	ldr r1, [r6, r1]
	adds r0, #0x2c
	movs r2, #0x50
	movs r3, #0x4b
	bl FUN_020170D8
	ldr r0, [r6, #0x34]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020B2CE4
	ldr r0, [r6, #0x34]
	movs r1, #0
	movs r2, #0x80
	blx FUN_020B2CE4
	movs r2, #2
	ldr r0, [r6, #0x34]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020B2CE4
	movs r2, #1
	ldr r0, [r6, #0x34]
	movs r1, #0
	lsls r2, r2, #0xa
	blx FUN_020B2CE4
	ldr r1, _021D20E8 @ =0x000010F8
	adds r0, r6, #0
	ldr r1, [r6, r1]
	adds r0, #0x3c
	movs r2, #0x51
	movs r3, #0x4b
	bl FUN_020170D8
	ldr r0, [r6, #0x44]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020B2CE4
	ldr r0, [r6, #0x44]
	movs r1, #0
	movs r2, #0x80
	blx FUN_020B2CE4
	movs r2, #2
	ldr r0, [r6, #0x44]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020B2CE4
	movs r2, #1
	ldr r0, [r6, #0x44]
	movs r1, #0
	lsls r2, r2, #0xa
	blx FUN_020B2CE4
	adds r5, r6, #0
	adds r7, r6, #0
	movs r4, #0
	adds r5, #0x6c
	adds r7, #0x2c
_021D205C:
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02017258
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02017348
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #0x10
	blt _021D205C
	ldr r0, _021D20EC @ =0x000007EC
	adds r7, r6, #0
	movs r5, #0
	adds r4, r6, r0
	adds r7, #0x3c
_021D2098:
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02017258
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02017348
	adds r5, r5, #1
	adds r4, #0x78
	cmp r5, #0x10
	blt _021D2098
	ldr r0, _021D20F0 @ =0x00001104
	movs r1, #2
	strb r1, [r6, r0]
	adds r0, r6, #0
	movs r1, #0
	bl ov99_021D4134
	adds r0, r6, #0
	bl ov99_021D4170
	ldr r0, _021D20F4 @ =0x00001103
	movs r1, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D20E8: .4byte 0x000010F8
_021D20EC: .4byte 0x000007EC
_021D20F0: .4byte 0x00001104
_021D20F4: .4byte 0x00001103
	thumb_func_end ov99_021D1FD8

	thumb_func_start ov99_021D20F8
ov99_021D20F8: @ 0x021D20F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	movs r4, #0
	adds r5, #0x2c
_021D2102:
	adds r0, r5, #0
	bl FUN_02017110
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _021D2102
	ldr r0, _021D2118 @ =0x00001103
	movs r1, #0
	strb r1, [r6, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D2118: .4byte 0x00001103
	thumb_func_end ov99_021D20F8

	thumb_func_start ov99_021D211C
ov99_021D211C: @ 0x021D211C
	push {r4, lr}
	ldr r1, _021D2148 @ =0x00001105
	adds r4, r0, #0
	ldrb r1, [r4, r1]
	movs r2, #3
	movs r3, #0
	bl ov99_021D439C
	ldr r0, _021D2148 @ =0x00001105
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	ldr r0, [r4, #8]
	movs r1, #2
	bl FUN_0201C3C0
	pop {r4, pc}
	nop
_021D2148: .4byte 0x00001105
	thumb_func_end ov99_021D211C

	thumb_func_start ov99_021D214C
ov99_021D214C: @ 0x021D214C
	ldr r3, _021D2154 @ =FUN_02019120
	movs r0, #3
	movs r1, #0
	bx r3
	.align 2, 0
_021D2154: .4byte FUN_02019120
	thumb_func_end ov99_021D214C

	thumb_func_start ov99_021D2158
ov99_021D2158: @ 0x021D2158
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2158

	thumb_func_start ov99_021D215C
ov99_021D215C: @ 0x021D215C
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D215C

	thumb_func_start ov99_021D2160
ov99_021D2160: @ 0x021D2160
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2160

	thumb_func_start ov99_021D2164
ov99_021D2164: @ 0x021D2164
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2164

	thumb_func_start ov99_021D2168
ov99_021D2168: @ 0x021D2168
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2168

	thumb_func_start ov99_021D216C
ov99_021D216C: @ 0x021D216C
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D216C

	thumb_func_start ov99_021D2170
ov99_021D2170: @ 0x021D2170
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2170

	thumb_func_start ov99_021D2174
ov99_021D2174: @ 0x021D2174
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2174

	thumb_func_start ov99_021D2178
ov99_021D2178: @ 0x021D2178
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2178

	thumb_func_start ov99_021D217C
ov99_021D217C: @ 0x021D217C
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D217C

	thumb_func_start ov99_021D2180
ov99_021D2180: @ 0x021D2180
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r4, [r5, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	movs r1, #0x7f
	movs r2, #0x13
	movs r3, #0x4b
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D22A4 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #0xa
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D22A4 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #4
	movs r3, #2
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	movs r1, #0x7f
	movs r2, #0x16
	movs r3, #0x4b
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D22A4 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #0xd
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D22A4 @ =0x000010F8
	movs r1, #7
	ldr r0, [r5, r0]
	ldr r2, [r5, #8]
	adds r3, r1, #0
	bl FUN_0200710C
	ldr r0, _021D22A4 @ =0x000010F8
	movs r1, #0x10
	ldr r0, [r5, r0]
	add r2, sp, #0x10
	movs r3, #0x4b
	bl FUN_020071EC
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, _021D22A8 @ =0x00000FB4
	ldr r0, [r0, #0xc]
	adds r1, r5, r1
	movs r2, #0x80
	blx FUN_020C4B18
	adds r0, r6, #0
	bl FUN_020181C4
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
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	movs r1, #2
	bl FUN_0201C3C0
	ldr r0, [r5, #8]
	movs r1, #7
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D22A4: .4byte 0x000010F8
_021D22A8: .4byte 0x00000FB4
	thumb_func_end ov99_021D2180

	thumb_func_start ov99_021D22AC
ov99_021D22AC: @ 0x021D22AC
	push {r3, lr}
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	pop {r3, pc}
	thumb_func_end ov99_021D22AC

	thumb_func_start ov99_021D22D0
ov99_021D22D0: @ 0x021D22D0
	ldr r3, _021D22D4 @ =ov99_021D1A54
	bx r3
	.align 2, 0
_021D22D4: .4byte ov99_021D1A54
	thumb_func_end ov99_021D22D0

	thumb_func_start ov99_021D22D8
ov99_021D22D8: @ 0x021D22D8
	ldr r3, _021D22DC @ =ov99_021D1B98
	bx r3
	.align 2, 0
_021D22DC: .4byte ov99_021D1B98
	thumb_func_end ov99_021D22D8

	thumb_func_start ov99_021D22E0
ov99_021D22E0: @ 0x021D22E0
	ldr r2, _021D22EC @ =0x000010E0
	ldr r3, _021D22F0 @ =ov99_021D1BC4
	adds r1, r0, r2
	adds r2, r2, #4
	adds r2, r0, r2
	bx r3
	.align 2, 0
_021D22EC: .4byte 0x000010E0
_021D22F0: .4byte ov99_021D1BC4
	thumb_func_end ov99_021D22E0

	thumb_func_start ov99_021D22F4
ov99_021D22F4: @ 0x021D22F4
	ldr r2, _021D2300 @ =0x000010E0
	ldr r3, _021D2304 @ =ov99_021D1C9C
	ldr r1, [r0, r2]
	adds r2, r2, #4
	ldr r2, [r0, r2]
	bx r3
	.align 2, 0
_021D2300: .4byte 0x000010E0
_021D2304: .4byte ov99_021D1C9C
	thumb_func_end ov99_021D22F4

	thumb_func_start ov99_021D2308
ov99_021D2308: @ 0x021D2308
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, _021D237C @ =0x000010F8
	movs r1, #3
	ldr r0, [r4, r0]
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D2380 @ =0x00002714
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl FUN_0200CDC4
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _021D2380 @ =0x00002714
	ldr r2, _021D237C @ =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D2380 @ =0x00002714
	ldr r2, _021D237C @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	movs r3, #1
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D2380 @ =0x00002714
	ldr r2, _021D237C @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	movs r3, #2
	bl FUN_0200CE54
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_021D237C: .4byte 0x000010F8
_021D2380: .4byte 0x00002714
	thumb_func_end ov99_021D2308

	thumb_func_start ov99_021D2384
ov99_021D2384: @ 0x021D2384
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D23AC @ =0x00002714
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D23AC @ =0x00002714
	bl FUN_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D23AC @ =0x00002714
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D23AC @ =0x00002714
	bl FUN_0200D0A0
	pop {r4, pc}
	nop
_021D23AC: .4byte 0x00002714
	thumb_func_end ov99_021D2384

	thumb_func_start ov99_021D23B0
ov99_021D23B0: @ 0x021D23B0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	ldr r7, _021D23E8 @ =0x000010E0
	movs r4, #2
	adds r5, #8
_021D23BC:
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	ldr r2, _021D23EC @ =0x021D4968
	bl FUN_0200CE6C
	ldr r1, _021D23E8 @ =0x000010E0
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0200D390
	ldr r0, [r5, r7]
	ldr r0, [r0]
	bl FUN_0200D324
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	ble _021D23BC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D23E8: .4byte 0x000010E0
_021D23EC: .4byte 0x021D4968
	thumb_func_end ov99_021D23B0

	thumb_func_start ov99_021D23F0
ov99_021D23F0: @ 0x021D23F0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _021D240C @ =0x000010E0
	movs r4, #2
	adds r5, #8
_021D23FA:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	ble _021D23FA
	pop {r4, r5, r6, pc}
	nop
_021D240C: .4byte 0x000010E0
	thumb_func_end ov99_021D23F0

	thumb_func_start ov99_021D2410
ov99_021D2410: @ 0x021D2410
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021D24BC @ =0x000010F8
	adds r7, r0, #0
	ldr r1, [r7, r1]
	adds r0, #0x2c
	movs r2, #0x4e
	movs r3, #0x4b
	bl FUN_020170D8
	ldr r0, [r7, #0x34]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020B2CE4
	ldr r0, [r7, #0x34]
	movs r1, #0
	movs r2, #0x80
	blx FUN_020B2CE4
	movs r2, #2
	ldr r0, [r7, #0x34]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020B2CE4
	movs r2, #1
	ldr r0, [r7, #0x34]
	movs r1, #0
	lsls r2, r2, #0xa
	blx FUN_020B2CE4
	adds r5, r7, #0
	adds r6, r7, #0
	movs r4, #0
	adds r5, #0x6c
	adds r6, #0x2c
_021D2458:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_02017258
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02017348
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #0x10
	blt _021D2458
	ldr r0, _021D24C0 @ =0x000007EC
	movs r5, #0
	adds r4, r7, r0
	adds r6, r5, #0
_021D2492:
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02017348
	adds r5, r5, #1
	adds r4, #0x78
	cmp r5, #0x10
	blt _021D2492
	ldr r0, _021D24C4 @ =0x00001104
	movs r1, #1
	strb r1, [r7, r0]
	adds r0, r7, #0
	bl ov99_021D4134
	adds r0, r7, #0
	bl ov99_021D4170
	ldr r0, _021D24C8 @ =0x00001103
	movs r1, #1
	strb r1, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D24BC: .4byte 0x000010F8
_021D24C0: .4byte 0x000007EC
_021D24C4: .4byte 0x00001104
_021D24C8: .4byte 0x00001103
	thumb_func_end ov99_021D2410

	thumb_func_start ov99_021D24CC
ov99_021D24CC: @ 0x021D24CC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	movs r4, #0
	adds r5, #0x2c
_021D24D6:
	adds r0, r5, #0
	bl FUN_02017110
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _021D24D6
	ldr r0, _021D24EC @ =0x00001103
	movs r1, #0
	strb r1, [r6, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D24EC: .4byte 0x00001103
	thumb_func_end ov99_021D24CC

	thumb_func_start ov99_021D24F0
ov99_021D24F0: @ 0x021D24F0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r4, [r5, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	movs r1, #0x7f
	movs r2, #0x14
	movs r3, #0x4b
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D2638 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #0xb
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D2638 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #5
	movs r3, #2
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	movs r1, #0x7f
	movs r2, #0x17
	movs r3, #0x4b
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D2638 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #0xe
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D2638 @ =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	movs r1, #8
	movs r3, #7
	bl FUN_0200710C
	ldr r0, _021D2638 @ =0x000010F8
	movs r1, #0x11
	ldr r0, [r5, r0]
	add r2, sp, #0x10
	movs r3, #0x4b
	bl FUN_020071EC
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, _021D263C @ =0x00000FB4
	movs r2, #1
	ldr r0, [r0, #0xc]
	adds r1, r5, r1
	lsls r2, r2, #8
	blx FUN_020C4B18
	adds r0, r6, #0
	bl FUN_020181C4
	movs r0, #0x20
	ldr r1, _021D263C @ =0x00000FB4
	str r0, [sp]
	ldr r0, [r5, #0xc]
	adds r1, r5, r1
	movs r2, #0
	movs r3, #0x10
	bl FUN_02002FBC
	movs r0, #0x20
	ldr r1, _021D263C @ =0x00000FB4
	str r0, [sp]
	ldr r0, [r5, #0xc]
	adds r1, r5, r1
	movs r2, #1
	movs r3, #0x10
	bl FUN_02002FBC
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
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	movs r1, #2
	bl FUN_0201C3C0
	ldr r0, [r5, #8]
	movs r1, #7
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D2638: .4byte 0x000010F8
_021D263C: .4byte 0x00000FB4
	thumb_func_end ov99_021D24F0

	thumb_func_start ov99_021D2640
ov99_021D2640: @ 0x021D2640
	push {r3, lr}
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	pop {r3, pc}
	thumb_func_end ov99_021D2640

	thumb_func_start ov99_021D2664
ov99_021D2664: @ 0x021D2664
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	bl ov99_021D1A54
	ldr r0, _021D26DC @ =0x000010F8
	movs r1, #2
	ldr r0, [r4, r0]
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021D26E0 @ =0x00002712
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl FUN_0200CDC4
	movs r3, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _021D26E0 @ =0x00002712
	ldr r2, _021D26DC @ =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D26E0 @ =0x00002712
	ldr r2, _021D26DC @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	movs r3, #1
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D26E0 @ =0x00002712
	ldr r2, _021D26DC @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	movs r3, #2
	bl FUN_0200CE54
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_021D26DC: .4byte 0x000010F8
_021D26E0: .4byte 0x00002712
	thumb_func_end ov99_021D2664

	thumb_func_start ov99_021D26E4
ov99_021D26E4: @ 0x021D26E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2710 @ =0x00002712
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2710 @ =0x00002712
	bl FUN_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2710 @ =0x00002712
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2710 @ =0x00002712
	bl FUN_0200D0A0
	adds r0, r4, #0
	bl ov99_021D1B98
	pop {r4, pc}
	.align 2, 0
_021D2710: .4byte 0x00002712
	thumb_func_end ov99_021D26E4

	thumb_func_start ov99_021D2714
ov99_021D2714: @ 0x021D2714
	push {r4, lr}
	ldr r2, _021D2750 @ =0x000010E0
	adds r4, r0, #0
	adds r1, r4, r2
	adds r2, r2, #4
	adds r2, r4, r2
	bl ov99_021D1BC4
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, _021D2754 @ =0x021D49D0
	bl FUN_0200CE6C
	ldr r1, _021D2758 @ =0x000010EC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_0200D390
	ldr r0, _021D2758 @ =0x000010EC
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0200D3F4
	ldr r0, _021D2758 @ =0x000010EC
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl FUN_0200D324
	pop {r4, pc}
	.align 2, 0
_021D2750: .4byte 0x000010E0
_021D2754: .4byte 0x021D49D0
_021D2758: .4byte 0x000010EC
	thumb_func_end ov99_021D2714

	thumb_func_start ov99_021D275C
ov99_021D275C: @ 0x021D275C
	push {r4, lr}
	ldr r2, _021D2778 @ =0x000010E0
	adds r4, r0, #0
	ldr r1, [r4, r2]
	adds r2, r2, #4
	ldr r2, [r4, r2]
	bl ov99_021D1C9C
	ldr r0, _021D277C @ =0x000010EC
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	pop {r4, pc}
	nop
_021D2778: .4byte 0x000010E0
_021D277C: .4byte 0x000010EC
	thumb_func_end ov99_021D275C

	thumb_func_start ov99_021D2780
ov99_021D2780: @ 0x021D2780
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, _021D27F4 @ =0x000010F8
	movs r1, #3
	ldr r0, [r4, r0]
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D27F8 @ =0x00002715
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl FUN_0200CDC4
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _021D27F8 @ =0x00002715
	ldr r2, _021D27F4 @ =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D27F8 @ =0x00002715
	ldr r2, _021D27F4 @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	movs r3, #1
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D27F8 @ =0x00002715
	ldr r2, _021D27F4 @ =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	movs r3, #2
	bl FUN_0200CE54
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_021D27F4: .4byte 0x000010F8
_021D27F8: .4byte 0x00002715
	thumb_func_end ov99_021D2780

	thumb_func_start ov99_021D27FC
ov99_021D27FC: @ 0x021D27FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2824 @ =0x00002715
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2824 @ =0x00002715
	bl FUN_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2824 @ =0x00002715
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2824 @ =0x00002715
	bl FUN_0200D0A0
	pop {r4, pc}
	nop
_021D2824: .4byte 0x00002715
	thumb_func_end ov99_021D27FC

	thumb_func_start ov99_021D2828
ov99_021D2828: @ 0x021D2828
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x18]
	adds r4, r5, #0
	ldr r1, [r5, #0x1c]
	ldr r2, _021D287C @ =0x021D4934
	adds r4, #8
	bl FUN_0200CE6C
	ldr r1, _021D2880 @ =0x000010E0
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_0200D390
	ldr r0, _021D2880 @ =0x000010E0
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl FUN_0200D324
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, _021D2884 @ =0x021D48CC
	bl FUN_0200CE6C
	ldr r1, _021D2888 @ =0x000010F0
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_0200D390
	ldr r0, _021D2888 @ =0x000010F0
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	ldr r0, _021D2888 @ =0x000010F0
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0200D324
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D287C: .4byte 0x021D4934
_021D2880: .4byte 0x000010E0
_021D2884: .4byte 0x021D48CC
_021D2888: .4byte 0x000010F0
	thumb_func_end ov99_021D2828

	thumb_func_start ov99_021D288C
ov99_021D288C: @ 0x021D288C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D28A4 @ =0x000010E8
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	ldr r0, _021D28A8 @ =0x000010F0
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	pop {r4, pc}
	nop
_021D28A4: .4byte 0x000010E8
_021D28A8: .4byte 0x000010F0
	thumb_func_end ov99_021D288C

	thumb_func_start ov99_021D28AC
ov99_021D28AC: @ 0x021D28AC
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021D2A04 @ =0x000010F8
	adds r5, r0, #0
	ldr r1, [r5, r1]
	adds r0, #0x2c
	movs r2, #0x52
	movs r3, #0x4b
	bl FUN_020170D8
	ldr r0, [r5, #0x34]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020B2CE4
	ldr r0, [r5, #0x34]
	movs r1, #0
	movs r2, #0x80
	blx FUN_020B2CE4
	movs r2, #2
	ldr r0, [r5, #0x34]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020B2CE4
	movs r2, #1
	ldr r0, [r5, #0x34]
	movs r1, #0
	lsls r2, r2, #0xa
	blx FUN_020B2CE4
	ldr r1, _021D2A04 @ =0x000010F8
	adds r0, r5, #0
	ldr r1, [r5, r1]
	adds r0, #0x3c
	movs r2, #0x53
	movs r3, #0x4b
	bl FUN_020170D8
	ldr r0, [r5, #0x44]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020B2CE4
	ldr r0, [r5, #0x44]
	movs r1, #0
	movs r2, #0x80
	blx FUN_020B2CE4
	movs r2, #2
	ldr r0, [r5, #0x44]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020B2CE4
	movs r2, #1
	ldr r0, [r5, #0x44]
	movs r1, #0
	lsls r2, r2, #0xa
	blx FUN_020B2CE4
	ldr r1, _021D2A04 @ =0x000010F8
	adds r0, r5, #0
	ldr r1, [r5, r1]
	adds r0, #0x4c
	movs r2, #0x54
	movs r3, #0x4b
	bl FUN_020170D8
	ldr r0, [r5, #0x54]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020B2CE4
	ldr r0, [r5, #0x54]
	movs r1, #0
	movs r2, #0x80
	blx FUN_020B2CE4
	movs r2, #2
	ldr r0, [r5, #0x54]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020B2CE4
	movs r2, #1
	ldr r0, [r5, #0x54]
	movs r1, #0
	lsls r2, r2, #0xa
	blx FUN_020B2CE4
	ldr r1, _021D2A04 @ =0x000010F8
	adds r0, r5, #0
	ldr r1, [r5, r1]
	adds r0, #0x5c
	movs r2, #0x4f
	movs r3, #0x4b
	bl FUN_020170D8
	adds r4, r5, #0
	adds r7, r5, #0
	movs r6, #0
	adds r4, #0x6c
	adds r7, #0x2c
_021D297C:
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02017258
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02017348
	adds r6, r6, #1
	adds r4, #0x78
	cmp r6, #0x10
	blt _021D297C
	ldr r0, _021D2A08 @ =0x000007EC
	adds r7, r5, #0
	movs r6, #0
	adds r4, r5, r0
	adds r7, #0x4c
_021D29B8:
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02017258
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02017348
	adds r6, r6, #1
	adds r4, #0x78
	cmp r6, #0x10
	blt _021D29B8
	ldr r0, _021D2A0C @ =0x00001104
	movs r1, #2
	strb r1, [r5, r0]
	adds r0, r5, #0
	bl ov99_021D4134
	adds r0, r5, #0
	bl ov99_021D4170
	ldr r0, _021D2A10 @ =0x00001103
	movs r1, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2A04: .4byte 0x000010F8
_021D2A08: .4byte 0x000007EC
_021D2A0C: .4byte 0x00001104
_021D2A10: .4byte 0x00001103
	thumb_func_end ov99_021D28AC

	thumb_func_start ov99_021D2A14
ov99_021D2A14: @ 0x021D2A14
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	movs r4, #0
	adds r5, #0x2c
_021D2A1E:
	adds r0, r5, #0
	bl FUN_02017110
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _021D2A1E
	ldr r0, _021D2A34 @ =0x00001103
	movs r1, #0
	strb r1, [r6, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D2A34: .4byte 0x00001103
	thumb_func_end ov99_021D2A14

	thumb_func_start ov99_021D2A38
ov99_021D2A38: @ 0x021D2A38
	push {r4, lr}
	adds r4, r0, #0
	bl ov99_021D12F0
	ldr r1, _021D2A6C @ =0x00001105
	movs r0, #0
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #1
	bl ov99_021D439C
	ldr r0, _021D2A6C @ =0x00001105
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	ldr r0, [r4, #8]
	movs r1, #2
	bl FUN_0201C3C0
	pop {r4, pc}
	.align 2, 0
_021D2A6C: .4byte 0x00001105
	thumb_func_end ov99_021D2A38

	thumb_func_start ov99_021D2A70
ov99_021D2A70: @ 0x021D2A70
	push {r3, lr}
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	movs r0, #3
	movs r1, #0
	bl FUN_02019120
	pop {r3, pc}
	thumb_func_end ov99_021D2A70

	thumb_func_start ov99_021D2A84
ov99_021D2A84: @ 0x021D2A84
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2A84

	thumb_func_start ov99_021D2A88
ov99_021D2A88: @ 0x021D2A88
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2A88

	thumb_func_start ov99_021D2A8C
ov99_021D2A8C: @ 0x021D2A8C
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2A8C

	thumb_func_start ov99_021D2A90
ov99_021D2A90: @ 0x021D2A90
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2A90

	thumb_func_start ov99_021D2A94
ov99_021D2A94: @ 0x021D2A94
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2A94

	thumb_func_start ov99_021D2A98
ov99_021D2A98: @ 0x021D2A98
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2A98

	thumb_func_start ov99_021D2A9C
ov99_021D2A9C: @ 0x021D2A9C
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2A9C

	thumb_func_start ov99_021D2AA0
ov99_021D2AA0: @ 0x021D2AA0
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2AA0

	thumb_func_start ov99_021D2AA4
ov99_021D2AA4: @ 0x021D2AA4
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2AA4

	thumb_func_start ov99_021D2AA8
ov99_021D2AA8: @ 0x021D2AA8
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2AA8

	thumb_func_start ov99_021D2AAC
ov99_021D2AAC: @ 0x021D2AAC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r4, [r5, #8]
	ldr r0, _021D2BAC @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	movs r2, #2
	adds r3, r1, #0
	bl FUN_020038B0
	movs r0, #0x4b
	movs r1, #1
	bl FUN_0201A778
	str r0, [r5, #0x24]
	movs r3, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, [r5, #0x24]
	adds r0, r4, #0
	movs r2, #7
	bl FUN_0201A7E8
	ldr r0, [r5, #0x24]
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r5, #0x24]
	bl FUN_0201A9F4
	bl ov99_021D4130
	adds r1, r0, #0
	ldr r0, [r5, #0x20]
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #1
	lsls r1, r1, #8
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #0x50
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2BB0 @ =0x0001020F
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [r5, #0x24]
	adds r2, r6, #0
	bl FUN_0201D7E0
	ldr r0, [r5, #0x24]
	bl FUN_0201ACCC
	adds r0, r6, #0
	bl FUN_020237BC
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
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D2BB4 @ =0xFFFF1FFF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D2BB8 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	adds r1, r0, #0
	subs r1, #0x10
	bl FUN_0200F44C
	movs r0, #1
	adds r1, r0, #0
	subs r1, #0x11
	bl FUN_0200F44C
	movs r0, #0
	movs r1, #0x3d
	movs r2, #3
	bl FUN_0200AB4C
	ldr r0, [r5, #8]
	movs r1, #7
	bl FUN_0201C3C0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021D2BAC: .4byte 0x021BF6DC
_021D2BB0: .4byte 0x0001020F
_021D2BB4: .4byte 0xFFFF1FFF
_021D2BB8: .4byte 0x04001000
	thumb_func_end ov99_021D2AAC

	thumb_func_start ov99_021D2BBC
ov99_021D2BBC: @ 0x021D2BBC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D2BDC
	bl FUN_0201A8FC
	ldr r0, [r4, #0x24]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x24]
_021D2BDC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov99_021D2BBC

	thumb_func_start ov99_021D2BE0
ov99_021D2BE0: @ 0x021D2BE0
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2BE0

	thumb_func_start ov99_021D2BE4
ov99_021D2BE4: @ 0x021D2BE4
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2BE4

	thumb_func_start ov99_021D2BE8
ov99_021D2BE8: @ 0x021D2BE8
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2BE8

	thumb_func_start ov99_021D2BEC
ov99_021D2BEC: @ 0x021D2BEC
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2BEC

	thumb_func_start ov99_021D2BF0
ov99_021D2BF0: @ 0x021D2BF0
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2BF0

	thumb_func_start ov99_021D2BF4
ov99_021D2BF4: @ 0x021D2BF4
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2BF4

	thumb_func_start ov99_021D2BF8
ov99_021D2BF8: @ 0x021D2BF8
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2BF8

	thumb_func_start ov99_021D2BFC
ov99_021D2BFC: @ 0x021D2BFC
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2BFC

	thumb_func_start ov99_021D2C00
ov99_021D2C00: @ 0x021D2C00
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2C00

	thumb_func_start ov99_021D2C04
ov99_021D2C04: @ 0x021D2C04
	bx lr
	.align 2, 0
	thumb_func_end ov99_021D2C04

	thumb_func_start ov99_021D2C08
ov99_021D2C08: @ 0x021D2C08
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4]
	adds r6, r4, #0
	adds r5, r0, #0
	adds r6, #8
	cmp r1, #0
	beq _021D2C24
	cmp r1, #1
	beq _021D2C44
	cmp r1, #2
	beq _021D2C68
	b _021D2C78
_021D2C24:
	adds r1, r6, #0
	bl ov99_021D2CB0
	movs r1, #0
	movs r0, #3
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0x18
	subs r2, #0x10
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2C78
_021D2C44:
	ldr r0, _021D2CA4 @ =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D2CA8 @ =0x00000726
	cmp r1, r0
	blo _021D2C78
	movs r0, #3
	str r0, [sp]
	movs r0, #0x18
	adds r1, r0, #0
	subs r1, #0x28
	movs r2, #0
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2C78
_021D2C68:
	movs r0, #3
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D2C78
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D2C78:
	ldr r1, _021D2CAC @ =0x000010E0
	adds r0, r5, #0
	ldr r1, [r5, r1]
	bl ov99_021D44CC
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov99_021D2CEC
	movs r1, #0
	adds r0, r5, #0
	mvns r1, r1
	bl ov99_021D425C
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov99_021D2DF4
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D2CA4: .4byte 0x000010FC
_021D2CA8: .4byte 0x00000726
_021D2CAC: .4byte 0x000010E0
	thumb_func_end ov99_021D2C08

	thumb_func_start ov99_021D2CB0
ov99_021D2CB0: @ 0x021D2CB0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r4, _021D2CE4 @ =0x021D4B70
	adds r5, r1, #0
	movs r7, #2
	adds r6, #8
_021D2CBC:
	ldr r0, _021D2CE8 @ =0x000010E0
	movs r3, #0x11
	ldr r0, [r6, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	lsls r3, r3, #0x10
	bl FUN_0200D650
	ldr r0, [r4, #4]
	adds r7, r7, #1
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	adds r6, r6, #4
	str r0, [r5, #0xc]
	adds r4, #0x24
	adds r5, #0x14
	cmp r7, #4
	ble _021D2CBC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2CE4: .4byte 0x021D4B70
_021D2CE8: .4byte 0x000010E0
	thumb_func_end ov99_021D2CB0

	thumb_func_start ov99_021D2CEC
ov99_021D2CEC: @ 0x021D2CEC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r7, #0
	str r1, [sp]
	movs r6, #0
	movs r4, #2
	adds r5, #8
_021D2CFA:
	ldr r2, _021D2D14 @ =0x000010E0
	ldr r1, [sp]
	ldr r2, [r5, r2]
	adds r0, r7, #0
	adds r3, r6, #0
	bl ov99_021D2D18
	adds r4, r4, #1
	adds r5, r5, #4
	adds r6, r6, #1
	cmp r4, #4
	ble _021D2CFA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2D14: .4byte 0x000010E0
	thumb_func_end ov99_021D2CEC

	thumb_func_start ov99_021D2D18
ov99_021D2D18: @ 0x021D2D18
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x14
	adds r1, #8
	muls r0, r3, r0
	adds r4, r1, r0
	str r2, [sp]
	movs r0, #0x24
	ldr r2, _021D2DEC @ =0x021D4B70
	muls r0, r3, r0
	adds r5, r2, r0
	ldr r1, [r4, #0xc]
	ldr r0, [r2, r0]
	cmp r1, r0
	bge _021D2D3A
	adds r0, r1, #1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021D2D3A:
	ldr r2, [r4, #8]
	ldr r1, [r5, #0x14]
	adds r0, r4, #0
	adds r2, r2, r1
	movs r1, #0x5a
	lsls r1, r1, #0xe
	adds r0, #8
	str r2, [r4, #8]
	cmp r2, r1
	blt _021D2D54
	ldr r2, [r0]
	subs r1, r2, r1
	str r1, [r0]
_021D2D54:
	ldr r0, [r4, #8]
	ldr r6, [r5, #0x18]
	bl FUN_0201D2B8
	ldr r2, [r4]
	ldr r1, [r5, #0xc]
	asrs r3, r6, #0x1f
	adds r1, r2, r1
	str r1, [r4]
	ldr r2, [r4, #4]
	ldr r1, [r5, #0x10]
	adds r1, r2, r1
	str r1, [r4, #4]
	asrs r1, r0, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0xa
	adds r7, r7, r2
	ldr r2, _021D2DF0 @ =0x00000000
	ldr r3, [r4, #4]
	adcs r6, r2
	lsls r2, r6, #0x14
	lsrs r6, r7, #0xc
	orrs r6, r2
	adds r2, r3, r6
	movs r3, #0x11
	ldr r0, [sp]
	ldr r1, [r4]
	lsls r3, r3, #0x10
	bl FUN_0200D650
	movs r0, #0x12
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _021D2DAE
	ldr r1, [r5, #0x1c]
	ldr r0, [sp]
	adds r2, r1, #0
	bl FUN_0200D74C
	b _021D2DCA
_021D2DAE:
	ldr r1, [r5, #0x1c]
	movs r0, #0
	blx FUN_020E1A9C
	adds r6, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0
	blx FUN_020E1A9C
	adds r2, r0, #0
	ldr r0, [sp]
	adds r1, r6, #0
	bl FUN_0200D74C
_021D2DCA:
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x10]
	ldrsh r1, [r4, r0]
	ldrh r0, [r5, #0x20]
	cmp r1, r0
	blt _021D2DE8
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0x12
	ldrsb r1, [r4, r0]
	movs r0, #1
	eors r0, r1
	strb r0, [r4, #0x12]
_021D2DE8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2DEC: .4byte 0x021D4B70
_021D2DF0: .4byte 0x00000000
	thumb_func_end ov99_021D2D18

	thumb_func_start ov99_021D2DF4
ov99_021D2DF4: @ 0x021D2DF4
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r3, [r4]
	adds r5, r0, #0
	subs r3, #0x40
	asrs r6, r3, #0xb
	str r3, [r4]
	lsrs r6, r6, #0x14
	adds r6, r3, r6
	ldr r0, [r5, #8]
	movs r1, #2
	movs r2, #0
	asrs r3, r6, #0xc
	bl FUN_02019184
	ldr r4, [r4]
	ldr r0, [r5, #8]
	asrs r3, r4, #0xb
	lsrs r3, r3, #0x14
	adds r3, r4, r3
	movs r1, #7
	movs r2, #0
	asrs r3, r3, #0xc
	bl FUN_02019184
	pop {r4, r5, r6, pc}
	thumb_func_end ov99_021D2DF4

	thumb_func_start ov99_021D2E28
ov99_021D2E28: @ 0x021D2E28
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4]
	adds r6, r4, #0
	adds r5, r0, #0
	adds r6, #8
	cmp r1, #0
	beq _021D2E44
	cmp r1, #1
	beq _021D2E64
	cmp r1, #2
	beq _021D2E88
	b _021D2E98
_021D2E44:
	adds r1, r6, #0
	bl ov99_021D2ED8
	movs r1, #0
	movs r0, #3
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0x18
	subs r2, #0x10
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2E98
_021D2E64:
	ldr r0, _021D2ECC @ =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D2ED0 @ =0x00001770
	cmp r1, r0
	blo _021D2E98
	movs r0, #3
	str r0, [sp]
	movs r0, #0x18
	adds r1, r0, #0
	subs r1, #0x28
	movs r2, #0
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2E98
_021D2E88:
	movs r0, #3
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D2E98
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D2E98:
	ldr r1, _021D2ED4 @ =0x000010E0
	adds r0, r5, #0
	ldr r1, [r5, r1]
	bl ov99_021D44CC
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov99_021D2FA8
	movs r1, #0
	adds r0, r5, #0
	mvns r1, r1
	bl ov99_021D425C
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov99_021D32D8
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov99_021D330C
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D2ECC: .4byte 0x000010FC
_021D2ED0: .4byte 0x00001770
_021D2ED4: .4byte 0x000010E0
	thumb_func_end ov99_021D2E28

	thumb_func_start ov99_021D2ED8
ov99_021D2ED8: @ 0x021D2ED8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r4, _021D2F9C @ =0x021D4BDC
	adds r5, r1, #0
	movs r7, #2
	adds r6, #8
_021D2EE4:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #4]
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r5, #0
	ldr r1, [r4, #0x44]
	adds r0, #0x98
	str r1, [r0]
	adds r0, r5, #0
	ldr r1, [r4, #0x10]
	adds r0, #0xa4
	str r1, [r0]
	adds r0, r5, #0
	ldr r1, [r4, #0xc]
	adds r0, #0xb0
	str r1, [r0]
	ldr r0, [r4, #0x10]
	bl FUN_0201D2B8
	ldr r2, [r4, #4]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	lsls r2, r2, #0xa
	adds r0, r0, r2
	ldr r2, _021D2FA0 @ =0x00000000
	adcs r1, r2
	lsrs r2, r0, #0xc
	lsls r1, r1, #0x14
	adds r0, r5, #0
	orrs r2, r1
	adds r0, #0xbc
	str r2, [r0]
	ldr r0, [r4, #0x10]
	bl FUN_0201D2C4
	ldr r2, [r4, #8]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	lsls r2, r2, #0xa
	adds r0, r0, r2
	ldr r2, _021D2FA0 @ =0x00000000
	adcs r1, r2
	lsrs r2, r0, #0xc
	lsls r1, r1, #0x14
	adds r0, r5, #0
	adds r3, r5, #0
	orrs r2, r1
	adds r0, #0xc0
	str r2, [r0]
	adds r0, r5, #0
	adds r2, r5, #0
	ldr r1, [r4]
	adds r0, #0xc8
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x94
	adds r2, #0xbc
	adds r3, #0xc0
	ldr r0, _021D2FA4 @ =0x000010E0
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x98
	ldr r2, [r2]
	ldr r0, [r6, r0]
	adds r2, r2, r3
	movs r3, #0x11
	lsls r3, r3, #0x10
	bl FUN_0200D650
	ldr r0, _021D2FA4 @ =0x000010E0
	movs r1, #2
	ldr r0, [r6, r0]
	bl FUN_0200D6A4
	adds r7, r7, #1
	adds r6, r6, #4
	adds r4, #0x54
	adds r5, #0x3c
	cmp r7, #3
	ble _021D2EE4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2F9C: .4byte 0x021D4BDC
_021D2FA0: .4byte 0x00000000
_021D2FA4: .4byte 0x000010E0
	thumb_func_end ov99_021D2ED8

	thumb_func_start ov99_021D2FA8
ov99_021D2FA8: @ 0x021D2FA8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r7, #0
	str r1, [sp]
	movs r6, #0
	movs r4, #2
	adds r5, #8
_021D2FB6:
	ldr r2, _021D2FD0 @ =0x000010E0
	ldr r1, [sp]
	ldr r2, [r5, r2]
	adds r0, r7, #0
	adds r3, r6, #0
	bl ov99_021D2FD4
	adds r4, r4, #1
	adds r5, r5, #4
	adds r6, r6, #1
	cmp r4, #3
	ble _021D2FB6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2FD0: .4byte 0x000010E0
	thumb_func_end ov99_021D2FA8

	thumb_func_start ov99_021D2FD4
ov99_021D2FD4: @ 0x021D2FD4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x3c
	adds r1, #0x94
	muls r0, r3, r0
	adds r4, r1, r0
	movs r0, #0x54
	ldr r1, _021D32CC @ =0x021D4BDC
	muls r0, r3, r0
	adds r5, r1, r0
	movs r0, #0x34
	ldrsh r0, [r4, r0]
	str r2, [sp]
	cmp r0, #0
	ble _021D2FF8
	subs r0, r0, #1
	strh r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_021D2FF8:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #5
	bls _021D3004
	b _021D326C
_021D3004:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D3010: @ jump table
	.2byte _021D301C - _021D3010 - 2 @ case 0
	.2byte _021D302A - _021D3010 - 2 @ case 1
	.2byte _021D30AA - _021D3010 - 2 @ case 2
	.2byte _021D30D6 - _021D3010 - 2 @ case 3
	.2byte _021D3196 - _021D3010 - 2 @ case 4
	.2byte _021D3206 - _021D3010 - 2 @ case 5
_021D301C:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
_021D302A:
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	ble _021D3042
	ldr r1, [r4, #0x1c]
	ldr r0, [r5, #0x1c]
	subs r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	bge _021D3042
	str r0, [r4, #0x1c]
_021D3042:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	blt _021D3060
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
_021D3060:
	ldr r6, [r5, #4]
	ldr r0, [r4, #0x10]
	bl FUN_0201D2B8
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4, #0x28]
	ldr r6, [r5, #8]
	ldr r0, [r4, #0x10]
	bl FUN_0201D2C4
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4, #0x2c]
	b _021D326C
_021D30AA:
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	adds r0, r1, r0
	str r0, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x2c]
	adds r0, r1, r0
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
_021D30D6:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x20]
	adds r0, r4, #0
	adds r1, r2, r1
	str r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0x24]
	adds r0, #0x14
	adds r1, r2, r1
	str r1, [r4, #0x18]
	movs r1, #0x5a
	ldr r2, [r4, #0x14]
	lsls r1, r1, #0xe
	cmp r2, r1
	blt _021D30FA
	ldr r2, [r0]
	subs r1, r2, r1
	str r1, [r0]
_021D30FA:
	movs r0, #0x5a
	ldr r1, [r4, #0x18]
	lsls r0, r0, #0xe
	cmp r1, r0
	blt _021D3108
	subs r0, r1, r0
	str r0, [r4, #0x18]
_021D3108:
	ldr r6, [r5, #0x24]
	ldr r0, [r4, #0x14]
	bl FUN_0201D2B8
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4, #0x28]
	ldr r6, [r5, #0x28]
	ldr r0, [r4, #0x18]
	bl FUN_0201D2B8
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	ldr r0, _021D32D0 @ =0x000010FC
	str r1, [r4, #0x2c]
	ldr r1, [r7, r0]
	ldr r0, _021D32D4 @ =0x00001752
	cmp r1, r0
	bhs _021D315C
	b _021D326C
_021D315C:
	ldr r0, [r5, #0x2c]
	movs r1, #0x14
	blx FUN_020E1F6C
	ldr r1, [r4, #0x20]
	subs r0, r1, r0
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x30]
	movs r1, #0x14
	blx FUN_020E1F6C
	ldr r1, [r4, #0x24]
	subs r0, r1, r0
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x2c]
	movs r1, #0x14
	blx FUN_020E1F6C
	ldr r1, [r4, #0x20]
	cmp r1, r0
	bgt _021D326C
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
	b _021D326C
_021D3196:
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	adds r1, r1, r0
	ldr r0, [r5, #0x34]
	subs r0, r1, r0
	str r0, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x2c]
	adds r0, r1, r0
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x3c]
	str r1, [r4, #0x1c]
	ldr r6, [r5, #0x34]
	bl FUN_0201D2B8
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r3, #2
	movs r2, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r2
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	str r1, [r4, #0x28]
	ldr r6, [r5, #0x38]
	adds r0, r2, #0
	bl FUN_0201D2C4
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	adds r0, r4, #0
	str r1, [r4, #0x2c]
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
_021D3206:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	adds r0, r1, r0
	str r0, [r4, #0x10]
	ldr r6, [r5, #0x34]
	bl FUN_0201D2C4
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4, #0x28]
	ldr r6, [r5, #0x38]
	ldr r0, [r4, #0x10]
	bl FUN_0201D2B8
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4, #0x2c]
	movs r0, #0x2d
	ldr r1, [r4, #0x10]
	lsls r0, r0, #0xe
	cmp r1, r0
	blt _021D326C
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
_021D326C:
	movs r0, #0x38
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _021D327E
	ldr r0, [sp]
	ldr r1, [r5, #0x4c]
	bl FUN_0200D7C0
	b _021D3288
_021D327E:
	ldr r1, [r5, #0x4c]
	ldr r0, [sp]
	rsbs r1, r1, #0
	bl FUN_0200D7C0
_021D3288:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0x36]
	ldrsh r1, [r4, r0]
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r0, [r0]
	cmp r1, r0
	blt _021D32AE
	movs r0, #0
	strh r0, [r4, #0x36]
	movs r0, #0x38
	ldrsb r1, [r4, r0]
	movs r0, #1
	eors r1, r0
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_021D32AE:
	ldr r1, [r4, #4]
	ldr r0, [r5, #0x48]
	subs r3, r1, r0
	str r3, [r4, #4]
	ldr r2, [r4]
	ldr r1, [r4, #0x28]
	ldr r0, [sp]
	adds r1, r2, r1
	ldr r2, [r4, #0x2c]
	adds r2, r3, r2
	movs r3, #0x11
	lsls r3, r3, #0x10
	bl FUN_0200D650
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D32CC: .4byte 0x021D4BDC
_021D32D0: .4byte 0x000010FC
_021D32D4: .4byte 0x00001752
	thumb_func_end ov99_021D2FD4

	thumb_func_start ov99_021D32D8
ov99_021D32D8: @ 0x021D32D8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r3, [r4, #4]
	adds r5, r0, #0
	adds r3, #0x60
	asrs r6, r3, #0xb
	str r3, [r4, #4]
	lsrs r6, r6, #0x14
	adds r6, r3, r6
	ldr r0, [r5, #8]
	movs r1, #2
	movs r2, #3
	asrs r3, r6, #0xc
	bl FUN_02019184
	ldr r4, [r4, #4]
	ldr r0, [r5, #8]
	asrs r3, r4, #0xb
	lsrs r3, r3, #0x14
	adds r3, r4, r3
	movs r1, #7
	movs r2, #3
	asrs r3, r3, #0xc
	bl FUN_02019184
	pop {r4, r5, r6, pc}
	thumb_func_end ov99_021D32D8

	thumb_func_start ov99_021D330C
ov99_021D330C: @ 0x021D330C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r1, #0x88
	ldr r7, [r1]
	adds r1, r5, #0
	adds r1, #0x8c
	ldr r2, [r1]
	movs r1, #2
	lsls r1, r1, #8
	adds r3, r2, r1
	adds r2, r5, #0
	adds r2, #0x8c
	str r3, [r2]
	adds r2, r5, #0
	adds r2, #0x8c
	ldr r2, [r2]
	lsls r1, r1, #3
	cmp r2, r1
	blt _021D33AC
	movs r1, #0x10
	str r1, [sp, #8]
	adds r1, r5, #0
	movs r2, #0
	adds r1, #0x8c
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0x90
	ldr r1, [r1]
	cmp r1, #0
	bne _021D337C
	adds r1, r5, #0
	adds r1, #0x88
	ldr r1, [r1]
	adds r2, r1, #1
	adds r1, r5, #0
	adds r1, #0x88
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0x88
	ldr r1, [r1]
	cmp r1, #4
	blt _021D33B0
	adds r1, r5, #0
	movs r2, #2
	adds r1, #0x88
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0x90
	ldr r2, [r1]
	movs r1, #1
	eors r2, r1
	adds r1, r5, #0
	adds r1, #0x90
	str r2, [r1]
	b _021D33B0
_021D337C:
	adds r1, r5, #0
	adds r1, #0x88
	ldr r1, [r1]
	subs r2, r1, #1
	adds r1, r5, #0
	adds r1, #0x88
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0x88
	ldr r1, [r1]
	cmp r1, #0
	bge _021D33B0
	adds r1, r5, #0
	movs r2, #1
	adds r1, #0x88
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0x90
	ldr r1, [r1]
	eors r2, r1
	adds r1, r5, #0
	adds r1, #0x90
	str r2, [r1]
	b _021D33B0
_021D33AC:
	asrs r1, r2, #8
	str r1, [sp, #8]
_021D33B0:
	adds r1, r5, #0
	adds r1, #0x90
	ldr r1, [r1]
	cmp r1, #0
	bne _021D33C4
	adds r4, r7, #1
	cmp r4, #4
	blt _021D33CA
	subs r4, r7, #1
	b _021D33CA
_021D33C4:
	subs r4, r7, #1
	bpl _021D33CA
	movs r4, #1
_021D33CA:
	ldr r0, [r0, #0xc]
	movs r1, #1
	bl FUN_0200316C
	str r0, [sp, #4]
	lsls r0, r4, #5
	adds r4, r5, r0
	adds r5, #8
	lsls r0, r7, #5
	adds r5, r5, r0
	ldr r0, [sp, #8]
	movs r6, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_021D33E6:
	adds r1, r6, #0
	ldrh r0, [r4, #8]
	adds r1, #0x20
	lsls r2, r1, #1
	ldr r1, [sp, #4]
	str r0, [sp]
	adds r1, r1, r2
	adds r0, r5, #0
	movs r2, #1
	adds r3, r7, #0
	bl FUN_0200393C
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r6, #0x10
	blt _021D33E6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov99_021D330C

	thumb_func_start ov99_021D340C
ov99_021D340C: @ 0x021D340C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r0, r1, #0
	adds r7, r1, #0
	ldr r0, [r0]
	adds r7, #8
	str r1, [sp, #4]
	cmp r0, #3
	bhi _021D3510
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D342C: @ jump table
	.2byte _021D3434 - _021D342C - 2 @ case 0
	.2byte _021D34B4 - _021D342C - 2 @ case 1
	.2byte _021D34D8 - _021D342C - 2 @ case 2
	.2byte _021D3500 - _021D342C - 2 @ case 3
_021D3434:
	adds r4, r6, #0
	movs r5, #0
	adds r4, #0x6c
	b _021D347C
_021D343C:
	movs r0, #0x78
	muls r0, r5, r0
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0x54
	blx FUN_020C4CF4
	lsrs r2, r5, #0x1f
	lsls r1, r5, #0x1d
	subs r1, r1, r2
	movs r0, #0x1d
	rors r1, r0
	adds r0, r2, r1
	bne _021D345C
	movs r1, #3
	b _021D346A
_021D345C:
	cmp r5, #0x1c
	blo _021D3464
	movs r1, #1
	b _021D346A
_021D3464:
	ldr r0, _021D3574 @ =0x021D4CAC
	lsls r1, r5, #1
	ldrh r1, [r0, r1]
_021D346A:
	lsls r1, r1, #4
	movs r0, #0x78
	adds r1, r6, r1
	muls r0, r5, r0
	ldr r1, [r1, #0x34]
	adds r0, r4, r0
	blx FUN_020AE608
	adds r5, r5, #1
_021D347C:
	cmp r5, #0x10
	blt _021D343C
	movs r0, #0x12
	movs r1, #0x10
	lsls r0, r0, #4
	str r1, [r7, r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov99_021D3588
	adds r0, r6, #0
	bl ov99_021D36B0
	movs r1, #0
	movs r0, #3
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0x18
	subs r2, #0x10
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldr r0, [sp, #4]
	ldr r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0]
	b _021D3510
_021D34B4:
	movs r0, #3
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D3510
	ldr r0, _021D3578 @ =0x04000050
	movs r1, #0
	movs r2, #0x3f
	movs r3, #0x1f
	str r1, [sp]
	blx FUN_020BF55C
	ldr r0, [sp, #4]
	ldr r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0]
	b _021D3510
_021D34D8:
	ldr r0, _021D357C @ =0x000010FC
	ldr r1, [r6, r0]
	ldr r0, _021D3580 @ =0x00001F2C
	cmp r1, r0
	blo _021D3510
	movs r0, #3
	str r0, [sp]
	movs r0, #0x18
	adds r1, r0, #0
	subs r1, #0x28
	movs r2, #0
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldr r0, [sp, #4]
	ldr r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0]
	b _021D3510
_021D3500:
	movs r0, #3
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D3510
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3510:
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r3, [r7, r0]
	movs r0, #0x1d
	lsrs r2, r3, #0x1f
	lsls r1, r3, #0x1d
	subs r1, r1, r2
	rors r1, r0
	adds r0, r2, r1
	bne _021D3528
	movs r1, #3
	b _021D3536
_021D3528:
	cmp r3, #0x1c
	blo _021D3530
	movs r1, #1
	b _021D3536
_021D3530:
	ldr r0, _021D3574 @ =0x021D4CAC
	lsls r1, r3, #1
	ldrh r1, [r0, r1]
_021D3536:
	adds r0, r6, #0
	bl ov99_021D425C
	cmp r0, #1
	bne _021D354A
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r1, [r7, r0]
	adds r1, r1, #1
	str r1, [r7, r0]
_021D354A:
	ldr r1, _021D3584 @ =0x000010E0
	adds r0, r6, #0
	ldr r1, [r6, r1]
	bl ov99_021D44CC
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov99_021D35C8
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov99_021D36D4
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov99_021D3930
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3574: .4byte 0x021D4CAC
_021D3578: .4byte 0x04000050
_021D357C: .4byte 0x000010FC
_021D3580: .4byte 0x00001F2C
_021D3584: .4byte 0x000010E0
	thumb_func_end ov99_021D340C

	thumb_func_start ov99_021D3588
ov99_021D3588: @ 0x021D3588
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _021D35C0 @ =0x000010E0
	adds r4, #8
	adds r5, r1, #0
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_0200D6A4
	ldr r0, _021D35C0 @ =0x000010E0
	movs r1, #0x13
	movs r2, #9
	movs r3, #0x11
	ldr r0, [r4, r0]
	lsls r1, r1, #4
	mvns r2, r2
	lsls r3, r3, #0x10
	bl FUN_0200D500
	movs r1, #0x13
	movs r0, #0x49
	lsls r1, r1, #0x10
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r1, _021D35C4 @ =0xFFFF6000
	adds r0, r0, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D35C0: .4byte 0x000010E0
_021D35C4: .4byte 0xFFFF6000
	thumb_func_end ov99_021D3588

	thumb_func_start ov99_021D35C8
ov99_021D35C8: @ 0x021D35C8
	push {r4, lr}
	ldr r2, _021D35E0 @ =0x000010FC
	ldr r3, _021D35E4 @ =0x00001D10
	ldr r4, [r0, r2]
	cmp r4, r3
	blo _021D35DE
	subs r2, #0x14
	ldr r2, [r0, r2]
	movs r3, #0
	bl ov99_021D35E8
_021D35DE:
	pop {r4, pc}
	.align 2, 0
_021D35E0: .4byte 0x000010FC
_021D35E4: .4byte 0x00001D10
	thumb_func_end ov99_021D35C8

	thumb_func_start ov99_021D35E8
ov99_021D35E8: @ 0x021D35E8
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x49
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r0, r3, #4
	str r2, [sp]
	adds r4, r1, r0
	movs r2, #0x1c
	ldr r1, [r1, r0]
	ldr r5, _021D36A4 @ =0x021D4C90
	muls r2, r3, r2
	ldr r0, _021D36A8 @ =0xFFFC0000
	adds r5, r5, r2
	cmp r1, r0
	blt _021D36A0
	ldr r2, [r4, #8]
	ldr r1, [r5, #0xc]
	adds r0, r4, #0
	adds r2, r2, r1
	movs r1, #0x5a
	lsls r1, r1, #0xe
	adds r0, #8
	str r2, [r4, #8]
	cmp r2, r1
	blt _021D3620
	ldr r2, [r0]
	subs r1, r2, r1
	str r1, [r0]
_021D3620:
	ldr r0, [r4, #8]
	ldr r6, [r5, #0x10]
	bl FUN_0201D2B8
	ldr r2, [r4]
	ldr r1, [r5, #4]
	asrs r3, r6, #0x1f
	adds r1, r2, r1
	str r1, [r4]
	ldr r2, [r4, #4]
	ldr r1, [r5, #8]
	adds r1, r2, r1
	str r1, [r4, #4]
	asrs r1, r0, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0xa
	adds r7, r7, r2
	ldr r2, _021D36AC @ =0x00000000
	ldr r3, [r4, #4]
	adcs r6, r2
	lsls r2, r6, #0x14
	lsrs r6, r7, #0xc
	orrs r6, r2
	adds r2, r3, r6
	movs r3, #0x11
	ldr r0, [sp]
	ldr r1, [r4]
	lsls r3, r3, #0x10
	bl FUN_0200D650
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _021D3678
	ldr r0, [sp]
	ldr r1, [r5, #0x14]
	bl FUN_0200D7C0
	b _021D3682
_021D3678:
	ldr r1, [r5, #0x14]
	ldr r0, [sp]
	rsbs r1, r1, #0
	bl FUN_0200D7C0
_021D3682:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r1, [r4, r0]
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	blt _021D36A0
	movs r0, #0
	strh r0, [r4, #0xc]
	movs r0, #0xe
	ldrsb r1, [r4, r0]
	movs r0, #1
	eors r0, r1
	strb r0, [r4, #0xe]
_021D36A0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D36A4: .4byte 0x021D4C90
_021D36A8: .4byte 0xFFFC0000
_021D36AC: .4byte 0x00000000
	thumb_func_end ov99_021D35E8

	thumb_func_start ov99_021D36B0
ov99_021D36B0: @ 0x021D36B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D36CC @ =0x000010EC
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0200D810
	ldr r0, _021D36D0 @ =0x000010F0
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0200D810
	pop {r4, pc}
	nop
_021D36CC: .4byte 0x000010EC
_021D36D0: .4byte 0x000010F0
	thumb_func_end ov99_021D36B0

	thumb_func_start ov99_021D36D4
ov99_021D36D4: @ 0x021D36D4
	push {r3, r4, r5, lr}
	ldr r2, _021D371C @ =0x000010FC
	adds r5, r0, #0
	ldr r3, [r5, r2]
	ldr r2, _021D3720 @ =0x00001C20
	adds r4, r1, #0
	cmp r3, r2
	bne _021D36EA
	movs r2, #0
	bl ov99_021D372C
_021D36EA:
	ldr r0, _021D371C @ =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3724 @ =0x00001CD4
	cmp r1, r0
	bne _021D36FE
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov99_021D372C
_021D36FE:
	ldr r0, _021D371C @ =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3728 @ =0x00001D10
	cmp r1, r0
	bne _021D3712
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl ov99_021D372C
_021D3712:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov99_021D37E0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D371C: .4byte 0x000010FC
_021D3720: .4byte 0x00001C20
_021D3724: .4byte 0x00001CD4
_021D3728: .4byte 0x00001D10
	thumb_func_end ov99_021D36D4

	thumb_func_start ov99_021D372C
ov99_021D372C: @ 0x021D372C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x47
	adds r4, r1, #0
	lsls r0, r0, #2
	ldrb r0, [r4, r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _021D3744
	bl FUN_02022974
_021D3744:
	cmp r6, #3
	blo _021D374C
	bl FUN_02022974
_021D374C:
	movs r0, #0x47
	movs r1, #1
	lsls r0, r0, #2
	strb r1, [r4, r0]
	movs r2, #0
	adds r1, r0, #1
	strb r2, [r4, r1]
	adds r1, r0, #2
	strb r2, [r4, r1]
	movs r1, #0x1f
	adds r0, r0, #3
	strb r1, [r4, r0]
	ldr r0, _021D37C0 @ =0x000010F0
	ldr r1, _021D37C4 @ =0x021D4C84
	lsls r2, r6, #2
	ldr r3, _021D37C8 @ =0x021D4C86
	ldrsh r1, [r1, r2]
	ldrsh r2, [r3, r2]
	movs r3, #0x11
	ldr r0, [r5, r0]
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, _021D37C0 @ =0x000010F0
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	ldr r0, _021D37CC @ =0x000010EC
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	ldr r0, _021D37D0 @ =0x0000011F
	movs r2, #0x3f
	ldrsb r0, [r4, r0]
	adds r3, r2, #0
	adds r3, #0xdf
	str r0, [sp]
	ldrsb r3, [r4, r3]
	ldr r0, _021D37D4 @ =0x04001050
	movs r1, #0
	blx FUN_020BF55C
	ldr r0, _021D37D8 @ =0x0000011E
	movs r2, #0x3f
	ldrsb r0, [r4, r0]
	adds r3, r2, #0
	adds r3, #0xe0
	str r0, [sp]
	ldrsb r3, [r4, r3]
	ldr r0, _021D37DC @ =0x04000050
	movs r1, #0
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D37C0: .4byte 0x000010F0
_021D37C4: .4byte 0x021D4C84
_021D37C8: .4byte 0x021D4C86
_021D37CC: .4byte 0x000010EC
_021D37D0: .4byte 0x0000011F
_021D37D4: .4byte 0x04001050
_021D37D8: .4byte 0x0000011E
_021D37DC: .4byte 0x04000050
	thumb_func_end ov99_021D372C

	thumb_func_start ov99_021D37E0
ov99_021D37E0: @ 0x021D37E0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x47
	adds r4, r1, #0
	lsls r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _021D37F2
	b _021D390C
_021D37F2:
	adds r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021D3892
	adds r1, r0, #2
	ldrsb r1, [r4, r1]
	adds r2, r1, #3
	adds r1, r0, #2
	strb r2, [r4, r1]
	adds r1, r0, #3
	ldrsb r1, [r4, r1]
	subs r2, r1, #3
	adds r1, r0, #3
	strb r2, [r4, r1]
	adds r0, r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0x1f
	ble _021D381E
	movs r1, #0x1f
	adds r0, r1, #0
	adds r0, #0xff
	strb r1, [r4, r0]
_021D381E:
	ldr r0, _021D3910 @ =0x0000011F
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bge _021D382A
	movs r1, #0
	strb r1, [r4, r0]
_021D382A:
	ldr r0, _021D3914 @ =0x0000011E
	movs r2, #0xd
	ldrsb r1, [r4, r0]
	adds r0, r0, #1
	ldrsb r0, [r4, r0]
	lsls r2, r2, #0xc
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _021D3918 @ =0x04001052
	strh r1, [r0]
	ldr r0, _021D391C @ =0x000010F0
	ldr r1, _021D3920 @ =0xFFFFA000
	ldr r0, [r5, r0]
	bl FUN_0200D5E8
	ldr r0, _021D391C @ =0x000010F0
	add r1, sp, #0
	movs r3, #0x11
	ldr r0, [r5, r0]
	adds r1, #2
	add r2, sp, #0
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r0, sp, #0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xe0
	ble _021D390C
	ldr r0, _021D391C @ =0x000010F0
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	ldr r0, _021D3924 @ =0x000010EC
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	ldr r0, _021D3924 @ =0x000010EC
	movs r3, #0x11
	add r1, sp, #0
	movs r2, #2
	ldrsh r1, [r1, r2]
	ldr r0, [r5, r0]
	subs r2, #0x22
	lsls r3, r3, #0x10
	bl FUN_0200D500
	ldr r0, _021D3928 @ =0x0000011D
	movs r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D3892:
	adds r1, r0, #3
	ldrsb r1, [r4, r1]
	adds r2, r1, #3
	adds r1, r0, #3
	strb r2, [r4, r1]
	adds r1, r0, #2
	ldrsb r1, [r4, r1]
	subs r2, r1, #3
	adds r1, r0, #2
	strb r2, [r4, r1]
	adds r1, r0, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0x1f
	ble _021D38B4
	movs r1, #0x1f
	adds r0, r0, #3
	strb r1, [r4, r0]
_021D38B4:
	ldr r0, _021D3914 @ =0x0000011E
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bge _021D38C0
	movs r1, #0
	strb r1, [r4, r0]
_021D38C0:
	ldr r0, _021D3914 @ =0x0000011E
	movs r2, #0xd
	ldrsb r1, [r4, r0]
	adds r0, r0, #1
	ldrsb r0, [r4, r0]
	lsls r2, r2, #0xc
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _021D392C @ =0x04000052
	strh r1, [r0]
	ldr r0, _021D3924 @ =0x000010EC
	ldr r1, _021D3920 @ =0xFFFFA000
	ldr r0, [r5, r0]
	bl FUN_0200D5E8
	ldr r0, _021D3924 @ =0x000010EC
	add r1, sp, #0
	movs r3, #0x11
	ldr r0, [r5, r0]
	adds r1, #2
	add r2, sp, #0
	lsls r3, r3, #0x10
	bl FUN_0200D5A0
	add r0, sp, #0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xe0
	ble _021D390C
	ldr r0, _021D3924 @ =0x000010EC
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	ldr r0, _021D3928 @ =0x0000011D
	movs r1, #0
	strb r1, [r4, r0]
	subs r0, r0, #1
	strb r1, [r4, r0]
_021D390C:
	pop {r3, r4, r5, pc}
	nop
_021D3910: .4byte 0x0000011F
_021D3914: .4byte 0x0000011E
_021D3918: .4byte 0x04001052
_021D391C: .4byte 0x000010F0
_021D3920: .4byte 0xFFFFA000
_021D3924: .4byte 0x000010EC
_021D3928: .4byte 0x0000011D
_021D392C: .4byte 0x04000052
	thumb_func_end ov99_021D37E0

	thumb_func_start ov99_021D3930
ov99_021D3930: @ 0x021D3930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0x45
	lsls r0, r0, #2
	str r1, [sp, #4]
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021D3948
	cmp r1, #1
	beq _021D3970
	b _021D3A26
_021D3948:
	ldr r2, _021D3A38 @ =0x000010FC
	ldr r3, [r4, r2]
	ldr r2, _021D3A3C @ =0x00001DC4
	cmp r3, r2
	blo _021D3A34
	adds r3, r0, #0
	ldr r2, [sp, #4]
	subs r3, #0xc
	ldr r2, [r2, r3]
	cmp r2, #8
	bge _021D3A34
	ldr r2, [sp, #4]
	adds r3, r0, #4
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _021D3A26
	adds r2, r1, #1
	ldr r1, [sp, #4]
	str r2, [r1, r0]
	b _021D3A26
_021D3970:
	adds r2, r0, #0
	ldr r1, [sp, #4]
	subs r2, #0xc
	ldr r5, [r1, r2]
	adds r2, r0, #0
	subs r2, #8
	ldr r1, [r1, r2]
	movs r2, #1
	lsls r2, r2, #0xa
	adds r6, r1, r2
	adds r3, r0, #0
	ldr r1, [sp, #4]
	subs r3, #8
	str r6, [r1, r3]
	adds r3, r0, #0
	subs r3, #8
	ldr r3, [r1, r3]
	lsls r1, r2, #2
	cmp r3, r1
	blt _021D39BA
	movs r1, #0x10
	str r1, [sp, #0x10]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #4]
	movs r1, #0
	adds r3, #0xfc
	str r1, [r2, r3]
	ldr r3, [sp, #0x10]
	adds r3, #0xf8
	ldr r2, [r2, r3]
	ldr r3, [sp, #0x10]
	adds r6, r2, #1
	ldr r2, [sp, #4]
	adds r3, #0xf8
	str r6, [r2, r3]
	str r1, [r2, r0]
	b _021D39BE
_021D39BA:
	asrs r0, r3, #8
	str r0, [sp, #0x10]
_021D39BE:
	adds r6, r5, #1
	cmp r6, #8
	blt _021D39C6
	movs r6, #7
_021D39C6:
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0200316C
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_0200316C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsls r1, r6, #5
	adds r4, r0, r1
	adds r1, r0, #0
	adds r1, #8
	lsls r0, r5, #5
	adds r5, r1, r0
	ldr r0, [sp, #0x10]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
_021D39F2:
	adds r0, r7, #0
	adds r0, #0x10
	lsls r6, r0, #1
	ldrh r0, [r4, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r1, r6
	movs r2, #1
	bl FUN_0200393C
	ldrh r0, [r4, #8]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r1, r6
	movs r2, #1
	bl FUN_0200393C
	adds r7, r7, #1
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r7, #0x10
	blt _021D39F2
_021D3A26:
	movs r1, #0x46
	ldr r0, [sp, #4]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r2, r0, #1
	ldr r0, [sp, #4]
	str r2, [r0, r1]
_021D3A34:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3A38: .4byte 0x000010FC
_021D3A3C: .4byte 0x00001DC4
	thumb_func_end ov99_021D3930

	thumb_func_start ov99_021D3A40
ov99_021D3A40: @ 0x021D3A40
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4]
	adds r6, r4, #0
	adds r5, r0, #0
	adds r6, #8
	cmp r1, #4
	bhi _021D3B14
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3A5E: @ jump table
	.2byte _021D3A68 - _021D3A5E - 2 @ case 0
	.2byte _021D3A82 - _021D3A5E - 2 @ case 1
	.2byte _021D3AAA - _021D3A5E - 2 @ case 2
	.2byte _021D3AC8 - _021D3A5E - 2 @ case 3
	.2byte _021D3B04 - _021D3A5E - 2 @ case 4
_021D3A68:
	movs r1, #0
	movs r0, #3
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0x18
	subs r2, #0x10
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3B14
_021D3A82:
	movs r0, #0x19
	ldr r1, [r6]
	lsls r0, r0, #4
	cmp r1, r0
	bls _021D3B14
	movs r0, #3
	str r0, [sp]
	movs r0, #0x20
	adds r1, r0, #0
	subs r1, #0x30
	movs r2, #0
	movs r3, #0x3d
	bl FUN_0200AAE0
	movs r0, #0
	str r0, [r6]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3B14
_021D3AAA:
	movs r0, #3
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D3B14
	ldr r0, _021D3B20 @ =0x00001105
	ldrb r0, [r5, r0]
	cmp r0, #7
	bhs _021D3AC2
	movs r0, #3
	str r0, [r4]
	b _021D3B14
_021D3AC2:
	movs r0, #4
	str r0, [r4]
	b _021D3B14
_021D3AC8:
	movs r1, #4
	ldrsh r2, [r4, r1]
	adds r2, r2, #1
	strh r2, [r4, #4]
	ldrsh r1, [r4, r1]
	cmp r1, #0x1e
	ble _021D3B14
	movs r3, #0
	ldr r1, _021D3B20 @ =0x00001105
	strh r3, [r4, #4]
	ldrb r1, [r5, r1]
	movs r2, #3
	bl ov99_021D439C
	ldr r0, _021D3B20 @ =0x00001105
	movs r3, #0x3d
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	movs r1, #0
	movs r0, #3
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0x20
	subs r2, #0x10
	bl FUN_0200AAE0
	movs r0, #1
	str r0, [r4]
	b _021D3B14
_021D3B04:
	ldr r0, _021D3B24 @ =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3B28 @ =0x000012CF
	cmp r1, r0
	blo _021D3B14
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D3B14:
	ldr r0, [r6]
	adds r0, r0, #1
	str r0, [r6]
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D3B20: .4byte 0x00001105
_021D3B24: .4byte 0x000010FC
_021D3B28: .4byte 0x000012CF
	thumb_func_end ov99_021D3A40

	thumb_func_start ov99_021D3B2C
ov99_021D3B2C: @ 0x021D3B2C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4]
	adds r6, r4, #0
	adds r5, r0, #0
	adds r6, #8
	cmp r1, #4
	bhi _021D3C00
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3B4A: @ jump table
	.2byte _021D3B54 - _021D3B4A - 2 @ case 0
	.2byte _021D3B6E - _021D3B4A - 2 @ case 1
	.2byte _021D3B96 - _021D3B4A - 2 @ case 2
	.2byte _021D3BB4 - _021D3B4A - 2 @ case 3
	.2byte _021D3BF0 - _021D3B4A - 2 @ case 4
_021D3B54:
	movs r1, #0
	movs r0, #3
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0x18
	subs r2, #0x10
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3C00
_021D3B6E:
	movs r0, #0x4b
	ldr r1, [r6]
	lsls r0, r0, #2
	cmp r1, r0
	bls _021D3C00
	movs r0, #3
	str r0, [sp]
	movs r0, #0x20
	adds r1, r0, #0
	subs r1, #0x30
	movs r2, #0
	movs r3, #0x3d
	bl FUN_0200AAE0
	movs r0, #0
	str r0, [r6]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3C00
_021D3B96:
	movs r0, #3
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D3C00
	ldr r0, _021D3C0C @ =0x00001105
	ldrb r0, [r5, r0]
	cmp r0, #0xa
	bhs _021D3BAE
	movs r0, #3
	str r0, [r4]
	b _021D3C00
_021D3BAE:
	movs r0, #4
	str r0, [r4]
	b _021D3C00
_021D3BB4:
	movs r1, #4
	ldrsh r2, [r4, r1]
	adds r2, r2, #1
	strh r2, [r4, #4]
	ldrsh r1, [r4, r1]
	cmp r1, #0x1e
	ble _021D3C00
	movs r3, #0
	ldr r1, _021D3C0C @ =0x00001105
	strh r3, [r4, #4]
	ldrb r1, [r5, r1]
	movs r2, #3
	bl ov99_021D439C
	ldr r0, _021D3C0C @ =0x00001105
	movs r3, #0x3d
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	movs r1, #0
	movs r0, #3
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0x20
	subs r2, #0x10
	bl FUN_0200AAE0
	movs r0, #1
	str r0, [r4]
	b _021D3C00
_021D3BF0:
	ldr r0, _021D3C10 @ =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3C14 @ =0x000012CF
	cmp r1, r0
	blo _021D3C00
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D3C00:
	ldr r0, [r6]
	adds r0, r0, #1
	str r0, [r6]
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D3C0C: .4byte 0x00001105
_021D3C10: .4byte 0x000010FC
_021D3C14: .4byte 0x000012CF
	thumb_func_end ov99_021D3B2C

	thumb_func_start ov99_021D3C18
ov99_021D3C18: @ 0x021D3C18
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r5, #0
	adds r6, r0, #0
	adds r4, #8
	cmp r1, #4
	bhi _021D3CEC
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3C36: @ jump table
	.2byte _021D3C40 - _021D3C36 - 2 @ case 0
	.2byte _021D3C5A - _021D3C36 - 2 @ case 1
	.2byte _021D3C70 - _021D3C36 - 2 @ case 2
	.2byte _021D3CCC - _021D3C36 - 2 @ case 3
	.2byte _021D3CDC - _021D3C36 - 2 @ case 4
_021D3C40:
	movs r1, #0
	movs r0, #3
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #0x18
	subs r2, #0x10
	movs r3, #0x3d
	bl FUN_0200AAE0
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D3CEC
_021D3C5A:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	cmp r0, #0x1b
	bls _021D3CEC
	movs r0, #0
	str r0, [r4]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D3CEC
_021D3C70:
	ldrb r1, [r4, #4]
	cmp r1, #3
	blo _021D3C8E
	movs r0, #3
	str r0, [sp]
	movs r0, #0x20
	adds r1, r0, #0
	subs r1, #0x30
	movs r2, #0
	movs r3, #0x3d
	bl FUN_0200AAE0
	movs r0, #4
	str r0, [r5]
	b _021D3CEC
_021D3C8E:
	movs r3, #1
	tst r1, r3
	ldr r1, _021D3CF4 @ =0x00001105
	beq _021D3CA8
	ldrb r1, [r6, r1]
	movs r2, #2
	bl ov99_021D439C
	adds r0, r4, #0
	movs r1, #8
	bl ov99_021D3CF8
	b _021D3CB8
_021D3CA8:
	ldrb r1, [r6, r1]
	movs r2, #3
	bl ov99_021D439C
	adds r0, r4, #0
	movs r1, #4
	bl ov99_021D3CF8
_021D3CB8:
	ldr r0, _021D3CF4 @ =0x00001105
	ldrb r1, [r6, r0]
	adds r1, r1, #1
	strb r1, [r6, r0]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	movs r0, #3
	str r0, [r5]
	b _021D3CEC
_021D3CCC:
	adds r0, r4, #0
	bl ov99_021D3D50
	cmp r0, #1
	bne _021D3CEC
	movs r0, #1
	str r0, [r5]
	b _021D3CEC
_021D3CDC:
	movs r0, #3
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D3CEC
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D3CEC:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D3CF4: .4byte 0x00001105
	thumb_func_end ov99_021D3C18

	thumb_func_start ov99_021D3CF8
ov99_021D3CF8: @ 0x021D3CF8
	push {r3, r4, lr}
	sub sp, #4
	adds r3, r0, #0
	str r1, [r3, #8]
	movs r0, #0x10
	strb r0, [r3, #5]
	movs r0, #0
	strb r0, [r3, #6]
	cmp r1, #4
	bne _021D3D2C
	movs r0, #6
	ldrsb r0, [r3, r0]
	movs r4, #5
	movs r1, #4
	str r0, [sp]
	ldrsb r3, [r3, r4]
	ldr r0, _021D3D4C @ =0x04000050
	movs r2, #0x28
	blx FUN_020BF55C
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	add sp, #4
	pop {r3, r4, pc}
_021D3D2C:
	movs r0, #6
	ldrsb r0, [r3, r0]
	movs r4, #5
	movs r1, #8
	str r0, [sp]
	ldrsb r3, [r3, r4]
	ldr r0, _021D3D4C @ =0x04000050
	movs r2, #0x24
	blx FUN_020BF55C
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021D3D4C: .4byte 0x04000050
	thumb_func_end ov99_021D3CF8

	thumb_func_start ov99_021D3D50
ov99_021D3D50: @ 0x021D3D50
	push {r4, lr}
	movs r1, #5
	ldrsb r2, [r0, r1]
	subs r2, r2, #1
	strb r2, [r0, #5]
	ldrsb r1, [r0, r1]
	cmp r1, #0x10
	bge _021D3D68
	movs r1, #6
	ldrsb r1, [r0, r1]
	adds r1, r1, #1
	strb r1, [r0, #6]
_021D3D68:
	movs r1, #5
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _021D3D74
	movs r1, #0
	strb r1, [r0, #5]
_021D3D74:
	movs r1, #6
	ldrsb r1, [r0, r1]
	cmp r1, #0x10
	ble _021D3D80
	movs r1, #0x10
	strb r1, [r0, #6]
_021D3D80:
	movs r1, #6
	movs r2, #5
	ldrsb r3, [r0, r1]
	ldrsb r4, [r0, r2]
	lsls r3, r3, #8
	orrs r4, r3
	ldr r3, _021D3DDC @ =0x04000052
	strh r4, [r3]
	ldrsb r2, [r0, r2]
	cmp r2, #0
	bne _021D3DD8
	ldrsb r1, [r0, r1]
	cmp r1, #0x10
	bne _021D3DD8
	ldr r0, [r0, #8]
	cmp r0, #4
	bne _021D3DBC
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	movs r0, #2
	movs r1, #3
	bl FUN_02019060
	movs r0, #3
	movs r1, #2
	bl FUN_02019060
	b _021D3DD4
_021D3DBC:
	movs r0, #3
	movs r1, #0
	bl FUN_02019120
	movs r0, #2
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	adds r1, r0, #0
	bl FUN_02019060
_021D3DD4:
	movs r0, #1
	pop {r4, pc}
_021D3DD8:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D3DDC: .4byte 0x04000052
	thumb_func_end ov99_021D3D50

	thumb_func_start ov99_021D3DE0
ov99_021D3DE0: @ 0x021D3DE0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D3DF8
	cmp r0, #1
	beq _021D3E16
	cmp r0, #2
	beq _021D3E58
	b _021D3E66
_021D3DF8:
	movs r0, #0x1e
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4b
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3E66
_021D3E16:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D3E66
	ldr r0, _021D3E6C @ =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3E70 @ =0x00002760
	cmp r1, r0
	bhi _021D3E38
	ldr r0, _021D3E74 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _021D3E38
	movs r0, #8
	tst r0, r1
	beq _021D3E66
_021D3E38:
	movs r0, #0x2d
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4b
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D3E66
_021D3E58:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D3E66
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D3E66:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021D3E6C: .4byte 0x000010FC
_021D3E70: .4byte 0x00002760
_021D3E74: .4byte 0x021BF67C
	thumb_func_end ov99_021D3DE0

	thumb_func_start ov99_021D3E78
ov99_021D3E78: @ 0x021D3E78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	str r1, [sp, #0x14]
	movs r0, #0x4b
	movs r1, #0x38
	adds r5, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	beq _021D3F2C
	ldr r0, [sp, #0x14]
	str r6, [r4, #0x20]
	str r0, [r4]
	adds r0, #0xc0
	str r0, [r4, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	str r5, [r4, #8]
	str r0, [r4, #0x2c]
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x4b
	bl FUN_02023790
	str r0, [r4, #0x30]
	movs r0, #0x4b
	movs r1, #1
	bl FUN_0201A778
	str r0, [r4, #0x24]
	movs r3, #0
	lsls r2, r5, #0x18
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, [r4, #0x24]
	adds r0, r6, #0
	lsrs r2, r2, #0x18
	bl FUN_0201A7E8
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0x24]
	bl FUN_0201A9F4
	ldr r0, [r4, #0x24]
	bl FUN_0201A954
	movs r0, #0x4b
	movs r1, #1
	bl FUN_0201A778
	str r0, [r4, #0x28]
	movs r3, #0
	lsls r2, r5, #0x18
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, [r4, #0x28]
	adds r0, r6, #0
	lsrs r2, r2, #0x18
	bl FUN_0201A7E8
	ldr r0, _021D3F34 @ =ov99_021D4104
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200DA3C
	str r0, [r4, #0x34]
_021D3F2C:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3F34: .4byte ov99_021D4104
	thumb_func_end ov99_021D3E78

	thumb_func_start ov99_021D3F38
ov99_021D3F38: @ 0x021D3F38
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D3F46
	bl FUN_0200DA58
_021D3F46:
	ldr r0, [r4, #0x30]
	bl FUN_020237BC
	ldr r0, [r4, #0x24]
	bl FUN_0201A8FC
	ldr r0, [r4, #0x28]
	bl FUN_0201A8FC
	ldr r0, [r4, #0x24]
	bl FUN_020181C4
	ldr r0, [r4, #0x28]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov99_021D3F38

	thumb_func_start ov99_021D3F6C
ov99_021D3F6C: @ 0x021D3F6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r2, [r5, #0x1c]
	str r1, [sp, #0x18]
	cmp r2, #2
	bne _021D3F80
	add sp, #0x1c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3F80:
	ldr r1, [r5, #4]
	ldr r0, [sp, #0x18]
	adds r6, r1, r0
	cmp r2, #0
	bne _021D4060
	ldr r2, [r5, #0xc]
	movs r0, #6
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _021D40F4 @ =0x021D4CE6
	ldrh r0, [r0, r1]
	cmp r6, r0
	blt _021D4060
	ldr r2, _021D40F8 @ =0x021D4CE4
	ldr r0, [r5, #0x2c]
	ldrh r1, [r2, r1]
	ldr r2, [r5, #0x30]
	bl FUN_0200B1B8
	ldr r1, [r5, #0xc]
	movs r0, #6
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _021D40FC @ =0x021D4CE8
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _021D3FCA
	movs r0, #0
	ldr r1, [r5, #0x30]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #1
	lsls r1, r1, #8
	subs r0, r1, r0
	lsrs r7, r0, #1
	b _021D3FCC
_021D3FCA:
	movs r7, #0x20
_021D3FCC:
	ldr r1, [r5, #0xc]
	movs r0, #6
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _021D40F4 @ =0x021D4CE6
	movs r1, #0
	ldrh r0, [r0, r2]
	adds r3, r7, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4100 @ =0x00010200
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x30]
	bl FUN_0201D78C
	cmp r4, #0xf0
	ble _021D4050
	ldr r0, [r5, #0x28]
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4100 @ =0x00010200
	adds r3, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x30]
	bl FUN_0201D78C
	ldr r1, [r5, #0x28]
	subs r4, #0xf0
	ldrb r2, [r1, #7]
	movs r0, #0x10
	subs r3, r0, r4
	adds r4, r0, #0
	subs r0, r0, r3
	lsls r2, r2, #0x13
	lsrs r2, r2, #0x10
	str r2, [sp]
	ldrb r2, [r1, #8]
	lsls r0, r0, #0x10
	lsls r3, r3, #0x10
	lsls r2, r2, #0x13
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	adds r4, #0xf0
	str r4, [sp, #0x10]
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x24]
	ldr r1, [r1, #0xc]
	lsrs r3, r3, #0x10
	bl FUN_0201ADDC
_021D4050:
	movs r1, #1
	str r1, [r5, #0x18]
	ldr r0, [r5, #0xc]
	adds r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0xec
	blo _021D4060
	str r1, [r5, #0x1c]
_021D4060:
	str r6, [r5, #4]
	ldr r0, [r5, #0x10]
	movs r1, #6
	adds r2, r0, #0
	ldr r0, _021D40F4 @ =0x021D4CE6
	muls r2, r1, r2
	ldrh r3, [r0, r2]
	ldr r2, [r5]
	adds r0, r3, #0
	adds r0, #0x10
	cmp r2, r0
	ble _021D40E6
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf0
	bgt _021D4098
	adds r1, #0xfa
	str r1, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r1, #0
	lsls r3, r3, #0x10
	ldr r0, [r5, #0x24]
	adds r2, r1, #0
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	b _021D40D4
_021D4098:
	adds r1, r3, #0
	subs r1, #0xf0
	movs r0, #0x10
	subs r4, r0, r1
	adds r0, #0xf0
	str r0, [sp]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r1, #0
	lsls r3, r3, #0x10
	ldr r0, [r5, #0x24]
	adds r2, r1, #0
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	movs r1, #0
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
_021D40D4:
	movs r0, #1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	adds r0, r0, #1
	str r0, [r5, #0x10]
	cmp r0, #0xed
	blo _021D40E6
	movs r0, #2
	str r0, [r5, #0x1c]
_021D40E6:
	ldr r1, [r5]
	ldr r0, [sp, #0x18]
	adds r0, r1, r0
	str r0, [r5]
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D40F4: .4byte 0x021D4CE6
_021D40F8: .4byte 0x021D4CE4
_021D40FC: .4byte 0x021D4CE8
_021D4100: .4byte 0x00010200
	thumb_func_end ov99_021D3F6C

	thumb_func_start ov99_021D4104
ov99_021D4104: @ 0x021D4104
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021D4118
	ldr r0, [r4, #0x24]
	bl FUN_0201ACCC
	movs r0, #0
	str r0, [r4, #0x18]
_021D4118:
	ldr r1, [r4, #8]
	ldr r3, [r4]
	lsls r1, r1, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r4, #0x20]
	lsrs r1, r1, #0x18
	movs r2, #3
	lsrs r3, r3, #0x18
	bl FUN_02019184
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov99_021D4104

	thumb_func_start ov99_021D4130
ov99_021D4130: @ 0x021D4130
	movs r0, #0xec
	bx lr
	thumb_func_end ov99_021D4130

	thumb_func_start ov99_021D4134
ov99_021D4134: @ 0x021D4134
	push {r4, r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0x38
	ldr r3, _021D4168 @ =0x021D5434
	muls r0, r1, r0
	ldr r5, _021D416C @ =0x00000F6C
	movs r2, #0
	adds r3, r3, r0
_021D4144:
	adds r7, r3, #0
	ldm r7!, {r0, r1}
	adds r6, r4, r5
	stm r6!, {r0, r1}
	ldm r7!, {r0, r1}
	stm r6!, {r0, r1}
	ldm r7!, {r0, r1}
	stm r6!, {r0, r1}
	ldr r0, [r7]
	adds r2, r2, #1
	str r0, [r6]
	adds r3, #0x1c
	adds r4, #0x1c
	cmp r2, #2
	blt _021D4144
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021D4168: .4byte 0x021D5434
_021D416C: .4byte 0x00000F6C
	thumb_func_end ov99_021D4134

	thumb_func_start ov99_021D4170
ov99_021D4170: @ 0x021D4170
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _021D424C @ =0x00001104
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #0
	ble _021D4248
	ldr r0, [sp]
	ldr r1, _021D4250 @ =0x00000F6C
	str r0, [sp, #4]
	adds r5, r0, r1
	adds r0, #0x6c
	str r0, [sp, #4]
_021D4190:
	movs r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0x10
	ble _021D419C
	bl FUN_02022974
_021D419C:
	movs r4, #0
	ldrsh r0, [r5, r4]
	cmp r0, #0
	ble _021D41F0
	ldr r6, [sp, #4]
_021D41A6:
	ldr r1, [r5, #8]
	ldr r3, [r5, #4]
	adds r2, r1, #0
	muls r2, r4, r2
	subs r1, r3, r2
	ldr r2, [r5, #0x10]
	ldr r7, [r5, #0xc]
	adds r3, r2, #0
	muls r3, r4, r3
	subs r2, r7, r3
	ldr r3, [r5, #0x14]
	adds r0, r6, #0
	mov ip, r3
	ldr r3, [r5, #0x18]
	adds r7, r3, #0
	muls r7, r4, r7
	mov r3, ip
	subs r3, r3, r7
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r6, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r6, #0
	movs r1, #1
	bl FUN_02017348
	movs r0, #0
	ldrsh r0, [r5, r0]
	adds r4, r4, #1
	adds r6, #0x78
	cmp r4, r0
	blt _021D41A6
_021D41F0:
	cmp r4, #0x10
	bge _021D422A
	movs r0, #0x78
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [sp, #4]
	movs r7, #0
	adds r6, r0, r1
_021D4200:
	ldr r2, _021D4254 @ =0xFFFC0000
	ldr r3, _021D4258 @ =0xFFFCE000
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r6, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r6, #0
	movs r1, #0
	bl FUN_02017348
	adds r4, r4, #1
	adds r6, #0x78
	cmp r4, #0x10
	blt _021D4200
_021D422A:
	movs r1, #0x1e
	ldr r0, [sp, #4]
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021D424C @ =0x00001104
	adds r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp]
	adds r5, #0x1c
	ldrb r1, [r0, r1]
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _021D4190
_021D4248:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D424C: .4byte 0x00001104
_021D4250: .4byte 0x00000F6C
_021D4254: .4byte 0xFFFC0000
_021D4258: .4byte 0xFFFCE000
	thumb_func_end ov99_021D4170

	thumb_func_start ov99_021D425C
ov99_021D425C: @ 0x021D425C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #4]
	ldr r1, _021D4394 @ =0x00001104
	str r0, [sp]
	ldrb r0, [r0, r1]
	movs r7, #0
	str r7, [sp, #0x18]
	cmp r0, #0
	bgt _021D4272
	b _021D438C
_021D4272:
	ldr r0, [sp]
	ldr r1, _021D4398 @ =0x00000F6C
	str r0, [sp, #0x10]
	adds r4, r0, r1
	adds r0, #0x6c
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	lsls r1, r0, #4
	ldr r0, [sp]
	adds r0, r0, r1
	str r0, [sp, #0xc]
_021D4288:
	movs r0, #0
	ldrsh r5, [r4, r0]
	movs r0, #2
	ldrsh r6, [r4, r0]
	ldr r1, [r4, #8]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	ldr r1, [r4, #0x10]
	str r0, [sp, #0x24]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	ldr r1, [r4, #0x18]
	str r0, [sp, #0x20]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	str r0, [sp, #0x1c]
	movs r0, #0
	str r0, [sp, #0x14]
	cmp r5, #0
	ble _021D436C
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	adds r5, r0, #0
_021D42C8:
	ldr r0, [sp, #8]
	add r1, sp, #0x30
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl FUN_02017358
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x24]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _021D433A
	movs r0, #0
	ldrsh r7, [r4, r0]
	ldr r2, [r4, #8]
	adds r0, r5, #0
	adds r3, r2, #0
	muls r3, r7, r3
	subs r1, r1, r3
	ldr r3, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	adds r6, r3, r2
	ldr r2, [r4, #0x10]
	adds r3, r2, #0
	muls r3, r7, r3
	subs r2, r6, r3
	ldr r6, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	adds r3, r6, r3
	mov ip, r3
	ldr r3, [r4, #0x18]
	adds r6, r3, #0
	muls r6, r7, r6
	mov r3, ip
	subs r3, r3, r6
	bl FUN_02017350
	movs r0, #0
	ldr r1, [sp, #4]
	mvns r0, r0
	cmp r1, r0
	beq _021D4336
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021D4336
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x54
	blx FUN_020C4CF4
	ldr r1, [sp, #0xc]
	adds r0, r5, #0
	ldr r1, [r1, #0x34]
	blx FUN_020AE608
_021D4336:
	movs r7, #1
	b _021D434C
_021D433A:
	ldr r3, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	ldr r6, [sp, #0x28]
	adds r2, r3, r2
	ldr r3, [sp, #0x1c]
	adds r0, r5, #0
	adds r3, r6, r3
	bl FUN_02017350
_021D434C:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02017348
	ldr r0, [sp, #8]
	adds r5, #0x78
	adds r0, #0x78
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	blt _021D42C8
_021D436C:
	movs r1, #0x1e
	ldr r0, [sp, #0x10]
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, _021D4394 @ =0x00001104
	adds r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp]
	adds r4, #0x1c
	ldrb r1, [r0, r1]
	ldr r0, [sp, #0x18]
	cmp r0, r1
	bge _021D438C
	b _021D4288
_021D438C:
	adds r0, r7, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021D4394: .4byte 0x00001104
_021D4398: .4byte 0x00000F6C
	thumb_func_end ov99_021D425C

	thumb_func_start ov99_021D439C
ov99_021D439C: @ 0x021D439C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [r5, #8]
	adds r6, r1, #0
	adds r7, r2, #0
	str r0, [sp, #0x10]
	cmp r3, #0
	beq _021D43B4
	cmp r3, #1
	beq _021D43D4
	b _021D43F2
_021D43B4:
	cmp r6, #0xa
	blo _021D43BC
	bl FUN_02022974
_021D43BC:
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	bne _021D43CC
	ldr r1, _021D44B8 @ =0x021D5394
	lsls r0, r6, #4
	adds r4, r1, r0
	b _021D43F2
_021D43CC:
	ldr r1, _021D44BC @ =0x021D52F4
	lsls r0, r6, #4
	adds r4, r1, r0
	b _021D43F2
_021D43D4:
	cmp r6, #0xa
	blo _021D43DC
	bl FUN_02022974
_021D43DC:
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	bne _021D43EC
	ldr r1, _021D44C0 @ =0x021D5274
	lsls r0, r6, #4
	adds r4, r1, r0
	b _021D43F2
_021D43EC:
	ldr r1, _021D44C4 @ =0x021D52B4
	lsls r0, r6, #4
	adds r4, r1, r0
_021D43F2:
	ldr r0, _021D44C8 @ =0x000010F8
	ldrh r1, [r4, #4]
	ldr r0, [r5, r0]
	add r2, sp, #0x14
	movs r3, #0x4b
	bl FUN_020071EC
	ldr r1, [sp, #0x14]
	adds r6, r0, #0
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	blx FUN_020C2C54
	blx FUN_020C096C
	cmp r7, #3
	bne _021D4426
	ldr r0, [sp, #0x14]
	movs r1, #6
	movs r2, #2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	blx FUN_020C0A0C
	b _021D4434
_021D4426:
	ldr r0, [sp, #0x14]
	movs r1, #1
	lsls r1, r1, #0xe
	ldr r0, [r0, #0xc]
	lsrs r2, r1, #1
	blx FUN_020C0A0C
_021D4434:
	blx FUN_020C0A7C
	adds r0, r6, #0
	bl FUN_020181C4
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	movs r2, #2
	adds r3, r1, #0
	bl FUN_020038B0
	movs r3, #0
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r0, [r5, #0xc]
	movs r2, #2
	bl FUN_020038B0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D44C8 @ =0x000010F8
	ldrh r1, [r4]
	ldr r0, [r5, r0]
	ldr r2, [r5, #8]
	adds r3, r7, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D44C8 @ =0x000010F8
	ldrh r1, [r4, #2]
	ldr r0, [r5, r0]
	ldr r2, [r5, #8]
	adds r3, r7, #0
	bl FUN_0200710C
	movs r3, #6
	lsls r1, r7, #0x18
	ldrsh r3, [r4, r3]
	ldr r0, [sp, #0x10]
	lsrs r1, r1, #0x18
	movs r2, #0
	bl FUN_02019184
	movs r3, #8
	lsls r1, r7, #0x18
	ldrsh r3, [r4, r3]
	ldr r0, [sp, #0x10]
	lsrs r1, r1, #0x18
	movs r2, #3
	bl FUN_02019184
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D44B8: .4byte 0x021D5394
_021D44BC: .4byte 0x021D52F4
_021D44C0: .4byte 0x021D5274
_021D44C4: .4byte 0x021D52B4
_021D44C8: .4byte 0x000010F8
	thumb_func_end ov99_021D439C

	thumb_func_start ov99_021D44CC
ov99_021D44CC: @ 0x021D44CC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r1, _021D46BC @ =0x000010F4
	adds r5, r0, #0
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021D44DC
	b _021D46B8
_021D44DC:
	adds r0, r1, #0
	adds r0, #0x24
	ldrsh r2, [r5, r0]
	movs r0, #0
	mvns r0, r0
	cmp r2, r0
	beq _021D44EC
	b _021D466C
_021D44EC:
	adds r0, r1, #0
	adds r0, #0x20
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _021D4504
	adds r0, r1, #0
	adds r0, #0x20
	ldrsh r0, [r5, r0]
	adds r1, #0x20
	subs r0, r0, #1
	strh r0, [r5, r1]
	b _021D466C
_021D4504:
	ldr r0, [r6]
	bl FUN_02021F98
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, _021D46BC @ =0x000010F4
	ldr r0, [r0]
	cmp r0, #0
	bne _021D4590
	ldr r0, [r5, r1]
	adds r1, #0x22
	ldrsh r1, [r5, r1]
	movs r7, #0x19
	lsls r7, r7, #0x16
	lsls r1, r1, #7
	adds r0, r0, r1
	movs r1, #0x3a
	lsls r1, r1, #4
	adds r2, r7, r1
	ldr r1, [r4, #4]
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C4B68
	ldr r1, _021D46BC @ =0x000010F4
	ldr r0, [r5, r1]
	adds r1, #0x22
	ldrsh r1, [r5, r1]
	lsls r1, r1, #7
	adds r1, #0x20
	adds r0, r0, r1
	movs r1, #0xf
	lsls r1, r1, #6
	adds r2, r7, r1
	ldr r1, [r4, #4]
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C4B68
	ldr r1, _021D46BC @ =0x000010F4
	ldr r0, [r5, r1]
	adds r1, #0x22
	ldrsh r1, [r5, r1]
	lsls r1, r1, #7
	adds r1, #0x40
	adds r0, r0, r1
	movs r1, #0x4a
	lsls r1, r1, #4
	adds r2, r7, r1
	ldr r1, [r4, #4]
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C4B68
	ldr r1, _021D46BC @ =0x000010F4
	ldr r0, [r5, r1]
	adds r1, #0x22
	ldrsh r1, [r5, r1]
	lsls r1, r1, #7
	adds r1, #0x60
	adds r0, r0, r1
	movs r1, #0x13
	lsls r1, r1, #6
	adds r2, r7, r1
	ldr r1, [r4, #4]
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C4B68
	b _021D4608
_021D4590:
	ldr r0, [r5, r1]
	adds r1, #0x22
	ldrsh r1, [r5, r1]
	movs r7, #0x19
	lsls r7, r7, #0x16
	lsls r1, r1, #7
	adds r0, r0, r1
	movs r1, #0x8a
	lsls r1, r1, #4
	adds r2, r7, r1
	ldr r1, [r4, #4]
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C4B68
	ldr r1, _021D46BC @ =0x000010F4
	ldr r0, [r5, r1]
	adds r1, #0x22
	ldrsh r1, [r5, r1]
	lsls r1, r1, #7
	adds r1, #0x20
	adds r0, r0, r1
	movs r1, #0x23
	lsls r1, r1, #6
	adds r2, r7, r1
	ldr r1, [r4, #4]
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C4B68
	ldr r1, _021D46BC @ =0x000010F4
	ldr r0, [r5, r1]
	adds r1, #0x22
	ldrsh r1, [r5, r1]
	lsls r1, r1, #7
	adds r1, #0x40
	adds r0, r0, r1
	movs r1, #0x9a
	lsls r1, r1, #4
	adds r2, r7, r1
	ldr r1, [r4, #4]
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C4B68
	ldr r1, _021D46BC @ =0x000010F4
	ldr r0, [r5, r1]
	adds r1, #0x22
	ldrsh r1, [r5, r1]
	lsls r1, r1, #7
	adds r1, #0x60
	adds r0, r0, r1
	movs r1, #0x27
	lsls r1, r1, #6
	adds r2, r7, r1
	ldr r1, [r4, #4]
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C4B68
_021D4608:
	ldr r0, _021D46C0 @ =0x00001116
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bne _021D465C
	adds r0, r0, #4
	ldrsh r0, [r5, r0]
	movs r1, #3
	blx FUN_020E1F6C
	cmp r1, #0
	bne _021D464A
	bl FUN_0201D2E8
	movs r1, #1
	tst r0, r1
	beq _021D4642
	bl FUN_0201D2E8
	movs r1, #0xa
	blx FUN_020E1F6C
	ldr r0, _021D46C4 @ =0x00001114
	strh r1, [r5, r0]
	adds r1, r0, #6
	ldrsh r1, [r5, r1]
	adds r0, r0, #6
	adds r1, r1, #1
	strh r1, [r5, r0]
	b _021D4662
_021D4642:
	ldr r0, _021D46C4 @ =0x00001114
	movs r1, #0x28
	strh r1, [r5, r0]
	b _021D4662
_021D464A:
	ldr r0, _021D46C4 @ =0x00001114
	movs r1, #0x28
	strh r1, [r5, r0]
	adds r1, r0, #6
	ldrsh r1, [r5, r1]
	adds r0, r0, #6
	adds r1, r1, #1
	strh r1, [r5, r0]
	b _021D4662
_021D465C:
	movs r1, #1
	subs r0, r0, #2
	strh r1, [r5, r0]
_021D4662:
	ldr r1, _021D46C0 @ =0x00001116
	movs r0, #1
	ldrsh r2, [r5, r1]
	eors r0, r2
	strh r0, [r5, r1]
_021D466C:
	adds r0, r6, #0
	bl FUN_0200D3B8
	cmp r0, #0
	bne _021D46B8
	ldr r0, _021D46C8 @ =0x00001118
	movs r1, #0
	ldrsh r2, [r5, r0]
	mvns r1, r1
	cmp r2, r1
	beq _021D46AE
	adds r1, r2, #1
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x10
	ble _021D46A4
	bl FUN_0201D2E8
	movs r1, #5
	blx FUN_020E1F6C
	cmp r1, #0
	bne _021D46A4
	movs r1, #1
	ldr r0, _021D46C8 @ =0x00001118
	subs r2, r1, #2
	strh r2, [r5, r0]
	b _021D46A6
_021D46A4:
	movs r1, #0
_021D46A6:
	adds r0, r6, #0
	bl FUN_0200D364
	pop {r3, r4, r5, r6, r7, pc}
_021D46AE:
	movs r1, #0
	strh r1, [r5, r0]
	adds r0, r6, #0
	bl FUN_0200D364
_021D46B8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D46BC: .4byte 0x000010F4
_021D46C0: .4byte 0x00001116
_021D46C4: .4byte 0x00001114
_021D46C8: .4byte 0x00001118
	thumb_func_end ov99_021D44CC
	@ 0x021D46CC
