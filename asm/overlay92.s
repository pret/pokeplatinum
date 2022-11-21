
	thumb_func_start ov92_021D0D80
ov92_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	adds r4, r0, #0
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
	ldr r0, _021D0E88 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D0E8C @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #3
	movs r1, #0x32
	lsls r2, r2, #7
	bl FUN_02017FC8
	ldr r1, _021D0E90 @ =0x0000C32C
	adds r0, r4, #0
	movs r2, #0x32
	bl FUN_0200681C
	ldr r2, _021D0E90 @ =0x0000C32C
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020D5124
	movs r0, #0x32
	str r0, [r5]
	ldr r0, _021D0E94 @ =0x020E4C44
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D0DDE
	movs r1, #1
	b _021D0DE0
_021D0DDE:
	movs r1, #0
_021D0DE0:
	ldr r0, _021D0E98 @ =0x0000C2F0
	str r1, [r5, r0]
	adds r0, r4, #0
	bl FUN_02006840
	adds r4, r0, #0
	bl FUN_0202C878
	str r0, [r5, #4]
	bl FUN_0202C8C0
	ldr r1, _021D0E9C @ =0x0000C314
	str r0, [r5, r1]
	ldr r0, [r5, #4]
	bl FUN_0202C8C4
	ldr r1, _021D0EA0 @ =0x0000C318
	str r0, [r5, r1]
	ldr r0, [r5, #4]
	bl FUN_0202C990
	ldr r1, _021D0EA4 @ =0x0000C324
	str r0, [r5, r1]
	adds r0, r4, #0
	bl FUN_02025E44
	str r0, [r5, #8]
	bl ov92_021D14F0
	bl ov92_021D1510
	ldr r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201CAF4
	ldr r0, [r5]
	bl FUN_02018340
	ldr r1, _021D0EA8 @ =0x0000C010
	str r0, [r5, r1]
	bl FUN_0201FFD0
	bl FUN_0201D710
	ldr r2, [r5]
	movs r0, #8
	movs r1, #0x40
	bl FUN_0200B368
	ldr r1, _021D0EAC @ =0x0000C070
	str r0, [r5, r1]
	ldr r0, [r5]
	bl FUN_020203AC
	ldr r1, _021D0EB0 @ =0x0000C2CC
	str r0, [r5, r1]
	movs r0, #0
	adds r1, #0x1c
	str r0, [r5, r1]
	ldr r0, _021D0EB4 @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	adds r0, r5, #0
	bl ov92_021D1530
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D0E88: .4byte 0xFFFFE0FF
_021D0E8C: .4byte 0x04001000
_021D0E90: .4byte 0x0000C32C
_021D0E94: .4byte 0x020E4C44
_021D0E98: .4byte 0x0000C2F0
_021D0E9C: .4byte 0x0000C314
_021D0EA0: .4byte 0x0000C318
_021D0EA4: .4byte 0x0000C324
_021D0EA8: .4byte 0x0000C010
_021D0EAC: .4byte 0x0000C070
_021D0EB0: .4byte 0x0000C2CC
_021D0EB4: .4byte 0x021BF6DC
	thumb_func_end ov92_021D0D80

	thumb_func_start ov92_021D0EB8
ov92_021D0EB8: @ 0x021D0EB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	movs r7, #0
	cmp r1, #0x12
	bls _021D0ECE
	b _021D142C
_021D0ECE:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0EDA: @ jump table
	.2byte _021D0F00 - _021D0EDA - 2 @ case 0
	.2byte _021D0F72 - _021D0EDA - 2 @ case 1
	.2byte _021D0F80 - _021D0EDA - 2 @ case 2
	.2byte _021D0FA0 - _021D0EDA - 2 @ case 3
	.2byte _021D0FC4 - _021D0EDA - 2 @ case 4
	.2byte _021D100E - _021D0EDA - 2 @ case 5
	.2byte _021D1036 - _021D0EDA - 2 @ case 6
	.2byte _021D106C - _021D0EDA - 2 @ case 7
	.2byte _021D10A6 - _021D0EDA - 2 @ case 8
	.2byte _021D1100 - _021D0EDA - 2 @ case 9
	.2byte _021D114E - _021D0EDA - 2 @ case 10
	.2byte _021D11A4 - _021D0EDA - 2 @ case 11
	.2byte _021D11B6 - _021D0EDA - 2 @ case 12
	.2byte _021D11DE - _021D0EDA - 2 @ case 13
	.2byte _021D1278 - _021D0EDA - 2 @ case 14
	.2byte _021D12F8 - _021D0EDA - 2 @ case 15
	.2byte _021D13D4 - _021D0EDA - 2 @ case 16
	.2byte _021D13E2 - _021D0EDA - 2 @ case 17
	.2byte _021D1404 - _021D0EDA - 2 @ case 18
_021D0F00:
	movs r2, #0x59
	ldr r3, [r4]
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	bl FUN_0200B144
	ldr r1, _021D1220 @ =0x0000C060
	str r0, [r4, r1]
	ldr r1, [r4]
	movs r0, #0x81
	bl FUN_02006C24
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov92_021D2150
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov92_021D1888
	adds r0, r6, #0
	bl FUN_02006CA8
	adds r0, r7, #0
	ldr r1, _021D1224 @ =0x0000C2EC
	adds r3, r0, #0
	str r0, [r4, r1]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r2, [r4]
	str r2, [sp, #8]
	adds r2, r1, #0
	bl FUN_0200F174
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #1
	str r0, [r5]
	b _021D142C
_021D0F72:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D104A
	movs r0, #2
	str r0, [r5]
	b _021D142C
_021D0F80:
	adds r1, r7, #0
	movs r2, #1
	bl ov92_021D1B70
	cmp r0, #1
	bne _021D104A
	ldr r0, _021D1228 @ =0x0000C314
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D0F9A
	movs r0, #3
	str r0, [r5]
	b _021D142C
_021D0F9A:
	movs r0, #0xe
	str r0, [r5]
	b _021D142C
_021D0FA0:
	movs r1, #1
	adds r2, r1, #0
	bl ov92_021D1B70
	cmp r0, #1
	bne _021D104A
	ldr r0, _021D122C @ =0x021D2958
	ldr r1, _021D1230 @ =0x0000C024
	str r0, [sp]
	ldr r2, _021D1234 @ =0x021D290C
	ldr r3, _021D1238 @ =0x021D29A8
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov92_021D1C4C
	movs r0, #4
	str r0, [r5]
	b _021D142C
_021D0FC4:
	ldr r0, _021D123C @ =0x0000C054
	ldr r0, [r4, r0]
	bl FUN_02001288
	adds r6, r0, #0
	subs r0, r7, #1
	cmp r6, r0
	beq _021D104A
	adds r0, r4, #0
	bl ov92_021D1DB4
	ldr r0, _021D1240 @ =0x000005DC
	bl FUN_02005748
	adds r0, r6, #2
	cmp r0, #4
	bhi _021D0FFC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D0FF2: @ jump table
	.2byte _021D1008 - _021D0FF2 - 2 @ case 0
	.2byte _021D0FFC - _021D0FF2 - 2 @ case 1
	.2byte _021D0FFC - _021D0FF2 - 2 @ case 2
	.2byte _021D1002 - _021D0FF2 - 2 @ case 3
	.2byte _021D1008 - _021D0FF2 - 2 @ case 4
_021D0FFC:
	movs r0, #0xe
	str r0, [r5]
	b _021D142C
_021D1002:
	movs r0, #5
	str r0, [r5]
	b _021D142C
_021D1008:
	movs r0, #0x11
	str r0, [r5]
	b _021D142C
_021D100E:
	movs r1, #2
	movs r2, #1
	bl ov92_021D1B70
	cmp r0, #1
	bne _021D104A
	ldr r0, [r4]
	ldr r1, _021D1244 @ =0x021D292C
	str r0, [sp]
	ldr r0, _021D1248 @ =0x0000C010
	ldr r2, _021D124C @ =0x000001D9
	ldr r0, [r4, r0]
	movs r3, #7
	bl FUN_02002100
	ldr r1, _021D1250 @ =0x0000C05C
	str r0, [r4, r1]
	movs r0, #6
	str r0, [r5]
	b _021D142C
_021D1036:
	ldr r0, _021D1250 @ =0x0000C05C
	ldr r1, [r4]
	ldr r0, [r4, r0]
	bl FUN_02002114
	cmp r0, #0
	beq _021D104C
	subs r1, r7, #2
	cmp r0, r1
	beq _021D1066
_021D104A:
	b _021D142C
_021D104C:
	ldr r0, _021D1254 @ =0x0000C2F0
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021D1060
	movs r1, #0x67
	adds r0, #0x2c
	str r1, [r4, r0]
	movs r0, #9
	str r0, [r5]
	b _021D142C
_021D1060:
	movs r0, #7
	str r0, [r5]
	b _021D142C
_021D1066:
	movs r0, #3
	str r0, [r5]
	b _021D142C
_021D106C:
	movs r1, #3
	movs r2, #1
	bl ov92_021D1B70
	cmp r0, #1
	bne _021D10B6
	ldr r1, _021D1258 @ =0x0000C31C
	adds r0, r7, #0
	str r0, [r4, r1]
	bl FUN_02099780
	adds r6, r0, #0
	adds r0, r7, #0
	bl FUN_0209979C
	ldr r1, _021D125C @ =0x000002B6
	ldr r2, _021D1260 @ =0x021D2914
	str r1, [sp]
	ldr r1, _021D1230 @ =0x0000C024
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r3, _021D1264 @ =0x021D29C8
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov92_021D1CF4
	movs r0, #8
	str r0, [r5]
	b _021D142C
_021D10A6:
	ldr r0, _021D123C @ =0x0000C054
	ldr r0, [r4, r0]
	bl FUN_02001288
	adds r6, r0, #0
	subs r0, r7, #1
	cmp r6, r0
	bne _021D10B8
_021D10B6:
	b _021D142C
_021D10B8:
	adds r0, r4, #0
	bl ov92_021D1DB4
	ldr r0, _021D1240 @ =0x000005DC
	bl FUN_02005748
	subs r0, r7, #2
	cmp r6, r0
	beq _021D10D2
	adds r0, r7, #0
	bl FUN_02099780
	ldrb r6, [r0, r6]
_021D10D2:
	movs r0, #1
	mvns r0, r0
	cmp r6, r0
	beq _021D10FA
	ldr r0, _021D1258 @ =0x0000C31C
	str r6, [r4, r0]
	ldr r0, [r4, r0]
	bl ov92_021D2854
	cmp r0, #1
	bne _021D10EE
	movs r0, #9
	str r0, [r5]
	b _021D142C
_021D10EE:
	ldr r0, _021D1268 @ =0x0000C320
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #0xb
	str r0, [r5]
	b _021D142C
_021D10FA:
	movs r0, #3
	str r0, [r5]
	b _021D142C
_021D1100:
	movs r1, #4
	movs r2, #1
	bl ov92_021D1B70
	cmp r0, #1
	bne _021D11F2
	ldr r0, _021D1268 @ =0x0000C320
	adds r1, r7, #0
	str r1, [r4, r0]
	subs r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020996D4
	adds r6, r0, #0
	bl FUN_0209972C
	str r0, [sp, #0xc]
	adds r0, r6, #0
	bl FUN_02099780
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl FUN_0209979C
	ldr r1, [sp, #0xc]
	ldr r2, _021D1260 @ =0x021D2914
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r3, _021D1264 @ =0x021D29C8
	str r1, [sp, #4]
	ldr r1, _021D1230 @ =0x0000C024
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov92_021D1CF4
	movs r0, #0xa
	str r0, [r5]
	b _021D142C
_021D114E:
	ldr r0, _021D123C @ =0x0000C054
	ldr r0, [r4, r0]
	bl FUN_02001288
	adds r6, r0, #0
	subs r0, r7, #1
	cmp r6, r0
	beq _021D11F2
	adds r0, r4, #0
	bl ov92_021D1DB4
	ldr r0, _021D1240 @ =0x000005DC
	bl FUN_02005748
	subs r0, r7, #2
	cmp r6, r0
	beq _021D117E
	ldr r0, _021D1258 @ =0x0000C31C
	ldr r0, [r4, r0]
	bl FUN_020996D4
	bl FUN_02099780
	ldrb r6, [r0, r6]
_021D117E:
	movs r0, #1
	mvns r0, r0
	cmp r6, r0
	beq _021D1190
	ldr r0, _021D1268 @ =0x0000C320
	str r6, [r4, r0]
	movs r0, #0xb
	str r0, [r5]
	b _021D142C
_021D1190:
	ldr r0, _021D1254 @ =0x0000C2F0
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021D119E
	movs r0, #3
	str r0, [r5]
	b _021D142C
_021D119E:
	movs r0, #7
	str r0, [r5]
	b _021D142C
_021D11A4:
	ldr r2, _021D1258 @ =0x0000C31C
	ldr r1, [r4, r2]
	adds r2, r2, #4
	ldr r2, [r4, r2]
	bl ov92_021D1EBC
	movs r0, #0xc
	str r0, [r5]
	b _021D142C
_021D11B6:
	movs r1, #5
	movs r2, #1
	bl ov92_021D1B70
	cmp r0, #1
	bne _021D11F2
	ldr r0, [r4]
	ldr r1, _021D1244 @ =0x021D292C
	str r0, [sp]
	ldr r0, _021D1248 @ =0x0000C010
	ldr r2, _021D124C @ =0x000001D9
	ldr r0, [r4, r0]
	movs r3, #7
	bl FUN_02002100
	ldr r1, _021D1250 @ =0x0000C05C
	str r0, [r4, r1]
	movs r0, #0xd
	str r0, [r5]
	b _021D142C
_021D11DE:
	ldr r0, _021D1250 @ =0x0000C05C
	ldr r1, [r4]
	ldr r0, [r4, r0]
	bl FUN_02002114
	cmp r0, #0
	beq _021D11F4
	subs r1, r7, #2
	cmp r0, r1
	beq _021D126C
_021D11F2:
	b _021D142C
_021D11F4:
	adds r0, r4, #0
	bl ov92_021D1F74
	ldr r2, _021D1258 @ =0x0000C31C
	ldr r0, [r4, #4]
	ldr r1, [r4, r2]
	adds r2, r2, #4
	ldr r2, [r4, r2]
	bl FUN_0202C88C
	ldr r0, _021D1258 @ =0x0000C31C
	adds r1, r0, #0
	ldr r2, [r4, r0]
	subs r1, #8
	str r2, [r4, r1]
	adds r1, r0, #4
	ldr r1, [r4, r1]
	subs r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0xe
	str r0, [r5]
	b _021D142C
	.align 2, 0
_021D1220: .4byte 0x0000C060
_021D1224: .4byte 0x0000C2EC
_021D1228: .4byte 0x0000C314
_021D122C: .4byte 0x021D2958
_021D1230: .4byte 0x0000C024
_021D1234: .4byte 0x021D290C
_021D1238: .4byte 0x021D29A8
_021D123C: .4byte 0x0000C054
_021D1240: .4byte 0x000005DC
_021D1244: .4byte 0x021D292C
_021D1248: .4byte 0x0000C010
_021D124C: .4byte 0x000001D9
_021D1250: .4byte 0x0000C05C
_021D1254: .4byte 0x0000C2F0
_021D1258: .4byte 0x0000C31C
_021D125C: .4byte 0x000002B6
_021D1260: .4byte 0x021D2914
_021D1264: .4byte 0x021D29C8
_021D1268: .4byte 0x0000C320
_021D126C:
	adds r0, r4, #0
	bl ov92_021D1F74
	movs r0, #3
	str r0, [r5]
	b _021D142C
_021D1278:
	ldr r1, _021D1438 @ =0x0000C2F0
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _021D1290
	adds r0, r1, #0
	adds r0, #0x34
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D1290
	adds r0, r1, #4
	strh r7, [r4, r0]
	b _021D1296
_021D1290:
	ldr r0, _021D143C @ =0x0000C2F4
	movs r1, #1
	strh r1, [r4, r0]
_021D1296:
	adds r0, r4, #0
	bl ov92_021D2254
	adds r0, r4, #0
	bl ov92_021D16A8
	adds r0, r4, #0
	bl ov92_021D22B0
	adds r0, r4, #0
	bl ov92_021D2334
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, _021D1440 @ =0x0000C014
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, _021D1444 @ =0x0000C034
	ldr r2, _021D1448 @ =0x000001D9
	adds r0, r4, r0
	movs r1, #0
	movs r3, #7
	bl FUN_0200DC48
	ldr r0, _021D144C @ =0x0000C314
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D12E0
	adds r0, r4, #0
	bl ov92_021D1DEC
_021D12E0:
	adds r0, r4, #0
	bl ov92_021D1F90
	ldr r0, _021D1450 @ =0x0000C328
	movs r1, #0
	str r1, [r4, r0]
	movs r1, #1
	subs r0, #0x40
	str r1, [r4, r0]
	movs r0, #0xf
	str r0, [r5]
	b _021D142C
_021D12F8:
	ldr r1, _021D1454 @ =0x0000C2D8
	ldrh r6, [r4, r1]
	bl ov92_021D1700
	ldr r0, _021D1458 @ =0x021BF67C
	movs r3, #2
	ldr r1, [r0, #0x48]
	adds r0, r1, #0
	tst r0, r3
	bne _021D1314
	ldr r0, _021D145C @ =0x0000C2F8
	ldr r2, [r4, r0]
	tst r2, r3
	beq _021D135A
_021D1314:
	ldr r0, _021D1444 @ =0x0000C034
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0200DC9C
	ldr r0, _021D1460 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, _021D1440 @ =0x0000C014
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, _021D144C @ =0x0000C314
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _021D134E
	movs r1, #2
	subs r0, #0x2c
	str r1, [r4, r0]
	movs r0, #3
	str r0, [r5]
	b _021D142C
_021D134E:
	adds r0, r4, #0
	bl ov92_021D1F74
	movs r0, #0x11
	str r0, [r5]
	b _021D142C
_021D135A:
	lsls r2, r3, #9
	tst r2, r1
	beq _021D1386
	adds r2, r0, #0
	adds r2, #0x30
	ldr r2, [r4, r2]
	cmp r2, #0
	bne _021D1386
	movs r1, #1
	adds r0, #0x30
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov92_021D1F90
	ldr r0, _021D1450 @ =0x0000C328
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021D142C
	ldr r0, _021D1460 @ =0x000005DD
	bl FUN_02005748
	b _021D142C
_021D1386:
	ldr r0, _021D1464 @ =0x00000403
	tst r0, r1
	beq _021D13A0
	ldr r0, _021D1450 @ =0x0000C328
	ldr r2, [r4, r0]
	cmp r2, #1
	bne _021D13A0
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov92_021D1F90
	b _021D142C
_021D13A0:
	ldr r2, _021D1458 @ =0x021BF67C
	adds r0, r4, #0
	ldr r2, [r2, #0x44]
	bl ov92_021D2460
	cmp r0, #1
	bne _021D13C0
	ldr r0, _021D1450 @ =0x0000C328
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021D13C0
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov92_021D1F90
_021D13C0:
	ldr r0, _021D1454 @ =0x0000C2D8
	ldrh r0, [r4, r0]
	cmp r6, r0
	beq _021D142C
	movs r0, #0x10
	str r0, [r5]
	ldr r0, _021D1468 @ =0x000005C2
	bl FUN_02005748
	b _021D142C
_021D13D4:
	bl ov92_021D2644
	cmp r0, #1
	bne _021D142C
	movs r0, #0xf
	str r0, [r5]
	b _021D142C
_021D13E2:
	ldr r0, _021D146C @ =0x0000C2EC
	adds r1, r7, #0
	str r7, [r4, r0]
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r3, r7, #0
	bl FUN_0200F174
	movs r0, #0x12
	str r0, [r5]
	b _021D142C
_021D1404:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D142C
	ldr r0, _021D1470 @ =0x0000C2E8
	movs r1, #1
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov92_021D1B24
	adds r0, r4, #0
	bl ov92_021D2210
	ldr r0, _021D1474 @ =0x0000C060
	ldr r0, [r4, r0]
	bl FUN_0200B190
	adds r0, r7, #0
	str r0, [r5]
	movs r7, #1
_021D142C:
	adds r0, r4, #0
	bl ov92_021D26D0
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1438: .4byte 0x0000C2F0
_021D143C: .4byte 0x0000C2F4
_021D1440: .4byte 0x0000C014
_021D1444: .4byte 0x0000C034
_021D1448: .4byte 0x000001D9
_021D144C: .4byte 0x0000C314
_021D1450: .4byte 0x0000C328
_021D1454: .4byte 0x0000C2D8
_021D1458: .4byte 0x021BF67C
_021D145C: .4byte 0x0000C2F8
_021D1460: .4byte 0x000005DD
_021D1464: .4byte 0x00000403
_021D1468: .4byte 0x000005C2
_021D146C: .4byte 0x0000C2EC
_021D1470: .4byte 0x0000C2E8
_021D1474: .4byte 0x0000C060
	thumb_func_end ov92_021D0EB8

	thumb_func_start ov92_021D1478
ov92_021D1478: @ 0x021D1478
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	movs r0, #4
	movs r1, #0
	ldr r5, [r4]
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, _021D14E0 @ =0x0000C2CC
	ldr r0, [r4, r0]
	bl FUN_020203B8
	ldr r0, _021D14E4 @ =0x0000C070
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	bl FUN_0201CBA0
	ldr r0, _021D14E8 @ =0x0000C010
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	adds r0, r6, #0
	bl FUN_02006830
	adds r0, r5, #0
	bl FUN_0201807C
	ldr r0, _021D14EC @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_021D14E0: .4byte 0x0000C2CC
_021D14E4: .4byte 0x0000C070
_021D14E8: .4byte 0x0000C010
_021D14EC: .4byte 0x021BF6DC
	thumb_func_end ov92_021D1478

	thumb_func_start ov92_021D14F0
ov92_021D14F0: @ 0x021D14F0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D150C @ =0x021D2A78
	add r3, sp, #0
	movs r2, #5
_021D14FA:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D14FA
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D150C: .4byte 0x021D2A78
	thumb_func_end ov92_021D14F0

	thumb_func_start ov92_021D1510
ov92_021D1510: @ 0x021D1510
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D152C @ =0x021D2948
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D152C: .4byte 0x021D2948
	thumb_func_end ov92_021D1510

	thumb_func_start ov92_021D1530
ov92_021D1530: @ 0x021D1530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	movs r0, #0x66
	ldr r1, [r1]
	bl FUN_02006C24
	ldr r1, [sp, #8]
	movs r2, #0
	str r2, [r1, #0xc]
	str r2, [sp]
	add r1, sp, #0x24
	str r1, [sp, #4]
	ldr r3, [sp, #8]
	movs r1, #0x12
	ldr r3, [r3]
	str r0, [sp, #0x1c]
	bl FUN_02007250
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	movs r1, #6
	blx FUN_020E2178
	adds r7, r0, #0
	ldr r0, [sp, #0x18]
	movs r5, #1
	adds r4, r0, #6
	cmp r7, #1
	ble _021D15A2
	ldr r6, [sp, #8]
	adds r6, #0xc
_021D1572:
	ldrh r0, [r4]
	cmp r0, #2
	beq _021D159A
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r2, #2
	movs r3, #4
	adds r1, r0, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov92_021D1634
	ldr r0, [r6]
	adds r0, r0, #1
	str r0, [r6]
_021D159A:
	adds r5, r5, #1
	adds r4, r4, #6
	cmp r5, r7
	blt _021D1572
_021D15A2:
	ldr r0, [sp, #0x18]
	bl FUN_020181C4
	movs r7, #1
	bl FUN_020996D0
	str r0, [sp, #0x10]
	cmp r0, #1
	ble _021D162A
	ldr r6, [sp, #8]
	adds r6, #0xc
_021D15B8:
	adds r0, r7, #0
	bl FUN_02099764
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r3, [r3]
	movs r2, #0
	bl FUN_02007250
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	movs r5, #1
	lsrs r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	adds r4, r0, #4
	ldr r0, [sp, #0xc]
	cmp r0, #1
	ble _021D161C
_021D15E8:
	adds r0, r7, #0
	bl FUN_02099748
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r2, #0
	movs r3, #2
	adds r1, r0, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov92_021D1634
	ldr r0, [r6]
	adds r5, r5, #1
	adds r0, r0, #1
	str r0, [r6]
	ldr r0, [sp, #0xc]
	adds r4, r4, #4
	cmp r5, r0
	blt _021D15E8
_021D161C:
	ldr r0, [sp, #0x14]
	bl FUN_020181C4
	ldr r0, [sp, #0x10]
	adds r7, r7, #1
	cmp r7, r0
	blt _021D15B8
_021D162A:
	ldr r0, [sp, #0x1c]
	bl FUN_02006CA8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov92_021D1530

	thumb_func_start ov92_021D1634
ov92_021D1634: @ 0x021D1634
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r5, _021D16A4 @ =0x021D2A30
	adds r7, r2, #0
	adds r6, r3, #0
	adds r4, r0, #0
	mov ip, r1
	add r3, sp, #0xc
	movs r2, #4
_021D1646:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1646
	ldr r0, [r5]
	movs r1, #0x30
	str r0, [r3]
	mov r0, ip
	adds r5, r0, #0
	muls r5, r1, r5
	adds r0, r4, r5
	strh r7, [r0, #0x10]
	strh r6, [r0, #0x12]
	movs r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, sp, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl ov92_021D23E8
	adds r3, r4, r5
	add r6, sp, #0xc
	adds r3, #0x14
	movs r2, #4
_021D1678:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1678
	ldr r0, [r6]
	add r2, sp, #0x38
	str r0, [r3]
	ldrh r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	ldr r0, [r4, #4]
	bl FUN_0202C8C8
	adds r2, r4, r5
	strh r0, [r2, #0x38]
	add r0, sp, #0x38
	ldrh r1, [r0, #0x10]
	strh r1, [r2, #0x3a]
	ldrh r0, [r0, #0x14]
	strh r0, [r2, #0x3c]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D16A4: .4byte 0x021D2A30
	thumb_func_end ov92_021D1634

	thumb_func_start ov92_021D16A8
ov92_021D16A8: @ 0x021D16A8
	push {r4, r5, r6, r7}
	ldr r1, [r0, #0xc]
	movs r4, #0
	cmp r1, #0
	bls _021D16E6
	ldr r1, _021D16EC @ =0x0000C318
	adds r5, r0, #0
	movs r3, #3
	subs r2, r1, #4
_021D16BA:
	ldrh r6, [r5, #0x3a]
	ldr r7, [r0, r2]
	cmp r7, r6
	bne _021D16DC
	ldrh r6, [r5, #0x3c]
	ldr r7, [r0, r1]
	cmp r7, r6
	bne _021D16DC
	strh r3, [r5, #0x38]
	movs r6, #0x10
	ldrsh r7, [r5, r6]
	ldr r6, _021D16F0 @ =0x0000C2B4
	str r7, [r0, r6]
	movs r6, #0x12
	ldrsh r7, [r5, r6]
	ldr r6, _021D16F4 @ =0x0000C2B8
	str r7, [r0, r6]
_021D16DC:
	ldr r6, [r0, #0xc]
	adds r4, r4, #1
	adds r5, #0x30
	cmp r4, r6
	blo _021D16BA
_021D16E6:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021D16EC: .4byte 0x0000C318
_021D16F0: .4byte 0x0000C2B4
_021D16F4: .4byte 0x0000C2B8
	thumb_func_end ov92_021D16A8

	thumb_func_start ov92_021D16F8
ov92_021D16F8: @ 0x021D16F8
	ldr r3, _021D16FC @ =FUN_020996D4
	bx r3
	.align 2, 0
_021D16FC: .4byte FUN_020996D4
	thumb_func_end ov92_021D16F8

	thumb_func_start ov92_021D1700
ov92_021D1700: @ 0x021D1700
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, _021D1808 @ =0x0000C2F8
	movs r1, #0
	str r1, [r4, r0]
	ldr r1, _021D180C @ =0x021BF6BC
	ldrh r2, [r1, #0x20]
	cmp r2, #0
	beq _021D1762
	ldrh r2, [r1, #0x1c]
	cmp r2, #0xc8
	blo _021D1730
	cmp r2, #0xf8
	bhi _021D1730
	ldrh r1, [r1, #0x1e]
	cmp r1, #0xa8
	blo _021D1730
	cmp r1, #0xb8
	bhi _021D1730
	movs r1, #2
	add sp, #0x18
	str r1, [r4, r0]
	pop {r4, pc}
_021D1730:
	ldr r0, _021D1810 @ =0x0000C2FC
	movs r2, #0
	adds r1, r0, #0
	str r2, [r4, r0]
	adds r1, #0xc
	str r2, [r4, r1]
	adds r1, r0, #0
	adds r1, #0x10
	str r2, [r4, r1]
	adds r1, r0, #0
	adds r1, #0x14
	str r2, [r4, r1]
	subs r1, r0, #4
	str r2, [r4, r1]
	ldr r2, _021D180C @ =0x021BF6BC
	adds r1, r0, #4
	ldrh r3, [r2, #0x1c]
	str r3, [r4, r1]
	adds r1, r0, #0
	ldrh r2, [r2, #0x1e]
	adds r1, #8
	adds r0, #0x14
	str r2, [r4, r1]
	movs r1, #4
	str r1, [r4, r0]
_021D1762:
	ldr r0, _021D180C @ =0x021BF6BC
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	beq _021D17DE
	ldr r1, _021D1810 @ =0x0000C2FC
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021D177A
	cmp r2, #1
	beq _021D1796
	add sp, #0x18
	pop {r4, pc}
_021D177A:
	adds r0, r1, #0
	adds r0, #0x14
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D178A
	adds r0, r2, #1
	str r0, [r4, r1]
	b _021D1796
_021D178A:
	adds r0, r1, #0
	adds r0, #0x14
	ldr r0, [r4, r0]
	adds r1, #0x14
	subs r0, r0, #1
	str r0, [r4, r1]
_021D1796:
	add r0, sp, #0xc
	movs r1, #0xc3
	str r0, [sp]
	add r0, sp, #8
	lsls r1, r1, #8
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov92_021D1818
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	orrs r0, r1
	ldr r1, _021D1808 @ =0x0000C2F8
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r2, [sp, #0x10]
	adds r0, #0x10
	str r2, [r4, r0]
	ldr r2, [sp, #8]
	adds r0, r1, #0
	adds r0, #0x14
	str r2, [r4, r0]
	adds r0, r1, #0
	ldr r2, _021D180C @ =0x021BF6BC
	adds r0, #8
	ldrh r3, [r2, #0x1c]
	adds r1, #0xc
	add sp, #0x18
	str r3, [r4, r0]
	ldrh r0, [r2, #0x1e]
	str r0, [r4, r1]
	pop {r4, pc}
_021D17DE:
	ldr r0, _021D1814 @ =0x0000C310
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021D17EC
	movs r1, #1
	subs r0, #0x18
	str r1, [r4, r0]
_021D17EC:
	ldr r1, _021D1810 @ =0x0000C2FC
	movs r2, #0
	adds r0, r1, #0
	str r2, [r4, r1]
	adds r0, #0xc
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x10
	str r2, [r4, r0]
	adds r1, #0x14
	str r2, [r4, r1]
	add sp, #0x18
	pop {r4, pc}
	nop
_021D1808: .4byte 0x0000C2F8
_021D180C: .4byte 0x021BF6BC
_021D1810: .4byte 0x0000C2FC
_021D1814: .4byte 0x0000C310
	thumb_func_end ov92_021D1700

	thumb_func_start ov92_021D1818
ov92_021D1818: @ 0x021D1818
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r0
	ldr r0, _021D1880 @ =0x021BF6BC
	mov ip, r1
	ldrh r5, [r0, #0x1c]
	movs r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _021D1884 @ =0x0000FFFF
	adds r2, r1, #0
	adds r3, r1, #0
	adds r4, r1, #0
	cmp r5, r0
	beq _021D1848
	mov r0, lr
	subs r3, r5, r0
	bpl _021D1842
	subs r0, r1, #1
	eors r3, r0
	movs r1, #0x10
	b _021D1848
_021D1842:
	cmp r3, #0
	ble _021D1848
	movs r1, #0x20
_021D1848:
	str r1, [r7]
	movs r1, #0x3f
	adds r0, r3, #0
	ands r0, r1
	str r0, [r6]
	ldr r0, _021D1880 @ =0x021BF6BC
	ldrh r3, [r0, #0x1e]
	ldr r0, _021D1884 @ =0x0000FFFF
	cmp r3, r0
	beq _021D1870
	mov r0, ip
	subs r4, r3, r0
	bpl _021D186A
	subs r1, #0x40
	eors r4, r1
	movs r2, #0x80
	b _021D1870
_021D186A:
	cmp r4, #0
	ble _021D1870
	movs r2, #0x40
_021D1870:
	ldr r0, [sp, #0x18]
	adds r1, r4, #0
	str r2, [r0]
	movs r0, #0x3f
	ands r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1880: .4byte 0x021BF6BC
_021D1884: .4byte 0x0000FFFF
	thumb_func_end ov92_021D1818

	thumb_func_start ov92_021D1888
ov92_021D1888: @ 0x021D1888
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, _021D1AE4 @ =0x0000C010
	ldr r2, _021D1AE8 @ =0x021D2970
	adds r5, r1, #0
	ldr r0, [r4, r0]
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	ldr r0, _021D1AE4 @ =0x0000C010
	movs r1, #6
	ldr r0, [r4, r0]
	bl FUN_02019EBC
	ldr r0, _021D1AE4 @ =0x0000C010
	ldr r2, _021D1AEC @ =0x021D298C
	ldr r0, [r4, r0]
	movs r1, #7
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r2, _021D1AE4 @ =0x0000C010
	str r0, [sp, #0xc]
	ldr r2, [r4, r2]
	adds r0, r5, #0
	movs r1, #5
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0x80
	str r0, [sp]
	ldr r0, [r4]
	movs r1, #6
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #7
	str r0, [sp, #0xc]
	ldr r2, _021D1AE4 @ =0x0000C010
	adds r0, r5, #0
	ldr r2, [r4, r2]
	adds r3, r1, #0
	bl FUN_0200710C
	ldr r0, [r4, #8]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4]
	movs r1, #6
	str r0, [sp, #4]
	ldr r0, _021D1AE4 @ =0x0000C010
	ldr r2, _021D1AF0 @ =0x000001E2
	ldr r0, [r4, r0]
	adds r3, r1, #0
	bl FUN_0200DD0C
	movs r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, _021D1AF4 @ =0x000001D9
	str r0, [sp, #4]
	ldr r0, _021D1AE4 @ =0x0000C010
	movs r1, #6
	ldr r0, [r4, r0]
	movs r3, #7
	bl FUN_0200DAA4
	ldr r2, [r4]
	movs r0, #4
	movs r1, #0x80
	bl FUN_02002E7C
	ldr r3, [r4]
	movs r0, #6
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r1, _021D1AF8 @ =0x00004753
	movs r0, #6
	bl FUN_0201975C
	ldr r1, _021D1AE4 @ =0x0000C010
	ldr r2, _021D1AFC @ =0x021D2934
	ldr r0, [r4, r1]
	adds r1, r1, #4
	adds r1, r4, r1
	bl FUN_0201A8D4
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, _021D1B00 @ =0x0000C014
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, _021D1B00 @ =0x0000C014
	ldr r2, _021D1AF0 @ =0x000001E2
	adds r0, r4, r0
	movs r1, #0
	movs r3, #6
	bl FUN_0200E060
	ldr r0, _021D1B04 @ =0x0000C064
	movs r3, #0
	str r3, [r4, r0]
	subs r0, #0x54
	ldr r0, [r4, r0]
	ldr r2, _021D1AE8 @ =0x021D2970
	movs r1, #2
	bl FUN_020183C4
	ldr r0, _021D1AE4 @ =0x0000C010
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02019EBC
	ldr r0, _021D1AE4 @ =0x0000C010
	ldr r2, _021D1AEC @ =0x021D298C
	ldr r0, [r4, r0]
	movs r1, #3
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r2, _021D1AE4 @ =0x0000C010
	str r0, [sp, #0xc]
	ldr r2, [r4, r2]
	adds r0, r5, #0
	movs r1, #5
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0x80
	str r0, [sp]
	ldr r0, [r4]
	movs r2, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r2, _021D1AE4 @ =0x0000C010
	str r0, [sp, #0xc]
	ldr r2, [r4, r2]
	adds r0, r5, #0
	movs r1, #7
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, _021D1AF4 @ =0x000001D9
	str r0, [sp, #4]
	ldr r0, _021D1AE4 @ =0x0000C010
	movs r1, #2
	ldr r0, [r4, r0]
	movs r3, #7
	bl FUN_0200DAA4
	ldr r2, [r4]
	movs r0, #0
	movs r1, #0x80
	bl FUN_02002E7C
	ldr r3, [r4]
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	movs r0, #2
	movs r1, #0
	bl FUN_0201975C
	ldr r1, [r4]
	movs r0, #0x10
	bl FUN_02023790
	adds r5, r0, #0
	ldr r1, [r4]
	movs r0, #2
	bl FUN_02002BB8
	ldr r1, _021D1B08 @ =0x00004E56
	add r0, sp, #0x10
	strh r1, [r0, #6]
	ldr r1, _021D1B0C @ =0x00003571
	movs r3, #0x82
	strh r1, [r0, #4]
	ldr r1, _021D1B10 @ =0x0000208C
	strh r1, [r0, #2]
	ldr r1, _021D1B14 @ =0x00007FFF
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #0x14
	adds r1, #2
	adds r2, r0, #0
	bl FUN_0201972C
	movs r0, #2
	add r1, sp, #0x14
	adds r2, r0, #0
	movs r3, #0x84
	bl FUN_0201972C
	movs r0, #2
	add r1, sp, #0x10
	adds r1, #2
	adds r2, r0, #0
	movs r3, #0x86
	bl FUN_0201972C
	movs r0, #2
	add r1, sp, #0x10
	adds r2, r0, #0
	movs r3, #0x9e
	bl FUN_0201972C
	ldr r1, _021D1AE4 @ =0x0000C010
	ldr r2, _021D1B18 @ =0x021D2924
	ldr r0, [r4, r1]
	adds r1, #0x24
	adds r1, r4, r1
	bl FUN_0201A8D4
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, _021D1B1C @ =0x0000C034
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, _021D1B20 @ =0x0000C060
	movs r1, #0xc
	ldr r0, [r4, r0]
	adds r2, r5, #0
	bl FUN_0200B1B8
	movs r0, #2
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0x30
	bl FUN_02002EEC
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1B1C @ =0x0000C034
	str r1, [sp, #8]
	adds r0, r4, r0
	movs r1, #2
	adds r2, r5, #0
	bl FUN_0201D738
	adds r0, r5, #0
	bl FUN_020237BC
	movs r0, #2
	bl FUN_02002C60
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1AE4: .4byte 0x0000C010
_021D1AE8: .4byte 0x021D2970
_021D1AEC: .4byte 0x021D298C
_021D1AF0: .4byte 0x000001E2
_021D1AF4: .4byte 0x000001D9
_021D1AF8: .4byte 0x00004753
_021D1AFC: .4byte 0x021D2934
_021D1B00: .4byte 0x0000C014
_021D1B04: .4byte 0x0000C064
_021D1B08: .4byte 0x00004E56
_021D1B0C: .4byte 0x00003571
_021D1B10: .4byte 0x0000208C
_021D1B14: .4byte 0x00007FFF
_021D1B18: .4byte 0x021D2924
_021D1B1C: .4byte 0x0000C034
_021D1B20: .4byte 0x0000C060
	thumb_func_end ov92_021D1888

	thumb_func_start ov92_021D1B24
ov92_021D1B24: @ 0x021D1B24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D1B64 @ =0x0000C034
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, _021D1B68 @ =0x0000C014
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, _021D1B6C @ =0x0000C010
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02019044
	ldr r0, _021D1B6C @ =0x0000C010
	movs r1, #6
	ldr r0, [r4, r0]
	bl FUN_02019044
	ldr r0, _021D1B6C @ =0x0000C010
	movs r1, #3
	ldr r0, [r4, r0]
	bl FUN_02019044
	ldr r0, _021D1B6C @ =0x0000C010
	movs r1, #7
	ldr r0, [r4, r0]
	bl FUN_02019044
	pop {r4, pc}
	nop
_021D1B64: .4byte 0x0000C034
_021D1B68: .4byte 0x0000C014
_021D1B6C: .4byte 0x0000C010
	thumb_func_end ov92_021D1B24

	thumb_func_start ov92_021D1B70
ov92_021D1B70: @ 0x021D1B70
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _021D1C24 @ =0x0000C064
	adds r6, r1, #0
	ldr r1, [r5, r0]
	movs r4, #0
	cmp r1, #0
	beq _021D1B8C
	cmp r1, #1
	beq _021D1BE6
	cmp r1, #2
	beq _021D1C06
	b _021D1C1C
_021D1B8C:
	movs r1, #0xd8
	str r1, [sp]
	movs r1, #0x20
	subs r0, #0x50
	str r1, [sp, #4]
	adds r0, r5, r0
	movs r1, #0xf
	adds r2, r4, #0
	adds r3, r4, #0
	bl FUN_0201AE78
	movs r0, #1
	ldr r1, [r5]
	lsls r0, r0, #0xa
	bl FUN_02023790
	ldr r2, _021D1C28 @ =0x0000C06C
	adds r1, r6, #0
	str r0, [r5, r2]
	adds r0, r2, #0
	subs r0, #0xc
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	ldr r0, [r5, #8]
	bl FUN_02027AC0
	adds r3, r4, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r2, _021D1C2C @ =0x0000C014
	str r3, [sp, #8]
	adds r0, r5, r2
	adds r2, #0x58
	ldr r2, [r5, r2]
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _021D1C30 @ =0x0000C068
	movs r2, #1
	str r0, [r5, r1]
	subs r0, r1, #4
	str r2, [r5, r0]
	b _021D1C1C
_021D1BE6:
	adds r0, r0, #4
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D1C1C
	ldr r0, _021D1C28 @ =0x0000C06C
	ldr r0, [r5, r0]
	bl FUN_020237BC
	ldr r0, _021D1C24 @ =0x0000C064
	movs r1, #2
	str r1, [r5, r0]
	b _021D1C1C
_021D1C06:
	cmp r2, #0
	bne _021D1C14
	ldr r0, _021D1C34 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _021D1C1C
_021D1C14:
	ldr r0, _021D1C24 @ =0x0000C064
	movs r1, #0
	str r1, [r5, r0]
	movs r4, #1
_021D1C1C:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D1C24: .4byte 0x0000C064
_021D1C28: .4byte 0x0000C06C
_021D1C2C: .4byte 0x0000C014
_021D1C30: .4byte 0x0000C068
_021D1C34: .4byte 0x021BF67C
	thumb_func_end ov92_021D1B70

	thumb_func_start ov92_021D1C38
ov92_021D1C38: @ 0x021D1C38
	push {r3, lr}
	cmp r2, #0
	bne _021D1C44
	ldr r0, _021D1C48 @ =0x000005DC
	bl FUN_02005748
_021D1C44:
	pop {r3, pc}
	nop
_021D1C48: .4byte 0x000005DC
	thumb_func_end ov92_021D1C38

	thumb_func_start ov92_021D1C4C
ov92_021D1C4C: @ 0x021D1C4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldr r0, _021D1CDC @ =0x0000C010
	adds r6, r3, #0
	ldr r0, [r5, r0]
	str r1, [sp]
	bl FUN_0201A8D4
	ldrh r0, [r6, #0x10]
	ldr r1, [r5]
	bl FUN_02013A04
	ldr r1, _021D1CE0 @ =0x0000C058
	movs r7, #0
	str r0, [r5, r1]
	ldrh r0, [r6, #0x10]
	cmp r0, #0
	ble _021D1C8E
	ldr r4, [sp, #0x38]
_021D1C74:
	ldr r0, _021D1CE0 @ =0x0000C058
	ldr r1, _021D1CE4 @ =0x0000C060
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl FUN_02013A4C
	ldrh r0, [r6, #0x10]
	adds r7, r7, #1
	adds r4, #8
	cmp r7, r0
	blt _021D1C74
_021D1C8E:
	add r3, sp, #4
	adds r2, r3, #0
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, _021D1CE0 @ =0x0000C058
	movs r1, #0
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _021D1CE8 @ =ov92_021D1C38
	str r0, [sp, #8]
	ldr r3, [r5]
	adds r0, r2, #0
	lsls r3, r3, #0x18
	adds r2, r1, #0
	lsrs r3, r3, #0x18
	bl FUN_0200112C
	ldr r1, _021D1CEC @ =0x0000C054
	ldr r2, _021D1CF0 @ =0x000001D9
	str r0, [r5, r1]
	ldr r0, [sp, #0x10]
	movs r1, #1
	movs r3, #7
	bl FUN_0200DC48
	ldr r0, [sp]
	bl FUN_0201A954
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021D1CDC: .4byte 0x0000C010
_021D1CE0: .4byte 0x0000C058
_021D1CE4: .4byte 0x0000C060
_021D1CE8: .4byte ov92_021D1C38
_021D1CEC: .4byte 0x0000C054
_021D1CF0: .4byte 0x000001D9
	thumb_func_end ov92_021D1C4C

	thumb_func_start ov92_021D1CF4
ov92_021D1CF4: @ 0x021D1CF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r0, _021D1DA0 @ =0x0000C010
	str r1, [sp]
	ldr r0, [r5, r0]
	str r3, [sp, #4]
	ldr r7, [sp, #0x44]
	ldr r6, [sp, #0x48]
	bl FUN_0201A8D4
	ldr r2, [sp, #0x40]
	ldr r3, [r5]
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	str r0, [sp, #8]
	ldr r1, [r5]
	adds r0, r6, #0
	bl FUN_02013A04
	ldr r1, _021D1DA4 @ =0x0000C058
	movs r4, #0
	str r0, [r5, r1]
	cmp r6, #0
	bls _021D1D3E
_021D1D2A:
	ldr r0, _021D1DA4 @ =0x0000C058
	ldrb r2, [r7, r4]
	ldr r0, [r5, r0]
	ldr r1, [sp, #8]
	adds r3, r4, #0
	bl FUN_02013A4C
	adds r4, r4, #1
	cmp r4, r6
	blo _021D1D2A
_021D1D3E:
	ldr r0, [sp, #8]
	bl FUN_0200B190
	ldr r4, [sp, #4]
	add r3, sp, #0xc
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	str r4, [sp, #4]
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	str r4, [sp, #4]
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	str r4, [sp, #4]
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, _021D1DA4 @ =0x0000C058
	movs r1, #0
	ldr r0, [r5, r0]
	str r4, [sp, #4]
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	strh r6, [r0, #0x10]
	ldr r0, [sp]
	str r0, [sp, #0x18]
	ldr r0, _021D1DA8 @ =ov92_021D1C38
	str r0, [sp, #0x10]
	ldr r3, [r5]
	adds r0, r2, #0
	lsls r3, r3, #0x18
	adds r2, r1, #0
	lsrs r3, r3, #0x18
	bl FUN_0200112C
	ldr r1, _021D1DAC @ =0x0000C054
	ldr r2, _021D1DB0 @ =0x000001D9
	str r0, [r5, r1]
	ldr r0, [sp, #0x18]
	movs r1, #1
	movs r3, #7
	bl FUN_0200DC48
	ldr r0, [sp]
	bl FUN_0201A954
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021D1DA0: .4byte 0x0000C010
_021D1DA4: .4byte 0x0000C058
_021D1DA8: .4byte ov92_021D1C38
_021D1DAC: .4byte 0x0000C054
_021D1DB0: .4byte 0x000001D9
	thumb_func_end ov92_021D1CF4

	thumb_func_start ov92_021D1DB4
ov92_021D1DB4: @ 0x021D1DB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D1DE0 @ =0x0000C024
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0200DC9C
	ldr r0, _021D1DE0 @ =0x0000C024
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, _021D1DE4 @ =0x0000C054
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_02001384
	ldr r0, _021D1DE8 @ =0x0000C058
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	pop {r4, pc}
	.align 2, 0
_021D1DE0: .4byte 0x0000C024
_021D1DE4: .4byte 0x0000C054
_021D1DE8: .4byte 0x0000C058
	thumb_func_end ov92_021D1DB4

	thumb_func_start ov92_021D1DEC
ov92_021D1DEC: @ 0x021D1DEC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	ldr r1, [r5]
	lsls r0, r0, #0xa
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #1
	ldr r1, [r5]
	lsls r0, r0, #0xa
	bl FUN_02023790
	ldr r1, _021D1EA0 @ =0x0000C010
	adds r6, r0, #0
	ldr r0, [r5, r1]
	adds r1, #0x34
	ldr r2, _021D1EA4 @ =0x021D291C
	adds r1, r5, r1
	bl FUN_0201A8D4
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	ldr r0, _021D1EA8 @ =0x0000C044
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, _021D1EA8 @ =0x0000C044
	ldr r2, _021D1EAC @ =0x000001D9
	adds r0, r5, r0
	movs r1, #0
	movs r3, #7
	bl FUN_0200DC48
	ldr r0, _021D1EB0 @ =0x0000C070
	ldr r2, _021D1EB4 @ =0x0000C314
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	movs r1, #0
	bl FUN_0200BDD0
	ldr r3, _021D1EB4 @ =0x0000C314
	ldr r0, _021D1EB0 @ =0x0000C070
	ldr r2, [r5, r3]
	adds r3, r3, #4
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	movs r1, #1
	bl FUN_0200BE08
	ldr r0, _021D1EB8 @ =0x0000C060
	movs r1, #0xd
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl FUN_0200B1B8
	ldr r0, _021D1EB0 @ =0x0000C070
	adds r1, r4, #0
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl FUN_0200C388
	movs r1, #0
	ldr r0, _021D1EA8 @ =0x0000C044
	str r1, [sp]
	str r1, [sp, #4]
	adds r0, r5, r0
	adds r2, r4, #0
	adds r3, r1, #0
	str r1, [sp, #8]
	bl FUN_0201D738
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, _021D1EA8 @ =0x0000C044
	adds r0, r5, r0
	bl FUN_0201A954
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D1EA0: .4byte 0x0000C010
_021D1EA4: .4byte 0x021D291C
_021D1EA8: .4byte 0x0000C044
_021D1EAC: .4byte 0x000001D9
_021D1EB0: .4byte 0x0000C070
_021D1EB4: .4byte 0x0000C314
_021D1EB8: .4byte 0x0000C060
	thumb_func_end ov92_021D1DEC

	thumb_func_start ov92_021D1EBC
ov92_021D1EBC: @ 0x021D1EBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	str r1, [sp, #0xc]
	ldr r1, [r5]
	movs r0, #0x40
	adds r4, r2, #0
	bl FUN_02023790
	adds r7, r0, #0
	ldr r1, [r5]
	movs r0, #0x40
	bl FUN_02023790
	ldr r1, _021D1F64 @ =0x0000C010
	adds r6, r0, #0
	ldr r0, [r5, r1]
	adds r1, #0x34
	ldr r2, _021D1F68 @ =0x021D291C
	adds r1, r5, r1
	bl FUN_0201A8D4
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	ldr r0, _021D1F6C @ =0x0000C044
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, _021D1F6C @ =0x0000C044
	ldr r2, _021D1F70 @ =0x000001D9
	adds r0, r5, r0
	movs r1, #0
	movs r3, #7
	bl FUN_0200DC48
	ldr r0, [r5]
	adds r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r6, #0
	bl ov92_021D27E8
	cmp r4, #0
	beq _021D1F38
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, _021D1F6C @ =0x0000C044
	adds r2, r6, #0
	adds r0, r5, r0
	adds r3, r1, #0
	str r1, [sp, #8]
	bl FUN_0201D738
_021D1F38:
	movs r1, #0
	ldr r0, _021D1F6C @ =0x0000C044
	str r1, [sp]
	str r1, [sp, #4]
	adds r0, r5, r0
	adds r2, r7, #0
	adds r3, r1, #0
	str r1, [sp, #8]
	bl FUN_0201D738
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, _021D1F6C @ =0x0000C044
	adds r0, r5, r0
	bl FUN_0201A954
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1F64: .4byte 0x0000C010
_021D1F68: .4byte 0x021D291C
_021D1F6C: .4byte 0x0000C044
_021D1F70: .4byte 0x000001D9
	thumb_func_end ov92_021D1EBC

	thumb_func_start ov92_021D1F74
ov92_021D1F74: @ 0x021D1F74
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D1F8C @ =0x0000C044
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0200DC9C
	ldr r0, _021D1F8C @ =0x0000C044
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
_021D1F8C: .4byte 0x0000C044
	thumb_func_end ov92_021D1F74

	thumb_func_start ov92_021D1F90
ov92_021D1F90: @ 0x021D1F90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r0, _021D2140 @ =0x0000C328
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021D1FEA
	movs r0, #1
	ldr r1, [r5]
	lsls r0, r0, #0xa
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	ldr r0, _021D2144 @ =0x0000C014
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, _021D2148 @ =0x0000C060
	movs r1, #0xe
	ldr r0, [r5, r0]
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r3, #0
	ldr r0, _021D2144 @ =0x0000C014
	str r3, [sp]
	str r3, [sp, #4]
	adds r0, r5, r0
	movs r1, #1
	adds r2, r4, #0
	str r3, [sp, #8]
	bl FUN_0201D738
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021D1FEA:
	movs r1, #0
	str r1, [sp, #0x24]
	adds r1, r0, #0
	subs r1, #0x74
	ldr r1, [r5, r1]
	movs r7, #1
	adds r2, r1, #0
	subs r2, #0x80
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x20]
	adds r2, r1, #0
	adds r2, #0x80
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x1c]
	adds r2, r0, #0
	subs r2, #0x70
	ldr r3, [r5, r2]
	subs r0, #0x70
	adds r2, r3, #0
	subs r2, #0x80
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r3, #0x80
	str r2, [sp, #0x18]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x14]
	ldr r2, [r5, #0xc]
	lsls r7, r7, #8
	str r1, [sp, #0x30]
	ldr r0, [r5, r0]
	str r2, [sp, #0x10]
	str r0, [sp, #0x34]
	add r0, sp, #0x30
	bl ov92_021D2868
	ldr r1, [r5, #0xc]
	movs r6, #0
	cmp r1, #0
	bls _021D208E
	adds r4, r5, #0
_021D2040:
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	ble _021D2084
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bge _021D2084
	movs r0, #0x12
	ldrsh r0, [r4, r0]
	ldr r2, [sp, #0x18]
	cmp r0, r2
	ble _021D2084
	ldr r2, [sp, #0x14]
	cmp r0, r2
	bge _021D2084
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _021D2084
	str r1, [sp, #0x28]
	movs r0, #0x12
	ldrsh r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x28
	bl ov92_021D2868
	add r0, sp, #0x30
	add r1, sp, #0x28
	bl ov92_021D28C0
	cmp r0, r7
	bhs _021D2084
	adds r7, r0, #0
	str r6, [sp, #0x10]
_021D2084:
	ldr r1, [r5, #0xc]
	adds r6, r6, #1
	adds r4, #0x30
	cmp r6, r1
	blo _021D2040
_021D208E:
	ldr r0, [sp, #0x10]
	cmp r0, r1
	beq _021D2130
	ldr r1, [r5]
	movs r0, #0x40
	bl FUN_02023790
	str r0, [sp, #0xc]
	ldr r1, [r5]
	movs r0, #0x40
	bl FUN_02023790
	adds r7, r0, #0
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	ldr r0, _021D2144 @ =0x0000C014
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, [sp, #0x10]
	adds r6, r5, #0
	adds r4, r0, #0
	movs r1, #0x30
	ldr r0, [r5]
	muls r4, r1, r4
	str r0, [sp]
	adds r6, #0x3c
	adds r0, r5, r4
	ldrh r0, [r0, #0x3a]
	ldrh r1, [r6, r4]
	ldr r2, [sp, #0xc]
	adds r3, r7, #0
	bl ov92_021D27E8
	ldrh r0, [r6, r4]
	cmp r0, #0
	beq _021D20FA
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2144 @ =0x0000C014
	movs r3, #0
	adds r0, r5, r0
	movs r1, #1
	adds r2, r7, #0
	str r3, [sp, #8]
	bl FUN_0201D738
_021D20FA:
	movs r3, #0
	ldr r0, _021D2144 @ =0x0000C014
	str r3, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xc]
	adds r0, r5, r0
	movs r1, #1
	str r3, [sp, #8]
	bl FUN_0201D738
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0xc]
	bl FUN_020237BC
	adds r2, r5, r4
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	ldr r0, _021D214C @ =0x0000C2B4
	str r1, [r5, r0]
	movs r1, #0x12
	ldrsh r1, [r2, r1]
	adds r0, r0, #4
	str r1, [r5, r0]
	movs r0, #1
	str r0, [sp, #0x24]
_021D2130:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021D213C
	ldr r0, _021D2140 @ =0x0000C328
	movs r1, #0
	str r1, [r5, r0]
_021D213C:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2140: .4byte 0x0000C328
_021D2144: .4byte 0x0000C014
_021D2148: .4byte 0x0000C060
_021D214C: .4byte 0x0000C2B4
	thumb_func_end ov92_021D1F90

	thumb_func_start ov92_021D2150
ov92_021D2150: @ 0x021D2150
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02006CB8
	ldr r2, _021D21F4 @ =0x0000C0CC
	str r0, [r5, r2]
	adds r0, r2, #0
	subs r1, r2, #4
	subs r0, #0x58
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r5, r2
	bl FUN_0201CA3C
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02006CB8
	ldr r2, _021D21F8 @ =0x0000C294
	str r0, [r5, r2]
	adds r0, r2, #0
	adds r1, r2, #0
	subs r0, #0xc8
	subs r1, #0x14
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r5, r2
	bl FUN_0201CA3C
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02006CB8
	ldr r2, _021D21FC @ =0x0000C298
	str r0, [r5, r2]
	adds r0, r2, #0
	adds r1, r2, #0
	subs r0, #0x78
	subs r1, #0x14
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r5, r2
	bl FUN_0201CA3C
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02006CB8
	ldr r2, _021D2200 @ =0x0000C28C
	str r0, [r5, r2]
	adds r1, r2, #0
	ldr r0, _021D2204 @ =0x0000C124
	subs r1, #0x14
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r5, r2
	bl FUN_0201CA3C
	ldr r2, [r5]
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02006CB8
	ldr r2, _021D2208 @ =0x0000C290
	str r0, [r5, r2]
	adds r1, r2, #0
	ldr r0, _021D220C @ =0x0000C178
	subs r1, #0x14
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r5, r2
	bl FUN_0201CA3C
	pop {r3, r4, r5, pc}
	nop
_021D21F4: .4byte 0x0000C0CC
_021D21F8: .4byte 0x0000C294
_021D21FC: .4byte 0x0000C298
_021D2200: .4byte 0x0000C28C
_021D2204: .4byte 0x0000C124
_021D2208: .4byte 0x0000C290
_021D220C: .4byte 0x0000C178
	thumb_func_end ov92_021D2150

	thumb_func_start ov92_021D2210
ov92_021D2210: @ 0x021D2210
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D2240 @ =0x0000C290
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, _021D2244 @ =0x0000C28C
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, _021D2248 @ =0x0000C298
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, _021D224C @ =0x0000C294
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, _021D2250 @ =0x0000C0CC
	ldr r0, [r4, r0]
	bl FUN_020181C4
	pop {r4, pc}
	nop
_021D2240: .4byte 0x0000C290
_021D2244: .4byte 0x0000C28C
_021D2248: .4byte 0x0000C298
_021D224C: .4byte 0x0000C294
_021D2250: .4byte 0x0000C0CC
	thumb_func_end ov92_021D2210

	thumb_func_start ov92_021D2254
ov92_021D2254: @ 0x021D2254
	push {r4, r5}
	ldr r1, _021D22AC @ =0x0000C29C
	movs r3, #0
	str r3, [r0, r1]
	adds r2, r1, #4
	str r3, [r0, r2]
	adds r2, r1, #0
	adds r2, #8
	str r3, [r0, r2]
	movs r2, #1
	adds r4, r1, #0
	lsls r2, r2, #0xc
	adds r4, #0xc
	str r2, [r0, r4]
	adds r4, r1, #0
	adds r4, #0x10
	str r2, [r0, r4]
	adds r4, r1, #0
	adds r4, #0x14
	str r2, [r0, r4]
	movs r5, #0x69
	adds r4, r1, #0
	lsls r5, r5, #6
	adds r4, #0x18
	str r5, [r0, r4]
	movs r5, #0x1f
	adds r4, r1, #0
	lsls r5, r5, #0xa
	adds r4, #0x1c
	str r5, [r0, r4]
	adds r4, r1, #0
	adds r4, #0x20
	str r3, [r0, r4]
	adds r3, r1, #0
	adds r3, #0x24
	str r2, [r0, r3]
	adds r3, r1, #0
	adds r3, #0x28
	str r2, [r0, r3]
	adds r1, #0x2c
	str r2, [r0, r1]
	pop {r4, r5}
	bx lr
	nop
_021D22AC: .4byte 0x0000C29C
	thumb_func_end ov92_021D2254

	thumb_func_start ov92_021D22B0
ov92_021D22B0: @ 0x021D22B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r6, _021D2324 @ =0x021D293C
	adds r4, r0, #0
	ldm r6!, {r0, r1}
	add r5, sp, #8
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r5]
	add r7, sp, #0x14
	movs r3, #0
	str r3, [r7]
	str r3, [r7, #4]
	str r3, [r7, #8]
	ldr r0, _021D2328 @ =0x0000C2CC
	str r3, [sp]
	ldr r0, [r4, r0]
	ldr r2, _021D232C @ =0x000005C1
	str r0, [sp, #4]
	adds r0, r7, #0
	bl FUN_02020784
	ldr r2, _021D2328 @ =0x0000C2CC
	movs r1, #0x19
	ldr r2, [r4, r2]
	movs r0, #0
	lsls r1, r1, #0xe
	bl FUN_020206BC
	ldr r1, _021D2328 @ =0x0000C2CC
	movs r0, #0
	ldr r1, [r4, r1]
	bl FUN_02020854
	ldr r0, _021D2328 @ =0x0000C2CC
	ldr r0, [r4, r0]
	bl FUN_020203D4
	ldr r0, _021D2330 @ =0x0000C2F4
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _021D2310
	movs r1, #1
	subs r0, #0x1c
	strh r1, [r4, r0]
	b _021D2316
_021D2310:
	movs r1, #0
	subs r0, #0x1c
	strh r1, [r4, r0]
_021D2316:
	adds r0, r4, #0
	bl ov92_021D2644
	cmp r0, #1
	bne _021D2316
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2324: .4byte 0x021D293C
_021D2328: .4byte 0x0000C2CC
_021D232C: .4byte 0x000005C1
_021D2330: .4byte 0x0000C2F4
	thumb_func_end ov92_021D22B0

	thumb_func_start ov92_021D2334
ov92_021D2334: @ 0x021D2334
	push {r4, lr}
	ldr r3, _021D2368 @ =0x0000C2DC
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, r3]
	adds r1, r3, #4
	str r0, [r4, r1]
	adds r1, r3, #0
	ldr r2, _021D236C @ =0xFFFFF001
	adds r1, #8
	str r2, [r4, r1]
	ldr r1, [r4, r3]
	adds r2, r3, #4
	adds r3, #8
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r3, r3, #0x10
	blx FUN_020AF51C
	pop {r4, pc}
	nop
_021D2368: .4byte 0x0000C2DC
_021D236C: .4byte 0xFFFFF001
	thumb_func_end ov92_021D2334

	thumb_func_start ov92_021D2370
ov92_021D2370: @ 0x021D2370
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r1, #0
	ldr r1, [r4, #4]
	ldr r3, _021D23E4 @ =0x020F983C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	asrs r1, r1, #4
	lsls r2, r1, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r5, r0, #0
	bl FUN_020BB5C8
	ldr r0, [r4]
	ldr r3, _021D23E4 @ =0x020F983C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5AC
	adds r0, r5, #0
	add r1, sp, #0
	adds r2, r5, #0
	blx FUN_020BB8EC
	ldr r0, [r4, #8]
	ldr r3, _021D23E4 @ =0x020F983C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5E4
	adds r0, r5, #0
	add r1, sp, #0
	adds r2, r5, #0
	blx FUN_020BB8EC
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D23E4: .4byte 0x020F983C
	thumb_func_end ov92_021D2370

	thumb_func_start ov92_021D23E8
ov92_021D23E8: @ 0x021D23E8
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r1, #0
	ldr r1, [r4]
	ldr r3, _021D245C @ =0x020F983C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	asrs r1, r1, #4
	lsls r2, r1, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r5, r0, #0
	bl FUN_020BB5C8
	ldr r0, [r4, #4]
	ldr r3, _021D245C @ =0x020F983C
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5AC
	adds r0, r5, #0
	add r1, sp, #0
	adds r2, r5, #0
	blx FUN_020BB8EC
	ldr r0, [r4, #8]
	ldr r3, _021D245C @ =0x020F983C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r2, r0, #1
	adds r1, r2, #1
	lsls r1, r1, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5E4
	adds r0, r5, #0
	add r1, sp, #0
	adds r2, r5, #0
	blx FUN_020BB8EC
	add sp, #0x24
	pop {r4, r5, pc}
	.align 2, 0
_021D245C: .4byte 0x020F983C
	thumb_func_end ov92_021D23E8

	thumb_func_start ov92_021D2460
ov92_021D2460: @ 0x021D2460
	push {r3, r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, _021D2624 @ =0x0000C2B4
	adds r7, r2, #0
	adds r4, r0, #4
	ldr r4, [r3, r4]
	ldr r2, [r3, r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r2, r2, #0x10
	mov lr, r4
	movs r4, #1
	movs r6, #0
	asrs r2, r2, #0x10
	tst r1, r4
	bne _021D248C
	adds r1, r0, #0
	adds r1, #0x44
	ldr r1, [r3, r1]
	mov ip, r1
	tst r1, r4
	beq _021D24B0
_021D248C:
	ldr r1, _021D2628 @ =0x0000C2F4
	ldrh r0, [r3, r1]
	cmp r0, #1
	bne _021D24AC
	adds r0, r1, #0
	subs r0, #0x1c
	ldrh r0, [r3, r0]
	cmp r0, #0
	bne _021D24A6
	movs r0, #1
	subs r1, #0x1c
	strh r0, [r3, r1]
	b _021D24AC
_021D24A6:
	movs r0, #0
	subs r1, #0x1c
	strh r0, [r3, r1]
_021D24AC:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D24B0:
	adds r1, r0, #0
	adds r1, #0x24
	ldrh r1, [r3, r1]
	cmp r1, #0
	bne _021D24E8
	adds r1, r0, #0
	adds r1, #0x54
	ldr r1, [r3, r1]
	cmp r1, #0
	bne _021D24CC
	adds r0, #0x58
	ldr r0, [r3, r0]
	cmp r0, #0
	beq _021D24E2
_021D24CC:
	adds r0, r1, #0
	ldr r1, _021D262C @ =0x0000C30C
	movs r4, #0x55
	ldr r1, [r3, r1]
	muls r0, r4, r0
	muls r4, r1, r4
	lsls r0, r0, #0x10
	lsls r1, r4, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	b _021D2514
_021D24E2:
	lsls r0, r4, #9
	adds r1, r0, #0
	b _021D2514
_021D24E8:
	adds r1, r0, #0
	adds r1, #0x54
	ldr r1, [r3, r1]
	cmp r1, #0
	bne _021D24FA
	adds r0, #0x58
	ldr r0, [r3, r0]
	cmp r0, #0
	beq _021D2510
_021D24FA:
	adds r0, r1, #0
	ldr r1, _021D262C @ =0x0000C30C
	movs r4, #0xa
	ldr r1, [r3, r1]
	muls r0, r4, r0
	muls r4, r1, r4
	lsls r0, r0, #0x10
	lsls r1, r4, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	b _021D2514
_021D2510:
	movs r0, #0x20
	adds r1, r0, #0
_021D2514:
	movs r4, #0x20
	tst r4, r7
	bne _021D2522
	mov r5, ip
	movs r4, #0x20
	tst r4, r5
	beq _021D254E
_021D2522:
	ldr r6, _021D2628 @ =0x0000C2F4
	ldrh r4, [r3, r6]
	cmp r4, #1
	bne _021D2538
	adds r4, r6, #0
	subs r4, #0x3c
	ldr r4, [r3, r4]
	subs r6, #0x3c
	adds r4, r4, r0
	str r4, [r3, r6]
	b _021D254C
_021D2538:
	ldr r5, _021D2630 @ =0xFFFFD820
	mov r4, lr
	cmp r4, r5
	bge _021D254C
	adds r4, r6, #0
	subs r4, #0x3c
	ldr r4, [r3, r4]
	subs r6, #0x3c
	adds r4, r4, r0
	str r4, [r3, r6]
_021D254C:
	movs r6, #1
_021D254E:
	movs r4, #0x10
	tst r4, r7
	bne _021D255E
	ldr r4, _021D2634 @ =0x0000C2F8
	ldr r5, [r3, r4]
	movs r4, #0x10
	tst r4, r5
	beq _021D258A
_021D255E:
	ldr r5, _021D2628 @ =0x0000C2F4
	ldrh r4, [r3, r5]
	cmp r4, #1
	bne _021D2574
	adds r4, r5, #0
	subs r4, #0x3c
	ldr r4, [r3, r4]
	subs r5, #0x3c
	subs r0, r4, r0
	str r0, [r3, r5]
	b _021D2588
_021D2574:
	ldr r4, _021D2638 @ =0xFFFFCC80
	mov r6, lr
	cmp r6, r4
	ble _021D2588
	adds r4, r5, #0
	subs r4, #0x3c
	ldr r4, [r3, r4]
	subs r5, #0x3c
	subs r0, r4, r0
	str r0, [r3, r5]
_021D2588:
	movs r6, #1
_021D258A:
	movs r4, #0x40
	adds r0, r7, #0
	tst r0, r4
	bne _021D259A
	ldr r0, _021D2634 @ =0x0000C2F8
	ldr r0, [r3, r0]
	tst r0, r4
	beq _021D25D4
_021D259A:
	ldr r4, _021D2628 @ =0x0000C2F4
	ldrh r0, [r3, r4]
	cmp r0, #1
	bne _021D25C0
	movs r0, #0x3e
	adds r5, r2, r1
	lsls r0, r0, #8
	cmp r5, r0
	bge _021D25BA
	adds r0, r4, #0
	subs r0, #0x40
	ldr r0, [r3, r0]
	subs r4, #0x40
	adds r0, r0, r1
	str r0, [r3, r4]
	b _021D25D2
_021D25BA:
	subs r4, #0x40
	str r0, [r3, r4]
	b _021D25D2
_021D25C0:
	ldr r0, _021D263C @ =0x00002020
	cmp r2, r0
	bge _021D25D2
	adds r0, r4, #0
	subs r0, #0x40
	ldr r0, [r3, r0]
	subs r4, #0x40
	adds r0, r0, r1
	str r0, [r3, r4]
_021D25D2:
	movs r6, #1
_021D25D4:
	movs r4, #0x80
	adds r0, r7, #0
	tst r0, r4
	bne _021D25E4
	ldr r0, _021D2634 @ =0x0000C2F8
	ldr r0, [r3, r0]
	tst r0, r4
	beq _021D261E
_021D25E4:
	ldr r4, _021D2628 @ =0x0000C2F4
	ldrh r0, [r3, r4]
	cmp r0, #1
	bne _021D2608
	ldr r0, _021D2640 @ =0xFFFFC200
	subs r2, r2, r1
	cmp r2, r0
	ble _021D2602
	adds r0, r4, #0
	subs r0, #0x40
	ldr r0, [r3, r0]
	subs r4, #0x40
	subs r0, r0, r1
	str r0, [r3, r4]
	b _021D261C
_021D2602:
	subs r4, #0x40
	str r0, [r3, r4]
	b _021D261C
_021D2608:
	movs r0, #0x13
	lsls r0, r0, #8
	cmp r2, r0
	ble _021D261C
	adds r0, r4, #0
	subs r0, #0x40
	ldr r0, [r3, r0]
	subs r4, #0x40
	subs r0, r0, r1
	str r0, [r3, r4]
_021D261C:
	movs r6, #1
_021D261E:
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2624: .4byte 0x0000C2B4
_021D2628: .4byte 0x0000C2F4
_021D262C: .4byte 0x0000C30C
_021D2630: .4byte 0xFFFFD820
_021D2634: .4byte 0x0000C2F8
_021D2638: .4byte 0xFFFFCC80
_021D263C: .4byte 0x00002020
_021D2640: .4byte 0xFFFFC200
	thumb_func_end ov92_021D2460

	thumb_func_start ov92_021D2644
ov92_021D2644: @ 0x021D2644
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D26C8 @ =0x0000C2CC
	ldr r0, [r5, r0]
	bl FUN_02020A90
	ldr r1, _021D26CC @ =0x0000C2D8
	movs r4, #0
	ldrh r2, [r5, r1]
	cmp r2, #0
	beq _021D268E
	cmp r2, #1
	bne _021D26BC
	movs r2, #0x16
	lsls r2, r2, #0xe
	cmp r0, r2
	ble _021D2686
	movs r2, #2
	lsls r2, r2, #0xe
	subs r0, r0, r2
	adds r2, r1, #0
	subs r2, #0x18
	ldr r3, [r5, r2]
	adds r2, r1, #0
	subs r3, #0x80
	subs r2, #0x18
	str r3, [r5, r2]
	adds r2, r1, #0
	subs r2, #0x18
	ldr r2, [r5, r2]
	subs r1, #0x14
	str r2, [r5, r1]
	b _021D26BC
_021D2686:
	movs r0, #5
	lsls r0, r0, #0x10
	movs r4, #1
	b _021D26BC
_021D268E:
	movs r2, #0x12
	lsls r2, r2, #0x10
	cmp r0, r2
	bge _021D26B6
	movs r2, #2
	lsls r2, r2, #0xe
	adds r0, r0, r2
	adds r2, r1, #0
	subs r2, #0x18
	ldr r3, [r5, r2]
	adds r2, r1, #0
	adds r3, #0x80
	subs r2, #0x18
	str r3, [r5, r2]
	adds r2, r1, #0
	subs r2, #0x18
	ldr r2, [r5, r2]
	subs r1, #0x14
	str r2, [r5, r1]
	b _021D26BC
_021D26B6:
	movs r0, #0x4a
	lsls r0, r0, #0xe
	movs r4, #1
_021D26BC:
	ldr r1, _021D26C8 @ =0x0000C2CC
	ldr r1, [r5, r1]
	bl FUN_02020A50
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D26C8: .4byte 0x0000C2CC
_021D26CC: .4byte 0x0000C2D8
	thumb_func_end ov92_021D2644

	thumb_func_start ov92_021D26D0
ov92_021D26D0: @ 0x021D26D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	ldr r4, _021D27C0 @ =0x021D29E8
	adds r5, r0, #0
	add r3, sp, #0x4c
	movs r2, #4
_021D26DC:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D26DC
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, _021D27C4 @ =0x0000C2E8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D27BA
	cmp r0, #1
	beq _021D270E
	cmp r0, #2
	bne _021D27BA
	bl FUN_020241B4
	movs r0, #0
	movs r1, #1
	bl FUN_020241BC
	ldr r0, _021D27C4 @ =0x0000C2E8
	movs r1, #0
	add sp, #0x70
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D270E:
	bl FUN_020241B4
	bl FUN_020203EC
	ldr r1, _021D27C8 @ =0x0000C2B4
	add r0, sp, #0x4c
	adds r1, r5, r1
	bl ov92_021D2370
	ldr r3, _021D27CC @ =0x0000C29C
	ldr r0, _021D27D0 @ =0x0000C074
	adds r1, r5, r3
	adds r3, #0xc
	adds r0, r5, r0
	add r2, sp, #0x4c
	adds r3, r5, r3
	bl FUN_0201CA74
	ldr r4, _021D27D4 @ =0x021D2A54
	add r3, sp, #0x28
	movs r2, #4
_021D2738:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D2738
	ldr r0, [r4]
	add r2, sp, #0x28
	str r0, [r3]
	ldr r3, _021D27D8 @ =0x0000C220
	adds r1, r3, #0
	adds r0, r5, r3
	adds r1, #0x7c
	adds r3, #0xa0
	adds r1, r5, r1
	adds r3, r5, r3
	bl FUN_0201CA74
	ldr r4, _021D27DC @ =0x021D2A0C
	add r3, sp, #4
	movs r2, #4
_021D275E:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D275E
	ldr r0, [r4]
	movs r7, #0
	str r0, [r3]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bls _021D27B2
	ldr r0, _021D27E0 @ =0x0000C0D0
	adds r6, r5, #0
	adds r0, r5, r0
	adds r6, #0x14
	adds r4, r5, #0
	str r0, [sp]
_021D277E:
	adds r0, r6, #0
	add r1, sp, #0x4c
	add r2, sp, #4
	blx FUN_020BB8EC
	ldrh r2, [r4, #0x38]
	cmp r2, #0
	beq _021D27A6
	adds r1, r2, #0
	movs r0, #0x54
	muls r1, r0, r1
	ldr r0, [sp]
	ldr r3, _021D27E4 @ =0x0000C2C0
	adds r0, r0, r1
	ldr r1, _021D27CC @ =0x0000C29C
	add r2, sp, #4
	adds r1, r5, r1
	adds r3, r5, r3
	bl FUN_0201CA74
_021D27A6:
	ldr r0, [r5, #0xc]
	adds r7, r7, #1
	adds r6, #0x30
	adds r4, #0x30
	cmp r7, r0
	blo _021D277E
_021D27B2:
	movs r0, #0
	movs r1, #1
	bl FUN_020241BC
_021D27BA:
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D27C0: .4byte 0x021D29E8
_021D27C4: .4byte 0x0000C2E8
_021D27C8: .4byte 0x0000C2B4
_021D27CC: .4byte 0x0000C29C
_021D27D0: .4byte 0x0000C074
_021D27D4: .4byte 0x021D2A54
_021D27D8: .4byte 0x0000C220
_021D27DC: .4byte 0x021D2A0C
_021D27E0: .4byte 0x0000C0D0
_021D27E4: .4byte 0x0000C2C0
	thumb_func_end ov92_021D26D0

	thumb_func_start ov92_021D27E8
ov92_021D27E8: @ 0x021D27E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	str r1, [sp]
	adds r6, r2, #0
	str r3, [sp, #4]
	bl ov92_021D16F8
	ldr r7, [sp, #0x20]
	adds r4, r0, #0
	ldr r2, _021D2850 @ =0x000002B6
	movs r0, #0
	movs r1, #0x1a
	adds r3, r7, #0
	bl FUN_0200B144
	str r0, [sp, #8]
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_0200B1B8
	ldr r0, [sp, #8]
	bl FUN_0200B190
	cmp r4, #0
	bne _021D2824
	movs r5, #0
	movs r4, #1
	str r5, [sp]
	b _021D2826
_021D2824:
	movs r5, #1
_021D2826:
	adds r0, r4, #0
	bl FUN_0209972C
	adds r2, r0, #0
	movs r0, #0
	movs r1, #0x1a
	adds r3, r7, #0
	bl FUN_0200B144
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r4, r0, #0
	bl FUN_0200B1B8
	adds r0, r4, #0
	bl FUN_0200B190
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D2850: .4byte 0x000002B6
	thumb_func_end ov92_021D27E8

	thumb_func_start ov92_021D2854
ov92_021D2854: @ 0x021D2854
	push {r3, lr}
	bl ov92_021D16F8
	cmp r0, #0
	beq _021D2862
	movs r0, #1
	pop {r3, pc}
_021D2862:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov92_021D2854

	thumb_func_start ov92_021D2868
ov92_021D2868: @ 0x021D2868
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	blt _021D287C
	ldr r1, _021D28BC @ =0x0000FFFF
	blx FUN_020E1F6C
	str r1, [r4]
	b _021D2892
_021D287C:
	bge _021D2880
	rsbs r0, r0, #0
_021D2880:
	ldr r1, _021D28BC @ =0x0000FFFF
	blx FUN_020E1F6C
	adds r1, r0, #1
	ldr r0, _021D28BC @ =0x0000FFFF
	ldr r2, [r4]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [r4]
_021D2892:
	ldr r0, [r4, #4]
	cmp r0, #0
	blt _021D28A2
	ldr r1, _021D28BC @ =0x0000FFFF
	blx FUN_020E1F6C
	str r1, [r4, #4]
	pop {r4, pc}
_021D28A2:
	bge _021D28A6
	rsbs r0, r0, #0
_021D28A6:
	ldr r1, _021D28BC @ =0x0000FFFF
	blx FUN_020E1F6C
	adds r1, r0, #1
	ldr r0, _021D28BC @ =0x0000FFFF
	ldr r2, [r4, #4]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_021D28BC: .4byte 0x0000FFFF
	thumb_func_end ov92_021D2868

	thumb_func_start ov92_021D28C0
ov92_021D28C0: @ 0x021D28C0
	push {r3, r4, r5, lr}
	ldr r3, [r0]
	ldr r2, [r1]
	subs r4, r3, r2
	bpl _021D28CC
	rsbs r4, r4, #0
_021D28CC:
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	subs r5, r2, r0
	bpl _021D28D6
	rsbs r5, r5, #0
_021D28D6:
	movs r0, #0xb4
	bl FUN_0201D278
	cmp r4, r0
	ble _021D28E4
	ldr r0, _021D2908 @ =0x0000FFFF
	subs r4, r0, r4
_021D28E4:
	movs r0, #0xb4
	bl FUN_0201D278
	cmp r5, r0
	ble _021D28F2
	ldr r0, _021D2908 @ =0x0000FFFF
	subs r5, r0, r5
_021D28F2:
	adds r1, r4, #0
	adds r0, r5, #0
	muls r1, r4, r1
	muls r0, r5, r0
	adds r0, r1, r0
	lsls r0, r0, #0xc
	blx FUN_020BCFF0
	asrs r0, r0, #0xc
	pop {r3, r4, r5, pc}
	nop
_021D2908: .4byte 0x0000FFFF
	thumb_func_end ov92_021D28C0
	@ 0x021D290C
